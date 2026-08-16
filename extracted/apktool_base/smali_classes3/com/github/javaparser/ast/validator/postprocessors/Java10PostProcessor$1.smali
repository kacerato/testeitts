.class Lcom/github/javaparser/ast/validator/postprocessors/Java10PostProcessor$1;
.super Lcom/github/javaparser/Processor;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/github/javaparser/ast/validator/postprocessors/Java10PostProcessor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/github/javaparser/ast/validator/postprocessors/Java10PostProcessor;


# direct methods
.method public constructor <init>(Lcom/github/javaparser/ast/validator/postprocessors/Java10PostProcessor;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    iput-object p1, p0, Lcom/github/javaparser/ast/validator/postprocessors/Java10PostProcessor$1;->this$0:Lcom/github/javaparser/ast/validator/postprocessors/Java10PostProcessor;

    invoke-direct {p0}, Lcom/github/javaparser/Processor;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/github/javaparser/ast/validator/postprocessors/Java10PostProcessor$1;Lcom/github/javaparser/ast/type/ClassOrInterfaceType;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/github/javaparser/ast/validator/postprocessors/Java10PostProcessor$1;->lambda$null$0(Lcom/github/javaparser/ast/type/ClassOrInterfaceType;)V

    return-void
.end method

.method public static synthetic b(Lcom/github/javaparser/ast/validator/postprocessors/Java10PostProcessor$1;Lcom/github/javaparser/ast/Node;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/github/javaparser/ast/validator/postprocessors/Java10PostProcessor$1;->lambda$postProcess$1(Lcom/github/javaparser/ast/Node;)V

    return-void
.end method

.method public static synthetic c(Lcom/github/javaparser/ast/type/ClassOrInterfaceType;Ljava/lang/Class;)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/github/javaparser/ast/validator/postprocessors/Java10PostProcessor$1;->lambda$matchForbiddenContext$2(Lcom/github/javaparser/ast/type/ClassOrInterfaceType;Ljava/lang/Class;)Z

    move-result p0

    return p0
.end method

.method private static synthetic lambda$matchForbiddenContext$2(Lcom/github/javaparser/ast/type/ClassOrInterfaceType;Ljava/lang/Class;)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1000
        }
        names = {
            "cit",
            "cl"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/github/javaparser/ast/Node;->getParentNode()Ljava/util/Optional;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private synthetic lambda$null$0(Lcom/github/javaparser/ast/type/ClassOrInterfaceType;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "n"
        }
    .end annotation

    invoke-interface {p1}, Lcom/github/javaparser/ast/nodeTypes/NodeWithSimpleName;->getNameAsString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "var"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/github/javaparser/ast/validator/postprocessors/Java10PostProcessor$1;->matchForbiddenContext(Lcom/github/javaparser/ast/type/ClassOrInterfaceType;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/github/javaparser/ast/type/VarType;

    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getTokenRange()Ljava/util/Optional;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/github/javaparser/TokenRange;

    invoke-direct {v0, v1}, Lcom/github/javaparser/ast/type/VarType;-><init>(Lcom/github/javaparser/TokenRange;)V

    invoke-virtual {p1, v0}, Lcom/github/javaparser/ast/Node;->replace(Lcom/github/javaparser/ast/Node;)Z

    :cond_0
    return-void
.end method

.method private synthetic lambda$postProcess$1(Lcom/github/javaparser/ast/Node;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "node"
        }
    .end annotation

    const-class v0, Lcom/github/javaparser/ast/type/ClassOrInterfaceType;

    invoke-virtual {p1, v0}, Lcom/github/javaparser/ast/Node;->findAll(Ljava/lang/Class;)Ljava/util/List;

    move-result-object p1

    new-instance v0, Lcom/github/javaparser/ast/validator/postprocessors/a;

    invoke-direct {v0, p0}, Lcom/github/javaparser/ast/validator/postprocessors/a;-><init>(Lcom/github/javaparser/ast/validator/postprocessors/Java10PostProcessor$1;)V

    invoke-interface {p1, v0}, Ljava/lang/Iterable;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method private matchForbiddenContext(Lcom/github/javaparser/ast/type/ClassOrInterfaceType;)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "cit"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getParentNode()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Optional;->isPresent()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/github/javaparser/ast/validator/postprocessors/Java10PostProcessor;->access$000()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/github/javaparser/ast/validator/postprocessors/b;

    invoke-direct {v1, p1}, Lcom/github/javaparser/ast/validator/postprocessors/b;-><init>(Lcom/github/javaparser/ast/type/ClassOrInterfaceType;)V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
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

    invoke-virtual {p1}, Lcom/github/javaparser/ParseResult;->getResult()Ljava/util/Optional;

    move-result-object p1

    new-instance p2, Lcom/github/javaparser/ast/validator/postprocessors/c;

    invoke-direct {p2, p0}, Lcom/github/javaparser/ast/validator/postprocessors/c;-><init>(Lcom/github/javaparser/ast/validator/postprocessors/Java10PostProcessor$1;)V

    invoke-virtual {p1, p2}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method
