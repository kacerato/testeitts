.class Lorg/openjdk/tools/sjavac/comp/PathAndPackageVerifier$ParentIterator;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openjdk/tools/sjavac/comp/PathAndPackageVerifier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ParentIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field next:Ljava/nio/file/Path;


# direct methods
.method public constructor <init>(Ljava/nio/file/Path;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/openjdk/tools/sjavac/comp/PathAndPackageVerifier$ParentIterator;->next:Ljava/nio/file/Path;

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    iget-object v0, p0, Lorg/openjdk/tools/sjavac/comp/PathAndPackageVerifier$ParentIterator;->next:Ljava/nio/file/Path;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lorg/openjdk/tools/sjavac/comp/PathAndPackageVerifier$ParentIterator;->next()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public next()Ljava/lang/String;
    .locals 2

    .line 2
    iget-object v0, p0, Lorg/openjdk/tools/sjavac/comp/PathAndPackageVerifier$ParentIterator;->next:Ljava/nio/file/Path;

    invoke-interface {v0}, Ljava/nio/file/Path;->getFileName()Ljava/nio/file/Path;

    move-result-object v0

    invoke-interface {v0}, Ljava/nio/file/Path;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3
    iget-object v1, p0, Lorg/openjdk/tools/sjavac/comp/PathAndPackageVerifier$ParentIterator;->next:Ljava/nio/file/Path;

    invoke-interface {v1}, Ljava/nio/file/Path;->getParent()Ljava/nio/file/Path;

    move-result-object v1

    iput-object v1, p0, Lorg/openjdk/tools/sjavac/comp/PathAndPackageVerifier$ParentIterator;->next:Ljava/nio/file/Path;

    return-object v0
.end method
