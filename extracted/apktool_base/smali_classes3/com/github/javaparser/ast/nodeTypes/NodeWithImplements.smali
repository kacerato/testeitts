.class public interface abstract Lcom/github/javaparser/ast/nodeTypes/NodeWithImplements;
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
.method public addImplementedType(Lcom/github/javaparser/ast/type/ClassOrInterfaceType;)Lcom/github/javaparser/ast/Node;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "implement"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/github/javaparser/ast/type/ClassOrInterfaceType;",
            ")TN;"
        }
    .end annotation

    .line 1
    invoke-interface {p0}, Lcom/github/javaparser/ast/nodeTypes/NodeWithImplements;->getImplementedTypes()Lcom/github/javaparser/ast/NodeList;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/github/javaparser/ast/NodeList;->add(Lcom/github/javaparser/ast/Node;)Z

    .line 2
    move-object p1, p0

    check-cast p1, Lcom/github/javaparser/ast/Node;

    return-object p1
.end method

.method public addImplementedType(Ljava/lang/Class;)Lcom/github/javaparser/ast/Node;
    .locals 0
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
            "*>;)TN;"
        }
    .end annotation

    .line 5
    invoke-interface {p0, p1}, Lcom/github/javaparser/ast/nodeTypes/NodeWithImplements;->tryAddImportToParentCompilationUnit(Ljava/lang/Class;)V

    .line 6
    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/github/javaparser/ast/nodeTypes/NodeWithImplements;->addImplementedType(Ljava/lang/String;)Lcom/github/javaparser/ast/Node;

    move-result-object p1

    return-object p1
.end method

.method public addImplementedType(Ljava/lang/String;)Lcom/github/javaparser/ast/Node;
    .locals 1
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

    .line 3
    invoke-interface {p0}, Lcom/github/javaparser/ast/nodeTypes/NodeWithImplements;->getImplementedTypes()Lcom/github/javaparser/ast/NodeList;

    move-result-object v0

    invoke-static {p1}, Lcom/github/javaparser/StaticJavaParser;->parseClassOrInterfaceType(Ljava/lang/String;)Lcom/github/javaparser/ast/type/ClassOrInterfaceType;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/github/javaparser/ast/NodeList;->add(Lcom/github/javaparser/ast/Node;)Z

    .line 4
    move-object p1, p0

    check-cast p1, Lcom/github/javaparser/ast/Node;

    return-object p1
.end method

.method public addImplements(Ljava/lang/Class;)Lcom/github/javaparser/ast/Node;
    .locals 0
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
            "*>;)TN;"
        }
    .end annotation

    .line 2
    invoke-interface {p0, p1}, Lcom/github/javaparser/ast/nodeTypes/NodeWithImplements;->addImplementedType(Ljava/lang/Class;)Lcom/github/javaparser/ast/Node;

    move-result-object p1

    return-object p1
.end method

.method public addImplements(Ljava/lang/String;)Lcom/github/javaparser/ast/Node;
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
    invoke-interface {p0, p1}, Lcom/github/javaparser/ast/nodeTypes/NodeWithImplements;->addImplementedType(Ljava/lang/String;)Lcom/github/javaparser/ast/Node;

    move-result-object p1

    return-object p1
.end method

.method public abstract getImplementedTypes()Lcom/github/javaparser/ast/NodeList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/github/javaparser/ast/NodeList<",
            "Lcom/github/javaparser/ast/type/ClassOrInterfaceType;",
            ">;"
        }
    .end annotation
.end method

.method public getImplementedTypes(I)Lcom/github/javaparser/ast/type/ClassOrInterfaceType;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "i"
        }
    .end annotation

    .line 1
    invoke-interface {p0}, Lcom/github/javaparser/ast/nodeTypes/NodeWithImplements;->getImplementedTypes()Lcom/github/javaparser/ast/NodeList;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/github/javaparser/ast/NodeList;->get(I)Lcom/github/javaparser/ast/Node;

    move-result-object p1

    check-cast p1, Lcom/github/javaparser/ast/type/ClassOrInterfaceType;

    return-object p1
.end method

.method public setImplementedType(ILcom/github/javaparser/ast/type/ClassOrInterfaceType;)Lcom/github/javaparser/ast/Node;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "i",
            "implement"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/github/javaparser/ast/type/ClassOrInterfaceType;",
            ")TN;"
        }
    .end annotation

    invoke-interface {p0}, Lcom/github/javaparser/ast/nodeTypes/NodeWithImplements;->getImplementedTypes()Lcom/github/javaparser/ast/NodeList;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/github/javaparser/ast/NodeList;->set(ILcom/github/javaparser/ast/Node;)Lcom/github/javaparser/ast/Node;

    move-object p1, p0

    check-cast p1, Lcom/github/javaparser/ast/Node;

    return-object p1
.end method

.method public abstract setImplementedTypes(Lcom/github/javaparser/ast/NodeList;)Lcom/github/javaparser/ast/Node;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "implementsList"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/github/javaparser/ast/NodeList<",
            "Lcom/github/javaparser/ast/type/ClassOrInterfaceType;",
            ">;)TN;"
        }
    .end annotation
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
