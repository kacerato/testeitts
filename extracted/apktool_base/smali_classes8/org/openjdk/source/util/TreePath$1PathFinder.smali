.class Lorg/openjdk/source/util/TreePath$1PathFinder;
.super Lorg/openjdk/source/util/TreePathScanner;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/openjdk/source/util/TreePath;->getPath(Lorg/openjdk/source/util/TreePath;Lorg/openjdk/source/tree/Tree;)Lorg/openjdk/source/util/TreePath;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "PathFinder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/openjdk/source/util/TreePathScanner<",
        "Lorg/openjdk/source/util/TreePath;",
        "Lorg/openjdk/source/tree/Tree;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/openjdk/source/util/TreePathScanner;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic scan(Lorg/openjdk/source/tree/Tree;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p2, Lorg/openjdk/source/tree/Tree;

    invoke-virtual {p0, p1, p2}, Lorg/openjdk/source/util/TreePath$1PathFinder;->scan(Lorg/openjdk/source/tree/Tree;Lorg/openjdk/source/tree/Tree;)Lorg/openjdk/source/util/TreePath;

    move-result-object p1

    return-object p1
.end method

.method public scan(Lorg/openjdk/source/tree/Tree;Lorg/openjdk/source/tree/Tree;)Lorg/openjdk/source/util/TreePath;
    .locals 2

    if-eq p1, p2, :cond_0

    .line 2
    invoke-super {p0, p1, p2}, Lorg/openjdk/source/util/TreePathScanner;->scan(Lorg/openjdk/source/tree/Tree;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/openjdk/source/util/TreePath;

    return-object p1

    .line 3
    :cond_0
    new-instance p1, Lorg/openjdk/source/util/TreePath$1Result;

    new-instance v0, Lorg/openjdk/source/util/TreePath;

    invoke-virtual {p0}, Lorg/openjdk/source/util/TreePathScanner;->getCurrentPath()Lorg/openjdk/source/util/TreePath;

    move-result-object v1

    invoke-direct {v0, v1, p2}, Lorg/openjdk/source/util/TreePath;-><init>(Lorg/openjdk/source/util/TreePath;Lorg/openjdk/source/tree/Tree;)V

    invoke-direct {p1, v0}, Lorg/openjdk/source/util/TreePath$1Result;-><init>(Lorg/openjdk/source/util/TreePath;)V

    throw p1
.end method
