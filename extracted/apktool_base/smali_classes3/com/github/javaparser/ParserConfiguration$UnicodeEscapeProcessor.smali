.class Lcom/github/javaparser/ParserConfiguration$UnicodeEscapeProcessor;
.super Lcom/github/javaparser/Processor;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/github/javaparser/ParserConfiguration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "UnicodeEscapeProcessor"
.end annotation


# instance fields
.field private _unicodeDecoder:Lcom/github/javaparser/UnicodeEscapeProcessingProvider;

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
    iput-object p1, p0, Lcom/github/javaparser/ParserConfiguration$UnicodeEscapeProcessor;->this$0:Lcom/github/javaparser/ParserConfiguration;

    invoke-direct {p0}, Lcom/github/javaparser/Processor;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/github/javaparser/ParserConfiguration;Lcom/github/javaparser/ParserConfiguration$1;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/github/javaparser/ParserConfiguration$UnicodeEscapeProcessor;-><init>(Lcom/github/javaparser/ParserConfiguration;)V

    return-void
.end method

.method public static synthetic a(Lcom/github/javaparser/ParserConfiguration$UnicodeEscapeProcessor;Lcom/github/javaparser/ast/Node;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/github/javaparser/ParserConfiguration$UnicodeEscapeProcessor;->lambda$postProcess$2(Lcom/github/javaparser/ast/Node;)V

    return-void
.end method

.method public static synthetic b(Lcom/github/javaparser/ast/Node;Lcom/github/javaparser/UnicodeEscapeProcessingProvider$PositionMapping;Lcom/github/javaparser/Range;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/github/javaparser/ParserConfiguration$UnicodeEscapeProcessor;->lambda$null$0(Lcom/github/javaparser/ast/Node;Lcom/github/javaparser/UnicodeEscapeProcessingProvider$PositionMapping;Lcom/github/javaparser/Range;)V

    return-void
.end method

.method public static synthetic c(Lcom/github/javaparser/UnicodeEscapeProcessingProvider$PositionMapping;Lcom/github/javaparser/ast/Node;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/github/javaparser/ParserConfiguration$UnicodeEscapeProcessor;->lambda$null$1(Lcom/github/javaparser/UnicodeEscapeProcessingProvider$PositionMapping;Lcom/github/javaparser/ast/Node;)V

    return-void
.end method

.method private static synthetic lambda$null$0(Lcom/github/javaparser/ast/Node;Lcom/github/javaparser/UnicodeEscapeProcessingProvider$PositionMapping;Lcom/github/javaparser/Range;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010,
            0x1000
        }
        names = {
            "node",
            "mapping",
            "range"
        }
    .end annotation

    invoke-virtual {p1, p2}, Lcom/github/javaparser/UnicodeEscapeProcessingProvider$PositionMapping;->transform(Lcom/github/javaparser/Range;)Lcom/github/javaparser/Range;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/github/javaparser/ast/Node;->setRange(Lcom/github/javaparser/Range;)Lcom/github/javaparser/ast/Node;

    return-void
.end method

.method private static synthetic lambda$null$1(Lcom/github/javaparser/UnicodeEscapeProcessingProvider$PositionMapping;Lcom/github/javaparser/ast/Node;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1000
        }
        names = {
            "mapping",
            "node"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getRange()Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lcom/github/javaparser/r0;

    invoke-direct {v1, p1, p0}, Lcom/github/javaparser/r0;-><init>(Lcom/github/javaparser/ast/Node;Lcom/github/javaparser/UnicodeEscapeProcessingProvider$PositionMapping;)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method

.method private synthetic lambda$postProcess$2(Lcom/github/javaparser/ast/Node;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "root"
        }
    .end annotation

    iget-object v0, p0, Lcom/github/javaparser/ParserConfiguration$UnicodeEscapeProcessor;->_unicodeDecoder:Lcom/github/javaparser/UnicodeEscapeProcessingProvider;

    invoke-virtual {v0}, Lcom/github/javaparser/UnicodeEscapeProcessingProvider;->getPositionMapping()Lcom/github/javaparser/UnicodeEscapeProcessingProvider$PositionMapping;

    move-result-object v0

    invoke-virtual {v0}, Lcom/github/javaparser/UnicodeEscapeProcessingProvider$PositionMapping;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Lcom/github/javaparser/q0;

    invoke-direct {v1, v0}, Lcom/github/javaparser/q0;-><init>(Lcom/github/javaparser/UnicodeEscapeProcessingProvider$PositionMapping;)V

    invoke-virtual {p1, v1}, Lcom/github/javaparser/ast/Node;->walk(Ljava/util/function/Consumer;)V

    :cond_0
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

    iget-object p2, p0, Lcom/github/javaparser/ParserConfiguration$UnicodeEscapeProcessor;->this$0:Lcom/github/javaparser/ParserConfiguration;

    invoke-virtual {p2}, Lcom/github/javaparser/ParserConfiguration;->isPreprocessUnicodeEscapes()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-virtual {p1}, Lcom/github/javaparser/ParseResult;->getResult()Ljava/util/Optional;

    move-result-object p1

    new-instance p2, Lcom/github/javaparser/p0;

    invoke-direct {p2, p0}, Lcom/github/javaparser/p0;-><init>(Lcom/github/javaparser/ParserConfiguration$UnicodeEscapeProcessor;)V

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

    iget-object v0, p0, Lcom/github/javaparser/ParserConfiguration$UnicodeEscapeProcessor;->this$0:Lcom/github/javaparser/ParserConfiguration;

    invoke-virtual {v0}, Lcom/github/javaparser/ParserConfiguration;->isPreprocessUnicodeEscapes()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/github/javaparser/UnicodeEscapeProcessingProvider;

    invoke-direct {v0, p1}, Lcom/github/javaparser/UnicodeEscapeProcessingProvider;-><init>(Lcom/github/javaparser/Provider;)V

    iput-object v0, p0, Lcom/github/javaparser/ParserConfiguration$UnicodeEscapeProcessor;->_unicodeDecoder:Lcom/github/javaparser/UnicodeEscapeProcessingProvider;

    return-object v0

    :cond_0
    return-object p1
.end method
