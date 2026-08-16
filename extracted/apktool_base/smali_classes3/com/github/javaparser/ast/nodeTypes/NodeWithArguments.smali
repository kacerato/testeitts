.class public interface abstract Lcom/github/javaparser/ast/nodeTypes/NodeWithArguments;
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
.method private static synthetic lambda$getArgumentPosition$0(Lcom/github/javaparser/ast/expr/Expression;)Lcom/github/javaparser/ast/expr/Expression;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "expr"
        }
    .end annotation

    return-object p0
.end method

.method public static synthetic w(Lcom/github/javaparser/ast/expr/Expression;)Lcom/github/javaparser/ast/expr/Expression;
    .locals 0

    invoke-static {p0}, Lcom/github/javaparser/ast/nodeTypes/NodeWithArguments;->lambda$getArgumentPosition$0(Lcom/github/javaparser/ast/expr/Expression;)Lcom/github/javaparser/ast/expr/Expression;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public addArgument(Lcom/github/javaparser/ast/expr/Expression;)Lcom/github/javaparser/ast/Node;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "arg"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/github/javaparser/ast/expr/Expression;",
            ")TN;"
        }
    .end annotation

    .line 2
    invoke-interface {p0}, Lcom/github/javaparser/ast/nodeTypes/NodeWithArguments;->getArguments()Lcom/github/javaparser/ast/NodeList;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/github/javaparser/ast/NodeList;->add(Lcom/github/javaparser/ast/Node;)Z

    .line 3
    move-object p1, p0

    check-cast p1, Lcom/github/javaparser/ast/Node;

    return-object p1
.end method

.method public addArgument(Ljava/lang/String;)Lcom/github/javaparser/ast/Node;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "arg"
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
    invoke-static {p1}, Lcom/github/javaparser/StaticJavaParser;->parseExpression(Ljava/lang/String;)Lcom/github/javaparser/ast/expr/Expression;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/github/javaparser/ast/nodeTypes/NodeWithArguments;->addArgument(Lcom/github/javaparser/ast/expr/Expression;)Lcom/github/javaparser/ast/Node;

    move-result-object p1

    return-object p1
.end method

.method public getArgument(I)Lcom/github/javaparser/ast/expr/Expression;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "i"
        }
    .end annotation

    invoke-interface {p0}, Lcom/github/javaparser/ast/nodeTypes/NodeWithArguments;->getArguments()Lcom/github/javaparser/ast/NodeList;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/github/javaparser/ast/NodeList;->get(I)Lcom/github/javaparser/ast/Node;

    move-result-object p1

    check-cast p1, Lcom/github/javaparser/ast/expr/Expression;

    return-object p1
.end method

.method public getArgumentPosition(Lcom/github/javaparser/ast/expr/Expression;)I
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "argument"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/github/javaparser/ast/nodeTypes/c;

    invoke-direct {v0}, Lcom/github/javaparser/ast/nodeTypes/c;-><init>()V

    invoke-interface {p0, p1, v0}, Lcom/github/javaparser/ast/nodeTypes/NodeWithArguments;->getArgumentPosition(Lcom/github/javaparser/ast/expr/Expression;Ljava/util/function/Function;)I

    move-result p1

    return p1
.end method

.method public getArgumentPosition(Lcom/github/javaparser/ast/expr/Expression;Ljava/util/function/Function;)I
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "argument",
            "converter"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/github/javaparser/ast/expr/Expression;",
            "Ljava/util/function/Function<",
            "Lcom/github/javaparser/ast/expr/Expression;",
            "Lcom/github/javaparser/ast/expr/Expression;",
            ">;)I"
        }
    .end annotation

    if-eqz p1, :cond_2

    const/4 v0, 0x0

    .line 2
    :goto_0
    invoke-interface {p0}, Lcom/github/javaparser/ast/nodeTypes/NodeWithArguments;->getArguments()Lcom/github/javaparser/ast/NodeList;

    move-result-object v1

    invoke-virtual {v1}, Lcom/github/javaparser/ast/NodeList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 3
    invoke-interface {p0}, Lcom/github/javaparser/ast/nodeTypes/NodeWithArguments;->getArguments()Lcom/github/javaparser/ast/NodeList;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/github/javaparser/ast/NodeList;->get(I)Lcom/github/javaparser/ast/Node;

    move-result-object v1

    check-cast v1, Lcom/github/javaparser/ast/expr/Expression;

    .line 4
    invoke-interface {p2, v1}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/github/javaparser/ast/expr/Expression;

    if-ne v1, p1, :cond_0

    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 5
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1

    .line 6
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1
.end method

.method public abstract getArguments()Lcom/github/javaparser/ast/NodeList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/github/javaparser/ast/NodeList<",
            "Lcom/github/javaparser/ast/expr/Expression;",
            ">;"
        }
    .end annotation
.end method

.method public setArgument(ILcom/github/javaparser/ast/expr/Expression;)Lcom/github/javaparser/ast/Node;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "i",
            "arg"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/github/javaparser/ast/expr/Expression;",
            ")TN;"
        }
    .end annotation

    invoke-interface {p0}, Lcom/github/javaparser/ast/nodeTypes/NodeWithArguments;->getArguments()Lcom/github/javaparser/ast/NodeList;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/github/javaparser/ast/NodeList;->set(ILcom/github/javaparser/ast/Node;)Lcom/github/javaparser/ast/Node;

    move-object p1, p0

    check-cast p1, Lcom/github/javaparser/ast/Node;

    return-object p1
.end method

.method public abstract setArguments(Lcom/github/javaparser/ast/NodeList;)Lcom/github/javaparser/ast/Node;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "arguments"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/github/javaparser/ast/NodeList<",
            "Lcom/github/javaparser/ast/expr/Expression;",
            ">;)TN;"
        }
    .end annotation
.end method
