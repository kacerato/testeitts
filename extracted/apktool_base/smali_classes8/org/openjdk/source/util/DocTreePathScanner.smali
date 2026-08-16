.class public Lorg/openjdk/source/util/DocTreePathScanner;
.super Lorg/openjdk/source/util/DocTreeScanner;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R:",
        "Ljava/lang/Object;",
        "P:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/openjdk/source/util/DocTreeScanner<",
        "TR;TP;>;"
    }
.end annotation


# instance fields
.field private path:Lorg/openjdk/source/util/DocTreePath;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/openjdk/source/util/DocTreeScanner;-><init>()V

    return-void
.end method


# virtual methods
.method public getCurrentPath()Lorg/openjdk/source/util/DocTreePath;
    .locals 1

    iget-object v0, p0, Lorg/openjdk/source/util/DocTreePathScanner;->path:Lorg/openjdk/source/util/DocTreePath;

    return-object v0
.end method

.method public scan(Lorg/openjdk/source/doctree/DocTree;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/source/doctree/DocTree;",
            "TP;)TR;"
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 5
    :cond_0
    iget-object v0, p0, Lorg/openjdk/source/util/DocTreePathScanner;->path:Lorg/openjdk/source/util/DocTreePath;

    .line 6
    new-instance v1, Lorg/openjdk/source/util/DocTreePath;

    invoke-direct {v1, v0, p1}, Lorg/openjdk/source/util/DocTreePath;-><init>(Lorg/openjdk/source/util/DocTreePath;Lorg/openjdk/source/doctree/DocTree;)V

    iput-object v1, p0, Lorg/openjdk/source/util/DocTreePathScanner;->path:Lorg/openjdk/source/util/DocTreePath;

    .line 7
    :try_start_0
    invoke-interface {p1, p0, p2}, Lorg/openjdk/source/doctree/DocTree;->accept(Lorg/openjdk/source/doctree/DocTreeVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    iput-object v0, p0, Lorg/openjdk/source/util/DocTreePathScanner;->path:Lorg/openjdk/source/util/DocTreePath;

    return-object p1

    :catchall_0
    move-exception p1

    iput-object v0, p0, Lorg/openjdk/source/util/DocTreePathScanner;->path:Lorg/openjdk/source/util/DocTreePath;

    .line 9
    throw p1
.end method

.method public scan(Lorg/openjdk/source/util/DocTreePath;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/source/util/DocTreePath;",
            "TP;)TR;"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lorg/openjdk/source/util/DocTreePathScanner;->path:Lorg/openjdk/source/util/DocTreePath;

    const/4 v0, 0x0

    .line 2
    :try_start_0
    invoke-virtual {p1}, Lorg/openjdk/source/util/DocTreePath;->getLeaf()Lorg/openjdk/source/doctree/DocTree;

    move-result-object p1

    invoke-interface {p1, p0, p2}, Lorg/openjdk/source/doctree/DocTree;->accept(Lorg/openjdk/source/doctree/DocTreeVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    iput-object v0, p0, Lorg/openjdk/source/util/DocTreePathScanner;->path:Lorg/openjdk/source/util/DocTreePath;

    return-object p1

    :catchall_0
    move-exception p1

    iput-object v0, p0, Lorg/openjdk/source/util/DocTreePathScanner;->path:Lorg/openjdk/source/util/DocTreePath;

    .line 4
    throw p1
.end method
