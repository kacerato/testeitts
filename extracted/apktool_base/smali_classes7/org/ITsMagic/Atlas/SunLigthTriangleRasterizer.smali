.class public Lorg/ITsMagic/Atlas/SunLigthTriangleRasterizer;
.super Lorg/ITsMagic/Atlas/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/ITsMagic/Atlas/SunLigthTriangleRasterizer$b;,
        Lorg/ITsMagic/Atlas/SunLigthTriangleRasterizer$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/ITsMagic/Atlas/a<",
        "Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Light/SunLight;",
        ">;"
    }
.end annotation


# static fields
.field public static final r:F = 0.02f

.field public static final s:F = 5000.0f


# instance fields
.field public final q:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;


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

    iput-object p1, p0, Lorg/ITsMagic/Atlas/SunLigthTriangleRasterizer;->q:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    return-void
.end method

.method public static synthetic J(JJJJJJI[F[F[F[II[J[J[J[J[J[III)I
    .locals 1

    invoke-static/range {p0 .. p25}, Lorg/ITsMagic/Atlas/SunLigthTriangleRasterizer;->nativeCountRaycastsRange(JJJJJJI[F[F[F[II[J[J[J[J[J[III)I

    move-result v0

    return v0
.end method

.method public static synthetic K(JJJJJJJJJJJI[F[F[F[II[J[J[J[J[J[IIIIJ)V
    .locals 0

    invoke-static/range {p0 .. p38}, Lorg/ITsMagic/Atlas/SunLigthTriangleRasterizer;->nativeRasterizeRange(JJJJJJJJJJJI[F[F[F[II[J[J[J[J[J[IIIIJ)V

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
            "lightDirections",
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
            "lightDirections",
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
.method public L(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Light/SunLight;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;[F)V
    .locals 3
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

    if-eqz p1, :cond_5

    iget-object v0, p1, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->n:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, v0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->transform:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    iget-object v1, p0, Lorg/ITsMagic/Atlas/SunLigthTriangleRasterizer;->q:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v0, v1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->B(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    iget-object v0, p0, Lorg/ITsMagic/Atlas/SunLigthTriangleRasterizer;->q:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->lengthSquared()F

    move-result v0

    const v1, 0x322bcc77    # 1.0E-8f

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Lorg/ITsMagic/Atlas/SunLigthTriangleRasterizer;->q:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->normalizeLocal()Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    iget-object v0, p0, Lorg/ITsMagic/Atlas/SunLigthTriangleRasterizer;->q:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {p4, v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->dot(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)F

    move-result p4

    invoke-virtual {p0, p4}, Lorg/ITsMagic/Atlas/a;->H(F)F

    move-result p4

    const/4 v0, 0x0

    cmpg-float v1, p4, v0

    if-gtz v1, :cond_2

    return-void

    :cond_2
    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Light/SunLight;->getLux()F

    move-result v1

    const v2, 0x3ca3d70a    # 0.02f

    mul-float/2addr v1, v2

    mul-float/2addr v1, p4

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Light/SunLight;->getColor()Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    move-result-object p4

    invoke-virtual {p4}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->r()F

    move-result p4

    mul-float/2addr v1, p4

    cmpg-float p4, v1, v0

    if-gtz p4, :cond_3

    return-void

    :cond_3
    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Light/SunLight;->isAllowShadow()Z

    move-result p4

    if-eqz p4, :cond_4

    iget-object p4, p0, Lorg/ITsMagic/Atlas/SunLigthTriangleRasterizer;->q:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    const v0, 0x459c4000    # 5000.0f

    invoke-virtual {p0, p2, p3, p4, v0}, Lorg/ITsMagic/Atlas/a;->y(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;F)Z

    move-result p2

    if-eqz p2, :cond_4

    return-void

    :cond_4
    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Light/SunLight;->getColor()Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    move-result-object p1

    invoke-virtual {p0, p1, v1, p5}, Lorg/ITsMagic/Atlas/a;->f(Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;F[F)V

    :cond_5
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

    check-cast p1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Light/SunLight;

    invoke-virtual/range {p0 .. p5}, Lorg/ITsMagic/Atlas/SunLigthTriangleRasterizer;->L(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Light/SunLight;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;[F)V

    return-void
.end method

.method public s()Lorg/ITsMagic/Atlas/a;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/ITsMagic/Atlas/a<",
            "Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Light/SunLight;",
            ">;"
        }
    .end annotation

    new-instance v0, Lorg/ITsMagic/Atlas/SunLigthTriangleRasterizer;

    invoke-virtual {p0}, Lorg/ITsMagic/Atlas/a;->x()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0}, Lorg/ITsMagic/Atlas/a;->w()LBb/b;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/ITsMagic/Atlas/SunLigthTriangleRasterizer;-><init>(Ljava/util/List;LBb/b;)V

    return-object v0
.end method

.method public v()Lorg/ITsMagic/Atlas/d$c;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/ITsMagic/Atlas/d$c<",
            "Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Light/SunLight;",
            ">;"
        }
    .end annotation

    sget-object v0, Lorg/ITsMagic/Atlas/SunLigthTriangleRasterizer$b;->a:Lorg/ITsMagic/Atlas/SunLigthTriangleRasterizer$b;

    return-object v0
.end method
