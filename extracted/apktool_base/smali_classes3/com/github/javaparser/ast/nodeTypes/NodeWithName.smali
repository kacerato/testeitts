.class public interface abstract Lcom/github/javaparser/ast/nodeTypes/NodeWithName;
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
.method public abstract getName()Lcom/github/javaparser/ast/expr/Name;
.end method

.method public getNameAsString()Ljava/lang/String;
    .locals 1

    invoke-interface {p0}, Lcom/github/javaparser/ast/nodeTypes/NodeWithName;->getName()Lcom/github/javaparser/ast/expr/Name;

    move-result-object v0

    invoke-virtual {v0}, Lcom/github/javaparser/ast/expr/Name;->asString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public abstract setName(Lcom/github/javaparser/ast/expr/Name;)Lcom/github/javaparser/ast/Node;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "name"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/github/javaparser/ast/expr/Name;",
            ")TN;"
        }
    .end annotation
.end method

.method public setName(Ljava/lang/String;)Lcom/github/javaparser/ast/Node;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "name"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TN;"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lcom/github/javaparser/utils/Utils;->assertNonEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 2
    invoke-static {p1}, Lcom/github/javaparser/StaticJavaParser;->parseName(Ljava/lang/String;)Lcom/github/javaparser/ast/expr/Name;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/github/javaparser/ast/nodeTypes/NodeWithName;->setName(Lcom/github/javaparser/ast/expr/Name;)Lcom/github/javaparser/ast/Node;

    move-result-object p1

    return-object p1
.end method
