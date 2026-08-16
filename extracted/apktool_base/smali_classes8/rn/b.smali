.class public Lrn/b;
.super Lpn/a;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lpn/a;-><init>()V

    return-void
.end method


# virtual methods
.method public h(Ljava/io/OutputStream;Lqn/m;Ljava/nio/ByteOrder;Z)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "stream",
            "header",
            "order",
            "cCompatibility"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p2, Lqn/m;->a:I

    invoke-virtual {p0, p1, v0, p3}, Lpn/a;->c(Ljava/io/OutputStream;ILjava/nio/ByteOrder;)V

    iget v0, p2, Lqn/m;->b:I

    invoke-virtual {p0, p1, v0, p3}, Lpn/a;->c(Ljava/io/OutputStream;ILjava/nio/ByteOrder;)V

    iget v0, p2, Lqn/m;->c:I

    invoke-virtual {p0, p1, v0, p3}, Lpn/a;->c(Ljava/io/OutputStream;ILjava/nio/ByteOrder;)V

    iget v0, p2, Lqn/m;->d:I

    invoke-virtual {p0, p1, v0, p3}, Lpn/a;->c(Ljava/io/OutputStream;ILjava/nio/ByteOrder;)V

    iget v0, p2, Lqn/m;->e:I

    invoke-virtual {p0, p1, v0, p3}, Lpn/a;->c(Ljava/io/OutputStream;ILjava/nio/ByteOrder;)V

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    const/4 v2, 0x3

    if-ge v1, v2, :cond_0

    iget-object v2, p2, Lqn/m;->f:[F

    aget v2, v2, v1

    invoke-virtual {p0, p1, v2, p3}, Lpn/a;->b(Ljava/io/OutputStream;FLjava/nio/ByteOrder;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_1
    if-ge v1, v2, :cond_1

    iget-object v3, p2, Lqn/m;->g:[F

    aget v3, v3, v1

    invoke-virtual {p0, p1, v3, p3}, Lpn/a;->b(Ljava/io/OutputStream;FLjava/nio/ByteOrder;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    iget v1, p2, Lqn/m;->h:I

    int-to-short v1, v1

    invoke-virtual {p0, p1, v1, p3}, Lpn/a;->f(Ljava/io/OutputStream;SLjava/nio/ByteOrder;)V

    iget v1, p2, Lqn/m;->i:I

    int-to-short v1, v1

    invoke-virtual {p0, p1, v1, p3}, Lpn/a;->f(Ljava/io/OutputStream;SLjava/nio/ByteOrder;)V

    iget v1, p2, Lqn/m;->j:I

    invoke-virtual {p1, v1}, Ljava/io/OutputStream;->write(I)V

    iget v1, p2, Lqn/m;->k:I

    invoke-virtual {p1, v1}, Ljava/io/OutputStream;->write(I)V

    iget v1, p2, Lqn/m;->l:I

    invoke-virtual {p1, v1}, Ljava/io/OutputStream;->write(I)V

    iget v1, p2, Lqn/m;->m:I

    invoke-virtual {p1, v1}, Ljava/io/OutputStream;->write(I)V

    iget v1, p2, Lqn/m;->n:I

    invoke-virtual {p1, v1}, Ljava/io/OutputStream;->write(I)V

    iget p2, p2, Lqn/m;->o:I

    invoke-virtual {p1, p2}, Ljava/io/OutputStream;->write(I)V

    if-eqz p4, :cond_2

    invoke-virtual {p0, p1, v0, p3}, Lpn/a;->f(Ljava/io/OutputStream;SLjava/nio/ByteOrder;)V

    :cond_2
    return-void
.end method
