.class public abstract Lpn/a;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/io/OutputStream;B)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "stream",
            "value"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1, p2}, Ljava/io/OutputStream;->write(I)V

    return-void
.end method

.method public b(Ljava/io/OutputStream;FLjava/nio/ByteOrder;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "stream",
            "value",
            "order"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p2}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result p2

    invoke-virtual {p0, p1, p2, p3}, Lpn/a;->c(Ljava/io/OutputStream;ILjava/nio/ByteOrder;)V

    return-void
.end method

.method public c(Ljava/io/OutputStream;ILjava/nio/ByteOrder;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "stream",
            "value",
            "order"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    if-ne p3, v0, :cond_0

    shr-int/lit8 p3, p2, 0x18

    and-int/lit16 p3, p3, 0xff

    invoke-virtual {p1, p3}, Ljava/io/OutputStream;->write(I)V

    shr-int/lit8 p3, p2, 0x10

    and-int/lit16 p3, p3, 0xff

    invoke-virtual {p1, p3}, Ljava/io/OutputStream;->write(I)V

    shr-int/lit8 p3, p2, 0x8

    and-int/lit16 p3, p3, 0xff

    invoke-virtual {p1, p3}, Ljava/io/OutputStream;->write(I)V

    and-int/lit16 p2, p2, 0xff

    invoke-virtual {p1, p2}, Ljava/io/OutputStream;->write(I)V

    goto :goto_0

    :cond_0
    and-int/lit16 p3, p2, 0xff

    invoke-virtual {p1, p3}, Ljava/io/OutputStream;->write(I)V

    shr-int/lit8 p3, p2, 0x8

    and-int/lit16 p3, p3, 0xff

    invoke-virtual {p1, p3}, Ljava/io/OutputStream;->write(I)V

    shr-int/lit8 p3, p2, 0x10

    and-int/lit16 p3, p3, 0xff

    invoke-virtual {p1, p3}, Ljava/io/OutputStream;->write(I)V

    shr-int/lit8 p2, p2, 0x18

    and-int/lit16 p2, p2, 0xff

    invoke-virtual {p1, p2}, Ljava/io/OutputStream;->write(I)V

    :goto_0
    return-void
.end method

.method public d(Ljava/io/OutputStream;JLjava/nio/ByteOrder;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "stream",
            "value",
            "order"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    const/16 v1, 0x20

    if-ne p4, v0, :cond_0

    ushr-long v0, p2, v1

    long-to-int v0, v0

    invoke-virtual {p0, p1, v0, p4}, Lpn/a;->c(Ljava/io/OutputStream;ILjava/nio/ByteOrder;)V

    long-to-int p2, p2

    invoke-virtual {p0, p1, p2, p4}, Lpn/a;->c(Ljava/io/OutputStream;ILjava/nio/ByteOrder;)V

    goto :goto_0

    :cond_0
    long-to-int v0, p2

    invoke-virtual {p0, p1, v0, p4}, Lpn/a;->c(Ljava/io/OutputStream;ILjava/nio/ByteOrder;)V

    ushr-long/2addr p2, v1

    long-to-int p2, p2

    invoke-virtual {p0, p1, p2, p4}, Lpn/a;->c(Ljava/io/OutputStream;ILjava/nio/ByteOrder;)V

    :goto_0
    return-void
.end method

.method public e(Ljava/io/OutputStream;Ljava/nio/ByteBuffer;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "stream",
            "data"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    invoke-virtual {p2}, Ljava/nio/Buffer;->remaining()I

    move-result v0

    new-array v0, v0, [B

    invoke-virtual {p2, v0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    return-void
.end method

.method public f(Ljava/io/OutputStream;SLjava/nio/ByteOrder;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "stream",
            "value",
            "order"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    if-ne p3, v0, :cond_0

    shr-int/lit8 p3, p2, 0x8

    and-int/lit16 p3, p3, 0xff

    invoke-virtual {p1, p3}, Ljava/io/OutputStream;->write(I)V

    and-int/lit16 p2, p2, 0xff

    invoke-virtual {p1, p2}, Ljava/io/OutputStream;->write(I)V

    goto :goto_0

    :cond_0
    and-int/lit16 p3, p2, 0xff

    invoke-virtual {p1, p3}, Ljava/io/OutputStream;->write(I)V

    shr-int/lit8 p2, p2, 0x8

    and-int/lit16 p2, p2, 0xff

    invoke-virtual {p1, p2}, Ljava/io/OutputStream;->write(I)V

    :goto_0
    return-void
.end method

.method public g(Ljava/io/OutputStream;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "stream",
            "bool"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    int-to-byte p2, p2

    invoke-virtual {p0, p1, p2}, Lpn/a;->a(Ljava/io/OutputStream;B)V

    return-void
.end method
