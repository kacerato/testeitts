.class public Lcom/github/javaparser/ast/expr/ObjectCreationExpr;
.super Lcom/github/javaparser/ast/expr/Expression;
.source "SourceFile"

# interfaces
.implements Lcom/github/javaparser/ast/nodeTypes/NodeWithTypeArguments;
.implements Lcom/github/javaparser/ast/nodeTypes/NodeWithType;
.implements Lcom/github/javaparser/ast/nodeTypes/NodeWithArguments;
.implements Lcom/github/javaparser/ast/nodeTypes/NodeWithOptionalScope;
.implements Lcom/github/javaparser/resolution/Resolvable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/github/javaparser/ast/expr/Expression;",
        "Lcom/github/javaparser/ast/nodeTypes/NodeWithTypeArguments<",
        "Lcom/github/javaparser/ast/expr/ObjectCreationExpr;",
        ">;",
        "Lcom/github/javaparser/ast/nodeTypes/NodeWithType<",
        "Lcom/github/javaparser/ast/expr/ObjectCreationExpr;",
        "Lcom/github/javaparser/ast/type/ClassOrInterfaceType;",
        ">;",
        "Lcom/github/javaparser/ast/nodeTypes/NodeWithArguments<",
        "Lcom/github/javaparser/ast/expr/ObjectCreationExpr;",
        ">;",
        "Lcom/github/javaparser/ast/nodeTypes/NodeWithOptionalScope<",
        "Lcom/github/javaparser/ast/expr/ObjectCreationExpr;",
        ">;",
        "Lcom/github/javaparser/resolution/Resolvable<",
        "Lcom/github/javaparser/resolution/declarations/ResolvedConstructorDeclaration;",
        ">;"
    }
.end annotation


# instance fields
.field private anonymousClassBody:Lcom/github/javaparser/ast/NodeList;
    .annotation runtime Lcom/github/javaparser/metamodel/OptionalProperty;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/github/javaparser/ast/NodeList<",
            "Lcom/github/javaparser/ast/body/BodyDeclaration<",
            "*>;>;"
        }
    .end annotation
.end field

.field private arguments:Lcom/github/javaparser/ast/NodeList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/github/javaparser/ast/NodeList<",
            "Lcom/github/javaparser/ast/expr/Expression;",
            ">;"
        }
    .end annotation
.end field

.field private scope:Lcom/github/javaparser/ast/expr/Expression;
    .annotation runtime Lcom/github/javaparser/metamodel/OptionalProperty;
    .end annotation
.end field

.field private type:Lcom/github/javaparser/ast/type/ClassOrInterfaceType;

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
    .locals 7

    .line 1
    new-instance v3, Lcom/github/javaparser/ast/type/ClassOrInterfaceType;

    invoke-direct {v3}, Lcom/github/javaparser/ast/type/ClassOrInterfaceType;-><init>()V

    new-instance v4, Lcom/github/javaparser/ast/NodeList;

    invoke-direct {v4}, Lcom/github/javaparser/ast/NodeList;-><init>()V

    new-instance v5, Lcom/github/javaparser/ast/NodeList;

    invoke-direct {v5}, Lcom/github/javaparser/ast/NodeList;-><init>()V

    const/4 v6, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/github/javaparser/ast/expr/ObjectCreationExpr;-><init>(Lcom/github/javaparser/TokenRange;Lcom/github/javaparser/ast/expr/Expression;Lcom/github/javaparser/ast/type/ClassOrInterfaceType;Lcom/github/javaparser/ast/NodeList;Lcom/github/javaparser/ast/NodeList;Lcom/github/javaparser/ast/NodeList;)V

    return-void
.end method

.method public constructor <init>(Lcom/github/javaparser/TokenRange;Lcom/github/javaparser/ast/expr/Expression;Lcom/github/javaparser/ast/type/ClassOrInterfaceType;Lcom/github/javaparser/ast/NodeList;Lcom/github/javaparser/ast/NodeList;Lcom/github/javaparser/ast/NodeList;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "tokenRange",
            "scope",
            "type",
            "typeArguments",
            "arguments",
            "anonymousClassBody"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/github/javaparser/TokenRange;",
            "Lcom/github/javaparser/ast/expr/Expression;",
            "Lcom/github/javaparser/ast/type/ClassOrInterfaceType;",
            "Lcom/github/javaparser/ast/NodeList<",
            "Lcom/github/javaparser/ast/type/Type;",
            ">;",
            "Lcom/github/javaparser/ast/NodeList<",
            "Lcom/github/javaparser/ast/expr/Expression;",
            ">;",
            "Lcom/github/javaparser/ast/NodeList<",
            "Lcom/github/javaparser/ast/body/BodyDeclaration<",
            "*>;>;)V"
        }
    .end annotation

    .line 4
    invoke-direct {p0, p1}, Lcom/github/javaparser/ast/expr/Expression;-><init>(Lcom/github/javaparser/TokenRange;)V

    .line 5
    invoke-virtual {p0, p2}, Lcom/github/javaparser/ast/expr/ObjectCreationExpr;->setScope(Lcom/github/javaparser/ast/expr/Expression;)Lcom/github/javaparser/ast/expr/ObjectCreationExpr;

    .line 6
    invoke-virtual {p0, p3}, Lcom/github/javaparser/ast/expr/ObjectCreationExpr;->setType(Lcom/github/javaparser/ast/type/ClassOrInterfaceType;)Lcom/github/javaparser/ast/expr/ObjectCreationExpr;

    .line 7
    invoke-virtual {p0, p4}, Lcom/github/javaparser/ast/expr/ObjectCreationExpr;->setTypeArguments(Lcom/github/javaparser/ast/NodeList;)Lcom/github/javaparser/ast/expr/ObjectCreationExpr;

    .line 8
    invoke-virtual {p0, p5}, Lcom/github/javaparser/ast/expr/ObjectCreationExpr;->setArguments(Lcom/github/javaparser/ast/NodeList;)Lcom/github/javaparser/ast/expr/ObjectCreationExpr;

    .line 9
    invoke-virtual {p0, p6}, Lcom/github/javaparser/ast/expr/ObjectCreationExpr;->setAnonymousClassBody(Lcom/github/javaparser/ast/NodeList;)Lcom/github/javaparser/ast/expr/ObjectCreationExpr;

    .line 10
    invoke-virtual {p0}, Lcom/github/javaparser/ast/Node;->customInitialization()V

    return-void
.end method

.method public constructor <init>(Lcom/github/javaparser/ast/expr/Expression;Lcom/github/javaparser/ast/type/ClassOrInterfaceType;Lcom/github/javaparser/ast/NodeList;)V
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10
        }
        names = {
            "scope",
            "type",
            "arguments"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/github/javaparser/ast/expr/Expression;",
            "Lcom/github/javaparser/ast/type/ClassOrInterfaceType;",
            "Lcom/github/javaparser/ast/NodeList<",
            "Lcom/github/javaparser/ast/expr/Expression;",
            ">;)V"
        }
    .end annotation

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v1, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v5, p3

    .line 2
    invoke-direct/range {v0 .. v6}, Lcom/github/javaparser/ast/expr/ObjectCreationExpr;-><init>(Lcom/github/javaparser/TokenRange;Lcom/github/javaparser/ast/expr/Expression;Lcom/github/javaparser/ast/type/ClassOrInterfaceType;Lcom/github/javaparser/ast/NodeList;Lcom/github/javaparser/ast/NodeList;Lcom/github/javaparser/ast/NodeList;)V

    return-void
.end method

.method public constructor <init>(Lcom/github/javaparser/ast/expr/Expression;Lcom/github/javaparser/ast/type/ClassOrInterfaceType;Lcom/github/javaparser/ast/NodeList;Lcom/github/javaparser/ast/NodeList;Lcom/github/javaparser/ast/NodeList;)V
    .locals 7
    .annotation runtime Lcom/github/javaparser/ast/AllFieldsConstructor;
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x10,
            0x10
        }
        names = {
            "scope",
            "type",
            "typeArguments",
            "arguments",
            "anonymousClassBody"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/github/javaparser/ast/expr/Expression;",
            "Lcom/github/javaparser/ast/type/ClassOrInterfaceType;",
            "Lcom/github/javaparser/ast/NodeList<",
            "Lcom/github/javaparser/ast/type/Type;",
            ">;",
            "Lcom/github/javaparser/ast/NodeList<",
            "Lcom/github/javaparser/ast/expr/Expression;",
            ">;",
            "Lcom/github/javaparser/ast/NodeList<",
            "Lcom/github/javaparser/ast/body/BodyDeclaration<",
            "*>;>;)V"
        }
    .end annotation

    const/4 v1, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    .line 3
    invoke-direct/range {v0 .. v6}, Lcom/github/javaparser/ast/expr/ObjectCreationExpr;-><init>(Lcom/github/javaparser/TokenRange;Lcom/github/javaparser/ast/expr/Expression;Lcom/github/javaparser/ast/type/ClassOrInterfaceType;Lcom/github/javaparser/ast/NodeList;Lcom/github/javaparser/ast/NodeList;Lcom/github/javaparser/ast/NodeList;)V

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
    invoke-interface {p1, p0, p2}, Lcom/github/javaparser/ast/visitor/GenericVisitor;->visit(Lcom/github/javaparser/ast/expr/ObjectCreationExpr;Ljava/lang/Object;)Ljava/lang/Object;

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
    invoke-interface {p1, p0, p2}, Lcom/github/javaparser/ast/visitor/VoidVisitor;->visit(Lcom/github/javaparser/ast/expr/ObjectCreationExpr;Ljava/lang/Object;)V

    return-void
.end method

.method public addAnonymousClassBody(Lcom/github/javaparser/ast/body/BodyDeclaration;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "body"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/github/javaparser/ast/body/BodyDeclaration<",
            "*>;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/github/javaparser/ast/expr/ObjectCreationExpr;->anonymousClassBody:Lcom/github/javaparser/ast/NodeList;

    if-nez v0, :cond_0

    new-instance v0, Lcom/github/javaparser/ast/NodeList;

    invoke-direct {v0}, Lcom/github/javaparser/ast/NodeList;-><init>()V

    iput-object v0, p0, Lcom/github/javaparser/ast/expr/ObjectCreationExpr;->anonymousClassBody:Lcom/github/javaparser/ast/NodeList;

    :cond_0
    iget-object v0, p0, Lcom/github/javaparser/ast/expr/ObjectCreationExpr;->anonymousClassBody:Lcom/github/javaparser/ast/NodeList;

    invoke-virtual {v0, p1}, Lcom/github/javaparser/ast/NodeList;->add(Lcom/github/javaparser/ast/Node;)Z

    return-void
.end method

.method public asObjectCreationExpr()Lcom/github/javaparser/ast/expr/ObjectCreationExpr;
    .locals 0

    return-object p0
.end method

.method public bridge synthetic clone()Lcom/github/javaparser/ast/Node;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/github/javaparser/ast/expr/ObjectCreationExpr;->clone()Lcom/github/javaparser/ast/expr/ObjectCreationExpr;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/github/javaparser/ast/expr/Expression;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/github/javaparser/ast/expr/ObjectCreationExpr;->clone()Lcom/github/javaparser/ast/expr/ObjectCreationExpr;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/github/javaparser/ast/expr/ObjectCreationExpr;
    .locals 2

    .line 4
    new-instance v0, Lcom/github/javaparser/ast/visitor/CloneVisitor;

    invoke-direct {v0}, Lcom/github/javaparser/ast/visitor/CloneVisitor;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/github/javaparser/ast/expr/ObjectCreationExpr;->accept(Lcom/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/github/javaparser/ast/expr/ObjectCreationExpr;

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
    invoke-virtual {p0}, Lcom/github/javaparser/ast/expr/ObjectCreationExpr;->clone()Lcom/github/javaparser/ast/expr/ObjectCreationExpr;

    move-result-object v0

    return-object v0
.end method

.method public getAnonymousClassBody()Ljava/util/Optional;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "Lcom/github/javaparser/ast/NodeList<",
            "Lcom/github/javaparser/ast/body/BodyDeclaration<",
            "*>;>;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/github/javaparser/ast/expr/ObjectCreationExpr;->anonymousClassBody:Lcom/github/javaparser/ast/NodeList;

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    return-object v0
.end method

.method public getArguments()Lcom/github/javaparser/ast/NodeList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/github/javaparser/ast/NodeList<",
            "Lcom/github/javaparser/ast/expr/Expression;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/github/javaparser/ast/expr/ObjectCreationExpr;->arguments:Lcom/github/javaparser/ast/NodeList;

    return-object v0
.end method

.method public bridge synthetic getMetaModel()Lcom/github/javaparser/metamodel/ExpressionMetaModel;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/github/javaparser/ast/expr/ObjectCreationExpr;->getMetaModel()Lcom/github/javaparser/metamodel/ObjectCreationExprMetaModel;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getMetaModel()Lcom/github/javaparser/metamodel/NodeMetaModel;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/github/javaparser/ast/expr/ObjectCreationExpr;->getMetaModel()Lcom/github/javaparser/metamodel/ObjectCreationExprMetaModel;

    move-result-object v0

    return-object v0
.end method

.method public getMetaModel()Lcom/github/javaparser/metamodel/ObjectCreationExprMetaModel;
    .locals 1

    .line 3
    sget-object v0, Lcom/github/javaparser/metamodel/JavaParserMetaModel;->objectCreationExprMetaModel:Lcom/github/javaparser/metamodel/ObjectCreationExprMetaModel;

    return-object v0
.end method

.method public getScope()Ljava/util/Optional;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "Lcom/github/javaparser/ast/expr/Expression;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/github/javaparser/ast/expr/ObjectCreationExpr;->scope:Lcom/github/javaparser/ast/expr/Expression;

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    return-object v0
.end method

.method public getType()Lcom/github/javaparser/ast/type/ClassOrInterfaceType;
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/github/javaparser/ast/expr/ObjectCreationExpr;->type:Lcom/github/javaparser/ast/type/ClassOrInterfaceType;

    return-object v0
.end method

.method public bridge synthetic getType()Lcom/github/javaparser/ast/type/Type;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/github/javaparser/ast/expr/ObjectCreationExpr;->getType()Lcom/github/javaparser/ast/type/ClassOrInterfaceType;

    move-result-object v0

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

    iget-object v0, p0, Lcom/github/javaparser/ast/expr/ObjectCreationExpr;->typeArguments:Lcom/github/javaparser/ast/NodeList;

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    return-object v0
.end method

.method public ifObjectCreationExpr(Ljava/util/function/Consumer;)V
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
            "Lcom/github/javaparser/ast/expr/ObjectCreationExpr;",
            ">;)V"
        }
    .end annotation

    invoke-interface {p1, p0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method

.method public isObjectCreationExpr()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isPolyExpression()Z
    .locals 1

    invoke-interface {p0}, Lcom/github/javaparser/ast/nodeTypes/NodeWithTypeArguments;->isUsingDiamondOperator()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/github/javaparser/ast/expr/Expression;->appearsInInvocationContext()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/github/javaparser/ast/expr/Expression;->appearsInAssignmentContext()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public remove(Lcom/github/javaparser/ast/Node;)Z
    .locals 4
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
    iget-object v1, p0, Lcom/github/javaparser/ast/expr/ObjectCreationExpr;->anonymousClassBody:Lcom/github/javaparser/ast/NodeList;

    const/4 v2, 0x1

    if-eqz v1, :cond_2

    move v1, v0

    :goto_0
    iget-object v3, p0, Lcom/github/javaparser/ast/expr/ObjectCreationExpr;->anonymousClassBody:Lcom/github/javaparser/ast/NodeList;

    invoke-virtual {v3}, Lcom/github/javaparser/ast/NodeList;->size()I

    move-result v3

    if-ge v1, v3, :cond_2

    iget-object v3, p0, Lcom/github/javaparser/ast/expr/ObjectCreationExpr;->anonymousClassBody:Lcom/github/javaparser/ast/NodeList;

    invoke-virtual {v3, v1}, Lcom/github/javaparser/ast/NodeList;->get(I)Lcom/github/javaparser/ast/Node;

    move-result-object v3

    if-ne v3, p1, :cond_1

    iget-object p1, p0, Lcom/github/javaparser/ast/expr/ObjectCreationExpr;->anonymousClassBody:Lcom/github/javaparser/ast/NodeList;

    invoke-virtual {p1, v1}, Lcom/github/javaparser/ast/NodeList;->remove(I)Lcom/github/javaparser/ast/Node;

    return v2

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    move v1, v0

    :goto_1
    iget-object v3, p0, Lcom/github/javaparser/ast/expr/ObjectCreationExpr;->arguments:Lcom/github/javaparser/ast/NodeList;

    invoke-virtual {v3}, Lcom/github/javaparser/ast/NodeList;->size()I

    move-result v3

    if-ge v1, v3, :cond_4

    iget-object v3, p0, Lcom/github/javaparser/ast/expr/ObjectCreationExpr;->arguments:Lcom/github/javaparser/ast/NodeList;

    invoke-virtual {v3, v1}, Lcom/github/javaparser/ast/NodeList;->get(I)Lcom/github/javaparser/ast/Node;

    move-result-object v3

    if-ne v3, p1, :cond_3

    iget-object p1, p0, Lcom/github/javaparser/ast/expr/ObjectCreationExpr;->arguments:Lcom/github/javaparser/ast/NodeList;

    invoke-virtual {p1, v1}, Lcom/github/javaparser/ast/NodeList;->remove(I)Lcom/github/javaparser/ast/Node;

    return v2

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_4
    iget-object v1, p0, Lcom/github/javaparser/ast/expr/ObjectCreationExpr;->scope:Lcom/github/javaparser/ast/expr/Expression;

    if-eqz v1, :cond_5

    if-ne p1, v1, :cond_5

    invoke-virtual {p0}, Lcom/github/javaparser/ast/expr/ObjectCreationExpr;->removeScope()Lcom/github/javaparser/ast/expr/ObjectCreationExpr;

    return v2

    :cond_5
    iget-object v1, p0, Lcom/github/javaparser/ast/expr/ObjectCreationExpr;->typeArguments:Lcom/github/javaparser/ast/NodeList;

    if-eqz v1, :cond_7

    :goto_2
    iget-object v1, p0, Lcom/github/javaparser/ast/expr/ObjectCreationExpr;->typeArguments:Lcom/github/javaparser/ast/NodeList;

    invoke-virtual {v1}, Lcom/github/javaparser/ast/NodeList;->size()I

    move-result v1

    if-ge v0, v1, :cond_7

    iget-object v1, p0, Lcom/github/javaparser/ast/expr/ObjectCreationExpr;->typeArguments:Lcom/github/javaparser/ast/NodeList;

    invoke-virtual {v1, v0}, Lcom/github/javaparser/ast/NodeList;->get(I)Lcom/github/javaparser/ast/Node;

    move-result-object v1

    if-ne v1, p1, :cond_6

    iget-object p1, p0, Lcom/github/javaparser/ast/expr/ObjectCreationExpr;->typeArguments:Lcom/github/javaparser/ast/NodeList;

    invoke-virtual {p1, v0}, Lcom/github/javaparser/ast/NodeList;->remove(I)Lcom/github/javaparser/ast/Node;

    return v2

    :cond_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_7
    invoke-super {p0, p1}, Lcom/github/javaparser/ast/Node;->remove(Lcom/github/javaparser/ast/Node;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic removeScope()Lcom/github/javaparser/ast/Node;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/github/javaparser/ast/expr/ObjectCreationExpr;->removeScope()Lcom/github/javaparser/ast/expr/ObjectCreationExpr;

    move-result-object v0

    return-object v0
.end method

.method public removeScope()Lcom/github/javaparser/ast/expr/ObjectCreationExpr;
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0}, Lcom/github/javaparser/ast/expr/ObjectCreationExpr;->setScope(Lcom/github/javaparser/ast/expr/Expression;)Lcom/github/javaparser/ast/expr/ObjectCreationExpr;

    move-result-object v0

    return-object v0
.end method

.method public replace(Lcom/github/javaparser/ast/Node;Lcom/github/javaparser/ast/Node;)Z
    .locals 4
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
    iget-object v1, p0, Lcom/github/javaparser/ast/expr/ObjectCreationExpr;->anonymousClassBody:Lcom/github/javaparser/ast/NodeList;

    const/4 v2, 0x1

    if-eqz v1, :cond_2

    move v1, v0

    :goto_0
    iget-object v3, p0, Lcom/github/javaparser/ast/expr/ObjectCreationExpr;->anonymousClassBody:Lcom/github/javaparser/ast/NodeList;

    invoke-virtual {v3}, Lcom/github/javaparser/ast/NodeList;->size()I

    move-result v3

    if-ge v1, v3, :cond_2

    iget-object v3, p0, Lcom/github/javaparser/ast/expr/ObjectCreationExpr;->anonymousClassBody:Lcom/github/javaparser/ast/NodeList;

    invoke-virtual {v3, v1}, Lcom/github/javaparser/ast/NodeList;->get(I)Lcom/github/javaparser/ast/Node;

    move-result-object v3

    if-ne v3, p1, :cond_1

    iget-object p1, p0, Lcom/github/javaparser/ast/expr/ObjectCreationExpr;->anonymousClassBody:Lcom/github/javaparser/ast/NodeList;

    check-cast p2, Lcom/github/javaparser/ast/body/BodyDeclaration;

    invoke-virtual {p1, v1, p2}, Lcom/github/javaparser/ast/NodeList;->set(ILcom/github/javaparser/ast/Node;)Lcom/github/javaparser/ast/Node;

    return v2

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    move v1, v0

    :goto_1
    iget-object v3, p0, Lcom/github/javaparser/ast/expr/ObjectCreationExpr;->arguments:Lcom/github/javaparser/ast/NodeList;

    invoke-virtual {v3}, Lcom/github/javaparser/ast/NodeList;->size()I

    move-result v3

    if-ge v1, v3, :cond_4

    iget-object v3, p0, Lcom/github/javaparser/ast/expr/ObjectCreationExpr;->arguments:Lcom/github/javaparser/ast/NodeList;

    invoke-virtual {v3, v1}, Lcom/github/javaparser/ast/NodeList;->get(I)Lcom/github/javaparser/ast/Node;

    move-result-object v3

    if-ne v3, p1, :cond_3

    iget-object p1, p0, Lcom/github/javaparser/ast/expr/ObjectCreationExpr;->arguments:Lcom/github/javaparser/ast/NodeList;

    check-cast p2, Lcom/github/javaparser/ast/expr/Expression;

    invoke-virtual {p1, v1, p2}, Lcom/github/javaparser/ast/NodeList;->set(ILcom/github/javaparser/ast/Node;)Lcom/github/javaparser/ast/Node;

    return v2

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_4
    iget-object v1, p0, Lcom/github/javaparser/ast/expr/ObjectCreationExpr;->scope:Lcom/github/javaparser/ast/expr/Expression;

    if-eqz v1, :cond_5

    if-ne p1, v1, :cond_5

    check-cast p2, Lcom/github/javaparser/ast/expr/Expression;

    invoke-virtual {p0, p2}, Lcom/github/javaparser/ast/expr/ObjectCreationExpr;->setScope(Lcom/github/javaparser/ast/expr/Expression;)Lcom/github/javaparser/ast/expr/ObjectCreationExpr;

    return v2

    :cond_5
    iget-object v1, p0, Lcom/github/javaparser/ast/expr/ObjectCreationExpr;->type:Lcom/github/javaparser/ast/type/ClassOrInterfaceType;

    if-ne p1, v1, :cond_6

    check-cast p2, Lcom/github/javaparser/ast/type/ClassOrInterfaceType;

    invoke-virtual {p0, p2}, Lcom/github/javaparser/ast/expr/ObjectCreationExpr;->setType(Lcom/github/javaparser/ast/type/ClassOrInterfaceType;)Lcom/github/javaparser/ast/expr/ObjectCreationExpr;

    return v2

    :cond_6
    iget-object v1, p0, Lcom/github/javaparser/ast/expr/ObjectCreationExpr;->typeArguments:Lcom/github/javaparser/ast/NodeList;

    if-eqz v1, :cond_8

    :goto_2
    iget-object v1, p0, Lcom/github/javaparser/ast/expr/ObjectCreationExpr;->typeArguments:Lcom/github/javaparser/ast/NodeList;

    invoke-virtual {v1}, Lcom/github/javaparser/ast/NodeList;->size()I

    move-result v1

    if-ge v0, v1, :cond_8

    iget-object v1, p0, Lcom/github/javaparser/ast/expr/ObjectCreationExpr;->typeArguments:Lcom/github/javaparser/ast/NodeList;

    invoke-virtual {v1, v0}, Lcom/github/javaparser/ast/NodeList;->get(I)Lcom/github/javaparser/ast/Node;

    move-result-object v1

    if-ne v1, p1, :cond_7

    iget-object p1, p0, Lcom/github/javaparser/ast/expr/ObjectCreationExpr;->typeArguments:Lcom/github/javaparser/ast/NodeList;

    check-cast p2, Lcom/github/javaparser/ast/type/Type;

    invoke-virtual {p1, v0, p2}, Lcom/github/javaparser/ast/NodeList;->set(ILcom/github/javaparser/ast/Node;)Lcom/github/javaparser/ast/Node;

    return v2

    :cond_7
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_8
    invoke-super {p0, p1, p2}, Lcom/github/javaparser/ast/Node;->replace(Lcom/github/javaparser/ast/Node;Lcom/github/javaparser/ast/Node;)Z

    move-result p1

    return p1
.end method

.method public resolve()Lcom/github/javaparser/resolution/declarations/ResolvedConstructorDeclaration;
    .locals 2

    .line 2
    invoke-virtual {p0}, Lcom/github/javaparser/ast/Node;->getSymbolResolver()Lcom/github/javaparser/resolution/SymbolResolver;

    move-result-object v0

    const-class v1, Lcom/github/javaparser/resolution/declarations/ResolvedConstructorDeclaration;

    invoke-interface {v0, p0, v1}, Lcom/github/javaparser/resolution/SymbolResolver;->resolveDeclaration(Lcom/github/javaparser/ast/Node;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/github/javaparser/resolution/declarations/ResolvedConstructorDeclaration;

    return-object v0
.end method

.method public bridge synthetic resolve()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/github/javaparser/ast/expr/ObjectCreationExpr;->resolve()Lcom/github/javaparser/resolution/declarations/ResolvedConstructorDeclaration;

    move-result-object v0

    return-object v0
.end method

.method public setAnonymousClassBody(Lcom/github/javaparser/ast/NodeList;)Lcom/github/javaparser/ast/expr/ObjectCreationExpr;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "anonymousClassBody"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/github/javaparser/ast/NodeList<",
            "Lcom/github/javaparser/ast/body/BodyDeclaration<",
            "*>;>;)",
            "Lcom/github/javaparser/ast/expr/ObjectCreationExpr;"
        }
    .end annotation

    iget-object v0, p0, Lcom/github/javaparser/ast/expr/ObjectCreationExpr;->anonymousClassBody:Lcom/github/javaparser/ast/NodeList;

    if-ne p1, v0, :cond_0

    return-object p0

    :cond_0
    sget-object v1, Lcom/github/javaparser/ast/observer/ObservableProperty;->ANONYMOUS_CLASS_BODY:Lcom/github/javaparser/ast/observer/ObservableProperty;

    invoke-virtual {p0, v1, v0, p1}, Lcom/github/javaparser/ast/Node;->notifyPropertyChange(Lcom/github/javaparser/ast/observer/ObservableProperty;Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/github/javaparser/ast/expr/ObjectCreationExpr;->anonymousClassBody:Lcom/github/javaparser/ast/NodeList;

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/github/javaparser/ast/NodeList;->setParentNode(Lcom/github/javaparser/ast/Node;)Lcom/github/javaparser/ast/NodeList;

    :cond_1
    iput-object p1, p0, Lcom/github/javaparser/ast/expr/ObjectCreationExpr;->anonymousClassBody:Lcom/github/javaparser/ast/NodeList;

    invoke-virtual {p0, p1}, Lcom/github/javaparser/ast/Node;->setAsParentNodeOf(Lcom/github/javaparser/ast/NodeList;)V

    return-object p0
.end method

.method public bridge synthetic setArguments(Lcom/github/javaparser/ast/NodeList;)Lcom/github/javaparser/ast/Node;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            "arguments"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/github/javaparser/ast/expr/ObjectCreationExpr;->setArguments(Lcom/github/javaparser/ast/NodeList;)Lcom/github/javaparser/ast/expr/ObjectCreationExpr;

    move-result-object p1

    return-object p1
.end method

.method public setArguments(Lcom/github/javaparser/ast/NodeList;)Lcom/github/javaparser/ast/expr/ObjectCreationExpr;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "arguments"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/github/javaparser/ast/NodeList<",
            "Lcom/github/javaparser/ast/expr/Expression;",
            ">;)",
            "Lcom/github/javaparser/ast/expr/ObjectCreationExpr;"
        }
    .end annotation

    .line 2
    invoke-static {p1}, Lcom/github/javaparser/utils/Utils;->assertNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    iget-object v0, p0, Lcom/github/javaparser/ast/expr/ObjectCreationExpr;->arguments:Lcom/github/javaparser/ast/NodeList;

    if-ne p1, v0, :cond_0

    return-object p0

    .line 4
    :cond_0
    sget-object v1, Lcom/github/javaparser/ast/observer/ObservableProperty;->ARGUMENTS:Lcom/github/javaparser/ast/observer/ObservableProperty;

    invoke-virtual {p0, v1, v0, p1}, Lcom/github/javaparser/ast/Node;->notifyPropertyChange(Lcom/github/javaparser/ast/observer/ObservableProperty;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 5
    iget-object v0, p0, Lcom/github/javaparser/ast/expr/ObjectCreationExpr;->arguments:Lcom/github/javaparser/ast/NodeList;

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/github/javaparser/ast/NodeList;->setParentNode(Lcom/github/javaparser/ast/Node;)Lcom/github/javaparser/ast/NodeList;

    .line 6
    :cond_1
    iput-object p1, p0, Lcom/github/javaparser/ast/expr/ObjectCreationExpr;->arguments:Lcom/github/javaparser/ast/NodeList;

    .line 7
    invoke-virtual {p0, p1}, Lcom/github/javaparser/ast/Node;->setAsParentNodeOf(Lcom/github/javaparser/ast/NodeList;)V

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
    invoke-virtual {p0, p1}, Lcom/github/javaparser/ast/expr/ObjectCreationExpr;->setScope(Lcom/github/javaparser/ast/expr/Expression;)Lcom/github/javaparser/ast/expr/ObjectCreationExpr;

    move-result-object p1

    return-object p1
.end method

.method public setScope(Lcom/github/javaparser/ast/expr/Expression;)Lcom/github/javaparser/ast/expr/ObjectCreationExpr;
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
    iget-object v0, p0, Lcom/github/javaparser/ast/expr/ObjectCreationExpr;->scope:Lcom/github/javaparser/ast/expr/Expression;

    if-ne p1, v0, :cond_0

    return-object p0

    .line 3
    :cond_0
    sget-object v1, Lcom/github/javaparser/ast/observer/ObservableProperty;->SCOPE:Lcom/github/javaparser/ast/observer/ObservableProperty;

    invoke-virtual {p0, v1, v0, p1}, Lcom/github/javaparser/ast/Node;->notifyPropertyChange(Lcom/github/javaparser/ast/observer/ObservableProperty;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 4
    iget-object v0, p0, Lcom/github/javaparser/ast/expr/ObjectCreationExpr;->scope:Lcom/github/javaparser/ast/expr/Expression;

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/github/javaparser/ast/Node;->setParentNode(Lcom/github/javaparser/ast/Node;)Lcom/github/javaparser/ast/Node;

    .line 5
    :cond_1
    iput-object p1, p0, Lcom/github/javaparser/ast/expr/ObjectCreationExpr;->scope:Lcom/github/javaparser/ast/expr/Expression;

    .line 6
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
    check-cast p1, Lcom/github/javaparser/ast/type/ClassOrInterfaceType;

    invoke-virtual {p0, p1}, Lcom/github/javaparser/ast/expr/ObjectCreationExpr;->setType(Lcom/github/javaparser/ast/type/ClassOrInterfaceType;)Lcom/github/javaparser/ast/expr/ObjectCreationExpr;

    move-result-object p1

    return-object p1
.end method

.method public setType(Lcom/github/javaparser/ast/type/ClassOrInterfaceType;)Lcom/github/javaparser/ast/expr/ObjectCreationExpr;
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
    iget-object v0, p0, Lcom/github/javaparser/ast/expr/ObjectCreationExpr;->type:Lcom/github/javaparser/ast/type/ClassOrInterfaceType;

    if-ne p1, v0, :cond_0

    return-object p0

    .line 4
    :cond_0
    sget-object v1, Lcom/github/javaparser/ast/observer/ObservableProperty;->TYPE:Lcom/github/javaparser/ast/observer/ObservableProperty;

    invoke-virtual {p0, v1, v0, p1}, Lcom/github/javaparser/ast/Node;->notifyPropertyChange(Lcom/github/javaparser/ast/observer/ObservableProperty;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 5
    iget-object v0, p0, Lcom/github/javaparser/ast/expr/ObjectCreationExpr;->type:Lcom/github/javaparser/ast/type/ClassOrInterfaceType;

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/github/javaparser/ast/Node;->setParentNode(Lcom/github/javaparser/ast/Node;)Lcom/github/javaparser/ast/Node;

    .line 6
    :cond_1
    iput-object p1, p0, Lcom/github/javaparser/ast/expr/ObjectCreationExpr;->type:Lcom/github/javaparser/ast/type/ClassOrInterfaceType;

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
    invoke-virtual {p0, p1}, Lcom/github/javaparser/ast/expr/ObjectCreationExpr;->setTypeArguments(Lcom/github/javaparser/ast/NodeList;)Lcom/github/javaparser/ast/expr/ObjectCreationExpr;

    move-result-object p1

    return-object p1
.end method

.method public setTypeArguments(Lcom/github/javaparser/ast/NodeList;)Lcom/github/javaparser/ast/expr/ObjectCreationExpr;
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
            "Lcom/github/javaparser/ast/expr/ObjectCreationExpr;"
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/github/javaparser/ast/expr/ObjectCreationExpr;->typeArguments:Lcom/github/javaparser/ast/NodeList;

    if-ne p1, v0, :cond_0

    return-object p0

    .line 3
    :cond_0
    sget-object v1, Lcom/github/javaparser/ast/observer/ObservableProperty;->TYPE_ARGUMENTS:Lcom/github/javaparser/ast/observer/ObservableProperty;

    invoke-virtual {p0, v1, v0, p1}, Lcom/github/javaparser/ast/Node;->notifyPropertyChange(Lcom/github/javaparser/ast/observer/ObservableProperty;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 4
    iget-object v0, p0, Lcom/github/javaparser/ast/expr/ObjectCreationExpr;->typeArguments:Lcom/github/javaparser/ast/NodeList;

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/github/javaparser/ast/NodeList;->setParentNode(Lcom/github/javaparser/ast/Node;)Lcom/github/javaparser/ast/NodeList;

    .line 5
    :cond_1
    iput-object p1, p0, Lcom/github/javaparser/ast/expr/ObjectCreationExpr;->typeArguments:Lcom/github/javaparser/ast/NodeList;

    .line 6
    invoke-virtual {p0, p1}, Lcom/github/javaparser/ast/Node;->setAsParentNodeOf(Lcom/github/javaparser/ast/NodeList;)V

    return-object p0
.end method

.method public toObjectCreationExpr()Ljava/util/Optional;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "Lcom/github/javaparser/ast/expr/ObjectCreationExpr;",
            ">;"
        }
    .end annotation

    invoke-static {p0}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    return-object v0
.end method
