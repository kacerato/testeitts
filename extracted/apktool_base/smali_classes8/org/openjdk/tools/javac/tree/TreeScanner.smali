.class public Lorg/openjdk/tools/javac/tree/TreeScanner;
.super Lorg/openjdk/tools/javac/tree/JCTree$Visitor;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/openjdk/tools/javac/tree/JCTree$Visitor;-><init>()V

    return-void
.end method


# virtual methods
.method public scan(Lorg/openjdk/tools/javac/tree/JCTree;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 1
    invoke-virtual {p1, p0}, Lorg/openjdk/tools/javac/tree/JCTree;->accept(Lorg/openjdk/tools/javac/tree/JCTree$Visitor;)V

    :cond_0
    return-void
.end method

.method public scan(Lorg/openjdk/tools/javac/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/tools/javac/util/List<",
            "+",
            "Lorg/openjdk/tools/javac/tree/JCTree;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 2
    :goto_0
    invoke-virtual {p1}, Lorg/openjdk/tools/javac/util/List;->nonEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p1, Lorg/openjdk/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v0, Lorg/openjdk/tools/javac/tree/JCTree;

    invoke-virtual {p0, v0}, Lorg/openjdk/tools/javac/tree/TreeScanner;->scan(Lorg/openjdk/tools/javac/tree/JCTree;)V

    .line 4
    iget-object p1, p1, Lorg/openjdk/tools/javac/util/List;->tail:Lorg/openjdk/tools/javac/util/List;

    goto :goto_0

    :cond_0
    return-void
.end method

.method public visitAnnotatedType(Lorg/openjdk/tools/javac/tree/JCTree$JCAnnotatedType;)V
    .locals 1

    iget-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCAnnotatedType;->annotations:Lorg/openjdk/tools/javac/util/List;

    invoke-virtual {p0, v0}, Lorg/openjdk/tools/javac/tree/TreeScanner;->scan(Lorg/openjdk/tools/javac/util/List;)V

    iget-object p1, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCAnnotatedType;->underlyingType:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/tree/TreeScanner;->scan(Lorg/openjdk/tools/javac/tree/JCTree;)V

    return-void
.end method

.method public visitAnnotation(Lorg/openjdk/tools/javac/tree/JCTree$JCAnnotation;)V
    .locals 1

    iget-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCAnnotation;->annotationType:Lorg/openjdk/tools/javac/tree/JCTree;

    invoke-virtual {p0, v0}, Lorg/openjdk/tools/javac/tree/TreeScanner;->scan(Lorg/openjdk/tools/javac/tree/JCTree;)V

    iget-object p1, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCAnnotation;->args:Lorg/openjdk/tools/javac/util/List;

    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/tree/TreeScanner;->scan(Lorg/openjdk/tools/javac/util/List;)V

    return-void
.end method

.method public visitApply(Lorg/openjdk/tools/javac/tree/JCTree$JCMethodInvocation;)V
    .locals 1

    iget-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCMethodInvocation;->typeargs:Lorg/openjdk/tools/javac/util/List;

    invoke-virtual {p0, v0}, Lorg/openjdk/tools/javac/tree/TreeScanner;->scan(Lorg/openjdk/tools/javac/util/List;)V

    iget-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCMethodInvocation;->meth:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    invoke-virtual {p0, v0}, Lorg/openjdk/tools/javac/tree/TreeScanner;->scan(Lorg/openjdk/tools/javac/tree/JCTree;)V

    iget-object p1, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCMethodInvocation;->args:Lorg/openjdk/tools/javac/util/List;

    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/tree/TreeScanner;->scan(Lorg/openjdk/tools/javac/util/List;)V

    return-void
.end method

.method public visitAssert(Lorg/openjdk/tools/javac/tree/JCTree$JCAssert;)V
    .locals 1

    iget-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCAssert;->cond:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    invoke-virtual {p0, v0}, Lorg/openjdk/tools/javac/tree/TreeScanner;->scan(Lorg/openjdk/tools/javac/tree/JCTree;)V

    iget-object p1, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCAssert;->detail:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/tree/TreeScanner;->scan(Lorg/openjdk/tools/javac/tree/JCTree;)V

    return-void
.end method

.method public visitAssign(Lorg/openjdk/tools/javac/tree/JCTree$JCAssign;)V
    .locals 1

    iget-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCAssign;->lhs:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    invoke-virtual {p0, v0}, Lorg/openjdk/tools/javac/tree/TreeScanner;->scan(Lorg/openjdk/tools/javac/tree/JCTree;)V

    iget-object p1, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCAssign;->rhs:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/tree/TreeScanner;->scan(Lorg/openjdk/tools/javac/tree/JCTree;)V

    return-void
.end method

.method public visitAssignop(Lorg/openjdk/tools/javac/tree/JCTree$JCAssignOp;)V
    .locals 1

    iget-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCAssignOp;->lhs:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    invoke-virtual {p0, v0}, Lorg/openjdk/tools/javac/tree/TreeScanner;->scan(Lorg/openjdk/tools/javac/tree/JCTree;)V

    iget-object p1, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCAssignOp;->rhs:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/tree/TreeScanner;->scan(Lorg/openjdk/tools/javac/tree/JCTree;)V

    return-void
.end method

.method public visitBinary(Lorg/openjdk/tools/javac/tree/JCTree$JCBinary;)V
    .locals 1

    iget-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCBinary;->lhs:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    invoke-virtual {p0, v0}, Lorg/openjdk/tools/javac/tree/TreeScanner;->scan(Lorg/openjdk/tools/javac/tree/JCTree;)V

    iget-object p1, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCBinary;->rhs:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/tree/TreeScanner;->scan(Lorg/openjdk/tools/javac/tree/JCTree;)V

    return-void
.end method

.method public visitBlock(Lorg/openjdk/tools/javac/tree/JCTree$JCBlock;)V
    .locals 0

    iget-object p1, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCBlock;->stats:Lorg/openjdk/tools/javac/util/List;

    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/tree/TreeScanner;->scan(Lorg/openjdk/tools/javac/util/List;)V

    return-void
.end method

.method public visitBreak(Lorg/openjdk/tools/javac/tree/JCTree$JCBreak;)V
    .locals 0

    return-void
.end method

.method public visitCase(Lorg/openjdk/tools/javac/tree/JCTree$JCCase;)V
    .locals 1

    iget-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCCase;->pat:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    invoke-virtual {p0, v0}, Lorg/openjdk/tools/javac/tree/TreeScanner;->scan(Lorg/openjdk/tools/javac/tree/JCTree;)V

    iget-object p1, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCCase;->stats:Lorg/openjdk/tools/javac/util/List;

    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/tree/TreeScanner;->scan(Lorg/openjdk/tools/javac/util/List;)V

    return-void
.end method

.method public visitCatch(Lorg/openjdk/tools/javac/tree/JCTree$JCCatch;)V
    .locals 1

    iget-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCCatch;->param:Lorg/openjdk/tools/javac/tree/JCTree$JCVariableDecl;

    invoke-virtual {p0, v0}, Lorg/openjdk/tools/javac/tree/TreeScanner;->scan(Lorg/openjdk/tools/javac/tree/JCTree;)V

    iget-object p1, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCCatch;->body:Lorg/openjdk/tools/javac/tree/JCTree$JCBlock;

    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/tree/TreeScanner;->scan(Lorg/openjdk/tools/javac/tree/JCTree;)V

    return-void
.end method

.method public visitClassDef(Lorg/openjdk/tools/javac/tree/JCTree$JCClassDecl;)V
    .locals 1

    iget-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCClassDecl;->mods:Lorg/openjdk/tools/javac/tree/JCTree$JCModifiers;

    invoke-virtual {p0, v0}, Lorg/openjdk/tools/javac/tree/TreeScanner;->scan(Lorg/openjdk/tools/javac/tree/JCTree;)V

    iget-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCClassDecl;->typarams:Lorg/openjdk/tools/javac/util/List;

    invoke-virtual {p0, v0}, Lorg/openjdk/tools/javac/tree/TreeScanner;->scan(Lorg/openjdk/tools/javac/util/List;)V

    iget-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCClassDecl;->extending:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    invoke-virtual {p0, v0}, Lorg/openjdk/tools/javac/tree/TreeScanner;->scan(Lorg/openjdk/tools/javac/tree/JCTree;)V

    iget-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCClassDecl;->implementing:Lorg/openjdk/tools/javac/util/List;

    invoke-virtual {p0, v0}, Lorg/openjdk/tools/javac/tree/TreeScanner;->scan(Lorg/openjdk/tools/javac/util/List;)V

    iget-object p1, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCClassDecl;->defs:Lorg/openjdk/tools/javac/util/List;

    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/tree/TreeScanner;->scan(Lorg/openjdk/tools/javac/util/List;)V

    return-void
.end method

.method public visitConditional(Lorg/openjdk/tools/javac/tree/JCTree$JCConditional;)V
    .locals 1

    iget-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCConditional;->cond:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    invoke-virtual {p0, v0}, Lorg/openjdk/tools/javac/tree/TreeScanner;->scan(Lorg/openjdk/tools/javac/tree/JCTree;)V

    iget-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCConditional;->truepart:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    invoke-virtual {p0, v0}, Lorg/openjdk/tools/javac/tree/TreeScanner;->scan(Lorg/openjdk/tools/javac/tree/JCTree;)V

    iget-object p1, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCConditional;->falsepart:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/tree/TreeScanner;->scan(Lorg/openjdk/tools/javac/tree/JCTree;)V

    return-void
.end method

.method public visitContinue(Lorg/openjdk/tools/javac/tree/JCTree$JCContinue;)V
    .locals 0

    return-void
.end method

.method public visitDoLoop(Lorg/openjdk/tools/javac/tree/JCTree$JCDoWhileLoop;)V
    .locals 1

    iget-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCDoWhileLoop;->body:Lorg/openjdk/tools/javac/tree/JCTree$JCStatement;

    invoke-virtual {p0, v0}, Lorg/openjdk/tools/javac/tree/TreeScanner;->scan(Lorg/openjdk/tools/javac/tree/JCTree;)V

    iget-object p1, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCDoWhileLoop;->cond:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/tree/TreeScanner;->scan(Lorg/openjdk/tools/javac/tree/JCTree;)V

    return-void
.end method

.method public visitErroneous(Lorg/openjdk/tools/javac/tree/JCTree$JCErroneous;)V
    .locals 0

    return-void
.end method

.method public visitExec(Lorg/openjdk/tools/javac/tree/JCTree$JCExpressionStatement;)V
    .locals 0

    iget-object p1, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCExpressionStatement;->expr:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/tree/TreeScanner;->scan(Lorg/openjdk/tools/javac/tree/JCTree;)V

    return-void
.end method

.method public visitExports(Lorg/openjdk/tools/javac/tree/JCTree$JCExports;)V
    .locals 1

    iget-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCExports;->qualid:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    invoke-virtual {p0, v0}, Lorg/openjdk/tools/javac/tree/TreeScanner;->scan(Lorg/openjdk/tools/javac/tree/JCTree;)V

    iget-object p1, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCExports;->moduleNames:Lorg/openjdk/tools/javac/util/List;

    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/tree/TreeScanner;->scan(Lorg/openjdk/tools/javac/util/List;)V

    return-void
.end method

.method public visitForLoop(Lorg/openjdk/tools/javac/tree/JCTree$JCForLoop;)V
    .locals 1

    iget-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCForLoop;->init:Lorg/openjdk/tools/javac/util/List;

    invoke-virtual {p0, v0}, Lorg/openjdk/tools/javac/tree/TreeScanner;->scan(Lorg/openjdk/tools/javac/util/List;)V

    iget-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCForLoop;->cond:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    invoke-virtual {p0, v0}, Lorg/openjdk/tools/javac/tree/TreeScanner;->scan(Lorg/openjdk/tools/javac/tree/JCTree;)V

    iget-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCForLoop;->step:Lorg/openjdk/tools/javac/util/List;

    invoke-virtual {p0, v0}, Lorg/openjdk/tools/javac/tree/TreeScanner;->scan(Lorg/openjdk/tools/javac/util/List;)V

    iget-object p1, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCForLoop;->body:Lorg/openjdk/tools/javac/tree/JCTree$JCStatement;

    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/tree/TreeScanner;->scan(Lorg/openjdk/tools/javac/tree/JCTree;)V

    return-void
.end method

.method public visitForeachLoop(Lorg/openjdk/tools/javac/tree/JCTree$JCEnhancedForLoop;)V
    .locals 1

    iget-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCEnhancedForLoop;->var:Lorg/openjdk/tools/javac/tree/JCTree$JCVariableDecl;

    invoke-virtual {p0, v0}, Lorg/openjdk/tools/javac/tree/TreeScanner;->scan(Lorg/openjdk/tools/javac/tree/JCTree;)V

    iget-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCEnhancedForLoop;->expr:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    invoke-virtual {p0, v0}, Lorg/openjdk/tools/javac/tree/TreeScanner;->scan(Lorg/openjdk/tools/javac/tree/JCTree;)V

    iget-object p1, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCEnhancedForLoop;->body:Lorg/openjdk/tools/javac/tree/JCTree$JCStatement;

    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/tree/TreeScanner;->scan(Lorg/openjdk/tools/javac/tree/JCTree;)V

    return-void
.end method

.method public visitIdent(Lorg/openjdk/tools/javac/tree/JCTree$JCIdent;)V
    .locals 0

    return-void
.end method

.method public visitIf(Lorg/openjdk/tools/javac/tree/JCTree$JCIf;)V
    .locals 1

    iget-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCIf;->cond:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    invoke-virtual {p0, v0}, Lorg/openjdk/tools/javac/tree/TreeScanner;->scan(Lorg/openjdk/tools/javac/tree/JCTree;)V

    iget-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCIf;->thenpart:Lorg/openjdk/tools/javac/tree/JCTree$JCStatement;

    invoke-virtual {p0, v0}, Lorg/openjdk/tools/javac/tree/TreeScanner;->scan(Lorg/openjdk/tools/javac/tree/JCTree;)V

    iget-object p1, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCIf;->elsepart:Lorg/openjdk/tools/javac/tree/JCTree$JCStatement;

    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/tree/TreeScanner;->scan(Lorg/openjdk/tools/javac/tree/JCTree;)V

    return-void
.end method

.method public visitImport(Lorg/openjdk/tools/javac/tree/JCTree$JCImport;)V
    .locals 0

    iget-object p1, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCImport;->qualid:Lorg/openjdk/tools/javac/tree/JCTree;

    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/tree/TreeScanner;->scan(Lorg/openjdk/tools/javac/tree/JCTree;)V

    return-void
.end method

.method public visitIndexed(Lorg/openjdk/tools/javac/tree/JCTree$JCArrayAccess;)V
    .locals 1

    iget-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCArrayAccess;->indexed:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    invoke-virtual {p0, v0}, Lorg/openjdk/tools/javac/tree/TreeScanner;->scan(Lorg/openjdk/tools/javac/tree/JCTree;)V

    iget-object p1, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCArrayAccess;->index:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/tree/TreeScanner;->scan(Lorg/openjdk/tools/javac/tree/JCTree;)V

    return-void
.end method

.method public visitLabelled(Lorg/openjdk/tools/javac/tree/JCTree$JCLabeledStatement;)V
    .locals 0

    iget-object p1, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCLabeledStatement;->body:Lorg/openjdk/tools/javac/tree/JCTree$JCStatement;

    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/tree/TreeScanner;->scan(Lorg/openjdk/tools/javac/tree/JCTree;)V

    return-void
.end method

.method public visitLambda(Lorg/openjdk/tools/javac/tree/JCTree$JCLambda;)V
    .locals 1

    iget-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCLambda;->body:Lorg/openjdk/tools/javac/tree/JCTree;

    invoke-virtual {p0, v0}, Lorg/openjdk/tools/javac/tree/TreeScanner;->scan(Lorg/openjdk/tools/javac/tree/JCTree;)V

    iget-object p1, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCLambda;->params:Lorg/openjdk/tools/javac/util/List;

    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/tree/TreeScanner;->scan(Lorg/openjdk/tools/javac/util/List;)V

    return-void
.end method

.method public visitLetExpr(Lorg/openjdk/tools/javac/tree/JCTree$LetExpr;)V
    .locals 1

    iget-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree$LetExpr;->defs:Lorg/openjdk/tools/javac/util/List;

    invoke-virtual {p0, v0}, Lorg/openjdk/tools/javac/tree/TreeScanner;->scan(Lorg/openjdk/tools/javac/util/List;)V

    iget-object p1, p1, Lorg/openjdk/tools/javac/tree/JCTree$LetExpr;->expr:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/tree/TreeScanner;->scan(Lorg/openjdk/tools/javac/tree/JCTree;)V

    return-void
.end method

.method public visitLiteral(Lorg/openjdk/tools/javac/tree/JCTree$JCLiteral;)V
    .locals 0

    return-void
.end method

.method public visitMethodDef(Lorg/openjdk/tools/javac/tree/JCTree$JCMethodDecl;)V
    .locals 1

    iget-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCMethodDecl;->mods:Lorg/openjdk/tools/javac/tree/JCTree$JCModifiers;

    invoke-virtual {p0, v0}, Lorg/openjdk/tools/javac/tree/TreeScanner;->scan(Lorg/openjdk/tools/javac/tree/JCTree;)V

    iget-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCMethodDecl;->restype:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    invoke-virtual {p0, v0}, Lorg/openjdk/tools/javac/tree/TreeScanner;->scan(Lorg/openjdk/tools/javac/tree/JCTree;)V

    iget-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCMethodDecl;->typarams:Lorg/openjdk/tools/javac/util/List;

    invoke-virtual {p0, v0}, Lorg/openjdk/tools/javac/tree/TreeScanner;->scan(Lorg/openjdk/tools/javac/util/List;)V

    iget-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCMethodDecl;->recvparam:Lorg/openjdk/tools/javac/tree/JCTree$JCVariableDecl;

    invoke-virtual {p0, v0}, Lorg/openjdk/tools/javac/tree/TreeScanner;->scan(Lorg/openjdk/tools/javac/tree/JCTree;)V

    iget-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCMethodDecl;->params:Lorg/openjdk/tools/javac/util/List;

    invoke-virtual {p0, v0}, Lorg/openjdk/tools/javac/tree/TreeScanner;->scan(Lorg/openjdk/tools/javac/util/List;)V

    iget-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCMethodDecl;->thrown:Lorg/openjdk/tools/javac/util/List;

    invoke-virtual {p0, v0}, Lorg/openjdk/tools/javac/tree/TreeScanner;->scan(Lorg/openjdk/tools/javac/util/List;)V

    iget-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCMethodDecl;->defaultValue:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    invoke-virtual {p0, v0}, Lorg/openjdk/tools/javac/tree/TreeScanner;->scan(Lorg/openjdk/tools/javac/tree/JCTree;)V

    iget-object p1, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCMethodDecl;->body:Lorg/openjdk/tools/javac/tree/JCTree$JCBlock;

    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/tree/TreeScanner;->scan(Lorg/openjdk/tools/javac/tree/JCTree;)V

    return-void
.end method

.method public visitModifiers(Lorg/openjdk/tools/javac/tree/JCTree$JCModifiers;)V
    .locals 0

    iget-object p1, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCModifiers;->annotations:Lorg/openjdk/tools/javac/util/List;

    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/tree/TreeScanner;->scan(Lorg/openjdk/tools/javac/util/List;)V

    return-void
.end method

.method public visitModuleDef(Lorg/openjdk/tools/javac/tree/JCTree$JCModuleDecl;)V
    .locals 1

    iget-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCModuleDecl;->mods:Lorg/openjdk/tools/javac/tree/JCTree$JCModifiers;

    invoke-virtual {p0, v0}, Lorg/openjdk/tools/javac/tree/TreeScanner;->scan(Lorg/openjdk/tools/javac/tree/JCTree;)V

    iget-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCModuleDecl;->qualId:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    invoke-virtual {p0, v0}, Lorg/openjdk/tools/javac/tree/TreeScanner;->scan(Lorg/openjdk/tools/javac/tree/JCTree;)V

    iget-object p1, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCModuleDecl;->directives:Lorg/openjdk/tools/javac/util/List;

    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/tree/TreeScanner;->scan(Lorg/openjdk/tools/javac/util/List;)V

    return-void
.end method

.method public visitNewArray(Lorg/openjdk/tools/javac/tree/JCTree$JCNewArray;)V
    .locals 2

    iget-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCNewArray;->annotations:Lorg/openjdk/tools/javac/util/List;

    invoke-virtual {p0, v0}, Lorg/openjdk/tools/javac/tree/TreeScanner;->scan(Lorg/openjdk/tools/javac/util/List;)V

    iget-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCNewArray;->elemtype:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    invoke-virtual {p0, v0}, Lorg/openjdk/tools/javac/tree/TreeScanner;->scan(Lorg/openjdk/tools/javac/tree/JCTree;)V

    iget-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCNewArray;->dims:Lorg/openjdk/tools/javac/util/List;

    invoke-virtual {p0, v0}, Lorg/openjdk/tools/javac/tree/TreeScanner;->scan(Lorg/openjdk/tools/javac/util/List;)V

    iget-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCNewArray;->dimAnnotations:Lorg/openjdk/tools/javac/util/List;

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/openjdk/tools/javac/util/List;

    invoke-virtual {p0, v1}, Lorg/openjdk/tools/javac/tree/TreeScanner;->scan(Lorg/openjdk/tools/javac/util/List;)V

    goto :goto_0

    :cond_0
    iget-object p1, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCNewArray;->elems:Lorg/openjdk/tools/javac/util/List;

    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/tree/TreeScanner;->scan(Lorg/openjdk/tools/javac/util/List;)V

    return-void
.end method

.method public visitNewClass(Lorg/openjdk/tools/javac/tree/JCTree$JCNewClass;)V
    .locals 1

    iget-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCNewClass;->encl:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    invoke-virtual {p0, v0}, Lorg/openjdk/tools/javac/tree/TreeScanner;->scan(Lorg/openjdk/tools/javac/tree/JCTree;)V

    iget-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCNewClass;->typeargs:Lorg/openjdk/tools/javac/util/List;

    invoke-virtual {p0, v0}, Lorg/openjdk/tools/javac/tree/TreeScanner;->scan(Lorg/openjdk/tools/javac/util/List;)V

    iget-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCNewClass;->clazz:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    invoke-virtual {p0, v0}, Lorg/openjdk/tools/javac/tree/TreeScanner;->scan(Lorg/openjdk/tools/javac/tree/JCTree;)V

    iget-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCNewClass;->args:Lorg/openjdk/tools/javac/util/List;

    invoke-virtual {p0, v0}, Lorg/openjdk/tools/javac/tree/TreeScanner;->scan(Lorg/openjdk/tools/javac/util/List;)V

    iget-object p1, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCNewClass;->def:Lorg/openjdk/tools/javac/tree/JCTree$JCClassDecl;

    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/tree/TreeScanner;->scan(Lorg/openjdk/tools/javac/tree/JCTree;)V

    return-void
.end method

.method public visitOpens(Lorg/openjdk/tools/javac/tree/JCTree$JCOpens;)V
    .locals 1

    iget-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCOpens;->qualid:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    invoke-virtual {p0, v0}, Lorg/openjdk/tools/javac/tree/TreeScanner;->scan(Lorg/openjdk/tools/javac/tree/JCTree;)V

    iget-object p1, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCOpens;->moduleNames:Lorg/openjdk/tools/javac/util/List;

    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/tree/TreeScanner;->scan(Lorg/openjdk/tools/javac/util/List;)V

    return-void
.end method

.method public visitPackageDef(Lorg/openjdk/tools/javac/tree/JCTree$JCPackageDecl;)V
    .locals 1

    iget-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCPackageDecl;->annotations:Lorg/openjdk/tools/javac/util/List;

    invoke-virtual {p0, v0}, Lorg/openjdk/tools/javac/tree/TreeScanner;->scan(Lorg/openjdk/tools/javac/util/List;)V

    iget-object p1, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCPackageDecl;->pid:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/tree/TreeScanner;->scan(Lorg/openjdk/tools/javac/tree/JCTree;)V

    return-void
.end method

.method public visitParens(Lorg/openjdk/tools/javac/tree/JCTree$JCParens;)V
    .locals 0

    iget-object p1, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCParens;->expr:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/tree/TreeScanner;->scan(Lorg/openjdk/tools/javac/tree/JCTree;)V

    return-void
.end method

.method public visitProvides(Lorg/openjdk/tools/javac/tree/JCTree$JCProvides;)V
    .locals 1

    iget-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCProvides;->serviceName:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    invoke-virtual {p0, v0}, Lorg/openjdk/tools/javac/tree/TreeScanner;->scan(Lorg/openjdk/tools/javac/tree/JCTree;)V

    iget-object p1, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCProvides;->implNames:Lorg/openjdk/tools/javac/util/List;

    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/tree/TreeScanner;->scan(Lorg/openjdk/tools/javac/util/List;)V

    return-void
.end method

.method public visitReference(Lorg/openjdk/tools/javac/tree/JCTree$JCMemberReference;)V
    .locals 1

    iget-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCMemberReference;->expr:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    invoke-virtual {p0, v0}, Lorg/openjdk/tools/javac/tree/TreeScanner;->scan(Lorg/openjdk/tools/javac/tree/JCTree;)V

    iget-object p1, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCMemberReference;->typeargs:Lorg/openjdk/tools/javac/util/List;

    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/tree/TreeScanner;->scan(Lorg/openjdk/tools/javac/util/List;)V

    return-void
.end method

.method public visitRequires(Lorg/openjdk/tools/javac/tree/JCTree$JCRequires;)V
    .locals 0

    iget-object p1, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCRequires;->moduleName:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/tree/TreeScanner;->scan(Lorg/openjdk/tools/javac/tree/JCTree;)V

    return-void
.end method

.method public visitReturn(Lorg/openjdk/tools/javac/tree/JCTree$JCReturn;)V
    .locals 0

    iget-object p1, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCReturn;->expr:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/tree/TreeScanner;->scan(Lorg/openjdk/tools/javac/tree/JCTree;)V

    return-void
.end method

.method public visitSelect(Lorg/openjdk/tools/javac/tree/JCTree$JCFieldAccess;)V
    .locals 0

    iget-object p1, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCFieldAccess;->selected:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/tree/TreeScanner;->scan(Lorg/openjdk/tools/javac/tree/JCTree;)V

    return-void
.end method

.method public visitSkip(Lorg/openjdk/tools/javac/tree/JCTree$JCSkip;)V
    .locals 0

    return-void
.end method

.method public visitSwitch(Lorg/openjdk/tools/javac/tree/JCTree$JCSwitch;)V
    .locals 1

    iget-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCSwitch;->selector:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    invoke-virtual {p0, v0}, Lorg/openjdk/tools/javac/tree/TreeScanner;->scan(Lorg/openjdk/tools/javac/tree/JCTree;)V

    iget-object p1, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCSwitch;->cases:Lorg/openjdk/tools/javac/util/List;

    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/tree/TreeScanner;->scan(Lorg/openjdk/tools/javac/util/List;)V

    return-void
.end method

.method public visitSynchronized(Lorg/openjdk/tools/javac/tree/JCTree$JCSynchronized;)V
    .locals 1

    iget-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCSynchronized;->lock:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    invoke-virtual {p0, v0}, Lorg/openjdk/tools/javac/tree/TreeScanner;->scan(Lorg/openjdk/tools/javac/tree/JCTree;)V

    iget-object p1, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCSynchronized;->body:Lorg/openjdk/tools/javac/tree/JCTree$JCBlock;

    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/tree/TreeScanner;->scan(Lorg/openjdk/tools/javac/tree/JCTree;)V

    return-void
.end method

.method public visitThrow(Lorg/openjdk/tools/javac/tree/JCTree$JCThrow;)V
    .locals 0

    iget-object p1, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCThrow;->expr:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/tree/TreeScanner;->scan(Lorg/openjdk/tools/javac/tree/JCTree;)V

    return-void
.end method

.method public visitTopLevel(Lorg/openjdk/tools/javac/tree/JCTree$JCCompilationUnit;)V
    .locals 0

    iget-object p1, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCCompilationUnit;->defs:Lorg/openjdk/tools/javac/util/List;

    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/tree/TreeScanner;->scan(Lorg/openjdk/tools/javac/util/List;)V

    return-void
.end method

.method public visitTree(Lorg/openjdk/tools/javac/tree/JCTree;)V
    .locals 0

    invoke-static {}, Lorg/openjdk/tools/javac/util/Assert;->error()V

    return-void
.end method

.method public visitTry(Lorg/openjdk/tools/javac/tree/JCTree$JCTry;)V
    .locals 1

    iget-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCTry;->resources:Lorg/openjdk/tools/javac/util/List;

    invoke-virtual {p0, v0}, Lorg/openjdk/tools/javac/tree/TreeScanner;->scan(Lorg/openjdk/tools/javac/util/List;)V

    iget-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCTry;->body:Lorg/openjdk/tools/javac/tree/JCTree$JCBlock;

    invoke-virtual {p0, v0}, Lorg/openjdk/tools/javac/tree/TreeScanner;->scan(Lorg/openjdk/tools/javac/tree/JCTree;)V

    iget-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCTry;->catchers:Lorg/openjdk/tools/javac/util/List;

    invoke-virtual {p0, v0}, Lorg/openjdk/tools/javac/tree/TreeScanner;->scan(Lorg/openjdk/tools/javac/util/List;)V

    iget-object p1, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCTry;->finalizer:Lorg/openjdk/tools/javac/tree/JCTree$JCBlock;

    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/tree/TreeScanner;->scan(Lorg/openjdk/tools/javac/tree/JCTree;)V

    return-void
.end method

.method public visitTypeApply(Lorg/openjdk/tools/javac/tree/JCTree$JCTypeApply;)V
    .locals 1

    iget-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCTypeApply;->clazz:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    invoke-virtual {p0, v0}, Lorg/openjdk/tools/javac/tree/TreeScanner;->scan(Lorg/openjdk/tools/javac/tree/JCTree;)V

    iget-object p1, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCTypeApply;->arguments:Lorg/openjdk/tools/javac/util/List;

    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/tree/TreeScanner;->scan(Lorg/openjdk/tools/javac/util/List;)V

    return-void
.end method

.method public visitTypeArray(Lorg/openjdk/tools/javac/tree/JCTree$JCArrayTypeTree;)V
    .locals 0

    iget-object p1, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCArrayTypeTree;->elemtype:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/tree/TreeScanner;->scan(Lorg/openjdk/tools/javac/tree/JCTree;)V

    return-void
.end method

.method public visitTypeBoundKind(Lorg/openjdk/tools/javac/tree/JCTree$TypeBoundKind;)V
    .locals 0

    return-void
.end method

.method public visitTypeCast(Lorg/openjdk/tools/javac/tree/JCTree$JCTypeCast;)V
    .locals 1

    iget-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCTypeCast;->clazz:Lorg/openjdk/tools/javac/tree/JCTree;

    invoke-virtual {p0, v0}, Lorg/openjdk/tools/javac/tree/TreeScanner;->scan(Lorg/openjdk/tools/javac/tree/JCTree;)V

    iget-object p1, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCTypeCast;->expr:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/tree/TreeScanner;->scan(Lorg/openjdk/tools/javac/tree/JCTree;)V

    return-void
.end method

.method public visitTypeIdent(Lorg/openjdk/tools/javac/tree/JCTree$JCPrimitiveTypeTree;)V
    .locals 0

    return-void
.end method

.method public visitTypeIntersection(Lorg/openjdk/tools/javac/tree/JCTree$JCTypeIntersection;)V
    .locals 0

    iget-object p1, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCTypeIntersection;->bounds:Lorg/openjdk/tools/javac/util/List;

    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/tree/TreeScanner;->scan(Lorg/openjdk/tools/javac/util/List;)V

    return-void
.end method

.method public visitTypeParameter(Lorg/openjdk/tools/javac/tree/JCTree$JCTypeParameter;)V
    .locals 1

    iget-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCTypeParameter;->annotations:Lorg/openjdk/tools/javac/util/List;

    invoke-virtual {p0, v0}, Lorg/openjdk/tools/javac/tree/TreeScanner;->scan(Lorg/openjdk/tools/javac/util/List;)V

    iget-object p1, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCTypeParameter;->bounds:Lorg/openjdk/tools/javac/util/List;

    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/tree/TreeScanner;->scan(Lorg/openjdk/tools/javac/util/List;)V

    return-void
.end method

.method public visitTypeTest(Lorg/openjdk/tools/javac/tree/JCTree$JCInstanceOf;)V
    .locals 1

    iget-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCInstanceOf;->expr:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    invoke-virtual {p0, v0}, Lorg/openjdk/tools/javac/tree/TreeScanner;->scan(Lorg/openjdk/tools/javac/tree/JCTree;)V

    iget-object p1, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCInstanceOf;->clazz:Lorg/openjdk/tools/javac/tree/JCTree;

    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/tree/TreeScanner;->scan(Lorg/openjdk/tools/javac/tree/JCTree;)V

    return-void
.end method

.method public visitTypeUnion(Lorg/openjdk/tools/javac/tree/JCTree$JCTypeUnion;)V
    .locals 0

    iget-object p1, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCTypeUnion;->alternatives:Lorg/openjdk/tools/javac/util/List;

    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/tree/TreeScanner;->scan(Lorg/openjdk/tools/javac/util/List;)V

    return-void
.end method

.method public visitUnary(Lorg/openjdk/tools/javac/tree/JCTree$JCUnary;)V
    .locals 0

    iget-object p1, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCUnary;->arg:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/tree/TreeScanner;->scan(Lorg/openjdk/tools/javac/tree/JCTree;)V

    return-void
.end method

.method public visitUses(Lorg/openjdk/tools/javac/tree/JCTree$JCUses;)V
    .locals 0

    iget-object p1, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCUses;->qualid:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/tree/TreeScanner;->scan(Lorg/openjdk/tools/javac/tree/JCTree;)V

    return-void
.end method

.method public visitVarDef(Lorg/openjdk/tools/javac/tree/JCTree$JCVariableDecl;)V
    .locals 1

    iget-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCVariableDecl;->mods:Lorg/openjdk/tools/javac/tree/JCTree$JCModifiers;

    invoke-virtual {p0, v0}, Lorg/openjdk/tools/javac/tree/TreeScanner;->scan(Lorg/openjdk/tools/javac/tree/JCTree;)V

    iget-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCVariableDecl;->vartype:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    invoke-virtual {p0, v0}, Lorg/openjdk/tools/javac/tree/TreeScanner;->scan(Lorg/openjdk/tools/javac/tree/JCTree;)V

    iget-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCVariableDecl;->nameexpr:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    invoke-virtual {p0, v0}, Lorg/openjdk/tools/javac/tree/TreeScanner;->scan(Lorg/openjdk/tools/javac/tree/JCTree;)V

    iget-object p1, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCVariableDecl;->init:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/tree/TreeScanner;->scan(Lorg/openjdk/tools/javac/tree/JCTree;)V

    return-void
.end method

.method public visitWhileLoop(Lorg/openjdk/tools/javac/tree/JCTree$JCWhileLoop;)V
    .locals 1

    iget-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCWhileLoop;->cond:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    invoke-virtual {p0, v0}, Lorg/openjdk/tools/javac/tree/TreeScanner;->scan(Lorg/openjdk/tools/javac/tree/JCTree;)V

    iget-object p1, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCWhileLoop;->body:Lorg/openjdk/tools/javac/tree/JCTree$JCStatement;

    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/tree/TreeScanner;->scan(Lorg/openjdk/tools/javac/tree/JCTree;)V

    return-void
.end method

.method public visitWildcard(Lorg/openjdk/tools/javac/tree/JCTree$JCWildcard;)V
    .locals 1

    iget-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCWildcard;->kind:Lorg/openjdk/tools/javac/tree/JCTree$TypeBoundKind;

    invoke-virtual {p0, v0}, Lorg/openjdk/tools/javac/tree/TreeScanner;->scan(Lorg/openjdk/tools/javac/tree/JCTree;)V

    iget-object p1, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCWildcard;->inner:Lorg/openjdk/tools/javac/tree/JCTree;

    if-eqz p1, :cond_0

    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/tree/TreeScanner;->scan(Lorg/openjdk/tools/javac/tree/JCTree;)V

    :cond_0
    return-void
.end method
