.class public Lcom/android/apksig/DefaultApkSignerEngine$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/apksig/DefaultApkSignerEngine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private mCreatedBy:Ljava/lang/String;

.field private mDebuggableApkPermitted:Z

.field private final mMinSdkVersion:I

.field private mOtherSignersSignaturesPreserved:Z

.field private mRotationMinSdkVersion:I

.field private mRotationTargetsDevRelease:Z

.field private mSignerConfigs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/apksig/DefaultApkSignerEngine$SignerConfig;",
            ">;"
        }
    .end annotation
.end field

.field private mSigningCertificateLineage:Lcom/android/apksig/SigningCertificateLineage;

.field private mSourceStampSigningCertificateLineage:Lcom/android/apksig/SigningCertificateLineage;

.field private mStampSignerConfig:Lcom/android/apksig/DefaultApkSignerEngine$SignerConfig;

.field private mV1SigningEnabled:Z

.field private mV2SigningEnabled:Z

.field private mV3SigningEnabled:Z

.field private mV3SigningExplicitlyDisabled:Z

.field private mV3SigningExplicitlyEnabled:Z

.field private mVerityEnabled:Z


# direct methods
.method public constructor <init>(Ljava/util/List;I)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/apksig/DefaultApkSignerEngine$SignerConfig;",
            ">;I)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/apksig/DefaultApkSignerEngine$Builder;->mV1SigningEnabled:Z

    iput-boolean v0, p0, Lcom/android/apksig/DefaultApkSignerEngine$Builder;->mV2SigningEnabled:Z

    iput-boolean v0, p0, Lcom/android/apksig/DefaultApkSignerEngine$Builder;->mV3SigningEnabled:Z

    const/16 v1, 0x21

    iput v1, p0, Lcom/android/apksig/DefaultApkSignerEngine$Builder;->mRotationMinSdkVersion:I

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/apksig/DefaultApkSignerEngine$Builder;->mRotationTargetsDevRelease:Z

    iput-boolean v1, p0, Lcom/android/apksig/DefaultApkSignerEngine$Builder;->mVerityEnabled:Z

    iput-boolean v0, p0, Lcom/android/apksig/DefaultApkSignerEngine$Builder;->mDebuggableApkPermitted:Z

    const-string v2, "1.0 (Android)"

    iput-object v2, p0, Lcom/android/apksig/DefaultApkSignerEngine$Builder;->mCreatedBy:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/android/apksig/DefaultApkSignerEngine$Builder;->mV3SigningExplicitlyDisabled:Z

    iput-boolean v1, p0, Lcom/android/apksig/DefaultApkSignerEngine$Builder;->mV3SigningExplicitlyEnabled:Z

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-le v2, v0, :cond_0

    iput-boolean v1, p0, Lcom/android/apksig/DefaultApkSignerEngine$Builder;->mV3SigningEnabled:Z

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/android/apksig/DefaultApkSignerEngine$Builder;->mSignerConfigs:Ljava/util/List;

    iput p2, p0, Lcom/android/apksig/DefaultApkSignerEngine$Builder;->mMinSdkVersion:I

    return-void

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "At least one signer config must be provided"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public build()Lcom/android/apksig/DefaultApkSignerEngine;
    .locals 19
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    move-object/from16 v1, p0

    iget-boolean v0, v1, Lcom/android/apksig/DefaultApkSignerEngine$Builder;->mV3SigningExplicitlyDisabled:Z

    if-eqz v0, :cond_1

    iget-boolean v2, v1, Lcom/android/apksig/DefaultApkSignerEngine$Builder;->mV3SigningExplicitlyEnabled:Z

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "Builder configured to both enable and disable APK Signature Scheme v3 signing"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    const/4 v2, 0x1

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    iput-boolean v0, v1, Lcom/android/apksig/DefaultApkSignerEngine$Builder;->mV3SigningEnabled:Z

    goto :goto_1

    :cond_2
    iget-boolean v0, v1, Lcom/android/apksig/DefaultApkSignerEngine$Builder;->mV3SigningExplicitlyEnabled:Z

    if-eqz v0, :cond_3

    iput-boolean v2, v1, Lcom/android/apksig/DefaultApkSignerEngine$Builder;->mV3SigningEnabled:Z

    :cond_3
    :goto_1
    iget-object v0, v1, Lcom/android/apksig/DefaultApkSignerEngine$Builder;->mSigningCertificateLineage:Lcom/android/apksig/SigningCertificateLineage;

    if-eqz v0, :cond_5

    :try_start_0
    iget-object v3, v1, Lcom/android/apksig/DefaultApkSignerEngine$Builder;->mSignerConfigs:Ljava/util/List;

    invoke-virtual {v0, v3}, Lcom/android/apksig/SigningCertificateLineage;->sortSignerConfigs(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, v1, Lcom/android/apksig/DefaultApkSignerEngine$Builder;->mSignerConfigs:Ljava/util/List;

    iget-boolean v3, v1, Lcom/android/apksig/DefaultApkSignerEngine$Builder;->mV3SigningEnabled:Z

    if-nez v3, :cond_7

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gt v0, v2, :cond_4

    goto :goto_2

    :cond_4
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "Provided multiple signers which are part of the SigningCertificateLineage, but not signing with APK Signature Scheme v3"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Provided signer configs do not match the provided SigningCertificateLineage"

    invoke-direct {v2, v3, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    :cond_5
    iget-boolean v0, v1, Lcom/android/apksig/DefaultApkSignerEngine$Builder;->mV3SigningEnabled:Z

    if-eqz v0, :cond_7

    iget-object v0, v1, Lcom/android/apksig/DefaultApkSignerEngine$Builder;->mSignerConfigs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gt v0, v2, :cond_6

    goto :goto_2

    :cond_6
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "Multiple signing certificates provided for use with APK Signature Scheme v3 without an accompanying SigningCertificateLineage"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_7
    :goto_2
    new-instance v0, Lcom/android/apksig/DefaultApkSignerEngine;

    iget-object v4, v1, Lcom/android/apksig/DefaultApkSignerEngine$Builder;->mSignerConfigs:Ljava/util/List;

    iget-object v5, v1, Lcom/android/apksig/DefaultApkSignerEngine$Builder;->mStampSignerConfig:Lcom/android/apksig/DefaultApkSignerEngine$SignerConfig;

    iget-object v6, v1, Lcom/android/apksig/DefaultApkSignerEngine$Builder;->mSourceStampSigningCertificateLineage:Lcom/android/apksig/SigningCertificateLineage;

    iget v7, v1, Lcom/android/apksig/DefaultApkSignerEngine$Builder;->mMinSdkVersion:I

    iget v8, v1, Lcom/android/apksig/DefaultApkSignerEngine$Builder;->mRotationMinSdkVersion:I

    iget-boolean v9, v1, Lcom/android/apksig/DefaultApkSignerEngine$Builder;->mRotationTargetsDevRelease:Z

    iget-boolean v10, v1, Lcom/android/apksig/DefaultApkSignerEngine$Builder;->mV1SigningEnabled:Z

    iget-boolean v11, v1, Lcom/android/apksig/DefaultApkSignerEngine$Builder;->mV2SigningEnabled:Z

    iget-boolean v12, v1, Lcom/android/apksig/DefaultApkSignerEngine$Builder;->mV3SigningEnabled:Z

    iget-boolean v13, v1, Lcom/android/apksig/DefaultApkSignerEngine$Builder;->mVerityEnabled:Z

    iget-boolean v14, v1, Lcom/android/apksig/DefaultApkSignerEngine$Builder;->mDebuggableApkPermitted:Z

    iget-boolean v15, v1, Lcom/android/apksig/DefaultApkSignerEngine$Builder;->mOtherSignersSignaturesPreserved:Z

    iget-object v2, v1, Lcom/android/apksig/DefaultApkSignerEngine$Builder;->mCreatedBy:Ljava/lang/String;

    iget-object v3, v1, Lcom/android/apksig/DefaultApkSignerEngine$Builder;->mSigningCertificateLineage:Lcom/android/apksig/SigningCertificateLineage;

    const/16 v18, 0x0

    move-object/from16 v17, v3

    move-object v3, v0

    move-object/from16 v16, v2

    invoke-direct/range {v3 .. v18}, Lcom/android/apksig/DefaultApkSignerEngine;-><init>(Ljava/util/List;Lcom/android/apksig/DefaultApkSignerEngine$SignerConfig;Lcom/android/apksig/SigningCertificateLineage;IIZZZZZZZLjava/lang/String;Lcom/android/apksig/SigningCertificateLineage;Lcom/android/apksig/DefaultApkSignerEngine$1;)V

    return-object v0
.end method

.method public setCreatedBy(Ljava/lang/String;)Lcom/android/apksig/DefaultApkSignerEngine$Builder;
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/android/apksig/DefaultApkSignerEngine$Builder;->mCreatedBy:Ljava/lang/String;

    return-object p0
.end method

.method public setDebuggableApkPermitted(Z)Lcom/android/apksig/DefaultApkSignerEngine$Builder;
    .locals 0

    iput-boolean p1, p0, Lcom/android/apksig/DefaultApkSignerEngine$Builder;->mDebuggableApkPermitted:Z

    return-object p0
.end method

.method public setMinSdkVersionForRotation(I)Lcom/android/apksig/DefaultApkSignerEngine$Builder;
    .locals 1

    const/16 v0, 0x21

    if-ge p1, v0, :cond_0

    const/16 p1, 0x1c

    iput p1, p0, Lcom/android/apksig/DefaultApkSignerEngine$Builder;->mRotationMinSdkVersion:I

    goto :goto_0

    :cond_0
    iput p1, p0, Lcom/android/apksig/DefaultApkSignerEngine$Builder;->mRotationMinSdkVersion:I

    :goto_0
    return-object p0
.end method

.method public setOtherSignersSignaturesPreserved(Z)Lcom/android/apksig/DefaultApkSignerEngine$Builder;
    .locals 0

    iput-boolean p1, p0, Lcom/android/apksig/DefaultApkSignerEngine$Builder;->mOtherSignersSignaturesPreserved:Z

    return-object p0
.end method

.method public setRotationTargetsDevRelease(Z)Lcom/android/apksig/DefaultApkSignerEngine$Builder;
    .locals 0

    iput-boolean p1, p0, Lcom/android/apksig/DefaultApkSignerEngine$Builder;->mRotationTargetsDevRelease:Z

    return-object p0
.end method

.method public setSigningCertificateLineage(Lcom/android/apksig/SigningCertificateLineage;)Lcom/android/apksig/DefaultApkSignerEngine$Builder;
    .locals 1

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/apksig/DefaultApkSignerEngine$Builder;->mV3SigningEnabled:Z

    iput-object p1, p0, Lcom/android/apksig/DefaultApkSignerEngine$Builder;->mSigningCertificateLineage:Lcom/android/apksig/SigningCertificateLineage;

    :cond_0
    return-object p0
.end method

.method public setSourceStampSigningCertificateLineage(Lcom/android/apksig/SigningCertificateLineage;)Lcom/android/apksig/DefaultApkSignerEngine$Builder;
    .locals 0

    iput-object p1, p0, Lcom/android/apksig/DefaultApkSignerEngine$Builder;->mSourceStampSigningCertificateLineage:Lcom/android/apksig/SigningCertificateLineage;

    return-object p0
.end method

.method public setStampSignerConfig(Lcom/android/apksig/DefaultApkSignerEngine$SignerConfig;)Lcom/android/apksig/DefaultApkSignerEngine$Builder;
    .locals 0

    iput-object p1, p0, Lcom/android/apksig/DefaultApkSignerEngine$Builder;->mStampSignerConfig:Lcom/android/apksig/DefaultApkSignerEngine$SignerConfig;

    return-object p0
.end method

.method public setV1SigningEnabled(Z)Lcom/android/apksig/DefaultApkSignerEngine$Builder;
    .locals 0

    iput-boolean p1, p0, Lcom/android/apksig/DefaultApkSignerEngine$Builder;->mV1SigningEnabled:Z

    return-object p0
.end method

.method public setV2SigningEnabled(Z)Lcom/android/apksig/DefaultApkSignerEngine$Builder;
    .locals 0

    iput-boolean p1, p0, Lcom/android/apksig/DefaultApkSignerEngine$Builder;->mV2SigningEnabled:Z

    return-object p0
.end method

.method public setV3SigningEnabled(Z)Lcom/android/apksig/DefaultApkSignerEngine$Builder;
    .locals 1

    iput-boolean p1, p0, Lcom/android/apksig/DefaultApkSignerEngine$Builder;->mV3SigningEnabled:Z

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    iput-boolean v0, p0, Lcom/android/apksig/DefaultApkSignerEngine$Builder;->mV3SigningExplicitlyEnabled:Z

    goto :goto_0

    :cond_0
    iput-boolean v0, p0, Lcom/android/apksig/DefaultApkSignerEngine$Builder;->mV3SigningExplicitlyDisabled:Z

    :goto_0
    return-object p0
.end method

.method public setVerityEnabled(Z)Lcom/android/apksig/DefaultApkSignerEngine$Builder;
    .locals 0

    iput-boolean p1, p0, Lcom/android/apksig/DefaultApkSignerEngine$Builder;->mVerityEnabled:Z

    return-object p0
.end method
