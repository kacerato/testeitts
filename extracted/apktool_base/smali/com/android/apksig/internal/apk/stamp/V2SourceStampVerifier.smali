.class public abstract Lcom/android/apksig/internal/apk/stamp/V2SourceStampVerifier;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getApkDigests(Ljava/util/Map;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Lcom/android/apksig/internal/apk/ContentDigestAlgorithm;",
            "[B>;)",
            "Ljava/util/List<",
            "Lcom/android/apksig/internal/util/Pair<",
            "Ljava/lang/Integer;",
            "[B>;>;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/apksig/internal/apk/ContentDigestAlgorithm;

    invoke-virtual {v2}, Lcom/android/apksig/internal/apk/ContentDigestAlgorithm;->getId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    invoke-static {v2, v1}, Lcom/android/apksig/internal/util/Pair;->of(Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/apksig/internal/util/Pair;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    new-instance p0, Lcom/android/apksig/internal/apk/stamp/V2SourceStampVerifier$1;

    invoke-direct {p0}, Lcom/android/apksig/internal/apk/stamp/V2SourceStampVerifier$1;-><init>()V

    invoke-static {v0, p0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    return-object v0
.end method

.method private static getSignatureSchemeDigests(Ljava/util/Map;)Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/util/Map<",
            "Lcom/android/apksig/internal/apk/ContentDigestAlgorithm;",
            "[B>;>;)",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "[B>;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    invoke-static {v2}, Lcom/android/apksig/internal/apk/stamp/V2SourceStampVerifier;->getApkDigests(Ljava/util/Map;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-static {v2}, Lcom/android/apksig/internal/apk/ApkSigningBlockUtilsLite;->encodeAsSequenceOfLengthPrefixedPairsOfIntAndLengthPrefixedBytes(Ljava/util/List;)[B

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public static verify(Lcom/android/apksig/util/DataSource;Lcom/android/apksig/zip/ZipSections;[BLjava/util/Map;II)Lcom/android/apksig/internal/apk/ApkSigResult;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/apksig/util/DataSource;",
            "Lcom/android/apksig/zip/ZipSections;",
            "[B",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/util/Map<",
            "Lcom/android/apksig/internal/apk/ContentDigestAlgorithm;",
            "[B>;>;II)",
            "Lcom/android/apksig/internal/apk/ApkSigResult;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/NoSuchAlgorithmException;,
            Lcom/android/apksig/internal/apk/SignatureNotFoundException;
        }
    .end annotation

    .line 1
    new-instance v6, Lcom/android/apksig/internal/apk/ApkSigResult;

    const/4 v0, 0x0

    invoke-direct {v6, v0}, Lcom/android/apksig/internal/apk/ApkSigResult;-><init>(I)V

    const v0, 0x6dff800d

    .line 2
    invoke-static {p0, p1, v0}, Lcom/android/apksig/internal/apk/ApkSigningBlockUtilsLite;->findSignature(Lcom/android/apksig/util/DataSource;Lcom/android/apksig/zip/ZipSections;I)Lcom/android/apksig/internal/apk/SignatureInfo;

    move-result-object p0

    .line 3
    iget-object v0, p0, Lcom/android/apksig/internal/apk/SignatureInfo;->signatureBlock:Ljava/nio/ByteBuffer;

    move-object v1, p2

    move-object v2, p3

    move v3, p4

    move v4, p5

    move-object v5, v6

    invoke-static/range {v0 .. v5}, Lcom/android/apksig/internal/apk/stamp/V2SourceStampVerifier;->verify(Ljava/nio/ByteBuffer;[BLjava/util/Map;IILcom/android/apksig/internal/apk/ApkSigResult;)V

    return-object v6
.end method

.method private static verify(Ljava/nio/ByteBuffer;[BLjava/util/Map;IILcom/android/apksig/internal/apk/ApkSigResult;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/nio/ByteBuffer;",
            "[B",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/util/Map<",
            "Lcom/android/apksig/internal/apk/ContentDigestAlgorithm;",
            "[B>;>;II",
            "Lcom/android/apksig/internal/apk/ApkSigResult;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .line 4
    new-instance v7, Lcom/android/apksig/internal/apk/ApkSignerInfo;

    invoke-direct {v7}, Lcom/android/apksig/internal/apk/ApkSignerInfo;-><init>()V

    .line 5
    iget-object v0, p5, Lcom/android/apksig/internal/apk/ApkSigResult;->mSigners:Ljava/util/List;

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v8, 0x0

    .line 6
    :try_start_0
    const-string v0, "X.509"

    invoke-static {v0}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v1

    .line 7
    invoke-static {p0}, Lcom/android/apksig/internal/apk/ApkSigningBlockUtilsLite;->getLengthPrefixedSlice(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 8
    invoke-static {p2}, Lcom/android/apksig/internal/apk/stamp/V2SourceStampVerifier;->getSignatureSchemeDigests(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v3

    move-object v2, v7

    move-object v4, p1

    move v5, p3

    move v6, p4

    .line 9
    invoke-static/range {v0 .. v6}, Lcom/android/apksig/internal/apk/stamp/SourceStampVerifier;->verifyV2SourceStamp(Ljava/nio/ByteBuffer;Ljava/security/cert/CertificateFactory;Lcom/android/apksig/internal/apk/ApkSignerInfo;Ljava/util/Map;[BII)V

    .line 10
    invoke-virtual {p5}, Lcom/android/apksig/internal/apk/ApkSigResult;->containsErrors()Z

    move-result p0

    if-nez p0, :cond_0

    invoke-virtual {p5}, Lcom/android/apksig/internal/apk/ApkSigResult;->containsWarnings()Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :catch_0
    move-exception p0

    goto :goto_2

    :cond_0
    move p0, v8

    :goto_0
    iput-boolean p0, p5, Lcom/android/apksig/internal/apk/ApkSigResult;->verified:Z
    :try_end_0
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/android/apksig/apk/ApkFormatException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/nio/BufferUnderflowException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_1

    :catch_1
    const/16 p0, 0x14

    .line 11
    new-array p1, v8, [Ljava/lang/Object;

    invoke-virtual {v7, p0, p1}, Lcom/android/apksig/internal/apk/ApkSignerInfo;->addWarning(I[Ljava/lang/Object;)V

    :goto_1
    return-void

    .line 12
    :goto_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Failed to obtain X.509 CertificateFactory"

    invoke-direct {p1, p2, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method
