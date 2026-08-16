.class public Lcom/ardor3d/scenegraph/ShortBufferData;
.super Lcom/ardor3d/scenegraph/IndexBufferData;
.source "SourceFile"

# interfaces
.implements Lcom/ardor3d/util/export/Savable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/ardor3d/scenegraph/IndexBufferData<",
        "Ljava/nio/ShortBuffer;",
        ">;",
        "Lcom/ardor3d/util/export/Savable;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/ardor3d/scenegraph/IndexBufferData;-><init>()V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    .line 2
    invoke-static {p1}, Lcom/ardor3d/util/geom/BufferUtils;->createShortBuffer(I)Ljava/nio/ShortBuffer;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/ardor3d/scenegraph/ShortBufferData;-><init>(Ljava/nio/ShortBuffer;)V

    return-void
.end method

.method public constructor <init>(Ljava/nio/ShortBuffer;)V
    .locals 1

    .line 3
    invoke-direct {p0}, Lcom/ardor3d/scenegraph/IndexBufferData;-><init>()V

    if-eqz p1, :cond_0

    .line 4
    iput-object p1, p0, Lcom/ardor3d/scenegraph/AbstractBufferData;->_buffer:Ljava/nio/Buffer;

    return-void

    .line 5
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Buffer can not be null!"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public asIntBuffer()Ljava/nio/IntBuffer;
    .locals 6

    invoke-virtual {p0}, Lcom/ardor3d/scenegraph/ShortBufferData;->getBuffer()Ljava/nio/ShortBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ShortBuffer;->duplicate()Ljava/nio/ShortBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ShortBuffer;->rewind()Ljava/nio/Buffer;

    invoke-virtual {v0}, Ljava/nio/Buffer;->limit()I

    move-result v1

    invoke-static {v1}, Lcom/ardor3d/util/geom/BufferUtils;->createIntBufferOnHeap(I)Ljava/nio/IntBuffer;

    move-result-object v1

    invoke-virtual {v0}, Ljava/nio/Buffer;->limit()I

    move-result v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    invoke-virtual {v0}, Ljava/nio/ShortBuffer;->get()S

    move-result v4

    const v5, 0xffff

    and-int/2addr v4, v5

    invoke-virtual {v1, v4}, Ljava/nio/IntBuffer;->put(I)Ljava/nio/IntBuffer;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/nio/IntBuffer;->flip()Ljava/nio/Buffer;

    return-object v1
.end method

.method public get()I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/ardor3d/scenegraph/AbstractBufferData;->_buffer:Ljava/nio/Buffer;

    check-cast v0, Ljava/nio/ShortBuffer;

    invoke-virtual {v0}, Ljava/nio/ShortBuffer;->get()S

    move-result v0

    const v1, 0xffff

    and-int/2addr v0, v1

    return v0
.end method

.method public get(I)I
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/ardor3d/scenegraph/AbstractBufferData;->_buffer:Ljava/nio/Buffer;

    check-cast v0, Ljava/nio/ShortBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/ShortBuffer;->get(I)S

    move-result p1

    const v0, 0xffff

    and-int/2addr p1, v0

    return p1
.end method

.method public bridge synthetic getBuffer()Ljava/nio/Buffer;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/ardor3d/scenegraph/ShortBufferData;->getBuffer()Ljava/nio/ShortBuffer;

    move-result-object v0

    return-object v0
.end method

.method public getBuffer()Ljava/nio/ShortBuffer;
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/ardor3d/scenegraph/AbstractBufferData;->_buffer:Ljava/nio/Buffer;

    check-cast v0, Ljava/nio/ShortBuffer;

    return-object v0
.end method

.method public getByteCount()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method

.method public getClassTag()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "+",
            "Lcom/ardor3d/scenegraph/ShortBufferData;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic makeCopy()Lcom/ardor3d/scenegraph/AbstractBufferData;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/ardor3d/scenegraph/ShortBufferData;->makeCopy()Lcom/ardor3d/scenegraph/ShortBufferData;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic makeCopy()Lcom/ardor3d/scenegraph/IndexBufferData;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/ardor3d/scenegraph/ShortBufferData;->makeCopy()Lcom/ardor3d/scenegraph/ShortBufferData;

    move-result-object v0

    return-object v0
.end method

.method public makeCopy()Lcom/ardor3d/scenegraph/ShortBufferData;
    .locals 2

    .line 3
    new-instance v0, Lcom/ardor3d/scenegraph/ShortBufferData;

    invoke-direct {v0}, Lcom/ardor3d/scenegraph/ShortBufferData;-><init>()V

    .line 4
    iget-object v1, p0, Lcom/ardor3d/scenegraph/AbstractBufferData;->_buffer:Ljava/nio/Buffer;

    check-cast v1, Ljava/nio/ShortBuffer;

    invoke-static {v1}, Lcom/ardor3d/util/geom/BufferUtils;->clone(Ljava/nio/ShortBuffer;)Ljava/nio/ShortBuffer;

    move-result-object v1

    iput-object v1, v0, Lcom/ardor3d/scenegraph/AbstractBufferData;->_buffer:Ljava/nio/Buffer;

    .line 5
    iget-object v1, p0, Lcom/ardor3d/scenegraph/AbstractBufferData;->_vboAccessMode:Lcom/ardor3d/scenegraph/AbstractBufferData$VBOAccessMode;

    iput-object v1, v0, Lcom/ardor3d/scenegraph/AbstractBufferData;->_vboAccessMode:Lcom/ardor3d/scenegraph/AbstractBufferData$VBOAccessMode;

    return-object v0
.end method

.method public bridge synthetic put(I)Lcom/ardor3d/scenegraph/IndexBufferData;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/ardor3d/scenegraph/ShortBufferData;->put(I)Lcom/ardor3d/scenegraph/ShortBufferData;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic put(II)Lcom/ardor3d/scenegraph/IndexBufferData;
    .locals 0

    .line 2
    invoke-virtual {p0, p1, p2}, Lcom/ardor3d/scenegraph/ShortBufferData;->put(II)Lcom/ardor3d/scenegraph/ShortBufferData;

    move-result-object p1

    return-object p1
.end method

.method public put(I)Lcom/ardor3d/scenegraph/ShortBufferData;
    .locals 3

    if-ltz p1, :cond_0

    const/high16 v0, 0x10000

    if-ge p1, v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/ardor3d/scenegraph/AbstractBufferData;->_buffer:Ljava/nio/Buffer;

    check-cast v0, Ljava/nio/ShortBuffer;

    int-to-short p1, p1

    invoke-virtual {v0, p1}, Ljava/nio/ShortBuffer;->put(S)Ljava/nio/ShortBuffer;

    return-object p0

    .line 4
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid value passed to short buffer: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public put(II)Lcom/ardor3d/scenegraph/ShortBufferData;
    .locals 2

    if-ltz p2, :cond_0

    const/high16 v0, 0x10000

    if-ge p2, v0, :cond_0

    .line 5
    iget-object v0, p0, Lcom/ardor3d/scenegraph/AbstractBufferData;->_buffer:Ljava/nio/Buffer;

    check-cast v0, Ljava/nio/ShortBuffer;

    int-to-short p2, p2

    invoke-virtual {v0, p1, p2}, Ljava/nio/ShortBuffer;->put(IS)Ljava/nio/ShortBuffer;

    return-object p0

    .line 6
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid value passed to short buffer: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public put(Lcom/ardor3d/scenegraph/IndexBufferData;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ardor3d/scenegraph/IndexBufferData<",
            "*>;)V"
        }
    .end annotation

    .line 7
    instance-of v0, p1, Lcom/ardor3d/scenegraph/ShortBufferData;

    if-eqz v0, :cond_0

    .line 8
    iget-object v0, p0, Lcom/ardor3d/scenegraph/AbstractBufferData;->_buffer:Ljava/nio/Buffer;

    check-cast v0, Ljava/nio/ShortBuffer;

    invoke-virtual {p1}, Lcom/ardor3d/scenegraph/IndexBufferData;->getBuffer()Ljava/nio/Buffer;

    move-result-object p1

    check-cast p1, Ljava/nio/ShortBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/ShortBuffer;->put(Ljava/nio/ShortBuffer;)Ljava/nio/ShortBuffer;

    goto :goto_1

    .line 9
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/ardor3d/scenegraph/IndexBufferData;->getBuffer()Ljava/nio/Buffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/Buffer;->hasRemaining()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 10
    invoke-virtual {p1}, Lcom/ardor3d/scenegraph/IndexBufferData;->get()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/ardor3d/scenegraph/ShortBufferData;->put(I)Lcom/ardor3d/scenegraph/ShortBufferData;

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method public read(Lcom/ardor3d/util/export/InputCapsule;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-super {p0, p1}, Lcom/ardor3d/scenegraph/AbstractBufferData;->read(Lcom/ardor3d/util/export/InputCapsule;)V

    const-string v0, "buffer"

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Lcom/ardor3d/util/export/InputCapsule;->readShortBuffer(Ljava/lang/String;Ljava/nio/ShortBuffer;)Ljava/nio/ShortBuffer;

    move-result-object p1

    iput-object p1, p0, Lcom/ardor3d/scenegraph/AbstractBufferData;->_buffer:Ljava/nio/Buffer;

    return-void
.end method

.method public write(Lcom/ardor3d/util/export/OutputCapsule;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-super {p0, p1}, Lcom/ardor3d/scenegraph/AbstractBufferData;->write(Lcom/ardor3d/util/export/OutputCapsule;)V

    iget-object v0, p0, Lcom/ardor3d/scenegraph/AbstractBufferData;->_buffer:Ljava/nio/Buffer;

    check-cast v0, Ljava/nio/ShortBuffer;

    const-string v1, "buffer"

    const/4 v2, 0x0

    invoke-interface {p1, v0, v1, v2}, Lcom/ardor3d/util/export/OutputCapsule;->write(Ljava/nio/ShortBuffer;Ljava/lang/String;Ljava/nio/ShortBuffer;)V

    return-void
.end method
