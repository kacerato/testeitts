.class public abstract Lcom/android/apksig/internal/apk/v4/V4SchemeVerifier;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static parseAndVerifySignatureBlock(Lcom/android/apksig/internal/apk/v4/V4Signature$SigningInfo;[B)Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$Result$SignerInfo;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    new-instance v0, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$Result$SignerInfo;

    invoke-direct {v0}, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$Result$SignerInfo;-><init>()V

    const/4 v1, 0x0

    iput v1, v0, Lcom/android/apksig/internal/apk/ApkSignerInfo;->index:I

    iget v2, p0, Lcom/android/apksig/internal/apk/v4/V4Signature$SigningInfo;->signatureAlgorithmId:I

    iget-object v3, p0, Lcom/android/apksig/internal/apk/v4/V4Signature$SigningInfo;->signature:[B

    iget-object v4, v0, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$Result$SignerInfo;->signatures:Ljava/util/List;

    new-instance v5, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$Result$SignerInfo$Signature;

    invoke-direct {v5, v2, v3}, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$Result$SignerInfo$Signature;-><init>(I[B)V

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {v2}, Lcom/android/apksig/internal/apk/SignatureAlgorithm;->findById(I)Lcom/android/apksig/internal/apk/SignatureAlgorithm;

    move-result-object v4

    if-nez v4, :cond_0

    sget-object p0, Lcom/android/apksig/ApkVerifier$Issue;->V4_SIG_UNKNOWN_SIG_ALGORITHM:Lcom/android/apksig/ApkVerifier$Issue;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p0, p1}, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$Result$SignerInfo;->addError(Lcom/android/apksig/ApkVerifier$Issue;[Ljava/lang/Object;)V

    return-object v0

    :cond_0
    invoke-virtual {v4}, Lcom/android/apksig/internal/apk/SignatureAlgorithm;->getJcaSignatureAlgorithmAndParams()Lcom/android/apksig/internal/util/Pair;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/apksig/internal/util/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v4}, Lcom/android/apksig/internal/apk/SignatureAlgorithm;->getJcaSignatureAlgorithmAndParams()Lcom/android/apksig/internal/util/Pair;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/apksig/internal/util/Pair;->getSecond()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/security/spec/AlgorithmParameterSpec;

    invoke-virtual {v4}, Lcom/android/apksig/internal/apk/SignatureAlgorithm;->getJcaKeyAlgorithm()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/android/apksig/internal/apk/v4/V4Signature$SigningInfo;->publicKey:[B

    :try_start_0
    invoke-static {v6}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v6

    new-instance v8, Ljava/security/spec/X509EncodedKeySpec;

    invoke-direct {v8, v7}, Ljava/security/spec/X509EncodedKeySpec;-><init>([B)V

    invoke-virtual {v6, v8}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    move-result-object v6
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_5

    :try_start_1
    invoke-static {v2}, Ljava/security/Signature;->getInstance(Ljava/lang/String;)Ljava/security/Signature;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/security/Signature;->initVerify(Ljava/security/PublicKey;)V

    if-eqz v5, :cond_1

    invoke-virtual {v2, v5}, Ljava/security/Signature;->setParameter(Ljava/security/spec/AlgorithmParameterSpec;)V

    goto :goto_0

    :catch_0
    move-exception p0

    goto/16 :goto_2

    :catch_1
    move-exception p0

    goto/16 :goto_2

    :catch_2
    move-exception p0

    goto/16 :goto_2

    :cond_1
    :goto_0
    invoke-virtual {v2, p1}, Ljava/security/Signature;->update([B)V

    invoke-virtual {v2, v3}, Ljava/security/Signature;->verify([B)Z

    move-result p1

    if-nez p1, :cond_2

    sget-object p0, Lcom/android/apksig/ApkVerifier$Issue;->V4_SIG_DID_NOT_VERIFY:Lcom/android/apksig/ApkVerifier$Issue;

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p0, p1}, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$Result$SignerInfo;->addError(Lcom/android/apksig/ApkVerifier$Issue;[Ljava/lang/Object;)V

    return-object v0

    :cond_2
    iget-object p1, v0, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$Result$SignerInfo;->verifiedSignatures:Ljava/util/Map;

    invoke-interface {p1, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/security/InvalidKeyException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/security/SignatureException; {:try_start_1 .. :try_end_1} :catch_0

    iget-object p1, p0, Lcom/android/apksig/internal/apk/v4/V4Signature$SigningInfo;->certificate:[B

    if-nez p1, :cond_3

    sget-object p0, Lcom/android/apksig/ApkVerifier$Issue;->V4_SIG_NO_CERTIFICATE:Lcom/android/apksig/ApkVerifier$Issue;

    new-array p1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, p0, p1}, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$Result$SignerInfo;->addError(Lcom/android/apksig/ApkVerifier$Issue;[Ljava/lang/Object;)V

    return-object v0

    :cond_3
    :try_start_2
    new-instance p1, Lcom/android/apksig/internal/util/GuaranteedEncodedFormX509Certificate;

    iget-object v2, p0, Lcom/android/apksig/internal/apk/v4/V4Signature$SigningInfo;->certificate:[B

    invoke-static {v2}, Lcom/android/apksig/internal/util/X509CertificateUtils;->generateCertificate([B)Ljava/security/cert/X509Certificate;

    move-result-object v2

    iget-object v3, p0, Lcom/android/apksig/internal/apk/v4/V4Signature$SigningInfo;->certificate:[B

    invoke-direct {p1, v2, v3}, Lcom/android/apksig/internal/util/GuaranteedEncodedFormX509Certificate;-><init>(Ljava/security/cert/X509Certificate;[B)V
    :try_end_2
    .catch Ljava/security/cert/CertificateException; {:try_start_2 .. :try_end_2} :catch_4

    iget-object v2, v0, Lcom/android/apksig/internal/apk/ApkSignerInfo;->certs:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :try_start_3
    invoke-virtual {p1}, Ljava/security/cert/Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v2

    invoke-static {v2}, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils;->encodePublicKey(Ljava/security/PublicKey;)[B

    move-result-object p1
    :try_end_3
    .catch Ljava/security/InvalidKeyException; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_1

    :catch_3
    move-exception v2

    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Caught an exception encoding the public key: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    invoke-virtual {p1}, Ljava/security/cert/Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object p1

    invoke-interface {p1}, Ljava/security/Key;->getEncoded()[B

    move-result-object p1

    :goto_1
    invoke-static {v7, p1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    if-nez v2, :cond_4

    sget-object p0, Lcom/android/apksig/ApkVerifier$Issue;->V4_SIG_PUBLIC_KEY_MISMATCH_BETWEEN_CERTIFICATE_AND_SIGNATURES_RECORD:Lcom/android/apksig/ApkVerifier$Issue;

    invoke-static {p1}, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils;->toHex([B)Ljava/lang/String;

    move-result-object p1

    invoke-static {v7}, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils;->toHex([B)Ljava/lang/String;

    move-result-object v1

    filled-new-array {p1, v1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p0, p1}, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$Result$SignerInfo;->addError(Lcom/android/apksig/ApkVerifier$Issue;[Ljava/lang/Object;)V

    return-object v0

    :cond_4
    new-instance p1, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$Result$SignerInfo$ContentDigest;

    iget-object p0, p0, Lcom/android/apksig/internal/apk/v4/V4Signature$SigningInfo;->apkDigest:[B

    invoke-direct {p1, v1, p0}, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$Result$SignerInfo$ContentDigest;-><init>(I[B)V

    iget-object p0, v0, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$Result$SignerInfo;->contentDigests:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0

    :catch_4
    move-exception p0

    sget-object p1, Lcom/android/apksig/ApkVerifier$Issue;->V4_SIG_MALFORMED_CERTIFICATE:Lcom/android/apksig/ApkVerifier$Issue;

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {v0, p1, p0}, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$Result$SignerInfo;->addError(Lcom/android/apksig/ApkVerifier$Issue;[Ljava/lang/Object;)V

    return-object v0

    :goto_2
    sget-object p1, Lcom/android/apksig/ApkVerifier$Issue;->V4_SIG_VERIFY_EXCEPTION:Lcom/android/apksig/ApkVerifier$Issue;

    filled-new-array {v4, p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {v0, p1, p0}, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$Result$SignerInfo;->addError(Lcom/android/apksig/ApkVerifier$Issue;[Ljava/lang/Object;)V

    return-object v0

    :catch_5
    move-exception p0

    sget-object p1, Lcom/android/apksig/ApkVerifier$Issue;->V4_SIG_MALFORMED_PUBLIC_KEY:Lcom/android/apksig/ApkVerifier$Issue;

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {v0, p1, p0}, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$Result$SignerInfo;->addError(Lcom/android/apksig/ApkVerifier$Issue;[Ljava/lang/Object;)V

    return-object v0
.end method

.method public static verify(Lcom/android/apksig/util/DataSource;Ljava/io/File;)Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$Result;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    :try_start_0
    invoke-static {v0}, Lcom/android/apksig/internal/apk/v4/V4Signature;->readFrom(Ljava/io/InputStream;)Lcom/android/apksig/internal/apk/v4/V4Signature;

    move-result-object p1

    invoke-static {v0}, Lcom/android/apksig/internal/apk/v4/V4Signature;->readBytes(Ljava/io/InputStream;)[B

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    new-instance v0, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$Result;

    const/4 v2, 0x4

    invoke-direct {v0, v2}, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$Result;-><init>(I)V

    if-nez p1, :cond_0

    sget-object p0, Lcom/android/apksig/ApkVerifier$Issue;->V4_SIG_NO_SIGNATURES:Lcom/android/apksig/ApkVerifier$Issue;

    const-string p1, "Signature file does not contain a v4 signature."

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p0, p1}, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$Result;->addError(Lcom/android/apksig/ApkVerifier$Issue;[Ljava/lang/Object;)V

    return-object v0

    :cond_0
    iget v2, p1, Lcom/android/apksig/internal/apk/v4/V4Signature;->version:I

    const/4 v3, 0x2

    if-eq v2, v3, :cond_1

    sget-object v4, Lcom/android/apksig/ApkVerifier$Issue;->V4_SIG_VERSION_NOT_CURRENT:Lcom/android/apksig/ApkVerifier$Issue;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v2, v3}, [Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v4, v2}, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$Result;->addWarning(Lcom/android/apksig/ApkVerifier$Issue;[Ljava/lang/Object;)V

    :cond_1
    iget-object v2, p1, Lcom/android/apksig/internal/apk/v4/V4Signature;->hashingInfo:[B

    invoke-static {v2}, Lcom/android/apksig/internal/apk/v4/V4Signature$HashingInfo;->fromByteArray([B)Lcom/android/apksig/internal/apk/v4/V4Signature$HashingInfo;

    move-result-object v2

    iget-object p1, p1, Lcom/android/apksig/internal/apk/v4/V4Signature;->signingInfos:[B

    invoke-static {p1}, Lcom/android/apksig/internal/apk/v4/V4Signature$SigningInfos;->fromByteArray([B)Lcom/android/apksig/internal/apk/v4/V4Signature$SigningInfos;

    move-result-object p1

    iget-object v3, p1, Lcom/android/apksig/internal/apk/v4/V4Signature$SigningInfos;->signingInfo:Lcom/android/apksig/internal/apk/v4/V4Signature$SigningInfo;

    invoke-interface {p0}, Lcom/android/apksig/util/DataSource;->size()J

    move-result-wide v4

    invoke-static {v4, v5, v2, v3}, Lcom/android/apksig/internal/apk/v4/V4Signature;->getSignedData(JLcom/android/apksig/internal/apk/v4/V4Signature$HashingInfo;Lcom/android/apksig/internal/apk/v4/V4Signature$SigningInfo;)[B

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/apksig/internal/apk/v4/V4SchemeVerifier;->parseAndVerifySignatureBlock(Lcom/android/apksig/internal/apk/v4/V4Signature$SigningInfo;[B)Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$Result$SignerInfo;

    move-result-object v3

    iget-object v4, v0, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$Result;->signers:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0}, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$Result;->containsErrors()Z

    move-result v4

    if-eqz v4, :cond_2

    return-object v0

    :cond_2
    iget-object p1, p1, Lcom/android/apksig/internal/apk/v4/V4Signature$SigningInfos;->signingInfoBlocks:[Lcom/android/apksig/internal/apk/v4/V4Signature$SigningInfoBlock;

    array-length v4, p1

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v4, :cond_4

    aget-object v6, p1, v5

    iget-object v6, v6, Lcom/android/apksig/internal/apk/v4/V4Signature$SigningInfoBlock;->signingInfo:[B

    invoke-static {v6}, Lcom/android/apksig/internal/apk/v4/V4Signature$SigningInfo;->fromByteArray([B)Lcom/android/apksig/internal/apk/v4/V4Signature$SigningInfo;

    move-result-object v6

    invoke-interface {p0}, Lcom/android/apksig/util/DataSource;->size()J

    move-result-wide v7

    invoke-static {v7, v8, v2, v6}, Lcom/android/apksig/internal/apk/v4/V4Signature;->getSignedData(JLcom/android/apksig/internal/apk/v4/V4Signature$HashingInfo;Lcom/android/apksig/internal/apk/v4/V4Signature$SigningInfo;)[B

    move-result-object v7

    iget-object v8, v0, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$Result;->signers:Ljava/util/List;

    invoke-static {v6, v7}, Lcom/android/apksig/internal/apk/v4/V4SchemeVerifier;->parseAndVerifySignatureBlock(Lcom/android/apksig/internal/apk/v4/V4Signature$SigningInfo;[B)Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$Result$SignerInfo;

    move-result-object v6

    invoke-interface {v8, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0}, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$Result;->containsErrors()Z

    move-result v6

    if-eqz v6, :cond_3

    return-object v0

    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_4
    iget-object p1, v2, Lcom/android/apksig/internal/apk/v4/V4Signature$HashingInfo;->rawRootHash:[B

    invoke-static {p0, v3, p1, v1}, Lcom/android/apksig/internal/apk/v4/V4SchemeVerifier;->verifyRootHashAndTree(Lcom/android/apksig/util/DataSource;Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$Result$SignerInfo;[B[B)V

    invoke-virtual {v0}, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$Result;->containsErrors()Z

    move-result p0

    if-nez p0, :cond_5

    const/4 p0, 0x1

    iput-boolean p0, v0, Lcom/android/apksig/internal/apk/ApkSigResult;->verified:Z

    :cond_5
    return-object v0

    :catchall_0
    move-exception p0

    :try_start_1
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_1
    throw p0
.end method

.method private static verifyRootHashAndTree(Lcom/android/apksig/util/DataSource;Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$Result$SignerInfo;[B[B)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    invoke-static {p0}, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils;->computeChunkVerityTreeAndDigest(Lcom/android/apksig/util/DataSource;)Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$VerityTreeAndDigest;

    move-result-object p0

    iget-object v0, p0, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$VerityTreeAndDigest;->contentDigestAlgorithm:Lcom/android/apksig/internal/apk/ContentDigestAlgorithm;

    iget-object v1, p0, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$VerityTreeAndDigest;->rootHash:[B

    iget-object p0, p0, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$VerityTreeAndDigest;->tree:[B

    invoke-static {p2, v1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    if-nez v2, :cond_0

    sget-object p0, Lcom/android/apksig/ApkVerifier$Issue;->V4_SIG_APK_ROOT_DID_NOT_VERIFY:Lcom/android/apksig/ApkVerifier$Issue;

    invoke-static {p2}, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils;->toHex([B)Ljava/lang/String;

    move-result-object p2

    invoke-static {v1}, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils;->toHex([B)Ljava/lang/String;

    move-result-object p3

    filled-new-array {v0, p2, p3}, [Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p1, p0, p2}, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$Result$SignerInfo;->addError(Lcom/android/apksig/ApkVerifier$Issue;[Ljava/lang/Object;)V

    return-void

    :cond_0
    if-eqz p3, :cond_1

    invoke-static {p3, p0}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p0

    if-nez p0, :cond_1

    sget-object p0, Lcom/android/apksig/ApkVerifier$Issue;->V4_SIG_APK_TREE_DID_NOT_VERIFY:Lcom/android/apksig/ApkVerifier$Issue;

    invoke-static {p2}, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils;->toHex([B)Ljava/lang/String;

    move-result-object p2

    invoke-static {v1}, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils;->toHex([B)Ljava/lang/String;

    move-result-object p3

    filled-new-array {v0, p2, p3}, [Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p1, p0, p2}, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$Result$SignerInfo;->addError(Lcom/android/apksig/ApkVerifier$Issue;[Ljava/lang/Object;)V

    return-void

    :cond_1
    iget-object p0, p1, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$Result$SignerInfo;->verifiedContentDigests:Ljava/util/Map;

    invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
