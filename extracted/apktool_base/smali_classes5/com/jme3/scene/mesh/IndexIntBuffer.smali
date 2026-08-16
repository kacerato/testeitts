.class public Lcom/jme3/scene/mesh/IndexIntBuffer;
.super Lcom/jme3/scene/mesh/IndexBuffer;
.source "SourceFile"


# instance fields
.field private final buf:Ljava/nio/IntBuffer;


# direct methods
.method public constructor <init>(Ljava/nio/IntBuffer;)V
    .locals 0

    invoke-direct {p0}, Lcom/jme3/scene/mesh/IndexBuffer;-><init>()V

    iput-object p1, p0, Lcom/jme3/scene/mesh/IndexIntBuffer;->buf:Ljava/nio/IntBuffer;

    invoke-virtual {p1}, Ljava/nio/IntBuffer;->rewind()Ljava/nio/Buffer;

    return-void
.end method


# virtual methods
.method public get()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/jme3/scene/mesh/IndexIntBuffer;->buf:Ljava/nio/IntBuffer;

    invoke-virtual {v0}, Ljava/nio/IntBuffer;->get()I

    move-result v0

    return v0
.end method

.method public get(I)I
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/jme3/scene/mesh/IndexIntBuffer;->buf:Ljava/nio/IntBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/IntBuffer;->get(I)I

    move-result p1

    return p1
.end method

.method public getBuffer()Ljava/nio/Buffer;
    .locals 1

    iget-object v0, p0, Lcom/jme3/scene/mesh/IndexIntBuffer;->buf:Ljava/nio/IntBuffer;

    return-object v0
.end method

.method public getFormat()Lcom/jme3/scene/VertexBuffer$Format;
    .locals 1

    sget-object v0, Lcom/jme3/scene/VertexBuffer$Format;->UnsignedInt:Lcom/jme3/scene/VertexBuffer$Format;

    return-object v0
.end method

.method public bridge synthetic put(I)Lcom/jme3/scene/mesh/IndexBuffer;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/jme3/scene/mesh/IndexIntBuffer;->put(I)Lcom/jme3/scene/mesh/IndexIntBuffer;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic put(II)Lcom/jme3/scene/mesh/IndexBuffer;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 2
    invoke-virtual {p0, p1, p2}, Lcom/jme3/scene/mesh/IndexIntBuffer;->put(II)Lcom/jme3/scene/mesh/IndexIntBuffer;

    move-result-object p1

    return-object p1
.end method

.method public put(I)Lcom/jme3/scene/mesh/IndexIntBuffer;
    .locals 1

    .line 4
    iget-object v0, p0, Lcom/jme3/scene/mesh/IndexIntBuffer;->buf:Ljava/nio/IntBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/IntBuffer;->put(I)Ljava/nio/IntBuffer;

    return-object p0
.end method

.method public put(II)Lcom/jme3/scene/mesh/IndexIntBuffer;
    .locals 1

    .line 3
    iget-object v0, p0, Lcom/jme3/scene/mesh/IndexIntBuffer;->buf:Ljava/nio/IntBuffer;

    invoke-virtual {v0, p1, p2}, Ljava/nio/IntBuffer;->put(II)Ljava/nio/IntBuffer;

    return-object p0
.end method

.method public size()I
    .locals 1

    iget-object v0, p0, Lcom/jme3/scene/mesh/IndexIntBuffer;->buf:Ljava/nio/IntBuffer;

    invoke-virtual {v0}, Ljava/nio/Buffer;->limit()I

    move-result v0

    return v0
.end method
