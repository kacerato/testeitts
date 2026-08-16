.class public interface abstract Lcom/github/javaparser/ast/nodeTypes/NodeWithDeclaration;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public getDeclarationAsString()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-interface {p0, v0, v0, v0}, Lcom/github/javaparser/ast/nodeTypes/NodeWithDeclaration;->getDeclarationAsString(ZZZ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDeclarationAsString(ZZ)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "includingModifiers",
            "includingThrows"
        }
    .end annotation

    const/4 v0, 0x1

    .line 2
    invoke-interface {p0, p1, p2, v0}, Lcom/github/javaparser/ast/nodeTypes/NodeWithDeclaration;->getDeclarationAsString(ZZZ)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public abstract getDeclarationAsString(ZZZ)Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "includingModifiers",
            "includingThrows",
            "includingParameterName"
        }
    .end annotation
.end method
