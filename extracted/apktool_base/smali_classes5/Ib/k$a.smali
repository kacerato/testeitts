.class public LIb/k$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LIb/k;->m(Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;F)Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;

.field public final synthetic c:F

.field public final synthetic d:Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;


# direct methods
.method public constructor <init>(Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;FLcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            "val$src",
            "val$coplanarDeg",
            "val$out"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, LIb/k$a;->b:Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;

    iput p2, p0, LIb/k$a;->c:F

    iput-object p3, p0, LIb/k$a;->d:Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 16

    move-object/from16 v0, p0

    iget-object v1, v0, LIb/k$a;->b:Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;->i1()Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    move-result-object v1

    iget-object v2, v0, LIb/k$a;->b:Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;

    invoke-virtual {v2}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;->V0()Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;

    move-result-object v2

    if-eqz v1, :cond_d

    if-eqz v2, :cond_c

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->capacity()I

    move-result v3

    const/4 v4, 0x3

    div-int/2addr v3, v4

    invoke-virtual {v2}, Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;->capacity()I

    move-result v5

    if-lez v3, :cond_b

    rem-int/lit8 v6, v5, 0x3

    if-nez v6, :cond_a

    div-int/2addr v5, v4

    mul-int/lit8 v6, v5, 0x24

    invoke-static {v6}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v7

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/nio/ByteBuffer;->asIntBuffer()Ljava/nio/IntBuffer;

    move-result-object v7

    const/4 v9, 0x0

    :goto_0
    const/4 v10, 0x2

    if-ge v9, v5, :cond_3

    mul-int/lit8 v11, v9, 0x3

    invoke-virtual {v2, v11}, Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;->get(I)I

    move-result v12

    add-int/lit8 v13, v11, 0x1

    invoke-virtual {v2, v13}, Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;->get(I)I

    move-result v13

    add-int/2addr v11, v10

    invoke-virtual {v2, v11}, Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;->get(I)I

    move-result v10

    invoke-static {v12, v3, v9}, LIb/k;->a(III)Z

    move-result v11

    if-nez v11, :cond_0

    goto :goto_1

    :cond_0
    invoke-static {v13, v3, v9}, LIb/k;->a(III)Z

    move-result v11

    if-nez v11, :cond_1

    goto :goto_1

    :cond_1
    invoke-static {v10, v3, v9}, LIb/k;->a(III)Z

    move-result v11

    if-nez v11, :cond_2

    goto :goto_1

    :cond_2
    invoke-static {v7, v12, v13, v10}, LIb/k;->b(Ljava/nio/IntBuffer;III)V

    invoke-static {v7, v13, v10, v12}, LIb/k;->b(Ljava/nio/IntBuffer;III)V

    invoke-static {v7, v10, v12, v13}, LIb/k;->b(Ljava/nio/IntBuffer;III)V

    :goto_1
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    :cond_3
    invoke-virtual {v7}, Ljava/nio/IntBuffer;->flip()Ljava/nio/Buffer;

    invoke-static {v6}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->asIntBuffer()Ljava/nio/IntBuffer;

    move-result-object v2

    invoke-static {v7, v2}, LIb/k;->c(Ljava/nio/IntBuffer;Ljava/nio/IntBuffer;)V

    iget v2, v0, LIb/k$a;->c:F

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v2

    double-to-float v2, v2

    mul-int/lit8 v5, v5, 0x18

    invoke-static {v5}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->asIntBuffer()Ljava/nio/IntBuffer;

    move-result-object v3

    new-array v5, v4, [F

    new-array v4, v4, [F

    invoke-virtual {v7}, Ljava/nio/Buffer;->limit()I

    move-result v6

    const/4 v9, 0x0

    :goto_2
    if-ge v9, v6, :cond_8

    invoke-virtual {v7, v9}, Ljava/nio/IntBuffer;->get(I)I

    move-result v11

    add-int/lit8 v12, v9, 0x1

    invoke-virtual {v7, v12}, Ljava/nio/IntBuffer;->get(I)I

    move-result v12

    add-int/lit8 v13, v9, 0x2

    invoke-virtual {v7, v13}, Ljava/nio/IntBuffer;->get(I)I

    move-result v13

    add-int/lit8 v9, v9, 0x3

    const/4 v14, 0x1

    const/high16 v15, -0x80000000

    move v8, v14

    :goto_3
    if-ge v9, v6, :cond_6

    invoke-virtual {v7, v9}, Ljava/nio/IntBuffer;->get(I)I

    move-result v10

    if-ne v10, v11, :cond_5

    add-int/lit8 v10, v9, 0x1

    invoke-virtual {v7, v10}, Ljava/nio/IntBuffer;->get(I)I

    move-result v10

    if-ne v10, v12, :cond_5

    if-ne v8, v14, :cond_4

    add-int/lit8 v10, v9, 0x2

    invoke-virtual {v7, v10}, Ljava/nio/IntBuffer;->get(I)I

    move-result v10

    move v15, v10

    :cond_4
    add-int/lit8 v8, v8, 0x1

    add-int/lit8 v9, v9, 0x3

    const/4 v10, 0x2

    goto :goto_3

    :cond_5
    const/4 v10, 0x2

    :cond_6
    if-ne v8, v10, :cond_7

    if-eq v13, v15, :cond_7

    invoke-static {v1, v11, v12, v13, v5}, LIb/k;->d(Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;III[F)V

    invoke-static {v1, v11, v12, v15, v4}, LIb/k;->d(Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;III[F)V

    invoke-static {v5, v4}, LIb/k;->e([F[F)F

    move-result v8

    const/high16 v13, -0x40800000    # -1.0f

    const/high16 v14, 0x3f800000    # 1.0f

    invoke-static {v8, v13, v14}, LIb/k;->f(FFF)F

    move-result v8

    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    move-result v8

    cmpl-float v8, v8, v2

    if-ltz v8, :cond_7

    goto :goto_2

    :cond_7
    invoke-virtual {v3, v11}, Ljava/nio/IntBuffer;->put(I)Ljava/nio/IntBuffer;

    invoke-virtual {v3, v12}, Ljava/nio/IntBuffer;->put(I)Ljava/nio/IntBuffer;

    goto :goto_2

    :cond_8
    invoke-virtual {v3}, Ljava/nio/IntBuffer;->flip()Ljava/nio/Buffer;

    invoke-virtual {v3}, Ljava/nio/Buffer;->remaining()I

    move-result v2

    new-instance v4, Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;

    invoke-direct {v4, v2}, Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;-><init>(I)V

    const/4 v8, 0x0

    :goto_4
    if-ge v8, v2, :cond_9

    invoke-virtual {v3, v8}, Ljava/nio/IntBuffer;->get(I)I

    move-result v5

    invoke-virtual {v4, v8, v5}, Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;->set(II)V

    add-int/lit8 v8, v8, 0x1

    goto :goto_4

    :cond_9
    iget-object v2, v0, LIb/k$a;->d:Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;

    invoke-virtual {v2, v1}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;->q2(Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;)V

    iget-object v1, v0, LIb/k$a;->d:Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;

    invoke-virtual {v1, v4}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;->i2(Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;)V

    iget-object v1, v0, LIb/k$a;->d:Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;->apply()V

    return-void

    :cond_a
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Triangle index count is not multiple of 3"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_b
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "vertexCount <= 0"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_c
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "src.getTriangles() == null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_d
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "src.getVertices() == null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
