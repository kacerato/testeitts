.class public LJj/a;
.super Ljava/io/FilterInputStream;
.source "SourceFile"


# instance fields
.field public final b:Ljavax/crypto/Cipher;

.field public final c:[B

.field public d:Z

.field public e:[B

.field public f:I

.field public g:I


# direct methods
.method public constructor <init>(Ljava/io/InputStream;Ljavax/crypto/Cipher;)V
    .locals 0

    invoke-direct {p0, p1}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    const/16 p1, 0x200

    new-array p1, p1, [B

    iput-object p1, p0, LJj/a;->c:[B

    const/4 p1, 0x0

    iput-boolean p1, p0, LJj/a;->d:Z

    iput-object p2, p0, LJj/a;->b:Ljavax/crypto/Cipher;

    return-void
.end method


# virtual methods
.method public available()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, LJj/a;->f:I

    iget v1, p0, LJj/a;->g:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public final c()[B
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/crypto/io/InvalidCipherTextIOException;
        }
    .end annotation

    :try_start_0
    iget-boolean v0, p0, LJj/a;->d:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, LJj/a;->d:Z

    iget-object v0, p0, LJj/a;->b:Ljavax/crypto/Cipher;

    invoke-virtual {v0}, Ljavax/crypto/Cipher;->doFinal()[B

    move-result-object v0
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return-object v0

    :goto_0
    new-instance v1, Lorg/bouncycastle/crypto/io/InvalidCipherTextIOException;

    const-string v2, "Error finalising cipher"

    invoke-direct {v1, v2, v0}, Lorg/bouncycastle/crypto/io/InvalidCipherTextIOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public close()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Ljava/io/FilterInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-boolean v0, p0, LJj/a;->d:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, LJj/a;->c()[B

    :cond_0
    const/4 v0, 0x0

    iput v0, p0, LJj/a;->g:I

    iput v0, p0, LJj/a;->f:I

    return-void

    :catchall_0
    move-exception v0

    iget-boolean v1, p0, LJj/a;->d:Z

    if-nez v1, :cond_1

    invoke-virtual {p0}, LJj/a;->c()[B

    :cond_1
    throw v0
.end method

.method public final d()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, LJj/a;->d:Z

    const/4 v1, -0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    iput v0, p0, LJj/a;->g:I

    iput v0, p0, LJj/a;->f:I

    :cond_1
    :goto_0
    iget v2, p0, LJj/a;->f:I

    if-nez v2, :cond_5

    iget-object v2, p0, Ljava/io/FilterInputStream;->in:Ljava/io/InputStream;

    iget-object v3, p0, LJj/a;->c:[B

    invoke-virtual {v2, v3}, Ljava/io/InputStream;->read([B)I

    move-result v2

    if-ne v2, v1, :cond_4

    invoke-virtual {p0}, LJj/a;->c()[B

    move-result-object v0

    iput-object v0, p0, LJj/a;->e:[B

    if-eqz v0, :cond_3

    array-length v2, v0

    if-nez v2, :cond_2

    goto :goto_1

    :cond_2
    array-length v0, v0

    iput v0, p0, LJj/a;->f:I

    return v0

    :cond_3
    :goto_1
    return v1

    :cond_4
    iget-object v3, p0, LJj/a;->b:Ljavax/crypto/Cipher;

    iget-object v4, p0, LJj/a;->c:[B

    invoke-virtual {v3, v4, v0, v2}, Ljavax/crypto/Cipher;->update([BII)[B

    move-result-object v2

    iput-object v2, p0, LJj/a;->e:[B

    if-eqz v2, :cond_1

    array-length v2, v2

    iput v2, p0, LJj/a;->f:I

    goto :goto_0

    :cond_5
    return v2
.end method

.method public mark(I)V
    .locals 0

    return-void
.end method

.method public markSupported()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public read()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget v0, p0, LJj/a;->g:I

    iget v1, p0, LJj/a;->f:I

    if-lt v0, v1, :cond_0

    invoke-virtual {p0}, LJj/a;->d()I

    move-result v0

    if-gez v0, :cond_0

    const/4 v0, -0x1

    return v0

    :cond_0
    iget-object v0, p0, LJj/a;->e:[B

    iget v1, p0, LJj/a;->g:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, LJj/a;->g:I

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    return v0
.end method

.method public read([BII)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2
    iget v0, p0, LJj/a;->g:I

    iget v1, p0, LJj/a;->f:I

    if-lt v0, v1, :cond_0

    invoke-virtual {p0}, LJj/a;->d()I

    move-result v0

    if-gez v0, :cond_0

    const/4 p1, -0x1

    return p1

    :cond_0
    invoke-virtual {p0}, LJj/a;->available()I

    move-result v0

    invoke-static {p3, v0}, Ljava/lang/Math;->min(II)I

    move-result p3

    iget-object v0, p0, LJj/a;->e:[B

    iget v1, p0, LJj/a;->g:I

    invoke-static {v0, v1, p1, p2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget p1, p0, LJj/a;->g:I

    add-int/2addr p1, p3

    iput p1, p0, LJj/a;->g:I

    return p3
.end method

.method public reset()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    return-void
.end method

.method public skip(J)J
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-gtz v2, :cond_0

    return-wide v0

    :cond_0
    invoke-virtual {p0}, LJj/a;->available()I

    move-result v0

    int-to-long v0, v0

    invoke-static {p1, p2, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p1

    long-to-int p1, p1

    iget p2, p0, LJj/a;->g:I

    add-int/2addr p2, p1

    iput p2, p0, LJj/a;->g:I

    int-to-long p1, p1

    return-wide p1
.end method
