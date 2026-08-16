.class public Lcom/android/apksig/ApkSigner;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/apksig/ApkSigner$SignerConfig;,
        Lcom/android/apksig/ApkSigner$OutputSizeAndDataOffset;,
        Lcom/android/apksig/ApkSigner$Builder;
    }
.end annotation


# static fields
.field private static final ALIGNMENT_ZIP_EXTRA_DATA_FIELD_HEADER_ID:S = -0x26cbs

.field private static final ALIGNMENT_ZIP_EXTRA_DATA_FIELD_MIN_SIZE_BYTES:S = 0x6s

.field private static final ANDROID_COMMON_PAGE_ALIGNMENT_BYTES:S = 0x1000s

.field private static final ANDROID_FILE_ALIGNMENT_BYTES:S = 0x1000s

.field private static final ANDROID_MANIFEST_ZIP_ENTRY_NAME:Ljava/lang/String; = "AndroidManifest.xml"


# instance fields
.field private final mAlignFileSize:Z

.field private final mCreatedBy:Ljava/lang/String;

.field private final mDebuggableApkPermitted:Z

.field private final mForceSourceStampOverwrite:Z

.field private final mInputApkDataSource:Lcom/android/apksig/util/DataSource;

.field private final mInputApkFile:Ljava/io/File;

.field private final mMinSdkVersion:Ljava/lang/Integer;

.field private final mOtherSignersSignaturesPreserved:Z

.field private final mOutputApkDataSink:Lcom/android/apksig/util/DataSink;

.field private final mOutputApkDataSource:Lcom/android/apksig/util/DataSource;

.field private final mOutputApkFile:Ljava/io/File;

.field private final mOutputV4File:Ljava/io/File;

.field private final mRotationMinSdkVersion:I

.field private final mRotationTargetsDevRelease:Z

.field private final mSignerConfigs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/apksig/ApkSigner$SignerConfig;",
            ">;"
        }
    .end annotation
.end field

.field private final mSignerEngine:Lcom/android/apksig/ApkSignerEngine;

.field private final mSigningCertificateLineage:Lcom/android/apksig/SigningCertificateLineage;

.field private final mSourceStampSignerConfig:Lcom/android/apksig/ApkSigner$SignerConfig;

.field private final mSourceStampSigningCertificateLineage:Lcom/android/apksig/SigningCertificateLineage;

.field private final mV1SigningEnabled:Z

.field private final mV2SigningEnabled:Z

.field private final mV3SigningEnabled:Z

.field private final mV4ErrorReportingEnabled:Z

.field private final mV4SigningEnabled:Z

.field private final mVerityEnabled:Z


# direct methods
.method private constructor <init>(Ljava/util/List;Lcom/android/apksig/ApkSigner$SignerConfig;Lcom/android/apksig/SigningCertificateLineage;ZLjava/lang/Integer;IZZZZZZZZZZLjava/lang/String;Lcom/android/apksig/ApkSignerEngine;Ljava/io/File;Lcom/android/apksig/util/DataSource;Ljava/io/File;Lcom/android/apksig/util/DataSink;Lcom/android/apksig/util/DataSource;Ljava/io/File;Lcom/android/apksig/SigningCertificateLineage;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/apksig/ApkSigner$SignerConfig;",
            ">;",
            "Lcom/android/apksig/ApkSigner$SignerConfig;",
            "Lcom/android/apksig/SigningCertificateLineage;",
            "Z",
            "Ljava/lang/Integer;",
            "IZZZZZZZZZZ",
            "Ljava/lang/String;",
            "Lcom/android/apksig/ApkSignerEngine;",
            "Ljava/io/File;",
            "Lcom/android/apksig/util/DataSource;",
            "Ljava/io/File;",
            "Lcom/android/apksig/util/DataSink;",
            "Lcom/android/apksig/util/DataSource;",
            "Ljava/io/File;",
            "Lcom/android/apksig/SigningCertificateLineage;",
            ")V"
        }
    .end annotation

    move-object v0, p0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-object v1, p1

    .line 3
    iput-object v1, v0, Lcom/android/apksig/ApkSigner;->mSignerConfigs:Ljava/util/List;

    move-object v1, p2

    .line 4
    iput-object v1, v0, Lcom/android/apksig/ApkSigner;->mSourceStampSignerConfig:Lcom/android/apksig/ApkSigner$SignerConfig;

    move-object v1, p3

    .line 5
    iput-object v1, v0, Lcom/android/apksig/ApkSigner;->mSourceStampSigningCertificateLineage:Lcom/android/apksig/SigningCertificateLineage;

    move v1, p4

    .line 6
    iput-boolean v1, v0, Lcom/android/apksig/ApkSigner;->mForceSourceStampOverwrite:Z

    move-object v1, p5

    .line 7
    iput-object v1, v0, Lcom/android/apksig/ApkSigner;->mMinSdkVersion:Ljava/lang/Integer;

    move v1, p6

    .line 8
    iput v1, v0, Lcom/android/apksig/ApkSigner;->mRotationMinSdkVersion:I

    move v1, p7

    .line 9
    iput-boolean v1, v0, Lcom/android/apksig/ApkSigner;->mRotationTargetsDevRelease:Z

    move v1, p8

    .line 10
    iput-boolean v1, v0, Lcom/android/apksig/ApkSigner;->mV1SigningEnabled:Z

    move v1, p9

    .line 11
    iput-boolean v1, v0, Lcom/android/apksig/ApkSigner;->mV2SigningEnabled:Z

    move v1, p10

    .line 12
    iput-boolean v1, v0, Lcom/android/apksig/ApkSigner;->mV3SigningEnabled:Z

    move v1, p11

    .line 13
    iput-boolean v1, v0, Lcom/android/apksig/ApkSigner;->mV4SigningEnabled:Z

    move v1, p12

    .line 14
    iput-boolean v1, v0, Lcom/android/apksig/ApkSigner;->mAlignFileSize:Z

    move v1, p13

    .line 15
    iput-boolean v1, v0, Lcom/android/apksig/ApkSigner;->mVerityEnabled:Z

    move/from16 v1, p14

    .line 16
    iput-boolean v1, v0, Lcom/android/apksig/ApkSigner;->mV4ErrorReportingEnabled:Z

    move/from16 v1, p15

    .line 17
    iput-boolean v1, v0, Lcom/android/apksig/ApkSigner;->mDebuggableApkPermitted:Z

    move/from16 v1, p16

    .line 18
    iput-boolean v1, v0, Lcom/android/apksig/ApkSigner;->mOtherSignersSignaturesPreserved:Z

    move-object/from16 v1, p17

    .line 19
    iput-object v1, v0, Lcom/android/apksig/ApkSigner;->mCreatedBy:Ljava/lang/String;

    move-object/from16 v1, p18

    .line 20
    iput-object v1, v0, Lcom/android/apksig/ApkSigner;->mSignerEngine:Lcom/android/apksig/ApkSignerEngine;

    move-object/from16 v1, p19

    .line 21
    iput-object v1, v0, Lcom/android/apksig/ApkSigner;->mInputApkFile:Ljava/io/File;

    move-object/from16 v1, p20

    .line 22
    iput-object v1, v0, Lcom/android/apksig/ApkSigner;->mInputApkDataSource:Lcom/android/apksig/util/DataSource;

    move-object/from16 v1, p21

    .line 23
    iput-object v1, v0, Lcom/android/apksig/ApkSigner;->mOutputApkFile:Ljava/io/File;

    move-object/from16 v1, p22

    .line 24
    iput-object v1, v0, Lcom/android/apksig/ApkSigner;->mOutputApkDataSink:Lcom/android/apksig/util/DataSink;

    move-object/from16 v1, p23

    .line 25
    iput-object v1, v0, Lcom/android/apksig/ApkSigner;->mOutputApkDataSource:Lcom/android/apksig/util/DataSource;

    move-object/from16 v1, p24

    .line 26
    iput-object v1, v0, Lcom/android/apksig/ApkSigner;->mOutputV4File:Ljava/io/File;

    move-object/from16 v1, p25

    .line 27
    iput-object v1, v0, Lcom/android/apksig/ApkSigner;->mSigningCertificateLineage:Lcom/android/apksig/SigningCertificateLineage;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/util/List;Lcom/android/apksig/ApkSigner$SignerConfig;Lcom/android/apksig/SigningCertificateLineage;ZLjava/lang/Integer;IZZZZZZZZZZLjava/lang/String;Lcom/android/apksig/ApkSignerEngine;Ljava/io/File;Lcom/android/apksig/util/DataSource;Ljava/io/File;Lcom/android/apksig/util/DataSink;Lcom/android/apksig/util/DataSource;Ljava/io/File;Lcom/android/apksig/SigningCertificateLineage;Lcom/android/apksig/ApkSigner$1;)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p25}, Lcom/android/apksig/ApkSigner;-><init>(Ljava/util/List;Lcom/android/apksig/ApkSigner$SignerConfig;Lcom/android/apksig/SigningCertificateLineage;ZLjava/lang/Integer;IZZZZZZZZZZLjava/lang/String;Lcom/android/apksig/ApkSignerEngine;Ljava/io/File;Lcom/android/apksig/util/DataSource;Ljava/io/File;Lcom/android/apksig/util/DataSink;Lcom/android/apksig/util/DataSource;Ljava/io/File;Lcom/android/apksig/SigningCertificateLineage;)V

    return-void
.end method

.method private static createExtraFieldToAlignData(Ljava/nio/ByteBuffer;JI)Ljava/nio/ByteBuffer;
    .locals 6

    const/4 v0, 0x1

    if-gt p3, v0, :cond_0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Ljava/nio/Buffer;->remaining()I

    move-result v0

    add-int/lit8 v0, v0, 0x5

    add-int/2addr v0, p3

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    :goto_0
    invoke-virtual {p0}, Ljava/nio/Buffer;->remaining()I

    move-result v1

    const/16 v2, -0x26cb

    const/4 v3, 0x4

    if-lt v1, v3, :cond_5

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v1

    invoke-static {p0}, Lcom/android/apksig/internal/zip/ZipUtils;->getUnsignedInt16(Ljava/nio/ByteBuffer;)I

    move-result v4

    invoke-virtual {p0}, Ljava/nio/Buffer;->remaining()I

    move-result v5

    if-le v4, v5, :cond_1

    goto :goto_1

    :cond_1
    if-nez v1, :cond_2

    if-eqz v4, :cond_3

    :cond_2
    if-ne v1, v2, :cond_4

    :cond_3
    invoke-virtual {p0}, Ljava/nio/Buffer;->position()I

    move-result v1

    add-int/2addr v1, v4

    invoke-virtual {p0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    goto :goto_0

    :cond_4
    invoke-virtual {p0}, Ljava/nio/Buffer;->position()I

    move-result v1

    sub-int/2addr v1, v3

    invoke-virtual {p0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    invoke-virtual {p0}, Ljava/nio/Buffer;->limit()I

    move-result v1

    invoke-virtual {p0}, Ljava/nio/Buffer;->position()I

    move-result v2

    add-int/2addr v2, v3

    add-int/2addr v2, v4

    invoke-virtual {p0, v2}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    invoke-virtual {v0, p0}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    invoke-virtual {p0, v1}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    goto :goto_0

    :cond_5
    :goto_1
    invoke-virtual {v0}, Ljava/nio/Buffer;->position()I

    move-result p0

    int-to-long v3, p0

    add-long/2addr p1, v3

    const-wide/16 v3, 0x6

    add-long/2addr p1, v3

    int-to-long v3, p3

    rem-long/2addr p1, v3

    long-to-int p0, p1

    sub-int p0, p3, p0

    rem-int/2addr p0, p3

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    add-int/lit8 p1, p0, 0x2

    invoke-static {v0, p1}, Lcom/android/apksig/internal/zip/ZipUtils;->putUnsignedInt16(Ljava/nio/ByteBuffer;I)V

    invoke-static {v0, p3}, Lcom/android/apksig/internal/zip/ZipUtils;->putUnsignedInt16(Ljava/nio/ByteBuffer;I)V

    invoke-virtual {v0}, Ljava/nio/Buffer;->position()I

    move-result p1

    add-int/2addr p1, p0

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    return-object v0
.end method

.method private static extractPinPatterns(Ljava/util/List;Lcom/android/apksig/util/DataSource;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/apksig/internal/zip/CentralDirectoryRecord;",
            ">;",
            "Lcom/android/apksig/util/DataSource;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/apksig/Hints$PatternWithRange;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/android/apksig/apk/ApkFormatException;
        }
    .end annotation

    const-string v0, "assets/com.android.hints.pins.txt"

    invoke-static {p0, v0}, Lcom/android/apksig/ApkSigner;->findCdRecord(Ljava/util/List;Ljava/lang/String;)Lcom/android/apksig/internal/zip/CentralDirectoryRecord;

    move-result-object p0

    if-eqz p0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :try_start_0
    invoke-interface {p1}, Lcom/android/apksig/util/DataSource;->size()J

    move-result-wide v0

    invoke-static {p1, p0, v0, v1}, Lcom/android/apksig/internal/zip/LocalFileRecord;->getUncompressedData(Lcom/android/apksig/util/DataSource;Lcom/android/apksig/internal/zip/CentralDirectoryRecord;J)[B

    move-result-object p0
    :try_end_0
    .catch Lcom/android/apksig/zip/ZipFormatException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-static {p0}, Lcom/android/apksig/Hints;->parsePinPatterns([B)Ljava/util/ArrayList;

    move-result-object p0

    goto :goto_0

    :catch_0
    new-instance p1, Lcom/android/apksig/apk/ApkFormatException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Bad "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lcom/android/apksig/apk/ApkFormatException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method private static findCdRecord(Ljava/util/List;Ljava/lang/String;)Lcom/android/apksig/internal/zip/CentralDirectoryRecord;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/apksig/internal/zip/CentralDirectoryRecord;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lcom/android/apksig/internal/zip/CentralDirectoryRecord;"
        }
    .end annotation

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/apksig/internal/zip/CentralDirectoryRecord;

    invoke-virtual {v0}, Lcom/android/apksig/internal/zip/CentralDirectoryRecord;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method private static fulfillInspectInputJarEntryRequest(Lcom/android/apksig/util/DataSource;Lcom/android/apksig/internal/zip/LocalFileRecord;Lcom/android/apksig/ApkSignerEngine$InspectJarEntryRequest;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/android/apksig/apk/ApkFormatException;
        }
    .end annotation

    :try_start_0
    invoke-interface {p2}, Lcom/android/apksig/ApkSignerEngine$InspectJarEntryRequest;->getDataSink()Lcom/android/apksig/util/DataSink;

    move-result-object v0

    invoke-virtual {p1, p0, v0}, Lcom/android/apksig/internal/zip/LocalFileRecord;->outputUncompressedData(Lcom/android/apksig/util/DataSource;Lcom/android/apksig/util/DataSink;)V
    :try_end_0
    .catch Lcom/android/apksig/zip/ZipFormatException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-interface {p2}, Lcom/android/apksig/ApkSignerEngine$InspectJarEntryRequest;->done()V

    return-void

    :catch_0
    move-exception p0

    new-instance p2, Lcom/android/apksig/apk/ApkFormatException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Malformed ZIP entry: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/apksig/internal/zip/LocalFileRecord;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1, p0}, Lcom/android/apksig/apk/ApkFormatException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method

.method public static getAndroidManifestFromApk(Ljava/util/List;Lcom/android/apksig/util/DataSource;)Ljava/nio/ByteBuffer;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/apksig/internal/zip/CentralDirectoryRecord;",
            ">;",
            "Lcom/android/apksig/util/DataSource;",
            ")",
            "Ljava/nio/ByteBuffer;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/android/apksig/apk/ApkFormatException;,
            Lcom/android/apksig/zip/ZipFormatException;
        }
    .end annotation

    const-string v0, "AndroidManifest.xml"

    invoke-static {p0, v0}, Lcom/android/apksig/ApkSigner;->findCdRecord(Ljava/util/List;Ljava/lang/String;)Lcom/android/apksig/internal/zip/CentralDirectoryRecord;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-interface {p1}, Lcom/android/apksig/util/DataSource;->size()J

    move-result-wide v0

    invoke-static {p1, p0, v0, v1}, Lcom/android/apksig/internal/zip/LocalFileRecord;->getUncompressedData(Lcom/android/apksig/util/DataSource;Lcom/android/apksig/internal/zip/CentralDirectoryRecord;J)[B

    move-result-object p0

    invoke-static {p0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Lcom/android/apksig/apk/ApkFormatException;

    const-string p1, "Missing AndroidManifest.xml"

    invoke-direct {p0, p1}, Lcom/android/apksig/apk/ApkFormatException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static getInputJarEntryDataAlignmentMultiple(Lcom/android/apksig/internal/zip/LocalFileRecord;)I
    .locals 5

    invoke-virtual {p0}, Lcom/android/apksig/internal/zip/LocalFileRecord;->isDataCompressed()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    invoke-virtual {p0}, Lcom/android/apksig/internal/zip/LocalFileRecord;->getExtra()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/Buffer;->hasRemaining()Z

    move-result v1

    const/4 v2, 0x4

    if-eqz v1, :cond_4

    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    :goto_0
    invoke-virtual {v0}, Ljava/nio/Buffer;->remaining()I

    move-result v1

    if-lt v1, v2, :cond_4

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v1

    invoke-static {v0}, Lcom/android/apksig/internal/zip/ZipUtils;->getUnsignedInt16(Ljava/nio/ByteBuffer;)I

    move-result v3

    invoke-virtual {v0}, Ljava/nio/Buffer;->remaining()I

    move-result v4

    if-le v3, v4, :cond_1

    goto :goto_1

    :cond_1
    const/16 v4, -0x26cb

    if-eq v1, v4, :cond_2

    invoke-virtual {v0}, Ljava/nio/Buffer;->position()I

    move-result v1

    add-int/2addr v1, v3

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    goto :goto_0

    :cond_2
    const/4 v1, 0x2

    if-ge v3, v1, :cond_3

    goto :goto_1

    :cond_3
    invoke-static {v0}, Lcom/android/apksig/internal/zip/ZipUtils;->getUnsignedInt16(Ljava/nio/ByteBuffer;)I

    move-result p0

    return p0

    :cond_4
    :goto_1
    invoke-virtual {p0}, Lcom/android/apksig/internal/zip/LocalFileRecord;->getName()Ljava/lang/String;

    move-result-object p0

    const-string v0, ".so"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_5

    const/16 v2, 0x1000

    :cond_5
    return v2
.end method

.method private static getMinSdkVersionFromApk(Ljava/util/List;Lcom/android/apksig/util/DataSource;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/apksig/internal/zip/CentralDirectoryRecord;",
            ">;",
            "Lcom/android/apksig/util/DataSource;",
            ")I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/android/apksig/apk/MinSdkVersionException;
        }
    .end annotation

    :try_start_0
    invoke-static {p0, p1}, Lcom/android/apksig/ApkSigner;->getAndroidManifestFromApk(Ljava/util/List;Lcom/android/apksig/util/DataSource;)Ljava/nio/ByteBuffer;

    move-result-object p0
    :try_end_0
    .catch Lcom/android/apksig/zip/ZipFormatException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/android/apksig/apk/ApkFormatException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-static {p0}, Lcom/android/apksig/apk/ApkUtils;->getMinSdkVersionFromBinaryAndroidManifest(Ljava/nio/ByteBuffer;)I

    move-result p0

    return p0

    :catch_0
    move-exception p0

    goto :goto_0

    :catch_1
    move-exception p0

    :goto_0
    new-instance p1, Lcom/android/apksig/apk/MinSdkVersionException;

    const-string v0, "Failed to determine APK\'s minimum supported Android platform version"

    invoke-direct {p1, v0, p0}, Lcom/android/apksig/apk/MinSdkVersionException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method private static getZipCentralDirectory(Lcom/android/apksig/util/DataSource;Lcom/android/apksig/apk/ApkUtils$ZipSections;)Ljava/nio/ByteBuffer;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/android/apksig/apk/ApkFormatException;
        }
    .end annotation

    invoke-virtual {p1}, Lcom/android/apksig/zip/ZipSections;->getZipCentralDirectorySizeBytes()J

    move-result-wide v0

    const-wide/32 v2, 0x7fffffff

    cmp-long v2, v0, v2

    if-gtz v2, :cond_0

    invoke-virtual {p1}, Lcom/android/apksig/zip/ZipSections;->getZipCentralDirectoryOffset()J

    move-result-wide v2

    long-to-int p1, v0

    invoke-interface {p0, v2, v3, p1}, Lcom/android/apksig/util/DataSource;->getByteBuffer(JI)Ljava/nio/ByteBuffer;

    move-result-object p0

    sget-object p1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {p0, p1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    return-object p0

    :cond_0
    new-instance p0, Lcom/android/apksig/apk/ApkFormatException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ZIP Central Directory too large: "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/apksig/apk/ApkFormatException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static outputDataToOutputApk(Ljava/lang/String;[BJLjava/util/List;IILcom/android/apksig/util/DataSink;)J
    .locals 23
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[BJ",
            "Ljava/util/List<",
            "Lcom/android/apksig/internal/zip/CentralDirectoryRecord;",
            ">;II",
            "Lcom/android/apksig/util/DataSink;",
            ")J"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p1

    invoke-static/range {p1 .. p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-static {v1}, Lcom/android/apksig/internal/zip/ZipUtils;->deflate(Ljava/nio/ByteBuffer;)Lcom/android/apksig/internal/zip/ZipUtils$DeflateResult;

    move-result-object v1

    iget-object v11, v1, Lcom/android/apksig/internal/zip/ZipUtils$DeflateResult;->output:[B

    iget-wide v14, v1, Lcom/android/apksig/internal/zip/ZipUtils$DeflateResult;->inputCrc32:J

    array-length v1, v0

    int-to-long v8, v1

    move-object/from16 v2, p0

    move/from16 v3, p5

    move/from16 v4, p6

    move-object v5, v11

    move-wide v6, v14

    move-object/from16 v10, p7

    invoke-static/range {v2 .. v10}, Lcom/android/apksig/internal/zip/LocalFileRecord;->outputRecordWithDeflateCompressedData(Ljava/lang/String;II[BJJLcom/android/apksig/util/DataSink;)J

    move-result-wide v1

    array-length v3, v11

    int-to-long v3, v3

    array-length v0, v0

    int-to-long v5, v0

    move-object/from16 v12, p0

    move/from16 v13, p5

    move-wide v7, v14

    move/from16 v14, p6

    move-wide v15, v7

    move-wide/from16 v17, v3

    move-wide/from16 v19, v5

    move-wide/from16 v21, p2

    invoke-static/range {v12 .. v22}, Lcom/android/apksig/internal/zip/CentralDirectoryRecord;->createWithDeflateCompressedData(Ljava/lang/String;IIJJJJ)Lcom/android/apksig/internal/zip/CentralDirectoryRecord;

    move-result-object v0

    move-object/from16 v3, p4

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-wide v1
.end method

.method private static outputInputJarEntryLfhRecordPreservingDataAlignment(Lcom/android/apksig/util/DataSource;Lcom/android/apksig/internal/zip/LocalFileRecord;Lcom/android/apksig/util/DataSink;J)Lcom/android/apksig/ApkSigner$OutputSizeAndDataOffset;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1}, Lcom/android/apksig/internal/zip/LocalFileRecord;->getStartOffsetInArchive()J

    move-result-wide v0

    cmp-long v2, v0, p3

    if-nez v2, :cond_0

    new-instance p3, Lcom/android/apksig/ApkSigner$OutputSizeAndDataOffset;

    invoke-virtual {p1, p0, p2}, Lcom/android/apksig/internal/zip/LocalFileRecord;->outputRecord(Lcom/android/apksig/util/DataSource;Lcom/android/apksig/util/DataSink;)J

    move-result-wide v0

    invoke-virtual {p1}, Lcom/android/apksig/internal/zip/LocalFileRecord;->getDataStartOffsetInRecord()I

    move-result p0

    int-to-long p0, p0

    invoke-direct {p3, v0, v1, p0, p1}, Lcom/android/apksig/ApkSigner$OutputSizeAndDataOffset;-><init>(JJ)V

    return-object p3

    :cond_0
    invoke-static {p1}, Lcom/android/apksig/ApkSigner;->getInputJarEntryDataAlignmentMultiple(Lcom/android/apksig/internal/zip/LocalFileRecord;)I

    move-result v2

    const/4 v3, 0x1

    if-le v2, v3, :cond_3

    int-to-long v3, v2

    rem-long v5, v0, v3

    rem-long v7, p3, v3

    cmp-long v5, v5, v7

    if-nez v5, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lcom/android/apksig/internal/zip/LocalFileRecord;->getDataStartOffsetInRecord()I

    move-result v5

    int-to-long v5, v5

    add-long/2addr v0, v5

    rem-long/2addr v0, v3

    const-wide/16 v3, 0x0

    cmp-long v0, v0, v3

    if-eqz v0, :cond_2

    new-instance p3, Lcom/android/apksig/ApkSigner$OutputSizeAndDataOffset;

    invoke-virtual {p1, p0, p2}, Lcom/android/apksig/internal/zip/LocalFileRecord;->outputRecord(Lcom/android/apksig/util/DataSource;Lcom/android/apksig/util/DataSink;)J

    move-result-wide v0

    invoke-virtual {p1}, Lcom/android/apksig/internal/zip/LocalFileRecord;->getDataStartOffsetInRecord()I

    move-result p0

    int-to-long p0, p0

    invoke-direct {p3, v0, v1, p0, p1}, Lcom/android/apksig/ApkSigner$OutputSizeAndDataOffset;-><init>(JJ)V

    return-object p3

    :cond_2
    invoke-virtual {p1}, Lcom/android/apksig/internal/zip/LocalFileRecord;->getExtra()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/apksig/internal/zip/LocalFileRecord;->getExtraFieldStartOffsetInsideRecord()I

    move-result v1

    int-to-long v3, v1

    add-long/2addr p3, v3

    invoke-static {v0, p3, p4, v2}, Lcom/android/apksig/ApkSigner;->createExtraFieldToAlignData(Ljava/nio/ByteBuffer;JI)Ljava/nio/ByteBuffer;

    move-result-object p3

    invoke-virtual {p1}, Lcom/android/apksig/internal/zip/LocalFileRecord;->getDataStartOffsetInRecord()I

    move-result p4

    int-to-long v0, p4

    invoke-virtual {p3}, Ljava/nio/Buffer;->remaining()I

    move-result p4

    int-to-long v2, p4

    add-long/2addr v0, v2

    invoke-virtual {p1}, Lcom/android/apksig/internal/zip/LocalFileRecord;->getExtra()Ljava/nio/ByteBuffer;

    move-result-object p4

    invoke-virtual {p4}, Ljava/nio/Buffer;->remaining()I

    move-result p4

    int-to-long v2, p4

    sub-long/2addr v0, v2

    new-instance p4, Lcom/android/apksig/ApkSigner$OutputSizeAndDataOffset;

    invoke-virtual {p1, p0, p3, p2}, Lcom/android/apksig/internal/zip/LocalFileRecord;->outputRecordWithModifiedExtra(Lcom/android/apksig/util/DataSource;Ljava/nio/ByteBuffer;Lcom/android/apksig/util/DataSink;)J

    move-result-wide p0

    invoke-direct {p4, p0, p1, v0, v1}, Lcom/android/apksig/ApkSigner$OutputSizeAndDataOffset;-><init>(JJ)V

    return-object p4

    :cond_3
    :goto_0
    new-instance p3, Lcom/android/apksig/ApkSigner$OutputSizeAndDataOffset;

    invoke-virtual {p1, p0, p2}, Lcom/android/apksig/internal/zip/LocalFileRecord;->outputRecord(Lcom/android/apksig/util/DataSource;Lcom/android/apksig/util/DataSink;)J

    move-result-wide v0

    invoke-virtual {p1}, Lcom/android/apksig/internal/zip/LocalFileRecord;->getDataStartOffsetInRecord()I

    move-result p0

    int-to-long p0, p0

    invoke-direct {p3, v0, v1, p0, p1}, Lcom/android/apksig/ApkSigner$OutputSizeAndDataOffset;-><init>(JJ)V

    return-object p3
.end method

.method private static parseZipCentralDirectory(Ljava/nio/ByteBuffer;Lcom/android/apksig/apk/ApkUtils$ZipSections;)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/nio/ByteBuffer;",
            "Lcom/android/apksig/apk/ApkUtils$ZipSections;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/apksig/internal/zip/CentralDirectoryRecord;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/apksig/apk/ApkFormatException;
        }
    .end annotation

    invoke-virtual {p1}, Lcom/android/apksig/zip/ZipSections;->getZipCentralDirectoryOffset()J

    move-result-wide v0

    invoke-virtual {p1}, Lcom/android/apksig/zip/ZipSections;->getZipCentralDirectoryRecordCount()I

    move-result p1

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, p1}, Ljava/util/ArrayList;-><init>(I)V

    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3, p1}, Ljava/util/HashSet;-><init>(I)V

    const/4 v4, 0x0

    :goto_0
    if-ge v4, p1, :cond_1

    invoke-virtual {p0}, Ljava/nio/Buffer;->position()I

    move-result v5

    :try_start_0
    invoke-static {p0}, Lcom/android/apksig/internal/zip/CentralDirectoryRecord;->getRecord(Ljava/nio/ByteBuffer;)Lcom/android/apksig/internal/zip/CentralDirectoryRecord;

    move-result-object v5
    :try_end_0
    .catch Lcom/android/apksig/zip/ZipFormatException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {v5}, Lcom/android/apksig/internal/zip/CentralDirectoryRecord;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v3, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    new-instance p0, Lcom/android/apksig/apk/ApkFormatException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Multiple ZIP entries with the same name: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/apksig/apk/ApkFormatException;-><init>(Ljava/lang/String;)V

    throw p0

    :catch_0
    move-exception p0

    new-instance p1, Lcom/android/apksig/apk/ApkFormatException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Malformed ZIP Central Directory record #"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " at file offset "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    int-to-long v3, v5

    add-long/2addr v0, v3

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0, p0}, Lcom/android/apksig/apk/ApkFormatException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    :cond_1
    invoke-virtual {p0}, Ljava/nio/Buffer;->hasRemaining()Z

    move-result p1

    if-nez p1, :cond_2

    return-object v2

    :cond_2
    new-instance p1, Lcom/android/apksig/apk/ApkFormatException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unused space at the end of ZIP Central Directory: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/nio/Buffer;->remaining()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " bytes starting at file offset "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/nio/Buffer;->position()I

    move-result p0

    int-to-long v3, p0

    add-long/2addr v0, v3

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lcom/android/apksig/apk/ApkFormatException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private static requestOutputEntryInspection(Lcom/android/apksig/ApkSignerEngine;Ljava/lang/String;[B)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-interface {p0, p1}, Lcom/android/apksig/ApkSignerEngine;->outputJarEntry(Ljava/lang/String;)Lcom/android/apksig/ApkSignerEngine$InspectJarEntryRequest;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/android/apksig/ApkSignerEngine$InspectJarEntryRequest;->getDataSink()Lcom/android/apksig/util/DataSink;

    move-result-object p1

    array-length v0, p2

    const/4 v1, 0x0

    invoke-interface {p1, p2, v1, v0}, Lcom/android/apksig/util/DataSink;->consume([BII)V

    invoke-interface {p0}, Lcom/android/apksig/ApkSignerEngine$InspectJarEntryRequest;->done()V

    :cond_0
    return-void
.end method

.method private sign(Lcom/android/apksig/util/DataSource;Lcom/android/apksig/util/DataSink;Lcom/android/apksig/util/DataSource;)V
    .locals 33
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/android/apksig/apk/ApkFormatException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/InvalidKeyException;,
            Ljava/security/SignatureException;
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move-object/from16 v10, p2

    move-object/from16 v11, p3

    .line 21
    :try_start_0
    invoke-static/range {p1 .. p1}, Lcom/android/apksig/apk/ApkUtils;->findZipSections(Lcom/android/apksig/util/DataSource;)Lcom/android/apksig/apk/ApkUtils$ZipSections;

    move-result-object v12
    :try_end_0
    .catch Lcom/android/apksig/zip/ZipFormatException; {:try_start_0 .. :try_end_0} :catch_4

    const-wide/16 v2, -0x1

    .line 22
    :try_start_1
    invoke-static {v0, v12}, Lcom/android/apksig/apk/ApkUtils;->findApkSigningBlock(Lcom/android/apksig/util/DataSource;Lcom/android/apksig/apk/ApkUtils$ZipSections;)Lcom/android/apksig/apk/ApkUtils$ApkSigningBlock;

    move-result-object v5

    .line 23
    invoke-virtual {v5}, Lcom/android/apksig/apk/ApkUtilsLite$ApkSigningBlock;->getStartOffset()J

    move-result-wide v6
    :try_end_1
    .catch Lcom/android/apksig/apk/ApkSigningBlockNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    .line 24
    :try_start_2
    invoke-virtual {v5}, Lcom/android/apksig/apk/ApkUtilsLite$ApkSigningBlock;->getContents()Lcom/android/apksig/util/DataSource;

    move-result-object v5
    :try_end_2
    .catch Lcom/android/apksig/apk/ApkSigningBlockNotFoundException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    :catch_0
    move-wide v6, v2

    :catch_1
    const/4 v5, 0x0

    :goto_0
    cmp-long v2, v6, v2

    if-eqz v2, :cond_0

    goto :goto_1

    .line 25
    :cond_0
    invoke-virtual {v12}, Lcom/android/apksig/zip/ZipSections;->getZipCentralDirectoryOffset()J

    move-result-wide v6

    :goto_1
    const-wide/16 v13, 0x0

    .line 26
    invoke-interface {v0, v13, v14, v6, v7}, Lcom/android/apksig/util/DataSource;->slice(JJ)Lcom/android/apksig/util/DataSource;

    move-result-object v8

    .line 27
    invoke-static {v0, v12}, Lcom/android/apksig/ApkSigner;->getZipCentralDirectory(Lcom/android/apksig/util/DataSource;Lcom/android/apksig/apk/ApkUtils$ZipSections;)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 28
    invoke-static {v0, v12}, Lcom/android/apksig/ApkSigner;->parseZipCentralDirectory(Ljava/nio/ByteBuffer;Lcom/android/apksig/apk/ApkUtils$ZipSections;)Ljava/util/List;

    move-result-object v0

    .line 29
    invoke-static {v0, v8}, Lcom/android/apksig/ApkSigner;->extractPinPatterns(Ljava/util/List;Lcom/android/apksig/util/DataSource;)Ljava/util/List;

    move-result-object v9

    if-nez v9, :cond_1

    const/4 v15, 0x0

    goto :goto_2

    .line 30
    :cond_1
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move-object v15, v2

    .line 31
    :goto_2
    iget-object v2, v1, Lcom/android/apksig/ApkSigner;->mSignerEngine:Lcom/android/apksig/ApkSignerEngine;

    if-eqz v2, :cond_2

    :goto_3
    move-object v13, v2

    goto/16 :goto_6

    .line 32
    :cond_2
    iget-object v2, v1, Lcom/android/apksig/ApkSigner;->mMinSdkVersion:Ljava/lang/Integer;

    if-eqz v2, :cond_3

    .line 33
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    goto :goto_4

    .line 34
    :cond_3
    invoke-static {v0, v8}, Lcom/android/apksig/ApkSigner;->getMinSdkVersionFromApk(Ljava/util/List;Lcom/android/apksig/util/DataSource;)I

    move-result v2

    .line 35
    :goto_4
    new-instance v3, Ljava/util/ArrayList;

    iget-object v6, v1, Lcom/android/apksig/ApkSigner;->mSignerConfigs:Ljava/util/List;

    .line 36
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    invoke-direct {v3, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 37
    iget-object v6, v1, Lcom/android/apksig/ApkSigner;->mSignerConfigs:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_5
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/apksig/ApkSigner$SignerConfig;

    .line 38
    new-instance v4, Lcom/android/apksig/DefaultApkSignerEngine$SignerConfig$Builder;

    .line 39
    invoke-virtual {v7}, Lcom/android/apksig/ApkSigner$SignerConfig;->getName()Ljava/lang/String;

    move-result-object v13

    .line 40
    invoke-virtual {v7}, Lcom/android/apksig/ApkSigner$SignerConfig;->getPrivateKey()Ljava/security/PrivateKey;

    move-result-object v14

    move-object/from16 p1, v6

    .line 41
    invoke-virtual {v7}, Lcom/android/apksig/ApkSigner$SignerConfig;->getCertificates()Ljava/util/List;

    move-result-object v6

    .line 42
    invoke-virtual {v7}, Lcom/android/apksig/ApkSigner$SignerConfig;->getDeterministicDsaSigning()Z

    move-result v7

    invoke-direct {v4, v13, v14, v6, v7}, Lcom/android/apksig/DefaultApkSignerEngine$SignerConfig$Builder;-><init>(Ljava/lang/String;Ljava/security/PrivateKey;Ljava/util/List;Z)V

    .line 43
    invoke-virtual {v4}, Lcom/android/apksig/DefaultApkSignerEngine$SignerConfig$Builder;->build()Lcom/android/apksig/DefaultApkSignerEngine$SignerConfig;

    move-result-object v4

    .line 44
    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object/from16 v6, p1

    const-wide/16 v13, 0x0

    goto :goto_5

    .line 45
    :cond_4
    new-instance v4, Lcom/android/apksig/DefaultApkSignerEngine$Builder;

    invoke-direct {v4, v3, v2}, Lcom/android/apksig/DefaultApkSignerEngine$Builder;-><init>(Ljava/util/List;I)V

    iget-boolean v2, v1, Lcom/android/apksig/ApkSigner;->mV1SigningEnabled:Z

    .line 46
    invoke-virtual {v4, v2}, Lcom/android/apksig/DefaultApkSignerEngine$Builder;->setV1SigningEnabled(Z)Lcom/android/apksig/DefaultApkSignerEngine$Builder;

    move-result-object v2

    iget-boolean v3, v1, Lcom/android/apksig/ApkSigner;->mV2SigningEnabled:Z

    .line 47
    invoke-virtual {v2, v3}, Lcom/android/apksig/DefaultApkSignerEngine$Builder;->setV2SigningEnabled(Z)Lcom/android/apksig/DefaultApkSignerEngine$Builder;

    move-result-object v2

    iget-boolean v3, v1, Lcom/android/apksig/ApkSigner;->mV3SigningEnabled:Z

    .line 48
    invoke-virtual {v2, v3}, Lcom/android/apksig/DefaultApkSignerEngine$Builder;->setV3SigningEnabled(Z)Lcom/android/apksig/DefaultApkSignerEngine$Builder;

    move-result-object v2

    iget-boolean v3, v1, Lcom/android/apksig/ApkSigner;->mVerityEnabled:Z

    .line 49
    invoke-virtual {v2, v3}, Lcom/android/apksig/DefaultApkSignerEngine$Builder;->setVerityEnabled(Z)Lcom/android/apksig/DefaultApkSignerEngine$Builder;

    move-result-object v2

    iget-boolean v3, v1, Lcom/android/apksig/ApkSigner;->mDebuggableApkPermitted:Z

    .line 50
    invoke-virtual {v2, v3}, Lcom/android/apksig/DefaultApkSignerEngine$Builder;->setDebuggableApkPermitted(Z)Lcom/android/apksig/DefaultApkSignerEngine$Builder;

    move-result-object v2

    iget-boolean v3, v1, Lcom/android/apksig/ApkSigner;->mOtherSignersSignaturesPreserved:Z

    .line 51
    invoke-virtual {v2, v3}, Lcom/android/apksig/DefaultApkSignerEngine$Builder;->setOtherSignersSignaturesPreserved(Z)Lcom/android/apksig/DefaultApkSignerEngine$Builder;

    move-result-object v2

    iget-object v3, v1, Lcom/android/apksig/ApkSigner;->mSigningCertificateLineage:Lcom/android/apksig/SigningCertificateLineage;

    .line 52
    invoke-virtual {v2, v3}, Lcom/android/apksig/DefaultApkSignerEngine$Builder;->setSigningCertificateLineage(Lcom/android/apksig/SigningCertificateLineage;)Lcom/android/apksig/DefaultApkSignerEngine$Builder;

    move-result-object v2

    iget v3, v1, Lcom/android/apksig/ApkSigner;->mRotationMinSdkVersion:I

    .line 53
    invoke-virtual {v2, v3}, Lcom/android/apksig/DefaultApkSignerEngine$Builder;->setMinSdkVersionForRotation(I)Lcom/android/apksig/DefaultApkSignerEngine$Builder;

    move-result-object v2

    iget-boolean v3, v1, Lcom/android/apksig/ApkSigner;->mRotationTargetsDevRelease:Z

    .line 54
    invoke-virtual {v2, v3}, Lcom/android/apksig/DefaultApkSignerEngine$Builder;->setRotationTargetsDevRelease(Z)Lcom/android/apksig/DefaultApkSignerEngine$Builder;

    move-result-object v2

    .line 55
    iget-object v3, v1, Lcom/android/apksig/ApkSigner;->mCreatedBy:Ljava/lang/String;

    if-eqz v3, :cond_5

    .line 56
    invoke-virtual {v2, v3}, Lcom/android/apksig/DefaultApkSignerEngine$Builder;->setCreatedBy(Ljava/lang/String;)Lcom/android/apksig/DefaultApkSignerEngine$Builder;

    .line 57
    :cond_5
    iget-object v3, v1, Lcom/android/apksig/ApkSigner;->mSourceStampSignerConfig:Lcom/android/apksig/ApkSigner$SignerConfig;

    if-eqz v3, :cond_6

    .line 58
    new-instance v4, Lcom/android/apksig/DefaultApkSignerEngine$SignerConfig$Builder;

    .line 59
    invoke-virtual {v3}, Lcom/android/apksig/ApkSigner$SignerConfig;->getName()Ljava/lang/String;

    move-result-object v3

    iget-object v6, v1, Lcom/android/apksig/ApkSigner;->mSourceStampSignerConfig:Lcom/android/apksig/ApkSigner$SignerConfig;

    .line 60
    invoke-virtual {v6}, Lcom/android/apksig/ApkSigner$SignerConfig;->getPrivateKey()Ljava/security/PrivateKey;

    move-result-object v6

    iget-object v7, v1, Lcom/android/apksig/ApkSigner;->mSourceStampSignerConfig:Lcom/android/apksig/ApkSigner$SignerConfig;

    .line 61
    invoke-virtual {v7}, Lcom/android/apksig/ApkSigner$SignerConfig;->getCertificates()Ljava/util/List;

    move-result-object v7

    iget-object v13, v1, Lcom/android/apksig/ApkSigner;->mSourceStampSignerConfig:Lcom/android/apksig/ApkSigner$SignerConfig;

    .line 62
    invoke-virtual {v13}, Lcom/android/apksig/ApkSigner$SignerConfig;->getDeterministicDsaSigning()Z

    move-result v13

    invoke-direct {v4, v3, v6, v7, v13}, Lcom/android/apksig/DefaultApkSignerEngine$SignerConfig$Builder;-><init>(Ljava/lang/String;Ljava/security/PrivateKey;Ljava/util/List;Z)V

    .line 63
    invoke-virtual {v4}, Lcom/android/apksig/DefaultApkSignerEngine$SignerConfig$Builder;->build()Lcom/android/apksig/DefaultApkSignerEngine$SignerConfig;

    move-result-object v3

    .line 64
    invoke-virtual {v2, v3}, Lcom/android/apksig/DefaultApkSignerEngine$Builder;->setStampSignerConfig(Lcom/android/apksig/DefaultApkSignerEngine$SignerConfig;)Lcom/android/apksig/DefaultApkSignerEngine$Builder;

    .line 65
    :cond_6
    iget-object v3, v1, Lcom/android/apksig/ApkSigner;->mSourceStampSigningCertificateLineage:Lcom/android/apksig/SigningCertificateLineage;

    if-eqz v3, :cond_7

    .line 66
    invoke-virtual {v2, v3}, Lcom/android/apksig/DefaultApkSignerEngine$Builder;->setSourceStampSigningCertificateLineage(Lcom/android/apksig/SigningCertificateLineage;)Lcom/android/apksig/DefaultApkSignerEngine$Builder;

    .line 67
    :cond_7
    invoke-virtual {v2}, Lcom/android/apksig/DefaultApkSignerEngine$Builder;->build()Lcom/android/apksig/DefaultApkSignerEngine;

    move-result-object v2

    goto/16 :goto_3

    :goto_6
    if-eqz v5, :cond_8

    .line 68
    invoke-interface {v13, v5}, Lcom/android/apksig/ApkSignerEngine;->inputApkSigningBlock(Lcom/android/apksig/util/DataSource;)V

    .line 69
    :cond_8
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 70
    sget-object v3, Lcom/android/apksig/internal/zip/CentralDirectoryRecord;->BY_LOCAL_FILE_HEADER_OFFSET_COMPARATOR:Ljava/util/Comparator;

    invoke-static {v2, v3}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 71
    new-instance v14, Ljava/util/HashMap;

    .line 72
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    invoke-direct {v14, v3}, Ljava/util/HashMap;-><init>(I)V

    .line 73
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v18

    const/4 v2, -0x1

    const-wide/16 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, -0x1

    const-wide/16 v19, 0x0

    :goto_7
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    const-string v11, "stamp-cert-sha256"

    move-object/from16 v21, v12

    if-eqz v16, :cond_19

    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v12, v16

    check-cast v12, Lcom/android/apksig/internal/zip/CentralDirectoryRecord;

    .line 74
    invoke-virtual {v12}, Lcom/android/apksig/internal/zip/CentralDirectoryRecord;->getName()Ljava/lang/String;

    move-result-object v1

    .line 75
    const-string v7, "pinlist.meta"

    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_9

    move-object/from16 v1, p0

    move-object/from16 v11, p3

    :goto_8
    move-object/from16 v12, v21

    goto :goto_7

    .line 76
    :cond_9
    invoke-virtual {v11, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_a

    move v7, v2

    .line 77
    :try_start_3
    invoke-interface {v8}, Lcom/android/apksig/util/DataSource;->size()J

    move-result-wide v1

    .line 78
    invoke-static {v8, v12, v1, v2}, Lcom/android/apksig/internal/zip/LocalFileRecord;->getUncompressedData(Lcom/android/apksig/util/DataSource;Lcom/android/apksig/internal/zip/CentralDirectoryRecord;J)[B

    move-result-object v5
    :try_end_3
    .catch Lcom/android/apksig/zip/ZipFormatException; {:try_start_3 .. :try_end_3} :catch_2

    move-object/from16 v1, p0

    move-object/from16 v11, p3

    move v2, v7

    goto :goto_8

    .line 79
    :catch_2
    new-instance v0, Lcom/android/apksig/apk/ApkFormatException;

    const-string v1, "Bad source stamp entry"

    invoke-direct {v0, v1}, Lcom/android/apksig/apk/ApkFormatException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_a
    move v7, v2

    .line 80
    invoke-interface {v13, v1}, Lcom/android/apksig/ApkSignerEngine;->inputJarEntry(Ljava/lang/String;)Lcom/android/apksig/ApkSignerEngine$InputJarEntryInstructions;

    move-result-object v11

    .line 81
    sget-object v2, Lcom/android/apksig/ApkSigner$1;->$SwitchMap$com$android$apksig$ApkSignerEngine$InputJarEntryInstructions$OutputPolicy:[I

    invoke-virtual {v11}, Lcom/android/apksig/ApkSignerEngine$InputJarEntryInstructions;->getOutputPolicy()Lcom/android/apksig/ApkSignerEngine$InputJarEntryInstructions$OutputPolicy;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Enum;->ordinal()I

    move-result v22

    aget v2, v2, v22

    move-object/from16 v22, v5

    const/4 v5, 0x1

    if-eq v2, v5, :cond_d

    const/4 v5, 0x2

    if-eq v2, v5, :cond_c

    const/4 v5, 0x3

    if-ne v2, v5, :cond_b

    goto :goto_9

    .line 82
    :cond_b
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown output policy: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    invoke-virtual {v11}, Lcom/android/apksig/ApkSignerEngine$InputJarEntryInstructions;->getOutputPolicy()Lcom/android/apksig/ApkSignerEngine$InputJarEntryInstructions$OutputPolicy;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_c
    :goto_9
    const/16 v23, 0x0

    goto :goto_a

    :cond_d
    const/16 v23, 0x1

    .line 84
    :goto_a
    invoke-virtual {v12}, Lcom/android/apksig/internal/zip/CentralDirectoryRecord;->getLocalFileHeaderOffset()J

    move-result-wide v24

    cmp-long v2, v24, v3

    if-lez v2, :cond_e

    sub-long v26, v24, v3

    move-object v2, v8

    move-object/from16 v28, v22

    move-object/from16 v22, v0

    move v0, v6

    move-wide/from16 v5, v26

    move/from16 v30, v7

    move-object/from16 v29, v14

    const/4 v14, -0x1

    move-object/from16 v7, p2

    .line 85
    invoke-interface/range {v2 .. v7}, Lcom/android/apksig/util/DataSource;->feed(JJLcom/android/apksig/util/DataSink;)V

    add-long v19, v19, v26

    move-object/from16 v16, v15

    move-wide/from16 v5, v19

    move-wide/from16 v3, v24

    goto :goto_b

    :cond_e
    move/from16 v30, v7

    move-object/from16 v29, v14

    move-object/from16 v28, v22

    move-object/from16 v22, v0

    move v0, v6

    move-object/from16 v16, v15

    move-wide/from16 v5, v19

    .line 86
    :goto_b
    :try_start_4
    invoke-interface {v8}, Lcom/android/apksig/util/DataSource;->size()J

    move-result-wide v14

    .line 87
    invoke-static {v8, v12, v14, v15}, Lcom/android/apksig/internal/zip/LocalFileRecord;->getRecord(Lcom/android/apksig/util/DataSource;Lcom/android/apksig/internal/zip/CentralDirectoryRecord;J)Lcom/android/apksig/internal/zip/LocalFileRecord;

    move-result-object v2
    :try_end_4
    .catch Lcom/android/apksig/zip/ZipFormatException; {:try_start_4 .. :try_end_4} :catch_3

    .line 88
    invoke-virtual {v2}, Lcom/android/apksig/internal/zip/LocalFileRecord;->getSize()J

    move-result-wide v14

    add-long/2addr v3, v14

    .line 89
    invoke-virtual {v11}, Lcom/android/apksig/ApkSignerEngine$InputJarEntryInstructions;->getInspectJarEntryRequest()Lcom/android/apksig/ApkSignerEngine$InspectJarEntryRequest;

    move-result-object v7

    if-eqz v7, :cond_f

    .line 90
    invoke-static {v8, v2, v7}, Lcom/android/apksig/ApkSigner;->fulfillInspectInputJarEntryRequest(Lcom/android/apksig/util/DataSource;Lcom/android/apksig/internal/zip/LocalFileRecord;Lcom/android/apksig/ApkSignerEngine$InspectJarEntryRequest;)V

    :cond_f
    if-eqz v23, :cond_18

    .line 91
    invoke-virtual {v12}, Lcom/android/apksig/internal/zip/CentralDirectoryRecord;->getLastModificationDate()I

    move-result v7

    .line 92
    invoke-virtual {v12}, Lcom/android/apksig/internal/zip/CentralDirectoryRecord;->getLastModificationTime()I

    move-result v11

    const/4 v14, -0x1

    if-eq v0, v14, :cond_10

    if-gt v7, v0, :cond_10

    move/from16 v14, v30

    if-ne v7, v0, :cond_11

    if-le v11, v14, :cond_11

    :cond_10
    move v0, v7

    move v14, v11

    .line 93
    :cond_11
    invoke-interface {v13, v1}, Lcom/android/apksig/ApkSignerEngine;->outputJarEntry(Ljava/lang/String;)Lcom/android/apksig/ApkSignerEngine$InspectJarEntryRequest;

    move-result-object v7

    if-eqz v7, :cond_12

    .line 94
    invoke-static {v8, v2, v7}, Lcom/android/apksig/ApkSigner;->fulfillInspectInputJarEntryRequest(Lcom/android/apksig/util/DataSource;Lcom/android/apksig/internal/zip/LocalFileRecord;Lcom/android/apksig/ApkSignerEngine$InspectJarEntryRequest;)V

    .line 95
    :cond_12
    invoke-static {v8, v2, v10, v5, v6}, Lcom/android/apksig/ApkSigner;->outputInputJarEntryLfhRecordPreservingDataAlignment(Lcom/android/apksig/util/DataSource;Lcom/android/apksig/internal/zip/LocalFileRecord;Lcom/android/apksig/util/DataSink;J)Lcom/android/apksig/ApkSigner$OutputSizeAndDataOffset;

    move-result-object v7

    move-wide/from16 v19, v3

    .line 96
    iget-wide v3, v7, Lcom/android/apksig/ApkSigner$OutputSizeAndDataOffset;->outputBytes:J

    add-long/2addr v3, v5

    move v11, v14

    .line 97
    iget-wide v14, v7, Lcom/android/apksig/ApkSigner$OutputSizeAndDataOffset;->dataOffsetBytes:J

    add-long/2addr v14, v5

    if-eqz v9, :cond_15

    .line 98
    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    const/16 v23, 0x0

    :goto_c
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v25

    if-eqz v25, :cond_14

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v25

    move/from16 v26, v0

    move-object/from16 v0, v25

    check-cast v0, Lcom/android/apksig/Hints$PatternWithRange;

    move-object/from16 v25, v7

    .line 99
    invoke-virtual {v12}, Lcom/android/apksig/internal/zip/CentralDirectoryRecord;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Lcom/android/apksig/Hints$PatternWithRange;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/regex/Matcher;->matches()Z

    move-result v7

    if-eqz v7, :cond_13

    .line 100
    new-instance v7, Lcom/android/apksig/Hints$ByteRange;

    invoke-direct {v7, v14, v15, v3, v4}, Lcom/android/apksig/Hints$ByteRange;-><init>(JJ)V

    .line 101
    invoke-virtual {v0, v7}, Lcom/android/apksig/Hints$PatternWithRange;->ClampToAbsoluteByteRange(Lcom/android/apksig/Hints$ByteRange;)Lcom/android/apksig/Hints$ByteRange;

    move-result-object v0

    if-eqz v0, :cond_13

    move-object/from16 v7, v16

    .line 102
    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/16 v23, 0x1

    goto :goto_d

    :cond_13
    move-object/from16 v7, v16

    :goto_d
    move-object/from16 v16, v7

    move-object/from16 v7, v25

    move/from16 v0, v26

    goto :goto_c

    :cond_14
    move/from16 v26, v0

    move-object/from16 v7, v16

    if-eqz v23, :cond_16

    .line 103
    new-instance v0, Lcom/android/apksig/Hints$ByteRange;

    invoke-direct {v0, v5, v6, v14, v15}, Lcom/android/apksig/Hints$ByteRange;-><init>(JJ)V

    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_e

    :cond_15
    move/from16 v26, v0

    move-object/from16 v7, v16

    .line 104
    :cond_16
    :goto_e
    invoke-virtual {v2}, Lcom/android/apksig/internal/zip/LocalFileRecord;->getStartOffsetInArchive()J

    move-result-wide v14

    cmp-long v0, v5, v14

    if-nez v0, :cond_17

    :goto_f
    move-object/from16 v15, v29

    goto :goto_10

    .line 105
    :cond_17
    invoke-virtual {v12, v5, v6}, Lcom/android/apksig/internal/zip/CentralDirectoryRecord;->createWithModifiedLocalFileHeaderOffset(J)Lcom/android/apksig/internal/zip/CentralDirectoryRecord;

    move-result-object v12

    goto :goto_f

    .line 106
    :goto_10
    invoke-interface {v15, v1, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move v2, v11

    move/from16 v6, v26

    goto :goto_11

    :cond_18
    move-wide/from16 v19, v3

    move-object/from16 v7, v16

    move-object/from16 v15, v29

    move/from16 v14, v30

    move-wide v3, v5

    move v2, v14

    move v6, v0

    :goto_11
    move-object/from16 v1, p0

    move-object/from16 v11, p3

    move-object v14, v15

    move-object/from16 v12, v21

    move-object/from16 v0, v22

    move-object/from16 v5, v28

    move-object v15, v7

    move-wide/from16 v31, v3

    move-wide/from16 v3, v19

    move-wide/from16 v19, v31

    goto/16 :goto_7

    :catch_3
    move-exception v0

    .line 107
    new-instance v1, Lcom/android/apksig/apk/ApkFormatException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Malformed ZIP entry: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Lcom/android/apksig/internal/zip/CentralDirectoryRecord;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/android/apksig/apk/ApkFormatException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_19
    move-object/from16 v22, v0

    move-object/from16 v28, v5

    move v0, v6

    move-object v7, v15

    move-object v15, v14

    move v14, v2

    .line 108
    invoke-interface {v8}, Lcom/android/apksig/util/DataSource;->size()J

    move-result-wide v1

    cmp-long v5, v3, v1

    if-gez v5, :cond_1a

    sub-long v25, v1, v3

    move-object v2, v8

    move-wide/from16 v5, v25

    move-object v1, v7

    move-object/from16 v7, p2

    .line 109
    invoke-interface/range {v2 .. v7}, Lcom/android/apksig/util/DataSource;->feed(JJLcom/android/apksig/util/DataSink;)V

    add-long v19, v19, v25

    goto :goto_12

    :cond_1a
    move-object v1, v7

    .line 110
    :goto_12
    new-instance v12, Ljava/util/ArrayList;

    invoke-interface/range {v22 .. v22}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, 0xa

    invoke-direct {v12, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 111
    invoke-interface/range {v22 .. v22}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1b
    :goto_13
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/apksig/internal/zip/CentralDirectoryRecord;

    .line 112
    invoke-virtual {v3}, Lcom/android/apksig/internal/zip/CentralDirectoryRecord;->getName()Ljava/lang/String;

    move-result-object v3

    .line 113
    invoke-interface {v15, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/apksig/internal/zip/CentralDirectoryRecord;

    if-eqz v3, :cond_1b

    .line 114
    invoke-interface {v12, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_13

    :cond_1c
    const/4 v3, -0x1

    if-ne v0, v3, :cond_1d

    const/16 v6, 0x3a21

    move v0, v6

    const/4 v14, 0x0

    .line 115
    :cond_1d
    invoke-interface {v13}, Lcom/android/apksig/ApkSignerEngine;->isEligibleForSourceStamp()Z

    move-result v2

    if-eqz v2, :cond_20

    .line 116
    invoke-interface {v13}, Lcom/android/apksig/ApkSignerEngine;->generateSourceStampCertificateDigest()[B

    move-result-object v3

    move-object/from16 v15, p0

    .line 117
    iget-boolean v2, v15, Lcom/android/apksig/ApkSigner;->mForceSourceStampOverwrite:Z

    if-nez v2, :cond_1f

    move-object/from16 v5, v28

    if-eqz v5, :cond_1f

    .line 118
    invoke-static {v3, v5}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    if-eqz v2, :cond_1e

    goto :goto_14

    .line 119
    :cond_1e
    new-instance v0, Lcom/android/apksig/apk/ApkFormatException;

    const-string v1, "Cannot generate SourceStamp. APK contains an existing entry with the name: %s, and it is different than the provided source stamp certificate"

    filled-new-array {v11}, [Ljava/lang/Object;

    move-result-object v2

    .line 120
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/apksig/apk/ApkFormatException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 121
    :cond_1f
    :goto_14
    const-string v2, "stamp-cert-sha256"

    move-wide/from16 v4, v19

    move-object v6, v12

    move v7, v14

    move v8, v0

    move-object/from16 v9, p2

    .line 122
    invoke-static/range {v2 .. v9}, Lcom/android/apksig/ApkSigner;->outputDataToOutputApk(Ljava/lang/String;[BJLjava/util/List;IILcom/android/apksig/util/DataSink;)J

    move-result-wide v2

    add-long v19, v19, v2

    :goto_15
    move-wide/from16 v8, v19

    goto :goto_16

    :cond_20
    move-object/from16 v15, p0

    goto :goto_15

    :goto_16
    if-eqz v1, :cond_21

    .line 123
    new-instance v2, Lcom/android/apksig/Hints$ByteRange;

    const-wide v3, 0x7fffffffffffffffL

    invoke-direct {v2, v8, v9, v3, v4}, Lcom/android/apksig/Hints$ByteRange;-><init>(JJ)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 124
    invoke-static {v1}, Lcom/android/apksig/Hints;->encodeByteRangeList(Ljava/util/List;)[B

    move-result-object v3

    .line 125
    const-string v2, "pinlist.meta"

    invoke-static {v13, v2, v3}, Lcom/android/apksig/ApkSigner;->requestOutputEntryInspection(Lcom/android/apksig/ApkSignerEngine;Ljava/lang/String;[B)V

    move-wide v4, v8

    move-object v6, v12

    move v7, v14

    move-wide/from16 v19, v8

    move v8, v0

    move-object/from16 v9, p2

    .line 126
    invoke-static/range {v2 .. v9}, Lcom/android/apksig/ApkSigner;->outputDataToOutputApk(Ljava/lang/String;[BJLjava/util/List;IILcom/android/apksig/util/DataSink;)J

    move-result-wide v1

    add-long v8, v19, v1

    goto :goto_17

    :cond_21
    move-wide/from16 v19, v8

    .line 127
    :goto_17
    invoke-interface {v13}, Lcom/android/apksig/ApkSignerEngine;->outputJarEntries()Lcom/android/apksig/ApkSignerEngine$OutputJarSignatureRequest;

    move-result-object v1

    if-eqz v1, :cond_23

    .line 128
    invoke-interface {v1}, Lcom/android/apksig/ApkSignerEngine$OutputJarSignatureRequest;->getAdditionalJarEntries()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    move-wide/from16 v18, v8

    :goto_18
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_22

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/apksig/ApkSignerEngine$OutputJarSignatureRequest$JarEntry;

    .line 129
    invoke-virtual {v2}, Lcom/android/apksig/ApkSignerEngine$OutputJarSignatureRequest$JarEntry;->getName()Ljava/lang/String;

    move-result-object v3

    .line 130
    invoke-virtual {v2}, Lcom/android/apksig/ApkSignerEngine$OutputJarSignatureRequest$JarEntry;->getData()[B

    move-result-object v4

    .line 131
    invoke-static {v13, v3, v4}, Lcom/android/apksig/ApkSigner;->requestOutputEntryInspection(Lcom/android/apksig/ApkSignerEngine;Ljava/lang/String;[B)V

    move-object v2, v3

    move-object v3, v4

    move-wide/from16 v4, v18

    move-object v6, v12

    move v7, v14

    move v8, v0

    move-object/from16 v9, p2

    .line 132
    invoke-static/range {v2 .. v9}, Lcom/android/apksig/ApkSigner;->outputDataToOutputApk(Ljava/lang/String;[BJLjava/util/List;IILcom/android/apksig/util/DataSink;)J

    move-result-wide v2

    add-long v18, v18, v2

    goto :goto_18

    .line 133
    :cond_22
    invoke-interface {v1}, Lcom/android/apksig/ApkSignerEngine$OutputJarSignatureRequest;->done()V

    move-wide/from16 v8, v18

    .line 134
    :cond_23
    invoke-interface {v12}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const-wide/16 v1, 0x0

    :goto_19
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_24

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/apksig/internal/zip/CentralDirectoryRecord;

    .line 135
    invoke-virtual {v3}, Lcom/android/apksig/internal/zip/CentralDirectoryRecord;->getSize()I

    move-result v3

    int-to-long v3, v3

    add-long/2addr v1, v3

    goto :goto_19

    :cond_24
    const-wide/32 v3, 0x7fffffff

    cmp-long v0, v1, v3

    if-gtz v0, :cond_29

    long-to-int v0, v1

    .line 136
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 137
    invoke-interface {v12}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_25

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/apksig/internal/zip/CentralDirectoryRecord;

    .line 138
    invoke-virtual {v2, v0}, Lcom/android/apksig/internal/zip/CentralDirectoryRecord;->copyTo(Ljava/nio/ByteBuffer;)V

    goto :goto_1a

    .line 139
    :cond_25
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 140
    new-instance v1, Lcom/android/apksig/internal/util/ByteBufferDataSource;

    invoke-direct {v1, v0}, Lcom/android/apksig/internal/util/ByteBufferDataSource;-><init>(Ljava/nio/ByteBuffer;)V

    .line 141
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v3

    .line 142
    invoke-virtual/range {v21 .. v21}, Lcom/android/apksig/zip/ZipSections;->getZipEndOfCentralDirectory()Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 143
    invoke-interface {v1}, Lcom/android/apksig/util/DataSource;->size()J

    move-result-wide v4

    move-wide v6, v8

    .line 144
    invoke-static/range {v2 .. v7}, Lcom/android/apksig/internal/zip/EocdRecord;->createWithModifiedCentralDirectoryInfo(Ljava/nio/ByteBuffer;IJJ)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 145
    invoke-static {v2}, Lcom/android/apksig/util/DataSources;->asDataSource(Ljava/nio/ByteBuffer;)Lcom/android/apksig/util/DataSource;

    move-result-object v3

    move-object/from16 v11, p3

    .line 146
    invoke-interface {v13, v11, v1, v3}, Lcom/android/apksig/ApkSignerEngine;->outputZipSections2(Lcom/android/apksig/util/DataSource;Lcom/android/apksig/util/DataSource;Lcom/android/apksig/util/DataSource;)Lcom/android/apksig/ApkSignerEngine$OutputApkSigningBlockRequest2;

    move-result-object v3

    if-eqz v3, :cond_27

    .line 147
    invoke-interface {v3}, Lcom/android/apksig/ApkSignerEngine$OutputApkSigningBlockRequest2;->getPaddingSizeBeforeApkSigningBlock()I

    move-result v4

    .line 148
    invoke-interface {v3}, Lcom/android/apksig/ApkSignerEngine$OutputApkSigningBlockRequest2;->getApkSigningBlock()[B

    move-result-object v5

    .line 149
    invoke-interface {v3}, Lcom/android/apksig/ApkSignerEngine$OutputApkSigningBlockRequest2;->done()V

    .line 150
    invoke-interface {v1}, Lcom/android/apksig/util/DataSource;->size()J

    move-result-wide v6

    add-long/2addr v6, v8

    move-wide/from16 v18, v8

    int-to-long v8, v4

    add-long/2addr v6, v8

    array-length v3, v5

    move-wide/from16 v20, v8

    int-to-long v8, v3

    add-long/2addr v6, v8

    .line 151
    invoke-virtual {v2}, Ljava/nio/Buffer;->remaining()I

    move-result v3

    int-to-long v8, v3

    add-long/2addr v6, v8

    .line 152
    iget-boolean v3, v15, Lcom/android/apksig/ApkSigner;->mAlignFileSize:Z

    if-eqz v3, :cond_26

    const-wide/16 v8, 0x1000

    rem-long/2addr v6, v8

    const-wide/16 v16, 0x0

    cmp-long v3, v6, v16

    if-eqz v3, :cond_26

    sub-long/2addr v8, v6

    long-to-int v3, v8

    .line 153
    invoke-static {v2, v3}, Lcom/android/apksig/internal/zip/EocdRecord;->createWithPaddedComment(Ljava/nio/ByteBuffer;I)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 154
    new-instance v3, Lcom/android/apksig/internal/util/ByteBufferDataSource;

    invoke-direct {v3, v0}, Lcom/android/apksig/internal/util/ByteBufferDataSource;-><init>(Ljava/nio/ByteBuffer;)V

    .line 155
    invoke-static {v2}, Lcom/android/apksig/util/DataSources;->asDataSource(Ljava/nio/ByteBuffer;)Lcom/android/apksig/util/DataSource;

    move-result-object v0

    .line 156
    invoke-interface {v13, v11, v3, v0}, Lcom/android/apksig/ApkSignerEngine;->outputZipSections2(Lcom/android/apksig/util/DataSource;Lcom/android/apksig/util/DataSource;Lcom/android/apksig/util/DataSource;)Lcom/android/apksig/ApkSignerEngine$OutputApkSigningBlockRequest2;

    move-result-object v0

    .line 157
    invoke-interface {v0}, Lcom/android/apksig/ApkSignerEngine$OutputApkSigningBlockRequest2;->getApkSigningBlock()[B

    move-result-object v5

    .line 158
    invoke-interface {v0}, Lcom/android/apksig/ApkSignerEngine$OutputApkSigningBlockRequest2;->done()V

    .line 159
    :cond_26
    invoke-static {v4}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-interface {v10, v0}, Lcom/android/apksig/util/DataSink;->consume(Ljava/nio/ByteBuffer;)V

    .line 160
    array-length v0, v5

    const/4 v3, 0x0

    invoke-interface {v10, v5, v3, v0}, Lcom/android/apksig/util/DataSink;->consume([BII)V

    add-long v8, v18, v20

    .line 161
    array-length v0, v5

    int-to-long v3, v0

    add-long/2addr v8, v3

    invoke-static {v2, v8, v9}, Lcom/android/apksig/internal/zip/ZipUtils;->setZipEocdCentralDirectoryOffset(Ljava/nio/ByteBuffer;J)V

    :cond_27
    move-object v0, v2

    const-wide/16 v3, 0x0

    .line 162
    invoke-interface {v1}, Lcom/android/apksig/util/DataSource;->size()J

    move-result-wide v5

    move-object v2, v1

    move-object/from16 v7, p2

    invoke-interface/range {v2 .. v7}, Lcom/android/apksig/util/DataSource;->feed(JJLcom/android/apksig/util/DataSink;)V

    .line 163
    invoke-interface {v10, v0}, Lcom/android/apksig/util/DataSink;->consume(Ljava/nio/ByteBuffer;)V

    .line 164
    invoke-interface {v13}, Lcom/android/apksig/ApkSignerEngine;->outputDone()V

    .line 165
    iget-boolean v0, v15, Lcom/android/apksig/ApkSigner;->mV4SigningEnabled:Z

    if-eqz v0, :cond_28

    .line 166
    iget-object v0, v15, Lcom/android/apksig/ApkSigner;->mOutputV4File:Ljava/io/File;

    iget-boolean v1, v15, Lcom/android/apksig/ApkSigner;->mV4ErrorReportingEnabled:Z

    const/4 v2, 0x1

    xor-int/2addr v1, v2

    invoke-interface {v13, v11, v0, v1}, Lcom/android/apksig/ApkSignerEngine;->signV4(Lcom/android/apksig/util/DataSource;Ljava/io/File;Z)V

    :cond_28
    return-void

    .line 167
    :cond_29
    new-instance v0, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Output ZIP Central Directory too large: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " bytes"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_4
    move-exception v0

    move-object v15, v1

    move-object v1, v0

    .line 168
    new-instance v0, Lcom/android/apksig/apk/ApkFormatException;

    const-string v2, "Malformed APK: not a ZIP archive"

    invoke-direct {v0, v2, v1}, Lcom/android/apksig/apk/ApkFormatException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method


# virtual methods
.method public sign()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/android/apksig/apk/ApkFormatException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/InvalidKeyException;,
            Ljava/security/SignatureException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    :try_start_0
    iget-object v1, p0, Lcom/android/apksig/ApkSigner;->mInputApkDataSource:Lcom/android/apksig/util/DataSource;

    if-eqz v1, :cond_0

    move-object v2, v1

    move-object v1, v0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v1, p0, Lcom/android/apksig/ApkSigner;->mInputApkFile:Ljava/io/File;

    if-eqz v1, :cond_6

    .line 3
    new-instance v1, Ljava/io/RandomAccessFile;

    iget-object v2, p0, Lcom/android/apksig/ApkSigner;->mInputApkFile:Ljava/io/File;

    const-string v3, "r"

    invoke-direct {v1, v2, v3}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 4
    :try_start_1
    invoke-static {v1}, Lcom/android/apksig/util/DataSources;->asDataSource(Ljava/io/RandomAccessFile;)Lcom/android/apksig/util/DataSource;

    move-result-object v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 5
    :goto_0
    :try_start_2
    iget-object v3, p0, Lcom/android/apksig/ApkSigner;->mOutputApkDataSink:Lcom/android/apksig/util/DataSink;

    if-eqz v3, :cond_1

    .line 6
    iget-object v4, p0, Lcom/android/apksig/ApkSigner;->mOutputApkDataSource:Lcom/android/apksig/util/DataSource;

    goto :goto_1

    :catchall_0
    move-exception v2

    goto :goto_3

    .line 7
    :cond_1
    iget-object v3, p0, Lcom/android/apksig/ApkSigner;->mOutputApkFile:Ljava/io/File;

    if-eqz v3, :cond_4

    .line 8
    new-instance v3, Ljava/io/RandomAccessFile;

    iget-object v4, p0, Lcom/android/apksig/ApkSigner;->mOutputApkFile:Ljava/io/File;

    const-string v5, "rw"

    invoke-direct {v3, v4, v5}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const-wide/16 v4, 0x0

    .line 9
    :try_start_3
    invoke-virtual {v3, v4, v5}, Ljava/io/RandomAccessFile;->setLength(J)V

    .line 10
    invoke-static {v3}, Lcom/android/apksig/util/DataSinks;->asDataSink(Ljava/io/RandomAccessFile;)Lcom/android/apksig/util/DataSink;

    move-result-object v0

    .line 11
    invoke-static {v3}, Lcom/android/apksig/util/DataSources;->asDataSource(Ljava/io/RandomAccessFile;)Lcom/android/apksig/util/DataSource;

    move-result-object v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    move-object v6, v3

    move-object v3, v0

    move-object v0, v6

    .line 12
    :goto_1
    :try_start_4
    invoke-direct {p0, v2, v3, v4}, Lcom/android/apksig/ApkSigner;->sign(Lcom/android/apksig/util/DataSource;Lcom/android/apksig/util/DataSink;Lcom/android/apksig/util/DataSource;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-eqz v0, :cond_2

    .line 13
    :try_start_5
    invoke-interface {v0}, Ljava/io/Closeable;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception v0

    goto :goto_4

    :cond_2
    :goto_2
    if-eqz v1, :cond_3

    .line 14
    invoke-interface {v1}, Ljava/io/Closeable;->close()V

    :cond_3
    return-void

    :catchall_2
    move-exception v2

    move-object v0, v3

    goto :goto_3

    .line 15
    :cond_4
    :try_start_6
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Output APK not specified"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :goto_3
    if-eqz v0, :cond_5

    .line 16
    :try_start_7
    invoke-interface {v0}, Ljava/io/Closeable;->close()V

    .line 17
    :cond_5
    throw v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :catchall_3
    move-exception v1

    move-object v6, v1

    move-object v1, v0

    move-object v0, v6

    goto :goto_4

    .line 18
    :cond_6
    :try_start_8
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Input APK not specified"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    :goto_4
    if-eqz v1, :cond_7

    .line 19
    invoke-interface {v1}, Ljava/io/Closeable;->close()V

    .line 20
    :cond_7
    throw v0
.end method
