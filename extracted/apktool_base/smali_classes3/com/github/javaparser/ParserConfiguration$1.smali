.class Lcom/github/javaparser/ParserConfiguration$1;
.super Lcom/github/javaparser/Processor;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/github/javaparser/ParserConfiguration;->lambda$new$2()Lcom/github/javaparser/Processor;
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

    iput-object p1, p0, Lcom/github/javaparser/ParserConfiguration$1;->this$0:Lcom/github/javaparser/ParserConfiguration;

    invoke-direct {p0}, Lcom/github/javaparser/Processor;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/github/javaparser/ParseResult;Lcom/github/javaparser/ParserConfiguration;Lcom/github/javaparser/ast/Node;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/github/javaparser/ParserConfiguration$1;->lambda$postProcess$1(Lcom/github/javaparser/ParseResult;Lcom/github/javaparser/ParserConfiguration;Lcom/github/javaparser/ast/Node;)V

    return-void
.end method

.method public static synthetic b(Lcom/github/javaparser/ParserConfiguration;Lcom/github/javaparser/ast/Node;Lcom/github/javaparser/ast/comments/CommentsCollection;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/github/javaparser/ParserConfiguration$1;->lambda$null$0(Lcom/github/javaparser/ParserConfiguration;Lcom/github/javaparser/ast/Node;Lcom/github/javaparser/ast/comments/CommentsCollection;)V

    return-void
.end method

.method private static synthetic lambda$null$0(Lcom/github/javaparser/ParserConfiguration;Lcom/github/javaparser/ast/Node;Lcom/github/javaparser/ast/comments/CommentsCollection;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010,
            0x1000
        }
        names = {
            "configuration",
            "resultNode",
            "comments"
        }
    .end annotation

    new-instance v0, Lcom/github/javaparser/CommentsInserter;

    invoke-direct {v0, p0}, Lcom/github/javaparser/CommentsInserter;-><init>(Lcom/github/javaparser/ParserConfiguration;)V

    invoke-virtual {p2}, Lcom/github/javaparser/ast/comments/CommentsCollection;->copy()Lcom/github/javaparser/ast/comments/CommentsCollection;

    move-result-object p0

    invoke-virtual {p0}, Lcom/github/javaparser/ast/comments/CommentsCollection;->getComments()Ljava/util/TreeSet;

    move-result-object p0

    invoke-virtual {v0, p1, p0}, Lcom/github/javaparser/CommentsInserter;->insertComments(Lcom/github/javaparser/ast/Node;Ljava/util/TreeSet;)V

    return-void
.end method

.method private static synthetic lambda$postProcess$1(Lcom/github/javaparser/ParseResult;Lcom/github/javaparser/ParserConfiguration;Lcom/github/javaparser/ast/Node;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010,
            0x1000
        }
        names = {
            "result",
            "configuration",
            "resultNode"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/github/javaparser/ParseResult;->getCommentsCollection()Ljava/util/Optional;

    move-result-object p0

    new-instance v0, Lcom/github/javaparser/h0;

    invoke-direct {v0, p1, p2}, Lcom/github/javaparser/h0;-><init>(Lcom/github/javaparser/ParserConfiguration;Lcom/github/javaparser/ast/Node;)V

    invoke-virtual {p0, v0}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

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

    invoke-virtual {p2}, Lcom/github/javaparser/ParserConfiguration;->isAttributeComments()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/github/javaparser/i0;

    invoke-direct {v0, p1, p2}, Lcom/github/javaparser/i0;-><init>(Lcom/github/javaparser/ParseResult;Lcom/github/javaparser/ParserConfiguration;)V

    invoke-virtual {p1, v0}, Lcom/github/javaparser/ParseResult;->ifSuccessful(Ljava/util/function/Consumer;)V

    :cond_0
    return-void
.end method
