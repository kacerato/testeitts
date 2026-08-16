.class public abstract Lcom/android/apksig/internal/apk/v4/V4SchemeSigner;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/apksig/internal/apk/v4/V4SchemeSigner$SignerConfig;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static convertToV4HashingInfo(Lcom/android/apksig/internal/apk/ContentDigestAlgorithm;)Lcom/android/apksig/internal/util/Pair;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/apksig/internal/apk/ContentDigestAlgorithm;",
            ")",
            "Lcom/android/apksig/internal/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Byte;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    sget-object v0, Lcom/android/apksig/internal/apk/v4/V4SchemeSigner$1;->$SwitchMap$com$android$apksig$internal$apk$ContentDigestAlgorithm:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, v0, p0

    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/16 v0, 0xc

    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/apksig/internal/util/Pair;->of(Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/apksig/internal/util/Pair;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Ljava/security/NoSuchAlgorithmException;

    const-string v0, "Invalid hash algorithm, only SHA2-256 over 4 KB chunks supported."

    invoke-direct {p0, v0}, Ljava/security/NoSuchAlgorithmException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static digestAlgorithmSortingOrder(Lcom/android/apksig/internal/apk/ContentDigestAlgorithm;)I
    .locals 2

    sget-object v0, Lcom/android/apksig/internal/apk/v4/V4SchemeSigner$1;->$SwitchMap$com$android$apksig$internal$apk$ContentDigestAlgorithm:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, v0, p0

    const/4 v0, 0x1

    if-eq p0, v0, :cond_2

    const/4 v1, 0x2

    if-eq p0, v1, :cond_1

    const/4 v0, 0x3

    if-eq p0, v0, :cond_0

    const/4 p0, -0x1

    return p0

    :cond_0
    return v1

    :cond_1
    return v0

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method private static generateSignature(Lcom/android/apksig/internal/apk/v4/V4SchemeSigner$SignerConfig;Lcom/android/apksig/internal/apk/v4/V4Signature$HashingInfo;[B[BJ)Lcom/android/apksig/internal/apk/v4/V4Signature;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/InvalidKeyException;,
            Ljava/security/SignatureException;,
            Ljava/security/cert/CertificateEncodingException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/apksig/internal/apk/v4/V4SchemeSigner$SignerConfig;->v4Config:Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$SignerConfig;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-wide v4, p4

    invoke-static/range {v0 .. v5}, Lcom/android/apksig/internal/apk/v4/V4SchemeSigner;->generateSigningInfo(Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$SignerConfig;Lcom/android/apksig/internal/apk/v4/V4Signature$HashingInfo;[B[BJ)Lcom/android/apksig/internal/apk/v4/V4Signature$SigningInfo;

    move-result-object v0

    iget-object v1, p0, Lcom/android/apksig/internal/apk/v4/V4SchemeSigner$SignerConfig;->v41Config:Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$SignerConfig;

    if-eqz v1, :cond_0

    new-instance p0, Lcom/android/apksig/internal/apk/v4/V4Signature$SigningInfoBlock;

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-wide v5, p4

    invoke-static/range {v1 .. v6}, Lcom/android/apksig/internal/apk/v4/V4SchemeSigner;->generateSigningInfo(Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$SignerConfig;Lcom/android/apksig/internal/apk/v4/V4Signature$HashingInfo;[B[BJ)Lcom/android/apksig/internal/apk/v4/V4Signature$SigningInfo;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/apksig/internal/apk/v4/V4Signature$SigningInfo;->toByteArray()[B

    move-result-object p2

    const p3, 0x1b93ad61

    invoke-direct {p0, p3, p2}, Lcom/android/apksig/internal/apk/v4/V4Signature$SigningInfoBlock;-><init>(I[B)V

    new-instance p2, Lcom/android/apksig/internal/apk/v4/V4Signature$SigningInfos;

    filled-new-array {p0}, [Lcom/android/apksig/internal/apk/v4/V4Signature$SigningInfoBlock;

    move-result-object p0

    invoke-direct {p2, v0, p0}, Lcom/android/apksig/internal/apk/v4/V4Signature$SigningInfos;-><init>(Lcom/android/apksig/internal/apk/v4/V4Signature$SigningInfo;[Lcom/android/apksig/internal/apk/v4/V4Signature$SigningInfoBlock;)V

    goto :goto_0

    :cond_0
    new-instance p2, Lcom/android/apksig/internal/apk/v4/V4Signature$SigningInfos;

    invoke-direct {p2, v0}, Lcom/android/apksig/internal/apk/v4/V4Signature$SigningInfos;-><init>(Lcom/android/apksig/internal/apk/v4/V4Signature$SigningInfo;)V

    :goto_0
    new-instance p0, Lcom/android/apksig/internal/apk/v4/V4Signature;

    invoke-virtual {p1}, Lcom/android/apksig/internal/apk/v4/V4Signature$HashingInfo;->toByteArray()[B

    move-result-object p1

    invoke-virtual {p2}, Lcom/android/apksig/internal/apk/v4/V4Signature$SigningInfos;->toByteArray()[B

    move-result-object p2

    const/4 p3, 0x2

    invoke-direct {p0, p3, p1, p2}, Lcom/android/apksig/internal/apk/v4/V4Signature;-><init>(I[B[B)V

    return-object p0
.end method

.method private static generateSigningInfo(Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$SignerConfig;Lcom/android/apksig/internal/apk/v4/V4Signature$HashingInfo;[B[BJ)Lcom/android/apksig/internal/apk/v4/V4Signature$SigningInfo;
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/InvalidKeyException;,
            Ljava/security/SignatureException;,
            Ljava/security/cert/CertificateEncodingException;
        }
    .end annotation

    move-object v0, p0

    iget-object v1, v0, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$SignerConfig;->certificates:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, v0, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$SignerConfig;->certificates:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    iget-object v1, v0, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$SignerConfig;->certificates:Ljava/util/List;

    const/4 v3, 0x0

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/security/cert/X509Certificate;

    invoke-virtual {v1}, Ljava/security/cert/Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v1

    iget-object v4, v0, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$SignerConfig;->certificates:Ljava/util/List;

    invoke-static {v4}, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils;->encodeCertificates(Ljava/util/List;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [B

    new-instance v12, Lcom/android/apksig/internal/apk/v4/V4Signature$SigningInfo;

    invoke-interface {v1}, Ljava/security/Key;->getEncoded()[B

    move-result-object v9

    const/4 v10, -0x1

    const/4 v11, 0x0

    move-object v5, v12

    move-object v6, p2

    move-object v7, v4

    move-object/from16 v8, p3

    invoke-direct/range {v5 .. v11}, Lcom/android/apksig/internal/apk/v4/V4Signature$SigningInfo;-><init>([B[B[B[BI[B)V

    move-object v5, p1

    move-wide/from16 v6, p4

    invoke-static {v6, v7, p1, v12}, Lcom/android/apksig/internal/apk/v4/V4Signature;->getSignedData(JLcom/android/apksig/internal/apk/v4/V4Signature$HashingInfo;Lcom/android/apksig/internal/apk/v4/V4Signature$SigningInfo;)[B

    move-result-object v5

    invoke-static {p0, v5}, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils;->generateSignaturesOverData(Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$SignerConfig;[B)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    if-ne v5, v2, :cond_0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/apksig/internal/util/Pair;

    invoke-virtual {v2}, Lcom/android/apksig/internal/util/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/apksig/internal/util/Pair;

    invoke-virtual {v0}, Lcom/android/apksig/internal/util/Pair;->getSecond()Ljava/lang/Object;

    move-result-object v0

    move-object v11, v0

    check-cast v11, [B

    new-instance v0, Lcom/android/apksig/internal/apk/v4/V4Signature$SigningInfo;

    invoke-interface {v1}, Ljava/security/Key;->getEncoded()[B

    move-result-object v9

    move-object v5, v0

    move-object v6, p2

    move-object v7, v4

    move-object/from16 v8, p3

    invoke-direct/range {v5 .. v11}, Lcom/android/apksig/internal/apk/v4/V4Signature$SigningInfo;-><init>([B[B[B[BI[B)V

    return-object v0

    :cond_0
    new-instance v0, Ljava/security/SignatureException;

    const-string v1, "Should only be one signature generated"

    invoke-direct {v0, v1}, Ljava/security/SignatureException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v0, Ljava/security/cert/CertificateEncodingException;

    const-string v1, "Should only have one certificate"

    invoke-direct {v0, v1}, Ljava/security/cert/CertificateEncodingException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    new-instance v0, Ljava/security/SignatureException;

    const-string v1, "No certificates configured for signer"

    invoke-direct {v0, v1}, Ljava/security/SignatureException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static generateV4Signature(Lcom/android/apksig/util/DataSource;Lcom/android/apksig/internal/apk/v4/V4SchemeSigner$SignerConfig;)Lcom/android/apksig/internal/util/Pair;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/apksig/util/DataSource;",
            "Lcom/android/apksig/internal/apk/v4/V4SchemeSigner$SignerConfig;",
            ")",
            "Lcom/android/apksig/internal/util/Pair<",
            "Lcom/android/apksig/internal/apk/v4/V4Signature;",
            "[B>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/InvalidKeyException;,
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .line 9
    invoke-interface {p0}, Lcom/android/apksig/util/DataSource;->size()J

    move-result-wide v4

    .line 10
    invoke-static {p0}, Lcom/android/apksig/internal/apk/v4/V4SchemeSigner;->getApkDigest(Lcom/android/apksig/util/DataSource;)[B

    move-result-object v2

    .line 11
    invoke-static {p0}, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils;->computeChunkVerityTreeAndDigest(Lcom/android/apksig/util/DataSource;)Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$VerityTreeAndDigest;

    move-result-object p0

    .line 12
    iget-object v0, p0, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$VerityTreeAndDigest;->contentDigestAlgorithm:Lcom/android/apksig/internal/apk/ContentDigestAlgorithm;

    .line 13
    iget-object v1, p0, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$VerityTreeAndDigest;->rootHash:[B

    .line 14
    iget-object p0, p0, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$VerityTreeAndDigest;->tree:[B

    .line 15
    invoke-static {v0}, Lcom/android/apksig/internal/apk/v4/V4SchemeSigner;->convertToV4HashingInfo(Lcom/android/apksig/internal/apk/ContentDigestAlgorithm;)Lcom/android/apksig/internal/util/Pair;

    move-result-object v0

    .line 16
    new-instance v3, Lcom/android/apksig/internal/apk/v4/V4Signature$HashingInfo;

    .line 17
    invoke-virtual {v0}, Lcom/android/apksig/internal/util/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-virtual {v0}, Lcom/android/apksig/internal/util/Pair;->getSecond()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Byte;

    invoke-virtual {v0}, Ljava/lang/Byte;->byteValue()B

    move-result v0

    const/4 v7, 0x0

    invoke-direct {v3, v6, v0, v7, v1}, Lcom/android/apksig/internal/apk/v4/V4Signature$HashingInfo;-><init>(IB[B[B)V

    const/4 v6, 0x0

    move-object v0, p1

    move-object v1, v3

    move-object v3, v6

    .line 18
    :try_start_0
    invoke-static/range {v0 .. v5}, Lcom/android/apksig/internal/apk/v4/V4SchemeSigner;->generateSignature(Lcom/android/apksig/internal/apk/v4/V4SchemeSigner$SignerConfig;Lcom/android/apksig/internal/apk/v4/V4Signature$HashingInfo;[B[BJ)Lcom/android/apksig/internal/apk/v4/V4Signature;

    move-result-object p1
    :try_end_0
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/security/SignatureException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 19
    invoke-static {p1, p0}, Lcom/android/apksig/internal/util/Pair;->of(Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/apksig/internal/util/Pair;

    move-result-object p0

    return-object p0

    :catch_0
    move-exception p0

    goto :goto_0

    :catch_1
    move-exception p0

    goto :goto_0

    :catch_2
    move-exception p0

    .line 20
    :goto_0
    new-instance p1, Ljava/security/InvalidKeyException;

    const-string v0, "Signer failed"

    invoke-direct {p1, v0, p0}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method public static generateV4Signature(Lcom/android/apksig/util/DataSource;Lcom/android/apksig/internal/apk/v4/V4SchemeSigner$SignerConfig;Ljava/io/File;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/InvalidKeyException;,
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .line 1
    invoke-static {p0, p1}, Lcom/android/apksig/internal/apk/v4/V4SchemeSigner;->generateV4Signature(Lcom/android/apksig/util/DataSource;Lcom/android/apksig/internal/apk/v4/V4SchemeSigner$SignerConfig;)Lcom/android/apksig/internal/util/Pair;

    move-result-object p0

    .line 2
    :try_start_0
    new-instance p1, Ljava/io/FileOutputStream;

    invoke-direct {p1, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3
    :try_start_1
    invoke-virtual {p0}, Lcom/android/apksig/internal/util/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/apksig/internal/apk/v4/V4Signature;

    invoke-virtual {v0, p1}, Lcom/android/apksig/internal/apk/v4/V4Signature;->writeTo(Ljava/io/OutputStream;)V

    .line 4
    invoke-virtual {p0}, Lcom/android/apksig/internal/util/Pair;->getSecond()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [B

    invoke-static {p1, p0}, Lcom/android/apksig/internal/apk/v4/V4Signature;->writeBytes(Ljava/io/OutputStream;[B)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 5
    :try_start_2
    invoke-virtual {p1}, Ljava/io/OutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    return-void

    :catch_0
    move-exception p0

    goto :goto_1

    :catchall_0
    move-exception p0

    .line 6
    :try_start_3
    invoke-virtual {p1}, Ljava/io/OutputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p1

    :try_start_4
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw p0
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    .line 7
    :goto_1
    invoke-virtual {p2}, Ljava/io/File;->delete()Z

    .line 8
    throw p0
.end method

.method private static getApkDigest(Lcom/android/apksig/util/DataSource;)[B
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :try_start_0
    invoke-static {p0}, Lcom/android/apksig/apk/ApkUtils;->findZipSections(Lcom/android/apksig/util/DataSource;)Lcom/android/apksig/apk/ApkUtils$ZipSections;

    move-result-object v0
    :try_end_0
    .catch Lcom/android/apksig/zip/ZipFormatException; {:try_start_0 .. :try_end_0} :catch_2

    :try_start_1
    invoke-static {p0, v0}, Lcom/android/apksig/internal/apk/v4/V4SchemeSigner;->getBestV3Digest(Lcom/android/apksig/util/DataSource;Lcom/android/apksig/apk/ApkUtils$ZipSections;)[B

    move-result-object p0
    :try_end_1
    .catch Ljava/security/SignatureException; {:try_start_1 .. :try_end_1} :catch_0

    return-object p0

    :catch_0
    move-exception v1

    :try_start_2
    invoke-static {p0, v0}, Lcom/android/apksig/internal/apk/v4/V4SchemeSigner;->getBestV2Digest(Lcom/android/apksig/util/DataSource;Lcom/android/apksig/apk/ApkUtils$ZipSections;)[B

    move-result-object p0
    :try_end_2
    .catch Ljava/security/SignatureException; {:try_start_2 .. :try_end_2} :catch_1

    return-object p0

    :catch_1
    move-exception p0

    new-instance v0, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to obtain v2/v3 digest, v3 exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", v2 exception: "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_2
    move-exception p0

    new-instance v0, Ljava/io/IOException;

    const-string v1, "Malformed APK: not a ZIP archive"

    invoke-direct {v0, v1, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method private static getBestV2Digest(Lcom/android/apksig/util/DataSource;Lcom/android/apksig/apk/ApkUtils$ZipSections;)[B
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/SignatureException;
        }
    .end annotation

    new-instance v1, Ljava/util/HashSet;

    const/4 v7, 0x1

    invoke-direct {v1, v7}, Ljava/util/HashSet;-><init>(I)V

    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3, v7}, Ljava/util/HashSet;-><init>(I)V

    new-instance v8, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$Result;

    const/4 v0, 0x2

    invoke-direct {v8, v0}, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$Result;-><init>(I)V

    const v0, 0x7109871a

    :try_start_0
    invoke-static {p0, p1, v0, v8}, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils;->findSignature(Lcom/android/apksig/util/DataSource;Lcom/android/apksig/apk/ApkUtils$ZipSections;ILcom/android/apksig/internal/apk/ApkSigningBlockUtils$Result;)Lcom/android/apksig/internal/apk/SignatureInfo;

    move-result-object p0

    iget-object v0, p0, Lcom/android/apksig/internal/apk/SignatureInfo;->signatureBlock:Ljava/nio/ByteBuffer;

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v2

    const v4, 0x7fffffff

    const v5, 0x7fffffff

    move-object v6, v8

    invoke-static/range {v0 .. v6}, Lcom/android/apksig/internal/apk/v2/V2SchemeVerifier;->parseSigners(Ljava/nio/ByteBuffer;Ljava/util/Set;Ljava/util/Map;Ljava/util/Set;IILcom/android/apksig/internal/apk/ApkSigningBlockUtils$Result;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    iget-object p0, v8, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$Result;->signers:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    if-ne p0, v7, :cond_1

    iget-object p0, v8, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$Result;->signers:Ljava/util/List;

    const/4 p1, 0x0

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$Result$SignerInfo;

    invoke-virtual {p0}, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$Result$SignerInfo;->containsErrors()Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p0, p0, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$Result$SignerInfo;->contentDigests:Ljava/util/List;

    invoke-static {p0}, Lcom/android/apksig/internal/apk/v4/V4SchemeSigner;->pickBestDigest(Ljava/util/List;)[B

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p1, Ljava/security/SignatureException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Parsing failed: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$Result$SignerInfo;->getErrors()Ljava/util/List;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/security/SignatureException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p0, Ljava/security/SignatureException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Should only have one signer, errors: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$Result;->getErrors()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/security/SignatureException;-><init>(Ljava/lang/String;)V

    throw p0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/security/SignatureException;

    const-string v0, "Failed to extract and parse v2 block"

    invoke-direct {p1, v0, p0}, Ljava/security/SignatureException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method private static getBestV3Digest(Lcom/android/apksig/util/DataSource;Lcom/android/apksig/apk/ApkUtils$ZipSections;)[B
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/SignatureException;
        }
    .end annotation

    new-instance v0, Ljava/util/HashSet;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(I)V

    new-instance v2, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$Result;

    const/4 v3, 0x3

    invoke-direct {v2, v3}, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$Result;-><init>(I)V

    const v3, -0xfac9740

    :try_start_0
    invoke-static {p0, p1, v3, v2}, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils;->findSignature(Lcom/android/apksig/util/DataSource;Lcom/android/apksig/apk/ApkUtils$ZipSections;ILcom/android/apksig/internal/apk/ApkSigningBlockUtils$Result;)Lcom/android/apksig/internal/apk/SignatureInfo;

    move-result-object p0

    iget-object p0, p0, Lcom/android/apksig/internal/apk/SignatureInfo;->signatureBlock:Ljava/nio/ByteBuffer;

    invoke-static {p0, v0, v2}, Lcom/android/apksig/internal/apk/v3/V3SchemeVerifier;->parseSigners(Ljava/nio/ByteBuffer;Ljava/util/Set;Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$Result;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    iget-object p0, v2, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$Result;->signers:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    if-ne p0, v1, :cond_1

    iget-object p0, v2, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$Result;->signers:Ljava/util/List;

    const/4 p1, 0x0

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$Result$SignerInfo;

    invoke-virtual {p0}, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$Result$SignerInfo;->containsErrors()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, v2, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$Result;->signers:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$Result$SignerInfo;

    iget-object p0, p0, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$Result$SignerInfo;->contentDigests:Ljava/util/List;

    invoke-static {p0}, Lcom/android/apksig/internal/apk/v4/V4SchemeSigner;->pickBestDigest(Ljava/util/List;)[B

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p1, Ljava/security/SignatureException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Parsing failed: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$Result$SignerInfo;->getErrors()Ljava/util/List;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/security/SignatureException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p0, Ljava/security/SignatureException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Should only have one signer, errors: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$Result;->getErrors()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/security/SignatureException;-><init>(Ljava/lang/String;)V

    throw p0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/security/SignatureException;

    const-string v0, "Failed to extract and parse v3 block"

    invoke-direct {p1, v0, p0}, Ljava/security/SignatureException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method public static getSuggestedSignatureAlgorithms(Ljava/security/PublicKey;IZZ)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/security/PublicKey;",
            "IZZ)",
            "Ljava/util/List<",
            "Lcom/android/apksig/internal/apk/SignatureAlgorithm;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    invoke-static {p0, p1, p2, p3}, Lcom/android/apksig/internal/apk/v3/V3SchemeSigner;->getSuggestedSignatureAlgorithms(Ljava/security/PublicKey;IZZ)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/apksig/internal/apk/SignatureAlgorithm;

    invoke-virtual {p2}, Lcom/android/apksig/internal/apk/SignatureAlgorithm;->getContentDigestAlgorithm()Lcom/android/apksig/internal/apk/ContentDigestAlgorithm;

    move-result-object p2

    const/4 p3, 0x0

    invoke-static {p2, p3}, Lcom/android/apksig/internal/apk/v4/V4SchemeSigner;->isSupported(Lcom/android/apksig/internal/apk/ContentDigestAlgorithm;Z)Z

    move-result p2

    if-nez p2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_1
    return-object p0
.end method

.method private static isSupported(Lcom/android/apksig/internal/apk/ContentDigestAlgorithm;Z)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    sget-object v1, Lcom/android/apksig/internal/apk/ContentDigestAlgorithm;->CHUNKED_SHA256:Lcom/android/apksig/internal/apk/ContentDigestAlgorithm;

    if-eq p0, v1, :cond_2

    sget-object v1, Lcom/android/apksig/internal/apk/ContentDigestAlgorithm;->CHUNKED_SHA512:Lcom/android/apksig/internal/apk/ContentDigestAlgorithm;

    if-eq p0, v1, :cond_2

    if-eqz p1, :cond_1

    sget-object p1, Lcom/android/apksig/internal/apk/ContentDigestAlgorithm;->VERITY_CHUNKED_SHA256:Lcom/android/apksig/internal/apk/ContentDigestAlgorithm;

    if-ne p0, p1, :cond_1

    goto :goto_0

    :cond_1
    return v0

    :cond_2
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method private static pickBestDigest(Ljava/util/List;)[B
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$Result$SignerInfo$ContentDigest;",
            ">;)[B"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/SignatureException;
        }
    .end annotation

    if-eqz p0, :cond_4

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v0, -0x1

    const/4 v1, 0x0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$Result$SignerInfo$ContentDigest;

    invoke-virtual {v2}, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$Result$SignerInfo$ContentDigest;->getSignatureAlgorithmId()I

    move-result v3

    invoke-static {v3}, Lcom/android/apksig/internal/apk/SignatureAlgorithm;->findById(I)Lcom/android/apksig/internal/apk/SignatureAlgorithm;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/apksig/internal/apk/SignatureAlgorithm;->getContentDigestAlgorithm()Lcom/android/apksig/internal/apk/ContentDigestAlgorithm;

    move-result-object v3

    const/4 v4, 0x1

    invoke-static {v3, v4}, Lcom/android/apksig/internal/apk/v4/V4SchemeSigner;->isSupported(Lcom/android/apksig/internal/apk/ContentDigestAlgorithm;Z)Z

    move-result v4

    if-nez v4, :cond_1

    goto :goto_0

    :cond_1
    invoke-static {v3}, Lcom/android/apksig/internal/apk/v4/V4SchemeSigner;->digestAlgorithmSortingOrder(Lcom/android/apksig/internal/apk/ContentDigestAlgorithm;)I

    move-result v3

    if-ge v0, v3, :cond_0

    invoke-virtual {v2}, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$Result$SignerInfo$ContentDigest;->getValue()[B

    move-result-object v0

    move-object v1, v0

    move v0, v3

    goto :goto_0

    :cond_2
    if-eqz v1, :cond_3

    return-object v1

    :cond_3
    new-instance p0, Ljava/security/SignatureException;

    const-string v0, "Failed to find a supported digest in the source APK"

    invoke-direct {p0, v0}, Ljava/security/SignatureException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4
    new-instance p0, Ljava/security/SignatureException;

    const-string v0, "Should have at least one digest"

    invoke-direct {p0, v0}, Ljava/security/SignatureException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
