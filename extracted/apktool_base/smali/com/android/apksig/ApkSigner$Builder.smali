.class public Lcom/android/apksig/ApkSigner$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/apksig/ApkSigner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private mAlignFileSize:Z

.field private mCreatedBy:Ljava/lang/String;

.field private mDebuggableApkPermitted:Z

.field private mForceSourceStampOverwrite:Z

.field private mInputApkDataSource:Lcom/android/apksig/util/DataSource;

.field private mInputApkFile:Ljava/io/File;

.field private mMinSdkVersion:Ljava/lang/Integer;

.field private mOtherSignersSignaturesPreserved:Z

.field private mOutputApkDataSink:Lcom/android/apksig/util/DataSink;

.field private mOutputApkDataSource:Lcom/android/apksig/util/DataSource;

.field private mOutputApkFile:Ljava/io/File;

.field private mOutputV4File:Ljava/io/File;

.field private mRotationMinSdkVersion:I

.field private mRotationTargetsDevRelease:Z

.field private final mSignerConfigs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/apksig/ApkSigner$SignerConfig;",
            ">;"
        }
    .end annotation
.end field

.field private final mSignerEngine:Lcom/android/apksig/ApkSignerEngine;

.field private mSigningCertificateLineage:Lcom/android/apksig/SigningCertificateLineage;

.field private mSourceStampSignerConfig:Lcom/android/apksig/ApkSigner$SignerConfig;

.field private mSourceStampSigningCertificateLineage:Lcom/android/apksig/SigningCertificateLineage;

.field private mV1SigningEnabled:Z

.field private mV2SigningEnabled:Z

.field private mV3SigningEnabled:Z

.field private mV3SigningExplicitlyDisabled:Z

.field private mV3SigningExplicitlyEnabled:Z

.field private mV4ErrorReportingEnabled:Z

.field private mV4SigningEnabled:Z

.field private mVerityEnabled:Z


# direct methods
.method public constructor <init>(Lcom/android/apksig/ApkSignerEngine;)V
    .locals 2

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 22
    iput-boolean v0, p0, Lcom/android/apksig/ApkSigner$Builder;->mForceSourceStampOverwrite:Z

    const/4 v1, 0x1

    .line 23
    iput-boolean v1, p0, Lcom/android/apksig/ApkSigner$Builder;->mV1SigningEnabled:Z

    .line 24
    iput-boolean v1, p0, Lcom/android/apksig/ApkSigner$Builder;->mV2SigningEnabled:Z

    .line 25
    iput-boolean v1, p0, Lcom/android/apksig/ApkSigner$Builder;->mV3SigningEnabled:Z

    .line 26
    iput-boolean v1, p0, Lcom/android/apksig/ApkSigner$Builder;->mV4SigningEnabled:Z

    .line 27
    iput-boolean v0, p0, Lcom/android/apksig/ApkSigner$Builder;->mAlignFileSize:Z

    .line 28
    iput-boolean v0, p0, Lcom/android/apksig/ApkSigner$Builder;->mVerityEnabled:Z

    .line 29
    iput-boolean v0, p0, Lcom/android/apksig/ApkSigner$Builder;->mV4ErrorReportingEnabled:Z

    .line 30
    iput-boolean v1, p0, Lcom/android/apksig/ApkSigner$Builder;->mDebuggableApkPermitted:Z

    const/16 v1, 0x21

    .line 31
    iput v1, p0, Lcom/android/apksig/ApkSigner$Builder;->mRotationMinSdkVersion:I

    .line 32
    iput-boolean v0, p0, Lcom/android/apksig/ApkSigner$Builder;->mRotationTargetsDevRelease:Z

    .line 33
    iput-boolean v0, p0, Lcom/android/apksig/ApkSigner$Builder;->mV3SigningExplicitlyDisabled:Z

    .line 34
    iput-boolean v0, p0, Lcom/android/apksig/ApkSigner$Builder;->mV3SigningExplicitlyEnabled:Z

    if-eqz p1, :cond_0

    .line 35
    iput-object p1, p0, Lcom/android/apksig/ApkSigner$Builder;->mSignerEngine:Lcom/android/apksig/ApkSignerEngine;

    const/4 p1, 0x0

    .line 36
    iput-object p1, p0, Lcom/android/apksig/ApkSigner$Builder;->mSignerConfigs:Ljava/util/List;

    return-void

    .line 37
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "signerEngine == null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/apksig/ApkSigner$SignerConfig;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/android/apksig/ApkSigner$Builder;->mForceSourceStampOverwrite:Z

    const/4 v1, 0x1

    .line 3
    iput-boolean v1, p0, Lcom/android/apksig/ApkSigner$Builder;->mV1SigningEnabled:Z

    .line 4
    iput-boolean v1, p0, Lcom/android/apksig/ApkSigner$Builder;->mV2SigningEnabled:Z

    .line 5
    iput-boolean v1, p0, Lcom/android/apksig/ApkSigner$Builder;->mV3SigningEnabled:Z

    .line 6
    iput-boolean v1, p0, Lcom/android/apksig/ApkSigner$Builder;->mV4SigningEnabled:Z

    .line 7
    iput-boolean v0, p0, Lcom/android/apksig/ApkSigner$Builder;->mAlignFileSize:Z

    .line 8
    iput-boolean v0, p0, Lcom/android/apksig/ApkSigner$Builder;->mVerityEnabled:Z

    .line 9
    iput-boolean v0, p0, Lcom/android/apksig/ApkSigner$Builder;->mV4ErrorReportingEnabled:Z

    .line 10
    iput-boolean v1, p0, Lcom/android/apksig/ApkSigner$Builder;->mDebuggableApkPermitted:Z

    const/16 v2, 0x21

    .line 11
    iput v2, p0, Lcom/android/apksig/ApkSigner$Builder;->mRotationMinSdkVersion:I

    .line 12
    iput-boolean v0, p0, Lcom/android/apksig/ApkSigner$Builder;->mRotationTargetsDevRelease:Z

    .line 13
    iput-boolean v0, p0, Lcom/android/apksig/ApkSigner$Builder;->mV3SigningExplicitlyDisabled:Z

    .line 14
    iput-boolean v0, p0, Lcom/android/apksig/ApkSigner$Builder;->mV3SigningExplicitlyEnabled:Z

    .line 15
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    .line 16
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-le v2, v1, :cond_0

    .line 17
    iput-boolean v0, p0, Lcom/android/apksig/ApkSigner$Builder;->mV3SigningEnabled:Z

    .line 18
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/android/apksig/ApkSigner$Builder;->mSignerConfigs:Ljava/util/List;

    const/4 p1, 0x0

    .line 19
    iput-object p1, p0, Lcom/android/apksig/ApkSigner$Builder;->mSignerEngine:Lcom/android/apksig/ApkSignerEngine;

    return-void

    .line 20
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "At least one signer config must be provided"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private checkInitializedWithoutEngine()V
    .locals 2

    iget-object v0, p0, Lcom/android/apksig/ApkSigner$Builder;->mSignerEngine:Lcom/android/apksig/ApkSignerEngine;

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Operation is not available when builder initialized with an engine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public build()Lcom/android/apksig/ApkSigner;
    .locals 30

    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/apksig/ApkSigner$Builder;->mV3SigningExplicitlyDisabled:Z

    if-eqz v1, :cond_1

    iget-boolean v2, v0, Lcom/android/apksig/ApkSigner$Builder;->mV3SigningExplicitlyEnabled:Z

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Builder configured to both enable and disable APK Signature Scheme v3 signing"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    :goto_0
    const/4 v2, 0x0

    if-eqz v1, :cond_2

    iput-boolean v2, v0, Lcom/android/apksig/ApkSigner$Builder;->mV3SigningEnabled:Z

    :cond_2
    iget-boolean v1, v0, Lcom/android/apksig/ApkSigner$Builder;->mV3SigningExplicitlyEnabled:Z

    if-eqz v1, :cond_3

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/apksig/ApkSigner$Builder;->mV3SigningEnabled:Z

    :cond_3
    iget-boolean v1, v0, Lcom/android/apksig/ApkSigner$Builder;->mV4SigningEnabled:Z

    if-eqz v1, :cond_5

    iget-boolean v1, v0, Lcom/android/apksig/ApkSigner$Builder;->mV2SigningEnabled:Z

    if-nez v1, :cond_5

    iget-boolean v1, v0, Lcom/android/apksig/ApkSigner$Builder;->mV3SigningEnabled:Z

    if-nez v1, :cond_5

    iget-boolean v1, v0, Lcom/android/apksig/ApkSigner$Builder;->mV4ErrorReportingEnabled:Z

    if-nez v1, :cond_4

    iput-boolean v2, v0, Lcom/android/apksig/ApkSigner$Builder;->mV4SigningEnabled:Z

    goto :goto_1

    :cond_4
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "APK Signature Scheme v4 signing requires at least v2 or v3 signing to be enabled"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_5
    :goto_1
    new-instance v1, Lcom/android/apksig/ApkSigner;

    move-object v3, v1

    iget-object v4, v0, Lcom/android/apksig/ApkSigner$Builder;->mSignerConfigs:Ljava/util/List;

    iget-object v5, v0, Lcom/android/apksig/ApkSigner$Builder;->mSourceStampSignerConfig:Lcom/android/apksig/ApkSigner$SignerConfig;

    iget-object v6, v0, Lcom/android/apksig/ApkSigner$Builder;->mSourceStampSigningCertificateLineage:Lcom/android/apksig/SigningCertificateLineage;

    iget-boolean v7, v0, Lcom/android/apksig/ApkSigner$Builder;->mForceSourceStampOverwrite:Z

    iget-object v8, v0, Lcom/android/apksig/ApkSigner$Builder;->mMinSdkVersion:Ljava/lang/Integer;

    iget v9, v0, Lcom/android/apksig/ApkSigner$Builder;->mRotationMinSdkVersion:I

    iget-boolean v10, v0, Lcom/android/apksig/ApkSigner$Builder;->mRotationTargetsDevRelease:Z

    iget-boolean v11, v0, Lcom/android/apksig/ApkSigner$Builder;->mV1SigningEnabled:Z

    iget-boolean v12, v0, Lcom/android/apksig/ApkSigner$Builder;->mV2SigningEnabled:Z

    iget-boolean v13, v0, Lcom/android/apksig/ApkSigner$Builder;->mV3SigningEnabled:Z

    iget-boolean v14, v0, Lcom/android/apksig/ApkSigner$Builder;->mV4SigningEnabled:Z

    iget-boolean v15, v0, Lcom/android/apksig/ApkSigner$Builder;->mAlignFileSize:Z

    iget-boolean v2, v0, Lcom/android/apksig/ApkSigner$Builder;->mVerityEnabled:Z

    move/from16 v16, v2

    iget-boolean v2, v0, Lcom/android/apksig/ApkSigner$Builder;->mV4ErrorReportingEnabled:Z

    move/from16 v17, v2

    iget-boolean v2, v0, Lcom/android/apksig/ApkSigner$Builder;->mDebuggableApkPermitted:Z

    move/from16 v18, v2

    iget-boolean v2, v0, Lcom/android/apksig/ApkSigner$Builder;->mOtherSignersSignaturesPreserved:Z

    move/from16 v19, v2

    iget-object v2, v0, Lcom/android/apksig/ApkSigner$Builder;->mCreatedBy:Ljava/lang/String;

    move-object/from16 v20, v2

    iget-object v2, v0, Lcom/android/apksig/ApkSigner$Builder;->mSignerEngine:Lcom/android/apksig/ApkSignerEngine;

    move-object/from16 v21, v2

    iget-object v2, v0, Lcom/android/apksig/ApkSigner$Builder;->mInputApkFile:Ljava/io/File;

    move-object/from16 v22, v2

    iget-object v2, v0, Lcom/android/apksig/ApkSigner$Builder;->mInputApkDataSource:Lcom/android/apksig/util/DataSource;

    move-object/from16 v23, v2

    iget-object v2, v0, Lcom/android/apksig/ApkSigner$Builder;->mOutputApkFile:Ljava/io/File;

    move-object/from16 v24, v2

    iget-object v2, v0, Lcom/android/apksig/ApkSigner$Builder;->mOutputApkDataSink:Lcom/android/apksig/util/DataSink;

    move-object/from16 v25, v2

    iget-object v2, v0, Lcom/android/apksig/ApkSigner$Builder;->mOutputApkDataSource:Lcom/android/apksig/util/DataSource;

    move-object/from16 v26, v2

    iget-object v2, v0, Lcom/android/apksig/ApkSigner$Builder;->mOutputV4File:Ljava/io/File;

    move-object/from16 v27, v2

    iget-object v2, v0, Lcom/android/apksig/ApkSigner$Builder;->mSigningCertificateLineage:Lcom/android/apksig/SigningCertificateLineage;

    move-object/from16 v28, v2

    const/16 v29, 0x0

    invoke-direct/range {v3 .. v29}, Lcom/android/apksig/ApkSigner;-><init>(Ljava/util/List;Lcom/android/apksig/ApkSigner$SignerConfig;Lcom/android/apksig/SigningCertificateLineage;ZLjava/lang/Integer;IZZZZZZZZZZLjava/lang/String;Lcom/android/apksig/ApkSignerEngine;Ljava/io/File;Lcom/android/apksig/util/DataSource;Ljava/io/File;Lcom/android/apksig/util/DataSink;Lcom/android/apksig/util/DataSource;Ljava/io/File;Lcom/android/apksig/SigningCertificateLineage;Lcom/android/apksig/ApkSigner$1;)V

    return-object v1
.end method

.method public setAlignFileSize(Z)Lcom/android/apksig/ApkSigner$Builder;
    .locals 0

    invoke-direct {p0}, Lcom/android/apksig/ApkSigner$Builder;->checkInitializedWithoutEngine()V

    iput-boolean p1, p0, Lcom/android/apksig/ApkSigner$Builder;->mAlignFileSize:Z

    return-object p0
.end method

.method public setCreatedBy(Ljava/lang/String;)Lcom/android/apksig/ApkSigner$Builder;
    .locals 0

    invoke-direct {p0}, Lcom/android/apksig/ApkSigner$Builder;->checkInitializedWithoutEngine()V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/android/apksig/ApkSigner$Builder;->mCreatedBy:Ljava/lang/String;

    return-object p0
.end method

.method public setDebuggableApkPermitted(Z)Lcom/android/apksig/ApkSigner$Builder;
    .locals 0

    invoke-direct {p0}, Lcom/android/apksig/ApkSigner$Builder;->checkInitializedWithoutEngine()V

    iput-boolean p1, p0, Lcom/android/apksig/ApkSigner$Builder;->mDebuggableApkPermitted:Z

    return-object p0
.end method

.method public setForceSourceStampOverwrite(Z)Lcom/android/apksig/ApkSigner$Builder;
    .locals 0

    iput-boolean p1, p0, Lcom/android/apksig/ApkSigner$Builder;->mForceSourceStampOverwrite:Z

    return-object p0
.end method

.method public setInputApk(Lcom/android/apksig/util/DataSource;)Lcom/android/apksig/ApkSigner$Builder;
    .locals 1

    if-eqz p1, :cond_0

    .line 4
    iput-object p1, p0, Lcom/android/apksig/ApkSigner$Builder;->mInputApkDataSource:Lcom/android/apksig/util/DataSource;

    const/4 p1, 0x0

    .line 5
    iput-object p1, p0, Lcom/android/apksig/ApkSigner$Builder;->mInputApkFile:Ljava/io/File;

    return-object p0

    .line 6
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "inputApk == null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setInputApk(Ljava/io/File;)Lcom/android/apksig/ApkSigner$Builder;
    .locals 1

    if-eqz p1, :cond_0

    .line 1
    iput-object p1, p0, Lcom/android/apksig/ApkSigner$Builder;->mInputApkFile:Ljava/io/File;

    const/4 p1, 0x0

    .line 2
    iput-object p1, p0, Lcom/android/apksig/ApkSigner$Builder;->mInputApkDataSource:Lcom/android/apksig/util/DataSource;

    return-object p0

    .line 3
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "inputApk == null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setMinSdkVersion(I)Lcom/android/apksig/ApkSigner$Builder;
    .locals 0

    invoke-direct {p0}, Lcom/android/apksig/ApkSigner$Builder;->checkInitializedWithoutEngine()V

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/android/apksig/ApkSigner$Builder;->mMinSdkVersion:Ljava/lang/Integer;

    return-object p0
.end method

.method public setMinSdkVersionForRotation(I)Lcom/android/apksig/ApkSigner$Builder;
    .locals 1

    invoke-direct {p0}, Lcom/android/apksig/ApkSigner$Builder;->checkInitializedWithoutEngine()V

    const/16 v0, 0x21

    if-ge p1, v0, :cond_0

    const/16 p1, 0x1c

    iput p1, p0, Lcom/android/apksig/ApkSigner$Builder;->mRotationMinSdkVersion:I

    goto :goto_0

    :cond_0
    iput p1, p0, Lcom/android/apksig/ApkSigner$Builder;->mRotationMinSdkVersion:I

    :goto_0
    return-object p0
.end method

.method public setOtherSignersSignaturesPreserved(Z)Lcom/android/apksig/ApkSigner$Builder;
    .locals 0

    invoke-direct {p0}, Lcom/android/apksig/ApkSigner$Builder;->checkInitializedWithoutEngine()V

    iput-boolean p1, p0, Lcom/android/apksig/ApkSigner$Builder;->mOtherSignersSignaturesPreserved:Z

    return-object p0
.end method

.method public setOutputApk(Lcom/android/apksig/util/DataSink;Lcom/android/apksig/util/DataSource;)Lcom/android/apksig/ApkSigner$Builder;
    .locals 1

    if-eqz p1, :cond_1

    if-eqz p2, :cond_0

    const/4 v0, 0x0

    .line 7
    iput-object v0, p0, Lcom/android/apksig/ApkSigner$Builder;->mOutputApkFile:Ljava/io/File;

    .line 8
    iput-object p1, p0, Lcom/android/apksig/ApkSigner$Builder;->mOutputApkDataSink:Lcom/android/apksig/util/DataSink;

    .line 9
    iput-object p2, p0, Lcom/android/apksig/ApkSigner$Builder;->mOutputApkDataSource:Lcom/android/apksig/util/DataSource;

    return-object p0

    .line 10
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "outputApkIn == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 11
    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "outputApkOut == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setOutputApk(Lcom/android/apksig/util/ReadableDataSink;)Lcom/android/apksig/ApkSigner$Builder;
    .locals 1

    if-eqz p1, :cond_0

    .line 5
    invoke-virtual {p0, p1, p1}, Lcom/android/apksig/ApkSigner$Builder;->setOutputApk(Lcom/android/apksig/util/DataSink;Lcom/android/apksig/util/DataSource;)Lcom/android/apksig/ApkSigner$Builder;

    move-result-object p1

    return-object p1

    .line 6
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "outputApk == null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setOutputApk(Ljava/io/File;)Lcom/android/apksig/ApkSigner$Builder;
    .locals 1

    if-eqz p1, :cond_0

    .line 1
    iput-object p1, p0, Lcom/android/apksig/ApkSigner$Builder;->mOutputApkFile:Ljava/io/File;

    const/4 p1, 0x0

    .line 2
    iput-object p1, p0, Lcom/android/apksig/ApkSigner$Builder;->mOutputApkDataSink:Lcom/android/apksig/util/DataSink;

    .line 3
    iput-object p1, p0, Lcom/android/apksig/ApkSigner$Builder;->mOutputApkDataSource:Lcom/android/apksig/util/DataSource;

    return-object p0

    .line 4
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "outputApk == null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setRotationTargetsDevRelease(Z)Lcom/android/apksig/ApkSigner$Builder;
    .locals 0

    invoke-direct {p0}, Lcom/android/apksig/ApkSigner$Builder;->checkInitializedWithoutEngine()V

    iput-boolean p1, p0, Lcom/android/apksig/ApkSigner$Builder;->mRotationTargetsDevRelease:Z

    return-object p0
.end method

.method public setSigningCertificateLineage(Lcom/android/apksig/SigningCertificateLineage;)Lcom/android/apksig/ApkSigner$Builder;
    .locals 1

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/apksig/ApkSigner$Builder;->mV3SigningEnabled:Z

    iput-object p1, p0, Lcom/android/apksig/ApkSigner$Builder;->mSigningCertificateLineage:Lcom/android/apksig/SigningCertificateLineage;

    :cond_0
    return-object p0
.end method

.method public setSourceStampSignerConfig(Lcom/android/apksig/ApkSigner$SignerConfig;)Lcom/android/apksig/ApkSigner$Builder;
    .locals 0

    iput-object p1, p0, Lcom/android/apksig/ApkSigner$Builder;->mSourceStampSignerConfig:Lcom/android/apksig/ApkSigner$SignerConfig;

    return-object p0
.end method

.method public setSourceStampSigningCertificateLineage(Lcom/android/apksig/SigningCertificateLineage;)Lcom/android/apksig/ApkSigner$Builder;
    .locals 0

    iput-object p1, p0, Lcom/android/apksig/ApkSigner$Builder;->mSourceStampSigningCertificateLineage:Lcom/android/apksig/SigningCertificateLineage;

    return-object p0
.end method

.method public setV1SigningEnabled(Z)Lcom/android/apksig/ApkSigner$Builder;
    .locals 0

    invoke-direct {p0}, Lcom/android/apksig/ApkSigner$Builder;->checkInitializedWithoutEngine()V

    iput-boolean p1, p0, Lcom/android/apksig/ApkSigner$Builder;->mV1SigningEnabled:Z

    return-object p0
.end method

.method public setV2SigningEnabled(Z)Lcom/android/apksig/ApkSigner$Builder;
    .locals 0

    invoke-direct {p0}, Lcom/android/apksig/ApkSigner$Builder;->checkInitializedWithoutEngine()V

    iput-boolean p1, p0, Lcom/android/apksig/ApkSigner$Builder;->mV2SigningEnabled:Z

    return-object p0
.end method

.method public setV3SigningEnabled(Z)Lcom/android/apksig/ApkSigner$Builder;
    .locals 1

    invoke-direct {p0}, Lcom/android/apksig/ApkSigner$Builder;->checkInitializedWithoutEngine()V

    iput-boolean p1, p0, Lcom/android/apksig/ApkSigner$Builder;->mV3SigningEnabled:Z

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    iput-boolean v0, p0, Lcom/android/apksig/ApkSigner$Builder;->mV3SigningExplicitlyEnabled:Z

    goto :goto_0

    :cond_0
    iput-boolean v0, p0, Lcom/android/apksig/ApkSigner$Builder;->mV3SigningExplicitlyDisabled:Z

    :goto_0
    return-object p0
.end method

.method public setV4ErrorReportingEnabled(Z)Lcom/android/apksig/ApkSigner$Builder;
    .locals 0

    invoke-direct {p0}, Lcom/android/apksig/ApkSigner$Builder;->checkInitializedWithoutEngine()V

    iput-boolean p1, p0, Lcom/android/apksig/ApkSigner$Builder;->mV4ErrorReportingEnabled:Z

    return-object p0
.end method

.method public setV4SignatureOutputFile(Ljava/io/File;)Lcom/android/apksig/ApkSigner$Builder;
    .locals 1

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/android/apksig/ApkSigner$Builder;->mOutputV4File:Ljava/io/File;

    return-object p0

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "v4HashRootOutputFile == null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setV4SigningEnabled(Z)Lcom/android/apksig/ApkSigner$Builder;
    .locals 0

    invoke-direct {p0}, Lcom/android/apksig/ApkSigner$Builder;->checkInitializedWithoutEngine()V

    iput-boolean p1, p0, Lcom/android/apksig/ApkSigner$Builder;->mV4SigningEnabled:Z

    iput-boolean p1, p0, Lcom/android/apksig/ApkSigner$Builder;->mV4ErrorReportingEnabled:Z

    return-object p0
.end method

.method public setVerityEnabled(Z)Lcom/android/apksig/ApkSigner$Builder;
    .locals 0

    invoke-direct {p0}, Lcom/android/apksig/ApkSigner$Builder;->checkInitializedWithoutEngine()V

    iput-boolean p1, p0, Lcom/android/apksig/ApkSigner$Builder;->mVerityEnabled:Z

    return-object p0
.end method
