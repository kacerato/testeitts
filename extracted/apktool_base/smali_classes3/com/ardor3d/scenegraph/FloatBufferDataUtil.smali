.class public Lcom/ardor3d/scenegraph/FloatBufferDataUtil;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static ensureSize(Lcom/ardor3d/scenegraph/FloatBufferData;II)Lcom/ardor3d/scenegraph/FloatBufferData;
    .locals 1

    if-nez p0, :cond_0

    new-instance p0, Lcom/ardor3d/scenegraph/FloatBufferData;

    mul-int/2addr p1, p2

    invoke-static {p1}, Lcom/ardor3d/util/geom/BufferUtils;->createFloatBuffer(I)Ljava/nio/FloatBuffer;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Lcom/ardor3d/scenegraph/FloatBufferData;-><init>(Ljava/nio/FloatBuffer;I)V

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lcom/ardor3d/scenegraph/AbstractBufferData;->getBuffer()Ljava/nio/Buffer;

    move-result-object v0

    check-cast v0, Ljava/nio/FloatBuffer;

    invoke-virtual {v0}, Ljava/nio/Buffer;->limit()I

    move-result v0

    mul-int/2addr p1, p2

    if-ne v0, p1, :cond_1

    invoke-virtual {p0}, Lcom/ardor3d/scenegraph/FloatBufferData;->getValuesPerTuple()I

    move-result v0

    if-ne v0, p2, :cond_1

    invoke-virtual {p0}, Lcom/ardor3d/scenegraph/AbstractBufferData;->getBuffer()Ljava/nio/Buffer;

    move-result-object p1

    check-cast p1, Ljava/nio/FloatBuffer;

    invoke-virtual {p1}, Ljava/nio/FloatBuffer;->rewind()Ljava/nio/Buffer;

    return-object p0

    :cond_1
    invoke-virtual {p0}, Lcom/ardor3d/scenegraph/AbstractBufferData;->getBuffer()Ljava/nio/Buffer;

    move-result-object v0

    check-cast v0, Ljava/nio/FloatBuffer;

    invoke-virtual {v0}, Ljava/nio/Buffer;->limit()I

    move-result v0

    if-ne v0, p1, :cond_2

    invoke-virtual {p0, p2}, Lcom/ardor3d/scenegraph/FloatBufferData;->setValuesPerTuple(I)V

    return-object p0

    :cond_2
    new-instance p0, Lcom/ardor3d/scenegraph/FloatBufferData;

    invoke-static {p1}, Lcom/ardor3d/util/geom/BufferUtils;->createFloatBuffer(I)Ljava/nio/FloatBuffer;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Lcom/ardor3d/scenegraph/FloatBufferData;-><init>(Ljava/nio/FloatBuffer;I)V

    return-object p0
.end method

.method public static makeNew([F)Lcom/ardor3d/scenegraph/FloatBufferData;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 3
    :cond_0
    new-instance v0, Lcom/ardor3d/scenegraph/FloatBufferData;

    invoke-static {p0}, Lcom/ardor3d/util/geom/BufferUtils;->createFloatBuffer([F)Ljava/nio/FloatBuffer;

    move-result-object p0

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lcom/ardor3d/scenegraph/FloatBufferData;-><init>(Ljava/nio/FloatBuffer;I)V

    return-object v0
.end method

.method public static makeNew([Lcom/ardor3d/math/type/ReadOnlyVector2;)Lcom/ardor3d/scenegraph/FloatBufferData;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 1
    :cond_0
    new-instance v0, Lcom/ardor3d/scenegraph/FloatBufferData;

    invoke-static {p0}, Lcom/ardor3d/util/geom/BufferUtils;->createFloatBuffer([Lcom/ardor3d/math/type/ReadOnlyVector2;)Ljava/nio/FloatBuffer;

    move-result-object p0

    const/4 v1, 0x2

    invoke-direct {v0, p0, v1}, Lcom/ardor3d/scenegraph/FloatBufferData;-><init>(Ljava/nio/FloatBuffer;I)V

    return-object v0
.end method

.method public static makeNew([Lcom/ardor3d/math/type/ReadOnlyVector3;)Lcom/ardor3d/scenegraph/FloatBufferData;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 2
    :cond_0
    new-instance v0, Lcom/ardor3d/scenegraph/FloatBufferData;

    invoke-static {p0}, Lcom/ardor3d/util/geom/BufferUtils;->createFloatBuffer([Lcom/ardor3d/math/type/ReadOnlyVector3;)Ljava/nio/FloatBuffer;

    move-result-object p0

    const/4 v1, 0x3

    invoke-direct {v0, p0, v1}, Lcom/ardor3d/scenegraph/FloatBufferData;-><init>(Ljava/nio/FloatBuffer;I)V

    return-object v0
.end method
