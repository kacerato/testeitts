.class public Lorg/ITsMagic/Atlas/AmbientOcclusionRasterizer;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/ITsMagic/Atlas/AmbientOcclusionRasterizer$b;,
        Lorg/ITsMagic/Atlas/AmbientOcclusionRasterizer$g;,
        Lorg/ITsMagic/Atlas/AmbientOcclusionRasterizer$f;,
        Lorg/ITsMagic/Atlas/AmbientOcclusionRasterizer$e;,
        Lorg/ITsMagic/Atlas/AmbientOcclusionRasterizer$d;,
        Lorg/ITsMagic/Atlas/AmbientOcclusionRasterizer$c;,
        Lorg/ITsMagic/Atlas/AmbientOcclusionRasterizer$h;
    }
.end annotation


# static fields
.field public static final b:I = 0x20

.field public static final c:I = 0x100

.field public static final d:F = 1.0E-5f

.field public static final e:F = 1.0E-8f

.field public static final f:F = 0.01f

.field public static final g:F = 2.0f


# instance fields
.field public final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/itsmagic/engine/Engines/Engine/Vertex/BVHMesh;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "vertex"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "raycastVertices"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/itsmagic/engine/Engines/Engine/Vertex/BVHMesh;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/ITsMagic/Atlas/AmbientOcclusionRasterizer;->a:Ljava/util/List;

    return-void
.end method

.method public static synthetic a(Lorg/ITsMagic/Atlas/AmbientOcclusionRasterizer;IILorg/ITsMagic/Atlas/AmbientOcclusionRasterizer$g;Lorg/ITsMagic/Atlas/AmbientOcclusionRasterizer$f;FFLorg/ITsMagic/Atlas/AmbientOcclusionRasterizer$b;LBb/b;Lorg/ITsMagic/Atlas/a$c;Ljava/util/concurrent/atomic/AtomicInteger;I)Ljava/lang/Object;
    .locals 0

    invoke-virtual/range {p0 .. p11}, Lorg/ITsMagic/Atlas/AmbientOcclusionRasterizer;->j(IILorg/ITsMagic/Atlas/AmbientOcclusionRasterizer$g;Lorg/ITsMagic/Atlas/AmbientOcclusionRasterizer$f;FFLorg/ITsMagic/Atlas/AmbientOcclusionRasterizer$b;LBb/b;Lorg/ITsMagic/Atlas/a$c;Ljava/util/concurrent/atomic/AtomicInteger;I)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic b(Lorg/ITsMagic/Atlas/AmbientOcclusionRasterizer;IIJJJJJJJJLorg/ITsMagic/Atlas/AmbientOcclusionRasterizer$g;JJJLorg/ITsMagic/Atlas/AmbientOcclusionRasterizer$e;FLorg/ITsMagic/Atlas/AmbientOcclusionRasterizer$b;FLBb/b;JLorg/ITsMagic/Atlas/AmbientOcclusionRasterizer$d;Lorg/ITsMagic/Atlas/a$c;Ljava/util/concurrent/atomic/AtomicInteger;I)Ljava/lang/Object;
    .locals 1

    invoke-virtual/range {p0 .. p36}, Lorg/ITsMagic/Atlas/AmbientOcclusionRasterizer;->i(IIJJJJJJJJLorg/ITsMagic/Atlas/AmbientOcclusionRasterizer$g;JJJLorg/ITsMagic/Atlas/AmbientOcclusionRasterizer$e;FLorg/ITsMagic/Atlas/AmbientOcclusionRasterizer$b;FLBb/b;JLorg/ITsMagic/Atlas/AmbientOcclusionRasterizer$d;Lorg/ITsMagic/Atlas/a$c;Ljava/util/concurrent/atomic/AtomicInteger;I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static g(FFFFFF)F
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "ax",
            "ay",
            "bx",
            "by",
            "px",
            "py"
        }
    .end annotation

    sub-float/2addr p4, p0

    sub-float/2addr p3, p1

    mul-float/2addr p4, p3

    sub-float/2addr p5, p1

    sub-float/2addr p2, p0

    mul-float/2addr p5, p2

    sub-float/2addr p4, p5

    return p4
.end method

.method private static native nativeRasterizeRange(JJJJJJJJIJJJ[JFFIFIIIJ[J[J[J[J[J[I)V
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
            "normalXPointer",
            "normalYPointer",
            "normalZPointer",
            "pixelXPointer",
            "pixelYPointer",
            "surfelCount",
            "cellStartsPointer",
            "cellCountsPointer",
            "cellIndicesPointer",
            "cellKeys",
            "cellSize",
            "radius",
            "maxOccluderSamples",
            "power",
            "aoWidth",
            "rangeStart",
            "rangeEnd",
            "outputPixelsPointer",
            "meshVerticesPointers",
            "meshTrianglesPointers",
            "meshNodeBoundsPointers",
            "meshNodeMetaPointers",
            "meshTriangleOrderPointers",
            "meshNodeCounts"
        }
    .end annotation
.end method


# virtual methods
.method public final c(ILorg/ITsMagic/Atlas/AmbientOcclusionRasterizer$g;Lorg/ITsMagic/Atlas/AmbientOcclusionRasterizer$f;FFLorg/ITsMagic/Atlas/AmbientOcclusionRasterizer$b;LBb/b;Lorg/ITsMagic/Atlas/AmbientOcclusionRasterizer$h;)V
    .locals 30
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
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
            "receiverIndex",
            "surfels",
            "hash",
            "radius",
            "power",
            "config",
            "ao",
            "scratch"
        }
    .end annotation

    move/from16 v13, p1

    move-object/from16 v14, p2

    move/from16 v15, p4

    move-object/from16 v12, p8

    iget-object v0, v14, Lorg/ITsMagic/Atlas/AmbientOcclusionRasterizer$g;->a:Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    invoke-virtual {v0, v13}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->get(I)F

    move-result v11

    iget-object v0, v14, Lorg/ITsMagic/Atlas/AmbientOcclusionRasterizer$g;->b:Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    invoke-virtual {v0, v13}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->get(I)F

    move-result v10

    iget-object v0, v14, Lorg/ITsMagic/Atlas/AmbientOcclusionRasterizer$g;->c:Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    invoke-virtual {v0, v13}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->get(I)F

    move-result v9

    iget-object v0, v14, Lorg/ITsMagic/Atlas/AmbientOcclusionRasterizer$g;->d:Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    invoke-virtual {v0, v13}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->get(I)F

    move-result v8

    iget-object v0, v14, Lorg/ITsMagic/Atlas/AmbientOcclusionRasterizer$g;->e:Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    invoke-virtual {v0, v13}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->get(I)F

    move-result v7

    iget-object v0, v14, Lorg/ITsMagic/Atlas/AmbientOcclusionRasterizer$g;->f:Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    invoke-virtual {v0, v13}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->get(I)F

    move-result v6

    iget-object v0, v12, Lorg/ITsMagic/Atlas/AmbientOcclusionRasterizer$h;->c:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v0, v11, v10, v9}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->set(FFF)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    iget-object v0, v12, Lorg/ITsMagic/Atlas/AmbientOcclusionRasterizer$h;->d:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v0, v8, v7, v6}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->set(FFF)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    mul-float v16, v15, v15

    iget-object v0, v12, Lorg/ITsMagic/Atlas/AmbientOcclusionRasterizer$h;->c:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    move-object/from16 v1, p3

    invoke-virtual {v1, v0, v15}, Lorg/ITsMagic/Atlas/AmbientOcclusionRasterizer$f;->e(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;F)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v4

    if-gtz v4, :cond_0

    return-void

    :cond_0
    move-object/from16 v0, p6

    iget v3, v0, Lorg/ITsMagic/Atlas/AmbientOcclusionRasterizer$b;->a:I

    const/16 v17, 0x0

    const/4 v2, 0x1

    if-lez v3, :cond_3

    if-le v4, v3, :cond_3

    int-to-float v1, v4

    int-to-float v0, v3

    div-float v18, v1, v0

    move/from16 v21, v17

    const/4 v1, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    :goto_0
    if-ge v1, v3, :cond_2

    add-int/lit8 v0, v4, -0x1

    int-to-float v2, v1

    mul-float v2, v2, v18

    move/from16 p3, v1

    float-to-double v1, v2

    invoke-static {v1, v2}, Ljava/lang/Math;->floor(D)D

    move-result-wide v1

    double-to-int v1, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    move-object/from16 v0, p0

    move/from16 v22, p3

    move/from16 v1, p1

    const/4 v15, 0x1

    move/from16 v23, v3

    move v3, v11

    move v15, v4

    move v4, v10

    move-object v13, v5

    move v5, v9

    move/from16 v24, v6

    move v6, v8

    move/from16 v25, v7

    move/from16 v26, v8

    move/from16 v8, v24

    move/from16 v27, v9

    move-object/from16 v9, p2

    move/from16 v28, v10

    move/from16 v10, p4

    move/from16 v29, v11

    move/from16 v11, v16

    move-object/from16 v12, p8

    invoke-virtual/range {v0 .. v12}, Lorg/ITsMagic/Atlas/AmbientOcclusionRasterizer;->o(IIFFFFFFLorg/ITsMagic/Atlas/AmbientOcclusionRasterizer$g;FFLorg/ITsMagic/Atlas/AmbientOcclusionRasterizer$h;)F

    move-result v0

    add-float v21, v21, v0

    cmpl-float v0, v0, v17

    if-lez v0, :cond_1

    add-int/lit8 v20, v20, 0x1

    :cond_1
    add-int/lit8 v19, v19, 0x1

    add-int/lit8 v1, v22, 0x1

    move-object/from16 v12, p8

    move-object v5, v13

    move v4, v15

    move/from16 v3, v23

    move/from16 v6, v24

    move/from16 v7, v25

    move/from16 v8, v26

    move/from16 v9, v27

    move/from16 v10, v28

    move/from16 v11, v29

    const/4 v2, 0x1

    move/from16 v13, p1

    move/from16 v15, p4

    goto :goto_0

    :cond_2
    move/from16 v0, v20

    goto :goto_2

    :cond_3
    move v15, v4

    move-object v13, v5

    move/from16 v24, v6

    move/from16 v25, v7

    move/from16 v26, v8

    move/from16 v27, v9

    move/from16 v28, v10

    move/from16 v29, v11

    move/from16 v21, v17

    const/4 v12, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    :goto_1
    if-ge v12, v15, :cond_5

    invoke-interface {v13, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v3, v29

    move/from16 v4, v28

    move/from16 v5, v27

    move/from16 v6, v26

    move/from16 v7, v25

    move/from16 v8, v24

    move-object/from16 v9, p2

    move/from16 v10, p4

    move/from16 v11, v16

    move/from16 v20, v12

    move-object/from16 v12, p8

    invoke-virtual/range {v0 .. v12}, Lorg/ITsMagic/Atlas/AmbientOcclusionRasterizer;->o(IIFFFFFFLorg/ITsMagic/Atlas/AmbientOcclusionRasterizer$g;FFLorg/ITsMagic/Atlas/AmbientOcclusionRasterizer$h;)F

    move-result v0

    add-float v21, v21, v0

    cmpl-float v0, v0, v17

    if-lez v0, :cond_4

    add-int/lit8 v18, v18, 0x1

    :cond_4
    add-int/lit8 v19, v19, 0x1

    add-int/lit8 v12, v20, 0x1

    goto :goto_1

    :cond_5
    move/from16 v0, v18

    :goto_2
    if-lez v19, :cond_6

    if-lez v0, :cond_6

    cmpg-float v1, v21, v17

    if-gtz v1, :cond_7

    :cond_6
    move-object/from16 v1, p0

    goto :goto_3

    :cond_7
    const/4 v1, 0x1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    int-to-float v0, v0

    div-float v21, v21, v0

    const/high16 v0, 0x40000000    # 2.0f

    mul-float v0, v0, v21

    move-object/from16 v1, p0

    invoke-virtual {v1, v0}, Lorg/ITsMagic/Atlas/AmbientOcclusionRasterizer;->f(F)F

    move-result v0

    float-to-double v2, v0

    const v0, 0x3c23d70a    # 0.01f

    move/from16 v4, p5

    invoke-static {v0, v4}, Ljava/lang/Math;->max(FF)F

    move-result v0

    float-to-double v4, v0

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    double-to-float v0, v2

    cmpg-float v2, v0, v17

    if-gtz v2, :cond_8

    return-void

    :cond_8
    iget-object v2, v14, Lorg/ITsMagic/Atlas/AmbientOcclusionRasterizer$g;->g:Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;

    move/from16 v3, p1

    invoke-virtual {v2, v3}, Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;->get(I)I

    move-result v2

    iget-object v4, v14, Lorg/ITsMagic/Atlas/AmbientOcclusionRasterizer$g;->h:Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;

    invoke-virtual {v4, v3}, Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;->get(I)I

    move-result v3

    const/high16 v4, 0x3f800000    # 1.0f

    move-object/from16 p1, p7

    move/from16 p2, v2

    move/from16 p3, v3

    move/from16 p4, v0

    move/from16 p5, v0

    move/from16 p6, v0

    move/from16 p7, v4

    invoke-virtual/range {p1 .. p7}, LBb/b;->s(IIFFFF)V

    :goto_3
    return-void
.end method

.method public final d(LBb/b;Lorg/ITsMagic/Atlas/AmbientOcclusionRasterizer$c;)V
    .locals 13
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "ao",
            "outputPixels"
        }
    .end annotation

    invoke-virtual {p1}, LBb/b;->p()I

    move-result v0

    invoke-virtual {p1}, LBb/b;->l()I

    move-result v1

    mul-int v2, v0, v1

    mul-int/lit8 v2, v2, 0x4

    const/4 v3, 0x1

    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    new-array v3, v2, [F

    iget-object p2, p2, Lorg/ITsMagic/Atlas/AmbientOcclusionRasterizer$c;->a:Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    const/4 v4, 0x0

    invoke-virtual {p2, v4, v3, v4, v2}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->get(I[FII)V

    move p2, v4

    move v2, p2

    :goto_0
    if-ge p2, v1, :cond_2

    move v12, v4

    :goto_1
    if-ge v12, v0, :cond_1

    aget v10, v3, v2

    add-int/lit8 v5, v2, 0x3

    aget v11, v3, v5

    const/4 v5, 0x0

    cmpl-float v5, v11, v5

    if-lez v5, :cond_0

    move-object v5, p1

    move v6, v12

    move v7, p2

    move v8, v10

    move v9, v10

    invoke-virtual/range {v5 .. v11}, LBb/b;->s(IIFFFF)V

    :cond_0
    add-int/lit8 v2, v2, 0x4

    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public final e(LBb/b;Ljava/util/List;)Lorg/ITsMagic/Atlas/AmbientOcclusionRasterizer$g;
    .locals 85
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "ao",
            "bakeDataList"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LBb/b;",
            "Ljava/util/List<",
            "LUg/h;",
            ">;)",
            "Lorg/ITsMagic/Atlas/AmbientOcclusionRasterizer$g;"
        }
    .end annotation

    invoke-virtual/range {p1 .. p1}, LBb/b;->p()I

    move-result v0

    invoke-virtual/range {p1 .. p1}, LBb/b;->l()I

    move-result v33

    mul-int v1, v0, v33

    const/4 v15, 0x1

    invoke-static {v15, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    new-instance v14, Lorg/ITsMagic/Atlas/AmbientOcclusionRasterizer$g;

    invoke-direct {v14, v1}, Lorg/ITsMagic/Atlas/AmbientOcclusionRasterizer$g;-><init>(I)V

    new-instance v13, Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;

    invoke-direct {v13, v1}, Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;-><init>(I)V

    const/4 v1, -0x1

    invoke-virtual {v13, v1}, Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;->fill(I)V

    new-instance v34, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-direct/range {v34 .. v34}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;-><init>()V

    new-instance v35, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-direct/range {v35 .. v35}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;-><init>()V

    const/4 v11, 0x0

    :goto_0
    :try_start_0
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v1

    if-ge v11, v1, :cond_f

    move-object/from16 v10, p2

    invoke-interface {v10, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LUg/h;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, LUg/h;->a()LUg/g;

    move-result-object v2

    if-nez v2, :cond_1

    :cond_0
    :goto_1
    move/from16 v78, v0

    move/from16 v53, v11

    move-object/from16 v80, v13

    move-object/from16 v81, v14

    move/from16 v83, v15

    const/4 v0, 0x0

    goto/16 :goto_b

    :cond_1
    invoke-virtual {v1}, LUg/h;->a()LUg/g;

    move-result-object v1

    invoke-virtual {v1}, LUg/g;->i()Lvc/q;

    move-result-object v9

    invoke-virtual {v1}, LUg/g;->c()Lvc/q;

    move-result-object v8

    invoke-virtual {v1}, LUg/g;->a()Lvc/p;

    move-result-object v7

    invoke-virtual {v1}, LUg/g;->g()Lvc/n;

    move-result-object v6

    if-eqz v9, :cond_0

    if-eqz v7, :cond_0

    if-nez v6, :cond_2

    goto :goto_1

    :cond_2
    const/4 v5, 0x0

    :goto_2
    invoke-virtual {v6}, Lvc/n;->b()I

    move-result v1

    if-ge v5, v1, :cond_0

    invoke-virtual {v6, v5}, Lvc/n;->h(I)I

    move-result v1

    invoke-virtual {v6, v5}, Lvc/n;->i(I)I

    move-result v2

    invoke-virtual {v6, v5}, Lvc/n;->j(I)I

    move-result v3

    if-ltz v1, :cond_3

    if-ltz v2, :cond_3

    if-gez v3, :cond_4

    :cond_3
    :goto_3
    move/from16 v78, v0

    move/from16 v70, v5

    move-object/from16 v72, v6

    move-object/from16 v38, v7

    move-object/from16 v41, v8

    move-object/from16 v75, v9

    move/from16 v53, v11

    move-object/from16 v80, v13

    move-object/from16 v81, v14

    move/from16 v83, v15

    :goto_4
    const/4 v0, 0x0

    goto/16 :goto_a

    :cond_4
    invoke-virtual {v7}, Lvc/p;->b()I

    move-result v4

    if-ge v1, v4, :cond_3

    invoke-virtual {v7}, Lvc/p;->b()I

    move-result v4

    if-ge v2, v4, :cond_3

    invoke-virtual {v7}, Lvc/p;->b()I

    move-result v4

    if-lt v3, v4, :cond_5

    goto :goto_3

    :cond_5
    invoke-virtual {v9}, Lvc/q;->d()I

    move-result v4

    if-ge v1, v4, :cond_3

    invoke-virtual {v9}, Lvc/q;->d()I

    move-result v4

    if-ge v2, v4, :cond_3

    invoke-virtual {v9}, Lvc/q;->d()I

    move-result v4

    if-lt v3, v4, :cond_6

    goto :goto_3

    :cond_6
    invoke-virtual {v7, v1}, Lvc/p;->i(I)F

    move-result v4

    add-int/lit8 v12, v0, -0x1

    int-to-float v15, v12

    mul-float/2addr v4, v15

    invoke-virtual {v7, v1}, Lvc/p;->j(I)F

    move-result v17

    const/high16 v36, 0x3f800000    # 1.0f

    sub-float v17, v36, v17

    move/from16 v23, v11

    const/16 v16, 0x1

    add-int/lit8 v11, v33, -0x1

    move/from16 v24, v5

    int-to-float v5, v11

    mul-float v10, v17, v5

    invoke-virtual {v7, v2}, Lvc/p;->i(I)F

    move-result v17

    move-object/from16 v31, v6

    mul-float v6, v17, v15

    invoke-virtual {v7, v2}, Lvc/p;->j(I)F

    move-result v17
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sub-float v17, v36, v17

    move-object/from16 v32, v14

    mul-float v14, v17, v5

    :try_start_1
    invoke-virtual {v7, v3}, Lvc/p;->i(I)F

    move-result v17

    mul-float v15, v15, v17

    invoke-virtual {v7, v3}, Lvc/p;->j(I)F

    move-result v17

    sub-float v17, v36, v17

    mul-float v5, v5, v17

    move/from16 v17, v4

    move/from16 v18, v10

    move/from16 v19, v6

    move/from16 v20, v14

    move/from16 v21, v15

    move/from16 v22, v5

    invoke-static/range {v17 .. v22}, Lorg/ITsMagic/Atlas/AmbientOcclusionRasterizer;->g(FFFFFF)F

    move-result v37

    invoke-static/range {v37 .. v37}, Ljava/lang/Math;->abs(F)F

    move-result v17

    const v18, 0x3727c5ac    # 1.0E-5f

    cmpg-float v17, v17, v18

    if-gtz v17, :cond_7

    move/from16 v78, v0

    move-object/from16 v38, v7

    move-object/from16 v41, v8

    move-object/from16 v75, v9

    move-object/from16 v80, v13

    move/from16 v83, v16

    move/from16 v53, v23

    move/from16 v70, v24

    move-object/from16 v72, v31

    move-object/from16 v81, v32

    goto/16 :goto_4

    :cond_7
    move-object/from16 v38, v7

    invoke-static {v6, v15}, Ljava/lang/Math;->min(FF)F

    move-result v7

    invoke-static {v4, v7}, Ljava/lang/Math;->min(FF)F

    move-result v7

    move-object/from16 v39, v8

    float-to-double v7, v7

    invoke-static {v7, v8}, Ljava/lang/Math;->floor(D)D

    move-result-wide v7

    double-to-int v7, v7

    const/4 v8, 0x0

    invoke-static {v8, v7, v12}, LNc/b;->F(III)I

    move-result v40

    invoke-static {v6, v15}, Ljava/lang/Math;->max(FF)F

    move-result v7

    invoke-static {v4, v7}, Ljava/lang/Math;->max(FF)F

    move-result v7

    move-object/from16 p1, v9

    float-to-double v8, v7

    invoke-static {v8, v9}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v7

    double-to-int v7, v7

    const/4 v8, 0x0

    invoke-static {v8, v7, v12}, LNc/b;->F(III)I

    move-result v9

    invoke-static {v14, v5}, Ljava/lang/Math;->min(FF)F

    move-result v7

    invoke-static {v10, v7}, Ljava/lang/Math;->min(FF)F

    move-result v7

    move/from16 v42, v9

    float-to-double v8, v7

    invoke-static {v8, v9}, Ljava/lang/Math;->floor(D)D

    move-result-wide v7

    double-to-int v7, v7

    const/4 v8, 0x0

    invoke-static {v8, v7, v11}, LNc/b;->F(III)I

    move-result v7

    invoke-static {v14, v5}, Ljava/lang/Math;->max(FF)F

    move-result v9

    invoke-static {v10, v9}, Ljava/lang/Math;->max(FF)F

    move-result v9

    float-to-double v8, v9

    invoke-static {v8, v9}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v8

    double-to-int v8, v8

    const/4 v9, 0x0

    invoke-static {v9, v8, v11}, LNc/b;->F(III)I

    move-result v8

    move-object/from16 v9, p1

    invoke-virtual {v9, v1}, Lvc/q;->m(I)F

    move-result v43

    invoke-virtual {v9, v1}, Lvc/q;->n(I)F

    move-result v44

    invoke-virtual {v9, v1}, Lvc/q;->o(I)F

    move-result v45

    invoke-virtual {v9, v2}, Lvc/q;->m(I)F

    move-result v46

    invoke-virtual {v9, v2}, Lvc/q;->n(I)F

    move-result v47

    invoke-virtual {v9, v2}, Lvc/q;->o(I)F

    move-result v48

    invoke-virtual {v9, v3}, Lvc/q;->m(I)F

    move-result v49

    invoke-virtual {v9, v3}, Lvc/q;->n(I)F

    move-result v50

    invoke-virtual {v9, v3}, Lvc/q;->o(I)F

    move-result v51

    sub-float v17, v47, v44

    sub-float v18, v51, v45

    mul-float v19, v17, v18

    sub-float v20, v48, v45

    sub-float v21, v50, v44

    mul-float v22, v20, v21

    sub-float v19, v19, v22

    sub-float v22, v49, v43

    mul-float v20, v20, v22

    sub-float v25, v46, v43

    mul-float v18, v18, v25

    sub-float v20, v20, v18

    mul-float v25, v25, v21

    mul-float v17, v17, v22

    sub-float v25, v25, v17

    mul-float v17, v19, v19

    mul-float v18, v20, v20

    add-float v17, v17, v18

    mul-float v18, v25, v25

    move/from16 p1, v7

    add-float v7, v17, v18

    const v17, 0x322bcc77    # 1.0E-8f

    cmpl-float v17, v7, v17

    if-lez v17, :cond_8

    move/from16 v53, v11

    move/from16 v52, v12

    float-to-double v11, v7

    invoke-static {v11, v12}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v11

    double-to-float v7, v11

    div-float v7, v36, v7

    mul-float v19, v19, v7

    mul-float v20, v20, v7

    mul-float v25, v25, v7

    move/from16 v54, v19

    move/from16 v55, v20

    move/from16 v56, v25

    goto :goto_5

    :catchall_0
    move-exception v0

    move-object/from16 v80, v13

    goto/16 :goto_d

    :catch_0
    move-exception v0

    move-object/from16 v80, v13

    move-object/from16 v81, v32

    goto/16 :goto_c

    :cond_8
    move/from16 v53, v11

    move/from16 v52, v12

    const/4 v7, 0x0

    move/from16 v54, v7

    move/from16 v56, v54

    move/from16 v55, v36

    :goto_5
    if-eqz v39, :cond_9

    invoke-virtual/range {v39 .. v39}, Lvc/q;->d()I

    move-result v7

    if-ge v1, v7, :cond_9

    invoke-virtual/range {v39 .. v39}, Lvc/q;->d()I

    move-result v7

    if-ge v2, v7, :cond_9

    invoke-virtual/range {v39 .. v39}, Lvc/q;->d()I

    move-result v7

    if-ge v3, v7, :cond_9

    move-object/from16 v11, v39

    invoke-virtual {v11, v1}, Lvc/q;->m(I)F

    move-result v7

    invoke-virtual {v11, v1}, Lvc/q;->n(I)F

    move-result v12

    invoke-virtual {v11, v1}, Lvc/q;->o(I)F

    move-result v1

    invoke-virtual {v11, v2}, Lvc/q;->m(I)F

    move-result v17

    invoke-virtual {v11, v2}, Lvc/q;->n(I)F

    move-result v18

    invoke-virtual {v11, v2}, Lvc/q;->o(I)F

    move-result v2

    invoke-virtual {v11, v3}, Lvc/q;->m(I)F

    move-result v19

    invoke-virtual {v11, v3}, Lvc/q;->n(I)F

    move-result v20

    invoke-virtual {v11, v3}, Lvc/q;->o(I)F

    move-result v3

    move/from16 v58, v1

    move/from16 v61, v2

    move/from16 v64, v3

    move/from16 v39, v7

    move/from16 v57, v12

    move/from16 v59, v17

    move/from16 v60, v18

    move/from16 v62, v19

    move/from16 v63, v20

    goto :goto_6

    :cond_9
    move-object/from16 v11, v39

    move/from16 v39, v54

    move/from16 v59, v39

    move/from16 v62, v59

    move/from16 v57, v55

    move/from16 v60, v57

    move/from16 v63, v60

    move/from16 v58, v56

    move/from16 v61, v58

    move/from16 v64, v61

    :goto_6
    move/from16 v12, p1

    const/4 v1, 0x0

    :goto_7
    if-gt v12, v8, :cond_d

    int-to-float v2, v12

    const/high16 v65, 0x3f000000    # 0.5f

    add-float v66, v2, v65

    move/from16 v3, v40

    move/from16 v7, v42

    :goto_8
    if-gt v3, v7, :cond_c

    int-to-float v2, v3

    add-float v21, v2, v65

    move/from16 v25, v6

    move/from16 v26, v14

    move/from16 v27, v15

    move/from16 v28, v5

    move/from16 v29, v21

    move/from16 v30, v66

    invoke-static/range {v25 .. v30}, Lorg/ITsMagic/Atlas/AmbientOcclusionRasterizer;->g(FFFFFF)F

    move-result v2

    div-float v30, v2, v37

    move/from16 v17, v15

    move/from16 v18, v5

    move/from16 v19, v4

    move/from16 v20, v10

    move/from16 v22, v66

    invoke-static/range {v17 .. v22}, Lorg/ITsMagic/Atlas/AmbientOcclusionRasterizer;->g(FFFFFF)F

    move-result v2
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    div-float v42, v2, v37

    sub-float v2, v36, v30

    sub-float v67, v2, v42

    const v2, -0x48d83a54    # -1.0E-5f

    cmpg-float v17, v30, v2

    if-ltz v17, :cond_a

    cmpg-float v17, v42, v2

    if-ltz v17, :cond_a

    cmpg-float v2, v67, v2

    if-gez v2, :cond_b

    :cond_a
    move/from16 v78, v0

    move/from16 v68, v3

    move/from16 v69, v4

    move/from16 v71, v5

    move/from16 v73, v6

    move/from16 v76, v7

    move/from16 v74, v8

    move-object/from16 v75, v9

    move/from16 v77, v10

    move-object/from16 v41, v11

    move-object/from16 v80, v13

    move/from16 v82, v14

    move/from16 v84, v15

    move/from16 v83, v16

    move/from16 v70, v24

    move-object/from16 v72, v31

    move-object/from16 v81, v32

    move/from16 v79, v52

    move/from16 p1, v53

    const/4 v0, 0x0

    move/from16 v52, v12

    move/from16 v53, v23

    goto/16 :goto_9

    :cond_b
    move-object/from16 v1, p0

    move v2, v3

    move/from16 v68, v3

    move v3, v12

    move/from16 v69, v4

    move v4, v0

    move/from16 v71, v5

    move/from16 v70, v24

    move-object v5, v13

    move/from16 v73, v6

    move-object/from16 v72, v31

    move-object/from16 v6, v32

    move/from16 v17, v7

    move-object/from16 v7, v34

    move/from16 v74, v8

    move-object/from16 v41, v11

    const/16 v18, 0x0

    move-object/from16 v8, v35

    move-object/from16 v75, v9

    move/from16 v76, v17

    move/from16 v9, v43

    move/from16 v77, v10

    move/from16 v10, v44

    move/from16 v78, v0

    move/from16 v0, v53

    move/from16 v53, v23

    move/from16 v11, v45

    move/from16 p1, v0

    move/from16 v0, v18

    move/from16 v79, v52

    move/from16 v52, v12

    move/from16 v12, v46

    move-object/from16 v80, v13

    move/from16 v13, v47

    move/from16 v82, v14

    move-object/from16 v81, v32

    move/from16 v14, v48

    move/from16 v84, v15

    move/from16 v83, v16

    move/from16 v15, v49

    move/from16 v16, v50

    move/from16 v17, v51

    move/from16 v18, v39

    move/from16 v19, v57

    move/from16 v20, v58

    move/from16 v21, v59

    move/from16 v22, v60

    move/from16 v23, v61

    move/from16 v24, v62

    move/from16 v25, v63

    move/from16 v26, v64

    move/from16 v27, v54

    move/from16 v28, v55

    move/from16 v29, v56

    move/from16 v31, v42

    move/from16 v32, v67

    :try_start_2
    invoke-virtual/range {v1 .. v32}, Lorg/ITsMagic/Atlas/AmbientOcclusionRasterizer;->q(IIILcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;Lorg/ITsMagic/Atlas/AmbientOcclusionRasterizer$g;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;FFFFFFFFFFFFFFFFFFFFFFFF)V

    move/from16 v1, v83

    goto :goto_9

    :catchall_1
    move-exception v0

    goto/16 :goto_d

    :catch_1
    move-exception v0

    goto/16 :goto_c

    :goto_9
    add-int/lit8 v3, v68, 0x1

    move-object/from16 v11, v41

    move/from16 v12, v52

    move/from16 v23, v53

    move/from16 v4, v69

    move/from16 v24, v70

    move/from16 v5, v71

    move-object/from16 v31, v72

    move/from16 v6, v73

    move/from16 v8, v74

    move-object/from16 v9, v75

    move/from16 v7, v76

    move/from16 v10, v77

    move/from16 v0, v78

    move/from16 v52, v79

    move-object/from16 v13, v80

    move-object/from16 v32, v81

    move/from16 v14, v82

    move/from16 v16, v83

    move/from16 v15, v84

    move/from16 v53, p1

    goto/16 :goto_8

    :cond_c
    move/from16 v78, v0

    move/from16 v69, v4

    move/from16 v71, v5

    move/from16 v73, v6

    move/from16 v76, v7

    move/from16 v74, v8

    move-object/from16 v75, v9

    move/from16 v77, v10

    move-object/from16 v41, v11

    move-object/from16 v80, v13

    move/from16 v82, v14

    move/from16 v84, v15

    move/from16 v83, v16

    move/from16 v70, v24

    move-object/from16 v72, v31

    move-object/from16 v81, v32

    move/from16 v79, v52

    move/from16 p1, v53

    const/4 v0, 0x0

    move/from16 v52, v12

    move/from16 v53, v23

    add-int/lit8 v12, v52, 0x1

    move/from16 v42, v76

    move/from16 v0, v78

    move/from16 v52, v79

    move/from16 v53, p1

    goto/16 :goto_7

    :cond_d
    move/from16 v78, v0

    move/from16 v69, v4

    move/from16 v71, v5

    move/from16 v73, v6

    move-object/from16 v75, v9

    move/from16 v77, v10

    move-object/from16 v41, v11

    move-object/from16 v80, v13

    move/from16 v82, v14

    move/from16 v84, v15

    move/from16 v83, v16

    move/from16 v70, v24

    move-object/from16 v72, v31

    move-object/from16 v81, v32

    move/from16 v79, v52

    move/from16 p1, v53

    const/4 v0, 0x0

    move/from16 v53, v23

    if-nez v1, :cond_e

    add-float v4, v69, v73

    add-float v4, v4, v84

    const/high16 v1, 0x40400000    # 3.0f

    div-float/2addr v4, v1

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v2

    move/from16 v3, v79

    invoke-static {v0, v2, v3}, LNc/b;->F(III)I

    move-result v2

    add-float v10, v77, v82

    add-float v10, v10, v71

    div-float/2addr v10, v1

    invoke-static {v10}, Ljava/lang/Math;->round(F)I

    move-result v1

    move/from16 v3, p1

    invoke-static {v0, v1, v3}, LNc/b;->F(III)I

    move-result v3

    const v31, 0x3eaaaaab

    const v32, 0x3eaaaaab

    const v30, 0x3eaaaaab

    move-object/from16 v1, p0

    move/from16 v4, v78

    move-object/from16 v5, v80

    move-object/from16 v6, v81

    move-object/from16 v7, v34

    move-object/from16 v8, v35

    move/from16 v9, v43

    move/from16 v10, v44

    move/from16 v11, v45

    move/from16 v12, v46

    move/from16 v13, v47

    move/from16 v14, v48

    move/from16 v15, v49

    move/from16 v16, v50

    move/from16 v17, v51

    move/from16 v18, v39

    move/from16 v19, v57

    move/from16 v20, v58

    move/from16 v21, v59

    move/from16 v22, v60

    move/from16 v23, v61

    move/from16 v24, v62

    move/from16 v25, v63

    move/from16 v26, v64

    move/from16 v27, v54

    move/from16 v28, v55

    move/from16 v29, v56

    invoke-virtual/range {v1 .. v32}, Lorg/ITsMagic/Atlas/AmbientOcclusionRasterizer;->q(IIILcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;Lorg/ITsMagic/Atlas/AmbientOcclusionRasterizer$g;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;FFFFFFFFFFFFFFFFFFFFFFFF)V
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_a

    :catch_2
    move-exception v0

    move-object/from16 v80, v13

    move-object/from16 v81, v14

    goto :goto_c

    :cond_e
    :goto_a
    add-int/lit8 v5, v70, 0x1

    move-object/from16 v10, p2

    move-object/from16 v7, v38

    move-object/from16 v8, v41

    move/from16 v11, v53

    move-object/from16 v6, v72

    move-object/from16 v9, v75

    move/from16 v0, v78

    move-object/from16 v13, v80

    move-object/from16 v14, v81

    move/from16 v15, v83

    goto/16 :goto_2

    :goto_b
    add-int/lit8 v11, v53, 0x1

    move/from16 v0, v78

    move-object/from16 v13, v80

    move-object/from16 v14, v81

    move/from16 v15, v83

    goto/16 :goto_0

    :cond_f
    move-object/from16 v80, v13

    move-object/from16 v81, v14

    invoke-virtual/range {v80 .. v80}, Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;->destroy()V

    return-object v81

    :goto_c
    :try_start_3
    invoke-virtual/range {v81 .. v81}, Lorg/ITsMagic/Atlas/AmbientOcclusionRasterizer$g;->a()V

    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :goto_d
    invoke-virtual/range {v80 .. v80}, Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;->destroy()V

    throw v0
.end method

.method public final f(F)F
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {v0, p1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    const/4 v0, 0x0

    invoke-static {v0, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    return p1
.end method

.method public final h(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;FLorg/ITsMagic/Atlas/AmbientOcclusionRasterizer$h;)Z
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
            "worldPosition",
            "worldNormal",
            "toOccluderDirection",
            "maxDistance",
            "scratch"
        }
    .end annotation

    const v0, 0x3c23d70a    # 0.01f

    cmpg-float v1, p4, v0

    const/4 v2, 0x0

    if-gtz v1, :cond_0

    return v2

    :cond_0
    iget-object p5, p5, Lorg/ITsMagic/Atlas/AmbientOcclusionRasterizer$h;->a:Laa/c;

    invoke-virtual {p5}, Laa/c;->h()Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->set(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v1, p2, v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->addLocal(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;F)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {p5}, Laa/c;->e()Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    move-result-object p1

    invoke-virtual {p1, p3}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->set(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    sub-float/2addr p4, v0

    iput p4, p5, Laa/c;->c:F

    move p1, v2

    :goto_0
    iget-object p2, p0, Lorg/ITsMagic/Atlas/AmbientOcclusionRasterizer;->a:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    if-ge p1, p2, :cond_3

    iget-object p2, p0, Lorg/ITsMagic/Atlas/AmbientOcclusionRasterizer;->a:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/itsmagic/engine/Engines/Engine/Vertex/BVHMesh;

    if-eqz p2, :cond_2

    invoke-virtual {p2}, Lcom/itsmagic/engine/Engines/Engine/Vertex/BVHMesh;->A()Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    move-result-object p3

    if-eqz p3, :cond_2

    invoke-virtual {p2}, Lcom/itsmagic/engine/Engines/Engine/Vertex/BVHMesh;->v()Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;

    move-result-object p3

    if-nez p3, :cond_1

    goto :goto_1

    :cond_1
    sget-object p3, LJAVARuntime/Vertex$RayMode;->ClosestPoint:LJAVARuntime/Vertex$RayMode;

    invoke-virtual {p2, p5, p3, v2}, Lcom/itsmagic/engine/Engines/Engine/Vertex/BVHMesh;->U(Laa/c;LJAVARuntime/Vertex$RayMode;Z)Laa/a;

    move-result-object p2

    if-eqz p2, :cond_2

    invoke-virtual {p2}, Laa/a;->getDistance()F

    move-result p3

    cmpl-float p3, p3, v0

    if-lez p3, :cond_2

    invoke-virtual {p2}, Laa/a;->getDistance()F

    move-result p2

    iget p3, p5, Laa/c;->c:F

    cmpg-float p2, p2, p3

    if-gez p2, :cond_2

    const/4 p1, 0x1

    return p1

    :cond_2
    :goto_1
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_3
    return v2
.end method

.method public final synthetic i(IIJJJJJJJJLorg/ITsMagic/Atlas/AmbientOcclusionRasterizer$g;JJJLorg/ITsMagic/Atlas/AmbientOcclusionRasterizer$e;FLorg/ITsMagic/Atlas/AmbientOcclusionRasterizer$b;FLBb/b;JLorg/ITsMagic/Atlas/AmbientOcclusionRasterizer$d;Lorg/ITsMagic/Atlas/a$c;Ljava/util/concurrent/atomic/AtomicInteger;I)Ljava/lang/Object;
    .locals 46
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    move/from16 v0, p2

    move-object/from16 v1, p26

    move-object/from16 v2, p33

    move-object/from16 v3, p34

    move/from16 v14, p1

    :goto_0
    if-ge v14, v0, :cond_1

    add-int/lit16 v15, v14, 0x100

    invoke-static {v0, v15}, Ljava/lang/Math;->min(II)I

    move-result v43

    move/from16 v34, v43

    move-object/from16 v12, p19

    iget v4, v12, Lorg/ITsMagic/Atlas/AmbientOcclusionRasterizer$g;->i:I

    move/from16 v20, v4

    iget-object v4, v1, Lorg/ITsMagic/Atlas/AmbientOcclusionRasterizer$e;->b:[J

    move-object/from16 v27, v4

    iget v4, v1, Lorg/ITsMagic/Atlas/AmbientOcclusionRasterizer$e;->a:F

    move/from16 v28, v4

    move-object/from16 v13, p28

    iget v4, v13, Lorg/ITsMagic/Atlas/AmbientOcclusionRasterizer$b;->a:I

    move/from16 v30, v4

    invoke-virtual/range {p30 .. p30}, LBb/b;->p()I

    move-result v32

    iget-object v4, v2, Lorg/ITsMagic/Atlas/AmbientOcclusionRasterizer$d;->a:[J

    move-object/from16 v37, v4

    iget-object v4, v2, Lorg/ITsMagic/Atlas/AmbientOcclusionRasterizer$d;->b:[J

    move-object/from16 v38, v4

    iget-object v4, v2, Lorg/ITsMagic/Atlas/AmbientOcclusionRasterizer$d;->c:[J

    move-object/from16 v39, v4

    iget-object v4, v2, Lorg/ITsMagic/Atlas/AmbientOcclusionRasterizer$d;->d:[J

    move-object/from16 v40, v4

    iget-object v4, v2, Lorg/ITsMagic/Atlas/AmbientOcclusionRasterizer$d;->e:[J

    move-object/from16 v41, v4

    iget-object v4, v2, Lorg/ITsMagic/Atlas/AmbientOcclusionRasterizer$d;->f:[I

    move-object/from16 v42, v4

    move-wide/from16 v4, p3

    move-wide/from16 v6, p5

    move-wide/from16 v8, p7

    move-wide/from16 v10, p9

    move-wide/from16 v12, p11

    move/from16 v44, v14

    move/from16 v45, v15

    move-wide/from16 v14, p13

    move-wide/from16 v16, p15

    move-wide/from16 v18, p17

    move-wide/from16 v21, p20

    move-wide/from16 v23, p22

    move-wide/from16 v25, p24

    move/from16 v29, p27

    move/from16 v31, p29

    move/from16 v33, v44

    move-wide/from16 v35, p31

    invoke-static/range {v4 .. v42}, Lorg/ITsMagic/Atlas/AmbientOcclusionRasterizer;->nativeRasterizeRange(JJJJJJJJIJJJ[JFFIFIIIJ[J[J[J[J[J[I)V

    if-eqz v3, :cond_0

    sub-int v4, v43, v44

    move-object/from16 v5, p35

    invoke-virtual {v5, v4}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    move-result v4

    move-object/from16 v6, p0

    move/from16 v7, p36

    invoke-virtual {v6, v4, v7, v3}, Lorg/ITsMagic/Atlas/AmbientOcclusionRasterizer;->n(IILorg/ITsMagic/Atlas/a$c;)V

    goto :goto_1

    :cond_0
    move-object/from16 v6, p0

    move-object/from16 v5, p35

    move/from16 v7, p36

    :goto_1
    move/from16 v14, v45

    goto :goto_0

    :cond_1
    move-object/from16 v6, p0

    const/4 v0, 0x0

    return-object v0
.end method

.method public final synthetic j(IILorg/ITsMagic/Atlas/AmbientOcclusionRasterizer$g;Lorg/ITsMagic/Atlas/AmbientOcclusionRasterizer$f;FFLorg/ITsMagic/Atlas/AmbientOcclusionRasterizer$b;LBb/b;Lorg/ITsMagic/Atlas/a$c;Ljava/util/concurrent/atomic/AtomicInteger;I)Ljava/lang/Object;
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    move-object/from16 v9, p0

    move-object/from16 v10, p9

    move-object/from16 v11, p10

    move/from16 v12, p11

    new-instance v13, Lorg/ITsMagic/Atlas/AmbientOcclusionRasterizer$h;

    const/4 v14, 0x0

    invoke-direct {v13, v14}, Lorg/ITsMagic/Atlas/AmbientOcclusionRasterizer$h;-><init>(Lorg/ITsMagic/Atlas/AmbientOcclusionRasterizer$a;)V

    move/from16 v8, p1

    move/from16 v7, p2

    const/4 v6, 0x0

    :goto_0
    if-ge v8, v7, :cond_1

    move-object/from16 v0, p0

    move v1, v8

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    move/from16 v4, p5

    move/from16 v5, p6

    move v15, v6

    move-object/from16 v6, p7

    move-object/from16 v7, p8

    move/from16 v16, v8

    move-object v8, v13

    invoke-virtual/range {v0 .. v8}, Lorg/ITsMagic/Atlas/AmbientOcclusionRasterizer;->c(ILorg/ITsMagic/Atlas/AmbientOcclusionRasterizer$g;Lorg/ITsMagic/Atlas/AmbientOcclusionRasterizer$f;FFLorg/ITsMagic/Atlas/AmbientOcclusionRasterizer$b;LBb/b;Lorg/ITsMagic/Atlas/AmbientOcclusionRasterizer$h;)V

    add-int/lit8 v6, v15, 0x1

    if-eqz v10, :cond_0

    const/16 v0, 0x20

    if-lt v6, v0, :cond_0

    invoke-virtual {v11, v6}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    move-result v0

    invoke-virtual {v9, v0, v12, v10}, Lorg/ITsMagic/Atlas/AmbientOcclusionRasterizer;->n(IILorg/ITsMagic/Atlas/a$c;)V

    const/4 v6, 0x0

    :cond_0
    add-int/lit8 v8, v16, 0x1

    move/from16 v7, p2

    goto :goto_0

    :cond_1
    move v15, v6

    if-eqz v10, :cond_2

    if-lez v15, :cond_2

    invoke-virtual {v11, v15}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    move-result v0

    invoke-virtual {v9, v0, v12, v10}, Lorg/ITsMagic/Atlas/AmbientOcclusionRasterizer;->n(IILorg/ITsMagic/Atlas/a$c;)V

    :cond_2
    return-object v14
.end method

.method public k(Lub/p;Ljava/util/List;FFLcom/itsmagic/engine/Activities/Editor/Extensions/Area/AreaEditorComponent$q;Lorg/ITsMagic/Atlas/a$c;)V
    .locals 19
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "aoTexture",
            "bakeDataList",
            "radius",
            "power",
            "quality",
            "listener"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lub/p;",
            "Ljava/util/List<",
            "LUg/h;",
            ">;FF",
            "Lcom/itsmagic/engine/Activities/Editor/Extensions/Area/AreaEditorComponent$q;",
            "Lorg/ITsMagic/Atlas/a$c;",
            ")V"
        }
    .end annotation

    move-object/from16 v11, p0

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v12, p6

    if-eqz v0, :cond_4

    if-eqz v1, :cond_4

    const/4 v2, 0x0

    cmpg-float v3, p3, v2

    if-gtz v3, :cond_0

    goto/16 :goto_6

    :cond_0
    invoke-static/range {p5 .. p5}, Lorg/ITsMagic/Atlas/AmbientOcclusionRasterizer$b;->a(Lcom/itsmagic/engine/Activities/Editor/Extensions/Area/AreaEditorComponent$q;)Lorg/ITsMagic/Atlas/AmbientOcclusionRasterizer$b;

    move-result-object v13

    const/high16 v3, 0x42480000    # 50.0f

    invoke-static {v0, v3}, LBb/b;->d(Lub/p;F)LBb/b;

    move-result-object v14

    :try_start_0
    invoke-virtual {v14, v2, v2, v2, v2}, LBb/b;->f(FFFF)V

    invoke-virtual {v11, v14, v1}, Lorg/ITsMagic/Atlas/AmbientOcclusionRasterizer;->e(LBb/b;Ljava/util/List;)Lorg/ITsMagic/Atlas/AmbientOcclusionRasterizer$g;

    move-result-object v15
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget v0, v15, Lorg/ITsMagic/Atlas/AmbientOcclusionRasterizer$g;->i:I

    const/4 v1, 0x0

    if-gtz v0, :cond_2

    if-eqz v12, :cond_1

    const-string v0, ""

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-interface {v12, v1, v1, v2, v0}, Lorg/ITsMagic/Atlas/a$c;->a(IIFLjava/lang/String;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    goto/16 :goto_4

    :cond_1
    :goto_0
    invoke-virtual {v14}, LBb/b;->c()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {v15}, Lorg/ITsMagic/Atlas/AmbientOcclusionRasterizer$g;->a()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    invoke-virtual {v14}, LBb/b;->e()V

    return-void

    :catchall_1
    move-exception v0

    goto/16 :goto_5

    :cond_2
    :try_start_3
    new-instance v10, Lorg/ITsMagic/Atlas/AmbientOcclusionRasterizer$f;

    const/high16 v0, 0x3f000000    # 0.5f

    mul-float v2, p3, v0

    invoke-static {v2, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    invoke-direct {v10, v0}, Lorg/ITsMagic/Atlas/AmbientOcclusionRasterizer$f;-><init>(F)V

    :goto_1
    iget v0, v15, Lorg/ITsMagic/Atlas/AmbientOcclusionRasterizer$g;->i:I

    if-ge v1, v0, :cond_3

    invoke-virtual {v10, v15, v1}, Lorg/ITsMagic/Atlas/AmbientOcclusionRasterizer$f;->c(Lorg/ITsMagic/Atlas/AmbientOcclusionRasterizer$g;I)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    :try_start_4
    invoke-static {v10}, Lorg/ITsMagic/Atlas/AmbientOcclusionRasterizer$e;->b(Lorg/ITsMagic/Atlas/AmbientOcclusionRasterizer$f;)Lorg/ITsMagic/Atlas/AmbientOcclusionRasterizer$e;

    move-result-object v16
    :try_end_4
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    iget-object v0, v11, Lorg/ITsMagic/Atlas/AmbientOcclusionRasterizer;->a:Ljava/util/List;

    invoke-static {v0}, Lorg/ITsMagic/Atlas/AmbientOcclusionRasterizer$d;->a(Ljava/util/List;)Lorg/ITsMagic/Atlas/AmbientOcclusionRasterizer$d;

    move-result-object v4

    new-instance v9, Lorg/ITsMagic/Atlas/AmbientOcclusionRasterizer$c;

    invoke-virtual {v14}, LBb/b;->p()I

    move-result v0

    invoke-virtual {v14}, LBb/b;->l()I

    move-result v1

    mul-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x4

    const/4 v1, 0x1

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-direct {v9, v0}, Lorg/ITsMagic/Atlas/AmbientOcclusionRasterizer$c;-><init>(I)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    move-object/from16 v1, p0

    move-object v2, v15

    move-object/from16 v3, v16

    move/from16 v5, p3

    move/from16 v6, p4

    move-object v7, v13

    move-object v8, v14

    move-object/from16 v17, v9

    move-object/from16 v18, v10

    move-object/from16 v10, p6

    :try_start_6
    invoke-virtual/range {v1 .. v10}, Lorg/ITsMagic/Atlas/AmbientOcclusionRasterizer;->l(Lorg/ITsMagic/Atlas/AmbientOcclusionRasterizer$g;Lorg/ITsMagic/Atlas/AmbientOcclusionRasterizer$e;Lorg/ITsMagic/Atlas/AmbientOcclusionRasterizer$d;FFLorg/ITsMagic/Atlas/AmbientOcclusionRasterizer$b;LBb/b;Lorg/ITsMagic/Atlas/AmbientOcclusionRasterizer$c;Lorg/ITsMagic/Atlas/a$c;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    :try_start_7
    invoke-virtual/range {v17 .. v17}, Lorg/ITsMagic/Atlas/AmbientOcclusionRasterizer$c;->a()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    :try_start_8
    invoke-virtual/range {v16 .. v16}, Lorg/ITsMagic/Atlas/AmbientOcclusionRasterizer$e;->a()V
    :try_end_8
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_8 .. :try_end_8} :catch_1
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto :goto_3

    :catchall_2
    move-exception v0

    goto :goto_2

    :catchall_3
    move-exception v0

    move-object v1, v0

    :try_start_9
    invoke-virtual/range {v17 .. v17}, Lorg/ITsMagic/Atlas/AmbientOcclusionRasterizer$c;->a()V

    throw v1
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    :catchall_4
    move-exception v0

    move-object/from16 v18, v10

    :goto_2
    :try_start_a
    invoke-virtual/range {v16 .. v16}, Lorg/ITsMagic/Atlas/AmbientOcclusionRasterizer$e;->a()V

    throw v0
    :try_end_a
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_a .. :try_end_a} :catch_1
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    :catch_0
    move-object/from16 v18, v10

    :catch_1
    move-object/from16 v1, p0

    move-object v2, v15

    move-object/from16 v3, v18

    move/from16 v4, p3

    move/from16 v5, p4

    move-object v6, v13

    move-object v7, v14

    move-object/from16 v8, p6

    :try_start_b
    invoke-virtual/range {v1 .. v8}, Lorg/ITsMagic/Atlas/AmbientOcclusionRasterizer;->m(Lorg/ITsMagic/Atlas/AmbientOcclusionRasterizer$g;Lorg/ITsMagic/Atlas/AmbientOcclusionRasterizer$f;FFLorg/ITsMagic/Atlas/AmbientOcclusionRasterizer$b;LBb/b;Lorg/ITsMagic/Atlas/a$c;)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    :goto_3
    :try_start_c
    invoke-virtual {v15}, Lorg/ITsMagic/Atlas/AmbientOcclusionRasterizer$g;->a()V

    invoke-virtual {v14}, LBb/b;->c()V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    invoke-virtual {v14}, LBb/b;->e()V

    return-void

    :goto_4
    :try_start_d
    invoke-virtual {v15}, Lorg/ITsMagic/Atlas/AmbientOcclusionRasterizer$g;->a()V

    throw v0
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    :goto_5
    invoke-virtual {v14}, LBb/b;->e()V

    throw v0

    :cond_4
    :goto_6
    return-void
.end method

.method public final l(Lorg/ITsMagic/Atlas/AmbientOcclusionRasterizer$g;Lorg/ITsMagic/Atlas/AmbientOcclusionRasterizer$e;Lorg/ITsMagic/Atlas/AmbientOcclusionRasterizer$d;FFLorg/ITsMagic/Atlas/AmbientOcclusionRasterizer$b;LBb/b;Lorg/ITsMagic/Atlas/AmbientOcclusionRasterizer$c;Lorg/ITsMagic/Atlas/a$c;)V
    .locals 68
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
            0x0
        }
        names = {
            "surfels",
            "hash",
            "meshData",
            "radius",
            "power",
            "config",
            "ao",
            "outputPixels",
            "listener"
        }
    .end annotation

    move-object/from16 v14, p0

    move-object/from16 v15, p1

    move-object/from16 v12, p2

    move-object/from16 v13, p8

    move-object/from16 v10, p9

    iget v11, v15, Lorg/ITsMagic/Atlas/AmbientOcclusionRasterizer$g;->i:I

    const-string v0, ""

    const/4 v1, 0x0

    if-gtz v11, :cond_1

    if-eqz v10, :cond_0

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-interface {v10, v1, v1, v2, v0}, Lorg/ITsMagic/Atlas/a$c;->a(IIFLjava/lang/String;)V

    :cond_0
    return-void

    :cond_1
    iget-object v2, v13, Lorg/ITsMagic/Atlas/AmbientOcclusionRasterizer$c;->a:Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->fill(F)V

    invoke-static {}, LO9/b;->a()I

    move-result v2

    add-int/lit8 v2, v2, -0x2

    const/4 v4, 0x1

    invoke-static {v4, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-static {v2, v11}, Ljava/lang/Math;->min(II)I

    move-result v2

    int-to-double v5, v11

    int-to-double v7, v2

    div-double/2addr v5, v7

    invoke-static {v5, v6}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v5

    double-to-int v5, v5

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v38

    if-eqz v10, :cond_2

    invoke-interface {v10, v1, v11, v3, v0}, Lorg/ITsMagic/Atlas/a$c;->a(IIFLjava/lang/String;)V

    :cond_2
    iget-object v0, v15, Lorg/ITsMagic/Atlas/AmbientOcclusionRasterizer$g;->a:Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    const-wide/16 v3, 0x0

    invoke-static {v0, v3, v4}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->getCriticalDirectCppPointer(Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;J)J

    move-result-wide v39

    iget-object v0, v15, Lorg/ITsMagic/Atlas/AmbientOcclusionRasterizer$g;->b:Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    invoke-static {v0, v3, v4}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->getCriticalDirectCppPointer(Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;J)J

    move-result-wide v41

    iget-object v0, v15, Lorg/ITsMagic/Atlas/AmbientOcclusionRasterizer$g;->c:Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    invoke-static {v0, v3, v4}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->getCriticalDirectCppPointer(Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;J)J

    move-result-wide v43

    iget-object v0, v15, Lorg/ITsMagic/Atlas/AmbientOcclusionRasterizer$g;->d:Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    invoke-static {v0, v3, v4}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->getCriticalDirectCppPointer(Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;J)J

    move-result-wide v45

    iget-object v0, v15, Lorg/ITsMagic/Atlas/AmbientOcclusionRasterizer$g;->e:Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    invoke-static {v0, v3, v4}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->getCriticalDirectCppPointer(Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;J)J

    move-result-wide v47

    iget-object v0, v15, Lorg/ITsMagic/Atlas/AmbientOcclusionRasterizer$g;->f:Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    invoke-static {v0, v3, v4}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->getCriticalDirectCppPointer(Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;J)J

    move-result-wide v49

    iget-object v0, v15, Lorg/ITsMagic/Atlas/AmbientOcclusionRasterizer$g;->g:Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;

    invoke-static {v0, v3, v4}, Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;->getCriticalDirectCppPointer(Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;J)J

    move-result-wide v51

    iget-object v0, v15, Lorg/ITsMagic/Atlas/AmbientOcclusionRasterizer$g;->h:Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;

    invoke-static {v0, v3, v4}, Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;->getCriticalDirectCppPointer(Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;J)J

    move-result-wide v53

    iget-object v0, v12, Lorg/ITsMagic/Atlas/AmbientOcclusionRasterizer$e;->c:Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;

    invoke-static {v0, v3, v4}, Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;->getCriticalDirectCppPointer(Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;J)J

    move-result-wide v55

    iget-object v0, v12, Lorg/ITsMagic/Atlas/AmbientOcclusionRasterizer$e;->d:Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;

    invoke-static {v0, v3, v4}, Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;->getCriticalDirectCppPointer(Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;J)J

    move-result-wide v57

    iget-object v0, v12, Lorg/ITsMagic/Atlas/AmbientOcclusionRasterizer$e;->e:Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;

    invoke-static {v0, v3, v4}, Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;->getCriticalDirectCppPointer(Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;J)J

    move-result-wide v59

    iget-object v0, v13, Lorg/ITsMagic/Atlas/AmbientOcclusionRasterizer$c;->a:Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    invoke-static {v0, v3, v4}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->getCriticalDirectCppPointer(Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;J)J

    move-result-wide v61

    new-instance v63, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct/range {v63 .. v63}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8, v2}, Ljava/util/ArrayList;-><init>(I)V

    move v2, v1

    :goto_0
    if-ge v2, v11, :cond_3

    add-int v9, v2, v38

    invoke-static {v11, v9}, Ljava/lang/Math;->min(II)I

    move-result v3

    new-instance v64, LUg/e;

    move-object/from16 v0, v64

    move-object/from16 v1, p0

    move-wide/from16 v4, v39

    move-wide/from16 v6, v41

    move-object/from16 v65, v8

    move/from16 v66, v9

    move-wide/from16 v8, v43

    move/from16 v67, v11

    move-wide/from16 v10, v45

    move-wide/from16 v12, v47

    move-wide/from16 v14, v49

    move-wide/from16 v16, v51

    move-wide/from16 v18, v53

    move-object/from16 v20, p1

    move-wide/from16 v21, v55

    move-wide/from16 v23, v57

    move-wide/from16 v25, v59

    move-object/from16 v27, p2

    move/from16 v28, p4

    move-object/from16 v29, p6

    move/from16 v30, p5

    move-object/from16 v31, p7

    move-wide/from16 v32, v61

    move-object/from16 v34, p3

    move-object/from16 v35, p9

    move-object/from16 v36, v63

    move/from16 v37, v67

    invoke-direct/range {v0 .. v37}, LUg/e;-><init>(Lorg/ITsMagic/Atlas/AmbientOcclusionRasterizer;IIJJJJJJJJLorg/ITsMagic/Atlas/AmbientOcclusionRasterizer$g;JJJLorg/ITsMagic/Atlas/AmbientOcclusionRasterizer$e;FLorg/ITsMagic/Atlas/AmbientOcclusionRasterizer$b;FLBb/b;JLorg/ITsMagic/Atlas/AmbientOcclusionRasterizer$d;Lorg/ITsMagic/Atlas/a$c;Ljava/util/concurrent/atomic/AtomicInteger;I)V

    invoke-static/range {v64 .. v64}, LO9/b;->c(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    move-object/from16 v1, v65

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object/from16 v14, p0

    move-object/from16 v15, p1

    move-object/from16 v12, p2

    move-object/from16 v13, p8

    move-object/from16 v10, p9

    move-object v8, v1

    move/from16 v2, v66

    move/from16 v11, v67

    goto :goto_0

    :cond_3
    move-object v1, v8

    move/from16 v67, v11

    const-string v0, "native AO"

    move-object/from16 v2, p0

    invoke-virtual {v2, v1, v0}, Lorg/ITsMagic/Atlas/AmbientOcclusionRasterizer;->p(Ljava/util/List;Ljava/lang/String;)V

    move-object/from16 v0, p7

    move-object/from16 v1, p8

    invoke-virtual {v2, v0, v1}, Lorg/ITsMagic/Atlas/AmbientOcclusionRasterizer;->d(LBb/b;Lorg/ITsMagic/Atlas/AmbientOcclusionRasterizer$c;)V

    move-object/from16 v0, p9

    if-eqz v0, :cond_4

    move/from16 v1, v67

    invoke-virtual {v2, v1, v1, v0}, Lorg/ITsMagic/Atlas/AmbientOcclusionRasterizer;->n(IILorg/ITsMagic/Atlas/a$c;)V

    :cond_4
    return-void
.end method

.method public final m(Lorg/ITsMagic/Atlas/AmbientOcclusionRasterizer$g;Lorg/ITsMagic/Atlas/AmbientOcclusionRasterizer$f;FFLorg/ITsMagic/Atlas/AmbientOcclusionRasterizer$b;LBb/b;Lorg/ITsMagic/Atlas/a$c;)V
    .locals 21
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
            "hash",
            "radius",
            "power",
            "config",
            "ao",
            "listener"
        }
    .end annotation

    move-object/from16 v13, p0

    move-object/from16 v14, p1

    move-object/from16 v15, p7

    iget v12, v14, Lorg/ITsMagic/Atlas/AmbientOcclusionRasterizer$g;->i:I

    const-string v0, ""

    const/4 v1, 0x0

    if-gtz v12, :cond_1

    if-eqz v15, :cond_0

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-interface {v15, v1, v1, v2, v0}, Lorg/ITsMagic/Atlas/a$c;->a(IIFLjava/lang/String;)V

    :cond_0
    return-void

    :cond_1
    invoke-static {}, LO9/b;->a()I

    move-result v2

    add-int/lit8 v2, v2, -0x2

    const/4 v3, 0x1

    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-static {v2, v12}, Ljava/lang/Math;->min(II)I

    move-result v2

    int-to-double v4, v12

    int-to-double v6, v2

    div-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-int v4, v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v16

    if-eqz v15, :cond_2

    const/4 v3, 0x0

    invoke-interface {v15, v1, v12, v3, v0}, Lorg/ITsMagic/Atlas/a$c;->a(IIFLjava/lang/String;)V

    :cond_2
    new-instance v17, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct/range {v17 .. v17}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11, v2}, Ljava/util/ArrayList;-><init>(I)V

    move v2, v1

    :goto_0
    if-ge v2, v12, :cond_3

    add-int v10, v2, v16

    invoke-static {v12, v10}, Ljava/lang/Math;->min(II)I

    move-result v3

    new-instance v18, LUg/d;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    move/from16 v6, p3

    move/from16 v7, p4

    move-object/from16 v8, p5

    move-object/from16 v9, p6

    move/from16 v19, v10

    move-object/from16 v10, p7

    move-object v14, v11

    move-object/from16 v11, v17

    move/from16 v20, v12

    invoke-direct/range {v0 .. v12}, LUg/d;-><init>(Lorg/ITsMagic/Atlas/AmbientOcclusionRasterizer;IILorg/ITsMagic/Atlas/AmbientOcclusionRasterizer$g;Lorg/ITsMagic/Atlas/AmbientOcclusionRasterizer$f;FFLorg/ITsMagic/Atlas/AmbientOcclusionRasterizer$b;LBb/b;Lorg/ITsMagic/Atlas/a$c;Ljava/util/concurrent/atomic/AtomicInteger;I)V

    invoke-static/range {v18 .. v18}, LO9/b;->c(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    invoke-interface {v14, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object v11, v14

    move/from16 v2, v19

    move-object/from16 v14, p1

    goto :goto_0

    :cond_3
    move-object v14, v11

    move/from16 v20, v12

    const-string v0, "AO"

    invoke-virtual {v13, v14, v0}, Lorg/ITsMagic/Atlas/AmbientOcclusionRasterizer;->p(Ljava/util/List;Ljava/lang/String;)V

    if-eqz v15, :cond_4

    move/from16 v0, v20

    invoke-virtual {v13, v0, v0, v15}, Lorg/ITsMagic/Atlas/AmbientOcclusionRasterizer;->n(IILorg/ITsMagic/Atlas/a$c;)V

    :cond_4
    return-void
.end method

.method public final n(IILorg/ITsMagic/Atlas/a$c;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "executed",
            "total",
            "listener"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-static {v0, p1, p2}, LNc/b;->F(III)I

    move-result p1

    if-lez p2, :cond_0

    int-to-float v0, p1

    int-to-float v1, p2

    div-float/2addr v0, v1

    goto :goto_0

    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    :goto_0
    const-string v1, ""

    invoke-interface {p3, p1, p2, v0, v1}, Lorg/ITsMagic/Atlas/a$c;->a(IIFLjava/lang/String;)V

    return-void
.end method

.method public final o(IIFFFFFFLorg/ITsMagic/Atlas/AmbientOcclusionRasterizer$g;FFLorg/ITsMagic/Atlas/AmbientOcclusionRasterizer$h;)F
    .locals 10
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
            0x0
        }
        names = {
            "receiverIndex",
            "occluderIndex",
            "receiverPosX",
            "receiverPosY",
            "receiverPosZ",
            "receiverNormalX",
            "receiverNormalY",
            "receiverNormalZ",
            "surfels",
            "radius",
            "radiusSq",
            "scratch"
        }
    .end annotation

    move-object v0, p0

    move v1, p2

    move-object/from16 v2, p9

    move-object/from16 v3, p12

    const/4 v4, 0x0

    move v5, p1

    if-ne v1, v5, :cond_0

    return v4

    :cond_0
    iget-object v5, v2, Lorg/ITsMagic/Atlas/AmbientOcclusionRasterizer$g;->a:Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    invoke-virtual {v5, p2}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->get(I)F

    move-result v5

    iget-object v6, v2, Lorg/ITsMagic/Atlas/AmbientOcclusionRasterizer$g;->b:Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    invoke-virtual {v6, p2}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->get(I)F

    move-result v6

    iget-object v7, v2, Lorg/ITsMagic/Atlas/AmbientOcclusionRasterizer$g;->c:Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    invoke-virtual {v7, p2}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->get(I)F

    move-result v7

    iget-object v8, v3, Lorg/ITsMagic/Atlas/AmbientOcclusionRasterizer$h;->b:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    sub-float/2addr v5, p3

    sub-float/2addr v6, p4

    sub-float/2addr v7, p5

    invoke-virtual {v8, v5, v6, v7}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->set(FFF)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    iget-object v5, v3, Lorg/ITsMagic/Atlas/AmbientOcclusionRasterizer$h;->b:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v5}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->lengthSquared()F

    move-result v5

    const v6, 0x322bcc77    # 1.0E-8f

    cmpg-float v6, v5, v6

    if-lez v6, :cond_6

    cmpl-float v6, v5, p11

    if-lez v6, :cond_1

    goto/16 :goto_0

    :cond_1
    float-to-double v5, v5

    invoke-static {v5, v6}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v5

    double-to-float v5, v5

    iget-object v6, v3, Lorg/ITsMagic/Atlas/AmbientOcclusionRasterizer$h;->b:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v6, v5}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->divLocal(F)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    iget-object v6, v3, Lorg/ITsMagic/Atlas/AmbientOcclusionRasterizer$h;->b:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v6}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getX()F

    move-result v6

    mul-float v6, v6, p6

    iget-object v7, v3, Lorg/ITsMagic/Atlas/AmbientOcclusionRasterizer$h;->b:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v7}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getY()F

    move-result v7

    mul-float v7, v7, p7

    add-float/2addr v6, v7

    iget-object v7, v3, Lorg/ITsMagic/Atlas/AmbientOcclusionRasterizer$h;->b:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v7}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getZ()F

    move-result v7

    mul-float v7, v7, p8

    add-float/2addr v6, v7

    invoke-virtual {p0, v6}, Lorg/ITsMagic/Atlas/AmbientOcclusionRasterizer;->f(F)F

    move-result v6

    cmpg-float v7, v6, v4

    if-gtz v7, :cond_2

    return v4

    :cond_2
    iget-object v7, v2, Lorg/ITsMagic/Atlas/AmbientOcclusionRasterizer$g;->d:Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    invoke-virtual {v7, p2}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->get(I)F

    move-result v7

    iget-object v8, v3, Lorg/ITsMagic/Atlas/AmbientOcclusionRasterizer$h;->b:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v8}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getX()F

    move-result v8

    neg-float v8, v8

    mul-float/2addr v7, v8

    iget-object v8, v2, Lorg/ITsMagic/Atlas/AmbientOcclusionRasterizer$g;->e:Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    invoke-virtual {v8, p2}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->get(I)F

    move-result v8

    iget-object v9, v3, Lorg/ITsMagic/Atlas/AmbientOcclusionRasterizer$h;->b:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v9}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getY()F

    move-result v9

    neg-float v9, v9

    mul-float/2addr v8, v9

    add-float/2addr v7, v8

    iget-object v2, v2, Lorg/ITsMagic/Atlas/AmbientOcclusionRasterizer$g;->f:Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    invoke-virtual {v2, p2}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->get(I)F

    move-result v1

    iget-object v2, v3, Lorg/ITsMagic/Atlas/AmbientOcclusionRasterizer$h;->b:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v2}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getZ()F

    move-result v2

    neg-float v2, v2

    mul-float/2addr v1, v2

    add-float/2addr v7, v1

    invoke-virtual {p0, v7}, Lorg/ITsMagic/Atlas/AmbientOcclusionRasterizer;->f(F)F

    move-result v1

    cmpg-float v2, v1, v4

    if-gtz v2, :cond_3

    return v4

    :cond_3
    iget-object v2, v3, Lorg/ITsMagic/Atlas/AmbientOcclusionRasterizer$h;->c:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    iget-object v7, v3, Lorg/ITsMagic/Atlas/AmbientOcclusionRasterizer$h;->d:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    iget-object v8, v3, Lorg/ITsMagic/Atlas/AmbientOcclusionRasterizer$h;->b:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    move-object p1, p0

    move-object p2, v2

    move-object p3, v7

    move-object p4, v8

    move p5, v5

    move-object/from16 p6, p12

    invoke-virtual/range {p1 .. p6}, Lorg/ITsMagic/Atlas/AmbientOcclusionRasterizer;->h(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;FLorg/ITsMagic/Atlas/AmbientOcclusionRasterizer$h;)Z

    move-result v2

    if-eqz v2, :cond_4

    return v4

    :cond_4
    const v2, 0x3c23d70a    # 0.01f

    move/from16 v3, p10

    invoke-static {v3, v2}, Ljava/lang/Math;->max(FF)F

    move-result v2

    div-float/2addr v5, v2

    invoke-virtual {p0, v5}, Lorg/ITsMagic/Atlas/AmbientOcclusionRasterizer;->f(F)F

    move-result v2

    const/high16 v3, 0x3f800000    # 1.0f

    sub-float/2addr v3, v2

    cmpg-float v2, v3, v4

    if-gtz v2, :cond_5

    return v4

    :cond_5
    const/high16 v2, 0x3f400000    # 0.75f

    mul-float/2addr v1, v2

    const/high16 v2, 0x3e800000    # 0.25f

    add-float/2addr v1, v2

    mul-float/2addr v6, v1

    mul-float/2addr v6, v3

    return v6

    :cond_6
    :goto_0
    return v4
.end method

.method public final p(Ljava/util/List;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "futures",
            "label"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/util/concurrent/Future<",
            "*>;>;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    const/4 v0, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    :try_start_0
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/concurrent/Future;

    invoke-interface {v1}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catch_0
    move-exception p1

    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to rasterize "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " chunk"

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {v0, p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :cond_0
    return-void
.end method

.method public final q(IIILcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;Lorg/ITsMagic/Atlas/AmbientOcclusionRasterizer$g;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;FFFFFFFFFFFFFFFFFFFFFFFF)V
    .locals 10
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
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "px",
            "py",
            "aoWidth",
            "surfelGrid",
            "surfels",
            "worldPosition",
            "worldNormal",
            "v0x",
            "v0y",
            "v0z",
            "v1x",
            "v1y",
            "v1z",
            "v2x",
            "v2y",
            "v2z",
            "n0x",
            "n0y",
            "n0z",
            "n1x",
            "n1y",
            "n1z",
            "n2x",
            "n2y",
            "n2z",
            "fnx",
            "fny",
            "fnz",
            "w0",
            "w1",
            "w2"
        }
    .end annotation

    move v0, p1

    move v1, p2

    move-object v2, p4

    move-object v3, p5

    move-object/from16 v4, p7

    mul-float v5, p8, p29

    mul-float v6, p11, p30

    add-float/2addr v5, v6

    mul-float v6, p14, p31

    add-float/2addr v5, v6

    mul-float v6, p9, p29

    mul-float v7, p12, p30

    add-float/2addr v6, v7

    mul-float v7, p15, p31

    add-float/2addr v6, v7

    mul-float v7, p10, p29

    mul-float v8, p13, p30

    add-float/2addr v7, v8

    mul-float v8, p16, p31

    add-float/2addr v7, v8

    move-object/from16 v8, p6

    invoke-virtual {v8, v5, v6, v7}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->set(FFF)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    mul-float v5, p17, p29

    mul-float v6, p20, p30

    add-float/2addr v5, v6

    mul-float v6, p23, p31

    add-float/2addr v5, v6

    mul-float v6, p18, p29

    mul-float v7, p21, p30

    add-float/2addr v6, v7

    mul-float v7, p24, p31

    add-float/2addr v6, v7

    mul-float v7, p19, p29

    mul-float v9, p22, p30

    add-float/2addr v7, v9

    mul-float v9, p25, p31

    add-float/2addr v7, v9

    invoke-virtual {v4, v5, v6, v7}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->set(FFF)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual/range {p7 .. p7}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->lengthSquared()F

    move-result v5

    const v6, 0x322bcc77    # 1.0E-8f

    cmpg-float v5, v5, v6

    if-gtz v5, :cond_0

    move/from16 v5, p26

    move/from16 v6, p27

    move/from16 v7, p28

    invoke-virtual {v4, v5, v6, v7}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->set(FFF)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    goto :goto_0

    :cond_0
    invoke-virtual/range {p7 .. p7}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->normalizeLocal()Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    :goto_0
    mul-int v5, v1, p3

    add-int/2addr v5, v0

    invoke-virtual {p4, v5}, Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;->get(I)I

    move-result v6

    if-gez v6, :cond_1

    iget v6, v3, Lorg/ITsMagic/Atlas/AmbientOcclusionRasterizer$g;->i:I

    invoke-virtual {p4, v5, v6}, Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;->set(II)V

    iget v2, v3, Lorg/ITsMagic/Atlas/AmbientOcclusionRasterizer$g;->i:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v3, Lorg/ITsMagic/Atlas/AmbientOcclusionRasterizer$g;->i:I

    :cond_1
    iget-object v2, v3, Lorg/ITsMagic/Atlas/AmbientOcclusionRasterizer$g;->g:Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;

    invoke-virtual {v2, v6, p1}, Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;->set(II)V

    iget-object v0, v3, Lorg/ITsMagic/Atlas/AmbientOcclusionRasterizer$g;->h:Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;

    invoke-virtual {v0, v6, p2}, Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;->set(II)V

    iget-object v0, v3, Lorg/ITsMagic/Atlas/AmbientOcclusionRasterizer$g;->a:Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    invoke-virtual/range {p6 .. p6}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getX()F

    move-result v1

    invoke-virtual {v0, v6, v1}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->set(IF)V

    iget-object v0, v3, Lorg/ITsMagic/Atlas/AmbientOcclusionRasterizer$g;->b:Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    invoke-virtual/range {p6 .. p6}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getY()F

    move-result v1

    invoke-virtual {v0, v6, v1}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->set(IF)V

    iget-object v0, v3, Lorg/ITsMagic/Atlas/AmbientOcclusionRasterizer$g;->c:Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    invoke-virtual/range {p6 .. p6}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getZ()F

    move-result v1

    invoke-virtual {v0, v6, v1}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->set(IF)V

    iget-object v0, v3, Lorg/ITsMagic/Atlas/AmbientOcclusionRasterizer$g;->d:Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    invoke-virtual/range {p7 .. p7}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getX()F

    move-result v1

    invoke-virtual {v0, v6, v1}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->set(IF)V

    iget-object v0, v3, Lorg/ITsMagic/Atlas/AmbientOcclusionRasterizer$g;->e:Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    invoke-virtual/range {p7 .. p7}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getY()F

    move-result v1

    invoke-virtual {v0, v6, v1}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->set(IF)V

    iget-object v0, v3, Lorg/ITsMagic/Atlas/AmbientOcclusionRasterizer$g;->f:Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    invoke-virtual/range {p7 .. p7}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getZ()F

    move-result v1

    invoke-virtual {v0, v6, v1}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->set(IF)V

    return-void
.end method
