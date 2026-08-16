.class public Lcom/jme3/scene/mesh/IndexShortBuffer;
.super Lcom/jme3/scene/mesh/IndexBuffer;
.source "SourceFile"


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private final buf:Ljava/nio/ShortBuffer;

.field private maxValue:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Ljava/nio/ShortBuffer;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/jme3/scene/mesh/IndexBuffer;-><init>()V

    const v0, 0xffff

    .line 2
    iput v0, p0, Lcom/jme3/scene/mesh/IndexShortBuffer;->maxValue:I

    .line 3
    iput-object p1, p0, Lcom/jme3/scene/mesh/IndexShortBuffer;->buf:Ljava/nio/ShortBuffer;

    .line 4
    invoke-virtual {p1}, Ljava/nio/ShortBuffer;->rewind()Ljava/nio/Buffer;

    return-void
.end method

.method public constructor <init>(Ljava/nio/ShortBuffer;I)V
    .locals 0

    .line 5
    invoke-direct {p0}, Lcom/jme3/scene/mesh/IndexBuffer;-><init>()V

    .line 6
    iput p2, p0, Lcom/jme3/scene/mesh/IndexShortBuffer;->maxValue:I

    .line 7
    iput-object p1, p0, Lcom/jme3/scene/mesh/IndexShortBuffer;->buf:Ljava/nio/ShortBuffer;

    .line 8
    invoke-virtual {p1}, Ljava/nio/ShortBuffer;->rewind()Ljava/nio/Buffer;

    return-void
.end method


# virtual methods
.method public get()I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/jme3/scene/mesh/IndexShortBuffer;->buf:Ljava/nio/ShortBuffer;

    invoke-virtual {v0}, Ljava/nio/ShortBuffer;->get()S

    move-result v0

    const v1, 0xffff

    and-int/2addr v0, v1

    return v0
.end method

.method public get(I)I
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/jme3/scene/mesh/IndexShortBuffer;->buf:Ljava/nio/ShortBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/ShortBuffer;->get(I)S

    move-result p1

    const v0, 0xffff

    and-int/2addr p1, v0

    return p1
.end method

.method public getBuffer()Ljava/nio/Buffer;
    .locals 1

    iget-object v0, p0, Lcom/jme3/scene/mesh/IndexShortBuffer;->buf:Ljava/nio/ShortBuffer;

    return-object v0
.end method

.method public getFormat()Lcom/jme3/scene/VertexBuffer$Format;
    .locals 1

    sget-object v0, Lcom/jme3/scene/VertexBuffer$Format;->UnsignedShort:Lcom/jme3/scene/VertexBuffer$Format;

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
    invoke-virtual {p0, p1}, Lcom/jme3/scene/mesh/IndexShortBuffer;->put(I)Lcom/jme3/scene/mesh/IndexShortBuffer;

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
    invoke-virtual {p0, p1, p2}, Lcom/jme3/scene/mesh/IndexShortBuffer;->put(II)Lcom/jme3/scene/mesh/IndexShortBuffer;

    move-result-object p1

    return-object p1
.end method

.method public put(I)Lcom/jme3/scene/mesh/IndexShortBuffer;
    .locals 1

    .line 4
    iget-object v0, p0, Lcom/jme3/scene/mesh/IndexShortBuffer;->buf:Ljava/nio/ShortBuffer;

    int-to-short p1, p1

    invoke-virtual {v0, p1}, Ljava/nio/ShortBuffer;->put(S)Ljava/nio/ShortBuffer;

    return-object p0
.end method

.method public put(II)Lcom/jme3/scene/mesh/IndexShortBuffer;
    .locals 1

    .line 3
    iget-object v0, p0, Lcom/jme3/scene/mesh/IndexShortBuffer;->buf:Ljava/nio/ShortBuffer;

    int-to-short p2, p2

    invoke-virtual {v0, p1, p2}, Ljava/nio/ShortBuffer;->put(IS)Ljava/nio/ShortBuffer;

    return-object p0
.end method

.method public size()I
    .locals 1

    iget-object v0, p0, Lcom/jme3/scene/mesh/IndexShortBuffer;->buf:Ljava/nio/ShortBuffer;

    invoke-virtual {v0}, Ljava/nio/Buffer;->limit()I

    move-result v0

    return v0
.end method
