.class public Lcom/android/apksig/internal/apk/v3/V3SchemeSigner$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/apksig/internal/apk/v3/V3SchemeSigner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private final mBeforeCentralDir:Lcom/android/apksig/util/DataSource;

.field private mBlockId:I

.field private final mCentralDir:Lcom/android/apksig/util/DataSource;

.field private final mEocd:Lcom/android/apksig/util/DataSource;

.field private mExecutor:Lcom/android/apksig/util/RunnablesExecutor;

.field private mOptionalRotationMinSdkVersion:Lcom/android/apksig/internal/compat/OptionalIntCompat;

.field private mRotationTargetsDevRelease:Z

.field private final mSignerConfigs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$SignerConfig;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/android/apksig/util/DataSource;Lcom/android/apksig/util/DataSource;Lcom/android/apksig/util/DataSource;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/apksig/util/DataSource;",
            "Lcom/android/apksig/util/DataSource;",
            "Lcom/android/apksig/util/DataSource;",
            "Ljava/util/List<",
            "Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$SignerConfig;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/android/apksig/util/RunnablesExecutor;->MULTI_THREADED:Lcom/android/apksig/util/RunnablesExecutor;

    iput-object v0, p0, Lcom/android/apksig/internal/apk/v3/V3SchemeSigner$Builder;->mExecutor:Lcom/android/apksig/util/RunnablesExecutor;

    const v0, -0xfac9740

    iput v0, p0, Lcom/android/apksig/internal/apk/v3/V3SchemeSigner$Builder;->mBlockId:I

    invoke-static {}, Lcom/android/apksig/internal/compat/OptionalIntCompat;->empty()Lcom/android/apksig/internal/compat/OptionalIntCompat;

    move-result-object v0

    iput-object v0, p0, Lcom/android/apksig/internal/apk/v3/V3SchemeSigner$Builder;->mOptionalRotationMinSdkVersion:Lcom/android/apksig/internal/compat/OptionalIntCompat;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/apksig/internal/apk/v3/V3SchemeSigner$Builder;->mRotationTargetsDevRelease:Z

    iput-object p1, p0, Lcom/android/apksig/internal/apk/v3/V3SchemeSigner$Builder;->mBeforeCentralDir:Lcom/android/apksig/util/DataSource;

    iput-object p2, p0, Lcom/android/apksig/internal/apk/v3/V3SchemeSigner$Builder;->mCentralDir:Lcom/android/apksig/util/DataSource;

    iput-object p3, p0, Lcom/android/apksig/internal/apk/v3/V3SchemeSigner$Builder;->mEocd:Lcom/android/apksig/util/DataSource;

    iput-object p4, p0, Lcom/android/apksig/internal/apk/v3/V3SchemeSigner$Builder;->mSignerConfigs:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public build()Lcom/android/apksig/internal/apk/v3/V3SchemeSigner;
    .locals 11

    new-instance v10, Lcom/android/apksig/internal/apk/v3/V3SchemeSigner;

    iget-object v1, p0, Lcom/android/apksig/internal/apk/v3/V3SchemeSigner$Builder;->mBeforeCentralDir:Lcom/android/apksig/util/DataSource;

    iget-object v2, p0, Lcom/android/apksig/internal/apk/v3/V3SchemeSigner$Builder;->mCentralDir:Lcom/android/apksig/util/DataSource;

    iget-object v3, p0, Lcom/android/apksig/internal/apk/v3/V3SchemeSigner$Builder;->mEocd:Lcom/android/apksig/util/DataSource;

    iget-object v4, p0, Lcom/android/apksig/internal/apk/v3/V3SchemeSigner$Builder;->mSignerConfigs:Ljava/util/List;

    iget-object v5, p0, Lcom/android/apksig/internal/apk/v3/V3SchemeSigner$Builder;->mExecutor:Lcom/android/apksig/util/RunnablesExecutor;

    iget v6, p0, Lcom/android/apksig/internal/apk/v3/V3SchemeSigner$Builder;->mBlockId:I

    iget-object v7, p0, Lcom/android/apksig/internal/apk/v3/V3SchemeSigner$Builder;->mOptionalRotationMinSdkVersion:Lcom/android/apksig/internal/compat/OptionalIntCompat;

    iget-boolean v8, p0, Lcom/android/apksig/internal/apk/v3/V3SchemeSigner$Builder;->mRotationTargetsDevRelease:Z

    const/4 v9, 0x0

    move-object v0, v10

    invoke-direct/range {v0 .. v9}, Lcom/android/apksig/internal/apk/v3/V3SchemeSigner;-><init>(Lcom/android/apksig/util/DataSource;Lcom/android/apksig/util/DataSource;Lcom/android/apksig/util/DataSource;Ljava/util/List;Lcom/android/apksig/util/RunnablesExecutor;ILcom/android/apksig/internal/compat/OptionalIntCompat;ZLcom/android/apksig/internal/apk/v3/V3SchemeSigner$1;)V

    return-object v10
.end method

.method public setBlockId(I)Lcom/android/apksig/internal/apk/v3/V3SchemeSigner$Builder;
    .locals 0

    iput p1, p0, Lcom/android/apksig/internal/apk/v3/V3SchemeSigner$Builder;->mBlockId:I

    return-object p0
.end method

.method public setRotationMinSdkVersion(I)Lcom/android/apksig/internal/apk/v3/V3SchemeSigner$Builder;
    .locals 0

    invoke-static {p1}, Lcom/android/apksig/internal/compat/OptionalIntCompat;->of(I)Lcom/android/apksig/internal/compat/OptionalIntCompat;

    move-result-object p1

    iput-object p1, p0, Lcom/android/apksig/internal/apk/v3/V3SchemeSigner$Builder;->mOptionalRotationMinSdkVersion:Lcom/android/apksig/internal/compat/OptionalIntCompat;

    return-object p0
.end method

.method public setRotationTargetsDevRelease(Z)Lcom/android/apksig/internal/apk/v3/V3SchemeSigner$Builder;
    .locals 0

    iput-boolean p1, p0, Lcom/android/apksig/internal/apk/v3/V3SchemeSigner$Builder;->mRotationTargetsDevRelease:Z

    return-object p0
.end method

.method public setRunnablesExecutor(Lcom/android/apksig/util/RunnablesExecutor;)Lcom/android/apksig/internal/apk/v3/V3SchemeSigner$Builder;
    .locals 0

    iput-object p1, p0, Lcom/android/apksig/internal/apk/v3/V3SchemeSigner$Builder;->mExecutor:Lcom/android/apksig/util/RunnablesExecutor;

    return-object p0
.end method
