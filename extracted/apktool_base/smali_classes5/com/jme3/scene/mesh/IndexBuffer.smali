.class public abstract Lcom/jme3/scene/mesh/IndexBuffer;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createIndexBuffer(II)Lcom/jme3/scene/mesh/IndexBuffer;
    .locals 1

    const/16 v0, 0x80

    if-ge p0, v0, :cond_0

    invoke-static {p1}, Lcom/jme3/util/BufferUtils;->createByteBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object p1

    const/4 v0, 0x0

    add-int/lit8 p0, p0, -0x1

    invoke-static {v0, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    new-instance v0, Lcom/jme3/scene/mesh/IndexByteBuffer;

    invoke-direct {v0, p1, p0}, Lcom/jme3/scene/mesh/IndexByteBuffer;-><init>(Ljava/nio/ByteBuffer;I)V

    goto :goto_0

    :cond_0
    const/high16 v0, 0x10000

    if-ge p0, v0, :cond_1

    invoke-static {p1}, Lcom/jme3/util/BufferUtils;->createShortBuffer(I)Ljava/nio/ShortBuffer;

    move-result-object p1

    add-int/lit8 p0, p0, -0x1

    new-instance v0, Lcom/jme3/scene/mesh/IndexShortBuffer;

    invoke-direct {v0, p1, p0}, Lcom/jme3/scene/mesh/IndexShortBuffer;-><init>(Ljava/nio/ShortBuffer;I)V

    goto :goto_0

    :cond_1
    invoke-static {p1}, Lcom/jme3/util/BufferUtils;->createIntBuffer(I)Ljava/nio/IntBuffer;

    move-result-object p0

    new-instance v0, Lcom/jme3/scene/mesh/IndexIntBuffer;

    invoke-direct {v0, p0}, Lcom/jme3/scene/mesh/IndexIntBuffer;-><init>(Ljava/nio/IntBuffer;)V

    :goto_0
    return-object v0
.end method

.method public static wrapIndexBuffer(Ljava/nio/Buffer;)Lcom/jme3/scene/mesh/IndexBuffer;
    .locals 3

    instance-of v0, p0, Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_0

    new-instance v0, Lcom/jme3/scene/mesh/IndexByteBuffer;

    check-cast p0, Ljava/nio/ByteBuffer;

    invoke-direct {v0, p0}, Lcom/jme3/scene/mesh/IndexByteBuffer;-><init>(Ljava/nio/ByteBuffer;)V

    return-object v0

    :cond_0
    instance-of v0, p0, Ljava/nio/ShortBuffer;

    if-eqz v0, :cond_1

    new-instance v0, Lcom/jme3/scene/mesh/IndexShortBuffer;

    check-cast p0, Ljava/nio/ShortBuffer;

    invoke-direct {v0, p0}, Lcom/jme3/scene/mesh/IndexShortBuffer;-><init>(Ljava/nio/ShortBuffer;)V

    return-object v0

    :cond_1
    instance-of v0, p0, Ljava/nio/IntBuffer;

    if-eqz v0, :cond_2

    new-instance v0, Lcom/jme3/scene/mesh/IndexIntBuffer;

    check-cast p0, Ljava/nio/IntBuffer;

    invoke-direct {v0, p0}, Lcom/jme3/scene/mesh/IndexIntBuffer;-><init>(Ljava/nio/IntBuffer;)V

    return-object v0

    :cond_2
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Index buffer type unsupported: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public abstract get()I
.end method

.method public abstract get(I)I
.end method

.method public abstract getBuffer()Ljava/nio/Buffer;
.end method

.method public abstract getFormat()Lcom/jme3/scene/VertexBuffer$Format;
.end method

.method public abstract put(I)Lcom/jme3/scene/mesh/IndexBuffer;
.end method

.method public abstract put(II)Lcom/jme3/scene/mesh/IndexBuffer;
.end method

.method public remaining()I
    .locals 1

    invoke-virtual {p0}, Lcom/jme3/scene/mesh/IndexBuffer;->getBuffer()Ljava/nio/Buffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/Buffer;->remaining()I

    move-result v0

    return v0
.end method

.method public rewind()V
    .locals 1

    invoke-virtual {p0}, Lcom/jme3/scene/mesh/IndexBuffer;->getBuffer()Ljava/nio/Buffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/Buffer;->rewind()Ljava/nio/Buffer;

    return-void
.end method

.method public abstract size()I
.end method
