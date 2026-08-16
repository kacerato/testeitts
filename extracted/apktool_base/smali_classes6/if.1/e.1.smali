.class public final Lif/e;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ljava/util/logging/Logger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lif/e;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lif/e;->a:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lcom/jme3/scene/VertexBuffer;ILcom/jme3/scene/VertexBuffer;I)V
    .locals 5

    invoke-virtual {p0}, Lcom/jme3/scene/VertexBuffer;->getNumElements()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    const-string v2, "source index"

    const/4 v3, 0x0

    invoke-static {p1, v2, v3, v0}, Lif/E;->i(ILjava/lang/String;II)Z

    invoke-virtual {p2}, Lcom/jme3/scene/VertexBuffer;->getNumElements()I

    move-result v0

    const-string v2, "target index"

    sub-int/2addr v0, v1

    invoke-static {p3, v2, v3, v0}, Lif/E;->i(ILjava/lang/String;II)Z

    invoke-virtual {p0}, Lcom/jme3/scene/VertexBuffer;->getBufferType()Lcom/jme3/scene/VertexBuffer$Type;

    move-result-object v0

    invoke-virtual {p2}, Lcom/jme3/scene/VertexBuffer;->getBufferType()Lcom/jme3/scene/VertexBuffer$Type;

    move-result-object v2

    if-ne v0, v2, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v3

    :goto_0
    const-string v2, "same buffer type"

    invoke-static {v0, v2}, Lif/E;->H(ZLjava/lang/String;)Z

    invoke-virtual {p0}, Lcom/jme3/scene/VertexBuffer;->getFormat()Lcom/jme3/scene/VertexBuffer$Format;

    move-result-object v0

    invoke-virtual {p2}, Lcom/jme3/scene/VertexBuffer;->getFormat()Lcom/jme3/scene/VertexBuffer$Format;

    move-result-object v2

    if-ne v0, v2, :cond_1

    move v0, v1

    goto :goto_1

    :cond_1
    move v0, v3

    :goto_1
    const-string v2, "same format"

    invoke-static {v0, v2}, Lif/E;->H(ZLjava/lang/String;)Z

    invoke-virtual {p0}, Lcom/jme3/scene/VertexBuffer;->getNumComponents()I

    move-result v0

    invoke-virtual {p2}, Lcom/jme3/scene/VertexBuffer;->getNumComponents()I

    move-result v2

    if-ne v0, v2, :cond_2

    goto :goto_2

    :cond_2
    move v1, v3

    :goto_2
    const-string v0, "same number of components"

    invoke-static {v1, v0}, Lif/E;->H(ZLjava/lang/String;)Z

    invoke-virtual {p2}, Lcom/jme3/scene/VertexBuffer;->getNumComponents()I

    move-result v0

    invoke-virtual {p2}, Lcom/jme3/scene/VertexBuffer;->getFormat()Lcom/jme3/scene/VertexBuffer$Format;

    move-result-object v1

    sget-object v2, Lcom/jme3/scene/VertexBuffer$Format;->Half:Lcom/jme3/scene/VertexBuffer$Format;

    if-ne v1, v2, :cond_3

    mul-int/lit8 v0, v0, 0x2

    :cond_3
    mul-int/2addr p1, v0

    mul-int/2addr p3, v0

    sget-object v2, Lif/e$a;->a:[I

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aget v2, v2, v4

    packed-switch v2, :pswitch_data_0

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Unrecognized buffer format: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1, p0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_0
    invoke-virtual {p0}, Lcom/jme3/scene/VertexBuffer;->getData()Ljava/nio/Buffer;

    move-result-object p0

    check-cast p0, Ljava/nio/ShortBuffer;

    invoke-virtual {p2}, Lcom/jme3/scene/VertexBuffer;->getData()Ljava/nio/Buffer;

    move-result-object p2

    check-cast p2, Ljava/nio/ShortBuffer;

    :goto_3
    if-ge v3, v0, :cond_4

    add-int v1, p1, v3

    invoke-virtual {p0, v1}, Ljava/nio/ShortBuffer;->get(I)S

    move-result v1

    add-int v2, p3, v3

    invoke-virtual {p2, v2, v1}, Ljava/nio/ShortBuffer;->put(IS)Ljava/nio/ShortBuffer;

    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :pswitch_1
    invoke-virtual {p0}, Lcom/jme3/scene/VertexBuffer;->getData()Ljava/nio/Buffer;

    move-result-object p0

    check-cast p0, Ljava/nio/IntBuffer;

    invoke-virtual {p2}, Lcom/jme3/scene/VertexBuffer;->getData()Ljava/nio/Buffer;

    move-result-object p2

    check-cast p2, Ljava/nio/IntBuffer;

    :goto_4
    if-ge v3, v0, :cond_4

    add-int v1, p1, v3

    invoke-virtual {p0, v1}, Ljava/nio/IntBuffer;->get(I)I

    move-result v1

    add-int v2, p3, v3

    invoke-virtual {p2, v2, v1}, Ljava/nio/IntBuffer;->put(II)Ljava/nio/IntBuffer;

    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    :pswitch_2
    invoke-virtual {p0}, Lcom/jme3/scene/VertexBuffer;->getData()Ljava/nio/Buffer;

    move-result-object p0

    check-cast p0, Ljava/nio/FloatBuffer;

    invoke-virtual {p2}, Lcom/jme3/scene/VertexBuffer;->getData()Ljava/nio/Buffer;

    move-result-object p2

    check-cast p2, Ljava/nio/FloatBuffer;

    :goto_5
    if-ge v3, v0, :cond_4

    add-int v1, p1, v3

    invoke-virtual {p0, v1}, Ljava/nio/FloatBuffer;->get(I)F

    move-result v1

    add-int v2, p3, v3

    invoke-virtual {p2, v2, v1}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    :pswitch_3
    invoke-virtual {p0}, Lcom/jme3/scene/VertexBuffer;->getData()Ljava/nio/Buffer;

    move-result-object p0

    check-cast p0, Ljava/nio/DoubleBuffer;

    invoke-virtual {p2}, Lcom/jme3/scene/VertexBuffer;->getData()Ljava/nio/Buffer;

    move-result-object p2

    check-cast p2, Ljava/nio/DoubleBuffer;

    :goto_6
    if-ge v3, v0, :cond_4

    add-int v1, p1, v3

    invoke-virtual {p0, v1}, Ljava/nio/DoubleBuffer;->get(I)D

    move-result-wide v1

    add-int v4, p3, v3

    invoke-virtual {p2, v4, v1, v2}, Ljava/nio/DoubleBuffer;->put(ID)Ljava/nio/DoubleBuffer;

    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    :pswitch_4
    invoke-virtual {p0}, Lcom/jme3/scene/VertexBuffer;->getData()Ljava/nio/Buffer;

    move-result-object p0

    check-cast p0, Ljava/nio/ByteBuffer;

    invoke-virtual {p2}, Lcom/jme3/scene/VertexBuffer;->getData()Ljava/nio/Buffer;

    move-result-object p2

    check-cast p2, Ljava/nio/ByteBuffer;

    :goto_7
    if-ge v3, v0, :cond_4

    add-int v1, p1, v3

    invoke-virtual {p0, v1}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v1

    add-int v2, p3, v3

    invoke-virtual {p2, v2, v1}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    add-int/lit8 v3, v3, 0x1

    goto :goto_7

    :cond_4
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public static b(Lcom/jme3/scene/VertexBuffer;II)Z
    .locals 8

    invoke-virtual {p0}, Lcom/jme3/scene/VertexBuffer;->getNumElements()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    const-string v2, "index1"

    const/4 v3, 0x0

    invoke-static {p1, v2, v3, v0}, Lif/E;->i(ILjava/lang/String;II)Z

    const-string v2, "index2"

    invoke-static {p2, v2, v3, v0}, Lif/E;->i(ILjava/lang/String;II)Z

    if-ne p1, p2, :cond_0

    return v1

    :cond_0
    invoke-virtual {p0}, Lcom/jme3/scene/VertexBuffer;->getNumComponents()I

    move-result v0

    invoke-virtual {p0}, Lcom/jme3/scene/VertexBuffer;->getFormat()Lcom/jme3/scene/VertexBuffer$Format;

    move-result-object v2

    sget-object v4, Lcom/jme3/scene/VertexBuffer$Format;->Half:Lcom/jme3/scene/VertexBuffer$Format;

    if-ne v2, v4, :cond_1

    mul-int/lit8 v0, v0, 0x2

    :cond_1
    mul-int/2addr p1, v0

    mul-int/2addr p2, v0

    sget-object v4, Lif/e$a;->a:[I

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_0

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Unrecognized buffer format: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1, p0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_0
    invoke-virtual {p0}, Lcom/jme3/scene/VertexBuffer;->getData()Ljava/nio/Buffer;

    move-result-object p0

    check-cast p0, Ljava/nio/ShortBuffer;

    move v2, v3

    :goto_0
    if-ge v2, v0, :cond_7

    add-int v4, p1, v2

    invoke-virtual {p0, v4}, Ljava/nio/ShortBuffer;->get(I)S

    move-result v4

    add-int v5, p2, v2

    invoke-virtual {p0, v5}, Ljava/nio/ShortBuffer;->get(I)S

    move-result v5

    if-eq v4, v5, :cond_2

    return v3

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :pswitch_1
    invoke-virtual {p0}, Lcom/jme3/scene/VertexBuffer;->getData()Ljava/nio/Buffer;

    move-result-object p0

    check-cast p0, Ljava/nio/IntBuffer;

    move v2, v3

    :goto_1
    if-ge v2, v0, :cond_7

    add-int v4, p1, v2

    invoke-virtual {p0, v4}, Ljava/nio/IntBuffer;->get(I)I

    move-result v4

    add-int v5, p2, v2

    invoke-virtual {p0, v5}, Ljava/nio/IntBuffer;->get(I)I

    move-result v5

    if-eq v4, v5, :cond_3

    return v3

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :pswitch_2
    invoke-virtual {p0}, Lcom/jme3/scene/VertexBuffer;->getData()Ljava/nio/Buffer;

    move-result-object p0

    check-cast p0, Ljava/nio/FloatBuffer;

    move v2, v3

    :goto_2
    if-ge v2, v0, :cond_7

    add-int v4, p1, v2

    invoke-virtual {p0, v4}, Ljava/nio/FloatBuffer;->get(I)F

    move-result v4

    add-int v5, p2, v2

    invoke-virtual {p0, v5}, Ljava/nio/FloatBuffer;->get(I)F

    move-result v5

    cmpl-float v4, v4, v5

    if-eqz v4, :cond_4

    return v3

    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :pswitch_3
    invoke-virtual {p0}, Lcom/jme3/scene/VertexBuffer;->getData()Ljava/nio/Buffer;

    move-result-object p0

    check-cast p0, Ljava/nio/DoubleBuffer;

    move v2, v3

    :goto_3
    if-ge v2, v0, :cond_7

    add-int v4, p1, v2

    invoke-virtual {p0, v4}, Ljava/nio/DoubleBuffer;->get(I)D

    move-result-wide v4

    add-int v6, p2, v2

    invoke-virtual {p0, v6}, Ljava/nio/DoubleBuffer;->get(I)D

    move-result-wide v6

    cmpl-double v4, v4, v6

    if-eqz v4, :cond_5

    return v3

    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :pswitch_4
    invoke-virtual {p0}, Lcom/jme3/scene/VertexBuffer;->getData()Ljava/nio/Buffer;

    move-result-object p0

    check-cast p0, Ljava/nio/ByteBuffer;

    move v2, v3

    :goto_4
    if-ge v2, v0, :cond_7

    add-int v4, p1, v2

    invoke-virtual {p0, v4}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v4

    add-int v5, p2, v2

    invoke-virtual {p0, v5}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v5

    if-eq v4, v5, :cond_6

    return v3

    :cond_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_7
    return v1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public static c(FLcom/jme3/scene/VertexBuffer;IILcom/jme3/scene/VertexBuffer;I)V
    .locals 8

    invoke-virtual {p1}, Lcom/jme3/scene/VertexBuffer;->getNumElements()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    const-string v2, "source index(t=0)"

    const/4 v3, 0x0

    invoke-static {p2, v2, v3, v0}, Lif/E;->i(ILjava/lang/String;II)Z

    const-string v2, "source index(t=1)"

    invoke-static {p3, v2, v3, v0}, Lif/E;->i(ILjava/lang/String;II)Z

    invoke-virtual {p4}, Lcom/jme3/scene/VertexBuffer;->getNumElements()I

    move-result v0

    const-string v2, "target index"

    sub-int/2addr v0, v1

    invoke-static {p5, v2, v3, v0}, Lif/E;->i(ILjava/lang/String;II)Z

    invoke-virtual {p1}, Lcom/jme3/scene/VertexBuffer;->getBufferType()Lcom/jme3/scene/VertexBuffer$Type;

    move-result-object v0

    invoke-virtual {p4}, Lcom/jme3/scene/VertexBuffer;->getBufferType()Lcom/jme3/scene/VertexBuffer$Type;

    move-result-object v2

    if-ne v0, v2, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v3

    :goto_0
    const-string v2, "same buffer type"

    invoke-static {v0, v2}, Lif/E;->H(ZLjava/lang/String;)Z

    invoke-virtual {p1}, Lcom/jme3/scene/VertexBuffer;->getNumComponents()I

    move-result v0

    invoke-virtual {p4}, Lcom/jme3/scene/VertexBuffer;->getNumComponents()I

    move-result v2

    if-ne v0, v2, :cond_1

    move v0, v1

    goto :goto_1

    :cond_1
    move v0, v3

    :goto_1
    const-string v2, "same number of components"

    invoke-static {v0, v2}, Lif/E;->H(ZLjava/lang/String;)Z

    invoke-virtual {p4}, Lcom/jme3/scene/VertexBuffer;->getFormat()Lcom/jme3/scene/VertexBuffer$Format;

    move-result-object v0

    sget-object v2, Lcom/jme3/scene/VertexBuffer$Format;->Float:Lcom/jme3/scene/VertexBuffer$Format;

    if-ne v0, v2, :cond_2

    goto :goto_2

    :cond_2
    move v1, v3

    :goto_2
    const-string v0, "Float format"

    invoke-static {v1, v0}, Lif/E;->H(ZLjava/lang/String;)Z

    invoke-virtual {p4}, Lcom/jme3/scene/VertexBuffer;->getNumComponents()I

    move-result v0

    invoke-virtual {p4}, Lcom/jme3/scene/VertexBuffer;->getFormat()Lcom/jme3/scene/VertexBuffer$Format;

    move-result-object v1

    sget-object v2, Lcom/jme3/scene/VertexBuffer$Format;->Half:Lcom/jme3/scene/VertexBuffer$Format;

    if-ne v1, v2, :cond_3

    mul-int/lit8 v0, v0, 0x2

    :cond_3
    mul-int/2addr p2, v0

    mul-int/2addr p3, v0

    mul-int/2addr p5, v0

    invoke-virtual {p4}, Lcom/jme3/scene/VertexBuffer;->getData()Ljava/nio/Buffer;

    move-result-object p4

    check-cast p4, Ljava/nio/FloatBuffer;

    sget-object v2, Lif/e$a;->a:[I

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aget v2, v2, v4

    packed-switch v2, :pswitch_data_0

    :pswitch_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Unrecognized buffer format: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1, p0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_1
    invoke-virtual {p1}, Lcom/jme3/scene/VertexBuffer;->getData()Ljava/nio/Buffer;

    move-result-object p1

    check-cast p1, Ljava/nio/ShortBuffer;

    :goto_3
    if-ge v3, v0, :cond_4

    add-int v1, p2, v3

    invoke-virtual {p1, v1}, Ljava/nio/ShortBuffer;->get(I)S

    move-result v1

    add-int v2, p3, v3

    invoke-virtual {p1, v2}, Ljava/nio/ShortBuffer;->get(I)S

    move-result v2

    const v4, 0xffff

    and-int/2addr v1, v4

    and-int/2addr v2, v4

    int-to-float v1, v1

    int-to-float v2, v2

    invoke-static {p0, v1, v2}, Ljf/f;->y(FFF)F

    move-result v1

    add-int v2, p5, v3

    invoke-virtual {p4, v2, v1}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :pswitch_2
    invoke-virtual {p1}, Lcom/jme3/scene/VertexBuffer;->getData()Ljava/nio/Buffer;

    move-result-object p1

    check-cast p1, Ljava/nio/ShortBuffer;

    :goto_4
    if-ge v3, v0, :cond_4

    add-int v1, p2, v3

    invoke-virtual {p1, v1}, Ljava/nio/ShortBuffer;->get(I)S

    move-result v1

    add-int v2, p3, v3

    invoke-virtual {p1, v2}, Ljava/nio/ShortBuffer;->get(I)S

    move-result v2

    int-to-float v1, v1

    int-to-float v2, v2

    invoke-static {p0, v1, v2}, Ljf/f;->y(FFF)F

    move-result v1

    add-int v2, p5, v3

    invoke-virtual {p4, v2, v1}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    :pswitch_3
    invoke-virtual {p1}, Lcom/jme3/scene/VertexBuffer;->getData()Ljava/nio/Buffer;

    move-result-object p1

    check-cast p1, Ljava/nio/IntBuffer;

    :goto_5
    if-ge v3, v0, :cond_4

    add-int v1, p2, v3

    invoke-virtual {p1, v1}, Ljava/nio/IntBuffer;->get(I)I

    move-result v1

    add-int v2, p3, v3

    invoke-virtual {p1, v2}, Ljava/nio/IntBuffer;->get(I)I

    move-result v2

    int-to-long v4, v1

    const-wide v6, 0xffffffffL

    and-long/2addr v4, v6

    int-to-long v1, v2

    and-long/2addr v1, v6

    long-to-float v4, v4

    long-to-float v1, v1

    invoke-static {p0, v4, v1}, Ljf/f;->y(FFF)F

    move-result v1

    add-int v2, p5, v3

    invoke-virtual {p4, v2, v1}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    :pswitch_4
    invoke-virtual {p1}, Lcom/jme3/scene/VertexBuffer;->getData()Ljava/nio/Buffer;

    move-result-object p1

    check-cast p1, Ljava/nio/IntBuffer;

    :goto_6
    if-ge v3, v0, :cond_4

    add-int v1, p2, v3

    invoke-virtual {p1, v1}, Ljava/nio/IntBuffer;->get(I)I

    move-result v1

    add-int v2, p3, v3

    invoke-virtual {p1, v2}, Ljava/nio/IntBuffer;->get(I)I

    move-result v2

    int-to-float v1, v1

    int-to-float v2, v2

    invoke-static {p0, v1, v2}, Ljf/f;->y(FFF)F

    move-result v1

    add-int v2, p5, v3

    invoke-virtual {p4, v2, v1}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    :pswitch_5
    invoke-virtual {p1}, Lcom/jme3/scene/VertexBuffer;->getData()Ljava/nio/Buffer;

    move-result-object p1

    check-cast p1, Ljava/nio/FloatBuffer;

    :goto_7
    if-ge v3, v0, :cond_4

    add-int v1, p2, v3

    invoke-virtual {p1, v1}, Ljava/nio/FloatBuffer;->get(I)F

    move-result v1

    add-int v2, p3, v3

    invoke-virtual {p1, v2}, Ljava/nio/FloatBuffer;->get(I)F

    move-result v2

    invoke-static {p0, v1, v2}, Ljf/f;->y(FFF)F

    move-result v1

    add-int v2, p5, v3

    invoke-virtual {p4, v2, v1}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    add-int/lit8 v3, v3, 0x1

    goto :goto_7

    :pswitch_6
    invoke-virtual {p1}, Lcom/jme3/scene/VertexBuffer;->getData()Ljava/nio/Buffer;

    move-result-object p1

    check-cast p1, Ljava/nio/DoubleBuffer;

    :goto_8
    if-ge v3, v0, :cond_4

    add-int v1, p2, v3

    invoke-virtual {p1, v1}, Ljava/nio/DoubleBuffer;->get(I)D

    move-result-wide v1

    add-int v4, p3, v3

    invoke-virtual {p1, v4}, Ljava/nio/DoubleBuffer;->get(I)D

    move-result-wide v4

    double-to-float v1, v1

    double-to-float v2, v4

    invoke-static {p0, v1, v2}, Ljf/f;->y(FFF)F

    move-result v1

    add-int v2, p5, v3

    invoke-virtual {p4, v2, v1}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    add-int/lit8 v3, v3, 0x1

    goto :goto_8

    :pswitch_7
    invoke-virtual {p1}, Lcom/jme3/scene/VertexBuffer;->getData()Ljava/nio/Buffer;

    move-result-object p1

    check-cast p1, Ljava/nio/ByteBuffer;

    :goto_9
    if-ge v3, v0, :cond_4

    add-int v1, p2, v3

    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v1

    add-int v2, p3, v3

    invoke-virtual {p1, v2}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v2

    and-int/lit16 v1, v1, 0xff

    and-int/lit16 v2, v2, 0xff

    int-to-float v1, v1

    int-to-float v2, v2

    invoke-static {p0, v1, v2}, Ljf/f;->y(FFF)F

    move-result v1

    add-int v2, p5, v3

    invoke-virtual {p4, v2, v1}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    add-int/lit8 v3, v3, 0x1

    goto :goto_9

    :pswitch_8
    invoke-virtual {p1}, Lcom/jme3/scene/VertexBuffer;->getData()Ljava/nio/Buffer;

    move-result-object p1

    check-cast p1, Ljava/nio/ByteBuffer;

    :goto_a
    if-ge v3, v0, :cond_4

    add-int v1, p2, v3

    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v1

    add-int v2, p3, v3

    invoke-virtual {p1, v2}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v2

    int-to-float v1, v1

    int-to-float v2, v2

    invoke-static {p0, v1, v2}, Ljf/f;->y(FFF)F

    move-result v1

    add-int v2, p5, v3

    invoke-virtual {p4, v2, v1}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    add-int/lit8 v3, v3, 0x1

    goto :goto_a

    :cond_4
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_8
        :pswitch_0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public static d(FFLcom/jme3/scene/VertexBuffer;IIILcom/jme3/scene/VertexBuffer;I)V
    .locals 17

    move/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p3

    move/from16 v3, p4

    move/from16 v4, p5

    move/from16 v5, p7

    invoke-virtual/range {p2 .. p2}, Lcom/jme3/scene/VertexBuffer;->getNumElements()I

    move-result v6

    const/4 v7, 0x1

    sub-int/2addr v6, v7

    const-string v8, "source index(0,0)"

    const/4 v9, 0x0

    invoke-static {v2, v8, v9, v6}, Lif/E;->i(ILjava/lang/String;II)Z

    const-string v8, "source index(1,0)"

    invoke-static {v3, v8, v9, v6}, Lif/E;->i(ILjava/lang/String;II)Z

    const-string v8, "source index(0,1)"

    invoke-static {v4, v8, v9, v6}, Lif/E;->i(ILjava/lang/String;II)Z

    invoke-virtual/range {p6 .. p6}, Lcom/jme3/scene/VertexBuffer;->getNumElements()I

    move-result v6

    const-string v8, "target index"

    sub-int/2addr v6, v7

    invoke-static {v5, v8, v9, v6}, Lif/E;->i(ILjava/lang/String;II)Z

    invoke-virtual/range {p2 .. p2}, Lcom/jme3/scene/VertexBuffer;->getBufferType()Lcom/jme3/scene/VertexBuffer$Type;

    move-result-object v6

    invoke-virtual/range {p6 .. p6}, Lcom/jme3/scene/VertexBuffer;->getBufferType()Lcom/jme3/scene/VertexBuffer$Type;

    move-result-object v8

    if-ne v6, v8, :cond_0

    move v6, v7

    goto :goto_0

    :cond_0
    move v6, v9

    :goto_0
    const-string v8, "same buffer type"

    invoke-static {v6, v8}, Lif/E;->H(ZLjava/lang/String;)Z

    invoke-virtual/range {p2 .. p2}, Lcom/jme3/scene/VertexBuffer;->getNumComponents()I

    move-result v6

    invoke-virtual/range {p6 .. p6}, Lcom/jme3/scene/VertexBuffer;->getNumComponents()I

    move-result v8

    if-ne v6, v8, :cond_1

    move v6, v7

    goto :goto_1

    :cond_1
    move v6, v9

    :goto_1
    const-string v8, "same number of components"

    invoke-static {v6, v8}, Lif/E;->H(ZLjava/lang/String;)Z

    invoke-virtual/range {p6 .. p6}, Lcom/jme3/scene/VertexBuffer;->getFormat()Lcom/jme3/scene/VertexBuffer$Format;

    move-result-object v6

    sget-object v8, Lcom/jme3/scene/VertexBuffer$Format;->Float:Lcom/jme3/scene/VertexBuffer$Format;

    if-ne v6, v8, :cond_2

    goto :goto_2

    :cond_2
    move v7, v9

    :goto_2
    const-string v6, "Float format"

    invoke-static {v7, v6}, Lif/E;->H(ZLjava/lang/String;)Z

    invoke-virtual/range {p6 .. p6}, Lcom/jme3/scene/VertexBuffer;->getNumComponents()I

    move-result v6

    invoke-virtual/range {p6 .. p6}, Lcom/jme3/scene/VertexBuffer;->getFormat()Lcom/jme3/scene/VertexBuffer$Format;

    move-result-object v7

    sget-object v8, Lcom/jme3/scene/VertexBuffer$Format;->Half:Lcom/jme3/scene/VertexBuffer$Format;

    if-ne v7, v8, :cond_3

    mul-int/lit8 v6, v6, 0x2

    :cond_3
    mul-int/2addr v2, v6

    mul-int/2addr v3, v6

    mul-int/2addr v4, v6

    mul-int/2addr v5, v6

    invoke-virtual/range {p6 .. p6}, Lcom/jme3/scene/VertexBuffer;->getData()Ljava/nio/Buffer;

    move-result-object v8

    check-cast v8, Ljava/nio/FloatBuffer;

    sget-object v10, Lif/e$a;->a:[I

    invoke-virtual {v7}, Ljava/lang/Enum;->ordinal()I

    move-result v11

    aget v10, v10, v11

    packed-switch v10, :pswitch_data_0

    :pswitch_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unrecognized buffer format: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v1

    :pswitch_1
    invoke-virtual/range {p2 .. p2}, Lcom/jme3/scene/VertexBuffer;->getData()Ljava/nio/Buffer;

    move-result-object v7

    check-cast v7, Ljava/nio/ShortBuffer;

    :goto_3
    if-ge v9, v6, :cond_4

    add-int v10, v2, v9

    invoke-virtual {v7, v10}, Ljava/nio/ShortBuffer;->get(I)S

    move-result v10

    add-int v11, v3, v9

    invoke-virtual {v7, v11}, Ljava/nio/ShortBuffer;->get(I)S

    move-result v11

    add-int v12, v4, v9

    invoke-virtual {v7, v12}, Ljava/nio/ShortBuffer;->get(I)S

    move-result v12

    const v13, 0xffff

    and-int/2addr v10, v13

    and-int/2addr v11, v13

    and-int/2addr v12, v13

    int-to-float v10, v10

    int-to-float v11, v11

    int-to-float v12, v12

    invoke-static {v0, v1, v10, v11, v12}, Ljf/f;->z(FFFFF)F

    move-result v10

    add-int v11, v5, v9

    invoke-virtual {v8, v11, v10}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    add-int/lit8 v9, v9, 0x1

    goto :goto_3

    :pswitch_2
    invoke-virtual/range {p2 .. p2}, Lcom/jme3/scene/VertexBuffer;->getData()Ljava/nio/Buffer;

    move-result-object v7

    check-cast v7, Ljava/nio/ShortBuffer;

    :goto_4
    if-ge v9, v6, :cond_4

    add-int v10, v2, v9

    invoke-virtual {v7, v10}, Ljava/nio/ShortBuffer;->get(I)S

    move-result v10

    add-int v11, v3, v9

    invoke-virtual {v7, v11}, Ljava/nio/ShortBuffer;->get(I)S

    move-result v11

    add-int v12, v4, v9

    invoke-virtual {v7, v12}, Ljava/nio/ShortBuffer;->get(I)S

    move-result v12

    int-to-float v10, v10

    int-to-float v11, v11

    int-to-float v12, v12

    invoke-static {v0, v1, v10, v11, v12}, Ljf/f;->z(FFFFF)F

    move-result v10

    add-int v11, v5, v9

    invoke-virtual {v8, v11, v10}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    add-int/lit8 v9, v9, 0x1

    goto :goto_4

    :pswitch_3
    invoke-virtual/range {p2 .. p2}, Lcom/jme3/scene/VertexBuffer;->getData()Ljava/nio/Buffer;

    move-result-object v7

    check-cast v7, Ljava/nio/IntBuffer;

    :goto_5
    if-ge v9, v6, :cond_4

    add-int v10, v2, v9

    invoke-virtual {v7, v10}, Ljava/nio/IntBuffer;->get(I)I

    move-result v10

    add-int v11, v3, v9

    invoke-virtual {v7, v11}, Ljava/nio/IntBuffer;->get(I)I

    move-result v11

    add-int v12, v4, v9

    invoke-virtual {v7, v12}, Ljava/nio/IntBuffer;->get(I)I

    move-result v12

    int-to-long v13, v10

    const-wide v15, 0xffffffffL

    and-long/2addr v13, v15

    int-to-long v10, v11

    and-long/2addr v10, v15

    move/from16 p3, v3

    move/from16 p4, v4

    int-to-long v3, v12

    and-long/2addr v3, v15

    long-to-float v12, v13

    long-to-float v10, v10

    long-to-float v3, v3

    invoke-static {v0, v1, v12, v10, v3}, Ljf/f;->z(FFFFF)F

    move-result v3

    add-int v4, v5, v9

    invoke-virtual {v8, v4, v3}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    add-int/lit8 v9, v9, 0x1

    move/from16 v3, p3

    move/from16 v4, p4

    goto :goto_5

    :pswitch_4
    move/from16 p3, v3

    move/from16 p4, v4

    invoke-virtual/range {p2 .. p2}, Lcom/jme3/scene/VertexBuffer;->getData()Ljava/nio/Buffer;

    move-result-object v3

    check-cast v3, Ljava/nio/IntBuffer;

    :goto_6
    if-ge v9, v6, :cond_4

    add-int v4, v2, v9

    invoke-virtual {v3, v4}, Ljava/nio/IntBuffer;->get(I)I

    move-result v4

    add-int v7, p3, v9

    invoke-virtual {v3, v7}, Ljava/nio/IntBuffer;->get(I)I

    move-result v7

    add-int v10, p4, v9

    invoke-virtual {v3, v10}, Ljava/nio/IntBuffer;->get(I)I

    move-result v10

    int-to-float v4, v4

    int-to-float v7, v7

    int-to-float v10, v10

    invoke-static {v0, v1, v4, v7, v10}, Ljf/f;->z(FFFFF)F

    move-result v4

    add-int v7, v5, v9

    invoke-virtual {v8, v7, v4}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    add-int/lit8 v9, v9, 0x1

    goto :goto_6

    :pswitch_5
    move/from16 p3, v3

    move/from16 p4, v4

    invoke-virtual/range {p2 .. p2}, Lcom/jme3/scene/VertexBuffer;->getData()Ljava/nio/Buffer;

    move-result-object v3

    check-cast v3, Ljava/nio/FloatBuffer;

    :goto_7
    if-ge v9, v6, :cond_4

    add-int v4, v2, v9

    invoke-virtual {v3, v4}, Ljava/nio/FloatBuffer;->get(I)F

    move-result v4

    add-int v7, p3, v9

    invoke-virtual {v3, v7}, Ljava/nio/FloatBuffer;->get(I)F

    move-result v7

    add-int v10, p4, v9

    invoke-virtual {v3, v10}, Ljava/nio/FloatBuffer;->get(I)F

    move-result v10

    invoke-static {v0, v1, v4, v7, v10}, Ljf/f;->z(FFFFF)F

    move-result v4

    add-int v7, v5, v9

    invoke-virtual {v8, v7, v4}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    add-int/lit8 v9, v9, 0x1

    goto :goto_7

    :pswitch_6
    move/from16 p3, v3

    move/from16 p4, v4

    invoke-virtual/range {p2 .. p2}, Lcom/jme3/scene/VertexBuffer;->getData()Ljava/nio/Buffer;

    move-result-object v3

    check-cast v3, Ljava/nio/DoubleBuffer;

    :goto_8
    if-ge v9, v6, :cond_4

    add-int v4, v2, v9

    invoke-virtual {v3, v4}, Ljava/nio/DoubleBuffer;->get(I)D

    move-result-wide v10

    add-int v4, p3, v9

    invoke-virtual {v3, v4}, Ljava/nio/DoubleBuffer;->get(I)D

    move-result-wide v12

    add-int v4, p4, v9

    invoke-virtual {v3, v4}, Ljava/nio/DoubleBuffer;->get(I)D

    move-result-wide v14

    double-to-float v4, v10

    double-to-float v7, v12

    double-to-float v10, v14

    invoke-static {v0, v1, v4, v7, v10}, Ljf/f;->z(FFFFF)F

    move-result v4

    add-int v7, v5, v9

    invoke-virtual {v8, v7, v4}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    add-int/lit8 v9, v9, 0x1

    goto :goto_8

    :pswitch_7
    move/from16 p3, v3

    move/from16 p4, v4

    invoke-virtual/range {p2 .. p2}, Lcom/jme3/scene/VertexBuffer;->getData()Ljava/nio/Buffer;

    move-result-object v3

    check-cast v3, Ljava/nio/ByteBuffer;

    :goto_9
    if-ge v9, v6, :cond_4

    add-int v4, v2, v9

    invoke-virtual {v3, v4}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v4

    add-int v7, p3, v9

    invoke-virtual {v3, v7}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v7

    add-int v10, p4, v9

    invoke-virtual {v3, v10}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v10

    and-int/lit16 v4, v4, 0xff

    and-int/lit16 v7, v7, 0xff

    and-int/lit16 v10, v10, 0xff

    int-to-float v4, v4

    int-to-float v7, v7

    int-to-float v10, v10

    invoke-static {v0, v1, v4, v7, v10}, Ljf/f;->z(FFFFF)F

    move-result v4

    add-int v7, v5, v9

    invoke-virtual {v8, v7, v4}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    add-int/lit8 v9, v9, 0x1

    goto :goto_9

    :pswitch_8
    move/from16 p3, v3

    move/from16 p4, v4

    invoke-virtual/range {p2 .. p2}, Lcom/jme3/scene/VertexBuffer;->getData()Ljava/nio/Buffer;

    move-result-object v3

    check-cast v3, Ljava/nio/ByteBuffer;

    :goto_a
    if-ge v9, v6, :cond_4

    add-int v4, v2, v9

    invoke-virtual {v3, v4}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v4

    add-int v7, p3, v9

    invoke-virtual {v3, v7}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v7

    add-int v10, p4, v9

    invoke-virtual {v3, v10}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v10

    int-to-float v4, v4

    int-to-float v7, v7

    int-to-float v10, v10

    invoke-static {v0, v1, v4, v7, v10}, Ljf/f;->z(FFFFF)F

    move-result v4

    add-int v7, v5, v9

    invoke-virtual {v8, v7, v4}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    add-int/lit8 v9, v9, 0x1

    goto :goto_a

    :cond_4
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_8
        :pswitch_0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public static e(Lcom/jme3/scene/VertexBuffer;II)V
    .locals 8

    invoke-virtual {p0}, Lcom/jme3/scene/VertexBuffer;->getNumElements()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    const-string v1, "index1"

    const/4 v2, 0x0

    invoke-static {p1, v1, v2, v0}, Lif/E;->i(ILjava/lang/String;II)Z

    const-string v1, "index2"

    invoke-static {p2, v1, v2, v0}, Lif/E;->i(ILjava/lang/String;II)Z

    if-ne p1, p2, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/jme3/scene/VertexBuffer;->getNumComponents()I

    move-result v0

    invoke-virtual {p0}, Lcom/jme3/scene/VertexBuffer;->getFormat()Lcom/jme3/scene/VertexBuffer$Format;

    move-result-object v1

    sget-object v3, Lcom/jme3/scene/VertexBuffer$Format;->Half:Lcom/jme3/scene/VertexBuffer$Format;

    if-ne v1, v3, :cond_1

    mul-int/lit8 v0, v0, 0x2

    :cond_1
    mul-int/2addr p1, v0

    mul-int/2addr p2, v0

    sget-object v3, Lif/e$a;->a:[I

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Unrecognized buffer format: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1, p0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_0
    invoke-virtual {p0}, Lcom/jme3/scene/VertexBuffer;->getData()Ljava/nio/Buffer;

    move-result-object p0

    check-cast p0, Ljava/nio/ShortBuffer;

    :goto_0
    if-ge v2, v0, :cond_2

    add-int v1, p1, v2

    invoke-virtual {p0, v1}, Ljava/nio/ShortBuffer;->get(I)S

    move-result v3

    add-int v4, p2, v2

    invoke-virtual {p0, v4}, Ljava/nio/ShortBuffer;->get(I)S

    move-result v5

    invoke-virtual {p0, v1, v5}, Ljava/nio/ShortBuffer;->put(IS)Ljava/nio/ShortBuffer;

    invoke-virtual {p0, v4, v3}, Ljava/nio/ShortBuffer;->put(IS)Ljava/nio/ShortBuffer;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :pswitch_1
    invoke-virtual {p0}, Lcom/jme3/scene/VertexBuffer;->getData()Ljava/nio/Buffer;

    move-result-object p0

    check-cast p0, Ljava/nio/IntBuffer;

    :goto_1
    if-ge v2, v0, :cond_2

    add-int v1, p1, v2

    invoke-virtual {p0, v1}, Ljava/nio/IntBuffer;->get(I)I

    move-result v3

    add-int v4, p2, v2

    invoke-virtual {p0, v4}, Ljava/nio/IntBuffer;->get(I)I

    move-result v5

    invoke-virtual {p0, v1, v5}, Ljava/nio/IntBuffer;->put(II)Ljava/nio/IntBuffer;

    invoke-virtual {p0, v4, v3}, Ljava/nio/IntBuffer;->put(II)Ljava/nio/IntBuffer;

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :pswitch_2
    invoke-virtual {p0}, Lcom/jme3/scene/VertexBuffer;->getData()Ljava/nio/Buffer;

    move-result-object p0

    check-cast p0, Ljava/nio/FloatBuffer;

    :goto_2
    if-ge v2, v0, :cond_2

    add-int v1, p1, v2

    invoke-virtual {p0, v1}, Ljava/nio/FloatBuffer;->get(I)F

    move-result v3

    add-int v4, p2, v2

    invoke-virtual {p0, v4}, Ljava/nio/FloatBuffer;->get(I)F

    move-result v5

    invoke-virtual {p0, v1, v5}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    invoke-virtual {p0, v4, v3}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :pswitch_3
    invoke-virtual {p0}, Lcom/jme3/scene/VertexBuffer;->getData()Ljava/nio/Buffer;

    move-result-object p0

    check-cast p0, Ljava/nio/DoubleBuffer;

    :goto_3
    if-ge v2, v0, :cond_2

    add-int v1, p1, v2

    invoke-virtual {p0, v1}, Ljava/nio/DoubleBuffer;->get(I)D

    move-result-wide v3

    add-int v5, p2, v2

    invoke-virtual {p0, v5}, Ljava/nio/DoubleBuffer;->get(I)D

    move-result-wide v6

    invoke-virtual {p0, v1, v6, v7}, Ljava/nio/DoubleBuffer;->put(ID)Ljava/nio/DoubleBuffer;

    invoke-virtual {p0, v5, v3, v4}, Ljava/nio/DoubleBuffer;->put(ID)Ljava/nio/DoubleBuffer;

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :pswitch_4
    invoke-virtual {p0}, Lcom/jme3/scene/VertexBuffer;->getData()Ljava/nio/Buffer;

    move-result-object p0

    check-cast p0, Ljava/nio/ByteBuffer;

    :goto_4
    if-ge v2, v0, :cond_2

    add-int v1, p1, v2

    invoke-virtual {p0, v1}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v3

    add-int v4, p2, v2

    invoke-virtual {p0, v4}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v5

    invoke-virtual {p0, v1, v5}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    invoke-virtual {p0, v4, v3}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_2
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
