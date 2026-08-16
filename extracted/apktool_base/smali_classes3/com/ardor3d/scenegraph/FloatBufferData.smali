.class public Lcom/ardor3d/scenegraph/FloatBufferData;
.super Lcom/ardor3d/scenegraph/AbstractBufferData;
.source "SourceFile"

# interfaces
.implements Lcom/ardor3d/util/export/Savable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/ardor3d/scenegraph/AbstractBufferData<",
        "Ljava/nio/FloatBuffer;",
        ">;",
        "Lcom/ardor3d/util/export/Savable;"
    }
.end annotation


# instance fields
.field private _valuesPerTuple:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/ardor3d/scenegraph/AbstractBufferData;-><init>()V

    return-void
.end method

.method public constructor <init>(II)V
    .locals 0

    .line 2
    invoke-static {p1}, Lcom/ardor3d/util/geom/BufferUtils;->createFloatBuffer(I)Ljava/nio/FloatBuffer;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Lcom/ardor3d/scenegraph/FloatBufferData;-><init>(Ljava/nio/FloatBuffer;I)V

    return-void
.end method

.method public constructor <init>(Ljava/nio/FloatBuffer;I)V
    .locals 1

    .line 3
    invoke-direct {p0}, Lcom/ardor3d/scenegraph/AbstractBufferData;-><init>()V

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    if-lt p2, v0, :cond_0

    .line 4
    iput-object p1, p0, Lcom/ardor3d/scenegraph/AbstractBufferData;->_buffer:Ljava/nio/Buffer;

    .line 5
    iput p2, p0, Lcom/ardor3d/scenegraph/FloatBufferData;->_valuesPerTuple:I

    return-void

    .line 6
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "valuesPerTuple must be greater than 1."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 7
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Buffer can not be null!"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public getClassTag()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "+",
            "Lcom/ardor3d/scenegraph/FloatBufferData;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method public getTupleCount()I
    .locals 2

    invoke-virtual {p0}, Lcom/ardor3d/scenegraph/AbstractBufferData;->getBufferLimit()I

    move-result v0

    iget v1, p0, Lcom/ardor3d/scenegraph/FloatBufferData;->_valuesPerTuple:I

    div-int/2addr v0, v1

    return v0
.end method

.method public getValuesPerTuple()I
    .locals 1

    iget v0, p0, Lcom/ardor3d/scenegraph/FloatBufferData;->_valuesPerTuple:I

    return v0
.end method

.method public bridge synthetic makeCopy()Lcom/ardor3d/scenegraph/AbstractBufferData;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/ardor3d/scenegraph/FloatBufferData;->makeCopy()Lcom/ardor3d/scenegraph/FloatBufferData;

    move-result-object v0

    return-object v0
.end method

.method public makeCopy()Lcom/ardor3d/scenegraph/FloatBufferData;
    .locals 2

    .line 2
    new-instance v0, Lcom/ardor3d/scenegraph/FloatBufferData;

    invoke-direct {v0}, Lcom/ardor3d/scenegraph/FloatBufferData;-><init>()V

    .line 3
    iget-object v1, p0, Lcom/ardor3d/scenegraph/AbstractBufferData;->_buffer:Ljava/nio/Buffer;

    check-cast v1, Ljava/nio/FloatBuffer;

    invoke-static {v1}, Lcom/ardor3d/util/geom/BufferUtils;->clone(Ljava/nio/FloatBuffer;)Ljava/nio/FloatBuffer;

    move-result-object v1

    iput-object v1, v0, Lcom/ardor3d/scenegraph/AbstractBufferData;->_buffer:Ljava/nio/Buffer;

    .line 4
    iget v1, p0, Lcom/ardor3d/scenegraph/FloatBufferData;->_valuesPerTuple:I

    iput v1, v0, Lcom/ardor3d/scenegraph/FloatBufferData;->_valuesPerTuple:I

    .line 5
    iget-object v1, p0, Lcom/ardor3d/scenegraph/AbstractBufferData;->_vboAccessMode:Lcom/ardor3d/scenegraph/AbstractBufferData$VBOAccessMode;

    iput-object v1, v0, Lcom/ardor3d/scenegraph/AbstractBufferData;->_vboAccessMode:Lcom/ardor3d/scenegraph/AbstractBufferData$VBOAccessMode;

    return-object v0
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

    invoke-interface {p1, v0, v1}, Lcom/ardor3d/util/export/InputCapsule;->readFloatBuffer(Ljava/lang/String;Ljava/nio/FloatBuffer;)Ljava/nio/FloatBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/ardor3d/scenegraph/AbstractBufferData;->_buffer:Ljava/nio/Buffer;

    const-string v0, "valuesPerTuple"

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Lcom/ardor3d/util/export/InputCapsule;->readInt(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/ardor3d/scenegraph/FloatBufferData;->_valuesPerTuple:I

    return-void
.end method

.method public varargs scaleData([F)V
    .locals 4

    iget-object v0, p0, Lcom/ardor3d/scenegraph/AbstractBufferData;->_buffer:Ljava/nio/Buffer;

    check-cast v0, Ljava/nio/FloatBuffer;

    invoke-virtual {v0}, Ljava/nio/FloatBuffer;->rewind()Ljava/nio/Buffer;

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/ardor3d/scenegraph/AbstractBufferData;->_buffer:Ljava/nio/Buffer;

    check-cast v1, Ljava/nio/FloatBuffer;

    invoke-virtual {v1}, Ljava/nio/Buffer;->limit()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/ardor3d/scenegraph/AbstractBufferData;->_buffer:Ljava/nio/Buffer;

    move-object v2, v1

    check-cast v2, Ljava/nio/FloatBuffer;

    check-cast v1, Ljava/nio/FloatBuffer;

    invoke-virtual {v1, v0}, Ljava/nio/FloatBuffer;->get(I)F

    move-result v1

    array-length v3, p1

    rem-int v3, v0, v3

    aget v3, p1, v3

    mul-float/2addr v1, v3

    invoke-virtual {v2, v1}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/ardor3d/scenegraph/AbstractBufferData;->_buffer:Ljava/nio/Buffer;

    check-cast p1, Ljava/nio/FloatBuffer;

    invoke-virtual {p1}, Ljava/nio/FloatBuffer;->rewind()Ljava/nio/Buffer;

    return-void
.end method

.method public setValuesPerTuple(I)V
    .locals 0

    iput p1, p0, Lcom/ardor3d/scenegraph/FloatBufferData;->_valuesPerTuple:I

    return-void
.end method

.method public varargs translateData([F)V
    .locals 4

    iget-object v0, p0, Lcom/ardor3d/scenegraph/AbstractBufferData;->_buffer:Ljava/nio/Buffer;

    check-cast v0, Ljava/nio/FloatBuffer;

    invoke-virtual {v0}, Ljava/nio/FloatBuffer;->rewind()Ljava/nio/Buffer;

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/ardor3d/scenegraph/AbstractBufferData;->_buffer:Ljava/nio/Buffer;

    check-cast v1, Ljava/nio/FloatBuffer;

    invoke-virtual {v1}, Ljava/nio/Buffer;->limit()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/ardor3d/scenegraph/AbstractBufferData;->_buffer:Ljava/nio/Buffer;

    move-object v2, v1

    check-cast v2, Ljava/nio/FloatBuffer;

    check-cast v1, Ljava/nio/FloatBuffer;

    invoke-virtual {v1, v0}, Ljava/nio/FloatBuffer;->get(I)F

    move-result v1

    array-length v3, p1

    rem-int v3, v0, v3

    aget v3, p1, v3

    add-float/2addr v1, v3

    invoke-virtual {v2, v1}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/ardor3d/scenegraph/AbstractBufferData;->_buffer:Ljava/nio/Buffer;

    check-cast p1, Ljava/nio/FloatBuffer;

    invoke-virtual {p1}, Ljava/nio/FloatBuffer;->rewind()Ljava/nio/Buffer;

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

    check-cast v0, Ljava/nio/FloatBuffer;

    const-string v1, "buffer"

    const/4 v2, 0x0

    invoke-interface {p1, v0, v1, v2}, Lcom/ardor3d/util/export/OutputCapsule;->write(Ljava/nio/FloatBuffer;Ljava/lang/String;Ljava/nio/FloatBuffer;)V

    iget v0, p0, Lcom/ardor3d/scenegraph/FloatBufferData;->_valuesPerTuple:I

    const-string v1, "valuesPerTuple"

    const/4 v2, 0x0

    invoke-interface {p1, v0, v1, v2}, Lcom/ardor3d/util/export/OutputCapsule;->write(ILjava/lang/String;I)V

    return-void
.end method
