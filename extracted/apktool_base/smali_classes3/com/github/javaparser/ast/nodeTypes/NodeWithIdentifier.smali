.class public interface abstract Lcom/github/javaparser/ast/nodeTypes/NodeWithIdentifier;
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
.method public getId()Ljava/lang/String;
    .locals 1

    invoke-interface {p0}, Lcom/github/javaparser/ast/nodeTypes/NodeWithIdentifier;->getIdentifier()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public abstract getIdentifier()Ljava/lang/String;
.end method

.method public setId(Ljava/lang/String;)Lcom/github/javaparser/ast/Node;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "identifier"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TN;"
        }
    .end annotation

    invoke-static {p1}, Lcom/github/javaparser/utils/Utils;->assertNonEmpty(Ljava/lang/String;)Ljava/lang/String;

    invoke-interface {p0, p1}, Lcom/github/javaparser/ast/nodeTypes/NodeWithIdentifier;->setIdentifier(Ljava/lang/String;)Lcom/github/javaparser/ast/Node;

    move-result-object p1

    return-object p1
.end method

.method public abstract setIdentifier(Ljava/lang/String;)Lcom/github/javaparser/ast/Node;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "identifier"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TN;"
        }
    .end annotation
.end method
