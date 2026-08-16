.class public Lcom/jme3/scene/mesh/VirtualIndexBuffer;
.super Lcom/jme3/scene/mesh/IndexBuffer;
.source "SourceFile"


# instance fields
.field protected meshMode:Lcom/jme3/scene/Mesh$Mode;

.field protected numIndices:I

.field protected numVerts:I

.field protected position:I


# direct methods
.method public constructor <init>(ILcom/jme3/scene/Mesh$Mode;)V
    .locals 1

    invoke-direct {p0}, Lcom/jme3/scene/mesh/IndexBuffer;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/jme3/scene/mesh/VirtualIndexBuffer;->numIndices:I

    iput v0, p0, Lcom/jme3/scene/mesh/VirtualIndexBuffer;->position:I

    iput p1, p0, Lcom/jme3/scene/mesh/VirtualIndexBuffer;->numVerts:I

    iput-object p2, p0, Lcom/jme3/scene/mesh/VirtualIndexBuffer;->meshMode:Lcom/jme3/scene/Mesh$Mode;

    sget-object v0, Lcom/jme3/scene/mesh/VirtualIndexBuffer$1;->$SwitchMap$com$jme3$scene$Mesh$Mode:[I

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    aget p2, v0, p2

    packed-switch p2, :pswitch_data_0

    return-void

    :pswitch_0
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_1
    iput p1, p0, Lcom/jme3/scene/mesh/VirtualIndexBuffer;->numIndices:I

    return-void

    :pswitch_2
    add-int/lit8 p1, p1, -0x2

    mul-int/lit8 p1, p1, 0x3

    iput p1, p0, Lcom/jme3/scene/mesh/VirtualIndexBuffer;->numIndices:I

    return-void

    :pswitch_3
    add-int/lit8 p1, p1, -0x2

    mul-int/lit8 p1, p1, 0x3

    iput p1, p0, Lcom/jme3/scene/mesh/VirtualIndexBuffer;->numIndices:I

    return-void

    :pswitch_4
    iput p1, p0, Lcom/jme3/scene/mesh/VirtualIndexBuffer;->numIndices:I

    return-void

    :pswitch_5
    add-int/lit8 p1, p1, -0x1

    mul-int/lit8 p1, p1, 0x2

    iput p1, p0, Lcom/jme3/scene/mesh/VirtualIndexBuffer;->numIndices:I

    return-void

    :pswitch_6
    mul-int/lit8 p1, p1, 0x2

    iput p1, p0, Lcom/jme3/scene/mesh/VirtualIndexBuffer;->numIndices:I

    return-void

    :pswitch_7
    iput p1, p0, Lcom/jme3/scene/mesh/VirtualIndexBuffer;->numIndices:I

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public get()I
    .locals 2

    .line 1
    iget v0, p0, Lcom/jme3/scene/mesh/VirtualIndexBuffer;->position:I

    invoke-virtual {p0, v0}, Lcom/jme3/scene/mesh/VirtualIndexBuffer;->get(I)I

    move-result v0

    .line 2
    iget v1, p0, Lcom/jme3/scene/mesh/VirtualIndexBuffer;->position:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/jme3/scene/mesh/VirtualIndexBuffer;->position:I

    return v0
.end method

.method public get(I)I
    .locals 5

    .line 3
    iget-object v0, p0, Lcom/jme3/scene/mesh/VirtualIndexBuffer;->meshMode:Lcom/jme3/scene/Mesh$Mode;

    sget-object v1, Lcom/jme3/scene/Mesh$Mode;->Triangles:Lcom/jme3/scene/Mesh$Mode;

    if-eq v0, v1, :cond_b

    sget-object v1, Lcom/jme3/scene/Mesh$Mode;->Lines:Lcom/jme3/scene/Mesh$Mode;

    if-eq v0, v1, :cond_b

    sget-object v1, Lcom/jme3/scene/Mesh$Mode;->Points:Lcom/jme3/scene/Mesh$Mode;

    if-ne v0, v1, :cond_0

    goto :goto_1

    .line 4
    :cond_0
    sget-object v1, Lcom/jme3/scene/Mesh$Mode;->LineStrip:Lcom/jme3/scene/Mesh$Mode;

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-ne v0, v1, :cond_1

    add-int/2addr p1, v3

    .line 5
    div-int/2addr p1, v2

    return p1

    .line 6
    :cond_1
    sget-object v1, Lcom/jme3/scene/Mesh$Mode;->LineLoop:Lcom/jme3/scene/Mesh$Mode;

    const/4 v4, 0x0

    if-ne v0, v1, :cond_3

    .line 7
    iget v0, p0, Lcom/jme3/scene/mesh/VirtualIndexBuffer;->numIndices:I

    sub-int/2addr v0, v3

    if-ne p1, v0, :cond_2

    goto :goto_0

    :cond_2
    add-int/2addr p1, v3

    div-int/lit8 v4, p1, 0x2

    :goto_0
    return v4

    .line 8
    :cond_3
    sget-object v1, Lcom/jme3/scene/Mesh$Mode;->TriangleStrip:Lcom/jme3/scene/Mesh$Mode;

    if-ne v0, v1, :cond_8

    .line 9
    div-int/lit8 v0, p1, 0x3

    .line 10
    rem-int/lit8 p1, p1, 0x3

    .line 11
    rem-int/lit8 v1, v0, 0x2

    if-ne v1, v3, :cond_7

    if-eqz p1, :cond_6

    if-eq p1, v3, :cond_5

    if-ne p1, v2, :cond_4

    add-int/2addr v0, v2

    return v0

    .line 12
    :cond_4
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_5
    return v0

    :cond_6
    add-int/2addr v0, v3

    return v0

    :cond_7
    add-int/2addr v0, p1

    return v0

    .line 13
    :cond_8
    sget-object v1, Lcom/jme3/scene/Mesh$Mode;->TriangleFan:Lcom/jme3/scene/Mesh$Mode;

    if-ne v0, v1, :cond_a

    .line 14
    rem-int/lit8 v0, p1, 0x3

    if-nez v0, :cond_9

    return v4

    .line 15
    :cond_9
    div-int/lit8 p1, p1, 0x3

    add-int/2addr p1, v0

    return p1

    .line 16
    :cond_a
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :cond_b
    :goto_1
    return p1
.end method

.method public getBuffer()Ljava/nio/Buffer;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getFormat()Lcom/jme3/scene/VertexBuffer$Format;
    .locals 1

    sget-object v0, Lcom/jme3/scene/VertexBuffer$Format;->UnsignedInt:Lcom/jme3/scene/VertexBuffer$Format;

    return-object v0
.end method

.method public put(I)Lcom/jme3/scene/mesh/IndexBuffer;
    .locals 1

    .line 2
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Does not represent index buffer"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public put(II)Lcom/jme3/scene/mesh/IndexBuffer;
    .locals 0

    .line 1
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "Does not represent index buffer"

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public remaining()I
    .locals 2

    iget v0, p0, Lcom/jme3/scene/mesh/VirtualIndexBuffer;->numIndices:I

    iget v1, p0, Lcom/jme3/scene/mesh/VirtualIndexBuffer;->position:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public rewind()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/jme3/scene/mesh/VirtualIndexBuffer;->position:I

    return-void
.end method

.method public size()I
    .locals 1

    iget v0, p0, Lcom/jme3/scene/mesh/VirtualIndexBuffer;->numIndices:I

    return v0
.end method
