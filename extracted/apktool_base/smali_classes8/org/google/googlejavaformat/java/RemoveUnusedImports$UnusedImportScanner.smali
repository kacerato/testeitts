.class Lorg/google/googlejavaformat/java/RemoveUnusedImports$UnusedImportScanner;
.super Lorg/openjdk/source/util/TreePathScanner;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/google/googlejavaformat/java/RemoveUnusedImports;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "UnusedImportScanner"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/google/googlejavaformat/java/RemoveUnusedImports$UnusedImportScanner$DocTreeScanner;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/openjdk/source/util/TreePathScanner<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final docTreeSymbolScanner:Lorg/google/googlejavaformat/java/RemoveUnusedImports$UnusedImportScanner$DocTreeScanner;

.field final trees:Lorg/openjdk/tools/javac/api/JavacTrees;

.field private final usedInJavadoc:Lcom/google/common/collect/S1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/S1<",
            "Ljava/lang/String;",
            "Lcom/google/common/collect/j2<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field private final usedNames:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lorg/openjdk/tools/javac/api/JavacTrees;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "trees"
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Lorg/openjdk/source/util/TreePathScanner;-><init>()V

    .line 3
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Lorg/google/googlejavaformat/java/RemoveUnusedImports$UnusedImportScanner;->usedNames:Ljava/util/Set;

    .line 4
    invoke-static {}, Lcom/google/common/collect/V0;->M()Lcom/google/common/collect/V0;

    move-result-object v0

    iput-object v0, p0, Lorg/google/googlejavaformat/java/RemoveUnusedImports$UnusedImportScanner;->usedInJavadoc:Lcom/google/common/collect/S1;

    .line 5
    iput-object p1, p0, Lorg/google/googlejavaformat/java/RemoveUnusedImports$UnusedImportScanner;->trees:Lorg/openjdk/tools/javac/api/JavacTrees;

    .line 6
    new-instance p1, Lorg/google/googlejavaformat/java/RemoveUnusedImports$UnusedImportScanner$DocTreeScanner;

    invoke-direct {p1, p0}, Lorg/google/googlejavaformat/java/RemoveUnusedImports$UnusedImportScanner$DocTreeScanner;-><init>(Lorg/google/googlejavaformat/java/RemoveUnusedImports$UnusedImportScanner;)V

    iput-object p1, p0, Lorg/google/googlejavaformat/java/RemoveUnusedImports$UnusedImportScanner;->docTreeSymbolScanner:Lorg/google/googlejavaformat/java/RemoveUnusedImports$UnusedImportScanner$DocTreeScanner;

    return-void
.end method

.method public synthetic constructor <init>(Lorg/openjdk/tools/javac/api/JavacTrees;Lorg/google/googlejavaformat/java/RemoveUnusedImports$1;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lorg/google/googlejavaformat/java/RemoveUnusedImports$UnusedImportScanner;-><init>(Lorg/openjdk/tools/javac/api/JavacTrees;)V

    return-void
.end method

.method public static synthetic access$000(Lorg/google/googlejavaformat/java/RemoveUnusedImports$UnusedImportScanner;)Lcom/google/common/collect/S1;
    .locals 0

    iget-object p0, p0, Lorg/google/googlejavaformat/java/RemoveUnusedImports$UnusedImportScanner;->usedInJavadoc:Lcom/google/common/collect/S1;

    return-object p0
.end method

.method public static synthetic access$200(Lorg/google/googlejavaformat/java/RemoveUnusedImports$UnusedImportScanner;)Ljava/util/Set;
    .locals 0

    iget-object p0, p0, Lorg/google/googlejavaformat/java/RemoveUnusedImports$UnusedImportScanner;->usedNames:Ljava/util/Set;

    return-object p0
.end method

.method private scanJavadoc()V
    .locals 4

    invoke-virtual {p0}, Lorg/openjdk/source/util/TreePathScanner;->getCurrentPath()Lorg/openjdk/source/util/TreePath;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lorg/google/googlejavaformat/java/RemoveUnusedImports$UnusedImportScanner;->trees:Lorg/openjdk/tools/javac/api/JavacTrees;

    invoke-virtual {p0}, Lorg/openjdk/source/util/TreePathScanner;->getCurrentPath()Lorg/openjdk/source/util/TreePath;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/openjdk/tools/javac/api/JavacTrees;->getDocCommentTree(Lorg/openjdk/source/util/TreePath;)Lorg/openjdk/source/doctree/DocCommentTree;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    iget-object v1, p0, Lorg/google/googlejavaformat/java/RemoveUnusedImports$UnusedImportScanner;->docTreeSymbolScanner:Lorg/google/googlejavaformat/java/RemoveUnusedImports$UnusedImportScanner$DocTreeScanner;

    new-instance v2, Lorg/openjdk/source/util/DocTreePath;

    invoke-virtual {p0}, Lorg/openjdk/source/util/TreePathScanner;->getCurrentPath()Lorg/openjdk/source/util/TreePath;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Lorg/openjdk/source/util/DocTreePath;-><init>(Lorg/openjdk/source/util/TreePath;Lorg/openjdk/source/doctree/DocCommentTree;)V

    const/4 v0, 0x0

    invoke-virtual {v1, v2, v0}, Lorg/openjdk/source/util/DocTreePathScanner;->scan(Lorg/openjdk/source/util/DocTreePath;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public bridge synthetic scan(Lorg/openjdk/source/tree/Tree;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            "tree",
            "unused"
        }
    .end annotation

    .line 1
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lorg/google/googlejavaformat/java/RemoveUnusedImports$UnusedImportScanner;->scan(Lorg/openjdk/source/tree/Tree;Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public scan(Lorg/openjdk/source/tree/Tree;Ljava/lang/Void;)Ljava/lang/Void;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "tree",
            "unused"
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 2
    :cond_0
    invoke-direct {p0}, Lorg/google/googlejavaformat/java/RemoveUnusedImports$UnusedImportScanner;->scanJavadoc()V

    .line 3
    invoke-super {p0, p1, p2}, Lorg/openjdk/source/util/TreePathScanner;->scan(Lorg/openjdk/source/tree/Tree;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Void;

    return-object p1
.end method

.method public bridge synthetic visitIdentifier(Lorg/openjdk/source/tree/IdentifierTree;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            "tree",
            "unused"
        }
    .end annotation

    .line 1
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lorg/google/googlejavaformat/java/RemoveUnusedImports$UnusedImportScanner;->visitIdentifier(Lorg/openjdk/source/tree/IdentifierTree;Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public visitIdentifier(Lorg/openjdk/source/tree/IdentifierTree;Ljava/lang/Void;)Ljava/lang/Void;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "tree",
            "unused"
        }
    .end annotation

    const/4 p2, 0x0

    if-nez p1, :cond_0

    return-object p2

    .line 2
    :cond_0
    iget-object v0, p0, Lorg/google/googlejavaformat/java/RemoveUnusedImports$UnusedImportScanner;->usedNames:Ljava/util/Set;

    invoke-interface {p1}, Lorg/openjdk/source/tree/IdentifierTree;->getName()Lorg/openjdk/javax/lang/model/element/Name;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-object p2
.end method

.method public bridge synthetic visitImport(Lorg/openjdk/source/tree/ImportTree;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            "importTree",
            "usedSymbols"
        }
    .end annotation

    .line 2
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lorg/google/googlejavaformat/java/RemoveUnusedImports$UnusedImportScanner;->visitImport(Lorg/openjdk/source/tree/ImportTree;Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public visitImport(Lorg/openjdk/source/tree/ImportTree;Ljava/lang/Void;)Ljava/lang/Void;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "importTree",
            "usedSymbols"
        }
    .end annotation

    .line 1
    const/4 p1, 0x0

    return-object p1
.end method
