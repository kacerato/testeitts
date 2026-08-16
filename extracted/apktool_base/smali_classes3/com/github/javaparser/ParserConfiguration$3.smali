.class Lcom/github/javaparser/ParserConfiguration$3;
.super Lcom/github/javaparser/Processor;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/github/javaparser/ParserConfiguration;->lambda$new$4()Lcom/github/javaparser/Processor;
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

    iput-object p1, p0, Lcom/github/javaparser/ParserConfiguration$3;->this$0:Lcom/github/javaparser/ParserConfiguration;

    invoke-direct {p0}, Lcom/github/javaparser/Processor;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/github/javaparser/ParseResult;Lcom/github/javaparser/resolution/SymbolResolver;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/github/javaparser/ParserConfiguration$3;->lambda$postProcess$1(Lcom/github/javaparser/ParseResult;Lcom/github/javaparser/resolution/SymbolResolver;)V

    return-void
.end method

.method public static synthetic b(Lcom/github/javaparser/resolution/SymbolResolver;Lcom/github/javaparser/ast/Node;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/github/javaparser/ParserConfiguration$3;->lambda$null$0(Lcom/github/javaparser/resolution/SymbolResolver;Lcom/github/javaparser/ast/Node;)V

    return-void
.end method

.method private static synthetic lambda$null$0(Lcom/github/javaparser/resolution/SymbolResolver;Lcom/github/javaparser/ast/Node;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1000
        }
        names = {
            "symbolResolver",
            "resultNode"
        }
    .end annotation

    instance-of v0, p1, Lcom/github/javaparser/ast/CompilationUnit;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/github/javaparser/ast/Node;->SYMBOL_RESOLVER_KEY:Lcom/github/javaparser/ast/DataKey;

    invoke-virtual {p1, v0, p0}, Lcom/github/javaparser/ast/Node;->setData(Lcom/github/javaparser/ast/DataKey;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method private static synthetic lambda$postProcess$1(Lcom/github/javaparser/ParseResult;Lcom/github/javaparser/resolution/SymbolResolver;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1000
        }
        names = {
            "result",
            "symbolResolver"
        }
    .end annotation

    new-instance v0, Lcom/github/javaparser/l0;

    invoke-direct {v0, p1}, Lcom/github/javaparser/l0;-><init>(Lcom/github/javaparser/resolution/SymbolResolver;)V

    invoke-virtual {p0, v0}, Lcom/github/javaparser/ParseResult;->ifSuccessful(Ljava/util/function/Consumer;)V

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

    invoke-virtual {p2}, Lcom/github/javaparser/ParserConfiguration;->getSymbolResolver()Ljava/util/Optional;

    move-result-object p2

    new-instance v0, Lcom/github/javaparser/k0;

    invoke-direct {v0, p1}, Lcom/github/javaparser/k0;-><init>(Lcom/github/javaparser/ParseResult;)V

    invoke-virtual {p2, v0}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method
