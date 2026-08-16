.class public abstract Lcom/github/javaparser/ast/validator/VisitorValidator;
.super Lcom/github/javaparser/ast/visitor/VoidVisitorAdapter;
.source "SourceFile"

# interfaces
.implements Lcom/github/javaparser/ast/validator/Validator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/github/javaparser/ast/visitor/VoidVisitorAdapter<",
        "Lcom/github/javaparser/ast/validator/ProblemReporter;",
        ">;",
        "Lcom/github/javaparser/ast/validator/Validator;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/github/javaparser/ast/visitor/VoidVisitorAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(Lcom/github/javaparser/ast/Node;Lcom/github/javaparser/ast/validator/ProblemReporter;)V
    .locals 0
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

    .line 2
    invoke-interface {p1, p0, p2}, Lcom/github/javaparser/ast/visitor/Visitable;->accept(Lcom/github/javaparser/ast/visitor/VoidVisitor;Ljava/lang/Object;)V

    return-void
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

    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/ast/validator/VisitorValidator;->accept(Lcom/github/javaparser/ast/Node;Lcom/github/javaparser/ast/validator/ProblemReporter;)V

    return-void
.end method
