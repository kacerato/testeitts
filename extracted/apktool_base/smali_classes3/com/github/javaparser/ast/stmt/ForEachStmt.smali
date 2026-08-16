.class public Lcom/github/javaparser/ast/stmt/ForEachStmt;
.super Lcom/github/javaparser/ast/stmt/Statement;
.source "SourceFile"

# interfaces
.implements Lcom/github/javaparser/ast/nodeTypes/NodeWithBody;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/github/javaparser/ast/stmt/Statement;",
        "Lcom/github/javaparser/ast/nodeTypes/NodeWithBody<",
        "Lcom/github/javaparser/ast/stmt/ForEachStmt;",
        ">;"
    }
.end annotation


# instance fields
.field private body:Lcom/github/javaparser/ast/stmt/Statement;

.field private iterable:Lcom/github/javaparser/ast/expr/Expression;

.field private variable:Lcom/github/javaparser/ast/expr/VariableDeclarationExpr;


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 1
    new-instance v0, Lcom/github/javaparser/ast/expr/VariableDeclarationExpr;

    invoke-direct {v0}, Lcom/github/javaparser/ast/expr/VariableDeclarationExpr;-><init>()V

    new-instance v1, Lcom/github/javaparser/ast/expr/NameExpr;

    invoke-direct {v1}, Lcom/github/javaparser/ast/expr/NameExpr;-><init>()V

    new-instance v2, Lcom/github/javaparser/ast/stmt/ReturnStmt;

    invoke-direct {v2}, Lcom/github/javaparser/ast/stmt/ReturnStmt;-><init>()V

    const/4 v3, 0x0

    invoke-direct {p0, v3, v0, v1, v2}, Lcom/github/javaparser/ast/stmt/ForEachStmt;-><init>(Lcom/github/javaparser/TokenRange;Lcom/github/javaparser/ast/expr/VariableDeclarationExpr;Lcom/github/javaparser/ast/expr/Expression;Lcom/github/javaparser/ast/stmt/Statement;)V

    return-void
.end method

.method public constructor <init>(Lcom/github/javaparser/TokenRange;Lcom/github/javaparser/ast/expr/VariableDeclarationExpr;Lcom/github/javaparser/ast/expr/Expression;Lcom/github/javaparser/ast/stmt/Statement;)V
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
            "variable",
            "iterable",
            "body"
        }
    .end annotation

    .line 3
    invoke-direct {p0, p1}, Lcom/github/javaparser/ast/stmt/Statement;-><init>(Lcom/github/javaparser/TokenRange;)V

    .line 4
    invoke-virtual {p0, p2}, Lcom/github/javaparser/ast/stmt/ForEachStmt;->setVariable(Lcom/github/javaparser/ast/expr/VariableDeclarationExpr;)Lcom/github/javaparser/ast/stmt/ForEachStmt;

    .line 5
    invoke-virtual {p0, p3}, Lcom/github/javaparser/ast/stmt/ForEachStmt;->setIterable(Lcom/github/javaparser/ast/expr/Expression;)Lcom/github/javaparser/ast/stmt/ForEachStmt;

    .line 6
    invoke-virtual {p0, p4}, Lcom/github/javaparser/ast/stmt/ForEachStmt;->setBody(Lcom/github/javaparser/ast/stmt/Statement;)Lcom/github/javaparser/ast/stmt/ForEachStmt;

    .line 7
    invoke-virtual {p0}, Lcom/github/javaparser/ast/Node;->customInitialization()V

    return-void
.end method

.method public constructor <init>(Lcom/github/javaparser/ast/expr/VariableDeclarationExpr;Lcom/github/javaparser/ast/expr/Expression;Lcom/github/javaparser/ast/stmt/Statement;)V
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
            "variable",
            "iterable",
            "body"
        }
    .end annotation

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, v0, p1, p2, p3}, Lcom/github/javaparser/ast/stmt/ForEachStmt;-><init>(Lcom/github/javaparser/TokenRange;Lcom/github/javaparser/ast/expr/VariableDeclarationExpr;Lcom/github/javaparser/ast/expr/Expression;Lcom/github/javaparser/ast/stmt/Statement;)V

    return-void
.end method

.method public constructor <init>(Lcom/github/javaparser/ast/expr/VariableDeclarationExpr;Ljava/lang/String;Lcom/github/javaparser/ast/stmt/BlockStmt;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "variable",
            "iterable",
            "body"
        }
    .end annotation

    .line 8
    new-instance v0, Lcom/github/javaparser/ast/expr/NameExpr;

    invoke-direct {v0, p2}, Lcom/github/javaparser/ast/expr/NameExpr;-><init>(Ljava/lang/String;)V

    const/4 p2, 0x0

    invoke-direct {p0, p2, p1, v0, p3}, Lcom/github/javaparser/ast/stmt/ForEachStmt;-><init>(Lcom/github/javaparser/TokenRange;Lcom/github/javaparser/ast/expr/VariableDeclarationExpr;Lcom/github/javaparser/ast/expr/Expression;Lcom/github/javaparser/ast/stmt/Statement;)V

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
    invoke-interface {p1, p0, p2}, Lcom/github/javaparser/ast/visitor/GenericVisitor;->visit(Lcom/github/javaparser/ast/stmt/ForEachStmt;Ljava/lang/Object;)Ljava/lang/Object;

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
    invoke-interface {p1, p0, p2}, Lcom/github/javaparser/ast/visitor/VoidVisitor;->visit(Lcom/github/javaparser/ast/stmt/ForEachStmt;Ljava/lang/Object;)V

    return-void
.end method

.method public asForEachStmt()Lcom/github/javaparser/ast/stmt/ForEachStmt;
    .locals 0

    return-object p0
.end method

.method public bridge synthetic clone()Lcom/github/javaparser/ast/Node;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/github/javaparser/ast/stmt/ForEachStmt;->clone()Lcom/github/javaparser/ast/stmt/ForEachStmt;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/github/javaparser/ast/stmt/ForEachStmt;
    .locals 2

    .line 4
    new-instance v0, Lcom/github/javaparser/ast/visitor/CloneVisitor;

    invoke-direct {v0}, Lcom/github/javaparser/ast/visitor/CloneVisitor;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/github/javaparser/ast/stmt/ForEachStmt;->accept(Lcom/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/github/javaparser/ast/stmt/ForEachStmt;

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/github/javaparser/ast/stmt/Statement;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/github/javaparser/ast/stmt/ForEachStmt;->clone()Lcom/github/javaparser/ast/stmt/ForEachStmt;

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
    invoke-virtual {p0}, Lcom/github/javaparser/ast/stmt/ForEachStmt;->clone()Lcom/github/javaparser/ast/stmt/ForEachStmt;

    move-result-object v0

    return-object v0
.end method

.method public getBody()Lcom/github/javaparser/ast/stmt/Statement;
    .locals 1

    iget-object v0, p0, Lcom/github/javaparser/ast/stmt/ForEachStmt;->body:Lcom/github/javaparser/ast/stmt/Statement;

    return-object v0
.end method

.method public getIterable()Lcom/github/javaparser/ast/expr/Expression;
    .locals 1

    iget-object v0, p0, Lcom/github/javaparser/ast/stmt/ForEachStmt;->iterable:Lcom/github/javaparser/ast/expr/Expression;

    return-object v0
.end method

.method public getMetaModel()Lcom/github/javaparser/metamodel/ForEachStmtMetaModel;
    .locals 1

    .line 3
    sget-object v0, Lcom/github/javaparser/metamodel/JavaParserMetaModel;->forEachStmtMetaModel:Lcom/github/javaparser/metamodel/ForEachStmtMetaModel;

    return-object v0
.end method

.method public bridge synthetic getMetaModel()Lcom/github/javaparser/metamodel/NodeMetaModel;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/github/javaparser/ast/stmt/ForEachStmt;->getMetaModel()Lcom/github/javaparser/metamodel/ForEachStmtMetaModel;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getMetaModel()Lcom/github/javaparser/metamodel/StatementMetaModel;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/github/javaparser/ast/stmt/ForEachStmt;->getMetaModel()Lcom/github/javaparser/metamodel/ForEachStmtMetaModel;

    move-result-object v0

    return-object v0
.end method

.method public getVariable()Lcom/github/javaparser/ast/expr/VariableDeclarationExpr;
    .locals 1

    iget-object v0, p0, Lcom/github/javaparser/ast/stmt/ForEachStmt;->variable:Lcom/github/javaparser/ast/expr/VariableDeclarationExpr;

    return-object v0
.end method

.method public getVariableDeclarator()Lcom/github/javaparser/ast/body/VariableDeclarator;
    .locals 2

    invoke-virtual {p0}, Lcom/github/javaparser/ast/stmt/ForEachStmt;->getVariable()Lcom/github/javaparser/ast/expr/VariableDeclarationExpr;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/github/javaparser/ast/nodeTypes/NodeWithVariables;->getVariable(I)Lcom/github/javaparser/ast/body/VariableDeclarator;

    move-result-object v0

    return-object v0
.end method

.method public hasFinalVariable()Z
    .locals 3

    invoke-virtual {p0}, Lcom/github/javaparser/ast/stmt/ForEachStmt;->getVariable()Lcom/github/javaparser/ast/expr/VariableDeclarationExpr;

    move-result-object v0

    invoke-virtual {v0}, Lcom/github/javaparser/ast/expr/VariableDeclarationExpr;->getModifiers()Lcom/github/javaparser/ast/NodeList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/github/javaparser/ast/NodeList;->isNonEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/github/javaparser/ast/stmt/ForEachStmt;->getVariable()Lcom/github/javaparser/ast/expr/VariableDeclarationExpr;

    move-result-object v0

    invoke-virtual {v0}, Lcom/github/javaparser/ast/expr/VariableDeclarationExpr;->getModifiers()Lcom/github/javaparser/ast/NodeList;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/github/javaparser/ast/NodeList;->get(I)Lcom/github/javaparser/ast/Node;

    move-result-object v0

    check-cast v0, Lcom/github/javaparser/ast/Modifier;

    invoke-virtual {v0}, Lcom/github/javaparser/ast/Modifier;->getKeyword()Lcom/github/javaparser/ast/Modifier$Keyword;

    move-result-object v0

    sget-object v2, Lcom/github/javaparser/ast/Modifier$Keyword;->FINAL:Lcom/github/javaparser/ast/Modifier$Keyword;

    if-ne v0, v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public ifForEachStmt(Ljava/util/function/Consumer;)V
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
            "Lcom/github/javaparser/ast/stmt/ForEachStmt;",
            ">;)V"
        }
    .end annotation

    invoke-interface {p1, p0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method

.method public isForEachStmt()Z
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
    iget-object v0, p0, Lcom/github/javaparser/ast/stmt/ForEachStmt;->body:Lcom/github/javaparser/ast/stmt/Statement;

    const/4 v1, 0x1

    if-ne p1, v0, :cond_1

    check-cast p2, Lcom/github/javaparser/ast/stmt/Statement;

    invoke-virtual {p0, p2}, Lcom/github/javaparser/ast/stmt/ForEachStmt;->setBody(Lcom/github/javaparser/ast/stmt/Statement;)Lcom/github/javaparser/ast/stmt/ForEachStmt;

    return v1

    :cond_1
    iget-object v0, p0, Lcom/github/javaparser/ast/stmt/ForEachStmt;->iterable:Lcom/github/javaparser/ast/expr/Expression;

    if-ne p1, v0, :cond_2

    check-cast p2, Lcom/github/javaparser/ast/expr/Expression;

    invoke-virtual {p0, p2}, Lcom/github/javaparser/ast/stmt/ForEachStmt;->setIterable(Lcom/github/javaparser/ast/expr/Expression;)Lcom/github/javaparser/ast/stmt/ForEachStmt;

    return v1

    :cond_2
    iget-object v0, p0, Lcom/github/javaparser/ast/stmt/ForEachStmt;->variable:Lcom/github/javaparser/ast/expr/VariableDeclarationExpr;

    if-ne p1, v0, :cond_3

    check-cast p2, Lcom/github/javaparser/ast/expr/VariableDeclarationExpr;

    invoke-virtual {p0, p2}, Lcom/github/javaparser/ast/stmt/ForEachStmt;->setVariable(Lcom/github/javaparser/ast/expr/VariableDeclarationExpr;)Lcom/github/javaparser/ast/stmt/ForEachStmt;

    return v1

    :cond_3
    invoke-super {p0, p1, p2}, Lcom/github/javaparser/ast/Node;->replace(Lcom/github/javaparser/ast/Node;Lcom/github/javaparser/ast/Node;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic setBody(Lcom/github/javaparser/ast/stmt/Statement;)Lcom/github/javaparser/ast/Node;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            "body"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/github/javaparser/ast/stmt/ForEachStmt;->setBody(Lcom/github/javaparser/ast/stmt/Statement;)Lcom/github/javaparser/ast/stmt/ForEachStmt;

    move-result-object p1

    return-object p1
.end method

.method public setBody(Lcom/github/javaparser/ast/stmt/Statement;)Lcom/github/javaparser/ast/stmt/ForEachStmt;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "body"
        }
    .end annotation

    .line 2
    invoke-static {p1}, Lcom/github/javaparser/utils/Utils;->assertNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    iget-object v0, p0, Lcom/github/javaparser/ast/stmt/ForEachStmt;->body:Lcom/github/javaparser/ast/stmt/Statement;

    if-ne p1, v0, :cond_0

    return-object p0

    .line 4
    :cond_0
    sget-object v1, Lcom/github/javaparser/ast/observer/ObservableProperty;->BODY:Lcom/github/javaparser/ast/observer/ObservableProperty;

    invoke-virtual {p0, v1, v0, p1}, Lcom/github/javaparser/ast/Node;->notifyPropertyChange(Lcom/github/javaparser/ast/observer/ObservableProperty;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 5
    iget-object v0, p0, Lcom/github/javaparser/ast/stmt/ForEachStmt;->body:Lcom/github/javaparser/ast/stmt/Statement;

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/github/javaparser/ast/Node;->setParentNode(Lcom/github/javaparser/ast/Node;)Lcom/github/javaparser/ast/Node;

    .line 6
    :cond_1
    iput-object p1, p0, Lcom/github/javaparser/ast/stmt/ForEachStmt;->body:Lcom/github/javaparser/ast/stmt/Statement;

    .line 7
    invoke-virtual {p0, p1}, Lcom/github/javaparser/ast/Node;->setAsParentNodeOf(Lcom/github/javaparser/ast/Node;)V

    return-object p0
.end method

.method public setIterable(Lcom/github/javaparser/ast/expr/Expression;)Lcom/github/javaparser/ast/stmt/ForEachStmt;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "iterable"
        }
    .end annotation

    invoke-static {p1}, Lcom/github/javaparser/utils/Utils;->assertNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/github/javaparser/ast/stmt/ForEachStmt;->iterable:Lcom/github/javaparser/ast/expr/Expression;

    if-ne p1, v0, :cond_0

    return-object p0

    :cond_0
    sget-object v1, Lcom/github/javaparser/ast/observer/ObservableProperty;->ITERABLE:Lcom/github/javaparser/ast/observer/ObservableProperty;

    invoke-virtual {p0, v1, v0, p1}, Lcom/github/javaparser/ast/Node;->notifyPropertyChange(Lcom/github/javaparser/ast/observer/ObservableProperty;Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/github/javaparser/ast/stmt/ForEachStmt;->iterable:Lcom/github/javaparser/ast/expr/Expression;

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/github/javaparser/ast/Node;->setParentNode(Lcom/github/javaparser/ast/Node;)Lcom/github/javaparser/ast/Node;

    :cond_1
    iput-object p1, p0, Lcom/github/javaparser/ast/stmt/ForEachStmt;->iterable:Lcom/github/javaparser/ast/expr/Expression;

    invoke-virtual {p0, p1}, Lcom/github/javaparser/ast/Node;->setAsParentNodeOf(Lcom/github/javaparser/ast/Node;)V

    return-object p0
.end method

.method public setVariable(Lcom/github/javaparser/ast/expr/VariableDeclarationExpr;)Lcom/github/javaparser/ast/stmt/ForEachStmt;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "variable"
        }
    .end annotation

    invoke-static {p1}, Lcom/github/javaparser/utils/Utils;->assertNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/github/javaparser/ast/stmt/ForEachStmt;->variable:Lcom/github/javaparser/ast/expr/VariableDeclarationExpr;

    if-ne p1, v0, :cond_0

    return-object p0

    :cond_0
    sget-object v1, Lcom/github/javaparser/ast/observer/ObservableProperty;->VARIABLE:Lcom/github/javaparser/ast/observer/ObservableProperty;

    invoke-virtual {p0, v1, v0, p1}, Lcom/github/javaparser/ast/Node;->notifyPropertyChange(Lcom/github/javaparser/ast/observer/ObservableProperty;Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/github/javaparser/ast/stmt/ForEachStmt;->variable:Lcom/github/javaparser/ast/expr/VariableDeclarationExpr;

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/github/javaparser/ast/Node;->setParentNode(Lcom/github/javaparser/ast/Node;)Lcom/github/javaparser/ast/Node;

    :cond_1
    iput-object p1, p0, Lcom/github/javaparser/ast/stmt/ForEachStmt;->variable:Lcom/github/javaparser/ast/expr/VariableDeclarationExpr;

    invoke-virtual {p0, p1}, Lcom/github/javaparser/ast/Node;->setAsParentNodeOf(Lcom/github/javaparser/ast/Node;)V

    return-object p0
.end method

.method public toForEachStmt()Ljava/util/Optional;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "Lcom/github/javaparser/ast/stmt/ForEachStmt;",
            ">;"
        }
    .end annotation

    invoke-static {p0}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    return-object v0
.end method
