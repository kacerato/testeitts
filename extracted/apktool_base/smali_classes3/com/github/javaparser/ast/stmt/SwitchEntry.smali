.class public Lcom/github/javaparser/ast/stmt/SwitchEntry;
.super Lcom/github/javaparser/ast/Node;
.source "SourceFile"

# interfaces
.implements Lcom/github/javaparser/ast/nodeTypes/NodeWithStatements;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/github/javaparser/ast/stmt/SwitchEntry$Type;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/github/javaparser/ast/Node;",
        "Lcom/github/javaparser/ast/nodeTypes/NodeWithStatements<",
        "Lcom/github/javaparser/ast/stmt/SwitchEntry;",
        ">;"
    }
.end annotation


# instance fields
.field private guard:Lcom/github/javaparser/ast/expr/Expression;
    .annotation runtime Lcom/github/javaparser/metamodel/OptionalProperty;
    .end annotation
.end field

.field private isDefault:Z

.field private labels:Lcom/github/javaparser/ast/NodeList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/github/javaparser/ast/NodeList<",
            "Lcom/github/javaparser/ast/expr/Expression;",
            ">;"
        }
    .end annotation
.end field

.field private statements:Lcom/github/javaparser/ast/NodeList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/github/javaparser/ast/NodeList<",
            "Lcom/github/javaparser/ast/stmt/Statement;",
            ">;"
        }
    .end annotation
.end field

.field private type:Lcom/github/javaparser/ast/stmt/SwitchEntry$Type;


# direct methods
.method public constructor <init>()V
    .locals 7

    .line 1
    new-instance v2, Lcom/github/javaparser/ast/NodeList;

    invoke-direct {v2}, Lcom/github/javaparser/ast/NodeList;-><init>()V

    sget-object v3, Lcom/github/javaparser/ast/stmt/SwitchEntry$Type;->STATEMENT_GROUP:Lcom/github/javaparser/ast/stmt/SwitchEntry$Type;

    new-instance v4, Lcom/github/javaparser/ast/NodeList;

    invoke-direct {v4}, Lcom/github/javaparser/ast/NodeList;-><init>()V

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v1, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/github/javaparser/ast/stmt/SwitchEntry;-><init>(Lcom/github/javaparser/TokenRange;Lcom/github/javaparser/ast/NodeList;Lcom/github/javaparser/ast/stmt/SwitchEntry$Type;Lcom/github/javaparser/ast/NodeList;ZLcom/github/javaparser/ast/expr/Expression;)V

    return-void
.end method

.method public constructor <init>(Lcom/github/javaparser/TokenRange;Lcom/github/javaparser/ast/NodeList;Lcom/github/javaparser/ast/stmt/SwitchEntry$Type;Lcom/github/javaparser/ast/NodeList;)V
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x10
        }
        names = {
            "tokenRange",
            "labels",
            "type",
            "statements"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/github/javaparser/TokenRange;",
            "Lcom/github/javaparser/ast/NodeList<",
            "Lcom/github/javaparser/ast/expr/Expression;",
            ">;",
            "Lcom/github/javaparser/ast/stmt/SwitchEntry$Type;",
            "Lcom/github/javaparser/ast/NodeList<",
            "Lcom/github/javaparser/ast/stmt/Statement;",
            ">;)V"
        }
    .end annotation

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    .line 2
    invoke-direct/range {v0 .. v6}, Lcom/github/javaparser/ast/stmt/SwitchEntry;-><init>(Lcom/github/javaparser/TokenRange;Lcom/github/javaparser/ast/NodeList;Lcom/github/javaparser/ast/stmt/SwitchEntry$Type;Lcom/github/javaparser/ast/NodeList;ZLcom/github/javaparser/ast/expr/Expression;)V

    return-void
.end method

.method public constructor <init>(Lcom/github/javaparser/TokenRange;Lcom/github/javaparser/ast/NodeList;Lcom/github/javaparser/ast/stmt/SwitchEntry$Type;Lcom/github/javaparser/ast/NodeList;Z)V
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
            "labels",
            "type",
            "statements",
            "isDefault"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/github/javaparser/TokenRange;",
            "Lcom/github/javaparser/ast/NodeList<",
            "Lcom/github/javaparser/ast/expr/Expression;",
            ">;",
            "Lcom/github/javaparser/ast/stmt/SwitchEntry$Type;",
            "Lcom/github/javaparser/ast/NodeList<",
            "Lcom/github/javaparser/ast/stmt/Statement;",
            ">;Z)V"
        }
    .end annotation

    .line 12
    invoke-direct {p0, p1}, Lcom/github/javaparser/ast/Node;-><init>(Lcom/github/javaparser/TokenRange;)V

    .line 13
    invoke-virtual {p0, p2}, Lcom/github/javaparser/ast/stmt/SwitchEntry;->setLabels(Lcom/github/javaparser/ast/NodeList;)Lcom/github/javaparser/ast/stmt/SwitchEntry;

    .line 14
    invoke-virtual {p0, p3}, Lcom/github/javaparser/ast/stmt/SwitchEntry;->setType(Lcom/github/javaparser/ast/stmt/SwitchEntry$Type;)Lcom/github/javaparser/ast/stmt/SwitchEntry;

    .line 15
    invoke-virtual {p0, p4}, Lcom/github/javaparser/ast/stmt/SwitchEntry;->setStatements(Lcom/github/javaparser/ast/NodeList;)Lcom/github/javaparser/ast/stmt/SwitchEntry;

    .line 16
    invoke-virtual {p0, p5}, Lcom/github/javaparser/ast/stmt/SwitchEntry;->setDefault(Z)Lcom/github/javaparser/ast/stmt/SwitchEntry;

    .line 17
    invoke-virtual {p0}, Lcom/github/javaparser/ast/Node;->customInitialization()V

    return-void
.end method

.method public constructor <init>(Lcom/github/javaparser/TokenRange;Lcom/github/javaparser/ast/NodeList;Lcom/github/javaparser/ast/stmt/SwitchEntry$Type;Lcom/github/javaparser/ast/NodeList;ZLcom/github/javaparser/ast/expr/Expression;)V
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
            "labels",
            "type",
            "statements",
            "isDefault",
            "guard"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/github/javaparser/TokenRange;",
            "Lcom/github/javaparser/ast/NodeList<",
            "Lcom/github/javaparser/ast/expr/Expression;",
            ">;",
            "Lcom/github/javaparser/ast/stmt/SwitchEntry$Type;",
            "Lcom/github/javaparser/ast/NodeList<",
            "Lcom/github/javaparser/ast/stmt/Statement;",
            ">;Z",
            "Lcom/github/javaparser/ast/expr/Expression;",
            ")V"
        }
    .end annotation

    .line 5
    invoke-direct {p0, p1}, Lcom/github/javaparser/ast/Node;-><init>(Lcom/github/javaparser/TokenRange;)V

    .line 6
    invoke-virtual {p0, p2}, Lcom/github/javaparser/ast/stmt/SwitchEntry;->setLabels(Lcom/github/javaparser/ast/NodeList;)Lcom/github/javaparser/ast/stmt/SwitchEntry;

    .line 7
    invoke-virtual {p0, p3}, Lcom/github/javaparser/ast/stmt/SwitchEntry;->setType(Lcom/github/javaparser/ast/stmt/SwitchEntry$Type;)Lcom/github/javaparser/ast/stmt/SwitchEntry;

    .line 8
    invoke-virtual {p0, p4}, Lcom/github/javaparser/ast/stmt/SwitchEntry;->setStatements(Lcom/github/javaparser/ast/NodeList;)Lcom/github/javaparser/ast/stmt/SwitchEntry;

    .line 9
    invoke-virtual {p0, p5}, Lcom/github/javaparser/ast/stmt/SwitchEntry;->setDefault(Z)Lcom/github/javaparser/ast/stmt/SwitchEntry;

    .line 10
    invoke-virtual {p0, p6}, Lcom/github/javaparser/ast/stmt/SwitchEntry;->setGuard(Lcom/github/javaparser/ast/expr/Expression;)Lcom/github/javaparser/ast/stmt/SwitchEntry;

    .line 11
    invoke-virtual {p0}, Lcom/github/javaparser/ast/Node;->customInitialization()V

    return-void
.end method

.method public constructor <init>(Lcom/github/javaparser/ast/NodeList;Lcom/github/javaparser/ast/stmt/SwitchEntry$Type;Lcom/github/javaparser/ast/NodeList;)V
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10
        }
        names = {
            "labels",
            "type",
            "statements"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/github/javaparser/ast/NodeList<",
            "Lcom/github/javaparser/ast/expr/Expression;",
            ">;",
            "Lcom/github/javaparser/ast/stmt/SwitchEntry$Type;",
            "Lcom/github/javaparser/ast/NodeList<",
            "Lcom/github/javaparser/ast/stmt/Statement;",
            ">;)V"
        }
    .end annotation

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v1, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    .line 3
    invoke-direct/range {v0 .. v6}, Lcom/github/javaparser/ast/stmt/SwitchEntry;-><init>(Lcom/github/javaparser/TokenRange;Lcom/github/javaparser/ast/NodeList;Lcom/github/javaparser/ast/stmt/SwitchEntry$Type;Lcom/github/javaparser/ast/NodeList;ZLcom/github/javaparser/ast/expr/Expression;)V

    return-void
.end method

.method public constructor <init>(Lcom/github/javaparser/ast/NodeList;Lcom/github/javaparser/ast/stmt/SwitchEntry$Type;Lcom/github/javaparser/ast/NodeList;ZLcom/github/javaparser/ast/expr/Expression;)V
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
            "labels",
            "type",
            "statements",
            "isDefault",
            "guard"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/github/javaparser/ast/NodeList<",
            "Lcom/github/javaparser/ast/expr/Expression;",
            ">;",
            "Lcom/github/javaparser/ast/stmt/SwitchEntry$Type;",
            "Lcom/github/javaparser/ast/NodeList<",
            "Lcom/github/javaparser/ast/stmt/Statement;",
            ">;Z",
            "Lcom/github/javaparser/ast/expr/Expression;",
            ")V"
        }
    .end annotation

    const/4 v1, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    move-object v6, p5

    .line 4
    invoke-direct/range {v0 .. v6}, Lcom/github/javaparser/ast/stmt/SwitchEntry;-><init>(Lcom/github/javaparser/TokenRange;Lcom/github/javaparser/ast/NodeList;Lcom/github/javaparser/ast/stmt/SwitchEntry$Type;Lcom/github/javaparser/ast/NodeList;ZLcom/github/javaparser/ast/expr/Expression;)V

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
    invoke-interface {p1, p0, p2}, Lcom/github/javaparser/ast/visitor/GenericVisitor;->visit(Lcom/github/javaparser/ast/stmt/SwitchEntry;Ljava/lang/Object;)Ljava/lang/Object;

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
    invoke-interface {p1, p0, p2}, Lcom/github/javaparser/ast/visitor/VoidVisitor;->visit(Lcom/github/javaparser/ast/stmt/SwitchEntry;Ljava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic clone()Lcom/github/javaparser/ast/Node;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/github/javaparser/ast/stmt/SwitchEntry;->clone()Lcom/github/javaparser/ast/stmt/SwitchEntry;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/github/javaparser/ast/stmt/SwitchEntry;
    .locals 2

    .line 3
    new-instance v0, Lcom/github/javaparser/ast/visitor/CloneVisitor;

    invoke-direct {v0}, Lcom/github/javaparser/ast/visitor/CloneVisitor;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/github/javaparser/ast/stmt/SwitchEntry;->accept(Lcom/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/github/javaparser/ast/stmt/SwitchEntry;

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
    invoke-virtual {p0}, Lcom/github/javaparser/ast/stmt/SwitchEntry;->clone()Lcom/github/javaparser/ast/stmt/SwitchEntry;

    move-result-object v0

    return-object v0
.end method

.method public getGuard()Ljava/util/Optional;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "Lcom/github/javaparser/ast/expr/Expression;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/github/javaparser/ast/stmt/SwitchEntry;->guard:Lcom/github/javaparser/ast/expr/Expression;

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    return-object v0
.end method

.method public getLabels()Lcom/github/javaparser/ast/NodeList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/github/javaparser/ast/NodeList<",
            "Lcom/github/javaparser/ast/expr/Expression;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/github/javaparser/ast/stmt/SwitchEntry;->labels:Lcom/github/javaparser/ast/NodeList;

    return-object v0
.end method

.method public bridge synthetic getMetaModel()Lcom/github/javaparser/metamodel/NodeMetaModel;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/github/javaparser/ast/stmt/SwitchEntry;->getMetaModel()Lcom/github/javaparser/metamodel/SwitchEntryMetaModel;

    move-result-object v0

    return-object v0
.end method

.method public getMetaModel()Lcom/github/javaparser/metamodel/SwitchEntryMetaModel;
    .locals 1

    .line 2
    sget-object v0, Lcom/github/javaparser/metamodel/JavaParserMetaModel;->switchEntryMetaModel:Lcom/github/javaparser/metamodel/SwitchEntryMetaModel;

    return-object v0
.end method

.method public getStatements()Lcom/github/javaparser/ast/NodeList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/github/javaparser/ast/NodeList<",
            "Lcom/github/javaparser/ast/stmt/Statement;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/github/javaparser/ast/stmt/SwitchEntry;->statements:Lcom/github/javaparser/ast/NodeList;

    return-object v0
.end method

.method public getType()Lcom/github/javaparser/ast/stmt/SwitchEntry$Type;
    .locals 1

    iget-object v0, p0, Lcom/github/javaparser/ast/stmt/SwitchEntry;->type:Lcom/github/javaparser/ast/stmt/SwitchEntry$Type;

    return-object v0
.end method

.method public isDefault()Z
    .locals 1

    iget-boolean v0, p0, Lcom/github/javaparser/ast/stmt/SwitchEntry;->isDefault:Z

    return v0
.end method

.method public isSwitchStatementEntry()Z
    .locals 2
    .annotation runtime Lcom/github/javaparser/metamodel/DerivedProperty;
    .end annotation

    iget-object v0, p0, Lcom/github/javaparser/ast/stmt/SwitchEntry;->type:Lcom/github/javaparser/ast/stmt/SwitchEntry$Type;

    sget-object v1, Lcom/github/javaparser/ast/stmt/SwitchEntry$Type;->STATEMENT_GROUP:Lcom/github/javaparser/ast/stmt/SwitchEntry$Type;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
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
    iget-object v1, p0, Lcom/github/javaparser/ast/stmt/SwitchEntry;->guard:Lcom/github/javaparser/ast/expr/Expression;

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne p1, v1, :cond_1

    invoke-virtual {p0}, Lcom/github/javaparser/ast/stmt/SwitchEntry;->removeGuard()Lcom/github/javaparser/ast/stmt/SwitchEntry;

    return v2

    :cond_1
    move v1, v0

    :goto_0
    iget-object v3, p0, Lcom/github/javaparser/ast/stmt/SwitchEntry;->labels:Lcom/github/javaparser/ast/NodeList;

    invoke-virtual {v3}, Lcom/github/javaparser/ast/NodeList;->size()I

    move-result v3

    if-ge v1, v3, :cond_3

    iget-object v3, p0, Lcom/github/javaparser/ast/stmt/SwitchEntry;->labels:Lcom/github/javaparser/ast/NodeList;

    invoke-virtual {v3, v1}, Lcom/github/javaparser/ast/NodeList;->get(I)Lcom/github/javaparser/ast/Node;

    move-result-object v3

    if-ne v3, p1, :cond_2

    iget-object p1, p0, Lcom/github/javaparser/ast/stmt/SwitchEntry;->labels:Lcom/github/javaparser/ast/NodeList;

    invoke-virtual {p1, v1}, Lcom/github/javaparser/ast/NodeList;->remove(I)Lcom/github/javaparser/ast/Node;

    return v2

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    iget-object v1, p0, Lcom/github/javaparser/ast/stmt/SwitchEntry;->statements:Lcom/github/javaparser/ast/NodeList;

    invoke-virtual {v1}, Lcom/github/javaparser/ast/NodeList;->size()I

    move-result v1

    if-ge v0, v1, :cond_5

    iget-object v1, p0, Lcom/github/javaparser/ast/stmt/SwitchEntry;->statements:Lcom/github/javaparser/ast/NodeList;

    invoke-virtual {v1, v0}, Lcom/github/javaparser/ast/NodeList;->get(I)Lcom/github/javaparser/ast/Node;

    move-result-object v1

    if-ne v1, p1, :cond_4

    iget-object p1, p0, Lcom/github/javaparser/ast/stmt/SwitchEntry;->statements:Lcom/github/javaparser/ast/NodeList;

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

.method public removeGuard()Lcom/github/javaparser/ast/stmt/SwitchEntry;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/github/javaparser/ast/stmt/SwitchEntry;->setGuard(Lcom/github/javaparser/ast/expr/Expression;)Lcom/github/javaparser/ast/stmt/SwitchEntry;

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
    iget-object v1, p0, Lcom/github/javaparser/ast/stmt/SwitchEntry;->guard:Lcom/github/javaparser/ast/expr/Expression;

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne p1, v1, :cond_1

    check-cast p2, Lcom/github/javaparser/ast/expr/Expression;

    invoke-virtual {p0, p2}, Lcom/github/javaparser/ast/stmt/SwitchEntry;->setGuard(Lcom/github/javaparser/ast/expr/Expression;)Lcom/github/javaparser/ast/stmt/SwitchEntry;

    return v2

    :cond_1
    move v1, v0

    :goto_0
    iget-object v3, p0, Lcom/github/javaparser/ast/stmt/SwitchEntry;->labels:Lcom/github/javaparser/ast/NodeList;

    invoke-virtual {v3}, Lcom/github/javaparser/ast/NodeList;->size()I

    move-result v3

    if-ge v1, v3, :cond_3

    iget-object v3, p0, Lcom/github/javaparser/ast/stmt/SwitchEntry;->labels:Lcom/github/javaparser/ast/NodeList;

    invoke-virtual {v3, v1}, Lcom/github/javaparser/ast/NodeList;->get(I)Lcom/github/javaparser/ast/Node;

    move-result-object v3

    if-ne v3, p1, :cond_2

    iget-object p1, p0, Lcom/github/javaparser/ast/stmt/SwitchEntry;->labels:Lcom/github/javaparser/ast/NodeList;

    check-cast p2, Lcom/github/javaparser/ast/expr/Expression;

    invoke-virtual {p1, v1, p2}, Lcom/github/javaparser/ast/NodeList;->set(ILcom/github/javaparser/ast/Node;)Lcom/github/javaparser/ast/Node;

    return v2

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    iget-object v1, p0, Lcom/github/javaparser/ast/stmt/SwitchEntry;->statements:Lcom/github/javaparser/ast/NodeList;

    invoke-virtual {v1}, Lcom/github/javaparser/ast/NodeList;->size()I

    move-result v1

    if-ge v0, v1, :cond_5

    iget-object v1, p0, Lcom/github/javaparser/ast/stmt/SwitchEntry;->statements:Lcom/github/javaparser/ast/NodeList;

    invoke-virtual {v1, v0}, Lcom/github/javaparser/ast/NodeList;->get(I)Lcom/github/javaparser/ast/Node;

    move-result-object v1

    if-ne v1, p1, :cond_4

    iget-object p1, p0, Lcom/github/javaparser/ast/stmt/SwitchEntry;->statements:Lcom/github/javaparser/ast/NodeList;

    check-cast p2, Lcom/github/javaparser/ast/stmt/Statement;

    invoke-virtual {p1, v0, p2}, Lcom/github/javaparser/ast/NodeList;->set(ILcom/github/javaparser/ast/Node;)Lcom/github/javaparser/ast/Node;

    return v2

    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_5
    invoke-super {p0, p1, p2}, Lcom/github/javaparser/ast/Node;->replace(Lcom/github/javaparser/ast/Node;Lcom/github/javaparser/ast/Node;)Z

    move-result p1

    return p1
.end method

.method public setDefault(Z)Lcom/github/javaparser/ast/stmt/SwitchEntry;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "isDefault"
        }
    .end annotation

    iget-boolean v0, p0, Lcom/github/javaparser/ast/stmt/SwitchEntry;->isDefault:Z

    if-ne p1, v0, :cond_0

    return-object p0

    :cond_0
    sget-object v1, Lcom/github/javaparser/ast/observer/ObservableProperty;->DEFAULT:Lcom/github/javaparser/ast/observer/ObservableProperty;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {p0, v1, v0, v2}, Lcom/github/javaparser/ast/Node;->notifyPropertyChange(Lcom/github/javaparser/ast/observer/ObservableProperty;Ljava/lang/Object;Ljava/lang/Object;)V

    iput-boolean p1, p0, Lcom/github/javaparser/ast/stmt/SwitchEntry;->isDefault:Z

    return-object p0
.end method

.method public setGuard(Lcom/github/javaparser/ast/expr/Expression;)Lcom/github/javaparser/ast/stmt/SwitchEntry;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "guard"
        }
    .end annotation

    iget-object v0, p0, Lcom/github/javaparser/ast/stmt/SwitchEntry;->guard:Lcom/github/javaparser/ast/expr/Expression;

    if-ne p1, v0, :cond_0

    return-object p0

    :cond_0
    sget-object v1, Lcom/github/javaparser/ast/observer/ObservableProperty;->GUARD:Lcom/github/javaparser/ast/observer/ObservableProperty;

    invoke-virtual {p0, v1, v0, p1}, Lcom/github/javaparser/ast/Node;->notifyPropertyChange(Lcom/github/javaparser/ast/observer/ObservableProperty;Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/github/javaparser/ast/stmt/SwitchEntry;->guard:Lcom/github/javaparser/ast/expr/Expression;

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/github/javaparser/ast/Node;->setParentNode(Lcom/github/javaparser/ast/Node;)Lcom/github/javaparser/ast/Node;

    :cond_1
    iput-object p1, p0, Lcom/github/javaparser/ast/stmt/SwitchEntry;->guard:Lcom/github/javaparser/ast/expr/Expression;

    invoke-virtual {p0, p1}, Lcom/github/javaparser/ast/Node;->setAsParentNodeOf(Lcom/github/javaparser/ast/Node;)V

    return-object p0
.end method

.method public setLabels(Lcom/github/javaparser/ast/NodeList;)Lcom/github/javaparser/ast/stmt/SwitchEntry;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "labels"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/github/javaparser/ast/NodeList<",
            "Lcom/github/javaparser/ast/expr/Expression;",
            ">;)",
            "Lcom/github/javaparser/ast/stmt/SwitchEntry;"
        }
    .end annotation

    invoke-static {p1}, Lcom/github/javaparser/utils/Utils;->assertNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/github/javaparser/ast/stmt/SwitchEntry;->labels:Lcom/github/javaparser/ast/NodeList;

    if-ne p1, v0, :cond_0

    return-object p0

    :cond_0
    sget-object v1, Lcom/github/javaparser/ast/observer/ObservableProperty;->LABELS:Lcom/github/javaparser/ast/observer/ObservableProperty;

    invoke-virtual {p0, v1, v0, p1}, Lcom/github/javaparser/ast/Node;->notifyPropertyChange(Lcom/github/javaparser/ast/observer/ObservableProperty;Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/github/javaparser/ast/stmt/SwitchEntry;->labels:Lcom/github/javaparser/ast/NodeList;

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/github/javaparser/ast/NodeList;->setParentNode(Lcom/github/javaparser/ast/Node;)Lcom/github/javaparser/ast/NodeList;

    :cond_1
    iput-object p1, p0, Lcom/github/javaparser/ast/stmt/SwitchEntry;->labels:Lcom/github/javaparser/ast/NodeList;

    invoke-virtual {p0, p1}, Lcom/github/javaparser/ast/Node;->setAsParentNodeOf(Lcom/github/javaparser/ast/NodeList;)V

    return-object p0
.end method

.method public bridge synthetic setStatements(Lcom/github/javaparser/ast/NodeList;)Lcom/github/javaparser/ast/Node;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            "statements"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/github/javaparser/ast/stmt/SwitchEntry;->setStatements(Lcom/github/javaparser/ast/NodeList;)Lcom/github/javaparser/ast/stmt/SwitchEntry;

    move-result-object p1

    return-object p1
.end method

.method public setStatements(Lcom/github/javaparser/ast/NodeList;)Lcom/github/javaparser/ast/stmt/SwitchEntry;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "statements"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/github/javaparser/ast/NodeList<",
            "Lcom/github/javaparser/ast/stmt/Statement;",
            ">;)",
            "Lcom/github/javaparser/ast/stmt/SwitchEntry;"
        }
    .end annotation

    .line 2
    invoke-static {p1}, Lcom/github/javaparser/utils/Utils;->assertNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    iget-object v0, p0, Lcom/github/javaparser/ast/stmt/SwitchEntry;->statements:Lcom/github/javaparser/ast/NodeList;

    if-ne p1, v0, :cond_0

    return-object p0

    .line 4
    :cond_0
    sget-object v1, Lcom/github/javaparser/ast/observer/ObservableProperty;->STATEMENTS:Lcom/github/javaparser/ast/observer/ObservableProperty;

    invoke-virtual {p0, v1, v0, p1}, Lcom/github/javaparser/ast/Node;->notifyPropertyChange(Lcom/github/javaparser/ast/observer/ObservableProperty;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 5
    iget-object v0, p0, Lcom/github/javaparser/ast/stmt/SwitchEntry;->statements:Lcom/github/javaparser/ast/NodeList;

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/github/javaparser/ast/NodeList;->setParentNode(Lcom/github/javaparser/ast/Node;)Lcom/github/javaparser/ast/NodeList;

    .line 6
    :cond_1
    iput-object p1, p0, Lcom/github/javaparser/ast/stmt/SwitchEntry;->statements:Lcom/github/javaparser/ast/NodeList;

    .line 7
    invoke-virtual {p0, p1}, Lcom/github/javaparser/ast/Node;->setAsParentNodeOf(Lcom/github/javaparser/ast/NodeList;)V

    return-object p0
.end method

.method public setType(Lcom/github/javaparser/ast/stmt/SwitchEntry$Type;)Lcom/github/javaparser/ast/stmt/SwitchEntry;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "type"
        }
    .end annotation

    invoke-static {p1}, Lcom/github/javaparser/utils/Utils;->assertNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/github/javaparser/ast/stmt/SwitchEntry;->type:Lcom/github/javaparser/ast/stmt/SwitchEntry$Type;

    if-ne p1, v0, :cond_0

    return-object p0

    :cond_0
    sget-object v1, Lcom/github/javaparser/ast/observer/ObservableProperty;->TYPE:Lcom/github/javaparser/ast/observer/ObservableProperty;

    invoke-virtual {p0, v1, v0, p1}, Lcom/github/javaparser/ast/Node;->notifyPropertyChange(Lcom/github/javaparser/ast/observer/ObservableProperty;Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/github/javaparser/ast/stmt/SwitchEntry;->type:Lcom/github/javaparser/ast/stmt/SwitchEntry$Type;

    return-object p0
.end method
