.class public Lorg/ITsMagic/Atlas/SunLigthTriangleRasterizer$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/ITsMagic/Atlas/d$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/ITsMagic/Atlas/SunLigthTriangleRasterizer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/ITsMagic/Atlas/d$c<",
        "Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Light/SunLight;",
        ">;"
    }
.end annotation


# static fields
.field public static final a:Lorg/ITsMagic/Atlas/SunLigthTriangleRasterizer$b;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/ITsMagic/Atlas/SunLigthTriangleRasterizer$b;

    invoke-direct {v0}, Lorg/ITsMagic/Atlas/SunLigthTriangleRasterizer$b;-><init>()V

    sput-object v0, Lorg/ITsMagic/Atlas/SunLigthTriangleRasterizer$b;->a:Lorg/ITsMagic/Atlas/SunLigthTriangleRasterizer$b;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lorg/ITsMagic/Atlas/d$a;Lorg/ITsMagic/Atlas/d$d;Lorg/ITsMagic/Atlas/d$e;II)I
    .locals 28
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

    move/from16 v26, p4

    move/from16 v27, p5

    move-object/from16 v15, p2

    check-cast v15, Lorg/ITsMagic/Atlas/SunLigthTriangleRasterizer$a;

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

    iget-object v0, v15, Lorg/ITsMagic/Atlas/SunLigthTriangleRasterizer$a;->a:[F

    move-wide/from16 p4, v2

    move-object v2, v15

    move-object v15, v0

    iget-object v0, v2, Lorg/ITsMagic/Atlas/SunLigthTriangleRasterizer$a;->b:[F

    move-object/from16 v16, v0

    iget-object v0, v2, Lorg/ITsMagic/Atlas/SunLigthTriangleRasterizer$a;->c:[F

    move-object/from16 v17, v0

    iget-object v0, v2, Lorg/ITsMagic/Atlas/SunLigthTriangleRasterizer$a;->d:[I

    move-object/from16 v18, v0

    iget v0, v2, Lorg/ITsMagic/Atlas/SunLigthTriangleRasterizer$a;->e:I

    move/from16 v19, v0

    iget-object v0, v1, Lorg/ITsMagic/Atlas/d$e;->a:[J

    move-object/from16 v20, v0

    iget-object v0, v1, Lorg/ITsMagic/Atlas/d$e;->b:[J

    move-object/from16 v21, v0

    iget-object v0, v1, Lorg/ITsMagic/Atlas/d$e;->c:[J

    move-object/from16 v22, v0

    iget-object v0, v1, Lorg/ITsMagic/Atlas/d$e;->d:[J

    move-object/from16 v23, v0

    iget-object v0, v1, Lorg/ITsMagic/Atlas/d$e;->e:[J

    move-object/from16 v24, v0

    iget-object v0, v1, Lorg/ITsMagic/Atlas/d$e;->f:[I

    move-object/from16 v25, v0

    move-wide/from16 v2, p4

    invoke-static/range {v2 .. v27}, Lorg/ITsMagic/Atlas/SunLigthTriangleRasterizer;->J(JJJJJJI[F[F[F[II[J[J[J[J[J[III)I

    move-result v0

    return v0
.end method

.method public b(Ljava/util/List;)Lorg/ITsMagic/Atlas/d$d;
    .locals 14
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
            "Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Light/SunLight;",
            ">;)",
            "Lorg/ITsMagic/Atlas/d$d;"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_5

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto/16 :goto_2

    :cond_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    mul-int/lit8 v1, v1, 0x3

    new-array v3, v1, [F

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    mul-int/lit8 v1, v1, 0x4

    new-array v4, v1, [F

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    new-array v5, v1, [F

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    new-array v6, v1, [I

    new-instance v1, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-direct {v1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;-><init>()V

    move v7, v0

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_4

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Light/SunLight;

    if-eqz v2, :cond_3

    iget-object v8, v2, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->n:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    if-nez v8, :cond_1

    goto :goto_1

    :cond_1
    iget-object v8, v8, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->transform:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    invoke-virtual {v8, v1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->B(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->lengthSquared()F

    move-result v8

    const v9, 0x322bcc77    # 1.0E-8f

    cmpg-float v8, v8, v9

    if-gtz v8, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->normalizeLocal()Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    mul-int/lit8 v8, v7, 0x3

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getX()F

    move-result v9

    aput v9, v3, v8

    add-int/lit8 v9, v8, 0x1

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getY()F

    move-result v10

    aput v10, v3, v9

    add-int/lit8 v8, v8, 0x2

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getZ()F

    move-result v9

    aput v9, v3, v8

    mul-int/lit8 v8, v7, 0x4

    invoke-virtual {v2}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Light/SunLight;->getColor()Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    move-result-object v9

    invoke-virtual {v9}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->w()F

    move-result v9

    aput v9, v4, v8

    add-int/lit8 v9, v8, 0x1

    invoke-virtual {v2}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Light/SunLight;->getColor()Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    move-result-object v10

    invoke-virtual {v10}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->u()F

    move-result v10

    aput v10, v4, v9

    add-int/lit8 v9, v8, 0x2

    invoke-virtual {v2}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Light/SunLight;->getColor()Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    move-result-object v10

    invoke-virtual {v10}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->s()F

    move-result v10

    aput v10, v4, v9

    add-int/lit8 v8, v8, 0x3

    invoke-virtual {v2}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Light/SunLight;->getColor()Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    move-result-object v9

    invoke-virtual {v9}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->r()F

    move-result v9

    aput v9, v4, v8

    invoke-virtual {v2}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Light/SunLight;->getLux()F

    move-result v8

    const v9, 0x3ca3d70a    # 0.02f

    mul-float/2addr v8, v9

    aput v8, v5, v7

    invoke-virtual {v2}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Light/SunLight;->isAllowShadow()Z

    move-result v2

    aput v2, v6, v7

    add-int/lit8 v7, v7, 0x1

    :cond_3
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    :cond_4
    new-instance p1, Lorg/ITsMagic/Atlas/SunLigthTriangleRasterizer$a;

    move-object v2, p1

    invoke-direct/range {v2 .. v7}, Lorg/ITsMagic/Atlas/SunLigthTriangleRasterizer$a;-><init>([F[F[F[II)V

    return-object p1

    :cond_5
    :goto_2
    new-instance p1, Lorg/ITsMagic/Atlas/SunLigthTriangleRasterizer$a;

    new-array v9, v0, [F

    new-array v10, v0, [F

    new-array v11, v0, [F

    new-array v12, v0, [I

    const/4 v13, 0x0

    move-object v8, p1

    invoke-direct/range {v8 .. v13}, Lorg/ITsMagic/Atlas/SunLigthTriangleRasterizer$a;-><init>([F[F[F[II)V

    return-object p1
.end method

.method public c(Lorg/ITsMagic/Atlas/d$a;Lorg/ITsMagic/Atlas/d$d;Lorg/ITsMagic/Atlas/d$e;IIILcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;)V
    .locals 44
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

    move/from16 v36, p4

    move/from16 v37, p5

    move/from16 v38, p6

    move-object/from16 v14, p2

    check-cast v14, Lorg/ITsMagic/Atlas/SunLigthTriangleRasterizer$a;

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

    move-object/from16 v41, v14

    move-wide v14, v15

    move-wide/from16 v42, v4

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

    move-object/from16 v0, v41

    iget-object v4, v0, Lorg/ITsMagic/Atlas/SunLigthTriangleRasterizer$a;->a:[F

    move-object/from16 v25, v4

    iget-object v4, v0, Lorg/ITsMagic/Atlas/SunLigthTriangleRasterizer$a;->b:[F

    move-object/from16 v26, v4

    iget-object v4, v0, Lorg/ITsMagic/Atlas/SunLigthTriangleRasterizer$a;->c:[F

    move-object/from16 v27, v4

    iget-object v4, v0, Lorg/ITsMagic/Atlas/SunLigthTriangleRasterizer$a;->d:[I

    move-object/from16 v28, v4

    iget v0, v0, Lorg/ITsMagic/Atlas/SunLigthTriangleRasterizer$a;->e:I

    move/from16 v29, v0

    iget-object v0, v1, Lorg/ITsMagic/Atlas/d$e;->a:[J

    move-object/from16 v30, v0

    iget-object v0, v1, Lorg/ITsMagic/Atlas/d$e;->b:[J

    move-object/from16 v31, v0

    iget-object v0, v1, Lorg/ITsMagic/Atlas/d$e;->c:[J

    move-object/from16 v32, v0

    iget-object v0, v1, Lorg/ITsMagic/Atlas/d$e;->d:[J

    move-object/from16 v33, v0

    iget-object v0, v1, Lorg/ITsMagic/Atlas/d$e;->e:[J

    move-object/from16 v34, v0

    iget-object v0, v1, Lorg/ITsMagic/Atlas/d$e;->f:[I

    move-object/from16 v35, v0

    move-object/from16 v0, p7

    invoke-static {v0, v2, v3}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->getCriticalDirectCppPointer(Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;J)J

    move-result-wide v39

    move-wide/from16 v2, p4

    move-wide/from16 v4, v42

    invoke-static/range {v2 .. v40}, Lorg/ITsMagic/Atlas/SunLigthTriangleRasterizer;->K(JJJJJJJJJJJI[F[F[F[II[J[J[J[J[J[IIIIJ)V

    return-void
.end method
