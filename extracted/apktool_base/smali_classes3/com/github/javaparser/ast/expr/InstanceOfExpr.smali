.class public Lcom/github/javaparser/ast/expr/InstanceOfExpr;
.super Lcom/github/javaparser/ast/expr/Expression;
.source "SourceFile"

# interfaces
.implements Lcom/github/javaparser/ast/nodeTypes/NodeWithType;
.implements Lcom/github/javaparser/ast/nodeTypes/NodeWithExpression;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/github/javaparser/ast/expr/Expression;",
        "Lcom/github/javaparser/ast/nodeTypes/NodeWithType<",
        "Lcom/github/javaparser/ast/expr/InstanceOfExpr;",
        "Lcom/github/javaparser/ast/type/ReferenceType;",
        ">;",
        "Lcom/github/javaparser/ast/nodeTypes/NodeWithExpression<",
        "Lcom/github/javaparser/ast/expr/InstanceOfExpr;",
        ">;"
    }
.end annotation


# instance fields
.field private expression:Lcom/github/javaparser/ast/expr/Expression;

.field private pattern:Lcom/github/javaparser/ast/expr/PatternExpr;
    .annotation runtime Lcom/github/javaparser/metamodel/OptionalProperty;
    .end annotation
.end field

.field private type:Lcom/github/javaparser/ast/type/ReferenceType;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    new-instance v0, Lcom/github/javaparser/ast/expr/NameExpr;

    invoke-direct {v0}, Lcom/github/javaparser/ast/expr/NameExpr;-><init>()V

    new-instance v1, Lcom/github/javaparser/ast/type/ClassOrInterfaceType;

    invoke-direct {v1}, Lcom/github/javaparser/ast/type/ClassOrInterfaceType;-><init>()V

    const/4 v2, 0x0

    invoke-direct {p0, v2, v0, v1, v2}, Lcom/github/javaparser/ast/expr/InstanceOfExpr;-><init>(Lcom/github/javaparser/TokenRange;Lcom/github/javaparser/ast/expr/Expression;Lcom/github/javaparser/ast/type/ReferenceType;Lcom/github/javaparser/ast/expr/PatternExpr;)V

    return-void
.end method

.method public constructor <init>(Lcom/github/javaparser/TokenRange;Lcom/github/javaparser/ast/expr/Expression;Lcom/github/javaparser/ast/type/ReferenceType;Lcom/github/javaparser/ast/expr/PatternExpr;)V
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
            "expression",
            "type",
            "pattern"
        }
    .end annotation

    .line 4
    invoke-direct {p0, p1}, Lcom/github/javaparser/ast/expr/Expression;-><init>(Lcom/github/javaparser/TokenRange;)V

    .line 5
    invoke-virtual {p0, p2}, Lcom/github/javaparser/ast/expr/InstanceOfExpr;->setExpression(Lcom/github/javaparser/ast/expr/Expression;)Lcom/github/javaparser/ast/expr/InstanceOfExpr;

    .line 6
    invoke-virtual {p0, p3}, Lcom/github/javaparser/ast/expr/InstanceOfExpr;->setType(Lcom/github/javaparser/ast/type/ReferenceType;)Lcom/github/javaparser/ast/expr/InstanceOfExpr;

    .line 7
    invoke-virtual {p0, p4}, Lcom/github/javaparser/ast/expr/InstanceOfExpr;->setPattern(Lcom/github/javaparser/ast/expr/PatternExpr;)Lcom/github/javaparser/ast/expr/InstanceOfExpr;

    .line 8
    invoke-virtual {p0}, Lcom/github/javaparser/ast/Node;->customInitialization()V

    return-void
.end method

.method public constructor <init>(Lcom/github/javaparser/ast/expr/Expression;Lcom/github/javaparser/ast/type/ReferenceType;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "expression",
            "type"
        }
    .end annotation

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, v0, p1, p2, v0}, Lcom/github/javaparser/ast/expr/InstanceOfExpr;-><init>(Lcom/github/javaparser/TokenRange;Lcom/github/javaparser/ast/expr/Expression;Lcom/github/javaparser/ast/type/ReferenceType;Lcom/github/javaparser/ast/expr/PatternExpr;)V

    return-void
.end method

.method public constructor <init>(Lcom/github/javaparser/ast/expr/Expression;Lcom/github/javaparser/ast/type/ReferenceType;Lcom/github/javaparser/ast/expr/PatternExpr;)V
    .locals 1
    .annotation runtime Lcom/github/javaparser/ast/AllFieldsConstructor;
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10
        }
        names = {
            "expression",
            "type",
            "pattern"
        }
    .end annotation

    const/4 v0, 0x0

    .line 3
    invoke-direct {p0, v0, p1, p2, p3}, Lcom/github/javaparser/ast/expr/InstanceOfExpr;-><init>(Lcom/github/javaparser/TokenRange;Lcom/github/javaparser/ast/expr/Expression;Lcom/github/javaparser/ast/type/ReferenceType;Lcom/github/javaparser/ast/expr/PatternExpr;)V

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
    invoke-interface {p1, p0, p2}, Lcom/github/javaparser/ast/visitor/GenericVisitor;->visit(Lcom/github/javaparser/ast/expr/InstanceOfExpr;Ljava/lang/Object;)Ljava/lang/Object;

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
    invoke-interface {p1, p0, p2}, Lcom/github/javaparser/ast/visitor/VoidVisitor;->visit(Lcom/github/javaparser/ast/expr/InstanceOfExpr;Ljava/lang/Object;)V

    return-void
.end method

.method public asInstanceOfExpr()Lcom/github/javaparser/ast/expr/InstanceOfExpr;
    .locals 0

    return-object p0
.end method

.method public bridge synthetic clone()Lcom/github/javaparser/ast/Node;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/github/javaparser/ast/expr/InstanceOfExpr;->clone()Lcom/github/javaparser/ast/expr/InstanceOfExpr;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/github/javaparser/ast/expr/Expression;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/github/javaparser/ast/expr/InstanceOfExpr;->clone()Lcom/github/javaparser/ast/expr/InstanceOfExpr;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/github/javaparser/ast/expr/InstanceOfExpr;
    .locals 2

    .line 4
    new-instance v0, Lcom/github/javaparser/ast/visitor/CloneVisitor;

    invoke-direct {v0}, Lcom/github/javaparser/ast/visitor/CloneVisitor;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/github/javaparser/ast/expr/InstanceOfExpr;->accept(Lcom/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/github/javaparser/ast/expr/InstanceOfExpr;

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
    invoke-virtual {p0}, Lcom/github/javaparser/ast/expr/InstanceOfExpr;->clone()Lcom/github/javaparser/ast/expr/InstanceOfExpr;

    move-result-object v0

    return-object v0
.end method

.method public getExpression()Lcom/github/javaparser/ast/expr/Expression;
    .locals 1

    iget-object v0, p0, Lcom/github/javaparser/ast/expr/InstanceOfExpr;->expression:Lcom/github/javaparser/ast/expr/Expression;

    return-object v0
.end method

.method public bridge synthetic getMetaModel()Lcom/github/javaparser/metamodel/ExpressionMetaModel;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/github/javaparser/ast/expr/InstanceOfExpr;->getMetaModel()Lcom/github/javaparser/metamodel/InstanceOfExprMetaModel;

    move-result-object v0

    return-object v0
.end method

.method public getMetaModel()Lcom/github/javaparser/metamodel/InstanceOfExprMetaModel;
    .locals 1

    .line 3
    sget-object v0, Lcom/github/javaparser/metamodel/JavaParserMetaModel;->instanceOfExprMetaModel:Lcom/github/javaparser/metamodel/InstanceOfExprMetaModel;

    return-object v0
.end method

.method public bridge synthetic getMetaModel()Lcom/github/javaparser/metamodel/NodeMetaModel;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/github/javaparser/ast/expr/InstanceOfExpr;->getMetaModel()Lcom/github/javaparser/metamodel/InstanceOfExprMetaModel;

    move-result-object v0

    return-object v0
.end method

.method public getName()Ljava/util/Optional;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "Lcom/github/javaparser/ast/expr/SimpleName;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/github/javaparser/ast/expr/InstanceOfExpr;->pattern:Lcom/github/javaparser/ast/expr/PatternExpr;

    if-nez v0, :cond_0

    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-virtual {v0}, Lcom/github/javaparser/ast/expr/Expression;->isTypePatternExpr()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object v0

    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/github/javaparser/ast/expr/InstanceOfExpr;->pattern:Lcom/github/javaparser/ast/expr/PatternExpr;

    invoke-virtual {v0}, Lcom/github/javaparser/ast/expr/Expression;->asTypePatternExpr()Lcom/github/javaparser/ast/expr/TypePatternExpr;

    move-result-object v0

    invoke-virtual {v0}, Lcom/github/javaparser/ast/expr/TypePatternExpr;->getName()Lcom/github/javaparser/ast/expr/SimpleName;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    return-object v0
.end method

.method public getPattern()Ljava/util/Optional;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "Lcom/github/javaparser/ast/expr/PatternExpr;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/github/javaparser/ast/expr/InstanceOfExpr;->pattern:Lcom/github/javaparser/ast/expr/PatternExpr;

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    return-object v0
.end method

.method public getType()Lcom/github/javaparser/ast/type/ReferenceType;
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/github/javaparser/ast/expr/InstanceOfExpr;->type:Lcom/github/javaparser/ast/type/ReferenceType;

    return-object v0
.end method

.method public bridge synthetic getType()Lcom/github/javaparser/ast/type/Type;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/github/javaparser/ast/expr/InstanceOfExpr;->getType()Lcom/github/javaparser/ast/type/ReferenceType;

    move-result-object v0

    return-object v0
.end method

.method public ifInstanceOfExpr(Ljava/util/function/Consumer;)V
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
            "Lcom/github/javaparser/ast/expr/InstanceOfExpr;",
            ">;)V"
        }
    .end annotation

    invoke-interface {p1, p0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method

.method public isInstanceOfExpr()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public remove(Lcom/github/javaparser/ast/Node;)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "node"
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    iget-object v0, p0, Lcom/github/javaparser/ast/expr/InstanceOfExpr;->pattern:Lcom/github/javaparser/ast/expr/PatternExpr;

    if-eqz v0, :cond_1

    if-ne p1, v0, :cond_1

    invoke-virtual {p0}, Lcom/github/javaparser/ast/expr/InstanceOfExpr;->removePattern()Lcom/github/javaparser/ast/expr/InstanceOfExpr;

    const/4 p1, 0x1

    return p1

    :cond_1
    invoke-super {p0, p1}, Lcom/github/javaparser/ast/Node;->remove(Lcom/github/javaparser/ast/Node;)Z

    move-result p1

    return p1
.end method

.method public removePattern()Lcom/github/javaparser/ast/expr/InstanceOfExpr;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/github/javaparser/ast/expr/InstanceOfExpr;->setPattern(Lcom/github/javaparser/ast/expr/PatternExpr;)Lcom/github/javaparser/ast/expr/InstanceOfExpr;

    move-result-object v0

    return-object v0
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
    iget-object v0, p0, Lcom/github/javaparser/ast/expr/InstanceOfExpr;->expression:Lcom/github/javaparser/ast/expr/Expression;

    const/4 v1, 0x1

    if-ne p1, v0, :cond_1

    check-cast p2, Lcom/github/javaparser/ast/expr/Expression;

    invoke-virtual {p0, p2}, Lcom/github/javaparser/ast/expr/InstanceOfExpr;->setExpression(Lcom/github/javaparser/ast/expr/Expression;)Lcom/github/javaparser/ast/expr/InstanceOfExpr;

    return v1

    :cond_1
    iget-object v0, p0, Lcom/github/javaparser/ast/expr/InstanceOfExpr;->pattern:Lcom/github/javaparser/ast/expr/PatternExpr;

    if-eqz v0, :cond_2

    if-ne p1, v0, :cond_2

    check-cast p2, Lcom/github/javaparser/ast/expr/PatternExpr;

    invoke-virtual {p0, p2}, Lcom/github/javaparser/ast/expr/InstanceOfExpr;->setPattern(Lcom/github/javaparser/ast/expr/PatternExpr;)Lcom/github/javaparser/ast/expr/InstanceOfExpr;

    return v1

    :cond_2
    iget-object v0, p0, Lcom/github/javaparser/ast/expr/InstanceOfExpr;->type:Lcom/github/javaparser/ast/type/ReferenceType;

    if-ne p1, v0, :cond_3

    check-cast p2, Lcom/github/javaparser/ast/type/ReferenceType;

    invoke-virtual {p0, p2}, Lcom/github/javaparser/ast/expr/InstanceOfExpr;->setType(Lcom/github/javaparser/ast/type/ReferenceType;)Lcom/github/javaparser/ast/expr/InstanceOfExpr;

    return v1

    :cond_3
    invoke-super {p0, p1, p2}, Lcom/github/javaparser/ast/Node;->replace(Lcom/github/javaparser/ast/Node;Lcom/github/javaparser/ast/Node;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic setExpression(Lcom/github/javaparser/ast/expr/Expression;)Lcom/github/javaparser/ast/Node;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            "expression"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/github/javaparser/ast/expr/InstanceOfExpr;->setExpression(Lcom/github/javaparser/ast/expr/Expression;)Lcom/github/javaparser/ast/expr/InstanceOfExpr;

    move-result-object p1

    return-object p1
.end method

.method public setExpression(Lcom/github/javaparser/ast/expr/Expression;)Lcom/github/javaparser/ast/expr/InstanceOfExpr;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "expression"
        }
    .end annotation

    .line 2
    invoke-static {p1}, Lcom/github/javaparser/utils/Utils;->assertNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    iget-object v0, p0, Lcom/github/javaparser/ast/expr/InstanceOfExpr;->expression:Lcom/github/javaparser/ast/expr/Expression;

    if-ne p1, v0, :cond_0

    return-object p0

    .line 4
    :cond_0
    sget-object v1, Lcom/github/javaparser/ast/observer/ObservableProperty;->EXPRESSION:Lcom/github/javaparser/ast/observer/ObservableProperty;

    invoke-virtual {p0, v1, v0, p1}, Lcom/github/javaparser/ast/Node;->notifyPropertyChange(Lcom/github/javaparser/ast/observer/ObservableProperty;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 5
    iget-object v0, p0, Lcom/github/javaparser/ast/expr/InstanceOfExpr;->expression:Lcom/github/javaparser/ast/expr/Expression;

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/github/javaparser/ast/Node;->setParentNode(Lcom/github/javaparser/ast/Node;)Lcom/github/javaparser/ast/Node;

    .line 6
    :cond_1
    iput-object p1, p0, Lcom/github/javaparser/ast/expr/InstanceOfExpr;->expression:Lcom/github/javaparser/ast/expr/Expression;

    .line 7
    invoke-virtual {p0, p1}, Lcom/github/javaparser/ast/Node;->setAsParentNodeOf(Lcom/github/javaparser/ast/Node;)V

    return-object p0
.end method

.method public setPattern(Lcom/github/javaparser/ast/expr/PatternExpr;)Lcom/github/javaparser/ast/expr/InstanceOfExpr;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "pattern"
        }
    .end annotation

    iget-object v0, p0, Lcom/github/javaparser/ast/expr/InstanceOfExpr;->pattern:Lcom/github/javaparser/ast/expr/PatternExpr;

    if-ne p1, v0, :cond_0

    return-object p0

    :cond_0
    sget-object v1, Lcom/github/javaparser/ast/observer/ObservableProperty;->PATTERN:Lcom/github/javaparser/ast/observer/ObservableProperty;

    invoke-virtual {p0, v1, v0, p1}, Lcom/github/javaparser/ast/Node;->notifyPropertyChange(Lcom/github/javaparser/ast/observer/ObservableProperty;Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/github/javaparser/ast/expr/InstanceOfExpr;->pattern:Lcom/github/javaparser/ast/expr/PatternExpr;

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/github/javaparser/ast/Node;->setParentNode(Lcom/github/javaparser/ast/Node;)Lcom/github/javaparser/ast/Node;

    :cond_1
    iput-object p1, p0, Lcom/github/javaparser/ast/expr/InstanceOfExpr;->pattern:Lcom/github/javaparser/ast/expr/PatternExpr;

    invoke-virtual {p0, p1}, Lcom/github/javaparser/ast/Node;->setAsParentNodeOf(Lcom/github/javaparser/ast/Node;)V

    return-object p0
.end method

.method public bridge synthetic setType(Lcom/github/javaparser/ast/type/Type;)Lcom/github/javaparser/ast/Node;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            "type"
        }
    .end annotation

    .line 1
    check-cast p1, Lcom/github/javaparser/ast/type/ReferenceType;

    invoke-virtual {p0, p1}, Lcom/github/javaparser/ast/expr/InstanceOfExpr;->setType(Lcom/github/javaparser/ast/type/ReferenceType;)Lcom/github/javaparser/ast/expr/InstanceOfExpr;

    move-result-object p1

    return-object p1
.end method

.method public setType(Lcom/github/javaparser/ast/type/ReferenceType;)Lcom/github/javaparser/ast/expr/InstanceOfExpr;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "type"
        }
    .end annotation

    .line 2
    invoke-static {p1}, Lcom/github/javaparser/utils/Utils;->assertNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    iget-object v0, p0, Lcom/github/javaparser/ast/expr/InstanceOfExpr;->type:Lcom/github/javaparser/ast/type/ReferenceType;

    if-ne p1, v0, :cond_0

    return-object p0

    .line 4
    :cond_0
    sget-object v1, Lcom/github/javaparser/ast/observer/ObservableProperty;->TYPE:Lcom/github/javaparser/ast/observer/ObservableProperty;

    invoke-virtual {p0, v1, v0, p1}, Lcom/github/javaparser/ast/Node;->notifyPropertyChange(Lcom/github/javaparser/ast/observer/ObservableProperty;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 5
    iget-object v0, p0, Lcom/github/javaparser/ast/expr/InstanceOfExpr;->type:Lcom/github/javaparser/ast/type/ReferenceType;

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/github/javaparser/ast/Node;->setParentNode(Lcom/github/javaparser/ast/Node;)Lcom/github/javaparser/ast/Node;

    .line 6
    :cond_1
    iput-object p1, p0, Lcom/github/javaparser/ast/expr/InstanceOfExpr;->type:Lcom/github/javaparser/ast/type/ReferenceType;

    .line 7
    invoke-virtual {p0, p1}, Lcom/github/javaparser/ast/Node;->setAsParentNodeOf(Lcom/github/javaparser/ast/Node;)V

    return-object p0
.end method

.method public toInstanceOfExpr()Ljava/util/Optional;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "Lcom/github/javaparser/ast/expr/InstanceOfExpr;",
            ">;"
        }
    .end annotation

    invoke-static {p0}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    return-object v0
.end method
