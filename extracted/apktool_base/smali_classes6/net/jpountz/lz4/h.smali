.class public Lnet/jpountz/lz4/h;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lnet/jpountz/lz4/j;

.field public final b:Lnet/jpountz/lz4/y;


# direct methods
.method public constructor <init>(Lnet/jpountz/lz4/j;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lnet/jpountz/lz4/h;->a:Lnet/jpountz/lz4/j;

    const/4 p1, 0x0

    .line 3
    iput-object p1, p0, Lnet/jpountz/lz4/h;->b:Lnet/jpountz/lz4/y;

    return-void
.end method

.method public constructor <init>(Lnet/jpountz/lz4/y;)V
    .locals 1

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lnet/jpountz/lz4/h;->a:Lnet/jpountz/lz4/j;

    .line 6
    iput-object p1, p0, Lnet/jpountz/lz4/h;->b:Lnet/jpountz/lz4/y;

    return-void
.end method

.method public static j(Ljava/nio/ByteBuffer;)I
    .locals 1

    invoke-virtual {p0}, Ljava/nio/Buffer;->position()I

    move-result v0

    invoke-static {p0, v0}, Lnet/jpountz/lz4/h;->k(Ljava/nio/ByteBuffer;I)I

    move-result p0

    return p0
.end method

.method public static k(Ljava/nio/ByteBuffer;I)I
    .locals 2

    invoke-virtual {p0, p1}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    add-int/lit8 v1, p1, 0x1

    invoke-virtual {p0, v1}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    add-int/lit8 v1, p1, 0x2

    invoke-virtual {p0, v1}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    add-int/lit8 p1, p1, 0x3

    invoke-virtual {p0, p1}, Ljava/nio/ByteBuffer;->get(I)B

    move-result p0

    shl-int/lit8 p0, p0, 0x18

    or-int/2addr p0, v0

    return p0
.end method

.method public static l([B)I
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lnet/jpountz/lz4/h;->m([BI)I

    move-result p0

    return p0
.end method

.method public static m([BI)I
    .locals 2

    aget-byte v0, p0, p1

    and-int/lit16 v0, v0, 0xff

    add-int/lit8 v1, p1, 0x1

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    add-int/lit8 v1, p1, 0x2

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    add-int/lit8 p1, p1, 0x3

    aget-byte p0, p0, p1

    shl-int/lit8 p0, p0, 0x18

    or-int/2addr p0, v0

    return p0
.end method


# virtual methods
.method public a(Ljava/nio/ByteBuffer;IILjava/nio/ByteBuffer;I)I
    .locals 7

    iget-object v0, p0, Lnet/jpountz/lz4/h;->b:Lnet/jpountz/lz4/y;

    if-nez v0, :cond_0

    invoke-virtual {p0, p1, p2, p4, p5}, Lnet/jpountz/lz4/h;->b(Ljava/nio/ByteBuffer;ILjava/nio/ByteBuffer;I)I

    move-result p1

    return p1

    :cond_0
    invoke-static {p1, p2}, Lnet/jpountz/lz4/h;->k(Ljava/nio/ByteBuffer;I)I

    move-result v6

    iget-object v0, p0, Lnet/jpountz/lz4/h;->b:Lnet/jpountz/lz4/y;

    add-int/lit8 v2, p2, 0x4

    add-int/lit8 v3, p3, -0x4

    move-object v1, p1

    move-object v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v6}, Lnet/jpountz/lz4/y;->c(Ljava/nio/ByteBuffer;IILjava/nio/ByteBuffer;II)I

    move-result p1

    return p1
.end method

.method public b(Ljava/nio/ByteBuffer;ILjava/nio/ByteBuffer;I)I
    .locals 7

    iget-object v0, p0, Lnet/jpountz/lz4/h;->b:Lnet/jpountz/lz4/y;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Ljava/nio/Buffer;->remaining()I

    move-result v0

    sub-int v4, v0, p2

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-object v5, p3

    move v6, p4

    invoke-virtual/range {v1 .. v6}, Lnet/jpountz/lz4/h;->a(Ljava/nio/ByteBuffer;IILjava/nio/ByteBuffer;I)I

    move-result p1

    return p1

    :cond_0
    invoke-static {p1, p2}, Lnet/jpountz/lz4/h;->k(Ljava/nio/ByteBuffer;I)I

    move-result v5

    iget-object v0, p0, Lnet/jpountz/lz4/h;->a:Lnet/jpountz/lz4/j;

    add-int/lit8 v2, p2, 0x4

    move-object v1, p1

    move-object v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Lnet/jpountz/lz4/j;->b(Ljava/nio/ByteBuffer;ILjava/nio/ByteBuffer;II)I

    move-result p1

    add-int/lit8 p1, p1, 0x4

    return p1
.end method

.method public c([BII[BI)I
    .locals 7

    iget-object v0, p0, Lnet/jpountz/lz4/h;->b:Lnet/jpountz/lz4/y;

    if-nez v0, :cond_0

    invoke-virtual {p0, p1, p2, p4, p5}, Lnet/jpountz/lz4/h;->d([BI[BI)I

    move-result p1

    return p1

    :cond_0
    invoke-static {p1, p2}, Lnet/jpountz/lz4/h;->m([BI)I

    move-result v6

    iget-object v0, p0, Lnet/jpountz/lz4/h;->b:Lnet/jpountz/lz4/y;

    add-int/lit8 v2, p2, 0x4

    add-int/lit8 v3, p3, -0x4

    move-object v1, p1

    move-object v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v6}, Lnet/jpountz/lz4/y;->a([BII[BII)I

    move-result p1

    return p1
.end method

.method public d([BI[BI)I
    .locals 7

    iget-object v0, p0, Lnet/jpountz/lz4/h;->b:Lnet/jpountz/lz4/y;

    if-eqz v0, :cond_0

    array-length v0, p1

    sub-int v4, v0, p2

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-object v5, p3

    move v6, p4

    invoke-virtual/range {v1 .. v6}, Lnet/jpountz/lz4/h;->c([BII[BI)I

    move-result p1

    return p1

    :cond_0
    invoke-static {p1, p2}, Lnet/jpountz/lz4/h;->m([BI)I

    move-result v5

    iget-object v0, p0, Lnet/jpountz/lz4/h;->a:Lnet/jpountz/lz4/j;

    add-int/lit8 v2, p2, 0x4

    move-object v1, p1

    move-object v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Lnet/jpountz/lz4/j;->a([BI[BII)I

    move-result p1

    add-int/lit8 p1, p1, 0x4

    return p1
.end method

.method public e([B[B)I
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2, v0}, Lnet/jpountz/lz4/h;->d([BI[BI)I

    move-result p1

    return p1
.end method

.method public f(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)V
    .locals 8

    invoke-virtual {p1}, Ljava/nio/Buffer;->position()I

    move-result v0

    invoke-static {p1, v0}, Lnet/jpountz/lz4/h;->k(Ljava/nio/ByteBuffer;I)I

    move-result v7

    iget-object v1, p0, Lnet/jpountz/lz4/h;->b:Lnet/jpountz/lz4/y;

    if-nez v1, :cond_0

    iget-object v1, p0, Lnet/jpountz/lz4/h;->a:Lnet/jpountz/lz4/j;

    invoke-virtual {p1}, Ljava/nio/Buffer;->position()I

    move-result v0

    add-int/lit8 v3, v0, 0x4

    invoke-virtual {p2}, Ljava/nio/Buffer;->position()I

    move-result v5

    move-object v2, p1

    move-object v4, p2

    move v6, v7

    invoke-virtual/range {v1 .. v6}, Lnet/jpountz/lz4/j;->b(Ljava/nio/ByteBuffer;ILjava/nio/ByteBuffer;II)I

    move-result v0

    invoke-virtual {p1}, Ljava/nio/Buffer;->position()I

    move-result v1

    add-int/lit8 v1, v1, 0x4

    add-int/2addr v1, v0

    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    invoke-virtual {p2}, Ljava/nio/Buffer;->position()I

    move-result p1

    add-int/2addr p1, v7

    invoke-virtual {p2, p1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/nio/Buffer;->position()I

    move-result v0

    add-int/lit8 v3, v0, 0x4

    invoke-virtual {p1}, Ljava/nio/Buffer;->remaining()I

    move-result v0

    add-int/lit8 v4, v0, -0x4

    invoke-virtual {p2}, Ljava/nio/Buffer;->position()I

    move-result v6

    move-object v2, p1

    move-object v5, p2

    invoke-virtual/range {v1 .. v7}, Lnet/jpountz/lz4/y;->c(Ljava/nio/ByteBuffer;IILjava/nio/ByteBuffer;II)I

    move-result v0

    invoke-virtual {p1}, Ljava/nio/Buffer;->limit()I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    invoke-virtual {p2}, Ljava/nio/Buffer;->position()I

    move-result p1

    add-int/2addr p1, v0

    invoke-virtual {p2, p1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    :goto_0
    return-void
.end method

.method public g([B)[B
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lnet/jpountz/lz4/h;->h([BI)[B

    move-result-object p1

    return-object p1
.end method

.method public h([BI)[B
    .locals 2

    iget-object v0, p0, Lnet/jpountz/lz4/h;->b:Lnet/jpountz/lz4/y;

    if-eqz v0, :cond_0

    array-length v0, p1

    sub-int/2addr v0, p2

    invoke-virtual {p0, p1, p2, v0}, Lnet/jpountz/lz4/h;->i([BII)[B

    move-result-object p1

    return-object p1

    :cond_0
    invoke-static {p1, p2}, Lnet/jpountz/lz4/h;->m([BI)I

    move-result v0

    iget-object v1, p0, Lnet/jpountz/lz4/h;->a:Lnet/jpountz/lz4/j;

    add-int/lit8 p2, p2, 0x4

    invoke-virtual {v1, p1, p2, v0}, Lnet/jpountz/lz4/j;->g([BII)[B

    move-result-object p1

    return-object p1
.end method

.method public i([BII)[B
    .locals 2

    iget-object v0, p0, Lnet/jpountz/lz4/h;->b:Lnet/jpountz/lz4/y;

    if-nez v0, :cond_0

    invoke-virtual {p0, p1, p2}, Lnet/jpountz/lz4/h;->h([BI)[B

    move-result-object p1

    return-object p1

    :cond_0
    invoke-static {p1, p2}, Lnet/jpountz/lz4/h;->m([BI)I

    move-result v0

    iget-object v1, p0, Lnet/jpountz/lz4/h;->b:Lnet/jpountz/lz4/y;

    add-int/lit8 p2, p2, 0x4

    add-int/lit8 p3, p3, -0x4

    invoke-virtual {v1, p1, p2, p3, v0}, Lnet/jpountz/lz4/y;->g([BIII)[B

    move-result-object p1

    return-object p1
.end method
