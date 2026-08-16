.class public Lcom/github/javaparser/ast/expr/SuperExpr;
.super Lcom/github/javaparser/ast/expr/Expression;
.source "SourceFile"


# instance fields
.field private typeName:Lcom/github/javaparser/ast/expr/Name;
    .annotation runtime Lcom/github/javaparser/metamodel/OptionalProperty;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0, v0}, Lcom/github/javaparser/ast/expr/SuperExpr;-><init>(Lcom/github/javaparser/TokenRange;Lcom/github/javaparser/ast/expr/Name;)V

    return-void
.end method

.method public constructor <init>(Lcom/github/javaparser/TokenRange;Lcom/github/javaparser/ast/expr/Name;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "tokenRange",
            "typeName"
        }
    .end annotation

    .line 3
    invoke-direct {p0, p1}, Lcom/github/javaparser/ast/expr/Expression;-><init>(Lcom/github/javaparser/TokenRange;)V

    .line 4
    invoke-virtual {p0, p2}, Lcom/github/javaparser/ast/expr/SuperExpr;->setTypeName(Lcom/github/javaparser/ast/expr/Name;)Lcom/github/javaparser/ast/expr/SuperExpr;

    .line 5
    invoke-virtual {p0}, Lcom/github/javaparser/ast/Node;->customInitialization()V

    return-void
.end method

.method public constructor <init>(Lcom/github/javaparser/ast/expr/Name;)V
    .locals 1
    .annotation runtime Lcom/github/javaparser/ast/AllFieldsConstructor;
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "typeName"
        }
    .end annotation

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, v0, p1}, Lcom/github/javaparser/ast/expr/SuperExpr;-><init>(Lcom/github/javaparser/TokenRange;Lcom/github/javaparser/ast/expr/Name;)V

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
    invoke-interface {p1, p0, p2}, Lcom/github/javaparser/ast/visitor/GenericVisitor;->visit(Lcom/github/javaparser/ast/expr/SuperExpr;Ljava/lang/Object;)Ljava/lang/Object;

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
    invoke-interface {p1, p0, p2}, Lcom/github/javaparser/ast/visitor/VoidVisitor;->visit(Lcom/github/javaparser/ast/expr/SuperExpr;Ljava/lang/Object;)V

    return-void
.end method

.method public asSuperExpr()Lcom/github/javaparser/ast/expr/SuperExpr;
    .locals 0

    return-object p0
.end method

.method public bridge synthetic clone()Lcom/github/javaparser/ast/Node;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/github/javaparser/ast/expr/SuperExpr;->clone()Lcom/github/javaparser/ast/expr/SuperExpr;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/github/javaparser/ast/expr/Expression;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/github/javaparser/ast/expr/SuperExpr;->clone()Lcom/github/javaparser/ast/expr/SuperExpr;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/github/javaparser/ast/expr/SuperExpr;
    .locals 2

    .line 4
    new-instance v0, Lcom/github/javaparser/ast/visitor/CloneVisitor;

    invoke-direct {v0}, Lcom/github/javaparser/ast/visitor/CloneVisitor;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/github/javaparser/ast/expr/SuperExpr;->accept(Lcom/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/github/javaparser/ast/expr/SuperExpr;

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
    invoke-virtual {p0}, Lcom/github/javaparser/ast/expr/SuperExpr;->clone()Lcom/github/javaparser/ast/expr/SuperExpr;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getMetaModel()Lcom/github/javaparser/metamodel/ExpressionMetaModel;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/github/javaparser/ast/expr/SuperExpr;->getMetaModel()Lcom/github/javaparser/metamodel/SuperExprMetaModel;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getMetaModel()Lcom/github/javaparser/metamodel/NodeMetaModel;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/github/javaparser/ast/expr/SuperExpr;->getMetaModel()Lcom/github/javaparser/metamodel/SuperExprMetaModel;

    move-result-object v0

    return-object v0
.end method

.method public getMetaModel()Lcom/github/javaparser/metamodel/SuperExprMetaModel;
    .locals 1

    .line 3
    sget-object v0, Lcom/github/javaparser/metamodel/JavaParserMetaModel;->superExprMetaModel:Lcom/github/javaparser/metamodel/SuperExprMetaModel;

    return-object v0
.end method

.method public getTypeName()Ljava/util/Optional;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "Lcom/github/javaparser/ast/expr/Name;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/github/javaparser/ast/expr/SuperExpr;->typeName:Lcom/github/javaparser/ast/expr/Name;

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    return-object v0
.end method

.method public ifSuperExpr(Ljava/util/function/Consumer;)V
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
            "Lcom/github/javaparser/ast/expr/SuperExpr;",
            ">;)V"
        }
    .end annotation

    invoke-interface {p1, p0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method

.method public isSuperExpr()Z
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
    iget-object v0, p0, Lcom/github/javaparser/ast/expr/SuperExpr;->typeName:Lcom/github/javaparser/ast/expr/Name;

    if-eqz v0, :cond_1

    if-ne p1, v0, :cond_1

    invoke-virtual {p0}, Lcom/github/javaparser/ast/expr/SuperExpr;->removeTypeName()Lcom/github/javaparser/ast/expr/SuperExpr;

    const/4 p1, 0x1

    return p1

    :cond_1
    invoke-super {p0, p1}, Lcom/github/javaparser/ast/Node;->remove(Lcom/github/javaparser/ast/Node;)Z

    move-result p1

    return p1
.end method

.method public removeClassName()Lcom/github/javaparser/ast/expr/SuperExpr;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/github/javaparser/ast/expr/SuperExpr;->setTypeName(Lcom/github/javaparser/ast/expr/Name;)Lcom/github/javaparser/ast/expr/SuperExpr;

    move-result-object v0

    return-object v0
.end method

.method public removeTypeName()Lcom/github/javaparser/ast/expr/SuperExpr;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/github/javaparser/ast/expr/SuperExpr;->setTypeName(Lcom/github/javaparser/ast/expr/Name;)Lcom/github/javaparser/ast/expr/SuperExpr;

    move-result-object v0

    return-object v0
.end method

.method public replace(Lcom/github/javaparser/ast/Node;Lcom/github/javaparser/ast/Node;)Z
    .locals 1
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
    iget-object v0, p0, Lcom/github/javaparser/ast/expr/SuperExpr;->typeName:Lcom/github/javaparser/ast/expr/Name;

    if-eqz v0, :cond_1

    if-ne p1, v0, :cond_1

    check-cast p2, Lcom/github/javaparser/ast/expr/Name;

    invoke-virtual {p0, p2}, Lcom/github/javaparser/ast/expr/SuperExpr;->setTypeName(Lcom/github/javaparser/ast/expr/Name;)Lcom/github/javaparser/ast/expr/SuperExpr;

    const/4 p1, 0x1

    return p1

    :cond_1
    invoke-super {p0, p1, p2}, Lcom/github/javaparser/ast/Node;->replace(Lcom/github/javaparser/ast/Node;Lcom/github/javaparser/ast/Node;)Z

    move-result p1

    return p1
.end method

.method public setTypeName(Lcom/github/javaparser/ast/expr/Name;)Lcom/github/javaparser/ast/expr/SuperExpr;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "typeName"
        }
    .end annotation

    iget-object v0, p0, Lcom/github/javaparser/ast/expr/SuperExpr;->typeName:Lcom/github/javaparser/ast/expr/Name;

    if-ne p1, v0, :cond_0

    return-object p0

    :cond_0
    sget-object v1, Lcom/github/javaparser/ast/observer/ObservableProperty;->TYPE_NAME:Lcom/github/javaparser/ast/observer/ObservableProperty;

    invoke-virtual {p0, v1, v0, p1}, Lcom/github/javaparser/ast/Node;->notifyPropertyChange(Lcom/github/javaparser/ast/observer/ObservableProperty;Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/github/javaparser/ast/expr/SuperExpr;->typeName:Lcom/github/javaparser/ast/expr/Name;

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/github/javaparser/ast/Node;->setParentNode(Lcom/github/javaparser/ast/Node;)Lcom/github/javaparser/ast/Node;

    :cond_1
    iput-object p1, p0, Lcom/github/javaparser/ast/expr/SuperExpr;->typeName:Lcom/github/javaparser/ast/expr/Name;

    invoke-virtual {p0, p1}, Lcom/github/javaparser/ast/Node;->setAsParentNodeOf(Lcom/github/javaparser/ast/Node;)V

    return-object p0
.end method

.method public toSuperExpr()Ljava/util/Optional;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "Lcom/github/javaparser/ast/expr/SuperExpr;",
            ">;"
        }
    .end annotation

    invoke-static {p0}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    return-object v0
.end method
