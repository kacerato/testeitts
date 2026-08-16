.class public Lorg/openjdk/source/util/SimpleTreeVisitor;
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


# instance fields
.field protected final DEFAULT_VALUE:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TR;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lorg/openjdk/source/util/SimpleTreeVisitor;->DEFAULT_VALUE:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TR;)V"
        }
    .end annotation

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lorg/openjdk/source/util/SimpleTreeVisitor;->DEFAULT_VALUE:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public defaultAction(Lorg/openjdk/source/tree/Tree;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/source/tree/Tree;",
            "TP;)TR;"
        }
    .end annotation

    iget-object p1, p0, Lorg/openjdk/source/util/SimpleTreeVisitor;->DEFAULT_VALUE:Ljava/lang/Object;

    return-object p1
.end method

.method public final visit(Ljava/lang/Iterable;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
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

    if-eqz p1, :cond_0

    .line 2
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/openjdk/source/tree/Tree;

    .line 3
    invoke-virtual {p0, v0, p2}, Lorg/openjdk/source/util/SimpleTreeVisitor;->visit(Lorg/openjdk/source/tree/Tree;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public final visit(Lorg/openjdk/source/tree/Tree;Ljava/lang/Object;)Ljava/lang/Object;
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
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/source/tree/AnnotatedTypeTree;",
            "TP;)TR;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lorg/openjdk/source/util/SimpleTreeVisitor;->defaultAction(Lorg/openjdk/source/tree/Tree;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public visitAnnotation(Lorg/openjdk/source/tree/AnnotationTree;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/source/tree/AnnotationTree;",
            "TP;)TR;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lorg/openjdk/source/util/SimpleTreeVisitor;->defaultAction(Lorg/openjdk/source/tree/Tree;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public visitArrayAccess(Lorg/openjdk/source/tree/ArrayAccessTree;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/source/tree/ArrayAccessTree;",
            "TP;)TR;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lorg/openjdk/source/util/SimpleTreeVisitor;->defaultAction(Lorg/openjdk/source/tree/Tree;Ljava/lang/Object;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lorg/openjdk/source/util/SimpleTreeVisitor;->defaultAction(Lorg/openjdk/source/tree/Tree;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public visitAssert(Lorg/openjdk/source/tree/AssertTree;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/source/tree/AssertTree;",
            "TP;)TR;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lorg/openjdk/source/util/SimpleTreeVisitor;->defaultAction(Lorg/openjdk/source/tree/Tree;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public visitAssignment(Lorg/openjdk/source/tree/AssignmentTree;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/source/tree/AssignmentTree;",
            "TP;)TR;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lorg/openjdk/source/util/SimpleTreeVisitor;->defaultAction(Lorg/openjdk/source/tree/Tree;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public visitBinary(Lorg/openjdk/source/tree/BinaryTree;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/source/tree/BinaryTree;",
            "TP;)TR;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lorg/openjdk/source/util/SimpleTreeVisitor;->defaultAction(Lorg/openjdk/source/tree/Tree;Ljava/lang/Object;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lorg/openjdk/source/util/SimpleTreeVisitor;->defaultAction(Lorg/openjdk/source/tree/Tree;Ljava/lang/Object;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lorg/openjdk/source/util/SimpleTreeVisitor;->defaultAction(Lorg/openjdk/source/tree/Tree;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public visitCase(Lorg/openjdk/source/tree/CaseTree;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/source/tree/CaseTree;",
            "TP;)TR;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lorg/openjdk/source/util/SimpleTreeVisitor;->defaultAction(Lorg/openjdk/source/tree/Tree;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public visitCatch(Lorg/openjdk/source/tree/CatchTree;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/source/tree/CatchTree;",
            "TP;)TR;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lorg/openjdk/source/util/SimpleTreeVisitor;->defaultAction(Lorg/openjdk/source/tree/Tree;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public visitClass(Lorg/openjdk/source/tree/ClassTree;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/source/tree/ClassTree;",
            "TP;)TR;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lorg/openjdk/source/util/SimpleTreeVisitor;->defaultAction(Lorg/openjdk/source/tree/Tree;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public visitCompilationUnit(Lorg/openjdk/source/tree/CompilationUnitTree;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/source/tree/CompilationUnitTree;",
            "TP;)TR;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lorg/openjdk/source/util/SimpleTreeVisitor;->defaultAction(Lorg/openjdk/source/tree/Tree;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public visitCompoundAssignment(Lorg/openjdk/source/tree/CompoundAssignmentTree;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/source/tree/CompoundAssignmentTree;",
            "TP;)TR;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lorg/openjdk/source/util/SimpleTreeVisitor;->defaultAction(Lorg/openjdk/source/tree/Tree;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public visitConditionalExpression(Lorg/openjdk/source/tree/ConditionalExpressionTree;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/source/tree/ConditionalExpressionTree;",
            "TP;)TR;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lorg/openjdk/source/util/SimpleTreeVisitor;->defaultAction(Lorg/openjdk/source/tree/Tree;Ljava/lang/Object;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lorg/openjdk/source/util/SimpleTreeVisitor;->defaultAction(Lorg/openjdk/source/tree/Tree;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public visitDoWhileLoop(Lorg/openjdk/source/tree/DoWhileLoopTree;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/source/tree/DoWhileLoopTree;",
            "TP;)TR;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lorg/openjdk/source/util/SimpleTreeVisitor;->defaultAction(Lorg/openjdk/source/tree/Tree;Ljava/lang/Object;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lorg/openjdk/source/util/SimpleTreeVisitor;->defaultAction(Lorg/openjdk/source/tree/Tree;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public visitEnhancedForLoop(Lorg/openjdk/source/tree/EnhancedForLoopTree;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/source/tree/EnhancedForLoopTree;",
            "TP;)TR;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lorg/openjdk/source/util/SimpleTreeVisitor;->defaultAction(Lorg/openjdk/source/tree/Tree;Ljava/lang/Object;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lorg/openjdk/source/util/SimpleTreeVisitor;->defaultAction(Lorg/openjdk/source/tree/Tree;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public visitExports(Lorg/openjdk/source/tree/ExportsTree;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/source/tree/ExportsTree;",
            "TP;)TR;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lorg/openjdk/source/util/SimpleTreeVisitor;->defaultAction(Lorg/openjdk/source/tree/Tree;Ljava/lang/Object;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lorg/openjdk/source/util/SimpleTreeVisitor;->defaultAction(Lorg/openjdk/source/tree/Tree;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public visitForLoop(Lorg/openjdk/source/tree/ForLoopTree;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/source/tree/ForLoopTree;",
            "TP;)TR;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lorg/openjdk/source/util/SimpleTreeVisitor;->defaultAction(Lorg/openjdk/source/tree/Tree;Ljava/lang/Object;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lorg/openjdk/source/util/SimpleTreeVisitor;->defaultAction(Lorg/openjdk/source/tree/Tree;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public visitIf(Lorg/openjdk/source/tree/IfTree;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/source/tree/IfTree;",
            "TP;)TR;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lorg/openjdk/source/util/SimpleTreeVisitor;->defaultAction(Lorg/openjdk/source/tree/Tree;Ljava/lang/Object;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lorg/openjdk/source/util/SimpleTreeVisitor;->defaultAction(Lorg/openjdk/source/tree/Tree;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public visitInstanceOf(Lorg/openjdk/source/tree/InstanceOfTree;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/source/tree/InstanceOfTree;",
            "TP;)TR;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lorg/openjdk/source/util/SimpleTreeVisitor;->defaultAction(Lorg/openjdk/source/tree/Tree;Ljava/lang/Object;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lorg/openjdk/source/util/SimpleTreeVisitor;->defaultAction(Lorg/openjdk/source/tree/Tree;Ljava/lang/Object;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lorg/openjdk/source/util/SimpleTreeVisitor;->defaultAction(Lorg/openjdk/source/tree/Tree;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public visitLambdaExpression(Lorg/openjdk/source/tree/LambdaExpressionTree;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/source/tree/LambdaExpressionTree;",
            "TP;)TR;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lorg/openjdk/source/util/SimpleTreeVisitor;->defaultAction(Lorg/openjdk/source/tree/Tree;Ljava/lang/Object;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lorg/openjdk/source/util/SimpleTreeVisitor;->defaultAction(Lorg/openjdk/source/tree/Tree;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public visitMemberReference(Lorg/openjdk/source/tree/MemberReferenceTree;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/source/tree/MemberReferenceTree;",
            "TP;)TR;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lorg/openjdk/source/util/SimpleTreeVisitor;->defaultAction(Lorg/openjdk/source/tree/Tree;Ljava/lang/Object;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lorg/openjdk/source/util/SimpleTreeVisitor;->defaultAction(Lorg/openjdk/source/tree/Tree;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public visitMethod(Lorg/openjdk/source/tree/MethodTree;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/source/tree/MethodTree;",
            "TP;)TR;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lorg/openjdk/source/util/SimpleTreeVisitor;->defaultAction(Lorg/openjdk/source/tree/Tree;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public visitMethodInvocation(Lorg/openjdk/source/tree/MethodInvocationTree;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/source/tree/MethodInvocationTree;",
            "TP;)TR;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lorg/openjdk/source/util/SimpleTreeVisitor;->defaultAction(Lorg/openjdk/source/tree/Tree;Ljava/lang/Object;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lorg/openjdk/source/util/SimpleTreeVisitor;->defaultAction(Lorg/openjdk/source/tree/Tree;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public visitModule(Lorg/openjdk/source/tree/ModuleTree;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/source/tree/ModuleTree;",
            "TP;)TR;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lorg/openjdk/source/util/SimpleTreeVisitor;->defaultAction(Lorg/openjdk/source/tree/Tree;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public visitNewArray(Lorg/openjdk/source/tree/NewArrayTree;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/source/tree/NewArrayTree;",
            "TP;)TR;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lorg/openjdk/source/util/SimpleTreeVisitor;->defaultAction(Lorg/openjdk/source/tree/Tree;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public visitNewClass(Lorg/openjdk/source/tree/NewClassTree;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/source/tree/NewClassTree;",
            "TP;)TR;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lorg/openjdk/source/util/SimpleTreeVisitor;->defaultAction(Lorg/openjdk/source/tree/Tree;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public visitOpens(Lorg/openjdk/source/tree/OpensTree;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/source/tree/OpensTree;",
            "TP;)TR;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lorg/openjdk/source/util/SimpleTreeVisitor;->defaultAction(Lorg/openjdk/source/tree/Tree;Ljava/lang/Object;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lorg/openjdk/source/util/SimpleTreeVisitor;->defaultAction(Lorg/openjdk/source/tree/Tree;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public visitPackage(Lorg/openjdk/source/tree/PackageTree;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/source/tree/PackageTree;",
            "TP;)TR;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lorg/openjdk/source/util/SimpleTreeVisitor;->defaultAction(Lorg/openjdk/source/tree/Tree;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public visitParameterizedType(Lorg/openjdk/source/tree/ParameterizedTypeTree;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/source/tree/ParameterizedTypeTree;",
            "TP;)TR;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lorg/openjdk/source/util/SimpleTreeVisitor;->defaultAction(Lorg/openjdk/source/tree/Tree;Ljava/lang/Object;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lorg/openjdk/source/util/SimpleTreeVisitor;->defaultAction(Lorg/openjdk/source/tree/Tree;Ljava/lang/Object;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lorg/openjdk/source/util/SimpleTreeVisitor;->defaultAction(Lorg/openjdk/source/tree/Tree;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public visitProvides(Lorg/openjdk/source/tree/ProvidesTree;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/source/tree/ProvidesTree;",
            "TP;)TR;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lorg/openjdk/source/util/SimpleTreeVisitor;->defaultAction(Lorg/openjdk/source/tree/Tree;Ljava/lang/Object;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lorg/openjdk/source/util/SimpleTreeVisitor;->defaultAction(Lorg/openjdk/source/tree/Tree;Ljava/lang/Object;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lorg/openjdk/source/util/SimpleTreeVisitor;->defaultAction(Lorg/openjdk/source/tree/Tree;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public visitSwitch(Lorg/openjdk/source/tree/SwitchTree;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/source/tree/SwitchTree;",
            "TP;)TR;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lorg/openjdk/source/util/SimpleTreeVisitor;->defaultAction(Lorg/openjdk/source/tree/Tree;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public visitSynchronized(Lorg/openjdk/source/tree/SynchronizedTree;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/source/tree/SynchronizedTree;",
            "TP;)TR;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lorg/openjdk/source/util/SimpleTreeVisitor;->defaultAction(Lorg/openjdk/source/tree/Tree;Ljava/lang/Object;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lorg/openjdk/source/util/SimpleTreeVisitor;->defaultAction(Lorg/openjdk/source/tree/Tree;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public visitTry(Lorg/openjdk/source/tree/TryTree;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/source/tree/TryTree;",
            "TP;)TR;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lorg/openjdk/source/util/SimpleTreeVisitor;->defaultAction(Lorg/openjdk/source/tree/Tree;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public visitTypeCast(Lorg/openjdk/source/tree/TypeCastTree;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/source/tree/TypeCastTree;",
            "TP;)TR;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lorg/openjdk/source/util/SimpleTreeVisitor;->defaultAction(Lorg/openjdk/source/tree/Tree;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public visitTypeParameter(Lorg/openjdk/source/tree/TypeParameterTree;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/source/tree/TypeParameterTree;",
            "TP;)TR;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lorg/openjdk/source/util/SimpleTreeVisitor;->defaultAction(Lorg/openjdk/source/tree/Tree;Ljava/lang/Object;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lorg/openjdk/source/util/SimpleTreeVisitor;->defaultAction(Lorg/openjdk/source/tree/Tree;Ljava/lang/Object;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lorg/openjdk/source/util/SimpleTreeVisitor;->defaultAction(Lorg/openjdk/source/tree/Tree;Ljava/lang/Object;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lorg/openjdk/source/util/SimpleTreeVisitor;->defaultAction(Lorg/openjdk/source/tree/Tree;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public visitVariable(Lorg/openjdk/source/tree/VariableTree;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/source/tree/VariableTree;",
            "TP;)TR;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lorg/openjdk/source/util/SimpleTreeVisitor;->defaultAction(Lorg/openjdk/source/tree/Tree;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public visitWhileLoop(Lorg/openjdk/source/tree/WhileLoopTree;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/source/tree/WhileLoopTree;",
            "TP;)TR;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lorg/openjdk/source/util/SimpleTreeVisitor;->defaultAction(Lorg/openjdk/source/tree/Tree;Ljava/lang/Object;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lorg/openjdk/source/util/SimpleTreeVisitor;->defaultAction(Lorg/openjdk/source/tree/Tree;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
