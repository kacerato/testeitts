.class public interface abstract Lcom/github/javaparser/resolution/declarations/AssociableToAST;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public toAst()Ljava/util/Optional;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "Lcom/github/javaparser/ast/Node;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object v0

    return-object v0
.end method

.method public toAst(Ljava/lang/Class;)Ljava/util/Optional;
    .locals 2
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
            "<N:",
            "Lcom/github/javaparser/ast/Node;",
            ">(",
            "Ljava/lang/Class<",
            "TN;>;)",
            "Ljava/util/Optional<",
            "TN;>;"
        }
    .end annotation

    .line 2
    invoke-interface {p0}, Lcom/github/javaparser/resolution/declarations/AssociableToAST;->toAst()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Lcom/github/javaparser/printer/f;

    invoke-direct {v1, p1}, Lcom/github/javaparser/printer/f;-><init>(Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->filter(Ljava/util/function/Predicate;)Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lcom/github/javaparser/resolution/declarations/a;

    invoke-direct {v1, p1}, Lcom/github/javaparser/resolution/declarations/a;-><init>(Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object p1

    return-object p1
.end method
