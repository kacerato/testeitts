.class public Lorg/ITsMagic/Atlas/SpotLigthTriangleRasterizer;
.super Lorg/ITsMagic/Atlas/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/ITsMagic/Atlas/SpotLigthTriangleRasterizer$b;,
        Lorg/ITsMagic/Atlas/SpotLigthTriangleRasterizer$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/ITsMagic/Atlas/a<",
        "Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Light/SpotLight;",
        ">;"
    }
.end annotation


# static fields
.field public static final u:F = 0.1f


# instance fields
.field public final q:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

.field public final r:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

.field public final s:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

.field public final t:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "vertex"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/List;LBb/b;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "raycastVertices",
            "normalAtlasTexture"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/itsmagic/engine/Engines/Engine/Vertex/BVHMesh;",
            ">;",
            "LBb/b;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Lorg/ITsMagic/Atlas/a;-><init>(Ljava/util/List;LBb/b;)V

    new-instance p1, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-direct {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;-><init>()V

    iput-object p1, p0, Lorg/ITsMagic/Atlas/SpotLigthTriangleRasterizer;->q:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    new-instance p1, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-direct {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;-><init>()V

    iput-object p1, p0, Lorg/ITsMagic/Atlas/SpotLigthTriangleRasterizer;->r:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    new-instance p1, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-direct {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;-><init>()V

    iput-object p1, p0, Lorg/ITsMagic/Atlas/SpotLigthTriangleRasterizer;->s:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    new-instance p1, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-direct {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;-><init>()V

    iput-object p1, p0, Lorg/ITsMagic/Atlas/SpotLigthTriangleRasterizer;->t:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    return-void
.end method

.method public static synthetic J(JJJJJJI[F[F[F[F[II[J[J[J[J[J[III)I
    .locals 1

    invoke-static/range {p0 .. p26}, Lorg/ITsMagic/Atlas/SpotLigthTriangleRasterizer;->nativeCountRaycastsRange(JJJJJJI[F[F[F[F[II[J[J[J[J[J[III)I

    move-result v0

    return v0
.end method

.method public static synthetic K(JJJJJJJJJJJI[F[F[F[F[II[J[J[J[J[J[IIIIJ)V
    .locals 0

    invoke-static/range {p0 .. p39}, Lorg/ITsMagic/Atlas/SpotLigthTriangleRasterizer;->nativeRasterizeRange(JJJJJJJJJJJI[F[F[F[F[II[J[J[J[J[J[IIIIJ)V

    return-void
.end method

.method private static native nativeCountRaycastsRange(JJJJJJI[F[F[F[F[II[J[J[J[J[J[III)I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "posXPointer",
            "posYPointer",
            "posZPointer",
            "shadingNormalXPointer",
            "shadingNormalYPointer",
            "shadingNormalZPointer",
            "surfelCount",
            "lightPositions",
            "lightForwards",
            "lightColors",
            "lightParams",
            "shadowFlags",
            "lightCount",
            "meshVerticesPointers",
            "meshTrianglesPointers",
            "meshNodeBoundsPointers",
            "meshNodeMetaPointers",
            "meshTriangleOrderPointers",
            "meshNodeCounts",
            "start",
            "end"
        }
    .end annotation
.end method

.method private static native nativeRasterizeRange(JJJJJJJJJJJI[F[F[F[F[II[J[J[J[J[J[IIIIJ)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "posXPointer",
            "posYPointer",
            "posZPointer",
            "surfaceNormalXPointer",
            "surfaceNormalYPointer",
            "surfaceNormalZPointer",
            "shadingNormalXPointer",
            "shadingNormalYPointer",
            "shadingNormalZPointer",
            "pixelXPointer",
            "pixelYPointer",
            "surfelCount",
            "lightPositions",
            "lightForwards",
            "lightColors",
            "lightParams",
            "shadowFlags",
            "lightCount",
            "meshVerticesPointers",
            "meshTrianglesPointers",
            "meshNodeBoundsPointers",
            "meshNodeMetaPointers",
            "meshTriangleOrderPointers",
            "meshNodeCounts",
            "width",
            "start",
            "end",
            "outputPixelsPointer"
        }
    .end annotation
.end method


# virtual methods
.method public L(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Light/SpotLight;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;[F)V
    .locals 15
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "light",
            "worldPosition",
            "surfaceNormal",
            "shadingNormal",
            "outRgb"
        }
    .end annotation

    move-object v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    if-eqz v1, :cond_a

    iget-object v3, v1, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->n:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    if-nez v3, :cond_0

    goto/16 :goto_1

    :cond_0
    invoke-virtual/range {p1 .. p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Light/SpotLight;->getFalloffRadius()F

    move-result v3

    const/4 v4, 0x0

    cmpg-float v5, v3, v4

    if-gtz v5, :cond_1

    return-void

    :cond_1
    iget-object v5, v1, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->n:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    iget-object v5, v5, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->transform:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    iget-object v6, v0, Lorg/ITsMagic/Atlas/SpotLigthTriangleRasterizer;->q:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v5, v6}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->u0(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    iget-object v5, v0, Lorg/ITsMagic/Atlas/SpotLigthTriangleRasterizer;->r:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    iget-object v6, v0, Lorg/ITsMagic/Atlas/SpotLigthTriangleRasterizer;->q:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v5, v6}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->set(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    iget-object v5, v0, Lorg/ITsMagic/Atlas/SpotLigthTriangleRasterizer;->r:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v5, v2}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->subLocal(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    iget-object v5, v0, Lorg/ITsMagic/Atlas/SpotLigthTriangleRasterizer;->r:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v5}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->lengthSquared()F

    move-result v5

    const v6, 0x322bcc77    # 1.0E-8f

    cmpg-float v7, v5, v6

    if-gtz v7, :cond_2

    return-void

    :cond_2
    float-to-double v7, v5

    invoke-static {v7, v8}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v7

    double-to-float v7, v7

    cmpl-float v8, v7, v3

    if-lez v8, :cond_3

    return-void

    :cond_3
    iget-object v8, v0, Lorg/ITsMagic/Atlas/SpotLigthTriangleRasterizer;->r:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v8, v7}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->divLocal(F)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    iget-object v8, v0, Lorg/ITsMagic/Atlas/SpotLigthTriangleRasterizer;->r:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    move-object/from16 v9, p4

    invoke-virtual {v9, v8}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->dot(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)F

    move-result v8

    invoke-virtual {p0, v8}, Lorg/ITsMagic/Atlas/a;->H(F)F

    move-result v8

    cmpg-float v9, v8, v4

    if-gtz v9, :cond_4

    return-void

    :cond_4
    iget-object v9, v1, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->n:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    iget-object v9, v9, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->transform:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    iget-object v10, v0, Lorg/ITsMagic/Atlas/SpotLigthTriangleRasterizer;->t:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v9, v10}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->a0(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    iget-object v9, v0, Lorg/ITsMagic/Atlas/SpotLigthTriangleRasterizer;->t:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v9}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->lengthSquared()F

    move-result v9

    cmpg-float v6, v9, v6

    if-gtz v6, :cond_5

    return-void

    :cond_5
    iget-object v6, v0, Lorg/ITsMagic/Atlas/SpotLigthTriangleRasterizer;->t:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v6}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->normalizeLocal()Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    iget-object v6, v0, Lorg/ITsMagic/Atlas/SpotLigthTriangleRasterizer;->s:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    iget-object v9, v0, Lorg/ITsMagic/Atlas/SpotLigthTriangleRasterizer;->r:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v6, v9}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->set(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    iget-object v6, v0, Lorg/ITsMagic/Atlas/SpotLigthTriangleRasterizer;->s:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    const/high16 v9, -0x40800000    # -1.0f

    invoke-virtual {v6, v9}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->mulLocal(F)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual/range {p1 .. p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Light/SpotLight;->getInnerConeAngle()F

    move-result v6

    const/high16 v9, 0x3f000000    # 0.5f

    mul-float/2addr v6, v9

    invoke-static {v4, v6}, Ljava/lang/Math;->max(FF)F

    move-result v6

    invoke-virtual/range {p1 .. p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Light/SpotLight;->getOuterConeAngle()F

    move-result v10

    mul-float/2addr v10, v9

    invoke-static {v6, v10}, Ljava/lang/Math;->max(FF)F

    move-result v9

    float-to-double v10, v9

    invoke-static {v10, v11}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Math;->cos(D)D

    move-result-wide v10

    double-to-float v10, v10

    iget-object v11, v0, Lorg/ITsMagic/Atlas/SpotLigthTriangleRasterizer;->t:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    iget-object v12, v0, Lorg/ITsMagic/Atlas/SpotLigthTriangleRasterizer;->s:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v11, v12}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->dot(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)F

    move-result v11

    cmpg-float v12, v11, v10

    if-gtz v12, :cond_6

    return-void

    :cond_6
    cmpl-float v9, v9, v6

    const/high16 v12, 0x3f800000    # 1.0f

    if-lez v9, :cond_7

    float-to-double v13, v6

    invoke-static {v13, v14}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v13

    invoke-static {v13, v14}, Ljava/lang/Math;->cos(D)D

    move-result-wide v13

    double-to-float v6, v13

    const v9, 0x38d1b717    # 1.0E-4f

    sub-float/2addr v6, v10

    invoke-static {v9, v6}, Ljava/lang/Math;->max(FF)F

    move-result v6

    sub-float/2addr v11, v10

    div-float/2addr v11, v6

    invoke-virtual {p0, v11}, Lorg/ITsMagic/Atlas/a;->H(F)F

    move-result v6

    goto :goto_0

    :cond_7
    move v6, v12

    :goto_0
    mul-float/2addr v3, v3

    div-float/2addr v5, v3

    sub-float/2addr v12, v5

    invoke-virtual {p0, v12}, Lorg/ITsMagic/Atlas/a;->H(F)F

    move-result v3

    invoke-virtual/range {p1 .. p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Light/SpotLight;->getLumens()F

    move-result v5

    const v9, 0x3dcccccd    # 0.1f

    mul-float/2addr v5, v9

    mul-float/2addr v5, v8

    mul-float/2addr v5, v6

    mul-float/2addr v5, v3

    invoke-virtual/range {p1 .. p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Light/SpotLight;->getColor()Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    move-result-object v3

    invoke-virtual {v3}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->r()F

    move-result v3

    mul-float/2addr v5, v3

    cmpg-float v3, v5, v4

    if-gtz v3, :cond_8

    return-void

    :cond_8
    invoke-virtual/range {p1 .. p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Light/SpotLight;->isAllowShadow()Z

    move-result v3

    if-eqz v3, :cond_9

    iget-object v3, v0, Lorg/ITsMagic/Atlas/SpotLigthTriangleRasterizer;->r:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    move-object/from16 v4, p3

    invoke-virtual {p0, v2, v4, v3, v7}, Lorg/ITsMagic/Atlas/a;->y(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;F)Z

    move-result v2

    if-eqz v2, :cond_9

    return-void

    :cond_9
    invoke-virtual/range {p1 .. p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Light/SpotLight;->getColor()Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    move-result-object v1

    move-object/from16 v2, p5

    invoke-virtual {p0, v1, v5, v2}, Lorg/ITsMagic/Atlas/a;->f(Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;F[F)V

    :cond_a
    :goto_1
    return-void
.end method

.method public bridge synthetic d(Ljava/lang/Object;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;[F)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000,
            0x1000,
            0x1000,
            0x1000
        }
        names = {
            "light",
            "worldPosition",
            "surfaceNormal",
            "shadingNormal",
            "outRgb"
        }
    .end annotation

    check-cast p1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Light/SpotLight;

    invoke-virtual/range {p0 .. p5}, Lorg/ITsMagic/Atlas/SpotLigthTriangleRasterizer;->L(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Light/SpotLight;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;[F)V

    return-void
.end method

.method public s()Lorg/ITsMagic/Atlas/a;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/ITsMagic/Atlas/a<",
            "Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Light/SpotLight;",
            ">;"
        }
    .end annotation

    new-instance v0, Lorg/ITsMagic/Atlas/SpotLigthTriangleRasterizer;

    invoke-virtual {p0}, Lorg/ITsMagic/Atlas/a;->x()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0}, Lorg/ITsMagic/Atlas/a;->w()LBb/b;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/ITsMagic/Atlas/SpotLigthTriangleRasterizer;-><init>(Ljava/util/List;LBb/b;)V

    return-object v0
.end method

.method public v()Lorg/ITsMagic/Atlas/d$c;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/ITsMagic/Atlas/d$c<",
            "Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Light/SpotLight;",
            ">;"
        }
    .end annotation

    sget-object v0, Lorg/ITsMagic/Atlas/SpotLigthTriangleRasterizer$b;->a:Lorg/ITsMagic/Atlas/SpotLigthTriangleRasterizer$b;

    return-object v0
.end method
