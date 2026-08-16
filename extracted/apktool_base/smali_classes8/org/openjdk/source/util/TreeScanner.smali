.class public Lorg/openjdk/source/util/TreeScanner;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/openjdk/source/tree/TreeVisitor;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R:",
        "Ljava/lang/Object;",
        "P:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lorg/openjdk/source/tree/TreeVisitor<",
        "TR;TP;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private scanAndReduce(Ljava/lang/Iterable;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lorg/openjdk/source/tree/Tree;",
            ">;TP;TR;)TR;"
        }
    .end annotation

    .line 2
    invoke-virtual {p0, p1, p2}, Lorg/openjdk/source/util/TreeScanner;->scan(Ljava/lang/Iterable;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p1, p3}, Lorg/openjdk/source/util/TreeScanner;->reduce(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method private scanAndReduce(Lorg/openjdk/source/tree/Tree;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/source/tree/Tree;",
            "TP;TR;)TR;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2}, Lorg/openjdk/source/util/TreeScanner;->scan(Lorg/openjdk/source/tree/Tree;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p1, p3}, Lorg/openjdk/source/util/TreeScanner;->reduce(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public reduce(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TR;TR;)TR;"
        }
    .end annotation

    return-object p1
.end method

.method public scan(Ljava/lang/Iterable;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lorg/openjdk/source/tree/Tree;",
            ">;TP;)TR;"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 2
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v1, 0x1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/openjdk/source/tree/Tree;

    if-eqz v1, :cond_0

    .line 3
    invoke-virtual {p0, v2, p2}, Lorg/openjdk/source/util/TreeScanner;->scan(Lorg/openjdk/source/tree/Tree;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_1

    :cond_0
    invoke-direct {p0, v2, p2, v0}, Lorg/openjdk/source/util/TreeScanner;->scanAndReduce(Lorg/openjdk/source/tree/Tree;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :goto_1
    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public scan(Lorg/openjdk/source/tree/Tree;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/source/tree/Tree;",
            "TP;)TR;"
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 1
    :cond_0
    invoke-interface {p1, p0, p2}, Lorg/openjdk/source/tree/Tree;->accept(Lorg/openjdk/source/tree/TreeVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public visitAnnotatedType(Lorg/openjdk/source/tree/AnnotatedTypeTree;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/source/tree/AnnotatedTypeTree;",
            "TP;)TR;"
        }
    .end annotation

    invoke-interface {p1}, Lorg/openjdk/source/tree/AnnotatedTypeTree;->getAnnotations()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lorg/openjdk/source/util/TreeScanner;->scan(Ljava/lang/Iterable;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1}, Lorg/openjdk/source/tree/AnnotatedTypeTree;->getUnderlyingType()Lorg/openjdk/source/tree/ExpressionTree;

    move-result-object p1

    invoke-direct {p0, p1, p2, v0}, Lorg/openjdk/source/util/TreeScanner;->scanAndReduce(Lorg/openjdk/source/tree/Tree;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public visitAnnotation(Lorg/openjdk/source/tree/AnnotationTree;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/source/tree/AnnotationTree;",
            "TP;)TR;"
        }
    .end annotation

    invoke-interface {p1}, Lorg/openjdk/source/tree/AnnotationTree;->getAnnotationType()Lorg/openjdk/source/tree/Tree;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lorg/openjdk/source/util/TreeScanner;->scan(Lorg/openjdk/source/tree/Tree;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1}, Lorg/openjdk/source/tree/AnnotationTree;->getArguments()Ljava/util/List;

    move-result-object p1

    invoke-direct {p0, p1, p2, v0}, Lorg/openjdk/source/util/TreeScanner;->scanAndReduce(Ljava/lang/Iterable;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public visitArrayAccess(Lorg/openjdk/source/tree/ArrayAccessTree;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/source/tree/ArrayAccessTree;",
            "TP;)TR;"
        }
    .end annotation

    invoke-interface {p1}, Lorg/openjdk/source/tree/ArrayAccessTree;->getExpression()Lorg/openjdk/source/tree/ExpressionTree;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lorg/openjdk/source/util/TreeScanner;->scan(Lorg/openjdk/source/tree/Tree;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1}, Lorg/openjdk/source/tree/ArrayAccessTree;->getIndex()Lorg/openjdk/source/tree/ExpressionTree;

    move-result-object p1

    invoke-direct {p0, p1, p2, v0}, Lorg/openjdk/source/util/TreeScanner;->scanAndReduce(Lorg/openjdk/source/tree/Tree;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public visitArrayType(Lorg/openjdk/source/tree/ArrayTypeTree;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/source/tree/ArrayTypeTree;",
            "TP;)TR;"
        }
    .end annotation

    invoke-interface {p1}, Lorg/openjdk/source/tree/ArrayTypeTree;->getType()Lorg/openjdk/source/tree/Tree;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lorg/openjdk/source/util/TreeScanner;->scan(Lorg/openjdk/source/tree/Tree;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public visitAssert(Lorg/openjdk/source/tree/AssertTree;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/source/tree/AssertTree;",
            "TP;)TR;"
        }
    .end annotation

    invoke-interface {p1}, Lorg/openjdk/source/tree/AssertTree;->getCondition()Lorg/openjdk/source/tree/ExpressionTree;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lorg/openjdk/source/util/TreeScanner;->scan(Lorg/openjdk/source/tree/Tree;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1}, Lorg/openjdk/source/tree/AssertTree;->getDetail()Lorg/openjdk/source/tree/ExpressionTree;

    move-result-object p1

    invoke-direct {p0, p1, p2, v0}, Lorg/openjdk/source/util/TreeScanner;->scanAndReduce(Lorg/openjdk/source/tree/Tree;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public visitAssignment(Lorg/openjdk/source/tree/AssignmentTree;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/source/tree/AssignmentTree;",
            "TP;)TR;"
        }
    .end annotation

    invoke-interface {p1}, Lorg/openjdk/source/tree/AssignmentTree;->getVariable()Lorg/openjdk/source/tree/ExpressionTree;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lorg/openjdk/source/util/TreeScanner;->scan(Lorg/openjdk/source/tree/Tree;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1}, Lorg/openjdk/source/tree/AssignmentTree;->getExpression()Lorg/openjdk/source/tree/ExpressionTree;

    move-result-object p1

    invoke-direct {p0, p1, p2, v0}, Lorg/openjdk/source/util/TreeScanner;->scanAndReduce(Lorg/openjdk/source/tree/Tree;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public visitBinary(Lorg/openjdk/source/tree/BinaryTree;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/source/tree/BinaryTree;",
            "TP;)TR;"
        }
    .end annotation

    invoke-interface {p1}, Lorg/openjdk/source/tree/BinaryTree;->getLeftOperand()Lorg/openjdk/source/tree/ExpressionTree;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lorg/openjdk/source/util/TreeScanner;->scan(Lorg/openjdk/source/tree/Tree;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1}, Lorg/openjdk/source/tree/BinaryTree;->getRightOperand()Lorg/openjdk/source/tree/ExpressionTree;

    move-result-object p1

    invoke-direct {p0, p1, p2, v0}, Lorg/openjdk/source/util/TreeScanner;->scanAndReduce(Lorg/openjdk/source/tree/Tree;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public visitBlock(Lorg/openjdk/source/tree/BlockTree;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/source/tree/BlockTree;",
            "TP;)TR;"
        }
    .end annotation

    invoke-interface {p1}, Lorg/openjdk/source/tree/BlockTree;->getStatements()Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lorg/openjdk/source/util/TreeScanner;->scan(Ljava/lang/Iterable;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public visitBreak(Lorg/openjdk/source/tree/BreakTree;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/source/tree/BreakTree;",
            "TP;)TR;"
        }
    .end annotation

    const/4 p1, 0x0

    return-object p1
.end method

.method public visitCase(Lorg/openjdk/source/tree/CaseTree;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/source/tree/CaseTree;",
            "TP;)TR;"
        }
    .end annotation

    invoke-interface {p1}, Lorg/openjdk/source/tree/CaseTree;->getExpression()Lorg/openjdk/source/tree/ExpressionTree;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lorg/openjdk/source/util/TreeScanner;->scan(Lorg/openjdk/source/tree/Tree;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1}, Lorg/openjdk/source/tree/CaseTree;->getStatements()Ljava/util/List;

    move-result-object p1

    invoke-direct {p0, p1, p2, v0}, Lorg/openjdk/source/util/TreeScanner;->scanAndReduce(Ljava/lang/Iterable;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public visitCatch(Lorg/openjdk/source/tree/CatchTree;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/source/tree/CatchTree;",
            "TP;)TR;"
        }
    .end annotation

    invoke-interface {p1}, Lorg/openjdk/source/tree/CatchTree;->getParameter()Lorg/openjdk/source/tree/VariableTree;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lorg/openjdk/source/util/TreeScanner;->scan(Lorg/openjdk/source/tree/Tree;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1}, Lorg/openjdk/source/tree/CatchTree;->getBlock()Lorg/openjdk/source/tree/BlockTree;

    move-result-object p1

    invoke-direct {p0, p1, p2, v0}, Lorg/openjdk/source/util/TreeScanner;->scanAndReduce(Lorg/openjdk/source/tree/Tree;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public visitClass(Lorg/openjdk/source/tree/ClassTree;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/source/tree/ClassTree;",
            "TP;)TR;"
        }
    .end annotation

    invoke-interface {p1}, Lorg/openjdk/source/tree/ClassTree;->getModifiers()Lorg/openjdk/source/tree/ModifiersTree;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lorg/openjdk/source/util/TreeScanner;->scan(Lorg/openjdk/source/tree/Tree;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1}, Lorg/openjdk/source/tree/ClassTree;->getTypeParameters()Ljava/util/List;

    move-result-object v1

    invoke-direct {p0, v1, p2, v0}, Lorg/openjdk/source/util/TreeScanner;->scanAndReduce(Ljava/lang/Iterable;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1}, Lorg/openjdk/source/tree/ClassTree;->getExtendsClause()Lorg/openjdk/source/tree/Tree;

    move-result-object v1

    invoke-direct {p0, v1, p2, v0}, Lorg/openjdk/source/util/TreeScanner;->scanAndReduce(Lorg/openjdk/source/tree/Tree;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1}, Lorg/openjdk/source/tree/ClassTree;->getImplementsClause()Ljava/util/List;

    move-result-object v1

    invoke-direct {p0, v1, p2, v0}, Lorg/openjdk/source/util/TreeScanner;->scanAndReduce(Ljava/lang/Iterable;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1}, Lorg/openjdk/source/tree/ClassTree;->getMembers()Ljava/util/List;

    move-result-object p1

    invoke-direct {p0, p1, p2, v0}, Lorg/openjdk/source/util/TreeScanner;->scanAndReduce(Ljava/lang/Iterable;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public visitCompilationUnit(Lorg/openjdk/source/tree/CompilationUnitTree;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/source/tree/CompilationUnitTree;",
            "TP;)TR;"
        }
    .end annotation

    invoke-interface {p1}, Lorg/openjdk/source/tree/CompilationUnitTree;->getPackage()Lorg/openjdk/source/tree/PackageTree;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lorg/openjdk/source/util/TreeScanner;->scan(Lorg/openjdk/source/tree/Tree;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1}, Lorg/openjdk/source/tree/CompilationUnitTree;->getImports()Ljava/util/List;

    move-result-object v1

    invoke-direct {p0, v1, p2, v0}, Lorg/openjdk/source/util/TreeScanner;->scanAndReduce(Ljava/lang/Iterable;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1}, Lorg/openjdk/source/tree/CompilationUnitTree;->getTypeDecls()Ljava/util/List;

    move-result-object p1

    invoke-direct {p0, p1, p2, v0}, Lorg/openjdk/source/util/TreeScanner;->scanAndReduce(Ljava/lang/Iterable;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public visitCompoundAssignment(Lorg/openjdk/source/tree/CompoundAssignmentTree;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/source/tree/CompoundAssignmentTree;",
            "TP;)TR;"
        }
    .end annotation

    invoke-interface {p1}, Lorg/openjdk/source/tree/CompoundAssignmentTree;->getVariable()Lorg/openjdk/source/tree/ExpressionTree;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lorg/openjdk/source/util/TreeScanner;->scan(Lorg/openjdk/source/tree/Tree;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1}, Lorg/openjdk/source/tree/CompoundAssignmentTree;->getExpression()Lorg/openjdk/source/tree/ExpressionTree;

    move-result-object p1

    invoke-direct {p0, p1, p2, v0}, Lorg/openjdk/source/util/TreeScanner;->scanAndReduce(Lorg/openjdk/source/tree/Tree;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public visitConditionalExpression(Lorg/openjdk/source/tree/ConditionalExpressionTree;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/source/tree/ConditionalExpressionTree;",
            "TP;)TR;"
        }
    .end annotation

    invoke-interface {p1}, Lorg/openjdk/source/tree/ConditionalExpressionTree;->getCondition()Lorg/openjdk/source/tree/ExpressionTree;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lorg/openjdk/source/util/TreeScanner;->scan(Lorg/openjdk/source/tree/Tree;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1}, Lorg/openjdk/source/tree/ConditionalExpressionTree;->getTrueExpression()Lorg/openjdk/source/tree/ExpressionTree;

    move-result-object v1

    invoke-direct {p0, v1, p2, v0}, Lorg/openjdk/source/util/TreeScanner;->scanAndReduce(Lorg/openjdk/source/tree/Tree;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1}, Lorg/openjdk/source/tree/ConditionalExpressionTree;->getFalseExpression()Lorg/openjdk/source/tree/ExpressionTree;

    move-result-object p1

    invoke-direct {p0, p1, p2, v0}, Lorg/openjdk/source/util/TreeScanner;->scanAndReduce(Lorg/openjdk/source/tree/Tree;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public visitContinue(Lorg/openjdk/source/tree/ContinueTree;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/source/tree/ContinueTree;",
            "TP;)TR;"
        }
    .end annotation

    const/4 p1, 0x0

    return-object p1
.end method

.method public visitDoWhileLoop(Lorg/openjdk/source/tree/DoWhileLoopTree;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/source/tree/DoWhileLoopTree;",
            "TP;)TR;"
        }
    .end annotation

    invoke-interface {p1}, Lorg/openjdk/source/tree/DoWhileLoopTree;->getStatement()Lorg/openjdk/source/tree/StatementTree;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lorg/openjdk/source/util/TreeScanner;->scan(Lorg/openjdk/source/tree/Tree;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1}, Lorg/openjdk/source/tree/DoWhileLoopTree;->getCondition()Lorg/openjdk/source/tree/ExpressionTree;

    move-result-object p1

    invoke-direct {p0, p1, p2, v0}, Lorg/openjdk/source/util/TreeScanner;->scanAndReduce(Lorg/openjdk/source/tree/Tree;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public visitEmptyStatement(Lorg/openjdk/source/tree/EmptyStatementTree;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/source/tree/EmptyStatementTree;",
            "TP;)TR;"
        }
    .end annotation

    const/4 p1, 0x0

    return-object p1
.end method

.method public visitEnhancedForLoop(Lorg/openjdk/source/tree/EnhancedForLoopTree;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/source/tree/EnhancedForLoopTree;",
            "TP;)TR;"
        }
    .end annotation

    invoke-interface {p1}, Lorg/openjdk/source/tree/EnhancedForLoopTree;->getVariable()Lorg/openjdk/source/tree/VariableTree;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lorg/openjdk/source/util/TreeScanner;->scan(Lorg/openjdk/source/tree/Tree;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1}, Lorg/openjdk/source/tree/EnhancedForLoopTree;->getExpression()Lorg/openjdk/source/tree/ExpressionTree;

    move-result-object v1

    invoke-direct {p0, v1, p2, v0}, Lorg/openjdk/source/util/TreeScanner;->scanAndReduce(Lorg/openjdk/source/tree/Tree;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1}, Lorg/openjdk/source/tree/EnhancedForLoopTree;->getStatement()Lorg/openjdk/source/tree/StatementTree;

    move-result-object p1

    invoke-direct {p0, p1, p2, v0}, Lorg/openjdk/source/util/TreeScanner;->scanAndReduce(Lorg/openjdk/source/tree/Tree;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public visitErroneous(Lorg/openjdk/source/tree/ErroneousTree;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/source/tree/ErroneousTree;",
            "TP;)TR;"
        }
    .end annotation

    const/4 p1, 0x0

    return-object p1
.end method

.method public visitExports(Lorg/openjdk/source/tree/ExportsTree;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/source/tree/ExportsTree;",
            "TP;)TR;"
        }
    .end annotation

    invoke-interface {p1}, Lorg/openjdk/source/tree/ExportsTree;->getPackageName()Lorg/openjdk/source/tree/ExpressionTree;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lorg/openjdk/source/util/TreeScanner;->scan(Lorg/openjdk/source/tree/Tree;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1}, Lorg/openjdk/source/tree/ExportsTree;->getModuleNames()Ljava/util/List;

    move-result-object p1

    invoke-direct {p0, p1, p2, v0}, Lorg/openjdk/source/util/TreeScanner;->scanAndReduce(Ljava/lang/Iterable;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public visitExpressionStatement(Lorg/openjdk/source/tree/ExpressionStatementTree;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/source/tree/ExpressionStatementTree;",
            "TP;)TR;"
        }
    .end annotation

    invoke-interface {p1}, Lorg/openjdk/source/tree/ExpressionStatementTree;->getExpression()Lorg/openjdk/source/tree/ExpressionTree;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lorg/openjdk/source/util/TreeScanner;->scan(Lorg/openjdk/source/tree/Tree;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public visitForLoop(Lorg/openjdk/source/tree/ForLoopTree;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/source/tree/ForLoopTree;",
            "TP;)TR;"
        }
    .end annotation

    invoke-interface {p1}, Lorg/openjdk/source/tree/ForLoopTree;->getInitializer()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lorg/openjdk/source/util/TreeScanner;->scan(Ljava/lang/Iterable;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1}, Lorg/openjdk/source/tree/ForLoopTree;->getCondition()Lorg/openjdk/source/tree/ExpressionTree;

    move-result-object v1

    invoke-direct {p0, v1, p2, v0}, Lorg/openjdk/source/util/TreeScanner;->scanAndReduce(Lorg/openjdk/source/tree/Tree;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1}, Lorg/openjdk/source/tree/ForLoopTree;->getUpdate()Ljava/util/List;

    move-result-object v1

    invoke-direct {p0, v1, p2, v0}, Lorg/openjdk/source/util/TreeScanner;->scanAndReduce(Ljava/lang/Iterable;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1}, Lorg/openjdk/source/tree/ForLoopTree;->getStatement()Lorg/openjdk/source/tree/StatementTree;

    move-result-object p1

    invoke-direct {p0, p1, p2, v0}, Lorg/openjdk/source/util/TreeScanner;->scanAndReduce(Lorg/openjdk/source/tree/Tree;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public visitIdentifier(Lorg/openjdk/source/tree/IdentifierTree;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/source/tree/IdentifierTree;",
            "TP;)TR;"
        }
    .end annotation

    const/4 p1, 0x0

    return-object p1
.end method

.method public visitIf(Lorg/openjdk/source/tree/IfTree;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/source/tree/IfTree;",
            "TP;)TR;"
        }
    .end annotation

    invoke-interface {p1}, Lorg/openjdk/source/tree/IfTree;->getCondition()Lorg/openjdk/source/tree/ExpressionTree;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lorg/openjdk/source/util/TreeScanner;->scan(Lorg/openjdk/source/tree/Tree;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1}, Lorg/openjdk/source/tree/IfTree;->getThenStatement()Lorg/openjdk/source/tree/StatementTree;

    move-result-object v1

    invoke-direct {p0, v1, p2, v0}, Lorg/openjdk/source/util/TreeScanner;->scanAndReduce(Lorg/openjdk/source/tree/Tree;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1}, Lorg/openjdk/source/tree/IfTree;->getElseStatement()Lorg/openjdk/source/tree/StatementTree;

    move-result-object p1

    invoke-direct {p0, p1, p2, v0}, Lorg/openjdk/source/util/TreeScanner;->scanAndReduce(Lorg/openjdk/source/tree/Tree;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public visitImport(Lorg/openjdk/source/tree/ImportTree;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/source/tree/ImportTree;",
            "TP;)TR;"
        }
    .end annotation

    invoke-interface {p1}, Lorg/openjdk/source/tree/ImportTree;->getQualifiedIdentifier()Lorg/openjdk/source/tree/Tree;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lorg/openjdk/source/util/TreeScanner;->scan(Lorg/openjdk/source/tree/Tree;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public visitInstanceOf(Lorg/openjdk/source/tree/InstanceOfTree;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/source/tree/InstanceOfTree;",
            "TP;)TR;"
        }
    .end annotation

    invoke-interface {p1}, Lorg/openjdk/source/tree/InstanceOfTree;->getExpression()Lorg/openjdk/source/tree/ExpressionTree;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lorg/openjdk/source/util/TreeScanner;->scan(Lorg/openjdk/source/tree/Tree;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1}, Lorg/openjdk/source/tree/InstanceOfTree;->getType()Lorg/openjdk/source/tree/Tree;

    move-result-object p1

    invoke-direct {p0, p1, p2, v0}, Lorg/openjdk/source/util/TreeScanner;->scanAndReduce(Lorg/openjdk/source/tree/Tree;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public visitIntersectionType(Lorg/openjdk/source/tree/IntersectionTypeTree;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/source/tree/IntersectionTypeTree;",
            "TP;)TR;"
        }
    .end annotation

    invoke-interface {p1}, Lorg/openjdk/source/tree/IntersectionTypeTree;->getBounds()Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lorg/openjdk/source/util/TreeScanner;->scan(Ljava/lang/Iterable;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public visitLabeledStatement(Lorg/openjdk/source/tree/LabeledStatementTree;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/source/tree/LabeledStatementTree;",
            "TP;)TR;"
        }
    .end annotation

    invoke-interface {p1}, Lorg/openjdk/source/tree/LabeledStatementTree;->getStatement()Lorg/openjdk/source/tree/StatementTree;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lorg/openjdk/source/util/TreeScanner;->scan(Lorg/openjdk/source/tree/Tree;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public visitLambdaExpression(Lorg/openjdk/source/tree/LambdaExpressionTree;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/source/tree/LambdaExpressionTree;",
            "TP;)TR;"
        }
    .end annotation

    invoke-interface {p1}, Lorg/openjdk/source/tree/LambdaExpressionTree;->getParameters()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lorg/openjdk/source/util/TreeScanner;->scan(Ljava/lang/Iterable;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1}, Lorg/openjdk/source/tree/LambdaExpressionTree;->getBody()Lorg/openjdk/source/tree/Tree;

    move-result-object p1

    invoke-direct {p0, p1, p2, v0}, Lorg/openjdk/source/util/TreeScanner;->scanAndReduce(Lorg/openjdk/source/tree/Tree;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public visitLiteral(Lorg/openjdk/source/tree/LiteralTree;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/source/tree/LiteralTree;",
            "TP;)TR;"
        }
    .end annotation

    const/4 p1, 0x0

    return-object p1
.end method

.method public visitMemberReference(Lorg/openjdk/source/tree/MemberReferenceTree;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/source/tree/MemberReferenceTree;",
            "TP;)TR;"
        }
    .end annotation

    invoke-interface {p1}, Lorg/openjdk/source/tree/MemberReferenceTree;->getQualifierExpression()Lorg/openjdk/source/tree/ExpressionTree;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lorg/openjdk/source/util/TreeScanner;->scan(Lorg/openjdk/source/tree/Tree;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1}, Lorg/openjdk/source/tree/MemberReferenceTree;->getTypeArguments()Ljava/util/List;

    move-result-object p1

    invoke-direct {p0, p1, p2, v0}, Lorg/openjdk/source/util/TreeScanner;->scanAndReduce(Ljava/lang/Iterable;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public visitMemberSelect(Lorg/openjdk/source/tree/MemberSelectTree;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/source/tree/MemberSelectTree;",
            "TP;)TR;"
        }
    .end annotation

    invoke-interface {p1}, Lorg/openjdk/source/tree/MemberSelectTree;->getExpression()Lorg/openjdk/source/tree/ExpressionTree;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lorg/openjdk/source/util/TreeScanner;->scan(Lorg/openjdk/source/tree/Tree;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public visitMethod(Lorg/openjdk/source/tree/MethodTree;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/source/tree/MethodTree;",
            "TP;)TR;"
        }
    .end annotation

    invoke-interface {p1}, Lorg/openjdk/source/tree/MethodTree;->getModifiers()Lorg/openjdk/source/tree/ModifiersTree;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lorg/openjdk/source/util/TreeScanner;->scan(Lorg/openjdk/source/tree/Tree;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1}, Lorg/openjdk/source/tree/MethodTree;->getReturnType()Lorg/openjdk/source/tree/Tree;

    move-result-object v1

    invoke-direct {p0, v1, p2, v0}, Lorg/openjdk/source/util/TreeScanner;->scanAndReduce(Lorg/openjdk/source/tree/Tree;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1}, Lorg/openjdk/source/tree/MethodTree;->getTypeParameters()Ljava/util/List;

    move-result-object v1

    invoke-direct {p0, v1, p2, v0}, Lorg/openjdk/source/util/TreeScanner;->scanAndReduce(Ljava/lang/Iterable;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1}, Lorg/openjdk/source/tree/MethodTree;->getParameters()Ljava/util/List;

    move-result-object v1

    invoke-direct {p0, v1, p2, v0}, Lorg/openjdk/source/util/TreeScanner;->scanAndReduce(Ljava/lang/Iterable;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1}, Lorg/openjdk/source/tree/MethodTree;->getReceiverParameter()Lorg/openjdk/source/tree/VariableTree;

    move-result-object v1

    invoke-direct {p0, v1, p2, v0}, Lorg/openjdk/source/util/TreeScanner;->scanAndReduce(Lorg/openjdk/source/tree/Tree;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1}, Lorg/openjdk/source/tree/MethodTree;->getThrows()Ljava/util/List;

    move-result-object v1

    invoke-direct {p0, v1, p2, v0}, Lorg/openjdk/source/util/TreeScanner;->scanAndReduce(Ljava/lang/Iterable;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1}, Lorg/openjdk/source/tree/MethodTree;->getBody()Lorg/openjdk/source/tree/BlockTree;

    move-result-object v1

    invoke-direct {p0, v1, p2, v0}, Lorg/openjdk/source/util/TreeScanner;->scanAndReduce(Lorg/openjdk/source/tree/Tree;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1}, Lorg/openjdk/source/tree/MethodTree;->getDefaultValue()Lorg/openjdk/source/tree/Tree;

    move-result-object p1

    invoke-direct {p0, p1, p2, v0}, Lorg/openjdk/source/util/TreeScanner;->scanAndReduce(Lorg/openjdk/source/tree/Tree;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public visitMethodInvocation(Lorg/openjdk/source/tree/MethodInvocationTree;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/source/tree/MethodInvocationTree;",
            "TP;)TR;"
        }
    .end annotation

    invoke-interface {p1}, Lorg/openjdk/source/tree/MethodInvocationTree;->getTypeArguments()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lorg/openjdk/source/util/TreeScanner;->scan(Ljava/lang/Iterable;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1}, Lorg/openjdk/source/tree/MethodInvocationTree;->getMethodSelect()Lorg/openjdk/source/tree/ExpressionTree;

    move-result-object v1

    invoke-direct {p0, v1, p2, v0}, Lorg/openjdk/source/util/TreeScanner;->scanAndReduce(Lorg/openjdk/source/tree/Tree;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1}, Lorg/openjdk/source/tree/MethodInvocationTree;->getArguments()Ljava/util/List;

    move-result-object p1

    invoke-direct {p0, p1, p2, v0}, Lorg/openjdk/source/util/TreeScanner;->scanAndReduce(Ljava/lang/Iterable;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public visitModifiers(Lorg/openjdk/source/tree/ModifiersTree;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/source/tree/ModifiersTree;",
            "TP;)TR;"
        }
    .end annotation

    invoke-interface {p1}, Lorg/openjdk/source/tree/ModifiersTree;->getAnnotations()Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lorg/openjdk/source/util/TreeScanner;->scan(Ljava/lang/Iterable;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public visitModule(Lorg/openjdk/source/tree/ModuleTree;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/source/tree/ModuleTree;",
            "TP;)TR;"
        }
    .end annotation

    invoke-interface {p1}, Lorg/openjdk/source/tree/ModuleTree;->getAnnotations()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lorg/openjdk/source/util/TreeScanner;->scan(Ljava/lang/Iterable;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1}, Lorg/openjdk/source/tree/ModuleTree;->getName()Lorg/openjdk/source/tree/ExpressionTree;

    move-result-object v1

    invoke-direct {p0, v1, p2, v0}, Lorg/openjdk/source/util/TreeScanner;->scanAndReduce(Lorg/openjdk/source/tree/Tree;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1}, Lorg/openjdk/source/tree/ModuleTree;->getDirectives()Ljava/util/List;

    move-result-object p1

    invoke-direct {p0, p1, p2, v0}, Lorg/openjdk/source/util/TreeScanner;->scanAndReduce(Ljava/lang/Iterable;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public visitNewArray(Lorg/openjdk/source/tree/NewArrayTree;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/source/tree/NewArrayTree;",
            "TP;)TR;"
        }
    .end annotation

    invoke-interface {p1}, Lorg/openjdk/source/tree/NewArrayTree;->getType()Lorg/openjdk/source/tree/Tree;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lorg/openjdk/source/util/TreeScanner;->scan(Lorg/openjdk/source/tree/Tree;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1}, Lorg/openjdk/source/tree/NewArrayTree;->getDimensions()Ljava/util/List;

    move-result-object v1

    invoke-direct {p0, v1, p2, v0}, Lorg/openjdk/source/util/TreeScanner;->scanAndReduce(Ljava/lang/Iterable;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1}, Lorg/openjdk/source/tree/NewArrayTree;->getInitializers()Ljava/util/List;

    move-result-object v1

    invoke-direct {p0, v1, p2, v0}, Lorg/openjdk/source/util/TreeScanner;->scanAndReduce(Ljava/lang/Iterable;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1}, Lorg/openjdk/source/tree/NewArrayTree;->getAnnotations()Ljava/util/List;

    move-result-object v1

    invoke-direct {p0, v1, p2, v0}, Lorg/openjdk/source/util/TreeScanner;->scanAndReduce(Ljava/lang/Iterable;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1}, Lorg/openjdk/source/tree/NewArrayTree;->getDimAnnotations()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Iterable;

    invoke-direct {p0, v1, p2, v0}, Lorg/openjdk/source/util/TreeScanner;->scanAndReduce(Ljava/lang/Iterable;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public visitNewClass(Lorg/openjdk/source/tree/NewClassTree;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/source/tree/NewClassTree;",
            "TP;)TR;"
        }
    .end annotation

    invoke-interface {p1}, Lorg/openjdk/source/tree/NewClassTree;->getEnclosingExpression()Lorg/openjdk/source/tree/ExpressionTree;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lorg/openjdk/source/util/TreeScanner;->scan(Lorg/openjdk/source/tree/Tree;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1}, Lorg/openjdk/source/tree/NewClassTree;->getIdentifier()Lorg/openjdk/source/tree/ExpressionTree;

    move-result-object v1

    invoke-direct {p0, v1, p2, v0}, Lorg/openjdk/source/util/TreeScanner;->scanAndReduce(Lorg/openjdk/source/tree/Tree;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1}, Lorg/openjdk/source/tree/NewClassTree;->getTypeArguments()Ljava/util/List;

    move-result-object v1

    invoke-direct {p0, v1, p2, v0}, Lorg/openjdk/source/util/TreeScanner;->scanAndReduce(Ljava/lang/Iterable;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1}, Lorg/openjdk/source/tree/NewClassTree;->getArguments()Ljava/util/List;

    move-result-object v1

    invoke-direct {p0, v1, p2, v0}, Lorg/openjdk/source/util/TreeScanner;->scanAndReduce(Ljava/lang/Iterable;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1}, Lorg/openjdk/source/tree/NewClassTree;->getClassBody()Lorg/openjdk/source/tree/ClassTree;

    move-result-object p1

    invoke-direct {p0, p1, p2, v0}, Lorg/openjdk/source/util/TreeScanner;->scanAndReduce(Lorg/openjdk/source/tree/Tree;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public visitOpens(Lorg/openjdk/source/tree/OpensTree;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/source/tree/OpensTree;",
            "TP;)TR;"
        }
    .end annotation

    invoke-interface {p1}, Lorg/openjdk/source/tree/OpensTree;->getPackageName()Lorg/openjdk/source/tree/ExpressionTree;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lorg/openjdk/source/util/TreeScanner;->scan(Lorg/openjdk/source/tree/Tree;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1}, Lorg/openjdk/source/tree/OpensTree;->getModuleNames()Ljava/util/List;

    move-result-object p1

    invoke-direct {p0, p1, p2, v0}, Lorg/openjdk/source/util/TreeScanner;->scanAndReduce(Ljava/lang/Iterable;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public visitOther(Lorg/openjdk/source/tree/Tree;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/source/tree/Tree;",
            "TP;)TR;"
        }
    .end annotation

    const/4 p1, 0x0

    return-object p1
.end method

.method public visitPackage(Lorg/openjdk/source/tree/PackageTree;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/source/tree/PackageTree;",
            "TP;)TR;"
        }
    .end annotation

    invoke-interface {p1}, Lorg/openjdk/source/tree/PackageTree;->getAnnotations()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lorg/openjdk/source/util/TreeScanner;->scan(Ljava/lang/Iterable;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1}, Lorg/openjdk/source/tree/PackageTree;->getPackageName()Lorg/openjdk/source/tree/ExpressionTree;

    move-result-object p1

    invoke-direct {p0, p1, p2, v0}, Lorg/openjdk/source/util/TreeScanner;->scanAndReduce(Lorg/openjdk/source/tree/Tree;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public visitParameterizedType(Lorg/openjdk/source/tree/ParameterizedTypeTree;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/source/tree/ParameterizedTypeTree;",
            "TP;)TR;"
        }
    .end annotation

    invoke-interface {p1}, Lorg/openjdk/source/tree/ParameterizedTypeTree;->getType()Lorg/openjdk/source/tree/Tree;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lorg/openjdk/source/util/TreeScanner;->scan(Lorg/openjdk/source/tree/Tree;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1}, Lorg/openjdk/source/tree/ParameterizedTypeTree;->getTypeArguments()Ljava/util/List;

    move-result-object p1

    invoke-direct {p0, p1, p2, v0}, Lorg/openjdk/source/util/TreeScanner;->scanAndReduce(Ljava/lang/Iterable;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public visitParenthesized(Lorg/openjdk/source/tree/ParenthesizedTree;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/source/tree/ParenthesizedTree;",
            "TP;)TR;"
        }
    .end annotation

    invoke-interface {p1}, Lorg/openjdk/source/tree/ParenthesizedTree;->getExpression()Lorg/openjdk/source/tree/ExpressionTree;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lorg/openjdk/source/util/TreeScanner;->scan(Lorg/openjdk/source/tree/Tree;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public visitPrimitiveType(Lorg/openjdk/source/tree/PrimitiveTypeTree;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/source/tree/PrimitiveTypeTree;",
            "TP;)TR;"
        }
    .end annotation

    const/4 p1, 0x0

    return-object p1
.end method

.method public visitProvides(Lorg/openjdk/source/tree/ProvidesTree;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/source/tree/ProvidesTree;",
            "TP;)TR;"
        }
    .end annotation

    invoke-interface {p1}, Lorg/openjdk/source/tree/ProvidesTree;->getServiceName()Lorg/openjdk/source/tree/ExpressionTree;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lorg/openjdk/source/util/TreeScanner;->scan(Lorg/openjdk/source/tree/Tree;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1}, Lorg/openjdk/source/tree/ProvidesTree;->getImplementationNames()Ljava/util/List;

    move-result-object p1

    invoke-direct {p0, p1, p2, v0}, Lorg/openjdk/source/util/TreeScanner;->scanAndReduce(Ljava/lang/Iterable;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public visitRequires(Lorg/openjdk/source/tree/RequiresTree;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/source/tree/RequiresTree;",
            "TP;)TR;"
        }
    .end annotation

    invoke-interface {p1}, Lorg/openjdk/source/tree/RequiresTree;->getModuleName()Lorg/openjdk/source/tree/ExpressionTree;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lorg/openjdk/source/util/TreeScanner;->scan(Lorg/openjdk/source/tree/Tree;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public visitReturn(Lorg/openjdk/source/tree/ReturnTree;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/source/tree/ReturnTree;",
            "TP;)TR;"
        }
    .end annotation

    invoke-interface {p1}, Lorg/openjdk/source/tree/ReturnTree;->getExpression()Lorg/openjdk/source/tree/ExpressionTree;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lorg/openjdk/source/util/TreeScanner;->scan(Lorg/openjdk/source/tree/Tree;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public visitSwitch(Lorg/openjdk/source/tree/SwitchTree;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/source/tree/SwitchTree;",
            "TP;)TR;"
        }
    .end annotation

    invoke-interface {p1}, Lorg/openjdk/source/tree/SwitchTree;->getExpression()Lorg/openjdk/source/tree/ExpressionTree;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lorg/openjdk/source/util/TreeScanner;->scan(Lorg/openjdk/source/tree/Tree;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1}, Lorg/openjdk/source/tree/SwitchTree;->getCases()Ljava/util/List;

    move-result-object p1

    invoke-direct {p0, p1, p2, v0}, Lorg/openjdk/source/util/TreeScanner;->scanAndReduce(Ljava/lang/Iterable;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public visitSynchronized(Lorg/openjdk/source/tree/SynchronizedTree;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/source/tree/SynchronizedTree;",
            "TP;)TR;"
        }
    .end annotation

    invoke-interface {p1}, Lorg/openjdk/source/tree/SynchronizedTree;->getExpression()Lorg/openjdk/source/tree/ExpressionTree;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lorg/openjdk/source/util/TreeScanner;->scan(Lorg/openjdk/source/tree/Tree;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1}, Lorg/openjdk/source/tree/SynchronizedTree;->getBlock()Lorg/openjdk/source/tree/BlockTree;

    move-result-object p1

    invoke-direct {p0, p1, p2, v0}, Lorg/openjdk/source/util/TreeScanner;->scanAndReduce(Lorg/openjdk/source/tree/Tree;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public visitThrow(Lorg/openjdk/source/tree/ThrowTree;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/source/tree/ThrowTree;",
            "TP;)TR;"
        }
    .end annotation

    invoke-interface {p1}, Lorg/openjdk/source/tree/ThrowTree;->getExpression()Lorg/openjdk/source/tree/ExpressionTree;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lorg/openjdk/source/util/TreeScanner;->scan(Lorg/openjdk/source/tree/Tree;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public visitTry(Lorg/openjdk/source/tree/TryTree;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/source/tree/TryTree;",
            "TP;)TR;"
        }
    .end annotation

    invoke-interface {p1}, Lorg/openjdk/source/tree/TryTree;->getResources()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lorg/openjdk/source/util/TreeScanner;->scan(Ljava/lang/Iterable;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1}, Lorg/openjdk/source/tree/TryTree;->getBlock()Lorg/openjdk/source/tree/BlockTree;

    move-result-object v1

    invoke-direct {p0, v1, p2, v0}, Lorg/openjdk/source/util/TreeScanner;->scanAndReduce(Lorg/openjdk/source/tree/Tree;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1}, Lorg/openjdk/source/tree/TryTree;->getCatches()Ljava/util/List;

    move-result-object v1

    invoke-direct {p0, v1, p2, v0}, Lorg/openjdk/source/util/TreeScanner;->scanAndReduce(Ljava/lang/Iterable;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1}, Lorg/openjdk/source/tree/TryTree;->getFinallyBlock()Lorg/openjdk/source/tree/BlockTree;

    move-result-object p1

    invoke-direct {p0, p1, p2, v0}, Lorg/openjdk/source/util/TreeScanner;->scanAndReduce(Lorg/openjdk/source/tree/Tree;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public visitTypeCast(Lorg/openjdk/source/tree/TypeCastTree;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/source/tree/TypeCastTree;",
            "TP;)TR;"
        }
    .end annotation

    invoke-interface {p1}, Lorg/openjdk/source/tree/TypeCastTree;->getType()Lorg/openjdk/source/tree/Tree;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lorg/openjdk/source/util/TreeScanner;->scan(Lorg/openjdk/source/tree/Tree;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1}, Lorg/openjdk/source/tree/TypeCastTree;->getExpression()Lorg/openjdk/source/tree/ExpressionTree;

    move-result-object p1

    invoke-direct {p0, p1, p2, v0}, Lorg/openjdk/source/util/TreeScanner;->scanAndReduce(Lorg/openjdk/source/tree/Tree;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public visitTypeParameter(Lorg/openjdk/source/tree/TypeParameterTree;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/source/tree/TypeParameterTree;",
            "TP;)TR;"
        }
    .end annotation

    invoke-interface {p1}, Lorg/openjdk/source/tree/TypeParameterTree;->getAnnotations()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lorg/openjdk/source/util/TreeScanner;->scan(Ljava/lang/Iterable;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1}, Lorg/openjdk/source/tree/TypeParameterTree;->getBounds()Ljava/util/List;

    move-result-object p1

    invoke-direct {p0, p1, p2, v0}, Lorg/openjdk/source/util/TreeScanner;->scanAndReduce(Ljava/lang/Iterable;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public visitUnary(Lorg/openjdk/source/tree/UnaryTree;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/source/tree/UnaryTree;",
            "TP;)TR;"
        }
    .end annotation

    invoke-interface {p1}, Lorg/openjdk/source/tree/UnaryTree;->getExpression()Lorg/openjdk/source/tree/ExpressionTree;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lorg/openjdk/source/util/TreeScanner;->scan(Lorg/openjdk/source/tree/Tree;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public visitUnionType(Lorg/openjdk/source/tree/UnionTypeTree;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/source/tree/UnionTypeTree;",
            "TP;)TR;"
        }
    .end annotation

    invoke-interface {p1}, Lorg/openjdk/source/tree/UnionTypeTree;->getTypeAlternatives()Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lorg/openjdk/source/util/TreeScanner;->scan(Ljava/lang/Iterable;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public visitUses(Lorg/openjdk/source/tree/UsesTree;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/source/tree/UsesTree;",
            "TP;)TR;"
        }
    .end annotation

    invoke-interface {p1}, Lorg/openjdk/source/tree/UsesTree;->getServiceName()Lorg/openjdk/source/tree/ExpressionTree;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lorg/openjdk/source/util/TreeScanner;->scan(Lorg/openjdk/source/tree/Tree;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public visitVariable(Lorg/openjdk/source/tree/VariableTree;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/source/tree/VariableTree;",
            "TP;)TR;"
        }
    .end annotation

    invoke-interface {p1}, Lorg/openjdk/source/tree/VariableTree;->getModifiers()Lorg/openjdk/source/tree/ModifiersTree;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lorg/openjdk/source/util/TreeScanner;->scan(Lorg/openjdk/source/tree/Tree;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1}, Lorg/openjdk/source/tree/VariableTree;->getType()Lorg/openjdk/source/tree/Tree;

    move-result-object v1

    invoke-direct {p0, v1, p2, v0}, Lorg/openjdk/source/util/TreeScanner;->scanAndReduce(Lorg/openjdk/source/tree/Tree;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1}, Lorg/openjdk/source/tree/VariableTree;->getNameExpression()Lorg/openjdk/source/tree/ExpressionTree;

    move-result-object v1

    invoke-direct {p0, v1, p2, v0}, Lorg/openjdk/source/util/TreeScanner;->scanAndReduce(Lorg/openjdk/source/tree/Tree;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1}, Lorg/openjdk/source/tree/VariableTree;->getInitializer()Lorg/openjdk/source/tree/ExpressionTree;

    move-result-object p1

    invoke-direct {p0, p1, p2, v0}, Lorg/openjdk/source/util/TreeScanner;->scanAndReduce(Lorg/openjdk/source/tree/Tree;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public visitWhileLoop(Lorg/openjdk/source/tree/WhileLoopTree;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/source/tree/WhileLoopTree;",
            "TP;)TR;"
        }
    .end annotation

    invoke-interface {p1}, Lorg/openjdk/source/tree/WhileLoopTree;->getCondition()Lorg/openjdk/source/tree/ExpressionTree;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lorg/openjdk/source/util/TreeScanner;->scan(Lorg/openjdk/source/tree/Tree;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1}, Lorg/openjdk/source/tree/WhileLoopTree;->getStatement()Lorg/openjdk/source/tree/StatementTree;

    move-result-object p1

    invoke-direct {p0, p1, p2, v0}, Lorg/openjdk/source/util/TreeScanner;->scanAndReduce(Lorg/openjdk/source/tree/Tree;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public visitWildcard(Lorg/openjdk/source/tree/WildcardTree;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/source/tree/WildcardTree;",
            "TP;)TR;"
        }
    .end annotation

    invoke-interface {p1}, Lorg/openjdk/source/tree/WildcardTree;->getBound()Lorg/openjdk/source/tree/Tree;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lorg/openjdk/source/util/TreeScanner;->scan(Lorg/openjdk/source/tree/Tree;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
