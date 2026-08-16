.class public final Lcom/ardor3d/util/geom/BufferUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final ref:Ljava/lang/Object;

.field private static final trackingHash:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/nio/Buffer;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/common/collect/O1;

    invoke-direct {v0}, Lcom/google/common/collect/O1;-><init>()V

    invoke-virtual {v0}, Lcom/google/common/collect/O1;->l()Lcom/google/common/collect/O1;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/O1;->i()Ljava/util/concurrent/ConcurrentMap;

    move-result-object v0

    sput-object v0, Lcom/ardor3d/util/geom/BufferUtils;->trackingHash:Ljava/util/Map;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/ardor3d/util/geom/BufferUtils;->ref:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addInBuffer(Lcom/ardor3d/math/type/ReadOnlyVector2;Ljava/nio/FloatBuffer;I)V
    .locals 1

    .line 11
    invoke-static {}, Lcom/ardor3d/math/Vector2;->fetchTempInstance()Lcom/ardor3d/math/Vector2;

    move-result-object v0

    .line 12
    invoke-static {v0, p1, p2}, Lcom/ardor3d/util/geom/BufferUtils;->populateFromBuffer(Lcom/ardor3d/math/Vector2;Ljava/nio/FloatBuffer;I)V

    .line 13
    invoke-virtual {v0, p0}, Lcom/ardor3d/math/Vector2;->addLocal(Lcom/ardor3d/math/type/ReadOnlyVector2;)Lcom/ardor3d/math/Vector2;

    .line 14
    invoke-static {v0, p1, p2}, Lcom/ardor3d/util/geom/BufferUtils;->setInBuffer(Lcom/ardor3d/math/type/ReadOnlyVector2;Ljava/nio/FloatBuffer;I)V

    .line 15
    invoke-static {v0}, Lcom/ardor3d/math/Vector2;->releaseTempInstance(Lcom/ardor3d/math/Vector2;)V

    return-void
.end method

.method public static addInBuffer(Lcom/ardor3d/math/type/ReadOnlyVector3;Ljava/nio/FloatBuffer;I)V
    .locals 1

    .line 6
    invoke-static {}, Lcom/ardor3d/math/Vector3;->fetchTempInstance()Lcom/ardor3d/math/Vector3;

    move-result-object v0

    .line 7
    invoke-static {v0, p1, p2}, Lcom/ardor3d/util/geom/BufferUtils;->populateFromBuffer(Lcom/ardor3d/math/Vector3;Ljava/nio/FloatBuffer;I)V

    .line 8
    invoke-virtual {v0, p0}, Lcom/ardor3d/math/Vector3;->addLocal(Lcom/ardor3d/math/type/ReadOnlyVector3;)Lcom/ardor3d/math/Vector3;

    .line 9
    invoke-static {v0, p1, p2}, Lcom/ardor3d/util/geom/BufferUtils;->setInBuffer(Lcom/ardor3d/math/type/ReadOnlyVector3;Ljava/nio/FloatBuffer;I)V

    .line 10
    invoke-static {v0}, Lcom/ardor3d/math/Vector3;->releaseTempInstance(Lcom/ardor3d/math/Vector3;)V

    return-void
.end method

.method public static addInBuffer(Lcom/ardor3d/math/type/ReadOnlyVector4;Ljava/nio/FloatBuffer;I)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/ardor3d/math/Vector4;->fetchTempInstance()Lcom/ardor3d/math/Vector4;

    move-result-object v0

    .line 2
    invoke-static {v0, p1, p2}, Lcom/ardor3d/util/geom/BufferUtils;->populateFromBuffer(Lcom/ardor3d/math/Vector4;Ljava/nio/FloatBuffer;I)V

    .line 3
    invoke-virtual {v0, p0}, Lcom/ardor3d/math/Vector4;->addLocal(Lcom/ardor3d/math/type/ReadOnlyVector4;)Lcom/ardor3d/math/Vector4;

    .line 4
    invoke-static {v0, p1, p2}, Lcom/ardor3d/util/geom/BufferUtils;->setInBuffer(Lcom/ardor3d/math/type/ReadOnlyVector4;Ljava/nio/FloatBuffer;I)V

    .line 5
    invoke-static {v0}, Lcom/ardor3d/math/Vector4;->releaseTempInstance(Lcom/ardor3d/math/Vector4;)V

    return-void
.end method

.method public static clone(Lcom/ardor3d/scenegraph/IndexBufferData;)Lcom/ardor3d/scenegraph/IndexBufferData;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ardor3d/scenegraph/IndexBufferData<",
            "*>;)",
            "Lcom/ardor3d/scenegraph/IndexBufferData<",
            "*>;"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 26
    :cond_0
    invoke-virtual {p0}, Lcom/ardor3d/scenegraph/AbstractBufferData;->getBufferLimit()I

    move-result v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/ardor3d/util/geom/BufferUtils;->createIndexBufferData(ILjava/lang/Class;)Lcom/ardor3d/scenegraph/IndexBufferData;

    move-result-object v1

    .line 27
    invoke-virtual {p0}, Lcom/ardor3d/scenegraph/IndexBufferData;->getBuffer()Ljava/nio/Buffer;

    move-result-object v2

    if-nez v2, :cond_1

    .line 28
    invoke-virtual {v1, v0}, Lcom/ardor3d/scenegraph/AbstractBufferData;->setBuffer(Ljava/nio/Buffer;)V

    goto :goto_0

    .line 29
    :cond_1
    invoke-virtual {p0}, Lcom/ardor3d/scenegraph/IndexBufferData;->getBuffer()Ljava/nio/Buffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/Buffer;->rewind()Ljava/nio/Buffer;

    .line 30
    invoke-virtual {v1, p0}, Lcom/ardor3d/scenegraph/IndexBufferData;->put(Lcom/ardor3d/scenegraph/IndexBufferData;)V

    :goto_0
    return-object v1
.end method

.method public static clone(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 16
    :cond_0
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 17
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->isDirect()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 18
    invoke-virtual {p0}, Ljava/nio/Buffer;->limit()I

    move-result v0

    invoke-static {v0}, Lcom/ardor3d/util/geom/BufferUtils;->createByteBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    goto :goto_0

    .line 19
    :cond_1
    invoke-virtual {p0}, Ljava/nio/Buffer;->limit()I

    move-result v0

    invoke-static {v0}, Lcom/ardor3d/util/geom/BufferUtils;->createByteBufferOnHeap(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 20
    :goto_0
    invoke-virtual {v0, p0}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    return-object v0
.end method

.method public static clone(Ljava/nio/DoubleBuffer;)Ljava/nio/DoubleBuffer;
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 1
    :cond_0
    invoke-virtual {p0}, Ljava/nio/DoubleBuffer;->rewind()Ljava/nio/Buffer;

    .line 2
    invoke-virtual {p0}, Ljava/nio/DoubleBuffer;->isDirect()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3
    invoke-virtual {p0}, Ljava/nio/Buffer;->limit()I

    move-result v0

    invoke-static {v0}, Lcom/ardor3d/util/geom/BufferUtils;->createDoubleBuffer(I)Ljava/nio/DoubleBuffer;

    move-result-object v0

    goto :goto_0

    .line 4
    :cond_1
    invoke-virtual {p0}, Ljava/nio/Buffer;->limit()I

    move-result v0

    invoke-static {v0}, Lcom/ardor3d/util/geom/BufferUtils;->createDoubleBufferOnHeap(I)Ljava/nio/DoubleBuffer;

    move-result-object v0

    .line 5
    :goto_0
    invoke-virtual {v0, p0}, Ljava/nio/DoubleBuffer;->put(Ljava/nio/DoubleBuffer;)Ljava/nio/DoubleBuffer;

    return-object v0
.end method

.method public static clone(Ljava/nio/FloatBuffer;)Ljava/nio/FloatBuffer;
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 6
    :cond_0
    invoke-virtual {p0}, Ljava/nio/FloatBuffer;->rewind()Ljava/nio/Buffer;

    .line 7
    invoke-virtual {p0}, Ljava/nio/FloatBuffer;->isDirect()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 8
    invoke-virtual {p0}, Ljava/nio/Buffer;->limit()I

    move-result v0

    invoke-static {v0}, Lcom/ardor3d/util/geom/BufferUtils;->createFloatBuffer(I)Ljava/nio/FloatBuffer;

    move-result-object v0

    goto :goto_0

    .line 9
    :cond_1
    invoke-virtual {p0}, Ljava/nio/Buffer;->limit()I

    move-result v0

    invoke-static {v0}, Lcom/ardor3d/util/geom/BufferUtils;->createFloatBufferOnHeap(I)Ljava/nio/FloatBuffer;

    move-result-object v0

    .line 10
    :goto_0
    invoke-virtual {v0, p0}, Ljava/nio/FloatBuffer;->put(Ljava/nio/FloatBuffer;)Ljava/nio/FloatBuffer;

    return-object v0
.end method

.method public static clone(Ljava/nio/IntBuffer;)Ljava/nio/IntBuffer;
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 11
    :cond_0
    invoke-virtual {p0}, Ljava/nio/IntBuffer;->rewind()Ljava/nio/Buffer;

    .line 12
    invoke-virtual {p0}, Ljava/nio/IntBuffer;->isDirect()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 13
    invoke-virtual {p0}, Ljava/nio/Buffer;->limit()I

    move-result v0

    invoke-static {v0}, Lcom/ardor3d/util/geom/BufferUtils;->createIntBuffer(I)Ljava/nio/IntBuffer;

    move-result-object v0

    goto :goto_0

    .line 14
    :cond_1
    invoke-virtual {p0}, Ljava/nio/Buffer;->limit()I

    move-result v0

    invoke-static {v0}, Lcom/ardor3d/util/geom/BufferUtils;->createIntBufferOnHeap(I)Ljava/nio/IntBuffer;

    move-result-object v0

    .line 15
    :goto_0
    invoke-virtual {v0, p0}, Ljava/nio/IntBuffer;->put(Ljava/nio/IntBuffer;)Ljava/nio/IntBuffer;

    return-object v0
.end method

.method public static clone(Ljava/nio/ShortBuffer;)Ljava/nio/ShortBuffer;
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 21
    :cond_0
    invoke-virtual {p0}, Ljava/nio/ShortBuffer;->rewind()Ljava/nio/Buffer;

    .line 22
    invoke-virtual {p0}, Ljava/nio/ShortBuffer;->isDirect()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 23
    invoke-virtual {p0}, Ljava/nio/Buffer;->limit()I

    move-result v0

    invoke-static {v0}, Lcom/ardor3d/util/geom/BufferUtils;->createShortBuffer(I)Ljava/nio/ShortBuffer;

    move-result-object v0

    goto :goto_0

    .line 24
    :cond_1
    invoke-virtual {p0}, Ljava/nio/Buffer;->limit()I

    move-result v0

    invoke-static {v0}, Lcom/ardor3d/util/geom/BufferUtils;->createShortBufferOnHeap(I)Ljava/nio/ShortBuffer;

    move-result-object v0

    .line 25
    :goto_0
    invoke-virtual {v0, p0}, Ljava/nio/ShortBuffer;->put(Ljava/nio/ShortBuffer;)Ljava/nio/ShortBuffer;

    return-object v0
.end method

.method public static cloneOnHeap(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    invoke-virtual {p0}, Ljava/nio/Buffer;->limit()I

    move-result v0

    invoke-static {v0}, Lcom/ardor3d/util/geom/BufferUtils;->createByteBufferOnHeap(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    return-object v0
.end method

.method public static copyInternal(Ljava/nio/FloatBuffer;III)V
    .locals 0

    new-array p3, p3, [F

    invoke-virtual {p0, p1}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    invoke-virtual {p0, p3}, Ljava/nio/FloatBuffer;->get([F)Ljava/nio/FloatBuffer;

    invoke-virtual {p0, p2}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    invoke-virtual {p0, p3}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    return-void
.end method

.method public static copyInternalColor(Ljava/nio/FloatBuffer;II)V
    .locals 1

    const/4 v0, 0x4

    mul-int/2addr p1, v0

    mul-int/2addr p2, v0

    invoke-static {p0, p1, p2, v0}, Lcom/ardor3d/util/geom/BufferUtils;->copyInternal(Ljava/nio/FloatBuffer;III)V

    return-void
.end method

.method public static copyInternalVector2(Ljava/nio/FloatBuffer;II)V
    .locals 1

    const/4 v0, 0x2

    mul-int/2addr p1, v0

    mul-int/2addr p2, v0

    invoke-static {p0, p1, p2, v0}, Lcom/ardor3d/util/geom/BufferUtils;->copyInternal(Ljava/nio/FloatBuffer;III)V

    return-void
.end method

.method public static copyInternalVector3(Ljava/nio/FloatBuffer;II)V
    .locals 1

    const/4 v0, 0x3

    mul-int/2addr p1, v0

    mul-int/2addr p2, v0

    invoke-static {p0, p1, p2, v0}, Lcom/ardor3d/util/geom/BufferUtils;->copyInternal(Ljava/nio/FloatBuffer;III)V

    return-void
.end method

.method public static copyInternalVector4(Ljava/nio/FloatBuffer;II)V
    .locals 1

    const/4 v0, 0x4

    mul-int/2addr p1, v0

    mul-int/2addr p2, v0

    invoke-static {p0, p1, p2, v0}, Lcom/ardor3d/util/geom/BufferUtils;->copyInternal(Ljava/nio/FloatBuffer;III)V

    return-void
.end method

.method public static createByteBuffer(I)Ljava/nio/ByteBuffer;
    .locals 2

    .line 1
    invoke-static {p0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object p0

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object p0

    .line 2
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 3
    sget-boolean v0, Lcom/ardor3d/util/Constants;->trackDirectMemory:Z

    if-eqz v0, :cond_0

    .line 4
    sget-object v0, Lcom/ardor3d/util/geom/BufferUtils;->trackingHash:Ljava/util/Map;

    sget-object v1, Lcom/ardor3d/util/geom/BufferUtils;->ref:Ljava/lang/Object;

    invoke-interface {v0, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object p0
.end method

.method public static createByteBuffer(Ljava/nio/ByteBuffer;I)Ljava/nio/ByteBuffer;
    .locals 1

    if-eqz p0, :cond_0

    .line 5
    invoke-virtual {p0}, Ljava/nio/Buffer;->limit()I

    move-result v0

    if-ne v0, p1, :cond_0

    .line 6
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    return-object p0

    .line 7
    :cond_0
    invoke-static {p1}, Lcom/ardor3d/util/geom/BufferUtils;->createByteBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object p0

    return-object p0
.end method

.method public static createByteBufferOnHeap(I)Ljava/nio/ByteBuffer;
    .locals 1

    .line 1
    invoke-static {p0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object p0

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object p0

    .line 2
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    return-object p0
.end method

.method public static createByteBufferOnHeap(Ljava/nio/ByteBuffer;I)Ljava/nio/ByteBuffer;
    .locals 1

    if-eqz p0, :cond_0

    .line 3
    invoke-virtual {p0}, Ljava/nio/Buffer;->limit()I

    move-result v0

    if-ne v0, p1, :cond_0

    .line 4
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    return-object p0

    .line 5
    :cond_0
    invoke-static {p1}, Lcom/ardor3d/util/geom/BufferUtils;->createByteBufferOnHeap(I)Ljava/nio/ByteBuffer;

    move-result-object p0

    return-object p0
.end method

.method public static createColorBuffer(I)Ljava/nio/FloatBuffer;
    .locals 0

    mul-int/lit8 p0, p0, 0x4

    invoke-static {p0}, Lcom/ardor3d/util/geom/BufferUtils;->createFloatBuffer(I)Ljava/nio/FloatBuffer;

    move-result-object p0

    return-object p0
.end method

.method public static createDoubleBuffer(I)Ljava/nio/DoubleBuffer;
    .locals 2

    mul-int/lit8 p0, p0, 0x8

    .line 1
    invoke-static {p0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object p0

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->asDoubleBuffer()Ljava/nio/DoubleBuffer;

    move-result-object p0

    .line 2
    invoke-virtual {p0}, Ljava/nio/DoubleBuffer;->clear()Ljava/nio/Buffer;

    .line 3
    sget-boolean v0, Lcom/ardor3d/util/Constants;->trackDirectMemory:Z

    if-eqz v0, :cond_0

    .line 4
    sget-object v0, Lcom/ardor3d/util/geom/BufferUtils;->trackingHash:Ljava/util/Map;

    sget-object v1, Lcom/ardor3d/util/geom/BufferUtils;->ref:Ljava/lang/Object;

    invoke-interface {v0, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object p0
.end method

.method public static createDoubleBuffer(Ljava/nio/DoubleBuffer;I)Ljava/nio/DoubleBuffer;
    .locals 1

    if-eqz p0, :cond_0

    .line 5
    invoke-virtual {p0}, Ljava/nio/Buffer;->limit()I

    move-result v0

    if-ne v0, p1, :cond_0

    .line 6
    invoke-virtual {p0}, Ljava/nio/DoubleBuffer;->rewind()Ljava/nio/Buffer;

    return-object p0

    .line 7
    :cond_0
    invoke-static {p1}, Lcom/ardor3d/util/geom/BufferUtils;->createDoubleBuffer(I)Ljava/nio/DoubleBuffer;

    move-result-object p0

    return-object p0
.end method

.method public static createDoubleBufferOnHeap(I)Ljava/nio/DoubleBuffer;
    .locals 1

    mul-int/lit8 p0, p0, 0x8

    invoke-static {p0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object p0

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->asDoubleBuffer()Ljava/nio/DoubleBuffer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/nio/DoubleBuffer;->clear()Ljava/nio/Buffer;

    return-object p0
.end method

.method public static createFloatBuffer(I)Ljava/nio/FloatBuffer;
    .locals 2

    mul-int/lit8 p0, p0, 0x4

    .line 25
    invoke-static {p0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object p0

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object p0

    .line 26
    invoke-virtual {p0}, Ljava/nio/FloatBuffer;->clear()Ljava/nio/Buffer;

    .line 27
    sget-boolean v0, Lcom/ardor3d/util/Constants;->trackDirectMemory:Z

    if-eqz v0, :cond_0

    .line 28
    sget-object v0, Lcom/ardor3d/util/geom/BufferUtils;->trackingHash:Ljava/util/Map;

    sget-object v1, Lcom/ardor3d/util/geom/BufferUtils;->ref:Ljava/lang/Object;

    invoke-interface {v0, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object p0
.end method

.method public static varargs createFloatBuffer(II[Lcom/ardor3d/math/type/ReadOnlyColorRGBA;)Ljava/nio/FloatBuffer;
    .locals 3

    if-nez p2, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    mul-int/lit8 v0, p1, 0x4

    .line 2
    invoke-static {v0}, Lcom/ardor3d/util/geom/BufferUtils;->createFloatBuffer(I)Ljava/nio/FloatBuffer;

    move-result-object v0

    :goto_0
    if-ge p0, p1, :cond_2

    .line 3
    aget-object v1, p2, p0

    if-eqz v1, :cond_1

    .line 4
    invoke-interface {v1}, Lcom/ardor3d/math/type/ReadOnlyColorRGBA;->getRed()F

    move-result v1

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-result-object v1

    aget-object v2, p2, p0

    invoke-interface {v2}, Lcom/ardor3d/math/type/ReadOnlyColorRGBA;->getGreen()F

    move-result v2

    invoke-virtual {v1, v2}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-result-object v1

    aget-object v2, p2, p0

    invoke-interface {v2}, Lcom/ardor3d/math/type/ReadOnlyColorRGBA;->getBlue()F

    move-result v2

    invoke-virtual {v1, v2}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-result-object v1

    aget-object v2, p2, p0

    invoke-interface {v2}, Lcom/ardor3d/math/type/ReadOnlyColorRGBA;->getAlpha()F

    move-result v2

    invoke-virtual {v1, v2}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    .line 5
    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    :goto_1
    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    .line 6
    :cond_2
    invoke-virtual {v0}, Ljava/nio/FloatBuffer;->flip()Ljava/nio/Buffer;

    return-object v0
.end method

.method public static varargs createFloatBuffer(II[Lcom/ardor3d/math/type/ReadOnlyVector2;)Ljava/nio/FloatBuffer;
    .locals 3

    if-nez p2, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    mul-int/lit8 v0, p1, 0x2

    .line 20
    invoke-static {v0}, Lcom/ardor3d/util/geom/BufferUtils;->createFloatBuffer(I)Ljava/nio/FloatBuffer;

    move-result-object v0

    :goto_0
    if-ge p0, p1, :cond_2

    .line 21
    aget-object v1, p2, p0

    if-eqz v1, :cond_1

    .line 22
    invoke-interface {v1}, Lcom/ardor3d/math/type/ReadOnlyVector2;->getXf()F

    move-result v1

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-result-object v1

    aget-object v2, p2, p0

    invoke-interface {v2}, Lcom/ardor3d/math/type/ReadOnlyVector2;->getYf()F

    move-result v2

    invoke-virtual {v1, v2}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    .line 23
    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    :goto_1
    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    .line 24
    :cond_2
    invoke-virtual {v0}, Ljava/nio/FloatBuffer;->flip()Ljava/nio/Buffer;

    return-object v0
.end method

.method public static varargs createFloatBuffer(II[Lcom/ardor3d/math/type/ReadOnlyVector3;)Ljava/nio/FloatBuffer;
    .locals 3

    if-nez p2, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    mul-int/lit8 v0, p1, 0x3

    .line 14
    invoke-static {v0}, Lcom/ardor3d/util/geom/BufferUtils;->createFloatBuffer(I)Ljava/nio/FloatBuffer;

    move-result-object v0

    :goto_0
    if-ge p0, p1, :cond_2

    .line 15
    aget-object v1, p2, p0

    if-eqz v1, :cond_1

    .line 16
    invoke-interface {v1}, Lcom/ardor3d/math/type/ReadOnlyVector3;->getXf()F

    move-result v1

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-result-object v1

    aget-object v2, p2, p0

    invoke-interface {v2}, Lcom/ardor3d/math/type/ReadOnlyVector3;->getYf()F

    move-result v2

    invoke-virtual {v1, v2}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-result-object v1

    aget-object v2, p2, p0

    invoke-interface {v2}, Lcom/ardor3d/math/type/ReadOnlyVector3;->getZf()F

    move-result v2

    invoke-virtual {v1, v2}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    .line 17
    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    :goto_1
    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    .line 18
    :cond_2
    invoke-virtual {v0}, Ljava/nio/FloatBuffer;->flip()Ljava/nio/Buffer;

    return-object v0
.end method

.method public static varargs createFloatBuffer(II[Lcom/ardor3d/math/type/ReadOnlyVector4;)Ljava/nio/FloatBuffer;
    .locals 3

    if-nez p2, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    mul-int/lit8 v0, p1, 0x4

    .line 8
    invoke-static {v0}, Lcom/ardor3d/util/geom/BufferUtils;->createFloatBuffer(I)Ljava/nio/FloatBuffer;

    move-result-object v0

    :goto_0
    if-ge p0, p1, :cond_2

    .line 9
    aget-object v1, p2, p0

    if-eqz v1, :cond_1

    .line 10
    invoke-interface {v1}, Lcom/ardor3d/math/type/ReadOnlyVector4;->getXf()F

    move-result v1

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-result-object v1

    aget-object v2, p2, p0

    invoke-interface {v2}, Lcom/ardor3d/math/type/ReadOnlyVector4;->getYf()F

    move-result v2

    invoke-virtual {v1, v2}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-result-object v1

    aget-object v2, p2, p0

    invoke-interface {v2}, Lcom/ardor3d/math/type/ReadOnlyVector4;->getZf()F

    move-result v2

    invoke-virtual {v1, v2}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-result-object v1

    aget-object v2, p2, p0

    invoke-interface {v2}, Lcom/ardor3d/math/type/ReadOnlyVector4;->getWf()F

    move-result v2

    invoke-virtual {v1, v2}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    .line 11
    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    :goto_1
    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    .line 12
    :cond_2
    invoke-virtual {v0}, Ljava/nio/FloatBuffer;->flip()Ljava/nio/Buffer;

    return-object v0
.end method

.method public static varargs createFloatBuffer(Ljava/nio/FloatBuffer;[F)Ljava/nio/FloatBuffer;
    .locals 2

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    if-eqz p0, :cond_2

    .line 30
    invoke-virtual {p0}, Ljava/nio/Buffer;->capacity()I

    move-result v0

    array-length v1, p1

    if-eq v0, v1, :cond_1

    goto :goto_0

    .line 31
    :cond_1
    invoke-virtual {p0}, Ljava/nio/FloatBuffer;->clear()Ljava/nio/Buffer;

    goto :goto_1

    .line 32
    :cond_2
    :goto_0
    array-length p0, p1

    invoke-static {p0}, Lcom/ardor3d/util/geom/BufferUtils;->createFloatBuffer(I)Ljava/nio/FloatBuffer;

    move-result-object p0

    .line 33
    :goto_1
    invoke-virtual {p0}, Ljava/nio/FloatBuffer;->clear()Ljava/nio/Buffer;

    .line 34
    invoke-virtual {p0, p1}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    .line 35
    invoke-virtual {p0}, Ljava/nio/FloatBuffer;->flip()Ljava/nio/Buffer;

    return-object p0
.end method

.method public static varargs createFloatBuffer([F)Ljava/nio/FloatBuffer;
    .locals 1

    const/4 v0, 0x0

    .line 29
    invoke-static {v0, p0}, Lcom/ardor3d/util/geom/BufferUtils;->createFloatBuffer(Ljava/nio/FloatBuffer;[F)Ljava/nio/FloatBuffer;

    move-result-object p0

    return-object p0
.end method

.method public static varargs createFloatBuffer([Lcom/ardor3d/math/type/ReadOnlyColorRGBA;)Ljava/nio/FloatBuffer;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const/4 v0, 0x0

    .line 1
    array-length v1, p0

    invoke-static {v0, v1, p0}, Lcom/ardor3d/util/geom/BufferUtils;->createFloatBuffer(II[Lcom/ardor3d/math/type/ReadOnlyColorRGBA;)Ljava/nio/FloatBuffer;

    move-result-object p0

    return-object p0
.end method

.method public static varargs createFloatBuffer([Lcom/ardor3d/math/type/ReadOnlyVector2;)Ljava/nio/FloatBuffer;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const/4 v0, 0x0

    .line 19
    array-length v1, p0

    invoke-static {v0, v1, p0}, Lcom/ardor3d/util/geom/BufferUtils;->createFloatBuffer(II[Lcom/ardor3d/math/type/ReadOnlyVector2;)Ljava/nio/FloatBuffer;

    move-result-object p0

    return-object p0
.end method

.method public static varargs createFloatBuffer([Lcom/ardor3d/math/type/ReadOnlyVector3;)Ljava/nio/FloatBuffer;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const/4 v0, 0x0

    .line 13
    array-length v1, p0

    invoke-static {v0, v1, p0}, Lcom/ardor3d/util/geom/BufferUtils;->createFloatBuffer(II[Lcom/ardor3d/math/type/ReadOnlyVector3;)Ljava/nio/FloatBuffer;

    move-result-object p0

    return-object p0
.end method

.method public static varargs createFloatBuffer([Lcom/ardor3d/math/type/ReadOnlyVector4;)Ljava/nio/FloatBuffer;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const/4 v0, 0x0

    .line 7
    array-length v1, p0

    invoke-static {v0, v1, p0}, Lcom/ardor3d/util/geom/BufferUtils;->createFloatBuffer(II[Lcom/ardor3d/math/type/ReadOnlyVector4;)Ljava/nio/FloatBuffer;

    move-result-object p0

    return-object p0
.end method

.method public static createFloatBufferOnHeap(I)Ljava/nio/FloatBuffer;
    .locals 1

    mul-int/lit8 p0, p0, 0x4

    invoke-static {p0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object p0

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/nio/FloatBuffer;->clear()Ljava/nio/Buffer;

    return-object p0
.end method

.method public static createIndexBufferData(II)Lcom/ardor3d/scenegraph/IndexBufferData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Lcom/ardor3d/scenegraph/IndexBufferData<",
            "*>;"
        }
    .end annotation

    const/16 v0, 0x100

    if-ge p1, v0, :cond_0

    .line 1
    const-class p1, Lcom/ardor3d/scenegraph/ByteBufferData;

    invoke-static {p0, p1}, Lcom/ardor3d/util/geom/BufferUtils;->createIndexBufferData(ILjava/lang/Class;)Lcom/ardor3d/scenegraph/IndexBufferData;

    move-result-object p0

    return-object p0

    :cond_0
    const/high16 v0, 0x10000

    if-ge p1, v0, :cond_1

    .line 2
    const-class p1, Lcom/ardor3d/scenegraph/ShortBufferData;

    invoke-static {p0, p1}, Lcom/ardor3d/util/geom/BufferUtils;->createIndexBufferData(ILjava/lang/Class;)Lcom/ardor3d/scenegraph/IndexBufferData;

    move-result-object p0

    return-object p0

    .line 3
    :cond_1
    const-class p1, Lcom/ardor3d/scenegraph/IntBufferData;

    invoke-static {p0, p1}, Lcom/ardor3d/util/geom/BufferUtils;->createIndexBufferData(ILjava/lang/Class;)Lcom/ardor3d/scenegraph/IndexBufferData;

    move-result-object p0

    return-object p0
.end method

.method public static createIndexBufferData(ILjava/lang/Class;)Lcom/ardor3d/scenegraph/IndexBufferData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/Class<",
            "+",
            "Lcom/ardor3d/scenegraph/IndexBufferData<",
            "*>;>;)",
            "Lcom/ardor3d/scenegraph/IndexBufferData<",
            "*>;"
        }
    .end annotation

    .line 4
    :try_start_0
    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    filled-new-array {v0}, [Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object p1

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/ardor3d/scenegraph/IndexBufferData;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 5
    new-instance p1, Lcom/ardor3d/util/Ardor3dException;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0, p0}, Lcom/ardor3d/util/Ardor3dException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method public static createIntBuffer(I)Ljava/nio/IntBuffer;
    .locals 2

    mul-int/lit8 p0, p0, 0x4

    .line 5
    invoke-static {p0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object p0

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->asIntBuffer()Ljava/nio/IntBuffer;

    move-result-object p0

    .line 6
    invoke-virtual {p0}, Ljava/nio/IntBuffer;->clear()Ljava/nio/Buffer;

    .line 7
    sget-boolean v0, Lcom/ardor3d/util/Constants;->trackDirectMemory:Z

    if-eqz v0, :cond_0

    .line 8
    sget-object v0, Lcom/ardor3d/util/geom/BufferUtils;->trackingHash:Ljava/util/Map;

    sget-object v1, Lcom/ardor3d/util/geom/BufferUtils;->ref:Ljava/lang/Object;

    invoke-interface {v0, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object p0
.end method

.method public static createIntBuffer(Ljava/nio/IntBuffer;I)Ljava/nio/IntBuffer;
    .locals 1

    if-eqz p0, :cond_0

    .line 9
    invoke-virtual {p0}, Ljava/nio/Buffer;->limit()I

    move-result v0

    if-ne v0, p1, :cond_0

    .line 10
    invoke-virtual {p0}, Ljava/nio/IntBuffer;->rewind()Ljava/nio/Buffer;

    return-object p0

    .line 11
    :cond_0
    invoke-static {p1}, Lcom/ardor3d/util/geom/BufferUtils;->createIntBuffer(I)Ljava/nio/IntBuffer;

    move-result-object p0

    return-object p0
.end method

.method public static varargs createIntBuffer([I)Ljava/nio/IntBuffer;
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 1
    :cond_0
    array-length v0, p0

    invoke-static {v0}, Lcom/ardor3d/util/geom/BufferUtils;->createIntBuffer(I)Ljava/nio/IntBuffer;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Ljava/nio/IntBuffer;->clear()Ljava/nio/Buffer;

    .line 3
    invoke-virtual {v0, p0}, Ljava/nio/IntBuffer;->put([I)Ljava/nio/IntBuffer;

    .line 4
    invoke-virtual {v0}, Ljava/nio/IntBuffer;->flip()Ljava/nio/Buffer;

    return-object v0
.end method

.method public static createIntBufferOnHeap(I)Ljava/nio/IntBuffer;
    .locals 1

    mul-int/lit8 p0, p0, 0x4

    invoke-static {p0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object p0

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->asIntBuffer()Ljava/nio/IntBuffer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/nio/IntBuffer;->clear()Ljava/nio/Buffer;

    return-object p0
.end method

.method public static createShortBuffer(I)Ljava/nio/ShortBuffer;
    .locals 2

    mul-int/lit8 p0, p0, 0x2

    .line 1
    invoke-static {p0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object p0

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->asShortBuffer()Ljava/nio/ShortBuffer;

    move-result-object p0

    .line 2
    invoke-virtual {p0}, Ljava/nio/ShortBuffer;->clear()Ljava/nio/Buffer;

    .line 3
    sget-boolean v0, Lcom/ardor3d/util/Constants;->trackDirectMemory:Z

    if-eqz v0, :cond_0

    .line 4
    sget-object v0, Lcom/ardor3d/util/geom/BufferUtils;->trackingHash:Ljava/util/Map;

    sget-object v1, Lcom/ardor3d/util/geom/BufferUtils;->ref:Ljava/lang/Object;

    invoke-interface {v0, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object p0
.end method

.method public static createShortBuffer(Ljava/nio/ShortBuffer;I)Ljava/nio/ShortBuffer;
    .locals 1

    if-eqz p0, :cond_0

    .line 9
    invoke-virtual {p0}, Ljava/nio/Buffer;->limit()I

    move-result v0

    if-ne v0, p1, :cond_0

    .line 10
    invoke-virtual {p0}, Ljava/nio/ShortBuffer;->rewind()Ljava/nio/Buffer;

    return-object p0

    .line 11
    :cond_0
    invoke-static {p1}, Lcom/ardor3d/util/geom/BufferUtils;->createShortBuffer(I)Ljava/nio/ShortBuffer;

    move-result-object p0

    return-object p0
.end method

.method public static varargs createShortBuffer([S)Ljava/nio/ShortBuffer;
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 5
    :cond_0
    array-length v0, p0

    invoke-static {v0}, Lcom/ardor3d/util/geom/BufferUtils;->createShortBuffer(I)Ljava/nio/ShortBuffer;

    move-result-object v0

    .line 6
    invoke-virtual {v0}, Ljava/nio/ShortBuffer;->clear()Ljava/nio/Buffer;

    .line 7
    invoke-virtual {v0, p0}, Ljava/nio/ShortBuffer;->put([S)Ljava/nio/ShortBuffer;

    .line 8
    invoke-virtual {v0}, Ljava/nio/ShortBuffer;->flip()Ljava/nio/Buffer;

    return-object v0
.end method

.method public static createShortBufferOnHeap(I)Ljava/nio/ShortBuffer;
    .locals 1

    mul-int/lit8 p0, p0, 0x2

    invoke-static {p0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object p0

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->asShortBuffer()Ljava/nio/ShortBuffer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/nio/ShortBuffer;->clear()Ljava/nio/Buffer;

    return-object p0
.end method

.method public static createVector2Buffer(I)Ljava/nio/FloatBuffer;
    .locals 0

    mul-int/lit8 p0, p0, 0x2

    .line 1
    invoke-static {p0}, Lcom/ardor3d/util/geom/BufferUtils;->createFloatBuffer(I)Ljava/nio/FloatBuffer;

    move-result-object p0

    return-object p0
.end method

.method public static createVector2Buffer(Ljava/nio/FloatBuffer;I)Ljava/nio/FloatBuffer;
    .locals 2

    if-eqz p0, :cond_0

    .line 2
    invoke-virtual {p0}, Ljava/nio/Buffer;->limit()I

    move-result v0

    mul-int/lit8 v1, p1, 0x2

    if-ne v0, v1, :cond_0

    .line 3
    invoke-virtual {p0}, Ljava/nio/FloatBuffer;->rewind()Ljava/nio/Buffer;

    return-object p0

    :cond_0
    mul-int/lit8 p1, p1, 0x2

    .line 4
    invoke-static {p1}, Lcom/ardor3d/util/geom/BufferUtils;->createFloatBuffer(I)Ljava/nio/FloatBuffer;

    move-result-object p0

    return-object p0
.end method

.method public static createVector3Buffer(I)Ljava/nio/FloatBuffer;
    .locals 0

    mul-int/lit8 p0, p0, 0x3

    .line 1
    invoke-static {p0}, Lcom/ardor3d/util/geom/BufferUtils;->createFloatBuffer(I)Ljava/nio/FloatBuffer;

    move-result-object p0

    return-object p0
.end method

.method public static createVector3Buffer(Ljava/nio/FloatBuffer;I)Ljava/nio/FloatBuffer;
    .locals 2

    if-eqz p0, :cond_0

    .line 2
    invoke-virtual {p0}, Ljava/nio/Buffer;->limit()I

    move-result v0

    mul-int/lit8 v1, p1, 0x3

    if-ne v0, v1, :cond_0

    .line 3
    invoke-virtual {p0}, Ljava/nio/FloatBuffer;->rewind()Ljava/nio/Buffer;

    return-object p0

    :cond_0
    mul-int/lit8 p1, p1, 0x3

    .line 4
    invoke-static {p1}, Lcom/ardor3d/util/geom/BufferUtils;->createFloatBuffer(I)Ljava/nio/FloatBuffer;

    move-result-object p0

    return-object p0
.end method

.method public static createVector4Buffer(I)Ljava/nio/FloatBuffer;
    .locals 0

    mul-int/lit8 p0, p0, 0x4

    .line 1
    invoke-static {p0}, Lcom/ardor3d/util/geom/BufferUtils;->createFloatBuffer(I)Ljava/nio/FloatBuffer;

    move-result-object p0

    return-object p0
.end method

.method public static createVector4Buffer(Ljava/nio/FloatBuffer;I)Ljava/nio/FloatBuffer;
    .locals 2

    if-eqz p0, :cond_0

    .line 2
    invoke-virtual {p0}, Ljava/nio/Buffer;->limit()I

    move-result v0

    mul-int/lit8 v1, p1, 0x4

    if-ne v0, v1, :cond_0

    .line 3
    invoke-virtual {p0}, Ljava/nio/FloatBuffer;->rewind()Ljava/nio/Buffer;

    return-object p0

    :cond_0
    mul-int/lit8 p1, p1, 0x4

    .line 4
    invoke-static {p1}, Lcom/ardor3d/util/geom/BufferUtils;->createFloatBuffer(I)Ljava/nio/FloatBuffer;

    move-result-object p0

    return-object p0
.end method

.method public static ensureLargeEnough(Ljava/nio/FloatBuffer;I)Ljava/nio/FloatBuffer;
    .locals 1

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/nio/Buffer;->remaining()I

    move-result v0

    if-ge v0, p1, :cond_3

    :cond_0
    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/nio/Buffer;->position()I

    move-result v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    add-int/2addr p1, v0

    invoke-static {p1}, Lcom/ardor3d/util/geom/BufferUtils;->createFloatBuffer(I)Ljava/nio/FloatBuffer;

    move-result-object p1

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Ljava/nio/FloatBuffer;->rewind()Ljava/nio/Buffer;

    invoke-virtual {p1, p0}, Ljava/nio/FloatBuffer;->put(Ljava/nio/FloatBuffer;)Ljava/nio/FloatBuffer;

    invoke-virtual {p1, v0}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    :cond_2
    move-object p0, p1

    :cond_3
    return-object p0
.end method

.method public static equals(Lcom/ardor3d/math/type/ReadOnlyColorRGBA;Ljava/nio/FloatBuffer;I)Z
    .locals 1

    .line 1
    new-instance v0, Lcom/ardor3d/math/ColorRGBA;

    invoke-direct {v0}, Lcom/ardor3d/math/ColorRGBA;-><init>()V

    .line 2
    invoke-static {v0, p1, p2}, Lcom/ardor3d/util/geom/BufferUtils;->populateFromBuffer(Lcom/ardor3d/math/ColorRGBA;Ljava/nio/FloatBuffer;I)V

    .line 3
    invoke-virtual {v0, p0}, Lcom/ardor3d/math/ColorRGBA;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static equals(Lcom/ardor3d/math/type/ReadOnlyVector2;Ljava/nio/FloatBuffer;I)Z
    .locals 1

    .line 12
    invoke-static {}, Lcom/ardor3d/math/Vector2;->fetchTempInstance()Lcom/ardor3d/math/Vector2;

    move-result-object v0

    .line 13
    invoke-static {v0, p1, p2}, Lcom/ardor3d/util/geom/BufferUtils;->populateFromBuffer(Lcom/ardor3d/math/Vector2;Ljava/nio/FloatBuffer;I)V

    .line 14
    invoke-virtual {v0, p0}, Lcom/ardor3d/math/Vector2;->equals(Ljava/lang/Object;)Z

    move-result p0

    .line 15
    invoke-static {v0}, Lcom/ardor3d/math/Vector2;->releaseTempInstance(Lcom/ardor3d/math/Vector2;)V

    return p0
.end method

.method public static equals(Lcom/ardor3d/math/type/ReadOnlyVector3;Ljava/nio/FloatBuffer;I)Z
    .locals 1

    .line 8
    invoke-static {}, Lcom/ardor3d/math/Vector3;->fetchTempInstance()Lcom/ardor3d/math/Vector3;

    move-result-object v0

    .line 9
    invoke-static {v0, p1, p2}, Lcom/ardor3d/util/geom/BufferUtils;->populateFromBuffer(Lcom/ardor3d/math/Vector3;Ljava/nio/FloatBuffer;I)V

    .line 10
    invoke-virtual {v0, p0}, Lcom/ardor3d/math/Vector3;->equals(Ljava/lang/Object;)Z

    move-result p0

    .line 11
    invoke-static {v0}, Lcom/ardor3d/math/Vector3;->releaseTempInstance(Lcom/ardor3d/math/Vector3;)V

    return p0
.end method

.method public static equals(Lcom/ardor3d/math/type/ReadOnlyVector4;Ljava/nio/FloatBuffer;I)Z
    .locals 1

    .line 4
    invoke-static {}, Lcom/ardor3d/math/Vector4;->fetchTempInstance()Lcom/ardor3d/math/Vector4;

    move-result-object v0

    .line 5
    invoke-static {v0, p1, p2}, Lcom/ardor3d/util/geom/BufferUtils;->populateFromBuffer(Lcom/ardor3d/math/Vector4;Ljava/nio/FloatBuffer;I)V

    .line 6
    invoke-virtual {v0, p0}, Lcom/ardor3d/math/Vector4;->equals(Ljava/lang/Object;)Z

    move-result p0

    .line 7
    invoke-static {v0}, Lcom/ardor3d/math/Vector4;->releaseTempInstance(Lcom/ardor3d/math/Vector4;)V

    return p0
.end method

.method public static getColorArray(Ljava/nio/FloatBuffer;)[Lcom/ardor3d/math/ColorRGBA;
    .locals 8

    invoke-virtual {p0}, Ljava/nio/FloatBuffer;->rewind()Ljava/nio/Buffer;

    invoke-virtual {p0}, Ljava/nio/Buffer;->limit()I

    move-result v0

    shr-int/lit8 v0, v0, 0x2

    new-array v1, v0, [Lcom/ardor3d/math/ColorRGBA;

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    new-instance v3, Lcom/ardor3d/math/ColorRGBA;

    invoke-virtual {p0}, Ljava/nio/FloatBuffer;->get()F

    move-result v4

    invoke-virtual {p0}, Ljava/nio/FloatBuffer;->get()F

    move-result v5

    invoke-virtual {p0}, Ljava/nio/FloatBuffer;->get()F

    move-result v6

    invoke-virtual {p0}, Ljava/nio/FloatBuffer;->get()F

    move-result v7

    invoke-direct {v3, v4, v5, v6, v7}, Lcom/ardor3d/math/ColorRGBA;-><init>(FFFF)V

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method public static getFloatArray(Ljava/nio/FloatBuffer;)[F
    .locals 4

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Ljava/nio/FloatBuffer;->clear()Ljava/nio/Buffer;

    invoke-virtual {p0}, Ljava/nio/Buffer;->limit()I

    move-result v0

    new-array v1, v0, [F

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    invoke-virtual {p0}, Ljava/nio/FloatBuffer;->get()F

    move-result v3

    aput v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object v1
.end method

.method public static getIntArray(Lcom/ardor3d/scenegraph/IndexBufferData;)[I
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ardor3d/scenegraph/IndexBufferData<",
            "*>;)[I"
        }
    .end annotation

    if-eqz p0, :cond_2

    .line 4
    invoke-virtual {p0}, Lcom/ardor3d/scenegraph/AbstractBufferData;->getBufferLimit()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 5
    :cond_0
    invoke-virtual {p0}, Lcom/ardor3d/scenegraph/IndexBufferData;->getBuffer()Ljava/nio/Buffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/Buffer;->rewind()Ljava/nio/Buffer;

    .line 6
    invoke-virtual {p0}, Lcom/ardor3d/scenegraph/AbstractBufferData;->getBufferLimit()I

    move-result v0

    new-array v1, v0, [I

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    .line 7
    invoke-virtual {p0}, Lcom/ardor3d/scenegraph/IndexBufferData;->get()I

    move-result v3

    aput v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object v1

    :cond_2
    :goto_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getIntArray(Ljava/nio/IntBuffer;)[I
    .locals 4

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 1
    :cond_0
    invoke-virtual {p0}, Ljava/nio/IntBuffer;->rewind()Ljava/nio/Buffer;

    .line 2
    invoke-virtual {p0}, Ljava/nio/Buffer;->limit()I

    move-result v0

    new-array v1, v0, [I

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    .line 3
    invoke-virtual {p0}, Ljava/nio/IntBuffer;->get()I

    move-result v3

    aput v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object v1
.end method

.method public static getVector2Array(Ljava/nio/FloatBuffer;)[Lcom/ardor3d/math/Vector2;
    .locals 8

    invoke-virtual {p0}, Ljava/nio/FloatBuffer;->clear()Ljava/nio/Buffer;

    invoke-virtual {p0}, Ljava/nio/Buffer;->limit()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    new-array v1, v0, [Lcom/ardor3d/math/Vector2;

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    new-instance v3, Lcom/ardor3d/math/Vector2;

    invoke-virtual {p0}, Ljava/nio/FloatBuffer;->get()F

    move-result v4

    float-to-double v4, v4

    invoke-virtual {p0}, Ljava/nio/FloatBuffer;->get()F

    move-result v6

    float-to-double v6, v6

    invoke-direct {v3, v4, v5, v6, v7}, Lcom/ardor3d/math/Vector2;-><init>(DD)V

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method public static getVector3Array(Ljava/nio/FloatBuffer;)[Lcom/ardor3d/math/Vector3;
    .locals 11

    invoke-virtual {p0}, Ljava/nio/FloatBuffer;->clear()Ljava/nio/Buffer;

    invoke-virtual {p0}, Ljava/nio/Buffer;->limit()I

    move-result v0

    div-int/lit8 v0, v0, 0x3

    new-array v1, v0, [Lcom/ardor3d/math/Vector3;

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    new-instance v10, Lcom/ardor3d/math/Vector3;

    invoke-virtual {p0}, Ljava/nio/FloatBuffer;->get()F

    move-result v3

    float-to-double v4, v3

    invoke-virtual {p0}, Ljava/nio/FloatBuffer;->get()F

    move-result v3

    float-to-double v6, v3

    invoke-virtual {p0}, Ljava/nio/FloatBuffer;->get()F

    move-result v3

    float-to-double v8, v3

    move-object v3, v10

    invoke-direct/range {v3 .. v9}, Lcom/ardor3d/math/Vector3;-><init>(DDD)V

    aput-object v10, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method public static getVector4Array(Ljava/nio/FloatBuffer;)[Lcom/ardor3d/math/Vector4;
    .locals 13

    invoke-virtual {p0}, Ljava/nio/FloatBuffer;->clear()Ljava/nio/Buffer;

    invoke-virtual {p0}, Ljava/nio/Buffer;->limit()I

    move-result v0

    div-int/lit8 v0, v0, 0x4

    new-array v1, v0, [Lcom/ardor3d/math/Vector4;

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    new-instance v12, Lcom/ardor3d/math/Vector4;

    invoke-virtual {p0}, Ljava/nio/FloatBuffer;->get()F

    move-result v3

    float-to-double v4, v3

    invoke-virtual {p0}, Ljava/nio/FloatBuffer;->get()F

    move-result v3

    float-to-double v6, v3

    invoke-virtual {p0}, Ljava/nio/FloatBuffer;->get()F

    move-result v3

    float-to-double v8, v3

    invoke-virtual {p0}, Ljava/nio/FloatBuffer;->get()F

    move-result v3

    float-to-double v10, v3

    move-object v3, v12

    invoke-direct/range {v3 .. v11}, Lcom/ardor3d/math/Vector4;-><init>(DDDD)V

    aput-object v12, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method public static multInBuffer(Lcom/ardor3d/math/type/ReadOnlyVector2;Ljava/nio/FloatBuffer;I)V
    .locals 1

    .line 11
    invoke-static {}, Lcom/ardor3d/math/Vector2;->fetchTempInstance()Lcom/ardor3d/math/Vector2;

    move-result-object v0

    .line 12
    invoke-static {v0, p1, p2}, Lcom/ardor3d/util/geom/BufferUtils;->populateFromBuffer(Lcom/ardor3d/math/Vector2;Ljava/nio/FloatBuffer;I)V

    .line 13
    invoke-virtual {v0, p0}, Lcom/ardor3d/math/Vector2;->multiplyLocal(Lcom/ardor3d/math/type/ReadOnlyVector2;)Lcom/ardor3d/math/Vector2;

    .line 14
    invoke-static {v0, p1, p2}, Lcom/ardor3d/util/geom/BufferUtils;->setInBuffer(Lcom/ardor3d/math/type/ReadOnlyVector2;Ljava/nio/FloatBuffer;I)V

    .line 15
    invoke-static {v0}, Lcom/ardor3d/math/Vector2;->releaseTempInstance(Lcom/ardor3d/math/Vector2;)V

    return-void
.end method

.method public static multInBuffer(Lcom/ardor3d/math/type/ReadOnlyVector3;Ljava/nio/FloatBuffer;I)V
    .locals 1

    .line 6
    invoke-static {}, Lcom/ardor3d/math/Vector3;->fetchTempInstance()Lcom/ardor3d/math/Vector3;

    move-result-object v0

    .line 7
    invoke-static {v0, p1, p2}, Lcom/ardor3d/util/geom/BufferUtils;->populateFromBuffer(Lcom/ardor3d/math/Vector3;Ljava/nio/FloatBuffer;I)V

    .line 8
    invoke-virtual {v0, p0}, Lcom/ardor3d/math/Vector3;->multiplyLocal(Lcom/ardor3d/math/type/ReadOnlyVector3;)Lcom/ardor3d/math/Vector3;

    .line 9
    invoke-static {v0, p1, p2}, Lcom/ardor3d/util/geom/BufferUtils;->setInBuffer(Lcom/ardor3d/math/type/ReadOnlyVector3;Ljava/nio/FloatBuffer;I)V

    .line 10
    invoke-static {v0}, Lcom/ardor3d/math/Vector3;->releaseTempInstance(Lcom/ardor3d/math/Vector3;)V

    return-void
.end method

.method public static multInBuffer(Lcom/ardor3d/math/type/ReadOnlyVector4;Ljava/nio/FloatBuffer;I)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/ardor3d/math/Vector4;->fetchTempInstance()Lcom/ardor3d/math/Vector4;

    move-result-object v0

    .line 2
    invoke-static {v0, p1, p2}, Lcom/ardor3d/util/geom/BufferUtils;->populateFromBuffer(Lcom/ardor3d/math/Vector4;Ljava/nio/FloatBuffer;I)V

    .line 3
    invoke-virtual {v0, p0}, Lcom/ardor3d/math/Vector4;->multiplyLocal(Lcom/ardor3d/math/type/ReadOnlyVector4;)Lcom/ardor3d/math/Vector4;

    .line 4
    invoke-static {v0, p1, p2}, Lcom/ardor3d/util/geom/BufferUtils;->setInBuffer(Lcom/ardor3d/math/type/ReadOnlyVector4;Ljava/nio/FloatBuffer;I)V

    .line 5
    invoke-static {v0}, Lcom/ardor3d/math/Vector4;->releaseTempInstance(Lcom/ardor3d/math/Vector4;)V

    return-void
.end method

.method public static normalizeVector2(Ljava/nio/FloatBuffer;I)V
    .locals 1

    invoke-static {}, Lcom/ardor3d/math/Vector2;->fetchTempInstance()Lcom/ardor3d/math/Vector2;

    move-result-object v0

    invoke-static {v0, p0, p1}, Lcom/ardor3d/util/geom/BufferUtils;->populateFromBuffer(Lcom/ardor3d/math/Vector2;Ljava/nio/FloatBuffer;I)V

    invoke-virtual {v0}, Lcom/ardor3d/math/Vector2;->normalizeLocal()Lcom/ardor3d/math/Vector2;

    invoke-static {v0, p0, p1}, Lcom/ardor3d/util/geom/BufferUtils;->setInBuffer(Lcom/ardor3d/math/type/ReadOnlyVector2;Ljava/nio/FloatBuffer;I)V

    invoke-static {v0}, Lcom/ardor3d/math/Vector2;->releaseTempInstance(Lcom/ardor3d/math/Vector2;)V

    return-void
.end method

.method public static normalizeVector3(Ljava/nio/FloatBuffer;I)V
    .locals 1

    invoke-static {}, Lcom/ardor3d/math/Vector3;->fetchTempInstance()Lcom/ardor3d/math/Vector3;

    move-result-object v0

    invoke-static {v0, p0, p1}, Lcom/ardor3d/util/geom/BufferUtils;->populateFromBuffer(Lcom/ardor3d/math/Vector3;Ljava/nio/FloatBuffer;I)V

    invoke-virtual {v0}, Lcom/ardor3d/math/Vector3;->normalizeLocal()Lcom/ardor3d/math/Vector3;

    invoke-static {v0, p0, p1}, Lcom/ardor3d/util/geom/BufferUtils;->setInBuffer(Lcom/ardor3d/math/type/ReadOnlyVector3;Ljava/nio/FloatBuffer;I)V

    invoke-static {v0}, Lcom/ardor3d/math/Vector3;->releaseTempInstance(Lcom/ardor3d/math/Vector3;)V

    return-void
.end method

.method public static normalizeVector4(Ljava/nio/FloatBuffer;I)V
    .locals 1

    invoke-static {}, Lcom/ardor3d/math/Vector4;->fetchTempInstance()Lcom/ardor3d/math/Vector4;

    move-result-object v0

    invoke-static {v0, p0, p1}, Lcom/ardor3d/util/geom/BufferUtils;->populateFromBuffer(Lcom/ardor3d/math/Vector4;Ljava/nio/FloatBuffer;I)V

    invoke-virtual {v0}, Lcom/ardor3d/math/Vector4;->normalizeLocal()Lcom/ardor3d/math/Vector4;

    invoke-static {v0, p0, p1}, Lcom/ardor3d/util/geom/BufferUtils;->setInBuffer(Lcom/ardor3d/math/type/ReadOnlyVector4;Ljava/nio/FloatBuffer;I)V

    invoke-static {v0}, Lcom/ardor3d/math/Vector4;->releaseTempInstance(Lcom/ardor3d/math/Vector4;)V

    return-void
.end method

.method public static populateFromBuffer(Lcom/ardor3d/math/ColorRGBA;Ljava/nio/FloatBuffer;I)V
    .locals 1

    mul-int/lit8 p2, p2, 0x4

    .line 1
    invoke-virtual {p1, p2}, Ljava/nio/FloatBuffer;->get(I)F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/ardor3d/math/ColorRGBA;->setRed(F)V

    add-int/lit8 v0, p2, 0x1

    .line 2
    invoke-virtual {p1, v0}, Ljava/nio/FloatBuffer;->get(I)F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/ardor3d/math/ColorRGBA;->setGreen(F)V

    add-int/lit8 v0, p2, 0x2

    .line 3
    invoke-virtual {p1, v0}, Ljava/nio/FloatBuffer;->get(I)F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/ardor3d/math/ColorRGBA;->setBlue(F)V

    add-int/lit8 p2, p2, 0x3

    .line 4
    invoke-virtual {p1, p2}, Ljava/nio/FloatBuffer;->get(I)F

    move-result p1

    invoke-virtual {p0, p1}, Lcom/ardor3d/math/ColorRGBA;->setAlpha(F)V

    return-void
.end method

.method public static populateFromBuffer(Lcom/ardor3d/math/Vector2;Ljava/nio/FloatBuffer;I)V
    .locals 2

    mul-int/lit8 p2, p2, 0x2

    .line 12
    invoke-virtual {p1, p2}, Ljava/nio/FloatBuffer;->get(I)F

    move-result v0

    float-to-double v0, v0

    invoke-virtual {p0, v0, v1}, Lcom/ardor3d/math/Vector2;->setX(D)V

    add-int/lit8 p2, p2, 0x1

    .line 13
    invoke-virtual {p1, p2}, Ljava/nio/FloatBuffer;->get(I)F

    move-result p1

    float-to-double p1, p1

    invoke-virtual {p0, p1, p2}, Lcom/ardor3d/math/Vector2;->setY(D)V

    return-void
.end method

.method public static populateFromBuffer(Lcom/ardor3d/math/Vector3;Ljava/nio/FloatBuffer;I)V
    .locals 2

    mul-int/lit8 p2, p2, 0x3

    .line 9
    invoke-virtual {p1, p2}, Ljava/nio/FloatBuffer;->get(I)F

    move-result v0

    float-to-double v0, v0

    invoke-virtual {p0, v0, v1}, Lcom/ardor3d/math/Vector3;->setX(D)V

    add-int/lit8 v0, p2, 0x1

    .line 10
    invoke-virtual {p1, v0}, Ljava/nio/FloatBuffer;->get(I)F

    move-result v0

    float-to-double v0, v0

    invoke-virtual {p0, v0, v1}, Lcom/ardor3d/math/Vector3;->setY(D)V

    add-int/lit8 p2, p2, 0x2

    .line 11
    invoke-virtual {p1, p2}, Ljava/nio/FloatBuffer;->get(I)F

    move-result p1

    float-to-double p1, p1

    invoke-virtual {p0, p1, p2}, Lcom/ardor3d/math/Vector3;->setZ(D)V

    return-void
.end method

.method public static populateFromBuffer(Lcom/ardor3d/math/Vector4;Ljava/nio/FloatBuffer;I)V
    .locals 2

    mul-int/lit8 p2, p2, 0x4

    .line 5
    invoke-virtual {p1, p2}, Ljava/nio/FloatBuffer;->get(I)F

    move-result v0

    float-to-double v0, v0

    invoke-virtual {p0, v0, v1}, Lcom/ardor3d/math/Vector4;->setX(D)V

    add-int/lit8 v0, p2, 0x1

    .line 6
    invoke-virtual {p1, v0}, Ljava/nio/FloatBuffer;->get(I)F

    move-result v0

    float-to-double v0, v0

    invoke-virtual {p0, v0, v1}, Lcom/ardor3d/math/Vector4;->setY(D)V

    add-int/lit8 v0, p2, 0x2

    .line 7
    invoke-virtual {p1, v0}, Ljava/nio/FloatBuffer;->get(I)F

    move-result v0

    float-to-double v0, v0

    invoke-virtual {p0, v0, v1}, Lcom/ardor3d/math/Vector4;->setZ(D)V

    add-int/lit8 p2, p2, 0x3

    .line 8
    invoke-virtual {p1, p2}, Ljava/nio/FloatBuffer;->get(I)F

    move-result p1

    float-to-double p1, p1

    invoke-virtual {p0, p1, p2}, Lcom/ardor3d/math/Vector4;->setW(D)V

    return-void
.end method

.method public static printCurrentDirectMemory(Ljava/lang/StringBuilder;)V
    .locals 18

    new-instance v0, Ljava/util/ArrayList;

    sget-object v1, Lcom/ardor3d/util/geom/BufferUtils;->trackingHash:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const-wide/16 v2, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/nio/Buffer;

    instance-of v4, v15, Ljava/nio/ByteBuffer;

    if-eqz v4, :cond_0

    invoke-virtual {v15}, Ljava/nio/Buffer;->capacity()I

    move-result v4

    move-object/from16 v16, v0

    move-object/from16 v17, v1

    int-to-long v0, v4

    add-long/2addr v2, v0

    invoke-virtual {v15}, Ljava/nio/Buffer;->capacity()I

    move-result v0

    add-int/2addr v5, v0

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_0
    move-object/from16 v16, v0

    move-object/from16 v17, v1

    instance-of v0, v15, Ljava/nio/FloatBuffer;

    if-eqz v0, :cond_1

    invoke-virtual {v15}, Ljava/nio/Buffer;->capacity()I

    move-result v0

    mul-int/lit8 v0, v0, 0x4

    int-to-long v0, v0

    add-long/2addr v2, v0

    invoke-virtual {v15}, Ljava/nio/Buffer;->capacity()I

    move-result v0

    mul-int/lit8 v0, v0, 0x4

    add-int/2addr v7, v0

    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    :cond_1
    instance-of v0, v15, Ljava/nio/IntBuffer;

    if-eqz v0, :cond_2

    invoke-virtual {v15}, Ljava/nio/Buffer;->capacity()I

    move-result v0

    mul-int/lit8 v0, v0, 0x4

    int-to-long v0, v0

    add-long/2addr v2, v0

    invoke-virtual {v15}, Ljava/nio/Buffer;->capacity()I

    move-result v0

    mul-int/lit8 v0, v0, 0x4

    add-int/2addr v12, v0

    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    :cond_2
    instance-of v0, v15, Ljava/nio/ShortBuffer;

    if-eqz v0, :cond_3

    invoke-virtual {v15}, Ljava/nio/Buffer;->capacity()I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    int-to-long v0, v0

    add-long/2addr v2, v0

    invoke-virtual {v15}, Ljava/nio/Buffer;->capacity()I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    add-int/2addr v13, v0

    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    :cond_3
    instance-of v0, v15, Ljava/nio/DoubleBuffer;

    if-eqz v0, :cond_4

    invoke-virtual {v15}, Ljava/nio/Buffer;->capacity()I

    move-result v0

    mul-int/lit8 v0, v0, 0x8

    int-to-long v0, v0

    add-long/2addr v2, v0

    invoke-virtual {v15}, Ljava/nio/Buffer;->capacity()I

    move-result v0

    mul-int/lit8 v0, v0, 0x8

    add-int/2addr v14, v0

    add-int/lit8 v11, v11, 0x1

    :cond_4
    :goto_1
    move-object/from16 v0, v16

    move-object/from16 v1, v17

    goto/16 :goto_0

    :cond_5
    move-object/from16 v16, v0

    if-nez p0, :cond_6

    const/4 v4, 0x1

    goto :goto_2

    :cond_6
    const/4 v4, 0x0

    :goto_2
    if-nez p0, :cond_7

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_3

    :cond_7
    move-object/from16 v0, p0

    :goto_3
    const-string v1, "Existing buffers: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface/range {v16 .. v16}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v15, "(b: "

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, "  f: "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, "  i: "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, "  s: "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, "  d: "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ")"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "Total direct memory held: "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-wide/16 v8, 0x400

    div-long/2addr v2, v8

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, "kb\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    div-int/lit16 v5, v5, 0x400

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "kb  f: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    div-int/lit16 v7, v7, 0x400

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "kb  i: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    div-int/lit16 v12, v12, 0x400

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "kb  s: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    div-int/lit16 v13, v13, 0x400

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "kb  d: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    div-int/lit16 v14, v14, 0x400

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "kb)"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v4, :cond_8

    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_8
    return-void
.end method

.method public static setInBuffer(Lcom/ardor3d/math/type/ReadOnlyColorRGBA;Ljava/nio/FloatBuffer;I)V
    .locals 0

    mul-int/lit8 p2, p2, 0x4

    .line 1
    invoke-virtual {p1, p2}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 2
    invoke-interface {p0}, Lcom/ardor3d/math/type/ReadOnlyColorRGBA;->getRed()F

    move-result p2

    invoke-virtual {p1, p2}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 3
    invoke-interface {p0}, Lcom/ardor3d/math/type/ReadOnlyColorRGBA;->getGreen()F

    move-result p2

    invoke-virtual {p1, p2}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 4
    invoke-interface {p0}, Lcom/ardor3d/math/type/ReadOnlyColorRGBA;->getBlue()F

    move-result p2

    invoke-virtual {p1, p2}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 5
    invoke-interface {p0}, Lcom/ardor3d/math/type/ReadOnlyColorRGBA;->getAlpha()F

    move-result p0

    invoke-virtual {p1, p0}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    return-void
.end method

.method public static setInBuffer(Lcom/ardor3d/math/type/ReadOnlyVector2;Ljava/nio/FloatBuffer;I)V
    .locals 1

    mul-int/lit8 p2, p2, 0x2

    .line 20
    invoke-interface {p0}, Lcom/ardor3d/math/type/ReadOnlyVector2;->getXf()F

    move-result v0

    invoke-virtual {p1, p2, v0}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    add-int/lit8 p2, p2, 0x1

    .line 21
    invoke-interface {p0}, Lcom/ardor3d/math/type/ReadOnlyVector2;->getYf()F

    move-result p0

    invoke-virtual {p1, p2, p0}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    return-void
.end method

.method public static setInBuffer(Lcom/ardor3d/math/type/ReadOnlyVector3;Ljava/nio/FloatBuffer;I)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    :cond_0
    if-nez p0, :cond_1

    mul-int/lit8 p2, p2, 0x3

    const/4 p0, 0x0

    .line 14
    invoke-virtual {p1, p2, p0}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    add-int/lit8 v0, p2, 0x1

    .line 15
    invoke-virtual {p1, v0, p0}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    add-int/lit8 p2, p2, 0x2

    .line 16
    invoke-virtual {p1, p2, p0}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    goto :goto_0

    :cond_1
    mul-int/lit8 p2, p2, 0x3

    .line 17
    invoke-interface {p0}, Lcom/ardor3d/math/type/ReadOnlyVector3;->getXf()F

    move-result v0

    invoke-virtual {p1, p2, v0}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    add-int/lit8 v0, p2, 0x1

    .line 18
    invoke-interface {p0}, Lcom/ardor3d/math/type/ReadOnlyVector3;->getYf()F

    move-result v1

    invoke-virtual {p1, v0, v1}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    add-int/lit8 p2, p2, 0x2

    .line 19
    invoke-interface {p0}, Lcom/ardor3d/math/type/ReadOnlyVector3;->getZf()F

    move-result p0

    invoke-virtual {p1, p2, p0}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    :goto_0
    return-void
.end method

.method public static setInBuffer(Lcom/ardor3d/math/type/ReadOnlyVector4;Ljava/nio/FloatBuffer;I)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    :cond_0
    if-nez p0, :cond_1

    mul-int/lit8 p2, p2, 0x4

    const/4 p0, 0x0

    .line 6
    invoke-virtual {p1, p2, p0}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    add-int/lit8 v0, p2, 0x1

    .line 7
    invoke-virtual {p1, v0, p0}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    add-int/lit8 v0, p2, 0x2

    .line 8
    invoke-virtual {p1, v0, p0}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    add-int/lit8 p2, p2, 0x3

    .line 9
    invoke-virtual {p1, p2, p0}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    goto :goto_0

    :cond_1
    mul-int/lit8 p2, p2, 0x4

    .line 10
    invoke-interface {p0}, Lcom/ardor3d/math/type/ReadOnlyVector4;->getXf()F

    move-result v0

    invoke-virtual {p1, p2, v0}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    add-int/lit8 v0, p2, 0x1

    .line 11
    invoke-interface {p0}, Lcom/ardor3d/math/type/ReadOnlyVector4;->getYf()F

    move-result v1

    invoke-virtual {p1, v0, v1}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    add-int/lit8 v0, p2, 0x2

    .line 12
    invoke-interface {p0}, Lcom/ardor3d/math/type/ReadOnlyVector4;->getZf()F

    move-result v1

    invoke-virtual {p1, v0, v1}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    add-int/lit8 p2, p2, 0x3

    .line 13
    invoke-interface {p0}, Lcom/ardor3d/math/type/ReadOnlyVector4;->getWf()F

    move-result p0

    invoke-virtual {p1, p2, p0}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    :goto_0
    return-void
.end method
