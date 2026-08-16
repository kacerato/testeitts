.class public Lzg/a;
.super Lzg/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lzg/b<",
        "Lvg/a;",
        ">;"
    }
.end annotation


# instance fields
.field public g:[B

.field public h:[B

.field public i:I

.field public j:I

.field public k:I

.field public l:I

.field public m:I

.field public n:I

.field public o:I


# direct methods
.method public constructor <init>(Lzg/j;LBg/k;[CIZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct/range {p0 .. p5}, Lzg/b;-><init>(Lzg/j;LBg/k;[CIZ)V

    const/4 p1, 0x1

    new-array p1, p1, [B

    iput-object p1, p0, Lzg/a;->g:[B

    const/16 p1, 0x10

    new-array p1, p1, [B

    iput-object p1, p0, Lzg/a;->h:[B

    const/4 p1, 0x0

    iput p1, p0, Lzg/a;->i:I

    iput p1, p0, Lzg/a;->j:I

    iput p1, p0, Lzg/a;->k:I

    iput p1, p0, Lzg/a;->l:I

    iput p1, p0, Lzg/a;->m:I

    iput p1, p0, Lzg/a;->n:I

    iput p1, p0, Lzg/a;->o:I

    return-void
.end method


# virtual methods
.method public b(Ljava/io/InputStream;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lzg/a;->p(Ljava/io/InputStream;)[B

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lzg/a;->q([BI)V

    return-void
.end method

.method public bridge synthetic g(LBg/k;[CZ)Lvg/d;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2, p3}, Lzg/a;->o(LBg/k;[CZ)Lvg/a;

    move-result-object p1

    return-object p1
.end method

.method public final j([BI)V
    .locals 3

    iget v0, p0, Lzg/a;->k:I

    iget v1, p0, Lzg/a;->j:I

    if-ge v0, v1, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    iput v0, p0, Lzg/a;->n:I

    iget-object v1, p0, Lzg/a;->h:[B

    iget v2, p0, Lzg/a;->i:I

    invoke-static {v1, v2, p1, p2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget p1, p0, Lzg/a;->n:I

    invoke-virtual {p0, p1}, Lzg/a;->n(I)V

    iget p1, p0, Lzg/a;->n:I

    invoke-virtual {p0, p1}, Lzg/a;->k(I)V

    iget p1, p0, Lzg/a;->m:I

    iget p2, p0, Lzg/a;->n:I

    add-int/2addr p1, p2

    iput p1, p0, Lzg/a;->m:I

    iget p1, p0, Lzg/a;->k:I

    sub-int/2addr p1, p2

    iput p1, p0, Lzg/a;->k:I

    iget p1, p0, Lzg/a;->l:I

    add-int/2addr p1, p2

    iput p1, p0, Lzg/a;->l:I

    return-void
.end method

.method public final k(I)V
    .locals 1

    iget v0, p0, Lzg/a;->j:I

    sub-int/2addr v0, p1

    iput v0, p0, Lzg/a;->j:I

    if-gtz v0, :cond_0

    const/4 p1, 0x0

    iput p1, p0, Lzg/a;->j:I

    :cond_0
    return-void
.end method

.method public final l()[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x2

    new-array v0, v0, [B

    invoke-virtual {p0, v0}, Lzg/b;->h([B)I

    return-object v0
.end method

.method public final m(LBg/k;)[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1}, LBg/b;->c()LBg/a;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, LBg/b;->c()LBg/a;

    move-result-object p1

    invoke-virtual {p1}, LBg/a;->c()LCg/a;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, LBg/a;->c()LCg/a;

    move-result-object p1

    invoke-virtual {p1}, LCg/a;->e()I

    move-result p1

    new-array p1, p1, [B

    invoke-virtual {p0, p1}, Lzg/b;->h([B)I

    return-object p1

    :cond_0
    new-instance p1, Ljava/io/IOException;

    const-string v0, "Invalid aes key strength in aes extra data record"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Ljava/io/IOException;

    const-string v0, "invalid aes extra data record"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final n(I)V
    .locals 1

    iget v0, p0, Lzg/a;->i:I

    add-int/2addr v0, p1

    iput v0, p0, Lzg/a;->i:I

    const/16 p1, 0xf

    if-lt v0, p1, :cond_0

    iput p1, p0, Lzg/a;->i:I

    :cond_0
    return-void
.end method

.method public o(LBg/k;[CZ)Lvg/a;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v6, Lvg/a;

    invoke-virtual {p1}, LBg/b;->c()LBg/a;

    move-result-object v1

    invoke-virtual {p0, p1}, Lzg/a;->m(LBg/k;)[B

    move-result-object v3

    invoke-virtual {p0}, Lzg/a;->l()[B

    move-result-object v4

    move-object v0, v6

    move-object v2, p2

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lvg/a;-><init>(LBg/a;[C[B[BZ)V

    return-object v6
.end method

.method public p(Ljava/io/InputStream;)[B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0xa

    new-array v1, v0, [B

    invoke-static {p1, v1}, LFg/h;->l(Ljava/io/InputStream;[B)I

    move-result p1

    if-ne p1, v0, :cond_0

    return-object v1

    :cond_0
    new-instance p1, Lnet/lingala/zip4j/exception/ZipException;

    const-string v0, "Invalid AES Mac bytes. Could not read sufficient data"

    invoke-direct {p1, v0}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final q([BI)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lzg/b;->c()Lvg/d;

    move-result-object v0

    check-cast v0, Lvg/a;

    invoke-virtual {v0, p2}, Lvg/a;->b(I)[B

    move-result-object p2

    const/16 v0, 0xa

    new-array v1, v0, [B

    const/4 v2, 0x0

    invoke-static {p2, v2, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-static {p1, v1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    :cond_0
    new-instance p1, Ljava/io/IOException;

    const-string p2, "Reached end of data for this entry, but aes verification failed"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public read()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lzg/a;->g:[B

    invoke-virtual {p0, v0}, Lzg/a;->read([B)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    return v1

    .line 2
    :cond_0
    iget-object v0, p0, Lzg/a;->g:[B

    const/4 v1, 0x0

    aget-byte v0, v0, v1

    return v0
.end method

.method public read([B)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lzg/a;->read([BII)I

    move-result p1

    return p1
.end method

.method public read([BII)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 4
    iput p3, p0, Lzg/a;->k:I

    .line 5
    iput p2, p0, Lzg/a;->l:I

    const/4 v0, 0x0

    .line 6
    iput v0, p0, Lzg/a;->m:I

    .line 7
    iget v1, p0, Lzg/a;->j:I

    if-eqz v1, :cond_0

    .line 8
    invoke-virtual {p0, p1, p2}, Lzg/a;->j([BI)V

    .line 9
    iget p2, p0, Lzg/a;->m:I

    if-ne p2, p3, :cond_0

    return p2

    .line 10
    :cond_0
    iget p2, p0, Lzg/a;->k:I

    const/16 v1, 0x10

    const/4 v2, -0x1

    if-ge p2, v1, :cond_3

    .line 11
    iget-object p2, p0, Lzg/a;->h:[B

    array-length v1, p2

    invoke-super {p0, p2, v0, v1}, Lzg/b;->read([BII)I

    move-result p2

    iput p2, p0, Lzg/a;->o:I

    .line 12
    iput v0, p0, Lzg/a;->i:I

    if-ne p2, v2, :cond_2

    .line 13
    iput v0, p0, Lzg/a;->j:I

    .line 14
    iget p1, p0, Lzg/a;->m:I

    if-lez p1, :cond_1

    return p1

    :cond_1
    return v2

    .line 15
    :cond_2
    iput p2, p0, Lzg/a;->j:I

    .line 16
    iget p2, p0, Lzg/a;->l:I

    invoke-virtual {p0, p1, p2}, Lzg/a;->j([BI)V

    .line 17
    iget p2, p0, Lzg/a;->m:I

    if-ne p2, p3, :cond_3

    return p2

    .line 18
    :cond_3
    iget p2, p0, Lzg/a;->l:I

    iget p3, p0, Lzg/a;->k:I

    rem-int/lit8 v0, p3, 0x10

    sub-int/2addr p3, v0

    invoke-super {p0, p1, p2, p3}, Lzg/b;->read([BII)I

    move-result p1

    if-ne p1, v2, :cond_5

    .line 19
    iget p1, p0, Lzg/a;->m:I

    if-lez p1, :cond_4

    return p1

    :cond_4
    return v2

    .line 20
    :cond_5
    iget p2, p0, Lzg/a;->m:I

    add-int/2addr p1, p2

    return p1
.end method
