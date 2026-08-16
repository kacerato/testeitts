.class public Lcom/android/apksig/ApkVerifier$Result;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/apksig/ApkVerifier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Result"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/apksig/ApkVerifier$Result$SourceStampInfo;,
        Lcom/android/apksig/ApkVerifier$Result$V1SchemeSignerInfo;,
        Lcom/android/apksig/ApkVerifier$Result$V2SchemeSignerInfo;,
        Lcom/android/apksig/ApkVerifier$Result$V3SchemeSignerInfo;,
        Lcom/android/apksig/ApkVerifier$Result$V4SchemeSignerInfo;
    }
.end annotation


# instance fields
.field private final mErrors:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/apksig/ApkVerifier$IssueWithParams;",
            ">;"
        }
    .end annotation
.end field

.field private final mSignerCerts:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/security/cert/X509Certificate;",
            ">;"
        }
    .end annotation
.end field

.field private mSigningCertificateLineage:Lcom/android/apksig/SigningCertificateLineage;

.field private mSourceStampInfo:Lcom/android/apksig/ApkVerifier$Result$SourceStampInfo;

.field private mSourceStampVerified:Z

.field private final mV1SchemeIgnoredSigners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/apksig/ApkVerifier$Result$V1SchemeSignerInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mV1SchemeSigners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/apksig/ApkVerifier$Result$V1SchemeSignerInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mV2SchemeSigners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/apksig/ApkVerifier$Result$V2SchemeSignerInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mV31SchemeSigners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/apksig/ApkVerifier$Result$V3SchemeSignerInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mV3SchemeSigners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/apksig/ApkVerifier$Result$V3SchemeSignerInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mV4SchemeSigners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/apksig/ApkVerifier$Result$V4SchemeSignerInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mVerified:Z

.field private mVerifiedUsingV1Scheme:Z

.field private mVerifiedUsingV2Scheme:Z

.field private mVerifiedUsingV31Scheme:Z

.field private mVerifiedUsingV3Scheme:Z

.field private mVerifiedUsingV4Scheme:Z

.field private final mWarnings:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/apksig/ApkVerifier$IssueWithParams;",
            ">;"
        }
    .end annotation
.end field

.field private mWarningsAsErrors:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/apksig/ApkVerifier$Result;->mErrors:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/apksig/ApkVerifier$Result;->mWarnings:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/apksig/ApkVerifier$Result;->mSignerCerts:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/apksig/ApkVerifier$Result;->mV1SchemeSigners:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/apksig/ApkVerifier$Result;->mV1SchemeIgnoredSigners:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/apksig/ApkVerifier$Result;->mV2SchemeSigners:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/apksig/ApkVerifier$Result;->mV3SchemeSigners:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/apksig/ApkVerifier$Result;->mV31SchemeSigners:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/apksig/ApkVerifier$Result;->mV4SchemeSigners:Ljava/util/List;

    return-void
.end method

.method public static synthetic access$000(Lcom/android/apksig/ApkVerifier$Result;Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$Result;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/apksig/ApkVerifier$Result;->mergeFrom(Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$Result;)V

    return-void
.end method

.method public static synthetic access$100(Lcom/android/apksig/ApkVerifier$Result;Lcom/android/apksig/internal/apk/v1/V1SchemeVerifier$Result;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/apksig/ApkVerifier$Result;->mergeFrom(Lcom/android/apksig/internal/apk/v1/V1SchemeVerifier$Result;)V

    return-void
.end method

.method public static synthetic access$1000(Lcom/android/apksig/ApkVerifier$Result;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/apksig/ApkVerifier$Result;->setVerified()V

    return-void
.end method

.method public static synthetic access$1100(Lcom/android/apksig/ApkVerifier$Result;Ljava/security/cert/X509Certificate;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/apksig/ApkVerifier$Result;->addSignerCertificate(Ljava/security/cert/X509Certificate;)V

    return-void
.end method

.method public static synthetic access$1202(Lcom/android/apksig/ApkVerifier$Result;Lcom/android/apksig/ApkVerifier$Result$SourceStampInfo;)Lcom/android/apksig/ApkVerifier$Result$SourceStampInfo;
    .locals 0

    iput-object p1, p0, Lcom/android/apksig/ApkVerifier$Result;->mSourceStampInfo:Lcom/android/apksig/ApkVerifier$Result$SourceStampInfo;

    return-object p1
.end method

.method public static synthetic access$200(Lcom/android/apksig/ApkVerifier$Result;Lcom/android/apksig/internal/apk/ApkSigResult;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/apksig/ApkVerifier$Result;->mergeFrom(Lcom/android/apksig/internal/apk/ApkSigResult;)V

    return-void
.end method

.method private addSignerCertificate(Ljava/security/cert/X509Certificate;)V
    .locals 1

    iget-object v0, p0, Lcom/android/apksig/ApkVerifier$Result;->mSignerCerts:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private mergeFrom(Lcom/android/apksig/internal/apk/ApkSigResult;)V
    .locals 3

    .line 8
    iget v0, p1, Lcom/android/apksig/internal/apk/ApkSigResult;->signatureSchemeVersion:I

    if-nez v0, :cond_1

    .line 9
    iget-boolean v0, p1, Lcom/android/apksig/internal/apk/ApkSigResult;->verified:Z

    iput-boolean v0, p0, Lcom/android/apksig/ApkVerifier$Result;->mSourceStampVerified:Z

    .line 10
    iget-object v0, p1, Lcom/android/apksig/internal/apk/ApkSigResult;->mSigners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 11
    new-instance v0, Lcom/android/apksig/ApkVerifier$Result$SourceStampInfo;

    iget-object p1, p1, Lcom/android/apksig/internal/apk/ApkSigResult;->mSigners:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/apksig/internal/apk/ApkSignerInfo;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/android/apksig/ApkVerifier$Result$SourceStampInfo;-><init>(Lcom/android/apksig/internal/apk/ApkSignerInfo;Lcom/android/apksig/ApkVerifier$1;)V

    iput-object v0, p0, Lcom/android/apksig/ApkVerifier$Result;->mSourceStampInfo:Lcom/android/apksig/ApkVerifier$Result$SourceStampInfo;

    :cond_0
    return-void

    .line 12
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown ApkSigResult Signing Block Scheme Id "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Lcom/android/apksig/internal/apk/ApkSigResult;->signatureSchemeVersion:I

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private mergeFrom(Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$Result;)V
    .locals 5

    .line 13
    iget v0, p1, Lcom/android/apksig/internal/apk/ApkSigResult;->signatureSchemeVersion:I

    const/4 v1, 0x0

    if-eqz v0, :cond_6

    const/16 v2, 0x1f

    if-eq v0, v2, :cond_4

    const/4 v2, 0x2

    if-eq v0, v2, :cond_3

    const/4 v2, 0x3

    if-eq v0, v2, :cond_1

    const/4 v2, 0x4

    if-ne v0, v2, :cond_0

    .line 14
    iget-boolean v0, p1, Lcom/android/apksig/internal/apk/ApkSigResult;->verified:Z

    iput-boolean v0, p0, Lcom/android/apksig/ApkVerifier$Result;->mVerifiedUsingV4Scheme:Z

    .line 15
    iget-object p1, p1, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$Result;->signers:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$Result$SignerInfo;

    .line 16
    iget-object v2, p0, Lcom/android/apksig/ApkVerifier$Result;->mV4SchemeSigners:Ljava/util/List;

    new-instance v3, Lcom/android/apksig/ApkVerifier$Result$V4SchemeSignerInfo;

    invoke-direct {v3, v0, v1}, Lcom/android/apksig/ApkVerifier$Result$V4SchemeSignerInfo;-><init>(Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$Result$SignerInfo;Lcom/android/apksig/ApkVerifier$1;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 17
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Unknown Signing Block Scheme Id"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 18
    :cond_1
    iget-boolean v0, p1, Lcom/android/apksig/internal/apk/ApkSigResult;->verified:Z

    iput-boolean v0, p0, Lcom/android/apksig/ApkVerifier$Result;->mVerifiedUsingV3Scheme:Z

    .line 19
    iget-object v0, p1, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$Result;->signers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$Result$SignerInfo;

    .line 20
    iget-object v3, p0, Lcom/android/apksig/ApkVerifier$Result;->mV3SchemeSigners:Ljava/util/List;

    new-instance v4, Lcom/android/apksig/ApkVerifier$Result$V3SchemeSignerInfo;

    invoke-direct {v4, v2, v1}, Lcom/android/apksig/ApkVerifier$Result$V3SchemeSignerInfo;-><init>(Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$Result$SignerInfo;Lcom/android/apksig/ApkVerifier$1;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 21
    :cond_2
    iget-object v0, p0, Lcom/android/apksig/ApkVerifier$Result;->mSigningCertificateLineage:Lcom/android/apksig/SigningCertificateLineage;

    if-nez v0, :cond_7

    .line 22
    iget-object p1, p1, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$Result;->signingCertificateLineage:Lcom/android/apksig/SigningCertificateLineage;

    iput-object p1, p0, Lcom/android/apksig/ApkVerifier$Result;->mSigningCertificateLineage:Lcom/android/apksig/SigningCertificateLineage;

    goto :goto_4

    .line 23
    :cond_3
    iget-boolean v0, p1, Lcom/android/apksig/internal/apk/ApkSigResult;->verified:Z

    iput-boolean v0, p0, Lcom/android/apksig/ApkVerifier$Result;->mVerifiedUsingV2Scheme:Z

    .line 24
    iget-object p1, p1, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$Result;->signers:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$Result$SignerInfo;

    .line 25
    iget-object v2, p0, Lcom/android/apksig/ApkVerifier$Result;->mV2SchemeSigners:Ljava/util/List;

    new-instance v3, Lcom/android/apksig/ApkVerifier$Result$V2SchemeSignerInfo;

    invoke-direct {v3, v0, v1}, Lcom/android/apksig/ApkVerifier$Result$V2SchemeSignerInfo;-><init>(Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$Result$SignerInfo;Lcom/android/apksig/ApkVerifier$1;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 26
    :cond_4
    iget-boolean v0, p1, Lcom/android/apksig/internal/apk/ApkSigResult;->verified:Z

    iput-boolean v0, p0, Lcom/android/apksig/ApkVerifier$Result;->mVerifiedUsingV31Scheme:Z

    .line 27
    iget-object v0, p1, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$Result;->signers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$Result$SignerInfo;

    .line 28
    iget-object v3, p0, Lcom/android/apksig/ApkVerifier$Result;->mV31SchemeSigners:Ljava/util/List;

    new-instance v4, Lcom/android/apksig/ApkVerifier$Result$V3SchemeSignerInfo;

    invoke-direct {v4, v2, v1}, Lcom/android/apksig/ApkVerifier$Result$V3SchemeSignerInfo;-><init>(Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$Result$SignerInfo;Lcom/android/apksig/ApkVerifier$1;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 29
    :cond_5
    iget-object p1, p1, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$Result;->signingCertificateLineage:Lcom/android/apksig/SigningCertificateLineage;

    iput-object p1, p0, Lcom/android/apksig/ApkVerifier$Result;->mSigningCertificateLineage:Lcom/android/apksig/SigningCertificateLineage;

    goto :goto_4

    .line 30
    :cond_6
    iget-boolean v0, p1, Lcom/android/apksig/internal/apk/ApkSigResult;->verified:Z

    iput-boolean v0, p0, Lcom/android/apksig/ApkVerifier$Result;->mSourceStampVerified:Z

    .line 31
    iget-object v0, p1, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$Result;->signers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_7

    .line 32
    new-instance v0, Lcom/android/apksig/ApkVerifier$Result$SourceStampInfo;

    iget-object p1, p1, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$Result;->signers:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/apksig/internal/apk/ApkSignerInfo;

    invoke-direct {v0, p1, v1}, Lcom/android/apksig/ApkVerifier$Result$SourceStampInfo;-><init>(Lcom/android/apksig/internal/apk/ApkSignerInfo;Lcom/android/apksig/ApkVerifier$1;)V

    iput-object v0, p0, Lcom/android/apksig/ApkVerifier$Result;->mSourceStampInfo:Lcom/android/apksig/ApkVerifier$Result$SourceStampInfo;

    :cond_7
    :goto_4
    return-void
.end method

.method private mergeFrom(Lcom/android/apksig/internal/apk/v1/V1SchemeVerifier$Result;)V
    .locals 5

    .line 1
    iget-boolean v0, p1, Lcom/android/apksig/internal/apk/v1/V1SchemeVerifier$Result;->verified:Z

    iput-boolean v0, p0, Lcom/android/apksig/ApkVerifier$Result;->mVerifiedUsingV1Scheme:Z

    .line 2
    iget-object v0, p0, Lcom/android/apksig/ApkVerifier$Result;->mErrors:Ljava/util/List;

    invoke-virtual {p1}, Lcom/android/apksig/internal/apk/v1/V1SchemeVerifier$Result;->getErrors()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 3
    iget-object v0, p0, Lcom/android/apksig/ApkVerifier$Result;->mWarnings:Ljava/util/List;

    invoke-virtual {p1}, Lcom/android/apksig/internal/apk/v1/V1SchemeVerifier$Result;->getWarnings()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 4
    iget-object v0, p1, Lcom/android/apksig/internal/apk/v1/V1SchemeVerifier$Result;->signers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/apksig/internal/apk/v1/V1SchemeVerifier$Result$SignerInfo;

    .line 5
    iget-object v3, p0, Lcom/android/apksig/ApkVerifier$Result;->mV1SchemeSigners:Ljava/util/List;

    new-instance v4, Lcom/android/apksig/ApkVerifier$Result$V1SchemeSignerInfo;

    invoke-direct {v4, v1, v2}, Lcom/android/apksig/ApkVerifier$Result$V1SchemeSignerInfo;-><init>(Lcom/android/apksig/internal/apk/v1/V1SchemeVerifier$Result$SignerInfo;Lcom/android/apksig/ApkVerifier$1;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 6
    :cond_0
    iget-object p1, p1, Lcom/android/apksig/internal/apk/v1/V1SchemeVerifier$Result;->ignoredSigners:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/apksig/internal/apk/v1/V1SchemeVerifier$Result$SignerInfo;

    .line 7
    iget-object v1, p0, Lcom/android/apksig/ApkVerifier$Result;->mV1SchemeIgnoredSigners:Ljava/util/List;

    new-instance v3, Lcom/android/apksig/ApkVerifier$Result$V1SchemeSignerInfo;

    invoke-direct {v3, v0, v2}, Lcom/android/apksig/ApkVerifier$Result$V1SchemeSignerInfo;-><init>(Lcom/android/apksig/internal/apk/v1/V1SchemeVerifier$Result$SignerInfo;Lcom/android/apksig/ApkVerifier$1;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    return-void
.end method

.method private setVerified()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/apksig/ApkVerifier$Result;->mVerified:Z

    return-void
.end method


# virtual methods
.method public varargs addError(Lcom/android/apksig/ApkVerifier$Issue;[Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/android/apksig/ApkVerifier$Result;->mErrors:Ljava/util/List;

    new-instance v1, Lcom/android/apksig/ApkVerifier$IssueWithParams;

    invoke-direct {v1, p1, p2}, Lcom/android/apksig/ApkVerifier$IssueWithParams;-><init>(Lcom/android/apksig/ApkVerifier$Issue;[Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public varargs addWarning(Lcom/android/apksig/ApkVerifier$Issue;[Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/android/apksig/ApkVerifier$Result;->mWarnings:Ljava/util/List;

    new-instance v1, Lcom/android/apksig/ApkVerifier$IssueWithParams;

    invoke-direct {v1, p1, p2}, Lcom/android/apksig/ApkVerifier$IssueWithParams;-><init>(Lcom/android/apksig/ApkVerifier$Issue;[Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public containsErrors()Z
    .locals 4

    iget-object v0, p0, Lcom/android/apksig/ApkVerifier$Result;->mErrors:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-boolean v0, p0, Lcom/android/apksig/ApkVerifier$Result;->mWarningsAsErrors:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/apksig/ApkVerifier$Result;->mWarnings:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    return v1

    :cond_1
    iget-object v0, p0, Lcom/android/apksig/ApkVerifier$Result;->mV1SchemeSigners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/android/apksig/ApkVerifier$Result;->mV1SchemeSigners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/apksig/ApkVerifier$Result$V1SchemeSignerInfo;

    invoke-virtual {v2}, Lcom/android/apksig/ApkVerifier$Result$V1SchemeSignerInfo;->containsErrors()Z

    move-result v3

    if-eqz v3, :cond_3

    return v1

    :cond_3
    iget-boolean v3, p0, Lcom/android/apksig/ApkVerifier$Result;->mWarningsAsErrors:Z

    if-eqz v3, :cond_2

    invoke-virtual {v2}, Lcom/android/apksig/ApkVerifier$Result$V1SchemeSignerInfo;->getWarnings()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    return v1

    :cond_4
    iget-object v0, p0, Lcom/android/apksig/ApkVerifier$Result;->mV2SchemeSigners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/android/apksig/ApkVerifier$Result;->mV2SchemeSigners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/apksig/ApkVerifier$Result$V2SchemeSignerInfo;

    invoke-virtual {v2}, Lcom/android/apksig/ApkVerifier$Result$V2SchemeSignerInfo;->containsErrors()Z

    move-result v3

    if-eqz v3, :cond_6

    return v1

    :cond_6
    iget-boolean v3, p0, Lcom/android/apksig/ApkVerifier$Result;->mWarningsAsErrors:Z

    if-eqz v3, :cond_5

    invoke-virtual {v2}, Lcom/android/apksig/ApkVerifier$Result$V2SchemeSignerInfo;->getWarnings()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_5

    return v1

    :cond_7
    iget-object v0, p0, Lcom/android/apksig/ApkVerifier$Result;->mV3SchemeSigners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_a

    iget-object v0, p0, Lcom/android/apksig/ApkVerifier$Result;->mV3SchemeSigners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/apksig/ApkVerifier$Result$V3SchemeSignerInfo;

    invoke-virtual {v2}, Lcom/android/apksig/ApkVerifier$Result$V3SchemeSignerInfo;->containsErrors()Z

    move-result v3

    if-eqz v3, :cond_9

    return v1

    :cond_9
    iget-boolean v3, p0, Lcom/android/apksig/ApkVerifier$Result;->mWarningsAsErrors:Z

    if-eqz v3, :cond_8

    invoke-virtual {v2}, Lcom/android/apksig/ApkVerifier$Result$V3SchemeSignerInfo;->getWarnings()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_8

    return v1

    :cond_a
    iget-object v0, p0, Lcom/android/apksig/ApkVerifier$Result;->mSourceStampInfo:Lcom/android/apksig/ApkVerifier$Result$SourceStampInfo;

    if-eqz v0, :cond_c

    invoke-virtual {v0}, Lcom/android/apksig/ApkVerifier$Result$SourceStampInfo;->containsErrors()Z

    move-result v0

    if-eqz v0, :cond_b

    return v1

    :cond_b
    iget-boolean v0, p0, Lcom/android/apksig/ApkVerifier$Result;->mWarningsAsErrors:Z

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/android/apksig/ApkVerifier$Result;->mSourceStampInfo:Lcom/android/apksig/ApkVerifier$Result$SourceStampInfo;

    invoke-virtual {v0}, Lcom/android/apksig/ApkVerifier$Result$SourceStampInfo;->getWarnings()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_c

    return v1

    :cond_c
    const/4 v0, 0x0

    return v0
.end method

.method public getAllErrors()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/apksig/ApkVerifier$IssueWithParams;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/android/apksig/ApkVerifier$Result;->mErrors:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-boolean v1, p0, Lcom/android/apksig/ApkVerifier$Result;->mWarningsAsErrors:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/apksig/ApkVerifier$Result;->mWarnings:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_0
    iget-object v1, p0, Lcom/android/apksig/ApkVerifier$Result;->mV1SchemeSigners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/android/apksig/ApkVerifier$Result;->mV1SchemeSigners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/apksig/ApkVerifier$Result$V1SchemeSignerInfo;

    invoke-static {v2}, Lcom/android/apksig/ApkVerifier$Result$V1SchemeSignerInfo;->access$1800(Lcom/android/apksig/ApkVerifier$Result$V1SchemeSignerInfo;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-boolean v3, p0, Lcom/android/apksig/ApkVerifier$Result;->mWarningsAsErrors:Z

    if-eqz v3, :cond_1

    invoke-virtual {v2}, Lcom/android/apksig/ApkVerifier$Result$V1SchemeSignerInfo;->getWarnings()Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/android/apksig/ApkVerifier$Result;->mV2SchemeSigners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/android/apksig/ApkVerifier$Result;->mV2SchemeSigners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/apksig/ApkVerifier$Result$V2SchemeSignerInfo;

    invoke-static {v2}, Lcom/android/apksig/ApkVerifier$Result$V2SchemeSignerInfo;->access$1900(Lcom/android/apksig/ApkVerifier$Result$V2SchemeSignerInfo;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-boolean v3, p0, Lcom/android/apksig/ApkVerifier$Result;->mWarningsAsErrors:Z

    if-eqz v3, :cond_3

    invoke-virtual {v2}, Lcom/android/apksig/ApkVerifier$Result$V2SchemeSignerInfo;->getWarnings()Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_1

    :cond_4
    iget-object v1, p0, Lcom/android/apksig/ApkVerifier$Result;->mV3SchemeSigners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_6

    iget-object v1, p0, Lcom/android/apksig/ApkVerifier$Result;->mV3SchemeSigners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_5
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/apksig/ApkVerifier$Result$V3SchemeSignerInfo;

    invoke-static {v2}, Lcom/android/apksig/ApkVerifier$Result$V3SchemeSignerInfo;->access$2000(Lcom/android/apksig/ApkVerifier$Result$V3SchemeSignerInfo;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-boolean v3, p0, Lcom/android/apksig/ApkVerifier$Result;->mWarningsAsErrors:Z

    if-eqz v3, :cond_5

    invoke-virtual {v2}, Lcom/android/apksig/ApkVerifier$Result$V3SchemeSignerInfo;->getWarnings()Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_2

    :cond_6
    iget-object v1, p0, Lcom/android/apksig/ApkVerifier$Result;->mSourceStampInfo:Lcom/android/apksig/ApkVerifier$Result$SourceStampInfo;

    if-eqz v1, :cond_7

    invoke-virtual {v1}, Lcom/android/apksig/ApkVerifier$Result$SourceStampInfo;->getErrors()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-boolean v1, p0, Lcom/android/apksig/ApkVerifier$Result;->mWarningsAsErrors:Z

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/android/apksig/ApkVerifier$Result;->mSourceStampInfo:Lcom/android/apksig/ApkVerifier$Result$SourceStampInfo;

    invoke-virtual {v1}, Lcom/android/apksig/ApkVerifier$Result$SourceStampInfo;->getWarnings()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_7
    return-object v0
.end method

.method public getErrors()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/apksig/ApkVerifier$IssueWithParams;",
            ">;"
        }
    .end annotation

    iget-boolean v0, p0, Lcom/android/apksig/ApkVerifier$Result;->mWarningsAsErrors:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/apksig/ApkVerifier$Result;->mErrors:Ljava/util/List;

    return-object v0

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/android/apksig/ApkVerifier$Result;->mErrors:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object v1, p0, Lcom/android/apksig/ApkVerifier$Result;->mWarnings:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-object v0
.end method

.method public getSignerCertificates()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/security/cert/X509Certificate;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/apksig/ApkVerifier$Result;->mSignerCerts:Ljava/util/List;

    return-object v0
.end method

.method public getSigningCertificateLineage()Lcom/android/apksig/SigningCertificateLineage;
    .locals 1

    iget-object v0, p0, Lcom/android/apksig/ApkVerifier$Result;->mSigningCertificateLineage:Lcom/android/apksig/SigningCertificateLineage;

    return-object v0
.end method

.method public getSourceStampInfo()Lcom/android/apksig/ApkVerifier$Result$SourceStampInfo;
    .locals 1

    iget-object v0, p0, Lcom/android/apksig/ApkVerifier$Result;->mSourceStampInfo:Lcom/android/apksig/ApkVerifier$Result$SourceStampInfo;

    return-object v0
.end method

.method public getV1SchemeIgnoredSigners()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/apksig/ApkVerifier$Result$V1SchemeSignerInfo;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/apksig/ApkVerifier$Result;->mV1SchemeIgnoredSigners:Ljava/util/List;

    return-object v0
.end method

.method public getV1SchemeSigners()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/apksig/ApkVerifier$Result$V1SchemeSignerInfo;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/apksig/ApkVerifier$Result;->mV1SchemeSigners:Ljava/util/List;

    return-object v0
.end method

.method public getV2SchemeSigners()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/apksig/ApkVerifier$Result$V2SchemeSignerInfo;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/apksig/ApkVerifier$Result;->mV2SchemeSigners:Ljava/util/List;

    return-object v0
.end method

.method public getV31SchemeSigners()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/apksig/ApkVerifier$Result$V3SchemeSignerInfo;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/apksig/ApkVerifier$Result;->mV31SchemeSigners:Ljava/util/List;

    return-object v0
.end method

.method public getV3SchemeSigners()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/apksig/ApkVerifier$Result$V3SchemeSignerInfo;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/apksig/ApkVerifier$Result;->mV3SchemeSigners:Ljava/util/List;

    return-object v0
.end method

.method public getV4SchemeSigners()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/apksig/ApkVerifier$Result$V4SchemeSignerInfo;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/apksig/ApkVerifier$Result;->mV4SchemeSigners:Ljava/util/List;

    return-object v0
.end method

.method public getWarnings()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/apksig/ApkVerifier$IssueWithParams;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/apksig/ApkVerifier$Result;->mWarnings:Ljava/util/List;

    return-object v0
.end method

.method public isSourceStampVerified()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/apksig/ApkVerifier$Result;->mSourceStampVerified:Z

    return v0
.end method

.method public isVerified()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/apksig/ApkVerifier$Result;->mVerified:Z

    return v0
.end method

.method public isVerifiedUsingV1Scheme()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/apksig/ApkVerifier$Result;->mVerifiedUsingV1Scheme:Z

    return v0
.end method

.method public isVerifiedUsingV2Scheme()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/apksig/ApkVerifier$Result;->mVerifiedUsingV2Scheme:Z

    return v0
.end method

.method public isVerifiedUsingV31Scheme()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/apksig/ApkVerifier$Result;->mVerifiedUsingV31Scheme:Z

    return v0
.end method

.method public isVerifiedUsingV3Scheme()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/apksig/ApkVerifier$Result;->mVerifiedUsingV3Scheme:Z

    return v0
.end method

.method public isVerifiedUsingV4Scheme()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/apksig/ApkVerifier$Result;->mVerifiedUsingV4Scheme:Z

    return v0
.end method

.method public setWarningsAsErrors(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/apksig/ApkVerifier$Result;->mWarningsAsErrors:Z

    return-void
.end method
