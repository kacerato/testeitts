.class public Lnet/jpountz/lz4/k;
.super Ljava/io/FilterInputStream;
.source "SourceFile"


# static fields
.field public static final p:Ljava/lang/String; = "Stream ended prematurely"

.field public static final q:Ljava/lang/String; = "Stream unsupported"

.field public static final r:Ljava/lang/String; = "Block checksum mismatch"

.field public static final s:Ljava/lang/String; = "Stream frame descriptor corrupted"

.field public static final t:I = 0x184d2a50


# instance fields
.field public final b:Lnet/jpountz/lz4/y;

.field public final c:Lnet/jpountz/xxhash/k;

.field public final d:[B

.field public final e:Ljava/nio/ByteBuffer;

.field public final f:Z

.field public g:[B

.field public h:Ljava/nio/ByteBuffer;

.field public i:[B

.field public j:I

.field public k:J

.field public l:J

.field public m:Z

.field public n:Lnet/jpountz/lz4/l$e;

.field public final o:Ljava/nio/ByteBuffer;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-static {}, Lnet/jpountz/lz4/i;->e()Lnet/jpountz/lz4/i;

    move-result-object v0

    invoke-virtual {v0}, Lnet/jpountz/lz4/i;->l()Lnet/jpountz/lz4/y;

    move-result-object v0

    invoke-static {}, Lnet/jpountz/xxhash/t;->b()Lnet/jpountz/xxhash/t;

    move-result-object v1

    invoke-virtual {v1}, Lnet/jpountz/xxhash/t;->d()Lnet/jpountz/xxhash/k;

    move-result-object v1

    invoke-direct {p0, p1, v0, v1}, Lnet/jpountz/lz4/k;-><init>(Ljava/io/InputStream;Lnet/jpountz/lz4/y;Lnet/jpountz/xxhash/k;)V

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;Lnet/jpountz/lz4/y;Lnet/jpountz/xxhash/k;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 3
    invoke-direct {p0, p1, p2, p3, v0}, Lnet/jpountz/lz4/k;-><init>(Ljava/io/InputStream;Lnet/jpountz/lz4/y;Lnet/jpountz/xxhash/k;Z)V

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;Lnet/jpountz/lz4/y;Lnet/jpountz/xxhash/k;Z)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 4
    invoke-direct {p0, p1}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    const/16 p1, 0xf

    .line 5
    new-array p1, p1, [B

    iput-object p1, p0, Lnet/jpountz/lz4/k;->d:[B

    .line 6
    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p1

    sget-object v0, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object p1

    iput-object p1, p0, Lnet/jpountz/lz4/k;->e:Ljava/nio/ByteBuffer;

    const/4 p1, 0x0

    .line 7
    iput-object p1, p0, Lnet/jpountz/lz4/k;->h:Ljava/nio/ByteBuffer;

    .line 8
    iput-object p1, p0, Lnet/jpountz/lz4/k;->i:[B

    const/4 v1, -0x1

    .line 9
    iput v1, p0, Lnet/jpountz/lz4/k;->j:I

    const-wide/16 v1, -0x1

    .line 10
    iput-wide v1, p0, Lnet/jpountz/lz4/k;->k:J

    const-wide/16 v1, 0x0

    .line 11
    iput-wide v1, p0, Lnet/jpountz/lz4/k;->l:J

    const/4 v1, 0x0

    .line 12
    iput-boolean v1, p0, Lnet/jpountz/lz4/k;->m:Z

    .line 13
    iput-object p1, p0, Lnet/jpountz/lz4/k;->n:Lnet/jpountz/lz4/l$e;

    const/16 p1, 0x8

    .line 14
    invoke-static {p1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object p1

    iput-object p1, p0, Lnet/jpountz/lz4/k;->o:Ljava/nio/ByteBuffer;

    .line 15
    iput-object p2, p0, Lnet/jpountz/lz4/k;->b:Lnet/jpountz/lz4/y;

    .line 16
    iput-object p3, p0, Lnet/jpountz/lz4/k;->c:Lnet/jpountz/xxhash/k;

    .line 17
    iput-boolean p4, p0, Lnet/jpountz/lz4/k;->f:Z

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2
    invoke-static {}, Lnet/jpountz/lz4/i;->e()Lnet/jpountz/lz4/i;

    move-result-object v0

    invoke-virtual {v0}, Lnet/jpountz/lz4/i;->l()Lnet/jpountz/lz4/y;

    move-result-object v0

    invoke-static {}, Lnet/jpountz/xxhash/t;->b()Lnet/jpountz/xxhash/t;

    move-result-object v1

    invoke-virtual {v1}, Lnet/jpountz/xxhash/t;->d()Lnet/jpountz/xxhash/k;

    move-result-object v1

    invoke-direct {p0, p1, v0, v1, p2}, Lnet/jpountz/lz4/k;-><init>(Ljava/io/InputStream;Lnet/jpountz/lz4/y;Lnet/jpountz/xxhash/k;Z)V

    return-void
.end method


# virtual methods
.method public available()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lnet/jpountz/lz4/k;->h:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/Buffer;->remaining()I

    move-result v0

    return v0
.end method

.method public c()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, Lnet/jpountz/lz4/k;->f:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lnet/jpountz/lz4/k;->m:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lnet/jpountz/lz4/k;->e()Z

    move-result v0

    if-nez v0, :cond_0

    const-wide/16 v0, -0x1

    return-wide v0

    :cond_0
    iget-wide v0, p0, Lnet/jpountz/lz4/k;->k:J

    return-wide v0

    :cond_1
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Operation not permitted when multiple frames can be read"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public close()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-super {p0}, Ljava/io/FilterInputStream;->close()V

    return-void
.end method

.method public d()Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, Lnet/jpountz/lz4/k;->f:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lnet/jpountz/lz4/k;->m:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lnet/jpountz/lz4/k;->e()Z

    move-result v0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-wide v2, p0, Lnet/jpountz/lz4/k;->k:J

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-ltz v0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public final e()Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :goto_0
    const/4 v0, 0x0

    move v1, v0

    :cond_0
    iget-object v2, p0, Ljava/io/FilterInputStream;->in:Ljava/io/InputStream;

    iget-object v3, p0, Lnet/jpountz/lz4/k;->o:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v3

    rsub-int/lit8 v4, v1, 0x4

    invoke-virtual {v2, v3, v1, v4}, Ljava/io/InputStream;->read([BII)I

    move-result v2

    if-gez v2, :cond_3

    iget-boolean v2, p0, Lnet/jpountz/lz4/k;->m:Z

    const-string v3, "Stream ended prematurely"

    if-eqz v2, :cond_2

    if-gtz v1, :cond_1

    return v0

    :cond_1
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    add-int/2addr v1, v2

    const/4 v2, 0x4

    if-lt v1, v2, :cond_0

    iget-object v1, p0, Lnet/jpountz/lz4/k;->o:Ljava/nio/ByteBuffer;

    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v0

    const v1, 0x184d2204

    if-ne v0, v1, :cond_4

    invoke-virtual {p0}, Lnet/jpountz/lz4/k;->g()V

    const/4 v0, 0x1

    return v0

    :cond_4
    ushr-int/lit8 v0, v0, 0x4

    const v1, 0x184d2a5

    if-ne v0, v1, :cond_5

    invoke-virtual {p0}, Lnet/jpountz/lz4/k;->k()V

    goto :goto_0

    :cond_5
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Stream unsupported"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final f()V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Ljava/io/FilterInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {p0, v0}, Lnet/jpountz/lz4/k;->h(Ljava/io/InputStream;)I

    move-result v0

    const/high16 v1, -0x80000000

    and-int/2addr v1, v0

    const/4 v2, 0x0

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    const v3, 0x7fffffff

    and-int v7, v0, v3

    if-nez v7, :cond_5

    iget-object v0, p0, Lnet/jpountz/lz4/k;->n:Lnet/jpountz/lz4/l$e;

    sget-object v1, Lnet/jpountz/lz4/l$d$a;->CONTENT_CHECKSUM:Lnet/jpountz/lz4/l$d$a;

    invoke-virtual {v0, v1}, Lnet/jpountz/lz4/l$e;->e(Lnet/jpountz/lz4/l$d$a;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Ljava/io/FilterInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {p0, v0}, Lnet/jpountz/lz4/k;->h(Ljava/io/InputStream;)I

    move-result v0

    iget-object v1, p0, Lnet/jpountz/lz4/k;->n:Lnet/jpountz/lz4/l$e;

    invoke-virtual {v1}, Lnet/jpountz/lz4/l$e;->a()I

    move-result v1

    if-ne v0, v1, :cond_1

    goto :goto_1

    :cond_1
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Content checksum mismatch"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    :goto_1
    iget-object v0, p0, Lnet/jpountz/lz4/k;->n:Lnet/jpountz/lz4/l$e;

    sget-object v1, Lnet/jpountz/lz4/l$d$a;->CONTENT_SIZE:Lnet/jpountz/lz4/l$d$a;

    invoke-virtual {v0, v1}, Lnet/jpountz/lz4/l$e;->e(Lnet/jpountz/lz4/l$d$a;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-wide v0, p0, Lnet/jpountz/lz4/k;->k:J

    iget-wide v2, p0, Lnet/jpountz/lz4/k;->l:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_3

    goto :goto_2

    :cond_3
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Size check mismatch"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    :goto_2
    iget-object v0, p0, Lnet/jpountz/lz4/k;->n:Lnet/jpountz/lz4/l$e;

    invoke-virtual {v0}, Lnet/jpountz/lz4/l$e;->b()V

    return-void

    :cond_5
    if-eqz v1, :cond_6

    iget-object v0, p0, Lnet/jpountz/lz4/k;->g:[B

    :goto_3
    move-object v5, v0

    goto :goto_4

    :cond_6
    iget-object v0, p0, Lnet/jpountz/lz4/k;->i:[B

    goto :goto_3

    :goto_4
    iget v0, p0, Lnet/jpountz/lz4/k;->j:I

    if-gt v7, v0, :cond_d

    move v0, v2

    :goto_5
    if-ge v0, v7, :cond_8

    iget-object v3, p0, Ljava/io/FilterInputStream;->in:Ljava/io/InputStream;

    sub-int v4, v7, v0

    invoke-virtual {v3, v5, v0, v4}, Ljava/io/InputStream;->read([BII)I

    move-result v3

    if-ltz v3, :cond_7

    add-int/2addr v0, v3

    goto :goto_5

    :cond_7
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Stream ended prematurely"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_8
    iget-object v0, p0, Lnet/jpountz/lz4/k;->n:Lnet/jpountz/lz4/l$e;

    sget-object v3, Lnet/jpountz/lz4/l$d$a;->BLOCK_CHECKSUM:Lnet/jpountz/lz4/l$d$a;

    invoke-virtual {v0, v3}, Lnet/jpountz/lz4/l$e;->e(Lnet/jpountz/lz4/l$d$a;)Z

    move-result v0

    if-eqz v0, :cond_a

    iget-object v0, p0, Ljava/io/FilterInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {p0, v0}, Lnet/jpountz/lz4/k;->h(Ljava/io/InputStream;)I

    move-result v0

    iget-object v3, p0, Lnet/jpountz/lz4/k;->c:Lnet/jpountz/xxhash/k;

    invoke-virtual {v3, v5, v2, v7, v2}, Lnet/jpountz/xxhash/k;->c([BIII)I

    move-result v3

    if-ne v0, v3, :cond_9

    goto :goto_6

    :cond_9
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Block checksum mismatch"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_a
    :goto_6
    if-eqz v1, :cond_b

    :try_start_0
    iget-object v4, p0, Lnet/jpountz/lz4/k;->b:Lnet/jpountz/lz4/y;

    iget-object v8, p0, Lnet/jpountz/lz4/k;->i:[B

    array-length v10, v8

    const/4 v6, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v4 .. v10}, Lnet/jpountz/lz4/y;->a([BII[BII)I

    move-result v7
    :try_end_0
    .catch Lnet/jpountz/lz4/LZ4Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_7

    :catch_0
    move-exception v0

    new-instance v1, Ljava/io/IOException;

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :cond_b
    :goto_7
    iget-object v0, p0, Lnet/jpountz/lz4/k;->n:Lnet/jpountz/lz4/l$e;

    sget-object v1, Lnet/jpountz/lz4/l$d$a;->CONTENT_CHECKSUM:Lnet/jpountz/lz4/l$d$a;

    invoke-virtual {v0, v1}, Lnet/jpountz/lz4/l$e;->e(Lnet/jpountz/lz4/l$d$a;)Z

    move-result v0

    if-eqz v0, :cond_c

    iget-object v0, p0, Lnet/jpountz/lz4/k;->n:Lnet/jpountz/lz4/l$e;

    iget-object v1, p0, Lnet/jpountz/lz4/k;->i:[B

    invoke-virtual {v0, v1, v2, v7}, Lnet/jpountz/lz4/l$e;->g([BII)V

    :cond_c
    iget-wide v0, p0, Lnet/jpountz/lz4/k;->l:J

    int-to-long v2, v7

    add-long/2addr v0, v2

    iput-wide v0, p0, Lnet/jpountz/lz4/k;->l:J

    iget-object v0, p0, Lnet/jpountz/lz4/k;->h:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v7}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    iget-object v0, p0, Lnet/jpountz/lz4/k;->h:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    return-void

    :cond_d
    new-instance v0, Ljava/io/IOException;

    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p0, Lnet/jpountz/lz4/k;->j:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v2, v3}, [Ljava/lang/Object;

    move-result-object v2

    const-string v3, "Block size %s exceeded max: %s"

    invoke-static {v1, v3, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final g()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lnet/jpountz/lz4/k;->e:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    iget-object v0, p0, Ljava/io/FilterInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    const-string v1, "Stream ended prematurely"

    if-ltz v0, :cond_4

    iget-object v2, p0, Ljava/io/FilterInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v2}, Ljava/io/InputStream;->read()I

    move-result v2

    if-ltz v2, :cond_3

    and-int/lit16 v0, v0, 0xff

    int-to-byte v0, v0

    invoke-static {v0}, Lnet/jpountz/lz4/l$d;->a(B)Lnet/jpountz/lz4/l$d;

    move-result-object v3

    iget-object v4, p0, Lnet/jpountz/lz4/k;->e:Ljava/nio/ByteBuffer;

    invoke-virtual {v4, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    and-int/lit16 v0, v2, 0xff

    int-to-byte v0, v0

    invoke-static {v0}, Lnet/jpountz/lz4/l$b;->a(B)Lnet/jpountz/lz4/l$b;

    move-result-object v2

    iget-object v4, p0, Lnet/jpountz/lz4/k;->e:Ljava/nio/ByteBuffer;

    invoke-virtual {v4, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    new-instance v0, Lnet/jpountz/lz4/l$e;

    invoke-direct {v0, v3, v2}, Lnet/jpountz/lz4/l$e;-><init>(Lnet/jpountz/lz4/l$d;Lnet/jpountz/lz4/l$b;)V

    iput-object v0, p0, Lnet/jpountz/lz4/k;->n:Lnet/jpountz/lz4/l$e;

    sget-object v0, Lnet/jpountz/lz4/l$d$a;->CONTENT_SIZE:Lnet/jpountz/lz4/l$d$a;

    invoke-virtual {v3, v0}, Lnet/jpountz/lz4/l$d;->c(Lnet/jpountz/lz4/l$d$a;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Ljava/io/FilterInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {p0, v0}, Lnet/jpountz/lz4/k;->j(Ljava/io/InputStream;)J

    move-result-wide v2

    iput-wide v2, p0, Lnet/jpountz/lz4/k;->k:J

    iget-object v0, p0, Lnet/jpountz/lz4/k;->e:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v2, v3}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    :cond_0
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lnet/jpountz/lz4/k;->l:J

    iget-object v0, p0, Lnet/jpountz/lz4/k;->c:Lnet/jpountz/xxhash/k;

    iget-object v2, p0, Lnet/jpountz/lz4/k;->d:[B

    iget-object v3, p0, Lnet/jpountz/lz4/k;->e:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/Buffer;->position()I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v4, v3, v4}, Lnet/jpountz/xxhash/k;->c([BIII)I

    move-result v0

    shr-int/lit8 v0, v0, 0x8

    and-int/lit16 v0, v0, 0xff

    int-to-byte v0, v0

    iget-object v2, p0, Ljava/io/FilterInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v2}, Ljava/io/InputStream;->read()I

    move-result v2

    if-ltz v2, :cond_2

    and-int/lit16 v1, v2, 0xff

    int-to-byte v1, v1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lnet/jpountz/lz4/k;->n:Lnet/jpountz/lz4/l$e;

    invoke-virtual {v0}, Lnet/jpountz/lz4/l$e;->c()Lnet/jpountz/lz4/l$b;

    move-result-object v0

    invoke-virtual {v0}, Lnet/jpountz/lz4/l$b;->b()I

    move-result v0

    iput v0, p0, Lnet/jpountz/lz4/k;->j:I

    new-array v1, v0, [B

    iput-object v1, p0, Lnet/jpountz/lz4/k;->g:[B

    new-array v0, v0, [B

    iput-object v0, p0, Lnet/jpountz/lz4/k;->i:[B

    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lnet/jpountz/lz4/k;->h:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v4}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lnet/jpountz/lz4/k;->m:Z

    return-void

    :cond_1
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Stream frame descriptor corrupted"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final h(Ljava/io/InputStream;)I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    move v1, v0

    :cond_0
    iget-object v2, p0, Lnet/jpountz/lz4/k;->o:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    rsub-int/lit8 v3, v1, 0x4

    invoke-virtual {p1, v2, v1, v3}, Ljava/io/InputStream;->read([BII)I

    move-result v2

    if-ltz v2, :cond_1

    add-int/2addr v1, v2

    const/4 v2, 0x4

    if-lt v1, v2, :cond_0

    iget-object p1, p0, Lnet/jpountz/lz4/k;->o:Ljava/nio/ByteBuffer;

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result p1

    return p1

    :cond_1
    new-instance p1, Ljava/io/IOException;

    const-string v0, "Stream ended prematurely"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final j(Ljava/io/InputStream;)J
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    move v1, v0

    :cond_0
    iget-object v2, p0, Lnet/jpountz/lz4/k;->o:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    rsub-int/lit8 v3, v1, 0x8

    invoke-virtual {p1, v2, v1, v3}, Ljava/io/InputStream;->read([BII)I

    move-result v2

    if-ltz v2, :cond_1

    add-int/2addr v1, v2

    const/16 v2, 0x8

    if-lt v1, v2, :cond_0

    iget-object p1, p0, Lnet/jpountz/lz4/k;->o:Ljava/nio/ByteBuffer;

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->getLong(I)J

    move-result-wide v0

    return-wide v0

    :cond_1
    new-instance p1, Ljava/io/IOException;

    const-string v0, "Stream ended prematurely"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final k()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Ljava/io/FilterInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {p0, v0}, Lnet/jpountz/lz4/k;->h(Ljava/io/InputStream;)I

    move-result v0

    const/16 v1, 0x400

    new-array v2, v1, [B

    :goto_0
    if-lez v0, :cond_1

    iget-object v3, p0, Ljava/io/FilterInputStream;->in:Ljava/io/InputStream;

    const/4 v4, 0x0

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v5

    invoke-virtual {v3, v2, v4, v5}, Ljava/io/InputStream;->read([BII)I

    move-result v3

    if-ltz v3, :cond_0

    sub-int/2addr v0, v3

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Stream ended prematurely"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lnet/jpountz/lz4/k;->m:Z

    return-void
.end method

.method public declared-synchronized mark(I)V
    .locals 1

    monitor-enter p0

    :try_start_0
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "mark not supported"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public markSupported()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public read()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    :goto_0
    iget-boolean v0, p0, Lnet/jpountz/lz4/k;->m:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lnet/jpountz/lz4/k;->h:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/Buffer;->remaining()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 2
    :cond_0
    iget-object v0, p0, Lnet/jpountz/lz4/k;->h:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    return v0

    .line 3
    :cond_1
    :goto_1
    iget-boolean v0, p0, Lnet/jpountz/lz4/k;->m:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lnet/jpountz/lz4/k;->n:Lnet/jpountz/lz4/l$e;

    invoke-virtual {v0}, Lnet/jpountz/lz4/l$e;->f()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 4
    :cond_2
    iget-boolean v0, p0, Lnet/jpountz/lz4/k;->m:Z

    const/4 v1, -0x1

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lnet/jpountz/lz4/k;->f:Z

    if-eqz v0, :cond_3

    return v1

    .line 5
    :cond_3
    invoke-virtual {p0}, Lnet/jpountz/lz4/k;->e()Z

    move-result v0

    if-nez v0, :cond_4

    return v1

    .line 6
    :cond_4
    invoke-virtual {p0}, Lnet/jpountz/lz4/k;->f()V

    goto :goto_0
.end method

.method public read([BII)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-ltz p2, :cond_5

    if-ltz p3, :cond_5

    add-int v0, p2, p3

    .line 7
    array-length v1, p1

    if-gt v0, v1, :cond_5

    .line 8
    :goto_0
    iget-boolean v0, p0, Lnet/jpountz/lz4/k;->m:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lnet/jpountz/lz4/k;->h:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/Buffer;->remaining()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 9
    :cond_0
    iget-object v0, p0, Lnet/jpountz/lz4/k;->h:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/Buffer;->remaining()I

    move-result v0

    invoke-static {p3, v0}, Ljava/lang/Math;->min(II)I

    move-result p3

    .line 10
    iget-object v0, p0, Lnet/jpountz/lz4/k;->h:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1, p2, p3}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    return p3

    .line 11
    :cond_1
    :goto_1
    iget-boolean v0, p0, Lnet/jpountz/lz4/k;->m:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lnet/jpountz/lz4/k;->n:Lnet/jpountz/lz4/l$e;

    invoke-virtual {v0}, Lnet/jpountz/lz4/l$e;->f()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 12
    :cond_2
    iget-boolean v0, p0, Lnet/jpountz/lz4/k;->m:Z

    const/4 v1, -0x1

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lnet/jpountz/lz4/k;->f:Z

    if-eqz v0, :cond_3

    return v1

    .line 13
    :cond_3
    invoke-virtual {p0}, Lnet/jpountz/lz4/k;->e()Z

    move-result v0

    if-nez v0, :cond_4

    return v1

    .line 14
    :cond_4
    invoke-virtual {p0}, Lnet/jpountz/lz4/k;->f()V

    goto :goto_0

    .line 15
    :cond_5
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p1
.end method

.method public declared-synchronized reset()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "reset not supported"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
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
    :goto_0
    iget-boolean v2, p0, Lnet/jpountz/lz4/k;->m:Z

    if-eqz v2, :cond_2

    iget-object v2, p0, Lnet/jpountz/lz4/k;->h:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/Buffer;->remaining()I

    move-result v2

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lnet/jpountz/lz4/k;->h:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/Buffer;->remaining()I

    move-result v0

    int-to-long v0, v0

    invoke-static {p1, p2, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p1

    iget-object v0, p0, Lnet/jpountz/lz4/k;->h:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/Buffer;->position()I

    move-result v1

    long-to-int v2, p1

    add-int/2addr v1, v2

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    return-wide p1

    :cond_2
    :goto_1
    iget-boolean v2, p0, Lnet/jpountz/lz4/k;->m:Z

    if-eqz v2, :cond_3

    iget-object v2, p0, Lnet/jpountz/lz4/k;->n:Lnet/jpountz/lz4/l$e;

    invoke-virtual {v2}, Lnet/jpountz/lz4/l$e;->f()Z

    move-result v2

    if-eqz v2, :cond_5

    :cond_3
    iget-boolean v2, p0, Lnet/jpountz/lz4/k;->m:Z

    if-eqz v2, :cond_4

    iget-boolean v2, p0, Lnet/jpountz/lz4/k;->f:Z

    if-eqz v2, :cond_4

    return-wide v0

    :cond_4
    invoke-virtual {p0}, Lnet/jpountz/lz4/k;->e()Z

    move-result v2

    if-nez v2, :cond_5

    return-wide v0

    :cond_5
    invoke-virtual {p0}, Lnet/jpountz/lz4/k;->f()V

    goto :goto_0
.end method
