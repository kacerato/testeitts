.class public Lorg/eclipse/jdt/internal/core/nd/db/Database;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/eclipse/jdt/internal/core/nd/db/Database$ChunkStats;,
        Lorg/eclipse/jdt/internal/core/nd/db/Database$IORunnable;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field public static final BLOCK_HEADER_SIZE:I = 0x2

.field private static final BLOCK_NEXT_OFFSET:I = 0x6

.field private static final BLOCK_PREV_OFFSET:I = 0x2

.field public static final BLOCK_SIZE_DELTA:I = 0x8

.field public static final BLOCK_SIZE_DELTA_BITS:I = 0x3

.field public static final BYTE_SIZE:I = 0x1

.field public static final CHAR_SIZE:I = 0x2

.field public static final CHUNK_SIZE:I = 0x1000

.field public static final DATA_AREA_OFFSET:I

.field public static DEBUG_FREE_SPACE:Z = false

.field public static DEBUG_PAGE_CACHE:Z = false

.field public static final DOUBLE_SIZE:I = 0x8

.field public static final FLOAT_SIZE:I = 0x4

.field private static final FREE_BLOCK_HEADER_SIZE:I = 0xa

.field public static final FREE_BLOCK_OFFSET:I = 0x800

.field public static final INT_SIZE:I = 0x4

.field public static final LONG_SIZE:I = 0x8

.field public static final MALLOC_STATS_OFFSET:I = 0x80c

.field public static final MALLOC_TABLE_OFFSET:I = 0x4

.field public static final MAX_BLOCK_DELTAS:I

.field public static final MAX_DB_SIZE:J = 0x800000000L

.field private static final MAX_ITERATIONS_PER_LOCK:I = 0x100

.field public static final MAX_MALLOC_SIZE:J

.field public static final MAX_SINGLE_BLOCK_MALLOC_SIZE:I

.field public static final MIN_BLOCK_DELTAS:I = 0x2

.field public static final MIN_BYTES_PER_MILLISECOND:D = 20480.0

.field public static final NUM_HEADER_CHUNKS:I = 0x1

.field public static final OFFSET_IN_CHUNK_MASK:I = 0xfff

.field public static final POOL_BTREE:S = 0x1s

.field public static final POOL_DB_PROPERTIES:S = 0x2s

.field public static final POOL_FIRST_NODE_TYPE:S = 0x100s

.field public static final POOL_GROWABLE_ARRAY:S = 0x7s

.field public static final POOL_LINKED_LIST:S = 0x5s

.field public static final POOL_MISC:S = 0x0s

.field public static final POOL_STRING_LONG:S = 0x3s

.field public static final POOL_STRING_SET:S = 0x6s

.field public static final POOL_STRING_SHORT:S = 0x4s

.field public static final PTR_SIZE:I = 0x4

.field public static final SHORT_SIZE:I = 0x2

.field public static final STRING_SIZE:I = 0x4

.field public static final VERSION_OFFSET:I = 0x0

.field private static final WRITE_BUFFER_SIZE:I = 0x20000

.field public static final WRITE_NUMBER_OFFSET:I = 0x804


# instance fields
.field private bytesWritten:J

.field private cacheHits:J

.field private cacheMisses:J

.field private dirtyChunkSet:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Lorg/eclipse/jdt/internal/core/nd/db/Chunk;",
            ">;"
        }
    .end annotation
.end field

.field private fCache:Lorg/eclipse/jdt/internal/core/nd/db/ChunkCache;

.field fChunks:[Lorg/eclipse/jdt/internal/core/nd/db/Chunk;

.field private fChunksUsed:I

.field private fExclusiveLock:Z

.field private fFile:Ljava/io/RandomAccessFile;

.field private final fHeaderChunk:Lorg/eclipse/jdt/internal/core/nd/db/Chunk;

.field private fIsMarkedIncomplete:Z

.field private final fLocation:Ljava/io/File;

.field private fLocked:Z

.field public fMostRecentlyFetchedChunk:Lorg/eclipse/jdt/internal/core/nd/db/Chunk;

.field private final fReadOnly:Z

.field private fVersion:I

.field private final freeTag:Lorg/eclipse/jdt/internal/core/nd/db/ModificationLog$Tag;

.field private freed:J

.field private final log:Lorg/eclipse/jdt/internal/core/nd/db/ModificationLog;

.field private final mallocTag:Lorg/eclipse/jdt/internal/core/nd/db/ModificationLog$Tag;

.field private malloced:J

.field private memoryUsage:Lorg/eclipse/jdt/internal/core/nd/db/MemoryStats;

.field private nextValidation:J

.field private pageWritesBytes:J

.field private totalFlushTime:J

.field private totalReadTimeMs:J

.field private totalWriteTimeMs:J

.field private validateCounter:J


# direct methods
.method static constructor <clinit>()V
    .locals 5

    sget v0, Lorg/eclipse/jdt/internal/core/nd/db/LargeBlock;->HEADER_SIZE:I

    rsub-int v1, v0, 0x1000

    sget v2, Lorg/eclipse/jdt/internal/core/nd/db/LargeBlock;->FOOTER_SIZE:I

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x8

    sput v1, Lorg/eclipse/jdt/internal/core/nd/db/Database;->MAX_BLOCK_DELTAS:I

    mul-int/lit8 v1, v1, 0x8

    add-int/lit8 v1, v1, -0x2

    sput v1, Lorg/eclipse/jdt/internal/core/nd/db/Database;->MAX_SINGLE_BLOCK_MALLOC_SIZE:I

    const-wide v3, 0x800000000L

    int-to-long v0, v0

    sub-long/2addr v3, v0

    int-to-long v0, v2

    sub-long/2addr v3, v0

    const-wide/16 v0, 0x1002

    sub-long/2addr v3, v0

    sput-wide v3, Lorg/eclipse/jdt/internal/core/nd/db/Database;->MAX_MALLOC_SIZE:J

    sget v0, Lorg/eclipse/jdt/internal/core/nd/db/MemoryStats;->SIZE:I

    add-int/lit16 v0, v0, 0x80c

    sput v0, Lorg/eclipse/jdt/internal/core/nd/db/Database;->DATA_AREA_OFFSET:I

    return-void
.end method

.method public constructor <init>(Ljava/io/File;Lorg/eclipse/jdt/internal/core/nd/db/ChunkCache;IZ)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/internal/core/nd/db/IndexException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lorg/eclipse/jdt/internal/core/nd/db/Database;->dirtyChunkSet:Ljava/util/HashSet;

    new-instance v0, Lorg/eclipse/jdt/internal/core/nd/db/ModificationLog;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/eclipse/jdt/internal/core/nd/db/ModificationLog;-><init>(I)V

    iput-object v0, p0, Lorg/eclipse/jdt/internal/core/nd/db/Database;->log:Lorg/eclipse/jdt/internal/core/nd/db/ModificationLog;

    const-string v0, "Calling Database.malloc"

    invoke-static {v0}, Lorg/eclipse/jdt/internal/core/nd/db/ModificationLog;->createTag(Ljava/lang/String;)Lorg/eclipse/jdt/internal/core/nd/db/ModificationLog$Tag;

    move-result-object v0

    iput-object v0, p0, Lorg/eclipse/jdt/internal/core/nd/db/Database;->mallocTag:Lorg/eclipse/jdt/internal/core/nd/db/ModificationLog$Tag;

    const-string v0, "Calling Database.free"

    invoke-static {v0}, Lorg/eclipse/jdt/internal/core/nd/db/ModificationLog;->createTag(Ljava/lang/String;)Lorg/eclipse/jdt/internal/core/nd/db/ModificationLog$Tag;

    move-result-object v0

    iput-object v0, p0, Lorg/eclipse/jdt/internal/core/nd/db/Database;->freeTag:Lorg/eclipse/jdt/internal/core/nd/db/ModificationLog$Tag;

    :try_start_0
    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/nd/db/Database;->fLocation:Ljava/io/File;

    iput-boolean p4, p0, Lorg/eclipse/jdt/internal/core/nd/db/Database;->fReadOnly:Z

    iput-object p2, p0, Lorg/eclipse/jdt/internal/core/nd/db/Database;->fCache:Lorg/eclipse/jdt/internal/core/nd/db/ChunkCache;

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/core/nd/db/Database;->openFile()V

    iget-object p1, p0, Lorg/eclipse/jdt/internal/core/nd/db/Database;->fFile:Ljava/io/RandomAccessFile;

    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide p1

    const-wide/16 v2, 0x1000

    div-long/2addr p1, v2

    long-to-int p1, p1

    new-instance p2, Lorg/eclipse/jdt/internal/core/nd/db/Chunk;

    invoke-direct {p2, p0, v1}, Lorg/eclipse/jdt/internal/core/nd/db/Chunk;-><init>(Lorg/eclipse/jdt/internal/core/nd/db/Database;I)V

    iput-object p2, p0, Lorg/eclipse/jdt/internal/core/nd/db/Database;->fHeaderChunk:Lorg/eclipse/jdt/internal/core/nd/db/Chunk;

    if-gtz p1, :cond_0

    iput p3, p0, Lorg/eclipse/jdt/internal/core/nd/db/Database;->fVersion:I

    const/4 p1, 0x1

    new-array p1, p1, [Lorg/eclipse/jdt/internal/core/nd/db/Chunk;

    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/nd/db/Database;->fChunks:[Lorg/eclipse/jdt/internal/core/nd/db/Chunk;

    array-length p1, p1

    iput p1, p0, Lorg/eclipse/jdt/internal/core/nd/db/Database;->fChunksUsed:I

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_1

    :cond_0
    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/core/nd/db/Chunk;->read()V

    const-wide/16 p3, 0x0

    invoke-virtual {p2, p3, p4}, Lorg/eclipse/jdt/internal/core/nd/db/Chunk;->getInt(J)I

    move-result p3

    iput p3, p0, Lorg/eclipse/jdt/internal/core/nd/db/Database;->fVersion:I

    new-array p3, p1, [Lorg/eclipse/jdt/internal/core/nd/db/Chunk;

    iput-object p3, p0, Lorg/eclipse/jdt/internal/core/nd/db/Database;->fChunks:[Lorg/eclipse/jdt/internal/core/nd/db/Chunk;

    iput p1, p0, Lorg/eclipse/jdt/internal/core/nd/db/Database;->fChunksUsed:I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    new-instance p1, Lorg/eclipse/jdt/internal/core/nd/db/MemoryStats;

    const-wide/16 p3, 0x80c

    invoke-direct {p1, p2, p3, p4}, Lorg/eclipse/jdt/internal/core/nd/db/MemoryStats;-><init>(Lorg/eclipse/jdt/internal/core/nd/db/Chunk;J)V

    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/nd/db/Database;->memoryUsage:Lorg/eclipse/jdt/internal/core/nd/db/MemoryStats;

    return-void

    :goto_1
    new-instance p2, Lorg/eclipse/jdt/internal/core/nd/db/IndexException;

    new-instance p3, Lorg/eclipse/jdt/internal/core/nd/db/DBStatus;

    invoke-direct {p3, p1}, Lorg/eclipse/jdt/internal/core/nd/db/DBStatus;-><init>(Ljava/io/IOException;)V

    invoke-direct {p2, p3}, Lorg/eclipse/jdt/internal/core/nd/db/IndexException;-><init>(Lorg/eclipse/core/runtime/IStatus;)V

    throw p2
.end method

.method public static synthetic a(Lorg/eclipse/jdt/internal/core/nd/db/Database;Ljava/nio/ByteBuffer;J)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/eclipse/jdt/internal/core/nd/db/Database;->lambda$0(Ljava/nio/ByteBuffer;J)V

    return-void
.end method

.method private addBlock(Lorg/eclipse/jdt/internal/core/nd/db/Chunk;IJ)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/internal/core/nd/db/IndexException;
        }
    .end annotation

    int-to-short v0, p2

    invoke-virtual {p1, p3, p4, v0}, Lorg/eclipse/jdt/internal/core/nd/db/Chunk;->putShort(JS)V

    invoke-direct {p0, p2}, Lorg/eclipse/jdt/internal/core/nd/db/Database;->getFirstBlock(I)J

    move-result-wide v0

    const-wide/16 v2, 0x2

    add-long v4, p3, v2

    const-wide/16 v6, 0x0

    invoke-virtual {p1, v4, v5, v6, v7}, Lorg/eclipse/jdt/internal/core/nd/db/Chunk;->putFreeRecPtr(JJ)V

    const-wide/16 v4, 0x6

    add-long/2addr v4, p3

    invoke-virtual {p1, v4, v5, v0, v1}, Lorg/eclipse/jdt/internal/core/nd/db/Chunk;->putFreeRecPtr(JJ)V

    cmp-long p1, v0, v6

    if-eqz p1, :cond_0

    add-long/2addr v0, v2

    invoke-direct {p0, v0, v1, p3, p4}, Lorg/eclipse/jdt/internal/core/nd/db/Database;->putFreeRecPtr(JJ)V

    :cond_0
    invoke-direct {p0, p2, p3, p4}, Lorg/eclipse/jdt/internal/core/nd/db/Database;->setFirstBlock(IJ)V

    return-void
.end method

.method private attachBlockHeaderForChunkNum(Lorg/eclipse/jdt/internal/core/nd/IndexExceptionBuilder;I)V
    .locals 5

    iget v0, p0, Lorg/eclipse/jdt/internal/core/nd/db/Database;->fChunksUsed:I

    if-lt p2, v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "block header for chunk "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    int-to-long v1, p2

    const-wide/16 v3, 0x1000

    mul-long/2addr v1, v3

    const/4 p2, 0x4

    invoke-virtual {p1, v0, v1, v2, p2}, Lorg/eclipse/jdt/internal/core/nd/IndexExceptionBuilder;->addProblemAddress(Ljava/lang/String;JI)Lorg/eclipse/jdt/internal/core/nd/IndexExceptionBuilder;

    return-void
.end method

.method public static synthetic b(Lorg/eclipse/jdt/internal/core/nd/db/Database;Ljava/nio/ByteBuffer;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/core/nd/db/Database;->lambda$4(Ljava/nio/ByteBuffer;)V

    return-void
.end method

.method public static synthetic c(Lorg/eclipse/jdt/internal/core/nd/db/Chunk;Lorg/eclipse/jdt/internal/core/nd/db/Chunk;)I
    .locals 0

    invoke-static {p0, p1}, Lorg/eclipse/jdt/internal/core/nd/db/Database;->lambda$2(Lorg/eclipse/jdt/internal/core/nd/db/Chunk;Lorg/eclipse/jdt/internal/core/nd/db/Chunk;)I

    move-result p0

    return p0
.end method

.method private createLargeBlock(J)I
    .locals 9

    invoke-static {p1, p2}, Lorg/eclipse/jdt/internal/core/nd/db/Database;->getChunksNeededForBytes(J)I

    move-result p1

    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/core/nd/db/Database;->getFreeBlockFromTrie(I)I

    move-result p2

    if-nez p2, :cond_1

    iget p2, p0, Lorg/eclipse/jdt/internal/core/nd/db/Database;->fChunksUsed:I

    invoke-direct {p0, p2}, Lorg/eclipse/jdt/internal/core/nd/db/Database;->getBlockFooterForChunkBefore(I)I

    move-result v0

    if-lez v0, :cond_0

    invoke-direct {p0, p2}, Lorg/eclipse/jdt/internal/core/nd/db/Database;->getFirstChunkOfBlockBefore(I)I

    move-result p2

    invoke-direct {p0, p2}, Lorg/eclipse/jdt/internal/core/nd/db/Database;->unlinkFreeBlock(I)V

    sub-int v0, p1, v0

    invoke-direct {p0, v0}, Lorg/eclipse/jdt/internal/core/nd/db/Database;->createNewChunks(I)I

    :goto_0
    move v0, p1

    goto :goto_1

    :cond_0
    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/core/nd/db/Database;->createNewChunks(I)I

    move-result p2

    goto :goto_0

    :cond_1
    invoke-direct {p0, p2}, Lorg/eclipse/jdt/internal/core/nd/db/Database;->getBlockHeaderForChunkNum(I)I

    move-result v0

    const-string v1, "chunk header"

    const/4 v2, 0x4

    const-wide/16 v3, 0x1000

    if-lt v0, p1, :cond_5

    add-int v5, p2, v0

    invoke-direct {p0, v5}, Lorg/eclipse/jdt/internal/core/nd/db/Database;->getBlockFooterForChunkBefore(I)I

    move-result v6

    if-ne v6, v0, :cond_4

    invoke-direct {p0, p2}, Lorg/eclipse/jdt/internal/core/nd/db/Database;->unlinkFreeBlock(I)V

    :goto_1
    if-le v0, p1, :cond_3

    add-int v1, p2, v0

    invoke-direct {p0, v1}, Lorg/eclipse/jdt/internal/core/nd/db/Database;->getBlockHeaderForChunkNum(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    invoke-direct {p0, p2}, Lorg/eclipse/jdt/internal/core/nd/db/Database;->getBlockFooterForChunkBefore(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    sub-int/2addr v0, p1

    if-lt v1, v2, :cond_2

    add-int v1, p2, p1

    invoke-direct {p0, v1, v0}, Lorg/eclipse/jdt/internal/core/nd/db/Database;->linkFreeBlockToTrie(II)V

    goto :goto_2

    :cond_2
    add-int v1, p2, v0

    invoke-direct {p0, p2, v0}, Lorg/eclipse/jdt/internal/core/nd/db/Database;->linkFreeBlockToTrie(II)V

    move p2, v1

    :cond_3
    :goto_2
    neg-int p1, p1

    invoke-direct {p0, p2, p1}, Lorg/eclipse/jdt/internal/core/nd/db/Database;->setBlockHeader(II)V

    return p2

    :cond_4
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/nd/db/Database;->describeProblem()Lorg/eclipse/jdt/internal/core/nd/IndexExceptionBuilder;

    move-result-object p1

    int-to-long v7, p2

    mul-long/2addr v7, v3

    invoke-virtual {p1, v1, v7, v8, v2}, Lorg/eclipse/jdt/internal/core/nd/IndexExceptionBuilder;->addProblemAddress(Ljava/lang/String;JI)Lorg/eclipse/jdt/internal/core/nd/IndexExceptionBuilder;

    move-result-object p1

    int-to-long v7, v5

    mul-long/2addr v7, v3

    const-wide/16 v3, 0x4

    sub-long/2addr v7, v3

    const-string p2, "chunk footer"

    invoke-virtual {p1, p2, v7, v8, v2}, Lorg/eclipse/jdt/internal/core/nd/IndexExceptionBuilder;->addProblemAddress(Ljava/lang/String;JI)Lorg/eclipse/jdt/internal/core/nd/IndexExceptionBuilder;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v1, "The header and footer didn\'t match for a block in the free space trie. Expected "

    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " but found "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/eclipse/jdt/internal/core/nd/IndexExceptionBuilder;->build(Ljava/lang/String;)Lorg/eclipse/jdt/internal/core/nd/db/IndexException;

    move-result-object p1

    throw p1

    :cond_5
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/nd/db/Database;->describeProblem()Lorg/eclipse/jdt/internal/core/nd/IndexExceptionBuilder;

    move-result-object v5

    int-to-long v6, p2

    mul-long/2addr v6, v3

    invoke-virtual {v5, v1, v6, v7, v2}, Lorg/eclipse/jdt/internal/core/nd/IndexExceptionBuilder;->addProblemAddress(Ljava/lang/String;JI)Lorg/eclipse/jdt/internal/core/nd/IndexExceptionBuilder;

    move-result-object p2

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "A block in the free space trie was too small or wasn\'t actually free. Reported size = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " chunks, requested size = "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " chunks"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lorg/eclipse/jdt/internal/core/nd/IndexExceptionBuilder;->build(Ljava/lang/String;)Lorg/eclipse/jdt/internal/core/nd/db/IndexException;

    move-result-object p1

    throw p1
.end method

.method private createNewChunks(I)I
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/internal/core/nd/db/IndexException;
        }
    .end annotation

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/nd/db/Database;->fCache:Lorg/eclipse/jdt/internal/core/nd/db/ChunkCache;

    monitor-enter v0

    :try_start_0
    iget v1, p0, Lorg/eclipse/jdt/internal/core/nd/db/Database;->fChunksUsed:I

    add-int v2, v1, p1

    add-int/lit8 v3, v2, -0x1

    new-instance v4, Lorg/eclipse/jdt/internal/core/nd/db/Chunk;

    invoke-direct {v4, p0, v3}, Lorg/eclipse/jdt/internal/core/nd/db/Chunk;-><init>(Lorg/eclipse/jdt/internal/core/nd/db/Database;I)V

    iget-object v5, p0, Lorg/eclipse/jdt/internal/core/nd/db/Database;->fChunks:[Lorg/eclipse/jdt/internal/core/nd/db/Chunk;

    array-length v6, v5

    if-lt v3, v6, :cond_0

    array-length v5, v5

    div-int/lit8 v5, v5, 0x14

    const/16 v6, 0x400

    invoke-static {v6, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    iget-object v6, p0, Lorg/eclipse/jdt/internal/core/nd/db/Database;->fChunks:[Lorg/eclipse/jdt/internal/core/nd/db/Chunk;

    array-length v6, v6

    add-int/2addr v6, v5

    invoke-static {v2, v6}, Ljava/lang/Math;->max(II)I

    move-result v5

    new-array v5, v5, [Lorg/eclipse/jdt/internal/core/nd/db/Chunk;

    iget-object v6, p0, Lorg/eclipse/jdt/internal/core/nd/db/Database;->fChunks:[Lorg/eclipse/jdt/internal/core/nd/db/Chunk;

    array-length v7, v6

    const/4 v8, 0x0

    invoke-static {v6, v8, v5, v8, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v5, p0, Lorg/eclipse/jdt/internal/core/nd/db/Database;->fChunks:[Lorg/eclipse/jdt/internal/core/nd/db/Chunk;

    goto :goto_0

    :catchall_0
    move-exception p1

    goto/16 :goto_1

    :cond_0
    :goto_0
    iput v2, p0, Lorg/eclipse/jdt/internal/core/nd/db/Database;->fChunksUsed:I

    sget-boolean v2, Lorg/eclipse/jdt/internal/core/nd/db/Database;->DEBUG_PAGE_CACHE:Z

    if-eqz v2, :cond_1

    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "CHUNK "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v6, v4, Lorg/eclipse/jdt/internal/core/nd/db/Chunk;->fSequenceNumber:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ": inserted into vector - instance "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v4}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_1
    iget-object v2, p0, Lorg/eclipse/jdt/internal/core/nd/db/Database;->fChunks:[Lorg/eclipse/jdt/internal/core/nd/db/Chunk;

    aput-object v4, v2, v3

    iput-object v4, p0, Lorg/eclipse/jdt/internal/core/nd/db/Database;->fMostRecentlyFetchedChunk:Lorg/eclipse/jdt/internal/core/nd/db/Chunk;

    invoke-virtual {v4}, Lorg/eclipse/jdt/internal/core/nd/db/Chunk;->makeDirty()V

    iget-object v2, p0, Lorg/eclipse/jdt/internal/core/nd/db/Database;->fCache:Lorg/eclipse/jdt/internal/core/nd/db/ChunkCache;

    invoke-virtual {v2, v4}, Lorg/eclipse/jdt/internal/core/nd/db/ChunkCache;->add(Lorg/eclipse/jdt/internal/core/nd/db/Chunk;)V

    int-to-long v2, v1

    const-wide/16 v4, 0x1000

    mul-long/2addr v2, v4

    int-to-long v6, p1

    mul-long/2addr v6, v4

    add-long/2addr v2, v6

    const-wide v4, 0x800000000L

    cmp-long p1, v2, v4

    if-gtz p1, :cond_2

    monitor-exit v0

    return v1

    :cond_2
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/nd/db/Database;->getLocation()Ljava/io/File;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    filled-new-array {p1, v1}, [Ljava/lang/Object;

    move-result-object p1

    new-instance v1, Lorg/eclipse/jdt/internal/core/nd/db/IndexException;

    new-instance v12, Lorg/eclipse/core/runtime/Status;

    sget-object v8, Lorg/eclipse/jdt/internal/core/nd/db/Package;->PLUGIN_ID:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Database too large! Address = "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ", max size = "

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, p1}, Lorg/eclipse/osgi/util/NLS;->bind(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    const/4 v7, 0x4

    const/4 v9, 0x4

    move-object v6, v12

    invoke-direct/range {v6 .. v11}, Lorg/eclipse/core/runtime/Status;-><init>(ILjava/lang/String;ILjava/lang/String;Ljava/lang/Throwable;)V

    invoke-direct {v1, v12}, Lorg/eclipse/jdt/internal/core/nd/db/IndexException;-><init>(Lorg/eclipse/core/runtime/IStatus;)V

    throw v1

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public static synthetic d(Lorg/eclipse/jdt/internal/core/nd/db/Database;)V
    .locals 0

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/core/nd/db/Database;->lambda$1()V

    return-void
.end method

.method private databaseCorruptionDetected()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/internal/core/nd/db/IndexException;
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Corrupted database: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/nd/db/Database;->fLocation:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lorg/eclipse/jdt/internal/core/nd/db/IndexException;

    new-instance v2, Lorg/eclipse/jdt/internal/core/nd/db/DBStatus;

    invoke-direct {v2, v0}, Lorg/eclipse/jdt/internal/core/nd/db/DBStatus;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2}, Lorg/eclipse/jdt/internal/core/nd/db/IndexException;-><init>(Lorg/eclipse/core/runtime/IStatus;)V

    throw v1
.end method

.method private static divideRoundingUp(JJ)I
    .locals 2

    add-long/2addr p0, p2

    const-wide/16 v0, 0x1

    sub-long/2addr p0, v0

    div-long/2addr p0, p2

    long-to-int p0, p0

    return p0
.end method

.method private flushAndUnlockChunks(Ljava/util/ArrayList;Z)Z
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lorg/eclipse/jdt/internal/core/nd/db/Chunk;",
            ">;Z)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/internal/core/nd/db/IndexException;
        }
    .end annotation

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v2, p0, Lorg/eclipse/jdt/internal/core/nd/db/Database;->fHeaderChunk:Lorg/eclipse/jdt/internal/core/nd/db/Chunk;

    iget-boolean v2, v2, Lorg/eclipse/jdt/internal/core/nd/db/Chunk;->fDirty:Z

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    move v2, v1

    goto :goto_1

    :cond_1
    :goto_0
    invoke-direct {p0}, Lorg/eclipse/jdt/internal/core/nd/db/Database;->markFileIncomplete()Z

    move-result v2

    :goto_1
    const/4 v3, 0x1

    if-nez v0, :cond_7

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/nd/db/Database;->fCache:Lorg/eclipse/jdt/internal/core/nd/db/ChunkCache;

    monitor-enter v0

    :try_start_0
    iget-wide v4, p0, Lorg/eclipse/jdt/internal/core/nd/db/Database;->cacheMisses:J

    const-wide/16 v6, 0x64

    cmp-long v4, v4, v6

    const-wide/high16 v5, 0x40d4000000000000L    # 20480.0

    if-lez v4, :cond_2

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/nd/db/Database;->getAverageReadBytesPerMs()D

    move-result-wide v7

    const-wide/16 v9, 0x0

    cmpl-double v4, v7, v9

    if-lez v4, :cond_2

    const-wide/high16 v9, 0x4000000000000000L    # 2.0

    div-double/2addr v7, v9

    goto :goto_2

    :catchall_0
    move-exception p1

    goto/16 :goto_5

    :cond_2
    move-wide v7, v5

    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v7, v8, v5, v6}, Ljava/lang/Math;->max(DD)D

    move-result-wide v4

    new-instance v0, Lorg/eclipse/jdt/internal/core/nd/db/ChunkWriter;

    new-instance v6, Lorg/eclipse/jdt/internal/core/nd/db/f;

    invoke-direct {v6, p0}, Lorg/eclipse/jdt/internal/core/nd/db/f;-><init>(Lorg/eclipse/jdt/internal/core/nd/db/Database;)V

    const/high16 v7, 0x20000

    invoke-direct {v0, v7, v4, v5, v6}, Lorg/eclipse/jdt/internal/core/nd/db/ChunkWriter;-><init>(IDLorg/eclipse/jdt/internal/core/nd/db/ChunkWriter$WriteCallback;)V

    :try_start_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_3
    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_4

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/core/nd/db/ChunkWriter;->flush()Z

    iget-object p1, p0, Lorg/eclipse/jdt/internal/core/nd/db/Database;->fCache:Lorg/eclipse/jdt/internal/core/nd/db/ChunkCache;

    monitor-enter p1
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    :try_start_2
    iget-wide v4, p0, Lorg/eclipse/jdt/internal/core/nd/db/Database;->pageWritesBytes:J

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/core/nd/db/ChunkWriter;->getBytesWritten()J

    move-result-wide v6

    add-long/2addr v4, v6

    iput-wide v4, p0, Lorg/eclipse/jdt/internal/core/nd/db/Database;->pageWritesBytes:J

    iget-wide v4, p0, Lorg/eclipse/jdt/internal/core/nd/db/Database;->totalWriteTimeMs:J

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/core/nd/db/ChunkWriter;->getTotalWriteTimeMs()J

    move-result-wide v6

    add-long/2addr v4, v6

    iput-wide v4, p0, Lorg/eclipse/jdt/internal/core/nd/db/Database;->totalWriteTimeMs:J

    monitor-exit p1

    goto :goto_6

    :catchall_1
    move-exception p2

    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    throw p2

    :catch_0
    move-exception p1

    goto :goto_4

    :cond_4
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/eclipse/jdt/internal/core/nd/db/Chunk;

    iget-boolean v5, v4, Lorg/eclipse/jdt/internal/core/nd/db/Chunk;->fDirty:Z

    if-eqz v5, :cond_3

    sget-boolean v5, Lorg/eclipse/jdt/internal/core/nd/db/Database;->DEBUG_PAGE_CACHE:Z

    if-eqz v5, :cond_5

    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "CHUNK "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v7, v4, Lorg/eclipse/jdt/internal/core/nd/db/Chunk;->fSequenceNumber:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ": flushing - instance "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v4}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_5
    iget-object v5, p0, Lorg/eclipse/jdt/internal/core/nd/db/Database;->fCache:Lorg/eclipse/jdt/internal/core/nd/db/ChunkCache;

    monitor-enter v5
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    :try_start_4
    invoke-virtual {v4}, Lorg/eclipse/jdt/internal/core/nd/db/Chunk;->getBytes()[B

    move-result-object v6

    iput-boolean v1, v4, Lorg/eclipse/jdt/internal/core/nd/db/Chunk;->fDirty:Z

    invoke-virtual {p0, v4}, Lorg/eclipse/jdt/internal/core/nd/db/Database;->chunkCleaned(Lorg/eclipse/jdt/internal/core/nd/db/Chunk;)V

    monitor-exit v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :try_start_5
    iget v4, v4, Lorg/eclipse/jdt/internal/core/nd/db/Chunk;->fSequenceNumber:I

    int-to-long v4, v4

    const-wide/16 v7, 0x1000

    mul-long/2addr v4, v7

    invoke-virtual {v0, v4, v5, v6}, Lorg/eclipse/jdt/internal/core/nd/db/ChunkWriter;->write(J[B)Z

    move-result v4
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0

    if-nez v4, :cond_6

    if-nez v2, :cond_6

    move v2, v1

    goto :goto_3

    :cond_6
    move v2, v3

    goto :goto_3

    :catchall_2
    move-exception p1

    :try_start_6
    monitor-exit v5
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :try_start_7
    throw p1
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_0

    :goto_4
    new-instance p2, Lorg/eclipse/jdt/internal/core/nd/db/IndexException;

    new-instance v0, Lorg/eclipse/jdt/internal/core/nd/db/DBStatus;

    invoke-direct {v0, p1}, Lorg/eclipse/jdt/internal/core/nd/db/DBStatus;-><init>(Ljava/io/IOException;)V

    invoke-direct {p2, v0}, Lorg/eclipse/jdt/internal/core/nd/db/IndexException;-><init>(Lorg/eclipse/core/runtime/IStatus;)V

    throw p2

    :goto_5
    :try_start_8
    monitor-exit v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    throw p1

    :cond_7
    :goto_6
    if-eqz p2, :cond_a

    iget-object p1, p0, Lorg/eclipse/jdt/internal/core/nd/db/Database;->fHeaderChunk:Lorg/eclipse/jdt/internal/core/nd/db/Chunk;

    iget-boolean p2, p1, Lorg/eclipse/jdt/internal/core/nd/db/Chunk;->fDirty:Z

    if-nez p2, :cond_8

    iget-boolean p2, p0, Lorg/eclipse/jdt/internal/core/nd/db/Database;->fIsMarkedIncomplete:Z

    if-eqz p2, :cond_a

    :cond_8
    const-wide/16 v4, 0x0

    iget p2, p0, Lorg/eclipse/jdt/internal/core/nd/db/Database;->fVersion:I

    invoke-virtual {p1, v4, v5, p2}, Lorg/eclipse/jdt/internal/core/nd/db/Chunk;->putInt(JI)V

    iget-object p1, p0, Lorg/eclipse/jdt/internal/core/nd/db/Database;->fHeaderChunk:Lorg/eclipse/jdt/internal/core/nd/db/Chunk;

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/core/nd/db/Chunk;->flush()Z

    move-result p1

    if-nez p1, :cond_9

    if-nez v2, :cond_9

    move v3, v1

    :cond_9
    iput-boolean v1, p0, Lorg/eclipse/jdt/internal/core/nd/db/Database;->fIsMarkedIncomplete:Z

    move v2, v3

    :cond_a
    return v2
.end method

.method public static formatByteString(J)Ljava/lang/String;
    .locals 3

    long-to-double p0, p0

    const-wide/high16 v0, 0x4090000000000000L    # 1024.0

    cmpl-double v0, p0, v0

    if-lez v0, :cond_0

    const-wide/high16 v0, 0x4130000000000000L    # 1048576.0

    div-double/2addr p0, v0

    const-string v0, "MiB"

    goto :goto_0

    :cond_0
    const-string v0, "B"

    :goto_0
    new-instance v1, Ljava/text/DecimalFormat;

    const-string v2, "#0.###"

    invoke-direct {v1, v2}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0, p1}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v2, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private freeLargeChunk(II)V
    .locals 3

    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/core/nd/db/Database;->getBlockFooterForChunkBefore(I)I

    move-result v0

    add-int v1, p1, p2

    invoke-direct {p0, v1}, Lorg/eclipse/jdt/internal/core/nd/db/Database;->getBlockHeaderForChunkNum(I)I

    move-result v2

    if-lez v0, :cond_0

    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/core/nd/db/Database;->getFirstChunkOfBlockBefore(I)I

    move-result p1

    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/core/nd/db/Database;->unlinkFreeBlock(I)V

    add-int/2addr p2, v0

    :cond_0
    if-lez v2, :cond_1

    invoke-direct {p0, v1}, Lorg/eclipse/jdt/internal/core/nd/db/Database;->unlinkFreeBlock(I)V

    add-int/2addr p2, v2

    :cond_1
    invoke-direct {p0, p1, p2}, Lorg/eclipse/jdt/internal/core/nd/db/Database;->linkFreeBlockToTrie(II)V

    return-void
.end method

.method private getAddressOfFirstBlockPointer(I)J
    .locals 2

    div-int/lit8 p1, p1, 0x8

    add-int/lit8 p1, p1, -0x2

    mul-int/lit8 p1, p1, 0x4

    add-int/lit8 p1, p1, 0x4

    int-to-long v0, p1

    return-wide v0
.end method

.method private getBlockFooterForChunkBefore(I)I
    .locals 4

    const/4 v0, 0x2

    if-ge p1, v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    int-to-long v0, p1

    const-wide/16 v2, 0x1000

    mul-long/2addr v0, v2

    sget p1, Lorg/eclipse/jdt/internal/core/nd/db/LargeBlock;->FOOTER_SIZE:I

    int-to-long v2, p1

    sub-long/2addr v0, v2

    invoke-virtual {p0, v0, v1}, Lorg/eclipse/jdt/internal/core/nd/db/Database;->getInt(J)I

    move-result p1

    return p1
.end method

.method private getBlockHeaderForChunkNum(I)I
    .locals 4

    iget v0, p0, Lorg/eclipse/jdt/internal/core/nd/db/Database;->fChunksUsed:I

    if-lt p1, v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    int-to-long v0, p1

    const-wide/16 v2, 0x1000

    mul-long/2addr v0, v2

    invoke-virtual {p0, v0, v1}, Lorg/eclipse/jdt/internal/core/nd/db/Database;->getInt(J)I

    move-result p1

    return p1
.end method

.method public static getBytesThatFitInChunks(I)J
    .locals 4

    const-wide/16 v0, 0x1000

    int-to-long v2, p0

    mul-long/2addr v2, v0

    sget p0, Lorg/eclipse/jdt/internal/core/nd/db/LargeBlock;->HEADER_SIZE:I

    int-to-long v0, p0

    sub-long/2addr v2, v0

    sget p0, Lorg/eclipse/jdt/internal/core/nd/db/LargeBlock;->FOOTER_SIZE:I

    int-to-long v0, p0

    sub-long/2addr v2, v0

    const-wide/16 v0, 0x2

    sub-long/2addr v2, v0

    return-wide v2
.end method

.method public static getChunksNeededForBytes(J)I
    .locals 2

    const-wide/16 v0, 0x2

    add-long/2addr p0, v0

    sget v0, Lorg/eclipse/jdt/internal/core/nd/db/LargeBlock;->HEADER_SIZE:I

    int-to-long v0, v0

    add-long/2addr p0, v0

    sget v0, Lorg/eclipse/jdt/internal/core/nd/db/LargeBlock;->FOOTER_SIZE:I

    int-to-long v0, v0

    add-long/2addr p0, v0

    const-wide/16 v0, 0x1000

    invoke-static {p0, p1, v0, v1}, Lorg/eclipse/jdt/internal/core/nd/db/Database;->divideRoundingUp(JJ)I

    move-result p0

    return p0
.end method

.method private getFirstBlock(I)J
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/internal/core/nd/db/IndexException;
        }
    .end annotation

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/nd/db/Database;->fHeaderChunk:Lorg/eclipse/jdt/internal/core/nd/db/Chunk;

    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/core/nd/db/Database;->getAddressOfFirstBlockPointer(I)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lorg/eclipse/jdt/internal/core/nd/db/Chunk;->getFreeRecPtr(J)J

    move-result-wide v0

    return-wide v0
.end method

.method private getFirstChunkOfBlockBefore(I)I
    .locals 1

    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/core/nd/db/Database;->getBlockFooterForChunkBefore(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    sub-int/2addr p1, v0

    return p1
.end method

.method private getFreeBlockFromTrie(I)I
    .locals 4

    const-wide/16 v0, 0x800

    invoke-virtual {p0, v0, v1}, Lorg/eclipse/jdt/internal/core/nd/db/Database;->getInt(J)I

    move-result v0

    invoke-direct {p0, v0, p1}, Lorg/eclipse/jdt/internal/core/nd/db/Database;->getSmallestChildNoSmallerThan(II)I

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    int-to-long v0, p1

    const-wide/16 v2, 0x1000

    mul-long/2addr v0, v2

    sget v2, Lorg/eclipse/jdt/internal/core/nd/db/LargeBlock;->NEXT_BLOCK_OFFSET:I

    int-to-long v2, v2

    add-long/2addr v0, v2

    invoke-virtual {p0, v0, v1}, Lorg/eclipse/jdt/internal/core/nd/db/Database;->getInt(J)I

    move-result v0

    if-eqz v0, :cond_1

    return v0

    :cond_1
    return p1
.end method

.method private getFreeRecPtr(J)J
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/internal/core/nd/db/IndexException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lorg/eclipse/jdt/internal/core/nd/db/Database;->getChunk(J)Lorg/eclipse/jdt/internal/core/nd/db/Chunk;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lorg/eclipse/jdt/internal/core/nd/db/Chunk;->getFreeRecPtr(J)J

    move-result-wide p1

    return-wide p1
.end method

.method public static getRecPtr([BI)J
    .locals 2

    .line 2
    invoke-static {p0, p1}, Lorg/eclipse/jdt/internal/core/nd/db/Chunk;->getInt([BI)I

    move-result p0

    .line 3
    invoke-static {p0}, Lorg/eclipse/jdt/internal/core/nd/db/Chunk;->expandToFreeRecPtr(I)J

    move-result-wide p0

    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    if-eqz v0, :cond_0

    const-wide/16 v0, 0x2

    add-long/2addr p0, v0

    :cond_0
    return-wide p0
.end method

.method private getSmallestChildNoSmallerThan(II)I
    .locals 10

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/core/nd/db/Database;->getBlockHeaderForChunkNum(I)I

    move-result v1

    xor-int v2, v1, p2

    if-nez v2, :cond_1

    return p1

    :cond_1
    invoke-static {v2}, Ljava/lang/Integer;->highestOneBit(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->numberOfLeadingZeros(I)I

    move-result v3

    rsub-int/lit8 v3, v3, 0x1f

    const/4 v4, 0x1

    if-le v1, p2, :cond_2

    move v5, v4

    goto :goto_0

    :cond_2
    move v5, v0

    :goto_0
    const/16 v6, 0x20

    if-lt v3, v6, :cond_4

    if-eqz v5, :cond_3

    return p1

    :cond_3
    return v0

    :cond_4
    and-int v6, v1, v2

    if-eqz v6, :cond_5

    move v6, v4

    goto :goto_1

    :cond_5
    move v6, v0

    :goto_1
    if-ne v6, v5, :cond_6

    int-to-long v6, p1

    const-wide/16 v8, 0x1000

    mul-long/2addr v6, v8

    sget v8, Lorg/eclipse/jdt/internal/core/nd/db/LargeBlock;->CHILD_TABLE_OFFSET:I

    int-to-long v8, v8

    add-long/2addr v6, v8

    mul-int/lit8 v8, v3, 0x4

    int-to-long v8, v8

    add-long/2addr v6, v8

    invoke-virtual {p0, v6, v7}, Lorg/eclipse/jdt/internal/core/nd/db/Database;->getInt(J)I

    move-result v6

    invoke-direct {p0, v6, p2}, Lorg/eclipse/jdt/internal/core/nd/db/Database;->getSmallestChildNoSmallerThan(II)I

    move-result v6

    if-eqz v6, :cond_6

    return v6

    :cond_6
    shl-int/lit8 v2, v2, 0x1

    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method private insertChild(II)V
    .locals 8

    const-wide/16 v0, 0x1000

    if-nez p1, :cond_0

    int-to-long v2, p2

    mul-long/2addr v2, v0

    sget v0, Lorg/eclipse/jdt/internal/core/nd/db/LargeBlock;->PARENT_OFFSET:I

    int-to-long v0, v0

    add-long/2addr v2, v0

    invoke-virtual {p0, v2, v3, p1}, Lorg/eclipse/jdt/internal/core/nd/db/Database;->putInt(JI)V

    const-wide/16 v0, 0x800

    invoke-virtual {p0, v0, v1, p2}, Lorg/eclipse/jdt/internal/core/nd/db/Database;->putInt(JI)V

    return-void

    :cond_0
    invoke-direct {p0, p2}, Lorg/eclipse/jdt/internal/core/nd/db/Database;->getBlockHeaderForChunkNum(I)I

    move-result v2

    :goto_0
    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/core/nd/db/Database;->getBlockHeaderForChunkNum(I)I

    move-result v3

    xor-int/2addr v3, v2

    if-nez v3, :cond_1

    invoke-direct {p0, p1, p2}, Lorg/eclipse/jdt/internal/core/nd/db/Database;->insertFreeBlockAfter(II)V

    return-void

    :cond_1
    invoke-static {v3}, Ljava/lang/Integer;->numberOfLeadingZeros(I)I

    move-result v3

    rsub-int/lit8 v3, v3, 0x1f

    int-to-long v4, p1

    mul-long/2addr v4, v0

    sget v6, Lorg/eclipse/jdt/internal/core/nd/db/LargeBlock;->CHILD_TABLE_OFFSET:I

    int-to-long v6, v6

    add-long/2addr v4, v6

    mul-int/lit8 v3, v3, 0x4

    int-to-long v6, v3

    add-long/2addr v4, v6

    invoke-virtual {p0, v4, v5}, Lorg/eclipse/jdt/internal/core/nd/db/Database;->getInt(J)I

    move-result v3

    if-nez v3, :cond_2

    invoke-virtual {p0, v4, v5, p2}, Lorg/eclipse/jdt/internal/core/nd/db/Database;->putInt(JI)V

    int-to-long v2, p2

    mul-long/2addr v2, v0

    sget p2, Lorg/eclipse/jdt/internal/core/nd/db/LargeBlock;->PARENT_OFFSET:I

    int-to-long v0, p2

    add-long/2addr v2, v0

    invoke-virtual {p0, v2, v3, p1}, Lorg/eclipse/jdt/internal/core/nd/db/Database;->putInt(JI)V

    return-void

    :cond_2
    move p1, v3

    goto :goto_0
.end method

.method private insertFreeBlockAfter(II)V
    .locals 10

    int-to-long v0, p1

    const-wide/16 v2, 0x1000

    mul-long/2addr v0, v2

    sget v4, Lorg/eclipse/jdt/internal/core/nd/db/LargeBlock;->NEXT_BLOCK_OFFSET:I

    int-to-long v5, v4

    add-long/2addr v5, v0

    invoke-virtual {p0, v5, v6}, Lorg/eclipse/jdt/internal/core/nd/db/Database;->getInt(J)I

    move-result v5

    int-to-long v6, v5

    mul-long/2addr v6, v2

    int-to-long v8, p2

    mul-long/2addr v8, v2

    int-to-long v2, v4

    add-long/2addr v0, v2

    invoke-virtual {p0, v0, v1, p2}, Lorg/eclipse/jdt/internal/core/nd/db/Database;->putInt(JI)V

    if-eqz v5, :cond_0

    sget v0, Lorg/eclipse/jdt/internal/core/nd/db/LargeBlock;->PREV_BLOCK_OFFSET:I

    int-to-long v0, v0

    add-long/2addr v6, v0

    invoke-virtual {p0, v6, v7, p2}, Lorg/eclipse/jdt/internal/core/nd/db/Database;->putInt(JI)V

    :cond_0
    sget p2, Lorg/eclipse/jdt/internal/core/nd/db/LargeBlock;->PREV_BLOCK_OFFSET:I

    int-to-long v0, p2

    add-long/2addr v0, v8

    invoke-virtual {p0, v0, v1, p1}, Lorg/eclipse/jdt/internal/core/nd/db/Database;->putInt(JI)V

    int-to-long p1, v4

    add-long/2addr v8, p1

    invoke-virtual {p0, v8, v9, v5}, Lorg/eclipse/jdt/internal/core/nd/db/Database;->putInt(JI)V

    return-void
.end method

.method private synthetic lambda$0(Ljava/nio/ByteBuffer;J)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/nd/db/Database;->fFile:Ljava/io/RandomAccessFile;

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Ljava/nio/channels/FileChannel;->write(Ljava/nio/ByteBuffer;J)I

    return-void
.end method

.method private synthetic lambda$1()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/nd/db/Database;->fFile:Ljava/io/RandomAccessFile;

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v0

    const-wide/16 v1, 0x1000

    invoke-virtual {v0, v1, v2}, Ljava/nio/channels/FileChannel;->truncate(J)Ljava/nio/channels/FileChannel;

    return-void
.end method

.method private static synthetic lambda$2(Lorg/eclipse/jdt/internal/core/nd/db/Chunk;Lorg/eclipse/jdt/internal/core/nd/db/Chunk;)I
    .locals 0

    iget p0, p0, Lorg/eclipse/jdt/internal/core/nd/db/Chunk;->fSequenceNumber:I

    iget p1, p1, Lorg/eclipse/jdt/internal/core/nd/db/Chunk;->fSequenceNumber:I

    sub-int/2addr p0, p1

    return p0
.end method

.method private synthetic lambda$4(Ljava/nio/ByteBuffer;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/nd/db/Database;->fFile:Ljava/io/RandomAccessFile;

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v0

    const-wide/16 v1, 0x0

    invoke-virtual {v0, p1, v1, v2}, Ljava/nio/channels/FileChannel;->write(Ljava/nio/ByteBuffer;J)I

    return-void
.end method

.method private linkFreeBlockToTrie(II)V
    .locals 5

    invoke-direct {p0, p1, p2}, Lorg/eclipse/jdt/internal/core/nd/db/Database;->setBlockHeader(II)V

    int-to-long v0, p1

    const-wide/16 v2, 0x1000

    mul-long/2addr v0, v2

    invoke-virtual {p0, v0, v1}, Lorg/eclipse/jdt/internal/core/nd/db/Database;->getChunk(J)Lorg/eclipse/jdt/internal/core/nd/db/Chunk;

    move-result-object p2

    sget v2, Lorg/eclipse/jdt/internal/core/nd/db/LargeBlock;->HEADER_SIZE:I

    int-to-long v3, v2

    add-long/2addr v0, v3

    sget v3, Lorg/eclipse/jdt/internal/core/nd/db/LargeBlock;->UNALLOCATED_HEADER_SIZE:I

    sub-int/2addr v3, v2

    invoke-virtual {p2, v0, v1, v3}, Lorg/eclipse/jdt/internal/core/nd/db/Chunk;->clear(JI)V

    const-wide/16 v0, 0x800

    invoke-virtual {p0, v0, v1}, Lorg/eclipse/jdt/internal/core/nd/db/Database;->getInt(J)I

    move-result p2

    invoke-direct {p0, p2, p1}, Lorg/eclipse/jdt/internal/core/nd/db/Database;->insertChild(II)V

    return-void
.end method

.method private markFileIncomplete()Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/internal/core/nd/db/IndexException;
        }
    .end annotation

    iget-boolean v0, p0, Lorg/eclipse/jdt/internal/core/nd/db/Database;->fIsMarkedIncomplete:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/eclipse/jdt/internal/core/nd/db/Database;->fIsMarkedIncomplete:Z

    const/4 v0, 0x4

    :try_start_0
    new-array v0, v0, [B

    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    new-instance v1, Lorg/eclipse/jdt/internal/core/nd/db/e;

    invoke-direct {v1, p0, v0}, Lorg/eclipse/jdt/internal/core/nd/db/e;-><init>(Lorg/eclipse/jdt/internal/core/nd/db/Database;Ljava/nio/ByteBuffer;)V

    invoke-direct {p0, v1}, Lorg/eclipse/jdt/internal/core/nd/db/Database;->performUninterruptableWrite(Lorg/eclipse/jdt/internal/core/nd/db/Database$IORunnable;)Z

    move-result v0

    iget-wide v1, p0, Lorg/eclipse/jdt/internal/core/nd/db/Database;->bytesWritten:J

    const-wide/16 v3, 0x4

    add-long/2addr v1, v3

    iput-wide v1, p0, Lorg/eclipse/jdt/internal/core/nd/db/Database;->bytesWritten:J
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Lorg/eclipse/jdt/internal/core/nd/db/IndexException;

    new-instance v2, Lorg/eclipse/jdt/internal/core/nd/db/DBStatus;

    invoke-direct {v2, v0}, Lorg/eclipse/jdt/internal/core/nd/db/DBStatus;-><init>(Ljava/io/IOException;)V

    invoke-direct {v1, v2}, Lorg/eclipse/jdt/internal/core/nd/db/IndexException;-><init>(Lorg/eclipse/core/runtime/IStatus;)V

    throw v1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private openFile()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    new-instance v0, Ljava/io/RandomAccessFile;

    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/nd/db/Database;->fLocation:Ljava/io/File;

    iget-boolean v2, p0, Lorg/eclipse/jdt/internal/core/nd/db/Database;->fReadOnly:Z

    if-eqz v2, :cond_0

    const-string v2, "r"

    goto :goto_0

    :cond_0
    const-string v2, "rw"

    :goto_0
    invoke-direct {v0, v1, v2}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lorg/eclipse/jdt/internal/core/nd/db/Database;->fFile:Ljava/io/RandomAccessFile;

    return-void
.end method

.method private performUninterruptableWrite(Lorg/eclipse/jdt/internal/core/nd/db/Database$IORunnable;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    :try_start_0
    invoke-interface {p1}, Lorg/eclipse/jdt/internal/core/nd/db/Database$IORunnable;->run()V
    :try_end_0
    .catch Ljava/nio/channels/ClosedChannelException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v2

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/core/nd/db/Database;->openFile()V

    instance-of v3, v2, Ljava/nio/channels/ClosedByInterruptException;

    if-eqz v3, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    const/16 v3, 0x14

    if-gt v1, v3, :cond_1

    goto :goto_0

    :cond_1
    throw v2
.end method

.method private periodicValidateFreeSpace()Z
    .locals 4

    iget-wide v0, p0, Lorg/eclipse/jdt/internal/core/nd/db/Database;->validateCounter:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lorg/eclipse/jdt/internal/core/nd/db/Database;->validateCounter:J

    iget-wide v2, p0, Lorg/eclipse/jdt/internal/core/nd/db/Database;->nextValidation:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/nd/db/Database;->validateFreeSpace()V

    iget-wide v0, p0, Lorg/eclipse/jdt/internal/core/nd/db/Database;->validateCounter:J

    const-wide/16 v2, 0x2

    mul-long/2addr v0, v2

    iput-wide v0, p0, Lorg/eclipse/jdt/internal/core/nd/db/Database;->nextValidation:J

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private putFreeRecPtr(JJ)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/internal/core/nd/db/IndexException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lorg/eclipse/jdt/internal/core/nd/db/Database;->getChunk(J)Lorg/eclipse/jdt/internal/core/nd/db/Chunk;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Lorg/eclipse/jdt/internal/core/nd/db/Chunk;->putFreeRecPtr(JJ)V

    return-void
.end method

.method public static putRecPtr(J[BI)V
    .locals 2

    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x2

    sub-long/2addr p0, v0

    .line 2
    invoke-static {p0, p1}, Lorg/eclipse/jdt/internal/core/nd/db/Chunk;->compressFreeRecPtr(J)I

    move-result p0

    .line 3
    :goto_0
    invoke-static {p0, p2, p3}, Lorg/eclipse/jdt/internal/core/nd/db/Chunk;->putInt(I[BI)V

    return-void
.end method

.method private removeBlock(Lorg/eclipse/jdt/internal/core/nd/db/Chunk;IJ)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/internal/core/nd/db/IndexException;
        }
    .end annotation

    const-wide/16 v0, 0x2

    add-long v2, p3, v0

    invoke-virtual {p1, v2, v3}, Lorg/eclipse/jdt/internal/core/nd/db/Chunk;->getFreeRecPtr(J)J

    move-result-wide v2

    const-wide/16 v4, 0x6

    add-long/2addr p3, v4

    invoke-virtual {p1, p3, p4}, Lorg/eclipse/jdt/internal/core/nd/db/Chunk;->getFreeRecPtr(J)J

    move-result-wide p3

    const-wide/16 v6, 0x0

    cmp-long p1, v2, v6

    if-eqz p1, :cond_0

    add-long/2addr v4, v2

    invoke-direct {p0, v4, v5, p3, p4}, Lorg/eclipse/jdt/internal/core/nd/db/Database;->putFreeRecPtr(JJ)V

    goto :goto_0

    :cond_0
    invoke-direct {p0, p2, p3, p4}, Lorg/eclipse/jdt/internal/core/nd/db/Database;->setFirstBlock(IJ)V

    :goto_0
    cmp-long p1, p3, v6

    if-eqz p1, :cond_1

    add-long/2addr p3, v0

    invoke-direct {p0, p3, p4, v2, v3}, Lorg/eclipse/jdt/internal/core/nd/db/Database;->putFreeRecPtr(JJ)V

    :cond_1
    return-void
.end method

.method private removeChunksFromCache()V
    .locals 8

    const/4 v0, 0x1

    :goto_0
    iget v1, p0, Lorg/eclipse/jdt/internal/core/nd/db/Database;->fChunksUsed:I

    if-lt v0, v1, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/nd/db/Database;->fCache:Lorg/eclipse/jdt/internal/core/nd/db/ChunkCache;

    monitor-enter v1

    :try_start_0
    iget v2, p0, Lorg/eclipse/jdt/internal/core/nd/db/Database;->fChunksUsed:I

    sub-int/2addr v2, v0

    const/16 v3, 0x100

    invoke-static {v3, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    const/4 v3, 0x0

    :goto_1
    if-lt v3, v2, :cond_1

    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_2

    :cond_1
    iget-object v4, p0, Lorg/eclipse/jdt/internal/core/nd/db/Database;->fChunks:[Lorg/eclipse/jdt/internal/core/nd/db/Chunk;

    add-int/lit8 v5, v0, 0x1

    aget-object v0, v4, v0

    if-eqz v0, :cond_3

    iget-object v4, p0, Lorg/eclipse/jdt/internal/core/nd/db/Database;->fCache:Lorg/eclipse/jdt/internal/core/nd/db/ChunkCache;

    invoke-virtual {v4, v0}, Lorg/eclipse/jdt/internal/core/nd/db/ChunkCache;->remove(Lorg/eclipse/jdt/internal/core/nd/db/Chunk;)V

    sget-boolean v4, Lorg/eclipse/jdt/internal/core/nd/db/Database;->DEBUG_PAGE_CACHE:Z

    if-eqz v4, :cond_2

    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "CHUNK "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v7, v0, Lorg/eclipse/jdt/internal/core/nd/db/Chunk;->fSequenceNumber:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ": removing from vector in removeChunksFromCache - instance "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_2
    iget-object v4, p0, Lorg/eclipse/jdt/internal/core/nd/db/Database;->fChunks:[Lorg/eclipse/jdt/internal/core/nd/db/Chunk;

    iget v0, v0, Lorg/eclipse/jdt/internal/core/nd/db/Chunk;->fSequenceNumber:I

    const/4 v6, 0x0

    aput-object v6, v4, v0

    :cond_3
    add-int/lit8 v3, v3, 0x1

    move v0, v5

    goto :goto_1

    :goto_2
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private setBlockHeader(II)V
    .locals 7

    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result v0

    int-to-long v1, p1

    const-wide/16 v3, 0x1000

    mul-long/2addr v1, v3

    invoke-virtual {p0, v1, v2, p2}, Lorg/eclipse/jdt/internal/core/nd/db/Database;->putInt(JI)V

    int-to-long v5, v0

    mul-long/2addr v5, v3

    add-long/2addr v1, v5

    sget p1, Lorg/eclipse/jdt/internal/core/nd/db/LargeBlock;->FOOTER_SIZE:I

    int-to-long v3, p1

    sub-long/2addr v1, v3

    invoke-virtual {p0, v1, v2, p2}, Lorg/eclipse/jdt/internal/core/nd/db/Database;->putInt(JI)V

    return-void
.end method

.method private setFirstBlock(IJ)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/internal/core/nd/db/IndexException;
        }
    .end annotation

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/nd/db/Database;->fHeaderChunk:Lorg/eclipse/jdt/internal/core/nd/db/Chunk;

    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/core/nd/db/Database;->getAddressOfFirstBlockPointer(I)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2, p2, p3}, Lorg/eclipse/jdt/internal/core/nd/db/Chunk;->putFreeRecPtr(JJ)V

    return-void
.end method

.method private sortBySequenceNumber(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lorg/eclipse/jdt/internal/core/nd/db/Chunk;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Lorg/eclipse/jdt/internal/core/nd/db/g;

    invoke-direct {v0}, Lorg/eclipse/jdt/internal/core/nd/db/g;-><init>()V

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->sort(Ljava/util/Comparator;)V

    return-void
.end method

.method private unlinkFreeBlock(I)V
    .locals 15

    move-object v0, p0

    move/from16 v1, p1

    int-to-long v2, v1

    const-wide/16 v4, 0x1000

    mul-long v6, v2, v4

    sget v8, Lorg/eclipse/jdt/internal/core/nd/db/LargeBlock;->NEXT_BLOCK_OFFSET:I

    int-to-long v9, v8

    add-long/2addr v9, v6

    invoke-virtual {p0, v9, v10}, Lorg/eclipse/jdt/internal/core/nd/db/Database;->getInt(J)I

    move-result v9

    sget v10, Lorg/eclipse/jdt/internal/core/nd/db/LargeBlock;->PREV_BLOCK_OFFSET:I

    int-to-long v11, v10

    add-long/2addr v11, v6

    invoke-virtual {p0, v11, v12}, Lorg/eclipse/jdt/internal/core/nd/db/Database;->getInt(J)I

    move-result v11

    const/4 v12, 0x0

    if-eqz v9, :cond_0

    int-to-long v13, v9

    mul-long/2addr v13, v4

    int-to-long v4, v10

    add-long/2addr v13, v4

    invoke-virtual {p0, v13, v14, v11}, Lorg/eclipse/jdt/internal/core/nd/db/Database;->putInt(JI)V

    move v4, v9

    goto :goto_0

    :cond_0
    move v4, v12

    :goto_0
    if-eqz v11, :cond_1

    int-to-long v4, v11

    const-wide/16 v13, 0x1000

    mul-long/2addr v4, v13

    int-to-long v13, v8

    add-long/2addr v4, v13

    invoke-virtual {p0, v4, v5, v9}, Lorg/eclipse/jdt/internal/core/nd/db/Database;->putInt(JI)V

    goto :goto_1

    :cond_1
    move v11, v4

    :goto_1
    const-wide/16 v4, 0x800

    invoke-virtual {p0, v4, v5}, Lorg/eclipse/jdt/internal/core/nd/db/Database;->getInt(J)I

    move-result v8

    int-to-long v8, v8

    cmp-long v2, v8, v2

    const/4 v3, 0x1

    if-nez v2, :cond_2

    invoke-virtual {p0, v4, v5, v12}, Lorg/eclipse/jdt/internal/core/nd/db/Database;->putInt(JI)V

    move v2, v3

    goto :goto_2

    :cond_2
    move v2, v12

    :goto_2
    invoke-direct/range {p0 .. p1}, Lorg/eclipse/jdt/internal/core/nd/db/Database;->getBlockHeaderForChunkNum(I)I

    move-result v4

    sget v5, Lorg/eclipse/jdt/internal/core/nd/db/LargeBlock;->PARENT_OFFSET:I

    int-to-long v8, v5

    add-long/2addr v8, v6

    invoke-virtual {p0, v8, v9}, Lorg/eclipse/jdt/internal/core/nd/db/Database;->getInt(J)I

    move-result v5

    const/4 v8, 0x4

    if-eqz v5, :cond_3

    invoke-direct {p0, v5}, Lorg/eclipse/jdt/internal/core/nd/db/Database;->getBlockHeaderForChunkNum(I)I

    move-result v9

    xor-int/2addr v4, v9

    if-eqz v4, :cond_3

    invoke-static {v4}, Ljava/lang/Integer;->numberOfLeadingZeros(I)I

    move-result v4

    rsub-int/lit8 v4, v4, 0x1f

    int-to-long v9, v5

    const-wide/16 v13, 0x1000

    mul-long/2addr v9, v13

    sget v13, Lorg/eclipse/jdt/internal/core/nd/db/LargeBlock;->CHILD_TABLE_OFFSET:I

    int-to-long v13, v13

    add-long/2addr v9, v13

    mul-int/2addr v4, v8

    int-to-long v13, v4

    add-long/2addr v9, v13

    invoke-virtual {p0, v9, v10}, Lorg/eclipse/jdt/internal/core/nd/db/Database;->getInt(J)I

    move-result v4

    if-ne v4, v1, :cond_3

    invoke-virtual {p0, v9, v10, v12}, Lorg/eclipse/jdt/internal/core/nd/db/Database;->putInt(JI)V

    goto :goto_3

    :cond_3
    move v3, v2

    :goto_3
    if-eqz v3, :cond_4

    if-eqz v11, :cond_4

    invoke-direct {p0, v5, v11}, Lorg/eclipse/jdt/internal/core/nd/db/Database;->insertChild(II)V

    :cond_4
    move v2, v5

    :goto_4
    const/16 v4, 0x20

    if-lt v12, v4, :cond_5

    return-void

    :cond_5
    sget v4, Lorg/eclipse/jdt/internal/core/nd/db/LargeBlock;->CHILD_TABLE_OFFSET:I

    int-to-long v9, v4

    add-long/2addr v9, v6

    mul-int/lit8 v4, v12, 0x4

    int-to-long v13, v4

    add-long/2addr v9, v13

    invoke-virtual {p0, v9, v10}, Lorg/eclipse/jdt/internal/core/nd/db/Database;->getInt(J)I

    move-result v4

    if-eqz v4, :cond_7

    if-eqz v3, :cond_6

    invoke-direct {p0, v2, v4}, Lorg/eclipse/jdt/internal/core/nd/db/Database;->insertChild(II)V

    if-ne v2, v5, :cond_7

    move v2, v4

    goto :goto_5

    :cond_6
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/nd/db/Database;->describeProblem()Lorg/eclipse/jdt/internal/core/nd/IndexExceptionBuilder;

    move-result-object v2

    const-string v3, "non-null child pointer"

    invoke-virtual {v2, v3, v9, v10, v8}, Lorg/eclipse/jdt/internal/core/nd/IndexExceptionBuilder;->addProblemAddress(Ljava/lang/String;JI)Lorg/eclipse/jdt/internal/core/nd/IndexExceptionBuilder;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "All child pointers should be null for a free chunk that is in the sibling list but not part of the trie. Problematic chunk number: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lorg/eclipse/jdt/internal/core/nd/IndexExceptionBuilder;->build(Ljava/lang/String;)Lorg/eclipse/jdt/internal/core/nd/db/IndexException;

    move-result-object v1

    throw v1

    :cond_7
    :goto_5
    add-int/lit8 v12, v12, 0x1

    goto :goto_4
.end method

.method private useBytes([C)Z
    .locals 5

    array-length v0, p1

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-lt v2, v0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    aget-char v3, p1, v2

    const v4, 0xff00

    and-int/2addr v3, v4

    if-eqz v3, :cond_1

    return v1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method private validateFreeBlocksFor(I)V
    .locals 20

    move-object/from16 v0, p0

    mul-int/lit8 v1, p1, 0x8

    invoke-direct {v0, v1}, Lorg/eclipse/jdt/internal/core/nd/db/Database;->getFirstBlock(I)J

    move-result-wide v2

    invoke-direct {v0, v1}, Lorg/eclipse/jdt/internal/core/nd/db/Database;->getAddressOfFirstBlockPointer(I)J

    move-result-wide v4

    const-wide/16 v6, 0x0

    move-wide v8, v6

    :goto_0
    cmp-long v10, v2, v6

    if-nez v10, :cond_0

    return-void

    :cond_0
    const-wide/16 v10, 0x2

    add-long/2addr v10, v2

    invoke-direct {v0, v10, v11}, Lorg/eclipse/jdt/internal/core/nd/db/Database;->getFreeRecPtr(J)J

    move-result-wide v12

    invoke-virtual {v0, v2, v3}, Lorg/eclipse/jdt/internal/core/nd/db/Database;->getShort(J)S

    move-result v14

    const-wide/16 v15, 0x6

    add-long v6, v2, v15

    invoke-direct {v0, v6, v7}, Lorg/eclipse/jdt/internal/core/nd/db/Database;->getFreeRecPtr(J)J

    move-result-wide v15

    cmp-long v17, v12, v8

    const-string v0, ") of size "

    move-wide/from16 v18, v6

    const-string v6, "incoming pointer"

    const/4 v7, 0x4

    if-nez v17, :cond_2

    if-ne v14, v1, :cond_1

    const-wide/16 v6, 0x0

    move-object/from16 v0, p0

    move-wide v8, v2

    move-wide v2, v15

    move-wide/from16 v4, v18

    goto :goto_0

    :cond_1
    invoke-virtual/range {p0 .. p0}, Lorg/eclipse/jdt/internal/core/nd/db/Database;->describeProblem()Lorg/eclipse/jdt/internal/core/nd/IndexExceptionBuilder;

    move-result-object v8

    const-string v9, "block size"

    const/4 v10, 0x2

    invoke-virtual {v8, v9, v2, v3, v10}, Lorg/eclipse/jdt/internal/core/nd/IndexExceptionBuilder;->addProblemAddress(Ljava/lang/String;JI)Lorg/eclipse/jdt/internal/core/nd/IndexExceptionBuilder;

    move-result-object v8

    invoke-virtual {v8, v6, v4, v5, v7}, Lorg/eclipse/jdt/internal/core/nd/IndexExceptionBuilder;->addProblemAddress(Ljava/lang/String;JI)Lorg/eclipse/jdt/internal/core/nd/IndexExceptionBuilder;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "A block ("

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, " was in the free space list for blocks of size "

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Lorg/eclipse/jdt/internal/core/nd/IndexExceptionBuilder;->build(Ljava/lang/String;)Lorg/eclipse/jdt/internal/core/nd/db/IndexException;

    move-result-object v0

    throw v0

    :cond_2
    invoke-virtual/range {p0 .. p0}, Lorg/eclipse/jdt/internal/core/nd/db/Database;->describeProblem()Lorg/eclipse/jdt/internal/core/nd/IndexExceptionBuilder;

    move-result-object v14

    const-string v15, "last block"

    invoke-virtual {v14, v15, v10, v11, v7}, Lorg/eclipse/jdt/internal/core/nd/IndexExceptionBuilder;->addProblemAddress(Ljava/lang/String;JI)Lorg/eclipse/jdt/internal/core/nd/IndexExceptionBuilder;

    move-result-object v10

    invoke-virtual {v10, v6, v4, v5, v7}, Lorg/eclipse/jdt/internal/core/nd/IndexExceptionBuilder;->addProblemAddress(Ljava/lang/String;JI)Lorg/eclipse/jdt/internal/core/nd/IndexExceptionBuilder;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "The free space block ("

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " had an incorrect prev pointer to "

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ", but it should have been pointing to "

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Lorg/eclipse/jdt/internal/core/nd/IndexExceptionBuilder;->build(Ljava/lang/String;)Lorg/eclipse/jdt/internal/core/nd/db/IndexException;

    move-result-object v0

    throw v0
.end method

.method private validateFreeSpaceLists()V
    .locals 2

    const/4 v0, 0x2

    :goto_0
    sget v1, Lorg/eclipse/jdt/internal/core/nd/db/Database;->MAX_BLOCK_DELTAS:I

    if-le v0, v1, :cond_0

    return-void

    :cond_0
    invoke-direct {p0, v0}, Lorg/eclipse/jdt/internal/core/nd/db/Database;->validateFreeBlocksFor(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private validateFreeSpaceNode(Ljava/util/Set;II)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;II)V"
        }
    .end annotation

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "Chunk "

    if-nez v0, :cond_4

    int-to-long v2, p2

    const-wide/16 v4, 0x1000

    mul-long/2addr v2, v4

    sget v0, Lorg/eclipse/jdt/internal/core/nd/db/LargeBlock;->PARENT_OFFSET:I

    int-to-long v4, v0

    add-long/2addr v4, v2

    invoke-virtual {p0, v4, v5}, Lorg/eclipse/jdt/internal/core/nd/db/Database;->getInt(J)I

    move-result v4

    const/4 v5, 0x4

    if-ne v4, p3, :cond_3

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-interface {p1, p3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    invoke-direct {p0, p2}, Lorg/eclipse/jdt/internal/core/nd/db/Database;->getBlockHeaderForChunkNum(I)I

    move-result p3

    const/4 v0, 0x0

    :goto_0
    const/16 v4, 0x20

    if-lt v0, v4, :cond_0

    return-void

    :cond_0
    sget v4, Lorg/eclipse/jdt/internal/core/nd/db/LargeBlock;->CHILD_TABLE_OFFSET:I

    int-to-long v6, v4

    add-long/2addr v6, v2

    mul-int/lit8 v4, v0, 0x4

    int-to-long v8, v4

    add-long/2addr v6, v8

    invoke-virtual {p0, v6, v7}, Lorg/eclipse/jdt/internal/core/nd/db/Database;->getInt(J)I

    move-result v4

    if-nez v4, :cond_1

    goto :goto_1

    :cond_1
    invoke-direct {p0, v4}, Lorg/eclipse/jdt/internal/core/nd/db/Database;->getBlockHeaderForChunkNum(I)I

    move-result v8

    xor-int v9, v8, p3

    invoke-static {v9}, Ljava/lang/Integer;->highestOneBit(I)I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->numberOfLeadingZeros(I)I

    move-result v9

    rsub-int/lit8 v9, v9, 0x1f

    if-ne v9, v0, :cond_2

    :try_start_0
    invoke-direct {p0, p1, v4, p2}, Lorg/eclipse/jdt/internal/core/nd/db/Database;->validateFreeSpaceNode(Ljava/util/Set;II)V
    :try_end_0
    .catch Lorg/eclipse/jdt/internal/core/nd/db/IndexException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/nd/db/Database;->describeProblem()Lorg/eclipse/jdt/internal/core/nd/IndexExceptionBuilder;

    move-result-object p3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "child pointer from parent "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2, v6, v7, v5}, Lorg/eclipse/jdt/internal/core/nd/IndexExceptionBuilder;->addProblemAddress(Ljava/lang/String;JI)Lorg/eclipse/jdt/internal/core/nd/IndexExceptionBuilder;

    move-result-object p2

    invoke-virtual {p2, p1}, Lorg/eclipse/jdt/internal/core/nd/IndexExceptionBuilder;->attachTo(Lorg/eclipse/jdt/internal/core/nd/db/IndexException;)V

    throw p1

    :cond_2
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/nd/db/Database;->describeProblem()Lorg/eclipse/jdt/internal/core/nd/IndexExceptionBuilder;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Lorg/eclipse/jdt/internal/core/nd/db/Database;->attachBlockHeaderForChunkNum(Lorg/eclipse/jdt/internal/core/nd/IndexExceptionBuilder;I)V

    invoke-direct {p0, p1, v4}, Lorg/eclipse/jdt/internal/core/nd/db/Database;->attachBlockHeaderForChunkNum(Lorg/eclipse/jdt/internal/core/nd/IndexExceptionBuilder;I)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " contained an incorrect size of "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ". It was at position "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " in parent "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " which had size "

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/eclipse/jdt/internal/core/nd/IndexExceptionBuilder;->build(Ljava/lang/String;)Lorg/eclipse/jdt/internal/core/nd/db/IndexException;

    move-result-object p1

    throw p1

    :cond_3
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/nd/db/Database;->describeProblem()Lorg/eclipse/jdt/internal/core/nd/IndexExceptionBuilder;

    move-result-object p1

    int-to-long v6, v0

    add-long/2addr v2, v6

    const-string v0, "parent pointer"

    invoke-virtual {p1, v0, v2, v3, v5}, Lorg/eclipse/jdt/internal/core/nd/IndexExceptionBuilder;->addProblemAddress(Ljava/lang/String;JI)Lorg/eclipse/jdt/internal/core/nd/IndexExceptionBuilder;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " has the wrong parent. Expected "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " but found  "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/eclipse/jdt/internal/core/nd/IndexExceptionBuilder;->build(Ljava/lang/String;)Lorg/eclipse/jdt/internal/core/nd/db/IndexException;

    move-result-object p1

    throw p1

    :cond_4
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/nd/db/Database;->describeProblem()Lorg/eclipse/jdt/internal/core/nd/IndexExceptionBuilder;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, "(parent = "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " appeared twice in the free space tree"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/eclipse/jdt/internal/core/nd/IndexExceptionBuilder;->build(Ljava/lang/String;)Lorg/eclipse/jdt/internal/core/nd/db/IndexException;

    move-result-object p1

    throw p1
.end method

.method private validateFreeSpaceTries()V
    .locals 3

    const-wide/16 v0, 0x800

    invoke-virtual {p0, v0, v1}, Lorg/eclipse/jdt/internal/core/nd/db/Database;->getInt(J)I

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    const/4 v2, 0x0

    invoke-direct {p0, v1, v0, v2}, Lorg/eclipse/jdt/internal/core/nd/db/Database;->validateFreeSpaceNode(Ljava/util/Set;II)V

    return-void
.end method

.method private verifyNotInFreeSpaceList(J)V
    .locals 9

    const/4 v0, 0x2

    :goto_0
    sget v1, Lorg/eclipse/jdt/internal/core/nd/db/Database;->MAX_BLOCK_DELTAS:I

    const-string v2, "Block "

    if-le v0, v1, :cond_2

    const-wide/16 v0, 0x800

    invoke-virtual {p0, v0, v1}, Lorg/eclipse/jdt/internal/core/nd/db/Database;->getInt(J)I

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-wide/16 v3, 0x1000

    div-long v3, p1, v3

    long-to-int v1, v3

    if-eq v0, v1, :cond_1

    const/4 p1, 0x0

    invoke-direct {p0, v1, v0, p1}, Lorg/eclipse/jdt/internal/core/nd/db/Database;->verifyNotInLargeBlockFreeSpaceTrie(III)V

    return-void

    :cond_1
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/nd/db/Database;->describeProblem()Lorg/eclipse/jdt/internal/core/nd/IndexExceptionBuilder;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, " was not supposed to be in the free space list, but was linked as the root of the list"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/eclipse/jdt/internal/core/nd/IndexExceptionBuilder;->build(Ljava/lang/String;)Lorg/eclipse/jdt/internal/core/nd/db/IndexException;

    move-result-object p1

    throw p1

    :cond_2
    mul-int/lit8 v1, v0, 0x8

    invoke-direct {p0, v1}, Lorg/eclipse/jdt/internal/core/nd/db/Database;->getFirstBlock(I)J

    move-result-wide v3

    invoke-direct {p0, v1}, Lorg/eclipse/jdt/internal/core/nd/db/Database;->getAddressOfFirstBlockPointer(I)J

    move-result-wide v5

    :goto_1
    const-wide/16 v7, 0x0

    cmp-long v1, v3, v7

    if-nez v1, :cond_3

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    cmp-long v1, v3, p1

    if-eqz v1, :cond_4

    const-wide/16 v5, 0x6

    add-long/2addr v5, v3

    invoke-direct {p0, v5, v6}, Lorg/eclipse/jdt/internal/core/nd/db/Database;->getFreeRecPtr(J)J

    move-result-wide v3

    goto :goto_1

    :cond_4
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/nd/db/Database;->describeProblem()Lorg/eclipse/jdt/internal/core/nd/IndexExceptionBuilder;

    move-result-object v0

    const-string v1, "incoming pointer"

    const/4 v3, 0x4

    invoke-virtual {v0, v1, v5, v6, v3}, Lorg/eclipse/jdt/internal/core/nd/IndexExceptionBuilder;->addProblemAddress(Ljava/lang/String;JI)Lorg/eclipse/jdt/internal/core/nd/IndexExceptionBuilder;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, " was found in the free space list, even though it wasn\'t free"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/eclipse/jdt/internal/core/nd/IndexExceptionBuilder;->build(Ljava/lang/String;)Lorg/eclipse/jdt/internal/core/nd/db/IndexException;

    move-result-object p1

    throw p1
.end method

.method private verifyNotInLargeBlockFreeSpaceTrie(III)V
    .locals 6

    int-to-long v0, p2

    const-wide/16 v2, 0x1000

    mul-long/2addr v0, v2

    const/4 p3, 0x0

    :goto_0
    const/16 v2, 0x20

    if-lt p3, v2, :cond_0

    return-void

    :cond_0
    sget v2, Lorg/eclipse/jdt/internal/core/nd/db/LargeBlock;->CHILD_TABLE_OFFSET:I

    int-to-long v2, v2

    add-long/2addr v2, v0

    mul-int/lit8 v4, p3, 0x4

    int-to-long v4, v4

    add-long/2addr v2, v4

    invoke-virtual {p0, v2, v3}, Lorg/eclipse/jdt/internal/core/nd/db/Database;->getInt(J)I

    move-result v4

    if-nez v4, :cond_1

    goto :goto_1

    :cond_1
    if-eq v4, p1, :cond_2

    invoke-direct {p0, p1, v4, p2}, Lorg/eclipse/jdt/internal/core/nd/db/Database;->verifyNotInLargeBlockFreeSpaceTrie(III)V

    :goto_1
    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/nd/db/Database;->describeProblem()Lorg/eclipse/jdt/internal/core/nd/IndexExceptionBuilder;

    move-result-object p1

    const-string p2, "trie child address"

    const/4 p3, 0x4

    invoke-virtual {p1, p2, v2, v3, p3}, Lorg/eclipse/jdt/internal/core/nd/IndexExceptionBuilder;->addProblemAddress(Ljava/lang/String;JI)Lorg/eclipse/jdt/internal/core/nd/IndexExceptionBuilder;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "Chunk number "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, " was found in the free space trie even though it was in use"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/eclipse/jdt/internal/core/nd/IndexExceptionBuilder;->build(Ljava/lang/String;)Lorg/eclipse/jdt/internal/core/nd/db/IndexException;

    move-result-object p1

    throw p1
.end method


# virtual methods
.method public assertLocked()V
    .locals 2

    iget-boolean v0, p0, Lorg/eclipse/jdt/internal/core/nd/db/Database;->fLocked:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Database not locked!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public checkIfChunkReleased(Lorg/eclipse/jdt/internal/core/nd/db/Chunk;)V
    .locals 3

    iget-boolean v0, p1, Lorg/eclipse/jdt/internal/core/nd/db/Chunk;->fDirty:Z

    if-nez v0, :cond_1

    iget v0, p1, Lorg/eclipse/jdt/internal/core/nd/db/Chunk;->fCacheIndex:I

    if-gez v0, :cond_1

    sget-boolean v0, Lorg/eclipse/jdt/internal/core/nd/db/Database;->DEBUG_PAGE_CACHE:Z

    if-eqz v0, :cond_0

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "CHUNK "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p1, Lorg/eclipse/jdt/internal/core/nd/db/Chunk;->fSequenceNumber:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ": removing from vector in releaseChunk - instance "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/nd/db/Database;->fChunks:[Lorg/eclipse/jdt/internal/core/nd/db/Chunk;

    iget p1, p1, Lorg/eclipse/jdt/internal/core/nd/db/Chunk;->fSequenceNumber:I

    const/4 v1, 0x0

    aput-object v1, v0, p1

    :cond_1
    return-void
.end method

.method public chunkCleaned(Lorg/eclipse/jdt/internal/core/nd/db/Chunk;)V
    .locals 2

    iget v0, p1, Lorg/eclipse/jdt/internal/core/nd/db/Chunk;->fSequenceNumber:I

    const/4 v1, 0x1

    if-ge v0, v1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/nd/db/Database;->dirtyChunkSet:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/internal/core/nd/db/Database;->checkIfChunkReleased(Lorg/eclipse/jdt/internal/core/nd/db/Chunk;)V

    return-void
.end method

.method public chunkDirtied(Lorg/eclipse/jdt/internal/core/nd/db/Chunk;)V
    .locals 2

    iget v0, p1, Lorg/eclipse/jdt/internal/core/nd/db/Chunk;->fSequenceNumber:I

    const/4 v1, 0x1

    if-ge v0, v1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/nd/db/Database;->dirtyChunkSet:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public clear(I)Z
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/internal/core/nd/db/IndexException;
        }
    .end annotation

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/core/nd/db/Database;->removeChunksFromCache()V

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/nd/db/Database;->log:Lorg/eclipse/jdt/internal/core/nd/db/ModificationLog;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/core/nd/db/ModificationLog;->clear()V

    iput p1, p0, Lorg/eclipse/jdt/internal/core/nd/db/Database;->fVersion:I

    iget-object p1, p0, Lorg/eclipse/jdt/internal/core/nd/db/Database;->fHeaderChunk:Lorg/eclipse/jdt/internal/core/nd/db/Chunk;

    const/16 v0, 0x1000

    const-wide/16 v1, 0x0

    invoke-virtual {p1, v1, v2, v0}, Lorg/eclipse/jdt/internal/core/nd/db/Chunk;->clear(JI)V

    const/4 p1, 0x1

    new-array v0, p1, [Lorg/eclipse/jdt/internal/core/nd/db/Chunk;

    iput-object v0, p0, Lorg/eclipse/jdt/internal/core/nd/db/Database;->fChunks:[Lorg/eclipse/jdt/internal/core/nd/db/Chunk;

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/nd/db/Database;->dirtyChunkSet:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/nd/db/Database;->fChunks:[Lorg/eclipse/jdt/internal/core/nd/db/Chunk;

    array-length v0, v0

    iput v0, p0, Lorg/eclipse/jdt/internal/core/nd/db/Database;->fChunksUsed:I

    const/4 v0, 0x0

    :try_start_0
    iget-object v3, p0, Lorg/eclipse/jdt/internal/core/nd/db/Database;->fHeaderChunk:Lorg/eclipse/jdt/internal/core/nd/db/Chunk;

    invoke-virtual {v3}, Lorg/eclipse/jdt/internal/core/nd/db/Chunk;->flush()Z

    move-result v3
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    new-instance v4, Lorg/eclipse/jdt/internal/core/nd/db/c;

    invoke-direct {v4, p0}, Lorg/eclipse/jdt/internal/core/nd/db/c;-><init>(Lorg/eclipse/jdt/internal/core/nd/db/Database;)V

    invoke-direct {p0, v4}, Lorg/eclipse/jdt/internal/core/nd/db/Database;->performUninterruptableWrite(Lorg/eclipse/jdt/internal/core/nd/db/Database$IORunnable;)Z

    move-result v4

    if-nez v4, :cond_0

    if-nez v3, :cond_0

    move v3, v0

    goto :goto_0

    :cond_0
    move v3, p1

    :goto_0
    iget-wide v4, p0, Lorg/eclipse/jdt/internal/core/nd/db/Database;->bytesWritten:J

    const-wide/16 v6, 0x1000

    add-long/2addr v4, v6

    iput-wide v4, p0, Lorg/eclipse/jdt/internal/core/nd/db/Database;->bytesWritten:J
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :catch_0
    move-exception v4

    goto :goto_1

    :catch_1
    move-exception v4

    move v3, v0

    :goto_1
    invoke-static {v4}, Lorg/eclipse/jdt/internal/core/nd/db/Package;->log(Ljava/lang/Throwable;)V

    :goto_2
    iput-wide v1, p0, Lorg/eclipse/jdt/internal/core/nd/db/Database;->freed:J

    iput-wide v1, p0, Lorg/eclipse/jdt/internal/core/nd/db/Database;->malloced:J

    const-string v4, "org.eclipse.jdt.core.parser.nd.chunks"

    invoke-static {v4, v1, v2}, Ljava/lang/Long;->getLong(Ljava/lang/String;J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    cmp-long v1, v4, v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/nd/db/Database;->getVersion()I

    move-result v1

    invoke-virtual {p0, v1}, Lorg/eclipse/jdt/internal/core/nd/db/Database;->setVersion(I)V

    long-to-int v1, v4

    invoke-direct {p0, v1}, Lorg/eclipse/jdt/internal/core/nd/db/Database;->createNewChunks(I)I

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/nd/db/Database;->flush()Z

    move-result v1

    if-nez v1, :cond_1

    if-nez v3, :cond_1

    move p1, v0

    :cond_1
    move v3, p1

    :cond_2
    iget-object p1, p0, Lorg/eclipse/jdt/internal/core/nd/db/Database;->memoryUsage:Lorg/eclipse/jdt/internal/core/nd/db/MemoryStats;

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/core/nd/db/MemoryStats;->refresh()V

    iget-object p1, p0, Lorg/eclipse/jdt/internal/core/nd/db/Database;->fHeaderChunk:Lorg/eclipse/jdt/internal/core/nd/db/Chunk;

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/core/nd/db/Chunk;->makeDirty()V

    return v3
.end method

.method public clearBytes(JI)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/internal/core/nd/db/IndexException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lorg/eclipse/jdt/internal/core/nd/db/Database;->getChunk(J)Lorg/eclipse/jdt/internal/core/nd/db/Chunk;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lorg/eclipse/jdt/internal/core/nd/db/Chunk;->clear(JI)V

    return-void
.end method

.method public clearRange(JJ)V
    .locals 6

    const-wide/16 v0, 0x0

    cmp-long v2, p3, v0

    if-nez v2, :cond_0

    return-void

    :cond_0
    const-wide/16 v2, 0x1000

    div-long v4, p1, v2

    long-to-int v4, v4

    add-int/lit8 v4, v4, 0x1

    int-to-long v4, v4

    mul-long/2addr v4, v2

    sub-long/2addr v4, p1

    invoke-static {v4, v5, p3, p4}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    long-to-int v4, v4

    invoke-virtual {p0, p1, p2}, Lorg/eclipse/jdt/internal/core/nd/db/Database;->getChunk(J)Lorg/eclipse/jdt/internal/core/nd/db/Chunk;

    move-result-object v5

    invoke-virtual {v5, p1, p2, v4}, Lorg/eclipse/jdt/internal/core/nd/db/Chunk;->clear(JI)V

    int-to-long v4, v4

    add-long/2addr p1, v4

    sub-long/2addr p3, v4

    :goto_0
    cmp-long v4, p3, v2

    if-gtz v4, :cond_2

    cmp-long v0, p3, v0

    if-lez v0, :cond_1

    invoke-virtual {p0, p1, p2}, Lorg/eclipse/jdt/internal/core/nd/db/Database;->getChunk(J)Lorg/eclipse/jdt/internal/core/nd/db/Chunk;

    move-result-object v0

    long-to-int p3, p3

    invoke-virtual {v0, p1, p2, p3}, Lorg/eclipse/jdt/internal/core/nd/db/Chunk;->clear(JI)V

    :cond_1
    return-void

    :cond_2
    invoke-virtual {p0, p1, p2}, Lorg/eclipse/jdt/internal/core/nd/db/Database;->getChunk(J)Lorg/eclipse/jdt/internal/core/nd/db/Chunk;

    move-result-object v4

    const/16 v5, 0x1000

    invoke-virtual {v4, p1, p2, v5}, Lorg/eclipse/jdt/internal/core/nd/db/Chunk;->clear(JI)V

    add-long/2addr p1, v2

    sub-long/2addr p3, v2

    goto :goto_0
.end method

.method public close()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/internal/core/nd/db/IndexException;
        }
    .end annotation

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/nd/db/Database;->flush()Z

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/core/nd/db/Database;->removeChunksFromCache()V

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/nd/db/Database;->log:Lorg/eclipse/jdt/internal/core/nd/db/ModificationLog;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/core/nd/db/ModificationLog;->clear()V

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/nd/db/Database;->fHeaderChunk:Lorg/eclipse/jdt/internal/core/nd/db/Chunk;

    const-wide/16 v1, 0x0

    const/16 v3, 0x1000

    invoke-virtual {v0, v1, v2, v3}, Lorg/eclipse/jdt/internal/core/nd/db/Chunk;->clear(JI)V

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/nd/db/Database;->memoryUsage:Lorg/eclipse/jdt/internal/core/nd/db/MemoryStats;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/core/nd/db/MemoryStats;->refresh()V

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/nd/db/Database;->fHeaderChunk:Lorg/eclipse/jdt/internal/core/nd/db/Chunk;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lorg/eclipse/jdt/internal/core/nd/db/Chunk;->fDirty:Z

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/nd/db/Database;->dirtyChunkSet:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    const/4 v0, 0x1

    new-array v0, v0, [Lorg/eclipse/jdt/internal/core/nd/db/Chunk;

    iput-object v0, p0, Lorg/eclipse/jdt/internal/core/nd/db/Database;->fChunks:[Lorg/eclipse/jdt/internal/core/nd/db/Chunk;

    array-length v0, v0

    iput v0, p0, Lorg/eclipse/jdt/internal/core/nd/db/Database;->fChunksUsed:I

    :try_start_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/nd/db/Database;->fFile:Ljava/io/RandomAccessFile;

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V
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

.method public describeProblem()Lorg/eclipse/jdt/internal/core/nd/IndexExceptionBuilder;
    .locals 1

    new-instance v0, Lorg/eclipse/jdt/internal/core/nd/IndexExceptionBuilder;

    invoke-direct {v0, p0}, Lorg/eclipse/jdt/internal/core/nd/IndexExceptionBuilder;-><init>(Lorg/eclipse/jdt/internal/core/nd/db/Database;)V

    return-object v0
.end method

.method public flush()Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/internal/core/nd/db/IndexException;
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/nd/db/Database;->fCache:Lorg/eclipse/jdt/internal/core/nd/db/ChunkCache;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lorg/eclipse/jdt/internal/core/nd/db/Database;->dirtyChunkSet:Ljava/util/HashSet;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-direct {p0, v0}, Lorg/eclipse/jdt/internal/core/nd/db/Database;->sortBySequenceNumber(Ljava/util/ArrayList;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const/4 v3, 0x1

    invoke-direct {p0, v0, v3}, Lorg/eclipse/jdt/internal/core/nd/db/Database;->flushAndUnlockChunks(Ljava/util/ArrayList;Z)Z

    move-result v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long/2addr v3, v1

    iget-wide v1, p0, Lorg/eclipse/jdt/internal/core/nd/db/Database;->totalFlushTime:J

    add-long/2addr v1, v3

    iput-wide v1, p0, Lorg/eclipse/jdt/internal/core/nd/db/Database;->totalFlushTime:J

    return v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public free(JS)V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/internal/core/nd/db/IndexException;
        }
    .end annotation

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/nd/db/Database;->getLog()Lorg/eclipse/jdt/internal/core/nd/db/ModificationLog;

    move-result-object v0

    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/nd/db/Database;->freeTag:Lorg/eclipse/jdt/internal/core/nd/db/ModificationLog$Tag;

    invoke-virtual {v0, v1}, Lorg/eclipse/jdt/internal/core/nd/db/ModificationLog;->start(Lorg/eclipse/jdt/internal/core/nd/db/ModificationLog$Tag;)V

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-nez v2, :cond_0

    :goto_0
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/nd/db/Database;->getLog()Lorg/eclipse/jdt/internal/core/nd/db/ModificationLog;

    move-result-object p1

    iget-object p2, p0, Lorg/eclipse/jdt/internal/core/nd/db/Database;->freeTag:Lorg/eclipse/jdt/internal/core/nd/db/ModificationLog$Tag;

    invoke-virtual {p1, p2}, Lorg/eclipse/jdt/internal/core/nd/db/ModificationLog;->end(Lorg/eclipse/jdt/internal/core/nd/db/ModificationLog$Tag;)V

    return-void

    :cond_0
    const-wide/16 v2, 0x2

    sub-long v4, p1, v2

    :try_start_0
    invoke-virtual {p0, v4, v5}, Lorg/eclipse/jdt/internal/core/nd/db/Database;->getChunk(J)Lorg/eclipse/jdt/internal/core/nd/db/Chunk;

    move-result-object v6

    invoke-virtual {v6, v4, v5}, Lorg/eclipse/jdt/internal/core/nd/db/Chunk;->getShort(J)S

    move-result v7

    neg-int v7, v7

    int-to-long v7, v7

    cmp-long v0, v7, v0

    const-wide/16 v9, 0x1000

    if-nez v0, :cond_3

    div-long v0, p1, v9

    long-to-int v0, v0

    invoke-direct {p0, v0}, Lorg/eclipse/jdt/internal/core/nd/db/Database;->getBlockHeaderForChunkNum(I)I

    move-result v1

    neg-int v1, v1

    if-gez v1, :cond_2

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/nd/db/Database;->describeProblem()Lorg/eclipse/jdt/internal/core/nd/IndexExceptionBuilder;

    move-result-object p3

    iget v1, p0, Lorg/eclipse/jdt/internal/core/nd/db/Database;->fChunksUsed:I

    if-ge v0, v1, :cond_1

    const-string v1, "block header"

    int-to-long v2, v0

    mul-long/2addr v2, v9

    const/4 v0, 0x4

    invoke-virtual {p3, v1, v2, v3, v0}, Lorg/eclipse/jdt/internal/core/nd/IndexExceptionBuilder;->addProblemAddress(Ljava/lang/String;JI)Lorg/eclipse/jdt/internal/core/nd/IndexExceptionBuilder;

    goto :goto_1

    :catchall_0
    move-exception p1

    goto/16 :goto_3

    :cond_1
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Already freed large block "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Lorg/eclipse/jdt/internal/core/nd/IndexExceptionBuilder;->build(Ljava/lang/String;)Lorg/eclipse/jdt/internal/core/nd/db/IndexException;

    move-result-object p1

    throw p1

    :cond_2
    int-to-long v4, v1

    mul-long v7, v4, v9

    iget-object v4, p0, Lorg/eclipse/jdt/internal/core/nd/db/Database;->log:Lorg/eclipse/jdt/internal/core/nd/db/ModificationLog;

    sub-long v2, v7, v2

    long-to-int v2, v2

    invoke-virtual {v4, p1, p2, v2}, Lorg/eclipse/jdt/internal/core/nd/db/ModificationLog;->recordFree(JI)V

    invoke-direct {p0, v0, v1}, Lorg/eclipse/jdt/internal/core/nd/db/Database;->freeLargeChunk(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :cond_3
    const/4 v1, 0x2

    const-string v11, "block size"

    if-ltz v0, :cond_6

    :try_start_1
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/nd/db/Database;->log:Lorg/eclipse/jdt/internal/core/nd/db/ModificationLog;

    sub-long v2, v7, v2

    long-to-int v2, v2

    invoke-virtual {v0, p1, p2, v2}, Lorg/eclipse/jdt/internal/core/nd/db/ModificationLog;->recordFree(JI)V

    invoke-static {p1, p2}, Lorg/eclipse/jdt/internal/core/nd/db/Chunk;->recPtrToIndex(J)I

    move-result v0

    int-to-long v2, v0

    add-long/2addr v2, v7

    cmp-long v2, v2, v9

    if-gtz v2, :cond_5

    long-to-int p1, v7

    invoke-direct {p0, v6, p1, v4, v5}, Lorg/eclipse/jdt/internal/core/nd/db/Database;->addBlock(Lorg/eclipse/jdt/internal/core/nd/db/Chunk;IJ)V

    :goto_2
    sget-boolean p1, Lorg/eclipse/jdt/internal/core/nd/db/Database;->DEBUG_FREE_SPACE:Z

    if-eqz p1, :cond_4

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/core/nd/db/Database;->periodicValidateFreeSpace()Z

    :cond_4
    iget-wide p1, p0, Lorg/eclipse/jdt/internal/core/nd/db/Database;->freed:J

    add-long/2addr p1, v7

    iput-wide p1, p0, Lorg/eclipse/jdt/internal/core/nd/db/Database;->freed:J

    iget-object p1, p0, Lorg/eclipse/jdt/internal/core/nd/db/Database;->memoryUsage:Lorg/eclipse/jdt/internal/core/nd/db/MemoryStats;

    invoke-virtual {p1, p3, v7, v8}, Lorg/eclipse/jdt/internal/core/nd/db/MemoryStats;->recordFree(SJ)V

    goto/16 :goto_0

    :cond_5
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/nd/db/Database;->describeProblem()Lorg/eclipse/jdt/internal/core/nd/IndexExceptionBuilder;

    move-result-object p3

    invoke-virtual {p3, v11, v4, v5, v1}, Lorg/eclipse/jdt/internal/core/nd/IndexExceptionBuilder;->addProblemAddress(Ljava/lang/String;JI)Lorg/eclipse/jdt/internal/core/nd/IndexExceptionBuilder;

    move-result-object p3

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Attempting to free chunk of impossible size. The block at address "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, " in chunk "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, v6, Lorg/eclipse/jdt/internal/core/nd/db/Chunk;->fSequenceNumber:I

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " offset "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " can\'t be as large as "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, " bytes since that would make it extend beyond the end of the chunk"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Lorg/eclipse/jdt/internal/core/nd/IndexExceptionBuilder;->build(Ljava/lang/String;)Lorg/eclipse/jdt/internal/core/nd/db/IndexException;

    move-result-object p1

    throw p1

    :cond_6
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/nd/db/Database;->describeProblem()Lorg/eclipse/jdt/internal/core/nd/IndexExceptionBuilder;

    move-result-object p3

    invoke-virtual {p3, v11, v4, v5, v1}, Lorg/eclipse/jdt/internal/core/nd/IndexExceptionBuilder;->addProblemAddress(Ljava/lang/String;JI)Lorg/eclipse/jdt/internal/core/nd/IndexExceptionBuilder;

    move-result-object p3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Already freed record "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Lorg/eclipse/jdt/internal/core/nd/IndexExceptionBuilder;->build(Ljava/lang/String;)Lorg/eclipse/jdt/internal/core/nd/db/IndexException;

    move-result-object p1

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_3
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/nd/db/Database;->getLog()Lorg/eclipse/jdt/internal/core/nd/db/ModificationLog;

    move-result-object p2

    iget-object p3, p0, Lorg/eclipse/jdt/internal/core/nd/db/Database;->freeTag:Lorg/eclipse/jdt/internal/core/nd/db/ModificationLog$Tag;

    invoke-virtual {p2, p3}, Lorg/eclipse/jdt/internal/core/nd/db/ModificationLog;->end(Lorg/eclipse/jdt/internal/core/nd/db/ModificationLog$Tag;)V

    throw p1
.end method

.method public get3ByteUnsignedInt(J)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/internal/core/nd/db/IndexException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lorg/eclipse/jdt/internal/core/nd/db/Database;->getChunk(J)Lorg/eclipse/jdt/internal/core/nd/db/Chunk;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lorg/eclipse/jdt/internal/core/nd/db/Chunk;->get3ByteUnsignedInt(J)I

    move-result p1

    return p1
.end method

.method public getAverageReadBytesPerMs()D
    .locals 6

    iget-wide v0, p0, Lorg/eclipse/jdt/internal/core/nd/db/Database;->cacheMisses:J

    iget-wide v2, p0, Lorg/eclipse/jdt/internal/core/nd/db/Database;->totalReadTimeMs:J

    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-nez v4, :cond_0

    const-wide/16 v0, 0x0

    return-wide v0

    :cond_0
    const-wide/16 v4, 0x1000

    mul-long/2addr v0, v4

    long-to-double v0, v0

    long-to-double v2, v2

    div-double/2addr v0, v2

    return-wide v0
.end method

.method public getAverageWriteBytesPerMs()D
    .locals 4

    iget-wide v0, p0, Lorg/eclipse/jdt/internal/core/nd/db/Database;->totalWriteTimeMs:J

    iget-wide v2, p0, Lorg/eclipse/jdt/internal/core/nd/db/Database;->pageWritesBytes:J

    long-to-double v2, v2

    long-to-double v0, v0

    div-double/2addr v2, v0

    return-wide v2
.end method

.method public getByte(J)B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/internal/core/nd/db/IndexException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lorg/eclipse/jdt/internal/core/nd/db/Database;->getChunk(J)Lorg/eclipse/jdt/internal/core/nd/db/Chunk;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lorg/eclipse/jdt/internal/core/nd/db/Chunk;->getByte(J)B

    move-result p1

    return p1
.end method

.method public getBytes(J[B)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/internal/core/nd/db/IndexException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2}, Lorg/eclipse/jdt/internal/core/nd/db/Database;->getChunk(J)Lorg/eclipse/jdt/internal/core/nd/db/Chunk;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lorg/eclipse/jdt/internal/core/nd/db/Chunk;->get(J[B)V

    return-void
.end method

.method public getBytes(J[BII)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/internal/core/nd/db/IndexException;
        }
    .end annotation

    .line 2
    invoke-virtual {p0, p1, p2}, Lorg/eclipse/jdt/internal/core/nd/db/Database;->getChunk(J)Lorg/eclipse/jdt/internal/core/nd/db/Chunk;

    move-result-object v0

    move-wide v1, p1

    move-object v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lorg/eclipse/jdt/internal/core/nd/db/Chunk;->get(J[BII)V

    return-void
.end method

.method public getBytesAllocated()J
    .locals 2

    iget-wide v0, p0, Lorg/eclipse/jdt/internal/core/nd/db/Database;->malloced:J

    return-wide v0
.end method

.method public getBytesFreed()J
    .locals 2

    iget-wide v0, p0, Lorg/eclipse/jdt/internal/core/nd/db/Database;->freed:J

    return-wide v0
.end method

.method public getBytesRead()J
    .locals 4

    iget-wide v0, p0, Lorg/eclipse/jdt/internal/core/nd/db/Database;->cacheMisses:J

    const-wide/16 v2, 0x1000

    mul-long/2addr v0, v2

    return-wide v0
.end method

.method public getBytesWritten()J
    .locals 2

    iget-wide v0, p0, Lorg/eclipse/jdt/internal/core/nd/db/Database;->bytesWritten:J

    return-wide v0
.end method

.method public getCache()Lorg/eclipse/jdt/internal/core/nd/db/ChunkCache;
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/nd/db/Database;->fCache:Lorg/eclipse/jdt/internal/core/nd/db/ChunkCache;

    return-object v0
.end method

.method public getCacheHits()J
    .locals 2

    iget-wide v0, p0, Lorg/eclipse/jdt/internal/core/nd/db/Database;->cacheHits:J

    return-wide v0
.end method

.method public getCacheMisses()J
    .locals 2

    iget-wide v0, p0, Lorg/eclipse/jdt/internal/core/nd/db/Database;->cacheMisses:J

    return-wide v0
.end method

.method public getChar(J)C
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/internal/core/nd/db/IndexException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lorg/eclipse/jdt/internal/core/nd/db/Database;->getChunk(J)Lorg/eclipse/jdt/internal/core/nd/db/Chunk;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lorg/eclipse/jdt/internal/core/nd/db/Chunk;->getChar(J)C

    move-result p1

    return p1
.end method

.method public getChunk(J)Lorg/eclipse/jdt/internal/core/nd/db/Chunk;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/internal/core/nd/db/IndexException;
        }
    .end annotation

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/nd/db/Database;->assertLocked()V

    const-wide/16 v0, 0x1000

    cmp-long v2, p1, v0

    if-gez v2, :cond_0

    iget-object p1, p0, Lorg/eclipse/jdt/internal/core/nd/db/Database;->fHeaderChunk:Lorg/eclipse/jdt/internal/core/nd/db/Chunk;

    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/nd/db/Database;->fMostRecentlyFetchedChunk:Lorg/eclipse/jdt/internal/core/nd/db/Chunk;

    return-object p1

    :cond_0
    div-long/2addr p1, v0

    long-to-int p1, p1

    iget-object p2, p0, Lorg/eclipse/jdt/internal/core/nd/db/Database;->fCache:Lorg/eclipse/jdt/internal/core/nd/db/ChunkCache;

    monitor-enter p2

    if-ltz p1, :cond_1

    :try_start_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/nd/db/Database;->fChunks:[Lorg/eclipse/jdt/internal/core/nd/db/Chunk;

    array-length v0, v0

    if-lt p1, v0, :cond_2

    goto :goto_0

    :catchall_0
    move-exception p1

    goto/16 :goto_6

    :cond_1
    :goto_0
    invoke-direct {p0}, Lorg/eclipse/jdt/internal/core/nd/db/Database;->databaseCorruptionDetected()V

    :cond_2
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/nd/db/Database;->fChunks:[Lorg/eclipse/jdt/internal/core/nd/db/Chunk;

    aget-object v0, v0, p1

    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_3

    const/4 p2, 0x1

    goto :goto_1

    :cond_3
    const/4 p2, 0x0

    :goto_1
    if-eqz p2, :cond_4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    new-instance v2, Lorg/eclipse/jdt/internal/core/nd/db/Chunk;

    invoke-direct {v2, p0, p1}, Lorg/eclipse/jdt/internal/core/nd/db/Chunk;-><init>(Lorg/eclipse/jdt/internal/core/nd/db/Database;I)V

    invoke-virtual {v2}, Lorg/eclipse/jdt/internal/core/nd/db/Chunk;->read()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    goto :goto_2

    :cond_4
    const-wide/16 v1, 0x0

    move-wide v3, v1

    move-object v2, v0

    move-wide v0, v3

    :goto_2
    iget-object v5, p0, Lorg/eclipse/jdt/internal/core/nd/db/Database;->fCache:Lorg/eclipse/jdt/internal/core/nd/db/ChunkCache;

    monitor-enter v5

    const-wide/16 v6, 0x1

    if-eqz p2, :cond_5

    :try_start_1
    iget-wide v8, p0, Lorg/eclipse/jdt/internal/core/nd/db/Database;->cacheMisses:J

    add-long/2addr v8, v6

    iput-wide v8, p0, Lorg/eclipse/jdt/internal/core/nd/db/Database;->cacheMisses:J

    iget-wide v6, p0, Lorg/eclipse/jdt/internal/core/nd/db/Database;->totalReadTimeMs:J

    sub-long/2addr v3, v0

    add-long/2addr v6, v3

    iput-wide v6, p0, Lorg/eclipse/jdt/internal/core/nd/db/Database;->totalReadTimeMs:J

    goto :goto_3

    :catchall_1
    move-exception p1

    goto :goto_5

    :cond_5
    iget-wide v0, p0, Lorg/eclipse/jdt/internal/core/nd/db/Database;->cacheHits:J

    add-long/2addr v0, v6

    iput-wide v0, p0, Lorg/eclipse/jdt/internal/core/nd/db/Database;->cacheHits:J

    :goto_3
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/nd/db/Database;->fChunks:[Lorg/eclipse/jdt/internal/core/nd/db/Chunk;

    aget-object v0, v0, p1

    if-eq v0, v2, :cond_7

    if-eqz v0, :cond_7

    sget-boolean p1, Lorg/eclipse/jdt/internal/core/nd/db/Database;->DEBUG_PAGE_CACHE:Z

    if-eqz p1, :cond_6

    sget-object p1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v1, "CHUNK "

    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, v2, Lorg/eclipse/jdt/internal/core/nd/db/Chunk;->fSequenceNumber:I

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ": already fetched by another thread - instance "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_6
    move-object v2, v0

    goto :goto_4

    :cond_7
    if-eqz p2, :cond_9

    sget-boolean p2, Lorg/eclipse/jdt/internal/core/nd/db/Database;->DEBUG_PAGE_CACHE:Z

    if-eqz p2, :cond_8

    sget-object p2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "CHUNK "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, v2, Lorg/eclipse/jdt/internal/core/nd/db/Chunk;->fSequenceNumber:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ": inserted into vector - instance "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_8
    iget-object p2, p0, Lorg/eclipse/jdt/internal/core/nd/db/Database;->fChunks:[Lorg/eclipse/jdt/internal/core/nd/db/Chunk;

    aput-object v2, p2, p1

    :cond_9
    :goto_4
    iget-object p1, p0, Lorg/eclipse/jdt/internal/core/nd/db/Database;->fCache:Lorg/eclipse/jdt/internal/core/nd/db/ChunkCache;

    invoke-virtual {p1, v2}, Lorg/eclipse/jdt/internal/core/nd/db/ChunkCache;->add(Lorg/eclipse/jdt/internal/core/nd/db/Chunk;)V

    iput-object v2, p0, Lorg/eclipse/jdt/internal/core/nd/db/Database;->fMostRecentlyFetchedChunk:Lorg/eclipse/jdt/internal/core/nd/db/Chunk;

    monitor-exit v5

    return-object v2

    :goto_5
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw p1

    :goto_6
    :try_start_2
    monitor-exit p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public getChunkCache()Lorg/eclipse/jdt/internal/core/nd/db/ChunkCache;
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/nd/db/Database;->fCache:Lorg/eclipse/jdt/internal/core/nd/db/ChunkCache;

    return-object v0
.end method

.method public getChunkCount()I
    .locals 1

    iget v0, p0, Lorg/eclipse/jdt/internal/core/nd/db/Database;->fChunksUsed:I

    return v0
.end method

.method public getChunkStats()Lorg/eclipse/jdt/internal/core/nd/db/Database$ChunkStats;
    .locals 9

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/nd/db/Database;->fCache:Lorg/eclipse/jdt/internal/core/nd/db/ChunkCache;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/nd/db/Database;->fChunks:[Lorg/eclipse/jdt/internal/core/nd/db/Chunk;

    array-length v2, v1

    const/4 v3, 0x0

    move v4, v3

    move v5, v4

    move v6, v5

    :goto_0
    if-lt v3, v2, :cond_0

    new-instance v1, Lorg/eclipse/jdt/internal/core/nd/db/Database$ChunkStats;

    iget-object v2, p0, Lorg/eclipse/jdt/internal/core/nd/db/Database;->fChunks:[Lorg/eclipse/jdt/internal/core/nd/db/Chunk;

    array-length v2, v2

    invoke-direct {v1, v2, v4, v5, v6}, Lorg/eclipse/jdt/internal/core/nd/db/Database$ChunkStats;-><init>(IIII)V

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    goto :goto_2

    :cond_0
    aget-object v7, v1, v3

    if-eqz v7, :cond_2

    add-int/lit8 v4, v4, 0x1

    iget-boolean v8, v7, Lorg/eclipse/jdt/internal/core/nd/db/Chunk;->fDirty:Z

    if-eqz v8, :cond_1

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_1
    iget v7, v7, Lorg/eclipse/jdt/internal/core/nd/db/Chunk;->fCacheIndex:I

    if-gez v7, :cond_2

    add-int/lit8 v6, v6, 0x1

    :cond_2
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getCumulativeFlushTimeMs()J
    .locals 2

    iget-wide v0, p0, Lorg/eclipse/jdt/internal/core/nd/db/Database;->totalFlushTime:J

    return-wide v0
.end method

.method public getDatabaseSize()J
    .locals 4

    iget v0, p0, Lorg/eclipse/jdt/internal/core/nd/db/Database;->fChunksUsed:I

    int-to-long v0, v0

    const-wide/16 v2, 0x1000

    mul-long/2addr v0, v2

    return-wide v0
.end method

.method public getDirtyChunkCount()I
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/nd/db/Database;->dirtyChunkSet:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->size()I

    move-result v0

    return v0
.end method

.method public getDouble(J)D
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/internal/core/nd/db/IndexException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lorg/eclipse/jdt/internal/core/nd/db/Database;->getChunk(J)Lorg/eclipse/jdt/internal/core/nd/db/Chunk;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lorg/eclipse/jdt/internal/core/nd/db/Chunk;->getDouble(J)D

    move-result-wide p1

    return-wide p1
.end method

.method public getFloat(J)F
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/internal/core/nd/db/IndexException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lorg/eclipse/jdt/internal/core/nd/db/Database;->getChunk(J)Lorg/eclipse/jdt/internal/core/nd/db/Chunk;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lorg/eclipse/jdt/internal/core/nd/db/Chunk;->getFloat(J)F

    move-result p1

    return p1
.end method

.method public getInt(J)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/internal/core/nd/db/IndexException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lorg/eclipse/jdt/internal/core/nd/db/Database;->getChunk(J)Lorg/eclipse/jdt/internal/core/nd/db/Chunk;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lorg/eclipse/jdt/internal/core/nd/db/Chunk;->getInt(J)I

    move-result p1

    return p1
.end method

.method public getLocation()Ljava/io/File;
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/nd/db/Database;->fLocation:Ljava/io/File;

    return-object v0
.end method

.method public getLog()Lorg/eclipse/jdt/internal/core/nd/db/ModificationLog;
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/nd/db/Database;->log:Lorg/eclipse/jdt/internal/core/nd/db/ModificationLog;

    return-object v0
.end method

.method public getLong(J)J
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/internal/core/nd/db/IndexException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lorg/eclipse/jdt/internal/core/nd/db/Database;->getChunk(J)Lorg/eclipse/jdt/internal/core/nd/db/Chunk;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lorg/eclipse/jdt/internal/core/nd/db/Chunk;->getLong(J)J

    move-result-wide p1

    return-wide p1
.end method

.method public getMemoryStats()Lorg/eclipse/jdt/internal/core/nd/db/MemoryStats;
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/nd/db/Database;->memoryUsage:Lorg/eclipse/jdt/internal/core/nd/db/MemoryStats;

    return-object v0
.end method

.method public getRecPtr(J)J
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/internal/core/nd/db/IndexException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2}, Lorg/eclipse/jdt/internal/core/nd/db/Database;->getChunk(J)Lorg/eclipse/jdt/internal/core/nd/db/Chunk;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lorg/eclipse/jdt/internal/core/nd/db/Chunk;->getRecPtr(J)J

    move-result-wide p1

    return-wide p1
.end method

.method public getShort(J)S
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/internal/core/nd/db/IndexException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lorg/eclipse/jdt/internal/core/nd/db/Database;->getChunk(J)Lorg/eclipse/jdt/internal/core/nd/db/Chunk;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lorg/eclipse/jdt/internal/core/nd/db/Chunk;->getShort(J)S

    move-result p1

    return p1
.end method

.method public getSizeBytes()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/nd/db/Database;->fFile:Ljava/io/RandomAccessFile;

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v0

    return-wide v0
.end method

.method public getString(J)Lorg/eclipse/jdt/internal/core/nd/db/IString;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/internal/core/nd/db/IndexException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lorg/eclipse/jdt/internal/core/nd/db/Database;->getInt(J)I

    move-result v0

    if-gez v0, :cond_0

    neg-int v0, v0

    goto :goto_0

    :cond_0
    mul-int/lit8 v0, v0, 0x2

    :goto_0
    sget v1, Lorg/eclipse/jdt/internal/core/nd/db/ShortString;->MAX_BYTE_LENGTH:I

    if-le v0, v1, :cond_1

    new-instance v0, Lorg/eclipse/jdt/internal/core/nd/db/LongString;

    invoke-direct {v0, p0, p1, p2}, Lorg/eclipse/jdt/internal/core/nd/db/LongString;-><init>(Lorg/eclipse/jdt/internal/core/nd/db/Database;J)V

    return-object v0

    :cond_1
    new-instance v0, Lorg/eclipse/jdt/internal/core/nd/db/ShortString;

    invoke-direct {v0, p0, p1, p2}, Lorg/eclipse/jdt/internal/core/nd/db/ShortString;-><init>(Lorg/eclipse/jdt/internal/core/nd/db/Database;J)V

    return-object v0
.end method

.method public getVersion()I
    .locals 1

    iget v0, p0, Lorg/eclipse/jdt/internal/core/nd/db/Database;->fVersion:I

    return v0
.end method

.method public giveUpExclusiveLock()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/eclipse/jdt/internal/core/nd/db/Database;->fExclusiveLock:Z

    return-void
.end method

.method public malloc(JS)J
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/internal/core/nd/db/IndexException;
        }
    .end annotation

    move-object v1, p0

    iget-object v0, v1, Lorg/eclipse/jdt/internal/core/nd/db/Database;->log:Lorg/eclipse/jdt/internal/core/nd/db/ModificationLog;

    iget-object v2, v1, Lorg/eclipse/jdt/internal/core/nd/db/Database;->mallocTag:Lorg/eclipse/jdt/internal/core/nd/db/ModificationLog$Tag;

    invoke-virtual {v0, v2}, Lorg/eclipse/jdt/internal/core/nd/db/ModificationLog;->start(Lorg/eclipse/jdt/internal/core/nd/db/ModificationLog$Tag;)V

    :try_start_0
    sget v0, Lorg/eclipse/jdt/internal/core/nd/db/Database;->MAX_SINGLE_BLOCK_MALLOC_SIZE:I

    int-to-long v2, v0

    cmp-long v0, p1, v2

    const-wide/16 v2, 0x1000

    const-wide/16 v4, 0x2

    if-ltz v0, :cond_0

    invoke-direct/range {p0 .. p2}, Lorg/eclipse/jdt/internal/core/nd/db/Database;->createLargeBlock(J)I

    move-result v0

    invoke-direct {p0, v0}, Lorg/eclipse/jdt/internal/core/nd/db/Database;->getBlockHeaderForChunkNum(I)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v6

    mul-int/lit16 v6, v6, 0x1000

    int-to-long v7, v0

    mul-long/2addr v7, v2

    sget v0, Lorg/eclipse/jdt/internal/core/nd/db/LargeBlock;->HEADER_SIZE:I

    int-to-long v2, v0

    add-long/2addr v7, v2

    sub-int v0, v6, v0

    sget v2, Lorg/eclipse/jdt/internal/core/nd/db/LargeBlock;->FOOTER_SIZE:I

    sub-int/2addr v0, v2

    int-to-long v2, v0

    invoke-virtual {p0, v7, v8, v2, v3}, Lorg/eclipse/jdt/internal/core/nd/db/Database;->clearRange(JJ)V

    add-long/2addr v7, v4

    goto/16 :goto_4

    :catchall_0
    move-exception v0

    goto/16 :goto_5

    :cond_0
    add-long v6, p1, v4

    const-wide/16 v8, 0x8

    invoke-static {v6, v7, v8, v9}, Lorg/eclipse/jdt/internal/core/nd/db/Database;->divideRoundingUp(JJ)I

    move-result v0

    const/4 v6, 0x2

    if-ge v0, v6, :cond_1

    move v0, v6

    :cond_1
    const-wide/16 v7, 0x0

    move v9, v0

    move-wide v10, v7

    :goto_0
    sget v12, Lorg/eclipse/jdt/internal/core/nd/db/Database;->MAX_BLOCK_DELTAS:I

    if-le v9, v12, :cond_2

    goto :goto_1

    :cond_2
    mul-int/lit8 v10, v9, 0x8

    invoke-direct {p0, v10}, Lorg/eclipse/jdt/internal/core/nd/db/Database;->getFirstBlock(I)J

    move-result-wide v10

    cmp-long v13, v10, v7

    if-eqz v13, :cond_7

    :goto_1
    cmp-long v7, v10, v7

    if-nez v7, :cond_3

    invoke-direct/range {p0 .. p2}, Lorg/eclipse/jdt/internal/core/nd/db/Database;->createLargeBlock(J)I

    move-result v7

    int-to-long v7, v7

    mul-long/2addr v7, v2

    sget v2, Lorg/eclipse/jdt/internal/core/nd/db/LargeBlock;->HEADER_SIZE:I

    int-to-long v2, v2

    add-long v10, v7, v2

    invoke-virtual {p0, v10, v11}, Lorg/eclipse/jdt/internal/core/nd/db/Database;->getChunk(J)Lorg/eclipse/jdt/internal/core/nd/db/Chunk;

    move-result-object v2

    move v9, v12

    goto :goto_2

    :cond_3
    invoke-virtual {p0, v10, v11}, Lorg/eclipse/jdt/internal/core/nd/db/Database;->getChunk(J)Lorg/eclipse/jdt/internal/core/nd/db/Chunk;

    move-result-object v2

    invoke-virtual {v2}, Lorg/eclipse/jdt/internal/core/nd/db/Chunk;->makeDirty()V

    invoke-virtual {v2, v10, v11}, Lorg/eclipse/jdt/internal/core/nd/db/Chunk;->getShort(J)S

    move-result v3

    mul-int/lit8 v7, v9, 0x8

    if-ne v3, v7, :cond_6

    invoke-direct {p0, v2, v7, v10, v11}, Lorg/eclipse/jdt/internal/core/nd/db/Database;->removeBlock(Lorg/eclipse/jdt/internal/core/nd/db/Chunk;IJ)V

    :goto_2
    sub-int v3, v9, v0

    if-lt v3, v6, :cond_4

    mul-int/lit8 v3, v3, 0x8

    mul-int/lit8 v6, v0, 0x8

    int-to-long v6, v6

    add-long/2addr v6, v10

    invoke-direct {p0, v2, v3, v6, v7}, Lorg/eclipse/jdt/internal/core/nd/db/Database;->addBlock(Lorg/eclipse/jdt/internal/core/nd/db/Chunk;IJ)V

    goto :goto_3

    :cond_4
    move v0, v9

    :goto_3
    mul-int/lit8 v6, v0, 0x8

    neg-int v0, v6

    int-to-short v0, v0

    invoke-virtual {v2, v10, v11, v0}, Lorg/eclipse/jdt/internal/core/nd/db/Chunk;->putShort(JS)V

    add-long v7, v10, v4

    add-int/lit8 v0, v6, -0x2

    invoke-virtual {v2, v7, v8, v0}, Lorg/eclipse/jdt/internal/core/nd/db/Chunk;->clear(JI)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_4
    iget-object v0, v1, Lorg/eclipse/jdt/internal/core/nd/db/Database;->log:Lorg/eclipse/jdt/internal/core/nd/db/ModificationLog;

    iget-object v2, v1, Lorg/eclipse/jdt/internal/core/nd/db/Database;->mallocTag:Lorg/eclipse/jdt/internal/core/nd/db/ModificationLog$Tag;

    invoke-virtual {v0, v2}, Lorg/eclipse/jdt/internal/core/nd/db/ModificationLog;->end(Lorg/eclipse/jdt/internal/core/nd/db/ModificationLog$Tag;)V

    iget-object v0, v1, Lorg/eclipse/jdt/internal/core/nd/db/Database;->log:Lorg/eclipse/jdt/internal/core/nd/db/ModificationLog;

    add-int/lit8 v2, v6, -0x2

    invoke-virtual {v0, v7, v8, v2}, Lorg/eclipse/jdt/internal/core/nd/db/ModificationLog;->recordMalloc(JI)V

    iget-wide v2, v1, Lorg/eclipse/jdt/internal/core/nd/db/Database;->malloced:J

    int-to-long v4, v6

    add-long/2addr v2, v4

    iput-wide v2, v1, Lorg/eclipse/jdt/internal/core/nd/db/Database;->malloced:J

    iget-object v0, v1, Lorg/eclipse/jdt/internal/core/nd/db/Database;->memoryUsage:Lorg/eclipse/jdt/internal/core/nd/db/MemoryStats;

    move/from16 v12, p3

    invoke-virtual {v0, v12, v4, v5}, Lorg/eclipse/jdt/internal/core/nd/db/MemoryStats;->recordMalloc(SJ)V

    sget-boolean v0, Lorg/eclipse/jdt/internal/core/nd/db/Database;->DEBUG_FREE_SPACE:Z

    if-eqz v0, :cond_5

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/core/nd/db/Database;->periodicValidateFreeSpace()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-direct {p0, v7, v8}, Lorg/eclipse/jdt/internal/core/nd/db/Database;->verifyNotInFreeSpaceList(J)V

    :cond_5
    return-wide v7

    :cond_6
    :try_start_1
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/nd/db/Database;->describeProblem()Lorg/eclipse/jdt/internal/core/nd/IndexExceptionBuilder;

    move-result-object v0

    const-string v2, "block size"

    invoke-virtual {v0, v2, v10, v11, v6}, Lorg/eclipse/jdt/internal/core/nd/IndexExceptionBuilder;->addProblemAddress(Ljava/lang/String;JI)Lorg/eclipse/jdt/internal/core/nd/IndexExceptionBuilder;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "Heap corruption detected in free space list. Block "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, " reports a size of "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " but was in the list for blocks of size "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/eclipse/jdt/internal/core/nd/IndexExceptionBuilder;->build(Ljava/lang/String;)Lorg/eclipse/jdt/internal/core/nd/db/IndexException;

    move-result-object v0

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_7
    move/from16 v12, p3

    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_0

    :goto_5
    iget-object v2, v1, Lorg/eclipse/jdt/internal/core/nd/db/Database;->log:Lorg/eclipse/jdt/internal/core/nd/db/ModificationLog;

    iget-object v3, v1, Lorg/eclipse/jdt/internal/core/nd/db/Database;->mallocTag:Lorg/eclipse/jdt/internal/core/nd/db/ModificationLog$Tag;

    invoke-virtual {v2, v3}, Lorg/eclipse/jdt/internal/core/nd/db/ModificationLog;->end(Lorg/eclipse/jdt/internal/core/nd/db/ModificationLog$Tag;)V

    throw v0
.end method

.method public memcpy(JJI)V
    .locals 5

    const/4 v0, 0x0

    :goto_0
    if-lt v0, p5, :cond_0

    return-void

    :cond_0
    int-to-long v1, v0

    add-long v3, p1, v1

    add-long/2addr v1, p3

    invoke-virtual {p0, v1, v2}, Lorg/eclipse/jdt/internal/core/nd/db/Database;->getByte(J)B

    move-result v1

    invoke-virtual {p0, v3, v4, v1}, Lorg/eclipse/jdt/internal/core/nd/db/Database;->putByte(JB)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public newString(Ljava/lang/String;)Lorg/eclipse/jdt/internal/core/nd/db/IString;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/internal/core/nd/db/IndexException;
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/internal/core/nd/db/Database;->newString([C)Lorg/eclipse/jdt/internal/core/nd/db/IString;

    move-result-object p1

    return-object p1
.end method

.method public newString([C)Lorg/eclipse/jdt/internal/core/nd/db/IString;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/internal/core/nd/db/IndexException;
        }
    .end annotation

    .line 2
    array-length v0, p1

    .line 3
    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/core/nd/db/Database;->useBytes([C)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    mul-int/lit8 v0, v0, 0x2

    .line 4
    :goto_0
    sget v2, Lorg/eclipse/jdt/internal/core/nd/db/ShortString;->MAX_BYTE_LENGTH:I

    if-le v0, v2, :cond_1

    .line 5
    new-instance v0, Lorg/eclipse/jdt/internal/core/nd/db/LongString;

    invoke-direct {v0, p0, p1, v1}, Lorg/eclipse/jdt/internal/core/nd/db/LongString;-><init>(Lorg/eclipse/jdt/internal/core/nd/db/Database;[CZ)V

    return-object v0

    .line 6
    :cond_1
    new-instance v0, Lorg/eclipse/jdt/internal/core/nd/db/ShortString;

    invoke-direct {v0, p0, p1, v1}, Lorg/eclipse/jdt/internal/core/nd/db/ShortString;-><init>(Lorg/eclipse/jdt/internal/core/nd/db/Database;[CZ)V

    return-object v0
.end method

.method public put3ByteUnsignedInt(JI)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/internal/core/nd/db/IndexException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lorg/eclipse/jdt/internal/core/nd/db/Database;->getChunk(J)Lorg/eclipse/jdt/internal/core/nd/db/Chunk;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lorg/eclipse/jdt/internal/core/nd/db/Chunk;->put3ByteUnsignedInt(JI)V

    return-void
.end method

.method public putByte(JB)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/internal/core/nd/db/IndexException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lorg/eclipse/jdt/internal/core/nd/db/Database;->getChunk(J)Lorg/eclipse/jdt/internal/core/nd/db/Chunk;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lorg/eclipse/jdt/internal/core/nd/db/Chunk;->putByte(JB)V

    return-void
.end method

.method public putBytes(J[BI)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/internal/core/nd/db/IndexException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2}, Lorg/eclipse/jdt/internal/core/nd/db/Database;->getChunk(J)Lorg/eclipse/jdt/internal/core/nd/db/Chunk;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Lorg/eclipse/jdt/internal/core/nd/db/Chunk;->put(J[BI)V

    return-void
.end method

.method public putBytes(J[BII)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/internal/core/nd/db/IndexException;
        }
    .end annotation

    .line 2
    invoke-virtual {p0, p1, p2}, Lorg/eclipse/jdt/internal/core/nd/db/Database;->getChunk(J)Lorg/eclipse/jdt/internal/core/nd/db/Chunk;

    move-result-object v0

    move-wide v1, p1

    move-object v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lorg/eclipse/jdt/internal/core/nd/db/Chunk;->put(J[BII)V

    return-void
.end method

.method public putChar(JC)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/internal/core/nd/db/IndexException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lorg/eclipse/jdt/internal/core/nd/db/Database;->getChunk(J)Lorg/eclipse/jdt/internal/core/nd/db/Chunk;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lorg/eclipse/jdt/internal/core/nd/db/Chunk;->putChar(JC)V

    return-void
.end method

.method public putDouble(JD)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/internal/core/nd/db/IndexException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lorg/eclipse/jdt/internal/core/nd/db/Database;->getChunk(J)Lorg/eclipse/jdt/internal/core/nd/db/Chunk;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Lorg/eclipse/jdt/internal/core/nd/db/Chunk;->putDouble(JD)V

    return-void
.end method

.method public putFloat(JF)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/internal/core/nd/db/IndexException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lorg/eclipse/jdt/internal/core/nd/db/Database;->getChunk(J)Lorg/eclipse/jdt/internal/core/nd/db/Chunk;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lorg/eclipse/jdt/internal/core/nd/db/Chunk;->putFloat(JF)V

    return-void
.end method

.method public putInt(JI)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/internal/core/nd/db/IndexException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lorg/eclipse/jdt/internal/core/nd/db/Database;->getChunk(J)Lorg/eclipse/jdt/internal/core/nd/db/Chunk;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lorg/eclipse/jdt/internal/core/nd/db/Chunk;->putInt(JI)V

    return-void
.end method

.method public putLong(JJ)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/internal/core/nd/db/IndexException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lorg/eclipse/jdt/internal/core/nd/db/Database;->getChunk(J)Lorg/eclipse/jdt/internal/core/nd/db/Chunk;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Lorg/eclipse/jdt/internal/core/nd/db/Chunk;->putLong(JJ)V

    return-void
.end method

.method public putRecPtr(JJ)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/internal/core/nd/db/IndexException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2}, Lorg/eclipse/jdt/internal/core/nd/db/Database;->getChunk(J)Lorg/eclipse/jdt/internal/core/nd/db/Chunk;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Lorg/eclipse/jdt/internal/core/nd/db/Chunk;->putRecPtr(JJ)V

    return-void
.end method

.method public putShort(JS)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/internal/core/nd/db/IndexException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lorg/eclipse/jdt/internal/core/nd/db/Database;->getChunk(J)Lorg/eclipse/jdt/internal/core/nd/db/Chunk;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lorg/eclipse/jdt/internal/core/nd/db/Chunk;->putShort(JS)V

    return-void
.end method

.method public read(Ljava/nio/ByteBuffer;J)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    :goto_0
    :try_start_0
    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/nd/db/Database;->fFile:Ljava/io/RandomAccessFile;

    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v1

    invoke-virtual {v1, p1, p2, p3}, Ljava/nio/channels/FileChannel;->read(Ljava/nio/ByteBuffer;J)I
    :try_end_0
    .catch Ljava/nio/channels/ClosedChannelException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v1

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/core/nd/db/Database;->openFile()V

    instance-of v2, v1, Ljava/nio/channels/ClosedByInterruptException;

    if-nez v2, :cond_1

    add-int/lit8 v0, v0, 0x1

    const/16 v2, 0x14

    if-ge v0, v2, :cond_0

    goto :goto_0

    :cond_0
    throw v1

    :cond_1
    new-instance p1, Lorg/eclipse/core/runtime/OperationCanceledException;

    invoke-direct {p1}, Lorg/eclipse/core/runtime/OperationCanceledException;-><init>()V

    throw p1
.end method

.method public reportFreeBlocks()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/internal/core/nd/db/IndexException;
        }
    .end annotation

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Allocated size: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/nd/db/Database;->getDatabaseSize()J

    move-result-wide v2

    invoke-static {v2, v3}, Lorg/eclipse/jdt/internal/core/nd/db/Database;->formatByteString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "malloc\'ed: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v2, p0, Lorg/eclipse/jdt/internal/core/nd/db/Database;->malloced:J

    invoke-static {v2, v3}, Lorg/eclipse/jdt/internal/core/nd/db/Database;->formatByteString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "free\'d: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v2, p0, Lorg/eclipse/jdt/internal/core/nd/db/Database;->freed:J

    invoke-static {v2, v3}, Lorg/eclipse/jdt/internal/core/nd/db/Database;->formatByteString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "wasted: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/nd/db/Database;->getDatabaseSize()J

    move-result-wide v2

    iget-wide v4, p0, Lorg/eclipse/jdt/internal/core/nd/db/Database;->malloced:J

    iget-wide v6, p0, Lorg/eclipse/jdt/internal/core/nd/db/Database;->freed:J

    sub-long/2addr v4, v6

    sub-long/2addr v2, v4

    invoke-static {v2, v3}, Lorg/eclipse/jdt/internal/core/nd/db/Database;->formatByteString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    const-string v1, "Free blocks"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    const/16 v0, 0x10

    :goto_0
    const/16 v1, 0x1000

    if-le v0, v1, :cond_0

    return-void

    :cond_0
    invoke-direct {p0, v0}, Lorg/eclipse/jdt/internal/core/nd/db/Database;->getFirstBlock(I)J

    move-result-wide v1

    const/4 v3, 0x0

    :goto_1
    const-wide/16 v4, 0x0

    cmp-long v4, v1, v4

    if-nez v4, :cond_2

    if-eqz v3, :cond_1

    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "Block size: "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_1
    add-int/lit8 v0, v0, 0x8

    goto :goto_0

    :cond_2
    add-int/lit8 v3, v3, 0x1

    const-wide/16 v4, 0x6

    add-long/2addr v1, v4

    invoke-direct {p0, v1, v2}, Lorg/eclipse/jdt/internal/core/nd/db/Database;->getFreeRecPtr(J)J

    move-result-wide v1

    goto :goto_1
.end method

.method public resetCacheCounters()V
    .locals 2

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/eclipse/jdt/internal/core/nd/db/Database;->cacheHits:J

    iput-wide v0, p0, Lorg/eclipse/jdt/internal/core/nd/db/Database;->cacheMisses:J

    iput-wide v0, p0, Lorg/eclipse/jdt/internal/core/nd/db/Database;->bytesWritten:J

    iput-wide v0, p0, Lorg/eclipse/jdt/internal/core/nd/db/Database;->totalFlushTime:J

    iput-wide v0, p0, Lorg/eclipse/jdt/internal/core/nd/db/Database;->pageWritesBytes:J

    iput-wide v0, p0, Lorg/eclipse/jdt/internal/core/nd/db/Database;->totalWriteTimeMs:J

    iput-wide v0, p0, Lorg/eclipse/jdt/internal/core/nd/db/Database;->totalReadTimeMs:J

    return-void
.end method

.method public setExclusiveLock()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/eclipse/jdt/internal/core/nd/db/Database;->fExclusiveLock:Z

    iput-boolean v0, p0, Lorg/eclipse/jdt/internal/core/nd/db/Database;->fLocked:Z

    return-void
.end method

.method public setLocked(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/eclipse/jdt/internal/core/nd/db/Database;->fLocked:Z

    return-void
.end method

.method public setVersion(I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/internal/core/nd/db/IndexException;
        }
    .end annotation

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/nd/db/Database;->fHeaderChunk:Lorg/eclipse/jdt/internal/core/nd/db/Chunk;

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2, p1}, Lorg/eclipse/jdt/internal/core/nd/db/Chunk;->putInt(JI)V

    iput p1, p0, Lorg/eclipse/jdt/internal/core/nd/db/Database;->fVersion:I

    return-void
.end method

.method public transferTo(Ljava/nio/channels/FileChannel;)V
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/nd/db/Database;->fFile:Ljava/io/RandomAccessFile;

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v7

    const-wide/16 v9, 0x0

    move-wide v11, v9

    :goto_0
    cmp-long v1, v11, v7

    if-ltz v1, :cond_0

    goto :goto_1

    :cond_0
    const-wide/32 v4, 0x10000

    move-object v1, v0

    move-wide v2, v11

    move-object v6, p1

    invoke-virtual/range {v1 .. v6}, Ljava/nio/channels/FileChannel;->transferTo(JJLjava/nio/channels/WritableByteChannel;)J

    move-result-wide v1

    cmp-long v3, v1, v9

    if-nez v3, :cond_1

    :goto_1
    return-void

    :cond_1
    add-long/2addr v11, v1

    goto :goto_0
.end method

.method public validateFreeSpace()V
    .locals 0

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/core/nd/db/Database;->validateFreeSpaceLists()V

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/core/nd/db/Database;->validateFreeSpaceTries()V

    return-void
.end method

.method public write(Ljava/nio/ByteBuffer;J)Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-wide v0, p0, Lorg/eclipse/jdt/internal/core/nd/db/Database;->bytesWritten:J

    invoke-virtual {p1}, Ljava/nio/Buffer;->limit()I

    move-result v2

    int-to-long v2, v2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lorg/eclipse/jdt/internal/core/nd/db/Database;->bytesWritten:J

    new-instance v0, Lorg/eclipse/jdt/internal/core/nd/db/d;

    invoke-direct {v0, p0, p1, p2, p3}, Lorg/eclipse/jdt/internal/core/nd/db/d;-><init>(Lorg/eclipse/jdt/internal/core/nd/db/Database;Ljava/nio/ByteBuffer;J)V

    invoke-direct {p0, v0}, Lorg/eclipse/jdt/internal/core/nd/db/Database;->performUninterruptableWrite(Lorg/eclipse/jdt/internal/core/nd/db/Database$IORunnable;)Z

    move-result p1

    return p1
.end method
