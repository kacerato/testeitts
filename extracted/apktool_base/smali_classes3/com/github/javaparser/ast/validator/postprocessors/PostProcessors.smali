.class public Lcom/github/javaparser/ast/validator/postprocessors/PostProcessors;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final postProcessors:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/github/javaparser/Processor;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public varargs constructor <init>([Lcom/github/javaparser/Processor;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "postProcessors"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/github/javaparser/ast/validator/postprocessors/PostProcessors;->postProcessors:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method public static synthetic a(Lcom/github/javaparser/ParseResult;Lcom/github/javaparser/ParserConfiguration;Lcom/github/javaparser/Processor;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/github/javaparser/ast/validator/postprocessors/PostProcessors;->lambda$postProcess$0(Lcom/github/javaparser/ParseResult;Lcom/github/javaparser/ParserConfiguration;Lcom/github/javaparser/Processor;)V

    return-void
.end method

.method private static synthetic lambda$postProcess$0(Lcom/github/javaparser/ParseResult;Lcom/github/javaparser/ParserConfiguration;Lcom/github/javaparser/Processor;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010,
            0x1000
        }
        names = {
            "result",
            "configuration",
            "pp"
        }
    .end annotation

    invoke-virtual {p2, p0, p1}, Lcom/github/javaparser/Processor;->postProcess(Lcom/github/javaparser/ParseResult;Lcom/github/javaparser/ParserConfiguration;)V

    return-void
.end method


# virtual methods
.method public add(Lcom/github/javaparser/Processor;)Lcom/github/javaparser/ast/validator/postprocessors/PostProcessors;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "newProcessor"
        }
    .end annotation

    iget-object v0, p0, Lcom/github/javaparser/ast/validator/postprocessors/PostProcessors;->postProcessors:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public getPostProcessors()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/github/javaparser/Processor;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/github/javaparser/ast/validator/postprocessors/PostProcessors;->postProcessors:Ljava/util/List;

    return-object v0
.end method

.method public postProcess(Lcom/github/javaparser/ParseResult;Lcom/github/javaparser/ParserConfiguration;)V
    .locals 2
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

    iget-object v0, p0, Lcom/github/javaparser/ast/validator/postprocessors/PostProcessors;->postProcessors:Ljava/util/List;

    new-instance v1, Lcom/github/javaparser/ast/validator/postprocessors/d;

    invoke-direct {v1, p1, p2}, Lcom/github/javaparser/ast/validator/postprocessors/d;-><init>(Lcom/github/javaparser/ParseResult;Lcom/github/javaparser/ParserConfiguration;)V

    invoke-interface {v0, v1}, Ljava/lang/Iterable;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public remove(Lcom/github/javaparser/Processor;)Lcom/github/javaparser/ast/validator/postprocessors/PostProcessors;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "postProcessor"
        }
    .end annotation

    iget-object v0, p0, Lcom/github/javaparser/ast/validator/postprocessors/PostProcessors;->postProcessors:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-object p0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    const-string v0, "Trying to remove a post processor that isn\'t there."

    invoke-direct {p1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p1
.end method

.method public replace(Lcom/github/javaparser/Processor;Lcom/github/javaparser/Processor;)Lcom/github/javaparser/ast/validator/postprocessors/PostProcessors;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "oldProcessor",
            "newProcessor"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/github/javaparser/ast/validator/postprocessors/PostProcessors;->remove(Lcom/github/javaparser/Processor;)Lcom/github/javaparser/ast/validator/postprocessors/PostProcessors;

    invoke-virtual {p0, p2}, Lcom/github/javaparser/ast/validator/postprocessors/PostProcessors;->add(Lcom/github/javaparser/Processor;)Lcom/github/javaparser/ast/validator/postprocessors/PostProcessors;

    return-object p0
.end method
