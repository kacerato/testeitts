.class public Lcom/github/javaparser/ast/expr/AssignExpr;
.super Lcom/github/javaparser/ast/expr/Expression;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/github/javaparser/ast/expr/AssignExpr$Operator;
    }
.end annotation


# instance fields
.field private operator:Lcom/github/javaparser/ast/expr/AssignExpr$Operator;

.field private target:Lcom/github/javaparser/ast/expr/Expression;

.field private value:Lcom/github/javaparser/ast/expr/Expression;


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 1
    new-instance v0, Lcom/github/javaparser/ast/expr/NameExpr;

    invoke-direct {v0}, Lcom/github/javaparser/ast/expr/NameExpr;-><init>()V

    new-instance v1, Lcom/github/javaparser/ast/expr/StringLiteralExpr;

    invoke-direct {v1}, Lcom/github/javaparser/ast/expr/StringLiteralExpr;-><init>()V

    sget-object v2, Lcom/github/javaparser/ast/expr/AssignExpr$Operator;->ASSIGN:Lcom/github/javaparser/ast/expr/AssignExpr$Operator;

    const/4 v3, 0x0

    invoke-direct {p0, v3, v0, v1, v2}, Lcom/github/javaparser/ast/expr/AssignExpr;-><init>(Lcom/github/javaparser/TokenRange;Lcom/github/javaparser/ast/expr/Expression;Lcom/github/javaparser/ast/expr/Expression;Lcom/github/javaparser/ast/expr/AssignExpr$Operator;)V

    return-void
.end method

.method public constructor <init>(Lcom/github/javaparser/TokenRange;Lcom/github/javaparser/ast/expr/Expression;Lcom/github/javaparser/ast/expr/Expression;Lcom/github/javaparser/ast/expr/AssignExpr$Operator;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "tokenRange",
            "target",
            "value",
            "operator"
        }
    .end annotation

    .line 3
    invoke-direct {p0, p1}, Lcom/github/javaparser/ast/expr/Expression;-><init>(Lcom/github/javaparser/TokenRange;)V

    .line 4
    invoke-virtual {p0, p2}, Lcom/github/javaparser/ast/expr/AssignExpr;->setTarget(Lcom/github/javaparser/ast/expr/Expression;)Lcom/github/javaparser/ast/expr/AssignExpr;

    .line 5
    invoke-virtual {p0, p3}, Lcom/github/javaparser/ast/expr/AssignExpr;->setValue(Lcom/github/javaparser/ast/expr/Expression;)Lcom/github/javaparser/ast/expr/AssignExpr;

    .line 6
    invoke-virtual {p0, p4}, Lcom/github/javaparser/ast/expr/AssignExpr;->setOperator(Lcom/github/javaparser/ast/expr/AssignExpr$Operator;)Lcom/github/javaparser/ast/expr/AssignExpr;

    .line 7
    invoke-virtual {p0}, Lcom/github/javaparser/ast/Node;->customInitialization()V

    return-void
.end method

.method public constructor <init>(Lcom/github/javaparser/ast/expr/Expression;Lcom/github/javaparser/ast/expr/Expression;Lcom/github/javaparser/ast/expr/AssignExpr$Operator;)V
    .locals 1
    .annotation runtime Lcom/github/javaparser/ast/AllFieldsConstructor;
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "target",
            "value",
            "operator"
        }
    .end annotation

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, v0, p1, p2, p3}, Lcom/github/javaparser/ast/expr/AssignExpr;-><init>(Lcom/github/javaparser/TokenRange;Lcom/github/javaparser/ast/expr/Expression;Lcom/github/javaparser/ast/expr/Expression;Lcom/github/javaparser/ast/expr/AssignExpr$Operator;)V

    return-void
.end method


# virtual methods
.method public accept(Lcom/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "v",
            "arg"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            "A:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/github/javaparser/ast/visitor/GenericVisitor<",
            "TR;TA;>;TA;)TR;"
        }
    .end annotation

    .line 1
    invoke-interface {p1, p0, p2}, Lcom/github/javaparser/ast/visitor/GenericVisitor;->visit(Lcom/github/javaparser/ast/expr/AssignExpr;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public accept(Lcom/github/javaparser/ast/visitor/VoidVisitor;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "v",
            "arg"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/github/javaparser/ast/visitor/VoidVisitor<",
            "TA;>;TA;)V"
        }
    .end annotation

    .line 2
    invoke-interface {p1, p0, p2}, Lcom/github/javaparser/ast/visitor/VoidVisitor;->visit(Lcom/github/javaparser/ast/expr/AssignExpr;Ljava/lang/Object;)V

    return-void
.end method

.method public asAssignExpr()Lcom/github/javaparser/ast/expr/AssignExpr;
    .locals 0

    return-object p0
.end method

.method public bridge synthetic clone()Lcom/github/javaparser/ast/Node;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/github/javaparser/ast/expr/AssignExpr;->clone()Lcom/github/javaparser/ast/expr/AssignExpr;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/github/javaparser/ast/expr/AssignExpr;
    .locals 2

    .line 4
    new-instance v0, Lcom/github/javaparser/ast/visitor/CloneVisitor;

    invoke-direct {v0}, Lcom/github/javaparser/ast/visitor/CloneVisitor;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/github/javaparser/ast/expr/AssignExpr;->accept(Lcom/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/github/javaparser/ast/expr/AssignExpr;

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/github/javaparser/ast/expr/Expression;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/github/javaparser/ast/expr/AssignExpr;->clone()Lcom/github/javaparser/ast/expr/AssignExpr;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 3
    invoke-virtual {p0}, Lcom/github/javaparser/ast/expr/AssignExpr;->clone()Lcom/github/javaparser/ast/expr/AssignExpr;

    move-result-object v0

    return-object v0
.end method

.method public getMetaModel()Lcom/github/javaparser/metamodel/AssignExprMetaModel;
    .locals 1

    .line 3
    sget-object v0, Lcom/github/javaparser/metamodel/JavaParserMetaModel;->assignExprMetaModel:Lcom/github/javaparser/metamodel/AssignExprMetaModel;

    return-object v0
.end method

.method public bridge synthetic getMetaModel()Lcom/github/javaparser/metamodel/ExpressionMetaModel;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/github/javaparser/ast/expr/AssignExpr;->getMetaModel()Lcom/github/javaparser/metamodel/AssignExprMetaModel;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getMetaModel()Lcom/github/javaparser/metamodel/NodeMetaModel;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/github/javaparser/ast/expr/AssignExpr;->getMetaModel()Lcom/github/javaparser/metamodel/AssignExprMetaModel;

    move-result-object v0

    return-object v0
.end method

.method public getOperator()Lcom/github/javaparser/ast/expr/AssignExpr$Operator;
    .locals 1

    iget-object v0, p0, Lcom/github/javaparser/ast/expr/AssignExpr;->operator:Lcom/github/javaparser/ast/expr/AssignExpr$Operator;

    return-object v0
.end method

.method public getTarget()Lcom/github/javaparser/ast/expr/Expression;
    .locals 1

    iget-object v0, p0, Lcom/github/javaparser/ast/expr/AssignExpr;->target:Lcom/github/javaparser/ast/expr/Expression;

    return-object v0
.end method

.method public getValue()Lcom/github/javaparser/ast/expr/Expression;
    .locals 1

    iget-object v0, p0, Lcom/github/javaparser/ast/expr/AssignExpr;->value:Lcom/github/javaparser/ast/expr/Expression;

    return-object v0
.end method

.method public ifAssignExpr(Ljava/util/function/Consumer;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "action"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Lcom/github/javaparser/ast/expr/AssignExpr;",
            ">;)V"
        }
    .end annotation

    invoke-interface {p1, p0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method

.method public isAssignExpr()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isAssignmentContext()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public replace(Lcom/github/javaparser/ast/Node;Lcom/github/javaparser/ast/Node;)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "node",
            "replacementNode"
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    iget-object v0, p0, Lcom/github/javaparser/ast/expr/AssignExpr;->target:Lcom/github/javaparser/ast/expr/Expression;

    const/4 v1, 0x1

    if-ne p1, v0, :cond_1

    check-cast p2, Lcom/github/javaparser/ast/expr/Expression;

    invoke-virtual {p0, p2}, Lcom/github/javaparser/ast/expr/AssignExpr;->setTarget(Lcom/github/javaparser/ast/expr/Expression;)Lcom/github/javaparser/ast/expr/AssignExpr;

    return v1

    :cond_1
    iget-object v0, p0, Lcom/github/javaparser/ast/expr/AssignExpr;->value:Lcom/github/javaparser/ast/expr/Expression;

    if-ne p1, v0, :cond_2

    check-cast p2, Lcom/github/javaparser/ast/expr/Expression;

    invoke-virtual {p0, p2}, Lcom/github/javaparser/ast/expr/AssignExpr;->setValue(Lcom/github/javaparser/ast/expr/Expression;)Lcom/github/javaparser/ast/expr/AssignExpr;

    return v1

    :cond_2
    invoke-super {p0, p1, p2}, Lcom/github/javaparser/ast/Node;->replace(Lcom/github/javaparser/ast/Node;Lcom/github/javaparser/ast/Node;)Z

    move-result p1

    return p1
.end method

.method public setOperator(Lcom/github/javaparser/ast/expr/AssignExpr$Operator;)Lcom/github/javaparser/ast/expr/AssignExpr;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "operator"
        }
    .end annotation

    invoke-static {p1}, Lcom/github/javaparser/utils/Utils;->assertNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/github/javaparser/ast/expr/AssignExpr;->operator:Lcom/github/javaparser/ast/expr/AssignExpr$Operator;

    if-ne p1, v0, :cond_0

    return-object p0

    :cond_0
    sget-object v1, Lcom/github/javaparser/ast/observer/ObservableProperty;->OPERATOR:Lcom/github/javaparser/ast/observer/ObservableProperty;

    invoke-virtual {p0, v1, v0, p1}, Lcom/github/javaparser/ast/Node;->notifyPropertyChange(Lcom/github/javaparser/ast/observer/ObservableProperty;Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/github/javaparser/ast/expr/AssignExpr;->operator:Lcom/github/javaparser/ast/expr/AssignExpr$Operator;

    return-object p0
.end method

.method public setTarget(Lcom/github/javaparser/ast/expr/Expression;)Lcom/github/javaparser/ast/expr/AssignExpr;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "target"
        }
    .end annotation

    invoke-static {p1}, Lcom/github/javaparser/utils/Utils;->assertNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/github/javaparser/ast/expr/AssignExpr;->target:Lcom/github/javaparser/ast/expr/Expression;

    if-ne p1, v0, :cond_0

    return-object p0

    :cond_0
    sget-object v1, Lcom/github/javaparser/ast/observer/ObservableProperty;->TARGET:Lcom/github/javaparser/ast/observer/ObservableProperty;

    invoke-virtual {p0, v1, v0, p1}, Lcom/github/javaparser/ast/Node;->notifyPropertyChange(Lcom/github/javaparser/ast/observer/ObservableProperty;Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/github/javaparser/ast/expr/AssignExpr;->target:Lcom/github/javaparser/ast/expr/Expression;

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/github/javaparser/ast/Node;->setParentNode(Lcom/github/javaparser/ast/Node;)Lcom/github/javaparser/ast/Node;

    :cond_1
    iput-object p1, p0, Lcom/github/javaparser/ast/expr/AssignExpr;->target:Lcom/github/javaparser/ast/expr/Expression;

    invoke-virtual {p0, p1}, Lcom/github/javaparser/ast/Node;->setAsParentNodeOf(Lcom/github/javaparser/ast/Node;)V

    return-object p0
.end method

.method public setValue(Lcom/github/javaparser/ast/expr/Expression;)Lcom/github/javaparser/ast/expr/AssignExpr;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "value"
        }
    .end annotation

    invoke-static {p1}, Lcom/github/javaparser/utils/Utils;->assertNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/github/javaparser/ast/expr/AssignExpr;->value:Lcom/github/javaparser/ast/expr/Expression;

    if-ne p1, v0, :cond_0

    return-object p0

    :cond_0
    sget-object v1, Lcom/github/javaparser/ast/observer/ObservableProperty;->VALUE:Lcom/github/javaparser/ast/observer/ObservableProperty;

    invoke-virtual {p0, v1, v0, p1}, Lcom/github/javaparser/ast/Node;->notifyPropertyChange(Lcom/github/javaparser/ast/observer/ObservableProperty;Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/github/javaparser/ast/expr/AssignExpr;->value:Lcom/github/javaparser/ast/expr/Expression;

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/github/javaparser/ast/Node;->setParentNode(Lcom/github/javaparser/ast/Node;)Lcom/github/javaparser/ast/Node;

    :cond_1
    iput-object p1, p0, Lcom/github/javaparser/ast/expr/AssignExpr;->value:Lcom/github/javaparser/ast/expr/Expression;

    invoke-virtual {p0, p1}, Lcom/github/javaparser/ast/Node;->setAsParentNodeOf(Lcom/github/javaparser/ast/Node;)V

    return-object p0
.end method

.method public toAssignExpr()Ljava/util/Optional;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "Lcom/github/javaparser/ast/expr/AssignExpr;",
            ">;"
        }
    .end annotation

    invoke-static {p0}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    return-object v0
.end method
