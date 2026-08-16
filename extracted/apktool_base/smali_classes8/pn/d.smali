.class public Lpn/d;
.super Lpn/a;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lpn/a;-><init>()V

    return-void
.end method


# virtual methods
.method public h(Ljava/io/OutputStream;Ljn/q;Ljava/nio/ByteOrder;Z)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "stream",
            "data",
            "order",
            "cCompatibility"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p2, Ljn/q;->a:Ljn/r;

    iget v1, v0, Ljn/r;->a:I

    invoke-virtual {p0, p1, v1, p3}, Lpn/a;->c(Ljava/io/OutputStream;ILjava/nio/ByteOrder;)V

    if-eqz p4, :cond_0

    const/4 v1, 0x7

    goto :goto_0

    :cond_0
    const v1, 0x8809

    :goto_0
    invoke-virtual {p0, p1, v1, p3}, Lpn/a;->c(Ljava/io/OutputStream;ILjava/nio/ByteOrder;)V

    iget v1, v0, Ljn/r;->c:I

    invoke-virtual {p0, p1, v1, p3}, Lpn/a;->c(Ljava/io/OutputStream;ILjava/nio/ByteOrder;)V

    iget v1, v0, Ljn/r;->d:I

    invoke-virtual {p0, p1, v1, p3}, Lpn/a;->c(Ljava/io/OutputStream;ILjava/nio/ByteOrder;)V

    iget v1, v0, Ljn/r;->e:I

    invoke-virtual {p0, p1, v1, p3}, Lpn/a;->c(Ljava/io/OutputStream;ILjava/nio/ByteOrder;)V

    iget v1, v0, Ljn/r;->f:I

    invoke-virtual {p0, p1, v1, p3}, Lpn/a;->c(Ljava/io/OutputStream;ILjava/nio/ByteOrder;)V

    iget v1, v0, Ljn/r;->g:I

    invoke-virtual {p0, p1, v1, p3}, Lpn/a;->c(Ljava/io/OutputStream;ILjava/nio/ByteOrder;)V

    iget v1, v0, Ljn/r;->h:I

    invoke-virtual {p0, p1, v1, p3}, Lpn/a;->c(Ljava/io/OutputStream;ILjava/nio/ByteOrder;)V

    iget v1, v0, Ljn/r;->i:I

    invoke-virtual {p0, p1, v1, p3}, Lpn/a;->c(Ljava/io/OutputStream;ILjava/nio/ByteOrder;)V

    iget v1, v0, Ljn/r;->j:I

    invoke-virtual {p0, p1, v1, p3}, Lpn/a;->c(Ljava/io/OutputStream;ILjava/nio/ByteOrder;)V

    iget v1, v0, Ljn/r;->k:I

    invoke-virtual {p0, p1, v1, p3}, Lpn/a;->c(Ljava/io/OutputStream;ILjava/nio/ByteOrder;)V

    iget v1, v0, Ljn/r;->l:I

    invoke-virtual {p0, p1, v1, p3}, Lpn/a;->c(Ljava/io/OutputStream;ILjava/nio/ByteOrder;)V

    iget v1, v0, Ljn/r;->m:I

    invoke-virtual {p0, p1, v1, p3}, Lpn/a;->c(Ljava/io/OutputStream;ILjava/nio/ByteOrder;)V

    iget v1, v0, Ljn/r;->n:I

    invoke-virtual {p0, p1, v1, p3}, Lpn/a;->c(Ljava/io/OutputStream;ILjava/nio/ByteOrder;)V

    iget v1, v0, Ljn/r;->o:I

    invoke-virtual {p0, p1, v1, p3}, Lpn/a;->c(Ljava/io/OutputStream;ILjava/nio/ByteOrder;)V

    iget v1, v0, Ljn/r;->p:F

    invoke-virtual {p0, p1, v1, p3}, Lpn/a;->b(Ljava/io/OutputStream;FLjava/nio/ByteOrder;)V

    iget v1, v0, Ljn/r;->q:F

    invoke-virtual {p0, p1, v1, p3}, Lpn/a;->b(Ljava/io/OutputStream;FLjava/nio/ByteOrder;)V

    iget v1, v0, Ljn/r;->r:F

    invoke-virtual {p0, p1, v1, p3}, Lpn/a;->b(Ljava/io/OutputStream;FLjava/nio/ByteOrder;)V

    iget-object v1, v0, Ljn/r;->s:[F

    const/4 v2, 0x0

    aget v1, v1, v2

    invoke-virtual {p0, p1, v1, p3}, Lpn/a;->b(Ljava/io/OutputStream;FLjava/nio/ByteOrder;)V

    iget-object v1, v0, Ljn/r;->s:[F

    const/4 v3, 0x1

    aget v1, v1, v3

    invoke-virtual {p0, p1, v1, p3}, Lpn/a;->b(Ljava/io/OutputStream;FLjava/nio/ByteOrder;)V

    iget-object v1, v0, Ljn/r;->s:[F

    const/4 v4, 0x2

    aget v1, v1, v4

    invoke-virtual {p0, p1, v1, p3}, Lpn/a;->b(Ljava/io/OutputStream;FLjava/nio/ByteOrder;)V

    iget-object v1, v0, Ljn/r;->t:[F

    aget v1, v1, v2

    invoke-virtual {p0, p1, v1, p3}, Lpn/a;->b(Ljava/io/OutputStream;FLjava/nio/ByteOrder;)V

    iget-object v1, v0, Ljn/r;->t:[F

    aget v1, v1, v3

    invoke-virtual {p0, p1, v1, p3}, Lpn/a;->b(Ljava/io/OutputStream;FLjava/nio/ByteOrder;)V

    iget-object v1, v0, Ljn/r;->t:[F

    aget v1, v1, v4

    invoke-virtual {p0, p1, v1, p3}, Lpn/a;->b(Ljava/io/OutputStream;FLjava/nio/ByteOrder;)V

    iget v1, v0, Ljn/r;->u:F

    invoke-virtual {p0, p1, v1, p3}, Lpn/a;->b(Ljava/io/OutputStream;FLjava/nio/ByteOrder;)V

    iget-object v1, p2, Ljn/q;->b:[F

    iget v3, v0, Ljn/r;->h:I

    invoke-virtual {p0, p1, v1, v3, p3}, Lpn/d;->n(Ljava/io/OutputStream;[FILjava/nio/ByteOrder;)V

    invoke-virtual {p0, p1, p2, p3, p4}, Lpn/d;->m(Ljava/io/OutputStream;Ljn/q;Ljava/nio/ByteOrder;Z)V

    if-eqz p4, :cond_1

    iget v1, v0, Ljn/r;->i:I

    invoke-static {v2}, Lpn/c;->a(Z)I

    move-result v2

    mul-int/2addr v1, v2

    new-array v1, v1, [B

    invoke-virtual {p1, v1}, Ljava/io/OutputStream;->write([B)V

    :cond_1
    invoke-virtual {p0, p1, p2, p3, p4}, Lpn/d;->l(Ljava/io/OutputStream;Ljn/q;Ljava/nio/ByteOrder;Z)V

    iget-object v1, p2, Ljn/q;->e:[F

    iget v0, v0, Ljn/r;->k:I

    invoke-virtual {p0, p1, v1, v0, p3}, Lpn/d;->n(Ljava/io/OutputStream;[FILjava/nio/ByteOrder;)V

    invoke-virtual {p0, p1, p2}, Lpn/d;->j(Ljava/io/OutputStream;Ljn/q;)V

    invoke-virtual {p0, p1, p2, p3, p4}, Lpn/d;->i(Ljava/io/OutputStream;Ljn/q;Ljava/nio/ByteOrder;Z)V

    invoke-virtual {p0, p1, p2, p3}, Lpn/d;->k(Ljava/io/OutputStream;Ljn/q;Ljava/nio/ByteOrder;)V

    return-void
.end method

.method public final i(Ljava/io/OutputStream;Ljn/q;Ljava/nio/ByteOrder;Z)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "stream",
            "data",
            "order",
            "cCompatibility"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v2, p2, Ljn/q;->a:Ljn/r;

    iget v2, v2, Ljn/r;->m:I

    if-ge v1, v2, :cond_4

    const/4 v2, 0x3

    if-eqz p4, :cond_1

    move v3, v0

    :goto_1
    if-ge v3, v2, :cond_0

    iget-object v4, p2, Ljn/q;->g:[Ljn/a;

    aget-object v4, v4, v1

    iget-object v4, v4, Ljn/a;->a:[I

    aget v4, v4, v3

    int-to-short v4, v4

    invoke-virtual {p0, p1, v4, p3}, Lpn/a;->f(Ljava/io/OutputStream;SLjava/nio/ByteOrder;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_0
    move v3, v0

    :goto_2
    if-ge v3, v2, :cond_3

    iget-object v4, p2, Ljn/q;->g:[Ljn/a;

    aget-object v4, v4, v1

    iget-object v4, v4, Ljn/a;->b:[I

    aget v4, v4, v3

    int-to-short v4, v4

    invoke-virtual {p0, p1, v4, p3}, Lpn/a;->f(Ljava/io/OutputStream;SLjava/nio/ByteOrder;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_1
    move v3, v0

    :goto_3
    if-ge v3, v2, :cond_2

    iget-object v4, p2, Ljn/q;->g:[Ljn/a;

    aget-object v4, v4, v1

    iget-object v4, v4, Ljn/a;->a:[I

    aget v4, v4, v3

    invoke-virtual {p0, p1, v4, p3}, Lpn/a;->c(Ljava/io/OutputStream;ILjava/nio/ByteOrder;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_2
    move v3, v0

    :goto_4
    if-ge v3, v2, :cond_3

    iget-object v4, p2, Ljn/q;->g:[Ljn/a;

    aget-object v4, v4, v1

    iget-object v4, v4, Ljn/a;->b:[I

    aget v4, v4, v3

    invoke-virtual {p0, p1, v4, p3}, Lpn/a;->c(Ljava/io/OutputStream;ILjava/nio/ByteOrder;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    :cond_3
    iget-object v2, p2, Ljn/q;->g:[Ljn/a;

    aget-object v2, v2, v1

    iget v2, v2, Ljn/a;->c:I

    invoke-virtual {p0, p1, v2, p3}, Lpn/a;->c(Ljava/io/OutputStream;ILjava/nio/ByteOrder;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    return-void
.end method

.method public final j(Ljava/io/OutputStream;Ljn/q;)V
    .locals 2
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

    :goto_0
    iget-object v1, p2, Ljn/q;->a:Ljn/r;

    iget v1, v1, Ljn/r;->l:I

    mul-int/lit8 v1, v1, 0x4

    if-ge v0, v1, :cond_0

    iget-object v1, p2, Ljn/q;->f:[I

    aget v1, v1, v0

    invoke-virtual {p1, v1}, Ljava/io/OutputStream;->write(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final k(Ljava/io/OutputStream;Ljn/q;Ljava/nio/ByteOrder;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "stream",
            "data",
            "order"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v2, p2, Ljn/q;->a:Ljn/r;

    iget v2, v2, Ljn/r;->n:I

    if-ge v1, v2, :cond_1

    move v2, v0

    :goto_1
    const/4 v3, 0x6

    if-ge v2, v3, :cond_0

    iget-object v3, p2, Ljn/q;->h:[Ljn/F;

    aget-object v3, v3, v1

    iget-object v3, v3, Ljn/F;->a:[F

    aget v3, v3, v2

    invoke-virtual {p0, p1, v3, p3}, Lpn/a;->b(Ljava/io/OutputStream;FLjava/nio/ByteOrder;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_0
    iget-object v2, p2, Ljn/q;->h:[Ljn/F;

    aget-object v2, v2, v1

    iget v2, v2, Ljn/F;->b:F

    invoke-virtual {p0, p1, v2, p3}, Lpn/a;->b(Ljava/io/OutputStream;FLjava/nio/ByteOrder;)V

    iget-object v2, p2, Ljn/q;->h:[Ljn/F;

    aget-object v2, v2, v1

    iget v2, v2, Ljn/F;->c:I

    int-to-short v2, v2

    invoke-virtual {p0, p1, v2, p3}, Lpn/a;->f(Ljava/io/OutputStream;SLjava/nio/ByteOrder;)V

    iget-object v2, p2, Ljn/q;->h:[Ljn/F;

    aget-object v2, v2, v1

    iget v2, v2, Ljn/F;->d:I

    invoke-virtual {p1, v2}, Ljava/io/OutputStream;->write(I)V

    iget-object v2, p2, Ljn/q;->h:[Ljn/F;

    aget-object v2, v2, v1

    iget v2, v2, Ljn/F;->e:I

    invoke-virtual {p1, v2}, Ljava/io/OutputStream;->write(I)V

    iget-object v2, p2, Ljn/q;->h:[Ljn/F;

    aget-object v2, v2, v1

    iget v2, v2, Ljn/F;->f:I

    invoke-virtual {p0, p1, v2, p3}, Lpn/a;->c(Ljava/io/OutputStream;ILjava/nio/ByteOrder;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final l(Ljava/io/OutputStream;Ljn/q;Ljava/nio/ByteOrder;Z)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "stream",
            "data",
            "order",
            "cCompatibility"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v2, p2, Ljn/q;->a:Ljn/r;

    iget v2, v2, Ljn/r;->j:I

    if-ge v1, v2, :cond_1

    iget-object v2, p2, Ljn/q;->d:[Ljn/H;

    aget-object v2, v2, v1

    iget v2, v2, Ljn/H;->a:I

    invoke-virtual {p0, p1, v2, p3}, Lpn/a;->c(Ljava/io/OutputStream;ILjava/nio/ByteOrder;)V

    iget-object v2, p2, Ljn/q;->d:[Ljn/H;

    aget-object v2, v2, v1

    iget v2, v2, Ljn/H;->b:I

    invoke-virtual {p0, p1, v2, p3}, Lpn/a;->c(Ljava/io/OutputStream;ILjava/nio/ByteOrder;)V

    iget-object v2, p2, Ljn/q;->d:[Ljn/H;

    aget-object v2, v2, v1

    iget v2, v2, Ljn/H;->c:I

    invoke-virtual {p1, v2}, Ljava/io/OutputStream;->write(I)V

    iget-object v2, p2, Ljn/q;->d:[Ljn/H;

    aget-object v2, v2, v1

    iget v2, v2, Ljn/H;->d:I

    invoke-virtual {p1, v2}, Ljava/io/OutputStream;->write(I)V

    if-eqz p4, :cond_0

    invoke-virtual {p0, p1, v0, p3}, Lpn/a;->f(Ljava/io/OutputStream;SLjava/nio/ByteOrder;)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final m(Ljava/io/OutputStream;Ljn/q;Ljava/nio/ByteOrder;Z)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "stream",
            "data",
            "order",
            "cCompatibility"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v2, p2, Ljn/q;->a:Ljn/r;

    iget v2, v2, Ljn/r;->g:I

    if-ge v1, v2, :cond_3

    if-eqz p4, :cond_0

    const v2, 0xffff

    invoke-virtual {p0, p1, v2, p3}, Lpn/a;->c(Ljava/io/OutputStream;ILjava/nio/ByteOrder;)V

    :cond_0
    move v2, v0

    :goto_1
    iget-object v3, p2, Ljn/q;->c:[Ljn/G;

    aget-object v3, v3, v1

    iget-object v3, v3, Ljn/G;->b:[I

    array-length v4, v3

    if-ge v2, v4, :cond_1

    aget v3, v3, v2

    int-to-short v3, v3

    invoke-virtual {p0, p1, v3, p3}, Lpn/a;->f(Ljava/io/OutputStream;SLjava/nio/ByteOrder;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    move v2, v0

    :goto_2
    iget-object v3, p2, Ljn/q;->c:[Ljn/G;

    aget-object v3, v3, v1

    iget-object v4, v3, Ljn/G;->c:[I

    array-length v5, v4

    if-ge v2, v5, :cond_2

    aget v3, v4, v2

    int-to-short v3, v3

    invoke-virtual {p0, p1, v3, p3}, Lpn/a;->f(Ljava/io/OutputStream;SLjava/nio/ByteOrder;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_2
    iget v2, v3, Ljn/G;->d:I

    int-to-short v2, v2

    invoke-virtual {p0, p1, v2, p3}, Lpn/a;->f(Ljava/io/OutputStream;SLjava/nio/ByteOrder;)V

    iget-object v2, p2, Ljn/q;->c:[Ljn/G;

    aget-object v2, v2, v1

    iget v2, v2, Ljn/G;->e:I

    invoke-virtual {p1, v2}, Ljava/io/OutputStream;->write(I)V

    iget-object v2, p2, Ljn/q;->c:[Ljn/G;

    aget-object v2, v2, v1

    iget v2, v2, Ljn/G;->f:I

    invoke-virtual {p1, v2}, Ljava/io/OutputStream;->write(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method public final n(Ljava/io/OutputStream;[FILjava/nio/ByteOrder;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "stream",
            "verts",
            "count",
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
    mul-int/lit8 v1, p3, 0x3

    if-ge v0, v1, :cond_0

    aget v1, p2, v0

    invoke-virtual {p0, p1, v1, p4}, Lpn/a;->b(Ljava/io/OutputStream;FLjava/nio/ByteOrder;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
