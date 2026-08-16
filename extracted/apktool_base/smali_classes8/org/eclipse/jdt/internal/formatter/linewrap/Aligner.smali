.class public Lorg/eclipse/jdt/internal/formatter/linewrap/Aligner;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/eclipse/jdt/internal/formatter/linewrap/Aligner$AlignIndexFinder;,
        Lorg/eclipse/jdt/internal/formatter/linewrap/Aligner$PositionCounter;
    }
.end annotation


# instance fields
.field private final alignGroups:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/util/List<",
            "+",
            "Lorg/eclipse/jdt/core/dom/ASTNode;",
            ">;>;"
        }
    .end annotation
.end field

.field private final options:Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;

.field final tm:Lorg/eclipse/jdt/internal/formatter/TokenManager;


# direct methods
.method public constructor <init>(Lorg/eclipse/jdt/internal/formatter/TokenManager;Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/eclipse/jdt/internal/formatter/linewrap/Aligner;->alignGroups:Ljava/util/List;

    iput-object p1, p0, Lorg/eclipse/jdt/internal/formatter/linewrap/Aligner;->tm:Lorg/eclipse/jdt/internal/formatter/TokenManager;

    iput-object p2, p0, Lorg/eclipse/jdt/internal/formatter/linewrap/Aligner;->options:Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;

    return-void
.end method

.method public static synthetic a(Ljava/util/List;)Z
    .locals 0

    invoke-static {p0}, Lorg/eclipse/jdt/internal/formatter/linewrap/Aligner;->lambda$22(Ljava/util/List;)Z

    move-result p0

    return p0
.end method

.method private alignAssignmentStatements(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/eclipse/jdt/core/dom/Statement;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Lorg/eclipse/jdt/internal/formatter/linewrap/d;

    invoke-direct {v0, p0}, Lorg/eclipse/jdt/internal/formatter/linewrap/d;-><init>(Lorg/eclipse/jdt/internal/formatter/linewrap/Aligner;)V

    invoke-direct {p0, p1, v0}, Lorg/eclipse/jdt/internal/formatter/linewrap/Aligner;->toAlignGroups(Ljava/util/List;Ljava/util/function/Function;)Ljava/util/List;

    move-result-object p1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/formatter/linewrap/Aligner;->alignGroups:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    new-instance v0, Lorg/eclipse/jdt/internal/formatter/linewrap/e;

    invoke-direct {v0, p0}, Lorg/eclipse/jdt/internal/formatter/linewrap/e;-><init>(Lorg/eclipse/jdt/internal/formatter/linewrap/Aligner;)V

    new-instance v1, Lorg/eclipse/jdt/internal/formatter/linewrap/f;

    invoke-direct {v1, p0, v0}, Lorg/eclipse/jdt/internal/formatter/linewrap/f;-><init>(Lorg/eclipse/jdt/internal/formatter/linewrap/Aligner;Lorg/eclipse/jdt/internal/formatter/linewrap/Aligner$AlignIndexFinder;)V

    invoke-interface {p1, v1}, Ljava/lang/Iterable;->forEach(Ljava/util/function/Consumer;)V

    iget-object v1, p0, Lorg/eclipse/jdt/internal/formatter/linewrap/Aligner;->options:Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;

    iget-boolean v2, v1, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->align_with_spaces:Z

    if-nez v2, :cond_0

    iget v1, v1, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->tab_char:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_1

    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_2

    :cond_1
    return-void

    :cond_2
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-interface {v1}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Lorg/eclipse/jdt/internal/formatter/linewrap/g;

    invoke-direct {v2, v0}, Lorg/eclipse/jdt/internal/formatter/linewrap/g;-><init>(Lorg/eclipse/jdt/internal/formatter/linewrap/Aligner$AlignIndexFinder;)V

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Lorg/eclipse/jdt/internal/formatter/linewrap/h;

    invoke-direct {v2}, Lorg/eclipse/jdt/internal/formatter/linewrap/h;-><init>()V

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Lorg/eclipse/jdt/internal/formatter/linewrap/i;

    invoke-direct {v2, p0}, Lorg/eclipse/jdt/internal/formatter/linewrap/i;-><init>(Lorg/eclipse/jdt/internal/formatter/linewrap/Aligner;)V

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v1

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-interface {v1}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v2

    new-instance v3, Lorg/eclipse/jdt/internal/formatter/linewrap/j;

    invoke-direct {v3}, Lorg/eclipse/jdt/internal/formatter/linewrap/j;-><init>()V

    invoke-interface {v2, v3}, Ljava/util/stream/Stream;->mapToInt(Ljava/util/function/ToIntFunction;)Ljava/util/stream/IntStream;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/stream/IntStream;->max()Ljava/util/OptionalInt;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/OptionalInt;->orElse(I)I

    move-result v2

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_3

    goto :goto_0

    :cond_3
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/eclipse/jdt/internal/formatter/Token;

    invoke-virtual {v3}, Lorg/eclipse/jdt/internal/formatter/Token;->getAlign()I

    move-result v4

    add-int/2addr v4, v2

    invoke-virtual {v3}, Lorg/eclipse/jdt/internal/formatter/Token;->countChars()I

    move-result v5

    sub-int/2addr v4, v5

    invoke-virtual {v3, v4}, Lorg/eclipse/jdt/internal/formatter/Token;->setAlign(I)V

    goto :goto_1
.end method

.method private alignDeclarations(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/eclipse/jdt/core/dom/Statement;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Lorg/eclipse/jdt/internal/formatter/linewrap/x;

    invoke-direct {v0, p0}, Lorg/eclipse/jdt/internal/formatter/linewrap/x;-><init>(Lorg/eclipse/jdt/internal/formatter/linewrap/Aligner;)V

    invoke-direct {p0, p1, v0}, Lorg/eclipse/jdt/internal/formatter/linewrap/Aligner;->toAlignGroups(Ljava/util/List;Ljava/util/function/Function;)Ljava/util/List;

    move-result-object p1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/formatter/linewrap/Aligner;->alignGroups:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    new-instance v0, Lorg/eclipse/jdt/internal/formatter/linewrap/y;

    invoke-direct {v0, p0}, Lorg/eclipse/jdt/internal/formatter/linewrap/y;-><init>(Lorg/eclipse/jdt/internal/formatter/linewrap/Aligner;)V

    new-instance v1, Lorg/eclipse/jdt/internal/formatter/linewrap/z;

    invoke-direct {v1, p0, v0}, Lorg/eclipse/jdt/internal/formatter/linewrap/z;-><init>(Lorg/eclipse/jdt/internal/formatter/linewrap/Aligner;Lorg/eclipse/jdt/internal/formatter/linewrap/Aligner$AlignIndexFinder;)V

    invoke-interface {p1, v1}, Ljava/lang/Iterable;->forEach(Ljava/util/function/Consumer;)V

    new-instance v0, Lorg/eclipse/jdt/internal/formatter/linewrap/b;

    invoke-direct {v0, p0}, Lorg/eclipse/jdt/internal/formatter/linewrap/b;-><init>(Lorg/eclipse/jdt/internal/formatter/linewrap/Aligner;)V

    new-instance v1, Lorg/eclipse/jdt/internal/formatter/linewrap/c;

    invoke-direct {v1, p0, v0}, Lorg/eclipse/jdt/internal/formatter/linewrap/c;-><init>(Lorg/eclipse/jdt/internal/formatter/linewrap/Aligner;Lorg/eclipse/jdt/internal/formatter/linewrap/Aligner$AlignIndexFinder;)V

    invoke-interface {p1, v1}, Ljava/lang/Iterable;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method private alignNodes(Ljava/util/List;Lorg/eclipse/jdt/internal/formatter/linewrap/Aligner$AlignIndexFinder;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<N:",
            "Lorg/eclipse/jdt/core/dom/ASTNode;",
            ">(",
            "Ljava/util/List<",
            "TN;>;",
            "Lorg/eclipse/jdt/internal/formatter/linewrap/Aligner$AlignIndexFinder<",
            "TN;>;)V"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object p1

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lorg/eclipse/jdt/internal/formatter/linewrap/o;

    invoke-direct {v0, p2}, Lorg/eclipse/jdt/internal/formatter/linewrap/o;-><init>(Lorg/eclipse/jdt/internal/formatter/linewrap/Aligner$AlignIndexFinder;)V

    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p1

    new-instance p2, Lorg/eclipse/jdt/internal/formatter/linewrap/h;

    invoke-direct {p2}, Lorg/eclipse/jdt/internal/formatter/linewrap/h;-><init>()V

    invoke-interface {p1, p2}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p1

    new-instance p2, Lorg/eclipse/jdt/internal/formatter/linewrap/p;

    invoke-direct {p2}, Lorg/eclipse/jdt/internal/formatter/linewrap/p;-><init>()V

    invoke-interface {p1, p2}, Ljava/util/stream/Stream;->mapToInt(Ljava/util/function/ToIntFunction;)Ljava/util/stream/IntStream;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/stream/IntStream;->toArray()[I

    move-result-object p1

    invoke-static {p1}, Ljava/util/stream/IntStream;->of([I)Ljava/util/stream/IntStream;

    move-result-object p2

    iget-object v0, p0, Lorg/eclipse/jdt/internal/formatter/linewrap/Aligner;->tm:Lorg/eclipse/jdt/internal/formatter/TokenManager;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Lorg/eclipse/jdt/internal/formatter/linewrap/q;

    invoke-direct {v1, v0}, Lorg/eclipse/jdt/internal/formatter/linewrap/q;-><init>(Lorg/eclipse/jdt/internal/formatter/TokenManager;)V

    invoke-interface {p2, v1}, Ljava/util/stream/IntStream;->map(Ljava/util/function/IntUnaryOperator;)Ljava/util/stream/IntStream;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/stream/IntStream;->max()Ljava/util/OptionalInt;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/OptionalInt;->isPresent()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p2}, Ljava/util/OptionalInt;->getAsInt()I

    move-result p2

    invoke-direct {p0, p2}, Lorg/eclipse/jdt/internal/formatter/linewrap/Aligner;->normalizedAlign(I)I

    move-result p2

    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-lt v1, v0, :cond_0

    goto :goto_1

    :cond_0
    aget v2, p1, v1

    iget-object v3, p0, Lorg/eclipse/jdt/internal/formatter/linewrap/Aligner;->tm:Lorg/eclipse/jdt/internal/formatter/TokenManager;

    invoke-virtual {v3, v2}, Lorg/eclipse/jdt/internal/formatter/TokenManager;->get(I)Lorg/eclipse/jdt/internal/formatter/Token;

    move-result-object v2

    invoke-virtual {v2, p2}, Lorg/eclipse/jdt/internal/formatter/Token;->setAlign(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method private areKeptOnOneLine(Ljava/util/List;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lorg/eclipse/jdt/core/dom/ASTNode;",
            ">;)Z"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object p1

    new-instance v0, Lorg/eclipse/jdt/internal/formatter/linewrap/r;

    invoke-direct {v0, p0}, Lorg/eclipse/jdt/internal/formatter/linewrap/r;-><init>(Lorg/eclipse/jdt/internal/formatter/linewrap/Aligner;)V

    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->allMatch(Ljava/util/function/Predicate;)Z

    move-result p1

    return p1
.end method

.method public static synthetic b(Lorg/eclipse/jdt/internal/formatter/linewrap/Aligner;Lorg/eclipse/jdt/core/dom/ASTNode;)Ljava/util/Optional;
    .locals 0

    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/formatter/linewrap/Aligner;->lambda$6(Lorg/eclipse/jdt/core/dom/ASTNode;)Ljava/util/Optional;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic c(Lorg/eclipse/jdt/internal/formatter/linewrap/Aligner;Lorg/eclipse/jdt/core/dom/VariableDeclarationStatement;)Ljava/util/Optional;
    .locals 0

    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/formatter/linewrap/Aligner;->lambda$9(Lorg/eclipse/jdt/core/dom/VariableDeclarationStatement;)Ljava/util/Optional;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic d(Lorg/eclipse/jdt/internal/formatter/linewrap/Aligner;Lorg/eclipse/jdt/internal/formatter/linewrap/Aligner$AlignIndexFinder;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/eclipse/jdt/internal/formatter/linewrap/Aligner;->lambda$10(Lorg/eclipse/jdt/internal/formatter/linewrap/Aligner$AlignIndexFinder;Ljava/util/List;)V

    return-void
.end method

.method public static synthetic e(Lorg/eclipse/jdt/internal/formatter/linewrap/Aligner;Lorg/eclipse/jdt/internal/formatter/linewrap/Aligner$AlignIndexFinder;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/eclipse/jdt/internal/formatter/linewrap/Aligner;->lambda$14(Lorg/eclipse/jdt/internal/formatter/linewrap/Aligner$AlignIndexFinder;Ljava/util/List;)V

    return-void
.end method

.method public static synthetic f(Lorg/eclipse/jdt/internal/formatter/linewrap/Aligner;Lorg/eclipse/jdt/core/dom/ASTNode;)Z
    .locals 0

    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/formatter/linewrap/Aligner;->lambda$5(Lorg/eclipse/jdt/core/dom/ASTNode;)Z

    move-result p0

    return p0
.end method

.method private findAssign(Lorg/eclipse/jdt/core/dom/VariableDeclarationFragment;)Ljava/util/Optional;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/eclipse/jdt/core/dom/VariableDeclarationFragment;",
            ")",
            "Ljava/util/Optional<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/VariableDeclaration;->getInitializer()Lorg/eclipse/jdt/core/dom/Expression;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p1

    new-instance v0, Lorg/eclipse/jdt/internal/formatter/linewrap/n;

    invoke-direct {v0, p0}, Lorg/eclipse/jdt/internal/formatter/linewrap/n;-><init>(Lorg/eclipse/jdt/internal/formatter/linewrap/Aligner;)V

    invoke-virtual {p1, v0}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object p1

    return-object p1
.end method

.method private findFirstTokenInLine(Lorg/eclipse/jdt/core/dom/ASTNode;)I
    .locals 2

    instance-of v0, p1, Lorg/eclipse/jdt/core/dom/FieldDeclaration;

    const/4 v1, -0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/eclipse/jdt/internal/formatter/linewrap/Aligner;->tm:Lorg/eclipse/jdt/internal/formatter/TokenManager;

    check-cast p1, Lorg/eclipse/jdt/core/dom/FieldDeclaration;

    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/FieldDeclaration;->getType()Lorg/eclipse/jdt/core/dom/Type;

    move-result-object p1

    invoke-virtual {v0, p1, v1}, Lorg/eclipse/jdt/internal/formatter/TokenManager;->firstIndexIn(Lorg/eclipse/jdt/core/dom/ASTNode;I)I

    move-result p1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/formatter/linewrap/Aligner;->tm:Lorg/eclipse/jdt/internal/formatter/TokenManager;

    invoke-virtual {v0, p1}, Lorg/eclipse/jdt/internal/formatter/TokenManager;->findFirstTokenInLine(I)I

    move-result p1

    return p1

    :cond_0
    instance-of v0, p1, Lorg/eclipse/jdt/core/dom/VariableDeclarationStatement;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/formatter/linewrap/Aligner;->tm:Lorg/eclipse/jdt/internal/formatter/TokenManager;

    check-cast p1, Lorg/eclipse/jdt/core/dom/VariableDeclarationStatement;

    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/VariableDeclarationStatement;->getType()Lorg/eclipse/jdt/core/dom/Type;

    move-result-object p1

    invoke-virtual {v0, p1, v1}, Lorg/eclipse/jdt/internal/formatter/TokenManager;->firstIndexIn(Lorg/eclipse/jdt/core/dom/ASTNode;I)I

    move-result p1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/formatter/linewrap/Aligner;->tm:Lorg/eclipse/jdt/internal/formatter/TokenManager;

    invoke-virtual {v0, p1}, Lorg/eclipse/jdt/internal/formatter/TokenManager;->findFirstTokenInLine(I)I

    move-result p1

    return p1

    :cond_1
    instance-of v0, p1, Lorg/eclipse/jdt/core/dom/ExpressionStatement;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/eclipse/jdt/internal/formatter/linewrap/Aligner;->tm:Lorg/eclipse/jdt/internal/formatter/TokenManager;

    invoke-virtual {v0, p1, v1}, Lorg/eclipse/jdt/internal/formatter/TokenManager;->firstIndexIn(Lorg/eclipse/jdt/core/dom/ASTNode;I)I

    move-result p1

    return p1

    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private findName(Lorg/eclipse/jdt/core/dom/VariableDeclarationFragment;)Ljava/util/Optional;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/eclipse/jdt/core/dom/VariableDeclarationFragment;",
            ")",
            "Ljava/util/Optional<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lorg/eclipse/jdt/internal/formatter/linewrap/Aligner;->tm:Lorg/eclipse/jdt/internal/formatter/TokenManager;

    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/VariableDeclaration;->getName()Lorg/eclipse/jdt/core/dom/SimpleName;

    move-result-object p1

    const/16 v1, 0x16

    invoke-virtual {v0, p1, v1}, Lorg/eclipse/jdt/internal/formatter/TokenManager;->firstIndexIn(Lorg/eclipse/jdt/core/dom/ASTNode;I)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p1

    return-object p1
.end method

.method public static synthetic g(Lorg/eclipse/jdt/internal/formatter/linewrap/Aligner;Lorg/eclipse/jdt/core/dom/FieldDeclaration;)Ljava/util/Optional;
    .locals 0

    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/formatter/linewrap/Aligner;->lambda$3(Lorg/eclipse/jdt/core/dom/FieldDeclaration;)Ljava/util/Optional;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic h(Lorg/eclipse/jdt/internal/formatter/linewrap/Aligner;Lorg/eclipse/jdt/internal/formatter/linewrap/Aligner$AlignIndexFinder;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/eclipse/jdt/internal/formatter/linewrap/Aligner;->lambda$4(Lorg/eclipse/jdt/internal/formatter/linewrap/Aligner$AlignIndexFinder;Ljava/util/List;)V

    return-void
.end method

.method public static synthetic i(Lorg/eclipse/jdt/internal/formatter/linewrap/Aligner;Lorg/eclipse/jdt/internal/formatter/linewrap/Aligner$AlignIndexFinder;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/eclipse/jdt/internal/formatter/linewrap/Aligner;->lambda$2(Lorg/eclipse/jdt/internal/formatter/linewrap/Aligner$AlignIndexFinder;Ljava/util/List;)V

    return-void
.end method

.method private isNewGroup(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/ASTNode;)Z
    .locals 6

    const/4 v0, 0x1

    if-nez p2, :cond_0

    return v0

    :cond_0
    iget-object v1, p0, Lorg/eclipse/jdt/internal/formatter/linewrap/Aligner;->tm:Lorg/eclipse/jdt/internal/formatter/TokenManager;

    const/4 v2, -0x1

    invoke-virtual {v1, p2, v2}, Lorg/eclipse/jdt/internal/formatter/TokenManager;->lastIndexIn(Lorg/eclipse/jdt/core/dom/ASTNode;I)I

    move-result p2

    iget-object v1, p0, Lorg/eclipse/jdt/internal/formatter/linewrap/Aligner;->tm:Lorg/eclipse/jdt/internal/formatter/TokenManager;

    invoke-virtual {v1, p1, v2}, Lorg/eclipse/jdt/internal/formatter/TokenManager;->firstIndexIn(Lorg/eclipse/jdt/core/dom/ASTNode;I)I

    move-result p1

    iget-object v1, p0, Lorg/eclipse/jdt/internal/formatter/linewrap/Aligner;->tm:Lorg/eclipse/jdt/internal/formatter/TokenManager;

    invoke-virtual {v1, p2}, Lorg/eclipse/jdt/internal/formatter/TokenManager;->get(I)Lorg/eclipse/jdt/internal/formatter/Token;

    move-result-object v1

    add-int/2addr p2, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-le p2, p1, :cond_2

    iget-object p1, p0, Lorg/eclipse/jdt/internal/formatter/linewrap/Aligner;->options:Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;

    iget p1, p1, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->align_fields_grouping_blank_lines:I

    if-le v3, p1, :cond_1

    return v0

    :cond_1
    return v2

    :cond_2
    iget-object v4, p0, Lorg/eclipse/jdt/internal/formatter/linewrap/Aligner;->tm:Lorg/eclipse/jdt/internal/formatter/TokenManager;

    invoke-virtual {v4, p2}, Lorg/eclipse/jdt/internal/formatter/TokenManager;->get(I)Lorg/eclipse/jdt/internal/formatter/Token;

    move-result-object v4

    iget-object v5, p0, Lorg/eclipse/jdt/internal/formatter/linewrap/Aligner;->tm:Lorg/eclipse/jdt/internal/formatter/TokenManager;

    invoke-virtual {v5, v1, v4}, Lorg/eclipse/jdt/internal/formatter/TokenManager;->countLineBreaksBetween(Lorg/eclipse/jdt/internal/formatter/Token;Lorg/eclipse/jdt/internal/formatter/Token;)I

    move-result v1

    iget-object v5, p0, Lorg/eclipse/jdt/internal/formatter/linewrap/Aligner;->options:Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;

    iget v5, v5, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->number_of_empty_lines_to_preserve:I

    add-int/2addr v5, v0

    invoke-static {v1, v5}, Ljava/lang/Math;->min(II)I

    move-result v1

    add-int/2addr v3, v1

    add-int/lit8 p2, p2, 0x1

    move-object v1, v4

    goto :goto_0
.end method

.method public static synthetic j(Lorg/eclipse/jdt/internal/formatter/linewrap/Aligner;Lorg/eclipse/jdt/internal/formatter/linewrap/Aligner$AlignIndexFinder;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/eclipse/jdt/internal/formatter/linewrap/Aligner;->lambda$8(Lorg/eclipse/jdt/internal/formatter/linewrap/Aligner$AlignIndexFinder;Ljava/util/List;)V

    return-void
.end method

.method public static synthetic k(Lorg/eclipse/jdt/internal/formatter/linewrap/Aligner;Lorg/eclipse/jdt/core/dom/ASTNode;)Ljava/util/Optional;
    .locals 0

    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/formatter/linewrap/Aligner;->lambda$0(Lorg/eclipse/jdt/core/dom/ASTNode;)Ljava/util/Optional;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic l(Lorg/eclipse/jdt/internal/formatter/linewrap/Aligner;Ljava/util/Optional;)Lorg/eclipse/jdt/internal/formatter/Token;
    .locals 0

    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/formatter/linewrap/Aligner;->lambda$17(Ljava/util/Optional;)Lorg/eclipse/jdt/internal/formatter/Token;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$0(Lorg/eclipse/jdt/core/dom/ASTNode;)Ljava/util/Optional;
    .locals 1

    const-class v0, Lorg/eclipse/jdt/core/dom/FieldDeclaration;

    invoke-direct {p0, p1, v0}, Lorg/eclipse/jdt/internal/formatter/linewrap/Aligner;->optionalCast(Lorg/eclipse/jdt/core/dom/ASTNode;Ljava/lang/Class;)Ljava/util/Optional;

    move-result-object p1

    return-object p1
.end method

.method private synthetic lambda$1(Lorg/eclipse/jdt/core/dom/FieldDeclaration;)Ljava/util/Optional;
    .locals 1

    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/FieldDeclaration;->fragments()Ljava/util/List;

    move-result-object p1

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/eclipse/jdt/core/dom/VariableDeclarationFragment;

    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/formatter/linewrap/Aligner;->findName(Lorg/eclipse/jdt/core/dom/VariableDeclarationFragment;)Ljava/util/Optional;

    move-result-object p1

    return-object p1
.end method

.method private synthetic lambda$10(Lorg/eclipse/jdt/internal/formatter/linewrap/Aligner$AlignIndexFinder;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0, p2, p1}, Lorg/eclipse/jdt/internal/formatter/linewrap/Aligner;->alignNodes(Ljava/util/List;Lorg/eclipse/jdt/internal/formatter/linewrap/Aligner$AlignIndexFinder;)V

    return-void
.end method

.method private synthetic lambda$11(Lorg/eclipse/jdt/core/dom/ASTNode;)Ljava/util/Optional;
    .locals 1

    const-class v0, Lorg/eclipse/jdt/core/dom/ExpressionStatement;

    invoke-direct {p0, p1, v0}, Lorg/eclipse/jdt/internal/formatter/linewrap/Aligner;->optionalCast(Lorg/eclipse/jdt/core/dom/ASTNode;Ljava/lang/Class;)Ljava/util/Optional;

    move-result-object p1

    new-instance v0, Lorg/eclipse/jdt/internal/formatter/linewrap/k;

    invoke-direct {v0}, Lorg/eclipse/jdt/internal/formatter/linewrap/k;-><init>()V

    invoke-virtual {p1, v0}, Ljava/util/Optional;->filter(Ljava/util/function/Predicate;)Ljava/util/Optional;

    move-result-object p1

    return-object p1
.end method

.method private static synthetic lambda$12(Lorg/eclipse/jdt/core/dom/ExpressionStatement;)Z
    .locals 0

    invoke-virtual {p0}, Lorg/eclipse/jdt/core/dom/ExpressionStatement;->getExpression()Lorg/eclipse/jdt/core/dom/Expression;

    move-result-object p0

    instance-of p0, p0, Lorg/eclipse/jdt/core/dom/Assignment;

    return p0
.end method

.method private synthetic lambda$13(Lorg/eclipse/jdt/core/dom/ExpressionStatement;)Ljava/util/Optional;
    .locals 2

    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/ExpressionStatement;->getExpression()Lorg/eclipse/jdt/core/dom/Expression;

    move-result-object p1

    check-cast p1, Lorg/eclipse/jdt/core/dom/Assignment;

    iget-object v0, p0, Lorg/eclipse/jdt/internal/formatter/linewrap/Aligner;->tm:Lorg/eclipse/jdt/internal/formatter/TokenManager;

    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/Assignment;->getRightHandSide()Lorg/eclipse/jdt/core/dom/Expression;

    move-result-object p1

    const/4 v1, -0x1

    invoke-virtual {v0, p1, v1}, Lorg/eclipse/jdt/internal/formatter/TokenManager;->firstIndexBefore(Lorg/eclipse/jdt/core/dom/ASTNode;I)I

    move-result p1

    :goto_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/formatter/linewrap/Aligner;->tm:Lorg/eclipse/jdt/internal/formatter/TokenManager;

    invoke-virtual {v0, p1}, Lorg/eclipse/jdt/internal/formatter/TokenManager;->get(I)Lorg/eclipse/jdt/internal/formatter/Token;

    move-result-object v0

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/formatter/Token;->isComment()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p1

    return-object p1

    :cond_0
    add-int/lit8 p1, p1, -0x1

    goto :goto_0
.end method

.method private synthetic lambda$14(Lorg/eclipse/jdt/internal/formatter/linewrap/Aligner$AlignIndexFinder;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0, p2, p1}, Lorg/eclipse/jdt/internal/formatter/linewrap/Aligner;->alignNodes(Ljava/util/List;Lorg/eclipse/jdt/internal/formatter/linewrap/Aligner$AlignIndexFinder;)V

    return-void
.end method

.method private synthetic lambda$17(Ljava/util/Optional;)Lorg/eclipse/jdt/internal/formatter/Token;
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/formatter/linewrap/Aligner;->tm:Lorg/eclipse/jdt/internal/formatter/TokenManager;

    invoke-virtual {p1}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {v0, p1}, Lorg/eclipse/jdt/internal/formatter/TokenManager;->get(I)Lorg/eclipse/jdt/internal/formatter/Token;

    move-result-object p1

    return-object p1
.end method

.method private synthetic lambda$2(Lorg/eclipse/jdt/internal/formatter/linewrap/Aligner$AlignIndexFinder;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0, p2, p1}, Lorg/eclipse/jdt/internal/formatter/linewrap/Aligner;->alignNodes(Ljava/util/List;Lorg/eclipse/jdt/internal/formatter/linewrap/Aligner$AlignIndexFinder;)V

    return-void
.end method

.method private synthetic lambda$21(Lorg/eclipse/jdt/core/dom/Expression;)Ljava/lang/Integer;
    .locals 2

    iget-object v0, p0, Lorg/eclipse/jdt/internal/formatter/linewrap/Aligner;->tm:Lorg/eclipse/jdt/internal/formatter/TokenManager;

    const/16 v1, 0x48

    invoke-virtual {v0, p1, v1}, Lorg/eclipse/jdt/internal/formatter/TokenManager;->firstIndexBefore(Lorg/eclipse/jdt/core/dom/ASTNode;I)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method private static synthetic lambda$22(Ljava/util/List;)Z
    .locals 1

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    const/4 v0, 0x2

    if-ge p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private synthetic lambda$3(Lorg/eclipse/jdt/core/dom/FieldDeclaration;)Ljava/util/Optional;
    .locals 1

    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/FieldDeclaration;->fragments()Ljava/util/List;

    move-result-object p1

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/eclipse/jdt/core/dom/VariableDeclarationFragment;

    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/formatter/linewrap/Aligner;->findAssign(Lorg/eclipse/jdt/core/dom/VariableDeclarationFragment;)Ljava/util/Optional;

    move-result-object p1

    return-object p1
.end method

.method private synthetic lambda$4(Lorg/eclipse/jdt/internal/formatter/linewrap/Aligner$AlignIndexFinder;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0, p2, p1}, Lorg/eclipse/jdt/internal/formatter/linewrap/Aligner;->alignNodes(Ljava/util/List;Lorg/eclipse/jdt/internal/formatter/linewrap/Aligner$AlignIndexFinder;)V

    return-void
.end method

.method private synthetic lambda$5(Lorg/eclipse/jdt/core/dom/ASTNode;)Z
    .locals 2

    iget-object v0, p0, Lorg/eclipse/jdt/internal/formatter/linewrap/Aligner;->tm:Lorg/eclipse/jdt/internal/formatter/TokenManager;

    const/4 v1, -0x1

    invoke-virtual {v0, p1, v1}, Lorg/eclipse/jdt/internal/formatter/TokenManager;->firstTokenIn(Lorg/eclipse/jdt/core/dom/ASTNode;I)Lorg/eclipse/jdt/internal/formatter/Token;

    move-result-object p1

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/formatter/Token;->getLineBreaksBefore()I

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private synthetic lambda$6(Lorg/eclipse/jdt/core/dom/ASTNode;)Ljava/util/Optional;
    .locals 1

    const-class v0, Lorg/eclipse/jdt/core/dom/VariableDeclarationStatement;

    invoke-direct {p0, p1, v0}, Lorg/eclipse/jdt/internal/formatter/linewrap/Aligner;->optionalCast(Lorg/eclipse/jdt/core/dom/ASTNode;Ljava/lang/Class;)Ljava/util/Optional;

    move-result-object p1

    return-object p1
.end method

.method private synthetic lambda$7(Lorg/eclipse/jdt/core/dom/VariableDeclarationStatement;)Ljava/util/Optional;
    .locals 1

    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/VariableDeclarationStatement;->fragments()Ljava/util/List;

    move-result-object p1

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/eclipse/jdt/core/dom/VariableDeclarationFragment;

    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/formatter/linewrap/Aligner;->findName(Lorg/eclipse/jdt/core/dom/VariableDeclarationFragment;)Ljava/util/Optional;

    move-result-object p1

    return-object p1
.end method

.method private synthetic lambda$8(Lorg/eclipse/jdt/internal/formatter/linewrap/Aligner$AlignIndexFinder;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0, p2, p1}, Lorg/eclipse/jdt/internal/formatter/linewrap/Aligner;->alignNodes(Ljava/util/List;Lorg/eclipse/jdt/internal/formatter/linewrap/Aligner$AlignIndexFinder;)V

    return-void
.end method

.method private synthetic lambda$9(Lorg/eclipse/jdt/core/dom/VariableDeclarationStatement;)Ljava/util/Optional;
    .locals 1

    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/VariableDeclarationStatement;->fragments()Ljava/util/List;

    move-result-object p1

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/eclipse/jdt/core/dom/VariableDeclarationFragment;

    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/formatter/linewrap/Aligner;->findAssign(Lorg/eclipse/jdt/core/dom/VariableDeclarationFragment;)Ljava/util/Optional;

    move-result-object p1

    return-object p1
.end method

.method public static synthetic m(Lorg/eclipse/jdt/internal/formatter/linewrap/Aligner;Lorg/eclipse/jdt/core/dom/ASTNode;)Ljava/util/Optional;
    .locals 0

    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/formatter/linewrap/Aligner;->lambda$11(Lorg/eclipse/jdt/core/dom/ASTNode;)Ljava/util/Optional;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic n(Lorg/eclipse/jdt/internal/formatter/linewrap/Aligner;Lorg/eclipse/jdt/core/dom/ExpressionStatement;)Ljava/util/Optional;
    .locals 0

    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/formatter/linewrap/Aligner;->lambda$13(Lorg/eclipse/jdt/core/dom/ExpressionStatement;)Ljava/util/Optional;

    move-result-object p0

    return-object p0
.end method

.method private normalizedAlign(I)I
    .locals 2

    iget-object v0, p0, Lorg/eclipse/jdt/internal/formatter/linewrap/Aligner;->options:Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;

    iget-boolean v0, v0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->align_with_spaces:Z

    if-eqz v0, :cond_0

    return p1

    :cond_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/formatter/linewrap/Aligner;->tm:Lorg/eclipse/jdt/internal/formatter/TokenManager;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lorg/eclipse/jdt/internal/formatter/TokenManager;->toIndent(IZ)I

    move-result p1

    return p1
.end method

.method public static synthetic o(Lorg/eclipse/jdt/internal/formatter/linewrap/Aligner;Lorg/eclipse/jdt/core/dom/FieldDeclaration;)Ljava/util/Optional;
    .locals 0

    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/formatter/linewrap/Aligner;->lambda$1(Lorg/eclipse/jdt/core/dom/FieldDeclaration;)Ljava/util/Optional;

    move-result-object p0

    return-object p0
.end method

.method private optionalCast(Lorg/eclipse/jdt/core/dom/ASTNode;Ljava/lang/Class;)Ljava/util/Optional;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<N:",
            "Lorg/eclipse/jdt/core/dom/ASTNode;",
            ">(",
            "Lorg/eclipse/jdt/core/dom/ASTNode;",
            "Ljava/lang/Class<",
            "TN;>;)",
            "Ljava/util/Optional<",
            "TN;>;"
        }
    .end annotation

    invoke-static {p1}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p1

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lorg/eclipse/jdt/internal/formatter/linewrap/a;

    invoke-direct {v0, p2}, Lorg/eclipse/jdt/internal/formatter/linewrap/a;-><init>(Ljava/lang/Class;)V

    invoke-virtual {p1, v0}, Ljava/util/Optional;->filter(Ljava/util/function/Predicate;)Ljava/util/Optional;

    move-result-object p1

    new-instance v0, Lorg/eclipse/jdt/internal/formatter/linewrap/l;

    invoke-direct {v0, p2}, Lorg/eclipse/jdt/internal/formatter/linewrap/l;-><init>(Ljava/lang/Class;)V

    invoke-virtual {p1, v0}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object p1

    return-object p1
.end method

.method public static synthetic p(Lorg/eclipse/jdt/internal/formatter/linewrap/Aligner;Lorg/eclipse/jdt/core/dom/VariableDeclarationStatement;)Ljava/util/Optional;
    .locals 0

    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/formatter/linewrap/Aligner;->lambda$7(Lorg/eclipse/jdt/core/dom/VariableDeclarationStatement;)Ljava/util/Optional;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic q(Lorg/eclipse/jdt/core/dom/ExpressionStatement;)Z
    .locals 0

    invoke-static {p0}, Lorg/eclipse/jdt/internal/formatter/linewrap/Aligner;->lambda$12(Lorg/eclipse/jdt/core/dom/ExpressionStatement;)Z

    move-result p0

    return p0
.end method

.method public static synthetic r(Lorg/eclipse/jdt/internal/formatter/linewrap/Aligner;Lorg/eclipse/jdt/core/dom/Expression;)Ljava/lang/Integer;
    .locals 0

    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/formatter/linewrap/Aligner;->lambda$21(Lorg/eclipse/jdt/core/dom/Expression;)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method private toAlignGroups(Ljava/util/List;Ljava/util/function/Function;)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<N:",
            "Lorg/eclipse/jdt/core/dom/ASTNode;",
            ">(",
            "Ljava/util/List<",
            "+",
            "Lorg/eclipse/jdt/core/dom/ASTNode;",
            ">;",
            "Ljava/util/function/Function<",
            "Lorg/eclipse/jdt/core/dom/ASTNode;",
            "Ljava/util/Optional<",
            "TN;>;>;)",
            "Ljava/util/List<",
            "Ljava/util/List<",
            "TN;>;>;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v2, 0x0

    move-object v3, v2

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_0

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance p1, Lorg/eclipse/jdt/internal/formatter/linewrap/m;

    invoke-direct {p1}, Lorg/eclipse/jdt/internal/formatter/linewrap/m;-><init>()V

    invoke-interface {v0, p1}, Ljava/util/Collection;->removeIf(Ljava/util/function/Predicate;)Z

    return-object v0

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/eclipse/jdt/core/dom/ASTNode;

    invoke-interface {p2, v4}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Optional;

    invoke-virtual {v5}, Ljava/util/Optional;->isPresent()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-direct {p0, v4, v3}, Lorg/eclipse/jdt/internal/formatter/linewrap/Aligner;->isNewGroup(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/ASTNode;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    :cond_1
    invoke-virtual {v5}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/eclipse/jdt/core/dom/ASTNode;

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    invoke-virtual {v5, v2}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/eclipse/jdt/core/dom/ASTNode;

    goto :goto_0
.end method


# virtual methods
.method public alignComments()V
    .locals 13

    iget-object v0, p0, Lorg/eclipse/jdt/internal/formatter/linewrap/Aligner;->options:Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;

    iget-boolean v0, v0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->comment_preserve_white_space_between_code_and_line_comments:Z

    new-instance v1, Lorg/eclipse/jdt/internal/formatter/linewrap/Aligner$PositionCounter;

    invoke-direct {v1, p0}, Lorg/eclipse/jdt/internal/formatter/linewrap/Aligner$PositionCounter;-><init>(Lorg/eclipse/jdt/internal/formatter/linewrap/Aligner;)V

    iget-object v2, p0, Lorg/eclipse/jdt/internal/formatter/linewrap/Aligner;->alignGroups:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_0

    return-void

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    const/4 v5, 0x0

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    const/4 v7, -0x1

    if-nez v6, :cond_8

    invoke-direct {p0, v5}, Lorg/eclipse/jdt/internal/formatter/linewrap/Aligner;->normalizedAlign(I)I

    move-result v6

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_1

    goto :goto_0

    :cond_1
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/eclipse/jdt/core/dom/ASTNode;

    invoke-direct {p0, v3}, Lorg/eclipse/jdt/internal/formatter/linewrap/Aligner;->findFirstTokenInLine(Lorg/eclipse/jdt/core/dom/ASTNode;)I

    move-result v4

    iget-object v5, p0, Lorg/eclipse/jdt/internal/formatter/linewrap/Aligner;->tm:Lorg/eclipse/jdt/internal/formatter/TokenManager;

    invoke-virtual {v5, v3, v7}, Lorg/eclipse/jdt/internal/formatter/TokenManager;->lastIndexIn(Lorg/eclipse/jdt/core/dom/ASTNode;I)I

    move-result v3

    iget-object v5, p0, Lorg/eclipse/jdt/internal/formatter/linewrap/Aligner;->tm:Lorg/eclipse/jdt/internal/formatter/TokenManager;

    invoke-virtual {v5}, Lorg/eclipse/jdt/internal/formatter/TokenManager;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x2

    invoke-static {v3, v5}, Ljava/lang/Math;->min(II)I

    move-result v9

    :goto_3
    if-le v4, v9, :cond_2

    goto :goto_2

    :cond_2
    iget-object v3, p0, Lorg/eclipse/jdt/internal/formatter/linewrap/Aligner;->tm:Lorg/eclipse/jdt/internal/formatter/TokenManager;

    invoke-virtual {v3, v4}, Lorg/eclipse/jdt/internal/formatter/TokenManager;->get(I)Lorg/eclipse/jdt/internal/formatter/Token;

    move-result-object v3

    iget-object v5, p0, Lorg/eclipse/jdt/internal/formatter/linewrap/Aligner;->tm:Lorg/eclipse/jdt/internal/formatter/TokenManager;

    add-int/lit8 v10, v4, 0x1

    invoke-virtual {v5, v10}, Lorg/eclipse/jdt/internal/formatter/TokenManager;->get(I)Lorg/eclipse/jdt/internal/formatter/Token;

    move-result-object v5

    invoke-virtual {v3}, Lorg/eclipse/jdt/internal/formatter/Token;->getLineBreaksAfter()I

    move-result v11

    const/16 v12, 0x3ea

    if-gtz v11, :cond_5

    invoke-virtual {v5}, Lorg/eclipse/jdt/internal/formatter/Token;->getLineBreaksBefore()I

    move-result v11

    if-gtz v11, :cond_5

    iget v3, v5, Lorg/eclipse/jdt/internal/formatter/Token;->tokenType:I

    const/16 v11, 0x3e9

    if-ne v3, v11, :cond_3

    if-eqz v0, :cond_4

    :cond_3
    if-ne v3, v12, :cond_7

    if-ne v4, v9, :cond_7

    :cond_4
    invoke-virtual {v5, v6}, Lorg/eclipse/jdt/internal/formatter/Token;->setAlign(I)V

    goto :goto_4

    :cond_5
    iget v5, v3, Lorg/eclipse/jdt/internal/formatter/Token;->tokenType:I

    if-ne v5, v12, :cond_6

    invoke-virtual {v3, v6}, Lorg/eclipse/jdt/internal/formatter/Token;->setAlign(I)V

    goto :goto_4

    :cond_6
    if-nez v0, :cond_7

    iget-object v3, p0, Lorg/eclipse/jdt/internal/formatter/linewrap/Aligner;->tm:Lorg/eclipse/jdt/internal/formatter/TokenManager;

    invoke-virtual {v3, v4, v6}, Lorg/eclipse/jdt/internal/formatter/TokenManager;->addNLSAlignIndex(II)V

    :cond_7
    :goto_4
    move v4, v10

    goto :goto_3

    :cond_8
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/eclipse/jdt/core/dom/ASTNode;

    invoke-direct {p0, v6}, Lorg/eclipse/jdt/internal/formatter/linewrap/Aligner;->findFirstTokenInLine(Lorg/eclipse/jdt/core/dom/ASTNode;)I

    move-result v8

    iget-object v9, p0, Lorg/eclipse/jdt/internal/formatter/linewrap/Aligner;->tm:Lorg/eclipse/jdt/internal/formatter/TokenManager;

    invoke-virtual {v9, v6, v7}, Lorg/eclipse/jdt/internal/formatter/TokenManager;->lastIndexIn(Lorg/eclipse/jdt/core/dom/ASTNode;I)I

    move-result v6

    add-int/lit8 v6, v6, 0x1

    invoke-virtual {v1, v8, v6}, Lorg/eclipse/jdt/internal/formatter/linewrap/Aligner$PositionCounter;->findMaxPosition(II)I

    move-result v6

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v5

    goto/16 :goto_1
.end method

.method public handleAlign(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/eclipse/jdt/core/dom/BodyDeclaration;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/eclipse/jdt/internal/formatter/linewrap/Aligner;->options:Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;

    iget-boolean v0, v0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->align_type_members_on_columns:Z

    if-eqz v0, :cond_1

    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/formatter/linewrap/Aligner;->areKeptOnOneLine(Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    new-instance v0, Lorg/eclipse/jdt/internal/formatter/linewrap/s;

    invoke-direct {v0, p0}, Lorg/eclipse/jdt/internal/formatter/linewrap/s;-><init>(Lorg/eclipse/jdt/internal/formatter/linewrap/Aligner;)V

    .line 3
    invoke-direct {p0, p1, v0}, Lorg/eclipse/jdt/internal/formatter/linewrap/Aligner;->toAlignGroups(Ljava/util/List;Ljava/util/function/Function;)Ljava/util/List;

    move-result-object p1

    .line 4
    iget-object v0, p0, Lorg/eclipse/jdt/internal/formatter/linewrap/Aligner;->alignGroups:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 5
    new-instance v0, Lorg/eclipse/jdt/internal/formatter/linewrap/t;

    invoke-direct {v0, p0}, Lorg/eclipse/jdt/internal/formatter/linewrap/t;-><init>(Lorg/eclipse/jdt/internal/formatter/linewrap/Aligner;)V

    .line 6
    new-instance v1, Lorg/eclipse/jdt/internal/formatter/linewrap/u;

    invoke-direct {v1, p0, v0}, Lorg/eclipse/jdt/internal/formatter/linewrap/u;-><init>(Lorg/eclipse/jdt/internal/formatter/linewrap/Aligner;Lorg/eclipse/jdt/internal/formatter/linewrap/Aligner$AlignIndexFinder;)V

    invoke-interface {p1, v1}, Ljava/lang/Iterable;->forEach(Ljava/util/function/Consumer;)V

    .line 7
    new-instance v0, Lorg/eclipse/jdt/internal/formatter/linewrap/v;

    invoke-direct {v0, p0}, Lorg/eclipse/jdt/internal/formatter/linewrap/v;-><init>(Lorg/eclipse/jdt/internal/formatter/linewrap/Aligner;)V

    .line 8
    new-instance v1, Lorg/eclipse/jdt/internal/formatter/linewrap/w;

    invoke-direct {v1, p0, v0}, Lorg/eclipse/jdt/internal/formatter/linewrap/w;-><init>(Lorg/eclipse/jdt/internal/formatter/linewrap/Aligner;Lorg/eclipse/jdt/internal/formatter/linewrap/Aligner$AlignIndexFinder;)V

    invoke-interface {p1, v1}, Ljava/lang/Iterable;->forEach(Ljava/util/function/Consumer;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public handleAlign(Lorg/eclipse/jdt/core/dom/Block;)V
    .locals 1

    .line 9
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/Block;->statements()Ljava/util/List;

    move-result-object p1

    .line 10
    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/formatter/linewrap/Aligner;->areKeptOnOneLine(Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 11
    :cond_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/formatter/linewrap/Aligner;->options:Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;

    iget-boolean v0, v0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->align_variable_declarations_on_columns:Z

    if-eqz v0, :cond_1

    .line 12
    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/formatter/linewrap/Aligner;->alignDeclarations(Ljava/util/List;)V

    .line 13
    :cond_1
    iget-object v0, p0, Lorg/eclipse/jdt/internal/formatter/linewrap/Aligner;->options:Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;

    iget-boolean v0, v0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->align_assignment_statements_on_columns:Z

    if-eqz v0, :cond_2

    .line 14
    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/formatter/linewrap/Aligner;->alignAssignmentStatements(Ljava/util/List;)V

    :cond_2
    return-void
.end method
