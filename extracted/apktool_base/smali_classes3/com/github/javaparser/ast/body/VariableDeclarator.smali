.class public Lcom/github/javaparser/ast/body/VariableDeclarator;
.super Lcom/github/javaparser/ast/Node;
.source "SourceFile"

# interfaces
.implements Lcom/github/javaparser/ast/nodeTypes/NodeWithType;
.implements Lcom/github/javaparser/ast/nodeTypes/NodeWithSimpleName;
.implements Lcom/github/javaparser/resolution/Resolvable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/github/javaparser/ast/Node;",
        "Lcom/github/javaparser/ast/nodeTypes/NodeWithType<",
        "Lcom/github/javaparser/ast/body/VariableDeclarator;",
        "Lcom/github/javaparser/ast/type/Type;",
        ">;",
        "Lcom/github/javaparser/ast/nodeTypes/NodeWithSimpleName<",
        "Lcom/github/javaparser/ast/body/VariableDeclarator;",
        ">;",
        "Lcom/github/javaparser/resolution/Resolvable<",
        "Lcom/github/javaparser/resolution/declarations/ResolvedValueDeclaration;",
        ">;"
    }
.end annotation


# instance fields
.field private initializer:Lcom/github/javaparser/ast/expr/Expression;
    .annotation runtime Lcom/github/javaparser/metamodel/NonEmptyProperty;
    .end annotation

    .annotation runtime Lcom/github/javaparser/metamodel/OptionalProperty;
    .end annotation
.end field

.field private name:Lcom/github/javaparser/ast/expr/SimpleName;

.field private type:Lcom/github/javaparser/ast/type/Type;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    new-instance v0, Lcom/github/javaparser/ast/type/ClassOrInterfaceType;

    invoke-direct {v0}, Lcom/github/javaparser/ast/type/ClassOrInterfaceType;-><init>()V

    new-instance v1, Lcom/github/javaparser/ast/expr/SimpleName;

    invoke-direct {v1}, Lcom/github/javaparser/ast/expr/SimpleName;-><init>()V

    const/4 v2, 0x0

    invoke-direct {p0, v2, v0, v1, v2}, Lcom/github/javaparser/ast/body/VariableDeclarator;-><init>(Lcom/github/javaparser/TokenRange;Lcom/github/javaparser/ast/type/Type;Lcom/github/javaparser/ast/expr/SimpleName;Lcom/github/javaparser/ast/expr/Expression;)V

    return-void
.end method

.method public constructor <init>(Lcom/github/javaparser/TokenRange;Lcom/github/javaparser/ast/type/Type;Lcom/github/javaparser/ast/expr/SimpleName;Lcom/github/javaparser/ast/expr/Expression;)V
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
            "type",
            "name",
            "initializer"
        }
    .end annotation

    .line 6
    invoke-direct {p0, p1}, Lcom/github/javaparser/ast/Node;-><init>(Lcom/github/javaparser/TokenRange;)V

    .line 7
    invoke-virtual {p0, p2}, Lcom/github/javaparser/ast/body/VariableDeclarator;->setType(Lcom/github/javaparser/ast/type/Type;)Lcom/github/javaparser/ast/body/VariableDeclarator;

    .line 8
    invoke-virtual {p0, p3}, Lcom/github/javaparser/ast/body/VariableDeclarator;->setName(Lcom/github/javaparser/ast/expr/SimpleName;)Lcom/github/javaparser/ast/body/VariableDeclarator;

    .line 9
    invoke-virtual {p0, p4}, Lcom/github/javaparser/ast/body/VariableDeclarator;->setInitializer(Lcom/github/javaparser/ast/expr/Expression;)Lcom/github/javaparser/ast/body/VariableDeclarator;

    .line 10
    invoke-virtual {p0}, Lcom/github/javaparser/ast/body/VariableDeclarator;->customInitialization()V

    return-void
.end method

.method public constructor <init>(Lcom/github/javaparser/ast/type/Type;Lcom/github/javaparser/ast/expr/SimpleName;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "type",
            "name"
        }
    .end annotation

    const/4 v0, 0x0

    .line 3
    invoke-direct {p0, v0, p1, p2, v0}, Lcom/github/javaparser/ast/body/VariableDeclarator;-><init>(Lcom/github/javaparser/TokenRange;Lcom/github/javaparser/ast/type/Type;Lcom/github/javaparser/ast/expr/SimpleName;Lcom/github/javaparser/ast/expr/Expression;)V

    return-void
.end method

.method public constructor <init>(Lcom/github/javaparser/ast/type/Type;Lcom/github/javaparser/ast/expr/SimpleName;Lcom/github/javaparser/ast/expr/Expression;)V
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
            "type",
            "name",
            "initializer"
        }
    .end annotation

    const/4 v0, 0x0

    .line 5
    invoke-direct {p0, v0, p1, p2, p3}, Lcom/github/javaparser/ast/body/VariableDeclarator;-><init>(Lcom/github/javaparser/TokenRange;Lcom/github/javaparser/ast/type/Type;Lcom/github/javaparser/ast/expr/SimpleName;Lcom/github/javaparser/ast/expr/Expression;)V

    return-void
.end method

.method public constructor <init>(Lcom/github/javaparser/ast/type/Type;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "type",
            "variableName"
        }
    .end annotation

    .line 2
    new-instance v0, Lcom/github/javaparser/ast/expr/SimpleName;

    invoke-direct {v0, p2}, Lcom/github/javaparser/ast/expr/SimpleName;-><init>(Ljava/lang/String;)V

    const/4 p2, 0x0

    invoke-direct {p0, p2, p1, v0, p2}, Lcom/github/javaparser/ast/body/VariableDeclarator;-><init>(Lcom/github/javaparser/TokenRange;Lcom/github/javaparser/ast/type/Type;Lcom/github/javaparser/ast/expr/SimpleName;Lcom/github/javaparser/ast/expr/Expression;)V

    return-void
.end method

.method public constructor <init>(Lcom/github/javaparser/ast/type/Type;Ljava/lang/String;Lcom/github/javaparser/ast/expr/Expression;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "type",
            "variableName",
            "initializer"
        }
    .end annotation

    .line 4
    new-instance v0, Lcom/github/javaparser/ast/expr/SimpleName;

    invoke-direct {v0, p2}, Lcom/github/javaparser/ast/expr/SimpleName;-><init>(Ljava/lang/String;)V

    const/4 p2, 0x0

    invoke-direct {p0, p2, p1, v0, p3}, Lcom/github/javaparser/ast/body/VariableDeclarator;-><init>(Lcom/github/javaparser/TokenRange;Lcom/github/javaparser/ast/type/Type;Lcom/github/javaparser/ast/expr/SimpleName;Lcom/github/javaparser/ast/expr/Expression;)V

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
    invoke-interface {p1, p0, p2}, Lcom/github/javaparser/ast/visitor/GenericVisitor;->visit(Lcom/github/javaparser/ast/body/VariableDeclarator;Ljava/lang/Object;)Ljava/lang/Object;

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
    invoke-interface {p1, p0, p2}, Lcom/github/javaparser/ast/visitor/VoidVisitor;->visit(Lcom/github/javaparser/ast/body/VariableDeclarator;Ljava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic clone()Lcom/github/javaparser/ast/Node;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/github/javaparser/ast/body/VariableDeclarator;->clone()Lcom/github/javaparser/ast/body/VariableDeclarator;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/github/javaparser/ast/body/VariableDeclarator;
    .locals 2

    .line 3
    new-instance v0, Lcom/github/javaparser/ast/visitor/CloneVisitor;

    invoke-direct {v0}, Lcom/github/javaparser/ast/visitor/CloneVisitor;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/github/javaparser/ast/body/VariableDeclarator;->accept(Lcom/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/github/javaparser/ast/body/VariableDeclarator;

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 2
    invoke-virtual {p0}, Lcom/github/javaparser/ast/body/VariableDeclarator;->clone()Lcom/github/javaparser/ast/body/VariableDeclarator;

    move-result-object v0

    return-object v0
.end method

.method public customInitialization()V
    .locals 1

    new-instance v0, Lcom/github/javaparser/ast/body/VariableDeclarator$1;

    invoke-direct {v0, p0}, Lcom/github/javaparser/ast/body/VariableDeclarator$1;-><init>(Lcom/github/javaparser/ast/body/VariableDeclarator;)V

    invoke-virtual {p0, v0}, Lcom/github/javaparser/ast/Node;->register(Lcom/github/javaparser/ast/observer/AstObserver;)V

    return-void
.end method

.method public getInitializer()Ljava/util/Optional;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "Lcom/github/javaparser/ast/expr/Expression;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/github/javaparser/ast/body/VariableDeclarator;->initializer:Lcom/github/javaparser/ast/expr/Expression;

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getMetaModel()Lcom/github/javaparser/metamodel/NodeMetaModel;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/github/javaparser/ast/body/VariableDeclarator;->getMetaModel()Lcom/github/javaparser/metamodel/VariableDeclaratorMetaModel;

    move-result-object v0

    return-object v0
.end method

.method public getMetaModel()Lcom/github/javaparser/metamodel/VariableDeclaratorMetaModel;
    .locals 1

    .line 2
    sget-object v0, Lcom/github/javaparser/metamodel/JavaParserMetaModel;->variableDeclaratorMetaModel:Lcom/github/javaparser/metamodel/VariableDeclaratorMetaModel;

    return-object v0
.end method

.method public getName()Lcom/github/javaparser/ast/expr/SimpleName;
    .locals 1

    iget-object v0, p0, Lcom/github/javaparser/ast/body/VariableDeclarator;->name:Lcom/github/javaparser/ast/expr/SimpleName;

    return-object v0
.end method

.method public getType()Lcom/github/javaparser/ast/type/Type;
    .locals 1

    iget-object v0, p0, Lcom/github/javaparser/ast/body/VariableDeclarator;->type:Lcom/github/javaparser/ast/type/Type;

    return-object v0
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
    iget-object v0, p0, Lcom/github/javaparser/ast/body/VariableDeclarator;->initializer:Lcom/github/javaparser/ast/expr/Expression;

    if-eqz v0, :cond_1

    if-ne p1, v0, :cond_1

    invoke-virtual {p0}, Lcom/github/javaparser/ast/body/VariableDeclarator;->removeInitializer()Lcom/github/javaparser/ast/body/VariableDeclarator;

    const/4 p1, 0x1

    return p1

    :cond_1
    invoke-super {p0, p1}, Lcom/github/javaparser/ast/Node;->remove(Lcom/github/javaparser/ast/Node;)Z

    move-result p1

    return p1
.end method

.method public removeInitializer()Lcom/github/javaparser/ast/body/VariableDeclarator;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/github/javaparser/ast/body/VariableDeclarator;->setInitializer(Lcom/github/javaparser/ast/expr/Expression;)Lcom/github/javaparser/ast/body/VariableDeclarator;

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
    iget-object v0, p0, Lcom/github/javaparser/ast/body/VariableDeclarator;->initializer:Lcom/github/javaparser/ast/expr/Expression;

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    if-ne p1, v0, :cond_1

    check-cast p2, Lcom/github/javaparser/ast/expr/Expression;

    invoke-virtual {p0, p2}, Lcom/github/javaparser/ast/body/VariableDeclarator;->setInitializer(Lcom/github/javaparser/ast/expr/Expression;)Lcom/github/javaparser/ast/body/VariableDeclarator;

    return v1

    :cond_1
    iget-object v0, p0, Lcom/github/javaparser/ast/body/VariableDeclarator;->name:Lcom/github/javaparser/ast/expr/SimpleName;

    if-ne p1, v0, :cond_2

    check-cast p2, Lcom/github/javaparser/ast/expr/SimpleName;

    invoke-virtual {p0, p2}, Lcom/github/javaparser/ast/body/VariableDeclarator;->setName(Lcom/github/javaparser/ast/expr/SimpleName;)Lcom/github/javaparser/ast/body/VariableDeclarator;

    return v1

    :cond_2
    iget-object v0, p0, Lcom/github/javaparser/ast/body/VariableDeclarator;->type:Lcom/github/javaparser/ast/type/Type;

    if-ne p1, v0, :cond_3

    check-cast p2, Lcom/github/javaparser/ast/type/Type;

    invoke-virtual {p0, p2}, Lcom/github/javaparser/ast/body/VariableDeclarator;->setType(Lcom/github/javaparser/ast/type/Type;)Lcom/github/javaparser/ast/body/VariableDeclarator;

    return v1

    :cond_3
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
    invoke-virtual {p0}, Lcom/github/javaparser/ast/body/VariableDeclarator;->resolve()Lcom/github/javaparser/resolution/declarations/ResolvedValueDeclaration;

    move-result-object v0

    return-object v0
.end method

.method public setInitializer(Lcom/github/javaparser/ast/expr/Expression;)Lcom/github/javaparser/ast/body/VariableDeclarator;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "initializer"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/github/javaparser/ast/body/VariableDeclarator;->initializer:Lcom/github/javaparser/ast/expr/Expression;

    if-ne p1, v0, :cond_0

    return-object p0

    .line 2
    :cond_0
    sget-object v1, Lcom/github/javaparser/ast/observer/ObservableProperty;->INITIALIZER:Lcom/github/javaparser/ast/observer/ObservableProperty;

    invoke-virtual {p0, v1, v0, p1}, Lcom/github/javaparser/ast/Node;->notifyPropertyChange(Lcom/github/javaparser/ast/observer/ObservableProperty;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 3
    iget-object v0, p0, Lcom/github/javaparser/ast/body/VariableDeclarator;->initializer:Lcom/github/javaparser/ast/expr/Expression;

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/github/javaparser/ast/Node;->setParentNode(Lcom/github/javaparser/ast/Node;)Lcom/github/javaparser/ast/Node;

    .line 4
    :cond_1
    iput-object p1, p0, Lcom/github/javaparser/ast/body/VariableDeclarator;->initializer:Lcom/github/javaparser/ast/expr/Expression;

    .line 5
    invoke-virtual {p0, p1}, Lcom/github/javaparser/ast/Node;->setAsParentNodeOf(Lcom/github/javaparser/ast/Node;)V

    return-object p0
.end method

.method public setInitializer(Ljava/lang/String;)Lcom/github/javaparser/ast/body/VariableDeclarator;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "init"
        }
    .end annotation

    .line 6
    new-instance v0, Lcom/github/javaparser/ast/expr/NameExpr;

    invoke-static {p1}, Lcom/github/javaparser/utils/Utils;->assertNonEmpty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/github/javaparser/ast/expr/NameExpr;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/github/javaparser/ast/body/VariableDeclarator;->setInitializer(Lcom/github/javaparser/ast/expr/Expression;)Lcom/github/javaparser/ast/body/VariableDeclarator;

    move-result-object p1

    return-object p1
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
    invoke-virtual {p0, p1}, Lcom/github/javaparser/ast/body/VariableDeclarator;->setName(Lcom/github/javaparser/ast/expr/SimpleName;)Lcom/github/javaparser/ast/body/VariableDeclarator;

    move-result-object p1

    return-object p1
.end method

.method public setName(Lcom/github/javaparser/ast/expr/SimpleName;)Lcom/github/javaparser/ast/body/VariableDeclarator;
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
    iget-object v0, p0, Lcom/github/javaparser/ast/body/VariableDeclarator;->name:Lcom/github/javaparser/ast/expr/SimpleName;

    if-ne p1, v0, :cond_0

    return-object p0

    .line 4
    :cond_0
    sget-object v1, Lcom/github/javaparser/ast/observer/ObservableProperty;->NAME:Lcom/github/javaparser/ast/observer/ObservableProperty;

    invoke-virtual {p0, v1, v0, p1}, Lcom/github/javaparser/ast/Node;->notifyPropertyChange(Lcom/github/javaparser/ast/observer/ObservableProperty;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 5
    iget-object v0, p0, Lcom/github/javaparser/ast/body/VariableDeclarator;->name:Lcom/github/javaparser/ast/expr/SimpleName;

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/github/javaparser/ast/Node;->setParentNode(Lcom/github/javaparser/ast/Node;)Lcom/github/javaparser/ast/Node;

    .line 6
    :cond_1
    iput-object p1, p0, Lcom/github/javaparser/ast/body/VariableDeclarator;->name:Lcom/github/javaparser/ast/expr/SimpleName;

    .line 7
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
    invoke-virtual {p0, p1}, Lcom/github/javaparser/ast/body/VariableDeclarator;->setType(Lcom/github/javaparser/ast/type/Type;)Lcom/github/javaparser/ast/body/VariableDeclarator;

    move-result-object p1

    return-object p1
.end method

.method public setType(Lcom/github/javaparser/ast/type/Type;)Lcom/github/javaparser/ast/body/VariableDeclarator;
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
    iget-object v0, p0, Lcom/github/javaparser/ast/body/VariableDeclarator;->type:Lcom/github/javaparser/ast/type/Type;

    if-ne p1, v0, :cond_0

    return-object p0

    .line 4
    :cond_0
    sget-object v1, Lcom/github/javaparser/ast/observer/ObservableProperty;->TYPE:Lcom/github/javaparser/ast/observer/ObservableProperty;

    invoke-virtual {p0, v1, v0, p1}, Lcom/github/javaparser/ast/Node;->notifyPropertyChange(Lcom/github/javaparser/ast/observer/ObservableProperty;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 5
    iget-object v0, p0, Lcom/github/javaparser/ast/body/VariableDeclarator;->type:Lcom/github/javaparser/ast/type/Type;

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/github/javaparser/ast/Node;->setParentNode(Lcom/github/javaparser/ast/Node;)Lcom/github/javaparser/ast/Node;

    .line 6
    :cond_1
    iput-object p1, p0, Lcom/github/javaparser/ast/body/VariableDeclarator;->type:Lcom/github/javaparser/ast/type/Type;

    .line 7
    invoke-virtual {p0, p1}, Lcom/github/javaparser/ast/Node;->setAsParentNodeOf(Lcom/github/javaparser/ast/Node;)V

    return-object p0
.end method
