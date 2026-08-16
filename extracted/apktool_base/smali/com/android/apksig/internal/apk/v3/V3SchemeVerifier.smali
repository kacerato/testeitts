.class public Lcom/android/apksig/internal/apk/v3/V3SchemeVerifier;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/apksig/internal/apk/v3/V3SchemeVerifier$Builder;
    }
.end annotation


# instance fields
.field private final mApk:Lcom/android/apksig/util/DataSource;

.field private mApkSignatureSchemeV3Block:Ljava/nio/ByteBuffer;

.field private final mBlockId:I

.field private final mContentDigestsToVerify:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/android/apksig/internal/apk/ContentDigestAlgorithm;",
            ">;"
        }
    .end annotation
.end field

.field private final mExecutor:Lcom/android/apksig/util/RunnablesExecutor;

.field private final mFullVerification:Z

.field private final mMaxSdkVersion:I

.field private final mMinSdkVersion:I

.field private final mOptionalRotationMinSdkVersion:Lcom/android/apksig/internal/compat/OptionalIntCompat;

.field private final mResult:Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$Result;

.field private final mZipSections:Lcom/android/apksig/apk/ApkUtils$ZipSections;


# direct methods
.method private constructor <init>(Lcom/android/apksig/util/RunnablesExecutor;Lcom/android/apksig/util/DataSource;Lcom/android/apksig/apk/ApkUtils$ZipSections;Ljava/util/Set;Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$Result;IIILcom/android/apksig/internal/compat/OptionalIntCompat;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/apksig/util/RunnablesExecutor;",
            "Lcom/android/apksig/util/DataSource;",
            "Lcom/android/apksig/apk/ApkUtils$ZipSections;",
            "Ljava/util/Set<",
            "Lcom/android/apksig/internal/apk/ContentDigestAlgorithm;",
            ">;",
            "Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$Result;",
            "III",
            "Lcom/android/apksig/internal/compat/OptionalIntCompat;",
            "Z)V"
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/android/apksig/internal/apk/v3/V3SchemeVerifier;->mExecutor:Lcom/android/apksig/util/RunnablesExecutor;

    .line 4
    iput-object p2, p0, Lcom/android/apksig/internal/apk/v3/V3SchemeVerifier;->mApk:Lcom/android/apksig/util/DataSource;

    .line 5
    iput-object p3, p0, Lcom/android/apksig/internal/apk/v3/V3SchemeVerifier;->mZipSections:Lcom/android/apksig/apk/ApkUtils$ZipSections;

    .line 6
    iput-object p4, p0, Lcom/android/apksig/internal/apk/v3/V3SchemeVerifier;->mContentDigestsToVerify:Ljava/util/Set;

    .line 7
    iput-object p5, p0, Lcom/android/apksig/internal/apk/v3/V3SchemeVerifier;->mResult:Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$Result;

    .line 8
    iput p6, p0, Lcom/android/apksig/internal/apk/v3/V3SchemeVerifier;->mMinSdkVersion:I

    .line 9
    iput p7, p0, Lcom/android/apksig/internal/apk/v3/V3SchemeVerifier;->mMaxSdkVersion:I

    .line 10
    iput p8, p0, Lcom/android/apksig/internal/apk/v3/V3SchemeVerifier;->mBlockId:I

    .line 11
    iput-object p9, p0, Lcom/android/apksig/internal/apk/v3/V3SchemeVerifier;->mOptionalRotationMinSdkVersion:Lcom/android/apksig/internal/compat/OptionalIntCompat;

    .line 12
    iput-boolean p10, p0, Lcom/android/apksig/internal/apk/v3/V3SchemeVerifier;->mFullVerification:Z

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/apksig/util/RunnablesExecutor;Lcom/android/apksig/util/DataSource;Lcom/android/apksig/apk/ApkUtils$ZipSections;Ljava/util/Set;Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$Result;IIILcom/android/apksig/internal/compat/OptionalIntCompat;ZLcom/android/apksig/internal/apk/v3/V3SchemeVerifier$1;)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p10}, Lcom/android/apksig/internal/apk/v3/V3SchemeVerifier;-><init>(Lcom/android/apksig/util/RunnablesExecutor;Lcom/android/apksig/util/DataSource;Lcom/android/apksig/apk/ApkUtils$ZipSections;Ljava/util/Set;Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$Result;IIILcom/android/apksig/internal/compat/OptionalIntCompat;Z)V

    return-void
.end method

.method public static synthetic access$102(Lcom/android/apksig/internal/apk/v3/V3SchemeVerifier;Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;
    .locals 0

    iput-object p1, p0, Lcom/android/apksig/internal/apk/v3/V3SchemeVerifier;->mApkSignatureSchemeV3Block:Ljava/nio/ByteBuffer;

    return-object p1
.end method

.method private parseSigner(Ljava/nio/ByteBuffer;Ljava/security/cert/CertificateFactory;Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$Result$SignerInfo;)V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/apksig/apk/ApkFormatException;,
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    invoke-static {p1}, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils;->getLengthPrefixedSlice(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/Buffer;->remaining()I

    move-result v1

    new-array v1, v1, [B

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    iput-object v1, p3, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$Result$SignerInfo;->signedData:[B

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v1

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v2

    iput v1, p3, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$Result$SignerInfo;->minSdkVersion:I

    iput v2, p3, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$Result$SignerInfo;->maxSdkVersion:I

    if-ltz v1, :cond_0

    if-le v1, v2, :cond_1

    :cond_0
    sget-object v3, Lcom/android/apksig/ApkVerifier$Issue;->V3_SIG_INVALID_SDK_VERSIONS:Lcom/android/apksig/ApkVerifier$Issue;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    filled-new-array {v4, v5}, [Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {p3, v3, v4}, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$Result$SignerInfo;->addError(Lcom/android/apksig/ApkVerifier$Issue;[Ljava/lang/Object;)V

    :cond_1
    invoke-static {p1}, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils;->getLengthPrefixedSlice(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-static {p1}, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils;->readLengthPrefixedByteArray(Ljava/nio/ByteBuffer;)[B

    move-result-object p1

    new-instance v4, Ljava/util/ArrayList;

    const/4 v5, 0x1

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v6, 0x0

    move v7, v6

    :goto_0
    invoke-virtual {v3}, Ljava/nio/Buffer;->hasRemaining()Z

    move-result v8

    if-eqz v8, :cond_3

    add-int/2addr v7, v5

    :try_start_0
    invoke-static {v3}, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils;->getLengthPrefixedSlice(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v9

    invoke-static {v8}, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils;->readLengthPrefixedByteArray(Ljava/nio/ByteBuffer;)[B

    move-result-object v8

    iget-object v10, p3, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$Result$SignerInfo;->signatures:Ljava/util/List;

    new-instance v11, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$Result$SignerInfo$Signature;

    invoke-direct {v11, v9, v8}, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$Result$SignerInfo$Signature;-><init>(I[B)V

    invoke-interface {v10, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {v9}, Lcom/android/apksig/internal/apk/SignatureAlgorithm;->findById(I)Lcom/android/apksig/internal/apk/SignatureAlgorithm;

    move-result-object v10

    if-nez v10, :cond_2

    sget-object v8, Lcom/android/apksig/ApkVerifier$Issue;->V3_SIG_UNKNOWN_SIG_ALGORITHM:Lcom/android/apksig/ApkVerifier$Issue;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    filled-new-array {v9}, [Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {p3, v8, v9}, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$Result$SignerInfo;->addWarning(Lcom/android/apksig/ApkVerifier$Issue;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    new-instance v9, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$SupportedSignature;

    invoke-direct {v9, v10, v8}, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$SupportedSignature;-><init>(Lcom/android/apksig/internal/apk/SignatureAlgorithm;[B)V

    invoke-interface {v4, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lcom/android/apksig/apk/ApkFormatException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/nio/BufferUnderflowException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    sget-object p1, Lcom/android/apksig/ApkVerifier$Issue;->V3_SIG_MALFORMED_SIGNATURE:Lcom/android/apksig/ApkVerifier$Issue;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p3, p1, p2}, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$Result$SignerInfo;->addError(Lcom/android/apksig/ApkVerifier$Issue;[Ljava/lang/Object;)V

    return-void

    :cond_3
    iget-object v3, p3, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$Result$SignerInfo;->signatures:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_4

    sget-object p1, Lcom/android/apksig/ApkVerifier$Issue;->V3_SIG_NO_SIGNATURES:Lcom/android/apksig/ApkVerifier$Issue;

    new-array p2, v6, [Ljava/lang/Object;

    invoke-virtual {p3, p1, p2}, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$Result$SignerInfo;->addError(Lcom/android/apksig/ApkVerifier$Issue;[Ljava/lang/Object;)V

    return-void

    :cond_4
    :try_start_1
    iget v3, p3, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$Result$SignerInfo;->minSdkVersion:I

    iget v7, p3, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$Result$SignerInfo;->maxSdkVersion:I

    invoke-static {v4, v3, v7}, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils;->getSignaturesToVerify(Ljava/util/List;II)Ljava/util/List;

    move-result-object v3
    :try_end_1
    .catch Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$NoSupportedSignaturesException; {:try_start_1 .. :try_end_1} :catch_c

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$SupportedSignature;

    iget-object v7, v4, Lcom/android/apksig/internal/apk/ApkSupportedSignature;->algorithm:Lcom/android/apksig/internal/apk/SignatureAlgorithm;

    invoke-virtual {v7}, Lcom/android/apksig/internal/apk/SignatureAlgorithm;->getJcaSignatureAlgorithmAndParams()Lcom/android/apksig/internal/util/Pair;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/apksig/internal/util/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v7}, Lcom/android/apksig/internal/apk/SignatureAlgorithm;->getJcaSignatureAlgorithmAndParams()Lcom/android/apksig/internal/util/Pair;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/apksig/internal/util/Pair;->getSecond()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/security/spec/AlgorithmParameterSpec;

    invoke-virtual {v7}, Lcom/android/apksig/internal/apk/SignatureAlgorithm;->getJcaKeyAlgorithm()Ljava/lang/String;

    move-result-object v10

    :try_start_2
    invoke-static {v10}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v10

    new-instance v11, Ljava/security/spec/X509EncodedKeySpec;

    invoke-direct {v11, p1}, Ljava/security/spec/X509EncodedKeySpec;-><init>([B)V

    invoke-virtual {v10, v11}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    move-result-object v10
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_4

    :try_start_3
    invoke-static {v8}, Ljava/security/Signature;->getInstance(Ljava/lang/String;)Ljava/security/Signature;

    move-result-object v8

    invoke-virtual {v8, v10}, Ljava/security/Signature;->initVerify(Ljava/security/PublicKey;)V

    if-eqz v9, :cond_5

    invoke-virtual {v8, v9}, Ljava/security/Signature;->setParameter(Ljava/security/spec/AlgorithmParameterSpec;)V

    goto :goto_2

    :catch_1
    move-exception p1

    goto :goto_3

    :catch_2
    move-exception p1

    goto :goto_3

    :catch_3
    move-exception p1

    goto :goto_3

    :cond_5
    :goto_2
    invoke-virtual {v0, v6}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    invoke-virtual {v8, v0}, Ljava/security/Signature;->update(Ljava/nio/ByteBuffer;)V

    iget-object v4, v4, Lcom/android/apksig/internal/apk/ApkSupportedSignature;->signature:[B

    invoke-virtual {v8, v4}, Ljava/security/Signature;->verify([B)Z

    move-result v8

    if-nez v8, :cond_6

    sget-object p1, Lcom/android/apksig/ApkVerifier$Issue;->V3_SIG_DID_NOT_VERIFY:Lcom/android/apksig/ApkVerifier$Issue;

    filled-new-array {v7}, [Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p3, p1, p2}, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$Result$SignerInfo;->addError(Lcom/android/apksig/ApkVerifier$Issue;[Ljava/lang/Object;)V

    return-void

    :cond_6
    iget-object v8, p3, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$Result$SignerInfo;->verifiedSignatures:Ljava/util/Map;

    invoke-interface {v8, v7, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v4, p0, Lcom/android/apksig/internal/apk/v3/V3SchemeVerifier;->mContentDigestsToVerify:Ljava/util/Set;

    invoke-virtual {v7}, Lcom/android/apksig/internal/apk/SignatureAlgorithm;->getContentDigestAlgorithm()Lcom/android/apksig/internal/apk/ContentDigestAlgorithm;

    move-result-object v8

    invoke-interface {v4, v8}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catch Ljava/security/InvalidKeyException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/security/SignatureException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_1

    :goto_3
    sget-object p2, Lcom/android/apksig/ApkVerifier$Issue;->V3_SIG_VERIFY_EXCEPTION:Lcom/android/apksig/ApkVerifier$Issue;

    filled-new-array {v7, p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p3, p2, p1}, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$Result$SignerInfo;->addError(Lcom/android/apksig/ApkVerifier$Issue;[Ljava/lang/Object;)V

    return-void

    :catch_4
    move-exception p1

    sget-object p2, Lcom/android/apksig/ApkVerifier$Issue;->V3_SIG_MALFORMED_PUBLIC_KEY:Lcom/android/apksig/ApkVerifier$Issue;

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p3, p2, p1}, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$Result$SignerInfo;->addError(Lcom/android/apksig/ApkVerifier$Issue;[Ljava/lang/Object;)V

    return-void

    :cond_7
    invoke-virtual {v0, v6}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    invoke-static {v0}, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils;->getLengthPrefixedSlice(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-static {v0}, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils;->getLengthPrefixedSlice(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    move-result-object v4

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v7

    if-eq v7, v1, :cond_8

    sget-object v8, Lcom/android/apksig/ApkVerifier$Issue;->V3_MIN_SDK_VERSION_MISMATCH_BETWEEN_SIGNER_AND_SIGNED_DATA_RECORD:Lcom/android/apksig/ApkVerifier$Issue;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    filled-new-array {v1, v7}, [Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p3, v8, v1}, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$Result$SignerInfo;->addError(Lcom/android/apksig/ApkVerifier$Issue;[Ljava/lang/Object;)V

    :cond_8
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v1

    if-eq v1, v2, :cond_9

    sget-object v7, Lcom/android/apksig/ApkVerifier$Issue;->V3_MAX_SDK_VERSION_MISMATCH_BETWEEN_SIGNER_AND_SIGNED_DATA_RECORD:Lcom/android/apksig/ApkVerifier$Issue;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v2, v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p3, v7, v1}, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$Result$SignerInfo;->addError(Lcom/android/apksig/ApkVerifier$Issue;[Ljava/lang/Object;)V

    :cond_9
    invoke-static {v0}, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils;->getLengthPrefixedSlice(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    move-result-object v0

    const/4 v1, -0x1

    :goto_4
    invoke-virtual {v4}, Ljava/nio/Buffer;->hasRemaining()Z

    move-result v2

    if-eqz v2, :cond_a

    add-int/lit8 v2, v1, 0x1

    invoke-static {v4}, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils;->readLengthPrefixedByteArray(Ljava/nio/ByteBuffer;)[B

    move-result-object v7

    :try_start_4
    invoke-static {v7, p2}, Lcom/android/apksig/internal/util/X509CertificateUtils;->generateCertificate([BLjava/security/cert/CertificateFactory;)Ljava/security/cert/X509Certificate;

    move-result-object v1
    :try_end_4
    .catch Ljava/security/cert/CertificateException; {:try_start_4 .. :try_end_4} :catch_5

    new-instance v8, Lcom/android/apksig/internal/util/GuaranteedEncodedFormX509Certificate;

    invoke-direct {v8, v1, v7}, Lcom/android/apksig/internal/util/GuaranteedEncodedFormX509Certificate;-><init>(Ljava/security/cert/X509Certificate;[B)V

    iget-object v1, p3, Lcom/android/apksig/internal/apk/ApkSignerInfo;->certs:Ljava/util/List;

    invoke-interface {v1, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v1, v2

    goto :goto_4

    :catch_5
    move-exception p1

    sget-object p2, Lcom/android/apksig/ApkVerifier$Issue;->V3_SIG_MALFORMED_CERTIFICATE:Lcom/android/apksig/ApkVerifier$Issue;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    add-int/lit8 v1, v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v0, v1, p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p3, p2, p1}, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$Result$SignerInfo;->addError(Lcom/android/apksig/ApkVerifier$Issue;[Ljava/lang/Object;)V

    return-void

    :cond_a
    iget-object p2, p3, Lcom/android/apksig/internal/apk/ApkSignerInfo;->certs:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_b

    sget-object p1, Lcom/android/apksig/ApkVerifier$Issue;->V3_SIG_NO_CERTIFICATES:Lcom/android/apksig/ApkVerifier$Issue;

    new-array p2, v6, [Ljava/lang/Object;

    invoke-virtual {p3, p1, p2}, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$Result$SignerInfo;->addError(Lcom/android/apksig/ApkVerifier$Issue;[Ljava/lang/Object;)V

    return-void

    :cond_b
    iget-object p2, p3, Lcom/android/apksig/internal/apk/ApkSignerInfo;->certs:Ljava/util/List;

    invoke-interface {p2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/security/cert/X509Certificate;

    :try_start_5
    invoke-virtual {p2}, Ljava/security/cert/Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v1

    invoke-static {v1}, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils;->encodePublicKey(Ljava/security/PublicKey;)[B

    move-result-object p2
    :try_end_5
    .catch Ljava/security/InvalidKeyException; {:try_start_5 .. :try_end_5} :catch_6

    goto :goto_5

    :catch_6
    move-exception v1

    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Caught an exception encoding the public key: "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    invoke-virtual {p2}, Ljava/security/cert/Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object p2

    invoke-interface {p2}, Ljava/security/Key;->getEncoded()[B

    move-result-object p2

    :goto_5
    invoke-static {p1, p2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    if-nez v1, :cond_c

    sget-object v0, Lcom/android/apksig/ApkVerifier$Issue;->V3_SIG_PUBLIC_KEY_MISMATCH_BETWEEN_CERTIFICATE_AND_SIGNATURES_RECORD:Lcom/android/apksig/ApkVerifier$Issue;

    invoke-static {p2}, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils;->toHex([B)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1}, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils;->toHex([B)Ljava/lang/String;

    move-result-object p1

    filled-new-array {p2, p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p3, v0, p1}, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$Result$SignerInfo;->addError(Lcom/android/apksig/ApkVerifier$Issue;[Ljava/lang/Object;)V

    return-void

    :cond_c
    move p1, v6

    :goto_6
    invoke-virtual {v3}, Ljava/nio/Buffer;->hasRemaining()Z

    move-result p2

    if-eqz p2, :cond_d

    add-int/2addr p1, v5

    :try_start_6
    invoke-static {v3}, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils;->getLengthPrefixedSlice(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    move-result-object p2

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v1

    invoke-static {p2}, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils;->readLengthPrefixedByteArray(Ljava/nio/ByteBuffer;)[B

    move-result-object p2

    iget-object v2, p3, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$Result$SignerInfo;->contentDigests:Ljava/util/List;

    new-instance v4, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$Result$SignerInfo$ContentDigest;

    invoke-direct {v4, v1, p2}, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$Result$SignerInfo$ContentDigest;-><init>(I[B)V

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_6
    .catch Lcom/android/apksig/apk/ApkFormatException; {:try_start_6 .. :try_end_6} :catch_7
    .catch Ljava/nio/BufferUnderflowException; {:try_start_6 .. :try_end_6} :catch_7

    goto :goto_6

    :catch_7
    sget-object p2, Lcom/android/apksig/ApkVerifier$Issue;->V3_SIG_MALFORMED_DIGEST:Lcom/android/apksig/ApkVerifier$Issue;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p3, p2, p1}, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$Result$SignerInfo;->addError(Lcom/android/apksig/ApkVerifier$Issue;[Ljava/lang/Object;)V

    return-void

    :cond_d
    new-instance p1, Ljava/util/ArrayList;

    iget-object p2, p3, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$Result$SignerInfo;->signatures:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    invoke-direct {p1, p2}, Ljava/util/ArrayList;-><init>(I)V

    iget-object p2, p3, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$Result$SignerInfo;->signatures:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_7
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_e

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$Result$SignerInfo$Signature;

    invoke-virtual {v1}, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$Result$SignerInfo$Signature;->getAlgorithmId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_7

    :cond_e
    new-instance p2, Ljava/util/ArrayList;

    iget-object v1, p3, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$Result$SignerInfo;->contentDigests:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {p2, v1}, Ljava/util/ArrayList;-><init>(I)V

    iget-object v1, p3, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$Result$SignerInfo;->contentDigests:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_8
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$Result$SignerInfo$ContentDigest;

    invoke-virtual {v2}, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$Result$SignerInfo$ContentDigest;->getSignatureAlgorithmId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {p2, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_8

    :cond_f
    invoke-interface {p1, p2}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_10

    sget-object v0, Lcom/android/apksig/ApkVerifier$Issue;->V3_SIG_SIG_ALG_MISMATCH_BETWEEN_SIGNATURES_AND_DIGESTS_RECORDS:Lcom/android/apksig/ApkVerifier$Issue;

    filled-new-array {p1, p2}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p3, v0, p1}, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$Result$SignerInfo;->addError(Lcom/android/apksig/ApkVerifier$Issue;[Ljava/lang/Object;)V

    return-void

    :cond_10
    move p1, v6

    move p2, p1

    :cond_11
    :goto_9
    invoke-virtual {v0}, Ljava/nio/Buffer;->hasRemaining()Z

    move-result v1

    if-eqz v1, :cond_17

    add-int/2addr p1, v5

    :try_start_7
    invoke-static {v0}, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils;->getLengthPrefixedSlice(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v2

    invoke-static {v1}, Lcom/android/apksig/internal/util/ByteBufferUtils;->toByteArray(Ljava/nio/ByteBuffer;)[B

    move-result-object v1

    iget-object v3, p3, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$Result$SignerInfo;->additionalAttributes:Ljava/util/List;

    new-instance v4, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$Result$SignerInfo$AdditionalAttribute;

    invoke-direct {v4, v2, v1}, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$Result$SignerInfo$AdditionalAttribute;-><init>(I[B)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_7
    .catch Lcom/android/apksig/apk/ApkFormatException; {:try_start_7 .. :try_end_7} :catch_b
    .catch Ljava/nio/BufferUnderflowException; {:try_start_7 .. :try_end_7} :catch_b

    const v3, 0x3ba06f8c

    if-ne v2, v3, :cond_12

    :try_start_8
    invoke-static {v1}, Lcom/android/apksig/SigningCertificateLineage;->readFromV3AttributeValue([B)Lcom/android/apksig/SigningCertificateLineage;

    move-result-object v1

    iput-object v1, p3, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$Result$SignerInfo;->signingCertificateLineage:Lcom/android/apksig/SigningCertificateLineage;

    iget-object v2, p3, Lcom/android/apksig/internal/apk/ApkSignerInfo;->certs:Ljava/util/List;

    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/security/cert/X509Certificate;

    invoke-virtual {v1, v2}, Lcom/android/apksig/SigningCertificateLineage;->getSubLineage(Ljava/security/cert/X509Certificate;)Lcom/android/apksig/SigningCertificateLineage;

    move-result-object v1

    iget-object v2, p3, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$Result$SignerInfo;->signingCertificateLineage:Lcom/android/apksig/SigningCertificateLineage;

    invoke-virtual {v2}, Lcom/android/apksig/SigningCertificateLineage;->size()I

    move-result v2

    invoke-virtual {v1}, Lcom/android/apksig/SigningCertificateLineage;->size()I

    move-result v1

    if-eq v2, v1, :cond_11

    sget-object v1, Lcom/android/apksig/ApkVerifier$Issue;->V3_SIG_POR_CERT_MISMATCH:Lcom/android/apksig/ApkVerifier$Issue;

    new-array v2, v6, [Ljava/lang/Object;

    invoke-virtual {p3, v1, v2}, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$Result$SignerInfo;->addError(Lcom/android/apksig/ApkVerifier$Issue;[Ljava/lang/Object;)V
    :try_end_8
    .catch Ljava/lang/SecurityException; {:try_start_8 .. :try_end_8} :catch_a
    .catch Ljava/lang/IllegalArgumentException; {:try_start_8 .. :try_end_8} :catch_9
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_8

    goto :goto_9

    :catch_8
    :try_start_9
    sget-object v1, Lcom/android/apksig/ApkVerifier$Issue;->V3_SIG_MALFORMED_LINEAGE:Lcom/android/apksig/ApkVerifier$Issue;

    new-array v2, v6, [Ljava/lang/Object;

    invoke-virtual {p3, v1, v2}, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$Result$SignerInfo;->addError(Lcom/android/apksig/ApkVerifier$Issue;[Ljava/lang/Object;)V

    goto :goto_9

    :catch_9
    sget-object v1, Lcom/android/apksig/ApkVerifier$Issue;->V3_SIG_POR_CERT_MISMATCH:Lcom/android/apksig/ApkVerifier$Issue;

    new-array v2, v6, [Ljava/lang/Object;

    invoke-virtual {p3, v1, v2}, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$Result$SignerInfo;->addError(Lcom/android/apksig/ApkVerifier$Issue;[Ljava/lang/Object;)V

    goto :goto_9

    :catch_a
    sget-object v1, Lcom/android/apksig/ApkVerifier$Issue;->V3_SIG_POR_DID_NOT_VERIFY:Lcom/android/apksig/ApkVerifier$Issue;

    new-array v2, v6, [Ljava/lang/Object;

    invoke-virtual {p3, v1, v2}, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$Result$SignerInfo;->addError(Lcom/android/apksig/ApkVerifier$Issue;[Ljava/lang/Object;)V

    goto :goto_9

    :cond_12
    const v3, 0x559f8b02

    if-ne v2, v3, :cond_15

    iget p2, p0, Lcom/android/apksig/internal/apk/v3/V3SchemeVerifier;->mMaxSdkVersion:I

    const/16 v2, 0x21

    if-lt p2, v2, :cond_14

    iget-boolean p2, p0, Lcom/android/apksig/internal/apk/v3/V3SchemeVerifier;->mFullVerification:Z

    if-eqz p2, :cond_14

    invoke-static {v1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p2

    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {p2, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object p2

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->getInt()I

    move-result p2

    iget-object v1, p0, Lcom/android/apksig/internal/apk/v3/V3SchemeVerifier;->mOptionalRotationMinSdkVersion:Lcom/android/apksig/internal/compat/OptionalIntCompat;

    invoke-virtual {v1}, Lcom/android/apksig/internal/compat/OptionalIntCompat;->isPresent()Z

    move-result v1

    if-eqz v1, :cond_13

    iget-object v1, p0, Lcom/android/apksig/internal/apk/v3/V3SchemeVerifier;->mOptionalRotationMinSdkVersion:Lcom/android/apksig/internal/compat/OptionalIntCompat;

    invoke-virtual {v1}, Lcom/android/apksig/internal/compat/OptionalIntCompat;->getAsInt()I

    move-result v1

    if-eq p2, v1, :cond_14

    sget-object v2, Lcom/android/apksig/ApkVerifier$Issue;->V31_ROTATION_MIN_SDK_MISMATCH:Lcom/android/apksig/ApkVerifier$Issue;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {p2, v1}, [Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p3, v2, p2}, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$Result$SignerInfo;->addError(Lcom/android/apksig/ApkVerifier$Issue;[Ljava/lang/Object;)V

    goto :goto_a

    :cond_13
    sget-object v1, Lcom/android/apksig/ApkVerifier$Issue;->V31_BLOCK_MISSING:Lcom/android/apksig/ApkVerifier$Issue;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p3, v1, p2}, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$Result$SignerInfo;->addError(Lcom/android/apksig/ApkVerifier$Issue;[Ljava/lang/Object;)V

    :cond_14
    :goto_a
    move p2, v5

    goto/16 :goto_9

    :cond_15
    const v1, -0x3d594c46

    if-ne v2, v1, :cond_16

    iget v1, p0, Lcom/android/apksig/internal/apk/v3/V3SchemeVerifier;->mBlockId:I

    const v2, 0x1b93ad61

    if-eq v1, v2, :cond_11

    sget-object v1, Lcom/android/apksig/ApkVerifier$Issue;->V31_ROTATION_TARGETS_DEV_RELEASE_ATTR_ON_V3_SIGNER:Lcom/android/apksig/ApkVerifier$Issue;

    new-array v2, v6, [Ljava/lang/Object;

    invoke-virtual {p3, v1, v2}, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$Result$SignerInfo;->addWarning(Lcom/android/apksig/ApkVerifier$Issue;[Ljava/lang/Object;)V

    goto/16 :goto_9

    :cond_16
    sget-object v1, Lcom/android/apksig/ApkVerifier$Issue;->V3_SIG_UNKNOWN_ADDITIONAL_ATTRIBUTE:Lcom/android/apksig/ApkVerifier$Issue;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p3, v1, v2}, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$Result$SignerInfo;->addWarning(Lcom/android/apksig/ApkVerifier$Issue;[Ljava/lang/Object;)V
    :try_end_9
    .catch Lcom/android/apksig/apk/ApkFormatException; {:try_start_9 .. :try_end_9} :catch_b
    .catch Ljava/nio/BufferUnderflowException; {:try_start_9 .. :try_end_9} :catch_b

    goto/16 :goto_9

    :catch_b
    sget-object p2, Lcom/android/apksig/ApkVerifier$Issue;->V3_SIG_MALFORMED_ADDITIONAL_ATTRIBUTE:Lcom/android/apksig/ApkVerifier$Issue;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p3, p2, p1}, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$Result$SignerInfo;->addError(Lcom/android/apksig/ApkVerifier$Issue;[Ljava/lang/Object;)V

    return-void

    :cond_17
    iget-boolean p1, p0, Lcom/android/apksig/internal/apk/v3/V3SchemeVerifier;->mFullVerification:Z

    if-eqz p1, :cond_18

    iget-object p1, p0, Lcom/android/apksig/internal/apk/v3/V3SchemeVerifier;->mOptionalRotationMinSdkVersion:Lcom/android/apksig/internal/compat/OptionalIntCompat;

    invoke-virtual {p1}, Lcom/android/apksig/internal/compat/OptionalIntCompat;->isPresent()Z

    move-result p1

    if-eqz p1, :cond_18

    if-nez p2, :cond_18

    sget-object p1, Lcom/android/apksig/ApkVerifier$Issue;->V31_ROTATION_MIN_SDK_ATTR_MISSING:Lcom/android/apksig/ApkVerifier$Issue;

    iget-object p2, p0, Lcom/android/apksig/internal/apk/v3/V3SchemeVerifier;->mOptionalRotationMinSdkVersion:Lcom/android/apksig/internal/compat/OptionalIntCompat;

    invoke-virtual {p2}, Lcom/android/apksig/internal/compat/OptionalIntCompat;->getAsInt()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p3, p1, p2}, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$Result$SignerInfo;->addWarning(Lcom/android/apksig/ApkVerifier$Issue;[Ljava/lang/Object;)V

    :cond_18
    return-void

    :catch_c
    sget-object p1, Lcom/android/apksig/ApkVerifier$Issue;->V3_SIG_NO_SUPPORTED_SIGNATURES:Lcom/android/apksig/ApkVerifier$Issue;

    new-array p2, v6, [Ljava/lang/Object;

    invoke-virtual {p3, p1, p2}, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$Result$SignerInfo;->addError(Lcom/android/apksig/ApkVerifier$Issue;[Ljava/lang/Object;)V

    return-void
.end method

.method public static parseSigners(Ljava/nio/ByteBuffer;Ljava/util/Set;Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$Result;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/nio/ByteBuffer;",
            "Ljava/util/Set<",
            "Lcom/android/apksig/internal/apk/ContentDigestAlgorithm;",
            ">;",
            "Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$Result;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .line 1
    :try_start_0
    new-instance v0, Lcom/android/apksig/internal/apk/v3/V3SchemeVerifier$Builder;

    invoke-direct {v0, p0}, Lcom/android/apksig/internal/apk/v3/V3SchemeVerifier$Builder;-><init>(Ljava/nio/ByteBuffer;)V

    .line 2
    invoke-virtual {v0, p2}, Lcom/android/apksig/internal/apk/v3/V3SchemeVerifier$Builder;->setResult(Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$Result;)Lcom/android/apksig/internal/apk/v3/V3SchemeVerifier$Builder;

    move-result-object p0

    .line 3
    invoke-virtual {p0, p1}, Lcom/android/apksig/internal/apk/v3/V3SchemeVerifier$Builder;->setContentDigestsToVerify(Ljava/util/Set;)Lcom/android/apksig/internal/apk/v3/V3SchemeVerifier$Builder;

    move-result-object p0

    const/4 p1, 0x0

    .line 4
    invoke-virtual {p0, p1}, Lcom/android/apksig/internal/apk/v3/V3SchemeVerifier$Builder;->setFullVerification(Z)Lcom/android/apksig/internal/apk/v3/V3SchemeVerifier$Builder;

    move-result-object p0

    .line 5
    invoke-virtual {p0}, Lcom/android/apksig/internal/apk/v3/V3SchemeVerifier$Builder;->build()Lcom/android/apksig/internal/apk/v3/V3SchemeVerifier;

    move-result-object p0

    .line 6
    invoke-virtual {p0}, Lcom/android/apksig/internal/apk/v3/V3SchemeVerifier;->parseSigners()Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$Result;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$SignatureNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    goto :goto_0

    :catch_1
    move-exception p0

    .line 7
    :goto_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "An exception was encountered when attempting to parse the signers from the provided APK Signature Scheme v3 block"

    invoke-direct {p1, p2, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method public static verify(Lcom/android/apksig/util/RunnablesExecutor;Lcom/android/apksig/util/DataSource;Lcom/android/apksig/apk/ApkUtils$ZipSections;II)Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$Result;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/NoSuchAlgorithmException;,
            Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$SignatureNotFoundException;
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/android/apksig/internal/apk/v3/V3SchemeVerifier$Builder;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/android/apksig/internal/apk/v3/V3SchemeVerifier$Builder;-><init>(Lcom/android/apksig/util/DataSource;Lcom/android/apksig/apk/ApkUtils$ZipSections;II)V

    .line 2
    invoke-virtual {v0, p0}, Lcom/android/apksig/internal/apk/v3/V3SchemeVerifier$Builder;->setRunnablesExecutor(Lcom/android/apksig/util/RunnablesExecutor;)Lcom/android/apksig/internal/apk/v3/V3SchemeVerifier$Builder;

    move-result-object p0

    const p1, -0xfac9740

    .line 3
    invoke-virtual {p0, p1}, Lcom/android/apksig/internal/apk/v3/V3SchemeVerifier$Builder;->setBlockId(I)Lcom/android/apksig/internal/apk/v3/V3SchemeVerifier$Builder;

    move-result-object p0

    .line 4
    invoke-virtual {p0}, Lcom/android/apksig/internal/apk/v3/V3SchemeVerifier$Builder;->build()Lcom/android/apksig/internal/apk/v3/V3SchemeVerifier;

    move-result-object p0

    .line 5
    invoke-virtual {p0}, Lcom/android/apksig/internal/apk/v3/V3SchemeVerifier;->verify()Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$Result;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public parseSigners()Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$Result;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/NoSuchAlgorithmException;,
            Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$SignatureNotFoundException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 8
    :try_start_0
    iget-object v1, p0, Lcom/android/apksig/internal/apk/v3/V3SchemeVerifier;->mApkSignatureSchemeV3Block:Ljava/nio/ByteBuffer;

    if-nez v1, :cond_0

    .line 9
    iget-object v1, p0, Lcom/android/apksig/internal/apk/v3/V3SchemeVerifier;->mApk:Lcom/android/apksig/util/DataSource;

    iget-object v2, p0, Lcom/android/apksig/internal/apk/v3/V3SchemeVerifier;->mZipSections:Lcom/android/apksig/apk/ApkUtils$ZipSections;

    iget v3, p0, Lcom/android/apksig/internal/apk/v3/V3SchemeVerifier;->mBlockId:I

    iget-object v4, p0, Lcom/android/apksig/internal/apk/v3/V3SchemeVerifier;->mResult:Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$Result;

    .line 10
    invoke-static {v1, v2, v3, v4}, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils;->findSignature(Lcom/android/apksig/util/DataSource;Lcom/android/apksig/apk/ApkUtils$ZipSections;ILcom/android/apksig/internal/apk/ApkSigningBlockUtils$Result;)Lcom/android/apksig/internal/apk/SignatureInfo;

    move-result-object v1

    .line 11
    iget-object v1, v1, Lcom/android/apksig/internal/apk/SignatureInfo;->signatureBlock:Ljava/nio/ByteBuffer;

    iput-object v1, p0, Lcom/android/apksig/internal/apk/v3/V3SchemeVerifier;->mApkSignatureSchemeV3Block:Ljava/nio/ByteBuffer;

    .line 12
    :cond_0
    iget-object v1, p0, Lcom/android/apksig/internal/apk/v3/V3SchemeVerifier;->mApkSignatureSchemeV3Block:Ljava/nio/ByteBuffer;

    invoke-static {v1}, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils;->getLengthPrefixedSlice(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    move-result-object v1
    :try_end_0
    .catch Lcom/android/apksig/apk/ApkFormatException; {:try_start_0 .. :try_end_0} :catch_2

    .line 13
    invoke-virtual {v1}, Ljava/nio/Buffer;->hasRemaining()Z

    move-result v2

    if-nez v2, :cond_1

    .line 14
    iget-object v1, p0, Lcom/android/apksig/internal/apk/v3/V3SchemeVerifier;->mResult:Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$Result;

    sget-object v2, Lcom/android/apksig/ApkVerifier$Issue;->V3_SIG_NO_SIGNERS:Lcom/android/apksig/ApkVerifier$Issue;

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v0}, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$Result;->addError(Lcom/android/apksig/ApkVerifier$Issue;[Ljava/lang/Object;)V

    .line 15
    iget-object v0, p0, Lcom/android/apksig/internal/apk/v3/V3SchemeVerifier;->mResult:Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$Result;

    return-object v0

    .line 16
    :cond_1
    :try_start_1
    const-string v2, "X.509"

    invoke-static {v2}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v2
    :try_end_1
    .catch Ljava/security/cert/CertificateException; {:try_start_1 .. :try_end_1} :catch_1

    move v3, v0

    .line 17
    :goto_0
    invoke-virtual {v1}, Ljava/nio/Buffer;->hasRemaining()Z

    move-result v4

    if-eqz v4, :cond_2

    add-int/lit8 v4, v3, 0x1

    .line 18
    new-instance v5, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$Result$SignerInfo;

    invoke-direct {v5}, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$Result$SignerInfo;-><init>()V

    .line 19
    iput v3, v5, Lcom/android/apksig/internal/apk/ApkSignerInfo;->index:I

    .line 20
    iget-object v3, p0, Lcom/android/apksig/internal/apk/v3/V3SchemeVerifier;->mResult:Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$Result;

    iget-object v3, v3, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$Result;->signers:Ljava/util/List;

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 21
    :try_start_2
    invoke-static {v1}, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils;->getLengthPrefixedSlice(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    move-result-object v3

    .line 22
    invoke-direct {p0, v3, v2, v5}, Lcom/android/apksig/internal/apk/v3/V3SchemeVerifier;->parseSigner(Ljava/nio/ByteBuffer;Ljava/security/cert/CertificateFactory;Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$Result$SignerInfo;)V
    :try_end_2
    .catch Lcom/android/apksig/apk/ApkFormatException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/nio/BufferUnderflowException; {:try_start_2 .. :try_end_2} :catch_0

    move v3, v4

    goto :goto_0

    .line 23
    :catch_0
    sget-object v1, Lcom/android/apksig/ApkVerifier$Issue;->V3_SIG_MALFORMED_SIGNER:Lcom/android/apksig/ApkVerifier$Issue;

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {v5, v1, v0}, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$Result$SignerInfo;->addError(Lcom/android/apksig/ApkVerifier$Issue;[Ljava/lang/Object;)V

    .line 24
    iget-object v0, p0, Lcom/android/apksig/internal/apk/v3/V3SchemeVerifier;->mResult:Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$Result;

    return-object v0

    .line 25
    :cond_2
    iget-object v0, p0, Lcom/android/apksig/internal/apk/v3/V3SchemeVerifier;->mResult:Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$Result;

    return-object v0

    :catch_1
    move-exception v0

    .line 26
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Failed to obtain X.509 CertificateFactory"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 27
    :catch_2
    iget-object v1, p0, Lcom/android/apksig/internal/apk/v3/V3SchemeVerifier;->mResult:Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$Result;

    sget-object v2, Lcom/android/apksig/ApkVerifier$Issue;->V3_SIG_MALFORMED_SIGNERS:Lcom/android/apksig/ApkVerifier$Issue;

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v0}, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$Result;->addError(Lcom/android/apksig/ApkVerifier$Issue;[Ljava/lang/Object;)V

    .line 28
    iget-object v0, p0, Lcom/android/apksig/internal/apk/v3/V3SchemeVerifier;->mResult:Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$Result;

    return-object v0
.end method

.method public verify()Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$Result;
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/NoSuchAlgorithmException;,
            Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$SignatureNotFoundException;
        }
    .end annotation

    .line 6
    iget-object v0, p0, Lcom/android/apksig/internal/apk/v3/V3SchemeVerifier;->mApk:Lcom/android/apksig/util/DataSource;

    if-eqz v0, :cond_b

    iget-object v1, p0, Lcom/android/apksig/internal/apk/v3/V3SchemeVerifier;->mZipSections:Lcom/android/apksig/apk/ApkUtils$ZipSections;

    if-eqz v1, :cond_b

    .line 7
    iget v2, p0, Lcom/android/apksig/internal/apk/v3/V3SchemeVerifier;->mBlockId:I

    iget-object v3, p0, Lcom/android/apksig/internal/apk/v3/V3SchemeVerifier;->mResult:Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$Result;

    .line 8
    invoke-static {v0, v1, v2, v3}, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils;->findSignature(Lcom/android/apksig/util/DataSource;Lcom/android/apksig/apk/ApkUtils$ZipSections;ILcom/android/apksig/internal/apk/ApkSigningBlockUtils$Result;)Lcom/android/apksig/internal/apk/SignatureInfo;

    move-result-object v0

    .line 9
    iget-object v1, v0, Lcom/android/apksig/internal/apk/SignatureInfo;->signatureBlock:Ljava/nio/ByteBuffer;

    iput-object v1, p0, Lcom/android/apksig/internal/apk/v3/V3SchemeVerifier;->mApkSignatureSchemeV3Block:Ljava/nio/ByteBuffer;

    .line 10
    iget-object v1, p0, Lcom/android/apksig/internal/apk/v3/V3SchemeVerifier;->mApk:Lcom/android/apksig/util/DataSource;

    const-wide/16 v2, 0x0

    iget-wide v4, v0, Lcom/android/apksig/internal/apk/SignatureInfo;->apkSigningBlockOffset:J

    invoke-interface {v1, v2, v3, v4, v5}, Lcom/android/apksig/util/DataSource;->slice(JJ)Lcom/android/apksig/util/DataSource;

    move-result-object v7

    .line 11
    iget-object v1, p0, Lcom/android/apksig/internal/apk/v3/V3SchemeVerifier;->mApk:Lcom/android/apksig/util/DataSource;

    iget-wide v2, v0, Lcom/android/apksig/internal/apk/SignatureInfo;->centralDirOffset:J

    iget-wide v4, v0, Lcom/android/apksig/internal/apk/SignatureInfo;->eocdOffset:J

    sub-long/2addr v4, v2

    .line 12
    invoke-interface {v1, v2, v3, v4, v5}, Lcom/android/apksig/util/DataSource;->slice(JJ)Lcom/android/apksig/util/DataSource;

    move-result-object v8

    .line 13
    iget-object v9, v0, Lcom/android/apksig/internal/apk/SignatureInfo;->eocd:Ljava/nio/ByteBuffer;

    .line 14
    invoke-virtual {p0}, Lcom/android/apksig/internal/apk/v3/V3SchemeVerifier;->parseSigners()Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$Result;

    .line 15
    iget-object v0, p0, Lcom/android/apksig/internal/apk/v3/V3SchemeVerifier;->mResult:Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$Result;

    invoke-virtual {v0}, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$Result;->containsErrors()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 16
    iget-object v0, p0, Lcom/android/apksig/internal/apk/v3/V3SchemeVerifier;->mResult:Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$Result;

    return-object v0

    .line 17
    :cond_0
    iget-object v6, p0, Lcom/android/apksig/internal/apk/v3/V3SchemeVerifier;->mExecutor:Lcom/android/apksig/util/RunnablesExecutor;

    iget-object v10, p0, Lcom/android/apksig/internal/apk/v3/V3SchemeVerifier;->mContentDigestsToVerify:Ljava/util/Set;

    iget-object v11, p0, Lcom/android/apksig/internal/apk/v3/V3SchemeVerifier;->mResult:Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$Result;

    invoke-static/range {v6 .. v11}, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils;->verifyIntegrity(Lcom/android/apksig/util/RunnablesExecutor;Lcom/android/apksig/util/DataSource;Lcom/android/apksig/util/DataSource;Ljava/nio/ByteBuffer;Ljava/util/Set;Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$Result;)V

    .line 18
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    .line 19
    iget-object v1, p0, Lcom/android/apksig/internal/apk/v3/V3SchemeVerifier;->mResult:Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$Result;

    iget-object v1, v1, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$Result;->signers:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$Result$SignerInfo;

    .line 20
    iget v3, v2, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$Result$SignerInfo;->minSdkVersion:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 21
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/apksig/internal/apk/v3/V3SchemeVerifier;->mResult:Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$Result;

    iget-object v2, v2, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$Result;->signers:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 22
    invoke-interface {v0}, Ljava/util/SortedMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v2, 0x0

    move v3, v2

    move v4, v3

    move v5, v4

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$Result$SignerInfo;

    .line 23
    iget v7, v6, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$Result$SignerInfo;->minSdkVersion:I

    .line 24
    iget v8, v6, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$Result$SignerInfo;->maxSdkVersion:I

    if-nez v3, :cond_2

    move v3, v7

    goto :goto_2

    :cond_2
    add-int/lit8 v9, v4, 0x1

    if-eq v7, v9, :cond_3

    .line 25
    iget-object v0, p0, Lcom/android/apksig/internal/apk/v3/V3SchemeVerifier;->mResult:Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$Result;

    sget-object v5, Lcom/android/apksig/ApkVerifier$Issue;->V3_INCONSISTENT_SDK_VERSIONS:Lcom/android/apksig/ApkVerifier$Issue;

    new-array v6, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v5, v6}, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$Result;->addError(Lcom/android/apksig/ApkVerifier$Issue;[Ljava/lang/Object;)V

    goto :goto_3

    .line 26
    :cond_3
    :goto_2
    iget-object v4, v6, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$Result$SignerInfo;->signingCertificateLineage:Lcom/android/apksig/SigningCertificateLineage;

    if-eqz v4, :cond_5

    .line 27
    invoke-virtual {v4}, Lcom/android/apksig/SigningCertificateLineage;->size()I

    move-result v4

    if-ge v4, v5, :cond_4

    .line 28
    iget-object v0, p0, Lcom/android/apksig/internal/apk/v3/V3SchemeVerifier;->mResult:Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$Result;

    sget-object v4, Lcom/android/apksig/ApkVerifier$Issue;->V3_INCONSISTENT_LINEAGES:Lcom/android/apksig/ApkVerifier$Issue;

    new-array v5, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v4, v5}, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$Result;->addError(Lcom/android/apksig/ApkVerifier$Issue;[Ljava/lang/Object;)V

    move v4, v8

    goto :goto_3

    .line 29
    :cond_4
    iget-object v5, v6, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$Result$SignerInfo;->signingCertificateLineage:Lcom/android/apksig/SigningCertificateLineage;

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v5, v4

    :cond_5
    move v4, v8

    goto :goto_1

    .line 30
    :cond_6
    :goto_3
    iget v0, p0, Lcom/android/apksig/internal/apk/v3/V3SchemeVerifier;->mMinSdkVersion:I

    const/4 v5, 0x1

    if-gt v3, v0, :cond_8

    .line 31
    iget-object v0, p0, Lcom/android/apksig/internal/apk/v3/V3SchemeVerifier;->mOptionalRotationMinSdkVersion:Lcom/android/apksig/internal/compat/OptionalIntCompat;

    invoke-virtual {v0}, Lcom/android/apksig/internal/compat/OptionalIntCompat;->isPresent()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 32
    iget-object v0, p0, Lcom/android/apksig/internal/apk/v3/V3SchemeVerifier;->mOptionalRotationMinSdkVersion:Lcom/android/apksig/internal/compat/OptionalIntCompat;

    invoke-virtual {v0}, Lcom/android/apksig/internal/compat/OptionalIntCompat;->getAsInt()I

    move-result v0

    sub-int/2addr v0, v5

    goto :goto_4

    :cond_7
    iget v0, p0, Lcom/android/apksig/internal/apk/v3/V3SchemeVerifier;->mMaxSdkVersion:I

    :goto_4
    if-ge v4, v0, :cond_9

    .line 33
    :cond_8
    iget-object v0, p0, Lcom/android/apksig/internal/apk/v3/V3SchemeVerifier;->mResult:Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$Result;

    sget-object v6, Lcom/android/apksig/ApkVerifier$Issue;->V3_MISSING_SDK_VERSIONS:Lcom/android/apksig/ApkVerifier$Issue;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    filled-new-array {v3, v4}, [Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v6, v3}, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$Result;->addError(Lcom/android/apksig/ApkVerifier$Issue;[Ljava/lang/Object;)V

    .line 34
    :cond_9
    :try_start_0
    iget-object v0, p0, Lcom/android/apksig/internal/apk/v3/V3SchemeVerifier;->mResult:Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$Result;

    .line 35
    invoke-static {v1}, Lcom/android/apksig/SigningCertificateLineage;->consolidateLineages(Ljava/util/List;)Lcom/android/apksig/SigningCertificateLineage;

    move-result-object v1

    iput-object v1, v0, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$Result;->signingCertificateLineage:Lcom/android/apksig/SigningCertificateLineage;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_5

    .line 36
    :catch_0
    iget-object v0, p0, Lcom/android/apksig/internal/apk/v3/V3SchemeVerifier;->mResult:Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$Result;

    sget-object v1, Lcom/android/apksig/ApkVerifier$Issue;->V3_INCONSISTENT_LINEAGES:Lcom/android/apksig/ApkVerifier$Issue;

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$Result;->addError(Lcom/android/apksig/ApkVerifier$Issue;[Ljava/lang/Object;)V

    .line 37
    :goto_5
    iget-object v0, p0, Lcom/android/apksig/internal/apk/v3/V3SchemeVerifier;->mResult:Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$Result;

    invoke-virtual {v0}, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$Result;->containsErrors()Z

    move-result v0

    if-nez v0, :cond_a

    .line 38
    iget-object v0, p0, Lcom/android/apksig/internal/apk/v3/V3SchemeVerifier;->mResult:Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$Result;

    iput-boolean v5, v0, Lcom/android/apksig/internal/apk/ApkSigResult;->verified:Z

    .line 39
    :cond_a
    iget-object v0, p0, Lcom/android/apksig/internal/apk/v3/V3SchemeVerifier;->mResult:Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$Result;

    return-object v0

    .line 40
    :cond_b
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "A non-null apk and zip sections must be specified to verify an APK\'s v3 signatures"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
