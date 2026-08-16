.class public Lwn/B;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:F = 1.0E-5f

.field public static final b:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x18

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lwn/B;->b:[I

    return-void

    :array_0
    .array-data 4
        0x0
        0x1
        0x0
        0x2
        0x0
        0x4
        0x1
        0x3
        0x1
        0x5
        0x2
        0x3
        0x2
        0x6
        0x3
        0x7
        0x4
        0x5
        0x4
        0x6
        0x5
        0x7
        0x6
        0x7
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static A(Lwn/h;Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;IILwn/N;)V
    .locals 30
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
            "hf",
            "vertices",
            "triangles",
            "area",
            "flagMergeThr",
            "ctx"
        }
    .end annotation

    move-object/from16 v6, p1

    move-object/from16 v7, p2

    move-object/from16 v8, p5

    const-string v9, "RASTERIZE_CONVEX"

    invoke-virtual {v8, v9}, Lwn/N;->f(Ljava/lang/String;)V

    const/4 v0, 0x6

    new-array v10, v0, [F

    const/4 v11, 0x0

    invoke-virtual {v6, v11}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->get(I)F

    move-result v0

    aput v0, v10, v11

    const/4 v12, 0x1

    invoke-virtual {v6, v12}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->get(I)F

    move-result v0

    aput v0, v10, v12

    const/4 v13, 0x2

    invoke-virtual {v6, v13}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->get(I)F

    move-result v0

    aput v0, v10, v13

    invoke-virtual {v6, v11}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->get(I)F

    move-result v0

    const/4 v14, 0x3

    aput v0, v10, v14

    invoke-virtual {v6, v12}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->get(I)F

    move-result v0

    const/4 v1, 0x4

    aput v0, v10, v1

    invoke-virtual {v6, v13}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->get(I)F

    move-result v0

    const/4 v2, 0x5

    aput v0, v10, v2

    move v0, v11

    :goto_0
    invoke-virtual/range {p1 .. p1}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->capacity()I

    move-result v3

    if-ge v0, v3, :cond_0

    aget v3, v10, v11

    invoke-virtual {v6, v0}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->get(I)F

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->min(FF)F

    move-result v3

    aput v3, v10, v11

    aget v3, v10, v12

    add-int/lit8 v4, v0, 0x1

    invoke-virtual {v6, v4}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->get(I)F

    move-result v5

    invoke-static {v3, v5}, Ljava/lang/Math;->min(FF)F

    move-result v3

    aput v3, v10, v12

    aget v3, v10, v13

    add-int/lit8 v5, v0, 0x2

    invoke-virtual {v6, v5}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->get(I)F

    move-result v15

    invoke-static {v3, v15}, Ljava/lang/Math;->min(FF)F

    move-result v3

    aput v3, v10, v13

    aget v3, v10, v14

    invoke-virtual {v6, v0}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->get(I)F

    move-result v15

    invoke-static {v3, v15}, Ljava/lang/Math;->max(FF)F

    move-result v3

    aput v3, v10, v14

    aget v3, v10, v1

    invoke-virtual {v6, v4}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->get(I)F

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(FF)F

    move-result v3

    aput v3, v10, v1

    aget v3, v10, v2

    invoke-virtual {v6, v5}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->get(I)F

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(FF)F

    move-result v3

    aput v3, v10, v2

    add-int/2addr v0, v14

    goto :goto_0

    :cond_0
    invoke-virtual/range {p2 .. p2}, Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;->capacity()I

    move-result v0

    new-array v2, v13, [I

    aput v1, v2, v12

    aput v0, v2, v11

    sget-object v0, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-static {v0, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v2

    move-object v15, v2

    check-cast v15, [[F

    invoke-virtual/range {p2 .. p2}, Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;->capacity()I

    move-result v2

    div-int/2addr v2, v14

    new-array v3, v13, [I

    aput v1, v3, v12

    aput v2, v3, v11

    invoke-static {v0, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, [[F

    move v4, v11

    move/from16 v16, v4

    :goto_1
    invoke-virtual/range {p2 .. p2}, Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;->capacity()I

    move-result v0

    if-ge v4, v0, :cond_1

    invoke-virtual {v7, v4}, Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;->get(I)I

    move-result v0

    mul-int/lit8 v3, v0, 0x3

    add-int/lit8 v2, v4, 0x1

    invoke-virtual {v7, v2}, Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;->get(I)I

    move-result v0

    mul-int/lit8 v1, v0, 0x3

    add-int/lit8 v0, v4, 0x2

    invoke-virtual {v7, v0}, Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;->get(I)I

    move-result v17

    mul-int/lit8 v11, v17, 0x3

    invoke-virtual {v6, v1}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->get(I)F

    move-result v17

    invoke-virtual {v6, v3}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->get(I)F

    move-result v18

    sub-float v17, v17, v18

    add-int/lit8 v14, v1, 0x1

    invoke-virtual {v6, v14}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->get(I)F

    move-result v19

    add-int/lit8 v13, v3, 0x1

    invoke-virtual {v6, v13}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->get(I)F

    move-result v21

    sub-float v19, v19, v21

    const/16 v20, 0x2

    add-int/lit8 v12, v1, 0x2

    invoke-virtual {v6, v12}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->get(I)F

    move-result v22

    add-int/lit8 v8, v3, 0x2

    invoke-virtual {v6, v8}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->get(I)F

    move-result v23

    sub-float v22, v22, v23

    move/from16 v23, v0

    move/from16 v24, v2

    const/4 v0, 0x3

    new-array v2, v0, [F

    const/4 v0, 0x0

    aput v17, v2, v0

    const/4 v0, 0x1

    aput v19, v2, v0

    aput v22, v2, v20

    invoke-virtual {v6, v11}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->get(I)F

    move-result v17

    invoke-virtual {v6, v3}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->get(I)F

    move-result v19

    sub-float v17, v17, v19

    move-object/from16 v19, v5

    add-int/lit8 v5, v11, 0x1

    invoke-virtual {v6, v5}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->get(I)F

    move-result v21

    invoke-virtual {v6, v13}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->get(I)F

    move-result v22

    sub-float v21, v21, v22

    add-int/lit8 v0, v11, 0x2

    invoke-virtual {v6, v0}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->get(I)F

    move-result v25

    invoke-virtual {v6, v8}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->get(I)F

    move-result v26

    sub-float v25, v25, v26

    move-object/from16 v26, v9

    move-object/from16 v27, v10

    const/4 v9, 0x3

    new-array v10, v9, [F

    const/4 v9, 0x0

    aput v17, v10, v9

    const/4 v9, 0x1

    aput v21, v10, v9

    aput v25, v10, v20

    invoke-virtual {v6, v11}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->get(I)F

    move-result v9

    invoke-virtual {v6, v1}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->get(I)F

    move-result v17

    sub-float v9, v9, v17

    invoke-virtual {v6, v5}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->get(I)F

    move-result v17

    invoke-virtual {v6, v14}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->get(I)F

    move-result v22

    sub-float v17, v17, v22

    invoke-virtual {v6, v0}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->get(I)F

    move-result v22

    invoke-virtual {v6, v12}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->get(I)F

    move-result v25

    sub-float v22, v22, v25

    move/from16 v25, v1

    const/4 v1, 0x3

    new-array v7, v1, [F

    const/4 v1, 0x0

    aput v9, v7, v1

    const/4 v1, 0x1

    aput v17, v7, v1

    const/4 v1, 0x2

    aput v22, v7, v1

    invoke-virtual {v6, v3}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->get(I)F

    move-result v1

    invoke-virtual {v6, v11}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->get(I)F

    move-result v9

    sub-float/2addr v1, v9

    invoke-virtual {v6, v13}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->get(I)F

    move-result v9

    invoke-virtual {v6, v5}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->get(I)F

    move-result v5

    sub-float/2addr v9, v5

    invoke-virtual {v6, v8}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->get(I)F

    move-result v5

    invoke-virtual {v6, v0}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->get(I)F

    move-result v17

    sub-float v5, v5, v17

    move/from16 v17, v0

    move/from16 v22, v12

    const/4 v0, 0x3

    new-array v12, v0, [F

    const/4 v0, 0x0

    aput v1, v12, v0

    const/4 v0, 0x1

    aput v9, v12, v0

    const/4 v0, 0x2

    aput v5, v12, v0

    move/from16 v5, v17

    move/from16 v9, v23

    move-object v0, v15

    move/from16 v17, v25

    move v1, v4

    move/from16 v23, v24

    move/from16 v24, v3

    move-object v3, v10

    move v10, v4

    move-object/from16 v4, p1

    move/from16 v29, v5

    move-object/from16 v28, v19

    move/from16 v5, v24

    invoke-static/range {v0 .. v5}, Lwn/B;->v([[FI[F[FLcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;I)V

    aget-object v2, v15, v10

    move/from16 v1, v23

    move-object v3, v7

    move/from16 v5, v17

    invoke-static/range {v0 .. v5}, Lwn/B;->v([[FI[F[FLcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;I)V

    aget-object v2, v15, v10

    move v1, v9

    move-object v3, v12

    move v5, v11

    invoke-static/range {v0 .. v5}, Lwn/B;->v([[FI[F[FLcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;I)V

    move/from16 v0, v24

    invoke-virtual {v6, v0}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->get(I)F

    move-result v1

    aget-object v2, v15, v23

    const/4 v3, 0x0

    aget v2, v2, v3

    mul-float/2addr v1, v2

    invoke-virtual {v6, v13}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->get(I)F

    move-result v2

    aget-object v3, v15, v23

    const/4 v4, 0x1

    aget v3, v3, v4

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    invoke-virtual {v6, v8}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->get(I)F

    move-result v2

    aget-object v3, v15, v23

    const/4 v4, 0x2

    aget v5, v3, v4

    mul-float/2addr v2, v5

    add-float/2addr v1, v2

    const/4 v2, 0x3

    aget v4, v3, v2

    sub-float/2addr v1, v4

    const/high16 v2, 0x3f800000    # 1.0f

    div-float v1, v2, v1

    const/4 v7, 0x0

    aget v12, v3, v7

    mul-float/2addr v12, v1

    aput v12, v3, v7

    const/4 v12, 0x1

    aget v13, v3, v12

    mul-float/2addr v13, v1

    aput v13, v3, v12

    mul-float/2addr v5, v1

    const/4 v13, 0x2

    aput v5, v3, v13

    mul-float/2addr v4, v1

    const/4 v1, 0x3

    aput v4, v3, v1

    move/from16 v1, v17

    invoke-virtual {v6, v1}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->get(I)F

    move-result v3

    aget-object v4, v15, v9

    aget v4, v4, v7

    mul-float/2addr v3, v4

    invoke-virtual {v6, v14}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->get(I)F

    move-result v4

    aget-object v5, v15, v9

    aget v5, v5, v12

    mul-float/2addr v4, v5

    add-float/2addr v3, v4

    move/from16 v4, v22

    invoke-virtual {v6, v4}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->get(I)F

    move-result v5

    aget-object v7, v15, v9

    const/4 v9, 0x2

    aget v12, v7, v9

    mul-float/2addr v5, v12

    add-float/2addr v3, v5

    const/4 v5, 0x3

    aget v9, v7, v5

    sub-float/2addr v3, v9

    div-float/2addr v2, v3

    const/4 v3, 0x0

    aget v5, v7, v3

    mul-float/2addr v5, v2

    aput v5, v7, v3

    const/4 v3, 0x1

    aget v5, v7, v3

    mul-float/2addr v5, v2

    aput v5, v7, v3

    mul-float/2addr v12, v2

    const/4 v3, 0x2

    aput v12, v7, v3

    mul-float/2addr v9, v2

    const/4 v2, 0x3

    aput v9, v7, v2

    move-object/from16 v2, v28

    aget-object v3, v2, v16

    invoke-virtual {v6, v0}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->get(I)F

    move-result v5

    invoke-virtual {v6, v1}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->get(I)F

    move-result v7

    invoke-static {v5, v7}, Ljava/lang/Math;->min(FF)F

    move-result v5

    invoke-virtual {v6, v11}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->get(I)F

    move-result v7

    invoke-static {v5, v7}, Ljava/lang/Math;->min(FF)F

    move-result v5

    const/4 v7, 0x0

    aput v5, v3, v7

    aget-object v3, v2, v16

    invoke-virtual {v6, v8}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->get(I)F

    move-result v5

    invoke-virtual {v6, v4}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->get(I)F

    move-result v9

    invoke-static {v5, v9}, Ljava/lang/Math;->min(FF)F

    move-result v5

    move/from16 v13, v29

    invoke-virtual {v6, v13}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->get(I)F

    move-result v9

    invoke-static {v5, v9}, Ljava/lang/Math;->min(FF)F

    move-result v5

    const/4 v9, 0x1

    aput v5, v3, v9

    aget-object v3, v2, v16

    invoke-virtual {v6, v0}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->get(I)F

    move-result v0

    invoke-virtual {v6, v1}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->get(I)F

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    invoke-virtual {v6, v11}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->get(I)F

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    const/4 v1, 0x2

    aput v0, v3, v1

    aget-object v0, v2, v16

    invoke-virtual {v6, v8}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->get(I)F

    move-result v3

    invoke-virtual {v6, v4}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->get(I)F

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(FF)F

    move-result v3

    invoke-virtual {v6, v13}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->get(I)F

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(FF)F

    move-result v3

    const/4 v4, 0x3

    aput v3, v0, v4

    add-int/lit8 v0, v10, 0x3

    const/4 v3, 0x1

    add-int/lit8 v16, v16, 0x1

    move-object/from16 v8, p5

    move v13, v1

    move-object v5, v2

    move v12, v3

    move v14, v4

    move v11, v7

    move-object/from16 v9, v26

    move-object/from16 v10, v27

    move-object/from16 v7, p2

    move v4, v0

    goto/16 :goto_1

    :cond_1
    move-object v2, v5

    move-object/from16 v26, v9

    move-object/from16 v27, v10

    new-instance v0, Lwn/w;

    move-object/from16 v1, p2

    invoke-direct {v0, v1, v6, v15, v2}, Lwn/w;-><init>(Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;[[F[[F)V

    move-object/from16 v1, p0

    move/from16 v2, p3

    move/from16 v3, p4

    move-object/from16 v4, v27

    invoke-static {v1, v4, v2, v3, v0}, Lwn/B;->x(Lwn/h;[FIILjava/util/function/Function;)V

    move-object/from16 v0, p5

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lwn/N;->g(Ljava/lang/String;)V

    return-void
.end method

.method public static B(Lwn/h;[F[FFIILwn/N;)V
    .locals 15
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
            "hf",
            "start",
            "end",
            "radius",
            "area",
            "flagMergeThr",
            "ctx"
        }
    .end annotation

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move/from16 v2, p3

    move-object/from16 v3, p6

    const-string v4, "RASTERIZE_CYLINDER"

    invoke-virtual {v3, v4}, Lwn/N;->f(Ljava/lang/String;)V

    const/4 v5, 0x0

    aget v6, v0, v5

    aget v7, v1, v5

    invoke-static {v6, v7}, Ljava/lang/Math;->min(FF)F

    move-result v6

    sub-float/2addr v6, v2

    const/4 v7, 0x1

    aget v8, v0, v7

    aget v9, v1, v7

    invoke-static {v8, v9}, Ljava/lang/Math;->min(FF)F

    move-result v8

    sub-float/2addr v8, v2

    const/4 v9, 0x2

    aget v10, v0, v9

    aget v11, v1, v9

    invoke-static {v10, v11}, Ljava/lang/Math;->min(FF)F

    move-result v10

    sub-float/2addr v10, v2

    aget v11, v0, v5

    aget v12, v1, v5

    invoke-static {v11, v12}, Ljava/lang/Math;->max(FF)F

    move-result v11

    add-float/2addr v11, v2

    aget v12, v0, v7

    aget v13, v1, v7

    invoke-static {v12, v13}, Ljava/lang/Math;->max(FF)F

    move-result v12

    add-float/2addr v12, v2

    aget v13, v0, v9

    aget v14, v1, v9

    invoke-static {v13, v14}, Ljava/lang/Math;->max(FF)F

    move-result v13

    add-float/2addr v13, v2

    const/4 v14, 0x6

    new-array v14, v14, [F

    aput v6, v14, v5

    aput v8, v14, v7

    aput v10, v14, v9

    const/4 v6, 0x3

    aput v11, v14, v6

    const/4 v8, 0x4

    aput v12, v14, v8

    const/4 v8, 0x5

    aput v13, v14, v8

    aget v8, v1, v5

    aget v10, v0, v5

    sub-float/2addr v8, v10

    aget v10, v1, v7

    aget v11, v0, v7

    sub-float/2addr v10, v11

    aget v11, v1, v9

    aget v12, v0, v9

    sub-float/2addr v11, v12

    new-array v6, v6, [F

    aput v8, v6, v5

    aput v10, v6, v7

    aput v11, v6, v9

    new-instance v5, Lwn/A;

    invoke-direct {v5, v0, v1, v6, v2}, Lwn/A;-><init>([F[F[FF)V

    move-object v0, p0

    move/from16 v1, p4

    move/from16 v2, p5

    invoke-static {p0, v14, v1, v2, v5}, Lwn/B;->x(Lwn/h;[FIILjava/util/function/Function;)V

    invoke-virtual {v3, v4}, Lwn/N;->g(Ljava/lang/String;)V

    return-void
.end method

.method public static C(Lwn/h;[FFIILwn/N;)V
    .locals 14
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
            "hf",
            "center",
            "radius",
            "area",
            "flagMergeThr",
            "ctx"
        }
    .end annotation

    move-object v0, p1

    move/from16 v1, p2

    move-object/from16 v2, p5

    const-string v3, "RASTERIZE_SPHERE"

    invoke-virtual {v2, v3}, Lwn/N;->f(Ljava/lang/String;)V

    const/4 v4, 0x0

    aget v5, v0, v4

    sub-float v6, v5, v1

    const/4 v7, 0x1

    aget v8, v0, v7

    sub-float v9, v8, v1

    const/4 v10, 0x2

    aget v11, v0, v10

    sub-float v12, v11, v1

    add-float/2addr v5, v1

    add-float/2addr v8, v1

    add-float/2addr v11, v1

    const/4 v13, 0x6

    new-array v13, v13, [F

    aput v6, v13, v4

    aput v9, v13, v7

    aput v12, v13, v10

    const/4 v4, 0x3

    aput v5, v13, v4

    const/4 v4, 0x4

    aput v8, v13, v4

    const/4 v4, 0x5

    aput v11, v13, v4

    new-instance v4, Lwn/x;

    invoke-direct {v4, p1, v1}, Lwn/x;-><init>([FF)V

    move-object v0, p0

    move/from16 v1, p3

    move/from16 v5, p4

    invoke-static {p0, v13, v1, v5, v4}, Lwn/B;->x(Lwn/h;[FIILjava/util/function/Function;)V

    invoke-virtual {v2, v3}, Lwn/N;->g(Ljava/lang/String;)V

    return-void
.end method

.method public static D([F[F[FF)[F
    .locals 17
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "point",
            "start",
            "axis",
            "radiusSqr"
        }
    .end annotation

    move-object/from16 v0, p2

    const/4 v1, 0x0

    aget v2, p0, v1

    aget v3, p1, v1

    sub-float/2addr v2, v3

    const/4 v3, 0x1

    aget v4, p0, v3

    aget v5, p1, v3

    sub-float/2addr v4, v5

    const/4 v5, 0x2

    aget v6, p0, v5

    aget v7, p1, v5

    sub-float/2addr v6, v7

    const/4 v7, 0x3

    new-array v7, v7, [F

    aput v2, v7, v1

    aput v4, v7, v3

    aput v6, v7, v5

    invoke-static {v7, v0}, Lwn/I;->h([F[F)F

    move-result v2

    aget v4, v0, v3

    invoke-static {v0, v0}, Lwn/I;->h([F[F)F

    move-result v0

    aget v6, v7, v3

    mul-float v8, v4, v4

    sub-float v8, v0, v8

    invoke-static {v7, v7}, Lwn/I;->h([F[F)F

    move-result v7

    sub-float v7, v7, p3

    mul-float v9, v0, v7

    mul-float v10, v2, v2

    sub-float/2addr v9, v10

    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    move-result v10

    const v11, 0x3727c5ac    # 1.0E-5f

    cmpg-float v10, v10, v11

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/high16 v13, 0x3f800000    # 1.0f

    if-gez v10, :cond_1

    cmpl-float v0, v9, v12

    if-lez v0, :cond_0

    return-object v11

    :cond_0
    neg-float v0, v6

    div-float/2addr v0, v13

    sub-float/2addr v4, v6

    div-float/2addr v4, v13

    aget v2, p0, v3

    invoke-static {v0, v4}, Ljava/lang/Math;->min(FF)F

    move-result v6

    add-float/2addr v2, v6

    aget v6, p0, v3

    invoke-static {v0, v4}, Ljava/lang/Math;->max(FF)F

    move-result v0

    add-float/2addr v6, v0

    new-array v0, v5, [F

    aput v2, v0, v1

    aput v6, v0, v3

    return-object v0

    :cond_1
    mul-float v10, v0, v6

    mul-float v14, v4, v2

    sub-float/2addr v10, v14

    mul-float v14, v10, v10

    mul-float/2addr v9, v8

    sub-float/2addr v14, v9

    cmpg-float v9, v14, v12

    if-gez v9, :cond_2

    return-object v11

    :cond_2
    float-to-double v14, v14

    invoke-static {v14, v15}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v14

    double-to-float v9, v14

    neg-float v10, v10

    sub-float v14, v10, v9

    div-float/2addr v14, v8

    add-float/2addr v10, v9

    div-float/2addr v10, v8

    mul-float v8, v14, v4

    add-float/2addr v8, v2

    cmpg-float v9, v8, v12

    const/high16 v15, 0x40000000    # 2.0f

    if-gez v9, :cond_3

    neg-float v8, v2

    div-float v14, v8, v4

    mul-float v8, v6, v15

    mul-float v9, v14, v13

    add-float/2addr v8, v9

    mul-float/2addr v8, v14

    add-float/2addr v8, v7

    cmpl-float v8, v8, v12

    if-lez v8, :cond_4

    return-object v11

    :cond_3
    cmpl-float v8, v8, v0

    if-lez v8, :cond_4

    sub-float v8, v0, v2

    div-float v14, v8, v4

    add-float v8, v7, v0

    mul-float v9, v2, v15

    sub-float/2addr v8, v9

    sub-float v9, v6, v4

    mul-float/2addr v9, v15

    mul-float v16, v14, v13

    add-float v9, v9, v16

    mul-float/2addr v9, v14

    add-float/2addr v8, v9

    cmpl-float v8, v8, v12

    if-lez v8, :cond_4

    return-object v11

    :cond_4
    mul-float v8, v10, v4

    add-float/2addr v8, v2

    cmpg-float v9, v8, v12

    if-gez v9, :cond_5

    neg-float v0, v2

    div-float v10, v0, v4

    mul-float/2addr v6, v15

    mul-float/2addr v13, v10

    add-float/2addr v6, v13

    mul-float/2addr v6, v10

    add-float/2addr v7, v6

    cmpl-float v0, v7, v12

    if-lez v0, :cond_6

    return-object v11

    :cond_5
    cmpl-float v8, v8, v0

    if-lez v8, :cond_6

    sub-float v8, v0, v2

    div-float v10, v8, v4

    add-float/2addr v7, v0

    mul-float/2addr v2, v15

    sub-float/2addr v7, v2

    sub-float/2addr v6, v4

    mul-float/2addr v6, v15

    mul-float/2addr v13, v10

    add-float/2addr v6, v13

    mul-float/2addr v6, v10

    add-float/2addr v7, v6

    cmpl-float v0, v7, v12

    if-lez v0, :cond_6

    return-object v11

    :cond_6
    aget v0, p0, v3

    invoke-static {v14, v10}, Ljava/lang/Math;->min(FF)F

    move-result v2

    add-float/2addr v0, v2

    aget v2, p0, v3

    invoke-static {v14, v10}, Ljava/lang/Math;->max(FF)F

    move-result v4

    add-float/2addr v2, v4

    new-array v4, v5, [F

    aput v0, v4, v1

    aput v2, v4, v3

    return-object v4
.end method

.method public static E([FI[[F)Ljava/lang/Float;
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "point",
            "plane",
            "planes"
        }
    .end annotation

    aget-object v0, p2, p1

    const/4 v1, 0x3

    aget v2, v0, v1

    invoke-static {v0, p0}, Lwn/I;->h([F[F)F

    move-result v0

    sub-float/2addr v2, v0

    aget-object v0, p2, p1

    const/4 v3, 0x1

    aget v0, v0, v3

    div-float/2addr v2, v0

    const/4 v0, 0x0

    aget v4, p0, v0

    aget v5, p0, v3

    add-float/2addr v5, v2

    const/4 v2, 0x2

    aget p0, p0, v2

    new-array v6, v1, [F

    aput v4, v6, v0

    aput v5, v6, v3

    aput p0, v6, v2

    add-int/lit8 p0, p1, 0x1

    aget-object v0, p2, p0

    invoke-static {v6, v0}, Lwn/I;->h([F[F)F

    move-result v0

    aget-object p0, p2, p0

    aget p0, p0, v1

    sub-float/2addr v0, p0

    const/4 p0, 0x0

    cmpg-float v4, v0, p0

    const/4 v5, 0x0

    if-ltz v4, :cond_3

    const/high16 v4, 0x3f800000    # 1.0f

    cmpl-float v7, v0, v4

    if-lez v7, :cond_0

    goto :goto_0

    :cond_0
    add-int/2addr p1, v2

    aget-object v2, p2, p1

    invoke-static {v6, v2}, Lwn/I;->h([F[F)F

    move-result v2

    aget-object p1, p2, p1

    aget p1, p1, v1

    sub-float/2addr v2, p1

    cmpg-float p1, v2, p0

    if-gez p1, :cond_1

    return-object v5

    :cond_1
    sub-float/2addr v4, v0

    sub-float/2addr v4, v2

    cmpg-float p0, v4, p0

    if-gez p0, :cond_2

    return-object v5

    :cond_2
    aget p0, v6, v3

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    return-object p0

    :cond_3
    :goto_0
    return-object v5
.end method

.method public static F([F[F[F[FF[F)[F
    .locals 3
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
            "rectangle",
            "start",
            "end",
            "axis",
            "radiusSqr",
            "s"
        }
    .end annotation

    const/4 v0, 0x0

    aget v1, p1, v0

    aget v2, p2, v0

    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v1

    aget v2, p0, v0

    cmpg-float v1, v1, v2

    if-gez v1, :cond_0

    invoke-static {p0, p1, p3, p4, v2}, Lwn/B;->G([F[F[FFF)[F

    move-result-object v1

    invoke-static {p5, v1}, Lwn/B;->t([F[F)[F

    move-result-object p5

    :cond_0
    aget v1, p1, v0

    aget v0, p2, v0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    const/4 v1, 0x2

    aget v2, p0, v1

    cmpl-float v0, v0, v2

    if-lez v0, :cond_1

    invoke-static {p0, p1, p3, p4, v2}, Lwn/B;->G([F[F[FFF)[F

    move-result-object v0

    invoke-static {p5, v0}, Lwn/B;->t([F[F)[F

    move-result-object p5

    :cond_1
    aget v0, p1, v1

    aget v2, p2, v1

    invoke-static {v0, v2}, Ljava/lang/Math;->min(FF)F

    move-result v0

    const/4 v2, 0x1

    aget v2, p0, v2

    cmpg-float v0, v0, v2

    if-gez v0, :cond_2

    invoke-static {p0, p1, p3, p4, v2}, Lwn/B;->J([F[F[FFF)[F

    move-result-object v0

    invoke-static {p5, v0}, Lwn/B;->t([F[F)[F

    move-result-object p5

    :cond_2
    aget v0, p1, v1

    aget p2, p2, v1

    invoke-static {v0, p2}, Ljava/lang/Math;->max(FF)F

    move-result p2

    const/4 v0, 0x3

    aget v0, p0, v0

    cmpl-float p2, p2, v0

    if-lez p2, :cond_3

    invoke-static {p0, p1, p3, p4, v0}, Lwn/B;->J([F[F[FFF)[F

    move-result-object p0

    invoke-static {p5, p0}, Lwn/B;->t([F[F)[F

    move-result-object p5

    :cond_3
    return-object p5
.end method

.method public static G([F[F[FFF)[F
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "rectangle",
            "start",
            "axis",
            "radiusSqr",
            "x"
        }
    .end annotation

    invoke-static {p0, p1, p2, p4}, Lwn/B;->H([F[F[FF)[F

    move-result-object p0

    invoke-static {p0, p1, p2, p3}, Lwn/B;->D([F[F[FF)[F

    move-result-object p0

    return-object p0
.end method

.method public static H([F[F[FF)[F
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "rectangle",
            "start",
            "direction",
            "x"
        }
    .end annotation

    const/4 v0, 0x0

    aget v1, p1, v0

    sub-float v1, p3, v1

    aget v2, p2, v0

    div-float/2addr v1, v2

    const/4 v2, 0x2

    aget p1, p1, v2

    aget p2, p2, v2

    mul-float/2addr v1, p2

    add-float/2addr p1, v1

    const/4 p2, 0x1

    aget v1, p0, p2

    const/4 v3, 0x3

    aget v4, p0, v3

    invoke-static {p1, v1, v4}, Lwn/B;->f(FFF)F

    move-result p1

    const/4 v1, 0x4

    aget p0, p0, v1

    new-array v1, v3, [F

    aput p3, v1, v0

    aput p0, v1, p2

    aput p1, v1, v2

    return-object v1
.end method

.method public static I([FFFFFFFF)Ljava/lang/Float;
    .locals 2
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
            "rectangle",
            "x",
            "y",
            "z",
            "dx",
            "dy",
            "dz",
            "slabX"
        }
    .end annotation

    add-float v0, p1, p4

    cmpg-float v1, p1, p7

    if-gez v1, :cond_0

    cmpl-float v1, v0, p7

    if-gtz v1, :cond_1

    :cond_0
    cmpl-float v1, p1, p7

    if-lez v1, :cond_2

    cmpg-float v0, v0, p7

    if-gez v0, :cond_2

    :cond_1
    sub-float/2addr p7, p1

    div-float/2addr p7, p4

    mul-float/2addr p6, p7

    add-float/2addr p3, p6

    const/4 p1, 0x1

    aget p1, p0, p1

    cmpl-float p1, p3, p1

    if-ltz p1, :cond_2

    const/4 p1, 0x3

    aget p0, p0, p1

    cmpg-float p0, p3, p0

    if-gtz p0, :cond_2

    mul-float/2addr p5, p7

    add-float/2addr p2, p5

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    return-object p0

    :cond_2
    const/4 p0, 0x0

    return-object p0
.end method

.method public static J([F[F[FFF)[F
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "rectangle",
            "start",
            "axis",
            "radiusSqr",
            "z"
        }
    .end annotation

    invoke-static {p0, p1, p2, p4}, Lwn/B;->K([F[F[FF)[F

    move-result-object p0

    invoke-static {p0, p1, p2, p3}, Lwn/B;->D([F[F[FF)[F

    move-result-object p0

    return-object p0
.end method

.method public static K([F[F[FF)[F
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "rectangle",
            "start",
            "direction",
            "z"
        }
    .end annotation

    const/4 v0, 0x2

    aget v1, p1, v0

    sub-float v1, p3, v1

    aget v2, p2, v0

    div-float/2addr v1, v2

    const/4 v2, 0x0

    aget p1, p1, v2

    aget p2, p2, v2

    mul-float/2addr v1, p2

    add-float/2addr p1, v1

    aget p2, p0, v2

    aget v1, p0, v0

    invoke-static {p1, p2, v1}, Lwn/B;->f(FFF)F

    move-result p1

    const/4 p2, 0x4

    aget p0, p0, p2

    const/4 p2, 0x3

    new-array p2, p2, [F

    aput p1, p2, v2

    const/4 p1, 0x1

    aput p0, p2, p1

    aput p3, p2, v0

    return-object p2
.end method

.method public static L([FFFFFFFF)Ljava/lang/Float;
    .locals 2
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
            "rectangle",
            "x",
            "y",
            "z",
            "dx",
            "dy",
            "dz",
            "slabZ"
        }
    .end annotation

    add-float v0, p3, p6

    cmpg-float v1, p3, p7

    if-gez v1, :cond_0

    cmpl-float v1, v0, p7

    if-gtz v1, :cond_1

    :cond_0
    cmpl-float v1, p3, p7

    if-lez v1, :cond_2

    cmpg-float v0, v0, p7

    if-gez v0, :cond_2

    :cond_1
    sub-float/2addr p7, p3

    div-float/2addr p7, p6

    mul-float/2addr p4, p7

    add-float/2addr p1, p4

    const/4 p3, 0x0

    aget p3, p0, p3

    cmpl-float p3, p1, p3

    if-ltz p3, :cond_2

    const/4 p3, 0x2

    aget p0, p0, p3

    cmpg-float p0, p1, p0

    if-gtz p0, :cond_2

    mul-float/2addr p5, p7

    add-float/2addr p2, p5

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    return-object p0

    :cond_2
    const/4 p0, 0x0

    return-object p0
.end method

.method public static synthetic a([FF[F)[F
    .locals 0

    invoke-static {p0, p1, p2}, Lwn/B;->r([FF[F)[F

    move-result-object p0

    return-object p0
.end method

.method public static synthetic b(Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;[[F[[F[F)[F
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lwn/B;->p(Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;[[F[[F[F)[F

    move-result-object p0

    return-object p0
.end method

.method public static synthetic c([F[F[FF[F)[F
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lwn/B;->o([F[F[FF[F)[F

    move-result-object p0

    return-object p0
.end method

.method public static synthetic d([F[[F[F)[F
    .locals 0

    invoke-static {p0, p1, p2}, Lwn/B;->n([F[[F[F)[F

    move-result-object p0

    return-object p0
.end method

.method public static synthetic e([F[F[FF[F)[F
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lwn/B;->q([F[F[FF[F)[F

    move-result-object p0

    return-object p0
.end method

.method public static f(FFF)F
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "v",
            "min",
            "max"
        }
    .end annotation

    invoke-static {p2, p0}, Ljava/lang/Math;->min(FF)F

    move-result p0

    invoke-static {p0, p1}, Ljava/lang/Math;->max(FF)F

    move-result p0

    return p0
.end method

.method public static g([FF[FI[[F)[F
    .locals 11
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "start",
            "radiusSqr",
            "s",
            "i",
            "rectangleOnPlane"
        }
    .end annotation

    const/4 v0, 0x1

    add-int/lit8 v1, p3, 0x1

    rem-int/lit8 v1, v1, 0x4

    aget-object v2, p4, p3

    const/4 v3, 0x0

    aget v4, v2, v3

    aget v5, p0, v3

    sub-float v5, v4, v5

    aget v6, v2, v0

    aget v7, p0, v0

    sub-float v7, v6, v7

    const/4 v8, 0x2

    aget v2, v2, v8

    aget p0, p0, v8

    sub-float p0, v2, p0

    const/4 v9, 0x3

    new-array v10, v9, [F

    aput v5, v10, v3

    aput v7, v10, v0

    aput p0, v10, v8

    aget-object p0, p4, v1

    aget v1, p0, v3

    sub-float/2addr v1, v4

    aget v4, p0, v0

    sub-float/2addr v4, v6

    aget p0, p0, v8

    sub-float/2addr p0, v2

    new-array v2, v9, [F

    aput v1, v2, v3

    aput v4, v2, v0

    aput p0, v2, v8

    invoke-static {v2, v2}, Lwn/I;->h([F[F)F

    move-result p0

    invoke-static {v10, v2}, Lwn/I;->h([F[F)F

    move-result v1

    div-float/2addr v1, p0

    invoke-static {v10, v10}, Lwn/I;->h([F[F)F

    move-result v4

    sub-float/2addr v4, p1

    div-float/2addr v4, p0

    mul-float p0, v1, v1

    sub-float/2addr p0, v4

    const p1, 0x3727c5ac    # 1.0E-5f

    cmpl-float p1, p0, p1

    if-lez p1, :cond_0

    float-to-double p0, p0

    invoke-static {p0, p1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide p0

    double-to-float p0, p0

    neg-float p1, v1

    sub-float v1, p1, p0

    add-float/2addr p1, p0

    const/high16 p0, 0x3f800000    # 1.0f

    cmpg-float v4, v1, p0

    if-gtz v4, :cond_0

    const/4 v4, 0x0

    cmpl-float v5, p1, v4

    if-ltz v5, :cond_0

    invoke-static {v4, v1}, Ljava/lang/Math;->max(FF)F

    move-result v1

    invoke-static {p0, p1}, Ljava/lang/Math;->min(FF)F

    move-result p0

    aget-object p1, p4, p3

    aget p1, p1, v0

    aget p3, v2, v0

    mul-float/2addr v1, p3

    add-float/2addr v1, p1

    mul-float/2addr p0, p3

    add-float/2addr p1, p0

    invoke-static {v1, p1}, Ljava/lang/Math;->min(FF)F

    move-result p0

    invoke-static {v1, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    new-array p3, v8, [F

    aput p0, p3, v3

    aput p1, p3, v0

    invoke-static {p2, p3}, Lwn/B;->t([F[F)[F

    move-result-object p2

    :cond_0
    return-object p2
.end method

.method public static h([F[F[[F)[F
    .locals 22
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "rectangle",
            "vertices",
            "planes"
        }
    .end annotation

    const/4 v8, 0x3

    const/4 v9, 0x2

    const/4 v10, 0x1

    const/high16 v0, 0x7f800000    # Float.POSITIVE_INFINITY

    const/high16 v1, -0x800000    # Float.NEGATIVE_INFINITY

    const/4 v11, 0x0

    move v2, v11

    :goto_0
    const/16 v3, 0x8

    if-ge v2, v3, :cond_1

    mul-int/lit8 v3, v2, 0x3

    aget v4, p1, v3

    aget v5, p0, v11

    cmpl-float v5, v4, v5

    if-ltz v5, :cond_0

    aget v5, p0, v9

    cmpg-float v4, v4, v5

    if-gez v4, :cond_0

    add-int/lit8 v4, v3, 0x2

    aget v4, p1, v4

    aget v5, p0, v10

    cmpl-float v5, v4, v5

    if-ltz v5, :cond_0

    aget v5, p0, v8

    cmpg-float v4, v4, v5

    if-gez v4, :cond_0

    add-int/2addr v3, v10

    aget v4, p1, v3

    invoke-static {v0, v4}, Ljava/lang/Math;->min(FF)F

    move-result v0

    aget v3, p1, v3

    invoke-static {v1, v3}, Ljava/lang/Math;->max(FF)F

    move-result v1

    :cond_0
    add-int/2addr v2, v10

    goto :goto_0

    :cond_1
    new-array v2, v8, [F

    const/4 v3, 0x0

    aput v3, v2, v11

    aget v4, p0, v10

    aput v4, v2, v10

    aput v3, v2, v9

    move v3, v11

    :goto_1
    const/4 v4, 0x4

    const v12, 0x3727c5ac    # 1.0E-5f

    if-ge v3, v4, :cond_8

    and-int/lit8 v4, v3, 0x1

    if-nez v4, :cond_2

    aget v4, p0, v11

    goto :goto_2

    :cond_2
    aget v4, p0, v9

    :goto_2
    aput v4, v2, v11

    and-int/lit8 v4, v3, 0x2

    if-nez v4, :cond_3

    aget v4, p0, v10

    goto :goto_3

    :cond_3
    aget v4, p0, v8

    :goto_3
    aput v4, v2, v9

    move v4, v11

    :goto_4
    const/4 v5, 0x6

    if-ge v4, v5, :cond_7

    aget-object v6, p2, v4

    aget v6, v6, v10

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    cmpl-float v6, v6, v12

    if-lez v6, :cond_6

    aget-object v6, p2, v4

    invoke-static {v6, v2}, Lwn/I;->h([F[F)F

    move-result v6

    aget-object v7, p2, v4

    aget v13, v7, v8

    sub-float/2addr v13, v6

    aget v6, v7, v10

    div-float/2addr v13, v6

    aget v6, v2, v10

    add-float/2addr v6, v13

    move v7, v11

    :goto_5
    if-ge v7, v5, :cond_5

    if-eq v7, v4, :cond_4

    aget v13, v2, v11

    aget-object v14, p2, v7

    aget v15, v14, v11

    mul-float/2addr v13, v15

    aget v15, v14, v10

    mul-float/2addr v15, v6

    add-float/2addr v13, v15

    aget v15, v2, v9

    aget v16, v14, v9

    mul-float v15, v15, v16

    add-float/2addr v13, v15

    aget v14, v14, v8

    cmpl-float v13, v13, v14

    if-lez v13, :cond_4

    goto :goto_6

    :cond_4
    add-int/2addr v7, v10

    goto :goto_5

    :cond_5
    invoke-static {v0, v6}, Ljava/lang/Math;->min(FF)F

    move-result v0

    invoke-static {v1, v6}, Ljava/lang/Math;->max(FF)F

    move-result v1

    :cond_6
    :goto_6
    add-int/2addr v4, v10

    goto :goto_4

    :cond_7
    add-int/2addr v3, v10

    goto :goto_1

    :cond_8
    move v13, v0

    move v14, v1

    move v15, v11

    :goto_7
    sget-object v0, Lwn/B;->b:[I

    array-length v1, v0

    if-ge v15, v1, :cond_d

    aget v1, v0, v15

    mul-int/2addr v1, v8

    add-int/lit8 v2, v15, 0x1

    aget v0, v0, v2

    mul-int/2addr v0, v8

    aget v16, p1, v1

    add-int/lit8 v2, v1, 0x2

    aget v17, p1, v2

    add-int/2addr v1, v10

    aget v18, p1, v1

    aget v1, p1, v0

    sub-float v19, v1, v16

    add-int/lit8 v1, v0, 0x1

    aget v1, p1, v1

    sub-float v20, v1, v18

    add-int/2addr v0, v9

    aget v0, p1, v0

    sub-float v21, v0, v17

    invoke-static/range {v19 .. v19}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpl-float v0, v0, v12

    if-lez v0, :cond_a

    aget v7, p0, v11

    move-object/from16 v0, p0

    move/from16 v1, v16

    move/from16 v2, v18

    move/from16 v3, v17

    move/from16 v4, v19

    move/from16 v5, v20

    move/from16 v6, v21

    invoke-static/range {v0 .. v7}, Lwn/B;->I([FFFFFFFF)Ljava/lang/Float;

    move-result-object v0

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-static {v13, v1}, Ljava/lang/Math;->min(FF)F

    move-result v13

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-static {v14, v0}, Ljava/lang/Math;->max(FF)F

    move-result v14

    :cond_9
    aget v7, p0, v9

    move-object/from16 v0, p0

    move/from16 v1, v16

    move/from16 v2, v18

    move/from16 v3, v17

    move/from16 v4, v19

    move/from16 v5, v20

    move/from16 v6, v21

    invoke-static/range {v0 .. v7}, Lwn/B;->I([FFFFFFFF)Ljava/lang/Float;

    move-result-object v0

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-static {v13, v1}, Ljava/lang/Math;->min(FF)F

    move-result v13

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-static {v14, v0}, Ljava/lang/Math;->max(FF)F

    move-result v14

    :cond_a
    invoke-static/range {v21 .. v21}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpl-float v0, v0, v12

    if-lez v0, :cond_c

    aget v7, p0, v10

    move-object/from16 v0, p0

    move/from16 v1, v16

    move/from16 v2, v18

    move/from16 v3, v17

    move/from16 v4, v19

    move/from16 v5, v20

    move/from16 v6, v21

    invoke-static/range {v0 .. v7}, Lwn/B;->L([FFFFFFFF)Ljava/lang/Float;

    move-result-object v0

    if-eqz v0, :cond_b

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-static {v13, v1}, Ljava/lang/Math;->min(FF)F

    move-result v13

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-static {v14, v0}, Ljava/lang/Math;->max(FF)F

    move-result v14

    :cond_b
    aget v7, p0, v8

    move-object/from16 v0, p0

    move/from16 v1, v16

    move/from16 v2, v18

    move/from16 v3, v17

    move/from16 v4, v19

    move/from16 v5, v20

    move/from16 v6, v21

    invoke-static/range {v0 .. v7}, Lwn/B;->L([FFFFFFFF)Ljava/lang/Float;

    move-result-object v0

    if-eqz v0, :cond_c

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-static {v13, v1}, Ljava/lang/Math;->min(FF)F

    move-result v1

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-static {v14, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    move v14, v0

    move v13, v1

    :cond_c
    add-int/2addr v15, v9

    goto/16 :goto_7

    :cond_d
    cmpg-float v0, v13, v14

    if-gtz v0, :cond_e

    new-array v0, v9, [F

    aput v13, v0, v11

    aput v14, v0, v10

    return-object v0

    :cond_e
    const/4 v0, 0x0

    return-object v0
.end method

.method public static i([F[F[F[FF)[F
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "rectangle",
            "start",
            "end",
            "axis",
            "radiusSqr"
        }
    .end annotation

    invoke-static {p0, p1, p4}, Lwn/B;->m([F[FF)[F

    move-result-object v0

    invoke-static {p0, p2, p4}, Lwn/B;->m([F[FF)[F

    move-result-object v1

    invoke-static {v0, v1}, Lwn/B;->t([F[F)[F

    move-result-object v7

    const/4 v0, 0x0

    aget v0, p3, v0

    mul-float/2addr v0, v0

    const/4 v1, 0x2

    aget v1, p3, v1

    mul-float/2addr v1, v1

    add-float/2addr v0, v1

    const v1, 0x3727c5ac    # 1.0E-5f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move v6, p4

    invoke-static/range {v2 .. v7}, Lwn/B;->F([F[F[F[FF[F)[F

    move-result-object v7

    :cond_0
    return-object v7
.end method

.method public static j([FLcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;[[F[[F)[F
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
            "rectangle",
            "triangles",
            "verts",
            "planes",
            "triBounds"
        }
    .end annotation

    move-object/from16 v8, p1

    move-object/from16 v9, p2

    move-object/from16 v10, p3

    const/4 v11, 0x3

    const/4 v12, 0x2

    const/4 v13, 0x1

    const/high16 v0, 0x7f800000    # Float.POSITIVE_INFINITY

    const/high16 v1, -0x800000    # Float.NEGATIVE_INFINITY

    const/4 v14, 0x0

    move v15, v14

    move/from16 v16, v15

    :goto_0
    invoke-virtual/range {p1 .. p1}, Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;->capacity()I

    move-result v2

    if-ge v15, v2, :cond_d

    aget-object v2, p4, v16

    aget v3, v2, v14

    aget v4, p0, v12

    cmpl-float v3, v3, v4

    if-gtz v3, :cond_c

    aget v3, v2, v12

    aget v4, p0, v14

    cmpg-float v3, v3, v4

    if-ltz v3, :cond_c

    aget v3, v2, v13

    aget v4, p0, v11

    cmpl-float v3, v3, v4

    if-gtz v3, :cond_c

    aget v2, v2, v11

    aget v3, p0, v13

    cmpg-float v2, v2, v3

    if-gez v2, :cond_0

    goto/16 :goto_6

    :cond_0
    aget-object v2, v10, v15

    aget v2, v2, v13

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    const v17, 0x3727c5ac    # 1.0E-5f

    cmpg-float v2, v2, v17

    if-gez v2, :cond_1

    goto/16 :goto_6

    :cond_1
    move v2, v14

    :goto_1
    if-ge v2, v11, :cond_8

    add-int v3, v15, v2

    invoke-virtual {v8, v3}, Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;->get(I)I

    move-result v3

    mul-int/2addr v3, v11

    add-int/lit8 v18, v2, 0x1

    rem-int/lit8 v2, v18, 0x3

    add-int/2addr v2, v15

    invoke-virtual {v8, v2}, Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;->get(I)I

    move-result v2

    mul-int/2addr v2, v11

    invoke-virtual {v9, v3}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->get(I)F

    move-result v19

    add-int/lit8 v4, v3, 0x2

    invoke-virtual {v9, v4}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->get(I)F

    move-result v20

    aget v4, p0, v14

    cmpl-float v4, v19, v4

    if-ltz v4, :cond_2

    aget v4, p0, v12

    cmpg-float v4, v19, v4

    if-gtz v4, :cond_2

    aget v4, p0, v13

    cmpl-float v4, v20, v4

    if-ltz v4, :cond_2

    aget v4, p0, v11

    cmpg-float v4, v20, v4

    if-gtz v4, :cond_2

    add-int/lit8 v4, v3, 0x1

    invoke-virtual {v9, v4}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->get(I)F

    move-result v5

    invoke-static {v0, v5}, Ljava/lang/Math;->min(FF)F

    move-result v0

    invoke-virtual {v9, v4}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->get(I)F

    move-result v4

    invoke-static {v1, v4}, Ljava/lang/Math;->max(FF)F

    move-result v1

    :cond_2
    move v7, v0

    move v6, v1

    add-int/2addr v3, v13

    invoke-virtual {v9, v3}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->get(I)F

    move-result v21

    invoke-virtual {v9, v2}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->get(I)F

    move-result v0

    sub-float v22, v0, v19

    add-int/lit8 v0, v2, 0x1

    invoke-virtual {v9, v0}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->get(I)F

    move-result v0

    sub-float v23, v0, v21

    add-int/2addr v2, v12

    invoke-virtual {v9, v2}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->get(I)F

    move-result v0

    sub-float v24, v0, v20

    invoke-static/range {v22 .. v22}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpl-float v0, v0, v17

    if-lez v0, :cond_4

    aget v25, p0, v14

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v21

    move/from16 v3, v20

    move/from16 v4, v22

    move/from16 v5, v23

    move v14, v6

    move/from16 v6, v24

    move v11, v7

    move/from16 v7, v25

    invoke-static/range {v0 .. v7}, Lwn/B;->I([FFFFFFFF)Ljava/lang/Float;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-static {v11, v1}, Ljava/lang/Math;->min(FF)F

    move-result v7

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-static {v14, v0}, Ljava/lang/Math;->max(FF)F

    move-result v6

    move v14, v6

    move v11, v7

    :cond_3
    aget v7, p0, v12

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v21

    move/from16 v3, v20

    move/from16 v4, v22

    move/from16 v5, v23

    move/from16 v6, v24

    invoke-static/range {v0 .. v7}, Lwn/B;->I([FFFFFFFF)Ljava/lang/Float;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-static {v11, v1}, Ljava/lang/Math;->min(FF)F

    move-result v7

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-static {v14, v0}, Ljava/lang/Math;->max(FF)F

    move-result v6

    :cond_4
    move v14, v6

    move v11, v7

    :cond_5
    invoke-static/range {v24 .. v24}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpl-float v0, v0, v17

    if-lez v0, :cond_7

    aget v7, p0, v13

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v21

    move/from16 v3, v20

    move/from16 v4, v22

    move/from16 v5, v23

    move/from16 v6, v24

    invoke-static/range {v0 .. v7}, Lwn/B;->L([FFFFFFFF)Ljava/lang/Float;

    move-result-object v0

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-static {v11, v1}, Ljava/lang/Math;->min(FF)F

    move-result v11

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-static {v14, v0}, Ljava/lang/Math;->max(FF)F

    move-result v14

    :cond_6
    const/4 v0, 0x3

    aget v7, p0, v0

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v21

    move/from16 v3, v20

    move/from16 v4, v22

    move/from16 v5, v23

    move/from16 v6, v24

    invoke-static/range {v0 .. v7}, Lwn/B;->L([FFFFFFFF)Ljava/lang/Float;

    move-result-object v0

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-static {v11, v1}, Ljava/lang/Math;->min(FF)F

    move-result v1

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-static {v14, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    move/from16 v27, v1

    move v1, v0

    move/from16 v0, v27

    goto :goto_2

    :cond_7
    move v0, v11

    move v1, v14

    :goto_2
    move/from16 v2, v18

    const/4 v11, 0x3

    const/4 v14, 0x0

    goto/16 :goto_1

    :cond_8
    move v2, v11

    new-array v3, v2, [F

    const/4 v2, 0x0

    const/16 v26, 0x0

    aput v2, v3, v26

    aget v4, p0, v13

    aput v4, v3, v13

    aput v2, v3, v12

    move/from16 v2, v26

    :goto_3
    const/4 v4, 0x4

    if-ge v2, v4, :cond_c

    and-int/lit8 v4, v2, 0x1

    if-nez v4, :cond_9

    aget v4, p0, v26

    goto :goto_4

    :cond_9
    aget v4, p0, v12

    :goto_4
    aput v4, v3, v26

    and-int/lit8 v4, v2, 0x2

    if-nez v4, :cond_a

    aget v4, p0, v13

    goto :goto_5

    :cond_a
    const/4 v4, 0x3

    aget v5, p0, v4

    move v4, v5

    :goto_5
    aput v4, v3, v12

    invoke-static {v3, v15, v10}, Lwn/B;->E([FI[[F)Ljava/lang/Float;

    move-result-object v4

    if-eqz v4, :cond_b

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v5

    invoke-static {v0, v5}, Ljava/lang/Math;->min(FF)F

    move-result v0

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    invoke-static {v1, v4}, Ljava/lang/Math;->max(FF)F

    move-result v1

    :cond_b
    add-int/2addr v2, v13

    const/16 v26, 0x0

    goto :goto_3

    :cond_c
    :goto_6
    add-int/lit8 v16, v16, 0x1

    const/4 v2, 0x3

    add-int/2addr v15, v2

    move v11, v2

    const/4 v14, 0x0

    goto/16 :goto_0

    :cond_d
    cmpg-float v2, v0, v1

    if-gez v2, :cond_e

    new-array v2, v12, [F

    const/4 v3, 0x0

    aput v0, v2, v3

    aput v1, v2, v13

    return-object v2

    :cond_e
    const/4 v0, 0x0

    return-object v0
.end method

.method public static k([F[I[F[[F[[F)[F
    .locals 27
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "rectangle",
            "triangles",
            "verts",
            "planes",
            "triBounds"
        }
    .end annotation

    move-object/from16 v8, p1

    move-object/from16 v9, p3

    const/4 v10, 0x3

    const/4 v11, 0x2

    const/4 v12, 0x1

    const/high16 v0, 0x7f800000    # Float.POSITIVE_INFINITY

    const/high16 v1, -0x800000    # Float.NEGATIVE_INFINITY

    const/4 v13, 0x0

    move v14, v13

    move v15, v14

    :goto_0
    array-length v2, v8

    if-ge v14, v2, :cond_d

    aget-object v2, p4, v15

    aget v3, v2, v13

    aget v4, p0, v11

    cmpl-float v3, v3, v4

    if-gtz v3, :cond_c

    aget v3, v2, v11

    aget v4, p0, v13

    cmpg-float v3, v3, v4

    if-ltz v3, :cond_c

    aget v3, v2, v12

    aget v4, p0, v10

    cmpl-float v3, v3, v4

    if-gtz v3, :cond_c

    aget v2, v2, v10

    aget v3, p0, v12

    cmpg-float v2, v2, v3

    if-gez v2, :cond_0

    goto/16 :goto_6

    :cond_0
    aget-object v2, v9, v14

    aget v2, v2, v12

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    const v16, 0x3727c5ac    # 1.0E-5f

    cmpg-float v2, v2, v16

    if-gez v2, :cond_1

    goto/16 :goto_6

    :cond_1
    move v2, v13

    :goto_1
    if-ge v2, v10, :cond_8

    add-int v3, v14, v2

    aget v3, v8, v3

    mul-int/2addr v3, v10

    add-int/lit8 v17, v2, 0x1

    rem-int/lit8 v2, v17, 0x3

    add-int/2addr v2, v14

    aget v2, v8, v2

    mul-int/2addr v2, v10

    aget v18, p2, v3

    add-int/lit8 v4, v3, 0x2

    aget v19, p2, v4

    aget v4, p0, v13

    cmpl-float v4, v18, v4

    if-ltz v4, :cond_2

    aget v4, p0, v11

    cmpg-float v4, v18, v4

    if-gtz v4, :cond_2

    aget v4, p0, v12

    cmpl-float v4, v19, v4

    if-ltz v4, :cond_2

    aget v4, p0, v10

    cmpg-float v4, v19, v4

    if-gtz v4, :cond_2

    add-int/lit8 v4, v3, 0x1

    aget v5, p2, v4

    invoke-static {v0, v5}, Ljava/lang/Math;->min(FF)F

    move-result v0

    aget v4, p2, v4

    invoke-static {v1, v4}, Ljava/lang/Math;->max(FF)F

    move-result v1

    :cond_2
    move v7, v0

    move v6, v1

    add-int/2addr v3, v12

    aget v20, p2, v3

    aget v0, p2, v2

    sub-float v21, v0, v18

    add-int/lit8 v0, v2, 0x1

    aget v0, p2, v0

    sub-float v22, v0, v20

    add-int/2addr v2, v11

    aget v0, p2, v2

    sub-float v23, v0, v19

    invoke-static/range {v21 .. v21}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpl-float v0, v0, v16

    if-lez v0, :cond_4

    aget v24, p0, v13

    move-object/from16 v0, p0

    move/from16 v1, v18

    move/from16 v2, v20

    move/from16 v3, v19

    move/from16 v4, v21

    move/from16 v5, v22

    move v13, v6

    move/from16 v6, v23

    move v10, v7

    move/from16 v7, v24

    invoke-static/range {v0 .. v7}, Lwn/B;->I([FFFFFFFF)Ljava/lang/Float;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-static {v10, v1}, Ljava/lang/Math;->min(FF)F

    move-result v7

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-static {v13, v0}, Ljava/lang/Math;->max(FF)F

    move-result v6

    move v13, v6

    move v10, v7

    :cond_3
    aget v7, p0, v11

    move-object/from16 v0, p0

    move/from16 v1, v18

    move/from16 v2, v20

    move/from16 v3, v19

    move/from16 v4, v21

    move/from16 v5, v22

    move/from16 v6, v23

    invoke-static/range {v0 .. v7}, Lwn/B;->I([FFFFFFFF)Ljava/lang/Float;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-static {v10, v1}, Ljava/lang/Math;->min(FF)F

    move-result v7

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-static {v13, v0}, Ljava/lang/Math;->max(FF)F

    move-result v6

    :cond_4
    move v13, v6

    move v10, v7

    :cond_5
    invoke-static/range {v23 .. v23}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpl-float v0, v0, v16

    if-lez v0, :cond_7

    aget v7, p0, v12

    move-object/from16 v0, p0

    move/from16 v1, v18

    move/from16 v2, v20

    move/from16 v3, v19

    move/from16 v4, v21

    move/from16 v5, v22

    move/from16 v6, v23

    invoke-static/range {v0 .. v7}, Lwn/B;->L([FFFFFFFF)Ljava/lang/Float;

    move-result-object v0

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-static {v10, v1}, Ljava/lang/Math;->min(FF)F

    move-result v10

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-static {v13, v0}, Ljava/lang/Math;->max(FF)F

    move-result v13

    :cond_6
    const/4 v0, 0x3

    aget v7, p0, v0

    move-object/from16 v0, p0

    move/from16 v1, v18

    move/from16 v2, v20

    move/from16 v3, v19

    move/from16 v4, v21

    move/from16 v5, v22

    move/from16 v6, v23

    invoke-static/range {v0 .. v7}, Lwn/B;->L([FFFFFFFF)Ljava/lang/Float;

    move-result-object v0

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-static {v10, v1}, Ljava/lang/Math;->min(FF)F

    move-result v1

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-static {v13, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    move/from16 v26, v1

    move v1, v0

    move/from16 v0, v26

    goto :goto_2

    :cond_7
    move v0, v10

    move v1, v13

    :goto_2
    move/from16 v2, v17

    const/4 v10, 0x3

    const/4 v13, 0x0

    goto/16 :goto_1

    :cond_8
    move v2, v10

    new-array v3, v2, [F

    const/4 v2, 0x0

    const/16 v25, 0x0

    aput v2, v3, v25

    aget v4, p0, v12

    aput v4, v3, v12

    aput v2, v3, v11

    move/from16 v2, v25

    :goto_3
    const/4 v4, 0x4

    if-ge v2, v4, :cond_c

    and-int/lit8 v4, v2, 0x1

    if-nez v4, :cond_9

    aget v4, p0, v25

    goto :goto_4

    :cond_9
    aget v4, p0, v11

    :goto_4
    aput v4, v3, v25

    and-int/lit8 v4, v2, 0x2

    if-nez v4, :cond_a

    aget v4, p0, v12

    goto :goto_5

    :cond_a
    const/4 v4, 0x3

    aget v5, p0, v4

    move v4, v5

    :goto_5
    aput v4, v3, v11

    invoke-static {v3, v14, v9}, Lwn/B;->E([FI[[F)Ljava/lang/Float;

    move-result-object v4

    if-eqz v4, :cond_b

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v5

    invoke-static {v0, v5}, Ljava/lang/Math;->min(FF)F

    move-result v0

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    invoke-static {v1, v4}, Ljava/lang/Math;->max(FF)F

    move-result v1

    :cond_b
    add-int/2addr v2, v12

    const/16 v25, 0x0

    goto :goto_3

    :cond_c
    :goto_6
    add-int/2addr v15, v12

    const/4 v2, 0x3

    add-int/2addr v14, v2

    move v10, v2

    const/4 v13, 0x0

    goto/16 :goto_0

    :cond_d
    cmpg-float v2, v0, v1

    if-gez v2, :cond_e

    new-array v2, v11, [F

    const/4 v3, 0x0

    aput v0, v2, v3

    aput v1, v2, v12

    return-object v2

    :cond_e
    const/4 v0, 0x0

    return-object v0
.end method

.method public static l([F[F[F[FF)[F
    .locals 22
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "rectangle",
            "start",
            "end",
            "axis",
            "radiusSqr"
        }
    .end annotation

    move-object/from16 v6, p1

    move-object/from16 v7, p2

    move-object/from16 v8, p3

    move/from16 v9, p4

    const/4 v10, 0x0

    aget v0, v6, v10

    aget v1, p0, v10

    const/4 v11, 0x2

    aget v2, p0, v11

    invoke-static {v0, v1, v2}, Lwn/B;->f(FFF)F

    move-result v0

    const/4 v12, 0x4

    aget v1, p0, v12

    aget v2, v6, v11

    const/4 v13, 0x1

    aget v3, p0, v13

    const/4 v14, 0x3

    aget v4, p0, v14

    invoke-static {v2, v3, v4}, Lwn/B;->f(FFF)F

    move-result v2

    new-array v3, v14, [F

    aput v0, v3, v10

    aput v1, v3, v13

    aput v2, v3, v11

    invoke-static {v3, v6, v8, v9}, Lwn/B;->D([F[F[FF)[F

    aget v0, v7, v10

    aget v1, p0, v10

    aget v2, p0, v11

    invoke-static {v0, v1, v2}, Lwn/B;->f(FFF)F

    move-result v0

    aget v1, p0, v12

    aget v2, v7, v11

    aget v3, p0, v13

    aget v4, p0, v14

    invoke-static {v2, v3, v4}, Lwn/B;->f(FFF)F

    move-result v2

    new-array v3, v14, [F

    aput v0, v3, v10

    aput v1, v3, v13

    aput v2, v3, v11

    invoke-static {v3, v6, v8, v9}, Lwn/B;->D([F[F[FF)[F

    move-result-object v5

    aget v0, v8, v10

    mul-float/2addr v0, v0

    aget v1, v8, v11

    mul-float/2addr v1, v1

    add-float/2addr v0, v1

    const v15, 0x3727c5ac    # 1.0E-5f

    cmpl-float v0, v0, v15

    if-lez v0, :cond_0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move/from16 v4, p4

    invoke-static/range {v0 .. v5}, Lwn/B;->F([F[F[F[FF[F)[F

    move-result-object v5

    :cond_0
    aget v0, v8, v13

    mul-float/2addr v0, v0

    cmpl-float v0, v0, v15

    if-lez v0, :cond_2

    new-array v0, v11, [I

    aput v14, v0, v13

    aput v12, v0, v10

    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[F

    new-array v2, v11, [I

    aput v14, v2, v13

    aput v12, v2, v10

    invoke-static {v1, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [[F

    invoke-static {v8, v6}, Lwn/I;->h([F[F)F

    move-result v2

    invoke-static {v8, v7}, Lwn/I;->h([F[F)F

    move-result v3

    move v4, v10

    :goto_0
    if-ge v4, v12, :cond_1

    add-int/lit8 v15, v4, 0x1

    and-int/lit8 v16, v15, 0x2

    aget v16, p0, v16

    and-int/lit8 v17, v4, 0x2

    add-int/lit8 v17, v17, 0x1

    aget v17, p0, v17

    aget v18, p0, v12

    new-array v12, v14, [F

    aput v16, v12, v10

    aput v18, v12, v13

    aput v17, v12, v11

    invoke-static {v8, v12}, Lwn/I;->h([F[F)F

    move-result v12

    sub-float v18, v2, v12

    aget v20, v8, v13

    div-float v18, v18, v20

    aget-object v20, v0, v4

    aput v16, v20, v10

    const/16 v19, 0x4

    aget v21, p0, v19

    add-float v18, v21, v18

    aput v18, v20, v13

    aput v17, v20, v11

    sub-float v12, v3, v12

    aget v18, v8, v13

    div-float v12, v12, v18

    aget-object v4, v1, v4

    aput v16, v4, v10

    add-float v21, v21, v12

    aput v21, v4, v13

    aput v17, v4, v11

    move v4, v15

    const/4 v12, 0x4

    goto :goto_0

    :cond_1
    move v2, v12

    :goto_1
    if-ge v10, v2, :cond_2

    invoke-static {v6, v9, v5, v10, v0}, Lwn/B;->g([FF[FI[[F)[F

    move-result-object v3

    invoke-static {v7, v9, v3, v10, v1}, Lwn/B;->g([FF[FI[[F)[F

    move-result-object v5

    add-int/2addr v10, v13

    goto :goto_1

    :cond_2
    return-object v5
.end method

.method public static m([F[FF)[F
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "rectangle",
            "center",
            "radiusSqr"
        }
    .end annotation

    const/4 v0, 0x0

    aget v1, p0, v0

    aget v2, p1, v0

    const/4 v3, 0x2

    aget v4, p0, v3

    invoke-static {v2, v4}, Ljava/lang/Math;->min(FF)F

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v1

    const/4 v2, 0x4

    aget v2, p0, v2

    const/4 v4, 0x1

    aget v5, p0, v4

    aget v6, p1, v3

    const/4 v7, 0x3

    aget p0, p0, v7

    invoke-static {v6, p0}, Ljava/lang/Math;->min(FF)F

    move-result p0

    invoke-static {v5, p0}, Ljava/lang/Math;->max(FF)F

    move-result p0

    aget v5, p1, v0

    sub-float/2addr v1, v5

    aget v5, p1, v4

    sub-float v5, v2, v5

    aget p1, p1, v3

    sub-float/2addr p0, p1

    invoke-static {v1, v5, p0}, Lwn/B;->s(FFF)F

    move-result p0

    sub-float/2addr p0, p2

    const/4 p1, 0x0

    cmpl-float p2, p0, p1

    const/4 v1, 0x0

    if-lez p2, :cond_0

    cmpl-float p2, v5, p1

    if-lez p2, :cond_0

    return-object v1

    :cond_0
    mul-float p2, v5, v5

    sub-float/2addr p2, p0

    cmpg-float p0, p2, p1

    if-gez p0, :cond_1

    return-object v1

    :cond_1
    float-to-double v6, p2

    invoke-static {v6, v7}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v6

    double-to-float p0, v6

    neg-float p2, v5

    sub-float v1, p2, p0

    add-float/2addr p2, p0

    cmpg-float p0, v1, p1

    if-gez p0, :cond_2

    goto :goto_0

    :cond_2
    move p1, v1

    :goto_0
    add-float/2addr p1, v2

    add-float/2addr v2, p2

    new-array p0, v3, [F

    aput p1, p0, v0

    aput v2, p0, v4

    return-object p0
.end method

.method public static synthetic n([F[[F[F)[F
    .locals 0

    invoke-static {p2, p0, p1}, Lwn/B;->h([F[F[[F)[F

    move-result-object p0

    return-object p0
.end method

.method public static synthetic o([F[F[FF[F)[F
    .locals 0

    mul-float/2addr p3, p3

    invoke-static {p4, p0, p1, p2, p3}, Lwn/B;->i([F[F[F[FF)[F

    move-result-object p0

    return-object p0
.end method

.method public static synthetic p(Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;[[F[[F[F)[F
    .locals 0

    invoke-static {p4, p0, p1, p2, p3}, Lwn/B;->j([FLcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;[[F[[F)[F

    move-result-object p0

    return-object p0
.end method

.method public static synthetic q([F[F[FF[F)[F
    .locals 0

    mul-float/2addr p3, p3

    invoke-static {p4, p0, p1, p2, p3}, Lwn/B;->l([F[F[F[FF)[F

    move-result-object p0

    return-object p0
.end method

.method public static synthetic r([FF[F)[F
    .locals 0

    mul-float/2addr p1, p1

    invoke-static {p2, p0, p1}, Lwn/B;->m([F[FF)[F

    move-result-object p0

    return-object p0
.end method

.method public static s(FFF)F
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "dx",
            "dy",
            "dz"
        }
    .end annotation

    mul-float/2addr p0, p0

    mul-float/2addr p1, p1

    add-float/2addr p0, p1

    mul-float/2addr p2, p2

    add-float/2addr p0, p2

    return p0
.end method

.method public static t([F[F)[F
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "s1",
            "s2"
        }
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p0, :cond_0

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    if-nez p0, :cond_1

    return-object p1

    :cond_1
    if-nez p1, :cond_2

    return-object p0

    :cond_2
    aget v2, p0, v1

    aget v3, p1, v1

    invoke-static {v2, v3}, Ljava/lang/Math;->min(FF)F

    move-result v2

    aget p0, p0, v0

    aget p1, p1, v0

    invoke-static {p0, p1}, Ljava/lang/Math;->max(FF)F

    move-result p0

    const/4 p1, 0x2

    new-array p1, p1, [F

    aput v2, p1, v1

    aput p0, p1, v0

    return-object p1
.end method

.method public static u([F[F[F)Z
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "amin",
            "amax",
            "bounds"
        }
    .end annotation

    const/4 v0, 0x0

    aget v1, p0, v0

    const/4 v2, 0x3

    aget v2, p2, v2

    cmpl-float v1, v1, v2

    const/4 v2, 0x1

    if-gtz v1, :cond_1

    aget v1, p1, v0

    aget v3, p2, v0

    cmpg-float v1, v1, v3

    if-gez v1, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    goto :goto_1

    :cond_1
    :goto_0
    move v1, v0

    :goto_1
    aget v2, p0, v2

    const/4 v3, 0x4

    aget v3, p2, v3

    cmpl-float v2, v2, v3

    if-lez v2, :cond_2

    move v1, v0

    :cond_2
    const/4 v2, 0x2

    aget p0, p0, v2

    const/4 v3, 0x5

    aget v3, p2, v3

    cmpl-float p0, p0, v3

    if-gtz p0, :cond_4

    aget p0, p1, v2

    aget p1, p2, v2

    cmpg-float p0, p0, p1

    if-gez p0, :cond_3

    goto :goto_2

    :cond_3
    move v0, v1

    :cond_4
    :goto_2
    return v0
.end method

.method public static v([[FI[F[FLcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;I)V
    .locals 2
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
            "planes",
            "p",
            "v1",
            "v2",
            "vertices",
            "vert"
        }
    .end annotation

    aget-object v0, p0, p1

    invoke-static {v0, p2, p3}, Lwn/I;->g([F[F[F)V

    aget-object p2, p0, p1

    const/4 p3, 0x0

    aget p3, p2, p3

    invoke-virtual {p4, p5}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->get(I)F

    move-result v0

    mul-float/2addr p3, v0

    aget-object v0, p0, p1

    const/4 v1, 0x1

    aget v0, v0, v1

    add-int/lit8 v1, p5, 0x1

    invoke-virtual {p4, v1}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->get(I)F

    move-result v1

    mul-float/2addr v0, v1

    add-float/2addr p3, v0

    aget-object p0, p0, p1

    const/4 p1, 0x2

    aget p0, p0, p1

    add-int/2addr p5, p1

    invoke-virtual {p4, p5}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->get(I)F

    move-result p1

    mul-float/2addr p0, p1

    add-float/2addr p3, p0

    const/4 p0, 0x3

    aput p3, p2, p0

    return-void
.end method

.method public static w([[FI[F[F[FI)V
    .locals 1
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
            "planes",
            "p",
            "v1",
            "v2",
            "vertices",
            "vert"
        }
    .end annotation

    aget-object v0, p0, p1

    invoke-static {v0, p2, p3}, Lwn/I;->g([F[F[F)V

    aget-object p0, p0, p1

    const/4 p1, 0x0

    aget p1, p0, p1

    aget p2, p4, p5

    mul-float/2addr p1, p2

    const/4 p2, 0x1

    aget p2, p0, p2

    add-int/lit8 p3, p5, 0x1

    aget p3, p4, p3

    mul-float/2addr p2, p3

    add-float/2addr p1, p2

    const/4 p2, 0x2

    aget p3, p0, p2

    add-int/2addr p5, p2

    aget p2, p4, p5

    mul-float/2addr p3, p2

    add-float/2addr p1, p3

    const/4 p2, 0x3

    aput p1, p0, p2

    return-void
.end method

.method public static x(Lwn/h;[FIILjava/util/function/Function;)V
    .locals 17
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "hf",
            "bounds",
            "area",
            "flagMergeThr",
            "intersection"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lwn/h;",
            "[FII",
            "Ljava/util/function/Function<",
            "[F[F>;)V"
        }
    .end annotation

    move-object/from16 v7, p0

    move-object/from16 v0, p1

    iget-object v1, v7, Lwn/h;->c:[F

    iget-object v2, v7, Lwn/h;->d:[F

    invoke-static {v1, v2, v0}, Lwn/B;->u([F[F[F)Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    const/4 v8, 0x3

    aget v1, v0, v8

    iget-object v2, v7, Lwn/h;->d:[F

    const/4 v9, 0x0

    aget v2, v2, v9

    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v1

    aput v1, v0, v8

    const/4 v1, 0x5

    aget v2, v0, v1

    iget-object v3, v7, Lwn/h;->d:[F

    const/4 v10, 0x2

    aget v3, v3, v10

    invoke-static {v2, v3}, Ljava/lang/Math;->min(FF)F

    move-result v2

    aput v2, v0, v1

    aget v2, v0, v9

    iget-object v3, v7, Lwn/h;->c:[F

    aget v3, v3, v9

    invoke-static {v2, v3}, Ljava/lang/Math;->max(FF)F

    move-result v2

    aput v2, v0, v9

    aget v2, v0, v10

    iget-object v3, v7, Lwn/h;->c:[F

    aget v3, v3, v10

    invoke-static {v2, v3}, Ljava/lang/Math;->max(FF)F

    move-result v2

    aput v2, v0, v10

    aget v3, v0, v8

    aget v4, v0, v9

    cmpg-float v5, v3, v4

    if-lez v5, :cond_4

    const/4 v5, 0x4

    aget v6, v0, v5

    const/4 v11, 0x1

    aget v12, v0, v11

    cmpg-float v6, v6, v12

    if-lez v6, :cond_4

    aget v6, v0, v1

    cmpg-float v6, v6, v2

    if-gtz v6, :cond_1

    goto/16 :goto_3

    :cond_1
    iget v6, v7, Lwn/h;->e:F

    const/high16 v12, 0x3f800000    # 1.0f

    div-float v6, v12, v6

    iget v13, v7, Lwn/h;->f:F

    div-float/2addr v12, v13

    iget-object v13, v7, Lwn/h;->c:[F

    aget v14, v13, v9

    sub-float/2addr v4, v14

    mul-float/2addr v4, v6

    float-to-int v4, v4

    aget v13, v13, v10

    sub-float/2addr v2, v13

    mul-float/2addr v2, v6

    float-to-int v13, v2

    iget v2, v7, Lwn/h;->a:I

    sub-int/2addr v2, v11

    sub-float/2addr v3, v14

    mul-float/2addr v3, v6

    float-to-int v3, v3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v14

    iget v2, v7, Lwn/h;->b:I

    sub-int/2addr v2, v11

    aget v0, v0, v1

    iget-object v3, v7, Lwn/h;->c:[F

    aget v3, v3, v10

    sub-float/2addr v0, v3

    mul-float/2addr v0, v6

    float-to-int v0, v0

    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    move-result v15

    new-array v6, v1, [F

    iget-object v0, v7, Lwn/h;->c:[F

    aget v0, v0, v11

    aput v0, v6, v5

    move v5, v4

    :goto_0
    if-gt v5, v14, :cond_4

    move v4, v13

    :goto_1
    if-gt v4, v15, :cond_3

    int-to-float v0, v5

    iget v1, v7, Lwn/h;->e:F

    mul-float/2addr v0, v1

    iget-object v2, v7, Lwn/h;->c:[F

    aget v3, v2, v9

    add-float/2addr v0, v3

    aput v0, v6, v9

    int-to-float v3, v4

    mul-float/2addr v3, v1

    aget v2, v2, v10

    add-float/2addr v3, v2

    aput v3, v6, v11

    add-float/2addr v0, v1

    aput v0, v6, v10

    add-float/2addr v3, v1

    aput v3, v6, v8

    move-object/from16 v3, p4

    invoke-interface {v3, v6}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [F

    if-eqz v0, :cond_2

    aget v1, v0, v9

    iget-object v2, v7, Lwn/h;->c:[F

    aget v2, v2, v11

    sub-float/2addr v1, v2

    mul-float/2addr v1, v12

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->floor(D)D

    move-result-wide v1

    double-to-int v1, v1

    aget v0, v0, v11

    iget-object v2, v7, Lwn/h;->c:[F

    aget v2, v2, v11

    sub-float/2addr v0, v2

    mul-float/2addr v0, v12

    float-to-double v10, v0

    invoke-static {v10, v11}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v10

    double-to-int v0, v10

    if-eq v1, v0, :cond_2

    sget v2, Lwn/u;->d:I

    invoke-static {v1, v9, v2}, Lwn/r;->e(III)I

    move-result v10

    add-int/lit8 v1, v10, 0x1

    sget v2, Lwn/u;->d:I

    invoke-static {v0, v1, v2}, Lwn/r;->e(III)I

    move-result v11

    move-object/from16 v0, p0

    move v1, v5

    move v2, v4

    move v3, v10

    move v10, v4

    move v4, v11

    move v11, v5

    move/from16 v5, p2

    move-object/from16 v16, v6

    move/from16 v6, p3

    invoke-static/range {v0 .. v6}, Lwn/G;->a(Lwn/h;IIIIII)V

    goto :goto_2

    :cond_2
    move v10, v4

    move v11, v5

    move-object/from16 v16, v6

    :goto_2
    add-int/lit8 v4, v10, 0x1

    move v5, v11

    move-object/from16 v6, v16

    const/4 v10, 0x2

    const/4 v11, 0x1

    goto :goto_1

    :cond_3
    move v11, v5

    move-object/from16 v16, v6

    add-int/lit8 v5, v11, 0x1

    const/4 v10, 0x2

    const/4 v11, 0x1

    goto :goto_0

    :cond_4
    :goto_3
    return-void
.end method

.method public static y(Lwn/h;[F[[FIILwn/N;)V
    .locals 23
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
            "hf",
            "center",
            "halfEdges",
            "area",
            "flagMergeThr",
            "ctx"
        }
    .end annotation

    move-object/from16 v0, p5

    const-string v1, "RASTERIZE_BOX"

    invoke-virtual {v0, v1}, Lwn/N;->f(Ljava/lang/String;)V

    const/4 v2, 0x0

    aget-object v3, p2, v2

    aget v4, v3, v2

    const/4 v5, 0x1

    aget v6, v3, v5

    const/4 v7, 0x2

    aget v3, v3, v7

    const/4 v8, 0x3

    new-array v9, v8, [F

    aput v4, v9, v2

    aput v6, v9, v5

    aput v3, v9, v7

    aget-object v3, p2, v5

    aget v4, v3, v2

    aget v6, v3, v5

    aget v3, v3, v7

    new-array v10, v8, [F

    aput v4, v10, v2

    aput v6, v10, v5

    aput v3, v10, v7

    aget-object v3, p2, v7

    aget v4, v3, v2

    aget v6, v3, v5

    aget v3, v3, v7

    new-array v11, v8, [F

    aput v4, v11, v2

    aput v6, v11, v5

    aput v3, v11, v7

    filled-new-array {v9, v10, v11}, [[F

    move-result-object v3

    aget-object v4, v3, v2

    invoke-static {v4}, Lwn/I;->m([F)V

    aget-object v4, v3, v5

    invoke-static {v4}, Lwn/I;->m([F)V

    aget-object v4, v3, v7

    invoke-static {v4}, Lwn/I;->m([F)V

    const/16 v4, 0x18

    new-array v4, v4, [F

    const/4 v6, 0x6

    new-array v9, v6, [F

    const/high16 v10, 0x7f800000    # Float.POSITIVE_INFINITY

    aput v10, v9, v2

    aput v10, v9, v5

    aput v10, v9, v7

    const/high16 v10, -0x800000    # Float.NEGATIVE_INFINITY

    aput v10, v9, v8

    const/4 v11, 0x4

    aput v10, v9, v11

    const/4 v12, 0x5

    aput v10, v9, v12

    move v10, v2

    :goto_0
    const/16 v13, 0x8

    const/high16 v14, -0x40800000    # -1.0f

    const/high16 v15, 0x3f800000    # 1.0f

    if-ge v10, v13, :cond_3

    and-int/lit8 v13, v10, 0x1

    if-eqz v13, :cond_0

    move v13, v15

    goto :goto_1

    :cond_0
    move v13, v14

    :goto_1
    and-int/lit8 v16, v10, 0x2

    if-eqz v16, :cond_1

    move/from16 v16, v15

    goto :goto_2

    :cond_1
    move/from16 v16, v14

    :goto_2
    and-int/lit8 v17, v10, 0x4

    if-eqz v17, :cond_2

    move v14, v15

    :cond_2
    mul-int/lit8 v15, v10, 0x3

    aget v17, p1, v2

    aget-object v18, p2, v2

    aget v19, v18, v2

    mul-float v19, v19, v13

    add-float v17, v17, v19

    aget-object v19, p2, v5

    aget v20, v19, v2

    mul-float v20, v20, v16

    add-float v17, v17, v20

    aget-object v20, p2, v7

    aget v21, v20, v2

    mul-float v21, v21, v14

    add-float v17, v17, v21

    aput v17, v4, v15

    add-int/lit8 v17, v15, 0x1

    aget v21, p1, v5

    aget v22, v18, v5

    mul-float v22, v22, v13

    add-float v21, v21, v22

    aget v22, v19, v5

    mul-float v22, v22, v16

    add-float v21, v21, v22

    aget v22, v20, v5

    mul-float v22, v22, v14

    add-float v21, v21, v22

    aput v21, v4, v17

    add-int/lit8 v21, v15, 0x2

    aget v22, p1, v7

    aget v18, v18, v7

    mul-float v13, v13, v18

    add-float v22, v22, v13

    aget v13, v19, v7

    mul-float v16, v16, v13

    add-float v22, v22, v16

    aget v13, v20, v7

    mul-float/2addr v14, v13

    add-float v22, v22, v14

    aput v22, v4, v21

    aget v13, v9, v2

    aget v14, v4, v15

    invoke-static {v13, v14}, Ljava/lang/Math;->min(FF)F

    move-result v13

    aput v13, v9, v2

    aget v13, v9, v5

    aget v14, v4, v17

    invoke-static {v13, v14}, Ljava/lang/Math;->min(FF)F

    move-result v13

    aput v13, v9, v5

    aget v13, v9, v7

    aget v14, v4, v21

    invoke-static {v13, v14}, Ljava/lang/Math;->min(FF)F

    move-result v13

    aput v13, v9, v7

    aget v13, v9, v8

    aget v14, v4, v15

    invoke-static {v13, v14}, Ljava/lang/Math;->max(FF)F

    move-result v13

    aput v13, v9, v8

    aget v13, v9, v11

    aget v14, v4, v17

    invoke-static {v13, v14}, Ljava/lang/Math;->max(FF)F

    move-result v13

    aput v13, v9, v11

    aget v13, v9, v12

    aget v14, v4, v21

    invoke-static {v13, v14}, Ljava/lang/Math;->max(FF)F

    move-result v13

    aput v13, v9, v12

    add-int/2addr v10, v5

    goto/16 :goto_0

    :cond_3
    new-array v10, v7, [I

    aput v11, v10, v5

    aput v6, v10, v2

    sget-object v11, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-static {v11, v10}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [[F

    move v11, v2

    :goto_3
    if-ge v11, v6, :cond_6

    if-ge v11, v8, :cond_4

    move v12, v14

    goto :goto_4

    :cond_4
    move v12, v15

    :goto_4
    if-ge v11, v8, :cond_5

    move v13, v2

    goto :goto_5

    :cond_5
    const/4 v13, 0x7

    :goto_5
    aget-object v16, v10, v11

    rem-int/lit8 v17, v11, 0x3

    aget-object v17, v3, v17

    aget v18, v17, v2

    mul-float v18, v18, v12

    aput v18, v16, v2

    aget v19, v17, v5

    mul-float v19, v19, v12

    aput v19, v16, v5

    aget v17, v17, v7

    mul-float v12, v12, v17

    aput v12, v16, v7

    mul-int/2addr v13, v8

    aget v17, v4, v13

    mul-float v17, v17, v18

    add-int/lit8 v18, v13, 0x1

    aget v18, v4, v18

    mul-float v18, v18, v19

    add-float v17, v17, v18

    add-int/2addr v13, v7

    aget v13, v4, v13

    mul-float/2addr v13, v12

    add-float v17, v17, v13

    aput v17, v16, v8

    add-int/2addr v11, v5

    goto :goto_3

    :cond_6
    new-instance v2, Lwn/y;

    invoke-direct {v2, v4, v10}, Lwn/y;-><init>([F[[F)V

    move-object/from16 v3, p0

    move/from16 v4, p3

    move/from16 v5, p4

    invoke-static {v3, v9, v4, v5, v2}, Lwn/B;->x(Lwn/h;[FIILjava/util/function/Function;)V

    invoke-virtual {v0, v1}, Lwn/N;->g(Ljava/lang/String;)V

    return-void
.end method

.method public static z(Lwn/h;[F[FFIILwn/N;)V
    .locals 15
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
            "hf",
            "start",
            "end",
            "radius",
            "area",
            "flagMergeThr",
            "ctx"
        }
    .end annotation

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move/from16 v2, p3

    move-object/from16 v3, p6

    const-string v4, "RASTERIZE_CAPSULE"

    invoke-virtual {v3, v4}, Lwn/N;->f(Ljava/lang/String;)V

    const/4 v5, 0x0

    aget v6, v0, v5

    aget v7, v1, v5

    invoke-static {v6, v7}, Ljava/lang/Math;->min(FF)F

    move-result v6

    sub-float/2addr v6, v2

    const/4 v7, 0x1

    aget v8, v0, v7

    aget v9, v1, v7

    invoke-static {v8, v9}, Ljava/lang/Math;->min(FF)F

    move-result v8

    sub-float/2addr v8, v2

    const/4 v9, 0x2

    aget v10, v0, v9

    aget v11, v1, v9

    invoke-static {v10, v11}, Ljava/lang/Math;->min(FF)F

    move-result v10

    sub-float/2addr v10, v2

    aget v11, v0, v5

    aget v12, v1, v5

    invoke-static {v11, v12}, Ljava/lang/Math;->max(FF)F

    move-result v11

    add-float/2addr v11, v2

    aget v12, v0, v7

    aget v13, v1, v7

    invoke-static {v12, v13}, Ljava/lang/Math;->max(FF)F

    move-result v12

    add-float/2addr v12, v2

    aget v13, v0, v9

    aget v14, v1, v9

    invoke-static {v13, v14}, Ljava/lang/Math;->max(FF)F

    move-result v13

    add-float/2addr v13, v2

    const/4 v14, 0x6

    new-array v14, v14, [F

    aput v6, v14, v5

    aput v8, v14, v7

    aput v10, v14, v9

    const/4 v6, 0x3

    aput v11, v14, v6

    const/4 v8, 0x4

    aput v12, v14, v8

    const/4 v8, 0x5

    aput v13, v14, v8

    aget v8, v1, v5

    aget v10, v0, v5

    sub-float/2addr v8, v10

    aget v10, v1, v7

    aget v11, v0, v7

    sub-float/2addr v10, v11

    aget v11, v1, v9

    aget v12, v0, v9

    sub-float/2addr v11, v12

    new-array v6, v6, [F

    aput v8, v6, v5

    aput v10, v6, v7

    aput v11, v6, v9

    new-instance v5, Lwn/z;

    invoke-direct {v5, v0, v1, v6, v2}, Lwn/z;-><init>([F[F[FF)V

    move-object v0, p0

    move/from16 v1, p4

    move/from16 v2, p5

    invoke-static {p0, v14, v1, v2, v5}, Lwn/B;->x(Lwn/h;[FIILjava/util/function/Function;)V

    invoke-virtual {v3, v4}, Lwn/N;->g(Ljava/lang/String;)V

    return-void
.end method
