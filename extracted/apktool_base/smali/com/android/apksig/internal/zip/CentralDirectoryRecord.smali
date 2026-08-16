.class public Lcom/android/apksig/internal/zip/CentralDirectoryRecord;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/apksig/internal/zip/CentralDirectoryRecord$ByLocalFileHeaderOffsetComparator;
    }
.end annotation


# static fields
.field public static final BY_LOCAL_FILE_HEADER_OFFSET_COMPARATOR:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lcom/android/apksig/internal/zip/CentralDirectoryRecord;",
            ">;"
        }
    .end annotation
.end field

.field private static final GP_FLAGS_OFFSET:I = 0x8

.field private static final HEADER_SIZE_BYTES:I = 0x2e

.field private static final LOCAL_FILE_HEADER_OFFSET_OFFSET:I = 0x2a

.field private static final NAME_OFFSET:I = 0x2e

.field private static final RECORD_SIGNATURE:I = 0x2014b50


# instance fields
.field private final mCompressedSize:J

.field private final mCompressionMethod:S

.field private final mCrc32:J

.field private final mData:Ljava/nio/ByteBuffer;

.field private final mGpFlags:S

.field private final mLastModificationDate:I

.field private final mLastModificationTime:I

.field private final mLocalFileHeaderOffset:J

.field private final mName:Ljava/lang/String;

.field private final mNameSizeBytes:I

.field private final mUncompressedSize:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/apksig/internal/zip/CentralDirectoryRecord$ByLocalFileHeaderOffsetComparator;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/apksig/internal/zip/CentralDirectoryRecord$ByLocalFileHeaderOffsetComparator;-><init>(Lcom/android/apksig/internal/zip/CentralDirectoryRecord$1;)V

    sput-object v0, Lcom/android/apksig/internal/zip/CentralDirectoryRecord;->BY_LOCAL_FILE_HEADER_OFFSET_COMPARATOR:Ljava/util/Comparator;

    return-void
.end method

.method private constructor <init>(Ljava/nio/ByteBuffer;SSIIJJJJLjava/lang/String;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/apksig/internal/zip/CentralDirectoryRecord;->mData:Ljava/nio/ByteBuffer;

    iput-short p2, p0, Lcom/android/apksig/internal/zip/CentralDirectoryRecord;->mGpFlags:S

    iput-short p3, p0, Lcom/android/apksig/internal/zip/CentralDirectoryRecord;->mCompressionMethod:S

    iput p5, p0, Lcom/android/apksig/internal/zip/CentralDirectoryRecord;->mLastModificationDate:I

    iput p4, p0, Lcom/android/apksig/internal/zip/CentralDirectoryRecord;->mLastModificationTime:I

    iput-wide p6, p0, Lcom/android/apksig/internal/zip/CentralDirectoryRecord;->mCrc32:J

    iput-wide p8, p0, Lcom/android/apksig/internal/zip/CentralDirectoryRecord;->mCompressedSize:J

    iput-wide p10, p0, Lcom/android/apksig/internal/zip/CentralDirectoryRecord;->mUncompressedSize:J

    iput-wide p12, p0, Lcom/android/apksig/internal/zip/CentralDirectoryRecord;->mLocalFileHeaderOffset:J

    iput-object p14, p0, Lcom/android/apksig/internal/zip/CentralDirectoryRecord;->mName:Ljava/lang/String;

    iput p15, p0, Lcom/android/apksig/internal/zip/CentralDirectoryRecord;->mNameSizeBytes:I

    return-void
.end method

.method public static createWithDeflateCompressedData(Ljava/lang/String;IIJJJJ)Lcom/android/apksig/internal/zip/CentralDirectoryRecord;
    .locals 18

    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    move-object/from16 v15, p0

    invoke-virtual {v15, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    array-length v1, v0

    add-int/lit8 v1, v1, 0x2e

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v2, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    const v1, 0x2014b50

    invoke-virtual {v2, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    const/16 v1, 0x14

    invoke-static {v2, v1}, Lcom/android/apksig/internal/zip/ZipUtils;->putUnsignedInt16(Ljava/nio/ByteBuffer;I)V

    invoke-static {v2, v1}, Lcom/android/apksig/internal/zip/ZipUtils;->putUnsignedInt16(Ljava/nio/ByteBuffer;I)V

    const/16 v3, 0x800

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    const/16 v4, 0x8

    invoke-virtual {v2, v4}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    move/from16 v5, p1

    invoke-static {v2, v5}, Lcom/android/apksig/internal/zip/ZipUtils;->putUnsignedInt16(Ljava/nio/ByteBuffer;I)V

    move/from16 v6, p2

    invoke-static {v2, v6}, Lcom/android/apksig/internal/zip/ZipUtils;->putUnsignedInt16(Ljava/nio/ByteBuffer;I)V

    move-wide/from16 v7, p3

    invoke-static {v2, v7, v8}, Lcom/android/apksig/internal/zip/ZipUtils;->putUnsignedInt32(Ljava/nio/ByteBuffer;J)V

    move-wide/from16 v9, p5

    invoke-static {v2, v9, v10}, Lcom/android/apksig/internal/zip/ZipUtils;->putUnsignedInt32(Ljava/nio/ByteBuffer;J)V

    move-wide/from16 v11, p7

    invoke-static {v2, v11, v12}, Lcom/android/apksig/internal/zip/ZipUtils;->putUnsignedInt32(Ljava/nio/ByteBuffer;J)V

    array-length v1, v0

    invoke-static {v2, v1}, Lcom/android/apksig/internal/zip/ZipUtils;->putUnsignedInt16(Ljava/nio/ByteBuffer;I)V

    const/4 v1, 0x0

    invoke-static {v2, v1}, Lcom/android/apksig/internal/zip/ZipUtils;->putUnsignedInt16(Ljava/nio/ByteBuffer;I)V

    invoke-static {v2, v1}, Lcom/android/apksig/internal/zip/ZipUtils;->putUnsignedInt16(Ljava/nio/ByteBuffer;I)V

    invoke-static {v2, v1}, Lcom/android/apksig/internal/zip/ZipUtils;->putUnsignedInt16(Ljava/nio/ByteBuffer;I)V

    invoke-static {v2, v1}, Lcom/android/apksig/internal/zip/ZipUtils;->putUnsignedInt16(Ljava/nio/ByteBuffer;I)V

    const-wide/16 v13, 0x0

    invoke-static {v2, v13, v14}, Lcom/android/apksig/internal/zip/ZipUtils;->putUnsignedInt32(Ljava/nio/ByteBuffer;J)V

    move-wide/from16 v13, p9

    invoke-static {v2, v13, v14}, Lcom/android/apksig/internal/zip/ZipUtils;->putUnsignedInt32(Ljava/nio/ByteBuffer;J)V

    invoke-virtual {v2, v0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/Buffer;->hasRemaining()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    new-instance v17, Lcom/android/apksig/internal/zip/CentralDirectoryRecord;

    array-length v0, v0

    move-object/from16 v1, v17

    move/from16 v5, p1

    move/from16 v6, p2

    move-wide/from16 v7, p3

    move-wide/from16 v9, p5

    move-wide/from16 v11, p7

    move-wide/from16 v13, p9

    move-object/from16 v15, p0

    move/from16 v16, v0

    invoke-direct/range {v1 .. v16}, Lcom/android/apksig/internal/zip/CentralDirectoryRecord;-><init>(Ljava/nio/ByteBuffer;SSIIJJJJLjava/lang/String;I)V

    return-object v17

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "pos: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/nio/Buffer;->position()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", limit: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/nio/Buffer;->limit()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getName(Ljava/nio/ByteBuffer;II)Ljava/lang/String;
    .locals 2

    .line 2
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->hasArray()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    .line 4
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result p0

    add-int/2addr p0, p1

    goto :goto_0

    .line 5
    :cond_0
    new-array v0, p2, [B

    .line 6
    invoke-virtual {p0}, Ljava/nio/Buffer;->position()I

    move-result v1

    .line 7
    :try_start_0
    invoke-virtual {p0, p1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 8
    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    invoke-virtual {p0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    const/4 p0, 0x0

    .line 10
    :goto_0
    new-instance p1, Ljava/lang/String;

    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {p1, v0, p0, p2, v1}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    return-object p1

    :catchall_0
    move-exception p1

    .line 11
    invoke-virtual {p0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 12
    throw p1
.end method

.method public static getRecord(Ljava/nio/ByteBuffer;)Lcom/android/apksig/internal/zip/CentralDirectoryRecord;
    .locals 20
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/apksig/zip/ZipFormatException;
        }
    .end annotation

    move-object/from16 v1, p0

    invoke-static/range {p0 .. p0}, Lcom/android/apksig/internal/zip/ZipUtils;->assertByteOrderLittleEndian(Ljava/nio/ByteBuffer;)V

    invoke-virtual/range {p0 .. p0}, Ljava/nio/Buffer;->remaining()I

    move-result v0

    const/16 v2, 0x2e

    const-string v3, " bytes"

    if-lt v0, v2, :cond_2

    invoke-virtual/range {p0 .. p0}, Ljava/nio/Buffer;->position()I

    move-result v0

    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v2

    const v4, 0x2014b50

    if-ne v2, v4, :cond_1

    add-int/lit8 v2, v0, 0x8

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v6

    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v7

    invoke-static/range {p0 .. p0}, Lcom/android/apksig/internal/zip/ZipUtils;->getUnsignedInt16(Ljava/nio/ByteBuffer;)I

    move-result v8

    invoke-static/range {p0 .. p0}, Lcom/android/apksig/internal/zip/ZipUtils;->getUnsignedInt16(Ljava/nio/ByteBuffer;)I

    move-result v9

    invoke-static/range {p0 .. p0}, Lcom/android/apksig/internal/zip/ZipUtils;->getUnsignedInt32(Ljava/nio/ByteBuffer;)J

    move-result-wide v10

    invoke-static/range {p0 .. p0}, Lcom/android/apksig/internal/zip/ZipUtils;->getUnsignedInt32(Ljava/nio/ByteBuffer;)J

    move-result-wide v12

    invoke-static/range {p0 .. p0}, Lcom/android/apksig/internal/zip/ZipUtils;->getUnsignedInt32(Ljava/nio/ByteBuffer;)J

    move-result-wide v14

    invoke-static/range {p0 .. p0}, Lcom/android/apksig/internal/zip/ZipUtils;->getUnsignedInt16(Ljava/nio/ByteBuffer;)I

    move-result v2

    invoke-static/range {p0 .. p0}, Lcom/android/apksig/internal/zip/ZipUtils;->getUnsignedInt16(Ljava/nio/ByteBuffer;)I

    move-result v4

    invoke-static/range {p0 .. p0}, Lcom/android/apksig/internal/zip/ZipUtils;->getUnsignedInt16(Ljava/nio/ByteBuffer;)I

    move-result v5

    move-object/from16 v16, v3

    add-int/lit8 v3, v0, 0x2a

    invoke-virtual {v1, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    invoke-static/range {p0 .. p0}, Lcom/android/apksig/internal/zip/ZipUtils;->getUnsignedInt32(Ljava/nio/ByteBuffer;)J

    move-result-wide v17

    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    add-int/lit8 v3, v2, 0x2e

    add-int/2addr v3, v4

    add-int/2addr v3, v5

    invoke-virtual/range {p0 .. p0}, Ljava/nio/Buffer;->remaining()I

    move-result v4

    if-gt v3, v4, :cond_0

    add-int/lit8 v4, v0, 0x2e

    invoke-static {v1, v4, v2}, Lcom/android/apksig/internal/zip/CentralDirectoryRecord;->getName(Ljava/nio/ByteBuffer;II)Ljava/lang/String;

    move-result-object v19

    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    invoke-virtual/range {p0 .. p0}, Ljava/nio/Buffer;->limit()I

    move-result v4

    add-int/2addr v0, v3

    :try_start_0
    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    move-result-object v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v1, v4}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    new-instance v0, Lcom/android/apksig/internal/zip/CentralDirectoryRecord;

    move-object v4, v0

    move-wide/from16 v16, v17

    move-object/from16 v18, v19

    move/from16 v19, v2

    invoke-direct/range {v4 .. v19}, Lcom/android/apksig/internal/zip/CentralDirectoryRecord;-><init>(Ljava/nio/ByteBuffer;SSIIJJJJLjava/lang/String;I)V

    return-object v0

    :catchall_0
    move-exception v0

    invoke-virtual {v1, v4}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    throw v0

    :cond_0
    new-instance v0, Lcom/android/apksig/zip/ZipFormatException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Input too short. Need: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " bytes, available: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Ljava/nio/Buffer;->remaining()I

    move-result v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-object/from16 v3, v16

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/nio/BufferUnderflowException;

    invoke-direct {v2}, Ljava/nio/BufferUnderflowException;-><init>()V

    invoke-direct {v0, v1, v2}, Lcom/android/apksig/zip/ZipFormatException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :cond_1
    new-instance v0, Lcom/android/apksig/zip/ZipFormatException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Not a Central Directory record. Signature: 0x"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    int-to-long v2, v2

    const-wide v4, 0xffffffffL

    and-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/apksig/zip/ZipFormatException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    new-instance v0, Lcom/android/apksig/zip/ZipFormatException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Input too short. Need at least: 46 bytes, available: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Ljava/nio/Buffer;->remaining()I

    move-result v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/nio/BufferUnderflowException;

    invoke-direct {v2}, Ljava/nio/BufferUnderflowException;-><init>()V

    invoke-direct {v0, v1, v2}, Lcom/android/apksig/zip/ZipFormatException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method


# virtual methods
.method public copyTo(Ljava/nio/ByteBuffer;)V
    .locals 1

    iget-object v0, p0, Lcom/android/apksig/internal/zip/CentralDirectoryRecord;->mData:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    return-void
.end method

.method public createWithModifiedLocalFileHeaderOffset(J)Lcom/android/apksig/internal/zip/CentralDirectoryRecord;
    .locals 18

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/apksig/internal/zip/CentralDirectoryRecord;->mData:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/Buffer;->remaining()I

    move-result v1

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v3

    iget-object v1, v0, Lcom/android/apksig/internal/zip/CentralDirectoryRecord;->mData:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v3, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    const/16 v1, 0x2a

    move-wide/from16 v14, p1

    invoke-static {v3, v1, v14, v15}, Lcom/android/apksig/internal/zip/ZipUtils;->setUnsignedInt32(Ljava/nio/ByteBuffer;IJ)V

    new-instance v1, Lcom/android/apksig/internal/zip/CentralDirectoryRecord;

    iget-short v4, v0, Lcom/android/apksig/internal/zip/CentralDirectoryRecord;->mGpFlags:S

    iget-short v5, v0, Lcom/android/apksig/internal/zip/CentralDirectoryRecord;->mCompressionMethod:S

    iget v6, v0, Lcom/android/apksig/internal/zip/CentralDirectoryRecord;->mLastModificationTime:I

    iget v7, v0, Lcom/android/apksig/internal/zip/CentralDirectoryRecord;->mLastModificationDate:I

    iget-wide v8, v0, Lcom/android/apksig/internal/zip/CentralDirectoryRecord;->mCrc32:J

    iget-wide v10, v0, Lcom/android/apksig/internal/zip/CentralDirectoryRecord;->mCompressedSize:J

    iget-wide v12, v0, Lcom/android/apksig/internal/zip/CentralDirectoryRecord;->mUncompressedSize:J

    iget-object v2, v0, Lcom/android/apksig/internal/zip/CentralDirectoryRecord;->mName:Ljava/lang/String;

    iget v14, v0, Lcom/android/apksig/internal/zip/CentralDirectoryRecord;->mNameSizeBytes:I

    move-object/from16 v16, v2

    move-object v2, v1

    move/from16 v17, v14

    move-wide/from16 v14, p1

    invoke-direct/range {v2 .. v17}, Lcom/android/apksig/internal/zip/CentralDirectoryRecord;-><init>(Ljava/nio/ByteBuffer;SSIIJJJJLjava/lang/String;I)V

    return-object v1
.end method

.method public getCompressedSize()J
    .locals 2

    iget-wide v0, p0, Lcom/android/apksig/internal/zip/CentralDirectoryRecord;->mCompressedSize:J

    return-wide v0
.end method

.method public getCompressionMethod()S
    .locals 1

    iget-short v0, p0, Lcom/android/apksig/internal/zip/CentralDirectoryRecord;->mCompressionMethod:S

    return v0
.end method

.method public getCrc32()J
    .locals 2

    iget-wide v0, p0, Lcom/android/apksig/internal/zip/CentralDirectoryRecord;->mCrc32:J

    return-wide v0
.end method

.method public getGpFlags()S
    .locals 1

    iget-short v0, p0, Lcom/android/apksig/internal/zip/CentralDirectoryRecord;->mGpFlags:S

    return v0
.end method

.method public getLastModificationDate()I
    .locals 1

    iget v0, p0, Lcom/android/apksig/internal/zip/CentralDirectoryRecord;->mLastModificationDate:I

    return v0
.end method

.method public getLastModificationTime()I
    .locals 1

    iget v0, p0, Lcom/android/apksig/internal/zip/CentralDirectoryRecord;->mLastModificationTime:I

    return v0
.end method

.method public getLocalFileHeaderOffset()J
    .locals 2

    iget-wide v0, p0, Lcom/android/apksig/internal/zip/CentralDirectoryRecord;->mLocalFileHeaderOffset:J

    return-wide v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/apksig/internal/zip/CentralDirectoryRecord;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getNameSizeBytes()I
    .locals 1

    iget v0, p0, Lcom/android/apksig/internal/zip/CentralDirectoryRecord;->mNameSizeBytes:I

    return v0
.end method

.method public getSize()I
    .locals 1

    iget-object v0, p0, Lcom/android/apksig/internal/zip/CentralDirectoryRecord;->mData:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/Buffer;->remaining()I

    move-result v0

    return v0
.end method

.method public getUncompressedSize()J
    .locals 2

    iget-wide v0, p0, Lcom/android/apksig/internal/zip/CentralDirectoryRecord;->mUncompressedSize:J

    return-wide v0
.end method
