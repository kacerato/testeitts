.class public Lcom/android/apksig/internal/apk/v3/V3SchemeSigner;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/apksig/internal/apk/v3/V3SchemeSigner$Builder;,
        Lcom/android/apksig/internal/apk/v3/V3SchemeSigner$V3SignatureSchemeBlock;
    }
.end annotation


# static fields
.field public static final APK_SIGNATURE_SCHEME_V3_BLOCK_ID:I = -0xfac9740

.field public static final PROOF_OF_ROTATION_ATTR_ID:I = 0x3ba06f8c


# instance fields
.field private final mBeforeCentralDir:Lcom/android/apksig/util/DataSource;

.field private final mBlockId:I

.field private final mCentralDir:Lcom/android/apksig/util/DataSource;

.field private final mEocd:Lcom/android/apksig/util/DataSource;

.field private final mExecutor:Lcom/android/apksig/util/RunnablesExecutor;

.field private final mOptionalRotationMinSdkVersion:Lcom/android/apksig/internal/compat/OptionalIntCompat;

.field private final mRotationTargetsDevRelease:Z

.field private final mSignerConfigs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$SignerConfig;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/android/apksig/util/DataSource;Lcom/android/apksig/util/DataSource;Lcom/android/apksig/util/DataSource;Ljava/util/List;Lcom/android/apksig/util/RunnablesExecutor;ILcom/android/apksig/internal/compat/OptionalIntCompat;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/apksig/util/DataSource;",
            "Lcom/android/apksig/util/DataSource;",
            "Lcom/android/apksig/util/DataSource;",
            "Ljava/util/List<",
            "Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$SignerConfig;",
            ">;",
            "Lcom/android/apksig/util/RunnablesExecutor;",
            "I",
            "Lcom/android/apksig/internal/compat/OptionalIntCompat;",
            "Z)V"
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/android/apksig/internal/apk/v3/V3SchemeSigner;->mBeforeCentralDir:Lcom/android/apksig/util/DataSource;

    .line 4
    iput-object p2, p0, Lcom/android/apksig/internal/apk/v3/V3SchemeSigner;->mCentralDir:Lcom/android/apksig/util/DataSource;

    .line 5
    iput-object p3, p0, Lcom/android/apksig/internal/apk/v3/V3SchemeSigner;->mEocd:Lcom/android/apksig/util/DataSource;

    .line 6
    iput-object p4, p0, Lcom/android/apksig/internal/apk/v3/V3SchemeSigner;->mSignerConfigs:Ljava/util/List;

    .line 7
    iput-object p5, p0, Lcom/android/apksig/internal/apk/v3/V3SchemeSigner;->mExecutor:Lcom/android/apksig/util/RunnablesExecutor;

    .line 8
    iput p6, p0, Lcom/android/apksig/internal/apk/v3/V3SchemeSigner;->mBlockId:I

    .line 9
    iput-object p7, p0, Lcom/android/apksig/internal/apk/v3/V3SchemeSigner;->mOptionalRotationMinSdkVersion:Lcom/android/apksig/internal/compat/OptionalIntCompat;

    .line 10
    iput-boolean p8, p0, Lcom/android/apksig/internal/apk/v3/V3SchemeSigner;->mRotationTargetsDevRelease:Z

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/apksig/util/DataSource;Lcom/android/apksig/util/DataSource;Lcom/android/apksig/util/DataSource;Ljava/util/List;Lcom/android/apksig/util/RunnablesExecutor;ILcom/android/apksig/internal/compat/OptionalIntCompat;ZLcom/android/apksig/internal/apk/v3/V3SchemeSigner$1;)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p8}, Lcom/android/apksig/internal/apk/v3/V3SchemeSigner;-><init>(Lcom/android/apksig/util/DataSource;Lcom/android/apksig/util/DataSource;Lcom/android/apksig/util/DataSource;Ljava/util/List;Lcom/android/apksig/util/RunnablesExecutor;ILcom/android/apksig/internal/compat/OptionalIntCompat;Z)V

    return-void
.end method

.method private encodeSignedData(Lcom/android/apksig/internal/apk/v3/V3SchemeSigner$V3SignatureSchemeBlock$SignedData;)[B
    .locals 5

    iget-object v0, p1, Lcom/android/apksig/internal/apk/v3/V3SchemeSigner$V3SignatureSchemeBlock$SignedData;->digests:Ljava/util/List;

    invoke-static {v0}, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils;->encodeAsSequenceOfLengthPrefixedPairsOfIntAndLengthPrefixedBytes(Ljava/util/List;)[B

    move-result-object v0

    invoke-static {v0}, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils;->encodeAsLengthPrefixedElement([B)[B

    move-result-object v0

    iget-object v1, p1, Lcom/android/apksig/internal/apk/v3/V3SchemeSigner$V3SignatureSchemeBlock$SignedData;->certificates:Ljava/util/List;

    invoke-static {v1}, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils;->encodeAsSequenceOfLengthPrefixedElements(Ljava/util/List;)[B

    move-result-object v1

    invoke-static {v1}, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils;->encodeAsLengthPrefixedElement([B)[B

    move-result-object v1

    iget-object v2, p1, Lcom/android/apksig/internal/apk/v3/V3SchemeSigner$V3SignatureSchemeBlock$SignedData;->additionalAttributes:[B

    invoke-static {v2}, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils;->encodeAsLengthPrefixedElement([B)[B

    move-result-object v2

    array-length v3, v0

    array-length v4, v1

    add-int/2addr v3, v4

    add-int/lit8 v3, v3, 0x8

    array-length v4, v2

    add-int/2addr v3, v4

    invoke-static {v3}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v3

    sget-object v4, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v3, v4}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    invoke-virtual {v3, v0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    invoke-virtual {v3, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    iget v0, p1, Lcom/android/apksig/internal/apk/v3/V3SchemeSigner$V3SignatureSchemeBlock$SignedData;->minSdkVersion:I

    invoke-virtual {v3, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    iget p1, p1, Lcom/android/apksig/internal/apk/v3/V3SchemeSigner$V3SignatureSchemeBlock$SignedData;->maxSdkVersion:I

    invoke-virtual {v3, p1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    invoke-virtual {v3, v2}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p1

    return-object p1
.end method

.method private encodeSigner(Lcom/android/apksig/internal/apk/v3/V3SchemeSigner$V3SignatureSchemeBlock$Signer;)[B
    .locals 5

    iget-object v0, p1, Lcom/android/apksig/internal/apk/v3/V3SchemeSigner$V3SignatureSchemeBlock$Signer;->signedData:[B

    invoke-static {v0}, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils;->encodeAsLengthPrefixedElement([B)[B

    move-result-object v0

    iget-object v1, p1, Lcom/android/apksig/internal/apk/v3/V3SchemeSigner$V3SignatureSchemeBlock$Signer;->signatures:Ljava/util/List;

    invoke-static {v1}, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils;->encodeAsSequenceOfLengthPrefixedPairsOfIntAndLengthPrefixedBytes(Ljava/util/List;)[B

    move-result-object v1

    invoke-static {v1}, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils;->encodeAsLengthPrefixedElement([B)[B

    move-result-object v1

    iget-object v2, p1, Lcom/android/apksig/internal/apk/v3/V3SchemeSigner$V3SignatureSchemeBlock$Signer;->publicKey:[B

    invoke-static {v2}, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils;->encodeAsLengthPrefixedElement([B)[B

    move-result-object v2

    array-length v3, v0

    add-int/lit8 v3, v3, 0x8

    array-length v4, v1

    add-int/2addr v3, v4

    array-length v4, v2

    add-int/2addr v3, v4

    invoke-static {v3}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v3

    sget-object v4, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v3, v4}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    invoke-virtual {v3, v0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    iget v0, p1, Lcom/android/apksig/internal/apk/v3/V3SchemeSigner$V3SignatureSchemeBlock$Signer;->minSdkVersion:I

    invoke-virtual {v3, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    iget p1, p1, Lcom/android/apksig/internal/apk/v3/V3SchemeSigner$V3SignatureSchemeBlock$Signer;->maxSdkVersion:I

    invoke-virtual {v3, p1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    invoke-virtual {v3, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    invoke-virtual {v3, v2}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p1

    return-object p1
.end method

.method private generateAdditionalAttributes(Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$SignerConfig;)[B
    .locals 4

    iget-object p1, p1, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$SignerConfig;->mSigningCertificateLineage:Lcom/android/apksig/SigningCertificateLineage;

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    invoke-static {p1}, Lcom/android/apksig/internal/apk/v3/V3SchemeSigner;->generateV3SignerAttribute(Lcom/android/apksig/SigningCertificateLineage;)[B

    move-result-object p1

    iget-boolean v1, p0, Lcom/android/apksig/internal/apk/v3/V3SchemeSigner;->mRotationTargetsDevRelease:Z

    if-eqz v1, :cond_1

    iget v1, p0, Lcom/android/apksig/internal/apk/v3/V3SchemeSigner;->mBlockId:I

    const v2, 0x1b93ad61

    if-eq v1, v2, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/android/apksig/internal/apk/v3/V3SchemeSigner;->generateV31RotationTargetsDevReleaseAttribute()[B

    move-result-object v1

    array-length v2, p1

    array-length v3, v1

    add-int/2addr v2, v3

    new-array v2, v2, [B

    array-length v3, p1

    invoke-static {p1, v0, v2, v0, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length p1, p1

    array-length v3, v1

    invoke-static {v1, v0, v2, p1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2

    :cond_1
    :goto_0
    return-object p1

    :cond_2
    iget-object p1, p0, Lcom/android/apksig/internal/apk/v3/V3SchemeSigner;->mOptionalRotationMinSdkVersion:Lcom/android/apksig/internal/compat/OptionalIntCompat;

    invoke-virtual {p1}, Lcom/android/apksig/internal/compat/OptionalIntCompat;->isPresent()Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/android/apksig/internal/apk/v3/V3SchemeSigner;->mOptionalRotationMinSdkVersion:Lcom/android/apksig/internal/compat/OptionalIntCompat;

    invoke-virtual {p1}, Lcom/android/apksig/internal/compat/OptionalIntCompat;->getAsInt()I

    move-result p1

    invoke-static {p1}, Lcom/android/apksig/internal/apk/v3/V3SchemeSigner;->generateV3RotationMinSdkVersionStrippingProtectionAttribute(I)[B

    move-result-object p1

    return-object p1

    :cond_3
    new-array p1, v0, [B

    return-object p1
.end method

.method public static generateApkSignatureSchemeV3Block(Lcom/android/apksig/util/RunnablesExecutor;Lcom/android/apksig/util/DataSource;Lcom/android/apksig/util/DataSource;Lcom/android/apksig/util/DataSource;Ljava/util/List;)Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$SigningSchemeBlockAndDigests;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/apksig/util/RunnablesExecutor;",
            "Lcom/android/apksig/util/DataSource;",
            "Lcom/android/apksig/util/DataSource;",
            "Lcom/android/apksig/util/DataSource;",
            "Ljava/util/List<",
            "Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$SignerConfig;",
            ">;)",
            "Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$SigningSchemeBlockAndDigests;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/InvalidKeyException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/SignatureException;
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/android/apksig/internal/apk/v3/V3SchemeSigner$Builder;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/android/apksig/internal/apk/v3/V3SchemeSigner$Builder;-><init>(Lcom/android/apksig/util/DataSource;Lcom/android/apksig/util/DataSource;Lcom/android/apksig/util/DataSource;Ljava/util/List;)V

    .line 2
    invoke-virtual {v0, p0}, Lcom/android/apksig/internal/apk/v3/V3SchemeSigner$Builder;->setRunnablesExecutor(Lcom/android/apksig/util/RunnablesExecutor;)Lcom/android/apksig/internal/apk/v3/V3SchemeSigner$Builder;

    move-result-object p0

    const p1, -0xfac9740

    .line 3
    invoke-virtual {p0, p1}, Lcom/android/apksig/internal/apk/v3/V3SchemeSigner$Builder;->setBlockId(I)Lcom/android/apksig/internal/apk/v3/V3SchemeSigner$Builder;

    move-result-object p0

    .line 4
    invoke-virtual {p0}, Lcom/android/apksig/internal/apk/v3/V3SchemeSigner$Builder;->build()Lcom/android/apksig/internal/apk/v3/V3SchemeSigner;

    move-result-object p0

    .line 5
    invoke-virtual {p0}, Lcom/android/apksig/internal/apk/v3/V3SchemeSigner;->generateApkSignatureSchemeV3BlockAndDigests()Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$SigningSchemeBlockAndDigests;

    move-result-object p0

    return-object p0
.end method

.method private generateApkSignatureSchemeV3Block(Ljava/util/Map;)Lcom/android/apksig/internal/util/Pair;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Lcom/android/apksig/internal/apk/ContentDigestAlgorithm;",
            "[B>;)",
            "Lcom/android/apksig/internal/util/Pair<",
            "[B",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/InvalidKeyException;,
            Ljava/security/SignatureException;
        }
    .end annotation

    .line 6
    const-string v0, " failed"

    const-string v1, "Signer #"

    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/android/apksig/internal/apk/v3/V3SchemeSigner;->mSignerConfigs:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 7
    iget-object v3, p0, Lcom/android/apksig/internal/apk/v3/V3SchemeSigner;->mSignerConfigs:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    const/4 v4, 0x0

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$SignerConfig;

    add-int/lit8 v4, v4, 0x1

    .line 8
    :try_start_0
    invoke-direct {p0, v5, p1}, Lcom/android/apksig/internal/apk/v3/V3SchemeSigner;->generateSignerBlock(Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$SignerConfig;Ljava/util/Map;)[B

    move-result-object v5
    :try_end_0
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/SignatureException; {:try_start_0 .. :try_end_0} :catch_0

    .line 9
    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :catch_0
    move-exception p1

    .line 10
    new-instance v2, Ljava/security/SignatureException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0, p1}, Ljava/security/SignatureException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    :catch_1
    move-exception p1

    .line 11
    new-instance v2, Ljava/security/InvalidKeyException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0, p1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 12
    :cond_0
    invoke-static {v2}, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils;->encodeAsSequenceOfLengthPrefixedElements(Ljava/util/List;)[B

    move-result-object p1

    filled-new-array {p1}, [[B

    move-result-object p1

    .line 13
    invoke-static {p1}, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils;->encodeAsSequenceOfLengthPrefixedElements([[B)[B

    move-result-object p1

    iget v0, p0, Lcom/android/apksig/internal/apk/v3/V3SchemeSigner;->mBlockId:I

    .line 14
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 15
    invoke-static {p1, v0}, Lcom/android/apksig/internal/util/Pair;->of(Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/apksig/internal/util/Pair;

    move-result-object p1

    return-object p1
.end method

.method private generateSignerBlock(Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$SignerConfig;Ljava/util/Map;)[B
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$SignerConfig;",
            "Ljava/util/Map<",
            "Lcom/android/apksig/internal/apk/ContentDigestAlgorithm;",
            "[B>;)[B"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/InvalidKeyException;,
            Ljava/security/SignatureException;
        }
    .end annotation

    iget-object v0, p1, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$SignerConfig;->certificates:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p1, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$SignerConfig;->certificates:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/cert/X509Certificate;

    invoke-virtual {v0}, Ljava/security/cert/Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v0

    invoke-static {v0}, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils;->encodePublicKey(Ljava/security/PublicKey;)[B

    move-result-object v0

    new-instance v1, Lcom/android/apksig/internal/apk/v3/V3SchemeSigner$V3SignatureSchemeBlock$SignedData;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/android/apksig/internal/apk/v3/V3SchemeSigner$V3SignatureSchemeBlock$SignedData;-><init>(Lcom/android/apksig/internal/apk/v3/V3SchemeSigner$1;)V

    :try_start_0
    iget-object v3, p1, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$SignerConfig;->certificates:Ljava/util/List;

    invoke-static {v3}, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils;->encodeCertificates(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    iput-object v3, v1, Lcom/android/apksig/internal/apk/v3/V3SchemeSigner$V3SignatureSchemeBlock$SignedData;->certificates:Ljava/util/List;
    :try_end_0
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    new-instance v3, Ljava/util/ArrayList;

    iget-object v4, p1, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$SignerConfig;->signatureAlgorithms:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    iget-object v4, p1, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$SignerConfig;->signatureAlgorithms:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/apksig/internal/apk/SignatureAlgorithm;

    invoke-virtual {v5}, Lcom/android/apksig/internal/apk/SignatureAlgorithm;->getContentDigestAlgorithm()Lcom/android/apksig/internal/apk/ContentDigestAlgorithm;

    move-result-object v6

    invoke-interface {p2, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [B

    if-eqz v7, :cond_0

    invoke-virtual {v5}, Lcom/android/apksig/internal/apk/SignatureAlgorithm;->getId()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v5, v7}, Lcom/android/apksig/internal/util/Pair;->of(Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/apksig/internal/util/Pair;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " content digest for "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " not computed"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    iput-object v3, v1, Lcom/android/apksig/internal/apk/v3/V3SchemeSigner$V3SignatureSchemeBlock$SignedData;->digests:Ljava/util/List;

    iget p2, p1, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$SignerConfig;->minSdkVersion:I

    iput p2, v1, Lcom/android/apksig/internal/apk/v3/V3SchemeSigner$V3SignatureSchemeBlock$SignedData;->minSdkVersion:I

    iget p2, p1, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$SignerConfig;->maxSdkVersion:I

    iput p2, v1, Lcom/android/apksig/internal/apk/v3/V3SchemeSigner$V3SignatureSchemeBlock$SignedData;->maxSdkVersion:I

    invoke-direct {p0, p1}, Lcom/android/apksig/internal/apk/v3/V3SchemeSigner;->generateAdditionalAttributes(Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$SignerConfig;)[B

    move-result-object p2

    iput-object p2, v1, Lcom/android/apksig/internal/apk/v3/V3SchemeSigner$V3SignatureSchemeBlock$SignedData;->additionalAttributes:[B

    new-instance p2, Lcom/android/apksig/internal/apk/v3/V3SchemeSigner$V3SignatureSchemeBlock$Signer;

    invoke-direct {p2, v2}, Lcom/android/apksig/internal/apk/v3/V3SchemeSigner$V3SignatureSchemeBlock$Signer;-><init>(Lcom/android/apksig/internal/apk/v3/V3SchemeSigner$1;)V

    invoke-direct {p0, v1}, Lcom/android/apksig/internal/apk/v3/V3SchemeSigner;->encodeSignedData(Lcom/android/apksig/internal/apk/v3/V3SchemeSigner$V3SignatureSchemeBlock$SignedData;)[B

    move-result-object v1

    iput-object v1, p2, Lcom/android/apksig/internal/apk/v3/V3SchemeSigner$V3SignatureSchemeBlock$Signer;->signedData:[B

    iget v2, p1, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$SignerConfig;->minSdkVersion:I

    iput v2, p2, Lcom/android/apksig/internal/apk/v3/V3SchemeSigner$V3SignatureSchemeBlock$Signer;->minSdkVersion:I

    iget v2, p1, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$SignerConfig;->maxSdkVersion:I

    iput v2, p2, Lcom/android/apksig/internal/apk/v3/V3SchemeSigner$V3SignatureSchemeBlock$Signer;->maxSdkVersion:I

    iput-object v0, p2, Lcom/android/apksig/internal/apk/v3/V3SchemeSigner$V3SignatureSchemeBlock$Signer;->publicKey:[B

    invoke-static {p1, v1}, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils;->generateSignaturesOverData(Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$SignerConfig;[B)Ljava/util/List;

    move-result-object p1

    iput-object p1, p2, Lcom/android/apksig/internal/apk/v3/V3SchemeSigner$V3SignatureSchemeBlock$Signer;->signatures:Ljava/util/List;

    invoke-direct {p0, p2}, Lcom/android/apksig/internal/apk/v3/V3SchemeSigner;->encodeSigner(Lcom/android/apksig/internal/apk/v3/V3SchemeSigner$V3SignatureSchemeBlock$Signer;)[B

    move-result-object p1

    return-object p1

    :catch_0
    move-exception p1

    new-instance p2, Ljava/security/SignatureException;

    const-string v0, "Failed to encode certificates"

    invoke-direct {p2, v0, p1}, Ljava/security/SignatureException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    :cond_2
    new-instance p1, Ljava/security/SignatureException;

    const-string p2, "No certificates configured for signer"

    invoke-direct {p1, p2}, Ljava/security/SignatureException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private static generateV31RotationTargetsDevReleaseAttribute()[B
    .locals 2

    const/16 v0, 0x8

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    const v1, -0x3d594c46

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    return-object v0
.end method

.method private static generateV3RotationMinSdkVersionStrippingProtectionAttribute(I)[B
    .locals 2

    const/16 v0, 0xc

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    const v1, 0x559f8b02

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p0

    return-object p0
.end method

.method public static generateV3SignerAttribute(Lcom/android/apksig/SigningCertificateLineage;)[B
    .locals 2

    invoke-virtual {p0}, Lcom/android/apksig/SigningCertificateLineage;->encodeSigningCertificateLineage()[B

    move-result-object p0

    array-length v0, p0

    add-int/lit8 v0, v0, 0x8

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    array-length v1, p0

    add-int/lit8 v1, v1, 0x4

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    const v1, 0x3ba06f8c

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p0

    return-object p0
.end method

.method public static getSuggestedSignatureAlgorithms(Ljava/security/PublicKey;IZZ)Ljava/util/List;
    .locals 1
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

    invoke-interface {p0}, Ljava/security/Key;->getAlgorithm()Ljava/lang/String;

    move-result-object p1

    const-string v0, "RSA"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    check-cast p0, Ljava/security/interfaces/RSAKey;

    invoke-interface {p0}, Ljava/security/interfaces/RSAKey;->getModulus()Ljava/math/BigInteger;

    move-result-object p0

    invoke-virtual {p0}, Ljava/math/BigInteger;->bitLength()I

    move-result p0

    const/16 p1, 0xc00

    if-gt p0, p1, :cond_1

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    sget-object p1, Lcom/android/apksig/internal/apk/SignatureAlgorithm;->RSA_PKCS1_V1_5_WITH_SHA256:Lcom/android/apksig/internal/apk/SignatureAlgorithm;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-eqz p2, :cond_0

    sget-object p1, Lcom/android/apksig/internal/apk/SignatureAlgorithm;->VERITY_RSA_PKCS1_V1_5_WITH_SHA256:Lcom/android/apksig/internal/apk/SignatureAlgorithm;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-object p0

    :cond_1
    sget-object p0, Lcom/android/apksig/internal/apk/SignatureAlgorithm;->RSA_PKCS1_V1_5_WITH_SHA512:Lcom/android/apksig/internal/apk/SignatureAlgorithm;

    invoke-static {p0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_2
    const-string v0, "DSA"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    if-eqz p3, :cond_3

    sget-object p1, Lcom/android/apksig/internal/apk/SignatureAlgorithm;->DETDSA_WITH_SHA256:Lcom/android/apksig/internal/apk/SignatureAlgorithm;

    goto :goto_0

    :cond_3
    sget-object p1, Lcom/android/apksig/internal/apk/SignatureAlgorithm;->DSA_WITH_SHA256:Lcom/android/apksig/internal/apk/SignatureAlgorithm;

    :goto_0
    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-eqz p2, :cond_4

    sget-object p1, Lcom/android/apksig/internal/apk/SignatureAlgorithm;->VERITY_DSA_WITH_SHA256:Lcom/android/apksig/internal/apk/SignatureAlgorithm;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_4
    return-object p0

    :cond_5
    const-string p3, "EC"

    invoke-virtual {p3, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_8

    check-cast p0, Ljava/security/interfaces/ECKey;

    invoke-interface {p0}, Ljava/security/interfaces/ECKey;->getParams()Ljava/security/spec/ECParameterSpec;

    move-result-object p0

    invoke-virtual {p0}, Ljava/security/spec/ECParameterSpec;->getOrder()Ljava/math/BigInteger;

    move-result-object p0

    invoke-virtual {p0}, Ljava/math/BigInteger;->bitLength()I

    move-result p0

    const/16 p1, 0x100

    if-gt p0, p1, :cond_7

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    sget-object p1, Lcom/android/apksig/internal/apk/SignatureAlgorithm;->ECDSA_WITH_SHA256:Lcom/android/apksig/internal/apk/SignatureAlgorithm;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-eqz p2, :cond_6

    sget-object p1, Lcom/android/apksig/internal/apk/SignatureAlgorithm;->VERITY_ECDSA_WITH_SHA256:Lcom/android/apksig/internal/apk/SignatureAlgorithm;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_6
    return-object p0

    :cond_7
    sget-object p0, Lcom/android/apksig/internal/apk/SignatureAlgorithm;->ECDSA_WITH_SHA512:Lcom/android/apksig/internal/apk/SignatureAlgorithm;

    invoke-static {p0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_8
    new-instance p0, Ljava/security/InvalidKeyException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Unsupported key algorithm: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public generateApkSignatureSchemeV3BlockAndDigests()Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$SigningSchemeBlockAndDigests;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/InvalidKeyException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/SignatureException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/apksig/internal/apk/v3/V3SchemeSigner;->mExecutor:Lcom/android/apksig/util/RunnablesExecutor;

    iget-object v1, p0, Lcom/android/apksig/internal/apk/v3/V3SchemeSigner;->mBeforeCentralDir:Lcom/android/apksig/util/DataSource;

    iget-object v2, p0, Lcom/android/apksig/internal/apk/v3/V3SchemeSigner;->mCentralDir:Lcom/android/apksig/util/DataSource;

    iget-object v3, p0, Lcom/android/apksig/internal/apk/v3/V3SchemeSigner;->mEocd:Lcom/android/apksig/util/DataSource;

    iget-object v4, p0, Lcom/android/apksig/internal/apk/v3/V3SchemeSigner;->mSignerConfigs:Ljava/util/List;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils;->computeContentDigests(Lcom/android/apksig/util/RunnablesExecutor;Lcom/android/apksig/util/DataSource;Lcom/android/apksig/util/DataSource;Lcom/android/apksig/util/DataSource;Ljava/util/List;)Lcom/android/apksig/internal/util/Pair;

    move-result-object v0

    new-instance v1, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$SigningSchemeBlockAndDigests;

    invoke-virtual {v0}, Lcom/android/apksig/internal/util/Pair;->getSecond()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    invoke-direct {p0, v2}, Lcom/android/apksig/internal/apk/v3/V3SchemeSigner;->generateApkSignatureSchemeV3Block(Ljava/util/Map;)Lcom/android/apksig/internal/util/Pair;

    move-result-object v2

    invoke-virtual {v0}, Lcom/android/apksig/internal/util/Pair;->getSecond()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    invoke-direct {v1, v2, v0}, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$SigningSchemeBlockAndDigests;-><init>(Lcom/android/apksig/internal/util/Pair;Ljava/util/Map;)V

    return-object v1
.end method
