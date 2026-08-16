.class public Lorg/openjdk/source/util/TreePath;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Iterable<",
        "Lorg/openjdk/source/tree/Tree;",
        ">;"
    }
.end annotation


# instance fields
.field private compilationUnit:Lorg/openjdk/source/tree/CompilationUnitTree;

.field private leaf:Lorg/openjdk/source/tree/Tree;

.field private parent:Lorg/openjdk/source/util/TreePath;


# direct methods
.method public constructor <init>(Lorg/openjdk/source/tree/CompilationUnitTree;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0, p1}, Lorg/openjdk/source/util/TreePath;-><init>(Lorg/openjdk/source/util/TreePath;Lorg/openjdk/source/tree/Tree;)V

    return-void
.end method

.method public constructor <init>(Lorg/openjdk/source/util/TreePath;Lorg/openjdk/source/tree/Tree;)V
    .locals 2

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    invoke-interface {p2}, Lorg/openjdk/source/tree/Tree;->getKind()Lorg/openjdk/source/tree/Tree$Kind;

    move-result-object v0

    sget-object v1, Lorg/openjdk/source/tree/Tree$Kind;->COMPILATION_UNIT:Lorg/openjdk/source/tree/Tree$Kind;

    if-ne v0, v1, :cond_0

    .line 4
    move-object p1, p2

    check-cast p1, Lorg/openjdk/source/tree/CompilationUnitTree;

    iput-object p1, p0, Lorg/openjdk/source/util/TreePath;->compilationUnit:Lorg/openjdk/source/tree/CompilationUnitTree;

    const/4 p1, 0x0

    .line 5
    iput-object p1, p0, Lorg/openjdk/source/util/TreePath;->parent:Lorg/openjdk/source/util/TreePath;

    goto :goto_0

    .line 6
    :cond_0
    iget-object v0, p1, Lorg/openjdk/source/util/TreePath;->compilationUnit:Lorg/openjdk/source/tree/CompilationUnitTree;

    iput-object v0, p0, Lorg/openjdk/source/util/TreePath;->compilationUnit:Lorg/openjdk/source/tree/CompilationUnitTree;

    .line 7
    iput-object p1, p0, Lorg/openjdk/source/util/TreePath;->parent:Lorg/openjdk/source/util/TreePath;

    .line 8
    :goto_0
    iput-object p2, p0, Lorg/openjdk/source/util/TreePath;->leaf:Lorg/openjdk/source/tree/Tree;

    return-void
.end method

.method public static synthetic access$000(Lorg/openjdk/source/util/TreePath;)Lorg/openjdk/source/tree/Tree;
    .locals 0

    iget-object p0, p0, Lorg/openjdk/source/util/TreePath;->leaf:Lorg/openjdk/source/tree/Tree;

    return-object p0
.end method

.method public static synthetic access$100(Lorg/openjdk/source/util/TreePath;)Lorg/openjdk/source/util/TreePath;
    .locals 0

    iget-object p0, p0, Lorg/openjdk/source/util/TreePath;->parent:Lorg/openjdk/source/util/TreePath;

    return-object p0
.end method

.method public static getPath(Lorg/openjdk/source/tree/CompilationUnitTree;Lorg/openjdk/source/tree/Tree;)Lorg/openjdk/source/util/TreePath;
    .locals 1

    .line 1
    new-instance v0, Lorg/openjdk/source/util/TreePath;

    invoke-direct {v0, p0}, Lorg/openjdk/source/util/TreePath;-><init>(Lorg/openjdk/source/tree/CompilationUnitTree;)V

    invoke-static {v0, p1}, Lorg/openjdk/source/util/TreePath;->getPath(Lorg/openjdk/source/util/TreePath;Lorg/openjdk/source/tree/Tree;)Lorg/openjdk/source/util/TreePath;

    move-result-object p0

    return-object p0
.end method

.method public static getPath(Lorg/openjdk/source/util/TreePath;Lorg/openjdk/source/tree/Tree;)Lorg/openjdk/source/util/TreePath;
    .locals 1

    .line 2
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    invoke-virtual {p0}, Lorg/openjdk/source/util/TreePath;->getLeaf()Lorg/openjdk/source/tree/Tree;

    move-result-object v0

    if-ne v0, p1, :cond_0

    return-object p0

    .line 5
    :cond_0
    :try_start_0
    new-instance v0, Lorg/openjdk/source/util/TreePath$1PathFinder;

    invoke-direct {v0}, Lorg/openjdk/source/util/TreePath$1PathFinder;-><init>()V

    invoke-virtual {v0, p0, p1}, Lorg/openjdk/source/util/TreePathScanner;->scan(Lorg/openjdk/source/util/TreePath;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Lorg/openjdk/source/util/TreePath$1Result; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x0

    return-object p0

    :catch_0
    move-exception p0

    .line 6
    iget-object p0, p0, Lorg/openjdk/source/util/TreePath$1Result;->path:Lorg/openjdk/source/util/TreePath;

    return-object p0
.end method


# virtual methods
.method public getCompilationUnit()Lorg/openjdk/source/tree/CompilationUnitTree;
    .locals 1

    iget-object v0, p0, Lorg/openjdk/source/util/TreePath;->compilationUnit:Lorg/openjdk/source/tree/CompilationUnitTree;

    return-object v0
.end method

.method public getLeaf()Lorg/openjdk/source/tree/Tree;
    .locals 1

    iget-object v0, p0, Lorg/openjdk/source/util/TreePath;->leaf:Lorg/openjdk/source/tree/Tree;

    return-object v0
.end method

.method public getParentPath()Lorg/openjdk/source/util/TreePath;
    .locals 1

    iget-object v0, p0, Lorg/openjdk/source/util/TreePath;->parent:Lorg/openjdk/source/util/TreePath;

    return-object v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lorg/openjdk/source/tree/Tree;",
            ">;"
        }
    .end annotation

    new-instance v0, Lorg/openjdk/source/util/TreePath$1;

    invoke-direct {v0, p0}, Lorg/openjdk/source/util/TreePath$1;-><init>(Lorg/openjdk/source/util/TreePath;)V

    return-object v0
.end method
