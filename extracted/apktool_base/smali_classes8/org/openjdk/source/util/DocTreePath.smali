.class public Lorg/openjdk/source/util/DocTreePath;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Iterable<",
        "Lorg/openjdk/source/doctree/DocTree;",
        ">;"
    }
.end annotation


# instance fields
.field private final docComment:Lorg/openjdk/source/doctree/DocCommentTree;

.field private final leaf:Lorg/openjdk/source/doctree/DocTree;

.field private final parent:Lorg/openjdk/source/util/DocTreePath;

.field private final treePath:Lorg/openjdk/source/util/TreePath;


# direct methods
.method public constructor <init>(Lorg/openjdk/source/util/DocTreePath;Lorg/openjdk/source/doctree/DocTree;)V
    .locals 2

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    invoke-interface {p2}, Lorg/openjdk/source/doctree/DocTree;->getKind()Lorg/openjdk/source/doctree/DocTree$Kind;

    move-result-object v0

    sget-object v1, Lorg/openjdk/source/doctree/DocTree$Kind;->DOC_COMMENT:Lorg/openjdk/source/doctree/DocTree$Kind;

    if-eq v0, v1, :cond_0

    .line 8
    iget-object v0, p1, Lorg/openjdk/source/util/DocTreePath;->treePath:Lorg/openjdk/source/util/TreePath;

    iput-object v0, p0, Lorg/openjdk/source/util/DocTreePath;->treePath:Lorg/openjdk/source/util/TreePath;

    .line 9
    iget-object v0, p1, Lorg/openjdk/source/util/DocTreePath;->docComment:Lorg/openjdk/source/doctree/DocCommentTree;

    iput-object v0, p0, Lorg/openjdk/source/util/DocTreePath;->docComment:Lorg/openjdk/source/doctree/DocCommentTree;

    .line 10
    iput-object p1, p0, Lorg/openjdk/source/util/DocTreePath;->parent:Lorg/openjdk/source/util/DocTreePath;

    .line 11
    iput-object p2, p0, Lorg/openjdk/source/util/DocTreePath;->leaf:Lorg/openjdk/source/doctree/DocTree;

    return-void

    .line 12
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Use DocTreePath(TreePath, DocCommentTree) to construct DocTreePath for a DocCommentTree."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>(Lorg/openjdk/source/util/TreePath;Lorg/openjdk/source/doctree/DocCommentTree;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lorg/openjdk/source/util/DocTreePath;->treePath:Lorg/openjdk/source/util/TreePath;

    .line 3
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-object p1, p2

    check-cast p1, Lorg/openjdk/source/doctree/DocCommentTree;

    iput-object p1, p0, Lorg/openjdk/source/util/DocTreePath;->docComment:Lorg/openjdk/source/doctree/DocCommentTree;

    const/4 p1, 0x0

    .line 4
    iput-object p1, p0, Lorg/openjdk/source/util/DocTreePath;->parent:Lorg/openjdk/source/util/DocTreePath;

    .line 5
    iput-object p2, p0, Lorg/openjdk/source/util/DocTreePath;->leaf:Lorg/openjdk/source/doctree/DocTree;

    return-void
.end method

.method public static synthetic access$000(Lorg/openjdk/source/util/DocTreePath;)Lorg/openjdk/source/doctree/DocTree;
    .locals 0

    iget-object p0, p0, Lorg/openjdk/source/util/DocTreePath;->leaf:Lorg/openjdk/source/doctree/DocTree;

    return-object p0
.end method

.method public static synthetic access$100(Lorg/openjdk/source/util/DocTreePath;)Lorg/openjdk/source/util/DocTreePath;
    .locals 0

    iget-object p0, p0, Lorg/openjdk/source/util/DocTreePath;->parent:Lorg/openjdk/source/util/DocTreePath;

    return-object p0
.end method

.method public static getPath(Lorg/openjdk/source/util/DocTreePath;Lorg/openjdk/source/doctree/DocTree;)Lorg/openjdk/source/util/DocTreePath;
    .locals 1

    .line 2
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    invoke-virtual {p0}, Lorg/openjdk/source/util/DocTreePath;->getLeaf()Lorg/openjdk/source/doctree/DocTree;

    move-result-object v0

    if-ne v0, p1, :cond_0

    return-object p0

    .line 5
    :cond_0
    :try_start_0
    new-instance v0, Lorg/openjdk/source/util/DocTreePath$1PathFinder;

    invoke-direct {v0}, Lorg/openjdk/source/util/DocTreePath$1PathFinder;-><init>()V

    invoke-virtual {v0, p0, p1}, Lorg/openjdk/source/util/DocTreePathScanner;->scan(Lorg/openjdk/source/util/DocTreePath;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Lorg/openjdk/source/util/DocTreePath$1Result; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x0

    return-object p0

    :catch_0
    move-exception p0

    .line 6
    iget-object p0, p0, Lorg/openjdk/source/util/DocTreePath$1Result;->path:Lorg/openjdk/source/util/DocTreePath;

    return-object p0
.end method

.method public static getPath(Lorg/openjdk/source/util/TreePath;Lorg/openjdk/source/doctree/DocCommentTree;Lorg/openjdk/source/doctree/DocTree;)Lorg/openjdk/source/util/DocTreePath;
    .locals 1

    .line 1
    new-instance v0, Lorg/openjdk/source/util/DocTreePath;

    invoke-direct {v0, p0, p1}, Lorg/openjdk/source/util/DocTreePath;-><init>(Lorg/openjdk/source/util/TreePath;Lorg/openjdk/source/doctree/DocCommentTree;)V

    invoke-static {v0, p2}, Lorg/openjdk/source/util/DocTreePath;->getPath(Lorg/openjdk/source/util/DocTreePath;Lorg/openjdk/source/doctree/DocTree;)Lorg/openjdk/source/util/DocTreePath;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public getDocComment()Lorg/openjdk/source/doctree/DocCommentTree;
    .locals 1

    iget-object v0, p0, Lorg/openjdk/source/util/DocTreePath;->docComment:Lorg/openjdk/source/doctree/DocCommentTree;

    return-object v0
.end method

.method public getLeaf()Lorg/openjdk/source/doctree/DocTree;
    .locals 1

    iget-object v0, p0, Lorg/openjdk/source/util/DocTreePath;->leaf:Lorg/openjdk/source/doctree/DocTree;

    return-object v0
.end method

.method public getParentPath()Lorg/openjdk/source/util/DocTreePath;
    .locals 1

    iget-object v0, p0, Lorg/openjdk/source/util/DocTreePath;->parent:Lorg/openjdk/source/util/DocTreePath;

    return-object v0
.end method

.method public getTreePath()Lorg/openjdk/source/util/TreePath;
    .locals 1

    iget-object v0, p0, Lorg/openjdk/source/util/DocTreePath;->treePath:Lorg/openjdk/source/util/TreePath;

    return-object v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lorg/openjdk/source/doctree/DocTree;",
            ">;"
        }
    .end annotation

    new-instance v0, Lorg/openjdk/source/util/DocTreePath$1;

    invoke-direct {v0, p0}, Lorg/openjdk/source/util/DocTreePath$1;-><init>(Lorg/openjdk/source/util/DocTreePath;)V

    return-object v0
.end method
