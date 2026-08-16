.class Lcom/github/javaparser/ast/validator/TypedValidator$1;
.super Lcom/github/javaparser/Processor;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/github/javaparser/ast/validator/TypedValidator;->processor()Lcom/github/javaparser/Processor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/github/javaparser/ast/validator/TypedValidator;


# direct methods
.method public constructor <init>(Lcom/github/javaparser/ast/validator/TypedValidator;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    iput-object p1, p0, Lcom/github/javaparser/ast/validator/TypedValidator$1;->this$0:Lcom/github/javaparser/ast/validator/TypedValidator;

    invoke-direct {p0}, Lcom/github/javaparser/Processor;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/github/javaparser/ParseResult;Lcom/github/javaparser/Problem;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/github/javaparser/ast/validator/TypedValidator$1;->lambda$null$0(Lcom/github/javaparser/ParseResult;Lcom/github/javaparser/Problem;)V

    return-void
.end method

.method public static synthetic b(Lcom/github/javaparser/ast/validator/TypedValidator$1;Lcom/github/javaparser/ParseResult;Lcom/github/javaparser/ast/Node;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/github/javaparser/ast/validator/TypedValidator$1;->lambda$postProcess$1(Lcom/github/javaparser/ParseResult;Lcom/github/javaparser/ast/Node;)V

    return-void
.end method

.method private static synthetic lambda$null$0(Lcom/github/javaparser/ParseResult;Lcom/github/javaparser/Problem;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1000
        }
        names = {
            "result",
            "problem"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/github/javaparser/ParseResult;->getProblems()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private synthetic lambda$postProcess$1(Lcom/github/javaparser/ParseResult;Lcom/github/javaparser/ast/Node;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1000
        }
        names = {
            "result",
            "node"
        }
    .end annotation

    iget-object v0, p0, Lcom/github/javaparser/ast/validator/TypedValidator$1;->this$0:Lcom/github/javaparser/ast/validator/TypedValidator;

    new-instance v1, Lcom/github/javaparser/ast/validator/ProblemReporter;

    new-instance v2, Lcom/github/javaparser/ast/validator/d;

    invoke-direct {v2, p1}, Lcom/github/javaparser/ast/validator/d;-><init>(Lcom/github/javaparser/ParseResult;)V

    invoke-direct {v1, v2}, Lcom/github/javaparser/ast/validator/ProblemReporter;-><init>(Ljava/util/function/Consumer;)V

    invoke-interface {v0, p2, v1}, Lcom/github/javaparser/ast/validator/TypedValidator;->accept(Lcom/github/javaparser/ast/Node;Lcom/github/javaparser/ast/validator/ProblemReporter;)V

    return-void
.end method


# virtual methods
.method public postProcess(Lcom/github/javaparser/ParseResult;Lcom/github/javaparser/ParserConfiguration;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "result",
            "configuration"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/github/javaparser/ParseResult<",
            "+",
            "Lcom/github/javaparser/ast/Node;",
            ">;",
            "Lcom/github/javaparser/ParserConfiguration;",
            ")V"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/github/javaparser/ParseResult;->getResult()Ljava/util/Optional;

    move-result-object p2

    new-instance v0, Lcom/github/javaparser/ast/validator/c;

    invoke-direct {v0, p0, p1}, Lcom/github/javaparser/ast/validator/c;-><init>(Lcom/github/javaparser/ast/validator/TypedValidator$1;Lcom/github/javaparser/ParseResult;)V

    invoke-virtual {p2, v0}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method
