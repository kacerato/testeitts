.class public interface abstract Lcom/github/javaparser/ast/validator/Validator;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/github/javaparser/ast/validator/TypedValidator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/github/javaparser/ast/validator/TypedValidator<",
        "Lcom/github/javaparser/ast/Node;",
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

    invoke-interface {p0, p1, p2}, Lcom/github/javaparser/ast/validator/Validator;->accept(Lcom/github/javaparser/ast/Node;Lcom/github/javaparser/ast/validator/ProblemReporter;)V

    return-void
.end method
