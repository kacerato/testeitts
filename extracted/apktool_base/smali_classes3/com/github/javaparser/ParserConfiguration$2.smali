.class Lcom/github/javaparser/ParserConfiguration$2;
.super Lcom/github/javaparser/Processor;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/github/javaparser/ParserConfiguration;->lambda$new$3()Lcom/github/javaparser/Processor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/github/javaparser/ParserConfiguration;


# direct methods
.method public constructor <init>(Lcom/github/javaparser/ParserConfiguration;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    iput-object p1, p0, Lcom/github/javaparser/ParserConfiguration$2;->this$0:Lcom/github/javaparser/ParserConfiguration;

    invoke-direct {p0}, Lcom/github/javaparser/Processor;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/github/javaparser/ParseResult;Lcom/github/javaparser/Problem;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/github/javaparser/ParserConfiguration$2;->lambda$postProcess$0(Lcom/github/javaparser/ParseResult;Lcom/github/javaparser/Problem;)V

    return-void
.end method

.method private static synthetic lambda$postProcess$0(Lcom/github/javaparser/ParseResult;Lcom/github/javaparser/Problem;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1000
        }
        names = {
            "result",
            "newProblem"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/github/javaparser/ParseResult;->getProblems()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method public postProcess(Lcom/github/javaparser/ParseResult;Lcom/github/javaparser/ParserConfiguration;)V
    .locals 3
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

    iget-object v0, p0, Lcom/github/javaparser/ParserConfiguration$2;->this$0:Lcom/github/javaparser/ParserConfiguration;

    invoke-virtual {v0}, Lcom/github/javaparser/ParserConfiguration;->getLanguageLevel()Lcom/github/javaparser/ParserConfiguration$LanguageLevel;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v1, v0, Lcom/github/javaparser/ParserConfiguration$LanguageLevel;->postProcessor:Lcom/github/javaparser/ast/validator/postprocessors/PostProcessors;

    if-eqz v1, :cond_0

    invoke-virtual {v1, p1, p2}, Lcom/github/javaparser/ast/validator/postprocessors/PostProcessors;->postProcess(Lcom/github/javaparser/ParseResult;Lcom/github/javaparser/ParserConfiguration;)V

    :cond_0
    iget-object p2, v0, Lcom/github/javaparser/ParserConfiguration$LanguageLevel;->validator:Lcom/github/javaparser/ast/validator/Validator;

    if-eqz p2, :cond_1

    invoke-virtual {p1}, Lcom/github/javaparser/ParseResult;->getResult()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/github/javaparser/ast/Node;

    new-instance v1, Lcom/github/javaparser/ast/validator/ProblemReporter;

    new-instance v2, Lcom/github/javaparser/j0;

    invoke-direct {v2, p1}, Lcom/github/javaparser/j0;-><init>(Lcom/github/javaparser/ParseResult;)V

    invoke-direct {v1, v2}, Lcom/github/javaparser/ast/validator/ProblemReporter;-><init>(Ljava/util/function/Consumer;)V

    invoke-interface {p2, v0, v1}, Lcom/github/javaparser/ast/validator/Validator;->accept(Lcom/github/javaparser/ast/Node;Lcom/github/javaparser/ast/validator/ProblemReporter;)V

    :cond_1
    return-void
.end method
