.class public final Lcom/jme3/util/BufferUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jme3/util/BufferUtils$ClearReferences;,
        Lcom/jme3/util/BufferUtils$BufferInfo;
    }
.end annotation


# static fields
.field private static final allocator:Lcom/jme3/util/BufferAllocator;

.field static cleanupthread:Lcom/jme3/util/BufferUtils$ClearReferences;

.field private static final removeCollected:Ljava/lang/ref/ReferenceQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/ReferenceQueue<",
            "Ljava/nio/Buffer;",
            ">;"
        }
    .end annotation
.end field

.field private static trackDirectMemory:Z

.field private static final trackedBuffers:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Lcom/jme3/util/BufferUtils$BufferInfo;",
            "Lcom/jme3/util/BufferUtils$BufferInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lcom/jme3/util/BufferAllocatorFactory;->create()Lcom/jme3/util/BufferAllocator;

    move-result-object v0

    sput-object v0, Lcom/jme3/util/BufferUtils;->allocator:Lcom/jme3/util/BufferAllocator;

    const/4 v0, 0x0

    sput-boolean v0, Lcom/jme3/util/BufferUtils;->trackDirectMemory:Z

    new-instance v0, Ljava/lang/ref/ReferenceQueue;

    invoke-direct {v0}, Ljava/lang/ref/ReferenceQueue;-><init>()V

    sput-object v0, Lcom/jme3/util/BufferUtils;->removeCollected:Ljava/lang/ref/ReferenceQueue;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/jme3/util/BufferUtils;->trackedBuffers:Ljava/util/concurrent/ConcurrentHashMap;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic access$200()Ljava/lang/ref/ReferenceQueue;
    .locals 1

    sget-object v0, Lcom/jme3/util/BufferUtils;->removeCollected:Ljava/lang/ref/ReferenceQueue;

    return-object v0
.end method

.method public static synthetic access$300()Ljava/util/concurrent/ConcurrentHashMap;
    .locals 1

    sget-object v0, Lcom/jme3/util/BufferUtils;->trackedBuffers:Ljava/util/concurrent/ConcurrentHashMap;

    return-object v0
.end method

.method public static addInBuffer(Lcom/jme3/math/Vector2f;Ljava/nio/FloatBuffer;I)V
    .locals 2

    .line 7
    invoke-static {}, Lcom/jme3/util/TempVars;->get()Lcom/jme3/util/TempVars;

    move-result-object v0

    .line 8
    iget-object v1, v0, Lcom/jme3/util/TempVars;->vect2d:Lcom/jme3/math/Vector2f;

    .line 9
    invoke-static {v1, p1, p2}, Lcom/jme3/util/BufferUtils;->populateFromBuffer(Lcom/jme3/math/Vector2f;Ljava/nio/FloatBuffer;I)V

    .line 10
    invoke-virtual {v1, p0}, Lcom/jme3/math/Vector2f;->addLocal(Lcom/jme3/math/Vector2f;)Lcom/jme3/math/Vector2f;

    .line 11
    invoke-static {v1, p1, p2}, Lcom/jme3/util/BufferUtils;->setInBuffer(Lcom/jme3/math/Vector2f;Ljava/nio/FloatBuffer;I)V

    .line 12
    invoke-virtual {v0}, Lcom/jme3/util/TempVars;->release()V

    return-void
.end method

.method public static addInBuffer(Lcom/jme3/math/Vector3f;Ljava/nio/FloatBuffer;I)V
    .locals 2

    .line 1
    invoke-static {}, Lcom/jme3/util/TempVars;->get()Lcom/jme3/util/TempVars;

    move-result-object v0

    .line 2
    iget-object v1, v0, Lcom/jme3/util/TempVars;->vect1:Lcom/jme3/math/Vector3f;

    .line 3
    invoke-static {v1, p1, p2}, Lcom/jme3/util/BufferUtils;->populateFromBuffer(Lcom/jme3/math/Vector3f;Ljava/nio/FloatBuffer;I)V

    .line 4
    invoke-virtual {v1, p0}, Lcom/jme3/math/Vector3f;->addLocal(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    .line 5
    invoke-static {v1, p1, p2}, Lcom/jme3/util/BufferUtils;->setInBuffer(Lcom/jme3/math/Vector3f;Ljava/nio/FloatBuffer;I)V

    .line 6
    invoke-virtual {v0}, Lcom/jme3/util/TempVars;->release()V

    return-void
.end method

.method public static clone(Ljava/nio/Buffer;)Ljava/nio/Buffer;
    .locals 1

    .line 1
    instance-of v0, p0, Ljava/nio/FloatBuffer;

    if-eqz v0, :cond_0

    .line 2
    check-cast p0, Ljava/nio/FloatBuffer;

    invoke-static {p0}, Lcom/jme3/util/BufferUtils;->clone(Ljava/nio/FloatBuffer;)Ljava/nio/FloatBuffer;

    move-result-object p0

    return-object p0

    .line 3
    :cond_0
    instance-of v0, p0, Ljava/nio/ShortBuffer;

    if-eqz v0, :cond_1

    .line 4
    check-cast p0, Ljava/nio/ShortBuffer;

    invoke-static {p0}, Lcom/jme3/util/BufferUtils;->clone(Ljava/nio/ShortBuffer;)Ljava/nio/ShortBuffer;

    move-result-object p0

    return-object p0

    .line 5
    :cond_1
    instance-of v0, p0, Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_2

    .line 6
    check-cast p0, Ljava/nio/ByteBuffer;

    invoke-static {p0}, Lcom/jme3/util/BufferUtils;->clone(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    move-result-object p0

    return-object p0

    .line 7
    :cond_2
    instance-of v0, p0, Ljava/nio/IntBuffer;

    if-eqz v0, :cond_3

    .line 8
    check-cast p0, Ljava/nio/IntBuffer;

    invoke-static {p0}, Lcom/jme3/util/BufferUtils;->clone(Ljava/nio/IntBuffer;)Ljava/nio/IntBuffer;

    move-result-object p0

    return-object p0

    .line 9
    :cond_3
    instance-of v0, p0, Ljava/nio/DoubleBuffer;

    if-eqz v0, :cond_4

    .line 10
    check-cast p0, Ljava/nio/DoubleBuffer;

    invoke-static {p0}, Lcom/jme3/util/BufferUtils;->clone(Ljava/nio/DoubleBuffer;)Ljava/nio/DoubleBuffer;

    move-result-object p0

    return-object p0

    .line 11
    :cond_4
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method

.method public static clone(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 27
    :cond_0
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 28
    invoke-static {p0}, Lcom/jme3/util/BufferUtils;->isDirect(Ljava/nio/Buffer;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 29
    invoke-virtual {p0}, Ljava/nio/Buffer;->limit()I

    move-result v0

    invoke-static {v0}, Lcom/jme3/util/BufferUtils;->createByteBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    goto :goto_0

    .line 30
    :cond_1
    invoke-virtual {p0}, Ljava/nio/Buffer;->limit()I

    move-result v0

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 31
    :goto_0
    invoke-virtual {v0, p0}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    return-object v0
.end method

.method public static clone(Ljava/nio/DoubleBuffer;)Ljava/nio/DoubleBuffer;
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 12
    :cond_0
    invoke-virtual {p0}, Ljava/nio/DoubleBuffer;->rewind()Ljava/nio/Buffer;

    .line 13
    invoke-static {p0}, Lcom/jme3/util/BufferUtils;->isDirect(Ljava/nio/Buffer;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 14
    invoke-virtual {p0}, Ljava/nio/Buffer;->limit()I

    move-result v0

    invoke-static {v0}, Lcom/jme3/util/BufferUtils;->createDoubleBuffer(I)Ljava/nio/DoubleBuffer;

    move-result-object v0

    goto :goto_0

    .line 15
    :cond_1
    invoke-virtual {p0}, Ljava/nio/Buffer;->limit()I

    move-result v0

    invoke-static {v0}, Ljava/nio/DoubleBuffer;->allocate(I)Ljava/nio/DoubleBuffer;

    move-result-object v0

    .line 16
    :goto_0
    invoke-virtual {v0, p0}, Ljava/nio/DoubleBuffer;->put(Ljava/nio/DoubleBuffer;)Ljava/nio/DoubleBuffer;

    return-object v0
.end method

.method public static clone(Ljava/nio/FloatBuffer;)Ljava/nio/FloatBuffer;
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 17
    :cond_0
    invoke-virtual {p0}, Ljava/nio/FloatBuffer;->rewind()Ljava/nio/Buffer;

    .line 18
    invoke-static {p0}, Lcom/jme3/util/BufferUtils;->isDirect(Ljava/nio/Buffer;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 19
    invoke-virtual {p0}, Ljava/nio/Buffer;->limit()I

    move-result v0

    invoke-static {v0}, Lcom/jme3/util/BufferUtils;->createFloatBuffer(I)Ljava/nio/FloatBuffer;

    move-result-object v0

    goto :goto_0

    .line 20
    :cond_1
    invoke-virtual {p0}, Ljava/nio/Buffer;->limit()I

    move-result v0

    invoke-static {v0}, Ljava/nio/FloatBuffer;->allocate(I)Ljava/nio/FloatBuffer;

    move-result-object v0

    .line 21
    :goto_0
    invoke-virtual {v0, p0}, Ljava/nio/FloatBuffer;->put(Ljava/nio/FloatBuffer;)Ljava/nio/FloatBuffer;

    return-object v0
.end method

.method public static clone(Ljava/nio/IntBuffer;)Ljava/nio/IntBuffer;
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 22
    :cond_0
    invoke-virtual {p0}, Ljava/nio/IntBuffer;->rewind()Ljava/nio/Buffer;

    .line 23
    invoke-static {p0}, Lcom/jme3/util/BufferUtils;->isDirect(Ljava/nio/Buffer;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 24
    invoke-virtual {p0}, Ljava/nio/Buffer;->limit()I

    move-result v0

    invoke-static {v0}, Lcom/jme3/util/BufferUtils;->createIntBuffer(I)Ljava/nio/IntBuffer;

    move-result-object v0

    goto :goto_0

    .line 25
    :cond_1
    invoke-virtual {p0}, Ljava/nio/Buffer;->limit()I

    move-result v0

    invoke-static {v0}, Ljava/nio/IntBuffer;->allocate(I)Ljava/nio/IntBuffer;

    move-result-object v0

    .line 26
    :goto_0
    invoke-virtual {v0, p0}, Ljava/nio/IntBuffer;->put(Ljava/nio/IntBuffer;)Ljava/nio/IntBuffer;

    return-object v0
.end method

.method public static clone(Ljava/nio/ShortBuffer;)Ljava/nio/ShortBuffer;
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 32
    :cond_0
    invoke-virtual {p0}, Ljava/nio/ShortBuffer;->rewind()Ljava/nio/Buffer;

    .line 33
    invoke-static {p0}, Lcom/jme3/util/BufferUtils;->isDirect(Ljava/nio/Buffer;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 34
    invoke-virtual {p0}, Ljava/nio/Buffer;->limit()I

    move-result v0

    invoke-static {v0}, Lcom/jme3/util/BufferUtils;->createShortBuffer(I)Ljava/nio/ShortBuffer;

    move-result-object v0

    goto :goto_0

    .line 35
    :cond_1
    invoke-virtual {p0}, Ljava/nio/Buffer;->limit()I

    move-result v0

    invoke-static {v0}, Ljava/nio/ShortBuffer;->allocate(I)Ljava/nio/ShortBuffer;

    move-result-object v0

    .line 36
    :goto_0
    invoke-virtual {v0, p0}, Ljava/nio/ShortBuffer;->put(Ljava/nio/ShortBuffer;)Ljava/nio/ShortBuffer;

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

.method public static copyInternalVector2(Ljava/nio/FloatBuffer;II)V
    .locals 1

    const/4 v0, 0x2

    mul-int/2addr p1, v0

    mul-int/2addr p2, v0

    invoke-static {p0, p1, p2, v0}, Lcom/jme3/util/BufferUtils;->copyInternal(Ljava/nio/FloatBuffer;III)V

    return-void
.end method

.method public static copyInternalVector3(Ljava/nio/FloatBuffer;II)V
    .locals 1

    const/4 v0, 0x3

    mul-int/2addr p1, v0

    mul-int/2addr p2, v0

    invoke-static {p0, p1, p2, v0}, Lcom/jme3/util/BufferUtils;->copyInternal(Ljava/nio/FloatBuffer;III)V

    return-void
.end method

.method public static createByteBuffer([I)Ljava/nio/Buffer;
    .locals 3

    .line 15
    array-length v0, p0

    invoke-static {v0}, Lcom/jme3/util/BufferUtils;->createByteBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    const/4 v1, 0x0

    .line 16
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_0

    .line 17
    aget v2, p0, v1

    int-to-byte v2, v2

    invoke-virtual {v0, v1, v2}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public static createByteBuffer(I)Ljava/nio/ByteBuffer;
    .locals 1

    .line 1
    sget-object v0, Lcom/jme3/util/BufferUtils;->allocator:Lcom/jme3/util/BufferAllocator;

    invoke-interface {v0, p0}, Lcom/jme3/util/BufferAllocator;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object p0

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object p0

    .line 2
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 3
    invoke-static {p0}, Lcom/jme3/util/BufferUtils;->onBufferAllocated(Ljava/nio/Buffer;)V

    return-object p0
.end method

.method public static createByteBuffer(Ljava/lang/String;)Ljava/nio/ByteBuffer;
    .locals 1

    .line 10
    :try_start_0
    const-string v0, "UTF-8"

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p0

    .line 11
    array-length v0, p0

    invoke-static {v0}, Lcom/jme3/util/BufferUtils;->createByteBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 12
    invoke-virtual {v0, p0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 13
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p0

    .line 14
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0, p0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public static createByteBuffer(Ljava/nio/ByteBuffer;I)Ljava/nio/ByteBuffer;
    .locals 1

    if-eqz p0, :cond_0

    .line 4
    invoke-virtual {p0}, Ljava/nio/Buffer;->limit()I

    move-result v0

    if-ne v0, p1, :cond_0

    .line 5
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    return-object p0

    .line 6
    :cond_0
    invoke-static {p1}, Lcom/jme3/util/BufferUtils;->createByteBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object p0

    return-object p0
.end method

.method public static varargs createByteBuffer([B)Ljava/nio/ByteBuffer;
    .locals 1

    .line 7
    array-length v0, p0

    invoke-static {v0}, Lcom/jme3/util/BufferUtils;->createByteBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 8
    invoke-virtual {v0, p0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 9
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    return-object v0
.end method

.method public static createDoubleBuffer(I)Ljava/nio/DoubleBuffer;
    .locals 1

    .line 1
    sget-object v0, Lcom/jme3/util/BufferUtils;->allocator:Lcom/jme3/util/BufferAllocator;

    mul-int/lit8 p0, p0, 0x8

    invoke-interface {v0, p0}, Lcom/jme3/util/BufferAllocator;->allocate(I)Ljava/nio/ByteBuffer;

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
    invoke-static {p0}, Lcom/jme3/util/BufferUtils;->onBufferAllocated(Ljava/nio/Buffer;)V

    return-object p0
.end method

.method public static createDoubleBuffer(Ljava/nio/DoubleBuffer;I)Ljava/nio/DoubleBuffer;
    .locals 1

    if-eqz p0, :cond_0

    .line 4
    invoke-virtual {p0}, Ljava/nio/Buffer;->limit()I

    move-result v0

    if-ne v0, p1, :cond_0

    .line 5
    invoke-virtual {p0}, Ljava/nio/DoubleBuffer;->rewind()Ljava/nio/Buffer;

    return-object p0

    .line 6
    :cond_0
    invoke-static {p1}, Lcom/jme3/util/BufferUtils;->createDoubleBuffer(I)Ljava/nio/DoubleBuffer;

    move-result-object p0

    return-object p0
.end method

.method public static createFloatBuffer(I)Ljava/nio/FloatBuffer;
    .locals 1

    .line 32
    sget-object v0, Lcom/jme3/util/BufferUtils;->allocator:Lcom/jme3/util/BufferAllocator;

    mul-int/lit8 p0, p0, 0x4

    invoke-interface {v0, p0}, Lcom/jme3/util/BufferAllocator;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object p0

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object p0

    .line 33
    invoke-virtual {p0}, Ljava/nio/FloatBuffer;->clear()Ljava/nio/Buffer;

    .line 34
    invoke-static {p0}, Lcom/jme3/util/BufferUtils;->onBufferAllocated(Ljava/nio/Buffer;)V

    return-object p0
.end method

.method public static varargs createFloatBuffer([F)Ljava/nio/FloatBuffer;
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 23
    :cond_0
    array-length v0, p0

    invoke-static {v0}, Lcom/jme3/util/BufferUtils;->createFloatBuffer(I)Ljava/nio/FloatBuffer;

    move-result-object v0

    .line 24
    invoke-virtual {v0}, Ljava/nio/FloatBuffer;->clear()Ljava/nio/Buffer;

    .line 25
    invoke-virtual {v0, p0}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    .line 26
    invoke-virtual {v0}, Ljava/nio/FloatBuffer;->flip()Ljava/nio/Buffer;

    return-object v0
.end method

.method public static varargs createFloatBuffer([Lcom/jme3/math/ColorRGBA;)Ljava/nio/FloatBuffer;
    .locals 4

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 17
    :cond_0
    array-length v0, p0

    mul-int/lit8 v0, v0, 0x4

    invoke-static {v0}, Lcom/jme3/util/BufferUtils;->createFloatBuffer(I)Ljava/nio/FloatBuffer;

    move-result-object v0

    const/4 v1, 0x0

    .line 18
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_2

    .line 19
    aget-object v2, p0, v1

    if-eqz v2, :cond_1

    .line 20
    invoke-virtual {v2}, Lcom/jme3/math/ColorRGBA;->getRed()F

    move-result v2

    invoke-virtual {v0, v2}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-result-object v2

    aget-object v3, p0, v1

    invoke-virtual {v3}, Lcom/jme3/math/ColorRGBA;->getGreen()F

    move-result v3

    invoke-virtual {v2, v3}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-result-object v2

    aget-object v3, p0, v1

    invoke-virtual {v3}, Lcom/jme3/math/ColorRGBA;->getBlue()F

    move-result v3

    invoke-virtual {v2, v3}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-result-object v2

    aget-object v3, p0, v1

    invoke-virtual {v3}, Lcom/jme3/math/ColorRGBA;->getAlpha()F

    move-result v3

    invoke-virtual {v2, v3}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    .line 21
    invoke-virtual {v0, v2}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 22
    :cond_2
    invoke-virtual {v0}, Ljava/nio/FloatBuffer;->flip()Ljava/nio/Buffer;

    return-object v0
.end method

.method public static varargs createFloatBuffer([Lcom/jme3/math/Quaternion;)Ljava/nio/FloatBuffer;
    .locals 6

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 6
    :cond_0
    array-length v0, p0

    mul-int/lit8 v0, v0, 0x4

    invoke-static {v0}, Lcom/jme3/util/BufferUtils;->createFloatBuffer(I)Ljava/nio/FloatBuffer;

    move-result-object v0

    .line 7
    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, p0, v2

    if-eqz v3, :cond_1

    .line 8
    invoke-virtual {v3}, Lcom/jme3/math/Quaternion;->getX()F

    move-result v4

    invoke-virtual {v0, v4}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-result-object v4

    invoke-virtual {v3}, Lcom/jme3/math/Quaternion;->getY()F

    move-result v5

    invoke-virtual {v4, v5}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-result-object v4

    invoke-virtual {v3}, Lcom/jme3/math/Quaternion;->getZ()F

    move-result v5

    invoke-virtual {v4, v5}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-result-object v4

    invoke-virtual {v3}, Lcom/jme3/math/Quaternion;->getW()F

    move-result v3

    invoke-virtual {v4, v3}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    .line 9
    invoke-virtual {v0, v3}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 10
    :cond_2
    invoke-virtual {v0}, Ljava/nio/FloatBuffer;->flip()Ljava/nio/Buffer;

    return-object v0
.end method

.method public static varargs createFloatBuffer([Lcom/jme3/math/Vector2f;)Ljava/nio/FloatBuffer;
    .locals 5

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 27
    :cond_0
    array-length v0, p0

    mul-int/lit8 v0, v0, 0x2

    invoke-static {v0}, Lcom/jme3/util/BufferUtils;->createFloatBuffer(I)Ljava/nio/FloatBuffer;

    move-result-object v0

    .line 28
    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, p0, v2

    if-eqz v3, :cond_1

    .line 29
    iget v4, v3, Lcom/jme3/math/Vector2f;->x:F

    invoke-virtual {v0, v4}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-result-object v4

    iget v3, v3, Lcom/jme3/math/Vector2f;->y:F

    invoke-virtual {v4, v3}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    .line 30
    invoke-virtual {v0, v3}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 31
    :cond_2
    invoke-virtual {v0}, Ljava/nio/FloatBuffer;->flip()Ljava/nio/Buffer;

    return-object v0
.end method

.method public static varargs createFloatBuffer([Lcom/jme3/math/Vector3f;)Ljava/nio/FloatBuffer;
    .locals 6

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 1
    :cond_0
    array-length v0, p0

    mul-int/lit8 v0, v0, 0x3

    invoke-static {v0}, Lcom/jme3/util/BufferUtils;->createFloatBuffer(I)Ljava/nio/FloatBuffer;

    move-result-object v0

    .line 2
    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, p0, v2

    if-eqz v3, :cond_1

    .line 3
    iget v4, v3, Lcom/jme3/math/Vector3f;->x:F

    invoke-virtual {v0, v4}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-result-object v4

    iget v5, v3, Lcom/jme3/math/Vector3f;->y:F

    invoke-virtual {v4, v5}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-result-object v4

    iget v3, v3, Lcom/jme3/math/Vector3f;->z:F

    invoke-virtual {v4, v3}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    .line 4
    invoke-virtual {v0, v3}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 5
    :cond_2
    invoke-virtual {v0}, Ljava/nio/FloatBuffer;->flip()Ljava/nio/Buffer;

    return-object v0
.end method

.method public static varargs createFloatBuffer([Lcom/jme3/math/Vector4f;)Ljava/nio/FloatBuffer;
    .locals 4

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 11
    :cond_0
    array-length v0, p0

    mul-int/lit8 v0, v0, 0x4

    invoke-static {v0}, Lcom/jme3/util/BufferUtils;->createFloatBuffer(I)Ljava/nio/FloatBuffer;

    move-result-object v0

    const/4 v1, 0x0

    .line 12
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_2

    .line 13
    aget-object v2, p0, v1

    if-eqz v2, :cond_1

    .line 14
    invoke-virtual {v2}, Lcom/jme3/math/Vector4f;->getX()F

    move-result v2

    invoke-virtual {v0, v2}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-result-object v2

    aget-object v3, p0, v1

    invoke-virtual {v3}, Lcom/jme3/math/Vector4f;->getY()F

    move-result v3

    invoke-virtual {v2, v3}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-result-object v2

    aget-object v3, p0, v1

    invoke-virtual {v3}, Lcom/jme3/math/Vector4f;->getZ()F

    move-result v3

    invoke-virtual {v2, v3}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-result-object v2

    aget-object v3, p0, v1

    invoke-virtual {v3}, Lcom/jme3/math/Vector4f;->getW()F

    move-result v3

    invoke-virtual {v2, v3}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    .line 15
    invoke-virtual {v0, v2}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 16
    :cond_2
    invoke-virtual {v0}, Ljava/nio/FloatBuffer;->flip()Ljava/nio/Buffer;

    return-object v0
.end method

.method public static createIntBuffer(I)Ljava/nio/IntBuffer;
    .locals 1

    .line 5
    sget-object v0, Lcom/jme3/util/BufferUtils;->allocator:Lcom/jme3/util/BufferAllocator;

    mul-int/lit8 p0, p0, 0x4

    invoke-interface {v0, p0}, Lcom/jme3/util/BufferAllocator;->allocate(I)Ljava/nio/ByteBuffer;

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
    invoke-static {p0}, Lcom/jme3/util/BufferUtils;->onBufferAllocated(Ljava/nio/Buffer;)V

    return-object p0
.end method

.method public static createIntBuffer(Ljava/nio/IntBuffer;I)Ljava/nio/IntBuffer;
    .locals 1

    if-eqz p0, :cond_0

    .line 8
    invoke-virtual {p0}, Ljava/nio/Buffer;->limit()I

    move-result v0

    if-ne v0, p1, :cond_0

    .line 9
    invoke-virtual {p0}, Ljava/nio/IntBuffer;->rewind()Ljava/nio/Buffer;

    return-object p0

    .line 10
    :cond_0
    invoke-static {p1}, Lcom/jme3/util/BufferUtils;->createIntBuffer(I)Ljava/nio/IntBuffer;

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

    invoke-static {v0}, Lcom/jme3/util/BufferUtils;->createIntBuffer(I)Ljava/nio/IntBuffer;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Ljava/nio/IntBuffer;->clear()Ljava/nio/Buffer;

    .line 3
    invoke-virtual {v0, p0}, Ljava/nio/IntBuffer;->put([I)Ljava/nio/IntBuffer;

    .line 4
    invoke-virtual {v0}, Ljava/nio/IntBuffer;->flip()Ljava/nio/Buffer;

    return-object v0
.end method

.method public static createShortBuffer([I)Ljava/nio/Buffer;
    .locals 3

    .line 11
    array-length v0, p0

    invoke-static {v0}, Lcom/jme3/util/BufferUtils;->createShortBuffer(I)Ljava/nio/ShortBuffer;

    move-result-object v0

    const/4 v1, 0x0

    .line 12
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_0

    .line 13
    aget v2, p0, v1

    int-to-short v2, v2

    invoke-virtual {v0, v1, v2}, Ljava/nio/ShortBuffer;->put(IS)Ljava/nio/ShortBuffer;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public static createShortBuffer(I)Ljava/nio/ShortBuffer;
    .locals 1

    .line 1
    sget-object v0, Lcom/jme3/util/BufferUtils;->allocator:Lcom/jme3/util/BufferAllocator;

    mul-int/lit8 p0, p0, 0x2

    invoke-interface {v0, p0}, Lcom/jme3/util/BufferAllocator;->allocate(I)Ljava/nio/ByteBuffer;

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
    invoke-static {p0}, Lcom/jme3/util/BufferUtils;->onBufferAllocated(Ljava/nio/Buffer;)V

    return-object p0
.end method

.method public static createShortBuffer(Ljava/nio/ShortBuffer;I)Ljava/nio/ShortBuffer;
    .locals 1

    if-eqz p0, :cond_0

    .line 4
    invoke-virtual {p0}, Ljava/nio/Buffer;->limit()I

    move-result v0

    if-ne v0, p1, :cond_0

    .line 5
    invoke-virtual {p0}, Ljava/nio/ShortBuffer;->rewind()Ljava/nio/Buffer;

    return-object p0

    .line 6
    :cond_0
    invoke-static {p1}, Lcom/jme3/util/BufferUtils;->createShortBuffer(I)Ljava/nio/ShortBuffer;

    move-result-object p0

    return-object p0
.end method

.method public static varargs createShortBuffer([S)Ljava/nio/ShortBuffer;
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 7
    :cond_0
    array-length v0, p0

    invoke-static {v0}, Lcom/jme3/util/BufferUtils;->createShortBuffer(I)Ljava/nio/ShortBuffer;

    move-result-object v0

    .line 8
    invoke-virtual {v0}, Ljava/nio/ShortBuffer;->clear()Ljava/nio/Buffer;

    .line 9
    invoke-virtual {v0, p0}, Ljava/nio/ShortBuffer;->put([S)Ljava/nio/ShortBuffer;

    .line 10
    invoke-virtual {v0}, Ljava/nio/ShortBuffer;->flip()Ljava/nio/Buffer;

    return-object v0
.end method

.method public static createVector2Buffer(I)Ljava/nio/FloatBuffer;
    .locals 0

    mul-int/lit8 p0, p0, 0x2

    .line 1
    invoke-static {p0}, Lcom/jme3/util/BufferUtils;->createFloatBuffer(I)Ljava/nio/FloatBuffer;

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
    invoke-static {p1}, Lcom/jme3/util/BufferUtils;->createFloatBuffer(I)Ljava/nio/FloatBuffer;

    move-result-object p0

    return-object p0
.end method

.method public static createVector3Buffer(I)Ljava/nio/FloatBuffer;
    .locals 0

    mul-int/lit8 p0, p0, 0x3

    .line 1
    invoke-static {p0}, Lcom/jme3/util/BufferUtils;->createFloatBuffer(I)Ljava/nio/FloatBuffer;

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
    invoke-static {p1}, Lcom/jme3/util/BufferUtils;->createFloatBuffer(I)Ljava/nio/FloatBuffer;

    move-result-object p0

    return-object p0
.end method

.method public static destroyDirectBuffer(Ljava/nio/Buffer;)V
    .locals 1

    invoke-static {p0}, Lcom/jme3/util/BufferUtils;->isDirect(Ljava/nio/Buffer;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    sget-object v0, Lcom/jme3/util/BufferUtils;->allocator:Lcom/jme3/util/BufferAllocator;

    invoke-interface {v0, p0}, Lcom/jme3/util/BufferAllocator;->destroyDirectBuffer(Ljava/nio/Buffer;)V

    return-void
.end method

.method public static ensureLargeEnough(Ljava/nio/ByteBuffer;I)Ljava/nio/ByteBuffer;
    .locals 1

    if-eqz p0, :cond_0

    .line 22
    invoke-virtual {p0}, Ljava/nio/Buffer;->capacity()I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    :cond_0
    if-eqz p0, :cond_1

    .line 23
    invoke-virtual {p0}, Ljava/nio/Buffer;->remaining()I

    move-result v0

    if-ge v0, p1, :cond_4

    :cond_1
    if-eqz p0, :cond_2

    .line 24
    invoke-virtual {p0}, Ljava/nio/Buffer;->position()I

    move-result v0

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    add-int/2addr p1, v0

    .line 25
    invoke-static {p1}, Lcom/jme3/util/BufferUtils;->createByteBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object p1

    if-eqz p0, :cond_3

    .line 26
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 27
    invoke-virtual {p1, p0}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 28
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    :cond_3
    move-object p0, p1

    :cond_4
    return-object p0
.end method

.method public static ensureLargeEnough(Ljava/nio/FloatBuffer;I)Ljava/nio/FloatBuffer;
    .locals 1

    if-eqz p0, :cond_0

    .line 1
    invoke-virtual {p0}, Ljava/nio/Buffer;->capacity()I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/nio/FloatBuffer;->limit(I)Ljava/nio/Buffer;

    :cond_0
    if-eqz p0, :cond_1

    .line 2
    invoke-virtual {p0}, Ljava/nio/Buffer;->remaining()I

    move-result v0

    if-ge v0, p1, :cond_4

    :cond_1
    if-eqz p0, :cond_2

    .line 3
    invoke-virtual {p0}, Ljava/nio/Buffer;->position()I

    move-result v0

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    add-int/2addr p1, v0

    .line 4
    invoke-static {p1}, Lcom/jme3/util/BufferUtils;->createFloatBuffer(I)Ljava/nio/FloatBuffer;

    move-result-object p1

    if-eqz p0, :cond_3

    .line 5
    invoke-virtual {p0}, Ljava/nio/FloatBuffer;->flip()Ljava/nio/Buffer;

    .line 6
    invoke-virtual {p1, p0}, Ljava/nio/FloatBuffer;->put(Ljava/nio/FloatBuffer;)Ljava/nio/FloatBuffer;

    .line 7
    invoke-virtual {p1, v0}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    :cond_3
    move-object p0, p1

    :cond_4
    return-object p0
.end method

.method public static ensureLargeEnough(Ljava/nio/IntBuffer;I)Ljava/nio/IntBuffer;
    .locals 1

    if-eqz p0, :cond_0

    .line 8
    invoke-virtual {p0}, Ljava/nio/Buffer;->capacity()I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/nio/IntBuffer;->limit(I)Ljava/nio/Buffer;

    :cond_0
    if-eqz p0, :cond_1

    .line 9
    invoke-virtual {p0}, Ljava/nio/Buffer;->remaining()I

    move-result v0

    if-ge v0, p1, :cond_4

    :cond_1
    if-eqz p0, :cond_2

    .line 10
    invoke-virtual {p0}, Ljava/nio/Buffer;->position()I

    move-result v0

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    add-int/2addr p1, v0

    .line 11
    invoke-static {p1}, Lcom/jme3/util/BufferUtils;->createIntBuffer(I)Ljava/nio/IntBuffer;

    move-result-object p1

    if-eqz p0, :cond_3

    .line 12
    invoke-virtual {p0}, Ljava/nio/IntBuffer;->flip()Ljava/nio/Buffer;

    .line 13
    invoke-virtual {p1, p0}, Ljava/nio/IntBuffer;->put(Ljava/nio/IntBuffer;)Ljava/nio/IntBuffer;

    .line 14
    invoke-virtual {p1, v0}, Ljava/nio/IntBuffer;->position(I)Ljava/nio/Buffer;

    :cond_3
    move-object p0, p1

    :cond_4
    return-object p0
.end method

.method public static ensureLargeEnough(Ljava/nio/ShortBuffer;I)Ljava/nio/ShortBuffer;
    .locals 1

    if-eqz p0, :cond_0

    .line 15
    invoke-virtual {p0}, Ljava/nio/Buffer;->capacity()I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/nio/ShortBuffer;->limit(I)Ljava/nio/Buffer;

    :cond_0
    if-eqz p0, :cond_1

    .line 16
    invoke-virtual {p0}, Ljava/nio/Buffer;->remaining()I

    move-result v0

    if-ge v0, p1, :cond_4

    :cond_1
    if-eqz p0, :cond_2

    .line 17
    invoke-virtual {p0}, Ljava/nio/Buffer;->position()I

    move-result v0

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    add-int/2addr p1, v0

    .line 18
    invoke-static {p1}, Lcom/jme3/util/BufferUtils;->createShortBuffer(I)Ljava/nio/ShortBuffer;

    move-result-object p1

    if-eqz p0, :cond_3

    .line 19
    invoke-virtual {p0}, Ljava/nio/ShortBuffer;->flip()Ljava/nio/Buffer;

    .line 20
    invoke-virtual {p1, p0}, Ljava/nio/ShortBuffer;->put(Ljava/nio/ShortBuffer;)Ljava/nio/ShortBuffer;

    .line 21
    invoke-virtual {p1, v0}, Ljava/nio/ShortBuffer;->position(I)Ljava/nio/Buffer;

    :cond_3
    move-object p0, p1

    :cond_4
    return-object p0
.end method

.method public static equals(Lcom/jme3/math/Vector2f;Ljava/nio/FloatBuffer;I)Z
    .locals 2

    .line 6
    invoke-static {}, Lcom/jme3/util/TempVars;->get()Lcom/jme3/util/TempVars;

    move-result-object v0

    .line 7
    iget-object v1, v0, Lcom/jme3/util/TempVars;->vect2d:Lcom/jme3/math/Vector2f;

    .line 8
    invoke-static {v1, p1, p2}, Lcom/jme3/util/BufferUtils;->populateFromBuffer(Lcom/jme3/math/Vector2f;Ljava/nio/FloatBuffer;I)V

    .line 9
    invoke-virtual {v1, p0}, Lcom/jme3/math/Vector2f;->equals(Ljava/lang/Object;)Z

    move-result p0

    .line 10
    invoke-virtual {v0}, Lcom/jme3/util/TempVars;->release()V

    return p0
.end method

.method public static equals(Lcom/jme3/math/Vector3f;Ljava/nio/FloatBuffer;I)Z
    .locals 2

    .line 1
    invoke-static {}, Lcom/jme3/util/TempVars;->get()Lcom/jme3/util/TempVars;

    move-result-object v0

    .line 2
    iget-object v1, v0, Lcom/jme3/util/TempVars;->vect1:Lcom/jme3/math/Vector3f;

    .line 3
    invoke-static {v1, p1, p2}, Lcom/jme3/util/BufferUtils;->populateFromBuffer(Lcom/jme3/math/Vector3f;Ljava/nio/FloatBuffer;I)V

    .line 4
    invoke-virtual {v1, p0}, Lcom/jme3/math/Vector3f;->equals(Ljava/lang/Object;)Z

    move-result p0

    .line 5
    invoke-virtual {v0}, Lcom/jme3/util/TempVars;->release()V

    return p0
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

.method public static getIntArray(Ljava/nio/IntBuffer;)[I
    .locals 4

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Ljava/nio/IntBuffer;->clear()Ljava/nio/Buffer;

    invoke-virtual {p0}, Ljava/nio/Buffer;->limit()I

    move-result v0

    new-array v1, v0, [I

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    invoke-virtual {p0}, Ljava/nio/IntBuffer;->get()I

    move-result v3

    aput v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object v1
.end method

.method public static getVector2Array(Ljava/nio/FloatBuffer;)[Lcom/jme3/math/Vector2f;
    .locals 6

    invoke-virtual {p0}, Ljava/nio/FloatBuffer;->clear()Ljava/nio/Buffer;

    invoke-virtual {p0}, Ljava/nio/Buffer;->limit()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    new-array v1, v0, [Lcom/jme3/math/Vector2f;

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    new-instance v3, Lcom/jme3/math/Vector2f;

    invoke-virtual {p0}, Ljava/nio/FloatBuffer;->get()F

    move-result v4

    invoke-virtual {p0}, Ljava/nio/FloatBuffer;->get()F

    move-result v5

    invoke-direct {v3, v4, v5}, Lcom/jme3/math/Vector2f;-><init>(FF)V

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method public static getVector3Array(Ljava/nio/FloatBuffer;)[Lcom/jme3/math/Vector3f;
    .locals 7

    invoke-virtual {p0}, Ljava/nio/FloatBuffer;->clear()Ljava/nio/Buffer;

    invoke-virtual {p0}, Ljava/nio/Buffer;->limit()I

    move-result v0

    div-int/lit8 v0, v0, 0x3

    new-array v1, v0, [Lcom/jme3/math/Vector3f;

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    new-instance v3, Lcom/jme3/math/Vector3f;

    invoke-virtual {p0}, Ljava/nio/FloatBuffer;->get()F

    move-result v4

    invoke-virtual {p0}, Ljava/nio/FloatBuffer;->get()F

    move-result v5

    invoke-virtual {p0}, Ljava/nio/FloatBuffer;->get()F

    move-result v6

    invoke-direct {v3, v4, v5, v6}, Lcom/jme3/math/Vector3f;-><init>(FFF)V

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method private static isDirect(Ljava/nio/Buffer;)Z
    .locals 0

    invoke-virtual {p0}, Ljava/nio/Buffer;->isDirect()Z

    move-result p0

    return p0
.end method

.method public static multInBuffer(Lcom/jme3/math/Vector2f;Ljava/nio/FloatBuffer;I)V
    .locals 2

    .line 7
    invoke-static {}, Lcom/jme3/util/TempVars;->get()Lcom/jme3/util/TempVars;

    move-result-object v0

    .line 8
    iget-object v1, v0, Lcom/jme3/util/TempVars;->vect2d:Lcom/jme3/math/Vector2f;

    .line 9
    invoke-static {v1, p1, p2}, Lcom/jme3/util/BufferUtils;->populateFromBuffer(Lcom/jme3/math/Vector2f;Ljava/nio/FloatBuffer;I)V

    .line 10
    invoke-virtual {v1, p0}, Lcom/jme3/math/Vector2f;->multLocal(Lcom/jme3/math/Vector2f;)Lcom/jme3/math/Vector2f;

    .line 11
    invoke-static {v1, p1, p2}, Lcom/jme3/util/BufferUtils;->setInBuffer(Lcom/jme3/math/Vector2f;Ljava/nio/FloatBuffer;I)V

    .line 12
    invoke-virtual {v0}, Lcom/jme3/util/TempVars;->release()V

    return-void
.end method

.method public static multInBuffer(Lcom/jme3/math/Vector3f;Ljava/nio/FloatBuffer;I)V
    .locals 2

    .line 1
    invoke-static {}, Lcom/jme3/util/TempVars;->get()Lcom/jme3/util/TempVars;

    move-result-object v0

    .line 2
    iget-object v1, v0, Lcom/jme3/util/TempVars;->vect1:Lcom/jme3/math/Vector3f;

    .line 3
    invoke-static {v1, p1, p2}, Lcom/jme3/util/BufferUtils;->populateFromBuffer(Lcom/jme3/math/Vector3f;Ljava/nio/FloatBuffer;I)V

    .line 4
    invoke-virtual {v1, p0}, Lcom/jme3/math/Vector3f;->multLocal(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    .line 5
    invoke-static {v1, p1, p2}, Lcom/jme3/util/BufferUtils;->setInBuffer(Lcom/jme3/math/Vector3f;Ljava/nio/FloatBuffer;I)V

    .line 6
    invoke-virtual {v0}, Lcom/jme3/util/TempVars;->release()V

    return-void
.end method

.method public static normalizeVector2(Ljava/nio/FloatBuffer;I)V
    .locals 2

    invoke-static {}, Lcom/jme3/util/TempVars;->get()Lcom/jme3/util/TempVars;

    move-result-object v0

    iget-object v1, v0, Lcom/jme3/util/TempVars;->vect2d:Lcom/jme3/math/Vector2f;

    invoke-static {v1, p0, p1}, Lcom/jme3/util/BufferUtils;->populateFromBuffer(Lcom/jme3/math/Vector2f;Ljava/nio/FloatBuffer;I)V

    invoke-virtual {v1}, Lcom/jme3/math/Vector2f;->normalizeLocal()Lcom/jme3/math/Vector2f;

    invoke-static {v1, p0, p1}, Lcom/jme3/util/BufferUtils;->setInBuffer(Lcom/jme3/math/Vector2f;Ljava/nio/FloatBuffer;I)V

    invoke-virtual {v0}, Lcom/jme3/util/TempVars;->release()V

    return-void
.end method

.method public static normalizeVector3(Ljava/nio/FloatBuffer;I)V
    .locals 2

    invoke-static {}, Lcom/jme3/util/TempVars;->get()Lcom/jme3/util/TempVars;

    move-result-object v0

    iget-object v1, v0, Lcom/jme3/util/TempVars;->vect1:Lcom/jme3/math/Vector3f;

    invoke-static {v1, p0, p1}, Lcom/jme3/util/BufferUtils;->populateFromBuffer(Lcom/jme3/math/Vector3f;Ljava/nio/FloatBuffer;I)V

    invoke-virtual {v1}, Lcom/jme3/math/Vector3f;->normalizeLocal()Lcom/jme3/math/Vector3f;

    invoke-static {v1, p0, p1}, Lcom/jme3/util/BufferUtils;->setInBuffer(Lcom/jme3/math/Vector3f;Ljava/nio/FloatBuffer;I)V

    invoke-virtual {v0}, Lcom/jme3/util/TempVars;->release()V

    return-void
.end method

.method private static onBufferAllocated(Ljava/nio/Buffer;)V
    .locals 4

    sget-boolean v0, Lcom/jme3/util/BufferUtils;->trackDirectMemory:Z

    if-eqz v0, :cond_5

    sget-object v0, Lcom/jme3/util/BufferUtils;->cleanupthread:Lcom/jme3/util/BufferUtils$ClearReferences;

    if-nez v0, :cond_0

    new-instance v0, Lcom/jme3/util/BufferUtils$ClearReferences;

    invoke-direct {v0}, Lcom/jme3/util/BufferUtils$ClearReferences;-><init>()V

    sput-object v0, Lcom/jme3/util/BufferUtils;->cleanupthread:Lcom/jme3/util/BufferUtils$ClearReferences;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    :cond_0
    instance-of v0, p0, Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_1

    new-instance v0, Lcom/jme3/util/BufferUtils$BufferInfo;

    invoke-virtual {p0}, Ljava/nio/Buffer;->capacity()I

    move-result v1

    sget-object v2, Lcom/jme3/util/BufferUtils;->removeCollected:Ljava/lang/ref/ReferenceQueue;

    const-class v3, Ljava/nio/ByteBuffer;

    invoke-direct {v0, v3, v1, p0, v2}, Lcom/jme3/util/BufferUtils$BufferInfo;-><init>(Ljava/lang/Class;ILjava/nio/Buffer;Ljava/lang/ref/ReferenceQueue;)V

    sget-object p0, Lcom/jme3/util/BufferUtils;->trackedBuffers:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p0, v0, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    instance-of v0, p0, Ljava/nio/FloatBuffer;

    if-eqz v0, :cond_2

    new-instance v0, Lcom/jme3/util/BufferUtils$BufferInfo;

    invoke-virtual {p0}, Ljava/nio/Buffer;->capacity()I

    move-result v1

    mul-int/lit8 v1, v1, 0x4

    sget-object v2, Lcom/jme3/util/BufferUtils;->removeCollected:Ljava/lang/ref/ReferenceQueue;

    const-class v3, Ljava/nio/FloatBuffer;

    invoke-direct {v0, v3, v1, p0, v2}, Lcom/jme3/util/BufferUtils$BufferInfo;-><init>(Ljava/lang/Class;ILjava/nio/Buffer;Ljava/lang/ref/ReferenceQueue;)V

    sget-object p0, Lcom/jme3/util/BufferUtils;->trackedBuffers:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p0, v0, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_2
    instance-of v0, p0, Ljava/nio/IntBuffer;

    if-eqz v0, :cond_3

    new-instance v0, Lcom/jme3/util/BufferUtils$BufferInfo;

    invoke-virtual {p0}, Ljava/nio/Buffer;->capacity()I

    move-result v1

    mul-int/lit8 v1, v1, 0x4

    sget-object v2, Lcom/jme3/util/BufferUtils;->removeCollected:Ljava/lang/ref/ReferenceQueue;

    const-class v3, Ljava/nio/IntBuffer;

    invoke-direct {v0, v3, v1, p0, v2}, Lcom/jme3/util/BufferUtils$BufferInfo;-><init>(Ljava/lang/Class;ILjava/nio/Buffer;Ljava/lang/ref/ReferenceQueue;)V

    sget-object p0, Lcom/jme3/util/BufferUtils;->trackedBuffers:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p0, v0, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_3
    instance-of v0, p0, Ljava/nio/ShortBuffer;

    if-eqz v0, :cond_4

    new-instance v0, Lcom/jme3/util/BufferUtils$BufferInfo;

    invoke-virtual {p0}, Ljava/nio/Buffer;->capacity()I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    sget-object v2, Lcom/jme3/util/BufferUtils;->removeCollected:Ljava/lang/ref/ReferenceQueue;

    const-class v3, Ljava/nio/ShortBuffer;

    invoke-direct {v0, v3, v1, p0, v2}, Lcom/jme3/util/BufferUtils$BufferInfo;-><init>(Ljava/lang/Class;ILjava/nio/Buffer;Ljava/lang/ref/ReferenceQueue;)V

    sget-object p0, Lcom/jme3/util/BufferUtils;->trackedBuffers:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p0, v0, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_4
    instance-of v0, p0, Ljava/nio/DoubleBuffer;

    if-eqz v0, :cond_5

    new-instance v0, Lcom/jme3/util/BufferUtils$BufferInfo;

    invoke-virtual {p0}, Ljava/nio/Buffer;->capacity()I

    move-result v1

    mul-int/lit8 v1, v1, 0x8

    sget-object v2, Lcom/jme3/util/BufferUtils;->removeCollected:Ljava/lang/ref/ReferenceQueue;

    const-class v3, Ljava/nio/DoubleBuffer;

    invoke-direct {v0, v3, v1, p0, v2}, Lcom/jme3/util/BufferUtils$BufferInfo;-><init>(Ljava/lang/Class;ILjava/nio/Buffer;Ljava/lang/ref/ReferenceQueue;)V

    sget-object p0, Lcom/jme3/util/BufferUtils;->trackedBuffers:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p0, v0, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    :goto_0
    return-void
.end method

.method public static populateFromBuffer(Lcom/jme3/math/Vector2f;Ljava/nio/FloatBuffer;I)V
    .locals 1

    mul-int/lit8 p2, p2, 0x2

    .line 8
    invoke-virtual {p1, p2}, Ljava/nio/FloatBuffer;->get(I)F

    move-result v0

    iput v0, p0, Lcom/jme3/math/Vector2f;->x:F

    add-int/lit8 p2, p2, 0x1

    .line 9
    invoke-virtual {p1, p2}, Ljava/nio/FloatBuffer;->get(I)F

    move-result p1

    iput p1, p0, Lcom/jme3/math/Vector2f;->y:F

    return-void
.end method

.method public static populateFromBuffer(Lcom/jme3/math/Vector3f;Ljava/nio/FloatBuffer;I)V
    .locals 1

    mul-int/lit8 p2, p2, 0x3

    .line 1
    invoke-virtual {p1, p2}, Ljava/nio/FloatBuffer;->get(I)F

    move-result v0

    iput v0, p0, Lcom/jme3/math/Vector3f;->x:F

    add-int/lit8 v0, p2, 0x1

    .line 2
    invoke-virtual {p1, v0}, Ljava/nio/FloatBuffer;->get(I)F

    move-result v0

    iput v0, p0, Lcom/jme3/math/Vector3f;->y:F

    add-int/lit8 p2, p2, 0x2

    .line 3
    invoke-virtual {p1, p2}, Ljava/nio/FloatBuffer;->get(I)F

    move-result p1

    iput p1, p0, Lcom/jme3/math/Vector3f;->z:F

    return-void
.end method

.method public static populateFromBuffer(Lcom/jme3/math/Vector4f;Ljava/nio/FloatBuffer;I)V
    .locals 1

    mul-int/lit8 p2, p2, 0x4

    .line 4
    invoke-virtual {p1, p2}, Ljava/nio/FloatBuffer;->get(I)F

    move-result v0

    iput v0, p0, Lcom/jme3/math/Vector4f;->x:F

    add-int/lit8 v0, p2, 0x1

    .line 5
    invoke-virtual {p1, v0}, Ljava/nio/FloatBuffer;->get(I)F

    move-result v0

    iput v0, p0, Lcom/jme3/math/Vector4f;->y:F

    add-int/lit8 v0, p2, 0x2

    .line 6
    invoke-virtual {p1, v0}, Ljava/nio/FloatBuffer;->get(I)F

    move-result v0

    iput v0, p0, Lcom/jme3/math/Vector4f;->z:F

    add-int/lit8 p2, p2, 0x3

    .line 7
    invoke-virtual {p1, p2}, Ljava/nio/FloatBuffer;->get(I)F

    move-result p1

    iput p1, p0, Lcom/jme3/math/Vector4f;->w:F

    return-void
.end method

.method public static printCurrentDirectMemory(Ljava/lang/StringBuilder;)V
    .locals 23

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->totalMemory()J

    move-result-wide v0

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Runtime;->freeMemory()J

    move-result-wide v2

    sub-long/2addr v0, v2

    const/4 v2, 0x0

    if-nez p0, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    move v3, v2

    :goto_0
    if-nez p0, :cond_1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_1

    :cond_1
    move-object/from16 v4, p0

    :goto_1
    sget-boolean v5, Lcom/jme3/util/BufferUtils;->trackDirectMemory:Z

    const-string v6, "Total   heap memory held: "

    const-string v7, "kb\n"

    const-string v10, "\n"

    if-eqz v5, :cond_8

    sget-object v5, Lcom/jme3/util/BufferUtils;->trackedBuffers:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v5}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    const-wide/16 v11, 0x0

    move v8, v2

    move v9, v8

    move v13, v9

    move v14, v13

    move v15, v14

    move/from16 v16, v3

    move-object/from16 p0, v7

    move-wide/from16 v17, v11

    move v3, v15

    move v7, v3

    move v11, v7

    move v12, v11

    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_7

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/jme3/util/BufferUtils$BufferInfo;

    move-object/from16 v20, v5

    invoke-static/range {v19 .. v19}, Lcom/jme3/util/BufferUtils$BufferInfo;->access$000(Lcom/jme3/util/BufferUtils$BufferInfo;)Ljava/lang/Class;

    move-result-object v5

    move-wide/from16 v21, v0

    const-class v0, Ljava/nio/ByteBuffer;

    if-ne v5, v0, :cond_2

    invoke-static/range {v19 .. v19}, Lcom/jme3/util/BufferUtils$BufferInfo;->access$100(Lcom/jme3/util/BufferUtils$BufferInfo;)I

    move-result v0

    int-to-long v0, v0

    add-long v17, v17, v0

    invoke-static/range {v19 .. v19}, Lcom/jme3/util/BufferUtils$BufferInfo;->access$100(Lcom/jme3/util/BufferUtils$BufferInfo;)I

    move-result v0

    add-int/2addr v15, v0

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_2
    invoke-static/range {v19 .. v19}, Lcom/jme3/util/BufferUtils$BufferInfo;->access$000(Lcom/jme3/util/BufferUtils$BufferInfo;)Ljava/lang/Class;

    move-result-object v0

    const-class v1, Ljava/nio/FloatBuffer;

    if-ne v0, v1, :cond_3

    invoke-static/range {v19 .. v19}, Lcom/jme3/util/BufferUtils$BufferInfo;->access$100(Lcom/jme3/util/BufferUtils$BufferInfo;)I

    move-result v0

    int-to-long v0, v0

    add-long v17, v17, v0

    invoke-static/range {v19 .. v19}, Lcom/jme3/util/BufferUtils$BufferInfo;->access$100(Lcom/jme3/util/BufferUtils$BufferInfo;)I

    move-result v0

    add-int/2addr v8, v0

    add-int/lit8 v11, v11, 0x1

    goto :goto_3

    :cond_3
    invoke-static/range {v19 .. v19}, Lcom/jme3/util/BufferUtils$BufferInfo;->access$000(Lcom/jme3/util/BufferUtils$BufferInfo;)Ljava/lang/Class;

    move-result-object v0

    const-class v1, Ljava/nio/IntBuffer;

    if-ne v0, v1, :cond_4

    invoke-static/range {v19 .. v19}, Lcom/jme3/util/BufferUtils$BufferInfo;->access$100(Lcom/jme3/util/BufferUtils$BufferInfo;)I

    move-result v0

    int-to-long v0, v0

    add-long v17, v17, v0

    invoke-static/range {v19 .. v19}, Lcom/jme3/util/BufferUtils$BufferInfo;->access$100(Lcom/jme3/util/BufferUtils$BufferInfo;)I

    move-result v0

    add-int/2addr v9, v0

    add-int/lit8 v12, v12, 0x1

    goto :goto_3

    :cond_4
    invoke-static/range {v19 .. v19}, Lcom/jme3/util/BufferUtils$BufferInfo;->access$000(Lcom/jme3/util/BufferUtils$BufferInfo;)Ljava/lang/Class;

    move-result-object v0

    const-class v1, Ljava/nio/ShortBuffer;

    if-ne v0, v1, :cond_5

    invoke-static/range {v19 .. v19}, Lcom/jme3/util/BufferUtils$BufferInfo;->access$100(Lcom/jme3/util/BufferUtils$BufferInfo;)I

    move-result v0

    int-to-long v0, v0

    add-long v17, v17, v0

    invoke-static/range {v19 .. v19}, Lcom/jme3/util/BufferUtils$BufferInfo;->access$100(Lcom/jme3/util/BufferUtils$BufferInfo;)I

    move-result v0

    add-int/2addr v3, v0

    add-int/lit8 v13, v13, 0x1

    goto :goto_3

    :cond_5
    invoke-static/range {v19 .. v19}, Lcom/jme3/util/BufferUtils$BufferInfo;->access$000(Lcom/jme3/util/BufferUtils$BufferInfo;)Ljava/lang/Class;

    move-result-object v0

    const-class v1, Ljava/nio/DoubleBuffer;

    if-ne v0, v1, :cond_6

    invoke-static/range {v19 .. v19}, Lcom/jme3/util/BufferUtils$BufferInfo;->access$100(Lcom/jme3/util/BufferUtils$BufferInfo;)I

    move-result v0

    int-to-long v0, v0

    add-long v17, v17, v0

    invoke-static/range {v19 .. v19}, Lcom/jme3/util/BufferUtils$BufferInfo;->access$100(Lcom/jme3/util/BufferUtils$BufferInfo;)I

    move-result v0

    add-int/2addr v7, v0

    add-int/lit8 v14, v14, 0x1

    :cond_6
    :goto_3
    move-object/from16 v5, v20

    move-wide/from16 v0, v21

    goto/16 :goto_2

    :cond_7
    move-wide/from16 v21, v0

    const-string v0, "Existing buffers: "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lcom/jme3/util/BufferUtils;->trackedBuffers:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "(b: "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "  f: "

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "  i: "

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "  s: "

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "  d: "

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-wide/16 v1, 0x400

    div-long v5, v21, v1

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-object/from16 v5, p0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "Total direct memory held: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    div-long v1, v17, v1

    invoke-virtual {v4, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    div-int/lit16 v15, v15, 0x400

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "kb  f: "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    div-int/lit16 v8, v8, 0x400

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "kb  i: "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    div-int/lit16 v9, v9, 0x400

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "kb  s: "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    div-int/lit16 v3, v3, 0x400

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "kb  d: "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    div-int/lit16 v7, v7, 0x400

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "kb)"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4

    :cond_8
    move-wide/from16 v21, v0

    move/from16 v16, v3

    move-object v5, v7

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-wide/16 v0, 0x400

    div-long v0, v21, v0

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "Only heap memory available, if you want to monitor direct memory use BufferUtils.setTrackDirectMemoryEnabled(true) during initialization."

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_4
    if-eqz v16, :cond_9

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_9
    return-void
.end method

.method public static setInBuffer(Lcom/jme3/math/ColorRGBA;Ljava/nio/FloatBuffer;I)V
    .locals 0

    mul-int/lit8 p2, p2, 0x4

    .line 1
    invoke-virtual {p1, p2}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 2
    iget p2, p0, Lcom/jme3/math/ColorRGBA;->r:F

    invoke-virtual {p1, p2}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 3
    iget p2, p0, Lcom/jme3/math/ColorRGBA;->g:F

    invoke-virtual {p1, p2}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 4
    iget p2, p0, Lcom/jme3/math/ColorRGBA;->b:F

    invoke-virtual {p1, p2}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 5
    iget p0, p0, Lcom/jme3/math/ColorRGBA;->a:F

    invoke-virtual {p1, p0}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    return-void
.end method

.method public static setInBuffer(Lcom/jme3/math/Quaternion;Ljava/nio/FloatBuffer;I)V
    .locals 0

    mul-int/lit8 p2, p2, 0x4

    .line 6
    invoke-virtual {p1, p2}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 7
    invoke-virtual {p0}, Lcom/jme3/math/Quaternion;->getX()F

    move-result p2

    invoke-virtual {p1, p2}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 8
    invoke-virtual {p0}, Lcom/jme3/math/Quaternion;->getY()F

    move-result p2

    invoke-virtual {p1, p2}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 9
    invoke-virtual {p0}, Lcom/jme3/math/Quaternion;->getZ()F

    move-result p2

    invoke-virtual {p1, p2}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 10
    invoke-virtual {p0}, Lcom/jme3/math/Quaternion;->getW()F

    move-result p0

    invoke-virtual {p1, p0}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    return-void
.end method

.method public static setInBuffer(Lcom/jme3/math/Vector2f;Ljava/nio/FloatBuffer;I)V
    .locals 1

    mul-int/lit8 p2, p2, 0x2

    .line 22
    iget v0, p0, Lcom/jme3/math/Vector2f;->x:F

    invoke-virtual {p1, p2, v0}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    add-int/lit8 p2, p2, 0x1

    .line 23
    iget p0, p0, Lcom/jme3/math/Vector2f;->y:F

    invoke-virtual {p1, p2, p0}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    return-void
.end method

.method public static setInBuffer(Lcom/jme3/math/Vector3f;Ljava/nio/FloatBuffer;I)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    :cond_0
    if-nez p0, :cond_1

    mul-int/lit8 p2, p2, 0x3

    const/4 p0, 0x0

    .line 16
    invoke-virtual {p1, p2, p0}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    add-int/lit8 v0, p2, 0x1

    .line 17
    invoke-virtual {p1, v0, p0}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    add-int/lit8 p2, p2, 0x2

    .line 18
    invoke-virtual {p1, p2, p0}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    goto :goto_0

    :cond_1
    mul-int/lit8 p2, p2, 0x3

    .line 19
    iget v0, p0, Lcom/jme3/math/Vector3f;->x:F

    invoke-virtual {p1, p2, v0}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    add-int/lit8 v0, p2, 0x1

    .line 20
    iget v1, p0, Lcom/jme3/math/Vector3f;->y:F

    invoke-virtual {p1, v0, v1}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    add-int/lit8 p2, p2, 0x2

    .line 21
    iget p0, p0, Lcom/jme3/math/Vector3f;->z:F

    invoke-virtual {p1, p2, p0}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    :goto_0
    return-void
.end method

.method public static setInBuffer(Lcom/jme3/math/Vector4f;Ljava/nio/FloatBuffer;I)V
    .locals 0

    mul-int/lit8 p2, p2, 0x4

    .line 11
    invoke-virtual {p1, p2}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 12
    invoke-virtual {p0}, Lcom/jme3/math/Vector4f;->getX()F

    move-result p2

    invoke-virtual {p1, p2}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 13
    invoke-virtual {p0}, Lcom/jme3/math/Vector4f;->getY()F

    move-result p2

    invoke-virtual {p1, p2}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 14
    invoke-virtual {p0}, Lcom/jme3/math/Vector4f;->getZ()F

    move-result p2

    invoke-virtual {p1, p2}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 15
    invoke-virtual {p0}, Lcom/jme3/math/Vector4f;->getW()F

    move-result p0

    invoke-virtual {p1, p0}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    return-void
.end method

.method public static setTrackDirectMemoryEnabled(Z)V
    .locals 0

    sput-boolean p0, Lcom/jme3/util/BufferUtils;->trackDirectMemory:Z

    return-void
.end method
