.class public Lorg/eclipse/jdt/internal/core/index/DiskIndex;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/eclipse/jdt/internal/core/index/DiskIndex$IntList;
    }
.end annotation


# static fields
.field private static BUFFER_READ_SIZE:I = 0x800

.field private static final BUFFER_WRITE_SIZE:I = 0x800

.field private static final CHUNK_SIZE:I = 0x64

.field public static DEBUG:Z = false

.field private static final DEFAULT_BUFFER_SIZE:I = 0x800

.field private static final DELETED:I = -0x2

.field private static final INTERNED_CATEGORY_NAMES:Lorg/eclipse/jdt/internal/compiler/util/SimpleSetOfCharArray;

.field private static final RE_INDEXED:I = -0x1

.field public static final SIGNATURE:Ljava/lang/String; = "INDEX VERSION 1.131"

.field private static final SIGNATURE_CHARS:[C

.field private static final TMP_EXT:Ljava/lang/String; = ".tmp"


# instance fields
.field private bufferEnd:I

.field private bufferIndex:I

.field private cacheUserCount:I

.field private cachedCategoryName:[C

.field private cachedChunks:[[Ljava/lang/String;

.field private categoryEnds:Lorg/eclipse/jdt/internal/compiler/util/HashtableOfIntValues;

.field private categoryOffsets:Lorg/eclipse/jdt/internal/compiler/util/HashtableOfIntValues;

.field private categoryTables:Lorg/eclipse/jdt/internal/compiler/util/HashtableOfObject;

.field private chunkOffsets:[I

.field private documentReferenceSize:I

.field private headerInfoOffset:I

.field indexLocation:Lorg/eclipse/jdt/internal/core/index/IndexLocation;

.field private numberOfChunks:I

.field separator:C

.field private sizeOfLastChunk:I

.field private startOfCategoryTables:I

.field private streamBuffer:[B

.field private streamEnd:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "INDEX VERSION 1.131"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lorg/eclipse/jdt/internal/core/index/DiskIndex;->SIGNATURE_CHARS:[C

    const/4 v0, 0x0

    sput-boolean v0, Lorg/eclipse/jdt/internal/core/index/DiskIndex;->DEBUG:Z

    new-instance v0, Lorg/eclipse/jdt/internal/compiler/util/SimpleSetOfCharArray;

    const/16 v1, 0x14

    invoke-direct {v0, v1}, Lorg/eclipse/jdt/internal/compiler/util/SimpleSetOfCharArray;-><init>(I)V

    sput-object v0, Lorg/eclipse/jdt/internal/core/index/DiskIndex;->INTERNED_CATEGORY_NAMES:Lorg/eclipse/jdt/internal/compiler/util/SimpleSetOfCharArray;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x2f

    .line 2
    iput-char v0, p0, Lorg/eclipse/jdt/internal/core/index/DiskIndex;->separator:C

    const/4 v0, -0x1

    .line 3
    iput v0, p0, Lorg/eclipse/jdt/internal/core/index/DiskIndex;->headerInfoOffset:I

    .line 4
    iput v0, p0, Lorg/eclipse/jdt/internal/core/index/DiskIndex;->numberOfChunks:I

    .line 5
    iput v0, p0, Lorg/eclipse/jdt/internal/core/index/DiskIndex;->sizeOfLastChunk:I

    const/4 v1, 0x0

    .line 6
    iput-object v1, p0, Lorg/eclipse/jdt/internal/core/index/DiskIndex;->chunkOffsets:[I

    .line 7
    iput v0, p0, Lorg/eclipse/jdt/internal/core/index/DiskIndex;->documentReferenceSize:I

    .line 8
    iput v0, p0, Lorg/eclipse/jdt/internal/core/index/DiskIndex;->cacheUserCount:I

    .line 9
    iput-object v1, p0, Lorg/eclipse/jdt/internal/core/index/DiskIndex;->cachedChunks:[[Ljava/lang/String;

    .line 10
    iput-object v1, p0, Lorg/eclipse/jdt/internal/core/index/DiskIndex;->categoryTables:Lorg/eclipse/jdt/internal/compiler/util/HashtableOfObject;

    .line 11
    iput-object v1, p0, Lorg/eclipse/jdt/internal/core/index/DiskIndex;->cachedCategoryName:[C

    .line 12
    iput-object v1, p0, Lorg/eclipse/jdt/internal/core/index/DiskIndex;->categoryOffsets:Lorg/eclipse/jdt/internal/compiler/util/HashtableOfIntValues;

    .line 13
    iput-object v1, p0, Lorg/eclipse/jdt/internal/core/index/DiskIndex;->categoryEnds:Lorg/eclipse/jdt/internal/compiler/util/HashtableOfIntValues;

    return-void
.end method

.method public constructor <init>(Lorg/eclipse/jdt/internal/core/index/IndexLocation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 14
    invoke-direct {p0}, Lorg/eclipse/jdt/internal/core/index/DiskIndex;-><init>()V

    if-eqz p1, :cond_0

    .line 15
    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/index/DiskIndex;->indexLocation:Lorg/eclipse/jdt/internal/core/index/IndexLocation;

    return-void

    .line 16
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method private addQueryResult(Lorg/eclipse/jdt/internal/compiler/util/HashtableOfObject;[CLjava/lang/Object;Lorg/eclipse/jdt/internal/core/index/MemoryIndex;Z)Lorg/eclipse/jdt/internal/compiler/util/HashtableOfObject;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p1, :cond_0

    new-instance p1, Lorg/eclipse/jdt/internal/compiler/util/HashtableOfObject;

    const/16 v0, 0xd

    invoke-direct {p1, v0}, Lorg/eclipse/jdt/internal/compiler/util/HashtableOfObject;-><init>(I)V

    :cond_0
    const/4 v0, 0x0

    if-eqz p5, :cond_1

    invoke-virtual {p1, p2}, Lorg/eclipse/jdt/internal/compiler/util/HashtableOfObject;->get([C)Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Lorg/eclipse/jdt/internal/core/index/EntryResult;

    goto :goto_0

    :cond_1
    move-object p5, v0

    :goto_0
    if-nez p4, :cond_3

    if-nez p5, :cond_2

    new-instance p4, Lorg/eclipse/jdt/internal/core/index/EntryResult;

    invoke-direct {p4, p2, p3}, Lorg/eclipse/jdt/internal/core/index/EntryResult;-><init>([CLjava/lang/Object;)V

    invoke-virtual {p1, p2, p4}, Lorg/eclipse/jdt/internal/compiler/util/HashtableOfObject;->putUnsafely([CLjava/lang/Object;)V

    goto :goto_2

    :cond_2
    invoke-virtual {p5, p3}, Lorg/eclipse/jdt/internal/core/index/EntryResult;->addDocumentTable(Ljava/lang/Object;)V

    goto :goto_2

    :cond_3
    iget-object p4, p4, Lorg/eclipse/jdt/internal/core/index/MemoryIndex;->docsToReferences:Lorg/eclipse/jdt/internal/compiler/util/SimpleLookupTable;

    if-nez p5, :cond_4

    new-instance p5, Lorg/eclipse/jdt/internal/core/index/EntryResult;

    invoke-direct {p5, p2, v0}, Lorg/eclipse/jdt/internal/core/index/EntryResult;-><init>([CLjava/lang/Object;)V

    :cond_4
    invoke-virtual {p0, p3}, Lorg/eclipse/jdt/internal/core/index/DiskIndex;->readDocumentNumbers(Ljava/lang/Object;)[I

    move-result-object p3

    array-length v0, p3

    const/4 v1, 0x0

    :goto_1
    if-lt v1, v0, :cond_6

    invoke-virtual {p5}, Lorg/eclipse/jdt/internal/core/index/EntryResult;->isEmpty()Z

    move-result p3

    if-nez p3, :cond_5

    invoke-virtual {p1, p2, p5}, Lorg/eclipse/jdt/internal/compiler/util/HashtableOfObject;->put([CLjava/lang/Object;)Ljava/lang/Object;

    :cond_5
    :goto_2
    return-object p1

    :cond_6
    aget v2, p3, v1

    invoke-virtual {p0, v2}, Lorg/eclipse/jdt/internal/core/index/DiskIndex;->readDocumentName(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p4, v2}, Lorg/eclipse/jdt/internal/compiler/util/SimpleLookupTable;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7

    invoke-virtual {p5, v2}, Lorg/eclipse/jdt/internal/core/index/EntryResult;->addDocumentName(Ljava/lang/String;)V

    :cond_7
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method private cacheDocumentNames()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lorg/eclipse/jdt/internal/core/index/DiskIndex;->numberOfChunks:I

    new-array v0, v0, [[Ljava/lang/String;

    iput-object v0, p0, Lorg/eclipse/jdt/internal/core/index/DiskIndex;->cachedChunks:[[Ljava/lang/String;

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/index/DiskIndex;->indexLocation:Lorg/eclipse/jdt/internal/core/index/IndexLocation;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/core/index/IndexLocation;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    const/16 v1, 0x800

    const/4 v2, 0x0

    :try_start_0
    iget v3, p0, Lorg/eclipse/jdt/internal/core/index/DiskIndex;->numberOfChunks:I

    const/4 v4, 0x5

    if-le v3, v4, :cond_0

    sget v3, Lorg/eclipse/jdt/internal/core/index/DiskIndex;->BUFFER_READ_SIZE:I

    shl-int/lit8 v3, v3, 0x1

    sput v3, Lorg/eclipse/jdt/internal/core/index/DiskIndex;->BUFFER_READ_SIZE:I

    goto :goto_0

    :catchall_0
    move-exception v3

    goto :goto_4

    :catch_0
    move-exception v3

    goto :goto_3

    :cond_0
    :goto_0
    iget-object v3, p0, Lorg/eclipse/jdt/internal/core/index/DiskIndex;->chunkOffsets:[I

    const/4 v4, 0x0

    aget v3, v3, v4

    int-to-long v5, v3

    invoke-virtual {v0, v5, v6}, Ljava/io/InputStream;->skip(J)J

    sget v3, Lorg/eclipse/jdt/internal/core/index/DiskIndex;->BUFFER_READ_SIZE:I

    new-array v3, v3, [B

    iput-object v3, p0, Lorg/eclipse/jdt/internal/core/index/DiskIndex;->streamBuffer:[B

    iput v4, p0, Lorg/eclipse/jdt/internal/core/index/DiskIndex;->bufferIndex:I

    array-length v5, v3

    invoke-virtual {v0, v3, v4, v5}, Ljava/io/InputStream;->read([BII)I

    move-result v3

    iput v3, p0, Lorg/eclipse/jdt/internal/core/index/DiskIndex;->bufferEnd:I

    move v3, v4

    :goto_1
    iget v5, p0, Lorg/eclipse/jdt/internal/core/index/DiskIndex;->numberOfChunks:I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-lt v3, v5, :cond_1

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/index/DiskIndex;->indexLocation:Lorg/eclipse/jdt/internal/core/index/IndexLocation;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/core/index/IndexLocation;->close()V

    iput-object v2, p0, Lorg/eclipse/jdt/internal/core/index/DiskIndex;->streamBuffer:[B

    sput v1, Lorg/eclipse/jdt/internal/core/index/DiskIndex;->BUFFER_READ_SIZE:I

    return-void

    :cond_1
    add-int/lit8 v5, v5, -0x1

    if-ne v3, v5, :cond_2

    :try_start_1
    iget v5, p0, Lorg/eclipse/jdt/internal/core/index/DiskIndex;->sizeOfLastChunk:I

    goto :goto_2

    :cond_2
    const/16 v5, 0x64

    :goto_2
    iget-object v6, p0, Lorg/eclipse/jdt/internal/core/index/DiskIndex;->cachedChunks:[[Ljava/lang/String;

    new-array v7, v5, [Ljava/lang/String;

    aput-object v7, v6, v3

    invoke-direct {p0, v7, v0, v4, v5}, Lorg/eclipse/jdt/internal/core/index/DiskIndex;->readChunk([Ljava/lang/String;Ljava/io/InputStream;II)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :goto_3
    :try_start_2
    iput-object v2, p0, Lorg/eclipse/jdt/internal/core/index/DiskIndex;->cachedChunks:[[Ljava/lang/String;

    throw v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_4
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/index/DiskIndex;->indexLocation:Lorg/eclipse/jdt/internal/core/index/IndexLocation;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/core/index/IndexLocation;->close()V

    iput-object v2, p0, Lorg/eclipse/jdt/internal/core/index/DiskIndex;->streamBuffer:[B

    sput v1, Lorg/eclipse/jdt/internal/core/index/DiskIndex;->BUFFER_READ_SIZE:I

    throw v3
.end method

.method private computeDocumentNames([Ljava/lang/String;[ILorg/eclipse/jdt/internal/compiler/util/SimpleLookupTable;Lorg/eclipse/jdt/internal/core/index/MemoryIndex;)[Ljava/lang/String;
    .locals 15

    move-object/from16 v0, p1

    move-object/from16 v1, p3

    array-length v2, v0

    move-object/from16 v3, p4

    iget-object v3, v3, Lorg/eclipse/jdt/internal/core/index/MemoryIndex;->docsToReferences:Lorg/eclipse/jdt/internal/compiler/util/SimpleLookupTable;

    iget-object v4, v3, Lorg/eclipse/jdt/internal/compiler/util/SimpleLookupTable;->keyTable:[Ljava/lang/Object;

    iget-object v3, v3, Lorg/eclipse/jdt/internal/compiler/util/SimpleLookupTable;->valueTable:[Ljava/lang/Object;

    const/4 v5, 0x0

    const/4 v6, 0x0

    if-nez v2, :cond_5

    array-length v7, v3

    move v0, v6

    :goto_0
    if-lt v0, v7, :cond_3

    iget v2, v1, Lorg/eclipse/jdt/internal/compiler/util/SimpleLookupTable;->elementSize:I

    new-array v8, v2, [Ljava/lang/String;

    iget-object v9, v1, Lorg/eclipse/jdt/internal/compiler/util/SimpleLookupTable;->keyTable:[Ljava/lang/Object;

    array-length v10, v9

    move v0, v6

    move v3, v0

    :goto_1
    if-lt v0, v10, :cond_1

    invoke-static {v8}, Lorg/eclipse/jdt/internal/core/util/Util;->sort([Ljava/lang/String;)V

    :goto_2
    if-lt v6, v2, :cond_0

    return-object v8

    :cond_0
    aget-object v0, v8, v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v0, v3}, Lorg/eclipse/jdt/internal/compiler/util/SimpleLookupTable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    :cond_1
    aget-object v4, v9, v0

    if-eqz v4, :cond_2

    add-int/lit8 v5, v3, 0x1

    check-cast v4, Ljava/lang/String;

    aput-object v4, v8, v3

    move v3, v5

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    aget-object v2, v3, v0

    if-eqz v2, :cond_4

    aget-object v2, v4, v0

    invoke-virtual {v1, v2, v5}, Lorg/eclipse/jdt/internal/compiler/util/SimpleLookupTable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_5
    move v7, v6

    :goto_3
    if-lt v7, v2, :cond_17

    array-length v8, v4

    move v7, v6

    move v9, v7

    :goto_4
    const/4 v10, -0x2

    const/4 v11, -0x1

    if-lt v7, v8, :cond_12

    if-gtz v9, :cond_7

    iget v3, v1, Lorg/eclipse/jdt/internal/compiler/util/SimpleLookupTable;->elementSize:I

    if-lez v3, :cond_6

    goto :goto_5

    :cond_6
    move-object v4, v0

    goto :goto_9

    :cond_7
    :goto_5
    iget v3, v1, Lorg/eclipse/jdt/internal/compiler/util/SimpleLookupTable;->elementSize:I

    add-int/2addr v3, v2

    sub-int v12, v3, v9

    new-array v13, v12, [Ljava/lang/String;

    move v3, v6

    move v4, v3

    :goto_6
    if-lt v3, v2, :cond_10

    iget-object v5, v1, Lorg/eclipse/jdt/internal/compiler/util/SimpleLookupTable;->keyTable:[Ljava/lang/Object;

    array-length v7, v5

    move v3, v6

    :goto_7
    if-lt v3, v7, :cond_e

    invoke-static {v13}, Lorg/eclipse/jdt/internal/core/util/Util;->sort([Ljava/lang/String;)V

    move v3, v6

    :goto_8
    if-lt v3, v12, :cond_c

    move-object v4, v13

    :goto_9
    move v3, v11

    :cond_8
    :goto_a
    if-lt v6, v2, :cond_9

    return-object v4

    :cond_9
    aget v5, p2, v6

    if-eq v5, v10, :cond_b

    if-eq v5, v11, :cond_a

    add-int/lit8 v3, v3, 0x1

    aget-object v5, v4, v3

    aget-object v7, v0, v6

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    add-int/lit8 v5, v6, 0x1

    aput v3, p2, v6

    move v6, v5

    goto :goto_a

    :cond_a
    add-int/lit8 v3, v3, 0x1

    aget-object v5, v4, v3

    aget-object v7, v0, v6

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_8

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v1, v5, v7}, Lorg/eclipse/jdt/internal/compiler/util/SimpleLookupTable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_b
    add-int/lit8 v6, v6, 0x1

    goto :goto_a

    :cond_c
    aget-object v4, v13, v3

    invoke-virtual {v1, v4}, Lorg/eclipse/jdt/internal/compiler/util/SimpleLookupTable;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_d

    aget-object v4, v13, v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Lorg/eclipse/jdt/internal/compiler/util/SimpleLookupTable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_d
    add-int/lit8 v3, v3, 0x1

    goto :goto_8

    :cond_e
    aget-object v8, v5, v3

    if-eqz v8, :cond_f

    add-int/lit8 v9, v4, 0x1

    check-cast v8, Ljava/lang/String;

    aput-object v8, v13, v4

    move v4, v9

    :cond_f
    add-int/lit8 v3, v3, 0x1

    goto :goto_7

    :cond_10
    aget v5, p2, v3

    if-lt v5, v11, :cond_11

    add-int/lit8 v5, v4, 0x1

    aget-object v7, v0, v3

    aput-object v7, v13, v4

    move v4, v5

    :cond_11
    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    :cond_12
    aget-object v12, v4, v7

    check-cast v12, Ljava/lang/String;

    if-eqz v12, :cond_16

    move v13, v6

    :goto_b
    if-lt v13, v2, :cond_13

    aget-object v10, v3, v7

    if-eqz v10, :cond_16

    invoke-virtual {v1, v12, v5}, Lorg/eclipse/jdt/internal/compiler/util/SimpleLookupTable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_c

    :cond_13
    aget-object v14, v0, v13

    invoke-virtual {v12, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_15

    aget-object v12, v3, v7

    if-nez v12, :cond_14

    aput v10, p2, v13

    add-int/lit8 v9, v9, 0x1

    goto :goto_c

    :cond_14
    aput v11, p2, v13

    goto :goto_c

    :cond_15
    add-int/lit8 v13, v13, 0x1

    goto :goto_b

    :cond_16
    :goto_c
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_4

    :cond_17
    aput v7, p2, v7

    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_3
.end method

.method private copyQueryResults(Lorg/eclipse/jdt/internal/compiler/util/HashtableOfObject;I)V
    .locals 11

    iget-object v0, p1, Lorg/eclipse/jdt/internal/compiler/util/HashtableOfObject;->keyTable:[[C

    iget-object p1, p1, Lorg/eclipse/jdt/internal/compiler/util/HashtableOfObject;->valueTable:[Ljava/lang/Object;

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-lt v3, v1, :cond_0

    return-void

    :cond_0
    aget-object v4, v0, v3

    if-eqz v4, :cond_6

    aget-object v5, p1, v3

    check-cast v5, Lorg/eclipse/jdt/internal/core/util/SimpleWordSet;

    iget-object v6, p0, Lorg/eclipse/jdt/internal/core/index/DiskIndex;->categoryTables:Lorg/eclipse/jdt/internal/compiler/util/HashtableOfObject;

    invoke-virtual {v6, v4}, Lorg/eclipse/jdt/internal/compiler/util/HashtableOfObject;->get([C)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/eclipse/jdt/internal/compiler/util/HashtableOfObject;

    if-nez v6, :cond_1

    iget-object v6, p0, Lorg/eclipse/jdt/internal/core/index/DiskIndex;->categoryTables:Lorg/eclipse/jdt/internal/compiler/util/HashtableOfObject;

    new-instance v7, Lorg/eclipse/jdt/internal/compiler/util/HashtableOfObject;

    iget v8, v5, Lorg/eclipse/jdt/internal/core/util/SimpleWordSet;->elementSize:I

    invoke-direct {v7, v8}, Lorg/eclipse/jdt/internal/compiler/util/HashtableOfObject;-><init>(I)V

    invoke-virtual {v6, v4, v7}, Lorg/eclipse/jdt/internal/compiler/util/HashtableOfObject;->put([CLjava/lang/Object;)Ljava/lang/Object;

    move-object v6, v7

    :cond_1
    iget-object v4, v5, Lorg/eclipse/jdt/internal/core/util/SimpleWordSet;->words:[[C

    array-length v5, v4

    move v7, v2

    :goto_1
    if-lt v7, v5, :cond_2

    goto :goto_3

    :cond_2
    aget-object v8, v4, v7

    if-eqz v8, :cond_5

    invoke-virtual {v6, v8}, Lorg/eclipse/jdt/internal/compiler/util/HashtableOfObject;->get([C)Ljava/lang/Object;

    move-result-object v9

    if-nez v9, :cond_3

    filled-new-array {p2}, [I

    move-result-object v9

    invoke-virtual {v6, v8, v9}, Lorg/eclipse/jdt/internal/compiler/util/HashtableOfObject;->putUnsafely([CLjava/lang/Object;)V

    goto :goto_2

    :cond_3
    instance-of v10, v9, Lorg/eclipse/jdt/internal/core/index/DiskIndex$IntList;

    if-eqz v10, :cond_4

    check-cast v9, Lorg/eclipse/jdt/internal/core/index/DiskIndex$IntList;

    invoke-virtual {v9, p2}, Lorg/eclipse/jdt/internal/core/index/DiskIndex$IntList;->add(I)V

    goto :goto_2

    :cond_4
    new-instance v10, Lorg/eclipse/jdt/internal/core/index/DiskIndex$IntList;

    check-cast v9, [I

    invoke-direct {v10, v9}, Lorg/eclipse/jdt/internal/core/index/DiskIndex$IntList;-><init>([I)V

    invoke-virtual {v10, p2}, Lorg/eclipse/jdt/internal/core/index/DiskIndex$IntList;->add(I)V

    invoke-virtual {v6, v8, v10}, Lorg/eclipse/jdt/internal/compiler/util/HashtableOfObject;->put([CLjava/lang/Object;)Ljava/lang/Object;

    :cond_5
    :goto_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_6
    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method private initializeFrom(Lorg/eclipse/jdt/internal/core/index/DiskIndex;Ljava/io/File;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Ljava/io/File;->delete()Z

    move-result v0

    if-nez v0, :cond_0

    sget-boolean p2, Lorg/eclipse/jdt/internal/core/index/DiskIndex;->DEBUG:Z

    if-eqz p2, :cond_2

    sget-object p2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "initializeFrom - Failed to delete temp index "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/index/DiskIndex;->indexLocation:Lorg/eclipse/jdt/internal/core/index/IndexLocation;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Ljava/io/File;->createNewFile()Z

    move-result p2

    if-nez p2, :cond_2

    sget-boolean p1, Lorg/eclipse/jdt/internal/core/index/DiskIndex;->DEBUG:Z

    if-eqz p1, :cond_1

    sget-object p1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "initializeFrom - Failed to create temp index "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/index/DiskIndex;->indexLocation:Lorg/eclipse/jdt/internal/core/index/IndexLocation;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_1
    new-instance p1, Ljava/io/IOException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Failed to create temp index "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/index/DiskIndex;->indexLocation:Lorg/eclipse/jdt/internal/core/index/IndexLocation;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    :goto_0
    iget-object p2, p1, Lorg/eclipse/jdt/internal/core/index/DiskIndex;->categoryOffsets:Lorg/eclipse/jdt/internal/compiler/util/HashtableOfIntValues;

    if-nez p2, :cond_3

    const/16 p2, 0x8

    goto :goto_1

    :cond_3
    iget p2, p2, Lorg/eclipse/jdt/internal/compiler/util/HashtableOfIntValues;->elementSize:I

    :goto_1
    new-instance v0, Lorg/eclipse/jdt/internal/compiler/util/HashtableOfIntValues;

    invoke-direct {v0, p2}, Lorg/eclipse/jdt/internal/compiler/util/HashtableOfIntValues;-><init>(I)V

    iput-object v0, p0, Lorg/eclipse/jdt/internal/core/index/DiskIndex;->categoryOffsets:Lorg/eclipse/jdt/internal/compiler/util/HashtableOfIntValues;

    new-instance v0, Lorg/eclipse/jdt/internal/compiler/util/HashtableOfIntValues;

    invoke-direct {v0, p2}, Lorg/eclipse/jdt/internal/compiler/util/HashtableOfIntValues;-><init>(I)V

    iput-object v0, p0, Lorg/eclipse/jdt/internal/core/index/DiskIndex;->categoryEnds:Lorg/eclipse/jdt/internal/compiler/util/HashtableOfIntValues;

    new-instance v0, Lorg/eclipse/jdt/internal/compiler/util/HashtableOfObject;

    invoke-direct {v0, p2}, Lorg/eclipse/jdt/internal/compiler/util/HashtableOfObject;-><init>(I)V

    iput-object v0, p0, Lorg/eclipse/jdt/internal/core/index/DiskIndex;->categoryTables:Lorg/eclipse/jdt/internal/compiler/util/HashtableOfObject;

    iget-char p1, p1, Lorg/eclipse/jdt/internal/core/index/DiskIndex;->separator:C

    iput-char p1, p0, Lorg/eclipse/jdt/internal/core/index/DiskIndex;->separator:C

    return-void
.end method

.method private mergeCategories(Lorg/eclipse/jdt/internal/core/index/DiskIndex;[ILjava/io/FileOutputStream;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p1, Lorg/eclipse/jdt/internal/core/index/DiskIndex;->categoryOffsets:Lorg/eclipse/jdt/internal/compiler/util/HashtableOfIntValues;

    iget-object v0, v0, Lorg/eclipse/jdt/internal/compiler/util/HashtableOfIntValues;->keyTable:[[C

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    const/4 v4, 0x0

    if-lt v3, v1, :cond_2

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/index/DiskIndex;->categoryTables:Lorg/eclipse/jdt/internal/compiler/util/HashtableOfObject;

    iget-object v5, v0, Lorg/eclipse/jdt/internal/compiler/util/HashtableOfObject;->keyTable:[[C

    array-length v6, v5

    :goto_1
    if-lt v2, v6, :cond_0

    iput-object v4, p0, Lorg/eclipse/jdt/internal/core/index/DiskIndex;->categoryTables:Lorg/eclipse/jdt/internal/compiler/util/HashtableOfObject;

    return-void

    :cond_0
    aget-object v0, v5, v2

    if-eqz v0, :cond_1

    invoke-direct {p0, v0, p1, p2, p3}, Lorg/eclipse/jdt/internal/core/index/DiskIndex;->mergeCategory([CLorg/eclipse/jdt/internal/core/index/DiskIndex;[ILjava/io/FileOutputStream;)V

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    aget-object v5, v0, v3

    if-eqz v5, :cond_3

    iget-object v6, p0, Lorg/eclipse/jdt/internal/core/index/DiskIndex;->categoryTables:Lorg/eclipse/jdt/internal/compiler/util/HashtableOfObject;

    invoke-virtual {v6, v5}, Lorg/eclipse/jdt/internal/compiler/util/HashtableOfObject;->containsKey([C)Z

    move-result v6

    if-nez v6, :cond_3

    iget-object v6, p0, Lorg/eclipse/jdt/internal/core/index/DiskIndex;->categoryTables:Lorg/eclipse/jdt/internal/compiler/util/HashtableOfObject;

    invoke-virtual {v6, v5, v4}, Lorg/eclipse/jdt/internal/compiler/util/HashtableOfObject;->put([CLjava/lang/Object;)Ljava/lang/Object;

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method private mergeCategory([CLorg/eclipse/jdt/internal/core/index/DiskIndex;[ILjava/io/FileOutputStream;)V
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    iget-object v3, v0, Lorg/eclipse/jdt/internal/core/index/DiskIndex;->categoryTables:Lorg/eclipse/jdt/internal/compiler/util/HashtableOfObject;

    invoke-virtual {v3, v1}, Lorg/eclipse/jdt/internal/compiler/util/HashtableOfObject;->get([C)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/eclipse/jdt/internal/compiler/util/HashtableOfObject;

    if-nez v3, :cond_0

    new-instance v3, Lorg/eclipse/jdt/internal/compiler/util/HashtableOfObject;

    const/4 v4, 0x3

    invoke-direct {v3, v4}, Lorg/eclipse/jdt/internal/compiler/util/HashtableOfObject;-><init>(I)V

    :cond_0
    const/4 v4, 0x1

    invoke-direct {v2, v1, v4}, Lorg/eclipse/jdt/internal/core/index/DiskIndex;->readCategoryTable([CZ)Lorg/eclipse/jdt/internal/compiler/util/HashtableOfObject;

    move-result-object v4

    if-eqz v4, :cond_1

    iget-object v5, v4, Lorg/eclipse/jdt/internal/compiler/util/HashtableOfObject;->keyTable:[[C

    iget-object v4, v4, Lorg/eclipse/jdt/internal/compiler/util/HashtableOfObject;->valueTable:[Ljava/lang/Object;

    array-length v6, v5

    const/4 v7, 0x0

    move v8, v7

    :goto_0
    if-lt v8, v6, :cond_2

    iget-object v2, v2, Lorg/eclipse/jdt/internal/core/index/DiskIndex;->categoryTables:Lorg/eclipse/jdt/internal/compiler/util/HashtableOfObject;

    const/4 v4, 0x0

    invoke-virtual {v2, v1, v4}, Lorg/eclipse/jdt/internal/compiler/util/HashtableOfObject;->put([CLjava/lang/Object;)Ljava/lang/Object;

    :cond_1
    move-object/from16 v2, p4

    goto/16 :goto_6

    :cond_2
    aget-object v9, v5, v8

    if-eqz v9, :cond_a

    aget-object v10, v4, v8

    check-cast v10, [I

    array-length v11, v10

    new-array v12, v11, [I

    move v13, v7

    move v14, v13

    :goto_1
    if-lt v13, v11, :cond_8

    if-ge v14, v11, :cond_4

    if-nez v14, :cond_3

    goto :goto_5

    :cond_3
    new-array v10, v14, [I

    invoke-static {v12, v7, v10, v7, v14}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v15, v10

    goto :goto_2

    :cond_4
    move-object v15, v12

    :goto_2
    invoke-virtual {v3, v9}, Lorg/eclipse/jdt/internal/compiler/util/HashtableOfObject;->get([C)Ljava/lang/Object;

    move-result-object v10

    if-nez v10, :cond_5

    invoke-virtual {v3, v9, v15}, Lorg/eclipse/jdt/internal/compiler/util/HashtableOfObject;->putUnsafely([CLjava/lang/Object;)V

    goto :goto_5

    :cond_5
    instance-of v11, v10, Lorg/eclipse/jdt/internal/core/index/DiskIndex$IntList;

    if-eqz v11, :cond_6

    check-cast v10, Lorg/eclipse/jdt/internal/core/index/DiskIndex$IntList;

    move-object v9, v10

    goto :goto_3

    :cond_6
    new-instance v11, Lorg/eclipse/jdt/internal/core/index/DiskIndex$IntList;

    check-cast v10, [I

    invoke-direct {v11, v10}, Lorg/eclipse/jdt/internal/core/index/DiskIndex$IntList;-><init>([I)V

    invoke-virtual {v3, v9, v11}, Lorg/eclipse/jdt/internal/compiler/util/HashtableOfObject;->put([CLjava/lang/Object;)Ljava/lang/Object;

    move-object v9, v11

    :goto_3
    move v10, v7

    :goto_4
    if-lt v10, v14, :cond_7

    goto :goto_5

    :cond_7
    aget v11, v15, v10

    invoke-virtual {v9, v11}, Lorg/eclipse/jdt/internal/core/index/DiskIndex$IntList;->add(I)V

    add-int/lit8 v10, v10, 0x1

    goto :goto_4

    :cond_8
    aget v15, v10, v13

    aget v15, p3, v15

    const/4 v7, -0x1

    if-le v15, v7, :cond_9

    add-int/lit8 v7, v14, 0x1

    aput v15, v12, v14

    move v14, v7

    :cond_9
    add-int/lit8 v13, v13, 0x1

    const/4 v7, 0x0

    goto :goto_1

    :cond_a
    :goto_5
    add-int/lit8 v8, v8, 0x1

    const/4 v7, 0x0

    goto :goto_0

    :goto_6
    invoke-direct {v0, v1, v3, v2}, Lorg/eclipse/jdt/internal/core/index/DiskIndex;->writeCategoryTable([CLorg/eclipse/jdt/internal/compiler/util/HashtableOfObject;Ljava/io/FileOutputStream;)V

    return-void
.end method

.method private declared-synchronized readAllDocumentNames()[Ljava/lang/String;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lorg/eclipse/jdt/internal/core/index/DiskIndex;->numberOfChunks:I

    if-gtz v0, :cond_0

    sget-object v0, Lorg/eclipse/jdt/core/compiler/CharOperation;->NO_STRINGS:[Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    goto :goto_2

    :cond_0
    :try_start_1
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/index/DiskIndex;->indexLocation:Lorg/eclipse/jdt/internal/core/index/IndexLocation;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/core/index/IndexLocation;->getInputStream()Ljava/io/InputStream;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v1, 0x0

    :try_start_2
    iget-object v2, p0, Lorg/eclipse/jdt/internal/core/index/DiskIndex;->chunkOffsets:[I

    const/4 v3, 0x0

    aget v2, v2, v3

    int-to-long v4, v2

    invoke-virtual {v0, v4, v5}, Ljava/io/InputStream;->skip(J)J

    sget v2, Lorg/eclipse/jdt/internal/core/index/DiskIndex;->BUFFER_READ_SIZE:I

    new-array v2, v2, [B

    iput-object v2, p0, Lorg/eclipse/jdt/internal/core/index/DiskIndex;->streamBuffer:[B

    iput v3, p0, Lorg/eclipse/jdt/internal/core/index/DiskIndex;->bufferIndex:I

    array-length v4, v2

    invoke-virtual {v0, v2, v3, v4}, Ljava/io/InputStream;->read([BII)I

    move-result v2

    iput v2, p0, Lorg/eclipse/jdt/internal/core/index/DiskIndex;->bufferEnd:I

    iget v2, p0, Lorg/eclipse/jdt/internal/core/index/DiskIndex;->numberOfChunks:I

    add-int/lit8 v2, v2, -0x1

    mul-int/lit8 v4, v2, 0x64

    iget v5, p0, Lorg/eclipse/jdt/internal/core/index/DiskIndex;->sizeOfLastChunk:I

    add-int/2addr v4, v5

    new-array v4, v4, [Ljava/lang/String;

    :goto_0
    iget v5, p0, Lorg/eclipse/jdt/internal/core/index/DiskIndex;->numberOfChunks:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-lt v3, v5, :cond_1

    :try_start_3
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/index/DiskIndex;->indexLocation:Lorg/eclipse/jdt/internal/core/index/IndexLocation;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/core/index/IndexLocation;->close()V

    iput-object v1, p0, Lorg/eclipse/jdt/internal/core/index/DiskIndex;->streamBuffer:[B
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit p0

    return-object v4

    :cond_1
    mul-int/lit8 v5, v3, 0x64

    if-ge v3, v2, :cond_2

    const/16 v6, 0x64

    goto :goto_1

    :cond_2
    :try_start_4
    iget v6, p0, Lorg/eclipse/jdt/internal/core/index/DiskIndex;->sizeOfLastChunk:I

    :goto_1
    invoke-direct {p0, v4, v0, v5, v6}, Lorg/eclipse/jdt/internal/core/index/DiskIndex;->readChunk([Ljava/lang/String;Ljava/io/InputStream;II)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :catchall_1
    move-exception v2

    :try_start_5
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/index/DiskIndex;->indexLocation:Lorg/eclipse/jdt/internal/core/index/IndexLocation;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/core/index/IndexLocation;->close()V

    iput-object v1, p0, Lorg/eclipse/jdt/internal/core/index/DiskIndex;->streamBuffer:[B

    throw v2

    :goto_2
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    throw v0
.end method

.method private declared-synchronized readCategoryTable([CZ)Lorg/eclipse/jdt/internal/compiler/util/HashtableOfObject;
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/index/DiskIndex;->categoryOffsets:Lorg/eclipse/jdt/internal/compiler/util/HashtableOfIntValues;

    invoke-virtual {v0, p1}, Lorg/eclipse/jdt/internal/compiler/util/HashtableOfIntValues;->get([C)I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/high16 v1, -0x80000000

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    monitor-exit p0

    return-object v2

    :cond_0
    :try_start_1
    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/index/DiskIndex;->categoryTables:Lorg/eclipse/jdt/internal/compiler/util/HashtableOfObject;

    const/4 v3, 0x0

    if-nez v1, :cond_1

    new-instance v1, Lorg/eclipse/jdt/internal/compiler/util/HashtableOfObject;

    const/4 v4, 0x3

    invoke-direct {v1, v4}, Lorg/eclipse/jdt/internal/compiler/util/HashtableOfObject;-><init>(I)V

    iput-object v1, p0, Lorg/eclipse/jdt/internal/core/index/DiskIndex;->categoryTables:Lorg/eclipse/jdt/internal/compiler/util/HashtableOfObject;

    goto :goto_2

    :catchall_0
    move-exception p1

    goto/16 :goto_d

    :cond_1
    invoke-virtual {v1, p1}, Lorg/eclipse/jdt/internal/compiler/util/HashtableOfObject;->get([C)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/eclipse/jdt/internal/compiler/util/HashtableOfObject;

    if-eqz v1, :cond_5

    if-eqz p2, :cond_4

    iget-object p1, v1, Lorg/eclipse/jdt/internal/compiler/util/HashtableOfObject;->valueTable:[Ljava/lang/Object;

    array-length p2, p1

    :goto_0
    if-lt v3, p2, :cond_2

    goto :goto_1

    :cond_2
    aget-object v0, p1, v3

    instance-of v2, v0, Ljava/lang/Integer;

    if-eqz v2, :cond_3

    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/internal/core/index/DiskIndex;->readDocumentNumbers(Ljava/lang/Object;)[I

    move-result-object v0

    aput-object v0, p1, v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_4
    :goto_1
    monitor-exit p0

    return-object v1

    :cond_5
    :goto_2
    :try_start_2
    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/index/DiskIndex;->indexLocation:Lorg/eclipse/jdt/internal/core/index/IndexLocation;

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/core/index/IndexLocation;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    sget v4, Lorg/eclipse/jdt/internal/core/index/DiskIndex;->BUFFER_READ_SIZE:I

    new-array v4, v4, [B

    iput-object v4, p0, Lorg/eclipse/jdt/internal/core/index/DiskIndex;->streamBuffer:[B
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    int-to-long v4, v0

    :try_start_3
    invoke-virtual {v1, v4, v5}, Ljava/io/InputStream;->skip(J)J

    iput v3, p0, Lorg/eclipse/jdt/internal/core/index/DiskIndex;->bufferIndex:I

    iget-object v4, p0, Lorg/eclipse/jdt/internal/core/index/DiskIndex;->streamBuffer:[B

    array-length v5, v4

    invoke-virtual {v1, v4, v3, v5}, Ljava/io/InputStream;->read([BII)I

    move-result v4

    iput v4, p0, Lorg/eclipse/jdt/internal/core/index/DiskIndex;->bufferEnd:I

    invoke-direct {p0, v1}, Lorg/eclipse/jdt/internal/core/index/DiskIndex;->readStreamInt(Ljava/io/InputStream;)I

    move-result v4
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-gez v4, :cond_6

    :try_start_4
    sget-object v5, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v6, "-------------------- DEBUG --------------------"

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "file = "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v7, p0, Lorg/eclipse/jdt/internal/core/index/DiskIndex;->indexLocation:Lorg/eclipse/jdt/internal/core/index/IndexLocation;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "offset = "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "size = "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    const-string v6, "--------------------   END   --------------------"

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_3

    :catchall_1
    move-exception p1

    goto/16 :goto_c

    :catch_0
    move-exception p1

    goto/16 :goto_b

    :catch_1
    move-exception p1

    goto/16 :goto_a

    :cond_6
    :goto_3
    new-instance v5, Lorg/eclipse/jdt/internal/compiler/util/HashtableOfObject;

    invoke-direct {v5, v4}, Lorg/eclipse/jdt/internal/compiler/util/HashtableOfObject;-><init>(I)V
    :try_end_4
    .catch Ljava/lang/OutOfMemoryError; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    const/4 v0, -0x1

    move-object v7, v2

    move v6, v3

    move v8, v6

    :goto_4
    if-lt v6, v4, :cond_a

    :try_start_5
    iget-object p2, p0, Lorg/eclipse/jdt/internal/core/index/DiskIndex;->categoryTables:Lorg/eclipse/jdt/internal/compiler/util/HashtableOfObject;

    sget-object v4, Lorg/eclipse/jdt/internal/core/index/DiskIndex;->INTERNED_CATEGORY_NAMES:Lorg/eclipse/jdt/internal/compiler/util/SimpleSetOfCharArray;

    invoke-virtual {v4, p1}, Lorg/eclipse/jdt/internal/compiler/util/SimpleSetOfCharArray;->get([C)[C

    move-result-object v4

    invoke-virtual {p2, v4, v5}, Lorg/eclipse/jdt/internal/compiler/util/HashtableOfObject;->put([CLjava/lang/Object;)Ljava/lang/Object;

    iget p2, v5, Lorg/eclipse/jdt/internal/compiler/util/HashtableOfObject;->elementSize:I

    const/16 v4, 0x4e20

    if-ge p2, v4, :cond_7

    goto :goto_5

    :cond_7
    move-object p1, v2

    :goto_5
    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/index/DiskIndex;->cachedCategoryName:[C
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :try_start_6
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    iget-object p1, p0, Lorg/eclipse/jdt/internal/core/index/DiskIndex;->indexLocation:Lorg/eclipse/jdt/internal/core/index/IndexLocation;

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/core/index/IndexLocation;->close()V

    if-eqz v7, :cond_9

    if-lez v8, :cond_9

    iget-object p1, p0, Lorg/eclipse/jdt/internal/core/index/DiskIndex;->indexLocation:Lorg/eclipse/jdt/internal/core/index/IndexLocation;

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/core/index/IndexLocation;->getInputStream()Ljava/io/InputStream;

    move-result-object p1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    int-to-long v0, v0

    :try_start_7
    invoke-virtual {p1, v0, v1}, Ljava/io/InputStream;->skip(J)J

    iput v3, p0, Lorg/eclipse/jdt/internal/core/index/DiskIndex;->bufferIndex:I

    iget-object p2, p0, Lorg/eclipse/jdt/internal/core/index/DiskIndex;->streamBuffer:[B

    array-length v0, p2

    invoke-virtual {p1, p2, v3, v0}, Ljava/io/InputStream;->read([BII)I

    move-result p2

    iput p2, p0, Lorg/eclipse/jdt/internal/core/index/DiskIndex;->bufferEnd:I
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    :goto_6
    if-lt v3, v8, :cond_8

    :try_start_8
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    iget-object p1, p0, Lorg/eclipse/jdt/internal/core/index/DiskIndex;->indexLocation:Lorg/eclipse/jdt/internal/core/index/IndexLocation;

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/core/index/IndexLocation;->close()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto :goto_8

    :cond_8
    :try_start_9
    aget-object p2, v7, v3

    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/core/index/DiskIndex;->readStreamInt(Ljava/io/InputStream;)I

    move-result v0

    invoke-direct {p0, p1, v0}, Lorg/eclipse/jdt/internal/core/index/DiskIndex;->readStreamDocumentArray(Ljava/io/InputStream;I)[I

    move-result-object v0

    invoke-virtual {v5, p2, v0}, Lorg/eclipse/jdt/internal/compiler/util/HashtableOfObject;->put([CLjava/lang/Object;)Ljava/lang/Object;
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_2
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    :catchall_2
    move-exception p2

    goto :goto_7

    :catch_2
    move-exception p2

    :try_start_a
    iput-object v2, p0, Lorg/eclipse/jdt/internal/core/index/DiskIndex;->streamBuffer:[B

    throw p2
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    :goto_7
    :try_start_b
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    iget-object p1, p0, Lorg/eclipse/jdt/internal/core/index/DiskIndex;->indexLocation:Lorg/eclipse/jdt/internal/core/index/IndexLocation;

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/core/index/IndexLocation;->close()V

    throw p2

    :cond_9
    :goto_8
    iput-object v2, p0, Lorg/eclipse/jdt/internal/core/index/DiskIndex;->streamBuffer:[B
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    monitor-exit p0

    return-object v5

    :cond_a
    :try_start_c
    invoke-direct {p0, v1}, Lorg/eclipse/jdt/internal/core/index/DiskIndex;->readStreamChars(Ljava/io/InputStream;)[C

    move-result-object v9

    invoke-direct {p0, v1}, Lorg/eclipse/jdt/internal/core/index/DiskIndex;->readStreamInt(Ljava/io/InputStream;)I

    move-result v10

    if-gtz v10, :cond_b

    neg-int v10, v10

    filled-new-array {v10}, [I

    move-result-object v10

    invoke-virtual {v5, v9, v10}, Lorg/eclipse/jdt/internal/compiler/util/HashtableOfObject;->putUnsafely([CLjava/lang/Object;)V

    goto :goto_9

    :cond_b
    const/16 v11, 0x100

    if-ge v10, v11, :cond_c

    invoke-direct {p0, v1, v10}, Lorg/eclipse/jdt/internal/core/index/DiskIndex;->readStreamDocumentArray(Ljava/io/InputStream;I)[I

    move-result-object v10

    invoke-virtual {v5, v9, v10}, Lorg/eclipse/jdt/internal/compiler/util/HashtableOfObject;->putUnsafely([CLjava/lang/Object;)V

    goto :goto_9

    :cond_c
    invoke-direct {p0, v1}, Lorg/eclipse/jdt/internal/core/index/DiskIndex;->readStreamInt(Ljava/io/InputStream;)I

    move-result v10

    if-eqz p2, :cond_f

    if-nez v7, :cond_d

    new-array v7, v4, [[C

    :cond_d
    if-nez v8, :cond_e

    move v0, v10

    :cond_e
    add-int/lit8 v11, v8, 0x1

    aput-object v9, v7, v8

    move v8, v11

    :cond_f
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v5, v9, v10}, Lorg/eclipse/jdt/internal/compiler/util/HashtableOfObject;->putUnsafely([CLjava/lang/Object;)V

    :goto_9
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_4

    :goto_a
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    sget-object p2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v3, "-------------------- DEBUG --------------------"

    invoke-virtual {p2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "file = "

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lorg/eclipse/jdt/internal/core/index/DiskIndex;->indexLocation:Lorg/eclipse/jdt/internal/core/index/IndexLocation;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "offset = "

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "size = "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    const-string v0, "--------------------   END   --------------------"

    invoke-virtual {p2, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    throw p1
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_0
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    :goto_b
    :try_start_d
    iput-object v2, p0, Lorg/eclipse/jdt/internal/core/index/DiskIndex;->streamBuffer:[B

    throw p1
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    :goto_c
    :try_start_e
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    iget-object p2, p0, Lorg/eclipse/jdt/internal/core/index/DiskIndex;->indexLocation:Lorg/eclipse/jdt/internal/core/index/IndexLocation;

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/core/index/IndexLocation;->close()V

    throw p1

    :goto_d
    monitor-exit p0
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    throw p1
.end method

.method private readChunk([Ljava/lang/String;Ljava/io/InputStream;II)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Ljava/lang/String;

    invoke-direct {p0, p2}, Lorg/eclipse/jdt/internal/core/index/DiskIndex;->readStreamChars(Ljava/io/InputStream;)[C

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([C)V

    add-int/lit8 v1, p3, 0x1

    aput-object v0, p1, p3

    const/4 p3, 0x1

    :goto_0
    if-lt p3, p4, :cond_0

    return-void

    :cond_0
    if-eqz p2, :cond_1

    iget v2, p0, Lorg/eclipse/jdt/internal/core/index/DiskIndex;->bufferIndex:I

    add-int/lit8 v2, v2, 0x2

    iget v3, p0, Lorg/eclipse/jdt/internal/core/index/DiskIndex;->bufferEnd:I

    if-lt v2, v3, :cond_1

    invoke-direct {p0, p2}, Lorg/eclipse/jdt/internal/core/index/DiskIndex;->readStreamBuffer(Ljava/io/InputStream;)V

    :cond_1
    iget-object v2, p0, Lorg/eclipse/jdt/internal/core/index/DiskIndex;->streamBuffer:[B

    iget v3, p0, Lorg/eclipse/jdt/internal/core/index/DiskIndex;->bufferIndex:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lorg/eclipse/jdt/internal/core/index/DiskIndex;->bufferIndex:I

    aget-byte v5, v2, v3

    and-int/lit16 v5, v5, 0xff

    add-int/lit8 v3, v3, 0x2

    iput v3, p0, Lorg/eclipse/jdt/internal/core/index/DiskIndex;->bufferIndex:I

    aget-byte v2, v2, v4

    and-int/lit16 v2, v2, 0xff

    new-instance v3, Ljava/lang/String;

    invoke-direct {p0, p2}, Lorg/eclipse/jdt/internal/core/index/DiskIndex;->readStreamChars(Ljava/io/InputStream;)[C

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/String;-><init>([C)V

    if-lez v5, :cond_3

    const/4 v4, 0x0

    if-lez v2, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v7, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sub-int v2, v6, v2

    invoke-virtual {v0, v2, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_3
    if-lez v2, :cond_4

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sub-int v2, v4, v2

    invoke-virtual {v0, v2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_4
    move-object v0, v3

    :goto_1
    add-int/lit8 v2, v1, 0x1

    aput-object v0, p1, v1

    add-int/lit8 p3, p3, 0x1

    move v1, v2

    goto/16 :goto_0
.end method

.method private readHeaderInfo(Ljava/io/InputStream;)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/core/index/DiskIndex;->readStreamInt(Ljava/io/InputStream;)I

    move-result v0

    iput v0, p0, Lorg/eclipse/jdt/internal/core/index/DiskIndex;->numberOfChunks:I

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/index/DiskIndex;->streamBuffer:[B

    iget v1, p0, Lorg/eclipse/jdt/internal/core/index/DiskIndex;->bufferIndex:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/eclipse/jdt/internal/core/index/DiskIndex;->bufferIndex:I

    aget-byte v3, v0, v1

    and-int/lit16 v3, v3, 0xff

    iput v3, p0, Lorg/eclipse/jdt/internal/core/index/DiskIndex;->sizeOfLastChunk:I

    add-int/lit8 v3, v1, 0x2

    iput v3, p0, Lorg/eclipse/jdt/internal/core/index/DiskIndex;->bufferIndex:I

    aget-byte v2, v0, v2

    and-int/lit16 v2, v2, 0xff

    iput v2, p0, Lorg/eclipse/jdt/internal/core/index/DiskIndex;->documentReferenceSize:I

    const/4 v2, 0x3

    add-int/2addr v1, v2

    iput v1, p0, Lorg/eclipse/jdt/internal/core/index/DiskIndex;->bufferIndex:I

    aget-byte v0, v0, v3

    and-int/lit16 v0, v0, 0xff

    int-to-char v0, v0

    iput-char v0, p0, Lorg/eclipse/jdt/internal/core/index/DiskIndex;->separator:C

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/index/DiskIndex;->indexLocation:Lorg/eclipse/jdt/internal/core/index/IndexLocation;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/core/index/IndexLocation;->length()J

    move-result-wide v0

    const-wide/16 v3, -0x1

    cmp-long v3, v0, v3

    const-string v4, "Index file is corrupted "

    if-eqz v3, :cond_1

    iget v5, p0, Lorg/eclipse/jdt/internal/core/index/DiskIndex;->numberOfChunks:I

    int-to-long v5, v5

    cmp-long v5, v5, v0

    if-lez v5, :cond_1

    sget-boolean p1, Lorg/eclipse/jdt/internal/core/index/DiskIndex;->DEBUG:Z

    if-eqz p1, :cond_0

    sget-object p1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/index/DiskIndex;->indexLocation:Lorg/eclipse/jdt/internal/core/index/IndexLocation;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_0
    new-instance p1, Ljava/io/IOException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/index/DiskIndex;->indexLocation:Lorg/eclipse/jdt/internal/core/index/IndexLocation;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    iget v5, p0, Lorg/eclipse/jdt/internal/core/index/DiskIndex;->numberOfChunks:I

    new-array v5, v5, [I

    iput-object v5, p0, Lorg/eclipse/jdt/internal/core/index/DiskIndex;->chunkOffsets:[I

    const/4 v5, 0x0

    move v6, v5

    :goto_0
    iget v7, p0, Lorg/eclipse/jdt/internal/core/index/DiskIndex;->numberOfChunks:I

    if-lt v6, v7, :cond_7

    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/core/index/DiskIndex;->readStreamInt(Ljava/io/InputStream;)I

    move-result v6

    iput v6, p0, Lorg/eclipse/jdt/internal/core/index/DiskIndex;->startOfCategoryTables:I

    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/core/index/DiskIndex;->readStreamInt(Ljava/io/InputStream;)I

    move-result v7

    new-instance v6, Lorg/eclipse/jdt/internal/compiler/util/HashtableOfIntValues;

    invoke-direct {v6, v7}, Lorg/eclipse/jdt/internal/compiler/util/HashtableOfIntValues;-><init>(I)V

    iput-object v6, p0, Lorg/eclipse/jdt/internal/core/index/DiskIndex;->categoryOffsets:Lorg/eclipse/jdt/internal/compiler/util/HashtableOfIntValues;

    new-instance v6, Lorg/eclipse/jdt/internal/compiler/util/HashtableOfIntValues;

    invoke-direct {v6, v7}, Lorg/eclipse/jdt/internal/compiler/util/HashtableOfIntValues;-><init>(I)V

    iput-object v6, p0, Lorg/eclipse/jdt/internal/core/index/DiskIndex;->categoryEnds:Lorg/eclipse/jdt/internal/compiler/util/HashtableOfIntValues;

    if-eqz v3, :cond_3

    int-to-long v8, v7

    cmp-long v0, v8, v0

    if-lez v0, :cond_3

    sget-boolean p1, Lorg/eclipse/jdt/internal/core/index/DiskIndex;->DEBUG:Z

    if-eqz p1, :cond_2

    sget-object p1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/index/DiskIndex;->indexLocation:Lorg/eclipse/jdt/internal/core/index/IndexLocation;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_2
    new-instance p1, Ljava/io/IOException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/index/DiskIndex;->indexLocation:Lorg/eclipse/jdt/internal/core/index/IndexLocation;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    const/4 v0, 0x0

    :goto_1
    if-lt v5, v7, :cond_5

    if-eqz v0, :cond_4

    iget-object p1, p0, Lorg/eclipse/jdt/internal/core/index/DiskIndex;->categoryEnds:Lorg/eclipse/jdt/internal/compiler/util/HashtableOfIntValues;

    iget v1, p0, Lorg/eclipse/jdt/internal/core/index/DiskIndex;->headerInfoOffset:I

    invoke-virtual {p1, v0, v1}, Lorg/eclipse/jdt/internal/compiler/util/HashtableOfIntValues;->put([CI)I

    :cond_4
    new-instance p1, Lorg/eclipse/jdt/internal/compiler/util/HashtableOfObject;

    invoke-direct {p1, v2}, Lorg/eclipse/jdt/internal/compiler/util/HashtableOfObject;-><init>(I)V

    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/index/DiskIndex;->categoryTables:Lorg/eclipse/jdt/internal/compiler/util/HashtableOfObject;

    return-void

    :cond_5
    sget-object v1, Lorg/eclipse/jdt/internal/core/index/DiskIndex;->INTERNED_CATEGORY_NAMES:Lorg/eclipse/jdt/internal/compiler/util/SimpleSetOfCharArray;

    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/core/index/DiskIndex;->readStreamChars(Ljava/io/InputStream;)[C

    move-result-object v3

    invoke-virtual {v1, v3}, Lorg/eclipse/jdt/internal/compiler/util/SimpleSetOfCharArray;->get([C)[C

    move-result-object v1

    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/core/index/DiskIndex;->readStreamInt(Ljava/io/InputStream;)I

    move-result v3

    iget-object v4, p0, Lorg/eclipse/jdt/internal/core/index/DiskIndex;->categoryOffsets:Lorg/eclipse/jdt/internal/compiler/util/HashtableOfIntValues;

    invoke-virtual {v4, v1, v3}, Lorg/eclipse/jdt/internal/compiler/util/HashtableOfIntValues;->put([CI)I

    if-eqz v0, :cond_6

    iget-object v4, p0, Lorg/eclipse/jdt/internal/core/index/DiskIndex;->categoryEnds:Lorg/eclipse/jdt/internal/compiler/util/HashtableOfIntValues;

    invoke-virtual {v4, v0, v3}, Lorg/eclipse/jdt/internal/compiler/util/HashtableOfIntValues;->put([CI)I

    :cond_6
    add-int/lit8 v5, v5, 0x1

    move-object v0, v1

    goto :goto_1

    :cond_7
    iget-object v7, p0, Lorg/eclipse/jdt/internal/core/index/DiskIndex;->chunkOffsets:[I

    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/core/index/DiskIndex;->readStreamInt(Ljava/io/InputStream;)I

    move-result v8

    aput v8, v7, v6

    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_0
.end method

.method private readStreamBuffer(Ljava/io/InputStream;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lorg/eclipse/jdt/internal/core/index/DiskIndex;->bufferEnd:I

    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/index/DiskIndex;->streamBuffer:[B

    array-length v1, v1

    if-ge v0, v1, :cond_0

    invoke-virtual {p1}, Ljava/io/InputStream;->available()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget v0, p0, Lorg/eclipse/jdt/internal/core/index/DiskIndex;->bufferEnd:I

    iget v1, p0, Lorg/eclipse/jdt/internal/core/index/DiskIndex;->bufferIndex:I

    sub-int/2addr v0, v1

    const/4 v2, 0x0

    if-lez v0, :cond_1

    iget-object v3, p0, Lorg/eclipse/jdt/internal/core/index/DiskIndex;->streamBuffer:[B

    invoke-static {v3, v1, v3, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_1
    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/index/DiskIndex;->streamBuffer:[B

    iget v3, p0, Lorg/eclipse/jdt/internal/core/index/DiskIndex;->bufferIndex:I

    invoke-virtual {p1, v1, v0, v3}, Ljava/io/InputStream;->read([BII)I

    move-result p1

    add-int/2addr v0, p1

    iput v0, p0, Lorg/eclipse/jdt/internal/core/index/DiskIndex;->bufferEnd:I

    iput v2, p0, Lorg/eclipse/jdt/internal/core/index/DiskIndex;->bufferIndex:I

    return-void
.end method

.method private readStreamChars(Ljava/io/InputStream;)[C
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p1, :cond_0

    iget v0, p0, Lorg/eclipse/jdt/internal/core/index/DiskIndex;->bufferIndex:I

    add-int/lit8 v0, v0, 0x2

    iget v1, p0, Lorg/eclipse/jdt/internal/core/index/DiskIndex;->bufferEnd:I

    if-lt v0, v1, :cond_0

    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/core/index/DiskIndex;->readStreamBuffer(Ljava/io/InputStream;)V

    :cond_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/index/DiskIndex;->streamBuffer:[B

    iget v1, p0, Lorg/eclipse/jdt/internal/core/index/DiskIndex;->bufferIndex:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/eclipse/jdt/internal/core/index/DiskIndex;->bufferIndex:I

    aget-byte v3, v0, v1

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x8

    add-int/lit8 v1, v1, 0x2

    iput v1, p0, Lorg/eclipse/jdt/internal/core/index/DiskIndex;->bufferIndex:I

    aget-byte v0, v0, v2

    and-int/lit16 v0, v0, 0xff

    add-int/2addr v3, v0

    new-array v0, v3, [C

    const/4 v1, 0x0

    :cond_1
    :goto_0
    if-lt v1, v3, :cond_2

    return-object v0

    :cond_2
    iget v2, p0, Lorg/eclipse/jdt/internal/core/index/DiskIndex;->bufferEnd:I

    iget v4, p0, Lorg/eclipse/jdt/internal/core/index/DiskIndex;->bufferIndex:I

    sub-int v4, v2, v4

    div-int/lit8 v4, v4, 0x3

    add-int/2addr v4, v1

    if-gt v4, v3, :cond_3

    if-eqz p1, :cond_3

    iget-object v5, p0, Lorg/eclipse/jdt/internal/core/index/DiskIndex;->streamBuffer:[B

    array-length v5, v5

    if-eq v2, v5, :cond_4

    invoke-virtual {p1}, Ljava/io/InputStream;->available()I

    move-result v2

    if-nez v2, :cond_4

    :cond_3
    move v4, v3

    :cond_4
    :goto_1
    if-lt v1, v4, :cond_5

    if-ge v1, v3, :cond_1

    if-eqz p1, :cond_1

    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/core/index/DiskIndex;->readStreamBuffer(Ljava/io/InputStream;)V

    goto :goto_0

    :cond_5
    iget-object v2, p0, Lorg/eclipse/jdt/internal/core/index/DiskIndex;->streamBuffer:[B

    iget v5, p0, Lorg/eclipse/jdt/internal/core/index/DiskIndex;->bufferIndex:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, Lorg/eclipse/jdt/internal/core/index/DiskIndex;->bufferIndex:I

    aget-byte v7, v2, v5

    and-int/lit16 v8, v7, 0xf0

    const/16 v9, 0x80

    sparse-switch v8, :sswitch_data_0

    new-instance p1, Ljava/io/UTFDataFormatException;

    invoke-direct {p1}, Ljava/io/UTFDataFormatException;-><init>()V

    throw p1

    :sswitch_0
    add-int/lit8 v8, v5, 0x2

    iput v8, p0, Lorg/eclipse/jdt/internal/core/index/DiskIndex;->bufferIndex:I

    aget-byte v6, v2, v6

    int-to-char v6, v6

    add-int/lit8 v5, v5, 0x3

    iput v5, p0, Lorg/eclipse/jdt/internal/core/index/DiskIndex;->bufferIndex:I

    aget-byte v2, v2, v8

    int-to-char v2, v2

    and-int v5, v6, v2

    and-int/lit16 v5, v5, 0xc0

    if-ne v5, v9, :cond_6

    and-int/lit8 v5, v7, 0xf

    shl-int/lit8 v5, v5, 0xc

    int-to-char v5, v5

    and-int/lit8 v6, v6, 0x3f

    shl-int/lit8 v6, v6, 0x6

    or-int/2addr v5, v6

    int-to-char v5, v5

    and-int/lit8 v2, v2, 0x3f

    or-int/2addr v2, v5

    int-to-char v2, v2

    add-int/lit8 v5, v1, 0x1

    aput-char v2, v0, v1

    :goto_2
    move v1, v5

    goto :goto_1

    :cond_6
    new-instance p1, Ljava/io/UTFDataFormatException;

    invoke-direct {p1}, Ljava/io/UTFDataFormatException;-><init>()V

    throw p1

    :sswitch_1
    add-int/lit8 v5, v5, 0x2

    iput v5, p0, Lorg/eclipse/jdt/internal/core/index/DiskIndex;->bufferIndex:I

    aget-byte v2, v2, v6

    int-to-char v2, v2

    and-int/lit16 v5, v2, 0xc0

    if-ne v5, v9, :cond_7

    and-int/lit8 v5, v7, 0x1f

    shl-int/lit8 v5, v5, 0x6

    int-to-char v5, v5

    and-int/lit8 v2, v2, 0x3f

    or-int/2addr v2, v5

    int-to-char v2, v2

    add-int/lit8 v5, v1, 0x1

    aput-char v2, v0, v1

    goto :goto_2

    :cond_7
    new-instance p1, Ljava/io/UTFDataFormatException;

    invoke-direct {p1}, Ljava/io/UTFDataFormatException;-><init>()V

    throw p1

    :sswitch_2
    add-int/lit8 v2, v1, 0x1

    int-to-char v5, v7

    aput-char v5, v0, v1

    move v1, v2

    goto :goto_1

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_2
        0x10 -> :sswitch_2
        0x20 -> :sswitch_2
        0x30 -> :sswitch_2
        0x40 -> :sswitch_2
        0x50 -> :sswitch_2
        0x60 -> :sswitch_2
        0x70 -> :sswitch_2
        0xc0 -> :sswitch_1
        0xd0 -> :sswitch_1
        0xe0 -> :sswitch_0
    .end sparse-switch
.end method

.method private readStreamDocumentArray(Ljava/io/InputStream;I)[I
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-array v0, p2, [I

    if-nez p2, :cond_0

    return-object v0

    :cond_0
    iget v1, p0, Lorg/eclipse/jdt/internal/core/index/DiskIndex;->documentReferenceSize:I

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eq v1, v2, :cond_6

    const/4 v2, 0x2

    if-eq v1, v2, :cond_2

    :goto_0
    if-lt v3, p2, :cond_1

    goto :goto_4

    :cond_1
    add-int/lit8 v1, v3, 0x1

    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/core/index/DiskIndex;->readStreamInt(Ljava/io/InputStream;)I

    move-result v2

    aput v2, v0, v3

    move v3, v1

    goto :goto_0

    :cond_2
    :goto_1
    if-lt v3, p2, :cond_3

    goto :goto_4

    :cond_3
    iget v1, p0, Lorg/eclipse/jdt/internal/core/index/DiskIndex;->bufferEnd:I

    iget v4, p0, Lorg/eclipse/jdt/internal/core/index/DiskIndex;->bufferIndex:I

    sub-int/2addr v1, v4

    div-int/2addr v1, v2

    add-int/2addr v1, v3

    if-le v1, p2, :cond_4

    move v1, p2

    :cond_4
    :goto_2
    if-lt v3, v1, :cond_5

    if-ge v3, p2, :cond_2

    if-eqz p1, :cond_2

    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/core/index/DiskIndex;->readStreamBuffer(Ljava/io/InputStream;)V

    goto :goto_1

    :cond_5
    iget-object v4, p0, Lorg/eclipse/jdt/internal/core/index/DiskIndex;->streamBuffer:[B

    iget v5, p0, Lorg/eclipse/jdt/internal/core/index/DiskIndex;->bufferIndex:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, Lorg/eclipse/jdt/internal/core/index/DiskIndex;->bufferIndex:I

    aget-byte v7, v4, v5

    and-int/lit16 v7, v7, 0xff

    shl-int/lit8 v7, v7, 0x8

    add-int/lit8 v8, v3, 0x1

    add-int/2addr v5, v2

    iput v5, p0, Lorg/eclipse/jdt/internal/core/index/DiskIndex;->bufferIndex:I

    aget-byte v4, v4, v6

    and-int/lit16 v4, v4, 0xff

    add-int/2addr v7, v4

    aput v7, v0, v3

    move v3, v8

    goto :goto_2

    :cond_6
    :goto_3
    if-lt v3, p2, :cond_7

    :goto_4
    return-object v0

    :cond_7
    iget v1, p0, Lorg/eclipse/jdt/internal/core/index/DiskIndex;->bufferEnd:I

    add-int/2addr v1, v3

    iget v2, p0, Lorg/eclipse/jdt/internal/core/index/DiskIndex;->bufferIndex:I

    sub-int/2addr v1, v2

    if-le v1, p2, :cond_8

    move v1, p2

    :cond_8
    :goto_5
    if-lt v3, v1, :cond_9

    if-ge v3, p2, :cond_6

    if-eqz p1, :cond_6

    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/core/index/DiskIndex;->readStreamBuffer(Ljava/io/InputStream;)V

    goto :goto_3

    :cond_9
    add-int/lit8 v2, v3, 0x1

    iget-object v4, p0, Lorg/eclipse/jdt/internal/core/index/DiskIndex;->streamBuffer:[B

    iget v5, p0, Lorg/eclipse/jdt/internal/core/index/DiskIndex;->bufferIndex:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, Lorg/eclipse/jdt/internal/core/index/DiskIndex;->bufferIndex:I

    aget-byte v4, v4, v5

    and-int/lit16 v4, v4, 0xff

    aput v4, v0, v3

    move v3, v2

    goto :goto_5
.end method

.method private readStreamInt(Ljava/io/InputStream;)I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lorg/eclipse/jdt/internal/core/index/DiskIndex;->bufferIndex:I

    add-int/lit8 v0, v0, 0x4

    iget v1, p0, Lorg/eclipse/jdt/internal/core/index/DiskIndex;->bufferEnd:I

    if-lt v0, v1, :cond_0

    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/core/index/DiskIndex;->readStreamBuffer(Ljava/io/InputStream;)V

    :cond_0
    iget-object p1, p0, Lorg/eclipse/jdt/internal/core/index/DiskIndex;->streamBuffer:[B

    iget v0, p0, Lorg/eclipse/jdt/internal/core/index/DiskIndex;->bufferIndex:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/eclipse/jdt/internal/core/index/DiskIndex;->bufferIndex:I

    aget-byte v2, p1, v0

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x18

    add-int/lit8 v3, v0, 0x2

    iput v3, p0, Lorg/eclipse/jdt/internal/core/index/DiskIndex;->bufferIndex:I

    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    add-int/2addr v2, v1

    add-int/lit8 v1, v0, 0x3

    iput v1, p0, Lorg/eclipse/jdt/internal/core/index/DiskIndex;->bufferIndex:I

    aget-byte v3, p1, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x8

    add-int/2addr v2, v3

    add-int/lit8 v0, v0, 0x4

    iput v0, p0, Lorg/eclipse/jdt/internal/core/index/DiskIndex;->bufferIndex:I

    aget-byte p1, p1, v1

    and-int/lit16 p1, p1, 0xff

    add-int/2addr v2, p1

    return v2
.end method

.method private writeAllDocumentNames([Ljava/lang/String;Ljava/io/FileOutputStream;)V
    .locals 20
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    array-length v3, v1

    if-eqz v3, :cond_10

    const/16 v3, 0x800

    new-array v4, v3, [B

    iput-object v4, v0, Lorg/eclipse/jdt/internal/core/index/DiskIndex;->streamBuffer:[B

    const/4 v4, 0x0

    iput v4, v0, Lorg/eclipse/jdt/internal/core/index/DiskIndex;->bufferIndex:I

    iput v4, v0, Lorg/eclipse/jdt/internal/core/index/DiskIndex;->streamEnd:I

    sget-object v5, Lorg/eclipse/jdt/internal/core/index/DiskIndex;->SIGNATURE_CHARS:[C

    invoke-direct {v0, v2, v5}, Lorg/eclipse/jdt/internal/core/index/DiskIndex;->writeStreamChars(Ljava/io/FileOutputStream;[C)V

    iget v5, v0, Lorg/eclipse/jdt/internal/core/index/DiskIndex;->streamEnd:I

    iput v5, v0, Lorg/eclipse/jdt/internal/core/index/DiskIndex;->headerInfoOffset:I

    const/4 v5, -0x1

    invoke-direct {v0, v2, v5}, Lorg/eclipse/jdt/internal/core/index/DiskIndex;->writeStreamInt(Ljava/io/FileOutputStream;I)V

    array-length v6, v1

    div-int/lit8 v7, v6, 0x64

    add-int/lit8 v8, v7, 0x1

    iput v8, v0, Lorg/eclipse/jdt/internal/core/index/DiskIndex;->numberOfChunks:I

    rem-int/lit8 v8, v6, 0x64

    iput v8, v0, Lorg/eclipse/jdt/internal/core/index/DiskIndex;->sizeOfLastChunk:I

    const/16 v9, 0x64

    if-nez v8, :cond_0

    iput v7, v0, Lorg/eclipse/jdt/internal/core/index/DiskIndex;->numberOfChunks:I

    iput v9, v0, Lorg/eclipse/jdt/internal/core/index/DiskIndex;->sizeOfLastChunk:I

    :cond_0
    const/16 v7, 0x7f

    const/4 v10, 0x1

    if-gt v6, v7, :cond_1

    move v6, v10

    goto :goto_0

    :cond_1
    const/16 v7, 0x7fff

    if-gt v6, v7, :cond_2

    const/4 v6, 0x2

    goto :goto_0

    :cond_2
    const/4 v6, 0x4

    :goto_0
    iput v6, v0, Lorg/eclipse/jdt/internal/core/index/DiskIndex;->documentReferenceSize:I

    iget v6, v0, Lorg/eclipse/jdt/internal/core/index/DiskIndex;->numberOfChunks:I

    new-array v7, v6, [I

    iput-object v7, v0, Lorg/eclipse/jdt/internal/core/index/DiskIndex;->chunkOffsets:[I

    sub-int/2addr v6, v10

    move v7, v4

    :goto_1
    iget v11, v0, Lorg/eclipse/jdt/internal/core/index/DiskIndex;->numberOfChunks:I

    if-lt v7, v11, :cond_3

    iget v1, v0, Lorg/eclipse/jdt/internal/core/index/DiskIndex;->streamEnd:I

    add-int/2addr v1, v10

    iput v1, v0, Lorg/eclipse/jdt/internal/core/index/DiskIndex;->startOfCategoryTables:I

    return-void

    :cond_3
    iget-object v11, v0, Lorg/eclipse/jdt/internal/core/index/DiskIndex;->chunkOffsets:[I

    iget v12, v0, Lorg/eclipse/jdt/internal/core/index/DiskIndex;->streamEnd:I

    aput v12, v11, v7

    if-ne v7, v6, :cond_4

    iget v11, v0, Lorg/eclipse/jdt/internal/core/index/DiskIndex;->sizeOfLastChunk:I

    goto :goto_2

    :cond_4
    move v11, v9

    :goto_2
    mul-int/lit8 v12, v7, 0x64

    aget-object v13, v1, v12

    invoke-virtual {v13}, Ljava/lang/String;->toCharArray()[C

    move-result-object v14

    invoke-direct {v0, v2, v14}, Lorg/eclipse/jdt/internal/core/index/DiskIndex;->writeStreamChars(Ljava/io/FileOutputStream;[C)V

    move v14, v10

    :goto_3
    if-lt v14, v11, :cond_5

    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_5
    add-int v15, v12, v14

    aget-object v15, v1, v15

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v9

    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v10

    if-ge v9, v10, :cond_6

    move v8, v9

    goto :goto_4

    :cond_6
    move v8, v10

    :goto_4
    invoke-virtual {v13, v4}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-virtual {v15, v4}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-eq v3, v5, :cond_7

    goto :goto_5

    :cond_7
    add-int/lit8 v4, v4, 0x1

    if-ne v8, v4, :cond_f

    :goto_5
    const/16 v3, 0xff

    if-le v4, v3, :cond_8

    move v5, v3

    goto :goto_6

    :cond_8
    move v5, v4

    :goto_6
    const/4 v4, 0x0

    const/16 v19, -0x1

    :goto_7
    add-int/lit8 v9, v9, -0x1

    invoke-virtual {v13, v9}, Ljava/lang/String;->charAt(I)C

    move-result v8

    add-int/lit8 v10, v10, -0x1

    invoke-virtual {v15, v10}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-eq v8, v3, :cond_9

    :goto_8
    const/16 v3, 0xff

    goto :goto_a

    :cond_9
    add-int/lit8 v4, v4, 0x1

    if-ne v10, v5, :cond_a

    goto :goto_9

    :cond_a
    if-nez v9, :cond_e

    :goto_9
    goto :goto_8

    :goto_a
    if-le v4, v3, :cond_b

    goto :goto_b

    :cond_b
    move v3, v4

    :goto_b
    iget v4, v0, Lorg/eclipse/jdt/internal/core/index/DiskIndex;->bufferIndex:I

    add-int/lit8 v8, v4, 0x2

    const/16 v9, 0x800

    if-lt v8, v9, :cond_c

    iget-object v8, v0, Lorg/eclipse/jdt/internal/core/index/DiskIndex;->streamBuffer:[B

    const/4 v10, 0x0

    invoke-virtual {v2, v8, v10, v4}, Ljava/io/FileOutputStream;->write([BII)V

    iput v10, v0, Lorg/eclipse/jdt/internal/core/index/DiskIndex;->bufferIndex:I

    goto :goto_c

    :cond_c
    const/4 v10, 0x0

    :goto_c
    iget-object v4, v0, Lorg/eclipse/jdt/internal/core/index/DiskIndex;->streamBuffer:[B

    iget v8, v0, Lorg/eclipse/jdt/internal/core/index/DiskIndex;->bufferIndex:I

    add-int/lit8 v13, v8, 0x1

    iput v13, v0, Lorg/eclipse/jdt/internal/core/index/DiskIndex;->bufferIndex:I

    int-to-byte v9, v5

    aput-byte v9, v4, v8

    const/16 v16, 0x2

    add-int/lit8 v8, v8, 0x2

    iput v8, v0, Lorg/eclipse/jdt/internal/core/index/DiskIndex;->bufferIndex:I

    int-to-byte v8, v3

    aput-byte v8, v4, v13

    iget v4, v0, Lorg/eclipse/jdt/internal/core/index/DiskIndex;->streamEnd:I

    add-int/lit8 v4, v4, 0x2

    iput v4, v0, Lorg/eclipse/jdt/internal/core/index/DiskIndex;->streamEnd:I

    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v4

    sub-int/2addr v4, v3

    if-ge v5, v4, :cond_d

    invoke-virtual {v15}, Ljava/lang/String;->toCharArray()[C

    move-result-object v3

    invoke-static {v3, v5, v4}, Lorg/eclipse/jdt/core/compiler/CharOperation;->subarray([CII)[C

    move-result-object v3

    goto :goto_d

    :cond_d
    sget-object v3, Lorg/eclipse/jdt/core/compiler/CharOperation;->NO_CHAR:[C

    :goto_d
    invoke-direct {v0, v2, v3}, Lorg/eclipse/jdt/internal/core/index/DiskIndex;->writeStreamChars(Ljava/io/FileOutputStream;[C)V

    add-int/lit8 v14, v14, 0x1

    move v4, v10

    move-object v13, v15

    move/from16 v5, v19

    const/16 v3, 0x800

    const/16 v9, 0x64

    const/4 v10, 0x1

    goto/16 :goto_3

    :cond_e
    const/16 v16, 0x2

    const/16 v17, 0x800

    const/16 v18, 0x0

    const/16 v3, 0xff

    goto :goto_7

    :cond_f
    const/16 v16, 0x2

    const/16 v17, 0x800

    const/16 v18, 0x0

    const/16 v19, -0x1

    move/from16 v5, v19

    goto/16 :goto_4

    :cond_10
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1
.end method

.method private writeCategories(Ljava/io/FileOutputStream;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/index/DiskIndex;->categoryTables:Lorg/eclipse/jdt/internal/compiler/util/HashtableOfObject;

    iget-object v1, v0, Lorg/eclipse/jdt/internal/compiler/util/HashtableOfObject;->keyTable:[[C

    iget-object v0, v0, Lorg/eclipse/jdt/internal/compiler/util/HashtableOfObject;->valueTable:[Ljava/lang/Object;

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-lt v3, v2, :cond_0

    const/4 p1, 0x0

    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/index/DiskIndex;->categoryTables:Lorg/eclipse/jdt/internal/compiler/util/HashtableOfObject;

    return-void

    :cond_0
    aget-object v4, v1, v3

    if-eqz v4, :cond_1

    aget-object v5, v0, v3

    check-cast v5, Lorg/eclipse/jdt/internal/compiler/util/HashtableOfObject;

    invoke-direct {p0, v4, v5, p1}, Lorg/eclipse/jdt/internal/core/index/DiskIndex;->writeCategoryTable([CLorg/eclipse/jdt/internal/compiler/util/HashtableOfObject;Ljava/io/FileOutputStream;)V

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method private writeCategoryTable([CLorg/eclipse/jdt/internal/compiler/util/HashtableOfObject;Ljava/io/FileOutputStream;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p2, Lorg/eclipse/jdt/internal/compiler/util/HashtableOfObject;->valueTable:[Ljava/lang/Object;

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    const/16 v4, 0x100

    if-lt v3, v1, :cond_4

    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/index/DiskIndex;->categoryOffsets:Lorg/eclipse/jdt/internal/compiler/util/HashtableOfIntValues;

    iget v3, p0, Lorg/eclipse/jdt/internal/core/index/DiskIndex;->streamEnd:I

    invoke-virtual {v1, p1, v3}, Lorg/eclipse/jdt/internal/compiler/util/HashtableOfIntValues;->put([CI)I

    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/index/DiskIndex;->categoryTables:Lorg/eclipse/jdt/internal/compiler/util/HashtableOfObject;

    const/4 v3, 0x0

    invoke-virtual {v1, p1, v3}, Lorg/eclipse/jdt/internal/compiler/util/HashtableOfObject;->put([CLjava/lang/Object;)Ljava/lang/Object;

    iget p1, p2, Lorg/eclipse/jdt/internal/compiler/util/HashtableOfObject;->elementSize:I

    invoke-direct {p0, p3, p1}, Lorg/eclipse/jdt/internal/core/index/DiskIndex;->writeStreamInt(Ljava/io/FileOutputStream;I)V

    iget-object v5, p2, Lorg/eclipse/jdt/internal/compiler/util/HashtableOfObject;->keyTable:[[C

    array-length v6, v5

    move p1, v2

    :goto_1
    if-lt p1, v6, :cond_0

    return-void

    :cond_0
    aget-object p2, v0, p1

    if-eqz p2, :cond_3

    aget-object v1, v5, p1

    invoke-direct {p0, p3, v1}, Lorg/eclipse/jdt/internal/core/index/DiskIndex;->writeStreamChars(Ljava/io/FileOutputStream;[C)V

    instance-of v1, p2, [I

    if-eqz v1, :cond_2

    check-cast p2, [I

    array-length v1, p2

    const/4 v3, 0x1

    if-ne v1, v3, :cond_1

    aget p2, p2, v2

    neg-int p2, p2

    invoke-direct {p0, p3, p2}, Lorg/eclipse/jdt/internal/core/index/DiskIndex;->writeStreamInt(Ljava/io/FileOutputStream;I)V

    goto :goto_2

    :cond_1
    invoke-direct {p0, p2, p3}, Lorg/eclipse/jdt/internal/core/index/DiskIndex;->writeDocumentNumbers([ILjava/io/FileOutputStream;)V

    goto :goto_2

    :cond_2
    invoke-direct {p0, p3, v4}, Lorg/eclipse/jdt/internal/core/index/DiskIndex;->writeStreamInt(Ljava/io/FileOutputStream;I)V

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-direct {p0, p3, p2}, Lorg/eclipse/jdt/internal/core/index/DiskIndex;->writeStreamInt(Ljava/io/FileOutputStream;I)V

    :cond_3
    :goto_2
    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    :cond_4
    aget-object v5, v0, v3

    if-eqz v5, :cond_6

    instance-of v6, v5, Lorg/eclipse/jdt/internal/core/index/DiskIndex$IntList;

    if-eqz v6, :cond_5

    check-cast v5, Lorg/eclipse/jdt/internal/core/index/DiskIndex$IntList;

    invoke-virtual {v5}, Lorg/eclipse/jdt/internal/core/index/DiskIndex$IntList;->asArray()[I

    move-result-object v5

    aput-object v5, v0, v3

    :cond_5
    check-cast v5, [I

    array-length v6, v5

    if-lt v6, v4, :cond_6

    iget v4, p0, Lorg/eclipse/jdt/internal/core/index/DiskIndex;->streamEnd:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v0, v3

    invoke-direct {p0, v5, p3}, Lorg/eclipse/jdt/internal/core/index/DiskIndex;->writeDocumentNumbers([ILjava/io/FileOutputStream;)V

    :cond_6
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method private writeDocumentNumbers([ILjava/io/FileOutputStream;)V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    array-length v0, p1

    invoke-direct {p0, p2, v0}, Lorg/eclipse/jdt/internal/core/index/DiskIndex;->writeStreamInt(Ljava/io/FileOutputStream;I)V

    invoke-static {p1}, Lorg/eclipse/jdt/internal/core/util/Util;->sort([I)V

    iget v1, p0, Lorg/eclipse/jdt/internal/core/index/DiskIndex;->documentReferenceSize:I

    const/16 v2, 0x800

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eq v1, v3, :cond_5

    const/4 v3, 0x2

    if-eq v1, v3, :cond_1

    :goto_0
    if-lt v4, v0, :cond_0

    goto/16 :goto_6

    :cond_0
    add-int/lit8 v1, v4, 0x1

    aget v2, p1, v4

    invoke-direct {p0, p2, v2}, Lorg/eclipse/jdt/internal/core/index/DiskIndex;->writeStreamInt(Ljava/io/FileOutputStream;I)V

    move v4, v1

    goto :goto_0

    :cond_1
    move v1, v4

    :goto_1
    iget v5, p0, Lorg/eclipse/jdt/internal/core/index/DiskIndex;->bufferIndex:I

    sub-int v6, v0, v1

    mul-int/2addr v6, v3

    add-int/2addr v6, v5

    if-ge v6, v2, :cond_3

    :goto_2
    if-lt v1, v0, :cond_2

    iget p1, p0, Lorg/eclipse/jdt/internal/core/index/DiskIndex;->streamEnd:I

    mul-int/2addr v0, v3

    add-int/2addr p1, v0

    iput p1, p0, Lorg/eclipse/jdt/internal/core/index/DiskIndex;->streamEnd:I

    goto :goto_6

    :cond_2
    iget-object p2, p0, Lorg/eclipse/jdt/internal/core/index/DiskIndex;->streamBuffer:[B

    iget v2, p0, Lorg/eclipse/jdt/internal/core/index/DiskIndex;->bufferIndex:I

    add-int/lit8 v4, v2, 0x1

    iput v4, p0, Lorg/eclipse/jdt/internal/core/index/DiskIndex;->bufferIndex:I

    aget v5, p1, v1

    shr-int/lit8 v6, v5, 0x8

    int-to-byte v6, v6

    aput-byte v6, p2, v2

    add-int/2addr v2, v3

    iput v2, p0, Lorg/eclipse/jdt/internal/core/index/DiskIndex;->bufferIndex:I

    add-int/lit8 v1, v1, 0x1

    int-to-byte v2, v5

    aput-byte v2, p2, v4

    goto :goto_2

    :cond_3
    rsub-int v5, v5, 0x800

    div-int/2addr v5, v3

    move v6, v4

    :goto_3
    if-lt v6, v5, :cond_4

    iget-object v5, p0, Lorg/eclipse/jdt/internal/core/index/DiskIndex;->streamBuffer:[B

    iget v6, p0, Lorg/eclipse/jdt/internal/core/index/DiskIndex;->bufferIndex:I

    invoke-virtual {p2, v5, v4, v6}, Ljava/io/FileOutputStream;->write([BII)V

    iput v4, p0, Lorg/eclipse/jdt/internal/core/index/DiskIndex;->bufferIndex:I

    goto :goto_1

    :cond_4
    iget-object v7, p0, Lorg/eclipse/jdt/internal/core/index/DiskIndex;->streamBuffer:[B

    iget v8, p0, Lorg/eclipse/jdt/internal/core/index/DiskIndex;->bufferIndex:I

    add-int/lit8 v9, v8, 0x1

    iput v9, p0, Lorg/eclipse/jdt/internal/core/index/DiskIndex;->bufferIndex:I

    aget v10, p1, v1

    shr-int/lit8 v11, v10, 0x8

    int-to-byte v11, v11

    aput-byte v11, v7, v8

    add-int/2addr v8, v3

    iput v8, p0, Lorg/eclipse/jdt/internal/core/index/DiskIndex;->bufferIndex:I

    add-int/lit8 v1, v1, 0x1

    int-to-byte v8, v10

    aput-byte v8, v7, v9

    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    :cond_5
    move v1, v4

    :goto_4
    iget v3, p0, Lorg/eclipse/jdt/internal/core/index/DiskIndex;->bufferIndex:I

    add-int v5, v3, v0

    sub-int/2addr v5, v1

    if-ge v5, v2, :cond_7

    :goto_5
    if-lt v1, v0, :cond_6

    iget p1, p0, Lorg/eclipse/jdt/internal/core/index/DiskIndex;->streamEnd:I

    add-int/2addr p1, v0

    iput p1, p0, Lorg/eclipse/jdt/internal/core/index/DiskIndex;->streamEnd:I

    :goto_6
    return-void

    :cond_6
    iget-object p2, p0, Lorg/eclipse/jdt/internal/core/index/DiskIndex;->streamBuffer:[B

    iget v2, p0, Lorg/eclipse/jdt/internal/core/index/DiskIndex;->bufferIndex:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lorg/eclipse/jdt/internal/core/index/DiskIndex;->bufferIndex:I

    add-int/lit8 v3, v1, 0x1

    aget v1, p1, v1

    int-to-byte v1, v1

    aput-byte v1, p2, v2

    move v1, v3

    goto :goto_5

    :cond_7
    rsub-int v3, v3, 0x800

    move v5, v4

    :goto_7
    if-lt v5, v3, :cond_8

    iget-object v3, p0, Lorg/eclipse/jdt/internal/core/index/DiskIndex;->streamBuffer:[B

    iget v5, p0, Lorg/eclipse/jdt/internal/core/index/DiskIndex;->bufferIndex:I

    invoke-virtual {p2, v3, v4, v5}, Ljava/io/FileOutputStream;->write([BII)V

    iput v4, p0, Lorg/eclipse/jdt/internal/core/index/DiskIndex;->bufferIndex:I

    goto :goto_4

    :cond_8
    iget-object v6, p0, Lorg/eclipse/jdt/internal/core/index/DiskIndex;->streamBuffer:[B

    iget v7, p0, Lorg/eclipse/jdt/internal/core/index/DiskIndex;->bufferIndex:I

    add-int/lit8 v8, v7, 0x1

    iput v8, p0, Lorg/eclipse/jdt/internal/core/index/DiskIndex;->bufferIndex:I

    add-int/lit8 v8, v1, 0x1

    aget v1, p1, v1

    int-to-byte v1, v1

    aput-byte v1, v6, v7

    add-int/lit8 v5, v5, 0x1

    move v1, v8

    goto :goto_7
.end method

.method private writeHeaderInfo(Ljava/io/FileOutputStream;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lorg/eclipse/jdt/internal/core/index/DiskIndex;->numberOfChunks:I

    invoke-direct {p0, p1, v0}, Lorg/eclipse/jdt/internal/core/index/DiskIndex;->writeStreamInt(Ljava/io/FileOutputStream;I)V

    iget v0, p0, Lorg/eclipse/jdt/internal/core/index/DiskIndex;->bufferIndex:I

    add-int/lit8 v1, v0, 0x3

    const/16 v2, 0x800

    const/4 v3, 0x0

    if-lt v1, v2, :cond_0

    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/index/DiskIndex;->streamBuffer:[B

    invoke-virtual {p1, v1, v3, v0}, Ljava/io/FileOutputStream;->write([BII)V

    iput v3, p0, Lorg/eclipse/jdt/internal/core/index/DiskIndex;->bufferIndex:I

    :cond_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/index/DiskIndex;->streamBuffer:[B

    iget v1, p0, Lorg/eclipse/jdt/internal/core/index/DiskIndex;->bufferIndex:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/eclipse/jdt/internal/core/index/DiskIndex;->bufferIndex:I

    iget v4, p0, Lorg/eclipse/jdt/internal/core/index/DiskIndex;->sizeOfLastChunk:I

    int-to-byte v4, v4

    aput-byte v4, v0, v1

    add-int/lit8 v4, v1, 0x2

    iput v4, p0, Lorg/eclipse/jdt/internal/core/index/DiskIndex;->bufferIndex:I

    iget v5, p0, Lorg/eclipse/jdt/internal/core/index/DiskIndex;->documentReferenceSize:I

    int-to-byte v5, v5

    aput-byte v5, v0, v2

    add-int/lit8 v1, v1, 0x3

    iput v1, p0, Lorg/eclipse/jdt/internal/core/index/DiskIndex;->bufferIndex:I

    iget-char v1, p0, Lorg/eclipse/jdt/internal/core/index/DiskIndex;->separator:C

    int-to-byte v1, v1

    aput-byte v1, v0, v4

    iget v0, p0, Lorg/eclipse/jdt/internal/core/index/DiskIndex;->streamEnd:I

    add-int/lit8 v0, v0, 0x3

    iput v0, p0, Lorg/eclipse/jdt/internal/core/index/DiskIndex;->streamEnd:I

    move v0, v3

    :goto_0
    iget v1, p0, Lorg/eclipse/jdt/internal/core/index/DiskIndex;->numberOfChunks:I

    if-lt v0, v1, :cond_4

    iget v0, p0, Lorg/eclipse/jdt/internal/core/index/DiskIndex;->startOfCategoryTables:I

    invoke-direct {p0, p1, v0}, Lorg/eclipse/jdt/internal/core/index/DiskIndex;->writeStreamInt(Ljava/io/FileOutputStream;I)V

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/index/DiskIndex;->categoryOffsets:Lorg/eclipse/jdt/internal/compiler/util/HashtableOfIntValues;

    iget v0, v0, Lorg/eclipse/jdt/internal/compiler/util/HashtableOfIntValues;->elementSize:I

    invoke-direct {p0, p1, v0}, Lorg/eclipse/jdt/internal/core/index/DiskIndex;->writeStreamInt(Ljava/io/FileOutputStream;I)V

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/index/DiskIndex;->categoryOffsets:Lorg/eclipse/jdt/internal/compiler/util/HashtableOfIntValues;

    iget-object v1, v0, Lorg/eclipse/jdt/internal/compiler/util/HashtableOfIntValues;->keyTable:[[C

    iget-object v2, v0, Lorg/eclipse/jdt/internal/compiler/util/HashtableOfIntValues;->valueTable:[I

    array-length v4, v1

    move v0, v3

    :goto_1
    if-lt v0, v4, :cond_2

    iget v0, p0, Lorg/eclipse/jdt/internal/core/index/DiskIndex;->bufferIndex:I

    if-lez v0, :cond_1

    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/index/DiskIndex;->streamBuffer:[B

    invoke-virtual {p1, v1, v3, v0}, Ljava/io/FileOutputStream;->write([BII)V

    iput v3, p0, Lorg/eclipse/jdt/internal/core/index/DiskIndex;->bufferIndex:I

    :cond_1
    return-void

    :cond_2
    aget-object v5, v1, v0

    if-eqz v5, :cond_3

    invoke-direct {p0, p1, v5}, Lorg/eclipse/jdt/internal/core/index/DiskIndex;->writeStreamChars(Ljava/io/FileOutputStream;[C)V

    aget v5, v2, v0

    invoke-direct {p0, p1, v5}, Lorg/eclipse/jdt/internal/core/index/DiskIndex;->writeStreamInt(Ljava/io/FileOutputStream;I)V

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_4
    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/index/DiskIndex;->chunkOffsets:[I

    aget v1, v1, v0

    invoke-direct {p0, p1, v1}, Lorg/eclipse/jdt/internal/core/index/DiskIndex;->writeStreamInt(Ljava/io/FileOutputStream;I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private writeOffsetToHeader(I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-lez p1, :cond_0

    new-instance v0, Ljava/io/RandomAccessFile;

    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/index/DiskIndex;->indexLocation:Lorg/eclipse/jdt/internal/core/index/IndexLocation;

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/core/index/IndexLocation;->getIndexFile()Ljava/io/File;

    move-result-object v1

    const-string v2, "rw"

    invoke-direct {v0, v1, v2}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    :try_start_0
    iget v1, p0, Lorg/eclipse/jdt/internal/core/index/DiskIndex;->headerInfoOffset:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Ljava/io/RandomAccessFile;->seek(J)V

    invoke-virtual {v0, p1}, Ljava/io/RandomAccessFile;->writeInt(I)V

    iput p1, p0, Lorg/eclipse/jdt/internal/core/index/DiskIndex;->headerInfoOffset:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V

    goto :goto_0

    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V

    throw p1

    :cond_0
    :goto_0
    return-void
.end method

.method private writeStreamChars(Ljava/io/FileOutputStream;[C)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget v0, p0, Lorg/eclipse/jdt/internal/core/index/DiskIndex;->bufferIndex:I

    add-int/lit8 v1, v0, 0x2

    const/4 v2, 0x0

    const/16 v3, 0x800

    if-lt v1, v3, :cond_0

    .line 2
    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/index/DiskIndex;->streamBuffer:[B

    invoke-virtual {p1, v1, v2, v0}, Ljava/io/FileOutputStream;->write([BII)V

    .line 3
    iput v2, p0, Lorg/eclipse/jdt/internal/core/index/DiskIndex;->bufferIndex:I

    .line 4
    :cond_0
    array-length v0, p2

    .line 5
    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/index/DiskIndex;->streamBuffer:[B

    iget v4, p0, Lorg/eclipse/jdt/internal/core/index/DiskIndex;->bufferIndex:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lorg/eclipse/jdt/internal/core/index/DiskIndex;->bufferIndex:I

    ushr-int/lit8 v6, v0, 0x8

    and-int/lit16 v6, v6, 0xff

    int-to-byte v6, v6

    aput-byte v6, v1, v4

    add-int/lit8 v4, v4, 0x2

    .line 6
    iput v4, p0, Lorg/eclipse/jdt/internal/core/index/DiskIndex;->bufferIndex:I

    and-int/lit16 v6, v0, 0xff

    int-to-byte v6, v6

    aput-byte v6, v1, v5

    .line 7
    iget v5, p0, Lorg/eclipse/jdt/internal/core/index/DiskIndex;->streamEnd:I

    add-int/lit8 v5, v5, 0x2

    iput v5, p0, Lorg/eclipse/jdt/internal/core/index/DiskIndex;->streamEnd:I

    mul-int/lit8 v5, v0, 0x3

    if-gt v5, v3, :cond_2

    add-int/2addr v5, v4

    if-le v5, v3, :cond_1

    .line 8
    invoke-virtual {p1, v1, v2, v4}, Ljava/io/FileOutputStream;->write([BII)V

    .line 9
    iput v2, p0, Lorg/eclipse/jdt/internal/core/index/DiskIndex;->bufferIndex:I

    .line 10
    :cond_1
    invoke-direct {p0, p1, p2, v2, v0}, Lorg/eclipse/jdt/internal/core/index/DiskIndex;->writeStreamChars(Ljava/io/FileOutputStream;[CII)V

    goto :goto_1

    :cond_2
    move v1, v2

    :goto_0
    if-lt v1, v0, :cond_3

    :goto_1
    return-void

    .line 11
    :cond_3
    iget-object v3, p0, Lorg/eclipse/jdt/internal/core/index/DiskIndex;->streamBuffer:[B

    iget v4, p0, Lorg/eclipse/jdt/internal/core/index/DiskIndex;->bufferIndex:I

    invoke-virtual {p1, v3, v2, v4}, Ljava/io/FileOutputStream;->write([BII)V

    .line 12
    iput v2, p0, Lorg/eclipse/jdt/internal/core/index/DiskIndex;->bufferIndex:I

    sub-int v3, v0, v1

    const/16 v4, 0x2aa

    if-ge v4, v3, :cond_4

    move v3, v4

    :cond_4
    add-int/2addr v3, v1

    .line 13
    invoke-direct {p0, p1, p2, v1, v3}, Lorg/eclipse/jdt/internal/core/index/DiskIndex;->writeStreamChars(Ljava/io/FileOutputStream;[CII)V

    move v1, v3

    goto :goto_0
.end method

.method private writeStreamChars(Ljava/io/FileOutputStream;[CII)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 14
    iget p1, p0, Lorg/eclipse/jdt/internal/core/index/DiskIndex;->bufferIndex:I

    :goto_0
    if-lt p3, p4, :cond_0

    .line 15
    iget p2, p0, Lorg/eclipse/jdt/internal/core/index/DiskIndex;->streamEnd:I

    iget p3, p0, Lorg/eclipse/jdt/internal/core/index/DiskIndex;->bufferIndex:I

    sub-int/2addr p3, p1

    add-int/2addr p2, p3

    iput p2, p0, Lorg/eclipse/jdt/internal/core/index/DiskIndex;->streamEnd:I

    return-void

    :cond_0
    add-int/lit8 v0, p3, 0x1

    .line 16
    aget-char p3, p2, p3

    and-int/lit8 v1, p3, 0x7f

    if-ne v1, p3, :cond_1

    .line 17
    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/index/DiskIndex;->streamBuffer:[B

    iget v2, p0, Lorg/eclipse/jdt/internal/core/index/DiskIndex;->bufferIndex:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lorg/eclipse/jdt/internal/core/index/DiskIndex;->bufferIndex:I

    int-to-byte p3, p3

    aput-byte p3, v1, v2

    goto :goto_1

    :cond_1
    and-int/lit16 v1, p3, 0x7ff

    if-ne v1, p3, :cond_2

    shr-int/lit8 v1, p3, 0x6

    int-to-byte v1, v1

    and-int/lit8 v1, v1, 0x1f

    int-to-byte v1, v1

    or-int/lit16 v1, v1, 0xc0

    int-to-byte v1, v1

    .line 18
    iget-object v2, p0, Lorg/eclipse/jdt/internal/core/index/DiskIndex;->streamBuffer:[B

    iget v3, p0, Lorg/eclipse/jdt/internal/core/index/DiskIndex;->bufferIndex:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lorg/eclipse/jdt/internal/core/index/DiskIndex;->bufferIndex:I

    aput-byte v1, v2, v3

    and-int/lit8 p3, p3, 0x3f

    int-to-byte p3, p3

    or-int/lit16 p3, p3, 0x80

    int-to-byte p3, p3

    add-int/lit8 v3, v3, 0x2

    .line 19
    iput v3, p0, Lorg/eclipse/jdt/internal/core/index/DiskIndex;->bufferIndex:I

    aput-byte p3, v2, v4

    goto :goto_1

    :cond_2
    shr-int/lit8 v1, p3, 0xc

    int-to-byte v1, v1

    and-int/lit8 v1, v1, 0xf

    int-to-byte v1, v1

    or-int/lit16 v1, v1, 0xe0

    int-to-byte v1, v1

    .line 20
    iget-object v2, p0, Lorg/eclipse/jdt/internal/core/index/DiskIndex;->streamBuffer:[B

    iget v3, p0, Lorg/eclipse/jdt/internal/core/index/DiskIndex;->bufferIndex:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lorg/eclipse/jdt/internal/core/index/DiskIndex;->bufferIndex:I

    aput-byte v1, v2, v3

    shr-int/lit8 v1, p3, 0x6

    int-to-byte v1, v1

    and-int/lit8 v1, v1, 0x3f

    int-to-byte v1, v1

    or-int/lit16 v1, v1, 0x80

    int-to-byte v1, v1

    add-int/lit8 v5, v3, 0x2

    .line 21
    iput v5, p0, Lorg/eclipse/jdt/internal/core/index/DiskIndex;->bufferIndex:I

    aput-byte v1, v2, v4

    and-int/lit8 p3, p3, 0x3f

    int-to-byte p3, p3

    or-int/lit16 p3, p3, 0x80

    int-to-byte p3, p3

    add-int/lit8 v3, v3, 0x3

    .line 22
    iput v3, p0, Lorg/eclipse/jdt/internal/core/index/DiskIndex;->bufferIndex:I

    aput-byte p3, v2, v5

    :goto_1
    move p3, v0

    goto :goto_0
.end method

.method private writeStreamInt(Ljava/io/FileOutputStream;I)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lorg/eclipse/jdt/internal/core/index/DiskIndex;->bufferIndex:I

    add-int/lit8 v1, v0, 0x4

    const/16 v2, 0x800

    if-lt v1, v2, :cond_0

    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/index/DiskIndex;->streamBuffer:[B

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2, v0}, Ljava/io/FileOutputStream;->write([BII)V

    iput v2, p0, Lorg/eclipse/jdt/internal/core/index/DiskIndex;->bufferIndex:I

    :cond_0
    iget-object p1, p0, Lorg/eclipse/jdt/internal/core/index/DiskIndex;->streamBuffer:[B

    iget v0, p0, Lorg/eclipse/jdt/internal/core/index/DiskIndex;->bufferIndex:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/eclipse/jdt/internal/core/index/DiskIndex;->bufferIndex:I

    shr-int/lit8 v2, p2, 0x18

    int-to-byte v2, v2

    aput-byte v2, p1, v0

    add-int/lit8 v2, v0, 0x2

    iput v2, p0, Lorg/eclipse/jdt/internal/core/index/DiskIndex;->bufferIndex:I

    shr-int/lit8 v3, p2, 0x10

    int-to-byte v3, v3

    aput-byte v3, p1, v1

    add-int/lit8 v1, v0, 0x3

    iput v1, p0, Lorg/eclipse/jdt/internal/core/index/DiskIndex;->bufferIndex:I

    shr-int/lit8 v3, p2, 0x8

    int-to-byte v3, v3

    aput-byte v3, p1, v2

    add-int/lit8 v0, v0, 0x4

    iput v0, p0, Lorg/eclipse/jdt/internal/core/index/DiskIndex;->bufferIndex:I

    int-to-byte p2, p2

    aput-byte p2, p1, v1

    iget p1, p0, Lorg/eclipse/jdt/internal/core/index/DiskIndex;->streamEnd:I

    add-int/lit8 p1, p1, 0x4

    iput p1, p0, Lorg/eclipse/jdt/internal/core/index/DiskIndex;->streamEnd:I

    return-void
.end method


# virtual methods
.method public addDocumentNames(Ljava/lang/String;Lorg/eclipse/jdt/internal/core/index/MemoryIndex;)Lorg/eclipse/jdt/internal/compiler/util/SimpleSet;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/core/index/DiskIndex;->readAllDocumentNames()[Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lorg/eclipse/jdt/internal/compiler/util/SimpleSet;

    array-length v2, v0

    invoke-direct {v1, v2}, Lorg/eclipse/jdt/internal/compiler/util/SimpleSet;-><init>(I)V

    const/4 v2, 0x0

    if-nez p1, :cond_4

    if-nez p2, :cond_1

    array-length p1, v0

    :goto_0
    if-lt v2, p1, :cond_0

    goto :goto_4

    :cond_0
    aget-object p2, v0, v2

    invoke-virtual {v1, p2}, Lorg/eclipse/jdt/internal/compiler/util/SimpleSet;->add(Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    iget-object v3, p2, Lorg/eclipse/jdt/internal/core/index/MemoryIndex;->docsToReferences:Lorg/eclipse/jdt/internal/compiler/util/SimpleLookupTable;

    array-length v4, v0

    :goto_1
    if-lt v2, v4, :cond_2

    goto :goto_4

    :cond_2
    aget-object p1, v0, v2

    invoke-virtual {v3, p1}, Lorg/eclipse/jdt/internal/compiler/util/SimpleLookupTable;->containsKey(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_3

    invoke-virtual {v1, p1}, Lorg/eclipse/jdt/internal/compiler/util/SimpleSet;->add(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_4
    if-nez p2, :cond_7

    array-length v3, v0

    move p2, v2

    :goto_2
    if-lt p2, v3, :cond_5

    goto :goto_4

    :cond_5
    aget-object v4, v0, p2

    invoke-virtual {v4, p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_6

    aget-object v4, v0, p2

    invoke-virtual {v1, v4}, Lorg/eclipse/jdt/internal/compiler/util/SimpleSet;->add(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_6
    add-int/lit8 p2, p2, 0x1

    goto :goto_2

    :cond_7
    iget-object p2, p2, Lorg/eclipse/jdt/internal/core/index/MemoryIndex;->docsToReferences:Lorg/eclipse/jdt/internal/compiler/util/SimpleLookupTable;

    array-length v3, v0

    move v4, v2

    :goto_3
    if-lt v4, v3, :cond_8

    :goto_4
    return-object v1

    :cond_8
    aget-object v5, v0, v4

    invoke-virtual {v5, p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v6

    if-eqz v6, :cond_9

    invoke-virtual {p2, v5}, Lorg/eclipse/jdt/internal/compiler/util/SimpleLookupTable;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_9

    invoke-virtual {v1, v5}, Lorg/eclipse/jdt/internal/compiler/util/SimpleSet;->add(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_9
    add-int/lit8 v4, v4, 0x1

    goto :goto_3
.end method

.method public addQueryResults([[C[CILorg/eclipse/jdt/internal/core/index/MemoryIndex;)Lorg/eclipse/jdt/internal/compiler/util/HashtableOfObject;
    .locals 19
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v6, p0

    move-object/from16 v7, p1

    move-object/from16 v8, p2

    move/from16 v9, p3

    iget-object v0, v6, Lorg/eclipse/jdt/internal/core/index/DiskIndex;->categoryOffsets:Lorg/eclipse/jdt/internal/compiler/util/HashtableOfIntValues;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    const/4 v10, 0x1

    const/4 v11, 0x0

    if-nez v8, :cond_7

    array-length v12, v7

    move v8, v11

    move v9, v8

    :goto_0
    if-lt v8, v12, :cond_1

    if-eqz v1, :cond_18

    iget-object v0, v6, Lorg/eclipse/jdt/internal/core/index/DiskIndex;->cachedChunks:[[Ljava/lang/String;

    if-nez v0, :cond_18

    invoke-direct/range {p0 .. p0}, Lorg/eclipse/jdt/internal/core/index/DiskIndex;->cacheDocumentNames()V

    goto/16 :goto_12

    :cond_1
    aget-object v0, v7, v8

    invoke-direct {v6, v0, v10}, Lorg/eclipse/jdt/internal/core/index/DiskIndex;->readCategoryTable([CZ)Lorg/eclipse/jdt/internal/compiler/util/HashtableOfObject;

    move-result-object v0

    if-eqz v0, :cond_5

    iget-object v13, v0, Lorg/eclipse/jdt/internal/compiler/util/HashtableOfObject;->keyTable:[[C

    iget-object v14, v0, Lorg/eclipse/jdt/internal/compiler/util/HashtableOfObject;->valueTable:[Ljava/lang/Object;

    if-nez v1, :cond_2

    new-instance v1, Lorg/eclipse/jdt/internal/compiler/util/HashtableOfObject;

    iget v0, v0, Lorg/eclipse/jdt/internal/compiler/util/HashtableOfObject;->elementSize:I

    invoke-direct {v1, v0}, Lorg/eclipse/jdt/internal/compiler/util/HashtableOfObject;-><init>(I)V

    :cond_2
    array-length v15, v13

    move v5, v11

    :goto_1
    if-lt v5, v15, :cond_3

    goto :goto_3

    :cond_3
    aget-object v2, v13, v5

    if-eqz v2, :cond_4

    aget-object v3, v14, v5

    move-object/from16 v0, p0

    move-object/from16 v4, p4

    move/from16 v16, v5

    move v5, v9

    invoke-direct/range {v0 .. v5}, Lorg/eclipse/jdt/internal/core/index/DiskIndex;->addQueryResult(Lorg/eclipse/jdt/internal/compiler/util/HashtableOfObject;[CLjava/lang/Object;Lorg/eclipse/jdt/internal/core/index/MemoryIndex;Z)Lorg/eclipse/jdt/internal/compiler/util/HashtableOfObject;

    move-result-object v1

    goto :goto_2

    :cond_4
    move/from16 v16, v5

    :goto_2
    add-int/lit8 v5, v16, 0x1

    goto :goto_1

    :cond_5
    :goto_3
    if-eqz v1, :cond_6

    move v9, v10

    goto :goto_4

    :cond_6
    move v9, v11

    :goto_4
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    :cond_7
    const/4 v0, 0x4

    if-eq v9, v0, :cond_17

    const/16 v0, 0x8

    if-eq v9, v0, :cond_13

    const/16 v0, 0x9

    if-eq v9, v0, :cond_d

    array-length v12, v7

    move v13, v11

    move v14, v13

    :goto_5
    if-lt v13, v12, :cond_8

    goto/16 :goto_12

    :cond_8
    aget-object v0, v7, v13

    invoke-direct {v6, v0, v11}, Lorg/eclipse/jdt/internal/core/index/DiskIndex;->readCategoryTable([CZ)Lorg/eclipse/jdt/internal/compiler/util/HashtableOfObject;

    move-result-object v0

    if-eqz v0, :cond_b

    iget-object v15, v0, Lorg/eclipse/jdt/internal/compiler/util/HashtableOfObject;->keyTable:[[C

    iget-object v5, v0, Lorg/eclipse/jdt/internal/compiler/util/HashtableOfObject;->valueTable:[Ljava/lang/Object;

    array-length v4, v15

    move v3, v11

    :goto_6
    if-lt v3, v4, :cond_9

    goto :goto_8

    :cond_9
    aget-object v2, v15, v3

    if-eqz v2, :cond_a

    invoke-static {v8, v2, v9}, Lorg/eclipse/jdt/internal/core/index/Index;->isMatch([C[CI)Z

    move-result v0

    if-eqz v0, :cond_a

    aget-object v16, v5, v3

    move-object/from16 v0, p0

    move/from16 v17, v3

    move-object/from16 v3, v16

    move/from16 v16, v4

    move-object/from16 v4, p4

    move-object/from16 v18, v5

    move v5, v14

    invoke-direct/range {v0 .. v5}, Lorg/eclipse/jdt/internal/core/index/DiskIndex;->addQueryResult(Lorg/eclipse/jdt/internal/compiler/util/HashtableOfObject;[CLjava/lang/Object;Lorg/eclipse/jdt/internal/core/index/MemoryIndex;Z)Lorg/eclipse/jdt/internal/compiler/util/HashtableOfObject;

    move-result-object v1

    goto :goto_7

    :cond_a
    move/from16 v17, v3

    move/from16 v16, v4

    move-object/from16 v18, v5

    :goto_7
    add-int/lit8 v3, v17, 0x1

    move/from16 v4, v16

    move-object/from16 v5, v18

    goto :goto_6

    :cond_b
    :goto_8
    if-eqz v1, :cond_c

    move v14, v10

    goto :goto_9

    :cond_c
    move v14, v11

    :goto_9
    add-int/lit8 v13, v13, 0x1

    goto :goto_5

    :cond_d
    array-length v9, v7

    move v12, v11

    move v13, v12

    :goto_a
    if-lt v12, v9, :cond_e

    goto/16 :goto_12

    :cond_e
    aget-object v0, v7, v12

    invoke-direct {v6, v0, v11}, Lorg/eclipse/jdt/internal/core/index/DiskIndex;->readCategoryTable([CZ)Lorg/eclipse/jdt/internal/compiler/util/HashtableOfObject;

    move-result-object v0

    if-eqz v0, :cond_11

    iget-object v14, v0, Lorg/eclipse/jdt/internal/compiler/util/HashtableOfObject;->keyTable:[[C

    iget-object v15, v0, Lorg/eclipse/jdt/internal/compiler/util/HashtableOfObject;->valueTable:[Ljava/lang/Object;

    array-length v5, v14

    move v4, v11

    :goto_b
    if-lt v4, v5, :cond_f

    goto :goto_d

    :cond_f
    aget-object v2, v14, v4

    if-eqz v2, :cond_10

    aget-char v0, v8, v11

    aget-char v3, v2, v11

    if-ne v0, v3, :cond_10

    invoke-static {v8, v2}, Lorg/eclipse/jdt/core/compiler/CharOperation;->prefixEquals([C[C)Z

    move-result v0

    if-eqz v0, :cond_10

    aget-object v3, v15, v4

    move-object/from16 v0, p0

    move/from16 v16, v4

    move-object/from16 v4, p4

    move/from16 v17, v5

    move v5, v13

    invoke-direct/range {v0 .. v5}, Lorg/eclipse/jdt/internal/core/index/DiskIndex;->addQueryResult(Lorg/eclipse/jdt/internal/compiler/util/HashtableOfObject;[CLjava/lang/Object;Lorg/eclipse/jdt/internal/core/index/MemoryIndex;Z)Lorg/eclipse/jdt/internal/compiler/util/HashtableOfObject;

    move-result-object v1

    goto :goto_c

    :cond_10
    move/from16 v16, v4

    move/from16 v17, v5

    :goto_c
    add-int/lit8 v4, v16, 0x1

    move/from16 v5, v17

    goto :goto_b

    :cond_11
    :goto_d
    if-eqz v1, :cond_12

    move v13, v10

    goto :goto_e

    :cond_12
    move v13, v11

    :goto_e
    add-int/lit8 v12, v12, 0x1

    goto :goto_a

    :cond_13
    array-length v9, v7

    move v5, v11

    move v12, v5

    :goto_f
    if-lt v12, v9, :cond_14

    goto :goto_12

    :cond_14
    aget-object v0, v7, v12

    invoke-direct {v6, v0, v11}, Lorg/eclipse/jdt/internal/core/index/DiskIndex;->readCategoryTable([CZ)Lorg/eclipse/jdt/internal/compiler/util/HashtableOfObject;

    move-result-object v0

    if-eqz v0, :cond_15

    invoke-virtual {v0, v8}, Lorg/eclipse/jdt/internal/compiler/util/HashtableOfObject;->get([C)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_15

    move-object/from16 v0, p0

    move-object/from16 v2, p2

    move-object/from16 v4, p4

    invoke-direct/range {v0 .. v5}, Lorg/eclipse/jdt/internal/core/index/DiskIndex;->addQueryResult(Lorg/eclipse/jdt/internal/compiler/util/HashtableOfObject;[CLjava/lang/Object;Lorg/eclipse/jdt/internal/core/index/MemoryIndex;Z)Lorg/eclipse/jdt/internal/compiler/util/HashtableOfObject;

    move-result-object v1

    :cond_15
    if-eqz v1, :cond_16

    move v5, v10

    goto :goto_10

    :cond_16
    move v5, v11

    :goto_10
    add-int/lit8 v12, v12, 0x1

    goto :goto_f

    :cond_17
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v8}, Ljava/lang/String;-><init>([C)V

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v8

    array-length v9, v7

    move v12, v11

    move v13, v12

    :goto_11
    if-lt v12, v9, :cond_19

    :cond_18
    :goto_12
    return-object v1

    :cond_19
    aget-object v0, v7, v12

    invoke-direct {v6, v0, v11}, Lorg/eclipse/jdt/internal/core/index/DiskIndex;->readCategoryTable([CZ)Lorg/eclipse/jdt/internal/compiler/util/HashtableOfObject;

    move-result-object v0

    if-eqz v0, :cond_1c

    iget-object v14, v0, Lorg/eclipse/jdt/internal/compiler/util/HashtableOfObject;->keyTable:[[C

    iget-object v15, v0, Lorg/eclipse/jdt/internal/compiler/util/HashtableOfObject;->valueTable:[Ljava/lang/Object;

    array-length v5, v14

    move v4, v11

    :goto_13
    if-lt v4, v5, :cond_1a

    goto :goto_15

    :cond_1a
    aget-object v2, v14, v4

    if-eqz v2, :cond_1b

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v8, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-eqz v0, :cond_1b

    aget-object v3, v15, v4

    move-object/from16 v0, p0

    move/from16 v16, v4

    move-object/from16 v4, p4

    move/from16 v17, v5

    move v5, v13

    invoke-direct/range {v0 .. v5}, Lorg/eclipse/jdt/internal/core/index/DiskIndex;->addQueryResult(Lorg/eclipse/jdt/internal/compiler/util/HashtableOfObject;[CLjava/lang/Object;Lorg/eclipse/jdt/internal/core/index/MemoryIndex;Z)Lorg/eclipse/jdt/internal/compiler/util/HashtableOfObject;

    move-result-object v1

    goto :goto_14

    :cond_1b
    move/from16 v16, v4

    move/from16 v17, v5

    :goto_14
    add-int/lit8 v4, v16, 0x1

    move/from16 v5, v17

    goto :goto_13

    :cond_1c
    :goto_15
    if-eqz v1, :cond_1d

    move v13, v10

    goto :goto_16

    :cond_1d
    move v13, v11

    :goto_16
    add-int/lit8 v12, v12, 0x1

    goto :goto_11
.end method

.method public initialize(Z)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/index/DiskIndex;->indexLocation:Lorg/eclipse/jdt/internal/core/index/IndexLocation;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/core/index/IndexLocation;->exists()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_5

    if-eqz p1, :cond_3

    iget-object p1, p0, Lorg/eclipse/jdt/internal/core/index/DiskIndex;->indexLocation:Lorg/eclipse/jdt/internal/core/index/IndexLocation;

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/core/index/IndexLocation;->getInputStream()Ljava/io/InputStream;

    move-result-object p1

    if-eqz p1, :cond_2

    sget v0, Lorg/eclipse/jdt/internal/core/index/DiskIndex;->BUFFER_READ_SIZE:I

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/eclipse/jdt/internal/core/index/DiskIndex;->streamBuffer:[B

    iput v1, p0, Lorg/eclipse/jdt/internal/core/index/DiskIndex;->bufferIndex:I

    const/16 v2, 0x80

    invoke-virtual {p1, v0, v1, v2}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    iput v0, p0, Lorg/eclipse/jdt/internal/core/index/DiskIndex;->bufferEnd:I

    :try_start_0
    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/core/index/DiskIndex;->readStreamChars(Ljava/io/InputStream;)[C

    move-result-object v0

    sget-object v2, Lorg/eclipse/jdt/internal/core/index/DiskIndex;->SIGNATURE_CHARS:[C

    invoke-static {v0, v2}, Lorg/eclipse/jdt/core/compiler/CharOperation;->equals([C[C)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/core/index/DiskIndex;->readStreamInt(Ljava/io/InputStream;)I

    move-result v0

    iput v0, p0, Lorg/eclipse/jdt/internal/core/index/DiskIndex;->headerInfoOffset:I

    if-lez v0, :cond_0

    iget v2, p0, Lorg/eclipse/jdt/internal/core/index/DiskIndex;->bufferEnd:I

    sub-int/2addr v0, v2

    int-to-long v2, v0

    invoke-virtual {p1, v2, v3}, Ljava/io/InputStream;->skip(J)J

    iput v1, p0, Lorg/eclipse/jdt/internal/core/index/DiskIndex;->bufferIndex:I

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/index/DiskIndex;->streamBuffer:[B

    array-length v2, v0

    invoke-virtual {p1, v0, v1, v2}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    iput v0, p0, Lorg/eclipse/jdt/internal/core/index/DiskIndex;->bufferEnd:I

    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/core/index/DiskIndex;->readHeaderInfo(Ljava/io/InputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    iget-object p1, p0, Lorg/eclipse/jdt/internal/core/index/DiskIndex;->indexLocation:Lorg/eclipse/jdt/internal/core/index/IndexLocation;

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/core/index/IndexLocation;->close()V

    return-void

    :cond_1
    :try_start_1
    new-instance v0, Ljava/io/IOException;

    sget-object v1, Lorg/eclipse/jdt/internal/core/util/Messages;->exception_wrongFormat:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_1
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    iget-object p1, p0, Lorg/eclipse/jdt/internal/core/index/DiskIndex;->indexLocation:Lorg/eclipse/jdt/internal/core/index/IndexLocation;

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/core/index/IndexLocation;->close()V

    throw v0

    :cond_2
    new-instance p1, Ljava/io/IOException;

    const-string v0, "Failed to use the index file"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    iget-object p1, p0, Lorg/eclipse/jdt/internal/core/index/DiskIndex;->indexLocation:Lorg/eclipse/jdt/internal/core/index/IndexLocation;

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/core/index/IndexLocation;->delete()Z

    move-result p1

    if-nez p1, :cond_5

    sget-boolean p1, Lorg/eclipse/jdt/internal/core/index/DiskIndex;->DEBUG:Z

    if-eqz p1, :cond_4

    sget-object p1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "initialize - Failed to delete index "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/index/DiskIndex;->indexLocation:Lorg/eclipse/jdt/internal/core/index/IndexLocation;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_4
    new-instance p1, Ljava/io/IOException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Failed to delete index "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/index/DiskIndex;->indexLocation:Lorg/eclipse/jdt/internal/core/index/IndexLocation;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_5
    iget-object p1, p0, Lorg/eclipse/jdt/internal/core/index/DiskIndex;->indexLocation:Lorg/eclipse/jdt/internal/core/index/IndexLocation;

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/core/index/IndexLocation;->createNewFile()Z

    move-result p1

    if-eqz p1, :cond_7

    new-instance p1, Ljava/io/FileOutputStream;

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/index/DiskIndex;->indexLocation:Lorg/eclipse/jdt/internal/core/index/IndexLocation;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/core/index/IndexLocation;->getIndexFile()Ljava/io/File;

    move-result-object v0

    invoke-direct {p1, v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    :try_start_2
    sget v0, Lorg/eclipse/jdt/internal/core/index/DiskIndex;->BUFFER_READ_SIZE:I

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/eclipse/jdt/internal/core/index/DiskIndex;->streamBuffer:[B

    iput v1, p0, Lorg/eclipse/jdt/internal/core/index/DiskIndex;->bufferIndex:I

    sget-object v0, Lorg/eclipse/jdt/internal/core/index/DiskIndex;->SIGNATURE_CHARS:[C

    invoke-direct {p0, p1, v0}, Lorg/eclipse/jdt/internal/core/index/DiskIndex;->writeStreamChars(Ljava/io/FileOutputStream;[C)V

    const/4 v0, -0x1

    invoke-direct {p0, p1, v0}, Lorg/eclipse/jdt/internal/core/index/DiskIndex;->writeStreamInt(Ljava/io/FileOutputStream;I)V

    iget v0, p0, Lorg/eclipse/jdt/internal/core/index/DiskIndex;->bufferIndex:I

    if-lez v0, :cond_6

    iget-object v2, p0, Lorg/eclipse/jdt/internal/core/index/DiskIndex;->streamBuffer:[B

    invoke-virtual {p1, v2, v1, v0}, Ljava/io/FileOutputStream;->write([BII)V

    iput v1, p0, Lorg/eclipse/jdt/internal/core/index/DiskIndex;->bufferIndex:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception v0

    goto :goto_3

    :cond_6
    :goto_2
    invoke-virtual {p1}, Ljava/io/FileOutputStream;->close()V

    return-void

    :goto_3
    invoke-virtual {p1}, Ljava/io/FileOutputStream;->close()V

    throw v0

    :cond_7
    sget-boolean p1, Lorg/eclipse/jdt/internal/core/index/DiskIndex;->DEBUG:Z

    if-eqz p1, :cond_8

    sget-object p1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "initialize - Failed to create new index "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/index/DiskIndex;->indexLocation:Lorg/eclipse/jdt/internal/core/index/IndexLocation;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_8
    new-instance p1, Ljava/io/IOException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Failed to create new index "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/index/DiskIndex;->indexLocation:Lorg/eclipse/jdt/internal/core/index/IndexLocation;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public mergeWith(Lorg/eclipse/jdt/internal/core/index/MemoryIndex;)Lorg/eclipse/jdt/internal/core/index/DiskIndex;
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    iget-object v2, v1, Lorg/eclipse/jdt/internal/core/index/DiskIndex;->indexLocation:Lorg/eclipse/jdt/internal/core/index/IndexLocation;

    if-eqz v2, :cond_d

    invoke-direct/range {p0 .. p0}, Lorg/eclipse/jdt/internal/core/index/DiskIndex;->readAllDocumentNames()[Ljava/lang/String;

    move-result-object v2

    array-length v3, v2

    new-array v4, v3, [I

    new-instance v5, Lorg/eclipse/jdt/internal/compiler/util/SimpleLookupTable;

    const/4 v6, 0x3

    invoke-direct {v5, v6}, Lorg/eclipse/jdt/internal/compiler/util/SimpleLookupTable;-><init>(I)V

    invoke-direct {v1, v2, v4, v5, v0}, Lorg/eclipse/jdt/internal/core/index/DiskIndex;->computeDocumentNames([Ljava/lang/String;[ILorg/eclipse/jdt/internal/compiler/util/SimpleLookupTable;Lorg/eclipse/jdt/internal/core/index/MemoryIndex;)[Ljava/lang/String;

    move-result-object v2

    array-length v6, v2

    const/4 v7, 0x0

    if-nez v6, :cond_1

    if-nez v3, :cond_0

    return-object v1

    :cond_0
    new-instance v0, Lorg/eclipse/jdt/internal/core/index/DiskIndex;

    iget-object v2, v1, Lorg/eclipse/jdt/internal/core/index/DiskIndex;->indexLocation:Lorg/eclipse/jdt/internal/core/index/IndexLocation;

    invoke-direct {v0, v2}, Lorg/eclipse/jdt/internal/core/index/DiskIndex;-><init>(Lorg/eclipse/jdt/internal/core/index/IndexLocation;)V

    invoke-virtual {v0, v7}, Lorg/eclipse/jdt/internal/core/index/DiskIndex;->initialize(Z)V

    return-object v0

    :cond_1
    iget-object v6, v1, Lorg/eclipse/jdt/internal/core/index/DiskIndex;->indexLocation:Lorg/eclipse/jdt/internal/core/index/IndexLocation;

    invoke-virtual {v6}, Lorg/eclipse/jdt/internal/core/index/IndexLocation;->getIndexFile()Ljava/io/File;

    move-result-object v6

    invoke-virtual {v6}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v8

    const-string v9, ".tmp"

    invoke-virtual {v8, v9}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_2

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v9

    add-int/lit8 v9, v9, -0x4

    invoke-virtual {v8, v7, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x1

    goto :goto_0

    :cond_2
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    move v9, v7

    :goto_0
    new-instance v10, Lorg/eclipse/jdt/internal/core/index/DiskIndex;

    new-instance v12, Lorg/eclipse/jdt/internal/core/index/FileIndexLocation;

    new-instance v13, Ljava/io/File;

    invoke-direct {v13, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v12, v13}, Lorg/eclipse/jdt/internal/core/index/FileIndexLocation;-><init>(Ljava/io/File;)V

    invoke-direct {v10, v12}, Lorg/eclipse/jdt/internal/core/index/DiskIndex;-><init>(Lorg/eclipse/jdt/internal/core/index/IndexLocation;)V

    iget-object v8, v10, Lorg/eclipse/jdt/internal/core/index/DiskIndex;->indexLocation:Lorg/eclipse/jdt/internal/core/index/IndexLocation;

    invoke-virtual {v8}, Lorg/eclipse/jdt/internal/core/index/IndexLocation;->getIndexFile()Ljava/io/File;

    move-result-object v8

    :try_start_0
    invoke-direct {v10, v1, v8}, Lorg/eclipse/jdt/internal/core/index/DiskIndex;->initializeFrom(Lorg/eclipse/jdt/internal/core/index/DiskIndex;Ljava/io/File;)V

    new-instance v12, Ljava/io/FileOutputStream;

    invoke-direct {v12, v8, v7}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v13, 0x0

    :try_start_1
    invoke-direct {v10, v2, v12}, Lorg/eclipse/jdt/internal/core/index/DiskIndex;->writeAllDocumentNames([Ljava/lang/String;Ljava/io/FileOutputStream;)V

    iget v2, v5, Lorg/eclipse/jdt/internal/compiler/util/SimpleLookupTable;->elementSize:I

    if-lez v2, :cond_5

    iget-object v2, v5, Lorg/eclipse/jdt/internal/compiler/util/SimpleLookupTable;->keyTable:[Ljava/lang/Object;

    iget-object v5, v5, Lorg/eclipse/jdt/internal/compiler/util/SimpleLookupTable;->valueTable:[Ljava/lang/Object;

    array-length v14, v2

    :goto_1
    if-lt v7, v14, :cond_3

    goto :goto_3

    :cond_3
    aget-object v15, v2, v7

    if-eqz v15, :cond_4

    iget-object v11, v0, Lorg/eclipse/jdt/internal/core/index/MemoryIndex;->docsToReferences:Lorg/eclipse/jdt/internal/compiler/util/SimpleLookupTable;

    invoke-virtual {v11, v15}, Lorg/eclipse/jdt/internal/compiler/util/SimpleLookupTable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lorg/eclipse/jdt/internal/compiler/util/HashtableOfObject;

    aget-object v15, v5, v7

    check-cast v15, Ljava/lang/Integer;

    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v15

    invoke-direct {v10, v11, v15}, Lorg/eclipse/jdt/internal/core/index/DiskIndex;->copyQueryResults(Lorg/eclipse/jdt/internal/compiler/util/HashtableOfObject;I)V

    goto :goto_2

    :catchall_0
    move-exception v0

    goto/16 :goto_7

    :cond_4
    :goto_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_5
    :goto_3
    if-nez v3, :cond_6

    invoke-direct {v10, v12}, Lorg/eclipse/jdt/internal/core/index/DiskIndex;->writeCategories(Ljava/io/FileOutputStream;)V

    goto :goto_4

    :cond_6
    invoke-direct {v10, v1, v4, v12}, Lorg/eclipse/jdt/internal/core/index/DiskIndex;->mergeCategories(Lorg/eclipse/jdt/internal/core/index/DiskIndex;[ILjava/io/FileOutputStream;)V

    :goto_4
    iget v0, v10, Lorg/eclipse/jdt/internal/core/index/DiskIndex;->streamEnd:I

    invoke-direct {v10, v12}, Lorg/eclipse/jdt/internal/core/index/DiskIndex;->writeHeaderInfo(Ljava/io/FileOutputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {v12}, Ljava/io/FileOutputStream;->close()V

    iput-object v13, v1, Lorg/eclipse/jdt/internal/core/index/DiskIndex;->streamBuffer:[B

    invoke-direct {v10, v0}, Lorg/eclipse/jdt/internal/core/index/DiskIndex;->writeOffsetToHeader(I)V

    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-virtual {v6}, Ljava/io/File;->delete()Z

    move-result v0

    if-nez v0, :cond_8

    sget-boolean v0, Lorg/eclipse/jdt/internal/core/index/DiskIndex;->DEBUG:Z

    if-eqz v0, :cond_7

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "mergeWith - Failed to delete "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, v1, Lorg/eclipse/jdt/internal/core/index/DiskIndex;->indexLocation:Lorg/eclipse/jdt/internal/core/index/IndexLocation;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_5

    :catch_0
    move-exception v0

    goto :goto_8

    :cond_7
    :goto_5
    new-instance v0, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Failed to delete index file "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, v1, Lorg/eclipse/jdt/internal/core/index/DiskIndex;->indexLocation:Lorg/eclipse/jdt/internal/core/index/IndexLocation;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_8
    if-nez v9, :cond_a

    invoke-virtual {v8, v6}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v0
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    if-nez v0, :cond_a

    const-wide/16 v2, 0x2

    :try_start_3
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    :catch_1
    :try_start_4
    invoke-virtual {v8, v6}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v0

    if-nez v0, :cond_a

    sget-boolean v0, Lorg/eclipse/jdt/internal/core/index/DiskIndex;->DEBUG:Z

    if-eqz v0, :cond_9

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "mergeWith - Failed to rename "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, v1, Lorg/eclipse/jdt/internal/core/index/DiskIndex;->indexLocation:Lorg/eclipse/jdt/internal/core/index/IndexLocation;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    :cond_9
    const/4 v11, 0x1

    goto :goto_6

    :cond_a
    move v11, v9

    :goto_6
    if-nez v11, :cond_b

    iget-object v0, v1, Lorg/eclipse/jdt/internal/core/index/DiskIndex;->indexLocation:Lorg/eclipse/jdt/internal/core/index/IndexLocation;

    iput-object v0, v10, Lorg/eclipse/jdt/internal/core/index/DiskIndex;->indexLocation:Lorg/eclipse/jdt/internal/core/index/IndexLocation;

    :cond_b
    return-object v10

    :goto_7
    :try_start_5
    invoke-virtual {v12}, Ljava/io/FileOutputStream;->close()V

    iput-object v13, v1, Lorg/eclipse/jdt/internal/core/index/DiskIndex;->streamBuffer:[B

    throw v0
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0

    :goto_8
    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_c

    invoke-virtual {v8}, Ljava/io/File;->delete()Z

    move-result v2

    if-nez v2, :cond_c

    sget-boolean v2, Lorg/eclipse/jdt/internal/core/index/DiskIndex;->DEBUG:Z

    if-eqz v2, :cond_c

    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "mergeWith - Failed to delete temp index "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, v10, Lorg/eclipse/jdt/internal/core/index/DiskIndex;->indexLocation:Lorg/eclipse/jdt/internal/core/index/IndexLocation;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_c
    throw v0

    :cond_d
    new-instance v0, Ljava/io/IOException;

    const-string v2, "Pre-built index file not writeable"

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public declared-synchronized readDocumentName(I)Ljava/lang/String;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/index/DiskIndex;->cachedChunks:[[Ljava/lang/String;

    if-nez v0, :cond_0

    iget v0, p0, Lorg/eclipse/jdt/internal/core/index/DiskIndex;->numberOfChunks:I

    new-array v0, v0, [[Ljava/lang/String;

    iput-object v0, p0, Lorg/eclipse/jdt/internal/core/index/DiskIndex;->cachedChunks:[[Ljava/lang/String;

    goto :goto_0

    :catchall_0
    move-exception p1

    goto/16 :goto_6

    :cond_0
    :goto_0
    div-int/lit8 v0, p1, 0x64

    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/index/DiskIndex;->cachedChunks:[[Ljava/lang/String;

    aget-object v1, v1, v0

    const/16 v2, 0x64

    const/4 v3, 0x0

    if-nez v1, :cond_6

    iget v1, p0, Lorg/eclipse/jdt/internal/core/index/DiskIndex;->numberOfChunks:I

    const/4 v4, 0x1

    sub-int/2addr v1, v4

    const/4 v5, 0x0

    if-ne v0, v1, :cond_1

    goto :goto_1

    :cond_1
    move v4, v5

    :goto_1
    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/index/DiskIndex;->chunkOffsets:[I

    aget v6, v1, v0

    if-eqz v4, :cond_2

    iget v1, p0, Lorg/eclipse/jdt/internal/core/index/DiskIndex;->startOfCategoryTables:I

    goto :goto_2

    :cond_2
    add-int/lit8 v7, v0, 0x1

    aget v1, v1, v7

    :goto_2
    sub-int/2addr v1, v6

    if-ltz v1, :cond_5

    new-array v7, v1, [B

    iput-object v7, p0, Lorg/eclipse/jdt/internal/core/index/DiskIndex;->streamBuffer:[B

    iput v5, p0, Lorg/eclipse/jdt/internal/core/index/DiskIndex;->bufferIndex:I

    iget-object v7, p0, Lorg/eclipse/jdt/internal/core/index/DiskIndex;->indexLocation:Lorg/eclipse/jdt/internal/core/index/IndexLocation;

    invoke-virtual {v7}, Lorg/eclipse/jdt/internal/core/index/IndexLocation;->getInputStream()Ljava/io/InputStream;

    move-result-object v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    int-to-long v8, v6

    :try_start_1
    invoke-virtual {v7, v8, v9}, Ljava/io/InputStream;->skip(J)J

    iget-object v6, p0, Lorg/eclipse/jdt/internal/core/index/DiskIndex;->streamBuffer:[B

    invoke-virtual {v7, v6, v5, v1}, Ljava/io/InputStream;->read([BII)I

    move-result v6
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-ne v6, v1, :cond_4

    :try_start_2
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V

    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/index/DiskIndex;->indexLocation:Lorg/eclipse/jdt/internal/core/index/IndexLocation;

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/core/index/IndexLocation;->close()V

    if-eqz v4, :cond_3

    iget v1, p0, Lorg/eclipse/jdt/internal/core/index/DiskIndex;->sizeOfLastChunk:I

    goto :goto_3

    :cond_3
    move v1, v2

    :goto_3
    new-array v4, v1, [Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    invoke-direct {p0, v4, v3, v5, v1}, Lorg/eclipse/jdt/internal/core/index/DiskIndex;->readChunk([Ljava/lang/String;Ljava/io/InputStream;II)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/index/DiskIndex;->cachedChunks:[[Ljava/lang/String;

    aput-object v4, v1, v0

    move-object v1, v4

    goto :goto_5

    :catch_0
    move-exception p1

    iput-object v3, p0, Lorg/eclipse/jdt/internal/core/index/DiskIndex;->streamBuffer:[B

    throw p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :cond_4
    :try_start_5
    new-instance p1, Ljava/io/IOException;

    invoke-direct {p1}, Ljava/io/IOException;-><init>()V

    throw p1
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :catchall_1
    move-exception p1

    goto :goto_4

    :catch_1
    move-exception p1

    :try_start_6
    iput-object v3, p0, Lorg/eclipse/jdt/internal/core/index/DiskIndex;->streamBuffer:[B

    throw p1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :goto_4
    :try_start_7
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/index/DiskIndex;->indexLocation:Lorg/eclipse/jdt/internal/core/index/IndexLocation;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/core/index/IndexLocation;->close()V

    throw p1

    :cond_5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1

    :cond_6
    :goto_5
    iput-object v3, p0, Lorg/eclipse/jdt/internal/core/index/DiskIndex;->streamBuffer:[B

    mul-int/2addr v0, v2

    sub-int/2addr p1, v0

    aget-object p1, v1, p1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    monitor-exit p0

    return-object p1

    :goto_6
    :try_start_8
    monitor-exit p0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    throw p1
.end method

.method public declared-synchronized readDocumentNumbers(Ljava/lang/Object;)[I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    instance-of v0, p1, [I

    if-eqz v0, :cond_0

    check-cast p1, [I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    goto :goto_0

    :cond_0
    :try_start_1
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/index/DiskIndex;->indexLocation:Lorg/eclipse/jdt/internal/core/index/IndexLocation;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/core/index/IndexLocation;->getInputStream()Ljava/io/InputStream;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v1, 0x0

    :try_start_2
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    int-to-long v2, p1

    invoke-virtual {v0, v2, v3}, Ljava/io/InputStream;->skip(J)J

    sget p1, Lorg/eclipse/jdt/internal/core/index/DiskIndex;->BUFFER_READ_SIZE:I

    new-array p1, p1, [B

    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/index/DiskIndex;->streamBuffer:[B

    const/4 v2, 0x0

    iput v2, p0, Lorg/eclipse/jdt/internal/core/index/DiskIndex;->bufferIndex:I

    array-length v3, p1

    invoke-virtual {v0, p1, v2, v3}, Ljava/io/InputStream;->read([BII)I

    move-result p1

    iput p1, p0, Lorg/eclipse/jdt/internal/core/index/DiskIndex;->bufferEnd:I

    invoke-direct {p0, v0}, Lorg/eclipse/jdt/internal/core/index/DiskIndex;->readStreamInt(Ljava/io/InputStream;)I

    move-result p1

    invoke-direct {p0, v0, p1}, Lorg/eclipse/jdt/internal/core/index/DiskIndex;->readStreamDocumentArray(Ljava/io/InputStream;I)[I

    move-result-object p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/index/DiskIndex;->indexLocation:Lorg/eclipse/jdt/internal/core/index/IndexLocation;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/core/index/IndexLocation;->close()V

    iput-object v1, p0, Lorg/eclipse/jdt/internal/core/index/DiskIndex;->streamBuffer:[B
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_1
    move-exception p1

    :try_start_4
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/index/DiskIndex;->indexLocation:Lorg/eclipse/jdt/internal/core/index/IndexLocation;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/core/index/IndexLocation;->close()V

    iput-object v1, p0, Lorg/eclipse/jdt/internal/core/index/DiskIndex;->streamBuffer:[B

    throw p1

    :goto_0
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw p1
.end method

.method public declared-synchronized startQuery()V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lorg/eclipse/jdt/internal/core/index/DiskIndex;->cacheUserCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/eclipse/jdt/internal/core/index/DiskIndex;->cacheUserCount:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public declared-synchronized stopQuery()V
    .locals 4

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lorg/eclipse/jdt/internal/core/index/DiskIndex;->cacheUserCount:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    iput v0, p0, Lorg/eclipse/jdt/internal/core/index/DiskIndex;->cacheUserCount:I

    if-gez v0, :cond_1

    const/4 v0, -0x1

    iput v0, p0, Lorg/eclipse/jdt/internal/core/index/DiskIndex;->cacheUserCount:I

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/eclipse/jdt/internal/core/index/DiskIndex;->cachedChunks:[[Ljava/lang/String;

    iget-object v2, p0, Lorg/eclipse/jdt/internal/core/index/DiskIndex;->categoryTables:Lorg/eclipse/jdt/internal/compiler/util/HashtableOfObject;

    if-eqz v2, :cond_1

    iget-object v3, p0, Lorg/eclipse/jdt/internal/core/index/DiskIndex;->cachedCategoryName:[C

    if-nez v3, :cond_0

    iput-object v0, p0, Lorg/eclipse/jdt/internal/core/index/DiskIndex;->categoryTables:Lorg/eclipse/jdt/internal/compiler/util/HashtableOfObject;

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    iget v0, v2, Lorg/eclipse/jdt/internal/compiler/util/HashtableOfObject;->elementSize:I

    if-le v0, v1, :cond_1

    new-instance v0, Lorg/eclipse/jdt/internal/compiler/util/HashtableOfObject;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Lorg/eclipse/jdt/internal/compiler/util/HashtableOfObject;-><init>(I)V

    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/index/DiskIndex;->cachedCategoryName:[C

    iget-object v2, p0, Lorg/eclipse/jdt/internal/core/index/DiskIndex;->categoryTables:Lorg/eclipse/jdt/internal/compiler/util/HashtableOfObject;

    invoke-virtual {v2, v1}, Lorg/eclipse/jdt/internal/compiler/util/HashtableOfObject;->get([C)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/eclipse/jdt/internal/compiler/util/HashtableOfObject;->put([CLjava/lang/Object;)Ljava/lang/Object;

    iput-object v0, p0, Lorg/eclipse/jdt/internal/core/index/DiskIndex;->categoryTables:Lorg/eclipse/jdt/internal/compiler/util/HashtableOfObject;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    :goto_0
    monitor-exit p0

    return-void

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
