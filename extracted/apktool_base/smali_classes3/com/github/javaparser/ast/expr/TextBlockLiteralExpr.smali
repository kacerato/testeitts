.class public Lcom/github/javaparser/ast/expr/TextBlockLiteralExpr;
.super Lcom/github/javaparser/ast/expr/LiteralStringValueExpr;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x0

    .line 1
    const-string v1, "empty"

    invoke-direct {p0, v0, v1}, Lcom/github/javaparser/ast/expr/TextBlockLiteralExpr;-><init>(Lcom/github/javaparser/TokenRange;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lcom/github/javaparser/TokenRange;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "tokenRange",
            "value"
        }
    .end annotation

    .line 3
    invoke-direct {p0, p1, p2}, Lcom/github/javaparser/ast/expr/LiteralStringValueExpr;-><init>(Lcom/github/javaparser/TokenRange;Ljava/lang/String;)V

    .line 4
    invoke-virtual {p0}, Lcom/github/javaparser/ast/Node;->customInitialization()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .annotation runtime Lcom/github/javaparser/ast/AllFieldsConstructor;
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "value"
        }
    .end annotation

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, v0, p1}, Lcom/github/javaparser/ast/expr/TextBlockLiteralExpr;-><init>(Lcom/github/javaparser/TokenRange;Ljava/lang/String;)V

    return-void
.end method

.method private emptyOrWhitespace(Ljava/lang/String;)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "rawLine"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    return p1
.end method

.method private indentSize(Ljava/lang/String;)I
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "s"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    return p1

    :cond_0
    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method private isLastLine([Ljava/lang/String;Ljava/lang/Integer;)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "rawLines",
            "lineNr"
        }
    .end annotation

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    array-length p1, p1

    const/4 v0, 0x1

    sub-int/2addr p1, v0

    if-ne p2, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static synthetic l0(Lcom/github/javaparser/ast/expr/TextBlockLiteralExpr;Lcom/github/javaparser/utils/Pair;)Ljava/lang/Integer;
    .locals 0

    invoke-direct {p0, p1}, Lcom/github/javaparser/ast/expr/TextBlockLiteralExpr;->lambda$stripIndentOfLines$2(Lcom/github/javaparser/utils/Pair;)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$stripIndentOfLines$0([Ljava/lang/String;I)Lcom/github/javaparser/utils/Pair;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1000
        }
        names = {
            "rawLines",
            "nr"
        }
    .end annotation

    new-instance v0, Lcom/github/javaparser/utils/Pair;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aget-object p0, p0, p1

    invoke-direct {v0, v1, p0}, Lcom/github/javaparser/utils/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method

.method private synthetic lambda$stripIndentOfLines$1([Ljava/lang/String;Lcom/github/javaparser/utils/Pair;)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1000
        }
        names = {
            "rawLines",
            "l"
        }
    .end annotation

    iget-object v0, p2, Lcom/github/javaparser/utils/Pair;->b:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/github/javaparser/ast/expr/TextBlockLiteralExpr;->emptyOrWhitespace(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p2, p2, Lcom/github/javaparser/utils/Pair;->a:Ljava/lang/Object;

    check-cast p2, Ljava/lang/Integer;

    invoke-direct {p0, p1, p2}, Lcom/github/javaparser/ast/expr/TextBlockLiteralExpr;->isLastLine([Ljava/lang/String;Ljava/lang/Integer;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method private synthetic lambda$stripIndentOfLines$2(Lcom/github/javaparser/utils/Pair;)Ljava/lang/Integer;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "l"
        }
    .end annotation

    iget-object p1, p1, Lcom/github/javaparser/utils/Pair;->b:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/github/javaparser/ast/expr/TextBlockLiteralExpr;->indentSize(Ljava/lang/String;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method private static synthetic lambda$stripIndentOfLines$3(ILjava/lang/String;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1000
        }
        names = {
            "commonWhiteSpacePrefixSize",
            "l"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-ge v0, p0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1, p0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public static synthetic m0(Lcom/github/javaparser/ast/expr/TextBlockLiteralExpr;[Ljava/lang/String;Lcom/github/javaparser/utils/Pair;)Z
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/github/javaparser/ast/expr/TextBlockLiteralExpr;->lambda$stripIndentOfLines$1([Ljava/lang/String;Lcom/github/javaparser/utils/Pair;)Z

    move-result p0

    return p0
.end method

.method public static synthetic n0(Lcom/github/javaparser/ast/expr/TextBlockLiteralExpr;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    invoke-direct {p0, p1}, Lcom/github/javaparser/ast/expr/TextBlockLiteralExpr;->trimTrailing(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic o0([Ljava/lang/String;I)Lcom/github/javaparser/utils/Pair;
    .locals 0

    invoke-static {p0, p1}, Lcom/github/javaparser/ast/expr/TextBlockLiteralExpr;->lambda$stripIndentOfLines$0([Ljava/lang/String;I)Lcom/github/javaparser/utils/Pair;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic p0(ILjava/lang/String;)Ljava/lang/String;
    .locals 0

    invoke-static {p0, p1}, Lcom/github/javaparser/ast/expr/TextBlockLiteralExpr;->lambda$stripIndentOfLines$3(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private trimTrailing(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "source"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_0

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v1

    if-eqz v1, :cond_0

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_1

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    :cond_1
    return-object p1
.end method


# virtual methods
.method public accept(Lcom/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "v",
            "arg"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            "A:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/github/javaparser/ast/visitor/GenericVisitor<",
            "TR;TA;>;TA;)TR;"
        }
    .end annotation

    .line 1
    invoke-interface {p1, p0, p2}, Lcom/github/javaparser/ast/visitor/GenericVisitor;->visit(Lcom/github/javaparser/ast/expr/TextBlockLiteralExpr;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public accept(Lcom/github/javaparser/ast/visitor/VoidVisitor;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "v",
            "arg"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/github/javaparser/ast/visitor/VoidVisitor<",
            "TA;>;TA;)V"
        }
    .end annotation

    .line 2
    invoke-interface {p1, p0, p2}, Lcom/github/javaparser/ast/visitor/VoidVisitor;->visit(Lcom/github/javaparser/ast/expr/TextBlockLiteralExpr;Ljava/lang/Object;)V

    return-void
.end method

.method public asString()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/github/javaparser/ast/expr/TextBlockLiteralExpr;->translateEscapes()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public asTextBlockLiteralExpr()Lcom/github/javaparser/ast/expr/TextBlockLiteralExpr;
    .locals 0

    return-object p0
.end method

.method public bridge synthetic clone()Lcom/github/javaparser/ast/Node;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/github/javaparser/ast/expr/TextBlockLiteralExpr;->clone()Lcom/github/javaparser/ast/expr/TextBlockLiteralExpr;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/github/javaparser/ast/expr/Expression;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/github/javaparser/ast/expr/TextBlockLiteralExpr;->clone()Lcom/github/javaparser/ast/expr/TextBlockLiteralExpr;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/github/javaparser/ast/expr/LiteralExpr;
    .locals 1

    .line 3
    invoke-virtual {p0}, Lcom/github/javaparser/ast/expr/TextBlockLiteralExpr;->clone()Lcom/github/javaparser/ast/expr/TextBlockLiteralExpr;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/github/javaparser/ast/expr/LiteralStringValueExpr;
    .locals 1

    .line 4
    invoke-virtual {p0}, Lcom/github/javaparser/ast/expr/TextBlockLiteralExpr;->clone()Lcom/github/javaparser/ast/expr/TextBlockLiteralExpr;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/github/javaparser/ast/expr/TextBlockLiteralExpr;
    .locals 2

    .line 6
    new-instance v0, Lcom/github/javaparser/ast/visitor/CloneVisitor;

    invoke-direct {v0}, Lcom/github/javaparser/ast/visitor/CloneVisitor;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/github/javaparser/ast/expr/TextBlockLiteralExpr;->accept(Lcom/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/github/javaparser/ast/expr/TextBlockLiteralExpr;

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 5
    invoke-virtual {p0}, Lcom/github/javaparser/ast/expr/TextBlockLiteralExpr;->clone()Lcom/github/javaparser/ast/expr/TextBlockLiteralExpr;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getMetaModel()Lcom/github/javaparser/metamodel/ExpressionMetaModel;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/github/javaparser/ast/expr/TextBlockLiteralExpr;->getMetaModel()Lcom/github/javaparser/metamodel/TextBlockLiteralExprMetaModel;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getMetaModel()Lcom/github/javaparser/metamodel/LiteralExprMetaModel;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/github/javaparser/ast/expr/TextBlockLiteralExpr;->getMetaModel()Lcom/github/javaparser/metamodel/TextBlockLiteralExprMetaModel;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getMetaModel()Lcom/github/javaparser/metamodel/LiteralStringValueExprMetaModel;
    .locals 1

    .line 3
    invoke-virtual {p0}, Lcom/github/javaparser/ast/expr/TextBlockLiteralExpr;->getMetaModel()Lcom/github/javaparser/metamodel/TextBlockLiteralExprMetaModel;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getMetaModel()Lcom/github/javaparser/metamodel/NodeMetaModel;
    .locals 1

    .line 4
    invoke-virtual {p0}, Lcom/github/javaparser/ast/expr/TextBlockLiteralExpr;->getMetaModel()Lcom/github/javaparser/metamodel/TextBlockLiteralExprMetaModel;

    move-result-object v0

    return-object v0
.end method

.method public getMetaModel()Lcom/github/javaparser/metamodel/TextBlockLiteralExprMetaModel;
    .locals 1

    .line 5
    sget-object v0, Lcom/github/javaparser/metamodel/JavaParserMetaModel;->textBlockLiteralExprMetaModel:Lcom/github/javaparser/metamodel/TextBlockLiteralExprMetaModel;

    return-object v0
.end method

.method public ifTextBlockLiteralExpr(Ljava/util/function/Consumer;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "action"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Lcom/github/javaparser/ast/expr/TextBlockLiteralExpr;",
            ">;)V"
        }
    .end annotation

    invoke-interface {p1, p0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method

.method public isTextBlockLiteralExpr()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public stripIndent()Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Lcom/github/javaparser/ast/expr/TextBlockLiteralExpr;->stripIndentOfLines()Ljava/util/stream/Stream;

    move-result-object v0

    const-string v1, "\n"

    invoke-static {v1}, Ljava/util/stream/Collectors;->joining(Ljava/lang/CharSequence;)Ljava/util/stream/Collector;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public stripIndentOfLines()Ljava/util/stream/Stream;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/stream/Stream<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/github/javaparser/ast/expr/LiteralStringValueExpr;->getValue()Ljava/lang/String;

    move-result-object v0

    const-string v1, "\\R"

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    invoke-static {v2, v1}, Ljava/util/stream/IntStream;->range(II)Ljava/util/stream/IntStream;

    move-result-object v1

    new-instance v3, Lcom/github/javaparser/ast/expr/f;

    invoke-direct {v3, v0}, Lcom/github/javaparser/ast/expr/f;-><init>([Ljava/lang/String;)V

    invoke-interface {v1, v3}, Ljava/util/stream/IntStream;->mapToObj(Ljava/util/function/IntFunction;)Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v3, Lcom/github/javaparser/ast/expr/g;

    invoke-direct {v3, p0, v0}, Lcom/github/javaparser/ast/expr/g;-><init>(Lcom/github/javaparser/ast/expr/TextBlockLiteralExpr;[Ljava/lang/String;)V

    invoke-interface {v1, v3}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v3, Lcom/github/javaparser/ast/expr/h;

    invoke-direct {v3, p0}, Lcom/github/javaparser/ast/expr/h;-><init>(Lcom/github/javaparser/ast/expr/TextBlockLiteralExpr;)V

    invoke-interface {v1, v3}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v3, Lcom/android/tools/r8/internal/GF0;

    invoke-direct {v3}, Lcom/android/tools/r8/internal/GF0;-><init>()V

    invoke-interface {v1, v3}, Ljava/util/stream/Stream;->min(Ljava/util/Comparator;)Ljava/util/Optional;

    move-result-object v1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v0}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v2, Lcom/github/javaparser/ast/expr/i;

    invoke-direct {v2, v1}, Lcom/github/javaparser/ast/expr/i;-><init>(I)V

    invoke-interface {v0, v2}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/github/javaparser/ast/expr/j;

    invoke-direct {v1, p0}, Lcom/github/javaparser/ast/expr/j;-><init>(Lcom/github/javaparser/ast/expr/TextBlockLiteralExpr;)V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v0

    return-object v0
.end method

.method public toTextBlockLiteralExpr()Ljava/util/Optional;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "Lcom/github/javaparser/ast/expr/TextBlockLiteralExpr;",
            ">;"
        }
    .end annotation

    invoke-static {p0}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    return-object v0
.end method

.method public translateEscapes()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/github/javaparser/ast/expr/TextBlockLiteralExpr;->stripIndent()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/github/javaparser/utils/StringEscapeUtils;->unescapeJavaTextBlock(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
