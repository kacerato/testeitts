.class public Lcom/github/javaparser/ast/stmt/IfStmt;
.super Lcom/github/javaparser/ast/stmt/Statement;
.source "SourceFile"

# interfaces
.implements Lcom/github/javaparser/ast/nodeTypes/NodeWithCondition;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/github/javaparser/ast/stmt/Statement;",
        "Lcom/github/javaparser/ast/nodeTypes/NodeWithCondition<",
        "Lcom/github/javaparser/ast/stmt/IfStmt;",
        ">;"
    }
.end annotation


# instance fields
.field private condition:Lcom/github/javaparser/ast/expr/Expression;

.field private elseStmt:Lcom/github/javaparser/ast/stmt/Statement;
    .annotation runtime Lcom/github/javaparser/metamodel/OptionalProperty;
    .end annotation
.end field

.field private thenStmt:Lcom/github/javaparser/ast/stmt/Statement;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    new-instance v0, Lcom/github/javaparser/ast/expr/BooleanLiteralExpr;

    invoke-direct {v0}, Lcom/github/javaparser/ast/expr/BooleanLiteralExpr;-><init>()V

    new-instance v1, Lcom/github/javaparser/ast/stmt/ReturnStmt;

    invoke-direct {v1}, Lcom/github/javaparser/ast/stmt/ReturnStmt;-><init>()V

    const/4 v2, 0x0

    invoke-direct {p0, v2, v0, v1, v2}, Lcom/github/javaparser/ast/stmt/IfStmt;-><init>(Lcom/github/javaparser/TokenRange;Lcom/github/javaparser/ast/expr/Expression;Lcom/github/javaparser/ast/stmt/Statement;Lcom/github/javaparser/ast/stmt/Statement;)V

    return-void
.end method

.method public constructor <init>(Lcom/github/javaparser/TokenRange;Lcom/github/javaparser/ast/expr/Expression;Lcom/github/javaparser/ast/stmt/Statement;Lcom/github/javaparser/ast/stmt/Statement;)V
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
            "condition",
            "thenStmt",
            "elseStmt"
        }
    .end annotation

    .line 3
    invoke-direct {p0, p1}, Lcom/github/javaparser/ast/stmt/Statement;-><init>(Lcom/github/javaparser/TokenRange;)V

    .line 4
    invoke-virtual {p0, p2}, Lcom/github/javaparser/ast/stmt/IfStmt;->setCondition(Lcom/github/javaparser/ast/expr/Expression;)Lcom/github/javaparser/ast/stmt/IfStmt;

    .line 5
    invoke-virtual {p0, p3}, Lcom/github/javaparser/ast/stmt/IfStmt;->setThenStmt(Lcom/github/javaparser/ast/stmt/Statement;)Lcom/github/javaparser/ast/stmt/IfStmt;

    .line 6
    invoke-virtual {p0, p4}, Lcom/github/javaparser/ast/stmt/IfStmt;->setElseStmt(Lcom/github/javaparser/ast/stmt/Statement;)Lcom/github/javaparser/ast/stmt/IfStmt;

    .line 7
    invoke-virtual {p0}, Lcom/github/javaparser/ast/Node;->customInitialization()V

    return-void
.end method

.method public constructor <init>(Lcom/github/javaparser/ast/expr/Expression;Lcom/github/javaparser/ast/stmt/Statement;Lcom/github/javaparser/ast/stmt/Statement;)V
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
            "condition",
            "thenStmt",
            "elseStmt"
        }
    .end annotation

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, v0, p1, p2, p3}, Lcom/github/javaparser/ast/stmt/IfStmt;-><init>(Lcom/github/javaparser/TokenRange;Lcom/github/javaparser/ast/expr/Expression;Lcom/github/javaparser/ast/stmt/Statement;Lcom/github/javaparser/ast/stmt/Statement;)V

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
    invoke-interface {p1, p0, p2}, Lcom/github/javaparser/ast/visitor/GenericVisitor;->visit(Lcom/github/javaparser/ast/stmt/IfStmt;Ljava/lang/Object;)Ljava/lang/Object;

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
    invoke-interface {p1, p0, p2}, Lcom/github/javaparser/ast/visitor/VoidVisitor;->visit(Lcom/github/javaparser/ast/stmt/IfStmt;Ljava/lang/Object;)V

    return-void
.end method

.method public asIfStmt()Lcom/github/javaparser/ast/stmt/IfStmt;
    .locals 0

    return-object p0
.end method

.method public bridge synthetic clone()Lcom/github/javaparser/ast/Node;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/github/javaparser/ast/stmt/IfStmt;->clone()Lcom/github/javaparser/ast/stmt/IfStmt;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/github/javaparser/ast/stmt/IfStmt;
    .locals 2

    .line 4
    new-instance v0, Lcom/github/javaparser/ast/visitor/CloneVisitor;

    invoke-direct {v0}, Lcom/github/javaparser/ast/visitor/CloneVisitor;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/github/javaparser/ast/stmt/IfStmt;->accept(Lcom/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/github/javaparser/ast/stmt/IfStmt;

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/github/javaparser/ast/stmt/Statement;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/github/javaparser/ast/stmt/IfStmt;->clone()Lcom/github/javaparser/ast/stmt/IfStmt;

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
    invoke-virtual {p0}, Lcom/github/javaparser/ast/stmt/IfStmt;->clone()Lcom/github/javaparser/ast/stmt/IfStmt;

    move-result-object v0

    return-object v0
.end method

.method public getCondition()Lcom/github/javaparser/ast/expr/Expression;
    .locals 1

    iget-object v0, p0, Lcom/github/javaparser/ast/stmt/IfStmt;->condition:Lcom/github/javaparser/ast/expr/Expression;

    return-object v0
.end method

.method public getElseStmt()Ljava/util/Optional;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "Lcom/github/javaparser/ast/stmt/Statement;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/github/javaparser/ast/stmt/IfStmt;->elseStmt:Lcom/github/javaparser/ast/stmt/Statement;

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    return-object v0
.end method

.method public getMetaModel()Lcom/github/javaparser/metamodel/IfStmtMetaModel;
    .locals 1

    .line 3
    sget-object v0, Lcom/github/javaparser/metamodel/JavaParserMetaModel;->ifStmtMetaModel:Lcom/github/javaparser/metamodel/IfStmtMetaModel;

    return-object v0
.end method

.method public bridge synthetic getMetaModel()Lcom/github/javaparser/metamodel/NodeMetaModel;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/github/javaparser/ast/stmt/IfStmt;->getMetaModel()Lcom/github/javaparser/metamodel/IfStmtMetaModel;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getMetaModel()Lcom/github/javaparser/metamodel/StatementMetaModel;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/github/javaparser/ast/stmt/IfStmt;->getMetaModel()Lcom/github/javaparser/metamodel/IfStmtMetaModel;

    move-result-object v0

    return-object v0
.end method

.method public getThenStmt()Lcom/github/javaparser/ast/stmt/Statement;
    .locals 1

    iget-object v0, p0, Lcom/github/javaparser/ast/stmt/IfStmt;->thenStmt:Lcom/github/javaparser/ast/stmt/Statement;

    return-object v0
.end method

.method public hasCascadingIfStmt()Z
    .locals 1
    .annotation runtime Lcom/github/javaparser/metamodel/DerivedProperty;
    .end annotation

    iget-object v0, p0, Lcom/github/javaparser/ast/stmt/IfStmt;->elseStmt:Lcom/github/javaparser/ast/stmt/Statement;

    instance-of v0, v0, Lcom/github/javaparser/ast/stmt/IfStmt;

    return v0
.end method

.method public hasElseBlock()Z
    .locals 1
    .annotation runtime Lcom/github/javaparser/metamodel/DerivedProperty;
    .end annotation

    iget-object v0, p0, Lcom/github/javaparser/ast/stmt/IfStmt;->elseStmt:Lcom/github/javaparser/ast/stmt/Statement;

    instance-of v0, v0, Lcom/github/javaparser/ast/stmt/BlockStmt;

    return v0
.end method

.method public hasElseBranch()Z
    .locals 1
    .annotation runtime Lcom/github/javaparser/metamodel/DerivedProperty;
    .end annotation

    iget-object v0, p0, Lcom/github/javaparser/ast/stmt/IfStmt;->elseStmt:Lcom/github/javaparser/ast/stmt/Statement;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasThenBlock()Z
    .locals 1
    .annotation runtime Lcom/github/javaparser/metamodel/DerivedProperty;
    .end annotation

    iget-object v0, p0, Lcom/github/javaparser/ast/stmt/IfStmt;->thenStmt:Lcom/github/javaparser/ast/stmt/Statement;

    instance-of v0, v0, Lcom/github/javaparser/ast/stmt/BlockStmt;

    return v0
.end method

.method public ifIfStmt(Ljava/util/function/Consumer;)V
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
            "Lcom/github/javaparser/ast/stmt/IfStmt;",
            ">;)V"
        }
    .end annotation

    invoke-interface {p1, p0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method

.method public isIfStmt()Z
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
    iget-object v0, p0, Lcom/github/javaparser/ast/stmt/IfStmt;->elseStmt:Lcom/github/javaparser/ast/stmt/Statement;

    if-eqz v0, :cond_1

    if-ne p1, v0, :cond_1

    invoke-virtual {p0}, Lcom/github/javaparser/ast/stmt/IfStmt;->removeElseStmt()Lcom/github/javaparser/ast/stmt/IfStmt;

    const/4 p1, 0x1

    return p1

    :cond_1
    invoke-super {p0, p1}, Lcom/github/javaparser/ast/Node;->remove(Lcom/github/javaparser/ast/Node;)Z

    move-result p1

    return p1
.end method

.method public removeElseStmt()Lcom/github/javaparser/ast/stmt/IfStmt;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/github/javaparser/ast/stmt/IfStmt;->setElseStmt(Lcom/github/javaparser/ast/stmt/Statement;)Lcom/github/javaparser/ast/stmt/IfStmt;

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
    iget-object v0, p0, Lcom/github/javaparser/ast/stmt/IfStmt;->condition:Lcom/github/javaparser/ast/expr/Expression;

    const/4 v1, 0x1

    if-ne p1, v0, :cond_1

    check-cast p2, Lcom/github/javaparser/ast/expr/Expression;

    invoke-virtual {p0, p2}, Lcom/github/javaparser/ast/stmt/IfStmt;->setCondition(Lcom/github/javaparser/ast/expr/Expression;)Lcom/github/javaparser/ast/stmt/IfStmt;

    return v1

    :cond_1
    iget-object v0, p0, Lcom/github/javaparser/ast/stmt/IfStmt;->elseStmt:Lcom/github/javaparser/ast/stmt/Statement;

    if-eqz v0, :cond_2

    if-ne p1, v0, :cond_2

    check-cast p2, Lcom/github/javaparser/ast/stmt/Statement;

    invoke-virtual {p0, p2}, Lcom/github/javaparser/ast/stmt/IfStmt;->setElseStmt(Lcom/github/javaparser/ast/stmt/Statement;)Lcom/github/javaparser/ast/stmt/IfStmt;

    return v1

    :cond_2
    iget-object v0, p0, Lcom/github/javaparser/ast/stmt/IfStmt;->thenStmt:Lcom/github/javaparser/ast/stmt/Statement;

    if-ne p1, v0, :cond_3

    check-cast p2, Lcom/github/javaparser/ast/stmt/Statement;

    invoke-virtual {p0, p2}, Lcom/github/javaparser/ast/stmt/IfStmt;->setThenStmt(Lcom/github/javaparser/ast/stmt/Statement;)Lcom/github/javaparser/ast/stmt/IfStmt;

    return v1

    :cond_3
    invoke-super {p0, p1, p2}, Lcom/github/javaparser/ast/Node;->replace(Lcom/github/javaparser/ast/Node;Lcom/github/javaparser/ast/Node;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic setCondition(Lcom/github/javaparser/ast/expr/Expression;)Lcom/github/javaparser/ast/Node;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            "condition"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/github/javaparser/ast/stmt/IfStmt;->setCondition(Lcom/github/javaparser/ast/expr/Expression;)Lcom/github/javaparser/ast/stmt/IfStmt;

    move-result-object p1

    return-object p1
.end method

.method public setCondition(Lcom/github/javaparser/ast/expr/Expression;)Lcom/github/javaparser/ast/stmt/IfStmt;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "condition"
        }
    .end annotation

    .line 2
    invoke-static {p1}, Lcom/github/javaparser/utils/Utils;->assertNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    iget-object v0, p0, Lcom/github/javaparser/ast/stmt/IfStmt;->condition:Lcom/github/javaparser/ast/expr/Expression;

    if-ne p1, v0, :cond_0

    return-object p0

    .line 4
    :cond_0
    sget-object v1, Lcom/github/javaparser/ast/observer/ObservableProperty;->CONDITION:Lcom/github/javaparser/ast/observer/ObservableProperty;

    invoke-virtual {p0, v1, v0, p1}, Lcom/github/javaparser/ast/Node;->notifyPropertyChange(Lcom/github/javaparser/ast/observer/ObservableProperty;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 5
    iget-object v0, p0, Lcom/github/javaparser/ast/stmt/IfStmt;->condition:Lcom/github/javaparser/ast/expr/Expression;

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/github/javaparser/ast/Node;->setParentNode(Lcom/github/javaparser/ast/Node;)Lcom/github/javaparser/ast/Node;

    .line 6
    :cond_1
    iput-object p1, p0, Lcom/github/javaparser/ast/stmt/IfStmt;->condition:Lcom/github/javaparser/ast/expr/Expression;

    .line 7
    invoke-virtual {p0, p1}, Lcom/github/javaparser/ast/Node;->setAsParentNodeOf(Lcom/github/javaparser/ast/Node;)V

    return-object p0
.end method

.method public setElseStmt(Lcom/github/javaparser/ast/stmt/Statement;)Lcom/github/javaparser/ast/stmt/IfStmt;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "elseStmt"
        }
    .end annotation

    iget-object v0, p0, Lcom/github/javaparser/ast/stmt/IfStmt;->elseStmt:Lcom/github/javaparser/ast/stmt/Statement;

    if-ne p1, v0, :cond_0

    return-object p0

    :cond_0
    sget-object v1, Lcom/github/javaparser/ast/observer/ObservableProperty;->ELSE_STMT:Lcom/github/javaparser/ast/observer/ObservableProperty;

    invoke-virtual {p0, v1, v0, p1}, Lcom/github/javaparser/ast/Node;->notifyPropertyChange(Lcom/github/javaparser/ast/observer/ObservableProperty;Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/github/javaparser/ast/stmt/IfStmt;->elseStmt:Lcom/github/javaparser/ast/stmt/Statement;

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/github/javaparser/ast/Node;->setParentNode(Lcom/github/javaparser/ast/Node;)Lcom/github/javaparser/ast/Node;

    :cond_1
    iput-object p1, p0, Lcom/github/javaparser/ast/stmt/IfStmt;->elseStmt:Lcom/github/javaparser/ast/stmt/Statement;

    invoke-virtual {p0, p1}, Lcom/github/javaparser/ast/Node;->setAsParentNodeOf(Lcom/github/javaparser/ast/Node;)V

    return-object p0
.end method

.method public setThenStmt(Lcom/github/javaparser/ast/stmt/Statement;)Lcom/github/javaparser/ast/stmt/IfStmt;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "thenStmt"
        }
    .end annotation

    invoke-static {p1}, Lcom/github/javaparser/utils/Utils;->assertNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/github/javaparser/ast/stmt/IfStmt;->thenStmt:Lcom/github/javaparser/ast/stmt/Statement;

    if-ne p1, v0, :cond_0

    return-object p0

    :cond_0
    sget-object v1, Lcom/github/javaparser/ast/observer/ObservableProperty;->THEN_STMT:Lcom/github/javaparser/ast/observer/ObservableProperty;

    invoke-virtual {p0, v1, v0, p1}, Lcom/github/javaparser/ast/Node;->notifyPropertyChange(Lcom/github/javaparser/ast/observer/ObservableProperty;Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/github/javaparser/ast/stmt/IfStmt;->thenStmt:Lcom/github/javaparser/ast/stmt/Statement;

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/github/javaparser/ast/Node;->setParentNode(Lcom/github/javaparser/ast/Node;)Lcom/github/javaparser/ast/Node;

    :cond_1
    iput-object p1, p0, Lcom/github/javaparser/ast/stmt/IfStmt;->thenStmt:Lcom/github/javaparser/ast/stmt/Statement;

    invoke-virtual {p0, p1}, Lcom/github/javaparser/ast/Node;->setAsParentNodeOf(Lcom/github/javaparser/ast/Node;)V

    return-object p0
.end method

.method public toIfStmt()Ljava/util/Optional;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "Lcom/github/javaparser/ast/stmt/IfStmt;",
            ">;"
        }
    .end annotation

    invoke-static {p0}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    return-object v0
.end method
