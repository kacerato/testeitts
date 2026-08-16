.class public Lcom/android/apksig/SourceStampVerifier$Result;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/apksig/SourceStampVerifier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Result"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/apksig/SourceStampVerifier$Result$SignerInfo;,
        Lcom/android/apksig/SourceStampVerifier$Result$SourceStampInfo;
    }
.end annotation


# instance fields
.field private final mAllSchemeSigners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/util/List<",
            "Lcom/android/apksig/SourceStampVerifier$Result$SignerInfo;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mErrors:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/apksig/ApkVerificationIssue;",
            ">;"
        }
    .end annotation
.end field

.field private mSourceStampInfo:Lcom/android/apksig/SourceStampVerifier$Result$SourceStampInfo;

.field private final mV1SchemeSigners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/apksig/SourceStampVerifier$Result$SignerInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mV2SchemeSigners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/apksig/SourceStampVerifier$Result$SignerInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mV3SchemeSigners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/apksig/SourceStampVerifier$Result$SignerInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mVerified:Z

.field private final mWarnings:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/apksig/ApkVerificationIssue;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/apksig/SourceStampVerifier$Result;->mV1SchemeSigners:Ljava/util/List;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/apksig/SourceStampVerifier$Result;->mV2SchemeSigners:Ljava/util/List;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/apksig/SourceStampVerifier$Result;->mV3SchemeSigners:Ljava/util/List;

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/util/List;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    const/4 v0, 0x1

    aput-object v1, v3, v0

    const/4 v0, 0x2

    aput-object v2, v3, v0

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/apksig/SourceStampVerifier$Result;->mAllSchemeSigners:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/apksig/SourceStampVerifier$Result;->mErrors:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/apksig/SourceStampVerifier$Result;->mWarnings:Ljava/util/List;

    return-void
.end method

.method public static synthetic access$000(Lcom/android/apksig/SourceStampVerifier$Result;Lcom/android/apksig/internal/apk/ApkSigResult;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/apksig/SourceStampVerifier$Result;->mergeFrom(Lcom/android/apksig/internal/apk/ApkSigResult;)V

    return-void
.end method

.method public static synthetic access$100(Lcom/android/apksig/SourceStampVerifier$Result;Lcom/android/apksig/SourceStampVerifier$Result$SignerInfo;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/apksig/SourceStampVerifier$Result;->addV2Signer(Lcom/android/apksig/SourceStampVerifier$Result$SignerInfo;)V

    return-void
.end method

.method public static synthetic access$200(Lcom/android/apksig/SourceStampVerifier$Result;Lcom/android/apksig/SourceStampVerifier$Result$SignerInfo;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/apksig/SourceStampVerifier$Result;->addV3Signer(Lcom/android/apksig/SourceStampVerifier$Result$SignerInfo;)V

    return-void
.end method

.method public static synthetic access$300(Lcom/android/apksig/SourceStampVerifier$Result;Lcom/android/apksig/SourceStampVerifier$Result$SignerInfo;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/apksig/SourceStampVerifier$Result;->addV1Signer(Lcom/android/apksig/SourceStampVerifier$Result$SignerInfo;)V

    return-void
.end method

.method private addV1Signer(Lcom/android/apksig/SourceStampVerifier$Result$SignerInfo;)V
    .locals 1

    iget-object v0, p0, Lcom/android/apksig/SourceStampVerifier$Result;->mV1SchemeSigners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private addV2Signer(Lcom/android/apksig/SourceStampVerifier$Result$SignerInfo;)V
    .locals 1

    iget-object v0, p0, Lcom/android/apksig/SourceStampVerifier$Result;->mV2SchemeSigners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private addV3Signer(Lcom/android/apksig/SourceStampVerifier$Result$SignerInfo;)V
    .locals 1

    iget-object v0, p0, Lcom/android/apksig/SourceStampVerifier$Result;->mV3SchemeSigners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private mergeFrom(Lcom/android/apksig/internal/apk/ApkSigResult;)V
    .locals 3

    iget v0, p1, Lcom/android/apksig/internal/apk/ApkSigResult;->signatureSchemeVersion:I

    if-nez v0, :cond_1

    iget-boolean v0, p1, Lcom/android/apksig/internal/apk/ApkSigResult;->verified:Z

    iput-boolean v0, p0, Lcom/android/apksig/SourceStampVerifier$Result;->mVerified:Z

    iget-object v0, p1, Lcom/android/apksig/internal/apk/ApkSigResult;->mSigners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/apksig/SourceStampVerifier$Result$SourceStampInfo;

    iget-object p1, p1, Lcom/android/apksig/internal/apk/ApkSigResult;->mSigners:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/apksig/internal/apk/ApkSignerInfo;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/android/apksig/SourceStampVerifier$Result$SourceStampInfo;-><init>(Lcom/android/apksig/internal/apk/ApkSignerInfo;Lcom/android/apksig/SourceStampVerifier$1;)V

    iput-object v0, p0, Lcom/android/apksig/SourceStampVerifier$Result;->mSourceStampInfo:Lcom/android/apksig/SourceStampVerifier$Result$SourceStampInfo;

    :cond_0
    return-void

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


# virtual methods
.method public varargs addVerificationError(I[Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/android/apksig/SourceStampVerifier$Result;->mErrors:Ljava/util/List;

    new-instance v1, Lcom/android/apksig/ApkVerificationIssue;

    invoke-direct {v1, p1, p2}, Lcom/android/apksig/ApkVerificationIssue;-><init>(I[Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public varargs addVerificationWarning(I[Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/android/apksig/SourceStampVerifier$Result;->mWarnings:Ljava/util/List;

    new-instance v1, Lcom/android/apksig/ApkVerificationIssue;

    invoke-direct {v1, p1, p2}, Lcom/android/apksig/ApkVerificationIssue;-><init>(I[Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public containsErrors()Z
    .locals 4

    iget-object v0, p0, Lcom/android/apksig/SourceStampVerifier$Result;->mErrors:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/android/apksig/SourceStampVerifier$Result;->mAllSchemeSigners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/apksig/SourceStampVerifier$Result$SignerInfo;

    invoke-virtual {v3}, Lcom/android/apksig/SourceStampVerifier$Result$SignerInfo;->containsErrors()Z

    move-result v3

    if-eqz v3, :cond_2

    return v1

    :cond_3
    iget-object v0, p0, Lcom/android/apksig/SourceStampVerifier$Result;->mSourceStampInfo:Lcom/android/apksig/SourceStampVerifier$Result$SourceStampInfo;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/android/apksig/SourceStampVerifier$Result$SourceStampInfo;->containsErrors()Z

    move-result v0

    if-eqz v0, :cond_4

    return v1

    :cond_4
    const/4 v0, 0x0

    return v0
.end method

.method public getAllErrors()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/apksig/ApkVerificationIssue;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/android/apksig/SourceStampVerifier$Result;->mErrors:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object v1, p0, Lcom/android/apksig/SourceStampVerifier$Result;->mAllSchemeSigners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/apksig/SourceStampVerifier$Result$SignerInfo;

    invoke-virtual {v3}, Lcom/android/apksig/SourceStampVerifier$Result$SignerInfo;->getErrors()Ljava/util/List;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/android/apksig/SourceStampVerifier$Result;->mSourceStampInfo:Lcom/android/apksig/SourceStampVerifier$Result$SourceStampInfo;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/android/apksig/SourceStampVerifier$Result$SourceStampInfo;->getErrors()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_2
    return-object v0
.end method

.method public getAllWarnings()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/apksig/ApkVerificationIssue;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/android/apksig/SourceStampVerifier$Result;->mWarnings:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object v1, p0, Lcom/android/apksig/SourceStampVerifier$Result;->mAllSchemeSigners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/apksig/SourceStampVerifier$Result$SignerInfo;

    invoke-virtual {v3}, Lcom/android/apksig/SourceStampVerifier$Result$SignerInfo;->getWarnings()Ljava/util/List;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/android/apksig/SourceStampVerifier$Result;->mSourceStampInfo:Lcom/android/apksig/SourceStampVerifier$Result$SourceStampInfo;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/android/apksig/SourceStampVerifier$Result$SourceStampInfo;->getWarnings()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_2
    return-object v0
.end method

.method public getErrors()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/apksig/ApkVerificationIssue;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/apksig/SourceStampVerifier$Result;->mErrors:Ljava/util/List;

    return-object v0
.end method

.method public getSourceStampInfo()Lcom/android/apksig/SourceStampVerifier$Result$SourceStampInfo;
    .locals 1

    iget-object v0, p0, Lcom/android/apksig/SourceStampVerifier$Result;->mSourceStampInfo:Lcom/android/apksig/SourceStampVerifier$Result$SourceStampInfo;

    return-object v0
.end method

.method public getV1SchemeSigners()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/apksig/SourceStampVerifier$Result$SignerInfo;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/apksig/SourceStampVerifier$Result;->mV1SchemeSigners:Ljava/util/List;

    return-object v0
.end method

.method public getV2SchemeSigners()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/apksig/SourceStampVerifier$Result$SignerInfo;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/apksig/SourceStampVerifier$Result;->mV2SchemeSigners:Ljava/util/List;

    return-object v0
.end method

.method public getV3SchemeSigners()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/apksig/SourceStampVerifier$Result$SignerInfo;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/apksig/SourceStampVerifier$Result;->mV3SchemeSigners:Ljava/util/List;

    return-object v0
.end method

.method public getWarnings()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/apksig/ApkVerificationIssue;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/apksig/SourceStampVerifier$Result;->mWarnings:Ljava/util/List;

    return-object v0
.end method

.method public isVerified()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/apksig/SourceStampVerifier$Result;->mVerified:Z

    return v0
.end method
