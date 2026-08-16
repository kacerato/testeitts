.class public LJb/e;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LJb/e$a;
    }
.end annotation


# static fields
.field public static final i:F = 5.0f

.field public static final j:I = 0xc


# instance fields
.field public final a:Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

.field public final b:Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;

.field public final c:F

.field public d:I

.field public e:I

.field public f:Ljava/nio/ByteBuffer;

.field public g:Ljava/nio/ByteBuffer;

.field public h:Lcom/google/android/filament/Box;


# direct methods
.method public constructor <init>(Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "verticesBuffer",
            "trianglesBuffer"
        }
    .end annotation

    const/high16 v0, 0x40a00000    # 5.0f

    .line 1
    invoke-direct {p0, p1, p2, v0}, LJb/e;-><init>(Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;F)V

    return-void
.end method

.method public constructor <init>(Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;F)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "verticesBuffer",
            "trianglesBuffer",
            "coplanarDeg"
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, LJb/e;->a:Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    .line 4
    iput-object p2, p0, LJb/e;->b:Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;

    .line 5
    iput p3, p0, LJb/e;->c:F

    .line 6
    invoke-virtual {p0}, LJb/e;->j()V

    return-void
.end method

.method public static synthetic a(ILjava/nio/ByteBuffer;ILjava/nio/ByteBuffer;LJb/e$a;Lcom/google/android/filament/Box;)V
    .locals 0

    invoke-static/range {p0 .. p5}, LJb/e;->i(ILjava/nio/ByteBuffer;ILjava/nio/ByteBuffer;LJb/e$a;Lcom/google/android/filament/Box;)V

    return-void
.end method

.method public static c(FFF)F
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

.method public static d(Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;III[F)V
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

.method public static e([F[F)F
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

.method public static synthetic i(ILjava/nio/ByteBuffer;ILjava/nio/ByteBuffer;LJb/e$a;Lcom/google/android/filament/Box;)V
    .locals 8

    invoke-static {}, LQb/a;->f()Lcom/google/android/filament/Engine;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentVertexBuffer;

    new-instance v1, Lcom/google/android/filament/VertexBuffer$b;

    invoke-direct {v1}, Lcom/google/android/filament/VertexBuffer$b;-><init>()V

    invoke-virtual {v1, p0}, Lcom/google/android/filament/VertexBuffer$b;->h(I)Lcom/google/android/filament/VertexBuffer$b;

    move-result-object p0

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/google/android/filament/VertexBuffer$b;->c(I)Lcom/google/android/filament/VertexBuffer$b;

    move-result-object v2

    sget-object v3, Lcom/google/android/filament/VertexBuffer$c;->POSITION:Lcom/google/android/filament/VertexBuffer$c;

    sget-object v5, Lcom/google/android/filament/VertexBuffer$a;->FLOAT3:Lcom/google/android/filament/VertexBuffer$a;

    const/4 v6, 0x0

    const/16 v7, 0xc

    const/4 v4, 0x0

    invoke-virtual/range {v2 .. v7}, Lcom/google/android/filament/VertexBuffer$b;->b(Lcom/google/android/filament/VertexBuffer$c;ILcom/google/android/filament/VertexBuffer$a;II)Lcom/google/android/filament/VertexBuffer$b;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentVertexBuffer;-><init>(Lcom/google/android/filament/VertexBuffer$b;)V

    const/4 p0, 0x0

    invoke-virtual {v0, p0, p1}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentVertexBuffer;->q(ILjava/nio/ByteBuffer;)V

    new-instance p0, LRb/d;

    new-instance p1, Lcom/google/android/filament/IndexBuffer$a;

    invoke-direct {p1}, Lcom/google/android/filament/IndexBuffer$a;-><init>()V

    invoke-virtual {p1, p2}, Lcom/google/android/filament/IndexBuffer$a;->c(I)Lcom/google/android/filament/IndexBuffer$a;

    move-result-object p1

    sget-object p2, Lcom/google/android/filament/IndexBuffer$a$b;->UINT:Lcom/google/android/filament/IndexBuffer$a$b;

    invoke-virtual {p1, p2}, Lcom/google/android/filament/IndexBuffer$a;->a(Lcom/google/android/filament/IndexBuffer$a$b;)Lcom/google/android/filament/IndexBuffer$a;

    move-result-object p1

    invoke-direct {p0, p1}, LRb/d;-><init>(Lcom/google/android/filament/IndexBuffer$a;)V

    invoke-virtual {p0, p3}, LRb/d;->r(Ljava/nio/ByteBuffer;)V

    invoke-interface {p4, v0, p0, p5}, LJb/e$a;->a(Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentVertexBuffer;LRb/d;Lcom/google/android/filament/Box;)V

    return-void
.end method

.method public static k(Ljava/nio/IntBuffer;III)V
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

.method public static l(Ljava/nio/IntBuffer;Ljava/nio/IntBuffer;)V
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

    move v11, v3

    :goto_2
    if-ge v11, v1, :cond_3

    mul-int/lit8 v12, v11, 0x3

    invoke-virtual {v4, v12}, Ljava/nio/IntBuffer;->get(I)I

    move-result v13

    add-int/2addr v12, v2

    invoke-virtual {v4, v12}, Ljava/nio/IntBuffer;->get(I)I

    move-result v12

    if-eqz v7, :cond_2

    goto :goto_3

    :cond_2
    move v13, v12

    :goto_3
    ushr-int v12, v13, v8

    and-int/lit16 v12, v12, 0xff

    aget v13, v10, v12

    add-int/2addr v13, v2

    aput v13, v10, v12

    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    :cond_3
    move v11, v3

    move v12, v11

    :goto_4
    if-ge v11, v9, :cond_4

    aget v13, v10, v11

    aput v12, v10, v11

    add-int/2addr v12, v13

    add-int/lit8 v11, v11, 0x1

    goto :goto_4

    :cond_4
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

    goto :goto_0

    :cond_7
    if-eq v4, v0, :cond_8

    invoke-virtual {v0, v3}, Ljava/nio/IntBuffer;->position(I)Ljava/nio/Buffer;

    mul-int/lit8 v1, v1, 0x3

    invoke-virtual {v0, v1}, Ljava/nio/IntBuffer;->limit(I)Ljava/nio/Buffer;

    invoke-virtual {v4, v3}, Ljava/nio/IntBuffer;->position(I)Ljava/nio/Buffer;

    invoke-virtual {v4, v1}, Ljava/nio/IntBuffer;->limit(I)Ljava/nio/Buffer;

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


# virtual methods
.method public b(LJb/e$a;)V
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "listener"
        }
    .end annotation

    if-eqz p1, :cond_2

    iget-object v6, p0, LJb/e;->h:Lcom/google/android/filament/Box;

    if-eqz v6, :cond_1

    iget-object v0, p0, LJb/e;->f:Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_1

    iget-object v1, p0, LJb/e;->g:Ljava/nio/ByteBuffer;

    if-eqz v1, :cond_1

    iget v1, p0, LJb/e;->d:I

    if-eqz v1, :cond_1

    iget v3, p0, LJb/e;->e:I

    if-nez v3, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v2

    iget-object v0, p0, LJb/e;->g:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v4

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    new-instance v7, LJb/d;

    move-object v0, v7

    move-object v5, p1

    invoke-direct/range {v0 .. v6}, LJb/d;-><init>(ILjava/nio/ByteBuffer;ILjava/nio/ByteBuffer;LJb/e$a;Lcom/google/android/filament/Box;)V

    invoke-static {v7}, LK8/a;->I(Ljava/lang/Runnable;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "listener can\'t be null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public f()Lcom/google/android/filament/Box;
    .locals 1

    iget-object v0, p0, LJb/e;->h:Lcom/google/android/filament/Box;

    return-object v0
.end method

.method public final g()I
    .locals 1

    iget-object v0, p0, LJb/e;->b:Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;->capacity()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final h()I
    .locals 1

    iget-object v0, p0, LJb/e;->a:Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->capacity()I

    move-result v0

    div-int/lit8 v0, v0, 0x3

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final j()V
    .locals 23

    move-object/from16 v0, p0

    invoke-virtual/range {p0 .. p0}, LJb/e;->h()I

    move-result v1

    invoke-virtual/range {p0 .. p0}, LJb/e;->g()I

    move-result v2

    const/4 v3, 0x3

    div-int/2addr v2, v3

    if-eqz v1, :cond_10

    if-nez v2, :cond_0

    goto/16 :goto_5

    :cond_0
    iput v1, v0, LJb/e;->d:I

    const/high16 v4, -0x800000    # Float.NEGATIVE_INFINITY

    const/high16 v5, 0x7f800000    # Float.POSITIVE_INFINITY

    move v7, v4

    move v8, v5

    move v9, v8

    move v10, v9

    const/4 v11, 0x0

    move v5, v7

    :goto_0
    const/4 v12, 0x2

    if-ge v11, v1, :cond_7

    iget-object v13, v0, LJb/e;->a:Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    mul-int/lit8 v14, v11, 0x3

    invoke-virtual {v13, v14}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->get(I)F

    move-result v13

    iget-object v15, v0, LJb/e;->a:Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    add-int/lit8 v6, v14, 0x1

    invoke-virtual {v15, v6}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->get(I)F

    move-result v6

    iget-object v15, v0, LJb/e;->a:Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    add-int/2addr v14, v12

    invoke-virtual {v15, v14}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->get(I)F

    move-result v12

    cmpg-float v14, v13, v8

    if-gez v14, :cond_1

    move v8, v13

    :cond_1
    cmpl-float v14, v13, v4

    if-lez v14, :cond_2

    move v4, v13

    :cond_2
    cmpg-float v13, v6, v9

    if-gez v13, :cond_3

    move v9, v6

    :cond_3
    cmpl-float v13, v6, v5

    if-lez v13, :cond_4

    move v5, v6

    :cond_4
    cmpg-float v6, v12, v10

    if-gez v6, :cond_5

    move v10, v12

    :cond_5
    cmpl-float v6, v12, v7

    if-lez v6, :cond_6

    move v7, v12

    :cond_6
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    :cond_7
    add-float v6, v8, v4

    const/high16 v11, 0x3f000000    # 0.5f

    mul-float v17, v6, v11

    add-float v6, v9, v5

    mul-float v18, v6, v11

    add-float v6, v10, v7

    mul-float v19, v6, v11

    sub-float/2addr v4, v8

    const/4 v6, 0x0

    invoke-static {v6, v4}, Ljava/lang/Math;->max(FF)F

    move-result v4

    mul-float v20, v4, v11

    sub-float/2addr v5, v9

    invoke-static {v6, v5}, Ljava/lang/Math;->max(FF)F

    move-result v4

    mul-float v21, v4, v11

    sub-float/2addr v7, v10

    invoke-static {v6, v7}, Ljava/lang/Math;->max(FF)F

    move-result v4

    mul-float v22, v4, v11

    new-instance v4, Lcom/google/android/filament/Box;

    move-object/from16 v16, v4

    invoke-direct/range {v16 .. v22}, Lcom/google/android/filament/Box;-><init>(FFFFFF)V

    iput-object v4, v0, LJb/e;->h:Lcom/google/android/filament/Box;

    mul-int/lit8 v4, v1, 0xc

    invoke-static {v4}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v4

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v4

    const/4 v5, 0x0

    :goto_1
    if-ge v5, v1, :cond_8

    iget-object v6, v0, LJb/e;->a:Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    mul-int/lit8 v7, v5, 0x3

    invoke-virtual {v6, v7}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->get(I)F

    move-result v6

    invoke-virtual {v4, v6}, Ljava/nio/ByteBuffer;->putFloat(F)Ljava/nio/ByteBuffer;

    iget-object v6, v0, LJb/e;->a:Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    add-int/lit8 v8, v7, 0x1

    invoke-virtual {v6, v8}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->get(I)F

    move-result v6

    invoke-virtual {v4, v6}, Ljava/nio/ByteBuffer;->putFloat(F)Ljava/nio/ByteBuffer;

    iget-object v6, v0, LJb/e;->a:Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    add-int/2addr v7, v12

    invoke-virtual {v6, v7}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->get(I)F

    move-result v6

    invoke-virtual {v4, v6}, Ljava/nio/ByteBuffer;->putFloat(F)Ljava/nio/ByteBuffer;

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_8
    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    iput-object v4, v0, LJb/e;->f:Ljava/nio/ByteBuffer;

    mul-int/lit8 v1, v2, 0x24

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v4

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->asIntBuffer()Ljava/nio/IntBuffer;

    move-result-object v4

    const/4 v5, 0x0

    :goto_2
    if-ge v5, v2, :cond_9

    iget-object v6, v0, LJb/e;->b:Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;

    mul-int/lit8 v7, v5, 0x3

    invoke-virtual {v6, v7}, Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;->get(I)I

    move-result v6

    iget-object v8, v0, LJb/e;->b:Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;

    add-int/lit8 v9, v7, 0x1

    invoke-virtual {v8, v9}, Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;->get(I)I

    move-result v8

    iget-object v9, v0, LJb/e;->b:Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;

    add-int/2addr v7, v12

    invoke-virtual {v9, v7}, Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;->get(I)I

    move-result v7

    invoke-static {v4, v6, v8, v7}, LJb/e;->k(Ljava/nio/IntBuffer;III)V

    invoke-static {v4, v8, v7, v6}, LJb/e;->k(Ljava/nio/IntBuffer;III)V

    invoke-static {v4, v7, v6, v8}, LJb/e;->k(Ljava/nio/IntBuffer;III)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_9
    invoke-virtual {v4}, Ljava/nio/IntBuffer;->flip()Ljava/nio/Buffer;

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->asIntBuffer()Ljava/nio/IntBuffer;

    move-result-object v1

    invoke-static {v4, v1}, LJb/e;->l(Ljava/nio/IntBuffer;Ljava/nio/IntBuffer;)V

    iget v1, v0, LJb/e;->c:F

    float-to-double v5, v1

    invoke-static {v5, v6}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Math;->cos(D)D

    move-result-wide v5

    double-to-float v1, v5

    mul-int/lit8 v2, v2, 0x18

    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->asIntBuffer()Ljava/nio/IntBuffer;

    move-result-object v5

    invoke-virtual {v4}, Ljava/nio/Buffer;->limit()I

    move-result v6

    new-array v7, v3, [F

    new-array v3, v3, [F

    const/4 v8, 0x0

    :goto_3
    if-ge v8, v6, :cond_e

    invoke-virtual {v4, v8}, Ljava/nio/IntBuffer;->get(I)I

    move-result v9

    add-int/lit8 v10, v8, 0x1

    invoke-virtual {v4, v10}, Ljava/nio/IntBuffer;->get(I)I

    move-result v10

    add-int/lit8 v11, v8, 0x2

    invoke-virtual {v4, v11}, Ljava/nio/IntBuffer;->get(I)I

    move-result v11

    add-int/lit8 v8, v8, 0x3

    const/4 v13, 0x1

    const/high16 v14, -0x80000000

    move v15, v13

    :goto_4
    if-ge v8, v6, :cond_c

    invoke-virtual {v4, v8}, Ljava/nio/IntBuffer;->get(I)I

    move-result v12

    if-ne v12, v9, :cond_b

    add-int/lit8 v12, v8, 0x1

    invoke-virtual {v4, v12}, Ljava/nio/IntBuffer;->get(I)I

    move-result v12

    if-ne v12, v10, :cond_b

    if-ne v15, v13, :cond_a

    add-int/lit8 v12, v8, 0x2

    invoke-virtual {v4, v12}, Ljava/nio/IntBuffer;->get(I)I

    move-result v12

    move v14, v12

    :cond_a
    add-int/lit8 v15, v15, 0x1

    add-int/lit8 v8, v8, 0x3

    const/4 v12, 0x2

    goto :goto_4

    :cond_b
    const/4 v12, 0x2

    :cond_c
    if-ne v15, v12, :cond_d

    if-eq v11, v14, :cond_d

    iget-object v13, v0, LJb/e;->a:Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    invoke-static {v13, v9, v10, v11, v7}, LJb/e;->d(Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;III[F)V

    iget-object v11, v0, LJb/e;->a:Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    invoke-static {v11, v9, v10, v14, v3}, LJb/e;->d(Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;III[F)V

    invoke-static {v7, v3}, LJb/e;->e([F[F)F

    move-result v11

    const/high16 v13, -0x40800000    # -1.0f

    const/high16 v14, 0x3f800000    # 1.0f

    invoke-static {v11, v13, v14}, LJb/e;->c(FFF)F

    move-result v11

    invoke-static {v11}, Ljava/lang/Math;->abs(F)F

    move-result v11

    cmpl-float v11, v11, v1

    if-ltz v11, :cond_d

    goto :goto_3

    :cond_d
    invoke-virtual {v5, v9}, Ljava/nio/IntBuffer;->put(I)Ljava/nio/IntBuffer;

    invoke-virtual {v5, v10}, Ljava/nio/IntBuffer;->put(I)Ljava/nio/IntBuffer;

    goto :goto_3

    :cond_e
    invoke-virtual {v5}, Ljava/nio/IntBuffer;->flip()Ljava/nio/Buffer;

    invoke-virtual {v5}, Ljava/nio/Buffer;->remaining()I

    move-result v1

    iput v1, v0, LJb/e;->e:I

    if-nez v1, :cond_f

    return-void

    :cond_f
    const/4 v1, 0x0

    invoke-virtual {v2, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    invoke-virtual {v5}, Ljava/nio/Buffer;->limit()I

    move-result v1

    mul-int/lit8 v1, v1, 0x4

    invoke-virtual {v2, v1}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    iput-object v2, v0, LJb/e;->g:Ljava/nio/ByteBuffer;

    :cond_10
    :goto_5
    return-void
.end method
