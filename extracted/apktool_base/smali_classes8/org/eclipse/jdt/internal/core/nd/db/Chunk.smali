.class final Lorg/eclipse/jdt/internal/core/nd/db/Chunk;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private final fBuffer:[B

.field fCacheHitFlag:Z

.field fCacheIndex:I

.field final fDatabase:Lorg/eclipse/jdt/internal/core/nd/db/Database;

.field fDirty:Z

.field final fSequenceNumber:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lorg/eclipse/jdt/internal/core/nd/db/Database;I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x1000

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/eclipse/jdt/internal/core/nd/db/Chunk;->fBuffer:[B

    const/4 v0, -0x1

    iput v0, p0, Lorg/eclipse/jdt/internal/core/nd/db/Chunk;->fCacheIndex:I

    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/nd/db/Chunk;->fDatabase:Lorg/eclipse/jdt/internal/core/nd/db/Database;

    iput p2, p0, Lorg/eclipse/jdt/internal/core/nd/db/Chunk;->fSequenceNumber:I

    return-void
.end method

.method public static compressFreeRecPtr(J)I
    .locals 1

    const/4 v0, 0x3

    shr-long/2addr p0, v0

    long-to-int p0, p0

    return p0
.end method

.method public static expandToFreeRecPtr(I)J
    .locals 4

    int-to-long v0, p0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    const/4 p0, 0x3

    shl-long/2addr v0, p0

    return-wide v0
.end method

.method public static final getInt([BI)I
    .locals 2

    .line 2
    aget-byte v0, p0, p1

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x18

    add-int/lit8 v1, p1, 0x1

    .line 3
    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    add-int/lit8 v1, p1, 0x2

    .line 4
    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    add-int/lit8 p1, p1, 0x3

    .line 5
    aget-byte p0, p0, p1

    and-int/lit16 p0, p0, 0xff

    or-int/2addr p0, v0

    return p0
.end method

.method public static final putInt(I[BI)V
    .locals 2

    shr-int/lit8 v0, p0, 0x18

    int-to-byte v0, v0

    .line 5
    aput-byte v0, p1, p2

    add-int/lit8 v0, p2, 0x1

    shr-int/lit8 v1, p0, 0x10

    int-to-byte v1, v1

    .line 6
    aput-byte v1, p1, v0

    add-int/lit8 v0, p2, 0x2

    shr-int/lit8 v1, p0, 0x8

    int-to-byte v1, v1

    .line 7
    aput-byte v1, p1, v0

    add-int/lit8 p2, p2, 0x3

    int-to-byte p0, p0

    .line 8
    aput-byte p0, p1, p2

    return-void
.end method

.method public static recPtrToIndex(J)I
    .locals 2

    const-wide/16 v0, 0xfff

    and-long/2addr p0, v0

    long-to-int p0, p0

    return p0
.end method

.method private recordWrite(JI)V
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/nd/db/Chunk;->fDatabase:Lorg/eclipse/jdt/internal/core/nd/db/Database;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/core/nd/db/Database;->getLog()Lorg/eclipse/jdt/internal/core/nd/db/ModificationLog;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lorg/eclipse/jdt/internal/core/nd/db/ModificationLog;->recordWrite(JI)V

    return-void
.end method


# virtual methods
.method public clear(JI)V
    .locals 4

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/nd/db/Chunk;->makeDirty()V

    invoke-static {p1, p2}, Lorg/eclipse/jdt/internal/core/nd/db/Chunk;->recPtrToIndex(J)I

    move-result v0

    add-int v1, v0, p3

    iget-object v2, p0, Lorg/eclipse/jdt/internal/core/nd/db/Chunk;->fBuffer:[B

    array-length v2, v2

    if-gt v1, v2, :cond_1

    :goto_0
    if-lt v0, v1, :cond_0

    invoke-direct {p0, p1, p2, p3}, Lorg/eclipse/jdt/internal/core/nd/db/Chunk;->recordWrite(JI)V

    return-void

    :cond_0
    iget-object v2, p0, Lorg/eclipse/jdt/internal/core/nd/db/Chunk;->fBuffer:[B

    const/4 v3, 0x0

    aput-byte v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    new-instance v0, Lorg/eclipse/jdt/internal/core/nd/db/IndexException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Attempting to clear beyond end of chunk. Chunk = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lorg/eclipse/jdt/internal/core/nd/db/Chunk;->fSequenceNumber:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", offset = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, ", length = "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lorg/eclipse/jdt/internal/core/nd/db/IndexException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public flush()Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/internal/core/nd/db/IndexException;
        }
    .end annotation

    sget-boolean v0, Lorg/eclipse/jdt/internal/core/nd/db/Database;->DEBUG_PAGE_CACHE:Z

    if-eqz v0, :cond_0

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "CHUNK "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lorg/eclipse/jdt/internal/core/nd/db/Chunk;->fSequenceNumber:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ": flushing - instance "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_0
    :try_start_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/nd/db/Chunk;->fBuffer:[B

    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/nd/db/Chunk;->fDatabase:Lorg/eclipse/jdt/internal/core/nd/db/Database;

    iget v2, p0, Lorg/eclipse/jdt/internal/core/nd/db/Chunk;->fSequenceNumber:I

    int-to-long v2, v2

    const-wide/16 v4, 0x1000

    mul-long/2addr v2, v4

    invoke-virtual {v1, v0, v2, v3}, Lorg/eclipse/jdt/internal/core/nd/db/Database;->write(Ljava/nio/ByteBuffer;J)Z

    move-result v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v1, 0x0

    iput-boolean v1, p0, Lorg/eclipse/jdt/internal/core/nd/db/Chunk;->fDirty:Z

    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/nd/db/Chunk;->fDatabase:Lorg/eclipse/jdt/internal/core/nd/db/Database;

    invoke-virtual {v1, p0}, Lorg/eclipse/jdt/internal/core/nd/db/Database;->chunkCleaned(Lorg/eclipse/jdt/internal/core/nd/db/Chunk;)V

    return v0

    :catch_0
    move-exception v0

    new-instance v1, Lorg/eclipse/jdt/internal/core/nd/db/IndexException;

    new-instance v2, Lorg/eclipse/jdt/internal/core/nd/db/DBStatus;

    invoke-direct {v2, v0}, Lorg/eclipse/jdt/internal/core/nd/db/DBStatus;-><init>(Ljava/io/IOException;)V

    invoke-direct {v1, v2}, Lorg/eclipse/jdt/internal/core/nd/db/IndexException;-><init>(Lorg/eclipse/core/runtime/IStatus;)V

    throw v1
.end method

.method public get(J[B)V
    .locals 6

    .line 1
    array-length v5, p3

    const/4 v4, 0x0

    move-object v0, p0

    move-wide v1, p1

    move-object v3, p3

    invoke-virtual/range {v0 .. v5}, Lorg/eclipse/jdt/internal/core/nd/db/Chunk;->get(J[BII)V

    return-void
.end method

.method public get(J[BII)V
    .locals 0

    .line 2
    invoke-static {p1, p2}, Lorg/eclipse/jdt/internal/core/nd/db/Chunk;->recPtrToIndex(J)I

    move-result p1

    .line 3
    iget-object p2, p0, Lorg/eclipse/jdt/internal/core/nd/db/Chunk;->fBuffer:[B

    invoke-static {p2, p1, p3, p4, p5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method public get3ByteUnsignedInt(J)I
    .locals 2

    invoke-static {p1, p2}, Lorg/eclipse/jdt/internal/core/nd/db/Chunk;->recPtrToIndex(J)I

    move-result p1

    iget-object p2, p0, Lorg/eclipse/jdt/internal/core/nd/db/Chunk;->fBuffer:[B

    aget-byte v0, p2, p1

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x10

    add-int/lit8 v1, p1, 0x1

    aget-byte v1, p2, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    add-int/lit8 p1, p1, 0x2

    aget-byte p1, p2, p1

    and-int/lit16 p1, p1, 0xff

    or-int/2addr p1, v0

    return p1
.end method

.method public getByte(J)B
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/nd/db/Chunk;->fBuffer:[B

    invoke-static {p1, p2}, Lorg/eclipse/jdt/internal/core/nd/db/Chunk;->recPtrToIndex(J)I

    move-result p1

    aget-byte p1, v0, p1

    return p1
.end method

.method public getBytes()[B
    .locals 4

    .line 1
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/nd/db/Chunk;->fBuffer:[B

    array-length v1, v0

    new-array v1, v1, [B

    const/4 v2, 0x0

    .line 2
    array-length v3, v0

    invoke-static {v0, v2, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v1
.end method

.method public getBytes(JI)[B
    .locals 2

    .line 3
    new-array v0, p3, [B

    .line 4
    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/nd/db/Chunk;->fBuffer:[B

    invoke-static {p1, p2}, Lorg/eclipse/jdt/internal/core/nd/db/Chunk;->recPtrToIndex(J)I

    move-result p1

    const/4 p2, 0x0

    invoke-static {v1, p1, v0, p2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0
.end method

.method public getChar(J)C
    .locals 1

    invoke-static {p1, p2}, Lorg/eclipse/jdt/internal/core/nd/db/Chunk;->recPtrToIndex(J)I

    move-result p1

    iget-object p2, p0, Lorg/eclipse/jdt/internal/core/nd/db/Chunk;->fBuffer:[B

    aget-byte v0, p2, p1

    shl-int/lit8 v0, v0, 0x8

    add-int/lit8 p1, p1, 0x1

    aget-byte p1, p2, p1

    and-int/lit16 p1, p1, 0xff

    or-int/2addr p1, v0

    int-to-char p1, p1

    return p1
.end method

.method public getChars(J[CII)V
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/nd/db/Chunk;->fBuffer:[B

    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-static {p1, p2}, Lorg/eclipse/jdt/internal/core/nd/db/Chunk;->recPtrToIndex(J)I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asCharBuffer()Ljava/nio/CharBuffer;

    move-result-object p1

    invoke-virtual {p1, p3, p4, p5}, Ljava/nio/CharBuffer;->get([CII)Ljava/nio/CharBuffer;

    return-void
.end method

.method public getCharsFromBytes(J[CII)V
    .locals 3

    invoke-static {p1, p2}, Lorg/eclipse/jdt/internal/core/nd/db/Chunk;->recPtrToIndex(J)I

    move-result p1

    const/4 p2, 0x0

    :goto_0
    if-lt p2, p5, :cond_0

    return-void

    :cond_0
    add-int v0, p4, p2

    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/nd/db/Chunk;->fBuffer:[B

    add-int v2, p1, p2

    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    int-to-char v1, v1

    aput-char v1, p3, v0

    add-int/lit8 p2, p2, 0x1

    goto :goto_0
.end method

.method public getDouble(J)D
    .locals 0

    invoke-virtual {p0, p1, p2}, Lorg/eclipse/jdt/internal/core/nd/db/Chunk;->getLong(J)J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide p1

    return-wide p1
.end method

.method public getFloat(J)F
    .locals 0

    invoke-virtual {p0, p1, p2}, Lorg/eclipse/jdt/internal/core/nd/db/Chunk;->getInt(J)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result p1

    return p1
.end method

.method public getFreeRecPtr(J)J
    .locals 0

    invoke-static {p1, p2}, Lorg/eclipse/jdt/internal/core/nd/db/Chunk;->recPtrToIndex(J)I

    move-result p1

    iget-object p2, p0, Lorg/eclipse/jdt/internal/core/nd/db/Chunk;->fBuffer:[B

    invoke-static {p2, p1}, Lorg/eclipse/jdt/internal/core/nd/db/Chunk;->getInt([BI)I

    move-result p1

    invoke-static {p1}, Lorg/eclipse/jdt/internal/core/nd/db/Chunk;->expandToFreeRecPtr(I)J

    move-result-wide p1

    return-wide p1
.end method

.method public getInt(J)I
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/nd/db/Chunk;->fBuffer:[B

    invoke-static {p1, p2}, Lorg/eclipse/jdt/internal/core/nd/db/Chunk;->recPtrToIndex(J)I

    move-result p1

    invoke-static {v0, p1}, Lorg/eclipse/jdt/internal/core/nd/db/Chunk;->getInt([BI)I

    move-result p1

    return p1
.end method

.method public getLong(J)J
    .locals 7

    invoke-static {p1, p2}, Lorg/eclipse/jdt/internal/core/nd/db/Chunk;->recPtrToIndex(J)I

    move-result p1

    iget-object p2, p0, Lorg/eclipse/jdt/internal/core/nd/db/Chunk;->fBuffer:[B

    aget-byte v0, p2, p1

    int-to-long v0, v0

    const-wide/16 v2, 0xff

    and-long/2addr v0, v2

    const/16 v4, 0x38

    shl-long/2addr v0, v4

    add-int/lit8 v4, p1, 0x1

    aget-byte v4, p2, v4

    int-to-long v4, v4

    and-long/2addr v4, v2

    const/16 v6, 0x30

    shl-long/2addr v4, v6

    or-long/2addr v0, v4

    add-int/lit8 v4, p1, 0x2

    aget-byte v4, p2, v4

    int-to-long v4, v4

    and-long/2addr v4, v2

    const/16 v6, 0x28

    shl-long/2addr v4, v6

    or-long/2addr v0, v4

    add-int/lit8 v4, p1, 0x3

    aget-byte v4, p2, v4

    int-to-long v4, v4

    and-long/2addr v4, v2

    const/16 v6, 0x20

    shl-long/2addr v4, v6

    or-long/2addr v0, v4

    add-int/lit8 v4, p1, 0x4

    aget-byte v4, p2, v4

    int-to-long v4, v4

    and-long/2addr v4, v2

    const/16 v6, 0x18

    shl-long/2addr v4, v6

    or-long/2addr v0, v4

    add-int/lit8 v4, p1, 0x5

    aget-byte v4, p2, v4

    int-to-long v4, v4

    and-long/2addr v4, v2

    const/16 v6, 0x10

    shl-long/2addr v4, v6

    or-long/2addr v0, v4

    add-int/lit8 v4, p1, 0x6

    aget-byte v4, p2, v4

    int-to-long v4, v4

    and-long/2addr v4, v2

    const/16 v6, 0x8

    shl-long/2addr v4, v6

    or-long/2addr v0, v4

    add-int/lit8 p1, p1, 0x7

    aget-byte p1, p2, p1

    int-to-long p1, p1

    and-long/2addr p1, v2

    or-long/2addr p1, v0

    return-wide p1
.end method

.method public getRecPtr(J)J
    .locals 0

    invoke-static {p1, p2}, Lorg/eclipse/jdt/internal/core/nd/db/Chunk;->recPtrToIndex(J)I

    move-result p1

    iget-object p2, p0, Lorg/eclipse/jdt/internal/core/nd/db/Chunk;->fBuffer:[B

    invoke-static {p2, p1}, Lorg/eclipse/jdt/internal/core/nd/db/Database;->getRecPtr([BI)J

    move-result-wide p1

    return-wide p1
.end method

.method public getShort(J)S
    .locals 1

    invoke-static {p1, p2}, Lorg/eclipse/jdt/internal/core/nd/db/Chunk;->recPtrToIndex(J)I

    move-result p1

    iget-object p2, p0, Lorg/eclipse/jdt/internal/core/nd/db/Chunk;->fBuffer:[B

    aget-byte v0, p2, p1

    shl-int/lit8 v0, v0, 0x8

    add-int/lit8 p1, p1, 0x1

    aget-byte p1, p2, p1

    and-int/lit16 p1, p1, 0xff

    or-int/2addr p1, v0

    int-to-short p1, p1

    return p1
.end method

.method public getWritableChunk()Lorg/eclipse/jdt/internal/core/nd/db/Chunk;
    .locals 5

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/nd/db/Chunk;->fDatabase:Lorg/eclipse/jdt/internal/core/nd/db/Database;

    iget v1, p0, Lorg/eclipse/jdt/internal/core/nd/db/Chunk;->fSequenceNumber:I

    int-to-long v1, v1

    const-wide/16 v3, 0x1000

    mul-long/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Lorg/eclipse/jdt/internal/core/nd/db/Database;->getChunk(J)Lorg/eclipse/jdt/internal/core/nd/db/Chunk;

    move-result-object v0

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/core/nd/db/Chunk;->makeDirty()V

    return-object v0
.end method

.method public makeDirty()V
    .locals 5

    iget v0, p0, Lorg/eclipse/jdt/internal/core/nd/db/Chunk;->fSequenceNumber:I

    const-string v1, "CHUNK "

    const/4 v2, 0x1

    if-lt v0, v2, :cond_1

    iget-object v3, p0, Lorg/eclipse/jdt/internal/core/nd/db/Chunk;->fDatabase:Lorg/eclipse/jdt/internal/core/nd/db/Database;

    iget-object v3, v3, Lorg/eclipse/jdt/internal/core/nd/db/Database;->fChunks:[Lorg/eclipse/jdt/internal/core/nd/db/Chunk;

    aget-object v0, v3, v0

    if-ne v0, p0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lorg/eclipse/jdt/internal/core/nd/db/Chunk;->fSequenceNumber:I

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ": found two copies. Copy 1: "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", Copy 2: "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_1
    :goto_0
    iget-boolean v0, p0, Lorg/eclipse/jdt/internal/core/nd/db/Chunk;->fDirty:Z

    if-nez v0, :cond_5

    sget-boolean v0, Lorg/eclipse/jdt/internal/core/nd/db/Database;->DEBUG_PAGE_CACHE:Z

    if-eqz v0, :cond_2

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v4, p0, Lorg/eclipse/jdt/internal/core/nd/db/Chunk;->fSequenceNumber:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ": dirtied - instance "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_2
    iget v0, p0, Lorg/eclipse/jdt/internal/core/nd/db/Chunk;->fSequenceNumber:I

    if-lt v0, v2, :cond_4

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/nd/db/Chunk;->fDatabase:Lorg/eclipse/jdt/internal/core/nd/db/Database;

    iget-object v0, v0, Lorg/eclipse/jdt/internal/core/nd/db/Database;->fMostRecentlyFetchedChunk:Lorg/eclipse/jdt/internal/core/nd/db/Chunk;

    if-ne v0, p0, :cond_3

    goto :goto_1

    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lorg/eclipse/jdt/internal/core/nd/db/Chunk;->fSequenceNumber:I

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " dirtied out of order: Only the most-recently-fetched chunk is allowed to be dirtied"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    :goto_1
    iput-boolean v2, p0, Lorg/eclipse/jdt/internal/core/nd/db/Chunk;->fDirty:Z

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/nd/db/Chunk;->fDatabase:Lorg/eclipse/jdt/internal/core/nd/db/Database;

    invoke-virtual {v0, p0}, Lorg/eclipse/jdt/internal/core/nd/db/Database;->chunkDirtied(Lorg/eclipse/jdt/internal/core/nd/db/Chunk;)V

    :cond_5
    return-void
.end method

.method public put(J[BI)V
    .locals 6

    const/4 v4, 0x0

    move-object v0, p0

    move-wide v1, p1

    move-object v3, p3

    move v5, p4

    .line 1
    invoke-virtual/range {v0 .. v5}, Lorg/eclipse/jdt/internal/core/nd/db/Chunk;->put(J[BII)V

    return-void
.end method

.method public put(J[BII)V
    .locals 2

    .line 2
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/nd/db/Chunk;->makeDirty()V

    .line 3
    invoke-static {p1, p2}, Lorg/eclipse/jdt/internal/core/nd/db/Chunk;->recPtrToIndex(J)I

    move-result v0

    .line 4
    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/nd/db/Chunk;->fBuffer:[B

    invoke-static {p3, p4, v1, v0, p5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 5
    invoke-direct {p0, p1, p2, p5}, Lorg/eclipse/jdt/internal/core/nd/db/Chunk;->recordWrite(JI)V

    return-void
.end method

.method public put3ByteUnsignedInt(JI)V
    .locals 4

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/nd/db/Chunk;->makeDirty()V

    invoke-static {p1, p2}, Lorg/eclipse/jdt/internal/core/nd/db/Chunk;->recPtrToIndex(J)I

    move-result v0

    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/nd/db/Chunk;->fBuffer:[B

    shr-int/lit8 v2, p3, 0x10

    int-to-byte v2, v2

    aput-byte v2, v1, v0

    add-int/lit8 v2, v0, 0x1

    shr-int/lit8 v3, p3, 0x8

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    add-int/lit8 v0, v0, 0x2

    int-to-byte p3, p3

    aput-byte p3, v1, v0

    const/4 p3, 0x3

    invoke-direct {p0, p1, p2, p3}, Lorg/eclipse/jdt/internal/core/nd/db/Chunk;->recordWrite(JI)V

    return-void
.end method

.method public putByte(JB)V
    .locals 2

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/nd/db/Chunk;->makeDirty()V

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/nd/db/Chunk;->fBuffer:[B

    invoke-static {p1, p2}, Lorg/eclipse/jdt/internal/core/nd/db/Chunk;->recPtrToIndex(J)I

    move-result v1

    aput-byte p3, v0, v1

    const/4 p3, 0x1

    invoke-direct {p0, p1, p2, p3}, Lorg/eclipse/jdt/internal/core/nd/db/Chunk;->recordWrite(JI)V

    return-void
.end method

.method public putBytes(J[B)V
    .locals 4

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/nd/db/Chunk;->makeDirty()V

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/nd/db/Chunk;->fBuffer:[B

    invoke-static {p1, p2}, Lorg/eclipse/jdt/internal/core/nd/db/Chunk;->recPtrToIndex(J)I

    move-result v1

    array-length v2, p3

    const/4 v3, 0x0

    invoke-static {p3, v3, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length p3, p3

    invoke-direct {p0, p1, p2, p3}, Lorg/eclipse/jdt/internal/core/nd/db/Chunk;->recordWrite(JI)V

    return-void
.end method

.method public putChar(JC)V
    .locals 3

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/nd/db/Chunk;->makeDirty()V

    invoke-static {p1, p2}, Lorg/eclipse/jdt/internal/core/nd/db/Chunk;->recPtrToIndex(J)I

    move-result v0

    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/nd/db/Chunk;->fBuffer:[B

    shr-int/lit8 v2, p3, 0x8

    int-to-byte v2, v2

    aput-byte v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    int-to-byte p3, p3

    aput-byte p3, v1, v0

    const/4 p3, 0x2

    invoke-direct {p0, p1, p2, p3}, Lorg/eclipse/jdt/internal/core/nd/db/Chunk;->recordWrite(JI)V

    return-void
.end method

.method public putChars(J[CII)V
    .locals 6

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/nd/db/Chunk;->makeDirty()V

    invoke-static {p1, p2}, Lorg/eclipse/jdt/internal/core/nd/db/Chunk;->recPtrToIndex(J)I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    add-int v1, p4, p5

    :goto_0
    if-lt p4, v1, :cond_0

    mul-int/lit8 p5, p5, 0x2

    invoke-direct {p0, p1, p2, p5}, Lorg/eclipse/jdt/internal/core/nd/db/Chunk;->recordWrite(JI)V

    return-void

    :cond_0
    aget-char v2, p3, p4

    iget-object v3, p0, Lorg/eclipse/jdt/internal/core/nd/db/Chunk;->fBuffer:[B

    add-int/lit8 v4, v0, 0x1

    shr-int/lit8 v5, v2, 0x8

    int-to-byte v5, v5

    aput-byte v5, v3, v4

    add-int/lit8 v0, v0, 0x2

    int-to-byte v2, v2

    aput-byte v2, v3, v0

    add-int/lit8 p4, p4, 0x1

    goto :goto_0
.end method

.method public putCharsAsBytes(J[CII)V
    .locals 4

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/nd/db/Chunk;->makeDirty()V

    invoke-static {p1, p2}, Lorg/eclipse/jdt/internal/core/nd/db/Chunk;->recPtrToIndex(J)I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    add-int v1, p4, p5

    :goto_0
    if-lt p4, v1, :cond_0

    invoke-direct {p0, p1, p2, p5}, Lorg/eclipse/jdt/internal/core/nd/db/Chunk;->recordWrite(JI)V

    return-void

    :cond_0
    aget-char v2, p3, p4

    iget-object v3, p0, Lorg/eclipse/jdt/internal/core/nd/db/Chunk;->fBuffer:[B

    add-int/lit8 v0, v0, 0x1

    int-to-byte v2, v2

    aput-byte v2, v3, v0

    add-int/lit8 p4, p4, 0x1

    goto :goto_0
.end method

.method public putDouble(JD)V
    .locals 0

    invoke-static {p3, p4}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide p3

    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/eclipse/jdt/internal/core/nd/db/Chunk;->putLong(JJ)V

    return-void
.end method

.method public putFloat(JF)V
    .locals 0

    invoke-static {p3}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result p3

    invoke-virtual {p0, p1, p2, p3}, Lorg/eclipse/jdt/internal/core/nd/db/Chunk;->putInt(JI)V

    return-void
.end method

.method public putFreeRecPtr(JJ)V
    .locals 1

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/nd/db/Chunk;->makeDirty()V

    invoke-static {p1, p2}, Lorg/eclipse/jdt/internal/core/nd/db/Chunk;->recPtrToIndex(J)I

    move-result v0

    invoke-static {p3, p4}, Lorg/eclipse/jdt/internal/core/nd/db/Chunk;->compressFreeRecPtr(J)I

    move-result p3

    iget-object p4, p0, Lorg/eclipse/jdt/internal/core/nd/db/Chunk;->fBuffer:[B

    invoke-static {p3, p4, v0}, Lorg/eclipse/jdt/internal/core/nd/db/Chunk;->putInt(I[BI)V

    const/4 p3, 0x4

    invoke-direct {p0, p1, p2, p3}, Lorg/eclipse/jdt/internal/core/nd/db/Chunk;->recordWrite(JI)V

    return-void
.end method

.method public putInt(JI)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/nd/db/Chunk;->makeDirty()V

    .line 2
    invoke-static {p1, p2}, Lorg/eclipse/jdt/internal/core/nd/db/Chunk;->recPtrToIndex(J)I

    move-result v0

    .line 3
    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/nd/db/Chunk;->fBuffer:[B

    invoke-static {p3, v1, v0}, Lorg/eclipse/jdt/internal/core/nd/db/Chunk;->putInt(I[BI)V

    const/4 p3, 0x4

    .line 4
    invoke-direct {p0, p1, p2, p3}, Lorg/eclipse/jdt/internal/core/nd/db/Chunk;->recordWrite(JI)V

    return-void
.end method

.method public putLong(JJ)V
    .locals 6

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/nd/db/Chunk;->makeDirty()V

    invoke-static {p1, p2}, Lorg/eclipse/jdt/internal/core/nd/db/Chunk;->recPtrToIndex(J)I

    move-result v0

    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/nd/db/Chunk;->fBuffer:[B

    const/16 v2, 0x38

    shr-long v2, p3, v2

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v1, v0

    add-int/lit8 v2, v0, 0x1

    const/16 v3, 0x30

    shr-long v3, p3, v3

    long-to-int v3, v3

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    add-int/lit8 v2, v0, 0x2

    const/16 v3, 0x28

    shr-long v3, p3, v3

    long-to-int v3, v3

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    add-int/lit8 v2, v0, 0x3

    const/16 v3, 0x20

    shr-long v3, p3, v3

    long-to-int v3, v3

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    add-int/lit8 v2, v0, 0x4

    const/16 v3, 0x18

    shr-long v3, p3, v3

    long-to-int v3, v3

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    add-int/lit8 v2, v0, 0x5

    const/16 v3, 0x10

    shr-long v3, p3, v3

    long-to-int v3, v3

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    add-int/lit8 v2, v0, 0x6

    const/16 v3, 0x8

    shr-long v4, p3, v3

    long-to-int v4, v4

    int-to-byte v4, v4

    aput-byte v4, v1, v2

    add-int/lit8 v0, v0, 0x7

    long-to-int p3, p3

    int-to-byte p3, p3

    aput-byte p3, v1, v0

    invoke-direct {p0, p1, p2, v3}, Lorg/eclipse/jdt/internal/core/nd/db/Chunk;->recordWrite(JI)V

    return-void
.end method

.method public putRecPtr(JJ)V
    .locals 2

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/nd/db/Chunk;->makeDirty()V

    invoke-static {p1, p2}, Lorg/eclipse/jdt/internal/core/nd/db/Chunk;->recPtrToIndex(J)I

    move-result v0

    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/nd/db/Chunk;->fBuffer:[B

    invoke-static {p3, p4, v1, v0}, Lorg/eclipse/jdt/internal/core/nd/db/Database;->putRecPtr(J[BI)V

    const/4 p3, 0x4

    invoke-direct {p0, p1, p2, p3}, Lorg/eclipse/jdt/internal/core/nd/db/Chunk;->recordWrite(JI)V

    return-void
.end method

.method public putShort(JS)V
    .locals 3

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/nd/db/Chunk;->makeDirty()V

    invoke-static {p1, p2}, Lorg/eclipse/jdt/internal/core/nd/db/Chunk;->recPtrToIndex(J)I

    move-result v0

    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/nd/db/Chunk;->fBuffer:[B

    shr-int/lit8 v2, p3, 0x8

    int-to-byte v2, v2

    aput-byte v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    int-to-byte p3, p3

    aput-byte p3, v1, v0

    const/4 p3, 0x2

    invoke-direct {p0, p1, p2, p3}, Lorg/eclipse/jdt/internal/core/nd/db/Chunk;->recordWrite(JI)V

    return-void
.end method

.method public read()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/internal/core/nd/db/IndexException;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/nd/db/Chunk;->fBuffer:[B

    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/nd/db/Chunk;->fDatabase:Lorg/eclipse/jdt/internal/core/nd/db/Database;

    iget v2, p0, Lorg/eclipse/jdt/internal/core/nd/db/Chunk;->fSequenceNumber:I

    int-to-long v2, v2

    const-wide/16 v4, 0x1000

    mul-long/2addr v2, v4

    invoke-virtual {v1, v0, v2, v3}, Lorg/eclipse/jdt/internal/core/nd/db/Database;->read(Ljava/nio/ByteBuffer;J)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Lorg/eclipse/jdt/internal/core/nd/db/IndexException;

    new-instance v2, Lorg/eclipse/jdt/internal/core/nd/db/DBStatus;

    invoke-direct {v2, v0}, Lorg/eclipse/jdt/internal/core/nd/db/DBStatus;-><init>(Ljava/io/IOException;)V

    invoke-direct {v1, v2}, Lorg/eclipse/jdt/internal/core/nd/db/IndexException;-><init>(Lorg/eclipse/core/runtime/IStatus;)V

    throw v1
.end method
