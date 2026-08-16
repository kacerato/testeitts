.class public abstract Lnet/jpountz/lz4/y;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnet/jpountz/lz4/A;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract a([BII[BII)I
.end method

.method public final b([BII[BI)I
    .locals 8

    array-length v0, p4

    sub-int v7, v0, p5

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    move v6, p5

    invoke-virtual/range {v1 .. v7}, Lnet/jpountz/lz4/y;->a([BII[BII)I

    move-result p1

    return p1
.end method

.method public abstract c(Ljava/nio/ByteBuffer;IILjava/nio/ByteBuffer;II)I
.end method

.method public final d([B[B)I
    .locals 6

    array-length v3, p1

    const/4 v5, 0x0

    const/4 v2, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v4, p2

    invoke-virtual/range {v0 .. v5}, Lnet/jpountz/lz4/y;->b([BII[BI)I

    move-result p1

    return p1
.end method

.method public final e(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)V
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

    invoke-virtual/range {v0 .. v6}, Lnet/jpountz/lz4/y;->c(Ljava/nio/ByteBuffer;IILjava/nio/ByteBuffer;II)I

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

.method public final f([BI)[B
    .locals 2

    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0, p2}, Lnet/jpountz/lz4/y;->g([BIII)[B

    move-result-object p1

    return-object p1
.end method

.method public final g([BIII)[B
    .locals 8

    new-array v7, p4, [B

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, v7

    move v6, p4

    invoke-virtual/range {v0 .. v6}, Lnet/jpountz/lz4/y;->a([BII[BII)I

    move-result p1

    if-eq p1, p4, :cond_0

    invoke-static {v7, p1}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v7

    :cond_0
    return-object v7
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
