.class public Lcom/github/javaparser/ast/stmt/ForStmt;
.super Lcom/github/javaparser/ast/stmt/Statement;
.source "SourceFile"

# interfaces
.implements Lcom/github/javaparser/ast/nodeTypes/NodeWithBody;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/github/javaparser/ast/stmt/Statement;",
        "Lcom/github/javaparser/ast/nodeTypes/NodeWithBody<",
        "Lcom/github/javaparser/ast/stmt/ForStmt;",
        ">;"
    }
.end annotation


# instance fields
.field private body:Lcom/github/javaparser/ast/stmt/Statement;

.field private compare:Lcom/github/javaparser/ast/expr/Expression;
    .annotation runtime Lcom/github/javaparser/metamodel/OptionalProperty;
    .end annotation
.end field

.field private initialization:Lcom/github/javaparser/ast/NodeList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/github/javaparser/ast/NodeList<",
            "Lcom/github/javaparser/ast/expr/Expression;",
            ">;"
        }
    .end annotation
.end field

.field private update:Lcom/github/javaparser/ast/NodeList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/github/javaparser/ast/NodeList<",
            "Lcom/github/javaparser/ast/expr/Expression;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 6

    .line 1
    new-instance v2, Lcom/github/javaparser/ast/NodeList;

    invoke-direct {v2}, Lcom/github/javaparser/ast/NodeList;-><init>()V

    new-instance v3, Lcom/github/javaparser/ast/expr/BooleanLiteralExpr;

    invoke-direct {v3}, Lcom/github/javaparser/ast/expr/BooleanLiteralExpr;-><init>()V

    new-instance v4, Lcom/github/javaparser/ast/NodeList;

    invoke-direct {v4}, Lcom/github/javaparser/ast/NodeList;-><init>()V

    new-instance v5, Lcom/github/javaparser/ast/stmt/ReturnStmt;

    invoke-direct {v5}, Lcom/github/javaparser/ast/stmt/ReturnStmt;-><init>()V

    const/4 v1, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/github/javaparser/ast/stmt/ForStmt;-><init>(Lcom/github/javaparser/TokenRange;Lcom/github/javaparser/ast/NodeList;Lcom/github/javaparser/ast/expr/Expression;Lcom/github/javaparser/ast/NodeList;Lcom/github/javaparser/ast/stmt/Statement;)V

    return-void
.end method

.method public constructor <init>(Lcom/github/javaparser/TokenRange;Lcom/github/javaparser/ast/NodeList;Lcom/github/javaparser/ast/expr/Expression;Lcom/github/javaparser/ast/NodeList;Lcom/github/javaparser/ast/stmt/Statement;)V
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
            "initialization",
            "compare",
            "update",
            "body"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/github/javaparser/TokenRange;",
            "Lcom/github/javaparser/ast/NodeList<",
            "Lcom/github/javaparser/ast/expr/Expression;",
            ">;",
            "Lcom/github/javaparser/ast/expr/Expression;",
            "Lcom/github/javaparser/ast/NodeList<",
            "Lcom/github/javaparser/ast/expr/Expression;",
            ">;",
            "Lcom/github/javaparser/ast/stmt/Statement;",
            ")V"
        }
    .end annotation

    .line 3
    invoke-direct {p0, p1}, Lcom/github/javaparser/ast/stmt/Statement;-><init>(Lcom/github/javaparser/TokenRange;)V

    .line 4
    invoke-virtual {p0, p2}, Lcom/github/javaparser/ast/stmt/ForStmt;->setInitialization(Lcom/github/javaparser/ast/NodeList;)Lcom/github/javaparser/ast/stmt/ForStmt;

    .line 5
    invoke-virtual {p0, p3}, Lcom/github/javaparser/ast/stmt/ForStmt;->setCompare(Lcom/github/javaparser/ast/expr/Expression;)Lcom/github/javaparser/ast/stmt/ForStmt;

    .line 6
    invoke-virtual {p0, p4}, Lcom/github/javaparser/ast/stmt/ForStmt;->setUpdate(Lcom/github/javaparser/ast/NodeList;)Lcom/github/javaparser/ast/stmt/ForStmt;

    .line 7
    invoke-virtual {p0, p5}, Lcom/github/javaparser/ast/stmt/ForStmt;->setBody(Lcom/github/javaparser/ast/stmt/Statement;)Lcom/github/javaparser/ast/stmt/ForStmt;

    .line 8
    invoke-virtual {p0}, Lcom/github/javaparser/ast/Node;->customInitialization()V

    return-void
.end method

.method public constructor <init>(Lcom/github/javaparser/ast/NodeList;Lcom/github/javaparser/ast/expr/Expression;Lcom/github/javaparser/ast/NodeList;Lcom/github/javaparser/ast/stmt/Statement;)V
    .locals 6
    .annotation runtime Lcom/github/javaparser/ast/AllFieldsConstructor;
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x10
        }
        names = {
            "initialization",
            "compare",
            "update",
            "body"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/github/javaparser/ast/NodeList<",
            "Lcom/github/javaparser/ast/expr/Expression;",
            ">;",
            "Lcom/github/javaparser/ast/expr/Expression;",
            "Lcom/github/javaparser/ast/NodeList<",
            "Lcom/github/javaparser/ast/expr/Expression;",
            ">;",
            "Lcom/github/javaparser/ast/stmt/Statement;",
            ")V"
        }
    .end annotation

    const/4 v1, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    .line 2
    invoke-direct/range {v0 .. v5}, Lcom/github/javaparser/ast/stmt/ForStmt;-><init>(Lcom/github/javaparser/TokenRange;Lcom/github/javaparser/ast/NodeList;Lcom/github/javaparser/ast/expr/Expression;Lcom/github/javaparser/ast/NodeList;Lcom/github/javaparser/ast/stmt/Statement;)V

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
    invoke-interface {p1, p0, p2}, Lcom/github/javaparser/ast/visitor/GenericVisitor;->visit(Lcom/github/javaparser/ast/stmt/ForStmt;Ljava/lang/Object;)Ljava/lang/Object;

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
    invoke-interface {p1, p0, p2}, Lcom/github/javaparser/ast/visitor/VoidVisitor;->visit(Lcom/github/javaparser/ast/stmt/ForStmt;Ljava/lang/Object;)V

    return-void
.end method

.method public asForStmt()Lcom/github/javaparser/ast/stmt/ForStmt;
    .locals 0

    return-object p0
.end method

.method public bridge synthetic clone()Lcom/github/javaparser/ast/Node;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/github/javaparser/ast/stmt/ForStmt;->clone()Lcom/github/javaparser/ast/stmt/ForStmt;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/github/javaparser/ast/stmt/ForStmt;
    .locals 2

    .line 4
    new-instance v0, Lcom/github/javaparser/ast/visitor/CloneVisitor;

    invoke-direct {v0}, Lcom/github/javaparser/ast/visitor/CloneVisitor;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/github/javaparser/ast/stmt/ForStmt;->accept(Lcom/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/github/javaparser/ast/stmt/ForStmt;

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/github/javaparser/ast/stmt/Statement;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/github/javaparser/ast/stmt/ForStmt;->clone()Lcom/github/javaparser/ast/stmt/ForStmt;

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
    invoke-virtual {p0}, Lcom/github/javaparser/ast/stmt/ForStmt;->clone()Lcom/github/javaparser/ast/stmt/ForStmt;

    move-result-object v0

    return-object v0
.end method

.method public getBody()Lcom/github/javaparser/ast/stmt/Statement;
    .locals 1

    iget-object v0, p0, Lcom/github/javaparser/ast/stmt/ForStmt;->body:Lcom/github/javaparser/ast/stmt/Statement;

    return-object v0
.end method

.method public getCompare()Ljava/util/Optional;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "Lcom/github/javaparser/ast/expr/Expression;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/github/javaparser/ast/stmt/ForStmt;->compare:Lcom/github/javaparser/ast/expr/Expression;

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    return-object v0
.end method

.method public getInitialization()Lcom/github/javaparser/ast/NodeList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/github/javaparser/ast/NodeList<",
            "Lcom/github/javaparser/ast/expr/Expression;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/github/javaparser/ast/stmt/ForStmt;->initialization:Lcom/github/javaparser/ast/NodeList;

    return-object v0
.end method

.method public getMetaModel()Lcom/github/javaparser/metamodel/ForStmtMetaModel;
    .locals 1

    .line 3
    sget-object v0, Lcom/github/javaparser/metamodel/JavaParserMetaModel;->forStmtMetaModel:Lcom/github/javaparser/metamodel/ForStmtMetaModel;

    return-object v0
.end method

.method public bridge synthetic getMetaModel()Lcom/github/javaparser/metamodel/NodeMetaModel;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/github/javaparser/ast/stmt/ForStmt;->getMetaModel()Lcom/github/javaparser/metamodel/ForStmtMetaModel;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getMetaModel()Lcom/github/javaparser/metamodel/StatementMetaModel;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/github/javaparser/ast/stmt/ForStmt;->getMetaModel()Lcom/github/javaparser/metamodel/ForStmtMetaModel;

    move-result-object v0

    return-object v0
.end method

.method public getUpdate()Lcom/github/javaparser/ast/NodeList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/github/javaparser/ast/NodeList<",
            "Lcom/github/javaparser/ast/expr/Expression;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/github/javaparser/ast/stmt/ForStmt;->update:Lcom/github/javaparser/ast/NodeList;

    return-object v0
.end method

.method public ifForStmt(Ljava/util/function/Consumer;)V
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
            "Lcom/github/javaparser/ast/stmt/ForStmt;",
            ">;)V"
        }
    .end annotation

    invoke-interface {p1, p0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method

.method public isForStmt()Z
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
    iget-object v1, p0, Lcom/github/javaparser/ast/stmt/ForStmt;->compare:Lcom/github/javaparser/ast/expr/Expression;

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne p1, v1, :cond_1

    invoke-virtual {p0}, Lcom/github/javaparser/ast/stmt/ForStmt;->removeCompare()Lcom/github/javaparser/ast/stmt/ForStmt;

    return v2

    :cond_1
    move v1, v0

    :goto_0
    iget-object v3, p0, Lcom/github/javaparser/ast/stmt/ForStmt;->initialization:Lcom/github/javaparser/ast/NodeList;

    invoke-virtual {v3}, Lcom/github/javaparser/ast/NodeList;->size()I

    move-result v3

    if-ge v1, v3, :cond_3

    iget-object v3, p0, Lcom/github/javaparser/ast/stmt/ForStmt;->initialization:Lcom/github/javaparser/ast/NodeList;

    invoke-virtual {v3, v1}, Lcom/github/javaparser/ast/NodeList;->get(I)Lcom/github/javaparser/ast/Node;

    move-result-object v3

    if-ne v3, p1, :cond_2

    iget-object p1, p0, Lcom/github/javaparser/ast/stmt/ForStmt;->initialization:Lcom/github/javaparser/ast/NodeList;

    invoke-virtual {p1, v1}, Lcom/github/javaparser/ast/NodeList;->remove(I)Lcom/github/javaparser/ast/Node;

    return v2

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    iget-object v1, p0, Lcom/github/javaparser/ast/stmt/ForStmt;->update:Lcom/github/javaparser/ast/NodeList;

    invoke-virtual {v1}, Lcom/github/javaparser/ast/NodeList;->size()I

    move-result v1

    if-ge v0, v1, :cond_5

    iget-object v1, p0, Lcom/github/javaparser/ast/stmt/ForStmt;->update:Lcom/github/javaparser/ast/NodeList;

    invoke-virtual {v1, v0}, Lcom/github/javaparser/ast/NodeList;->get(I)Lcom/github/javaparser/ast/Node;

    move-result-object v1

    if-ne v1, p1, :cond_4

    iget-object p1, p0, Lcom/github/javaparser/ast/stmt/ForStmt;->update:Lcom/github/javaparser/ast/NodeList;

    invoke-virtual {p1, v0}, Lcom/github/javaparser/ast/NodeList;->remove(I)Lcom/github/javaparser/ast/Node;

    return v2

    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_5
    invoke-super {p0, p1}, Lcom/github/javaparser/ast/Node;->remove(Lcom/github/javaparser/ast/Node;)Z

    move-result p1

    return p1
.end method

.method public removeCompare()Lcom/github/javaparser/ast/stmt/ForStmt;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/github/javaparser/ast/stmt/ForStmt;->setCompare(Lcom/github/javaparser/ast/expr/Expression;)Lcom/github/javaparser/ast/stmt/ForStmt;

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
    iget-object v1, p0, Lcom/github/javaparser/ast/stmt/ForStmt;->body:Lcom/github/javaparser/ast/stmt/Statement;

    const/4 v2, 0x1

    if-ne p1, v1, :cond_1

    check-cast p2, Lcom/github/javaparser/ast/stmt/Statement;

    invoke-virtual {p0, p2}, Lcom/github/javaparser/ast/stmt/ForStmt;->setBody(Lcom/github/javaparser/ast/stmt/Statement;)Lcom/github/javaparser/ast/stmt/ForStmt;

    return v2

    :cond_1
    iget-object v1, p0, Lcom/github/javaparser/ast/stmt/ForStmt;->compare:Lcom/github/javaparser/ast/expr/Expression;

    if-eqz v1, :cond_2

    if-ne p1, v1, :cond_2

    check-cast p2, Lcom/github/javaparser/ast/expr/Expression;

    invoke-virtual {p0, p2}, Lcom/github/javaparser/ast/stmt/ForStmt;->setCompare(Lcom/github/javaparser/ast/expr/Expression;)Lcom/github/javaparser/ast/stmt/ForStmt;

    return v2

    :cond_2
    move v1, v0

    :goto_0
    iget-object v3, p0, Lcom/github/javaparser/ast/stmt/ForStmt;->initialization:Lcom/github/javaparser/ast/NodeList;

    invoke-virtual {v3}, Lcom/github/javaparser/ast/NodeList;->size()I

    move-result v3

    if-ge v1, v3, :cond_4

    iget-object v3, p0, Lcom/github/javaparser/ast/stmt/ForStmt;->initialization:Lcom/github/javaparser/ast/NodeList;

    invoke-virtual {v3, v1}, Lcom/github/javaparser/ast/NodeList;->get(I)Lcom/github/javaparser/ast/Node;

    move-result-object v3

    if-ne v3, p1, :cond_3

    iget-object p1, p0, Lcom/github/javaparser/ast/stmt/ForStmt;->initialization:Lcom/github/javaparser/ast/NodeList;

    check-cast p2, Lcom/github/javaparser/ast/expr/Expression;

    invoke-virtual {p1, v1, p2}, Lcom/github/javaparser/ast/NodeList;->set(ILcom/github/javaparser/ast/Node;)Lcom/github/javaparser/ast/Node;

    return v2

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    :goto_1
    iget-object v1, p0, Lcom/github/javaparser/ast/stmt/ForStmt;->update:Lcom/github/javaparser/ast/NodeList;

    invoke-virtual {v1}, Lcom/github/javaparser/ast/NodeList;->size()I

    move-result v1

    if-ge v0, v1, :cond_6

    iget-object v1, p0, Lcom/github/javaparser/ast/stmt/ForStmt;->update:Lcom/github/javaparser/ast/NodeList;

    invoke-virtual {v1, v0}, Lcom/github/javaparser/ast/NodeList;->get(I)Lcom/github/javaparser/ast/Node;

    move-result-object v1

    if-ne v1, p1, :cond_5

    iget-object p1, p0, Lcom/github/javaparser/ast/stmt/ForStmt;->update:Lcom/github/javaparser/ast/NodeList;

    check-cast p2, Lcom/github/javaparser/ast/expr/Expression;

    invoke-virtual {p1, v0, p2}, Lcom/github/javaparser/ast/NodeList;->set(ILcom/github/javaparser/ast/Node;)Lcom/github/javaparser/ast/Node;

    return v2

    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_6
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
    invoke-virtual {p0, p1}, Lcom/github/javaparser/ast/stmt/ForStmt;->setBody(Lcom/github/javaparser/ast/stmt/Statement;)Lcom/github/javaparser/ast/stmt/ForStmt;

    move-result-object p1

    return-object p1
.end method

.method public setBody(Lcom/github/javaparser/ast/stmt/Statement;)Lcom/github/javaparser/ast/stmt/ForStmt;
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
    iget-object v0, p0, Lcom/github/javaparser/ast/stmt/ForStmt;->body:Lcom/github/javaparser/ast/stmt/Statement;

    if-ne p1, v0, :cond_0

    return-object p0

    .line 4
    :cond_0
    sget-object v1, Lcom/github/javaparser/ast/observer/ObservableProperty;->BODY:Lcom/github/javaparser/ast/observer/ObservableProperty;

    invoke-virtual {p0, v1, v0, p1}, Lcom/github/javaparser/ast/Node;->notifyPropertyChange(Lcom/github/javaparser/ast/observer/ObservableProperty;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 5
    iget-object v0, p0, Lcom/github/javaparser/ast/stmt/ForStmt;->body:Lcom/github/javaparser/ast/stmt/Statement;

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/github/javaparser/ast/Node;->setParentNode(Lcom/github/javaparser/ast/Node;)Lcom/github/javaparser/ast/Node;

    .line 6
    :cond_1
    iput-object p1, p0, Lcom/github/javaparser/ast/stmt/ForStmt;->body:Lcom/github/javaparser/ast/stmt/Statement;

    .line 7
    invoke-virtual {p0, p1}, Lcom/github/javaparser/ast/Node;->setAsParentNodeOf(Lcom/github/javaparser/ast/Node;)V

    return-object p0
.end method

.method public setCompare(Lcom/github/javaparser/ast/expr/Expression;)Lcom/github/javaparser/ast/stmt/ForStmt;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "compare"
        }
    .end annotation

    iget-object v0, p0, Lcom/github/javaparser/ast/stmt/ForStmt;->compare:Lcom/github/javaparser/ast/expr/Expression;

    if-ne p1, v0, :cond_0

    return-object p0

    :cond_0
    sget-object v1, Lcom/github/javaparser/ast/observer/ObservableProperty;->COMPARE:Lcom/github/javaparser/ast/observer/ObservableProperty;

    invoke-virtual {p0, v1, v0, p1}, Lcom/github/javaparser/ast/Node;->notifyPropertyChange(Lcom/github/javaparser/ast/observer/ObservableProperty;Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/github/javaparser/ast/stmt/ForStmt;->compare:Lcom/github/javaparser/ast/expr/Expression;

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/github/javaparser/ast/Node;->setParentNode(Lcom/github/javaparser/ast/Node;)Lcom/github/javaparser/ast/Node;

    :cond_1
    iput-object p1, p0, Lcom/github/javaparser/ast/stmt/ForStmt;->compare:Lcom/github/javaparser/ast/expr/Expression;

    invoke-virtual {p0, p1}, Lcom/github/javaparser/ast/Node;->setAsParentNodeOf(Lcom/github/javaparser/ast/Node;)V

    return-object p0
.end method

.method public setInitialization(Lcom/github/javaparser/ast/NodeList;)Lcom/github/javaparser/ast/stmt/ForStmt;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "initialization"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/github/javaparser/ast/NodeList<",
            "Lcom/github/javaparser/ast/expr/Expression;",
            ">;)",
            "Lcom/github/javaparser/ast/stmt/ForStmt;"
        }
    .end annotation

    invoke-static {p1}, Lcom/github/javaparser/utils/Utils;->assertNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/github/javaparser/ast/stmt/ForStmt;->initialization:Lcom/github/javaparser/ast/NodeList;

    if-ne p1, v0, :cond_0

    return-object p0

    :cond_0
    sget-object v1, Lcom/github/javaparser/ast/observer/ObservableProperty;->INITIALIZATION:Lcom/github/javaparser/ast/observer/ObservableProperty;

    invoke-virtual {p0, v1, v0, p1}, Lcom/github/javaparser/ast/Node;->notifyPropertyChange(Lcom/github/javaparser/ast/observer/ObservableProperty;Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/github/javaparser/ast/stmt/ForStmt;->initialization:Lcom/github/javaparser/ast/NodeList;

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/github/javaparser/ast/NodeList;->setParentNode(Lcom/github/javaparser/ast/Node;)Lcom/github/javaparser/ast/NodeList;

    :cond_1
    iput-object p1, p0, Lcom/github/javaparser/ast/stmt/ForStmt;->initialization:Lcom/github/javaparser/ast/NodeList;

    invoke-virtual {p0, p1}, Lcom/github/javaparser/ast/Node;->setAsParentNodeOf(Lcom/github/javaparser/ast/NodeList;)V

    return-object p0
.end method

.method public setUpdate(Lcom/github/javaparser/ast/NodeList;)Lcom/github/javaparser/ast/stmt/ForStmt;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "update"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/github/javaparser/ast/NodeList<",
            "Lcom/github/javaparser/ast/expr/Expression;",
            ">;)",
            "Lcom/github/javaparser/ast/stmt/ForStmt;"
        }
    .end annotation

    invoke-static {p1}, Lcom/github/javaparser/utils/Utils;->assertNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/github/javaparser/ast/stmt/ForStmt;->update:Lcom/github/javaparser/ast/NodeList;

    if-ne p1, v0, :cond_0

    return-object p0

    :cond_0
    sget-object v1, Lcom/github/javaparser/ast/observer/ObservableProperty;->UPDATE:Lcom/github/javaparser/ast/observer/ObservableProperty;

    invoke-virtual {p0, v1, v0, p1}, Lcom/github/javaparser/ast/Node;->notifyPropertyChange(Lcom/github/javaparser/ast/observer/ObservableProperty;Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/github/javaparser/ast/stmt/ForStmt;->update:Lcom/github/javaparser/ast/NodeList;

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/github/javaparser/ast/NodeList;->setParentNode(Lcom/github/javaparser/ast/Node;)Lcom/github/javaparser/ast/NodeList;

    :cond_1
    iput-object p1, p0, Lcom/github/javaparser/ast/stmt/ForStmt;->update:Lcom/github/javaparser/ast/NodeList;

    invoke-virtual {p0, p1}, Lcom/github/javaparser/ast/Node;->setAsParentNodeOf(Lcom/github/javaparser/ast/NodeList;)V

    return-object p0
.end method

.method public toForStmt()Ljava/util/Optional;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "Lcom/github/javaparser/ast/stmt/ForStmt;",
            ">;"
        }
    .end annotation

    invoke-static {p0}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    return-object v0
.end method
