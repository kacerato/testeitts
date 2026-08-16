.class public interface abstract Lcom/github/javaparser/ast/nodeTypes/modifiers/NodeWithAbstractModifier;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/github/javaparser/ast/nodeTypes/NodeWithModifiers;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<N:",
        "Lcom/github/javaparser/ast/Node;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/github/javaparser/ast/nodeTypes/NodeWithModifiers<",
        "TN;>;"
    }
.end annotation


# virtual methods
.method public isAbstract()Z
    .locals 1

    sget-object v0, Lcom/github/javaparser/ast/Modifier$Keyword;->ABSTRACT:Lcom/github/javaparser/ast/Modifier$Keyword;

    invoke-interface {p0, v0}, Lcom/github/javaparser/ast/nodeTypes/NodeWithModifiers;->hasModifier(Lcom/github/javaparser/ast/Modifier$Keyword;)Z

    move-result v0

    return v0
.end method

.method public setAbstract(Z)Lcom/github/javaparser/ast/Node;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "set"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)TN;"
        }
    .end annotation

    sget-object v0, Lcom/github/javaparser/ast/Modifier$Keyword;->ABSTRACT:Lcom/github/javaparser/ast/Modifier$Keyword;

    invoke-interface {p0, v0, p1}, Lcom/github/javaparser/ast/nodeTypes/NodeWithModifiers;->setModifier(Lcom/github/javaparser/ast/Modifier$Keyword;Z)Lcom/github/javaparser/ast/Node;

    move-result-object p1

    return-object p1
.end method
