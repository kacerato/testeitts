.class public Lcom/android/apksig/ApkVerifier$Result$V1SchemeSignerInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/apksig/ApkVerifier$Result;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "V1SchemeSignerInfo"
.end annotation


# instance fields
.field private final mCertChain:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/security/cert/X509Certificate;",
            ">;"
        }
    .end annotation
.end field

.field private final mErrors:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/apksig/ApkVerifier$IssueWithParams;",
            ">;"
        }
    .end annotation
.end field

.field private final mName:Ljava/lang/String;

.field private final mSignatureBlockFileName:Ljava/lang/String;

.field private final mSignatureFileName:Ljava/lang/String;

.field private final mWarnings:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/apksig/ApkVerifier$IssueWithParams;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/android/apksig/internal/apk/v1/V1SchemeVerifier$Result$SignerInfo;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iget-object v0, p1, Lcom/android/apksig/internal/apk/v1/V1SchemeVerifier$Result$SignerInfo;->name:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/apksig/ApkVerifier$Result$V1SchemeSignerInfo;->mName:Ljava/lang/String;

    .line 4
    iget-object v0, p1, Lcom/android/apksig/internal/apk/v1/V1SchemeVerifier$Result$SignerInfo;->certChain:Ljava/util/List;

    iput-object v0, p0, Lcom/android/apksig/ApkVerifier$Result$V1SchemeSignerInfo;->mCertChain:Ljava/util/List;

    .line 5
    iget-object v0, p1, Lcom/android/apksig/internal/apk/v1/V1SchemeVerifier$Result$SignerInfo;->signatureBlockFileName:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/apksig/ApkVerifier$Result$V1SchemeSignerInfo;->mSignatureBlockFileName:Ljava/lang/String;

    .line 6
    iget-object v0, p1, Lcom/android/apksig/internal/apk/v1/V1SchemeVerifier$Result$SignerInfo;->signatureFileName:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/apksig/ApkVerifier$Result$V1SchemeSignerInfo;->mSignatureFileName:Ljava/lang/String;

    .line 7
    invoke-virtual {p1}, Lcom/android/apksig/internal/apk/v1/V1SchemeVerifier$Result$SignerInfo;->getErrors()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/apksig/ApkVerifier$Result$V1SchemeSignerInfo;->mErrors:Ljava/util/List;

    .line 8
    invoke-virtual {p1}, Lcom/android/apksig/internal/apk/v1/V1SchemeVerifier$Result$SignerInfo;->getWarnings()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/android/apksig/ApkVerifier$Result$V1SchemeSignerInfo;->mWarnings:Ljava/util/List;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/apksig/internal/apk/v1/V1SchemeVerifier$Result$SignerInfo;Lcom/android/apksig/ApkVerifier$1;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/android/apksig/ApkVerifier$Result$V1SchemeSignerInfo;-><init>(Lcom/android/apksig/internal/apk/v1/V1SchemeVerifier$Result$SignerInfo;)V

    return-void
.end method

.method public static synthetic access$1800(Lcom/android/apksig/ApkVerifier$Result$V1SchemeSignerInfo;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/android/apksig/ApkVerifier$Result$V1SchemeSignerInfo;->mErrors:Ljava/util/List;

    return-object p0
.end method

.method public static synthetic access$400(Lcom/android/apksig/ApkVerifier$Result$V1SchemeSignerInfo;Lcom/android/apksig/ApkVerifier$Issue;[Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/apksig/ApkVerifier$Result$V1SchemeSignerInfo;->addError(Lcom/android/apksig/ApkVerifier$Issue;[Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic access$600(Lcom/android/apksig/ApkVerifier$Result$V1SchemeSignerInfo;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/android/apksig/ApkVerifier$Result$V1SchemeSignerInfo;->mCertChain:Ljava/util/List;

    return-object p0
.end method

.method private varargs addError(Lcom/android/apksig/ApkVerifier$Issue;[Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/android/apksig/ApkVerifier$Result$V1SchemeSignerInfo;->mErrors:Ljava/util/List;

    new-instance v1, Lcom/android/apksig/ApkVerifier$IssueWithParams;

    invoke-direct {v1, p1, p2}, Lcom/android/apksig/ApkVerifier$IssueWithParams;-><init>(Lcom/android/apksig/ApkVerifier$Issue;[Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method public containsErrors()Z
    .locals 1

    iget-object v0, p0, Lcom/android/apksig/ApkVerifier$Result$V1SchemeSignerInfo;->mErrors:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public getCertificate()Ljava/security/cert/X509Certificate;
    .locals 2

    iget-object v0, p0, Lcom/android/apksig/ApkVerifier$Result$V1SchemeSignerInfo;->mCertChain:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/apksig/ApkVerifier$Result$V1SchemeSignerInfo;->mCertChain:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/cert/X509Certificate;

    :goto_0
    return-object v0
.end method

.method public getCertificateChain()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/security/cert/X509Certificate;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/apksig/ApkVerifier$Result$V1SchemeSignerInfo;->mCertChain:Ljava/util/List;

    return-object v0
.end method

.method public getErrors()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/apksig/ApkVerifier$IssueWithParams;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/apksig/ApkVerifier$Result$V1SchemeSignerInfo;->mErrors:Ljava/util/List;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/apksig/ApkVerifier$Result$V1SchemeSignerInfo;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getSignatureBlockFileName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/apksig/ApkVerifier$Result$V1SchemeSignerInfo;->mSignatureBlockFileName:Ljava/lang/String;

    return-object v0
.end method

.method public getSignatureFileName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/apksig/ApkVerifier$Result$V1SchemeSignerInfo;->mSignatureFileName:Ljava/lang/String;

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

    iget-object v0, p0, Lcom/android/apksig/ApkVerifier$Result$V1SchemeSignerInfo;->mWarnings:Ljava/util/List;

    return-object v0
.end method
