.class public Lcom/android/apksig/internal/apk/v3/V3SchemeVerifier$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/apksig/internal/apk/v3/V3SchemeVerifier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private mApk:Lcom/android/apksig/util/DataSource;

.field private mApkSignatureSchemeV3Block:Ljava/nio/ByteBuffer;

.field private mBlockId:I

.field private mContentDigestsToVerify:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/android/apksig/internal/apk/ContentDigestAlgorithm;",
            ">;"
        }
    .end annotation
.end field

.field private mExecutor:Lcom/android/apksig/util/RunnablesExecutor;

.field private mFullVerification:Z

.field private mMaxSdkVersion:I

.field private mMinSdkVersion:I

.field private mOptionalRotationMinSdkVersion:Lcom/android/apksig/internal/compat/OptionalIntCompat;

.field private mResult:Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$Result;

.field private mZipSections:Lcom/android/apksig/apk/ApkUtils$ZipSections;


# direct methods
.method public constructor <init>(Lcom/android/apksig/util/DataSource;Lcom/android/apksig/apk/ApkUtils$ZipSections;II)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    sget-object v0, Lcom/android/apksig/util/RunnablesExecutor;->SINGLE_THREADED:Lcom/android/apksig/util/RunnablesExecutor;

    iput-object v0, p0, Lcom/android/apksig/internal/apk/v3/V3SchemeVerifier$Builder;->mExecutor:Lcom/android/apksig/util/RunnablesExecutor;

    const v0, -0xfac9740

    .line 3
    iput v0, p0, Lcom/android/apksig/internal/apk/v3/V3SchemeVerifier$Builder;->mBlockId:I

    const/4 v0, 0x1

    .line 4
    iput-boolean v0, p0, Lcom/android/apksig/internal/apk/v3/V3SchemeVerifier$Builder;->mFullVerification:Z

    .line 5
    invoke-static {}, Lcom/android/apksig/internal/compat/OptionalIntCompat;->empty()Lcom/android/apksig/internal/compat/OptionalIntCompat;

    move-result-object v0

    iput-object v0, p0, Lcom/android/apksig/internal/apk/v3/V3SchemeVerifier$Builder;->mOptionalRotationMinSdkVersion:Lcom/android/apksig/internal/compat/OptionalIntCompat;

    .line 6
    iput-object p1, p0, Lcom/android/apksig/internal/apk/v3/V3SchemeVerifier$Builder;->mApk:Lcom/android/apksig/util/DataSource;

    .line 7
    iput-object p2, p0, Lcom/android/apksig/internal/apk/v3/V3SchemeVerifier$Builder;->mZipSections:Lcom/android/apksig/apk/ApkUtils$ZipSections;

    .line 8
    iput p3, p0, Lcom/android/apksig/internal/apk/v3/V3SchemeVerifier$Builder;->mMinSdkVersion:I

    .line 9
    iput p4, p0, Lcom/android/apksig/internal/apk/v3/V3SchemeVerifier$Builder;->mMaxSdkVersion:I

    return-void
.end method

.method public constructor <init>(Ljava/nio/ByteBuffer;)V
    .locals 1

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    sget-object v0, Lcom/android/apksig/util/RunnablesExecutor;->SINGLE_THREADED:Lcom/android/apksig/util/RunnablesExecutor;

    iput-object v0, p0, Lcom/android/apksig/internal/apk/v3/V3SchemeVerifier$Builder;->mExecutor:Lcom/android/apksig/util/RunnablesExecutor;

    const v0, -0xfac9740

    .line 12
    iput v0, p0, Lcom/android/apksig/internal/apk/v3/V3SchemeVerifier$Builder;->mBlockId:I

    const/4 v0, 0x1

    .line 13
    iput-boolean v0, p0, Lcom/android/apksig/internal/apk/v3/V3SchemeVerifier$Builder;->mFullVerification:Z

    .line 14
    invoke-static {}, Lcom/android/apksig/internal/compat/OptionalIntCompat;->empty()Lcom/android/apksig/internal/compat/OptionalIntCompat;

    move-result-object v0

    iput-object v0, p0, Lcom/android/apksig/internal/apk/v3/V3SchemeVerifier$Builder;->mOptionalRotationMinSdkVersion:Lcom/android/apksig/internal/compat/OptionalIntCompat;

    .line 15
    iput-object p1, p0, Lcom/android/apksig/internal/apk/v3/V3SchemeVerifier$Builder;->mApkSignatureSchemeV3Block:Ljava/nio/ByteBuffer;

    return-void
.end method


# virtual methods
.method public build()Lcom/android/apksig/internal/apk/v3/V3SchemeVerifier;
    .locals 14

    iget v0, p0, Lcom/android/apksig/internal/apk/v3/V3SchemeVerifier$Builder;->mBlockId:I

    const v1, -0xfac9740

    if-eq v0, v1, :cond_1

    const v1, 0x1b93ad61

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/android/apksig/internal/apk/v3/V3SchemeVerifier$Builder;->mMaxSdkVersion:I

    iput v0, p0, Lcom/android/apksig/internal/apk/v3/V3SchemeVerifier$Builder;->mMinSdkVersion:I

    const/16 v0, 0x1f

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    iget v1, p0, Lcom/android/apksig/internal/apk/v3/V3SchemeVerifier$Builder;->mBlockId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "Unsupported APK Signature Scheme V3 block ID: 0x%08x"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget v0, p0, Lcom/android/apksig/internal/apk/v3/V3SchemeVerifier$Builder;->mMinSdkVersion:I

    const/16 v1, 0x1c

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/android/apksig/internal/apk/v3/V3SchemeVerifier$Builder;->mMinSdkVersion:I

    const/4 v0, 0x3

    :goto_0
    iget-object v1, p0, Lcom/android/apksig/internal/apk/v3/V3SchemeVerifier$Builder;->mResult:Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$Result;

    if-nez v1, :cond_2

    new-instance v1, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$Result;

    invoke-direct {v1, v0}, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$Result;-><init>(I)V

    iput-object v1, p0, Lcom/android/apksig/internal/apk/v3/V3SchemeVerifier$Builder;->mResult:Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$Result;

    :cond_2
    iget-object v0, p0, Lcom/android/apksig/internal/apk/v3/V3SchemeVerifier$Builder;->mContentDigestsToVerify:Ljava/util/Set;

    if-nez v0, :cond_3

    new-instance v0, Ljava/util/HashSet;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(I)V

    iput-object v0, p0, Lcom/android/apksig/internal/apk/v3/V3SchemeVerifier$Builder;->mContentDigestsToVerify:Ljava/util/Set;

    :cond_3
    new-instance v0, Lcom/android/apksig/internal/apk/v3/V3SchemeVerifier;

    iget-object v3, p0, Lcom/android/apksig/internal/apk/v3/V3SchemeVerifier$Builder;->mExecutor:Lcom/android/apksig/util/RunnablesExecutor;

    iget-object v4, p0, Lcom/android/apksig/internal/apk/v3/V3SchemeVerifier$Builder;->mApk:Lcom/android/apksig/util/DataSource;

    iget-object v5, p0, Lcom/android/apksig/internal/apk/v3/V3SchemeVerifier$Builder;->mZipSections:Lcom/android/apksig/apk/ApkUtils$ZipSections;

    iget-object v6, p0, Lcom/android/apksig/internal/apk/v3/V3SchemeVerifier$Builder;->mContentDigestsToVerify:Ljava/util/Set;

    iget-object v7, p0, Lcom/android/apksig/internal/apk/v3/V3SchemeVerifier$Builder;->mResult:Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$Result;

    iget v8, p0, Lcom/android/apksig/internal/apk/v3/V3SchemeVerifier$Builder;->mMinSdkVersion:I

    iget v9, p0, Lcom/android/apksig/internal/apk/v3/V3SchemeVerifier$Builder;->mMaxSdkVersion:I

    iget v10, p0, Lcom/android/apksig/internal/apk/v3/V3SchemeVerifier$Builder;->mBlockId:I

    iget-object v11, p0, Lcom/android/apksig/internal/apk/v3/V3SchemeVerifier$Builder;->mOptionalRotationMinSdkVersion:Lcom/android/apksig/internal/compat/OptionalIntCompat;

    iget-boolean v12, p0, Lcom/android/apksig/internal/apk/v3/V3SchemeVerifier$Builder;->mFullVerification:Z

    const/4 v13, 0x0

    move-object v2, v0

    invoke-direct/range {v2 .. v13}, Lcom/android/apksig/internal/apk/v3/V3SchemeVerifier;-><init>(Lcom/android/apksig/util/RunnablesExecutor;Lcom/android/apksig/util/DataSource;Lcom/android/apksig/apk/ApkUtils$ZipSections;Ljava/util/Set;Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$Result;IIILcom/android/apksig/internal/compat/OptionalIntCompat;ZLcom/android/apksig/internal/apk/v3/V3SchemeVerifier$1;)V

    iget-object v1, p0, Lcom/android/apksig/internal/apk/v3/V3SchemeVerifier$Builder;->mApkSignatureSchemeV3Block:Ljava/nio/ByteBuffer;

    if-eqz v1, :cond_4

    invoke-static {v0, v1}, Lcom/android/apksig/internal/apk/v3/V3SchemeVerifier;->access$102(Lcom/android/apksig/internal/apk/v3/V3SchemeVerifier;Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    :cond_4
    return-object v0
.end method

.method public setBlockId(I)Lcom/android/apksig/internal/apk/v3/V3SchemeVerifier$Builder;
    .locals 0

    iput p1, p0, Lcom/android/apksig/internal/apk/v3/V3SchemeVerifier$Builder;->mBlockId:I

    return-object p0
.end method

.method public setContentDigestsToVerify(Ljava/util/Set;)Lcom/android/apksig/internal/apk/v3/V3SchemeVerifier$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lcom/android/apksig/internal/apk/ContentDigestAlgorithm;",
            ">;)",
            "Lcom/android/apksig/internal/apk/v3/V3SchemeVerifier$Builder;"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/apksig/internal/apk/v3/V3SchemeVerifier$Builder;->mContentDigestsToVerify:Ljava/util/Set;

    return-object p0
.end method

.method public setFullVerification(Z)Lcom/android/apksig/internal/apk/v3/V3SchemeVerifier$Builder;
    .locals 0

    iput-boolean p1, p0, Lcom/android/apksig/internal/apk/v3/V3SchemeVerifier$Builder;->mFullVerification:Z

    return-object p0
.end method

.method public setResult(Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$Result;)Lcom/android/apksig/internal/apk/v3/V3SchemeVerifier$Builder;
    .locals 0

    iput-object p1, p0, Lcom/android/apksig/internal/apk/v3/V3SchemeVerifier$Builder;->mResult:Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$Result;

    return-object p0
.end method

.method public setRotationMinSdkVersion(I)Lcom/android/apksig/internal/apk/v3/V3SchemeVerifier$Builder;
    .locals 0

    invoke-static {p1}, Lcom/android/apksig/internal/compat/OptionalIntCompat;->of(I)Lcom/android/apksig/internal/compat/OptionalIntCompat;

    move-result-object p1

    iput-object p1, p0, Lcom/android/apksig/internal/apk/v3/V3SchemeVerifier$Builder;->mOptionalRotationMinSdkVersion:Lcom/android/apksig/internal/compat/OptionalIntCompat;

    return-object p0
.end method

.method public setRunnablesExecutor(Lcom/android/apksig/util/RunnablesExecutor;)Lcom/android/apksig/internal/apk/v3/V3SchemeVerifier$Builder;
    .locals 0

    iput-object p1, p0, Lcom/android/apksig/internal/apk/v3/V3SchemeVerifier$Builder;->mExecutor:Lcom/android/apksig/util/RunnablesExecutor;

    return-object p0
.end method
