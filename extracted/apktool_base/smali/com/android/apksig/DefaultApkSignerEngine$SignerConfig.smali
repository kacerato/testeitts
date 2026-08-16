.class public Lcom/android/apksig/DefaultApkSignerEngine$SignerConfig;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/apksig/DefaultApkSignerEngine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SignerConfig"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/apksig/DefaultApkSignerEngine$SignerConfig$Builder;
    }
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
.method private constructor <init>(Ljava/lang/String;Ljava/security/PrivateKey;Ljava/util/List;Z)V
    .locals 0
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
    iput-object p1, p0, Lcom/android/apksig/DefaultApkSignerEngine$SignerConfig;->mName:Ljava/lang/String;

    .line 4
    iput-object p2, p0, Lcom/android/apksig/DefaultApkSignerEngine$SignerConfig;->mPrivateKey:Ljava/security/PrivateKey;

    .line 5
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1, p3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/android/apksig/DefaultApkSignerEngine$SignerConfig;->mCertificates:Ljava/util/List;

    .line 6
    iput-boolean p4, p0, Lcom/android/apksig/DefaultApkSignerEngine$SignerConfig;->mDeterministicDsaSigning:Z

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Ljava/security/PrivateKey;Ljava/util/List;ZLcom/android/apksig/DefaultApkSignerEngine$1;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/apksig/DefaultApkSignerEngine$SignerConfig;-><init>(Ljava/lang/String;Ljava/security/PrivateKey;Ljava/util/List;Z)V

    return-void
.end method

.method public static synthetic access$000(Lcom/android/apksig/DefaultApkSignerEngine$SignerConfig;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/android/apksig/DefaultApkSignerEngine$SignerConfig;->mCertificates:Ljava/util/List;

    return-object p0
.end method


# virtual methods
.method public getCertificates()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/security/cert/X509Certificate;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/apksig/DefaultApkSignerEngine$SignerConfig;->mCertificates:Ljava/util/List;

    return-object v0
.end method

.method public getDeterministicDsaSigning()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/apksig/DefaultApkSignerEngine$SignerConfig;->mDeterministicDsaSigning:Z

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/apksig/DefaultApkSignerEngine$SignerConfig;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getPrivateKey()Ljava/security/PrivateKey;
    .locals 1

    iget-object v0, p0, Lcom/android/apksig/DefaultApkSignerEngine$SignerConfig;->mPrivateKey:Ljava/security/PrivateKey;

    return-object v0
.end method
