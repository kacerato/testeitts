.class public Lcom/github/javaparser/ast/stmt/TryStmt;
.super Lcom/github/javaparser/ast/stmt/Statement;
.source "SourceFile"


# instance fields
.field private catchClauses:Lcom/github/javaparser/ast/NodeList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/github/javaparser/ast/NodeList<",
            "Lcom/github/javaparser/ast/stmt/CatchClause;",
            ">;"
        }
    .end annotation
.end field

.field private finallyBlock:Lcom/github/javaparser/ast/stmt/BlockStmt;
    .annotation runtime Lcom/github/javaparser/metamodel/OptionalProperty;
    .end annotation
.end field

.field private resources:Lcom/github/javaparser/ast/NodeList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/github/javaparser/ast/NodeList<",
            "Lcom/github/javaparser/ast/expr/Expression;",
            ">;"
        }
    .end annotation
.end field

.field private tryBlock:Lcom/github/javaparser/ast/stmt/BlockStmt;


# direct methods
.method public constructor <init>()V
    .locals 6

    .line 1
    new-instance v2, Lcom/github/javaparser/ast/NodeList;

    invoke-direct {v2}, Lcom/github/javaparser/ast/NodeList;-><init>()V

    new-instance v3, Lcom/github/javaparser/ast/stmt/BlockStmt;

    invoke-direct {v3}, Lcom/github/javaparser/ast/stmt/BlockStmt;-><init>()V

    new-instance v4, Lcom/github/javaparser/ast/NodeList;

    invoke-direct {v4}, Lcom/github/javaparser/ast/NodeList;-><init>()V

    const/4 v5, 0x0

    const/4 v1, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/github/javaparser/ast/stmt/TryStmt;-><init>(Lcom/github/javaparser/TokenRange;Lcom/github/javaparser/ast/NodeList;Lcom/github/javaparser/ast/stmt/BlockStmt;Lcom/github/javaparser/ast/NodeList;Lcom/github/javaparser/ast/stmt/BlockStmt;)V

    return-void
.end method

.method public constructor <init>(Lcom/github/javaparser/TokenRange;Lcom/github/javaparser/ast/NodeList;Lcom/github/javaparser/ast/stmt/BlockStmt;Lcom/github/javaparser/ast/NodeList;Lcom/github/javaparser/ast/stmt/BlockStmt;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "tokenRange",
            "resources",
            "tryBlock",
            "catchClauses",
            "finallyBlock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/github/javaparser/TokenRange;",
            "Lcom/github/javaparser/ast/NodeList<",
            "Lcom/github/javaparser/ast/expr/Expression;",
            ">;",
            "Lcom/github/javaparser/ast/stmt/BlockStmt;",
            "Lcom/github/javaparser/ast/NodeList<",
            "Lcom/github/javaparser/ast/stmt/CatchClause;",
            ">;",
            "Lcom/github/javaparser/ast/stmt/BlockStmt;",
            ")V"
        }
    .end annotation

    .line 4
    invoke-direct {p0, p1}, Lcom/github/javaparser/ast/stmt/Statement;-><init>(Lcom/github/javaparser/TokenRange;)V

    .line 5
    invoke-virtual {p0, p2}, Lcom/github/javaparser/ast/stmt/TryStmt;->setResources(Lcom/github/javaparser/ast/NodeList;)Lcom/github/javaparser/ast/stmt/TryStmt;

    .line 6
    invoke-virtual {p0, p3}, Lcom/github/javaparser/ast/stmt/TryStmt;->setTryBlock(Lcom/github/javaparser/ast/stmt/BlockStmt;)Lcom/github/javaparser/ast/stmt/TryStmt;

    .line 7
    invoke-virtual {p0, p4}, Lcom/github/javaparser/ast/stmt/TryStmt;->setCatchClauses(Lcom/github/javaparser/ast/NodeList;)Lcom/github/javaparser/ast/stmt/TryStmt;

    .line 8
    invoke-virtual {p0, p5}, Lcom/github/javaparser/ast/stmt/TryStmt;->setFinallyBlock(Lcom/github/javaparser/ast/stmt/BlockStmt;)Lcom/github/javaparser/ast/stmt/TryStmt;

    .line 9
    invoke-virtual {p0}, Lcom/github/javaparser/ast/Node;->customInitialization()V

    return-void
.end method

.method public constructor <init>(Lcom/github/javaparser/ast/NodeList;Lcom/github/javaparser/ast/stmt/BlockStmt;Lcom/github/javaparser/ast/NodeList;Lcom/github/javaparser/ast/stmt/BlockStmt;)V
    .locals 6
    .annotation runtime Lcom/github/javaparser/ast/AllFieldsConstructor;
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x10,
            0x10,
            0x10
        }
        names = {
            "resources",
            "tryBlock",
            "catchClauses",
            "finallyBlock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/github/javaparser/ast/NodeList<",
            "Lcom/github/javaparser/ast/expr/Expression;",
            ">;",
            "Lcom/github/javaparser/ast/stmt/BlockStmt;",
            "Lcom/github/javaparser/ast/NodeList<",
            "Lcom/github/javaparser/ast/stmt/CatchClause;",
            ">;",
            "Lcom/github/javaparser/ast/stmt/BlockStmt;",
            ")V"
        }
    .end annotation

    const/4 v1, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    .line 3
    invoke-direct/range {v0 .. v5}, Lcom/github/javaparser/ast/stmt/TryStmt;-><init>(Lcom/github/javaparser/TokenRange;Lcom/github/javaparser/ast/NodeList;Lcom/github/javaparser/ast/stmt/BlockStmt;Lcom/github/javaparser/ast/NodeList;Lcom/github/javaparser/ast/stmt/BlockStmt;)V

    return-void
.end method

.method public constructor <init>(Lcom/github/javaparser/ast/stmt/BlockStmt;Lcom/github/javaparser/ast/NodeList;Lcom/github/javaparser/ast/stmt/BlockStmt;)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10
        }
        names = {
            "tryBlock",
            "catchClauses",
            "finallyBlock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/github/javaparser/ast/stmt/BlockStmt;",
            "Lcom/github/javaparser/ast/NodeList<",
            "Lcom/github/javaparser/ast/stmt/CatchClause;",
            ">;",
            "Lcom/github/javaparser/ast/stmt/BlockStmt;",
            ")V"
        }
    .end annotation

    .line 2
    new-instance v2, Lcom/github/javaparser/ast/NodeList;

    invoke-direct {v2}, Lcom/github/javaparser/ast/NodeList;-><init>()V

    const/4 v1, 0x0

    move-object v0, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/github/javaparser/ast/stmt/TryStmt;-><init>(Lcom/github/javaparser/TokenRange;Lcom/github/javaparser/ast/NodeList;Lcom/github/javaparser/ast/stmt/BlockStmt;Lcom/github/javaparser/ast/NodeList;Lcom/github/javaparser/ast/stmt/BlockStmt;)V

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
    invoke-interface {p1, p0, p2}, Lcom/github/javaparser/ast/visitor/GenericVisitor;->visit(Lcom/github/javaparser/ast/stmt/TryStmt;Ljava/lang/Object;)Ljava/lang/Object;

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
    invoke-interface {p1, p0, p2}, Lcom/github/javaparser/ast/visitor/VoidVisitor;->visit(Lcom/github/javaparser/ast/stmt/TryStmt;Ljava/lang/Object;)V

    return-void
.end method

.method public asTryStmt()Lcom/github/javaparser/ast/stmt/TryStmt;
    .locals 0

    return-object p0
.end method

.method public bridge synthetic clone()Lcom/github/javaparser/ast/Node;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/github/javaparser/ast/stmt/TryStmt;->clone()Lcom/github/javaparser/ast/stmt/TryStmt;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/github/javaparser/ast/stmt/Statement;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/github/javaparser/ast/stmt/TryStmt;->clone()Lcom/github/javaparser/ast/stmt/TryStmt;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/github/javaparser/ast/stmt/TryStmt;
    .locals 2

    .line 4
    new-instance v0, Lcom/github/javaparser/ast/visitor/CloneVisitor;

    invoke-direct {v0}, Lcom/github/javaparser/ast/visitor/CloneVisitor;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/github/javaparser/ast/stmt/TryStmt;->accept(Lcom/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/github/javaparser/ast/stmt/TryStmt;

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
    invoke-virtual {p0}, Lcom/github/javaparser/ast/stmt/TryStmt;->clone()Lcom/github/javaparser/ast/stmt/TryStmt;

    move-result-object v0

    return-object v0
.end method

.method public getCatchClauses()Lcom/github/javaparser/ast/NodeList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/github/javaparser/ast/NodeList<",
            "Lcom/github/javaparser/ast/stmt/CatchClause;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/github/javaparser/ast/stmt/TryStmt;->catchClauses:Lcom/github/javaparser/ast/NodeList;

    return-object v0
.end method

.method public getFinallyBlock()Ljava/util/Optional;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "Lcom/github/javaparser/ast/stmt/BlockStmt;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/github/javaparser/ast/stmt/TryStmt;->finallyBlock:Lcom/github/javaparser/ast/stmt/BlockStmt;

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getMetaModel()Lcom/github/javaparser/metamodel/NodeMetaModel;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/github/javaparser/ast/stmt/TryStmt;->getMetaModel()Lcom/github/javaparser/metamodel/TryStmtMetaModel;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getMetaModel()Lcom/github/javaparser/metamodel/StatementMetaModel;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/github/javaparser/ast/stmt/TryStmt;->getMetaModel()Lcom/github/javaparser/metamodel/TryStmtMetaModel;

    move-result-object v0

    return-object v0
.end method

.method public getMetaModel()Lcom/github/javaparser/metamodel/TryStmtMetaModel;
    .locals 1

    .line 3
    sget-object v0, Lcom/github/javaparser/metamodel/JavaParserMetaModel;->tryStmtMetaModel:Lcom/github/javaparser/metamodel/TryStmtMetaModel;

    return-object v0
.end method

.method public getResources()Lcom/github/javaparser/ast/NodeList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/github/javaparser/ast/NodeList<",
            "Lcom/github/javaparser/ast/expr/Expression;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/github/javaparser/ast/stmt/TryStmt;->resources:Lcom/github/javaparser/ast/NodeList;

    return-object v0
.end method

.method public getTryBlock()Lcom/github/javaparser/ast/stmt/BlockStmt;
    .locals 1

    iget-object v0, p0, Lcom/github/javaparser/ast/stmt/TryStmt;->tryBlock:Lcom/github/javaparser/ast/stmt/BlockStmt;

    return-object v0
.end method

.method public ifTryStmt(Ljava/util/function/Consumer;)V
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
            "Lcom/github/javaparser/ast/stmt/TryStmt;",
            ">;)V"
        }
    .end annotation

    invoke-interface {p1, p0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method

.method public isTryStmt()Z
    .locals 1

    const/4 v0, 0x1

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
    move v1, v0

    :goto_0
    iget-object v2, p0, Lcom/github/javaparser/ast/stmt/TryStmt;->catchClauses:Lcom/github/javaparser/ast/NodeList;

    invoke-virtual {v2}, Lcom/github/javaparser/ast/NodeList;->size()I

    move-result v2

    const/4 v3, 0x1

    if-ge v1, v2, :cond_2

    iget-object v2, p0, Lcom/github/javaparser/ast/stmt/TryStmt;->catchClauses:Lcom/github/javaparser/ast/NodeList;

    invoke-virtual {v2, v1}, Lcom/github/javaparser/ast/NodeList;->get(I)Lcom/github/javaparser/ast/Node;

    move-result-object v2

    if-ne v2, p1, :cond_1

    iget-object p1, p0, Lcom/github/javaparser/ast/stmt/TryStmt;->catchClauses:Lcom/github/javaparser/ast/NodeList;

    invoke-virtual {p1, v1}, Lcom/github/javaparser/ast/NodeList;->remove(I)Lcom/github/javaparser/ast/Node;

    return v3

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/github/javaparser/ast/stmt/TryStmt;->finallyBlock:Lcom/github/javaparser/ast/stmt/BlockStmt;

    if-eqz v1, :cond_3

    if-ne p1, v1, :cond_3

    invoke-virtual {p0}, Lcom/github/javaparser/ast/stmt/TryStmt;->removeFinallyBlock()Lcom/github/javaparser/ast/stmt/TryStmt;

    return v3

    :cond_3
    :goto_1
    iget-object v1, p0, Lcom/github/javaparser/ast/stmt/TryStmt;->resources:Lcom/github/javaparser/ast/NodeList;

    invoke-virtual {v1}, Lcom/github/javaparser/ast/NodeList;->size()I

    move-result v1

    if-ge v0, v1, :cond_5

    iget-object v1, p0, Lcom/github/javaparser/ast/stmt/TryStmt;->resources:Lcom/github/javaparser/ast/NodeList;

    invoke-virtual {v1, v0}, Lcom/github/javaparser/ast/NodeList;->get(I)Lcom/github/javaparser/ast/Node;

    move-result-object v1

    if-ne v1, p1, :cond_4

    iget-object p1, p0, Lcom/github/javaparser/ast/stmt/TryStmt;->resources:Lcom/github/javaparser/ast/NodeList;

    invoke-virtual {p1, v0}, Lcom/github/javaparser/ast/NodeList;->remove(I)Lcom/github/javaparser/ast/Node;

    return v3

    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_5
    invoke-super {p0, p1}, Lcom/github/javaparser/ast/Node;->remove(Lcom/github/javaparser/ast/Node;)Z

    move-result p1

    return p1
.end method

.method public removeFinallyBlock()Lcom/github/javaparser/ast/stmt/TryStmt;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/github/javaparser/ast/stmt/TryStmt;->setFinallyBlock(Lcom/github/javaparser/ast/stmt/BlockStmt;)Lcom/github/javaparser/ast/stmt/TryStmt;

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
    move v1, v0

    :goto_0
    iget-object v2, p0, Lcom/github/javaparser/ast/stmt/TryStmt;->catchClauses:Lcom/github/javaparser/ast/NodeList;

    invoke-virtual {v2}, Lcom/github/javaparser/ast/NodeList;->size()I

    move-result v2

    const/4 v3, 0x1

    if-ge v1, v2, :cond_2

    iget-object v2, p0, Lcom/github/javaparser/ast/stmt/TryStmt;->catchClauses:Lcom/github/javaparser/ast/NodeList;

    invoke-virtual {v2, v1}, Lcom/github/javaparser/ast/NodeList;->get(I)Lcom/github/javaparser/ast/Node;

    move-result-object v2

    if-ne v2, p1, :cond_1

    iget-object p1, p0, Lcom/github/javaparser/ast/stmt/TryStmt;->catchClauses:Lcom/github/javaparser/ast/NodeList;

    check-cast p2, Lcom/github/javaparser/ast/stmt/CatchClause;

    invoke-virtual {p1, v1, p2}, Lcom/github/javaparser/ast/NodeList;->set(ILcom/github/javaparser/ast/Node;)Lcom/github/javaparser/ast/Node;

    return v3

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/github/javaparser/ast/stmt/TryStmt;->finallyBlock:Lcom/github/javaparser/ast/stmt/BlockStmt;

    if-eqz v1, :cond_3

    if-ne p1, v1, :cond_3

    check-cast p2, Lcom/github/javaparser/ast/stmt/BlockStmt;

    invoke-virtual {p0, p2}, Lcom/github/javaparser/ast/stmt/TryStmt;->setFinallyBlock(Lcom/github/javaparser/ast/stmt/BlockStmt;)Lcom/github/javaparser/ast/stmt/TryStmt;

    return v3

    :cond_3
    :goto_1
    iget-object v1, p0, Lcom/github/javaparser/ast/stmt/TryStmt;->resources:Lcom/github/javaparser/ast/NodeList;

    invoke-virtual {v1}, Lcom/github/javaparser/ast/NodeList;->size()I

    move-result v1

    if-ge v0, v1, :cond_5

    iget-object v1, p0, Lcom/github/javaparser/ast/stmt/TryStmt;->resources:Lcom/github/javaparser/ast/NodeList;

    invoke-virtual {v1, v0}, Lcom/github/javaparser/ast/NodeList;->get(I)Lcom/github/javaparser/ast/Node;

    move-result-object v1

    if-ne v1, p1, :cond_4

    iget-object p1, p0, Lcom/github/javaparser/ast/stmt/TryStmt;->resources:Lcom/github/javaparser/ast/NodeList;

    check-cast p2, Lcom/github/javaparser/ast/expr/Expression;

    invoke-virtual {p1, v0, p2}, Lcom/github/javaparser/ast/NodeList;->set(ILcom/github/javaparser/ast/Node;)Lcom/github/javaparser/ast/Node;

    return v3

    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_5
    iget-object v0, p0, Lcom/github/javaparser/ast/stmt/TryStmt;->tryBlock:Lcom/github/javaparser/ast/stmt/BlockStmt;

    if-ne p1, v0, :cond_6

    check-cast p2, Lcom/github/javaparser/ast/stmt/BlockStmt;

    invoke-virtual {p0, p2}, Lcom/github/javaparser/ast/stmt/TryStmt;->setTryBlock(Lcom/github/javaparser/ast/stmt/BlockStmt;)Lcom/github/javaparser/ast/stmt/TryStmt;

    return v3

    :cond_6
    invoke-super {p0, p1, p2}, Lcom/github/javaparser/ast/Node;->replace(Lcom/github/javaparser/ast/Node;Lcom/github/javaparser/ast/Node;)Z

    move-result p1

    return p1
.end method

.method public setCatchClauses(Lcom/github/javaparser/ast/NodeList;)Lcom/github/javaparser/ast/stmt/TryStmt;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "catchClauses"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/github/javaparser/ast/NodeList<",
            "Lcom/github/javaparser/ast/stmt/CatchClause;",
            ">;)",
            "Lcom/github/javaparser/ast/stmt/TryStmt;"
        }
    .end annotation

    invoke-static {p1}, Lcom/github/javaparser/utils/Utils;->assertNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/github/javaparser/ast/stmt/TryStmt;->catchClauses:Lcom/github/javaparser/ast/NodeList;

    if-ne p1, v0, :cond_0

    return-object p0

    :cond_0
    sget-object v1, Lcom/github/javaparser/ast/observer/ObservableProperty;->CATCH_CLAUSES:Lcom/github/javaparser/ast/observer/ObservableProperty;

    invoke-virtual {p0, v1, v0, p1}, Lcom/github/javaparser/ast/Node;->notifyPropertyChange(Lcom/github/javaparser/ast/observer/ObservableProperty;Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/github/javaparser/ast/stmt/TryStmt;->catchClauses:Lcom/github/javaparser/ast/NodeList;

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/github/javaparser/ast/NodeList;->setParentNode(Lcom/github/javaparser/ast/Node;)Lcom/github/javaparser/ast/NodeList;

    :cond_1
    iput-object p1, p0, Lcom/github/javaparser/ast/stmt/TryStmt;->catchClauses:Lcom/github/javaparser/ast/NodeList;

    invoke-virtual {p0, p1}, Lcom/github/javaparser/ast/Node;->setAsParentNodeOf(Lcom/github/javaparser/ast/NodeList;)V

    return-object p0
.end method

.method public setFinallyBlock(Lcom/github/javaparser/ast/stmt/BlockStmt;)Lcom/github/javaparser/ast/stmt/TryStmt;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "finallyBlock"
        }
    .end annotation

    iget-object v0, p0, Lcom/github/javaparser/ast/stmt/TryStmt;->finallyBlock:Lcom/github/javaparser/ast/stmt/BlockStmt;

    if-ne p1, v0, :cond_0

    return-object p0

    :cond_0
    sget-object v1, Lcom/github/javaparser/ast/observer/ObservableProperty;->FINALLY_BLOCK:Lcom/github/javaparser/ast/observer/ObservableProperty;

    invoke-virtual {p0, v1, v0, p1}, Lcom/github/javaparser/ast/Node;->notifyPropertyChange(Lcom/github/javaparser/ast/observer/ObservableProperty;Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/github/javaparser/ast/stmt/TryStmt;->finallyBlock:Lcom/github/javaparser/ast/stmt/BlockStmt;

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/github/javaparser/ast/Node;->setParentNode(Lcom/github/javaparser/ast/Node;)Lcom/github/javaparser/ast/Node;

    :cond_1
    iput-object p1, p0, Lcom/github/javaparser/ast/stmt/TryStmt;->finallyBlock:Lcom/github/javaparser/ast/stmt/BlockStmt;

    invoke-virtual {p0, p1}, Lcom/github/javaparser/ast/Node;->setAsParentNodeOf(Lcom/github/javaparser/ast/Node;)V

    return-object p0
.end method

.method public setResources(Lcom/github/javaparser/ast/NodeList;)Lcom/github/javaparser/ast/stmt/TryStmt;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "resources"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/github/javaparser/ast/NodeList<",
            "Lcom/github/javaparser/ast/expr/Expression;",
            ">;)",
            "Lcom/github/javaparser/ast/stmt/TryStmt;"
        }
    .end annotation

    invoke-static {p1}, Lcom/github/javaparser/utils/Utils;->assertNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/github/javaparser/ast/stmt/TryStmt;->resources:Lcom/github/javaparser/ast/NodeList;

    if-ne p1, v0, :cond_0

    return-object p0

    :cond_0
    sget-object v1, Lcom/github/javaparser/ast/observer/ObservableProperty;->RESOURCES:Lcom/github/javaparser/ast/observer/ObservableProperty;

    invoke-virtual {p0, v1, v0, p1}, Lcom/github/javaparser/ast/Node;->notifyPropertyChange(Lcom/github/javaparser/ast/observer/ObservableProperty;Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/github/javaparser/ast/stmt/TryStmt;->resources:Lcom/github/javaparser/ast/NodeList;

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/github/javaparser/ast/NodeList;->setParentNode(Lcom/github/javaparser/ast/Node;)Lcom/github/javaparser/ast/NodeList;

    :cond_1
    iput-object p1, p0, Lcom/github/javaparser/ast/stmt/TryStmt;->resources:Lcom/github/javaparser/ast/NodeList;

    invoke-virtual {p0, p1}, Lcom/github/javaparser/ast/Node;->setAsParentNodeOf(Lcom/github/javaparser/ast/NodeList;)V

    return-object p0
.end method

.method public setTryBlock(Lcom/github/javaparser/ast/stmt/BlockStmt;)Lcom/github/javaparser/ast/stmt/TryStmt;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "tryBlock"
        }
    .end annotation

    invoke-static {p1}, Lcom/github/javaparser/utils/Utils;->assertNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/github/javaparser/ast/stmt/TryStmt;->tryBlock:Lcom/github/javaparser/ast/stmt/BlockStmt;

    if-ne p1, v0, :cond_0

    return-object p0

    :cond_0
    sget-object v1, Lcom/github/javaparser/ast/observer/ObservableProperty;->TRY_BLOCK:Lcom/github/javaparser/ast/observer/ObservableProperty;

    invoke-virtual {p0, v1, v0, p1}, Lcom/github/javaparser/ast/Node;->notifyPropertyChange(Lcom/github/javaparser/ast/observer/ObservableProperty;Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/github/javaparser/ast/stmt/TryStmt;->tryBlock:Lcom/github/javaparser/ast/stmt/BlockStmt;

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/github/javaparser/ast/Node;->setParentNode(Lcom/github/javaparser/ast/Node;)Lcom/github/javaparser/ast/Node;

    :cond_1
    iput-object p1, p0, Lcom/github/javaparser/ast/stmt/TryStmt;->tryBlock:Lcom/github/javaparser/ast/stmt/BlockStmt;

    invoke-virtual {p0, p1}, Lcom/github/javaparser/ast/Node;->setAsParentNodeOf(Lcom/github/javaparser/ast/Node;)V

    return-object p0
.end method

.method public toTryStmt()Ljava/util/Optional;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "Lcom/github/javaparser/ast/stmt/TryStmt;",
            ">;"
        }
    .end annotation

    invoke-static {p0}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    return-object v0
.end method
