.class Lcom/android/apksig/DefaultApkSignerEngine$OutputJarSignatureRequestImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/apksig/ApkSignerEngine$OutputJarSignatureRequest;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/apksig/DefaultApkSignerEngine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "OutputJarSignatureRequestImpl"
.end annotation


# instance fields
.field private final mAdditionalJarEntries:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/apksig/ApkSignerEngine$OutputJarSignatureRequest$JarEntry;",
            ">;"
        }
    .end annotation
.end field

.field private volatile mDone:Z


# direct methods
.method private constructor <init>(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/apksig/ApkSignerEngine$OutputJarSignatureRequest$JarEntry;",
            ">;)V"
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 4
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/android/apksig/DefaultApkSignerEngine$OutputJarSignatureRequestImpl;->mAdditionalJarEntries:Ljava/util/List;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/util/List;Lcom/android/apksig/DefaultApkSignerEngine$1;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/android/apksig/DefaultApkSignerEngine$OutputJarSignatureRequestImpl;-><init>(Ljava/util/List;)V

    return-void
.end method

.method public static synthetic access$800(Lcom/android/apksig/DefaultApkSignerEngine$OutputJarSignatureRequestImpl;)Z
    .locals 0

    invoke-direct {p0}, Lcom/android/apksig/DefaultApkSignerEngine$OutputJarSignatureRequestImpl;->isDone()Z

    move-result p0

    return p0
.end method

.method private isDone()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/apksig/DefaultApkSignerEngine$OutputJarSignatureRequestImpl;->mDone:Z

    return v0
.end method


# virtual methods
.method public done()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/apksig/DefaultApkSignerEngine$OutputJarSignatureRequestImpl;->mDone:Z

    return-void
.end method

.method public getAdditionalJarEntries()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/apksig/ApkSignerEngine$OutputJarSignatureRequest$JarEntry;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/apksig/DefaultApkSignerEngine$OutputJarSignatureRequestImpl;->mAdditionalJarEntries:Ljava/util/List;

    return-object v0
.end method
