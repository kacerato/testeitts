.class public abstract Lcom/ardor3d/scenegraph/IndexBufferData;
.super Lcom/ardor3d/scenegraph/AbstractBufferData;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/nio/Buffer;",
        ">",
        "Lcom/ardor3d/scenegraph/AbstractBufferData<",
        "TT;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/ardor3d/scenegraph/AbstractBufferData;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract asIntBuffer()Ljava/nio/IntBuffer;
.end method

.method public capacity()I
    .locals 1

    invoke-virtual {p0}, Lcom/ardor3d/scenegraph/IndexBufferData;->getBuffer()Ljava/nio/Buffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/Buffer;->capacity()I

    move-result v0

    return v0
.end method

.method public abstract get()I
.end method

.method public abstract get(I)I
.end method

.method public abstract getBuffer()Ljava/nio/Buffer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation
.end method

.method public abstract getByteCount()I
.end method

.method public limit()I
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/ardor3d/scenegraph/IndexBufferData;->getBuffer()Ljava/nio/Buffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/Buffer;->limit()I

    move-result v0

    return v0
.end method

.method public limit(I)V
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/ardor3d/scenegraph/IndexBufferData;->getBuffer()Ljava/nio/Buffer;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/nio/Buffer;->limit(I)Ljava/nio/Buffer;

    return-void
.end method

.method public bridge synthetic makeCopy()Lcom/ardor3d/scenegraph/AbstractBufferData;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/ardor3d/scenegraph/IndexBufferData;->makeCopy()Lcom/ardor3d/scenegraph/IndexBufferData;

    move-result-object v0

    return-object v0
.end method

.method public abstract makeCopy()Lcom/ardor3d/scenegraph/IndexBufferData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/ardor3d/scenegraph/IndexBufferData<",
            "TT;>;"
        }
    .end annotation
.end method

.method public position()I
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/ardor3d/scenegraph/IndexBufferData;->getBuffer()Ljava/nio/Buffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/Buffer;->position()I

    move-result v0

    return v0
.end method

.method public position(I)V
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/ardor3d/scenegraph/IndexBufferData;->getBuffer()Ljava/nio/Buffer;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/nio/Buffer;->position(I)Ljava/nio/Buffer;

    return-void
.end method

.method public abstract put(I)Lcom/ardor3d/scenegraph/IndexBufferData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/ardor3d/scenegraph/IndexBufferData<",
            "TT;>;"
        }
    .end annotation
.end method

.method public abstract put(II)Lcom/ardor3d/scenegraph/IndexBufferData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Lcom/ardor3d/scenegraph/IndexBufferData<",
            "TT;>;"
        }
    .end annotation
.end method

.method public abstract put(Lcom/ardor3d/scenegraph/IndexBufferData;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ardor3d/scenegraph/IndexBufferData<",
            "*>;)V"
        }
    .end annotation
.end method

.method public remaining()I
    .locals 1

    invoke-virtual {p0}, Lcom/ardor3d/scenegraph/IndexBufferData;->getBuffer()Ljava/nio/Buffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/Buffer;->remaining()I

    move-result v0

    return v0
.end method

.method public reset()V
    .locals 1

    invoke-virtual {p0}, Lcom/ardor3d/scenegraph/IndexBufferData;->getBuffer()Ljava/nio/Buffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/Buffer;->reset()Ljava/nio/Buffer;

    return-void
.end method

.method public rewind()V
    .locals 1

    invoke-virtual {p0}, Lcom/ardor3d/scenegraph/IndexBufferData;->getBuffer()Ljava/nio/Buffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/Buffer;->rewind()Ljava/nio/Buffer;

    return-void
.end method
