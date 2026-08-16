.class public Lpn/i;
.super Lpn/a;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lpn/a;-><init>()V

    return-void
.end method


# virtual methods
.method public h(Ljava/io/OutputStream;Ljn/y;Ljava/nio/ByteOrder;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "stream",
            "params",
            "order"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p2, Ljn/y;->a:[F

    const/4 v1, 0x0

    aget v0, v0, v1

    invoke-virtual {p0, p1, v0, p3}, Lpn/a;->b(Ljava/io/OutputStream;FLjava/nio/ByteOrder;)V

    iget-object v0, p2, Ljn/y;->a:[F

    const/4 v1, 0x1

    aget v0, v0, v1

    invoke-virtual {p0, p1, v0, p3}, Lpn/a;->b(Ljava/io/OutputStream;FLjava/nio/ByteOrder;)V

    iget-object v0, p2, Ljn/y;->a:[F

    const/4 v1, 0x2

    aget v0, v0, v1

    invoke-virtual {p0, p1, v0, p3}, Lpn/a;->b(Ljava/io/OutputStream;FLjava/nio/ByteOrder;)V

    iget v0, p2, Ljn/y;->b:F

    invoke-virtual {p0, p1, v0, p3}, Lpn/a;->b(Ljava/io/OutputStream;FLjava/nio/ByteOrder;)V

    iget v0, p2, Ljn/y;->c:F

    invoke-virtual {p0, p1, v0, p3}, Lpn/a;->b(Ljava/io/OutputStream;FLjava/nio/ByteOrder;)V

    iget v0, p2, Ljn/y;->d:I

    invoke-virtual {p0, p1, v0, p3}, Lpn/a;->c(Ljava/io/OutputStream;ILjava/nio/ByteOrder;)V

    iget p2, p2, Ljn/y;->e:I

    invoke-virtual {p0, p1, p2, p3}, Lpn/a;->c(Ljava/io/OutputStream;ILjava/nio/ByteOrder;)V

    return-void
.end method
