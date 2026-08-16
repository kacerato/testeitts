.class public Lcom/github/javaparser/ast/expr/FieldAccessExpr;
.super Lcom/github/javaparser/ast/expr/Expression;
.source "SourceFile"

# interfaces
.implements Lcom/github/javaparser/ast/nodeTypes/NodeWithSimpleName;
.implements Lcom/github/javaparser/ast/nodeTypes/NodeWithTypeArguments;
.implements Lcom/github/javaparser/ast/nodeTypes/NodeWithScope;
.implements Lcom/github/javaparser/resolution/Resolvable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/github/javaparser/ast/expr/Expression;",
        "Lcom/github/javaparser/ast/nodeTypes/NodeWithSimpleName<",
        "Lcom/github/javaparser/ast/expr/FieldAccessExpr;",
        ">;",
        "Lcom/github/javaparser/ast/nodeTypes/NodeWithTypeArguments<",
        "Lcom/github/javaparser/ast/expr/FieldAccessExpr;",
        ">;",
        "Lcom/github/javaparser/ast/nodeTypes/NodeWithScope<",
        "Lcom/github/javaparser/ast/expr/FieldAccessExpr;",
        ">;",
        "Lcom/github/javaparser/resolution/Resolvable<",
        "Lcom/github/javaparser/resolution/declarations/ResolvedValueDeclaration;",
        ">;"
    }
.end annotation


# instance fields
.field private name:Lcom/github/javaparser/ast/expr/SimpleName;

.field private scope:Lcom/github/javaparser/ast/expr/Expression;

.field private typeArguments:Lcom/github/javaparser/ast/NodeList;
    .annotation runtime Lcom/github/javaparser/metamodel/OptionalProperty;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/github/javaparser/ast/NodeList<",
            "Lcom/github/javaparser/ast/type/Type;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    new-instance v0, Lcom/github/javaparser/ast/expr/ThisExpr;

    invoke-direct {v0}, Lcom/github/javaparser/ast/expr/ThisExpr;-><init>()V

    new-instance v1, Lcom/github/javaparser/ast/expr/SimpleName;

    invoke-direct {v1}, Lcom/github/javaparser/ast/expr/SimpleName;-><init>()V

    const/4 v2, 0x0

    invoke-direct {p0, v2, v0, v2, v1}, Lcom/github/javaparser/ast/expr/FieldAccessExpr;-><init>(Lcom/github/javaparser/TokenRange;Lcom/github/javaparser/ast/expr/Expression;Lcom/github/javaparser/ast/NodeList;Lcom/github/javaparser/ast/expr/SimpleName;)V

    return-void
.end method

.method public constructor <init>(Lcom/github/javaparser/TokenRange;Lcom/github/javaparser/ast/expr/Expression;Lcom/github/javaparser/ast/NodeList;Lcom/github/javaparser/ast/expr/SimpleName;)V
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
            "scope",
            "typeArguments",
            "name"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/github/javaparser/TokenRange;",
            "Lcom/github/javaparser/ast/expr/Expression;",
            "Lcom/github/javaparser/ast/NodeList<",
            "Lcom/github/javaparser/ast/type/Type;",
            ">;",
            "Lcom/github/javaparser/ast/expr/SimpleName;",
            ")V"
        }
    .end annotation

    .line 4
    invoke-direct {p0, p1}, Lcom/github/javaparser/ast/expr/Expression;-><init>(Lcom/github/javaparser/TokenRange;)V

    .line 5
    invoke-virtual {p0, p2}, Lcom/github/javaparser/ast/expr/FieldAccessExpr;->setScope(Lcom/github/javaparser/ast/expr/Expression;)Lcom/github/javaparser/ast/expr/FieldAccessExpr;

    .line 6
    invoke-virtual {p0, p3}, Lcom/github/javaparser/ast/expr/FieldAccessExpr;->setTypeArguments(Lcom/github/javaparser/ast/NodeList;)Lcom/github/javaparser/ast/expr/FieldAccessExpr;

    .line 7
    invoke-virtual {p0, p4}, Lcom/github/javaparser/ast/expr/FieldAccessExpr;->setName(Lcom/github/javaparser/ast/expr/SimpleName;)Lcom/github/javaparser/ast/expr/FieldAccessExpr;

    .line 8
    invoke-virtual {p0}, Lcom/github/javaparser/ast/Node;->customInitialization()V

    return-void
.end method

.method public constructor <init>(Lcom/github/javaparser/ast/expr/Expression;Lcom/github/javaparser/ast/NodeList;Lcom/github/javaparser/ast/expr/SimpleName;)V
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
            "scope",
            "typeArguments",
            "name"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/github/javaparser/ast/expr/Expression;",
            "Lcom/github/javaparser/ast/NodeList<",
            "Lcom/github/javaparser/ast/type/Type;",
            ">;",
            "Lcom/github/javaparser/ast/expr/SimpleName;",
            ")V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 3
    invoke-direct {p0, v0, p1, p2, p3}, Lcom/github/javaparser/ast/expr/FieldAccessExpr;-><init>(Lcom/github/javaparser/TokenRange;Lcom/github/javaparser/ast/expr/Expression;Lcom/github/javaparser/ast/NodeList;Lcom/github/javaparser/ast/expr/SimpleName;)V

    return-void
.end method

.method public constructor <init>(Lcom/github/javaparser/ast/expr/Expression;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "scope",
            "name"
        }
    .end annotation

    .line 2
    new-instance v0, Lcom/github/javaparser/ast/expr/SimpleName;

    invoke-direct {v0, p2}, Lcom/github/javaparser/ast/expr/SimpleName;-><init>(Ljava/lang/String;)V

    const/4 p2, 0x0

    invoke-direct {p0, p2, p1, p2, v0}, Lcom/github/javaparser/ast/expr/FieldAccessExpr;-><init>(Lcom/github/javaparser/TokenRange;Lcom/github/javaparser/ast/expr/Expression;Lcom/github/javaparser/ast/NodeList;Lcom/github/javaparser/ast/expr/SimpleName;)V

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
    invoke-interface {p1, p0, p2}, Lcom/github/javaparser/ast/visitor/GenericVisitor;->visit(Lcom/github/javaparser/ast/expr/FieldAccessExpr;Ljava/lang/Object;)Ljava/lang/Object;

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
    invoke-interface {p1, p0, p2}, Lcom/github/javaparser/ast/visitor/VoidVisitor;->visit(Lcom/github/javaparser/ast/expr/FieldAccessExpr;Ljava/lang/Object;)V

    return-void
.end method

.method public asFieldAccessExpr()Lcom/github/javaparser/ast/expr/FieldAccessExpr;
    .locals 0

    return-object p0
.end method

.method public bridge synthetic clone()Lcom/github/javaparser/ast/Node;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/github/javaparser/ast/expr/FieldAccessExpr;->clone()Lcom/github/javaparser/ast/expr/FieldAccessExpr;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/github/javaparser/ast/expr/Expression;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/github/javaparser/ast/expr/FieldAccessExpr;->clone()Lcom/github/javaparser/ast/expr/FieldAccessExpr;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/github/javaparser/ast/expr/FieldAccessExpr;
    .locals 2

    .line 4
    new-instance v0, Lcom/github/javaparser/ast/visitor/CloneVisitor;

    invoke-direct {v0}, Lcom/github/javaparser/ast/visitor/CloneVisitor;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/github/javaparser/ast/expr/FieldAccessExpr;->accept(Lcom/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/github/javaparser/ast/expr/FieldAccessExpr;

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
    invoke-virtual {p0}, Lcom/github/javaparser/ast/expr/FieldAccessExpr;->clone()Lcom/github/javaparser/ast/expr/FieldAccessExpr;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getMetaModel()Lcom/github/javaparser/metamodel/ExpressionMetaModel;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/github/javaparser/ast/expr/FieldAccessExpr;->getMetaModel()Lcom/github/javaparser/metamodel/FieldAccessExprMetaModel;

    move-result-object v0

    return-object v0
.end method

.method public getMetaModel()Lcom/github/javaparser/metamodel/FieldAccessExprMetaModel;
    .locals 1

    .line 3
    sget-object v0, Lcom/github/javaparser/metamodel/JavaParserMetaModel;->fieldAccessExprMetaModel:Lcom/github/javaparser/metamodel/FieldAccessExprMetaModel;

    return-object v0
.end method

.method public bridge synthetic getMetaModel()Lcom/github/javaparser/metamodel/NodeMetaModel;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/github/javaparser/ast/expr/FieldAccessExpr;->getMetaModel()Lcom/github/javaparser/metamodel/FieldAccessExprMetaModel;

    move-result-object v0

    return-object v0
.end method

.method public getName()Lcom/github/javaparser/ast/expr/SimpleName;
    .locals 1

    iget-object v0, p0, Lcom/github/javaparser/ast/expr/FieldAccessExpr;->name:Lcom/github/javaparser/ast/expr/SimpleName;

    return-object v0
.end method

.method public getScope()Lcom/github/javaparser/ast/expr/Expression;
    .locals 1

    iget-object v0, p0, Lcom/github/javaparser/ast/expr/FieldAccessExpr;->scope:Lcom/github/javaparser/ast/expr/Expression;

    return-object v0
.end method

.method public getTypeArguments()Ljava/util/Optional;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "Lcom/github/javaparser/ast/NodeList<",
            "Lcom/github/javaparser/ast/type/Type;",
            ">;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/github/javaparser/ast/expr/FieldAccessExpr;->typeArguments:Lcom/github/javaparser/ast/NodeList;

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    return-object v0
.end method

.method public ifFieldAccessExpr(Ljava/util/function/Consumer;)V
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
            "Lcom/github/javaparser/ast/expr/FieldAccessExpr;",
            ">;)V"
        }
    .end annotation

    invoke-interface {p1, p0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method

.method public isFieldAccessExpr()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isInternal()Z
    .locals 1

    invoke-virtual {p0}, Lcom/github/javaparser/ast/Node;->getParentNode()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Optional;->isPresent()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/github/javaparser/ast/Node;->getParentNode()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/github/javaparser/ast/expr/FieldAccessExpr;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isTopLevel()Z
    .locals 1

    invoke-virtual {p0}, Lcom/github/javaparser/ast/expr/FieldAccessExpr;->isInternal()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

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
    iget-object v1, p0, Lcom/github/javaparser/ast/expr/FieldAccessExpr;->typeArguments:Lcom/github/javaparser/ast/NodeList;

    if-eqz v1, :cond_2

    :goto_0
    iget-object v1, p0, Lcom/github/javaparser/ast/expr/FieldAccessExpr;->typeArguments:Lcom/github/javaparser/ast/NodeList;

    invoke-virtual {v1}, Lcom/github/javaparser/ast/NodeList;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    iget-object v1, p0, Lcom/github/javaparser/ast/expr/FieldAccessExpr;->typeArguments:Lcom/github/javaparser/ast/NodeList;

    invoke-virtual {v1, v0}, Lcom/github/javaparser/ast/NodeList;->get(I)Lcom/github/javaparser/ast/Node;

    move-result-object v1

    if-ne v1, p1, :cond_1

    iget-object p1, p0, Lcom/github/javaparser/ast/expr/FieldAccessExpr;->typeArguments:Lcom/github/javaparser/ast/NodeList;

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
    iget-object v1, p0, Lcom/github/javaparser/ast/expr/FieldAccessExpr;->name:Lcom/github/javaparser/ast/expr/SimpleName;

    const/4 v2, 0x1

    if-ne p1, v1, :cond_1

    check-cast p2, Lcom/github/javaparser/ast/expr/SimpleName;

    invoke-virtual {p0, p2}, Lcom/github/javaparser/ast/expr/FieldAccessExpr;->setName(Lcom/github/javaparser/ast/expr/SimpleName;)Lcom/github/javaparser/ast/expr/FieldAccessExpr;

    return v2

    :cond_1
    iget-object v1, p0, Lcom/github/javaparser/ast/expr/FieldAccessExpr;->scope:Lcom/github/javaparser/ast/expr/Expression;

    if-ne p1, v1, :cond_2

    check-cast p2, Lcom/github/javaparser/ast/expr/Expression;

    invoke-virtual {p0, p2}, Lcom/github/javaparser/ast/expr/FieldAccessExpr;->setScope(Lcom/github/javaparser/ast/expr/Expression;)Lcom/github/javaparser/ast/expr/FieldAccessExpr;

    return v2

    :cond_2
    iget-object v1, p0, Lcom/github/javaparser/ast/expr/FieldAccessExpr;->typeArguments:Lcom/github/javaparser/ast/NodeList;

    if-eqz v1, :cond_4

    :goto_0
    iget-object v1, p0, Lcom/github/javaparser/ast/expr/FieldAccessExpr;->typeArguments:Lcom/github/javaparser/ast/NodeList;

    invoke-virtual {v1}, Lcom/github/javaparser/ast/NodeList;->size()I

    move-result v1

    if-ge v0, v1, :cond_4

    iget-object v1, p0, Lcom/github/javaparser/ast/expr/FieldAccessExpr;->typeArguments:Lcom/github/javaparser/ast/NodeList;

    invoke-virtual {v1, v0}, Lcom/github/javaparser/ast/NodeList;->get(I)Lcom/github/javaparser/ast/Node;

    move-result-object v1

    if-ne v1, p1, :cond_3

    iget-object p1, p0, Lcom/github/javaparser/ast/expr/FieldAccessExpr;->typeArguments:Lcom/github/javaparser/ast/NodeList;

    check-cast p2, Lcom/github/javaparser/ast/type/Type;

    invoke-virtual {p1, v0, p2}, Lcom/github/javaparser/ast/NodeList;->set(ILcom/github/javaparser/ast/Node;)Lcom/github/javaparser/ast/Node;

    return v2

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_4
    invoke-super {p0, p1, p2}, Lcom/github/javaparser/ast/Node;->replace(Lcom/github/javaparser/ast/Node;Lcom/github/javaparser/ast/Node;)Z

    move-result p1

    return p1
.end method

.method public resolve()Lcom/github/javaparser/resolution/declarations/ResolvedValueDeclaration;
    .locals 2

    .line 2
    invoke-virtual {p0}, Lcom/github/javaparser/ast/Node;->getSymbolResolver()Lcom/github/javaparser/resolution/SymbolResolver;

    move-result-object v0

    const-class v1, Lcom/github/javaparser/resolution/declarations/ResolvedValueDeclaration;

    invoke-interface {v0, p0, v1}, Lcom/github/javaparser/resolution/SymbolResolver;->resolveDeclaration(Lcom/github/javaparser/ast/Node;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/github/javaparser/resolution/declarations/ResolvedValueDeclaration;

    return-object v0
.end method

.method public bridge synthetic resolve()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/github/javaparser/ast/expr/FieldAccessExpr;->resolve()Lcom/github/javaparser/resolution/declarations/ResolvedValueDeclaration;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic setName(Lcom/github/javaparser/ast/expr/SimpleName;)Lcom/github/javaparser/ast/Node;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            "name"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/github/javaparser/ast/expr/FieldAccessExpr;->setName(Lcom/github/javaparser/ast/expr/SimpleName;)Lcom/github/javaparser/ast/expr/FieldAccessExpr;

    move-result-object p1

    return-object p1
.end method

.method public setName(Lcom/github/javaparser/ast/expr/SimpleName;)Lcom/github/javaparser/ast/expr/FieldAccessExpr;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "name"
        }
    .end annotation

    .line 2
    invoke-static {p1}, Lcom/github/javaparser/utils/Utils;->assertNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    iget-object v0, p0, Lcom/github/javaparser/ast/expr/FieldAccessExpr;->name:Lcom/github/javaparser/ast/expr/SimpleName;

    if-ne p1, v0, :cond_0

    return-object p0

    .line 4
    :cond_0
    sget-object v1, Lcom/github/javaparser/ast/observer/ObservableProperty;->NAME:Lcom/github/javaparser/ast/observer/ObservableProperty;

    invoke-virtual {p0, v1, v0, p1}, Lcom/github/javaparser/ast/Node;->notifyPropertyChange(Lcom/github/javaparser/ast/observer/ObservableProperty;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 5
    iget-object v0, p0, Lcom/github/javaparser/ast/expr/FieldAccessExpr;->name:Lcom/github/javaparser/ast/expr/SimpleName;

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/github/javaparser/ast/Node;->setParentNode(Lcom/github/javaparser/ast/Node;)Lcom/github/javaparser/ast/Node;

    .line 6
    :cond_1
    iput-object p1, p0, Lcom/github/javaparser/ast/expr/FieldAccessExpr;->name:Lcom/github/javaparser/ast/expr/SimpleName;

    .line 7
    invoke-virtual {p0, p1}, Lcom/github/javaparser/ast/Node;->setAsParentNodeOf(Lcom/github/javaparser/ast/Node;)V

    return-object p0
.end method

.method public bridge synthetic setScope(Lcom/github/javaparser/ast/expr/Expression;)Lcom/github/javaparser/ast/Node;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            "scope"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/github/javaparser/ast/expr/FieldAccessExpr;->setScope(Lcom/github/javaparser/ast/expr/Expression;)Lcom/github/javaparser/ast/expr/FieldAccessExpr;

    move-result-object p1

    return-object p1
.end method

.method public setScope(Lcom/github/javaparser/ast/expr/Expression;)Lcom/github/javaparser/ast/expr/FieldAccessExpr;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "scope"
        }
    .end annotation

    .line 2
    invoke-static {p1}, Lcom/github/javaparser/utils/Utils;->assertNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    iget-object v0, p0, Lcom/github/javaparser/ast/expr/FieldAccessExpr;->scope:Lcom/github/javaparser/ast/expr/Expression;

    if-ne p1, v0, :cond_0

    return-object p0

    .line 4
    :cond_0
    sget-object v1, Lcom/github/javaparser/ast/observer/ObservableProperty;->SCOPE:Lcom/github/javaparser/ast/observer/ObservableProperty;

    invoke-virtual {p0, v1, v0, p1}, Lcom/github/javaparser/ast/Node;->notifyPropertyChange(Lcom/github/javaparser/ast/observer/ObservableProperty;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 5
    iget-object v0, p0, Lcom/github/javaparser/ast/expr/FieldAccessExpr;->scope:Lcom/github/javaparser/ast/expr/Expression;

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/github/javaparser/ast/Node;->setParentNode(Lcom/github/javaparser/ast/Node;)Lcom/github/javaparser/ast/Node;

    .line 6
    :cond_1
    iput-object p1, p0, Lcom/github/javaparser/ast/expr/FieldAccessExpr;->scope:Lcom/github/javaparser/ast/expr/Expression;

    .line 7
    invoke-virtual {p0, p1}, Lcom/github/javaparser/ast/Node;->setAsParentNodeOf(Lcom/github/javaparser/ast/Node;)V

    return-object p0
.end method

.method public bridge synthetic setTypeArguments(Lcom/github/javaparser/ast/NodeList;)Lcom/github/javaparser/ast/Node;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            "typeArguments"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/github/javaparser/ast/expr/FieldAccessExpr;->setTypeArguments(Lcom/github/javaparser/ast/NodeList;)Lcom/github/javaparser/ast/expr/FieldAccessExpr;

    move-result-object p1

    return-object p1
.end method

.method public setTypeArguments(Lcom/github/javaparser/ast/NodeList;)Lcom/github/javaparser/ast/expr/FieldAccessExpr;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "typeArguments"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/github/javaparser/ast/NodeList<",
            "Lcom/github/javaparser/ast/type/Type;",
            ">;)",
            "Lcom/github/javaparser/ast/expr/FieldAccessExpr;"
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/github/javaparser/ast/expr/FieldAccessExpr;->typeArguments:Lcom/github/javaparser/ast/NodeList;

    if-ne p1, v0, :cond_0

    return-object p0

    .line 3
    :cond_0
    sget-object v1, Lcom/github/javaparser/ast/observer/ObservableProperty;->TYPE_ARGUMENTS:Lcom/github/javaparser/ast/observer/ObservableProperty;

    invoke-virtual {p0, v1, v0, p1}, Lcom/github/javaparser/ast/Node;->notifyPropertyChange(Lcom/github/javaparser/ast/observer/ObservableProperty;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 4
    iget-object v0, p0, Lcom/github/javaparser/ast/expr/FieldAccessExpr;->typeArguments:Lcom/github/javaparser/ast/NodeList;

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/github/javaparser/ast/NodeList;->setParentNode(Lcom/github/javaparser/ast/Node;)Lcom/github/javaparser/ast/NodeList;

    .line 5
    :cond_1
    iput-object p1, p0, Lcom/github/javaparser/ast/expr/FieldAccessExpr;->typeArguments:Lcom/github/javaparser/ast/NodeList;

    .line 6
    invoke-virtual {p0, p1}, Lcom/github/javaparser/ast/Node;->setAsParentNodeOf(Lcom/github/javaparser/ast/NodeList;)V

    return-object p0
.end method

.method public toFieldAccessExpr()Ljava/util/Optional;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "Lcom/github/javaparser/ast/expr/FieldAccessExpr;",
            ">;"
        }
    .end annotation

    invoke-static {p0}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    return-object v0
.end method
