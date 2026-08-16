.class public Lcom/github/javaparser/ast/validator/SimpleValidator;
.super Lcom/github/javaparser/ast/validator/SingleNodeTypeValidator;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<N:",
        "Lcom/github/javaparser/ast/Node;",
        ">",
        "Lcom/github/javaparser/ast/validator/SingleNodeTypeValidator<",
        "TN;>;"
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/Class;Ljava/util/function/Predicate;Ljava/util/function/BiConsumer;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "type",
            "condition",
            "problemSupplier"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "TN;>;",
            "Ljava/util/function/Predicate<",
            "TN;>;",
            "Ljava/util/function/BiConsumer<",
            "TN;",
            "Lcom/github/javaparser/ast/validator/ProblemReporter;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Lcom/github/javaparser/ast/validator/a;

    invoke-direct {v0, p2, p3}, Lcom/github/javaparser/ast/validator/a;-><init>(Ljava/util/function/Predicate;Ljava/util/function/BiConsumer;)V

    invoke-direct {p0, p1, v0}, Lcom/github/javaparser/ast/validator/SingleNodeTypeValidator;-><init>(Ljava/lang/Class;Lcom/github/javaparser/ast/validator/TypedValidator;)V

    return-void
.end method

.method public static synthetic b(Ljava/util/function/Predicate;Ljava/util/function/BiConsumer;Lcom/github/javaparser/ast/Node;Lcom/github/javaparser/ast/validator/ProblemReporter;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/github/javaparser/ast/validator/SimpleValidator;->lambda$new$0(Ljava/util/function/Predicate;Ljava/util/function/BiConsumer;Lcom/github/javaparser/ast/Node;Lcom/github/javaparser/ast/validator/ProblemReporter;)V

    return-void
.end method

.method private static synthetic lambda$new$0(Ljava/util/function/Predicate;Ljava/util/function/BiConsumer;Lcom/github/javaparser/ast/Node;Lcom/github/javaparser/ast/validator/ProblemReporter;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010,
            0x1000,
            0x1000
        }
        names = {
            "condition",
            "problemSupplier",
            "node",
            "problemReporter"
        }
    .end annotation

    invoke-interface {p0, p2}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-interface {p1, p2, p3}, Ljava/util/function/BiConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method
