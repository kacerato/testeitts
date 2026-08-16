.class public Lcom/github/javaparser/ast/expr/LambdaExpr;
.super Lcom/github/javaparser/ast/expr/Expression;
.source "SourceFile"

# interfaces
.implements Lcom/github/javaparser/ast/nodeTypes/NodeWithParameters;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/github/javaparser/ast/expr/Expression;",
        "Lcom/github/javaparser/ast/nodeTypes/NodeWithParameters<",
        "Lcom/github/javaparser/ast/expr/LambdaExpr;",
        ">;"
    }
.end annotation


# instance fields
.field private body:Lcom/github/javaparser/ast/stmt/Statement;

.field private isEnclosingParameters:Z

.field private parameters:Lcom/github/javaparser/ast/NodeList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/github/javaparser/ast/NodeList<",
            "Lcom/github/javaparser/ast/body/Parameter;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 1
    new-instance v0, Lcom/github/javaparser/ast/NodeList;

    invoke-direct {v0}, Lcom/github/javaparser/ast/NodeList;-><init>()V

    new-instance v1, Lcom/github/javaparser/ast/stmt/ReturnStmt;

    invoke-direct {v1}, Lcom/github/javaparser/ast/stmt/ReturnStmt;-><init>()V

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {p0, v3, v0, v1, v2}, Lcom/github/javaparser/ast/expr/LambdaExpr;-><init>(Lcom/github/javaparser/TokenRange;Lcom/github/javaparser/ast/NodeList;Lcom/github/javaparser/ast/stmt/Statement;Z)V

    return-void
.end method

.method public constructor <init>(Lcom/github/javaparser/TokenRange;Lcom/github/javaparser/ast/NodeList;Lcom/github/javaparser/ast/stmt/Statement;Z)V
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
            "parameters",
            "body",
            "isEnclosingParameters"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/github/javaparser/TokenRange;",
            "Lcom/github/javaparser/ast/NodeList<",
            "Lcom/github/javaparser/ast/body/Parameter;",
            ">;",
            "Lcom/github/javaparser/ast/stmt/Statement;",
            "Z)V"
        }
    .end annotation

    .line 7
    invoke-direct {p0, p1}, Lcom/github/javaparser/ast/expr/Expression;-><init>(Lcom/github/javaparser/TokenRange;)V

    .line 8
    invoke-virtual {p0, p2}, Lcom/github/javaparser/ast/expr/LambdaExpr;->setParameters(Lcom/github/javaparser/ast/NodeList;)Lcom/github/javaparser/ast/expr/LambdaExpr;

    .line 9
    invoke-virtual {p0, p3}, Lcom/github/javaparser/ast/expr/LambdaExpr;->setBody(Lcom/github/javaparser/ast/stmt/Statement;)Lcom/github/javaparser/ast/expr/LambdaExpr;

    .line 10
    invoke-virtual {p0, p4}, Lcom/github/javaparser/ast/expr/LambdaExpr;->setEnclosingParameters(Z)Lcom/github/javaparser/ast/expr/LambdaExpr;

    .line 11
    invoke-virtual {p0}, Lcom/github/javaparser/ast/Node;->customInitialization()V

    return-void
.end method

.method public constructor <init>(Lcom/github/javaparser/ast/NodeList;Lcom/github/javaparser/ast/expr/Expression;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "parameters",
            "body"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/github/javaparser/ast/NodeList<",
            "Lcom/github/javaparser/ast/body/Parameter;",
            ">;",
            "Lcom/github/javaparser/ast/expr/Expression;",
            ")V"
        }
    .end annotation

    .line 5
    new-instance v0, Lcom/github/javaparser/ast/stmt/ExpressionStmt;

    invoke-direct {v0, p2}, Lcom/github/javaparser/ast/stmt/ExpressionStmt;-><init>(Lcom/github/javaparser/ast/expr/Expression;)V

    const/4 p2, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, v1, p1, v0, p2}, Lcom/github/javaparser/ast/expr/LambdaExpr;-><init>(Lcom/github/javaparser/TokenRange;Lcom/github/javaparser/ast/NodeList;Lcom/github/javaparser/ast/stmt/Statement;Z)V

    return-void
.end method

.method public constructor <init>(Lcom/github/javaparser/ast/NodeList;Lcom/github/javaparser/ast/stmt/BlockStmt;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "parameters",
            "body"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/github/javaparser/ast/NodeList<",
            "Lcom/github/javaparser/ast/body/Parameter;",
            ">;",
            "Lcom/github/javaparser/ast/stmt/BlockStmt;",
            ")V"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 3
    invoke-direct {p0, v0, p1, p2, v1}, Lcom/github/javaparser/ast/expr/LambdaExpr;-><init>(Lcom/github/javaparser/TokenRange;Lcom/github/javaparser/ast/NodeList;Lcom/github/javaparser/ast/stmt/Statement;Z)V

    return-void
.end method

.method public constructor <init>(Lcom/github/javaparser/ast/NodeList;Lcom/github/javaparser/ast/stmt/Statement;Z)V
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
            "parameters",
            "body",
            "isEnclosingParameters"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/github/javaparser/ast/NodeList<",
            "Lcom/github/javaparser/ast/body/Parameter;",
            ">;",
            "Lcom/github/javaparser/ast/stmt/Statement;",
            "Z)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 6
    invoke-direct {p0, v0, p1, p2, p3}, Lcom/github/javaparser/ast/expr/LambdaExpr;-><init>(Lcom/github/javaparser/TokenRange;Lcom/github/javaparser/ast/NodeList;Lcom/github/javaparser/ast/stmt/Statement;Z)V

    return-void
.end method

.method public constructor <init>(Lcom/github/javaparser/ast/body/Parameter;Lcom/github/javaparser/ast/expr/Expression;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "parameter",
            "body"
        }
    .end annotation

    .line 4
    new-instance v0, Lcom/github/javaparser/ast/NodeList;

    filled-new-array {p1}, [Lcom/github/javaparser/ast/body/Parameter;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/github/javaparser/ast/NodeList;-><init>([Lcom/github/javaparser/ast/Node;)V

    new-instance p1, Lcom/github/javaparser/ast/stmt/ExpressionStmt;

    invoke-direct {p1, p2}, Lcom/github/javaparser/ast/stmt/ExpressionStmt;-><init>(Lcom/github/javaparser/ast/expr/Expression;)V

    const/4 p2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, v1, v0, p1, p2}, Lcom/github/javaparser/ast/expr/LambdaExpr;-><init>(Lcom/github/javaparser/TokenRange;Lcom/github/javaparser/ast/NodeList;Lcom/github/javaparser/ast/stmt/Statement;Z)V

    return-void
.end method

.method public constructor <init>(Lcom/github/javaparser/ast/body/Parameter;Lcom/github/javaparser/ast/stmt/BlockStmt;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "parameter",
            "body"
        }
    .end annotation

    .line 2
    new-instance v0, Lcom/github/javaparser/ast/NodeList;

    filled-new-array {p1}, [Lcom/github/javaparser/ast/body/Parameter;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/github/javaparser/ast/NodeList;-><init>([Lcom/github/javaparser/ast/Node;)V

    const/4 p1, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, v1, v0, p2, p1}, Lcom/github/javaparser/ast/expr/LambdaExpr;-><init>(Lcom/github/javaparser/TokenRange;Lcom/github/javaparser/ast/NodeList;Lcom/github/javaparser/ast/stmt/Statement;Z)V

    return-void
.end method

.method public static synthetic l0(Lcom/github/javaparser/ast/body/Parameter;)Z
    .locals 0

    invoke-static {p0}, Lcom/github/javaparser/ast/expr/LambdaExpr;->lambda$isExplicitlyTyped$0(Lcom/github/javaparser/ast/body/Parameter;)Z

    move-result p0

    return p0
.end method

.method private static synthetic lambda$isExplicitlyTyped$0(Lcom/github/javaparser/ast/body/Parameter;)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "p"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/github/javaparser/ast/body/Parameter;->getType()Lcom/github/javaparser/ast/type/Type;

    move-result-object p0

    invoke-virtual {p0}, Lcom/github/javaparser/ast/type/Type;->isUnknownType()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
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
    invoke-interface {p1, p0, p2}, Lcom/github/javaparser/ast/visitor/GenericVisitor;->visit(Lcom/github/javaparser/ast/expr/LambdaExpr;Ljava/lang/Object;)Ljava/lang/Object;

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
    invoke-interface {p1, p0, p2}, Lcom/github/javaparser/ast/visitor/VoidVisitor;->visit(Lcom/github/javaparser/ast/expr/LambdaExpr;Ljava/lang/Object;)V

    return-void
.end method

.method public asLambdaExpr()Lcom/github/javaparser/ast/expr/LambdaExpr;
    .locals 0

    return-object p0
.end method

.method public bridge synthetic clone()Lcom/github/javaparser/ast/Node;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/github/javaparser/ast/expr/LambdaExpr;->clone()Lcom/github/javaparser/ast/expr/LambdaExpr;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/github/javaparser/ast/expr/Expression;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/github/javaparser/ast/expr/LambdaExpr;->clone()Lcom/github/javaparser/ast/expr/LambdaExpr;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/github/javaparser/ast/expr/LambdaExpr;
    .locals 2

    .line 4
    new-instance v0, Lcom/github/javaparser/ast/visitor/CloneVisitor;

    invoke-direct {v0}, Lcom/github/javaparser/ast/visitor/CloneVisitor;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/github/javaparser/ast/expr/LambdaExpr;->accept(Lcom/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/github/javaparser/ast/expr/LambdaExpr;

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
    invoke-virtual {p0}, Lcom/github/javaparser/ast/expr/LambdaExpr;->clone()Lcom/github/javaparser/ast/expr/LambdaExpr;

    move-result-object v0

    return-object v0
.end method

.method public getBody()Lcom/github/javaparser/ast/stmt/Statement;
    .locals 1

    iget-object v0, p0, Lcom/github/javaparser/ast/expr/LambdaExpr;->body:Lcom/github/javaparser/ast/stmt/Statement;

    return-object v0
.end method

.method public getExpressionBody()Ljava/util/Optional;
    .locals 1
    .annotation runtime Lcom/github/javaparser/metamodel/DerivedProperty;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "Lcom/github/javaparser/ast/expr/Expression;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/github/javaparser/ast/expr/LambdaExpr;->body:Lcom/github/javaparser/ast/stmt/Statement;

    invoke-virtual {v0}, Lcom/github/javaparser/ast/stmt/Statement;->isExpressionStmt()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/github/javaparser/ast/expr/LambdaExpr;->body:Lcom/github/javaparser/ast/stmt/Statement;

    invoke-virtual {v0}, Lcom/github/javaparser/ast/stmt/Statement;->asExpressionStmt()Lcom/github/javaparser/ast/stmt/ExpressionStmt;

    move-result-object v0

    invoke-virtual {v0}, Lcom/github/javaparser/ast/stmt/ExpressionStmt;->getExpression()Lcom/github/javaparser/ast/expr/Expression;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getMetaModel()Lcom/github/javaparser/metamodel/ExpressionMetaModel;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/github/javaparser/ast/expr/LambdaExpr;->getMetaModel()Lcom/github/javaparser/metamodel/LambdaExprMetaModel;

    move-result-object v0

    return-object v0
.end method

.method public getMetaModel()Lcom/github/javaparser/metamodel/LambdaExprMetaModel;
    .locals 1

    .line 3
    sget-object v0, Lcom/github/javaparser/metamodel/JavaParserMetaModel;->lambdaExprMetaModel:Lcom/github/javaparser/metamodel/LambdaExprMetaModel;

    return-object v0
.end method

.method public bridge synthetic getMetaModel()Lcom/github/javaparser/metamodel/NodeMetaModel;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/github/javaparser/ast/expr/LambdaExpr;->getMetaModel()Lcom/github/javaparser/metamodel/LambdaExprMetaModel;

    move-result-object v0

    return-object v0
.end method

.method public getParameters()Lcom/github/javaparser/ast/NodeList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/github/javaparser/ast/NodeList<",
            "Lcom/github/javaparser/ast/body/Parameter;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/github/javaparser/ast/expr/LambdaExpr;->parameters:Lcom/github/javaparser/ast/NodeList;

    return-object v0
.end method

.method public ifLambdaExpr(Ljava/util/function/Consumer;)V
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
            "Lcom/github/javaparser/ast/expr/LambdaExpr;",
            ">;)V"
        }
    .end annotation

    invoke-interface {p1, p0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method

.method public isEnclosingParameters()Z
    .locals 1

    iget-boolean v0, p0, Lcom/github/javaparser/ast/expr/LambdaExpr;->isEnclosingParameters:Z

    return v0
.end method

.method public isExplicitlyTyped()Z
    .locals 2

    invoke-virtual {p0}, Lcom/github/javaparser/ast/expr/LambdaExpr;->getParameters()Lcom/github/javaparser/ast/NodeList;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/github/javaparser/ast/expr/c;

    invoke-direct {v1}, Lcom/github/javaparser/ast/expr/c;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->allMatch(Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public isLambdaExpr()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isPolyExpression()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public remove(Lcom/github/javaparser/ast/Node;)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "node"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/github/javaparser/ast/expr/LambdaExpr;->parameters:Lcom/github/javaparser/ast/NodeList;

    invoke-virtual {v1}, Lcom/github/javaparser/ast/NodeList;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    iget-object v1, p0, Lcom/github/javaparser/ast/expr/LambdaExpr;->parameters:Lcom/github/javaparser/ast/NodeList;

    invoke-virtual {v1, v0}, Lcom/github/javaparser/ast/NodeList;->get(I)Lcom/github/javaparser/ast/Node;

    move-result-object v1

    if-ne v1, p1, :cond_1

    iget-object p1, p0, Lcom/github/javaparser/ast/expr/LambdaExpr;->parameters:Lcom/github/javaparser/ast/NodeList;

    invoke-virtual {p1, v0}, Lcom/github/javaparser/ast/NodeList;->remove(I)Lcom/github/javaparser/ast/Node;

    const/4 p1, 0x1

    return p1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    invoke-super {p0, p1}, Lcom/github/javaparser/ast/Node;->remove(Lcom/github/javaparser/ast/Node;)Z

    move-result p1

    return p1
.end method

.method public replace(Lcom/github/javaparser/ast/Node;Lcom/github/javaparser/ast/Node;)Z
    .locals 3
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

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    iget-object v1, p0, Lcom/github/javaparser/ast/expr/LambdaExpr;->body:Lcom/github/javaparser/ast/stmt/Statement;

    const/4 v2, 0x1

    if-ne p1, v1, :cond_1

    check-cast p2, Lcom/github/javaparser/ast/stmt/Statement;

    invoke-virtual {p0, p2}, Lcom/github/javaparser/ast/expr/LambdaExpr;->setBody(Lcom/github/javaparser/ast/stmt/Statement;)Lcom/github/javaparser/ast/expr/LambdaExpr;

    return v2

    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/github/javaparser/ast/expr/LambdaExpr;->parameters:Lcom/github/javaparser/ast/NodeList;

    invoke-virtual {v1}, Lcom/github/javaparser/ast/NodeList;->size()I

    move-result v1

    if-ge v0, v1, :cond_3

    iget-object v1, p0, Lcom/github/javaparser/ast/expr/LambdaExpr;->parameters:Lcom/github/javaparser/ast/NodeList;

    invoke-virtual {v1, v0}, Lcom/github/javaparser/ast/NodeList;->get(I)Lcom/github/javaparser/ast/Node;

    move-result-object v1

    if-ne v1, p1, :cond_2

    iget-object p1, p0, Lcom/github/javaparser/ast/expr/LambdaExpr;->parameters:Lcom/github/javaparser/ast/NodeList;

    check-cast p2, Lcom/github/javaparser/ast/body/Parameter;

    invoke-virtual {p1, v0, p2}, Lcom/github/javaparser/ast/NodeList;->set(ILcom/github/javaparser/ast/Node;)Lcom/github/javaparser/ast/Node;

    return v2

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    invoke-super {p0, p1, p2}, Lcom/github/javaparser/ast/Node;->replace(Lcom/github/javaparser/ast/Node;Lcom/github/javaparser/ast/Node;)Z

    move-result p1

    return p1
.end method

.method public setBody(Lcom/github/javaparser/ast/stmt/Statement;)Lcom/github/javaparser/ast/expr/LambdaExpr;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "body"
        }
    .end annotation

    invoke-static {p1}, Lcom/github/javaparser/utils/Utils;->assertNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/github/javaparser/ast/expr/LambdaExpr;->body:Lcom/github/javaparser/ast/stmt/Statement;

    if-ne p1, v0, :cond_0

    return-object p0

    :cond_0
    sget-object v1, Lcom/github/javaparser/ast/observer/ObservableProperty;->BODY:Lcom/github/javaparser/ast/observer/ObservableProperty;

    invoke-virtual {p0, v1, v0, p1}, Lcom/github/javaparser/ast/Node;->notifyPropertyChange(Lcom/github/javaparser/ast/observer/ObservableProperty;Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/github/javaparser/ast/expr/LambdaExpr;->body:Lcom/github/javaparser/ast/stmt/Statement;

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/github/javaparser/ast/Node;->setParentNode(Lcom/github/javaparser/ast/Node;)Lcom/github/javaparser/ast/Node;

    :cond_1
    iput-object p1, p0, Lcom/github/javaparser/ast/expr/LambdaExpr;->body:Lcom/github/javaparser/ast/stmt/Statement;

    invoke-virtual {p0, p1}, Lcom/github/javaparser/ast/Node;->setAsParentNodeOf(Lcom/github/javaparser/ast/Node;)V

    return-object p0
.end method

.method public setEnclosingParameters(Z)Lcom/github/javaparser/ast/expr/LambdaExpr;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "isEnclosingParameters"
        }
    .end annotation

    iget-boolean v0, p0, Lcom/github/javaparser/ast/expr/LambdaExpr;->isEnclosingParameters:Z

    if-ne p1, v0, :cond_0

    return-object p0

    :cond_0
    sget-object v1, Lcom/github/javaparser/ast/observer/ObservableProperty;->ENCLOSING_PARAMETERS:Lcom/github/javaparser/ast/observer/ObservableProperty;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {p0, v1, v0, v2}, Lcom/github/javaparser/ast/Node;->notifyPropertyChange(Lcom/github/javaparser/ast/observer/ObservableProperty;Ljava/lang/Object;Ljava/lang/Object;)V

    iput-boolean p1, p0, Lcom/github/javaparser/ast/expr/LambdaExpr;->isEnclosingParameters:Z

    return-object p0
.end method

.method public bridge synthetic setParameters(Lcom/github/javaparser/ast/NodeList;)Lcom/github/javaparser/ast/Node;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            "parameters"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/github/javaparser/ast/expr/LambdaExpr;->setParameters(Lcom/github/javaparser/ast/NodeList;)Lcom/github/javaparser/ast/expr/LambdaExpr;

    move-result-object p1

    return-object p1
.end method

.method public setParameters(Lcom/github/javaparser/ast/NodeList;)Lcom/github/javaparser/ast/expr/LambdaExpr;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "parameters"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/github/javaparser/ast/NodeList<",
            "Lcom/github/javaparser/ast/body/Parameter;",
            ">;)",
            "Lcom/github/javaparser/ast/expr/LambdaExpr;"
        }
    .end annotation

    .line 2
    invoke-static {p1}, Lcom/github/javaparser/utils/Utils;->assertNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    iget-object v0, p0, Lcom/github/javaparser/ast/expr/LambdaExpr;->parameters:Lcom/github/javaparser/ast/NodeList;

    if-ne p1, v0, :cond_0

    return-object p0

    .line 4
    :cond_0
    sget-object v1, Lcom/github/javaparser/ast/observer/ObservableProperty;->PARAMETERS:Lcom/github/javaparser/ast/observer/ObservableProperty;

    invoke-virtual {p0, v1, v0, p1}, Lcom/github/javaparser/ast/Node;->notifyPropertyChange(Lcom/github/javaparser/ast/observer/ObservableProperty;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 5
    iget-object v0, p0, Lcom/github/javaparser/ast/expr/LambdaExpr;->parameters:Lcom/github/javaparser/ast/NodeList;

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/github/javaparser/ast/NodeList;->setParentNode(Lcom/github/javaparser/ast/Node;)Lcom/github/javaparser/ast/NodeList;

    .line 6
    :cond_1
    iput-object p1, p0, Lcom/github/javaparser/ast/expr/LambdaExpr;->parameters:Lcom/github/javaparser/ast/NodeList;

    .line 7
    invoke-virtual {p0, p1}, Lcom/github/javaparser/ast/Node;->setAsParentNodeOf(Lcom/github/javaparser/ast/NodeList;)V

    return-object p0
.end method

.method public toLambdaExpr()Ljava/util/Optional;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "Lcom/github/javaparser/ast/expr/LambdaExpr;",
            ">;"
        }
    .end annotation

    invoke-static {p0}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    return-object v0
.end method
