.class public Lcom/github/javaparser/ast/expr/ArrayCreationExpr;
.super Lcom/github/javaparser/ast/expr/Expression;
.source "SourceFile"


# instance fields
.field private elementType:Lcom/github/javaparser/ast/type/Type;

.field private initializer:Lcom/github/javaparser/ast/expr/ArrayInitializerExpr;
    .annotation runtime Lcom/github/javaparser/metamodel/OptionalProperty;
    .end annotation
.end field

.field private levels:Lcom/github/javaparser/ast/NodeList;
    .annotation runtime Lcom/github/javaparser/metamodel/NonEmptyProperty;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/github/javaparser/ast/NodeList<",
            "Lcom/github/javaparser/ast/ArrayCreationLevel;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 1
    new-instance v0, Lcom/github/javaparser/ast/type/ClassOrInterfaceType;

    invoke-direct {v0}, Lcom/github/javaparser/ast/type/ClassOrInterfaceType;-><init>()V

    new-instance v1, Lcom/github/javaparser/ast/NodeList;

    new-instance v2, Lcom/github/javaparser/ast/ArrayCreationLevel;

    invoke-direct {v2}, Lcom/github/javaparser/ast/ArrayCreationLevel;-><init>()V

    filled-new-array {v2}, [Lcom/github/javaparser/ast/ArrayCreationLevel;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/github/javaparser/ast/NodeList;-><init>([Lcom/github/javaparser/ast/Node;)V

    new-instance v2, Lcom/github/javaparser/ast/expr/ArrayInitializerExpr;

    invoke-direct {v2}, Lcom/github/javaparser/ast/expr/ArrayInitializerExpr;-><init>()V

    const/4 v3, 0x0

    invoke-direct {p0, v3, v0, v1, v2}, Lcom/github/javaparser/ast/expr/ArrayCreationExpr;-><init>(Lcom/github/javaparser/TokenRange;Lcom/github/javaparser/ast/type/Type;Lcom/github/javaparser/ast/NodeList;Lcom/github/javaparser/ast/expr/ArrayInitializerExpr;)V

    return-void
.end method

.method public constructor <init>(Lcom/github/javaparser/TokenRange;Lcom/github/javaparser/ast/type/Type;Lcom/github/javaparser/ast/NodeList;Lcom/github/javaparser/ast/expr/ArrayInitializerExpr;)V
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
            "elementType",
            "levels",
            "initializer"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/github/javaparser/TokenRange;",
            "Lcom/github/javaparser/ast/type/Type;",
            "Lcom/github/javaparser/ast/NodeList<",
            "Lcom/github/javaparser/ast/ArrayCreationLevel;",
            ">;",
            "Lcom/github/javaparser/ast/expr/ArrayInitializerExpr;",
            ")V"
        }
    .end annotation

    .line 4
    invoke-direct {p0, p1}, Lcom/github/javaparser/ast/expr/Expression;-><init>(Lcom/github/javaparser/TokenRange;)V

    .line 5
    invoke-virtual {p0, p2}, Lcom/github/javaparser/ast/expr/ArrayCreationExpr;->setElementType(Lcom/github/javaparser/ast/type/Type;)Lcom/github/javaparser/ast/expr/ArrayCreationExpr;

    .line 6
    invoke-virtual {p0, p3}, Lcom/github/javaparser/ast/expr/ArrayCreationExpr;->setLevels(Lcom/github/javaparser/ast/NodeList;)Lcom/github/javaparser/ast/expr/ArrayCreationExpr;

    .line 7
    invoke-virtual {p0, p4}, Lcom/github/javaparser/ast/expr/ArrayCreationExpr;->setInitializer(Lcom/github/javaparser/ast/expr/ArrayInitializerExpr;)Lcom/github/javaparser/ast/expr/ArrayCreationExpr;

    .line 8
    invoke-virtual {p0}, Lcom/github/javaparser/ast/Node;->customInitialization()V

    return-void
.end method

.method public constructor <init>(Lcom/github/javaparser/ast/type/Type;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "elementType"
        }
    .end annotation

    .line 3
    new-instance v0, Lcom/github/javaparser/ast/NodeList;

    new-instance v1, Lcom/github/javaparser/ast/ArrayCreationLevel;

    invoke-direct {v1}, Lcom/github/javaparser/ast/ArrayCreationLevel;-><init>()V

    filled-new-array {v1}, [Lcom/github/javaparser/ast/ArrayCreationLevel;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/github/javaparser/ast/NodeList;-><init>([Lcom/github/javaparser/ast/Node;)V

    new-instance v1, Lcom/github/javaparser/ast/expr/ArrayInitializerExpr;

    invoke-direct {v1}, Lcom/github/javaparser/ast/expr/ArrayInitializerExpr;-><init>()V

    const/4 v2, 0x0

    invoke-direct {p0, v2, p1, v0, v1}, Lcom/github/javaparser/ast/expr/ArrayCreationExpr;-><init>(Lcom/github/javaparser/TokenRange;Lcom/github/javaparser/ast/type/Type;Lcom/github/javaparser/ast/NodeList;Lcom/github/javaparser/ast/expr/ArrayInitializerExpr;)V

    return-void
.end method

.method public constructor <init>(Lcom/github/javaparser/ast/type/Type;Lcom/github/javaparser/ast/NodeList;Lcom/github/javaparser/ast/expr/ArrayInitializerExpr;)V
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
            "elementType",
            "levels",
            "initializer"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/github/javaparser/ast/type/Type;",
            "Lcom/github/javaparser/ast/NodeList<",
            "Lcom/github/javaparser/ast/ArrayCreationLevel;",
            ">;",
            "Lcom/github/javaparser/ast/expr/ArrayInitializerExpr;",
            ")V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, v0, p1, p2, p3}, Lcom/github/javaparser/ast/expr/ArrayCreationExpr;-><init>(Lcom/github/javaparser/TokenRange;Lcom/github/javaparser/ast/type/Type;Lcom/github/javaparser/ast/NodeList;Lcom/github/javaparser/ast/expr/ArrayInitializerExpr;)V

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
    invoke-interface {p1, p0, p2}, Lcom/github/javaparser/ast/visitor/GenericVisitor;->visit(Lcom/github/javaparser/ast/expr/ArrayCreationExpr;Ljava/lang/Object;)Ljava/lang/Object;

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
    invoke-interface {p1, p0, p2}, Lcom/github/javaparser/ast/visitor/VoidVisitor;->visit(Lcom/github/javaparser/ast/expr/ArrayCreationExpr;Ljava/lang/Object;)V

    return-void
.end method

.method public asArrayCreationExpr()Lcom/github/javaparser/ast/expr/ArrayCreationExpr;
    .locals 0

    return-object p0
.end method

.method public bridge synthetic clone()Lcom/github/javaparser/ast/Node;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/github/javaparser/ast/expr/ArrayCreationExpr;->clone()Lcom/github/javaparser/ast/expr/ArrayCreationExpr;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/github/javaparser/ast/expr/ArrayCreationExpr;
    .locals 2

    .line 4
    new-instance v0, Lcom/github/javaparser/ast/visitor/CloneVisitor;

    invoke-direct {v0}, Lcom/github/javaparser/ast/visitor/CloneVisitor;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/github/javaparser/ast/expr/ArrayCreationExpr;->accept(Lcom/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/github/javaparser/ast/expr/ArrayCreationExpr;

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/github/javaparser/ast/expr/Expression;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/github/javaparser/ast/expr/ArrayCreationExpr;->clone()Lcom/github/javaparser/ast/expr/ArrayCreationExpr;

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
    invoke-virtual {p0}, Lcom/github/javaparser/ast/expr/ArrayCreationExpr;->clone()Lcom/github/javaparser/ast/expr/ArrayCreationExpr;

    move-result-object v0

    return-object v0
.end method

.method public createdType()Lcom/github/javaparser/ast/type/Type;
    .locals 5

    iget-object v0, p0, Lcom/github/javaparser/ast/expr/ArrayCreationExpr;->elementType:Lcom/github/javaparser/ast/type/Type;

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/github/javaparser/ast/expr/ArrayCreationExpr;->levels:Lcom/github/javaparser/ast/NodeList;

    invoke-virtual {v2}, Lcom/github/javaparser/ast/NodeList;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    new-instance v2, Lcom/github/javaparser/ast/type/ArrayType;

    sget-object v3, Lcom/github/javaparser/ast/type/ArrayType$Origin;->TYPE:Lcom/github/javaparser/ast/type/ArrayType$Origin;

    new-instance v4, Lcom/github/javaparser/ast/NodeList;

    invoke-direct {v4}, Lcom/github/javaparser/ast/NodeList;-><init>()V

    invoke-direct {v2, v0, v3, v4}, Lcom/github/javaparser/ast/type/ArrayType;-><init>(Lcom/github/javaparser/ast/type/Type;Lcom/github/javaparser/ast/type/ArrayType$Origin;Lcom/github/javaparser/ast/NodeList;)V

    add-int/lit8 v1, v1, 0x1

    move-object v0, v2

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public getElementType()Lcom/github/javaparser/ast/type/Type;
    .locals 1

    iget-object v0, p0, Lcom/github/javaparser/ast/expr/ArrayCreationExpr;->elementType:Lcom/github/javaparser/ast/type/Type;

    return-object v0
.end method

.method public getInitializer()Ljava/util/Optional;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "Lcom/github/javaparser/ast/expr/ArrayInitializerExpr;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/github/javaparser/ast/expr/ArrayCreationExpr;->initializer:Lcom/github/javaparser/ast/expr/ArrayInitializerExpr;

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    return-object v0
.end method

.method public getLevels()Lcom/github/javaparser/ast/NodeList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/github/javaparser/ast/NodeList<",
            "Lcom/github/javaparser/ast/ArrayCreationLevel;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/github/javaparser/ast/expr/ArrayCreationExpr;->levels:Lcom/github/javaparser/ast/NodeList;

    return-object v0
.end method

.method public getMetaModel()Lcom/github/javaparser/metamodel/ArrayCreationExprMetaModel;
    .locals 1

    .line 3
    sget-object v0, Lcom/github/javaparser/metamodel/JavaParserMetaModel;->arrayCreationExprMetaModel:Lcom/github/javaparser/metamodel/ArrayCreationExprMetaModel;

    return-object v0
.end method

.method public bridge synthetic getMetaModel()Lcom/github/javaparser/metamodel/ExpressionMetaModel;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/github/javaparser/ast/expr/ArrayCreationExpr;->getMetaModel()Lcom/github/javaparser/metamodel/ArrayCreationExprMetaModel;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getMetaModel()Lcom/github/javaparser/metamodel/NodeMetaModel;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/github/javaparser/ast/expr/ArrayCreationExpr;->getMetaModel()Lcom/github/javaparser/metamodel/ArrayCreationExprMetaModel;

    move-result-object v0

    return-object v0
.end method

.method public ifArrayCreationExpr(Ljava/util/function/Consumer;)V
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
            "Lcom/github/javaparser/ast/expr/ArrayCreationExpr;",
            ">;)V"
        }
    .end annotation

    invoke-interface {p1, p0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method

.method public isArrayCreationExpr()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public remove(Lcom/github/javaparser/ast/Node;)Z
    .locals 3
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
    iget-object v1, p0, Lcom/github/javaparser/ast/expr/ArrayCreationExpr;->initializer:Lcom/github/javaparser/ast/expr/ArrayInitializerExpr;

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne p1, v1, :cond_1

    invoke-virtual {p0}, Lcom/github/javaparser/ast/expr/ArrayCreationExpr;->removeInitializer()Lcom/github/javaparser/ast/expr/ArrayCreationExpr;

    return v2

    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/github/javaparser/ast/expr/ArrayCreationExpr;->levels:Lcom/github/javaparser/ast/NodeList;

    invoke-virtual {v1}, Lcom/github/javaparser/ast/NodeList;->size()I

    move-result v1

    if-ge v0, v1, :cond_3

    iget-object v1, p0, Lcom/github/javaparser/ast/expr/ArrayCreationExpr;->levels:Lcom/github/javaparser/ast/NodeList;

    invoke-virtual {v1, v0}, Lcom/github/javaparser/ast/NodeList;->get(I)Lcom/github/javaparser/ast/Node;

    move-result-object v1

    if-ne v1, p1, :cond_2

    iget-object p1, p0, Lcom/github/javaparser/ast/expr/ArrayCreationExpr;->levels:Lcom/github/javaparser/ast/NodeList;

    invoke-virtual {p1, v0}, Lcom/github/javaparser/ast/NodeList;->remove(I)Lcom/github/javaparser/ast/Node;

    return v2

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    invoke-super {p0, p1}, Lcom/github/javaparser/ast/Node;->remove(Lcom/github/javaparser/ast/Node;)Z

    move-result p1

    return p1
.end method

.method public removeInitializer()Lcom/github/javaparser/ast/expr/ArrayCreationExpr;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/github/javaparser/ast/expr/ArrayCreationExpr;->setInitializer(Lcom/github/javaparser/ast/expr/ArrayInitializerExpr;)Lcom/github/javaparser/ast/expr/ArrayCreationExpr;

    move-result-object v0

    return-object v0
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
    iget-object v1, p0, Lcom/github/javaparser/ast/expr/ArrayCreationExpr;->elementType:Lcom/github/javaparser/ast/type/Type;

    const/4 v2, 0x1

    if-ne p1, v1, :cond_1

    check-cast p2, Lcom/github/javaparser/ast/type/Type;

    invoke-virtual {p0, p2}, Lcom/github/javaparser/ast/expr/ArrayCreationExpr;->setElementType(Lcom/github/javaparser/ast/type/Type;)Lcom/github/javaparser/ast/expr/ArrayCreationExpr;

    return v2

    :cond_1
    iget-object v1, p0, Lcom/github/javaparser/ast/expr/ArrayCreationExpr;->initializer:Lcom/github/javaparser/ast/expr/ArrayInitializerExpr;

    if-eqz v1, :cond_2

    if-ne p1, v1, :cond_2

    check-cast p2, Lcom/github/javaparser/ast/expr/ArrayInitializerExpr;

    invoke-virtual {p0, p2}, Lcom/github/javaparser/ast/expr/ArrayCreationExpr;->setInitializer(Lcom/github/javaparser/ast/expr/ArrayInitializerExpr;)Lcom/github/javaparser/ast/expr/ArrayCreationExpr;

    return v2

    :cond_2
    :goto_0
    iget-object v1, p0, Lcom/github/javaparser/ast/expr/ArrayCreationExpr;->levels:Lcom/github/javaparser/ast/NodeList;

    invoke-virtual {v1}, Lcom/github/javaparser/ast/NodeList;->size()I

    move-result v1

    if-ge v0, v1, :cond_4

    iget-object v1, p0, Lcom/github/javaparser/ast/expr/ArrayCreationExpr;->levels:Lcom/github/javaparser/ast/NodeList;

    invoke-virtual {v1, v0}, Lcom/github/javaparser/ast/NodeList;->get(I)Lcom/github/javaparser/ast/Node;

    move-result-object v1

    if-ne v1, p1, :cond_3

    iget-object p1, p0, Lcom/github/javaparser/ast/expr/ArrayCreationExpr;->levels:Lcom/github/javaparser/ast/NodeList;

    check-cast p2, Lcom/github/javaparser/ast/ArrayCreationLevel;

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

.method public setElementType(Lcom/github/javaparser/ast/type/Type;)Lcom/github/javaparser/ast/expr/ArrayCreationExpr;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "elementType"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lcom/github/javaparser/utils/Utils;->assertNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    iget-object v0, p0, Lcom/github/javaparser/ast/expr/ArrayCreationExpr;->elementType:Lcom/github/javaparser/ast/type/Type;

    if-ne p1, v0, :cond_0

    return-object p0

    .line 3
    :cond_0
    sget-object v1, Lcom/github/javaparser/ast/observer/ObservableProperty;->ELEMENT_TYPE:Lcom/github/javaparser/ast/observer/ObservableProperty;

    invoke-virtual {p0, v1, v0, p1}, Lcom/github/javaparser/ast/Node;->notifyPropertyChange(Lcom/github/javaparser/ast/observer/ObservableProperty;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 4
    iget-object v0, p0, Lcom/github/javaparser/ast/expr/ArrayCreationExpr;->elementType:Lcom/github/javaparser/ast/type/Type;

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/github/javaparser/ast/Node;->setParentNode(Lcom/github/javaparser/ast/Node;)Lcom/github/javaparser/ast/Node;

    .line 5
    :cond_1
    iput-object p1, p0, Lcom/github/javaparser/ast/expr/ArrayCreationExpr;->elementType:Lcom/github/javaparser/ast/type/Type;

    .line 6
    invoke-virtual {p0, p1}, Lcom/github/javaparser/ast/Node;->setAsParentNodeOf(Lcom/github/javaparser/ast/Node;)V

    return-object p0
.end method

.method public setElementType(Ljava/lang/Class;)Lcom/github/javaparser/ast/expr/ArrayCreationExpr;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "typeClass"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Lcom/github/javaparser/ast/expr/ArrayCreationExpr;"
        }
    .end annotation

    .line 7
    invoke-virtual {p0, p1}, Lcom/github/javaparser/ast/Node;->tryAddImportToParentCompilationUnit(Ljava/lang/Class;)V

    .line 8
    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/github/javaparser/StaticJavaParser;->parseType(Ljava/lang/String;)Lcom/github/javaparser/ast/type/Type;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/github/javaparser/ast/expr/ArrayCreationExpr;->setElementType(Lcom/github/javaparser/ast/type/Type;)Lcom/github/javaparser/ast/expr/ArrayCreationExpr;

    move-result-object p1

    return-object p1
.end method

.method public setElementType(Ljava/lang/String;)Lcom/github/javaparser/ast/expr/ArrayCreationExpr;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "type"
        }
    .end annotation

    .line 9
    invoke-static {p1}, Lcom/github/javaparser/StaticJavaParser;->parseType(Ljava/lang/String;)Lcom/github/javaparser/ast/type/Type;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/github/javaparser/ast/expr/ArrayCreationExpr;->setElementType(Lcom/github/javaparser/ast/type/Type;)Lcom/github/javaparser/ast/expr/ArrayCreationExpr;

    move-result-object p1

    return-object p1
.end method

.method public setInitializer(Lcom/github/javaparser/ast/expr/ArrayInitializerExpr;)Lcom/github/javaparser/ast/expr/ArrayCreationExpr;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "initializer"
        }
    .end annotation

    iget-object v0, p0, Lcom/github/javaparser/ast/expr/ArrayCreationExpr;->initializer:Lcom/github/javaparser/ast/expr/ArrayInitializerExpr;

    if-ne p1, v0, :cond_0

    return-object p0

    :cond_0
    sget-object v1, Lcom/github/javaparser/ast/observer/ObservableProperty;->INITIALIZER:Lcom/github/javaparser/ast/observer/ObservableProperty;

    invoke-virtual {p0, v1, v0, p1}, Lcom/github/javaparser/ast/Node;->notifyPropertyChange(Lcom/github/javaparser/ast/observer/ObservableProperty;Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/github/javaparser/ast/expr/ArrayCreationExpr;->initializer:Lcom/github/javaparser/ast/expr/ArrayInitializerExpr;

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/github/javaparser/ast/Node;->setParentNode(Lcom/github/javaparser/ast/Node;)Lcom/github/javaparser/ast/Node;

    :cond_1
    iput-object p1, p0, Lcom/github/javaparser/ast/expr/ArrayCreationExpr;->initializer:Lcom/github/javaparser/ast/expr/ArrayInitializerExpr;

    invoke-virtual {p0, p1}, Lcom/github/javaparser/ast/Node;->setAsParentNodeOf(Lcom/github/javaparser/ast/Node;)V

    return-object p0
.end method

.method public setLevels(Lcom/github/javaparser/ast/NodeList;)Lcom/github/javaparser/ast/expr/ArrayCreationExpr;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "levels"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/github/javaparser/ast/NodeList<",
            "Lcom/github/javaparser/ast/ArrayCreationLevel;",
            ">;)",
            "Lcom/github/javaparser/ast/expr/ArrayCreationExpr;"
        }
    .end annotation

    invoke-static {p1}, Lcom/github/javaparser/utils/Utils;->assertNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/github/javaparser/ast/expr/ArrayCreationExpr;->levels:Lcom/github/javaparser/ast/NodeList;

    if-ne p1, v0, :cond_0

    return-object p0

    :cond_0
    sget-object v1, Lcom/github/javaparser/ast/observer/ObservableProperty;->LEVELS:Lcom/github/javaparser/ast/observer/ObservableProperty;

    invoke-virtual {p0, v1, v0, p1}, Lcom/github/javaparser/ast/Node;->notifyPropertyChange(Lcom/github/javaparser/ast/observer/ObservableProperty;Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/github/javaparser/ast/expr/ArrayCreationExpr;->levels:Lcom/github/javaparser/ast/NodeList;

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/github/javaparser/ast/NodeList;->setParentNode(Lcom/github/javaparser/ast/Node;)Lcom/github/javaparser/ast/NodeList;

    :cond_1
    iput-object p1, p0, Lcom/github/javaparser/ast/expr/ArrayCreationExpr;->levels:Lcom/github/javaparser/ast/NodeList;

    invoke-virtual {p0, p1}, Lcom/github/javaparser/ast/Node;->setAsParentNodeOf(Lcom/github/javaparser/ast/NodeList;)V

    return-object p0
.end method

.method public toArrayCreationExpr()Ljava/util/Optional;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "Lcom/github/javaparser/ast/expr/ArrayCreationExpr;",
            ">;"
        }
    .end annotation

    invoke-static {p0}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    return-object v0
.end method
