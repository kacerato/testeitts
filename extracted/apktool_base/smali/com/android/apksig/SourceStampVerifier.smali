.class public Lcom/android/apksig/SourceStampVerifier;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/apksig/SourceStampVerifier$Result;,
        Lcom/android/apksig/SourceStampVerifier$Builder;
    }
.end annotation


# instance fields
.field private final mApkDataSource:Lcom/android/apksig/util/DataSource;

.field private final mApkFile:Ljava/io/File;

.field private final mMaxSdkVersion:I

.field private final mMinSdkVersion:I


# direct methods
.method private constructor <init>(Ljava/io/File;Lcom/android/apksig/util/DataSource;II)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/android/apksig/SourceStampVerifier;->mApkFile:Ljava/io/File;

    .line 4
    iput-object p2, p0, Lcom/android/apksig/SourceStampVerifier;->mApkDataSource:Lcom/android/apksig/util/DataSource;

    .line 5
    iput p3, p0, Lcom/android/apksig/SourceStampVerifier;->mMinSdkVersion:I

    .line 6
    iput p4, p0, Lcom/android/apksig/SourceStampVerifier;->mMaxSdkVersion:I

    return-void
.end method

.method public synthetic constructor <init>(Ljava/io/File;Lcom/android/apksig/util/DataSource;IILcom/android/apksig/SourceStampVerifier$1;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/apksig/SourceStampVerifier;-><init>(Ljava/io/File;Lcom/android/apksig/util/DataSource;II)V

    return-void
.end method

.method private static getApkContentDigestFromV1SigningScheme(Ljava/util/List;Lcom/android/apksig/util/DataSource;Lcom/android/apksig/zip/ZipSections;Lcom/android/apksig/SourceStampVerifier$Result;)Ljava/util/Map;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/apksig/internal/zip/CentralDirectoryRecord;",
            ">;",
            "Lcom/android/apksig/util/DataSource;",
            "Lcom/android/apksig/zip/ZipSections;",
            "Lcom/android/apksig/SourceStampVerifier$Result;",
            ")",
            "Ljava/util/Map<",
            "Lcom/android/apksig/internal/apk/ContentDigestAlgorithm;",
            "[B>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/android/apksig/apk/ApkFormatException;
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    new-instance v1, Ljava/util/EnumMap;

    const-class v2, Lcom/android/apksig/internal/apk/ContentDigestAlgorithm;

    invoke-direct {v1, v2}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v2, 0x0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/apksig/internal/zip/CentralDirectoryRecord;

    invoke-virtual {v3}, Lcom/android/apksig/internal/zip/CentralDirectoryRecord;->getName()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_1

    goto :goto_0

    :cond_1
    if-nez v2, :cond_2

    const-string v5, "META-INF/MANIFEST.MF"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    move-object v2, v3

    goto :goto_0

    :cond_2
    const-string v5, "META-INF/"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    const-string v5, ".RSA"

    invoke-virtual {v4, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_3

    const-string v5, ".DSA"

    invoke-virtual {v4, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_3

    const-string v5, ".EC"

    invoke-virtual {v4, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    :cond_3
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_4
    if-nez v2, :cond_5

    return-object v1

    :cond_5
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result p0

    const-string v3, "Failed to read APK"

    if-eqz p0, :cond_6

    const/4 p0, 0x0

    new-array p0, p0, [Ljava/lang/Object;

    const/16 v0, 0x24

    invoke-virtual {p3, v0, p0}, Lcom/android/apksig/SourceStampVerifier$Result;->addVerificationWarning(I[Ljava/lang/Object;)V

    goto :goto_4

    :cond_6
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_7
    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/apksig/internal/zip/CentralDirectoryRecord;

    :try_start_0
    const-string v4, "X.509"

    invoke-static {v4}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v4

    invoke-virtual {p2}, Lcom/android/apksig/zip/ZipSections;->getZipCentralDirectoryOffset()J

    move-result-wide v5

    invoke-static {p1, v0, v5, v6}, Lcom/android/apksig/internal/zip/LocalFileRecord;->getUncompressedData(Lcom/android/apksig/util/DataSource;Lcom/android/apksig/internal/zip/CentralDirectoryRecord;J)[B

    move-result-object v5

    new-instance v6, Ljava/io/ByteArrayInputStream;

    invoke-direct {v6, v5}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-virtual {v4, v6}, Ljava/security/cert/CertificateFactory;->generateCertificates(Ljava/io/InputStream;)Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_8
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_7

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/security/cert/Certificate;

    instance-of v6, v5, Ljava/security/cert/X509Certificate;

    if-eqz v6, :cond_8

    new-instance v4, Lcom/android/apksig/SourceStampVerifier$Result$SignerInfo;

    invoke-direct {v4}, Lcom/android/apksig/SourceStampVerifier$Result$SignerInfo;-><init>()V

    check-cast v5, Ljava/security/cert/X509Certificate;

    invoke-virtual {v4, v5}, Lcom/android/apksig/SourceStampVerifier$Result$SignerInfo;->setSigningCertificate(Ljava/security/cert/X509Certificate;)V

    invoke-static {p3, v4}, Lcom/android/apksig/SourceStampVerifier$Result;->access$300(Lcom/android/apksig/SourceStampVerifier$Result;Lcom/android/apksig/SourceStampVerifier$Result$SignerInfo;)V
    :try_end_0
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/android/apksig/zip/ZipFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    goto :goto_2

    :catch_1
    move-exception p0

    goto :goto_3

    :goto_2
    new-instance p1, Lcom/android/apksig/apk/ApkFormatException;

    invoke-direct {p1, v3, p0}, Lcom/android/apksig/apk/ApkFormatException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    :goto_3
    invoke-virtual {v0}, Lcom/android/apksig/internal/zip/CentralDirectoryRecord;->getName()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0, p0}, [Ljava/lang/Object;

    move-result-object p0

    const/16 v0, 0x25

    invoke-virtual {p3, v0, p0}, Lcom/android/apksig/SourceStampVerifier$Result;->addVerificationWarning(I[Ljava/lang/Object;)V

    :cond_9
    :goto_4
    :try_start_1
    invoke-virtual {p2}, Lcom/android/apksig/zip/ZipSections;->getZipCentralDirectoryOffset()J

    move-result-wide p2

    invoke-static {p1, v2, p2, p3}, Lcom/android/apksig/internal/zip/LocalFileRecord;->getUncompressedData(Lcom/android/apksig/util/DataSource;Lcom/android/apksig/internal/zip/CentralDirectoryRecord;J)[B

    move-result-object p0

    sget-object p1, Lcom/android/apksig/internal/apk/ContentDigestAlgorithm;->SHA256:Lcom/android/apksig/internal/apk/ContentDigestAlgorithm;

    invoke-static {p0}, Lcom/android/apksig/apk/ApkUtilsLite;->computeSha256DigestBytes([B)[B

    move-result-object p0

    invoke-interface {v1, p1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Lcom/android/apksig/zip/ZipFormatException; {:try_start_1 .. :try_end_1} :catch_2

    return-object v1

    :catch_2
    move-exception p0

    new-instance p1, Lcom/android/apksig/apk/ApkFormatException;

    invoke-direct {p1, v3, p0}, Lcom/android/apksig/apk/ApkFormatException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method private static parseSigner(Ljava/nio/ByteBuffer;ILjava/security/cert/CertificateFactory;Ljava/util/Map;Lcom/android/apksig/SourceStampVerifier$Result$SignerInfo;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/nio/ByteBuffer;",
            "I",
            "Ljava/security/cert/CertificateFactory;",
            "Ljava/util/Map<",
            "Lcom/android/apksig/internal/apk/ContentDigestAlgorithm;",
            "[B>;",
            "Lcom/android/apksig/SourceStampVerifier$Result$SignerInfo;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/apksig/apk/ApkFormatException;
        }
    .end annotation

    const/4 v0, 0x2

    const/4 v1, 0x0

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    move p1, v1

    :goto_0
    invoke-static {p0}, Lcom/android/apksig/internal/apk/ApkSigningBlockUtilsLite;->getLengthPrefixedSlice(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    move-result-object p0

    invoke-static {p0}, Lcom/android/apksig/internal/apk/ApkSigningBlockUtilsLite;->getLengthPrefixedSlice(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-static {p0}, Lcom/android/apksig/internal/apk/ApkSigningBlockUtilsLite;->getLengthPrefixedSlice(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    move-result-object p0

    :goto_1
    invoke-virtual {v0}, Ljava/nio/Buffer;->hasRemaining()Z

    move-result v2

    if-eqz v2, :cond_3

    :try_start_0
    invoke-static {v0}, Lcom/android/apksig/internal/apk/ApkSigningBlockUtilsLite;->getLengthPrefixedSlice(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v3

    invoke-static {v2}, Lcom/android/apksig/internal/apk/ApkSigningBlockUtilsLite;->readLengthPrefixedByteArray(Ljava/nio/ByteBuffer;)[B

    move-result-object v2

    invoke-static {v3}, Lcom/android/apksig/internal/apk/SignatureAlgorithm;->findById(I)Lcom/android/apksig/internal/apk/SignatureAlgorithm;

    move-result-object v3

    if-nez v3, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v3}, Lcom/android/apksig/internal/apk/SignatureAlgorithm;->getContentDigestAlgorithm()Lcom/android/apksig/internal/apk/ContentDigestAlgorithm;

    move-result-object v3

    invoke-interface {p3, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Lcom/android/apksig/apk/ApkFormatException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/nio/BufferUnderflowException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    if-eqz p1, :cond_2

    const/16 p0, 0x8

    goto :goto_2

    :cond_2
    const/16 p0, 0x10

    :goto_2
    new-array p1, v1, [Ljava/lang/Object;

    invoke-virtual {p4, p0, p1}, Lcom/android/apksig/SourceStampVerifier$Result$SignerInfo;->addVerificationWarning(I[Ljava/lang/Object;)V

    return-void

    :cond_3
    invoke-virtual {p0}, Ljava/nio/Buffer;->hasRemaining()Z

    move-result p3

    if-eqz p3, :cond_5

    invoke-static {p0}, Lcom/android/apksig/internal/apk/ApkSigningBlockUtilsLite;->readLengthPrefixedByteArray(Ljava/nio/ByteBuffer;)[B

    move-result-object p0

    :try_start_1
    new-instance p3, Ljava/io/ByteArrayInputStream;

    invoke-direct {p3, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-virtual {p2, p3}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object p2

    check-cast p2, Ljava/security/cert/X509Certificate;
    :try_end_1
    .catch Ljava/security/cert/CertificateException; {:try_start_1 .. :try_end_1} :catch_1

    new-instance p3, Lcom/android/apksig/internal/util/GuaranteedEncodedFormX509Certificate;

    invoke-direct {p3, p2, p0}, Lcom/android/apksig/internal/util/GuaranteedEncodedFormX509Certificate;-><init>(Ljava/security/cert/X509Certificate;[B)V

    invoke-virtual {p4, p3}, Lcom/android/apksig/SourceStampVerifier$Result$SignerInfo;->setSigningCertificate(Ljava/security/cert/X509Certificate;)V

    goto :goto_4

    :catch_1
    if-eqz p1, :cond_4

    const/4 p0, 0x6

    goto :goto_3

    :cond_4
    const/16 p0, 0xe

    :goto_3
    new-array p1, v1, [Ljava/lang/Object;

    invoke-virtual {p4, p0, p1}, Lcom/android/apksig/SourceStampVerifier$Result$SignerInfo;->addVerificationWarning(I[Ljava/lang/Object;)V

    return-void

    :cond_5
    :goto_4
    invoke-virtual {p4}, Lcom/android/apksig/SourceStampVerifier$Result$SignerInfo;->getSigningCertificate()Ljava/security/cert/X509Certificate;

    move-result-object p0

    if-nez p0, :cond_7

    if-eqz p1, :cond_6

    const/4 p0, 0x7

    goto :goto_5

    :cond_6
    const/16 p0, 0xf

    :goto_5
    new-array p1, v1, [Ljava/lang/Object;

    invoke-virtual {p4, p0, p1}, Lcom/android/apksig/SourceStampVerifier$Result$SignerInfo;->addVerificationWarning(I[Ljava/lang/Object;)V

    :cond_7
    return-void
.end method

.method public static parseSigners(Ljava/nio/ByteBuffer;ILjava/util/Map;Lcom/android/apksig/SourceStampVerifier$Result;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/nio/ByteBuffer;",
            "I",
            "Ljava/util/Map<",
            "Lcom/android/apksig/internal/apk/ContentDigestAlgorithm;",
            "[B>;",
            "Lcom/android/apksig/SourceStampVerifier$Result;",
            ")V"
        }
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x2

    if-ne p1, v2, :cond_0

    move v3, v0

    goto :goto_0

    :cond_0
    move v3, v1

    :goto_0
    :try_start_0
    invoke-static {p0}, Lcom/android/apksig/internal/apk/ApkSigningBlockUtilsLite;->getLengthPrefixedSlice(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    move-result-object p0
    :try_end_0
    .catch Lcom/android/apksig/apk/ApkFormatException; {:try_start_0 .. :try_end_0} :catch_2

    invoke-virtual {p0}, Ljava/nio/Buffer;->hasRemaining()Z

    move-result v0

    if-nez v0, :cond_2

    if-eqz v3, :cond_1

    goto :goto_1

    :cond_1
    const/16 v2, 0xa

    :goto_1
    new-array p0, v1, [Ljava/lang/Object;

    invoke-virtual {p3, v2, p0}, Lcom/android/apksig/SourceStampVerifier$Result;->addVerificationWarning(I[Ljava/lang/Object;)V

    return-void

    :cond_2
    :try_start_1
    const-string v0, "X.509"

    invoke-static {v0}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v0
    :try_end_1
    .catch Ljava/security/cert/CertificateException; {:try_start_1 .. :try_end_1} :catch_1

    :goto_2
    invoke-virtual {p0}, Ljava/nio/Buffer;->hasRemaining()Z

    move-result v2

    if-eqz v2, :cond_5

    new-instance v2, Lcom/android/apksig/SourceStampVerifier$Result$SignerInfo;

    invoke-direct {v2}, Lcom/android/apksig/SourceStampVerifier$Result$SignerInfo;-><init>()V

    if-eqz v3, :cond_3

    invoke-static {p3, v2}, Lcom/android/apksig/SourceStampVerifier$Result;->access$100(Lcom/android/apksig/SourceStampVerifier$Result;Lcom/android/apksig/SourceStampVerifier$Result$SignerInfo;)V

    goto :goto_3

    :cond_3
    invoke-static {p3, v2}, Lcom/android/apksig/SourceStampVerifier$Result;->access$200(Lcom/android/apksig/SourceStampVerifier$Result;Lcom/android/apksig/SourceStampVerifier$Result$SignerInfo;)V

    :goto_3
    :try_start_2
    invoke-static {p0}, Lcom/android/apksig/internal/apk/ApkSigningBlockUtilsLite;->getLengthPrefixedSlice(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    move-result-object v4

    invoke-static {v4, p1, v0, p2, v2}, Lcom/android/apksig/SourceStampVerifier;->parseSigner(Ljava/nio/ByteBuffer;ILjava/security/cert/CertificateFactory;Ljava/util/Map;Lcom/android/apksig/SourceStampVerifier$Result$SignerInfo;)V
    :try_end_2
    .catch Lcom/android/apksig/apk/ApkFormatException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/nio/BufferUnderflowException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2

    :catch_0
    if-eqz v3, :cond_4

    const/4 p0, 0x3

    goto :goto_4

    :cond_4
    const/16 p0, 0xb

    :goto_4
    new-array p1, v1, [Ljava/lang/Object;

    invoke-virtual {v2, p0, p1}, Lcom/android/apksig/SourceStampVerifier$Result$SignerInfo;->addVerificationWarning(I[Ljava/lang/Object;)V

    :cond_5
    return-void

    :catch_1
    move-exception p0

    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Failed to obtain X.509 CertificateFactory"

    invoke-direct {p1, p2, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    :catch_2
    if-eqz v3, :cond_6

    goto :goto_5

    :cond_6
    const/16 v0, 0x9

    :goto_5
    new-array p0, v1, [Ljava/lang/Object;

    invoke-virtual {p3, v0, p0}, Lcom/android/apksig/SourceStampVerifier$Result;->addVerificationWarning(I[Ljava/lang/Object;)V

    return-void
.end method

.method private verifySourceStamp(Lcom/android/apksig/util/DataSource;Ljava/lang/String;)Lcom/android/apksig/SourceStampVerifier$Result;
    .locals 12

    .line 13
    new-instance v0, Lcom/android/apksig/SourceStampVerifier$Result;

    invoke-direct {v0}, Lcom/android/apksig/SourceStampVerifier$Result;-><init>()V

    const/4 v1, 0x0

    const/16 v2, 0x1c

    .line 14
    :try_start_0
    invoke-static {p1}, Lcom/android/apksig/apk/ApkUtilsLite;->findZipSections(Lcom/android/apksig/util/DataSource;)Lcom/android/apksig/zip/ZipSections;

    move-result-object v4

    .line 15
    invoke-static {p1, v4}, Lcom/android/apksig/internal/zip/ZipUtils;->parseZipCentralDirectory(Lcom/android/apksig/util/DataSource;Lcom/android/apksig/zip/ZipSections;)Ljava/util/List;

    move-result-object v3

    .line 16
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    const/4 v7, 0x0

    if-eqz v6, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/apksig/internal/zip/CentralDirectoryRecord;

    .line 17
    const-string v8, "stamp-cert-sha256"

    invoke-virtual {v6}, Lcom/android/apksig/internal/zip/CentralDirectoryRecord;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8
    :try_end_0
    .catch Lcom/android/apksig/apk/ApkFormatException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lcom/android/apksig/zip/ZipFormatException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/android/apksig/internal/apk/SignatureNotFoundException; {:try_start_0 .. :try_end_0} :catch_7

    if-eqz v8, :cond_0

    goto :goto_0

    :catch_0
    move-exception p1

    goto/16 :goto_3

    :catch_1
    move-exception p1

    goto/16 :goto_4

    :catch_2
    move-exception p1

    goto/16 :goto_4

    :catch_3
    move-exception p1

    goto/16 :goto_4

    :cond_1
    move-object v6, v7

    :goto_0
    const/16 v5, 0x18

    if-nez v6, :cond_2

    const p2, 0x6dff800d

    .line 18
    :try_start_1
    invoke-static {p1, v4, p2}, Lcom/android/apksig/internal/apk/ApkSigningBlockUtilsLite;->findSignature(Lcom/android/apksig/util/DataSource;Lcom/android/apksig/zip/ZipSections;I)Lcom/android/apksig/internal/apk/SignatureInfo;
    :try_end_1
    .catch Lcom/android/apksig/internal/apk/SignatureNotFoundException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Lcom/android/apksig/apk/ApkFormatException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Lcom/android/apksig/zip/ZipFormatException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_4
    const/16 v5, 0x19

    .line 19
    :goto_1
    :try_start_2
    new-array p1, v1, [Ljava/lang/Object;

    .line 20
    invoke-virtual {v0, v5, p1}, Lcom/android/apksig/SourceStampVerifier$Result;->addVerificationError(I[Ljava/lang/Object;)V

    return-object v0

    .line 21
    :cond_2
    invoke-virtual {v4}, Lcom/android/apksig/zip/ZipSections;->getZipCentralDirectoryOffset()J

    move-result-wide v8

    .line 22
    invoke-static {p1, v6, v8, v9}, Lcom/android/apksig/internal/zip/LocalFileRecord;->getUncompressedData(Lcom/android/apksig/util/DataSource;Lcom/android/apksig/internal/zip/CentralDirectoryRecord;J)[B

    move-result-object v6

    if-eqz p2, :cond_3

    .line 23
    invoke-static {v6}, Lcom/android/apksig/internal/apk/ApkSigningBlockUtilsLite;->toHex([B)Ljava/lang/String;

    move-result-object v8

    .line 24
    invoke-virtual {p2, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_3

    .line 25
    filled-new-array {v8, p2}, [Ljava/lang/Object;

    move-result-object p1

    const/16 p2, 0x17

    invoke-virtual {v0, p2, p1}, Lcom/android/apksig/SourceStampVerifier$Result;->addVerificationError(I[Ljava/lang/Object;)V

    return-object v0

    .line 26
    :cond_3
    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    .line 27
    iget v8, p0, Lcom/android/apksig/SourceStampVerifier;->mMaxSdkVersion:I
    :try_end_2
    .catch Lcom/android/apksig/apk/ApkFormatException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Lcom/android/apksig/zip/ZipFormatException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lcom/android/apksig/internal/apk/SignatureNotFoundException; {:try_start_2 .. :try_end_2} :catch_7

    const-class v9, Lcom/android/apksig/internal/apk/ContentDigestAlgorithm;

    if-lt v8, v2, :cond_4

    const v8, -0xfac9740

    .line 28
    :try_start_3
    invoke-static {p1, v4, v8}, Lcom/android/apksig/internal/apk/ApkSigningBlockUtilsLite;->findSignature(Lcom/android/apksig/util/DataSource;Lcom/android/apksig/zip/ZipSections;I)Lcom/android/apksig/internal/apk/SignatureInfo;

    move-result-object v8
    :try_end_3
    .catch Lcom/android/apksig/internal/apk/SignatureNotFoundException; {:try_start_3 .. :try_end_3} :catch_5
    .catch Lcom/android/apksig/apk/ApkFormatException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Lcom/android/apksig/zip/ZipFormatException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_2

    :catch_5
    move-object v8, v7

    :goto_2
    if-eqz v8, :cond_4

    .line 29
    :try_start_4
    new-instance v10, Ljava/util/EnumMap;

    invoke-direct {v10, v9}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    .line 30
    iget-object v8, v8, Lcom/android/apksig/internal/apk/SignatureInfo;->signatureBlock:Ljava/nio/ByteBuffer;

    const/4 v11, 0x3

    invoke-static {v8, v11, v10, v0}, Lcom/android/apksig/SourceStampVerifier;->parseSigners(Ljava/nio/ByteBuffer;ILjava/util/Map;Lcom/android/apksig/SourceStampVerifier$Result;)V

    .line 31
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    .line 32
    invoke-interface {p2, v8, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    :cond_4
    iget v8, p0, Lcom/android/apksig/SourceStampVerifier;->mMaxSdkVersion:I

    if-lt v8, v5, :cond_6

    iget v8, p0, Lcom/android/apksig/SourceStampVerifier;->mMinSdkVersion:I

    if-lt v8, v2, :cond_5

    .line 34
    invoke-interface {p2}, Ljava/util/Map;->isEmpty()Z

    move-result v8
    :try_end_4
    .catch Lcom/android/apksig/apk/ApkFormatException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Lcom/android/apksig/zip/ZipFormatException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Lcom/android/apksig/internal/apk/SignatureNotFoundException; {:try_start_4 .. :try_end_4} :catch_7

    if-eqz v8, :cond_6

    :cond_5
    const v8, 0x7109871a

    .line 35
    :try_start_5
    invoke-static {p1, v4, v8}, Lcom/android/apksig/internal/apk/ApkSigningBlockUtilsLite;->findSignature(Lcom/android/apksig/util/DataSource;Lcom/android/apksig/zip/ZipSections;I)Lcom/android/apksig/internal/apk/SignatureInfo;

    move-result-object v7
    :try_end_5
    .catch Lcom/android/apksig/internal/apk/SignatureNotFoundException; {:try_start_5 .. :try_end_5} :catch_6
    .catch Lcom/android/apksig/apk/ApkFormatException; {:try_start_5 .. :try_end_5} :catch_3
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Lcom/android/apksig/zip/ZipFormatException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_5 .. :try_end_5} :catch_0

    :catch_6
    if-eqz v7, :cond_6

    .line 36
    :try_start_6
    new-instance v8, Ljava/util/EnumMap;

    invoke-direct {v8, v9}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    .line 37
    iget-object v7, v7, Lcom/android/apksig/internal/apk/SignatureInfo;->signatureBlock:Ljava/nio/ByteBuffer;

    const/4 v9, 0x2

    invoke-static {v7, v9, v8, v0}, Lcom/android/apksig/SourceStampVerifier;->parseSigners(Ljava/nio/ByteBuffer;ILjava/util/Map;Lcom/android/apksig/SourceStampVerifier$Result;)V

    .line 38
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    .line 39
    invoke-interface {p2, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    :cond_6
    iget v7, p0, Lcom/android/apksig/SourceStampVerifier;->mMinSdkVersion:I

    if-lt v7, v5, :cond_7

    .line 41
    invoke-interface {p2}, Ljava/util/Map;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_8

    .line 42
    :cond_7
    invoke-static {v3, p1, v4, v0}, Lcom/android/apksig/SourceStampVerifier;->getApkContentDigestFromV1SigningScheme(Ljava/util/List;Lcom/android/apksig/util/DataSource;Lcom/android/apksig/zip/ZipSections;Lcom/android/apksig/SourceStampVerifier$Result;)Ljava/util/Map;

    move-result-object v3

    const/4 v5, 0x1

    .line 43
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {p2, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    :cond_8
    iget v7, p0, Lcom/android/apksig/SourceStampVerifier;->mMinSdkVersion:I

    iget v8, p0, Lcom/android/apksig/SourceStampVerifier;->mMaxSdkVersion:I

    move-object v3, p1

    move-object v5, v6

    move-object v6, p2

    .line 45
    invoke-static/range {v3 .. v8}, Lcom/android/apksig/internal/apk/stamp/V2SourceStampVerifier;->verify(Lcom/android/apksig/util/DataSource;Lcom/android/apksig/zip/ZipSections;[BLjava/util/Map;II)Lcom/android/apksig/internal/apk/ApkSigResult;

    move-result-object p1

    .line 46
    invoke-static {v0, p1}, Lcom/android/apksig/SourceStampVerifier$Result;->access$000(Lcom/android/apksig/SourceStampVerifier$Result;Lcom/android/apksig/internal/apk/ApkSigResult;)V
    :try_end_6
    .catch Lcom/android/apksig/apk/ApkFormatException; {:try_start_6 .. :try_end_6} :catch_3
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2
    .catch Lcom/android/apksig/zip/ZipFormatException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Lcom/android/apksig/internal/apk/SignatureNotFoundException; {:try_start_6 .. :try_end_6} :catch_7

    return-object v0

    :catch_7
    const/16 p1, 0x1e

    .line 47
    new-array p2, v1, [Ljava/lang/Object;

    invoke-virtual {v0, p1, p2}, Lcom/android/apksig/SourceStampVerifier$Result;->addVerificationError(I[Ljava/lang/Object;)V

    goto :goto_5

    :goto_3
    const/16 p2, 0x1d

    .line 48
    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p2, p1}, Lcom/android/apksig/SourceStampVerifier$Result;->addVerificationError(I[Ljava/lang/Object;)V

    goto :goto_5

    .line 49
    :goto_4
    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, v2, p1}, Lcom/android/apksig/SourceStampVerifier$Result;->addVerificationError(I[Ljava/lang/Object;)V

    :goto_5
    return-object v0
.end method


# virtual methods
.method public verifySourceStamp()Lcom/android/apksig/SourceStampVerifier$Result;
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0}, Lcom/android/apksig/SourceStampVerifier;->verifySourceStamp(Ljava/lang/String;)Lcom/android/apksig/SourceStampVerifier$Result;

    move-result-object v0

    return-object v0
.end method

.method public verifySourceStamp(Ljava/lang/String;)Lcom/android/apksig/SourceStampVerifier$Result;
    .locals 7

    const/4 v0, 0x0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/android/apksig/SourceStampVerifier;->mApkDataSource:Lcom/android/apksig/util/DataSource;

    if-eqz v1, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    iget-object v1, p0, Lcom/android/apksig/SourceStampVerifier;->mApkFile:Ljava/io/File;

    if-eqz v1, :cond_2

    .line 4
    new-instance v1, Ljava/io/RandomAccessFile;

    iget-object v2, p0, Lcom/android/apksig/SourceStampVerifier;->mApkFile:Ljava/io/File;

    const-string v3, "r"

    invoke-direct {v1, v2, v3}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    :try_start_1
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    invoke-static {v1, v4, v5, v2, v3}, Lcom/android/apksig/util/DataSources;->asDataSource(Ljava/io/RandomAccessFile;JJ)Lcom/android/apksig/util/DataSource;

    move-result-object v0
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object v6, v1

    move-object v1, v0

    move-object v0, v6

    .line 6
    :goto_0
    :try_start_2
    invoke-direct {p0, v1, p1}, Lcom/android/apksig/SourceStampVerifier;->verifySourceStamp(Lcom/android/apksig/util/DataSource;Ljava/lang/String;)Lcom/android/apksig/SourceStampVerifier$Result;

    move-result-object p1
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v0, :cond_1

    .line 7
    :try_start_3
    invoke-interface {v0}, Ljava/io/Closeable;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    :catch_0
    :cond_1
    return-object p1

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_1
    move-exception p1

    goto :goto_1

    :catchall_1
    move-exception p1

    move-object v0, v1

    goto :goto_2

    :catch_2
    move-exception p1

    move-object v0, v1

    goto :goto_1

    .line 8
    :cond_2
    :try_start_4
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v1, "APK not provided"

    invoke-direct {p1, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 9
    :goto_1
    :try_start_5
    new-instance v1, Lcom/android/apksig/SourceStampVerifier$Result;

    invoke-direct {v1}, Lcom/android/apksig/SourceStampVerifier$Result;-><init>()V

    .line 10
    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const/16 v2, 0x1d

    invoke-virtual {v1, v2, p1}, Lcom/android/apksig/SourceStampVerifier$Result;->addVerificationError(I[Ljava/lang/Object;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    if-eqz v0, :cond_3

    .line 11
    :try_start_6
    invoke-interface {v0}, Ljava/io/Closeable;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    :catch_3
    :cond_3
    return-object v1

    :goto_2
    if-eqz v0, :cond_4

    :try_start_7
    invoke-interface {v0}, Ljava/io/Closeable;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_4

    .line 12
    :catch_4
    :cond_4
    throw p1
.end method
