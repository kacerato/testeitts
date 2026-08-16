.class Lorg/openjdk/source/util/DocTreePath$1PathFinder;
.super Lorg/openjdk/source/util/DocTreePathScanner;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/openjdk/source/util/DocTreePath;->getPath(Lorg/openjdk/source/util/DocTreePath;Lorg/openjdk/source/doctree/DocTree;)Lorg/openjdk/source/util/DocTreePath;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "PathFinder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/openjdk/source/util/DocTreePathScanner<",
        "Lorg/openjdk/source/util/DocTreePath;",
        "Lorg/openjdk/source/doctree/DocTree;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/openjdk/source/util/DocTreePathScanner;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic scan(Lorg/openjdk/source/doctree/DocTree;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p2, Lorg/openjdk/source/doctree/DocTree;

    invoke-virtual {p0, p1, p2}, Lorg/openjdk/source/util/DocTreePath$1PathFinder;->scan(Lorg/openjdk/source/doctree/DocTree;Lorg/openjdk/source/doctree/DocTree;)Lorg/openjdk/source/util/DocTreePath;

    move-result-object p1

    return-object p1
.end method

.method public scan(Lorg/openjdk/source/doctree/DocTree;Lorg/openjdk/source/doctree/DocTree;)Lorg/openjdk/source/util/DocTreePath;
    .locals 2

    if-eq p1, p2, :cond_0

    .line 2
    invoke-super {p0, p1, p2}, Lorg/openjdk/source/util/DocTreePathScanner;->scan(Lorg/openjdk/source/doctree/DocTree;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/openjdk/source/util/DocTreePath;

    return-object p1

    .line 3
    :cond_0
    new-instance p1, Lorg/openjdk/source/util/DocTreePath$1Result;

    new-instance v0, Lorg/openjdk/source/util/DocTreePath;

    invoke-virtual {p0}, Lorg/openjdk/source/util/DocTreePathScanner;->getCurrentPath()Lorg/openjdk/source/util/DocTreePath;

    move-result-object v1

    invoke-direct {v0, v1, p2}, Lorg/openjdk/source/util/DocTreePath;-><init>(Lorg/openjdk/source/util/DocTreePath;Lorg/openjdk/source/doctree/DocTree;)V

    invoke-direct {p1, v0}, Lorg/openjdk/source/util/DocTreePath$1Result;-><init>(Lorg/openjdk/source/util/DocTreePath;)V

    throw p1
.end method
