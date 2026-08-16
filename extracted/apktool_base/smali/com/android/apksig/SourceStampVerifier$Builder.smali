.class public Lcom/android/apksig/SourceStampVerifier$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/apksig/SourceStampVerifier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private final mApkDataSource:Lcom/android/apksig/util/DataSource;

.field private final mApkFile:Ljava/io/File;

.field private mMaxSdkVersion:I

.field private mMinSdkVersion:I


# direct methods
.method public constructor <init>(Lcom/android/apksig/util/DataSource;)V
    .locals 1

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 8
    iput v0, p0, Lcom/android/apksig/SourceStampVerifier$Builder;->mMinSdkVersion:I

    const v0, 0x7fffffff

    .line 9
    iput v0, p0, Lcom/android/apksig/SourceStampVerifier$Builder;->mMaxSdkVersion:I

    if-eqz p1, :cond_0

    .line 10
    iput-object p1, p0, Lcom/android/apksig/SourceStampVerifier$Builder;->mApkDataSource:Lcom/android/apksig/util/DataSource;

    const/4 p1, 0x0

    .line 11
    iput-object p1, p0, Lcom/android/apksig/SourceStampVerifier$Builder;->mApkFile:Ljava/io/File;

    return-void

    .line 12
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "apk == null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>(Ljava/io/File;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 2
    iput v0, p0, Lcom/android/apksig/SourceStampVerifier$Builder;->mMinSdkVersion:I

    const v0, 0x7fffffff

    .line 3
    iput v0, p0, Lcom/android/apksig/SourceStampVerifier$Builder;->mMaxSdkVersion:I

    if-eqz p1, :cond_0

    .line 4
    iput-object p1, p0, Lcom/android/apksig/SourceStampVerifier$Builder;->mApkFile:Ljava/io/File;

    const/4 p1, 0x0

    .line 5
    iput-object p1, p0, Lcom/android/apksig/SourceStampVerifier$Builder;->mApkDataSource:Lcom/android/apksig/util/DataSource;

    return-void

    .line 6
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "apk == null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public build()Lcom/android/apksig/SourceStampVerifier;
    .locals 7

    new-instance v6, Lcom/android/apksig/SourceStampVerifier;

    iget-object v1, p0, Lcom/android/apksig/SourceStampVerifier$Builder;->mApkFile:Ljava/io/File;

    iget-object v2, p0, Lcom/android/apksig/SourceStampVerifier$Builder;->mApkDataSource:Lcom/android/apksig/util/DataSource;

    iget v3, p0, Lcom/android/apksig/SourceStampVerifier$Builder;->mMinSdkVersion:I

    iget v4, p0, Lcom/android/apksig/SourceStampVerifier$Builder;->mMaxSdkVersion:I

    const/4 v5, 0x0

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/android/apksig/SourceStampVerifier;-><init>(Ljava/io/File;Lcom/android/apksig/util/DataSource;IILcom/android/apksig/SourceStampVerifier$1;)V

    return-object v6
.end method

.method public setMaxCheckedPlatformVersion(I)Lcom/android/apksig/SourceStampVerifier$Builder;
    .locals 0

    iput p1, p0, Lcom/android/apksig/SourceStampVerifier$Builder;->mMaxSdkVersion:I

    return-object p0
.end method

.method public setMinCheckedPlatformVersion(I)Lcom/android/apksig/SourceStampVerifier$Builder;
    .locals 0

    iput p1, p0, Lcom/android/apksig/SourceStampVerifier$Builder;->mMinSdkVersion:I

    return-object p0
.end method
