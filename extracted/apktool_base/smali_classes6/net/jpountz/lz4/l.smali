.class public Lnet/jpountz/lz4/l;
.super Ljava/io/FilterOutputStream;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/jpountz/lz4/l$e;,
        Lnet/jpountz/lz4/l$b;,
        Lnet/jpountz/lz4/l$d;,
        Lnet/jpountz/lz4/l$c;
    }
.end annotation


# static fields
.field public static final j:I = 0x4

.field public static final k:I = 0x8

.field public static final l:I = 0x184d2204

.field public static final m:I = 0xf

.field public static final n:I = -0x80000000

.field public static final o:[Lnet/jpountz/lz4/l$d$a;

.field public static final p:Ljava/lang/String; = "The stream is already closed"


# instance fields
.field public final b:Lnet/jpountz/lz4/d;

.field public final c:Lnet/jpountz/xxhash/k;

.field public final d:Ljava/nio/ByteBuffer;

.field public final e:[B

.field public final f:I

.field public final g:J

.field public final h:Ljava/nio/ByteBuffer;

.field public i:Lnet/jpountz/lz4/l$e;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lnet/jpountz/lz4/l$d$a;->BLOCK_INDEPENDENCE:Lnet/jpountz/lz4/l$d$a;

    filled-new-array {v0}, [Lnet/jpountz/lz4/l$d$a;

    move-result-object v0

    sput-object v0, Lnet/jpountz/lz4/l;->o:[Lnet/jpountz/lz4/l$d$a;

    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 17
    sget-object v0, Lnet/jpountz/lz4/l$c;->SIZE_4MB:Lnet/jpountz/lz4/l$c;

    invoke-direct {p0, p1, v0}, Lnet/jpountz/lz4/l;-><init>(Ljava/io/OutputStream;Lnet/jpountz/lz4/l$c;)V

    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;Lnet/jpountz/lz4/l$c;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 16
    sget-object v0, Lnet/jpountz/lz4/l;->o:[Lnet/jpountz/lz4/l$d$a;

    invoke-direct {p0, p1, p2, v0}, Lnet/jpountz/lz4/l;-><init>(Ljava/io/OutputStream;Lnet/jpountz/lz4/l$c;[Lnet/jpountz/lz4/l$d$a;)V

    return-void
.end method

.method public varargs constructor <init>(Ljava/io/OutputStream;Lnet/jpountz/lz4/l$c;JLnet/jpountz/lz4/d;Lnet/jpountz/xxhash/k;[Lnet/jpountz/lz4/l$d$a;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3
    invoke-direct {p0, p1}, Ljava/io/FilterOutputStream;-><init>(Ljava/io/OutputStream;)V

    const/4 p1, 0x4

    .line 4
    invoke-static {p1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object p1

    sget-object v0, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object p1

    iput-object p1, p0, Lnet/jpountz/lz4/l;->h:Ljava/nio/ByteBuffer;

    const/4 p1, 0x0

    .line 5
    iput-object p1, p0, Lnet/jpountz/lz4/l;->i:Lnet/jpountz/lz4/l$e;

    .line 6
    iput-object p5, p0, Lnet/jpountz/lz4/l;->b:Lnet/jpountz/lz4/d;

    .line 7
    iput-object p6, p0, Lnet/jpountz/lz4/l;->c:Lnet/jpountz/xxhash/k;

    .line 8
    new-instance p6, Lnet/jpountz/lz4/l$e;

    new-instance v1, Lnet/jpountz/lz4/l$d;

    const/4 v2, 0x1

    invoke-direct {v1, v2, p7}, Lnet/jpountz/lz4/l$d;-><init>(I[Lnet/jpountz/lz4/l$d$a;)V

    new-instance p7, Lnet/jpountz/lz4/l$b;

    invoke-direct {p7, p2, p1}, Lnet/jpountz/lz4/l$b;-><init>(Lnet/jpountz/lz4/l$c;Lnet/jpountz/lz4/l$a;)V

    invoke-direct {p6, v1, p7}, Lnet/jpountz/lz4/l$e;-><init>(Lnet/jpountz/lz4/l$d;Lnet/jpountz/lz4/l$b;)V

    iput-object p6, p0, Lnet/jpountz/lz4/l;->i:Lnet/jpountz/lz4/l$e;

    .line 9
    invoke-virtual {p6}, Lnet/jpountz/lz4/l$e;->c()Lnet/jpountz/lz4/l$b;

    move-result-object p1

    invoke-virtual {p1}, Lnet/jpountz/lz4/l$b;->b()I

    move-result p1

    iput p1, p0, Lnet/jpountz/lz4/l;->f:I

    .line 10
    invoke-static {p1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object p2

    invoke-virtual {p2, v0}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object p2

    iput-object p2, p0, Lnet/jpountz/lz4/l;->d:Ljava/nio/ByteBuffer;

    .line 11
    invoke-virtual {p5, p1}, Lnet/jpountz/lz4/d;->h(I)I

    move-result p1

    new-array p1, p1, [B

    iput-object p1, p0, Lnet/jpountz/lz4/l;->e:[B

    .line 12
    iget-object p1, p0, Lnet/jpountz/lz4/l;->i:Lnet/jpountz/lz4/l$e;

    invoke-virtual {p1}, Lnet/jpountz/lz4/l$e;->d()Lnet/jpountz/lz4/l$d;

    move-result-object p1

    sget-object p2, Lnet/jpountz/lz4/l$d$a;->CONTENT_SIZE:Lnet/jpountz/lz4/l$d$a;

    invoke-virtual {p1, p2}, Lnet/jpountz/lz4/l$d;->c(Lnet/jpountz/lz4/l$d$a;)Z

    move-result p1

    if-eqz p1, :cond_1

    const-wide/16 p1, 0x0

    cmp-long p1, p3, p1

    if-ltz p1, :cond_0

    goto :goto_0

    .line 13
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Known size must be greater than zero in order to use the known size feature"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 14
    :cond_1
    :goto_0
    iput-wide p3, p0, Lnet/jpountz/lz4/l;->g:J

    .line 15
    invoke-virtual {p0}, Lnet/jpountz/lz4/l;->f()V

    return-void
.end method

.method public varargs constructor <init>(Ljava/io/OutputStream;Lnet/jpountz/lz4/l$c;J[Lnet/jpountz/lz4/l$d$a;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2
    invoke-static {}, Lnet/jpountz/lz4/i;->e()Lnet/jpountz/lz4/i;

    move-result-object v0

    invoke-virtual {v0}, Lnet/jpountz/lz4/i;->c()Lnet/jpountz/lz4/d;

    move-result-object v6

    invoke-static {}, Lnet/jpountz/xxhash/t;->b()Lnet/jpountz/xxhash/t;

    move-result-object v0

    invoke-virtual {v0}, Lnet/jpountz/xxhash/t;->d()Lnet/jpountz/xxhash/k;

    move-result-object v7

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-wide v4, p3

    move-object v8, p5

    invoke-direct/range {v1 .. v8}, Lnet/jpountz/lz4/l;-><init>(Ljava/io/OutputStream;Lnet/jpountz/lz4/l$c;JLnet/jpountz/lz4/d;Lnet/jpountz/xxhash/k;[Lnet/jpountz/lz4/l$d$a;)V

    return-void
.end method

.method public varargs constructor <init>(Ljava/io/OutputStream;Lnet/jpountz/lz4/l$c;[Lnet/jpountz/lz4/l$d$a;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v3, -0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v5, p3

    .line 1
    invoke-direct/range {v0 .. v5}, Lnet/jpountz/lz4/l;-><init>(Ljava/io/OutputStream;Lnet/jpountz/lz4/l$c;J[Lnet/jpountz/lz4/l$d$a;)V

    return-void
.end method


# virtual methods
.method public final c()V
    .locals 2

    iget-object v0, p0, Lnet/jpountz/lz4/l;->i:Lnet/jpountz/lz4/l$e;

    invoke-virtual {v0}, Lnet/jpountz/lz4/l$e;->f()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "The stream is already closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lnet/jpountz/lz4/l;->i:Lnet/jpountz/lz4/l$e;

    invoke-virtual {v0}, Lnet/jpountz/lz4/l$e;->f()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lnet/jpountz/lz4/l;->flush()V

    invoke-virtual {p0}, Lnet/jpountz/lz4/l;->e()V

    :cond_0
    invoke-super {p0}, Ljava/io/FilterOutputStream;->close()V

    return-void
.end method

.method public final d()V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lnet/jpountz/lz4/l;->d:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/Buffer;->position()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lnet/jpountz/lz4/l;->e:[B

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([BB)V

    iget-object v0, p0, Lnet/jpountz/lz4/l;->i:Lnet/jpountz/lz4/l$e;

    sget-object v2, Lnet/jpountz/lz4/l$d$a;->CONTENT_CHECKSUM:Lnet/jpountz/lz4/l$d$a;

    invoke-virtual {v0, v2}, Lnet/jpountz/lz4/l$e;->e(Lnet/jpountz/lz4/l$d$a;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lnet/jpountz/lz4/l;->i:Lnet/jpountz/lz4/l$e;

    iget-object v2, p0, Lnet/jpountz/lz4/l;->d:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    iget-object v3, p0, Lnet/jpountz/lz4/l;->d:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/Buffer;->position()I

    move-result v3

    invoke-virtual {v0, v2, v1, v3}, Lnet/jpountz/lz4/l$e;->g([BII)V

    :cond_1
    iget-object v4, p0, Lnet/jpountz/lz4/l;->b:Lnet/jpountz/lz4/d;

    iget-object v0, p0, Lnet/jpountz/lz4/l;->d:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v5

    iget-object v0, p0, Lnet/jpountz/lz4/l;->d:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/Buffer;->position()I

    move-result v7

    iget-object v8, p0, Lnet/jpountz/lz4/l;->e:[B

    const/4 v9, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v4 .. v9}, Lnet/jpountz/lz4/d;->b([BII[BI)I

    move-result v0

    iget-object v2, p0, Lnet/jpountz/lz4/l;->d:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/Buffer;->position()I

    move-result v2

    if-lt v0, v2, :cond_2

    iget-object v0, p0, Lnet/jpountz/lz4/l;->d:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/Buffer;->position()I

    move-result v0

    iget-object v2, p0, Lnet/jpountz/lz4/l;->d:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    invoke-static {v2, v0}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v2

    const/high16 v3, -0x80000000

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lnet/jpountz/lz4/l;->e:[B

    move v3, v1

    :goto_0
    iget-object v4, p0, Lnet/jpountz/lz4/l;->h:Ljava/nio/ByteBuffer;

    or-int/2addr v3, v0

    invoke-virtual {v4, v1, v3}, Ljava/nio/ByteBuffer;->putInt(II)Ljava/nio/ByteBuffer;

    iget-object v3, p0, Ljava/io/FilterOutputStream;->out:Ljava/io/OutputStream;

    iget-object v4, p0, Lnet/jpountz/lz4/l;->h:Ljava/nio/ByteBuffer;

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/OutputStream;->write([B)V

    iget-object v3, p0, Ljava/io/FilterOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v3, v2, v1, v0}, Ljava/io/OutputStream;->write([BII)V

    iget-object v3, p0, Lnet/jpountz/lz4/l;->i:Lnet/jpountz/lz4/l$e;

    sget-object v4, Lnet/jpountz/lz4/l$d$a;->BLOCK_CHECKSUM:Lnet/jpountz/lz4/l$d$a;

    invoke-virtual {v3, v4}, Lnet/jpountz/lz4/l$e;->e(Lnet/jpountz/lz4/l$d$a;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lnet/jpountz/lz4/l;->h:Ljava/nio/ByteBuffer;

    iget-object v4, p0, Lnet/jpountz/lz4/l;->c:Lnet/jpountz/xxhash/k;

    invoke-virtual {v4, v2, v1, v0, v1}, Lnet/jpountz/xxhash/k;->c([BIII)I

    move-result v0

    invoke-virtual {v3, v1, v0}, Ljava/nio/ByteBuffer;->putInt(II)Ljava/nio/ByteBuffer;

    iget-object v0, p0, Ljava/io/FilterOutputStream;->out:Ljava/io/OutputStream;

    iget-object v1, p0, Lnet/jpountz/lz4/l;->h:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    :cond_3
    iget-object v0, p0, Lnet/jpountz/lz4/l;->d:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    return-void
.end method

.method public final e()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lnet/jpountz/lz4/l;->h:Ljava/nio/ByteBuffer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1}, Ljava/nio/ByteBuffer;->putInt(II)Ljava/nio/ByteBuffer;

    iget-object v0, p0, Ljava/io/FilterOutputStream;->out:Ljava/io/OutputStream;

    iget-object v2, p0, Lnet/jpountz/lz4/l;->h:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/OutputStream;->write([B)V

    iget-object v0, p0, Lnet/jpountz/lz4/l;->i:Lnet/jpountz/lz4/l$e;

    sget-object v2, Lnet/jpountz/lz4/l$d$a;->CONTENT_CHECKSUM:Lnet/jpountz/lz4/l$d$a;

    invoke-virtual {v0, v2}, Lnet/jpountz/lz4/l$e;->e(Lnet/jpountz/lz4/l$d$a;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnet/jpountz/lz4/l;->h:Ljava/nio/ByteBuffer;

    iget-object v2, p0, Lnet/jpountz/lz4/l;->i:Lnet/jpountz/lz4/l$e;

    invoke-virtual {v2}, Lnet/jpountz/lz4/l$e;->a()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/nio/ByteBuffer;->putInt(II)Ljava/nio/ByteBuffer;

    iget-object v0, p0, Ljava/io/FilterOutputStream;->out:Ljava/io/OutputStream;

    iget-object v1, p0, Lnet/jpountz/lz4/l;->h:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    :cond_0
    iget-object v0, p0, Lnet/jpountz/lz4/l;->i:Lnet/jpountz/lz4/l$e;

    invoke-virtual {v0}, Lnet/jpountz/lz4/l$e;->b()V

    return-void
.end method

.method public final f()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0xf

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    const v1, 0x184d2204

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    iget-object v1, p0, Lnet/jpountz/lz4/l;->i:Lnet/jpountz/lz4/l$e;

    invoke-virtual {v1}, Lnet/jpountz/lz4/l$e;->d()Lnet/jpountz/lz4/l$d;

    move-result-object v1

    invoke-virtual {v1}, Lnet/jpountz/lz4/l$d;->d()B

    move-result v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    iget-object v1, p0, Lnet/jpountz/lz4/l;->i:Lnet/jpountz/lz4/l$e;

    invoke-virtual {v1}, Lnet/jpountz/lz4/l$e;->c()Lnet/jpountz/lz4/l$b;

    move-result-object v1

    invoke-virtual {v1}, Lnet/jpountz/lz4/l$b;->c()B

    move-result v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    iget-object v1, p0, Lnet/jpountz/lz4/l;->i:Lnet/jpountz/lz4/l$e;

    sget-object v2, Lnet/jpountz/lz4/l$d$a;->CONTENT_SIZE:Lnet/jpountz/lz4/l$d$a;

    invoke-virtual {v1, v2}, Lnet/jpountz/lz4/l$e;->e(Lnet/jpountz/lz4/l$d$a;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-wide v1, p0, Lnet/jpountz/lz4/l;->g:J

    invoke-virtual {v0, v1, v2}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    :cond_0
    iget-object v1, p0, Lnet/jpountz/lz4/l;->c:Lnet/jpountz/xxhash/k;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    invoke-virtual {v0}, Ljava/nio/Buffer;->position()I

    move-result v3

    const/4 v4, 0x4

    sub-int/2addr v3, v4

    const/4 v5, 0x0

    invoke-virtual {v1, v2, v4, v3, v5}, Lnet/jpountz/xxhash/k;->c([BIII)I

    move-result v1

    shr-int/lit8 v1, v1, 0x8

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    iget-object v1, p0, Ljava/io/FilterOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    invoke-virtual {v0}, Ljava/nio/Buffer;->position()I

    move-result v0

    invoke-virtual {v1, v2, v5, v0}, Ljava/io/OutputStream;->write([BII)V

    return-void
.end method

.method public flush()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lnet/jpountz/lz4/l;->i:Lnet/jpountz/lz4/l$e;

    invoke-virtual {v0}, Lnet/jpountz/lz4/l$e;->f()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lnet/jpountz/lz4/l;->d()V

    :cond_0
    invoke-super {p0}, Ljava/io/FilterOutputStream;->flush()V

    return-void
.end method

.method public write(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lnet/jpountz/lz4/l;->c()V

    .line 2
    iget-object v0, p0, Lnet/jpountz/lz4/l;->d:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/Buffer;->position()I

    move-result v0

    iget v1, p0, Lnet/jpountz/lz4/l;->f:I

    if-ne v0, v1, :cond_0

    .line 3
    invoke-virtual {p0}, Lnet/jpountz/lz4/l;->d()V

    .line 4
    :cond_0
    iget-object v0, p0, Lnet/jpountz/lz4/l;->d:Ljava/nio/ByteBuffer;

    int-to-byte p1, p1

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    return-void
.end method

.method public write([BII)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-ltz p2, :cond_1

    if-ltz p3, :cond_1

    add-int v0, p2, p3

    .line 5
    array-length v1, p1

    if-gt v0, v1, :cond_1

    .line 6
    invoke-virtual {p0}, Lnet/jpountz/lz4/l;->c()V

    .line 7
    :goto_0
    iget-object v0, p0, Lnet/jpountz/lz4/l;->d:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/Buffer;->remaining()I

    move-result v0

    if-le p3, v0, :cond_0

    .line 8
    iget-object v0, p0, Lnet/jpountz/lz4/l;->d:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/Buffer;->remaining()I

    move-result v0

    .line 9
    iget-object v1, p0, Lnet/jpountz/lz4/l;->d:Ljava/nio/ByteBuffer;

    invoke-virtual {v1, p1, p2, v0}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 10
    invoke-virtual {p0}, Lnet/jpountz/lz4/l;->d()V

    add-int/2addr p2, v0

    sub-int/2addr p3, v0

    goto :goto_0

    .line 11
    :cond_0
    iget-object v0, p0, Lnet/jpountz/lz4/l;->d:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1, p2, p3}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    return-void

    .line 12
    :cond_1
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p1
.end method
