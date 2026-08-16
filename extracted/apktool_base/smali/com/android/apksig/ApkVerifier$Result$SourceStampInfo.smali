.class public Lcom/android/apksig/ApkVerifier$Result$SourceStampInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/apksig/ApkVerifier$Result;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SourceStampInfo"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/apksig/ApkVerifier$Result$SourceStampInfo$SourceStampVerificationStatus;
    }
.end annotation


# instance fields
.field private final mCertificateLineage:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/security/cert/X509Certificate;",
            ">;"
        }
    .end annotation
.end field

.field private final mCertificates:Ljava/util/List;
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

.field private final mSourceStampVerificationStatus:Lcom/android/apksig/ApkVerifier$Result$SourceStampInfo$SourceStampVerificationStatus;

.field private final mTimestamp:J

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
.method public constructor <init>(Lcom/android/apksig/ApkVerifier$Result$SourceStampInfo$SourceStampVerificationStatus;)V
    .locals 2

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/apksig/ApkVerifier$Result$SourceStampInfo;->mCertificates:Ljava/util/List;

    .line 15
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/apksig/ApkVerifier$Result$SourceStampInfo;->mCertificateLineage:Ljava/util/List;

    .line 16
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/apksig/ApkVerifier$Result$SourceStampInfo;->mErrors:Ljava/util/List;

    .line 17
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/apksig/ApkVerifier$Result$SourceStampInfo;->mWarnings:Ljava/util/List;

    .line 18
    iput-object p1, p0, Lcom/android/apksig/ApkVerifier$Result$SourceStampInfo;->mSourceStampVerificationStatus:Lcom/android/apksig/ApkVerifier$Result$SourceStampInfo$SourceStampVerificationStatus;

    const-wide/16 v0, 0x0

    .line 19
    iput-wide v0, p0, Lcom/android/apksig/ApkVerifier$Result$SourceStampInfo;->mTimestamp:J

    return-void
.end method

.method private constructor <init>(Lcom/android/apksig/internal/apk/ApkSignerInfo;)V
    .locals 2

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iget-object v0, p1, Lcom/android/apksig/internal/apk/ApkSignerInfo;->certs:Ljava/util/List;

    iput-object v0, p0, Lcom/android/apksig/ApkVerifier$Result$SourceStampInfo;->mCertificates:Ljava/util/List;

    .line 4
    iget-object v0, p1, Lcom/android/apksig/internal/apk/ApkSignerInfo;->certificateLineage:Ljava/util/List;

    iput-object v0, p0, Lcom/android/apksig/ApkVerifier$Result$SourceStampInfo;->mCertificateLineage:Ljava/util/List;

    .line 5
    invoke-virtual {p1}, Lcom/android/apksig/internal/apk/ApkSignerInfo;->getErrors()Ljava/util/List;

    move-result-object v0

    .line 6
    invoke-static {v0}, Lcom/android/apksig/ApkVerifier$ApkVerificationIssueAdapter;->getIssuesFromVerificationIssues(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/apksig/ApkVerifier$Result$SourceStampInfo;->mErrors:Ljava/util/List;

    .line 7
    invoke-virtual {p1}, Lcom/android/apksig/internal/apk/ApkSignerInfo;->getWarnings()Ljava/util/List;

    move-result-object v1

    .line 8
    invoke-static {v1}, Lcom/android/apksig/ApkVerifier$ApkVerificationIssueAdapter;->getIssuesFromVerificationIssues(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/android/apksig/ApkVerifier$Result$SourceStampInfo;->mWarnings:Ljava/util/List;

    .line 9
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 10
    sget-object v0, Lcom/android/apksig/ApkVerifier$Result$SourceStampInfo$SourceStampVerificationStatus;->STAMP_VERIFIED:Lcom/android/apksig/ApkVerifier$Result$SourceStampInfo$SourceStampVerificationStatus;

    iput-object v0, p0, Lcom/android/apksig/ApkVerifier$Result$SourceStampInfo;->mSourceStampVerificationStatus:Lcom/android/apksig/ApkVerifier$Result$SourceStampInfo$SourceStampVerificationStatus;

    goto :goto_0

    .line 11
    :cond_0
    sget-object v0, Lcom/android/apksig/ApkVerifier$Result$SourceStampInfo$SourceStampVerificationStatus;->STAMP_VERIFICATION_FAILED:Lcom/android/apksig/ApkVerifier$Result$SourceStampInfo$SourceStampVerificationStatus;

    iput-object v0, p0, Lcom/android/apksig/ApkVerifier$Result$SourceStampInfo;->mSourceStampVerificationStatus:Lcom/android/apksig/ApkVerifier$Result$SourceStampInfo$SourceStampVerificationStatus;

    .line 12
    :goto_0
    iget-wide v0, p1, Lcom/android/apksig/internal/apk/ApkSignerInfo;->timestamp:J

    iput-wide v0, p0, Lcom/android/apksig/ApkVerifier$Result$SourceStampInfo;->mTimestamp:J

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/apksig/internal/apk/ApkSignerInfo;Lcom/android/apksig/ApkVerifier$1;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/android/apksig/ApkVerifier$Result$SourceStampInfo;-><init>(Lcom/android/apksig/internal/apk/ApkSignerInfo;)V

    return-void
.end method


# virtual methods
.method public containsErrors()Z
    .locals 1

    iget-object v0, p0, Lcom/android/apksig/ApkVerifier$Result$SourceStampInfo;->mErrors:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public getCertificate()Ljava/security/cert/X509Certificate;
    .locals 2

    iget-object v0, p0, Lcom/android/apksig/ApkVerifier$Result$SourceStampInfo;->mCertificates:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/apksig/ApkVerifier$Result$SourceStampInfo;->mCertificates:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/cert/X509Certificate;

    :goto_0
    return-object v0
.end method

.method public getCertificatesInLineage()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/security/cert/X509Certificate;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/apksig/ApkVerifier$Result$SourceStampInfo;->mCertificateLineage:Ljava/util/List;

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

    iget-object v0, p0, Lcom/android/apksig/ApkVerifier$Result$SourceStampInfo;->mErrors:Ljava/util/List;

    return-object v0
.end method

.method public getSourceStampVerificationStatus()Lcom/android/apksig/ApkVerifier$Result$SourceStampInfo$SourceStampVerificationStatus;
    .locals 1

    iget-object v0, p0, Lcom/android/apksig/ApkVerifier$Result$SourceStampInfo;->mSourceStampVerificationStatus:Lcom/android/apksig/ApkVerifier$Result$SourceStampInfo$SourceStampVerificationStatus;

    return-object v0
.end method

.method public getTimestampEpochSeconds()J
    .locals 2

    iget-wide v0, p0, Lcom/android/apksig/ApkVerifier$Result$SourceStampInfo;->mTimestamp:J

    return-wide v0
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

    iget-object v0, p0, Lcom/android/apksig/ApkVerifier$Result$SourceStampInfo;->mWarnings:Ljava/util/List;

    return-object v0
.end method
