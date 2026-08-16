.class public Lorg/ITsMagic/Atlas/BounceGIRasterizer;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/ITsMagic/Atlas/BounceGIRasterizer$k;,
        Lorg/ITsMagic/Atlas/BounceGIRasterizer$j;,
        Lorg/ITsMagic/Atlas/BounceGIRasterizer$d;,
        Lorg/ITsMagic/Atlas/BounceGIRasterizer$l;,
        Lorg/ITsMagic/Atlas/BounceGIRasterizer$e;,
        Lorg/ITsMagic/Atlas/BounceGIRasterizer$f;,
        Lorg/ITsMagic/Atlas/BounceGIRasterizer$i;,
        Lorg/ITsMagic/Atlas/BounceGIRasterizer$h;,
        Lorg/ITsMagic/Atlas/BounceGIRasterizer$g;,
        Lorg/ITsMagic/Atlas/BounceGIRasterizer$c;
    }
.end annotation


# static fields
.field public static final c:I = 0x20

.field public static final d:I = 0x100

.field public static final e:F = 1.0E-5f

.field public static final f:F = 1.0E-8f

.field public static final g:Z = true

.field public static final h:F = 0.01f

.field public static final i:F = 0.05f

.field public static final j:F = 0.05f

.field public static final k:F = 0.35f

.field public static final l:F = 0.25f


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

.field public final b:LBb/b;


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

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/ITsMagic/Atlas/BounceGIRasterizer;->a:Ljava/util/List;

    iput-object p2, p0, Lorg/ITsMagic/Atlas/BounceGIRasterizer;->b:LBb/b;

    return-void
.end method

.method public static synthetic a(Ljava/lang/Runnable;)Ljava/lang/Object;
    .locals 0

    invoke-static {p0}, Lorg/ITsMagic/Atlas/BounceGIRasterizer;->s(Ljava/lang/Runnable;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic b(Lorg/ITsMagic/Atlas/BounceGIRasterizer;IIJJJJJJJJJJJLorg/ITsMagic/Atlas/BounceGIRasterizer$k;JJJLorg/ITsMagic/Atlas/BounceGIRasterizer$i;FLorg/ITsMagic/Atlas/BounceGIRasterizer$d;LBb/b;JZLorg/ITsMagic/Atlas/BounceGIRasterizer$h;Lorg/ITsMagic/Atlas/a$c;Ljava/util/concurrent/atomic/AtomicInteger;I)Ljava/lang/Object;
    .locals 1

    invoke-virtual/range {p0 .. p42}, Lorg/ITsMagic/Atlas/BounceGIRasterizer;->r(IIJJJJJJJJJJJLorg/ITsMagic/Atlas/BounceGIRasterizer$k;JJJLorg/ITsMagic/Atlas/BounceGIRasterizer$i;FLorg/ITsMagic/Atlas/BounceGIRasterizer$d;LBb/b;JZLorg/ITsMagic/Atlas/BounceGIRasterizer$h;Lorg/ITsMagic/Atlas/a$c;Ljava/util/concurrent/atomic/AtomicInteger;I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic c(Lorg/ITsMagic/Atlas/BounceGIRasterizer;ILorg/ITsMagic/Atlas/BounceGIRasterizer$k;Lorg/ITsMagic/Atlas/BounceGIRasterizer$j;FLorg/ITsMagic/Atlas/BounceGIRasterizer$d;ZLBb/b;Lorg/ITsMagic/Atlas/BounceGIRasterizer$l;)V
    .locals 0

    invoke-virtual/range {p0 .. p8}, Lorg/ITsMagic/Atlas/BounceGIRasterizer;->f(ILorg/ITsMagic/Atlas/BounceGIRasterizer$k;Lorg/ITsMagic/Atlas/BounceGIRasterizer$j;FLorg/ITsMagic/Atlas/BounceGIRasterizer$d;ZLBb/b;Lorg/ITsMagic/Atlas/BounceGIRasterizer$l;)V

    return-void
.end method

.method public static synthetic d(Lorg/ITsMagic/Atlas/BounceGIRasterizer;IILorg/ITsMagic/Atlas/a$c;)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lorg/ITsMagic/Atlas/BounceGIRasterizer;->x(IILorg/ITsMagic/Atlas/a$c;)V

    return-void
.end method

.method private static native nativeBuildEmitterIndices(JIFJ)I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "emitLumaPointer",
            "surfelCount",
            "emitterThreshold",
            "outputIndicesPointer"
        }
    .end annotation
.end method

.method private static native nativeComputeMaxBounceDistance(JJJIJIF)F
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
            "posXPointer",
            "posYPointer",
            "posZPointer",
            "surfelCount",
            "emitterIndicesPointer",
            "emitterCount",
            "radiusMultiplier"
        }
    .end annotation
.end method

.method private static native nativeRasterizeRange(JJJJJJJJJJJIJJJ[JFFIIIIJZ[J[J[J[J[J[I)V
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
            0x0
        }
        names = {
            "posXPointer",
            "posYPointer",
            "posZPointer",
            "normalXPointer",
            "normalYPointer",
            "normalZPointer",
            "emitRPointer",
            "emitGPointer",
            "emitBPointer",
            "pixelXPointer",
            "pixelYPointer",
            "surfelCount",
            "cellStartsPointer",
            "cellCountsPointer",
            "cellIndicesPointer",
            "cellKeys",
            "cellSize",
            "maxBounceDistance",
            "maxEmitterSamples",
            "giWidth",
            "rangeStart",
            "rangeEnd",
            "outputPixelsPointer",
            "useGiVisibility",
            "meshVerticesPointers",
            "meshTrianglesPointers",
            "meshNodeBoundsPointers",
            "meshNodeMetaPointers",
            "meshTriangleOrderPointers",
            "meshNodeCounts"
        }
    .end annotation
.end method

.method public static o(FFFFFF)F
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

.method public static synthetic s(Ljava/lang/Runnable;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public final e(IFFFFFFILorg/ITsMagic/Atlas/BounceGIRasterizer$k;FFZLorg/ITsMagic/Atlas/BounceGIRasterizer$l;)Z
    .locals 16
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
            0x0
        }
        names = {
            "receiverIndex",
            "receiverPosX",
            "receiverPosY",
            "receiverPosZ",
            "receiverNormalX",
            "receiverNormalY",
            "receiverNormalZ",
            "emitterIndex",
            "surfels",
            "maxBounceDistance",
            "maxDistanceSq",
            "useGiVisibility",
            "scratch"
        }
    .end annotation

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p8

    move-object/from16 v3, p9

    move-object/from16 v4, p13

    const/4 v5, 0x0

    if-ne v2, v1, :cond_0

    return v5

    :cond_0
    iget-object v6, v3, Lorg/ITsMagic/Atlas/BounceGIRasterizer$k;->g:Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    invoke-virtual {v6, v1}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->get(I)F

    move-result v6

    iget-object v7, v3, Lorg/ITsMagic/Atlas/BounceGIRasterizer$k;->h:Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    invoke-virtual {v7, v1}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->get(I)F

    move-result v7

    iget-object v8, v3, Lorg/ITsMagic/Atlas/BounceGIRasterizer$k;->i:Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    invoke-virtual {v8, v1}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->get(I)F

    move-result v1

    iget-object v8, v3, Lorg/ITsMagic/Atlas/BounceGIRasterizer$k;->g:Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    invoke-virtual {v8, v2}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->get(I)F

    move-result v8

    iget-object v9, v3, Lorg/ITsMagic/Atlas/BounceGIRasterizer$k;->h:Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    invoke-virtual {v9, v2}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->get(I)F

    move-result v9

    iget-object v10, v3, Lorg/ITsMagic/Atlas/BounceGIRasterizer$k;->i:Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    invoke-virtual {v10, v2}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->get(I)F

    move-result v10

    cmpl-float v6, v8, v6

    if-lez v6, :cond_1

    const/4 v6, 0x1

    goto :goto_0

    :cond_1
    move v6, v5

    :goto_0
    cmpl-float v7, v9, v7

    if-lez v7, :cond_2

    const/4 v7, 0x1

    goto :goto_1

    :cond_2
    move v7, v5

    :goto_1
    cmpl-float v1, v10, v1

    if-lez v1, :cond_3

    const/4 v1, 0x1

    goto :goto_2

    :cond_3
    move v1, v5

    :goto_2
    if-nez v6, :cond_4

    if-nez v7, :cond_4

    if-nez v1, :cond_4

    return v5

    :cond_4
    iget-object v12, v3, Lorg/ITsMagic/Atlas/BounceGIRasterizer$k;->a:Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    invoke-virtual {v12, v2}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->get(I)F

    move-result v12

    iget-object v13, v3, Lorg/ITsMagic/Atlas/BounceGIRasterizer$k;->b:Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    invoke-virtual {v13, v2}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->get(I)F

    move-result v13

    iget-object v14, v3, Lorg/ITsMagic/Atlas/BounceGIRasterizer$k;->c:Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    invoke-virtual {v14, v2}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->get(I)F

    move-result v14

    iget-object v15, v4, Lorg/ITsMagic/Atlas/BounceGIRasterizer$l;->b:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    sub-float v12, v12, p2

    sub-float v13, v13, p3

    sub-float v14, v14, p4

    invoke-virtual {v15, v12, v13, v14}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->set(FFF)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    iget-object v12, v4, Lorg/ITsMagic/Atlas/BounceGIRasterizer$l;->b:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v12}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->lengthSquared()F

    move-result v12

    const v13, 0x322bcc77    # 1.0E-8f

    cmpg-float v14, v12, v13

    if-lez v14, :cond_5

    cmpl-float v14, v12, p11

    if-lez v14, :cond_6

    :cond_5
    move v1, v5

    goto/16 :goto_5

    :cond_6
    float-to-double v14, v12

    invoke-static {v14, v15}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v14

    double-to-float v14, v14

    iget-object v15, v4, Lorg/ITsMagic/Atlas/BounceGIRasterizer$l;->b:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v15, v14}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->divLocal(F)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    iget-object v15, v4, Lorg/ITsMagic/Atlas/BounceGIRasterizer$l;->b:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v15}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getX()F

    move-result v15

    mul-float v15, v15, p5

    iget-object v11, v4, Lorg/ITsMagic/Atlas/BounceGIRasterizer$l;->b:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v11}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getY()F

    move-result v11

    mul-float v11, v11, p6

    add-float/2addr v15, v11

    iget-object v11, v4, Lorg/ITsMagic/Atlas/BounceGIRasterizer$l;->b:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v11}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getZ()F

    move-result v11

    mul-float v11, v11, p7

    add-float/2addr v15, v11

    invoke-virtual {v0, v15}, Lorg/ITsMagic/Atlas/BounceGIRasterizer;->t(F)F

    move-result v11

    cmpg-float v15, v11, v13

    if-gtz v15, :cond_7

    return v5

    :cond_7
    iget-object v15, v3, Lorg/ITsMagic/Atlas/BounceGIRasterizer$k;->d:Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    invoke-virtual {v15, v2}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->get(I)F

    move-result v15

    iget-object v5, v4, Lorg/ITsMagic/Atlas/BounceGIRasterizer$l;->b:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v5}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getX()F

    move-result v5

    neg-float v5, v5

    mul-float/2addr v15, v5

    iget-object v5, v3, Lorg/ITsMagic/Atlas/BounceGIRasterizer$k;->e:Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    invoke-virtual {v5, v2}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->get(I)F

    move-result v5

    iget-object v13, v4, Lorg/ITsMagic/Atlas/BounceGIRasterizer$l;->b:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v13}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getY()F

    move-result v13

    neg-float v13, v13

    mul-float/2addr v5, v13

    add-float/2addr v15, v5

    iget-object v3, v3, Lorg/ITsMagic/Atlas/BounceGIRasterizer$k;->f:Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    invoke-virtual {v3, v2}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->get(I)F

    move-result v2

    iget-object v3, v4, Lorg/ITsMagic/Atlas/BounceGIRasterizer$l;->b:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v3}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getZ()F

    move-result v3

    neg-float v3, v3

    mul-float/2addr v2, v3

    add-float/2addr v15, v2

    invoke-virtual {v0, v15}, Lorg/ITsMagic/Atlas/BounceGIRasterizer;->t(F)F

    move-result v2

    const v3, 0x322bcc77    # 1.0E-8f

    cmpg-float v3, v2, v3

    if-gtz v3, :cond_8

    const/4 v3, 0x0

    return v3

    :cond_8
    if-eqz p12, :cond_9

    iget-object v3, v4, Lorg/ITsMagic/Atlas/BounceGIRasterizer$l;->c:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    iget-object v5, v4, Lorg/ITsMagic/Atlas/BounceGIRasterizer$l;->d:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    iget-object v13, v4, Lorg/ITsMagic/Atlas/BounceGIRasterizer$l;->b:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    move-object/from16 p1, p0

    move-object/from16 p2, v3

    move-object/from16 p3, v5

    move-object/from16 p4, v13

    move/from16 p5, v14

    move-object/from16 p6, p13

    invoke-virtual/range {p1 .. p6}, Lorg/ITsMagic/Atlas/BounceGIRasterizer;->q(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;FLorg/ITsMagic/Atlas/BounceGIRasterizer$l;)Z

    move-result v3

    if-eqz v3, :cond_9

    const/4 v3, 0x0

    return v3

    :cond_9
    const/4 v3, 0x0

    move/from16 v5, p10

    invoke-virtual {v0, v12, v5}, Lorg/ITsMagic/Atlas/BounceGIRasterizer;->m(FF)F

    move-result v5

    const/4 v12, 0x0

    cmpg-float v13, v5, v12

    if-gtz v13, :cond_a

    return v3

    :cond_a
    const v3, 0x3f266666    # 0.65f

    mul-float/2addr v2, v3

    const v3, 0x3eb33333    # 0.35f

    add-float/2addr v2, v3

    mul-float/2addr v11, v2

    mul-float/2addr v11, v5

    iget-object v2, v4, Lorg/ITsMagic/Atlas/BounceGIRasterizer$l;->e:Lorg/ITsMagic/Atlas/BounceGIRasterizer$c;

    if-eqz v6, :cond_b

    mul-float/2addr v8, v11

    goto :goto_3

    :cond_b
    move v8, v12

    :goto_3
    iput v8, v2, Lorg/ITsMagic/Atlas/BounceGIRasterizer$c;->a:F

    if-eqz v7, :cond_c

    mul-float/2addr v9, v11

    goto :goto_4

    :cond_c
    move v9, v12

    :goto_4
    iput v9, v2, Lorg/ITsMagic/Atlas/BounceGIRasterizer$c;->b:F

    if-eqz v1, :cond_d

    mul-float v12, v10, v11

    :cond_d
    iput v12, v2, Lorg/ITsMagic/Atlas/BounceGIRasterizer$c;->c:F

    const/4 v1, 0x1

    :goto_5
    return v1
.end method

.method public final f(ILorg/ITsMagic/Atlas/BounceGIRasterizer$k;Lorg/ITsMagic/Atlas/BounceGIRasterizer$j;FLorg/ITsMagic/Atlas/BounceGIRasterizer$d;ZLBb/b;Lorg/ITsMagic/Atlas/BounceGIRasterizer$l;)V
    .locals 29
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
            "maxBounceDistance",
            "config",
            "useGiVisibility",
            "gi",
            "scratch"
        }
    .end annotation

    move-object/from16 v14, p0

    move/from16 v15, p1

    move-object/from16 v13, p2

    move/from16 v12, p4

    move-object/from16 v11, p8

    iget-object v0, v13, Lorg/ITsMagic/Atlas/BounceGIRasterizer$k;->a:Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    invoke-virtual {v0, v15}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->get(I)F

    move-result v10

    iget-object v0, v13, Lorg/ITsMagic/Atlas/BounceGIRasterizer$k;->b:Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    invoke-virtual {v0, v15}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->get(I)F

    move-result v9

    iget-object v0, v13, Lorg/ITsMagic/Atlas/BounceGIRasterizer$k;->c:Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    invoke-virtual {v0, v15}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->get(I)F

    move-result v8

    iget-object v0, v13, Lorg/ITsMagic/Atlas/BounceGIRasterizer$k;->d:Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    invoke-virtual {v0, v15}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->get(I)F

    move-result v7

    iget-object v0, v13, Lorg/ITsMagic/Atlas/BounceGIRasterizer$k;->e:Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    invoke-virtual {v0, v15}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->get(I)F

    move-result v6

    iget-object v0, v13, Lorg/ITsMagic/Atlas/BounceGIRasterizer$k;->f:Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    invoke-virtual {v0, v15}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->get(I)F

    move-result v5

    iget-object v0, v11, Lorg/ITsMagic/Atlas/BounceGIRasterizer$l;->c:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v0, v10, v9, v8}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->set(FFF)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    iget-object v0, v11, Lorg/ITsMagic/Atlas/BounceGIRasterizer$l;->d:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v0, v7, v6, v5}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->set(FFF)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    mul-float v16, v12, v12

    iget-object v0, v11, Lorg/ITsMagic/Atlas/BounceGIRasterizer$l;->c:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    move-object/from16 v1, p3

    invoke-virtual {v1, v0, v12}, Lorg/ITsMagic/Atlas/BounceGIRasterizer$j;->e(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;F)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v3

    move-object/from16 v0, p5

    iget v2, v0, Lorg/ITsMagic/Atlas/BounceGIRasterizer$d;->c:I

    const/16 v17, 0x0

    const/16 v18, 0x0

    if-lez v2, :cond_8

    if-le v3, v2, :cond_8

    new-array v1, v2, [I

    new-array v0, v2, [F

    move/from16 v11, v17

    move v14, v11

    :goto_0
    if-ge v11, v3, :cond_5

    invoke-interface {v4, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/Integer;

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Integer;->intValue()I

    move-result v19

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    move-object/from16 v21, v1

    move/from16 v1, p1

    move v12, v2

    move v2, v10

    move v15, v3

    move v3, v9

    move-object v13, v4

    move v4, v8

    move/from16 v22, v5

    move v5, v7

    move/from16 v23, v6

    move/from16 v24, v7

    move/from16 v7, v22

    move/from16 v25, v8

    move/from16 v8, v19

    move/from16 v26, v9

    move-object/from16 v9, p2

    move/from16 v27, v10

    move/from16 v10, v16

    invoke-virtual/range {v0 .. v10}, Lorg/ITsMagic/Atlas/BounceGIRasterizer;->l(IFFFFFFILorg/ITsMagic/Atlas/BounceGIRasterizer$k;F)F

    move-result v0

    cmpg-float v1, v0, v18

    if-gtz v1, :cond_0

    goto :goto_2

    :cond_0
    if-ge v14, v12, :cond_1

    aput v19, v21, v14

    aput v0, v20, v14

    add-int/lit8 v14, v14, 0x1

    goto :goto_2

    :cond_1
    aget v1, v20, v17

    const/4 v2, 0x1

    move/from16 v3, v17

    :goto_1
    if-ge v2, v12, :cond_3

    aget v4, v20, v2

    cmpg-float v5, v4, v1

    if-gez v5, :cond_2

    move v3, v2

    move v1, v4

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    cmpl-float v1, v0, v1

    if-lez v1, :cond_4

    aput v19, v21, v3

    aput v0, v20, v3

    :cond_4
    :goto_2
    add-int/lit8 v11, v11, 0x1

    move v2, v12

    move-object v4, v13

    move v3, v15

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    move/from16 v5, v22

    move/from16 v6, v23

    move/from16 v7, v24

    move/from16 v8, v25

    move/from16 v9, v26

    move/from16 v10, v27

    move/from16 v15, p1

    move-object/from16 v13, p2

    move/from16 v12, p4

    goto :goto_0

    :cond_5
    move-object/from16 v21, v1

    move/from16 v22, v5

    move/from16 v23, v6

    move/from16 v24, v7

    move/from16 v25, v8

    move/from16 v26, v9

    move/from16 v27, v10

    move/from16 v15, v17

    move/from16 v17, v18

    move/from16 v19, v17

    move/from16 v20, v19

    :goto_3
    if-ge v15, v14, :cond_7

    aget v8, v21, v15

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, v27

    move/from16 v3, v26

    move/from16 v4, v25

    move/from16 v5, v24

    move/from16 v6, v23

    move/from16 v7, v22

    move-object/from16 v9, p2

    move/from16 v10, p4

    move-object/from16 v13, p8

    move/from16 v11, v16

    move/from16 v12, p6

    move/from16 p3, v14

    move-object v14, v13

    invoke-virtual/range {v0 .. v13}, Lorg/ITsMagic/Atlas/BounceGIRasterizer;->e(IFFFFFFILorg/ITsMagic/Atlas/BounceGIRasterizer$k;FFZLorg/ITsMagic/Atlas/BounceGIRasterizer$l;)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, v14, Lorg/ITsMagic/Atlas/BounceGIRasterizer$l;->e:Lorg/ITsMagic/Atlas/BounceGIRasterizer$c;

    iget v1, v0, Lorg/ITsMagic/Atlas/BounceGIRasterizer$c;->a:F

    add-float v17, v17, v1

    iget v1, v0, Lorg/ITsMagic/Atlas/BounceGIRasterizer$c;->b:F

    add-float v19, v19, v1

    iget v0, v0, Lorg/ITsMagic/Atlas/BounceGIRasterizer$c;->c:F

    add-float v20, v20, v0

    :cond_6
    add-int/lit8 v15, v15, 0x1

    move/from16 v14, p3

    goto :goto_3

    :cond_7
    move/from16 v0, v17

    move/from16 v1, v19

    move/from16 v2, v20

    goto/16 :goto_5

    :cond_8
    move v15, v3

    move-object v13, v4

    move/from16 v22, v5

    move/from16 v23, v6

    move/from16 v24, v7

    move/from16 v25, v8

    move/from16 v26, v9

    move/from16 v27, v10

    move-object v14, v11

    move/from16 v12, v17

    move/from16 v17, v18

    move/from16 v19, v17

    move/from16 v20, v19

    :goto_4
    if-ge v12, v15, :cond_7

    invoke-interface {v13, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v8

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, v27

    move/from16 v3, v26

    move/from16 v4, v25

    move/from16 v5, v24

    move/from16 v6, v23

    move/from16 v7, v22

    move-object/from16 v9, p2

    move/from16 v10, p4

    move/from16 v11, v16

    move/from16 v21, v12

    move/from16 v12, p6

    move-object/from16 v28, v13

    move-object/from16 v13, p8

    invoke-virtual/range {v0 .. v13}, Lorg/ITsMagic/Atlas/BounceGIRasterizer;->e(IFFFFFFILorg/ITsMagic/Atlas/BounceGIRasterizer$k;FFZLorg/ITsMagic/Atlas/BounceGIRasterizer$l;)Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object v0, v14, Lorg/ITsMagic/Atlas/BounceGIRasterizer$l;->e:Lorg/ITsMagic/Atlas/BounceGIRasterizer$c;

    iget v1, v0, Lorg/ITsMagic/Atlas/BounceGIRasterizer$c;->a:F

    add-float v17, v17, v1

    iget v1, v0, Lorg/ITsMagic/Atlas/BounceGIRasterizer$c;->b:F

    add-float v19, v19, v1

    iget v0, v0, Lorg/ITsMagic/Atlas/BounceGIRasterizer$c;->c:F

    add-float v20, v20, v0

    :cond_9
    add-int/lit8 v12, v21, 0x1

    move-object/from16 v13, v28

    goto :goto_4

    :goto_5
    cmpl-float v3, v0, v18

    if-gtz v3, :cond_a

    cmpl-float v3, v1, v18

    if-gtz v3, :cond_a

    cmpl-float v3, v2, v18

    if-lez v3, :cond_b

    :cond_a
    move-object/from16 v3, p2

    goto :goto_6

    :cond_b
    move-object/from16 v5, p0

    goto :goto_7

    :goto_6
    iget-object v4, v3, Lorg/ITsMagic/Atlas/BounceGIRasterizer$k;->k:Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;

    move/from16 v5, p1

    invoke-virtual {v4, v5}, Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;->get(I)I

    move-result v4

    iget-object v3, v3, Lorg/ITsMagic/Atlas/BounceGIRasterizer$k;->l:Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;

    invoke-virtual {v3, v5}, Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;->get(I)I

    move-result v3

    move-object/from16 v5, p0

    invoke-virtual {v5, v0}, Lorg/ITsMagic/Atlas/BounceGIRasterizer;->k(F)F

    move-result v0

    invoke-virtual {v5, v1}, Lorg/ITsMagic/Atlas/BounceGIRasterizer;->k(F)F

    move-result v1

    invoke-virtual {v5, v2}, Lorg/ITsMagic/Atlas/BounceGIRasterizer;->k(F)F

    move-result v2

    const/high16 v6, 0x3f800000    # 1.0f

    move-object/from16 p1, p7

    move/from16 p2, v4

    move/from16 p3, v3

    move/from16 p4, v0

    move/from16 p5, v1

    move/from16 p6, v2

    move/from16 p7, v6

    invoke-virtual/range {p1 .. p7}, LBb/b;->s(IIFFFF)V

    :goto_7
    return-void
.end method

.method public final g(LBb/b;Lorg/ITsMagic/Atlas/BounceGIRasterizer$g;)V
    .locals 13
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "gi",
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

    iget-object p2, p2, Lorg/ITsMagic/Atlas/BounceGIRasterizer$g;->a:Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    const/4 v4, 0x0

    invoke-virtual {p2, v4, v3, v4, v2}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->get(I[FII)V

    move p2, v4

    move v2, p2

    :goto_0
    if-ge p2, v1, :cond_2

    move v12, v4

    :goto_1
    if-ge v12, v0, :cond_1

    aget v8, v3, v2

    add-int/lit8 v5, v2, 0x1

    aget v9, v3, v5

    add-int/lit8 v5, v2, 0x2

    aget v10, v3, v5

    add-int/lit8 v5, v2, 0x3

    aget v11, v3, v5

    const/4 v5, 0x0

    cmpl-float v5, v11, v5

    if-lez v5, :cond_0

    move-object v5, p1

    move v6, v12

    move v7, p2

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

.method public final h(Lorg/ITsMagic/Atlas/BounceGIRasterizer$k;F)Lorg/ITsMagic/Atlas/BounceGIRasterizer$f;
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "surfels",
            "emitterThreshold"
        }
    .end annotation

    new-instance v0, Lorg/ITsMagic/Atlas/BounceGIRasterizer$f;

    iget v1, p1, Lorg/ITsMagic/Atlas/BounceGIRasterizer$k;->m:I

    const/4 v2, 0x1

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-direct {v0, v1}, Lorg/ITsMagic/Atlas/BounceGIRasterizer$f;-><init>(I)V

    const/4 v1, 0x0

    :goto_0
    :try_start_0
    iget v3, p1, Lorg/ITsMagic/Atlas/BounceGIRasterizer$k;->m:I

    if-ge v1, v3, :cond_1

    iget-object v3, p1, Lorg/ITsMagic/Atlas/BounceGIRasterizer$k;->j:Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    invoke-virtual {v3, v1}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->get(I)F

    move-result v3

    cmpl-float v3, v3, p2

    if-lez v3, :cond_0

    iget-object v3, v0, Lorg/ITsMagic/Atlas/BounceGIRasterizer$f;->a:Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;

    iget v4, v0, Lorg/ITsMagic/Atlas/BounceGIRasterizer$f;->b:I

    invoke-virtual {v3, v4, v1}, Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;->set(II)V

    iget v3, v0, Lorg/ITsMagic/Atlas/BounceGIRasterizer$f;->b:I

    add-int/2addr v3, v2

    iput v3, v0, Lorg/ITsMagic/Atlas/BounceGIRasterizer$f;->b:I
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    goto :goto_2

    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object v0

    :goto_2
    invoke-virtual {v0}, Lorg/ITsMagic/Atlas/BounceGIRasterizer$f;->a()V

    throw p1
.end method

.method public final i(Lorg/ITsMagic/Atlas/BounceGIRasterizer$k;Lorg/ITsMagic/Atlas/BounceGIRasterizer$d;)Lorg/ITsMagic/Atlas/BounceGIRasterizer$e;
    .locals 20
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "surfels",
            "config"
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move-object/from16 v2, p2

    new-instance v3, Lorg/ITsMagic/Atlas/BounceGIRasterizer$f;

    iget v4, v0, Lorg/ITsMagic/Atlas/BounceGIRasterizer$k;->m:I

    const/4 v5, 0x1

    invoke-static {v5, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    invoke-direct {v3, v4}, Lorg/ITsMagic/Atlas/BounceGIRasterizer$f;-><init>(I)V

    :try_start_0
    iget-object v4, v0, Lorg/ITsMagic/Atlas/BounceGIRasterizer$k;->j:Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    const-wide/16 v5, 0x0

    invoke-static {v4, v5, v6}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->getCriticalDirectCppPointer(Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;J)J

    move-result-wide v7

    iget-object v4, v3, Lorg/ITsMagic/Atlas/BounceGIRasterizer$f;->a:Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;

    invoke-static {v4, v5, v6}, Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;->getCriticalDirectCppPointer(Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;J)J

    move-result-wide v16

    iget v9, v0, Lorg/ITsMagic/Atlas/BounceGIRasterizer$k;->m:I

    iget v10, v2, Lorg/ITsMagic/Atlas/BounceGIRasterizer$d;->a:F

    move-wide/from16 v11, v16

    invoke-static/range {v7 .. v12}, Lorg/ITsMagic/Atlas/BounceGIRasterizer;->nativeBuildEmitterIndices(JIFJ)I

    move-result v4

    iput v4, v3, Lorg/ITsMagic/Atlas/BounceGIRasterizer$f;->b:I

    if-gtz v4, :cond_0

    new-instance v4, Lorg/ITsMagic/Atlas/BounceGIRasterizer$e;

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-direct {v4, v3, v5}, Lorg/ITsMagic/Atlas/BounceGIRasterizer$e;-><init>(Lorg/ITsMagic/Atlas/BounceGIRasterizer$f;F)V

    return-object v4

    :catch_0
    move-exception v0

    goto :goto_0

    :cond_0
    iget-object v4, v0, Lorg/ITsMagic/Atlas/BounceGIRasterizer$k;->a:Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    invoke-static {v4, v5, v6}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->getCriticalDirectCppPointer(Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;J)J

    move-result-wide v9

    iget-object v4, v0, Lorg/ITsMagic/Atlas/BounceGIRasterizer$k;->b:Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    invoke-static {v4, v5, v6}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->getCriticalDirectCppPointer(Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;J)J

    move-result-wide v11

    iget-object v4, v0, Lorg/ITsMagic/Atlas/BounceGIRasterizer$k;->c:Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    invoke-static {v4, v5, v6}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->getCriticalDirectCppPointer(Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;J)J

    move-result-wide v13

    iget v15, v0, Lorg/ITsMagic/Atlas/BounceGIRasterizer$k;->m:I

    iget v4, v3, Lorg/ITsMagic/Atlas/BounceGIRasterizer$f;->b:I

    iget v5, v2, Lorg/ITsMagic/Atlas/BounceGIRasterizer$d;->b:F

    move/from16 v18, v4

    move/from16 v19, v5

    invoke-static/range {v9 .. v19}, Lorg/ITsMagic/Atlas/BounceGIRasterizer;->nativeComputeMaxBounceDistance(JJJIJIF)F

    move-result v4

    new-instance v5, Lorg/ITsMagic/Atlas/BounceGIRasterizer$e;

    invoke-direct {v5, v3, v4}, Lorg/ITsMagic/Atlas/BounceGIRasterizer$e;-><init>(Lorg/ITsMagic/Atlas/BounceGIRasterizer$f;F)V
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v5

    :goto_0
    invoke-virtual {v3}, Lorg/ITsMagic/Atlas/BounceGIRasterizer$f;->a()V

    throw v0

    :catch_1
    invoke-virtual {v3}, Lorg/ITsMagic/Atlas/BounceGIRasterizer$f;->a()V

    iget v3, v2, Lorg/ITsMagic/Atlas/BounceGIRasterizer$d;->a:F

    invoke-virtual {v1, v0, v3}, Lorg/ITsMagic/Atlas/BounceGIRasterizer;->h(Lorg/ITsMagic/Atlas/BounceGIRasterizer$k;F)Lorg/ITsMagic/Atlas/BounceGIRasterizer$f;

    move-result-object v3

    new-instance v4, Lorg/ITsMagic/Atlas/BounceGIRasterizer$e;

    invoke-virtual {v1, v0, v3, v2}, Lorg/ITsMagic/Atlas/BounceGIRasterizer;->n(Lorg/ITsMagic/Atlas/BounceGIRasterizer$k;Lorg/ITsMagic/Atlas/BounceGIRasterizer$f;Lorg/ITsMagic/Atlas/BounceGIRasterizer$d;)F

    move-result v0

    invoke-direct {v4, v3, v0}, Lorg/ITsMagic/Atlas/BounceGIRasterizer$e;-><init>(Lorg/ITsMagic/Atlas/BounceGIRasterizer$f;F)V

    return-object v4
.end method

.method public final j(LBb/b;LBb/b;LBb/b;LBb/b;Ljava/util/List;F)Lorg/ITsMagic/Atlas/BounceGIRasterizer$k;
    .locals 89
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
            "gi",
            "direct",
            "albedo",
            "emissive",
            "bakeDataList",
            "bounceIntensity"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LBb/b;",
            "LBb/b;",
            "LBb/b;",
            "LBb/b;",
            "Ljava/util/List<",
            "LUg/h;",
            ">;F)",
            "Lorg/ITsMagic/Atlas/BounceGIRasterizer$k;"
        }
    .end annotation

    invoke-virtual/range {p1 .. p1}, LBb/b;->p()I

    move-result v0

    invoke-virtual/range {p1 .. p1}, LBb/b;->l()I

    move-result v38

    mul-int v1, v0, v38

    const/4 v15, 0x1

    invoke-static {v15, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    new-instance v14, Lorg/ITsMagic/Atlas/BounceGIRasterizer$k;

    invoke-direct {v14, v1}, Lorg/ITsMagic/Atlas/BounceGIRasterizer$k;-><init>(I)V

    new-instance v13, Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;

    invoke-direct {v13, v1}, Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;-><init>(I)V

    const/4 v1, -0x1

    invoke-virtual {v13, v1}, Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;->fill(I)V

    new-instance v39, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-direct/range {v39 .. v39}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;-><init>()V

    new-instance v40, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-direct/range {v40 .. v40}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;-><init>()V

    const/4 v11, 0x0

    :goto_0
    :try_start_0
    invoke-interface/range {p5 .. p5}, Ljava/util/List;->size()I

    move-result v1

    if-ge v11, v1, :cond_f

    move-object/from16 v10, p5

    invoke-interface {v10, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LUg/h;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, LUg/h;->a()LUg/g;

    move-result-object v2

    if-nez v2, :cond_1

    :cond_0
    :goto_1
    move/from16 v81, v0

    move/from16 v79, v11

    move-object/from16 v83, v13

    move-object/from16 v85, v14

    move/from16 v87, v15

    const/4 v0, 0x0

    goto/16 :goto_a

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
    move/from16 v81, v0

    move/from16 v69, v5

    move-object/from16 v71, v6

    move-object/from16 v72, v7

    move-object/from16 v74, v8

    move-object/from16 v76, v9

    move/from16 v79, v11

    move-object/from16 v83, v13

    move-object/from16 v85, v14

    move/from16 v87, v15

    const/4 v0, 0x0

    goto/16 :goto_9

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
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    const/high16 v41, 0x3f800000    # 1.0f

    sub-float v17, v41, v17

    move-object/from16 v23, v14

    add-int/lit8 v14, v38, -0x1

    move/from16 v24, v5

    int-to-float v5, v14

    move-object/from16 v25, v13

    mul-float v13, v17, v5

    :try_start_1
    invoke-virtual {v7, v2}, Lvc/p;->i(I)F

    move-result v17

    move/from16 v32, v11

    mul-float v11, v17, v15

    invoke-virtual {v7, v2}, Lvc/p;->j(I)F

    move-result v17

    sub-float v17, v41, v17

    mul-float v10, v17, v5

    invoke-virtual {v7, v3}, Lvc/p;->i(I)F

    move-result v17

    mul-float v15, v15, v17

    invoke-virtual {v7, v3}, Lvc/p;->j(I)F

    move-result v17

    sub-float v17, v41, v17

    mul-float v5, v5, v17

    move/from16 v17, v4

    move/from16 v18, v13

    move/from16 v19, v11

    move/from16 v20, v10

    move/from16 v21, v15

    move/from16 v22, v5

    invoke-static/range {v17 .. v22}, Lorg/ITsMagic/Atlas/BounceGIRasterizer;->o(FFFFFF)F

    move-result v42

    invoke-static/range {v42 .. v42}, Ljava/lang/Math;->abs(F)F

    move-result v17

    const v18, 0x3727c5ac    # 1.0E-5f

    cmpg-float v17, v17, v18

    if-gtz v17, :cond_7

    move/from16 v81, v0

    move-object/from16 v71, v6

    move-object/from16 v72, v7

    move-object/from16 v74, v8

    move-object/from16 v76, v9

    move-object/from16 v85, v23

    move/from16 v69, v24

    move-object/from16 v83, v25

    move/from16 v79, v32

    const/4 v0, 0x0

    const/16 v87, 0x1

    goto/16 :goto_9

    :cond_7
    move-object/from16 v33, v6

    invoke-static {v11, v15}, Ljava/lang/Math;->min(FF)F

    move-result v6

    invoke-static {v4, v6}, Ljava/lang/Math;->min(FF)F

    move-result v6

    move-object/from16 v34, v7

    float-to-double v6, v6

    invoke-static {v6, v7}, Ljava/lang/Math;->floor(D)D

    move-result-wide v6

    double-to-int v6, v6

    const/4 v7, 0x0

    invoke-static {v7, v6, v12}, LNc/b;->F(III)I

    move-result v43

    invoke-static {v11, v15}, Ljava/lang/Math;->max(FF)F

    move-result v6

    invoke-static {v4, v6}, Ljava/lang/Math;->max(FF)F

    move-result v6

    move-object/from16 p1, v8

    float-to-double v7, v6

    invoke-static {v7, v8}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v6

    double-to-int v6, v6

    const/4 v7, 0x0

    invoke-static {v7, v6, v12}, LNc/b;->F(III)I

    move-result v8

    invoke-static {v10, v5}, Ljava/lang/Math;->min(FF)F

    move-result v6

    invoke-static {v13, v6}, Ljava/lang/Math;->min(FF)F

    move-result v6

    move/from16 v36, v8

    float-to-double v7, v6

    invoke-static {v7, v8}, Ljava/lang/Math;->floor(D)D

    move-result-wide v6

    double-to-int v6, v6

    const/4 v7, 0x0

    invoke-static {v7, v6, v14}, LNc/b;->F(III)I

    move-result v6

    invoke-static {v10, v5}, Ljava/lang/Math;->max(FF)F

    move-result v8

    invoke-static {v13, v8}, Ljava/lang/Math;->max(FF)F

    move-result v8

    float-to-double v7, v8

    invoke-static {v7, v8}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v7

    double-to-int v7, v7

    const/4 v8, 0x0

    invoke-static {v8, v7, v14}, LNc/b;->F(III)I

    move-result v7

    invoke-virtual {v9, v1}, Lvc/q;->m(I)F

    move-result v44

    invoke-virtual {v9, v1}, Lvc/q;->n(I)F

    move-result v45

    invoke-virtual {v9, v1}, Lvc/q;->o(I)F

    move-result v46

    invoke-virtual {v9, v2}, Lvc/q;->m(I)F

    move-result v47

    invoke-virtual {v9, v2}, Lvc/q;->n(I)F

    move-result v48

    invoke-virtual {v9, v2}, Lvc/q;->o(I)F

    move-result v49

    invoke-virtual {v9, v3}, Lvc/q;->m(I)F

    move-result v50

    invoke-virtual {v9, v3}, Lvc/q;->n(I)F

    move-result v51

    invoke-virtual {v9, v3}, Lvc/q;->o(I)F

    move-result v52

    sub-float v17, v48, v45

    sub-float v18, v52, v46

    mul-float v19, v17, v18

    sub-float v20, v49, v46

    sub-float v21, v51, v45

    mul-float v22, v20, v21

    sub-float v19, v19, v22

    sub-float v22, v50, v44

    mul-float v20, v20, v22

    sub-float v26, v47, v44

    mul-float v18, v18, v26

    sub-float v20, v20, v18

    mul-float v26, v26, v21

    mul-float v17, v17, v22

    sub-float v26, v26, v17

    mul-float v17, v19, v19

    mul-float v18, v20, v20

    add-float v17, v17, v18

    mul-float v18, v26, v26

    add-float v8, v17, v18

    const v17, 0x322bcc77    # 1.0E-8f

    cmpl-float v17, v8, v17

    if-lez v17, :cond_8

    move-object/from16 v37, v9

    float-to-double v8, v8

    invoke-static {v8, v9}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v8

    double-to-float v8, v8

    div-float v8, v41, v8

    mul-float v19, v19, v8

    mul-float v20, v20, v8

    mul-float v26, v26, v8

    move/from16 v53, v19

    move/from16 v54, v20

    move/from16 v55, v26

    goto :goto_4

    :catchall_0
    move-exception v0

    move-object/from16 v83, v25

    goto/16 :goto_c

    :catch_0
    move-exception v0

    move-object/from16 v85, v23

    move-object/from16 v83, v25

    goto/16 :goto_b

    :cond_8
    move-object/from16 v37, v9

    const/4 v8, 0x0

    move/from16 v53, v8

    move/from16 v55, v53

    move/from16 v54, v41

    :goto_4
    if-eqz p1, :cond_9

    invoke-virtual/range {p1 .. p1}, Lvc/q;->d()I

    move-result v8

    if-ge v1, v8, :cond_9

    invoke-virtual/range {p1 .. p1}, Lvc/q;->d()I

    move-result v8

    if-ge v2, v8, :cond_9

    invoke-virtual/range {p1 .. p1}, Lvc/q;->d()I

    move-result v8

    if-ge v3, v8, :cond_9

    move-object/from16 v8, p1

    invoke-virtual {v8, v1}, Lvc/q;->m(I)F

    move-result v9

    invoke-virtual {v8, v1}, Lvc/q;->n(I)F

    move-result v17

    invoke-virtual {v8, v1}, Lvc/q;->o(I)F

    move-result v1

    invoke-virtual {v8, v2}, Lvc/q;->m(I)F

    move-result v18

    invoke-virtual {v8, v2}, Lvc/q;->n(I)F

    move-result v19

    invoke-virtual {v8, v2}, Lvc/q;->o(I)F

    move-result v2

    invoke-virtual {v8, v3}, Lvc/q;->m(I)F

    move-result v20

    invoke-virtual {v8, v3}, Lvc/q;->n(I)F

    move-result v21

    invoke-virtual {v8, v3}, Lvc/q;->o(I)F

    move-result v3

    move/from16 v58, v1

    move/from16 v61, v2

    move/from16 v64, v3

    move/from16 v56, v9

    move/from16 v57, v17

    move/from16 v59, v18

    move/from16 v60, v19

    move/from16 v62, v20

    move/from16 v63, v21

    goto :goto_5

    :cond_9
    move-object/from16 v8, p1

    move/from16 v56, v53

    move/from16 v59, v56

    move/from16 v62, v59

    move/from16 v57, v54

    move/from16 v60, v57

    move/from16 v63, v60

    move/from16 v58, v55

    move/from16 v61, v58

    move/from16 v64, v61

    :goto_5
    move v9, v6

    const/4 v1, 0x0

    :goto_6
    if-gt v9, v7, :cond_d

    int-to-float v2, v9

    const/high16 v65, 0x3f000000    # 0.5f

    add-float v66, v2, v65

    move/from16 v6, v36

    move/from16 v3, v43

    :goto_7
    if-gt v3, v6, :cond_c

    int-to-float v2, v3

    add-float v21, v2, v65

    move/from16 v26, v11

    move/from16 v27, v10

    move/from16 v28, v15

    move/from16 v29, v5

    move/from16 v30, v21

    move/from16 v31, v66

    invoke-static/range {v26 .. v31}, Lorg/ITsMagic/Atlas/BounceGIRasterizer;->o(FFFFFF)F

    move-result v2

    div-float v26, v2, v42

    move/from16 v17, v15

    move/from16 v18, v5

    move/from16 v19, v4

    move/from16 v20, v13

    move/from16 v22, v66

    invoke-static/range {v17 .. v22}, Lorg/ITsMagic/Atlas/BounceGIRasterizer;->o(FFFFFF)F

    move-result v2
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    div-float v17, v2, v42

    sub-float v2, v41, v26

    sub-float v18, v2, v17

    const v2, -0x48d83a54    # -1.0E-5f

    cmpg-float v19, v26, v2

    if-ltz v19, :cond_a

    cmpg-float v19, v17, v2

    if-ltz v19, :cond_a

    cmpg-float v2, v18, v2

    if-gez v2, :cond_b

    :cond_a
    move/from16 v81, v0

    move/from16 v67, v3

    move/from16 v68, v4

    move/from16 v70, v5

    move/from16 v75, v6

    move/from16 v73, v7

    move-object/from16 v74, v8

    move/from16 v77, v9

    move/from16 v78, v10

    move/from16 v80, v11

    move/from16 v82, v12

    move/from16 v84, v13

    move/from16 v86, v14

    move/from16 v88, v15

    move-object/from16 v85, v23

    move/from16 v69, v24

    move-object/from16 v83, v25

    move/from16 v79, v32

    move-object/from16 v71, v33

    move-object/from16 v72, v34

    move-object/from16 v76, v37

    const/4 v0, 0x0

    const/16 v87, 0x1

    goto/16 :goto_8

    :cond_b
    move-object/from16 v1, p0

    move v2, v3

    move/from16 v67, v3

    move v3, v9

    move/from16 v68, v4

    move v4, v0

    move/from16 v70, v5

    move/from16 v69, v24

    move/from16 v5, v38

    move/from16 v19, v6

    move-object/from16 v71, v33

    move/from16 v6, v26

    move/from16 v73, v7

    move-object/from16 v72, v34

    const/16 v20, 0x0

    move/from16 v7, v17

    move-object/from16 v74, v8

    move/from16 v75, v19

    move/from16 v8, v18

    move/from16 v77, v9

    move-object/from16 v76, v37

    move-object/from16 v9, p2

    move/from16 v78, v10

    move-object/from16 v10, p3

    move/from16 v80, v11

    move/from16 v79, v32

    move-object/from16 v11, p4

    move/from16 v81, v0

    move/from16 v82, v12

    move/from16 v0, v20

    move-object/from16 v12, v25

    move/from16 v84, v13

    move-object/from16 v83, v25

    move-object/from16 v13, v23

    move/from16 v86, v14

    move-object/from16 v85, v23

    move/from16 v14, p6

    move/from16 v88, v15

    const/16 v87, 0x1

    move-object/from16 v15, v39

    move-object/from16 v16, v40

    move/from16 v17, v44

    move/from16 v18, v45

    move/from16 v19, v46

    move/from16 v20, v47

    move/from16 v21, v48

    move/from16 v22, v49

    move/from16 v23, v50

    move/from16 v24, v51

    move/from16 v25, v52

    move/from16 v26, v56

    move/from16 v27, v57

    move/from16 v28, v58

    move/from16 v29, v59

    move/from16 v30, v60

    move/from16 v31, v61

    move/from16 v32, v62

    move/from16 v33, v63

    move/from16 v34, v64

    move/from16 v35, v53

    move/from16 v36, v54

    move/from16 v37, v55

    :try_start_2
    invoke-virtual/range {v1 .. v37}, Lorg/ITsMagic/Atlas/BounceGIRasterizer;->z(IIIIFFFLBb/b;LBb/b;LBb/b;Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;Lorg/ITsMagic/Atlas/BounceGIRasterizer$k;FLcom/itsmagic/engine/Engines/Engine/Vector/Vector3;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;FFFFFFFFFFFFFFFFFFFFF)V

    move/from16 v1, v87

    goto :goto_8

    :catchall_1
    move-exception v0

    goto/16 :goto_c

    :catch_1
    move-exception v0

    goto/16 :goto_b

    :goto_8
    add-int/lit8 v3, v67, 0x1

    move/from16 v4, v68

    move/from16 v24, v69

    move/from16 v5, v70

    move-object/from16 v33, v71

    move-object/from16 v34, v72

    move/from16 v7, v73

    move-object/from16 v8, v74

    move/from16 v6, v75

    move-object/from16 v37, v76

    move/from16 v9, v77

    move/from16 v10, v78

    move/from16 v32, v79

    move/from16 v11, v80

    move/from16 v0, v81

    move/from16 v12, v82

    move-object/from16 v25, v83

    move/from16 v13, v84

    move-object/from16 v23, v85

    move/from16 v14, v86

    move/from16 v15, v88

    goto/16 :goto_7

    :cond_c
    move/from16 v81, v0

    move/from16 v68, v4

    move/from16 v70, v5

    move/from16 v75, v6

    move/from16 v73, v7

    move-object/from16 v74, v8

    move/from16 v77, v9

    move/from16 v78, v10

    move/from16 v80, v11

    move/from16 v82, v12

    move/from16 v84, v13

    move/from16 v86, v14

    move/from16 v88, v15

    move-object/from16 v85, v23

    move/from16 v69, v24

    move-object/from16 v83, v25

    move/from16 v79, v32

    move-object/from16 v71, v33

    move-object/from16 v72, v34

    move-object/from16 v76, v37

    const/4 v0, 0x0

    const/16 v87, 0x1

    add-int/lit8 v9, v77, 0x1

    move/from16 v36, v75

    move/from16 v0, v81

    goto/16 :goto_6

    :cond_d
    move/from16 v81, v0

    move/from16 v68, v4

    move/from16 v70, v5

    move-object/from16 v74, v8

    move/from16 v78, v10

    move/from16 v80, v11

    move/from16 v82, v12

    move/from16 v84, v13

    move/from16 v86, v14

    move/from16 v88, v15

    move-object/from16 v85, v23

    move/from16 v69, v24

    move-object/from16 v83, v25

    move/from16 v79, v32

    move-object/from16 v71, v33

    move-object/from16 v72, v34

    move-object/from16 v76, v37

    const/4 v0, 0x0

    const/16 v87, 0x1

    if-nez v1, :cond_e

    add-float v4, v68, v80

    add-float v4, v4, v88

    const/high16 v1, 0x40400000    # 3.0f

    div-float/2addr v4, v1

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v2

    move/from16 v3, v82

    invoke-static {v0, v2, v3}, LNc/b;->F(III)I

    move-result v2

    add-float v13, v84, v78

    add-float v13, v13, v70

    div-float/2addr v13, v1

    invoke-static {v13}, Ljava/lang/Math;->round(F)I

    move-result v1

    move/from16 v3, v86

    invoke-static {v0, v1, v3}, LNc/b;->F(III)I

    move-result v3

    const v7, 0x3eaaaaab

    const v8, 0x3eaaaaab

    const v6, 0x3eaaaaab

    move-object/from16 v1, p0

    move/from16 v4, v81

    move/from16 v5, v38

    move-object/from16 v9, p2

    move-object/from16 v10, p3

    move-object/from16 v11, p4

    move-object/from16 v12, v83

    move-object/from16 v13, v85

    move/from16 v14, p6

    move-object/from16 v15, v39

    move-object/from16 v16, v40

    move/from16 v17, v44

    move/from16 v18, v45

    move/from16 v19, v46

    move/from16 v20, v47

    move/from16 v21, v48

    move/from16 v22, v49

    move/from16 v23, v50

    move/from16 v24, v51

    move/from16 v25, v52

    move/from16 v26, v56

    move/from16 v27, v57

    move/from16 v28, v58

    move/from16 v29, v59

    move/from16 v30, v60

    move/from16 v31, v61

    move/from16 v32, v62

    move/from16 v33, v63

    move/from16 v34, v64

    move/from16 v35, v53

    move/from16 v36, v54

    move/from16 v37, v55

    invoke-virtual/range {v1 .. v37}, Lorg/ITsMagic/Atlas/BounceGIRasterizer;->z(IIIIFFFLBb/b;LBb/b;LBb/b;Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;Lorg/ITsMagic/Atlas/BounceGIRasterizer$k;FLcom/itsmagic/engine/Engines/Engine/Vector/Vector3;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;FFFFFFFFFFFFFFFFFFFFF)V
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_9

    :catchall_2
    move-exception v0

    move-object/from16 v83, v13

    goto :goto_c

    :catch_2
    move-exception v0

    move-object/from16 v83, v13

    move-object/from16 v85, v14

    goto :goto_b

    :cond_e
    :goto_9
    add-int/lit8 v5, v69, 0x1

    move-object/from16 v10, p5

    move-object/from16 v6, v71

    move-object/from16 v7, v72

    move-object/from16 v8, v74

    move-object/from16 v9, v76

    move/from16 v11, v79

    move/from16 v0, v81

    move-object/from16 v13, v83

    move-object/from16 v14, v85

    move/from16 v15, v87

    goto/16 :goto_2

    :goto_a
    add-int/lit8 v11, v79, 0x1

    move/from16 v0, v81

    move-object/from16 v13, v83

    move-object/from16 v14, v85

    move/from16 v15, v87

    goto/16 :goto_0

    :cond_f
    move-object/from16 v83, v13

    move-object/from16 v85, v14

    invoke-virtual/range {v83 .. v83}, Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;->destroy()V

    return-object v85

    :goto_b
    :try_start_3
    invoke-virtual/range {v85 .. v85}, Lorg/ITsMagic/Atlas/BounceGIRasterizer$k;->a()V

    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :goto_c
    invoke-virtual/range {v83 .. v83}, Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;->destroy()V

    throw v0
.end method

.method public final k(F)F
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

.method public final l(IFFFFFFILorg/ITsMagic/Atlas/BounceGIRasterizer$k;F)F
    .locals 11
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
            0x0
        }
        names = {
            "receiverIndex",
            "receiverPosX",
            "receiverPosY",
            "receiverPosZ",
            "receiverNormalX",
            "receiverNormalY",
            "receiverNormalZ",
            "emitterIndex",
            "surfels",
            "maxDistanceSq"
        }
    .end annotation

    move-object v0, p0

    move v1, p1

    move/from16 v2, p8

    move-object/from16 v3, p9

    move/from16 v4, p10

    const/4 v5, 0x0

    if-ne v2, v1, :cond_0

    return v5

    :cond_0
    iget-object v6, v3, Lorg/ITsMagic/Atlas/BounceGIRasterizer$k;->g:Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    invoke-virtual {v6, p1}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->get(I)F

    move-result v6

    iget-object v7, v3, Lorg/ITsMagic/Atlas/BounceGIRasterizer$k;->h:Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    invoke-virtual {v7, p1}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->get(I)F

    move-result v7

    iget-object v8, v3, Lorg/ITsMagic/Atlas/BounceGIRasterizer$k;->i:Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    invoke-virtual {v8, p1}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->get(I)F

    move-result v1

    iget-object v8, v3, Lorg/ITsMagic/Atlas/BounceGIRasterizer$k;->g:Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    invoke-virtual {v8, v2}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->get(I)F

    move-result v8

    iget-object v9, v3, Lorg/ITsMagic/Atlas/BounceGIRasterizer$k;->h:Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    invoke-virtual {v9, v2}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->get(I)F

    move-result v9

    iget-object v10, v3, Lorg/ITsMagic/Atlas/BounceGIRasterizer$k;->i:Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    invoke-virtual {v10, v2}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->get(I)F

    move-result v10

    sub-float/2addr v8, v6

    invoke-static {v5, v8}, Ljava/lang/Math;->max(FF)F

    move-result v6

    sub-float/2addr v9, v7

    invoke-static {v5, v9}, Ljava/lang/Math;->max(FF)F

    move-result v7

    sub-float/2addr v10, v1

    invoke-static {v5, v10}, Ljava/lang/Math;->max(FF)F

    move-result v1

    const v8, 0x3e59b3d0    # 0.2126f

    mul-float/2addr v6, v8

    const v8, 0x3f371759    # 0.7152f

    mul-float/2addr v7, v8

    add-float/2addr v6, v7

    const v7, 0x3d93dd98    # 0.0722f

    mul-float/2addr v1, v7

    add-float/2addr v6, v1

    const v1, 0x322bcc77    # 1.0E-8f

    cmpg-float v7, v6, v1

    if-gtz v7, :cond_1

    return v5

    :cond_1
    iget-object v7, v3, Lorg/ITsMagic/Atlas/BounceGIRasterizer$k;->a:Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    invoke-virtual {v7, v2}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->get(I)F

    move-result v7

    sub-float/2addr v7, p2

    iget-object v8, v3, Lorg/ITsMagic/Atlas/BounceGIRasterizer$k;->b:Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    invoke-virtual {v8, v2}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->get(I)F

    move-result v8

    sub-float/2addr v8, p3

    iget-object v3, v3, Lorg/ITsMagic/Atlas/BounceGIRasterizer$k;->c:Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    invoke-virtual {v3, v2}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->get(I)F

    move-result v2

    sub-float/2addr v2, p4

    mul-float v3, v7, v7

    mul-float v9, v8, v8

    add-float/2addr v3, v9

    mul-float v9, v2, v2

    add-float/2addr v3, v9

    cmpg-float v9, v3, v1

    if-lez v9, :cond_4

    cmpl-float v9, v3, v4

    if-lez v9, :cond_2

    goto :goto_0

    :cond_2
    float-to-double v9, v3

    invoke-static {v9, v10}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v9

    double-to-float v9, v9

    const/high16 v10, 0x3f800000    # 1.0f

    div-float/2addr v10, v9

    mul-float v7, v7, p5

    mul-float/2addr v7, v10

    mul-float v8, v8, p6

    mul-float/2addr v8, v10

    add-float/2addr v7, v8

    mul-float v2, v2, p7

    mul-float/2addr v2, v10

    add-float/2addr v7, v2

    invoke-virtual {p0, v7}, Lorg/ITsMagic/Atlas/BounceGIRasterizer;->t(F)F

    move-result v2

    cmpg-float v1, v2, v1

    if-gtz v1, :cond_3

    return v5

    :cond_3
    const v1, 0x3f4ccccd    # 0.8f

    mul-float/2addr v2, v1

    const v1, 0x3e4ccccd    # 0.2f

    add-float/2addr v2, v1

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    double-to-float v1, v4

    invoke-virtual {p0, v3, v1}, Lorg/ITsMagic/Atlas/BounceGIRasterizer;->m(FF)F

    move-result v1

    mul-float/2addr v6, v2

    mul-float/2addr v6, v1

    return v6

    :cond_4
    :goto_0
    return v5
.end method

.method public final m(FF)F
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "distanceSq",
            "maxBounceDistance"
        }
    .end annotation

    const/high16 v0, 0x3e800000    # 0.25f

    mul-float/2addr p2, v0

    const v0, 0x3eb33333    # 0.35f

    invoke-static {v0, p2}, Ljava/lang/Math;->max(FF)F

    move-result p2

    mul-float/2addr p2, p2

    invoke-static {p1, p2}, Ljava/lang/Math;->max(FF)F

    move-result p1

    div-float/2addr p2, p1

    return p2
.end method

.method public final n(Lorg/ITsMagic/Atlas/BounceGIRasterizer$k;Lorg/ITsMagic/Atlas/BounceGIRasterizer$f;Lorg/ITsMagic/Atlas/BounceGIRasterizer$d;)F
    .locals 18
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "surfels",
            "emitters",
            "config"
        }
    .end annotation

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    iget v2, v0, Lorg/ITsMagic/Atlas/BounceGIRasterizer$k;->m:I

    const/high16 v3, 0x3f800000    # 1.0f

    if-gtz v2, :cond_0

    return v3

    :cond_0
    const/high16 v4, -0x800000    # Float.NEGATIVE_INFINITY

    const/high16 v5, 0x7f800000    # Float.POSITIVE_INFINITY

    move v10, v4

    move v11, v10

    move v12, v11

    move v7, v5

    move v8, v7

    move v9, v8

    const/4 v6, 0x0

    :goto_0
    iget v13, v1, Lorg/ITsMagic/Atlas/BounceGIRasterizer$f;->b:I

    if-ge v6, v13, :cond_1

    iget-object v13, v1, Lorg/ITsMagic/Atlas/BounceGIRasterizer$f;->a:Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;

    invoke-virtual {v13, v6}, Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;->get(I)I

    move-result v13

    iget-object v14, v0, Lorg/ITsMagic/Atlas/BounceGIRasterizer$k;->a:Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    invoke-virtual {v14, v13}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->get(I)F

    move-result v14

    iget-object v15, v0, Lorg/ITsMagic/Atlas/BounceGIRasterizer$k;->b:Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    invoke-virtual {v15, v13}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->get(I)F

    move-result v15

    iget-object v2, v0, Lorg/ITsMagic/Atlas/BounceGIRasterizer$k;->c:Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    invoke-virtual {v2, v13}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->get(I)F

    move-result v2

    invoke-static {v7, v14}, Ljava/lang/Math;->min(FF)F

    move-result v7

    invoke-static {v8, v15}, Ljava/lang/Math;->min(FF)F

    move-result v8

    invoke-static {v9, v2}, Ljava/lang/Math;->min(FF)F

    move-result v9

    invoke-static {v10, v14}, Ljava/lang/Math;->max(FF)F

    move-result v10

    invoke-static {v11, v15}, Ljava/lang/Math;->max(FF)F

    move-result v11

    invoke-static {v12, v2}, Ljava/lang/Math;->max(FF)F

    move-result v12

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_1
    move v6, v4

    move v13, v5

    move v14, v13

    move v15, v14

    const/4 v2, 0x0

    move v5, v6

    :goto_1
    iget v3, v0, Lorg/ITsMagic/Atlas/BounceGIRasterizer$k;->m:I

    if-ge v2, v3, :cond_2

    iget-object v3, v0, Lorg/ITsMagic/Atlas/BounceGIRasterizer$k;->a:Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    invoke-virtual {v3, v2}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->get(I)F

    move-result v3

    move/from16 v16, v10

    iget-object v10, v0, Lorg/ITsMagic/Atlas/BounceGIRasterizer$k;->b:Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    invoke-virtual {v10, v2}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->get(I)F

    move-result v10

    move/from16 v17, v11

    iget-object v11, v0, Lorg/ITsMagic/Atlas/BounceGIRasterizer$k;->c:Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    invoke-virtual {v11, v2}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->get(I)F

    move-result v11

    invoke-static {v13, v3}, Ljava/lang/Math;->min(FF)F

    move-result v13

    invoke-static {v14, v10}, Ljava/lang/Math;->min(FF)F

    move-result v14

    invoke-static {v15, v11}, Ljava/lang/Math;->min(FF)F

    move-result v15

    invoke-static {v4, v3}, Ljava/lang/Math;->max(FF)F

    move-result v4

    invoke-static {v5, v10}, Ljava/lang/Math;->max(FF)F

    move-result v5

    invoke-static {v6, v11}, Ljava/lang/Math;->max(FF)F

    move-result v6

    add-int/lit8 v2, v2, 0x1

    move/from16 v10, v16

    move/from16 v11, v17

    goto :goto_1

    :cond_2
    move/from16 v16, v10

    move/from16 v17, v11

    iget v0, v1, Lorg/ITsMagic/Atlas/BounceGIRasterizer$f;->b:I

    if-lez v0, :cond_3

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Vector/AABB;

    new-instance v1, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-direct {v1, v7, v8, v9}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;-><init>(FFF)V

    new-instance v2, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    move/from16 v10, v16

    move/from16 v11, v17

    invoke-direct {v2, v10, v11, v12}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;-><init>(FFF)V

    invoke-direct {v0, v1, v2}, Lcom/itsmagic/engine/Engines/Engine/Vector/AABB;-><init>(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)V

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/AABB;->getRadius()F

    move-result v0

    goto :goto_2

    :cond_3
    const/4 v0, 0x0

    :goto_2
    new-instance v1, Lcom/itsmagic/engine/Engines/Engine/Vector/AABB;

    new-instance v2, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-direct {v2, v13, v14, v15}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;-><init>(FFF)V

    new-instance v3, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-direct {v3, v4, v5, v6}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;-><init>(FFF)V

    invoke-direct {v1, v2, v3}, Lcom/itsmagic/engine/Engines/Engine/Vector/AABB;-><init>(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)V

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/Vector/AABB;->getRadius()F

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    move-object/from16 v1, p3

    iget v1, v1, Lorg/ITsMagic/Atlas/BounceGIRasterizer$d;->b:F

    mul-float/2addr v0, v1

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v1, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    return v0
.end method

.method public final p(LBb/b;III)F
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "texture",
            "x",
            "y",
            "channel"
        }
    .end annotation

    if-eqz p4, :cond_3

    const/4 v0, 0x1

    if-eq p4, v0, :cond_2

    const/4 v0, 0x2

    if-eq p4, v0, :cond_1

    const/4 v0, 0x3

    if-eq p4, v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    invoke-virtual {p1, p2, p3}, LBb/b;->i(II)F

    move-result p1

    return p1

    :cond_1
    invoke-virtual {p1, p2, p3}, LBb/b;->j(II)F

    move-result p1

    return p1

    :cond_2
    invoke-virtual {p1, p2, p3}, LBb/b;->k(II)F

    move-result p1

    return p1

    :cond_3
    invoke-virtual {p1, p2, p3}, LBb/b;->n(II)F

    move-result p1

    return p1
.end method

.method public final q(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;FLorg/ITsMagic/Atlas/BounceGIRasterizer$l;)Z
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
            "toEmitterDirection",
            "maxDistance",
            "scratch"
        }
    .end annotation

    const v0, 0x3d4ccccd    # 0.05f

    cmpg-float v1, p4, v0

    const/4 v2, 0x0

    if-gtz v1, :cond_0

    return v2

    :cond_0
    iget-object p5, p5, Lorg/ITsMagic/Atlas/BounceGIRasterizer$l;->a:Laa/c;

    invoke-virtual {p5}, Laa/c;->h()Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->set(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v1, p2, v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->addLocal(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;F)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {p5}, Laa/c;->e()Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    move-result-object p1

    invoke-virtual {p1, p3}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->set(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    sub-float/2addr p4, v0

    iput p4, p5, Laa/c;->c:F

    sub-float/2addr p4, v0

    cmpg-float p1, p4, v0

    if-gtz p1, :cond_1

    return v2

    :cond_1
    move p1, v2

    :goto_0
    iget-object p2, p0, Lorg/ITsMagic/Atlas/BounceGIRasterizer;->a:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    if-ge p1, p2, :cond_4

    iget-object p2, p0, Lorg/ITsMagic/Atlas/BounceGIRasterizer;->a:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/itsmagic/engine/Engines/Engine/Vertex/BVHMesh;

    if-eqz p2, :cond_3

    invoke-virtual {p2}, Lcom/itsmagic/engine/Engines/Engine/Vertex/BVHMesh;->A()Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    move-result-object p3

    if-eqz p3, :cond_3

    invoke-virtual {p2}, Lcom/itsmagic/engine/Engines/Engine/Vertex/BVHMesh;->v()Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;

    move-result-object p3

    if-nez p3, :cond_2

    goto :goto_1

    :cond_2
    sget-object p3, LJAVARuntime/Vertex$RayMode;->ClosestPoint:LJAVARuntime/Vertex$RayMode;

    invoke-virtual {p2, p5, p3, v2}, Lcom/itsmagic/engine/Engines/Engine/Vertex/BVHMesh;->U(Laa/c;LJAVARuntime/Vertex$RayMode;Z)Laa/a;

    move-result-object p2

    if-eqz p2, :cond_3

    invoke-virtual {p2}, Laa/a;->getDistance()F

    move-result p3

    cmpl-float p3, p3, v0

    if-lez p3, :cond_3

    invoke-virtual {p2}, Laa/a;->getDistance()F

    move-result p2

    cmpg-float p2, p2, p4

    if-gez p2, :cond_3

    const/4 p1, 0x1

    return p1

    :cond_3
    :goto_1
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_4
    return v2
.end method

.method public final synthetic r(IIJJJJJJJJJJJLorg/ITsMagic/Atlas/BounceGIRasterizer$k;JJJLorg/ITsMagic/Atlas/BounceGIRasterizer$i;FLorg/ITsMagic/Atlas/BounceGIRasterizer$d;LBb/b;JZLorg/ITsMagic/Atlas/BounceGIRasterizer$h;Lorg/ITsMagic/Atlas/a$c;Ljava/util/concurrent/atomic/AtomicInteger;I)Ljava/lang/Object;
    .locals 52
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    move/from16 v0, p2

    move-object/from16 v1, p32

    move-object/from16 v2, p39

    move-object/from16 v3, p40

    move/from16 v14, p1

    :goto_0
    if-ge v14, v0, :cond_1

    add-int/lit16 v15, v14, 0x100

    invoke-static {v0, v15}, Ljava/lang/Math;->min(II)I

    move-result v49

    move/from16 v39, v49

    move-object/from16 v12, p25

    iget v4, v12, Lorg/ITsMagic/Atlas/BounceGIRasterizer$k;->m:I

    move/from16 v26, v4

    iget-object v4, v1, Lorg/ITsMagic/Atlas/BounceGIRasterizer$i;->b:[J

    move-object/from16 v33, v4

    iget v4, v1, Lorg/ITsMagic/Atlas/BounceGIRasterizer$i;->a:F

    move/from16 v34, v4

    move-object/from16 v13, p34

    iget v4, v13, Lorg/ITsMagic/Atlas/BounceGIRasterizer$d;->c:I

    move/from16 v36, v4

    invoke-virtual/range {p35 .. p35}, LBb/b;->p()I

    move-result v37

    iget-object v4, v2, Lorg/ITsMagic/Atlas/BounceGIRasterizer$h;->a:[J

    move-object/from16 v43, v4

    iget-object v4, v2, Lorg/ITsMagic/Atlas/BounceGIRasterizer$h;->b:[J

    move-object/from16 v44, v4

    iget-object v4, v2, Lorg/ITsMagic/Atlas/BounceGIRasterizer$h;->c:[J

    move-object/from16 v45, v4

    iget-object v4, v2, Lorg/ITsMagic/Atlas/BounceGIRasterizer$h;->d:[J

    move-object/from16 v46, v4

    iget-object v4, v2, Lorg/ITsMagic/Atlas/BounceGIRasterizer$h;->e:[J

    move-object/from16 v47, v4

    iget-object v4, v2, Lorg/ITsMagic/Atlas/BounceGIRasterizer$h;->f:[I

    move-object/from16 v48, v4

    move-wide/from16 v4, p3

    move-wide/from16 v6, p5

    move-wide/from16 v8, p7

    move-wide/from16 v10, p9

    move-wide/from16 v12, p11

    move/from16 v50, v14

    move/from16 v51, v15

    move-wide/from16 v14, p13

    move-wide/from16 v16, p15

    move-wide/from16 v18, p17

    move-wide/from16 v20, p19

    move-wide/from16 v22, p21

    move-wide/from16 v24, p23

    move-wide/from16 v27, p26

    move-wide/from16 v29, p28

    move-wide/from16 v31, p30

    move/from16 v35, p33

    move/from16 v38, v50

    move-wide/from16 v40, p36

    move/from16 v42, p38

    invoke-static/range {v4 .. v48}, Lorg/ITsMagic/Atlas/BounceGIRasterizer;->nativeRasterizeRange(JJJJJJJJJJJIJJJ[JFFIIIIJZ[J[J[J[J[J[I)V

    if-eqz v3, :cond_0

    sub-int v4, v49, v50

    move-object/from16 v5, p41

    invoke-virtual {v5, v4}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    move-result v4

    move-object/from16 v6, p0

    move/from16 v7, p42

    invoke-virtual {v6, v4, v7, v3}, Lorg/ITsMagic/Atlas/BounceGIRasterizer;->x(IILorg/ITsMagic/Atlas/a$c;)V

    goto :goto_1

    :cond_0
    move-object/from16 v6, p0

    move-object/from16 v5, p41

    move/from16 v7, p42

    :goto_1
    move/from16 v14, v51

    goto :goto_0

    :cond_1
    move-object/from16 v6, p0

    const/4 v0, 0x0

    return-object v0
.end method

.method public final t(F)F
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "dot"
        }
    .end annotation

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    invoke-virtual {p0, p1}, Lorg/ITsMagic/Atlas/BounceGIRasterizer;->k(F)F

    move-result p1

    return p1
.end method

.method public u(Lub/p;Lub/p;Lub/p;Lub/p;Ljava/util/List;FLcom/itsmagic/engine/Activities/Editor/Extensions/Area/AreaEditorComponent$r;FZLorg/ITsMagic/Atlas/a$c;)V
    .locals 24
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
            0x0
        }
        names = {
            "giTexture",
            "directLightTexture",
            "albedoTexture",
            "emissiveTexture",
            "bakeDataList",
            "giQuality",
            "bounceGIMode",
            "bounceIntensity",
            "useGiVisibility",
            "listener"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lub/p;",
            "Lub/p;",
            "Lub/p;",
            "Lub/p;",
            "Ljava/util/List<",
            "LUg/h;",
            ">;F",
            "Lcom/itsmagic/engine/Activities/Editor/Extensions/Area/AreaEditorComponent$r;",
            "FZ",
            "Lorg/ITsMagic/Atlas/a$c;",
            ")V"
        }
    .end annotation

    move-object/from16 v11, p0

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    move-object/from16 v12, p10

    if-eqz v0, :cond_c

    if-eqz v1, :cond_c

    if-eqz v2, :cond_c

    if-nez p5, :cond_0

    goto/16 :goto_c

    :cond_0
    invoke-static/range {p7 .. p7}, Lorg/ITsMagic/Atlas/BounceGIRasterizer$d;->a(Lcom/itsmagic/engine/Activities/Editor/Extensions/Area/AreaEditorComponent$r;)Lorg/ITsMagic/Atlas/BounceGIRasterizer$d;

    move-result-object v13

    const/high16 v4, 0x42480000    # 50.0f

    invoke-static {v0, v4}, LBb/b;->d(Lub/p;F)LBb/b;

    move-result-object v14

    invoke-static {v1, v4}, LBb/b;->d(Lub/p;F)LBb/b;

    move-result-object v15

    invoke-static {v2, v4}, LBb/b;->d(Lub/p;F)LBb/b;

    move-result-object v16

    if-eqz v3, :cond_1

    invoke-static {v3, v4}, LBb/b;->d(Lub/p;F)LBb/b;

    move-result-object v0

    :goto_0
    move-object/from16 v17, v0

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :goto_1
    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {v14, v0, v0, v0, v0}, LBb/b;->f(FFFF)V

    move-object/from16 v1, p0

    move-object v2, v14

    move-object v3, v15

    move-object/from16 v4, v16

    move-object/from16 v5, v17

    move-object/from16 v6, p5

    move/from16 v7, p8

    invoke-virtual/range {v1 .. v7}, Lorg/ITsMagic/Atlas/BounceGIRasterizer;->j(LBb/b;LBb/b;LBb/b;LBb/b;Ljava/util/List;F)Lorg/ITsMagic/Atlas/BounceGIRasterizer$k;

    move-result-object v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget v0, v10, Lorg/ITsMagic/Atlas/BounceGIRasterizer$k;->m:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const-string v1, ""

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    if-gtz v0, :cond_4

    if-eqz v12, :cond_2

    :try_start_2
    invoke-interface {v12, v3, v3, v2, v1}, Lorg/ITsMagic/Atlas/a$c;->a(IIFLjava/lang/String;)V

    goto :goto_2

    :catchall_0
    move-exception v0

    move-object/from16 v23, v10

    goto/16 :goto_a

    :cond_2
    :goto_2
    invoke-virtual {v14}, LBb/b;->c()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    invoke-virtual {v10}, Lorg/ITsMagic/Atlas/BounceGIRasterizer$k;->a()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    invoke-virtual {v14}, LBb/b;->e()V

    invoke-virtual {v15}, LBb/b;->e()V

    invoke-virtual/range {v16 .. v16}, LBb/b;->e()V

    if-eqz v17, :cond_3

    invoke-virtual/range {v17 .. v17}, LBb/b;->e()V

    :cond_3
    return-void

    :catchall_1
    move-exception v0

    goto/16 :goto_b

    :cond_4
    :try_start_4
    invoke-virtual {v11, v10, v13}, Lorg/ITsMagic/Atlas/BounceGIRasterizer;->i(Lorg/ITsMagic/Atlas/BounceGIRasterizer$k;Lorg/ITsMagic/Atlas/BounceGIRasterizer$d;)Lorg/ITsMagic/Atlas/BounceGIRasterizer$e;

    move-result-object v0

    iget-object v9, v0, Lorg/ITsMagic/Atlas/BounceGIRasterizer$e;->a:Lorg/ITsMagic/Atlas/BounceGIRasterizer$f;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    iget v4, v9, Lorg/ITsMagic/Atlas/BounceGIRasterizer$f;->b:I

    if-gtz v4, :cond_7

    if-eqz v12, :cond_5

    iget v0, v10, Lorg/ITsMagic/Atlas/BounceGIRasterizer$k;->m:I

    invoke-interface {v12, v0, v0, v2, v1}, Lorg/ITsMagic/Atlas/a$c;->a(IIFLjava/lang/String;)V

    goto :goto_3

    :catchall_2
    move-exception v0

    move-object/from16 v22, v9

    move-object/from16 v23, v10

    goto/16 :goto_9

    :cond_5
    :goto_3
    invoke-virtual {v14}, LBb/b;->c()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    :try_start_6
    invoke-virtual {v9}, Lorg/ITsMagic/Atlas/BounceGIRasterizer$f;->a()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :try_start_7
    invoke-virtual {v10}, Lorg/ITsMagic/Atlas/BounceGIRasterizer$k;->a()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    invoke-virtual {v14}, LBb/b;->e()V

    invoke-virtual {v15}, LBb/b;->e()V

    invoke-virtual/range {v16 .. v16}, LBb/b;->e()V

    if-eqz v17, :cond_6

    invoke-virtual/range {v17 .. v17}, LBb/b;->e()V

    :cond_6
    return-void

    :cond_7
    :try_start_8
    iget v8, v0, Lorg/ITsMagic/Atlas/BounceGIRasterizer$e;->b:F

    new-instance v7, Lorg/ITsMagic/Atlas/BounceGIRasterizer$j;

    const/high16 v0, 0x3f000000    # 0.5f

    mul-float v1, v8, v0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    invoke-direct {v7, v0}, Lorg/ITsMagic/Atlas/BounceGIRasterizer$j;-><init>(F)V

    :goto_4
    iget v0, v9, Lorg/ITsMagic/Atlas/BounceGIRasterizer$f;->b:I

    if-ge v3, v0, :cond_8

    iget-object v0, v9, Lorg/ITsMagic/Atlas/BounceGIRasterizer$f;->a:Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;

    invoke-virtual {v0, v3}, Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;->get(I)I

    move-result v0

    invoke-virtual {v7, v10, v0}, Lorg/ITsMagic/Atlas/BounceGIRasterizer$j;->c(Lorg/ITsMagic/Atlas/BounceGIRasterizer$k;I)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    :cond_8
    :try_start_9
    invoke-static {v7}, Lorg/ITsMagic/Atlas/BounceGIRasterizer$i;->b(Lorg/ITsMagic/Atlas/BounceGIRasterizer$j;)Lorg/ITsMagic/Atlas/BounceGIRasterizer$i;

    move-result-object v18
    :try_end_9
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_9 .. :try_end_9} :catch_0
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    if-eqz p9, :cond_9

    :try_start_a
    iget-object v0, v11, Lorg/ITsMagic/Atlas/BounceGIRasterizer;->a:Ljava/util/List;

    invoke-static {v0}, Lorg/ITsMagic/Atlas/BounceGIRasterizer$h;->b(Ljava/util/List;)Lorg/ITsMagic/Atlas/BounceGIRasterizer$h;

    move-result-object v0

    :goto_5
    move-object v4, v0

    goto :goto_6

    :catchall_3
    move-exception v0

    move-object/from16 v20, v7

    move/from16 v21, v8

    move-object/from16 v22, v9

    move-object/from16 v23, v10

    goto :goto_7

    :cond_9
    invoke-static {}, Lorg/ITsMagic/Atlas/BounceGIRasterizer$h;->a()Lorg/ITsMagic/Atlas/BounceGIRasterizer$h;

    move-result-object v0

    goto :goto_5

    :goto_6
    new-instance v6, Lorg/ITsMagic/Atlas/BounceGIRasterizer$g;

    invoke-virtual {v14}, LBb/b;->p()I

    move-result v0

    invoke-virtual {v14}, LBb/b;->l()I

    move-result v1

    mul-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x4

    const/4 v1, 0x1

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-direct {v6, v0}, Lorg/ITsMagic/Atlas/BounceGIRasterizer$g;-><init>(I)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    move-object/from16 v1, p0

    move-object v2, v10

    move-object/from16 v3, v18

    move v5, v8

    move-object/from16 v19, v6

    move-object v6, v13

    move-object/from16 v20, v7

    move/from16 v7, p9

    move/from16 v21, v8

    move-object v8, v14

    move-object/from16 v22, v9

    move-object/from16 v9, v19

    move-object/from16 v23, v10

    move-object/from16 v10, p10

    :try_start_b
    invoke-virtual/range {v1 .. v10}, Lorg/ITsMagic/Atlas/BounceGIRasterizer;->v(Lorg/ITsMagic/Atlas/BounceGIRasterizer$k;Lorg/ITsMagic/Atlas/BounceGIRasterizer$i;Lorg/ITsMagic/Atlas/BounceGIRasterizer$h;FLorg/ITsMagic/Atlas/BounceGIRasterizer$d;ZLBb/b;Lorg/ITsMagic/Atlas/BounceGIRasterizer$g;Lorg/ITsMagic/Atlas/a$c;)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_6

    :try_start_c
    invoke-virtual/range {v19 .. v19}, Lorg/ITsMagic/Atlas/BounceGIRasterizer$g;->a()V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_5

    :try_start_d
    invoke-virtual/range {v18 .. v18}, Lorg/ITsMagic/Atlas/BounceGIRasterizer$i;->a()V
    :try_end_d
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_d .. :try_end_d} :catch_1
    .catchall {:try_start_d .. :try_end_d} :catchall_4

    goto :goto_8

    :catchall_4
    move-exception v0

    goto :goto_9

    :catchall_5
    move-exception v0

    goto :goto_7

    :catchall_6
    move-exception v0

    move-object v1, v0

    :try_start_e
    invoke-virtual/range {v19 .. v19}, Lorg/ITsMagic/Atlas/BounceGIRasterizer$g;->a()V

    throw v1
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_5

    :goto_7
    :try_start_f
    invoke-virtual/range {v18 .. v18}, Lorg/ITsMagic/Atlas/BounceGIRasterizer$i;->a()V

    throw v0
    :try_end_f
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_f .. :try_end_f} :catch_1
    .catchall {:try_start_f .. :try_end_f} :catchall_4

    :catch_0
    move-object/from16 v20, v7

    move/from16 v21, v8

    move-object/from16 v22, v9

    move-object/from16 v23, v10

    :catch_1
    move-object/from16 p1, p0

    move-object/from16 p2, v23

    move-object/from16 p3, v20

    move/from16 p4, v21

    move-object/from16 p5, v13

    move/from16 p6, p9

    move-object/from16 p7, v14

    move-object/from16 p8, p10

    :try_start_10
    invoke-virtual/range {p1 .. p8}, Lorg/ITsMagic/Atlas/BounceGIRasterizer;->w(Lorg/ITsMagic/Atlas/BounceGIRasterizer$k;Lorg/ITsMagic/Atlas/BounceGIRasterizer$j;FLorg/ITsMagic/Atlas/BounceGIRasterizer$d;ZLBb/b;Lorg/ITsMagic/Atlas/a$c;)V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_4

    :goto_8
    :try_start_11
    invoke-virtual/range {v22 .. v22}, Lorg/ITsMagic/Atlas/BounceGIRasterizer$f;->a()V
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_7

    :try_start_12
    invoke-virtual/range {v23 .. v23}, Lorg/ITsMagic/Atlas/BounceGIRasterizer$k;->a()V

    invoke-virtual {v14}, LBb/b;->c()V
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_1

    invoke-virtual {v14}, LBb/b;->e()V

    invoke-virtual {v15}, LBb/b;->e()V

    invoke-virtual/range {v16 .. v16}, LBb/b;->e()V

    if-eqz v17, :cond_a

    invoke-virtual/range {v17 .. v17}, LBb/b;->e()V

    :cond_a
    return-void

    :catchall_7
    move-exception v0

    goto :goto_a

    :goto_9
    :try_start_13
    invoke-virtual/range {v22 .. v22}, Lorg/ITsMagic/Atlas/BounceGIRasterizer$f;->a()V

    throw v0
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_7

    :goto_a
    :try_start_14
    invoke-virtual/range {v23 .. v23}, Lorg/ITsMagic/Atlas/BounceGIRasterizer$k;->a()V

    throw v0
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_1

    :goto_b
    invoke-virtual {v14}, LBb/b;->e()V

    invoke-virtual {v15}, LBb/b;->e()V

    invoke-virtual/range {v16 .. v16}, LBb/b;->e()V

    if-eqz v17, :cond_b

    invoke-virtual/range {v17 .. v17}, LBb/b;->e()V

    :cond_b
    throw v0

    :cond_c
    :goto_c
    return-void
.end method

.method public final v(Lorg/ITsMagic/Atlas/BounceGIRasterizer$k;Lorg/ITsMagic/Atlas/BounceGIRasterizer$i;Lorg/ITsMagic/Atlas/BounceGIRasterizer$h;FLorg/ITsMagic/Atlas/BounceGIRasterizer$d;ZLBb/b;Lorg/ITsMagic/Atlas/BounceGIRasterizer$g;Lorg/ITsMagic/Atlas/a$c;)V
    .locals 81
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
            "maxBounceDistance",
            "config",
            "useGiVisibility",
            "gi",
            "outputPixels",
            "listener"
        }
    .end annotation

    move-object/from16 v15, p0

    move-object/from16 v0, p1

    move-object/from16 v13, p2

    move-object/from16 v14, p8

    move-object/from16 v11, p9

    iget v12, v0, Lorg/ITsMagic/Atlas/BounceGIRasterizer$k;->m:I

    const-string v1, ""

    const/4 v9, 0x0

    if-gtz v12, :cond_1

    if-eqz v11, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-interface {v11, v9, v9, v0, v1}, Lorg/ITsMagic/Atlas/a$c;->a(IIFLjava/lang/String;)V

    :cond_0
    return-void

    :cond_1
    iget-object v2, v14, Lorg/ITsMagic/Atlas/BounceGIRasterizer$g;->a:Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->fill(F)V

    invoke-static {}, LO9/b;->a()I

    move-result v2

    add-int/lit8 v2, v2, -0x2

    const/4 v4, 0x1

    invoke-static {v4, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-static {v2, v12}, Ljava/lang/Math;->min(II)I

    move-result v2

    int-to-double v5, v12

    int-to-double v7, v2

    div-double/2addr v5, v7

    invoke-static {v5, v6}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v5

    double-to-int v5, v5

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v45

    if-eqz v11, :cond_2

    invoke-interface {v11, v9, v12, v3, v1}, Lorg/ITsMagic/Atlas/a$c;->a(IIFLjava/lang/String;)V

    :cond_2
    iget-object v1, v0, Lorg/ITsMagic/Atlas/BounceGIRasterizer$k;->a:Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    const-wide/16 v3, 0x0

    invoke-static {v1, v3, v4}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->getCriticalDirectCppPointer(Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;J)J

    move-result-wide v46

    iget-object v1, v0, Lorg/ITsMagic/Atlas/BounceGIRasterizer$k;->b:Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    invoke-static {v1, v3, v4}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->getCriticalDirectCppPointer(Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;J)J

    move-result-wide v48

    iget-object v1, v0, Lorg/ITsMagic/Atlas/BounceGIRasterizer$k;->c:Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    invoke-static {v1, v3, v4}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->getCriticalDirectCppPointer(Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;J)J

    move-result-wide v50

    iget-object v1, v0, Lorg/ITsMagic/Atlas/BounceGIRasterizer$k;->d:Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    invoke-static {v1, v3, v4}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->getCriticalDirectCppPointer(Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;J)J

    move-result-wide v52

    iget-object v1, v0, Lorg/ITsMagic/Atlas/BounceGIRasterizer$k;->e:Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    invoke-static {v1, v3, v4}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->getCriticalDirectCppPointer(Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;J)J

    move-result-wide v54

    iget-object v1, v0, Lorg/ITsMagic/Atlas/BounceGIRasterizer$k;->f:Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    invoke-static {v1, v3, v4}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->getCriticalDirectCppPointer(Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;J)J

    move-result-wide v56

    iget-object v1, v0, Lorg/ITsMagic/Atlas/BounceGIRasterizer$k;->g:Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    invoke-static {v1, v3, v4}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->getCriticalDirectCppPointer(Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;J)J

    move-result-wide v58

    iget-object v1, v0, Lorg/ITsMagic/Atlas/BounceGIRasterizer$k;->h:Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    invoke-static {v1, v3, v4}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->getCriticalDirectCppPointer(Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;J)J

    move-result-wide v60

    iget-object v1, v0, Lorg/ITsMagic/Atlas/BounceGIRasterizer$k;->i:Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    invoke-static {v1, v3, v4}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->getCriticalDirectCppPointer(Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;J)J

    move-result-wide v62

    iget-object v1, v0, Lorg/ITsMagic/Atlas/BounceGIRasterizer$k;->k:Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;

    invoke-static {v1, v3, v4}, Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;->getCriticalDirectCppPointer(Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;J)J

    move-result-wide v64

    iget-object v1, v0, Lorg/ITsMagic/Atlas/BounceGIRasterizer$k;->l:Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;

    invoke-static {v1, v3, v4}, Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;->getCriticalDirectCppPointer(Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;J)J

    move-result-wide v66

    iget-object v1, v13, Lorg/ITsMagic/Atlas/BounceGIRasterizer$i;->c:Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;

    invoke-static {v1, v3, v4}, Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;->getCriticalDirectCppPointer(Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;J)J

    move-result-wide v68

    iget-object v1, v13, Lorg/ITsMagic/Atlas/BounceGIRasterizer$i;->d:Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;

    invoke-static {v1, v3, v4}, Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;->getCriticalDirectCppPointer(Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;J)J

    move-result-wide v70

    iget-object v1, v13, Lorg/ITsMagic/Atlas/BounceGIRasterizer$i;->e:Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;

    invoke-static {v1, v3, v4}, Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;->getCriticalDirectCppPointer(Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;J)J

    move-result-wide v72

    iget-object v1, v14, Lorg/ITsMagic/Atlas/BounceGIRasterizer$g;->a:Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    invoke-static {v1, v3, v4}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->getCriticalDirectCppPointer(Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;J)J

    move-result-wide v74

    new-instance v76, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct/range {v76 .. v76}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10, v2}, Ljava/util/ArrayList;-><init>(I)V

    move v3, v9

    :goto_0
    if-ge v3, v12, :cond_3

    add-int v7, v3, v45

    invoke-static {v12, v7}, Ljava/lang/Math;->min(II)I

    move-result v4

    new-instance v77, LUg/j;

    move-object/from16 v1, v77

    move-object/from16 v2, p0

    move-wide/from16 v5, v46

    move/from16 v78, v7

    move-wide/from16 v7, v48

    move/from16 v79, v9

    move-object v0, v10

    move-wide/from16 v9, v50

    move/from16 v80, v12

    move-wide/from16 v11, v52

    move-wide/from16 v13, v54

    move-wide/from16 v15, v56

    move-wide/from16 v17, v58

    move-wide/from16 v19, v60

    move-wide/from16 v21, v62

    move-wide/from16 v23, v64

    move-wide/from16 v25, v66

    move-object/from16 v27, p1

    move-wide/from16 v28, v68

    move-wide/from16 v30, v70

    move-wide/from16 v32, v72

    move-object/from16 v34, p2

    move/from16 v35, p4

    move-object/from16 v36, p5

    move-object/from16 v37, p7

    move-wide/from16 v38, v74

    move/from16 v40, p6

    move-object/from16 v41, p3

    move-object/from16 v42, p9

    move-object/from16 v43, v76

    move/from16 v44, v80

    invoke-direct/range {v1 .. v44}, LUg/j;-><init>(Lorg/ITsMagic/Atlas/BounceGIRasterizer;IIJJJJJJJJJJJLorg/ITsMagic/Atlas/BounceGIRasterizer$k;JJJLorg/ITsMagic/Atlas/BounceGIRasterizer$i;FLorg/ITsMagic/Atlas/BounceGIRasterizer$d;LBb/b;JZLorg/ITsMagic/Atlas/BounceGIRasterizer$h;Lorg/ITsMagic/Atlas/a$c;Ljava/util/concurrent/atomic/AtomicInteger;I)V

    invoke-static/range {v77 .. v77}, LO9/b;->c(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object/from16 v15, p0

    move-object/from16 v13, p2

    move-object/from16 v14, p8

    move-object/from16 v11, p9

    move-object v10, v0

    move/from16 v3, v78

    move/from16 v9, v79

    move/from16 v12, v80

    move-object/from16 v0, p1

    goto :goto_0

    :cond_3
    move/from16 v79, v9

    move-object v0, v10

    move/from16 v80, v12

    :goto_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-ge v9, v1, :cond_4

    :try_start_0
    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/concurrent/Future;

    invoke-interface {v1}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Failed to rasterize native GI chunk"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_4
    move-object/from16 v1, p0

    move-object/from16 v0, p7

    move-object/from16 v2, p8

    invoke-virtual {v1, v0, v2}, Lorg/ITsMagic/Atlas/BounceGIRasterizer;->g(LBb/b;Lorg/ITsMagic/Atlas/BounceGIRasterizer$g;)V

    move-object/from16 v0, p9

    if-eqz v0, :cond_5

    move/from16 v2, v80

    invoke-virtual {v1, v2, v2, v0}, Lorg/ITsMagic/Atlas/BounceGIRasterizer;->x(IILorg/ITsMagic/Atlas/a$c;)V

    :cond_5
    return-void
.end method

.method public final w(Lorg/ITsMagic/Atlas/BounceGIRasterizer$k;Lorg/ITsMagic/Atlas/BounceGIRasterizer$j;FLorg/ITsMagic/Atlas/BounceGIRasterizer$d;ZLBb/b;Lorg/ITsMagic/Atlas/a$c;)V
    .locals 20
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
            "maxBounceDistance",
            "config",
            "useGiVisibility",
            "gi",
            "listener"
        }
    .end annotation

    move-object/from16 v0, p1

    move-object/from16 v14, p7

    iget v15, v0, Lorg/ITsMagic/Atlas/BounceGIRasterizer$k;->m:I

    const-string v1, ""

    const/4 v13, 0x0

    if-gtz v15, :cond_1

    if-eqz v14, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-interface {v14, v13, v13, v0, v1}, Lorg/ITsMagic/Atlas/a$c;->a(IIFLjava/lang/String;)V

    :cond_0
    return-void

    :cond_1
    invoke-static {}, LO9/b;->a()I

    move-result v2

    add-int/lit8 v2, v2, -0x2

    const/4 v3, 0x1

    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-static {v2, v15}, Ljava/lang/Math;->min(II)I

    move-result v2

    int-to-double v4, v15

    int-to-double v6, v2

    div-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-int v4, v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v16

    if-eqz v14, :cond_2

    const/4 v3, 0x0

    invoke-interface {v14, v13, v15, v3, v1}, Lorg/ITsMagic/Atlas/a$c;->a(IIFLjava/lang/String;)V

    :cond_2
    new-instance v17, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct/range {v17 .. v17}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12, v2}, Ljava/util/ArrayList;-><init>(I)V

    move v3, v13

    :goto_0
    if-ge v3, v15, :cond_3

    add-int v11, v3, v16

    invoke-static {v15, v11}, Ljava/lang/Math;->min(II)I

    move-result v4

    new-instance v10, Lorg/ITsMagic/Atlas/BounceGIRasterizer$a;

    move-object v1, v10

    move-object/from16 v2, p0

    move-object/from16 v5, p1

    move-object/from16 v6, p2

    move/from16 v7, p3

    move-object/from16 v8, p4

    move/from16 v9, p5

    move-object v0, v10

    move-object/from16 v10, p6

    move/from16 v18, v11

    move-object/from16 v11, p7

    move-object v14, v12

    move-object/from16 v12, v17

    move/from16 v19, v13

    move v13, v15

    invoke-direct/range {v1 .. v13}, Lorg/ITsMagic/Atlas/BounceGIRasterizer$a;-><init>(Lorg/ITsMagic/Atlas/BounceGIRasterizer;IILorg/ITsMagic/Atlas/BounceGIRasterizer$k;Lorg/ITsMagic/Atlas/BounceGIRasterizer$j;FLorg/ITsMagic/Atlas/BounceGIRasterizer$d;ZLBb/b;Lorg/ITsMagic/Atlas/a$c;Ljava/util/concurrent/atomic/AtomicInteger;I)V

    invoke-interface {v14, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, p1

    move-object v12, v14

    move/from16 v3, v18

    move/from16 v13, v19

    move-object/from16 v14, p7

    goto :goto_0

    :cond_3
    move-object v14, v12

    move/from16 v19, v13

    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    :goto_1
    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v1

    if-ge v13, v1, :cond_4

    invoke-interface {v14, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Runnable;

    new-instance v2, LUg/i;

    invoke-direct {v2, v1}, LUg/i;-><init>(Ljava/lang/Runnable;)V

    invoke-static {v2}, LO9/b;->c(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v13, v13, 0x1

    goto :goto_1

    :cond_4
    move/from16 v13, v19

    :goto_2
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-ge v13, v1, :cond_5

    :try_start_0
    invoke-interface {v0, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/concurrent/Future;

    invoke-interface {v1}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v13, v13, 0x1

    goto :goto_2

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Failed to rasterize GI chunk"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_5
    move-object/from16 v0, p7

    move-object/from16 v1, p0

    if-eqz v0, :cond_6

    invoke-virtual {v1, v15, v15, v0}, Lorg/ITsMagic/Atlas/BounceGIRasterizer;->x(IILorg/ITsMagic/Atlas/a$c;)V

    :cond_6
    return-void
.end method

.method public final x(IILorg/ITsMagic/Atlas/a$c;)V
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

.method public final y(LBb/b;FFI)F
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "texture",
            "x",
            "y",
            "channel"
        }
    .end annotation

    invoke-virtual {p1}, LBb/b;->p()I

    move-result v0

    invoke-virtual {p1}, LBb/b;->l()I

    move-result v1

    if-lez v0, :cond_1

    if-gtz v1, :cond_0

    goto :goto_0

    :cond_0
    float-to-double v2, p2

    invoke-static {v2, v3}, Ljava/lang/Math;->floor(D)D

    move-result-wide v2

    double-to-int v2, v2

    add-int/lit8 v0, v0, -0x1

    const/4 v3, 0x0

    invoke-static {v3, v2, v0}, LNc/b;->F(III)I

    move-result v2

    float-to-double v4, p3

    invoke-static {v4, v5}, Ljava/lang/Math;->floor(D)D

    move-result-wide v4

    double-to-int v4, v4

    add-int/lit8 v1, v1, -0x1

    invoke-static {v3, v4, v1}, LNc/b;->F(III)I

    move-result v4

    add-int/lit8 v5, v2, 0x1

    invoke-static {v3, v5, v0}, LNc/b;->F(III)I

    move-result v0

    add-int/lit8 v5, v4, 0x1

    invoke-static {v3, v5, v1}, LNc/b;->F(III)I

    move-result v1

    int-to-float v3, v2

    sub-float/2addr p2, v3

    invoke-virtual {p0, p2}, Lorg/ITsMagic/Atlas/BounceGIRasterizer;->k(F)F

    move-result p2

    int-to-float v3, v4

    sub-float/2addr p3, v3

    invoke-virtual {p0, p3}, Lorg/ITsMagic/Atlas/BounceGIRasterizer;->k(F)F

    move-result p3

    invoke-virtual {p0, p1, v2, v4, p4}, Lorg/ITsMagic/Atlas/BounceGIRasterizer;->p(LBb/b;III)F

    move-result v3

    invoke-virtual {p0, p1, v0, v4, p4}, Lorg/ITsMagic/Atlas/BounceGIRasterizer;->p(LBb/b;III)F

    move-result v4

    invoke-virtual {p0, p1, v2, v1, p4}, Lorg/ITsMagic/Atlas/BounceGIRasterizer;->p(LBb/b;III)F

    move-result v2

    invoke-virtual {p0, p1, v0, v1, p4}, Lorg/ITsMagic/Atlas/BounceGIRasterizer;->p(LBb/b;III)F

    move-result p1

    sub-float/2addr v4, v3

    mul-float/2addr v4, p2

    add-float/2addr v3, v4

    sub-float/2addr p1, v2

    mul-float/2addr p1, p2

    add-float/2addr v2, p1

    sub-float/2addr v2, v3

    mul-float/2addr v2, p3

    add-float/2addr v3, v2

    return v3

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public final z(IIIIFFFLBb/b;LBb/b;LBb/b;Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;Lorg/ITsMagic/Atlas/BounceGIRasterizer$k;FLcom/itsmagic/engine/Engines/Engine/Vector/Vector3;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;FFFFFFFFFFFFFFFFFFFFF)V
    .locals 21
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
            "giWidth",
            "giHeight",
            "w0",
            "w1",
            "w2",
            "direct",
            "albedo",
            "emissive",
            "surfelGrid",
            "surfels",
            "bounceIntensity",
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
            "fnz"
        }
    .end annotation

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move-object/from16 v3, p8

    move-object/from16 v4, p9

    move-object/from16 v5, p10

    move-object/from16 v6, p11

    move-object/from16 v7, p12

    move-object/from16 v8, p15

    invoke-virtual/range {p8 .. p8}, LBb/b;->p()I

    move-result v9

    invoke-virtual/range {p8 .. p8}, LBb/b;->l()I

    move-result v10

    const/4 v12, 0x1

    if-le v9, v12, :cond_0

    int-to-float v13, v1

    add-int/lit8 v14, p3, -0x1

    invoke-static {v12, v14}, Ljava/lang/Math;->max(II)I

    move-result v14

    int-to-float v14, v14

    div-float/2addr v13, v14

    sub-int/2addr v9, v12

    int-to-float v9, v9

    mul-float/2addr v13, v9

    goto :goto_0

    :cond_0
    const/4 v13, 0x0

    :goto_0
    if-le v10, v12, :cond_1

    int-to-float v9, v2

    add-int/lit8 v14, p4, -0x1

    invoke-static {v12, v14}, Ljava/lang/Math;->max(II)I

    move-result v14

    int-to-float v14, v14

    div-float/2addr v9, v14

    sub-int/2addr v10, v12

    int-to-float v10, v10

    mul-float/2addr v9, v10

    goto :goto_1

    :cond_1
    const/4 v9, 0x0

    :goto_1
    mul-float v10, p16, p5

    mul-float v14, p19, p6

    add-float/2addr v10, v14

    mul-float v14, p22, p7

    add-float/2addr v10, v14

    mul-float v14, p17, p5

    mul-float v15, p20, p6

    add-float/2addr v14, v15

    mul-float v15, p23, p7

    add-float/2addr v14, v15

    mul-float v15, p18, p5

    mul-float v16, p21, p6

    add-float v15, v15, v16

    mul-float v16, p24, p7

    add-float v15, v15, v16

    move-object/from16 v11, p14

    invoke-virtual {v11, v10, v14, v15}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->set(FFF)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    mul-float v10, p25, p5

    mul-float v14, p28, p6

    add-float/2addr v10, v14

    mul-float v14, p31, p7

    add-float/2addr v10, v14

    mul-float v14, p26, p5

    mul-float v15, p29, p6

    add-float/2addr v14, v15

    mul-float v15, p32, p7

    add-float/2addr v14, v15

    mul-float v15, p27, p5

    mul-float v17, p30, p6

    add-float v15, v15, v17

    mul-float v17, p33, p7

    add-float v15, v15, v17

    invoke-virtual {v8, v10, v14, v15}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->set(FFF)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual/range {p15 .. p15}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->lengthSquared()F

    move-result v10

    const v14, 0x322bcc77    # 1.0E-8f

    cmpg-float v10, v10, v14

    if-gtz v10, :cond_2

    move/from16 v10, p34

    move/from16 v14, p35

    move/from16 v15, p36

    invoke-virtual {v8, v10, v14, v15}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->set(FFF)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    goto :goto_2

    :cond_2
    invoke-virtual/range {p15 .. p15}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->normalizeLocal()Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    :goto_2
    const/4 v10, 0x0

    invoke-virtual {v0, v3, v13, v9, v10}, Lorg/ITsMagic/Atlas/BounceGIRasterizer;->y(LBb/b;FFI)F

    move-result v14

    invoke-virtual {v0, v3, v13, v9, v12}, Lorg/ITsMagic/Atlas/BounceGIRasterizer;->y(LBb/b;FFI)F

    move-result v15

    const/4 v12, 0x2

    invoke-virtual {v0, v3, v13, v9, v12}, Lorg/ITsMagic/Atlas/BounceGIRasterizer;->y(LBb/b;FFI)F

    move-result v3

    invoke-virtual {v0, v4, v13, v9, v10}, Lorg/ITsMagic/Atlas/BounceGIRasterizer;->y(LBb/b;FFI)F

    move-result v18

    const/4 v10, 0x1

    invoke-virtual {v0, v4, v13, v9, v10}, Lorg/ITsMagic/Atlas/BounceGIRasterizer;->y(LBb/b;FFI)F

    move-result v19

    invoke-virtual {v0, v4, v13, v9, v12}, Lorg/ITsMagic/Atlas/BounceGIRasterizer;->y(LBb/b;FFI)F

    move-result v4

    if-eqz v5, :cond_3

    const/4 v12, 0x0

    invoke-virtual {v0, v5, v13, v9, v12}, Lorg/ITsMagic/Atlas/BounceGIRasterizer;->y(LBb/b;FFI)F

    move-result v12

    goto :goto_3

    :cond_3
    const/4 v12, 0x0

    :goto_3
    if-eqz v5, :cond_4

    invoke-virtual {v0, v5, v13, v9, v10}, Lorg/ITsMagic/Atlas/BounceGIRasterizer;->y(LBb/b;FFI)F

    move-result v20

    goto :goto_4

    :cond_4
    const/16 v20, 0x0

    :goto_4
    if-eqz v5, :cond_5

    const/4 v10, 0x2

    invoke-virtual {v0, v5, v13, v9, v10}, Lorg/ITsMagic/Atlas/BounceGIRasterizer;->y(LBb/b;FFI)F

    move-result v5

    goto :goto_5

    :cond_5
    const/4 v5, 0x0

    :goto_5
    mul-int v9, v2, p3

    add-int/2addr v9, v1

    invoke-virtual {v6, v9}, Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;->get(I)I

    move-result v10

    if-gez v10, :cond_6

    iget v10, v7, Lorg/ITsMagic/Atlas/BounceGIRasterizer$k;->m:I

    invoke-virtual {v6, v9, v10}, Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;->set(II)V

    iget v6, v7, Lorg/ITsMagic/Atlas/BounceGIRasterizer$k;->m:I

    const/4 v9, 0x1

    add-int/2addr v6, v9

    iput v6, v7, Lorg/ITsMagic/Atlas/BounceGIRasterizer$k;->m:I

    :cond_6
    iget-object v6, v7, Lorg/ITsMagic/Atlas/BounceGIRasterizer$k;->k:Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;

    invoke-virtual {v6, v10, v1}, Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;->set(II)V

    iget-object v1, v7, Lorg/ITsMagic/Atlas/BounceGIRasterizer$k;->l:Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;

    invoke-virtual {v1, v10, v2}, Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;->set(II)V

    iget-object v1, v7, Lorg/ITsMagic/Atlas/BounceGIRasterizer$k;->a:Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    invoke-virtual/range {p14 .. p14}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getX()F

    move-result v2

    invoke-virtual {v1, v10, v2}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->set(IF)V

    iget-object v1, v7, Lorg/ITsMagic/Atlas/BounceGIRasterizer$k;->b:Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    invoke-virtual/range {p14 .. p14}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getY()F

    move-result v2

    invoke-virtual {v1, v10, v2}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->set(IF)V

    iget-object v1, v7, Lorg/ITsMagic/Atlas/BounceGIRasterizer$k;->c:Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    invoke-virtual/range {p14 .. p14}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getZ()F

    move-result v2

    invoke-virtual {v1, v10, v2}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->set(IF)V

    iget-object v1, v7, Lorg/ITsMagic/Atlas/BounceGIRasterizer$k;->d:Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    invoke-virtual/range {p15 .. p15}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getX()F

    move-result v2

    invoke-virtual {v1, v10, v2}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->set(IF)V

    iget-object v1, v7, Lorg/ITsMagic/Atlas/BounceGIRasterizer$k;->e:Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    invoke-virtual/range {p15 .. p15}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getY()F

    move-result v2

    invoke-virtual {v1, v10, v2}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->set(IF)V

    iget-object v1, v7, Lorg/ITsMagic/Atlas/BounceGIRasterizer$k;->f:Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    invoke-virtual/range {p15 .. p15}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getZ()F

    move-result v2

    invoke-virtual {v1, v10, v2}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->set(IF)V

    move/from16 v1, p13

    const/4 v2, 0x0

    invoke-static {v2, v1}, Ljava/lang/Math;->max(FF)F

    move-result v1

    mul-float v14, v14, v18

    mul-float/2addr v14, v1

    const v2, 0x3dcccccd    # 0.1f

    mul-float/2addr v12, v2

    add-float/2addr v14, v12

    mul-float v15, v15, v19

    mul-float/2addr v15, v1

    mul-float v20, v20, v2

    add-float v15, v15, v20

    mul-float/2addr v3, v4

    mul-float/2addr v3, v1

    mul-float/2addr v5, v2

    add-float/2addr v3, v5

    iget-object v1, v7, Lorg/ITsMagic/Atlas/BounceGIRasterizer$k;->g:Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    invoke-virtual {v1, v10, v14}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->set(IF)V

    iget-object v1, v7, Lorg/ITsMagic/Atlas/BounceGIRasterizer$k;->h:Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    invoke-virtual {v1, v10, v15}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->set(IF)V

    iget-object v1, v7, Lorg/ITsMagic/Atlas/BounceGIRasterizer$k;->i:Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    invoke-virtual {v1, v10, v3}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->set(IF)V

    iget-object v1, v7, Lorg/ITsMagic/Atlas/BounceGIRasterizer$k;->j:Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    const v2, 0x3e59b3d0    # 0.2126f

    mul-float/2addr v14, v2

    const v2, 0x3f371759    # 0.7152f

    mul-float/2addr v15, v2

    add-float/2addr v14, v15

    const v2, 0x3d93dd98    # 0.0722f

    mul-float/2addr v3, v2

    add-float/2addr v14, v3

    invoke-virtual {v1, v10, v14}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->set(IF)V

    return-void
.end method
