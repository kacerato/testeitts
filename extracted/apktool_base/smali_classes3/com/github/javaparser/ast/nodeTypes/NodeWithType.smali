.class public interface abstract Lcom/github/javaparser/ast/nodeTypes/NodeWithType;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<N:",
        "Lcom/github/javaparser/ast/Node;",
        "T:",
        "Lcom/github/javaparser/ast/type/Type;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract getType()Lcom/github/javaparser/ast/type/Type;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation
.end method

.method public getTypeAsString()Ljava/lang/String;
    .locals 1

    invoke-interface {p0}, Lcom/github/javaparser/ast/nodeTypes/NodeWithType;->getType()Lcom/github/javaparser/ast/type/Type;

    move-result-object v0

    invoke-virtual {v0}, Lcom/github/javaparser/ast/type/Type;->asString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public abstract setType(Lcom/github/javaparser/ast/type/Type;)Lcom/github/javaparser/ast/Node;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "type"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)TN;"
        }
    .end annotation
.end method

.method public setType(Ljava/lang/Class;)Lcom/github/javaparser/ast/Node;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "typeClass"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)TN;"
        }
    .end annotation

    .line 1
    invoke-interface {p0, p1}, Lcom/github/javaparser/ast/nodeTypes/NodeWithType;->tryAddImportToParentCompilationUnit(Ljava/lang/Class;)V

    .line 2
    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/github/javaparser/StaticJavaParser;->parseType(Ljava/lang/String;)Lcom/github/javaparser/ast/type/Type;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/github/javaparser/ast/nodeTypes/NodeWithType;->setType(Lcom/github/javaparser/ast/type/Type;)Lcom/github/javaparser/ast/Node;

    move-result-object p1

    return-object p1
.end method

.method public setType(Ljava/lang/String;)Lcom/github/javaparser/ast/Node;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "typeString"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TN;"
        }
    .end annotation

    .line 3
    invoke-static {p1}, Lcom/github/javaparser/utils/Utils;->assertNonEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 4
    invoke-static {p1}, Lcom/github/javaparser/StaticJavaParser;->parseType(Ljava/lang/String;)Lcom/github/javaparser/ast/type/Type;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/github/javaparser/ast/nodeTypes/NodeWithType;->setType(Lcom/github/javaparser/ast/type/Type;)Lcom/github/javaparser/ast/Node;

    move-result-object p1

    return-object p1
.end method

.method public abstract tryAddImportToParentCompilationUnit(Ljava/lang/Class;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "clazz"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation
.end method
