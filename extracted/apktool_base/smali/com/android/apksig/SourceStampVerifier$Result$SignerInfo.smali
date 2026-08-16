.class public Lcom/android/apksig/SourceStampVerifier$Result$SignerInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/apksig/SourceStampVerifier$Result;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SignerInfo"
.end annotation


# instance fields
.field private final mErrors:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/apksig/ApkVerificationIssue;",
            ">;"
        }
    .end annotation
.end field

.field private mSigningCertificate:Ljava/security/cert/X509Certificate;

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
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/apksig/SourceStampVerifier$Result$SignerInfo;->mErrors:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/apksig/SourceStampVerifier$Result$SignerInfo;->mWarnings:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public varargs addVerificationError(I[Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/android/apksig/SourceStampVerifier$Result$SignerInfo;->mErrors:Ljava/util/List;

    new-instance v1, Lcom/android/apksig/ApkVerificationIssue;

    invoke-direct {v1, p1, p2}, Lcom/android/apksig/ApkVerificationIssue;-><init>(I[Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public varargs addVerificationWarning(I[Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/android/apksig/SourceStampVerifier$Result$SignerInfo;->mWarnings:Ljava/util/List;

    new-instance v1, Lcom/android/apksig/ApkVerificationIssue;

    invoke-direct {v1, p1, p2}, Lcom/android/apksig/ApkVerificationIssue;-><init>(I[Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public containsErrors()Z
    .locals 1

    iget-object v0, p0, Lcom/android/apksig/SourceStampVerifier$Result$SignerInfo;->mErrors:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
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

    iget-object v0, p0, Lcom/android/apksig/SourceStampVerifier$Result$SignerInfo;->mErrors:Ljava/util/List;

    return-object v0
.end method

.method public getSigningCertificate()Ljava/security/cert/X509Certificate;
    .locals 1

    iget-object v0, p0, Lcom/android/apksig/SourceStampVerifier$Result$SignerInfo;->mSigningCertificate:Ljava/security/cert/X509Certificate;

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

    iget-object v0, p0, Lcom/android/apksig/SourceStampVerifier$Result$SignerInfo;->mWarnings:Ljava/util/List;

    return-object v0
.end method

.method public setSigningCertificate(Ljava/security/cert/X509Certificate;)V
    .locals 0

    iput-object p1, p0, Lcom/android/apksig/SourceStampVerifier$Result$SignerInfo;->mSigningCertificate:Ljava/security/cert/X509Certificate;

    return-void
.end method
