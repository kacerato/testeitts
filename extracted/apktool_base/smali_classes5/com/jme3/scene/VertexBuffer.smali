.class public Lcom/jme3/scene/VertexBuffer;
.super Lcom/jme3/util/NativeObject;
.source "SourceFile"

# interfaces
.implements Lcom/jme3/export/Savable;
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jme3/scene/VertexBuffer$Type;,
        Lcom/jme3/scene/VertexBuffer$Usage;,
        Lcom/jme3/scene/VertexBuffer$Format;
    }
.end annotation


# instance fields
.field protected bufType:Lcom/jme3/scene/VertexBuffer$Type;

.field protected components:I

.field protected transient componentsLength:I

.field protected data:Ljava/nio/Buffer;

.field protected transient dataSizeChanged:Z

.field protected format:Lcom/jme3/scene/VertexBuffer$Format;

.field protected instanceSpan:I

.field protected lastLimit:I

.field protected name:Ljava/lang/String;

.field protected normalized:Z

.field protected offset:I

.field protected stride:I

.field protected usage:Lcom/jme3/scene/VertexBuffer$Usage;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 12
    invoke-direct {p0}, Lcom/jme3/util/NativeObject;-><init>()V

    const/4 v0, 0x0

    .line 13
    iput v0, p0, Lcom/jme3/scene/VertexBuffer;->offset:I

    .line 14
    iput v0, p0, Lcom/jme3/scene/VertexBuffer;->lastLimit:I

    .line 15
    iput v0, p0, Lcom/jme3/scene/VertexBuffer;->stride:I

    .line 16
    iput v0, p0, Lcom/jme3/scene/VertexBuffer;->components:I

    .line 17
    iput v0, p0, Lcom/jme3/scene/VertexBuffer;->componentsLength:I

    const/4 v1, 0x0

    .line 18
    iput-object v1, p0, Lcom/jme3/scene/VertexBuffer;->data:Ljava/nio/Buffer;

    .line 19
    iput-boolean v0, p0, Lcom/jme3/scene/VertexBuffer;->normalized:Z

    .line 20
    iput v0, p0, Lcom/jme3/scene/VertexBuffer;->instanceSpan:I

    .line 21
    iput-boolean v0, p0, Lcom/jme3/scene/VertexBuffer;->dataSizeChanged:Z

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    .line 22
    invoke-direct {p0, p1}, Lcom/jme3/util/NativeObject;-><init>(I)V

    const/4 p1, 0x0

    .line 23
    iput p1, p0, Lcom/jme3/scene/VertexBuffer;->offset:I

    .line 24
    iput p1, p0, Lcom/jme3/scene/VertexBuffer;->lastLimit:I

    .line 25
    iput p1, p0, Lcom/jme3/scene/VertexBuffer;->stride:I

    .line 26
    iput p1, p0, Lcom/jme3/scene/VertexBuffer;->components:I

    .line 27
    iput p1, p0, Lcom/jme3/scene/VertexBuffer;->componentsLength:I

    const/4 v0, 0x0

    .line 28
    iput-object v0, p0, Lcom/jme3/scene/VertexBuffer;->data:Ljava/nio/Buffer;

    .line 29
    iput-boolean p1, p0, Lcom/jme3/scene/VertexBuffer;->normalized:Z

    .line 30
    iput p1, p0, Lcom/jme3/scene/VertexBuffer;->instanceSpan:I

    .line 31
    iput-boolean p1, p0, Lcom/jme3/scene/VertexBuffer;->dataSizeChanged:Z

    return-void
.end method

.method public constructor <init>(Lcom/jme3/scene/VertexBuffer$Type;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/jme3/util/NativeObject;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/jme3/scene/VertexBuffer;->offset:I

    .line 3
    iput v0, p0, Lcom/jme3/scene/VertexBuffer;->lastLimit:I

    .line 4
    iput v0, p0, Lcom/jme3/scene/VertexBuffer;->stride:I

    .line 5
    iput v0, p0, Lcom/jme3/scene/VertexBuffer;->components:I

    .line 6
    iput v0, p0, Lcom/jme3/scene/VertexBuffer;->componentsLength:I

    const/4 v1, 0x0

    .line 7
    iput-object v1, p0, Lcom/jme3/scene/VertexBuffer;->data:Ljava/nio/Buffer;

    .line 8
    iput-boolean v0, p0, Lcom/jme3/scene/VertexBuffer;->normalized:Z

    .line 9
    iput v0, p0, Lcom/jme3/scene/VertexBuffer;->instanceSpan:I

    .line 10
    iput-boolean v0, p0, Lcom/jme3/scene/VertexBuffer;->dataSizeChanged:Z

    .line 11
    iput-object p1, p0, Lcom/jme3/scene/VertexBuffer;->bufType:Lcom/jme3/scene/VertexBuffer$Type;

    return-void
.end method

.method public static createBuffer(Lcom/jme3/scene/VertexBuffer$Format;II)Ljava/nio/Buffer;
    .locals 1

    const/4 v0, 0x1

    if-lt p1, v0, :cond_0

    const/4 v0, 0x4

    if-gt p1, v0, :cond_0

    mul-int/2addr p2, p1

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    packed-switch p1, :pswitch_data_0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unrecognized buffer format: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_0
    invoke-static {p2}, Lcom/jme3/util/BufferUtils;->createIntBuffer(I)Ljava/nio/IntBuffer;

    move-result-object p0

    return-object p0

    :pswitch_1
    invoke-static {p2}, Lcom/jme3/util/BufferUtils;->createShortBuffer(I)Ljava/nio/ShortBuffer;

    move-result-object p0

    return-object p0

    :pswitch_2
    invoke-static {p2}, Lcom/jme3/util/BufferUtils;->createByteBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object p0

    return-object p0

    :pswitch_3
    invoke-static {p2}, Lcom/jme3/util/BufferUtils;->createDoubleBuffer(I)Ljava/nio/DoubleBuffer;

    move-result-object p0

    return-object p0

    :pswitch_4
    invoke-static {p2}, Lcom/jme3/util/BufferUtils;->createFloatBuffer(I)Ljava/nio/FloatBuffer;

    move-result-object p0

    return-object p0

    :pswitch_5
    mul-int/lit8 p2, p2, 0x2

    invoke-static {p2}, Lcom/jme3/util/BufferUtils;->createByteBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Num components must be between 1 and 4"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public clearUpdateNeeded()V
    .locals 1

    invoke-super {p0}, Lcom/jme3/util/NativeObject;->clearUpdateNeeded()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/jme3/scene/VertexBuffer;->dataSizeChanged:Z

    return-void
.end method

.method public clone()Lcom/jme3/scene/VertexBuffer;
    .locals 2

    .line 3
    invoke-super {p0}, Lcom/jme3/util/NativeObject;->clone()Lcom/jme3/util/NativeObject;

    move-result-object v0

    check-cast v0, Lcom/jme3/scene/VertexBuffer;

    .line 4
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, v0, Lcom/jme3/util/NativeObject;->handleRef:Ljava/lang/Object;

    const/4 v1, -0x1

    .line 5
    iput v1, v0, Lcom/jme3/util/NativeObject;->id:I

    .line 6
    iget-object v1, p0, Lcom/jme3/scene/VertexBuffer;->data:Ljava/nio/Buffer;

    if-eqz v1, :cond_0

    .line 7
    invoke-virtual {p0}, Lcom/jme3/scene/VertexBuffer;->getDataReadOnly()Ljava/nio/Buffer;

    move-result-object v1

    invoke-static {v1}, Lcom/jme3/util/BufferUtils;->clone(Ljava/nio/Buffer;)Ljava/nio/Buffer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/jme3/scene/VertexBuffer;->updateData(Ljava/nio/Buffer;)V

    :cond_0
    return-object v0
.end method

.method public clone(Lcom/jme3/scene/VertexBuffer$Type;)Lcom/jme3/scene/VertexBuffer;
    .locals 1

    .line 8
    new-instance v0, Lcom/jme3/scene/VertexBuffer;

    invoke-direct {v0, p1}, Lcom/jme3/scene/VertexBuffer;-><init>(Lcom/jme3/scene/VertexBuffer$Type;)V

    .line 9
    iget p1, p0, Lcom/jme3/scene/VertexBuffer;->components:I

    iput p1, v0, Lcom/jme3/scene/VertexBuffer;->components:I

    .line 10
    iget p1, p0, Lcom/jme3/scene/VertexBuffer;->componentsLength:I

    iput p1, v0, Lcom/jme3/scene/VertexBuffer;->componentsLength:I

    .line 11
    invoke-virtual {p0}, Lcom/jme3/scene/VertexBuffer;->getDataReadOnly()Ljava/nio/Buffer;

    move-result-object p1

    invoke-static {p1}, Lcom/jme3/util/BufferUtils;->clone(Ljava/nio/Buffer;)Ljava/nio/Buffer;

    move-result-object p1

    iput-object p1, v0, Lcom/jme3/scene/VertexBuffer;->data:Ljava/nio/Buffer;

    .line 12
    iget-object p1, p0, Lcom/jme3/scene/VertexBuffer;->format:Lcom/jme3/scene/VertexBuffer$Format;

    iput-object p1, v0, Lcom/jme3/scene/VertexBuffer;->format:Lcom/jme3/scene/VertexBuffer$Format;

    .line 13
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, v0, Lcom/jme3/util/NativeObject;->handleRef:Ljava/lang/Object;

    const/4 p1, -0x1

    .line 14
    iput p1, v0, Lcom/jme3/util/NativeObject;->id:I

    .line 15
    iget-boolean p1, p0, Lcom/jme3/scene/VertexBuffer;->normalized:Z

    iput-boolean p1, v0, Lcom/jme3/scene/VertexBuffer;->normalized:Z

    .line 16
    iget p1, p0, Lcom/jme3/scene/VertexBuffer;->instanceSpan:I

    iput p1, v0, Lcom/jme3/scene/VertexBuffer;->instanceSpan:I

    .line 17
    iget p1, p0, Lcom/jme3/scene/VertexBuffer;->offset:I

    iput p1, v0, Lcom/jme3/scene/VertexBuffer;->offset:I

    .line 18
    iget p1, p0, Lcom/jme3/scene/VertexBuffer;->stride:I

    iput p1, v0, Lcom/jme3/scene/VertexBuffer;->stride:I

    const/4 p1, 0x1

    .line 19
    iput-boolean p1, v0, Lcom/jme3/util/NativeObject;->updateNeeded:Z

    .line 20
    iget-object p1, p0, Lcom/jme3/scene/VertexBuffer;->usage:Lcom/jme3/scene/VertexBuffer$Usage;

    iput-object p1, v0, Lcom/jme3/scene/VertexBuffer;->usage:Lcom/jme3/scene/VertexBuffer$Usage;

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/jme3/util/NativeObject;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/jme3/scene/VertexBuffer;->clone()Lcom/jme3/scene/VertexBuffer;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 2
    invoke-virtual {p0}, Lcom/jme3/scene/VertexBuffer;->clone()Lcom/jme3/scene/VertexBuffer;

    move-result-object v0

    return-object v0
.end method

.method public compact(I)V
    .locals 2

    iget v0, p0, Lcom/jme3/scene/VertexBuffer;->components:I

    mul-int/2addr v0, p1

    iget-object p1, p0, Lcom/jme3/scene/VertexBuffer;->data:Ljava/nio/Buffer;

    invoke-virtual {p1}, Ljava/nio/Buffer;->clear()Ljava/nio/Buffer;

    iget-object p1, p0, Lcom/jme3/scene/VertexBuffer;->format:Lcom/jme3/scene/VertexBuffer$Format;

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unrecognized buffer format: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/jme3/scene/VertexBuffer;->format:Lcom/jme3/scene/VertexBuffer$Format;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_1
    iget-object p1, p0, Lcom/jme3/scene/VertexBuffer;->data:Ljava/nio/Buffer;

    check-cast p1, Ljava/nio/IntBuffer;

    invoke-virtual {p1, v0}, Ljava/nio/IntBuffer;->limit(I)Ljava/nio/Buffer;

    invoke-static {v0}, Lcom/jme3/util/BufferUtils;->createIntBuffer(I)Ljava/nio/IntBuffer;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/nio/IntBuffer;->put(Ljava/nio/IntBuffer;)Ljava/nio/IntBuffer;

    iput-object v0, p0, Lcom/jme3/scene/VertexBuffer;->data:Ljava/nio/Buffer;

    goto :goto_0

    :pswitch_2
    iget-object p1, p0, Lcom/jme3/scene/VertexBuffer;->data:Ljava/nio/Buffer;

    check-cast p1, Ljava/nio/ShortBuffer;

    invoke-virtual {p1, v0}, Ljava/nio/ShortBuffer;->limit(I)Ljava/nio/Buffer;

    invoke-static {v0}, Lcom/jme3/util/BufferUtils;->createShortBuffer(I)Ljava/nio/ShortBuffer;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/nio/ShortBuffer;->put(Ljava/nio/ShortBuffer;)Ljava/nio/ShortBuffer;

    iput-object v0, p0, Lcom/jme3/scene/VertexBuffer;->data:Ljava/nio/Buffer;

    goto :goto_0

    :pswitch_3
    iget-object p1, p0, Lcom/jme3/scene/VertexBuffer;->data:Ljava/nio/Buffer;

    check-cast p1, Ljava/nio/FloatBuffer;

    invoke-virtual {p1, v0}, Ljava/nio/FloatBuffer;->limit(I)Ljava/nio/Buffer;

    invoke-static {v0}, Lcom/jme3/util/BufferUtils;->createFloatBuffer(I)Ljava/nio/FloatBuffer;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/nio/FloatBuffer;->put(Ljava/nio/FloatBuffer;)Ljava/nio/FloatBuffer;

    iput-object v0, p0, Lcom/jme3/scene/VertexBuffer;->data:Ljava/nio/Buffer;

    goto :goto_0

    :pswitch_4
    iget-object p1, p0, Lcom/jme3/scene/VertexBuffer;->data:Ljava/nio/Buffer;

    check-cast p1, Ljava/nio/ByteBuffer;

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    invoke-static {v0}, Lcom/jme3/util/BufferUtils;->createByteBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    iput-object v0, p0, Lcom/jme3/scene/VertexBuffer;->data:Ljava/nio/Buffer;

    :goto_0
    iget-object p1, p0, Lcom/jme3/scene/VertexBuffer;->data:Ljava/nio/Buffer;

    invoke-virtual {p1}, Ljava/nio/Buffer;->clear()Ljava/nio/Buffer;

    invoke-virtual {p0}, Lcom/jme3/util/NativeObject;->setUpdateNeeded()V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/jme3/scene/VertexBuffer;->dataSizeChanged:Z

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_4
        :pswitch_4
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public convertToHalf()V
    .locals 4

    iget v0, p0, Lcom/jme3/util/NativeObject;->id:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/jme3/scene/VertexBuffer;->format:Lcom/jme3/scene/VertexBuffer$Format;

    sget-object v1, Lcom/jme3/scene/VertexBuffer$Format;->Float:Lcom/jme3/scene/VertexBuffer$Format;

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/jme3/scene/VertexBuffer;->data:Ljava/nio/Buffer;

    invoke-virtual {v0}, Ljava/nio/Buffer;->limit()I

    move-result v0

    iget v1, p0, Lcom/jme3/scene/VertexBuffer;->components:I

    div-int/2addr v0, v1

    sget-object v2, Lcom/jme3/scene/VertexBuffer$Format;->Half:Lcom/jme3/scene/VertexBuffer$Format;

    iput-object v2, p0, Lcom/jme3/scene/VertexBuffer;->format:Lcom/jme3/scene/VertexBuffer$Format;

    invoke-virtual {v2}, Lcom/jme3/scene/VertexBuffer$Format;->getComponentSize()I

    move-result v2

    mul-int/2addr v1, v2

    iput v1, p0, Lcom/jme3/scene/VertexBuffer;->componentsLength:I

    mul-int/2addr v1, v0

    invoke-static {v1}, Lcom/jme3/util/BufferUtils;->createByteBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    iget-object v1, p0, Lcom/jme3/scene/VertexBuffer;->data:Ljava/nio/Buffer;

    check-cast v1, Ljava/nio/FloatBuffer;

    invoke-virtual {v1}, Ljava/nio/FloatBuffer;->rewind()Ljava/nio/Buffer;

    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v1}, Ljava/nio/Buffer;->limit()I

    move-result v3

    if-ge v2, v3, :cond_0

    invoke-virtual {v1, v2}, Ljava/nio/FloatBuffer;->get(I)F

    move-result v3

    invoke-static {v3}, Lcom/jme3/math/FastMath;->convertFloatToHalf(F)S

    move-result v3

    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    iput-object v0, p0, Lcom/jme3/scene/VertexBuffer;->data:Ljava/nio/Buffer;

    invoke-virtual {p0}, Lcom/jme3/util/NativeObject;->setUpdateNeeded()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/jme3/scene/VertexBuffer;->dataSizeChanged:Z

    return-void

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Format must be float!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Data has already been sent."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public copyElement(ILcom/jme3/scene/VertexBuffer;I)V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/jme3/scene/VertexBuffer;->copyElements(ILcom/jme3/scene/VertexBuffer;II)V

    return-void
.end method

.method public copyElements(ILcom/jme3/scene/VertexBuffer;II)V
    .locals 4

    iget-object v0, p2, Lcom/jme3/scene/VertexBuffer;->format:Lcom/jme3/scene/VertexBuffer$Format;

    iget-object v1, p0, Lcom/jme3/scene/VertexBuffer;->format:Lcom/jme3/scene/VertexBuffer$Format;

    if-ne v0, v1, :cond_1

    iget v0, p2, Lcom/jme3/scene/VertexBuffer;->components:I

    iget v2, p0, Lcom/jme3/scene/VertexBuffer;->components:I

    if-ne v0, v2, :cond_1

    mul-int/2addr p1, v2

    mul-int/2addr p3, v2

    sget-object v0, Lcom/jme3/scene/VertexBuffer$Format;->Half:Lcom/jme3/scene/VertexBuffer$Format;

    if-ne v1, v0, :cond_0

    mul-int/lit8 p1, p1, 0x2

    mul-int/lit8 p3, p3, 0x2

    mul-int/lit8 v2, v2, 0x2

    :cond_0
    invoke-virtual {p0}, Lcom/jme3/scene/VertexBuffer;->getDataReadOnly()Ljava/nio/Buffer;

    move-result-object v0

    iget-object v1, p2, Lcom/jme3/scene/VertexBuffer;->data:Ljava/nio/Buffer;

    invoke-virtual {v1}, Ljava/nio/Buffer;->clear()Ljava/nio/Buffer;

    iget-object v1, p0, Lcom/jme3/scene/VertexBuffer;->format:Lcom/jme3/scene/VertexBuffer$Format;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    :pswitch_0
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Unrecognized buffer format: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/jme3/scene/VertexBuffer;->format:Lcom/jme3/scene/VertexBuffer$Format;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_1
    check-cast v0, Ljava/nio/IntBuffer;

    iget-object v1, p2, Lcom/jme3/scene/VertexBuffer;->data:Ljava/nio/Buffer;

    check-cast v1, Ljava/nio/IntBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/IntBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v3

    mul-int/2addr v2, p4

    add-int/2addr p1, v2

    invoke-virtual {v3, p1}, Ljava/nio/Buffer;->limit(I)Ljava/nio/Buffer;

    invoke-virtual {v1, p3}, Ljava/nio/IntBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object p1

    add-int/2addr p3, v2

    invoke-virtual {p1, p3}, Ljava/nio/Buffer;->limit(I)Ljava/nio/Buffer;

    invoke-virtual {v1, v0}, Ljava/nio/IntBuffer;->put(Ljava/nio/IntBuffer;)Ljava/nio/IntBuffer;

    goto :goto_0

    :pswitch_2
    check-cast v0, Ljava/nio/ShortBuffer;

    iget-object v1, p2, Lcom/jme3/scene/VertexBuffer;->data:Ljava/nio/Buffer;

    check-cast v1, Ljava/nio/ShortBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/ShortBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v3

    mul-int/2addr v2, p4

    add-int/2addr p1, v2

    invoke-virtual {v3, p1}, Ljava/nio/Buffer;->limit(I)Ljava/nio/Buffer;

    invoke-virtual {v1, p3}, Ljava/nio/ShortBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object p1

    add-int/2addr p3, v2

    invoke-virtual {p1, p3}, Ljava/nio/Buffer;->limit(I)Ljava/nio/Buffer;

    invoke-virtual {v1, v0}, Ljava/nio/ShortBuffer;->put(Ljava/nio/ShortBuffer;)Ljava/nio/ShortBuffer;

    goto :goto_0

    :pswitch_3
    check-cast v0, Ljava/nio/FloatBuffer;

    iget-object v1, p2, Lcom/jme3/scene/VertexBuffer;->data:Ljava/nio/Buffer;

    check-cast v1, Ljava/nio/FloatBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v3

    mul-int/2addr v2, p4

    add-int/2addr p1, v2

    invoke-virtual {v3, p1}, Ljava/nio/Buffer;->limit(I)Ljava/nio/Buffer;

    invoke-virtual {v1, p3}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object p1

    add-int/2addr p3, v2

    invoke-virtual {p1, p3}, Ljava/nio/Buffer;->limit(I)Ljava/nio/Buffer;

    invoke-virtual {v1, v0}, Ljava/nio/FloatBuffer;->put(Ljava/nio/FloatBuffer;)Ljava/nio/FloatBuffer;

    goto :goto_0

    :pswitch_4
    check-cast v0, Ljava/nio/ByteBuffer;

    iget-object v1, p2, Lcom/jme3/scene/VertexBuffer;->data:Ljava/nio/Buffer;

    check-cast v1, Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v3

    mul-int/2addr v2, p4

    add-int/2addr p1, v2

    invoke-virtual {v3, p1}, Ljava/nio/Buffer;->limit(I)Ljava/nio/Buffer;

    invoke-virtual {v1, p3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object p1

    add-int/2addr p3, v2

    invoke-virtual {p1, p3}, Ljava/nio/Buffer;->limit(I)Ljava/nio/Buffer;

    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    :goto_0
    iget-object p1, p2, Lcom/jme3/scene/VertexBuffer;->data:Ljava/nio/Buffer;

    invoke-virtual {p1}, Ljava/nio/Buffer;->clear()Ljava/nio/Buffer;

    return-void

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Buffer format mismatch. Cannot copy"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_4
        :pswitch_4
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public createDestructableClone()Lcom/jme3/util/NativeObject;
    .locals 2

    new-instance v0, Lcom/jme3/scene/VertexBuffer;

    iget v1, p0, Lcom/jme3/util/NativeObject;->id:I

    invoke-direct {v0, v1}, Lcom/jme3/scene/VertexBuffer;-><init>(I)V

    return-object v0
.end method

.method public deleteNativeBuffers()V
    .locals 1

    iget-object v0, p0, Lcom/jme3/scene/VertexBuffer;->data:Ljava/nio/Buffer;

    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/jme3/util/BufferUtils;->destroyDirectBuffer(Ljava/nio/Buffer;)V

    :cond_0
    return-void
.end method

.method public deleteObject(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/jme3/renderer/Renderer;

    invoke-interface {p1, p0}, Lcom/jme3/renderer/Renderer;->deleteBuffer(Lcom/jme3/scene/VertexBuffer;)V

    return-void
.end method

.method public getBaseInstanceCount()I
    .locals 2

    iget v0, p0, Lcom/jme3/scene/VertexBuffer;->instanceSpan:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/jme3/scene/VertexBuffer;->getNumElements()I

    move-result v0

    iget v1, p0, Lcom/jme3/scene/VertexBuffer;->instanceSpan:I

    mul-int/2addr v0, v1

    return v0
.end method

.method public getBufferType()Lcom/jme3/scene/VertexBuffer$Type;
    .locals 1

    iget-object v0, p0, Lcom/jme3/scene/VertexBuffer;->bufType:Lcom/jme3/scene/VertexBuffer$Type;

    return-object v0
.end method

.method public getData()Ljava/nio/Buffer;
    .locals 1

    iget-object v0, p0, Lcom/jme3/scene/VertexBuffer;->data:Ljava/nio/Buffer;

    return-object v0
.end method

.method public getDataReadOnly()Ljava/nio/Buffer;
    .locals 3

    iget-object v0, p0, Lcom/jme3/scene/VertexBuffer;->data:Ljava/nio/Buffer;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    instance-of v1, v0, Ljava/nio/ByteBuffer;

    if-eqz v1, :cond_1

    check-cast v0, Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asReadOnlyBuffer()Ljava/nio/ByteBuffer;

    move-result-object v0

    goto :goto_0

    :cond_1
    instance-of v1, v0, Ljava/nio/FloatBuffer;

    if-eqz v1, :cond_2

    check-cast v0, Ljava/nio/FloatBuffer;

    invoke-virtual {v0}, Ljava/nio/FloatBuffer;->asReadOnlyBuffer()Ljava/nio/FloatBuffer;

    move-result-object v0

    goto :goto_0

    :cond_2
    instance-of v1, v0, Ljava/nio/ShortBuffer;

    if-eqz v1, :cond_3

    check-cast v0, Ljava/nio/ShortBuffer;

    invoke-virtual {v0}, Ljava/nio/ShortBuffer;->asReadOnlyBuffer()Ljava/nio/ShortBuffer;

    move-result-object v0

    goto :goto_0

    :cond_3
    instance-of v1, v0, Ljava/nio/IntBuffer;

    if-eqz v1, :cond_4

    check-cast v0, Ljava/nio/IntBuffer;

    invoke-virtual {v0}, Ljava/nio/IntBuffer;->asReadOnlyBuffer()Ljava/nio/IntBuffer;

    move-result-object v0

    :goto_0
    invoke-virtual {v0}, Ljava/nio/Buffer;->rewind()Ljava/nio/Buffer;

    return-object v0

    :cond_4
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot get read-only view of buffer type:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/jme3/scene/VertexBuffer;->data:Ljava/nio/Buffer;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getElementComponent(II)Ljava/lang/Object;
    .locals 2

    iget v0, p0, Lcom/jme3/scene/VertexBuffer;->components:I

    mul-int/2addr p1, v0

    iget-object v0, p0, Lcom/jme3/scene/VertexBuffer;->format:Lcom/jme3/scene/VertexBuffer$Format;

    sget-object v1, Lcom/jme3/scene/VertexBuffer$Format;->Half:Lcom/jme3/scene/VertexBuffer$Format;

    if-ne v0, v1, :cond_0

    mul-int/lit8 p1, p1, 0x2

    mul-int/lit8 p2, p2, 0x2

    :cond_0
    invoke-virtual {p0}, Lcom/jme3/scene/VertexBuffer;->getDataReadOnly()Ljava/nio/Buffer;

    move-result-object v0

    iget-object v1, p0, Lcom/jme3/scene/VertexBuffer;->format:Lcom/jme3/scene/VertexBuffer$Format;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    :pswitch_0
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unrecognized buffer format: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/jme3/scene/VertexBuffer;->format:Lcom/jme3/scene/VertexBuffer$Format;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_1
    check-cast v0, Ljava/nio/IntBuffer;

    add-int/2addr p1, p2

    invoke-virtual {v0, p1}, Ljava/nio/IntBuffer;->get(I)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    :pswitch_2
    check-cast v0, Ljava/nio/ShortBuffer;

    add-int/2addr p1, p2

    invoke-virtual {v0, p1}, Ljava/nio/ShortBuffer;->get(I)S

    move-result p1

    invoke-static {p1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object p1

    return-object p1

    :pswitch_3
    check-cast v0, Ljava/nio/FloatBuffer;

    add-int/2addr p1, p2

    invoke-virtual {v0, p1}, Ljava/nio/FloatBuffer;->get(I)F

    move-result p1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    return-object p1

    :pswitch_4
    check-cast v0, Ljava/nio/ByteBuffer;

    add-int/2addr p1, p2

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->get(I)B

    move-result p1

    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_4
        :pswitch_4
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public getFormat()Lcom/jme3/scene/VertexBuffer$Format;
    .locals 1

    iget-object v0, p0, Lcom/jme3/scene/VertexBuffer;->format:Lcom/jme3/scene/VertexBuffer$Format;

    return-object v0
.end method

.method public getInstanceSpan()I
    .locals 1

    iget v0, p0, Lcom/jme3/scene/VertexBuffer;->instanceSpan:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/jme3/scene/VertexBuffer;->name:Ljava/lang/String;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/jme3/scene/VertexBuffer;->getBufferType()Lcom/jme3/scene/VertexBuffer$Type;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "%s(%s)"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getNumComponents()I
    .locals 1

    iget v0, p0, Lcom/jme3/scene/VertexBuffer;->components:I

    return v0
.end method

.method public getNumElements()I
    .locals 3

    iget-object v0, p0, Lcom/jme3/scene/VertexBuffer;->data:Ljava/nio/Buffer;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    invoke-virtual {v0}, Ljava/nio/Buffer;->limit()I

    move-result v0

    iget v1, p0, Lcom/jme3/scene/VertexBuffer;->components:I

    div-int/2addr v0, v1

    iget-object v1, p0, Lcom/jme3/scene/VertexBuffer;->format:Lcom/jme3/scene/VertexBuffer$Format;

    sget-object v2, Lcom/jme3/scene/VertexBuffer$Format;->Half:Lcom/jme3/scene/VertexBuffer$Format;

    if-ne v1, v2, :cond_1

    div-int/lit8 v0, v0, 0x2

    :cond_1
    return v0
.end method

.method public getOffset()I
    .locals 1

    iget v0, p0, Lcom/jme3/scene/VertexBuffer;->offset:I

    return v0
.end method

.method public getStride()I
    .locals 1

    iget v0, p0, Lcom/jme3/scene/VertexBuffer;->stride:I

    return v0
.end method

.method public getUniqueId()J
    .locals 4

    iget v0, p0, Lcom/jme3/util/NativeObject;->id:I

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    const-wide v2, 0x100000000L

    or-long/2addr v0, v2

    return-wide v0
.end method

.method public getUsage()Lcom/jme3/scene/VertexBuffer$Usage;
    .locals 1

    iget-object v0, p0, Lcom/jme3/scene/VertexBuffer;->usage:Lcom/jme3/scene/VertexBuffer$Usage;

    return-object v0
.end method

.method public hasDataSizeChanged()Z
    .locals 1

    iget-boolean v0, p0, Lcom/jme3/scene/VertexBuffer;->dataSizeChanged:Z

    return v0
.end method

.method public invariant()Z
    .locals 4

    iget-object v0, p0, Lcom/jme3/scene/VertexBuffer;->data:Ljava/nio/Buffer;

    if-eqz v0, :cond_12

    invoke-virtual {v0}, Ljava/nio/Buffer;->position()I

    move-result v0

    if-nez v0, :cond_11

    iget-object v0, p0, Lcom/jme3/scene/VertexBuffer;->data:Ljava/nio/Buffer;

    invoke-virtual {v0}, Ljava/nio/Buffer;->limit()I

    move-result v0

    if-eqz v0, :cond_10

    iget v0, p0, Lcom/jme3/scene/VertexBuffer;->offset:I

    iget-object v1, p0, Lcom/jme3/scene/VertexBuffer;->data:Ljava/nio/Buffer;

    invoke-virtual {v1}, Ljava/nio/Buffer;->limit()I

    move-result v1

    if-gt v0, v1, :cond_f

    iget v0, p0, Lcom/jme3/scene/VertexBuffer;->offset:I

    if-ltz v0, :cond_f

    iget-object v0, p0, Lcom/jme3/scene/VertexBuffer;->bufType:Lcom/jme3/scene/VertexBuffer$Type;

    sget-object v1, Lcom/jme3/scene/VertexBuffer$Type;->InstanceData:Lcom/jme3/scene/VertexBuffer$Type;

    const/4 v2, 0x1

    if-eq v0, v1, :cond_1

    iget v0, p0, Lcom/jme3/scene/VertexBuffer;->components:I

    if-lt v0, v2, :cond_0

    const/4 v1, 0x4

    if-gt v0, v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/jme3/scene/VertexBuffer;->usage:Lcom/jme3/scene/VertexBuffer$Usage;

    sget-object v1, Lcom/jme3/scene/VertexBuffer$Usage;->CpuOnly:Lcom/jme3/scene/VertexBuffer$Usage;

    if-eq v0, v1, :cond_3

    iget-object v0, p0, Lcom/jme3/scene/VertexBuffer;->data:Ljava/nio/Buffer;

    invoke-virtual {v0}, Ljava/nio/Buffer;->isDirect()Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/jme3/scene/VertexBuffer;->data:Ljava/nio/Buffer;

    instance-of v1, v0, Ljava/nio/DoubleBuffer;

    if-nez v1, :cond_e

    instance-of v1, v0, Ljava/nio/CharBuffer;

    if-nez v1, :cond_d

    instance-of v1, v0, Ljava/nio/LongBuffer;

    if-nez v1, :cond_c

    instance-of v1, v0, Ljava/nio/FloatBuffer;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/jme3/scene/VertexBuffer;->format:Lcom/jme3/scene/VertexBuffer$Format;

    sget-object v3, Lcom/jme3/scene/VertexBuffer$Format;->Float:Lcom/jme3/scene/VertexBuffer$Format;

    if-ne v1, v3, :cond_4

    goto :goto_2

    :cond_4
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_5
    :goto_2
    instance-of v1, v0, Ljava/nio/IntBuffer;

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/jme3/scene/VertexBuffer;->format:Lcom/jme3/scene/VertexBuffer$Format;

    sget-object v3, Lcom/jme3/scene/VertexBuffer$Format;->Int:Lcom/jme3/scene/VertexBuffer$Format;

    if-eq v1, v3, :cond_7

    sget-object v3, Lcom/jme3/scene/VertexBuffer$Format;->UnsignedInt:Lcom/jme3/scene/VertexBuffer$Format;

    if-ne v1, v3, :cond_6

    goto :goto_3

    :cond_6
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_7
    :goto_3
    instance-of v1, v0, Ljava/nio/ShortBuffer;

    if-eqz v1, :cond_9

    iget-object v1, p0, Lcom/jme3/scene/VertexBuffer;->format:Lcom/jme3/scene/VertexBuffer$Format;

    sget-object v3, Lcom/jme3/scene/VertexBuffer$Format;->Short:Lcom/jme3/scene/VertexBuffer$Format;

    if-eq v1, v3, :cond_9

    sget-object v3, Lcom/jme3/scene/VertexBuffer$Format;->UnsignedShort:Lcom/jme3/scene/VertexBuffer$Format;

    if-ne v1, v3, :cond_8

    goto :goto_4

    :cond_8
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_9
    :goto_4
    instance-of v0, v0, Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/jme3/scene/VertexBuffer;->format:Lcom/jme3/scene/VertexBuffer$Format;

    sget-object v1, Lcom/jme3/scene/VertexBuffer$Format;->Byte:Lcom/jme3/scene/VertexBuffer$Format;

    if-eq v0, v1, :cond_b

    sget-object v1, Lcom/jme3/scene/VertexBuffer$Format;->UnsignedByte:Lcom/jme3/scene/VertexBuffer$Format;

    if-ne v0, v1, :cond_a

    goto :goto_5

    :cond_a
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_b
    :goto_5
    return v2

    :cond_c
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_d
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_e
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_f
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_10
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_11
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_12
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public isInstanced()Z
    .locals 1

    iget v0, p0, Lcom/jme3/scene/VertexBuffer;->instanceSpan:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isNormalized()Z
    .locals 1

    iget-boolean v0, p0, Lcom/jme3/scene/VertexBuffer;->normalized:Z

    return v0
.end method

.method public read(Lcom/jme3/export/JmeImporter;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-interface {p1, p0}, Lcom/jme3/export/JmeImporter;->getCapsule(Lcom/jme3/export/Savable;)Lcom/jme3/export/InputCapsule;

    move-result-object p1

    const-string v0, "components"

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Lcom/jme3/export/InputCapsule;->readInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/jme3/scene/VertexBuffer;->components:I

    const-class v0, Lcom/jme3/scene/VertexBuffer$Usage;

    sget-object v2, Lcom/jme3/scene/VertexBuffer$Usage;->Dynamic:Lcom/jme3/scene/VertexBuffer$Usage;

    const-string v3, "usage"

    invoke-interface {p1, v3, v0, v2}, Lcom/jme3/export/InputCapsule;->readEnum(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Enum;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/jme3/scene/VertexBuffer$Usage;

    iput-object v0, p0, Lcom/jme3/scene/VertexBuffer;->usage:Lcom/jme3/scene/VertexBuffer$Usage;

    const-string v0, "buffer_type"

    const-class v2, Lcom/jme3/scene/VertexBuffer$Type;

    const/4 v3, 0x0

    invoke-interface {p1, v0, v2, v3}, Lcom/jme3/export/InputCapsule;->readEnum(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Enum;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/jme3/scene/VertexBuffer$Type;

    iput-object v0, p0, Lcom/jme3/scene/VertexBuffer;->bufType:Lcom/jme3/scene/VertexBuffer$Type;

    const-class v0, Lcom/jme3/scene/VertexBuffer$Format;

    sget-object v2, Lcom/jme3/scene/VertexBuffer$Format;->Float:Lcom/jme3/scene/VertexBuffer$Format;

    const-string v4, "format"

    invoke-interface {p1, v4, v0, v2}, Lcom/jme3/export/InputCapsule;->readEnum(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Enum;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/jme3/scene/VertexBuffer$Format;

    iput-object v0, p0, Lcom/jme3/scene/VertexBuffer;->format:Lcom/jme3/scene/VertexBuffer$Format;

    const-string v0, "normalized"

    invoke-interface {p1, v0, v1}, Lcom/jme3/export/InputCapsule;->readBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/jme3/scene/VertexBuffer;->normalized:Z

    const-string v0, "offset"

    invoke-interface {p1, v0, v1}, Lcom/jme3/export/InputCapsule;->readInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/jme3/scene/VertexBuffer;->offset:I

    const-string v0, "stride"

    invoke-interface {p1, v0, v1}, Lcom/jme3/export/InputCapsule;->readInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/jme3/scene/VertexBuffer;->stride:I

    const-string v0, "instanceSpan"

    invoke-interface {p1, v0, v1}, Lcom/jme3/export/InputCapsule;->readInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/jme3/scene/VertexBuffer;->instanceSpan:I

    const-string v0, "name"

    invoke-interface {p1, v0, v3}, Lcom/jme3/export/InputCapsule;->readString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/jme3/scene/VertexBuffer;->name:Ljava/lang/String;

    iget v0, p0, Lcom/jme3/scene/VertexBuffer;->components:I

    iget-object v1, p0, Lcom/jme3/scene/VertexBuffer;->format:Lcom/jme3/scene/VertexBuffer$Format;

    invoke-virtual {v1}, Lcom/jme3/scene/VertexBuffer$Format;->getComponentSize()I

    move-result v1

    mul-int/2addr v0, v1

    iput v0, p0, Lcom/jme3/scene/VertexBuffer;->componentsLength:I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "data"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/jme3/scene/VertexBuffer;->format:Lcom/jme3/scene/VertexBuffer$Format;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/jme3/scene/VertexBuffer;->format:Lcom/jme3/scene/VertexBuffer$Format;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    :pswitch_0
    new-instance p1, Ljava/io/IOException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unsupported import buffer format: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/jme3/scene/VertexBuffer;->format:Lcom/jme3/scene/VertexBuffer$Format;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_1
    invoke-interface {p1, v0, v3}, Lcom/jme3/export/InputCapsule;->readIntBuffer(Ljava/lang/String;Ljava/nio/IntBuffer;)Ljava/nio/IntBuffer;

    move-result-object p1

    iput-object p1, p0, Lcom/jme3/scene/VertexBuffer;->data:Ljava/nio/Buffer;

    goto :goto_0

    :pswitch_2
    invoke-interface {p1, v0, v3}, Lcom/jme3/export/InputCapsule;->readShortBuffer(Ljava/lang/String;Ljava/nio/ShortBuffer;)Ljava/nio/ShortBuffer;

    move-result-object p1

    iput-object p1, p0, Lcom/jme3/scene/VertexBuffer;->data:Ljava/nio/Buffer;

    goto :goto_0

    :pswitch_3
    invoke-interface {p1, v0, v3}, Lcom/jme3/export/InputCapsule;->readFloatBuffer(Ljava/lang/String;Ljava/nio/FloatBuffer;)Ljava/nio/FloatBuffer;

    move-result-object p1

    iput-object p1, p0, Lcom/jme3/scene/VertexBuffer;->data:Ljava/nio/Buffer;

    goto :goto_0

    :pswitch_4
    invoke-interface {p1, v0, v3}, Lcom/jme3/export/InputCapsule;->readByteBuffer(Ljava/lang/String;Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    move-result-object p1

    iput-object p1, p0, Lcom/jme3/scene/VertexBuffer;->data:Ljava/nio/Buffer;

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_4
        :pswitch_4
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public resetObject()V
    .locals 1

    const/4 v0, -0x1

    iput v0, p0, Lcom/jme3/util/NativeObject;->id:I

    invoke-virtual {p0}, Lcom/jme3/util/NativeObject;->setUpdateNeeded()V

    return-void
.end method

.method public setElementComponent(IILjava/lang/Object;)V
    .locals 2

    iget v0, p0, Lcom/jme3/scene/VertexBuffer;->components:I

    mul-int/2addr p1, v0

    iget-object v0, p0, Lcom/jme3/scene/VertexBuffer;->format:Lcom/jme3/scene/VertexBuffer$Format;

    sget-object v1, Lcom/jme3/scene/VertexBuffer$Format;->Half:Lcom/jme3/scene/VertexBuffer$Format;

    if-ne v0, v1, :cond_0

    mul-int/lit8 p1, p1, 0x2

    mul-int/lit8 p2, p2, 0x2

    :cond_0
    iget-object v0, p0, Lcom/jme3/scene/VertexBuffer;->data:Ljava/nio/Buffer;

    invoke-virtual {v0}, Ljava/nio/Buffer;->clear()Ljava/nio/Buffer;

    iget-object v0, p0, Lcom/jme3/scene/VertexBuffer;->format:Lcom/jme3/scene/VertexBuffer$Format;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Unrecognized buffer format: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/jme3/scene/VertexBuffer;->format:Lcom/jme3/scene/VertexBuffer$Format;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_1
    iget-object v0, p0, Lcom/jme3/scene/VertexBuffer;->data:Ljava/nio/Buffer;

    check-cast v0, Ljava/nio/IntBuffer;

    add-int/2addr p1, p2

    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-virtual {v0, p1, p2}, Ljava/nio/IntBuffer;->put(II)Ljava/nio/IntBuffer;

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/jme3/scene/VertexBuffer;->data:Ljava/nio/Buffer;

    check-cast v0, Ljava/nio/ShortBuffer;

    add-int/2addr p1, p2

    check-cast p3, Ljava/lang/Short;

    invoke-virtual {p3}, Ljava/lang/Short;->shortValue()S

    move-result p2

    invoke-virtual {v0, p1, p2}, Ljava/nio/ShortBuffer;->put(IS)Ljava/nio/ShortBuffer;

    goto :goto_0

    :pswitch_3
    iget-object v0, p0, Lcom/jme3/scene/VertexBuffer;->data:Ljava/nio/Buffer;

    check-cast v0, Ljava/nio/FloatBuffer;

    add-int/2addr p1, p2

    check-cast p3, Ljava/lang/Float;

    invoke-virtual {p3}, Ljava/lang/Float;->floatValue()F

    move-result p2

    invoke-virtual {v0, p1, p2}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    goto :goto_0

    :pswitch_4
    iget-object v0, p0, Lcom/jme3/scene/VertexBuffer;->data:Ljava/nio/Buffer;

    check-cast v0, Ljava/nio/ByteBuffer;

    add-int/2addr p1, p2

    check-cast p3, Ljava/lang/Byte;

    invoke-virtual {p3}, Ljava/lang/Byte;->byteValue()B

    move-result p2

    invoke-virtual {v0, p1, p2}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_4
        :pswitch_4
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public setInstanceSpan(I)V
    .locals 0

    iput p1, p0, Lcom/jme3/scene/VertexBuffer;->instanceSpan:I

    return-void
.end method

.method public setInstanced(Z)V
    .locals 1

    if-eqz p1, :cond_0

    iget v0, p0, Lcom/jme3/scene/VertexBuffer;->instanceSpan:I

    if-nez v0, :cond_0

    const/4 p1, 0x1

    iput p1, p0, Lcom/jme3/scene/VertexBuffer;->instanceSpan:I

    goto :goto_0

    :cond_0
    if-nez p1, :cond_1

    const/4 p1, 0x0

    iput p1, p0, Lcom/jme3/scene/VertexBuffer;->instanceSpan:I

    :cond_1
    :goto_0
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/jme3/scene/VertexBuffer;->name:Ljava/lang/String;

    return-void
.end method

.method public setNormalized(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/jme3/scene/VertexBuffer;->normalized:Z

    return-void
.end method

.method public setOffset(I)V
    .locals 0

    iput p1, p0, Lcom/jme3/scene/VertexBuffer;->offset:I

    return-void
.end method

.method public setStride(I)V
    .locals 0

    iput p1, p0, Lcom/jme3/scene/VertexBuffer;->stride:I

    return-void
.end method

.method public setUsage(Lcom/jme3/scene/VertexBuffer$Usage;)V
    .locals 0

    iput-object p1, p0, Lcom/jme3/scene/VertexBuffer;->usage:Lcom/jme3/scene/VertexBuffer$Usage;

    invoke-virtual {p0}, Lcom/jme3/util/NativeObject;->setUpdateNeeded()V

    return-void
.end method

.method public setupData(Lcom/jme3/scene/VertexBuffer$Usage;ILcom/jme3/scene/VertexBuffer$Format;Ljava/nio/Buffer;)V
    .locals 2

    iget v0, p0, Lcom/jme3/util/NativeObject;->id:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_4

    if-eqz p1, :cond_3

    if-eqz p3, :cond_3

    if-eqz p4, :cond_3

    invoke-virtual {p4}, Ljava/nio/Buffer;->isReadOnly()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/jme3/scene/VertexBuffer;->bufType:Lcom/jme3/scene/VertexBuffer$Type;

    sget-object v1, Lcom/jme3/scene/VertexBuffer$Type;->InstanceData:Lcom/jme3/scene/VertexBuffer$Type;

    if-eq v0, v1, :cond_1

    const/4 v0, 0x1

    if-lt p2, v0, :cond_0

    const/4 v0, 0x4

    if-gt p2, v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "components must be between 1 and 4"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    iput-object p4, p0, Lcom/jme3/scene/VertexBuffer;->data:Ljava/nio/Buffer;

    iput p2, p0, Lcom/jme3/scene/VertexBuffer;->components:I

    iput-object p1, p0, Lcom/jme3/scene/VertexBuffer;->usage:Lcom/jme3/scene/VertexBuffer$Usage;

    iput-object p3, p0, Lcom/jme3/scene/VertexBuffer;->format:Lcom/jme3/scene/VertexBuffer$Format;

    invoke-virtual {p3}, Lcom/jme3/scene/VertexBuffer$Format;->getComponentSize()I

    move-result p1

    mul-int/2addr p2, p1

    iput p2, p0, Lcom/jme3/scene/VertexBuffer;->componentsLength:I

    invoke-virtual {p4}, Ljava/nio/Buffer;->limit()I

    move-result p1

    iput p1, p0, Lcom/jme3/scene/VertexBuffer;->lastLimit:I

    invoke-virtual {p0}, Lcom/jme3/util/NativeObject;->setUpdateNeeded()V

    return-void

    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "VertexBuffer data cannot be read-only."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "None of the arguments can be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "Data has already been sent. Cannot setupData again."

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/jme3/scene/VertexBuffer;->data:Ljava/nio/Buffer;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ", elements="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/jme3/scene/VertexBuffer;->data:Ljava/nio/Buffer;

    invoke-virtual {v1}, Ljava/nio/Buffer;->limit()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "[fmt="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/jme3/scene/VertexBuffer;->format:Lcom/jme3/scene/VertexBuffer$Format;

    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", type="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/jme3/scene/VertexBuffer;->bufType:Lcom/jme3/scene/VertexBuffer$Type;

    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", usage="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/jme3/scene/VertexBuffer;->usage:Lcom/jme3/scene/VertexBuffer$Usage;

    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "]"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public updateData(Ljava/nio/Buffer;)V
    .locals 2

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/nio/Buffer;->isReadOnly()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "VertexBuffer data cannot be read-only."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    if-eqz p1, :cond_3

    iget-object v0, p0, Lcom/jme3/scene/VertexBuffer;->data:Ljava/nio/Buffer;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-ne v0, v1, :cond_2

    invoke-virtual {p1}, Ljava/nio/Buffer;->limit()I

    move-result v0

    iget v1, p0, Lcom/jme3/scene/VertexBuffer;->lastLimit:I

    if-eq v0, v1, :cond_3

    :cond_2
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/jme3/scene/VertexBuffer;->dataSizeChanged:Z

    invoke-virtual {p1}, Ljava/nio/Buffer;->limit()I

    move-result v0

    iput v0, p0, Lcom/jme3/scene/VertexBuffer;->lastLimit:I

    :cond_3
    iput-object p1, p0, Lcom/jme3/scene/VertexBuffer;->data:Ljava/nio/Buffer;

    invoke-virtual {p0}, Lcom/jme3/util/NativeObject;->setUpdateNeeded()V

    return-void
.end method

.method public write(Lcom/jme3/export/JmeExporter;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-interface {p1, p0}, Lcom/jme3/export/JmeExporter;->getCapsule(Lcom/jme3/export/Savable;)Lcom/jme3/export/OutputCapsule;

    move-result-object p1

    iget v0, p0, Lcom/jme3/scene/VertexBuffer;->components:I

    const-string v1, "components"

    const/4 v2, 0x0

    invoke-interface {p1, v0, v1, v2}, Lcom/jme3/export/OutputCapsule;->write(ILjava/lang/String;I)V

    iget-object v0, p0, Lcom/jme3/scene/VertexBuffer;->usage:Lcom/jme3/scene/VertexBuffer$Usage;

    const-string v1, "usage"

    sget-object v3, Lcom/jme3/scene/VertexBuffer$Usage;->Dynamic:Lcom/jme3/scene/VertexBuffer$Usage;

    invoke-interface {p1, v0, v1, v3}, Lcom/jme3/export/OutputCapsule;->write(Ljava/lang/Enum;Ljava/lang/String;Ljava/lang/Enum;)V

    iget-object v0, p0, Lcom/jme3/scene/VertexBuffer;->bufType:Lcom/jme3/scene/VertexBuffer$Type;

    const-string v1, "buffer_type"

    const/4 v3, 0x0

    invoke-interface {p1, v0, v1, v3}, Lcom/jme3/export/OutputCapsule;->write(Ljava/lang/Enum;Ljava/lang/String;Ljava/lang/Enum;)V

    iget-object v0, p0, Lcom/jme3/scene/VertexBuffer;->format:Lcom/jme3/scene/VertexBuffer$Format;

    const-string v1, "format"

    sget-object v4, Lcom/jme3/scene/VertexBuffer$Format;->Float:Lcom/jme3/scene/VertexBuffer$Format;

    invoke-interface {p1, v0, v1, v4}, Lcom/jme3/export/OutputCapsule;->write(Ljava/lang/Enum;Ljava/lang/String;Ljava/lang/Enum;)V

    iget-boolean v0, p0, Lcom/jme3/scene/VertexBuffer;->normalized:Z

    const-string v1, "normalized"

    invoke-interface {p1, v0, v1, v2}, Lcom/jme3/export/OutputCapsule;->write(ZLjava/lang/String;Z)V

    iget v0, p0, Lcom/jme3/scene/VertexBuffer;->offset:I

    const-string v1, "offset"

    invoke-interface {p1, v0, v1, v2}, Lcom/jme3/export/OutputCapsule;->write(ILjava/lang/String;I)V

    iget v0, p0, Lcom/jme3/scene/VertexBuffer;->stride:I

    const-string v1, "stride"

    invoke-interface {p1, v0, v1, v2}, Lcom/jme3/export/OutputCapsule;->write(ILjava/lang/String;I)V

    iget v0, p0, Lcom/jme3/scene/VertexBuffer;->instanceSpan:I

    const-string v1, "instanceSpan"

    invoke-interface {p1, v0, v1, v2}, Lcom/jme3/export/OutputCapsule;->write(ILjava/lang/String;I)V

    iget-object v0, p0, Lcom/jme3/scene/VertexBuffer;->name:Ljava/lang/String;

    const-string v1, "name"

    invoke-interface {p1, v0, v1, v3}, Lcom/jme3/export/OutputCapsule;->write(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "data"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/jme3/scene/VertexBuffer;->format:Lcom/jme3/scene/VertexBuffer$Format;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/jme3/scene/VertexBuffer;->getDataReadOnly()Ljava/nio/Buffer;

    move-result-object v1

    iget-object v2, p0, Lcom/jme3/scene/VertexBuffer;->format:Lcom/jme3/scene/VertexBuffer$Format;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    :pswitch_0
    new-instance p1, Ljava/io/IOException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unsupported export buffer format: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/jme3/scene/VertexBuffer;->format:Lcom/jme3/scene/VertexBuffer$Format;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_1
    check-cast v1, Ljava/nio/IntBuffer;

    invoke-interface {p1, v1, v0, v3}, Lcom/jme3/export/OutputCapsule;->write(Ljava/nio/IntBuffer;Ljava/lang/String;Ljava/nio/IntBuffer;)V

    goto :goto_0

    :pswitch_2
    check-cast v1, Ljava/nio/ShortBuffer;

    invoke-interface {p1, v1, v0, v3}, Lcom/jme3/export/OutputCapsule;->write(Ljava/nio/ShortBuffer;Ljava/lang/String;Ljava/nio/ShortBuffer;)V

    goto :goto_0

    :pswitch_3
    check-cast v1, Ljava/nio/FloatBuffer;

    invoke-interface {p1, v1, v0, v3}, Lcom/jme3/export/OutputCapsule;->write(Ljava/nio/FloatBuffer;Ljava/lang/String;Ljava/nio/FloatBuffer;)V

    goto :goto_0

    :pswitch_4
    check-cast v1, Ljava/nio/ByteBuffer;

    invoke-interface {p1, v1, v0, v3}, Lcom/jme3/export/OutputCapsule;->write(Ljava/nio/ByteBuffer;Ljava/lang/String;Ljava/nio/ByteBuffer;)V

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_4
        :pswitch_4
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method
