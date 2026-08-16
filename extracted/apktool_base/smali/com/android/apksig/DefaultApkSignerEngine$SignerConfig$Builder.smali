.class public Lcom/android/apksig/DefaultApkSignerEngine$SignerConfig$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/apksig/DefaultApkSignerEngine$SignerConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private final mCertificates:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/security/cert/X509Certificate;",
            ">;"
        }
    .end annotation
.end field

.field private final mDeterministicDsaSigning:Z

.field private final mName:Ljava/lang/String;

.field private final mPrivateKey:Ljava/security/PrivateKey;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/security/PrivateKey;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/security/PrivateKey;",
            "Ljava/util/List<",
            "Ljava/security/cert/X509Certificate;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/apksig/DefaultApkSignerEngine$SignerConfig$Builder;-><init>(Ljava/lang/String;Ljava/security/PrivateKey;Ljava/util/List;Z)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/security/PrivateKey;Ljava/util/List;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/security/PrivateKey;",
            "Ljava/util/List<",
            "Ljava/security/cert/X509Certificate;",
            ">;Z)V"
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 4
    iput-object p1, p0, Lcom/android/apksig/DefaultApkSignerEngine$SignerConfig$Builder;->mName:Ljava/lang/String;

    .line 5
    iput-object p2, p0, Lcom/android/apksig/DefaultApkSignerEngine$SignerConfig$Builder;->mPrivateKey:Ljava/security/PrivateKey;

    .line 6
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1, p3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object p1, p0, Lcom/android/apksig/DefaultApkSignerEngine$SignerConfig$Builder;->mCertificates:Ljava/util/List;

    .line 7
    iput-boolean p4, p0, Lcom/android/apksig/DefaultApkSignerEngine$SignerConfig$Builder;->mDeterministicDsaSigning:Z

    return-void

    .line 8
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Empty name"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public build()Lcom/android/apksig/DefaultApkSignerEngine$SignerConfig;
    .locals 7

    new-instance v6, Lcom/android/apksig/DefaultApkSignerEngine$SignerConfig;

    iget-object v1, p0, Lcom/android/apksig/DefaultApkSignerEngine$SignerConfig$Builder;->mName:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/apksig/DefaultApkSignerEngine$SignerConfig$Builder;->mPrivateKey:Ljava/security/PrivateKey;

    iget-object v3, p0, Lcom/android/apksig/DefaultApkSignerEngine$SignerConfig$Builder;->mCertificates:Ljava/util/List;

    iget-boolean v4, p0, Lcom/android/apksig/DefaultApkSignerEngine$SignerConfig$Builder;->mDeterministicDsaSigning:Z

    const/4 v5, 0x0

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/android/apksig/DefaultApkSignerEngine$SignerConfig;-><init>(Ljava/lang/String;Ljava/security/PrivateKey;Ljava/util/List;ZLcom/android/apksig/DefaultApkSignerEngine$1;)V

    return-object v6
.end method
