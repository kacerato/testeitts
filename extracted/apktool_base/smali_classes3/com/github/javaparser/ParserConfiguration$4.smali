.class Lcom/github/javaparser/ParserConfiguration$4;
.super Lcom/github/javaparser/Processor;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/github/javaparser/ParserConfiguration;->lambda$new$5()Lcom/github/javaparser/Processor;
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

    iput-object p1, p0, Lcom/github/javaparser/ParserConfiguration$4;->this$0:Lcom/github/javaparser/ParserConfiguration;

    invoke-direct {p0}, Lcom/github/javaparser/Processor;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/github/javaparser/ast/Node;)V
    .locals 0

    invoke-static {p0}, Lcom/github/javaparser/ParserConfiguration$4;->lambda$postProcess$0(Lcom/github/javaparser/ast/Node;)V

    return-void
.end method

.method private static synthetic lambda$postProcess$0(Lcom/github/javaparser/ast/Node;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "resultNode"
        }
    .end annotation

    invoke-static {p0}, Lcom/github/javaparser/printer/lexicalpreservation/LexicalPreservingPrinter;->setup(Lcom/github/javaparser/ast/Node;)Lcom/github/javaparser/ast/Node;

    sget-object v0, Lcom/github/javaparser/ast/Node;->PRINTER_KEY:Lcom/github/javaparser/ast/DataKey;

    new-instance v1, Lcom/github/javaparser/printer/lexicalpreservation/DefaultLexicalPreservingPrinter;

    invoke-direct {v1}, Lcom/github/javaparser/printer/lexicalpreservation/DefaultLexicalPreservingPrinter;-><init>()V

    invoke-virtual {p0, v0, v1}, Lcom/github/javaparser/ast/Node;->setData(Lcom/github/javaparser/ast/DataKey;Ljava/lang/Object;)V

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

    invoke-virtual {p2}, Lcom/github/javaparser/ParserConfiguration;->isLexicalPreservationEnabled()Z

    move-result p2

    if-eqz p2, :cond_0

    new-instance p2, Lcom/github/javaparser/m0;

    invoke-direct {p2}, Lcom/github/javaparser/m0;-><init>()V

    invoke-virtual {p1, p2}, Lcom/github/javaparser/ParseResult;->ifSuccessful(Ljava/util/function/Consumer;)V

    :cond_0
    return-void
.end method
