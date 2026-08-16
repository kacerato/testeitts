.class public Lorg/ITsMagic/Atlas/PointLigthTriangleRasterizer;
.super Lorg/ITsMagic/Atlas/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/ITsMagic/Atlas/PointLigthTriangleRasterizer$b;,
        Lorg/ITsMagic/Atlas/PointLigthTriangleRasterizer$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/ITsMagic/Atlas/a<",
        "Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Light/PointLight;",
        ">;"
    }
.end annotation


# static fields
.field public static final s:F = 0.1f


# instance fields
.field public final q:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

.field public final r:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;


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

    iput-object p1, p0, Lorg/ITsMagic/Atlas/PointLigthTriangleRasterizer;->q:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    new-instance p1, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-direct {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;-><init>()V

    iput-object p1, p0, Lorg/ITsMagic/Atlas/PointLigthTriangleRasterizer;->r:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    return-void
.end method

.method public static synthetic J(JJJJJJI[F[F[F[II[J[J[J[J[J[III)I
    .locals 1

    invoke-static/range {p0 .. p25}, Lorg/ITsMagic/Atlas/PointLigthTriangleRasterizer;->nativeCountRaycastsRange(JJJJJJI[F[F[F[II[J[J[J[J[J[III)I

    move-result v0

    return v0
.end method

.method public static synthetic K(JJJJJJJJJJJI[F[F[F[II[J[J[J[J[J[IIIIJ)V
    .locals 0

    invoke-static/range {p0 .. p38}, Lorg/ITsMagic/Atlas/PointLigthTriangleRasterizer;->nativeRasterizeRange(JJJJJJJJJJJI[F[F[F[II[J[J[J[J[J[IIIIJ)V

    return-void
.end method

.method private static native nativeCountRaycastsRange(JJJJJJI[F[F[F[II[J[J[J[J[J[III)I
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

.method private static native nativeRasterizeRange(JJJJJJJJJJJI[F[F[F[II[J[J[J[J[J[IIIIJ)V
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
.method public L(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Light/PointLight;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;[F)V
    .locals 5
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

    if-eqz p1, :cond_7

    iget-object v0, p1, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->n:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    if-nez v0, :cond_0

    goto/16 :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Light/PointLight;->getFalloffRadius()F

    move-result v0

    const/4 v1, 0x0

    cmpg-float v2, v0, v1

    if-gtz v2, :cond_1

    return-void

    :cond_1
    iget-object v2, p1, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->n:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    iget-object v2, v2, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->transform:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    iget-object v3, p0, Lorg/ITsMagic/Atlas/PointLigthTriangleRasterizer;->q:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v2, v3}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->u0(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    iget-object v2, p0, Lorg/ITsMagic/Atlas/PointLigthTriangleRasterizer;->r:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    iget-object v3, p0, Lorg/ITsMagic/Atlas/PointLigthTriangleRasterizer;->q:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v2, v3}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->set(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    iget-object v2, p0, Lorg/ITsMagic/Atlas/PointLigthTriangleRasterizer;->r:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v2, p2}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->subLocal(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    iget-object v2, p0, Lorg/ITsMagic/Atlas/PointLigthTriangleRasterizer;->r:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v2}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->lengthSquared()F

    move-result v2

    const v3, 0x322bcc77    # 1.0E-8f

    cmpg-float v3, v2, v3

    if-gtz v3, :cond_2

    return-void

    :cond_2
    float-to-double v3, v2

    invoke-static {v3, v4}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v3

    double-to-float v3, v3

    cmpl-float v4, v3, v0

    if-lez v4, :cond_3

    return-void

    :cond_3
    iget-object v4, p0, Lorg/ITsMagic/Atlas/PointLigthTriangleRasterizer;->r:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v4, v3}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->divLocal(F)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    iget-object v4, p0, Lorg/ITsMagic/Atlas/PointLigthTriangleRasterizer;->r:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {p4, v4}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->dot(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)F

    move-result p4

    invoke-virtual {p0, p4}, Lorg/ITsMagic/Atlas/a;->H(F)F

    move-result p4

    cmpg-float v4, p4, v1

    if-gtz v4, :cond_4

    return-void

    :cond_4
    mul-float/2addr v0, v0

    div-float/2addr v2, v0

    const/high16 v0, 0x3f800000    # 1.0f

    sub-float/2addr v0, v2

    invoke-virtual {p0, v0}, Lorg/ITsMagic/Atlas/a;->H(F)F

    move-result v0

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Light/PointLight;->getLumens()F

    move-result v2

    const v4, 0x3dcccccd    # 0.1f

    mul-float/2addr v2, v4

    mul-float/2addr v2, p4

    mul-float/2addr v2, v0

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Light/PointLight;->getColor()Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    move-result-object p4

    invoke-virtual {p4}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->r()F

    move-result p4

    mul-float/2addr v2, p4

    cmpg-float p4, v2, v1

    if-gtz p4, :cond_5

    return-void

    :cond_5
    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Light/PointLight;->isAllowShadow()Z

    move-result p4

    if-eqz p4, :cond_6

    iget-object p4, p0, Lorg/ITsMagic/Atlas/PointLigthTriangleRasterizer;->r:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {p0, p2, p3, p4, v3}, Lorg/ITsMagic/Atlas/a;->y(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;F)Z

    move-result p2

    if-eqz p2, :cond_6

    return-void

    :cond_6
    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Light/PointLight;->getColor()Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    move-result-object p1

    invoke-virtual {p0, p1, v2, p5}, Lorg/ITsMagic/Atlas/a;->f(Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;F[F)V

    :cond_7
    :goto_0
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

    check-cast p1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Light/PointLight;

    invoke-virtual/range {p0 .. p5}, Lorg/ITsMagic/Atlas/PointLigthTriangleRasterizer;->L(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Light/PointLight;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;[F)V

    return-void
.end method

.method public s()Lorg/ITsMagic/Atlas/a;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/ITsMagic/Atlas/a<",
            "Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Light/PointLight;",
            ">;"
        }
    .end annotation

    new-instance v0, Lorg/ITsMagic/Atlas/PointLigthTriangleRasterizer;

    invoke-virtual {p0}, Lorg/ITsMagic/Atlas/a;->x()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0}, Lorg/ITsMagic/Atlas/a;->w()LBb/b;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/ITsMagic/Atlas/PointLigthTriangleRasterizer;-><init>(Ljava/util/List;LBb/b;)V

    return-object v0
.end method

.method public v()Lorg/ITsMagic/Atlas/d$c;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/ITsMagic/Atlas/d$c<",
            "Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Light/PointLight;",
            ">;"
        }
    .end annotation

    sget-object v0, Lorg/ITsMagic/Atlas/PointLigthTriangleRasterizer$b;->a:Lorg/ITsMagic/Atlas/PointLigthTriangleRasterizer$b;

    return-object v0
.end method
