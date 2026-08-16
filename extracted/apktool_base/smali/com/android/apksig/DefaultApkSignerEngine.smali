.class public Lcom/android/apksig/DefaultApkSignerEngine;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/apksig/ApkSignerEngine;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/apksig/DefaultApkSignerEngine$SignerConfig;,
        Lcom/android/apksig/DefaultApkSignerEngine$GetJarEntryDataRequest;,
        Lcom/android/apksig/DefaultApkSignerEngine$GetJarEntryDataDigestRequest;,
        Lcom/android/apksig/DefaultApkSignerEngine$CompoundInspectJarEntryRequest;,
        Lcom/android/apksig/DefaultApkSignerEngine$OutputJarSignatureRequestImpl;,
        Lcom/android/apksig/DefaultApkSignerEngine$OutputApkSigningBlockRequestImpl;,
        Lcom/android/apksig/DefaultApkSignerEngine$Builder;
    }
.end annotation


# static fields
.field private static final DISCARDED_SIGNATURE_BLOCK_IDS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mAddSigningBlockRequest:Lcom/android/apksig/DefaultApkSignerEngine$OutputApkSigningBlockRequestImpl;

.field private mAddV1SignatureRequest:Lcom/android/apksig/DefaultApkSignerEngine$OutputJarSignatureRequestImpl;

.field private mClosed:Z

.field private final mCreatedBy:Ljava/lang/String;

.field private mDebuggable:Ljava/lang/Boolean;

.field private final mDebuggableApkPermitted:Z

.field private final mEmittedSignatureJarEntryData:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "[B>;"
        }
    .end annotation
.end field

.field private mExecutor:Lcom/android/apksig/util/RunnablesExecutor;

.field private mInputJarManifestEntryDataRequest:Lcom/android/apksig/DefaultApkSignerEngine$GetJarEntryDataRequest;

.field private final mMinSdkVersion:I

.field private final mOtherSignersSignaturesPreserved:Z

.field private mOutputAndroidManifestEntryDataRequest:Lcom/android/apksig/DefaultApkSignerEngine$GetJarEntryDataRequest;

.field private final mOutputJarEntryDigestRequests:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/android/apksig/DefaultApkSignerEngine$GetJarEntryDataDigestRequest;",
            ">;"
        }
    .end annotation
.end field

.field private final mOutputJarEntryDigests:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "[B>;"
        }
    .end annotation
.end field

.field private final mOutputSignatureJarEntryDataRequests:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/android/apksig/DefaultApkSignerEngine$GetJarEntryDataRequest;",
            ">;"
        }
    .end annotation
.end field

.field private mPreservedSignatureBlocks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/apksig/internal/util/Pair<",
            "[B",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field private mPreservedV2Signers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "[B>;"
        }
    .end annotation
.end field

.field private final mRotationMinSdkVersion:I

.field private final mRotationTargetsDevRelease:Z

.field private mSignatureExpectedOutputJarEntryNames:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mSignerConfigs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/apksig/DefaultApkSignerEngine$SignerConfig;",
            ">;"
        }
    .end annotation
.end field

.field private final mSigningCertificateLineage:Lcom/android/apksig/SigningCertificateLineage;

.field private final mSourceStampSignerConfig:Lcom/android/apksig/DefaultApkSignerEngine$SignerConfig;

.field private final mSourceStampSigningCertificateLineage:Lcom/android/apksig/SigningCertificateLineage;

.field private mV1ContentDigestAlgorithm:Lcom/android/apksig/internal/apk/v1/DigestAlgorithm;

.field private mV1SignaturePending:Z

.field private mV1SignerConfigs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/apksig/internal/apk/v1/V1SchemeSigner$SignerConfig;",
            ">;"
        }
    .end annotation
.end field

.field private final mV1SigningEnabled:Z

.field private mV2SignaturePending:Z

.field private final mV2SigningEnabled:Z

.field private mV3SignaturePending:Z

.field private final mV3SigningEnabled:Z

.field private final mVerityEnabled:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/util/HashSet;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(I)V

    sput-object v0, Lcom/android/apksig/DefaultApkSignerEngine;->DISCARDED_SIGNATURE_BLOCK_IDS:Ljava/util/Set;

    const v1, 0x42726577

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const v1, 0x2b09189e

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const v1, 0x6dff800d

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private constructor <init>(Ljava/util/List;Lcom/android/apksig/DefaultApkSignerEngine$SignerConfig;Lcom/android/apksig/SigningCertificateLineage;IIZZZZZZZLjava/lang/String;Lcom/android/apksig/SigningCertificateLineage;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/apksig/DefaultApkSignerEngine$SignerConfig;",
            ">;",
            "Lcom/android/apksig/DefaultApkSignerEngine$SignerConfig;",
            "Lcom/android/apksig/SigningCertificateLineage;",
            "IIZZZZZZZ",
            "Ljava/lang/String;",
            "Lcom/android/apksig/SigningCertificateLineage;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/apksig/DefaultApkSignerEngine;->mPreservedV2Signers:Ljava/util/List;

    .line 4
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/apksig/DefaultApkSignerEngine;->mPreservedSignatureBlocks:Ljava/util/List;

    .line 5
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/apksig/DefaultApkSignerEngine;->mV1SignerConfigs:Ljava/util/List;

    .line 6
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/android/apksig/DefaultApkSignerEngine;->mSignatureExpectedOutputJarEntryNames:Ljava/util/Set;

    .line 7
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/apksig/DefaultApkSignerEngine;->mOutputJarEntryDigestRequests:Ljava/util/Map;

    .line 8
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/apksig/DefaultApkSignerEngine;->mOutputJarEntryDigests:Ljava/util/Map;

    .line 9
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/apksig/DefaultApkSignerEngine;->mEmittedSignatureJarEntryData:Ljava/util/Map;

    .line 10
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/apksig/DefaultApkSignerEngine;->mOutputSignatureJarEntryDataRequests:Ljava/util/Map;

    .line 11
    sget-object v0, Lcom/android/apksig/util/RunnablesExecutor;->MULTI_THREADED:Lcom/android/apksig/util/RunnablesExecutor;

    iput-object v0, p0, Lcom/android/apksig/DefaultApkSignerEngine;->mExecutor:Lcom/android/apksig/util/RunnablesExecutor;

    .line 12
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    .line 13
    iput-boolean p7, p0, Lcom/android/apksig/DefaultApkSignerEngine;->mV1SigningEnabled:Z

    .line 14
    iput-boolean p8, p0, Lcom/android/apksig/DefaultApkSignerEngine;->mV2SigningEnabled:Z

    .line 15
    iput-boolean p9, p0, Lcom/android/apksig/DefaultApkSignerEngine;->mV3SigningEnabled:Z

    .line 16
    iput-boolean p10, p0, Lcom/android/apksig/DefaultApkSignerEngine;->mVerityEnabled:Z

    .line 17
    iput-boolean p7, p0, Lcom/android/apksig/DefaultApkSignerEngine;->mV1SignaturePending:Z

    .line 18
    iput-boolean p8, p0, Lcom/android/apksig/DefaultApkSignerEngine;->mV2SignaturePending:Z

    .line 19
    iput-boolean p9, p0, Lcom/android/apksig/DefaultApkSignerEngine;->mV3SignaturePending:Z

    .line 20
    iput-boolean p11, p0, Lcom/android/apksig/DefaultApkSignerEngine;->mDebuggableApkPermitted:Z

    .line 21
    iput-boolean p12, p0, Lcom/android/apksig/DefaultApkSignerEngine;->mOtherSignersSignaturesPreserved:Z

    .line 22
    iput-object p13, p0, Lcom/android/apksig/DefaultApkSignerEngine;->mCreatedBy:Ljava/lang/String;

    .line 23
    iput-object p1, p0, Lcom/android/apksig/DefaultApkSignerEngine;->mSignerConfigs:Ljava/util/List;

    .line 24
    iput-object p2, p0, Lcom/android/apksig/DefaultApkSignerEngine;->mSourceStampSignerConfig:Lcom/android/apksig/DefaultApkSignerEngine$SignerConfig;

    .line 25
    iput-object p3, p0, Lcom/android/apksig/DefaultApkSignerEngine;->mSourceStampSigningCertificateLineage:Lcom/android/apksig/SigningCertificateLineage;

    .line 26
    iput p4, p0, Lcom/android/apksig/DefaultApkSignerEngine;->mMinSdkVersion:I

    .line 27
    iput p5, p0, Lcom/android/apksig/DefaultApkSignerEngine;->mRotationMinSdkVersion:I

    .line 28
    iput-boolean p6, p0, Lcom/android/apksig/DefaultApkSignerEngine;->mRotationTargetsDevRelease:Z

    .line 29
    iput-object p14, p0, Lcom/android/apksig/DefaultApkSignerEngine;->mSigningCertificateLineage:Lcom/android/apksig/SigningCertificateLineage;

    if-eqz p7, :cond_3

    if-eqz p9, :cond_2

    const/4 p2, 0x0

    .line 30
    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/apksig/DefaultApkSignerEngine$SignerConfig;

    if-eqz p14, :cond_1

    .line 31
    invoke-static {p1}, Lcom/android/apksig/DefaultApkSignerEngine$SignerConfig;->access$000(Lcom/android/apksig/DefaultApkSignerEngine$SignerConfig;)Ljava/util/List;

    move-result-object p3

    invoke-interface {p3, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/security/cert/X509Certificate;

    .line 32
    invoke-virtual {p14, p2}, Lcom/android/apksig/SigningCertificateLineage;->getSubLineage(Ljava/security/cert/X509Certificate;)Lcom/android/apksig/SigningCertificateLineage;

    move-result-object p2

    .line 33
    invoke-virtual {p2}, Lcom/android/apksig/SigningCertificateLineage;->size()I

    move-result p2

    const/4 p3, 0x1

    if-ne p2, p3, :cond_0

    goto :goto_0

    .line 34
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "v1 signing enabled but the oldest signer in the SigningCertificateLineage is missing.  Please provide the oldest signer to enable v1 signing"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 35
    :cond_1
    :goto_0
    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-direct {p0, p1, p4}, Lcom/android/apksig/DefaultApkSignerEngine;->createV1SignerConfigs(Ljava/util/List;I)V

    goto :goto_1

    .line 36
    :cond_2
    invoke-direct {p0, p1, p4}, Lcom/android/apksig/DefaultApkSignerEngine;->createV1SignerConfigs(Ljava/util/List;I)V

    :cond_3
    :goto_1
    return-void

    .line 37
    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "At least one signer config must be provided"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public synthetic constructor <init>(Ljava/util/List;Lcom/android/apksig/DefaultApkSignerEngine$SignerConfig;Lcom/android/apksig/SigningCertificateLineage;IIZZZZZZZLjava/lang/String;Lcom/android/apksig/SigningCertificateLineage;Lcom/android/apksig/DefaultApkSignerEngine$1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .line 1
    invoke-direct/range {p0 .. p14}, Lcom/android/apksig/DefaultApkSignerEngine;-><init>(Ljava/util/List;Lcom/android/apksig/DefaultApkSignerEngine$SignerConfig;Lcom/android/apksig/SigningCertificateLineage;IIZZZZZZZLjava/lang/String;Lcom/android/apksig/SigningCertificateLineage;)V

    return-void
.end method

.method private checkNotClosed()V
    .locals 2

    iget-boolean v0, p0, Lcom/android/apksig/DefaultApkSignerEngine;->mClosed:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Engine closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private checkOutputApkNotDebuggableIfDebuggableMustBeRejected()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/SignatureException;
        }
    .end annotation

    iget-boolean v0, p0, Lcom/android/apksig/DefaultApkSignerEngine;->mDebuggableApkPermitted:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    :try_start_0
    invoke-direct {p0}, Lcom/android/apksig/DefaultApkSignerEngine;->isOutputApkDebuggable()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    new-instance v0, Ljava/security/SignatureException;

    const-string v1, "APK is debuggable (see android:debuggable attribute) and this engine is configured to refuse to sign debuggable APKs"

    invoke-direct {v0, v1}, Ljava/security/SignatureException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Lcom/android/apksig/apk/ApkFormatException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/security/SignatureException;

    const-string v2, "Failed to determine whether the APK is debuggable"

    invoke-direct {v1, v2, v0}, Ljava/security/SignatureException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private checkSigningBlockDoneIfEnabled()V
    .locals 2

    iget-boolean v0, p0, Lcom/android/apksig/DefaultApkSignerEngine;->mV2SignaturePending:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/apksig/DefaultApkSignerEngine;->mV3SignaturePending:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/apksig/DefaultApkSignerEngine;->mAddSigningBlockRequest:Lcom/android/apksig/DefaultApkSignerEngine$OutputApkSigningBlockRequestImpl;

    if-eqz v0, :cond_2

    invoke-static {v0}, Lcom/android/apksig/DefaultApkSignerEngine$OutputApkSigningBlockRequestImpl;->access$1100(Lcom/android/apksig/DefaultApkSignerEngine$OutputApkSigningBlockRequestImpl;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/apksig/DefaultApkSignerEngine;->mAddSigningBlockRequest:Lcom/android/apksig/DefaultApkSignerEngine$OutputApkSigningBlockRequestImpl;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/apksig/DefaultApkSignerEngine;->mV2SignaturePending:Z

    iput-boolean v0, p0, Lcom/android/apksig/DefaultApkSignerEngine;->mV3SignaturePending:Z

    return-void

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "APK Signing Block addition of signature(s) requested by outputZipSections() hasn\'t been fulfilled yet"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Signed APK Signing BLock not yet generated. Skipped outputZipSections()?"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private checkV1SigningDoneIfEnabled()V
    .locals 5

    iget-boolean v0, p0, Lcom/android/apksig/DefaultApkSignerEngine;->mV1SignaturePending:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/apksig/DefaultApkSignerEngine;->mAddV1SignatureRequest:Lcom/android/apksig/DefaultApkSignerEngine$OutputJarSignatureRequestImpl;

    if-eqz v0, :cond_6

    invoke-static {v0}, Lcom/android/apksig/DefaultApkSignerEngine$OutputJarSignatureRequestImpl;->access$800(Lcom/android/apksig/DefaultApkSignerEngine$OutputJarSignatureRequestImpl;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/apksig/DefaultApkSignerEngine;->mEmittedSignatureJarEntryData:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    iget-object v3, p0, Lcom/android/apksig/DefaultApkSignerEngine;->mOutputSignatureJarEntryDataRequests:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/apksig/DefaultApkSignerEngine$GetJarEntryDataRequest;

    if-eqz v3, :cond_3

    invoke-static {v3}, Lcom/android/apksig/DefaultApkSignerEngine$GetJarEntryDataRequest;->access$400(Lcom/android/apksig/DefaultApkSignerEngine$GetJarEntryDataRequest;)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-static {v3}, Lcom/android/apksig/DefaultApkSignerEngine$GetJarEntryDataRequest;->access$700(Lcom/android/apksig/DefaultApkSignerEngine$GetJarEntryDataRequest;)[B

    move-result-object v3

    invoke-static {v1, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Output APK entry "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " data differs from what was requested"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Still waiting to inspect output APK\'s "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "APK entry "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " not yet output despite this having been requested"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/apksig/DefaultApkSignerEngine;->mV1SignaturePending:Z

    return-void

    :cond_5
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "v1 signature (JAR signature) addition requested by outputJarEntries() hasn\'t been fulfilled"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "v1 signature (JAR signature) not yet generated. Skipped outputJarEntries()?"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private createSigningBlockSignerConfig(Lcom/android/apksig/DefaultApkSignerEngine$SignerConfig;ZI)Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$SignerConfig;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    invoke-virtual {p1}, Lcom/android/apksig/DefaultApkSignerEngine$SignerConfig;->getCertificates()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/security/cert/X509Certificate;

    invoke-virtual {v2}, Ljava/security/cert/Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v2

    new-instance v3, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$SignerConfig;

    invoke-direct {v3}, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$SignerConfig;-><init>()V

    invoke-virtual {p1}, Lcom/android/apksig/DefaultApkSignerEngine$SignerConfig;->getPrivateKey()Ljava/security/PrivateKey;

    move-result-object v4

    iput-object v4, v3, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$SignerConfig;->privateKey:Ljava/security/PrivateKey;

    iput-object v0, v3, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$SignerConfig;->certificates:Ljava/util/List;

    if-eqz p3, :cond_5

    const/4 v0, 0x2

    const/4 v4, 0x1

    if-eq p3, v0, :cond_3

    const/4 v0, 0x3

    const/4 v5, 0x0

    if-eq p3, v0, :cond_1

    const/4 v0, 0x4

    if-ne p3, v0, :cond_0

    :try_start_0
    iget p3, p0, Lcom/android/apksig/DefaultApkSignerEngine;->mMinSdkVersion:I

    invoke-virtual {p1}, Lcom/android/apksig/DefaultApkSignerEngine$SignerConfig;->getDeterministicDsaSigning()Z

    move-result p1

    invoke-static {v2, p3, p2, p1}, Lcom/android/apksig/internal/apk/v4/V4SchemeSigner;->getSuggestedSignatureAlgorithms(Ljava/security/PublicKey;IZZ)Ljava/util/List;

    move-result-object p1

    iput-object p1, v3, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$SignerConfig;->signatureAlgorithms:Ljava/util/List;
    :try_end_0
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    iput-object v5, v3, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$SignerConfig;->signatureAlgorithms:Ljava/util/List;

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Unknown APK Signature Scheme ID requested"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :try_start_1
    iget p3, p0, Lcom/android/apksig/DefaultApkSignerEngine;->mMinSdkVersion:I

    if-eqz p2, :cond_2

    iget-boolean p2, p0, Lcom/android/apksig/DefaultApkSignerEngine;->mVerityEnabled:Z

    if-eqz p2, :cond_2

    move v1, v4

    :cond_2
    invoke-virtual {p1}, Lcom/android/apksig/DefaultApkSignerEngine$SignerConfig;->getDeterministicDsaSigning()Z

    move-result p1

    invoke-static {v2, p3, v1, p1}, Lcom/android/apksig/internal/apk/v3/V3SchemeSigner;->getSuggestedSignatureAlgorithms(Ljava/security/PublicKey;IZZ)Ljava/util/List;

    move-result-object p1

    iput-object p1, v3, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$SignerConfig;->signatureAlgorithms:Ljava/util/List;
    :try_end_1
    .catch Ljava/security/InvalidKeyException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    iput-object v5, v3, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$SignerConfig;->signatureAlgorithms:Ljava/util/List;

    goto :goto_0

    :cond_3
    iget p3, p0, Lcom/android/apksig/DefaultApkSignerEngine;->mMinSdkVersion:I

    if-eqz p2, :cond_4

    iget-boolean p2, p0, Lcom/android/apksig/DefaultApkSignerEngine;->mVerityEnabled:Z

    if-eqz p2, :cond_4

    move v1, v4

    :cond_4
    invoke-virtual {p1}, Lcom/android/apksig/DefaultApkSignerEngine$SignerConfig;->getDeterministicDsaSigning()Z

    move-result p1

    invoke-static {v2, p3, v1, p1}, Lcom/android/apksig/internal/apk/v2/V2SchemeSigner;->getSuggestedSignatureAlgorithms(Ljava/security/PublicKey;IZZ)Ljava/util/List;

    move-result-object p1

    iput-object p1, v3, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$SignerConfig;->signatureAlgorithms:Ljava/util/List;

    goto :goto_0

    :cond_5
    sget-object p1, Lcom/android/apksig/internal/apk/SignatureAlgorithm;->RSA_PKCS1_V1_5_WITH_SHA256:Lcom/android/apksig/internal/apk/SignatureAlgorithm;

    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    iput-object p1, v3, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$SignerConfig;->signatureAlgorithms:Ljava/util/List;

    :goto_0
    return-object v3
.end method

.method private createSigningBlockSignerConfigs(ZI)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZI)",
            "Ljava/util/List<",
            "Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$SignerConfig;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/apksig/DefaultApkSignerEngine;->mSignerConfigs:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/android/apksig/DefaultApkSignerEngine;->mSignerConfigs:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    iget-object v2, p0, Lcom/android/apksig/DefaultApkSignerEngine;->mSignerConfigs:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/apksig/DefaultApkSignerEngine$SignerConfig;

    invoke-direct {p0, v2, p1, p2}, Lcom/android/apksig/DefaultApkSignerEngine;->createSigningBlockSignerConfig(Lcom/android/apksig/DefaultApkSignerEngine$SignerConfig;ZI)Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$SignerConfig;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private createSourceStampSignerConfig()Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$SignerConfig;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/apksig/DefaultApkSignerEngine;->mSourceStampSignerConfig:Lcom/android/apksig/DefaultApkSignerEngine$SignerConfig;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, v1}, Lcom/android/apksig/DefaultApkSignerEngine;->createSigningBlockSignerConfig(Lcom/android/apksig/DefaultApkSignerEngine$SignerConfig;ZI)Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$SignerConfig;

    move-result-object v0

    iget-object v2, p0, Lcom/android/apksig/DefaultApkSignerEngine;->mSourceStampSigningCertificateLineage:Lcom/android/apksig/SigningCertificateLineage;

    if-eqz v2, :cond_0

    iget-object v3, v0, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$SignerConfig;->certificates:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/security/cert/X509Certificate;

    invoke-virtual {v2, v1}, Lcom/android/apksig/SigningCertificateLineage;->getSubLineage(Ljava/security/cert/X509Certificate;)Lcom/android/apksig/SigningCertificateLineage;

    move-result-object v1

    iput-object v1, v0, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$SignerConfig;->mSigningCertificateLineage:Lcom/android/apksig/SigningCertificateLineage;

    :cond_0
    return-object v0
.end method

.method private createV1SignerConfigs(Ljava/util/List;I)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/apksig/DefaultApkSignerEngine$SignerConfig;",
            ">;I)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/android/apksig/DefaultApkSignerEngine;->mV1SignerConfigs:Ljava/util/List;

    new-instance v0, Ljava/util/HashMap;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_3

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/apksig/DefaultApkSignerEngine$SignerConfig;

    invoke-virtual {v4}, Lcom/android/apksig/DefaultApkSignerEngine$SignerConfig;->getCertificates()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/security/cert/X509Certificate;

    invoke-virtual {v6}, Ljava/security/cert/Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v6

    invoke-virtual {v4}, Lcom/android/apksig/DefaultApkSignerEngine$SignerConfig;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/android/apksig/internal/apk/v1/V1SchemeSigner;->getSafeSignerName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v0, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    if-nez v8, :cond_2

    invoke-static {v6, p2}, Lcom/android/apksig/internal/apk/v1/V1SchemeSigner;->getSuggestedSignatureDigestAlgorithm(Ljava/security/PublicKey;I)Lcom/android/apksig/internal/apk/v1/DigestAlgorithm;

    move-result-object v6

    new-instance v8, Lcom/android/apksig/internal/apk/v1/V1SchemeSigner$SignerConfig;

    invoke-direct {v8}, Lcom/android/apksig/internal/apk/v1/V1SchemeSigner$SignerConfig;-><init>()V

    iput-object v7, v8, Lcom/android/apksig/internal/apk/v1/V1SchemeSigner$SignerConfig;->name:Ljava/lang/String;

    invoke-virtual {v4}, Lcom/android/apksig/DefaultApkSignerEngine$SignerConfig;->getPrivateKey()Ljava/security/PrivateKey;

    move-result-object v7

    iput-object v7, v8, Lcom/android/apksig/internal/apk/v1/V1SchemeSigner$SignerConfig;->privateKey:Ljava/security/PrivateKey;

    iput-object v5, v8, Lcom/android/apksig/internal/apk/v1/V1SchemeSigner$SignerConfig;->certificates:Ljava/util/List;

    iput-object v6, v8, Lcom/android/apksig/internal/apk/v1/V1SchemeSigner$SignerConfig;->signatureDigestAlgorithm:Lcom/android/apksig/internal/apk/v1/DigestAlgorithm;

    invoke-virtual {v4}, Lcom/android/apksig/DefaultApkSignerEngine$SignerConfig;->getDeterministicDsaSigning()Z

    move-result v4

    iput-boolean v4, v8, Lcom/android/apksig/internal/apk/v1/V1SchemeSigner$SignerConfig;->deterministicDsaSigning:Z

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    sget-object v4, Lcom/android/apksig/internal/apk/v1/DigestAlgorithm;->BY_STRENGTH_COMPARATOR:Ljava/util/Comparator;

    invoke-interface {v4, v6, v1}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v4

    if-lez v4, :cond_1

    :goto_1
    move-object v1, v6

    :cond_1
    iget-object v4, p0, Lcom/android/apksig/DefaultApkSignerEngine;->mV1SignerConfigs:Ljava/util/List;

    invoke-interface {v4, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Signers #"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " and #"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " have the same name: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ". v1 signer names must be unique"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    iput-object v1, p0, Lcom/android/apksig/DefaultApkSignerEngine;->mV1ContentDigestAlgorithm:Lcom/android/apksig/internal/apk/v1/DigestAlgorithm;

    iget-object p1, p0, Lcom/android/apksig/DefaultApkSignerEngine;->mV1SignerConfigs:Ljava/util/List;

    invoke-static {p1}, Lcom/android/apksig/internal/apk/v1/V1SchemeSigner;->getOutputEntryNames(Ljava/util/List;)Ljava/util/Set;

    move-result-object p1

    iput-object p1, p0, Lcom/android/apksig/DefaultApkSignerEngine;->mSignatureExpectedOutputJarEntryNames:Ljava/util/Set;

    return-void
.end method

.method private createV2SignerConfigs(Z)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/List<",
            "Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$SignerConfig;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    iget-boolean v0, p0, Lcom/android/apksig/DefaultApkSignerEngine;->mV3SigningEnabled:Z

    const/4 v1, 0x2

    if-eqz v0, :cond_2

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v2, p0, Lcom/android/apksig/DefaultApkSignerEngine;->mSignerConfigs:Ljava/util/List;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/apksig/DefaultApkSignerEngine$SignerConfig;

    iget-object v4, p0, Lcom/android/apksig/DefaultApkSignerEngine;->mSigningCertificateLineage:Lcom/android/apksig/SigningCertificateLineage;

    if-eqz v4, :cond_1

    invoke-static {v2}, Lcom/android/apksig/DefaultApkSignerEngine$SignerConfig;->access$000(Lcom/android/apksig/DefaultApkSignerEngine$SignerConfig;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/security/cert/X509Certificate;

    invoke-virtual {v4, v2}, Lcom/android/apksig/SigningCertificateLineage;->getSubLineage(Ljava/security/cert/X509Certificate;)Lcom/android/apksig/SigningCertificateLineage;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/apksig/SigningCertificateLineage;->size()I

    move-result v2

    const/4 v4, 0x1

    if-ne v2, v4, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "v2 signing enabled but the oldest signer in the SigningCertificateLineage is missing.  Please provide the oldest signer to enable v2 signing."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    iget-object v2, p0, Lcom/android/apksig/DefaultApkSignerEngine;->mSignerConfigs:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/apksig/DefaultApkSignerEngine$SignerConfig;

    invoke-direct {p0, v2, p1, v1}, Lcom/android/apksig/DefaultApkSignerEngine;->createSigningBlockSignerConfig(Lcom/android/apksig/DefaultApkSignerEngine$SignerConfig;ZI)Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$SignerConfig;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0

    :cond_2
    invoke-direct {p0, p1, v1}, Lcom/android/apksig/DefaultApkSignerEngine;->createSigningBlockSignerConfigs(ZI)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method private createV3SignerConfigs(Z)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/List<",
            "Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$SignerConfig;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    const/4 v0, 0x3

    invoke-direct {p0, p1, v0}, Lcom/android/apksig/DefaultApkSignerEngine;->createSigningBlockSignerConfigs(ZI)Ljava/util/List;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/apksig/DefaultApkSignerEngine;->processV3Configs(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method private createV4SignerConfig()Lcom/android/apksig/internal/apk/v4/V4SchemeSigner$SignerConfig;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    const/4 v0, 0x4

    const/4 v1, 0x1

    invoke-direct {p0, v1, v0}, Lcom/android/apksig/DefaultApkSignerEngine;->createSigningBlockSignerConfigs(ZI)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-eq v2, v1, :cond_0

    invoke-direct {p0, v0}, Lcom/android/apksig/DefaultApkSignerEngine;->processV3Configs(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    :cond_0
    invoke-direct {p0, v0}, Lcom/android/apksig/DefaultApkSignerEngine;->processV31SignerConfigs(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    new-instance v2, Lcom/android/apksig/internal/apk/v4/V4SchemeSigner$SignerConfig;

    invoke-direct {v2, v0, v1}, Lcom/android/apksig/internal/apk/v4/V4SchemeSigner$SignerConfig;-><init>(Ljava/util/List;Ljava/util/List;)V

    return-object v2
.end method

.method private forgetOutputApkDebuggableStatus()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/apksig/DefaultApkSignerEngine;->mDebuggable:Ljava/lang/Boolean;

    return-void
.end method

.method private getInputJarEntryOutputPolicy(Ljava/lang/String;)Lcom/android/apksig/ApkSignerEngine$InputJarEntryInstructions$OutputPolicy;
    .locals 1

    iget-object v0, p0, Lcom/android/apksig/DefaultApkSignerEngine;->mSignatureExpectedOutputJarEntryNames:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object p1, Lcom/android/apksig/ApkSignerEngine$InputJarEntryInstructions$OutputPolicy;->OUTPUT_BY_ENGINE:Lcom/android/apksig/ApkSignerEngine$InputJarEntryInstructions$OutputPolicy;

    return-object p1

    :cond_0
    iget-boolean v0, p0, Lcom/android/apksig/DefaultApkSignerEngine;->mOtherSignersSignaturesPreserved:Z

    if-nez v0, :cond_2

    invoke-static {p1}, Lcom/android/apksig/internal/apk/v1/V1SchemeSigner;->isJarEntryDigestNeededInManifest(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    sget-object p1, Lcom/android/apksig/ApkSignerEngine$InputJarEntryInstructions$OutputPolicy;->SKIP:Lcom/android/apksig/ApkSignerEngine$InputJarEntryInstructions$OutputPolicy;

    return-object p1

    :cond_2
    :goto_0
    sget-object p1, Lcom/android/apksig/ApkSignerEngine$InputJarEntryInstructions$OutputPolicy;->OUTPUT:Lcom/android/apksig/ApkSignerEngine$InputJarEntryInstructions$OutputPolicy;

    return-object p1
.end method

.method private getMinSdkFromV3SignatureAlgorithms(Ljava/util/List;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/apksig/internal/apk/SignatureAlgorithm;",
            ">;)I"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const v0, 0x7fffffff

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/apksig/internal/apk/SignatureAlgorithm;

    invoke-virtual {v1}, Lcom/android/apksig/internal/apk/SignatureAlgorithm;->getMinSdkVersion()I

    move-result v1

    if-ge v1, v0, :cond_0

    iget v0, p0, Lcom/android/apksig/DefaultApkSignerEngine;->mMinSdkVersion:I

    if-le v1, v0, :cond_2

    const/16 v0, 0x1c

    if-gt v1, v0, :cond_1

    goto :goto_1

    :cond_1
    move v0, v1

    goto :goto_0

    :cond_2
    :goto_1
    return v1

    :cond_3
    return v0
.end method

.method private invalidateV1Signature()V
    .locals 1

    iget-boolean v0, p0, Lcom/android/apksig/DefaultApkSignerEngine;->mV1SigningEnabled:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/apksig/DefaultApkSignerEngine;->mV1SignaturePending:Z

    :cond_0
    invoke-direct {p0}, Lcom/android/apksig/DefaultApkSignerEngine;->invalidateV2Signature()V

    return-void
.end method

.method private invalidateV2Signature()V
    .locals 1

    iget-boolean v0, p0, Lcom/android/apksig/DefaultApkSignerEngine;->mV2SigningEnabled:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/apksig/DefaultApkSignerEngine;->mV2SignaturePending:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/apksig/DefaultApkSignerEngine;->mAddSigningBlockRequest:Lcom/android/apksig/DefaultApkSignerEngine$OutputApkSigningBlockRequestImpl;

    :cond_0
    return-void
.end method

.method private invalidateV3Signature()V
    .locals 1

    iget-boolean v0, p0, Lcom/android/apksig/DefaultApkSignerEngine;->mV3SigningEnabled:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/apksig/DefaultApkSignerEngine;->mV3SignaturePending:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/apksig/DefaultApkSignerEngine;->mAddSigningBlockRequest:Lcom/android/apksig/DefaultApkSignerEngine$OutputApkSigningBlockRequestImpl;

    :cond_0
    return-void
.end method

.method private isConfiguredWithSigner(Ljava/util/List;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/security/cert/X509Certificate;",
            ">;)Z"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/apksig/DefaultApkSignerEngine;->mSignerConfigs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/apksig/DefaultApkSignerEngine$SignerConfig;

    invoke-virtual {v1}, Lcom/android/apksig/DefaultApkSignerEngine$SignerConfig;->getCertificates()Ljava/util/List;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/List;->containsAll(Ljava/util/Collection;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method private isDebuggable(Ljava/lang/String;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/apksig/DefaultApkSignerEngine;->mDebuggableApkPermitted:Z

    if-nez v0, :cond_1

    const-string v0, "AndroidManifest.xml"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method private isOutputApkDebuggable()Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/apksig/apk/ApkFormatException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/apksig/DefaultApkSignerEngine;->mDebuggable:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/apksig/DefaultApkSignerEngine;->mOutputAndroidManifestEntryDataRequest:Lcom/android/apksig/DefaultApkSignerEngine$GetJarEntryDataRequest;

    if-eqz v0, :cond_2

    invoke-static {v0}, Lcom/android/apksig/DefaultApkSignerEngine$GetJarEntryDataRequest;->access$400(Lcom/android/apksig/DefaultApkSignerEngine$GetJarEntryDataRequest;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/apksig/DefaultApkSignerEngine;->mOutputAndroidManifestEntryDataRequest:Lcom/android/apksig/DefaultApkSignerEngine$GetJarEntryDataRequest;

    invoke-static {v0}, Lcom/android/apksig/DefaultApkSignerEngine$GetJarEntryDataRequest;->access$700(Lcom/android/apksig/DefaultApkSignerEngine$GetJarEntryDataRequest;)[B

    move-result-object v0

    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-static {v0}, Lcom/android/apksig/apk/ApkUtils;->getDebuggableFromBinaryAndroidManifest(Ljava/nio/ByteBuffer;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/android/apksig/DefaultApkSignerEngine;->mDebuggable:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Still waiting to inspect output APK\'s "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/apksig/DefaultApkSignerEngine;->mOutputAndroidManifestEntryDataRequest:Lcom/android/apksig/DefaultApkSignerEngine$GetJarEntryDataRequest;

    invoke-virtual {v2}, Lcom/android/apksig/DefaultApkSignerEngine$GetJarEntryDataRequest;->getEntryName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot determine debuggable status of output APK because AndroidManifest.xml entry contents have not yet been requested"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private outputZipSectionsInternal(Lcom/android/apksig/util/DataSource;Lcom/android/apksig/util/DataSource;Lcom/android/apksig/util/DataSource;Z)Lcom/android/apksig/DefaultApkSignerEngine$OutputApkSigningBlockRequestImpl;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/InvalidKeyException;,
            Ljava/security/SignatureException;,
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/android/apksig/DefaultApkSignerEngine;->checkNotClosed()V

    invoke-direct {p0}, Lcom/android/apksig/DefaultApkSignerEngine;->checkV1SigningDoneIfEnabled()V

    iget-boolean v0, p0, Lcom/android/apksig/DefaultApkSignerEngine;->mV2SigningEnabled:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/apksig/DefaultApkSignerEngine;->mV3SigningEnabled:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/apksig/DefaultApkSignerEngine;->isEligibleForSourceStamp()Z

    move-result v0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    invoke-direct {p0}, Lcom/android/apksig/DefaultApkSignerEngine;->checkOutputApkNotDebuggableIfDebuggableMustBeRejected()V

    invoke-static {p1, p4}, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils;->generateApkSigningBlockPadding(Lcom/android/apksig/util/DataSource;Z)Lcom/android/apksig/internal/util/Pair;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/apksig/internal/util/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/apksig/util/DataSource;

    invoke-virtual {p1}, Lcom/android/apksig/internal/util/Pair;->getSecond()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {v0, p3}, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils;->copyWithModifiedCDOffset(Lcom/android/apksig/util/DataSource;Lcom/android/apksig/util/DataSource;)Lcom/android/apksig/util/DataSource;

    move-result-object p3

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    iget-boolean v2, p0, Lcom/android/apksig/DefaultApkSignerEngine;->mOtherSignersSignaturesPreserved:Z

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/apksig/DefaultApkSignerEngine;->mPreservedSignatureBlocks:Ljava/util/List;

    if-eqz v2, :cond_1

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/android/apksig/DefaultApkSignerEngine;->mPreservedSignatureBlocks:Ljava/util/List;

    invoke-interface {v9, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_1
    iget-boolean v2, p0, Lcom/android/apksig/DefaultApkSignerEngine;->mV2SigningEnabled:Z

    if-eqz v2, :cond_3

    invoke-direct {p0}, Lcom/android/apksig/DefaultApkSignerEngine;->invalidateV2Signature()V

    invoke-direct {p0, p4}, Lcom/android/apksig/DefaultApkSignerEngine;->createV2SignerConfigs(Z)Ljava/util/List;

    move-result-object v6

    iget-object v2, p0, Lcom/android/apksig/DefaultApkSignerEngine;->mExecutor:Lcom/android/apksig/util/RunnablesExecutor;

    iget-boolean v7, p0, Lcom/android/apksig/DefaultApkSignerEngine;->mV3SigningEnabled:Z

    iget-boolean v3, p0, Lcom/android/apksig/DefaultApkSignerEngine;->mOtherSignersSignaturesPreserved:Z

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/apksig/DefaultApkSignerEngine;->mPreservedV2Signers:Ljava/util/List;

    move-object v8, v3

    goto :goto_0

    :cond_2
    move-object v8, v1

    :goto_0
    move-object v3, v0

    move-object v4, p2

    move-object v5, p3

    invoke-static/range {v2 .. v8}, Lcom/android/apksig/internal/apk/v2/V2SchemeSigner;->generateApkSignatureSchemeV2Block(Lcom/android/apksig/util/RunnablesExecutor;Lcom/android/apksig/util/DataSource;Lcom/android/apksig/util/DataSource;Lcom/android/apksig/util/DataSource;Ljava/util/List;ZLjava/util/List;)Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$SigningSchemeBlockAndDigests;

    move-result-object v2

    iget-object v3, v2, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$SigningSchemeBlockAndDigests;->signingSchemeBlock:Lcom/android/apksig/internal/util/Pair;

    invoke-interface {v9, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    move-object v2, v1

    :goto_1
    iget-boolean v3, p0, Lcom/android/apksig/DefaultApkSignerEngine;->mV3SigningEnabled:Z

    if-eqz v3, :cond_6

    invoke-direct {p0}, Lcom/android/apksig/DefaultApkSignerEngine;->invalidateV3Signature()V

    invoke-direct {p0, p4}, Lcom/android/apksig/DefaultApkSignerEngine;->createV3SignerConfigs(Z)Ljava/util/List;

    move-result-object p4

    invoke-direct {p0, p4}, Lcom/android/apksig/DefaultApkSignerEngine;->processV31SignerConfigs(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_4

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_4

    new-instance v4, Lcom/android/apksig/internal/apk/v3/V3SchemeSigner$Builder;

    invoke-direct {v4, v0, p2, p3, v3}, Lcom/android/apksig/internal/apk/v3/V3SchemeSigner$Builder;-><init>(Lcom/android/apksig/util/DataSource;Lcom/android/apksig/util/DataSource;Lcom/android/apksig/util/DataSource;Ljava/util/List;)V

    iget-object v3, p0, Lcom/android/apksig/DefaultApkSignerEngine;->mExecutor:Lcom/android/apksig/util/RunnablesExecutor;

    invoke-virtual {v4, v3}, Lcom/android/apksig/internal/apk/v3/V3SchemeSigner$Builder;->setRunnablesExecutor(Lcom/android/apksig/util/RunnablesExecutor;)Lcom/android/apksig/internal/apk/v3/V3SchemeSigner$Builder;

    move-result-object v3

    const v4, 0x1b93ad61

    invoke-virtual {v3, v4}, Lcom/android/apksig/internal/apk/v3/V3SchemeSigner$Builder;->setBlockId(I)Lcom/android/apksig/internal/apk/v3/V3SchemeSigner$Builder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/apksig/DefaultApkSignerEngine;->mRotationTargetsDevRelease:Z

    invoke-virtual {v3, v4}, Lcom/android/apksig/internal/apk/v3/V3SchemeSigner$Builder;->setRotationTargetsDevRelease(Z)Lcom/android/apksig/internal/apk/v3/V3SchemeSigner$Builder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/apksig/internal/apk/v3/V3SchemeSigner$Builder;->build()Lcom/android/apksig/internal/apk/v3/V3SchemeSigner;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/apksig/internal/apk/v3/V3SchemeSigner;->generateApkSignatureSchemeV3BlockAndDigests()Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$SigningSchemeBlockAndDigests;

    move-result-object v3

    iget-object v3, v3, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$SigningSchemeBlockAndDigests;->signingSchemeBlock:Lcom/android/apksig/internal/util/Pair;

    invoke-interface {v9, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_4
    new-instance v3, Lcom/android/apksig/internal/apk/v3/V3SchemeSigner$Builder;

    invoke-direct {v3, v0, p2, p3, p4}, Lcom/android/apksig/internal/apk/v3/V3SchemeSigner$Builder;-><init>(Lcom/android/apksig/util/DataSource;Lcom/android/apksig/util/DataSource;Lcom/android/apksig/util/DataSource;Ljava/util/List;)V

    iget-object p2, p0, Lcom/android/apksig/DefaultApkSignerEngine;->mExecutor:Lcom/android/apksig/util/RunnablesExecutor;

    invoke-virtual {v3, p2}, Lcom/android/apksig/internal/apk/v3/V3SchemeSigner$Builder;->setRunnablesExecutor(Lcom/android/apksig/util/RunnablesExecutor;)Lcom/android/apksig/internal/apk/v3/V3SchemeSigner$Builder;

    move-result-object p2

    const p3, -0xfac9740

    invoke-virtual {p2, p3}, Lcom/android/apksig/internal/apk/v3/V3SchemeSigner$Builder;->setBlockId(I)Lcom/android/apksig/internal/apk/v3/V3SchemeSigner$Builder;

    move-result-object p2

    invoke-direct {p0}, Lcom/android/apksig/DefaultApkSignerEngine;->signingLineageHas31Support()Z

    move-result p3

    if-eqz p3, :cond_5

    iget p3, p0, Lcom/android/apksig/DefaultApkSignerEngine;->mRotationMinSdkVersion:I

    invoke-virtual {p2, p3}, Lcom/android/apksig/internal/apk/v3/V3SchemeSigner$Builder;->setRotationMinSdkVersion(I)Lcom/android/apksig/internal/apk/v3/V3SchemeSigner$Builder;

    :cond_5
    invoke-virtual {p2}, Lcom/android/apksig/internal/apk/v3/V3SchemeSigner$Builder;->build()Lcom/android/apksig/internal/apk/v3/V3SchemeSigner;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/apksig/internal/apk/v3/V3SchemeSigner;->generateApkSignatureSchemeV3BlockAndDigests()Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$SigningSchemeBlockAndDigests;

    move-result-object p2

    iget-object p3, p2, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$SigningSchemeBlockAndDigests;->signingSchemeBlock:Lcom/android/apksig/internal/util/Pair;

    invoke-interface {v9, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_6
    move-object p2, v1

    :goto_2
    invoke-virtual {p0}, Lcom/android/apksig/DefaultApkSignerEngine;->isEligibleForSourceStamp()Z

    move-result p3

    if-eqz p3, :cond_b

    invoke-direct {p0}, Lcom/android/apksig/DefaultApkSignerEngine;->createSourceStampSignerConfig()Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$SignerConfig;

    move-result-object p3

    new-instance p4, Ljava/util/HashMap;

    invoke-direct {p4}, Ljava/util/HashMap;-><init>()V

    iget-boolean v0, p0, Lcom/android/apksig/DefaultApkSignerEngine;->mV3SigningEnabled:Z

    if-eqz v0, :cond_7

    const/4 v0, 0x3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object p2, p2, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$SigningSchemeBlockAndDigests;->digestInfo:Ljava/util/Map;

    invoke-interface {p4, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_7
    iget-boolean p2, p0, Lcom/android/apksig/DefaultApkSignerEngine;->mV2SigningEnabled:Z

    if-eqz p2, :cond_8

    const/4 p2, 0x2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    iget-object v0, v2, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$SigningSchemeBlockAndDigests;->digestInfo:Ljava/util/Map;

    invoke-interface {p4, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_8
    iget-boolean p2, p0, Lcom/android/apksig/DefaultApkSignerEngine;->mV1SigningEnabled:Z

    if-eqz p2, :cond_a

    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    :try_start_0
    iget-object v0, p0, Lcom/android/apksig/DefaultApkSignerEngine;->mInputJarManifestEntryDataRequest:Lcom/android/apksig/DefaultApkSignerEngine$GetJarEntryDataRequest;

    if-eqz v0, :cond_9

    invoke-static {v0}, Lcom/android/apksig/DefaultApkSignerEngine$GetJarEntryDataRequest;->access$700(Lcom/android/apksig/DefaultApkSignerEngine$GetJarEntryDataRequest;)[B

    move-result-object v0

    goto :goto_3

    :catch_0
    move-exception p1

    goto :goto_4

    :cond_9
    move-object v0, v1

    :goto_3
    iget-object v2, p0, Lcom/android/apksig/DefaultApkSignerEngine;->mV1ContentDigestAlgorithm:Lcom/android/apksig/internal/apk/v1/DigestAlgorithm;

    iget-object v3, p0, Lcom/android/apksig/DefaultApkSignerEngine;->mOutputJarEntryDigests:Ljava/util/Map;

    invoke-static {v2, v3, v0}, Lcom/android/apksig/internal/apk/v1/V1SchemeSigner;->generateManifestFile(Lcom/android/apksig/internal/apk/v1/DigestAlgorithm;Ljava/util/Map;[B)Lcom/android/apksig/internal/apk/v1/V1SchemeSigner$OutputManifestFile;

    move-result-object v0

    iget-object v0, v0, Lcom/android/apksig/internal/apk/v1/V1SchemeSigner$OutputManifestFile;->contents:[B

    sget-object v2, Lcom/android/apksig/internal/apk/ContentDigestAlgorithm;->SHA256:Lcom/android/apksig/internal/apk/ContentDigestAlgorithm;

    invoke-static {v0}, Lcom/android/apksig/apk/ApkUtils;->computeSha256DigestBytes([B)[B

    move-result-object v0

    invoke-interface {p2, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Lcom/android/apksig/apk/ApkFormatException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p4, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_5

    :goto_4
    new-instance p2, Ljava/lang/RuntimeException;

    const-string p3, "Failed to generate manifest file"

    invoke-direct {p2, p3, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    :cond_a
    :goto_5
    invoke-static {p3, p4}, Lcom/android/apksig/internal/apk/stamp/V2SourceStampSigner;->generateSourceStampBlock(Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$SignerConfig;Ljava/util/Map;)Lcom/android/apksig/internal/util/Pair;

    move-result-object p2

    invoke-interface {v9, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_b
    invoke-static {v9}, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils;->generateApkSigningBlock(Ljava/util/List;)[B

    move-result-object p2

    new-instance p3, Lcom/android/apksig/DefaultApkSignerEngine$OutputApkSigningBlockRequestImpl;

    invoke-direct {p3, p2, p1, v1}, Lcom/android/apksig/DefaultApkSignerEngine$OutputApkSigningBlockRequestImpl;-><init>([BILcom/android/apksig/DefaultApkSignerEngine$1;)V

    iput-object p3, p0, Lcom/android/apksig/DefaultApkSignerEngine;->mAddSigningBlockRequest:Lcom/android/apksig/DefaultApkSignerEngine$OutputApkSigningBlockRequestImpl;

    return-object p3
.end method

.method private processV31SignerConfigs(Ljava/util/List;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$SignerConfig;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$SignerConfig;",
            ">;"
        }
    .end annotation

    invoke-direct {p0}, Lcom/android/apksig/DefaultApkSignerEngine;->signingLineageHas31Support()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$SignerConfig;

    iget v2, v1, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$SignerConfig;->minSdkVersion:I

    iget v3, p0, Lcom/android/apksig/DefaultApkSignerEngine;->mRotationMinSdkVersion:I

    if-lt v2, v3, :cond_1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {p1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method private processV3Configs(Ljava/util/List;)Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$SignerConfig;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$SignerConfig;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/android/apksig/DefaultApkSignerEngine;->signingLineageHas31Support()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/apksig/DefaultApkSignerEngine;->mSigningCertificateLineage:Lcom/android/apksig/SigningCertificateLineage;

    iget-object v3, p0, Lcom/android/apksig/DefaultApkSignerEngine;->mSignerConfigs:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/apksig/DefaultApkSignerEngine$SignerConfig;

    invoke-static {v3}, Lcom/android/apksig/DefaultApkSignerEngine$SignerConfig;->access$000(Lcom/android/apksig/DefaultApkSignerEngine$SignerConfig;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/security/cert/X509Certificate;

    invoke-virtual {v0, v3}, Lcom/android/apksig/SigningCertificateLineage;->getSubLineage(Ljava/security/cert/X509Certificate;)Lcom/android/apksig/SigningCertificateLineage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/apksig/SigningCertificateLineage;->size()I

    move-result v0

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "v3.1 signing enabled but the oldest signer in the SigningCertificateLineage for the v3.0 signing block is missing.  Please provide the oldest signer to enable v3.1 signing."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    sub-int/2addr v3, v1

    const v4, 0x7fffffff

    move v5, v4

    :goto_1
    const/16 v6, 0x1c

    if-ltz v3, :cond_a

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$SignerConfig;

    iget-object v8, v7, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$SignerConfig;->signatureAlgorithms:Ljava/util/List;

    if-eqz v8, :cond_9

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v8

    sub-int/2addr v8, v1

    if-ne v3, v8, :cond_2

    iput v4, v7, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$SignerConfig;->maxSdkVersion:I

    goto :goto_2

    :cond_2
    iget-boolean v8, p0, Lcom/android/apksig/DefaultApkSignerEngine;->mRotationTargetsDevRelease:Z

    if-eqz v8, :cond_3

    iget v8, p0, Lcom/android/apksig/DefaultApkSignerEngine;->mRotationMinSdkVersion:I

    if-ne v5, v8, :cond_3

    iput v5, v7, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$SignerConfig;->maxSdkVersion:I

    goto :goto_2

    :cond_3
    add-int/lit8 v5, v5, -0x1

    iput v5, v7, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$SignerConfig;->maxSdkVersion:I

    :goto_2
    iget-object v5, v7, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$SignerConfig;->signatureAlgorithms:Ljava/util/List;

    invoke-direct {p0, v5}, Lcom/android/apksig/DefaultApkSignerEngine;->getMinSdkFromV3SignatureAlgorithms(Ljava/util/List;)I

    move-result v5

    iput v5, v7, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$SignerConfig;->minSdkVersion:I

    iget-object v5, p0, Lcom/android/apksig/DefaultApkSignerEngine;->mSigningCertificateLineage:Lcom/android/apksig/SigningCertificateLineage;

    if-eqz v5, :cond_5

    iget-boolean v8, p0, Lcom/android/apksig/DefaultApkSignerEngine;->mRotationTargetsDevRelease:Z

    if-eqz v8, :cond_4

    iget v8, v7, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$SignerConfig;->maxSdkVersion:I

    iget v9, p0, Lcom/android/apksig/DefaultApkSignerEngine;->mRotationMinSdkVersion:I

    if-le v8, v9, :cond_5

    goto :goto_3

    :cond_4
    iget v8, v7, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$SignerConfig;->maxSdkVersion:I

    iget v9, p0, Lcom/android/apksig/DefaultApkSignerEngine;->mRotationMinSdkVersion:I

    if-lt v8, v9, :cond_5

    :goto_3
    iget-object v8, v7, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$SignerConfig;->certificates:Ljava/util/List;

    invoke-interface {v8, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/security/cert/X509Certificate;

    invoke-virtual {v5, v8}, Lcom/android/apksig/SigningCertificateLineage;->getSubLineage(Ljava/security/cert/X509Certificate;)Lcom/android/apksig/SigningCertificateLineage;

    move-result-object v5

    iput-object v5, v7, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$SignerConfig;->mSigningCertificateLineage:Lcom/android/apksig/SigningCertificateLineage;

    iget v5, v7, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$SignerConfig;->minSdkVersion:I

    iget v8, p0, Lcom/android/apksig/DefaultApkSignerEngine;->mRotationMinSdkVersion:I

    if-ge v5, v8, :cond_5

    iput v8, v7, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$SignerConfig;->minSdkVersion:I

    :cond_5
    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget v5, v7, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$SignerConfig;->minSdkVersion:I

    iget-boolean v7, p0, Lcom/android/apksig/DefaultApkSignerEngine;->mRotationTargetsDevRelease:Z

    if-eqz v7, :cond_6

    iget v8, p0, Lcom/android/apksig/DefaultApkSignerEngine;->mMinSdkVersion:I

    if-lt v5, v8, :cond_a

    :cond_6
    if-nez v7, :cond_7

    iget v7, p0, Lcom/android/apksig/DefaultApkSignerEngine;->mMinSdkVersion:I

    if-le v5, v7, :cond_a

    :cond_7
    if-gt v5, v6, :cond_8

    goto :goto_4

    :cond_8
    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    :cond_9
    iget-object p1, v7, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$SignerConfig;->certificates:Ljava/util/List;

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/security/cert/X509Certificate;

    invoke-virtual {p1}, Ljava/security/cert/Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object p1

    invoke-interface {p1}, Ljava/security/Key;->getAlgorithm()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/security/InvalidKeyException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported key algorithm "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " is not supported for APK Signature Scheme v3 signing"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_a
    :goto_4
    if-le v5, v6, :cond_c

    iget p1, p0, Lcom/android/apksig/DefaultApkSignerEngine;->mMinSdkVersion:I

    if-gt v5, p1, :cond_b

    goto :goto_5

    :cond_b
    new-instance p1, Ljava/security/InvalidKeyException;

    const-string v0, "Provided key algorithms not supported on all desired Android SDK versions"

    invoke-direct {p1, v0}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_c
    :goto_5
    return-object v0
.end method

.method private signingLineageHas31Support()Z
    .locals 2

    iget-object v0, p0, Lcom/android/apksig/DefaultApkSignerEngine;->mSigningCertificateLineage:Lcom/android/apksig/SigningCertificateLineage;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/apksig/DefaultApkSignerEngine;->mRotationMinSdkVersion:I

    const/16 v1, 0x21

    if-lt v0, v1, :cond_0

    iget v1, p0, Lcom/android/apksig/DefaultApkSignerEngine;->mMinSdkVersion:I

    if-ge v1, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method public close()V
    .locals 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/apksig/DefaultApkSignerEngine;->mClosed:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/apksig/DefaultApkSignerEngine;->mAddV1SignatureRequest:Lcom/android/apksig/DefaultApkSignerEngine$OutputJarSignatureRequestImpl;

    iput-object v0, p0, Lcom/android/apksig/DefaultApkSignerEngine;->mInputJarManifestEntryDataRequest:Lcom/android/apksig/DefaultApkSignerEngine$GetJarEntryDataRequest;

    iput-object v0, p0, Lcom/android/apksig/DefaultApkSignerEngine;->mOutputAndroidManifestEntryDataRequest:Lcom/android/apksig/DefaultApkSignerEngine$GetJarEntryDataRequest;

    iput-object v0, p0, Lcom/android/apksig/DefaultApkSignerEngine;->mDebuggable:Ljava/lang/Boolean;

    iget-object v1, p0, Lcom/android/apksig/DefaultApkSignerEngine;->mOutputJarEntryDigestRequests:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    iget-object v1, p0, Lcom/android/apksig/DefaultApkSignerEngine;->mOutputJarEntryDigests:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    iget-object v1, p0, Lcom/android/apksig/DefaultApkSignerEngine;->mEmittedSignatureJarEntryData:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    iget-object v1, p0, Lcom/android/apksig/DefaultApkSignerEngine;->mOutputSignatureJarEntryDataRequests:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    iput-object v0, p0, Lcom/android/apksig/DefaultApkSignerEngine;->mAddSigningBlockRequest:Lcom/android/apksig/DefaultApkSignerEngine$OutputApkSigningBlockRequestImpl;

    return-void
.end method

.method public generateSourceStampCertificateDigest()[B
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/SignatureException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/apksig/DefaultApkSignerEngine;->mSourceStampSignerConfig:Lcom/android/apksig/DefaultApkSignerEngine$SignerConfig;

    invoke-virtual {v0}, Lcom/android/apksig/DefaultApkSignerEngine$SignerConfig;->getCertificates()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/android/apksig/DefaultApkSignerEngine;->mSourceStampSignerConfig:Lcom/android/apksig/DefaultApkSignerEngine$SignerConfig;

    invoke-virtual {v0}, Lcom/android/apksig/DefaultApkSignerEngine$SignerConfig;->getCertificates()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/cert/X509Certificate;

    invoke-virtual {v0}, Ljava/security/cert/Certificate;->getEncoded()[B

    move-result-object v0

    invoke-static {v0}, Lcom/android/apksig/apk/ApkUtils;->computeSha256DigestBytes([B)[B

    move-result-object v0
    :try_end_0
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/security/SignatureException;

    const-string v2, "Failed to encode source stamp certificate"

    invoke-direct {v1, v2, v0}, Ljava/security/SignatureException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_0
    new-instance v0, Ljava/security/SignatureException;

    const-string v1, "No certificates configured for stamp"

    invoke-direct {v0, v1}, Ljava/security/SignatureException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public initWith([BLjava/util/Set;)Ljava/util/Set;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/android/apksig/internal/apk/v1/V1SchemeVerifier$Result;

    invoke-direct {v0}, Lcom/android/apksig/internal/apk/v1/V1SchemeVerifier$Result;-><init>()V

    invoke-static {p1, p2, v0}, Lcom/android/apksig/internal/apk/v1/V1SchemeVerifier;->parseManifest([BLjava/util/Set;Lcom/android/apksig/internal/apk/v1/V1SchemeVerifier$Result;)Lcom/android/apksig/internal/util/Pair;

    move-result-object p1

    iget-object p2, p0, Lcom/android/apksig/DefaultApkSignerEngine;->mV1ContentDigestAlgorithm:Lcom/android/apksig/internal/apk/v1/DigestAlgorithm;

    invoke-static {p2}, Lcom/android/apksig/internal/apk/v1/V1SchemeSigner;->getJcaMessageDigestAlgorithm(Lcom/android/apksig/internal/apk/v1/DigestAlgorithm;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1}, Lcom/android/apksig/internal/util/Pair;->getSecond()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Lcom/android/apksig/internal/apk/v1/V1SchemeSigner;->isJarEntryDigestNeededInManifest(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-direct {p0, v1}, Lcom/android/apksig/DefaultApkSignerEngine;->isDebuggable(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/apksig/internal/jar/ManifestParser$Section;

    iget v2, p0, Lcom/android/apksig/DefaultApkSignerEngine;->mMinSdkVersion:I

    const v3, 0x7fffffff

    const-string v4, "-Digest"

    invoke-static {v0, v4, v2, v3}, Lcom/android/apksig/internal/apk/v1/V1SchemeVerifier;->getDigestsToVerify(Lcom/android/apksig/internal/jar/ManifestParser$Section;Ljava/lang/String;II)Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/apksig/internal/apk/v1/V1SchemeVerifier$NamedDigest;

    iget-object v3, v2, Lcom/android/apksig/internal/apk/v1/V1SchemeVerifier$NamedDigest;->jcaDigestAlgorithm:Ljava/lang/String;

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    :goto_1
    if-eqz v2, :cond_0

    iget-object v0, p0, Lcom/android/apksig/DefaultApkSignerEngine;->mOutputJarEntryDigests:Ljava/util/Map;

    iget-object v2, v2, Lcom/android/apksig/internal/apk/v1/V1SchemeVerifier$NamedDigest;->digest:[B

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_3
    iget-object p1, p0, Lcom/android/apksig/DefaultApkSignerEngine;->mOutputJarEntryDigests:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p1

    return-object p1
.end method

.method public inputApkSigningBlock(Lcom/android/apksig/util/DataSource;)V
    .locals 6

    invoke-direct {p0}, Lcom/android/apksig/DefaultApkSignerEngine;->checkNotClosed()V

    if-eqz p1, :cond_c

    invoke-interface {p1}, Lcom/android/apksig/util/DataSource;->size()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    goto/16 :goto_4

    :cond_0
    iget-boolean v0, p0, Lcom/android/apksig/DefaultApkSignerEngine;->mOtherSignersSignaturesPreserved:Z

    if-eqz v0, :cond_c

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/apksig/DefaultApkSignerEngine;->mPreservedSignatureBlocks:Ljava/util/List;

    :try_start_0
    invoke-static {p1}, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils;->getApkSignatureBlocks(Lcom/android/apksig/util/DataSource;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v0, 0x0

    move v1, v0

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/apksig/internal/util/Pair;

    invoke-virtual {v2}, Lcom/android/apksig/internal/util/Pair;->getSecond()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const v4, 0x7109871a

    const/4 v5, 0x1

    if-ne v3, v4, :cond_4

    iget-boolean v3, p0, Lcom/android/apksig/DefaultApkSignerEngine;->mV2SigningEnabled:Z

    if-eqz v3, :cond_3

    invoke-virtual {v2}, Lcom/android/apksig/internal/util/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    invoke-static {v2}, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils;->getApkSignatureBlockSigners([B)Ljava/util/List;

    move-result-object v2

    new-instance v3, Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v3, p0, Lcom/android/apksig/DefaultApkSignerEngine;->mPreservedV2Signers:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/apksig/internal/util/Pair;

    invoke-virtual {v3}, Lcom/android/apksig/internal/util/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-direct {p0, v4}, Lcom/android/apksig/DefaultApkSignerEngine;->isConfiguredWithSigner(Ljava/util/List;)Z

    move-result v4

    if-nez v4, :cond_2

    iget-object v1, p0, Lcom/android/apksig/DefaultApkSignerEngine;->mPreservedV2Signers:Ljava/util/List;

    invoke-virtual {v3}, Lcom/android/apksig/internal/util/Pair;->getSecond()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [B

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v1, v5

    goto :goto_1

    :catch_0
    move-exception p1

    goto/16 :goto_3

    :catch_1
    move-exception p1

    goto/16 :goto_3

    :catch_2
    move-exception p1

    goto/16 :goto_3

    :cond_3
    iget-object v1, p0, Lcom/android/apksig/DefaultApkSignerEngine;->mPreservedSignatureBlocks:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v1, v5

    goto :goto_0

    :cond_4
    invoke-virtual {v2}, Lcom/android/apksig/internal/util/Pair;->getSecond()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const v4, -0xfac9740

    if-ne v3, v4, :cond_8

    iget-boolean v3, p0, Lcom/android/apksig/DefaultApkSignerEngine;->mV3SigningEnabled:Z

    if-eqz v3, :cond_7

    invoke-virtual {v2}, Lcom/android/apksig/internal/util/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    invoke-static {v2}, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils;->getApkSignatureBlockSigners([B)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-gt v3, v5, :cond_6

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-ne v3, v5, :cond_1

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/apksig/internal/util/Pair;

    invoke-virtual {v2}, Lcom/android/apksig/internal/util/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-direct {p0, v2}, Lcom/android/apksig/DefaultApkSignerEngine;->isConfiguredWithSigner(Ljava/util/List;)Z

    move-result v2

    if-eqz v2, :cond_5

    goto/16 :goto_0

    :cond_5
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "The V3 signature scheme only supports one signer; a request was made to preserve the existing V3 signature, but the engine is configured to sign with a different signer"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_6
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "The provided APK signing block contains "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " V3 signers; the V3 signature scheme only supports one signer"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_7
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Preserving an existing V3 signature is not supported"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_8
    sget-object v3, Lcom/android/apksig/DefaultApkSignerEngine;->DISCARDED_SIGNATURE_BLOCK_IDS:Ljava/util/Set;

    invoke-virtual {v2}, Lcom/android/apksig/internal/util/Pair;->getSecond()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/android/apksig/DefaultApkSignerEngine;->mPreservedSignatureBlocks:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lcom/android/apksig/apk/ApkFormatException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :cond_9
    iget-boolean p1, p0, Lcom/android/apksig/DefaultApkSignerEngine;->mV3SigningEnabled:Z

    if-eqz p1, :cond_b

    if-nez v1, :cond_a

    goto :goto_2

    :cond_a
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Signature scheme V3+ only supports a single signer and cannot be appended to the existing signature scheme blocks"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_b
    :goto_2
    return-void

    :goto_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Unable to parse the provided signing block"

    invoke-direct {v0, v1, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :cond_c
    :goto_4
    return-void
.end method

.method public inputJarEntry(Ljava/lang/String;)Lcom/android/apksig/ApkSignerEngine$InputJarEntryInstructions;
    .locals 3

    invoke-direct {p0}, Lcom/android/apksig/DefaultApkSignerEngine;->checkNotClosed()V

    invoke-direct {p0, p1}, Lcom/android/apksig/DefaultApkSignerEngine;->getInputJarEntryOutputPolicy(Ljava/lang/String;)Lcom/android/apksig/ApkSignerEngine$InputJarEntryInstructions$OutputPolicy;

    move-result-object v0

    sget-object v1, Lcom/android/apksig/DefaultApkSignerEngine$1;->$SwitchMap$com$android$apksig$ApkSignerEngine$InputJarEntryInstructions$OutputPolicy:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/4 v2, 0x1

    if-eq v1, v2, :cond_3

    const/4 v2, 0x2

    if-eq v1, v2, :cond_2

    const/4 v2, 0x3

    if-ne v1, v2, :cond_1

    const-string v0, "META-INF/MANIFEST.MF"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/android/apksig/DefaultApkSignerEngine$GetJarEntryDataRequest;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/android/apksig/DefaultApkSignerEngine$GetJarEntryDataRequest;-><init>(Ljava/lang/String;Lcom/android/apksig/DefaultApkSignerEngine$1;)V

    iput-object v0, p0, Lcom/android/apksig/DefaultApkSignerEngine;->mInputJarManifestEntryDataRequest:Lcom/android/apksig/DefaultApkSignerEngine$GetJarEntryDataRequest;

    new-instance p1, Lcom/android/apksig/ApkSignerEngine$InputJarEntryInstructions;

    sget-object v1, Lcom/android/apksig/ApkSignerEngine$InputJarEntryInstructions$OutputPolicy;->OUTPUT_BY_ENGINE:Lcom/android/apksig/ApkSignerEngine$InputJarEntryInstructions$OutputPolicy;

    invoke-direct {p1, v1, v0}, Lcom/android/apksig/ApkSignerEngine$InputJarEntryInstructions;-><init>(Lcom/android/apksig/ApkSignerEngine$InputJarEntryInstructions$OutputPolicy;Lcom/android/apksig/ApkSignerEngine$InspectJarEntryRequest;)V

    return-object p1

    :cond_0
    new-instance p1, Lcom/android/apksig/ApkSignerEngine$InputJarEntryInstructions;

    sget-object v0, Lcom/android/apksig/ApkSignerEngine$InputJarEntryInstructions$OutputPolicy;->OUTPUT_BY_ENGINE:Lcom/android/apksig/ApkSignerEngine$InputJarEntryInstructions$OutputPolicy;

    invoke-direct {p1, v0}, Lcom/android/apksig/ApkSignerEngine$InputJarEntryInstructions;-><init>(Lcom/android/apksig/ApkSignerEngine$InputJarEntryInstructions$OutputPolicy;)V

    return-object p1

    :cond_1
    new-instance p1, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported output policy: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    new-instance p1, Lcom/android/apksig/ApkSignerEngine$InputJarEntryInstructions;

    sget-object v0, Lcom/android/apksig/ApkSignerEngine$InputJarEntryInstructions$OutputPolicy;->OUTPUT:Lcom/android/apksig/ApkSignerEngine$InputJarEntryInstructions$OutputPolicy;

    invoke-direct {p1, v0}, Lcom/android/apksig/ApkSignerEngine$InputJarEntryInstructions;-><init>(Lcom/android/apksig/ApkSignerEngine$InputJarEntryInstructions$OutputPolicy;)V

    return-object p1

    :cond_3
    new-instance p1, Lcom/android/apksig/ApkSignerEngine$InputJarEntryInstructions;

    sget-object v0, Lcom/android/apksig/ApkSignerEngine$InputJarEntryInstructions$OutputPolicy;->SKIP:Lcom/android/apksig/ApkSignerEngine$InputJarEntryInstructions$OutputPolicy;

    invoke-direct {p1, v0}, Lcom/android/apksig/ApkSignerEngine$InputJarEntryInstructions;-><init>(Lcom/android/apksig/ApkSignerEngine$InputJarEntryInstructions$OutputPolicy;)V

    return-object p1
.end method

.method public inputJarEntryRemoved(Ljava/lang/String;)Lcom/android/apksig/ApkSignerEngine$InputJarEntryInstructions$OutputPolicy;
    .locals 0

    invoke-direct {p0}, Lcom/android/apksig/DefaultApkSignerEngine;->checkNotClosed()V

    invoke-direct {p0, p1}, Lcom/android/apksig/DefaultApkSignerEngine;->getInputJarEntryOutputPolicy(Ljava/lang/String;)Lcom/android/apksig/ApkSignerEngine$InputJarEntryInstructions$OutputPolicy;

    move-result-object p1

    return-object p1
.end method

.method public isEligibleForSourceStamp()Z
    .locals 1

    iget-object v0, p0, Lcom/android/apksig/DefaultApkSignerEngine;->mSourceStampSignerConfig:Lcom/android/apksig/DefaultApkSignerEngine$SignerConfig;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/apksig/DefaultApkSignerEngine;->mV2SigningEnabled:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/apksig/DefaultApkSignerEngine;->mV3SigningEnabled:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/apksig/DefaultApkSignerEngine;->mV1SigningEnabled:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public outputDone()V
    .locals 0

    invoke-direct {p0}, Lcom/android/apksig/DefaultApkSignerEngine;->checkNotClosed()V

    invoke-direct {p0}, Lcom/android/apksig/DefaultApkSignerEngine;->checkV1SigningDoneIfEnabled()V

    invoke-direct {p0}, Lcom/android/apksig/DefaultApkSignerEngine;->checkSigningBlockDoneIfEnabled()V

    return-void
.end method

.method public outputJarEntries()Lcom/android/apksig/ApkSignerEngine$OutputJarSignatureRequest;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/apksig/apk/ApkFormatException;,
            Ljava/security/InvalidKeyException;,
            Ljava/security/SignatureException;,
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/android/apksig/DefaultApkSignerEngine;->checkNotClosed()V

    iget-boolean v0, p0, Lcom/android/apksig/DefaultApkSignerEngine;->mV1SignaturePending:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    iget-object v0, p0, Lcom/android/apksig/DefaultApkSignerEngine;->mInputJarManifestEntryDataRequest:Lcom/android/apksig/DefaultApkSignerEngine$GetJarEntryDataRequest;

    if-eqz v0, :cond_2

    invoke-static {v0}, Lcom/android/apksig/DefaultApkSignerEngine$GetJarEntryDataRequest;->access$400(Lcom/android/apksig/DefaultApkSignerEngine$GetJarEntryDataRequest;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Still waiting to inspect input APK\'s "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/apksig/DefaultApkSignerEngine;->mInputJarManifestEntryDataRequest:Lcom/android/apksig/DefaultApkSignerEngine$GetJarEntryDataRequest;

    invoke-virtual {v2}, Lcom/android/apksig/DefaultApkSignerEngine$GetJarEntryDataRequest;->getEntryName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/android/apksig/DefaultApkSignerEngine;->mOutputJarEntryDigestRequests:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const-string v3, "Still waiting to inspect output APK\'s "

    if-eqz v2, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/apksig/DefaultApkSignerEngine$GetJarEntryDataDigestRequest;

    invoke-virtual {v2}, Lcom/android/apksig/DefaultApkSignerEngine$GetJarEntryDataDigestRequest;->getEntryName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2}, Lcom/android/apksig/DefaultApkSignerEngine$GetJarEntryDataDigestRequest;->access$500(Lcom/android/apksig/DefaultApkSignerEngine$GetJarEntryDataDigestRequest;)Z

    move-result v5

    if-eqz v5, :cond_3

    iget-object v3, p0, Lcom/android/apksig/DefaultApkSignerEngine;->mOutputJarEntryDigests:Ljava/util/Map;

    invoke-static {v2}, Lcom/android/apksig/DefaultApkSignerEngine$GetJarEntryDataDigestRequest;->access$600(Lcom/android/apksig/DefaultApkSignerEngine$GetJarEntryDataDigestRequest;)[B

    move-result-object v2

    invoke-interface {v3, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    invoke-virtual {p0}, Lcom/android/apksig/DefaultApkSignerEngine;->isEligibleForSourceStamp()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/apksig/DefaultApkSignerEngine;->mV1ContentDigestAlgorithm:Lcom/android/apksig/internal/apk/v1/DigestAlgorithm;

    invoke-static {v0}, Lcom/android/apksig/internal/apk/v1/V1SchemeSigner;->getJcaMessageDigestAlgorithm(Lcom/android/apksig/internal/apk/v1/DigestAlgorithm;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/apksig/DefaultApkSignerEngine;->generateSourceStampCertificateDigest()[B

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/security/MessageDigest;->update([B)V

    iget-object v2, p0, Lcom/android/apksig/DefaultApkSignerEngine;->mOutputJarEntryDigests:Ljava/util/Map;

    const-string v4, "stamp-cert-sha256"

    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v0

    invoke-interface {v2, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    iget-object v0, p0, Lcom/android/apksig/DefaultApkSignerEngine;->mOutputJarEntryDigestRequests:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    iget-object v0, p0, Lcom/android/apksig/DefaultApkSignerEngine;->mOutputSignatureJarEntryDataRequests:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/apksig/DefaultApkSignerEngine$GetJarEntryDataRequest;

    invoke-static {v2}, Lcom/android/apksig/DefaultApkSignerEngine$GetJarEntryDataRequest;->access$400(Lcom/android/apksig/DefaultApkSignerEngine$GetJarEntryDataRequest;)Z

    move-result v4

    if-eqz v4, :cond_6

    goto :goto_2

    :cond_6
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/android/apksig/DefaultApkSignerEngine$GetJarEntryDataRequest;->getEntryName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_7
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iget-boolean v0, p0, Lcom/android/apksig/DefaultApkSignerEngine;->mV2SigningEnabled:Z

    if-eqz v0, :cond_8

    const/4 v0, 0x2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_8
    iget-boolean v0, p0, Lcom/android/apksig/DefaultApkSignerEngine;->mV3SigningEnabled:Z

    if-eqz v0, :cond_9

    const/4 v0, 0x3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_9
    iget-object v0, p0, Lcom/android/apksig/DefaultApkSignerEngine;->mInputJarManifestEntryDataRequest:Lcom/android/apksig/DefaultApkSignerEngine$GetJarEntryDataRequest;

    if-eqz v0, :cond_a

    invoke-static {v0}, Lcom/android/apksig/DefaultApkSignerEngine$GetJarEntryDataRequest;->access$700(Lcom/android/apksig/DefaultApkSignerEngine$GetJarEntryDataRequest;)[B

    move-result-object v0

    goto :goto_3

    :cond_a
    move-object v0, v1

    :goto_3
    invoke-virtual {p0}, Lcom/android/apksig/DefaultApkSignerEngine;->isEligibleForSourceStamp()Z

    move-result v2

    if-eqz v2, :cond_b

    iget-object v2, p0, Lcom/android/apksig/DefaultApkSignerEngine;->mV1ContentDigestAlgorithm:Lcom/android/apksig/internal/apk/v1/DigestAlgorithm;

    iget-object v3, p0, Lcom/android/apksig/DefaultApkSignerEngine;->mOutputJarEntryDigests:Ljava/util/Map;

    invoke-static {v2, v3, v0}, Lcom/android/apksig/internal/apk/v1/V1SchemeSigner;->generateManifestFile(Lcom/android/apksig/internal/apk/v1/DigestAlgorithm;Ljava/util/Map;[B)Lcom/android/apksig/internal/apk/v1/V1SchemeSigner$OutputManifestFile;

    move-result-object v0

    iget-object v0, v0, Lcom/android/apksig/internal/apk/v1/V1SchemeSigner$OutputManifestFile;->contents:[B

    :cond_b
    move-object v6, v0

    invoke-direct {p0}, Lcom/android/apksig/DefaultApkSignerEngine;->checkOutputApkNotDebuggableIfDebuggableMustBeRejected()V

    iget-object v0, p0, Lcom/android/apksig/DefaultApkSignerEngine;->mAddV1SignatureRequest:Lcom/android/apksig/DefaultApkSignerEngine$OutputJarSignatureRequestImpl;

    const-string v8, "Failed to generate v1 signature"

    if-eqz v0, :cond_11

    invoke-static {v0}, Lcom/android/apksig/DefaultApkSignerEngine$OutputJarSignatureRequestImpl;->access$800(Lcom/android/apksig/DefaultApkSignerEngine$OutputJarSignatureRequestImpl;)Z

    move-result v0

    if-nez v0, :cond_c

    goto/16 :goto_5

    :cond_c
    iget-object v0, p0, Lcom/android/apksig/DefaultApkSignerEngine;->mV1ContentDigestAlgorithm:Lcom/android/apksig/internal/apk/v1/DigestAlgorithm;

    iget-object v2, p0, Lcom/android/apksig/DefaultApkSignerEngine;->mOutputJarEntryDigests:Ljava/util/Map;

    invoke-static {v0, v2, v6}, Lcom/android/apksig/internal/apk/v1/V1SchemeSigner;->generateManifestFile(Lcom/android/apksig/internal/apk/v1/DigestAlgorithm;Ljava/util/Map;[B)Lcom/android/apksig/internal/apk/v1/V1SchemeSigner$OutputManifestFile;

    move-result-object v0

    iget-object v2, p0, Lcom/android/apksig/DefaultApkSignerEngine;->mEmittedSignatureJarEntryData:Ljava/util/Map;

    const-string v3, "META-INF/MANIFEST.MF"

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    iget-object v3, v0, Lcom/android/apksig/internal/apk/v1/V1SchemeSigner$OutputManifestFile;->contents:[B

    invoke-static {v3, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    if-nez v2, :cond_d

    :try_start_0
    iget-object v2, p0, Lcom/android/apksig/DefaultApkSignerEngine;->mV1SignerConfigs:Ljava/util/List;

    iget-object v3, p0, Lcom/android/apksig/DefaultApkSignerEngine;->mV1ContentDigestAlgorithm:Lcom/android/apksig/internal/apk/v1/DigestAlgorithm;

    iget-object v4, p0, Lcom/android/apksig/DefaultApkSignerEngine;->mCreatedBy:Ljava/lang/String;

    invoke-static {v2, v3, v5, v4, v0}, Lcom/android/apksig/internal/apk/v1/V1SchemeSigner;->signManifest(Ljava/util/List;Lcom/android/apksig/internal/apk/v1/DigestAlgorithm;Ljava/util/List;Ljava/lang/String;Lcom/android/apksig/internal/apk/v1/V1SchemeSigner$OutputManifestFile;)Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_6

    :catch_0
    move-exception v0

    new-instance v1, Ljava/security/SignatureException;

    invoke-direct {v1, v8, v0}, Ljava/security/SignatureException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_d
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v2, p0, Lcom/android/apksig/DefaultApkSignerEngine;->mEmittedSignatureJarEntryData:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_e
    :goto_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_10

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [B

    iget-object v5, p0, Lcom/android/apksig/DefaultApkSignerEngine;->mOutputSignatureJarEntryDataRequests:Ljava/util/Map;

    invoke-interface {v5, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/apksig/DefaultApkSignerEngine$GetJarEntryDataRequest;

    if-nez v5, :cond_f

    invoke-static {v4, v3}, Lcom/android/apksig/internal/util/Pair;->of(Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/apksig/internal/util/Pair;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_f
    invoke-static {v5}, Lcom/android/apksig/DefaultApkSignerEngine$GetJarEntryDataRequest;->access$700(Lcom/android/apksig/DefaultApkSignerEngine$GetJarEntryDataRequest;)[B

    move-result-object v5

    invoke-static {v3, v5}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v5

    if-nez v5, :cond_e

    invoke-static {v4, v3}, Lcom/android/apksig/internal/util/Pair;->of(Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/apksig/internal/util/Pair;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_10
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_12

    return-object v1

    :cond_11
    :goto_5
    :try_start_1
    iget-object v2, p0, Lcom/android/apksig/DefaultApkSignerEngine;->mV1SignerConfigs:Ljava/util/List;

    iget-object v3, p0, Lcom/android/apksig/DefaultApkSignerEngine;->mV1ContentDigestAlgorithm:Lcom/android/apksig/internal/apk/v1/DigestAlgorithm;

    iget-object v4, p0, Lcom/android/apksig/DefaultApkSignerEngine;->mOutputJarEntryDigests:Ljava/util/Map;

    iget-object v7, p0, Lcom/android/apksig/DefaultApkSignerEngine;->mCreatedBy:Ljava/lang/String;

    invoke-static/range {v2 .. v7}, Lcom/android/apksig/internal/apk/v1/V1SchemeSigner;->sign(Ljava/util/List;Lcom/android/apksig/internal/apk/v1/DigestAlgorithm;Ljava/util/Map;Ljava/util/List;[BLjava/lang/String;)Ljava/util/List;

    move-result-object v0
    :try_end_1
    .catch Ljava/security/cert/CertificateException; {:try_start_1 .. :try_end_1} :catch_1

    :cond_12
    :goto_6
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_13

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/apksig/DefaultApkSignerEngine;->mV1SignaturePending:Z

    return-object v1

    :cond_13
    new-instance v2, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_14

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/apksig/internal/util/Pair;

    invoke-virtual {v3}, Lcom/android/apksig/internal/util/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v3}, Lcom/android/apksig/internal/util/Pair;->getSecond()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [B

    new-instance v5, Lcom/android/apksig/ApkSignerEngine$OutputJarSignatureRequest$JarEntry;

    invoke-direct {v5, v4, v3}, Lcom/android/apksig/ApkSignerEngine$OutputJarSignatureRequest$JarEntry;-><init>(Ljava/lang/String;[B)V

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v5, p0, Lcom/android/apksig/DefaultApkSignerEngine;->mEmittedSignatureJarEntryData:Ljava/util/Map;

    invoke-interface {v5, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_7

    :cond_14
    new-instance v0, Lcom/android/apksig/DefaultApkSignerEngine$OutputJarSignatureRequestImpl;

    invoke-direct {v0, v2, v1}, Lcom/android/apksig/DefaultApkSignerEngine$OutputJarSignatureRequestImpl;-><init>(Ljava/util/List;Lcom/android/apksig/DefaultApkSignerEngine$1;)V

    iput-object v0, p0, Lcom/android/apksig/DefaultApkSignerEngine;->mAddV1SignatureRequest:Lcom/android/apksig/DefaultApkSignerEngine$OutputJarSignatureRequestImpl;

    return-object v0

    :catch_1
    move-exception v0

    new-instance v1, Ljava/security/SignatureException;

    invoke-direct {v1, v8, v0}, Ljava/security/SignatureException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public outputJarEntry(Ljava/lang/String;)Lcom/android/apksig/ApkSignerEngine$InspectJarEntryRequest;
    .locals 6

    invoke-direct {p0}, Lcom/android/apksig/DefaultApkSignerEngine;->checkNotClosed()V

    invoke-direct {p0}, Lcom/android/apksig/DefaultApkSignerEngine;->invalidateV2Signature()V

    invoke-direct {p0, p1}, Lcom/android/apksig/DefaultApkSignerEngine;->isDebuggable(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/apksig/DefaultApkSignerEngine;->forgetOutputApkDebuggableStatus()V

    :cond_0
    iget-boolean v0, p0, Lcom/android/apksig/DefaultApkSignerEngine;->mV1SigningEnabled:Z

    const/4 v1, 0x0

    if-nez v0, :cond_2

    invoke-direct {p0, p1}, Lcom/android/apksig/DefaultApkSignerEngine;->isDebuggable(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Lcom/android/apksig/DefaultApkSignerEngine$GetJarEntryDataRequest;

    invoke-direct {v0, p1, v1}, Lcom/android/apksig/DefaultApkSignerEngine$GetJarEntryDataRequest;-><init>(Ljava/lang/String;Lcom/android/apksig/DefaultApkSignerEngine$1;)V

    iput-object v0, p0, Lcom/android/apksig/DefaultApkSignerEngine;->mOutputAndroidManifestEntryDataRequest:Lcom/android/apksig/DefaultApkSignerEngine$GetJarEntryDataRequest;

    return-object v0

    :cond_1
    return-object v1

    :cond_2
    invoke-static {p1}, Lcom/android/apksig/internal/apk/v1/V1SchemeSigner;->isJarEntryDigestNeededInManifest(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-direct {p0}, Lcom/android/apksig/DefaultApkSignerEngine;->invalidateV1Signature()V

    new-instance v0, Lcom/android/apksig/DefaultApkSignerEngine$GetJarEntryDataDigestRequest;

    iget-object v2, p0, Lcom/android/apksig/DefaultApkSignerEngine;->mV1ContentDigestAlgorithm:Lcom/android/apksig/internal/apk/v1/DigestAlgorithm;

    invoke-static {v2}, Lcom/android/apksig/internal/apk/v1/V1SchemeSigner;->getJcaMessageDigestAlgorithm(Lcom/android/apksig/internal/apk/v1/DigestAlgorithm;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, p1, v2, v1}, Lcom/android/apksig/DefaultApkSignerEngine$GetJarEntryDataDigestRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/android/apksig/DefaultApkSignerEngine$1;)V

    iget-object v2, p0, Lcom/android/apksig/DefaultApkSignerEngine;->mOutputJarEntryDigestRequests:Ljava/util/Map;

    invoke-interface {v2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Lcom/android/apksig/DefaultApkSignerEngine;->mOutputJarEntryDigests:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-boolean v2, p0, Lcom/android/apksig/DefaultApkSignerEngine;->mDebuggableApkPermitted:Z

    if-nez v2, :cond_3

    const-string v2, "AndroidManifest.xml"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    new-instance v2, Lcom/android/apksig/DefaultApkSignerEngine$GetJarEntryDataRequest;

    invoke-direct {v2, p1, v1}, Lcom/android/apksig/DefaultApkSignerEngine$GetJarEntryDataRequest;-><init>(Ljava/lang/String;Lcom/android/apksig/DefaultApkSignerEngine$1;)V

    iput-object v2, p0, Lcom/android/apksig/DefaultApkSignerEngine;->mOutputAndroidManifestEntryDataRequest:Lcom/android/apksig/DefaultApkSignerEngine$GetJarEntryDataRequest;

    new-instance v3, Lcom/android/apksig/DefaultApkSignerEngine$CompoundInspectJarEntryRequest;

    const/4 v4, 0x2

    new-array v4, v4, [Lcom/android/apksig/ApkSignerEngine$InspectJarEntryRequest;

    const/4 v5, 0x0

    aput-object v2, v4, v5

    const/4 v2, 0x1

    aput-object v0, v4, v2

    invoke-direct {v3, p1, v4, v1}, Lcom/android/apksig/DefaultApkSignerEngine$CompoundInspectJarEntryRequest;-><init>(Ljava/lang/String;[Lcom/android/apksig/ApkSignerEngine$InspectJarEntryRequest;Lcom/android/apksig/DefaultApkSignerEngine$1;)V

    return-object v3

    :cond_3
    return-object v0

    :cond_4
    iget-object v0, p0, Lcom/android/apksig/DefaultApkSignerEngine;->mSignatureExpectedOutputJarEntryNames:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-direct {p0}, Lcom/android/apksig/DefaultApkSignerEngine;->invalidateV1Signature()V

    const-string v0, "META-INF/MANIFEST.MF"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    new-instance v0, Lcom/android/apksig/DefaultApkSignerEngine$GetJarEntryDataRequest;

    invoke-direct {v0, p1, v1}, Lcom/android/apksig/DefaultApkSignerEngine$GetJarEntryDataRequest;-><init>(Ljava/lang/String;Lcom/android/apksig/DefaultApkSignerEngine$1;)V

    iput-object v0, p0, Lcom/android/apksig/DefaultApkSignerEngine;->mInputJarManifestEntryDataRequest:Lcom/android/apksig/DefaultApkSignerEngine$GetJarEntryDataRequest;

    goto :goto_0

    :cond_5
    iget-object v0, p0, Lcom/android/apksig/DefaultApkSignerEngine;->mEmittedSignatureJarEntryData:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    new-instance v0, Lcom/android/apksig/DefaultApkSignerEngine$GetJarEntryDataRequest;

    invoke-direct {v0, p1, v1}, Lcom/android/apksig/DefaultApkSignerEngine$GetJarEntryDataRequest;-><init>(Ljava/lang/String;Lcom/android/apksig/DefaultApkSignerEngine$1;)V

    move-object v1, v0

    :cond_6
    move-object v0, v1

    :goto_0
    if-eqz v0, :cond_7

    iget-object v1, p0, Lcom/android/apksig/DefaultApkSignerEngine;->mOutputSignatureJarEntryDataRequests:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_7
    return-object v0

    :cond_8
    return-object v1
.end method

.method public outputJarEntryRemoved(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Lcom/android/apksig/DefaultApkSignerEngine;->checkNotClosed()V

    invoke-direct {p0}, Lcom/android/apksig/DefaultApkSignerEngine;->invalidateV2Signature()V

    iget-boolean v0, p0, Lcom/android/apksig/DefaultApkSignerEngine;->mV1SigningEnabled:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {p1}, Lcom/android/apksig/internal/apk/v1/V1SchemeSigner;->isJarEntryDigestNeededInManifest(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/android/apksig/DefaultApkSignerEngine;->invalidateV1Signature()V

    iget-object v0, p0, Lcom/android/apksig/DefaultApkSignerEngine;->mOutputJarEntryDigests:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/apksig/DefaultApkSignerEngine;->mOutputJarEntryDigestRequests:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/apksig/DefaultApkSignerEngine;->mOutputSignatureJarEntryDataRequests:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/apksig/DefaultApkSignerEngine;->mSignatureExpectedOutputJarEntryNames:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-direct {p0}, Lcom/android/apksig/DefaultApkSignerEngine;->invalidateV1Signature()V

    :cond_2
    return-void
.end method

.method public outputZipSections(Lcom/android/apksig/util/DataSource;Lcom/android/apksig/util/DataSource;Lcom/android/apksig/util/DataSource;)Lcom/android/apksig/ApkSignerEngine$OutputApkSigningBlockRequest;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/InvalidKeyException;,
            Ljava/security/SignatureException;,
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/apksig/DefaultApkSignerEngine;->outputZipSectionsInternal(Lcom/android/apksig/util/DataSource;Lcom/android/apksig/util/DataSource;Lcom/android/apksig/util/DataSource;Z)Lcom/android/apksig/DefaultApkSignerEngine$OutputApkSigningBlockRequestImpl;

    move-result-object p1

    return-object p1
.end method

.method public outputZipSections2(Lcom/android/apksig/util/DataSource;Lcom/android/apksig/util/DataSource;Lcom/android/apksig/util/DataSource;)Lcom/android/apksig/ApkSignerEngine$OutputApkSigningBlockRequest2;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/InvalidKeyException;,
            Ljava/security/SignatureException;,
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/apksig/DefaultApkSignerEngine;->outputZipSectionsInternal(Lcom/android/apksig/util/DataSource;Lcom/android/apksig/util/DataSource;Lcom/android/apksig/util/DataSource;Z)Lcom/android/apksig/DefaultApkSignerEngine$OutputApkSigningBlockRequestImpl;

    move-result-object p1

    return-object p1
.end method

.method public produceV4Signature(Lcom/android/apksig/util/DataSource;Ljava/io/OutputStream;)[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/SignatureException;
        }
    .end annotation

    if-eqz p2, :cond_0

    :try_start_0
    invoke-direct {p0}, Lcom/android/apksig/DefaultApkSignerEngine;->createV4SignerConfig()Lcom/android/apksig/internal/apk/v4/V4SchemeSigner$SignerConfig;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/apksig/internal/apk/v4/V4SchemeSigner;->generateV4Signature(Lcom/android/apksig/util/DataSource;Lcom/android/apksig/internal/apk/v4/V4SchemeSigner$SignerConfig;)Lcom/android/apksig/internal/util/Pair;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/apksig/internal/util/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/apksig/internal/apk/v4/V4Signature;

    invoke-virtual {v0, p2}, Lcom/android/apksig/internal/apk/v4/V4Signature;->writeTo(Ljava/io/OutputStream;)V

    invoke-virtual {p1}, Lcom/android/apksig/internal/util/Pair;->getSecond()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [B
    :try_end_0
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    goto :goto_0

    :catch_2
    move-exception p1

    :goto_0
    new-instance p2, Ljava/security/SignatureException;

    const-string v0, "V4 signing failed"

    invoke-direct {p2, v0, p1}, Ljava/security/SignatureException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    :cond_0
    new-instance p1, Ljava/security/SignatureException;

    const-string p2, "Missing V4 output streams."

    invoke-direct {p1, p2}, Ljava/security/SignatureException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setExecutor(Lcom/android/apksig/util/RunnablesExecutor;)V
    .locals 0

    iput-object p1, p0, Lcom/android/apksig/DefaultApkSignerEngine;->mExecutor:Lcom/android/apksig/util/RunnablesExecutor;

    return-void
.end method

.method public signV4(Lcom/android/apksig/util/DataSource;Ljava/io/File;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/SignatureException;
        }
    .end annotation

    if-nez p2, :cond_1

    if-eqz p3, :cond_0

    return-void

    :cond_0
    new-instance p1, Ljava/security/SignatureException;

    const-string p2, "Missing V4 output file."

    invoke-direct {p1, p2}, Ljava/security/SignatureException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :try_start_0
    invoke-direct {p0}, Lcom/android/apksig/DefaultApkSignerEngine;->createV4SignerConfig()Lcom/android/apksig/internal/apk/v4/V4SchemeSigner$SignerConfig;

    move-result-object v0

    invoke-static {p1, v0, p2}, Lcom/android/apksig/internal/apk/v4/V4SchemeSigner;->generateV4Signature(Lcom/android/apksig/util/DataSource;Lcom/android/apksig/internal/apk/v4/V4SchemeSigner$SignerConfig;Ljava/io/File;)V
    :try_end_0
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    goto :goto_0

    :catch_2
    move-exception p1

    :goto_0
    if-eqz p3, :cond_2

    return-void

    :cond_2
    new-instance p2, Ljava/security/SignatureException;

    const-string p3, "V4 signing failed"

    invoke-direct {p2, p3, p1}, Ljava/security/SignatureException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method
