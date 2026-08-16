.class public Lorg/ITsMagic/Atlas/SpotLigthTriangleRasterizer$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/ITsMagic/Atlas/d$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/ITsMagic/Atlas/SpotLigthTriangleRasterizer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/ITsMagic/Atlas/d$c<",
        "Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Light/SpotLight;",
        ">;"
    }
.end annotation


# static fields
.field public static final a:Lorg/ITsMagic/Atlas/SpotLigthTriangleRasterizer$b;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/ITsMagic/Atlas/SpotLigthTriangleRasterizer$b;

    invoke-direct {v0}, Lorg/ITsMagic/Atlas/SpotLigthTriangleRasterizer$b;-><init>()V

    sput-object v0, Lorg/ITsMagic/Atlas/SpotLigthTriangleRasterizer$b;->a:Lorg/ITsMagic/Atlas/SpotLigthTriangleRasterizer$b;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lorg/ITsMagic/Atlas/d$a;Lorg/ITsMagic/Atlas/d$d;Lorg/ITsMagic/Atlas/d$e;II)I
    .locals 29
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "surfels",
            "lightData",
            "meshData",
            "start",
            "end"
        }
    .end annotation

    move-object/from16 v0, p1

    move-object/from16 v1, p3

    move/from16 v27, p4

    move/from16 v28, p5

    move-object/from16 v15, p2

    check-cast v15, Lorg/ITsMagic/Atlas/SpotLigthTriangleRasterizer$a;

    iget-object v2, v0, Lorg/ITsMagic/Atlas/d$a;->a:Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    const-wide/16 v12, 0x0

    invoke-static {v2, v12, v13}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->getCriticalDirectCppPointer(Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;J)J

    move-result-wide v2

    iget-object v4, v0, Lorg/ITsMagic/Atlas/d$a;->b:Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    invoke-static {v4, v12, v13}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->getCriticalDirectCppPointer(Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;J)J

    move-result-wide v4

    iget-object v6, v0, Lorg/ITsMagic/Atlas/d$a;->c:Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    invoke-static {v6, v12, v13}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->getCriticalDirectCppPointer(Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;J)J

    move-result-wide v6

    iget-object v8, v0, Lorg/ITsMagic/Atlas/d$a;->g:Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    invoke-static {v8, v12, v13}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->getCriticalDirectCppPointer(Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;J)J

    move-result-wide v8

    iget-object v10, v0, Lorg/ITsMagic/Atlas/d$a;->h:Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    invoke-static {v10, v12, v13}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->getCriticalDirectCppPointer(Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;J)J

    move-result-wide v10

    iget-object v14, v0, Lorg/ITsMagic/Atlas/d$a;->i:Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    invoke-static {v14, v12, v13}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->getCriticalDirectCppPointer(Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;J)J

    move-result-wide v12

    iget v14, v0, Lorg/ITsMagic/Atlas/d$a;->l:I

    iget-object v0, v15, Lorg/ITsMagic/Atlas/SpotLigthTriangleRasterizer$a;->a:[F

    move-wide/from16 p4, v2

    move-object v2, v15

    move-object v15, v0

    iget-object v0, v2, Lorg/ITsMagic/Atlas/SpotLigthTriangleRasterizer$a;->b:[F

    move-object/from16 v16, v0

    iget-object v0, v2, Lorg/ITsMagic/Atlas/SpotLigthTriangleRasterizer$a;->c:[F

    move-object/from16 v17, v0

    iget-object v0, v2, Lorg/ITsMagic/Atlas/SpotLigthTriangleRasterizer$a;->d:[F

    move-object/from16 v18, v0

    iget-object v0, v2, Lorg/ITsMagic/Atlas/SpotLigthTriangleRasterizer$a;->e:[I

    move-object/from16 v19, v0

    iget v0, v2, Lorg/ITsMagic/Atlas/SpotLigthTriangleRasterizer$a;->f:I

    move/from16 v20, v0

    iget-object v0, v1, Lorg/ITsMagic/Atlas/d$e;->a:[J

    move-object/from16 v21, v0

    iget-object v0, v1, Lorg/ITsMagic/Atlas/d$e;->b:[J

    move-object/from16 v22, v0

    iget-object v0, v1, Lorg/ITsMagic/Atlas/d$e;->c:[J

    move-object/from16 v23, v0

    iget-object v0, v1, Lorg/ITsMagic/Atlas/d$e;->d:[J

    move-object/from16 v24, v0

    iget-object v0, v1, Lorg/ITsMagic/Atlas/d$e;->e:[J

    move-object/from16 v25, v0

    iget-object v0, v1, Lorg/ITsMagic/Atlas/d$e;->f:[I

    move-object/from16 v26, v0

    move-wide/from16 v2, p4

    invoke-static/range {v2 .. v28}, Lorg/ITsMagic/Atlas/SpotLigthTriangleRasterizer;->J(JJJJJJI[F[F[F[F[II[J[J[J[J[J[III)I

    move-result v0

    return v0
.end method

.method public b(Ljava/util/List;)Lorg/ITsMagic/Atlas/d$d;
    .locals 18
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "lights"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Light/SpotLight;",
            ">;)",
            "Lorg/ITsMagic/Atlas/d$d;"
        }
    .end annotation

    move-object/from16 v0, p1

    const/4 v1, 0x0

    if-eqz v0, :cond_5

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    goto/16 :goto_2

    :cond_0
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v2

    mul-int/lit8 v2, v2, 0x3

    new-array v4, v2, [F

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v2

    mul-int/lit8 v2, v2, 0x3

    new-array v5, v2, [F

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v2

    mul-int/lit8 v2, v2, 0x4

    new-array v6, v2, [F

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v2

    mul-int/lit8 v2, v2, 0x4

    new-array v7, v2, [F

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v2

    new-array v8, v2, [I

    new-instance v2, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-direct {v2}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;-><init>()V

    new-instance v3, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-direct {v3}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;-><init>()V

    move v9, v1

    :goto_0
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v10

    if-ge v1, v10, :cond_4

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Light/SpotLight;

    if-eqz v10, :cond_3

    iget-object v11, v10, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->n:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    if-eqz v11, :cond_3

    invoke-virtual {v10}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Light/SpotLight;->getFalloffRadius()F

    move-result v11

    const/4 v12, 0x0

    cmpg-float v11, v11, v12

    if-gtz v11, :cond_1

    goto/16 :goto_1

    :cond_1
    iget-object v11, v10, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->n:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    iget-object v11, v11, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->transform:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    invoke-virtual {v11, v2}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->u0(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    iget-object v11, v10, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->n:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    iget-object v11, v11, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->transform:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    invoke-virtual {v11, v3}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->a0(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v3}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->lengthSquared()F

    move-result v11

    const v13, 0x322bcc77    # 1.0E-8f

    cmpg-float v11, v11, v13

    if-gtz v11, :cond_2

    goto/16 :goto_1

    :cond_2
    invoke-virtual {v3}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->normalizeLocal()Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    mul-int/lit8 v11, v9, 0x3

    invoke-virtual {v2}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getX()F

    move-result v13

    aput v13, v4, v11

    add-int/lit8 v13, v11, 0x1

    invoke-virtual {v2}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getY()F

    move-result v14

    aput v14, v4, v13

    add-int/lit8 v14, v11, 0x2

    invoke-virtual {v2}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getZ()F

    move-result v15

    aput v15, v4, v14

    invoke-virtual {v3}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getX()F

    move-result v15

    aput v15, v5, v11

    invoke-virtual {v3}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getY()F

    move-result v11

    aput v11, v5, v13

    invoke-virtual {v3}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getZ()F

    move-result v11

    aput v11, v5, v14

    mul-int/lit8 v11, v9, 0x4

    invoke-virtual {v10}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Light/SpotLight;->getColor()Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    move-result-object v13

    invoke-virtual {v13}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->w()F

    move-result v13

    aput v13, v6, v11

    add-int/lit8 v13, v11, 0x1

    invoke-virtual {v10}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Light/SpotLight;->getColor()Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    move-result-object v14

    invoke-virtual {v14}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->u()F

    move-result v14

    aput v14, v6, v13

    add-int/lit8 v14, v11, 0x2

    invoke-virtual {v10}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Light/SpotLight;->getColor()Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    move-result-object v15

    invoke-virtual {v15}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->s()F

    move-result v15

    aput v15, v6, v14

    add-int/lit8 v15, v11, 0x3

    invoke-virtual {v10}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Light/SpotLight;->getColor()Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->r()F

    move-result v16

    aput v16, v6, v15

    invoke-virtual {v10}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Light/SpotLight;->getLumens()F

    move-result v16

    const v17, 0x3dcccccd    # 0.1f

    mul-float v16, v16, v17

    aput v16, v7, v11

    invoke-virtual {v10}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Light/SpotLight;->getFalloffRadius()F

    move-result v11

    aput v11, v7, v13

    invoke-virtual {v10}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Light/SpotLight;->getInnerConeAngle()F

    move-result v11

    const/high16 v13, 0x3f000000    # 0.5f

    mul-float/2addr v11, v13

    invoke-static {v12, v11}, Ljava/lang/Math;->max(FF)F

    move-result v11

    aput v11, v7, v14

    invoke-virtual {v10}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Light/SpotLight;->getOuterConeAngle()F

    move-result v12

    mul-float/2addr v12, v13

    invoke-static {v11, v12}, Ljava/lang/Math;->max(FF)F

    move-result v11

    aput v11, v7, v15

    invoke-virtual {v10}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Light/SpotLight;->isAllowShadow()Z

    move-result v10

    aput v10, v8, v9

    add-int/lit8 v9, v9, 0x1

    :cond_3
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    :cond_4
    new-instance v0, Lorg/ITsMagic/Atlas/SpotLigthTriangleRasterizer$a;

    move-object v3, v0

    invoke-direct/range {v3 .. v9}, Lorg/ITsMagic/Atlas/SpotLigthTriangleRasterizer$a;-><init>([F[F[F[F[II)V

    return-object v0

    :cond_5
    :goto_2
    new-instance v0, Lorg/ITsMagic/Atlas/SpotLigthTriangleRasterizer$a;

    new-array v11, v1, [F

    new-array v12, v1, [F

    new-array v13, v1, [F

    new-array v14, v1, [F

    new-array v15, v1, [I

    const/16 v16, 0x0

    move-object v10, v0

    invoke-direct/range {v10 .. v16}, Lorg/ITsMagic/Atlas/SpotLigthTriangleRasterizer$a;-><init>([F[F[F[F[II)V

    return-object v0
.end method

.method public c(Lorg/ITsMagic/Atlas/d$a;Lorg/ITsMagic/Atlas/d$d;Lorg/ITsMagic/Atlas/d$e;IIILcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;)V
    .locals 45
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "surfels",
            "lightData",
            "meshData",
            "outputWidth",
            "start",
            "end",
            "outputPixels"
        }
    .end annotation

    move-object/from16 v0, p1

    move-object/from16 v1, p3

    move/from16 v37, p4

    move/from16 v38, p5

    move/from16 v39, p6

    move-object/from16 v14, p2

    check-cast v14, Lorg/ITsMagic/Atlas/SpotLigthTriangleRasterizer$a;

    iget-object v2, v0, Lorg/ITsMagic/Atlas/d$a;->a:Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    const-wide/16 v12, 0x0

    invoke-static {v2, v12, v13}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->getCriticalDirectCppPointer(Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;J)J

    move-result-wide v2

    iget-object v4, v0, Lorg/ITsMagic/Atlas/d$a;->b:Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    invoke-static {v4, v12, v13}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->getCriticalDirectCppPointer(Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;J)J

    move-result-wide v4

    iget-object v6, v0, Lorg/ITsMagic/Atlas/d$a;->c:Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    invoke-static {v6, v12, v13}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->getCriticalDirectCppPointer(Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;J)J

    move-result-wide v6

    iget-object v8, v0, Lorg/ITsMagic/Atlas/d$a;->d:Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    invoke-static {v8, v12, v13}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->getCriticalDirectCppPointer(Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;J)J

    move-result-wide v8

    iget-object v10, v0, Lorg/ITsMagic/Atlas/d$a;->e:Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    invoke-static {v10, v12, v13}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->getCriticalDirectCppPointer(Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;J)J

    move-result-wide v10

    iget-object v15, v0, Lorg/ITsMagic/Atlas/d$a;->f:Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    invoke-static {v15, v12, v13}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->getCriticalDirectCppPointer(Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;J)J

    move-result-wide v15

    move-wide/from16 p4, v2

    move-wide v2, v12

    move-wide v12, v15

    iget-object v15, v0, Lorg/ITsMagic/Atlas/d$a;->g:Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    invoke-static {v15, v2, v3}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->getCriticalDirectCppPointer(Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;J)J

    move-result-wide v15

    move-object/from16 v42, v14

    move-wide v14, v15

    move-wide/from16 v43, v4

    iget-object v4, v0, Lorg/ITsMagic/Atlas/d$a;->h:Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    invoke-static {v4, v2, v3}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->getCriticalDirectCppPointer(Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;J)J

    move-result-wide v16

    iget-object v4, v0, Lorg/ITsMagic/Atlas/d$a;->i:Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    invoke-static {v4, v2, v3}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->getCriticalDirectCppPointer(Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;J)J

    move-result-wide v18

    iget-object v4, v0, Lorg/ITsMagic/Atlas/d$a;->j:Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;

    invoke-static {v4, v2, v3}, Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;->getCriticalDirectCppPointer(Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;J)J

    move-result-wide v20

    iget-object v4, v0, Lorg/ITsMagic/Atlas/d$a;->k:Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;

    invoke-static {v4, v2, v3}, Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;->getCriticalDirectCppPointer(Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;J)J

    move-result-wide v22

    iget v0, v0, Lorg/ITsMagic/Atlas/d$a;->l:I

    move/from16 v24, v0

    move-object/from16 v0, v42

    iget-object v4, v0, Lorg/ITsMagic/Atlas/SpotLigthTriangleRasterizer$a;->a:[F

    move-object/from16 v25, v4

    iget-object v4, v0, Lorg/ITsMagic/Atlas/SpotLigthTriangleRasterizer$a;->b:[F

    move-object/from16 v26, v4

    iget-object v4, v0, Lorg/ITsMagic/Atlas/SpotLigthTriangleRasterizer$a;->c:[F

    move-object/from16 v27, v4

    iget-object v4, v0, Lorg/ITsMagic/Atlas/SpotLigthTriangleRasterizer$a;->d:[F

    move-object/from16 v28, v4

    iget-object v4, v0, Lorg/ITsMagic/Atlas/SpotLigthTriangleRasterizer$a;->e:[I

    move-object/from16 v29, v4

    iget v0, v0, Lorg/ITsMagic/Atlas/SpotLigthTriangleRasterizer$a;->f:I

    move/from16 v30, v0

    iget-object v0, v1, Lorg/ITsMagic/Atlas/d$e;->a:[J

    move-object/from16 v31, v0

    iget-object v0, v1, Lorg/ITsMagic/Atlas/d$e;->b:[J

    move-object/from16 v32, v0

    iget-object v0, v1, Lorg/ITsMagic/Atlas/d$e;->c:[J

    move-object/from16 v33, v0

    iget-object v0, v1, Lorg/ITsMagic/Atlas/d$e;->d:[J

    move-object/from16 v34, v0

    iget-object v0, v1, Lorg/ITsMagic/Atlas/d$e;->e:[J

    move-object/from16 v35, v0

    iget-object v0, v1, Lorg/ITsMagic/Atlas/d$e;->f:[I

    move-object/from16 v36, v0

    move-object/from16 v0, p7

    invoke-static {v0, v2, v3}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->getCriticalDirectCppPointer(Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;J)J

    move-result-wide v40

    move-wide/from16 v2, p4

    move-wide/from16 v4, v43

    invoke-static/range {v2 .. v41}, Lorg/ITsMagic/Atlas/SpotLigthTriangleRasterizer;->K(JJJJJJJJJJJI[F[F[F[F[II[J[J[J[J[J[IIIIJ)V

    return-void
.end method
