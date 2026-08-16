.class public interface abstract Lcom/github/javaparser/ast/nodeTypes/NodeWithOptionalBlockStmt;
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
.method public createBody()Lcom/github/javaparser/ast/stmt/BlockStmt;
    .locals 1

    new-instance v0, Lcom/github/javaparser/ast/stmt/BlockStmt;

    invoke-direct {v0}, Lcom/github/javaparser/ast/stmt/BlockStmt;-><init>()V

    invoke-interface {p0, v0}, Lcom/github/javaparser/ast/nodeTypes/NodeWithOptionalBlockStmt;->setBody(Lcom/github/javaparser/ast/stmt/BlockStmt;)Lcom/github/javaparser/ast/Node;

    return-object v0
.end method

.method public abstract getBody()Ljava/util/Optional;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "Lcom/github/javaparser/ast/stmt/BlockStmt;",
            ">;"
        }
    .end annotation
.end method

.method public abstract removeBody()Lcom/github/javaparser/ast/Node;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TN;"
        }
    .end annotation
.end method

.method public abstract setBody(Lcom/github/javaparser/ast/stmt/BlockStmt;)Lcom/github/javaparser/ast/Node;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "block"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/github/javaparser/ast/stmt/BlockStmt;",
            ")TN;"
        }
    .end annotation
.end method
