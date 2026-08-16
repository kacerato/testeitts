.class public Lcom/github/javaparser/ast/visitor/NodeFinderVisitor;
.super Lcom/github/javaparser/ast/visitor/VoidVisitorAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/github/javaparser/ast/visitor/VoidVisitorAdapter<",
        "Lcom/github/javaparser/Range;",
        ">;"
    }
.end annotation


# static fields
.field public static fConveringNode:Ljava/util/function/BiFunction;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/BiFunction<",
            "Lcom/github/javaparser/ast/Node;",
            "Lcom/github/javaparser/Range;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private static fn:Ljava/util/function/BiFunction;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/BiFunction<",
            "Lcom/github/javaparser/ast/Node;",
            "Lcom/github/javaparser/Range;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private selectedNode:Lcom/github/javaparser/ast/Node;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lc0/A3;

    invoke-direct {v0}, Lc0/A3;-><init>()V

    sput-object v0, Lcom/github/javaparser/ast/visitor/NodeFinderVisitor;->fConveringNode:Ljava/util/function/BiFunction;

    return-void
.end method

.method public constructor <init>(Ljava/util/function/BiFunction;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "fn"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/BiFunction<",
            "Lcom/github/javaparser/ast/Node;",
            "Lcom/github/javaparser/Range;",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/github/javaparser/ast/visitor/VoidVisitorAdapter;-><init>()V

    sput-object p1, Lcom/github/javaparser/ast/visitor/NodeFinderVisitor;->fn:Ljava/util/function/BiFunction;

    return-void
.end method

.method public static synthetic B3(Lcom/github/javaparser/ast/Node;Lcom/github/javaparser/Range;)Ljava/lang/Boolean;
    .locals 0

    invoke-static {p0, p1}, Lcom/github/javaparser/ast/visitor/NodeFinderVisitor;->lambda$static$0(Lcom/github/javaparser/ast/Node;Lcom/github/javaparser/Range;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$static$0(Lcom/github/javaparser/ast/Node;Lcom/github/javaparser/Range;)Ljava/lang/Boolean;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            "n",
            "range"
        }
    .end annotation

    invoke-interface {p0}, Lcom/github/javaparser/ast/nodeTypes/NodeWithRange;->hasRange()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/github/javaparser/ast/Node;->getRange()Ljava/util/Optional;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/github/javaparser/Range;

    invoke-virtual {p0, p1}, Lcom/github/javaparser/Range;->contains(Lcom/github/javaparser/Range;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public getSelectedNode()Lcom/github/javaparser/ast/Node;
    .locals 1

    iget-object v0, p0, Lcom/github/javaparser/ast/visitor/NodeFinderVisitor;->selectedNode:Lcom/github/javaparser/ast/Node;

    return-object v0
.end method

.method public visit(Lcom/github/javaparser/ast/ArrayCreationLevel;Lcom/github/javaparser/Range;)V
    .locals 1
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
    invoke-virtual {p1}, Lcom/github/javaparser/ast/ArrayCreationLevel;->getAnnotations()Lcom/github/javaparser/ast/NodeList;

    move-result-object v0

    invoke-virtual {v0, p0, p2}, Lcom/github/javaparser/ast/NodeList;->accept(Lcom/github/javaparser/ast/visitor/VoidVisitor;Ljava/lang/Object;)V

    .line 652
    iget-object v0, p0, Lcom/github/javaparser/ast/visitor/NodeFinderVisitor;->selectedNode:Lcom/github/javaparser/ast/Node;

    if-eqz v0, :cond_0

    return-void

    .line 653
    :cond_0
    invoke-virtual {p1}, Lcom/github/javaparser/ast/ArrayCreationLevel;->getDimension()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Optional;->isPresent()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 654
    invoke-virtual {p1}, Lcom/github/javaparser/ast/ArrayCreationLevel;->getDimension()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/github/javaparser/ast/expr/Expression;

    invoke-interface {v0, p0, p2}, Lcom/github/javaparser/ast/visitor/Visitable;->accept(Lcom/github/javaparser/ast/visitor/VoidVisitor;Ljava/lang/Object;)V

    .line 655
    iget-object v0, p0, Lcom/github/javaparser/ast/visitor/NodeFinderVisitor;->selectedNode:Lcom/github/javaparser/ast/Node;

    if-eqz v0, :cond_1

    return-void

    .line 656
    :cond_1
    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getComment()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Optional;->isPresent()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 657
    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getComment()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/github/javaparser/ast/comments/Comment;

    invoke-interface {v0, p0, p2}, Lcom/github/javaparser/ast/visitor/Visitable;->accept(Lcom/github/javaparser/ast/visitor/VoidVisitor;Ljava/lang/Object;)V

    .line 658
    iget-object v0, p0, Lcom/github/javaparser/ast/visitor/NodeFinderVisitor;->selectedNode:Lcom/github/javaparser/ast/Node;

    if-eqz v0, :cond_2

    return-void

    .line 659
    :cond_2
    sget-object v0, Lcom/github/javaparser/ast/visitor/NodeFinderVisitor;->fn:Ljava/util/function/BiFunction;

    invoke-interface {v0, p1, p2}, Ljava/util/function/BiFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_3

    .line 660
    iput-object p1, p0, Lcom/github/javaparser/ast/visitor/NodeFinderVisitor;->selectedNode:Lcom/github/javaparser/ast/Node;

    :cond_3
    return-void
.end method

.method public bridge synthetic visit(Lcom/github/javaparser/ast/ArrayCreationLevel;Ljava/lang/Object;)V
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
    check-cast p2, Lcom/github/javaparser/Range;

    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/NodeFinderVisitor;->visit(Lcom/github/javaparser/ast/ArrayCreationLevel;Lcom/github/javaparser/Range;)V

    return-void
.end method

.method public visit(Lcom/github/javaparser/ast/CompilationUnit;Lcom/github/javaparser/Range;)V
    .locals 1
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

    .line 269
    invoke-virtual {p1}, Lcom/github/javaparser/ast/CompilationUnit;->getImports()Lcom/github/javaparser/ast/NodeList;

    move-result-object v0

    invoke-virtual {v0, p0, p2}, Lcom/github/javaparser/ast/NodeList;->accept(Lcom/github/javaparser/ast/visitor/VoidVisitor;Ljava/lang/Object;)V

    .line 270
    iget-object v0, p0, Lcom/github/javaparser/ast/visitor/NodeFinderVisitor;->selectedNode:Lcom/github/javaparser/ast/Node;

    if-eqz v0, :cond_0

    return-void

    .line 271
    :cond_0
    invoke-virtual {p1}, Lcom/github/javaparser/ast/CompilationUnit;->getModule()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Optional;->isPresent()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 272
    invoke-virtual {p1}, Lcom/github/javaparser/ast/CompilationUnit;->getModule()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/github/javaparser/ast/modules/ModuleDeclaration;

    invoke-virtual {v0, p0, p2}, Lcom/github/javaparser/ast/modules/ModuleDeclaration;->accept(Lcom/github/javaparser/ast/visitor/VoidVisitor;Ljava/lang/Object;)V

    .line 273
    iget-object v0, p0, Lcom/github/javaparser/ast/visitor/NodeFinderVisitor;->selectedNode:Lcom/github/javaparser/ast/Node;

    if-eqz v0, :cond_1

    return-void

    .line 274
    :cond_1
    invoke-virtual {p1}, Lcom/github/javaparser/ast/CompilationUnit;->getPackageDeclaration()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Optional;->isPresent()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 275
    invoke-virtual {p1}, Lcom/github/javaparser/ast/CompilationUnit;->getPackageDeclaration()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/github/javaparser/ast/PackageDeclaration;

    invoke-virtual {v0, p0, p2}, Lcom/github/javaparser/ast/PackageDeclaration;->accept(Lcom/github/javaparser/ast/visitor/VoidVisitor;Ljava/lang/Object;)V

    .line 276
    iget-object v0, p0, Lcom/github/javaparser/ast/visitor/NodeFinderVisitor;->selectedNode:Lcom/github/javaparser/ast/Node;

    if-eqz v0, :cond_2

    return-void

    .line 277
    :cond_2
    invoke-virtual {p1}, Lcom/github/javaparser/ast/CompilationUnit;->getTypes()Lcom/github/javaparser/ast/NodeList;

    move-result-object v0

    invoke-virtual {v0, p0, p2}, Lcom/github/javaparser/ast/NodeList;->accept(Lcom/github/javaparser/ast/visitor/VoidVisitor;Ljava/lang/Object;)V

    .line 278
    iget-object v0, p0, Lcom/github/javaparser/ast/visitor/NodeFinderVisitor;->selectedNode:Lcom/github/javaparser/ast/Node;

    if-eqz v0, :cond_3

    return-void

    .line 279
    :cond_3
    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getComment()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Optional;->isPresent()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 280
    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getComment()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/github/javaparser/ast/comments/Comment;

    invoke-interface {v0, p0, p2}, Lcom/github/javaparser/ast/visitor/Visitable;->accept(Lcom/github/javaparser/ast/visitor/VoidVisitor;Ljava/lang/Object;)V

    .line 281
    iget-object v0, p0, Lcom/github/javaparser/ast/visitor/NodeFinderVisitor;->selectedNode:Lcom/github/javaparser/ast/Node;

    if-eqz v0, :cond_4

    return-void

    .line 282
    :cond_4
    sget-object v0, Lcom/github/javaparser/ast/visitor/NodeFinderVisitor;->fn:Ljava/util/function/BiFunction;

    invoke-interface {v0, p1, p2}, Ljava/util/function/BiFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_5

    .line 283
    iput-object p1, p0, Lcom/github/javaparser/ast/visitor/NodeFinderVisitor;->selectedNode:Lcom/github/javaparser/ast/Node;

    :cond_5
    return-void
.end method

.method public bridge synthetic visit(Lcom/github/javaparser/ast/CompilationUnit;Ljava/lang/Object;)V
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
    check-cast p2, Lcom/github/javaparser/Range;

    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/NodeFinderVisitor;->visit(Lcom/github/javaparser/ast/CompilationUnit;Lcom/github/javaparser/Range;)V

    return-void
.end method

.method public visit(Lcom/github/javaparser/ast/ImportDeclaration;Lcom/github/javaparser/Range;)V
    .locals 1
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

    .line 885
    invoke-virtual {p1}, Lcom/github/javaparser/ast/ImportDeclaration;->getName()Lcom/github/javaparser/ast/expr/Name;

    move-result-object v0

    invoke-virtual {v0, p0, p2}, Lcom/github/javaparser/ast/expr/Name;->accept(Lcom/github/javaparser/ast/visitor/VoidVisitor;Ljava/lang/Object;)V

    .line 886
    iget-object v0, p0, Lcom/github/javaparser/ast/visitor/NodeFinderVisitor;->selectedNode:Lcom/github/javaparser/ast/Node;

    if-eqz v0, :cond_0

    return-void

    .line 887
    :cond_0
    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getComment()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Optional;->isPresent()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 888
    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getComment()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/github/javaparser/ast/comments/Comment;

    invoke-interface {v0, p0, p2}, Lcom/github/javaparser/ast/visitor/Visitable;->accept(Lcom/github/javaparser/ast/visitor/VoidVisitor;Ljava/lang/Object;)V

    .line 889
    iget-object v0, p0, Lcom/github/javaparser/ast/visitor/NodeFinderVisitor;->selectedNode:Lcom/github/javaparser/ast/Node;

    if-eqz v0, :cond_1

    return-void

    .line 890
    :cond_1
    sget-object v0, Lcom/github/javaparser/ast/visitor/NodeFinderVisitor;->fn:Ljava/util/function/BiFunction;

    invoke-interface {v0, p1, p2}, Ljava/util/function/BiFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_2

    .line 891
    iput-object p1, p0, Lcom/github/javaparser/ast/visitor/NodeFinderVisitor;->selectedNode:Lcom/github/javaparser/ast/Node;

    :cond_2
    return-void
.end method

.method public bridge synthetic visit(Lcom/github/javaparser/ast/ImportDeclaration;Ljava/lang/Object;)V
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
    check-cast p2, Lcom/github/javaparser/Range;

    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/NodeFinderVisitor;->visit(Lcom/github/javaparser/ast/ImportDeclaration;Lcom/github/javaparser/Range;)V

    return-void
.end method

.method public visit(Lcom/github/javaparser/ast/Modifier;Lcom/github/javaparser/Range;)V
    .locals 1
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

    .line 981
    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getComment()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Optional;->isPresent()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 982
    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getComment()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/github/javaparser/ast/comments/Comment;

    invoke-interface {v0, p0, p2}, Lcom/github/javaparser/ast/visitor/Visitable;->accept(Lcom/github/javaparser/ast/visitor/VoidVisitor;Ljava/lang/Object;)V

    .line 983
    iget-object v0, p0, Lcom/github/javaparser/ast/visitor/NodeFinderVisitor;->selectedNode:Lcom/github/javaparser/ast/Node;

    if-eqz v0, :cond_0

    return-void

    .line 984
    :cond_0
    sget-object v0, Lcom/github/javaparser/ast/visitor/NodeFinderVisitor;->fn:Ljava/util/function/BiFunction;

    invoke-interface {v0, p1, p2}, Ljava/util/function/BiFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_1

    .line 985
    iput-object p1, p0, Lcom/github/javaparser/ast/visitor/NodeFinderVisitor;->selectedNode:Lcom/github/javaparser/ast/Node;

    :cond_1
    return-void
.end method

.method public bridge synthetic visit(Lcom/github/javaparser/ast/Modifier;Ljava/lang/Object;)V
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
    check-cast p2, Lcom/github/javaparser/Range;

    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/NodeFinderVisitor;->visit(Lcom/github/javaparser/ast/Modifier;Lcom/github/javaparser/Range;)V

    return-void
.end method

.method public visit(Lcom/github/javaparser/ast/NodeList;Lcom/github/javaparser/Range;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x10
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 902
    invoke-virtual {p1}, Lcom/github/javaparser/ast/NodeList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 903
    check-cast v0, Lcom/github/javaparser/ast/Node;

    invoke-interface {v0, p0, p2}, Lcom/github/javaparser/ast/visitor/Visitable;->accept(Lcom/github/javaparser/ast/visitor/VoidVisitor;Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public bridge synthetic visit(Lcom/github/javaparser/ast/NodeList;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1010
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 5
    check-cast p2, Lcom/github/javaparser/Range;

    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/NodeFinderVisitor;->visit(Lcom/github/javaparser/ast/NodeList;Lcom/github/javaparser/Range;)V

    return-void
.end method

.method public visit(Lcom/github/javaparser/ast/PackageDeclaration;Lcom/github/javaparser/Range;)V
    .locals 1
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

    .line 598
    invoke-virtual {p1}, Lcom/github/javaparser/ast/PackageDeclaration;->getAnnotations()Lcom/github/javaparser/ast/NodeList;

    move-result-object v0

    invoke-virtual {v0, p0, p2}, Lcom/github/javaparser/ast/NodeList;->accept(Lcom/github/javaparser/ast/visitor/VoidVisitor;Ljava/lang/Object;)V

    .line 599
    iget-object v0, p0, Lcom/github/javaparser/ast/visitor/NodeFinderVisitor;->selectedNode:Lcom/github/javaparser/ast/Node;

    if-eqz v0, :cond_0

    return-void

    .line 600
    :cond_0
    invoke-virtual {p1}, Lcom/github/javaparser/ast/PackageDeclaration;->getName()Lcom/github/javaparser/ast/expr/Name;

    move-result-object v0

    invoke-virtual {v0, p0, p2}, Lcom/github/javaparser/ast/expr/Name;->accept(Lcom/github/javaparser/ast/visitor/VoidVisitor;Ljava/lang/Object;)V

    .line 601
    iget-object v0, p0, Lcom/github/javaparser/ast/visitor/NodeFinderVisitor;->selectedNode:Lcom/github/javaparser/ast/Node;

    if-eqz v0, :cond_1

    return-void

    .line 602
    :cond_1
    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getComment()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Optional;->isPresent()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 603
    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getComment()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/github/javaparser/ast/comments/Comment;

    invoke-interface {v0, p0, p2}, Lcom/github/javaparser/ast/visitor/Visitable;->accept(Lcom/github/javaparser/ast/visitor/VoidVisitor;Ljava/lang/Object;)V

    .line 604
    iget-object v0, p0, Lcom/github/javaparser/ast/visitor/NodeFinderVisitor;->selectedNode:Lcom/github/javaparser/ast/Node;

    if-eqz v0, :cond_2

    return-void

    .line 605
    :cond_2
    sget-object v0, Lcom/github/javaparser/ast/visitor/NodeFinderVisitor;->fn:Ljava/util/function/BiFunction;

    invoke-interface {v0, p1, p2}, Ljava/util/function/BiFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_3

    .line 606
    iput-object p1, p0, Lcom/github/javaparser/ast/visitor/NodeFinderVisitor;->selectedNode:Lcom/github/javaparser/ast/Node;

    :cond_3
    return-void
.end method

.method public bridge synthetic visit(Lcom/github/javaparser/ast/PackageDeclaration;Ljava/lang/Object;)V
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
    check-cast p2, Lcom/github/javaparser/Range;

    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/NodeFinderVisitor;->visit(Lcom/github/javaparser/ast/PackageDeclaration;Lcom/github/javaparser/Range;)V

    return-void
.end method

.method public visit(Lcom/github/javaparser/ast/body/AnnotationDeclaration;Lcom/github/javaparser/Range;)V
    .locals 1
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

    .line 101
    invoke-virtual {p1}, Lcom/github/javaparser/ast/body/TypeDeclaration;->getMembers()Lcom/github/javaparser/ast/NodeList;

    move-result-object v0

    invoke-virtual {v0, p0, p2}, Lcom/github/javaparser/ast/NodeList;->accept(Lcom/github/javaparser/ast/visitor/VoidVisitor;Ljava/lang/Object;)V

    .line 102
    iget-object v0, p0, Lcom/github/javaparser/ast/visitor/NodeFinderVisitor;->selectedNode:Lcom/github/javaparser/ast/Node;

    if-eqz v0, :cond_0

    return-void

    .line 103
    :cond_0
    invoke-virtual {p1}, Lcom/github/javaparser/ast/body/TypeDeclaration;->getModifiers()Lcom/github/javaparser/ast/NodeList;

    move-result-object v0

    invoke-virtual {v0, p0, p2}, Lcom/github/javaparser/ast/NodeList;->accept(Lcom/github/javaparser/ast/visitor/VoidVisitor;Ljava/lang/Object;)V

    .line 104
    iget-object v0, p0, Lcom/github/javaparser/ast/visitor/NodeFinderVisitor;->selectedNode:Lcom/github/javaparser/ast/Node;

    if-eqz v0, :cond_1

    return-void

    .line 105
    :cond_1
    invoke-virtual {p1}, Lcom/github/javaparser/ast/body/TypeDeclaration;->getName()Lcom/github/javaparser/ast/expr/SimpleName;

    move-result-object v0

    invoke-virtual {v0, p0, p2}, Lcom/github/javaparser/ast/expr/SimpleName;->accept(Lcom/github/javaparser/ast/visitor/VoidVisitor;Ljava/lang/Object;)V

    .line 106
    iget-object v0, p0, Lcom/github/javaparser/ast/visitor/NodeFinderVisitor;->selectedNode:Lcom/github/javaparser/ast/Node;

    if-eqz v0, :cond_2

    return-void

    .line 107
    :cond_2
    invoke-virtual {p1}, Lcom/github/javaparser/ast/body/BodyDeclaration;->getAnnotations()Lcom/github/javaparser/ast/NodeList;

    move-result-object v0

    invoke-virtual {v0, p0, p2}, Lcom/github/javaparser/ast/NodeList;->accept(Lcom/github/javaparser/ast/visitor/VoidVisitor;Ljava/lang/Object;)V

    .line 108
    iget-object v0, p0, Lcom/github/javaparser/ast/visitor/NodeFinderVisitor;->selectedNode:Lcom/github/javaparser/ast/Node;

    if-eqz v0, :cond_3

    return-void

    .line 109
    :cond_3
    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getComment()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Optional;->isPresent()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 110
    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getComment()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/github/javaparser/ast/comments/Comment;

    invoke-interface {v0, p0, p2}, Lcom/github/javaparser/ast/visitor/Visitable;->accept(Lcom/github/javaparser/ast/visitor/VoidVisitor;Ljava/lang/Object;)V

    .line 111
    iget-object v0, p0, Lcom/github/javaparser/ast/visitor/NodeFinderVisitor;->selectedNode:Lcom/github/javaparser/ast/Node;

    if-eqz v0, :cond_4

    return-void

    .line 112
    :cond_4
    sget-object v0, Lcom/github/javaparser/ast/visitor/NodeFinderVisitor;->fn:Ljava/util/function/BiFunction;

    invoke-interface {v0, p1, p2}, Ljava/util/function/BiFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_5

    .line 113
    iput-object p1, p0, Lcom/github/javaparser/ast/visitor/NodeFinderVisitor;->selectedNode:Lcom/github/javaparser/ast/Node;

    :cond_5
    return-void
.end method

.method public bridge synthetic visit(Lcom/github/javaparser/ast/body/AnnotationDeclaration;Ljava/lang/Object;)V
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
    check-cast p2, Lcom/github/javaparser/Range;

    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/NodeFinderVisitor;->visit(Lcom/github/javaparser/ast/body/AnnotationDeclaration;Lcom/github/javaparser/Range;)V

    return-void
.end method

.method public visit(Lcom/github/javaparser/ast/body/AnnotationMemberDeclaration;Lcom/github/javaparser/Range;)V
    .locals 1
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

    .line 114
    invoke-virtual {p1}, Lcom/github/javaparser/ast/body/AnnotationMemberDeclaration;->getDefaultValue()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Optional;->isPresent()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 115
    invoke-virtual {p1}, Lcom/github/javaparser/ast/body/AnnotationMemberDeclaration;->getDefaultValue()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/github/javaparser/ast/expr/Expression;

    invoke-interface {v0, p0, p2}, Lcom/github/javaparser/ast/visitor/Visitable;->accept(Lcom/github/javaparser/ast/visitor/VoidVisitor;Ljava/lang/Object;)V

    .line 116
    iget-object v0, p0, Lcom/github/javaparser/ast/visitor/NodeFinderVisitor;->selectedNode:Lcom/github/javaparser/ast/Node;

    if-eqz v0, :cond_0

    return-void

    .line 117
    :cond_0
    invoke-virtual {p1}, Lcom/github/javaparser/ast/body/AnnotationMemberDeclaration;->getModifiers()Lcom/github/javaparser/ast/NodeList;

    move-result-object v0

    invoke-virtual {v0, p0, p2}, Lcom/github/javaparser/ast/NodeList;->accept(Lcom/github/javaparser/ast/visitor/VoidVisitor;Ljava/lang/Object;)V

    .line 118
    iget-object v0, p0, Lcom/github/javaparser/ast/visitor/NodeFinderVisitor;->selectedNode:Lcom/github/javaparser/ast/Node;

    if-eqz v0, :cond_1

    return-void

    .line 119
    :cond_1
    invoke-virtual {p1}, Lcom/github/javaparser/ast/body/AnnotationMemberDeclaration;->getName()Lcom/github/javaparser/ast/expr/SimpleName;

    move-result-object v0

    invoke-virtual {v0, p0, p2}, Lcom/github/javaparser/ast/expr/SimpleName;->accept(Lcom/github/javaparser/ast/visitor/VoidVisitor;Ljava/lang/Object;)V

    .line 120
    iget-object v0, p0, Lcom/github/javaparser/ast/visitor/NodeFinderVisitor;->selectedNode:Lcom/github/javaparser/ast/Node;

    if-eqz v0, :cond_2

    return-void

    .line 121
    :cond_2
    invoke-virtual {p1}, Lcom/github/javaparser/ast/body/AnnotationMemberDeclaration;->getType()Lcom/github/javaparser/ast/type/Type;

    move-result-object v0

    invoke-interface {v0, p0, p2}, Lcom/github/javaparser/ast/visitor/Visitable;->accept(Lcom/github/javaparser/ast/visitor/VoidVisitor;Ljava/lang/Object;)V

    .line 122
    iget-object v0, p0, Lcom/github/javaparser/ast/visitor/NodeFinderVisitor;->selectedNode:Lcom/github/javaparser/ast/Node;

    if-eqz v0, :cond_3

    return-void

    .line 123
    :cond_3
    invoke-virtual {p1}, Lcom/github/javaparser/ast/body/BodyDeclaration;->getAnnotations()Lcom/github/javaparser/ast/NodeList;

    move-result-object v0

    invoke-virtual {v0, p0, p2}, Lcom/github/javaparser/ast/NodeList;->accept(Lcom/github/javaparser/ast/visitor/VoidVisitor;Ljava/lang/Object;)V

    .line 124
    iget-object v0, p0, Lcom/github/javaparser/ast/visitor/NodeFinderVisitor;->selectedNode:Lcom/github/javaparser/ast/Node;

    if-eqz v0, :cond_4

    return-void

    .line 125
    :cond_4
    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getComment()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Optional;->isPresent()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 126
    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getComment()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/github/javaparser/ast/comments/Comment;

    invoke-interface {v0, p0, p2}, Lcom/github/javaparser/ast/visitor/Visitable;->accept(Lcom/github/javaparser/ast/visitor/VoidVisitor;Ljava/lang/Object;)V

    .line 127
    iget-object v0, p0, Lcom/github/javaparser/ast/visitor/NodeFinderVisitor;->selectedNode:Lcom/github/javaparser/ast/Node;

    if-eqz v0, :cond_5

    return-void

    .line 128
    :cond_5
    sget-object v0, Lcom/github/javaparser/ast/visitor/NodeFinderVisitor;->fn:Ljava/util/function/BiFunction;

    invoke-interface {v0, p1, p2}, Ljava/util/function/BiFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_6

    .line 129
    iput-object p1, p0, Lcom/github/javaparser/ast/visitor/NodeFinderVisitor;->selectedNode:Lcom/github/javaparser/ast/Node;

    :cond_6
    return-void
.end method

.method public bridge synthetic visit(Lcom/github/javaparser/ast/body/AnnotationMemberDeclaration;Ljava/lang/Object;)V
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
    check-cast p2, Lcom/github/javaparser/Range;

    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/NodeFinderVisitor;->visit(Lcom/github/javaparser/ast/body/AnnotationMemberDeclaration;Lcom/github/javaparser/Range;)V

    return-void
.end method

.method public visit(Lcom/github/javaparser/ast/body/ClassOrInterfaceDeclaration;Lcom/github/javaparser/Range;)V
    .locals 1
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

    .line 233
    invoke-virtual {p1}, Lcom/github/javaparser/ast/body/ClassOrInterfaceDeclaration;->getExtendedTypes()Lcom/github/javaparser/ast/NodeList;

    move-result-object v0

    invoke-virtual {v0, p0, p2}, Lcom/github/javaparser/ast/NodeList;->accept(Lcom/github/javaparser/ast/visitor/VoidVisitor;Ljava/lang/Object;)V

    .line 234
    iget-object v0, p0, Lcom/github/javaparser/ast/visitor/NodeFinderVisitor;->selectedNode:Lcom/github/javaparser/ast/Node;

    if-eqz v0, :cond_0

    return-void

    .line 235
    :cond_0
    invoke-virtual {p1}, Lcom/github/javaparser/ast/body/ClassOrInterfaceDeclaration;->getImplementedTypes()Lcom/github/javaparser/ast/NodeList;

    move-result-object v0

    invoke-virtual {v0, p0, p2}, Lcom/github/javaparser/ast/NodeList;->accept(Lcom/github/javaparser/ast/visitor/VoidVisitor;Ljava/lang/Object;)V

    .line 236
    iget-object v0, p0, Lcom/github/javaparser/ast/visitor/NodeFinderVisitor;->selectedNode:Lcom/github/javaparser/ast/Node;

    if-eqz v0, :cond_1

    return-void

    .line 237
    :cond_1
    invoke-virtual {p1}, Lcom/github/javaparser/ast/body/ClassOrInterfaceDeclaration;->getPermittedTypes()Lcom/github/javaparser/ast/NodeList;

    move-result-object v0

    invoke-virtual {v0, p0, p2}, Lcom/github/javaparser/ast/NodeList;->accept(Lcom/github/javaparser/ast/visitor/VoidVisitor;Ljava/lang/Object;)V

    .line 238
    iget-object v0, p0, Lcom/github/javaparser/ast/visitor/NodeFinderVisitor;->selectedNode:Lcom/github/javaparser/ast/Node;

    if-eqz v0, :cond_2

    return-void

    .line 239
    :cond_2
    invoke-virtual {p1}, Lcom/github/javaparser/ast/body/ClassOrInterfaceDeclaration;->getTypeParameters()Lcom/github/javaparser/ast/NodeList;

    move-result-object v0

    invoke-virtual {v0, p0, p2}, Lcom/github/javaparser/ast/NodeList;->accept(Lcom/github/javaparser/ast/visitor/VoidVisitor;Ljava/lang/Object;)V

    .line 240
    iget-object v0, p0, Lcom/github/javaparser/ast/visitor/NodeFinderVisitor;->selectedNode:Lcom/github/javaparser/ast/Node;

    if-eqz v0, :cond_3

    return-void

    .line 241
    :cond_3
    invoke-virtual {p1}, Lcom/github/javaparser/ast/body/TypeDeclaration;->getMembers()Lcom/github/javaparser/ast/NodeList;

    move-result-object v0

    invoke-virtual {v0, p0, p2}, Lcom/github/javaparser/ast/NodeList;->accept(Lcom/github/javaparser/ast/visitor/VoidVisitor;Ljava/lang/Object;)V

    .line 242
    iget-object v0, p0, Lcom/github/javaparser/ast/visitor/NodeFinderVisitor;->selectedNode:Lcom/github/javaparser/ast/Node;

    if-eqz v0, :cond_4

    return-void

    .line 243
    :cond_4
    invoke-virtual {p1}, Lcom/github/javaparser/ast/body/TypeDeclaration;->getModifiers()Lcom/github/javaparser/ast/NodeList;

    move-result-object v0

    invoke-virtual {v0, p0, p2}, Lcom/github/javaparser/ast/NodeList;->accept(Lcom/github/javaparser/ast/visitor/VoidVisitor;Ljava/lang/Object;)V

    .line 244
    iget-object v0, p0, Lcom/github/javaparser/ast/visitor/NodeFinderVisitor;->selectedNode:Lcom/github/javaparser/ast/Node;

    if-eqz v0, :cond_5

    return-void

    .line 245
    :cond_5
    invoke-virtual {p1}, Lcom/github/javaparser/ast/body/TypeDeclaration;->getName()Lcom/github/javaparser/ast/expr/SimpleName;

    move-result-object v0

    invoke-virtual {v0, p0, p2}, Lcom/github/javaparser/ast/expr/SimpleName;->accept(Lcom/github/javaparser/ast/visitor/VoidVisitor;Ljava/lang/Object;)V

    .line 246
    iget-object v0, p0, Lcom/github/javaparser/ast/visitor/NodeFinderVisitor;->selectedNode:Lcom/github/javaparser/ast/Node;

    if-eqz v0, :cond_6

    return-void

    .line 247
    :cond_6
    invoke-virtual {p1}, Lcom/github/javaparser/ast/body/BodyDeclaration;->getAnnotations()Lcom/github/javaparser/ast/NodeList;

    move-result-object v0

    invoke-virtual {v0, p0, p2}, Lcom/github/javaparser/ast/NodeList;->accept(Lcom/github/javaparser/ast/visitor/VoidVisitor;Ljava/lang/Object;)V

    .line 248
    iget-object v0, p0, Lcom/github/javaparser/ast/visitor/NodeFinderVisitor;->selectedNode:Lcom/github/javaparser/ast/Node;

    if-eqz v0, :cond_7

    return-void

    .line 249
    :cond_7
    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getComment()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Optional;->isPresent()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 250
    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getComment()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/github/javaparser/ast/comments/Comment;

    invoke-interface {v0, p0, p2}, Lcom/github/javaparser/ast/visitor/Visitable;->accept(Lcom/github/javaparser/ast/visitor/VoidVisitor;Ljava/lang/Object;)V

    .line 251
    iget-object v0, p0, Lcom/github/javaparser/ast/visitor/NodeFinderVisitor;->selectedNode:Lcom/github/javaparser/ast/Node;

    if-eqz v0, :cond_8

    return-void

    .line 252
    :cond_8
    sget-object v0, Lcom/github/javaparser/ast/visitor/NodeFinderVisitor;->fn:Ljava/util/function/BiFunction;

    invoke-interface {v0, p1, p2}, Ljava/util/function/BiFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_9

    .line 253
    iput-object p1, p0, Lcom/github/javaparser/ast/visitor/NodeFinderVisitor;->selectedNode:Lcom/github/javaparser/ast/Node;

    :cond_9
    return-void
.end method

.method public bridge synthetic visit(Lcom/github/javaparser/ast/body/ClassOrInterfaceDeclaration;Ljava/lang/Object;)V
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
    check-cast p2, Lcom/github/javaparser/Range;

    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/NodeFinderVisitor;->visit(Lcom/github/javaparser/ast/body/ClassOrInterfaceDeclaration;Lcom/github/javaparser/Range;)V

    return-void
.end method

.method public visit(Lcom/github/javaparser/ast/body/CompactConstructorDeclaration;Lcom/github/javaparser/Range;)V
    .locals 1
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

    .line 1040
    invoke-virtual {p1}, Lcom/github/javaparser/ast/body/CompactConstructorDeclaration;->getBody()Lcom/github/javaparser/ast/stmt/BlockStmt;

    move-result-object v0

    invoke-virtual {v0, p0, p2}, Lcom/github/javaparser/ast/stmt/BlockStmt;->accept(Lcom/github/javaparser/ast/visitor/VoidVisitor;Ljava/lang/Object;)V

    .line 1041
    iget-object v0, p0, Lcom/github/javaparser/ast/visitor/NodeFinderVisitor;->selectedNode:Lcom/github/javaparser/ast/Node;

    if-eqz v0, :cond_0

    return-void

    .line 1042
    :cond_0
    invoke-virtual {p1}, Lcom/github/javaparser/ast/body/CompactConstructorDeclaration;->getModifiers()Lcom/github/javaparser/ast/NodeList;

    move-result-object v0

    invoke-virtual {v0, p0, p2}, Lcom/github/javaparser/ast/NodeList;->accept(Lcom/github/javaparser/ast/visitor/VoidVisitor;Ljava/lang/Object;)V

    .line 1043
    iget-object v0, p0, Lcom/github/javaparser/ast/visitor/NodeFinderVisitor;->selectedNode:Lcom/github/javaparser/ast/Node;

    if-eqz v0, :cond_1

    return-void

    .line 1044
    :cond_1
    invoke-virtual {p1}, Lcom/github/javaparser/ast/body/CompactConstructorDeclaration;->getName()Lcom/github/javaparser/ast/expr/SimpleName;

    move-result-object v0

    invoke-virtual {v0, p0, p2}, Lcom/github/javaparser/ast/expr/SimpleName;->accept(Lcom/github/javaparser/ast/visitor/VoidVisitor;Ljava/lang/Object;)V

    .line 1045
    iget-object v0, p0, Lcom/github/javaparser/ast/visitor/NodeFinderVisitor;->selectedNode:Lcom/github/javaparser/ast/Node;

    if-eqz v0, :cond_2

    return-void

    .line 1046
    :cond_2
    invoke-virtual {p1}, Lcom/github/javaparser/ast/body/CompactConstructorDeclaration;->getThrownExceptions()Lcom/github/javaparser/ast/NodeList;

    move-result-object v0

    invoke-virtual {v0, p0, p2}, Lcom/github/javaparser/ast/NodeList;->accept(Lcom/github/javaparser/ast/visitor/VoidVisitor;Ljava/lang/Object;)V

    .line 1047
    iget-object v0, p0, Lcom/github/javaparser/ast/visitor/NodeFinderVisitor;->selectedNode:Lcom/github/javaparser/ast/Node;

    if-eqz v0, :cond_3

    return-void

    .line 1048
    :cond_3
    invoke-virtual {p1}, Lcom/github/javaparser/ast/body/CompactConstructorDeclaration;->getTypeParameters()Lcom/github/javaparser/ast/NodeList;

    move-result-object v0

    invoke-virtual {v0, p0, p2}, Lcom/github/javaparser/ast/NodeList;->accept(Lcom/github/javaparser/ast/visitor/VoidVisitor;Ljava/lang/Object;)V

    .line 1049
    iget-object v0, p0, Lcom/github/javaparser/ast/visitor/NodeFinderVisitor;->selectedNode:Lcom/github/javaparser/ast/Node;

    if-eqz v0, :cond_4

    return-void

    .line 1050
    :cond_4
    invoke-virtual {p1}, Lcom/github/javaparser/ast/body/BodyDeclaration;->getAnnotations()Lcom/github/javaparser/ast/NodeList;

    move-result-object v0

    invoke-virtual {v0, p0, p2}, Lcom/github/javaparser/ast/NodeList;->accept(Lcom/github/javaparser/ast/visitor/VoidVisitor;Ljava/lang/Object;)V

    .line 1051
    iget-object v0, p0, Lcom/github/javaparser/ast/visitor/NodeFinderVisitor;->selectedNode:Lcom/github/javaparser/ast/Node;

    if-eqz v0, :cond_5

    return-void

    .line 1052
    :cond_5
    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getComment()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Optional;->isPresent()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1053
    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getComment()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/github/javaparser/ast/comments/Comment;

    invoke-interface {v0, p0, p2}, Lcom/github/javaparser/ast/visitor/Visitable;->accept(Lcom/github/javaparser/ast/visitor/VoidVisitor;Ljava/lang/Object;)V

    .line 1054
    iget-object v0, p0, Lcom/github/javaparser/ast/visitor/NodeFinderVisitor;->selectedNode:Lcom/github/javaparser/ast/Node;

    if-eqz v0, :cond_6

    return-void

    .line 1055
    :cond_6
    sget-object v0, Lcom/github/javaparser/ast/visitor/NodeFinderVisitor;->fn:Ljava/util/function/BiFunction;

    invoke-interface {v0, p1, p2}, Ljava/util/function/BiFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_7

    .line 1056
    iput-object p1, p0, Lcom/github/javaparser/ast/visitor/NodeFinderVisitor;->selectedNode:Lcom/github/javaparser/ast/Node;

    :cond_7
    return-void
.end method

.method public bridge synthetic visit(Lcom/github/javaparser/ast/body/CompactConstructorDeclaration;Ljava/lang/Object;)V
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
    check-cast p2, Lcom/github/javaparser/Range;

    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/NodeFinderVisitor;->visit(Lcom/github/javaparser/ast/body/CompactConstructorDeclaration;Lcom/github/javaparser/Range;)V

    return-void
.end method

.method public visit(Lcom/github/javaparser/ast/body/ConstructorDeclaration;Lcom/github/javaparser/Range;)V
    .locals 1
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

    .line 295
    invoke-virtual {p1}, Lcom/github/javaparser/ast/body/ConstructorDeclaration;->getBody()Lcom/github/javaparser/ast/stmt/BlockStmt;

    move-result-object v0

    invoke-virtual {v0, p0, p2}, Lcom/github/javaparser/ast/stmt/BlockStmt;->accept(Lcom/github/javaparser/ast/visitor/VoidVisitor;Ljava/lang/Object;)V

    .line 296
    iget-object v0, p0, Lcom/github/javaparser/ast/visitor/NodeFinderVisitor;->selectedNode:Lcom/github/javaparser/ast/Node;

    if-eqz v0, :cond_0

    return-void

    .line 297
    :cond_0
    invoke-virtual {p1}, Lcom/github/javaparser/ast/body/CallableDeclaration;->getModifiers()Lcom/github/javaparser/ast/NodeList;

    move-result-object v0

    invoke-virtual {v0, p0, p2}, Lcom/github/javaparser/ast/NodeList;->accept(Lcom/github/javaparser/ast/visitor/VoidVisitor;Ljava/lang/Object;)V

    .line 298
    iget-object v0, p0, Lcom/github/javaparser/ast/visitor/NodeFinderVisitor;->selectedNode:Lcom/github/javaparser/ast/Node;

    if-eqz v0, :cond_1

    return-void

    .line 299
    :cond_1
    invoke-virtual {p1}, Lcom/github/javaparser/ast/body/CallableDeclaration;->getName()Lcom/github/javaparser/ast/expr/SimpleName;

    move-result-object v0

    invoke-virtual {v0, p0, p2}, Lcom/github/javaparser/ast/expr/SimpleName;->accept(Lcom/github/javaparser/ast/visitor/VoidVisitor;Ljava/lang/Object;)V

    .line 300
    iget-object v0, p0, Lcom/github/javaparser/ast/visitor/NodeFinderVisitor;->selectedNode:Lcom/github/javaparser/ast/Node;

    if-eqz v0, :cond_2

    return-void

    .line 301
    :cond_2
    invoke-virtual {p1}, Lcom/github/javaparser/ast/body/CallableDeclaration;->getParameters()Lcom/github/javaparser/ast/NodeList;

    move-result-object v0

    invoke-virtual {v0, p0, p2}, Lcom/github/javaparser/ast/NodeList;->accept(Lcom/github/javaparser/ast/visitor/VoidVisitor;Ljava/lang/Object;)V

    .line 302
    iget-object v0, p0, Lcom/github/javaparser/ast/visitor/NodeFinderVisitor;->selectedNode:Lcom/github/javaparser/ast/Node;

    if-eqz v0, :cond_3

    return-void

    .line 303
    :cond_3
    invoke-virtual {p1}, Lcom/github/javaparser/ast/body/CallableDeclaration;->getReceiverParameter()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Optional;->isPresent()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 304
    invoke-virtual {p1}, Lcom/github/javaparser/ast/body/CallableDeclaration;->getReceiverParameter()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/github/javaparser/ast/body/ReceiverParameter;

    invoke-virtual {v0, p0, p2}, Lcom/github/javaparser/ast/body/ReceiverParameter;->accept(Lcom/github/javaparser/ast/visitor/VoidVisitor;Ljava/lang/Object;)V

    .line 305
    iget-object v0, p0, Lcom/github/javaparser/ast/visitor/NodeFinderVisitor;->selectedNode:Lcom/github/javaparser/ast/Node;

    if-eqz v0, :cond_4

    return-void

    .line 306
    :cond_4
    invoke-virtual {p1}, Lcom/github/javaparser/ast/body/CallableDeclaration;->getThrownExceptions()Lcom/github/javaparser/ast/NodeList;

    move-result-object v0

    invoke-virtual {v0, p0, p2}, Lcom/github/javaparser/ast/NodeList;->accept(Lcom/github/javaparser/ast/visitor/VoidVisitor;Ljava/lang/Object;)V

    .line 307
    iget-object v0, p0, Lcom/github/javaparser/ast/visitor/NodeFinderVisitor;->selectedNode:Lcom/github/javaparser/ast/Node;

    if-eqz v0, :cond_5

    return-void

    .line 308
    :cond_5
    invoke-virtual {p1}, Lcom/github/javaparser/ast/body/CallableDeclaration;->getTypeParameters()Lcom/github/javaparser/ast/NodeList;

    move-result-object v0

    invoke-virtual {v0, p0, p2}, Lcom/github/javaparser/ast/NodeList;->accept(Lcom/github/javaparser/ast/visitor/VoidVisitor;Ljava/lang/Object;)V

    .line 309
    iget-object v0, p0, Lcom/github/javaparser/ast/visitor/NodeFinderVisitor;->selectedNode:Lcom/github/javaparser/ast/Node;

    if-eqz v0, :cond_6

    return-void

    .line 310
    :cond_6
    invoke-virtual {p1}, Lcom/github/javaparser/ast/body/BodyDeclaration;->getAnnotations()Lcom/github/javaparser/ast/NodeList;

    move-result-object v0

    invoke-virtual {v0, p0, p2}, Lcom/github/javaparser/ast/NodeList;->accept(Lcom/github/javaparser/ast/visitor/VoidVisitor;Ljava/lang/Object;)V

    .line 311
    iget-object v0, p0, Lcom/github/javaparser/ast/visitor/NodeFinderVisitor;->selectedNode:Lcom/github/javaparser/ast/Node;

    if-eqz v0, :cond_7

    return-void

    .line 312
    :cond_7
    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getComment()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Optional;->isPresent()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 313
    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getComment()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/github/javaparser/ast/comments/Comment;

    invoke-interface {v0, p0, p2}, Lcom/github/javaparser/ast/visitor/Visitable;->accept(Lcom/github/javaparser/ast/visitor/VoidVisitor;Ljava/lang/Object;)V

    .line 314
    iget-object v0, p0, Lcom/github/javaparser/ast/visitor/NodeFinderVisitor;->selectedNode:Lcom/github/javaparser/ast/Node;

    if-eqz v0, :cond_8

    return-void

    .line 315
    :cond_8
    sget-object v0, Lcom/github/javaparser/ast/visitor/NodeFinderVisitor;->fn:Ljava/util/function/BiFunction;

    invoke-interface {v0, p1, p2}, Ljava/util/function/BiFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_9

    .line 316
    iput-object p1, p0, Lcom/github/javaparser/ast/visitor/NodeFinderVisitor;->selectedNode:Lcom/github/javaparser/ast/Node;

    :cond_9
    return-void
.end method

.method public bridge synthetic visit(Lcom/github/javaparser/ast/body/ConstructorDeclaration;Ljava/lang/Object;)V
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
    check-cast p2, Lcom/github/javaparser/Range;

    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/NodeFinderVisitor;->visit(Lcom/github/javaparser/ast/body/ConstructorDeclaration;Lcom/github/javaparser/Range;)V

    return-void
.end method

.method public visit(Lcom/github/javaparser/ast/body/EnumConstantDeclaration;Lcom/github/javaparser/Range;)V
    .locals 1
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

    .line 351
    invoke-virtual {p1}, Lcom/github/javaparser/ast/body/EnumConstantDeclaration;->getArguments()Lcom/github/javaparser/ast/NodeList;

    move-result-object v0

    invoke-virtual {v0, p0, p2}, Lcom/github/javaparser/ast/NodeList;->accept(Lcom/github/javaparser/ast/visitor/VoidVisitor;Ljava/lang/Object;)V

    .line 352
    iget-object v0, p0, Lcom/github/javaparser/ast/visitor/NodeFinderVisitor;->selectedNode:Lcom/github/javaparser/ast/Node;

    if-eqz v0, :cond_0

    return-void

    .line 353
    :cond_0
    invoke-virtual {p1}, Lcom/github/javaparser/ast/body/EnumConstantDeclaration;->getClassBody()Lcom/github/javaparser/ast/NodeList;

    move-result-object v0

    invoke-virtual {v0, p0, p2}, Lcom/github/javaparser/ast/NodeList;->accept(Lcom/github/javaparser/ast/visitor/VoidVisitor;Ljava/lang/Object;)V

    .line 354
    iget-object v0, p0, Lcom/github/javaparser/ast/visitor/NodeFinderVisitor;->selectedNode:Lcom/github/javaparser/ast/Node;

    if-eqz v0, :cond_1

    return-void

    .line 355
    :cond_1
    invoke-virtual {p1}, Lcom/github/javaparser/ast/body/EnumConstantDeclaration;->getName()Lcom/github/javaparser/ast/expr/SimpleName;

    move-result-object v0

    invoke-virtual {v0, p0, p2}, Lcom/github/javaparser/ast/expr/SimpleName;->accept(Lcom/github/javaparser/ast/visitor/VoidVisitor;Ljava/lang/Object;)V

    .line 356
    iget-object v0, p0, Lcom/github/javaparser/ast/visitor/NodeFinderVisitor;->selectedNode:Lcom/github/javaparser/ast/Node;

    if-eqz v0, :cond_2

    return-void

    .line 357
    :cond_2
    invoke-virtual {p1}, Lcom/github/javaparser/ast/body/BodyDeclaration;->getAnnotations()Lcom/github/javaparser/ast/NodeList;

    move-result-object v0

    invoke-virtual {v0, p0, p2}, Lcom/github/javaparser/ast/NodeList;->accept(Lcom/github/javaparser/ast/visitor/VoidVisitor;Ljava/lang/Object;)V

    .line 358
    iget-object v0, p0, Lcom/github/javaparser/ast/visitor/NodeFinderVisitor;->selectedNode:Lcom/github/javaparser/ast/Node;

    if-eqz v0, :cond_3

    return-void

    .line 359
    :cond_3
    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getComment()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Optional;->isPresent()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 360
    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getComment()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/github/javaparser/ast/comments/Comment;

    invoke-interface {v0, p0, p2}, Lcom/github/javaparser/ast/visitor/Visitable;->accept(Lcom/github/javaparser/ast/visitor/VoidVisitor;Ljava/lang/Object;)V

    .line 361
    iget-object v0, p0, Lcom/github/javaparser/ast/visitor/NodeFinderVisitor;->selectedNode:Lcom/github/javaparser/ast/Node;

    if-eqz v0, :cond_4

    return-void

    .line 362
    :cond_4
    sget-object v0, Lcom/github/javaparser/ast/visitor/NodeFinderVisitor;->fn:Ljava/util/function/BiFunction;

    invoke-interface {v0, p1, p2}, Ljava/util/function/BiFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_5

    .line 363
    iput-object p1, p0, Lcom/github/javaparser/ast/visitor/NodeFinderVisitor;->selectedNode:Lcom/github/javaparser/ast/Node;

    :cond_5
    return-void
.end method

.method public bridge synthetic visit(Lcom/github/javaparser/ast/body/EnumConstantDeclaration;Ljava/lang/Object;)V
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
    check-cast p2, Lcom/github/javaparser/Range;

    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/NodeFinderVisitor;->visit(Lcom/github/javaparser/ast/body/EnumConstantDeclaration;Lcom/github/javaparser/Range;)V

    return-void
.end method

.method public visit(Lcom/github/javaparser/ast/body/EnumDeclaration;Lcom/github/javaparser/Range;)V
    .locals 1
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

    .line 364
    invoke-virtual {p1}, Lcom/github/javaparser/ast/body/EnumDeclaration;->getEntries()Lcom/github/javaparser/ast/NodeList;

    move-result-object v0

    invoke-virtual {v0, p0, p2}, Lcom/github/javaparser/ast/NodeList;->accept(Lcom/github/javaparser/ast/visitor/VoidVisitor;Ljava/lang/Object;)V

    .line 365
    iget-object v0, p0, Lcom/github/javaparser/ast/visitor/NodeFinderVisitor;->selectedNode:Lcom/github/javaparser/ast/Node;

    if-eqz v0, :cond_0

    return-void

    .line 366
    :cond_0
    invoke-virtual {p1}, Lcom/github/javaparser/ast/body/EnumDeclaration;->getImplementedTypes()Lcom/github/javaparser/ast/NodeList;

    move-result-object v0

    invoke-virtual {v0, p0, p2}, Lcom/github/javaparser/ast/NodeList;->accept(Lcom/github/javaparser/ast/visitor/VoidVisitor;Ljava/lang/Object;)V

    .line 367
    iget-object v0, p0, Lcom/github/javaparser/ast/visitor/NodeFinderVisitor;->selectedNode:Lcom/github/javaparser/ast/Node;

    if-eqz v0, :cond_1

    return-void

    .line 368
    :cond_1
    invoke-virtual {p1}, Lcom/github/javaparser/ast/body/TypeDeclaration;->getMembers()Lcom/github/javaparser/ast/NodeList;

    move-result-object v0

    invoke-virtual {v0, p0, p2}, Lcom/github/javaparser/ast/NodeList;->accept(Lcom/github/javaparser/ast/visitor/VoidVisitor;Ljava/lang/Object;)V

    .line 369
    iget-object v0, p0, Lcom/github/javaparser/ast/visitor/NodeFinderVisitor;->selectedNode:Lcom/github/javaparser/ast/Node;

    if-eqz v0, :cond_2

    return-void

    .line 370
    :cond_2
    invoke-virtual {p1}, Lcom/github/javaparser/ast/body/TypeDeclaration;->getModifiers()Lcom/github/javaparser/ast/NodeList;

    move-result-object v0

    invoke-virtual {v0, p0, p2}, Lcom/github/javaparser/ast/NodeList;->accept(Lcom/github/javaparser/ast/visitor/VoidVisitor;Ljava/lang/Object;)V

    .line 371
    iget-object v0, p0, Lcom/github/javaparser/ast/visitor/NodeFinderVisitor;->selectedNode:Lcom/github/javaparser/ast/Node;

    if-eqz v0, :cond_3

    return-void

    .line 372
    :cond_3
    invoke-virtual {p1}, Lcom/github/javaparser/ast/body/TypeDeclaration;->getName()Lcom/github/javaparser/ast/expr/SimpleName;

    move-result-object v0

    invoke-virtual {v0, p0, p2}, Lcom/github/javaparser/ast/expr/SimpleName;->accept(Lcom/github/javaparser/ast/visitor/VoidVisitor;Ljava/lang/Object;)V

    .line 373
    iget-object v0, p0, Lcom/github/javaparser/ast/visitor/NodeFinderVisitor;->selectedNode:Lcom/github/javaparser/ast/Node;

    if-eqz v0, :cond_4

    return-void

    .line 374
    :cond_4
    invoke-virtual {p1}, Lcom/github/javaparser/ast/body/BodyDeclaration;->getAnnotations()Lcom/github/javaparser/ast/NodeList;

    move-result-object v0

    invoke-virtual {v0, p0, p2}, Lcom/github/javaparser/ast/NodeList;->accept(Lcom/github/javaparser/ast/visitor/VoidVisitor;Ljava/lang/Object;)V

    .line 375
    iget-object v0, p0, Lcom/github/javaparser/ast/visitor/NodeFinderVisitor;->selectedNode:Lcom/github/javaparser/ast/Node;

    if-eqz v0, :cond_5

    return-void

    .line 376
    :cond_5
    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getComment()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Optional;->isPresent()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 377
    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getComment()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/github/javaparser/ast/comments/Comment;

    invoke-interface {v0, p0, p2}, Lcom/github/javaparser/ast/visitor/Visitable;->accept(Lcom/github/javaparser/ast/visitor/VoidVisitor;Ljava/lang/Object;)V

    .line 378
    iget-object v0, p0, Lcom/github/javaparser/ast/visitor/NodeFinderVisitor;->selectedNode:Lcom/github/javaparser/ast/Node;

    if-eqz v0, :cond_6

    return-void

    .line 379
    :cond_6
    sget-object v0, Lcom/github/javaparser/ast/visitor/NodeFinderVisitor;->fn:Ljava/util/function/BiFunction;

    invoke-interface {v0, p1, p2}, Ljava/util/function/BiFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_7

    .line 380
    iput-object p1, p0, Lcom/github/javaparser/ast/visitor/NodeFinderVisitor;->selectedNode:Lcom/github/javaparser/ast/Node;

    :cond_7
    return-void
.end method

.method public bridge synthetic visit(Lcom/github/javaparser/ast/body/EnumDeclaration;Ljava/lang/Object;)V
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
    check-cast p2, Lcom/github/javaparser/Range;

    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/NodeFinderVisitor;->visit(Lcom/github/javaparser/ast/body/EnumDeclaration;Lcom/github/javaparser/Range;)V

    return-void
.end method

.method public visit(Lcom/github/javaparser/ast/body/FieldDeclaration;Lcom/github/javaparser/Range;)V
    .locals 1
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

    .line 413
    invoke-virtual {p1}, Lcom/github/javaparser/ast/body/FieldDeclaration;->getModifiers()Lcom/github/javaparser/ast/NodeList;

    move-result-object v0

    invoke-virtual {v0, p0, p2}, Lcom/github/javaparser/ast/NodeList;->accept(Lcom/github/javaparser/ast/visitor/VoidVisitor;Ljava/lang/Object;)V

    .line 414
    iget-object v0, p0, Lcom/github/javaparser/ast/visitor/NodeFinderVisitor;->selectedNode:Lcom/github/javaparser/ast/Node;

    if-eqz v0, :cond_0

    return-void

    .line 415
    :cond_0
    invoke-virtual {p1}, Lcom/github/javaparser/ast/body/FieldDeclaration;->getVariables()Lcom/github/javaparser/ast/NodeList;

    move-result-object v0

    invoke-virtual {v0, p0, p2}, Lcom/github/javaparser/ast/NodeList;->accept(Lcom/github/javaparser/ast/visitor/VoidVisitor;Ljava/lang/Object;)V

    .line 416
    iget-object v0, p0, Lcom/github/javaparser/ast/visitor/NodeFinderVisitor;->selectedNode:Lcom/github/javaparser/ast/Node;

    if-eqz v0, :cond_1

    return-void

    .line 417
    :cond_1
    invoke-virtual {p1}, Lcom/github/javaparser/ast/body/BodyDeclaration;->getAnnotations()Lcom/github/javaparser/ast/NodeList;

    move-result-object v0

    invoke-virtual {v0, p0, p2}, Lcom/github/javaparser/ast/NodeList;->accept(Lcom/github/javaparser/ast/visitor/VoidVisitor;Ljava/lang/Object;)V

    .line 418
    iget-object v0, p0, Lcom/github/javaparser/ast/visitor/NodeFinderVisitor;->selectedNode:Lcom/github/javaparser/ast/Node;

    if-eqz v0, :cond_2

    return-void

    .line 419
    :cond_2
    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getComment()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Optional;->isPresent()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 420
    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getComment()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/github/javaparser/ast/comments/Comment;

    invoke-interface {v0, p0, p2}, Lcom/github/javaparser/ast/visitor/Visitable;->accept(Lcom/github/javaparser/ast/visitor/VoidVisitor;Ljava/lang/Object;)V

    .line 421
    iget-object v0, p0, Lcom/github/javaparser/ast/visitor/NodeFinderVisitor;->selectedNode:Lcom/github/javaparser/ast/Node;

    if-eqz v0, :cond_3

    return-void

    .line 422
    :cond_3
    sget-object v0, Lcom/github/javaparser/ast/visitor/NodeFinderVisitor;->fn:Ljava/util/function/BiFunction;

    invoke-interface {v0, p1, p2}, Ljava/util/function/BiFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_4

    .line 423
    iput-object p1, p0, Lcom/github/javaparser/ast/visitor/NodeFinderVisitor;->selectedNode:Lcom/github/javaparser/ast/Node;

    :cond_4
    return-void
.end method

.method public bridge synthetic visit(Lcom/github/javaparser/ast/body/FieldDeclaration;Ljava/lang/Object;)V
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
    check-cast p2, Lcom/github/javaparser/Range;

    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/NodeFinderVisitor;->visit(Lcom/github/javaparser/ast/body/FieldDeclaration;Lcom/github/javaparser/Range;)V

    return-void
.end method

.method public visit(Lcom/github/javaparser/ast/body/InitializerDeclaration;Lcom/github/javaparser/Range;)V
    .locals 1
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

    .line 461
    invoke-virtual {p1}, Lcom/github/javaparser/ast/body/InitializerDeclaration;->getBody()Lcom/github/javaparser/ast/stmt/BlockStmt;

    move-result-object v0

    invoke-virtual {v0, p0, p2}, Lcom/github/javaparser/ast/stmt/BlockStmt;->accept(Lcom/github/javaparser/ast/visitor/VoidVisitor;Ljava/lang/Object;)V

    .line 462
    iget-object v0, p0, Lcom/github/javaparser/ast/visitor/NodeFinderVisitor;->selectedNode:Lcom/github/javaparser/ast/Node;

    if-eqz v0, :cond_0

    return-void

    .line 463
    :cond_0
    invoke-virtual {p1}, Lcom/github/javaparser/ast/body/BodyDeclaration;->getAnnotations()Lcom/github/javaparser/ast/NodeList;

    move-result-object v0

    invoke-virtual {v0, p0, p2}, Lcom/github/javaparser/ast/NodeList;->accept(Lcom/github/javaparser/ast/visitor/VoidVisitor;Ljava/lang/Object;)V

    .line 464
    iget-object v0, p0, Lcom/github/javaparser/ast/visitor/NodeFinderVisitor;->selectedNode:Lcom/github/javaparser/ast/Node;

    if-eqz v0, :cond_1

    return-void

    .line 465
    :cond_1
    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getComment()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Optional;->isPresent()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 466
    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getComment()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/github/javaparser/ast/comments/Comment;

    invoke-interface {v0, p0, p2}, Lcom/github/javaparser/ast/visitor/Visitable;->accept(Lcom/github/javaparser/ast/visitor/VoidVisitor;Ljava/lang/Object;)V

    .line 467
    iget-object v0, p0, Lcom/github/javaparser/ast/visitor/NodeFinderVisitor;->selectedNode:Lcom/github/javaparser/ast/Node;

    if-eqz v0, :cond_2

    return-void

    .line 468
    :cond_2
    sget-object v0, Lcom/github/javaparser/ast/visitor/NodeFinderVisitor;->fn:Ljava/util/function/BiFunction;

    invoke-interface {v0, p1, p2}, Ljava/util/function/BiFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_3

    .line 469
    iput-object p1, p0, Lcom/github/javaparser/ast/visitor/NodeFinderVisitor;->selectedNode:Lcom/github/javaparser/ast/Node;

    :cond_3
    return-void
.end method

.method public bridge synthetic visit(Lcom/github/javaparser/ast/body/InitializerDeclaration;Ljava/lang/Object;)V
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
    check-cast p2, Lcom/github/javaparser/Range;

    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/NodeFinderVisitor;->visit(Lcom/github/javaparser/ast/body/InitializerDeclaration;Lcom/github/javaparser/Range;)V

    return-void
.end method

.method public visit(Lcom/github/javaparser/ast/body/MethodDeclaration;Lcom/github/javaparser/Range;)V
    .locals 1
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

    .line 534
    invoke-virtual {p1}, Lcom/github/javaparser/ast/body/MethodDeclaration;->getBody()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Optional;->isPresent()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 535
    invoke-virtual {p1}, Lcom/github/javaparser/ast/body/MethodDeclaration;->getBody()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/github/javaparser/ast/stmt/BlockStmt;

    invoke-virtual {v0, p0, p2}, Lcom/github/javaparser/ast/stmt/BlockStmt;->accept(Lcom/github/javaparser/ast/visitor/VoidVisitor;Ljava/lang/Object;)V

    .line 536
    iget-object v0, p0, Lcom/github/javaparser/ast/visitor/NodeFinderVisitor;->selectedNode:Lcom/github/javaparser/ast/Node;

    if-eqz v0, :cond_0

    return-void

    .line 537
    :cond_0
    invoke-virtual {p1}, Lcom/github/javaparser/ast/body/MethodDeclaration;->getType()Lcom/github/javaparser/ast/type/Type;

    move-result-object v0

    invoke-interface {v0, p0, p2}, Lcom/github/javaparser/ast/visitor/Visitable;->accept(Lcom/github/javaparser/ast/visitor/VoidVisitor;Ljava/lang/Object;)V

    .line 538
    iget-object v0, p0, Lcom/github/javaparser/ast/visitor/NodeFinderVisitor;->selectedNode:Lcom/github/javaparser/ast/Node;

    if-eqz v0, :cond_1

    return-void

    .line 539
    :cond_1
    invoke-virtual {p1}, Lcom/github/javaparser/ast/body/CallableDeclaration;->getModifiers()Lcom/github/javaparser/ast/NodeList;

    move-result-object v0

    invoke-virtual {v0, p0, p2}, Lcom/github/javaparser/ast/NodeList;->accept(Lcom/github/javaparser/ast/visitor/VoidVisitor;Ljava/lang/Object;)V

    .line 540
    iget-object v0, p0, Lcom/github/javaparser/ast/visitor/NodeFinderVisitor;->selectedNode:Lcom/github/javaparser/ast/Node;

    if-eqz v0, :cond_2

    return-void

    .line 541
    :cond_2
    invoke-virtual {p1}, Lcom/github/javaparser/ast/body/CallableDeclaration;->getName()Lcom/github/javaparser/ast/expr/SimpleName;

    move-result-object v0

    invoke-virtual {v0, p0, p2}, Lcom/github/javaparser/ast/expr/SimpleName;->accept(Lcom/github/javaparser/ast/visitor/VoidVisitor;Ljava/lang/Object;)V

    .line 542
    iget-object v0, p0, Lcom/github/javaparser/ast/visitor/NodeFinderVisitor;->selectedNode:Lcom/github/javaparser/ast/Node;

    if-eqz v0, :cond_3

    return-void

    .line 543
    :cond_3
    invoke-virtual {p1}, Lcom/github/javaparser/ast/body/CallableDeclaration;->getParameters()Lcom/github/javaparser/ast/NodeList;

    move-result-object v0

    invoke-virtual {v0, p0, p2}, Lcom/github/javaparser/ast/NodeList;->accept(Lcom/github/javaparser/ast/visitor/VoidVisitor;Ljava/lang/Object;)V

    .line 544
    iget-object v0, p0, Lcom/github/javaparser/ast/visitor/NodeFinderVisitor;->selectedNode:Lcom/github/javaparser/ast/Node;

    if-eqz v0, :cond_4

    return-void

    .line 545
    :cond_4
    invoke-virtual {p1}, Lcom/github/javaparser/ast/body/CallableDeclaration;->getReceiverParameter()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Optional;->isPresent()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 546
    invoke-virtual {p1}, Lcom/github/javaparser/ast/body/CallableDeclaration;->getReceiverParameter()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/github/javaparser/ast/body/ReceiverParameter;

    invoke-virtual {v0, p0, p2}, Lcom/github/javaparser/ast/body/ReceiverParameter;->accept(Lcom/github/javaparser/ast/visitor/VoidVisitor;Ljava/lang/Object;)V

    .line 547
    iget-object v0, p0, Lcom/github/javaparser/ast/visitor/NodeFinderVisitor;->selectedNode:Lcom/github/javaparser/ast/Node;

    if-eqz v0, :cond_5

    return-void

    .line 548
    :cond_5
    invoke-virtual {p1}, Lcom/github/javaparser/ast/body/CallableDeclaration;->getThrownExceptions()Lcom/github/javaparser/ast/NodeList;

    move-result-object v0

    invoke-virtual {v0, p0, p2}, Lcom/github/javaparser/ast/NodeList;->accept(Lcom/github/javaparser/ast/visitor/VoidVisitor;Ljava/lang/Object;)V

    .line 549
    iget-object v0, p0, Lcom/github/javaparser/ast/visitor/NodeFinderVisitor;->selectedNode:Lcom/github/javaparser/ast/Node;

    if-eqz v0, :cond_6

    return-void

    .line 550
    :cond_6
    invoke-virtual {p1}, Lcom/github/javaparser/ast/body/CallableDeclaration;->getTypeParameters()Lcom/github/javaparser/ast/NodeList;

    move-result-object v0

    invoke-virtual {v0, p0, p2}, Lcom/github/javaparser/ast/NodeList;->accept(Lcom/github/javaparser/ast/visitor/VoidVisitor;Ljava/lang/Object;)V

    .line 551
    iget-object v0, p0, Lcom/github/javaparser/ast/visitor/NodeFinderVisitor;->selectedNode:Lcom/github/javaparser/ast/Node;

    if-eqz v0, :cond_7

    return-void

    .line 552
    :cond_7
    invoke-virtual {p1}, Lcom/github/javaparser/ast/body/BodyDeclaration;->getAnnotations()Lcom/github/javaparser/ast/NodeList;

    move-result-object v0

    invoke-virtual {v0, p0, p2}, Lcom/github/javaparser/ast/NodeList;->accept(Lcom/github/javaparser/ast/visitor/VoidVisitor;Ljava/lang/Object;)V

    .line 553
    iget-object v0, p0, Lcom/github/javaparser/ast/visitor/NodeFinderVisitor;->selectedNode:Lcom/github/javaparser/ast/Node;

    if-eqz v0, :cond_8

    return-void

    .line 554
    :cond_8
    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getComment()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Optional;->isPresent()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 555
    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getComment()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/github/javaparser/ast/comments/Comment;

    invoke-interface {v0, p0, p2}, Lcom/github/javaparser/ast/visitor/Visitable;->accept(Lcom/github/javaparser/ast/visitor/VoidVisitor;Ljava/lang/Object;)V

    .line 556
    iget-object v0, p0, Lcom/github/javaparser/ast/visitor/NodeFinderVisitor;->selectedNode:Lcom/github/javaparser/ast/Node;

    if-eqz v0, :cond_9

    return-void

    .line 557
    :cond_9
    sget-object v0, Lcom/github/javaparser/ast/visitor/NodeFinderVisitor;->fn:Ljava/util/function/BiFunction;

    invoke-interface {v0, p1, p2}, Ljava/util/function/BiFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_a

    .line 558
    iput-object p1, p0, Lcom/github/javaparser/ast/visitor/NodeFinderVisitor;->selectedNode:Lcom/github/javaparser/ast/Node;

    :cond_a
    return-void
.end method

.method public bridge synthetic visit(Lcom/github/javaparser/ast/body/MethodDeclaration;Ljava/lang/Object;)V
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
    check-cast p2, Lcom/github/javaparser/Range;

    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/NodeFinderVisitor;->visit(Lcom/github/javaparser/ast/body/MethodDeclaration;Lcom/github/javaparser/Range;)V

    return-void
.end method

.method public visit(Lcom/github/javaparser/ast/body/Parameter;Lcom/github/javaparser/Range;)V
    .locals 1
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

    .line 607
    invoke-virtual {p1}, Lcom/github/javaparser/ast/body/Parameter;->getAnnotations()Lcom/github/javaparser/ast/NodeList;

    move-result-object v0

    invoke-virtual {v0, p0, p2}, Lcom/github/javaparser/ast/NodeList;->accept(Lcom/github/javaparser/ast/visitor/VoidVisitor;Ljava/lang/Object;)V

    .line 608
    iget-object v0, p0, Lcom/github/javaparser/ast/visitor/NodeFinderVisitor;->selectedNode:Lcom/github/javaparser/ast/Node;

    if-eqz v0, :cond_0

    return-void

    .line 609
    :cond_0
    invoke-virtual {p1}, Lcom/github/javaparser/ast/body/Parameter;->getModifiers()Lcom/github/javaparser/ast/NodeList;

    move-result-object v0

    invoke-virtual {v0, p0, p2}, Lcom/github/javaparser/ast/NodeList;->accept(Lcom/github/javaparser/ast/visitor/VoidVisitor;Ljava/lang/Object;)V

    .line 610
    iget-object v0, p0, Lcom/github/javaparser/ast/visitor/NodeFinderVisitor;->selectedNode:Lcom/github/javaparser/ast/Node;

    if-eqz v0, :cond_1

    return-void

    .line 611
    :cond_1
    invoke-virtual {p1}, Lcom/github/javaparser/ast/body/Parameter;->getName()Lcom/github/javaparser/ast/expr/SimpleName;

    move-result-object v0

    invoke-virtual {v0, p0, p2}, Lcom/github/javaparser/ast/expr/SimpleName;->accept(Lcom/github/javaparser/ast/visitor/VoidVisitor;Ljava/lang/Object;)V

    .line 612
    iget-object v0, p0, Lcom/github/javaparser/ast/visitor/NodeFinderVisitor;->selectedNode:Lcom/github/javaparser/ast/Node;

    if-eqz v0, :cond_2

    return-void

    .line 613
    :cond_2
    invoke-virtual {p1}, Lcom/github/javaparser/ast/body/Parameter;->getType()Lcom/github/javaparser/ast/type/Type;

    move-result-object v0

    invoke-interface {v0, p0, p2}, Lcom/github/javaparser/ast/visitor/Visitable;->accept(Lcom/github/javaparser/ast/visitor/VoidVisitor;Ljava/lang/Object;)V

    .line 614
    iget-object v0, p0, Lcom/github/javaparser/ast/visitor/NodeFinderVisitor;->selectedNode:Lcom/github/javaparser/ast/Node;

    if-eqz v0, :cond_3

    return-void

    .line 615
    :cond_3
    invoke-virtual {p1}, Lcom/github/javaparser/ast/body/Parameter;->getVarArgsAnnotations()Lcom/github/javaparser/ast/NodeList;

    move-result-object v0

    invoke-virtual {v0, p0, p2}, Lcom/github/javaparser/ast/NodeList;->accept(Lcom/github/javaparser/ast/visitor/VoidVisitor;Ljava/lang/Object;)V

    .line 616
    iget-object v0, p0, Lcom/github/javaparser/ast/visitor/NodeFinderVisitor;->selectedNode:Lcom/github/javaparser/ast/Node;

    if-eqz v0, :cond_4

    return-void

    .line 617
    :cond_4
    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getComment()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Optional;->isPresent()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 618
    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getComment()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/github/javaparser/ast/comments/Comment;

    invoke-interface {v0, p0, p2}, Lcom/github/javaparser/ast/visitor/Visitable;->accept(Lcom/github/javaparser/ast/visitor/VoidVisitor;Ljava/lang/Object;)V

    .line 619
    iget-object v0, p0, Lcom/github/javaparser/ast/visitor/NodeFinderVisitor;->selectedNode:Lcom/github/javaparser/ast/Node;

    if-eqz v0, :cond_5

    return-void

    .line 620
    :cond_5
    sget-object v0, Lcom/github/javaparser/ast/visitor/NodeFinderVisitor;->fn:Ljava/util/function/BiFunction;

    invoke-interface {v0, p1, p2}, Ljava/util/function/BiFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_6

    .line 621
    iput-object p1, p0, Lcom/github/javaparser/ast/visitor/NodeFinderVisitor;->selectedNode:Lcom/github/javaparser/ast/Node;

    :cond_6
    return-void
.end method

.method public bridge synthetic visit(Lcom/github/javaparser/ast/body/Parameter;Ljava/lang/Object;)V
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
    check-cast p2, Lcom/github/javaparser/Range;

    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/NodeFinderVisitor;->visit(Lcom/github/javaparser/ast/body/Parameter;Lcom/github/javaparser/Range;)V

    return-void
.end method

.method public visit(Lcom/github/javaparser/ast/body/ReceiverParameter;Lcom/github/javaparser/Range;)V
    .locals 1
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

    .line 963
    invoke-virtual {p1}, Lcom/github/javaparser/ast/body/ReceiverParameter;->getAnnotations()Lcom/github/javaparser/ast/NodeList;

    move-result-object v0

    invoke-virtual {v0, p0, p2}, Lcom/github/javaparser/ast/NodeList;->accept(Lcom/github/javaparser/ast/visitor/VoidVisitor;Ljava/lang/Object;)V

    .line 964
    iget-object v0, p0, Lcom/github/javaparser/ast/visitor/NodeFinderVisitor;->selectedNode:Lcom/github/javaparser/ast/Node;

    if-eqz v0, :cond_0

    return-void

    .line 965
    :cond_0
    invoke-virtual {p1}, Lcom/github/javaparser/ast/body/ReceiverParameter;->getName()Lcom/github/javaparser/ast/expr/Name;

    move-result-object v0

    invoke-virtual {v0, p0, p2}, Lcom/github/javaparser/ast/expr/Name;->accept(Lcom/github/javaparser/ast/visitor/VoidVisitor;Ljava/lang/Object;)V

    .line 966
    iget-object v0, p0, Lcom/github/javaparser/ast/visitor/NodeFinderVisitor;->selectedNode:Lcom/github/javaparser/ast/Node;

    if-eqz v0, :cond_1

    return-void

    .line 967
    :cond_1
    invoke-virtual {p1}, Lcom/github/javaparser/ast/body/ReceiverParameter;->getType()Lcom/github/javaparser/ast/type/Type;

    move-result-object v0

    invoke-interface {v0, p0, p2}, Lcom/github/javaparser/ast/visitor/Visitable;->accept(Lcom/github/javaparser/ast/visitor/VoidVisitor;Ljava/lang/Object;)V

    .line 968
    iget-object v0, p0, Lcom/github/javaparser/ast/visitor/NodeFinderVisitor;->selectedNode:Lcom/github/javaparser/ast/Node;

    if-eqz v0, :cond_2

    return-void

    .line 969
    :cond_2
    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getComment()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Optional;->isPresent()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 970
    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getComment()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/github/javaparser/ast/comments/Comment;

    invoke-interface {v0, p0, p2}, Lcom/github/javaparser/ast/visitor/Visitable;->accept(Lcom/github/javaparser/ast/visitor/VoidVisitor;Ljava/lang/Object;)V

    .line 971
    iget-object v0, p0, Lcom/github/javaparser/ast/visitor/NodeFinderVisitor;->selectedNode:Lcom/github/javaparser/ast/Node;

    if-eqz v0, :cond_3

    return-void

    .line 972
    :cond_3
    sget-object v0, Lcom/github/javaparser/ast/visitor/NodeFinderVisitor;->fn:Ljava/util/function/BiFunction;

    invoke-interface {v0, p1, p2}, Ljava/util/function/BiFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_4

    .line 973
    iput-object p1, p0, Lcom/github/javaparser/ast/visitor/NodeFinderVisitor;->selectedNode:Lcom/github/javaparser/ast/Node;

    :cond_4
    return-void
.end method

.method public bridge synthetic visit(Lcom/github/javaparser/ast/body/ReceiverParameter;Ljava/lang/Object;)V
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
    check-cast p2, Lcom/github/javaparser/Range;

    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/NodeFinderVisitor;->visit(Lcom/github/javaparser/ast/body/ReceiverParameter;Lcom/github/javaparser/Range;)V

    return-void
.end method

.method public visit(Lcom/github/javaparser/ast/body/RecordDeclaration;Lcom/github/javaparser/Range;)V
    .locals 1
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

    .line 1018
    invoke-virtual {p1}, Lcom/github/javaparser/ast/body/RecordDeclaration;->getImplementedTypes()Lcom/github/javaparser/ast/NodeList;

    move-result-object v0

    invoke-virtual {v0, p0, p2}, Lcom/github/javaparser/ast/NodeList;->accept(Lcom/github/javaparser/ast/visitor/VoidVisitor;Ljava/lang/Object;)V

    .line 1019
    iget-object v0, p0, Lcom/github/javaparser/ast/visitor/NodeFinderVisitor;->selectedNode:Lcom/github/javaparser/ast/Node;

    if-eqz v0, :cond_0

    return-void

    .line 1020
    :cond_0
    invoke-virtual {p1}, Lcom/github/javaparser/ast/body/RecordDeclaration;->getParameters()Lcom/github/javaparser/ast/NodeList;

    move-result-object v0

    invoke-virtual {v0, p0, p2}, Lcom/github/javaparser/ast/NodeList;->accept(Lcom/github/javaparser/ast/visitor/VoidVisitor;Ljava/lang/Object;)V

    .line 1021
    iget-object v0, p0, Lcom/github/javaparser/ast/visitor/NodeFinderVisitor;->selectedNode:Lcom/github/javaparser/ast/Node;

    if-eqz v0, :cond_1

    return-void

    .line 1022
    :cond_1
    invoke-virtual {p1}, Lcom/github/javaparser/ast/body/RecordDeclaration;->getReceiverParameter()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Optional;->isPresent()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1023
    invoke-virtual {p1}, Lcom/github/javaparser/ast/body/RecordDeclaration;->getReceiverParameter()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/github/javaparser/ast/body/ReceiverParameter;

    invoke-virtual {v0, p0, p2}, Lcom/github/javaparser/ast/body/ReceiverParameter;->accept(Lcom/github/javaparser/ast/visitor/VoidVisitor;Ljava/lang/Object;)V

    .line 1024
    iget-object v0, p0, Lcom/github/javaparser/ast/visitor/NodeFinderVisitor;->selectedNode:Lcom/github/javaparser/ast/Node;

    if-eqz v0, :cond_2

    return-void

    .line 1025
    :cond_2
    invoke-virtual {p1}, Lcom/github/javaparser/ast/body/RecordDeclaration;->getTypeParameters()Lcom/github/javaparser/ast/NodeList;

    move-result-object v0

    invoke-virtual {v0, p0, p2}, Lcom/github/javaparser/ast/NodeList;->accept(Lcom/github/javaparser/ast/visitor/VoidVisitor;Ljava/lang/Object;)V

    .line 1026
    iget-object v0, p0, Lcom/github/javaparser/ast/visitor/NodeFinderVisitor;->selectedNode:Lcom/github/javaparser/ast/Node;

    if-eqz v0, :cond_3

    return-void

    .line 1027
    :cond_3
    invoke-virtual {p1}, Lcom/github/javaparser/ast/body/TypeDeclaration;->getMembers()Lcom/github/javaparser/ast/NodeList;

    move-result-object v0

    invoke-virtual {v0, p0, p2}, Lcom/github/javaparser/ast/NodeList;->accept(Lcom/github/javaparser/ast/visitor/VoidVisitor;Ljava/lang/Object;)V

    .line 1028
    iget-object v0, p0, Lcom/github/javaparser/ast/visitor/NodeFinderVisitor;->selectedNode:Lcom/github/javaparser/ast/Node;

    if-eqz v0, :cond_4

    return-void

    .line 1029
    :cond_4
    invoke-virtual {p1}, Lcom/github/javaparser/ast/body/TypeDeclaration;->getModifiers()Lcom/github/javaparser/ast/NodeList;

    move-result-object v0

    invoke-virtual {v0, p0, p2}, Lcom/github/javaparser/ast/NodeList;->accept(Lcom/github/javaparser/ast/visitor/VoidVisitor;Ljava/lang/Object;)V

    .line 1030
    iget-object v0, p0, Lcom/github/javaparser/ast/visitor/NodeFinderVisitor;->selectedNode:Lcom/github/javaparser/ast/Node;

    if-eqz v0, :cond_5

    return-void

    .line 1031
    :cond_5
    invoke-virtual {p1}, Lcom/github/javaparser/ast/body/TypeDeclaration;->getName()Lcom/github/javaparser/ast/expr/SimpleName;

    move-result-object v0

    invoke-virtual {v0, p0, p2}, Lcom/github/javaparser/ast/expr/SimpleName;->accept(Lcom/github/javaparser/ast/visitor/VoidVisitor;Ljava/lang/Object;)V

    .line 1032
    iget-object v0, p0, Lcom/github/javaparser/ast/visitor/NodeFinderVisitor;->selectedNode:Lcom/github/javaparser/ast/Node;

    if-eqz v0, :cond_6

    return-void

    .line 1033
    :cond_6
    invoke-virtual {p1}, Lcom/github/javaparser/ast/body/BodyDeclaration;->getAnnotations()Lcom/github/javaparser/ast/NodeList;

    move-result-object v0

    invoke-virtual {v0, p0, p2}, Lcom/github/javaparser/ast/NodeList;->accept(Lcom/github/javaparser/ast/visitor/VoidVisitor;Ljava/lang/Object;)V

    .line 1034
    iget-object v0, p0, Lcom/github/javaparser/ast/visitor/NodeFinderVisitor;->selectedNode:Lcom/github/javaparser/ast/Node;

    if-eqz v0, :cond_7

    return-void

    .line 1035
    :cond_7
    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getComment()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Optional;->isPresent()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 1036
    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getComment()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/github/javaparser/ast/comments/Comment;

    invoke-interface {v0, p0, p2}, Lcom/github/javaparser/ast/visitor/Visitable;->accept(Lcom/github/javaparser/ast/visitor/VoidVisitor;Ljava/lang/Object;)V

    .line 1037
    iget-object v0, p0, Lcom/github/javaparser/ast/visitor/NodeFinderVisitor;->selectedNode:Lcom/github/javaparser/ast/Node;

    if-eqz v0, :cond_8

    return-void

    .line 1038
    :cond_8
    sget-object v0, Lcom/github/javaparser/ast/visitor/NodeFinderVisitor;->fn:Ljava/util/function/BiFunction;

    invoke-interface {v0, p1, p2}, Ljava/util/function/BiFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_9

    .line 1039
    iput-object p1, p0, Lcom/github/javaparser/ast/visitor/NodeFinderVisitor;->selectedNode:Lcom/github/javaparser/ast/Node;

    :cond_9
    return-void
.end method

.method public bridge synthetic visit(Lcom/github/javaparser/ast/body/RecordDeclaration;Ljava/lang/Object;)V
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
    check-cast p2, Lcom/github/javaparser/Range;

    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/NodeFinderVisitor;->visit(Lcom/github/javaparser/ast/body/RecordDeclaration;Lcom/github/javaparser/Range;)V

    return-void
.end method

.method public visit(Lcom/github/javaparser/ast/body/VariableDeclarator;Lcom/github/javaparser/Range;)V
    .locals 1
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

    .line 818
    invoke-virtual {p1}, Lcom/github/javaparser/ast/body/VariableDeclarator;->getInitializer()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Optional;->isPresent()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 819
    invoke-virtual {p1}, Lcom/github/javaparser/ast/body/VariableDeclarator;->getInitializer()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/github/javaparser/ast/expr/Expression;

    invoke-interface {v0, p0, p2}, Lcom/github/javaparser/ast/visitor/Visitable;->accept(Lcom/github/javaparser/ast/visitor/VoidVisitor;Ljava/lang/Object;)V

    .line 820
    iget-object v0, p0, Lcom/github/javaparser/ast/visitor/NodeFinderVisitor;->selectedNode:Lcom/github/javaparser/ast/Node;

    if-eqz v0, :cond_0

    return-void

    .line 821
    :cond_0
    invoke-virtual {p1}, Lcom/github/javaparser/ast/body/VariableDeclarator;->getName()Lcom/github/javaparser/ast/expr/SimpleName;

    move-result-object v0

    invoke-virtual {v0, p0, p2}, Lcom/github/javaparser/ast/expr/SimpleName;->accept(Lcom/github/javaparser/ast/visitor/VoidVisitor;Ljava/lang/Object;)V

    .line 822
    iget-object v0, p0, Lcom/github/javaparser/ast/visitor/NodeFinderVisitor;->selectedNode:Lcom/github/javaparser/ast/Node;

    if-eqz v0, :cond_1

    return-void

    .line 823
    :cond_1
    invoke-virtual {p1}, Lcom/github/javaparser/ast/body/VariableDeclarator;->getType()Lcom/github/javaparser/ast/type/Type;

    move-result-object v0

    invoke-interface {v0, p0, p2}, Lcom/github/javaparser/ast/visitor/Visitable;->accept(Lcom/github/javaparser/ast/visitor/VoidVisitor;Ljava/lang/Object;)V

    .line 824
    iget-object v0, p0, Lcom/github/javaparser/ast/visitor/NodeFinderVisitor;->selectedNode:Lcom/github/javaparser/ast/Node;

    if-eqz v0, :cond_2

    return-void

    .line 825
    :cond_2
    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getComment()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Optional;->isPresent()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 826
    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getComment()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/github/javaparser/ast/comments/Comment;

    invoke-interface {v0, p0, p2}, Lcom/github/javaparser/ast/visitor/Visitable;->accept(Lcom/github/javaparser/ast/visitor/VoidVisitor;Ljava/lang/Object;)V

    .line 827
    iget-object v0, p0, Lcom/github/javaparser/ast/visitor/NodeFinderVisitor;->selectedNode:Lcom/github/javaparser/ast/Node;

    if-eqz v0, :cond_3

    return-void

    .line 828
    :cond_3
    sget-object v0, Lcom/github/javaparser/ast/visitor/NodeFinderVisitor;->fn:Ljava/util/function/BiFunction;

    invoke-interface {v0, p1, p2}, Ljava/util/function/BiFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_4

    .line 829
    iput-object p1, p0, Lcom/github/javaparser/ast/visitor/NodeFinderVisitor;->selectedNode:Lcom/github/javaparser/ast/Node;

    :cond_4
    return-void
.end method

.method public bridge synthetic visit(Lcom/github/javaparser/ast/body/VariableDeclarator;Ljava/lang/Object;)V
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
    check-cast p2, Lcom/github/javaparser/Range;

    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/NodeFinderVisitor;->visit(Lcom/github/javaparser/ast/body/VariableDeclarator;Lcom/github/javaparser/Range;)V

    return-void
.end method

.method public visit(Lcom/github/javaparser/ast/comments/BlockComment;Lcom/github/javaparser/Range;)V
    .locals 1
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

    .line 892
    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getComment()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Optional;->isPresent()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 893
    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getComment()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/github/javaparser/ast/comments/Comment;

    invoke-interface {v0, p0, p2}, Lcom/github/javaparser/ast/visitor/Visitable;->accept(Lcom/github/javaparser/ast/visitor/VoidVisitor;Ljava/lang/Object;)V

    .line 894
    iget-object v0, p0, Lcom/github/javaparser/ast/visitor/NodeFinderVisitor;->selectedNode:Lcom/github/javaparser/ast/Node;

    if-eqz v0, :cond_0

    return-void

    .line 895
    :cond_0
    sget-object v0, Lcom/github/javaparser/ast/visitor/NodeFinderVisitor;->fn:Ljava/util/function/BiFunction;

    invoke-interface {v0, p1, p2}, Ljava/util/function/BiFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_1

    .line 896
    iput-object p1, p0, Lcom/github/javaparser/ast/visitor/NodeFinderVisitor;->selectedNode:Lcom/github/javaparser/ast/Node;

    :cond_1
    return-void
.end method

.method public bridge synthetic visit(Lcom/github/javaparser/ast/comments/BlockComment;Ljava/lang/Object;)V
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
    check-cast p2, Lcom/github/javaparser/Range;

    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/NodeFinderVisitor;->visit(Lcom/github/javaparser/ast/comments/BlockComment;Lcom/github/javaparser/Range;)V

    return-void
.end method

.method public visit(Lcom/github/javaparser/ast/comments/JavadocComment;Lcom/github/javaparser/Range;)V
    .locals 1
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
    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getComment()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Optional;->isPresent()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 485
    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getComment()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/github/javaparser/ast/comments/Comment;

    invoke-interface {v0, p0, p2}, Lcom/github/javaparser/ast/visitor/Visitable;->accept(Lcom/github/javaparser/ast/visitor/VoidVisitor;Ljava/lang/Object;)V

    .line 486
    iget-object v0, p0, Lcom/github/javaparser/ast/visitor/NodeFinderVisitor;->selectedNode:Lcom/github/javaparser/ast/Node;

    if-eqz v0, :cond_0

    return-void

    .line 487
    :cond_0
    sget-object v0, Lcom/github/javaparser/ast/visitor/NodeFinderVisitor;->fn:Ljava/util/function/BiFunction;

    invoke-interface {v0, p1, p2}, Ljava/util/function/BiFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_1

    .line 488
    iput-object p1, p0, Lcom/github/javaparser/ast/visitor/NodeFinderVisitor;->selectedNode:Lcom/github/javaparser/ast/Node;

    :cond_1
    return-void
.end method

.method public bridge synthetic visit(Lcom/github/javaparser/ast/comments/JavadocComment;Ljava/lang/Object;)V
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
    check-cast p2, Lcom/github/javaparser/Range;

    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/NodeFinderVisitor;->visit(Lcom/github/javaparser/ast/comments/JavadocComment;Lcom/github/javaparser/Range;)V

    return-void
.end method

.method public visit(Lcom/github/javaparser/ast/comments/LineComment;Lcom/github/javaparser/Range;)V
    .locals 1
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

    .line 897
    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getComment()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Optional;->isPresent()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 898
    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getComment()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/github/javaparser/ast/comments/Comment;

    invoke-interface {v0, p0, p2}, Lcom/github/javaparser/ast/visitor/Visitable;->accept(Lcom/github/javaparser/ast/visitor/VoidVisitor;Ljava/lang/Object;)V

    .line 899
    iget-object v0, p0, Lcom/github/javaparser/ast/visitor/NodeFinderVisitor;->selectedNode:Lcom/github/javaparser/ast/Node;

    if-eqz v0, :cond_0

    return-void

    .line 900
    :cond_0
    sget-object v0, Lcom/github/javaparser/ast/visitor/NodeFinderVisitor;->fn:Ljava/util/function/BiFunction;

    invoke-interface {v0, p1, p2}, Ljava/util/function/BiFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_1

    .line 901
    iput-object p1, p0, Lcom/github/javaparser/ast/visitor/NodeFinderVisitor;->selectedNode:Lcom/github/javaparser/ast/Node;

    :cond_1
    return-void
.end method

.method public bridge synthetic visit(Lcom/github/javaparser/ast/comments/LineComment;Ljava/lang/Object;)V
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
    check-cast p2, Lcom/github/javaparser/Range;

    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/NodeFinderVisitor;->visit(Lcom/github/javaparser/ast/comments/LineComment;Lcom/github/javaparser/Range;)V

    return-void
.end method

.method public visit(Lcom/github/javaparser/ast/expr/ArrayAccessExpr;Lcom/github/javaparser/Range;)V
    .locals 1
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

    .line 130
    invoke-virtual {p1}, Lcom/github/javaparser/ast/expr/ArrayAccessExpr;->getIndex()Lcom/github/javaparser/ast/expr/Expression;

    move-result-object v0

    invoke-interface {v0, p0, p2}, Lcom/github/javaparser/ast/visitor/Visitable;->accept(Lcom/github/javaparser/ast/visitor/VoidVisitor;Ljava/lang/Object;)V

    .line 131
    iget-object v0, p0, Lcom/github/javaparser/ast/visitor/NodeFinderVisitor;->selectedNode:Lcom/github/javaparser/ast/Node;

    if-eqz v0, :cond_0

    return-void

    .line 132
    :cond_0
    invoke-virtual {p1}, Lcom/github/javaparser/ast/expr/ArrayAccessExpr;->getName()Lcom/github/javaparser/ast/expr/Expression;

    move-result-object v0

    invoke-interface {v0, p0, p2}, Lcom/github/javaparser/ast/visitor/Visitable;->accept(Lcom/github/javaparser/ast/visitor/VoidVisitor;Ljava/lang/Object;)V

    .line 133
    iget-object v0, p0, Lcom/github/javaparser/ast/visitor/NodeFinderVisitor;->selectedNode:Lcom/github/javaparser/ast/Node;

    if-eqz v0, :cond_1

    return-void

    .line 134
    :cond_1
    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getComment()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Optional;->isPresent()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 135
    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getComment()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/github/javaparser/ast/comments/Comment;

    invoke-interface {v0, p0, p2}, Lcom/github/javaparser/ast/visitor/Visitable;->accept(Lcom/github/javaparser/ast/visitor/VoidVisitor;Ljava/lang/Object;)V

    .line 136
    iget-object v0, p0, Lcom/github/javaparser/ast/visitor/NodeFinderVisitor;->selectedNode:Lcom/github/javaparser/ast/Node;

    if-eqz v0, :cond_2

    return-void

    .line 137
    :cond_2
    sget-object v0, Lcom/github/javaparser/ast/visitor/NodeFinderVisitor;->fn:Ljava/util/function/BiFunction;

    invoke-interface {v0, p1, p2}, Ljava/util/function/BiFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_3

    .line 138
    iput-object p1, p0, Lcom/github/javaparser/ast/visitor/NodeFinderVisitor;->selectedNode:Lcom/github/javaparser/ast/Node;

    :cond_3
    return-void
.end method

.method public bridge synthetic visit(Lcom/github/javaparser/ast/expr/ArrayAccessExpr;Ljava/lang/Object;)V
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
    check-cast p2, Lcom/github/javaparser/Range;

    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/NodeFinderVisitor;->visit(Lcom/github/javaparser/ast/expr/ArrayAccessExpr;Lcom/github/javaparser/Range;)V

    return-void
.end method

.method public visit(Lcom/github/javaparser/ast/expr/ArrayCreationExpr;Lcom/github/javaparser/Range;)V
    .locals 1
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

    .line 139
    invoke-virtual {p1}, Lcom/github/javaparser/ast/expr/ArrayCreationExpr;->getElementType()Lcom/github/javaparser/ast/type/Type;

    move-result-object v0

    invoke-interface {v0, p0, p2}, Lcom/github/javaparser/ast/visitor/Visitable;->accept(Lcom/github/javaparser/ast/visitor/VoidVisitor;Ljava/lang/Object;)V

    .line 140
    iget-object v0, p0, Lcom/github/javaparser/ast/visitor/NodeFinderVisitor;->selectedNode:Lcom/github/javaparser/ast/Node;

    if-eqz v0, :cond_0

    return-void

    .line 141
    :cond_0
    invoke-virtual {p1}, Lcom/github/javaparser/ast/expr/ArrayCreationExpr;->getInitializer()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Optional;->isPresent()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 142
    invoke-virtual {p1}, Lcom/github/javaparser/ast/expr/ArrayCreationExpr;->getInitializer()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/github/javaparser/ast/expr/ArrayInitializerExpr;

    invoke-virtual {v0, p0, p2}, Lcom/github/javaparser/ast/expr/ArrayInitializerExpr;->accept(Lcom/github/javaparser/ast/visitor/VoidVisitor;Ljava/lang/Object;)V

    .line 143
    iget-object v0, p0, Lcom/github/javaparser/ast/visitor/NodeFinderVisitor;->selectedNode:Lcom/github/javaparser/ast/Node;

    if-eqz v0, :cond_1

    return-void

    .line 144
    :cond_1
    invoke-virtual {p1}, Lcom/github/javaparser/ast/expr/ArrayCreationExpr;->getLevels()Lcom/github/javaparser/ast/NodeList;

    move-result-object v0

    invoke-virtual {v0, p0, p2}, Lcom/github/javaparser/ast/NodeList;->accept(Lcom/github/javaparser/ast/visitor/VoidVisitor;Ljava/lang/Object;)V

    .line 145
    iget-object v0, p0, Lcom/github/javaparser/ast/visitor/NodeFinderVisitor;->selectedNode:Lcom/github/javaparser/ast/Node;

    if-eqz v0, :cond_2

    return-void

    .line 146
    :cond_2
    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getComment()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Optional;->isPresent()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 147
    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getComment()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/github/javaparser/ast/comments/Comment;

    invoke-interface {v0, p0, p2}, Lcom/github/javaparser/ast/visitor/Visitable;->accept(Lcom/github/javaparser/ast/visitor/VoidVisitor;Ljava/lang/Object;)V

    .line 148
    iget-object v0, p0, Lcom/github/javaparser/ast/visitor/NodeFinderVisitor;->selectedNode:Lcom/github/javaparser/ast/Node;

    if-eqz v0, :cond_3

    return-void

    .line 149
    :cond_3
    sget-object v0, Lcom/github/javaparser/ast/visitor/NodeFinderVisitor;->fn:Ljava/util/function/BiFunction;

    invoke-interface {v0, p1, p2}, Ljava/util/function/BiFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_4

    .line 150
    iput-object p1, p0, Lcom/github/javaparser/ast/visitor/NodeFinderVisitor;->selectedNode:Lcom/github/javaparser/ast/Node;

    :cond_4
    return-void
.end method

.method public bridge synthetic visit(Lcom/github/javaparser/ast/expr/ArrayCreationExpr;Ljava/lang/Object;)V
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
    check-cast p2, Lcom/github/javaparser/Range;

    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/NodeFinderVisitor;->visit(Lcom/github/javaparser/ast/expr/ArrayCreationExpr;Lcom/github/javaparser/Range;)V

    return-void
.end method

.method public visit(Lcom/github/javaparser/ast/expr/ArrayInitializerExpr;Lcom/github/javaparser/Range;)V
    .locals 1
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

    .line 151
    invoke-virtual {p1}, Lcom/github/javaparser/ast/expr/ArrayInitializerExpr;->getValues()Lcom/github/javaparser/ast/NodeList;

    move-result-object v0

    invoke-virtual {v0, p0, p2}, Lcom/github/javaparser/ast/NodeList;->accept(Lcom/github/javaparser/ast/visitor/VoidVisitor;Ljava/lang/Object;)V

    .line 152
    iget-object v0, p0, Lcom/github/javaparser/ast/visitor/NodeFinderVisitor;->selectedNode:Lcom/github/javaparser/ast/Node;

    if-eqz v0, :cond_0

    return-void

    .line 153
    :cond_0
    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getComment()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Optional;->isPresent()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 154
    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getComment()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/github/javaparser/ast/comments/Comment;

    invoke-interface {v0, p0, p2}, Lcom/github/javaparser/ast/visitor/Visitable;->accept(Lcom/github/javaparser/ast/visitor/VoidVisitor;Ljava/lang/Object;)V

    .line 155
    iget-object v0, p0, Lcom/github/javaparser/ast/visitor/NodeFinderVisitor;->selectedNode:Lcom/github/javaparser/ast/Node;

    if-eqz v0, :cond_1

    return-void

    .line 156
    :cond_1
    sget-object v0, Lcom/github/javaparser/ast/visitor/NodeFinderVisitor;->fn:Ljava/util/function/BiFunction;

    invoke-interface {v0, p1, p2}, Ljava/util/function/BiFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_2

    .line 157
    iput-object p1, p0, Lcom/github/javaparser/ast/visitor/NodeFinderVisitor;->selectedNode:Lcom/github/javaparser/ast/Node;

    :cond_2
    return-void
.end method

.method public bridge synthetic visit(Lcom/github/javaparser/ast/expr/ArrayInitializerExpr;Ljava/lang/Object;)V
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
    check-cast p2, Lcom/github/javaparser/Range;

    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/NodeFinderVisitor;->visit(Lcom/github/javaparser/ast/expr/ArrayInitializerExpr;Lcom/github/javaparser/Range;)V

    return-void
.end method

.method public visit(Lcom/github/javaparser/ast/expr/AssignExpr;Lcom/github/javaparser/Range;)V
    .locals 1
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

    .line 168
    invoke-virtual {p1}, Lcom/github/javaparser/ast/expr/AssignExpr;->getTarget()Lcom/github/javaparser/ast/expr/Expression;

    move-result-object v0

    invoke-interface {v0, p0, p2}, Lcom/github/javaparser/ast/visitor/Visitable;->accept(Lcom/github/javaparser/ast/visitor/VoidVisitor;Ljava/lang/Object;)V

    .line 169
    iget-object v0, p0, Lcom/github/javaparser/ast/visitor/NodeFinderVisitor;->selectedNode:Lcom/github/javaparser/ast/Node;

    if-eqz v0, :cond_0

    return-void

    .line 170
    :cond_0
    invoke-virtual {p1}, Lcom/github/javaparser/ast/expr/AssignExpr;->getValue()Lcom/github/javaparser/ast/expr/Expression;

    move-result-object v0

    invoke-interface {v0, p0, p2}, Lcom/github/javaparser/ast/visitor/Visitable;->accept(Lcom/github/javaparser/ast/visitor/VoidVisitor;Ljava/lang/Object;)V

    .line 171
    iget-object v0, p0, Lcom/github/javaparser/ast/visitor/NodeFinderVisitor;->selectedNode:Lcom/github/javaparser/ast/Node;

    if-eqz v0, :cond_1

    return-void

    .line 172
    :cond_1
    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getComment()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Optional;->isPresent()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 173
    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getComment()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/github/javaparser/ast/comments/Comment;

    invoke-interface {v0, p0, p2}, Lcom/github/javaparser/ast/visitor/Visitable;->accept(Lcom/github/javaparser/ast/visitor/VoidVisitor;Ljava/lang/Object;)V

    .line 174
    iget-object v0, p0, Lcom/github/javaparser/ast/visitor/NodeFinderVisitor;->selectedNode:Lcom/github/javaparser/ast/Node;

    if-eqz v0, :cond_2

    return-void

    .line 175
    :cond_2
    sget-object v0, Lcom/github/javaparser/ast/visitor/NodeFinderVisitor;->fn:Ljava/util/function/BiFunction;

    invoke-interface {v0, p1, p2}, Ljava/util/function/BiFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_3

    .line 176
    iput-object p1, p0, Lcom/github/javaparser/ast/visitor/NodeFinderVisitor;->selectedNode:Lcom/github/javaparser/ast/Node;

    :cond_3
    return-void
.end method

.method public bridge synthetic visit(Lcom/github/javaparser/ast/expr/AssignExpr;Ljava/lang/Object;)V
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
    check-cast p2, Lcom/github/javaparser/Range;

    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/NodeFinderVisitor;->visit(Lcom/github/javaparser/ast/expr/AssignExpr;Lcom/github/javaparser/Range;)V

    return-void
.end method

.method public visit(Lcom/github/javaparser/ast/expr/BinaryExpr;Lcom/github/javaparser/Range;)V
    .locals 1
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

    .line 177
    invoke-virtual {p1}, Lcom/github/javaparser/ast/expr/BinaryExpr;->getLeft()Lcom/github/javaparser/ast/expr/Expression;

    move-result-object v0

    invoke-interface {v0, p0, p2}, Lcom/github/javaparser/ast/visitor/Visitable;->accept(Lcom/github/javaparser/ast/visitor/VoidVisitor;Ljava/lang/Object;)V

    .line 178
    iget-object v0, p0, Lcom/github/javaparser/ast/visitor/NodeFinderVisitor;->selectedNode:Lcom/github/javaparser/ast/Node;

    if-eqz v0, :cond_0

    return-void

    .line 179
    :cond_0
    invoke-virtual {p1}, Lcom/github/javaparser/ast/expr/BinaryExpr;->getRight()Lcom/github/javaparser/ast/expr/Expression;

    move-result-object v0

    invoke-interface {v0, p0, p2}, Lcom/github/javaparser/ast/visitor/Visitable;->accept(Lcom/github/javaparser/ast/visitor/VoidVisitor;Ljava/lang/Object;)V

    .line 180
    iget-object v0, p0, Lcom/github/javaparser/ast/visitor/NodeFinderVisitor;->selectedNode:Lcom/github/javaparser/ast/Node;

    if-eqz v0, :cond_1

    return-void

    .line 181
    :cond_1
    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getComment()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Optional;->isPresent()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 182
    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getComment()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/github/javaparser/ast/comments/Comment;

    invoke-interface {v0, p0, p2}, Lcom/github/javaparser/ast/visitor/Visitable;->accept(Lcom/github/javaparser/ast/visitor/VoidVisitor;Ljava/lang/Object;)V

    .line 183
    iget-object v0, p0, Lcom/github/javaparser/ast/visitor/NodeFinderVisitor;->selectedNode:Lcom/github/javaparser/ast/Node;

    if-eqz v0, :cond_2

    return-void

    .line 184
    :cond_2
    sget-object v0, Lcom/github/javaparser/ast/visitor/NodeFinderVisitor;->fn:Ljava/util/function/BiFunction;

    invoke-interface {v0, p1, p2}, Ljava/util/function/BiFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_3

    .line 185
    iput-object p1, p0, Lcom/github/javaparser/ast/visitor/NodeFinderVisitor;->selectedNode:Lcom/github/javaparser/ast/Node;

    :cond_3
    return-void
.end method

.method public bridge synthetic visit(Lcom/github/javaparser/ast/expr/BinaryExpr;Ljava/lang/Object;)V
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
    check-cast p2, Lcom/github/javaparser/Range;

    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/NodeFinderVisitor;->visit(Lcom/github/javaparser/ast/expr/BinaryExpr;Lcom/github/javaparser/Range;)V

    return-void
.end method

.method public visit(Lcom/github/javaparser/ast/expr/BooleanLiteralExpr;Lcom/github/javaparser/Range;)V
    .locals 1
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

    .line 193
    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getComment()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Optional;->isPresent()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 194
    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getComment()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/github/javaparser/ast/comments/Comment;

    invoke-interface {v0, p0, p2}, Lcom/github/javaparser/ast/visitor/Visitable;->accept(Lcom/github/javaparser/ast/visitor/VoidVisitor;Ljava/lang/Object;)V

    .line 195
    iget-object v0, p0, Lcom/github/javaparser/ast/visitor/NodeFinderVisitor;->selectedNode:Lcom/github/javaparser/ast/Node;

    if-eqz v0, :cond_0

    return-void

    .line 196
    :cond_0
    sget-object v0, Lcom/github/javaparser/ast/visitor/NodeFinderVisitor;->fn:Ljava/util/function/BiFunction;

    invoke-interface {v0, p1, p2}, Ljava/util/function/BiFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_1

    .line 197
    iput-object p1, p0, Lcom/github/javaparser/ast/visitor/NodeFinderVisitor;->selectedNode:Lcom/github/javaparser/ast/Node;

    :cond_1
    return-void
.end method

.method public bridge synthetic visit(Lcom/github/javaparser/ast/expr/BooleanLiteralExpr;Ljava/lang/Object;)V
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
    check-cast p2, Lcom/github/javaparser/Range;

    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/NodeFinderVisitor;->visit(Lcom/github/javaparser/ast/expr/BooleanLiteralExpr;Lcom/github/javaparser/Range;)V

    return-void
.end method

.method public visit(Lcom/github/javaparser/ast/expr/CastExpr;Lcom/github/javaparser/Range;)V
    .locals 1
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

    .line 206
    invoke-virtual {p1}, Lcom/github/javaparser/ast/expr/CastExpr;->getExpression()Lcom/github/javaparser/ast/expr/Expression;

    move-result-object v0

    invoke-interface {v0, p0, p2}, Lcom/github/javaparser/ast/visitor/Visitable;->accept(Lcom/github/javaparser/ast/visitor/VoidVisitor;Ljava/lang/Object;)V

    .line 207
    iget-object v0, p0, Lcom/github/javaparser/ast/visitor/NodeFinderVisitor;->selectedNode:Lcom/github/javaparser/ast/Node;

    if-eqz v0, :cond_0

    return-void

    .line 208
    :cond_0
    invoke-virtual {p1}, Lcom/github/javaparser/ast/expr/CastExpr;->getType()Lcom/github/javaparser/ast/type/Type;

    move-result-object v0

    invoke-interface {v0, p0, p2}, Lcom/github/javaparser/ast/visitor/Visitable;->accept(Lcom/github/javaparser/ast/visitor/VoidVisitor;Ljava/lang/Object;)V

    .line 209
    iget-object v0, p0, Lcom/github/javaparser/ast/visitor/NodeFinderVisitor;->selectedNode:Lcom/github/javaparser/ast/Node;

    if-eqz v0, :cond_1

    return-void

    .line 210
    :cond_1
    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getComment()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Optional;->isPresent()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 211
    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getComment()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/github/javaparser/ast/comments/Comment;

    invoke-interface {v0, p0, p2}, Lcom/github/javaparser/ast/visitor/Visitable;->accept(Lcom/github/javaparser/ast/visitor/VoidVisitor;Ljava/lang/Object;)V

    .line 212
    iget-object v0, p0, Lcom/github/javaparser/ast/visitor/NodeFinderVisitor;->selectedNode:Lcom/github/javaparser/ast/Node;

    if-eqz v0, :cond_2

    return-void

    .line 213
    :cond_2
    sget-object v0, Lcom/github/javaparser/ast/visitor/NodeFinderVisitor;->fn:Ljava/util/function/BiFunction;

    invoke-interface {v0, p1, p2}, Ljava/util/function/BiFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_3

    .line 214
    iput-object p1, p0, Lcom/github/javaparser/ast/visitor/NodeFinderVisitor;->selectedNode:Lcom/github/javaparser/ast/Node;

    :cond_3
    return-void
.end method

.method public bridge synthetic visit(Lcom/github/javaparser/ast/expr/CastExpr;Ljava/lang/Object;)V
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
    check-cast p2, Lcom/github/javaparser/Range;

    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/NodeFinderVisitor;->visit(Lcom/github/javaparser/ast/expr/CastExpr;Lcom/github/javaparser/Range;)V

    return-void
.end method

.method public visit(Lcom/github/javaparser/ast/expr/CharLiteralExpr;Lcom/github/javaparser/Range;)V
    .locals 1
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

    .line 224
    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getComment()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Optional;->isPresent()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 225
    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getComment()Ljava/util/Optional;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/github/javaparser/ast/comments/Comment;

    invoke-interface {p1, p0, p2}, Lcom/github/javaparser/ast/visitor/Visitable;->accept(Lcom/github/javaparser/ast/visitor/VoidVisitor;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public bridge synthetic visit(Lcom/github/javaparser/ast/expr/CharLiteralExpr;Ljava/lang/Object;)V
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
    check-cast p2, Lcom/github/javaparser/Range;

    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/NodeFinderVisitor;->visit(Lcom/github/javaparser/ast/expr/CharLiteralExpr;Lcom/github/javaparser/Range;)V

    return-void
.end method

.method public visit(Lcom/github/javaparser/ast/expr/ClassExpr;Lcom/github/javaparser/Range;)V
    .locals 1
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
    invoke-virtual {p1}, Lcom/github/javaparser/ast/expr/ClassExpr;->getType()Lcom/github/javaparser/ast/type/Type;

    move-result-object v0

    invoke-interface {v0, p0, p2}, Lcom/github/javaparser/ast/visitor/Visitable;->accept(Lcom/github/javaparser/ast/visitor/VoidVisitor;Ljava/lang/Object;)V

    .line 227
    iget-object v0, p0, Lcom/github/javaparser/ast/visitor/NodeFinderVisitor;->selectedNode:Lcom/github/javaparser/ast/Node;

    if-eqz v0, :cond_0

    return-void

    .line 228
    :cond_0
    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getComment()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Optional;->isPresent()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 229
    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getComment()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/github/javaparser/ast/comments/Comment;

    invoke-interface {v0, p0, p2}, Lcom/github/javaparser/ast/visitor/Visitable;->accept(Lcom/github/javaparser/ast/visitor/VoidVisitor;Ljava/lang/Object;)V

    .line 230
    iget-object v0, p0, Lcom/github/javaparser/ast/visitor/NodeFinderVisitor;->selectedNode:Lcom/github/javaparser/ast/Node;

    if-eqz v0, :cond_1

    return-void

    .line 231
    :cond_1
    sget-object v0, Lcom/github/javaparser/ast/visitor/NodeFinderVisitor;->fn:Ljava/util/function/BiFunction;

    invoke-interface {v0, p1, p2}, Ljava/util/function/BiFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_2

    .line 232
    iput-object p1, p0, Lcom/github/javaparser/ast/visitor/NodeFinderVisitor;->selectedNode:Lcom/github/javaparser/ast/Node;

    :cond_2
    return-void
.end method

.method public bridge synthetic visit(Lcom/github/javaparser/ast/expr/ClassExpr;Ljava/lang/Object;)V
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
    check-cast p2, Lcom/github/javaparser/Range;

    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/NodeFinderVisitor;->visit(Lcom/github/javaparser/ast/expr/ClassExpr;Lcom/github/javaparser/Range;)V

    return-void
.end method

.method public visit(Lcom/github/javaparser/ast/expr/ConditionalExpr;Lcom/github/javaparser/Range;)V
    .locals 1
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

    .line 284
    invoke-virtual {p1}, Lcom/github/javaparser/ast/expr/ConditionalExpr;->getCondition()Lcom/github/javaparser/ast/expr/Expression;

    move-result-object v0

    invoke-interface {v0, p0, p2}, Lcom/github/javaparser/ast/visitor/Visitable;->accept(Lcom/github/javaparser/ast/visitor/VoidVisitor;Ljava/lang/Object;)V

    .line 285
    iget-object v0, p0, Lcom/github/javaparser/ast/visitor/NodeFinderVisitor;->selectedNode:Lcom/github/javaparser/ast/Node;

    if-eqz v0, :cond_0

    return-void

    .line 286
    :cond_0
    invoke-virtual {p1}, Lcom/github/javaparser/ast/expr/ConditionalExpr;->getElseExpr()Lcom/github/javaparser/ast/expr/Expression;

    move-result-object v0

    invoke-interface {v0, p0, p2}, Lcom/github/javaparser/ast/visitor/Visitable;->accept(Lcom/github/javaparser/ast/visitor/VoidVisitor;Ljava/lang/Object;)V

    .line 287
    iget-object v0, p0, Lcom/github/javaparser/ast/visitor/NodeFinderVisitor;->selectedNode:Lcom/github/javaparser/ast/Node;

    if-eqz v0, :cond_1

    return-void

    .line 288
    :cond_1
    invoke-virtual {p1}, Lcom/github/javaparser/ast/expr/ConditionalExpr;->getThenExpr()Lcom/github/javaparser/ast/expr/Expression;

    move-result-object v0

    invoke-interface {v0, p0, p2}, Lcom/github/javaparser/ast/visitor/Visitable;->accept(Lcom/github/javaparser/ast/visitor/VoidVisitor;Ljava/lang/Object;)V

    .line 289
    iget-object v0, p0, Lcom/github/javaparser/ast/visitor/NodeFinderVisitor;->selectedNode:Lcom/github/javaparser/ast/Node;

    if-eqz v0, :cond_2

    return-void

    .line 290
    :cond_2
    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getComment()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Optional;->isPresent()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 291
    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getComment()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/github/javaparser/ast/comments/Comment;

    invoke-interface {v0, p0, p2}, Lcom/github/javaparser/ast/visitor/Visitable;->accept(Lcom/github/javaparser/ast/visitor/VoidVisitor;Ljava/lang/Object;)V

    .line 292
    iget-object v0, p0, Lcom/github/javaparser/ast/visitor/NodeFinderVisitor;->selectedNode:Lcom/github/javaparser/ast/Node;

    if-eqz v0, :cond_3

    return-void

    .line 293
    :cond_3
    sget-object v0, Lcom/github/javaparser/ast/visitor/NodeFinderVisitor;->fn:Ljava/util/function/BiFunction;

    invoke-interface {v0, p1, p2}, Ljava/util/function/BiFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_4

    .line 294
    iput-object p1, p0, Lcom/github/javaparser/ast/visitor/NodeFinderVisitor;->selectedNode:Lcom/github/javaparser/ast/Node;

    :cond_4
    return-void
.end method

.method public bridge synthetic visit(Lcom/github/javaparser/ast/expr/ConditionalExpr;Ljava/lang/Object;)V
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
    check-cast p2, Lcom/github/javaparser/Range;

    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/NodeFinderVisitor;->visit(Lcom/github/javaparser/ast/expr/ConditionalExpr;Lcom/github/javaparser/Range;)V

    return-void
.end method

.method public visit(Lcom/github/javaparser/ast/expr/DoubleLiteralExpr;Lcom/github/javaparser/Range;)V
    .locals 1
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

    .line 334
    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getComment()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Optional;->isPresent()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 335
    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getComment()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/github/javaparser/ast/comments/Comment;

    invoke-interface {v0, p0, p2}, Lcom/github/javaparser/ast/visitor/Visitable;->accept(Lcom/github/javaparser/ast/visitor/VoidVisitor;Ljava/lang/Object;)V

    .line 336
    iget-object v0, p0, Lcom/github/javaparser/ast/visitor/NodeFinderVisitor;->selectedNode:Lcom/github/javaparser/ast/Node;

    if-eqz v0, :cond_0

    return-void

    .line 337
    :cond_0
    sget-object v0, Lcom/github/javaparser/ast/visitor/NodeFinderVisitor;->fn:Ljava/util/function/BiFunction;

    invoke-interface {v0, p1, p2}, Ljava/util/function/BiFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_1

    .line 338
    iput-object p1, p0, Lcom/github/javaparser/ast/visitor/NodeFinderVisitor;->selectedNode:Lcom/github/javaparser/ast/Node;

    :cond_1
    return-void
.end method

.method public bridge synthetic visit(Lcom/github/javaparser/ast/expr/DoubleLiteralExpr;Ljava/lang/Object;)V
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
    check-cast p2, Lcom/github/javaparser/Range;

    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/NodeFinderVisitor;->visit(Lcom/github/javaparser/ast/expr/DoubleLiteralExpr;Lcom/github/javaparser/Range;)V

    return-void
.end method

.method public visit(Lcom/github/javaparser/ast/expr/EnclosedExpr;Lcom/github/javaparser/Range;)V
    .locals 1
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

    .line 344
    invoke-virtual {p1}, Lcom/github/javaparser/ast/expr/EnclosedExpr;->getInner()Lcom/github/javaparser/ast/expr/Expression;

    move-result-object v0

    invoke-interface {v0, p0, p2}, Lcom/github/javaparser/ast/visitor/Visitable;->accept(Lcom/github/javaparser/ast/visitor/VoidVisitor;Ljava/lang/Object;)V

    .line 345
    iget-object v0, p0, Lcom/github/javaparser/ast/visitor/NodeFinderVisitor;->selectedNode:Lcom/github/javaparser/ast/Node;

    if-eqz v0, :cond_0

    return-void

    .line 346
    :cond_0
    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getComment()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Optional;->isPresent()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 347
    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getComment()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/github/javaparser/ast/comments/Comment;

    invoke-interface {v0, p0, p2}, Lcom/github/javaparser/ast/visitor/Visitable;->accept(Lcom/github/javaparser/ast/visitor/VoidVisitor;Ljava/lang/Object;)V

    .line 348
    iget-object v0, p0, Lcom/github/javaparser/ast/visitor/NodeFinderVisitor;->selectedNode:Lcom/github/javaparser/ast/Node;

    if-eqz v0, :cond_1

    return-void

    .line 349
    :cond_1
    sget-object v0, Lcom/github/javaparser/ast/visitor/NodeFinderVisitor;->fn:Ljava/util/function/BiFunction;

    invoke-interface {v0, p1, p2}, Ljava/util/function/BiFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_2

    .line 350
    iput-object p1, p0, Lcom/github/javaparser/ast/visitor/NodeFinderVisitor;->selectedNode:Lcom/github/javaparser/ast/Node;

    :cond_2
    return-void
.end method

.method public bridge synthetic visit(Lcom/github/javaparser/ast/expr/EnclosedExpr;Ljava/lang/Object;)V
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
    check-cast p2, Lcom/github/javaparser/Range;

    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/NodeFinderVisitor;->visit(Lcom/github/javaparser/ast/expr/EnclosedExpr;Lcom/github/javaparser/Range;)V

    return-void
.end method

.method public visit(Lcom/github/javaparser/ast/expr/FieldAccessExpr;Lcom/github/javaparser/Range;)V
    .locals 1
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

    .line 401
    invoke-virtual {p1}, Lcom/github/javaparser/ast/expr/FieldAccessExpr;->getName()Lcom/github/javaparser/ast/expr/SimpleName;

    move-result-object v0

    invoke-virtual {v0, p0, p2}, Lcom/github/javaparser/ast/expr/SimpleName;->accept(Lcom/github/javaparser/ast/visitor/VoidVisitor;Ljava/lang/Object;)V

    .line 402
    iget-object v0, p0, Lcom/github/javaparser/ast/visitor/NodeFinderVisitor;->selectedNode:Lcom/github/javaparser/ast/Node;

    if-eqz v0, :cond_0

    return-void

    .line 403
    :cond_0
    invoke-virtual {p1}, Lcom/github/javaparser/ast/expr/FieldAccessExpr;->getScope()Lcom/github/javaparser/ast/expr/Expression;

    move-result-object v0

    invoke-interface {v0, p0, p2}, Lcom/github/javaparser/ast/visitor/Visitable;->accept(Lcom/github/javaparser/ast/visitor/VoidVisitor;Ljava/lang/Object;)V

    .line 404
    iget-object v0, p0, Lcom/github/javaparser/ast/visitor/NodeFinderVisitor;->selectedNode:Lcom/github/javaparser/ast/Node;

    if-eqz v0, :cond_1

    return-void

    .line 405
    :cond_1
    invoke-virtual {p1}, Lcom/github/javaparser/ast/expr/FieldAccessExpr;->getTypeArguments()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Optional;->isPresent()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 406
    invoke-virtual {p1}, Lcom/github/javaparser/ast/expr/FieldAccessExpr;->getTypeArguments()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/github/javaparser/ast/NodeList;

    invoke-virtual {v0, p0, p2}, Lcom/github/javaparser/ast/NodeList;->accept(Lcom/github/javaparser/ast/visitor/VoidVisitor;Ljava/lang/Object;)V

    .line 407
    iget-object v0, p0, Lcom/github/javaparser/ast/visitor/NodeFinderVisitor;->selectedNode:Lcom/github/javaparser/ast/Node;

    if-eqz v0, :cond_2

    return-void

    .line 408
    :cond_2
    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getComment()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Optional;->isPresent()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 409
    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getComment()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/github/javaparser/ast/comments/Comment;

    invoke-interface {v0, p0, p2}, Lcom/github/javaparser/ast/visitor/Visitable;->accept(Lcom/github/javaparser/ast/visitor/VoidVisitor;Ljava/lang/Object;)V

    .line 410
    iget-object v0, p0, Lcom/github/javaparser/ast/visitor/NodeFinderVisitor;->selectedNode:Lcom/github/javaparser/ast/Node;

    if-eqz v0, :cond_3

    return-void

    .line 411
    :cond_3
    sget-object v0, Lcom/github/javaparser/ast/visitor/NodeFinderVisitor;->fn:Ljava/util/function/BiFunction;

    invoke-interface {v0, p1, p2}, Ljava/util/function/BiFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_4

    .line 412
    iput-object p1, p0, Lcom/github/javaparser/ast/visitor/NodeFinderVisitor;->selectedNode:Lcom/github/javaparser/ast/Node;

    :cond_4
    return-void
.end method

.method public bridge synthetic visit(Lcom/github/javaparser/ast/expr/FieldAccessExpr;Ljava/lang/Object;)V
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
    check-cast p2, Lcom/github/javaparser/Range;

    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/NodeFinderVisitor;->visit(Lcom/github/javaparser/ast/expr/FieldAccessExpr;Lcom/github/javaparser/Range;)V

    return-void
.end method

.method public visit(Lcom/github/javaparser/ast/expr/InstanceOfExpr;Lcom/github/javaparser/Range;)V
    .locals 1
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

    .line 470
    invoke-virtual {p1}, Lcom/github/javaparser/ast/expr/InstanceOfExpr;->getExpression()Lcom/github/javaparser/ast/expr/Expression;

    move-result-object v0

    invoke-interface {v0, p0, p2}, Lcom/github/javaparser/ast/visitor/Visitable;->accept(Lcom/github/javaparser/ast/visitor/VoidVisitor;Ljava/lang/Object;)V

    .line 471
    iget-object v0, p0, Lcom/github/javaparser/ast/visitor/NodeFinderVisitor;->selectedNode:Lcom/github/javaparser/ast/Node;

    if-eqz v0, :cond_0

    return-void

    .line 472
    :cond_0
    invoke-virtual {p1}, Lcom/github/javaparser/ast/expr/InstanceOfExpr;->getPattern()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Optional;->isPresent()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 473
    invoke-virtual {p1}, Lcom/github/javaparser/ast/expr/InstanceOfExpr;->getPattern()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/github/javaparser/ast/expr/PatternExpr;

    invoke-interface {v0, p0, p2}, Lcom/github/javaparser/ast/visitor/Visitable;->accept(Lcom/github/javaparser/ast/visitor/VoidVisitor;Ljava/lang/Object;)V

    .line 474
    iget-object v0, p0, Lcom/github/javaparser/ast/visitor/NodeFinderVisitor;->selectedNode:Lcom/github/javaparser/ast/Node;

    if-eqz v0, :cond_1

    return-void

    .line 475
    :cond_1
    invoke-virtual {p1}, Lcom/github/javaparser/ast/expr/InstanceOfExpr;->getType()Lcom/github/javaparser/ast/type/ReferenceType;

    move-result-object v0

    invoke-interface {v0, p0, p2}, Lcom/github/javaparser/ast/visitor/Visitable;->accept(Lcom/github/javaparser/ast/visitor/VoidVisitor;Ljava/lang/Object;)V

    .line 476
    iget-object v0, p0, Lcom/github/javaparser/ast/visitor/NodeFinderVisitor;->selectedNode:Lcom/github/javaparser/ast/Node;

    if-eqz v0, :cond_2

    return-void

    .line 477
    :cond_2
    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getComment()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Optional;->isPresent()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 478
    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getComment()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/github/javaparser/ast/comments/Comment;

    invoke-interface {v0, p0, p2}, Lcom/github/javaparser/ast/visitor/Visitable;->accept(Lcom/github/javaparser/ast/visitor/VoidVisitor;Ljava/lang/Object;)V

    .line 479
    iget-object v0, p0, Lcom/github/javaparser/ast/visitor/NodeFinderVisitor;->selectedNode:Lcom/github/javaparser/ast/Node;

    if-eqz v0, :cond_3

    return-void

    .line 480
    :cond_3
    sget-object v0, Lcom/github/javaparser/ast/visitor/NodeFinderVisitor;->fn:Ljava/util/function/BiFunction;

    invoke-interface {v0, p1, p2}, Ljava/util/function/BiFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_4

    .line 481
    iput-object p1, p0, Lcom/github/javaparser/ast/visitor/NodeFinderVisitor;->selectedNode:Lcom/github/javaparser/ast/Node;

    :cond_4
    return-void
.end method

.method public bridge synthetic visit(Lcom/github/javaparser/ast/expr/InstanceOfExpr;Ljava/lang/Object;)V
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
    check-cast p2, Lcom/github/javaparser/Range;

    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/NodeFinderVisitor;->visit(Lcom/github/javaparser/ast/expr/InstanceOfExpr;Lcom/github/javaparser/Range;)V

    return-void
.end method

.method public visit(Lcom/github/javaparser/ast/expr/IntegerLiteralExpr;Lcom/github/javaparser/Range;)V
    .locals 1
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

    .line 482
    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getComment()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Optional;->isPresent()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 483
    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getComment()Ljava/util/Optional;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/github/javaparser/ast/comments/Comment;

    invoke-interface {p1, p0, p2}, Lcom/github/javaparser/ast/visitor/Visitable;->accept(Lcom/github/javaparser/ast/visitor/VoidVisitor;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public bridge synthetic visit(Lcom/github/javaparser/ast/expr/IntegerLiteralExpr;Ljava/lang/Object;)V
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
    check-cast p2, Lcom/github/javaparser/Range;

    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/NodeFinderVisitor;->visit(Lcom/github/javaparser/ast/expr/IntegerLiteralExpr;Lcom/github/javaparser/Range;)V

    return-void
.end method

.method public visit(Lcom/github/javaparser/ast/expr/LambdaExpr;Lcom/github/javaparser/Range;)V
    .locals 1
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

    .line 859
    invoke-virtual {p1}, Lcom/github/javaparser/ast/expr/LambdaExpr;->getBody()Lcom/github/javaparser/ast/stmt/Statement;

    move-result-object v0

    invoke-interface {v0, p0, p2}, Lcom/github/javaparser/ast/visitor/Visitable;->accept(Lcom/github/javaparser/ast/visitor/VoidVisitor;Ljava/lang/Object;)V

    .line 860
    iget-object v0, p0, Lcom/github/javaparser/ast/visitor/NodeFinderVisitor;->selectedNode:Lcom/github/javaparser/ast/Node;

    if-eqz v0, :cond_0

    return-void

    .line 861
    :cond_0
    invoke-virtual {p1}, Lcom/github/javaparser/ast/expr/LambdaExpr;->getParameters()Lcom/github/javaparser/ast/NodeList;

    move-result-object v0

    invoke-virtual {v0, p0, p2}, Lcom/github/javaparser/ast/NodeList;->accept(Lcom/github/javaparser/ast/visitor/VoidVisitor;Ljava/lang/Object;)V

    .line 862
    iget-object v0, p0, Lcom/github/javaparser/ast/visitor/NodeFinderVisitor;->selectedNode:Lcom/github/javaparser/ast/Node;

    if-eqz v0, :cond_1

    return-void

    .line 863
    :cond_1
    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getComment()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Optional;->isPresent()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 864
    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getComment()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/github/javaparser/ast/comments/Comment;

    invoke-interface {v0, p0, p2}, Lcom/github/javaparser/ast/visitor/Visitable;->accept(Lcom/github/javaparser/ast/visitor/VoidVisitor;Ljava/lang/Object;)V

    .line 865
    iget-object v0, p0, Lcom/github/javaparser/ast/visitor/NodeFinderVisitor;->selectedNode:Lcom/github/javaparser/ast/Node;

    if-eqz v0, :cond_2

    return-void

    .line 866
    :cond_2
    sget-object v0, Lcom/github/javaparser/ast/visitor/NodeFinderVisitor;->fn:Ljava/util/function/BiFunction;

    invoke-interface {v0, p1, p2}, Ljava/util/function/BiFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_3

    .line 867
    iput-object p1, p0, Lcom/github/javaparser/ast/visitor/NodeFinderVisitor;->selectedNode:Lcom/github/javaparser/ast/Node;

    :cond_3
    return-void
.end method

.method public bridge synthetic visit(Lcom/github/javaparser/ast/expr/LambdaExpr;Ljava/lang/Object;)V
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
    check-cast p2, Lcom/github/javaparser/Range;

    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/NodeFinderVisitor;->visit(Lcom/github/javaparser/ast/expr/LambdaExpr;Lcom/github/javaparser/Range;)V

    return-void
.end method

.method public visit(Lcom/github/javaparser/ast/expr/LongLiteralExpr;Lcom/github/javaparser/Range;)V
    .locals 1
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

    .line 498
    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getComment()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Optional;->isPresent()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 499
    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getComment()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/github/javaparser/ast/comments/Comment;

    invoke-interface {v0, p0, p2}, Lcom/github/javaparser/ast/visitor/Visitable;->accept(Lcom/github/javaparser/ast/visitor/VoidVisitor;Ljava/lang/Object;)V

    .line 500
    iget-object v0, p0, Lcom/github/javaparser/ast/visitor/NodeFinderVisitor;->selectedNode:Lcom/github/javaparser/ast/Node;

    if-eqz v0, :cond_0

    return-void

    .line 501
    :cond_0
    sget-object v0, Lcom/github/javaparser/ast/visitor/NodeFinderVisitor;->fn:Ljava/util/function/BiFunction;

    invoke-interface {v0, p1, p2}, Ljava/util/function/BiFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_1

    .line 502
    iput-object p1, p0, Lcom/github/javaparser/ast/visitor/NodeFinderVisitor;->selectedNode:Lcom/github/javaparser/ast/Node;

    :cond_1
    return-void
.end method

.method public bridge synthetic visit(Lcom/github/javaparser/ast/expr/LongLiteralExpr;Ljava/lang/Object;)V
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
    check-cast p2, Lcom/github/javaparser/Range;

    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/NodeFinderVisitor;->visit(Lcom/github/javaparser/ast/expr/LongLiteralExpr;Lcom/github/javaparser/Range;)V

    return-void
.end method

.method public visit(Lcom/github/javaparser/ast/expr/MarkerAnnotationExpr;Lcom/github/javaparser/Range;)V
    .locals 1
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

    .line 503
    invoke-virtual {p1}, Lcom/github/javaparser/ast/expr/AnnotationExpr;->getName()Lcom/github/javaparser/ast/expr/Name;

    move-result-object v0

    invoke-virtual {v0, p0, p2}, Lcom/github/javaparser/ast/expr/Name;->accept(Lcom/github/javaparser/ast/visitor/VoidVisitor;Ljava/lang/Object;)V

    .line 504
    iget-object v0, p0, Lcom/github/javaparser/ast/visitor/NodeFinderVisitor;->selectedNode:Lcom/github/javaparser/ast/Node;

    if-eqz v0, :cond_0

    return-void

    .line 505
    :cond_0
    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getComment()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Optional;->isPresent()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 506
    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getComment()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/github/javaparser/ast/comments/Comment;

    invoke-interface {v0, p0, p2}, Lcom/github/javaparser/ast/visitor/Visitable;->accept(Lcom/github/javaparser/ast/visitor/VoidVisitor;Ljava/lang/Object;)V

    .line 507
    iget-object v0, p0, Lcom/github/javaparser/ast/visitor/NodeFinderVisitor;->selectedNode:Lcom/github/javaparser/ast/Node;

    if-eqz v0, :cond_1

    return-void

    .line 508
    :cond_1
    sget-object v0, Lcom/github/javaparser/ast/visitor/NodeFinderVisitor;->fn:Ljava/util/function/BiFunction;

    invoke-interface {v0, p1, p2}, Ljava/util/function/BiFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_2

    .line 509
    iput-object p1, p0, Lcom/github/javaparser/ast/visitor/NodeFinderVisitor;->selectedNode:Lcom/github/javaparser/ast/Node;

    :cond_2
    return-void
.end method

.method public bridge synthetic visit(Lcom/github/javaparser/ast/expr/MarkerAnnotationExpr;Ljava/lang/Object;)V
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
    check-cast p2, Lcom/github/javaparser/Range;

    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/NodeFinderVisitor;->visit(Lcom/github/javaparser/ast/expr/MarkerAnnotationExpr;Lcom/github/javaparser/Range;)V

    return-void
.end method

.method public visit(Lcom/github/javaparser/ast/expr/MemberValuePair;Lcom/github/javaparser/Range;)V
    .locals 1
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

    .line 510
    invoke-virtual {p1}, Lcom/github/javaparser/ast/expr/MemberValuePair;->getName()Lcom/github/javaparser/ast/expr/SimpleName;

    move-result-object v0

    invoke-virtual {v0, p0, p2}, Lcom/github/javaparser/ast/expr/SimpleName;->accept(Lcom/github/javaparser/ast/visitor/VoidVisitor;Ljava/lang/Object;)V

    .line 511
    iget-object v0, p0, Lcom/github/javaparser/ast/visitor/NodeFinderVisitor;->selectedNode:Lcom/github/javaparser/ast/Node;

    if-eqz v0, :cond_0

    return-void

    .line 512
    :cond_0
    invoke-virtual {p1}, Lcom/github/javaparser/ast/expr/MemberValuePair;->getValue()Lcom/github/javaparser/ast/expr/Expression;

    move-result-object v0

    invoke-interface {v0, p0, p2}, Lcom/github/javaparser/ast/visitor/Visitable;->accept(Lcom/github/javaparser/ast/visitor/VoidVisitor;Ljava/lang/Object;)V

    .line 513
    iget-object v0, p0, Lcom/github/javaparser/ast/visitor/NodeFinderVisitor;->selectedNode:Lcom/github/javaparser/ast/Node;

    if-eqz v0, :cond_1

    return-void

    .line 514
    :cond_1
    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getComment()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Optional;->isPresent()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 515
    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getComment()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/github/javaparser/ast/comments/Comment;

    invoke-interface {v0, p0, p2}, Lcom/github/javaparser/ast/visitor/Visitable;->accept(Lcom/github/javaparser/ast/visitor/VoidVisitor;Ljava/lang/Object;)V

    .line 516
    iget-object v0, p0, Lcom/github/javaparser/ast/visitor/NodeFinderVisitor;->selectedNode:Lcom/github/javaparser/ast/Node;

    if-eqz v0, :cond_2

    return-void

    .line 517
    :cond_2
    sget-object v0, Lcom/github/javaparser/ast/visitor/NodeFinderVisitor;->fn:Ljava/util/function/BiFunction;

    invoke-interface {v0, p1, p2}, Ljava/util/function/BiFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_3

    .line 518
    iput-object p1, p0, Lcom/github/javaparser/ast/visitor/NodeFinderVisitor;->selectedNode:Lcom/github/javaparser/ast/Node;

    :cond_3
    return-void
.end method

.method public bridge synthetic visit(Lcom/github/javaparser/ast/expr/MemberValuePair;Ljava/lang/Object;)V
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
    check-cast p2, Lcom/github/javaparser/Range;

    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/NodeFinderVisitor;->visit(Lcom/github/javaparser/ast/expr/MemberValuePair;Lcom/github/javaparser/Range;)V

    return-void
.end method

.method public visit(Lcom/github/javaparser/ast/expr/MethodCallExpr;Lcom/github/javaparser/Range;)V
    .locals 1
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
    invoke-virtual {p1}, Lcom/github/javaparser/ast/expr/MethodCallExpr;->getArguments()Lcom/github/javaparser/ast/NodeList;

    move-result-object v0

    invoke-virtual {v0, p0, p2}, Lcom/github/javaparser/ast/NodeList;->accept(Lcom/github/javaparser/ast/visitor/VoidVisitor;Ljava/lang/Object;)V

    .line 520
    iget-object v0, p0, Lcom/github/javaparser/ast/visitor/NodeFinderVisitor;->selectedNode:Lcom/github/javaparser/ast/Node;

    if-eqz v0, :cond_0

    return-void

    .line 521
    :cond_0
    invoke-virtual {p1}, Lcom/github/javaparser/ast/expr/MethodCallExpr;->getName()Lcom/github/javaparser/ast/expr/SimpleName;

    move-result-object v0

    invoke-virtual {v0, p0, p2}, Lcom/github/javaparser/ast/expr/SimpleName;->accept(Lcom/github/javaparser/ast/visitor/VoidVisitor;Ljava/lang/Object;)V

    .line 522
    iget-object v0, p0, Lcom/github/javaparser/ast/visitor/NodeFinderVisitor;->selectedNode:Lcom/github/javaparser/ast/Node;

    if-eqz v0, :cond_1

    return-void

    .line 523
    :cond_1
    invoke-virtual {p1}, Lcom/github/javaparser/ast/expr/MethodCallExpr;->getScope()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Optional;->isPresent()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 524
    invoke-virtual {p1}, Lcom/github/javaparser/ast/expr/MethodCallExpr;->getScope()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/github/javaparser/ast/expr/Expression;

    invoke-interface {v0, p0, p2}, Lcom/github/javaparser/ast/visitor/Visitable;->accept(Lcom/github/javaparser/ast/visitor/VoidVisitor;Ljava/lang/Object;)V

    .line 525
    iget-object v0, p0, Lcom/github/javaparser/ast/visitor/NodeFinderVisitor;->selectedNode:Lcom/github/javaparser/ast/Node;

    if-eqz v0, :cond_2

    return-void

    .line 526
    :cond_2
    invoke-virtual {p1}, Lcom/github/javaparser/ast/expr/MethodCallExpr;->getTypeArguments()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Optional;->isPresent()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 527
    invoke-virtual {p1}, Lcom/github/javaparser/ast/expr/MethodCallExpr;->getTypeArguments()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/github/javaparser/ast/NodeList;

    invoke-virtual {v0, p0, p2}, Lcom/github/javaparser/ast/NodeList;->accept(Lcom/github/javaparser/ast/visitor/VoidVisitor;Ljava/lang/Object;)V

    .line 528
    iget-object v0, p0, Lcom/github/javaparser/ast/visitor/NodeFinderVisitor;->selectedNode:Lcom/github/javaparser/ast/Node;

    if-eqz v0, :cond_3

    return-void

    .line 529
    :cond_3
    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getComment()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Optional;->isPresent()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 530
    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getComment()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/github/javaparser/ast/comments/Comment;

    invoke-interface {v0, p0, p2}, Lcom/github/javaparser/ast/visitor/Visitable;->accept(Lcom/github/javaparser/ast/visitor/VoidVisitor;Ljava/lang/Object;)V

    .line 531
    iget-object v0, p0, Lcom/github/javaparser/ast/visitor/NodeFinderVisitor;->selectedNode:Lcom/github/javaparser/ast/Node;

    if-eqz v0, :cond_4

    return-void

    .line 532
    :cond_4
    sget-object v0, Lcom/github/javaparser/ast/visitor/NodeFinderVisitor;->fn:Ljava/util/function/BiFunction;

    invoke-interface {v0, p1, p2}, Ljava/util/function/BiFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_5

    .line 533
    iput-object p1, p0, Lcom/github/javaparser/ast/visitor/NodeFinderVisitor;->selectedNode:Lcom/github/javaparser/ast/Node;

    :cond_5
    return-void
.end method

.method public bridge synthetic visit(Lcom/github/javaparser/ast/expr/MethodCallExpr;Ljava/lang/Object;)V
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
    check-cast p2, Lcom/github/javaparser/Range;

    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/NodeFinderVisitor;->visit(Lcom/github/javaparser/ast/expr/MethodCallExpr;Lcom/github/javaparser/Range;)V

    return-void
.end method

.method public visit(Lcom/github/javaparser/ast/expr/MethodReferenceExpr;Lcom/github/javaparser/Range;)V
    .locals 1
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

    .line 868
    invoke-virtual {p1}, Lcom/github/javaparser/ast/expr/MethodReferenceExpr;->getScope()Lcom/github/javaparser/ast/expr/Expression;

    move-result-object v0

    invoke-interface {v0, p0, p2}, Lcom/github/javaparser/ast/visitor/Visitable;->accept(Lcom/github/javaparser/ast/visitor/VoidVisitor;Ljava/lang/Object;)V

    .line 869
    iget-object v0, p0, Lcom/github/javaparser/ast/visitor/NodeFinderVisitor;->selectedNode:Lcom/github/javaparser/ast/Node;

    if-eqz v0, :cond_0

    return-void

    .line 870
    :cond_0
    invoke-virtual {p1}, Lcom/github/javaparser/ast/expr/MethodReferenceExpr;->getTypeArguments()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Optional;->isPresent()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 871
    invoke-virtual {p1}, Lcom/github/javaparser/ast/expr/MethodReferenceExpr;->getTypeArguments()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/github/javaparser/ast/NodeList;

    invoke-virtual {v0, p0, p2}, Lcom/github/javaparser/ast/NodeList;->accept(Lcom/github/javaparser/ast/visitor/VoidVisitor;Ljava/lang/Object;)V

    .line 872
    iget-object v0, p0, Lcom/github/javaparser/ast/visitor/NodeFinderVisitor;->selectedNode:Lcom/github/javaparser/ast/Node;

    if-eqz v0, :cond_1

    return-void

    .line 873
    :cond_1
    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getComment()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Optional;->isPresent()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 874
    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getComment()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/github/javaparser/ast/comments/Comment;

    invoke-interface {v0, p0, p2}, Lcom/github/javaparser/ast/visitor/Visitable;->accept(Lcom/github/javaparser/ast/visitor/VoidVisitor;Ljava/lang/Object;)V

    .line 875
    iget-object v0, p0, Lcom/github/javaparser/ast/visitor/NodeFinderVisitor;->selectedNode:Lcom/github/javaparser/ast/Node;

    if-eqz v0, :cond_2

    return-void

    .line 876
    :cond_2
    sget-object v0, Lcom/github/javaparser/ast/visitor/NodeFinderVisitor;->fn:Ljava/util/function/BiFunction;

    invoke-interface {v0, p1, p2}, Ljava/util/function/BiFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_3

    .line 877
    iput-object p1, p0, Lcom/github/javaparser/ast/visitor/NodeFinderVisitor;->selectedNode:Lcom/github/javaparser/ast/Node;

    :cond_3
    return-void
.end method

.method public bridge synthetic visit(Lcom/github/javaparser/ast/expr/MethodReferenceExpr;Ljava/lang/Object;)V
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
    check-cast p2, Lcom/github/javaparser/Range;

    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/NodeFinderVisitor;->visit(Lcom/github/javaparser/ast/expr/MethodReferenceExpr;Lcom/github/javaparser/Range;)V

    return-void
.end method

.method public visit(Lcom/github/javaparser/ast/expr/Name;Lcom/github/javaparser/Range;)V
    .locals 1
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

    .line 629
    invoke-virtual {p1}, Lcom/github/javaparser/ast/expr/Name;->getQualifier()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Optional;->isPresent()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 630
    invoke-virtual {p1}, Lcom/github/javaparser/ast/expr/Name;->getQualifier()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/github/javaparser/ast/expr/Name;

    invoke-virtual {v0, p0, p2}, Lcom/github/javaparser/ast/expr/Name;->accept(Lcom/github/javaparser/ast/visitor/VoidVisitor;Ljava/lang/Object;)V

    .line 631
    iget-object v0, p0, Lcom/github/javaparser/ast/visitor/NodeFinderVisitor;->selectedNode:Lcom/github/javaparser/ast/Node;

    if-eqz v0, :cond_0

    return-void

    .line 632
    :cond_0
    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getComment()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Optional;->isPresent()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 633
    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getComment()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/github/javaparser/ast/comments/Comment;

    invoke-interface {v0, p0, p2}, Lcom/github/javaparser/ast/visitor/Visitable;->accept(Lcom/github/javaparser/ast/visitor/VoidVisitor;Ljava/lang/Object;)V

    .line 634
    iget-object v0, p0, Lcom/github/javaparser/ast/visitor/NodeFinderVisitor;->selectedNode:Lcom/github/javaparser/ast/Node;

    if-eqz v0, :cond_1

    return-void

    .line 635
    :cond_1
    sget-object v0, Lcom/github/javaparser/ast/visitor/NodeFinderVisitor;->fn:Ljava/util/function/BiFunction;

    invoke-interface {v0, p1, p2}, Ljava/util/function/BiFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_2

    .line 636
    iput-object p1, p0, Lcom/github/javaparser/ast/visitor/NodeFinderVisitor;->selectedNode:Lcom/github/javaparser/ast/Node;

    :cond_2
    return-void
.end method

.method public bridge synthetic visit(Lcom/github/javaparser/ast/expr/Name;Ljava/lang/Object;)V
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
    check-cast p2, Lcom/github/javaparser/Range;

    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/NodeFinderVisitor;->visit(Lcom/github/javaparser/ast/expr/Name;Lcom/github/javaparser/Range;)V

    return-void
.end method

.method public visit(Lcom/github/javaparser/ast/expr/NameExpr;Lcom/github/javaparser/Range;)V
    .locals 1
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

    .line 559
    invoke-virtual {p1}, Lcom/github/javaparser/ast/expr/NameExpr;->getName()Lcom/github/javaparser/ast/expr/SimpleName;

    move-result-object v0

    invoke-virtual {v0, p0, p2}, Lcom/github/javaparser/ast/expr/SimpleName;->accept(Lcom/github/javaparser/ast/visitor/VoidVisitor;Ljava/lang/Object;)V

    .line 560
    iget-object v0, p0, Lcom/github/javaparser/ast/visitor/NodeFinderVisitor;->selectedNode:Lcom/github/javaparser/ast/Node;

    if-eqz v0, :cond_0

    return-void

    .line 561
    :cond_0
    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getComment()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Optional;->isPresent()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 562
    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getComment()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/github/javaparser/ast/comments/Comment;

    invoke-interface {v0, p0, p2}, Lcom/github/javaparser/ast/visitor/Visitable;->accept(Lcom/github/javaparser/ast/visitor/VoidVisitor;Ljava/lang/Object;)V

    .line 563
    iget-object v0, p0, Lcom/github/javaparser/ast/visitor/NodeFinderVisitor;->selectedNode:Lcom/github/javaparser/ast/Node;

    if-eqz v0, :cond_1

    return-void

    .line 564
    :cond_1
    sget-object v0, Lcom/github/javaparser/ast/visitor/NodeFinderVisitor;->fn:Ljava/util/function/BiFunction;

    invoke-interface {v0, p1, p2}, Ljava/util/function/BiFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_2

    .line 565
    iput-object p1, p0, Lcom/github/javaparser/ast/visitor/NodeFinderVisitor;->selectedNode:Lcom/github/javaparser/ast/Node;

    :cond_2
    return-void
.end method

.method public bridge synthetic visit(Lcom/github/javaparser/ast/expr/NameExpr;Ljava/lang/Object;)V
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
    check-cast p2, Lcom/github/javaparser/Range;

    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/NodeFinderVisitor;->visit(Lcom/github/javaparser/ast/expr/NameExpr;Lcom/github/javaparser/Range;)V

    return-void
.end method

.method public visit(Lcom/github/javaparser/ast/expr/NormalAnnotationExpr;Lcom/github/javaparser/Range;)V
    .locals 1
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

    .line 566
    invoke-virtual {p1}, Lcom/github/javaparser/ast/expr/NormalAnnotationExpr;->getPairs()Lcom/github/javaparser/ast/NodeList;

    move-result-object v0

    invoke-virtual {v0, p0, p2}, Lcom/github/javaparser/ast/NodeList;->accept(Lcom/github/javaparser/ast/visitor/VoidVisitor;Ljava/lang/Object;)V

    .line 567
    iget-object v0, p0, Lcom/github/javaparser/ast/visitor/NodeFinderVisitor;->selectedNode:Lcom/github/javaparser/ast/Node;

    if-eqz v0, :cond_0

    return-void

    .line 568
    :cond_0
    invoke-virtual {p1}, Lcom/github/javaparser/ast/expr/AnnotationExpr;->getName()Lcom/github/javaparser/ast/expr/Name;

    move-result-object v0

    invoke-virtual {v0, p0, p2}, Lcom/github/javaparser/ast/expr/Name;->accept(Lcom/github/javaparser/ast/visitor/VoidVisitor;Ljava/lang/Object;)V

    .line 569
    iget-object v0, p0, Lcom/github/javaparser/ast/visitor/NodeFinderVisitor;->selectedNode:Lcom/github/javaparser/ast/Node;

    if-eqz v0, :cond_1

    return-void

    .line 570
    :cond_1
    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getComment()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Optional;->isPresent()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 571
    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getComment()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/github/javaparser/ast/comments/Comment;

    invoke-interface {v0, p0, p2}, Lcom/github/javaparser/ast/visitor/Visitable;->accept(Lcom/github/javaparser/ast/visitor/VoidVisitor;Ljava/lang/Object;)V

    .line 572
    iget-object v0, p0, Lcom/github/javaparser/ast/visitor/NodeFinderVisitor;->selectedNode:Lcom/github/javaparser/ast/Node;

    if-eqz v0, :cond_2

    return-void

    .line 573
    :cond_2
    sget-object v0, Lcom/github/javaparser/ast/visitor/NodeFinderVisitor;->fn:Ljava/util/function/BiFunction;

    invoke-interface {v0, p1, p2}, Ljava/util/function/BiFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_3

    .line 574
    iput-object p1, p0, Lcom/github/javaparser/ast/visitor/NodeFinderVisitor;->selectedNode:Lcom/github/javaparser/ast/Node;

    :cond_3
    return-void
.end method

.method public bridge synthetic visit(Lcom/github/javaparser/ast/expr/NormalAnnotationExpr;Ljava/lang/Object;)V
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
    check-cast p2, Lcom/github/javaparser/Range;

    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/NodeFinderVisitor;->visit(Lcom/github/javaparser/ast/expr/NormalAnnotationExpr;Lcom/github/javaparser/Range;)V

    return-void
.end method

.method public visit(Lcom/github/javaparser/ast/expr/NullLiteralExpr;Lcom/github/javaparser/Range;)V
    .locals 1
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

    .line 575
    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getComment()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Optional;->isPresent()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 576
    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getComment()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/github/javaparser/ast/comments/Comment;

    invoke-interface {v0, p0, p2}, Lcom/github/javaparser/ast/visitor/Visitable;->accept(Lcom/github/javaparser/ast/visitor/VoidVisitor;Ljava/lang/Object;)V

    .line 577
    iget-object v0, p0, Lcom/github/javaparser/ast/visitor/NodeFinderVisitor;->selectedNode:Lcom/github/javaparser/ast/Node;

    if-eqz v0, :cond_0

    return-void

    .line 578
    :cond_0
    sget-object v0, Lcom/github/javaparser/ast/visitor/NodeFinderVisitor;->fn:Ljava/util/function/BiFunction;

    invoke-interface {v0, p1, p2}, Ljava/util/function/BiFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_1

    .line 579
    iput-object p1, p0, Lcom/github/javaparser/ast/visitor/NodeFinderVisitor;->selectedNode:Lcom/github/javaparser/ast/Node;

    :cond_1
    return-void
.end method

.method public bridge synthetic visit(Lcom/github/javaparser/ast/expr/NullLiteralExpr;Ljava/lang/Object;)V
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
    check-cast p2, Lcom/github/javaparser/Range;

    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/NodeFinderVisitor;->visit(Lcom/github/javaparser/ast/expr/NullLiteralExpr;Lcom/github/javaparser/Range;)V

    return-void
.end method

.method public visit(Lcom/github/javaparser/ast/expr/ObjectCreationExpr;Lcom/github/javaparser/Range;)V
    .locals 1
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

    .line 580
    invoke-virtual {p1}, Lcom/github/javaparser/ast/expr/ObjectCreationExpr;->getAnonymousClassBody()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Optional;->isPresent()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 581
    invoke-virtual {p1}, Lcom/github/javaparser/ast/expr/ObjectCreationExpr;->getAnonymousClassBody()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/github/javaparser/ast/NodeList;

    invoke-virtual {v0, p0, p2}, Lcom/github/javaparser/ast/NodeList;->accept(Lcom/github/javaparser/ast/visitor/VoidVisitor;Ljava/lang/Object;)V

    .line 582
    iget-object v0, p0, Lcom/github/javaparser/ast/visitor/NodeFinderVisitor;->selectedNode:Lcom/github/javaparser/ast/Node;

    if-eqz v0, :cond_0

    return-void

    .line 583
    :cond_0
    invoke-virtual {p1}, Lcom/github/javaparser/ast/expr/ObjectCreationExpr;->getArguments()Lcom/github/javaparser/ast/NodeList;

    move-result-object v0

    invoke-virtual {v0, p0, p2}, Lcom/github/javaparser/ast/NodeList;->accept(Lcom/github/javaparser/ast/visitor/VoidVisitor;Ljava/lang/Object;)V

    .line 584
    iget-object v0, p0, Lcom/github/javaparser/ast/visitor/NodeFinderVisitor;->selectedNode:Lcom/github/javaparser/ast/Node;

    if-eqz v0, :cond_1

    return-void

    .line 585
    :cond_1
    invoke-virtual {p1}, Lcom/github/javaparser/ast/expr/ObjectCreationExpr;->getScope()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Optional;->isPresent()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 586
    invoke-virtual {p1}, Lcom/github/javaparser/ast/expr/ObjectCreationExpr;->getScope()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/github/javaparser/ast/expr/Expression;

    invoke-interface {v0, p0, p2}, Lcom/github/javaparser/ast/visitor/Visitable;->accept(Lcom/github/javaparser/ast/visitor/VoidVisitor;Ljava/lang/Object;)V

    .line 587
    iget-object v0, p0, Lcom/github/javaparser/ast/visitor/NodeFinderVisitor;->selectedNode:Lcom/github/javaparser/ast/Node;

    if-eqz v0, :cond_2

    return-void

    .line 588
    :cond_2
    invoke-virtual {p1}, Lcom/github/javaparser/ast/expr/ObjectCreationExpr;->getType()Lcom/github/javaparser/ast/type/ClassOrInterfaceType;

    move-result-object v0

    invoke-virtual {v0, p0, p2}, Lcom/github/javaparser/ast/type/ClassOrInterfaceType;->accept(Lcom/github/javaparser/ast/visitor/VoidVisitor;Ljava/lang/Object;)V

    .line 589
    iget-object v0, p0, Lcom/github/javaparser/ast/visitor/NodeFinderVisitor;->selectedNode:Lcom/github/javaparser/ast/Node;

    if-eqz v0, :cond_3

    return-void

    .line 590
    :cond_3
    invoke-virtual {p1}, Lcom/github/javaparser/ast/expr/ObjectCreationExpr;->getTypeArguments()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Optional;->isPresent()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 591
    invoke-virtual {p1}, Lcom/github/javaparser/ast/expr/ObjectCreationExpr;->getTypeArguments()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/github/javaparser/ast/NodeList;

    invoke-virtual {v0, p0, p2}, Lcom/github/javaparser/ast/NodeList;->accept(Lcom/github/javaparser/ast/visitor/VoidVisitor;Ljava/lang/Object;)V

    .line 592
    iget-object v0, p0, Lcom/github/javaparser/ast/visitor/NodeFinderVisitor;->selectedNode:Lcom/github/javaparser/ast/Node;

    if-eqz v0, :cond_4

    return-void

    .line 593
    :cond_4
    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getComment()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Optional;->isPresent()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 594
    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getComment()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/github/javaparser/ast/comments/Comment;

    invoke-interface {v0, p0, p2}, Lcom/github/javaparser/ast/visitor/Visitable;->accept(Lcom/github/javaparser/ast/visitor/VoidVisitor;Ljava/lang/Object;)V

    .line 595
    iget-object v0, p0, Lcom/github/javaparser/ast/visitor/NodeFinderVisitor;->selectedNode:Lcom/github/javaparser/ast/Node;

    if-eqz v0, :cond_5

    return-void

    .line 596
    :cond_5
    sget-object v0, Lcom/github/javaparser/ast/visitor/NodeFinderVisitor;->fn:Ljava/util/function/BiFunction;

    invoke-interface {v0, p1, p2}, Ljava/util/function/BiFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_6

    .line 597
    iput-object p1, p0, Lcom/github/javaparser/ast/visitor/NodeFinderVisitor;->selectedNode:Lcom/github/javaparser/ast/Node;

    :cond_6
    return-void
.end method

.method public bridge synthetic visit(Lcom/github/javaparser/ast/expr/ObjectCreationExpr;Ljava/lang/Object;)V
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
    check-cast p2, Lcom/github/javaparser/Range;

    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/NodeFinderVisitor;->visit(Lcom/github/javaparser/ast/expr/ObjectCreationExpr;Lcom/github/javaparser/Range;)V

    return-void
.end method

.method public visit(Lcom/github/javaparser/ast/expr/SimpleName;Lcom/github/javaparser/Range;)V
    .locals 1
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

    .line 637
    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getComment()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Optional;->isPresent()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 638
    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getComment()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/github/javaparser/ast/comments/Comment;

    invoke-interface {v0, p0, p2}, Lcom/github/javaparser/ast/visitor/Visitable;->accept(Lcom/github/javaparser/ast/visitor/VoidVisitor;Ljava/lang/Object;)V

    .line 639
    iget-object v0, p0, Lcom/github/javaparser/ast/visitor/NodeFinderVisitor;->selectedNode:Lcom/github/javaparser/ast/Node;

    if-eqz v0, :cond_0

    return-void

    .line 640
    :cond_0
    sget-object v0, Lcom/github/javaparser/ast/visitor/NodeFinderVisitor;->fn:Ljava/util/function/BiFunction;

    invoke-interface {v0, p1, p2}, Ljava/util/function/BiFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_1

    .line 641
    iput-object p1, p0, Lcom/github/javaparser/ast/visitor/NodeFinderVisitor;->selectedNode:Lcom/github/javaparser/ast/Node;

    :cond_1
    return-void
.end method

.method public bridge synthetic visit(Lcom/github/javaparser/ast/expr/SimpleName;Ljava/lang/Object;)V
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
    check-cast p2, Lcom/github/javaparser/Range;

    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/NodeFinderVisitor;->visit(Lcom/github/javaparser/ast/expr/SimpleName;Lcom/github/javaparser/Range;)V

    return-void
.end method

.method public visit(Lcom/github/javaparser/ast/expr/SingleMemberAnnotationExpr;Lcom/github/javaparser/Range;)V
    .locals 1
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

    .line 687
    invoke-virtual {p1}, Lcom/github/javaparser/ast/expr/SingleMemberAnnotationExpr;->getMemberValue()Lcom/github/javaparser/ast/expr/Expression;

    move-result-object v0

    invoke-interface {v0, p0, p2}, Lcom/github/javaparser/ast/visitor/Visitable;->accept(Lcom/github/javaparser/ast/visitor/VoidVisitor;Ljava/lang/Object;)V

    .line 688
    iget-object v0, p0, Lcom/github/javaparser/ast/visitor/NodeFinderVisitor;->selectedNode:Lcom/github/javaparser/ast/Node;

    if-eqz v0, :cond_0

    return-void

    .line 689
    :cond_0
    invoke-virtual {p1}, Lcom/github/javaparser/ast/expr/AnnotationExpr;->getName()Lcom/github/javaparser/ast/expr/Name;

    move-result-object v0

    invoke-virtual {v0, p0, p2}, Lcom/github/javaparser/ast/expr/Name;->accept(Lcom/github/javaparser/ast/visitor/VoidVisitor;Ljava/lang/Object;)V

    .line 690
    iget-object v0, p0, Lcom/github/javaparser/ast/visitor/NodeFinderVisitor;->selectedNode:Lcom/github/javaparser/ast/Node;

    if-eqz v0, :cond_1

    return-void

    .line 691
    :cond_1
    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getComment()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Optional;->isPresent()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 692
    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getComment()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/github/javaparser/ast/comments/Comment;

    invoke-interface {v0, p0, p2}, Lcom/github/javaparser/ast/visitor/Visitable;->accept(Lcom/github/javaparser/ast/visitor/VoidVisitor;Ljava/lang/Object;)V

    .line 693
    iget-object v0, p0, Lcom/github/javaparser/ast/visitor/NodeFinderVisitor;->selectedNode:Lcom/github/javaparser/ast/Node;

    if-eqz v0, :cond_2

    return-void

    .line 694
    :cond_2
    sget-object v0, Lcom/github/javaparser/ast/visitor/NodeFinderVisitor;->fn:Ljava/util/function/BiFunction;

    invoke-interface {v0, p1, p2}, Ljava/util/function/BiFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_3

    .line 695
    iput-object p1, p0, Lcom/github/javaparser/ast/visitor/NodeFinderVisitor;->selectedNode:Lcom/github/javaparser/ast/Node;

    :cond_3
    return-void
.end method

.method public bridge synthetic visit(Lcom/github/javaparser/ast/expr/SingleMemberAnnotationExpr;Ljava/lang/Object;)V
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
    check-cast p2, Lcom/github/javaparser/Range;

    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/NodeFinderVisitor;->visit(Lcom/github/javaparser/ast/expr/SingleMemberAnnotationExpr;Lcom/github/javaparser/Range;)V

    return-void
.end method

.method public visit(Lcom/github/javaparser/ast/expr/StringLiteralExpr;Lcom/github/javaparser/Range;)V
    .locals 1
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
    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getComment()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Optional;->isPresent()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 697
    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getComment()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/github/javaparser/ast/comments/Comment;

    invoke-interface {v0, p0, p2}, Lcom/github/javaparser/ast/visitor/Visitable;->accept(Lcom/github/javaparser/ast/visitor/VoidVisitor;Ljava/lang/Object;)V

    .line 698
    iget-object v0, p0, Lcom/github/javaparser/ast/visitor/NodeFinderVisitor;->selectedNode:Lcom/github/javaparser/ast/Node;

    if-eqz v0, :cond_0

    return-void

    .line 699
    :cond_0
    sget-object v0, Lcom/github/javaparser/ast/visitor/NodeFinderVisitor;->fn:Ljava/util/function/BiFunction;

    invoke-interface {v0, p1, p2}, Ljava/util/function/BiFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_1

    .line 700
    iput-object p1, p0, Lcom/github/javaparser/ast/visitor/NodeFinderVisitor;->selectedNode:Lcom/github/javaparser/ast/Node;

    :cond_1
    return-void
.end method

.method public bridge synthetic visit(Lcom/github/javaparser/ast/expr/StringLiteralExpr;Ljava/lang/Object;)V
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
    check-cast p2, Lcom/github/javaparser/Range;

    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/NodeFinderVisitor;->visit(Lcom/github/javaparser/ast/expr/StringLiteralExpr;Lcom/github/javaparser/Range;)V

    return-void
.end method

.method public visit(Lcom/github/javaparser/ast/expr/SuperExpr;Lcom/github/javaparser/Range;)V
    .locals 1
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

    .line 701
    invoke-virtual {p1}, Lcom/github/javaparser/ast/expr/SuperExpr;->getTypeName()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Optional;->isPresent()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 702
    invoke-virtual {p1}, Lcom/github/javaparser/ast/expr/SuperExpr;->getTypeName()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/github/javaparser/ast/expr/Name;

    invoke-virtual {v0, p0, p2}, Lcom/github/javaparser/ast/expr/Name;->accept(Lcom/github/javaparser/ast/visitor/VoidVisitor;Ljava/lang/Object;)V

    .line 703
    iget-object v0, p0, Lcom/github/javaparser/ast/visitor/NodeFinderVisitor;->selectedNode:Lcom/github/javaparser/ast/Node;

    if-eqz v0, :cond_0

    return-void

    .line 704
    :cond_0
    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getComment()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Optional;->isPresent()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 705
    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getComment()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/github/javaparser/ast/comments/Comment;

    invoke-interface {v0, p0, p2}, Lcom/github/javaparser/ast/visitor/Visitable;->accept(Lcom/github/javaparser/ast/visitor/VoidVisitor;Ljava/lang/Object;)V

    .line 706
    iget-object v0, p0, Lcom/github/javaparser/ast/visitor/NodeFinderVisitor;->selectedNode:Lcom/github/javaparser/ast/Node;

    if-eqz v0, :cond_1

    return-void

    .line 707
    :cond_1
    sget-object v0, Lcom/github/javaparser/ast/visitor/NodeFinderVisitor;->fn:Ljava/util/function/BiFunction;

    invoke-interface {v0, p1, p2}, Ljava/util/function/BiFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_2

    .line 708
    iput-object p1, p0, Lcom/github/javaparser/ast/visitor/NodeFinderVisitor;->selectedNode:Lcom/github/javaparser/ast/Node;

    :cond_2
    return-void
.end method

.method public bridge synthetic visit(Lcom/github/javaparser/ast/expr/SuperExpr;Ljava/lang/Object;)V
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
    check-cast p2, Lcom/github/javaparser/Range;

    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/NodeFinderVisitor;->visit(Lcom/github/javaparser/ast/expr/SuperExpr;Lcom/github/javaparser/Range;)V

    return-void
.end method

.method public visit(Lcom/github/javaparser/ast/expr/SwitchExpr;Lcom/github/javaparser/Range;)V
    .locals 1
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

    .line 986
    invoke-virtual {p1}, Lcom/github/javaparser/ast/expr/SwitchExpr;->getEntries()Lcom/github/javaparser/ast/NodeList;

    move-result-object v0

    invoke-virtual {v0, p0, p2}, Lcom/github/javaparser/ast/NodeList;->accept(Lcom/github/javaparser/ast/visitor/VoidVisitor;Ljava/lang/Object;)V

    .line 987
    iget-object v0, p0, Lcom/github/javaparser/ast/visitor/NodeFinderVisitor;->selectedNode:Lcom/github/javaparser/ast/Node;

    if-eqz v0, :cond_0

    return-void

    .line 988
    :cond_0
    invoke-virtual {p1}, Lcom/github/javaparser/ast/expr/SwitchExpr;->getSelector()Lcom/github/javaparser/ast/expr/Expression;

    move-result-object v0

    invoke-interface {v0, p0, p2}, Lcom/github/javaparser/ast/visitor/Visitable;->accept(Lcom/github/javaparser/ast/visitor/VoidVisitor;Ljava/lang/Object;)V

    .line 989
    iget-object v0, p0, Lcom/github/javaparser/ast/visitor/NodeFinderVisitor;->selectedNode:Lcom/github/javaparser/ast/Node;

    if-eqz v0, :cond_1

    return-void

    .line 990
    :cond_1
    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getComment()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Optional;->isPresent()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 991
    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getComment()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/github/javaparser/ast/comments/Comment;

    invoke-interface {v0, p0, p2}, Lcom/github/javaparser/ast/visitor/Visitable;->accept(Lcom/github/javaparser/ast/visitor/VoidVisitor;Ljava/lang/Object;)V

    .line 992
    iget-object v0, p0, Lcom/github/javaparser/ast/visitor/NodeFinderVisitor;->selectedNode:Lcom/github/javaparser/ast/Node;

    if-eqz v0, :cond_2

    return-void

    .line 993
    :cond_2
    sget-object v0, Lcom/github/javaparser/ast/visitor/NodeFinderVisitor;->fn:Ljava/util/function/BiFunction;

    invoke-interface {v0, p1, p2}, Ljava/util/function/BiFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_3

    .line 994
    iput-object p1, p0, Lcom/github/javaparser/ast/visitor/NodeFinderVisitor;->selectedNode:Lcom/github/javaparser/ast/Node;

    :cond_3
    return-void
.end method

.method public bridge synthetic visit(Lcom/github/javaparser/ast/expr/SwitchExpr;Ljava/lang/Object;)V
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
    check-cast p2, Lcom/github/javaparser/Range;

    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/NodeFinderVisitor;->visit(Lcom/github/javaparser/ast/expr/SwitchExpr;Lcom/github/javaparser/Range;)V

    return-void
.end method

.method public visit(Lcom/github/javaparser/ast/expr/TextBlockLiteralExpr;Lcom/github/javaparser/Range;)V
    .locals 1
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

    .line 1002
    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getComment()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Optional;->isPresent()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1003
    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getComment()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/github/javaparser/ast/comments/Comment;

    invoke-interface {v0, p0, p2}, Lcom/github/javaparser/ast/visitor/Visitable;->accept(Lcom/github/javaparser/ast/visitor/VoidVisitor;Ljava/lang/Object;)V

    .line 1004
    iget-object v0, p0, Lcom/github/javaparser/ast/visitor/NodeFinderVisitor;->selectedNode:Lcom/github/javaparser/ast/Node;

    if-eqz v0, :cond_0

    return-void

    .line 1005
    :cond_0
    sget-object v0, Lcom/github/javaparser/ast/visitor/NodeFinderVisitor;->fn:Ljava/util/function/BiFunction;

    invoke-interface {v0, p1, p2}, Ljava/util/function/BiFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_1

    .line 1006
    iput-object p1, p0, Lcom/github/javaparser/ast/visitor/NodeFinderVisitor;->selectedNode:Lcom/github/javaparser/ast/Node;

    :cond_1
    return-void
.end method

.method public bridge synthetic visit(Lcom/github/javaparser/ast/expr/TextBlockLiteralExpr;Ljava/lang/Object;)V
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
    check-cast p2, Lcom/github/javaparser/Range;

    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/NodeFinderVisitor;->visit(Lcom/github/javaparser/ast/expr/TextBlockLiteralExpr;Lcom/github/javaparser/Range;)V

    return-void
.end method

.method public visit(Lcom/github/javaparser/ast/expr/ThisExpr;Lcom/github/javaparser/Range;)V
    .locals 1
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

    .line 739
    invoke-virtual {p1}, Lcom/github/javaparser/ast/expr/ThisExpr;->getTypeName()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Optional;->isPresent()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 740
    invoke-virtual {p1}, Lcom/github/javaparser/ast/expr/ThisExpr;->getTypeName()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/github/javaparser/ast/expr/Name;

    invoke-virtual {v0, p0, p2}, Lcom/github/javaparser/ast/expr/Name;->accept(Lcom/github/javaparser/ast/visitor/VoidVisitor;Ljava/lang/Object;)V

    .line 741
    iget-object v0, p0, Lcom/github/javaparser/ast/visitor/NodeFinderVisitor;->selectedNode:Lcom/github/javaparser/ast/Node;

    if-eqz v0, :cond_0

    return-void

    .line 742
    :cond_0
    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getComment()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Optional;->isPresent()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 743
    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getComment()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/github/javaparser/ast/comments/Comment;

    invoke-interface {v0, p0, p2}, Lcom/github/javaparser/ast/visitor/Visitable;->accept(Lcom/github/javaparser/ast/visitor/VoidVisitor;Ljava/lang/Object;)V

    .line 744
    iget-object v0, p0, Lcom/github/javaparser/ast/visitor/NodeFinderVisitor;->selectedNode:Lcom/github/javaparser/ast/Node;

    if-eqz v0, :cond_1

    return-void

    .line 745
    :cond_1
    sget-object v0, Lcom/github/javaparser/ast/visitor/NodeFinderVisitor;->fn:Ljava/util/function/BiFunction;

    invoke-interface {v0, p1, p2}, Ljava/util/function/BiFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_2

    .line 746
    iput-object p1, p0, Lcom/github/javaparser/ast/visitor/NodeFinderVisitor;->selectedNode:Lcom/github/javaparser/ast/Node;

    :cond_2
    return-void
.end method

.method public bridge synthetic visit(Lcom/github/javaparser/ast/expr/ThisExpr;Ljava/lang/Object;)V
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
    check-cast p2, Lcom/github/javaparser/Range;

    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/NodeFinderVisitor;->visit(Lcom/github/javaparser/ast/expr/ThisExpr;Lcom/github/javaparser/Range;)V

    return-void
.end method

.method public visit(Lcom/github/javaparser/ast/expr/TypeExpr;Lcom/github/javaparser/Range;)V
    .locals 1
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

    .line 878
    invoke-virtual {p1}, Lcom/github/javaparser/ast/expr/TypeExpr;->getType()Lcom/github/javaparser/ast/type/Type;

    move-result-object v0

    invoke-interface {v0, p0, p2}, Lcom/github/javaparser/ast/visitor/Visitable;->accept(Lcom/github/javaparser/ast/visitor/VoidVisitor;Ljava/lang/Object;)V

    .line 879
    iget-object v0, p0, Lcom/github/javaparser/ast/visitor/NodeFinderVisitor;->selectedNode:Lcom/github/javaparser/ast/Node;

    if-eqz v0, :cond_0

    return-void

    .line 880
    :cond_0
    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getComment()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Optional;->isPresent()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 881
    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getComment()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/github/javaparser/ast/comments/Comment;

    invoke-interface {v0, p0, p2}, Lcom/github/javaparser/ast/visitor/Visitable;->accept(Lcom/github/javaparser/ast/visitor/VoidVisitor;Ljava/lang/Object;)V

    .line 882
    iget-object v0, p0, Lcom/github/javaparser/ast/visitor/NodeFinderVisitor;->selectedNode:Lcom/github/javaparser/ast/Node;

    if-eqz v0, :cond_1

    return-void

    .line 883
    :cond_1
    sget-object v0, Lcom/github/javaparser/ast/visitor/NodeFinderVisitor;->fn:Ljava/util/function/BiFunction;

    invoke-interface {v0, p1, p2}, Ljava/util/function/BiFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_2

    .line 884
    iput-object p1, p0, Lcom/github/javaparser/ast/visitor/NodeFinderVisitor;->selectedNode:Lcom/github/javaparser/ast/Node;

    :cond_2
    return-void
.end method

.method public bridge synthetic visit(Lcom/github/javaparser/ast/expr/TypeExpr;Ljava/lang/Object;)V
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
    check-cast p2, Lcom/github/javaparser/Range;

    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/NodeFinderVisitor;->visit(Lcom/github/javaparser/ast/expr/TypeExpr;Lcom/github/javaparser/Range;)V

    return-void
.end method

.method public visit(Lcom/github/javaparser/ast/expr/TypePatternExpr;Lcom/github/javaparser/Range;)V
    .locals 1
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

    .line 1007
    invoke-virtual {p1}, Lcom/github/javaparser/ast/expr/TypePatternExpr;->getModifiers()Lcom/github/javaparser/ast/NodeList;

    move-result-object v0

    invoke-virtual {v0, p0, p2}, Lcom/github/javaparser/ast/NodeList;->accept(Lcom/github/javaparser/ast/visitor/VoidVisitor;Ljava/lang/Object;)V

    .line 1008
    iget-object v0, p0, Lcom/github/javaparser/ast/visitor/NodeFinderVisitor;->selectedNode:Lcom/github/javaparser/ast/Node;

    if-eqz v0, :cond_0

    return-void

    .line 1009
    :cond_0
    invoke-virtual {p1}, Lcom/github/javaparser/ast/expr/TypePatternExpr;->getName()Lcom/github/javaparser/ast/expr/SimpleName;

    move-result-object v0

    invoke-virtual {v0, p0, p2}, Lcom/github/javaparser/ast/expr/SimpleName;->accept(Lcom/github/javaparser/ast/visitor/VoidVisitor;Ljava/lang/Object;)V

    .line 1010
    iget-object v0, p0, Lcom/github/javaparser/ast/visitor/NodeFinderVisitor;->selectedNode:Lcom/github/javaparser/ast/Node;

    if-eqz v0, :cond_1

    return-void

    .line 1011
    :cond_1
    invoke-virtual {p1}, Lcom/github/javaparser/ast/expr/PatternExpr;->getType()Lcom/github/javaparser/ast/type/Type;

    move-result-object v0

    invoke-interface {v0, p0, p2}, Lcom/github/javaparser/ast/visitor/Visitable;->accept(Lcom/github/javaparser/ast/visitor/VoidVisitor;Ljava/lang/Object;)V

    .line 1012
    iget-object v0, p0, Lcom/github/javaparser/ast/visitor/NodeFinderVisitor;->selectedNode:Lcom/github/javaparser/ast/Node;

    if-eqz v0, :cond_2

    return-void

    .line 1013
    :cond_2
    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getComment()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Optional;->isPresent()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1014
    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getComment()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/github/javaparser/ast/comments/Comment;

    invoke-interface {v0, p0, p2}, Lcom/github/javaparser/ast/visitor/Visitable;->accept(Lcom/github/javaparser/ast/visitor/VoidVisitor;Ljava/lang/Object;)V

    .line 1015
    iget-object v0, p0, Lcom/github/javaparser/ast/visitor/NodeFinderVisitor;->selectedNode:Lcom/github/javaparser/ast/Node;

    if-eqz v0, :cond_3

    return-void

    .line 1016
    :cond_3
    sget-object v0, Lcom/github/javaparser/ast/visitor/NodeFinderVisitor;->fn:Ljava/util/function/BiFunction;

    invoke-interface {v0, p1, p2}, Ljava/util/function/BiFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_4

    .line 1017
    iput-object p1, p0, Lcom/github/javaparser/ast/visitor/NodeFinderVisitor;->selectedNode:Lcom/github/javaparser/ast/Node;

    :cond_4
    return-void
.end method

.method public bridge synthetic visit(Lcom/github/javaparser/ast/expr/TypePatternExpr;Ljava/lang/Object;)V
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
    check-cast p2, Lcom/github/javaparser/Range;

    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/NodeFinderVisitor;->visit(Lcom/github/javaparser/ast/expr/TypePatternExpr;Lcom/github/javaparser/Range;)V

    return-void
.end method

.method public visit(Lcom/github/javaparser/ast/expr/UnaryExpr;Lcom/github/javaparser/Range;)V
    .locals 1
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

    .line 793
    invoke-virtual {p1}, Lcom/github/javaparser/ast/expr/UnaryExpr;->getExpression()Lcom/github/javaparser/ast/expr/Expression;

    move-result-object v0

    invoke-interface {v0, p0, p2}, Lcom/github/javaparser/ast/visitor/Visitable;->accept(Lcom/github/javaparser/ast/visitor/VoidVisitor;Ljava/lang/Object;)V

    .line 794
    iget-object v0, p0, Lcom/github/javaparser/ast/visitor/NodeFinderVisitor;->selectedNode:Lcom/github/javaparser/ast/Node;

    if-eqz v0, :cond_0

    return-void

    .line 795
    :cond_0
    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getComment()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Optional;->isPresent()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 796
    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getComment()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/github/javaparser/ast/comments/Comment;

    invoke-interface {v0, p0, p2}, Lcom/github/javaparser/ast/visitor/Visitable;->accept(Lcom/github/javaparser/ast/visitor/VoidVisitor;Ljava/lang/Object;)V

    .line 797
    iget-object v0, p0, Lcom/github/javaparser/ast/visitor/NodeFinderVisitor;->selectedNode:Lcom/github/javaparser/ast/Node;

    if-eqz v0, :cond_1

    return-void

    .line 798
    :cond_1
    sget-object v0, Lcom/github/javaparser/ast/visitor/NodeFinderVisitor;->fn:Ljava/util/function/BiFunction;

    invoke-interface {v0, p1, p2}, Ljava/util/function/BiFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_2

    .line 799
    iput-object p1, p0, Lcom/github/javaparser/ast/visitor/NodeFinderVisitor;->selectedNode:Lcom/github/javaparser/ast/Node;

    :cond_2
    return-void
.end method

.method public bridge synthetic visit(Lcom/github/javaparser/ast/expr/UnaryExpr;Ljava/lang/Object;)V
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
    check-cast p2, Lcom/github/javaparser/Range;

    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/NodeFinderVisitor;->visit(Lcom/github/javaparser/ast/expr/UnaryExpr;Lcom/github/javaparser/Range;)V

    return-void
.end method

.method public visit(Lcom/github/javaparser/ast/expr/VariableDeclarationExpr;Lcom/github/javaparser/Range;)V
    .locals 1
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
    invoke-virtual {p1}, Lcom/github/javaparser/ast/expr/VariableDeclarationExpr;->getAnnotations()Lcom/github/javaparser/ast/NodeList;

    move-result-object v0

    invoke-virtual {v0, p0, p2}, Lcom/github/javaparser/ast/NodeList;->accept(Lcom/github/javaparser/ast/visitor/VoidVisitor;Ljava/lang/Object;)V

    .line 808
    iget-object v0, p0, Lcom/github/javaparser/ast/visitor/NodeFinderVisitor;->selectedNode:Lcom/github/javaparser/ast/Node;

    if-eqz v0, :cond_0

    return-void

    .line 809
    :cond_0
    invoke-virtual {p1}, Lcom/github/javaparser/ast/expr/VariableDeclarationExpr;->getModifiers()Lcom/github/javaparser/ast/NodeList;

    move-result-object v0

    invoke-virtual {v0, p0, p2}, Lcom/github/javaparser/ast/NodeList;->accept(Lcom/github/javaparser/ast/visitor/VoidVisitor;Ljava/lang/Object;)V

    .line 810
    iget-object v0, p0, Lcom/github/javaparser/ast/visitor/NodeFinderVisitor;->selectedNode:Lcom/github/javaparser/ast/Node;

    if-eqz v0, :cond_1

    return-void

    .line 811
    :cond_1
    invoke-virtual {p1}, Lcom/github/javaparser/ast/expr/VariableDeclarationExpr;->getVariables()Lcom/github/javaparser/ast/NodeList;

    move-result-object v0

    invoke-virtual {v0, p0, p2}, Lcom/github/javaparser/ast/NodeList;->accept(Lcom/github/javaparser/ast/visitor/VoidVisitor;Ljava/lang/Object;)V

    .line 812
    iget-object v0, p0, Lcom/github/javaparser/ast/visitor/NodeFinderVisitor;->selectedNode:Lcom/github/javaparser/ast/Node;

    if-eqz v0, :cond_2

    return-void

    .line 813
    :cond_2
    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getComment()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Optional;->isPresent()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 814
    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getComment()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/github/javaparser/ast/comments/Comment;

    invoke-interface {v0, p0, p2}, Lcom/github/javaparser/ast/visitor/Visitable;->accept(Lcom/github/javaparser/ast/visitor/VoidVisitor;Ljava/lang/Object;)V

    .line 815
    iget-object v0, p0, Lcom/github/javaparser/ast/visitor/NodeFinderVisitor;->selectedNode:Lcom/github/javaparser/ast/Node;

    if-eqz v0, :cond_3

    return-void

    .line 816
    :cond_3
    sget-object v0, Lcom/github/javaparser/ast/visitor/NodeFinderVisitor;->fn:Ljava/util/function/BiFunction;

    invoke-interface {v0, p1, p2}, Ljava/util/function/BiFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_4

    .line 817
    iput-object p1, p0, Lcom/github/javaparser/ast/visitor/NodeFinderVisitor;->selectedNode:Lcom/github/javaparser/ast/Node;

    :cond_4
    return-void
.end method

.method public bridge synthetic visit(Lcom/github/javaparser/ast/expr/VariableDeclarationExpr;Ljava/lang/Object;)V
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
    check-cast p2, Lcom/github/javaparser/Range;

    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/NodeFinderVisitor;->visit(Lcom/github/javaparser/ast/expr/VariableDeclarationExpr;Lcom/github/javaparser/Range;)V

    return-void
.end method

.method public visit(Lcom/github/javaparser/ast/modules/ModuleDeclaration;Lcom/github/javaparser/Range;)V
    .locals 1
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

    .line 904
    invoke-virtual {p1}, Lcom/github/javaparser/ast/modules/ModuleDeclaration;->getAnnotations()Lcom/github/javaparser/ast/NodeList;

    move-result-object v0

    invoke-virtual {v0, p0, p2}, Lcom/github/javaparser/ast/NodeList;->accept(Lcom/github/javaparser/ast/visitor/VoidVisitor;Ljava/lang/Object;)V

    .line 905
    iget-object v0, p0, Lcom/github/javaparser/ast/visitor/NodeFinderVisitor;->selectedNode:Lcom/github/javaparser/ast/Node;

    if-eqz v0, :cond_0

    return-void

    .line 906
    :cond_0
    invoke-virtual {p1}, Lcom/github/javaparser/ast/modules/ModuleDeclaration;->getDirectives()Lcom/github/javaparser/ast/NodeList;

    move-result-object v0

    invoke-virtual {v0, p0, p2}, Lcom/github/javaparser/ast/NodeList;->accept(Lcom/github/javaparser/ast/visitor/VoidVisitor;Ljava/lang/Object;)V

    .line 907
    iget-object v0, p0, Lcom/github/javaparser/ast/visitor/NodeFinderVisitor;->selectedNode:Lcom/github/javaparser/ast/Node;

    if-eqz v0, :cond_1

    return-void

    .line 908
    :cond_1
    invoke-virtual {p1}, Lcom/github/javaparser/ast/modules/ModuleDeclaration;->getName()Lcom/github/javaparser/ast/expr/Name;

    move-result-object v0

    invoke-virtual {v0, p0, p2}, Lcom/github/javaparser/ast/expr/Name;->accept(Lcom/github/javaparser/ast/visitor/VoidVisitor;Ljava/lang/Object;)V

    .line 909
    iget-object v0, p0, Lcom/github/javaparser/ast/visitor/NodeFinderVisitor;->selectedNode:Lcom/github/javaparser/ast/Node;

    if-eqz v0, :cond_2

    return-void

    .line 910
    :cond_2
    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getComment()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Optional;->isPresent()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 911
    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getComment()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/github/javaparser/ast/comments/Comment;

    invoke-interface {v0, p0, p2}, Lcom/github/javaparser/ast/visitor/Visitable;->accept(Lcom/github/javaparser/ast/visitor/VoidVisitor;Ljava/lang/Object;)V

    .line 912
    iget-object v0, p0, Lcom/github/javaparser/ast/visitor/NodeFinderVisitor;->selectedNode:Lcom/github/javaparser/ast/Node;

    if-eqz v0, :cond_3

    return-void

    .line 913
    :cond_3
    sget-object v0, Lcom/github/javaparser/ast/visitor/NodeFinderVisitor;->fn:Ljava/util/function/BiFunction;

    invoke-interface {v0, p1, p2}, Ljava/util/function/BiFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_4

    .line 914
    iput-object p1, p0, Lcom/github/javaparser/ast/visitor/NodeFinderVisitor;->selectedNode:Lcom/github/javaparser/ast/Node;

    :cond_4
    return-void
.end method

.method public bridge synthetic visit(Lcom/github/javaparser/ast/modules/ModuleDeclaration;Ljava/lang/Object;)V
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
    check-cast p2, Lcom/github/javaparser/Range;

    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/NodeFinderVisitor;->visit(Lcom/github/javaparser/ast/modules/ModuleDeclaration;Lcom/github/javaparser/Range;)V

    return-void
.end method

.method public visit(Lcom/github/javaparser/ast/modules/ModuleExportsDirective;Lcom/github/javaparser/Range;)V
    .locals 1
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

    .line 924
    invoke-virtual {p1}, Lcom/github/javaparser/ast/modules/ModuleExportsDirective;->getModuleNames()Lcom/github/javaparser/ast/NodeList;

    move-result-object v0

    invoke-virtual {v0, p0, p2}, Lcom/github/javaparser/ast/NodeList;->accept(Lcom/github/javaparser/ast/visitor/VoidVisitor;Ljava/lang/Object;)V

    .line 925
    iget-object v0, p0, Lcom/github/javaparser/ast/visitor/NodeFinderVisitor;->selectedNode:Lcom/github/javaparser/ast/Node;

    if-eqz v0, :cond_0

    return-void

    .line 926
    :cond_0
    invoke-virtual {p1}, Lcom/github/javaparser/ast/modules/ModuleExportsDirective;->getName()Lcom/github/javaparser/ast/expr/Name;

    move-result-object v0

    invoke-virtual {v0, p0, p2}, Lcom/github/javaparser/ast/expr/Name;->accept(Lcom/github/javaparser/ast/visitor/VoidVisitor;Ljava/lang/Object;)V

    .line 927
    iget-object v0, p0, Lcom/github/javaparser/ast/visitor/NodeFinderVisitor;->selectedNode:Lcom/github/javaparser/ast/Node;

    if-eqz v0, :cond_1

    return-void

    .line 928
    :cond_1
    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getComment()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Optional;->isPresent()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 929
    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getComment()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/github/javaparser/ast/comments/Comment;

    invoke-interface {v0, p0, p2}, Lcom/github/javaparser/ast/visitor/Visitable;->accept(Lcom/github/javaparser/ast/visitor/VoidVisitor;Ljava/lang/Object;)V

    .line 930
    iget-object v0, p0, Lcom/github/javaparser/ast/visitor/NodeFinderVisitor;->selectedNode:Lcom/github/javaparser/ast/Node;

    if-eqz v0, :cond_2

    return-void

    .line 931
    :cond_2
    sget-object v0, Lcom/github/javaparser/ast/visitor/NodeFinderVisitor;->fn:Ljava/util/function/BiFunction;

    invoke-interface {v0, p1, p2}, Ljava/util/function/BiFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_3

    .line 932
    iput-object p1, p0, Lcom/github/javaparser/ast/visitor/NodeFinderVisitor;->selectedNode:Lcom/github/javaparser/ast/Node;

    :cond_3
    return-void
.end method

.method public bridge synthetic visit(Lcom/github/javaparser/ast/modules/ModuleExportsDirective;Ljava/lang/Object;)V
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
    check-cast p2, Lcom/github/javaparser/Range;

    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/NodeFinderVisitor;->visit(Lcom/github/javaparser/ast/modules/ModuleExportsDirective;Lcom/github/javaparser/Range;)V

    return-void
.end method

.method public visit(Lcom/github/javaparser/ast/modules/ModuleOpensDirective;Lcom/github/javaparser/Range;)V
    .locals 1
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

    .line 949
    invoke-virtual {p1}, Lcom/github/javaparser/ast/modules/ModuleOpensDirective;->getModuleNames()Lcom/github/javaparser/ast/NodeList;

    move-result-object v0

    invoke-virtual {v0, p0, p2}, Lcom/github/javaparser/ast/NodeList;->accept(Lcom/github/javaparser/ast/visitor/VoidVisitor;Ljava/lang/Object;)V

    .line 950
    iget-object v0, p0, Lcom/github/javaparser/ast/visitor/NodeFinderVisitor;->selectedNode:Lcom/github/javaparser/ast/Node;

    if-eqz v0, :cond_0

    return-void

    .line 951
    :cond_0
    invoke-virtual {p1}, Lcom/github/javaparser/ast/modules/ModuleOpensDirective;->getName()Lcom/github/javaparser/ast/expr/Name;

    move-result-object v0

    invoke-virtual {v0, p0, p2}, Lcom/github/javaparser/ast/expr/Name;->accept(Lcom/github/javaparser/ast/visitor/VoidVisitor;Ljava/lang/Object;)V

    .line 952
    iget-object v0, p0, Lcom/github/javaparser/ast/visitor/NodeFinderVisitor;->selectedNode:Lcom/github/javaparser/ast/Node;

    if-eqz v0, :cond_1

    return-void

    .line 953
    :cond_1
    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getComment()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Optional;->isPresent()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 954
    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getComment()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/github/javaparser/ast/comments/Comment;

    invoke-interface {v0, p0, p2}, Lcom/github/javaparser/ast/visitor/Visitable;->accept(Lcom/github/javaparser/ast/visitor/VoidVisitor;Ljava/lang/Object;)V

    .line 955
    iget-object v0, p0, Lcom/github/javaparser/ast/visitor/NodeFinderVisitor;->selectedNode:Lcom/github/javaparser/ast/Node;

    if-eqz v0, :cond_2

    return-void

    .line 956
    :cond_2
    sget-object v0, Lcom/github/javaparser/ast/visitor/NodeFinderVisitor;->fn:Ljava/util/function/BiFunction;

    invoke-interface {v0, p1, p2}, Ljava/util/function/BiFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_3

    .line 957
    iput-object p1, p0, Lcom/github/javaparser/ast/visitor/NodeFinderVisitor;->selectedNode:Lcom/github/javaparser/ast/Node;

    :cond_3
    return-void
.end method

.method public bridge synthetic visit(Lcom/github/javaparser/ast/modules/ModuleOpensDirective;Ljava/lang/Object;)V
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
    check-cast p2, Lcom/github/javaparser/Range;

    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/NodeFinderVisitor;->visit(Lcom/github/javaparser/ast/modules/ModuleOpensDirective;Lcom/github/javaparser/Range;)V

    return-void
.end method

.method public visit(Lcom/github/javaparser/ast/modules/ModuleProvidesDirective;Lcom/github/javaparser/Range;)V
    .locals 1
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

    .line 933
    invoke-virtual {p1}, Lcom/github/javaparser/ast/modules/ModuleProvidesDirective;->getName()Lcom/github/javaparser/ast/expr/Name;

    move-result-object v0

    invoke-virtual {v0, p0, p2}, Lcom/github/javaparser/ast/expr/Name;->accept(Lcom/github/javaparser/ast/visitor/VoidVisitor;Ljava/lang/Object;)V

    .line 934
    iget-object v0, p0, Lcom/github/javaparser/ast/visitor/NodeFinderVisitor;->selectedNode:Lcom/github/javaparser/ast/Node;

    if-eqz v0, :cond_0

    return-void

    .line 935
    :cond_0
    invoke-virtual {p1}, Lcom/github/javaparser/ast/modules/ModuleProvidesDirective;->getWith()Lcom/github/javaparser/ast/NodeList;

    move-result-object v0

    invoke-virtual {v0, p0, p2}, Lcom/github/javaparser/ast/NodeList;->accept(Lcom/github/javaparser/ast/visitor/VoidVisitor;Ljava/lang/Object;)V

    .line 936
    iget-object v0, p0, Lcom/github/javaparser/ast/visitor/NodeFinderVisitor;->selectedNode:Lcom/github/javaparser/ast/Node;

    if-eqz v0, :cond_1

    return-void

    .line 937
    :cond_1
    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getComment()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Optional;->isPresent()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 938
    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getComment()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/github/javaparser/ast/comments/Comment;

    invoke-interface {v0, p0, p2}, Lcom/github/javaparser/ast/visitor/Visitable;->accept(Lcom/github/javaparser/ast/visitor/VoidVisitor;Ljava/lang/Object;)V

    .line 939
    iget-object v0, p0, Lcom/github/javaparser/ast/visitor/NodeFinderVisitor;->selectedNode:Lcom/github/javaparser/ast/Node;

    if-eqz v0, :cond_2

    return-void

    .line 940
    :cond_2
    sget-object v0, Lcom/github/javaparser/ast/visitor/NodeFinderVisitor;->fn:Ljava/util/function/BiFunction;

    invoke-interface {v0, p1, p2}, Ljava/util/function/BiFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_3

    .line 941
    iput-object p1, p0, Lcom/github/javaparser/ast/visitor/NodeFinderVisitor;->selectedNode:Lcom/github/javaparser/ast/Node;

    :cond_3
    return-void
.end method

.method public bridge synthetic visit(Lcom/github/javaparser/ast/modules/ModuleProvidesDirective;Ljava/lang/Object;)V
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
    check-cast p2, Lcom/github/javaparser/Range;

    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/NodeFinderVisitor;->visit(Lcom/github/javaparser/ast/modules/ModuleProvidesDirective;Lcom/github/javaparser/Range;)V

    return-void
.end method

.method public visit(Lcom/github/javaparser/ast/modules/ModuleRequiresDirective;Lcom/github/javaparser/Range;)V
    .locals 1
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

    .line 915
    invoke-virtual {p1}, Lcom/github/javaparser/ast/modules/ModuleRequiresDirective;->getModifiers()Lcom/github/javaparser/ast/NodeList;

    move-result-object v0

    invoke-virtual {v0, p0, p2}, Lcom/github/javaparser/ast/NodeList;->accept(Lcom/github/javaparser/ast/visitor/VoidVisitor;Ljava/lang/Object;)V

    .line 916
    iget-object v0, p0, Lcom/github/javaparser/ast/visitor/NodeFinderVisitor;->selectedNode:Lcom/github/javaparser/ast/Node;

    if-eqz v0, :cond_0

    return-void

    .line 917
    :cond_0
    invoke-virtual {p1}, Lcom/github/javaparser/ast/modules/ModuleRequiresDirective;->getName()Lcom/github/javaparser/ast/expr/Name;

    move-result-object v0

    invoke-virtual {v0, p0, p2}, Lcom/github/javaparser/ast/expr/Name;->accept(Lcom/github/javaparser/ast/visitor/VoidVisitor;Ljava/lang/Object;)V

    .line 918
    iget-object v0, p0, Lcom/github/javaparser/ast/visitor/NodeFinderVisitor;->selectedNode:Lcom/github/javaparser/ast/Node;

    if-eqz v0, :cond_1

    return-void

    .line 919
    :cond_1
    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getComment()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Optional;->isPresent()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 920
    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getComment()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/github/javaparser/ast/comments/Comment;

    invoke-interface {v0, p0, p2}, Lcom/github/javaparser/ast/visitor/Visitable;->accept(Lcom/github/javaparser/ast/visitor/VoidVisitor;Ljava/lang/Object;)V

    .line 921
    iget-object v0, p0, Lcom/github/javaparser/ast/visitor/NodeFinderVisitor;->selectedNode:Lcom/github/javaparser/ast/Node;

    if-eqz v0, :cond_2

    return-void

    .line 922
    :cond_2
    sget-object v0, Lcom/github/javaparser/ast/visitor/NodeFinderVisitor;->fn:Ljava/util/function/BiFunction;

    invoke-interface {v0, p1, p2}, Ljava/util/function/BiFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_3

    .line 923
    iput-object p1, p0, Lcom/github/javaparser/ast/visitor/NodeFinderVisitor;->selectedNode:Lcom/github/javaparser/ast/Node;

    :cond_3
    return-void
.end method

.method public bridge synthetic visit(Lcom/github/javaparser/ast/modules/ModuleRequiresDirective;Ljava/lang/Object;)V
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
    check-cast p2, Lcom/github/javaparser/Range;

    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/NodeFinderVisitor;->visit(Lcom/github/javaparser/ast/modules/ModuleRequiresDirective;Lcom/github/javaparser/Range;)V

    return-void
.end method

.method public visit(Lcom/github/javaparser/ast/modules/ModuleUsesDirective;Lcom/github/javaparser/Range;)V
    .locals 1
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

    .line 942
    invoke-virtual {p1}, Lcom/github/javaparser/ast/modules/ModuleUsesDirective;->getName()Lcom/github/javaparser/ast/expr/Name;

    move-result-object v0

    invoke-virtual {v0, p0, p2}, Lcom/github/javaparser/ast/expr/Name;->accept(Lcom/github/javaparser/ast/visitor/VoidVisitor;Ljava/lang/Object;)V

    .line 943
    iget-object v0, p0, Lcom/github/javaparser/ast/visitor/NodeFinderVisitor;->selectedNode:Lcom/github/javaparser/ast/Node;

    if-eqz v0, :cond_0

    return-void

    .line 944
    :cond_0
    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getComment()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Optional;->isPresent()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 945
    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getComment()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/github/javaparser/ast/comments/Comment;

    invoke-interface {v0, p0, p2}, Lcom/github/javaparser/ast/visitor/Visitable;->accept(Lcom/github/javaparser/ast/visitor/VoidVisitor;Ljava/lang/Object;)V

    .line 946
    iget-object v0, p0, Lcom/github/javaparser/ast/visitor/NodeFinderVisitor;->selectedNode:Lcom/github/javaparser/ast/Node;

    if-eqz v0, :cond_1

    return-void

    .line 947
    :cond_1
    sget-object v0, Lcom/github/javaparser/ast/visitor/NodeFinderVisitor;->fn:Ljava/util/function/BiFunction;

    invoke-interface {v0, p1, p2}, Ljava/util/function/BiFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_2

    .line 948
    iput-object p1, p0, Lcom/github/javaparser/ast/visitor/NodeFinderVisitor;->selectedNode:Lcom/github/javaparser/ast/Node;

    :cond_2
    return-void
.end method

.method public bridge synthetic visit(Lcom/github/javaparser/ast/modules/ModuleUsesDirective;Ljava/lang/Object;)V
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
    check-cast p2, Lcom/github/javaparser/Range;

    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/NodeFinderVisitor;->visit(Lcom/github/javaparser/ast/modules/ModuleUsesDirective;Lcom/github/javaparser/Range;)V

    return-void
.end method

.method public visit(Lcom/github/javaparser/ast/stmt/AssertStmt;Lcom/github/javaparser/Range;)V
    .locals 1
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

    .line 158
    invoke-virtual {p1}, Lcom/github/javaparser/ast/stmt/AssertStmt;->getCheck()Lcom/github/javaparser/ast/expr/Expression;

    move-result-object v0

    invoke-interface {v0, p0, p2}, Lcom/github/javaparser/ast/visitor/Visitable;->accept(Lcom/github/javaparser/ast/visitor/VoidVisitor;Ljava/lang/Object;)V

    .line 159
    iget-object v0, p0, Lcom/github/javaparser/ast/visitor/NodeFinderVisitor;->selectedNode:Lcom/github/javaparser/ast/Node;

    if-eqz v0, :cond_0

    return-void

    .line 160
    :cond_0
    invoke-virtual {p1}, Lcom/github/javaparser/ast/stmt/AssertStmt;->getMessage()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Optional;->isPresent()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 161
    invoke-virtual {p1}, Lcom/github/javaparser/ast/stmt/AssertStmt;->getMessage()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/github/javaparser/ast/expr/Expression;

    invoke-interface {v0, p0, p2}, Lcom/github/javaparser/ast/visitor/Visitable;->accept(Lcom/github/javaparser/ast/visitor/VoidVisitor;Ljava/lang/Object;)V

    .line 162
    iget-object v0, p0, Lcom/github/javaparser/ast/visitor/NodeFinderVisitor;->selectedNode:Lcom/github/javaparser/ast/Node;

    if-eqz v0, :cond_1

    return-void

    .line 163
    :cond_1
    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getComment()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Optional;->isPresent()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 164
    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getComment()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/github/javaparser/ast/comments/Comment;

    invoke-interface {v0, p0, p2}, Lcom/github/javaparser/ast/visitor/Visitable;->accept(Lcom/github/javaparser/ast/visitor/VoidVisitor;Ljava/lang/Object;)V

    .line 165
    iget-object v0, p0, Lcom/github/javaparser/ast/visitor/NodeFinderVisitor;->selectedNode:Lcom/github/javaparser/ast/Node;

    if-eqz v0, :cond_2

    return-void

    .line 166
    :cond_2
    sget-object v0, Lcom/github/javaparser/ast/visitor/NodeFinderVisitor;->fn:Ljava/util/function/BiFunction;

    invoke-interface {v0, p1, p2}, Ljava/util/function/BiFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_3

    .line 167
    iput-object p1, p0, Lcom/github/javaparser/ast/visitor/NodeFinderVisitor;->selectedNode:Lcom/github/javaparser/ast/Node;

    :cond_3
    return-void
.end method

.method public bridge synthetic visit(Lcom/github/javaparser/ast/stmt/AssertStmt;Ljava/lang/Object;)V
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
    check-cast p2, Lcom/github/javaparser/Range;

    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/NodeFinderVisitor;->visit(Lcom/github/javaparser/ast/stmt/AssertStmt;Lcom/github/javaparser/Range;)V

    return-void
.end method

.method public visit(Lcom/github/javaparser/ast/stmt/BlockStmt;Lcom/github/javaparser/Range;)V
    .locals 1
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

    .line 186
    invoke-virtual {p1}, Lcom/github/javaparser/ast/stmt/BlockStmt;->getStatements()Lcom/github/javaparser/ast/NodeList;

    move-result-object v0

    invoke-virtual {v0, p0, p2}, Lcom/github/javaparser/ast/NodeList;->accept(Lcom/github/javaparser/ast/visitor/VoidVisitor;Ljava/lang/Object;)V

    .line 187
    iget-object v0, p0, Lcom/github/javaparser/ast/visitor/NodeFinderVisitor;->selectedNode:Lcom/github/javaparser/ast/Node;

    if-eqz v0, :cond_0

    return-void

    .line 188
    :cond_0
    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getComment()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Optional;->isPresent()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 189
    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getComment()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/github/javaparser/ast/comments/Comment;

    invoke-interface {v0, p0, p2}, Lcom/github/javaparser/ast/visitor/Visitable;->accept(Lcom/github/javaparser/ast/visitor/VoidVisitor;Ljava/lang/Object;)V

    .line 190
    iget-object v0, p0, Lcom/github/javaparser/ast/visitor/NodeFinderVisitor;->selectedNode:Lcom/github/javaparser/ast/Node;

    if-eqz v0, :cond_1

    return-void

    .line 191
    :cond_1
    sget-object v0, Lcom/github/javaparser/ast/visitor/NodeFinderVisitor;->fn:Ljava/util/function/BiFunction;

    invoke-interface {v0, p1, p2}, Ljava/util/function/BiFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_2

    .line 192
    iput-object p1, p0, Lcom/github/javaparser/ast/visitor/NodeFinderVisitor;->selectedNode:Lcom/github/javaparser/ast/Node;

    :cond_2
    return-void
.end method

.method public bridge synthetic visit(Lcom/github/javaparser/ast/stmt/BlockStmt;Ljava/lang/Object;)V
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
    check-cast p2, Lcom/github/javaparser/Range;

    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/NodeFinderVisitor;->visit(Lcom/github/javaparser/ast/stmt/BlockStmt;Lcom/github/javaparser/Range;)V

    return-void
.end method

.method public visit(Lcom/github/javaparser/ast/stmt/BreakStmt;Lcom/github/javaparser/Range;)V
    .locals 1
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

    .line 198
    invoke-virtual {p1}, Lcom/github/javaparser/ast/stmt/BreakStmt;->getLabel()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Optional;->isPresent()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 199
    invoke-virtual {p1}, Lcom/github/javaparser/ast/stmt/BreakStmt;->getLabel()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/github/javaparser/ast/expr/SimpleName;

    invoke-virtual {v0, p0, p2}, Lcom/github/javaparser/ast/expr/SimpleName;->accept(Lcom/github/javaparser/ast/visitor/VoidVisitor;Ljava/lang/Object;)V

    .line 200
    iget-object v0, p0, Lcom/github/javaparser/ast/visitor/NodeFinderVisitor;->selectedNode:Lcom/github/javaparser/ast/Node;

    if-eqz v0, :cond_0

    return-void

    .line 201
    :cond_0
    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getComment()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Optional;->isPresent()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 202
    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getComment()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/github/javaparser/ast/comments/Comment;

    invoke-interface {v0, p0, p2}, Lcom/github/javaparser/ast/visitor/Visitable;->accept(Lcom/github/javaparser/ast/visitor/VoidVisitor;Ljava/lang/Object;)V

    .line 203
    iget-object v0, p0, Lcom/github/javaparser/ast/visitor/NodeFinderVisitor;->selectedNode:Lcom/github/javaparser/ast/Node;

    if-eqz v0, :cond_1

    return-void

    .line 204
    :cond_1
    sget-object v0, Lcom/github/javaparser/ast/visitor/NodeFinderVisitor;->fn:Ljava/util/function/BiFunction;

    invoke-interface {v0, p1, p2}, Ljava/util/function/BiFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_2

    .line 205
    iput-object p1, p0, Lcom/github/javaparser/ast/visitor/NodeFinderVisitor;->selectedNode:Lcom/github/javaparser/ast/Node;

    :cond_2
    return-void
.end method

.method public bridge synthetic visit(Lcom/github/javaparser/ast/stmt/BreakStmt;Ljava/lang/Object;)V
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
    check-cast p2, Lcom/github/javaparser/Range;

    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/NodeFinderVisitor;->visit(Lcom/github/javaparser/ast/stmt/BreakStmt;Lcom/github/javaparser/Range;)V

    return-void
.end method

.method public visit(Lcom/github/javaparser/ast/stmt/CatchClause;Lcom/github/javaparser/Range;)V
    .locals 1
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

    .line 215
    invoke-virtual {p1}, Lcom/github/javaparser/ast/stmt/CatchClause;->getBody()Lcom/github/javaparser/ast/stmt/BlockStmt;

    move-result-object v0

    invoke-virtual {v0, p0, p2}, Lcom/github/javaparser/ast/stmt/BlockStmt;->accept(Lcom/github/javaparser/ast/visitor/VoidVisitor;Ljava/lang/Object;)V

    .line 216
    iget-object v0, p0, Lcom/github/javaparser/ast/visitor/NodeFinderVisitor;->selectedNode:Lcom/github/javaparser/ast/Node;

    if-eqz v0, :cond_0

    return-void

    .line 217
    :cond_0
    invoke-virtual {p1}, Lcom/github/javaparser/ast/stmt/CatchClause;->getParameter()Lcom/github/javaparser/ast/body/Parameter;

    move-result-object v0

    invoke-virtual {v0, p0, p2}, Lcom/github/javaparser/ast/body/Parameter;->accept(Lcom/github/javaparser/ast/visitor/VoidVisitor;Ljava/lang/Object;)V

    .line 218
    iget-object v0, p0, Lcom/github/javaparser/ast/visitor/NodeFinderVisitor;->selectedNode:Lcom/github/javaparser/ast/Node;

    if-eqz v0, :cond_1

    return-void

    .line 219
    :cond_1
    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getComment()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Optional;->isPresent()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 220
    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getComment()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/github/javaparser/ast/comments/Comment;

    invoke-interface {v0, p0, p2}, Lcom/github/javaparser/ast/visitor/Visitable;->accept(Lcom/github/javaparser/ast/visitor/VoidVisitor;Ljava/lang/Object;)V

    .line 221
    iget-object v0, p0, Lcom/github/javaparser/ast/visitor/NodeFinderVisitor;->selectedNode:Lcom/github/javaparser/ast/Node;

    if-eqz v0, :cond_2

    return-void

    .line 222
    :cond_2
    sget-object v0, Lcom/github/javaparser/ast/visitor/NodeFinderVisitor;->fn:Ljava/util/function/BiFunction;

    invoke-interface {v0, p1, p2}, Ljava/util/function/BiFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_3

    .line 223
    iput-object p1, p0, Lcom/github/javaparser/ast/visitor/NodeFinderVisitor;->selectedNode:Lcom/github/javaparser/ast/Node;

    :cond_3
    return-void
.end method

.method public bridge synthetic visit(Lcom/github/javaparser/ast/stmt/CatchClause;Ljava/lang/Object;)V
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
    check-cast p2, Lcom/github/javaparser/Range;

    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/NodeFinderVisitor;->visit(Lcom/github/javaparser/ast/stmt/CatchClause;Lcom/github/javaparser/Range;)V

    return-void
.end method

.method public visit(Lcom/github/javaparser/ast/stmt/ContinueStmt;Lcom/github/javaparser/Range;)V
    .locals 1
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

    .line 317
    invoke-virtual {p1}, Lcom/github/javaparser/ast/stmt/ContinueStmt;->getLabel()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Optional;->isPresent()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 318
    invoke-virtual {p1}, Lcom/github/javaparser/ast/stmt/ContinueStmt;->getLabel()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/github/javaparser/ast/expr/SimpleName;

    invoke-virtual {v0, p0, p2}, Lcom/github/javaparser/ast/expr/SimpleName;->accept(Lcom/github/javaparser/ast/visitor/VoidVisitor;Ljava/lang/Object;)V

    .line 319
    iget-object v0, p0, Lcom/github/javaparser/ast/visitor/NodeFinderVisitor;->selectedNode:Lcom/github/javaparser/ast/Node;

    if-eqz v0, :cond_0

    return-void

    .line 320
    :cond_0
    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getComment()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Optional;->isPresent()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 321
    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getComment()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/github/javaparser/ast/comments/Comment;

    invoke-interface {v0, p0, p2}, Lcom/github/javaparser/ast/visitor/Visitable;->accept(Lcom/github/javaparser/ast/visitor/VoidVisitor;Ljava/lang/Object;)V

    .line 322
    iget-object v0, p0, Lcom/github/javaparser/ast/visitor/NodeFinderVisitor;->selectedNode:Lcom/github/javaparser/ast/Node;

    if-eqz v0, :cond_1

    return-void

    .line 323
    :cond_1
    sget-object v0, Lcom/github/javaparser/ast/visitor/NodeFinderVisitor;->fn:Ljava/util/function/BiFunction;

    invoke-interface {v0, p1, p2}, Ljava/util/function/BiFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_2

    .line 324
    iput-object p1, p0, Lcom/github/javaparser/ast/visitor/NodeFinderVisitor;->selectedNode:Lcom/github/javaparser/ast/Node;

    :cond_2
    return-void
.end method

.method public bridge synthetic visit(Lcom/github/javaparser/ast/stmt/ContinueStmt;Ljava/lang/Object;)V
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
    check-cast p2, Lcom/github/javaparser/Range;

    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/NodeFinderVisitor;->visit(Lcom/github/javaparser/ast/stmt/ContinueStmt;Lcom/github/javaparser/Range;)V

    return-void
.end method

.method public visit(Lcom/github/javaparser/ast/stmt/DoStmt;Lcom/github/javaparser/Range;)V
    .locals 1
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

    .line 325
    invoke-virtual {p1}, Lcom/github/javaparser/ast/stmt/DoStmt;->getBody()Lcom/github/javaparser/ast/stmt/Statement;

    move-result-object v0

    invoke-interface {v0, p0, p2}, Lcom/github/javaparser/ast/visitor/Visitable;->accept(Lcom/github/javaparser/ast/visitor/VoidVisitor;Ljava/lang/Object;)V

    .line 326
    iget-object v0, p0, Lcom/github/javaparser/ast/visitor/NodeFinderVisitor;->selectedNode:Lcom/github/javaparser/ast/Node;

    if-eqz v0, :cond_0

    return-void

    .line 327
    :cond_0
    invoke-virtual {p1}, Lcom/github/javaparser/ast/stmt/DoStmt;->getCondition()Lcom/github/javaparser/ast/expr/Expression;

    move-result-object v0

    invoke-interface {v0, p0, p2}, Lcom/github/javaparser/ast/visitor/Visitable;->accept(Lcom/github/javaparser/ast/visitor/VoidVisitor;Ljava/lang/Object;)V

    .line 328
    iget-object v0, p0, Lcom/github/javaparser/ast/visitor/NodeFinderVisitor;->selectedNode:Lcom/github/javaparser/ast/Node;

    if-eqz v0, :cond_1

    return-void

    .line 329
    :cond_1
    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getComment()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Optional;->isPresent()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 330
    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getComment()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/github/javaparser/ast/comments/Comment;

    invoke-interface {v0, p0, p2}, Lcom/github/javaparser/ast/visitor/Visitable;->accept(Lcom/github/javaparser/ast/visitor/VoidVisitor;Ljava/lang/Object;)V

    .line 331
    iget-object v0, p0, Lcom/github/javaparser/ast/visitor/NodeFinderVisitor;->selectedNode:Lcom/github/javaparser/ast/Node;

    if-eqz v0, :cond_2

    return-void

    .line 332
    :cond_2
    sget-object v0, Lcom/github/javaparser/ast/visitor/NodeFinderVisitor;->fn:Ljava/util/function/BiFunction;

    invoke-interface {v0, p1, p2}, Ljava/util/function/BiFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_3

    .line 333
    iput-object p1, p0, Lcom/github/javaparser/ast/visitor/NodeFinderVisitor;->selectedNode:Lcom/github/javaparser/ast/Node;

    :cond_3
    return-void
.end method

.method public bridge synthetic visit(Lcom/github/javaparser/ast/stmt/DoStmt;Ljava/lang/Object;)V
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
    check-cast p2, Lcom/github/javaparser/Range;

    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/NodeFinderVisitor;->visit(Lcom/github/javaparser/ast/stmt/DoStmt;Lcom/github/javaparser/Range;)V

    return-void
.end method

.method public visit(Lcom/github/javaparser/ast/stmt/EmptyStmt;Lcom/github/javaparser/Range;)V
    .locals 1
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

    .line 339
    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getComment()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Optional;->isPresent()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 340
    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getComment()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/github/javaparser/ast/comments/Comment;

    invoke-interface {v0, p0, p2}, Lcom/github/javaparser/ast/visitor/Visitable;->accept(Lcom/github/javaparser/ast/visitor/VoidVisitor;Ljava/lang/Object;)V

    .line 341
    iget-object v0, p0, Lcom/github/javaparser/ast/visitor/NodeFinderVisitor;->selectedNode:Lcom/github/javaparser/ast/Node;

    if-eqz v0, :cond_0

    return-void

    .line 342
    :cond_0
    sget-object v0, Lcom/github/javaparser/ast/visitor/NodeFinderVisitor;->fn:Ljava/util/function/BiFunction;

    invoke-interface {v0, p1, p2}, Ljava/util/function/BiFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_1

    .line 343
    iput-object p1, p0, Lcom/github/javaparser/ast/visitor/NodeFinderVisitor;->selectedNode:Lcom/github/javaparser/ast/Node;

    :cond_1
    return-void
.end method

.method public bridge synthetic visit(Lcom/github/javaparser/ast/stmt/EmptyStmt;Ljava/lang/Object;)V
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
    check-cast p2, Lcom/github/javaparser/Range;

    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/NodeFinderVisitor;->visit(Lcom/github/javaparser/ast/stmt/EmptyStmt;Lcom/github/javaparser/Range;)V

    return-void
.end method

.method public visit(Lcom/github/javaparser/ast/stmt/ExplicitConstructorInvocationStmt;Lcom/github/javaparser/Range;)V
    .locals 1
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

    .line 381
    invoke-virtual {p1}, Lcom/github/javaparser/ast/stmt/ExplicitConstructorInvocationStmt;->getArguments()Lcom/github/javaparser/ast/NodeList;

    move-result-object v0

    invoke-virtual {v0, p0, p2}, Lcom/github/javaparser/ast/NodeList;->accept(Lcom/github/javaparser/ast/visitor/VoidVisitor;Ljava/lang/Object;)V

    .line 382
    iget-object v0, p0, Lcom/github/javaparser/ast/visitor/NodeFinderVisitor;->selectedNode:Lcom/github/javaparser/ast/Node;

    if-eqz v0, :cond_0

    return-void

    .line 383
    :cond_0
    invoke-virtual {p1}, Lcom/github/javaparser/ast/stmt/ExplicitConstructorInvocationStmt;->getExpression()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Optional;->isPresent()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 384
    invoke-virtual {p1}, Lcom/github/javaparser/ast/stmt/ExplicitConstructorInvocationStmt;->getExpression()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/github/javaparser/ast/expr/Expression;

    invoke-interface {v0, p0, p2}, Lcom/github/javaparser/ast/visitor/Visitable;->accept(Lcom/github/javaparser/ast/visitor/VoidVisitor;Ljava/lang/Object;)V

    .line 385
    iget-object v0, p0, Lcom/github/javaparser/ast/visitor/NodeFinderVisitor;->selectedNode:Lcom/github/javaparser/ast/Node;

    if-eqz v0, :cond_1

    return-void

    .line 386
    :cond_1
    invoke-virtual {p1}, Lcom/github/javaparser/ast/stmt/ExplicitConstructorInvocationStmt;->getTypeArguments()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Optional;->isPresent()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 387
    invoke-virtual {p1}, Lcom/github/javaparser/ast/stmt/ExplicitConstructorInvocationStmt;->getTypeArguments()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/github/javaparser/ast/NodeList;

    invoke-virtual {v0, p0, p2}, Lcom/github/javaparser/ast/NodeList;->accept(Lcom/github/javaparser/ast/visitor/VoidVisitor;Ljava/lang/Object;)V

    .line 388
    iget-object v0, p0, Lcom/github/javaparser/ast/visitor/NodeFinderVisitor;->selectedNode:Lcom/github/javaparser/ast/Node;

    if-eqz v0, :cond_2

    return-void

    .line 389
    :cond_2
    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getComment()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Optional;->isPresent()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 390
    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getComment()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/github/javaparser/ast/comments/Comment;

    invoke-interface {v0, p0, p2}, Lcom/github/javaparser/ast/visitor/Visitable;->accept(Lcom/github/javaparser/ast/visitor/VoidVisitor;Ljava/lang/Object;)V

    .line 391
    iget-object v0, p0, Lcom/github/javaparser/ast/visitor/NodeFinderVisitor;->selectedNode:Lcom/github/javaparser/ast/Node;

    if-eqz v0, :cond_3

    return-void

    .line 392
    :cond_3
    sget-object v0, Lcom/github/javaparser/ast/visitor/NodeFinderVisitor;->fn:Ljava/util/function/BiFunction;

    invoke-interface {v0, p1, p2}, Ljava/util/function/BiFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_4

    .line 393
    iput-object p1, p0, Lcom/github/javaparser/ast/visitor/NodeFinderVisitor;->selectedNode:Lcom/github/javaparser/ast/Node;

    :cond_4
    return-void
.end method

.method public bridge synthetic visit(Lcom/github/javaparser/ast/stmt/ExplicitConstructorInvocationStmt;Ljava/lang/Object;)V
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
    check-cast p2, Lcom/github/javaparser/Range;

    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/NodeFinderVisitor;->visit(Lcom/github/javaparser/ast/stmt/ExplicitConstructorInvocationStmt;Lcom/github/javaparser/Range;)V

    return-void
.end method

.method public visit(Lcom/github/javaparser/ast/stmt/ExpressionStmt;Lcom/github/javaparser/Range;)V
    .locals 1
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

    .line 394
    invoke-virtual {p1}, Lcom/github/javaparser/ast/stmt/ExpressionStmt;->getExpression()Lcom/github/javaparser/ast/expr/Expression;

    move-result-object v0

    invoke-interface {v0, p0, p2}, Lcom/github/javaparser/ast/visitor/Visitable;->accept(Lcom/github/javaparser/ast/visitor/VoidVisitor;Ljava/lang/Object;)V

    .line 395
    iget-object v0, p0, Lcom/github/javaparser/ast/visitor/NodeFinderVisitor;->selectedNode:Lcom/github/javaparser/ast/Node;

    if-eqz v0, :cond_0

    return-void

    .line 396
    :cond_0
    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getComment()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Optional;->isPresent()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 397
    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getComment()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/github/javaparser/ast/comments/Comment;

    invoke-interface {v0, p0, p2}, Lcom/github/javaparser/ast/visitor/Visitable;->accept(Lcom/github/javaparser/ast/visitor/VoidVisitor;Ljava/lang/Object;)V

    .line 398
    iget-object v0, p0, Lcom/github/javaparser/ast/visitor/NodeFinderVisitor;->selectedNode:Lcom/github/javaparser/ast/Node;

    if-eqz v0, :cond_1

    return-void

    .line 399
    :cond_1
    sget-object v0, Lcom/github/javaparser/ast/visitor/NodeFinderVisitor;->fn:Ljava/util/function/BiFunction;

    invoke-interface {v0, p1, p2}, Ljava/util/function/BiFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_2

    .line 400
    iput-object p1, p0, Lcom/github/javaparser/ast/visitor/NodeFinderVisitor;->selectedNode:Lcom/github/javaparser/ast/Node;

    :cond_2
    return-void
.end method

.method public bridge synthetic visit(Lcom/github/javaparser/ast/stmt/ExpressionStmt;Ljava/lang/Object;)V
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
    check-cast p2, Lcom/github/javaparser/Range;

    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/NodeFinderVisitor;->visit(Lcom/github/javaparser/ast/stmt/ExpressionStmt;Lcom/github/javaparser/Range;)V

    return-void
.end method

.method public visit(Lcom/github/javaparser/ast/stmt/ForEachStmt;Lcom/github/javaparser/Range;)V
    .locals 1
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

    .line 424
    invoke-virtual {p1}, Lcom/github/javaparser/ast/stmt/ForEachStmt;->getBody()Lcom/github/javaparser/ast/stmt/Statement;

    move-result-object v0

    invoke-interface {v0, p0, p2}, Lcom/github/javaparser/ast/visitor/Visitable;->accept(Lcom/github/javaparser/ast/visitor/VoidVisitor;Ljava/lang/Object;)V

    .line 425
    iget-object v0, p0, Lcom/github/javaparser/ast/visitor/NodeFinderVisitor;->selectedNode:Lcom/github/javaparser/ast/Node;

    if-eqz v0, :cond_0

    return-void

    .line 426
    :cond_0
    invoke-virtual {p1}, Lcom/github/javaparser/ast/stmt/ForEachStmt;->getIterable()Lcom/github/javaparser/ast/expr/Expression;

    move-result-object v0

    invoke-interface {v0, p0, p2}, Lcom/github/javaparser/ast/visitor/Visitable;->accept(Lcom/github/javaparser/ast/visitor/VoidVisitor;Ljava/lang/Object;)V

    .line 427
    iget-object v0, p0, Lcom/github/javaparser/ast/visitor/NodeFinderVisitor;->selectedNode:Lcom/github/javaparser/ast/Node;

    if-eqz v0, :cond_1

    return-void

    .line 428
    :cond_1
    invoke-virtual {p1}, Lcom/github/javaparser/ast/stmt/ForEachStmt;->getVariable()Lcom/github/javaparser/ast/expr/VariableDeclarationExpr;

    move-result-object v0

    invoke-virtual {v0, p0, p2}, Lcom/github/javaparser/ast/expr/VariableDeclarationExpr;->accept(Lcom/github/javaparser/ast/visitor/VoidVisitor;Ljava/lang/Object;)V

    .line 429
    iget-object v0, p0, Lcom/github/javaparser/ast/visitor/NodeFinderVisitor;->selectedNode:Lcom/github/javaparser/ast/Node;

    if-eqz v0, :cond_2

    return-void

    .line 430
    :cond_2
    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getComment()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Optional;->isPresent()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 431
    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getComment()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/github/javaparser/ast/comments/Comment;

    invoke-interface {v0, p0, p2}, Lcom/github/javaparser/ast/visitor/Visitable;->accept(Lcom/github/javaparser/ast/visitor/VoidVisitor;Ljava/lang/Object;)V

    .line 432
    iget-object v0, p0, Lcom/github/javaparser/ast/visitor/NodeFinderVisitor;->selectedNode:Lcom/github/javaparser/ast/Node;

    if-eqz v0, :cond_3

    return-void

    .line 433
    :cond_3
    sget-object v0, Lcom/github/javaparser/ast/visitor/NodeFinderVisitor;->fn:Ljava/util/function/BiFunction;

    invoke-interface {v0, p1, p2}, Ljava/util/function/BiFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_4

    .line 434
    iput-object p1, p0, Lcom/github/javaparser/ast/visitor/NodeFinderVisitor;->selectedNode:Lcom/github/javaparser/ast/Node;

    :cond_4
    return-void
.end method

.method public bridge synthetic visit(Lcom/github/javaparser/ast/stmt/ForEachStmt;Ljava/lang/Object;)V
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
    check-cast p2, Lcom/github/javaparser/Range;

    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/NodeFinderVisitor;->visit(Lcom/github/javaparser/ast/stmt/ForEachStmt;Lcom/github/javaparser/Range;)V

    return-void
.end method

.method public visit(Lcom/github/javaparser/ast/stmt/ForStmt;Lcom/github/javaparser/Range;)V
    .locals 1
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

    .line 435
    invoke-virtual {p1}, Lcom/github/javaparser/ast/stmt/ForStmt;->getBody()Lcom/github/javaparser/ast/stmt/Statement;

    move-result-object v0

    invoke-interface {v0, p0, p2}, Lcom/github/javaparser/ast/visitor/Visitable;->accept(Lcom/github/javaparser/ast/visitor/VoidVisitor;Ljava/lang/Object;)V

    .line 436
    iget-object v0, p0, Lcom/github/javaparser/ast/visitor/NodeFinderVisitor;->selectedNode:Lcom/github/javaparser/ast/Node;

    if-eqz v0, :cond_0

    return-void

    .line 437
    :cond_0
    invoke-virtual {p1}, Lcom/github/javaparser/ast/stmt/ForStmt;->getCompare()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Optional;->isPresent()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 438
    invoke-virtual {p1}, Lcom/github/javaparser/ast/stmt/ForStmt;->getCompare()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/github/javaparser/ast/expr/Expression;

    invoke-interface {v0, p0, p2}, Lcom/github/javaparser/ast/visitor/Visitable;->accept(Lcom/github/javaparser/ast/visitor/VoidVisitor;Ljava/lang/Object;)V

    .line 439
    iget-object v0, p0, Lcom/github/javaparser/ast/visitor/NodeFinderVisitor;->selectedNode:Lcom/github/javaparser/ast/Node;

    if-eqz v0, :cond_1

    return-void

    .line 440
    :cond_1
    invoke-virtual {p1}, Lcom/github/javaparser/ast/stmt/ForStmt;->getInitialization()Lcom/github/javaparser/ast/NodeList;

    move-result-object v0

    invoke-virtual {v0, p0, p2}, Lcom/github/javaparser/ast/NodeList;->accept(Lcom/github/javaparser/ast/visitor/VoidVisitor;Ljava/lang/Object;)V

    .line 441
    iget-object v0, p0, Lcom/github/javaparser/ast/visitor/NodeFinderVisitor;->selectedNode:Lcom/github/javaparser/ast/Node;

    if-eqz v0, :cond_2

    return-void

    .line 442
    :cond_2
    invoke-virtual {p1}, Lcom/github/javaparser/ast/stmt/ForStmt;->getUpdate()Lcom/github/javaparser/ast/NodeList;

    move-result-object v0

    invoke-virtual {v0, p0, p2}, Lcom/github/javaparser/ast/NodeList;->accept(Lcom/github/javaparser/ast/visitor/VoidVisitor;Ljava/lang/Object;)V

    .line 443
    iget-object v0, p0, Lcom/github/javaparser/ast/visitor/NodeFinderVisitor;->selectedNode:Lcom/github/javaparser/ast/Node;

    if-eqz v0, :cond_3

    return-void

    .line 444
    :cond_3
    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getComment()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Optional;->isPresent()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 445
    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getComment()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/github/javaparser/ast/comments/Comment;

    invoke-interface {v0, p0, p2}, Lcom/github/javaparser/ast/visitor/Visitable;->accept(Lcom/github/javaparser/ast/visitor/VoidVisitor;Ljava/lang/Object;)V

    .line 446
    iget-object v0, p0, Lcom/github/javaparser/ast/visitor/NodeFinderVisitor;->selectedNode:Lcom/github/javaparser/ast/Node;

    if-eqz v0, :cond_4

    return-void

    .line 447
    :cond_4
    sget-object v0, Lcom/github/javaparser/ast/visitor/NodeFinderVisitor;->fn:Ljava/util/function/BiFunction;

    invoke-interface {v0, p1, p2}, Ljava/util/function/BiFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_5

    .line 448
    iput-object p1, p0, Lcom/github/javaparser/ast/visitor/NodeFinderVisitor;->selectedNode:Lcom/github/javaparser/ast/Node;

    :cond_5
    return-void
.end method

.method public bridge synthetic visit(Lcom/github/javaparser/ast/stmt/ForStmt;Ljava/lang/Object;)V
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
    check-cast p2, Lcom/github/javaparser/Range;

    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/NodeFinderVisitor;->visit(Lcom/github/javaparser/ast/stmt/ForStmt;Lcom/github/javaparser/Range;)V

    return-void
.end method

.method public visit(Lcom/github/javaparser/ast/stmt/IfStmt;Lcom/github/javaparser/Range;)V
    .locals 1
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

    .line 449
    invoke-virtual {p1}, Lcom/github/javaparser/ast/stmt/IfStmt;->getCondition()Lcom/github/javaparser/ast/expr/Expression;

    move-result-object v0

    invoke-interface {v0, p0, p2}, Lcom/github/javaparser/ast/visitor/Visitable;->accept(Lcom/github/javaparser/ast/visitor/VoidVisitor;Ljava/lang/Object;)V

    .line 450
    iget-object v0, p0, Lcom/github/javaparser/ast/visitor/NodeFinderVisitor;->selectedNode:Lcom/github/javaparser/ast/Node;

    if-eqz v0, :cond_0

    return-void

    .line 451
    :cond_0
    invoke-virtual {p1}, Lcom/github/javaparser/ast/stmt/IfStmt;->getElseStmt()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Optional;->isPresent()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 452
    invoke-virtual {p1}, Lcom/github/javaparser/ast/stmt/IfStmt;->getElseStmt()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/github/javaparser/ast/stmt/Statement;

    invoke-interface {v0, p0, p2}, Lcom/github/javaparser/ast/visitor/Visitable;->accept(Lcom/github/javaparser/ast/visitor/VoidVisitor;Ljava/lang/Object;)V

    .line 453
    iget-object v0, p0, Lcom/github/javaparser/ast/visitor/NodeFinderVisitor;->selectedNode:Lcom/github/javaparser/ast/Node;

    if-eqz v0, :cond_1

    return-void

    .line 454
    :cond_1
    invoke-virtual {p1}, Lcom/github/javaparser/ast/stmt/IfStmt;->getThenStmt()Lcom/github/javaparser/ast/stmt/Statement;

    move-result-object v0

    invoke-interface {v0, p0, p2}, Lcom/github/javaparser/ast/visitor/Visitable;->accept(Lcom/github/javaparser/ast/visitor/VoidVisitor;Ljava/lang/Object;)V

    .line 455
    iget-object v0, p0, Lcom/github/javaparser/ast/visitor/NodeFinderVisitor;->selectedNode:Lcom/github/javaparser/ast/Node;

    if-eqz v0, :cond_2

    return-void

    .line 456
    :cond_2
    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getComment()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Optional;->isPresent()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 457
    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getComment()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/github/javaparser/ast/comments/Comment;

    invoke-interface {v0, p0, p2}, Lcom/github/javaparser/ast/visitor/Visitable;->accept(Lcom/github/javaparser/ast/visitor/VoidVisitor;Ljava/lang/Object;)V

    .line 458
    iget-object v0, p0, Lcom/github/javaparser/ast/visitor/NodeFinderVisitor;->selectedNode:Lcom/github/javaparser/ast/Node;

    if-eqz v0, :cond_3

    return-void

    .line 459
    :cond_3
    sget-object v0, Lcom/github/javaparser/ast/visitor/NodeFinderVisitor;->fn:Ljava/util/function/BiFunction;

    invoke-interface {v0, p1, p2}, Ljava/util/function/BiFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_4

    .line 460
    iput-object p1, p0, Lcom/github/javaparser/ast/visitor/NodeFinderVisitor;->selectedNode:Lcom/github/javaparser/ast/Node;

    :cond_4
    return-void
.end method

.method public bridge synthetic visit(Lcom/github/javaparser/ast/stmt/IfStmt;Ljava/lang/Object;)V
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
    check-cast p2, Lcom/github/javaparser/Range;

    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/NodeFinderVisitor;->visit(Lcom/github/javaparser/ast/stmt/IfStmt;Lcom/github/javaparser/Range;)V

    return-void
.end method

.method public visit(Lcom/github/javaparser/ast/stmt/LabeledStmt;Lcom/github/javaparser/Range;)V
    .locals 1
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

    .line 489
    invoke-virtual {p1}, Lcom/github/javaparser/ast/stmt/LabeledStmt;->getLabel()Lcom/github/javaparser/ast/expr/SimpleName;

    move-result-object v0

    invoke-virtual {v0, p0, p2}, Lcom/github/javaparser/ast/expr/SimpleName;->accept(Lcom/github/javaparser/ast/visitor/VoidVisitor;Ljava/lang/Object;)V

    .line 490
    iget-object v0, p0, Lcom/github/javaparser/ast/visitor/NodeFinderVisitor;->selectedNode:Lcom/github/javaparser/ast/Node;

    if-eqz v0, :cond_0

    return-void

    .line 491
    :cond_0
    invoke-virtual {p1}, Lcom/github/javaparser/ast/stmt/LabeledStmt;->getStatement()Lcom/github/javaparser/ast/stmt/Statement;

    move-result-object v0

    invoke-interface {v0, p0, p2}, Lcom/github/javaparser/ast/visitor/Visitable;->accept(Lcom/github/javaparser/ast/visitor/VoidVisitor;Ljava/lang/Object;)V

    .line 492
    iget-object v0, p0, Lcom/github/javaparser/ast/visitor/NodeFinderVisitor;->selectedNode:Lcom/github/javaparser/ast/Node;

    if-eqz v0, :cond_1

    return-void

    .line 493
    :cond_1
    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getComment()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Optional;->isPresent()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 494
    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getComment()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/github/javaparser/ast/comments/Comment;

    invoke-interface {v0, p0, p2}, Lcom/github/javaparser/ast/visitor/Visitable;->accept(Lcom/github/javaparser/ast/visitor/VoidVisitor;Ljava/lang/Object;)V

    .line 495
    iget-object v0, p0, Lcom/github/javaparser/ast/visitor/NodeFinderVisitor;->selectedNode:Lcom/github/javaparser/ast/Node;

    if-eqz v0, :cond_2

    return-void

    .line 496
    :cond_2
    sget-object v0, Lcom/github/javaparser/ast/visitor/NodeFinderVisitor;->fn:Ljava/util/function/BiFunction;

    invoke-interface {v0, p1, p2}, Ljava/util/function/BiFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_3

    .line 497
    iput-object p1, p0, Lcom/github/javaparser/ast/visitor/NodeFinderVisitor;->selectedNode:Lcom/github/javaparser/ast/Node;

    :cond_3
    return-void
.end method

.method public bridge synthetic visit(Lcom/github/javaparser/ast/stmt/LabeledStmt;Ljava/lang/Object;)V
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
    check-cast p2, Lcom/github/javaparser/Range;

    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/NodeFinderVisitor;->visit(Lcom/github/javaparser/ast/stmt/LabeledStmt;Lcom/github/javaparser/Range;)V

    return-void
.end method

.method public visit(Lcom/github/javaparser/ast/stmt/LocalClassDeclarationStmt;Lcom/github/javaparser/Range;)V
    .locals 1
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

    .line 768
    invoke-virtual {p1}, Lcom/github/javaparser/ast/stmt/LocalClassDeclarationStmt;->getClassDeclaration()Lcom/github/javaparser/ast/body/ClassOrInterfaceDeclaration;

    move-result-object v0

    invoke-virtual {v0, p0, p2}, Lcom/github/javaparser/ast/body/ClassOrInterfaceDeclaration;->accept(Lcom/github/javaparser/ast/visitor/VoidVisitor;Ljava/lang/Object;)V

    .line 769
    iget-object v0, p0, Lcom/github/javaparser/ast/visitor/NodeFinderVisitor;->selectedNode:Lcom/github/javaparser/ast/Node;

    if-eqz v0, :cond_0

    return-void

    .line 770
    :cond_0
    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getComment()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Optional;->isPresent()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 771
    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getComment()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/github/javaparser/ast/comments/Comment;

    invoke-interface {v0, p0, p2}, Lcom/github/javaparser/ast/visitor/Visitable;->accept(Lcom/github/javaparser/ast/visitor/VoidVisitor;Ljava/lang/Object;)V

    .line 772
    iget-object v0, p0, Lcom/github/javaparser/ast/visitor/NodeFinderVisitor;->selectedNode:Lcom/github/javaparser/ast/Node;

    if-eqz v0, :cond_1

    return-void

    .line 773
    :cond_1
    sget-object v0, Lcom/github/javaparser/ast/visitor/NodeFinderVisitor;->fn:Ljava/util/function/BiFunction;

    invoke-interface {v0, p1, p2}, Ljava/util/function/BiFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_2

    .line 774
    iput-object p1, p0, Lcom/github/javaparser/ast/visitor/NodeFinderVisitor;->selectedNode:Lcom/github/javaparser/ast/Node;

    :cond_2
    return-void
.end method

.method public bridge synthetic visit(Lcom/github/javaparser/ast/stmt/LocalClassDeclarationStmt;Ljava/lang/Object;)V
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
    check-cast p2, Lcom/github/javaparser/Range;

    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/NodeFinderVisitor;->visit(Lcom/github/javaparser/ast/stmt/LocalClassDeclarationStmt;Lcom/github/javaparser/Range;)V

    return-void
.end method

.method public visit(Lcom/github/javaparser/ast/stmt/LocalRecordDeclarationStmt;Lcom/github/javaparser/Range;)V
    .locals 1
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

    .line 775
    invoke-virtual {p1}, Lcom/github/javaparser/ast/stmt/LocalRecordDeclarationStmt;->getRecordDeclaration()Lcom/github/javaparser/ast/body/RecordDeclaration;

    move-result-object v0

    invoke-virtual {v0, p0, p2}, Lcom/github/javaparser/ast/body/RecordDeclaration;->accept(Lcom/github/javaparser/ast/visitor/VoidVisitor;Ljava/lang/Object;)V

    .line 776
    iget-object v0, p0, Lcom/github/javaparser/ast/visitor/NodeFinderVisitor;->selectedNode:Lcom/github/javaparser/ast/Node;

    if-eqz v0, :cond_0

    return-void

    .line 777
    :cond_0
    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getComment()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Optional;->isPresent()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 778
    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getComment()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/github/javaparser/ast/comments/Comment;

    invoke-interface {v0, p0, p2}, Lcom/github/javaparser/ast/visitor/Visitable;->accept(Lcom/github/javaparser/ast/visitor/VoidVisitor;Ljava/lang/Object;)V

    .line 779
    iget-object v0, p0, Lcom/github/javaparser/ast/visitor/NodeFinderVisitor;->selectedNode:Lcom/github/javaparser/ast/Node;

    if-eqz v0, :cond_1

    return-void

    .line 780
    :cond_1
    sget-object v0, Lcom/github/javaparser/ast/visitor/NodeFinderVisitor;->fn:Ljava/util/function/BiFunction;

    invoke-interface {v0, p1, p2}, Ljava/util/function/BiFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_2

    .line 781
    iput-object p1, p0, Lcom/github/javaparser/ast/visitor/NodeFinderVisitor;->selectedNode:Lcom/github/javaparser/ast/Node;

    :cond_2
    return-void
.end method

.method public bridge synthetic visit(Lcom/github/javaparser/ast/stmt/LocalRecordDeclarationStmt;Ljava/lang/Object;)V
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
    check-cast p2, Lcom/github/javaparser/Range;

    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/NodeFinderVisitor;->visit(Lcom/github/javaparser/ast/stmt/LocalRecordDeclarationStmt;Lcom/github/javaparser/Range;)V

    return-void
.end method

.method public visit(Lcom/github/javaparser/ast/stmt/ReturnStmt;Lcom/github/javaparser/Range;)V
    .locals 1
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

    .line 679
    invoke-virtual {p1}, Lcom/github/javaparser/ast/stmt/ReturnStmt;->getExpression()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Optional;->isPresent()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 680
    invoke-virtual {p1}, Lcom/github/javaparser/ast/stmt/ReturnStmt;->getExpression()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/github/javaparser/ast/expr/Expression;

    invoke-interface {v0, p0, p2}, Lcom/github/javaparser/ast/visitor/Visitable;->accept(Lcom/github/javaparser/ast/visitor/VoidVisitor;Ljava/lang/Object;)V

    .line 681
    iget-object v0, p0, Lcom/github/javaparser/ast/visitor/NodeFinderVisitor;->selectedNode:Lcom/github/javaparser/ast/Node;

    if-eqz v0, :cond_0

    return-void

    .line 682
    :cond_0
    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getComment()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Optional;->isPresent()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 683
    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getComment()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/github/javaparser/ast/comments/Comment;

    invoke-interface {v0, p0, p2}, Lcom/github/javaparser/ast/visitor/Visitable;->accept(Lcom/github/javaparser/ast/visitor/VoidVisitor;Ljava/lang/Object;)V

    .line 684
    iget-object v0, p0, Lcom/github/javaparser/ast/visitor/NodeFinderVisitor;->selectedNode:Lcom/github/javaparser/ast/Node;

    if-eqz v0, :cond_1

    return-void

    .line 685
    :cond_1
    sget-object v0, Lcom/github/javaparser/ast/visitor/NodeFinderVisitor;->fn:Ljava/util/function/BiFunction;

    invoke-interface {v0, p1, p2}, Ljava/util/function/BiFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_2

    .line 686
    iput-object p1, p0, Lcom/github/javaparser/ast/visitor/NodeFinderVisitor;->selectedNode:Lcom/github/javaparser/ast/Node;

    :cond_2
    return-void
.end method

.method public bridge synthetic visit(Lcom/github/javaparser/ast/stmt/ReturnStmt;Ljava/lang/Object;)V
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
    check-cast p2, Lcom/github/javaparser/Range;

    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/NodeFinderVisitor;->visit(Lcom/github/javaparser/ast/stmt/ReturnStmt;Lcom/github/javaparser/Range;)V

    return-void
.end method

.method public visit(Lcom/github/javaparser/ast/stmt/SwitchEntry;Lcom/github/javaparser/Range;)V
    .locals 1
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

    .line 709
    invoke-virtual {p1}, Lcom/github/javaparser/ast/stmt/SwitchEntry;->getLabels()Lcom/github/javaparser/ast/NodeList;

    move-result-object v0

    invoke-virtual {v0, p0, p2}, Lcom/github/javaparser/ast/NodeList;->accept(Lcom/github/javaparser/ast/visitor/VoidVisitor;Ljava/lang/Object;)V

    .line 710
    iget-object v0, p0, Lcom/github/javaparser/ast/visitor/NodeFinderVisitor;->selectedNode:Lcom/github/javaparser/ast/Node;

    if-eqz v0, :cond_0

    return-void

    .line 711
    :cond_0
    invoke-virtual {p1}, Lcom/github/javaparser/ast/stmt/SwitchEntry;->getStatements()Lcom/github/javaparser/ast/NodeList;

    move-result-object v0

    invoke-virtual {v0, p0, p2}, Lcom/github/javaparser/ast/NodeList;->accept(Lcom/github/javaparser/ast/visitor/VoidVisitor;Ljava/lang/Object;)V

    .line 712
    iget-object v0, p0, Lcom/github/javaparser/ast/visitor/NodeFinderVisitor;->selectedNode:Lcom/github/javaparser/ast/Node;

    if-eqz v0, :cond_1

    return-void

    .line 713
    :cond_1
    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getComment()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Optional;->isPresent()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 714
    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getComment()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/github/javaparser/ast/comments/Comment;

    invoke-interface {v0, p0, p2}, Lcom/github/javaparser/ast/visitor/Visitable;->accept(Lcom/github/javaparser/ast/visitor/VoidVisitor;Ljava/lang/Object;)V

    .line 715
    iget-object v0, p0, Lcom/github/javaparser/ast/visitor/NodeFinderVisitor;->selectedNode:Lcom/github/javaparser/ast/Node;

    if-eqz v0, :cond_2

    return-void

    .line 716
    :cond_2
    invoke-virtual {p1}, Lcom/github/javaparser/ast/stmt/SwitchEntry;->getGuard()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Optional;->isPresent()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 717
    invoke-virtual {p1}, Lcom/github/javaparser/ast/stmt/SwitchEntry;->getGuard()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/github/javaparser/ast/expr/Expression;

    invoke-interface {v0, p0, p2}, Lcom/github/javaparser/ast/visitor/Visitable;->accept(Lcom/github/javaparser/ast/visitor/VoidVisitor;Ljava/lang/Object;)V

    .line 718
    iget-object v0, p0, Lcom/github/javaparser/ast/visitor/NodeFinderVisitor;->selectedNode:Lcom/github/javaparser/ast/Node;

    if-eqz v0, :cond_3

    return-void

    .line 719
    :cond_3
    sget-object v0, Lcom/github/javaparser/ast/visitor/NodeFinderVisitor;->fn:Ljava/util/function/BiFunction;

    invoke-interface {v0, p1, p2}, Ljava/util/function/BiFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_4

    .line 720
    iput-object p1, p0, Lcom/github/javaparser/ast/visitor/NodeFinderVisitor;->selectedNode:Lcom/github/javaparser/ast/Node;

    :cond_4
    return-void
.end method

.method public bridge synthetic visit(Lcom/github/javaparser/ast/stmt/SwitchEntry;Ljava/lang/Object;)V
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
    check-cast p2, Lcom/github/javaparser/Range;

    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/NodeFinderVisitor;->visit(Lcom/github/javaparser/ast/stmt/SwitchEntry;Lcom/github/javaparser/Range;)V

    return-void
.end method

.method public visit(Lcom/github/javaparser/ast/stmt/SwitchStmt;Lcom/github/javaparser/Range;)V
    .locals 1
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

    .line 721
    invoke-virtual {p1}, Lcom/github/javaparser/ast/stmt/SwitchStmt;->getEntries()Lcom/github/javaparser/ast/NodeList;

    move-result-object v0

    invoke-virtual {v0, p0, p2}, Lcom/github/javaparser/ast/NodeList;->accept(Lcom/github/javaparser/ast/visitor/VoidVisitor;Ljava/lang/Object;)V

    .line 722
    iget-object v0, p0, Lcom/github/javaparser/ast/visitor/NodeFinderVisitor;->selectedNode:Lcom/github/javaparser/ast/Node;

    if-eqz v0, :cond_0

    return-void

    .line 723
    :cond_0
    invoke-virtual {p1}, Lcom/github/javaparser/ast/stmt/SwitchStmt;->getSelector()Lcom/github/javaparser/ast/expr/Expression;

    move-result-object v0

    invoke-interface {v0, p0, p2}, Lcom/github/javaparser/ast/visitor/Visitable;->accept(Lcom/github/javaparser/ast/visitor/VoidVisitor;Ljava/lang/Object;)V

    .line 724
    iget-object v0, p0, Lcom/github/javaparser/ast/visitor/NodeFinderVisitor;->selectedNode:Lcom/github/javaparser/ast/Node;

    if-eqz v0, :cond_1

    return-void

    .line 725
    :cond_1
    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getComment()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Optional;->isPresent()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 726
    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getComment()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/github/javaparser/ast/comments/Comment;

    invoke-interface {v0, p0, p2}, Lcom/github/javaparser/ast/visitor/Visitable;->accept(Lcom/github/javaparser/ast/visitor/VoidVisitor;Ljava/lang/Object;)V

    .line 727
    iget-object v0, p0, Lcom/github/javaparser/ast/visitor/NodeFinderVisitor;->selectedNode:Lcom/github/javaparser/ast/Node;

    if-eqz v0, :cond_2

    return-void

    .line 728
    :cond_2
    sget-object v0, Lcom/github/javaparser/ast/visitor/NodeFinderVisitor;->fn:Ljava/util/function/BiFunction;

    invoke-interface {v0, p1, p2}, Ljava/util/function/BiFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_3

    .line 729
    iput-object p1, p0, Lcom/github/javaparser/ast/visitor/NodeFinderVisitor;->selectedNode:Lcom/github/javaparser/ast/Node;

    :cond_3
    return-void
.end method

.method public bridge synthetic visit(Lcom/github/javaparser/ast/stmt/SwitchStmt;Ljava/lang/Object;)V
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
    check-cast p2, Lcom/github/javaparser/Range;

    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/NodeFinderVisitor;->visit(Lcom/github/javaparser/ast/stmt/SwitchStmt;Lcom/github/javaparser/Range;)V

    return-void
.end method

.method public visit(Lcom/github/javaparser/ast/stmt/SynchronizedStmt;Lcom/github/javaparser/Range;)V
    .locals 1
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

    .line 730
    invoke-virtual {p1}, Lcom/github/javaparser/ast/stmt/SynchronizedStmt;->getBody()Lcom/github/javaparser/ast/stmt/BlockStmt;

    move-result-object v0

    invoke-virtual {v0, p0, p2}, Lcom/github/javaparser/ast/stmt/BlockStmt;->accept(Lcom/github/javaparser/ast/visitor/VoidVisitor;Ljava/lang/Object;)V

    .line 731
    iget-object v0, p0, Lcom/github/javaparser/ast/visitor/NodeFinderVisitor;->selectedNode:Lcom/github/javaparser/ast/Node;

    if-eqz v0, :cond_0

    return-void

    .line 732
    :cond_0
    invoke-virtual {p1}, Lcom/github/javaparser/ast/stmt/SynchronizedStmt;->getExpression()Lcom/github/javaparser/ast/expr/Expression;

    move-result-object v0

    invoke-interface {v0, p0, p2}, Lcom/github/javaparser/ast/visitor/Visitable;->accept(Lcom/github/javaparser/ast/visitor/VoidVisitor;Ljava/lang/Object;)V

    .line 733
    iget-object v0, p0, Lcom/github/javaparser/ast/visitor/NodeFinderVisitor;->selectedNode:Lcom/github/javaparser/ast/Node;

    if-eqz v0, :cond_1

    return-void

    .line 734
    :cond_1
    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getComment()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Optional;->isPresent()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 735
    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getComment()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/github/javaparser/ast/comments/Comment;

    invoke-interface {v0, p0, p2}, Lcom/github/javaparser/ast/visitor/Visitable;->accept(Lcom/github/javaparser/ast/visitor/VoidVisitor;Ljava/lang/Object;)V

    .line 736
    iget-object v0, p0, Lcom/github/javaparser/ast/visitor/NodeFinderVisitor;->selectedNode:Lcom/github/javaparser/ast/Node;

    if-eqz v0, :cond_2

    return-void

    .line 737
    :cond_2
    sget-object v0, Lcom/github/javaparser/ast/visitor/NodeFinderVisitor;->fn:Ljava/util/function/BiFunction;

    invoke-interface {v0, p1, p2}, Ljava/util/function/BiFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_3

    .line 738
    iput-object p1, p0, Lcom/github/javaparser/ast/visitor/NodeFinderVisitor;->selectedNode:Lcom/github/javaparser/ast/Node;

    :cond_3
    return-void
.end method

.method public bridge synthetic visit(Lcom/github/javaparser/ast/stmt/SynchronizedStmt;Ljava/lang/Object;)V
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
    check-cast p2, Lcom/github/javaparser/Range;

    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/NodeFinderVisitor;->visit(Lcom/github/javaparser/ast/stmt/SynchronizedStmt;Lcom/github/javaparser/Range;)V

    return-void
.end method

.method public visit(Lcom/github/javaparser/ast/stmt/ThrowStmt;Lcom/github/javaparser/Range;)V
    .locals 1
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

    .line 747
    invoke-virtual {p1}, Lcom/github/javaparser/ast/stmt/ThrowStmt;->getExpression()Lcom/github/javaparser/ast/expr/Expression;

    move-result-object v0

    invoke-interface {v0, p0, p2}, Lcom/github/javaparser/ast/visitor/Visitable;->accept(Lcom/github/javaparser/ast/visitor/VoidVisitor;Ljava/lang/Object;)V

    .line 748
    iget-object v0, p0, Lcom/github/javaparser/ast/visitor/NodeFinderVisitor;->selectedNode:Lcom/github/javaparser/ast/Node;

    if-eqz v0, :cond_0

    return-void

    .line 749
    :cond_0
    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getComment()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Optional;->isPresent()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 750
    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getComment()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/github/javaparser/ast/comments/Comment;

    invoke-interface {v0, p0, p2}, Lcom/github/javaparser/ast/visitor/Visitable;->accept(Lcom/github/javaparser/ast/visitor/VoidVisitor;Ljava/lang/Object;)V

    .line 751
    iget-object v0, p0, Lcom/github/javaparser/ast/visitor/NodeFinderVisitor;->selectedNode:Lcom/github/javaparser/ast/Node;

    if-eqz v0, :cond_1

    return-void

    .line 752
    :cond_1
    sget-object v0, Lcom/github/javaparser/ast/visitor/NodeFinderVisitor;->fn:Ljava/util/function/BiFunction;

    invoke-interface {v0, p1, p2}, Ljava/util/function/BiFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_2

    .line 753
    iput-object p1, p0, Lcom/github/javaparser/ast/visitor/NodeFinderVisitor;->selectedNode:Lcom/github/javaparser/ast/Node;

    :cond_2
    return-void
.end method

.method public bridge synthetic visit(Lcom/github/javaparser/ast/stmt/ThrowStmt;Ljava/lang/Object;)V
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
    check-cast p2, Lcom/github/javaparser/Range;

    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/NodeFinderVisitor;->visit(Lcom/github/javaparser/ast/stmt/ThrowStmt;Lcom/github/javaparser/Range;)V

    return-void
.end method

.method public visit(Lcom/github/javaparser/ast/stmt/TryStmt;Lcom/github/javaparser/Range;)V
    .locals 1
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

    .line 754
    invoke-virtual {p1}, Lcom/github/javaparser/ast/stmt/TryStmt;->getCatchClauses()Lcom/github/javaparser/ast/NodeList;

    move-result-object v0

    invoke-virtual {v0, p0, p2}, Lcom/github/javaparser/ast/NodeList;->accept(Lcom/github/javaparser/ast/visitor/VoidVisitor;Ljava/lang/Object;)V

    .line 755
    iget-object v0, p0, Lcom/github/javaparser/ast/visitor/NodeFinderVisitor;->selectedNode:Lcom/github/javaparser/ast/Node;

    if-eqz v0, :cond_0

    return-void

    .line 756
    :cond_0
    invoke-virtual {p1}, Lcom/github/javaparser/ast/stmt/TryStmt;->getFinallyBlock()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Optional;->isPresent()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 757
    invoke-virtual {p1}, Lcom/github/javaparser/ast/stmt/TryStmt;->getFinallyBlock()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/github/javaparser/ast/stmt/BlockStmt;

    invoke-virtual {v0, p0, p2}, Lcom/github/javaparser/ast/stmt/BlockStmt;->accept(Lcom/github/javaparser/ast/visitor/VoidVisitor;Ljava/lang/Object;)V

    .line 758
    iget-object v0, p0, Lcom/github/javaparser/ast/visitor/NodeFinderVisitor;->selectedNode:Lcom/github/javaparser/ast/Node;

    if-eqz v0, :cond_1

    return-void

    .line 759
    :cond_1
    invoke-virtual {p1}, Lcom/github/javaparser/ast/stmt/TryStmt;->getResources()Lcom/github/javaparser/ast/NodeList;

    move-result-object v0

    invoke-virtual {v0, p0, p2}, Lcom/github/javaparser/ast/NodeList;->accept(Lcom/github/javaparser/ast/visitor/VoidVisitor;Ljava/lang/Object;)V

    .line 760
    iget-object v0, p0, Lcom/github/javaparser/ast/visitor/NodeFinderVisitor;->selectedNode:Lcom/github/javaparser/ast/Node;

    if-eqz v0, :cond_2

    return-void

    .line 761
    :cond_2
    invoke-virtual {p1}, Lcom/github/javaparser/ast/stmt/TryStmt;->getTryBlock()Lcom/github/javaparser/ast/stmt/BlockStmt;

    move-result-object v0

    invoke-virtual {v0, p0, p2}, Lcom/github/javaparser/ast/stmt/BlockStmt;->accept(Lcom/github/javaparser/ast/visitor/VoidVisitor;Ljava/lang/Object;)V

    .line 762
    iget-object v0, p0, Lcom/github/javaparser/ast/visitor/NodeFinderVisitor;->selectedNode:Lcom/github/javaparser/ast/Node;

    if-eqz v0, :cond_3

    return-void

    .line 763
    :cond_3
    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getComment()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Optional;->isPresent()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 764
    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getComment()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/github/javaparser/ast/comments/Comment;

    invoke-interface {v0, p0, p2}, Lcom/github/javaparser/ast/visitor/Visitable;->accept(Lcom/github/javaparser/ast/visitor/VoidVisitor;Ljava/lang/Object;)V

    .line 765
    iget-object v0, p0, Lcom/github/javaparser/ast/visitor/NodeFinderVisitor;->selectedNode:Lcom/github/javaparser/ast/Node;

    if-eqz v0, :cond_4

    return-void

    .line 766
    :cond_4
    sget-object v0, Lcom/github/javaparser/ast/visitor/NodeFinderVisitor;->fn:Ljava/util/function/BiFunction;

    invoke-interface {v0, p1, p2}, Ljava/util/function/BiFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_5

    .line 767
    iput-object p1, p0, Lcom/github/javaparser/ast/visitor/NodeFinderVisitor;->selectedNode:Lcom/github/javaparser/ast/Node;

    :cond_5
    return-void
.end method

.method public bridge synthetic visit(Lcom/github/javaparser/ast/stmt/TryStmt;Ljava/lang/Object;)V
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
    check-cast p2, Lcom/github/javaparser/Range;

    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/NodeFinderVisitor;->visit(Lcom/github/javaparser/ast/stmt/TryStmt;Lcom/github/javaparser/Range;)V

    return-void
.end method

.method public visit(Lcom/github/javaparser/ast/stmt/UnparsableStmt;Lcom/github/javaparser/Range;)V
    .locals 1
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

    .line 958
    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getComment()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Optional;->isPresent()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 959
    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getComment()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/github/javaparser/ast/comments/Comment;

    invoke-interface {v0, p0, p2}, Lcom/github/javaparser/ast/visitor/Visitable;->accept(Lcom/github/javaparser/ast/visitor/VoidVisitor;Ljava/lang/Object;)V

    .line 960
    iget-object v0, p0, Lcom/github/javaparser/ast/visitor/NodeFinderVisitor;->selectedNode:Lcom/github/javaparser/ast/Node;

    if-eqz v0, :cond_0

    return-void

    .line 961
    :cond_0
    sget-object v0, Lcom/github/javaparser/ast/visitor/NodeFinderVisitor;->fn:Ljava/util/function/BiFunction;

    invoke-interface {v0, p1, p2}, Ljava/util/function/BiFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_1

    .line 962
    iput-object p1, p0, Lcom/github/javaparser/ast/visitor/NodeFinderVisitor;->selectedNode:Lcom/github/javaparser/ast/Node;

    :cond_1
    return-void
.end method

.method public bridge synthetic visit(Lcom/github/javaparser/ast/stmt/UnparsableStmt;Ljava/lang/Object;)V
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
    check-cast p2, Lcom/github/javaparser/Range;

    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/NodeFinderVisitor;->visit(Lcom/github/javaparser/ast/stmt/UnparsableStmt;Lcom/github/javaparser/Range;)V

    return-void
.end method

.method public visit(Lcom/github/javaparser/ast/stmt/WhileStmt;Lcom/github/javaparser/Range;)V
    .locals 1
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

    .line 837
    invoke-virtual {p1}, Lcom/github/javaparser/ast/stmt/WhileStmt;->getBody()Lcom/github/javaparser/ast/stmt/Statement;

    move-result-object v0

    invoke-interface {v0, p0, p2}, Lcom/github/javaparser/ast/visitor/Visitable;->accept(Lcom/github/javaparser/ast/visitor/VoidVisitor;Ljava/lang/Object;)V

    .line 838
    iget-object v0, p0, Lcom/github/javaparser/ast/visitor/NodeFinderVisitor;->selectedNode:Lcom/github/javaparser/ast/Node;

    if-eqz v0, :cond_0

    return-void

    .line 839
    :cond_0
    invoke-virtual {p1}, Lcom/github/javaparser/ast/stmt/WhileStmt;->getCondition()Lcom/github/javaparser/ast/expr/Expression;

    move-result-object v0

    invoke-interface {v0, p0, p2}, Lcom/github/javaparser/ast/visitor/Visitable;->accept(Lcom/github/javaparser/ast/visitor/VoidVisitor;Ljava/lang/Object;)V

    .line 840
    iget-object v0, p0, Lcom/github/javaparser/ast/visitor/NodeFinderVisitor;->selectedNode:Lcom/github/javaparser/ast/Node;

    if-eqz v0, :cond_1

    return-void

    .line 841
    :cond_1
    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getComment()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Optional;->isPresent()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 842
    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getComment()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/github/javaparser/ast/comments/Comment;

    invoke-interface {v0, p0, p2}, Lcom/github/javaparser/ast/visitor/Visitable;->accept(Lcom/github/javaparser/ast/visitor/VoidVisitor;Ljava/lang/Object;)V

    .line 843
    iget-object v0, p0, Lcom/github/javaparser/ast/visitor/NodeFinderVisitor;->selectedNode:Lcom/github/javaparser/ast/Node;

    if-eqz v0, :cond_2

    return-void

    .line 844
    :cond_2
    sget-object v0, Lcom/github/javaparser/ast/visitor/NodeFinderVisitor;->fn:Ljava/util/function/BiFunction;

    invoke-interface {v0, p1, p2}, Ljava/util/function/BiFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_3

    .line 845
    iput-object p1, p0, Lcom/github/javaparser/ast/visitor/NodeFinderVisitor;->selectedNode:Lcom/github/javaparser/ast/Node;

    :cond_3
    return-void
.end method

.method public bridge synthetic visit(Lcom/github/javaparser/ast/stmt/WhileStmt;Ljava/lang/Object;)V
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
    check-cast p2, Lcom/github/javaparser/Range;

    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/NodeFinderVisitor;->visit(Lcom/github/javaparser/ast/stmt/WhileStmt;Lcom/github/javaparser/Range;)V

    return-void
.end method

.method public visit(Lcom/github/javaparser/ast/stmt/YieldStmt;Lcom/github/javaparser/Range;)V
    .locals 1
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

    .line 995
    invoke-virtual {p1}, Lcom/github/javaparser/ast/stmt/YieldStmt;->getExpression()Lcom/github/javaparser/ast/expr/Expression;

    move-result-object v0

    invoke-interface {v0, p0, p2}, Lcom/github/javaparser/ast/visitor/Visitable;->accept(Lcom/github/javaparser/ast/visitor/VoidVisitor;Ljava/lang/Object;)V

    .line 996
    iget-object v0, p0, Lcom/github/javaparser/ast/visitor/NodeFinderVisitor;->selectedNode:Lcom/github/javaparser/ast/Node;

    if-eqz v0, :cond_0

    return-void

    .line 997
    :cond_0
    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getComment()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Optional;->isPresent()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 998
    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getComment()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/github/javaparser/ast/comments/Comment;

    invoke-interface {v0, p0, p2}, Lcom/github/javaparser/ast/visitor/Visitable;->accept(Lcom/github/javaparser/ast/visitor/VoidVisitor;Ljava/lang/Object;)V

    .line 999
    iget-object v0, p0, Lcom/github/javaparser/ast/visitor/NodeFinderVisitor;->selectedNode:Lcom/github/javaparser/ast/Node;

    if-eqz v0, :cond_1

    return-void

    .line 1000
    :cond_1
    sget-object v0, Lcom/github/javaparser/ast/visitor/NodeFinderVisitor;->fn:Ljava/util/function/BiFunction;

    invoke-interface {v0, p1, p2}, Ljava/util/function/BiFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_2

    .line 1001
    iput-object p1, p0, Lcom/github/javaparser/ast/visitor/NodeFinderVisitor;->selectedNode:Lcom/github/javaparser/ast/Node;

    :cond_2
    return-void
.end method

.method public bridge synthetic visit(Lcom/github/javaparser/ast/stmt/YieldStmt;Ljava/lang/Object;)V
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
    check-cast p2, Lcom/github/javaparser/Range;

    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/NodeFinderVisitor;->visit(Lcom/github/javaparser/ast/stmt/YieldStmt;Lcom/github/javaparser/Range;)V

    return-void
.end method

.method public visit(Lcom/github/javaparser/ast/type/ArrayType;Lcom/github/javaparser/Range;)V
    .locals 1
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

    .line 642
    invoke-virtual {p1}, Lcom/github/javaparser/ast/type/ArrayType;->getComponentType()Lcom/github/javaparser/ast/type/Type;

    move-result-object v0

    invoke-interface {v0, p0, p2}, Lcom/github/javaparser/ast/visitor/Visitable;->accept(Lcom/github/javaparser/ast/visitor/VoidVisitor;Ljava/lang/Object;)V

    .line 643
    iget-object v0, p0, Lcom/github/javaparser/ast/visitor/NodeFinderVisitor;->selectedNode:Lcom/github/javaparser/ast/Node;

    if-eqz v0, :cond_0

    return-void

    .line 644
    :cond_0
    invoke-virtual {p1}, Lcom/github/javaparser/ast/type/Type;->getAnnotations()Lcom/github/javaparser/ast/NodeList;

    move-result-object v0

    invoke-virtual {v0, p0, p2}, Lcom/github/javaparser/ast/NodeList;->accept(Lcom/github/javaparser/ast/visitor/VoidVisitor;Ljava/lang/Object;)V

    .line 645
    iget-object v0, p0, Lcom/github/javaparser/ast/visitor/NodeFinderVisitor;->selectedNode:Lcom/github/javaparser/ast/Node;

    if-eqz v0, :cond_1

    return-void

    .line 646
    :cond_1
    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getComment()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Optional;->isPresent()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 647
    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getComment()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/github/javaparser/ast/comments/Comment;

    invoke-interface {v0, p0, p2}, Lcom/github/javaparser/ast/visitor/Visitable;->accept(Lcom/github/javaparser/ast/visitor/VoidVisitor;Ljava/lang/Object;)V

    .line 648
    iget-object v0, p0, Lcom/github/javaparser/ast/visitor/NodeFinderVisitor;->selectedNode:Lcom/github/javaparser/ast/Node;

    if-eqz v0, :cond_2

    return-void

    .line 649
    :cond_2
    sget-object v0, Lcom/github/javaparser/ast/visitor/NodeFinderVisitor;->fn:Ljava/util/function/BiFunction;

    invoke-interface {v0, p1, p2}, Ljava/util/function/BiFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_3

    .line 650
    iput-object p1, p0, Lcom/github/javaparser/ast/visitor/NodeFinderVisitor;->selectedNode:Lcom/github/javaparser/ast/Node;

    :cond_3
    return-void
.end method

.method public bridge synthetic visit(Lcom/github/javaparser/ast/type/ArrayType;Ljava/lang/Object;)V
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
    check-cast p2, Lcom/github/javaparser/Range;

    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/NodeFinderVisitor;->visit(Lcom/github/javaparser/ast/type/ArrayType;Lcom/github/javaparser/Range;)V

    return-void
.end method

.method public visit(Lcom/github/javaparser/ast/type/ClassOrInterfaceType;Lcom/github/javaparser/Range;)V
    .locals 1
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

    .line 254
    invoke-virtual {p1}, Lcom/github/javaparser/ast/type/ClassOrInterfaceType;->getName()Lcom/github/javaparser/ast/expr/SimpleName;

    move-result-object v0

    invoke-virtual {v0, p0, p2}, Lcom/github/javaparser/ast/expr/SimpleName;->accept(Lcom/github/javaparser/ast/visitor/VoidVisitor;Ljava/lang/Object;)V

    .line 255
    iget-object v0, p0, Lcom/github/javaparser/ast/visitor/NodeFinderVisitor;->selectedNode:Lcom/github/javaparser/ast/Node;

    if-eqz v0, :cond_0

    return-void

    .line 256
    :cond_0
    invoke-virtual {p1}, Lcom/github/javaparser/ast/type/ClassOrInterfaceType;->getScope()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Optional;->isPresent()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 257
    invoke-virtual {p1}, Lcom/github/javaparser/ast/type/ClassOrInterfaceType;->getScope()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/github/javaparser/ast/type/ClassOrInterfaceType;

    invoke-virtual {v0, p0, p2}, Lcom/github/javaparser/ast/type/ClassOrInterfaceType;->accept(Lcom/github/javaparser/ast/visitor/VoidVisitor;Ljava/lang/Object;)V

    .line 258
    iget-object v0, p0, Lcom/github/javaparser/ast/visitor/NodeFinderVisitor;->selectedNode:Lcom/github/javaparser/ast/Node;

    if-eqz v0, :cond_1

    return-void

    .line 259
    :cond_1
    invoke-virtual {p1}, Lcom/github/javaparser/ast/type/ClassOrInterfaceType;->getTypeArguments()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Optional;->isPresent()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 260
    invoke-virtual {p1}, Lcom/github/javaparser/ast/type/ClassOrInterfaceType;->getTypeArguments()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/github/javaparser/ast/NodeList;

    invoke-virtual {v0, p0, p2}, Lcom/github/javaparser/ast/NodeList;->accept(Lcom/github/javaparser/ast/visitor/VoidVisitor;Ljava/lang/Object;)V

    .line 261
    iget-object v0, p0, Lcom/github/javaparser/ast/visitor/NodeFinderVisitor;->selectedNode:Lcom/github/javaparser/ast/Node;

    if-eqz v0, :cond_2

    return-void

    .line 262
    :cond_2
    invoke-virtual {p1}, Lcom/github/javaparser/ast/type/Type;->getAnnotations()Lcom/github/javaparser/ast/NodeList;

    move-result-object v0

    invoke-virtual {v0, p0, p2}, Lcom/github/javaparser/ast/NodeList;->accept(Lcom/github/javaparser/ast/visitor/VoidVisitor;Ljava/lang/Object;)V

    .line 263
    iget-object v0, p0, Lcom/github/javaparser/ast/visitor/NodeFinderVisitor;->selectedNode:Lcom/github/javaparser/ast/Node;

    if-eqz v0, :cond_3

    return-void

    .line 264
    :cond_3
    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getComment()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Optional;->isPresent()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 265
    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getComment()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/github/javaparser/ast/comments/Comment;

    invoke-interface {v0, p0, p2}, Lcom/github/javaparser/ast/visitor/Visitable;->accept(Lcom/github/javaparser/ast/visitor/VoidVisitor;Ljava/lang/Object;)V

    .line 266
    iget-object v0, p0, Lcom/github/javaparser/ast/visitor/NodeFinderVisitor;->selectedNode:Lcom/github/javaparser/ast/Node;

    if-eqz v0, :cond_4

    return-void

    .line 267
    :cond_4
    sget-object v0, Lcom/github/javaparser/ast/visitor/NodeFinderVisitor;->fn:Ljava/util/function/BiFunction;

    invoke-interface {v0, p1, p2}, Ljava/util/function/BiFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_5

    .line 268
    iput-object p1, p0, Lcom/github/javaparser/ast/visitor/NodeFinderVisitor;->selectedNode:Lcom/github/javaparser/ast/Node;

    :cond_5
    return-void
.end method

.method public bridge synthetic visit(Lcom/github/javaparser/ast/type/ClassOrInterfaceType;Ljava/lang/Object;)V
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
    check-cast p2, Lcom/github/javaparser/Range;

    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/NodeFinderVisitor;->visit(Lcom/github/javaparser/ast/type/ClassOrInterfaceType;Lcom/github/javaparser/Range;)V

    return-void
.end method

.method public visit(Lcom/github/javaparser/ast/type/IntersectionType;Lcom/github/javaparser/Range;)V
    .locals 1
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

    .line 661
    invoke-virtual {p1}, Lcom/github/javaparser/ast/type/IntersectionType;->getElements()Lcom/github/javaparser/ast/NodeList;

    move-result-object v0

    invoke-virtual {v0, p0, p2}, Lcom/github/javaparser/ast/NodeList;->accept(Lcom/github/javaparser/ast/visitor/VoidVisitor;Ljava/lang/Object;)V

    .line 662
    iget-object v0, p0, Lcom/github/javaparser/ast/visitor/NodeFinderVisitor;->selectedNode:Lcom/github/javaparser/ast/Node;

    if-eqz v0, :cond_0

    return-void

    .line 663
    :cond_0
    invoke-virtual {p1}, Lcom/github/javaparser/ast/type/Type;->getAnnotations()Lcom/github/javaparser/ast/NodeList;

    move-result-object v0

    invoke-virtual {v0, p0, p2}, Lcom/github/javaparser/ast/NodeList;->accept(Lcom/github/javaparser/ast/visitor/VoidVisitor;Ljava/lang/Object;)V

    .line 664
    iget-object v0, p0, Lcom/github/javaparser/ast/visitor/NodeFinderVisitor;->selectedNode:Lcom/github/javaparser/ast/Node;

    if-eqz v0, :cond_1

    return-void

    .line 665
    :cond_1
    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getComment()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Optional;->isPresent()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 666
    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getComment()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/github/javaparser/ast/comments/Comment;

    invoke-interface {v0, p0, p2}, Lcom/github/javaparser/ast/visitor/Visitable;->accept(Lcom/github/javaparser/ast/visitor/VoidVisitor;Ljava/lang/Object;)V

    .line 667
    iget-object v0, p0, Lcom/github/javaparser/ast/visitor/NodeFinderVisitor;->selectedNode:Lcom/github/javaparser/ast/Node;

    if-eqz v0, :cond_2

    return-void

    .line 668
    :cond_2
    sget-object v0, Lcom/github/javaparser/ast/visitor/NodeFinderVisitor;->fn:Ljava/util/function/BiFunction;

    invoke-interface {v0, p1, p2}, Ljava/util/function/BiFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_3

    .line 669
    iput-object p1, p0, Lcom/github/javaparser/ast/visitor/NodeFinderVisitor;->selectedNode:Lcom/github/javaparser/ast/Node;

    :cond_3
    return-void
.end method

.method public bridge synthetic visit(Lcom/github/javaparser/ast/type/IntersectionType;Ljava/lang/Object;)V
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
    check-cast p2, Lcom/github/javaparser/Range;

    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/NodeFinderVisitor;->visit(Lcom/github/javaparser/ast/type/IntersectionType;Lcom/github/javaparser/Range;)V

    return-void
.end method

.method public visit(Lcom/github/javaparser/ast/type/PrimitiveType;Lcom/github/javaparser/Range;)V
    .locals 1
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

    .line 622
    invoke-virtual {p1}, Lcom/github/javaparser/ast/type/Type;->getAnnotations()Lcom/github/javaparser/ast/NodeList;

    move-result-object v0

    invoke-virtual {v0, p0, p2}, Lcom/github/javaparser/ast/NodeList;->accept(Lcom/github/javaparser/ast/visitor/VoidVisitor;Ljava/lang/Object;)V

    .line 623
    iget-object v0, p0, Lcom/github/javaparser/ast/visitor/NodeFinderVisitor;->selectedNode:Lcom/github/javaparser/ast/Node;

    if-eqz v0, :cond_0

    return-void

    .line 624
    :cond_0
    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getComment()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Optional;->isPresent()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 625
    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getComment()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/github/javaparser/ast/comments/Comment;

    invoke-interface {v0, p0, p2}, Lcom/github/javaparser/ast/visitor/Visitable;->accept(Lcom/github/javaparser/ast/visitor/VoidVisitor;Ljava/lang/Object;)V

    .line 626
    iget-object v0, p0, Lcom/github/javaparser/ast/visitor/NodeFinderVisitor;->selectedNode:Lcom/github/javaparser/ast/Node;

    if-eqz v0, :cond_1

    return-void

    .line 627
    :cond_1
    sget-object v0, Lcom/github/javaparser/ast/visitor/NodeFinderVisitor;->fn:Ljava/util/function/BiFunction;

    invoke-interface {v0, p1, p2}, Ljava/util/function/BiFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_2

    .line 628
    iput-object p1, p0, Lcom/github/javaparser/ast/visitor/NodeFinderVisitor;->selectedNode:Lcom/github/javaparser/ast/Node;

    :cond_2
    return-void
.end method

.method public bridge synthetic visit(Lcom/github/javaparser/ast/type/PrimitiveType;Ljava/lang/Object;)V
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
    check-cast p2, Lcom/github/javaparser/Range;

    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/NodeFinderVisitor;->visit(Lcom/github/javaparser/ast/type/PrimitiveType;Lcom/github/javaparser/Range;)V

    return-void
.end method

.method public visit(Lcom/github/javaparser/ast/type/TypeParameter;Lcom/github/javaparser/Range;)V
    .locals 1
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

    .line 782
    invoke-virtual {p1}, Lcom/github/javaparser/ast/type/TypeParameter;->getName()Lcom/github/javaparser/ast/expr/SimpleName;

    move-result-object v0

    invoke-virtual {v0, p0, p2}, Lcom/github/javaparser/ast/expr/SimpleName;->accept(Lcom/github/javaparser/ast/visitor/VoidVisitor;Ljava/lang/Object;)V

    .line 783
    iget-object v0, p0, Lcom/github/javaparser/ast/visitor/NodeFinderVisitor;->selectedNode:Lcom/github/javaparser/ast/Node;

    if-eqz v0, :cond_0

    return-void

    .line 784
    :cond_0
    invoke-virtual {p1}, Lcom/github/javaparser/ast/type/TypeParameter;->getTypeBound()Lcom/github/javaparser/ast/NodeList;

    move-result-object v0

    invoke-virtual {v0, p0, p2}, Lcom/github/javaparser/ast/NodeList;->accept(Lcom/github/javaparser/ast/visitor/VoidVisitor;Ljava/lang/Object;)V

    .line 785
    iget-object v0, p0, Lcom/github/javaparser/ast/visitor/NodeFinderVisitor;->selectedNode:Lcom/github/javaparser/ast/Node;

    if-eqz v0, :cond_1

    return-void

    .line 786
    :cond_1
    invoke-virtual {p1}, Lcom/github/javaparser/ast/type/Type;->getAnnotations()Lcom/github/javaparser/ast/NodeList;

    move-result-object v0

    invoke-virtual {v0, p0, p2}, Lcom/github/javaparser/ast/NodeList;->accept(Lcom/github/javaparser/ast/visitor/VoidVisitor;Ljava/lang/Object;)V

    .line 787
    iget-object v0, p0, Lcom/github/javaparser/ast/visitor/NodeFinderVisitor;->selectedNode:Lcom/github/javaparser/ast/Node;

    if-eqz v0, :cond_2

    return-void

    .line 788
    :cond_2
    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getComment()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Optional;->isPresent()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 789
    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getComment()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/github/javaparser/ast/comments/Comment;

    invoke-interface {v0, p0, p2}, Lcom/github/javaparser/ast/visitor/Visitable;->accept(Lcom/github/javaparser/ast/visitor/VoidVisitor;Ljava/lang/Object;)V

    .line 790
    iget-object v0, p0, Lcom/github/javaparser/ast/visitor/NodeFinderVisitor;->selectedNode:Lcom/github/javaparser/ast/Node;

    if-eqz v0, :cond_3

    return-void

    .line 791
    :cond_3
    sget-object v0, Lcom/github/javaparser/ast/visitor/NodeFinderVisitor;->fn:Ljava/util/function/BiFunction;

    invoke-interface {v0, p1, p2}, Ljava/util/function/BiFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_4

    .line 792
    iput-object p1, p0, Lcom/github/javaparser/ast/visitor/NodeFinderVisitor;->selectedNode:Lcom/github/javaparser/ast/Node;

    :cond_4
    return-void
.end method

.method public bridge synthetic visit(Lcom/github/javaparser/ast/type/TypeParameter;Ljava/lang/Object;)V
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
    check-cast p2, Lcom/github/javaparser/Range;

    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/NodeFinderVisitor;->visit(Lcom/github/javaparser/ast/type/TypeParameter;Lcom/github/javaparser/Range;)V

    return-void
.end method

.method public visit(Lcom/github/javaparser/ast/type/UnionType;Lcom/github/javaparser/Range;)V
    .locals 1
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

    .line 670
    invoke-virtual {p1}, Lcom/github/javaparser/ast/type/UnionType;->getElements()Lcom/github/javaparser/ast/NodeList;

    move-result-object v0

    invoke-virtual {v0, p0, p2}, Lcom/github/javaparser/ast/NodeList;->accept(Lcom/github/javaparser/ast/visitor/VoidVisitor;Ljava/lang/Object;)V

    .line 671
    iget-object v0, p0, Lcom/github/javaparser/ast/visitor/NodeFinderVisitor;->selectedNode:Lcom/github/javaparser/ast/Node;

    if-eqz v0, :cond_0

    return-void

    .line 672
    :cond_0
    invoke-virtual {p1}, Lcom/github/javaparser/ast/type/Type;->getAnnotations()Lcom/github/javaparser/ast/NodeList;

    move-result-object v0

    invoke-virtual {v0, p0, p2}, Lcom/github/javaparser/ast/NodeList;->accept(Lcom/github/javaparser/ast/visitor/VoidVisitor;Ljava/lang/Object;)V

    .line 673
    iget-object v0, p0, Lcom/github/javaparser/ast/visitor/NodeFinderVisitor;->selectedNode:Lcom/github/javaparser/ast/Node;

    if-eqz v0, :cond_1

    return-void

    .line 674
    :cond_1
    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getComment()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Optional;->isPresent()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 675
    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getComment()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/github/javaparser/ast/comments/Comment;

    invoke-interface {v0, p0, p2}, Lcom/github/javaparser/ast/visitor/Visitable;->accept(Lcom/github/javaparser/ast/visitor/VoidVisitor;Ljava/lang/Object;)V

    .line 676
    iget-object v0, p0, Lcom/github/javaparser/ast/visitor/NodeFinderVisitor;->selectedNode:Lcom/github/javaparser/ast/Node;

    if-eqz v0, :cond_2

    return-void

    .line 677
    :cond_2
    sget-object v0, Lcom/github/javaparser/ast/visitor/NodeFinderVisitor;->fn:Ljava/util/function/BiFunction;

    invoke-interface {v0, p1, p2}, Ljava/util/function/BiFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_3

    .line 678
    iput-object p1, p0, Lcom/github/javaparser/ast/visitor/NodeFinderVisitor;->selectedNode:Lcom/github/javaparser/ast/Node;

    :cond_3
    return-void
.end method

.method public bridge synthetic visit(Lcom/github/javaparser/ast/type/UnionType;Ljava/lang/Object;)V
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
    check-cast p2, Lcom/github/javaparser/Range;

    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/NodeFinderVisitor;->visit(Lcom/github/javaparser/ast/type/UnionType;Lcom/github/javaparser/Range;)V

    return-void
.end method

.method public visit(Lcom/github/javaparser/ast/type/UnknownType;Lcom/github/javaparser/Range;)V
    .locals 1
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

    .line 800
    invoke-virtual {p1}, Lcom/github/javaparser/ast/type/Type;->getAnnotations()Lcom/github/javaparser/ast/NodeList;

    move-result-object v0

    invoke-virtual {v0, p0, p2}, Lcom/github/javaparser/ast/NodeList;->accept(Lcom/github/javaparser/ast/visitor/VoidVisitor;Ljava/lang/Object;)V

    .line 801
    iget-object v0, p0, Lcom/github/javaparser/ast/visitor/NodeFinderVisitor;->selectedNode:Lcom/github/javaparser/ast/Node;

    if-eqz v0, :cond_0

    return-void

    .line 802
    :cond_0
    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getComment()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Optional;->isPresent()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 803
    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getComment()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/github/javaparser/ast/comments/Comment;

    invoke-interface {v0, p0, p2}, Lcom/github/javaparser/ast/visitor/Visitable;->accept(Lcom/github/javaparser/ast/visitor/VoidVisitor;Ljava/lang/Object;)V

    .line 804
    iget-object v0, p0, Lcom/github/javaparser/ast/visitor/NodeFinderVisitor;->selectedNode:Lcom/github/javaparser/ast/Node;

    if-eqz v0, :cond_1

    return-void

    .line 805
    :cond_1
    sget-object v0, Lcom/github/javaparser/ast/visitor/NodeFinderVisitor;->fn:Ljava/util/function/BiFunction;

    invoke-interface {v0, p1, p2}, Ljava/util/function/BiFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_2

    .line 806
    iput-object p1, p0, Lcom/github/javaparser/ast/visitor/NodeFinderVisitor;->selectedNode:Lcom/github/javaparser/ast/Node;

    :cond_2
    return-void
.end method

.method public bridge synthetic visit(Lcom/github/javaparser/ast/type/UnknownType;Ljava/lang/Object;)V
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
    check-cast p2, Lcom/github/javaparser/Range;

    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/NodeFinderVisitor;->visit(Lcom/github/javaparser/ast/type/UnknownType;Lcom/github/javaparser/Range;)V

    return-void
.end method

.method public visit(Lcom/github/javaparser/ast/type/VarType;Lcom/github/javaparser/Range;)V
    .locals 1
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

    .line 974
    invoke-virtual {p1}, Lcom/github/javaparser/ast/type/Type;->getAnnotations()Lcom/github/javaparser/ast/NodeList;

    move-result-object v0

    invoke-virtual {v0, p0, p2}, Lcom/github/javaparser/ast/NodeList;->accept(Lcom/github/javaparser/ast/visitor/VoidVisitor;Ljava/lang/Object;)V

    .line 975
    iget-object v0, p0, Lcom/github/javaparser/ast/visitor/NodeFinderVisitor;->selectedNode:Lcom/github/javaparser/ast/Node;

    if-eqz v0, :cond_0

    return-void

    .line 976
    :cond_0
    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getComment()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Optional;->isPresent()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 977
    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getComment()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/github/javaparser/ast/comments/Comment;

    invoke-interface {v0, p0, p2}, Lcom/github/javaparser/ast/visitor/Visitable;->accept(Lcom/github/javaparser/ast/visitor/VoidVisitor;Ljava/lang/Object;)V

    .line 978
    iget-object v0, p0, Lcom/github/javaparser/ast/visitor/NodeFinderVisitor;->selectedNode:Lcom/github/javaparser/ast/Node;

    if-eqz v0, :cond_1

    return-void

    .line 979
    :cond_1
    sget-object v0, Lcom/github/javaparser/ast/visitor/NodeFinderVisitor;->fn:Ljava/util/function/BiFunction;

    invoke-interface {v0, p1, p2}, Ljava/util/function/BiFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_2

    .line 980
    iput-object p1, p0, Lcom/github/javaparser/ast/visitor/NodeFinderVisitor;->selectedNode:Lcom/github/javaparser/ast/Node;

    :cond_2
    return-void
.end method

.method public bridge synthetic visit(Lcom/github/javaparser/ast/type/VarType;Ljava/lang/Object;)V
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
    check-cast p2, Lcom/github/javaparser/Range;

    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/NodeFinderVisitor;->visit(Lcom/github/javaparser/ast/type/VarType;Lcom/github/javaparser/Range;)V

    return-void
.end method

.method public visit(Lcom/github/javaparser/ast/type/VoidType;Lcom/github/javaparser/Range;)V
    .locals 1
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

    .line 830
    invoke-virtual {p1}, Lcom/github/javaparser/ast/type/Type;->getAnnotations()Lcom/github/javaparser/ast/NodeList;

    move-result-object v0

    invoke-virtual {v0, p0, p2}, Lcom/github/javaparser/ast/NodeList;->accept(Lcom/github/javaparser/ast/visitor/VoidVisitor;Ljava/lang/Object;)V

    .line 831
    iget-object v0, p0, Lcom/github/javaparser/ast/visitor/NodeFinderVisitor;->selectedNode:Lcom/github/javaparser/ast/Node;

    if-eqz v0, :cond_0

    return-void

    .line 832
    :cond_0
    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getComment()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Optional;->isPresent()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 833
    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getComment()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/github/javaparser/ast/comments/Comment;

    invoke-interface {v0, p0, p2}, Lcom/github/javaparser/ast/visitor/Visitable;->accept(Lcom/github/javaparser/ast/visitor/VoidVisitor;Ljava/lang/Object;)V

    .line 834
    iget-object v0, p0, Lcom/github/javaparser/ast/visitor/NodeFinderVisitor;->selectedNode:Lcom/github/javaparser/ast/Node;

    if-eqz v0, :cond_1

    return-void

    .line 835
    :cond_1
    sget-object v0, Lcom/github/javaparser/ast/visitor/NodeFinderVisitor;->fn:Ljava/util/function/BiFunction;

    invoke-interface {v0, p1, p2}, Ljava/util/function/BiFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_2

    .line 836
    iput-object p1, p0, Lcom/github/javaparser/ast/visitor/NodeFinderVisitor;->selectedNode:Lcom/github/javaparser/ast/Node;

    :cond_2
    return-void
.end method

.method public bridge synthetic visit(Lcom/github/javaparser/ast/type/VoidType;Ljava/lang/Object;)V
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
    check-cast p2, Lcom/github/javaparser/Range;

    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/NodeFinderVisitor;->visit(Lcom/github/javaparser/ast/type/VoidType;Lcom/github/javaparser/Range;)V

    return-void
.end method

.method public visit(Lcom/github/javaparser/ast/type/WildcardType;Lcom/github/javaparser/Range;)V
    .locals 1
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

    .line 846
    invoke-virtual {p1}, Lcom/github/javaparser/ast/type/WildcardType;->getExtendedType()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Optional;->isPresent()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 847
    invoke-virtual {p1}, Lcom/github/javaparser/ast/type/WildcardType;->getExtendedType()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/github/javaparser/ast/type/ReferenceType;

    invoke-interface {v0, p0, p2}, Lcom/github/javaparser/ast/visitor/Visitable;->accept(Lcom/github/javaparser/ast/visitor/VoidVisitor;Ljava/lang/Object;)V

    .line 848
    iget-object v0, p0, Lcom/github/javaparser/ast/visitor/NodeFinderVisitor;->selectedNode:Lcom/github/javaparser/ast/Node;

    if-eqz v0, :cond_0

    return-void

    .line 849
    :cond_0
    invoke-virtual {p1}, Lcom/github/javaparser/ast/type/WildcardType;->getSuperType()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Optional;->isPresent()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 850
    invoke-virtual {p1}, Lcom/github/javaparser/ast/type/WildcardType;->getSuperType()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/github/javaparser/ast/type/ReferenceType;

    invoke-interface {v0, p0, p2}, Lcom/github/javaparser/ast/visitor/Visitable;->accept(Lcom/github/javaparser/ast/visitor/VoidVisitor;Ljava/lang/Object;)V

    .line 851
    iget-object v0, p0, Lcom/github/javaparser/ast/visitor/NodeFinderVisitor;->selectedNode:Lcom/github/javaparser/ast/Node;

    if-eqz v0, :cond_1

    return-void

    .line 852
    :cond_1
    invoke-virtual {p1}, Lcom/github/javaparser/ast/type/Type;->getAnnotations()Lcom/github/javaparser/ast/NodeList;

    move-result-object v0

    invoke-virtual {v0, p0, p2}, Lcom/github/javaparser/ast/NodeList;->accept(Lcom/github/javaparser/ast/visitor/VoidVisitor;Ljava/lang/Object;)V

    .line 853
    iget-object v0, p0, Lcom/github/javaparser/ast/visitor/NodeFinderVisitor;->selectedNode:Lcom/github/javaparser/ast/Node;

    if-eqz v0, :cond_2

    return-void

    .line 854
    :cond_2
    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getComment()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Optional;->isPresent()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 855
    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getComment()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/github/javaparser/ast/comments/Comment;

    invoke-interface {v0, p0, p2}, Lcom/github/javaparser/ast/visitor/Visitable;->accept(Lcom/github/javaparser/ast/visitor/VoidVisitor;Ljava/lang/Object;)V

    .line 856
    iget-object v0, p0, Lcom/github/javaparser/ast/visitor/NodeFinderVisitor;->selectedNode:Lcom/github/javaparser/ast/Node;

    if-eqz v0, :cond_3

    return-void

    .line 857
    :cond_3
    sget-object v0, Lcom/github/javaparser/ast/visitor/NodeFinderVisitor;->fn:Ljava/util/function/BiFunction;

    invoke-interface {v0, p1, p2}, Ljava/util/function/BiFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_4

    .line 858
    iput-object p1, p0, Lcom/github/javaparser/ast/visitor/NodeFinderVisitor;->selectedNode:Lcom/github/javaparser/ast/Node;

    :cond_4
    return-void
.end method

.method public bridge synthetic visit(Lcom/github/javaparser/ast/type/WildcardType;Ljava/lang/Object;)V
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
    check-cast p2, Lcom/github/javaparser/Range;

    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/ast/visitor/NodeFinderVisitor;->visit(Lcom/github/javaparser/ast/type/WildcardType;Lcom/github/javaparser/Range;)V

    return-void
.end method
