.class public Lrn/e;
.super Lpn/a;
.source "SourceFile"


# instance fields
.field public final a:Lpn/i;

.field public final b:Lqn/h;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lpn/a;-><init>()V

    new-instance v0, Lpn/i;

    invoke-direct {v0}, Lpn/i;-><init>()V

    iput-object v0, p0, Lrn/e;->a:Lpn/i;

    new-instance v0, Lqn/h;

    invoke-direct {v0}, Lqn/h;-><init>()V

    iput-object v0, p0, Lrn/e;->b:Lqn/h;

    return-void
.end method


# virtual methods
.method public h(Ljava/io/OutputStream;Lqn/g;Ljava/nio/ByteOrder;Z)V
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
            "cache",
            "order",
            "cCompatibility"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const v0, 0x54534554

    invoke-virtual {p0, p1, v0, p3}, Lpn/a;->c(Ljava/io/OutputStream;ILjava/nio/ByteOrder;)V

    if-eqz p4, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const v0, 0x8801

    :goto_0
    invoke-virtual {p0, p1, v0, p3}, Lpn/a;->c(Ljava/io/OutputStream;ILjava/nio/ByteOrder;)V

    const/4 v0, 0x0

    move v1, v0

    move v2, v1

    :goto_1
    invoke-virtual {p2}, Lqn/g;->A()I

    move-result v3

    if-ge v1, v3, :cond_3

    invoke-virtual {p2, v1}, Lqn/g;->x(I)Lqn/c;

    move-result-object v3

    if-eqz v3, :cond_2

    iget-object v3, v3, Lqn/c;->d:[B

    if-nez v3, :cond_1

    goto :goto_2

    :cond_1
    add-int/lit8 v2, v2, 0x1

    :cond_2
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    invoke-virtual {p0, p1, v2, p3}, Lpn/a;->c(Ljava/io/OutputStream;ILjava/nio/ByteOrder;)V

    iget-object v1, p0, Lrn/e;->a:Lpn/i;

    invoke-virtual {p2}, Lqn/g;->s()Ljn/v;

    move-result-object v2

    invoke-virtual {v2}, Ljn/v;->C()Ljn/y;

    move-result-object v2

    invoke-virtual {v1, p1, v2, p3}, Lpn/i;->h(Ljava/io/OutputStream;Ljn/y;Ljava/nio/ByteOrder;)V

    invoke-virtual {p2}, Lqn/g;->w()Lqn/p;

    move-result-object v1

    invoke-virtual {p0, p1, v1, p3}, Lrn/e;->i(Ljava/io/OutputStream;Lqn/p;Ljava/nio/ByteOrder;)V

    :goto_3
    invoke-virtual {p2}, Lqn/g;->A()I

    move-result v1

    if-ge v0, v1, :cond_6

    invoke-virtual {p2, v0}, Lqn/g;->x(I)Lqn/c;

    move-result-object v1

    if-eqz v1, :cond_5

    iget-object v2, v1, Lqn/c;->d:[B

    if-nez v2, :cond_4

    goto :goto_4

    :cond_4
    invoke-virtual {p2, v1}, Lqn/g;->B(Lqn/c;)J

    move-result-wide v2

    long-to-int v2, v2

    invoke-virtual {p0, p1, v2, p3}, Lpn/a;->c(Ljava/io/OutputStream;ILjava/nio/ByteOrder;)V

    invoke-virtual {p2, v1}, Lqn/g;->o(Lqn/c;)Lqn/l;

    move-result-object v1

    iget-object v2, p0, Lrn/e;->b:Lqn/h;

    invoke-virtual {v2, v1, p3, p4}, Lqn/h;->m(Lqn/l;Ljava/nio/ByteOrder;Z)[B

    move-result-object v1

    array-length v2, v1

    invoke-virtual {p0, p1, v2, p3}, Lpn/a;->c(Ljava/io/OutputStream;ILjava/nio/ByteOrder;)V

    invoke-virtual {p1, v1}, Ljava/io/OutputStream;->write([B)V

    :cond_5
    :goto_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_6
    return-void
.end method

.method public final i(Ljava/io/OutputStream;Lqn/p;Ljava/nio/ByteOrder;)V
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

    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x3

    if-ge v0, v1, :cond_0

    iget-object v1, p2, Lqn/p;->a:[F

    aget v1, v1, v0

    invoke-virtual {p0, p1, v1, p3}, Lpn/a;->b(Ljava/io/OutputStream;FLjava/nio/ByteOrder;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget v0, p2, Lqn/p;->b:F

    invoke-virtual {p0, p1, v0, p3}, Lpn/a;->b(Ljava/io/OutputStream;FLjava/nio/ByteOrder;)V

    iget v0, p2, Lqn/p;->c:F

    invoke-virtual {p0, p1, v0, p3}, Lpn/a;->b(Ljava/io/OutputStream;FLjava/nio/ByteOrder;)V

    iget v0, p2, Lqn/p;->d:I

    invoke-virtual {p0, p1, v0, p3}, Lpn/a;->c(Ljava/io/OutputStream;ILjava/nio/ByteOrder;)V

    iget v0, p2, Lqn/p;->e:I

    invoke-virtual {p0, p1, v0, p3}, Lpn/a;->c(Ljava/io/OutputStream;ILjava/nio/ByteOrder;)V

    iget v0, p2, Lqn/p;->f:F

    invoke-virtual {p0, p1, v0, p3}, Lpn/a;->b(Ljava/io/OutputStream;FLjava/nio/ByteOrder;)V

    iget v0, p2, Lqn/p;->g:F

    invoke-virtual {p0, p1, v0, p3}, Lpn/a;->b(Ljava/io/OutputStream;FLjava/nio/ByteOrder;)V

    iget v0, p2, Lqn/p;->h:F

    invoke-virtual {p0, p1, v0, p3}, Lpn/a;->b(Ljava/io/OutputStream;FLjava/nio/ByteOrder;)V

    iget v0, p2, Lqn/p;->i:F

    invoke-virtual {p0, p1, v0, p3}, Lpn/a;->b(Ljava/io/OutputStream;FLjava/nio/ByteOrder;)V

    iget v0, p2, Lqn/p;->j:I

    invoke-virtual {p0, p1, v0, p3}, Lpn/a;->c(Ljava/io/OutputStream;ILjava/nio/ByteOrder;)V

    iget p2, p2, Lqn/p;->k:I

    invoke-virtual {p0, p1, p2, p3}, Lpn/a;->c(Ljava/io/OutputStream;ILjava/nio/ByteOrder;)V

    return-void
.end method
