.class public Lcom/android/apksig/internal/zip/EocdRecord;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final CD_OFFSET_OFFSET:I = 0x10

.field private static final CD_RECORD_COUNT_ON_DISK_OFFSET:I = 0x8

.field private static final CD_RECORD_COUNT_TOTAL_OFFSET:I = 0xa

.field private static final CD_SIZE_OFFSET:I = 0xc


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createWithModifiedCentralDirectoryInfo(Ljava/nio/ByteBuffer;IJJ)Ljava/nio/ByteBuffer;
    .locals 2

    invoke-virtual {p0}, Ljava/nio/Buffer;->remaining()I

    move-result v0

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    const/16 p0, 0x8

    invoke-static {v0, p0, p1}, Lcom/android/apksig/internal/zip/ZipUtils;->setUnsignedInt16(Ljava/nio/ByteBuffer;II)V

    const/16 p0, 0xa

    invoke-static {v0, p0, p1}, Lcom/android/apksig/internal/zip/ZipUtils;->setUnsignedInt16(Ljava/nio/ByteBuffer;II)V

    const/16 p0, 0xc

    invoke-static {v0, p0, p2, p3}, Lcom/android/apksig/internal/zip/ZipUtils;->setUnsignedInt32(Ljava/nio/ByteBuffer;IJ)V

    const/16 p0, 0x10

    invoke-static {v0, p0, p4, p5}, Lcom/android/apksig/internal/zip/ZipUtils;->setUnsignedInt32(Ljava/nio/ByteBuffer;IJ)V

    return-object v0
.end method

.method public static createWithPaddedComment(Ljava/nio/ByteBuffer;I)Ljava/nio/ByteBuffer;
    .locals 1

    invoke-virtual {p0}, Ljava/nio/Buffer;->remaining()I

    move-result v0

    add-int/2addr v0, p1

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object p1

    sget-object v0, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    invoke-static {p1}, Lcom/android/apksig/internal/zip/ZipUtils;->updateZipEocdCommentLen(Ljava/nio/ByteBuffer;)V

    return-object p1
.end method
