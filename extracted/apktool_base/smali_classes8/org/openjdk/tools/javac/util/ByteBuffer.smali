.class public Lorg/openjdk/tools/javac/util/ByteBuffer;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public elems:[B

.field public length:I


# direct methods
.method public constructor <init>()V
    .locals 1

    const/16 v0, 0x40

    .line 1
    invoke-direct {p0, v0}, Lorg/openjdk/tools/javac/util/ByteBuffer;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    new-array p1, p1, [B

    iput-object p1, p0, Lorg/openjdk/tools/javac/util/ByteBuffer;->elems:[B

    const/4 p1, 0x0

    .line 4
    iput p1, p0, Lorg/openjdk/tools/javac/util/ByteBuffer;->length:I

    return-void
.end method


# virtual methods
.method public appendByte(I)V
    .locals 3

    iget-object v0, p0, Lorg/openjdk/tools/javac/util/ByteBuffer;->elems:[B

    iget v1, p0, Lorg/openjdk/tools/javac/util/ByteBuffer;->length:I

    invoke-static {v0, v1}, Lorg/openjdk/tools/javac/util/ArrayUtils;->ensureCapacity([BI)[B

    move-result-object v0

    iput-object v0, p0, Lorg/openjdk/tools/javac/util/ByteBuffer;->elems:[B

    iget v1, p0, Lorg/openjdk/tools/javac/util/ByteBuffer;->length:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/openjdk/tools/javac/util/ByteBuffer;->length:I

    int-to-byte p1, p1

    aput-byte p1, v0, v1

    return-void
.end method

.method public appendBytes([B)V
    .locals 2

    .line 4
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lorg/openjdk/tools/javac/util/ByteBuffer;->appendBytes([BII)V

    return-void
.end method

.method public appendBytes([BII)V
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/openjdk/tools/javac/util/ByteBuffer;->elems:[B

    iget v1, p0, Lorg/openjdk/tools/javac/util/ByteBuffer;->length:I

    add-int/2addr v1, p3

    invoke-static {v0, v1}, Lorg/openjdk/tools/javac/util/ArrayUtils;->ensureCapacity([BI)[B

    move-result-object v0

    iput-object v0, p0, Lorg/openjdk/tools/javac/util/ByteBuffer;->elems:[B

    .line 2
    iget v1, p0, Lorg/openjdk/tools/javac/util/ByteBuffer;->length:I

    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 3
    iget p1, p0, Lorg/openjdk/tools/javac/util/ByteBuffer;->length:I

    add-int/2addr p1, p3

    iput p1, p0, Lorg/openjdk/tools/javac/util/ByteBuffer;->length:I

    return-void
.end method

.method public appendChar(I)V
    .locals 3

    iget-object v0, p0, Lorg/openjdk/tools/javac/util/ByteBuffer;->elems:[B

    iget v1, p0, Lorg/openjdk/tools/javac/util/ByteBuffer;->length:I

    add-int/lit8 v1, v1, 0x1

    invoke-static {v0, v1}, Lorg/openjdk/tools/javac/util/ArrayUtils;->ensureCapacity([BI)[B

    move-result-object v0

    iput-object v0, p0, Lorg/openjdk/tools/javac/util/ByteBuffer;->elems:[B

    iget v1, p0, Lorg/openjdk/tools/javac/util/ByteBuffer;->length:I

    shr-int/lit8 v2, p1, 0x8

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    add-int/lit8 v2, v1, 0x1

    and-int/lit16 p1, p1, 0xff

    int-to-byte p1, p1

    aput-byte p1, v0, v2

    add-int/lit8 v1, v1, 0x2

    iput v1, p0, Lorg/openjdk/tools/javac/util/ByteBuffer;->length:I

    return-void
.end method

.method public appendDouble(D)V
    .locals 3

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    new-instance v2, Ljava/io/DataOutputStream;

    invoke-direct {v2, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    :try_start_0
    invoke-virtual {v2, p1, p2}, Ljava/io/DataOutputStream;->writeDouble(D)V

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2, v1}, Lorg/openjdk/tools/javac/util/ByteBuffer;->appendBytes([BII)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    new-instance p1, Ljava/lang/AssertionError;

    const-string p2, "write"

    invoke-direct {p1, p2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p1
.end method

.method public appendFloat(F)V
    .locals 3

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    new-instance v2, Ljava/io/DataOutputStream;

    invoke-direct {v2, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    :try_start_0
    invoke-virtual {v2, p1}, Ljava/io/DataOutputStream;->writeFloat(F)V

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lorg/openjdk/tools/javac/util/ByteBuffer;->appendBytes([BII)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    new-instance p1, Ljava/lang/AssertionError;

    const-string v0, "write"

    invoke-direct {p1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p1
.end method

.method public appendInt(I)V
    .locals 4

    iget-object v0, p0, Lorg/openjdk/tools/javac/util/ByteBuffer;->elems:[B

    iget v1, p0, Lorg/openjdk/tools/javac/util/ByteBuffer;->length:I

    add-int/lit8 v1, v1, 0x3

    invoke-static {v0, v1}, Lorg/openjdk/tools/javac/util/ArrayUtils;->ensureCapacity([BI)[B

    move-result-object v0

    iput-object v0, p0, Lorg/openjdk/tools/javac/util/ByteBuffer;->elems:[B

    iget v1, p0, Lorg/openjdk/tools/javac/util/ByteBuffer;->length:I

    shr-int/lit8 v2, p1, 0x18

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    add-int/lit8 v2, v1, 0x1

    shr-int/lit8 v3, p1, 0x10

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    aput-byte v3, v0, v2

    add-int/lit8 v2, v1, 0x2

    shr-int/lit8 v3, p1, 0x8

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    aput-byte v3, v0, v2

    add-int/lit8 v2, v1, 0x3

    and-int/lit16 p1, p1, 0xff

    int-to-byte p1, p1

    aput-byte p1, v0, v2

    add-int/lit8 v1, v1, 0x4

    iput v1, p0, Lorg/openjdk/tools/javac/util/ByteBuffer;->length:I

    return-void
.end method

.method public appendLong(J)V
    .locals 3

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    new-instance v2, Ljava/io/DataOutputStream;

    invoke-direct {v2, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    :try_start_0
    invoke-virtual {v2, p1, p2}, Ljava/io/DataOutputStream;->writeLong(J)V

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2, v1}, Lorg/openjdk/tools/javac/util/ByteBuffer;->appendBytes([BII)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    new-instance p1, Ljava/lang/AssertionError;

    const-string p2, "write"

    invoke-direct {p1, p2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p1
.end method

.method public appendName(Lorg/openjdk/tools/javac/util/Name;)V
    .locals 2

    invoke-virtual {p1}, Lorg/openjdk/tools/javac/util/Name;->getByteArray()[B

    move-result-object v0

    invoke-virtual {p1}, Lorg/openjdk/tools/javac/util/Name;->getByteOffset()I

    move-result v1

    invoke-virtual {p1}, Lorg/openjdk/tools/javac/util/Name;->getByteLength()I

    move-result p1

    invoke-virtual {p0, v0, v1, p1}, Lorg/openjdk/tools/javac/util/ByteBuffer;->appendBytes([BII)V

    return-void
.end method

.method public reset()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lorg/openjdk/tools/javac/util/ByteBuffer;->length:I

    return-void
.end method

.method public toName(Lorg/openjdk/tools/javac/util/Names;)Lorg/openjdk/tools/javac/util/Name;
    .locals 3

    iget-object v0, p0, Lorg/openjdk/tools/javac/util/ByteBuffer;->elems:[B

    const/4 v1, 0x0

    iget v2, p0, Lorg/openjdk/tools/javac/util/ByteBuffer;->length:I

    invoke-virtual {p1, v0, v1, v2}, Lorg/openjdk/tools/javac/util/Names;->fromUtf([BII)Lorg/openjdk/tools/javac/util/Name;

    move-result-object p1

    return-object p1
.end method
