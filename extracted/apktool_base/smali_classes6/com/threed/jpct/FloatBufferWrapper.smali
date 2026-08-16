.class Lcom/threed/jpct/FloatBufferWrapper;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static intArray:[I


# instance fields
.field bytes:Ljava/nio/ByteBuffer;

.field floats:Ljava/nio/FloatBuffer;

.field private ints:Ljava/nio/IntBuffer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [I

    sput-object v0, Lcom/threed/jpct/FloatBufferWrapper;->intArray:[I

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    mul-int/lit8 p1, p1, 0x4

    .line 6
    invoke-static {p1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object p1

    iput-object p1, p0, Lcom/threed/jpct/FloatBufferWrapper;->bytes:Ljava/nio/ByteBuffer;

    .line 7
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object p1

    iput-object p1, p0, Lcom/threed/jpct/FloatBufferWrapper;->floats:Ljava/nio/FloatBuffer;

    .line 8
    iget-object p1, p0, Lcom/threed/jpct/FloatBufferWrapper;->bytes:Ljava/nio/ByteBuffer;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->asIntBuffer()Ljava/nio/IntBuffer;

    move-result-object p1

    iput-object p1, p0, Lcom/threed/jpct/FloatBufferWrapper;->ints:Ljava/nio/IntBuffer;

    return-void
.end method

.method public constructor <init>(Ljava/nio/ByteBuffer;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/threed/jpct/FloatBufferWrapper;->bytes:Ljava/nio/ByteBuffer;

    .line 3
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object p1

    iput-object p1, p0, Lcom/threed/jpct/FloatBufferWrapper;->floats:Ljava/nio/FloatBuffer;

    .line 4
    iget-object p1, p0, Lcom/threed/jpct/FloatBufferWrapper;->bytes:Ljava/nio/ByteBuffer;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->asIntBuffer()Ljava/nio/IntBuffer;

    move-result-object p1

    iput-object p1, p0, Lcom/threed/jpct/FloatBufferWrapper;->ints:Ljava/nio/IntBuffer;

    return-void
.end method


# virtual methods
.method public capacity()I
    .locals 1

    iget-object v0, p0, Lcom/threed/jpct/FloatBufferWrapper;->floats:Ljava/nio/FloatBuffer;

    invoke-virtual {v0}, Ljava/nio/Buffer;->capacity()I

    move-result v0

    return v0
.end method

.method public clear()V
    .locals 1

    iget-object v0, p0, Lcom/threed/jpct/FloatBufferWrapper;->bytes:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    iget-object v0, p0, Lcom/threed/jpct/FloatBufferWrapper;->floats:Ljava/nio/FloatBuffer;

    invoke-virtual {v0}, Ljava/nio/FloatBuffer;->clear()Ljava/nio/Buffer;

    iget-object v0, p0, Lcom/threed/jpct/FloatBufferWrapper;->ints:Ljava/nio/IntBuffer;

    invoke-virtual {v0}, Ljava/nio/IntBuffer;->clear()Ljava/nio/Buffer;

    return-void
.end method

.method public flip()V
    .locals 1

    iget-object v0, p0, Lcom/threed/jpct/FloatBufferWrapper;->bytes:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    iget-object v0, p0, Lcom/threed/jpct/FloatBufferWrapper;->floats:Ljava/nio/FloatBuffer;

    invoke-virtual {v0}, Ljava/nio/FloatBuffer;->flip()Ljava/nio/Buffer;

    iget-object v0, p0, Lcom/threed/jpct/FloatBufferWrapper;->ints:Ljava/nio/IntBuffer;

    invoke-virtual {v0}, Ljava/nio/IntBuffer;->flip()Ljava/nio/Buffer;

    return-void
.end method

.method public getByteBuffer()Ljava/nio/ByteBuffer;
    .locals 1

    iget-object v0, p0, Lcom/threed/jpct/FloatBufferWrapper;->bytes:Ljava/nio/ByteBuffer;

    return-object v0
.end method

.method public limit()I
    .locals 1

    iget-object v0, p0, Lcom/threed/jpct/FloatBufferWrapper;->floats:Ljava/nio/FloatBuffer;

    invoke-virtual {v0}, Ljava/nio/Buffer;->limit()I

    move-result v0

    return v0
.end method

.method public position()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/threed/jpct/FloatBufferWrapper;->floats:Ljava/nio/FloatBuffer;

    invoke-virtual {v0}, Ljava/nio/Buffer;->position()I

    move-result v0

    return v0
.end method

.method public position(I)V
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/threed/jpct/FloatBufferWrapper;->bytes:Ljava/nio/ByteBuffer;

    mul-int/lit8 v1, p1, 0x4

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 3
    iget-object v0, p0, Lcom/threed/jpct/FloatBufferWrapper;->floats:Ljava/nio/FloatBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 4
    iget-object v0, p0, Lcom/threed/jpct/FloatBufferWrapper;->ints:Ljava/nio/IntBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/IntBuffer;->position(I)Ljava/nio/Buffer;

    return-void
.end method

.method public put(F)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/threed/jpct/FloatBufferWrapper;->bytes:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/Buffer;->position()I

    move-result v1

    add-int/lit8 v1, v1, 0x4

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 2
    iget-object v0, p0, Lcom/threed/jpct/FloatBufferWrapper;->floats:Ljava/nio/FloatBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 3
    iget-object p1, p0, Lcom/threed/jpct/FloatBufferWrapper;->ints:Ljava/nio/IntBuffer;

    invoke-virtual {p1}, Ljava/nio/Buffer;->position()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Ljava/nio/IntBuffer;->position(I)Ljava/nio/Buffer;

    return-void
.end method

.method public put(Lcom/threed/jpct/FloatBufferWrapper;)V
    .locals 1

    .line 20
    iget-object v0, p0, Lcom/threed/jpct/FloatBufferWrapper;->bytes:Ljava/nio/ByteBuffer;

    iget-object p1, p1, Lcom/threed/jpct/FloatBufferWrapper;->bytes:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 21
    iget-object p1, p0, Lcom/threed/jpct/FloatBufferWrapper;->floats:Ljava/nio/FloatBuffer;

    iget-object v0, p0, Lcom/threed/jpct/FloatBufferWrapper;->bytes:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/Buffer;->position()I

    move-result v0

    shr-int/lit8 v0, v0, 0x2

    invoke-virtual {p1, v0}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 22
    iget-object p1, p0, Lcom/threed/jpct/FloatBufferWrapper;->ints:Ljava/nio/IntBuffer;

    iget-object v0, p0, Lcom/threed/jpct/FloatBufferWrapper;->bytes:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/Buffer;->position()I

    move-result v0

    shr-int/lit8 v0, v0, 0x2

    invoke-virtual {p1, v0}, Ljava/nio/IntBuffer;->position(I)Ljava/nio/Buffer;

    return-void
.end method

.method public put([F)V
    .locals 5

    .line 10
    sget-object v0, Lcom/threed/jpct/FloatBufferWrapper;->intArray:[I

    array-length v0, v0

    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 11
    array-length v0, p1

    new-array v0, v0, [I

    sput-object v0, Lcom/threed/jpct/FloatBufferWrapper;->intArray:[I

    .line 12
    :cond_0
    array-length v0, p1

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-lt v2, v0, :cond_1

    .line 13
    iget-object v2, p0, Lcom/threed/jpct/FloatBufferWrapper;->bytes:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/Buffer;->position()I

    move-result v3

    mul-int/lit8 v4, v0, 0x4

    add-int/2addr v3, v4

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 14
    iget-object v2, p0, Lcom/threed/jpct/FloatBufferWrapper;->floats:Ljava/nio/FloatBuffer;

    invoke-virtual {v2}, Ljava/nio/Buffer;->position()I

    move-result v3

    add-int/2addr v3, v0

    invoke-virtual {v2, v3}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 15
    iget-object v0, p0, Lcom/threed/jpct/FloatBufferWrapper;->ints:Ljava/nio/IntBuffer;

    sget-object v2, Lcom/threed/jpct/FloatBufferWrapper;->intArray:[I

    array-length p1, p1

    invoke-virtual {v0, v2, v1, p1}, Ljava/nio/IntBuffer;->put([III)Ljava/nio/IntBuffer;

    return-void

    .line 16
    :cond_1
    sget-object v3, Lcom/threed/jpct/FloatBufferWrapper;->intArray:[I

    aget v4, p1, v2

    invoke-static {v4}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v4

    aput v4, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public put([FII)V
    .locals 5

    .line 4
    sget-object v0, Lcom/threed/jpct/FloatBufferWrapper;->intArray:[I

    array-length v0, v0

    if-ge v0, p3, :cond_0

    .line 5
    new-array v0, p3, [I

    sput-object v0, Lcom/threed/jpct/FloatBufferWrapper;->intArray:[I

    :cond_0
    add-int v0, p2, p3

    move v1, p2

    :goto_0
    if-lt v1, v0, :cond_1

    .line 6
    iget-object p1, p0, Lcom/threed/jpct/FloatBufferWrapper;->bytes:Ljava/nio/ByteBuffer;

    invoke-virtual {p1}, Ljava/nio/Buffer;->position()I

    move-result p2

    mul-int/lit8 v0, p3, 0x4

    add-int/2addr p2, v0

    invoke-virtual {p1, p2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 7
    iget-object p1, p0, Lcom/threed/jpct/FloatBufferWrapper;->floats:Ljava/nio/FloatBuffer;

    invoke-virtual {p1}, Ljava/nio/Buffer;->position()I

    move-result p2

    add-int/2addr p2, p3

    invoke-virtual {p1, p2}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 8
    iget-object p1, p0, Lcom/threed/jpct/FloatBufferWrapper;->ints:Ljava/nio/IntBuffer;

    sget-object p2, Lcom/threed/jpct/FloatBufferWrapper;->intArray:[I

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0, p3}, Ljava/nio/IntBuffer;->put([III)Ljava/nio/IntBuffer;

    return-void

    .line 9
    :cond_1
    sget-object v2, Lcom/threed/jpct/FloatBufferWrapper;->intArray:[I

    sub-int v3, v1, p2

    aget v4, p1, v1

    invoke-static {v4}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v4

    aput v4, v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public put([I)V
    .locals 3

    .line 17
    iget-object v0, p0, Lcom/threed/jpct/FloatBufferWrapper;->bytes:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/Buffer;->position()I

    move-result v1

    array-length v2, p1

    mul-int/lit8 v2, v2, 0x4

    add-int/2addr v1, v2

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 18
    iget-object v0, p0, Lcom/threed/jpct/FloatBufferWrapper;->floats:Ljava/nio/FloatBuffer;

    invoke-virtual {v0}, Ljava/nio/Buffer;->position()I

    move-result v1

    array-length v2, p1

    add-int/2addr v1, v2

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 19
    iget-object v0, p0, Lcom/threed/jpct/FloatBufferWrapper;->ints:Ljava/nio/IntBuffer;

    const/4 v1, 0x0

    array-length v2, p1

    invoke-virtual {v0, p1, v1, v2}, Ljava/nio/IntBuffer;->put([III)Ljava/nio/IntBuffer;

    return-void
.end method

.method public remaining()I
    .locals 1

    iget-object v0, p0, Lcom/threed/jpct/FloatBufferWrapper;->floats:Ljava/nio/FloatBuffer;

    invoke-virtual {v0}, Ljava/nio/Buffer;->remaining()I

    move-result v0

    return v0
.end method

.method public rewind()V
    .locals 1

    iget-object v0, p0, Lcom/threed/jpct/FloatBufferWrapper;->bytes:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    iget-object v0, p0, Lcom/threed/jpct/FloatBufferWrapper;->floats:Ljava/nio/FloatBuffer;

    invoke-virtual {v0}, Ljava/nio/FloatBuffer;->rewind()Ljava/nio/Buffer;

    iget-object v0, p0, Lcom/threed/jpct/FloatBufferWrapper;->ints:Ljava/nio/IntBuffer;

    invoke-virtual {v0}, Ljava/nio/IntBuffer;->rewind()Ljava/nio/Buffer;

    return-void
.end method

.method public slice()Ljava/nio/FloatBuffer;
    .locals 1

    iget-object v0, p0, Lcom/threed/jpct/FloatBufferWrapper;->floats:Ljava/nio/FloatBuffer;

    invoke-virtual {v0}, Ljava/nio/FloatBuffer;->slice()Ljava/nio/FloatBuffer;

    move-result-object v0

    return-object v0
.end method
