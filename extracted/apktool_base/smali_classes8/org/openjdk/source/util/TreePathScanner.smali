.class public Lorg/openjdk/source/util/TreePathScanner;
.super Lorg/openjdk/source/util/TreeScanner;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R:",
        "Ljava/lang/Object;",
        "P:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/openjdk/source/util/TreeScanner<",
        "TR;TP;>;"
    }
.end annotation


# instance fields
.field private path:Lorg/openjdk/source/util/TreePath;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/openjdk/source/util/TreeScanner;-><init>()V

    return-void
.end method


# virtual methods
.method public getCurrentPath()Lorg/openjdk/source/util/TreePath;
    .locals 1

    iget-object v0, p0, Lorg/openjdk/source/util/TreePathScanner;->path:Lorg/openjdk/source/util/TreePath;

    return-object v0
.end method

.method public scan(Lorg/openjdk/source/tree/Tree;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/source/tree/Tree;",
            "TP;)TR;"
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 5
    :cond_0
    iget-object v0, p0, Lorg/openjdk/source/util/TreePathScanner;->path:Lorg/openjdk/source/util/TreePath;

    .line 6
    new-instance v1, Lorg/openjdk/source/util/TreePath;

    invoke-direct {v1, v0, p1}, Lorg/openjdk/source/util/TreePath;-><init>(Lorg/openjdk/source/util/TreePath;Lorg/openjdk/source/tree/Tree;)V

    iput-object v1, p0, Lorg/openjdk/source/util/TreePathScanner;->path:Lorg/openjdk/source/util/TreePath;

    .line 7
    :try_start_0
    invoke-interface {p1, p0, p2}, Lorg/openjdk/source/tree/Tree;->accept(Lorg/openjdk/source/tree/TreeVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    iput-object v0, p0, Lorg/openjdk/source/util/TreePathScanner;->path:Lorg/openjdk/source/util/TreePath;

    return-object p1

    :catchall_0
    move-exception p1

    iput-object v0, p0, Lorg/openjdk/source/util/TreePathScanner;->path:Lorg/openjdk/source/util/TreePath;

    .line 9
    throw p1
.end method

.method public scan(Lorg/openjdk/source/util/TreePath;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/source/util/TreePath;",
            "TP;)TR;"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lorg/openjdk/source/util/TreePathScanner;->path:Lorg/openjdk/source/util/TreePath;

    const/4 v0, 0x0

    .line 2
    :try_start_0
    invoke-virtual {p1}, Lorg/openjdk/source/util/TreePath;->getLeaf()Lorg/openjdk/source/tree/Tree;

    move-result-object p1

    invoke-interface {p1, p0, p2}, Lorg/openjdk/source/tree/Tree;->accept(Lorg/openjdk/source/tree/TreeVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    iput-object v0, p0, Lorg/openjdk/source/util/TreePathScanner;->path:Lorg/openjdk/source/util/TreePath;

    return-object p1

    :catchall_0
    move-exception p1

    iput-object v0, p0, Lorg/openjdk/source/util/TreePathScanner;->path:Lorg/openjdk/source/util/TreePath;

    .line 4
    throw p1
.end method
