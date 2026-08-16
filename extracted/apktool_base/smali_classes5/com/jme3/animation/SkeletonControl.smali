.class public Lcom/jme3/animation/SkeletonControl;
.super Lcom/jme3/scene/control/AbstractControl;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Cloneable;
.implements Lcom/jme3/util/clone/JmeCloneable;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private boneMatricesParam:Lcom/jme3/material/MatParamOverride;

.field private transient hwSkinningDesired:Z

.field private transient hwSkinningEnabled:Z

.field private transient hwSkinningSupported:Z

.field private transient hwSkinningTested:Z

.field private numberOfBonesParam:Lcom/jme3/material/MatParamOverride;

.field private transient offsetMatrices:[Lcom/jme3/math/Matrix4f;

.field private skeleton:Lcom/jme3/animation/Skeleton;

.field private targets:Lcom/jme3/util/SafeArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/jme3/util/SafeArrayList<",
            "Lcom/jme3/scene/Geometry;",
            ">;"
        }
    .end annotation
.end field

.field private wasMeshUpdated:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/jme3/scene/control/AbstractControl;-><init>()V

    .line 2
    new-instance v0, Lcom/jme3/util/SafeArrayList;

    const-class v1, Lcom/jme3/scene/Geometry;

    invoke-direct {v0, v1}, Lcom/jme3/util/SafeArrayList;-><init>(Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/jme3/animation/SkeletonControl;->targets:Lcom/jme3/util/SafeArrayList;

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lcom/jme3/animation/SkeletonControl;->wasMeshUpdated:Z

    const/4 v1, 0x1

    .line 4
    iput-boolean v1, p0, Lcom/jme3/animation/SkeletonControl;->hwSkinningDesired:Z

    .line 5
    iput-boolean v0, p0, Lcom/jme3/animation/SkeletonControl;->hwSkinningEnabled:Z

    .line 6
    iput-boolean v0, p0, Lcom/jme3/animation/SkeletonControl;->hwSkinningTested:Z

    .line 7
    iput-boolean v0, p0, Lcom/jme3/animation/SkeletonControl;->hwSkinningSupported:Z

    return-void
.end method

.method public constructor <init>(Lcom/jme3/animation/Skeleton;)V
    .locals 3

    .line 8
    invoke-direct {p0}, Lcom/jme3/scene/control/AbstractControl;-><init>()V

    .line 9
    new-instance v0, Lcom/jme3/util/SafeArrayList;

    const-class v1, Lcom/jme3/scene/Geometry;

    invoke-direct {v0, v1}, Lcom/jme3/util/SafeArrayList;-><init>(Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/jme3/animation/SkeletonControl;->targets:Lcom/jme3/util/SafeArrayList;

    const/4 v0, 0x0

    .line 10
    iput-boolean v0, p0, Lcom/jme3/animation/SkeletonControl;->wasMeshUpdated:Z

    const/4 v1, 0x1

    .line 11
    iput-boolean v1, p0, Lcom/jme3/animation/SkeletonControl;->hwSkinningDesired:Z

    .line 12
    iput-boolean v0, p0, Lcom/jme3/animation/SkeletonControl;->hwSkinningEnabled:Z

    .line 13
    iput-boolean v0, p0, Lcom/jme3/animation/SkeletonControl;->hwSkinningTested:Z

    .line 14
    iput-boolean v0, p0, Lcom/jme3/animation/SkeletonControl;->hwSkinningSupported:Z

    if-eqz p1, :cond_0

    .line 15
    iput-object p1, p0, Lcom/jme3/animation/SkeletonControl;->skeleton:Lcom/jme3/animation/Skeleton;

    .line 16
    new-instance p1, Lcom/jme3/material/MatParamOverride;

    sget-object v0, Lcom/jme3/shader/VarType;->Int:Lcom/jme3/shader/VarType;

    const-string v1, "NumberOfBones"

    const/4 v2, 0x0

    invoke-direct {p1, v0, v1, v2}, Lcom/jme3/material/MatParamOverride;-><init>(Lcom/jme3/shader/VarType;Ljava/lang/String;Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/jme3/animation/SkeletonControl;->numberOfBonesParam:Lcom/jme3/material/MatParamOverride;

    .line 17
    new-instance p1, Lcom/jme3/material/MatParamOverride;

    sget-object v0, Lcom/jme3/shader/VarType;->Matrix4Array:Lcom/jme3/shader/VarType;

    const-string v1, "BoneMatrices"

    invoke-direct {p1, v0, v1, v2}, Lcom/jme3/material/MatParamOverride;-><init>(Lcom/jme3/shader/VarType;Ljava/lang/String;Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/jme3/animation/SkeletonControl;->boneMatricesParam:Lcom/jme3/material/MatParamOverride;

    return-void

    .line 18
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "skeleton cannot be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private applySkinning(Lcom/jme3/scene/Mesh;[Lcom/jme3/math/Matrix4f;)V
    .locals 42

    move-object/from16 v0, p1

    invoke-virtual/range {p1 .. p1}, Lcom/jme3/scene/Mesh;->getMaxNumWeights()I

    move-result v1

    if-lez v1, :cond_4

    rsub-int/lit8 v2, v1, 0x4

    sget-object v3, Lcom/jme3/scene/VertexBuffer$Type;->Position:Lcom/jme3/scene/VertexBuffer$Type;

    invoke-virtual {v0, v3}, Lcom/jme3/scene/Mesh;->getBuffer(Lcom/jme3/scene/VertexBuffer$Type;)Lcom/jme3/scene/VertexBuffer;

    move-result-object v3

    invoke-virtual {v3}, Lcom/jme3/scene/VertexBuffer;->getData()Ljava/nio/Buffer;

    move-result-object v4

    check-cast v4, Ljava/nio/FloatBuffer;

    invoke-virtual {v4}, Ljava/nio/FloatBuffer;->rewind()Ljava/nio/Buffer;

    sget-object v5, Lcom/jme3/scene/VertexBuffer$Type;->Normal:Lcom/jme3/scene/VertexBuffer$Type;

    invoke-virtual {v0, v5}, Lcom/jme3/scene/Mesh;->getBuffer(Lcom/jme3/scene/VertexBuffer$Type;)Lcom/jme3/scene/VertexBuffer;

    move-result-object v5

    invoke-virtual {v5}, Lcom/jme3/scene/VertexBuffer;->getData()Ljava/nio/Buffer;

    move-result-object v6

    check-cast v6, Ljava/nio/FloatBuffer;

    invoke-virtual {v6}, Ljava/nio/FloatBuffer;->rewind()Ljava/nio/Buffer;

    sget-object v7, Lcom/jme3/scene/VertexBuffer$Type;->BoneIndex:Lcom/jme3/scene/VertexBuffer$Type;

    invoke-virtual {v0, v7}, Lcom/jme3/scene/Mesh;->getBuffer(Lcom/jme3/scene/VertexBuffer$Type;)Lcom/jme3/scene/VertexBuffer;

    move-result-object v7

    invoke-virtual {v7}, Lcom/jme3/scene/VertexBuffer;->getData()Ljava/nio/Buffer;

    move-result-object v7

    invoke-static {v7}, Lcom/jme3/scene/mesh/IndexBuffer;->wrapIndexBuffer(Ljava/nio/Buffer;)Lcom/jme3/scene/mesh/IndexBuffer;

    move-result-object v7

    sget-object v8, Lcom/jme3/scene/VertexBuffer$Type;->BoneWeight:Lcom/jme3/scene/VertexBuffer$Type;

    invoke-virtual {v0, v8}, Lcom/jme3/scene/Mesh;->getBuffer(Lcom/jme3/scene/VertexBuffer$Type;)Lcom/jme3/scene/VertexBuffer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jme3/scene/VertexBuffer;->getData()Ljava/nio/Buffer;

    move-result-object v0

    check-cast v0, Ljava/nio/FloatBuffer;

    invoke-virtual {v0}, Ljava/nio/FloatBuffer;->rewind()Ljava/nio/Buffer;

    invoke-virtual {v0}, Ljava/nio/FloatBuffer;->array()[F

    move-result-object v0

    invoke-static {}, Lcom/jme3/util/TempVars;->get()Lcom/jme3/util/TempVars;

    move-result-object v8

    iget-object v9, v8, Lcom/jme3/util/TempVars;->skinPositions:[F

    iget-object v10, v8, Lcom/jme3/util/TempVars;->skinNormals:[F

    invoke-virtual {v4}, Ljava/nio/Buffer;->limit()I

    move-result v11

    int-to-float v11, v11

    array-length v12, v9

    int-to-float v12, v12

    div-float/2addr v11, v12

    invoke-static {v11}, Lcom/jme3/math/FastMath;->ceil(F)F

    move-result v11

    float-to-int v11, v11

    add-int/lit8 v11, v11, -0x1

    const/4 v12, 0x0

    move v13, v12

    :goto_0
    if-ltz v11, :cond_3

    array-length v14, v9

    invoke-virtual {v4}, Ljava/nio/Buffer;->remaining()I

    move-result v15

    invoke-static {v14, v15}, Ljava/lang/Math;->min(II)I

    move-result v14

    invoke-virtual {v4, v9, v12, v14}, Ljava/nio/FloatBuffer;->get([FII)Ljava/nio/FloatBuffer;

    invoke-virtual {v6, v10, v12, v14}, Ljava/nio/FloatBuffer;->get([FII)Ljava/nio/FloatBuffer;

    div-int/lit8 v15, v14, 0x3

    add-int/lit8 v15, v15, -0x1

    move/from16 v16, v12

    :goto_1
    if-ltz v15, :cond_2

    aget v17, v0, v13

    const/16 v18, 0x0

    cmpl-float v17, v17, v18

    if-nez v17, :cond_0

    add-int/lit8 v16, v16, 0x3

    add-int/lit8 v13, v13, 0x4

    move-object/from16 v33, v0

    move/from16 v34, v1

    move-object/from16 v37, v3

    move-object/from16 v36, v5

    move-object/from16 v40, v6

    move-object/from16 v35, v7

    move-object/from16 v38, v8

    move/from16 v39, v11

    goto/16 :goto_3

    :cond_0
    aget v17, v10, v16

    add-int/lit8 v19, v16, 0x1

    aget v20, v9, v16

    aget v21, v10, v19

    add-int/lit8 v22, v16, 0x2

    aget v19, v9, v19

    aget v23, v10, v22

    aget v22, v9, v22

    add-int/lit8 v24, v1, -0x1

    move/from16 v25, v18

    move/from16 v26, v25

    move/from16 v27, v26

    move/from16 v28, v27

    move/from16 v29, v24

    move/from16 v24, v28

    :goto_2
    if-ltz v29, :cond_1

    aget v30, v0, v13

    add-int/lit8 v31, v13, 0x1

    invoke-virtual {v7, v13}, Lcom/jme3/scene/mesh/IndexBuffer;->get(I)I

    move-result v13

    aget-object v13, p2, v13

    iget v12, v13, Lcom/jme3/math/Matrix4f;->m00:F

    mul-float v32, v12, v20

    move-object/from16 v33, v0

    iget v0, v13, Lcom/jme3/math/Matrix4f;->m01:F

    mul-float v34, v0, v19

    add-float v32, v32, v34

    move/from16 v34, v1

    iget v1, v13, Lcom/jme3/math/Matrix4f;->m02:F

    mul-float v35, v1, v22

    add-float v32, v32, v35

    move-object/from16 v35, v7

    iget v7, v13, Lcom/jme3/math/Matrix4f;->m03:F

    add-float v32, v32, v7

    mul-float v32, v32, v30

    add-float v24, v24, v32

    iget v7, v13, Lcom/jme3/math/Matrix4f;->m10:F

    mul-float v32, v7, v20

    move-object/from16 v36, v5

    iget v5, v13, Lcom/jme3/math/Matrix4f;->m11:F

    mul-float v37, v5, v19

    add-float v32, v32, v37

    move-object/from16 v37, v3

    iget v3, v13, Lcom/jme3/math/Matrix4f;->m12:F

    mul-float v38, v3, v22

    add-float v32, v32, v38

    move-object/from16 v38, v8

    iget v8, v13, Lcom/jme3/math/Matrix4f;->m13:F

    add-float v32, v32, v8

    mul-float v32, v32, v30

    add-float v26, v26, v32

    iget v8, v13, Lcom/jme3/math/Matrix4f;->m20:F

    mul-float v32, v8, v20

    move/from16 v39, v11

    iget v11, v13, Lcom/jme3/math/Matrix4f;->m21:F

    mul-float v40, v11, v19

    add-float v32, v32, v40

    move-object/from16 v40, v6

    iget v6, v13, Lcom/jme3/math/Matrix4f;->m22:F

    mul-float v41, v6, v22

    add-float v32, v32, v41

    iget v13, v13, Lcom/jme3/math/Matrix4f;->m23:F

    add-float v32, v32, v13

    mul-float v32, v32, v30

    add-float v28, v28, v32

    mul-float v12, v12, v17

    mul-float v0, v0, v21

    add-float/2addr v12, v0

    mul-float v1, v1, v23

    add-float/2addr v12, v1

    mul-float v12, v12, v30

    add-float v18, v18, v12

    mul-float v7, v7, v17

    mul-float v5, v5, v21

    add-float/2addr v7, v5

    mul-float v3, v3, v23

    add-float/2addr v7, v3

    mul-float v7, v7, v30

    add-float v25, v25, v7

    mul-float v8, v8, v17

    mul-float v11, v11, v21

    add-float/2addr v8, v11

    mul-float v6, v6, v23

    add-float/2addr v8, v6

    mul-float v8, v8, v30

    add-float v27, v27, v8

    add-int/lit8 v29, v29, -0x1

    move/from16 v13, v31

    move-object/from16 v0, v33

    move/from16 v1, v34

    move-object/from16 v7, v35

    move-object/from16 v5, v36

    move-object/from16 v3, v37

    move-object/from16 v8, v38

    move/from16 v11, v39

    move-object/from16 v6, v40

    const/4 v12, 0x0

    goto/16 :goto_2

    :cond_1
    move-object/from16 v33, v0

    move/from16 v34, v1

    move-object/from16 v37, v3

    move-object/from16 v36, v5

    move-object/from16 v40, v6

    move-object/from16 v35, v7

    move-object/from16 v38, v8

    move/from16 v39, v11

    add-int/2addr v13, v2

    aput v18, v10, v16

    add-int/lit8 v0, v16, 0x1

    aput v24, v9, v16

    aput v25, v10, v0

    add-int/lit8 v1, v16, 0x2

    aput v26, v9, v0

    aput v27, v10, v1

    add-int/lit8 v16, v16, 0x3

    aput v28, v9, v1

    :goto_3
    add-int/lit8 v15, v15, -0x1

    move-object/from16 v0, v33

    move/from16 v1, v34

    move-object/from16 v7, v35

    move-object/from16 v5, v36

    move-object/from16 v3, v37

    move-object/from16 v8, v38

    move/from16 v11, v39

    move-object/from16 v6, v40

    const/4 v12, 0x0

    goto/16 :goto_1

    :cond_2
    move-object/from16 v33, v0

    move/from16 v34, v1

    move-object/from16 v37, v3

    move-object/from16 v36, v5

    move-object/from16 v40, v6

    move-object/from16 v35, v7

    move-object/from16 v38, v8

    move/from16 v39, v11

    invoke-virtual {v4}, Ljava/nio/Buffer;->position()I

    move-result v0

    sub-int/2addr v0, v14

    invoke-virtual {v4, v0}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    const/4 v0, 0x0

    invoke-virtual {v4, v9, v0, v14}, Ljava/nio/FloatBuffer;->put([FII)Ljava/nio/FloatBuffer;

    invoke-virtual/range {v40 .. v40}, Ljava/nio/Buffer;->position()I

    move-result v1

    sub-int/2addr v1, v14

    invoke-virtual {v6, v1}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    invoke-virtual {v6, v10, v0, v14}, Ljava/nio/FloatBuffer;->put([FII)Ljava/nio/FloatBuffer;

    add-int/lit8 v11, v39, -0x1

    move v12, v0

    move-object/from16 v0, v33

    move/from16 v1, v34

    goto/16 :goto_0

    :cond_3
    move-object/from16 v37, v3

    move-object/from16 v36, v5

    move-object/from16 v38, v8

    invoke-virtual/range {v38 .. v38}, Lcom/jme3/util/TempVars;->release()V

    move-object/from16 v0, v37

    invoke-virtual {v0, v4}, Lcom/jme3/scene/VertexBuffer;->updateData(Ljava/nio/Buffer;)V

    move-object/from16 v0, v36

    invoke-virtual {v0, v6}, Lcom/jme3/scene/VertexBuffer;->updateData(Ljava/nio/Buffer;)V

    return-void

    :cond_4
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Max weights per vert is incorrectly set!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private applySkinningTangents(Lcom/jme3/scene/Mesh;[Lcom/jme3/math/Matrix4f;Lcom/jme3/scene/VertexBuffer;)V
    .locals 52

    move-object/from16 v0, p1

    invoke-virtual/range {p1 .. p1}, Lcom/jme3/scene/Mesh;->getMaxNumWeights()I

    move-result v1

    if-lez v1, :cond_9

    rsub-int/lit8 v2, v1, 0x4

    sget-object v3, Lcom/jme3/scene/VertexBuffer$Type;->Position:Lcom/jme3/scene/VertexBuffer$Type;

    invoke-virtual {v0, v3}, Lcom/jme3/scene/Mesh;->getBuffer(Lcom/jme3/scene/VertexBuffer$Type;)Lcom/jme3/scene/VertexBuffer;

    move-result-object v3

    invoke-virtual {v3}, Lcom/jme3/scene/VertexBuffer;->getData()Ljava/nio/Buffer;

    move-result-object v4

    check-cast v4, Ljava/nio/FloatBuffer;

    invoke-virtual {v4}, Ljava/nio/FloatBuffer;->rewind()Ljava/nio/Buffer;

    sget-object v5, Lcom/jme3/scene/VertexBuffer$Type;->Normal:Lcom/jme3/scene/VertexBuffer$Type;

    invoke-virtual {v0, v5}, Lcom/jme3/scene/Mesh;->getBuffer(Lcom/jme3/scene/VertexBuffer$Type;)Lcom/jme3/scene/VertexBuffer;

    move-result-object v5

    if-nez v5, :cond_0

    const/4 v6, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v5}, Lcom/jme3/scene/VertexBuffer;->getData()Ljava/nio/Buffer;

    move-result-object v6

    check-cast v6, Ljava/nio/FloatBuffer;

    :goto_0
    if-eqz v6, :cond_1

    invoke-virtual {v6}, Ljava/nio/FloatBuffer;->rewind()Ljava/nio/Buffer;

    :cond_1
    invoke-virtual/range {p3 .. p3}, Lcom/jme3/scene/VertexBuffer;->getData()Ljava/nio/Buffer;

    move-result-object v7

    check-cast v7, Ljava/nio/FloatBuffer;

    invoke-virtual {v7}, Ljava/nio/FloatBuffer;->rewind()Ljava/nio/Buffer;

    sget-object v8, Lcom/jme3/scene/VertexBuffer$Type;->BoneIndex:Lcom/jme3/scene/VertexBuffer$Type;

    invoke-virtual {v0, v8}, Lcom/jme3/scene/Mesh;->getBuffer(Lcom/jme3/scene/VertexBuffer$Type;)Lcom/jme3/scene/VertexBuffer;

    move-result-object v8

    invoke-virtual {v8}, Lcom/jme3/scene/VertexBuffer;->getData()Ljava/nio/Buffer;

    move-result-object v8

    invoke-static {v8}, Lcom/jme3/scene/mesh/IndexBuffer;->wrapIndexBuffer(Ljava/nio/Buffer;)Lcom/jme3/scene/mesh/IndexBuffer;

    move-result-object v8

    sget-object v9, Lcom/jme3/scene/VertexBuffer$Type;->BoneWeight:Lcom/jme3/scene/VertexBuffer$Type;

    invoke-virtual {v0, v9}, Lcom/jme3/scene/Mesh;->getBuffer(Lcom/jme3/scene/VertexBuffer$Type;)Lcom/jme3/scene/VertexBuffer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jme3/scene/VertexBuffer;->getData()Ljava/nio/Buffer;

    move-result-object v0

    check-cast v0, Ljava/nio/FloatBuffer;

    invoke-virtual {v0}, Ljava/nio/FloatBuffer;->rewind()Ljava/nio/Buffer;

    invoke-virtual {v0}, Ljava/nio/FloatBuffer;->array()[F

    move-result-object v0

    invoke-static {}, Lcom/jme3/util/TempVars;->get()Lcom/jme3/util/TempVars;

    move-result-object v9

    iget-object v10, v9, Lcom/jme3/util/TempVars;->skinPositions:[F

    iget-object v11, v9, Lcom/jme3/util/TempVars;->skinNormals:[F

    iget-object v12, v9, Lcom/jme3/util/TempVars;->skinTangents:[F

    invoke-virtual {v4}, Ljava/nio/Buffer;->limit()I

    move-result v13

    int-to-float v13, v13

    array-length v14, v10

    int-to-float v14, v14

    div-float/2addr v13, v14

    invoke-static {v13}, Lcom/jme3/math/FastMath;->ceil(F)F

    move-result v13

    float-to-int v13, v13

    add-int/lit8 v13, v13, -0x1

    const/4 v15, 0x0

    :goto_1
    if-ltz v13, :cond_7

    array-length v14, v10

    move/from16 v16, v15

    invoke-virtual {v4}, Ljava/nio/Buffer;->remaining()I

    move-result v15

    invoke-static {v14, v15}, Ljava/lang/Math;->min(II)I

    move-result v14

    array-length v15, v12

    move-object/from16 v17, v5

    invoke-virtual {v7}, Ljava/nio/Buffer;->remaining()I

    move-result v5

    invoke-static {v15, v5}, Ljava/lang/Math;->min(II)I

    move-result v5

    const/4 v15, 0x0

    invoke-virtual {v4, v10, v15, v14}, Ljava/nio/FloatBuffer;->get([FII)Ljava/nio/FloatBuffer;

    if-eqz v6, :cond_2

    invoke-virtual {v6, v11, v15, v14}, Ljava/nio/FloatBuffer;->get([FII)Ljava/nio/FloatBuffer;

    :cond_2
    invoke-virtual {v7, v12, v15, v5}, Ljava/nio/FloatBuffer;->get([FII)Ljava/nio/FloatBuffer;

    div-int/lit8 v15, v14, 0x3

    add-int/lit8 v15, v15, -0x1

    const/16 v18, 0x0

    const/16 v19, 0x0

    :goto_2
    if-ltz v15, :cond_5

    aget v20, v0, v16

    const/16 v21, 0x0

    cmpl-float v20, v20, v21

    if-nez v20, :cond_3

    add-int/lit8 v19, v19, 0x4

    add-int/lit8 v18, v18, 0x3

    add-int/lit8 v16, v16, 0x4

    move-object/from16 v41, v0

    move/from16 v31, v1

    move-object/from16 v44, v3

    move/from16 v47, v5

    move-object/from16 v49, v6

    move-object/from16 v48, v7

    move-object/from16 v43, v8

    move-object/from16 v45, v9

    move/from16 v46, v13

    move/from16 v50, v14

    goto/16 :goto_4

    :cond_3
    aget v20, v11, v18

    add-int/lit8 v22, v18, 0x1

    aget v23, v10, v18

    aget v24, v11, v22

    add-int/lit8 v25, v18, 0x2

    aget v22, v10, v22

    aget v26, v11, v25

    aget v25, v10, v25

    add-int/lit8 v27, v19, 0x1

    aget v28, v12, v19

    add-int/lit8 v29, v19, 0x2

    aget v27, v12, v27

    aget v29, v12, v29

    add-int/lit8 v30, v1, -0x1

    move/from16 v31, v1

    move/from16 v1, v16

    move/from16 v16, v21

    move/from16 v32, v16

    move/from16 v33, v32

    move/from16 v34, v33

    move/from16 v35, v34

    move/from16 v36, v35

    move/from16 v37, v36

    move/from16 v38, v30

    move/from16 v30, v37

    :goto_3
    if-ltz v38, :cond_4

    aget v39, v0, v1

    add-int/lit8 v40, v1, 0x1

    invoke-virtual {v8, v1}, Lcom/jme3/scene/mesh/IndexBuffer;->get(I)I

    move-result v1

    aget-object v1, p2, v1

    move-object/from16 v41, v0

    iget v0, v1, Lcom/jme3/math/Matrix4f;->m00:F

    mul-float v42, v0, v23

    move-object/from16 v43, v8

    iget v8, v1, Lcom/jme3/math/Matrix4f;->m01:F

    mul-float v44, v8, v22

    add-float v42, v42, v44

    move-object/from16 v44, v3

    iget v3, v1, Lcom/jme3/math/Matrix4f;->m02:F

    mul-float v45, v3, v25

    add-float v42, v42, v45

    move-object/from16 v45, v9

    iget v9, v1, Lcom/jme3/math/Matrix4f;->m03:F

    add-float v42, v42, v9

    mul-float v42, v42, v39

    add-float v16, v16, v42

    iget v9, v1, Lcom/jme3/math/Matrix4f;->m10:F

    mul-float v42, v9, v23

    move/from16 v46, v13

    iget v13, v1, Lcom/jme3/math/Matrix4f;->m11:F

    mul-float v47, v13, v22

    add-float v42, v42, v47

    move/from16 v47, v5

    iget v5, v1, Lcom/jme3/math/Matrix4f;->m12:F

    mul-float v48, v5, v25

    add-float v42, v42, v48

    move-object/from16 v48, v7

    iget v7, v1, Lcom/jme3/math/Matrix4f;->m13:F

    add-float v42, v42, v7

    mul-float v42, v42, v39

    add-float v32, v32, v42

    iget v7, v1, Lcom/jme3/math/Matrix4f;->m20:F

    mul-float v42, v7, v23

    move-object/from16 v49, v6

    iget v6, v1, Lcom/jme3/math/Matrix4f;->m21:F

    mul-float v50, v6, v22

    add-float v42, v42, v50

    move/from16 v50, v14

    iget v14, v1, Lcom/jme3/math/Matrix4f;->m22:F

    mul-float v51, v14, v25

    add-float v42, v42, v51

    iget v1, v1, Lcom/jme3/math/Matrix4f;->m23:F

    add-float v42, v42, v1

    mul-float v42, v42, v39

    add-float v34, v34, v42

    mul-float v1, v20, v0

    mul-float v42, v24, v8

    add-float v1, v1, v42

    mul-float v42, v26, v3

    add-float v1, v1, v42

    mul-float v1, v1, v39

    add-float v21, v21, v1

    mul-float v1, v20, v9

    mul-float v42, v24, v13

    add-float v1, v1, v42

    mul-float v42, v26, v5

    add-float v1, v1, v42

    mul-float v1, v1, v39

    add-float v30, v30, v1

    mul-float v1, v20, v7

    mul-float v42, v24, v6

    add-float v1, v1, v42

    mul-float v42, v26, v14

    add-float v1, v1, v42

    mul-float v1, v1, v39

    add-float v33, v33, v1

    mul-float v0, v0, v28

    mul-float v8, v8, v27

    add-float/2addr v0, v8

    mul-float v3, v3, v29

    add-float/2addr v0, v3

    mul-float v0, v0, v39

    add-float v35, v35, v0

    mul-float v9, v9, v28

    mul-float v13, v13, v27

    add-float/2addr v9, v13

    mul-float v5, v5, v29

    add-float/2addr v9, v5

    mul-float v9, v9, v39

    add-float v36, v36, v9

    mul-float v7, v7, v28

    mul-float v6, v6, v27

    add-float/2addr v7, v6

    mul-float v14, v14, v29

    add-float/2addr v7, v14

    mul-float v7, v7, v39

    add-float v37, v37, v7

    add-int/lit8 v38, v38, -0x1

    move/from16 v1, v40

    move-object/from16 v0, v41

    move-object/from16 v8, v43

    move-object/from16 v3, v44

    move-object/from16 v9, v45

    move/from16 v13, v46

    move/from16 v5, v47

    move-object/from16 v7, v48

    move-object/from16 v6, v49

    move/from16 v14, v50

    goto/16 :goto_3

    :cond_4
    move-object/from16 v41, v0

    move-object/from16 v44, v3

    move/from16 v47, v5

    move-object/from16 v49, v6

    move-object/from16 v48, v7

    move-object/from16 v43, v8

    move-object/from16 v45, v9

    move/from16 v46, v13

    move/from16 v50, v14

    add-int/2addr v1, v2

    aput v21, v11, v18

    add-int/lit8 v0, v18, 0x1

    aput v16, v10, v18

    aput v30, v11, v0

    add-int/lit8 v3, v18, 0x2

    aput v32, v10, v0

    aput v33, v11, v3

    add-int/lit8 v18, v18, 0x3

    aput v34, v10, v3

    add-int/lit8 v0, v19, 0x1

    aput v35, v12, v19

    add-int/lit8 v3, v19, 0x2

    aput v36, v12, v0

    aput v37, v12, v3

    add-int/lit8 v19, v19, 0x4

    move/from16 v16, v1

    :goto_4
    add-int/lit8 v15, v15, -0x1

    move/from16 v1, v31

    move-object/from16 v0, v41

    move-object/from16 v8, v43

    move-object/from16 v3, v44

    move-object/from16 v9, v45

    move/from16 v13, v46

    move/from16 v5, v47

    move-object/from16 v7, v48

    move-object/from16 v6, v49

    move/from16 v14, v50

    goto/16 :goto_2

    :cond_5
    move-object/from16 v41, v0

    move/from16 v31, v1

    move-object/from16 v44, v3

    move/from16 v47, v5

    move-object/from16 v49, v6

    move-object/from16 v48, v7

    move-object/from16 v43, v8

    move-object/from16 v45, v9

    move/from16 v46, v13

    move/from16 v50, v14

    invoke-virtual {v4}, Ljava/nio/Buffer;->position()I

    move-result v0

    sub-int v0, v0, v50

    invoke-virtual {v4, v0}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    move/from16 v1, v50

    const/4 v0, 0x0

    invoke-virtual {v4, v10, v0, v1}, Ljava/nio/FloatBuffer;->put([FII)Ljava/nio/FloatBuffer;

    if-eqz v49, :cond_6

    invoke-virtual/range {v49 .. v49}, Ljava/nio/Buffer;->position()I

    move-result v3

    sub-int/2addr v3, v1

    move-object/from16 v6, v49

    invoke-virtual {v6, v3}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    invoke-virtual {v6, v11, v0, v1}, Ljava/nio/FloatBuffer;->put([FII)Ljava/nio/FloatBuffer;

    goto :goto_5

    :cond_6
    move-object/from16 v6, v49

    :goto_5
    invoke-virtual/range {v48 .. v48}, Ljava/nio/Buffer;->position()I

    move-result v1

    sub-int v1, v1, v47

    move-object/from16 v7, v48

    invoke-virtual {v7, v1}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    move/from16 v1, v47

    invoke-virtual {v7, v12, v0, v1}, Ljava/nio/FloatBuffer;->put([FII)Ljava/nio/FloatBuffer;

    add-int/lit8 v13, v46, -0x1

    move/from16 v15, v16

    move-object/from16 v5, v17

    move/from16 v1, v31

    move-object/from16 v0, v41

    move-object/from16 v8, v43

    move-object/from16 v3, v44

    move-object/from16 v9, v45

    goto/16 :goto_1

    :cond_7
    move-object/from16 v44, v3

    move-object/from16 v17, v5

    move-object/from16 v45, v9

    invoke-virtual/range {v45 .. v45}, Lcom/jme3/util/TempVars;->release()V

    move-object/from16 v0, v44

    invoke-virtual {v0, v4}, Lcom/jme3/scene/VertexBuffer;->updateData(Ljava/nio/Buffer;)V

    if-eqz v17, :cond_8

    move-object/from16 v0, v17

    invoke-virtual {v0, v6}, Lcom/jme3/scene/VertexBuffer;->updateData(Ljava/nio/Buffer;)V

    :cond_8
    move-object/from16 v0, p3

    invoke-virtual {v0, v7}, Lcom/jme3/scene/VertexBuffer;->updateData(Ljava/nio/Buffer;)V

    return-void

    :cond_9
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Max weights per vert is incorrectly set!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private controlRenderHardware()V
    .locals 2

    iget-object v0, p0, Lcom/jme3/animation/SkeletonControl;->skeleton:Lcom/jme3/animation/Skeleton;

    invoke-virtual {v0}, Lcom/jme3/animation/Skeleton;->computeSkinningMatrices()[Lcom/jme3/math/Matrix4f;

    move-result-object v0

    iput-object v0, p0, Lcom/jme3/animation/SkeletonControl;->offsetMatrices:[Lcom/jme3/math/Matrix4f;

    iget-object v1, p0, Lcom/jme3/animation/SkeletonControl;->boneMatricesParam:Lcom/jme3/material/MatParamOverride;

    invoke-virtual {v1, v0}, Lcom/jme3/material/MatParam;->setValue(Ljava/lang/Object;)V

    return-void
.end method

.method private controlRenderSoftware()V
    .locals 3

    invoke-virtual {p0}, Lcom/jme3/animation/SkeletonControl;->resetToBind()V

    iget-object v0, p0, Lcom/jme3/animation/SkeletonControl;->skeleton:Lcom/jme3/animation/Skeleton;

    invoke-virtual {v0}, Lcom/jme3/animation/Skeleton;->computeSkinningMatrices()[Lcom/jme3/math/Matrix4f;

    move-result-object v0

    iput-object v0, p0, Lcom/jme3/animation/SkeletonControl;->offsetMatrices:[Lcom/jme3/math/Matrix4f;

    iget-object v0, p0, Lcom/jme3/animation/SkeletonControl;->numberOfBonesParam:Lcom/jme3/material/MatParamOverride;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/jme3/material/MatParamOverride;->setEnabled(Z)V

    iget-object v0, p0, Lcom/jme3/animation/SkeletonControl;->boneMatricesParam:Lcom/jme3/material/MatParamOverride;

    invoke-virtual {v0, v1}, Lcom/jme3/material/MatParamOverride;->setEnabled(Z)V

    iget-object v0, p0, Lcom/jme3/animation/SkeletonControl;->targets:Lcom/jme3/util/SafeArrayList;

    invoke-virtual {v0}, Lcom/jme3/util/SafeArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jme3/scene/Geometry;

    invoke-virtual {v1}, Lcom/jme3/scene/Geometry;->getMesh()Lcom/jme3/scene/Mesh;

    move-result-object v1

    iget-object v2, p0, Lcom/jme3/animation/SkeletonControl;->offsetMatrices:[Lcom/jme3/math/Matrix4f;

    invoke-direct {p0, v1, v2}, Lcom/jme3/animation/SkeletonControl;->softwareSkinUpdate(Lcom/jme3/scene/Mesh;[Lcom/jme3/math/Matrix4f;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private findTargets(Lcom/jme3/scene/Geometry;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Lcom/jme3/scene/Geometry;->getMesh()Lcom/jme3/scene/Mesh;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/jme3/scene/Mesh;->isAnimated()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/jme3/animation/SkeletonControl;->targets:Lcom/jme3/util/SafeArrayList;

    invoke-virtual {v0, p1}, Lcom/jme3/util/SafeArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method private findTargets(Lcom/jme3/scene/Node;)V
    .locals 2

    .line 4
    invoke-virtual {p1}, Lcom/jme3/scene/Node;->getChildren()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jme3/scene/Spatial;

    .line 5
    instance-of v1, v0, Lcom/jme3/scene/Geometry;

    if-eqz v1, :cond_1

    .line 6
    check-cast v0, Lcom/jme3/scene/Geometry;

    invoke-direct {p0, v0}, Lcom/jme3/animation/SkeletonControl;->findTargets(Lcom/jme3/scene/Geometry;)V

    goto :goto_0

    .line 7
    :cond_1
    instance-of v1, v0, Lcom/jme3/scene/Node;

    if-eqz v1, :cond_0

    .line 8
    check-cast v0, Lcom/jme3/scene/Node;

    invoke-direct {p0, v0}, Lcom/jme3/animation/SkeletonControl;->findTargets(Lcom/jme3/scene/Node;)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method private softwareSkinUpdate(Lcom/jme3/scene/Mesh;[Lcom/jme3/math/Matrix4f;)V
    .locals 1

    sget-object v0, Lcom/jme3/scene/VertexBuffer$Type;->Tangent:Lcom/jme3/scene/VertexBuffer$Type;

    invoke-virtual {p1, v0}, Lcom/jme3/scene/Mesh;->getBuffer(Lcom/jme3/scene/VertexBuffer$Type;)Lcom/jme3/scene/VertexBuffer;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-direct {p0, p1, p2}, Lcom/jme3/animation/SkeletonControl;->applySkinning(Lcom/jme3/scene/Mesh;[Lcom/jme3/math/Matrix4f;)V

    goto :goto_0

    :cond_0
    invoke-direct {p0, p1, p2, v0}, Lcom/jme3/animation/SkeletonControl;->applySkinningTangents(Lcom/jme3/scene/Mesh;[Lcom/jme3/math/Matrix4f;Lcom/jme3/scene/VertexBuffer;)V

    :goto_0
    return-void
.end method

.method private switchToHardware()V
    .locals 3

    iget-object v0, p0, Lcom/jme3/animation/SkeletonControl;->numberOfBonesParam:Lcom/jme3/material/MatParamOverride;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/jme3/material/MatParamOverride;->setEnabled(Z)V

    iget-object v0, p0, Lcom/jme3/animation/SkeletonControl;->boneMatricesParam:Lcom/jme3/material/MatParamOverride;

    invoke-virtual {v0, v1}, Lcom/jme3/material/MatParamOverride;->setEnabled(Z)V

    iget-object v0, p0, Lcom/jme3/animation/SkeletonControl;->skeleton:Lcom/jme3/animation/Skeleton;

    invoke-virtual {v0}, Lcom/jme3/animation/Skeleton;->getBoneCount()I

    move-result v0

    div-int/lit8 v0, v0, 0xa

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0xa

    iget-object v1, p0, Lcom/jme3/animation/SkeletonControl;->numberOfBonesParam:Lcom/jme3/material/MatParamOverride;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/jme3/material/MatParam;->setValue(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/jme3/animation/SkeletonControl;->targets:Lcom/jme3/util/SafeArrayList;

    invoke-virtual {v0}, Lcom/jme3/util/SafeArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jme3/scene/Geometry;

    invoke-virtual {v1}, Lcom/jme3/scene/Geometry;->getMesh()Lcom/jme3/scene/Mesh;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/jme3/scene/Mesh;->isAnimated()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/jme3/scene/Mesh;->prepareForAnim(Z)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private switchToSoftware()V
    .locals 3

    iget-object v0, p0, Lcom/jme3/animation/SkeletonControl;->numberOfBonesParam:Lcom/jme3/material/MatParamOverride;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/jme3/material/MatParamOverride;->setEnabled(Z)V

    iget-object v0, p0, Lcom/jme3/animation/SkeletonControl;->boneMatricesParam:Lcom/jme3/material/MatParamOverride;

    invoke-virtual {v0, v1}, Lcom/jme3/material/MatParamOverride;->setEnabled(Z)V

    iget-object v0, p0, Lcom/jme3/animation/SkeletonControl;->targets:Lcom/jme3/util/SafeArrayList;

    invoke-virtual {v0}, Lcom/jme3/util/SafeArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jme3/scene/Geometry;

    invoke-virtual {v1}, Lcom/jme3/scene/Geometry;->getMesh()Lcom/jme3/scene/Mesh;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/jme3/scene/Mesh;->isAnimated()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/jme3/scene/Mesh;->prepareForAnim(Z)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private testHardwareSupported(Lcom/jme3/renderer/RenderManager;)Z
    .locals 4

    iget-object v0, p0, Lcom/jme3/animation/SkeletonControl;->skeleton:Lcom/jme3/animation/Skeleton;

    invoke-virtual {v0}, Lcom/jme3/animation/Skeleton;->getBoneCount()I

    move-result v0

    const/16 v1, 0xff

    const/4 v2, 0x0

    if-le v0, v1, :cond_0

    return v2

    :cond_0
    invoke-direct {p0}, Lcom/jme3/animation/SkeletonControl;->switchToHardware()V

    :try_start_0
    iget-object v0, p0, Lcom/jme3/scene/control/AbstractControl;->spatial:Lcom/jme3/scene/Spatial;

    invoke-virtual {p1, v0}, Lcom/jme3/renderer/RenderManager;->preloadScene(Lcom/jme3/scene/Spatial;)V
    :try_end_0
    .catch Lcom/jme3/renderer/RendererException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x1

    return p1

    :catch_0
    move-exception p1

    const-class v0, Lcom/jme3/animation/SkeletonControl;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sget-object v1, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string v3, "Could not enable HW skinning due to shader compile error:"

    invoke-virtual {v0, v1, v3, p1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    return v2
.end method

.method private updateTargetsAndMaterials(Lcom/jme3/scene/Spatial;)V
    .locals 1

    iget-object v0, p0, Lcom/jme3/animation/SkeletonControl;->targets:Lcom/jme3/util/SafeArrayList;

    invoke-virtual {v0}, Lcom/jme3/util/SafeArrayList;->clear()V

    instance-of v0, p1, Lcom/jme3/scene/Node;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/jme3/scene/Node;

    invoke-direct {p0, p1}, Lcom/jme3/animation/SkeletonControl;->findTargets(Lcom/jme3/scene/Node;)V

    goto :goto_0

    :cond_0
    instance-of v0, p1, Lcom/jme3/scene/Geometry;

    if-eqz v0, :cond_1

    check-cast p1, Lcom/jme3/scene/Geometry;

    invoke-direct {p0, p1}, Lcom/jme3/animation/SkeletonControl;->findTargets(Lcom/jme3/scene/Geometry;)V

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public cloneFields(Lcom/jme3/util/clone/Cloner;Ljava/lang/Object;)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/jme3/scene/control/AbstractControl;->cloneFields(Lcom/jme3/util/clone/Cloner;Ljava/lang/Object;)V

    iget-object p2, p0, Lcom/jme3/animation/SkeletonControl;->skeleton:Lcom/jme3/animation/Skeleton;

    invoke-virtual {p1, p2}, Lcom/jme3/util/clone/Cloner;->clone(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/jme3/animation/Skeleton;

    iput-object p2, p0, Lcom/jme3/animation/SkeletonControl;->skeleton:Lcom/jme3/animation/Skeleton;

    iget-object p2, p0, Lcom/jme3/animation/SkeletonControl;->targets:Lcom/jme3/util/SafeArrayList;

    invoke-virtual {p1, p2}, Lcom/jme3/util/clone/Cloner;->clone(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/jme3/util/SafeArrayList;

    iput-object p2, p0, Lcom/jme3/animation/SkeletonControl;->targets:Lcom/jme3/util/SafeArrayList;

    iget-object p2, p0, Lcom/jme3/animation/SkeletonControl;->numberOfBonesParam:Lcom/jme3/material/MatParamOverride;

    invoke-virtual {p1, p2}, Lcom/jme3/util/clone/Cloner;->clone(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/jme3/material/MatParamOverride;

    iput-object p2, p0, Lcom/jme3/animation/SkeletonControl;->numberOfBonesParam:Lcom/jme3/material/MatParamOverride;

    iget-object p2, p0, Lcom/jme3/animation/SkeletonControl;->boneMatricesParam:Lcom/jme3/material/MatParamOverride;

    invoke-virtual {p1, p2}, Lcom/jme3/util/clone/Cloner;->clone(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/jme3/material/MatParamOverride;

    iput-object p1, p0, Lcom/jme3/animation/SkeletonControl;->boneMatricesParam:Lcom/jme3/material/MatParamOverride;

    return-void
.end method

.method public controlRender(Lcom/jme3/renderer/RenderManager;Lcom/jme3/renderer/ViewPort;)V
    .locals 3

    iget-boolean p2, p0, Lcom/jme3/animation/SkeletonControl;->wasMeshUpdated:Z

    if-nez p2, :cond_5

    iget-object p2, p0, Lcom/jme3/scene/control/AbstractControl;->spatial:Lcom/jme3/scene/Spatial;

    invoke-direct {p0, p2}, Lcom/jme3/animation/SkeletonControl;->updateTargetsAndMaterials(Lcom/jme3/scene/Spatial;)V

    iget-boolean p2, p0, Lcom/jme3/animation/SkeletonControl;->hwSkinningDesired:Z

    const/4 v0, 0x1

    if-eqz p2, :cond_1

    iget-boolean v1, p0, Lcom/jme3/animation/SkeletonControl;->hwSkinningTested:Z

    if-nez v1, :cond_1

    iput-boolean v0, p0, Lcom/jme3/animation/SkeletonControl;->hwSkinningTested:Z

    invoke-direct {p0, p1}, Lcom/jme3/animation/SkeletonControl;->testHardwareSupported(Lcom/jme3/renderer/RenderManager;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/jme3/animation/SkeletonControl;->hwSkinningSupported:Z

    if-eqz p1, :cond_0

    iput-boolean v0, p0, Lcom/jme3/animation/SkeletonControl;->hwSkinningEnabled:Z

    const-class p1, Lcom/jme3/animation/SkeletonControl;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object p1

    sget-object p2, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    const-string v1, "Hardware skinning engaged for {0}"

    iget-object v2, p0, Lcom/jme3/scene/control/AbstractControl;->spatial:Lcom/jme3/scene/Spatial;

    invoke-virtual {p1, p2, v1, v2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/jme3/animation/SkeletonControl;->switchToSoftware()V

    goto :goto_0

    :cond_1
    if-eqz p2, :cond_2

    iget-boolean p1, p0, Lcom/jme3/animation/SkeletonControl;->hwSkinningSupported:Z

    if-eqz p1, :cond_2

    iget-boolean p1, p0, Lcom/jme3/animation/SkeletonControl;->hwSkinningEnabled:Z

    if-nez p1, :cond_2

    invoke-direct {p0}, Lcom/jme3/animation/SkeletonControl;->switchToHardware()V

    iput-boolean v0, p0, Lcom/jme3/animation/SkeletonControl;->hwSkinningEnabled:Z

    goto :goto_0

    :cond_2
    if-nez p2, :cond_3

    iget-boolean p1, p0, Lcom/jme3/animation/SkeletonControl;->hwSkinningEnabled:Z

    if-eqz p1, :cond_3

    invoke-direct {p0}, Lcom/jme3/animation/SkeletonControl;->switchToSoftware()V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/jme3/animation/SkeletonControl;->hwSkinningEnabled:Z

    :cond_3
    :goto_0
    iget-boolean p1, p0, Lcom/jme3/animation/SkeletonControl;->hwSkinningEnabled:Z

    if-eqz p1, :cond_4

    invoke-direct {p0}, Lcom/jme3/animation/SkeletonControl;->controlRenderHardware()V

    goto :goto_1

    :cond_4
    invoke-direct {p0}, Lcom/jme3/animation/SkeletonControl;->controlRenderSoftware()V

    :goto_1
    iput-boolean v0, p0, Lcom/jme3/animation/SkeletonControl;->wasMeshUpdated:Z

    :cond_5
    return-void
.end method

.method public controlUpdate(F)V
    .locals 0

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/jme3/animation/SkeletonControl;->wasMeshUpdated:Z

    return-void
.end method

.method public getAttachmentsNode(Ljava/lang/String;)Lcom/jme3/scene/Node;
    .locals 2

    iget-object v0, p0, Lcom/jme3/animation/SkeletonControl;->skeleton:Lcom/jme3/animation/Skeleton;

    invoke-virtual {v0, p1}, Lcom/jme3/animation/Skeleton;->getBone(Ljava/lang/String;)Lcom/jme3/animation/Bone;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/jme3/scene/control/AbstractControl;->spatial:Lcom/jme3/scene/Spatial;

    invoke-direct {p0, v0}, Lcom/jme3/animation/SkeletonControl;->updateTargetsAndMaterials(Lcom/jme3/scene/Spatial;)V

    iget-object v0, p0, Lcom/jme3/animation/SkeletonControl;->skeleton:Lcom/jme3/animation/Skeleton;

    invoke-virtual {v0, p1}, Lcom/jme3/animation/Skeleton;->getBoneIndex(Lcom/jme3/animation/Bone;)I

    move-result v0

    iget-object v1, p0, Lcom/jme3/animation/SkeletonControl;->targets:Lcom/jme3/util/SafeArrayList;

    invoke-virtual {p1, v0, v1}, Lcom/jme3/animation/Bone;->getAttachmentsNode(ILcom/jme3/util/SafeArrayList;)Lcom/jme3/scene/Node;

    move-result-object p1

    iget-object v0, p0, Lcom/jme3/scene/control/AbstractControl;->spatial:Lcom/jme3/scene/Spatial;

    instance-of v1, v0, Lcom/jme3/scene/Node;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/jme3/scene/Node;

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/jme3/scene/Spatial;->getParent()Lcom/jme3/scene/Node;

    move-result-object v0

    :goto_0
    invoke-virtual {v0, p1}, Lcom/jme3/scene/Node;->attachChild(Lcom/jme3/scene/Spatial;)I

    return-object p1

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Given bone name does not exist in the skeleton."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getSkeleton()Lcom/jme3/animation/Skeleton;
    .locals 1

    iget-object v0, p0, Lcom/jme3/animation/SkeletonControl;->skeleton:Lcom/jme3/animation/Skeleton;

    return-object v0
.end method

.method public getTargets()[Lcom/jme3/scene/Mesh;
    .locals 4

    iget-object v0, p0, Lcom/jme3/animation/SkeletonControl;->targets:Lcom/jme3/util/SafeArrayList;

    invoke-virtual {v0}, Lcom/jme3/util/SafeArrayList;->size()I

    move-result v0

    new-array v0, v0, [Lcom/jme3/scene/Mesh;

    iget-object v1, p0, Lcom/jme3/animation/SkeletonControl;->targets:Lcom/jme3/util/SafeArrayList;

    invoke-virtual {v1}, Lcom/jme3/util/SafeArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/jme3/scene/Geometry;

    invoke-virtual {v3}, Lcom/jme3/scene/Geometry;->getMesh()Lcom/jme3/scene/Mesh;

    move-result-object v3

    aput-object v3, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public isHardwareSkinningPreferred()Z
    .locals 1

    iget-boolean v0, p0, Lcom/jme3/animation/SkeletonControl;->hwSkinningDesired:Z

    return v0
.end method

.method public isHardwareSkinningUsed()Z
    .locals 1

    iget-boolean v0, p0, Lcom/jme3/animation/SkeletonControl;->hwSkinningEnabled:Z

    return v0
.end method

.method public jmeClone()Ljava/lang/Object;
    .locals 1

    invoke-super {p0}, Lcom/jme3/scene/control/AbstractControl;->jmeClone()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public read(Lcom/jme3/export/JmeImporter;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-super {p0, p1}, Lcom/jme3/scene/control/AbstractControl;->read(Lcom/jme3/export/JmeImporter;)V

    invoke-interface {p1, p0}, Lcom/jme3/export/JmeImporter;->getCapsule(Lcom/jme3/export/Savable;)Lcom/jme3/export/InputCapsule;

    move-result-object p1

    const-string v0, "skeleton"

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Lcom/jme3/export/InputCapsule;->readSavable(Ljava/lang/String;Lcom/jme3/export/Savable;)Lcom/jme3/export/Savable;

    move-result-object v0

    check-cast v0, Lcom/jme3/animation/Skeleton;

    iput-object v0, p0, Lcom/jme3/animation/SkeletonControl;->skeleton:Lcom/jme3/animation/Skeleton;

    const-string v0, "numberOfBonesParam"

    invoke-interface {p1, v0, v1}, Lcom/jme3/export/InputCapsule;->readSavable(Ljava/lang/String;Lcom/jme3/export/Savable;)Lcom/jme3/export/Savable;

    move-result-object v0

    check-cast v0, Lcom/jme3/material/MatParamOverride;

    iput-object v0, p0, Lcom/jme3/animation/SkeletonControl;->numberOfBonesParam:Lcom/jme3/material/MatParamOverride;

    const-string v0, "boneMatricesParam"

    invoke-interface {p1, v0, v1}, Lcom/jme3/export/InputCapsule;->readSavable(Ljava/lang/String;Lcom/jme3/export/Savable;)Lcom/jme3/export/Savable;

    move-result-object p1

    check-cast p1, Lcom/jme3/material/MatParamOverride;

    iput-object p1, p0, Lcom/jme3/animation/SkeletonControl;->boneMatricesParam:Lcom/jme3/material/MatParamOverride;

    iget-object p1, p0, Lcom/jme3/animation/SkeletonControl;->numberOfBonesParam:Lcom/jme3/material/MatParamOverride;

    if-nez p1, :cond_0

    new-instance p1, Lcom/jme3/material/MatParamOverride;

    sget-object v0, Lcom/jme3/shader/VarType;->Int:Lcom/jme3/shader/VarType;

    const-string v2, "NumberOfBones"

    invoke-direct {p1, v0, v2, v1}, Lcom/jme3/material/MatParamOverride;-><init>(Lcom/jme3/shader/VarType;Ljava/lang/String;Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/jme3/animation/SkeletonControl;->numberOfBonesParam:Lcom/jme3/material/MatParamOverride;

    new-instance p1, Lcom/jme3/material/MatParamOverride;

    sget-object v0, Lcom/jme3/shader/VarType;->Matrix4Array:Lcom/jme3/shader/VarType;

    const-string v2, "BoneMatrices"

    invoke-direct {p1, v0, v2, v1}, Lcom/jme3/material/MatParamOverride;-><init>(Lcom/jme3/shader/VarType;Ljava/lang/String;Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/jme3/animation/SkeletonControl;->boneMatricesParam:Lcom/jme3/material/MatParamOverride;

    invoke-virtual {p0}, Lcom/jme3/scene/control/AbstractControl;->getSpatial()Lcom/jme3/scene/Spatial;

    move-result-object p1

    iget-object v0, p0, Lcom/jme3/animation/SkeletonControl;->numberOfBonesParam:Lcom/jme3/material/MatParamOverride;

    invoke-virtual {p1, v0}, Lcom/jme3/scene/Spatial;->addMatParamOverride(Lcom/jme3/material/MatParamOverride;)V

    invoke-virtual {p0}, Lcom/jme3/scene/control/AbstractControl;->getSpatial()Lcom/jme3/scene/Spatial;

    move-result-object p1

    iget-object v0, p0, Lcom/jme3/animation/SkeletonControl;->boneMatricesParam:Lcom/jme3/material/MatParamOverride;

    invoke-virtual {p1, v0}, Lcom/jme3/scene/Spatial;->addMatParamOverride(Lcom/jme3/material/MatParamOverride;)V

    :cond_0
    return-void
.end method

.method public resetToBind()V
    .locals 6

    iget-object v0, p0, Lcom/jme3/animation/SkeletonControl;->targets:Lcom/jme3/util/SafeArrayList;

    invoke-virtual {v0}, Lcom/jme3/util/SafeArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jme3/scene/Geometry;

    invoke-virtual {v1}, Lcom/jme3/scene/Geometry;->getMesh()Lcom/jme3/scene/Mesh;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/jme3/scene/Mesh;->isAnimated()Z

    move-result v2

    if-eqz v2, :cond_0

    sget-object v2, Lcom/jme3/scene/VertexBuffer$Type;->BoneWeight:Lcom/jme3/scene/VertexBuffer$Type;

    invoke-virtual {v1, v2}, Lcom/jme3/scene/Mesh;->getBuffer(Lcom/jme3/scene/VertexBuffer$Type;)Lcom/jme3/scene/VertexBuffer;

    move-result-object v2

    invoke-virtual {v2}, Lcom/jme3/scene/VertexBuffer;->getData()Ljava/nio/Buffer;

    move-result-object v2

    sget-object v3, Lcom/jme3/scene/VertexBuffer$Type;->BoneIndex:Lcom/jme3/scene/VertexBuffer$Type;

    invoke-virtual {v1, v3}, Lcom/jme3/scene/Mesh;->getBuffer(Lcom/jme3/scene/VertexBuffer$Type;)Lcom/jme3/scene/VertexBuffer;

    move-result-object v3

    invoke-virtual {v3}, Lcom/jme3/scene/VertexBuffer;->getData()Ljava/nio/Buffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/nio/Buffer;->hasArray()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v2}, Ljava/nio/Buffer;->hasArray()Z

    move-result v2

    if-nez v2, :cond_2

    :cond_1
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/jme3/scene/Mesh;->prepareForAnim(Z)V

    :cond_2
    sget-object v2, Lcom/jme3/scene/VertexBuffer$Type;->BindPosePosition:Lcom/jme3/scene/VertexBuffer$Type;

    invoke-virtual {v1, v2}, Lcom/jme3/scene/Mesh;->getBuffer(Lcom/jme3/scene/VertexBuffer$Type;)Lcom/jme3/scene/VertexBuffer;

    move-result-object v2

    sget-object v3, Lcom/jme3/scene/VertexBuffer$Type;->BindPoseNormal:Lcom/jme3/scene/VertexBuffer$Type;

    invoke-virtual {v1, v3}, Lcom/jme3/scene/Mesh;->getBuffer(Lcom/jme3/scene/VertexBuffer$Type;)Lcom/jme3/scene/VertexBuffer;

    move-result-object v3

    sget-object v4, Lcom/jme3/scene/VertexBuffer$Type;->Position:Lcom/jme3/scene/VertexBuffer$Type;

    invoke-virtual {v1, v4}, Lcom/jme3/scene/Mesh;->getBuffer(Lcom/jme3/scene/VertexBuffer$Type;)Lcom/jme3/scene/VertexBuffer;

    move-result-object v4

    invoke-virtual {v4}, Lcom/jme3/scene/VertexBuffer;->getData()Ljava/nio/Buffer;

    move-result-object v4

    check-cast v4, Ljava/nio/FloatBuffer;

    invoke-virtual {v2}, Lcom/jme3/scene/VertexBuffer;->getData()Ljava/nio/Buffer;

    move-result-object v2

    check-cast v2, Ljava/nio/FloatBuffer;

    invoke-virtual {v4}, Ljava/nio/FloatBuffer;->clear()Ljava/nio/Buffer;

    invoke-virtual {v2}, Ljava/nio/FloatBuffer;->clear()Ljava/nio/Buffer;

    if-eqz v3, :cond_3

    sget-object v5, Lcom/jme3/scene/VertexBuffer$Type;->Normal:Lcom/jme3/scene/VertexBuffer$Type;

    invoke-virtual {v1, v5}, Lcom/jme3/scene/Mesh;->getBuffer(Lcom/jme3/scene/VertexBuffer$Type;)Lcom/jme3/scene/VertexBuffer;

    move-result-object v5

    invoke-virtual {v5}, Lcom/jme3/scene/VertexBuffer;->getData()Ljava/nio/Buffer;

    move-result-object v5

    check-cast v5, Ljava/nio/FloatBuffer;

    invoke-virtual {v3}, Lcom/jme3/scene/VertexBuffer;->getData()Ljava/nio/Buffer;

    move-result-object v3

    check-cast v3, Ljava/nio/FloatBuffer;

    invoke-virtual {v5}, Ljava/nio/FloatBuffer;->clear()Ljava/nio/Buffer;

    invoke-virtual {v3}, Ljava/nio/FloatBuffer;->clear()Ljava/nio/Buffer;

    invoke-virtual {v5, v3}, Ljava/nio/FloatBuffer;->put(Ljava/nio/FloatBuffer;)Ljava/nio/FloatBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/nio/FloatBuffer;->clear()Ljava/nio/Buffer;

    :cond_3
    sget-object v3, Lcom/jme3/scene/VertexBuffer$Type;->BindPoseTangent:Lcom/jme3/scene/VertexBuffer$Type;

    invoke-virtual {v1, v3}, Lcom/jme3/scene/Mesh;->getBuffer(Lcom/jme3/scene/VertexBuffer$Type;)Lcom/jme3/scene/VertexBuffer;

    move-result-object v3

    if-eqz v3, :cond_4

    sget-object v5, Lcom/jme3/scene/VertexBuffer$Type;->Tangent:Lcom/jme3/scene/VertexBuffer$Type;

    invoke-virtual {v1, v5}, Lcom/jme3/scene/Mesh;->getBuffer(Lcom/jme3/scene/VertexBuffer$Type;)Lcom/jme3/scene/VertexBuffer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/jme3/scene/VertexBuffer;->getData()Ljava/nio/Buffer;

    move-result-object v1

    check-cast v1, Ljava/nio/FloatBuffer;

    invoke-virtual {v3}, Lcom/jme3/scene/VertexBuffer;->getData()Ljava/nio/Buffer;

    move-result-object v3

    check-cast v3, Ljava/nio/FloatBuffer;

    invoke-virtual {v1}, Ljava/nio/FloatBuffer;->clear()Ljava/nio/Buffer;

    invoke-virtual {v3}, Ljava/nio/FloatBuffer;->clear()Ljava/nio/Buffer;

    invoke-virtual {v1, v3}, Ljava/nio/FloatBuffer;->put(Ljava/nio/FloatBuffer;)Ljava/nio/FloatBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/FloatBuffer;->clear()Ljava/nio/Buffer;

    :cond_4
    invoke-virtual {v4, v2}, Ljava/nio/FloatBuffer;->put(Ljava/nio/FloatBuffer;)Ljava/nio/FloatBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/FloatBuffer;->clear()Ljava/nio/Buffer;

    goto/16 :goto_0

    :cond_5
    return-void
.end method

.method public setHardwareSkinningPreferred(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/jme3/animation/SkeletonControl;->hwSkinningDesired:Z

    return-void
.end method

.method public setSpatial(Lcom/jme3/scene/Spatial;)V
    .locals 2

    iget-object v0, p0, Lcom/jme3/scene/control/AbstractControl;->spatial:Lcom/jme3/scene/Spatial;

    invoke-super {p0, p1}, Lcom/jme3/scene/control/AbstractControl;->setSpatial(Lcom/jme3/scene/Spatial;)V

    invoke-direct {p0, p1}, Lcom/jme3/animation/SkeletonControl;->updateTargetsAndMaterials(Lcom/jme3/scene/Spatial;)V

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/jme3/animation/SkeletonControl;->numberOfBonesParam:Lcom/jme3/material/MatParamOverride;

    invoke-virtual {v0, v1}, Lcom/jme3/scene/Spatial;->removeMatParamOverride(Lcom/jme3/material/MatParamOverride;)V

    iget-object v1, p0, Lcom/jme3/animation/SkeletonControl;->boneMatricesParam:Lcom/jme3/material/MatParamOverride;

    invoke-virtual {v0, v1}, Lcom/jme3/scene/Spatial;->removeMatParamOverride(Lcom/jme3/material/MatParamOverride;)V

    :cond_0
    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/jme3/animation/SkeletonControl;->numberOfBonesParam:Lcom/jme3/material/MatParamOverride;

    invoke-virtual {p1, v0}, Lcom/jme3/scene/Spatial;->removeMatParamOverride(Lcom/jme3/material/MatParamOverride;)V

    iget-object v0, p0, Lcom/jme3/animation/SkeletonControl;->boneMatricesParam:Lcom/jme3/material/MatParamOverride;

    invoke-virtual {p1, v0}, Lcom/jme3/scene/Spatial;->removeMatParamOverride(Lcom/jme3/material/MatParamOverride;)V

    iget-object v0, p0, Lcom/jme3/animation/SkeletonControl;->numberOfBonesParam:Lcom/jme3/material/MatParamOverride;

    invoke-virtual {p1, v0}, Lcom/jme3/scene/Spatial;->addMatParamOverride(Lcom/jme3/material/MatParamOverride;)V

    iget-object v0, p0, Lcom/jme3/animation/SkeletonControl;->boneMatricesParam:Lcom/jme3/material/MatParamOverride;

    invoke-virtual {p1, v0}, Lcom/jme3/scene/Spatial;->addMatParamOverride(Lcom/jme3/material/MatParamOverride;)V

    :cond_1
    return-void
.end method

.method public write(Lcom/jme3/export/JmeExporter;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-super {p0, p1}, Lcom/jme3/scene/control/AbstractControl;->write(Lcom/jme3/export/JmeExporter;)V

    invoke-interface {p1, p0}, Lcom/jme3/export/JmeExporter;->getCapsule(Lcom/jme3/export/Savable;)Lcom/jme3/export/OutputCapsule;

    move-result-object p1

    iget-object v0, p0, Lcom/jme3/animation/SkeletonControl;->skeleton:Lcom/jme3/animation/Skeleton;

    const-string v1, "skeleton"

    const/4 v2, 0x0

    invoke-interface {p1, v0, v1, v2}, Lcom/jme3/export/OutputCapsule;->write(Lcom/jme3/export/Savable;Ljava/lang/String;Lcom/jme3/export/Savable;)V

    iget-object v0, p0, Lcom/jme3/animation/SkeletonControl;->numberOfBonesParam:Lcom/jme3/material/MatParamOverride;

    const-string v1, "numberOfBonesParam"

    invoke-interface {p1, v0, v1, v2}, Lcom/jme3/export/OutputCapsule;->write(Lcom/jme3/export/Savable;Ljava/lang/String;Lcom/jme3/export/Savable;)V

    iget-object v0, p0, Lcom/jme3/animation/SkeletonControl;->boneMatricesParam:Lcom/jme3/material/MatParamOverride;

    const-string v1, "boneMatricesParam"

    invoke-interface {p1, v0, v1, v2}, Lcom/jme3/export/OutputCapsule;->write(Lcom/jme3/export/Savable;Ljava/lang/String;Lcom/jme3/export/Savable;)V

    return-void
.end method
