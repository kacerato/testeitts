.class public interface abstract Lcom/github/javaparser/ast/validator/TypedValidator;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/BiConsumer;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<N:",
        "Lcom/github/javaparser/ast/Node;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/function/BiConsumer<",
        "TN;",
        "Lcom/github/javaparser/ast/validator/ProblemReporter;",
        ">;"
    }
.end annotation


# virtual methods
.method public abstract accept(Lcom/github/javaparser/ast/Node;Lcom/github/javaparser/ast/validator/ProblemReporter;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "node",
            "problemReporter"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TN;",
            "Lcom/github/javaparser/ast/validator/ProblemReporter;",
            ")V"
        }
    .end annotation
.end method

.method public bridge synthetic accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            "node",
            "problemReporter"
        }
    .end annotation

    .line 1
    check-cast p1, Lcom/github/javaparser/ast/Node;

    check-cast p2, Lcom/github/javaparser/ast/validator/ProblemReporter;

    invoke-interface {p0, p1, p2}, Lcom/github/javaparser/ast/validator/TypedValidator;->accept(Lcom/github/javaparser/ast/Node;Lcom/github/javaparser/ast/validator/ProblemReporter;)V

    return-void
.end method

.method public processor()Lcom/github/javaparser/Processor;
    .locals 1

    new-instance v0, Lcom/github/javaparser/ast/validator/TypedValidator$1;

    invoke-direct {v0, p0}, Lcom/github/javaparser/ast/validator/TypedValidator$1;-><init>(Lcom/github/javaparser/ast/validator/TypedValidator;)V

    return-object v0
.end method
