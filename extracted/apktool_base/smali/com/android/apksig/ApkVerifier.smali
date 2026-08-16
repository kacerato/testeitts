.class public Lcom/android/apksig/ApkVerifier;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/apksig/ApkVerifier$Result;,
        Lcom/android/apksig/ApkVerifier$Issue;,
        Lcom/android/apksig/ApkVerifier$ByteArray;,
        Lcom/android/apksig/ApkVerifier$ApkVerificationIssueAdapter;,
        Lcom/android/apksig/ApkVerifier$Builder;,
        Lcom/android/apksig/ApkVerifier$IssueWithParams;
    }
.end annotation


# static fields
.field private static final SUPPORTED_APK_SIG_SCHEME_NAMES:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mApkDataSource:Lcom/android/apksig/util/DataSource;

.field private final mApkFile:Ljava/io/File;

.field private final mMaxSdkVersion:I

.field private final mMinSdkVersion:Ljava/lang/Integer;

.field private final mV4SignatureFile:Ljava/io/File;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lcom/android/apksig/ApkVerifier;->loadSupportedApkSigSchemeNames()Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/android/apksig/ApkVerifier;->SUPPORTED_APK_SIG_SCHEME_NAMES:Ljava/util/Map;

    return-void
.end method

.method private constructor <init>(Ljava/io/File;Lcom/android/apksig/util/DataSource;Ljava/io/File;Ljava/lang/Integer;I)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/android/apksig/ApkVerifier;->mApkFile:Ljava/io/File;

    .line 4
    iput-object p2, p0, Lcom/android/apksig/ApkVerifier;->mApkDataSource:Lcom/android/apksig/util/DataSource;

    .line 5
    iput-object p3, p0, Lcom/android/apksig/ApkVerifier;->mV4SignatureFile:Ljava/io/File;

    .line 6
    iput-object p4, p0, Lcom/android/apksig/ApkVerifier;->mMinSdkVersion:Ljava/lang/Integer;

    .line 7
    iput p5, p0, Lcom/android/apksig/ApkVerifier;->mMaxSdkVersion:I

    return-void
.end method

.method public synthetic constructor <init>(Ljava/io/File;Lcom/android/apksig/util/DataSource;Ljava/io/File;Ljava/lang/Integer;ILcom/android/apksig/ApkVerifier$1;)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p5}, Lcom/android/apksig/ApkVerifier;-><init>(Ljava/io/File;Lcom/android/apksig/util/DataSource;Ljava/io/File;Ljava/lang/Integer;I)V

    return-void
.end method

.method private static checkV4Certificate(Ljava/util/List;Ljava/util/List;Lcom/android/apksig/ApkVerifier$Result;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/security/cert/X509Certificate;",
            ">;",
            "Ljava/util/List<",
            "Ljava/security/cert/X509Certificate;",
            ">;",
            "Lcom/android/apksig/ApkVerifier$Result;",
            ")V"
        }
    .end annotation

    const/4 v0, 0x0

    :try_start_0
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/security/cert/X509Certificate;

    invoke-virtual {p0}, Ljava/security/cert/Certificate;->getEncoded()[B

    move-result-object p0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/security/cert/X509Certificate;

    invoke-virtual {p1}, Ljava/security/cert/Certificate;->getEncoded()[B

    move-result-object p1

    invoke-static {p1, p0}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p0

    if-nez p0, :cond_0

    sget-object p0, Lcom/android/apksig/ApkVerifier$Issue;->V4_SIG_V2_V3_SIGNERS_MISMATCH:Lcom/android/apksig/ApkVerifier$Issue;

    new-array p1, v0, [Ljava/lang/Object;

    invoke-virtual {p2, p0, p1}, Lcom/android/apksig/ApkVerifier$Result;->addError(Lcom/android/apksig/ApkVerifier$Issue;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    return-void

    :goto_1
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Failed to encode APK signer cert"

    invoke-direct {p1, p2, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method private static checkV4Signer(Ljava/util/List;Ljava/util/List;[BLcom/android/apksig/ApkVerifier$Result;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/apksig/ApkVerifier$Result$V3SchemeSignerInfo;",
            ">;",
            "Ljava/util/List<",
            "Ljava/security/cert/X509Certificate;",
            ">;[B",
            "Lcom/android/apksig/ApkVerifier$Result;",
            ")V"
        }
    .end annotation

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    sget-object v0, Lcom/android/apksig/ApkVerifier$Issue;->V4_SIG_MULTIPLE_SIGNERS:Lcom/android/apksig/ApkVerifier$Issue;

    new-array v1, v2, [Ljava/lang/Object;

    invoke-virtual {p3, v0, v1}, Lcom/android/apksig/ApkVerifier$Result;->addError(Lcom/android/apksig/ApkVerifier$Issue;[Ljava/lang/Object;)V

    :cond_0
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/apksig/ApkVerifier$Result$V3SchemeSignerInfo;

    invoke-static {v0}, Lcom/android/apksig/ApkVerifier$Result$V3SchemeSignerInfo;->access$800(Lcom/android/apksig/ApkVerifier$Result$V3SchemeSignerInfo;)Ljava/util/List;

    move-result-object v0

    invoke-static {p1, v0, p3}, Lcom/android/apksig/ApkVerifier;->checkV4Certificate(Ljava/util/List;Ljava/util/List;Lcom/android/apksig/ApkVerifier$Result;)V

    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/apksig/ApkVerifier$Result$V3SchemeSignerInfo;

    invoke-virtual {p0}, Lcom/android/apksig/ApkVerifier$Result$V3SchemeSignerInfo;->getContentDigests()Ljava/util/List;

    move-result-object p0

    invoke-static {p0}, Lcom/android/apksig/ApkVerifier;->pickBestDigestForV4(Ljava/util/List;)[B

    move-result-object p0

    invoke-static {p2, p0}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p0

    if-nez p0, :cond_1

    sget-object p0, Lcom/android/apksig/ApkVerifier$Issue;->V4_SIG_V2_V3_DIGESTS_MISMATCH:Lcom/android/apksig/ApkVerifier$Issue;

    new-array p1, v2, [Ljava/lang/Object;

    invoke-virtual {p3, p0, p1}, Lcom/android/apksig/ApkVerifier$Result;->addError(Lcom/android/apksig/ApkVerifier$Issue;[Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method private static collectApkContentDigests(Ljava/util/List;Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$Result$SignerInfo$ContentDigest;",
            ">;",
            "Ljava/util/Map<",
            "Lcom/android/apksig/internal/apk/ContentDigestAlgorithm;",
            "[B>;)V"
        }
    .end annotation

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$Result$SignerInfo$ContentDigest;

    invoke-virtual {v0}, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$Result$SignerInfo$ContentDigest;->getSignatureAlgorithmId()I

    move-result v1

    invoke-static {v1}, Lcom/android/apksig/internal/apk/SignatureAlgorithm;->findById(I)Lcom/android/apksig/internal/apk/SignatureAlgorithm;

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Lcom/android/apksig/internal/apk/SignatureAlgorithm;->getContentDigestAlgorithm()Lcom/android/apksig/internal/apk/ContentDigestAlgorithm;

    move-result-object v1

    invoke-virtual {v0}, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$Result$SignerInfo$ContentDigest;->getValue()[B

    move-result-object v0

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    return-void
.end method

.method private static varargs createSourceStampResultWithError(Lcom/android/apksig/ApkVerifier$Result$SourceStampInfo$SourceStampVerificationStatus;Lcom/android/apksig/ApkVerifier$Issue;[Ljava/lang/Object;)Lcom/android/apksig/ApkVerifier$Result;
    .locals 1

    new-instance v0, Lcom/android/apksig/ApkVerifier$Result;

    invoke-direct {v0}, Lcom/android/apksig/ApkVerifier$Result;-><init>()V

    invoke-virtual {v0, p1, p2}, Lcom/android/apksig/ApkVerifier$Result;->addError(Lcom/android/apksig/ApkVerifier$Issue;[Ljava/lang/Object;)V

    invoke-static {p0, v0}, Lcom/android/apksig/ApkVerifier;->mergeSourceStampResult(Lcom/android/apksig/ApkVerifier$Result$SourceStampInfo$SourceStampVerificationStatus;Lcom/android/apksig/ApkVerifier$Result;)Lcom/android/apksig/ApkVerifier$Result;

    move-result-object p0

    return-object p0
.end method

.method private static getAndroidManifestFromApk(Lcom/android/apksig/util/DataSource;Lcom/android/apksig/apk/ApkUtils$ZipSections;)Ljava/nio/ByteBuffer;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/android/apksig/apk/ApkFormatException;
        }
    .end annotation

    invoke-static {p0, p1}, Lcom/android/apksig/internal/apk/v1/V1SchemeVerifier;->parseZipCentralDirectory(Lcom/android/apksig/util/DataSource;Lcom/android/apksig/apk/ApkUtils$ZipSections;)Ljava/util/List;

    move-result-object v0

    :try_start_0
    invoke-virtual {p1}, Lcom/android/apksig/zip/ZipSections;->getZipCentralDirectoryOffset()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    invoke-interface {p0, v3, v4, v1, v2}, Lcom/android/apksig/util/DataSource;->slice(JJ)Lcom/android/apksig/util/DataSource;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/android/apksig/ApkSigner;->getAndroidManifestFromApk(Ljava/util/List;Lcom/android/apksig/util/DataSource;)Ljava/nio/ByteBuffer;

    move-result-object p0
    :try_end_0
    .catch Lcom/android/apksig/zip/ZipFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance p1, Lcom/android/apksig/apk/ApkFormatException;

    const-string v0, "Failed to read AndroidManifest.xml"

    invoke-direct {p1, v0, p0}, Lcom/android/apksig/apk/ApkFormatException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method private static getApkContentDigestFromV1SigningScheme(Ljava/util/List;Lcom/android/apksig/util/DataSource;Lcom/android/apksig/apk/ApkUtils$ZipSections;)Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/apksig/internal/zip/CentralDirectoryRecord;",
            ">;",
            "Lcom/android/apksig/util/DataSource;",
            "Lcom/android/apksig/apk/ApkUtils$ZipSections;",
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

    new-instance v0, Ljava/util/EnumMap;

    const-class v1, Lcom/android/apksig/internal/apk/ContentDigestAlgorithm;

    invoke-direct {v0, v1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/apksig/internal/zip/CentralDirectoryRecord;

    invoke-virtual {v1}, Lcom/android/apksig/internal/zip/CentralDirectoryRecord;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "META-INF/MANIFEST.MF"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    if-nez v1, :cond_2

    return-object v0

    :cond_2
    :try_start_0
    invoke-virtual {p2}, Lcom/android/apksig/zip/ZipSections;->getZipCentralDirectoryOffset()J

    move-result-wide v2

    invoke-static {p1, v1, v2, v3}, Lcom/android/apksig/internal/zip/LocalFileRecord;->getUncompressedData(Lcom/android/apksig/util/DataSource;Lcom/android/apksig/internal/zip/CentralDirectoryRecord;J)[B

    move-result-object p0

    sget-object p1, Lcom/android/apksig/internal/apk/ContentDigestAlgorithm;->SHA256:Lcom/android/apksig/internal/apk/ContentDigestAlgorithm;

    invoke-static {p0}, Lcom/android/apksig/apk/ApkUtils;->computeSha256DigestBytes([B)[B

    move-result-object p0

    invoke-interface {v0, p1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Lcom/android/apksig/zip/ZipFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p0

    new-instance p1, Lcom/android/apksig/apk/ApkFormatException;

    const-string p2, "Failed to read APK"

    invoke-direct {p1, p2, p0}, Lcom/android/apksig/apk/ApkFormatException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method private getApkContentDigests(Lcom/android/apksig/util/DataSource;Lcom/android/apksig/apk/ApkUtils$ZipSections;Ljava/util/Set;Ljava/util/Map;Ljava/util/Map;II)Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$Result;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/apksig/util/DataSource;",
            "Lcom/android/apksig/apk/ApkUtils$ZipSections;",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/util/Map<",
            "Lcom/android/apksig/internal/apk/ContentDigestAlgorithm;",
            "[B>;>;II)",
            "Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$Result;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    move/from16 v0, p6

    const/4 v1, 0x0

    const/4 v2, 0x3

    const/4 v3, 0x2

    if-eq v0, v3, :cond_0

    if-eq v0, v2, :cond_0

    return-object v1

    :cond_0
    new-instance v11, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$Result;

    invoke-direct {v11, v0}, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$Result;-><init>(I)V

    if-ne v0, v2, :cond_1

    const v2, -0xfac9740

    :goto_0
    move-object v4, p1

    move-object v5, p2

    goto :goto_1

    :cond_1
    const v2, 0x7109871a

    goto :goto_0

    :goto_1
    :try_start_0
    invoke-static {p1, p2, v2, v11}, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils;->findSignature(Lcom/android/apksig/util/DataSource;Lcom/android/apksig/apk/ApkUtils$ZipSections;ILcom/android/apksig/internal/apk/ApkSigningBlockUtils$Result;)Lcom/android/apksig/internal/apk/SignatureInfo;

    move-result-object v1
    :try_end_0
    .catch Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$SignatureNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-static/range {p6 .. p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object v7, p3

    invoke-interface {p3, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    new-instance v5, Ljava/util/HashSet;

    const/4 v2, 0x1

    invoke-direct {v5, v2}, Ljava/util/HashSet;-><init>(I)V

    if-ne v0, v3, :cond_2

    iget-object v4, v1, Lcom/android/apksig/internal/apk/SignatureInfo;->signatureBlock:Ljava/nio/ByteBuffer;

    move-object v2, p0

    iget v9, v2, Lcom/android/apksig/ApkVerifier;->mMaxSdkVersion:I

    move-object/from16 v6, p4

    move-object v7, p3

    move/from16 v8, p7

    move-object v10, v11

    invoke-static/range {v4 .. v10}, Lcom/android/apksig/internal/apk/v2/V2SchemeVerifier;->parseSigners(Ljava/nio/ByteBuffer;Ljava/util/Set;Ljava/util/Map;Ljava/util/Set;IILcom/android/apksig/internal/apk/ApkSigningBlockUtils$Result;)V

    goto :goto_2

    :cond_2
    move-object v2, p0

    iget-object v1, v1, Lcom/android/apksig/internal/apk/SignatureInfo;->signatureBlock:Ljava/nio/ByteBuffer;

    invoke-static {v1, v5, v11}, Lcom/android/apksig/internal/apk/v3/V3SchemeVerifier;->parseSigners(Ljava/nio/ByteBuffer;Ljava/util/Set;Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$Result;)V

    :goto_2
    new-instance v1, Ljava/util/EnumMap;

    const-class v3, Lcom/android/apksig/internal/apk/ContentDigestAlgorithm;

    invoke-direct {v1, v3}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    iget-object v3, v11, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$Result;->signers:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$Result$SignerInfo;

    iget-object v4, v4, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$Result$SignerInfo;->contentDigests:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$Result$SignerInfo$ContentDigest;

    invoke-virtual {v5}, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$Result$SignerInfo$ContentDigest;->getSignatureAlgorithmId()I

    move-result v6

    invoke-static {v6}, Lcom/android/apksig/internal/apk/SignatureAlgorithm;->findById(I)Lcom/android/apksig/internal/apk/SignatureAlgorithm;

    move-result-object v6

    if-nez v6, :cond_4

    goto :goto_3

    :cond_4
    invoke-virtual {v6}, Lcom/android/apksig/internal/apk/SignatureAlgorithm;->getContentDigestAlgorithm()Lcom/android/apksig/internal/apk/ContentDigestAlgorithm;

    move-result-object v6

    invoke-virtual {v5}, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$Result$SignerInfo$ContentDigest;->getValue()[B

    move-result-object v5

    invoke-interface {v1, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    :cond_5
    invoke-static/range {p6 .. p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    move-object/from16 v3, p5

    invoke-interface {v3, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v11

    :catch_0
    move-object v2, p0

    return-object v1
.end method

.method private static getApkContentDigestsFromSigningSchemeResult(Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$Result;)Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$Result;",
            ")",
            "Ljava/util/Map<",
            "Lcom/android/apksig/internal/apk/ContentDigestAlgorithm;",
            "[B>;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iget-object p0, p0, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$Result;->signers:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$Result$SignerInfo;

    iget-object v1, v1, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$Result$SignerInfo;->contentDigests:Ljava/util/List;

    invoke-static {v1, v0}, Lcom/android/apksig/ApkVerifier;->collectApkContentDigests(Ljava/util/List;Ljava/util/Map;)V

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private static getMinimumSignatureSchemeVersionForTargetSdk(I)I
    .locals 1

    const/16 v0, 0x1e

    if-lt p0, v0, :cond_0

    const/4 p0, 0x2

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method private static getSupportedSchemeNames(I)Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/16 v0, 0x1c

    if-lt p0, v0, :cond_0

    sget-object p0, Lcom/android/apksig/ApkVerifier;->SUPPORTED_APK_SIG_SCHEME_NAMES:Ljava/util/Map;

    goto :goto_0

    :cond_0
    const/16 v0, 0x18

    if-lt p0, v0, :cond_1

    new-instance p0, Ljava/util/HashMap;

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Ljava/util/HashMap;-><init>(I)V

    const/4 v0, 0x2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Lcom/android/apksig/ApkVerifier;->SUPPORTED_APK_SIG_SCHEME_NAMES:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {p0, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method private static loadSupportedApkSigSchemeNames()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "APK Signature Scheme v2"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "APK Signature Scheme v3"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method private static mergeSourceStampResult(Lcom/android/apksig/ApkVerifier$Result$SourceStampInfo$SourceStampVerificationStatus;Lcom/android/apksig/ApkVerifier$Result;)Lcom/android/apksig/ApkVerifier$Result;
    .locals 1

    new-instance v0, Lcom/android/apksig/ApkVerifier$Result$SourceStampInfo;

    invoke-direct {v0, p0}, Lcom/android/apksig/ApkVerifier$Result$SourceStampInfo;-><init>(Lcom/android/apksig/ApkVerifier$Result$SourceStampInfo$SourceStampVerificationStatus;)V

    invoke-static {p1, v0}, Lcom/android/apksig/ApkVerifier$Result;->access$1202(Lcom/android/apksig/ApkVerifier$Result;Lcom/android/apksig/ApkVerifier$Result$SourceStampInfo;)Lcom/android/apksig/ApkVerifier$Result$SourceStampInfo;

    return-object p1
.end method

.method private static pickBestDigestForV4(Ljava/util/List;)[B
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$Result$SignerInfo$ContentDigest;",
            ">;)[B"
        }
    .end annotation

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {p0, v0}, Lcom/android/apksig/ApkVerifier;->collectApkContentDigests(Ljava/util/List;Ljava/util/Map;)V

    invoke-static {v0}, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils;->pickBestDigestForV4(Ljava/util/Map;)[B

    move-result-object p0

    return-object p0
.end method

.method private verify(Lcom/android/apksig/util/DataSource;)Lcom/android/apksig/ApkVerifier$Result;
    .locals 20
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/android/apksig/apk/ApkFormatException;,
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    .line 10
    iget v9, v1, Lcom/android/apksig/ApkVerifier;->mMaxSdkVersion:I

    .line 11
    :try_start_0
    invoke-static/range {p1 .. p1}, Lcom/android/apksig/apk/ApkUtils;->findZipSections(Lcom/android/apksig/util/DataSource;)Lcom/android/apksig/apk/ApkUtils$ZipSections;

    move-result-object v10
    :try_end_0
    .catch Lcom/android/apksig/zip/ZipFormatException; {:try_start_0 .. :try_end_0} :catch_d

    .line 12
    invoke-direct {v1, v0, v10}, Lcom/android/apksig/ApkVerifier;->verifyAndGetMinSdkVersion(Lcom/android/apksig/util/DataSource;Lcom/android/apksig/apk/ApkUtils$ZipSections;)I

    move-result v11

    .line 13
    new-instance v12, Lcom/android/apksig/ApkVerifier$Result;

    invoke-direct {v12}, Lcom/android/apksig/ApkVerifier$Result;-><init>()V

    .line 14
    new-instance v13, Ljava/util/HashMap;

    invoke-direct {v13}, Ljava/util/HashMap;-><init>()V

    .line 15
    invoke-static {v9}, Lcom/android/apksig/ApkVerifier;->getSupportedSchemeNames(I)Ljava/util/Map;

    move-result-object v14

    .line 16
    new-instance v15, Ljava/util/HashSet;

    const/4 v8, 0x2

    invoke-direct {v15, v8}, Ljava/util/HashSet;-><init>(I)V

    const/16 v6, 0x18

    if-lt v9, v6, :cond_d

    .line 17
    sget-object v2, Lcom/android/apksig/util/RunnablesExecutor;->SINGLE_THREADED:Lcom/android/apksig/util/RunnablesExecutor;

    const/16 v3, 0x1f

    const/16 v4, 0x21

    if-lt v9, v4, :cond_3

    .line 18
    :try_start_1
    new-instance v8, Lcom/android/apksig/internal/apk/v3/V3SchemeVerifier$Builder;

    .line 19
    invoke-static {v11, v4}, Ljava/lang/Math;->max(II)I

    move-result v6

    invoke-direct {v8, v0, v10, v6, v9}, Lcom/android/apksig/internal/apk/v3/V3SchemeVerifier$Builder;-><init>(Lcom/android/apksig/util/DataSource;Lcom/android/apksig/apk/ApkUtils$ZipSections;II)V

    .line 20
    invoke-virtual {v8, v2}, Lcom/android/apksig/internal/apk/v3/V3SchemeVerifier$Builder;->setRunnablesExecutor(Lcom/android/apksig/util/RunnablesExecutor;)Lcom/android/apksig/internal/apk/v3/V3SchemeVerifier$Builder;

    move-result-object v6

    const v8, 0x1b93ad61

    .line 21
    invoke-virtual {v6, v8}, Lcom/android/apksig/internal/apk/v3/V3SchemeVerifier$Builder;->setBlockId(I)Lcom/android/apksig/internal/apk/v3/V3SchemeVerifier$Builder;

    move-result-object v6

    .line 22
    invoke-virtual {v6}, Lcom/android/apksig/internal/apk/v3/V3SchemeVerifier$Builder;->build()Lcom/android/apksig/internal/apk/v3/V3SchemeVerifier;

    move-result-object v6

    .line 23
    invoke-virtual {v6}, Lcom/android/apksig/internal/apk/v3/V3SchemeVerifier;->verify()Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$Result;

    move-result-object v6

    .line 24
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v15, v8}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 25
    iget-object v8, v6, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$Result;->signers:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    move-result v8
    :try_end_1
    .catch Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$SignatureNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    if-eqz v8, :cond_0

    const/4 v8, 0x0

    goto :goto_0

    :cond_0
    const v8, 0x7fffffff

    .line 26
    :goto_0
    :try_start_2
    iget-object v5, v6, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$Result;->signers:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_1
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v19

    move-object/from16 v7, v19

    check-cast v7, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$Result$SignerInfo;

    .line 27
    iget v7, v7, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$Result$SignerInfo;->minSdkVersion:I

    if-le v8, v7, :cond_1

    move v8, v7

    goto :goto_1

    .line 28
    :cond_2
    invoke-static {v12, v6}, Lcom/android/apksig/ApkVerifier$Result;->access$000(Lcom/android/apksig/ApkVerifier$Result;Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$Result;)V

    .line 29
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 30
    invoke-static {v6}, Lcom/android/apksig/ApkVerifier;->getApkContentDigestsFromSigningSchemeResult(Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$Result;)Ljava/util/Map;

    move-result-object v6

    .line 31
    invoke-interface {v13, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$SignatureNotFoundException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    :catch_0
    const/4 v8, 0x0

    .line 32
    :catch_1
    :goto_2
    invoke-virtual {v12}, Lcom/android/apksig/ApkVerifier$Result;->containsErrors()Z

    move-result v5

    if-eqz v5, :cond_4

    return-object v12

    :cond_3
    const/4 v8, 0x0

    :cond_4
    const/16 v5, 0x1c

    if-lt v11, v4, :cond_6

    .line 33
    invoke-interface {v15}, Ljava/util/Set;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_5

    goto :goto_3

    :cond_5
    const/4 v6, 0x0

    const/4 v7, 0x3

    goto :goto_7

    .line 34
    :cond_6
    :goto_3
    :try_start_3
    new-instance v4, Lcom/android/apksig/internal/apk/v3/V3SchemeVerifier$Builder;

    .line 35
    invoke-static {v11, v5}, Ljava/lang/Math;->max(II)I

    move-result v6

    invoke-direct {v4, v0, v10, v6, v9}, Lcom/android/apksig/internal/apk/v3/V3SchemeVerifier$Builder;-><init>(Lcom/android/apksig/util/DataSource;Lcom/android/apksig/apk/ApkUtils$ZipSections;II)V

    .line 36
    invoke-virtual {v4, v2}, Lcom/android/apksig/internal/apk/v3/V3SchemeVerifier$Builder;->setRunnablesExecutor(Lcom/android/apksig/util/RunnablesExecutor;)Lcom/android/apksig/internal/apk/v3/V3SchemeVerifier$Builder;

    move-result-object v4

    const v6, -0xfac9740

    .line 37
    invoke-virtual {v4, v6}, Lcom/android/apksig/internal/apk/v3/V3SchemeVerifier$Builder;->setBlockId(I)Lcom/android/apksig/internal/apk/v3/V3SchemeVerifier$Builder;

    move-result-object v4

    if-lez v8, :cond_7

    .line 38
    invoke-virtual {v4, v8}, Lcom/android/apksig/internal/apk/v3/V3SchemeVerifier$Builder;->setRotationMinSdkVersion(I)Lcom/android/apksig/internal/apk/v3/V3SchemeVerifier$Builder;

    goto :goto_4

    :catch_2
    const/4 v7, 0x3

    goto :goto_5

    .line 39
    :cond_7
    :goto_4
    invoke-virtual {v4}, Lcom/android/apksig/internal/apk/v3/V3SchemeVerifier$Builder;->build()Lcom/android/apksig/internal/apk/v3/V3SchemeVerifier;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/apksig/internal/apk/v3/V3SchemeVerifier;->verify()Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$Result;

    move-result-object v4
    :try_end_3
    .catch Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$SignatureNotFoundException; {:try_start_3 .. :try_end_3} :catch_2

    const/4 v7, 0x3

    .line 40
    :try_start_4
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v15, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 41
    invoke-static {v12, v4}, Lcom/android/apksig/ApkVerifier$Result;->access$000(Lcom/android/apksig/ApkVerifier$Result;Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$Result;)V

    .line 42
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    .line 43
    invoke-static {v4}, Lcom/android/apksig/ApkVerifier;->getApkContentDigestsFromSigningSchemeResult(Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$Result;)Ljava/util/Map;

    move-result-object v4

    .line 44
    invoke-interface {v13, v6, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4
    .catch Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$SignatureNotFoundException; {:try_start_4 .. :try_end_4} :catch_3

    :cond_8
    const/4 v6, 0x0

    goto :goto_6

    .line 45
    :catch_3
    :goto_5
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 46
    invoke-interface {v15, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 47
    sget-object v3, Lcom/android/apksig/ApkVerifier$Issue;->V31_BLOCK_FOUND_WITHOUT_V3_BLOCK:Lcom/android/apksig/ApkVerifier$Issue;

    const/4 v6, 0x0

    new-array v4, v6, [Ljava/lang/Object;

    invoke-virtual {v12, v3, v4}, Lcom/android/apksig/ApkVerifier$Result;->addError(Lcom/android/apksig/ApkVerifier$Issue;[Ljava/lang/Object;)V

    .line 48
    :goto_6
    invoke-virtual {v12}, Lcom/android/apksig/ApkVerifier$Result;->containsErrors()Z

    move-result v3

    if-eqz v3, :cond_9

    return-object v12

    :cond_9
    :goto_7
    if-lt v11, v5, :cond_a

    .line 49
    invoke-interface {v15}, Ljava/util/Set;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_b

    :cond_a
    const/16 v8, 0x18

    goto :goto_8

    :cond_b
    move-object/from16 v16, v14

    const/16 v14, 0x18

    const/16 v17, 0x2

    goto :goto_a

    .line 50
    :goto_8
    :try_start_5
    invoke-static {v11, v8}, Ljava/lang/Math;->max(II)I

    move-result v17
    :try_end_5
    .catch Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$SignatureNotFoundException; {:try_start_5 .. :try_end_5} :catch_4

    move-object/from16 v3, p1

    move-object v4, v10

    move-object v5, v14

    move-object v6, v15

    move/from16 v7, v17

    move-object/from16 v16, v14

    const/16 v17, 0x2

    move v14, v8

    move v8, v9

    .line 51
    :try_start_6
    invoke-static/range {v2 .. v8}, Lcom/android/apksig/internal/apk/v2/V2SchemeVerifier;->verify(Lcom/android/apksig/util/RunnablesExecutor;Lcom/android/apksig/util/DataSource;Lcom/android/apksig/apk/ApkUtils$ZipSections;Ljava/util/Map;Ljava/util/Set;II)Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$Result;

    move-result-object v2

    .line 52
    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v15, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 53
    invoke-static {v12, v2}, Lcom/android/apksig/ApkVerifier$Result;->access$000(Lcom/android/apksig/ApkVerifier$Result;Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$Result;)V

    .line 54
    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 55
    invoke-static {v2}, Lcom/android/apksig/ApkVerifier;->getApkContentDigestsFromSigningSchemeResult(Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$Result;)Ljava/util/Map;

    move-result-object v2

    .line 56
    invoke-interface {v13, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_6
    .catch Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$SignatureNotFoundException; {:try_start_6 .. :try_end_6} :catch_5

    goto :goto_9

    :catch_4
    move-object/from16 v16, v14

    const/16 v17, 0x2

    move v14, v8

    .line 57
    :catch_5
    :goto_9
    invoke-virtual {v12}, Lcom/android/apksig/ApkVerifier$Result;->containsErrors()Z

    move-result v2

    if-eqz v2, :cond_c

    return-object v12

    .line 58
    :cond_c
    :goto_a
    iget-object v2, v1, Lcom/android/apksig/ApkVerifier;->mV4SignatureFile:Ljava/io/File;

    if-eqz v2, :cond_e

    .line 59
    invoke-static {v0, v2}, Lcom/android/apksig/internal/apk/v4/V4SchemeVerifier;->verify(Lcom/android/apksig/util/DataSource;Ljava/io/File;)Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$Result;

    move-result-object v2

    const/4 v3, 0x4

    .line 60
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 61
    invoke-interface {v15, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 62
    invoke-static {v12, v2}, Lcom/android/apksig/ApkVerifier$Result;->access$000(Lcom/android/apksig/ApkVerifier$Result;Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$Result;)V

    .line 63
    invoke-virtual {v12}, Lcom/android/apksig/ApkVerifier$Result;->containsErrors()Z

    move-result v2

    if-eqz v2, :cond_e

    return-object v12

    :cond_d
    move/from16 v17, v8

    move-object/from16 v16, v14

    move v14, v6

    :cond_e
    const/16 v2, 0x1a

    const/4 v8, 0x0

    const/4 v7, 0x1

    if-lt v9, v2, :cond_10

    .line 64
    invoke-static {v0, v10}, Lcom/android/apksig/ApkVerifier;->getAndroidManifestFromApk(Lcom/android/apksig/util/DataSource;Lcom/android/apksig/apk/ApkUtils$ZipSections;)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 65
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-static {v3}, Lcom/android/apksig/apk/ApkUtils;->getTargetSandboxVersionFromBinaryAndroidManifest(Ljava/nio/ByteBuffer;)I

    move-result v3

    if-le v3, v7, :cond_f

    .line 66
    invoke-interface {v15}, Ljava/util/Set;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_f

    .line 67
    sget-object v4, Lcom/android/apksig/ApkVerifier$Issue;->NO_SIG_FOR_TARGET_SANDBOX_VERSION:Lcom/android/apksig/ApkVerifier$Issue;

    .line 68
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    .line 69
    invoke-virtual {v12, v4, v3}, Lcom/android/apksig/ApkVerifier$Result;->addError(Lcom/android/apksig/ApkVerifier$Issue;[Ljava/lang/Object;)V

    :cond_f
    move-object/from16 v18, v2

    goto :goto_b

    :cond_10
    move-object/from16 v18, v8

    .line 70
    :goto_b
    invoke-static {v0, v10}, Lcom/android/apksig/internal/apk/v1/V1SchemeVerifier;->parseZipCentralDirectory(Lcom/android/apksig/util/DataSource;Lcom/android/apksig/apk/ApkUtils$ZipSections;)Ljava/util/List;

    move-result-object v6

    if-lt v11, v14, :cond_12

    .line 71
    invoke-interface {v15}, Ljava/util/Set;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_11

    goto :goto_c

    :cond_11
    move-object v14, v6

    move v15, v7

    goto :goto_d

    :cond_12
    :goto_c
    move-object/from16 v2, p1

    move-object v3, v10

    move-object/from16 v4, v16

    move-object v5, v15

    move-object v14, v6

    move v6, v11

    move v15, v7

    move v7, v9

    .line 72
    invoke-static/range {v2 .. v7}, Lcom/android/apksig/internal/apk/v1/V1SchemeVerifier;->verify(Lcom/android/apksig/util/DataSource;Lcom/android/apksig/apk/ApkUtils$ZipSections;Ljava/util/Map;Ljava/util/Set;II)Lcom/android/apksig/internal/apk/v1/V1SchemeVerifier$Result;

    move-result-object v2

    .line 73
    invoke-static {v12, v2}, Lcom/android/apksig/ApkVerifier$Result;->access$100(Lcom/android/apksig/ApkVerifier$Result;Lcom/android/apksig/internal/apk/v1/V1SchemeVerifier$Result;)V

    .line 74
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 75
    invoke-static {v14, v0, v10}, Lcom/android/apksig/ApkVerifier;->getApkContentDigestFromV1SigningScheme(Ljava/util/List;Lcom/android/apksig/util/DataSource;Lcom/android/apksig/apk/ApkUtils$ZipSections;)Ljava/util/Map;

    move-result-object v3

    .line 76
    invoke-interface {v13, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    :goto_d
    invoke-virtual {v12}, Lcom/android/apksig/ApkVerifier$Result;->containsErrors()Z

    move-result v2

    if-eqz v2, :cond_13

    return-object v12

    .line 78
    :cond_13
    :try_start_7
    invoke-interface {v14}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_14
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_15

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/apksig/internal/zip/CentralDirectoryRecord;

    .line 79
    const-string v4, "stamp-cert-sha256"

    .line 80
    invoke-virtual {v3}, Lcom/android/apksig/internal/zip/CentralDirectoryRecord;->getName()Ljava/lang/String;

    move-result-object v5

    .line 81
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_14

    goto :goto_e

    :catch_6
    move-exception v0

    goto :goto_f

    :cond_15
    move-object v3, v8

    :goto_e
    if-eqz v3, :cond_16

    .line 82
    invoke-virtual {v10}, Lcom/android/apksig/zip/ZipSections;->getZipCentralDirectoryOffset()J

    move-result-wide v4

    .line 83
    invoke-static {v0, v3, v4, v5}, Lcom/android/apksig/internal/zip/LocalFileRecord;->getUncompressedData(Lcom/android/apksig/util/DataSource;Lcom/android/apksig/internal/zip/CentralDirectoryRecord;J)[B

    move-result-object v4

    const/16 v2, 0x1e

    .line 84
    invoke-static {v11, v2}, Ljava/lang/Math;->max(II)I

    move-result v6

    move-object/from16 v2, p1

    move-object v3, v10

    move-object v5, v13

    move v7, v9

    .line 85
    invoke-static/range {v2 .. v7}, Lcom/android/apksig/internal/apk/stamp/V2SourceStampVerifier;->verify(Lcom/android/apksig/util/DataSource;Lcom/android/apksig/zip/ZipSections;[BLjava/util/Map;II)Lcom/android/apksig/internal/apk/ApkSigResult;

    move-result-object v2

    .line 86
    invoke-static {v12, v2}, Lcom/android/apksig/ApkVerifier$Result;->access$200(Lcom/android/apksig/ApkVerifier$Result;Lcom/android/apksig/internal/apk/ApkSigResult;)V
    :try_end_7
    .catch Lcom/android/apksig/internal/apk/SignatureNotFoundException; {:try_start_7 .. :try_end_7} :catch_7
    .catch Lcom/android/apksig/zip/ZipFormatException; {:try_start_7 .. :try_end_7} :catch_6

    :cond_16
    const/4 v3, 0x0

    goto :goto_10

    .line 87
    :goto_f
    new-instance v2, Lcom/android/apksig/apk/ApkFormatException;

    const-string v3, "Failed to read APK"

    invoke-direct {v2, v3, v0}, Lcom/android/apksig/apk/ApkFormatException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 88
    :catch_7
    sget-object v2, Lcom/android/apksig/ApkVerifier$Issue;->SOURCE_STAMP_SIG_MISSING:Lcom/android/apksig/ApkVerifier$Issue;

    const/4 v3, 0x0

    new-array v4, v3, [Ljava/lang/Object;

    invoke-virtual {v12, v2, v4}, Lcom/android/apksig/ApkVerifier$Result;->addWarning(Lcom/android/apksig/ApkVerifier$Issue;[Ljava/lang/Object;)V

    .line 89
    :goto_10
    invoke-virtual {v12}, Lcom/android/apksig/ApkVerifier$Result;->containsErrors()Z

    move-result v2

    if-eqz v2, :cond_17

    return-object v12

    .line 90
    :cond_17
    invoke-virtual {v12}, Lcom/android/apksig/ApkVerifier$Result;->isVerifiedUsingV1Scheme()Z

    move-result v2

    if-eqz v2, :cond_1d

    invoke-virtual {v12}, Lcom/android/apksig/ApkVerifier$Result;->isVerifiedUsingV2Scheme()Z

    move-result v2

    if-eqz v2, :cond_1d

    .line 91
    new-instance v2, Ljava/util/ArrayList;

    .line 92
    invoke-virtual {v12}, Lcom/android/apksig/ApkVerifier$Result;->getV1SchemeSigners()Ljava/util/List;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 93
    new-instance v4, Ljava/util/ArrayList;

    .line 94
    invoke-virtual {v12}, Lcom/android/apksig/ApkVerifier$Result;->getV2SchemeSigners()Ljava/util/List;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 95
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 96
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 97
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_11
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_18

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/apksig/ApkVerifier$Result$V1SchemeSignerInfo;

    .line 98
    :try_start_8
    new-instance v13, Lcom/android/apksig/ApkVerifier$ByteArray;

    invoke-virtual {v11}, Lcom/android/apksig/ApkVerifier$Result$V1SchemeSignerInfo;->getCertificate()Ljava/security/cert/X509Certificate;

    move-result-object v14

    invoke-virtual {v14}, Ljava/security/cert/Certificate;->getEncoded()[B

    move-result-object v14

    invoke-direct {v13, v14, v8}, Lcom/android/apksig/ApkVerifier$ByteArray;-><init>([BLcom/android/apksig/ApkVerifier$1;)V

    invoke-virtual {v5, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_8
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_8 .. :try_end_8} :catch_8

    goto :goto_11

    :catch_8
    move-exception v0

    .line 99
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to encode JAR signer "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 100
    invoke-virtual {v11}, Lcom/android/apksig/ApkVerifier$Result$V1SchemeSignerInfo;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " certs"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 101
    :cond_18
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_12
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_19

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/apksig/ApkVerifier$Result$V2SchemeSignerInfo;

    .line 102
    :try_start_9
    new-instance v13, Lcom/android/apksig/ApkVerifier$ByteArray;

    invoke-virtual {v11}, Lcom/android/apksig/ApkVerifier$Result$V2SchemeSignerInfo;->getCertificate()Ljava/security/cert/X509Certificate;

    move-result-object v14

    invoke-virtual {v14}, Ljava/security/cert/Certificate;->getEncoded()[B

    move-result-object v14

    invoke-direct {v13, v14, v8}, Lcom/android/apksig/ApkVerifier$ByteArray;-><init>([BLcom/android/apksig/ApkVerifier$1;)V

    invoke-virtual {v6, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_9
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_9 .. :try_end_9} :catch_9

    goto :goto_12

    :catch_9
    move-exception v0

    .line 103
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to encode APK Signature Scheme v2 signer (index: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 104
    invoke-virtual {v11}, Lcom/android/apksig/ApkVerifier$Result$V2SchemeSignerInfo;->getIndex()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ") certs"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    :cond_19
    move v7, v3

    .line 105
    :goto_13
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v7, v8, :cond_1b

    .line 106
    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/apksig/ApkVerifier$ByteArray;

    .line 107
    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_1a

    .line 108
    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/apksig/ApkVerifier$Result$V1SchemeSignerInfo;

    .line 109
    sget-object v7, Lcom/android/apksig/ApkVerifier$Issue;->V2_SIG_MISSING:Lcom/android/apksig/ApkVerifier$Issue;

    new-array v8, v3, [Ljava/lang/Object;

    invoke-static {v2, v7, v8}, Lcom/android/apksig/ApkVerifier$Result$V1SchemeSignerInfo;->access$400(Lcom/android/apksig/ApkVerifier$Result$V1SchemeSignerInfo;Lcom/android/apksig/ApkVerifier$Issue;[Ljava/lang/Object;)V

    goto :goto_14

    :cond_1a
    add-int/lit8 v7, v7, 0x1

    goto :goto_13

    :cond_1b
    :goto_14
    move v2, v3

    .line 110
    :goto_15
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v2, v7, :cond_1d

    .line 111
    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/apksig/ApkVerifier$ByteArray;

    .line 112
    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1c

    .line 113
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/apksig/ApkVerifier$Result$V2SchemeSignerInfo;

    .line 114
    sget-object v4, Lcom/android/apksig/ApkVerifier$Issue;->JAR_SIG_MISSING:Lcom/android/apksig/ApkVerifier$Issue;

    new-array v5, v3, [Ljava/lang/Object;

    invoke-static {v2, v4, v5}, Lcom/android/apksig/ApkVerifier$Result$V2SchemeSignerInfo;->access$500(Lcom/android/apksig/ApkVerifier$Result$V2SchemeSignerInfo;Lcom/android/apksig/ApkVerifier$Issue;[Ljava/lang/Object;)V

    goto :goto_16

    :cond_1c
    add-int/lit8 v2, v2, 0x1

    goto :goto_15

    .line 115
    :cond_1d
    :goto_16
    invoke-virtual {v12}, Lcom/android/apksig/ApkVerifier$Result;->isVerifiedUsingV3Scheme()Z

    move-result v2

    if-eqz v2, :cond_24

    .line 116
    invoke-virtual {v12}, Lcom/android/apksig/ApkVerifier$Result;->isVerifiedUsingV1Scheme()Z

    move-result v2

    if-nez v2, :cond_1e

    invoke-virtual {v12}, Lcom/android/apksig/ApkVerifier$Result;->isVerifiedUsingV2Scheme()Z

    move-result v2

    if-eqz v2, :cond_24

    .line 117
    :cond_1e
    invoke-virtual {v12}, Lcom/android/apksig/ApkVerifier$Result;->getSigningCertificateLineage()Lcom/android/apksig/SigningCertificateLineage;

    move-result-object v2

    .line 118
    invoke-virtual {v12}, Lcom/android/apksig/ApkVerifier$Result;->isVerifiedUsingV1Scheme()Z

    move-result v4

    if-eqz v4, :cond_20

    .line 119
    invoke-virtual {v12}, Lcom/android/apksig/ApkVerifier$Result;->getV1SchemeSigners()Ljava/util/List;

    move-result-object v4

    .line 120
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    if-eq v5, v15, :cond_1f

    .line 121
    sget-object v5, Lcom/android/apksig/ApkVerifier$Issue;->V3_SIG_MULTIPLE_PAST_SIGNERS:Lcom/android/apksig/ApkVerifier$Issue;

    new-array v6, v3, [Ljava/lang/Object;

    invoke-virtual {v12, v5, v6}, Lcom/android/apksig/ApkVerifier$Result;->addError(Lcom/android/apksig/ApkVerifier$Issue;[Ljava/lang/Object;)V

    .line 122
    :cond_1f
    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/apksig/ApkVerifier$Result$V1SchemeSignerInfo;

    invoke-static {v4}, Lcom/android/apksig/ApkVerifier$Result$V1SchemeSignerInfo;->access$600(Lcom/android/apksig/ApkVerifier$Result$V1SchemeSignerInfo;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/security/cert/X509Certificate;

    goto :goto_17

    .line 123
    :cond_20
    invoke-virtual {v12}, Lcom/android/apksig/ApkVerifier$Result;->getV2SchemeSigners()Ljava/util/List;

    move-result-object v4

    .line 124
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    if-eq v5, v15, :cond_21

    .line 125
    sget-object v5, Lcom/android/apksig/ApkVerifier$Issue;->V3_SIG_MULTIPLE_PAST_SIGNERS:Lcom/android/apksig/ApkVerifier$Issue;

    new-array v6, v3, [Ljava/lang/Object;

    invoke-virtual {v12, v5, v6}, Lcom/android/apksig/ApkVerifier$Result;->addError(Lcom/android/apksig/ApkVerifier$Issue;[Ljava/lang/Object;)V

    .line 126
    :cond_21
    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/apksig/ApkVerifier$Result$V2SchemeSignerInfo;

    invoke-static {v4}, Lcom/android/apksig/ApkVerifier$Result$V2SchemeSignerInfo;->access$700(Lcom/android/apksig/ApkVerifier$Result$V2SchemeSignerInfo;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/security/cert/X509Certificate;

    :goto_17
    if-nez v2, :cond_23

    .line 127
    invoke-virtual {v12}, Lcom/android/apksig/ApkVerifier$Result;->getV3SchemeSigners()Ljava/util/List;

    move-result-object v2

    .line 128
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    if-eq v5, v15, :cond_22

    .line 129
    sget-object v5, Lcom/android/apksig/ApkVerifier$Issue;->V3_SIG_MULTIPLE_SIGNERS:Lcom/android/apksig/ApkVerifier$Issue;

    new-array v6, v3, [Ljava/lang/Object;

    invoke-virtual {v12, v5, v6}, Lcom/android/apksig/ApkVerifier$Result;->addError(Lcom/android/apksig/ApkVerifier$Issue;[Ljava/lang/Object;)V

    .line 130
    :cond_22
    :try_start_a
    invoke-virtual {v4}, Ljava/security/cert/Certificate;->getEncoded()[B

    move-result-object v4

    .line 131
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/apksig/ApkVerifier$Result$V3SchemeSignerInfo;

    invoke-static {v2}, Lcom/android/apksig/ApkVerifier$Result$V3SchemeSignerInfo;->access$800(Lcom/android/apksig/ApkVerifier$Result$V3SchemeSignerInfo;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/security/cert/X509Certificate;

    invoke-virtual {v2}, Ljava/security/cert/Certificate;->getEncoded()[B

    move-result-object v2

    .line 132
    invoke-static {v4, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    if-nez v2, :cond_24

    .line 133
    sget-object v2, Lcom/android/apksig/ApkVerifier$Issue;->V3_SIG_PAST_SIGNERS_MISMATCH:Lcom/android/apksig/ApkVerifier$Issue;

    new-array v4, v3, [Ljava/lang/Object;

    invoke-virtual {v12, v2, v4}, Lcom/android/apksig/ApkVerifier$Result;->addError(Lcom/android/apksig/ApkVerifier$Issue;[Ljava/lang/Object;)V
    :try_end_a
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_a .. :try_end_a} :catch_a

    goto :goto_18

    :catch_a
    move-exception v0

    .line 134
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Failed to encode APK Signature Scheme v3 signer cert"

    invoke-direct {v2, v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 135
    :cond_23
    :try_start_b
    invoke-virtual {v2, v4}, Lcom/android/apksig/SigningCertificateLineage;->getSubLineage(Ljava/security/cert/X509Certificate;)Lcom/android/apksig/SigningCertificateLineage;

    move-result-object v2

    .line 136
    invoke-virtual {v2}, Lcom/android/apksig/SigningCertificateLineage;->size()I

    move-result v2

    if-eq v2, v15, :cond_24

    .line 137
    sget-object v2, Lcom/android/apksig/ApkVerifier$Issue;->V3_SIG_PAST_SIGNERS_MISMATCH:Lcom/android/apksig/ApkVerifier$Issue;

    new-array v4, v3, [Ljava/lang/Object;

    invoke-virtual {v12, v2, v4}, Lcom/android/apksig/ApkVerifier$Result;->addError(Lcom/android/apksig/ApkVerifier$Issue;[Ljava/lang/Object;)V
    :try_end_b
    .catch Ljava/lang/IllegalArgumentException; {:try_start_b .. :try_end_b} :catch_b

    goto :goto_18

    .line 138
    :catch_b
    sget-object v2, Lcom/android/apksig/ApkVerifier$Issue;->V3_SIG_PAST_SIGNERS_MISMATCH:Lcom/android/apksig/ApkVerifier$Issue;

    new-array v4, v3, [Ljava/lang/Object;

    invoke-virtual {v12, v2, v4}, Lcom/android/apksig/ApkVerifier$Result;->addError(Lcom/android/apksig/ApkVerifier$Issue;[Ljava/lang/Object;)V

    .line 139
    :cond_24
    :goto_18
    invoke-virtual {v12}, Lcom/android/apksig/ApkVerifier$Result;->isVerifiedUsingV4Scheme()Z

    move-result v2

    if-eqz v2, :cond_2c

    .line 140
    invoke-virtual {v12}, Lcom/android/apksig/ApkVerifier$Result;->getV4SchemeSigners()Ljava/util/List;

    move-result-object v2

    .line 141
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/apksig/ApkVerifier$Result$V4SchemeSignerInfo;

    invoke-virtual {v4}, Lcom/android/apksig/ApkVerifier$Result$V4SchemeSignerInfo;->getContentDigests()Ljava/util/List;

    move-result-object v4

    .line 142
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    if-eq v5, v15, :cond_25

    .line 143
    sget-object v5, Lcom/android/apksig/ApkVerifier$Issue;->V4_SIG_V2_V3_DIGESTS_MISMATCH:Lcom/android/apksig/ApkVerifier$Issue;

    new-array v6, v3, [Ljava/lang/Object;

    invoke-virtual {v12, v5, v6}, Lcom/android/apksig/ApkVerifier$Result;->addError(Lcom/android/apksig/ApkVerifier$Issue;[Ljava/lang/Object;)V

    .line 144
    :cond_25
    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$Result$SignerInfo$ContentDigest;

    invoke-virtual {v4}, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$Result$SignerInfo$ContentDigest;->getValue()[B

    move-result-object v4

    .line 145
    invoke-virtual {v12}, Lcom/android/apksig/ApkVerifier$Result;->isVerifiedUsingV3Scheme()Z

    move-result v5

    if-eqz v5, :cond_28

    .line 146
    invoke-virtual {v12}, Lcom/android/apksig/ApkVerifier$Result;->isVerifiedUsingV31Scheme()Z

    move-result v5

    if-eqz v5, :cond_26

    move/from16 v8, v17

    goto :goto_19

    :cond_26
    move v8, v15

    .line 147
    :goto_19
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    if-eq v5, v8, :cond_27

    .line 148
    sget-object v5, Lcom/android/apksig/ApkVerifier$Issue;->V4_SIG_MULTIPLE_SIGNERS:Lcom/android/apksig/ApkVerifier$Issue;

    new-array v6, v3, [Ljava/lang/Object;

    invoke-virtual {v12, v5, v6}, Lcom/android/apksig/ApkVerifier$Result;->addError(Lcom/android/apksig/ApkVerifier$Issue;[Ljava/lang/Object;)V

    .line 149
    :cond_27
    invoke-virtual {v12}, Lcom/android/apksig/ApkVerifier$Result;->getV3SchemeSigners()Ljava/util/List;

    move-result-object v5

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/apksig/ApkVerifier$Result$V4SchemeSignerInfo;

    invoke-static {v3}, Lcom/android/apksig/ApkVerifier$Result$V4SchemeSignerInfo;->access$900(Lcom/android/apksig/ApkVerifier$Result$V4SchemeSignerInfo;)Ljava/util/List;

    move-result-object v3

    invoke-static {v5, v3, v4, v12}, Lcom/android/apksig/ApkVerifier;->checkV4Signer(Ljava/util/List;Ljava/util/List;[BLcom/android/apksig/ApkVerifier$Result;)V

    .line 150
    invoke-virtual {v12}, Lcom/android/apksig/ApkVerifier$Result;->isVerifiedUsingV31Scheme()Z

    move-result v3

    if-eqz v3, :cond_2c

    .line 151
    invoke-virtual {v12}, Lcom/android/apksig/ApkVerifier$Result;->getV31SchemeSigners()Ljava/util/List;

    move-result-object v3

    invoke-interface {v2, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/apksig/ApkVerifier$Result$V4SchemeSignerInfo;

    invoke-static {v2}, Lcom/android/apksig/ApkVerifier$Result$V4SchemeSignerInfo;->access$900(Lcom/android/apksig/ApkVerifier$Result$V4SchemeSignerInfo;)Ljava/util/List;

    move-result-object v2

    invoke-static {v3, v2, v4, v12}, Lcom/android/apksig/ApkVerifier;->checkV4Signer(Ljava/util/List;Ljava/util/List;[BLcom/android/apksig/ApkVerifier$Result;)V

    goto :goto_1a

    .line 152
    :cond_28
    invoke-virtual {v12}, Lcom/android/apksig/ApkVerifier$Result;->isVerifiedUsingV2Scheme()Z

    move-result v5

    if-eqz v5, :cond_2b

    .line 153
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    if-eq v5, v15, :cond_29

    .line 154
    sget-object v5, Lcom/android/apksig/ApkVerifier$Issue;->V4_SIG_MULTIPLE_SIGNERS:Lcom/android/apksig/ApkVerifier$Issue;

    new-array v6, v3, [Ljava/lang/Object;

    invoke-virtual {v12, v5, v6}, Lcom/android/apksig/ApkVerifier$Result;->addError(Lcom/android/apksig/ApkVerifier$Issue;[Ljava/lang/Object;)V

    .line 155
    :cond_29
    invoke-virtual {v12}, Lcom/android/apksig/ApkVerifier$Result;->getV2SchemeSigners()Ljava/util/List;

    move-result-object v5

    .line 156
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    if-eq v6, v15, :cond_2a

    .line 157
    sget-object v6, Lcom/android/apksig/ApkVerifier$Issue;->V4_SIG_MULTIPLE_SIGNERS:Lcom/android/apksig/ApkVerifier$Issue;

    new-array v7, v3, [Ljava/lang/Object;

    invoke-virtual {v12, v6, v7}, Lcom/android/apksig/ApkVerifier$Result;->addError(Lcom/android/apksig/ApkVerifier$Issue;[Ljava/lang/Object;)V

    .line 158
    :cond_2a
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/apksig/ApkVerifier$Result$V4SchemeSignerInfo;

    invoke-static {v2}, Lcom/android/apksig/ApkVerifier$Result$V4SchemeSignerInfo;->access$900(Lcom/android/apksig/ApkVerifier$Result$V4SchemeSignerInfo;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/apksig/ApkVerifier$Result$V2SchemeSignerInfo;

    invoke-static {v6}, Lcom/android/apksig/ApkVerifier$Result$V2SchemeSignerInfo;->access$700(Lcom/android/apksig/ApkVerifier$Result$V2SchemeSignerInfo;)Ljava/util/List;

    move-result-object v6

    invoke-static {v2, v6, v12}, Lcom/android/apksig/ApkVerifier;->checkV4Certificate(Ljava/util/List;Ljava/util/List;Lcom/android/apksig/ApkVerifier$Result;)V

    .line 159
    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/apksig/ApkVerifier$Result$V2SchemeSignerInfo;

    invoke-virtual {v2}, Lcom/android/apksig/ApkVerifier$Result$V2SchemeSignerInfo;->getContentDigests()Ljava/util/List;

    move-result-object v2

    .line 160
    invoke-static {v2}, Lcom/android/apksig/ApkVerifier;->pickBestDigestForV4(Ljava/util/List;)[B

    move-result-object v2

    .line 161
    invoke-static {v4, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    if-nez v2, :cond_2c

    .line 162
    sget-object v2, Lcom/android/apksig/ApkVerifier$Issue;->V4_SIG_V2_V3_DIGESTS_MISMATCH:Lcom/android/apksig/ApkVerifier$Issue;

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v12, v2, v3}, Lcom/android/apksig/ApkVerifier$Result;->addError(Lcom/android/apksig/ApkVerifier$Issue;[Ljava/lang/Object;)V

    goto :goto_1a

    .line 163
    :cond_2b
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v2, "V4 signature must be also verified with V2/V3"

    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2c
    :goto_1a
    if-nez v18, :cond_2d

    .line 164
    :try_start_c
    invoke-static {v0, v10}, Lcom/android/apksig/ApkVerifier;->getAndroidManifestFromApk(Lcom/android/apksig/util/DataSource;Lcom/android/apksig/apk/ApkUtils$ZipSections;)Ljava/nio/ByteBuffer;

    move-result-object v18
    :try_end_c
    .catch Lcom/android/apksig/apk/ApkFormatException; {:try_start_c .. :try_end_c} :catch_c

    :catch_c
    :cond_2d
    if-eqz v18, :cond_31

    .line 165
    invoke-virtual/range {v18 .. v18}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 166
    invoke-static {v0}, Lcom/android/apksig/apk/ApkUtils;->getTargetSdkVersionFromBinaryAndroidManifest(Ljava/nio/ByteBuffer;)I

    move-result v0

    .line 167
    invoke-static {v0}, Lcom/android/apksig/ApkVerifier;->getMinimumSignatureSchemeVersionForTargetSdk(I)I

    move-result v2

    if-le v2, v15, :cond_31

    if-lt v9, v0, :cond_31

    move/from16 v3, v17

    if-eq v2, v3, :cond_2e

    const/4 v3, 0x3

    if-eq v2, v3, :cond_2f

    goto :goto_1b

    .line 168
    :cond_2e
    invoke-virtual {v12}, Lcom/android/apksig/ApkVerifier$Result;->isVerifiedUsingV2Scheme()Z

    move-result v3

    if-eqz v3, :cond_2f

    goto :goto_1b

    .line 169
    :cond_2f
    invoke-virtual {v12}, Lcom/android/apksig/ApkVerifier$Result;->isVerifiedUsingV3Scheme()Z

    move-result v3

    if-nez v3, :cond_31

    invoke-virtual {v12}, Lcom/android/apksig/ApkVerifier$Result;->isVerifiedUsingV31Scheme()Z

    move-result v3

    if-eqz v3, :cond_30

    goto :goto_1b

    .line 170
    :cond_30
    sget-object v3, Lcom/android/apksig/ApkVerifier$Issue;->MIN_SIG_SCHEME_FOR_TARGET_SDK_NOT_MET:Lcom/android/apksig/ApkVerifier$Issue;

    .line 171
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 172
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v0, v2}, [Ljava/lang/Object;

    move-result-object v0

    .line 173
    invoke-virtual {v12, v3, v0}, Lcom/android/apksig/ApkVerifier$Result;->addError(Lcom/android/apksig/ApkVerifier$Issue;[Ljava/lang/Object;)V

    .line 174
    :cond_31
    :goto_1b
    invoke-virtual {v12}, Lcom/android/apksig/ApkVerifier$Result;->containsErrors()Z

    move-result v0

    if-eqz v0, :cond_32

    return-object v12

    .line 175
    :cond_32
    invoke-static {v12}, Lcom/android/apksig/ApkVerifier$Result;->access$1000(Lcom/android/apksig/ApkVerifier$Result;)V

    .line 176
    invoke-virtual {v12}, Lcom/android/apksig/ApkVerifier$Result;->isVerifiedUsingV31Scheme()Z

    move-result v0

    if-eqz v0, :cond_33

    .line 177
    invoke-virtual {v12}, Lcom/android/apksig/ApkVerifier$Result;->getV31SchemeSigners()Ljava/util/List;

    move-result-object v0

    .line 178
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    sub-int/2addr v2, v15

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/apksig/ApkVerifier$Result$V3SchemeSignerInfo;

    invoke-virtual {v0}, Lcom/android/apksig/ApkVerifier$Result$V3SchemeSignerInfo;->getCertificate()Ljava/security/cert/X509Certificate;

    move-result-object v0

    invoke-static {v12, v0}, Lcom/android/apksig/ApkVerifier$Result;->access$1100(Lcom/android/apksig/ApkVerifier$Result;Ljava/security/cert/X509Certificate;)V

    goto :goto_1e

    .line 179
    :cond_33
    invoke-virtual {v12}, Lcom/android/apksig/ApkVerifier$Result;->isVerifiedUsingV3Scheme()Z

    move-result v0

    if-eqz v0, :cond_34

    .line 180
    invoke-virtual {v12}, Lcom/android/apksig/ApkVerifier$Result;->getV3SchemeSigners()Ljava/util/List;

    move-result-object v0

    .line 181
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    sub-int/2addr v2, v15

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/apksig/ApkVerifier$Result$V3SchemeSignerInfo;

    invoke-virtual {v0}, Lcom/android/apksig/ApkVerifier$Result$V3SchemeSignerInfo;->getCertificate()Ljava/security/cert/X509Certificate;

    move-result-object v0

    invoke-static {v12, v0}, Lcom/android/apksig/ApkVerifier$Result;->access$1100(Lcom/android/apksig/ApkVerifier$Result;Ljava/security/cert/X509Certificate;)V

    goto :goto_1e

    .line 182
    :cond_34
    invoke-virtual {v12}, Lcom/android/apksig/ApkVerifier$Result;->isVerifiedUsingV2Scheme()Z

    move-result v0

    if-eqz v0, :cond_35

    .line 183
    invoke-virtual {v12}, Lcom/android/apksig/ApkVerifier$Result;->getV2SchemeSigners()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_36

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/apksig/ApkVerifier$Result$V2SchemeSignerInfo;

    .line 184
    invoke-virtual {v2}, Lcom/android/apksig/ApkVerifier$Result$V2SchemeSignerInfo;->getCertificate()Ljava/security/cert/X509Certificate;

    move-result-object v2

    invoke-static {v12, v2}, Lcom/android/apksig/ApkVerifier$Result;->access$1100(Lcom/android/apksig/ApkVerifier$Result;Ljava/security/cert/X509Certificate;)V

    goto :goto_1c

    .line 185
    :cond_35
    invoke-virtual {v12}, Lcom/android/apksig/ApkVerifier$Result;->isVerifiedUsingV1Scheme()Z

    move-result v0

    if-eqz v0, :cond_37

    .line 186
    invoke-virtual {v12}, Lcom/android/apksig/ApkVerifier$Result;->getV1SchemeSigners()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_36

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/apksig/ApkVerifier$Result$V1SchemeSignerInfo;

    .line 187
    invoke-virtual {v2}, Lcom/android/apksig/ApkVerifier$Result$V1SchemeSignerInfo;->getCertificate()Ljava/security/cert/X509Certificate;

    move-result-object v2

    invoke-static {v12, v2}, Lcom/android/apksig/ApkVerifier$Result;->access$1100(Lcom/android/apksig/ApkVerifier$Result;Ljava/security/cert/X509Certificate;)V

    goto :goto_1d

    :cond_36
    :goto_1e
    return-object v12

    .line 188
    :cond_37
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v2, "APK verified, but has not verified using any of v1, v2 or v3 schemes"

    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_d
    move-exception v0

    move-object v2, v0

    .line 189
    new-instance v0, Lcom/android/apksig/apk/ApkFormatException;

    const-string v3, "Malformed APK: not a ZIP archive"

    invoke-direct {v0, v3, v2}, Lcom/android/apksig/apk/ApkFormatException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method private verifyAndGetMinSdkVersion(Lcom/android/apksig/util/DataSource;Lcom/android/apksig/apk/ApkUtils$ZipSections;)I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/apksig/apk/ApkFormatException;,
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/apksig/ApkVerifier;->mMinSdkVersion:Ljava/lang/Integer;

    const-string v1, ")"

    const-string v2, ") > maxSdkVersion ("

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-ltz p1, :cond_2

    iget-object p1, p0, Lcom/android/apksig/ApkVerifier;->mMinSdkVersion:Ljava/lang/Integer;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iget p2, p0, Lcom/android/apksig/ApkVerifier;->mMaxSdkVersion:I

    if-gt p1, p2, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "minSdkVersion ("

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/apksig/ApkVerifier;->mMinSdkVersion:Ljava/lang/Integer;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/android/apksig/ApkVerifier;->mMaxSdkVersion:I

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/android/apksig/ApkVerifier;->mMinSdkVersion:Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1

    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "minSdkVersion must not be negative: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/apksig/ApkVerifier;->mMinSdkVersion:Ljava/lang/Integer;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    invoke-static {p1, p2}, Lcom/android/apksig/ApkVerifier;->getAndroidManifestFromApk(Lcom/android/apksig/util/DataSource;Lcom/android/apksig/apk/ApkUtils$ZipSections;)Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-static {p1}, Lcom/android/apksig/apk/ApkUtils;->getMinSdkVersionFromBinaryAndroidManifest(Ljava/nio/ByteBuffer;)I

    move-result p1

    iget p2, p0, Lcom/android/apksig/ApkVerifier;->mMaxSdkVersion:I

    if-gt p1, p2, :cond_4

    return p1

    :cond_4
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "minSdkVersion from APK ("

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lcom/android/apksig/ApkVerifier;->mMaxSdkVersion:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method private verifySourceStamp(Lcom/android/apksig/util/DataSource;Ljava/lang/String;)Lcom/android/apksig/ApkVerifier$Result;
    .locals 19

    move-object/from16 v9, p0

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    const/4 v10, 0x0

    .line 12
    :try_start_0
    invoke-static/range {p1 .. p1}, Lcom/android/apksig/apk/ApkUtils;->findZipSections(Lcom/android/apksig/util/DataSource;)Lcom/android/apksig/apk/ApkUtils$ZipSections;

    move-result-object v11

    .line 13
    invoke-direct {v9, v0, v11}, Lcom/android/apksig/ApkVerifier;->verifyAndGetMinSdkVersion(Lcom/android/apksig/util/DataSource;Lcom/android/apksig/apk/ApkUtils$ZipSections;)I

    move-result v12

    .line 14
    invoke-static {v0, v11}, Lcom/android/apksig/internal/apk/v1/V1SchemeVerifier;->parseZipCentralDirectory(Lcom/android/apksig/util/DataSource;Lcom/android/apksig/apk/ApkUtils$ZipSections;)Ljava/util/List;

    move-result-object v13

    .line 15
    invoke-interface {v13}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/apksig/internal/zip/CentralDirectoryRecord;

    .line 16
    const-string v4, "stamp-cert-sha256"

    invoke-virtual {v3}, Lcom/android/apksig/internal/zip/CentralDirectoryRecord;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4
    :try_end_0
    .catch Lcom/android/apksig/apk/ApkFormatException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lcom/android/apksig/zip/ZipFormatException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/android/apksig/internal/apk/SignatureNotFoundException; {:try_start_0 .. :try_end_0} :catch_5

    if-eqz v4, :cond_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto/16 :goto_4

    :catch_1
    move-exception v0

    goto/16 :goto_5

    :catch_2
    move-exception v0

    goto/16 :goto_5

    :catch_3
    move-exception v0

    goto/16 :goto_5

    :cond_1
    const/4 v3, 0x0

    :goto_0
    if-nez v3, :cond_2

    .line 17
    :try_start_1
    new-instance v1, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$Result;

    invoke-direct {v1, v10}, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$Result;-><init>(I)V

    const v2, 0x6dff800d

    .line 18
    invoke-static {v0, v11, v2, v1}, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils;->findSignature(Lcom/android/apksig/util/DataSource;Lcom/android/apksig/apk/ApkUtils$ZipSections;ILcom/android/apksig/internal/apk/ApkSigningBlockUtils$Result;)Lcom/android/apksig/internal/apk/SignatureInfo;
    :try_end_1
    .catch Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$SignatureNotFoundException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Lcom/android/apksig/apk/ApkFormatException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Lcom/android/apksig/zip/ZipFormatException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/android/apksig/internal/apk/SignatureNotFoundException; {:try_start_1 .. :try_end_1} :catch_5

    .line 19
    :try_start_2
    sget-object v0, Lcom/android/apksig/ApkVerifier$Result$SourceStampInfo$SourceStampVerificationStatus;->STAMP_NOT_VERIFIED:Lcom/android/apksig/ApkVerifier$Result$SourceStampInfo$SourceStampVerificationStatus;

    sget-object v1, Lcom/android/apksig/ApkVerifier$Issue;->SOURCE_STAMP_SIGNATURE_BLOCK_WITHOUT_CERT_DIGEST:Lcom/android/apksig/ApkVerifier$Issue;

    new-array v2, v10, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/apksig/ApkVerifier;->createSourceStampResultWithError(Lcom/android/apksig/ApkVerifier$Result$SourceStampInfo$SourceStampVerificationStatus;Lcom/android/apksig/ApkVerifier$Issue;[Ljava/lang/Object;)Lcom/android/apksig/ApkVerifier$Result;

    move-result-object v0

    return-object v0

    .line 20
    :catch_4
    sget-object v0, Lcom/android/apksig/ApkVerifier$Result$SourceStampInfo$SourceStampVerificationStatus;->STAMP_MISSING:Lcom/android/apksig/ApkVerifier$Result$SourceStampInfo$SourceStampVerificationStatus;

    sget-object v1, Lcom/android/apksig/ApkVerifier$Issue;->SOURCE_STAMP_CERT_DIGEST_AND_SIG_BLOCK_MISSING:Lcom/android/apksig/ApkVerifier$Issue;

    new-array v2, v10, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/apksig/ApkVerifier;->createSourceStampResultWithError(Lcom/android/apksig/ApkVerifier$Result$SourceStampInfo$SourceStampVerificationStatus;Lcom/android/apksig/ApkVerifier$Issue;[Ljava/lang/Object;)Lcom/android/apksig/ApkVerifier$Result;

    move-result-object v0

    return-object v0

    .line 21
    :cond_2
    invoke-virtual {v11}, Lcom/android/apksig/zip/ZipSections;->getZipCentralDirectoryOffset()J

    move-result-wide v4

    .line 22
    invoke-static {v0, v3, v4, v5}, Lcom/android/apksig/internal/zip/LocalFileRecord;->getUncompressedData(Lcom/android/apksig/util/DataSource;Lcom/android/apksig/internal/zip/CentralDirectoryRecord;J)[B

    move-result-object v14

    if-eqz v1, :cond_3

    .line 23
    invoke-static {v14}, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils;->toHex([B)Ljava/lang/String;

    move-result-object v2

    .line 24
    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 25
    sget-object v0, Lcom/android/apksig/ApkVerifier$Result$SourceStampInfo$SourceStampVerificationStatus;->CERT_DIGEST_MISMATCH:Lcom/android/apksig/ApkVerifier$Result$SourceStampInfo$SourceStampVerificationStatus;

    sget-object v3, Lcom/android/apksig/ApkVerifier$Issue;->SOURCE_STAMP_EXPECTED_DIGEST_MISMATCH:Lcom/android/apksig/ApkVerifier$Issue;

    filled-new-array {v2, v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v3, v1}, Lcom/android/apksig/ApkVerifier;->createSourceStampResultWithError(Lcom/android/apksig/ApkVerifier$Result$SourceStampInfo$SourceStampVerificationStatus;Lcom/android/apksig/ApkVerifier$Issue;[Ljava/lang/Object;)Lcom/android/apksig/ApkVerifier$Result;

    move-result-object v0

    return-object v0

    .line 26
    :cond_3
    new-instance v15, Ljava/util/HashMap;

    invoke-direct {v15}, Ljava/util/HashMap;-><init>()V

    .line 27
    iget v1, v9, Lcom/android/apksig/ApkVerifier;->mMaxSdkVersion:I

    invoke-static {v1}, Lcom/android/apksig/ApkVerifier;->getSupportedSchemeNames(I)Ljava/util/Map;

    move-result-object v16

    .line 28
    new-instance v8, Ljava/util/HashSet;

    const/4 v1, 0x2

    invoke-direct {v8, v1}, Ljava/util/HashSet;-><init>(I)V

    .line 29
    new-instance v7, Lcom/android/apksig/ApkVerifier$Result;

    invoke-direct {v7}, Lcom/android/apksig/ApkVerifier$Result;-><init>()V

    .line 30
    iget v1, v9, Lcom/android/apksig/ApkVerifier;->mMaxSdkVersion:I

    const/16 v6, 0x1c

    if-lt v1, v6, :cond_4

    .line 31
    invoke-static {v12, v6}, Ljava/lang/Math;->max(II)I

    move-result v17

    const/16 v18, 0x3

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object v3, v11

    move-object v4, v8

    move-object/from16 v5, v16

    move v10, v6

    move-object v6, v15

    move-object v10, v7

    move/from16 v7, v18

    move-object/from16 v18, v8

    move/from16 v8, v17

    .line 32
    invoke-direct/range {v1 .. v8}, Lcom/android/apksig/ApkVerifier;->getApkContentDigests(Lcom/android/apksig/util/DataSource;Lcom/android/apksig/apk/ApkUtils$ZipSections;Ljava/util/Set;Ljava/util/Map;Ljava/util/Map;II)Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$Result;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 33
    invoke-virtual {v1}, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$Result;->containsErrors()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 34
    invoke-static {v10, v1}, Lcom/android/apksig/ApkVerifier$Result;->access$000(Lcom/android/apksig/ApkVerifier$Result;Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$Result;)V

    .line 35
    sget-object v0, Lcom/android/apksig/ApkVerifier$Result$SourceStampInfo$SourceStampVerificationStatus;->VERIFICATION_ERROR:Lcom/android/apksig/ApkVerifier$Result$SourceStampInfo$SourceStampVerificationStatus;

    invoke-static {v0, v10}, Lcom/android/apksig/ApkVerifier;->mergeSourceStampResult(Lcom/android/apksig/ApkVerifier$Result$SourceStampInfo$SourceStampVerificationStatus;Lcom/android/apksig/ApkVerifier$Result;)Lcom/android/apksig/ApkVerifier$Result;

    move-result-object v0

    return-object v0

    :cond_4
    move-object v10, v7

    move-object/from16 v18, v8

    .line 36
    :cond_5
    iget v1, v9, Lcom/android/apksig/ApkVerifier;->mMaxSdkVersion:I

    const/16 v8, 0x18

    if-lt v1, v8, :cond_6

    const/16 v1, 0x1c

    if-lt v12, v1, :cond_7

    .line 37
    invoke-interface/range {v18 .. v18}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_6

    goto :goto_1

    :cond_6
    move-object/from16 v16, v14

    move v14, v8

    goto :goto_2

    .line 38
    :cond_7
    :goto_1
    invoke-static {v12, v8}, Ljava/lang/Math;->max(II)I

    move-result v17

    const/4 v7, 0x2

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object v3, v11

    move-object/from16 v4, v18

    move-object/from16 v5, v16

    move-object v6, v15

    move-object/from16 v16, v14

    move v14, v8

    move/from16 v8, v17

    .line 39
    invoke-direct/range {v1 .. v8}, Lcom/android/apksig/ApkVerifier;->getApkContentDigests(Lcom/android/apksig/util/DataSource;Lcom/android/apksig/apk/ApkUtils$ZipSections;Ljava/util/Set;Ljava/util/Map;Ljava/util/Map;II)Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$Result;

    move-result-object v1

    if-eqz v1, :cond_8

    .line 40
    invoke-virtual {v1}, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$Result;->containsErrors()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 41
    invoke-static {v10, v1}, Lcom/android/apksig/ApkVerifier$Result;->access$000(Lcom/android/apksig/ApkVerifier$Result;Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$Result;)V

    .line 42
    sget-object v0, Lcom/android/apksig/ApkVerifier$Result$SourceStampInfo$SourceStampVerificationStatus;->VERIFICATION_ERROR:Lcom/android/apksig/ApkVerifier$Result$SourceStampInfo$SourceStampVerificationStatus;

    invoke-static {v0, v10}, Lcom/android/apksig/ApkVerifier;->mergeSourceStampResult(Lcom/android/apksig/ApkVerifier$Result$SourceStampInfo$SourceStampVerificationStatus;Lcom/android/apksig/ApkVerifier$Result;)Lcom/android/apksig/ApkVerifier$Result;

    move-result-object v0

    return-object v0

    :cond_8
    :goto_2
    const/4 v7, 0x1

    if-lt v12, v14, :cond_9

    .line 43
    invoke-interface/range {v18 .. v18}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_a

    .line 44
    :cond_9
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 45
    invoke-static {v13, v0, v11}, Lcom/android/apksig/ApkVerifier;->getApkContentDigestFromV1SigningScheme(Ljava/util/List;Lcom/android/apksig/util/DataSource;Lcom/android/apksig/apk/ApkUtils$ZipSections;)Ljava/util/Map;

    move-result-object v2

    .line 46
    invoke-interface {v15, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    :cond_a
    iget v6, v9, Lcom/android/apksig/ApkVerifier;->mMaxSdkVersion:I

    move-object/from16 v1, p1

    move-object v2, v11

    move-object/from16 v3, v16

    move-object v4, v15

    move v5, v12

    .line 48
    invoke-static/range {v1 .. v6}, Lcom/android/apksig/internal/apk/stamp/V2SourceStampVerifier;->verify(Lcom/android/apksig/util/DataSource;Lcom/android/apksig/zip/ZipSections;[BLjava/util/Map;II)Lcom/android/apksig/internal/apk/ApkSigResult;

    move-result-object v0

    .line 49
    invoke-static {v10, v0}, Lcom/android/apksig/ApkVerifier$Result;->access$200(Lcom/android/apksig/ApkVerifier$Result;Lcom/android/apksig/internal/apk/ApkSigResult;)V

    .line 50
    iget-boolean v0, v0, Lcom/android/apksig/internal/apk/ApkSigResult;->verified:Z

    if-eqz v0, :cond_b

    .line 51
    invoke-static {v10}, Lcom/android/apksig/ApkVerifier$Result;->access$1000(Lcom/android/apksig/ApkVerifier$Result;)V

    goto :goto_3

    .line 52
    :cond_b
    invoke-virtual {v10, v7}, Lcom/android/apksig/ApkVerifier$Result;->setWarningsAsErrors(Z)V
    :try_end_2
    .catch Lcom/android/apksig/apk/ApkFormatException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Lcom/android/apksig/zip/ZipFormatException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lcom/android/apksig/internal/apk/SignatureNotFoundException; {:try_start_2 .. :try_end_2} :catch_5

    :goto_3
    return-object v10

    .line 53
    :catch_5
    sget-object v0, Lcom/android/apksig/ApkVerifier$Result$SourceStampInfo$SourceStampVerificationStatus;->STAMP_NOT_VERIFIED:Lcom/android/apksig/ApkVerifier$Result$SourceStampInfo$SourceStampVerificationStatus;

    sget-object v1, Lcom/android/apksig/ApkVerifier$Issue;->SOURCE_STAMP_SIG_MISSING:Lcom/android/apksig/ApkVerifier$Issue;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/apksig/ApkVerifier;->createSourceStampResultWithError(Lcom/android/apksig/ApkVerifier$Result$SourceStampInfo$SourceStampVerificationStatus;Lcom/android/apksig/ApkVerifier$Issue;[Ljava/lang/Object;)Lcom/android/apksig/ApkVerifier$Result;

    move-result-object v0

    return-object v0

    .line 54
    :goto_4
    sget-object v1, Lcom/android/apksig/ApkVerifier$Result$SourceStampInfo$SourceStampVerificationStatus;->VERIFICATION_ERROR:Lcom/android/apksig/ApkVerifier$Result$SourceStampInfo$SourceStampVerificationStatus;

    sget-object v2, Lcom/android/apksig/ApkVerifier$Issue;->UNEXPECTED_EXCEPTION:Lcom/android/apksig/ApkVerifier$Issue;

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v1, v2, v0}, Lcom/android/apksig/ApkVerifier;->createSourceStampResultWithError(Lcom/android/apksig/ApkVerifier$Result$SourceStampInfo$SourceStampVerificationStatus;Lcom/android/apksig/ApkVerifier$Issue;[Ljava/lang/Object;)Lcom/android/apksig/ApkVerifier$Result;

    move-result-object v0

    return-object v0

    .line 55
    :goto_5
    sget-object v1, Lcom/android/apksig/ApkVerifier$Result$SourceStampInfo$SourceStampVerificationStatus;->VERIFICATION_ERROR:Lcom/android/apksig/ApkVerifier$Result$SourceStampInfo$SourceStampVerificationStatus;

    sget-object v2, Lcom/android/apksig/ApkVerifier$Issue;->MALFORMED_APK:Lcom/android/apksig/ApkVerifier$Issue;

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v1, v2, v0}, Lcom/android/apksig/ApkVerifier;->createSourceStampResultWithError(Lcom/android/apksig/ApkVerifier$Result$SourceStampInfo$SourceStampVerificationStatus;Lcom/android/apksig/ApkVerifier$Issue;[Ljava/lang/Object;)Lcom/android/apksig/ApkVerifier$Result;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public verify()Lcom/android/apksig/ApkVerifier$Result;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/android/apksig/apk/ApkFormatException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    :try_start_0
    iget-object v1, p0, Lcom/android/apksig/ApkVerifier;->mApkDataSource:Lcom/android/apksig/util/DataSource;

    if-eqz v1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v1, p0, Lcom/android/apksig/ApkVerifier;->mApkFile:Ljava/io/File;

    if-eqz v1, :cond_2

    .line 3
    new-instance v1, Ljava/io/RandomAccessFile;

    iget-object v2, p0, Lcom/android/apksig/ApkVerifier;->mApkFile:Ljava/io/File;

    const-string v3, "r"

    invoke-direct {v1, v2, v3}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    :try_start_1
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    invoke-static {v1, v4, v5, v2, v3}, Lcom/android/apksig/util/DataSources;->asDataSource(Ljava/io/RandomAccessFile;JJ)Lcom/android/apksig/util/DataSource;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object v6, v1

    move-object v1, v0

    move-object v0, v6

    .line 5
    :goto_0
    :try_start_2
    invoke-direct {p0, v1}, Lcom/android/apksig/ApkVerifier;->verify(Lcom/android/apksig/util/DataSource;)Lcom/android/apksig/ApkVerifier$Result;

    move-result-object v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v0, :cond_1

    .line 6
    invoke-interface {v0}, Ljava/io/Closeable;->close()V

    :cond_1
    return-object v1

    :catchall_0
    move-exception v1

    goto :goto_1

    :catchall_1
    move-exception v0

    move-object v6, v1

    move-object v1, v0

    move-object v0, v6

    goto :goto_1

    .line 7
    :cond_2
    :try_start_3
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "APK not provided"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_1
    if-eqz v0, :cond_3

    .line 8
    invoke-interface {v0}, Ljava/io/Closeable;->close()V

    .line 9
    :cond_3
    throw v1
.end method

.method public verifySourceStamp()Lcom/android/apksig/ApkVerifier$Result;
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0}, Lcom/android/apksig/ApkVerifier;->verifySourceStamp(Ljava/lang/String;)Lcom/android/apksig/ApkVerifier$Result;

    move-result-object v0

    return-object v0
.end method

.method public verifySourceStamp(Ljava/lang/String;)Lcom/android/apksig/ApkVerifier$Result;
    .locals 7

    const/4 v0, 0x0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/android/apksig/ApkVerifier;->mApkDataSource:Lcom/android/apksig/util/DataSource;

    if-eqz v1, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    iget-object v1, p0, Lcom/android/apksig/ApkVerifier;->mApkFile:Ljava/io/File;

    if-eqz v1, :cond_2

    .line 4
    new-instance v1, Ljava/io/RandomAccessFile;

    iget-object v2, p0, Lcom/android/apksig/ApkVerifier;->mApkFile:Ljava/io/File;

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
    invoke-direct {p0, v1, p1}, Lcom/android/apksig/ApkVerifier;->verifySourceStamp(Lcom/android/apksig/util/DataSource;Ljava/lang/String;)Lcom/android/apksig/ApkVerifier$Result;

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
    sget-object v1, Lcom/android/apksig/ApkVerifier$Result$SourceStampInfo$SourceStampVerificationStatus;->VERIFICATION_ERROR:Lcom/android/apksig/ApkVerifier$Result$SourceStampInfo$SourceStampVerificationStatus;

    sget-object v2, Lcom/android/apksig/ApkVerifier$Issue;->UNEXPECTED_EXCEPTION:Lcom/android/apksig/ApkVerifier$Issue;

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {v1, v2, p1}, Lcom/android/apksig/ApkVerifier;->createSourceStampResultWithError(Lcom/android/apksig/ApkVerifier$Result$SourceStampInfo$SourceStampVerificationStatus;Lcom/android/apksig/ApkVerifier$Issue;[Ljava/lang/Object;)Lcom/android/apksig/ApkVerifier$Result;

    move-result-object p1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    if-eqz v0, :cond_3

    .line 10
    :try_start_6
    invoke-interface {v0}, Ljava/io/Closeable;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    :catch_3
    :cond_3
    return-object p1

    :goto_2
    if-eqz v0, :cond_4

    :try_start_7
    invoke-interface {v0}, Ljava/io/Closeable;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_4

    .line 11
    :catch_4
    :cond_4
    throw p1
.end method
