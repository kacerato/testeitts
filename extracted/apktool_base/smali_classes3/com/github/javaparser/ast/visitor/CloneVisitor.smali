.class public Lcom/github/javaparser/ast/visitor/CloneVisitor;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/github/javaparser/ast/visitor/GenericVisitor;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/github/javaparser/ast/visitor/GenericVisitor<",
        "Lcom/github/javaparser/ast/visitor/Visitable;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/github/javaparser/ast/CompilationUnit;Lcom/github/javaparser/ast/CompilationUnit$Storage;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/github/javaparser/ast/visitor/CloneVisitor;->lambda$visit$0(Lcom/github/javaparser/ast/CompilationUnit;Lcom/github/javaparser/ast/CompilationUnit$Storage;)V

    return-void
.end method

.method private cloneList(Lcom/github/javaparser/ast/NodeList;Ljava/lang/Object;)Lcom/github/javaparser/ast/NodeList;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "list",
            "arg"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<N:",
            "Lcom/github/javaparser/ast/Node;",
            ">(",
            "Lcom/github/javaparser/ast/NodeList<",
            "TN;>;",
            "Ljava/lang/Object;",
            ")",
            "Lcom/github/javaparser/ast/NodeList<",
            "TN;>;"
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    invoke-virtual {p1, p0, p2}, Lcom/github/javaparser/ast/NodeList;->accept(Lcom/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/github/javaparser/ast/NodeList;

    return-object p1
.end method

.method private copyData(Lcom/github/javaparser/ast/Node;Lcom/github/javaparser/ast/Node;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "source",
            "destination"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getDataKeys()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/github/javaparser/ast/DataKey;

    invoke-virtual {p1, v1}, Lcom/github/javaparser/ast/Node;->getData(Lcom/github/javaparser/ast/DataKey;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p2, v1, v2}, Lcom/github/javaparser/ast/Node;->setData(Lcom/github/javaparser/ast/DataKey;Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private static synthetic lambda$visit$0(Lcom/github/javaparser/ast/CompilationUnit;Lcom/github/javaparser/ast/CompilationUnit$Storage;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1000
        }
        names = {
            "r",
            "s"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/github/javaparser/ast/CompilationUnit$Storage;->getPath()Ljava/nio/file/Path;

    move-result-object v0

    invoke-virtual {p1}, Lcom/github/javaparser/ast/CompilationUnit$Storage;->getEncoding()Ljava/nio/charset/Charset;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/github/javaparser/ast/CompilationUnit;->setStorage(Ljava/nio/file/Path;Ljava/nio/charset/Charset;)Lcom/github/javaparser/ast/CompilationUnit;

    return-void
.end method


# virtual methods
.method public cloneNode(Lcom/github/javaparser/ast/Node;Ljava/lang/Object;)Lcom/github/javaparser/ast/Node;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "node",
            "arg"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/github/javaparser/ast/Node;",
            ">(TT;",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 3
    :cond_0
    invoke-interface {p1, p0, p2}, Lcom/github/javaparser/ast/visitor/Visitable;->accept(Lcom/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/github/javaparser/ast/Node;

    if-nez p1, :cond_1

    return-object v0

    :cond_1
    return-object p1
.end method

.method public cloneNode(Ljava/util/Optional;Ljava/lang/Object;)Lcom/github/javaparser/ast/Node;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "node",
            "arg"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/github/javaparser/ast/Node;",
            ">(",
            "Ljava/util/Optional<",
            "TT;>;",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Ljava/util/Optional;->isPresent()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 2
    :cond_0
    invoke-virtual {p1}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/github/javaparser/ast/Node;

    invoke-interface {p1, p0, p2}, Lcom/github/javaparser/ast/visitor/Visitable;->accept(Lcom/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/github/javaparser/ast/Node;

    if-nez p1, :cond_1

    return-object v1

    :cond_1
    return-object p1
.end method

.method public visit(Lcom/github/javaparser/ast/ImportDeclaration;Ljava/lang/Object;)Lcom/github/javaparser/ast/Node;
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 714
    invoke-virtual {p1}, Lcom/github/javaparser/ast/ImportDeclaration;->getName()Lcom/github/javaparser/ast/expr/Name;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/github/javaparser/ast/visitor/CloneVisitor;->cloneNode(Lcom/github/javaparser/ast/Node;Ljava/lang/Object;)Lcom/github/javaparser/ast/Node;

    move-result-object v0

    check-cast v0, Lcom/github/javaparser/ast/expr/Name;

    .line 715
    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getComment()Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {p0, v1, p2}, Lcom/github/javaparser/ast/visitor/CloneVisitor;->cloneNode(Ljava/util/Optional;Ljava/lang/Object;)Lcom/github/javaparser/ast/Node;

    move-result-object p2

    check-cast p2, Lcom/github/javaparser/ast/comments/Comment;

    .line 716
    new-instance v1, Lcom/github/javaparser/ast/ImportDeclaration;

    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getTokenRange()Ljava/util/Optional;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/github/javaparser/TokenRange;

    invoke-virtual {p1}, Lcom/github/javaparser/ast/ImportDeclaration;->isStatic()Z

    move-result v3

    invoke-virtual {p1}, Lcom/github/javaparser/ast/ImportDeclaration;->isAsterisk()Z

    move-result v4

    invoke-direct {v1, v2, v0, v3, v4}, Lcom/github/javaparser/ast/ImportDeclaration;-><init>(Lcom/github/javaparser/TokenRange;Lcom/github/javaparser/ast/expr/Name;ZZ)V

    .line 717
    invoke-virtual {v1, p2}, Lcom/github/javaparser/ast/Node;->setComment(Lcom/github/javaparser/ast/comments/Comment;)Lcom/github/javaparser/ast/Node;

    .line 718
    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getOrphanComments()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object p2

    new-instance v0, Lc0/a;

    invoke-direct {v0}, Lc0/a;-><init>()V

    invoke-interface {p2, v0}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p2

    new-instance v0, Lc0/P0;

    invoke-direct {v0, v1}, Lc0/P0;-><init>(Lcom/github/javaparser/ast/ImportDeclaration;)V

    invoke-interface {p2, v0}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    .line 719
    invoke-direct {p0, p1, v1}, Lcom/github/javaparser/ast/visitor/CloneVisitor;->copyData(Lcom/github/javaparser/ast/Node;Lcom/github/javaparser/ast/Node;)V

    return-object v1
.end method

.method public visit(Lcom/github/javaparser/ast/ArrayCreationLevel;Ljava/lang/Object;)Lcom/github/javaparser/ast/visitor/Visitable;
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 287
    invoke-virtual {p1}, Lcom/github/javaparser/ast/ArrayCreationLevel;->getAnnotations()Lcom/github/javaparser/ast/NodeList;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lcom/github/javaparser/ast/visitor/CloneVisitor;->cloneList(Lcom/github/javaparser/ast/NodeList;Ljava/lang/Object;)Lcom/github/javaparser/ast/NodeList;

    move-result-object v0

    .line 288
    invoke-virtual {p1}, Lcom/github/javaparser/ast/ArrayCreationLevel;->getDimension()Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {p0, v1, p2}, Lcom/github/javaparser/ast/visitor/CloneVisitor;->cloneNode(Ljava/util/Optional;Ljava/lang/Object;)Lcom/github/javaparser/ast/Node;

    move-result-object v1

    check-cast v1, Lcom/github/javaparser/ast/expr/Expression;

    .line 289
    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getComment()Ljava/util/Optional;

    move-result-object v2

    invoke-virtual {p0, v2, p2}, Lcom/github/javaparser/ast/visitor/CloneVisitor;->cloneNode(Ljava/util/Optional;Ljava/lang/Object;)Lcom/github/javaparser/ast/Node;

    move-result-object p2

    check-cast p2, Lcom/github/javaparser/ast/comments/Comment;

    .line 290
    new-instance v2, Lcom/github/javaparser/ast/ArrayCreationLevel;

    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getTokenRange()Ljava/util/Optional;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/github/javaparser/TokenRange;

    invoke-direct {v2, v3, v1, v0}, Lcom/github/javaparser/ast/ArrayCreationLevel;-><init>(Lcom/github/javaparser/TokenRange;Lcom/github/javaparser/ast/expr/Expression;Lcom/github/javaparser/ast/NodeList;)V

    .line 291
    invoke-virtual {v2, p2}, Lcom/github/javaparser/ast/Node;->setComment(Lcom/github/javaparser/ast/comments/Comment;)Lcom/github/javaparser/ast/Node;

    .line 292
    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getOrphanComments()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object p2

    new-instance v0, Lc0/a;

    invoke-direct {v0}, Lc0/a;-><init>()V

    invoke-interface {p2, v0}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p2

    new-instance v0, Lc0/Y;

    invoke-direct {v0, v2}, Lc0/Y;-><init>(Lcom/github/javaparser/ast/ArrayCreationLevel;)V

    invoke-interface {p2, v0}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    .line 293
    invoke-direct {p0, p1, v2}, Lcom/github/javaparser/ast/visitor/CloneVisitor;->copyData(Lcom/github/javaparser/ast/Node;Lcom/github/javaparser/ast/Node;)V

    return-object v2
.end method

.method public visit(Lcom/github/javaparser/ast/CompilationUnit;Ljava/lang/Object;)Lcom/github/javaparser/ast/visitor/Visitable;
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 102
    invoke-virtual {p1}, Lcom/github/javaparser/ast/CompilationUnit;->getImports()Lcom/github/javaparser/ast/NodeList;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lcom/github/javaparser/ast/visitor/CloneVisitor;->cloneList(Lcom/github/javaparser/ast/NodeList;Ljava/lang/Object;)Lcom/github/javaparser/ast/NodeList;

    move-result-object v4

    .line 103
    invoke-virtual {p1}, Lcom/github/javaparser/ast/CompilationUnit;->getModule()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/github/javaparser/ast/visitor/CloneVisitor;->cloneNode(Ljava/util/Optional;Ljava/lang/Object;)Lcom/github/javaparser/ast/Node;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lcom/github/javaparser/ast/modules/ModuleDeclaration;

    .line 104
    invoke-virtual {p1}, Lcom/github/javaparser/ast/CompilationUnit;->getPackageDeclaration()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/github/javaparser/ast/visitor/CloneVisitor;->cloneNode(Ljava/util/Optional;Ljava/lang/Object;)Lcom/github/javaparser/ast/Node;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lcom/github/javaparser/ast/PackageDeclaration;

    .line 105
    invoke-virtual {p1}, Lcom/github/javaparser/ast/CompilationUnit;->getTypes()Lcom/github/javaparser/ast/NodeList;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lcom/github/javaparser/ast/visitor/CloneVisitor;->cloneList(Lcom/github/javaparser/ast/NodeList;Ljava/lang/Object;)Lcom/github/javaparser/ast/NodeList;

    move-result-object v5

    .line 106
    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getComment()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/github/javaparser/ast/visitor/CloneVisitor;->cloneNode(Ljava/util/Optional;Ljava/lang/Object;)Lcom/github/javaparser/ast/Node;

    move-result-object p2

    check-cast p2, Lcom/github/javaparser/ast/comments/Comment;

    .line 107
    new-instance v0, Lcom/github/javaparser/ast/CompilationUnit;

    .line 108
    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getTokenRange()Ljava/util/Optional;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/github/javaparser/TokenRange;

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/github/javaparser/ast/CompilationUnit;-><init>(Lcom/github/javaparser/TokenRange;Lcom/github/javaparser/ast/PackageDeclaration;Lcom/github/javaparser/ast/NodeList;Lcom/github/javaparser/ast/NodeList;Lcom/github/javaparser/ast/modules/ModuleDeclaration;)V

    .line 109
    invoke-virtual {p1}, Lcom/github/javaparser/ast/CompilationUnit;->getStorage()Ljava/util/Optional;

    move-result-object v1

    new-instance v2, Lc0/F0;

    invoke-direct {v2, v0}, Lc0/F0;-><init>(Lcom/github/javaparser/ast/CompilationUnit;)V

    invoke-virtual {v1, v2}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 110
    invoke-virtual {v0, p2}, Lcom/github/javaparser/ast/Node;->setComment(Lcom/github/javaparser/ast/comments/Comment;)Lcom/github/javaparser/ast/Node;

    .line 111
    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getOrphanComments()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object p2

    new-instance v1, Lc0/a;

    invoke-direct {v1}, Lc0/a;-><init>()V

    invoke-interface {p2, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p2

    new-instance v1, Lc0/G0;

    invoke-direct {v1, v0}, Lc0/G0;-><init>(Lcom/github/javaparser/ast/CompilationUnit;)V

    invoke-interface {p2, v1}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    .line 112
    invoke-direct {p0, p1, v0}, Lcom/github/javaparser/ast/visitor/CloneVisitor;->copyData(Lcom/github/javaparser/ast/Node;Lcom/github/javaparser/ast/Node;)V

    return-object v0
.end method

.method public visit(Lcom/github/javaparser/ast/Modifier;Ljava/lang/Object;)Lcom/github/javaparser/ast/visitor/Visitable;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 784
    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getComment()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/github/javaparser/ast/visitor/CloneVisitor;->cloneNode(Ljava/util/Optional;Ljava/lang/Object;)Lcom/github/javaparser/ast/Node;

    move-result-object p2

    check-cast p2, Lcom/github/javaparser/ast/comments/Comment;

    .line 785
    new-instance v0, Lcom/github/javaparser/ast/Modifier;

    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getTokenRange()Ljava/util/Optional;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/github/javaparser/TokenRange;

    invoke-virtual {p1}, Lcom/github/javaparser/ast/Modifier;->getKeyword()Lcom/github/javaparser/ast/Modifier$Keyword;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/github/javaparser/ast/Modifier;-><init>(Lcom/github/javaparser/TokenRange;Lcom/github/javaparser/ast/Modifier$Keyword;)V

    .line 786
    invoke-virtual {v0, p2}, Lcom/github/javaparser/ast/Node;->setComment(Lcom/github/javaparser/ast/comments/Comment;)Lcom/github/javaparser/ast/Node;

    .line 787
    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getOrphanComments()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object p2

    new-instance v1, Lc0/a;

    invoke-direct {v1}, Lc0/a;-><init>()V

    invoke-interface {p2, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p2

    new-instance v1, Lc0/c;

    invoke-direct {v1, v0}, Lc0/c;-><init>(Lcom/github/javaparser/ast/Modifier;)V

    invoke-interface {p2, v1}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    .line 788
    invoke-direct {p0, p1, v0}, Lcom/github/javaparser/ast/visitor/CloneVisitor;->copyData(Lcom/github/javaparser/ast/Node;Lcom/github/javaparser/ast/Node;)V

    return-object v0
.end method

.method public visit(Lcom/github/javaparser/ast/NodeList;Ljava/lang/Object;)Lcom/github/javaparser/ast/visitor/Visitable;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 710
    new-instance v0, Lcom/github/javaparser/ast/NodeList;

    invoke-direct {v0}, Lcom/github/javaparser/ast/NodeList;-><init>()V

    .line 711
    invoke-virtual {p1}, Lcom/github/javaparser/ast/NodeList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 712
    check-cast v1, Lcom/github/javaparser/ast/Node;

    invoke-interface {v1, p0, p2}, Lcom/github/javaparser/ast/visitor/Visitable;->accept(Lcom/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/github/javaparser/ast/Node;

    if-eqz v1, :cond_0

    .line 713
    invoke-virtual {v0, v1}, Lcom/github/javaparser/ast/NodeList;->add(Lcom/github/javaparser/ast/Node;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public visit(Lcom/github/javaparser/ast/PackageDeclaration;Ljava/lang/Object;)Lcom/github/javaparser/ast/visitor/Visitable;
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 113
    invoke-virtual {p1}, Lcom/github/javaparser/ast/PackageDeclaration;->getAnnotations()Lcom/github/javaparser/ast/NodeList;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lcom/github/javaparser/ast/visitor/CloneVisitor;->cloneList(Lcom/github/javaparser/ast/NodeList;Ljava/lang/Object;)Lcom/github/javaparser/ast/NodeList;

    move-result-object v0

    .line 114
    invoke-virtual {p1}, Lcom/github/javaparser/ast/PackageDeclaration;->getName()Lcom/github/javaparser/ast/expr/Name;

    move-result-object v1

    invoke-virtual {p0, v1, p2}, Lcom/github/javaparser/ast/visitor/CloneVisitor;->cloneNode(Lcom/github/javaparser/ast/Node;Ljava/lang/Object;)Lcom/github/javaparser/ast/Node;

    move-result-object v1

    check-cast v1, Lcom/github/javaparser/ast/expr/Name;

    .line 115
    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getComment()Ljava/util/Optional;

    move-result-object v2

    invoke-virtual {p0, v2, p2}, Lcom/github/javaparser/ast/visitor/CloneVisitor;->cloneNode(Ljava/util/Optional;Ljava/lang/Object;)Lcom/github/javaparser/ast/Node;

    move-result-object p2

    check-cast p2, Lcom/github/javaparser/ast/comments/Comment;

    .line 116
    new-instance v2, Lcom/github/javaparser/ast/PackageDeclaration;

    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getTokenRange()Ljava/util/Optional;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/github/javaparser/TokenRange;

    invoke-direct {v2, v3, v0, v1}, Lcom/github/javaparser/ast/PackageDeclaration;-><init>(Lcom/github/javaparser/TokenRange;Lcom/github/javaparser/ast/NodeList;Lcom/github/javaparser/ast/expr/Name;)V

    .line 117
    invoke-virtual {v2, p2}, Lcom/github/javaparser/ast/Node;->setComment(Lcom/github/javaparser/ast/comments/Comment;)Lcom/github/javaparser/ast/Node;

    .line 118
    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getOrphanComments()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object p2

    new-instance v0, Lc0/a;

    invoke-direct {v0}, Lc0/a;-><init>()V

    invoke-interface {p2, v0}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p2

    new-instance v0, Lc0/A0;

    invoke-direct {v0, v2}, Lc0/A0;-><init>(Lcom/github/javaparser/ast/PackageDeclaration;)V

    invoke-interface {p2, v0}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    .line 119
    invoke-direct {p0, p1, v2}, Lcom/github/javaparser/ast/visitor/CloneVisitor;->copyData(Lcom/github/javaparser/ast/Node;Lcom/github/javaparser/ast/Node;)V

    return-object v2
.end method

.method public visit(Lcom/github/javaparser/ast/body/AnnotationDeclaration;Ljava/lang/Object;)Lcom/github/javaparser/ast/visitor/Visitable;
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 175
    invoke-virtual {p1}, Lcom/github/javaparser/ast/body/TypeDeclaration;->getMembers()Lcom/github/javaparser/ast/NodeList;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lcom/github/javaparser/ast/visitor/CloneVisitor;->cloneList(Lcom/github/javaparser/ast/NodeList;Ljava/lang/Object;)Lcom/github/javaparser/ast/NodeList;

    move-result-object v6

    .line 176
    invoke-virtual {p1}, Lcom/github/javaparser/ast/body/TypeDeclaration;->getModifiers()Lcom/github/javaparser/ast/NodeList;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lcom/github/javaparser/ast/visitor/CloneVisitor;->cloneList(Lcom/github/javaparser/ast/NodeList;Ljava/lang/Object;)Lcom/github/javaparser/ast/NodeList;

    move-result-object v3

    .line 177
    invoke-virtual {p1}, Lcom/github/javaparser/ast/body/TypeDeclaration;->getName()Lcom/github/javaparser/ast/expr/SimpleName;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/github/javaparser/ast/visitor/CloneVisitor;->cloneNode(Lcom/github/javaparser/ast/Node;Ljava/lang/Object;)Lcom/github/javaparser/ast/Node;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Lcom/github/javaparser/ast/expr/SimpleName;

    .line 178
    invoke-virtual {p1}, Lcom/github/javaparser/ast/body/BodyDeclaration;->getAnnotations()Lcom/github/javaparser/ast/NodeList;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lcom/github/javaparser/ast/visitor/CloneVisitor;->cloneList(Lcom/github/javaparser/ast/NodeList;Ljava/lang/Object;)Lcom/github/javaparser/ast/NodeList;

    move-result-object v4

    .line 179
    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getComment()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/github/javaparser/ast/visitor/CloneVisitor;->cloneNode(Ljava/util/Optional;Ljava/lang/Object;)Lcom/github/javaparser/ast/Node;

    move-result-object p2

    check-cast p2, Lcom/github/javaparser/ast/comments/Comment;

    .line 180
    new-instance v0, Lcom/github/javaparser/ast/body/AnnotationDeclaration;

    .line 181
    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getTokenRange()Ljava/util/Optional;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/github/javaparser/TokenRange;

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/github/javaparser/ast/body/AnnotationDeclaration;-><init>(Lcom/github/javaparser/TokenRange;Lcom/github/javaparser/ast/NodeList;Lcom/github/javaparser/ast/NodeList;Lcom/github/javaparser/ast/expr/SimpleName;Lcom/github/javaparser/ast/NodeList;)V

    .line 182
    invoke-virtual {v0, p2}, Lcom/github/javaparser/ast/Node;->setComment(Lcom/github/javaparser/ast/comments/Comment;)Lcom/github/javaparser/ast/Node;

    .line 183
    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getOrphanComments()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object p2

    new-instance v1, Lc0/a;

    invoke-direct {v1}, Lc0/a;-><init>()V

    invoke-interface {p2, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p2

    new-instance v1, Lc0/V0;

    invoke-direct {v1, v0}, Lc0/V0;-><init>(Lcom/github/javaparser/ast/body/AnnotationDeclaration;)V

    invoke-interface {p2, v1}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    .line 184
    invoke-direct {p0, p1, v0}, Lcom/github/javaparser/ast/visitor/CloneVisitor;->copyData(Lcom/github/javaparser/ast/Node;Lcom/github/javaparser/ast/Node;)V

    return-object v0
.end method

.method public visit(Lcom/github/javaparser/ast/body/AnnotationMemberDeclaration;Ljava/lang/Object;)Lcom/github/javaparser/ast/visitor/Visitable;
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 185
    invoke-virtual {p1}, Lcom/github/javaparser/ast/body/AnnotationMemberDeclaration;->getDefaultValue()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/github/javaparser/ast/visitor/CloneVisitor;->cloneNode(Ljava/util/Optional;Ljava/lang/Object;)Lcom/github/javaparser/ast/Node;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Lcom/github/javaparser/ast/expr/Expression;

    .line 186
    invoke-virtual {p1}, Lcom/github/javaparser/ast/body/AnnotationMemberDeclaration;->getModifiers()Lcom/github/javaparser/ast/NodeList;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lcom/github/javaparser/ast/visitor/CloneVisitor;->cloneList(Lcom/github/javaparser/ast/NodeList;Ljava/lang/Object;)Lcom/github/javaparser/ast/NodeList;

    move-result-object v3

    .line 187
    invoke-virtual {p1}, Lcom/github/javaparser/ast/body/AnnotationMemberDeclaration;->getName()Lcom/github/javaparser/ast/expr/SimpleName;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/github/javaparser/ast/visitor/CloneVisitor;->cloneNode(Lcom/github/javaparser/ast/Node;Ljava/lang/Object;)Lcom/github/javaparser/ast/Node;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lcom/github/javaparser/ast/expr/SimpleName;

    .line 188
    invoke-virtual {p1}, Lcom/github/javaparser/ast/body/AnnotationMemberDeclaration;->getType()Lcom/github/javaparser/ast/type/Type;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/github/javaparser/ast/visitor/CloneVisitor;->cloneNode(Lcom/github/javaparser/ast/Node;Ljava/lang/Object;)Lcom/github/javaparser/ast/Node;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Lcom/github/javaparser/ast/type/Type;

    .line 189
    invoke-virtual {p1}, Lcom/github/javaparser/ast/body/BodyDeclaration;->getAnnotations()Lcom/github/javaparser/ast/NodeList;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lcom/github/javaparser/ast/visitor/CloneVisitor;->cloneList(Lcom/github/javaparser/ast/NodeList;Ljava/lang/Object;)Lcom/github/javaparser/ast/NodeList;

    move-result-object v4

    .line 190
    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getComment()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/github/javaparser/ast/visitor/CloneVisitor;->cloneNode(Ljava/util/Optional;Ljava/lang/Object;)Lcom/github/javaparser/ast/Node;

    move-result-object p2

    check-cast p2, Lcom/github/javaparser/ast/comments/Comment;

    .line 191
    new-instance v0, Lcom/github/javaparser/ast/body/AnnotationMemberDeclaration;

    .line 192
    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getTokenRange()Ljava/util/Optional;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/github/javaparser/TokenRange;

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Lcom/github/javaparser/ast/body/AnnotationMemberDeclaration;-><init>(Lcom/github/javaparser/TokenRange;Lcom/github/javaparser/ast/NodeList;Lcom/github/javaparser/ast/NodeList;Lcom/github/javaparser/ast/type/Type;Lcom/github/javaparser/ast/expr/SimpleName;Lcom/github/javaparser/ast/expr/Expression;)V

    .line 193
    invoke-virtual {v0, p2}, Lcom/github/javaparser/ast/Node;->setComment(Lcom/github/javaparser/ast/comments/Comment;)Lcom/github/javaparser/ast/Node;

    .line 194
    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getOrphanComments()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object p2

    new-instance v1, Lc0/a;

    invoke-direct {v1}, Lc0/a;-><init>()V

    invoke-interface {p2, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p2

    new-instance v1, Lc0/x0;

    invoke-direct {v1, v0}, Lc0/x0;-><init>(Lcom/github/javaparser/ast/body/AnnotationMemberDeclaration;)V

    invoke-interface {p2, v1}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    .line 195
    invoke-direct {p0, p1, v0}, Lcom/github/javaparser/ast/visitor/CloneVisitor;->copyData(Lcom/github/javaparser/ast/Node;Lcom/github/javaparser/ast/Node;)V

    return-object v0
.end method

.method public visit(Lcom/github/javaparser/ast/body/ClassOrInterfaceDeclaration;Ljava/lang/Object;)Lcom/github/javaparser/ast/visitor/Visitable;
    .locals 12
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 138
    invoke-virtual {p1}, Lcom/github/javaparser/ast/body/ClassOrInterfaceDeclaration;->getExtendedTypes()Lcom/github/javaparser/ast/NodeList;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lcom/github/javaparser/ast/visitor/CloneVisitor;->cloneList(Lcom/github/javaparser/ast/NodeList;Ljava/lang/Object;)Lcom/github/javaparser/ast/NodeList;

    move-result-object v8

    .line 139
    invoke-virtual {p1}, Lcom/github/javaparser/ast/body/ClassOrInterfaceDeclaration;->getImplementedTypes()Lcom/github/javaparser/ast/NodeList;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lcom/github/javaparser/ast/visitor/CloneVisitor;->cloneList(Lcom/github/javaparser/ast/NodeList;Ljava/lang/Object;)Lcom/github/javaparser/ast/NodeList;

    move-result-object v9

    .line 140
    invoke-virtual {p1}, Lcom/github/javaparser/ast/body/ClassOrInterfaceDeclaration;->getPermittedTypes()Lcom/github/javaparser/ast/NodeList;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lcom/github/javaparser/ast/visitor/CloneVisitor;->cloneList(Lcom/github/javaparser/ast/NodeList;Ljava/lang/Object;)Lcom/github/javaparser/ast/NodeList;

    move-result-object v10

    .line 141
    invoke-virtual {p1}, Lcom/github/javaparser/ast/body/ClassOrInterfaceDeclaration;->getTypeParameters()Lcom/github/javaparser/ast/NodeList;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lcom/github/javaparser/ast/visitor/CloneVisitor;->cloneList(Lcom/github/javaparser/ast/NodeList;Ljava/lang/Object;)Lcom/github/javaparser/ast/NodeList;

    move-result-object v7

    .line 142
    invoke-virtual {p1}, Lcom/github/javaparser/ast/body/TypeDeclaration;->getMembers()Lcom/github/javaparser/ast/NodeList;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lcom/github/javaparser/ast/visitor/CloneVisitor;->cloneList(Lcom/github/javaparser/ast/NodeList;Ljava/lang/Object;)Lcom/github/javaparser/ast/NodeList;

    move-result-object v11

    .line 143
    invoke-virtual {p1}, Lcom/github/javaparser/ast/body/TypeDeclaration;->getModifiers()Lcom/github/javaparser/ast/NodeList;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lcom/github/javaparser/ast/visitor/CloneVisitor;->cloneList(Lcom/github/javaparser/ast/NodeList;Ljava/lang/Object;)Lcom/github/javaparser/ast/NodeList;

    move-result-object v3

    .line 144
    invoke-virtual {p1}, Lcom/github/javaparser/ast/body/TypeDeclaration;->getName()Lcom/github/javaparser/ast/expr/SimpleName;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/github/javaparser/ast/visitor/CloneVisitor;->cloneNode(Lcom/github/javaparser/ast/Node;Ljava/lang/Object;)Lcom/github/javaparser/ast/Node;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lcom/github/javaparser/ast/expr/SimpleName;

    .line 145
    invoke-virtual {p1}, Lcom/github/javaparser/ast/body/BodyDeclaration;->getAnnotations()Lcom/github/javaparser/ast/NodeList;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lcom/github/javaparser/ast/visitor/CloneVisitor;->cloneList(Lcom/github/javaparser/ast/NodeList;Ljava/lang/Object;)Lcom/github/javaparser/ast/NodeList;

    move-result-object v4

    .line 146
    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getComment()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/github/javaparser/ast/visitor/CloneVisitor;->cloneNode(Ljava/util/Optional;Ljava/lang/Object;)Lcom/github/javaparser/ast/Node;

    move-result-object p2

    check-cast p2, Lcom/github/javaparser/ast/comments/Comment;

    .line 147
    new-instance v0, Lcom/github/javaparser/ast/body/ClassOrInterfaceDeclaration;

    .line 148
    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getTokenRange()Ljava/util/Optional;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/github/javaparser/TokenRange;

    .line 149
    invoke-virtual {p1}, Lcom/github/javaparser/ast/body/ClassOrInterfaceDeclaration;->isInterface()Z

    move-result v5

    move-object v1, v0

    invoke-direct/range {v1 .. v11}, Lcom/github/javaparser/ast/body/ClassOrInterfaceDeclaration;-><init>(Lcom/github/javaparser/TokenRange;Lcom/github/javaparser/ast/NodeList;Lcom/github/javaparser/ast/NodeList;ZLcom/github/javaparser/ast/expr/SimpleName;Lcom/github/javaparser/ast/NodeList;Lcom/github/javaparser/ast/NodeList;Lcom/github/javaparser/ast/NodeList;Lcom/github/javaparser/ast/NodeList;Lcom/github/javaparser/ast/NodeList;)V

    .line 150
    invoke-virtual {v0, p2}, Lcom/github/javaparser/ast/Node;->setComment(Lcom/github/javaparser/ast/comments/Comment;)Lcom/github/javaparser/ast/Node;

    .line 151
    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getOrphanComments()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object p2

    new-instance v1, Lc0/a;

    invoke-direct {v1}, Lc0/a;-><init>()V

    invoke-interface {p2, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p2

    new-instance v1, Lc0/D0;

    invoke-direct {v1, v0}, Lc0/D0;-><init>(Lcom/github/javaparser/ast/body/ClassOrInterfaceDeclaration;)V

    invoke-interface {p2, v1}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    .line 152
    invoke-direct {p0, p1, v0}, Lcom/github/javaparser/ast/visitor/CloneVisitor;->copyData(Lcom/github/javaparser/ast/Node;Lcom/github/javaparser/ast/Node;)V

    return-object v0
.end method

.method public visit(Lcom/github/javaparser/ast/body/CompactConstructorDeclaration;Ljava/lang/Object;)Lcom/github/javaparser/ast/visitor/Visitable;
    .locals 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 829
    invoke-virtual {p1}, Lcom/github/javaparser/ast/body/CompactConstructorDeclaration;->getBody()Lcom/github/javaparser/ast/stmt/BlockStmt;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/github/javaparser/ast/visitor/CloneVisitor;->cloneNode(Lcom/github/javaparser/ast/Node;Ljava/lang/Object;)Lcom/github/javaparser/ast/Node;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Lcom/github/javaparser/ast/stmt/BlockStmt;

    .line 830
    invoke-virtual {p1}, Lcom/github/javaparser/ast/body/CompactConstructorDeclaration;->getModifiers()Lcom/github/javaparser/ast/NodeList;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lcom/github/javaparser/ast/visitor/CloneVisitor;->cloneList(Lcom/github/javaparser/ast/NodeList;Ljava/lang/Object;)Lcom/github/javaparser/ast/NodeList;

    move-result-object v3

    .line 831
    invoke-virtual {p1}, Lcom/github/javaparser/ast/body/CompactConstructorDeclaration;->getName()Lcom/github/javaparser/ast/expr/SimpleName;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/github/javaparser/ast/visitor/CloneVisitor;->cloneNode(Lcom/github/javaparser/ast/Node;Ljava/lang/Object;)Lcom/github/javaparser/ast/Node;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lcom/github/javaparser/ast/expr/SimpleName;

    .line 832
    invoke-virtual {p1}, Lcom/github/javaparser/ast/body/CompactConstructorDeclaration;->getThrownExceptions()Lcom/github/javaparser/ast/NodeList;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lcom/github/javaparser/ast/visitor/CloneVisitor;->cloneList(Lcom/github/javaparser/ast/NodeList;Ljava/lang/Object;)Lcom/github/javaparser/ast/NodeList;

    move-result-object v7

    .line 833
    invoke-virtual {p1}, Lcom/github/javaparser/ast/body/CompactConstructorDeclaration;->getTypeParameters()Lcom/github/javaparser/ast/NodeList;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lcom/github/javaparser/ast/visitor/CloneVisitor;->cloneList(Lcom/github/javaparser/ast/NodeList;Ljava/lang/Object;)Lcom/github/javaparser/ast/NodeList;

    move-result-object v5

    .line 834
    invoke-virtual {p1}, Lcom/github/javaparser/ast/body/BodyDeclaration;->getAnnotations()Lcom/github/javaparser/ast/NodeList;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lcom/github/javaparser/ast/visitor/CloneVisitor;->cloneList(Lcom/github/javaparser/ast/NodeList;Ljava/lang/Object;)Lcom/github/javaparser/ast/NodeList;

    move-result-object v4

    .line 835
    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getComment()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/github/javaparser/ast/visitor/CloneVisitor;->cloneNode(Ljava/util/Optional;Ljava/lang/Object;)Lcom/github/javaparser/ast/Node;

    move-result-object p2

    check-cast p2, Lcom/github/javaparser/ast/comments/Comment;

    .line 836
    new-instance v0, Lcom/github/javaparser/ast/body/CompactConstructorDeclaration;

    .line 837
    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getTokenRange()Ljava/util/Optional;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/github/javaparser/TokenRange;

    move-object v1, v0

    invoke-direct/range {v1 .. v8}, Lcom/github/javaparser/ast/body/CompactConstructorDeclaration;-><init>(Lcom/github/javaparser/TokenRange;Lcom/github/javaparser/ast/NodeList;Lcom/github/javaparser/ast/NodeList;Lcom/github/javaparser/ast/NodeList;Lcom/github/javaparser/ast/expr/SimpleName;Lcom/github/javaparser/ast/NodeList;Lcom/github/javaparser/ast/stmt/BlockStmt;)V

    .line 838
    invoke-virtual {v0, p2}, Lcom/github/javaparser/ast/Node;->setComment(Lcom/github/javaparser/ast/comments/Comment;)Lcom/github/javaparser/ast/Node;

    .line 839
    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getOrphanComments()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object p2

    new-instance v1, Lc0/a;

    invoke-direct {v1}, Lc0/a;-><init>()V

    invoke-interface {p2, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p2

    new-instance v1, Lc0/m0;

    invoke-direct {v1, v0}, Lc0/m0;-><init>(Lcom/github/javaparser/ast/body/CompactConstructorDeclaration;)V

    invoke-interface {p2, v1}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    .line 840
    invoke-direct {p0, p1, v0}, Lcom/github/javaparser/ast/visitor/CloneVisitor;->copyData(Lcom/github/javaparser/ast/Node;Lcom/github/javaparser/ast/Node;)V

    return-object v0
.end method

.method public visit(Lcom/github/javaparser/ast/body/ConstructorDeclaration;Ljava/lang/Object;)Lcom/github/javaparser/ast/visitor/Visitable;
    .locals 11
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 212
    invoke-virtual {p1}, Lcom/github/javaparser/ast/body/ConstructorDeclaration;->getBody()Lcom/github/javaparser/ast/stmt/BlockStmt;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/github/javaparser/ast/visitor/CloneVisitor;->cloneNode(Lcom/github/javaparser/ast/Node;Ljava/lang/Object;)Lcom/github/javaparser/ast/Node;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Lcom/github/javaparser/ast/stmt/BlockStmt;

    .line 213
    invoke-virtual {p1}, Lcom/github/javaparser/ast/body/CallableDeclaration;->getModifiers()Lcom/github/javaparser/ast/NodeList;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lcom/github/javaparser/ast/visitor/CloneVisitor;->cloneList(Lcom/github/javaparser/ast/NodeList;Ljava/lang/Object;)Lcom/github/javaparser/ast/NodeList;

    move-result-object v3

    .line 214
    invoke-virtual {p1}, Lcom/github/javaparser/ast/body/CallableDeclaration;->getName()Lcom/github/javaparser/ast/expr/SimpleName;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/github/javaparser/ast/visitor/CloneVisitor;->cloneNode(Lcom/github/javaparser/ast/Node;Ljava/lang/Object;)Lcom/github/javaparser/ast/Node;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lcom/github/javaparser/ast/expr/SimpleName;

    .line 215
    invoke-virtual {p1}, Lcom/github/javaparser/ast/body/CallableDeclaration;->getParameters()Lcom/github/javaparser/ast/NodeList;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lcom/github/javaparser/ast/visitor/CloneVisitor;->cloneList(Lcom/github/javaparser/ast/NodeList;Ljava/lang/Object;)Lcom/github/javaparser/ast/NodeList;

    move-result-object v7

    .line 216
    invoke-virtual {p1}, Lcom/github/javaparser/ast/body/CallableDeclaration;->getReceiverParameter()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/github/javaparser/ast/visitor/CloneVisitor;->cloneNode(Ljava/util/Optional;Ljava/lang/Object;)Lcom/github/javaparser/ast/Node;

    move-result-object v0

    move-object v10, v0

    check-cast v10, Lcom/github/javaparser/ast/body/ReceiverParameter;

    .line 217
    invoke-virtual {p1}, Lcom/github/javaparser/ast/body/CallableDeclaration;->getThrownExceptions()Lcom/github/javaparser/ast/NodeList;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lcom/github/javaparser/ast/visitor/CloneVisitor;->cloneList(Lcom/github/javaparser/ast/NodeList;Ljava/lang/Object;)Lcom/github/javaparser/ast/NodeList;

    move-result-object v8

    .line 218
    invoke-virtual {p1}, Lcom/github/javaparser/ast/body/CallableDeclaration;->getTypeParameters()Lcom/github/javaparser/ast/NodeList;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lcom/github/javaparser/ast/visitor/CloneVisitor;->cloneList(Lcom/github/javaparser/ast/NodeList;Ljava/lang/Object;)Lcom/github/javaparser/ast/NodeList;

    move-result-object v5

    .line 219
    invoke-virtual {p1}, Lcom/github/javaparser/ast/body/BodyDeclaration;->getAnnotations()Lcom/github/javaparser/ast/NodeList;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lcom/github/javaparser/ast/visitor/CloneVisitor;->cloneList(Lcom/github/javaparser/ast/NodeList;Ljava/lang/Object;)Lcom/github/javaparser/ast/NodeList;

    move-result-object v4

    .line 220
    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getComment()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/github/javaparser/ast/visitor/CloneVisitor;->cloneNode(Ljava/util/Optional;Ljava/lang/Object;)Lcom/github/javaparser/ast/Node;

    move-result-object p2

    check-cast p2, Lcom/github/javaparser/ast/comments/Comment;

    .line 221
    new-instance v0, Lcom/github/javaparser/ast/body/ConstructorDeclaration;

    .line 222
    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getTokenRange()Ljava/util/Optional;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/github/javaparser/TokenRange;

    move-object v1, v0

    invoke-direct/range {v1 .. v10}, Lcom/github/javaparser/ast/body/ConstructorDeclaration;-><init>(Lcom/github/javaparser/TokenRange;Lcom/github/javaparser/ast/NodeList;Lcom/github/javaparser/ast/NodeList;Lcom/github/javaparser/ast/NodeList;Lcom/github/javaparser/ast/expr/SimpleName;Lcom/github/javaparser/ast/NodeList;Lcom/github/javaparser/ast/NodeList;Lcom/github/javaparser/ast/stmt/BlockStmt;Lcom/github/javaparser/ast/body/ReceiverParameter;)V

    .line 223
    invoke-virtual {v0, p2}, Lcom/github/javaparser/ast/Node;->setComment(Lcom/github/javaparser/ast/comments/Comment;)Lcom/github/javaparser/ast/Node;

    .line 224
    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getOrphanComments()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object p2

    new-instance v1, Lc0/a;

    invoke-direct {v1}, Lc0/a;-><init>()V

    invoke-interface {p2, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p2

    new-instance v1, Lc0/T0;

    invoke-direct {v1, v0}, Lc0/T0;-><init>(Lcom/github/javaparser/ast/body/ConstructorDeclaration;)V

    invoke-interface {p2, v1}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    .line 225
    invoke-direct {p0, p1, v0}, Lcom/github/javaparser/ast/visitor/CloneVisitor;->copyData(Lcom/github/javaparser/ast/Node;Lcom/github/javaparser/ast/Node;)V

    return-object v0
.end method

.method public visit(Lcom/github/javaparser/ast/body/EnumConstantDeclaration;Ljava/lang/Object;)Lcom/github/javaparser/ast/visitor/Visitable;
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 165
    invoke-virtual {p1}, Lcom/github/javaparser/ast/body/EnumConstantDeclaration;->getArguments()Lcom/github/javaparser/ast/NodeList;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lcom/github/javaparser/ast/visitor/CloneVisitor;->cloneList(Lcom/github/javaparser/ast/NodeList;Ljava/lang/Object;)Lcom/github/javaparser/ast/NodeList;

    move-result-object v5

    .line 166
    invoke-virtual {p1}, Lcom/github/javaparser/ast/body/EnumConstantDeclaration;->getClassBody()Lcom/github/javaparser/ast/NodeList;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lcom/github/javaparser/ast/visitor/CloneVisitor;->cloneList(Lcom/github/javaparser/ast/NodeList;Ljava/lang/Object;)Lcom/github/javaparser/ast/NodeList;

    move-result-object v6

    .line 167
    invoke-virtual {p1}, Lcom/github/javaparser/ast/body/EnumConstantDeclaration;->getName()Lcom/github/javaparser/ast/expr/SimpleName;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/github/javaparser/ast/visitor/CloneVisitor;->cloneNode(Lcom/github/javaparser/ast/Node;Ljava/lang/Object;)Lcom/github/javaparser/ast/Node;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lcom/github/javaparser/ast/expr/SimpleName;

    .line 168
    invoke-virtual {p1}, Lcom/github/javaparser/ast/body/BodyDeclaration;->getAnnotations()Lcom/github/javaparser/ast/NodeList;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lcom/github/javaparser/ast/visitor/CloneVisitor;->cloneList(Lcom/github/javaparser/ast/NodeList;Ljava/lang/Object;)Lcom/github/javaparser/ast/NodeList;

    move-result-object v3

    .line 169
    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getComment()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/github/javaparser/ast/visitor/CloneVisitor;->cloneNode(Ljava/util/Optional;Ljava/lang/Object;)Lcom/github/javaparser/ast/Node;

    move-result-object p2

    check-cast p2, Lcom/github/javaparser/ast/comments/Comment;

    .line 170
    new-instance v0, Lcom/github/javaparser/ast/body/EnumConstantDeclaration;

    .line 171
    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getTokenRange()Ljava/util/Optional;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/github/javaparser/TokenRange;

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/github/javaparser/ast/body/EnumConstantDeclaration;-><init>(Lcom/github/javaparser/TokenRange;Lcom/github/javaparser/ast/NodeList;Lcom/github/javaparser/ast/expr/SimpleName;Lcom/github/javaparser/ast/NodeList;Lcom/github/javaparser/ast/NodeList;)V

    .line 172
    invoke-virtual {v0, p2}, Lcom/github/javaparser/ast/Node;->setComment(Lcom/github/javaparser/ast/comments/Comment;)Lcom/github/javaparser/ast/Node;

    .line 173
    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getOrphanComments()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object p2

    new-instance v1, Lc0/a;

    invoke-direct {v1}, Lc0/a;-><init>()V

    invoke-interface {p2, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p2

    new-instance v1, Lc0/U0;

    invoke-direct {v1, v0}, Lc0/U0;-><init>(Lcom/github/javaparser/ast/body/EnumConstantDeclaration;)V

    invoke-interface {p2, v1}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    .line 174
    invoke-direct {p0, p1, v0}, Lcom/github/javaparser/ast/visitor/CloneVisitor;->copyData(Lcom/github/javaparser/ast/Node;Lcom/github/javaparser/ast/Node;)V

    return-object v0
.end method

.method public visit(Lcom/github/javaparser/ast/body/EnumDeclaration;Ljava/lang/Object;)Lcom/github/javaparser/ast/visitor/Visitable;
    .locals 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 153
    invoke-virtual {p1}, Lcom/github/javaparser/ast/body/EnumDeclaration;->getEntries()Lcom/github/javaparser/ast/NodeList;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lcom/github/javaparser/ast/visitor/CloneVisitor;->cloneList(Lcom/github/javaparser/ast/NodeList;Ljava/lang/Object;)Lcom/github/javaparser/ast/NodeList;

    move-result-object v7

    .line 154
    invoke-virtual {p1}, Lcom/github/javaparser/ast/body/EnumDeclaration;->getImplementedTypes()Lcom/github/javaparser/ast/NodeList;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lcom/github/javaparser/ast/visitor/CloneVisitor;->cloneList(Lcom/github/javaparser/ast/NodeList;Ljava/lang/Object;)Lcom/github/javaparser/ast/NodeList;

    move-result-object v6

    .line 155
    invoke-virtual {p1}, Lcom/github/javaparser/ast/body/TypeDeclaration;->getMembers()Lcom/github/javaparser/ast/NodeList;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lcom/github/javaparser/ast/visitor/CloneVisitor;->cloneList(Lcom/github/javaparser/ast/NodeList;Ljava/lang/Object;)Lcom/github/javaparser/ast/NodeList;

    move-result-object v8

    .line 156
    invoke-virtual {p1}, Lcom/github/javaparser/ast/body/TypeDeclaration;->getModifiers()Lcom/github/javaparser/ast/NodeList;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lcom/github/javaparser/ast/visitor/CloneVisitor;->cloneList(Lcom/github/javaparser/ast/NodeList;Ljava/lang/Object;)Lcom/github/javaparser/ast/NodeList;

    move-result-object v3

    .line 157
    invoke-virtual {p1}, Lcom/github/javaparser/ast/body/TypeDeclaration;->getName()Lcom/github/javaparser/ast/expr/SimpleName;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/github/javaparser/ast/visitor/CloneVisitor;->cloneNode(Lcom/github/javaparser/ast/Node;Ljava/lang/Object;)Lcom/github/javaparser/ast/Node;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Lcom/github/javaparser/ast/expr/SimpleName;

    .line 158
    invoke-virtual {p1}, Lcom/github/javaparser/ast/body/BodyDeclaration;->getAnnotations()Lcom/github/javaparser/ast/NodeList;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lcom/github/javaparser/ast/visitor/CloneVisitor;->cloneList(Lcom/github/javaparser/ast/NodeList;Ljava/lang/Object;)Lcom/github/javaparser/ast/NodeList;

    move-result-object v4

    .line 159
    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getComment()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/github/javaparser/ast/visitor/CloneVisitor;->cloneNode(Ljava/util/Optional;Ljava/lang/Object;)Lcom/github/javaparser/ast/Node;

    move-result-object p2

    check-cast p2, Lcom/github/javaparser/ast/comments/Comment;

    .line 160
    new-instance v0, Lcom/github/javaparser/ast/body/EnumDeclaration;

    .line 161
    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getTokenRange()Ljava/util/Optional;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/github/javaparser/TokenRange;

    move-object v1, v0

    invoke-direct/range {v1 .. v8}, Lcom/github/javaparser/ast/body/EnumDeclaration;-><init>(Lcom/github/javaparser/TokenRange;Lcom/github/javaparser/ast/NodeList;Lcom/github/javaparser/ast/NodeList;Lcom/github/javaparser/ast/expr/SimpleName;Lcom/github/javaparser/ast/NodeList;Lcom/github/javaparser/ast/NodeList;Lcom/github/javaparser/ast/NodeList;)V

    .line 162
    invoke-virtual {v0, p2}, Lcom/github/javaparser/ast/Node;->setComment(Lcom/github/javaparser/ast/comments/Comment;)Lcom/github/javaparser/ast/Node;

    .line 163
    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getOrphanComments()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object p2

    new-instance v1, Lc0/a;

    invoke-direct {v1}, Lc0/a;-><init>()V

    invoke-interface {p2, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p2

    new-instance v1, Lc0/L;

    invoke-direct {v1, v0}, Lc0/L;-><init>(Lcom/github/javaparser/ast/body/EnumDeclaration;)V

    invoke-interface {p2, v1}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    .line 164
    invoke-direct {p0, p1, v0}, Lcom/github/javaparser/ast/visitor/CloneVisitor;->copyData(Lcom/github/javaparser/ast/Node;Lcom/github/javaparser/ast/Node;)V

    return-object v0
.end method

.method public visit(Lcom/github/javaparser/ast/body/FieldDeclaration;Ljava/lang/Object;)Lcom/github/javaparser/ast/visitor/Visitable;
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 196
    invoke-virtual {p1}, Lcom/github/javaparser/ast/body/FieldDeclaration;->getModifiers()Lcom/github/javaparser/ast/NodeList;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lcom/github/javaparser/ast/visitor/CloneVisitor;->cloneList(Lcom/github/javaparser/ast/NodeList;Ljava/lang/Object;)Lcom/github/javaparser/ast/NodeList;

    move-result-object v0

    .line 197
    invoke-virtual {p1}, Lcom/github/javaparser/ast/body/FieldDeclaration;->getVariables()Lcom/github/javaparser/ast/NodeList;

    move-result-object v1

    invoke-direct {p0, v1, p2}, Lcom/github/javaparser/ast/visitor/CloneVisitor;->cloneList(Lcom/github/javaparser/ast/NodeList;Ljava/lang/Object;)Lcom/github/javaparser/ast/NodeList;

    move-result-object v1

    .line 198
    invoke-virtual {p1}, Lcom/github/javaparser/ast/body/BodyDeclaration;->getAnnotations()Lcom/github/javaparser/ast/NodeList;

    move-result-object v2

    invoke-direct {p0, v2, p2}, Lcom/github/javaparser/ast/visitor/CloneVisitor;->cloneList(Lcom/github/javaparser/ast/NodeList;Ljava/lang/Object;)Lcom/github/javaparser/ast/NodeList;

    move-result-object v2

    .line 199
    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getComment()Ljava/util/Optional;

    move-result-object v3

    invoke-virtual {p0, v3, p2}, Lcom/github/javaparser/ast/visitor/CloneVisitor;->cloneNode(Ljava/util/Optional;Ljava/lang/Object;)Lcom/github/javaparser/ast/Node;

    move-result-object p2

    check-cast p2, Lcom/github/javaparser/ast/comments/Comment;

    .line 200
    new-instance v3, Lcom/github/javaparser/ast/body/FieldDeclaration;

    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getTokenRange()Ljava/util/Optional;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/github/javaparser/TokenRange;

    invoke-direct {v3, v4, v0, v2, v1}, Lcom/github/javaparser/ast/body/FieldDeclaration;-><init>(Lcom/github/javaparser/TokenRange;Lcom/github/javaparser/ast/NodeList;Lcom/github/javaparser/ast/NodeList;Lcom/github/javaparser/ast/NodeList;)V

    .line 201
    invoke-virtual {v3, p2}, Lcom/github/javaparser/ast/Node;->setComment(Lcom/github/javaparser/ast/comments/Comment;)Lcom/github/javaparser/ast/Node;

    .line 202
    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getOrphanComments()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object p2

    new-instance v0, Lc0/a;

    invoke-direct {v0}, Lc0/a;-><init>()V

    invoke-interface {p2, v0}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p2

    new-instance v0, Lc0/d0;

    invoke-direct {v0, v3}, Lc0/d0;-><init>(Lcom/github/javaparser/ast/body/FieldDeclaration;)V

    invoke-interface {p2, v0}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    .line 203
    invoke-direct {p0, p1, v3}, Lcom/github/javaparser/ast/visitor/CloneVisitor;->copyData(Lcom/github/javaparser/ast/Node;Lcom/github/javaparser/ast/Node;)V

    return-object v3
.end method

.method public visit(Lcom/github/javaparser/ast/body/InitializerDeclaration;Ljava/lang/Object;)Lcom/github/javaparser/ast/visitor/Visitable;
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 252
    invoke-virtual {p1}, Lcom/github/javaparser/ast/body/InitializerDeclaration;->getBody()Lcom/github/javaparser/ast/stmt/BlockStmt;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/github/javaparser/ast/visitor/CloneVisitor;->cloneNode(Lcom/github/javaparser/ast/Node;Ljava/lang/Object;)Lcom/github/javaparser/ast/Node;

    move-result-object v0

    check-cast v0, Lcom/github/javaparser/ast/stmt/BlockStmt;

    .line 253
    invoke-virtual {p1}, Lcom/github/javaparser/ast/body/BodyDeclaration;->getAnnotations()Lcom/github/javaparser/ast/NodeList;

    move-result-object v1

    invoke-direct {p0, v1, p2}, Lcom/github/javaparser/ast/visitor/CloneVisitor;->cloneList(Lcom/github/javaparser/ast/NodeList;Ljava/lang/Object;)Lcom/github/javaparser/ast/NodeList;

    .line 254
    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getComment()Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {p0, v1, p2}, Lcom/github/javaparser/ast/visitor/CloneVisitor;->cloneNode(Ljava/util/Optional;Ljava/lang/Object;)Lcom/github/javaparser/ast/Node;

    move-result-object p2

    check-cast p2, Lcom/github/javaparser/ast/comments/Comment;

    .line 255
    new-instance v1, Lcom/github/javaparser/ast/body/InitializerDeclaration;

    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getTokenRange()Ljava/util/Optional;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/github/javaparser/TokenRange;

    invoke-virtual {p1}, Lcom/github/javaparser/ast/body/InitializerDeclaration;->isStatic()Z

    move-result v3

    invoke-direct {v1, v2, v3, v0}, Lcom/github/javaparser/ast/body/InitializerDeclaration;-><init>(Lcom/github/javaparser/TokenRange;ZLcom/github/javaparser/ast/stmt/BlockStmt;)V

    .line 256
    invoke-virtual {v1, p2}, Lcom/github/javaparser/ast/Node;->setComment(Lcom/github/javaparser/ast/comments/Comment;)Lcom/github/javaparser/ast/Node;

    .line 257
    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getOrphanComments()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object p2

    new-instance v0, Lc0/a;

    invoke-direct {v0}, Lc0/a;-><init>()V

    invoke-interface {p2, v0}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p2

    new-instance v0, Lc0/z0;

    invoke-direct {v0, v1}, Lc0/z0;-><init>(Lcom/github/javaparser/ast/body/InitializerDeclaration;)V

    invoke-interface {p2, v0}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    .line 258
    invoke-direct {p0, p1, v1}, Lcom/github/javaparser/ast/visitor/CloneVisitor;->copyData(Lcom/github/javaparser/ast/Node;Lcom/github/javaparser/ast/Node;)V

    return-object v1
.end method

.method public visit(Lcom/github/javaparser/ast/body/MethodDeclaration;Ljava/lang/Object;)Lcom/github/javaparser/ast/visitor/Visitable;
    .locals 12
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 226
    invoke-virtual {p1}, Lcom/github/javaparser/ast/body/MethodDeclaration;->getBody()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/github/javaparser/ast/visitor/CloneVisitor;->cloneNode(Ljava/util/Optional;Ljava/lang/Object;)Lcom/github/javaparser/ast/Node;

    move-result-object v0

    move-object v10, v0

    check-cast v10, Lcom/github/javaparser/ast/stmt/BlockStmt;

    .line 227
    invoke-virtual {p1}, Lcom/github/javaparser/ast/body/MethodDeclaration;->getType()Lcom/github/javaparser/ast/type/Type;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/github/javaparser/ast/visitor/CloneVisitor;->cloneNode(Lcom/github/javaparser/ast/Node;Ljava/lang/Object;)Lcom/github/javaparser/ast/Node;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lcom/github/javaparser/ast/type/Type;

    .line 228
    invoke-virtual {p1}, Lcom/github/javaparser/ast/body/CallableDeclaration;->getModifiers()Lcom/github/javaparser/ast/NodeList;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lcom/github/javaparser/ast/visitor/CloneVisitor;->cloneList(Lcom/github/javaparser/ast/NodeList;Ljava/lang/Object;)Lcom/github/javaparser/ast/NodeList;

    move-result-object v3

    .line 229
    invoke-virtual {p1}, Lcom/github/javaparser/ast/body/CallableDeclaration;->getName()Lcom/github/javaparser/ast/expr/SimpleName;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/github/javaparser/ast/visitor/CloneVisitor;->cloneNode(Lcom/github/javaparser/ast/Node;Ljava/lang/Object;)Lcom/github/javaparser/ast/Node;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Lcom/github/javaparser/ast/expr/SimpleName;

    .line 230
    invoke-virtual {p1}, Lcom/github/javaparser/ast/body/CallableDeclaration;->getParameters()Lcom/github/javaparser/ast/NodeList;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lcom/github/javaparser/ast/visitor/CloneVisitor;->cloneList(Lcom/github/javaparser/ast/NodeList;Ljava/lang/Object;)Lcom/github/javaparser/ast/NodeList;

    move-result-object v8

    .line 231
    invoke-virtual {p1}, Lcom/github/javaparser/ast/body/CallableDeclaration;->getReceiverParameter()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/github/javaparser/ast/visitor/CloneVisitor;->cloneNode(Ljava/util/Optional;Ljava/lang/Object;)Lcom/github/javaparser/ast/Node;

    move-result-object v0

    move-object v11, v0

    check-cast v11, Lcom/github/javaparser/ast/body/ReceiverParameter;

    .line 232
    invoke-virtual {p1}, Lcom/github/javaparser/ast/body/CallableDeclaration;->getThrownExceptions()Lcom/github/javaparser/ast/NodeList;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lcom/github/javaparser/ast/visitor/CloneVisitor;->cloneList(Lcom/github/javaparser/ast/NodeList;Ljava/lang/Object;)Lcom/github/javaparser/ast/NodeList;

    move-result-object v9

    .line 233
    invoke-virtual {p1}, Lcom/github/javaparser/ast/body/CallableDeclaration;->getTypeParameters()Lcom/github/javaparser/ast/NodeList;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lcom/github/javaparser/ast/visitor/CloneVisitor;->cloneList(Lcom/github/javaparser/ast/NodeList;Ljava/lang/Object;)Lcom/github/javaparser/ast/NodeList;

    move-result-object v5

    .line 234
    invoke-virtual {p1}, Lcom/github/javaparser/ast/body/BodyDeclaration;->getAnnotations()Lcom/github/javaparser/ast/NodeList;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lcom/github/javaparser/ast/visitor/CloneVisitor;->cloneList(Lcom/github/javaparser/ast/NodeList;Ljava/lang/Object;)Lcom/github/javaparser/ast/NodeList;

    move-result-object v4

    .line 235
    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getComment()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/github/javaparser/ast/visitor/CloneVisitor;->cloneNode(Ljava/util/Optional;Ljava/lang/Object;)Lcom/github/javaparser/ast/Node;

    move-result-object p2

    check-cast p2, Lcom/github/javaparser/ast/comments/Comment;

    .line 236
    new-instance v0, Lcom/github/javaparser/ast/body/MethodDeclaration;

    .line 237
    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getTokenRange()Ljava/util/Optional;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/github/javaparser/TokenRange;

    move-object v1, v0

    invoke-direct/range {v1 .. v11}, Lcom/github/javaparser/ast/body/MethodDeclaration;-><init>(Lcom/github/javaparser/TokenRange;Lcom/github/javaparser/ast/NodeList;Lcom/github/javaparser/ast/NodeList;Lcom/github/javaparser/ast/NodeList;Lcom/github/javaparser/ast/type/Type;Lcom/github/javaparser/ast/expr/SimpleName;Lcom/github/javaparser/ast/NodeList;Lcom/github/javaparser/ast/NodeList;Lcom/github/javaparser/ast/stmt/BlockStmt;Lcom/github/javaparser/ast/body/ReceiverParameter;)V

    .line 238
    invoke-virtual {v0, p2}, Lcom/github/javaparser/ast/Node;->setComment(Lcom/github/javaparser/ast/comments/Comment;)Lcom/github/javaparser/ast/Node;

    .line 239
    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getOrphanComments()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object p2

    new-instance v1, Lc0/a;

    invoke-direct {v1}, Lc0/a;-><init>()V

    invoke-interface {p2, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p2

    new-instance v1, Lc0/o;

    invoke-direct {v1, v0}, Lc0/o;-><init>(Lcom/github/javaparser/ast/body/MethodDeclaration;)V

    invoke-interface {p2, v1}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    .line 240
    invoke-direct {p0, p1, v0}, Lcom/github/javaparser/ast/visitor/CloneVisitor;->copyData(Lcom/github/javaparser/ast/Node;Lcom/github/javaparser/ast/Node;)V

    return-object v0
.end method

.method public visit(Lcom/github/javaparser/ast/body/Parameter;Ljava/lang/Object;)Lcom/github/javaparser/ast/visitor/Visitable;
    .locals 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 241
    invoke-virtual {p1}, Lcom/github/javaparser/ast/body/Parameter;->getAnnotations()Lcom/github/javaparser/ast/NodeList;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lcom/github/javaparser/ast/visitor/CloneVisitor;->cloneList(Lcom/github/javaparser/ast/NodeList;Ljava/lang/Object;)Lcom/github/javaparser/ast/NodeList;

    move-result-object v4

    .line 242
    invoke-virtual {p1}, Lcom/github/javaparser/ast/body/Parameter;->getModifiers()Lcom/github/javaparser/ast/NodeList;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lcom/github/javaparser/ast/visitor/CloneVisitor;->cloneList(Lcom/github/javaparser/ast/NodeList;Ljava/lang/Object;)Lcom/github/javaparser/ast/NodeList;

    move-result-object v3

    .line 243
    invoke-virtual {p1}, Lcom/github/javaparser/ast/body/Parameter;->getName()Lcom/github/javaparser/ast/expr/SimpleName;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/github/javaparser/ast/visitor/CloneVisitor;->cloneNode(Lcom/github/javaparser/ast/Node;Ljava/lang/Object;)Lcom/github/javaparser/ast/Node;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Lcom/github/javaparser/ast/expr/SimpleName;

    .line 244
    invoke-virtual {p1}, Lcom/github/javaparser/ast/body/Parameter;->getType()Lcom/github/javaparser/ast/type/Type;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/github/javaparser/ast/visitor/CloneVisitor;->cloneNode(Lcom/github/javaparser/ast/Node;Ljava/lang/Object;)Lcom/github/javaparser/ast/Node;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Lcom/github/javaparser/ast/type/Type;

    .line 245
    invoke-virtual {p1}, Lcom/github/javaparser/ast/body/Parameter;->getVarArgsAnnotations()Lcom/github/javaparser/ast/NodeList;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lcom/github/javaparser/ast/visitor/CloneVisitor;->cloneList(Lcom/github/javaparser/ast/NodeList;Ljava/lang/Object;)Lcom/github/javaparser/ast/NodeList;

    move-result-object v7

    .line 246
    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getComment()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/github/javaparser/ast/visitor/CloneVisitor;->cloneNode(Ljava/util/Optional;Ljava/lang/Object;)Lcom/github/javaparser/ast/Node;

    move-result-object p2

    check-cast p2, Lcom/github/javaparser/ast/comments/Comment;

    .line 247
    new-instance v0, Lcom/github/javaparser/ast/body/Parameter;

    .line 248
    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getTokenRange()Ljava/util/Optional;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/github/javaparser/TokenRange;

    invoke-virtual {p1}, Lcom/github/javaparser/ast/body/Parameter;->isVarArgs()Z

    move-result v6

    move-object v1, v0

    invoke-direct/range {v1 .. v8}, Lcom/github/javaparser/ast/body/Parameter;-><init>(Lcom/github/javaparser/TokenRange;Lcom/github/javaparser/ast/NodeList;Lcom/github/javaparser/ast/NodeList;Lcom/github/javaparser/ast/type/Type;ZLcom/github/javaparser/ast/NodeList;Lcom/github/javaparser/ast/expr/SimpleName;)V

    .line 249
    invoke-virtual {v0, p2}, Lcom/github/javaparser/ast/Node;->setComment(Lcom/github/javaparser/ast/comments/Comment;)Lcom/github/javaparser/ast/Node;

    .line 250
    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getOrphanComments()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object p2

    new-instance v1, Lc0/a;

    invoke-direct {v1}, Lc0/a;-><init>()V

    invoke-interface {p2, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p2

    new-instance v1, Lc0/s0;

    invoke-direct {v1, v0}, Lc0/s0;-><init>(Lcom/github/javaparser/ast/body/Parameter;)V

    invoke-interface {p2, v1}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    .line 251
    invoke-direct {p0, p1, v0}, Lcom/github/javaparser/ast/visitor/CloneVisitor;->copyData(Lcom/github/javaparser/ast/Node;Lcom/github/javaparser/ast/Node;)V

    return-object v0
.end method

.method public visit(Lcom/github/javaparser/ast/body/ReceiverParameter;Ljava/lang/Object;)Lcom/github/javaparser/ast/visitor/Visitable;
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 770
    invoke-virtual {p1}, Lcom/github/javaparser/ast/body/ReceiverParameter;->getAnnotations()Lcom/github/javaparser/ast/NodeList;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lcom/github/javaparser/ast/visitor/CloneVisitor;->cloneList(Lcom/github/javaparser/ast/NodeList;Ljava/lang/Object;)Lcom/github/javaparser/ast/NodeList;

    move-result-object v0

    .line 771
    invoke-virtual {p1}, Lcom/github/javaparser/ast/body/ReceiverParameter;->getName()Lcom/github/javaparser/ast/expr/Name;

    move-result-object v1

    invoke-virtual {p0, v1, p2}, Lcom/github/javaparser/ast/visitor/CloneVisitor;->cloneNode(Lcom/github/javaparser/ast/Node;Ljava/lang/Object;)Lcom/github/javaparser/ast/Node;

    move-result-object v1

    check-cast v1, Lcom/github/javaparser/ast/expr/Name;

    .line 772
    invoke-virtual {p1}, Lcom/github/javaparser/ast/body/ReceiverParameter;->getType()Lcom/github/javaparser/ast/type/Type;

    move-result-object v2

    invoke-virtual {p0, v2, p2}, Lcom/github/javaparser/ast/visitor/CloneVisitor;->cloneNode(Lcom/github/javaparser/ast/Node;Ljava/lang/Object;)Lcom/github/javaparser/ast/Node;

    move-result-object v2

    check-cast v2, Lcom/github/javaparser/ast/type/Type;

    .line 773
    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getComment()Ljava/util/Optional;

    move-result-object v3

    invoke-virtual {p0, v3, p2}, Lcom/github/javaparser/ast/visitor/CloneVisitor;->cloneNode(Ljava/util/Optional;Ljava/lang/Object;)Lcom/github/javaparser/ast/Node;

    move-result-object p2

    check-cast p2, Lcom/github/javaparser/ast/comments/Comment;

    .line 774
    new-instance v3, Lcom/github/javaparser/ast/body/ReceiverParameter;

    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getTokenRange()Ljava/util/Optional;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/github/javaparser/TokenRange;

    invoke-direct {v3, v4, v0, v2, v1}, Lcom/github/javaparser/ast/body/ReceiverParameter;-><init>(Lcom/github/javaparser/TokenRange;Lcom/github/javaparser/ast/NodeList;Lcom/github/javaparser/ast/type/Type;Lcom/github/javaparser/ast/expr/Name;)V

    .line 775
    invoke-virtual {v3, p2}, Lcom/github/javaparser/ast/Node;->setComment(Lcom/github/javaparser/ast/comments/Comment;)Lcom/github/javaparser/ast/Node;

    .line 776
    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getOrphanComments()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object p2

    new-instance v0, Lc0/a;

    invoke-direct {v0}, Lc0/a;-><init>()V

    invoke-interface {p2, v0}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p2

    new-instance v0, Lc0/P;

    invoke-direct {v0, v3}, Lc0/P;-><init>(Lcom/github/javaparser/ast/body/ReceiverParameter;)V

    invoke-interface {p2, v0}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    .line 777
    invoke-direct {p0, p1, v3}, Lcom/github/javaparser/ast/visitor/CloneVisitor;->copyData(Lcom/github/javaparser/ast/Node;Lcom/github/javaparser/ast/Node;)V

    return-object v3
.end method

.method public visit(Lcom/github/javaparser/ast/body/RecordDeclaration;Ljava/lang/Object;)Lcom/github/javaparser/ast/visitor/Visitable;
    .locals 11
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 815
    invoke-virtual {p1}, Lcom/github/javaparser/ast/body/RecordDeclaration;->getImplementedTypes()Lcom/github/javaparser/ast/NodeList;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lcom/github/javaparser/ast/visitor/CloneVisitor;->cloneList(Lcom/github/javaparser/ast/NodeList;Ljava/lang/Object;)Lcom/github/javaparser/ast/NodeList;

    move-result-object v8

    .line 816
    invoke-virtual {p1}, Lcom/github/javaparser/ast/body/RecordDeclaration;->getParameters()Lcom/github/javaparser/ast/NodeList;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lcom/github/javaparser/ast/visitor/CloneVisitor;->cloneList(Lcom/github/javaparser/ast/NodeList;Ljava/lang/Object;)Lcom/github/javaparser/ast/NodeList;

    move-result-object v6

    .line 817
    invoke-virtual {p1}, Lcom/github/javaparser/ast/body/RecordDeclaration;->getReceiverParameter()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/github/javaparser/ast/visitor/CloneVisitor;->cloneNode(Ljava/util/Optional;Ljava/lang/Object;)Lcom/github/javaparser/ast/Node;

    move-result-object v0

    move-object v10, v0

    check-cast v10, Lcom/github/javaparser/ast/body/ReceiverParameter;

    .line 818
    invoke-virtual {p1}, Lcom/github/javaparser/ast/body/RecordDeclaration;->getTypeParameters()Lcom/github/javaparser/ast/NodeList;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lcom/github/javaparser/ast/visitor/CloneVisitor;->cloneList(Lcom/github/javaparser/ast/NodeList;Ljava/lang/Object;)Lcom/github/javaparser/ast/NodeList;

    move-result-object v7

    .line 819
    invoke-virtual {p1}, Lcom/github/javaparser/ast/body/TypeDeclaration;->getMembers()Lcom/github/javaparser/ast/NodeList;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lcom/github/javaparser/ast/visitor/CloneVisitor;->cloneList(Lcom/github/javaparser/ast/NodeList;Ljava/lang/Object;)Lcom/github/javaparser/ast/NodeList;

    move-result-object v9

    .line 820
    invoke-virtual {p1}, Lcom/github/javaparser/ast/body/TypeDeclaration;->getModifiers()Lcom/github/javaparser/ast/NodeList;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lcom/github/javaparser/ast/visitor/CloneVisitor;->cloneList(Lcom/github/javaparser/ast/NodeList;Ljava/lang/Object;)Lcom/github/javaparser/ast/NodeList;

    move-result-object v3

    .line 821
    invoke-virtual {p1}, Lcom/github/javaparser/ast/body/TypeDeclaration;->getName()Lcom/github/javaparser/ast/expr/SimpleName;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/github/javaparser/ast/visitor/CloneVisitor;->cloneNode(Lcom/github/javaparser/ast/Node;Ljava/lang/Object;)Lcom/github/javaparser/ast/Node;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Lcom/github/javaparser/ast/expr/SimpleName;

    .line 822
    invoke-virtual {p1}, Lcom/github/javaparser/ast/body/BodyDeclaration;->getAnnotations()Lcom/github/javaparser/ast/NodeList;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lcom/github/javaparser/ast/visitor/CloneVisitor;->cloneList(Lcom/github/javaparser/ast/NodeList;Ljava/lang/Object;)Lcom/github/javaparser/ast/NodeList;

    move-result-object v4

    .line 823
    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getComment()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/github/javaparser/ast/visitor/CloneVisitor;->cloneNode(Ljava/util/Optional;Ljava/lang/Object;)Lcom/github/javaparser/ast/Node;

    move-result-object p2

    check-cast p2, Lcom/github/javaparser/ast/comments/Comment;

    .line 824
    new-instance v0, Lcom/github/javaparser/ast/body/RecordDeclaration;

    .line 825
    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getTokenRange()Ljava/util/Optional;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/github/javaparser/TokenRange;

    move-object v1, v0

    invoke-direct/range {v1 .. v10}, Lcom/github/javaparser/ast/body/RecordDeclaration;-><init>(Lcom/github/javaparser/TokenRange;Lcom/github/javaparser/ast/NodeList;Lcom/github/javaparser/ast/NodeList;Lcom/github/javaparser/ast/expr/SimpleName;Lcom/github/javaparser/ast/NodeList;Lcom/github/javaparser/ast/NodeList;Lcom/github/javaparser/ast/NodeList;Lcom/github/javaparser/ast/NodeList;Lcom/github/javaparser/ast/body/ReceiverParameter;)V

    .line 826
    invoke-virtual {v0, p2}, Lcom/github/javaparser/ast/Node;->setComment(Lcom/github/javaparser/ast/comments/Comment;)Lcom/github/javaparser/ast/Node;

    .line 827
    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getOrphanComments()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object p2

    new-instance v1, Lc0/a;

    invoke-direct {v1}, Lc0/a;-><init>()V

    invoke-interface {p2, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p2

    new-instance v1, Lc0/B;

    invoke-direct {v1, v0}, Lc0/B;-><init>(Lcom/github/javaparser/ast/body/RecordDeclaration;)V

    invoke-interface {p2, v1}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    .line 828
    invoke-direct {p0, p1, v0}, Lcom/github/javaparser/ast/visitor/CloneVisitor;->copyData(Lcom/github/javaparser/ast/Node;Lcom/github/javaparser/ast/Node;)V

    return-object v0
.end method

.method public visit(Lcom/github/javaparser/ast/body/VariableDeclarator;Ljava/lang/Object;)Lcom/github/javaparser/ast/visitor/Visitable;
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 204
    invoke-virtual {p1}, Lcom/github/javaparser/ast/body/VariableDeclarator;->getInitializer()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/github/javaparser/ast/visitor/CloneVisitor;->cloneNode(Ljava/util/Optional;Ljava/lang/Object;)Lcom/github/javaparser/ast/Node;

    move-result-object v0

    check-cast v0, Lcom/github/javaparser/ast/expr/Expression;

    .line 205
    invoke-virtual {p1}, Lcom/github/javaparser/ast/body/VariableDeclarator;->getName()Lcom/github/javaparser/ast/expr/SimpleName;

    move-result-object v1

    invoke-virtual {p0, v1, p2}, Lcom/github/javaparser/ast/visitor/CloneVisitor;->cloneNode(Lcom/github/javaparser/ast/Node;Ljava/lang/Object;)Lcom/github/javaparser/ast/Node;

    move-result-object v1

    check-cast v1, Lcom/github/javaparser/ast/expr/SimpleName;

    .line 206
    invoke-virtual {p1}, Lcom/github/javaparser/ast/body/VariableDeclarator;->getType()Lcom/github/javaparser/ast/type/Type;

    move-result-object v2

    invoke-virtual {p0, v2, p2}, Lcom/github/javaparser/ast/visitor/CloneVisitor;->cloneNode(Lcom/github/javaparser/ast/Node;Ljava/lang/Object;)Lcom/github/javaparser/ast/Node;

    move-result-object v2

    check-cast v2, Lcom/github/javaparser/ast/type/Type;

    .line 207
    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getComment()Ljava/util/Optional;

    move-result-object v3

    invoke-virtual {p0, v3, p2}, Lcom/github/javaparser/ast/visitor/CloneVisitor;->cloneNode(Ljava/util/Optional;Ljava/lang/Object;)Lcom/github/javaparser/ast/Node;

    move-result-object p2

    check-cast p2, Lcom/github/javaparser/ast/comments/Comment;

    .line 208
    new-instance v3, Lcom/github/javaparser/ast/body/VariableDeclarator;

    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getTokenRange()Ljava/util/Optional;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/github/javaparser/TokenRange;

    invoke-direct {v3, v4, v2, v1, v0}, Lcom/github/javaparser/ast/body/VariableDeclarator;-><init>(Lcom/github/javaparser/TokenRange;Lcom/github/javaparser/ast/type/Type;Lcom/github/javaparser/ast/expr/SimpleName;Lcom/github/javaparser/ast/expr/Expression;)V

    .line 209
    invoke-virtual {v3, p2}, Lcom/github/javaparser/ast/Node;->setComment(Lcom/github/javaparser/ast/comments/Comment;)Lcom/github/javaparser/ast/Node;

    .line 210
    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getOrphanComments()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object p2

    new-instance v0, Lc0/a;

    invoke-direct {v0}, Lc0/a;-><init>()V

    invoke-interface {p2, v0}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p2

    new-instance v0, Lc0/k0;

    invoke-direct {v0, v3}, Lc0/k0;-><init>(Lcom/github/javaparser/ast/body/VariableDeclarator;)V

    invoke-interface {p2, v0}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    .line 211
    invoke-direct {p0, p1, v3}, Lcom/github/javaparser/ast/visitor/CloneVisitor;->copyData(Lcom/github/javaparser/ast/Node;Lcom/github/javaparser/ast/Node;)V

    return-object v3
.end method

.method public visit(Lcom/github/javaparser/ast/comments/BlockComment;Ljava/lang/Object;)Lcom/github/javaparser/ast/visitor/Visitable;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 133
    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getComment()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/github/javaparser/ast/visitor/CloneVisitor;->cloneNode(Ljava/util/Optional;Ljava/lang/Object;)Lcom/github/javaparser/ast/Node;

    move-result-object p2

    check-cast p2, Lcom/github/javaparser/ast/comments/Comment;

    .line 134
    new-instance v0, Lcom/github/javaparser/ast/comments/BlockComment;

    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getTokenRange()Ljava/util/Optional;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/github/javaparser/TokenRange;

    invoke-virtual {p1}, Lcom/github/javaparser/ast/comments/Comment;->getContent()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/github/javaparser/ast/comments/BlockComment;-><init>(Lcom/github/javaparser/TokenRange;Ljava/lang/String;)V

    .line 135
    invoke-virtual {v0, p2}, Lcom/github/javaparser/ast/comments/Comment;->setComment(Lcom/github/javaparser/ast/comments/Comment;)Lcom/github/javaparser/ast/Node;

    .line 136
    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getOrphanComments()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object p2

    new-instance v1, Lc0/a;

    invoke-direct {v1}, Lc0/a;-><init>()V

    invoke-interface {p2, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p2

    new-instance v1, Lc0/q0;

    invoke-direct {v1, v0}, Lc0/q0;-><init>(Lcom/github/javaparser/ast/comments/BlockComment;)V

    invoke-interface {p2, v1}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    .line 137
    invoke-direct {p0, p1, v0}, Lcom/github/javaparser/ast/visitor/CloneVisitor;->copyData(Lcom/github/javaparser/ast/Node;Lcom/github/javaparser/ast/Node;)V

    return-object v0
.end method

.method public visit(Lcom/github/javaparser/ast/comments/JavadocComment;Ljava/lang/Object;)Lcom/github/javaparser/ast/visitor/Visitable;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 259
    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getComment()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/github/javaparser/ast/visitor/CloneVisitor;->cloneNode(Ljava/util/Optional;Ljava/lang/Object;)Lcom/github/javaparser/ast/Node;

    move-result-object p2

    check-cast p2, Lcom/github/javaparser/ast/comments/Comment;

    .line 260
    new-instance v0, Lcom/github/javaparser/ast/comments/JavadocComment;

    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getTokenRange()Ljava/util/Optional;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/github/javaparser/TokenRange;

    invoke-virtual {p1}, Lcom/github/javaparser/ast/comments/Comment;->getContent()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/github/javaparser/ast/comments/JavadocComment;-><init>(Lcom/github/javaparser/TokenRange;Ljava/lang/String;)V

    .line 261
    invoke-virtual {v0, p2}, Lcom/github/javaparser/ast/comments/Comment;->setComment(Lcom/github/javaparser/ast/comments/Comment;)Lcom/github/javaparser/ast/Node;

    .line 262
    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getOrphanComments()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object p2

    new-instance v1, Lc0/a;

    invoke-direct {v1}, Lc0/a;-><init>()V

    invoke-interface {p2, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p2

    new-instance v1, Lc0/Z;

    invoke-direct {v1, v0}, Lc0/Z;-><init>(Lcom/github/javaparser/ast/comments/JavadocComment;)V

    invoke-interface {p2, v1}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    .line 263
    invoke-direct {p0, p1, v0}, Lcom/github/javaparser/ast/visitor/CloneVisitor;->copyData(Lcom/github/javaparser/ast/Node;Lcom/github/javaparser/ast/Node;)V

    return-object v0
.end method

.method public visit(Lcom/github/javaparser/ast/comments/LineComment;Ljava/lang/Object;)Lcom/github/javaparser/ast/visitor/Visitable;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 128
    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getComment()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/github/javaparser/ast/visitor/CloneVisitor;->cloneNode(Ljava/util/Optional;Ljava/lang/Object;)Lcom/github/javaparser/ast/Node;

    move-result-object p2

    check-cast p2, Lcom/github/javaparser/ast/comments/Comment;

    .line 129
    new-instance v0, Lcom/github/javaparser/ast/comments/LineComment;

    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getTokenRange()Ljava/util/Optional;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/github/javaparser/TokenRange;

    invoke-virtual {p1}, Lcom/github/javaparser/ast/comments/Comment;->getContent()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/github/javaparser/ast/comments/LineComment;-><init>(Lcom/github/javaparser/TokenRange;Ljava/lang/String;)V

    .line 130
    invoke-virtual {v0, p2}, Lcom/github/javaparser/ast/comments/Comment;->setComment(Lcom/github/javaparser/ast/comments/Comment;)Lcom/github/javaparser/ast/Node;

    .line 131
    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getOrphanComments()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object p2

    new-instance v1, Lc0/a;

    invoke-direct {v1}, Lc0/a;-><init>()V

    invoke-interface {p2, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p2

    new-instance v1, Lc0/c0;

    invoke-direct {v1, v0}, Lc0/c0;-><init>(Lcom/github/javaparser/ast/comments/LineComment;)V

    invoke-interface {p2, v1}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    .line 132
    invoke-direct {p0, p1, v0}, Lcom/github/javaparser/ast/visitor/CloneVisitor;->copyData(Lcom/github/javaparser/ast/Node;Lcom/github/javaparser/ast/Node;)V

    return-object v0
.end method

.method public visit(Lcom/github/javaparser/ast/expr/ArrayAccessExpr;Ljava/lang/Object;)Lcom/github/javaparser/ast/visitor/Visitable;
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 328
    invoke-virtual {p1}, Lcom/github/javaparser/ast/expr/ArrayAccessExpr;->getIndex()Lcom/github/javaparser/ast/expr/Expression;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/github/javaparser/ast/visitor/CloneVisitor;->cloneNode(Lcom/github/javaparser/ast/Node;Ljava/lang/Object;)Lcom/github/javaparser/ast/Node;

    move-result-object v0

    check-cast v0, Lcom/github/javaparser/ast/expr/Expression;

    .line 329
    invoke-virtual {p1}, Lcom/github/javaparser/ast/expr/ArrayAccessExpr;->getName()Lcom/github/javaparser/ast/expr/Expression;

    move-result-object v1

    invoke-virtual {p0, v1, p2}, Lcom/github/javaparser/ast/visitor/CloneVisitor;->cloneNode(Lcom/github/javaparser/ast/Node;Ljava/lang/Object;)Lcom/github/javaparser/ast/Node;

    move-result-object v1

    check-cast v1, Lcom/github/javaparser/ast/expr/Expression;

    .line 330
    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getComment()Ljava/util/Optional;

    move-result-object v2

    invoke-virtual {p0, v2, p2}, Lcom/github/javaparser/ast/visitor/CloneVisitor;->cloneNode(Ljava/util/Optional;Ljava/lang/Object;)Lcom/github/javaparser/ast/Node;

    move-result-object p2

    check-cast p2, Lcom/github/javaparser/ast/comments/Comment;

    .line 331
    new-instance v2, Lcom/github/javaparser/ast/expr/ArrayAccessExpr;

    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getTokenRange()Ljava/util/Optional;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/github/javaparser/TokenRange;

    invoke-direct {v2, v3, v1, v0}, Lcom/github/javaparser/ast/expr/ArrayAccessExpr;-><init>(Lcom/github/javaparser/TokenRange;Lcom/github/javaparser/ast/expr/Expression;Lcom/github/javaparser/ast/expr/Expression;)V

    .line 332
    invoke-virtual {v2, p2}, Lcom/github/javaparser/ast/Node;->setComment(Lcom/github/javaparser/ast/comments/Comment;)Lcom/github/javaparser/ast/Node;

    .line 333
    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getOrphanComments()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object p2

    new-instance v0, Lc0/a;

    invoke-direct {v0}, Lc0/a;-><init>()V

    invoke-interface {p2, v0}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p2

    new-instance v0, Lc0/K0;

    invoke-direct {v0, v2}, Lc0/K0;-><init>(Lcom/github/javaparser/ast/expr/ArrayAccessExpr;)V

    invoke-interface {p2, v0}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    .line 334
    invoke-direct {p0, p1, v2}, Lcom/github/javaparser/ast/visitor/CloneVisitor;->copyData(Lcom/github/javaparser/ast/Node;Lcom/github/javaparser/ast/Node;)V

    return-object v2
.end method

.method public visit(Lcom/github/javaparser/ast/expr/ArrayCreationExpr;Ljava/lang/Object;)Lcom/github/javaparser/ast/visitor/Visitable;
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 335
    invoke-virtual {p1}, Lcom/github/javaparser/ast/expr/ArrayCreationExpr;->getElementType()Lcom/github/javaparser/ast/type/Type;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/github/javaparser/ast/visitor/CloneVisitor;->cloneNode(Lcom/github/javaparser/ast/Node;Ljava/lang/Object;)Lcom/github/javaparser/ast/Node;

    move-result-object v0

    check-cast v0, Lcom/github/javaparser/ast/type/Type;

    .line 336
    invoke-virtual {p1}, Lcom/github/javaparser/ast/expr/ArrayCreationExpr;->getInitializer()Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {p0, v1, p2}, Lcom/github/javaparser/ast/visitor/CloneVisitor;->cloneNode(Ljava/util/Optional;Ljava/lang/Object;)Lcom/github/javaparser/ast/Node;

    move-result-object v1

    check-cast v1, Lcom/github/javaparser/ast/expr/ArrayInitializerExpr;

    .line 337
    invoke-virtual {p1}, Lcom/github/javaparser/ast/expr/ArrayCreationExpr;->getLevels()Lcom/github/javaparser/ast/NodeList;

    move-result-object v2

    invoke-direct {p0, v2, p2}, Lcom/github/javaparser/ast/visitor/CloneVisitor;->cloneList(Lcom/github/javaparser/ast/NodeList;Ljava/lang/Object;)Lcom/github/javaparser/ast/NodeList;

    move-result-object v2

    .line 338
    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getComment()Ljava/util/Optional;

    move-result-object v3

    invoke-virtual {p0, v3, p2}, Lcom/github/javaparser/ast/visitor/CloneVisitor;->cloneNode(Ljava/util/Optional;Ljava/lang/Object;)Lcom/github/javaparser/ast/Node;

    move-result-object p2

    check-cast p2, Lcom/github/javaparser/ast/comments/Comment;

    .line 339
    new-instance v3, Lcom/github/javaparser/ast/expr/ArrayCreationExpr;

    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getTokenRange()Ljava/util/Optional;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/github/javaparser/TokenRange;

    invoke-direct {v3, v4, v0, v2, v1}, Lcom/github/javaparser/ast/expr/ArrayCreationExpr;-><init>(Lcom/github/javaparser/TokenRange;Lcom/github/javaparser/ast/type/Type;Lcom/github/javaparser/ast/NodeList;Lcom/github/javaparser/ast/expr/ArrayInitializerExpr;)V

    .line 340
    invoke-virtual {v3, p2}, Lcom/github/javaparser/ast/Node;->setComment(Lcom/github/javaparser/ast/comments/Comment;)Lcom/github/javaparser/ast/Node;

    .line 341
    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getOrphanComments()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object p2

    new-instance v0, Lc0/a;

    invoke-direct {v0}, Lc0/a;-><init>()V

    invoke-interface {p2, v0}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p2

    new-instance v0, Lc0/w;

    invoke-direct {v0, v3}, Lc0/w;-><init>(Lcom/github/javaparser/ast/expr/ArrayCreationExpr;)V

    invoke-interface {p2, v0}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    .line 342
    invoke-direct {p0, p1, v3}, Lcom/github/javaparser/ast/visitor/CloneVisitor;->copyData(Lcom/github/javaparser/ast/Node;Lcom/github/javaparser/ast/Node;)V

    return-object v3
.end method

.method public visit(Lcom/github/javaparser/ast/expr/ArrayInitializerExpr;Ljava/lang/Object;)Lcom/github/javaparser/ast/visitor/Visitable;
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 343
    invoke-virtual {p1}, Lcom/github/javaparser/ast/expr/ArrayInitializerExpr;->getValues()Lcom/github/javaparser/ast/NodeList;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lcom/github/javaparser/ast/visitor/CloneVisitor;->cloneList(Lcom/github/javaparser/ast/NodeList;Ljava/lang/Object;)Lcom/github/javaparser/ast/NodeList;

    move-result-object v0

    .line 344
    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getComment()Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {p0, v1, p2}, Lcom/github/javaparser/ast/visitor/CloneVisitor;->cloneNode(Ljava/util/Optional;Ljava/lang/Object;)Lcom/github/javaparser/ast/Node;

    move-result-object p2

    check-cast p2, Lcom/github/javaparser/ast/comments/Comment;

    .line 345
    new-instance v1, Lcom/github/javaparser/ast/expr/ArrayInitializerExpr;

    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getTokenRange()Ljava/util/Optional;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/github/javaparser/TokenRange;

    invoke-direct {v1, v2, v0}, Lcom/github/javaparser/ast/expr/ArrayInitializerExpr;-><init>(Lcom/github/javaparser/TokenRange;Lcom/github/javaparser/ast/NodeList;)V

    .line 346
    invoke-virtual {v1, p2}, Lcom/github/javaparser/ast/Node;->setComment(Lcom/github/javaparser/ast/comments/Comment;)Lcom/github/javaparser/ast/Node;

    .line 347
    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getOrphanComments()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object p2

    new-instance v0, Lc0/a;

    invoke-direct {v0}, Lc0/a;-><init>()V

    invoke-interface {p2, v0}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p2

    new-instance v0, Lc0/v0;

    invoke-direct {v0, v1}, Lc0/v0;-><init>(Lcom/github/javaparser/ast/expr/ArrayInitializerExpr;)V

    invoke-interface {p2, v0}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    .line 348
    invoke-direct {p0, p1, v1}, Lcom/github/javaparser/ast/visitor/CloneVisitor;->copyData(Lcom/github/javaparser/ast/Node;Lcom/github/javaparser/ast/Node;)V

    return-object v1
.end method

.method public visit(Lcom/github/javaparser/ast/expr/AssignExpr;Ljava/lang/Object;)Lcom/github/javaparser/ast/visitor/Visitable;
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 349
    invoke-virtual {p1}, Lcom/github/javaparser/ast/expr/AssignExpr;->getTarget()Lcom/github/javaparser/ast/expr/Expression;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/github/javaparser/ast/visitor/CloneVisitor;->cloneNode(Lcom/github/javaparser/ast/Node;Ljava/lang/Object;)Lcom/github/javaparser/ast/Node;

    move-result-object v0

    check-cast v0, Lcom/github/javaparser/ast/expr/Expression;

    .line 350
    invoke-virtual {p1}, Lcom/github/javaparser/ast/expr/AssignExpr;->getValue()Lcom/github/javaparser/ast/expr/Expression;

    move-result-object v1

    invoke-virtual {p0, v1, p2}, Lcom/github/javaparser/ast/visitor/CloneVisitor;->cloneNode(Lcom/github/javaparser/ast/Node;Ljava/lang/Object;)Lcom/github/javaparser/ast/Node;

    move-result-object v1

    check-cast v1, Lcom/github/javaparser/ast/expr/Expression;

    .line 351
    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getComment()Ljava/util/Optional;

    move-result-object v2

    invoke-virtual {p0, v2, p2}, Lcom/github/javaparser/ast/visitor/CloneVisitor;->cloneNode(Ljava/util/Optional;Ljava/lang/Object;)Lcom/github/javaparser/ast/Node;

    move-result-object p2

    check-cast p2, Lcom/github/javaparser/ast/comments/Comment;

    .line 352
    new-instance v2, Lcom/github/javaparser/ast/expr/AssignExpr;

    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getTokenRange()Ljava/util/Optional;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/github/javaparser/TokenRange;

    invoke-virtual {p1}, Lcom/github/javaparser/ast/expr/AssignExpr;->getOperator()Lcom/github/javaparser/ast/expr/AssignExpr$Operator;

    move-result-object v4

    invoke-direct {v2, v3, v0, v1, v4}, Lcom/github/javaparser/ast/expr/AssignExpr;-><init>(Lcom/github/javaparser/TokenRange;Lcom/github/javaparser/ast/expr/Expression;Lcom/github/javaparser/ast/expr/Expression;Lcom/github/javaparser/ast/expr/AssignExpr$Operator;)V

    .line 353
    invoke-virtual {v2, p2}, Lcom/github/javaparser/ast/Node;->setComment(Lcom/github/javaparser/ast/comments/Comment;)Lcom/github/javaparser/ast/Node;

    .line 354
    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getOrphanComments()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object p2

    new-instance v0, Lc0/a;

    invoke-direct {v0}, Lc0/a;-><init>()V

    invoke-interface {p2, v0}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p2

    new-instance v0, Lc0/J0;

    invoke-direct {v0, v2}, Lc0/J0;-><init>(Lcom/github/javaparser/ast/expr/AssignExpr;)V

    invoke-interface {p2, v0}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    .line 355
    invoke-direct {p0, p1, v2}, Lcom/github/javaparser/ast/visitor/CloneVisitor;->copyData(Lcom/github/javaparser/ast/Node;Lcom/github/javaparser/ast/Node;)V

    return-object v2
.end method

.method public visit(Lcom/github/javaparser/ast/expr/BinaryExpr;Ljava/lang/Object;)Lcom/github/javaparser/ast/visitor/Visitable;
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 356
    invoke-virtual {p1}, Lcom/github/javaparser/ast/expr/BinaryExpr;->getLeft()Lcom/github/javaparser/ast/expr/Expression;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/github/javaparser/ast/visitor/CloneVisitor;->cloneNode(Lcom/github/javaparser/ast/Node;Ljava/lang/Object;)Lcom/github/javaparser/ast/Node;

    move-result-object v0

    check-cast v0, Lcom/github/javaparser/ast/expr/Expression;

    .line 357
    invoke-virtual {p1}, Lcom/github/javaparser/ast/expr/BinaryExpr;->getRight()Lcom/github/javaparser/ast/expr/Expression;

    move-result-object v1

    invoke-virtual {p0, v1, p2}, Lcom/github/javaparser/ast/visitor/CloneVisitor;->cloneNode(Lcom/github/javaparser/ast/Node;Ljava/lang/Object;)Lcom/github/javaparser/ast/Node;

    move-result-object v1

    check-cast v1, Lcom/github/javaparser/ast/expr/Expression;

    .line 358
    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getComment()Ljava/util/Optional;

    move-result-object v2

    invoke-virtual {p0, v2, p2}, Lcom/github/javaparser/ast/visitor/CloneVisitor;->cloneNode(Ljava/util/Optional;Ljava/lang/Object;)Lcom/github/javaparser/ast/Node;

    move-result-object p2

    check-cast p2, Lcom/github/javaparser/ast/comments/Comment;

    .line 359
    new-instance v2, Lcom/github/javaparser/ast/expr/BinaryExpr;

    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getTokenRange()Ljava/util/Optional;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/github/javaparser/TokenRange;

    invoke-virtual {p1}, Lcom/github/javaparser/ast/expr/BinaryExpr;->getOperator()Lcom/github/javaparser/ast/expr/BinaryExpr$Operator;

    move-result-object v4

    invoke-direct {v2, v3, v0, v1, v4}, Lcom/github/javaparser/ast/expr/BinaryExpr;-><init>(Lcom/github/javaparser/TokenRange;Lcom/github/javaparser/ast/expr/Expression;Lcom/github/javaparser/ast/expr/Expression;Lcom/github/javaparser/ast/expr/BinaryExpr$Operator;)V

    .line 360
    invoke-virtual {v2, p2}, Lcom/github/javaparser/ast/Node;->setComment(Lcom/github/javaparser/ast/comments/Comment;)Lcom/github/javaparser/ast/Node;

    .line 361
    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getOrphanComments()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object p2

    new-instance v0, Lc0/a;

    invoke-direct {v0}, Lc0/a;-><init>()V

    invoke-interface {p2, v0}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p2

    new-instance v0, Lc0/r0;

    invoke-direct {v0, v2}, Lc0/r0;-><init>(Lcom/github/javaparser/ast/expr/BinaryExpr;)V

    invoke-interface {p2, v0}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    .line 362
    invoke-direct {p0, p1, v2}, Lcom/github/javaparser/ast/visitor/CloneVisitor;->copyData(Lcom/github/javaparser/ast/Node;Lcom/github/javaparser/ast/Node;)V

    return-object v2
.end method

.method public visit(Lcom/github/javaparser/ast/expr/BooleanLiteralExpr;Ljava/lang/Object;)Lcom/github/javaparser/ast/visitor/Visitable;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 431
    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getComment()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/github/javaparser/ast/visitor/CloneVisitor;->cloneNode(Ljava/util/Optional;Ljava/lang/Object;)Lcom/github/javaparser/ast/Node;

    move-result-object p2

    check-cast p2, Lcom/github/javaparser/ast/comments/Comment;

    .line 432
    new-instance v0, Lcom/github/javaparser/ast/expr/BooleanLiteralExpr;

    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getTokenRange()Ljava/util/Optional;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/github/javaparser/TokenRange;

    invoke-virtual {p1}, Lcom/github/javaparser/ast/expr/BooleanLiteralExpr;->isValue()Z

    move-result v2

    invoke-direct {v0, v1, v2}, Lcom/github/javaparser/ast/expr/BooleanLiteralExpr;-><init>(Lcom/github/javaparser/TokenRange;Z)V

    .line 433
    invoke-virtual {v0, p2}, Lcom/github/javaparser/ast/Node;->setComment(Lcom/github/javaparser/ast/comments/Comment;)Lcom/github/javaparser/ast/Node;

    .line 434
    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getOrphanComments()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object p2

    new-instance v1, Lc0/a;

    invoke-direct {v1}, Lc0/a;-><init>()V

    invoke-interface {p2, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p2

    new-instance v1, Lc0/f;

    invoke-direct {v1, v0}, Lc0/f;-><init>(Lcom/github/javaparser/ast/expr/BooleanLiteralExpr;)V

    invoke-interface {p2, v1}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    .line 435
    invoke-direct {p0, p1, v0}, Lcom/github/javaparser/ast/visitor/CloneVisitor;->copyData(Lcom/github/javaparser/ast/Node;Lcom/github/javaparser/ast/Node;)V

    return-object v0
.end method

.method public visit(Lcom/github/javaparser/ast/expr/CastExpr;Ljava/lang/Object;)Lcom/github/javaparser/ast/visitor/Visitable;
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 363
    invoke-virtual {p1}, Lcom/github/javaparser/ast/expr/CastExpr;->getExpression()Lcom/github/javaparser/ast/expr/Expression;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/github/javaparser/ast/visitor/CloneVisitor;->cloneNode(Lcom/github/javaparser/ast/Node;Ljava/lang/Object;)Lcom/github/javaparser/ast/Node;

    move-result-object v0

    check-cast v0, Lcom/github/javaparser/ast/expr/Expression;

    .line 364
    invoke-virtual {p1}, Lcom/github/javaparser/ast/expr/CastExpr;->getType()Lcom/github/javaparser/ast/type/Type;

    move-result-object v1

    invoke-virtual {p0, v1, p2}, Lcom/github/javaparser/ast/visitor/CloneVisitor;->cloneNode(Lcom/github/javaparser/ast/Node;Ljava/lang/Object;)Lcom/github/javaparser/ast/Node;

    move-result-object v1

    check-cast v1, Lcom/github/javaparser/ast/type/Type;

    .line 365
    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getComment()Ljava/util/Optional;

    move-result-object v2

    invoke-virtual {p0, v2, p2}, Lcom/github/javaparser/ast/visitor/CloneVisitor;->cloneNode(Ljava/util/Optional;Ljava/lang/Object;)Lcom/github/javaparser/ast/Node;

    move-result-object p2

    check-cast p2, Lcom/github/javaparser/ast/comments/Comment;

    .line 366
    new-instance v2, Lcom/github/javaparser/ast/expr/CastExpr;

    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getTokenRange()Ljava/util/Optional;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/github/javaparser/TokenRange;

    invoke-direct {v2, v3, v1, v0}, Lcom/github/javaparser/ast/expr/CastExpr;-><init>(Lcom/github/javaparser/TokenRange;Lcom/github/javaparser/ast/type/Type;Lcom/github/javaparser/ast/expr/Expression;)V

    .line 367
    invoke-virtual {v2, p2}, Lcom/github/javaparser/ast/Node;->setComment(Lcom/github/javaparser/ast/comments/Comment;)Lcom/github/javaparser/ast/Node;

    .line 368
    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getOrphanComments()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object p2

    new-instance v0, Lc0/a;

    invoke-direct {v0}, Lc0/a;-><init>()V

    invoke-interface {p2, v0}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p2

    new-instance v0, Lc0/I;

    invoke-direct {v0, v2}, Lc0/I;-><init>(Lcom/github/javaparser/ast/expr/CastExpr;)V

    invoke-interface {p2, v0}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    .line 369
    invoke-direct {p0, p1, v2}, Lcom/github/javaparser/ast/visitor/CloneVisitor;->copyData(Lcom/github/javaparser/ast/Node;Lcom/github/javaparser/ast/Node;)V

    return-object v2
.end method

.method public visit(Lcom/github/javaparser/ast/expr/CharLiteralExpr;Ljava/lang/Object;)Lcom/github/javaparser/ast/visitor/Visitable;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 421
    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getComment()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/github/javaparser/ast/visitor/CloneVisitor;->cloneNode(Ljava/util/Optional;Ljava/lang/Object;)Lcom/github/javaparser/ast/Node;

    move-result-object p2

    check-cast p2, Lcom/github/javaparser/ast/comments/Comment;

    .line 422
    new-instance v0, Lcom/github/javaparser/ast/expr/CharLiteralExpr;

    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getTokenRange()Ljava/util/Optional;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/github/javaparser/TokenRange;

    invoke-virtual {p1}, Lcom/github/javaparser/ast/expr/LiteralStringValueExpr;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/github/javaparser/ast/expr/CharLiteralExpr;-><init>(Lcom/github/javaparser/TokenRange;Ljava/lang/String;)V

    .line 423
    invoke-virtual {v0, p2}, Lcom/github/javaparser/ast/Node;->setComment(Lcom/github/javaparser/ast/comments/Comment;)Lcom/github/javaparser/ast/Node;

    .line 424
    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getOrphanComments()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object p2

    new-instance v1, Lc0/a;

    invoke-direct {v1}, Lc0/a;-><init>()V

    invoke-interface {p2, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p2

    new-instance v1, Lc0/Y0;

    invoke-direct {v1, v0}, Lc0/Y0;-><init>(Lcom/github/javaparser/ast/expr/CharLiteralExpr;)V

    invoke-interface {p2, v1}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    .line 425
    invoke-direct {p0, p1, v0}, Lcom/github/javaparser/ast/visitor/CloneVisitor;->copyData(Lcom/github/javaparser/ast/Node;Lcom/github/javaparser/ast/Node;)V

    return-object v0
.end method

.method public visit(Lcom/github/javaparser/ast/expr/ClassExpr;Ljava/lang/Object;)Lcom/github/javaparser/ast/visitor/Visitable;
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 370
    invoke-virtual {p1}, Lcom/github/javaparser/ast/expr/ClassExpr;->getType()Lcom/github/javaparser/ast/type/Type;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/github/javaparser/ast/visitor/CloneVisitor;->cloneNode(Lcom/github/javaparser/ast/Node;Ljava/lang/Object;)Lcom/github/javaparser/ast/Node;

    move-result-object v0

    check-cast v0, Lcom/github/javaparser/ast/type/Type;

    .line 371
    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getComment()Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {p0, v1, p2}, Lcom/github/javaparser/ast/visitor/CloneVisitor;->cloneNode(Ljava/util/Optional;Ljava/lang/Object;)Lcom/github/javaparser/ast/Node;

    move-result-object p2

    check-cast p2, Lcom/github/javaparser/ast/comments/Comment;

    .line 372
    new-instance v1, Lcom/github/javaparser/ast/expr/ClassExpr;

    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getTokenRange()Ljava/util/Optional;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/github/javaparser/TokenRange;

    invoke-direct {v1, v2, v0}, Lcom/github/javaparser/ast/expr/ClassExpr;-><init>(Lcom/github/javaparser/TokenRange;Lcom/github/javaparser/ast/type/Type;)V

    .line 373
    invoke-virtual {v1, p2}, Lcom/github/javaparser/ast/Node;->setComment(Lcom/github/javaparser/ast/comments/Comment;)Lcom/github/javaparser/ast/Node;

    .line 374
    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getOrphanComments()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object p2

    new-instance v0, Lc0/a;

    invoke-direct {v0}, Lc0/a;-><init>()V

    invoke-interface {p2, v0}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p2

    new-instance v0, Lc0/o0;

    invoke-direct {v0, v1}, Lc0/o0;-><init>(Lcom/github/javaparser/ast/expr/ClassExpr;)V

    invoke-interface {p2, v0}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    .line 375
    invoke-direct {p0, p1, v1}, Lcom/github/javaparser/ast/visitor/CloneVisitor;->copyData(Lcom/github/javaparser/ast/Node;Lcom/github/javaparser/ast/Node;)V

    return-object v1
.end method

.method public visit(Lcom/github/javaparser/ast/expr/ConditionalExpr;Ljava/lang/Object;)Lcom/github/javaparser/ast/visitor/Visitable;
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 376
    invoke-virtual {p1}, Lcom/github/javaparser/ast/expr/ConditionalExpr;->getCondition()Lcom/github/javaparser/ast/expr/Expression;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/github/javaparser/ast/visitor/CloneVisitor;->cloneNode(Lcom/github/javaparser/ast/Node;Ljava/lang/Object;)Lcom/github/javaparser/ast/Node;

    move-result-object v0

    check-cast v0, Lcom/github/javaparser/ast/expr/Expression;

    .line 377
    invoke-virtual {p1}, Lcom/github/javaparser/ast/expr/ConditionalExpr;->getElseExpr()Lcom/github/javaparser/ast/expr/Expression;

    move-result-object v1

    invoke-virtual {p0, v1, p2}, Lcom/github/javaparser/ast/visitor/CloneVisitor;->cloneNode(Lcom/github/javaparser/ast/Node;Ljava/lang/Object;)Lcom/github/javaparser/ast/Node;

    move-result-object v1

    check-cast v1, Lcom/github/javaparser/ast/expr/Expression;

    .line 378
    invoke-virtual {p1}, Lcom/github/javaparser/ast/expr/ConditionalExpr;->getThenExpr()Lcom/github/javaparser/ast/expr/Expression;

    move-result-object v2

    invoke-virtual {p0, v2, p2}, Lcom/github/javaparser/ast/visitor/CloneVisitor;->cloneNode(Lcom/github/javaparser/ast/Node;Ljava/lang/Object;)Lcom/github/javaparser/ast/Node;

    move-result-object v2

    check-cast v2, Lcom/github/javaparser/ast/expr/Expression;

    .line 379
    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getComment()Ljava/util/Optional;

    move-result-object v3

    invoke-virtual {p0, v3, p2}, Lcom/github/javaparser/ast/visitor/CloneVisitor;->cloneNode(Ljava/util/Optional;Ljava/lang/Object;)Lcom/github/javaparser/ast/Node;

    move-result-object p2

    check-cast p2, Lcom/github/javaparser/ast/comments/Comment;

    .line 380
    new-instance v3, Lcom/github/javaparser/ast/expr/ConditionalExpr;

    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getTokenRange()Ljava/util/Optional;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/github/javaparser/TokenRange;

    invoke-direct {v3, v4, v0, v2, v1}, Lcom/github/javaparser/ast/expr/ConditionalExpr;-><init>(Lcom/github/javaparser/TokenRange;Lcom/github/javaparser/ast/expr/Expression;Lcom/github/javaparser/ast/expr/Expression;Lcom/github/javaparser/ast/expr/Expression;)V

    .line 381
    invoke-virtual {v3, p2}, Lcom/github/javaparser/ast/Node;->setComment(Lcom/github/javaparser/ast/comments/Comment;)Lcom/github/javaparser/ast/Node;

    .line 382
    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getOrphanComments()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object p2

    new-instance v0, Lc0/a;

    invoke-direct {v0}, Lc0/a;-><init>()V

    invoke-interface {p2, v0}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p2

    new-instance v0, Lc0/M;

    invoke-direct {v0, v3}, Lc0/M;-><init>(Lcom/github/javaparser/ast/expr/ConditionalExpr;)V

    invoke-interface {p2, v0}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    .line 383
    invoke-direct {p0, p1, v3}, Lcom/github/javaparser/ast/visitor/CloneVisitor;->copyData(Lcom/github/javaparser/ast/Node;Lcom/github/javaparser/ast/Node;)V

    return-object v3
.end method

.method public visit(Lcom/github/javaparser/ast/expr/DoubleLiteralExpr;Ljava/lang/Object;)Lcom/github/javaparser/ast/visitor/Visitable;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 426
    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getComment()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/github/javaparser/ast/visitor/CloneVisitor;->cloneNode(Ljava/util/Optional;Ljava/lang/Object;)Lcom/github/javaparser/ast/Node;

    move-result-object p2

    check-cast p2, Lcom/github/javaparser/ast/comments/Comment;

    .line 427
    new-instance v0, Lcom/github/javaparser/ast/expr/DoubleLiteralExpr;

    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getTokenRange()Ljava/util/Optional;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/github/javaparser/TokenRange;

    invoke-virtual {p1}, Lcom/github/javaparser/ast/expr/LiteralStringValueExpr;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/github/javaparser/ast/expr/DoubleLiteralExpr;-><init>(Lcom/github/javaparser/TokenRange;Ljava/lang/String;)V

    .line 428
    invoke-virtual {v0, p2}, Lcom/github/javaparser/ast/Node;->setComment(Lcom/github/javaparser/ast/comments/Comment;)Lcom/github/javaparser/ast/Node;

    .line 429
    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getOrphanComments()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object p2

    new-instance v1, Lc0/a;

    invoke-direct {v1}, Lc0/a;-><init>()V

    invoke-interface {p2, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p2

    new-instance v1, Lc0/u0;

    invoke-direct {v1, v0}, Lc0/u0;-><init>(Lcom/github/javaparser/ast/expr/DoubleLiteralExpr;)V

    invoke-interface {p2, v1}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    .line 430
    invoke-direct {p0, p1, v0}, Lcom/github/javaparser/ast/visitor/CloneVisitor;->copyData(Lcom/github/javaparser/ast/Node;Lcom/github/javaparser/ast/Node;)V

    return-object v0
.end method

.method public visit(Lcom/github/javaparser/ast/expr/EnclosedExpr;Ljava/lang/Object;)Lcom/github/javaparser/ast/visitor/Visitable;
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 384
    invoke-virtual {p1}, Lcom/github/javaparser/ast/expr/EnclosedExpr;->getInner()Lcom/github/javaparser/ast/expr/Expression;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/github/javaparser/ast/visitor/CloneVisitor;->cloneNode(Lcom/github/javaparser/ast/Node;Ljava/lang/Object;)Lcom/github/javaparser/ast/Node;

    move-result-object v0

    check-cast v0, Lcom/github/javaparser/ast/expr/Expression;

    .line 385
    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getComment()Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {p0, v1, p2}, Lcom/github/javaparser/ast/visitor/CloneVisitor;->cloneNode(Ljava/util/Optional;Ljava/lang/Object;)Lcom/github/javaparser/ast/Node;

    move-result-object p2

    check-cast p2, Lcom/github/javaparser/ast/comments/Comment;

    .line 386
    new-instance v1, Lcom/github/javaparser/ast/expr/EnclosedExpr;

    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getTokenRange()Ljava/util/Optional;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/github/javaparser/TokenRange;

    invoke-direct {v1, v2, v0}, Lcom/github/javaparser/ast/expr/EnclosedExpr;-><init>(Lcom/github/javaparser/TokenRange;Lcom/github/javaparser/ast/expr/Expression;)V

    .line 387
    invoke-virtual {v1, p2}, Lcom/github/javaparser/ast/Node;->setComment(Lcom/github/javaparser/ast/comments/Comment;)Lcom/github/javaparser/ast/Node;

    .line 388
    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getOrphanComments()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object p2

    new-instance v0, Lc0/a;

    invoke-direct {v0}, Lc0/a;-><init>()V

    invoke-interface {p2, v0}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p2

    new-instance v0, Lc0/r;

    invoke-direct {v0, v1}, Lc0/r;-><init>(Lcom/github/javaparser/ast/expr/EnclosedExpr;)V

    invoke-interface {p2, v0}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    .line 389
    invoke-direct {p0, p1, v1}, Lcom/github/javaparser/ast/visitor/CloneVisitor;->copyData(Lcom/github/javaparser/ast/Node;Lcom/github/javaparser/ast/Node;)V

    return-object v1
.end method

.method public visit(Lcom/github/javaparser/ast/expr/FieldAccessExpr;Ljava/lang/Object;)Lcom/github/javaparser/ast/visitor/Visitable;
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 390
    invoke-virtual {p1}, Lcom/github/javaparser/ast/expr/FieldAccessExpr;->getName()Lcom/github/javaparser/ast/expr/SimpleName;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/github/javaparser/ast/visitor/CloneVisitor;->cloneNode(Lcom/github/javaparser/ast/Node;Ljava/lang/Object;)Lcom/github/javaparser/ast/Node;

    move-result-object v0

    check-cast v0, Lcom/github/javaparser/ast/expr/SimpleName;

    .line 391
    invoke-virtual {p1}, Lcom/github/javaparser/ast/expr/FieldAccessExpr;->getScope()Lcom/github/javaparser/ast/expr/Expression;

    move-result-object v1

    invoke-virtual {p0, v1, p2}, Lcom/github/javaparser/ast/visitor/CloneVisitor;->cloneNode(Lcom/github/javaparser/ast/Node;Ljava/lang/Object;)Lcom/github/javaparser/ast/Node;

    move-result-object v1

    check-cast v1, Lcom/github/javaparser/ast/expr/Expression;

    .line 392
    invoke-virtual {p1}, Lcom/github/javaparser/ast/expr/FieldAccessExpr;->getTypeArguments()Ljava/util/Optional;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/github/javaparser/ast/NodeList;

    invoke-direct {p0, v2, p2}, Lcom/github/javaparser/ast/visitor/CloneVisitor;->cloneList(Lcom/github/javaparser/ast/NodeList;Ljava/lang/Object;)Lcom/github/javaparser/ast/NodeList;

    move-result-object v2

    .line 393
    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getComment()Ljava/util/Optional;

    move-result-object v4

    invoke-virtual {p0, v4, p2}, Lcom/github/javaparser/ast/visitor/CloneVisitor;->cloneNode(Ljava/util/Optional;Ljava/lang/Object;)Lcom/github/javaparser/ast/Node;

    move-result-object p2

    check-cast p2, Lcom/github/javaparser/ast/comments/Comment;

    .line 394
    new-instance v4, Lcom/github/javaparser/ast/expr/FieldAccessExpr;

    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getTokenRange()Ljava/util/Optional;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/github/javaparser/TokenRange;

    invoke-direct {v4, v3, v1, v2, v0}, Lcom/github/javaparser/ast/expr/FieldAccessExpr;-><init>(Lcom/github/javaparser/TokenRange;Lcom/github/javaparser/ast/expr/Expression;Lcom/github/javaparser/ast/NodeList;Lcom/github/javaparser/ast/expr/SimpleName;)V

    .line 395
    invoke-virtual {v4, p2}, Lcom/github/javaparser/ast/Node;->setComment(Lcom/github/javaparser/ast/comments/Comment;)Lcom/github/javaparser/ast/Node;

    .line 396
    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getOrphanComments()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object p2

    new-instance v0, Lc0/a;

    invoke-direct {v0}, Lc0/a;-><init>()V

    invoke-interface {p2, v0}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p2

    new-instance v0, Lc0/p0;

    invoke-direct {v0, v4}, Lc0/p0;-><init>(Lcom/github/javaparser/ast/expr/FieldAccessExpr;)V

    invoke-interface {p2, v0}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    .line 397
    invoke-direct {p0, p1, v4}, Lcom/github/javaparser/ast/visitor/CloneVisitor;->copyData(Lcom/github/javaparser/ast/Node;Lcom/github/javaparser/ast/Node;)V

    return-object v4
.end method

.method public visit(Lcom/github/javaparser/ast/expr/InstanceOfExpr;Ljava/lang/Object;)Lcom/github/javaparser/ast/visitor/Visitable;
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 398
    invoke-virtual {p1}, Lcom/github/javaparser/ast/expr/InstanceOfExpr;->getExpression()Lcom/github/javaparser/ast/expr/Expression;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/github/javaparser/ast/visitor/CloneVisitor;->cloneNode(Lcom/github/javaparser/ast/Node;Ljava/lang/Object;)Lcom/github/javaparser/ast/Node;

    move-result-object v0

    check-cast v0, Lcom/github/javaparser/ast/expr/Expression;

    .line 399
    invoke-virtual {p1}, Lcom/github/javaparser/ast/expr/InstanceOfExpr;->getPattern()Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {p0, v1, p2}, Lcom/github/javaparser/ast/visitor/CloneVisitor;->cloneNode(Ljava/util/Optional;Ljava/lang/Object;)Lcom/github/javaparser/ast/Node;

    move-result-object v1

    check-cast v1, Lcom/github/javaparser/ast/expr/PatternExpr;

    .line 400
    invoke-virtual {p1}, Lcom/github/javaparser/ast/expr/InstanceOfExpr;->getType()Lcom/github/javaparser/ast/type/ReferenceType;

    move-result-object v2

    invoke-virtual {p0, v2, p2}, Lcom/github/javaparser/ast/visitor/CloneVisitor;->cloneNode(Lcom/github/javaparser/ast/Node;Ljava/lang/Object;)Lcom/github/javaparser/ast/Node;

    move-result-object v2

    check-cast v2, Lcom/github/javaparser/ast/type/ReferenceType;

    .line 401
    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getComment()Ljava/util/Optional;

    move-result-object v3

    invoke-virtual {p0, v3, p2}, Lcom/github/javaparser/ast/visitor/CloneVisitor;->cloneNode(Ljava/util/Optional;Ljava/lang/Object;)Lcom/github/javaparser/ast/Node;

    move-result-object p2

    check-cast p2, Lcom/github/javaparser/ast/comments/Comment;

    .line 402
    new-instance v3, Lcom/github/javaparser/ast/expr/InstanceOfExpr;

    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getTokenRange()Ljava/util/Optional;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/github/javaparser/TokenRange;

    invoke-direct {v3, v4, v0, v2, v1}, Lcom/github/javaparser/ast/expr/InstanceOfExpr;-><init>(Lcom/github/javaparser/TokenRange;Lcom/github/javaparser/ast/expr/Expression;Lcom/github/javaparser/ast/type/ReferenceType;Lcom/github/javaparser/ast/expr/PatternExpr;)V

    .line 403
    invoke-virtual {v3, p2}, Lcom/github/javaparser/ast/Node;->setComment(Lcom/github/javaparser/ast/comments/Comment;)Lcom/github/javaparser/ast/Node;

    .line 404
    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getOrphanComments()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object p2

    new-instance v0, Lc0/a;

    invoke-direct {v0}, Lc0/a;-><init>()V

    invoke-interface {p2, v0}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p2

    new-instance v0, Lc0/Q;

    invoke-direct {v0, v3}, Lc0/Q;-><init>(Lcom/github/javaparser/ast/expr/InstanceOfExpr;)V

    invoke-interface {p2, v0}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    .line 405
    invoke-direct {p0, p1, v3}, Lcom/github/javaparser/ast/visitor/CloneVisitor;->copyData(Lcom/github/javaparser/ast/Node;Lcom/github/javaparser/ast/Node;)V

    return-object v3
.end method

.method public visit(Lcom/github/javaparser/ast/expr/IntegerLiteralExpr;Ljava/lang/Object;)Lcom/github/javaparser/ast/visitor/Visitable;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 411
    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getComment()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/github/javaparser/ast/visitor/CloneVisitor;->cloneNode(Ljava/util/Optional;Ljava/lang/Object;)Lcom/github/javaparser/ast/Node;

    move-result-object p2

    check-cast p2, Lcom/github/javaparser/ast/comments/Comment;

    .line 412
    new-instance v0, Lcom/github/javaparser/ast/expr/IntegerLiteralExpr;

    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getTokenRange()Ljava/util/Optional;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/github/javaparser/TokenRange;

    invoke-virtual {p1}, Lcom/github/javaparser/ast/expr/LiteralStringValueExpr;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/github/javaparser/ast/expr/IntegerLiteralExpr;-><init>(Lcom/github/javaparser/TokenRange;Ljava/lang/String;)V

    .line 413
    invoke-virtual {v0, p2}, Lcom/github/javaparser/ast/Node;->setComment(Lcom/github/javaparser/ast/comments/Comment;)Lcom/github/javaparser/ast/Node;

    .line 414
    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getOrphanComments()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object p2

    new-instance v1, Lc0/a;

    invoke-direct {v1}, Lc0/a;-><init>()V

    invoke-interface {p2, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p2

    new-instance v1, Lc0/S;

    invoke-direct {v1, v0}, Lc0/S;-><init>(Lcom/github/javaparser/ast/expr/IntegerLiteralExpr;)V

    invoke-interface {p2, v1}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    .line 415
    invoke-direct {p0, p1, v0}, Lcom/github/javaparser/ast/visitor/CloneVisitor;->copyData(Lcom/github/javaparser/ast/Node;Lcom/github/javaparser/ast/Node;)V

    return-object v0
.end method

.method public visit(Lcom/github/javaparser/ast/expr/LambdaExpr;Ljava/lang/Object;)Lcom/github/javaparser/ast/visitor/Visitable;
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 689
    invoke-virtual {p1}, Lcom/github/javaparser/ast/expr/LambdaExpr;->getBody()Lcom/github/javaparser/ast/stmt/Statement;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/github/javaparser/ast/visitor/CloneVisitor;->cloneNode(Lcom/github/javaparser/ast/Node;Ljava/lang/Object;)Lcom/github/javaparser/ast/Node;

    move-result-object v0

    check-cast v0, Lcom/github/javaparser/ast/stmt/Statement;

    .line 690
    invoke-virtual {p1}, Lcom/github/javaparser/ast/expr/LambdaExpr;->getParameters()Lcom/github/javaparser/ast/NodeList;

    move-result-object v1

    invoke-direct {p0, v1, p2}, Lcom/github/javaparser/ast/visitor/CloneVisitor;->cloneList(Lcom/github/javaparser/ast/NodeList;Ljava/lang/Object;)Lcom/github/javaparser/ast/NodeList;

    move-result-object v1

    .line 691
    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getComment()Ljava/util/Optional;

    move-result-object v2

    invoke-virtual {p0, v2, p2}, Lcom/github/javaparser/ast/visitor/CloneVisitor;->cloneNode(Ljava/util/Optional;Ljava/lang/Object;)Lcom/github/javaparser/ast/Node;

    move-result-object p2

    check-cast p2, Lcom/github/javaparser/ast/comments/Comment;

    .line 692
    new-instance v2, Lcom/github/javaparser/ast/expr/LambdaExpr;

    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getTokenRange()Ljava/util/Optional;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/github/javaparser/TokenRange;

    invoke-virtual {p1}, Lcom/github/javaparser/ast/expr/LambdaExpr;->isEnclosingParameters()Z

    move-result v4

    invoke-direct {v2, v3, v1, v0, v4}, Lcom/github/javaparser/ast/expr/LambdaExpr;-><init>(Lcom/github/javaparser/TokenRange;Lcom/github/javaparser/ast/NodeList;Lcom/github/javaparser/ast/stmt/Statement;Z)V

    .line 693
    invoke-virtual {v2, p2}, Lcom/github/javaparser/ast/Node;->setComment(Lcom/github/javaparser/ast/comments/Comment;)Lcom/github/javaparser/ast/Node;

    .line 694
    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getOrphanComments()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object p2

    new-instance v0, Lc0/a;

    invoke-direct {v0}, Lc0/a;-><init>()V

    invoke-interface {p2, v0}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p2

    new-instance v0, Lc0/b0;

    invoke-direct {v0, v2}, Lc0/b0;-><init>(Lcom/github/javaparser/ast/expr/LambdaExpr;)V

    invoke-interface {p2, v0}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    .line 695
    invoke-direct {p0, p1, v2}, Lcom/github/javaparser/ast/visitor/CloneVisitor;->copyData(Lcom/github/javaparser/ast/Node;Lcom/github/javaparser/ast/Node;)V

    return-object v2
.end method

.method public visit(Lcom/github/javaparser/ast/expr/LongLiteralExpr;Ljava/lang/Object;)Lcom/github/javaparser/ast/visitor/Visitable;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 416
    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getComment()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/github/javaparser/ast/visitor/CloneVisitor;->cloneNode(Ljava/util/Optional;Ljava/lang/Object;)Lcom/github/javaparser/ast/Node;

    move-result-object p2

    check-cast p2, Lcom/github/javaparser/ast/comments/Comment;

    .line 417
    new-instance v0, Lcom/github/javaparser/ast/expr/LongLiteralExpr;

    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getTokenRange()Ljava/util/Optional;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/github/javaparser/TokenRange;

    invoke-virtual {p1}, Lcom/github/javaparser/ast/expr/LiteralStringValueExpr;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/github/javaparser/ast/expr/LongLiteralExpr;-><init>(Lcom/github/javaparser/TokenRange;Ljava/lang/String;)V

    .line 418
    invoke-virtual {v0, p2}, Lcom/github/javaparser/ast/Node;->setComment(Lcom/github/javaparser/ast/comments/Comment;)Lcom/github/javaparser/ast/Node;

    .line 419
    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getOrphanComments()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object p2

    new-instance v1, Lc0/a;

    invoke-direct {v1}, Lc0/a;-><init>()V

    invoke-interface {p2, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p2

    new-instance v1, Lc0/q;

    invoke-direct {v1, v0}, Lc0/q;-><init>(Lcom/github/javaparser/ast/expr/LongLiteralExpr;)V

    invoke-interface {p2, v1}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    .line 420
    invoke-direct {p0, p1, v0}, Lcom/github/javaparser/ast/visitor/CloneVisitor;->copyData(Lcom/github/javaparser/ast/Node;Lcom/github/javaparser/ast/Node;)V

    return-object v0
.end method

.method public visit(Lcom/github/javaparser/ast/expr/MarkerAnnotationExpr;Ljava/lang/Object;)Lcom/github/javaparser/ast/visitor/Visitable;
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 505
    invoke-virtual {p1}, Lcom/github/javaparser/ast/expr/AnnotationExpr;->getName()Lcom/github/javaparser/ast/expr/Name;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/github/javaparser/ast/visitor/CloneVisitor;->cloneNode(Lcom/github/javaparser/ast/Node;Ljava/lang/Object;)Lcom/github/javaparser/ast/Node;

    move-result-object v0

    check-cast v0, Lcom/github/javaparser/ast/expr/Name;

    .line 506
    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getComment()Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {p0, v1, p2}, Lcom/github/javaparser/ast/visitor/CloneVisitor;->cloneNode(Ljava/util/Optional;Ljava/lang/Object;)Lcom/github/javaparser/ast/Node;

    move-result-object p2

    check-cast p2, Lcom/github/javaparser/ast/comments/Comment;

    .line 507
    new-instance v1, Lcom/github/javaparser/ast/expr/MarkerAnnotationExpr;

    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getTokenRange()Ljava/util/Optional;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/github/javaparser/TokenRange;

    invoke-direct {v1, v2, v0}, Lcom/github/javaparser/ast/expr/MarkerAnnotationExpr;-><init>(Lcom/github/javaparser/TokenRange;Lcom/github/javaparser/ast/expr/Name;)V

    .line 508
    invoke-virtual {v1, p2}, Lcom/github/javaparser/ast/Node;->setComment(Lcom/github/javaparser/ast/comments/Comment;)Lcom/github/javaparser/ast/Node;

    .line 509
    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getOrphanComments()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object p2

    new-instance v0, Lc0/a;

    invoke-direct {v0}, Lc0/a;-><init>()V

    invoke-interface {p2, v0}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p2

    new-instance v0, Lc0/O;

    invoke-direct {v0, v1}, Lc0/O;-><init>(Lcom/github/javaparser/ast/expr/MarkerAnnotationExpr;)V

    invoke-interface {p2, v0}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    .line 510
    invoke-direct {p0, p1, v1}, Lcom/github/javaparser/ast/visitor/CloneVisitor;->copyData(Lcom/github/javaparser/ast/Node;Lcom/github/javaparser/ast/Node;)V

    return-object v1
.end method

.method public visit(Lcom/github/javaparser/ast/expr/MemberValuePair;Ljava/lang/Object;)Lcom/github/javaparser/ast/visitor/Visitable;
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 526
    invoke-virtual {p1}, Lcom/github/javaparser/ast/expr/MemberValuePair;->getName()Lcom/github/javaparser/ast/expr/SimpleName;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/github/javaparser/ast/visitor/CloneVisitor;->cloneNode(Lcom/github/javaparser/ast/Node;Ljava/lang/Object;)Lcom/github/javaparser/ast/Node;

    move-result-object v0

    check-cast v0, Lcom/github/javaparser/ast/expr/SimpleName;

    .line 527
    invoke-virtual {p1}, Lcom/github/javaparser/ast/expr/MemberValuePair;->getValue()Lcom/github/javaparser/ast/expr/Expression;

    move-result-object v1

    invoke-virtual {p0, v1, p2}, Lcom/github/javaparser/ast/visitor/CloneVisitor;->cloneNode(Lcom/github/javaparser/ast/Node;Ljava/lang/Object;)Lcom/github/javaparser/ast/Node;

    move-result-object v1

    check-cast v1, Lcom/github/javaparser/ast/expr/Expression;

    .line 528
    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getComment()Ljava/util/Optional;

    move-result-object v2

    invoke-virtual {p0, v2, p2}, Lcom/github/javaparser/ast/visitor/CloneVisitor;->cloneNode(Ljava/util/Optional;Ljava/lang/Object;)Lcom/github/javaparser/ast/Node;

    move-result-object p2

    check-cast p2, Lcom/github/javaparser/ast/comments/Comment;

    .line 529
    new-instance v2, Lcom/github/javaparser/ast/expr/MemberValuePair;

    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getTokenRange()Ljava/util/Optional;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/github/javaparser/TokenRange;

    invoke-direct {v2, v3, v0, v1}, Lcom/github/javaparser/ast/expr/MemberValuePair;-><init>(Lcom/github/javaparser/TokenRange;Lcom/github/javaparser/ast/expr/SimpleName;Lcom/github/javaparser/ast/expr/Expression;)V

    .line 530
    invoke-virtual {v2, p2}, Lcom/github/javaparser/ast/Node;->setComment(Lcom/github/javaparser/ast/comments/Comment;)Lcom/github/javaparser/ast/Node;

    .line 531
    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getOrphanComments()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object p2

    new-instance v0, Lc0/a;

    invoke-direct {v0}, Lc0/a;-><init>()V

    invoke-interface {p2, v0}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p2

    new-instance v0, Lc0/n0;

    invoke-direct {v0, v2}, Lc0/n0;-><init>(Lcom/github/javaparser/ast/expr/MemberValuePair;)V

    invoke-interface {p2, v0}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    .line 532
    invoke-direct {p0, p1, v2}, Lcom/github/javaparser/ast/visitor/CloneVisitor;->copyData(Lcom/github/javaparser/ast/Node;Lcom/github/javaparser/ast/Node;)V

    return-object v2
.end method

.method public visit(Lcom/github/javaparser/ast/expr/MethodCallExpr;Ljava/lang/Object;)Lcom/github/javaparser/ast/visitor/Visitable;
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 441
    invoke-virtual {p1}, Lcom/github/javaparser/ast/expr/MethodCallExpr;->getArguments()Lcom/github/javaparser/ast/NodeList;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lcom/github/javaparser/ast/visitor/CloneVisitor;->cloneList(Lcom/github/javaparser/ast/NodeList;Ljava/lang/Object;)Lcom/github/javaparser/ast/NodeList;

    move-result-object v6

    .line 442
    invoke-virtual {p1}, Lcom/github/javaparser/ast/expr/MethodCallExpr;->getName()Lcom/github/javaparser/ast/expr/SimpleName;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/github/javaparser/ast/visitor/CloneVisitor;->cloneNode(Lcom/github/javaparser/ast/Node;Ljava/lang/Object;)Lcom/github/javaparser/ast/Node;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Lcom/github/javaparser/ast/expr/SimpleName;

    .line 443
    invoke-virtual {p1}, Lcom/github/javaparser/ast/expr/MethodCallExpr;->getScope()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/github/javaparser/ast/visitor/CloneVisitor;->cloneNode(Ljava/util/Optional;Ljava/lang/Object;)Lcom/github/javaparser/ast/Node;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lcom/github/javaparser/ast/expr/Expression;

    .line 444
    invoke-virtual {p1}, Lcom/github/javaparser/ast/expr/MethodCallExpr;->getTypeArguments()Ljava/util/Optional;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/github/javaparser/ast/NodeList;

    invoke-direct {p0, v0, p2}, Lcom/github/javaparser/ast/visitor/CloneVisitor;->cloneList(Lcom/github/javaparser/ast/NodeList;Ljava/lang/Object;)Lcom/github/javaparser/ast/NodeList;

    move-result-object v4

    .line 445
    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getComment()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/github/javaparser/ast/visitor/CloneVisitor;->cloneNode(Ljava/util/Optional;Ljava/lang/Object;)Lcom/github/javaparser/ast/Node;

    move-result-object p2

    check-cast p2, Lcom/github/javaparser/ast/comments/Comment;

    .line 446
    new-instance v0, Lcom/github/javaparser/ast/expr/MethodCallExpr;

    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getTokenRange()Ljava/util/Optional;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/github/javaparser/TokenRange;

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/github/javaparser/ast/expr/MethodCallExpr;-><init>(Lcom/github/javaparser/TokenRange;Lcom/github/javaparser/ast/expr/Expression;Lcom/github/javaparser/ast/NodeList;Lcom/github/javaparser/ast/expr/SimpleName;Lcom/github/javaparser/ast/NodeList;)V

    .line 447
    invoke-virtual {v0, p2}, Lcom/github/javaparser/ast/Node;->setComment(Lcom/github/javaparser/ast/comments/Comment;)Lcom/github/javaparser/ast/Node;

    .line 448
    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getOrphanComments()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object p2

    new-instance v1, Lc0/a;

    invoke-direct {v1}, Lc0/a;-><init>()V

    invoke-interface {p2, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p2

    new-instance v1, Lc0/J;

    invoke-direct {v1, v0}, Lc0/J;-><init>(Lcom/github/javaparser/ast/expr/MethodCallExpr;)V

    invoke-interface {p2, v1}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    .line 449
    invoke-direct {p0, p1, v0}, Lcom/github/javaparser/ast/visitor/CloneVisitor;->copyData(Lcom/github/javaparser/ast/Node;Lcom/github/javaparser/ast/Node;)V

    return-object v0
.end method

.method public visit(Lcom/github/javaparser/ast/expr/MethodReferenceExpr;Ljava/lang/Object;)Lcom/github/javaparser/ast/visitor/Visitable;
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 696
    invoke-virtual {p1}, Lcom/github/javaparser/ast/expr/MethodReferenceExpr;->getScope()Lcom/github/javaparser/ast/expr/Expression;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/github/javaparser/ast/visitor/CloneVisitor;->cloneNode(Lcom/github/javaparser/ast/Node;Ljava/lang/Object;)Lcom/github/javaparser/ast/Node;

    move-result-object v0

    check-cast v0, Lcom/github/javaparser/ast/expr/Expression;

    .line 697
    invoke-virtual {p1}, Lcom/github/javaparser/ast/expr/MethodReferenceExpr;->getTypeArguments()Ljava/util/Optional;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/github/javaparser/ast/NodeList;

    invoke-direct {p0, v1, p2}, Lcom/github/javaparser/ast/visitor/CloneVisitor;->cloneList(Lcom/github/javaparser/ast/NodeList;Ljava/lang/Object;)Lcom/github/javaparser/ast/NodeList;

    move-result-object v1

    .line 698
    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getComment()Ljava/util/Optional;

    move-result-object v3

    invoke-virtual {p0, v3, p2}, Lcom/github/javaparser/ast/visitor/CloneVisitor;->cloneNode(Ljava/util/Optional;Ljava/lang/Object;)Lcom/github/javaparser/ast/Node;

    move-result-object p2

    check-cast p2, Lcom/github/javaparser/ast/comments/Comment;

    .line 699
    new-instance v3, Lcom/github/javaparser/ast/expr/MethodReferenceExpr;

    .line 700
    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getTokenRange()Ljava/util/Optional;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/github/javaparser/TokenRange;

    invoke-virtual {p1}, Lcom/github/javaparser/ast/expr/MethodReferenceExpr;->getIdentifier()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v2, v0, v1, v4}, Lcom/github/javaparser/ast/expr/MethodReferenceExpr;-><init>(Lcom/github/javaparser/TokenRange;Lcom/github/javaparser/ast/expr/Expression;Lcom/github/javaparser/ast/NodeList;Ljava/lang/String;)V

    .line 701
    invoke-virtual {v3, p2}, Lcom/github/javaparser/ast/Node;->setComment(Lcom/github/javaparser/ast/comments/Comment;)Lcom/github/javaparser/ast/Node;

    .line 702
    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getOrphanComments()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object p2

    new-instance v0, Lc0/a;

    invoke-direct {v0}, Lc0/a;-><init>()V

    invoke-interface {p2, v0}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p2

    new-instance v0, Lc0/e0;

    invoke-direct {v0, v3}, Lc0/e0;-><init>(Lcom/github/javaparser/ast/expr/MethodReferenceExpr;)V

    invoke-interface {p2, v0}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    .line 703
    invoke-direct {p0, p1, v3}, Lcom/github/javaparser/ast/visitor/CloneVisitor;->copyData(Lcom/github/javaparser/ast/Node;Lcom/github/javaparser/ast/Node;)V

    return-object v3
.end method

.method public visit(Lcom/github/javaparser/ast/expr/Name;Ljava/lang/Object;)Lcom/github/javaparser/ast/visitor/Visitable;
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 467
    invoke-virtual {p1}, Lcom/github/javaparser/ast/expr/Name;->getQualifier()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/github/javaparser/ast/visitor/CloneVisitor;->cloneNode(Ljava/util/Optional;Ljava/lang/Object;)Lcom/github/javaparser/ast/Node;

    move-result-object v0

    check-cast v0, Lcom/github/javaparser/ast/expr/Name;

    .line 468
    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getComment()Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {p0, v1, p2}, Lcom/github/javaparser/ast/visitor/CloneVisitor;->cloneNode(Ljava/util/Optional;Ljava/lang/Object;)Lcom/github/javaparser/ast/Node;

    move-result-object p2

    check-cast p2, Lcom/github/javaparser/ast/comments/Comment;

    .line 469
    new-instance v1, Lcom/github/javaparser/ast/expr/Name;

    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getTokenRange()Ljava/util/Optional;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/github/javaparser/TokenRange;

    invoke-virtual {p1}, Lcom/github/javaparser/ast/expr/Name;->getIdentifier()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v0, v3}, Lcom/github/javaparser/ast/expr/Name;-><init>(Lcom/github/javaparser/TokenRange;Lcom/github/javaparser/ast/expr/Name;Ljava/lang/String;)V

    .line 470
    invoke-virtual {v1, p2}, Lcom/github/javaparser/ast/Node;->setComment(Lcom/github/javaparser/ast/comments/Comment;)Lcom/github/javaparser/ast/Node;

    .line 471
    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getOrphanComments()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object p2

    new-instance v0, Lc0/a;

    invoke-direct {v0}, Lc0/a;-><init>()V

    invoke-interface {p2, v0}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p2

    new-instance v0, Lc0/H0;

    invoke-direct {v0, v1}, Lc0/H0;-><init>(Lcom/github/javaparser/ast/expr/Name;)V

    invoke-interface {p2, v0}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    .line 472
    invoke-direct {p0, p1, v1}, Lcom/github/javaparser/ast/visitor/CloneVisitor;->copyData(Lcom/github/javaparser/ast/Node;Lcom/github/javaparser/ast/Node;)V

    return-object v1
.end method

.method public visit(Lcom/github/javaparser/ast/expr/NameExpr;Ljava/lang/Object;)Lcom/github/javaparser/ast/visitor/Visitable;
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 450
    invoke-virtual {p1}, Lcom/github/javaparser/ast/expr/NameExpr;->getName()Lcom/github/javaparser/ast/expr/SimpleName;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/github/javaparser/ast/visitor/CloneVisitor;->cloneNode(Lcom/github/javaparser/ast/Node;Ljava/lang/Object;)Lcom/github/javaparser/ast/Node;

    move-result-object v0

    check-cast v0, Lcom/github/javaparser/ast/expr/SimpleName;

    .line 451
    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getComment()Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {p0, v1, p2}, Lcom/github/javaparser/ast/visitor/CloneVisitor;->cloneNode(Ljava/util/Optional;Ljava/lang/Object;)Lcom/github/javaparser/ast/Node;

    move-result-object p2

    check-cast p2, Lcom/github/javaparser/ast/comments/Comment;

    .line 452
    new-instance v1, Lcom/github/javaparser/ast/expr/NameExpr;

    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getTokenRange()Ljava/util/Optional;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/github/javaparser/TokenRange;

    invoke-direct {v1, v2, v0}, Lcom/github/javaparser/ast/expr/NameExpr;-><init>(Lcom/github/javaparser/TokenRange;Lcom/github/javaparser/ast/expr/SimpleName;)V

    .line 453
    invoke-virtual {v1, p2}, Lcom/github/javaparser/ast/Node;->setComment(Lcom/github/javaparser/ast/comments/Comment;)Lcom/github/javaparser/ast/Node;

    .line 454
    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getOrphanComments()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object p2

    new-instance v0, Lc0/a;

    invoke-direct {v0}, Lc0/a;-><init>()V

    invoke-interface {p2, v0}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p2

    new-instance v0, Lc0/N;

    invoke-direct {v0, v1}, Lc0/N;-><init>(Lcom/github/javaparser/ast/expr/NameExpr;)V

    invoke-interface {p2, v0}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    .line 455
    invoke-direct {p0, p1, v1}, Lcom/github/javaparser/ast/visitor/CloneVisitor;->copyData(Lcom/github/javaparser/ast/Node;Lcom/github/javaparser/ast/Node;)V

    return-object v1
.end method

.method public visit(Lcom/github/javaparser/ast/expr/NormalAnnotationExpr;Ljava/lang/Object;)Lcom/github/javaparser/ast/visitor/Visitable;
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 519
    invoke-virtual {p1}, Lcom/github/javaparser/ast/expr/NormalAnnotationExpr;->getPairs()Lcom/github/javaparser/ast/NodeList;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lcom/github/javaparser/ast/visitor/CloneVisitor;->cloneList(Lcom/github/javaparser/ast/NodeList;Ljava/lang/Object;)Lcom/github/javaparser/ast/NodeList;

    move-result-object v0

    .line 520
    invoke-virtual {p1}, Lcom/github/javaparser/ast/expr/AnnotationExpr;->getName()Lcom/github/javaparser/ast/expr/Name;

    move-result-object v1

    invoke-virtual {p0, v1, p2}, Lcom/github/javaparser/ast/visitor/CloneVisitor;->cloneNode(Lcom/github/javaparser/ast/Node;Ljava/lang/Object;)Lcom/github/javaparser/ast/Node;

    move-result-object v1

    check-cast v1, Lcom/github/javaparser/ast/expr/Name;

    .line 521
    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getComment()Ljava/util/Optional;

    move-result-object v2

    invoke-virtual {p0, v2, p2}, Lcom/github/javaparser/ast/visitor/CloneVisitor;->cloneNode(Ljava/util/Optional;Ljava/lang/Object;)Lcom/github/javaparser/ast/Node;

    move-result-object p2

    check-cast p2, Lcom/github/javaparser/ast/comments/Comment;

    .line 522
    new-instance v2, Lcom/github/javaparser/ast/expr/NormalAnnotationExpr;

    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getTokenRange()Ljava/util/Optional;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/github/javaparser/TokenRange;

    invoke-direct {v2, v3, v1, v0}, Lcom/github/javaparser/ast/expr/NormalAnnotationExpr;-><init>(Lcom/github/javaparser/TokenRange;Lcom/github/javaparser/ast/expr/Name;Lcom/github/javaparser/ast/NodeList;)V

    .line 523
    invoke-virtual {v2, p2}, Lcom/github/javaparser/ast/Node;->setComment(Lcom/github/javaparser/ast/comments/Comment;)Lcom/github/javaparser/ast/Node;

    .line 524
    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getOrphanComments()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object p2

    new-instance v0, Lc0/a;

    invoke-direct {v0}, Lc0/a;-><init>()V

    invoke-interface {p2, v0}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p2

    new-instance v0, Lc0/s;

    invoke-direct {v0, v2}, Lc0/s;-><init>(Lcom/github/javaparser/ast/expr/NormalAnnotationExpr;)V

    invoke-interface {p2, v0}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    .line 525
    invoke-direct {p0, p1, v2}, Lcom/github/javaparser/ast/visitor/CloneVisitor;->copyData(Lcom/github/javaparser/ast/Node;Lcom/github/javaparser/ast/Node;)V

    return-object v2
.end method

.method public visit(Lcom/github/javaparser/ast/expr/NullLiteralExpr;Ljava/lang/Object;)Lcom/github/javaparser/ast/visitor/Visitable;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 436
    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getComment()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/github/javaparser/ast/visitor/CloneVisitor;->cloneNode(Ljava/util/Optional;Ljava/lang/Object;)Lcom/github/javaparser/ast/Node;

    move-result-object p2

    check-cast p2, Lcom/github/javaparser/ast/comments/Comment;

    .line 437
    new-instance v0, Lcom/github/javaparser/ast/expr/NullLiteralExpr;

    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getTokenRange()Ljava/util/Optional;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/github/javaparser/TokenRange;

    invoke-direct {v0, v1}, Lcom/github/javaparser/ast/expr/NullLiteralExpr;-><init>(Lcom/github/javaparser/TokenRange;)V

    .line 438
    invoke-virtual {v0, p2}, Lcom/github/javaparser/ast/Node;->setComment(Lcom/github/javaparser/ast/comments/Comment;)Lcom/github/javaparser/ast/Node;

    .line 439
    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getOrphanComments()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object p2

    new-instance v1, Lc0/a;

    invoke-direct {v1}, Lc0/a;-><init>()V

    invoke-interface {p2, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p2

    new-instance v1, Lc0/T;

    invoke-direct {v1, v0}, Lc0/T;-><init>(Lcom/github/javaparser/ast/expr/NullLiteralExpr;)V

    invoke-interface {p2, v1}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    .line 440
    invoke-direct {p0, p1, v0}, Lcom/github/javaparser/ast/visitor/CloneVisitor;->copyData(Lcom/github/javaparser/ast/Node;Lcom/github/javaparser/ast/Node;)V

    return-object v0
.end method

.method public visit(Lcom/github/javaparser/ast/expr/ObjectCreationExpr;Ljava/lang/Object;)Lcom/github/javaparser/ast/visitor/Visitable;
    .locals 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 456
    invoke-virtual {p1}, Lcom/github/javaparser/ast/expr/ObjectCreationExpr;->getAnonymousClassBody()Ljava/util/Optional;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/github/javaparser/ast/NodeList;

    invoke-direct {p0, v0, p2}, Lcom/github/javaparser/ast/visitor/CloneVisitor;->cloneList(Lcom/github/javaparser/ast/NodeList;Ljava/lang/Object;)Lcom/github/javaparser/ast/NodeList;

    move-result-object v8

    .line 457
    invoke-virtual {p1}, Lcom/github/javaparser/ast/expr/ObjectCreationExpr;->getArguments()Lcom/github/javaparser/ast/NodeList;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lcom/github/javaparser/ast/visitor/CloneVisitor;->cloneList(Lcom/github/javaparser/ast/NodeList;Ljava/lang/Object;)Lcom/github/javaparser/ast/NodeList;

    move-result-object v7

    .line 458
    invoke-virtual {p1}, Lcom/github/javaparser/ast/expr/ObjectCreationExpr;->getScope()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/github/javaparser/ast/visitor/CloneVisitor;->cloneNode(Ljava/util/Optional;Ljava/lang/Object;)Lcom/github/javaparser/ast/Node;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lcom/github/javaparser/ast/expr/Expression;

    .line 459
    invoke-virtual {p1}, Lcom/github/javaparser/ast/expr/ObjectCreationExpr;->getType()Lcom/github/javaparser/ast/type/ClassOrInterfaceType;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/github/javaparser/ast/visitor/CloneVisitor;->cloneNode(Lcom/github/javaparser/ast/Node;Ljava/lang/Object;)Lcom/github/javaparser/ast/Node;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Lcom/github/javaparser/ast/type/ClassOrInterfaceType;

    .line 460
    invoke-virtual {p1}, Lcom/github/javaparser/ast/expr/ObjectCreationExpr;->getTypeArguments()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/github/javaparser/ast/NodeList;

    invoke-direct {p0, v0, p2}, Lcom/github/javaparser/ast/visitor/CloneVisitor;->cloneList(Lcom/github/javaparser/ast/NodeList;Ljava/lang/Object;)Lcom/github/javaparser/ast/NodeList;

    move-result-object v6

    .line 461
    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getComment()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/github/javaparser/ast/visitor/CloneVisitor;->cloneNode(Ljava/util/Optional;Ljava/lang/Object;)Lcom/github/javaparser/ast/Node;

    move-result-object p2

    check-cast p2, Lcom/github/javaparser/ast/comments/Comment;

    .line 462
    new-instance v0, Lcom/github/javaparser/ast/expr/ObjectCreationExpr;

    .line 463
    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getTokenRange()Ljava/util/Optional;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Lcom/github/javaparser/TokenRange;

    move-object v2, v0

    invoke-direct/range {v2 .. v8}, Lcom/github/javaparser/ast/expr/ObjectCreationExpr;-><init>(Lcom/github/javaparser/TokenRange;Lcom/github/javaparser/ast/expr/Expression;Lcom/github/javaparser/ast/type/ClassOrInterfaceType;Lcom/github/javaparser/ast/NodeList;Lcom/github/javaparser/ast/NodeList;Lcom/github/javaparser/ast/NodeList;)V

    .line 464
    invoke-virtual {v0, p2}, Lcom/github/javaparser/ast/Node;->setComment(Lcom/github/javaparser/ast/comments/Comment;)Lcom/github/javaparser/ast/Node;

    .line 465
    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getOrphanComments()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object p2

    new-instance v1, Lc0/a;

    invoke-direct {v1}, Lc0/a;-><init>()V

    invoke-interface {p2, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p2

    new-instance v1, Lc0/U;

    invoke-direct {v1, v0}, Lc0/U;-><init>(Lcom/github/javaparser/ast/expr/ObjectCreationExpr;)V

    invoke-interface {p2, v1}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    .line 466
    invoke-direct {p0, p1, v0}, Lcom/github/javaparser/ast/visitor/CloneVisitor;->copyData(Lcom/github/javaparser/ast/Node;Lcom/github/javaparser/ast/Node;)V

    return-object v0
.end method

.method public visit(Lcom/github/javaparser/ast/expr/RecordPatternExpr;Ljava/lang/Object;)Lcom/github/javaparser/ast/visitor/Visitable;
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 841
    invoke-virtual {p1}, Lcom/github/javaparser/ast/expr/RecordPatternExpr;->getModifiers()Lcom/github/javaparser/ast/NodeList;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lcom/github/javaparser/ast/visitor/CloneVisitor;->cloneList(Lcom/github/javaparser/ast/NodeList;Ljava/lang/Object;)Lcom/github/javaparser/ast/NodeList;

    move-result-object v0

    .line 842
    invoke-virtual {p1}, Lcom/github/javaparser/ast/expr/RecordPatternExpr;->getPatternList()Lcom/github/javaparser/ast/NodeList;

    move-result-object v1

    invoke-direct {p0, v1, p2}, Lcom/github/javaparser/ast/visitor/CloneVisitor;->cloneList(Lcom/github/javaparser/ast/NodeList;Ljava/lang/Object;)Lcom/github/javaparser/ast/NodeList;

    move-result-object v1

    .line 843
    invoke-virtual {p1}, Lcom/github/javaparser/ast/expr/RecordPatternExpr;->getType()Lcom/github/javaparser/ast/type/ReferenceType;

    move-result-object v2

    invoke-virtual {p0, v2, p2}, Lcom/github/javaparser/ast/visitor/CloneVisitor;->cloneNode(Lcom/github/javaparser/ast/Node;Ljava/lang/Object;)Lcom/github/javaparser/ast/Node;

    move-result-object v2

    check-cast v2, Lcom/github/javaparser/ast/type/Type;

    .line 844
    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getComment()Ljava/util/Optional;

    move-result-object v3

    invoke-virtual {p0, v3, p2}, Lcom/github/javaparser/ast/visitor/CloneVisitor;->cloneNode(Ljava/util/Optional;Ljava/lang/Object;)Lcom/github/javaparser/ast/Node;

    move-result-object p2

    check-cast p2, Lcom/github/javaparser/ast/comments/Comment;

    .line 845
    new-instance v3, Lcom/github/javaparser/ast/expr/RecordPatternExpr;

    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getTokenRange()Ljava/util/Optional;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/github/javaparser/TokenRange;

    invoke-direct {v3, v4, v0, v2, v1}, Lcom/github/javaparser/ast/expr/RecordPatternExpr;-><init>(Lcom/github/javaparser/TokenRange;Lcom/github/javaparser/ast/NodeList;Lcom/github/javaparser/ast/type/Type;Lcom/github/javaparser/ast/NodeList;)V

    .line 846
    invoke-virtual {v3, p2}, Lcom/github/javaparser/ast/Node;->setComment(Lcom/github/javaparser/ast/comments/Comment;)Lcom/github/javaparser/ast/Node;

    .line 847
    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getOrphanComments()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object p2

    new-instance v0, Lc0/a;

    invoke-direct {v0}, Lc0/a;-><init>()V

    invoke-interface {p2, v0}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p2

    new-instance v0, Lc0/t;

    invoke-direct {v0, v3}, Lc0/t;-><init>(Lcom/github/javaparser/ast/expr/RecordPatternExpr;)V

    invoke-interface {p2, v0}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    .line 848
    invoke-direct {p0, p1, v3}, Lcom/github/javaparser/ast/visitor/CloneVisitor;->copyData(Lcom/github/javaparser/ast/Node;Lcom/github/javaparser/ast/Node;)V

    return-object v3
.end method

.method public visit(Lcom/github/javaparser/ast/expr/SimpleName;Ljava/lang/Object;)Lcom/github/javaparser/ast/visitor/Visitable;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 473
    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getComment()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/github/javaparser/ast/visitor/CloneVisitor;->cloneNode(Ljava/util/Optional;Ljava/lang/Object;)Lcom/github/javaparser/ast/Node;

    move-result-object p2

    check-cast p2, Lcom/github/javaparser/ast/comments/Comment;

    .line 474
    new-instance v0, Lcom/github/javaparser/ast/expr/SimpleName;

    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getTokenRange()Ljava/util/Optional;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/github/javaparser/TokenRange;

    invoke-virtual {p1}, Lcom/github/javaparser/ast/expr/SimpleName;->getIdentifier()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/github/javaparser/ast/expr/SimpleName;-><init>(Lcom/github/javaparser/TokenRange;Ljava/lang/String;)V

    .line 475
    invoke-virtual {v0, p2}, Lcom/github/javaparser/ast/Node;->setComment(Lcom/github/javaparser/ast/comments/Comment;)Lcom/github/javaparser/ast/Node;

    .line 476
    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getOrphanComments()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object p2

    new-instance v1, Lc0/a;

    invoke-direct {v1}, Lc0/a;-><init>()V

    invoke-interface {p2, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p2

    new-instance v1, Lc0/j;

    invoke-direct {v1, v0}, Lc0/j;-><init>(Lcom/github/javaparser/ast/expr/SimpleName;)V

    invoke-interface {p2, v1}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    .line 477
    invoke-direct {p0, p1, v0}, Lcom/github/javaparser/ast/visitor/CloneVisitor;->copyData(Lcom/github/javaparser/ast/Node;Lcom/github/javaparser/ast/Node;)V

    return-object v0
.end method

.method public visit(Lcom/github/javaparser/ast/expr/SingleMemberAnnotationExpr;Ljava/lang/Object;)Lcom/github/javaparser/ast/visitor/Visitable;
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 511
    invoke-virtual {p1}, Lcom/github/javaparser/ast/expr/SingleMemberAnnotationExpr;->getMemberValue()Lcom/github/javaparser/ast/expr/Expression;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/github/javaparser/ast/visitor/CloneVisitor;->cloneNode(Lcom/github/javaparser/ast/Node;Ljava/lang/Object;)Lcom/github/javaparser/ast/Node;

    move-result-object v0

    check-cast v0, Lcom/github/javaparser/ast/expr/Expression;

    .line 512
    invoke-virtual {p1}, Lcom/github/javaparser/ast/expr/AnnotationExpr;->getName()Lcom/github/javaparser/ast/expr/Name;

    move-result-object v1

    invoke-virtual {p0, v1, p2}, Lcom/github/javaparser/ast/visitor/CloneVisitor;->cloneNode(Lcom/github/javaparser/ast/Node;Ljava/lang/Object;)Lcom/github/javaparser/ast/Node;

    move-result-object v1

    check-cast v1, Lcom/github/javaparser/ast/expr/Name;

    .line 513
    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getComment()Ljava/util/Optional;

    move-result-object v2

    invoke-virtual {p0, v2, p2}, Lcom/github/javaparser/ast/visitor/CloneVisitor;->cloneNode(Ljava/util/Optional;Ljava/lang/Object;)Lcom/github/javaparser/ast/Node;

    move-result-object p2

    check-cast p2, Lcom/github/javaparser/ast/comments/Comment;

    .line 514
    new-instance v2, Lcom/github/javaparser/ast/expr/SingleMemberAnnotationExpr;

    .line 515
    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getTokenRange()Ljava/util/Optional;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/github/javaparser/TokenRange;

    invoke-direct {v2, v3, v1, v0}, Lcom/github/javaparser/ast/expr/SingleMemberAnnotationExpr;-><init>(Lcom/github/javaparser/TokenRange;Lcom/github/javaparser/ast/expr/Name;Lcom/github/javaparser/ast/expr/Expression;)V

    .line 516
    invoke-virtual {v2, p2}, Lcom/github/javaparser/ast/Node;->setComment(Lcom/github/javaparser/ast/comments/Comment;)Lcom/github/javaparser/ast/Node;

    .line 517
    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getOrphanComments()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object p2

    new-instance v0, Lc0/a;

    invoke-direct {v0}, Lc0/a;-><init>()V

    invoke-interface {p2, v0}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p2

    new-instance v0, Lc0/g0;

    invoke-direct {v0, v2}, Lc0/g0;-><init>(Lcom/github/javaparser/ast/expr/SingleMemberAnnotationExpr;)V

    invoke-interface {p2, v0}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    .line 518
    invoke-direct {p0, p1, v2}, Lcom/github/javaparser/ast/visitor/CloneVisitor;->copyData(Lcom/github/javaparser/ast/Node;Lcom/github/javaparser/ast/Node;)V

    return-object v2
.end method

.method public visit(Lcom/github/javaparser/ast/expr/StringLiteralExpr;Ljava/lang/Object;)Lcom/github/javaparser/ast/visitor/Visitable;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 406
    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getComment()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/github/javaparser/ast/visitor/CloneVisitor;->cloneNode(Ljava/util/Optional;Ljava/lang/Object;)Lcom/github/javaparser/ast/Node;

    move-result-object p2

    check-cast p2, Lcom/github/javaparser/ast/comments/Comment;

    .line 407
    new-instance v0, Lcom/github/javaparser/ast/expr/StringLiteralExpr;

    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getTokenRange()Ljava/util/Optional;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/github/javaparser/TokenRange;

    invoke-virtual {p1}, Lcom/github/javaparser/ast/expr/LiteralStringValueExpr;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/github/javaparser/ast/expr/StringLiteralExpr;-><init>(Lcom/github/javaparser/TokenRange;Ljava/lang/String;)V

    .line 408
    invoke-virtual {v0, p2}, Lcom/github/javaparser/ast/Node;->setComment(Lcom/github/javaparser/ast/comments/Comment;)Lcom/github/javaparser/ast/Node;

    .line 409
    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getOrphanComments()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object p2

    new-instance v1, Lc0/a;

    invoke-direct {v1}, Lc0/a;-><init>()V

    invoke-interface {p2, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p2

    new-instance v1, Lc0/W0;

    invoke-direct {v1, v0}, Lc0/W0;-><init>(Lcom/github/javaparser/ast/expr/StringLiteralExpr;)V

    invoke-interface {p2, v1}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    .line 410
    invoke-direct {p0, p1, v0}, Lcom/github/javaparser/ast/visitor/CloneVisitor;->copyData(Lcom/github/javaparser/ast/Node;Lcom/github/javaparser/ast/Node;)V

    return-object v0
.end method

.method public visit(Lcom/github/javaparser/ast/expr/SuperExpr;Ljava/lang/Object;)Lcom/github/javaparser/ast/visitor/Visitable;
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 484
    invoke-virtual {p1}, Lcom/github/javaparser/ast/expr/SuperExpr;->getTypeName()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/github/javaparser/ast/visitor/CloneVisitor;->cloneNode(Ljava/util/Optional;Ljava/lang/Object;)Lcom/github/javaparser/ast/Node;

    move-result-object v0

    check-cast v0, Lcom/github/javaparser/ast/expr/Name;

    .line 485
    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getComment()Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {p0, v1, p2}, Lcom/github/javaparser/ast/visitor/CloneVisitor;->cloneNode(Ljava/util/Optional;Ljava/lang/Object;)Lcom/github/javaparser/ast/Node;

    move-result-object p2

    check-cast p2, Lcom/github/javaparser/ast/comments/Comment;

    .line 486
    new-instance v1, Lcom/github/javaparser/ast/expr/SuperExpr;

    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getTokenRange()Ljava/util/Optional;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/github/javaparser/TokenRange;

    invoke-direct {v1, v2, v0}, Lcom/github/javaparser/ast/expr/SuperExpr;-><init>(Lcom/github/javaparser/TokenRange;Lcom/github/javaparser/ast/expr/Name;)V

    .line 487
    invoke-virtual {v1, p2}, Lcom/github/javaparser/ast/Node;->setComment(Lcom/github/javaparser/ast/comments/Comment;)Lcom/github/javaparser/ast/Node;

    .line 488
    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getOrphanComments()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object p2

    new-instance v0, Lc0/a;

    invoke-direct {v0}, Lc0/a;-><init>()V

    invoke-interface {p2, v0}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p2

    new-instance v0, Lc0/B0;

    invoke-direct {v0, v1}, Lc0/B0;-><init>(Lcom/github/javaparser/ast/expr/SuperExpr;)V

    invoke-interface {p2, v0}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    .line 489
    invoke-direct {p0, p1, v1}, Lcom/github/javaparser/ast/visitor/CloneVisitor;->copyData(Lcom/github/javaparser/ast/Node;Lcom/github/javaparser/ast/Node;)V

    return-object v1
.end method

.method public visit(Lcom/github/javaparser/ast/expr/SwitchExpr;Ljava/lang/Object;)Lcom/github/javaparser/ast/visitor/Visitable;
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 789
    invoke-virtual {p1}, Lcom/github/javaparser/ast/expr/SwitchExpr;->getEntries()Lcom/github/javaparser/ast/NodeList;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lcom/github/javaparser/ast/visitor/CloneVisitor;->cloneList(Lcom/github/javaparser/ast/NodeList;Ljava/lang/Object;)Lcom/github/javaparser/ast/NodeList;

    move-result-object v0

    .line 790
    invoke-virtual {p1}, Lcom/github/javaparser/ast/expr/SwitchExpr;->getSelector()Lcom/github/javaparser/ast/expr/Expression;

    move-result-object v1

    invoke-virtual {p0, v1, p2}, Lcom/github/javaparser/ast/visitor/CloneVisitor;->cloneNode(Lcom/github/javaparser/ast/Node;Ljava/lang/Object;)Lcom/github/javaparser/ast/Node;

    move-result-object v1

    check-cast v1, Lcom/github/javaparser/ast/expr/Expression;

    .line 791
    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getComment()Ljava/util/Optional;

    move-result-object v2

    invoke-virtual {p0, v2, p2}, Lcom/github/javaparser/ast/visitor/CloneVisitor;->cloneNode(Ljava/util/Optional;Ljava/lang/Object;)Lcom/github/javaparser/ast/Node;

    move-result-object p2

    check-cast p2, Lcom/github/javaparser/ast/comments/Comment;

    .line 792
    new-instance v2, Lcom/github/javaparser/ast/expr/SwitchExpr;

    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getTokenRange()Ljava/util/Optional;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/github/javaparser/TokenRange;

    invoke-direct {v2, v3, v1, v0}, Lcom/github/javaparser/ast/expr/SwitchExpr;-><init>(Lcom/github/javaparser/TokenRange;Lcom/github/javaparser/ast/expr/Expression;Lcom/github/javaparser/ast/NodeList;)V

    .line 793
    invoke-virtual {v2, p2}, Lcom/github/javaparser/ast/Node;->setComment(Lcom/github/javaparser/ast/comments/Comment;)Lcom/github/javaparser/ast/Node;

    .line 794
    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getOrphanComments()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object p2

    new-instance v0, Lc0/a;

    invoke-direct {v0}, Lc0/a;-><init>()V

    invoke-interface {p2, v0}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p2

    new-instance v0, Lc0/u;

    invoke-direct {v0, v2}, Lc0/u;-><init>(Lcom/github/javaparser/ast/expr/SwitchExpr;)V

    invoke-interface {p2, v0}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    .line 795
    invoke-direct {p0, p1, v2}, Lcom/github/javaparser/ast/visitor/CloneVisitor;->copyData(Lcom/github/javaparser/ast/Node;Lcom/github/javaparser/ast/Node;)V

    return-object v2
.end method

.method public visit(Lcom/github/javaparser/ast/expr/TextBlockLiteralExpr;Ljava/lang/Object;)Lcom/github/javaparser/ast/visitor/Visitable;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 802
    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getComment()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/github/javaparser/ast/visitor/CloneVisitor;->cloneNode(Ljava/util/Optional;Ljava/lang/Object;)Lcom/github/javaparser/ast/Node;

    move-result-object p2

    check-cast p2, Lcom/github/javaparser/ast/comments/Comment;

    .line 803
    new-instance v0, Lcom/github/javaparser/ast/expr/TextBlockLiteralExpr;

    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getTokenRange()Ljava/util/Optional;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/github/javaparser/TokenRange;

    invoke-virtual {p1}, Lcom/github/javaparser/ast/expr/LiteralStringValueExpr;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/github/javaparser/ast/expr/TextBlockLiteralExpr;-><init>(Lcom/github/javaparser/TokenRange;Ljava/lang/String;)V

    .line 804
    invoke-virtual {v0, p2}, Lcom/github/javaparser/ast/Node;->setComment(Lcom/github/javaparser/ast/comments/Comment;)Lcom/github/javaparser/ast/Node;

    .line 805
    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getOrphanComments()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object p2

    new-instance v1, Lc0/a;

    invoke-direct {v1}, Lc0/a;-><init>()V

    invoke-interface {p2, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p2

    new-instance v1, Lc0/Q0;

    invoke-direct {v1, v0}, Lc0/Q0;-><init>(Lcom/github/javaparser/ast/expr/TextBlockLiteralExpr;)V

    invoke-interface {p2, v1}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    .line 806
    invoke-direct {p0, p1, v0}, Lcom/github/javaparser/ast/visitor/CloneVisitor;->copyData(Lcom/github/javaparser/ast/Node;Lcom/github/javaparser/ast/Node;)V

    return-object v0
.end method

.method public visit(Lcom/github/javaparser/ast/expr/ThisExpr;Ljava/lang/Object;)Lcom/github/javaparser/ast/visitor/Visitable;
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 478
    invoke-virtual {p1}, Lcom/github/javaparser/ast/expr/ThisExpr;->getTypeName()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/github/javaparser/ast/visitor/CloneVisitor;->cloneNode(Ljava/util/Optional;Ljava/lang/Object;)Lcom/github/javaparser/ast/Node;

    move-result-object v0

    check-cast v0, Lcom/github/javaparser/ast/expr/Name;

    .line 479
    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getComment()Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {p0, v1, p2}, Lcom/github/javaparser/ast/visitor/CloneVisitor;->cloneNode(Ljava/util/Optional;Ljava/lang/Object;)Lcom/github/javaparser/ast/Node;

    move-result-object p2

    check-cast p2, Lcom/github/javaparser/ast/comments/Comment;

    .line 480
    new-instance v1, Lcom/github/javaparser/ast/expr/ThisExpr;

    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getTokenRange()Ljava/util/Optional;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/github/javaparser/TokenRange;

    invoke-direct {v1, v2, v0}, Lcom/github/javaparser/ast/expr/ThisExpr;-><init>(Lcom/github/javaparser/TokenRange;Lcom/github/javaparser/ast/expr/Name;)V

    .line 481
    invoke-virtual {v1, p2}, Lcom/github/javaparser/ast/Node;->setComment(Lcom/github/javaparser/ast/comments/Comment;)Lcom/github/javaparser/ast/Node;

    .line 482
    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getOrphanComments()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object p2

    new-instance v0, Lc0/a;

    invoke-direct {v0}, Lc0/a;-><init>()V

    invoke-interface {p2, v0}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p2

    new-instance v0, Lc0/j0;

    invoke-direct {v0, v1}, Lc0/j0;-><init>(Lcom/github/javaparser/ast/expr/ThisExpr;)V

    invoke-interface {p2, v0}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    .line 483
    invoke-direct {p0, p1, v1}, Lcom/github/javaparser/ast/visitor/CloneVisitor;->copyData(Lcom/github/javaparser/ast/Node;Lcom/github/javaparser/ast/Node;)V

    return-object v1
.end method

.method public visit(Lcom/github/javaparser/ast/expr/TypeExpr;Ljava/lang/Object;)Lcom/github/javaparser/ast/visitor/Visitable;
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 704
    invoke-virtual {p1}, Lcom/github/javaparser/ast/expr/TypeExpr;->getType()Lcom/github/javaparser/ast/type/Type;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/github/javaparser/ast/visitor/CloneVisitor;->cloneNode(Lcom/github/javaparser/ast/Node;Ljava/lang/Object;)Lcom/github/javaparser/ast/Node;

    move-result-object v0

    check-cast v0, Lcom/github/javaparser/ast/type/Type;

    .line 705
    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getComment()Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {p0, v1, p2}, Lcom/github/javaparser/ast/visitor/CloneVisitor;->cloneNode(Ljava/util/Optional;Ljava/lang/Object;)Lcom/github/javaparser/ast/Node;

    move-result-object p2

    check-cast p2, Lcom/github/javaparser/ast/comments/Comment;

    .line 706
    new-instance v1, Lcom/github/javaparser/ast/expr/TypeExpr;

    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getTokenRange()Ljava/util/Optional;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/github/javaparser/TokenRange;

    invoke-direct {v1, v2, v0}, Lcom/github/javaparser/ast/expr/TypeExpr;-><init>(Lcom/github/javaparser/TokenRange;Lcom/github/javaparser/ast/type/Type;)V

    .line 707
    invoke-virtual {v1, p2}, Lcom/github/javaparser/ast/Node;->setComment(Lcom/github/javaparser/ast/comments/Comment;)Lcom/github/javaparser/ast/Node;

    .line 708
    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getOrphanComments()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object p2

    new-instance v0, Lc0/a;

    invoke-direct {v0}, Lc0/a;-><init>()V

    invoke-interface {p2, v0}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p2

    new-instance v0, Lc0/d;

    invoke-direct {v0, v1}, Lc0/d;-><init>(Lcom/github/javaparser/ast/expr/TypeExpr;)V

    invoke-interface {p2, v0}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    .line 709
    invoke-direct {p0, p1, v1}, Lcom/github/javaparser/ast/visitor/CloneVisitor;->copyData(Lcom/github/javaparser/ast/Node;Lcom/github/javaparser/ast/Node;)V

    return-object v1
.end method

.method public visit(Lcom/github/javaparser/ast/expr/TypePatternExpr;Ljava/lang/Object;)Lcom/github/javaparser/ast/visitor/Visitable;
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 807
    invoke-virtual {p1}, Lcom/github/javaparser/ast/expr/TypePatternExpr;->getModifiers()Lcom/github/javaparser/ast/NodeList;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lcom/github/javaparser/ast/visitor/CloneVisitor;->cloneList(Lcom/github/javaparser/ast/NodeList;Ljava/lang/Object;)Lcom/github/javaparser/ast/NodeList;

    move-result-object v0

    .line 808
    invoke-virtual {p1}, Lcom/github/javaparser/ast/expr/TypePatternExpr;->getName()Lcom/github/javaparser/ast/expr/SimpleName;

    move-result-object v1

    invoke-virtual {p0, v1, p2}, Lcom/github/javaparser/ast/visitor/CloneVisitor;->cloneNode(Lcom/github/javaparser/ast/Node;Ljava/lang/Object;)Lcom/github/javaparser/ast/Node;

    move-result-object v1

    check-cast v1, Lcom/github/javaparser/ast/expr/SimpleName;

    .line 809
    invoke-virtual {p1}, Lcom/github/javaparser/ast/expr/PatternExpr;->getType()Lcom/github/javaparser/ast/type/Type;

    move-result-object v2

    invoke-virtual {p0, v2, p2}, Lcom/github/javaparser/ast/visitor/CloneVisitor;->cloneNode(Lcom/github/javaparser/ast/Node;Ljava/lang/Object;)Lcom/github/javaparser/ast/Node;

    move-result-object v2

    check-cast v2, Lcom/github/javaparser/ast/type/Type;

    .line 810
    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getComment()Ljava/util/Optional;

    move-result-object v3

    invoke-virtual {p0, v3, p2}, Lcom/github/javaparser/ast/visitor/CloneVisitor;->cloneNode(Ljava/util/Optional;Ljava/lang/Object;)Lcom/github/javaparser/ast/Node;

    move-result-object p2

    check-cast p2, Lcom/github/javaparser/ast/comments/Comment;

    .line 811
    new-instance v3, Lcom/github/javaparser/ast/expr/TypePatternExpr;

    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getTokenRange()Ljava/util/Optional;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/github/javaparser/TokenRange;

    invoke-direct {v3, v4, v0, v2, v1}, Lcom/github/javaparser/ast/expr/TypePatternExpr;-><init>(Lcom/github/javaparser/TokenRange;Lcom/github/javaparser/ast/NodeList;Lcom/github/javaparser/ast/type/Type;Lcom/github/javaparser/ast/expr/SimpleName;)V

    .line 812
    invoke-virtual {v3, p2}, Lcom/github/javaparser/ast/Node;->setComment(Lcom/github/javaparser/ast/comments/Comment;)Lcom/github/javaparser/ast/Node;

    .line 813
    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getOrphanComments()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object p2

    new-instance v0, Lc0/a;

    invoke-direct {v0}, Lc0/a;-><init>()V

    invoke-interface {p2, v0}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p2

    new-instance v0, Lc0/N0;

    invoke-direct {v0, v3}, Lc0/N0;-><init>(Lcom/github/javaparser/ast/expr/TypePatternExpr;)V

    invoke-interface {p2, v0}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    .line 814
    invoke-direct {p0, p1, v3}, Lcom/github/javaparser/ast/visitor/CloneVisitor;->copyData(Lcom/github/javaparser/ast/Node;Lcom/github/javaparser/ast/Node;)V

    return-object v3
.end method

.method public visit(Lcom/github/javaparser/ast/expr/UnaryExpr;Ljava/lang/Object;)Lcom/github/javaparser/ast/visitor/Visitable;
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 490
    invoke-virtual {p1}, Lcom/github/javaparser/ast/expr/UnaryExpr;->getExpression()Lcom/github/javaparser/ast/expr/Expression;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/github/javaparser/ast/visitor/CloneVisitor;->cloneNode(Lcom/github/javaparser/ast/Node;Ljava/lang/Object;)Lcom/github/javaparser/ast/Node;

    move-result-object v0

    check-cast v0, Lcom/github/javaparser/ast/expr/Expression;

    .line 491
    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getComment()Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {p0, v1, p2}, Lcom/github/javaparser/ast/visitor/CloneVisitor;->cloneNode(Ljava/util/Optional;Ljava/lang/Object;)Lcom/github/javaparser/ast/Node;

    move-result-object p2

    check-cast p2, Lcom/github/javaparser/ast/comments/Comment;

    .line 492
    new-instance v1, Lcom/github/javaparser/ast/expr/UnaryExpr;

    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getTokenRange()Ljava/util/Optional;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/github/javaparser/TokenRange;

    invoke-virtual {p1}, Lcom/github/javaparser/ast/expr/UnaryExpr;->getOperator()Lcom/github/javaparser/ast/expr/UnaryExpr$Operator;

    move-result-object v3

    invoke-direct {v1, v2, v0, v3}, Lcom/github/javaparser/ast/expr/UnaryExpr;-><init>(Lcom/github/javaparser/TokenRange;Lcom/github/javaparser/ast/expr/Expression;Lcom/github/javaparser/ast/expr/UnaryExpr$Operator;)V

    .line 493
    invoke-virtual {v1, p2}, Lcom/github/javaparser/ast/Node;->setComment(Lcom/github/javaparser/ast/comments/Comment;)Lcom/github/javaparser/ast/Node;

    .line 494
    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getOrphanComments()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object p2

    new-instance v0, Lc0/a;

    invoke-direct {v0}, Lc0/a;-><init>()V

    invoke-interface {p2, v0}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p2

    new-instance v0, Lc0/X0;

    invoke-direct {v0, v1}, Lc0/X0;-><init>(Lcom/github/javaparser/ast/expr/UnaryExpr;)V

    invoke-interface {p2, v0}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    .line 495
    invoke-direct {p0, p1, v1}, Lcom/github/javaparser/ast/visitor/CloneVisitor;->copyData(Lcom/github/javaparser/ast/Node;Lcom/github/javaparser/ast/Node;)V

    return-object v1
.end method

.method public visit(Lcom/github/javaparser/ast/expr/VariableDeclarationExpr;Ljava/lang/Object;)Lcom/github/javaparser/ast/visitor/Visitable;
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 496
    invoke-virtual {p1}, Lcom/github/javaparser/ast/expr/VariableDeclarationExpr;->getAnnotations()Lcom/github/javaparser/ast/NodeList;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lcom/github/javaparser/ast/visitor/CloneVisitor;->cloneList(Lcom/github/javaparser/ast/NodeList;Ljava/lang/Object;)Lcom/github/javaparser/ast/NodeList;

    move-result-object v0

    .line 497
    invoke-virtual {p1}, Lcom/github/javaparser/ast/expr/VariableDeclarationExpr;->getModifiers()Lcom/github/javaparser/ast/NodeList;

    move-result-object v1

    invoke-direct {p0, v1, p2}, Lcom/github/javaparser/ast/visitor/CloneVisitor;->cloneList(Lcom/github/javaparser/ast/NodeList;Ljava/lang/Object;)Lcom/github/javaparser/ast/NodeList;

    move-result-object v1

    .line 498
    invoke-virtual {p1}, Lcom/github/javaparser/ast/expr/VariableDeclarationExpr;->getVariables()Lcom/github/javaparser/ast/NodeList;

    move-result-object v2

    invoke-direct {p0, v2, p2}, Lcom/github/javaparser/ast/visitor/CloneVisitor;->cloneList(Lcom/github/javaparser/ast/NodeList;Ljava/lang/Object;)Lcom/github/javaparser/ast/NodeList;

    move-result-object v2

    .line 499
    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getComment()Ljava/util/Optional;

    move-result-object v3

    invoke-virtual {p0, v3, p2}, Lcom/github/javaparser/ast/visitor/CloneVisitor;->cloneNode(Ljava/util/Optional;Ljava/lang/Object;)Lcom/github/javaparser/ast/Node;

    move-result-object p2

    check-cast p2, Lcom/github/javaparser/ast/comments/Comment;

    .line 500
    new-instance v3, Lcom/github/javaparser/ast/expr/VariableDeclarationExpr;

    .line 501
    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getTokenRange()Ljava/util/Optional;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/github/javaparser/TokenRange;

    invoke-direct {v3, v4, v1, v0, v2}, Lcom/github/javaparser/ast/expr/VariableDeclarationExpr;-><init>(Lcom/github/javaparser/TokenRange;Lcom/github/javaparser/ast/NodeList;Lcom/github/javaparser/ast/NodeList;Lcom/github/javaparser/ast/NodeList;)V

    .line 502
    invoke-virtual {v3, p2}, Lcom/github/javaparser/ast/Node;->setComment(Lcom/github/javaparser/ast/comments/Comment;)Lcom/github/javaparser/ast/Node;

    .line 503
    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getOrphanComments()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object p2

    new-instance v0, Lc0/a;

    invoke-direct {v0}, Lc0/a;-><init>()V

    invoke-interface {p2, v0}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p2

    new-instance v0, Lc0/L0;

    invoke-direct {v0, v3}, Lc0/L0;-><init>(Lcom/github/javaparser/ast/expr/VariableDeclarationExpr;)V

    invoke-interface {p2, v0}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    .line 504
    invoke-direct {p0, p1, v3}, Lcom/github/javaparser/ast/visitor/CloneVisitor;->copyData(Lcom/github/javaparser/ast/Node;Lcom/github/javaparser/ast/Node;)V

    return-object v3
.end method

.method public visit(Lcom/github/javaparser/ast/modules/ModuleDeclaration;Ljava/lang/Object;)Lcom/github/javaparser/ast/visitor/Visitable;
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 720
    invoke-virtual {p1}, Lcom/github/javaparser/ast/modules/ModuleDeclaration;->getAnnotations()Lcom/github/javaparser/ast/NodeList;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lcom/github/javaparser/ast/visitor/CloneVisitor;->cloneList(Lcom/github/javaparser/ast/NodeList;Ljava/lang/Object;)Lcom/github/javaparser/ast/NodeList;

    move-result-object v3

    .line 721
    invoke-virtual {p1}, Lcom/github/javaparser/ast/modules/ModuleDeclaration;->getDirectives()Lcom/github/javaparser/ast/NodeList;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lcom/github/javaparser/ast/visitor/CloneVisitor;->cloneList(Lcom/github/javaparser/ast/NodeList;Ljava/lang/Object;)Lcom/github/javaparser/ast/NodeList;

    move-result-object v6

    .line 722
    invoke-virtual {p1}, Lcom/github/javaparser/ast/modules/ModuleDeclaration;->getName()Lcom/github/javaparser/ast/expr/Name;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/github/javaparser/ast/visitor/CloneVisitor;->cloneNode(Lcom/github/javaparser/ast/Node;Ljava/lang/Object;)Lcom/github/javaparser/ast/Node;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lcom/github/javaparser/ast/expr/Name;

    .line 723
    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getComment()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/github/javaparser/ast/visitor/CloneVisitor;->cloneNode(Ljava/util/Optional;Ljava/lang/Object;)Lcom/github/javaparser/ast/Node;

    move-result-object p2

    check-cast p2, Lcom/github/javaparser/ast/comments/Comment;

    .line 724
    new-instance v0, Lcom/github/javaparser/ast/modules/ModuleDeclaration;

    .line 725
    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getTokenRange()Ljava/util/Optional;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/github/javaparser/TokenRange;

    invoke-virtual {p1}, Lcom/github/javaparser/ast/modules/ModuleDeclaration;->isOpen()Z

    move-result v5

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/github/javaparser/ast/modules/ModuleDeclaration;-><init>(Lcom/github/javaparser/TokenRange;Lcom/github/javaparser/ast/NodeList;Lcom/github/javaparser/ast/expr/Name;ZLcom/github/javaparser/ast/NodeList;)V

    .line 726
    invoke-virtual {v0, p2}, Lcom/github/javaparser/ast/Node;->setComment(Lcom/github/javaparser/ast/comments/Comment;)Lcom/github/javaparser/ast/Node;

    .line 727
    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getOrphanComments()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object p2

    new-instance v1, Lc0/a;

    invoke-direct {v1}, Lc0/a;-><init>()V

    invoke-interface {p2, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p2

    new-instance v1, Lc0/C0;

    invoke-direct {v1, v0}, Lc0/C0;-><init>(Lcom/github/javaparser/ast/modules/ModuleDeclaration;)V

    invoke-interface {p2, v1}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    .line 728
    invoke-direct {p0, p1, v0}, Lcom/github/javaparser/ast/visitor/CloneVisitor;->copyData(Lcom/github/javaparser/ast/Node;Lcom/github/javaparser/ast/Node;)V

    return-object v0
.end method

.method public visit(Lcom/github/javaparser/ast/modules/ModuleExportsDirective;Ljava/lang/Object;)Lcom/github/javaparser/ast/visitor/Visitable;
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 737
    invoke-virtual {p1}, Lcom/github/javaparser/ast/modules/ModuleExportsDirective;->getModuleNames()Lcom/github/javaparser/ast/NodeList;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lcom/github/javaparser/ast/visitor/CloneVisitor;->cloneList(Lcom/github/javaparser/ast/NodeList;Ljava/lang/Object;)Lcom/github/javaparser/ast/NodeList;

    move-result-object v0

    .line 738
    invoke-virtual {p1}, Lcom/github/javaparser/ast/modules/ModuleExportsDirective;->getName()Lcom/github/javaparser/ast/expr/Name;

    move-result-object v1

    invoke-virtual {p0, v1, p2}, Lcom/github/javaparser/ast/visitor/CloneVisitor;->cloneNode(Lcom/github/javaparser/ast/Node;Ljava/lang/Object;)Lcom/github/javaparser/ast/Node;

    move-result-object v1

    check-cast v1, Lcom/github/javaparser/ast/expr/Name;

    .line 739
    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getComment()Ljava/util/Optional;

    move-result-object v2

    invoke-virtual {p0, v2, p2}, Lcom/github/javaparser/ast/visitor/CloneVisitor;->cloneNode(Ljava/util/Optional;Ljava/lang/Object;)Lcom/github/javaparser/ast/Node;

    move-result-object p2

    check-cast p2, Lcom/github/javaparser/ast/comments/Comment;

    .line 740
    new-instance v2, Lcom/github/javaparser/ast/modules/ModuleExportsDirective;

    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getTokenRange()Ljava/util/Optional;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/github/javaparser/TokenRange;

    invoke-direct {v2, v3, v1, v0}, Lcom/github/javaparser/ast/modules/ModuleExportsDirective;-><init>(Lcom/github/javaparser/TokenRange;Lcom/github/javaparser/ast/expr/Name;Lcom/github/javaparser/ast/NodeList;)V

    .line 741
    invoke-virtual {v2, p2}, Lcom/github/javaparser/ast/Node;->setComment(Lcom/github/javaparser/ast/comments/Comment;)Lcom/github/javaparser/ast/Node;

    .line 742
    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getOrphanComments()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object p2

    new-instance v0, Lc0/a;

    invoke-direct {v0}, Lc0/a;-><init>()V

    invoke-interface {p2, v0}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p2

    new-instance v0, Lc0/F;

    invoke-direct {v0, v2}, Lc0/F;-><init>(Lcom/github/javaparser/ast/modules/ModuleExportsDirective;)V

    invoke-interface {p2, v0}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    .line 743
    invoke-direct {p0, p1, v2}, Lcom/github/javaparser/ast/visitor/CloneVisitor;->copyData(Lcom/github/javaparser/ast/Node;Lcom/github/javaparser/ast/Node;)V

    return-object v2
.end method

.method public visit(Lcom/github/javaparser/ast/modules/ModuleOpensDirective;Ljava/lang/Object;)Lcom/github/javaparser/ast/visitor/Visitable;
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 758
    invoke-virtual {p1}, Lcom/github/javaparser/ast/modules/ModuleOpensDirective;->getModuleNames()Lcom/github/javaparser/ast/NodeList;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lcom/github/javaparser/ast/visitor/CloneVisitor;->cloneList(Lcom/github/javaparser/ast/NodeList;Ljava/lang/Object;)Lcom/github/javaparser/ast/NodeList;

    move-result-object v0

    .line 759
    invoke-virtual {p1}, Lcom/github/javaparser/ast/modules/ModuleOpensDirective;->getName()Lcom/github/javaparser/ast/expr/Name;

    move-result-object v1

    invoke-virtual {p0, v1, p2}, Lcom/github/javaparser/ast/visitor/CloneVisitor;->cloneNode(Lcom/github/javaparser/ast/Node;Ljava/lang/Object;)Lcom/github/javaparser/ast/Node;

    move-result-object v1

    check-cast v1, Lcom/github/javaparser/ast/expr/Name;

    .line 760
    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getComment()Ljava/util/Optional;

    move-result-object v2

    invoke-virtual {p0, v2, p2}, Lcom/github/javaparser/ast/visitor/CloneVisitor;->cloneNode(Ljava/util/Optional;Ljava/lang/Object;)Lcom/github/javaparser/ast/Node;

    move-result-object p2

    check-cast p2, Lcom/github/javaparser/ast/comments/Comment;

    .line 761
    new-instance v2, Lcom/github/javaparser/ast/modules/ModuleOpensDirective;

    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getTokenRange()Ljava/util/Optional;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/github/javaparser/TokenRange;

    invoke-direct {v2, v3, v1, v0}, Lcom/github/javaparser/ast/modules/ModuleOpensDirective;-><init>(Lcom/github/javaparser/TokenRange;Lcom/github/javaparser/ast/expr/Name;Lcom/github/javaparser/ast/NodeList;)V

    .line 762
    invoke-virtual {v2, p2}, Lcom/github/javaparser/ast/Node;->setComment(Lcom/github/javaparser/ast/comments/Comment;)Lcom/github/javaparser/ast/Node;

    .line 763
    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getOrphanComments()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object p2

    new-instance v0, Lc0/a;

    invoke-direct {v0}, Lc0/a;-><init>()V

    invoke-interface {p2, v0}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p2

    new-instance v0, Lc0/R0;

    invoke-direct {v0, v2}, Lc0/R0;-><init>(Lcom/github/javaparser/ast/modules/ModuleOpensDirective;)V

    invoke-interface {p2, v0}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    .line 764
    invoke-direct {p0, p1, v2}, Lcom/github/javaparser/ast/visitor/CloneVisitor;->copyData(Lcom/github/javaparser/ast/Node;Lcom/github/javaparser/ast/Node;)V

    return-object v2
.end method

.method public visit(Lcom/github/javaparser/ast/modules/ModuleProvidesDirective;Ljava/lang/Object;)Lcom/github/javaparser/ast/visitor/Visitable;
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 744
    invoke-virtual {p1}, Lcom/github/javaparser/ast/modules/ModuleProvidesDirective;->getName()Lcom/github/javaparser/ast/expr/Name;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/github/javaparser/ast/visitor/CloneVisitor;->cloneNode(Lcom/github/javaparser/ast/Node;Ljava/lang/Object;)Lcom/github/javaparser/ast/Node;

    move-result-object v0

    check-cast v0, Lcom/github/javaparser/ast/expr/Name;

    .line 745
    invoke-virtual {p1}, Lcom/github/javaparser/ast/modules/ModuleProvidesDirective;->getWith()Lcom/github/javaparser/ast/NodeList;

    move-result-object v1

    invoke-direct {p0, v1, p2}, Lcom/github/javaparser/ast/visitor/CloneVisitor;->cloneList(Lcom/github/javaparser/ast/NodeList;Ljava/lang/Object;)Lcom/github/javaparser/ast/NodeList;

    move-result-object v1

    .line 746
    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getComment()Ljava/util/Optional;

    move-result-object v2

    invoke-virtual {p0, v2, p2}, Lcom/github/javaparser/ast/visitor/CloneVisitor;->cloneNode(Ljava/util/Optional;Ljava/lang/Object;)Lcom/github/javaparser/ast/Node;

    move-result-object p2

    check-cast p2, Lcom/github/javaparser/ast/comments/Comment;

    .line 747
    new-instance v2, Lcom/github/javaparser/ast/modules/ModuleProvidesDirective;

    .line 748
    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getTokenRange()Ljava/util/Optional;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/github/javaparser/TokenRange;

    invoke-direct {v2, v3, v0, v1}, Lcom/github/javaparser/ast/modules/ModuleProvidesDirective;-><init>(Lcom/github/javaparser/TokenRange;Lcom/github/javaparser/ast/expr/Name;Lcom/github/javaparser/ast/NodeList;)V

    .line 749
    invoke-virtual {v2, p2}, Lcom/github/javaparser/ast/Node;->setComment(Lcom/github/javaparser/ast/comments/Comment;)Lcom/github/javaparser/ast/Node;

    .line 750
    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getOrphanComments()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object p2

    new-instance v0, Lc0/a;

    invoke-direct {v0}, Lc0/a;-><init>()V

    invoke-interface {p2, v0}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p2

    new-instance v0, Lc0/W;

    invoke-direct {v0, v2}, Lc0/W;-><init>(Lcom/github/javaparser/ast/modules/ModuleProvidesDirective;)V

    invoke-interface {p2, v0}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    .line 751
    invoke-direct {p0, p1, v2}, Lcom/github/javaparser/ast/visitor/CloneVisitor;->copyData(Lcom/github/javaparser/ast/Node;Lcom/github/javaparser/ast/Node;)V

    return-object v2
.end method

.method public visit(Lcom/github/javaparser/ast/modules/ModuleRequiresDirective;Ljava/lang/Object;)Lcom/github/javaparser/ast/visitor/Visitable;
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 729
    invoke-virtual {p1}, Lcom/github/javaparser/ast/modules/ModuleRequiresDirective;->getModifiers()Lcom/github/javaparser/ast/NodeList;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lcom/github/javaparser/ast/visitor/CloneVisitor;->cloneList(Lcom/github/javaparser/ast/NodeList;Ljava/lang/Object;)Lcom/github/javaparser/ast/NodeList;

    move-result-object v0

    .line 730
    invoke-virtual {p1}, Lcom/github/javaparser/ast/modules/ModuleRequiresDirective;->getName()Lcom/github/javaparser/ast/expr/Name;

    move-result-object v1

    invoke-virtual {p0, v1, p2}, Lcom/github/javaparser/ast/visitor/CloneVisitor;->cloneNode(Lcom/github/javaparser/ast/Node;Ljava/lang/Object;)Lcom/github/javaparser/ast/Node;

    move-result-object v1

    check-cast v1, Lcom/github/javaparser/ast/expr/Name;

    .line 731
    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getComment()Ljava/util/Optional;

    move-result-object v2

    invoke-virtual {p0, v2, p2}, Lcom/github/javaparser/ast/visitor/CloneVisitor;->cloneNode(Ljava/util/Optional;Ljava/lang/Object;)Lcom/github/javaparser/ast/Node;

    move-result-object p2

    check-cast p2, Lcom/github/javaparser/ast/comments/Comment;

    .line 732
    new-instance v2, Lcom/github/javaparser/ast/modules/ModuleRequiresDirective;

    .line 733
    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getTokenRange()Ljava/util/Optional;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/github/javaparser/TokenRange;

    invoke-direct {v2, v3, v0, v1}, Lcom/github/javaparser/ast/modules/ModuleRequiresDirective;-><init>(Lcom/github/javaparser/TokenRange;Lcom/github/javaparser/ast/NodeList;Lcom/github/javaparser/ast/expr/Name;)V

    .line 734
    invoke-virtual {v2, p2}, Lcom/github/javaparser/ast/Node;->setComment(Lcom/github/javaparser/ast/comments/Comment;)Lcom/github/javaparser/ast/Node;

    .line 735
    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getOrphanComments()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object p2

    new-instance v0, Lc0/a;

    invoke-direct {v0}, Lc0/a;-><init>()V

    invoke-interface {p2, v0}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p2

    new-instance v0, Lc0/y0;

    invoke-direct {v0, v2}, Lc0/y0;-><init>(Lcom/github/javaparser/ast/modules/ModuleRequiresDirective;)V

    invoke-interface {p2, v0}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    .line 736
    invoke-direct {p0, p1, v2}, Lcom/github/javaparser/ast/visitor/CloneVisitor;->copyData(Lcom/github/javaparser/ast/Node;Lcom/github/javaparser/ast/Node;)V

    return-object v2
.end method

.method public visit(Lcom/github/javaparser/ast/modules/ModuleUsesDirective;Ljava/lang/Object;)Lcom/github/javaparser/ast/visitor/Visitable;
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 752
    invoke-virtual {p1}, Lcom/github/javaparser/ast/modules/ModuleUsesDirective;->getName()Lcom/github/javaparser/ast/expr/Name;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/github/javaparser/ast/visitor/CloneVisitor;->cloneNode(Lcom/github/javaparser/ast/Node;Ljava/lang/Object;)Lcom/github/javaparser/ast/Node;

    move-result-object v0

    check-cast v0, Lcom/github/javaparser/ast/expr/Name;

    .line 753
    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getComment()Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {p0, v1, p2}, Lcom/github/javaparser/ast/visitor/CloneVisitor;->cloneNode(Ljava/util/Optional;Ljava/lang/Object;)Lcom/github/javaparser/ast/Node;

    move-result-object p2

    check-cast p2, Lcom/github/javaparser/ast/comments/Comment;

    .line 754
    new-instance v1, Lcom/github/javaparser/ast/modules/ModuleUsesDirective;

    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getTokenRange()Ljava/util/Optional;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/github/javaparser/TokenRange;

    invoke-direct {v1, v2, v0}, Lcom/github/javaparser/ast/modules/ModuleUsesDirective;-><init>(Lcom/github/javaparser/TokenRange;Lcom/github/javaparser/ast/expr/Name;)V

    .line 755
    invoke-virtual {v1, p2}, Lcom/github/javaparser/ast/Node;->setComment(Lcom/github/javaparser/ast/comments/Comment;)Lcom/github/javaparser/ast/Node;

    .line 756
    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getOrphanComments()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object p2

    new-instance v0, Lc0/a;

    invoke-direct {v0}, Lc0/a;-><init>()V

    invoke-interface {p2, v0}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p2

    new-instance v0, Lc0/l;

    invoke-direct {v0, v1}, Lc0/l;-><init>(Lcom/github/javaparser/ast/modules/ModuleUsesDirective;)V

    invoke-interface {p2, v0}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    .line 757
    invoke-direct {p0, p1, v1}, Lcom/github/javaparser/ast/visitor/CloneVisitor;->copyData(Lcom/github/javaparser/ast/Node;Lcom/github/javaparser/ast/Node;)V

    return-object v1
.end method

.method public visit(Lcom/github/javaparser/ast/stmt/AssertStmt;Ljava/lang/Object;)Lcom/github/javaparser/ast/visitor/Visitable;
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 556
    invoke-virtual {p1}, Lcom/github/javaparser/ast/stmt/AssertStmt;->getCheck()Lcom/github/javaparser/ast/expr/Expression;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/github/javaparser/ast/visitor/CloneVisitor;->cloneNode(Lcom/github/javaparser/ast/Node;Ljava/lang/Object;)Lcom/github/javaparser/ast/Node;

    move-result-object v0

    check-cast v0, Lcom/github/javaparser/ast/expr/Expression;

    .line 557
    invoke-virtual {p1}, Lcom/github/javaparser/ast/stmt/AssertStmt;->getMessage()Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {p0, v1, p2}, Lcom/github/javaparser/ast/visitor/CloneVisitor;->cloneNode(Ljava/util/Optional;Ljava/lang/Object;)Lcom/github/javaparser/ast/Node;

    move-result-object v1

    check-cast v1, Lcom/github/javaparser/ast/expr/Expression;

    .line 558
    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getComment()Ljava/util/Optional;

    move-result-object v2

    invoke-virtual {p0, v2, p2}, Lcom/github/javaparser/ast/visitor/CloneVisitor;->cloneNode(Ljava/util/Optional;Ljava/lang/Object;)Lcom/github/javaparser/ast/Node;

    move-result-object p2

    check-cast p2, Lcom/github/javaparser/ast/comments/Comment;

    .line 559
    new-instance v2, Lcom/github/javaparser/ast/stmt/AssertStmt;

    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getTokenRange()Ljava/util/Optional;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/github/javaparser/TokenRange;

    invoke-direct {v2, v3, v0, v1}, Lcom/github/javaparser/ast/stmt/AssertStmt;-><init>(Lcom/github/javaparser/TokenRange;Lcom/github/javaparser/ast/expr/Expression;Lcom/github/javaparser/ast/expr/Expression;)V

    .line 560
    invoke-virtual {v2, p2}, Lcom/github/javaparser/ast/Node;->setComment(Lcom/github/javaparser/ast/comments/Comment;)Lcom/github/javaparser/ast/Node;

    .line 561
    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getOrphanComments()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object p2

    new-instance v0, Lc0/a;

    invoke-direct {v0}, Lc0/a;-><init>()V

    invoke-interface {p2, v0}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p2

    new-instance v0, Lc0/p;

    invoke-direct {v0, v2}, Lc0/p;-><init>(Lcom/github/javaparser/ast/stmt/AssertStmt;)V

    invoke-interface {p2, v0}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    .line 562
    invoke-direct {p0, p1, v2}, Lcom/github/javaparser/ast/visitor/CloneVisitor;->copyData(Lcom/github/javaparser/ast/Node;Lcom/github/javaparser/ast/Node;)V

    return-object v2
.end method

.method public visit(Lcom/github/javaparser/ast/stmt/BlockStmt;Ljava/lang/Object;)Lcom/github/javaparser/ast/visitor/Visitable;
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 563
    invoke-virtual {p1}, Lcom/github/javaparser/ast/stmt/BlockStmt;->getStatements()Lcom/github/javaparser/ast/NodeList;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lcom/github/javaparser/ast/visitor/CloneVisitor;->cloneList(Lcom/github/javaparser/ast/NodeList;Ljava/lang/Object;)Lcom/github/javaparser/ast/NodeList;

    move-result-object v0

    .line 564
    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getComment()Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {p0, v1, p2}, Lcom/github/javaparser/ast/visitor/CloneVisitor;->cloneNode(Ljava/util/Optional;Ljava/lang/Object;)Lcom/github/javaparser/ast/Node;

    move-result-object p2

    check-cast p2, Lcom/github/javaparser/ast/comments/Comment;

    .line 565
    new-instance v1, Lcom/github/javaparser/ast/stmt/BlockStmt;

    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getTokenRange()Ljava/util/Optional;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/github/javaparser/TokenRange;

    invoke-direct {v1, v2, v0}, Lcom/github/javaparser/ast/stmt/BlockStmt;-><init>(Lcom/github/javaparser/TokenRange;Lcom/github/javaparser/ast/NodeList;)V

    .line 566
    invoke-virtual {v1, p2}, Lcom/github/javaparser/ast/Node;->setComment(Lcom/github/javaparser/ast/comments/Comment;)Lcom/github/javaparser/ast/Node;

    .line 567
    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getOrphanComments()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object p2

    new-instance v0, Lc0/a;

    invoke-direct {v0}, Lc0/a;-><init>()V

    invoke-interface {p2, v0}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p2

    new-instance v0, Lc0/E0;

    invoke-direct {v0, v1}, Lc0/E0;-><init>(Lcom/github/javaparser/ast/stmt/BlockStmt;)V

    invoke-interface {p2, v0}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    .line 568
    invoke-direct {p0, p1, v1}, Lcom/github/javaparser/ast/visitor/CloneVisitor;->copyData(Lcom/github/javaparser/ast/Node;Lcom/github/javaparser/ast/Node;)V

    return-object v1
.end method

.method public visit(Lcom/github/javaparser/ast/stmt/BreakStmt;Ljava/lang/Object;)Lcom/github/javaparser/ast/visitor/Visitable;
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 603
    invoke-virtual {p1}, Lcom/github/javaparser/ast/stmt/BreakStmt;->getLabel()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/github/javaparser/ast/visitor/CloneVisitor;->cloneNode(Ljava/util/Optional;Ljava/lang/Object;)Lcom/github/javaparser/ast/Node;

    move-result-object v0

    check-cast v0, Lcom/github/javaparser/ast/expr/SimpleName;

    .line 604
    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getComment()Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {p0, v1, p2}, Lcom/github/javaparser/ast/visitor/CloneVisitor;->cloneNode(Ljava/util/Optional;Ljava/lang/Object;)Lcom/github/javaparser/ast/Node;

    move-result-object p2

    check-cast p2, Lcom/github/javaparser/ast/comments/Comment;

    .line 605
    new-instance v1, Lcom/github/javaparser/ast/stmt/BreakStmt;

    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getTokenRange()Ljava/util/Optional;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/github/javaparser/TokenRange;

    invoke-direct {v1, v2, v0}, Lcom/github/javaparser/ast/stmt/BreakStmt;-><init>(Lcom/github/javaparser/TokenRange;Lcom/github/javaparser/ast/expr/SimpleName;)V

    .line 606
    invoke-virtual {v1, p2}, Lcom/github/javaparser/ast/Node;->setComment(Lcom/github/javaparser/ast/comments/Comment;)Lcom/github/javaparser/ast/Node;

    .line 607
    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getOrphanComments()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object p2

    new-instance v0, Lc0/a;

    invoke-direct {v0}, Lc0/a;-><init>()V

    invoke-interface {p2, v0}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p2

    new-instance v0, Lc0/v;

    invoke-direct {v0, v1}, Lc0/v;-><init>(Lcom/github/javaparser/ast/stmt/BreakStmt;)V

    invoke-interface {p2, v0}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    .line 608
    invoke-direct {p0, p1, v1}, Lcom/github/javaparser/ast/visitor/CloneVisitor;->copyData(Lcom/github/javaparser/ast/Node;Lcom/github/javaparser/ast/Node;)V

    return-object v1
.end method

.method public visit(Lcom/github/javaparser/ast/stmt/CatchClause;Ljava/lang/Object;)Lcom/github/javaparser/ast/visitor/Visitable;
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 682
    invoke-virtual {p1}, Lcom/github/javaparser/ast/stmt/CatchClause;->getBody()Lcom/github/javaparser/ast/stmt/BlockStmt;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/github/javaparser/ast/visitor/CloneVisitor;->cloneNode(Lcom/github/javaparser/ast/Node;Ljava/lang/Object;)Lcom/github/javaparser/ast/Node;

    move-result-object v0

    check-cast v0, Lcom/github/javaparser/ast/stmt/BlockStmt;

    .line 683
    invoke-virtual {p1}, Lcom/github/javaparser/ast/stmt/CatchClause;->getParameter()Lcom/github/javaparser/ast/body/Parameter;

    move-result-object v1

    invoke-virtual {p0, v1, p2}, Lcom/github/javaparser/ast/visitor/CloneVisitor;->cloneNode(Lcom/github/javaparser/ast/Node;Ljava/lang/Object;)Lcom/github/javaparser/ast/Node;

    move-result-object v1

    check-cast v1, Lcom/github/javaparser/ast/body/Parameter;

    .line 684
    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getComment()Ljava/util/Optional;

    move-result-object v2

    invoke-virtual {p0, v2, p2}, Lcom/github/javaparser/ast/visitor/CloneVisitor;->cloneNode(Ljava/util/Optional;Ljava/lang/Object;)Lcom/github/javaparser/ast/Node;

    move-result-object p2

    check-cast p2, Lcom/github/javaparser/ast/comments/Comment;

    .line 685
    new-instance v2, Lcom/github/javaparser/ast/stmt/CatchClause;

    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getTokenRange()Ljava/util/Optional;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/github/javaparser/TokenRange;

    invoke-direct {v2, v3, v1, v0}, Lcom/github/javaparser/ast/stmt/CatchClause;-><init>(Lcom/github/javaparser/TokenRange;Lcom/github/javaparser/ast/body/Parameter;Lcom/github/javaparser/ast/stmt/BlockStmt;)V

    .line 686
    invoke-virtual {v2, p2}, Lcom/github/javaparser/ast/Node;->setComment(Lcom/github/javaparser/ast/comments/Comment;)Lcom/github/javaparser/ast/Node;

    .line 687
    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getOrphanComments()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object p2

    new-instance v0, Lc0/a;

    invoke-direct {v0}, Lc0/a;-><init>()V

    invoke-interface {p2, v0}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p2

    new-instance v0, Lc0/E;

    invoke-direct {v0, v2}, Lc0/E;-><init>(Lcom/github/javaparser/ast/stmt/CatchClause;)V

    invoke-interface {p2, v0}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    .line 688
    invoke-direct {p0, p1, v2}, Lcom/github/javaparser/ast/visitor/CloneVisitor;->copyData(Lcom/github/javaparser/ast/Node;Lcom/github/javaparser/ast/Node;)V

    return-object v2
.end method

.method public visit(Lcom/github/javaparser/ast/stmt/ContinueStmt;Ljava/lang/Object;)Lcom/github/javaparser/ast/visitor/Visitable;
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 630
    invoke-virtual {p1}, Lcom/github/javaparser/ast/stmt/ContinueStmt;->getLabel()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/github/javaparser/ast/visitor/CloneVisitor;->cloneNode(Ljava/util/Optional;Ljava/lang/Object;)Lcom/github/javaparser/ast/Node;

    move-result-object v0

    check-cast v0, Lcom/github/javaparser/ast/expr/SimpleName;

    .line 631
    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getComment()Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {p0, v1, p2}, Lcom/github/javaparser/ast/visitor/CloneVisitor;->cloneNode(Ljava/util/Optional;Ljava/lang/Object;)Lcom/github/javaparser/ast/Node;

    move-result-object p2

    check-cast p2, Lcom/github/javaparser/ast/comments/Comment;

    .line 632
    new-instance v1, Lcom/github/javaparser/ast/stmt/ContinueStmt;

    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getTokenRange()Ljava/util/Optional;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/github/javaparser/TokenRange;

    invoke-direct {v1, v2, v0}, Lcom/github/javaparser/ast/stmt/ContinueStmt;-><init>(Lcom/github/javaparser/TokenRange;Lcom/github/javaparser/ast/expr/SimpleName;)V

    .line 633
    invoke-virtual {v1, p2}, Lcom/github/javaparser/ast/Node;->setComment(Lcom/github/javaparser/ast/comments/Comment;)Lcom/github/javaparser/ast/Node;

    .line 634
    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getOrphanComments()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object p2

    new-instance v0, Lc0/a;

    invoke-direct {v0}, Lc0/a;-><init>()V

    invoke-interface {p2, v0}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p2

    new-instance v0, Lc0/x;

    invoke-direct {v0, v1}, Lc0/x;-><init>(Lcom/github/javaparser/ast/stmt/ContinueStmt;)V

    invoke-interface {p2, v0}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    .line 635
    invoke-direct {p0, p1, v1}, Lcom/github/javaparser/ast/visitor/CloneVisitor;->copyData(Lcom/github/javaparser/ast/Node;Lcom/github/javaparser/ast/Node;)V

    return-object v1
.end method

.method public visit(Lcom/github/javaparser/ast/stmt/DoStmt;Ljava/lang/Object;)Lcom/github/javaparser/ast/visitor/Visitable;
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 636
    invoke-virtual {p1}, Lcom/github/javaparser/ast/stmt/DoStmt;->getBody()Lcom/github/javaparser/ast/stmt/Statement;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/github/javaparser/ast/visitor/CloneVisitor;->cloneNode(Lcom/github/javaparser/ast/Node;Ljava/lang/Object;)Lcom/github/javaparser/ast/Node;

    move-result-object v0

    check-cast v0, Lcom/github/javaparser/ast/stmt/Statement;

    .line 637
    invoke-virtual {p1}, Lcom/github/javaparser/ast/stmt/DoStmt;->getCondition()Lcom/github/javaparser/ast/expr/Expression;

    move-result-object v1

    invoke-virtual {p0, v1, p2}, Lcom/github/javaparser/ast/visitor/CloneVisitor;->cloneNode(Lcom/github/javaparser/ast/Node;Ljava/lang/Object;)Lcom/github/javaparser/ast/Node;

    move-result-object v1

    check-cast v1, Lcom/github/javaparser/ast/expr/Expression;

    .line 638
    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getComment()Ljava/util/Optional;

    move-result-object v2

    invoke-virtual {p0, v2, p2}, Lcom/github/javaparser/ast/visitor/CloneVisitor;->cloneNode(Ljava/util/Optional;Ljava/lang/Object;)Lcom/github/javaparser/ast/Node;

    move-result-object p2

    check-cast p2, Lcom/github/javaparser/ast/comments/Comment;

    .line 639
    new-instance v2, Lcom/github/javaparser/ast/stmt/DoStmt;

    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getTokenRange()Ljava/util/Optional;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/github/javaparser/TokenRange;

    invoke-direct {v2, v3, v0, v1}, Lcom/github/javaparser/ast/stmt/DoStmt;-><init>(Lcom/github/javaparser/TokenRange;Lcom/github/javaparser/ast/stmt/Statement;Lcom/github/javaparser/ast/expr/Expression;)V

    .line 640
    invoke-virtual {v2, p2}, Lcom/github/javaparser/ast/Node;->setComment(Lcom/github/javaparser/ast/comments/Comment;)Lcom/github/javaparser/ast/Node;

    .line 641
    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getOrphanComments()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object p2

    new-instance v0, Lc0/a;

    invoke-direct {v0}, Lc0/a;-><init>()V

    invoke-interface {p2, v0}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p2

    new-instance v0, Lc0/K;

    invoke-direct {v0, v2}, Lc0/K;-><init>(Lcom/github/javaparser/ast/stmt/DoStmt;)V

    invoke-interface {p2, v0}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    .line 642
    invoke-direct {p0, p1, v2}, Lcom/github/javaparser/ast/visitor/CloneVisitor;->copyData(Lcom/github/javaparser/ast/Node;Lcom/github/javaparser/ast/Node;)V

    return-object v2
.end method

.method public visit(Lcom/github/javaparser/ast/stmt/EmptyStmt;Ljava/lang/Object;)Lcom/github/javaparser/ast/visitor/Visitable;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 576
    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getComment()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/github/javaparser/ast/visitor/CloneVisitor;->cloneNode(Ljava/util/Optional;Ljava/lang/Object;)Lcom/github/javaparser/ast/Node;

    move-result-object p2

    check-cast p2, Lcom/github/javaparser/ast/comments/Comment;

    .line 577
    new-instance v0, Lcom/github/javaparser/ast/stmt/EmptyStmt;

    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getTokenRange()Ljava/util/Optional;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/github/javaparser/TokenRange;

    invoke-direct {v0, v1}, Lcom/github/javaparser/ast/stmt/EmptyStmt;-><init>(Lcom/github/javaparser/TokenRange;)V

    .line 578
    invoke-virtual {v0, p2}, Lcom/github/javaparser/ast/Node;->setComment(Lcom/github/javaparser/ast/comments/Comment;)Lcom/github/javaparser/ast/Node;

    .line 579
    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getOrphanComments()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object p2

    new-instance v1, Lc0/a;

    invoke-direct {v1}, Lc0/a;-><init>()V

    invoke-interface {p2, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p2

    new-instance v1, Lc0/i;

    invoke-direct {v1, v0}, Lc0/i;-><init>(Lcom/github/javaparser/ast/stmt/EmptyStmt;)V

    invoke-interface {p2, v1}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    .line 580
    invoke-direct {p0, p1, v0}, Lcom/github/javaparser/ast/visitor/CloneVisitor;->copyData(Lcom/github/javaparser/ast/Node;Lcom/github/javaparser/ast/Node;)V

    return-object v0
.end method

.method public visit(Lcom/github/javaparser/ast/stmt/ExplicitConstructorInvocationStmt;Ljava/lang/Object;)Lcom/github/javaparser/ast/visitor/Visitable;
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 533
    invoke-virtual {p1}, Lcom/github/javaparser/ast/stmt/ExplicitConstructorInvocationStmt;->getArguments()Lcom/github/javaparser/ast/NodeList;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lcom/github/javaparser/ast/visitor/CloneVisitor;->cloneList(Lcom/github/javaparser/ast/NodeList;Ljava/lang/Object;)Lcom/github/javaparser/ast/NodeList;

    move-result-object v6

    .line 534
    invoke-virtual {p1}, Lcom/github/javaparser/ast/stmt/ExplicitConstructorInvocationStmt;->getExpression()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/github/javaparser/ast/visitor/CloneVisitor;->cloneNode(Ljava/util/Optional;Ljava/lang/Object;)Lcom/github/javaparser/ast/Node;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Lcom/github/javaparser/ast/expr/Expression;

    .line 535
    invoke-virtual {p1}, Lcom/github/javaparser/ast/stmt/ExplicitConstructorInvocationStmt;->getTypeArguments()Ljava/util/Optional;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/github/javaparser/ast/NodeList;

    invoke-direct {p0, v0, p2}, Lcom/github/javaparser/ast/visitor/CloneVisitor;->cloneList(Lcom/github/javaparser/ast/NodeList;Ljava/lang/Object;)Lcom/github/javaparser/ast/NodeList;

    move-result-object v3

    .line 536
    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getComment()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/github/javaparser/ast/visitor/CloneVisitor;->cloneNode(Ljava/util/Optional;Ljava/lang/Object;)Lcom/github/javaparser/ast/Node;

    move-result-object p2

    check-cast p2, Lcom/github/javaparser/ast/comments/Comment;

    .line 537
    new-instance v0, Lcom/github/javaparser/ast/stmt/ExplicitConstructorInvocationStmt;

    .line 538
    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getTokenRange()Ljava/util/Optional;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/github/javaparser/TokenRange;

    invoke-virtual {p1}, Lcom/github/javaparser/ast/stmt/ExplicitConstructorInvocationStmt;->isThis()Z

    move-result v4

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/github/javaparser/ast/stmt/ExplicitConstructorInvocationStmt;-><init>(Lcom/github/javaparser/TokenRange;Lcom/github/javaparser/ast/NodeList;ZLcom/github/javaparser/ast/expr/Expression;Lcom/github/javaparser/ast/NodeList;)V

    .line 539
    invoke-virtual {v0, p2}, Lcom/github/javaparser/ast/Node;->setComment(Lcom/github/javaparser/ast/comments/Comment;)Lcom/github/javaparser/ast/Node;

    .line 540
    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getOrphanComments()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object p2

    new-instance v1, Lc0/a;

    invoke-direct {v1}, Lc0/a;-><init>()V

    invoke-interface {p2, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p2

    new-instance v1, Lc0/a0;

    invoke-direct {v1, v0}, Lc0/a0;-><init>(Lcom/github/javaparser/ast/stmt/ExplicitConstructorInvocationStmt;)V

    invoke-interface {p2, v1}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    .line 541
    invoke-direct {p0, p1, v0}, Lcom/github/javaparser/ast/visitor/CloneVisitor;->copyData(Lcom/github/javaparser/ast/Node;Lcom/github/javaparser/ast/Node;)V

    return-object v0
.end method

.method public visit(Lcom/github/javaparser/ast/stmt/ExpressionStmt;Ljava/lang/Object;)Lcom/github/javaparser/ast/visitor/Visitable;
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 581
    invoke-virtual {p1}, Lcom/github/javaparser/ast/stmt/ExpressionStmt;->getExpression()Lcom/github/javaparser/ast/expr/Expression;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/github/javaparser/ast/visitor/CloneVisitor;->cloneNode(Lcom/github/javaparser/ast/Node;Ljava/lang/Object;)Lcom/github/javaparser/ast/Node;

    move-result-object v0

    check-cast v0, Lcom/github/javaparser/ast/expr/Expression;

    .line 582
    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getComment()Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {p0, v1, p2}, Lcom/github/javaparser/ast/visitor/CloneVisitor;->cloneNode(Ljava/util/Optional;Ljava/lang/Object;)Lcom/github/javaparser/ast/Node;

    move-result-object p2

    check-cast p2, Lcom/github/javaparser/ast/comments/Comment;

    .line 583
    new-instance v1, Lcom/github/javaparser/ast/stmt/ExpressionStmt;

    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getTokenRange()Ljava/util/Optional;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/github/javaparser/TokenRange;

    invoke-direct {v1, v2, v0}, Lcom/github/javaparser/ast/stmt/ExpressionStmt;-><init>(Lcom/github/javaparser/TokenRange;Lcom/github/javaparser/ast/expr/Expression;)V

    .line 584
    invoke-virtual {v1, p2}, Lcom/github/javaparser/ast/Node;->setComment(Lcom/github/javaparser/ast/comments/Comment;)Lcom/github/javaparser/ast/Node;

    .line 585
    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getOrphanComments()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object p2

    new-instance v0, Lc0/a;

    invoke-direct {v0}, Lc0/a;-><init>()V

    invoke-interface {p2, v0}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p2

    new-instance v0, Lc0/b;

    invoke-direct {v0, v1}, Lc0/b;-><init>(Lcom/github/javaparser/ast/stmt/ExpressionStmt;)V

    invoke-interface {p2, v0}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    .line 586
    invoke-direct {p0, p1, v1}, Lcom/github/javaparser/ast/visitor/CloneVisitor;->copyData(Lcom/github/javaparser/ast/Node;Lcom/github/javaparser/ast/Node;)V

    return-object v1
.end method

.method public visit(Lcom/github/javaparser/ast/stmt/ForEachStmt;Ljava/lang/Object;)Lcom/github/javaparser/ast/visitor/Visitable;
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 643
    invoke-virtual {p1}, Lcom/github/javaparser/ast/stmt/ForEachStmt;->getBody()Lcom/github/javaparser/ast/stmt/Statement;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/github/javaparser/ast/visitor/CloneVisitor;->cloneNode(Lcom/github/javaparser/ast/Node;Ljava/lang/Object;)Lcom/github/javaparser/ast/Node;

    move-result-object v0

    check-cast v0, Lcom/github/javaparser/ast/stmt/Statement;

    .line 644
    invoke-virtual {p1}, Lcom/github/javaparser/ast/stmt/ForEachStmt;->getIterable()Lcom/github/javaparser/ast/expr/Expression;

    move-result-object v1

    invoke-virtual {p0, v1, p2}, Lcom/github/javaparser/ast/visitor/CloneVisitor;->cloneNode(Lcom/github/javaparser/ast/Node;Ljava/lang/Object;)Lcom/github/javaparser/ast/Node;

    move-result-object v1

    check-cast v1, Lcom/github/javaparser/ast/expr/Expression;

    .line 645
    invoke-virtual {p1}, Lcom/github/javaparser/ast/stmt/ForEachStmt;->getVariable()Lcom/github/javaparser/ast/expr/VariableDeclarationExpr;

    move-result-object v2

    invoke-virtual {p0, v2, p2}, Lcom/github/javaparser/ast/visitor/CloneVisitor;->cloneNode(Lcom/github/javaparser/ast/Node;Ljava/lang/Object;)Lcom/github/javaparser/ast/Node;

    move-result-object v2

    check-cast v2, Lcom/github/javaparser/ast/expr/VariableDeclarationExpr;

    .line 646
    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getComment()Ljava/util/Optional;

    move-result-object v3

    invoke-virtual {p0, v3, p2}, Lcom/github/javaparser/ast/visitor/CloneVisitor;->cloneNode(Ljava/util/Optional;Ljava/lang/Object;)Lcom/github/javaparser/ast/Node;

    move-result-object p2

    check-cast p2, Lcom/github/javaparser/ast/comments/Comment;

    .line 647
    new-instance v3, Lcom/github/javaparser/ast/stmt/ForEachStmt;

    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getTokenRange()Ljava/util/Optional;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/github/javaparser/TokenRange;

    invoke-direct {v3, v4, v2, v1, v0}, Lcom/github/javaparser/ast/stmt/ForEachStmt;-><init>(Lcom/github/javaparser/TokenRange;Lcom/github/javaparser/ast/expr/VariableDeclarationExpr;Lcom/github/javaparser/ast/expr/Expression;Lcom/github/javaparser/ast/stmt/Statement;)V

    .line 648
    invoke-virtual {v3, p2}, Lcom/github/javaparser/ast/Node;->setComment(Lcom/github/javaparser/ast/comments/Comment;)Lcom/github/javaparser/ast/Node;

    .line 649
    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getOrphanComments()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object p2

    new-instance v0, Lc0/a;

    invoke-direct {v0}, Lc0/a;-><init>()V

    invoke-interface {p2, v0}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p2

    new-instance v0, Lc0/I0;

    invoke-direct {v0, v3}, Lc0/I0;-><init>(Lcom/github/javaparser/ast/stmt/ForEachStmt;)V

    invoke-interface {p2, v0}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    .line 650
    invoke-direct {p0, p1, v3}, Lcom/github/javaparser/ast/visitor/CloneVisitor;->copyData(Lcom/github/javaparser/ast/Node;Lcom/github/javaparser/ast/Node;)V

    return-object v3
.end method

.method public visit(Lcom/github/javaparser/ast/stmt/ForStmt;Ljava/lang/Object;)Lcom/github/javaparser/ast/visitor/Visitable;
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 651
    invoke-virtual {p1}, Lcom/github/javaparser/ast/stmt/ForStmt;->getBody()Lcom/github/javaparser/ast/stmt/Statement;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/github/javaparser/ast/visitor/CloneVisitor;->cloneNode(Lcom/github/javaparser/ast/Node;Ljava/lang/Object;)Lcom/github/javaparser/ast/Node;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lcom/github/javaparser/ast/stmt/Statement;

    .line 652
    invoke-virtual {p1}, Lcom/github/javaparser/ast/stmt/ForStmt;->getCompare()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/github/javaparser/ast/visitor/CloneVisitor;->cloneNode(Ljava/util/Optional;Ljava/lang/Object;)Lcom/github/javaparser/ast/Node;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lcom/github/javaparser/ast/expr/Expression;

    .line 653
    invoke-virtual {p1}, Lcom/github/javaparser/ast/stmt/ForStmt;->getInitialization()Lcom/github/javaparser/ast/NodeList;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lcom/github/javaparser/ast/visitor/CloneVisitor;->cloneList(Lcom/github/javaparser/ast/NodeList;Ljava/lang/Object;)Lcom/github/javaparser/ast/NodeList;

    move-result-object v3

    .line 654
    invoke-virtual {p1}, Lcom/github/javaparser/ast/stmt/ForStmt;->getUpdate()Lcom/github/javaparser/ast/NodeList;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lcom/github/javaparser/ast/visitor/CloneVisitor;->cloneList(Lcom/github/javaparser/ast/NodeList;Ljava/lang/Object;)Lcom/github/javaparser/ast/NodeList;

    move-result-object v5

    .line 655
    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getComment()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/github/javaparser/ast/visitor/CloneVisitor;->cloneNode(Ljava/util/Optional;Ljava/lang/Object;)Lcom/github/javaparser/ast/Node;

    move-result-object p2

    check-cast p2, Lcom/github/javaparser/ast/comments/Comment;

    .line 656
    new-instance v0, Lcom/github/javaparser/ast/stmt/ForStmt;

    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getTokenRange()Ljava/util/Optional;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/github/javaparser/TokenRange;

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/github/javaparser/ast/stmt/ForStmt;-><init>(Lcom/github/javaparser/TokenRange;Lcom/github/javaparser/ast/NodeList;Lcom/github/javaparser/ast/expr/Expression;Lcom/github/javaparser/ast/NodeList;Lcom/github/javaparser/ast/stmt/Statement;)V

    .line 657
    invoke-virtual {v0, p2}, Lcom/github/javaparser/ast/Node;->setComment(Lcom/github/javaparser/ast/comments/Comment;)Lcom/github/javaparser/ast/Node;

    .line 658
    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getOrphanComments()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object p2

    new-instance v1, Lc0/a;

    invoke-direct {v1}, Lc0/a;-><init>()V

    invoke-interface {p2, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p2

    new-instance v1, Lc0/M0;

    invoke-direct {v1, v0}, Lc0/M0;-><init>(Lcom/github/javaparser/ast/stmt/ForStmt;)V

    invoke-interface {p2, v1}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    .line 659
    invoke-direct {p0, p1, v0}, Lcom/github/javaparser/ast/visitor/CloneVisitor;->copyData(Lcom/github/javaparser/ast/Node;Lcom/github/javaparser/ast/Node;)V

    return-object v0
.end method

.method public visit(Lcom/github/javaparser/ast/stmt/IfStmt;Ljava/lang/Object;)Lcom/github/javaparser/ast/visitor/Visitable;
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 615
    invoke-virtual {p1}, Lcom/github/javaparser/ast/stmt/IfStmt;->getCondition()Lcom/github/javaparser/ast/expr/Expression;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/github/javaparser/ast/visitor/CloneVisitor;->cloneNode(Lcom/github/javaparser/ast/Node;Ljava/lang/Object;)Lcom/github/javaparser/ast/Node;

    move-result-object v0

    check-cast v0, Lcom/github/javaparser/ast/expr/Expression;

    .line 616
    invoke-virtual {p1}, Lcom/github/javaparser/ast/stmt/IfStmt;->getElseStmt()Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {p0, v1, p2}, Lcom/github/javaparser/ast/visitor/CloneVisitor;->cloneNode(Ljava/util/Optional;Ljava/lang/Object;)Lcom/github/javaparser/ast/Node;

    move-result-object v1

    check-cast v1, Lcom/github/javaparser/ast/stmt/Statement;

    .line 617
    invoke-virtual {p1}, Lcom/github/javaparser/ast/stmt/IfStmt;->getThenStmt()Lcom/github/javaparser/ast/stmt/Statement;

    move-result-object v2

    invoke-virtual {p0, v2, p2}, Lcom/github/javaparser/ast/visitor/CloneVisitor;->cloneNode(Lcom/github/javaparser/ast/Node;Ljava/lang/Object;)Lcom/github/javaparser/ast/Node;

    move-result-object v2

    check-cast v2, Lcom/github/javaparser/ast/stmt/Statement;

    .line 618
    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getComment()Ljava/util/Optional;

    move-result-object v3

    invoke-virtual {p0, v3, p2}, Lcom/github/javaparser/ast/visitor/CloneVisitor;->cloneNode(Ljava/util/Optional;Ljava/lang/Object;)Lcom/github/javaparser/ast/Node;

    move-result-object p2

    check-cast p2, Lcom/github/javaparser/ast/comments/Comment;

    .line 619
    new-instance v3, Lcom/github/javaparser/ast/stmt/IfStmt;

    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getTokenRange()Ljava/util/Optional;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/github/javaparser/TokenRange;

    invoke-direct {v3, v4, v0, v2, v1}, Lcom/github/javaparser/ast/stmt/IfStmt;-><init>(Lcom/github/javaparser/TokenRange;Lcom/github/javaparser/ast/expr/Expression;Lcom/github/javaparser/ast/stmt/Statement;Lcom/github/javaparser/ast/stmt/Statement;)V

    .line 620
    invoke-virtual {v3, p2}, Lcom/github/javaparser/ast/Node;->setComment(Lcom/github/javaparser/ast/comments/Comment;)Lcom/github/javaparser/ast/Node;

    .line 621
    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getOrphanComments()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object p2

    new-instance v0, Lc0/a;

    invoke-direct {v0}, Lc0/a;-><init>()V

    invoke-interface {p2, v0}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p2

    new-instance v0, Lc0/z;

    invoke-direct {v0, v3}, Lc0/z;-><init>(Lcom/github/javaparser/ast/stmt/IfStmt;)V

    invoke-interface {p2, v0}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    .line 622
    invoke-direct {p0, p1, v3}, Lcom/github/javaparser/ast/visitor/CloneVisitor;->copyData(Lcom/github/javaparser/ast/Node;Lcom/github/javaparser/ast/Node;)V

    return-object v3
.end method

.method public visit(Lcom/github/javaparser/ast/stmt/LabeledStmt;Ljava/lang/Object;)Lcom/github/javaparser/ast/visitor/Visitable;
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 569
    invoke-virtual {p1}, Lcom/github/javaparser/ast/stmt/LabeledStmt;->getLabel()Lcom/github/javaparser/ast/expr/SimpleName;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/github/javaparser/ast/visitor/CloneVisitor;->cloneNode(Lcom/github/javaparser/ast/Node;Ljava/lang/Object;)Lcom/github/javaparser/ast/Node;

    move-result-object v0

    check-cast v0, Lcom/github/javaparser/ast/expr/SimpleName;

    .line 570
    invoke-virtual {p1}, Lcom/github/javaparser/ast/stmt/LabeledStmt;->getStatement()Lcom/github/javaparser/ast/stmt/Statement;

    move-result-object v1

    invoke-virtual {p0, v1, p2}, Lcom/github/javaparser/ast/visitor/CloneVisitor;->cloneNode(Lcom/github/javaparser/ast/Node;Ljava/lang/Object;)Lcom/github/javaparser/ast/Node;

    move-result-object v1

    check-cast v1, Lcom/github/javaparser/ast/stmt/Statement;

    .line 571
    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getComment()Ljava/util/Optional;

    move-result-object v2

    invoke-virtual {p0, v2, p2}, Lcom/github/javaparser/ast/visitor/CloneVisitor;->cloneNode(Ljava/util/Optional;Ljava/lang/Object;)Lcom/github/javaparser/ast/Node;

    move-result-object p2

    check-cast p2, Lcom/github/javaparser/ast/comments/Comment;

    .line 572
    new-instance v2, Lcom/github/javaparser/ast/stmt/LabeledStmt;

    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getTokenRange()Ljava/util/Optional;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/github/javaparser/TokenRange;

    invoke-direct {v2, v3, v0, v1}, Lcom/github/javaparser/ast/stmt/LabeledStmt;-><init>(Lcom/github/javaparser/TokenRange;Lcom/github/javaparser/ast/expr/SimpleName;Lcom/github/javaparser/ast/stmt/Statement;)V

    .line 573
    invoke-virtual {v2, p2}, Lcom/github/javaparser/ast/Node;->setComment(Lcom/github/javaparser/ast/comments/Comment;)Lcom/github/javaparser/ast/Node;

    .line 574
    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getOrphanComments()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object p2

    new-instance v0, Lc0/a;

    invoke-direct {v0}, Lc0/a;-><init>()V

    invoke-interface {p2, v0}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p2

    new-instance v0, Lc0/h0;

    invoke-direct {v0, v2}, Lc0/h0;-><init>(Lcom/github/javaparser/ast/stmt/LabeledStmt;)V

    invoke-interface {p2, v0}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    .line 575
    invoke-direct {p0, p1, v2}, Lcom/github/javaparser/ast/visitor/CloneVisitor;->copyData(Lcom/github/javaparser/ast/Node;Lcom/github/javaparser/ast/Node;)V

    return-object v2
.end method

.method public visit(Lcom/github/javaparser/ast/stmt/LocalClassDeclarationStmt;Ljava/lang/Object;)Lcom/github/javaparser/ast/visitor/Visitable;
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 542
    invoke-virtual {p1}, Lcom/github/javaparser/ast/stmt/LocalClassDeclarationStmt;->getClassDeclaration()Lcom/github/javaparser/ast/body/ClassOrInterfaceDeclaration;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/github/javaparser/ast/visitor/CloneVisitor;->cloneNode(Lcom/github/javaparser/ast/Node;Ljava/lang/Object;)Lcom/github/javaparser/ast/Node;

    move-result-object v0

    check-cast v0, Lcom/github/javaparser/ast/body/ClassOrInterfaceDeclaration;

    .line 543
    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getComment()Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {p0, v1, p2}, Lcom/github/javaparser/ast/visitor/CloneVisitor;->cloneNode(Ljava/util/Optional;Ljava/lang/Object;)Lcom/github/javaparser/ast/Node;

    move-result-object p2

    check-cast p2, Lcom/github/javaparser/ast/comments/Comment;

    .line 544
    new-instance v1, Lcom/github/javaparser/ast/stmt/LocalClassDeclarationStmt;

    .line 545
    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getTokenRange()Ljava/util/Optional;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/github/javaparser/TokenRange;

    invoke-direct {v1, v2, v0}, Lcom/github/javaparser/ast/stmt/LocalClassDeclarationStmt;-><init>(Lcom/github/javaparser/TokenRange;Lcom/github/javaparser/ast/body/ClassOrInterfaceDeclaration;)V

    .line 546
    invoke-virtual {v1, p2}, Lcom/github/javaparser/ast/Node;->setComment(Lcom/github/javaparser/ast/comments/Comment;)Lcom/github/javaparser/ast/Node;

    .line 547
    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getOrphanComments()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object p2

    new-instance v0, Lc0/a;

    invoke-direct {v0}, Lc0/a;-><init>()V

    invoke-interface {p2, v0}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p2

    new-instance v0, Lc0/k;

    invoke-direct {v0, v1}, Lc0/k;-><init>(Lcom/github/javaparser/ast/stmt/LocalClassDeclarationStmt;)V

    invoke-interface {p2, v0}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    .line 548
    invoke-direct {p0, p1, v1}, Lcom/github/javaparser/ast/visitor/CloneVisitor;->copyData(Lcom/github/javaparser/ast/Node;Lcom/github/javaparser/ast/Node;)V

    return-object v1
.end method

.method public visit(Lcom/github/javaparser/ast/stmt/LocalRecordDeclarationStmt;Ljava/lang/Object;)Lcom/github/javaparser/ast/visitor/Visitable;
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 549
    invoke-virtual {p1}, Lcom/github/javaparser/ast/stmt/LocalRecordDeclarationStmt;->getRecordDeclaration()Lcom/github/javaparser/ast/body/RecordDeclaration;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/github/javaparser/ast/visitor/CloneVisitor;->cloneNode(Lcom/github/javaparser/ast/Node;Ljava/lang/Object;)Lcom/github/javaparser/ast/Node;

    move-result-object v0

    check-cast v0, Lcom/github/javaparser/ast/body/RecordDeclaration;

    .line 550
    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getComment()Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {p0, v1, p2}, Lcom/github/javaparser/ast/visitor/CloneVisitor;->cloneNode(Ljava/util/Optional;Ljava/lang/Object;)Lcom/github/javaparser/ast/Node;

    move-result-object p2

    check-cast p2, Lcom/github/javaparser/ast/comments/Comment;

    .line 551
    new-instance v1, Lcom/github/javaparser/ast/stmt/LocalRecordDeclarationStmt;

    .line 552
    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getTokenRange()Ljava/util/Optional;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/github/javaparser/TokenRange;

    invoke-direct {v1, v2, v0}, Lcom/github/javaparser/ast/stmt/LocalRecordDeclarationStmt;-><init>(Lcom/github/javaparser/TokenRange;Lcom/github/javaparser/ast/body/RecordDeclaration;)V

    .line 553
    invoke-virtual {v1, p2}, Lcom/github/javaparser/ast/Node;->setComment(Lcom/github/javaparser/ast/comments/Comment;)Lcom/github/javaparser/ast/Node;

    .line 554
    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getOrphanComments()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object p2

    new-instance v0, Lc0/a;

    invoke-direct {v0}, Lc0/a;-><init>()V

    invoke-interface {p2, v0}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p2

    new-instance v0, Lc0/V;

    invoke-direct {v0, v1}, Lc0/V;-><init>(Lcom/github/javaparser/ast/stmt/LocalRecordDeclarationStmt;)V

    invoke-interface {p2, v0}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    .line 555
    invoke-direct {p0, p1, v1}, Lcom/github/javaparser/ast/visitor/CloneVisitor;->copyData(Lcom/github/javaparser/ast/Node;Lcom/github/javaparser/ast/Node;)V

    return-object v1
.end method

.method public visit(Lcom/github/javaparser/ast/stmt/ReturnStmt;Ljava/lang/Object;)Lcom/github/javaparser/ast/visitor/Visitable;
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 609
    invoke-virtual {p1}, Lcom/github/javaparser/ast/stmt/ReturnStmt;->getExpression()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/github/javaparser/ast/visitor/CloneVisitor;->cloneNode(Ljava/util/Optional;Ljava/lang/Object;)Lcom/github/javaparser/ast/Node;

    move-result-object v0

    check-cast v0, Lcom/github/javaparser/ast/expr/Expression;

    .line 610
    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getComment()Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {p0, v1, p2}, Lcom/github/javaparser/ast/visitor/CloneVisitor;->cloneNode(Ljava/util/Optional;Ljava/lang/Object;)Lcom/github/javaparser/ast/Node;

    move-result-object p2

    check-cast p2, Lcom/github/javaparser/ast/comments/Comment;

    .line 611
    new-instance v1, Lcom/github/javaparser/ast/stmt/ReturnStmt;

    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getTokenRange()Ljava/util/Optional;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/github/javaparser/TokenRange;

    invoke-direct {v1, v2, v0}, Lcom/github/javaparser/ast/stmt/ReturnStmt;-><init>(Lcom/github/javaparser/TokenRange;Lcom/github/javaparser/ast/expr/Expression;)V

    .line 612
    invoke-virtual {v1, p2}, Lcom/github/javaparser/ast/Node;->setComment(Lcom/github/javaparser/ast/comments/Comment;)Lcom/github/javaparser/ast/Node;

    .line 613
    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getOrphanComments()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object p2

    new-instance v0, Lc0/a;

    invoke-direct {v0}, Lc0/a;-><init>()V

    invoke-interface {p2, v0}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p2

    new-instance v0, Lc0/D;

    invoke-direct {v0, v1}, Lc0/D;-><init>(Lcom/github/javaparser/ast/stmt/ReturnStmt;)V

    invoke-interface {p2, v0}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    .line 614
    invoke-direct {p0, p1, v1}, Lcom/github/javaparser/ast/visitor/CloneVisitor;->copyData(Lcom/github/javaparser/ast/Node;Lcom/github/javaparser/ast/Node;)V

    return-object v1
.end method

.method public visit(Lcom/github/javaparser/ast/stmt/SwitchEntry;Ljava/lang/Object;)Lcom/github/javaparser/ast/visitor/Visitable;
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 594
    invoke-virtual {p1}, Lcom/github/javaparser/ast/stmt/SwitchEntry;->getGuard()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/github/javaparser/ast/visitor/CloneVisitor;->cloneNode(Ljava/util/Optional;Ljava/lang/Object;)Lcom/github/javaparser/ast/Node;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Lcom/github/javaparser/ast/expr/Expression;

    .line 595
    invoke-virtual {p1}, Lcom/github/javaparser/ast/stmt/SwitchEntry;->getLabels()Lcom/github/javaparser/ast/NodeList;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lcom/github/javaparser/ast/visitor/CloneVisitor;->cloneList(Lcom/github/javaparser/ast/NodeList;Ljava/lang/Object;)Lcom/github/javaparser/ast/NodeList;

    move-result-object v3

    .line 596
    invoke-virtual {p1}, Lcom/github/javaparser/ast/stmt/SwitchEntry;->getStatements()Lcom/github/javaparser/ast/NodeList;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lcom/github/javaparser/ast/visitor/CloneVisitor;->cloneList(Lcom/github/javaparser/ast/NodeList;Ljava/lang/Object;)Lcom/github/javaparser/ast/NodeList;

    move-result-object v5

    .line 597
    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getComment()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/github/javaparser/ast/visitor/CloneVisitor;->cloneNode(Ljava/util/Optional;Ljava/lang/Object;)Lcom/github/javaparser/ast/Node;

    move-result-object p2

    check-cast p2, Lcom/github/javaparser/ast/comments/Comment;

    .line 598
    new-instance v0, Lcom/github/javaparser/ast/stmt/SwitchEntry;

    .line 599
    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getTokenRange()Ljava/util/Optional;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/github/javaparser/TokenRange;

    invoke-virtual {p1}, Lcom/github/javaparser/ast/stmt/SwitchEntry;->getType()Lcom/github/javaparser/ast/stmt/SwitchEntry$Type;

    move-result-object v4

    invoke-virtual {p1}, Lcom/github/javaparser/ast/stmt/SwitchEntry;->isDefault()Z

    move-result v6

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Lcom/github/javaparser/ast/stmt/SwitchEntry;-><init>(Lcom/github/javaparser/TokenRange;Lcom/github/javaparser/ast/NodeList;Lcom/github/javaparser/ast/stmt/SwitchEntry$Type;Lcom/github/javaparser/ast/NodeList;ZLcom/github/javaparser/ast/expr/Expression;)V

    .line 600
    invoke-virtual {v0, p2}, Lcom/github/javaparser/ast/Node;->setComment(Lcom/github/javaparser/ast/comments/Comment;)Lcom/github/javaparser/ast/Node;

    .line 601
    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getOrphanComments()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object p2

    new-instance v1, Lc0/a;

    invoke-direct {v1}, Lc0/a;-><init>()V

    invoke-interface {p2, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p2

    new-instance v1, Lc0/m;

    invoke-direct {v1, v0}, Lc0/m;-><init>(Lcom/github/javaparser/ast/stmt/SwitchEntry;)V

    invoke-interface {p2, v1}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    .line 602
    invoke-direct {p0, p1, v0}, Lcom/github/javaparser/ast/visitor/CloneVisitor;->copyData(Lcom/github/javaparser/ast/Node;Lcom/github/javaparser/ast/Node;)V

    return-object v0
.end method

.method public visit(Lcom/github/javaparser/ast/stmt/SwitchStmt;Ljava/lang/Object;)Lcom/github/javaparser/ast/visitor/Visitable;
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 587
    invoke-virtual {p1}, Lcom/github/javaparser/ast/stmt/SwitchStmt;->getEntries()Lcom/github/javaparser/ast/NodeList;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lcom/github/javaparser/ast/visitor/CloneVisitor;->cloneList(Lcom/github/javaparser/ast/NodeList;Ljava/lang/Object;)Lcom/github/javaparser/ast/NodeList;

    move-result-object v0

    .line 588
    invoke-virtual {p1}, Lcom/github/javaparser/ast/stmt/SwitchStmt;->getSelector()Lcom/github/javaparser/ast/expr/Expression;

    move-result-object v1

    invoke-virtual {p0, v1, p2}, Lcom/github/javaparser/ast/visitor/CloneVisitor;->cloneNode(Lcom/github/javaparser/ast/Node;Ljava/lang/Object;)Lcom/github/javaparser/ast/Node;

    move-result-object v1

    check-cast v1, Lcom/github/javaparser/ast/expr/Expression;

    .line 589
    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getComment()Ljava/util/Optional;

    move-result-object v2

    invoke-virtual {p0, v2, p2}, Lcom/github/javaparser/ast/visitor/CloneVisitor;->cloneNode(Ljava/util/Optional;Ljava/lang/Object;)Lcom/github/javaparser/ast/Node;

    move-result-object p2

    check-cast p2, Lcom/github/javaparser/ast/comments/Comment;

    .line 590
    new-instance v2, Lcom/github/javaparser/ast/stmt/SwitchStmt;

    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getTokenRange()Ljava/util/Optional;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/github/javaparser/TokenRange;

    invoke-direct {v2, v3, v1, v0}, Lcom/github/javaparser/ast/stmt/SwitchStmt;-><init>(Lcom/github/javaparser/TokenRange;Lcom/github/javaparser/ast/expr/Expression;Lcom/github/javaparser/ast/NodeList;)V

    .line 591
    invoke-virtual {v2, p2}, Lcom/github/javaparser/ast/Node;->setComment(Lcom/github/javaparser/ast/comments/Comment;)Lcom/github/javaparser/ast/Node;

    .line 592
    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getOrphanComments()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object p2

    new-instance v0, Lc0/a;

    invoke-direct {v0}, Lc0/a;-><init>()V

    invoke-interface {p2, v0}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p2

    new-instance v0, Lc0/i0;

    invoke-direct {v0, v2}, Lc0/i0;-><init>(Lcom/github/javaparser/ast/stmt/SwitchStmt;)V

    invoke-interface {p2, v0}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    .line 593
    invoke-direct {p0, p1, v2}, Lcom/github/javaparser/ast/visitor/CloneVisitor;->copyData(Lcom/github/javaparser/ast/Node;Lcom/github/javaparser/ast/Node;)V

    return-object v2
.end method

.method public visit(Lcom/github/javaparser/ast/stmt/SynchronizedStmt;Ljava/lang/Object;)Lcom/github/javaparser/ast/visitor/Visitable;
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 666
    invoke-virtual {p1}, Lcom/github/javaparser/ast/stmt/SynchronizedStmt;->getBody()Lcom/github/javaparser/ast/stmt/BlockStmt;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/github/javaparser/ast/visitor/CloneVisitor;->cloneNode(Lcom/github/javaparser/ast/Node;Ljava/lang/Object;)Lcom/github/javaparser/ast/Node;

    move-result-object v0

    check-cast v0, Lcom/github/javaparser/ast/stmt/BlockStmt;

    .line 667
    invoke-virtual {p1}, Lcom/github/javaparser/ast/stmt/SynchronizedStmt;->getExpression()Lcom/github/javaparser/ast/expr/Expression;

    move-result-object v1

    invoke-virtual {p0, v1, p2}, Lcom/github/javaparser/ast/visitor/CloneVisitor;->cloneNode(Lcom/github/javaparser/ast/Node;Ljava/lang/Object;)Lcom/github/javaparser/ast/Node;

    move-result-object v1

    check-cast v1, Lcom/github/javaparser/ast/expr/Expression;

    .line 668
    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getComment()Ljava/util/Optional;

    move-result-object v2

    invoke-virtual {p0, v2, p2}, Lcom/github/javaparser/ast/visitor/CloneVisitor;->cloneNode(Ljava/util/Optional;Ljava/lang/Object;)Lcom/github/javaparser/ast/Node;

    move-result-object p2

    check-cast p2, Lcom/github/javaparser/ast/comments/Comment;

    .line 669
    new-instance v2, Lcom/github/javaparser/ast/stmt/SynchronizedStmt;

    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getTokenRange()Ljava/util/Optional;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/github/javaparser/TokenRange;

    invoke-direct {v2, v3, v1, v0}, Lcom/github/javaparser/ast/stmt/SynchronizedStmt;-><init>(Lcom/github/javaparser/TokenRange;Lcom/github/javaparser/ast/expr/Expression;Lcom/github/javaparser/ast/stmt/BlockStmt;)V

    .line 670
    invoke-virtual {v2, p2}, Lcom/github/javaparser/ast/Node;->setComment(Lcom/github/javaparser/ast/comments/Comment;)Lcom/github/javaparser/ast/Node;

    .line 671
    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getOrphanComments()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object p2

    new-instance v0, Lc0/a;

    invoke-direct {v0}, Lc0/a;-><init>()V

    invoke-interface {p2, v0}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p2

    new-instance v0, Lc0/w0;

    invoke-direct {v0, v2}, Lc0/w0;-><init>(Lcom/github/javaparser/ast/stmt/SynchronizedStmt;)V

    invoke-interface {p2, v0}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    .line 672
    invoke-direct {p0, p1, v2}, Lcom/github/javaparser/ast/visitor/CloneVisitor;->copyData(Lcom/github/javaparser/ast/Node;Lcom/github/javaparser/ast/Node;)V

    return-object v2
.end method

.method public visit(Lcom/github/javaparser/ast/stmt/ThrowStmt;Ljava/lang/Object;)Lcom/github/javaparser/ast/visitor/Visitable;
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 660
    invoke-virtual {p1}, Lcom/github/javaparser/ast/stmt/ThrowStmt;->getExpression()Lcom/github/javaparser/ast/expr/Expression;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/github/javaparser/ast/visitor/CloneVisitor;->cloneNode(Lcom/github/javaparser/ast/Node;Ljava/lang/Object;)Lcom/github/javaparser/ast/Node;

    move-result-object v0

    check-cast v0, Lcom/github/javaparser/ast/expr/Expression;

    .line 661
    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getComment()Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {p0, v1, p2}, Lcom/github/javaparser/ast/visitor/CloneVisitor;->cloneNode(Ljava/util/Optional;Ljava/lang/Object;)Lcom/github/javaparser/ast/Node;

    move-result-object p2

    check-cast p2, Lcom/github/javaparser/ast/comments/Comment;

    .line 662
    new-instance v1, Lcom/github/javaparser/ast/stmt/ThrowStmt;

    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getTokenRange()Ljava/util/Optional;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/github/javaparser/TokenRange;

    invoke-direct {v1, v2, v0}, Lcom/github/javaparser/ast/stmt/ThrowStmt;-><init>(Lcom/github/javaparser/TokenRange;Lcom/github/javaparser/ast/expr/Expression;)V

    .line 663
    invoke-virtual {v1, p2}, Lcom/github/javaparser/ast/Node;->setComment(Lcom/github/javaparser/ast/comments/Comment;)Lcom/github/javaparser/ast/Node;

    .line 664
    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getOrphanComments()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object p2

    new-instance v0, Lc0/a;

    invoke-direct {v0}, Lc0/a;-><init>()V

    invoke-interface {p2, v0}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p2

    new-instance v0, Lc0/h;

    invoke-direct {v0, v1}, Lc0/h;-><init>(Lcom/github/javaparser/ast/stmt/ThrowStmt;)V

    invoke-interface {p2, v0}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    .line 665
    invoke-direct {p0, p1, v1}, Lcom/github/javaparser/ast/visitor/CloneVisitor;->copyData(Lcom/github/javaparser/ast/Node;Lcom/github/javaparser/ast/Node;)V

    return-object v1
.end method

.method public visit(Lcom/github/javaparser/ast/stmt/TryStmt;Ljava/lang/Object;)Lcom/github/javaparser/ast/visitor/Visitable;
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 673
    invoke-virtual {p1}, Lcom/github/javaparser/ast/stmt/TryStmt;->getCatchClauses()Lcom/github/javaparser/ast/NodeList;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lcom/github/javaparser/ast/visitor/CloneVisitor;->cloneList(Lcom/github/javaparser/ast/NodeList;Ljava/lang/Object;)Lcom/github/javaparser/ast/NodeList;

    move-result-object v5

    .line 674
    invoke-virtual {p1}, Lcom/github/javaparser/ast/stmt/TryStmt;->getFinallyBlock()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/github/javaparser/ast/visitor/CloneVisitor;->cloneNode(Ljava/util/Optional;Ljava/lang/Object;)Lcom/github/javaparser/ast/Node;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lcom/github/javaparser/ast/stmt/BlockStmt;

    .line 675
    invoke-virtual {p1}, Lcom/github/javaparser/ast/stmt/TryStmt;->getResources()Lcom/github/javaparser/ast/NodeList;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lcom/github/javaparser/ast/visitor/CloneVisitor;->cloneList(Lcom/github/javaparser/ast/NodeList;Ljava/lang/Object;)Lcom/github/javaparser/ast/NodeList;

    move-result-object v3

    .line 676
    invoke-virtual {p1}, Lcom/github/javaparser/ast/stmt/TryStmt;->getTryBlock()Lcom/github/javaparser/ast/stmt/BlockStmt;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/github/javaparser/ast/visitor/CloneVisitor;->cloneNode(Lcom/github/javaparser/ast/Node;Ljava/lang/Object;)Lcom/github/javaparser/ast/Node;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lcom/github/javaparser/ast/stmt/BlockStmt;

    .line 677
    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getComment()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/github/javaparser/ast/visitor/CloneVisitor;->cloneNode(Ljava/util/Optional;Ljava/lang/Object;)Lcom/github/javaparser/ast/Node;

    move-result-object p2

    check-cast p2, Lcom/github/javaparser/ast/comments/Comment;

    .line 678
    new-instance v0, Lcom/github/javaparser/ast/stmt/TryStmt;

    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getTokenRange()Ljava/util/Optional;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/github/javaparser/TokenRange;

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/github/javaparser/ast/stmt/TryStmt;-><init>(Lcom/github/javaparser/TokenRange;Lcom/github/javaparser/ast/NodeList;Lcom/github/javaparser/ast/stmt/BlockStmt;Lcom/github/javaparser/ast/NodeList;Lcom/github/javaparser/ast/stmt/BlockStmt;)V

    .line 679
    invoke-virtual {v0, p2}, Lcom/github/javaparser/ast/Node;->setComment(Lcom/github/javaparser/ast/comments/Comment;)Lcom/github/javaparser/ast/Node;

    .line 680
    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getOrphanComments()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object p2

    new-instance v1, Lc0/a;

    invoke-direct {v1}, Lc0/a;-><init>()V

    invoke-interface {p2, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p2

    new-instance v1, Lc0/O0;

    invoke-direct {v1, v0}, Lc0/O0;-><init>(Lcom/github/javaparser/ast/stmt/TryStmt;)V

    invoke-interface {p2, v1}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    .line 681
    invoke-direct {p0, p1, v0}, Lcom/github/javaparser/ast/visitor/CloneVisitor;->copyData(Lcom/github/javaparser/ast/Node;Lcom/github/javaparser/ast/Node;)V

    return-object v0
.end method

.method public visit(Lcom/github/javaparser/ast/stmt/UnparsableStmt;Ljava/lang/Object;)Lcom/github/javaparser/ast/visitor/Visitable;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 765
    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getComment()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/github/javaparser/ast/visitor/CloneVisitor;->cloneNode(Ljava/util/Optional;Ljava/lang/Object;)Lcom/github/javaparser/ast/Node;

    move-result-object p2

    check-cast p2, Lcom/github/javaparser/ast/comments/Comment;

    .line 766
    new-instance v0, Lcom/github/javaparser/ast/stmt/UnparsableStmt;

    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getTokenRange()Ljava/util/Optional;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/github/javaparser/TokenRange;

    invoke-direct {v0, v1}, Lcom/github/javaparser/ast/stmt/UnparsableStmt;-><init>(Lcom/github/javaparser/TokenRange;)V

    .line 767
    invoke-virtual {v0, p2}, Lcom/github/javaparser/ast/Node;->setComment(Lcom/github/javaparser/ast/comments/Comment;)Lcom/github/javaparser/ast/Node;

    .line 768
    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getOrphanComments()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object p2

    new-instance v1, Lc0/a;

    invoke-direct {v1}, Lc0/a;-><init>()V

    invoke-interface {p2, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p2

    new-instance v1, Lc0/l0;

    invoke-direct {v1, v0}, Lc0/l0;-><init>(Lcom/github/javaparser/ast/stmt/UnparsableStmt;)V

    invoke-interface {p2, v1}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    .line 769
    invoke-direct {p0, p1, v0}, Lcom/github/javaparser/ast/visitor/CloneVisitor;->copyData(Lcom/github/javaparser/ast/Node;Lcom/github/javaparser/ast/Node;)V

    return-object v0
.end method

.method public visit(Lcom/github/javaparser/ast/stmt/WhileStmt;Ljava/lang/Object;)Lcom/github/javaparser/ast/visitor/Visitable;
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 623
    invoke-virtual {p1}, Lcom/github/javaparser/ast/stmt/WhileStmt;->getBody()Lcom/github/javaparser/ast/stmt/Statement;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/github/javaparser/ast/visitor/CloneVisitor;->cloneNode(Lcom/github/javaparser/ast/Node;Ljava/lang/Object;)Lcom/github/javaparser/ast/Node;

    move-result-object v0

    check-cast v0, Lcom/github/javaparser/ast/stmt/Statement;

    .line 624
    invoke-virtual {p1}, Lcom/github/javaparser/ast/stmt/WhileStmt;->getCondition()Lcom/github/javaparser/ast/expr/Expression;

    move-result-object v1

    invoke-virtual {p0, v1, p2}, Lcom/github/javaparser/ast/visitor/CloneVisitor;->cloneNode(Lcom/github/javaparser/ast/Node;Ljava/lang/Object;)Lcom/github/javaparser/ast/Node;

    move-result-object v1

    check-cast v1, Lcom/github/javaparser/ast/expr/Expression;

    .line 625
    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getComment()Ljava/util/Optional;

    move-result-object v2

    invoke-virtual {p0, v2, p2}, Lcom/github/javaparser/ast/visitor/CloneVisitor;->cloneNode(Ljava/util/Optional;Ljava/lang/Object;)Lcom/github/javaparser/ast/Node;

    move-result-object p2

    check-cast p2, Lcom/github/javaparser/ast/comments/Comment;

    .line 626
    new-instance v2, Lcom/github/javaparser/ast/stmt/WhileStmt;

    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getTokenRange()Ljava/util/Optional;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/github/javaparser/TokenRange;

    invoke-direct {v2, v3, v1, v0}, Lcom/github/javaparser/ast/stmt/WhileStmt;-><init>(Lcom/github/javaparser/TokenRange;Lcom/github/javaparser/ast/expr/Expression;Lcom/github/javaparser/ast/stmt/Statement;)V

    .line 627
    invoke-virtual {v2, p2}, Lcom/github/javaparser/ast/Node;->setComment(Lcom/github/javaparser/ast/comments/Comment;)Lcom/github/javaparser/ast/Node;

    .line 628
    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getOrphanComments()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object p2

    new-instance v0, Lc0/a;

    invoke-direct {v0}, Lc0/a;-><init>()V

    invoke-interface {p2, v0}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p2

    new-instance v0, Lc0/t0;

    invoke-direct {v0, v2}, Lc0/t0;-><init>(Lcom/github/javaparser/ast/stmt/WhileStmt;)V

    invoke-interface {p2, v0}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    .line 629
    invoke-direct {p0, p1, v2}, Lcom/github/javaparser/ast/visitor/CloneVisitor;->copyData(Lcom/github/javaparser/ast/Node;Lcom/github/javaparser/ast/Node;)V

    return-object v2
.end method

.method public visit(Lcom/github/javaparser/ast/stmt/YieldStmt;Ljava/lang/Object;)Lcom/github/javaparser/ast/visitor/Visitable;
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 796
    invoke-virtual {p1}, Lcom/github/javaparser/ast/stmt/YieldStmt;->getExpression()Lcom/github/javaparser/ast/expr/Expression;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/github/javaparser/ast/visitor/CloneVisitor;->cloneNode(Lcom/github/javaparser/ast/Node;Ljava/lang/Object;)Lcom/github/javaparser/ast/Node;

    move-result-object v0

    check-cast v0, Lcom/github/javaparser/ast/expr/Expression;

    .line 797
    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getComment()Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {p0, v1, p2}, Lcom/github/javaparser/ast/visitor/CloneVisitor;->cloneNode(Ljava/util/Optional;Ljava/lang/Object;)Lcom/github/javaparser/ast/Node;

    move-result-object p2

    check-cast p2, Lcom/github/javaparser/ast/comments/Comment;

    .line 798
    new-instance v1, Lcom/github/javaparser/ast/stmt/YieldStmt;

    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getTokenRange()Ljava/util/Optional;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/github/javaparser/TokenRange;

    invoke-direct {v1, v2, v0}, Lcom/github/javaparser/ast/stmt/YieldStmt;-><init>(Lcom/github/javaparser/TokenRange;Lcom/github/javaparser/ast/expr/Expression;)V

    .line 799
    invoke-virtual {v1, p2}, Lcom/github/javaparser/ast/Node;->setComment(Lcom/github/javaparser/ast/comments/Comment;)Lcom/github/javaparser/ast/Node;

    .line 800
    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getOrphanComments()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object p2

    new-instance v0, Lc0/a;

    invoke-direct {v0}, Lc0/a;-><init>()V

    invoke-interface {p2, v0}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p2

    new-instance v0, Lc0/g;

    invoke-direct {v0, v1}, Lc0/g;-><init>(Lcom/github/javaparser/ast/stmt/YieldStmt;)V

    invoke-interface {p2, v0}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    .line 801
    invoke-direct {p0, p1, v1}, Lcom/github/javaparser/ast/visitor/CloneVisitor;->copyData(Lcom/github/javaparser/ast/Node;Lcom/github/javaparser/ast/Node;)V

    return-object v1
.end method

.method public visit(Lcom/github/javaparser/ast/type/ArrayType;Ljava/lang/Object;)Lcom/github/javaparser/ast/visitor/Visitable;
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 280
    invoke-virtual {p1}, Lcom/github/javaparser/ast/type/ArrayType;->getComponentType()Lcom/github/javaparser/ast/type/Type;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/github/javaparser/ast/visitor/CloneVisitor;->cloneNode(Lcom/github/javaparser/ast/Node;Ljava/lang/Object;)Lcom/github/javaparser/ast/Node;

    move-result-object v0

    check-cast v0, Lcom/github/javaparser/ast/type/Type;

    .line 281
    invoke-virtual {p1}, Lcom/github/javaparser/ast/type/Type;->getAnnotations()Lcom/github/javaparser/ast/NodeList;

    move-result-object v1

    invoke-direct {p0, v1, p2}, Lcom/github/javaparser/ast/visitor/CloneVisitor;->cloneList(Lcom/github/javaparser/ast/NodeList;Ljava/lang/Object;)Lcom/github/javaparser/ast/NodeList;

    move-result-object v1

    .line 282
    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getComment()Ljava/util/Optional;

    move-result-object v2

    invoke-virtual {p0, v2, p2}, Lcom/github/javaparser/ast/visitor/CloneVisitor;->cloneNode(Ljava/util/Optional;Ljava/lang/Object;)Lcom/github/javaparser/ast/Node;

    move-result-object p2

    check-cast p2, Lcom/github/javaparser/ast/comments/Comment;

    .line 283
    new-instance v2, Lcom/github/javaparser/ast/type/ArrayType;

    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getTokenRange()Ljava/util/Optional;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/github/javaparser/TokenRange;

    invoke-virtual {p1}, Lcom/github/javaparser/ast/type/ArrayType;->getOrigin()Lcom/github/javaparser/ast/type/ArrayType$Origin;

    move-result-object v4

    invoke-direct {v2, v3, v0, v4, v1}, Lcom/github/javaparser/ast/type/ArrayType;-><init>(Lcom/github/javaparser/TokenRange;Lcom/github/javaparser/ast/type/Type;Lcom/github/javaparser/ast/type/ArrayType$Origin;Lcom/github/javaparser/ast/NodeList;)V

    .line 284
    invoke-virtual {v2, p2}, Lcom/github/javaparser/ast/Node;->setComment(Lcom/github/javaparser/ast/comments/Comment;)Lcom/github/javaparser/ast/Node;

    .line 285
    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getOrphanComments()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object p2

    new-instance v0, Lc0/a;

    invoke-direct {v0}, Lc0/a;-><init>()V

    invoke-interface {p2, v0}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p2

    new-instance v0, Lc0/A;

    invoke-direct {v0, v2}, Lc0/A;-><init>(Lcom/github/javaparser/ast/type/ArrayType;)V

    invoke-interface {p2, v0}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    .line 286
    invoke-direct {p0, p1, v2}, Lcom/github/javaparser/ast/visitor/CloneVisitor;->copyData(Lcom/github/javaparser/ast/Node;Lcom/github/javaparser/ast/Node;)V

    return-object v2
.end method

.method public visit(Lcom/github/javaparser/ast/type/ClassOrInterfaceType;Ljava/lang/Object;)Lcom/github/javaparser/ast/visitor/Visitable;
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 264
    invoke-virtual {p1}, Lcom/github/javaparser/ast/type/ClassOrInterfaceType;->getName()Lcom/github/javaparser/ast/expr/SimpleName;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/github/javaparser/ast/visitor/CloneVisitor;->cloneNode(Lcom/github/javaparser/ast/Node;Ljava/lang/Object;)Lcom/github/javaparser/ast/Node;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lcom/github/javaparser/ast/expr/SimpleName;

    .line 265
    invoke-virtual {p1}, Lcom/github/javaparser/ast/type/ClassOrInterfaceType;->getScope()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/github/javaparser/ast/visitor/CloneVisitor;->cloneNode(Ljava/util/Optional;Ljava/lang/Object;)Lcom/github/javaparser/ast/Node;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lcom/github/javaparser/ast/type/ClassOrInterfaceType;

    .line 266
    invoke-virtual {p1}, Lcom/github/javaparser/ast/type/ClassOrInterfaceType;->getTypeArguments()Ljava/util/Optional;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/github/javaparser/ast/NodeList;

    invoke-direct {p0, v0, p2}, Lcom/github/javaparser/ast/visitor/CloneVisitor;->cloneList(Lcom/github/javaparser/ast/NodeList;Ljava/lang/Object;)Lcom/github/javaparser/ast/NodeList;

    move-result-object v5

    .line 267
    invoke-virtual {p1}, Lcom/github/javaparser/ast/type/Type;->getAnnotations()Lcom/github/javaparser/ast/NodeList;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lcom/github/javaparser/ast/visitor/CloneVisitor;->cloneList(Lcom/github/javaparser/ast/NodeList;Ljava/lang/Object;)Lcom/github/javaparser/ast/NodeList;

    move-result-object v6

    .line 268
    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getComment()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/github/javaparser/ast/visitor/CloneVisitor;->cloneNode(Ljava/util/Optional;Ljava/lang/Object;)Lcom/github/javaparser/ast/Node;

    move-result-object p2

    check-cast p2, Lcom/github/javaparser/ast/comments/Comment;

    .line 269
    new-instance v0, Lcom/github/javaparser/ast/type/ClassOrInterfaceType;

    .line 270
    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getTokenRange()Ljava/util/Optional;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/github/javaparser/TokenRange;

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/github/javaparser/ast/type/ClassOrInterfaceType;-><init>(Lcom/github/javaparser/TokenRange;Lcom/github/javaparser/ast/type/ClassOrInterfaceType;Lcom/github/javaparser/ast/expr/SimpleName;Lcom/github/javaparser/ast/NodeList;Lcom/github/javaparser/ast/NodeList;)V

    .line 271
    invoke-virtual {v0, p2}, Lcom/github/javaparser/ast/Node;->setComment(Lcom/github/javaparser/ast/comments/Comment;)Lcom/github/javaparser/ast/Node;

    .line 272
    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getOrphanComments()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object p2

    new-instance v1, Lc0/a;

    invoke-direct {v1}, Lc0/a;-><init>()V

    invoke-interface {p2, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p2

    new-instance v1, Lc0/X;

    invoke-direct {v1, v0}, Lc0/X;-><init>(Lcom/github/javaparser/ast/type/ClassOrInterfaceType;)V

    invoke-interface {p2, v1}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    .line 273
    invoke-direct {p0, p1, v0}, Lcom/github/javaparser/ast/visitor/CloneVisitor;->copyData(Lcom/github/javaparser/ast/Node;Lcom/github/javaparser/ast/Node;)V

    return-object v0
.end method

.method public visit(Lcom/github/javaparser/ast/type/IntersectionType;Ljava/lang/Object;)Lcom/github/javaparser/ast/visitor/Visitable;
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 294
    invoke-virtual {p1}, Lcom/github/javaparser/ast/type/IntersectionType;->getElements()Lcom/github/javaparser/ast/NodeList;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lcom/github/javaparser/ast/visitor/CloneVisitor;->cloneList(Lcom/github/javaparser/ast/NodeList;Ljava/lang/Object;)Lcom/github/javaparser/ast/NodeList;

    move-result-object v0

    .line 295
    invoke-virtual {p1}, Lcom/github/javaparser/ast/type/Type;->getAnnotations()Lcom/github/javaparser/ast/NodeList;

    move-result-object v1

    invoke-direct {p0, v1, p2}, Lcom/github/javaparser/ast/visitor/CloneVisitor;->cloneList(Lcom/github/javaparser/ast/NodeList;Ljava/lang/Object;)Lcom/github/javaparser/ast/NodeList;

    .line 296
    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getComment()Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {p0, v1, p2}, Lcom/github/javaparser/ast/visitor/CloneVisitor;->cloneNode(Ljava/util/Optional;Ljava/lang/Object;)Lcom/github/javaparser/ast/Node;

    move-result-object p2

    check-cast p2, Lcom/github/javaparser/ast/comments/Comment;

    .line 297
    new-instance v1, Lcom/github/javaparser/ast/type/IntersectionType;

    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getTokenRange()Ljava/util/Optional;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/github/javaparser/TokenRange;

    invoke-direct {v1, v2, v0}, Lcom/github/javaparser/ast/type/IntersectionType;-><init>(Lcom/github/javaparser/TokenRange;Lcom/github/javaparser/ast/NodeList;)V

    .line 298
    invoke-virtual {v1, p2}, Lcom/github/javaparser/ast/Node;->setComment(Lcom/github/javaparser/ast/comments/Comment;)Lcom/github/javaparser/ast/Node;

    .line 299
    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getOrphanComments()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object p2

    new-instance v0, Lc0/a;

    invoke-direct {v0}, Lc0/a;-><init>()V

    invoke-interface {p2, v0}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p2

    new-instance v0, Lc0/n;

    invoke-direct {v0, v1}, Lc0/n;-><init>(Lcom/github/javaparser/ast/type/IntersectionType;)V

    invoke-interface {p2, v0}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    .line 300
    invoke-direct {p0, p1, v1}, Lcom/github/javaparser/ast/visitor/CloneVisitor;->copyData(Lcom/github/javaparser/ast/Node;Lcom/github/javaparser/ast/Node;)V

    return-object v1
.end method

.method public visit(Lcom/github/javaparser/ast/type/PrimitiveType;Ljava/lang/Object;)Lcom/github/javaparser/ast/visitor/Visitable;
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 274
    invoke-virtual {p1}, Lcom/github/javaparser/ast/type/Type;->getAnnotations()Lcom/github/javaparser/ast/NodeList;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lcom/github/javaparser/ast/visitor/CloneVisitor;->cloneList(Lcom/github/javaparser/ast/NodeList;Ljava/lang/Object;)Lcom/github/javaparser/ast/NodeList;

    move-result-object v0

    .line 275
    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getComment()Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {p0, v1, p2}, Lcom/github/javaparser/ast/visitor/CloneVisitor;->cloneNode(Ljava/util/Optional;Ljava/lang/Object;)Lcom/github/javaparser/ast/Node;

    move-result-object p2

    check-cast p2, Lcom/github/javaparser/ast/comments/Comment;

    .line 276
    new-instance v1, Lcom/github/javaparser/ast/type/PrimitiveType;

    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getTokenRange()Ljava/util/Optional;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/github/javaparser/TokenRange;

    invoke-virtual {p1}, Lcom/github/javaparser/ast/type/PrimitiveType;->getType()Lcom/github/javaparser/ast/type/PrimitiveType$Primitive;

    move-result-object v3

    invoke-direct {v1, v2, v3, v0}, Lcom/github/javaparser/ast/type/PrimitiveType;-><init>(Lcom/github/javaparser/TokenRange;Lcom/github/javaparser/ast/type/PrimitiveType$Primitive;Lcom/github/javaparser/ast/NodeList;)V

    .line 277
    invoke-virtual {v1, p2}, Lcom/github/javaparser/ast/Node;->setComment(Lcom/github/javaparser/ast/comments/Comment;)Lcom/github/javaparser/ast/Node;

    .line 278
    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getOrphanComments()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object p2

    new-instance v0, Lc0/a;

    invoke-direct {v0}, Lc0/a;-><init>()V

    invoke-interface {p2, v0}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p2

    new-instance v0, Lc0/C;

    invoke-direct {v0, v1}, Lc0/C;-><init>(Lcom/github/javaparser/ast/type/PrimitiveType;)V

    invoke-interface {p2, v0}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    .line 279
    invoke-direct {p0, p1, v1}, Lcom/github/javaparser/ast/visitor/CloneVisitor;->copyData(Lcom/github/javaparser/ast/Node;Lcom/github/javaparser/ast/Node;)V

    return-object v1
.end method

.method public visit(Lcom/github/javaparser/ast/type/TypeParameter;Ljava/lang/Object;)Lcom/github/javaparser/ast/visitor/Visitable;
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 120
    invoke-virtual {p1}, Lcom/github/javaparser/ast/type/TypeParameter;->getName()Lcom/github/javaparser/ast/expr/SimpleName;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/github/javaparser/ast/visitor/CloneVisitor;->cloneNode(Lcom/github/javaparser/ast/Node;Ljava/lang/Object;)Lcom/github/javaparser/ast/Node;

    move-result-object v0

    check-cast v0, Lcom/github/javaparser/ast/expr/SimpleName;

    .line 121
    invoke-virtual {p1}, Lcom/github/javaparser/ast/type/TypeParameter;->getTypeBound()Lcom/github/javaparser/ast/NodeList;

    move-result-object v1

    invoke-direct {p0, v1, p2}, Lcom/github/javaparser/ast/visitor/CloneVisitor;->cloneList(Lcom/github/javaparser/ast/NodeList;Ljava/lang/Object;)Lcom/github/javaparser/ast/NodeList;

    move-result-object v1

    .line 122
    invoke-virtual {p1}, Lcom/github/javaparser/ast/type/Type;->getAnnotations()Lcom/github/javaparser/ast/NodeList;

    move-result-object v2

    invoke-direct {p0, v2, p2}, Lcom/github/javaparser/ast/visitor/CloneVisitor;->cloneList(Lcom/github/javaparser/ast/NodeList;Ljava/lang/Object;)Lcom/github/javaparser/ast/NodeList;

    move-result-object v2

    .line 123
    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getComment()Ljava/util/Optional;

    move-result-object v3

    invoke-virtual {p0, v3, p2}, Lcom/github/javaparser/ast/visitor/CloneVisitor;->cloneNode(Ljava/util/Optional;Ljava/lang/Object;)Lcom/github/javaparser/ast/Node;

    move-result-object p2

    check-cast p2, Lcom/github/javaparser/ast/comments/Comment;

    .line 124
    new-instance v3, Lcom/github/javaparser/ast/type/TypeParameter;

    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getTokenRange()Ljava/util/Optional;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/github/javaparser/TokenRange;

    invoke-direct {v3, v4, v0, v1, v2}, Lcom/github/javaparser/ast/type/TypeParameter;-><init>(Lcom/github/javaparser/TokenRange;Lcom/github/javaparser/ast/expr/SimpleName;Lcom/github/javaparser/ast/NodeList;Lcom/github/javaparser/ast/NodeList;)V

    .line 125
    invoke-virtual {v3, p2}, Lcom/github/javaparser/ast/Node;->setComment(Lcom/github/javaparser/ast/comments/Comment;)Lcom/github/javaparser/ast/Node;

    .line 126
    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getOrphanComments()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object p2

    new-instance v0, Lc0/a;

    invoke-direct {v0}, Lc0/a;-><init>()V

    invoke-interface {p2, v0}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p2

    new-instance v0, Lc0/G;

    invoke-direct {v0, v3}, Lc0/G;-><init>(Lcom/github/javaparser/ast/type/TypeParameter;)V

    invoke-interface {p2, v0}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    .line 127
    invoke-direct {p0, p1, v3}, Lcom/github/javaparser/ast/visitor/CloneVisitor;->copyData(Lcom/github/javaparser/ast/Node;Lcom/github/javaparser/ast/Node;)V

    return-object v3
.end method

.method public visit(Lcom/github/javaparser/ast/type/UnionType;Ljava/lang/Object;)Lcom/github/javaparser/ast/visitor/Visitable;
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 301
    invoke-virtual {p1}, Lcom/github/javaparser/ast/type/UnionType;->getElements()Lcom/github/javaparser/ast/NodeList;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lcom/github/javaparser/ast/visitor/CloneVisitor;->cloneList(Lcom/github/javaparser/ast/NodeList;Ljava/lang/Object;)Lcom/github/javaparser/ast/NodeList;

    move-result-object v0

    .line 302
    invoke-virtual {p1}, Lcom/github/javaparser/ast/type/Type;->getAnnotations()Lcom/github/javaparser/ast/NodeList;

    move-result-object v1

    invoke-direct {p0, v1, p2}, Lcom/github/javaparser/ast/visitor/CloneVisitor;->cloneList(Lcom/github/javaparser/ast/NodeList;Ljava/lang/Object;)Lcom/github/javaparser/ast/NodeList;

    .line 303
    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getComment()Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {p0, v1, p2}, Lcom/github/javaparser/ast/visitor/CloneVisitor;->cloneNode(Ljava/util/Optional;Ljava/lang/Object;)Lcom/github/javaparser/ast/Node;

    move-result-object p2

    check-cast p2, Lcom/github/javaparser/ast/comments/Comment;

    .line 304
    new-instance v1, Lcom/github/javaparser/ast/type/UnionType;

    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getTokenRange()Ljava/util/Optional;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/github/javaparser/TokenRange;

    invoke-direct {v1, v2, v0}, Lcom/github/javaparser/ast/type/UnionType;-><init>(Lcom/github/javaparser/TokenRange;Lcom/github/javaparser/ast/NodeList;)V

    .line 305
    invoke-virtual {v1, p2}, Lcom/github/javaparser/ast/Node;->setComment(Lcom/github/javaparser/ast/comments/Comment;)Lcom/github/javaparser/ast/Node;

    .line 306
    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getOrphanComments()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object p2

    new-instance v0, Lc0/a;

    invoke-direct {v0}, Lc0/a;-><init>()V

    invoke-interface {p2, v0}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p2

    new-instance v0, Lc0/S0;

    invoke-direct {v0, v1}, Lc0/S0;-><init>(Lcom/github/javaparser/ast/type/UnionType;)V

    invoke-interface {p2, v0}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    .line 307
    invoke-direct {p0, p1, v1}, Lcom/github/javaparser/ast/visitor/CloneVisitor;->copyData(Lcom/github/javaparser/ast/Node;Lcom/github/javaparser/ast/Node;)V

    return-object v1
.end method

.method public visit(Lcom/github/javaparser/ast/type/UnknownType;Ljava/lang/Object;)Lcom/github/javaparser/ast/visitor/Visitable;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 322
    invoke-virtual {p1}, Lcom/github/javaparser/ast/type/Type;->getAnnotations()Lcom/github/javaparser/ast/NodeList;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lcom/github/javaparser/ast/visitor/CloneVisitor;->cloneList(Lcom/github/javaparser/ast/NodeList;Ljava/lang/Object;)Lcom/github/javaparser/ast/NodeList;

    .line 323
    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getComment()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/github/javaparser/ast/visitor/CloneVisitor;->cloneNode(Ljava/util/Optional;Ljava/lang/Object;)Lcom/github/javaparser/ast/Node;

    move-result-object p2

    check-cast p2, Lcom/github/javaparser/ast/comments/Comment;

    .line 324
    new-instance v0, Lcom/github/javaparser/ast/type/UnknownType;

    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getTokenRange()Ljava/util/Optional;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/github/javaparser/TokenRange;

    invoke-direct {v0, v1}, Lcom/github/javaparser/ast/type/UnknownType;-><init>(Lcom/github/javaparser/TokenRange;)V

    .line 325
    invoke-virtual {v0, p2}, Lcom/github/javaparser/ast/Node;->setComment(Lcom/github/javaparser/ast/comments/Comment;)Lcom/github/javaparser/ast/Node;

    .line 326
    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getOrphanComments()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object p2

    new-instance v1, Lc0/a;

    invoke-direct {v1}, Lc0/a;-><init>()V

    invoke-interface {p2, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p2

    new-instance v1, Lc0/H;

    invoke-direct {v1, v0}, Lc0/H;-><init>(Lcom/github/javaparser/ast/type/UnknownType;)V

    invoke-interface {p2, v1}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    .line 327
    invoke-direct {p0, p1, v0}, Lcom/github/javaparser/ast/visitor/CloneVisitor;->copyData(Lcom/github/javaparser/ast/Node;Lcom/github/javaparser/ast/Node;)V

    return-object v0
.end method

.method public visit(Lcom/github/javaparser/ast/type/VarType;Ljava/lang/Object;)Lcom/github/javaparser/ast/visitor/Visitable;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 778
    invoke-virtual {p1}, Lcom/github/javaparser/ast/type/Type;->getAnnotations()Lcom/github/javaparser/ast/NodeList;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lcom/github/javaparser/ast/visitor/CloneVisitor;->cloneList(Lcom/github/javaparser/ast/NodeList;Ljava/lang/Object;)Lcom/github/javaparser/ast/NodeList;

    .line 779
    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getComment()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/github/javaparser/ast/visitor/CloneVisitor;->cloneNode(Ljava/util/Optional;Ljava/lang/Object;)Lcom/github/javaparser/ast/Node;

    move-result-object p2

    check-cast p2, Lcom/github/javaparser/ast/comments/Comment;

    .line 780
    new-instance v0, Lcom/github/javaparser/ast/type/VarType;

    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getTokenRange()Ljava/util/Optional;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/github/javaparser/TokenRange;

    invoke-direct {v0, v1}, Lcom/github/javaparser/ast/type/VarType;-><init>(Lcom/github/javaparser/TokenRange;)V

    .line 781
    invoke-virtual {v0, p2}, Lcom/github/javaparser/ast/Node;->setComment(Lcom/github/javaparser/ast/comments/Comment;)Lcom/github/javaparser/ast/Node;

    .line 782
    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getOrphanComments()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object p2

    new-instance v1, Lc0/a;

    invoke-direct {v1}, Lc0/a;-><init>()V

    invoke-interface {p2, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p2

    new-instance v1, Lc0/f0;

    invoke-direct {v1, v0}, Lc0/f0;-><init>(Lcom/github/javaparser/ast/type/VarType;)V

    invoke-interface {p2, v1}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    .line 783
    invoke-direct {p0, p1, v0}, Lcom/github/javaparser/ast/visitor/CloneVisitor;->copyData(Lcom/github/javaparser/ast/Node;Lcom/github/javaparser/ast/Node;)V

    return-object v0
.end method

.method public visit(Lcom/github/javaparser/ast/type/VoidType;Ljava/lang/Object;)Lcom/github/javaparser/ast/visitor/Visitable;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 308
    invoke-virtual {p1}, Lcom/github/javaparser/ast/type/Type;->getAnnotations()Lcom/github/javaparser/ast/NodeList;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lcom/github/javaparser/ast/visitor/CloneVisitor;->cloneList(Lcom/github/javaparser/ast/NodeList;Ljava/lang/Object;)Lcom/github/javaparser/ast/NodeList;

    .line 309
    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getComment()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/github/javaparser/ast/visitor/CloneVisitor;->cloneNode(Ljava/util/Optional;Ljava/lang/Object;)Lcom/github/javaparser/ast/Node;

    move-result-object p2

    check-cast p2, Lcom/github/javaparser/ast/comments/Comment;

    .line 310
    new-instance v0, Lcom/github/javaparser/ast/type/VoidType;

    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getTokenRange()Ljava/util/Optional;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/github/javaparser/TokenRange;

    invoke-direct {v0, v1}, Lcom/github/javaparser/ast/type/VoidType;-><init>(Lcom/github/javaparser/TokenRange;)V

    .line 311
    invoke-virtual {v0, p2}, Lcom/github/javaparser/ast/Node;->setComment(Lcom/github/javaparser/ast/comments/Comment;)Lcom/github/javaparser/ast/Node;

    .line 312
    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getOrphanComments()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object p2

    new-instance v1, Lc0/a;

    invoke-direct {v1}, Lc0/a;-><init>()V

    invoke-interface {p2, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p2

    new-instance v1, Lc0/y;

    invoke-direct {v1, v0}, Lc0/y;-><init>(Lcom/github/javaparser/ast/type/VoidType;)V

    invoke-interface {p2, v1}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    .line 313
    invoke-direct {p0, p1, v0}, Lcom/github/javaparser/ast/visitor/CloneVisitor;->copyData(Lcom/github/javaparser/ast/Node;Lcom/github/javaparser/ast/Node;)V

    return-object v0
.end method

.method public visit(Lcom/github/javaparser/ast/type/WildcardType;Ljava/lang/Object;)Lcom/github/javaparser/ast/visitor/Visitable;
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 314
    invoke-virtual {p1}, Lcom/github/javaparser/ast/type/WildcardType;->getExtendedType()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/github/javaparser/ast/visitor/CloneVisitor;->cloneNode(Ljava/util/Optional;Ljava/lang/Object;)Lcom/github/javaparser/ast/Node;

    move-result-object v0

    check-cast v0, Lcom/github/javaparser/ast/type/ReferenceType;

    .line 315
    invoke-virtual {p1}, Lcom/github/javaparser/ast/type/WildcardType;->getSuperType()Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {p0, v1, p2}, Lcom/github/javaparser/ast/visitor/CloneVisitor;->cloneNode(Ljava/util/Optional;Ljava/lang/Object;)Lcom/github/javaparser/ast/Node;

    move-result-object v1

    check-cast v1, Lcom/github/javaparser/ast/type/ReferenceType;

    .line 316
    invoke-virtual {p1}, Lcom/github/javaparser/ast/type/Type;->getAnnotations()Lcom/github/javaparser/ast/NodeList;

    move-result-object v2

    invoke-direct {p0, v2, p2}, Lcom/github/javaparser/ast/visitor/CloneVisitor;->cloneList(Lcom/github/javaparser/ast/NodeList;Ljava/lang/Object;)Lcom/github/javaparser/ast/NodeList;

    move-result-object v2

    .line 317
    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getComment()Ljava/util/Optional;

    move-result-object v3

    invoke-virtual {p0, v3, p2}, Lcom/github/javaparser/ast/visitor/CloneVisitor;->cloneNode(Ljava/util/Optional;Ljava/lang/Object;)Lcom/github/javaparser/ast/Node;

    move-result-object p2

    check-cast p2, Lcom/github/javaparser/ast/comments/Comment;

    .line 318
    new-instance v3, Lcom/github/javaparser/ast/type/WildcardType;

    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getTokenRange()Ljava/util/Optional;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/github/javaparser/TokenRange;

    invoke-direct {v3, v4, v0, v1, v2}, Lcom/github/javaparser/ast/type/WildcardType;-><init>(Lcom/github/javaparser/TokenRange;Lcom/github/javaparser/ast/type/ReferenceType;Lcom/github/javaparser/ast/type/ReferenceType;Lcom/github/javaparser/ast/NodeList;)V

    .line 319
    invoke-virtual {v3, p2}, Lcom/github/javaparser/ast/Node;->setComment(Lcom/github/javaparser/ast/comments/Comment;)Lcom/github/javaparser/ast/Node;

    .line 320
    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getOrphanComments()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object p2

    new-instance v0, Lc0/a;

    invoke-direct {v0}, Lc0/a;-><init>()V

    invoke-interface {p2, v0}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p2

    new-instance v0, Lc0/e;

    invoke-direct {v0, v3}, Lc0/e;-><init>(Lcom/github/javaparser/ast/type/WildcardType;)V

    invoke-interface {p2, v0}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    .line 321
    invoke-direct {p0, p1, v3}, Lcom/github/javaparser/ast/visitor/CloneVisitor;->copyData(Lcom/github/javaparser/ast/Node;Lcom/github/javaparser/ast/Node;)V

    return-object v3
.end method

.method public bridge synthetic visit(Lcom/github/javaparser/ast/ArrayCreationLevel;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/CloneVisitor;->visit(Lcom/github/javaparser/ast/ArrayCreationLevel;Ljava/lang/Object;)Lcom/github/javaparser/ast/visitor/Visitable;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic visit(Lcom/github/javaparser/ast/CompilationUnit;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 2
    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/CloneVisitor;->visit(Lcom/github/javaparser/ast/CompilationUnit;Ljava/lang/Object;)Lcom/github/javaparser/ast/visitor/Visitable;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic visit(Lcom/github/javaparser/ast/ImportDeclaration;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 3
    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/CloneVisitor;->visit(Lcom/github/javaparser/ast/ImportDeclaration;Ljava/lang/Object;)Lcom/github/javaparser/ast/Node;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic visit(Lcom/github/javaparser/ast/Modifier;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 4
    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/CloneVisitor;->visit(Lcom/github/javaparser/ast/Modifier;Ljava/lang/Object;)Lcom/github/javaparser/ast/visitor/Visitable;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic visit(Lcom/github/javaparser/ast/NodeList;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 5
    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/CloneVisitor;->visit(Lcom/github/javaparser/ast/NodeList;Ljava/lang/Object;)Lcom/github/javaparser/ast/visitor/Visitable;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic visit(Lcom/github/javaparser/ast/PackageDeclaration;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 6
    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/CloneVisitor;->visit(Lcom/github/javaparser/ast/PackageDeclaration;Ljava/lang/Object;)Lcom/github/javaparser/ast/visitor/Visitable;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic visit(Lcom/github/javaparser/ast/body/AnnotationDeclaration;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 7
    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/CloneVisitor;->visit(Lcom/github/javaparser/ast/body/AnnotationDeclaration;Ljava/lang/Object;)Lcom/github/javaparser/ast/visitor/Visitable;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic visit(Lcom/github/javaparser/ast/body/AnnotationMemberDeclaration;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 8
    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/CloneVisitor;->visit(Lcom/github/javaparser/ast/body/AnnotationMemberDeclaration;Ljava/lang/Object;)Lcom/github/javaparser/ast/visitor/Visitable;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic visit(Lcom/github/javaparser/ast/body/ClassOrInterfaceDeclaration;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 9
    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/CloneVisitor;->visit(Lcom/github/javaparser/ast/body/ClassOrInterfaceDeclaration;Ljava/lang/Object;)Lcom/github/javaparser/ast/visitor/Visitable;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic visit(Lcom/github/javaparser/ast/body/CompactConstructorDeclaration;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 10
    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/CloneVisitor;->visit(Lcom/github/javaparser/ast/body/CompactConstructorDeclaration;Ljava/lang/Object;)Lcom/github/javaparser/ast/visitor/Visitable;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic visit(Lcom/github/javaparser/ast/body/ConstructorDeclaration;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 11
    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/CloneVisitor;->visit(Lcom/github/javaparser/ast/body/ConstructorDeclaration;Ljava/lang/Object;)Lcom/github/javaparser/ast/visitor/Visitable;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic visit(Lcom/github/javaparser/ast/body/EnumConstantDeclaration;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 12
    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/CloneVisitor;->visit(Lcom/github/javaparser/ast/body/EnumConstantDeclaration;Ljava/lang/Object;)Lcom/github/javaparser/ast/visitor/Visitable;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic visit(Lcom/github/javaparser/ast/body/EnumDeclaration;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 13
    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/CloneVisitor;->visit(Lcom/github/javaparser/ast/body/EnumDeclaration;Ljava/lang/Object;)Lcom/github/javaparser/ast/visitor/Visitable;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic visit(Lcom/github/javaparser/ast/body/FieldDeclaration;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 14
    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/CloneVisitor;->visit(Lcom/github/javaparser/ast/body/FieldDeclaration;Ljava/lang/Object;)Lcom/github/javaparser/ast/visitor/Visitable;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic visit(Lcom/github/javaparser/ast/body/InitializerDeclaration;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 15
    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/CloneVisitor;->visit(Lcom/github/javaparser/ast/body/InitializerDeclaration;Ljava/lang/Object;)Lcom/github/javaparser/ast/visitor/Visitable;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic visit(Lcom/github/javaparser/ast/body/MethodDeclaration;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 16
    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/CloneVisitor;->visit(Lcom/github/javaparser/ast/body/MethodDeclaration;Ljava/lang/Object;)Lcom/github/javaparser/ast/visitor/Visitable;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic visit(Lcom/github/javaparser/ast/body/Parameter;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 17
    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/CloneVisitor;->visit(Lcom/github/javaparser/ast/body/Parameter;Ljava/lang/Object;)Lcom/github/javaparser/ast/visitor/Visitable;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic visit(Lcom/github/javaparser/ast/body/ReceiverParameter;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 18
    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/CloneVisitor;->visit(Lcom/github/javaparser/ast/body/ReceiverParameter;Ljava/lang/Object;)Lcom/github/javaparser/ast/visitor/Visitable;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic visit(Lcom/github/javaparser/ast/body/RecordDeclaration;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 19
    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/CloneVisitor;->visit(Lcom/github/javaparser/ast/body/RecordDeclaration;Ljava/lang/Object;)Lcom/github/javaparser/ast/visitor/Visitable;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic visit(Lcom/github/javaparser/ast/body/VariableDeclarator;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 20
    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/CloneVisitor;->visit(Lcom/github/javaparser/ast/body/VariableDeclarator;Ljava/lang/Object;)Lcom/github/javaparser/ast/visitor/Visitable;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic visit(Lcom/github/javaparser/ast/comments/BlockComment;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 21
    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/CloneVisitor;->visit(Lcom/github/javaparser/ast/comments/BlockComment;Ljava/lang/Object;)Lcom/github/javaparser/ast/visitor/Visitable;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic visit(Lcom/github/javaparser/ast/comments/JavadocComment;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 22
    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/CloneVisitor;->visit(Lcom/github/javaparser/ast/comments/JavadocComment;Ljava/lang/Object;)Lcom/github/javaparser/ast/visitor/Visitable;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic visit(Lcom/github/javaparser/ast/comments/LineComment;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 23
    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/CloneVisitor;->visit(Lcom/github/javaparser/ast/comments/LineComment;Ljava/lang/Object;)Lcom/github/javaparser/ast/visitor/Visitable;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic visit(Lcom/github/javaparser/ast/expr/ArrayAccessExpr;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 24
    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/CloneVisitor;->visit(Lcom/github/javaparser/ast/expr/ArrayAccessExpr;Ljava/lang/Object;)Lcom/github/javaparser/ast/visitor/Visitable;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic visit(Lcom/github/javaparser/ast/expr/ArrayCreationExpr;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 25
    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/CloneVisitor;->visit(Lcom/github/javaparser/ast/expr/ArrayCreationExpr;Ljava/lang/Object;)Lcom/github/javaparser/ast/visitor/Visitable;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic visit(Lcom/github/javaparser/ast/expr/ArrayInitializerExpr;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 26
    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/CloneVisitor;->visit(Lcom/github/javaparser/ast/expr/ArrayInitializerExpr;Ljava/lang/Object;)Lcom/github/javaparser/ast/visitor/Visitable;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic visit(Lcom/github/javaparser/ast/expr/AssignExpr;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 27
    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/CloneVisitor;->visit(Lcom/github/javaparser/ast/expr/AssignExpr;Ljava/lang/Object;)Lcom/github/javaparser/ast/visitor/Visitable;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic visit(Lcom/github/javaparser/ast/expr/BinaryExpr;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 28
    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/CloneVisitor;->visit(Lcom/github/javaparser/ast/expr/BinaryExpr;Ljava/lang/Object;)Lcom/github/javaparser/ast/visitor/Visitable;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic visit(Lcom/github/javaparser/ast/expr/BooleanLiteralExpr;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 29
    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/CloneVisitor;->visit(Lcom/github/javaparser/ast/expr/BooleanLiteralExpr;Ljava/lang/Object;)Lcom/github/javaparser/ast/visitor/Visitable;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic visit(Lcom/github/javaparser/ast/expr/CastExpr;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 30
    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/CloneVisitor;->visit(Lcom/github/javaparser/ast/expr/CastExpr;Ljava/lang/Object;)Lcom/github/javaparser/ast/visitor/Visitable;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic visit(Lcom/github/javaparser/ast/expr/CharLiteralExpr;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 31
    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/CloneVisitor;->visit(Lcom/github/javaparser/ast/expr/CharLiteralExpr;Ljava/lang/Object;)Lcom/github/javaparser/ast/visitor/Visitable;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic visit(Lcom/github/javaparser/ast/expr/ClassExpr;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 32
    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/CloneVisitor;->visit(Lcom/github/javaparser/ast/expr/ClassExpr;Ljava/lang/Object;)Lcom/github/javaparser/ast/visitor/Visitable;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic visit(Lcom/github/javaparser/ast/expr/ConditionalExpr;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 33
    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/CloneVisitor;->visit(Lcom/github/javaparser/ast/expr/ConditionalExpr;Ljava/lang/Object;)Lcom/github/javaparser/ast/visitor/Visitable;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic visit(Lcom/github/javaparser/ast/expr/DoubleLiteralExpr;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 34
    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/CloneVisitor;->visit(Lcom/github/javaparser/ast/expr/DoubleLiteralExpr;Ljava/lang/Object;)Lcom/github/javaparser/ast/visitor/Visitable;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic visit(Lcom/github/javaparser/ast/expr/EnclosedExpr;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 35
    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/CloneVisitor;->visit(Lcom/github/javaparser/ast/expr/EnclosedExpr;Ljava/lang/Object;)Lcom/github/javaparser/ast/visitor/Visitable;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic visit(Lcom/github/javaparser/ast/expr/FieldAccessExpr;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 36
    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/CloneVisitor;->visit(Lcom/github/javaparser/ast/expr/FieldAccessExpr;Ljava/lang/Object;)Lcom/github/javaparser/ast/visitor/Visitable;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic visit(Lcom/github/javaparser/ast/expr/InstanceOfExpr;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 37
    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/CloneVisitor;->visit(Lcom/github/javaparser/ast/expr/InstanceOfExpr;Ljava/lang/Object;)Lcom/github/javaparser/ast/visitor/Visitable;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic visit(Lcom/github/javaparser/ast/expr/IntegerLiteralExpr;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 38
    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/CloneVisitor;->visit(Lcom/github/javaparser/ast/expr/IntegerLiteralExpr;Ljava/lang/Object;)Lcom/github/javaparser/ast/visitor/Visitable;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic visit(Lcom/github/javaparser/ast/expr/LambdaExpr;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 39
    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/CloneVisitor;->visit(Lcom/github/javaparser/ast/expr/LambdaExpr;Ljava/lang/Object;)Lcom/github/javaparser/ast/visitor/Visitable;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic visit(Lcom/github/javaparser/ast/expr/LongLiteralExpr;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 40
    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/CloneVisitor;->visit(Lcom/github/javaparser/ast/expr/LongLiteralExpr;Ljava/lang/Object;)Lcom/github/javaparser/ast/visitor/Visitable;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic visit(Lcom/github/javaparser/ast/expr/MarkerAnnotationExpr;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 41
    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/CloneVisitor;->visit(Lcom/github/javaparser/ast/expr/MarkerAnnotationExpr;Ljava/lang/Object;)Lcom/github/javaparser/ast/visitor/Visitable;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic visit(Lcom/github/javaparser/ast/expr/MemberValuePair;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 42
    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/CloneVisitor;->visit(Lcom/github/javaparser/ast/expr/MemberValuePair;Ljava/lang/Object;)Lcom/github/javaparser/ast/visitor/Visitable;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic visit(Lcom/github/javaparser/ast/expr/MethodCallExpr;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 43
    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/CloneVisitor;->visit(Lcom/github/javaparser/ast/expr/MethodCallExpr;Ljava/lang/Object;)Lcom/github/javaparser/ast/visitor/Visitable;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic visit(Lcom/github/javaparser/ast/expr/MethodReferenceExpr;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 44
    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/CloneVisitor;->visit(Lcom/github/javaparser/ast/expr/MethodReferenceExpr;Ljava/lang/Object;)Lcom/github/javaparser/ast/visitor/Visitable;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic visit(Lcom/github/javaparser/ast/expr/Name;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 45
    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/CloneVisitor;->visit(Lcom/github/javaparser/ast/expr/Name;Ljava/lang/Object;)Lcom/github/javaparser/ast/visitor/Visitable;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic visit(Lcom/github/javaparser/ast/expr/NameExpr;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 46
    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/CloneVisitor;->visit(Lcom/github/javaparser/ast/expr/NameExpr;Ljava/lang/Object;)Lcom/github/javaparser/ast/visitor/Visitable;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic visit(Lcom/github/javaparser/ast/expr/NormalAnnotationExpr;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 47
    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/CloneVisitor;->visit(Lcom/github/javaparser/ast/expr/NormalAnnotationExpr;Ljava/lang/Object;)Lcom/github/javaparser/ast/visitor/Visitable;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic visit(Lcom/github/javaparser/ast/expr/NullLiteralExpr;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 48
    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/CloneVisitor;->visit(Lcom/github/javaparser/ast/expr/NullLiteralExpr;Ljava/lang/Object;)Lcom/github/javaparser/ast/visitor/Visitable;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic visit(Lcom/github/javaparser/ast/expr/ObjectCreationExpr;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 49
    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/CloneVisitor;->visit(Lcom/github/javaparser/ast/expr/ObjectCreationExpr;Ljava/lang/Object;)Lcom/github/javaparser/ast/visitor/Visitable;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic visit(Lcom/github/javaparser/ast/expr/RecordPatternExpr;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 50
    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/CloneVisitor;->visit(Lcom/github/javaparser/ast/expr/RecordPatternExpr;Ljava/lang/Object;)Lcom/github/javaparser/ast/visitor/Visitable;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic visit(Lcom/github/javaparser/ast/expr/SimpleName;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 51
    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/CloneVisitor;->visit(Lcom/github/javaparser/ast/expr/SimpleName;Ljava/lang/Object;)Lcom/github/javaparser/ast/visitor/Visitable;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic visit(Lcom/github/javaparser/ast/expr/SingleMemberAnnotationExpr;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 52
    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/CloneVisitor;->visit(Lcom/github/javaparser/ast/expr/SingleMemberAnnotationExpr;Ljava/lang/Object;)Lcom/github/javaparser/ast/visitor/Visitable;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic visit(Lcom/github/javaparser/ast/expr/StringLiteralExpr;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 53
    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/CloneVisitor;->visit(Lcom/github/javaparser/ast/expr/StringLiteralExpr;Ljava/lang/Object;)Lcom/github/javaparser/ast/visitor/Visitable;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic visit(Lcom/github/javaparser/ast/expr/SuperExpr;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 54
    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/CloneVisitor;->visit(Lcom/github/javaparser/ast/expr/SuperExpr;Ljava/lang/Object;)Lcom/github/javaparser/ast/visitor/Visitable;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic visit(Lcom/github/javaparser/ast/expr/SwitchExpr;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 55
    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/CloneVisitor;->visit(Lcom/github/javaparser/ast/expr/SwitchExpr;Ljava/lang/Object;)Lcom/github/javaparser/ast/visitor/Visitable;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic visit(Lcom/github/javaparser/ast/expr/TextBlockLiteralExpr;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 56
    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/CloneVisitor;->visit(Lcom/github/javaparser/ast/expr/TextBlockLiteralExpr;Ljava/lang/Object;)Lcom/github/javaparser/ast/visitor/Visitable;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic visit(Lcom/github/javaparser/ast/expr/ThisExpr;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 57
    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/CloneVisitor;->visit(Lcom/github/javaparser/ast/expr/ThisExpr;Ljava/lang/Object;)Lcom/github/javaparser/ast/visitor/Visitable;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic visit(Lcom/github/javaparser/ast/expr/TypeExpr;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 58
    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/CloneVisitor;->visit(Lcom/github/javaparser/ast/expr/TypeExpr;Ljava/lang/Object;)Lcom/github/javaparser/ast/visitor/Visitable;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic visit(Lcom/github/javaparser/ast/expr/TypePatternExpr;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 59
    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/CloneVisitor;->visit(Lcom/github/javaparser/ast/expr/TypePatternExpr;Ljava/lang/Object;)Lcom/github/javaparser/ast/visitor/Visitable;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic visit(Lcom/github/javaparser/ast/expr/UnaryExpr;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 60
    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/CloneVisitor;->visit(Lcom/github/javaparser/ast/expr/UnaryExpr;Ljava/lang/Object;)Lcom/github/javaparser/ast/visitor/Visitable;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic visit(Lcom/github/javaparser/ast/expr/VariableDeclarationExpr;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 61
    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/CloneVisitor;->visit(Lcom/github/javaparser/ast/expr/VariableDeclarationExpr;Ljava/lang/Object;)Lcom/github/javaparser/ast/visitor/Visitable;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic visit(Lcom/github/javaparser/ast/modules/ModuleDeclaration;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 62
    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/CloneVisitor;->visit(Lcom/github/javaparser/ast/modules/ModuleDeclaration;Ljava/lang/Object;)Lcom/github/javaparser/ast/visitor/Visitable;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic visit(Lcom/github/javaparser/ast/modules/ModuleExportsDirective;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 63
    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/CloneVisitor;->visit(Lcom/github/javaparser/ast/modules/ModuleExportsDirective;Ljava/lang/Object;)Lcom/github/javaparser/ast/visitor/Visitable;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic visit(Lcom/github/javaparser/ast/modules/ModuleOpensDirective;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 64
    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/CloneVisitor;->visit(Lcom/github/javaparser/ast/modules/ModuleOpensDirective;Ljava/lang/Object;)Lcom/github/javaparser/ast/visitor/Visitable;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic visit(Lcom/github/javaparser/ast/modules/ModuleProvidesDirective;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 65
    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/CloneVisitor;->visit(Lcom/github/javaparser/ast/modules/ModuleProvidesDirective;Ljava/lang/Object;)Lcom/github/javaparser/ast/visitor/Visitable;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic visit(Lcom/github/javaparser/ast/modules/ModuleRequiresDirective;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 66
    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/CloneVisitor;->visit(Lcom/github/javaparser/ast/modules/ModuleRequiresDirective;Ljava/lang/Object;)Lcom/github/javaparser/ast/visitor/Visitable;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic visit(Lcom/github/javaparser/ast/modules/ModuleUsesDirective;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 67
    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/CloneVisitor;->visit(Lcom/github/javaparser/ast/modules/ModuleUsesDirective;Ljava/lang/Object;)Lcom/github/javaparser/ast/visitor/Visitable;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic visit(Lcom/github/javaparser/ast/stmt/AssertStmt;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 68
    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/CloneVisitor;->visit(Lcom/github/javaparser/ast/stmt/AssertStmt;Ljava/lang/Object;)Lcom/github/javaparser/ast/visitor/Visitable;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic visit(Lcom/github/javaparser/ast/stmt/BlockStmt;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 69
    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/CloneVisitor;->visit(Lcom/github/javaparser/ast/stmt/BlockStmt;Ljava/lang/Object;)Lcom/github/javaparser/ast/visitor/Visitable;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic visit(Lcom/github/javaparser/ast/stmt/BreakStmt;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 70
    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/CloneVisitor;->visit(Lcom/github/javaparser/ast/stmt/BreakStmt;Ljava/lang/Object;)Lcom/github/javaparser/ast/visitor/Visitable;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic visit(Lcom/github/javaparser/ast/stmt/CatchClause;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 71
    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/CloneVisitor;->visit(Lcom/github/javaparser/ast/stmt/CatchClause;Ljava/lang/Object;)Lcom/github/javaparser/ast/visitor/Visitable;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic visit(Lcom/github/javaparser/ast/stmt/ContinueStmt;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 72
    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/CloneVisitor;->visit(Lcom/github/javaparser/ast/stmt/ContinueStmt;Ljava/lang/Object;)Lcom/github/javaparser/ast/visitor/Visitable;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic visit(Lcom/github/javaparser/ast/stmt/DoStmt;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 73
    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/CloneVisitor;->visit(Lcom/github/javaparser/ast/stmt/DoStmt;Ljava/lang/Object;)Lcom/github/javaparser/ast/visitor/Visitable;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic visit(Lcom/github/javaparser/ast/stmt/EmptyStmt;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 74
    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/CloneVisitor;->visit(Lcom/github/javaparser/ast/stmt/EmptyStmt;Ljava/lang/Object;)Lcom/github/javaparser/ast/visitor/Visitable;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic visit(Lcom/github/javaparser/ast/stmt/ExplicitConstructorInvocationStmt;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 75
    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/CloneVisitor;->visit(Lcom/github/javaparser/ast/stmt/ExplicitConstructorInvocationStmt;Ljava/lang/Object;)Lcom/github/javaparser/ast/visitor/Visitable;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic visit(Lcom/github/javaparser/ast/stmt/ExpressionStmt;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 76
    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/CloneVisitor;->visit(Lcom/github/javaparser/ast/stmt/ExpressionStmt;Ljava/lang/Object;)Lcom/github/javaparser/ast/visitor/Visitable;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic visit(Lcom/github/javaparser/ast/stmt/ForEachStmt;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 77
    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/CloneVisitor;->visit(Lcom/github/javaparser/ast/stmt/ForEachStmt;Ljava/lang/Object;)Lcom/github/javaparser/ast/visitor/Visitable;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic visit(Lcom/github/javaparser/ast/stmt/ForStmt;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 78
    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/CloneVisitor;->visit(Lcom/github/javaparser/ast/stmt/ForStmt;Ljava/lang/Object;)Lcom/github/javaparser/ast/visitor/Visitable;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic visit(Lcom/github/javaparser/ast/stmt/IfStmt;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 79
    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/CloneVisitor;->visit(Lcom/github/javaparser/ast/stmt/IfStmt;Ljava/lang/Object;)Lcom/github/javaparser/ast/visitor/Visitable;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic visit(Lcom/github/javaparser/ast/stmt/LabeledStmt;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 80
    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/CloneVisitor;->visit(Lcom/github/javaparser/ast/stmt/LabeledStmt;Ljava/lang/Object;)Lcom/github/javaparser/ast/visitor/Visitable;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic visit(Lcom/github/javaparser/ast/stmt/LocalClassDeclarationStmt;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 81
    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/CloneVisitor;->visit(Lcom/github/javaparser/ast/stmt/LocalClassDeclarationStmt;Ljava/lang/Object;)Lcom/github/javaparser/ast/visitor/Visitable;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic visit(Lcom/github/javaparser/ast/stmt/LocalRecordDeclarationStmt;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 82
    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/CloneVisitor;->visit(Lcom/github/javaparser/ast/stmt/LocalRecordDeclarationStmt;Ljava/lang/Object;)Lcom/github/javaparser/ast/visitor/Visitable;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic visit(Lcom/github/javaparser/ast/stmt/ReturnStmt;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 83
    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/CloneVisitor;->visit(Lcom/github/javaparser/ast/stmt/ReturnStmt;Ljava/lang/Object;)Lcom/github/javaparser/ast/visitor/Visitable;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic visit(Lcom/github/javaparser/ast/stmt/SwitchEntry;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 84
    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/CloneVisitor;->visit(Lcom/github/javaparser/ast/stmt/SwitchEntry;Ljava/lang/Object;)Lcom/github/javaparser/ast/visitor/Visitable;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic visit(Lcom/github/javaparser/ast/stmt/SwitchStmt;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 85
    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/CloneVisitor;->visit(Lcom/github/javaparser/ast/stmt/SwitchStmt;Ljava/lang/Object;)Lcom/github/javaparser/ast/visitor/Visitable;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic visit(Lcom/github/javaparser/ast/stmt/SynchronizedStmt;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 86
    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/CloneVisitor;->visit(Lcom/github/javaparser/ast/stmt/SynchronizedStmt;Ljava/lang/Object;)Lcom/github/javaparser/ast/visitor/Visitable;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic visit(Lcom/github/javaparser/ast/stmt/ThrowStmt;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 87
    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/CloneVisitor;->visit(Lcom/github/javaparser/ast/stmt/ThrowStmt;Ljava/lang/Object;)Lcom/github/javaparser/ast/visitor/Visitable;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic visit(Lcom/github/javaparser/ast/stmt/TryStmt;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 88
    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/CloneVisitor;->visit(Lcom/github/javaparser/ast/stmt/TryStmt;Ljava/lang/Object;)Lcom/github/javaparser/ast/visitor/Visitable;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic visit(Lcom/github/javaparser/ast/stmt/UnparsableStmt;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 89
    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/CloneVisitor;->visit(Lcom/github/javaparser/ast/stmt/UnparsableStmt;Ljava/lang/Object;)Lcom/github/javaparser/ast/visitor/Visitable;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic visit(Lcom/github/javaparser/ast/stmt/WhileStmt;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 90
    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/CloneVisitor;->visit(Lcom/github/javaparser/ast/stmt/WhileStmt;Ljava/lang/Object;)Lcom/github/javaparser/ast/visitor/Visitable;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic visit(Lcom/github/javaparser/ast/stmt/YieldStmt;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 91
    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/CloneVisitor;->visit(Lcom/github/javaparser/ast/stmt/YieldStmt;Ljava/lang/Object;)Lcom/github/javaparser/ast/visitor/Visitable;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic visit(Lcom/github/javaparser/ast/type/ArrayType;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 92
    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/CloneVisitor;->visit(Lcom/github/javaparser/ast/type/ArrayType;Ljava/lang/Object;)Lcom/github/javaparser/ast/visitor/Visitable;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic visit(Lcom/github/javaparser/ast/type/ClassOrInterfaceType;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 93
    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/CloneVisitor;->visit(Lcom/github/javaparser/ast/type/ClassOrInterfaceType;Ljava/lang/Object;)Lcom/github/javaparser/ast/visitor/Visitable;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic visit(Lcom/github/javaparser/ast/type/IntersectionType;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 94
    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/CloneVisitor;->visit(Lcom/github/javaparser/ast/type/IntersectionType;Ljava/lang/Object;)Lcom/github/javaparser/ast/visitor/Visitable;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic visit(Lcom/github/javaparser/ast/type/PrimitiveType;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 95
    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/CloneVisitor;->visit(Lcom/github/javaparser/ast/type/PrimitiveType;Ljava/lang/Object;)Lcom/github/javaparser/ast/visitor/Visitable;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic visit(Lcom/github/javaparser/ast/type/TypeParameter;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 96
    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/CloneVisitor;->visit(Lcom/github/javaparser/ast/type/TypeParameter;Ljava/lang/Object;)Lcom/github/javaparser/ast/visitor/Visitable;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic visit(Lcom/github/javaparser/ast/type/UnionType;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 97
    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/CloneVisitor;->visit(Lcom/github/javaparser/ast/type/UnionType;Ljava/lang/Object;)Lcom/github/javaparser/ast/visitor/Visitable;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic visit(Lcom/github/javaparser/ast/type/UnknownType;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 98
    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/CloneVisitor;->visit(Lcom/github/javaparser/ast/type/UnknownType;Ljava/lang/Object;)Lcom/github/javaparser/ast/visitor/Visitable;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic visit(Lcom/github/javaparser/ast/type/VarType;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 99
    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/CloneVisitor;->visit(Lcom/github/javaparser/ast/type/VarType;Ljava/lang/Object;)Lcom/github/javaparser/ast/visitor/Visitable;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic visit(Lcom/github/javaparser/ast/type/VoidType;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 100
    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/CloneVisitor;->visit(Lcom/github/javaparser/ast/type/VoidType;Ljava/lang/Object;)Lcom/github/javaparser/ast/visitor/Visitable;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic visit(Lcom/github/javaparser/ast/type/WildcardType;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 101
    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/CloneVisitor;->visit(Lcom/github/javaparser/ast/type/WildcardType;Ljava/lang/Object;)Lcom/github/javaparser/ast/visitor/Visitable;

    move-result-object p1

    return-object p1
.end method
