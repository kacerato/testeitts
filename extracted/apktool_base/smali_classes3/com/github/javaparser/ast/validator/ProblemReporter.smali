.class public Lcom/github/javaparser/ast/validator/ProblemReporter;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final problemConsumer:Ljava/util/function/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Consumer<",
            "Lcom/github/javaparser/Problem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/function/Consumer;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "problemConsumer"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Lcom/github/javaparser/Problem;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/github/javaparser/ast/validator/ProblemReporter;->problemConsumer:Ljava/util/function/Consumer;

    return-void
.end method


# virtual methods
.method public varargs report(Lcom/github/javaparser/TokenRange;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "range",
            "message",
            "args"
        }
    .end annotation

    .line 3
    iget-object v0, p0, Lcom/github/javaparser/ast/validator/ProblemReporter;->problemConsumer:Ljava/util/function/Consumer;

    new-instance v1, Lcom/github/javaparser/Problem;

    invoke-static {p2, p3}, Lcom/github/javaparser/utils/CodeGenerationUtils;->f(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    const/4 p3, 0x0

    invoke-direct {v1, p2, p1, p3}, Lcom/github/javaparser/Problem;-><init>(Ljava/lang/String;Lcom/github/javaparser/TokenRange;Ljava/lang/Throwable;)V

    invoke-interface {v0, v1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method

.method public varargs report(Lcom/github/javaparser/ast/nodeTypes/NodeWithTokenRange;Lcom/github/javaparser/ast/validator/language_level_validations/UpgradeJavaMessage;[Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10
        }
        names = {
            "node",
            "message",
            "args"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/github/javaparser/ast/nodeTypes/NodeWithTokenRange<",
            "*>;",
            "Lcom/github/javaparser/ast/validator/language_level_validations/UpgradeJavaMessage;",
            "[",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Lcom/github/javaparser/ast/nodeTypes/NodeWithTokenRange;->getTokenRange()Ljava/util/Optional;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/github/javaparser/TokenRange;

    invoke-virtual {p2}, Lcom/github/javaparser/ast/validator/language_level_validations/UpgradeJavaMessage;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2, p3}, Lcom/github/javaparser/ast/validator/ProblemReporter;->report(Lcom/github/javaparser/TokenRange;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public varargs report(Lcom/github/javaparser/ast/nodeTypes/NodeWithTokenRange;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "node",
            "message",
            "args"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/github/javaparser/ast/nodeTypes/NodeWithTokenRange<",
            "*>;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .line 2
    invoke-interface {p1}, Lcom/github/javaparser/ast/nodeTypes/NodeWithTokenRange;->getTokenRange()Ljava/util/Optional;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/github/javaparser/TokenRange;

    invoke-virtual {p0, p1, p2, p3}, Lcom/github/javaparser/ast/validator/ProblemReporter;->report(Lcom/github/javaparser/TokenRange;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method
