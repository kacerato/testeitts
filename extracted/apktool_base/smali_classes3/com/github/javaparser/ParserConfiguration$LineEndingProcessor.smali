.class Lcom/github/javaparser/ParserConfiguration$LineEndingProcessor;
.super Lcom/github/javaparser/Processor;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/github/javaparser/ParserConfiguration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "LineEndingProcessor"
.end annotation


# instance fields
.field private _lineEndingProcessingProvider:Lcom/github/javaparser/LineEndingProcessingProvider;

.field final synthetic this$0:Lcom/github/javaparser/ParserConfiguration;


# direct methods
.method private constructor <init>(Lcom/github/javaparser/ParserConfiguration;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/github/javaparser/ParserConfiguration$LineEndingProcessor;->this$0:Lcom/github/javaparser/ParserConfiguration;

    invoke-direct {p0}, Lcom/github/javaparser/Processor;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/github/javaparser/ParserConfiguration;Lcom/github/javaparser/ParserConfiguration$1;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/github/javaparser/ParserConfiguration$LineEndingProcessor;-><init>(Lcom/github/javaparser/ParserConfiguration;)V

    return-void
.end method

.method public static synthetic a(Lcom/github/javaparser/ParserConfiguration$LineEndingProcessor;Lcom/github/javaparser/ast/Node;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/github/javaparser/ParserConfiguration$LineEndingProcessor;->lambda$postProcess$0(Lcom/github/javaparser/ast/Node;)V

    return-void
.end method

.method private synthetic lambda$postProcess$0(Lcom/github/javaparser/ast/Node;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "rootNode"
        }
    .end annotation

    iget-object v0, p0, Lcom/github/javaparser/ParserConfiguration$LineEndingProcessor;->_lineEndingProcessingProvider:Lcom/github/javaparser/LineEndingProcessingProvider;

    invoke-virtual {v0}, Lcom/github/javaparser/LineEndingProcessingProvider;->getDetectedLineEnding()Lcom/github/javaparser/utils/LineSeparator;

    move-result-object v0

    sget-object v1, Lcom/github/javaparser/ast/Node;->LINE_SEPARATOR_KEY:Lcom/github/javaparser/ast/DataKey;

    invoke-virtual {p1, v1, v0}, Lcom/github/javaparser/ast/Node;->setData(Lcom/github/javaparser/ast/DataKey;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public postProcess(Lcom/github/javaparser/ParseResult;Lcom/github/javaparser/ParserConfiguration;)V
    .locals 0
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

    iget-object p2, p0, Lcom/github/javaparser/ParserConfiguration$LineEndingProcessor;->this$0:Lcom/github/javaparser/ParserConfiguration;

    invoke-virtual {p2}, Lcom/github/javaparser/ParserConfiguration;->isDetectOriginalLineSeparator()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-virtual {p1}, Lcom/github/javaparser/ParseResult;->getResult()Ljava/util/Optional;

    move-result-object p1

    new-instance p2, Lcom/github/javaparser/o0;

    invoke-direct {p2, p0}, Lcom/github/javaparser/o0;-><init>(Lcom/github/javaparser/ParserConfiguration$LineEndingProcessor;)V

    invoke-virtual {p1, p2}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    :cond_0
    return-void
.end method

.method public preProcess(Lcom/github/javaparser/Provider;)Lcom/github/javaparser/Provider;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "innerProvider"
        }
    .end annotation

    iget-object v0, p0, Lcom/github/javaparser/ParserConfiguration$LineEndingProcessor;->this$0:Lcom/github/javaparser/ParserConfiguration;

    invoke-virtual {v0}, Lcom/github/javaparser/ParserConfiguration;->isDetectOriginalLineSeparator()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/github/javaparser/LineEndingProcessingProvider;

    invoke-direct {v0, p1}, Lcom/github/javaparser/LineEndingProcessingProvider;-><init>(Lcom/github/javaparser/Provider;)V

    iput-object v0, p0, Lcom/github/javaparser/ParserConfiguration$LineEndingProcessor;->_lineEndingProcessingProvider:Lcom/github/javaparser/LineEndingProcessingProvider;

    return-object v0

    :cond_0
    return-object p1
.end method
