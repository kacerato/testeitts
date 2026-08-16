.class public interface abstract Lcom/github/javaparser/ast/nodeTypes/NodeWithBody;
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


# direct methods
.method private static synthetic lambda$hasEmptyBody$0(Lcom/github/javaparser/ast/stmt/BlockStmt;)Ljava/lang/Boolean;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "bs"
        }
    .end annotation

    invoke-interface {p0}, Lcom/github/javaparser/ast/nodeTypes/NodeWithStatements;->isEmpty()Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic y(Lcom/github/javaparser/ast/stmt/BlockStmt;)Ljava/lang/Boolean;
    .locals 0

    invoke-static {p0}, Lcom/github/javaparser/ast/nodeTypes/NodeWithBody;->lambda$hasEmptyBody$0(Lcom/github/javaparser/ast/stmt/BlockStmt;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public createBlockStatementAsBody()Lcom/github/javaparser/ast/stmt/BlockStmt;
    .locals 1

    new-instance v0, Lcom/github/javaparser/ast/stmt/BlockStmt;

    invoke-direct {v0}, Lcom/github/javaparser/ast/stmt/BlockStmt;-><init>()V

    invoke-interface {p0, v0}, Lcom/github/javaparser/ast/nodeTypes/NodeWithBody;->setBody(Lcom/github/javaparser/ast/stmt/Statement;)Lcom/github/javaparser/ast/Node;

    return-object v0
.end method

.method public abstract getBody()Lcom/github/javaparser/ast/stmt/Statement;
.end method

.method public hasEmptyBody()Z
    .locals 3

    invoke-interface {p0}, Lcom/github/javaparser/ast/nodeTypes/NodeWithBody;->getBody()Lcom/github/javaparser/ast/stmt/Statement;

    move-result-object v0

    invoke-virtual {v0}, Lcom/github/javaparser/ast/stmt/Statement;->toBlockStmt()Ljava/util/Optional;

    move-result-object v1

    new-instance v2, Lcom/github/javaparser/ast/nodeTypes/d;

    invoke-direct {v2}, Lcom/github/javaparser/ast/nodeTypes/d;-><init>()V

    invoke-virtual {v1, v2}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {v0}, Lcom/github/javaparser/ast/stmt/Statement;->isEmptyStmt()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public abstract setBody(Lcom/github/javaparser/ast/stmt/Statement;)Lcom/github/javaparser/ast/Node;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "body"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/github/javaparser/ast/stmt/Statement;",
            ")TN;"
        }
    .end annotation
.end method
