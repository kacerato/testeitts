.class public Lnet/jpountz/lz4/e;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lnet/jpountz/lz4/d;


# direct methods
.method public constructor <init>(Lnet/jpountz/lz4/d;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnet/jpountz/lz4/e;->a:Lnet/jpountz/lz4/d;

    return-void
.end method


# virtual methods
.method public a(Ljava/nio/ByteBuffer;IILjava/nio/ByteBuffer;II)I
    .locals 7

    iget-object v0, p0, Lnet/jpountz/lz4/e;->a:Lnet/jpountz/lz4/d;

    add-int/lit8 v5, p5, 0x4

    add-int/lit8 v6, p6, -0x4

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v6}, Lnet/jpountz/lz4/d;->a(Ljava/nio/ByteBuffer;IILjava/nio/ByteBuffer;II)I

    move-result p1

    invoke-virtual {p0, p4, p5, p3}, Lnet/jpountz/lz4/e;->i(Ljava/nio/ByteBuffer;II)V

    add-int/lit8 p1, p1, 0x4

    return p1
.end method

.method public b([BII[BI)I
    .locals 8

    array-length v0, p4

    sub-int v7, v0, p5

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    move v6, p5

    invoke-virtual/range {v1 .. v7}, Lnet/jpountz/lz4/e;->c([BII[BII)I

    move-result p1

    return p1
.end method

.method public c([BII[BII)I
    .locals 7

    iget-object v0, p0, Lnet/jpountz/lz4/e;->a:Lnet/jpountz/lz4/d;

    add-int/lit8 v5, p5, 0x4

    add-int/lit8 v6, p6, -0x4

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v6}, Lnet/jpountz/lz4/d;->c([BII[BII)I

    move-result p1

    invoke-virtual {p0, p4, p5, p3}, Lnet/jpountz/lz4/e;->j([BII)V

    add-int/lit8 p1, p1, 0x4

    return p1
.end method

.method public d([B[B)I
    .locals 6

    array-length v3, p1

    const/4 v5, 0x0

    const/4 v2, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v4, p2

    invoke-virtual/range {v0 .. v5}, Lnet/jpountz/lz4/e;->b([BII[BI)I

    move-result p1

    return p1
.end method

.method public e(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)V
    .locals 7

    invoke-virtual {p1}, Ljava/nio/Buffer;->position()I

    move-result v2

    invoke-virtual {p1}, Ljava/nio/Buffer;->remaining()I

    move-result v3

    invoke-virtual {p2}, Ljava/nio/Buffer;->position()I

    move-result v5

    invoke-virtual {p2}, Ljava/nio/Buffer;->remaining()I

    move-result v6

    move-object v0, p0

    move-object v1, p1

    move-object v4, p2

    invoke-virtual/range {v0 .. v6}, Lnet/jpountz/lz4/e;->a(Ljava/nio/ByteBuffer;IILjava/nio/ByteBuffer;II)I

    move-result v0

    invoke-virtual {p1}, Ljava/nio/Buffer;->limit()I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    invoke-virtual {p2}, Ljava/nio/Buffer;->position()I

    move-result p1

    add-int/2addr p1, v0

    invoke-virtual {p2, p1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    return-void
.end method

.method public f([B)[B
    .locals 2

    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lnet/jpountz/lz4/e;->g([BII)[B

    move-result-object p1

    return-object p1
.end method

.method public g([BII)[B
    .locals 7

    invoke-virtual {p0, p3}, Lnet/jpountz/lz4/e;->h(I)I

    move-result v0

    new-array v0, v0, [B

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move-object v5, v0

    invoke-virtual/range {v1 .. v6}, Lnet/jpountz/lz4/e;->b([BII[BI)I

    move-result p1

    invoke-static {v0, p1}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object p1

    return-object p1
.end method

.method public h(I)I
    .locals 1

    iget-object v0, p0, Lnet/jpountz/lz4/e;->a:Lnet/jpountz/lz4/d;

    invoke-virtual {v0, p1}, Lnet/jpountz/lz4/d;->h(I)I

    move-result p1

    add-int/lit8 p1, p1, 0x4

    return p1
.end method

.method public final i(Ljava/nio/ByteBuffer;II)V
    .locals 2

    int-to-byte v0, p3

    invoke-virtual {p1, p2, v0}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    add-int/lit8 v0, p2, 0x1

    shr-int/lit8 v1, p3, 0x8

    int-to-byte v1, v1

    invoke-virtual {p1, v0, v1}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    add-int/lit8 v0, p2, 0x2

    shr-int/lit8 v1, p3, 0x10

    int-to-byte v1, v1

    invoke-virtual {p1, v0, v1}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    add-int/lit8 p2, p2, 0x3

    shr-int/lit8 p3, p3, 0x18

    int-to-byte p3, p3

    invoke-virtual {p1, p2, p3}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    return-void
.end method

.method public final j([BII)V
    .locals 2

    int-to-byte v0, p3

    aput-byte v0, p1, p2

    add-int/lit8 v0, p2, 0x1

    shr-int/lit8 v1, p3, 0x8

    int-to-byte v1, v1

    aput-byte v1, p1, v0

    add-int/lit8 v0, p2, 0x2

    shr-int/lit8 v1, p3, 0x10

    int-to-byte v1, v1

    aput-byte v1, p1, v0

    add-int/lit8 p2, p2, 0x3

    shr-int/lit8 p3, p3, 0x18

    int-to-byte p3, p3

    aput-byte p3, p1, p2

    return-void
.end method
