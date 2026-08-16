.class Lcom/android/apksig/internal/apk/stamp/SourceStampVerifier;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static parseStampAttributes(Ljava/nio/ByteBuffer;Ljava/security/cert/X509Certificate;Lcom/android/apksig/internal/apk/ApkSignerInfo;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/apksig/apk/ApkFormatException;
        }
    .end annotation

    invoke-static {p0}, Lcom/android/apksig/internal/apk/ApkSigningBlockUtilsLite;->getLengthPrefixedSlice(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    move-result-object p0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Ljava/nio/Buffer;->hasRemaining()Z

    move-result v1

    if-eqz v1, :cond_3

    add-int/lit8 v0, v0, 0x1

    :try_start_0
    invoke-static {p0}, Lcom/android/apksig/internal/apk/ApkSigningBlockUtilsLite;->getLengthPrefixedSlice(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v2

    invoke-static {v1}, Lcom/android/apksig/internal/util/ByteBufferUtils;->toByteArray(Ljava/nio/ByteBuffer;)[B

    move-result-object v1

    const v3, -0x629cfc09

    if-ne v2, v3, :cond_0

    invoke-static {v1, p1, p2}, Lcom/android/apksig/internal/apk/stamp/SourceStampVerifier;->readStampCertificateLineage([BLjava/security/cert/X509Certificate;Lcom/android/apksig/internal/apk/ApkSignerInfo;)V

    goto :goto_0

    :cond_0
    const v3, -0x1bc3a6ba

    if-ne v2, v3, :cond_2

    invoke-static {v1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    sget-object v2, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    if-lez v3, :cond_1

    iput-wide v1, p2, Lcom/android/apksig/internal/apk/ApkSignerInfo;->timestamp:J

    goto :goto_0

    :cond_1
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v2, 0x26

    invoke-virtual {p2, v2, v1}, Lcom/android/apksig/internal/apk/ApkSignerInfo;->addWarning(I[Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v2, 0x20

    invoke-virtual {p2, v2, v1}, Lcom/android/apksig/internal/apk/ApkSignerInfo;->addWarning(I[Ljava/lang/Object;)V
    :try_end_0
    .catch Lcom/android/apksig/apk/ApkFormatException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/nio/BufferUnderflowException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const/16 p1, 0x1f

    invoke-virtual {p2, p1, p0}, Lcom/android/apksig/internal/apk/ApkSignerInfo;->addWarning(I[Ljava/lang/Object;)V

    :cond_3
    return-void
.end method

.method private static readStampCertificateLineage([BLjava/security/cert/X509Certificate;Lcom/android/apksig/internal/apk/ApkSignerInfo;)V
    .locals 5

    const/16 v0, 0x22

    const/4 v1, 0x0

    :try_start_0
    invoke-static {p0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p0

    sget-object v2, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {p0, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object p0

    invoke-static {p0}, Lcom/android/apksig/internal/apk/stamp/SourceStampCertificateLineage;->readSigningCertificateLineage(Ljava/nio/ByteBuffer;)Ljava/util/List;

    move-result-object p0

    move v2, v1

    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    iget-object v3, p2, Lcom/android/apksig/internal/apk/ApkSignerInfo;->certificateLineage:Ljava/util/List;

    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/apksig/internal/apk/stamp/SourceStampCertificateLineage$SigningCertificateNode;

    iget-object v4, v4, Lcom/android/apksig/internal/apk/stamp/SourceStampCertificateLineage$SigningCertificateNode;->signingCert:Ljava/security/cert/X509Certificate;

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    iget-object p0, p2, Lcom/android/apksig/internal/apk/ApkSignerInfo;->certificateLineage:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    new-array p0, v1, [Ljava/lang/Object;

    invoke-virtual {p2, v0, p0}, Lcom/android/apksig/internal/apk/ApkSignerInfo;->addWarning(I[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    const/16 p0, 0x21

    new-array p1, v1, [Ljava/lang/Object;

    invoke-virtual {p2, p0, p1}, Lcom/android/apksig/internal/apk/ApkSignerInfo;->addWarning(I[Ljava/lang/Object;)V

    goto :goto_1

    :catch_1
    new-array p0, v1, [Ljava/lang/Object;

    invoke-virtual {p2, v0, p0}, Lcom/android/apksig/internal/apk/ApkSignerInfo;->addWarning(I[Ljava/lang/Object;)V

    goto :goto_1

    :catch_2
    const/16 p0, 0x23

    new-array p1, v1, [Ljava/lang/Object;

    invoke-virtual {p2, p0, p1}, Lcom/android/apksig/internal/apk/ApkSignerInfo;->addWarning(I[Ljava/lang/Object;)V

    :cond_1
    :goto_1
    return-void
.end method

.method private static verifySourceStampCertificate(Ljava/nio/ByteBuffer;Ljava/security/cert/CertificateFactory;[BLcom/android/apksig/internal/apk/ApkSignerInfo;)Ljava/security/cert/X509Certificate;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Lcom/android/apksig/apk/ApkFormatException;
        }
    .end annotation

    invoke-static {p0}, Lcom/android/apksig/internal/apk/ApkSigningBlockUtilsLite;->readLengthPrefixedByteArray(Ljava/nio/ByteBuffer;)[B

    move-result-object p0

    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-virtual {p1, v1}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object p1

    check-cast p1, Ljava/security/cert/X509Certificate;
    :try_end_0
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_0

    new-instance v1, Lcom/android/apksig/internal/util/GuaranteedEncodedFormX509Certificate;

    invoke-direct {v1, p1, p0}, Lcom/android/apksig/internal/util/GuaranteedEncodedFormX509Certificate;-><init>(Ljava/security/cert/X509Certificate;[B)V

    iget-object p1, p3, Lcom/android/apksig/internal/apk/ApkSignerInfo;->certs:Ljava/util/List;

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string p1, "SHA-256"

    invoke-static {p1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object p1

    invoke-virtual {p1, p0}, Ljava/security/MessageDigest;->update([B)V

    invoke-virtual {p1}, Ljava/security/MessageDigest;->digest()[B

    move-result-object p0

    invoke-static {p2, p0}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p1

    if-nez p1, :cond_0

    invoke-static {p0}, Lcom/android/apksig/internal/apk/ApkSigningBlockUtilsLite;->toHex([B)Ljava/lang/String;

    move-result-object p0

    invoke-static {p2}, Lcom/android/apksig/internal/apk/ApkSigningBlockUtilsLite;->toHex([B)Ljava/lang/String;

    move-result-object p1

    filled-new-array {p0, p1}, [Ljava/lang/Object;

    move-result-object p0

    const/16 p1, 0x1b

    invoke-virtual {p3, p1, p0}, Lcom/android/apksig/internal/apk/ApkSignerInfo;->addWarning(I[Ljava/lang/Object;)V

    return-object v0

    :cond_0
    return-object v1

    :catch_0
    move-exception p0

    const/16 p1, 0x12

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {p3, p1, p0}, Lcom/android/apksig/internal/apk/ApkSignerInfo;->addWarning(I[Ljava/lang/Object;)V

    return-object v0
.end method

.method private static verifySourceStampSignature([BIILjava/security/cert/X509Certificate;Ljava/nio/ByteBuffer;Lcom/android/apksig/internal/apk/ApkSignerInfo;)V
    .locals 7

    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    invoke-virtual {p4}, Ljava/nio/Buffer;->hasRemaining()Z

    move-result v4

    if-eqz v4, :cond_1

    add-int/2addr v3, v1

    :try_start_0
    invoke-static {p4}, Lcom/android/apksig/internal/apk/ApkSigningBlockUtilsLite;->getLengthPrefixedSlice(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v5

    invoke-static {v4}, Lcom/android/apksig/internal/apk/ApkSigningBlockUtilsLite;->readLengthPrefixedByteArray(Ljava/nio/ByteBuffer;)[B

    move-result-object v4

    invoke-static {v5}, Lcom/android/apksig/internal/apk/SignatureAlgorithm;->findById(I)Lcom/android/apksig/internal/apk/SignatureAlgorithm;

    move-result-object v6

    if-nez v6, :cond_0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v4

    const/16 v5, 0x13

    invoke-virtual {p5, v5, v4}, Lcom/android/apksig/internal/apk/ApkSignerInfo;->addWarning(I[Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    new-instance v5, Lcom/android/apksig/internal/apk/ApkSupportedSignature;

    invoke-direct {v5, v6, v4}, Lcom/android/apksig/internal/apk/ApkSupportedSignature;-><init>(Lcom/android/apksig/internal/apk/SignatureAlgorithm;[B)V

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lcom/android/apksig/apk/ApkFormatException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/nio/BufferUnderflowException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const/16 p1, 0x14

    invoke-virtual {p5, p1, p0}, Lcom/android/apksig/internal/apk/ApkSignerInfo;->addWarning(I[Ljava/lang/Object;)V

    return-void

    :cond_1
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result p4

    if-eqz p4, :cond_2

    const/16 p0, 0x11

    new-array p1, v2, [Ljava/lang/Object;

    invoke-virtual {p5, p0, p1}, Lcom/android/apksig/internal/apk/ApkSignerInfo;->addWarning(I[Ljava/lang/Object;)V

    return-void

    :cond_2
    :try_start_1
    invoke-static {v0, p1, p2, v1}, Lcom/android/apksig/internal/apk/ApkSigningBlockUtilsLite;->getSignaturesToVerify(Ljava/util/List;IIZ)Ljava/util/List;

    move-result-object p1
    :try_end_1
    .catch Lcom/android/apksig/internal/apk/NoApkSupportedSignaturesException; {:try_start_1 .. :try_end_1} :catch_5

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/apksig/internal/apk/ApkSupportedSignature;

    iget-object p4, p2, Lcom/android/apksig/internal/apk/ApkSupportedSignature;->algorithm:Lcom/android/apksig/internal/apk/SignatureAlgorithm;

    invoke-virtual {p4}, Lcom/android/apksig/internal/apk/SignatureAlgorithm;->getJcaSignatureAlgorithmAndParams()Lcom/android/apksig/internal/util/Pair;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/apksig/internal/util/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p4}, Lcom/android/apksig/internal/apk/SignatureAlgorithm;->getJcaSignatureAlgorithmAndParams()Lcom/android/apksig/internal/util/Pair;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/apksig/internal/util/Pair;->getSecond()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/security/spec/AlgorithmParameterSpec;

    invoke-virtual {p3}, Ljava/security/cert/Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v2

    :try_start_2
    invoke-static {v0}, Ljava/security/Signature;->getInstance(Ljava/lang/String;)Ljava/security/Signature;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/security/Signature;->initVerify(Ljava/security/PublicKey;)V

    if-eqz v1, :cond_4

    invoke-virtual {v0, v1}, Ljava/security/Signature;->setParameter(Ljava/security/spec/AlgorithmParameterSpec;)V

    goto :goto_1

    :catch_1
    move-exception p0

    goto :goto_2

    :catch_2
    move-exception p0

    goto :goto_2

    :catch_3
    move-exception p0

    goto :goto_2

    :catch_4
    move-exception p0

    goto :goto_2

    :cond_4
    :goto_1
    invoke-virtual {v0, p0}, Ljava/security/Signature;->update([B)V

    iget-object p2, p2, Lcom/android/apksig/internal/apk/ApkSupportedSignature;->signature:[B

    invoke-virtual {v0, p2}, Ljava/security/Signature;->verify([B)Z

    move-result p2

    if-nez p2, :cond_3

    filled-new-array {p4}, [Ljava/lang/Object;

    move-result-object p0

    const/16 p1, 0x15

    invoke-virtual {p5, p1, p0}, Lcom/android/apksig/internal/apk/ApkSignerInfo;->addWarning(I[Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/security/InvalidKeyException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/security/SignatureException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_2 .. :try_end_2} :catch_1

    return-void

    :goto_2
    const/16 p1, 0x16

    filled-new-array {p4, p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {p5, p1, p0}, Lcom/android/apksig/internal/apk/ApkSignerInfo;->addWarning(I[Ljava/lang/Object;)V

    :cond_5
    return-void

    :catch_5
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_3
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_7

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/android/apksig/internal/apk/ApkSupportedSignature;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result p4

    if-lez p4, :cond_6

    const-string p4, ", "

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_6
    iget-object p3, p3, Lcom/android/apksig/internal/apk/ApkSupportedSignature;->algorithm:Lcom/android/apksig/internal/apk/SignatureAlgorithm;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_3

    :cond_7
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1, p0}, [Ljava/lang/Object;

    move-result-object p0

    const/16 p1, 0x1a

    invoke-virtual {p5, p1, p0}, Lcom/android/apksig/internal/apk/ApkSignerInfo;->addWarning(I[Ljava/lang/Object;)V

    return-void
.end method

.method public static verifyV1SourceStamp(Ljava/nio/ByteBuffer;Ljava/security/cert/CertificateFactory;Lcom/android/apksig/internal/apk/ApkSignerInfo;[B[BII)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/apksig/apk/ApkFormatException;,
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    invoke-static {p0, p1, p4, p2}, Lcom/android/apksig/internal/apk/stamp/SourceStampVerifier;->verifySourceStampCertificate(Ljava/nio/ByteBuffer;Ljava/security/cert/CertificateFactory;[BLcom/android/apksig/internal/apk/ApkSignerInfo;)Ljava/security/cert/X509Certificate;

    move-result-object v3

    invoke-virtual {p2}, Lcom/android/apksig/internal/apk/ApkSignerInfo;->containsWarnings()Z

    move-result p1

    if-nez p1, :cond_1

    invoke-virtual {p2}, Lcom/android/apksig/internal/apk/ApkSignerInfo;->containsErrors()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p0}, Lcom/android/apksig/internal/apk/ApkSigningBlockUtilsLite;->getLengthPrefixedSlice(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    move-result-object v4

    move-object v0, p3

    move v1, p5

    move v2, p6

    move-object v5, p2

    invoke-static/range {v0 .. v5}, Lcom/android/apksig/internal/apk/stamp/SourceStampVerifier;->verifySourceStampSignature([BIILjava/security/cert/X509Certificate;Ljava/nio/ByteBuffer;Lcom/android/apksig/internal/apk/ApkSignerInfo;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public static verifyV2SourceStamp(Ljava/nio/ByteBuffer;Ljava/security/cert/CertificateFactory;Lcom/android/apksig/internal/apk/ApkSignerInfo;Ljava/util/Map;[BII)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/nio/ByteBuffer;",
            "Ljava/security/cert/CertificateFactory;",
            "Lcom/android/apksig/internal/apk/ApkSignerInfo;",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "[B>;[BII)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/apksig/apk/ApkFormatException;,
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    invoke-static {p0, p1, p4, p2}, Lcom/android/apksig/internal/apk/stamp/SourceStampVerifier;->verifySourceStampCertificate(Ljava/nio/ByteBuffer;Ljava/security/cert/CertificateFactory;[BLcom/android/apksig/internal/apk/ApkSignerInfo;)Ljava/security/cert/X509Certificate;

    move-result-object p1

    invoke-virtual {p2}, Lcom/android/apksig/internal/apk/ApkSignerInfo;->containsWarnings()Z

    move-result p4

    if-nez p4, :cond_8

    invoke-virtual {p2}, Lcom/android/apksig/internal/apk/ApkSignerInfo;->containsErrors()Z

    move-result p4

    if-eqz p4, :cond_0

    goto/16 :goto_2

    :cond_0
    invoke-static {p0}, Lcom/android/apksig/internal/apk/ApkSigningBlockUtilsLite;->getLengthPrefixedSlice(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    move-result-object p4

    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    :goto_0
    invoke-virtual {p4}, Ljava/nio/Buffer;->hasRemaining()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p4}, Lcom/android/apksig/internal/apk/ApkSigningBlockUtilsLite;->getLengthPrefixedSlice(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v1

    invoke-static {v0}, Lcom/android/apksig/internal/apk/ApkSigningBlockUtilsLite;->getLengthPrefixedSlice(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v6, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    invoke-interface {p3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p3

    invoke-interface {p3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :cond_2
    :goto_1
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result p4

    if-eqz p4, :cond_6

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/util/Map$Entry;

    invoke-interface {p4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0x1f

    if-ne v0, v1, :cond_3

    goto :goto_1

    :cond_3
    invoke-interface {p4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v6, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    const/4 p0, 0x0

    new-array p0, p0, [Ljava/lang/Object;

    const/16 p1, 0x11

    invoke-virtual {p2, p1, p0}, Lcom/android/apksig/internal/apk/ApkSignerInfo;->addWarning(I[Ljava/lang/Object;)V

    return-void

    :cond_4
    invoke-interface {p4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    invoke-interface {p4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p4

    invoke-interface {v6, p4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p4

    move-object v4, p4

    check-cast v4, Ljava/nio/ByteBuffer;

    move v1, p5

    move v2, p6

    move-object v3, p1

    move-object v5, p2

    invoke-static/range {v0 .. v5}, Lcom/android/apksig/internal/apk/stamp/SourceStampVerifier;->verifySourceStampSignature([BIILjava/security/cert/X509Certificate;Ljava/nio/ByteBuffer;Lcom/android/apksig/internal/apk/ApkSignerInfo;)V

    invoke-virtual {p2}, Lcom/android/apksig/internal/apk/ApkSignerInfo;->containsWarnings()Z

    move-result p4

    if-nez p4, :cond_5

    invoke-virtual {p2}, Lcom/android/apksig/internal/apk/ApkSignerInfo;->containsErrors()Z

    move-result p4

    if-eqz p4, :cond_2

    :cond_5
    return-void

    :cond_6
    invoke-virtual {p0}, Ljava/nio/Buffer;->hasRemaining()Z

    move-result p3

    if-eqz p3, :cond_8

    invoke-static {p0}, Lcom/android/apksig/internal/apk/ApkSigningBlockUtilsLite;->getLengthPrefixedSlice(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    move-result-object p3

    invoke-static {p0}, Lcom/android/apksig/internal/apk/ApkSigningBlockUtilsLite;->getLengthPrefixedSlice(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    move-result-object v4

    invoke-virtual {p3}, Ljava/nio/Buffer;->remaining()I

    move-result p0

    new-array v0, p0, [B

    invoke-virtual {p3, v0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    invoke-virtual {p3}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    move v1, p5

    move v2, p6

    move-object v3, p1

    move-object v5, p2

    invoke-static/range {v0 .. v5}, Lcom/android/apksig/internal/apk/stamp/SourceStampVerifier;->verifySourceStampSignature([BIILjava/security/cert/X509Certificate;Ljava/nio/ByteBuffer;Lcom/android/apksig/internal/apk/ApkSignerInfo;)V

    invoke-virtual {p2}, Lcom/android/apksig/internal/apk/ApkSignerInfo;->containsErrors()Z

    move-result p0

    if-nez p0, :cond_8

    invoke-virtual {p2}, Lcom/android/apksig/internal/apk/ApkSignerInfo;->containsWarnings()Z

    move-result p0

    if-eqz p0, :cond_7

    goto :goto_2

    :cond_7
    invoke-static {p3, p1, p2}, Lcom/android/apksig/internal/apk/stamp/SourceStampVerifier;->parseStampAttributes(Ljava/nio/ByteBuffer;Ljava/security/cert/X509Certificate;Lcom/android/apksig/internal/apk/ApkSignerInfo;)V

    nop

    :cond_8
    :goto_2
    return-void
.end method
