.class public LIb/k;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:F = 5.0f


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(III)Z
    .locals 0

    invoke-static {p0, p1, p2}, LIb/k;->t(III)Z

    move-result p0

    return p0
.end method

.method public static synthetic b(Ljava/nio/IntBuffer;III)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, LIb/k;->q(Ljava/nio/IntBuffer;III)V

    return-void
.end method

.method public static synthetic c(Ljava/nio/IntBuffer;Ljava/nio/IntBuffer;)V
    .locals 0

    invoke-static {p0, p1}, LIb/k;->r(Ljava/nio/IntBuffer;Ljava/nio/IntBuffer;)V

    return-void
.end method

.method public static synthetic d(Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;III[F)V
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, LIb/k;->o(Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;III[F)V

    return-void
.end method

.method public static synthetic e([F[F)F
    .locals 0

    invoke-static {p0, p1}, LIb/k;->p([F[F)F

    move-result p0

    return p0
.end method

.method public static synthetic f(FFF)F
    .locals 0

    invoke-static {p0, p1, p2}, LIb/k;->n(FFF)F

    move-result p0

    return p0
.end method

.method public static g()Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;
    .locals 1

    const/high16 v0, 0x3f000000    # 0.5f

    invoke-static {v0, v0, v0}, LIb/k;->h(FFF)Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;

    move-result-object v0

    return-object v0
.end method

.method public static h(FFF)Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "hx",
            "hy",
            "hz"
        }
    .end annotation

    new-instance v0, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    const/16 v1, 0x18

    invoke-direct {v0, v1}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;-><init>(I)V

    neg-float v2, p0

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v2}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->set(IF)V

    neg-float v4, p1

    const/4 v5, 0x1

    invoke-virtual {v0, v5, v4}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->set(IF)V

    neg-float v6, p2

    const/4 v7, 0x2

    invoke-virtual {v0, v7, v6}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->set(IF)V

    const/4 v7, 0x3

    invoke-virtual {v0, v7, p0}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->set(IF)V

    const/4 v7, 0x4

    invoke-virtual {v0, v7, v4}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->set(IF)V

    const/4 v7, 0x5

    invoke-virtual {v0, v7, v6}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->set(IF)V

    const/4 v7, 0x6

    invoke-virtual {v0, v7, p0}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->set(IF)V

    const/4 v7, 0x7

    invoke-virtual {v0, v7, p1}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->set(IF)V

    const/16 v7, 0x8

    invoke-virtual {v0, v7, v6}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->set(IF)V

    const/16 v7, 0x9

    invoke-virtual {v0, v7, v2}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->set(IF)V

    const/16 v7, 0xa

    invoke-virtual {v0, v7, p1}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->set(IF)V

    const/16 v7, 0xb

    invoke-virtual {v0, v7, v6}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->set(IF)V

    const/16 v6, 0xc

    invoke-virtual {v0, v6, v2}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->set(IF)V

    const/16 v6, 0xd

    invoke-virtual {v0, v6, v4}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->set(IF)V

    const/16 v6, 0xe

    invoke-virtual {v0, v6, p2}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->set(IF)V

    const/16 v6, 0xf

    invoke-virtual {v0, v6, p0}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->set(IF)V

    const/16 v6, 0x10

    invoke-virtual {v0, v6, v4}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->set(IF)V

    const/16 v4, 0x11

    invoke-virtual {v0, v4, p2}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->set(IF)V

    const/16 v4, 0x12

    invoke-virtual {v0, v4, p0}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->set(IF)V

    const/16 p0, 0x13

    invoke-virtual {v0, p0, p1}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->set(IF)V

    const/16 p0, 0x14

    invoke-virtual {v0, p0, p2}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->set(IF)V

    const/16 p0, 0x15

    invoke-virtual {v0, p0, v2}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->set(IF)V

    const/16 p0, 0x16

    invoke-virtual {v0, p0, p1}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->set(IF)V

    const/16 p0, 0x17

    invoke-virtual {v0, p0, p2}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->set(IF)V

    new-array p0, v1, [I

    fill-array-data p0, :array_0

    new-instance p1, Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;

    invoke-direct {p1, v1}, Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;-><init>(I)V

    :goto_0
    if-ge v3, v1, :cond_0

    aget p2, p0, v3

    invoke-virtual {p1, v3, p2}, Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;->set(II)V

    add-int/2addr v3, v5

    goto :goto_0

    :cond_0
    new-instance p0, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;-><init>()V

    invoke-virtual {p0, v0}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;->q2(Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;)V

    invoke-virtual {p0, p1}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;->i2(Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;)V

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;->apply()V

    return-object p0

    :array_0
    .array-data 4
        0x0
        0x1
        0x1
        0x2
        0x2
        0x3
        0x3
        0x0
        0x4
        0x5
        0x5
        0x6
        0x6
        0x7
        0x7
        0x4
        0x0
        0x4
        0x1
        0x5
        0x2
        0x6
        0x3
        0x7
    .end array-data
.end method

.method public static i(FFF)Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "sx",
            "sy",
            "sz"
        }
    .end annotation

    const/high16 v0, 0x3f000000    # 0.5f

    mul-float/2addr p0, v0

    mul-float/2addr p1, v0

    mul-float/2addr p2, v0

    invoke-static {p0, p1, p2}, LIb/k;->h(FFF)Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;

    move-result-object p0

    return-object p0
.end method

.method public static j(Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;)Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "src"
        }
    .end annotation

    const/high16 v0, 0x40a00000    # 5.0f

    invoke-static {p0, v0}, LIb/k;->k(Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;F)Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;

    move-result-object p0

    return-object p0
.end method

.method public static k(Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;F)Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;
    .locals 16
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "src",
            "coplanarDeg"
        }
    .end annotation

    if-eqz p0, :cond_d

    invoke-virtual/range {p0 .. p0}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;->i1()Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    move-result-object v0

    invoke-virtual/range {p0 .. p0}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;->V0()Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;

    move-result-object v1

    if-eqz v0, :cond_c

    if-eqz v1, :cond_b

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->capacity()I

    move-result v2

    const/4 v3, 0x3

    div-int/2addr v2, v3

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;->capacity()I

    move-result v4

    if-lez v2, :cond_a

    rem-int/lit8 v5, v4, 0x3

    if-nez v5, :cond_9

    div-int/2addr v4, v3

    mul-int/lit8 v5, v4, 0x24

    invoke-static {v5}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v6

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->asIntBuffer()Ljava/nio/IntBuffer;

    move-result-object v6

    const/4 v8, 0x0

    :goto_0
    const/4 v9, 0x2

    if-ge v8, v4, :cond_3

    mul-int/lit8 v10, v8, 0x3

    invoke-virtual {v1, v10}, Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;->get(I)I

    move-result v11

    add-int/lit8 v12, v10, 0x1

    invoke-virtual {v1, v12}, Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;->get(I)I

    move-result v12

    add-int/2addr v10, v9

    invoke-virtual {v1, v10}, Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;->get(I)I

    move-result v9

    invoke-static {v11, v2, v8}, LIb/k;->t(III)Z

    move-result v10

    if-nez v10, :cond_0

    goto :goto_1

    :cond_0
    invoke-static {v12, v2, v8}, LIb/k;->t(III)Z

    move-result v10

    if-nez v10, :cond_1

    goto :goto_1

    :cond_1
    invoke-static {v9, v2, v8}, LIb/k;->t(III)Z

    move-result v10

    if-nez v10, :cond_2

    goto :goto_1

    :cond_2
    invoke-static {v6, v11, v12, v9}, LIb/k;->q(Ljava/nio/IntBuffer;III)V

    invoke-static {v6, v12, v9, v11}, LIb/k;->q(Ljava/nio/IntBuffer;III)V

    invoke-static {v6, v9, v11, v12}, LIb/k;->q(Ljava/nio/IntBuffer;III)V

    :goto_1
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    :cond_3
    invoke-virtual {v6}, Ljava/nio/IntBuffer;->flip()Ljava/nio/Buffer;

    invoke-static {v5}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->asIntBuffer()Ljava/nio/IntBuffer;

    move-result-object v1

    invoke-static {v6, v1}, LIb/k;->r(Ljava/nio/IntBuffer;Ljava/nio/IntBuffer;)V

    move/from16 v1, p1

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Math;->cos(D)D

    move-result-wide v1

    double-to-float v1, v1

    mul-int/lit8 v4, v4, 0x18

    invoke-static {v4}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->asIntBuffer()Ljava/nio/IntBuffer;

    move-result-object v2

    new-array v4, v3, [F

    new-array v3, v3, [F

    invoke-virtual {v6}, Ljava/nio/Buffer;->limit()I

    move-result v5

    const/4 v8, 0x0

    :goto_2
    if-ge v8, v5, :cond_7

    invoke-virtual {v6, v8}, Ljava/nio/IntBuffer;->get(I)I

    move-result v10

    add-int/lit8 v11, v8, 0x1

    invoke-virtual {v6, v11}, Ljava/nio/IntBuffer;->get(I)I

    move-result v11

    add-int/lit8 v12, v8, 0x2

    invoke-virtual {v6, v12}, Ljava/nio/IntBuffer;->get(I)I

    move-result v12

    add-int/lit8 v8, v8, 0x3

    const/4 v13, 0x1

    const/high16 v14, -0x80000000

    move v15, v13

    :goto_3
    if-ge v8, v5, :cond_5

    invoke-virtual {v6, v8}, Ljava/nio/IntBuffer;->get(I)I

    move-result v7

    if-ne v7, v10, :cond_5

    add-int/lit8 v7, v8, 0x1

    invoke-virtual {v6, v7}, Ljava/nio/IntBuffer;->get(I)I

    move-result v7

    if-ne v7, v11, :cond_5

    if-ne v15, v13, :cond_4

    add-int/lit8 v7, v8, 0x2

    invoke-virtual {v6, v7}, Ljava/nio/IntBuffer;->get(I)I

    move-result v7

    move v14, v7

    :cond_4
    add-int/lit8 v15, v15, 0x1

    add-int/lit8 v8, v8, 0x3

    goto :goto_3

    :cond_5
    if-ne v15, v9, :cond_6

    if-eq v12, v14, :cond_6

    invoke-static {v0, v10, v11, v12, v4}, LIb/k;->o(Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;III[F)V

    invoke-static {v0, v10, v11, v14, v3}, LIb/k;->o(Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;III[F)V

    invoke-static {v4, v3}, LIb/k;->p([F[F)F

    move-result v7

    const/high16 v12, -0x40800000    # -1.0f

    const/high16 v13, 0x3f800000    # 1.0f

    invoke-static {v7, v12, v13}, LIb/k;->n(FFF)F

    move-result v7

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v7

    cmpl-float v7, v7, v1

    if-ltz v7, :cond_6

    goto :goto_2

    :cond_6
    invoke-virtual {v2, v10}, Ljava/nio/IntBuffer;->put(I)Ljava/nio/IntBuffer;

    invoke-virtual {v2, v11}, Ljava/nio/IntBuffer;->put(I)Ljava/nio/IntBuffer;

    goto :goto_2

    :cond_7
    invoke-virtual {v2}, Ljava/nio/IntBuffer;->flip()Ljava/nio/Buffer;

    invoke-virtual {v2}, Ljava/nio/Buffer;->remaining()I

    move-result v1

    new-instance v3, Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;

    invoke-direct {v3, v1}, Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;-><init>(I)V

    const/4 v7, 0x0

    :goto_4
    if-ge v7, v1, :cond_8

    invoke-virtual {v2, v7}, Ljava/nio/IntBuffer;->get(I)I

    move-result v4

    invoke-virtual {v3, v7, v4}, Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;->set(II)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_4

    :cond_8
    new-instance v1, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;

    invoke-direct {v1}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;-><init>()V

    invoke-virtual {v1, v0}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;->q2(Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;)V

    invoke-virtual {v1, v3}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;->i2(Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;)V

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;->apply()V

    return-object v1

    :cond_9
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Triangle index count is not multiple of 3"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "vertexCount <= 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "src.getTriangles() == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "src.getVertices() == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "src == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static l(Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;)Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "src"
        }
    .end annotation

    const/high16 v0, 0x40a00000    # 5.0f

    invoke-static {p0, v0}, LIb/k;->m(Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;F)Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;

    move-result-object p0

    return-object p0
.end method

.method public static m(Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;F)Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "src",
            "coplanarDeg"
        }
    .end annotation

    if-eqz p0, :cond_0

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;-><init>()V

    new-instance v1, LIb/k$a;

    invoke-direct {v1, p0, p1, v0}, LIb/k$a;-><init>(Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;FLcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;)V

    invoke-static {v1}, Lca/c;->D(Ljava/lang/Runnable;)V

    return-object v0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "src == null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static n(FFF)F
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "x",
            "lo",
            "hi"
        }
    .end annotation

    invoke-static {p2, p0}, Ljava/lang/Math;->min(FF)F

    move-result p0

    invoke-static {p1, p0}, Ljava/lang/Math;->max(FF)F

    move-result p0

    return p0
.end method

.method public static o(Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;III[F)V
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
            "vb",
            "ia",
            "ib",
            "ic",
            "out"
        }
    .end annotation

    mul-int/lit8 p1, p1, 0x3

    invoke-virtual {p0, p1}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->get(I)F

    move-result v0

    add-int/lit8 v1, p1, 0x1

    invoke-virtual {p0, v1}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->get(I)F

    move-result v1

    const/4 v2, 0x2

    add-int/2addr p1, v2

    invoke-virtual {p0, p1}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->get(I)F

    move-result p1

    mul-int/lit8 p2, p2, 0x3

    invoke-virtual {p0, p2}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->get(I)F

    move-result v3

    add-int/lit8 v4, p2, 0x1

    invoke-virtual {p0, v4}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->get(I)F

    move-result v4

    add-int/2addr p2, v2

    invoke-virtual {p0, p2}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->get(I)F

    move-result p2

    mul-int/lit8 p3, p3, 0x3

    invoke-virtual {p0, p3}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->get(I)F

    move-result v5

    add-int/lit8 v6, p3, 0x1

    invoke-virtual {p0, v6}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->get(I)F

    move-result v6

    add-int/2addr p3, v2

    invoke-virtual {p0, p3}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->get(I)F

    move-result p0

    sub-float/2addr v3, v0

    sub-float/2addr v4, v1

    sub-float/2addr p2, p1

    sub-float/2addr v5, v0

    sub-float/2addr v6, v1

    sub-float/2addr p0, p1

    mul-float p1, v4, p0

    mul-float p3, p2, v6

    sub-float/2addr p1, p3

    mul-float/2addr p2, v5

    mul-float/2addr p0, v3

    sub-float/2addr p2, p0

    mul-float/2addr v3, v6

    mul-float/2addr v4, v5

    sub-float/2addr v3, v4

    mul-float p0, p1, p1

    mul-float p3, p2, p2

    add-float/2addr p0, p3

    mul-float p3, v3, v3

    add-float/2addr p0, p3

    const p3, 0x1e3ce508    # 1.0E-20f

    cmpg-float p3, p0, p3

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-gtz p3, :cond_0

    const/4 p0, 0x0

    aput p0, p4, v0

    aput p0, p4, v1

    const/high16 p0, 0x3f800000    # 1.0f

    aput p0, p4, v2

    goto :goto_0

    :cond_0
    float-to-double v4, p0

    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    div-double/2addr v6, v4

    double-to-float p0, v6

    mul-float/2addr p1, p0

    aput p1, p4, v0

    mul-float/2addr p2, p0

    aput p2, p4, v1

    mul-float/2addr v3, p0

    aput v3, p4, v2

    :goto_0
    return-void
.end method

.method public static p([F[F)F
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "a",
            "b"
        }
    .end annotation

    const/4 v0, 0x0

    aget v1, p0, v0

    aget v0, p1, v0

    mul-float/2addr v1, v0

    const/4 v0, 0x1

    aget v2, p0, v0

    aget v0, p1, v0

    mul-float/2addr v2, v0

    add-float/2addr v1, v2

    const/4 v0, 0x2

    aget p0, p0, v0

    aget p1, p1, v0

    mul-float/2addr p0, p1

    add-float/2addr v1, p0

    return v1
.end method

.method public static q(Ljava/nio/IntBuffer;III)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "ib",
            "i0",
            "i1",
            "other"
        }
    .end annotation

    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result p1

    invoke-virtual {p0, v0}, Ljava/nio/IntBuffer;->put(I)Ljava/nio/IntBuffer;

    invoke-virtual {p0, p1}, Ljava/nio/IntBuffer;->put(I)Ljava/nio/IntBuffer;

    invoke-virtual {p0, p3}, Ljava/nio/IntBuffer;->put(I)Ljava/nio/IntBuffer;

    return-void
.end method

.method public static r(Ljava/nio/IntBuffer;Ljava/nio/IntBuffer;)V
    .locals 18
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "edgesIB",
            "tmpIB"
        }
    .end annotation

    move-object/from16 v0, p0

    invoke-virtual/range {p0 .. p0}, Ljava/nio/Buffer;->limit()I

    move-result v1

    div-int/lit8 v1, v1, 0x3

    const/4 v2, 0x1

    if-gt v1, v2, :cond_0

    return-void

    :cond_0
    const/4 v3, 0x0

    move-object/from16 v5, p1

    move-object v4, v0

    move v6, v3

    :goto_0
    const/16 v7, 0x8

    if-ge v6, v7, :cond_7

    rem-int/lit8 v8, v6, 0x4

    mul-int/2addr v8, v7

    const/4 v7, 0x4

    if-lt v6, v7, :cond_1

    move v7, v2

    goto :goto_1

    :cond_1
    move v7, v3

    :goto_1
    const/16 v9, 0x100

    new-array v10, v9, [I

    invoke-virtual {v4, v3}, Ljava/nio/IntBuffer;->position(I)Ljava/nio/Buffer;

    mul-int/lit8 v11, v1, 0x3

    invoke-virtual {v4, v11}, Ljava/nio/IntBuffer;->limit(I)Ljava/nio/Buffer;

    move v12, v3

    :goto_2
    if-ge v12, v1, :cond_3

    mul-int/lit8 v13, v12, 0x3

    invoke-virtual {v4, v13}, Ljava/nio/IntBuffer;->get(I)I

    move-result v14

    add-int/2addr v13, v2

    invoke-virtual {v4, v13}, Ljava/nio/IntBuffer;->get(I)I

    move-result v13

    if-eqz v7, :cond_2

    goto :goto_3

    :cond_2
    move v14, v13

    :goto_3
    ushr-int v13, v14, v8

    and-int/lit16 v13, v13, 0xff

    aget v14, v10, v13

    add-int/2addr v14, v2

    aput v14, v10, v13

    add-int/lit8 v12, v12, 0x1

    goto :goto_2

    :cond_3
    move v12, v3

    move v13, v12

    :goto_4
    if-ge v12, v9, :cond_4

    aget v14, v10, v12

    aput v13, v10, v12

    add-int/2addr v13, v14

    add-int/lit8 v12, v12, 0x1

    goto :goto_4

    :cond_4
    invoke-virtual {v4, v3}, Ljava/nio/IntBuffer;->position(I)Ljava/nio/Buffer;

    invoke-virtual {v4, v11}, Ljava/nio/IntBuffer;->limit(I)Ljava/nio/Buffer;

    invoke-virtual {v5, v3}, Ljava/nio/IntBuffer;->position(I)Ljava/nio/Buffer;

    invoke-virtual {v5, v11}, Ljava/nio/IntBuffer;->limit(I)Ljava/nio/Buffer;

    move v9, v3

    :goto_5
    if-ge v9, v1, :cond_6

    mul-int/lit8 v11, v9, 0x3

    invoke-virtual {v4, v11}, Ljava/nio/IntBuffer;->get(I)I

    move-result v12

    add-int/lit8 v13, v11, 0x1

    invoke-virtual {v4, v13}, Ljava/nio/IntBuffer;->get(I)I

    move-result v13

    add-int/lit8 v11, v11, 0x2

    invoke-virtual {v4, v11}, Ljava/nio/IntBuffer;->get(I)I

    move-result v11

    if-eqz v7, :cond_5

    move v14, v12

    goto :goto_6

    :cond_5
    move v14, v13

    :goto_6
    ushr-int/2addr v14, v8

    and-int/lit16 v14, v14, 0xff

    aget v15, v10, v14

    add-int/lit8 v16, v15, 0x1

    aput v16, v10, v14

    mul-int/lit8 v15, v15, 0x3

    invoke-virtual {v5, v15, v12}, Ljava/nio/IntBuffer;->put(II)Ljava/nio/IntBuffer;

    add-int/lit8 v12, v15, 0x1

    invoke-virtual {v5, v12, v13}, Ljava/nio/IntBuffer;->put(II)Ljava/nio/IntBuffer;

    add-int/lit8 v15, v15, 0x2

    invoke-virtual {v5, v15, v11}, Ljava/nio/IntBuffer;->put(II)Ljava/nio/IntBuffer;

    add-int/lit8 v9, v9, 0x1

    goto :goto_5

    :cond_6
    add-int/lit8 v6, v6, 0x1

    move-object/from16 v17, v5

    move-object v5, v4

    move-object/from16 v4, v17

    goto/16 :goto_0

    :cond_7
    if-eq v4, v0, :cond_8

    invoke-virtual {v4, v3}, Ljava/nio/IntBuffer;->position(I)Ljava/nio/Buffer;

    mul-int/lit8 v1, v1, 0x3

    invoke-virtual {v4, v1}, Ljava/nio/IntBuffer;->limit(I)Ljava/nio/Buffer;

    invoke-virtual {v0, v3}, Ljava/nio/IntBuffer;->position(I)Ljava/nio/Buffer;

    invoke-virtual {v0, v1}, Ljava/nio/IntBuffer;->limit(I)Ljava/nio/Buffer;

    invoke-virtual {v0, v4}, Ljava/nio/IntBuffer;->put(Ljava/nio/IntBuffer;)Ljava/nio/IntBuffer;

    invoke-virtual/range {p0 .. p0}, Ljava/nio/IntBuffer;->flip()Ljava/nio/Buffer;

    goto :goto_7

    :cond_8
    invoke-virtual {v0, v3}, Ljava/nio/IntBuffer;->position(I)Ljava/nio/Buffer;

    mul-int/lit8 v1, v1, 0x3

    invoke-virtual {v0, v1}, Ljava/nio/IntBuffer;->limit(I)Ljava/nio/Buffer;

    :goto_7
    return-void
.end method

.method public static s(III)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "idx",
            "vertexCount",
            "tri"
        }
    .end annotation

    if-ltz p0, :cond_0

    if-ge p0, p1, :cond_0

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Triangle index out of range at tri "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " (idx="

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static t(III)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "idx",
            "vertexCount",
            "tri"
        }
    .end annotation

    if-ltz p0, :cond_0

    if-ge p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
