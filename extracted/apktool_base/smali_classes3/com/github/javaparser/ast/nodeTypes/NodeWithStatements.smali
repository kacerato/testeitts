.class public interface abstract Lcom/github/javaparser/ast/nodeTypes/NodeWithStatements;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<N:",
        "Lcom/github/javaparser/ast/Node;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public addAndGetStatement(Lcom/github/javaparser/ast/expr/Expression;)Lcom/github/javaparser/ast/stmt/ExpressionStmt;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "expr"
        }
    .end annotation

    .line 3
    new-instance v0, Lcom/github/javaparser/ast/stmt/ExpressionStmt;

    invoke-direct {v0, p1}, Lcom/github/javaparser/ast/stmt/ExpressionStmt;-><init>(Lcom/github/javaparser/ast/expr/Expression;)V

    .line 4
    invoke-interface {p0, v0}, Lcom/github/javaparser/ast/nodeTypes/NodeWithStatements;->addAndGetStatement(Lcom/github/javaparser/ast/stmt/Statement;)Lcom/github/javaparser/ast/stmt/Statement;

    move-result-object p1

    check-cast p1, Lcom/github/javaparser/ast/stmt/ExpressionStmt;

    return-object p1
.end method

.method public addAndGetStatement(Ljava/lang/String;)Lcom/github/javaparser/ast/stmt/ExpressionStmt;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "statement"
        }
    .end annotation

    .line 5
    new-instance v0, Lcom/github/javaparser/ast/expr/NameExpr;

    invoke-direct {v0, p1}, Lcom/github/javaparser/ast/expr/NameExpr;-><init>(Ljava/lang/String;)V

    invoke-interface {p0, v0}, Lcom/github/javaparser/ast/nodeTypes/NodeWithStatements;->addAndGetStatement(Lcom/github/javaparser/ast/expr/Expression;)Lcom/github/javaparser/ast/stmt/ExpressionStmt;

    move-result-object p1

    return-object p1
.end method

.method public addAndGetStatement(ILcom/github/javaparser/ast/stmt/Statement;)Lcom/github/javaparser/ast/stmt/Statement;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x10
        }
        names = {
            "index",
            "statement"
        }
    .end annotation

    .line 2
    invoke-interface {p0}, Lcom/github/javaparser/ast/nodeTypes/NodeWithStatements;->getStatements()Lcom/github/javaparser/ast/NodeList;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/github/javaparser/ast/NodeList;->add(ILcom/github/javaparser/ast/Node;)V

    return-object p2
.end method

.method public addAndGetStatement(Lcom/github/javaparser/ast/stmt/Statement;)Lcom/github/javaparser/ast/stmt/Statement;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "statement"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Lcom/github/javaparser/ast/stmt/Statement;",
            ">(TA;)TA;"
        }
    .end annotation

    .line 1
    invoke-interface {p0}, Lcom/github/javaparser/ast/nodeTypes/NodeWithStatements;->getStatements()Lcom/github/javaparser/ast/NodeList;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/github/javaparser/ast/NodeList;->add(Lcom/github/javaparser/ast/Node;)Z

    return-object p1
.end method

.method public addStatement(ILcom/github/javaparser/ast/expr/Expression;)Lcom/github/javaparser/ast/Node;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x10
        }
        names = {
            "index",
            "expr"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/github/javaparser/ast/expr/Expression;",
            ")TN;"
        }
    .end annotation

    .line 7
    new-instance v0, Lcom/github/javaparser/ast/stmt/ExpressionStmt;

    invoke-direct {v0, p2}, Lcom/github/javaparser/ast/stmt/ExpressionStmt;-><init>(Lcom/github/javaparser/ast/expr/Expression;)V

    .line 8
    invoke-interface {p0, p1, v0}, Lcom/github/javaparser/ast/nodeTypes/NodeWithStatements;->addStatement(ILcom/github/javaparser/ast/stmt/Statement;)Lcom/github/javaparser/ast/Node;

    move-result-object p1

    return-object p1
.end method

.method public addStatement(ILcom/github/javaparser/ast/stmt/Statement;)Lcom/github/javaparser/ast/Node;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x10
        }
        names = {
            "index",
            "statement"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/github/javaparser/ast/stmt/Statement;",
            ")TN;"
        }
    .end annotation

    .line 3
    invoke-interface {p0}, Lcom/github/javaparser/ast/nodeTypes/NodeWithStatements;->getStatements()Lcom/github/javaparser/ast/NodeList;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/github/javaparser/ast/NodeList;->add(ILcom/github/javaparser/ast/Node;)V

    .line 4
    move-object p1, p0

    check-cast p1, Lcom/github/javaparser/ast/Node;

    return-object p1
.end method

.method public addStatement(Lcom/github/javaparser/ast/expr/Expression;)Lcom/github/javaparser/ast/Node;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "expr"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/github/javaparser/ast/expr/Expression;",
            ")TN;"
        }
    .end annotation

    .line 5
    new-instance v0, Lcom/github/javaparser/ast/stmt/ExpressionStmt;

    invoke-direct {v0, p1}, Lcom/github/javaparser/ast/stmt/ExpressionStmt;-><init>(Lcom/github/javaparser/ast/expr/Expression;)V

    invoke-interface {p0, v0}, Lcom/github/javaparser/ast/nodeTypes/NodeWithStatements;->addStatement(Lcom/github/javaparser/ast/stmt/Statement;)Lcom/github/javaparser/ast/Node;

    move-result-object p1

    return-object p1
.end method

.method public addStatement(Lcom/github/javaparser/ast/stmt/Statement;)Lcom/github/javaparser/ast/Node;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "statement"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/github/javaparser/ast/stmt/Statement;",
            ")TN;"
        }
    .end annotation

    .line 1
    invoke-interface {p0}, Lcom/github/javaparser/ast/nodeTypes/NodeWithStatements;->getStatements()Lcom/github/javaparser/ast/NodeList;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/github/javaparser/ast/NodeList;->add(Lcom/github/javaparser/ast/Node;)Z

    .line 2
    move-object p1, p0

    check-cast p1, Lcom/github/javaparser/ast/Node;

    return-object p1
.end method

.method public addStatement(Ljava/lang/String;)Lcom/github/javaparser/ast/Node;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "statement"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TN;"
        }
    .end annotation

    .line 6
    invoke-static {p1}, Lcom/github/javaparser/StaticJavaParser;->parseStatement(Ljava/lang/String;)Lcom/github/javaparser/ast/stmt/Statement;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/github/javaparser/ast/nodeTypes/NodeWithStatements;->addStatement(Lcom/github/javaparser/ast/stmt/Statement;)Lcom/github/javaparser/ast/Node;

    move-result-object p1

    return-object p1
.end method

.method public copyStatements(Lcom/github/javaparser/ast/NodeList;)Lcom/github/javaparser/ast/Node;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "nodeList"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/github/javaparser/ast/NodeList<",
            "Lcom/github/javaparser/ast/stmt/Statement;",
            ">;)TN;"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lcom/github/javaparser/ast/NodeList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/github/javaparser/ast/stmt/Statement;

    .line 2
    invoke-virtual {v0}, Lcom/github/javaparser/ast/stmt/Statement;->clone()Lcom/github/javaparser/ast/stmt/Statement;

    move-result-object v0

    invoke-interface {p0, v0}, Lcom/github/javaparser/ast/nodeTypes/NodeWithStatements;->addStatement(Lcom/github/javaparser/ast/stmt/Statement;)Lcom/github/javaparser/ast/Node;

    goto :goto_0

    .line 3
    :cond_0
    move-object p1, p0

    check-cast p1, Lcom/github/javaparser/ast/Node;

    return-object p1
.end method

.method public copyStatements(Lcom/github/javaparser/ast/nodeTypes/NodeWithStatements;)Lcom/github/javaparser/ast/Node;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "other"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/github/javaparser/ast/nodeTypes/NodeWithStatements<",
            "*>;)TN;"
        }
    .end annotation

    .line 4
    invoke-interface {p1}, Lcom/github/javaparser/ast/nodeTypes/NodeWithStatements;->getStatements()Lcom/github/javaparser/ast/NodeList;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/github/javaparser/ast/nodeTypes/NodeWithStatements;->copyStatements(Lcom/github/javaparser/ast/NodeList;)Lcom/github/javaparser/ast/Node;

    move-result-object p1

    return-object p1
.end method

.method public getStatement(I)Lcom/github/javaparser/ast/stmt/Statement;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "i"
        }
    .end annotation

    invoke-interface {p0}, Lcom/github/javaparser/ast/nodeTypes/NodeWithStatements;->getStatements()Lcom/github/javaparser/ast/NodeList;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/github/javaparser/ast/NodeList;->get(I)Lcom/github/javaparser/ast/Node;

    move-result-object p1

    check-cast p1, Lcom/github/javaparser/ast/stmt/Statement;

    return-object p1
.end method

.method public abstract getStatements()Lcom/github/javaparser/ast/NodeList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/github/javaparser/ast/NodeList<",
            "Lcom/github/javaparser/ast/stmt/Statement;",
            ">;"
        }
    .end annotation
.end method

.method public isEmpty()Z
    .locals 1

    invoke-interface {p0}, Lcom/github/javaparser/ast/nodeTypes/NodeWithStatements;->getStatements()Lcom/github/javaparser/ast/NodeList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/github/javaparser/ast/NodeList;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public setStatement(ILcom/github/javaparser/ast/stmt/Statement;)Lcom/github/javaparser/ast/Node;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "i",
            "statement"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/github/javaparser/ast/stmt/Statement;",
            ")TN;"
        }
    .end annotation

    invoke-interface {p0}, Lcom/github/javaparser/ast/nodeTypes/NodeWithStatements;->getStatements()Lcom/github/javaparser/ast/NodeList;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/github/javaparser/ast/NodeList;->set(ILcom/github/javaparser/ast/Node;)Lcom/github/javaparser/ast/Node;

    move-object p1, p0

    check-cast p1, Lcom/github/javaparser/ast/Node;

    return-object p1
.end method

.method public abstract setStatements(Lcom/github/javaparser/ast/NodeList;)Lcom/github/javaparser/ast/Node;
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
            ">;)TN;"
        }
    .end annotation
.end method
