.class public Lcom/jme3/scene/mesh/WrappedIndexBuffer;
.super Lcom/jme3/scene/mesh/VirtualIndexBuffer;
.source "SourceFile"


# instance fields
.field private final ib:Lcom/jme3/scene/mesh/IndexBuffer;


# direct methods
.method public constructor <init>(Lcom/jme3/scene/Mesh;)V
    .locals 2

    invoke-virtual {p1}, Lcom/jme3/scene/Mesh;->getVertexCount()I

    move-result v0

    invoke-virtual {p1}, Lcom/jme3/scene/Mesh;->getMode()Lcom/jme3/scene/Mesh$Mode;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/jme3/scene/mesh/VirtualIndexBuffer;-><init>(ILcom/jme3/scene/Mesh$Mode;)V

    invoke-virtual {p1}, Lcom/jme3/scene/Mesh;->getIndexBuffer()Lcom/jme3/scene/mesh/IndexBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/jme3/scene/mesh/WrappedIndexBuffer;->ib:Lcom/jme3/scene/mesh/IndexBuffer;

    sget-object v0, Lcom/jme3/scene/mesh/WrappedIndexBuffer$1;->$SwitchMap$com$jme3$scene$Mesh$Mode:[I

    iget-object v1, p0, Lcom/jme3/scene/mesh/VirtualIndexBuffer;->meshMode:Lcom/jme3/scene/Mesh$Mode;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_0
    invoke-virtual {p1}, Lcom/jme3/scene/Mesh;->getTriangleCount()I

    move-result p1

    mul-int/lit8 p1, p1, 0x3

    iput p1, p0, Lcom/jme3/scene/mesh/VirtualIndexBuffer;->numIndices:I

    goto :goto_0

    :pswitch_1
    invoke-virtual {p1}, Lcom/jme3/scene/Mesh;->getTriangleCount()I

    move-result p1

    mul-int/lit8 p1, p1, 0x2

    iput p1, p0, Lcom/jme3/scene/mesh/VirtualIndexBuffer;->numIndices:I

    goto :goto_0

    :pswitch_2
    invoke-virtual {p1}, Lcom/jme3/scene/Mesh;->getTriangleCount()I

    move-result p1

    iput p1, p0, Lcom/jme3/scene/mesh/VirtualIndexBuffer;->numIndices:I

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public static convertToList(Lcom/jme3/scene/Mesh;)V
    .locals 5

    invoke-virtual {p0}, Lcom/jme3/scene/Mesh;->getIndicesAsList()Lcom/jme3/scene/mesh/IndexBuffer;

    move-result-object v0

    invoke-virtual {p0}, Lcom/jme3/scene/Mesh;->getVertexCount()I

    move-result v1

    invoke-virtual {v0}, Lcom/jme3/scene/mesh/IndexBuffer;->size()I

    move-result v2

    invoke-static {v1, v2}, Lcom/jme3/scene/mesh/IndexBuffer;->createIndexBuffer(II)Lcom/jme3/scene/mesh/IndexBuffer;

    move-result-object v1

    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v0}, Lcom/jme3/scene/mesh/IndexBuffer;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    invoke-virtual {v0, v2}, Lcom/jme3/scene/mesh/IndexBuffer;->get(I)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/jme3/scene/mesh/IndexBuffer;->put(II)Lcom/jme3/scene/mesh/IndexBuffer;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/jme3/scene/VertexBuffer$Type;->Index:Lcom/jme3/scene/VertexBuffer$Type;

    invoke-virtual {p0, v0}, Lcom/jme3/scene/Mesh;->clearBuffer(Lcom/jme3/scene/VertexBuffer$Type;)V

    sget-object v2, Lcom/jme3/scene/mesh/WrappedIndexBuffer$1;->$SwitchMap$com$jme3$scene$Mesh$Mode:[I

    invoke-virtual {p0}, Lcom/jme3/scene/Mesh;->getMode()Lcom/jme3/scene/Mesh$Mode;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aget v2, v2, v3

    const/4 v3, 0x3

    if-eq v2, v3, :cond_2

    const/4 v4, 0x4

    if-eq v2, v4, :cond_2

    const/4 v4, 0x6

    if-eq v2, v4, :cond_1

    const/4 v4, 0x7

    if-eq v2, v4, :cond_1

    goto :goto_1

    :cond_1
    sget-object v2, Lcom/jme3/scene/Mesh$Mode;->Triangles:Lcom/jme3/scene/Mesh$Mode;

    invoke-virtual {p0, v2}, Lcom/jme3/scene/Mesh;->setMode(Lcom/jme3/scene/Mesh$Mode;)V

    goto :goto_1

    :cond_2
    sget-object v2, Lcom/jme3/scene/Mesh$Mode;->Lines:Lcom/jme3/scene/Mesh$Mode;

    invoke-virtual {p0, v2}, Lcom/jme3/scene/Mesh;->setMode(Lcom/jme3/scene/Mesh$Mode;)V

    :goto_1
    invoke-virtual {v1}, Lcom/jme3/scene/mesh/IndexBuffer;->getFormat()Lcom/jme3/scene/VertexBuffer$Format;

    move-result-object v2

    invoke-virtual {v1}, Lcom/jme3/scene/mesh/IndexBuffer;->getBuffer()Ljava/nio/Buffer;

    move-result-object v1

    invoke-virtual {p0, v0, v3, v2, v1}, Lcom/jme3/scene/Mesh;->setBuffer(Lcom/jme3/scene/VertexBuffer$Type;ILcom/jme3/scene/VertexBuffer$Format;Ljava/nio/Buffer;)V

    return-void
.end method


# virtual methods
.method public get(I)I
    .locals 1

    invoke-super {p0, p1}, Lcom/jme3/scene/mesh/VirtualIndexBuffer;->get(I)I

    move-result p1

    iget-object v0, p0, Lcom/jme3/scene/mesh/WrappedIndexBuffer;->ib:Lcom/jme3/scene/mesh/IndexBuffer;

    invoke-virtual {v0, p1}, Lcom/jme3/scene/mesh/IndexBuffer;->get(I)I

    move-result p1

    return p1
.end method

.method public getBuffer()Ljava/nio/Buffer;
    .locals 1

    iget-object v0, p0, Lcom/jme3/scene/mesh/WrappedIndexBuffer;->ib:Lcom/jme3/scene/mesh/IndexBuffer;

    invoke-virtual {v0}, Lcom/jme3/scene/mesh/IndexBuffer;->getBuffer()Ljava/nio/Buffer;

    move-result-object v0

    return-object v0
.end method
