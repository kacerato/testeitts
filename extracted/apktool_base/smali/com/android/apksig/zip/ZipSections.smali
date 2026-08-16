.class public Lcom/android/apksig/zip/ZipSections;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final mCentralDirectoryOffset:J

.field private final mCentralDirectoryRecordCount:I

.field private final mCentralDirectorySizeBytes:J

.field private final mEocd:Ljava/nio/ByteBuffer;

.field private final mEocdOffset:J


# direct methods
.method public constructor <init>(JJIJLjava/nio/ByteBuffer;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/android/apksig/zip/ZipSections;->mCentralDirectoryOffset:J

    iput-wide p3, p0, Lcom/android/apksig/zip/ZipSections;->mCentralDirectorySizeBytes:J

    iput p5, p0, Lcom/android/apksig/zip/ZipSections;->mCentralDirectoryRecordCount:I

    iput-wide p6, p0, Lcom/android/apksig/zip/ZipSections;->mEocdOffset:J

    iput-object p8, p0, Lcom/android/apksig/zip/ZipSections;->mEocd:Ljava/nio/ByteBuffer;

    return-void
.end method


# virtual methods
.method public getZipCentralDirectoryOffset()J
    .locals 2

    iget-wide v0, p0, Lcom/android/apksig/zip/ZipSections;->mCentralDirectoryOffset:J

    return-wide v0
.end method

.method public getZipCentralDirectoryRecordCount()I
    .locals 1

    iget v0, p0, Lcom/android/apksig/zip/ZipSections;->mCentralDirectoryRecordCount:I

    return v0
.end method

.method public getZipCentralDirectorySizeBytes()J
    .locals 2

    iget-wide v0, p0, Lcom/android/apksig/zip/ZipSections;->mCentralDirectorySizeBytes:J

    return-wide v0
.end method

.method public getZipEndOfCentralDirectory()Ljava/nio/ByteBuffer;
    .locals 1

    iget-object v0, p0, Lcom/android/apksig/zip/ZipSections;->mEocd:Ljava/nio/ByteBuffer;

    return-object v0
.end method

.method public getZipEndOfCentralDirectoryOffset()J
    .locals 2

    iget-wide v0, p0, Lcom/android/apksig/zip/ZipSections;->mEocdOffset:J

    return-wide v0
.end method
