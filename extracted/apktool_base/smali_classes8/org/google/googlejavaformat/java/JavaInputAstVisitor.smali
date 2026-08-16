.class public final Lorg/google/googlejavaformat/java/JavaInputAstVisitor;
.super Lorg/openjdk/source/util/TreePathScanner;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/google/googlejavaformat/java/JavaInputAstVisitor$Direction;,
        Lorg/google/googlejavaformat/java/JavaInputAstVisitor$BracesOrNot;,
        Lorg/google/googlejavaformat/java/JavaInputAstVisitor$FirstDeclarationsOrNot;,
        Lorg/google/googlejavaformat/java/JavaInputAstVisitor$CollapseEmptyOrNot;,
        Lorg/google/googlejavaformat/java/JavaInputAstVisitor$AllowLeadingBlankLine;,
        Lorg/google/googlejavaformat/java/JavaInputAstVisitor$AllowTrailingBlankLine;,
        Lorg/google/googlejavaformat/java/JavaInputAstVisitor$DeclarationKind;,
        Lorg/google/googlejavaformat/java/JavaInputAstVisitor$BreakOrNot;,
        Lorg/google/googlejavaformat/java/JavaInputAstVisitor$ReceiverParameter;,
        Lorg/google/googlejavaformat/java/JavaInputAstVisitor$VarArgsOrNot;,
        Lorg/google/googlejavaformat/java/JavaInputAstVisitor$DimensionsOrNot;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/openjdk/source/util/TreePathScanner<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# static fields
.field private static final EMPTY_LIST:Lcom/google/common/collect/g1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/g1<",
            "Lorg/google/googlejavaformat/Op;",
            ">;"
        }
    .end annotation
.end field

.field private static final FORMAT_SPECIFIER:Ljava/util/regex/Pattern;

.field static final LOG_METHODS:Lcom/google/common/collect/r1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/r1<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final MAX_ITEM_LENGTH_FOR_FILLING:I = 0xa

.field private static final ZERO:Lorg/google/googlejavaformat/Indent$Const;


# instance fields
.field private final builder:Lorg/google/googlejavaformat/OpsBuilder;

.field private final inExpression:Ljava/util/Deque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Deque<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final indentMultiplier:I

.field private final minusFour:Lorg/google/googlejavaformat/Indent$Const;

.field private final minusTwo:Lorg/google/googlejavaformat/Indent$Const;

.field private final plusFour:Lorg/google/googlejavaformat/Indent$Const;

.field private final plusTwo:Lorg/google/googlejavaformat/Indent$Const;


# direct methods
.method static constructor <clinit>()V
    .locals 17

    sget-object v0, Lorg/google/googlejavaformat/Indent$Const;->ZERO:Lorg/google/googlejavaformat/Indent$Const;

    sput-object v0, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->ZERO:Lorg/google/googlejavaformat/Indent$Const;

    invoke-static {}, Lcom/google/common/collect/g1;->x()Lcom/google/common/collect/g1;

    move-result-object v0

    sput-object v0, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->EMPTY_LIST:Lcom/google/common/collect/g1;

    const-string v8, "withCause"

    const-string v9, "withStackTrace"

    const-string v1, "atMostEvery"

    const-string v2, "atSevere"

    const-string v3, "atWarning"

    const-string v4, "every"

    const-string v5, "log"

    const-string v6, "logVarargs"

    const-string v7, "perUnique"

    filled-new-array/range {v1 .. v9}, [Ljava/lang/String;

    move-result-object v16

    const-string v10, "at"

    const-string v11, "atConfig"

    const-string v12, "atFine"

    const-string v13, "atFiner"

    const-string v14, "atFinest"

    const-string v15, "atInfo"

    invoke-static/range {v10 .. v16}, Lcom/google/common/collect/r1;->F(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)Lcom/google/common/collect/r1;

    move-result-object v0

    sput-object v0, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->LOG_METHODS:Lcom/google/common/collect/r1;

    const-string v0, "%|\\{[0-9]\\}"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->FORMAT_SPECIFIER:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>(Lorg/google/googlejavaformat/OpsBuilder;I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "builder",
            "indentMultiplier"
        }
    .end annotation

    invoke-direct {p0}, Lorg/openjdk/source/util/TreePathScanner;-><init>()V

    new-instance v0, Ljava/util/ArrayDeque;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {v1}, Lcom/google/common/collect/g1;->y(Ljava/lang/Object;)Lcom/google/common/collect/g1;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayDeque;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->inExpression:Ljava/util/Deque;

    iput-object p1, p0, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lorg/google/googlejavaformat/OpsBuilder;

    iput p2, p0, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->indentMultiplier:I

    const/4 p1, -0x2

    invoke-static {p1, p2}, Lorg/google/googlejavaformat/Indent$Const;->make(II)Lorg/google/googlejavaformat/Indent$Const;

    move-result-object p1

    iput-object p1, p0, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->minusTwo:Lorg/google/googlejavaformat/Indent$Const;

    const/4 p1, -0x4

    invoke-static {p1, p2}, Lorg/google/googlejavaformat/Indent$Const;->make(II)Lorg/google/googlejavaformat/Indent$Const;

    move-result-object p1

    iput-object p1, p0, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->minusFour:Lorg/google/googlejavaformat/Indent$Const;

    const/4 p1, 0x2

    invoke-static {p1, p2}, Lorg/google/googlejavaformat/Indent$Const;->make(II)Lorg/google/googlejavaformat/Indent$Const;

    move-result-object p1

    iput-object p1, p0, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->plusTwo:Lorg/google/googlejavaformat/Indent$Const;

    const/4 p1, 0x4

    invoke-static {p1, p2}, Lorg/google/googlejavaformat/Indent$Const;->make(II)Lorg/google/googlejavaformat/Indent$Const;

    move-result-object p1

    iput-object p1, p0, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->plusFour:Lorg/google/googlejavaformat/Indent$Const;

    return-void
.end method

.method public static synthetic a(Lorg/openjdk/source/tree/ExpressionTree;)Z
    .locals 0

    invoke-static {p0}, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->isArrayValue(Lorg/openjdk/source/tree/ExpressionTree;)Z

    move-result p0

    return p0
.end method

.method public static synthetic access$000()Ljava/util/regex/Pattern;
    .locals 1

    sget-object v0, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->FORMAT_SPECIFIER:Ljava/util/regex/Pattern;

    return-object v0
.end method

.method private actualColumn(Lorg/openjdk/source/tree/ExpressionTree;)Ljava/lang/Integer;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "expression"
        }
    .end annotation

    iget-object v0, p0, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lorg/google/googlejavaformat/OpsBuilder;

    invoke-virtual {v0}, Lorg/google/googlejavaformat/OpsBuilder;->getInput()Lorg/google/googlejavaformat/Input;

    move-result-object v0

    invoke-virtual {v0}, Lorg/google/googlejavaformat/Input;->getPositionToColumnMap()Lcom/google/common/collect/i1;

    move-result-object v0

    iget-object v1, p0, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lorg/google/googlejavaformat/OpsBuilder;

    invoke-static {p1}, Lorg/google/googlejavaformat/java/Trees;->getStartPosition(Lorg/openjdk/source/tree/Tree;)I

    move-result p1

    invoke-virtual {v1, p1}, Lorg/google/googlejavaformat/OpsBuilder;->actualStartColumn(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    return-object p1
.end method

.method private ambiguousUnaryOperator(Lorg/openjdk/source/tree/UnaryTree;Ljava/lang/String;)Z
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "node",
            "operatorName"
        }
    .end annotation

    sget-object v0, Lorg/google/googlejavaformat/java/JavaInputAstVisitor$2;->$SwitchMap$org$openjdk$source$tree$Tree$Kind:[I

    invoke-interface {p1}, Lorg/openjdk/source/tree/Tree;->getKind()Lorg/openjdk/source/tree/Tree$Kind;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x5

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    const/4 v1, 0x6

    if-eq v0, v1, :cond_0

    return v2

    :cond_0
    invoke-interface {p1}, Lorg/openjdk/source/tree/UnaryTree;->getExpression()Lorg/openjdk/source/tree/ExpressionTree;

    move-result-object v0

    instance-of v0, v0, Lorg/openjdk/source/tree/UnaryTree;

    if-nez v0, :cond_1

    return v2

    :cond_1
    invoke-interface {p1}, Lorg/openjdk/source/tree/UnaryTree;->getExpression()Lorg/openjdk/source/tree/ExpressionTree;

    move-result-object v0

    check-cast v0, Lorg/openjdk/tools/javac/tree/JCTree;

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/tree/JCTree;->getTag()Lorg/openjdk/tools/javac/tree/JCTree$Tag;

    move-result-object v0

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/tree/JCTree$Tag;->isPostUnaryOp()Z

    move-result v0

    if-eqz v0, :cond_2

    return v2

    :cond_2
    invoke-static {p1}, Lorg/google/googlejavaformat/java/Trees;->operatorName(Lorg/openjdk/source/tree/ExpressionTree;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_3

    return v2

    :cond_3
    const/4 p1, 0x1

    return p1
.end method

.method private argList(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "arguments"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lorg/openjdk/source/tree/ExpressionTree;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lorg/google/googlejavaformat/OpsBuilder;

    sget-object v1, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->ZERO:Lorg/google/googlejavaformat/Indent$Const;

    invoke-virtual {v0, v1}, Lorg/google/googlejavaformat/OpsBuilder;->open(Lorg/google/googlejavaformat/Indent;)V

    invoke-direct {p0, p1}, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->hasOnlyShortItems(Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lorg/google/googlejavaformat/Doc$FillMode;->INDEPENDENT:Lorg/google/googlejavaformat/Doc$FillMode;

    goto :goto_0

    :cond_0
    sget-object v0, Lorg/google/googlejavaformat/Doc$FillMode;->UNIFIED:Lorg/google/googlejavaformat/Doc$FillMode;

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v1, 0x1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/openjdk/source/tree/ExpressionTree;

    if-nez v1, :cond_1

    const-string v1, ","

    invoke-virtual {p0, v1}, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->token(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lorg/google/googlejavaformat/OpsBuilder;

    const-string v3, " "

    sget-object v4, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->ZERO:Lorg/google/googlejavaformat/Indent$Const;

    invoke-virtual {v1, v0, v3, v4}, Lorg/google/googlejavaformat/OpsBuilder;->breakOp(Lorg/google/googlejavaformat/Doc$FillMode;Ljava/lang/String;Lorg/google/googlejavaformat/Indent;)V

    :cond_1
    const/4 v1, 0x0

    invoke-virtual {p0, v2, v1}, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->scan(Lorg/openjdk/source/tree/Tree;Ljava/lang/Void;)Ljava/lang/Void;

    const/4 v1, 0x0

    goto :goto_1

    :cond_2
    iget-object p1, p0, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lorg/google/googlejavaformat/OpsBuilder;

    invoke-virtual {p1}, Lorg/google/googlejavaformat/OpsBuilder;->close()V

    return-void
.end method

.method private argumentsAreTabular(Ljava/util/List;)I
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "arguments"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lorg/openjdk/source/tree/ExpressionTree;",
            ">;)I"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v1, -0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    invoke-static {p1}, Lcom/google/common/collect/E1;->T(Ljava/util/Iterator;)Lcom/google/common/collect/g2;

    move-result-object p1

    invoke-interface {p1}, Lcom/google/common/collect/g2;->peek()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/openjdk/source/tree/ExpressionTree;

    invoke-direct {p0, v2}, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->actualColumn(Lorg/openjdk/source/tree/ExpressionTree;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Lcom/google/common/collect/g2;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/openjdk/source/tree/ExpressionTree;

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {p1}, Lcom/google/common/collect/g2;->peek()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/openjdk/source/tree/ExpressionTree;

    invoke-direct {p0, v4}, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->actualColumn(Lorg/openjdk/source/tree/ExpressionTree;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-le v4, v2, :cond_1

    invoke-interface {p1}, Lcom/google/common/collect/g2;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/openjdk/source/tree/ExpressionTree;

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_2

    return v1

    :cond_2
    invoke-static {v3}, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->rowLength(Ljava/util/List;)I

    move-result v4

    const/4 v5, 0x1

    if-gt v4, v5, :cond_3

    return v1

    :cond_3
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Lcom/google/common/collect/g2;->peek()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/openjdk/source/tree/ExpressionTree;

    invoke-direct {p0, v4}, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->actualColumn(Lorg/openjdk/source/tree/ExpressionTree;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-eq v4, v2, :cond_4

    return v1

    :cond_4
    invoke-interface {p1}, Lcom/google/common/collect/g2;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/openjdk/source/tree/ExpressionTree;

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {p1}, Lcom/google/common/collect/g2;->peek()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/openjdk/source/tree/ExpressionTree;

    invoke-direct {p0, v4}, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->actualColumn(Lorg/openjdk/source/tree/ExpressionTree;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-le v4, v2, :cond_5

    invoke-interface {p1}, Lcom/google/common/collect/g2;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/openjdk/source/tree/ExpressionTree;

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_5
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_6
    const/4 p1, 0x0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    invoke-static {v0, p1, v3}, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->expressionsAreParallel(Ljava/util/List;II)Z

    move-result p1

    if-nez p1, :cond_7

    return v1

    :cond_7
    move p1, v5

    :goto_3
    const/4 v3, 0x2

    if-ge p1, v2, :cond_9

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    div-int/2addr v4, v3

    add-int/2addr v4, v5

    invoke-static {v0, p1, v4}, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->expressionsAreParallel(Ljava/util/List;II)Z

    move-result v3

    if-nez v3, :cond_8

    return v1

    :cond_8
    add-int/lit8 p1, p1, 0x1

    goto :goto_3

    :cond_9
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p1

    if-ne p1, v3, :cond_b

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-ne v2, p1, :cond_a

    return v2

    :cond_a
    return v1

    :cond_b
    move p1, v5

    :goto_4
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    sub-int/2addr v3, v5

    if-ge p1, v3, :cond_d

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-eq v2, v3, :cond_c

    return v1

    :cond_c
    add-int/lit8 p1, p1, 0x1

    goto :goto_4

    :cond_d
    invoke-static {v0}, Lcom/google/common/collect/D1;->w(Ljava/lang/Iterable;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-ge v2, p1, :cond_e

    return v1

    :cond_e
    return v2
.end method

.method public static synthetic b(Lorg/openjdk/source/tree/DirectiveTree;Lorg/openjdk/source/tree/Tree$Kind;)Ljava/lang/Boolean;
    .locals 0

    invoke-static {p0, p1}, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->lambda$visitModule$0(Lorg/openjdk/source/tree/DirectiveTree;Lorg/openjdk/source/tree/Tree$Kind;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method private static final breakFillList(Lw2/C;)Lcom/google/common/collect/g1;
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "breakTag"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lw2/C<",
            "Lorg/google/googlejavaformat/Output$BreakTag;",
            ">;)",
            "Lcom/google/common/collect/g1<",
            "Lorg/google/googlejavaformat/Op;",
            ">;"
        }
    .end annotation

    sget-object v0, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->ZERO:Lorg/google/googlejavaformat/Indent$Const;

    invoke-static {v0}, Lorg/google/googlejavaformat/OpenOp;->make(Lorg/google/googlejavaformat/Indent;)Lorg/google/googlejavaformat/Op;

    move-result-object v1

    sget-object v2, Lorg/google/googlejavaformat/Doc$FillMode;->INDEPENDENT:Lorg/google/googlejavaformat/Doc$FillMode;

    const-string v3, " "

    invoke-static {v2, v3, v0, p0}, Lorg/google/googlejavaformat/Doc$Break;->make(Lorg/google/googlejavaformat/Doc$FillMode;Ljava/lang/String;Lorg/google/googlejavaformat/Indent;Lw2/C;)Lorg/google/googlejavaformat/Doc$Break;

    move-result-object p0

    invoke-static {}, Lorg/google/googlejavaformat/CloseOp;->make()Lorg/google/googlejavaformat/Op;

    move-result-object v0

    invoke-static {v1, p0, v0}, Lcom/google/common/collect/g1;->A(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/g1;

    move-result-object p0

    return-object p0
.end method

.method private static final breakList(Lw2/C;)Lcom/google/common/collect/g1;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "breakTag"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lw2/C<",
            "Lorg/google/googlejavaformat/Output$BreakTag;",
            ">;)",
            "Lcom/google/common/collect/g1<",
            "Lorg/google/googlejavaformat/Op;",
            ">;"
        }
    .end annotation

    sget-object v0, Lorg/google/googlejavaformat/Doc$FillMode;->UNIFIED:Lorg/google/googlejavaformat/Doc$FillMode;

    const-string v1, " "

    sget-object v2, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->ZERO:Lorg/google/googlejavaformat/Indent$Const;

    invoke-static {v0, v1, v2, p0}, Lorg/google/googlejavaformat/Doc$Break;->make(Lorg/google/googlejavaformat/Doc$FillMode;Ljava/lang/String;Lorg/google/googlejavaformat/Indent;Lw2/C;)Lorg/google/googlejavaformat/Doc$Break;

    move-result-object p0

    invoke-static {p0}, Lcom/google/common/collect/g1;->y(Ljava/lang/Object;)Lcom/google/common/collect/g1;

    move-result-object p0

    return-object p0
.end method

.method private canLocalHaveHorizontalAnnotations(Lorg/openjdk/source/tree/ModifiersTree;)Lorg/google/googlejavaformat/java/JavaInputAstVisitor$Direction;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "modifiers"
        }
    .end annotation

    invoke-interface {p1}, Lorg/openjdk/source/tree/ModifiersTree;->getAnnotations()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/openjdk/source/tree/AnnotationTree;

    invoke-interface {v2}, Lorg/openjdk/source/tree/AnnotationTree;->getArguments()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    if-gt v1, v0, :cond_2

    invoke-interface {p1}, Lorg/openjdk/source/tree/ModifiersTree;->getAnnotations()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-ne v1, p1, :cond_2

    sget-object p1, Lorg/google/googlejavaformat/java/JavaInputAstVisitor$Direction;->HORIZONTAL:Lorg/google/googlejavaformat/java/JavaInputAstVisitor$Direction;

    goto :goto_1

    :cond_2
    sget-object p1, Lorg/google/googlejavaformat/java/JavaInputAstVisitor$Direction;->VERTICAL:Lorg/google/googlejavaformat/java/JavaInputAstVisitor$Direction;

    :goto_1
    return-object p1
.end method

.method private declareMany(Ljava/util/List;Lorg/google/googlejavaformat/java/JavaInputAstVisitor$Direction;)V
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "fragments",
            "annotationDirection"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/openjdk/source/tree/VariableTree;",
            ">;",
            "Lorg/google/googlejavaformat/java/JavaInputAstVisitor$Direction;",
            ")V"
        }
    .end annotation

    iget-object v0, p0, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lorg/google/googlejavaformat/OpsBuilder;

    sget-object v1, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->ZERO:Lorg/google/googlejavaformat/Indent$Const;

    invoke-virtual {v0, v1}, Lorg/google/googlejavaformat/OpsBuilder;->open(Lorg/google/googlejavaformat/Indent;)V

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/openjdk/source/tree/VariableTree;

    invoke-interface {v2}, Lorg/openjdk/source/tree/VariableTree;->getModifiers()Lorg/openjdk/source/tree/ModifiersTree;

    move-result-object v2

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/openjdk/source/tree/VariableTree;

    invoke-interface {v3}, Lorg/openjdk/source/tree/VariableTree;->getType()Lorg/openjdk/source/tree/Tree;

    move-result-object v3

    invoke-static {}, Lw2/C;->a()Lw2/C;

    move-result-object v4

    invoke-virtual {p0, v2, p2, v4}, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->visitAndBreakModifiers(Lorg/openjdk/source/tree/ModifiersTree;Lorg/google/googlejavaformat/java/JavaInputAstVisitor$Direction;Lw2/C;)V

    iget-object p2, p0, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lorg/google/googlejavaformat/OpsBuilder;

    iget-object v2, p0, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->plusFour:Lorg/google/googlejavaformat/Indent$Const;

    invoke-virtual {p2, v2}, Lorg/google/googlejavaformat/OpsBuilder;->open(Lorg/google/googlejavaformat/Indent;)V

    iget-object p2, p0, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lorg/google/googlejavaformat/OpsBuilder;

    invoke-virtual {p2, v1}, Lorg/google/googlejavaformat/OpsBuilder;->open(Lorg/google/googlejavaformat/Indent;)V

    sget-object p2, Lorg/google/googlejavaformat/java/DimensionHelpers$SortedDims;->YES:Lorg/google/googlejavaformat/java/DimensionHelpers$SortedDims;

    invoke-static {v3, p2}, Lorg/google/googlejavaformat/java/DimensionHelpers;->extractDims(Lorg/openjdk/source/tree/Tree;Lorg/google/googlejavaformat/java/DimensionHelpers$SortedDims;)Lorg/google/googlejavaformat/java/DimensionHelpers$TypeWithDims;

    move-result-object p2

    new-instance v1, Ljava/util/ArrayDeque;

    iget-object v2, p2, Lorg/google/googlejavaformat/java/DimensionHelpers$TypeWithDims;->dims:Lcom/google/common/collect/g1;

    invoke-direct {v1, v2}, Ljava/util/ArrayDeque;-><init>(Ljava/util/Collection;)V

    iget-object p2, p2, Lorg/google/googlejavaformat/java/DimensionHelpers$TypeWithDims;->node:Lorg/openjdk/source/tree/Tree;

    const/4 v2, 0x0

    invoke-virtual {p0, p2, v2}, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->scan(Lorg/openjdk/source/tree/Tree;Ljava/lang/Void;)Ljava/lang/Void;

    invoke-interface {v1}, Ljava/util/Deque;->size()I

    move-result p2

    invoke-direct {p0, v1}, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->maybeAddDims(Ljava/util/Deque;)V

    invoke-interface {v1}, Ljava/util/Deque;->size()I

    move-result v1

    sub-int/2addr p2, v1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v1, 0x1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/openjdk/source/tree/VariableTree;

    if-nez v1, :cond_0

    const-string v4, ","

    invoke-virtual {p0, v4}, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->token(Ljava/lang/String;)V

    :cond_0
    invoke-interface {v3}, Lorg/openjdk/source/tree/VariableTree;->getType()Lorg/openjdk/source/tree/Tree;

    move-result-object v4

    invoke-direct {p0, v1, p2, v4}, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->variableFragmentDims(ZILorg/openjdk/source/tree/Tree;)Lorg/google/googlejavaformat/java/DimensionHelpers$TypeWithDims;

    move-result-object v4

    new-instance v5, Ljava/util/ArrayDeque;

    iget-object v4, v4, Lorg/google/googlejavaformat/java/DimensionHelpers$TypeWithDims;->dims:Lcom/google/common/collect/g1;

    invoke-direct {v5, v4}, Ljava/util/ArrayDeque;-><init>(Ljava/util/Collection;)V

    iget-object v4, p0, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lorg/google/googlejavaformat/OpsBuilder;

    const-string v6, " "

    invoke-virtual {v4, v6}, Lorg/google/googlejavaformat/OpsBuilder;->breakOp(Ljava/lang/String;)V

    iget-object v4, p0, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lorg/google/googlejavaformat/OpsBuilder;

    sget-object v7, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->ZERO:Lorg/google/googlejavaformat/Indent$Const;

    invoke-virtual {v4, v7}, Lorg/google/googlejavaformat/OpsBuilder;->open(Lorg/google/googlejavaformat/Indent;)V

    invoke-direct {p0, v5}, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->maybeAddDims(Ljava/util/Deque;)V

    invoke-interface {v3}, Lorg/openjdk/source/tree/VariableTree;->getName()Lorg/openjdk/javax/lang/model/element/Name;

    move-result-object v4

    invoke-virtual {p0, v4}, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->visit(Lorg/openjdk/javax/lang/model/element/Name;)Z

    invoke-direct {p0, v5}, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->maybeAddDims(Ljava/util/Deque;)V

    invoke-interface {v3}, Lorg/openjdk/source/tree/VariableTree;->getInitializer()Lorg/openjdk/source/tree/ExpressionTree;

    move-result-object v3

    if-eqz v3, :cond_1

    iget-object v4, p0, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lorg/google/googlejavaformat/OpsBuilder;

    invoke-virtual {v4}, Lorg/google/googlejavaformat/OpsBuilder;->space()V

    const-string v4, "="

    invoke-virtual {p0, v4}, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->token(Ljava/lang/String;)V

    iget-object v4, p0, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lorg/google/googlejavaformat/OpsBuilder;

    iget-object v5, p0, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->plusFour:Lorg/google/googlejavaformat/Indent$Const;

    invoke-virtual {v4, v5}, Lorg/google/googlejavaformat/OpsBuilder;->open(Lorg/google/googlejavaformat/Indent;)V

    iget-object v4, p0, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lorg/google/googlejavaformat/OpsBuilder;

    invoke-virtual {v4, v6}, Lorg/google/googlejavaformat/OpsBuilder;->breakOp(Ljava/lang/String;)V

    invoke-virtual {p0, v3, v2}, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->scan(Lorg/openjdk/source/tree/Tree;Ljava/lang/Void;)Ljava/lang/Void;

    iget-object v3, p0, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lorg/google/googlejavaformat/OpsBuilder;

    invoke-virtual {v3}, Lorg/google/googlejavaformat/OpsBuilder;->close()V

    :cond_1
    iget-object v3, p0, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lorg/google/googlejavaformat/OpsBuilder;

    invoke-virtual {v3}, Lorg/google/googlejavaformat/OpsBuilder;->close()V

    if-eqz v1, :cond_2

    iget-object v1, p0, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lorg/google/googlejavaformat/OpsBuilder;

    invoke-virtual {v1}, Lorg/google/googlejavaformat/OpsBuilder;->close()V

    :cond_2
    move v1, v0

    goto :goto_0

    :cond_3
    iget-object p1, p0, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lorg/google/googlejavaformat/OpsBuilder;

    invoke-virtual {p1}, Lorg/google/googlejavaformat/OpsBuilder;->close()V

    const-string p1, ";"

    invoke-virtual {p0, p1}, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->token(Ljava/lang/String;)V

    iget-object p1, p0, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lorg/google/googlejavaformat/OpsBuilder;

    invoke-virtual {p1}, Lorg/google/googlejavaformat/OpsBuilder;->close()V

    return-void
.end method

.method private dotExpressionArgsAndParen(Lorg/openjdk/source/tree/ExpressionTree;Lorg/google/googlejavaformat/Indent;Lorg/google/googlejavaformat/Indent;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "expression",
            "tyargIndent",
            "indent"
        }
    .end annotation

    invoke-direct {p0, p1}, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->getArrayIndices(Lorg/openjdk/source/tree/ExpressionTree;)Ljava/util/Deque;

    move-result-object v0

    invoke-direct {p0, p1}, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->getArrayBase(Lorg/openjdk/source/tree/ExpressionTree;)Lorg/openjdk/source/tree/ExpressionTree;

    move-result-object p1

    sget-object v1, Lorg/google/googlejavaformat/java/JavaInputAstVisitor$2;->$SwitchMap$org$openjdk$source$tree$Tree$Kind:[I

    invoke-interface {p1}, Lorg/openjdk/source/tree/Tree;->getKind()Lorg/openjdk/source/tree/Tree$Kind;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/16 v2, 0x9

    if-eq v1, v2, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lorg/google/googlejavaformat/OpsBuilder;

    invoke-virtual {v1, p2}, Lorg/google/googlejavaformat/OpsBuilder;->open(Lorg/google/googlejavaformat/Indent;)V

    check-cast p1, Lorg/openjdk/source/tree/MethodInvocationTree;

    invoke-interface {p1}, Lorg/openjdk/source/tree/MethodInvocationTree;->getArguments()Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1, p3}, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->addArguments(Ljava/util/List;Lorg/google/googlejavaformat/Indent;)V

    iget-object p1, p0, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lorg/google/googlejavaformat/OpsBuilder;

    invoke-virtual {p1}, Lorg/google/googlejavaformat/OpsBuilder;->close()V

    :goto_0
    invoke-direct {p0, v0}, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->formatArrayIndices(Ljava/util/Deque;)V

    return-void
.end method

.method private dotExpressionUpToArgs(Lorg/openjdk/source/tree/ExpressionTree;Lw2/C;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "expression",
            "tyargTag"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/source/tree/ExpressionTree;",
            "Lw2/C<",
            "Lorg/google/googlejavaformat/Output$BreakTag;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->getArrayBase(Lorg/openjdk/source/tree/ExpressionTree;)Lorg/openjdk/source/tree/ExpressionTree;

    move-result-object p1

    sget-object v0, Lorg/google/googlejavaformat/java/JavaInputAstVisitor$2;->$SwitchMap$org$openjdk$source$tree$Tree$Kind:[I

    invoke-interface {p1}, Lorg/openjdk/source/tree/Tree;->getKind()Lorg/openjdk/source/tree/Tree$Kind;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2}, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->scan(Lorg/openjdk/source/tree/Tree;Ljava/lang/Void;)Ljava/lang/Void;

    goto :goto_0

    :pswitch_0
    check-cast p1, Lorg/openjdk/source/tree/IdentifierTree;

    invoke-interface {p1}, Lorg/openjdk/source/tree/IdentifierTree;->getName()Lorg/openjdk/javax/lang/model/element/Name;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->visit(Lorg/openjdk/javax/lang/model/element/Name;)Z

    goto :goto_0

    :pswitch_1
    check-cast p1, Lorg/openjdk/source/tree/MethodInvocationTree;

    invoke-interface {p1}, Lorg/openjdk/source/tree/MethodInvocationTree;->getTypeArguments()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lorg/google/googlejavaformat/OpsBuilder;

    iget-object v1, p0, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->plusFour:Lorg/google/googlejavaformat/Indent$Const;

    invoke-virtual {v0, v1}, Lorg/google/googlejavaformat/OpsBuilder;->open(Lorg/google/googlejavaformat/Indent;)V

    invoke-interface {p1}, Lorg/openjdk/source/tree/MethodInvocationTree;->getTypeArguments()Ljava/util/List;

    move-result-object v0

    sget-object v1, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->ZERO:Lorg/google/googlejavaformat/Indent$Const;

    invoke-virtual {p0, v0, v1}, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->addTypeArguments(Ljava/util/List;Lorg/google/googlejavaformat/Indent;)V

    iget-object v0, p0, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lorg/google/googlejavaformat/OpsBuilder;

    sget-object v2, Lorg/google/googlejavaformat/Doc$FillMode;->UNIFIED:Lorg/google/googlejavaformat/Doc$FillMode;

    const-string v3, ""

    invoke-virtual {v0, v2, v3, v1, p2}, Lorg/google/googlejavaformat/OpsBuilder;->breakOp(Lorg/google/googlejavaformat/Doc$FillMode;Ljava/lang/String;Lorg/google/googlejavaformat/Indent;Lw2/C;)V

    iget-object p2, p0, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lorg/google/googlejavaformat/OpsBuilder;

    invoke-virtual {p2}, Lorg/google/googlejavaformat/OpsBuilder;->close()V

    :cond_0
    invoke-static {p1}, Lorg/google/googlejavaformat/java/Trees;->getMethodName(Lorg/openjdk/source/tree/MethodInvocationTree;)Lorg/openjdk/javax/lang/model/element/Name;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->visit(Lorg/openjdk/javax/lang/model/element/Name;)Z

    goto :goto_0

    :pswitch_2
    check-cast p1, Lorg/openjdk/source/tree/MemberSelectTree;

    invoke-interface {p1}, Lorg/openjdk/source/tree/MemberSelectTree;->getIdentifier()Lorg/openjdk/javax/lang/model/element/Name;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->visit(Lorg/openjdk/javax/lang/model/element/Name;)Z

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private dropEmptyDeclarations()V
    .locals 3

    iget-object v0, p0, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lorg/google/googlejavaformat/OpsBuilder;

    invoke-virtual {v0}, Lorg/google/googlejavaformat/OpsBuilder;->peekToken()Lw2/C;

    move-result-object v0

    const-string v1, ";"

    invoke-static {v1}, Lw2/C;->f(Ljava/lang/Object;)Lw2/C;

    move-result-object v2

    invoke-virtual {v0, v2}, Lw2/C;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    iget-object v0, p0, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lorg/google/googlejavaformat/OpsBuilder;

    invoke-virtual {v0}, Lorg/google/googlejavaformat/OpsBuilder;->peekToken()Lw2/C;

    move-result-object v0

    invoke-static {v1}, Lw2/C;->f(Ljava/lang/Object;)Lw2/C;

    move-result-object v2

    invoke-virtual {v0, v2}, Lw2/C;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->markForPartialFormat()V

    invoke-virtual {p0, v1}, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->token(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private static expressionsAreParallel(Ljava/util/List;II)Z
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "rows",
            "column",
            "atLeastM"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/util/List<",
            "Lorg/openjdk/source/tree/ExpressionTree;",
            ">;>;II)Z"
        }
    .end annotation

    invoke-static {}, Lcom/google/common/collect/X0;->m()Lcom/google/common/collect/X0;

    move-result-object v0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-lt p1, v2, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/openjdk/source/tree/ExpressionTree;

    invoke-interface {v1}, Lorg/openjdk/source/tree/Tree;->getKind()Lorg/openjdk/source/tree/Tree$Kind;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/common/collect/V1;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-interface {v0}, Lcom/google/common/collect/V1;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/common/collect/V1$a;

    invoke-interface {p1}, Lcom/google/common/collect/V1$a;->getCount()I

    move-result p1

    if-lt p1, p2, :cond_2

    const/4 p0, 0x1

    return p0

    :cond_3
    const/4 p0, 0x0

    return p0
.end method

.method private fieldAnnotationDirection(Lorg/openjdk/source/tree/ModifiersTree;)Lorg/google/googlejavaformat/java/JavaInputAstVisitor$Direction;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "modifiers"
        }
    .end annotation

    invoke-interface {p1}, Lorg/openjdk/source/tree/ModifiersTree;->getAnnotations()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/openjdk/source/tree/AnnotationTree;

    invoke-interface {v0}, Lorg/openjdk/source/tree/AnnotationTree;->getArguments()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object p1, Lorg/google/googlejavaformat/java/JavaInputAstVisitor$Direction;->VERTICAL:Lorg/google/googlejavaformat/java/JavaInputAstVisitor$Direction;

    return-object p1

    :cond_1
    sget-object p1, Lorg/google/googlejavaformat/java/JavaInputAstVisitor$Direction;->HORIZONTAL:Lorg/google/googlejavaformat/java/JavaInputAstVisitor$Direction;

    return-object p1
.end method

.method private fillFirstArgument(Lorg/openjdk/source/tree/ExpressionTree;Ljava/util/List;Lorg/google/googlejavaformat/Indent;)Z
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "e",
            "items",
            "indent"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/source/tree/ExpressionTree;",
            "Ljava/util/List<",
            "Lorg/openjdk/source/tree/ExpressionTree;",
            ">;",
            "Lorg/google/googlejavaformat/Indent;",
            ")Z"
        }
    .end annotation

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    const/4 v0, 0x2

    const/4 v1, 0x0

    if-ge p2, v0, :cond_0

    return v1

    :cond_0
    invoke-interface {p1}, Lorg/openjdk/source/tree/Tree;->getKind()Lorg/openjdk/source/tree/Tree$Kind;

    move-result-object p2

    sget-object v0, Lorg/openjdk/source/tree/Tree$Kind;->METHOD_INVOCATION:Lorg/openjdk/source/tree/Tree$Kind;

    if-eq p2, v0, :cond_1

    return v1

    :cond_1
    check-cast p1, Lorg/openjdk/source/tree/MethodInvocationTree;

    invoke-static {p1}, Lorg/google/googlejavaformat/java/Trees;->getMethodName(Lorg/openjdk/source/tree/MethodInvocationTree;)Lorg/openjdk/javax/lang/model/element/Name;

    move-result-object p2

    invoke-interface {p1}, Lorg/openjdk/source/tree/MethodInvocationTree;->getMethodSelect()Lorg/openjdk/source/tree/ExpressionTree;

    move-result-object v0

    instance-of v0, v0, Lorg/openjdk/source/tree/IdentifierTree;

    if-eqz v0, :cond_3

    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v2, 0x4

    if-gt v0, v2, :cond_3

    invoke-interface {p1}, Lorg/openjdk/source/tree/MethodInvocationTree;->getTypeArguments()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Lorg/openjdk/source/tree/MethodInvocationTree;->getArguments()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_2

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lorg/google/googlejavaformat/OpsBuilder;

    sget-object v1, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->ZERO:Lorg/google/googlejavaformat/Indent$Const;

    invoke-virtual {v0, v1}, Lorg/google/googlejavaformat/OpsBuilder;->open(Lorg/google/googlejavaformat/Indent;)V

    iget-object v0, p0, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lorg/google/googlejavaformat/OpsBuilder;

    invoke-virtual {v0, p3}, Lorg/google/googlejavaformat/OpsBuilder;->open(Lorg/google/googlejavaformat/Indent;)V

    invoke-virtual {p0, p2}, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->visit(Lorg/openjdk/javax/lang/model/element/Name;)Z

    const-string p2, "("

    invoke-virtual {p0, p2}, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->token(Ljava/lang/String;)V

    invoke-interface {p1}, Lorg/openjdk/source/tree/MethodInvocationTree;->getArguments()Ljava/util/List;

    move-result-object p1

    invoke-static {p1}, Lcom/google/common/collect/D1;->z(Ljava/lang/Iterable;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/openjdk/source/tree/ExpressionTree;

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2}, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->scan(Lorg/openjdk/source/tree/Tree;Ljava/lang/Void;)Ljava/lang/Void;

    iget-object p1, p0, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lorg/google/googlejavaformat/OpsBuilder;

    invoke-virtual {p1}, Lorg/google/googlejavaformat/OpsBuilder;->close()V

    const-string p1, ")"

    invoke-virtual {p0, p1}, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->token(Ljava/lang/String;)V

    iget-object p1, p0, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lorg/google/googlejavaformat/OpsBuilder;

    invoke-virtual {p1}, Lorg/google/googlejavaformat/OpsBuilder;->close()V

    return v2

    :cond_3
    :goto_0
    return v1
.end method

.method private static final forceBreakList(Lw2/C;)Lcom/google/common/collect/g1;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "breakTag"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lw2/C<",
            "Lorg/google/googlejavaformat/Output$BreakTag;",
            ">;)",
            "Lcom/google/common/collect/g1<",
            "Lorg/google/googlejavaformat/Op;",
            ">;"
        }
    .end annotation

    sget-object v0, Lorg/google/googlejavaformat/Doc$FillMode;->FORCED:Lorg/google/googlejavaformat/Doc$FillMode;

    const-string v1, ""

    sget-object v2, Lorg/google/googlejavaformat/Indent$Const;->ZERO:Lorg/google/googlejavaformat/Indent$Const;

    invoke-static {v0, v1, v2, p0}, Lorg/google/googlejavaformat/Doc$Break;->make(Lorg/google/googlejavaformat/Doc$FillMode;Ljava/lang/String;Lorg/google/googlejavaformat/Indent;Lw2/C;)Lorg/google/googlejavaformat/Doc$Break;

    move-result-object p0

    invoke-static {p0}, Lcom/google/common/collect/g1;->y(Ljava/lang/Object;)Lcom/google/common/collect/g1;

    move-result-object p0

    return-object p0
.end method

.method private formatArrayIndices(Ljava/util/Deque;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "indices"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Deque<",
            "Lorg/openjdk/source/tree/ExpressionTree;",
            ">;)V"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lorg/google/googlejavaformat/OpsBuilder;

    sget-object v1, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->ZERO:Lorg/google/googlejavaformat/Indent$Const;

    invoke-virtual {v0, v1}, Lorg/google/googlejavaformat/OpsBuilder;->open(Lorg/google/googlejavaformat/Indent;)V

    :cond_1
    const-string v0, "["

    invoke-virtual {p0, v0}, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->token(Ljava/lang/String;)V

    iget-object v0, p0, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lorg/google/googlejavaformat/OpsBuilder;

    invoke-virtual {v0}, Lorg/google/googlejavaformat/OpsBuilder;->breakToFill()V

    invoke-interface {p1}, Ljava/util/Deque;->removeLast()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/openjdk/source/tree/Tree;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->scan(Lorg/openjdk/source/tree/Tree;Ljava/lang/Void;)Ljava/lang/Void;

    const-string v0, "]"

    invoke-virtual {p0, v0}, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->token(Ljava/lang/String;)V

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p1, p0, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lorg/google/googlejavaformat/OpsBuilder;

    invoke-virtual {p1}, Lorg/google/googlejavaformat/OpsBuilder;->close()V

    return-void
.end method

.method private getArrayBase(Lorg/openjdk/source/tree/ExpressionTree;)Lorg/openjdk/source/tree/ExpressionTree;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "node"
        }
    .end annotation

    :goto_0
    instance-of v0, p1, Lorg/openjdk/source/tree/ArrayAccessTree;

    if-eqz v0, :cond_0

    check-cast p1, Lorg/openjdk/source/tree/ArrayAccessTree;

    invoke-interface {p1}, Lorg/openjdk/source/tree/ArrayAccessTree;->getExpression()Lorg/openjdk/source/tree/ExpressionTree;

    move-result-object p1

    goto :goto_0

    :cond_0
    return-object p1
.end method

.method private getArrayIndices(Lorg/openjdk/source/tree/ExpressionTree;)Ljava/util/Deque;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "expression"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/source/tree/ExpressionTree;",
            ")",
            "Ljava/util/Deque<",
            "Lorg/openjdk/source/tree/ExpressionTree;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    :goto_0
    instance-of v1, p1, Lorg/openjdk/source/tree/ArrayAccessTree;

    if-eqz v1, :cond_0

    check-cast p1, Lorg/openjdk/source/tree/ArrayAccessTree;

    invoke-interface {p1}, Lorg/openjdk/source/tree/ArrayAccessTree;->getIndex()Lorg/openjdk/source/tree/ExpressionTree;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Deque;->addLast(Ljava/lang/Object;)V

    invoke-interface {p1}, Lorg/openjdk/source/tree/ArrayAccessTree;->getExpression()Lorg/openjdk/source/tree/ExpressionTree;

    move-result-object p1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private getMethodReceiver(Lorg/openjdk/source/tree/MethodInvocationTree;)Lorg/openjdk/source/tree/ExpressionTree;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "methodInvocation"
        }
    .end annotation

    invoke-interface {p1}, Lorg/openjdk/source/tree/MethodInvocationTree;->getMethodSelect()Lorg/openjdk/source/tree/ExpressionTree;

    move-result-object p1

    instance-of v0, p1, Lorg/openjdk/source/tree/MemberSelectTree;

    if-eqz v0, :cond_0

    check-cast p1, Lorg/openjdk/source/tree/MemberSelectTree;

    invoke-interface {p1}, Lorg/openjdk/source/tree/MemberSelectTree;->getExpression()Lorg/openjdk/source/tree/ExpressionTree;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method private static getNextToken(Lorg/google/googlejavaformat/Input;I)Lw2/C;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "input",
            "position"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/google/googlejavaformat/Input;",
            "I)",
            "Lw2/C<",
            "+",
            "Lorg/google/googlejavaformat/Input$Token;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lorg/google/googlejavaformat/Input;->getPositionTokenMap()Lcom/google/common/collect/p1;

    move-result-object p0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/common/collect/p1;->j(Ljava/lang/Comparable;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/google/googlejavaformat/Input$Token;

    invoke-static {p0}, Lw2/C;->c(Ljava/lang/Object;)Lw2/C;

    move-result-object p0

    return-object p0
.end method

.method private handleLogStatement(Lorg/openjdk/source/tree/MethodInvocationTree;)Z
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "node"
        }
    .end annotation

    invoke-static {p1}, Lorg/google/googlejavaformat/java/Trees;->getMethodName(Lorg/openjdk/source/tree/MethodInvocationTree;)Lorg/openjdk/javax/lang/model/element/Name;

    move-result-object v0

    const-string v1, "log"

    invoke-interface {v0, v1}, Lorg/openjdk/javax/lang/model/element/Name;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    :goto_0
    instance-of v2, p1, Lorg/openjdk/source/tree/MethodInvocationTree;

    if-eqz v2, :cond_2

    check-cast p1, Lorg/openjdk/source/tree/MethodInvocationTree;

    invoke-interface {v0, p1}, Ljava/util/Deque;->addFirst(Ljava/lang/Object;)V

    sget-object v2, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->LOG_METHODS:Lcom/google/common/collect/r1;

    invoke-static {p1}, Lorg/google/googlejavaformat/java/Trees;->getMethodName(Lorg/openjdk/source/tree/MethodInvocationTree;)Lorg/openjdk/javax/lang/model/element/Name;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/common/collect/c1;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    return v1

    :cond_1
    invoke-static {p1}, Lorg/google/googlejavaformat/java/Trees;->getMethodReceiver(Lorg/openjdk/source/tree/MethodInvocationTree;)Lorg/openjdk/source/tree/ExpressionTree;

    move-result-object p1

    goto :goto_0

    :cond_2
    instance-of v2, p1, Lorg/openjdk/source/tree/IdentifierTree;

    if-nez v2, :cond_3

    return v1

    :cond_3
    invoke-interface {v0, p1}, Ljava/util/Deque;->addFirst(Ljava/lang/Object;)V

    invoke-static {v0}, Lcom/google/common/collect/g1;->r(Ljava/util/Collection;)Lcom/google/common/collect/g1;

    move-result-object p1

    invoke-interface {v0}, Ljava/util/Deque;->size()I

    move-result v0

    const/4 v2, 0x1

    sub-int/2addr v0, v2

    invoke-direct {p0, p1, v1, v0}, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->visitDotWithPrefix(Ljava/util/List;ZI)V

    return v2
.end method

.method private hasJavaDoc(Lorg/openjdk/source/tree/Tree;)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "bodyDeclaration"
        }
    .end annotation

    check-cast p1, Lorg/openjdk/tools/javac/tree/JCTree;

    invoke-virtual {p1}, Lorg/openjdk/tools/javac/tree/JCTree;->getStartPosition()I

    move-result p1

    iget-object v0, p0, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lorg/google/googlejavaformat/OpsBuilder;

    invoke-virtual {v0}, Lorg/google/googlejavaformat/OpsBuilder;->getInput()Lorg/google/googlejavaformat/Input;

    move-result-object v0

    invoke-virtual {v0}, Lorg/google/googlejavaformat/Input;->getPositionTokenMap()Lcom/google/common/collect/p1;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/common/collect/p1;->j(Ljava/lang/Comparable;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/google/googlejavaformat/Input$Token;

    if-eqz p1, :cond_1

    invoke-interface {p1}, Lorg/google/googlejavaformat/Input$Token;->getToksBefore()Lcom/google/common/collect/g1;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/common/collect/g1;->i()Lcom/google/common/collect/e3;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/google/googlejavaformat/Input$Tok;

    invoke-interface {v0}, Lorg/google/googlejavaformat/Input$Tok;->getText()Ljava/lang/String;

    move-result-object v0

    const-string v1, "/**"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method private hasOnlyShortItems(Ljava/util/List;)Z
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "expressions"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lorg/openjdk/source/tree/ExpressionTree;",
            ">;)Z"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/openjdk/source/tree/ExpressionTree;

    invoke-static {v0}, Lorg/google/googlejavaformat/java/Trees;->getStartPosition(Lorg/openjdk/source/tree/Tree;)I

    move-result v1

    iget-object v2, p0, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lorg/google/googlejavaformat/OpsBuilder;

    invoke-virtual {p0}, Lorg/openjdk/source/util/TreePathScanner;->getCurrentPath()Lorg/openjdk/source/util/TreePath;

    move-result-object v3

    invoke-static {v0, v3}, Lorg/google/googlejavaformat/java/Trees;->getEndPosition(Lorg/openjdk/source/tree/Tree;Lorg/openjdk/source/util/TreePath;)I

    move-result v0

    sub-int/2addr v0, v1

    invoke-virtual {v2, v1, v0}, Lorg/google/googlejavaformat/OpsBuilder;->actualSize(II)I

    move-result v0

    const/16 v1, 0xa

    if-lt v0, v1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_1
    const/4 p1, 0x1

    return p1
.end method

.method private hasTrailingToken(Lorg/google/googlejavaformat/Input;Ljava/util/List;Ljava/lang/String;)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "input",
            "nodes",
            "token"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/google/googlejavaformat/Input;",
            "Ljava/util/List<",
            "+",
            "Lorg/openjdk/source/tree/Tree;",
            ">;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    invoke-static {p2}, Lcom/google/common/collect/D1;->w(Ljava/lang/Iterable;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/openjdk/source/tree/Tree;

    invoke-virtual {p0}, Lorg/openjdk/source/util/TreePathScanner;->getCurrentPath()Lorg/openjdk/source/util/TreePath;

    move-result-object v0

    invoke-static {p2, v0}, Lorg/google/googlejavaformat/java/Trees;->getEndPosition(Lorg/openjdk/source/tree/Tree;Lorg/openjdk/source/util/TreePath;)I

    move-result p2

    invoke-static {p1, p2}, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->getNextToken(Lorg/google/googlejavaformat/Input;I)Lw2/C;

    move-result-object p1

    invoke-virtual {p1}, Lw2/C;->e()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-virtual {p1}, Lw2/C;->d()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/google/googlejavaformat/Input$Token;

    invoke-interface {p1}, Lorg/google/googlejavaformat/Input$Token;->getTok()Lorg/google/googlejavaformat/Input$Tok;

    move-result-object p1

    invoke-interface {p1}, Lorg/google/googlejavaformat/Input$Tok;->getText()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method private inExpression()Z
    .locals 1

    iget-object v0, p0, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->inExpression:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->peekLast()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method private static isArrayValue(Lorg/openjdk/source/tree/ExpressionTree;)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "argument"
        }
    .end annotation

    instance-of v0, p0, Lorg/openjdk/source/tree/AssignmentTree;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    check-cast p0, Lorg/openjdk/source/tree/AssignmentTree;

    invoke-interface {p0}, Lorg/openjdk/source/tree/AssignmentTree;->getExpression()Lorg/openjdk/source/tree/ExpressionTree;

    move-result-object p0

    instance-of v0, p0, Lorg/openjdk/source/tree/NewArrayTree;

    if-eqz v0, :cond_1

    check-cast p0, Lorg/openjdk/source/tree/NewArrayTree;

    invoke-interface {p0}, Lorg/openjdk/source/tree/NewArrayTree;->getType()Lorg/openjdk/source/tree/Tree;

    move-result-object p0

    if-nez p0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method private isFormatMethod(Ljava/util/List;)Z
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "arguments"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lorg/openjdk/source/tree/ExpressionTree;",
            ">;)Z"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-ge v0, v1, :cond_0

    return v2

    :cond_0
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/openjdk/source/tree/ExpressionTree;

    invoke-direct {p0, p1}, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->isStringConcat(Lorg/openjdk/source/tree/ExpressionTree;)Z

    move-result p1

    return p1
.end method

.method private isStringConcat(Lorg/openjdk/source/tree/ExpressionTree;)Z
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "first"
        }
    .end annotation

    const/4 v0, 0x1

    new-array v1, v0, [Z

    const/4 v2, 0x0

    aput-boolean v0, v1, v2

    new-array v3, v0, [Z

    aput-boolean v2, v3, v2

    new-instance v4, Lorg/google/googlejavaformat/java/JavaInputAstVisitor$1;

    invoke-direct {v4, p0, v1, v3}, Lorg/google/googlejavaformat/java/JavaInputAstVisitor$1;-><init>(Lorg/google/googlejavaformat/java/JavaInputAstVisitor;[Z[Z)V

    check-cast p1, Lorg/openjdk/tools/javac/tree/JCTree;

    invoke-virtual {v4, p1}, Lorg/google/googlejavaformat/java/JavaInputAstVisitor$1;->scan(Lorg/openjdk/tools/javac/tree/JCTree;)V

    aget-boolean p1, v1, v2

    if-eqz p1, :cond_0

    aget-boolean p1, v3, v2

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    return v0
.end method

.method private static synthetic lambda$visitModule$0(Lorg/openjdk/source/tree/DirectiveTree;Lorg/openjdk/source/tree/Tree$Kind;)Ljava/lang/Boolean;
    .locals 0

    invoke-interface {p0}, Lorg/openjdk/source/tree/Tree;->getKind()Lorg/openjdk/source/tree/Tree$Kind;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method private markForPartialFormat()V
    .locals 1

    invoke-direct {p0}, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->inExpression()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lorg/google/googlejavaformat/OpsBuilder;

    invoke-virtual {v0}, Lorg/google/googlejavaformat/OpsBuilder;->markForPartialFormat()V

    :cond_0
    return-void
.end method

.method private maybeAddDims(Ljava/util/Deque;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "annotations"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Deque<",
            "Ljava/util/List<",
            "Lorg/openjdk/source/tree/AnnotationTree;",
            ">;>;)V"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    invoke-direct {p0, v0, p1}, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->maybeAddDims(Ljava/util/Deque;Ljava/util/Deque;)V

    return-void
.end method

.method private maybeAddDims(Ljava/util/Deque;Ljava/util/Deque;)V
    .locals 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "dimExpressions",
            "annotations"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Deque<",
            "Lorg/openjdk/source/tree/ExpressionTree;",
            ">;",
            "Ljava/util/Deque<",
            "Ljava/util/List<",
            "Lorg/openjdk/source/tree/AnnotationTree;",
            ">;>;)V"
        }
    .end annotation

    .line 2
    const-string v0, "["

    const-string v1, "."

    const/4 v2, 0x1

    const/4 v3, 0x0

    :goto_0
    move v4, v3

    .line 3
    :goto_1
    iget-object v5, p0, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lorg/google/googlejavaformat/OpsBuilder;

    invoke-virtual {v5}, Lorg/google/googlejavaformat/OpsBuilder;->peekToken()Lw2/C;

    move-result-object v5

    invoke-virtual {v5}, Lw2/C;->e()Z

    move-result v5

    if-eqz v5, :cond_9

    .line 4
    iget-object v5, p0, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lorg/google/googlejavaformat/OpsBuilder;

    invoke-virtual {v5}, Lorg/google/googlejavaformat/OpsBuilder;->peekToken()Lw2/C;

    move-result-object v5

    invoke-virtual {v5}, Lw2/C;->d()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    const-string v6, " "

    const/4 v7, -0x1

    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    move-result v8

    sparse-switch v8, :sswitch_data_0

    goto :goto_2

    :sswitch_0
    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    goto :goto_2

    :cond_0
    const/4 v7, 0x2

    goto :goto_2

    :sswitch_1
    const-string v8, "@"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    goto :goto_2

    :cond_1
    move v7, v2

    goto :goto_2

    :sswitch_2
    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    goto :goto_2

    :cond_2
    move v7, v3

    :goto_2
    packed-switch v7, :pswitch_data_0

    return-void

    :pswitch_0
    if-eqz v4, :cond_3

    .line 5
    iget-object v4, p0, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lorg/google/googlejavaformat/OpsBuilder;

    invoke-virtual {v4, v6}, Lorg/google/googlejavaformat/OpsBuilder;->breakToFill(Ljava/lang/String;)V

    goto :goto_3

    .line 6
    :cond_3
    iget-object v4, p0, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lorg/google/googlejavaformat/OpsBuilder;

    invoke-virtual {v4}, Lorg/google/googlejavaformat/OpsBuilder;->breakToFill()V

    .line 7
    :goto_3
    invoke-virtual {p0, v0}, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->token(Ljava/lang/String;)V

    .line 8
    iget-object v4, p0, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lorg/google/googlejavaformat/OpsBuilder;

    invoke-virtual {v4}, Lorg/google/googlejavaformat/OpsBuilder;->peekToken()Lw2/C;

    move-result-object v4

    invoke-virtual {v4}, Lw2/C;->d()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const-string v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 9
    invoke-interface {p1}, Ljava/util/Deque;->removeFirst()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/openjdk/source/tree/Tree;

    const/4 v6, 0x0

    invoke-virtual {p0, v4, v6}, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->scan(Lorg/openjdk/source/tree/Tree;Ljava/lang/Void;)Ljava/lang/Void;

    .line 10
    :cond_4
    invoke-virtual {p0, v5}, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->token(Ljava/lang/String;)V

    goto :goto_0

    .line 11
    :pswitch_1
    invoke-interface {p2}, Ljava/util/Collection;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_5

    return-void

    .line 12
    :cond_5
    invoke-interface {p2}, Ljava/util/Deque;->removeFirst()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 13
    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_6

    goto/16 :goto_1

    .line 14
    :cond_6
    iget-object v4, p0, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lorg/google/googlejavaformat/OpsBuilder;

    invoke-virtual {v4, v6}, Lorg/google/googlejavaformat/OpsBuilder;->breakToFill(Ljava/lang/String;)V

    .line 15
    sget-object v4, Lorg/google/googlejavaformat/java/JavaInputAstVisitor$BreakOrNot;->NO:Lorg/google/googlejavaformat/java/JavaInputAstVisitor$BreakOrNot;

    invoke-virtual {p0, v5, v4, v4}, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->visitAnnotations(Ljava/util/List;Lorg/google/googlejavaformat/java/JavaInputAstVisitor$BreakOrNot;Lorg/google/googlejavaformat/java/JavaInputAstVisitor$BreakOrNot;)V

    move v4, v2

    goto/16 :goto_1

    .line 16
    :pswitch_2
    iget-object v5, p0, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lorg/google/googlejavaformat/OpsBuilder;

    invoke-virtual {v5}, Lorg/google/googlejavaformat/OpsBuilder;->peekToken()Lw2/C;

    move-result-object v5

    invoke-virtual {v5}, Lw2/C;->d()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9

    iget-object v5, p0, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lorg/google/googlejavaformat/OpsBuilder;

    invoke-virtual {v5, v2}, Lorg/google/googlejavaformat/OpsBuilder;->peekToken(I)Lw2/C;

    move-result-object v5

    invoke-virtual {v5}, Lw2/C;->d()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_7

    goto :goto_5

    :cond_7
    if-eqz v4, :cond_8

    .line 17
    iget-object v4, p0, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lorg/google/googlejavaformat/OpsBuilder;

    invoke-virtual {v4, v6}, Lorg/google/googlejavaformat/OpsBuilder;->breakToFill(Ljava/lang/String;)V

    goto :goto_4

    .line 18
    :cond_8
    iget-object v4, p0, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lorg/google/googlejavaformat/OpsBuilder;

    invoke-virtual {v4}, Lorg/google/googlejavaformat/OpsBuilder;->breakToFill()V

    .line 19
    :goto_4
    iget-object v4, p0, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lorg/google/googlejavaformat/OpsBuilder;

    const-string v5, "..."

    invoke-virtual {v4, v5}, Lorg/google/googlejavaformat/OpsBuilder;->op(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_9
    :goto_5
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x2e -> :sswitch_2
        0x40 -> :sswitch_1
        0x5b -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private methodBody(Lorg/openjdk/source/tree/MethodTree;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "node"
        }
    .end annotation

    invoke-interface {p1}, Lorg/openjdk/source/tree/MethodTree;->getBody()Lorg/openjdk/source/tree/BlockTree;

    move-result-object v0

    invoke-interface {v0}, Lorg/openjdk/source/tree/BlockTree;->getStatements()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p1, p0, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lorg/google/googlejavaformat/OpsBuilder;

    sget-object v0, Lorg/google/googlejavaformat/OpsBuilder$BlankLineWanted;->NO:Lorg/google/googlejavaformat/OpsBuilder$BlankLineWanted;

    invoke-virtual {p1, v0}, Lorg/google/googlejavaformat/OpsBuilder;->blankLineWanted(Lorg/google/googlejavaformat/OpsBuilder$BlankLineWanted;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lorg/google/googlejavaformat/OpsBuilder;

    iget-object v1, p0, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->plusTwo:Lorg/google/googlejavaformat/Indent$Const;

    invoke-virtual {v0, v1}, Lorg/google/googlejavaformat/OpsBuilder;->open(Lorg/google/googlejavaformat/Indent;)V

    iget-object v0, p0, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lorg/google/googlejavaformat/OpsBuilder;

    invoke-virtual {v0}, Lorg/google/googlejavaformat/OpsBuilder;->forcedBreak()V

    iget-object v0, p0, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lorg/google/googlejavaformat/OpsBuilder;

    sget-object v1, Lorg/google/googlejavaformat/OpsBuilder$BlankLineWanted;->PRESERVE:Lorg/google/googlejavaformat/OpsBuilder$BlankLineWanted;

    invoke-virtual {v0, v1}, Lorg/google/googlejavaformat/OpsBuilder;->blankLineWanted(Lorg/google/googlejavaformat/OpsBuilder$BlankLineWanted;)V

    invoke-interface {p1}, Lorg/openjdk/source/tree/MethodTree;->getBody()Lorg/openjdk/source/tree/BlockTree;

    move-result-object p1

    invoke-interface {p1}, Lorg/openjdk/source/tree/BlockTree;->getStatements()Ljava/util/List;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->visitStatements(Ljava/util/List;)V

    iget-object p1, p0, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lorg/google/googlejavaformat/OpsBuilder;

    invoke-virtual {p1}, Lorg/google/googlejavaformat/OpsBuilder;->close()V

    iget-object p1, p0, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lorg/google/googlejavaformat/OpsBuilder;

    invoke-virtual {p1}, Lorg/google/googlejavaformat/OpsBuilder;->forcedBreak()V

    iget-object p1, p0, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lorg/google/googlejavaformat/OpsBuilder;

    sget-object v0, Lorg/google/googlejavaformat/OpsBuilder$BlankLineWanted;->NO:Lorg/google/googlejavaformat/OpsBuilder$BlankLineWanted;

    invoke-virtual {p1, v0}, Lorg/google/googlejavaformat/OpsBuilder;->blankLineWanted(Lorg/google/googlejavaformat/OpsBuilder$BlankLineWanted;)V

    invoke-direct {p0}, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->markForPartialFormat()V

    :goto_0
    const-string p1, "}"

    iget-object v0, p0, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->plusTwo:Lorg/google/googlejavaformat/Indent$Const;

    invoke-virtual {p0, p1, v0}, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->token(Ljava/lang/String;Lorg/google/googlejavaformat/Indent;)V

    return-void
.end method

.method public static rowLength(Ljava/util/List;)I
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "row"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lorg/openjdk/source/tree/ExpressionTree;",
            ">;)I"
        }
    .end annotation

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v0, 0x0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/openjdk/source/tree/ExpressionTree;

    invoke-interface {v1}, Lorg/openjdk/source/tree/Tree;->getKind()Lorg/openjdk/source/tree/Tree$Kind;

    move-result-object v2

    sget-object v3, Lorg/openjdk/source/tree/Tree$Kind;->NEW_ARRAY:Lorg/openjdk/source/tree/Tree$Kind;

    if-eq v2, v3, :cond_0

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    check-cast v1, Lorg/openjdk/source/tree/NewArrayTree;

    invoke-interface {v1}, Lorg/openjdk/source/tree/NewArrayTree;->getInitializers()Ljava/util/List;

    move-result-object v2

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    invoke-interface {v1}, Lorg/openjdk/source/tree/NewArrayTree;->getInitializers()Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->rowLength(Ljava/util/List;)I

    move-result v1

    add-int/2addr v0, v1

    goto :goto_0

    :cond_2
    return v0
.end method

.method private simpleNames(Ljava/util/Deque;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "stack"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Deque<",
            "Lorg/openjdk/source/tree/ExpressionTree;",
            ">;)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/google/common/collect/g1;->m()Lcom/google/common/collect/g1$a;

    move-result-object v0

    invoke-interface {p1}, Ljava/util/Deque;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/openjdk/source/tree/ExpressionTree;

    invoke-interface {v1}, Lorg/openjdk/source/tree/Tree;->getKind()Lorg/openjdk/source/tree/Tree$Kind;

    move-result-object v2

    sget-object v3, Lorg/openjdk/source/tree/Tree$Kind;->ARRAY_ACCESS:Lorg/openjdk/source/tree/Tree$Kind;

    if-ne v2, v3, :cond_1

    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    invoke-direct {p0, v1}, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->getArrayBase(Lorg/openjdk/source/tree/ExpressionTree;)Lorg/openjdk/source/tree/ExpressionTree;

    move-result-object v1

    sget-object v3, Lorg/google/googlejavaformat/java/JavaInputAstVisitor$2;->$SwitchMap$org$openjdk$source$tree$Tree$Kind:[I

    invoke-interface {v1}, Lorg/openjdk/source/tree/Tree;->getKind()Lorg/openjdk/source/tree/Tree$Kind;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    goto :goto_2

    :pswitch_0
    check-cast v1, Lorg/openjdk/source/tree/IdentifierTree;

    invoke-interface {v1}, Lorg/openjdk/source/tree/IdentifierTree;->getName()Lorg/openjdk/javax/lang/model/element/Name;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/common/collect/g1$a;->j(Ljava/lang/Object;)Lcom/google/common/collect/g1$a;

    goto :goto_1

    :pswitch_1
    check-cast v1, Lorg/openjdk/source/tree/MethodInvocationTree;

    invoke-static {v1}, Lorg/google/googlejavaformat/java/Trees;->getMethodName(Lorg/openjdk/source/tree/MethodInvocationTree;)Lorg/openjdk/javax/lang/model/element/Name;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/common/collect/g1$a;->j(Ljava/lang/Object;)Lcom/google/common/collect/g1$a;

    goto :goto_2

    :pswitch_2
    check-cast v1, Lorg/openjdk/source/tree/MemberSelectTree;

    invoke-interface {v1}, Lorg/openjdk/source/tree/MemberSelectTree;->getIdentifier()Lorg/openjdk/javax/lang/model/element/Name;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/common/collect/g1$a;->j(Ljava/lang/Object;)Lcom/google/common/collect/g1$a;

    :goto_1
    if-eqz v2, :cond_0

    :cond_2
    :goto_2
    invoke-virtual {v0}, Lcom/google/common/collect/g1$a;->n()Lcom/google/common/collect/g1;

    move-result-object p1

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private splitToken(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "operatorName"
        }
    .end annotation

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_0

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->token(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private typeParametersRest(Ljava/util/List;Lorg/google/googlejavaformat/Indent;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "typeParameters",
            "plusIndent"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lorg/openjdk/source/tree/TypeParameterTree;",
            ">;",
            "Lorg/google/googlejavaformat/Indent;",
            ")V"
        }
    .end annotation

    iget-object v0, p0, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lorg/google/googlejavaformat/OpsBuilder;

    invoke-virtual {v0, p2}, Lorg/google/googlejavaformat/OpsBuilder;->open(Lorg/google/googlejavaformat/Indent;)V

    iget-object p2, p0, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lorg/google/googlejavaformat/OpsBuilder;

    invoke-virtual {p2}, Lorg/google/googlejavaformat/OpsBuilder;->breakOp()V

    iget-object p2, p0, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lorg/google/googlejavaformat/OpsBuilder;

    sget-object v0, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->ZERO:Lorg/google/googlejavaformat/Indent$Const;

    invoke-virtual {p2, v0}, Lorg/google/googlejavaformat/OpsBuilder;->open(Lorg/google/googlejavaformat/Indent;)V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 p2, 0x1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/openjdk/source/tree/TypeParameterTree;

    if-nez p2, :cond_0

    const-string p2, ","

    invoke-virtual {p0, p2}, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->token(Ljava/lang/String;)V

    iget-object p2, p0, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lorg/google/googlejavaformat/OpsBuilder;

    const-string v1, " "

    invoke-virtual {p2, v1}, Lorg/google/googlejavaformat/OpsBuilder;->breakOp(Ljava/lang/String;)V

    :cond_0
    const/4 p2, 0x0

    invoke-virtual {p0, v0, p2}, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->scan(Lorg/openjdk/source/tree/Tree;Ljava/lang/Void;)Ljava/lang/Void;

    const/4 p2, 0x0

    goto :goto_0

    :cond_1
    const-string p1, ">"

    invoke-virtual {p0, p1}, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->token(Ljava/lang/String;)V

    iget-object p1, p0, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lorg/google/googlejavaformat/OpsBuilder;

    invoke-virtual {p1}, Lorg/google/googlejavaformat/OpsBuilder;->close()V

    iget-object p1, p0, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lorg/google/googlejavaformat/OpsBuilder;

    invoke-virtual {p1}, Lorg/google/googlejavaformat/OpsBuilder;->close()V

    return-void
.end method

.method private variableFragmentDims(ZILorg/openjdk/source/tree/Tree;)Lorg/google/googlejavaformat/java/DimensionHelpers$TypeWithDims;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "first",
            "leadingDims",
            "type"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p3, :cond_0

    return-object v0

    :cond_0
    if-eqz p1, :cond_1

    sget-object p1, Lorg/google/googlejavaformat/java/DimensionHelpers$SortedDims;->YES:Lorg/google/googlejavaformat/java/DimensionHelpers$SortedDims;

    invoke-static {p3, p1}, Lorg/google/googlejavaformat/java/DimensionHelpers;->extractDims(Lorg/openjdk/source/tree/Tree;Lorg/google/googlejavaformat/java/DimensionHelpers$SortedDims;)Lorg/google/googlejavaformat/java/DimensionHelpers$TypeWithDims;

    move-result-object p1

    return-object p1

    :cond_1
    sget-object p1, Lorg/google/googlejavaformat/java/DimensionHelpers$SortedDims;->NO:Lorg/google/googlejavaformat/java/DimensionHelpers$SortedDims;

    invoke-static {p3, p1}, Lorg/google/googlejavaformat/java/DimensionHelpers;->extractDims(Lorg/openjdk/source/tree/Tree;Lorg/google/googlejavaformat/java/DimensionHelpers$SortedDims;)Lorg/google/googlejavaformat/java/DimensionHelpers$TypeWithDims;

    move-result-object p1

    new-instance p3, Lorg/google/googlejavaformat/java/DimensionHelpers$TypeWithDims;

    iget-object p1, p1, Lorg/google/googlejavaformat/java/DimensionHelpers$TypeWithDims;->dims:Lcom/google/common/collect/g1;

    if-lez p2, :cond_2

    invoke-virtual {p1}, Ljava/util/AbstractCollection;->size()I

    move-result v1

    sub-int/2addr v1, p2

    const/4 p2, 0x0

    invoke-virtual {p1, p2, v1}, Lcom/google/common/collect/g1;->O(II)Lcom/google/common/collect/g1;

    move-result-object p1

    :cond_2
    invoke-direct {p3, v0, p1}, Lorg/google/googlejavaformat/java/DimensionHelpers$TypeWithDims;-><init>(Lorg/openjdk/source/tree/Tree;Lcom/google/common/collect/g1;)V

    return-object p3
.end method

.method private variableFragments(Lcom/google/common/collect/g2;Lorg/openjdk/source/tree/Tree;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "it",
            "first"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/g2<",
            "+",
            "Lorg/openjdk/source/tree/Tree;",
            ">;",
            "Lorg/openjdk/source/tree/Tree;",
            ")",
            "Ljava/util/List<",
            "Lorg/openjdk/source/tree/VariableTree;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p2}, Lorg/openjdk/source/tree/Tree;->getKind()Lorg/openjdk/source/tree/Tree$Kind;

    move-result-object v1

    sget-object v2, Lorg/openjdk/source/tree/Tree$Kind;->VARIABLE:Lorg/openjdk/source/tree/Tree$Kind;

    if-ne v1, v2, :cond_0

    invoke-static {p2}, Lorg/google/googlejavaformat/java/Trees;->getStartPosition(Lorg/openjdk/source/tree/Tree;)I

    move-result v1

    check-cast p2, Lorg/openjdk/source/tree/VariableTree;

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-interface {p1}, Lcom/google/common/collect/g2;->peek()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/openjdk/source/tree/Tree;

    invoke-interface {p2}, Lorg/openjdk/source/tree/Tree;->getKind()Lorg/openjdk/source/tree/Tree$Kind;

    move-result-object p2

    sget-object v2, Lorg/openjdk/source/tree/Tree$Kind;->VARIABLE:Lorg/openjdk/source/tree/Tree$Kind;

    if-ne p2, v2, :cond_0

    invoke-interface {p1}, Lcom/google/common/collect/g2;->peek()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/openjdk/source/tree/Tree;

    invoke-static {p2}, Lorg/google/googlejavaformat/java/Trees;->getStartPosition(Lorg/openjdk/source/tree/Tree;)I

    move-result p2

    if-ne p2, v1, :cond_0

    invoke-interface {p1}, Lcom/google/common/collect/g2;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/openjdk/source/tree/VariableTree;

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private visitAnnotatedArrayType(Lorg/openjdk/source/tree/Tree;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "node"
        }
    .end annotation

    sget-object v0, Lorg/google/googlejavaformat/java/DimensionHelpers$SortedDims;->YES:Lorg/google/googlejavaformat/java/DimensionHelpers$SortedDims;

    invoke-static {p1, v0}, Lorg/google/googlejavaformat/java/DimensionHelpers;->extractDims(Lorg/openjdk/source/tree/Tree;Lorg/google/googlejavaformat/java/DimensionHelpers$SortedDims;)Lorg/google/googlejavaformat/java/DimensionHelpers$TypeWithDims;

    move-result-object p1

    iget-object v0, p0, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lorg/google/googlejavaformat/OpsBuilder;

    iget-object v1, p0, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->plusFour:Lorg/google/googlejavaformat/Indent$Const;

    invoke-virtual {v0, v1}, Lorg/google/googlejavaformat/OpsBuilder;->open(Lorg/google/googlejavaformat/Indent;)V

    iget-object v0, p1, Lorg/google/googlejavaformat/java/DimensionHelpers$TypeWithDims;->node:Lorg/openjdk/source/tree/Tree;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->scan(Lorg/openjdk/source/tree/Tree;Ljava/lang/Void;)Ljava/lang/Void;

    new-instance v0, Ljava/util/ArrayDeque;

    iget-object p1, p1, Lorg/google/googlejavaformat/java/DimensionHelpers$TypeWithDims;->dims:Lcom/google/common/collect/g1;

    invoke-direct {v0, p1}, Ljava/util/ArrayDeque;-><init>(Ljava/util/Collection;)V

    invoke-direct {p0, v0}, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->maybeAddDims(Ljava/util/Deque;)V

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result p1

    invoke-static {p1}, Lw2/W;->a(Z)V

    iget-object p1, p0, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lorg/google/googlejavaformat/OpsBuilder;

    invoke-virtual {p1}, Lorg/google/googlejavaformat/OpsBuilder;->close()V

    return-void
.end method

.method private visitBlock(Lorg/openjdk/source/tree/BlockTree;Lorg/google/googlejavaformat/java/JavaInputAstVisitor$CollapseEmptyOrNot;Lorg/google/googlejavaformat/java/JavaInputAstVisitor$AllowLeadingBlankLine;Lorg/google/googlejavaformat/java/JavaInputAstVisitor$AllowTrailingBlankLine;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "node",
            "collapseEmptyOrNot",
            "allowLeadingBlankLine",
            "allowTrailingBlankLine"
        }
    .end annotation

    .line 3
    invoke-virtual {p0, p1}, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->sync(Lorg/openjdk/source/tree/Tree;)V

    .line 4
    invoke-interface {p1}, Lorg/openjdk/source/tree/BlockTree;->isStatic()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5
    const-string v0, "static"

    invoke-virtual {p0, v0}, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->token(Ljava/lang/String;)V

    .line 6
    iget-object v0, p0, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lorg/google/googlejavaformat/OpsBuilder;

    invoke-virtual {v0}, Lorg/google/googlejavaformat/OpsBuilder;->space()V

    .line 7
    :cond_0
    invoke-virtual {p2}, Lorg/google/googlejavaformat/java/JavaInputAstVisitor$CollapseEmptyOrNot;->isYes()Z

    move-result p2

    const-string v0, "}"

    const-string v1, "{"

    if-eqz p2, :cond_2

    invoke-interface {p1}, Lorg/openjdk/source/tree/BlockTree;->getStatements()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_2

    .line 8
    iget-object p1, p0, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lorg/google/googlejavaformat/OpsBuilder;

    invoke-virtual {p1}, Lorg/google/googlejavaformat/OpsBuilder;->peekToken()Lw2/C;

    move-result-object p1

    const-string p2, ";"

    invoke-static {p2}, Lw2/C;->f(Ljava/lang/Object;)Lw2/C;

    move-result-object p3

    invoke-virtual {p1, p3}, Lw2/C;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 9
    invoke-virtual {p0, p2}, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->token(Ljava/lang/String;)V

    goto :goto_2

    .line 10
    :cond_1
    iget-object p1, p0, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->plusTwo:Lorg/google/googlejavaformat/Indent$Const;

    invoke-virtual {p0, v1, p1}, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->tokenBreakTrailingComment(Ljava/lang/String;Lorg/google/googlejavaformat/Indent;)V

    .line 11
    iget-object p1, p0, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lorg/google/googlejavaformat/OpsBuilder;

    sget-object p2, Lorg/google/googlejavaformat/OpsBuilder$BlankLineWanted;->NO:Lorg/google/googlejavaformat/OpsBuilder$BlankLineWanted;

    invoke-virtual {p1, p2}, Lorg/google/googlejavaformat/OpsBuilder;->blankLineWanted(Lorg/google/googlejavaformat/OpsBuilder$BlankLineWanted;)V

    .line 12
    iget-object p1, p0, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->plusTwo:Lorg/google/googlejavaformat/Indent$Const;

    invoke-virtual {p0, v0, p1}, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->token(Ljava/lang/String;Lorg/google/googlejavaformat/Indent;)V

    goto :goto_2

    .line 13
    :cond_2
    iget-object p2, p0, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lorg/google/googlejavaformat/OpsBuilder;

    sget-object v2, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->ZERO:Lorg/google/googlejavaformat/Indent$Const;

    invoke-virtual {p2, v2}, Lorg/google/googlejavaformat/OpsBuilder;->open(Lorg/google/googlejavaformat/Indent;)V

    .line 14
    iget-object p2, p0, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lorg/google/googlejavaformat/OpsBuilder;

    iget-object v2, p0, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->plusTwo:Lorg/google/googlejavaformat/Indent$Const;

    invoke-virtual {p2, v2}, Lorg/google/googlejavaformat/OpsBuilder;->open(Lorg/google/googlejavaformat/Indent;)V

    .line 15
    iget-object p2, p0, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->plusTwo:Lorg/google/googlejavaformat/Indent$Const;

    invoke-virtual {p0, v1, p2}, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->tokenBreakTrailingComment(Ljava/lang/String;Lorg/google/googlejavaformat/Indent;)V

    .line 16
    sget-object p2, Lorg/google/googlejavaformat/java/JavaInputAstVisitor$AllowLeadingBlankLine;->NO:Lorg/google/googlejavaformat/java/JavaInputAstVisitor$AllowLeadingBlankLine;

    if-ne p3, p2, :cond_3

    .line 17
    iget-object p2, p0, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lorg/google/googlejavaformat/OpsBuilder;

    sget-object p3, Lorg/google/googlejavaformat/OpsBuilder$BlankLineWanted;->NO:Lorg/google/googlejavaformat/OpsBuilder$BlankLineWanted;

    invoke-virtual {p2, p3}, Lorg/google/googlejavaformat/OpsBuilder;->blankLineWanted(Lorg/google/googlejavaformat/OpsBuilder$BlankLineWanted;)V

    goto :goto_0

    .line 18
    :cond_3
    iget-object p2, p0, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lorg/google/googlejavaformat/OpsBuilder;

    sget-object p3, Lorg/google/googlejavaformat/OpsBuilder$BlankLineWanted;->PRESERVE:Lorg/google/googlejavaformat/OpsBuilder$BlankLineWanted;

    invoke-virtual {p2, p3}, Lorg/google/googlejavaformat/OpsBuilder;->blankLineWanted(Lorg/google/googlejavaformat/OpsBuilder$BlankLineWanted;)V

    .line 19
    :goto_0
    invoke-interface {p1}, Lorg/openjdk/source/tree/BlockTree;->getStatements()Ljava/util/List;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->visitStatements(Ljava/util/List;)V

    .line 20
    iget-object p1, p0, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lorg/google/googlejavaformat/OpsBuilder;

    invoke-virtual {p1}, Lorg/google/googlejavaformat/OpsBuilder;->close()V

    .line 21
    iget-object p1, p0, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lorg/google/googlejavaformat/OpsBuilder;

    invoke-virtual {p1}, Lorg/google/googlejavaformat/OpsBuilder;->forcedBreak()V

    .line 22
    iget-object p1, p0, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lorg/google/googlejavaformat/OpsBuilder;

    invoke-virtual {p1}, Lorg/google/googlejavaformat/OpsBuilder;->close()V

    .line 23
    sget-object p1, Lorg/google/googlejavaformat/java/JavaInputAstVisitor$AllowTrailingBlankLine;->NO:Lorg/google/googlejavaformat/java/JavaInputAstVisitor$AllowTrailingBlankLine;

    if-ne p4, p1, :cond_4

    .line 24
    iget-object p1, p0, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lorg/google/googlejavaformat/OpsBuilder;

    sget-object p2, Lorg/google/googlejavaformat/OpsBuilder$BlankLineWanted;->NO:Lorg/google/googlejavaformat/OpsBuilder$BlankLineWanted;

    invoke-virtual {p1, p2}, Lorg/google/googlejavaformat/OpsBuilder;->blankLineWanted(Lorg/google/googlejavaformat/OpsBuilder$BlankLineWanted;)V

    goto :goto_1

    .line 25
    :cond_4
    iget-object p1, p0, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lorg/google/googlejavaformat/OpsBuilder;

    sget-object p2, Lorg/google/googlejavaformat/OpsBuilder$BlankLineWanted;->PRESERVE:Lorg/google/googlejavaformat/OpsBuilder$BlankLineWanted;

    invoke-virtual {p1, p2}, Lorg/google/googlejavaformat/OpsBuilder;->blankLineWanted(Lorg/google/googlejavaformat/OpsBuilder$BlankLineWanted;)V

    .line 26
    :goto_1
    invoke-direct {p0}, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->markForPartialFormat()V

    .line 27
    iget-object p1, p0, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->plusTwo:Lorg/google/googlejavaformat/Indent$Const;

    invoke-virtual {p0, v0, p1}, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->token(Ljava/lang/String;Lorg/google/googlejavaformat/Indent;)V

    :goto_2
    return-void
.end method

.method private visitCatchClause(Lorg/openjdk/source/tree/CatchTree;Lorg/google/googlejavaformat/java/JavaInputAstVisitor$AllowTrailingBlankLine;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "node",
            "allowTrailingBlankLine"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->sync(Lorg/openjdk/source/tree/Tree;)V

    iget-object v0, p0, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lorg/google/googlejavaformat/OpsBuilder;

    invoke-virtual {v0}, Lorg/google/googlejavaformat/OpsBuilder;->space()V

    const-string v0, "catch"

    invoke-virtual {p0, v0}, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->token(Ljava/lang/String;)V

    iget-object v0, p0, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lorg/google/googlejavaformat/OpsBuilder;

    invoke-virtual {v0}, Lorg/google/googlejavaformat/OpsBuilder;->space()V

    const-string v0, "("

    invoke-virtual {p0, v0}, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->token(Ljava/lang/String;)V

    iget-object v0, p0, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lorg/google/googlejavaformat/OpsBuilder;

    iget-object v1, p0, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->plusFour:Lorg/google/googlejavaformat/Indent$Const;

    invoke-virtual {v0, v1}, Lorg/google/googlejavaformat/OpsBuilder;->open(Lorg/google/googlejavaformat/Indent;)V

    invoke-interface {p1}, Lorg/openjdk/source/tree/CatchTree;->getParameter()Lorg/openjdk/source/tree/VariableTree;

    move-result-object v0

    invoke-interface {v0}, Lorg/openjdk/source/tree/VariableTree;->getType()Lorg/openjdk/source/tree/Tree;

    move-result-object v1

    invoke-interface {v1}, Lorg/openjdk/source/tree/Tree;->getKind()Lorg/openjdk/source/tree/Tree$Kind;

    move-result-object v1

    sget-object v2, Lorg/openjdk/source/tree/Tree$Kind;->UNION_TYPE:Lorg/openjdk/source/tree/Tree$Kind;

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lorg/google/googlejavaformat/OpsBuilder;

    sget-object v2, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->ZERO:Lorg/google/googlejavaformat/Indent$Const;

    invoke-virtual {v1, v2}, Lorg/google/googlejavaformat/OpsBuilder;->open(Lorg/google/googlejavaformat/Indent;)V

    invoke-direct {p0, v0}, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->visitUnionType(Lorg/openjdk/source/tree/VariableTree;)V

    iget-object v0, p0, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lorg/google/googlejavaformat/OpsBuilder;

    invoke-virtual {v0}, Lorg/google/googlejavaformat/OpsBuilder;->close()V

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lorg/google/googlejavaformat/OpsBuilder;

    invoke-virtual {v1}, Lorg/google/googlejavaformat/OpsBuilder;->breakToFill()V

    iget-object v1, p0, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lorg/google/googlejavaformat/OpsBuilder;

    sget-object v2, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->ZERO:Lorg/google/googlejavaformat/Indent$Const;

    invoke-virtual {v1, v2}, Lorg/google/googlejavaformat/OpsBuilder;->open(Lorg/google/googlejavaformat/Indent;)V

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->scan(Lorg/openjdk/source/tree/Tree;Ljava/lang/Void;)Ljava/lang/Void;

    iget-object v0, p0, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lorg/google/googlejavaformat/OpsBuilder;

    invoke-virtual {v0}, Lorg/google/googlejavaformat/OpsBuilder;->close()V

    :goto_0
    iget-object v0, p0, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lorg/google/googlejavaformat/OpsBuilder;

    invoke-virtual {v0}, Lorg/google/googlejavaformat/OpsBuilder;->close()V

    const-string v0, ")"

    invoke-virtual {p0, v0}, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->token(Ljava/lang/String;)V

    iget-object v0, p0, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lorg/google/googlejavaformat/OpsBuilder;

    invoke-virtual {v0}, Lorg/google/googlejavaformat/OpsBuilder;->space()V

    invoke-interface {p1}, Lorg/openjdk/source/tree/CatchTree;->getBlock()Lorg/openjdk/source/tree/BlockTree;

    move-result-object p1

    sget-object v0, Lorg/google/googlejavaformat/java/JavaInputAstVisitor$CollapseEmptyOrNot;->NO:Lorg/google/googlejavaformat/java/JavaInputAstVisitor$CollapseEmptyOrNot;

    sget-object v1, Lorg/google/googlejavaformat/java/JavaInputAstVisitor$AllowLeadingBlankLine;->YES:Lorg/google/googlejavaformat/java/JavaInputAstVisitor$AllowLeadingBlankLine;

    invoke-direct {p0, p1, v0, v1, p2}, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->visitBlock(Lorg/openjdk/source/tree/BlockTree;Lorg/google/googlejavaformat/java/JavaInputAstVisitor$CollapseEmptyOrNot;Lorg/google/googlejavaformat/java/JavaInputAstVisitor$AllowLeadingBlankLine;Lorg/google/googlejavaformat/java/JavaInputAstVisitor$AllowTrailingBlankLine;)V

    return-void
.end method

.method private visitDirective(Ljava/lang/String;Ljava/lang/String;Lorg/openjdk/source/tree/ExpressionTree;Ljava/util/List;)V
    .locals 2
    .param p4    # Ljava/util/List;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "name",
            "separator",
            "nameExpression",
            "items"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lorg/openjdk/source/tree/ExpressionTree;",
            "Ljava/util/List<",
            "+",
            "Lorg/openjdk/source/tree/ExpressionTree;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->token(Ljava/lang/String;)V

    iget-object p1, p0, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lorg/google/googlejavaformat/OpsBuilder;

    invoke-virtual {p1}, Lorg/google/googlejavaformat/OpsBuilder;->space()V

    const/4 p1, 0x0

    invoke-virtual {p0, p3, p1}, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->scan(Lorg/openjdk/source/tree/Tree;Ljava/lang/Void;)Ljava/lang/Void;

    const-string p3, ";"

    if-eqz p4, :cond_2

    iget-object v0, p0, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lorg/google/googlejavaformat/OpsBuilder;

    iget-object v1, p0, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->plusFour:Lorg/google/googlejavaformat/Indent$Const;

    invoke-virtual {v0, v1}, Lorg/google/googlejavaformat/OpsBuilder;->open(Lorg/google/googlejavaformat/Indent;)V

    iget-object v0, p0, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lorg/google/googlejavaformat/OpsBuilder;

    invoke-virtual {v0}, Lorg/google/googlejavaformat/OpsBuilder;->space()V

    invoke-virtual {p0, p2}, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->token(Ljava/lang/String;)V

    iget-object p2, p0, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lorg/google/googlejavaformat/OpsBuilder;

    invoke-virtual {p2}, Lorg/google/googlejavaformat/OpsBuilder;->forcedBreak()V

    invoke-interface {p4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    const/4 p4, 0x1

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/openjdk/source/tree/ExpressionTree;

    if-nez p4, :cond_0

    const-string p4, ","

    invoke-virtual {p0, p4}, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->token(Ljava/lang/String;)V

    iget-object p4, p0, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lorg/google/googlejavaformat/OpsBuilder;

    invoke-virtual {p4}, Lorg/google/googlejavaformat/OpsBuilder;->forcedBreak()V

    :cond_0
    invoke-virtual {p0, v0, p1}, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->scan(Lorg/openjdk/source/tree/Tree;Ljava/lang/Void;)Ljava/lang/Void;

    const/4 p4, 0x0

    goto :goto_0

    :cond_1
    invoke-virtual {p0, p3}, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->token(Ljava/lang/String;)V

    iget-object p1, p0, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lorg/google/googlejavaformat/OpsBuilder;

    invoke-virtual {p1}, Lorg/google/googlejavaformat/OpsBuilder;->close()V

    goto :goto_1

    :cond_2
    invoke-virtual {p0, p3}, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->token(Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method private visitDotWithPrefix(Ljava/util/List;ZI)V
    .locals 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "items",
            "needDot",
            "prefixIndex"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/openjdk/source/tree/ExpressionTree;",
            ">;ZI)V"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ltz p3, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    sub-int/2addr v2, v1

    if-ge p3, v2, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    move v2, v0

    :goto_0
    iget-object v3, p0, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lorg/google/googlejavaformat/OpsBuilder;

    iget-object v4, p0, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->plusFour:Lorg/google/googlejavaformat/Indent$Const;

    invoke-virtual {v3, v4}, Lorg/google/googlejavaformat/OpsBuilder;->open(Lorg/google/googlejavaformat/Indent;)V

    iget-object v3, p0, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lorg/google/googlejavaformat/OpsBuilder;

    sget-object v4, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->ZERO:Lorg/google/googlejavaformat/Indent$Const;

    invoke-virtual {v3, v4}, Lorg/google/googlejavaformat/OpsBuilder;->open(Lorg/google/googlejavaformat/Indent;)V

    invoke-virtual {p0}, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->genSym()Lorg/google/googlejavaformat/Output$BreakTag;

    move-result-object v3

    :goto_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    if-ge v0, v4, :cond_5

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/openjdk/source/tree/ExpressionTree;

    if-eqz p2, :cond_2

    if-ltz p3, :cond_1

    if-gt v0, p3, :cond_1

    sget-object p2, Lorg/google/googlejavaformat/Doc$FillMode;->INDEPENDENT:Lorg/google/googlejavaformat/Doc$FillMode;

    goto :goto_2

    :cond_1
    sget-object p2, Lorg/google/googlejavaformat/Doc$FillMode;->UNIFIED:Lorg/google/googlejavaformat/Doc$FillMode;

    :goto_2
    iget-object v5, p0, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lorg/google/googlejavaformat/OpsBuilder;

    sget-object v6, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->ZERO:Lorg/google/googlejavaformat/Indent$Const;

    invoke-static {v3}, Lw2/C;->f(Ljava/lang/Object;)Lw2/C;

    move-result-object v7

    const-string v8, ""

    invoke-virtual {v5, p2, v8, v6, v7}, Lorg/google/googlejavaformat/OpsBuilder;->breakOp(Lorg/google/googlejavaformat/Doc$FillMode;Ljava/lang/String;Lorg/google/googlejavaformat/Indent;Lw2/C;)V

    const-string p2, "."

    invoke-virtual {p0, p2}, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->token(Ljava/lang/String;)V

    :cond_2
    invoke-virtual {p0}, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->genSym()Lorg/google/googlejavaformat/Output$BreakTag;

    move-result-object p2

    invoke-static {p2}, Lw2/C;->f(Ljava/lang/Object;)Lw2/C;

    move-result-object v5

    invoke-direct {p0, v4, v5}, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->dotExpressionUpToArgs(Lorg/openjdk/source/tree/ExpressionTree;Lw2/C;)V

    if-ltz p3, :cond_3

    if-ne v0, p3, :cond_3

    iget-object v5, p0, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lorg/google/googlejavaformat/OpsBuilder;

    invoke-virtual {v5}, Lorg/google/googlejavaformat/OpsBuilder;->close()V

    :cond_3
    iget-object v5, p0, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->plusFour:Lorg/google/googlejavaformat/Indent$Const;

    sget-object v6, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->ZERO:Lorg/google/googlejavaformat/Indent$Const;

    invoke-static {p2, v5, v6}, Lorg/google/googlejavaformat/Indent$If;->make(Lorg/google/googlejavaformat/Output$BreakTag;Lorg/google/googlejavaformat/Indent;Lorg/google/googlejavaformat/Indent;)Lorg/google/googlejavaformat/Indent$If;

    move-result-object p2

    iget-object v5, p0, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->plusFour:Lorg/google/googlejavaformat/Indent$Const;

    if-eqz v2, :cond_4

    move-object v6, v5

    :cond_4
    invoke-static {v3, v5, v6}, Lorg/google/googlejavaformat/Indent$If;->make(Lorg/google/googlejavaformat/Output$BreakTag;Lorg/google/googlejavaformat/Indent;Lorg/google/googlejavaformat/Indent;)Lorg/google/googlejavaformat/Indent$If;

    move-result-object v5

    invoke-direct {p0, v4, p2, v5}, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->dotExpressionArgsAndParen(Lorg/openjdk/source/tree/ExpressionTree;Lorg/google/googlejavaformat/Indent;Lorg/google/googlejavaformat/Indent;)V

    add-int/lit8 v0, v0, 0x1

    move p2, v1

    goto :goto_1

    :cond_5
    iget-object p1, p0, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lorg/google/googlejavaformat/OpsBuilder;

    invoke-virtual {p1}, Lorg/google/googlejavaformat/OpsBuilder;->close()V

    return-void
.end method

.method private visitEnumConstantDeclaration(Lorg/openjdk/source/tree/VariableTree;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enumConstant"
        }
    .end annotation

    invoke-interface {p1}, Lorg/openjdk/source/tree/VariableTree;->getModifiers()Lorg/openjdk/source/tree/ModifiersTree;

    move-result-object v0

    invoke-interface {v0}, Lorg/openjdk/source/tree/ModifiersTree;->getAnnotations()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/openjdk/source/tree/AnnotationTree;

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->scan(Lorg/openjdk/source/tree/Tree;Ljava/lang/Void;)Ljava/lang/Void;

    iget-object v1, p0, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lorg/google/googlejavaformat/OpsBuilder;

    invoke-virtual {v1}, Lorg/google/googlejavaformat/OpsBuilder;->forcedBreak()V

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Lorg/openjdk/source/tree/VariableTree;->getName()Lorg/openjdk/javax/lang/model/element/Name;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->visit(Lorg/openjdk/javax/lang/model/element/Name;)Z

    invoke-interface {p1}, Lorg/openjdk/source/tree/VariableTree;->getInitializer()Lorg/openjdk/source/tree/ExpressionTree;

    move-result-object p1

    check-cast p1, Lorg/openjdk/source/tree/NewClassTree;

    invoke-interface {p1}, Lorg/openjdk/source/tree/NewClassTree;->getArguments()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lorg/google/googlejavaformat/OpsBuilder;

    const-string v1, "("

    invoke-virtual {v0, v1}, Lorg/google/googlejavaformat/OpsBuilder;->guessToken(Ljava/lang/String;)V

    iget-object v0, p0, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lorg/google/googlejavaformat/OpsBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Lorg/google/googlejavaformat/OpsBuilder;->guessToken(Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    invoke-interface {p1}, Lorg/openjdk/source/tree/NewClassTree;->getArguments()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->plusFour:Lorg/google/googlejavaformat/Indent$Const;

    invoke-virtual {p0, v0, v1}, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->addArguments(Ljava/util/List;Lorg/google/googlejavaformat/Indent;)V

    :goto_1
    invoke-interface {p1}, Lorg/openjdk/source/tree/NewClassTree;->getClassBody()Lorg/openjdk/source/tree/ClassTree;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Lorg/openjdk/source/tree/NewClassTree;->getClassBody()Lorg/openjdk/source/tree/ClassTree;

    move-result-object p1

    invoke-interface {p1}, Lorg/openjdk/source/tree/ClassTree;->getMembers()Ljava/util/List;

    move-result-object p1

    sget-object v0, Lorg/google/googlejavaformat/java/JavaInputAstVisitor$BracesOrNot;->YES:Lorg/google/googlejavaformat/java/JavaInputAstVisitor$BracesOrNot;

    sget-object v1, Lorg/google/googlejavaformat/java/JavaInputAstVisitor$FirstDeclarationsOrNot;->YES:Lorg/google/googlejavaformat/java/JavaInputAstVisitor$FirstDeclarationsOrNot;

    invoke-virtual {p0, p1, v0, v1}, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->addBodyDeclarations(Ljava/util/List;Lorg/google/googlejavaformat/java/JavaInputAstVisitor$BracesOrNot;Lorg/google/googlejavaformat/java/JavaInputAstVisitor$FirstDeclarationsOrNot;)V

    :cond_2
    return-void
.end method

.method private visitFormals(Lw2/C;Ljava/util/List;)V
    .locals 16
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "receiver",
            "parameters"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lw2/C<",
            "Lorg/openjdk/source/tree/VariableTree;",
            ">;",
            "Ljava/util/List<",
            "+",
            "Lorg/openjdk/source/tree/VariableTree;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v12, p0

    invoke-virtual/range {p1 .. p1}, Lw2/C;->e()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface/range {p2 .. p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, v12, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lorg/google/googlejavaformat/OpsBuilder;

    sget-object v1, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->ZERO:Lorg/google/googlejavaformat/Indent$Const;

    invoke-virtual {v0, v1}, Lorg/google/googlejavaformat/OpsBuilder;->open(Lorg/google/googlejavaformat/Indent;)V

    invoke-virtual/range {p1 .. p1}, Lw2/C;->e()Z

    move-result v0

    const-string v13, ","

    const/4 v14, 0x0

    const/4 v15, 0x1

    if-eqz v0, :cond_2

    sget-object v1, Lorg/google/googlejavaformat/java/JavaInputAstVisitor$DeclarationKind;->PARAMETER:Lorg/google/googlejavaformat/java/JavaInputAstVisitor$DeclarationKind;

    sget-object v2, Lorg/google/googlejavaformat/java/JavaInputAstVisitor$Direction;->HORIZONTAL:Lorg/google/googlejavaformat/java/JavaInputAstVisitor$Direction;

    invoke-virtual/range {p1 .. p1}, Lw2/C;->d()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/openjdk/source/tree/VariableTree;

    invoke-interface {v0}, Lorg/openjdk/source/tree/VariableTree;->getModifiers()Lorg/openjdk/source/tree/ModifiersTree;

    move-result-object v0

    invoke-static {v0}, Lw2/C;->f(Ljava/lang/Object;)Lw2/C;

    move-result-object v3

    invoke-virtual/range {p1 .. p1}, Lw2/C;->d()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/openjdk/source/tree/VariableTree;

    invoke-interface {v0}, Lorg/openjdk/source/tree/VariableTree;->getType()Lorg/openjdk/source/tree/Tree;

    move-result-object v4

    invoke-virtual/range {p1 .. p1}, Lw2/C;->d()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/openjdk/source/tree/VariableTree;

    invoke-interface {v0}, Lorg/openjdk/source/tree/VariableTree;->getName()Lorg/openjdk/javax/lang/model/element/Name;

    move-result-object v5

    invoke-static {}, Lw2/C;->a()Lw2/C;

    move-result-object v8

    invoke-interface/range {p2 .. p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {v13}, Lw2/C;->f(Ljava/lang/Object;)Lw2/C;

    move-result-object v0

    :goto_0
    move-object v9, v0

    goto :goto_1

    :cond_1
    invoke-static {}, Lw2/C;->a()Lw2/C;

    move-result-object v0

    goto :goto_0

    :goto_1
    invoke-virtual/range {p1 .. p1}, Lw2/C;->d()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/openjdk/source/tree/VariableTree;

    invoke-interface {v0}, Lorg/openjdk/source/tree/VariableTree;->getNameExpression()Lorg/openjdk/source/tree/ExpressionTree;

    move-result-object v0

    invoke-static {v0}, Lw2/C;->f(Ljava/lang/Object;)Lw2/C;

    move-result-object v10

    invoke-static {}, Lw2/C;->a()Lw2/C;

    move-result-object v11

    const-string v6, ""

    const-string v7, ""

    move-object/from16 v0, p0

    invoke-virtual/range {v0 .. v11}, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->declareOne(Lorg/google/googlejavaformat/java/JavaInputAstVisitor$DeclarationKind;Lorg/google/googlejavaformat/java/JavaInputAstVisitor$Direction;Lw2/C;Lorg/openjdk/source/tree/Tree;Lorg/openjdk/javax/lang/model/element/Name;Ljava/lang/String;Ljava/lang/String;Lw2/C;Lw2/C;Lw2/C;Lw2/C;)I

    move v0, v14

    goto :goto_2

    :cond_2
    move v0, v15

    :goto_2
    move v7, v14

    :goto_3
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v1

    if-ge v7, v1, :cond_5

    move-object/from16 v8, p2

    invoke-interface {v8, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Lorg/openjdk/source/tree/VariableTree;

    if-nez v0, :cond_3

    iget-object v0, v12, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lorg/google/googlejavaformat/OpsBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Lorg/google/googlejavaformat/OpsBuilder;->breakOp(Ljava/lang/String;)V

    :cond_3
    sget-object v1, Lorg/google/googlejavaformat/java/JavaInputAstVisitor$DeclarationKind;->PARAMETER:Lorg/google/googlejavaformat/java/JavaInputAstVisitor$DeclarationKind;

    sget-object v2, Lorg/google/googlejavaformat/java/JavaInputAstVisitor$Direction;->HORIZONTAL:Lorg/google/googlejavaformat/java/JavaInputAstVisitor$Direction;

    invoke-static {}, Lw2/C;->a()Lw2/C;

    move-result-object v4

    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v0

    sub-int/2addr v0, v15

    if-ge v7, v0, :cond_4

    invoke-static {v13}, Lw2/C;->f(Ljava/lang/Object;)Lw2/C;

    move-result-object v0

    :goto_4
    move-object v6, v0

    goto :goto_5

    :cond_4
    invoke-static {}, Lw2/C;->a()Lw2/C;

    move-result-object v0

    goto :goto_4

    :goto_5
    const-string v5, "="

    move-object/from16 v0, p0

    invoke-direct/range {v0 .. v6}, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->visitToDeclare(Lorg/google/googlejavaformat/java/JavaInputAstVisitor$DeclarationKind;Lorg/google/googlejavaformat/java/JavaInputAstVisitor$Direction;Lorg/openjdk/source/tree/VariableTree;Lw2/C;Ljava/lang/String;Lw2/C;)V

    add-int/lit8 v7, v7, 0x1

    move v0, v14

    goto :goto_3

    :cond_5
    iget-object v0, v12, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lorg/google/googlejavaformat/OpsBuilder;

    invoke-virtual {v0}, Lorg/google/googlejavaformat/OpsBuilder;->close()V

    return-void
.end method

.method private visitModifiers(Ljava/util/List;Lorg/google/googlejavaformat/java/JavaInputAstVisitor$Direction;Lw2/C;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "annotationTrees",
            "annotationsDirection",
            "declarationAnnotationBreak"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lorg/openjdk/source/tree/AnnotationTree;",
            ">;",
            "Lorg/google/googlejavaformat/java/JavaInputAstVisitor$Direction;",
            "Lw2/C<",
            "Lorg/google/googlejavaformat/Output$BreakTag;",
            ">;)",
            "Ljava/util/List<",
            "Lorg/google/googlejavaformat/Op;",
            ">;"
        }
    .end annotation

    .line 5
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->nextIsModifier()Z

    move-result v0

    if-nez v0, :cond_0

    .line 6
    sget-object p1, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->EMPTY_LIST:Lcom/google/common/collect/g1;

    return-object p1

    .line 7
    :cond_0
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0, p1}, Ljava/util/ArrayDeque;-><init>(Ljava/util/Collection;)V

    .line 8
    iget-object p1, p0, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lorg/google/googlejavaformat/OpsBuilder;

    sget-object v1, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->ZERO:Lorg/google/googlejavaformat/Indent$Const;

    invoke-virtual {p1, v1}, Lorg/google/googlejavaformat/OpsBuilder;->open(Lorg/google/googlejavaformat/Indent;)V

    const/4 p1, 0x0

    const/4 v1, 0x1

    move v3, p1

    move v2, v1

    .line 9
    :goto_0
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v4

    const/4 v5, 0x0

    if-nez v4, :cond_4

    .line 10
    invoke-virtual {p0}, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->nextIsModifier()Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_2

    :cond_1
    if-nez v2, :cond_3

    .line 11
    iget-object v2, p0, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lorg/google/googlejavaformat/OpsBuilder;

    .line 12
    invoke-virtual {p2}, Lorg/google/googlejavaformat/java/JavaInputAstVisitor$Direction;->isVertical()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 13
    invoke-static {p3}, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->forceBreakList(Lw2/C;)Lcom/google/common/collect/g1;

    move-result-object v3

    goto :goto_1

    .line 14
    :cond_2
    invoke-static {p3}, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->breakList(Lw2/C;)Lcom/google/common/collect/g1;

    move-result-object v3

    .line 15
    :goto_1
    invoke-virtual {v2, v3}, Lorg/google/googlejavaformat/OpsBuilder;->addAll(Ljava/util/List;)V

    .line 16
    :cond_3
    invoke-interface {v0}, Ljava/util/Deque;->removeFirst()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/openjdk/source/tree/Tree;

    invoke-virtual {p0, v2, v5}, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->scan(Lorg/openjdk/source/tree/Tree;Ljava/lang/Void;)Ljava/lang/Void;

    move v2, p1

    move v3, v1

    goto :goto_0

    .line 17
    :cond_4
    :goto_2
    iget-object v2, p0, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lorg/google/googlejavaformat/OpsBuilder;

    invoke-virtual {v2}, Lorg/google/googlejavaformat/OpsBuilder;->close()V

    .line 18
    invoke-virtual {p2}, Lorg/google/googlejavaformat/java/JavaInputAstVisitor$Direction;->isVertical()Z

    move-result p2

    if-eqz p2, :cond_5

    .line 19
    invoke-static {p3}, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->forceBreakList(Lw2/C;)Lcom/google/common/collect/g1;

    move-result-object p2

    goto :goto_3

    .line 20
    :cond_5
    invoke-static {p3}, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->breakList(Lw2/C;)Lcom/google/common/collect/g1;

    move-result-object p2

    .line 21
    :goto_3
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result p3

    if-eqz p3, :cond_6

    invoke-virtual {p0}, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->nextIsModifier()Z

    move-result p3

    if-nez p3, :cond_6

    return-object p2

    :cond_6
    if-eqz v3, :cond_7

    .line 22
    iget-object p3, p0, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lorg/google/googlejavaformat/OpsBuilder;

    invoke-virtual {p3, p2}, Lorg/google/googlejavaformat/OpsBuilder;->addAll(Ljava/util/List;)V

    .line 23
    :cond_7
    iget-object p2, p0, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lorg/google/googlejavaformat/OpsBuilder;

    sget-object p3, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->ZERO:Lorg/google/googlejavaformat/Indent$Const;

    invoke-virtual {p2, p3}, Lorg/google/googlejavaformat/OpsBuilder;->open(Lorg/google/googlejavaformat/Indent;)V

    .line 24
    :goto_4
    invoke-virtual {p0}, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->nextIsModifier()Z

    move-result p2

    if-nez p2, :cond_9

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_8

    goto :goto_5

    .line 25
    :cond_8
    iget-object p1, p0, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lorg/google/googlejavaformat/OpsBuilder;

    invoke-virtual {p1}, Lorg/google/googlejavaformat/OpsBuilder;->close()V

    .line 26
    invoke-static {}, Lw2/C;->a()Lw2/C;

    move-result-object p1

    invoke-static {p1}, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->breakFillList(Lw2/C;)Lcom/google/common/collect/g1;

    move-result-object p1

    return-object p1

    :cond_9
    :goto_5
    if-nez v1, :cond_a

    .line 27
    iget-object p2, p0, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lorg/google/googlejavaformat/OpsBuilder;

    invoke-static {}, Lw2/C;->a()Lw2/C;

    move-result-object p3

    invoke-static {p3}, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->breakFillList(Lw2/C;)Lcom/google/common/collect/g1;

    move-result-object p3

    invoke-virtual {p2, p3}, Lorg/google/googlejavaformat/OpsBuilder;->addAll(Ljava/util/List;)V

    .line 28
    :cond_a
    invoke-virtual {p0}, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->nextIsModifier()Z

    move-result p2

    if-eqz p2, :cond_b

    .line 29
    iget-object p2, p0, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lorg/google/googlejavaformat/OpsBuilder;

    invoke-virtual {p2}, Lorg/google/googlejavaformat/OpsBuilder;->peekToken()Lw2/C;

    move-result-object p2

    invoke-virtual {p2}, Lw2/C;->d()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p2}, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->token(Ljava/lang/String;)V

    goto :goto_6

    .line 30
    :cond_b
    invoke-interface {v0}, Ljava/util/Deque;->removeFirst()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/openjdk/source/tree/Tree;

    invoke-virtual {p0, p2, v5}, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->scan(Lorg/openjdk/source/tree/Tree;Ljava/lang/Void;)Ljava/lang/Void;

    :goto_6
    move v1, p1

    goto :goto_4
.end method

.method private visitModifiers(Lorg/openjdk/source/tree/ModifiersTree;Lorg/google/googlejavaformat/java/JavaInputAstVisitor$Direction;Lw2/C;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "modifiersTree",
            "annotationsDirection",
            "declarationAnnotationBreak"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/source/tree/ModifiersTree;",
            "Lorg/google/googlejavaformat/java/JavaInputAstVisitor$Direction;",
            "Lw2/C<",
            "Lorg/google/googlejavaformat/Output$BreakTag;",
            ">;)",
            "Ljava/util/List<",
            "Lorg/google/googlejavaformat/Op;",
            ">;"
        }
    .end annotation

    .line 3
    invoke-interface {p1}, Lorg/openjdk/source/tree/ModifiersTree;->getAnnotations()Ljava/util/List;

    move-result-object p1

    .line 4
    invoke-direct {p0, p1, p2, p3}, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->visitModifiers(Ljava/util/List;Lorg/google/googlejavaformat/java/JavaInputAstVisitor$Direction;Lw2/C;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method private visitName(Lorg/openjdk/source/tree/Tree;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "node"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    :goto_0
    instance-of v1, p1, Lorg/openjdk/source/tree/MemberSelectTree;

    if-eqz v1, :cond_0

    check-cast p1, Lorg/openjdk/source/tree/MemberSelectTree;

    invoke-interface {p1}, Lorg/openjdk/source/tree/MemberSelectTree;->getIdentifier()Lorg/openjdk/javax/lang/model/element/Name;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Deque;->addFirst(Ljava/lang/Object;)V

    invoke-interface {p1}, Lorg/openjdk/source/tree/MemberSelectTree;->getExpression()Lorg/openjdk/source/tree/ExpressionTree;

    move-result-object p1

    goto :goto_0

    :cond_0
    check-cast p1, Lorg/openjdk/source/tree/IdentifierTree;

    invoke-interface {p1}, Lorg/openjdk/source/tree/IdentifierTree;->getName()Lorg/openjdk/javax/lang/model/element/Name;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Deque;->addFirst(Ljava/lang/Object;)V

    invoke-interface {v0}, Ljava/util/Deque;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v0, 0x1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/openjdk/javax/lang/model/element/Name;

    if-nez v0, :cond_1

    const-string v0, "."

    invoke-virtual {p0, v0}, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->token(Ljava/lang/String;)V

    :cond_1
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->token(Ljava/lang/String;)V

    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    return-void
.end method

.method private visitPackage(Lorg/openjdk/source/tree/ExpressionTree;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "packageName",
            "packageAnnotations"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/source/tree/ExpressionTree;",
            "Ljava/util/List<",
            "+",
            "Lorg/openjdk/source/tree/AnnotationTree;",
            ">;)V"
        }
    .end annotation

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/openjdk/source/tree/AnnotationTree;

    iget-object v1, p0, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lorg/google/googlejavaformat/OpsBuilder;

    invoke-virtual {v1}, Lorg/google/googlejavaformat/OpsBuilder;->forcedBreak()V

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->scan(Lorg/openjdk/source/tree/Tree;Ljava/lang/Void;)Ljava/lang/Void;

    goto :goto_0

    :cond_0
    iget-object p2, p0, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lorg/google/googlejavaformat/OpsBuilder;

    invoke-virtual {p2}, Lorg/google/googlejavaformat/OpsBuilder;->forcedBreak()V

    :cond_1
    iget-object p2, p0, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lorg/google/googlejavaformat/OpsBuilder;

    iget-object v0, p0, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->plusFour:Lorg/google/googlejavaformat/Indent$Const;

    invoke-virtual {p2, v0}, Lorg/google/googlejavaformat/OpsBuilder;->open(Lorg/google/googlejavaformat/Indent;)V

    const-string p2, "package"

    invoke-virtual {p0, p2}, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->token(Ljava/lang/String;)V

    iget-object p2, p0, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lorg/google/googlejavaformat/OpsBuilder;

    invoke-virtual {p2}, Lorg/google/googlejavaformat/OpsBuilder;->space()V

    invoke-direct {p0, p1}, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->visitName(Lorg/openjdk/source/tree/Tree;)V

    iget-object p1, p0, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lorg/google/googlejavaformat/OpsBuilder;

    invoke-virtual {p1}, Lorg/google/googlejavaformat/OpsBuilder;->close()V

    const-string p1, ";"

    invoke-virtual {p0, p1}, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->token(Ljava/lang/String;)V

    return-void
.end method

.method private visitRegularDot(Ljava/util/List;Z)V
    .locals 11
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "items",
            "needDot"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/openjdk/source/tree/ExpressionTree;",
            ">;Z)V"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-le v0, v2, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    if-nez p2, :cond_1

    iget-object v3, p0, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lorg/google/googlejavaformat/OpsBuilder;

    iget-object v4, p0, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->plusFour:Lorg/google/googlejavaformat/Indent$Const;

    invoke-virtual {v3, v4}, Lorg/google/googlejavaformat/OpsBuilder;->open(Lorg/google/googlejavaformat/Indent;)V

    :cond_1
    iget v3, p0, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->indentMultiplier:I

    mul-int/lit8 v3, v3, 0x4

    if-eqz p2, :cond_2

    move v1, v3

    :cond_2
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v5, p2

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_9

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/openjdk/source/tree/ExpressionTree;

    if-eqz v5, :cond_4

    if-le v1, v3, :cond_3

    iget-object v7, p0, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lorg/google/googlejavaformat/OpsBuilder;

    sget-object v8, Lorg/google/googlejavaformat/Doc$FillMode;->UNIFIED:Lorg/google/googlejavaformat/Doc$FillMode;

    const-string v9, ""

    sget-object v10, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->ZERO:Lorg/google/googlejavaformat/Indent$Const;

    invoke-virtual {v7, v8, v9, v10}, Lorg/google/googlejavaformat/OpsBuilder;->breakOp(Lorg/google/googlejavaformat/Doc$FillMode;Ljava/lang/String;Lorg/google/googlejavaformat/Indent;)V

    :cond_3
    const-string v7, "."

    invoke-virtual {p0, v7}, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->token(Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    :cond_4
    if-eqz v0, :cond_5

    sget-object v7, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->ZERO:Lorg/google/googlejavaformat/Indent$Const;

    goto :goto_2

    :cond_5
    iget-object v7, p0, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->minusFour:Lorg/google/googlejavaformat/Indent$Const;

    :goto_2
    invoke-direct {p0, v6, p1, v7}, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->fillFirstArgument(Lorg/openjdk/source/tree/ExpressionTree;Ljava/util/List;Lorg/google/googlejavaformat/Indent;)Z

    move-result v7

    if-nez v7, :cond_8

    invoke-virtual {p0}, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->genSym()Lorg/google/googlejavaformat/Output$BreakTag;

    move-result-object v7

    invoke-static {v7}, Lw2/C;->f(Ljava/lang/Object;)Lw2/C;

    move-result-object v8

    invoke-direct {p0, v6, v8}, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->dotExpressionUpToArgs(Lorg/openjdk/source/tree/ExpressionTree;Lw2/C;)V

    iget-object v8, p0, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->plusFour:Lorg/google/googlejavaformat/Indent$Const;

    sget-object v9, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->ZERO:Lorg/google/googlejavaformat/Indent$Const;

    invoke-static {v7, v8, v9}, Lorg/google/googlejavaformat/Indent$If;->make(Lorg/google/googlejavaformat/Output$BreakTag;Lorg/google/googlejavaformat/Indent;Lorg/google/googlejavaformat/Indent;)Lorg/google/googlejavaformat/Indent$If;

    move-result-object v7

    if-nez v0, :cond_6

    if-eqz v5, :cond_7

    :cond_6
    iget-object v9, p0, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->plusFour:Lorg/google/googlejavaformat/Indent$Const;

    :cond_7
    invoke-direct {p0, v6, v7, v9}, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->dotExpressionArgsAndParen(Lorg/openjdk/source/tree/ExpressionTree;Lorg/google/googlejavaformat/Indent;Lorg/google/googlejavaformat/Indent;)V

    :cond_8
    invoke-virtual {p0}, Lorg/openjdk/source/util/TreePathScanner;->getCurrentPath()Lorg/openjdk/source/util/TreePath;

    move-result-object v5

    invoke-static {v6, v5}, Lorg/google/googlejavaformat/java/Trees;->getLength(Lorg/openjdk/source/tree/Tree;Lorg/openjdk/source/util/TreePath;)I

    move-result v5

    add-int/2addr v1, v5

    move v5, v2

    goto :goto_1

    :cond_9
    if-nez p2, :cond_a

    iget-object p1, p0, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lorg/google/googlejavaformat/OpsBuilder;

    invoke-virtual {p1}, Lorg/google/googlejavaformat/OpsBuilder;->close()V

    :cond_a
    return-void
.end method

.method private visitStatement(Lorg/openjdk/source/tree/StatementTree;Lorg/google/googlejavaformat/java/JavaInputAstVisitor$CollapseEmptyOrNot;Lorg/google/googlejavaformat/java/JavaInputAstVisitor$AllowLeadingBlankLine;Lorg/google/googlejavaformat/java/JavaInputAstVisitor$AllowTrailingBlankLine;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "node",
            "collapseEmptyOrNot",
            "allowLeadingBlank",
            "allowTrailingBlank"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->sync(Lorg/openjdk/source/tree/Tree;)V

    sget-object v0, Lorg/google/googlejavaformat/java/JavaInputAstVisitor$2;->$SwitchMap$org$openjdk$source$tree$Tree$Kind:[I

    invoke-interface {p1}, Lorg/openjdk/source/tree/Tree;->getKind()Lorg/openjdk/source/tree/Tree$Kind;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x7

    if-eq v0, v1, :cond_0

    iget-object p2, p0, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lorg/google/googlejavaformat/OpsBuilder;

    iget-object p3, p0, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->plusTwo:Lorg/google/googlejavaformat/Indent$Const;

    invoke-virtual {p2, p3}, Lorg/google/googlejavaformat/OpsBuilder;->open(Lorg/google/googlejavaformat/Indent;)V

    iget-object p2, p0, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lorg/google/googlejavaformat/OpsBuilder;

    const-string p3, " "

    invoke-virtual {p2, p3}, Lorg/google/googlejavaformat/OpsBuilder;->breakOp(Ljava/lang/String;)V

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2}, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->scan(Lorg/openjdk/source/tree/Tree;Ljava/lang/Void;)Ljava/lang/Void;

    iget-object p1, p0, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lorg/google/googlejavaformat/OpsBuilder;

    invoke-virtual {p1}, Lorg/google/googlejavaformat/OpsBuilder;->close()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lorg/google/googlejavaformat/OpsBuilder;

    invoke-virtual {v0}, Lorg/google/googlejavaformat/OpsBuilder;->space()V

    check-cast p1, Lorg/openjdk/source/tree/BlockTree;

    invoke-direct {p0, p1, p2, p3, p4}, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->visitBlock(Lorg/openjdk/source/tree/BlockTree;Lorg/google/googlejavaformat/java/JavaInputAstVisitor$CollapseEmptyOrNot;Lorg/google/googlejavaformat/java/JavaInputAstVisitor$AllowLeadingBlankLine;Lorg/google/googlejavaformat/java/JavaInputAstVisitor$AllowTrailingBlankLine;)V

    :goto_0
    return-void
.end method

.method private visitStatements(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "statements"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lorg/openjdk/source/tree/StatementTree;",
            ">;)V"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    invoke-static {p1}, Lcom/google/common/collect/E1;->T(Ljava/util/Iterator;)Lcom/google/common/collect/g2;

    move-result-object p1

    invoke-direct {p0}, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->dropEmptyDeclarations()V

    const/4 v0, 0x1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Lcom/google/common/collect/g2;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/openjdk/source/tree/StatementTree;

    iget-object v2, p0, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lorg/google/googlejavaformat/OpsBuilder;

    invoke-virtual {v2}, Lorg/google/googlejavaformat/OpsBuilder;->forcedBreak()V

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lorg/google/googlejavaformat/OpsBuilder;

    sget-object v2, Lorg/google/googlejavaformat/OpsBuilder$BlankLineWanted;->PRESERVE:Lorg/google/googlejavaformat/OpsBuilder$BlankLineWanted;

    invoke-virtual {v0, v2}, Lorg/google/googlejavaformat/OpsBuilder;->blankLineWanted(Lorg/google/googlejavaformat/OpsBuilder$BlankLineWanted;)V

    :cond_0
    invoke-direct {p0}, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->markForPartialFormat()V

    invoke-direct {p0, p1, v1}, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->variableFragments(Lcom/google/common/collect/g2;Lorg/openjdk/source/tree/Tree;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_1

    sget-object v1, Lorg/google/googlejavaformat/java/JavaInputAstVisitor$DeclarationKind;->NONE:Lorg/google/googlejavaformat/java/JavaInputAstVisitor$DeclarationKind;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/openjdk/source/tree/VariableTree;

    invoke-interface {v2}, Lorg/openjdk/source/tree/VariableTree;->getModifiers()Lorg/openjdk/source/tree/ModifiersTree;

    move-result-object v2

    invoke-direct {p0, v2}, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->canLocalHaveHorizontalAnnotations(Lorg/openjdk/source/tree/ModifiersTree;)Lorg/google/googlejavaformat/java/JavaInputAstVisitor$Direction;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2}, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->visitVariables(Ljava/util/List;Lorg/google/googlejavaformat/java/JavaInputAstVisitor$DeclarationKind;Lorg/google/googlejavaformat/java/JavaInputAstVisitor$Direction;)V

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p0, v1, v0}, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->scan(Lorg/openjdk/source/tree/Tree;Ljava/lang/Void;)Ljava/lang/Void;

    :goto_1
    move v0, v3

    goto :goto_0

    :cond_2
    return-void
.end method

.method private visitThrowsClause(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "thrownExceptionTypes"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lorg/openjdk/source/tree/ExpressionTree;",
            ">;)V"
        }
    .end annotation

    const-string v0, "throws"

    invoke-virtual {p0, v0}, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->token(Ljava/lang/String;)V

    iget-object v0, p0, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lorg/google/googlejavaformat/OpsBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Lorg/google/googlejavaformat/OpsBuilder;->breakToFill(Ljava/lang/String;)V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v0, 0x1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/openjdk/source/tree/ExpressionTree;

    if-nez v0, :cond_0

    const-string v0, ","

    invoke-virtual {p0, v0}, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->token(Ljava/lang/String;)V

    iget-object v0, p0, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lorg/google/googlejavaformat/OpsBuilder;

    invoke-virtual {v0, v1}, Lorg/google/googlejavaformat/OpsBuilder;->breakToFill(Ljava/lang/String;)V

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v2, v0}, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->scan(Lorg/openjdk/source/tree/Tree;Ljava/lang/Void;)Ljava/lang/Void;

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    return-void
.end method

.method private visitToDeclare(Lorg/google/googlejavaformat/java/JavaInputAstVisitor$DeclarationKind;Lorg/google/googlejavaformat/java/JavaInputAstVisitor$Direction;Lorg/openjdk/source/tree/VariableTree;Lw2/C;Ljava/lang/String;Lw2/C;)V
    .locals 13
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "kind",
            "annotationsDirection",
            "node",
            "initializer",
            "equals",
            "trailing"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/google/googlejavaformat/java/JavaInputAstVisitor$DeclarationKind;",
            "Lorg/google/googlejavaformat/java/JavaInputAstVisitor$Direction;",
            "Lorg/openjdk/source/tree/VariableTree;",
            "Lw2/C<",
            "Lorg/openjdk/source/tree/ExpressionTree;",
            ">;",
            "Ljava/lang/String;",
            "Lw2/C<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    move-object v12, p0

    move-object/from16 v0, p3

    invoke-virtual {p0, v0}, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->sync(Lorg/openjdk/source/tree/Tree;)V

    invoke-interface/range {p3 .. p3}, Lorg/openjdk/source/tree/VariableTree;->getModifiers()Lorg/openjdk/source/tree/ModifiersTree;

    move-result-object v1

    invoke-static {v1}, Lw2/C;->f(Ljava/lang/Object;)Lw2/C;

    move-result-object v3

    invoke-interface/range {p3 .. p3}, Lorg/openjdk/source/tree/VariableTree;->getType()Lorg/openjdk/source/tree/Tree;

    move-result-object v4

    invoke-interface/range {p3 .. p3}, Lorg/openjdk/source/tree/VariableTree;->getName()Lorg/openjdk/javax/lang/model/element/Name;

    move-result-object v5

    invoke-static {}, Lw2/C;->a()Lw2/C;

    move-result-object v10

    invoke-static {}, Lw2/C;->a()Lw2/C;

    move-result-object v11

    const-string v6, ""

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object/from16 v7, p5

    move-object/from16 v8, p4

    move-object/from16 v9, p6

    invoke-virtual/range {v0 .. v11}, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->declareOne(Lorg/google/googlejavaformat/java/JavaInputAstVisitor$DeclarationKind;Lorg/google/googlejavaformat/java/JavaInputAstVisitor$Direction;Lw2/C;Lorg/openjdk/source/tree/Tree;Lorg/openjdk/javax/lang/model/element/Name;Ljava/lang/String;Ljava/lang/String;Lw2/C;Lw2/C;Lw2/C;Lw2/C;)I

    return-void
.end method

.method private visitUnionType(Lorg/openjdk/source/tree/VariableTree;)V
    .locals 13
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "declaration"
        }
    .end annotation

    .line 3
    invoke-interface {p1}, Lorg/openjdk/source/tree/VariableTree;->getType()Lorg/openjdk/source/tree/Tree;

    move-result-object v0

    check-cast v0, Lorg/openjdk/source/tree/UnionTypeTree;

    .line 4
    iget-object v1, p0, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lorg/google/googlejavaformat/OpsBuilder;

    sget-object v2, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->ZERO:Lorg/google/googlejavaformat/Indent$Const;

    invoke-virtual {v1, v2}, Lorg/google/googlejavaformat/OpsBuilder;->open(Lorg/google/googlejavaformat/Indent;)V

    .line 5
    invoke-virtual {p0, p1}, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->sync(Lorg/openjdk/source/tree/Tree;)V

    .line 6
    invoke-interface {p1}, Lorg/openjdk/source/tree/VariableTree;->getModifiers()Lorg/openjdk/source/tree/ModifiersTree;

    move-result-object v1

    sget-object v2, Lorg/google/googlejavaformat/java/JavaInputAstVisitor$Direction;->HORIZONTAL:Lorg/google/googlejavaformat/java/JavaInputAstVisitor$Direction;

    .line 7
    invoke-static {}, Lw2/C;->a()Lw2/C;

    move-result-object v3

    .line 8
    invoke-virtual {p0, v1, v2, v3}, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->visitAndBreakModifiers(Lorg/openjdk/source/tree/ModifiersTree;Lorg/google/googlejavaformat/java/JavaInputAstVisitor$Direction;Lw2/C;)V

    .line 9
    invoke-interface {v0}, Lorg/openjdk/source/tree/UnionTypeTree;->getTypeAlternatives()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    move v4, v1

    move v3, v2

    .line 10
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    sub-int/2addr v5, v1

    const-string v6, "|"

    const-string v7, " "

    if-ge v3, v5, :cond_1

    if-nez v4, :cond_0

    .line 11
    iget-object v5, p0, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lorg/google/googlejavaformat/OpsBuilder;

    invoke-virtual {v5, v7}, Lorg/google/googlejavaformat/OpsBuilder;->breakOp(Ljava/lang/String;)V

    .line 12
    invoke-virtual {p0, v6}, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->token(Ljava/lang/String;)V

    .line 13
    iget-object v5, p0, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lorg/google/googlejavaformat/OpsBuilder;

    invoke-virtual {v5}, Lorg/google/googlejavaformat/OpsBuilder;->space()V

    goto :goto_1

    :cond_0
    move v4, v2

    .line 14
    :goto_1
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/openjdk/source/tree/Tree;

    const/4 v6, 0x0

    invoke-virtual {p0, v5, v6}, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->scan(Lorg/openjdk/source/tree/Tree;Ljava/lang/Void;)Ljava/lang/Void;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 15
    :cond_1
    iget-object v2, p0, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lorg/google/googlejavaformat/OpsBuilder;

    invoke-virtual {v2, v7}, Lorg/google/googlejavaformat/OpsBuilder;->breakOp(Ljava/lang/String;)V

    .line 16
    invoke-virtual {p0, v6}, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->token(Ljava/lang/String;)V

    .line 17
    iget-object v2, p0, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lorg/google/googlejavaformat/OpsBuilder;

    invoke-virtual {v2}, Lorg/google/googlejavaformat/OpsBuilder;->space()V

    .line 18
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    sub-int/2addr v2, v1

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Lorg/openjdk/source/tree/Tree;

    .line 19
    sget-object v2, Lorg/google/googlejavaformat/java/JavaInputAstVisitor$DeclarationKind;->NONE:Lorg/google/googlejavaformat/java/JavaInputAstVisitor$DeclarationKind;

    sget-object v3, Lorg/google/googlejavaformat/java/JavaInputAstVisitor$Direction;->HORIZONTAL:Lorg/google/googlejavaformat/java/JavaInputAstVisitor$Direction;

    .line 20
    invoke-static {}, Lw2/C;->a()Lw2/C;

    move-result-object v4

    .line 21
    invoke-interface {p1}, Lorg/openjdk/source/tree/VariableTree;->getName()Lorg/openjdk/javax/lang/model/element/Name;

    move-result-object v6

    .line 22
    invoke-interface {p1}, Lorg/openjdk/source/tree/VariableTree;->getInitializer()Lorg/openjdk/source/tree/ExpressionTree;

    move-result-object p1

    invoke-static {p1}, Lw2/C;->c(Ljava/lang/Object;)Lw2/C;

    move-result-object v9

    .line 23
    invoke-static {}, Lw2/C;->a()Lw2/C;

    move-result-object v10

    .line 24
    invoke-static {}, Lw2/C;->a()Lw2/C;

    move-result-object v11

    .line 25
    invoke-static {}, Lw2/C;->a()Lw2/C;

    move-result-object v12

    .line 26
    const-string v7, ""

    const-string v8, "="

    move-object v1, p0

    invoke-virtual/range {v1 .. v12}, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->declareOne(Lorg/google/googlejavaformat/java/JavaInputAstVisitor$DeclarationKind;Lorg/google/googlejavaformat/java/JavaInputAstVisitor$Direction;Lw2/C;Lorg/openjdk/source/tree/Tree;Lorg/openjdk/javax/lang/model/element/Name;Ljava/lang/String;Ljava/lang/String;Lw2/C;Lw2/C;Lw2/C;Lw2/C;)I

    .line 27
    iget-object p1, p0, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lorg/google/googlejavaformat/OpsBuilder;

    invoke-virtual {p1}, Lorg/google/googlejavaformat/OpsBuilder;->close()V

    return-void
.end method

.method private static walkInfix(ILorg/openjdk/source/tree/ExpressionTree;Ljava/util/List;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "precedence",
            "expression",
            "operands",
            "operators"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lorg/openjdk/source/tree/ExpressionTree;",
            "Ljava/util/List<",
            "Lorg/openjdk/source/tree/ExpressionTree;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    instance-of v0, p1, Lorg/openjdk/source/tree/BinaryTree;

    if-eqz v0, :cond_1

    move-object v0, p1

    check-cast v0, Lorg/openjdk/source/tree/BinaryTree;

    invoke-static {v0}, Lorg/google/googlejavaformat/java/Trees;->precedence(Lorg/openjdk/source/tree/ExpressionTree;)I

    move-result v1

    if-ne v1, p0, :cond_0

    invoke-interface {v0}, Lorg/openjdk/source/tree/BinaryTree;->getLeftOperand()Lorg/openjdk/source/tree/ExpressionTree;

    move-result-object v1

    invoke-static {p0, v1, p2, p3}, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->walkInfix(ILorg/openjdk/source/tree/ExpressionTree;Ljava/util/List;Ljava/util/List;)V

    invoke-static {p1}, Lorg/google/googlejavaformat/java/Trees;->operatorName(Lorg/openjdk/source/tree/ExpressionTree;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {p3, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v0}, Lorg/openjdk/source/tree/BinaryTree;->getRightOperand()Lorg/openjdk/source/tree/ExpressionTree;

    move-result-object p1

    invoke-static {p0, p1, p2, p3}, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->walkInfix(ILorg/openjdk/source/tree/ExpressionTree;Ljava/util/List;Ljava/util/List;)V

    goto :goto_0

    :cond_0
    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_0
    return-void
.end method


# virtual methods
.method public addArguments(Ljava/util/List;Lorg/google/googlejavaformat/Indent;)V
    .locals 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "arguments",
            "plusIndent"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lorg/openjdk/source/tree/ExpressionTree;",
            ">;",
            "Lorg/google/googlejavaformat/Indent;",
            ")V"
        }
    .end annotation

    iget-object v0, p0, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lorg/google/googlejavaformat/OpsBuilder;

    invoke-virtual {v0, p2}, Lorg/google/googlejavaformat/OpsBuilder;->open(Lorg/google/googlejavaformat/Indent;)V

    const-string p2, "("

    invoke-virtual {p0, p2}, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->token(Ljava/lang/String;)V

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_4

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p2

    const/4 v0, 0x2

    rem-int/2addr p2, v0

    const-string v1, " "

    const/4 v2, 0x0

    const-string v3, ","

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-nez p2, :cond_2

    invoke-direct {p0, p1}, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->argumentsAreTabular(Ljava/util/List;)I

    move-result p2

    if-ne p2, v0, :cond_2

    iget-object p2, p0, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lorg/google/googlejavaformat/OpsBuilder;

    invoke-virtual {p2}, Lorg/google/googlejavaformat/OpsBuilder;->forcedBreak()V

    iget-object p2, p0, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lorg/google/googlejavaformat/OpsBuilder;

    sget-object v0, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->ZERO:Lorg/google/googlejavaformat/Indent$Const;

    invoke-virtual {p2, v0}, Lorg/google/googlejavaformat/OpsBuilder;->open(Lorg/google/googlejavaformat/Indent;)V

    move p2, v4

    move v0, v5

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v6

    sub-int/2addr v6, v5

    if-ge p2, v6, :cond_1

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/openjdk/source/tree/ExpressionTree;

    add-int/lit8 v7, p2, 0x1

    invoke-interface {p1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/openjdk/source/tree/ExpressionTree;

    if-nez v0, :cond_0

    invoke-virtual {p0, v3}, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->token(Ljava/lang/String;)V

    iget-object v0, p0, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lorg/google/googlejavaformat/OpsBuilder;

    invoke-virtual {v0}, Lorg/google/googlejavaformat/OpsBuilder;->forcedBreak()V

    :cond_0
    iget-object v0, p0, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lorg/google/googlejavaformat/OpsBuilder;

    iget-object v8, p0, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->plusFour:Lorg/google/googlejavaformat/Indent$Const;

    invoke-virtual {v0, v8}, Lorg/google/googlejavaformat/OpsBuilder;->open(Lorg/google/googlejavaformat/Indent;)V

    invoke-virtual {p0, v6, v2}, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->scan(Lorg/openjdk/source/tree/Tree;Ljava/lang/Void;)Ljava/lang/Void;

    invoke-virtual {p0, v3}, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->token(Ljava/lang/String;)V

    iget-object v0, p0, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lorg/google/googlejavaformat/OpsBuilder;

    invoke-virtual {v0, v1}, Lorg/google/googlejavaformat/OpsBuilder;->breakOp(Ljava/lang/String;)V

    invoke-virtual {p0, v7, v2}, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->scan(Lorg/openjdk/source/tree/Tree;Ljava/lang/Void;)Ljava/lang/Void;

    iget-object v0, p0, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lorg/google/googlejavaformat/OpsBuilder;

    invoke-virtual {v0}, Lorg/google/googlejavaformat/OpsBuilder;->close()V

    add-int/lit8 p2, p2, 0x2

    move v0, v4

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lorg/google/googlejavaformat/OpsBuilder;

    invoke-virtual {p1}, Lorg/google/googlejavaformat/OpsBuilder;->close()V

    goto :goto_1

    :cond_2
    invoke-direct {p0, p1}, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->isFormatMethod(Ljava/util/List;)Z

    move-result p2

    if-eqz p2, :cond_3

    iget-object p2, p0, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lorg/google/googlejavaformat/OpsBuilder;

    invoke-virtual {p2}, Lorg/google/googlejavaformat/OpsBuilder;->breakOp()V

    iget-object p2, p0, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lorg/google/googlejavaformat/OpsBuilder;

    sget-object v0, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->ZERO:Lorg/google/googlejavaformat/Indent$Const;

    invoke-virtual {p2, v0}, Lorg/google/googlejavaformat/OpsBuilder;->open(Lorg/google/googlejavaformat/Indent;)V

    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/openjdk/source/tree/Tree;

    invoke-virtual {p0, p2, v2}, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->scan(Lorg/openjdk/source/tree/Tree;Ljava/lang/Void;)Ljava/lang/Void;

    invoke-virtual {p0, v3}, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->token(Ljava/lang/String;)V

    iget-object p2, p0, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lorg/google/googlejavaformat/OpsBuilder;

    invoke-virtual {p2, v1}, Lorg/google/googlejavaformat/OpsBuilder;->breakOp(Ljava/lang/String;)V

    iget-object p2, p0, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lorg/google/googlejavaformat/OpsBuilder;

    invoke-virtual {p2, v0}, Lorg/google/googlejavaformat/OpsBuilder;->open(Lorg/google/googlejavaformat/Indent;)V

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p2

    invoke-interface {p1, v5, p2}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->argList(Ljava/util/List;)V

    iget-object p1, p0, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lorg/google/googlejavaformat/OpsBuilder;

    invoke-virtual {p1}, Lorg/google/googlejavaformat/OpsBuilder;->close()V

    iget-object p1, p0, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lorg/google/googlejavaformat/OpsBuilder;

    invoke-virtual {p1}, Lorg/google/googlejavaformat/OpsBuilder;->close()V

    goto :goto_1

    :cond_3
    iget-object p2, p0, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lorg/google/googlejavaformat/OpsBuilder;

    invoke-virtual {p2}, Lorg/google/googlejavaformat/OpsBuilder;->breakOp()V

    invoke-direct {p0, p1}, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->argList(Ljava/util/List;)V

    :cond_4
    :goto_1
    const-string p1, ")"

    invoke-virtual {p0, p1}, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->token(Ljava/lang/String;)V

    iget-object p1, p0, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lorg/google/googlejavaformat/OpsBuilder;

    invoke-virtual {p1}, Lorg/google/googlejavaformat/OpsBuilder;->close()V

    return-void
.end method

.method public addBodyDeclarations(Ljava/util/List;Lorg/google/googlejavaformat/java/JavaInputAstVisitor$BracesOrNot;Lorg/google/googlejavaformat/java/JavaInputAstVisitor$FirstDeclarationsOrNot;)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "bodyDeclarations",
            "braces",
            "first0"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lorg/openjdk/source/tree/Tree;",
            ">;",
            "Lorg/google/googlejavaformat/java/JavaInputAstVisitor$BracesOrNot;",
            "Lorg/google/googlejavaformat/java/JavaInputAstVisitor$FirstDeclarationsOrNot;",
            ")V"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const-string v1, "}"

    const-string v2, "{"

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Lorg/google/googlejavaformat/java/JavaInputAstVisitor$BracesOrNot;->isYes()Z

    move-result p1

    if-eqz p1, :cond_9

    iget-object p1, p0, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lorg/google/googlejavaformat/OpsBuilder;

    invoke-virtual {p1}, Lorg/google/googlejavaformat/OpsBuilder;->space()V

    iget-object p1, p0, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->plusTwo:Lorg/google/googlejavaformat/Indent$Const;

    invoke-virtual {p0, v2, p1}, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->tokenBreakTrailingComment(Ljava/lang/String;Lorg/google/googlejavaformat/Indent;)V

    iget-object p1, p0, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lorg/google/googlejavaformat/OpsBuilder;

    sget-object p2, Lorg/google/googlejavaformat/OpsBuilder$BlankLineWanted;->NO:Lorg/google/googlejavaformat/OpsBuilder$BlankLineWanted;

    invoke-virtual {p1, p2}, Lorg/google/googlejavaformat/OpsBuilder;->blankLineWanted(Lorg/google/googlejavaformat/OpsBuilder$BlankLineWanted;)V

    iget-object p1, p0, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lorg/google/googlejavaformat/OpsBuilder;

    sget-object p2, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->ZERO:Lorg/google/googlejavaformat/Indent$Const;

    invoke-virtual {p1, p2}, Lorg/google/googlejavaformat/OpsBuilder;->open(Lorg/google/googlejavaformat/Indent;)V

    iget-object p1, p0, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->plusTwo:Lorg/google/googlejavaformat/Indent$Const;

    invoke-virtual {p0, v1, p1}, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->token(Ljava/lang/String;Lorg/google/googlejavaformat/Indent;)V

    iget-object p1, p0, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lorg/google/googlejavaformat/OpsBuilder;

    invoke-virtual {p1}, Lorg/google/googlejavaformat/OpsBuilder;->close()V

    goto/16 :goto_5

    :cond_0
    invoke-virtual {p2}, Lorg/google/googlejavaformat/java/JavaInputAstVisitor$BracesOrNot;->isYes()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lorg/google/googlejavaformat/OpsBuilder;

    invoke-virtual {v0}, Lorg/google/googlejavaformat/OpsBuilder;->space()V

    iget-object v0, p0, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->plusTwo:Lorg/google/googlejavaformat/Indent$Const;

    invoke-virtual {p0, v2, v0}, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->tokenBreakTrailingComment(Ljava/lang/String;Lorg/google/googlejavaformat/Indent;)V

    iget-object v0, p0, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lorg/google/googlejavaformat/OpsBuilder;

    sget-object v2, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->ZERO:Lorg/google/googlejavaformat/Indent$Const;

    invoke-virtual {v0, v2}, Lorg/google/googlejavaformat/OpsBuilder;->open(Lorg/google/googlejavaformat/Indent;)V

    :cond_1
    iget-object v0, p0, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lorg/google/googlejavaformat/OpsBuilder;

    iget-object v2, p0, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->plusTwo:Lorg/google/googlejavaformat/Indent$Const;

    invoke-virtual {v0, v2}, Lorg/google/googlejavaformat/OpsBuilder;->open(Lorg/google/googlejavaformat/Indent;)V

    invoke-virtual {p3}, Lorg/google/googlejavaformat/java/JavaInputAstVisitor$FirstDeclarationsOrNot;->isYes()Z

    move-result p3

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    invoke-static {p1}, Lcom/google/common/collect/E1;->T(Ljava/util/Iterator;)Lcom/google/common/collect/g2;

    move-result-object p1

    const/4 v0, 0x0

    move v2, v0

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-interface {p1}, Lcom/google/common/collect/g2;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/openjdk/source/tree/Tree;

    invoke-direct {p0}, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->dropEmptyDeclarations()V

    iget-object v4, p0, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lorg/google/googlejavaformat/OpsBuilder;

    invoke-virtual {v4}, Lorg/google/googlejavaformat/OpsBuilder;->forcedBreak()V

    invoke-interface {v3}, Lorg/openjdk/source/tree/Tree;->getKind()Lorg/openjdk/source/tree/Tree$Kind;

    move-result-object v4

    sget-object v5, Lorg/openjdk/source/tree/Tree$Kind;->VARIABLE:Lorg/openjdk/source/tree/Tree$Kind;

    if-ne v4, v5, :cond_3

    invoke-direct {p0, v3}, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->hasJavaDoc(Lorg/openjdk/source/tree/Tree;)Z

    move-result v4

    if-eqz v4, :cond_2

    goto :goto_1

    :cond_2
    move v4, v0

    goto :goto_2

    :cond_3
    :goto_1
    const/4 v4, 0x1

    :goto_2
    if-eqz p3, :cond_4

    iget-object p3, p0, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lorg/google/googlejavaformat/OpsBuilder;

    sget-object v2, Lorg/google/googlejavaformat/OpsBuilder$BlankLineWanted;->PRESERVE:Lorg/google/googlejavaformat/OpsBuilder$BlankLineWanted;

    invoke-virtual {p3, v2}, Lorg/google/googlejavaformat/OpsBuilder;->blankLineWanted(Lorg/google/googlejavaformat/OpsBuilder$BlankLineWanted;)V

    goto :goto_3

    :cond_4
    if-nez p3, :cond_6

    if-nez v4, :cond_5

    if-eqz v2, :cond_6

    :cond_5
    iget-object p3, p0, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lorg/google/googlejavaformat/OpsBuilder;

    sget-object v2, Lorg/google/googlejavaformat/OpsBuilder$BlankLineWanted;->YES:Lorg/google/googlejavaformat/OpsBuilder$BlankLineWanted;

    invoke-virtual {p3, v2}, Lorg/google/googlejavaformat/OpsBuilder;->blankLineWanted(Lorg/google/googlejavaformat/OpsBuilder$BlankLineWanted;)V

    :cond_6
    :goto_3
    invoke-direct {p0}, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->markForPartialFormat()V

    invoke-interface {v3}, Lorg/openjdk/source/tree/Tree;->getKind()Lorg/openjdk/source/tree/Tree$Kind;

    move-result-object p3

    if-ne p3, v5, :cond_7

    invoke-direct {p0, p1, v3}, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->variableFragments(Lcom/google/common/collect/g2;Lorg/openjdk/source/tree/Tree;)Ljava/util/List;

    move-result-object p3

    sget-object v2, Lorg/google/googlejavaformat/java/JavaInputAstVisitor$DeclarationKind;->FIELD:Lorg/google/googlejavaformat/java/JavaInputAstVisitor$DeclarationKind;

    check-cast v3, Lorg/openjdk/source/tree/VariableTree;

    invoke-interface {v3}, Lorg/openjdk/source/tree/VariableTree;->getModifiers()Lorg/openjdk/source/tree/ModifiersTree;

    move-result-object v3

    invoke-direct {p0, v3}, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->fieldAnnotationDirection(Lorg/openjdk/source/tree/ModifiersTree;)Lorg/google/googlejavaformat/java/JavaInputAstVisitor$Direction;

    move-result-object v3

    invoke-virtual {p0, p3, v2, v3}, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->visitVariables(Ljava/util/List;Lorg/google/googlejavaformat/java/JavaInputAstVisitor$DeclarationKind;Lorg/google/googlejavaformat/java/JavaInputAstVisitor$Direction;)V

    goto :goto_4

    :cond_7
    const/4 p3, 0x0

    invoke-virtual {p0, v3, p3}, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->scan(Lorg/openjdk/source/tree/Tree;Ljava/lang/Void;)Ljava/lang/Void;

    :goto_4
    move p3, v0

    move v2, v4

    goto :goto_0

    :cond_8
    invoke-direct {p0}, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->dropEmptyDeclarations()V

    iget-object p1, p0, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lorg/google/googlejavaformat/OpsBuilder;

    invoke-virtual {p1}, Lorg/google/googlejavaformat/OpsBuilder;->forcedBreak()V

    iget-object p1, p0, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lorg/google/googlejavaformat/OpsBuilder;

    invoke-virtual {p1}, Lorg/google/googlejavaformat/OpsBuilder;->close()V

    iget-object p1, p0, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lorg/google/googlejavaformat/OpsBuilder;

    invoke-virtual {p1}, Lorg/google/googlejavaformat/OpsBuilder;->forcedBreak()V

    invoke-direct {p0}, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->markForPartialFormat()V

    invoke-virtual {p2}, Lorg/google/googlejavaformat/java/JavaInputAstVisitor$BracesOrNot;->isYes()Z

    move-result p1

    if-eqz p1, :cond_9

    iget-object p1, p0, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lorg/google/googlejavaformat/OpsBuilder;

    sget-object p2, Lorg/google/googlejavaformat/OpsBuilder$BlankLineWanted;->NO:Lorg/google/googlejavaformat/OpsBuilder$BlankLineWanted;

    invoke-virtual {p1, p2}, Lorg/google/googlejavaformat/OpsBuilder;->blankLineWanted(Lorg/google/googlejavaformat/OpsBuilder$BlankLineWanted;)V

    iget-object p1, p0, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->plusTwo:Lorg/google/googlejavaformat/Indent$Const;

    invoke-virtual {p0, v1, p1}, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->token(Ljava/lang/String;Lorg/google/googlejavaformat/Indent;)V

    iget-object p1, p0, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lorg/google/googlejavaformat/OpsBuilder;

    invoke-virtual {p1}, Lorg/google/googlejavaformat/OpsBuilder;->close()V

    :cond_9
    :goto_5
    return-void
.end method

.method public addTypeArguments(Ljava/util/List;Lorg/google/googlejavaformat/Indent;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "typeArguments",
            "plusIndent"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lorg/openjdk/source/tree/Tree;",
            ">;",
            "Lorg/google/googlejavaformat/Indent;",
            ")V"
        }
    .end annotation

    if-eqz p1, :cond_3

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    const-string v0, "<"

    invoke-virtual {p0, v0}, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->token(Ljava/lang/String;)V

    iget-object v0, p0, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lorg/google/googlejavaformat/OpsBuilder;

    invoke-virtual {v0, p2}, Lorg/google/googlejavaformat/OpsBuilder;->open(Lorg/google/googlejavaformat/Indent;)V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 p2, 0x1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/openjdk/source/tree/Tree;

    if-nez p2, :cond_1

    const-string p2, ","

    invoke-virtual {p0, p2}, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->token(Ljava/lang/String;)V

    iget-object p2, p0, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lorg/google/googlejavaformat/OpsBuilder;

    const-string v1, " "

    invoke-virtual {p2, v1}, Lorg/google/googlejavaformat/OpsBuilder;->breakToFill(Ljava/lang/String;)V

    :cond_1
    const/4 p2, 0x0

    invoke-virtual {p0, v0, p2}, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->scan(Lorg/openjdk/source/tree/Tree;Ljava/lang/Void;)Ljava/lang/Void;

    const/4 p2, 0x0

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lorg/google/googlejavaformat/OpsBuilder;

    invoke-virtual {p1}, Lorg/google/googlejavaformat/OpsBuilder;->close()V

    const-string p1, ">"

    invoke-virtual {p0, p1}, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->token(Ljava/lang/String;)V

    :cond_3
    :goto_1
    return-void
.end method

.method public declareOne(Lorg/google/googlejavaformat/java/JavaInputAstVisitor$DeclarationKind;Lorg/google/googlejavaformat/java/JavaInputAstVisitor$Direction;Lw2/C;Lorg/openjdk/source/tree/Tree;Lorg/openjdk/javax/lang/model/element/Name;Ljava/lang/String;Ljava/lang/String;Lw2/C;Lw2/C;Lw2/C;Lw2/C;)I
    .locals 12
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "kind",
            "annotationsDirection",
            "modifiers",
            "type",
            "name",
            "op",
            "equals",
            "initializer",
            "trailing",
            "receiverExpression",
            "typeWithDims"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/google/googlejavaformat/java/JavaInputAstVisitor$DeclarationKind;",
            "Lorg/google/googlejavaformat/java/JavaInputAstVisitor$Direction;",
            "Lw2/C<",
            "Lorg/openjdk/source/tree/ModifiersTree;",
            ">;",
            "Lorg/openjdk/source/tree/Tree;",
            "Lorg/openjdk/javax/lang/model/element/Name;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lw2/C<",
            "Lorg/openjdk/source/tree/ExpressionTree;",
            ">;",
            "Lw2/C<",
            "Ljava/lang/String;",
            ">;",
            "Lw2/C<",
            "Lorg/openjdk/source/tree/ExpressionTree;",
            ">;",
            "Lw2/C<",
            "Lorg/google/googlejavaformat/java/DimensionHelpers$TypeWithDims;",
            ">;)I"
        }
    .end annotation

    move-object v0, p0

    move-object v1, p1

    move-object/from16 v2, p4

    invoke-virtual {p0}, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->genSym()Lorg/google/googlejavaformat/Output$BreakTag;

    move-result-object v3

    invoke-virtual {p0}, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->genSym()Lorg/google/googlejavaformat/Output$BreakTag;

    move-result-object v4

    sget-object v5, Lorg/google/googlejavaformat/java/JavaInputAstVisitor$DeclarationKind;->FIELD:Lorg/google/googlejavaformat/java/JavaInputAstVisitor$DeclarationKind;

    const/4 v6, 0x0

    if-ne v1, v5, :cond_0

    const/4 v5, 0x1

    goto :goto_0

    :cond_0
    move v5, v6

    :goto_0
    if-eqz v5, :cond_1

    iget-object v7, v0, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lorg/google/googlejavaformat/OpsBuilder;

    invoke-static {v4}, Lorg/google/googlejavaformat/OpsBuilder$BlankLineWanted;->conditional(Lorg/google/googlejavaformat/Output$BreakTag;)Lorg/google/googlejavaformat/OpsBuilder$BlankLineWanted;

    move-result-object v8

    invoke-virtual {v7, v8}, Lorg/google/googlejavaformat/OpsBuilder;->blankLineWanted(Lorg/google/googlejavaformat/OpsBuilder$BlankLineWanted;)V

    :cond_1
    new-instance v7, Ljava/util/ArrayDeque;

    invoke-virtual/range {p11 .. p11}, Lw2/C;->e()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-virtual/range {p11 .. p11}, Lw2/C;->d()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/google/googlejavaformat/java/DimensionHelpers$TypeWithDims;

    iget-object v8, v8, Lorg/google/googlejavaformat/java/DimensionHelpers$TypeWithDims;->dims:Lcom/google/common/collect/g1;

    goto :goto_1

    :cond_2
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v8

    :goto_1
    invoke-direct {v7, v8}, Ljava/util/ArrayDeque;-><init>(Ljava/util/Collection;)V

    iget-object v8, v0, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lorg/google/googlejavaformat/OpsBuilder;

    sget-object v9, Lorg/google/googlejavaformat/java/JavaInputAstVisitor$DeclarationKind;->PARAMETER:Lorg/google/googlejavaformat/java/JavaInputAstVisitor$DeclarationKind;

    if-ne v1, v9, :cond_3

    invoke-virtual {p3}, Lw2/C;->e()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {p3}, Lw2/C;->d()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/openjdk/source/tree/ModifiersTree;

    invoke-interface {v1}, Lorg/openjdk/source/tree/ModifiersTree;->getAnnotations()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, v0, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->plusFour:Lorg/google/googlejavaformat/Indent$Const;

    goto :goto_2

    :cond_3
    sget-object v1, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->ZERO:Lorg/google/googlejavaformat/Indent$Const;

    :goto_2
    invoke-virtual {v8, v1}, Lorg/google/googlejavaformat/OpsBuilder;->open(Lorg/google/googlejavaformat/Indent;)V

    invoke-virtual {p3}, Lw2/C;->e()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {p3}, Lw2/C;->d()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/openjdk/source/tree/ModifiersTree;

    invoke-static {v4}, Lw2/C;->f(Ljava/lang/Object;)Lw2/C;

    move-result-object v8

    move-object v9, p2

    invoke-virtual {p0, v1, p2, v8}, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->visitAndBreakModifiers(Lorg/openjdk/source/tree/ModifiersTree;Lorg/google/googlejavaformat/java/JavaInputAstVisitor$Direction;Lw2/C;)V

    :cond_4
    iget-object v1, v0, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lorg/google/googlejavaformat/OpsBuilder;

    if-eqz v2, :cond_5

    iget-object v8, v0, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->plusFour:Lorg/google/googlejavaformat/Indent$Const;

    goto :goto_3

    :cond_5
    sget-object v8, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->ZERO:Lorg/google/googlejavaformat/Indent$Const;

    :goto_3
    invoke-virtual {v1, v8}, Lorg/google/googlejavaformat/OpsBuilder;->open(Lorg/google/googlejavaformat/Indent;)V

    iget-object v1, v0, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lorg/google/googlejavaformat/OpsBuilder;

    sget-object v8, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->ZERO:Lorg/google/googlejavaformat/Indent$Const;

    invoke-virtual {v1, v8}, Lorg/google/googlejavaformat/OpsBuilder;->open(Lorg/google/googlejavaformat/Indent;)V

    iget-object v1, v0, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lorg/google/googlejavaformat/OpsBuilder;

    invoke-virtual {v1, v8}, Lorg/google/googlejavaformat/OpsBuilder;->open(Lorg/google/googlejavaformat/Indent;)V

    invoke-virtual/range {p11 .. p11}, Lw2/C;->e()Z

    move-result v1

    const/4 v9, 0x0

    if-eqz v1, :cond_6

    invoke-virtual/range {p11 .. p11}, Lw2/C;->d()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/google/googlejavaformat/java/DimensionHelpers$TypeWithDims;

    iget-object v1, v1, Lorg/google/googlejavaformat/java/DimensionHelpers$TypeWithDims;->node:Lorg/openjdk/source/tree/Tree;

    if-eqz v1, :cond_6

    invoke-virtual/range {p11 .. p11}, Lw2/C;->d()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/google/googlejavaformat/java/DimensionHelpers$TypeWithDims;

    iget-object v1, v1, Lorg/google/googlejavaformat/java/DimensionHelpers$TypeWithDims;->node:Lorg/openjdk/source/tree/Tree;

    invoke-virtual {p0, v1, v9}, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->scan(Lorg/openjdk/source/tree/Tree;Ljava/lang/Void;)Ljava/lang/Void;

    invoke-interface {v7}, Ljava/util/Deque;->size()I

    move-result v1

    iget-object v6, v0, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lorg/google/googlejavaformat/OpsBuilder;

    iget-object v10, v0, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->plusFour:Lorg/google/googlejavaformat/Indent$Const;

    invoke-virtual {v6, v10}, Lorg/google/googlejavaformat/OpsBuilder;->open(Lorg/google/googlejavaformat/Indent;)V

    invoke-direct {p0, v7}, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->maybeAddDims(Ljava/util/Deque;)V

    iget-object v6, v0, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lorg/google/googlejavaformat/OpsBuilder;

    invoke-virtual {v6}, Lorg/google/googlejavaformat/OpsBuilder;->close()V

    invoke-interface {v7}, Ljava/util/Deque;->size()I

    move-result v6

    sub-int v6, v1, v6

    goto :goto_4

    :cond_6
    invoke-virtual {p0, v2, v9}, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->scan(Lorg/openjdk/source/tree/Tree;Ljava/lang/Void;)Ljava/lang/Void;

    :goto_4
    iget-object v1, v0, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lorg/google/googlejavaformat/OpsBuilder;

    invoke-virtual {v1}, Lorg/google/googlejavaformat/OpsBuilder;->close()V

    const-string v1, " "

    if-eqz v2, :cond_7

    iget-object v2, v0, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lorg/google/googlejavaformat/OpsBuilder;

    sget-object v10, Lorg/google/googlejavaformat/Doc$FillMode;->INDEPENDENT:Lorg/google/googlejavaformat/Doc$FillMode;

    invoke-static {v3}, Lw2/C;->f(Ljava/lang/Object;)Lw2/C;

    move-result-object v11

    invoke-virtual {v2, v10, v1, v8, v11}, Lorg/google/googlejavaformat/OpsBuilder;->breakOp(Lorg/google/googlejavaformat/Doc$FillMode;Ljava/lang/String;Lorg/google/googlejavaformat/Indent;Lw2/C;)V

    :cond_7
    iget-object v2, v0, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lorg/google/googlejavaformat/OpsBuilder;

    iget-object v10, v0, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->plusFour:Lorg/google/googlejavaformat/Indent$Const;

    invoke-static {v3, v10, v8}, Lorg/google/googlejavaformat/Indent$If;->make(Lorg/google/googlejavaformat/Output$BreakTag;Lorg/google/googlejavaformat/Indent;Lorg/google/googlejavaformat/Indent;)Lorg/google/googlejavaformat/Indent$If;

    move-result-object v10

    invoke-virtual {v2, v10}, Lorg/google/googlejavaformat/OpsBuilder;->open(Lorg/google/googlejavaformat/Indent;)V

    invoke-virtual/range {p10 .. p10}, Lw2/C;->e()Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-virtual/range {p10 .. p10}, Lw2/C;->d()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/openjdk/source/tree/Tree;

    invoke-virtual {p0, v2, v9}, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->scan(Lorg/openjdk/source/tree/Tree;Ljava/lang/Void;)Ljava/lang/Void;

    goto :goto_5

    :cond_8
    move-object/from16 v2, p5

    invoke-virtual {p0, v2}, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->visit(Lorg/openjdk/javax/lang/model/element/Name;)Z

    :goto_5
    iget-object v2, v0, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lorg/google/googlejavaformat/OpsBuilder;

    move-object/from16 v10, p6

    invoke-virtual {v2, v10}, Lorg/google/googlejavaformat/OpsBuilder;->op(Ljava/lang/String;)V

    invoke-direct {p0, v7}, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->maybeAddDims(Ljava/util/Deque;)V

    iget-object v2, v0, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lorg/google/googlejavaformat/OpsBuilder;

    invoke-virtual {v2}, Lorg/google/googlejavaformat/OpsBuilder;->close()V

    iget-object v2, v0, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lorg/google/googlejavaformat/OpsBuilder;

    invoke-virtual {v2}, Lorg/google/googlejavaformat/OpsBuilder;->close()V

    invoke-virtual/range {p8 .. p8}, Lw2/C;->e()Z

    move-result v2

    if-eqz v2, :cond_a

    iget-object v2, v0, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lorg/google/googlejavaformat/OpsBuilder;

    invoke-virtual {v2}, Lorg/google/googlejavaformat/OpsBuilder;->space()V

    move-object/from16 v2, p7

    invoke-virtual {p0, v2}, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->token(Ljava/lang/String;)V

    invoke-virtual/range {p8 .. p8}, Lw2/C;->d()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/openjdk/source/tree/ExpressionTree;

    invoke-interface {v2}, Lorg/openjdk/source/tree/Tree;->getKind()Lorg/openjdk/source/tree/Tree$Kind;

    move-result-object v2

    sget-object v7, Lorg/openjdk/source/tree/Tree$Kind;->NEW_ARRAY:Lorg/openjdk/source/tree/Tree$Kind;

    if-ne v2, v7, :cond_9

    invoke-virtual/range {p8 .. p8}, Lw2/C;->d()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/openjdk/source/tree/NewArrayTree;

    invoke-interface {v2}, Lorg/openjdk/source/tree/NewArrayTree;->getType()Lorg/openjdk/source/tree/Tree;

    move-result-object v2

    if-nez v2, :cond_9

    iget-object v1, v0, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lorg/google/googlejavaformat/OpsBuilder;

    iget-object v2, v0, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->minusFour:Lorg/google/googlejavaformat/Indent$Const;

    invoke-virtual {v1, v2}, Lorg/google/googlejavaformat/OpsBuilder;->open(Lorg/google/googlejavaformat/Indent;)V

    iget-object v1, v0, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lorg/google/googlejavaformat/OpsBuilder;

    invoke-virtual {v1}, Lorg/google/googlejavaformat/OpsBuilder;->space()V

    invoke-virtual/range {p8 .. p8}, Lw2/C;->d()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/openjdk/source/tree/ExpressionTree;

    invoke-interface {v1, p0, v9}, Lorg/openjdk/source/tree/Tree;->accept(Lorg/openjdk/source/tree/TreeVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lorg/google/googlejavaformat/OpsBuilder;

    invoke-virtual {v1}, Lorg/google/googlejavaformat/OpsBuilder;->close()V

    goto :goto_6

    :cond_9
    iget-object v2, v0, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lorg/google/googlejavaformat/OpsBuilder;

    iget-object v7, v0, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->plusFour:Lorg/google/googlejavaformat/Indent$Const;

    invoke-static {v3, v7, v8}, Lorg/google/googlejavaformat/Indent$If;->make(Lorg/google/googlejavaformat/Output$BreakTag;Lorg/google/googlejavaformat/Indent;Lorg/google/googlejavaformat/Indent;)Lorg/google/googlejavaformat/Indent$If;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/google/googlejavaformat/OpsBuilder;->open(Lorg/google/googlejavaformat/Indent;)V

    iget-object v2, v0, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lorg/google/googlejavaformat/OpsBuilder;

    invoke-virtual {v2, v1}, Lorg/google/googlejavaformat/OpsBuilder;->breakToFill(Ljava/lang/String;)V

    invoke-virtual/range {p8 .. p8}, Lw2/C;->d()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/openjdk/source/tree/Tree;

    invoke-virtual {p0, v1, v9}, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->scan(Lorg/openjdk/source/tree/Tree;Ljava/lang/Void;)Ljava/lang/Void;

    iget-object v1, v0, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lorg/google/googlejavaformat/OpsBuilder;

    invoke-virtual {v1}, Lorg/google/googlejavaformat/OpsBuilder;->close()V

    :cond_a
    :goto_6
    invoke-virtual/range {p9 .. p9}, Lw2/C;->e()Z

    move-result v1

    if-eqz v1, :cond_b

    iget-object v1, v0, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lorg/google/googlejavaformat/OpsBuilder;

    invoke-virtual {v1}, Lorg/google/googlejavaformat/OpsBuilder;->peekToken()Lw2/C;

    move-result-object v1

    move-object/from16 v2, p9

    invoke-virtual {v1, v2}, Lw2/C;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    iget-object v1, v0, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lorg/google/googlejavaformat/OpsBuilder;

    invoke-virtual/range {p9 .. p9}, Lw2/C;->d()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v2}, Lorg/google/googlejavaformat/OpsBuilder;->guessToken(Ljava/lang/String;)V

    :cond_b
    iget-object v1, v0, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lorg/google/googlejavaformat/OpsBuilder;

    invoke-virtual {v1}, Lorg/google/googlejavaformat/OpsBuilder;->close()V

    iget-object v1, v0, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lorg/google/googlejavaformat/OpsBuilder;

    invoke-virtual {v1}, Lorg/google/googlejavaformat/OpsBuilder;->close()V

    if-eqz v5, :cond_c

    iget-object v1, v0, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lorg/google/googlejavaformat/OpsBuilder;

    invoke-static {v4}, Lorg/google/googlejavaformat/OpsBuilder$BlankLineWanted;->conditional(Lorg/google/googlejavaformat/Output$BreakTag;)Lorg/google/googlejavaformat/OpsBuilder$BlankLineWanted;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/google/googlejavaformat/OpsBuilder;->blankLineWanted(Lorg/google/googlejavaformat/OpsBuilder$BlankLineWanted;)V

    :cond_c
    return v6
.end method

.method public final genSym()Lorg/google/googlejavaformat/Output$BreakTag;
    .locals 1

    new-instance v0, Lorg/google/googlejavaformat/Output$BreakTag;

    invoke-direct {v0}, Lorg/google/googlejavaformat/Output$BreakTag;-><init>()V

    return-object v0
.end method

.method public nextIsModifier()Z
    .locals 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-object v2, p0, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lorg/google/googlejavaformat/OpsBuilder;

    invoke-virtual {v2}, Lorg/google/googlejavaformat/OpsBuilder;->peekToken()Lw2/C;

    move-result-object v2

    invoke-virtual {v2}, Lw2/C;->d()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    const/4 v3, -0x1

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v4

    sparse-switch v4, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v4, "strictfp"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    goto/16 :goto_0

    :cond_0
    const/16 v3, 0xb

    goto/16 :goto_0

    :sswitch_1
    const-string v4, "abstract"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    goto/16 :goto_0

    :cond_1
    const/16 v3, 0xa

    goto/16 :goto_0

    :sswitch_2
    const-string v4, "default"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    goto/16 :goto_0

    :cond_2
    const/16 v3, 0x9

    goto/16 :goto_0

    :sswitch_3
    const-string v4, "transient"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    goto/16 :goto_0

    :cond_3
    const/16 v3, 0x8

    goto/16 :goto_0

    :sswitch_4
    const-string v4, "final"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    goto :goto_0

    :cond_4
    const/4 v3, 0x7

    goto :goto_0

    :sswitch_5
    const-string v4, "private"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    goto :goto_0

    :cond_5
    const/4 v3, 0x6

    goto :goto_0

    :sswitch_6
    const-string v4, "protected"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    goto :goto_0

    :cond_6
    const/4 v3, 0x5

    goto :goto_0

    :sswitch_7
    const-string v4, "static"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    goto :goto_0

    :cond_7
    const/4 v3, 0x4

    goto :goto_0

    :sswitch_8
    const-string v4, "public"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    goto :goto_0

    :cond_8
    const/4 v3, 0x3

    goto :goto_0

    :sswitch_9
    const-string v4, "native"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9

    goto :goto_0

    :cond_9
    const/4 v3, 0x2

    goto :goto_0

    :sswitch_a
    const-string v4, "synchronized"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_a

    goto :goto_0

    :cond_a
    move v3, v0

    goto :goto_0

    :sswitch_b
    const-string v4, "volatile"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_b

    goto :goto_0

    :cond_b
    move v3, v1

    :goto_0
    packed-switch v3, :pswitch_data_0

    return v1

    :pswitch_0
    return v0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x70890264 -> :sswitch_b
        -0x576a7aec -> :sswitch_a
        -0x3ebdafe9 -> :sswitch_9
        -0x3a424d97 -> :sswitch_8
        -0x35323192 -> :sswitch_7
        -0x24459452 -> :sswitch_6
        -0x12beda7d -> :sswitch_5
        0x5cec176 -> :sswitch_4
        0x3ebfa28a -> :sswitch_3
        0x5c13d641 -> :sswitch_2
        0x6749f022 -> :sswitch_1
        0x6af8dd53 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public bridge synthetic scan(Lorg/openjdk/source/tree/Tree;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            "tree",
            "unused"
        }
    .end annotation

    .line 1
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->scan(Lorg/openjdk/source/tree/Tree;Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public scan(Lorg/openjdk/source/tree/Tree;Ljava/lang/Void;)Ljava/lang/Void;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "tree",
            "unused"
        }
    .end annotation

    .line 2
    iget-object p2, p0, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->inExpression:Ljava/util/Deque;

    instance-of v0, p1, Lorg/openjdk/source/tree/ExpressionTree;

    if-nez v0, :cond_1

    invoke-interface {p2}, Ljava/util/Deque;->peekLast()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/Deque;->addLast(Ljava/lang/Object;)V

    .line 3
    iget-object p2, p0, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lorg/google/googlejavaformat/OpsBuilder;

    invoke-virtual {p2}, Lorg/google/googlejavaformat/OpsBuilder;->depth()I

    move-result p2

    const/4 v0, 0x0

    .line 4
    :try_start_0
    invoke-super {p0, p1, v0}, Lorg/openjdk/source/util/TreePathScanner;->scan(Lorg/openjdk/source/tree/Tree;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Lorg/google/googlejavaformat/FormattingError; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    iget-object p1, p0, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->inExpression:Ljava/util/Deque;

    invoke-interface {p1}, Ljava/util/Deque;->removeLast()Ljava/lang/Object;

    .line 6
    iget-object p1, p0, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lorg/google/googlejavaformat/OpsBuilder;

    invoke-virtual {p1, p2}, Lorg/google/googlejavaformat/OpsBuilder;->checkClosed(I)V

    return-object v0

    :catchall_0
    move-exception p1

    .line 7
    :try_start_1
    new-instance p2, Lorg/google/googlejavaformat/FormattingError;

    iget-object v0, p0, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lorg/google/googlejavaformat/OpsBuilder;

    invoke-static {p1}, Lw2/T;->l(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/google/googlejavaformat/OpsBuilder;->diagnostic(Ljava/lang/String;)Lorg/google/googlejavaformat/FormatterDiagnostic;

    move-result-object p1

    invoke-direct {p2, p1}, Lorg/google/googlejavaformat/FormattingError;-><init>(Lorg/google/googlejavaformat/FormatterDiagnostic;)V

    throw p2

    :catchall_1
    move-exception p1

    goto :goto_2

    :catch_0
    move-exception p1

    .line 8
    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 9
    :goto_2
    iget-object p2, p0, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->inExpression:Ljava/util/Deque;

    invoke-interface {p2}, Ljava/util/Deque;->removeLast()Ljava/lang/Object;

    .line 10
    throw p1
.end method

.method public final sync(Lorg/openjdk/source/tree/Tree;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "node"
        }
    .end annotation

    iget-object v0, p0, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lorg/google/googlejavaformat/OpsBuilder;

    check-cast p1, Lorg/openjdk/tools/javac/tree/JCTree;

    invoke-virtual {p1}, Lorg/openjdk/tools/javac/tree/JCTree;->getStartPosition()I

    move-result p1

    invoke-virtual {v0, p1}, Lorg/google/googlejavaformat/OpsBuilder;->sync(I)V

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    invoke-static {p0}, Lw2/z;->c(Ljava/lang/Object;)Lw2/z$b;

    move-result-object v0

    const-string v1, "builder"

    iget-object v2, p0, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lorg/google/googlejavaformat/OpsBuilder;

    invoke-virtual {v0, v1, v2}, Lw2/z$b;->f(Ljava/lang/String;Ljava/lang/Object;)Lw2/z$b;

    move-result-object v0

    invoke-virtual {v0}, Lw2/z$b;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final token(Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "token"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lorg/google/googlejavaformat/OpsBuilder;

    sget-object v1, Lorg/google/googlejavaformat/Doc$Token$RealOrImaginary;->REAL:Lorg/google/googlejavaformat/Doc$Token$RealOrImaginary;

    sget-object v2, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->ZERO:Lorg/google/googlejavaformat/Indent$Const;

    .line 2
    invoke-static {}, Lw2/C;->a()Lw2/C;

    move-result-object v3

    .line 3
    invoke-virtual {v0, p1, v1, v2, v3}, Lorg/google/googlejavaformat/OpsBuilder;->token(Ljava/lang/String;Lorg/google/googlejavaformat/Doc$Token$RealOrImaginary;Lorg/google/googlejavaformat/Indent;Lw2/C;)V

    return-void
.end method

.method public final token(Ljava/lang/String;Lorg/google/googlejavaformat/Indent;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "token",
            "plusIndentCommentsBefore"
        }
    .end annotation

    .line 4
    iget-object v0, p0, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lorg/google/googlejavaformat/OpsBuilder;

    sget-object v1, Lorg/google/googlejavaformat/Doc$Token$RealOrImaginary;->REAL:Lorg/google/googlejavaformat/Doc$Token$RealOrImaginary;

    .line 5
    invoke-static {}, Lw2/C;->a()Lw2/C;

    move-result-object v2

    .line 6
    invoke-virtual {v0, p1, v1, p2, v2}, Lorg/google/googlejavaformat/OpsBuilder;->token(Ljava/lang/String;Lorg/google/googlejavaformat/Doc$Token$RealOrImaginary;Lorg/google/googlejavaformat/Indent;Lw2/C;)V

    return-void
.end method

.method public final tokenBreakTrailingComment(Ljava/lang/String;Lorg/google/googlejavaformat/Indent;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "token",
            "breakAndIndentTrailingComment"
        }
    .end annotation

    iget-object v0, p0, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lorg/google/googlejavaformat/OpsBuilder;

    sget-object v1, Lorg/google/googlejavaformat/Doc$Token$RealOrImaginary;->REAL:Lorg/google/googlejavaformat/Doc$Token$RealOrImaginary;

    sget-object v2, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->ZERO:Lorg/google/googlejavaformat/Indent$Const;

    invoke-static {p2}, Lw2/C;->f(Ljava/lang/Object;)Lw2/C;

    move-result-object p2

    invoke-virtual {v0, p1, v1, v2, p2}, Lorg/google/googlejavaformat/OpsBuilder;->token(Ljava/lang/String;Lorg/google/googlejavaformat/Doc$Token$RealOrImaginary;Lorg/google/googlejavaformat/Indent;Lw2/C;)V

    return-void
.end method

.method public visit(Lorg/openjdk/javax/lang/model/element/Name;)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "name"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->token(Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1
.end method

.method public visitAndBreakModifiers(Lorg/openjdk/source/tree/ModifiersTree;Lorg/google/googlejavaformat/java/JavaInputAstVisitor$Direction;Lw2/C;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "modifiers",
            "annotationDirection",
            "declarationAnnotationBreak"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/source/tree/ModifiersTree;",
            "Lorg/google/googlejavaformat/java/JavaInputAstVisitor$Direction;",
            "Lw2/C<",
            "Lorg/google/googlejavaformat/Output$BreakTag;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lorg/google/googlejavaformat/OpsBuilder;

    invoke-direct {p0, p1, p2, p3}, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->visitModifiers(Lorg/openjdk/source/tree/ModifiersTree;Lorg/google/googlejavaformat/java/JavaInputAstVisitor$Direction;Lw2/C;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/google/googlejavaformat/OpsBuilder;->addAll(Ljava/util/List;)V

    return-void
.end method

.method public bridge synthetic visitAnnotatedType(Lorg/openjdk/source/tree/AnnotatedTypeTree;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            "node",
            "unused"
        }
    .end annotation

    .line 1
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->visitAnnotatedType(Lorg/openjdk/source/tree/AnnotatedTypeTree;Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public visitAnnotatedType(Lorg/openjdk/source/tree/AnnotatedTypeTree;Ljava/lang/Void;)Ljava/lang/Void;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "node",
            "unused"
        }
    .end annotation

    .line 2
    invoke-virtual {p0, p1}, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->sync(Lorg/openjdk/source/tree/Tree;)V

    .line 3
    invoke-interface {p1}, Lorg/openjdk/source/tree/AnnotatedTypeTree;->getUnderlyingType()Lorg/openjdk/source/tree/ExpressionTree;

    move-result-object p2

    .line 4
    instance-of v0, p2, Lorg/openjdk/source/tree/MemberSelectTree;

    const-string v1, " "

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 5
    check-cast p2, Lorg/openjdk/source/tree/MemberSelectTree;

    .line 6
    invoke-interface {p2}, Lorg/openjdk/source/tree/MemberSelectTree;->getExpression()Lorg/openjdk/source/tree/ExpressionTree;

    move-result-object v0

    invoke-virtual {p0, v0, v2}, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->scan(Lorg/openjdk/source/tree/Tree;Ljava/lang/Void;)Ljava/lang/Void;

    .line 7
    const-string v0, "."

    invoke-virtual {p0, v0}, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->token(Ljava/lang/String;)V

    .line 8
    invoke-interface {p1}, Lorg/openjdk/source/tree/AnnotatedTypeTree;->getAnnotations()Ljava/util/List;

    move-result-object p1

    sget-object v0, Lorg/google/googlejavaformat/java/JavaInputAstVisitor$BreakOrNot;->NO:Lorg/google/googlejavaformat/java/JavaInputAstVisitor$BreakOrNot;

    invoke-virtual {p0, p1, v0, v0}, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->visitAnnotations(Ljava/util/List;Lorg/google/googlejavaformat/java/JavaInputAstVisitor$BreakOrNot;Lorg/google/googlejavaformat/java/JavaInputAstVisitor$BreakOrNot;)V

    .line 9
    iget-object p1, p0, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lorg/google/googlejavaformat/OpsBuilder;

    invoke-virtual {p1, v1}, Lorg/google/googlejavaformat/OpsBuilder;->breakToFill(Ljava/lang/String;)V

    .line 10
    invoke-interface {p2}, Lorg/openjdk/source/tree/MemberSelectTree;->getIdentifier()Lorg/openjdk/javax/lang/model/element/Name;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->visit(Lorg/openjdk/javax/lang/model/element/Name;)Z

    goto :goto_0

    .line 11
    :cond_0
    instance-of v0, p2, Lorg/openjdk/source/tree/ArrayTypeTree;

    if-eqz v0, :cond_1

    .line 12
    invoke-direct {p0, p1}, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->visitAnnotatedArrayType(Lorg/openjdk/source/tree/Tree;)V

    goto :goto_0

    .line 13
    :cond_1
    invoke-interface {p1}, Lorg/openjdk/source/tree/AnnotatedTypeTree;->getAnnotations()Ljava/util/List;

    move-result-object p1

    sget-object v0, Lorg/google/googlejavaformat/java/JavaInputAstVisitor$BreakOrNot;->NO:Lorg/google/googlejavaformat/java/JavaInputAstVisitor$BreakOrNot;

    invoke-virtual {p0, p1, v0, v0}, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->visitAnnotations(Ljava/util/List;Lorg/google/googlejavaformat/java/JavaInputAstVisitor$BreakOrNot;Lorg/google/googlejavaformat/java/JavaInputAstVisitor$BreakOrNot;)V

    .line 14
    iget-object p1, p0, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lorg/google/googlejavaformat/OpsBuilder;

    invoke-virtual {p1, v1}, Lorg/google/googlejavaformat/OpsBuilder;->breakToFill(Ljava/lang/String;)V

    .line 15
    invoke-virtual {p0, p2, v2}, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->scan(Lorg/openjdk/source/tree/Tree;Ljava/lang/Void;)Ljava/lang/Void;

    :goto_0
    return-object v2
.end method

.method public bridge synthetic visitAnnotation(Lorg/openjdk/source/tree/AnnotationTree;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            "node",
            "unused"
        }
    .end annotation

    .line 1
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->visitAnnotation(Lorg/openjdk/source/tree/AnnotationTree;Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public visitAnnotation(Lorg/openjdk/source/tree/AnnotationTree;Ljava/lang/Void;)Ljava/lang/Void;
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "node",
            "unused"
        }
    .end annotation

    .line 2
    invoke-virtual {p0, p1}, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->sync(Lorg/openjdk/source/tree/Tree;)V

    .line 3
    invoke-virtual {p0, p1}, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->visitSingleMemberAnnotation(Lorg/openjdk/source/tree/AnnotationTree;)Z

    move-result p2

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    return-object v0

    .line 4
    :cond_0
    iget-object p2, p0, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lorg/google/googlejavaformat/OpsBuilder;

    sget-object v1, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->ZERO:Lorg/google/googlejavaformat/Indent$Const;

    invoke-virtual {p2, v1}, Lorg/google/googlejavaformat/OpsBuilder;->open(Lorg/google/googlejavaformat/Indent;)V

    .line 5
    const-string p2, "@"

    invoke-virtual {p0, p2}, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->token(Ljava/lang/String;)V

    .line 6
    invoke-interface {p1}, Lorg/openjdk/source/tree/AnnotationTree;->getAnnotationType()Lorg/openjdk/source/tree/Tree;

    move-result-object p2

    invoke-virtual {p0, p2, v0}, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->scan(Lorg/openjdk/source/tree/Tree;Ljava/lang/Void;)Ljava/lang/Void;

    .line 7
    invoke-interface {p1}, Lorg/openjdk/source/tree/AnnotationTree;->getArguments()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result p2

    const-string v1, ")"

    const-string v2, "("

    if-nez p2, :cond_5

    .line 8
    iget-object p2, p0, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lorg/google/googlejavaformat/OpsBuilder;

    iget-object v3, p0, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->plusFour:Lorg/google/googlejavaformat/Indent$Const;

    invoke-virtual {p2, v3}, Lorg/google/googlejavaformat/OpsBuilder;->open(Lorg/google/googlejavaformat/Indent;)V

    .line 9
    invoke-virtual {p0, v2}, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->token(Ljava/lang/String;)V

    .line 10
    iget-object p2, p0, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lorg/google/googlejavaformat/OpsBuilder;

    invoke-virtual {p2}, Lorg/google/googlejavaformat/OpsBuilder;->breakOp()V

    .line 11
    invoke-interface {p1}, Lorg/openjdk/source/tree/AnnotationTree;->getArguments()Ljava/util/List;

    move-result-object p2

    new-instance v2, Lorg/google/googlejavaformat/java/f;

    invoke-direct {v2}, Lorg/google/googlejavaformat/java/f;-><init>()V

    invoke-static {p2, v2}, Lcom/google/common/collect/D1;->c(Ljava/lang/Iterable;Lw2/I;)Z

    move-result p2

    .line 12
    invoke-interface {p1}, Lorg/openjdk/source/tree/AnnotationTree;->getArguments()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v2, 0x1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/openjdk/source/tree/ExpressionTree;

    if-nez v2, :cond_2

    .line 13
    const-string v2, ","

    invoke-virtual {p0, v2}, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->token(Ljava/lang/String;)V

    if-eqz p2, :cond_1

    .line 14
    iget-object v2, p0, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lorg/google/googlejavaformat/OpsBuilder;

    invoke-virtual {v2}, Lorg/google/googlejavaformat/OpsBuilder;->forcedBreak()V

    goto :goto_1

    .line 15
    :cond_1
    iget-object v2, p0, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lorg/google/googlejavaformat/OpsBuilder;

    const-string v4, " "

    invoke-virtual {v2, v4}, Lorg/google/googlejavaformat/OpsBuilder;->breakOp(Ljava/lang/String;)V

    .line 16
    :cond_2
    :goto_1
    instance-of v2, v3, Lorg/openjdk/source/tree/AssignmentTree;

    if-eqz v2, :cond_3

    .line 17
    check-cast v3, Lorg/openjdk/source/tree/AssignmentTree;

    invoke-virtual {p0, v3}, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->visitAnnotationArgument(Lorg/openjdk/source/tree/AssignmentTree;)V

    goto :goto_2

    .line 18
    :cond_3
    invoke-virtual {p0, v3, v0}, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->scan(Lorg/openjdk/source/tree/Tree;Ljava/lang/Void;)Ljava/lang/Void;

    :goto_2
    const/4 v2, 0x0

    goto :goto_0

    .line 19
    :cond_4
    invoke-virtual {p0, v1}, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->token(Ljava/lang/String;)V

    .line 20
    iget-object p1, p0, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lorg/google/googlejavaformat/OpsBuilder;

    invoke-virtual {p1}, Lorg/google/googlejavaformat/OpsBuilder;->close()V

    .line 21
    iget-object p1, p0, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lorg/google/googlejavaformat/OpsBuilder;

    invoke-virtual {p1}, Lorg/google/googlejavaformat/OpsBuilder;->close()V

    return-object v0

    .line 22
    :cond_5
    iget-object p1, p0, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lorg/google/googlejavaformat/OpsBuilder;

    invoke-virtual {p1}, Lorg/google/googlejavaformat/OpsBuilder;->peekToken()Lw2/C;

    move-result-object p1

    invoke-static {v2}, Lw2/C;->f(Ljava/lang/Object;)Lw2/C;

    move-result-object p2

    invoke-virtual {p1, p2}, Lw2/C;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 23
    invoke-virtual {p0, v2}, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->token(Ljava/lang/String;)V

    .line 24
    invoke-virtual {p0, v1}, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->token(Ljava/lang/String;)V

    .line 25
    :cond_6
    iget-object p1, p0, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lorg/google/googlejavaformat/OpsBuilder;

    invoke-virtual {p1}, Lorg/google/googlejavaformat/OpsBuilder;->close()V

    return-object v0
.end method

.method public visitAnnotationArgument(Lorg/openjdk/source/tree/AssignmentTree;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "node"
        }
    .end annotation

    invoke-interface {p1}, Lorg/openjdk/source/tree/AssignmentTree;->getExpression()Lorg/openjdk/source/tree/ExpressionTree;

    move-result-object v0

    invoke-interface {v0}, Lorg/openjdk/source/tree/Tree;->getKind()Lorg/openjdk/source/tree/Tree$Kind;

    move-result-object v0

    sget-object v1, Lorg/openjdk/source/tree/Tree$Kind;->NEW_ARRAY:Lorg/openjdk/source/tree/Tree$Kind;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, p1}, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->sync(Lorg/openjdk/source/tree/Tree;)V

    iget-object v1, p0, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lorg/google/googlejavaformat/OpsBuilder;

    if-eqz v0, :cond_1

    sget-object v2, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->ZERO:Lorg/google/googlejavaformat/Indent$Const;

    goto :goto_1

    :cond_1
    iget-object v2, p0, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->plusFour:Lorg/google/googlejavaformat/Indent$Const;

    :goto_1
    invoke-virtual {v1, v2}, Lorg/google/googlejavaformat/OpsBuilder;->open(Lorg/google/googlejavaformat/Indent;)V

    invoke-interface {p1}, Lorg/openjdk/source/tree/AssignmentTree;->getVariable()Lorg/openjdk/source/tree/ExpressionTree;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->scan(Lorg/openjdk/source/tree/Tree;Ljava/lang/Void;)Ljava/lang/Void;

    iget-object v1, p0, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lorg/google/googlejavaformat/OpsBuilder;

    invoke-virtual {v1}, Lorg/google/googlejavaformat/OpsBuilder;->space()V

    const-string v1, "="

    invoke-virtual {p0, v1}, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->token(Ljava/lang/String;)V

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lorg/google/googlejavaformat/OpsBuilder;

    invoke-virtual {v0}, Lorg/google/googlejavaformat/OpsBuilder;->space()V

    goto :goto_2

    :cond_2
    iget-object v0, p0, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lorg/google/googlejavaformat/OpsBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Lorg/google/googlejavaformat/OpsBuilder;->breakOp(Ljava/lang/String;)V

    :goto_2
    invoke-interface {p1}, Lorg/openjdk/source/tree/AssignmentTree;->getExpression()Lorg/openjdk/source/tree/ExpressionTree;

    move-result-object p1

    invoke-virtual {p0, p1, v2}, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->scan(Lorg/openjdk/source/tree/Tree;Ljava/lang/Void;)Ljava/lang/Void;

    iget-object p1, p0, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lorg/google/googlejavaformat/OpsBuilder;

    invoke-virtual {p1}, Lorg/google/googlejavaformat/OpsBuilder;->close()V

    return-void
.end method

.method public visitAnnotationType(Lorg/openjdk/source/tree/ClassTree;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "node"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->sync(Lorg/openjdk/source/tree/Tree;)V

    iget-object v0, p0, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lorg/google/googlejavaformat/OpsBuilder;

    sget-object v1, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->ZERO:Lorg/google/googlejavaformat/Indent$Const;

    invoke-virtual {v0, v1}, Lorg/google/googlejavaformat/OpsBuilder;->open(Lorg/google/googlejavaformat/Indent;)V

    invoke-interface {p1}, Lorg/openjdk/source/tree/ClassTree;->getModifiers()Lorg/openjdk/source/tree/ModifiersTree;

    move-result-object v0

    sget-object v2, Lorg/google/googlejavaformat/java/JavaInputAstVisitor$Direction;->VERTICAL:Lorg/google/googlejavaformat/java/JavaInputAstVisitor$Direction;

    invoke-static {}, Lw2/C;->a()Lw2/C;

    move-result-object v3

    invoke-virtual {p0, v0, v2, v3}, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->visitAndBreakModifiers(Lorg/openjdk/source/tree/ModifiersTree;Lorg/google/googlejavaformat/java/JavaInputAstVisitor$Direction;Lw2/C;)V

    iget-object v0, p0, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lorg/google/googlejavaformat/OpsBuilder;

    invoke-virtual {v0, v1}, Lorg/google/googlejavaformat/OpsBuilder;->open(Lorg/google/googlejavaformat/Indent;)V

    const-string v0, "@"

    invoke-virtual {p0, v0}, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->token(Ljava/lang/String;)V

    const-string v0, "interface"

    invoke-virtual {p0, v0}, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->token(Ljava/lang/String;)V

    iget-object v0, p0, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lorg/google/googlejavaformat/OpsBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Lorg/google/googlejavaformat/OpsBuilder;->breakOp(Ljava/lang/String;)V

    invoke-interface {p1}, Lorg/openjdk/source/tree/ClassTree;->getSimpleName()Lorg/openjdk/javax/lang/model/element/Name;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->visit(Lorg/openjdk/javax/lang/model/element/Name;)Z

    iget-object v0, p0, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lorg/google/googlejavaformat/OpsBuilder;

    invoke-virtual {v0}, Lorg/google/googlejavaformat/OpsBuilder;->close()V

    iget-object v0, p0, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lorg/google/googlejavaformat/OpsBuilder;

    invoke-virtual {v0}, Lorg/google/googlejavaformat/OpsBuilder;->close()V

    invoke-interface {p1}, Lorg/openjdk/source/tree/ClassTree;->getMembers()Ljava/util/List;

    move-result-object v0

    const-string v1, ";"

    if-nez v0, :cond_0

    iget-object p1, p0, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lorg/google/googlejavaformat/OpsBuilder;

    iget-object v0, p0, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->plusFour:Lorg/google/googlejavaformat/Indent$Const;

    invoke-virtual {p1, v0}, Lorg/google/googlejavaformat/OpsBuilder;->open(Lorg/google/googlejavaformat/Indent;)V

    invoke-virtual {p0, v1}, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->token(Ljava/lang/String;)V

    iget-object p1, p0, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lorg/google/googlejavaformat/OpsBuilder;

    invoke-virtual {p1}, Lorg/google/googlejavaformat/OpsBuilder;->close()V

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Lorg/openjdk/source/tree/ClassTree;->getMembers()Ljava/util/List;

    move-result-object p1

    sget-object v0, Lorg/google/googlejavaformat/java/JavaInputAstVisitor$BracesOrNot;->YES:Lorg/google/googlejavaformat/java/JavaInputAstVisitor$BracesOrNot;

    sget-object v2, Lorg/google/googlejavaformat/java/JavaInputAstVisitor$FirstDeclarationsOrNot;->YES:Lorg/google/googlejavaformat/java/JavaInputAstVisitor$FirstDeclarationsOrNot;

    invoke-virtual {p0, p1, v0, v2}, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->addBodyDeclarations(Ljava/util/List;Lorg/google/googlejavaformat/java/JavaInputAstVisitor$BracesOrNot;Lorg/google/googlejavaformat/java/JavaInputAstVisitor$FirstDeclarationsOrNot;)V

    :goto_0
    iget-object p1, p0, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lorg/google/googlejavaformat/OpsBuilder;

    invoke-virtual {p1, v1}, Lorg/google/googlejavaformat/OpsBuilder;->guessToken(Ljava/lang/String;)V

    return-void
.end method

.method public visitAnnotations(Ljava/util/List;Lorg/google/googlejavaformat/java/JavaInputAstVisitor$BreakOrNot;Lorg/google/googlejavaformat/java/JavaInputAstVisitor$BreakOrNot;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "annotations",
            "breakBefore",
            "breakAfter"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lorg/openjdk/source/tree/AnnotationTree;",
            ">;",
            "Lorg/google/googlejavaformat/java/JavaInputAstVisitor$BreakOrNot;",
            "Lorg/google/googlejavaformat/java/JavaInputAstVisitor$BreakOrNot;",
            ")V"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p2}, Lorg/google/googlejavaformat/java/JavaInputAstVisitor$BreakOrNot;->isYes()Z

    move-result p2

    const-string v0, " "

    if-eqz p2, :cond_0

    iget-object p2, p0, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lorg/google/googlejavaformat/OpsBuilder;

    invoke-virtual {p2, v0}, Lorg/google/googlejavaformat/OpsBuilder;->breakToFill(Ljava/lang/String;)V

    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 p2, 0x1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/openjdk/source/tree/AnnotationTree;

    if-nez p2, :cond_1

    iget-object p2, p0, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lorg/google/googlejavaformat/OpsBuilder;

    invoke-virtual {p2, v0}, Lorg/google/googlejavaformat/OpsBuilder;->breakToFill(Ljava/lang/String;)V

    :cond_1
    const/4 p2, 0x0

    invoke-virtual {p0, v1, p2}, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->scan(Lorg/openjdk/source/tree/Tree;Ljava/lang/Void;)Ljava/lang/Void;

    const/4 p2, 0x0

    goto :goto_0

    :cond_2
    invoke-virtual {p3}, Lorg/google/googlejavaformat/java/JavaInputAstVisitor$BreakOrNot;->isYes()Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lorg/google/googlejavaformat/OpsBuilder;

    invoke-virtual {p1, v0}, Lorg/google/googlejavaformat/OpsBuilder;->breakToFill(Ljava/lang/String;)V

    :cond_3
    return-void
.end method

.method public bridge synthetic visitArrayAccess(Lorg/openjdk/source/tree/ArrayAccessTree;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            "node",
            "unused"
        }
    .end annotation

    .line 1
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->visitArrayAccess(Lorg/openjdk/source/tree/ArrayAccessTree;Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public visitArrayAccess(Lorg/openjdk/source/tree/ArrayAccessTree;Ljava/lang/Void;)Ljava/lang/Void;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "node",
            "unused"
        }
    .end annotation

    .line 2
    invoke-virtual {p0, p1}, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->sync(Lorg/openjdk/source/tree/Tree;)V

    .line 3
    invoke-virtual {p0, p1}, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->visitDot(Lorg/openjdk/source/tree/ExpressionTree;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public visitArrayInitializer(Ljava/util/List;)Z
    .locals 12
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "expressions"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lorg/openjdk/source/tree/ExpressionTree;",
            ">;)Z"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const-string v1, "}"

    const-string v2, "{"

    const/4 v3, 0x0

    const-string v4, ","

    if-eqz v0, :cond_1

    iget-object p1, p0, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->plusTwo:Lorg/google/googlejavaformat/Indent$Const;

    invoke-virtual {p0, v2, p1}, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->tokenBreakTrailingComment(Ljava/lang/String;Lorg/google/googlejavaformat/Indent;)V

    iget-object p1, p0, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lorg/google/googlejavaformat/OpsBuilder;

    invoke-virtual {p1}, Lorg/google/googlejavaformat/OpsBuilder;->peekToken()Lw2/C;

    move-result-object p1

    invoke-static {v4}, Lw2/C;->f(Ljava/lang/Object;)Lw2/C;

    move-result-object v0

    invoke-virtual {p1, v0}, Lw2/C;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0, v4}, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->token(Ljava/lang/String;)V

    :cond_0
    iget-object p1, p0, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->plusTwo:Lorg/google/googlejavaformat/Indent$Const;

    invoke-virtual {p0, v1, p1}, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->token(Ljava/lang/String;Lorg/google/googlejavaformat/Indent;)V

    goto/16 :goto_c

    :cond_1
    invoke-direct {p0, p1}, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->argumentsAreTabular(Ljava/util/List;)I

    move-result v0

    const/4 v5, -0x1

    const/4 v6, 0x0

    const-string v7, " "

    const/4 v8, 0x1

    if-eq v0, v5, :cond_8

    iget-object v5, p0, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lorg/google/googlejavaformat/OpsBuilder;

    iget-object v9, p0, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->plusTwo:Lorg/google/googlejavaformat/Indent$Const;

    invoke-virtual {v5, v9}, Lorg/google/googlejavaformat/OpsBuilder;->open(Lorg/google/googlejavaformat/Indent;)V

    invoke-virtual {p0, v2}, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->token(Ljava/lang/String;)V

    iget-object v2, p0, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lorg/google/googlejavaformat/OpsBuilder;

    invoke-virtual {v2}, Lorg/google/googlejavaformat/OpsBuilder;->forcedBreak()V

    invoke-static {p1, v0}, Lcom/google/common/collect/D1;->G(Ljava/lang/Iterable;I)Ljava/lang/Iterable;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    move v2, v8

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_7

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Iterable;

    if-nez v2, :cond_2

    iget-object v2, p0, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lorg/google/googlejavaformat/OpsBuilder;

    invoke-virtual {v2}, Lorg/google/googlejavaformat/OpsBuilder;->forcedBreak()V

    :cond_2
    iget-object v2, p0, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lorg/google/googlejavaformat/OpsBuilder;

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/openjdk/source/tree/ExpressionTree;

    invoke-interface {v9}, Lorg/openjdk/source/tree/Tree;->getKind()Lorg/openjdk/source/tree/Tree$Kind;

    move-result-object v9

    sget-object v10, Lorg/openjdk/source/tree/Tree$Kind;->NEW_ARRAY:Lorg/openjdk/source/tree/Tree$Kind;

    if-eq v9, v10, :cond_4

    if-ne v0, v8, :cond_3

    goto :goto_1

    :cond_3
    iget-object v9, p0, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->plusFour:Lorg/google/googlejavaformat/Indent$Const;

    goto :goto_2

    :cond_4
    :goto_1
    sget-object v9, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->ZERO:Lorg/google/googlejavaformat/Indent$Const;

    :goto_2
    invoke-virtual {v2, v9}, Lorg/google/googlejavaformat/OpsBuilder;->open(Lorg/google/googlejavaformat/Indent;)V

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v5, v8

    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/openjdk/source/tree/ExpressionTree;

    if-nez v5, :cond_5

    invoke-virtual {p0, v4}, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->token(Ljava/lang/String;)V

    iget-object v5, p0, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lorg/google/googlejavaformat/OpsBuilder;

    invoke-virtual {v5, v7}, Lorg/google/googlejavaformat/OpsBuilder;->breakToFill(Ljava/lang/String;)V

    :cond_5
    invoke-virtual {p0, v9, v6}, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->scan(Lorg/openjdk/source/tree/Tree;Ljava/lang/Void;)Ljava/lang/Void;

    move v5, v3

    goto :goto_3

    :cond_6
    iget-object v2, p0, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lorg/google/googlejavaformat/OpsBuilder;

    invoke-virtual {v2, v4}, Lorg/google/googlejavaformat/OpsBuilder;->guessToken(Ljava/lang/String;)V

    iget-object v2, p0, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lorg/google/googlejavaformat/OpsBuilder;

    invoke-virtual {v2}, Lorg/google/googlejavaformat/OpsBuilder;->close()V

    move v2, v3

    goto :goto_0

    :cond_7
    iget-object p1, p0, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lorg/google/googlejavaformat/OpsBuilder;

    iget-object v0, p0, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->minusTwo:Lorg/google/googlejavaformat/Indent$Const;

    invoke-virtual {p1, v0}, Lorg/google/googlejavaformat/OpsBuilder;->breakOp(Lorg/google/googlejavaformat/Indent;)V

    iget-object p1, p0, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lorg/google/googlejavaformat/OpsBuilder;

    invoke-virtual {p1}, Lorg/google/googlejavaformat/OpsBuilder;->close()V

    iget-object p1, p0, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->plusTwo:Lorg/google/googlejavaformat/Indent$Const;

    invoke-virtual {p0, v1, p1}, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->token(Ljava/lang/String;Lorg/google/googlejavaformat/Indent;)V

    goto/16 :goto_c

    :cond_8
    invoke-virtual {p0}, Lorg/openjdk/source/util/TreePathScanner;->getCurrentPath()Lorg/openjdk/source/util/TreePath;

    move-result-object v0

    move v5, v3

    :goto_4
    const/4 v9, 0x2

    if-ge v5, v9, :cond_b

    if-nez v0, :cond_9

    goto :goto_5

    :cond_9
    invoke-virtual {v0}, Lorg/openjdk/source/util/TreePath;->getLeaf()Lorg/openjdk/source/tree/Tree;

    move-result-object v9

    invoke-interface {v9}, Lorg/openjdk/source/tree/Tree;->getKind()Lorg/openjdk/source/tree/Tree$Kind;

    move-result-object v9

    sget-object v10, Lorg/openjdk/source/tree/Tree$Kind;->ANNOTATION:Lorg/openjdk/source/tree/Tree$Kind;

    if-ne v9, v10, :cond_a

    move v0, v8

    goto :goto_6

    :cond_a
    invoke-virtual {v0}, Lorg/openjdk/source/util/TreePath;->getParentPath()Lorg/openjdk/source/util/TreePath;

    move-result-object v0

    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    :cond_b
    :goto_5
    move v0, v3

    :goto_6
    invoke-direct {p0, p1}, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->hasOnlyShortItems(Ljava/util/List;)Z

    move-result v5

    if-nez v5, :cond_d

    if-nez v0, :cond_c

    goto :goto_7

    :cond_c
    move v0, v3

    goto :goto_8

    :cond_d
    :goto_7
    move v0, v8

    :goto_8
    iget-object v9, p0, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lorg/google/googlejavaformat/OpsBuilder;

    iget-object v10, p0, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->plusTwo:Lorg/google/googlejavaformat/Indent$Const;

    invoke-virtual {v9, v10}, Lorg/google/googlejavaformat/OpsBuilder;->open(Lorg/google/googlejavaformat/Indent;)V

    iget-object v9, p0, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->plusTwo:Lorg/google/googlejavaformat/Indent$Const;

    invoke-virtual {p0, v2, v9}, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->tokenBreakTrailingComment(Ljava/lang/String;Lorg/google/googlejavaformat/Indent;)V

    iget-object v2, p0, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lorg/google/googlejavaformat/OpsBuilder;

    invoke-virtual {v2}, Lorg/google/googlejavaformat/OpsBuilder;->getInput()Lorg/google/googlejavaformat/Input;

    move-result-object v2

    invoke-direct {p0, v2, p1, v4}, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->hasTrailingToken(Lorg/google/googlejavaformat/Input;Ljava/util/List;Ljava/lang/String;)Z

    move-result v2

    iget-object v9, p0, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lorg/google/googlejavaformat/OpsBuilder;

    if-eqz v2, :cond_e

    sget-object v2, Lorg/google/googlejavaformat/Doc$FillMode;->FORCED:Lorg/google/googlejavaformat/Doc$FillMode;

    goto :goto_9

    :cond_e
    sget-object v2, Lorg/google/googlejavaformat/Doc$FillMode;->UNIFIED:Lorg/google/googlejavaformat/Doc$FillMode;

    :goto_9
    sget-object v10, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->ZERO:Lorg/google/googlejavaformat/Indent$Const;

    const-string v11, ""

    invoke-virtual {v9, v2, v11, v10}, Lorg/google/googlejavaformat/OpsBuilder;->breakOp(Lorg/google/googlejavaformat/Doc$FillMode;Ljava/lang/String;Lorg/google/googlejavaformat/Indent;)V

    if-eqz v0, :cond_f

    iget-object v2, p0, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lorg/google/googlejavaformat/OpsBuilder;

    invoke-virtual {v2, v10}, Lorg/google/googlejavaformat/OpsBuilder;->open(Lorg/google/googlejavaformat/Indent;)V

    :cond_f
    if-eqz v5, :cond_10

    sget-object v2, Lorg/google/googlejavaformat/Doc$FillMode;->INDEPENDENT:Lorg/google/googlejavaformat/Doc$FillMode;

    goto :goto_a

    :cond_10
    sget-object v2, Lorg/google/googlejavaformat/Doc$FillMode;->UNIFIED:Lorg/google/googlejavaformat/Doc$FillMode;

    :goto_a
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_b
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_12

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/openjdk/source/tree/ExpressionTree;

    if-nez v8, :cond_11

    invoke-virtual {p0, v4}, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->token(Ljava/lang/String;)V

    iget-object v8, p0, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lorg/google/googlejavaformat/OpsBuilder;

    sget-object v9, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->ZERO:Lorg/google/googlejavaformat/Indent$Const;

    invoke-virtual {v8, v2, v7, v9}, Lorg/google/googlejavaformat/OpsBuilder;->breakOp(Lorg/google/googlejavaformat/Doc$FillMode;Ljava/lang/String;Lorg/google/googlejavaformat/Indent;)V

    :cond_11
    invoke-virtual {p0, v5, v6}, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->scan(Lorg/openjdk/source/tree/Tree;Ljava/lang/Void;)Ljava/lang/Void;

    move v8, v3

    goto :goto_b

    :cond_12
    iget-object p1, p0, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lorg/google/googlejavaformat/OpsBuilder;

    invoke-virtual {p1, v4}, Lorg/google/googlejavaformat/OpsBuilder;->guessToken(Ljava/lang/String;)V

    if-eqz v0, :cond_13

    iget-object p1, p0, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lorg/google/googlejavaformat/OpsBuilder;

    invoke-virtual {p1}, Lorg/google/googlejavaformat/OpsBuilder;->close()V

    :cond_13
    iget-object p1, p0, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lorg/google/googlejavaformat/OpsBuilder;

    iget-object v0, p0, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->minusTwo:Lorg/google/googlejavaformat/Indent$Const;

    invoke-virtual {p1, v0}, Lorg/google/googlejavaformat/OpsBuilder;->breakOp(Lorg/google/googlejavaformat/Indent;)V

    iget-object p1, p0, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lorg/google/googlejavaformat/OpsBuilder;

    invoke-virtual {p1}, Lorg/google/googlejavaformat/OpsBuilder;->close()V

    iget-object p1, p0, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->plusTwo:Lorg/google/googlejavaformat/Indent$Const;

    invoke-virtual {p0, v1, p1}, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->token(Ljava/lang/String;Lorg/google/googlejavaformat/Indent;)V

    :goto_c
    return v3
.end method

.method public bridge synthetic visitArrayType(Lorg/openjdk/source/tree/ArrayTypeTree;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            "node",
            "unused"
        }
    .end annotation

    .line 1
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->visitArrayType(Lorg/openjdk/source/tree/ArrayTypeTree;Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public visitArrayType(Lorg/openjdk/source/tree/ArrayTypeTree;Ljava/lang/Void;)Ljava/lang/Void;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "node",
            "unused"
        }
    .end annotation

    .line 2
    invoke-virtual {p0, p1}, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->sync(Lorg/openjdk/source/tree/Tree;)V

    .line 3
    invoke-direct {p0, p1}, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->visitAnnotatedArrayType(Lorg/openjdk/source/tree/Tree;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public bridge synthetic visitAssert(Lorg/openjdk/source/tree/AssertTree;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            "node",
            "unused"
        }
    .end annotation

    .line 1
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->visitAssert(Lorg/openjdk/source/tree/AssertTree;Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public visitAssert(Lorg/openjdk/source/tree/AssertTree;Ljava/lang/Void;)Ljava/lang/Void;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "node",
            "unused"
        }
    .end annotation

    .line 2
    invoke-virtual {p0, p1}, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->sync(Lorg/openjdk/source/tree/Tree;)V

    .line 3
    iget-object p2, p0, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lorg/google/googlejavaformat/OpsBuilder;

    sget-object v0, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->ZERO:Lorg/google/googlejavaformat/Indent$Const;

    invoke-virtual {p2, v0}, Lorg/google/googlejavaformat/OpsBuilder;->open(Lorg/google/googlejavaformat/Indent;)V

    .line 4
    const-string p2, "assert"

    invoke-virtual {p0, p2}, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->token(Ljava/lang/String;)V

    .line 5
    iget-object p2, p0, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lorg/google/googlejavaformat/OpsBuilder;

    invoke-virtual {p2}, Lorg/google/googlejavaformat/OpsBuilder;->space()V

    .line 6
    iget-object p2, p0, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lorg/google/googlejavaformat/OpsBuilder;

    invoke-interface {p1}, Lorg/openjdk/source/tree/AssertTree;->getDetail()Lorg/openjdk/source/tree/ExpressionTree;

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->plusFour:Lorg/google/googlejavaformat/Indent$Const;

    :goto_0
    invoke-virtual {p2, v0}, Lorg/google/googlejavaformat/OpsBuilder;->open(Lorg/google/googlejavaformat/Indent;)V

    .line 7
    invoke-interface {p1}, Lorg/openjdk/source/tree/AssertTree;->getCondition()Lorg/openjdk/source/tree/ExpressionTree;

    move-result-object p2

    const/4 v0, 0x0

    invoke-virtual {p0, p2, v0}, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->scan(Lorg/openjdk/source/tree/Tree;Ljava/lang/Void;)Ljava/lang/Void;

    .line 8
    invoke-interface {p1}, Lorg/openjdk/source/tree/AssertTree;->getDetail()Lorg/openjdk/source/tree/ExpressionTree;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 9
    iget-object p2, p0, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lorg/google/googlejavaformat/OpsBuilder;

    const-string v1, " "

    invoke-virtual {p2, v1}, Lorg/google/googlejavaformat/OpsBuilder;->breakOp(Ljava/lang/String;)V

    .line 10
    const-string p2, ":"

    invoke-virtual {p0, p2}, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->token(Ljava/lang/String;)V

    .line 11
    iget-object p2, p0, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lorg/google/googlejavaformat/OpsBuilder;

    invoke-virtual {p2}, Lorg/google/googlejavaformat/OpsBuilder;->space()V

    .line 12
    invoke-interface {p1}, Lorg/openjdk/source/tree/AssertTree;->getDetail()Lorg/openjdk/source/tree/ExpressionTree;

    move-result-object p1

    invoke-virtual {p0, p1, v0}, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->scan(Lorg/openjdk/source/tree/Tree;Ljava/lang/Void;)Ljava/lang/Void;

    .line 13
    :cond_1
    iget-object p1, p0, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lorg/google/googlejavaformat/OpsBuilder;

    invoke-virtual {p1}, Lorg/google/googlejavaformat/OpsBuilder;->close()V

    .line 14
    iget-object p1, p0, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lorg/google/googlejavaformat/OpsBuilder;

    invoke-virtual {p1}, Lorg/google/googlejavaformat/OpsBuilder;->close()V

    .line 15
    const-string p1, ";"

    invoke-virtual {p0, p1}, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->token(Ljava/lang/String;)V

    return-object v0
.end method

.method public bridge synthetic visitAssignment(Lorg/openjdk/source/tree/AssignmentTree;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            "node",
            "unused"
        }
    .end annotation

    .line 1
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->visitAssignment(Lorg/openjdk/source/tree/AssignmentTree;Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public visitAssignment(Lorg/openjdk/source/tree/AssignmentTree;Ljava/lang/Void;)Ljava/lang/Void;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "node",
            "unused"
        }
    .end annotation

    .line 2
    invoke-virtual {p0, p1}, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->sync(Lorg/openjdk/source/tree/Tree;)V

    .line 3
    iget-object p2, p0, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lorg/google/googlejavaformat/OpsBuilder;

    iget-object v0, p0, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->plusFour:Lorg/google/googlejavaformat/Indent$Const;

    invoke-virtual {p2, v0}, Lorg/google/googlejavaformat/OpsBuilder;->open(Lorg/google/googlejavaformat/Indent;)V

    .line 4
    invoke-interface {p1}, Lorg/openjdk/source/tree/AssignmentTree;->getVariable()Lorg/openjdk/source/tree/ExpressionTree;

    move-result-object p2

    const/4 v0, 0x0

    invoke-virtual {p0, p2, v0}, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->scan(Lorg/openjdk/source/tree/Tree;Ljava/lang/Void;)Ljava/lang/Void;

    .line 5
    iget-object p2, p0, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lorg/google/googlejavaformat/OpsBuilder;

    invoke-virtual {p2}, Lorg/google/googlejavaformat/OpsBuilder;->space()V

    .line 6
    invoke-static {p1}, Lorg/google/googlejavaformat/java/Trees;->operatorName(Lorg/openjdk/source/tree/ExpressionTree;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p2}, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->splitToken(Ljava/lang/String;)V

    .line 7
    iget-object p2, p0, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lorg/google/googlejavaformat/OpsBuilder;

    const-string v1, " "

    invoke-virtual {p2, v1}, Lorg/google/googlejavaformat/OpsBuilder;->breakOp(Ljava/lang/String;)V

    .line 8
    invoke-interface {p1}, Lorg/openjdk/source/tree/AssignmentTree;->getExpression()Lorg/openjdk/source/tree/ExpressionTree;

    move-result-object p1

    invoke-virtual {p0, p1, v0}, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->scan(Lorg/openjdk/source/tree/Tree;Ljava/lang/Void;)Ljava/lang/Void;

    .line 9
    iget-object p1, p0, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lorg/google/googlejavaformat/OpsBuilder;

    invoke-virtual {p1}, Lorg/google/googlejavaformat/OpsBuilder;->close()V

    return-object v0
.end method

.method public bridge synthetic visitBinary(Lorg/openjdk/source/tree/BinaryTree;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            "node",
            "unused"
        }
    .end annotation

    .line 1
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->visitBinary(Lorg/openjdk/source/tree/BinaryTree;Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public visitBinary(Lorg/openjdk/source/tree/BinaryTree;Ljava/lang/Void;)Ljava/lang/Void;
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "node",
            "unused"
        }
    .end annotation

    .line 2
    invoke-virtual {p0, p1}, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->sync(Lorg/openjdk/source/tree/Tree;)V

    .line 3
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 4
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 5
    invoke-static {p1}, Lorg/google/googlejavaformat/java/Trees;->precedence(Lorg/openjdk/source/tree/ExpressionTree;)I

    move-result v1

    invoke-static {v1, p1, p2, v0}, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->walkInfix(ILorg/openjdk/source/tree/ExpressionTree;Ljava/util/List;Ljava/util/List;)V

    .line 6
    invoke-direct {p0, p2}, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->hasOnlyShortItems(Ljava/util/List;)Z

    move-result p1

    if-eqz p1, :cond_0

    sget-object p1, Lorg/google/googlejavaformat/Doc$FillMode;->INDEPENDENT:Lorg/google/googlejavaformat/Doc$FillMode;

    goto :goto_0

    :cond_0
    sget-object p1, Lorg/google/googlejavaformat/Doc$FillMode;->UNIFIED:Lorg/google/googlejavaformat/Doc$FillMode;

    .line 7
    :goto_0
    iget-object v1, p0, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lorg/google/googlejavaformat/OpsBuilder;

    iget-object v2, p0, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->plusFour:Lorg/google/googlejavaformat/Indent$Const;

    invoke-virtual {v1, v2}, Lorg/google/googlejavaformat/OpsBuilder;->open(Lorg/google/googlejavaformat/Indent;)V

    const/4 v1, 0x0

    .line 8
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/openjdk/source/tree/Tree;

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->scan(Lorg/openjdk/source/tree/Tree;Ljava/lang/Void;)Ljava/lang/Void;

    .line 9
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    :goto_1
    if-ge v1, v2, :cond_1

    .line 10
    iget-object v4, p0, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lorg/google/googlejavaformat/OpsBuilder;

    const-string v5, " "

    sget-object v6, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->ZERO:Lorg/google/googlejavaformat/Indent$Const;

    invoke-virtual {v4, p1, v5, v6}, Lorg/google/googlejavaformat/OpsBuilder;->breakOp(Lorg/google/googlejavaformat/Doc$FillMode;Ljava/lang/String;Lorg/google/googlejavaformat/Indent;)V

    .line 11
    iget-object v4, p0, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lorg/google/googlejavaformat/OpsBuilder;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v4, v5}, Lorg/google/googlejavaformat/OpsBuilder;->op(Ljava/lang/String;)V

    .line 12
    iget-object v4, p0, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lorg/google/googlejavaformat/OpsBuilder;

    invoke-virtual {v4}, Lorg/google/googlejavaformat/OpsBuilder;->space()V

    add-int/lit8 v1, v1, 0x1

    .line 13
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/openjdk/source/tree/Tree;

    invoke-virtual {p0, v4, v3}, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->scan(Lorg/openjdk/source/tree/Tree;Ljava/lang/Void;)Ljava/lang/Void;

    goto :goto_1

    .line 14
    :cond_1
    iget-object p1, p0, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lorg/google/googlejavaformat/OpsBuilder;

    invoke-virtual {p1}, Lorg/google/googlejavaformat/OpsBuilder;->close()V

    return-object v3
.end method

.method public bridge synthetic visitBlock(Lorg/openjdk/source/tree/BlockTree;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            "node",
            "unused"
        }
    .end annotation

    .line 1
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->visitBlock(Lorg/openjdk/source/tree/BlockTree;Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public visitBlock(Lorg/openjdk/source/tree/BlockTree;Ljava/lang/Void;)Ljava/lang/Void;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "node",
            "unused"
        }
    .end annotation

    .line 2
    sget-object p2, Lorg/google/googlejavaformat/java/JavaInputAstVisitor$CollapseEmptyOrNot;->NO:Lorg/google/googlejavaformat/java/JavaInputAstVisitor$CollapseEmptyOrNot;

    sget-object v0, Lorg/google/googlejavaformat/java/JavaInputAstVisitor$AllowLeadingBlankLine;->NO:Lorg/google/googlejavaformat/java/JavaInputAstVisitor$AllowLeadingBlankLine;

    sget-object v1, Lorg/google/googlejavaformat/java/JavaInputAstVisitor$AllowTrailingBlankLine;->NO:Lorg/google/googlejavaformat/java/JavaInputAstVisitor$AllowTrailingBlankLine;

    invoke-direct {p0, p1, p2, v0, v1}, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->visitBlock(Lorg/openjdk/source/tree/BlockTree;Lorg/google/googlejavaformat/java/JavaInputAstVisitor$CollapseEmptyOrNot;Lorg/google/googlejavaformat/java/JavaInputAstVisitor$AllowLeadingBlankLine;Lorg/google/googlejavaformat/java/JavaInputAstVisitor$AllowTrailingBlankLine;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public bridge synthetic visitBreak(Lorg/openjdk/source/tree/BreakTree;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            "node",
            "unused"
        }
    .end annotation

    .line 1
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->visitBreak(Lorg/openjdk/source/tree/BreakTree;Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public visitBreak(Lorg/openjdk/source/tree/BreakTree;Ljava/lang/Void;)Ljava/lang/Void;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "node",
            "unused"
        }
    .end annotation

    .line 2
    invoke-virtual {p0, p1}, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->sync(Lorg/openjdk/source/tree/Tree;)V

    .line 3
    iget-object p2, p0, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lorg/google/googlejavaformat/OpsBuilder;

    iget-object v0, p0, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->plusFour:Lorg/google/googlejavaformat/Indent$Const;

    invoke-virtual {p2, v0}, Lorg/google/googlejavaformat/OpsBuilder;->open(Lorg/google/googlejavaformat/Indent;)V

    .line 4
    const-string p2, "break"

    invoke-virtual {p0, p2}, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->token(Ljava/lang/String;)V

    .line 5
    invoke-interface {p1}, Lorg/openjdk/source/tree/BreakTree;->getLabel()Lorg/openjdk/javax/lang/model/element/Name;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 6
    iget-object p2, p0, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lorg/google/googlejavaformat/OpsBuilder;

    const-string v0, " "

    invoke-virtual {p2, v0}, Lorg/google/googlejavaformat/OpsBuilder;->breakOp(Ljava/lang/String;)V

    .line 7
    invoke-interface {p1}, Lorg/openjdk/source/tree/BreakTree;->getLabel()Lorg/openjdk/javax/lang/model/element/Name;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->visit(Lorg/openjdk/javax/lang/model/element/Name;)Z

    .line 8
    :cond_0
    iget-object p1, p0, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lorg/google/googlejavaformat/OpsBuilder;

    invoke-virtual {p1}, Lorg/google/googlejavaformat/OpsBuilder;->close()V

    .line 9
    const-string p1, ";"

    invoke-virtual {p0, p1}, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->token(Ljava/lang/String;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public bridge synthetic visitCase(Lorg/openjdk/source/tree/CaseTree;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            "node",
            "unused"
        }
    .end annotation

    .line 1
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->visitCase(Lorg/openjdk/source/tree/CaseTree;Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public visitCase(Lorg/openjdk/source/tree/CaseTree;Ljava/lang/Void;)Ljava/lang/Void;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "node",
            "unused"
        }
    .end annotation

    .line 2
    invoke-virtual {p0, p1}, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->sync(Lorg/openjdk/source/tree/Tree;)V

    .line 3
    invoke-direct {p0}, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->markForPartialFormat()V

    .line 4
    iget-object p2, p0, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lorg/google/googlejavaformat/OpsBuilder;

    invoke-virtual {p2}, Lorg/google/googlejavaformat/OpsBuilder;->forcedBreak()V

    .line 5
    invoke-interface {p1}, Lorg/openjdk/source/tree/CaseTree;->getExpression()Lorg/openjdk/source/tree/ExpressionTree;

    move-result-object p2

    const/4 v0, 0x0

    const-string v1, ":"

    if-nez p2, :cond_0

    .line 6
    const-string p2, "default"

    iget-object v2, p0, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->plusTwo:Lorg/google/googlejavaformat/Indent$Const;

    invoke-virtual {p0, p2, v2}, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->token(Ljava/lang/String;Lorg/google/googlejavaformat/Indent;)V

    .line 7
    invoke-virtual {p0, v1}, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->token(Ljava/lang/String;)V

    goto :goto_0

    .line 8
    :cond_0
    const-string p2, "case"

    iget-object v2, p0, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->plusTwo:Lorg/google/googlejavaformat/Indent$Const;

    invoke-virtual {p0, p2, v2}, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->token(Ljava/lang/String;Lorg/google/googlejavaformat/Indent;)V

    .line 9
    iget-object p2, p0, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lorg/google/googlejavaformat/OpsBuilder;

    invoke-virtual {p2}, Lorg/google/googlejavaformat/OpsBuilder;->space()V

    .line 10
    invoke-interface {p1}, Lorg/openjdk/source/tree/CaseTree;->getExpression()Lorg/openjdk/source/tree/ExpressionTree;

    move-result-object p2

    invoke-virtual {p0, p2, v0}, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->scan(Lorg/openjdk/source/tree/Tree;Ljava/lang/Void;)Ljava/lang/Void;

    .line 11
    invoke-virtual {p0, v1}, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->token(Ljava/lang/String;)V

    .line 12
    :goto_0
    iget-object p2, p0, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lorg/google/googlejavaformat/OpsBuilder;

    iget-object v1, p0, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->plusTwo:Lorg/google/googlejavaformat/Indent$Const;

    invoke-virtual {p2, v1}, Lorg/google/googlejavaformat/OpsBuilder;->open(Lorg/google/googlejavaformat/Indent;)V

    .line 13
    invoke-interface {p1}, Lorg/openjdk/source/tree/CaseTree;->getStatements()Ljava/util/List;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->visitStatements(Ljava/util/List;)V

    .line 14
    iget-object p1, p0, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lorg/google/googlejavaformat/OpsBuilder;

    invoke-virtual {p1}, Lorg/google/googlejavaformat/OpsBuilder;->close()V

    return-object v0
.end method

.method public bridge synthetic visitCatch(Lorg/openjdk/source/tree/CatchTree;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            "node",
            "unused"
        }
    .end annotation

    .line 1
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->visitCatch(Lorg/openjdk/source/tree/CatchTree;Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public visitCatch(Lorg/openjdk/source/tree/CatchTree;Ljava/lang/Void;)Ljava/lang/Void;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "node",
            "unused"
        }
    .end annotation

    .line 2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "expected manual descent into catch trees"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public bridge synthetic visitClass(Lorg/openjdk/source/tree/ClassTree;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            "tree",
            "unused"
        }
    .end annotation

    .line 1
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->visitClass(Lorg/openjdk/source/tree/ClassTree;Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public visitClass(Lorg/openjdk/source/tree/ClassTree;Ljava/lang/Void;)Ljava/lang/Void;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "tree",
            "unused"
        }
    .end annotation

    .line 2
    sget-object p2, Lorg/google/googlejavaformat/java/JavaInputAstVisitor$2;->$SwitchMap$org$openjdk$source$tree$Tree$Kind:[I

    invoke-interface {p1}, Lorg/openjdk/source/tree/Tree;->getKind()Lorg/openjdk/source/tree/Tree$Kind;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget p2, p2, v0

    const/4 v0, 0x1

    if-eq p2, v0, :cond_2

    const/4 v0, 0x2

    if-eq p2, v0, :cond_1

    const/4 v0, 0x3

    if-eq p2, v0, :cond_1

    const/4 v0, 0x4

    if-ne p2, v0, :cond_0

    .line 3
    invoke-virtual {p0, p1}, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->visitEnumDeclaration(Lorg/openjdk/source/tree/ClassTree;)Z

    goto :goto_0

    .line 4
    :cond_0
    new-instance p2, Ljava/lang/AssertionError;

    invoke-interface {p1}, Lorg/openjdk/source/tree/Tree;->getKind()Lorg/openjdk/source/tree/Tree$Kind;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p2

    .line 5
    :cond_1
    invoke-virtual {p0, p1}, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->visitClassDeclaration(Lorg/openjdk/source/tree/ClassTree;)V

    goto :goto_0

    .line 6
    :cond_2
    invoke-virtual {p0, p1}, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->visitAnnotationType(Lorg/openjdk/source/tree/ClassTree;)V

    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public visitClassDeclaration(Lorg/openjdk/source/tree/ClassTree;)V
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "node"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->sync(Lorg/openjdk/source/tree/Tree;)V

    invoke-interface {p1}, Lorg/openjdk/source/tree/ClassTree;->getModifiers()Lorg/openjdk/source/tree/ModifiersTree;

    move-result-object v0

    sget-object v1, Lorg/google/googlejavaformat/java/JavaInputAstVisitor$Direction;->VERTICAL:Lorg/google/googlejavaformat/java/JavaInputAstVisitor$Direction;

    invoke-static {}, Lw2/C;->a()Lw2/C;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->visitModifiers(Lorg/openjdk/source/tree/ModifiersTree;Lorg/google/googlejavaformat/java/JavaInputAstVisitor$Direction;Lw2/C;)Ljava/util/List;

    move-result-object v0

    invoke-interface {p1}, Lorg/openjdk/source/tree/ClassTree;->getExtendsClause()Lorg/openjdk/source/tree/Tree;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    invoke-interface {p1}, Lorg/openjdk/source/tree/ClassTree;->getImplementsClause()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v4

    iget-object v5, p0, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lorg/google/googlejavaformat/OpsBuilder;

    invoke-virtual {v5, v0}, Lorg/google/googlejavaformat/OpsBuilder;->addAll(Ljava/util/List;)V

    invoke-interface {p1}, Lorg/openjdk/source/tree/Tree;->getKind()Lorg/openjdk/source/tree/Tree$Kind;

    move-result-object v0

    sget-object v5, Lorg/openjdk/source/tree/Tree$Kind;->INTERFACE:Lorg/openjdk/source/tree/Tree$Kind;

    if-ne v0, v5, :cond_1

    const-string v0, "interface"

    goto :goto_1

    :cond_1
    const-string v0, "class"

    :goto_1
    invoke-virtual {p0, v0}, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->token(Ljava/lang/String;)V

    iget-object v0, p0, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lorg/google/googlejavaformat/OpsBuilder;

    invoke-virtual {v0}, Lorg/google/googlejavaformat/OpsBuilder;->space()V

    invoke-interface {p1}, Lorg/openjdk/source/tree/ClassTree;->getSimpleName()Lorg/openjdk/javax/lang/model/element/Name;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->visit(Lorg/openjdk/javax/lang/model/element/Name;)Z

    invoke-interface {p1}, Lorg/openjdk/source/tree/ClassTree;->getTypeParameters()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "<"

    invoke-virtual {p0, v0}, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->token(Ljava/lang/String;)V

    :cond_2
    iget-object v0, p0, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lorg/google/googlejavaformat/OpsBuilder;

    iget-object v6, p0, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->plusFour:Lorg/google/googlejavaformat/Indent$Const;

    invoke-virtual {v0, v6}, Lorg/google/googlejavaformat/OpsBuilder;->open(Lorg/google/googlejavaformat/Indent;)V

    invoke-interface {p1}, Lorg/openjdk/source/tree/ClassTree;->getTypeParameters()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    invoke-interface {p1}, Lorg/openjdk/source/tree/ClassTree;->getTypeParameters()Ljava/util/List;

    move-result-object v0

    if-nez v1, :cond_4

    if-nez v4, :cond_3

    goto :goto_2

    :cond_3
    sget-object v6, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->ZERO:Lorg/google/googlejavaformat/Indent$Const;

    goto :goto_3

    :cond_4
    :goto_2
    iget-object v6, p0, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->plusFour:Lorg/google/googlejavaformat/Indent$Const;

    :goto_3
    invoke-direct {p0, v0, v6}, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->typeParametersRest(Ljava/util/List;Lorg/google/googlejavaformat/Indent;)V

    :cond_5
    const/4 v0, 0x0

    const-string v6, "extends"

    const-string v7, " "

    if-eqz v1, :cond_6

    iget-object v1, p0, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lorg/google/googlejavaformat/OpsBuilder;

    invoke-virtual {v1, v7}, Lorg/google/googlejavaformat/OpsBuilder;->breakToFill(Ljava/lang/String;)V

    invoke-virtual {p0, v6}, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->token(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lorg/google/googlejavaformat/OpsBuilder;

    invoke-virtual {v1}, Lorg/google/googlejavaformat/OpsBuilder;->space()V

    invoke-interface {p1}, Lorg/openjdk/source/tree/ClassTree;->getExtendsClause()Lorg/openjdk/source/tree/Tree;

    move-result-object v1

    invoke-virtual {p0, v1, v0}, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->scan(Lorg/openjdk/source/tree/Tree;Ljava/lang/Void;)Ljava/lang/Void;

    :cond_6
    if-nez v4, :cond_b

    iget-object v1, p0, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lorg/google/googlejavaformat/OpsBuilder;

    invoke-virtual {v1, v7}, Lorg/google/googlejavaformat/OpsBuilder;->breakToFill(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lorg/google/googlejavaformat/OpsBuilder;

    invoke-interface {p1}, Lorg/openjdk/source/tree/ClassTree;->getImplementsClause()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-le v4, v3, :cond_7

    iget-object v4, p0, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->plusFour:Lorg/google/googlejavaformat/Indent$Const;

    goto :goto_4

    :cond_7
    sget-object v4, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->ZERO:Lorg/google/googlejavaformat/Indent$Const;

    :goto_4
    invoke-virtual {v1, v4}, Lorg/google/googlejavaformat/OpsBuilder;->open(Lorg/google/googlejavaformat/Indent;)V

    invoke-interface {p1}, Lorg/openjdk/source/tree/Tree;->getKind()Lorg/openjdk/source/tree/Tree$Kind;

    move-result-object v1

    if-ne v1, v5, :cond_8

    goto :goto_5

    :cond_8
    const-string v6, "implements"

    :goto_5
    invoke-virtual {p0, v6}, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->token(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lorg/google/googlejavaformat/OpsBuilder;

    invoke-virtual {v1}, Lorg/google/googlejavaformat/OpsBuilder;->space()V

    invoke-interface {p1}, Lorg/openjdk/source/tree/ClassTree;->getImplementsClause()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/openjdk/source/tree/Tree;

    if-nez v3, :cond_9

    const-string v3, ","

    invoke-virtual {p0, v3}, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->token(Ljava/lang/String;)V

    iget-object v3, p0, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lorg/google/googlejavaformat/OpsBuilder;

    invoke-virtual {v3, v7}, Lorg/google/googlejavaformat/OpsBuilder;->breakOp(Ljava/lang/String;)V

    :cond_9
    invoke-virtual {p0, v4, v0}, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->scan(Lorg/openjdk/source/tree/Tree;Ljava/lang/Void;)Ljava/lang/Void;

    move v3, v2

    goto :goto_6

    :cond_a
    iget-object v0, p0, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lorg/google/googlejavaformat/OpsBuilder;

    invoke-virtual {v0}, Lorg/google/googlejavaformat/OpsBuilder;->close()V

    :cond_b
    iget-object v0, p0, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lorg/google/googlejavaformat/OpsBuilder;

    invoke-virtual {v0}, Lorg/google/googlejavaformat/OpsBuilder;->close()V

    invoke-interface {p1}, Lorg/openjdk/source/tree/ClassTree;->getMembers()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_c

    const-string p1, ";"

    invoke-virtual {p0, p1}, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->token(Ljava/lang/String;)V

    goto :goto_7

    :cond_c
    invoke-interface {p1}, Lorg/openjdk/source/tree/ClassTree;->getMembers()Ljava/util/List;

    move-result-object p1

    sget-object v0, Lorg/google/googlejavaformat/java/JavaInputAstVisitor$BracesOrNot;->YES:Lorg/google/googlejavaformat/java/JavaInputAstVisitor$BracesOrNot;

    sget-object v1, Lorg/google/googlejavaformat/java/JavaInputAstVisitor$FirstDeclarationsOrNot;->YES:Lorg/google/googlejavaformat/java/JavaInputAstVisitor$FirstDeclarationsOrNot;

    invoke-virtual {p0, p1, v0, v1}, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->addBodyDeclarations(Ljava/util/List;Lorg/google/googlejavaformat/java/JavaInputAstVisitor$BracesOrNot;Lorg/google/googlejavaformat/java/JavaInputAstVisitor$FirstDeclarationsOrNot;)V

    :goto_7
    invoke-direct {p0}, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->dropEmptyDeclarations()V

    return-void
.end method

.method public bridge synthetic visitCompilationUnit(Lorg/openjdk/source/tree/CompilationUnitTree;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            "node",
            "unused"
        }
    .end annotation

    .line 1
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->visitCompilationUnit(Lorg/openjdk/source/tree/CompilationUnitTree;Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public visitCompilationUnit(Lorg/openjdk/source/tree/CompilationUnitTree;Ljava/lang/Void;)Ljava/lang/Void;
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "node",
            "unused"
        }
    .end annotation

    .line 2
    invoke-interface {p1}, Lorg/openjdk/source/tree/CompilationUnitTree;->getPackageName()Lorg/openjdk/source/tree/ExpressionTree;

    move-result-object p2

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    .line 3
    invoke-direct {p0}, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->markForPartialFormat()V

    .line 4
    invoke-interface {p1}, Lorg/openjdk/source/tree/CompilationUnitTree;->getPackageName()Lorg/openjdk/source/tree/ExpressionTree;

    move-result-object p2

    invoke-interface {p1}, Lorg/openjdk/source/tree/CompilationUnitTree;->getPackageAnnotations()Ljava/util/List;

    move-result-object v1

    invoke-direct {p0, p2, v1}, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->visitPackage(Lorg/openjdk/source/tree/ExpressionTree;Ljava/util/List;)V

    .line 5
    iget-object p2, p0, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lorg/google/googlejavaformat/OpsBuilder;

    invoke-virtual {p2}, Lorg/google/googlejavaformat/OpsBuilder;->forcedBreak()V

    move p2, v0

    goto :goto_0

    :cond_0
    const/4 p2, 0x1

    .line 6
    :goto_0
    invoke-interface {p1}, Lorg/openjdk/source/tree/CompilationUnitTree;->getImports()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_3

    if-nez p2, :cond_1

    .line 7
    iget-object p2, p0, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lorg/google/googlejavaformat/OpsBuilder;

    sget-object v1, Lorg/google/googlejavaformat/OpsBuilder$BlankLineWanted;->YES:Lorg/google/googlejavaformat/OpsBuilder$BlankLineWanted;

    invoke-virtual {p2, v1}, Lorg/google/googlejavaformat/OpsBuilder;->blankLineWanted(Lorg/google/googlejavaformat/OpsBuilder$BlankLineWanted;)V

    .line 8
    :cond_1
    invoke-interface {p1}, Lorg/openjdk/source/tree/CompilationUnitTree;->getImports()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/openjdk/source/tree/ImportTree;

    .line 9
    invoke-direct {p0}, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->markForPartialFormat()V

    .line 10
    iget-object v3, p0, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lorg/google/googlejavaformat/OpsBuilder;

    sget-object v4, Lorg/google/googlejavaformat/OpsBuilder$BlankLineWanted;->PRESERVE:Lorg/google/googlejavaformat/OpsBuilder$BlankLineWanted;

    invoke-virtual {v3, v4}, Lorg/google/googlejavaformat/OpsBuilder;->blankLineWanted(Lorg/google/googlejavaformat/OpsBuilder$BlankLineWanted;)V

    .line 11
    invoke-virtual {p0, v1, v2}, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->scan(Lorg/openjdk/source/tree/Tree;Ljava/lang/Void;)Ljava/lang/Void;

    .line 12
    iget-object v1, p0, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lorg/google/googlejavaformat/OpsBuilder;

    invoke-virtual {v1}, Lorg/google/googlejavaformat/OpsBuilder;->forcedBreak()V

    goto :goto_1

    :cond_2
    move p2, v0

    .line 13
    :cond_3
    invoke-direct {p0}, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->dropEmptyDeclarations()V

    .line 14
    invoke-interface {p1}, Lorg/openjdk/source/tree/CompilationUnitTree;->getTypeDecls()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/openjdk/source/tree/Tree;

    .line 15
    invoke-interface {v1}, Lorg/openjdk/source/tree/Tree;->getKind()Lorg/openjdk/source/tree/Tree$Kind;

    move-result-object v3

    sget-object v4, Lorg/openjdk/source/tree/Tree$Kind;->IMPORT:Lorg/openjdk/source/tree/Tree$Kind;

    if-ne v3, v4, :cond_4

    goto :goto_2

    :cond_4
    if-nez p2, :cond_5

    .line 16
    iget-object p2, p0, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lorg/google/googlejavaformat/OpsBuilder;

    sget-object v3, Lorg/google/googlejavaformat/OpsBuilder$BlankLineWanted;->YES:Lorg/google/googlejavaformat/OpsBuilder$BlankLineWanted;

    invoke-virtual {p2, v3}, Lorg/google/googlejavaformat/OpsBuilder;->blankLineWanted(Lorg/google/googlejavaformat/OpsBuilder$BlankLineWanted;)V

    .line 17
    :cond_5
    invoke-direct {p0}, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->markForPartialFormat()V

    .line 18
    invoke-virtual {p0, v1, v2}, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->scan(Lorg/openjdk/source/tree/Tree;Ljava/lang/Void;)Ljava/lang/Void;

    .line 19
    iget-object p2, p0, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lorg/google/googlejavaformat/OpsBuilder;

    invoke-virtual {p2}, Lorg/google/googlejavaformat/OpsBuilder;->forcedBreak()V

    .line 20
    invoke-direct {p0}, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->dropEmptyDeclarations()V

    move p2, v0

    goto :goto_2

    .line 21
    :cond_6
    invoke-direct {p0}, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->markForPartialFormat()V

    return-object v2
.end method

.method public bridge synthetic visitCompoundAssignment(Lorg/openjdk/source/tree/CompoundAssignmentTree;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            "node",
            "unused"
        }
    .end annotation

    .line 1
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->visitCompoundAssignment(Lorg/openjdk/source/tree/CompoundAssignmentTree;Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public visitCompoundAssignment(Lorg/openjdk/source/tree/CompoundAssignmentTree;Ljava/lang/Void;)Ljava/lang/Void;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "node",
            "unused"
        }
    .end annotation

    .line 2
    invoke-virtual {p0, p1}, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->sync(Lorg/openjdk/source/tree/Tree;)V

    .line 3
    iget-object p2, p0, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lorg/google/googlejavaformat/OpsBuilder;

    iget-object v0, p0, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->plusFour:Lorg/google/googlejavaformat/Indent$Const;

    invoke-virtual {p2, v0}, Lorg/google/googlejavaformat/OpsBuilder;->open(Lorg/google/googlejavaformat/Indent;)V

    .line 4
    invoke-interface {p1}, Lorg/openjdk/source/tree/CompoundAssignmentTree;->getVariable()Lorg/openjdk/source/tree/ExpressionTree;

    move-result-object p2

    const/4 v0, 0x0

    invoke-virtual {p0, p2, v0}, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->scan(Lorg/openjdk/source/tree/Tree;Ljava/lang/Void;)Ljava/lang/Void;

    .line 5
    iget-object p2, p0, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lorg/google/googlejavaformat/OpsBuilder;

    invoke-virtual {p2}, Lorg/google/googlejavaformat/OpsBuilder;->space()V

    .line 6
    invoke-static {p1}, Lorg/google/googlejavaformat/java/Trees;->operatorName(Lorg/openjdk/source/tree/ExpressionTree;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p2}, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->splitToken(Ljava/lang/String;)V

    .line 7
    iget-object p2, p0, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lorg/google/googlejavaformat/OpsBuilder;

    const-string v1, " "

    invoke-virtual {p2, v1}, Lorg/google/googlejavaformat/OpsBuilder;->breakOp(Ljava/lang/String;)V

    .line 8
    invoke-interface {p1}, Lorg/openjdk/source/tree/CompoundAssignmentTree;->getExpression()Lorg/openjdk/source/tree/ExpressionTree;

    move-result-object p1

    invoke-virtual {p0, p1, v0}, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->scan(Lorg/openjdk/source/tree/Tree;Ljava/lang/Void;)Ljava/lang/Void;

    .line 9
    iget-object p1, p0, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lorg/google/googlejavaformat/OpsBuilder;

    invoke-virtual {p1}, Lorg/google/googlejavaformat/OpsBuilder;->close()V

    return-object v0
.end method

.method public bridge synthetic visitConditionalExpression(Lorg/openjdk/source/tree/ConditionalExpressionTree;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            "node",
            "unused"
        }
    .end annotation

    .line 1
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->visitConditionalExpression(Lorg/openjdk/source/tree/ConditionalExpressionTree;Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public visitConditionalExpression(Lorg/openjdk/source/tree/ConditionalExpressionTree;Ljava/lang/Void;)Ljava/lang/Void;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "node",
            "unused"
        }
    .end annotation

    .line 2
    invoke-virtual {p0, p1}, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->sync(Lorg/openjdk/source/tree/Tree;)V

    .line 3
    iget-object p2, p0, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lorg/google/googlejavaformat/OpsBuilder;

    iget-object v0, p0, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->plusFour:Lorg/google/googlejavaformat/Indent$Const;

    invoke-virtual {p2, v0}, Lorg/google/googlejavaformat/OpsBuilder;->open(Lorg/google/googlejavaformat/Indent;)V

    .line 4
    invoke-interface {p1}, Lorg/openjdk/source/tree/ConditionalExpressionTree;->getCondition()Lorg/openjdk/source/tree/ExpressionTree;

    move-result-object p2

    const/4 v0, 0x0

    invoke-virtual {p0, p2, v0}, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->scan(Lorg/openjdk/source/tree/Tree;Ljava/lang/Void;)Ljava/lang/Void;

    .line 5
    iget-object p2, p0, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lorg/google/googlejavaformat/OpsBuilder;

    const-string v1, " "

    invoke-virtual {p2, v1}, Lorg/google/googlejavaformat/OpsBuilder;->breakOp(Ljava/lang/String;)V

    .line 6
    const-string p2, "?"

    invoke-virtual {p0, p2}, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->token(Ljava/lang/String;)V

    .line 7
    iget-object p2, p0, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lorg/google/googlejavaformat/OpsBuilder;

    invoke-virtual {p2}, Lorg/google/googlejavaformat/OpsBuilder;->space()V

    .line 8
    invoke-interface {p1}, Lorg/openjdk/source/tree/ConditionalExpressionTree;->getTrueExpression()Lorg/openjdk/source/tree/ExpressionTree;

    move-result-object p2

    invoke-virtual {p0, p2, v0}, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->scan(Lorg/openjdk/source/tree/Tree;Ljava/lang/Void;)Ljava/lang/Void;

    .line 9
    iget-object p2, p0, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lorg/google/googlejavaformat/OpsBuilder;

    invoke-virtual {p2, v1}, Lorg/google/googlejavaformat/OpsBuilder;->breakOp(Ljava/lang/String;)V

    .line 10
    const-string p2, ":"

    invoke-virtual {p0, p2}, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->token(Ljava/lang/String;)V

    .line 11
    iget-object p2, p0, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lorg/google/googlejavaformat/OpsBuilder;

    invoke-virtual {p2}, Lorg/google/googlejavaformat/OpsBuilder;->space()V

    .line 12
    invoke-interface {p1}, Lorg/openjdk/source/tree/ConditionalExpressionTree;->getFalseExpression()Lorg/openjdk/source/tree/ExpressionTree;

    move-result-object p1

    invoke-virtual {p0, p1, v0}, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->scan(Lorg/openjdk/source/tree/Tree;Ljava/lang/Void;)Ljava/lang/Void;

    .line 13
    iget-object p1, p0, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lorg/google/googlejavaformat/OpsBuilder;

    invoke-virtual {p1}, Lorg/google/googlejavaformat/OpsBuilder;->close()V

    return-object v0
.end method

.method public bridge synthetic visitContinue(Lorg/openjdk/source/tree/ContinueTree;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            "node",
            "unused"
        }
    .end annotation

    .line 1
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->visitContinue(Lorg/openjdk/source/tree/ContinueTree;Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public visitContinue(Lorg/openjdk/source/tree/ContinueTree;Ljava/lang/Void;)Ljava/lang/Void;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "node",
            "unused"
        }
    .end annotation

    .line 2
    invoke-virtual {p0, p1}, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->sync(Lorg/openjdk/source/tree/Tree;)V

    .line 3
    iget-object p2, p0, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lorg/google/googlejavaformat/OpsBuilder;

    iget-object v0, p0, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->plusFour:Lorg/google/googlejavaformat/Indent$Const;

    invoke-virtual {p2, v0}, Lorg/google/googlejavaformat/OpsBuilder;->open(Lorg/google/googlejavaformat/Indent;)V

    .line 4
    const-string p2, "continue"

    invoke-virtual {p0, p2}, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->token(Ljava/lang/String;)V

    .line 5
    invoke-interface {p1}, Lorg/openjdk/source/tree/ContinueTree;->getLabel()Lorg/openjdk/javax/lang/model/element/Name;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 6
    iget-object p2, p0, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lorg/google/googlejavaformat/OpsBuilder;

    const-string v0, " "

    invoke-virtual {p2, v0}, Lorg/google/googlejavaformat/OpsBuilder;->breakOp(Ljava/lang/String;)V

    .line 7
    invoke-interface {p1}, Lorg/openjdk/source/tree/ContinueTree;->getLabel()Lorg/openjdk/javax/lang/model/element/Name;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->visit(Lorg/openjdk/javax/lang/model/element/Name;)Z

    .line 8
    :cond_0
    const-string p1, ";"

    invoke-virtual {p0, p1}, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->token(Ljava/lang/String;)V

    .line 9
    iget-object p1, p0, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lorg/google/googlejavaformat/OpsBuilder;

    invoke-virtual {p1}, Lorg/google/googlejavaformat/OpsBuilder;->close()V

    const/4 p1, 0x0

    return-object p1
.end method

.method public bridge synthetic visitDoWhileLoop(Lorg/openjdk/source/tree/DoWhileLoopTree;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            "node",
            "unused"
        }
    .end annotation

    .line 1
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->visitDoWhileLoop(Lorg/openjdk/source/tree/DoWhileLoopTree;Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public visitDoWhileLoop(Lorg/openjdk/source/tree/DoWhileLoopTree;Ljava/lang/Void;)Ljava/lang/Void;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "node",
            "unused"
        }
    .end annotation

    .line 2
    invoke-virtual {p0, p1}, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->sync(Lorg/openjdk/source/tree/Tree;)V

    .line 3
    const-string p2, "do"

    invoke-virtual {p0, p2}, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->token(Ljava/lang/String;)V

    .line 4
    invoke-interface {p1}, Lorg/openjdk/source/tree/DoWhileLoopTree;->getStatement()Lorg/openjdk/source/tree/StatementTree;

    move-result-object p2

    sget-object v0, Lorg/google/googlejavaformat/java/JavaInputAstVisitor$CollapseEmptyOrNot;->YES:Lorg/google/googlejavaformat/java/JavaInputAstVisitor$CollapseEmptyOrNot;

    sget-object v1, Lorg/google/googlejavaformat/java/JavaInputAstVisitor$AllowLeadingBlankLine;->YES:Lorg/google/googlejavaformat/java/JavaInputAstVisitor$AllowLeadingBlankLine;

    sget-object v2, Lorg/google/googlejavaformat/java/JavaInputAstVisitor$AllowTrailingBlankLine;->YES:Lorg/google/googlejavaformat/java/JavaInputAstVisitor$AllowTrailingBlankLine;

    .line 5
    invoke-direct {p0, p2, v0, v1, v2}, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->visitStatement(Lorg/openjdk/source/tree/StatementTree;Lorg/google/googlejavaformat/java/JavaInputAstVisitor$CollapseEmptyOrNot;Lorg/google/googlejavaformat/java/JavaInputAstVisitor$AllowLeadingBlankLine;Lorg/google/googlejavaformat/java/JavaInputAstVisitor$AllowTrailingBlankLine;)V

    .line 6
    invoke-interface {p1}, Lorg/openjdk/source/tree/DoWhileLoopTree;->getStatement()Lorg/openjdk/source/tree/StatementTree;

    move-result-object p2

    invoke-interface {p2}, Lorg/openjdk/source/tree/Tree;->getKind()Lorg/openjdk/source/tree/Tree$Kind;

    move-result-object p2

    sget-object v0, Lorg/openjdk/source/tree/Tree$Kind;->BLOCK:Lorg/openjdk/source/tree/Tree$Kind;

    if-ne p2, v0, :cond_0

    .line 7
    iget-object p2, p0, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lorg/google/googlejavaformat/OpsBuilder;

    invoke-virtual {p2}, Lorg/google/googlejavaformat/OpsBuilder;->space()V

    goto :goto_0

    .line 8
    :cond_0
    iget-object p2, p0, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lorg/google/googlejavaformat/OpsBuilder;

    const-string v0, " "

    invoke-virtual {p2, v0}, Lorg/google/googlejavaformat/OpsBuilder;->breakOp(Ljava/lang/String;)V

    .line 9
    :goto_0
    const-string p2, "while"

    invoke-virtual {p0, p2}, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->token(Ljava/lang/String;)V

    .line 10
    iget-object p2, p0, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lorg/google/googlejavaformat/OpsBuilder;

    invoke-virtual {p2}, Lorg/google/googlejavaformat/OpsBuilder;->space()V

    .line 11
    const-string p2, "("

    invoke-virtual {p0, p2}, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->token(Ljava/lang/String;)V

    .line 12
    invoke-interface {p1}, Lorg/openjdk/source/tree/DoWhileLoopTree;->getCondition()Lorg/openjdk/source/tree/ExpressionTree;

    move-result-object p1

    invoke-static {p1}, Lorg/google/googlejavaformat/java/Trees;->skipParen(Lorg/openjdk/source/tree/ExpressionTree;)Lorg/openjdk/source/tree/ExpressionTree;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2}, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->scan(Lorg/openjdk/source/tree/Tree;Ljava/lang/Void;)Ljava/lang/Void;

    .line 13
    const-string p1, ")"

    invoke-virtual {p0, p1}, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->token(Ljava/lang/String;)V

    .line 14
    const-string p1, ";"

    invoke-virtual {p0, p1}, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->token(Ljava/lang/String;)V

    return-object p2
.end method

.method public visitDot(Lorg/openjdk/source/tree/ExpressionTree;)V
    .locals 11
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "node0"
        }
    .end annotation

    const/4 v0, 0x1

    new-instance v1, Ljava/util/ArrayDeque;

    invoke-direct {v1}, Ljava/util/ArrayDeque;-><init>()V

    :cond_0
    invoke-interface {v1, p1}, Ljava/util/Deque;->addFirst(Ljava/lang/Object;)V

    invoke-interface {p1}, Lorg/openjdk/source/tree/Tree;->getKind()Lorg/openjdk/source/tree/Tree$Kind;

    move-result-object v2

    sget-object v3, Lorg/openjdk/source/tree/Tree$Kind;->ARRAY_ACCESS:Lorg/openjdk/source/tree/Tree$Kind;

    if-ne v2, v3, :cond_1

    invoke-direct {p0, p1}, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->getArrayBase(Lorg/openjdk/source/tree/ExpressionTree;)Lorg/openjdk/source/tree/ExpressionTree;

    move-result-object p1

    :cond_1
    sget-object v2, Lorg/google/googlejavaformat/java/JavaInputAstVisitor$2;->$SwitchMap$org$openjdk$source$tree$Tree$Kind:[I

    invoke-interface {p1}, Lorg/openjdk/source/tree/Tree;->getKind()Lorg/openjdk/source/tree/Tree$Kind;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aget v2, v2, v3

    const/4 v3, 0x0

    packed-switch v2, :pswitch_data_0

    invoke-interface {v1}, Ljava/util/Deque;->removeFirst()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/openjdk/source/tree/ExpressionTree;

    goto :goto_1

    :pswitch_0
    move-object p1, v3

    goto :goto_1

    :pswitch_1
    check-cast p1, Lorg/openjdk/source/tree/MethodInvocationTree;

    invoke-direct {p0, p1}, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->getMethodReceiver(Lorg/openjdk/source/tree/MethodInvocationTree;)Lorg/openjdk/source/tree/ExpressionTree;

    move-result-object p1

    goto :goto_0

    :pswitch_2
    check-cast p1, Lorg/openjdk/source/tree/MemberSelectTree;

    invoke-interface {p1}, Lorg/openjdk/source/tree/MemberSelectTree;->getExpression()Lorg/openjdk/source/tree/ExpressionTree;

    move-result-object p1

    :goto_0
    if-nez p1, :cond_0

    :goto_1
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const/4 v4, 0x0

    if-eqz p1, :cond_3

    invoke-interface {p1}, Lorg/openjdk/source/tree/Tree;->getKind()Lorg/openjdk/source/tree/Tree$Kind;

    move-result-object v5

    sget-object v6, Lorg/openjdk/source/tree/Tree$Kind;->NEW_CLASS:Lorg/openjdk/source/tree/Tree$Kind;

    if-ne v5, v6, :cond_2

    move-object v5, p1

    check-cast v5, Lorg/openjdk/source/tree/NewClassTree;

    invoke-interface {v5}, Lorg/openjdk/source/tree/NewClassTree;->getClassBody()Lorg/openjdk/source/tree/ClassTree;

    move-result-object v5

    if-eqz v5, :cond_2

    iget-object v5, p0, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lorg/google/googlejavaformat/OpsBuilder;

    sget-object v6, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->ZERO:Lorg/google/googlejavaformat/Indent$Const;

    invoke-virtual {v5, v6}, Lorg/google/googlejavaformat/OpsBuilder;->open(Lorg/google/googlejavaformat/Indent;)V

    invoke-direct {p0, p1}, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->getArrayBase(Lorg/openjdk/source/tree/ExpressionTree;)Lorg/openjdk/source/tree/ExpressionTree;

    move-result-object v5

    invoke-virtual {p0, v5, v3}, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->scan(Lorg/openjdk/source/tree/Tree;Ljava/lang/Void;)Ljava/lang/Void;

    const-string v3, "."

    invoke-virtual {p0, v3}, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->token(Ljava/lang/String;)V

    move v3, v4

    goto :goto_2

    :cond_2
    iget-object v5, p0, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lorg/google/googlejavaformat/OpsBuilder;

    iget-object v6, p0, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->plusFour:Lorg/google/googlejavaformat/Indent$Const;

    invoke-virtual {v5, v6}, Lorg/google/googlejavaformat/OpsBuilder;->open(Lorg/google/googlejavaformat/Indent;)V

    invoke-direct {p0, p1}, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->getArrayBase(Lorg/openjdk/source/tree/ExpressionTree;)Lorg/openjdk/source/tree/ExpressionTree;

    move-result-object v5

    invoke-virtual {p0, v5, v3}, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->scan(Lorg/openjdk/source/tree/Tree;Ljava/lang/Void;)Ljava/lang/Void;

    iget-object v3, p0, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lorg/google/googlejavaformat/OpsBuilder;

    invoke-virtual {v3}, Lorg/google/googlejavaformat/OpsBuilder;->breakOp()V

    move v3, v0

    :goto_2
    invoke-direct {p0, p1}, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->getArrayIndices(Lorg/openjdk/source/tree/ExpressionTree;)Ljava/util/Deque;

    move-result-object v5

    invoke-direct {p0, v5}, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->formatArrayIndices(Ljava/util/Deque;)V

    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_4

    iget-object p1, p0, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lorg/google/googlejavaformat/OpsBuilder;

    invoke-virtual {p1}, Lorg/google/googlejavaformat/OpsBuilder;->close()V

    return-void

    :cond_3
    move v3, v4

    :cond_4
    invoke-direct {p0, v1}, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->simpleNames(Ljava/util/Deque;)Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Lorg/google/googlejavaformat/java/TypeNameClassifier;->typePrefixLength(Ljava/util/List;)I

    move-result v1

    const/4 v5, -0x1

    move v6, v4

    move v7, v6

    move v8, v5

    :goto_3
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v9

    if-ge v6, v9, :cond_8

    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/openjdk/source/tree/ExpressionTree;

    invoke-interface {v9}, Lorg/openjdk/source/tree/Tree;->getKind()Lorg/openjdk/source/tree/Tree$Kind;

    move-result-object v9

    sget-object v10, Lorg/openjdk/source/tree/Tree$Kind;->METHOD_INVOCATION:Lorg/openjdk/source/tree/Tree$Kind;

    if-ne v9, v10, :cond_7

    if-gtz v6, :cond_5

    if-eqz p1, :cond_6

    :cond_5
    add-int/2addr v7, v0

    :cond_6
    if-gez v8, :cond_7

    move v8, v6

    :cond_7
    add-int/2addr v6, v0

    goto :goto_3

    :cond_8
    if-ne v7, v0, :cond_9

    move v1, v8

    :cond_9
    if-ne v1, v5, :cond_a

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    instance-of v5, v5, Lorg/openjdk/source/tree/IdentifierTree;

    if-eqz v5, :cond_a

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/openjdk/source/tree/IdentifierTree;

    invoke-interface {v4}, Lorg/openjdk/source/tree/IdentifierTree;->getName()Lorg/openjdk/javax/lang/model/element/Name;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    const-string v5, "this"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_b

    const-string v5, "super"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_b

    :cond_a
    move v0, v1

    :cond_b
    if-lez v0, :cond_c

    invoke-direct {p0, v2, v3, v0}, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->visitDotWithPrefix(Ljava/util/List;ZI)V

    goto :goto_4

    :cond_c
    invoke-direct {p0, v2, v3}, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->visitRegularDot(Ljava/util/List;Z)V

    :goto_4
    if-eqz p1, :cond_d

    iget-object p1, p0, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lorg/google/googlejavaformat/OpsBuilder;

    invoke-virtual {p1}, Lorg/google/googlejavaformat/OpsBuilder;->close()V

    :cond_d
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public bridge synthetic visitEmptyStatement(Lorg/openjdk/source/tree/EmptyStatementTree;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            "node",
            "unused"
        }
    .end annotation

    .line 1
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->visitEmptyStatement(Lorg/openjdk/source/tree/EmptyStatementTree;Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public visitEmptyStatement(Lorg/openjdk/source/tree/EmptyStatementTree;Ljava/lang/Void;)Ljava/lang/Void;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "node",
            "unused"
        }
    .end annotation

    .line 2
    invoke-virtual {p0, p1}, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->sync(Lorg/openjdk/source/tree/Tree;)V

    .line 3
    invoke-direct {p0}, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->dropEmptyDeclarations()V

    const/4 p1, 0x0

    return-object p1
.end method

.method public bridge synthetic visitEnhancedForLoop(Lorg/openjdk/source/tree/EnhancedForLoopTree;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            "node",
            "unused"
        }
    .end annotation

    .line 1
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->visitEnhancedForLoop(Lorg/openjdk/source/tree/EnhancedForLoopTree;Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public visitEnhancedForLoop(Lorg/openjdk/source/tree/EnhancedForLoopTree;Ljava/lang/Void;)Ljava/lang/Void;
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "node",
            "unused"
        }
    .end annotation

    .line 2
    invoke-virtual {p0, p1}, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->sync(Lorg/openjdk/source/tree/Tree;)V

    .line 3
    iget-object p2, p0, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lorg/google/googlejavaformat/OpsBuilder;

    sget-object v0, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->ZERO:Lorg/google/googlejavaformat/Indent$Const;

    invoke-virtual {p2, v0}, Lorg/google/googlejavaformat/OpsBuilder;->open(Lorg/google/googlejavaformat/Indent;)V

    .line 4
    const-string p2, "for"

    invoke-virtual {p0, p2}, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->token(Ljava/lang/String;)V

    .line 5
    iget-object p2, p0, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lorg/google/googlejavaformat/OpsBuilder;

    invoke-virtual {p2}, Lorg/google/googlejavaformat/OpsBuilder;->space()V

    .line 6
    const-string p2, "("

    invoke-virtual {p0, p2}, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->token(Ljava/lang/String;)V

    .line 7
    iget-object p2, p0, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lorg/google/googlejavaformat/OpsBuilder;

    invoke-virtual {p2, v0}, Lorg/google/googlejavaformat/OpsBuilder;->open(Lorg/google/googlejavaformat/Indent;)V

    .line 8
    sget-object v2, Lorg/google/googlejavaformat/java/JavaInputAstVisitor$DeclarationKind;->NONE:Lorg/google/googlejavaformat/java/JavaInputAstVisitor$DeclarationKind;

    sget-object v3, Lorg/google/googlejavaformat/java/JavaInputAstVisitor$Direction;->HORIZONTAL:Lorg/google/googlejavaformat/java/JavaInputAstVisitor$Direction;

    .line 9
    invoke-interface {p1}, Lorg/openjdk/source/tree/EnhancedForLoopTree;->getVariable()Lorg/openjdk/source/tree/VariableTree;

    move-result-object v4

    .line 10
    invoke-interface {p1}, Lorg/openjdk/source/tree/EnhancedForLoopTree;->getExpression()Lorg/openjdk/source/tree/ExpressionTree;

    move-result-object p2

    invoke-static {p2}, Lw2/C;->f(Ljava/lang/Object;)Lw2/C;

    move-result-object v5

    const-string v6, ":"

    .line 11
    invoke-static {}, Lw2/C;->a()Lw2/C;

    move-result-object v7

    move-object v1, p0

    .line 12
    invoke-direct/range {v1 .. v7}, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->visitToDeclare(Lorg/google/googlejavaformat/java/JavaInputAstVisitor$DeclarationKind;Lorg/google/googlejavaformat/java/JavaInputAstVisitor$Direction;Lorg/openjdk/source/tree/VariableTree;Lw2/C;Ljava/lang/String;Lw2/C;)V

    .line 13
    iget-object p2, p0, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lorg/google/googlejavaformat/OpsBuilder;

    invoke-virtual {p2}, Lorg/google/googlejavaformat/OpsBuilder;->close()V

    .line 14
    const-string p2, ")"

    invoke-virtual {p0, p2}, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->token(Ljava/lang/String;)V

    .line 15
    iget-object p2, p0, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lorg/google/googlejavaformat/OpsBuilder;

    invoke-virtual {p2}, Lorg/google/googlejavaformat/OpsBuilder;->close()V

    .line 16
    invoke-interface {p1}, Lorg/openjdk/source/tree/EnhancedForLoopTree;->getStatement()Lorg/openjdk/source/tree/StatementTree;

    move-result-object p1

    sget-object p2, Lorg/google/googlejavaformat/java/JavaInputAstVisitor$CollapseEmptyOrNot;->YES:Lorg/google/googlejavaformat/java/JavaInputAstVisitor$CollapseEmptyOrNot;

    sget-object v0, Lorg/google/googlejavaformat/java/JavaInputAstVisitor$AllowLeadingBlankLine;->YES:Lorg/google/googlejavaformat/java/JavaInputAstVisitor$AllowLeadingBlankLine;

    sget-object v1, Lorg/google/googlejavaformat/java/JavaInputAstVisitor$AllowTrailingBlankLine;->NO:Lorg/google/googlejavaformat/java/JavaInputAstVisitor$AllowTrailingBlankLine;

    .line 17
    invoke-direct {p0, p1, p2, v0, v1}, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->visitStatement(Lorg/openjdk/source/tree/StatementTree;Lorg/google/googlejavaformat/java/JavaInputAstVisitor$CollapseEmptyOrNot;Lorg/google/googlejavaformat/java/JavaInputAstVisitor$AllowLeadingBlankLine;Lorg/google/googlejavaformat/java/JavaInputAstVisitor$AllowTrailingBlankLine;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public visitEnumDeclaration(Lorg/openjdk/source/tree/ClassTree;)Z
    .locals 11
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "node"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->sync(Lorg/openjdk/source/tree/Tree;)V

    iget-object v0, p0, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lorg/google/googlejavaformat/OpsBuilder;

    sget-object v1, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->ZERO:Lorg/google/googlejavaformat/Indent$Const;

    invoke-virtual {v0, v1}, Lorg/google/googlejavaformat/OpsBuilder;->open(Lorg/google/googlejavaformat/Indent;)V

    invoke-interface {p1}, Lorg/openjdk/source/tree/ClassTree;->getModifiers()Lorg/openjdk/source/tree/ModifiersTree;

    move-result-object v0

    sget-object v2, Lorg/google/googlejavaformat/java/JavaInputAstVisitor$Direction;->VERTICAL:Lorg/google/googlejavaformat/java/JavaInputAstVisitor$Direction;

    invoke-static {}, Lw2/C;->a()Lw2/C;

    move-result-object v3

    invoke-virtual {p0, v0, v2, v3}, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->visitAndBreakModifiers(Lorg/openjdk/source/tree/ModifiersTree;Lorg/google/googlejavaformat/java/JavaInputAstVisitor$Direction;Lw2/C;)V

    iget-object v0, p0, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lorg/google/googlejavaformat/OpsBuilder;

    iget-object v2, p0, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->plusFour:Lorg/google/googlejavaformat/Indent$Const;

    invoke-virtual {v0, v2}, Lorg/google/googlejavaformat/OpsBuilder;->open(Lorg/google/googlejavaformat/Indent;)V

    const-string v0, "enum"

    invoke-virtual {p0, v0}, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->token(Ljava/lang/String;)V

    iget-object v0, p0, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lorg/google/googlejavaformat/OpsBuilder;

    const-string v2, " "

    invoke-virtual {v0, v2}, Lorg/google/googlejavaformat/OpsBuilder;->breakOp(Ljava/lang/String;)V

    invoke-interface {p1}, Lorg/openjdk/source/tree/ClassTree;->getSimpleName()Lorg/openjdk/javax/lang/model/element/Name;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->visit(Lorg/openjdk/javax/lang/model/element/Name;)Z

    iget-object v0, p0, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lorg/google/googlejavaformat/OpsBuilder;

    invoke-virtual {v0}, Lorg/google/googlejavaformat/OpsBuilder;->close()V

    iget-object v0, p0, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lorg/google/googlejavaformat/OpsBuilder;

    invoke-virtual {v0}, Lorg/google/googlejavaformat/OpsBuilder;->close()V

    invoke-interface {p1}, Lorg/openjdk/source/tree/ClassTree;->getImplementsClause()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v3, 0x1

    const/4 v4, 0x0

    const-string v5, ","

    if-nez v0, :cond_2

    iget-object v0, p0, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lorg/google/googlejavaformat/OpsBuilder;

    iget-object v6, p0, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->plusFour:Lorg/google/googlejavaformat/Indent$Const;

    invoke-virtual {v0, v6}, Lorg/google/googlejavaformat/OpsBuilder;->open(Lorg/google/googlejavaformat/Indent;)V

    iget-object v0, p0, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lorg/google/googlejavaformat/OpsBuilder;

    invoke-virtual {v0, v2}, Lorg/google/googlejavaformat/OpsBuilder;->breakOp(Ljava/lang/String;)V

    iget-object v0, p0, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lorg/google/googlejavaformat/OpsBuilder;

    iget-object v6, p0, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->plusFour:Lorg/google/googlejavaformat/Indent$Const;

    invoke-virtual {v0, v6}, Lorg/google/googlejavaformat/OpsBuilder;->open(Lorg/google/googlejavaformat/Indent;)V

    const-string v0, "implements"

    invoke-virtual {p0, v0}, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->token(Ljava/lang/String;)V

    iget-object v0, p0, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lorg/google/googlejavaformat/OpsBuilder;

    invoke-virtual {v0, v2}, Lorg/google/googlejavaformat/OpsBuilder;->breakOp(Ljava/lang/String;)V

    iget-object v0, p0, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lorg/google/googlejavaformat/OpsBuilder;

    invoke-virtual {v0, v1}, Lorg/google/googlejavaformat/OpsBuilder;->open(Lorg/google/googlejavaformat/Indent;)V

    invoke-interface {p1}, Lorg/openjdk/source/tree/ClassTree;->getImplementsClause()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    move v1, v3

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/openjdk/source/tree/Tree;

    if-nez v1, :cond_0

    invoke-virtual {p0, v5}, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->token(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lorg/google/googlejavaformat/OpsBuilder;

    invoke-virtual {v1, v2}, Lorg/google/googlejavaformat/OpsBuilder;->breakToFill(Ljava/lang/String;)V

    :cond_0
    const/4 v1, 0x0

    invoke-virtual {p0, v6, v1}, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->scan(Lorg/openjdk/source/tree/Tree;Ljava/lang/Void;)Ljava/lang/Void;

    move v1, v4

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lorg/google/googlejavaformat/OpsBuilder;

    invoke-virtual {v0}, Lorg/google/googlejavaformat/OpsBuilder;->close()V

    iget-object v0, p0, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lorg/google/googlejavaformat/OpsBuilder;

    invoke-virtual {v0}, Lorg/google/googlejavaformat/OpsBuilder;->close()V

    iget-object v0, p0, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lorg/google/googlejavaformat/OpsBuilder;

    invoke-virtual {v0}, Lorg/google/googlejavaformat/OpsBuilder;->close()V

    :cond_2
    iget-object v0, p0, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lorg/google/googlejavaformat/OpsBuilder;

    invoke-virtual {v0}, Lorg/google/googlejavaformat/OpsBuilder;->space()V

    const-string v0, "{"

    iget-object v1, p0, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->plusTwo:Lorg/google/googlejavaformat/Indent$Const;

    invoke-virtual {p0, v0, v1}, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->tokenBreakTrailingComment(Ljava/lang/String;Lorg/google/googlejavaformat/Indent;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Lorg/openjdk/source/tree/ClassTree;->getMembers()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/openjdk/source/tree/Tree;

    instance-of v6, v2, Lorg/openjdk/tools/javac/tree/JCTree$JCVariableDecl;

    if-eqz v6, :cond_3

    move-object v6, v2

    check-cast v6, Lorg/openjdk/tools/javac/tree/JCTree$JCVariableDecl;

    iget-object v7, v6, Lorg/openjdk/tools/javac/tree/JCTree$JCVariableDecl;->mods:Lorg/openjdk/tools/javac/tree/JCTree$JCModifiers;

    iget-wide v7, v7, Lorg/openjdk/tools/javac/tree/JCTree$JCModifiers;->flags:J

    const-wide/16 v9, 0x4000

    and-long/2addr v7, v9

    cmp-long v7, v7, v9

    if-nez v7, :cond_3

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_4
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    const-string v2, "}"

    const-string v6, ";"

    if-eqz p1, :cond_6

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_6

    iget-object p1, p0, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lorg/google/googlejavaformat/OpsBuilder;

    invoke-virtual {p1}, Lorg/google/googlejavaformat/OpsBuilder;->peekToken()Lw2/C;

    move-result-object p1

    invoke-static {v6}, Lw2/C;->f(Ljava/lang/Object;)Lw2/C;

    move-result-object v0

    invoke-virtual {p1, v0}, Lw2/C;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    iget-object p1, p0, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lorg/google/googlejavaformat/OpsBuilder;

    iget-object v0, p0, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->plusTwo:Lorg/google/googlejavaformat/Indent$Const;

    invoke-virtual {p1, v0}, Lorg/google/googlejavaformat/OpsBuilder;->open(Lorg/google/googlejavaformat/Indent;)V

    iget-object p1, p0, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lorg/google/googlejavaformat/OpsBuilder;

    invoke-virtual {p1}, Lorg/google/googlejavaformat/OpsBuilder;->forcedBreak()V

    invoke-virtual {p0, v6}, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->token(Ljava/lang/String;)V

    iget-object p1, p0, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lorg/google/googlejavaformat/OpsBuilder;

    invoke-virtual {p1}, Lorg/google/googlejavaformat/OpsBuilder;->forcedBreak()V

    invoke-direct {p0}, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->dropEmptyDeclarations()V

    iget-object p1, p0, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lorg/google/googlejavaformat/OpsBuilder;

    invoke-virtual {p1}, Lorg/google/googlejavaformat/OpsBuilder;->close()V

    iget-object p1, p0, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lorg/google/googlejavaformat/OpsBuilder;

    sget-object v0, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->ZERO:Lorg/google/googlejavaformat/Indent$Const;

    invoke-virtual {p1, v0}, Lorg/google/googlejavaformat/OpsBuilder;->open(Lorg/google/googlejavaformat/Indent;)V

    iget-object p1, p0, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lorg/google/googlejavaformat/OpsBuilder;

    invoke-virtual {p1}, Lorg/google/googlejavaformat/OpsBuilder;->forcedBreak()V

    iget-object p1, p0, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lorg/google/googlejavaformat/OpsBuilder;

    sget-object v0, Lorg/google/googlejavaformat/OpsBuilder$BlankLineWanted;->NO:Lorg/google/googlejavaformat/OpsBuilder$BlankLineWanted;

    invoke-virtual {p1, v0}, Lorg/google/googlejavaformat/OpsBuilder;->blankLineWanted(Lorg/google/googlejavaformat/OpsBuilder$BlankLineWanted;)V

    iget-object p1, p0, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->plusTwo:Lorg/google/googlejavaformat/Indent$Const;

    invoke-virtual {p0, v2, p1}, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->token(Ljava/lang/String;Lorg/google/googlejavaformat/Indent;)V

    iget-object p1, p0, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lorg/google/googlejavaformat/OpsBuilder;

    invoke-virtual {p1}, Lorg/google/googlejavaformat/OpsBuilder;->close()V

    goto/16 :goto_3

    :cond_5
    iget-object p1, p0, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lorg/google/googlejavaformat/OpsBuilder;

    sget-object v0, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->ZERO:Lorg/google/googlejavaformat/Indent$Const;

    invoke-virtual {p1, v0}, Lorg/google/googlejavaformat/OpsBuilder;->open(Lorg/google/googlejavaformat/Indent;)V

    iget-object p1, p0, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lorg/google/googlejavaformat/OpsBuilder;

    sget-object v0, Lorg/google/googlejavaformat/OpsBuilder$BlankLineWanted;->NO:Lorg/google/googlejavaformat/OpsBuilder$BlankLineWanted;

    invoke-virtual {p1, v0}, Lorg/google/googlejavaformat/OpsBuilder;->blankLineWanted(Lorg/google/googlejavaformat/OpsBuilder$BlankLineWanted;)V

    invoke-virtual {p0, v2}, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->token(Ljava/lang/String;)V

    iget-object p1, p0, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lorg/google/googlejavaformat/OpsBuilder;

    invoke-virtual {p1}, Lorg/google/googlejavaformat/OpsBuilder;->close()V

    goto/16 :goto_3

    :cond_6
    iget-object p1, p0, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lorg/google/googlejavaformat/OpsBuilder;

    iget-object v7, p0, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->plusTwo:Lorg/google/googlejavaformat/Indent$Const;

    invoke-virtual {p1, v7}, Lorg/google/googlejavaformat/OpsBuilder;->open(Lorg/google/googlejavaformat/Indent;)V

    iget-object p1, p0, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lorg/google/googlejavaformat/OpsBuilder;

    sget-object v7, Lorg/google/googlejavaformat/OpsBuilder$BlankLineWanted;->NO:Lorg/google/googlejavaformat/OpsBuilder$BlankLineWanted;

    invoke-virtual {p1, v7}, Lorg/google/googlejavaformat/OpsBuilder;->blankLineWanted(Lorg/google/googlejavaformat/OpsBuilder$BlankLineWanted;)V

    iget-object p1, p0, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lorg/google/googlejavaformat/OpsBuilder;

    invoke-virtual {p1}, Lorg/google/googlejavaformat/OpsBuilder;->forcedBreak()V

    iget-object p1, p0, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lorg/google/googlejavaformat/OpsBuilder;

    sget-object v7, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->ZERO:Lorg/google/googlejavaformat/Indent$Const;

    invoke-virtual {p1, v7}, Lorg/google/googlejavaformat/OpsBuilder;->open(Lorg/google/googlejavaformat/Indent;)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/openjdk/source/tree/VariableTree;

    if-nez v3, :cond_7

    invoke-virtual {p0, v5}, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->token(Ljava/lang/String;)V

    iget-object v3, p0, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lorg/google/googlejavaformat/OpsBuilder;

    invoke-virtual {v3}, Lorg/google/googlejavaformat/OpsBuilder;->forcedBreak()V

    iget-object v3, p0, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lorg/google/googlejavaformat/OpsBuilder;

    sget-object v7, Lorg/google/googlejavaformat/OpsBuilder$BlankLineWanted;->PRESERVE:Lorg/google/googlejavaformat/OpsBuilder$BlankLineWanted;

    invoke-virtual {v3, v7}, Lorg/google/googlejavaformat/OpsBuilder;->blankLineWanted(Lorg/google/googlejavaformat/OpsBuilder$BlankLineWanted;)V

    :cond_7
    invoke-direct {p0}, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->markForPartialFormat()V

    invoke-direct {p0, v0}, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->visitEnumConstantDeclaration(Lorg/openjdk/source/tree/VariableTree;)V

    move v3, v4

    goto :goto_2

    :cond_8
    iget-object p1, p0, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lorg/google/googlejavaformat/OpsBuilder;

    invoke-virtual {p1}, Lorg/google/googlejavaformat/OpsBuilder;->peekToken()Lw2/C;

    move-result-object p1

    const-string v0, ""

    invoke-virtual {p1, v0}, Lw2/C;->g(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_9

    invoke-virtual {p0, v5}, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->token(Ljava/lang/String;)V

    iget-object p1, p0, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lorg/google/googlejavaformat/OpsBuilder;

    invoke-virtual {p1}, Lorg/google/googlejavaformat/OpsBuilder;->forcedBreak()V

    :cond_9
    iget-object p1, p0, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lorg/google/googlejavaformat/OpsBuilder;

    invoke-virtual {p1}, Lorg/google/googlejavaformat/OpsBuilder;->close()V

    iget-object p1, p0, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lorg/google/googlejavaformat/OpsBuilder;

    invoke-virtual {p1}, Lorg/google/googlejavaformat/OpsBuilder;->close()V

    iget-object p1, p0, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lorg/google/googlejavaformat/OpsBuilder;

    invoke-virtual {p1}, Lorg/google/googlejavaformat/OpsBuilder;->peekToken()Lw2/C;

    move-result-object p1

    invoke-static {v6}, Lw2/C;->f(Ljava/lang/Object;)Lw2/C;

    move-result-object v0

    invoke-virtual {p1, v0}, Lw2/C;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_a

    iget-object p1, p0, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lorg/google/googlejavaformat/OpsBuilder;

    iget-object v0, p0, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->plusTwo:Lorg/google/googlejavaformat/Indent$Const;

    invoke-virtual {p1, v0}, Lorg/google/googlejavaformat/OpsBuilder;->open(Lorg/google/googlejavaformat/Indent;)V

    invoke-virtual {p0, v6}, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->token(Ljava/lang/String;)V

    iget-object p1, p0, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lorg/google/googlejavaformat/OpsBuilder;

    invoke-virtual {p1}, Lorg/google/googlejavaformat/OpsBuilder;->forcedBreak()V

    invoke-direct {p0}, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->dropEmptyDeclarations()V

    iget-object p1, p0, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lorg/google/googlejavaformat/OpsBuilder;

    invoke-virtual {p1}, Lorg/google/googlejavaformat/OpsBuilder;->close()V

    :cond_a
    iget-object p1, p0, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lorg/google/googlejavaformat/OpsBuilder;

    sget-object v0, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->ZERO:Lorg/google/googlejavaformat/Indent$Const;

    invoke-virtual {p1, v0}, Lorg/google/googlejavaformat/OpsBuilder;->open(Lorg/google/googlejavaformat/Indent;)V

    sget-object p1, Lorg/google/googlejavaformat/java/JavaInputAstVisitor$BracesOrNot;->NO:Lorg/google/googlejavaformat/java/JavaInputAstVisitor$BracesOrNot;

    sget-object v0, Lorg/google/googlejavaformat/java/JavaInputAstVisitor$FirstDeclarationsOrNot;->NO:Lorg/google/googlejavaformat/java/JavaInputAstVisitor$FirstDeclarationsOrNot;

    invoke-virtual {p0, v1, p1, v0}, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->addBodyDeclarations(Ljava/util/List;Lorg/google/googlejavaformat/java/JavaInputAstVisitor$BracesOrNot;Lorg/google/googlejavaformat/java/JavaInputAstVisitor$FirstDeclarationsOrNot;)V

    iget-object p1, p0, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lorg/google/googlejavaformat/OpsBuilder;

    invoke-virtual {p1}, Lorg/google/googlejavaformat/OpsBuilder;->forcedBreak()V

    iget-object p1, p0, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lorg/google/googlejavaformat/OpsBuilder;

    sget-object v0, Lorg/google/googlejavaformat/OpsBuilder$BlankLineWanted;->NO:Lorg/google/googlejavaformat/OpsBuilder$BlankLineWanted;

    invoke-virtual {p1, v0}, Lorg/google/googlejavaformat/OpsBuilder;->blankLineWanted(Lorg/google/googlejavaformat/OpsBuilder$BlankLineWanted;)V

    iget-object p1, p0, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->plusTwo:Lorg/google/googlejavaformat/Indent$Const;

    invoke-virtual {p0, v2, p1}, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->token(Ljava/lang/String;Lorg/google/googlejavaformat/Indent;)V

    iget-object p1, p0, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lorg/google/googlejavaformat/OpsBuilder;

    invoke-virtual {p1}, Lorg/google/googlejavaformat/OpsBuilder;->close()V

    :goto_3
    iget-object p1, p0, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lorg/google/googlejavaformat/OpsBuilder;

    invoke-virtual {p1, v6}, Lorg/google/googlejavaformat/OpsBuilder;->guessToken(Ljava/lang/String;)V

    return v4
.end method

.method public bridge synthetic visitExports(Lorg/openjdk/source/tree/ExportsTree;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            "node",
            "unused"
        }
    .end annotation

    .line 1
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->visitExports(Lorg/openjdk/source/tree/ExportsTree;Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public visitExports(Lorg/openjdk/source/tree/ExportsTree;Ljava/lang/Void;)Ljava/lang/Void;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "node",
            "unused"
        }
    .end annotation

    .line 2
    invoke-interface {p1}, Lorg/openjdk/source/tree/ExportsTree;->getPackageName()Lorg/openjdk/source/tree/ExpressionTree;

    move-result-object p2

    invoke-interface {p1}, Lorg/openjdk/source/tree/ExportsTree;->getModuleNames()Ljava/util/List;

    move-result-object p1

    const-string v0, "exports"

    const-string v1, "to"

    invoke-direct {p0, v0, v1, p2, p1}, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->visitDirective(Ljava/lang/String;Ljava/lang/String;Lorg/openjdk/source/tree/ExpressionTree;Ljava/util/List;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public bridge synthetic visitExpressionStatement(Lorg/openjdk/source/tree/ExpressionStatementTree;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            "node",
            "unused"
        }
    .end annotation

    .line 1
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->visitExpressionStatement(Lorg/openjdk/source/tree/ExpressionStatementTree;Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public visitExpressionStatement(Lorg/openjdk/source/tree/ExpressionStatementTree;Ljava/lang/Void;)Ljava/lang/Void;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "node",
            "unused"
        }
    .end annotation

    .line 2
    invoke-virtual {p0, p1}, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->sync(Lorg/openjdk/source/tree/Tree;)V

    .line 3
    invoke-interface {p1}, Lorg/openjdk/source/tree/ExpressionStatementTree;->getExpression()Lorg/openjdk/source/tree/ExpressionTree;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2}, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->scan(Lorg/openjdk/source/tree/Tree;Ljava/lang/Void;)Ljava/lang/Void;

    .line 4
    const-string p1, ";"

    invoke-virtual {p0, p1}, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->token(Ljava/lang/String;)V

    return-object p2
.end method

.method public bridge synthetic visitForLoop(Lorg/openjdk/source/tree/ForLoopTree;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            "node",
            "unused"
        }
    .end annotation

    .line 1
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->visitForLoop(Lorg/openjdk/source/tree/ForLoopTree;Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public visitForLoop(Lorg/openjdk/source/tree/ForLoopTree;Ljava/lang/Void;)Ljava/lang/Void;
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "node",
            "unused"
        }
    .end annotation

    .line 2
    invoke-virtual {p0, p1}, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->sync(Lorg/openjdk/source/tree/Tree;)V

    .line 3
    const-string p2, "for"

    invoke-virtual {p0, p2}, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->token(Ljava/lang/String;)V

    .line 4
    iget-object p2, p0, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lorg/google/googlejavaformat/OpsBuilder;

    invoke-virtual {p2}, Lorg/google/googlejavaformat/OpsBuilder;->space()V

    .line 5
    const-string p2, "("

    invoke-virtual {p0, p2}, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->token(Ljava/lang/String;)V

    .line 6
    iget-object p2, p0, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lorg/google/googlejavaformat/OpsBuilder;

    iget-object v0, p0, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->plusFour:Lorg/google/googlejavaformat/Indent$Const;

    invoke-virtual {p2, v0}, Lorg/google/googlejavaformat/OpsBuilder;->open(Lorg/google/googlejavaformat/Indent;)V

    .line 7
    iget-object p2, p0, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lorg/google/googlejavaformat/OpsBuilder;

    .line 8
    invoke-interface {p1}, Lorg/openjdk/source/tree/ForLoopTree;->getInitializer()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-le v0, v2, :cond_0

    .line 9
    invoke-interface {p1}, Lorg/openjdk/source/tree/ForLoopTree;->getInitializer()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/openjdk/source/tree/StatementTree;

    invoke-interface {v0}, Lorg/openjdk/source/tree/Tree;->getKind()Lorg/openjdk/source/tree/Tree$Kind;

    move-result-object v0

    sget-object v3, Lorg/openjdk/source/tree/Tree$Kind;->EXPRESSION_STATEMENT:Lorg/openjdk/source/tree/Tree$Kind;

    if-ne v0, v3, :cond_0

    .line 10
    iget-object v0, p0, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->plusFour:Lorg/google/googlejavaformat/Indent$Const;

    goto :goto_0

    .line 11
    :cond_0
    sget-object v0, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->ZERO:Lorg/google/googlejavaformat/Indent$Const;

    .line 12
    :goto_0
    invoke-virtual {p2, v0}, Lorg/google/googlejavaformat/OpsBuilder;->open(Lorg/google/googlejavaformat/Indent;)V

    .line 13
    invoke-interface {p1}, Lorg/openjdk/source/tree/ForLoopTree;->getInitializer()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result p2

    const-string v0, ","

    const-string v3, ";"

    const/4 v4, 0x0

    const-string v5, " "

    if-nez p2, :cond_4

    .line 14
    invoke-interface {p1}, Lorg/openjdk/source/tree/ForLoopTree;->getInitializer()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/openjdk/source/tree/StatementTree;

    invoke-interface {p2}, Lorg/openjdk/source/tree/Tree;->getKind()Lorg/openjdk/source/tree/Tree$Kind;

    move-result-object p2

    sget-object v6, Lorg/openjdk/source/tree/Tree$Kind;->VARIABLE:Lorg/openjdk/source/tree/Tree$Kind;

    if-ne p2, v6, :cond_1

    .line 15
    invoke-interface {p1}, Lorg/openjdk/source/tree/ForLoopTree;->getInitializer()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    invoke-static {p2}, Lcom/google/common/collect/E1;->T(Ljava/util/Iterator;)Lcom/google/common/collect/g2;

    move-result-object p2

    .line 16
    invoke-interface {p2}, Lcom/google/common/collect/g2;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/openjdk/source/tree/Tree;

    invoke-direct {p0, p2, v6}, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->variableFragments(Lcom/google/common/collect/g2;Lorg/openjdk/source/tree/Tree;)Ljava/util/List;

    move-result-object p2

    sget-object v6, Lorg/google/googlejavaformat/java/JavaInputAstVisitor$DeclarationKind;->NONE:Lorg/google/googlejavaformat/java/JavaInputAstVisitor$DeclarationKind;

    sget-object v7, Lorg/google/googlejavaformat/java/JavaInputAstVisitor$Direction;->HORIZONTAL:Lorg/google/googlejavaformat/java/JavaInputAstVisitor$Direction;

    .line 17
    invoke-virtual {p0, p2, v6, v7}, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->visitVariables(Ljava/util/List;Lorg/google/googlejavaformat/java/JavaInputAstVisitor$DeclarationKind;Lorg/google/googlejavaformat/java/JavaInputAstVisitor$Direction;)V

    goto :goto_2

    .line 18
    :cond_1
    iget-object p2, p0, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lorg/google/googlejavaformat/OpsBuilder;

    sget-object v6, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->ZERO:Lorg/google/googlejavaformat/Indent$Const;

    invoke-virtual {p2, v6}, Lorg/google/googlejavaformat/OpsBuilder;->open(Lorg/google/googlejavaformat/Indent;)V

    .line 19
    invoke-interface {p1}, Lorg/openjdk/source/tree/ForLoopTree;->getInitializer()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    move v6, v2

    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/openjdk/source/tree/StatementTree;

    if-nez v6, :cond_2

    .line 20
    invoke-virtual {p0, v0}, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->token(Ljava/lang/String;)V

    .line 21
    iget-object v6, p0, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lorg/google/googlejavaformat/OpsBuilder;

    invoke-virtual {v6, v5}, Lorg/google/googlejavaformat/OpsBuilder;->breakOp(Ljava/lang/String;)V

    .line 22
    :cond_2
    check-cast v7, Lorg/openjdk/source/tree/ExpressionStatementTree;

    invoke-interface {v7}, Lorg/openjdk/source/tree/ExpressionStatementTree;->getExpression()Lorg/openjdk/source/tree/ExpressionTree;

    move-result-object v6

    invoke-virtual {p0, v6, v4}, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->scan(Lorg/openjdk/source/tree/Tree;Ljava/lang/Void;)Ljava/lang/Void;

    move v6, v1

    goto :goto_1

    .line 23
    :cond_3
    invoke-virtual {p0, v3}, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->token(Ljava/lang/String;)V

    .line 24
    iget-object p2, p0, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lorg/google/googlejavaformat/OpsBuilder;

    invoke-virtual {p2}, Lorg/google/googlejavaformat/OpsBuilder;->close()V

    goto :goto_2

    .line 25
    :cond_4
    invoke-virtual {p0, v3}, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->token(Ljava/lang/String;)V

    .line 26
    :goto_2
    iget-object p2, p0, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lorg/google/googlejavaformat/OpsBuilder;

    invoke-virtual {p2}, Lorg/google/googlejavaformat/OpsBuilder;->close()V

    .line 27
    iget-object p2, p0, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lorg/google/googlejavaformat/OpsBuilder;

    invoke-virtual {p2, v5}, Lorg/google/googlejavaformat/OpsBuilder;->breakOp(Ljava/lang/String;)V

    .line 28
    invoke-interface {p1}, Lorg/openjdk/source/tree/ForLoopTree;->getCondition()Lorg/openjdk/source/tree/ExpressionTree;

    move-result-object p2

    if-eqz p2, :cond_5

    .line 29
    invoke-interface {p1}, Lorg/openjdk/source/tree/ForLoopTree;->getCondition()Lorg/openjdk/source/tree/ExpressionTree;

    move-result-object p2

    invoke-virtual {p0, p2, v4}, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->scan(Lorg/openjdk/source/tree/Tree;Ljava/lang/Void;)Ljava/lang/Void;

    .line 30
    :cond_5
    invoke-virtual {p0, v3}, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->token(Ljava/lang/String;)V

    .line 31
    invoke-interface {p1}, Lorg/openjdk/source/tree/ForLoopTree;->getUpdate()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_9

    .line 32
    iget-object p2, p0, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lorg/google/googlejavaformat/OpsBuilder;

    invoke-virtual {p2, v5}, Lorg/google/googlejavaformat/OpsBuilder;->breakOp(Ljava/lang/String;)V

    .line 33
    iget-object p2, p0, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lorg/google/googlejavaformat/OpsBuilder;

    invoke-interface {p1}, Lorg/openjdk/source/tree/ForLoopTree;->getUpdate()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-gt v6, v2, :cond_6

    sget-object v6, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->ZERO:Lorg/google/googlejavaformat/Indent$Const;

    goto :goto_3

    :cond_6
    iget-object v6, p0, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->plusFour:Lorg/google/googlejavaformat/Indent$Const;

    :goto_3
    invoke-virtual {p2, v6}, Lorg/google/googlejavaformat/OpsBuilder;->open(Lorg/google/googlejavaformat/Indent;)V

    .line 34
    invoke-interface {p1}, Lorg/openjdk/source/tree/ForLoopTree;->getUpdate()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_4
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_8

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/openjdk/source/tree/ExpressionStatementTree;

    if-nez v2, :cond_7

    .line 35
    invoke-virtual {p0, v0}, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->token(Ljava/lang/String;)V

    .line 36
    iget-object v2, p0, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lorg/google/googlejavaformat/OpsBuilder;

    invoke-virtual {v2, v5}, Lorg/google/googlejavaformat/OpsBuilder;->breakToFill(Ljava/lang/String;)V

    .line 37
    :cond_7
    invoke-interface {v6}, Lorg/openjdk/source/tree/ExpressionStatementTree;->getExpression()Lorg/openjdk/source/tree/ExpressionTree;

    move-result-object v2

    invoke-virtual {p0, v2, v4}, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->scan(Lorg/openjdk/source/tree/Tree;Ljava/lang/Void;)Ljava/lang/Void;

    move v2, v1

    goto :goto_4

    .line 38
    :cond_8
    iget-object p2, p0, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lorg/google/googlejavaformat/OpsBuilder;

    invoke-virtual {p2, v3}, Lorg/google/googlejavaformat/OpsBuilder;->guessToken(Ljava/lang/String;)V

    .line 39
    iget-object p2, p0, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lorg/google/googlejavaformat/OpsBuilder;

    invoke-virtual {p2}, Lorg/google/googlejavaformat/OpsBuilder;->close()V

    goto :goto_5

    .line 40
    :cond_9
    iget-object p2, p0, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lorg/google/googlejavaformat/OpsBuilder;

    invoke-virtual {p2}, Lorg/google/googlejavaformat/OpsBuilder;->space()V

    .line 41
    :goto_5
    iget-object p2, p0, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lorg/google/googlejavaformat/OpsBuilder;

    invoke-virtual {p2}, Lorg/google/googlejavaformat/OpsBuilder;->close()V

    .line 42
    const-string p2, ")"

    invoke-virtual {p0, p2}, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->token(Ljava/lang/String;)V

    .line 43
    invoke-interface {p1}, Lorg/openjdk/source/tree/ForLoopTree;->getStatement()Lorg/openjdk/source/tree/StatementTree;

    move-result-object p1

    sget-object p2, Lorg/google/googlejavaformat/java/JavaInputAstVisitor$CollapseEmptyOrNot;->YES:Lorg/google/googlejavaformat/java/JavaInputAstVisitor$CollapseEmptyOrNot;

    sget-object v0, Lorg/google/googlejavaformat/java/JavaInputAstVisitor$AllowLeadingBlankLine;->YES:Lorg/google/googlejavaformat/java/JavaInputAstVisitor$AllowLeadingBlankLine;

    sget-object v1, Lorg/google/googlejavaformat/java/JavaInputAstVisitor$AllowTrailingBlankLine;->NO:Lorg/google/googlejavaformat/java/JavaInputAstVisitor$AllowTrailingBlankLine;

    .line 44
    invoke-direct {p0, p1, p2, v0, v1}, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->visitStatement(Lorg/openjdk/source/tree/StatementTree;Lorg/google/googlejavaformat/java/JavaInputAstVisitor$CollapseEmptyOrNot;Lorg/google/googlejavaformat/java/JavaInputAstVisitor$AllowLeadingBlankLine;Lorg/google/googlejavaformat/java/JavaInputAstVisitor$AllowTrailingBlankLine;)V

    return-object v4
.end method

.method public bridge synthetic visitIdentifier(Lorg/openjdk/source/tree/IdentifierTree;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            "node",
            "unused"
        }
    .end annotation

    .line 1
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->visitIdentifier(Lorg/openjdk/source/tree/IdentifierTree;Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public visitIdentifier(Lorg/openjdk/source/tree/IdentifierTree;Ljava/lang/Void;)Ljava/lang/Void;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "node",
            "unused"
        }
    .end annotation

    .line 2
    invoke-virtual {p0, p1}, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->sync(Lorg/openjdk/source/tree/Tree;)V

    .line 3
    invoke-interface {p1}, Lorg/openjdk/source/tree/IdentifierTree;->getName()Lorg/openjdk/javax/lang/model/element/Name;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->token(Ljava/lang/String;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public bridge synthetic visitIf(Lorg/openjdk/source/tree/IfTree;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            "node",
            "unused"
        }
    .end annotation

    .line 1
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->visitIf(Lorg/openjdk/source/tree/IfTree;Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public visitIf(Lorg/openjdk/source/tree/IfTree;Ljava/lang/Void;)Ljava/lang/Void;
    .locals 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "node",
            "unused"
        }
    .end annotation

    .line 2
    invoke-virtual {p0, p1}, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->sync(Lorg/openjdk/source/tree/Tree;)V

    .line 3
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 4
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 5
    :goto_0
    invoke-interface {p1}, Lorg/openjdk/source/tree/IfTree;->getCondition()Lorg/openjdk/source/tree/ExpressionTree;

    move-result-object v1

    invoke-interface {p2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 6
    invoke-interface {p1}, Lorg/openjdk/source/tree/IfTree;->getThenStatement()Lorg/openjdk/source/tree/StatementTree;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 7
    invoke-interface {p1}, Lorg/openjdk/source/tree/IfTree;->getElseStatement()Lorg/openjdk/source/tree/StatementTree;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Lorg/openjdk/source/tree/IfTree;->getElseStatement()Lorg/openjdk/source/tree/StatementTree;

    move-result-object v1

    invoke-interface {v1}, Lorg/openjdk/source/tree/Tree;->getKind()Lorg/openjdk/source/tree/Tree$Kind;

    move-result-object v1

    sget-object v2, Lorg/openjdk/source/tree/Tree$Kind;->IF:Lorg/openjdk/source/tree/Tree$Kind;

    if-ne v1, v2, :cond_0

    .line 8
    invoke-interface {p1}, Lorg/openjdk/source/tree/IfTree;->getElseStatement()Lorg/openjdk/source/tree/StatementTree;

    move-result-object p1

    check-cast p1, Lorg/openjdk/source/tree/IfTree;

    goto :goto_0

    .line 9
    :cond_0
    iget-object v1, p0, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lorg/google/googlejavaformat/OpsBuilder;

    sget-object v2, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->ZERO:Lorg/google/googlejavaformat/Indent$Const;

    invoke-virtual {v1, v2}, Lorg/google/googlejavaformat/OpsBuilder;->open(Lorg/google/googlejavaformat/Indent;)V

    .line 10
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    move v4, v2

    move v6, v4

    move v5, v3

    :goto_1
    const/4 v7, 0x0

    .line 11
    const-string v8, "else"

    if-ge v4, v1, :cond_7

    if-nez v5, :cond_2

    if-eqz v6, :cond_1

    .line 12
    iget-object v5, p0, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lorg/google/googlejavaformat/OpsBuilder;

    invoke-virtual {v5}, Lorg/google/googlejavaformat/OpsBuilder;->space()V

    goto :goto_2

    .line 13
    :cond_1
    iget-object v5, p0, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lorg/google/googlejavaformat/OpsBuilder;

    invoke-virtual {v5}, Lorg/google/googlejavaformat/OpsBuilder;->forcedBreak()V

    .line 14
    :goto_2
    invoke-virtual {p0, v8}, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->token(Ljava/lang/String;)V

    .line 15
    iget-object v5, p0, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lorg/google/googlejavaformat/OpsBuilder;

    invoke-virtual {v5}, Lorg/google/googlejavaformat/OpsBuilder;->space()V

    .line 16
    :cond_2
    const-string v5, "if"

    invoke-virtual {p0, v5}, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->token(Ljava/lang/String;)V

    .line 17
    iget-object v5, p0, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lorg/google/googlejavaformat/OpsBuilder;

    invoke-virtual {v5}, Lorg/google/googlejavaformat/OpsBuilder;->space()V

    .line 18
    const-string v5, "("

    invoke-virtual {p0, v5}, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->token(Ljava/lang/String;)V

    .line 19
    invoke-interface {p2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/openjdk/source/tree/ExpressionTree;

    invoke-static {v5}, Lorg/google/googlejavaformat/java/Trees;->skipParen(Lorg/openjdk/source/tree/ExpressionTree;)Lorg/openjdk/source/tree/ExpressionTree;

    move-result-object v5

    invoke-virtual {p0, v5, v7}, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->scan(Lorg/openjdk/source/tree/Tree;Ljava/lang/Void;)Ljava/lang/Void;

    .line 20
    const-string v5, ")"

    invoke-virtual {p0, v5}, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->token(Ljava/lang/String;)V

    if-ne v1, v3, :cond_3

    .line 21
    invoke-interface {p1}, Lorg/openjdk/source/tree/IfTree;->getElseStatement()Lorg/openjdk/source/tree/StatementTree;

    move-result-object v5

    if-nez v5, :cond_3

    move v5, v3

    goto :goto_3

    :cond_3
    move v5, v2

    :goto_3
    add-int/lit8 v6, v1, -0x1

    if-lt v4, v6, :cond_5

    .line 22
    invoke-interface {p1}, Lorg/openjdk/source/tree/IfTree;->getElseStatement()Lorg/openjdk/source/tree/StatementTree;

    move-result-object v6

    if-eqz v6, :cond_4

    goto :goto_4

    :cond_4
    move v6, v2

    goto :goto_5

    :cond_5
    :goto_4
    move v6, v3

    .line 23
    :goto_5
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/openjdk/source/tree/StatementTree;

    .line 24
    invoke-static {v5}, Lorg/google/googlejavaformat/java/JavaInputAstVisitor$CollapseEmptyOrNot;->valueOf(Z)Lorg/google/googlejavaformat/java/JavaInputAstVisitor$CollapseEmptyOrNot;

    move-result-object v5

    sget-object v8, Lorg/google/googlejavaformat/java/JavaInputAstVisitor$AllowLeadingBlankLine;->YES:Lorg/google/googlejavaformat/java/JavaInputAstVisitor$AllowLeadingBlankLine;

    .line 25
    invoke-static {v6}, Lorg/google/googlejavaformat/java/JavaInputAstVisitor$AllowTrailingBlankLine;->valueOf(Z)Lorg/google/googlejavaformat/java/JavaInputAstVisitor$AllowTrailingBlankLine;

    move-result-object v6

    .line 26
    invoke-direct {p0, v7, v5, v8, v6}, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->visitStatement(Lorg/openjdk/source/tree/StatementTree;Lorg/google/googlejavaformat/java/JavaInputAstVisitor$CollapseEmptyOrNot;Lorg/google/googlejavaformat/java/JavaInputAstVisitor$AllowLeadingBlankLine;Lorg/google/googlejavaformat/java/JavaInputAstVisitor$AllowTrailingBlankLine;)V

    .line 27
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/openjdk/source/tree/StatementTree;

    invoke-interface {v5}, Lorg/openjdk/source/tree/Tree;->getKind()Lorg/openjdk/source/tree/Tree$Kind;

    move-result-object v5

    sget-object v6, Lorg/openjdk/source/tree/Tree$Kind;->BLOCK:Lorg/openjdk/source/tree/Tree$Kind;

    if-ne v5, v6, :cond_6

    move v6, v3

    goto :goto_6

    :cond_6
    move v6, v2

    :goto_6
    add-int/lit8 v4, v4, 0x1

    move v5, v2

    goto :goto_1

    .line 28
    :cond_7
    invoke-interface {p1}, Lorg/openjdk/source/tree/IfTree;->getElseStatement()Lorg/openjdk/source/tree/StatementTree;

    move-result-object p2

    if-eqz p2, :cond_9

    if-eqz v6, :cond_8

    .line 29
    iget-object p2, p0, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lorg/google/googlejavaformat/OpsBuilder;

    invoke-virtual {p2}, Lorg/google/googlejavaformat/OpsBuilder;->space()V

    goto :goto_7

    .line 30
    :cond_8
    iget-object p2, p0, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lorg/google/googlejavaformat/OpsBuilder;

    invoke-virtual {p2}, Lorg/google/googlejavaformat/OpsBuilder;->forcedBreak()V

    .line 31
    :goto_7
    invoke-virtual {p0, v8}, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->token(Ljava/lang/String;)V

    .line 32
    invoke-interface {p1}, Lorg/openjdk/source/tree/IfTree;->getElseStatement()Lorg/openjdk/source/tree/StatementTree;

    move-result-object p1

    sget-object p2, Lorg/google/googlejavaformat/java/JavaInputAstVisitor$CollapseEmptyOrNot;->NO:Lorg/google/googlejavaformat/java/JavaInputAstVisitor$CollapseEmptyOrNot;

    sget-object v0, Lorg/google/googlejavaformat/java/JavaInputAstVisitor$AllowLeadingBlankLine;->YES:Lorg/google/googlejavaformat/java/JavaInputAstVisitor$AllowLeadingBlankLine;

    sget-object v1, Lorg/google/googlejavaformat/java/JavaInputAstVisitor$AllowTrailingBlankLine;->NO:Lorg/google/googlejavaformat/java/JavaInputAstVisitor$AllowTrailingBlankLine;

    .line 33
    invoke-direct {p0, p1, p2, v0, v1}, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->visitStatement(Lorg/openjdk/source/tree/StatementTree;Lorg/google/googlejavaformat/java/JavaInputAstVisitor$CollapseEmptyOrNot;Lorg/google/googlejavaformat/java/JavaInputAstVisitor$AllowLeadingBlankLine;Lorg/google/googlejavaformat/java/JavaInputAstVisitor$AllowTrailingBlankLine;)V

    .line 34
    :cond_9
    iget-object p1, p0, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lorg/google/googlejavaformat/OpsBuilder;

    invoke-virtual {p1}, Lorg/google/googlejavaformat/OpsBuilder;->close()V

    return-object v7
.end method

.method public bridge synthetic visitImport(Lorg/openjdk/source/tree/ImportTree;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            "node",
            "unused"
        }
    .end annotation

    .line 1
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->visitImport(Lorg/openjdk/source/tree/ImportTree;Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public visitImport(Lorg/openjdk/source/tree/ImportTree;Ljava/lang/Void;)Ljava/lang/Void;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "node",
            "unused"
        }
    .end annotation

    .line 2
    invoke-virtual {p0, p1}, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->sync(Lorg/openjdk/source/tree/Tree;)V

    .line 3
    const-string p2, "import"

    invoke-virtual {p0, p2}, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->token(Ljava/lang/String;)V

    .line 4
    iget-object p2, p0, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lorg/google/googlejavaformat/OpsBuilder;

    invoke-virtual {p2}, Lorg/google/googlejavaformat/OpsBuilder;->space()V

    .line 5
    invoke-interface {p1}, Lorg/openjdk/source/tree/ImportTree;->isStatic()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 6
    const-string p2, "static"

    invoke-virtual {p0, p2}, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->token(Ljava/lang/String;)V

    .line 7
    iget-object p2, p0, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lorg/google/googlejavaformat/OpsBuilder;

    invoke-virtual {p2}, Lorg/google/googlejavaformat/OpsBuilder;->space()V

    .line 8
    :cond_0
    invoke-interface {p1}, Lorg/openjdk/source/tree/ImportTree;->getQualifiedIdentifier()Lorg/openjdk/source/tree/Tree;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->visitName(Lorg/openjdk/source/tree/Tree;)V

    .line 9
    const-string p1, ";"

    invoke-virtual {p0, p1}, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->token(Ljava/lang/String;)V

    .line 10
    invoke-direct {p0}, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->dropEmptyDeclarations()V

    const/4 p1, 0x0

    return-object p1
.end method

.method public bridge synthetic visitInstanceOf(Lorg/openjdk/source/tree/InstanceOfTree;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            "node",
            "unused"
        }
    .end annotation

    .line 1
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->visitInstanceOf(Lorg/openjdk/source/tree/InstanceOfTree;Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public visitInstanceOf(Lorg/openjdk/source/tree/InstanceOfTree;Ljava/lang/Void;)Ljava/lang/Void;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "node",
            "unused"
        }
    .end annotation

    .line 2
    invoke-virtual {p0, p1}, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->sync(Lorg/openjdk/source/tree/Tree;)V

    .line 3
    iget-object p2, p0, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lorg/google/googlejavaformat/OpsBuilder;

    iget-object v0, p0, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->plusFour:Lorg/google/googlejavaformat/Indent$Const;

    invoke-virtual {p2, v0}, Lorg/google/googlejavaformat/OpsBuilder;->open(Lorg/google/googlejavaformat/Indent;)V

    .line 4
    invoke-interface {p1}, Lorg/openjdk/source/tree/InstanceOfTree;->getExpression()Lorg/openjdk/source/tree/ExpressionTree;

    move-result-object p2

    const/4 v0, 0x0

    invoke-virtual {p0, p2, v0}, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->scan(Lorg/openjdk/source/tree/Tree;Ljava/lang/Void;)Ljava/lang/Void;

    .line 5
    iget-object p2, p0, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lorg/google/googlejavaformat/OpsBuilder;

    const-string v1, " "

    invoke-virtual {p2, v1}, Lorg/google/googlejavaformat/OpsBuilder;->breakOp(Ljava/lang/String;)V

    .line 6
    iget-object p2, p0, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lorg/google/googlejavaformat/OpsBuilder;

    sget-object v2, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->ZERO:Lorg/google/googlejavaformat/Indent$Const;

    invoke-virtual {p2, v2}, Lorg/google/googlejavaformat/OpsBuilder;->open(Lorg/google/googlejavaformat/Indent;)V

    .line 7
    const-string p2, "instanceof"

    invoke-virtual {p0, p2}, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->token(Ljava/lang/String;)V

    .line 8
    iget-object p2, p0, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lorg/google/googlejavaformat/OpsBuilder;

    invoke-virtual {p2, v1}, Lorg/google/googlejavaformat/OpsBuilder;->breakOp(Ljava/lang/String;)V

    .line 9
    invoke-interface {p1}, Lorg/openjdk/source/tree/InstanceOfTree;->getType()Lorg/openjdk/source/tree/Tree;

    move-result-object p1

    invoke-virtual {p0, p1, v0}, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->scan(Lorg/openjdk/source/tree/Tree;Ljava/lang/Void;)Ljava/lang/Void;

    .line 10
    iget-object p1, p0, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lorg/google/googlejavaformat/OpsBuilder;

    invoke-virtual {p1}, Lorg/google/googlejavaformat/OpsBuilder;->close()V

    .line 11
    iget-object p1, p0, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lorg/google/googlejavaformat/OpsBuilder;

    invoke-virtual {p1}, Lorg/google/googlejavaformat/OpsBuilder;->close()V

    return-object v0
.end method

.method public bridge synthetic visitIntersectionType(Lorg/openjdk/source/tree/IntersectionTypeTree;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            "node",
            "unused"
        }
    .end annotation

    .line 1
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->visitIntersectionType(Lorg/openjdk/source/tree/IntersectionTypeTree;Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public visitIntersectionType(Lorg/openjdk/source/tree/IntersectionTypeTree;Ljava/lang/Void;)Ljava/lang/Void;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "node",
            "unused"
        }
    .end annotation

    .line 2
    invoke-virtual {p0, p1}, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->sync(Lorg/openjdk/source/tree/Tree;)V

    .line 3
    iget-object p2, p0, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lorg/google/googlejavaformat/OpsBuilder;

    iget-object v0, p0, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->plusFour:Lorg/google/googlejavaformat/Indent$Const;

    invoke-virtual {p2, v0}, Lorg/google/googlejavaformat/OpsBuilder;->open(Lorg/google/googlejavaformat/Indent;)V

    .line 4
    invoke-interface {p1}, Lorg/openjdk/source/tree/IntersectionTypeTree;->getBounds()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 p2, 0x1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/openjdk/source/tree/Tree;

    if-nez p2, :cond_0

    .line 5
    iget-object p2, p0, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lorg/google/googlejavaformat/OpsBuilder;

    const-string v2, " "

    invoke-virtual {p2, v2}, Lorg/google/googlejavaformat/OpsBuilder;->breakToFill(Ljava/lang/String;)V

    .line 6
    const-string p2, "&"

    invoke-virtual {p0, p2}, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->token(Ljava/lang/String;)V

    .line 7
    iget-object p2, p0, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lorg/google/googlejavaformat/OpsBuilder;

    invoke-virtual {p2}, Lorg/google/googlejavaformat/OpsBuilder;->space()V

    .line 8
    :cond_0
    invoke-virtual {p0, v0, v1}, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->scan(Lorg/openjdk/source/tree/Tree;Ljava/lang/Void;)Ljava/lang/Void;

    const/4 p2, 0x0

    goto :goto_0

    .line 9
    :cond_1
    iget-object p1, p0, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lorg/google/googlejavaformat/OpsBuilder;

    invoke-virtual {p1}, Lorg/google/googlejavaformat/OpsBuilder;->close()V

    return-object v1
.end method

.method public bridge synthetic visitLabeledStatement(Lorg/openjdk/source/tree/LabeledStatementTree;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            "node",
            "unused"
        }
    .end annotation

    .line 1
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->visitLabeledStatement(Lorg/openjdk/source/tree/LabeledStatementTree;Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public visitLabeledStatement(Lorg/openjdk/source/tree/LabeledStatementTree;Ljava/lang/Void;)Ljava/lang/Void;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "node",
            "unused"
        }
    .end annotation

    .line 2
    invoke-virtual {p0, p1}, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->sync(Lorg/openjdk/source/tree/Tree;)V

    .line 3
    iget-object p2, p0, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lorg/google/googlejavaformat/OpsBuilder;

    sget-object v0, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->ZERO:Lorg/google/googlejavaformat/Indent$Const;

    invoke-virtual {p2, v0}, Lorg/google/googlejavaformat/OpsBuilder;->open(Lorg/google/googlejavaformat/Indent;)V

    .line 4
    invoke-interface {p1}, Lorg/openjdk/source/tree/LabeledStatementTree;->getLabel()Lorg/openjdk/javax/lang/model/element/Name;

    move-result-object p2

    invoke-virtual {p0, p2}, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->visit(Lorg/openjdk/javax/lang/model/element/Name;)Z

    .line 5
    const-string p2, ":"

    invoke-virtual {p0, p2}, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->token(Ljava/lang/String;)V

    .line 6
    iget-object p2, p0, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lorg/google/googlejavaformat/OpsBuilder;

    invoke-virtual {p2}, Lorg/google/googlejavaformat/OpsBuilder;->forcedBreak()V

    .line 7
    iget-object p2, p0, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lorg/google/googlejavaformat/OpsBuilder;

    invoke-virtual {p2}, Lorg/google/googlejavaformat/OpsBuilder;->close()V

    .line 8
    invoke-interface {p1}, Lorg/openjdk/source/tree/LabeledStatementTree;->getStatement()Lorg/openjdk/source/tree/StatementTree;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2}, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->scan(Lorg/openjdk/source/tree/Tree;Ljava/lang/Void;)Ljava/lang/Void;

    return-object p2
.end method

.method public bridge synthetic visitLambdaExpression(Lorg/openjdk/source/tree/LambdaExpressionTree;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            "node",
            "unused"
        }
    .end annotation

    .line 1
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->visitLambdaExpression(Lorg/openjdk/source/tree/LambdaExpressionTree;Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public visitLambdaExpression(Lorg/openjdk/source/tree/LambdaExpressionTree;Ljava/lang/Void;)Ljava/lang/Void;
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "node",
            "unused"
        }
    .end annotation

    .line 2
    invoke-virtual {p0, p1}, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->sync(Lorg/openjdk/source/tree/Tree;)V

    .line 3
    invoke-interface {p1}, Lorg/openjdk/source/tree/LambdaExpressionTree;->getBodyKind()Lorg/openjdk/source/tree/LambdaExpressionTree$BodyKind;

    move-result-object p2

    sget-object v0, Lorg/openjdk/source/tree/LambdaExpressionTree$BodyKind;->STATEMENT:Lorg/openjdk/source/tree/LambdaExpressionTree$BodyKind;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne p2, v0, :cond_0

    move p2, v2

    goto :goto_0

    :cond_0
    move p2, v1

    .line 4
    :goto_0
    iget-object v0, p0, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lorg/google/googlejavaformat/OpsBuilder;

    invoke-virtual {v0}, Lorg/google/googlejavaformat/OpsBuilder;->peekToken()Lw2/C;

    move-result-object v0

    const-string v3, "("

    invoke-static {v3}, Lw2/C;->f(Ljava/lang/Object;)Lw2/C;

    move-result-object v4

    invoke-virtual {v0, v4}, Lw2/C;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 5
    iget-object v4, p0, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lorg/google/googlejavaformat/OpsBuilder;

    if-eqz v0, :cond_1

    iget-object v5, p0, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->plusFour:Lorg/google/googlejavaformat/Indent$Const;

    goto :goto_1

    :cond_1
    sget-object v5, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->ZERO:Lorg/google/googlejavaformat/Indent$Const;

    :goto_1
    invoke-virtual {v4, v5}, Lorg/google/googlejavaformat/OpsBuilder;->open(Lorg/google/googlejavaformat/Indent;)V

    if-eqz v0, :cond_2

    .line 6
    invoke-virtual {p0, v3}, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->token(Ljava/lang/String;)V

    .line 7
    :cond_2
    invoke-interface {p1}, Lorg/openjdk/source/tree/LambdaExpressionTree;->getParameters()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    const-string v5, " "

    const/4 v6, 0x0

    if-eqz v4, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/openjdk/source/tree/VariableTree;

    if-nez v2, :cond_3

    .line 8
    const-string v2, ","

    invoke-virtual {p0, v2}, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->token(Ljava/lang/String;)V

    .line 9
    iget-object v2, p0, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lorg/google/googlejavaformat/OpsBuilder;

    invoke-virtual {v2, v5}, Lorg/google/googlejavaformat/OpsBuilder;->breakOp(Ljava/lang/String;)V

    .line 10
    :cond_3
    invoke-virtual {p0, v4, v6}, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->scan(Lorg/openjdk/source/tree/Tree;Ljava/lang/Void;)Ljava/lang/Void;

    move v2, v1

    goto :goto_2

    :cond_4
    if-eqz v0, :cond_5

    .line 11
    const-string v0, ")"

    invoke-virtual {p0, v0}, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->token(Ljava/lang/String;)V

    .line 12
    :cond_5
    iget-object v0, p0, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lorg/google/googlejavaformat/OpsBuilder;

    invoke-virtual {v0}, Lorg/google/googlejavaformat/OpsBuilder;->close()V

    .line 13
    iget-object v0, p0, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lorg/google/googlejavaformat/OpsBuilder;

    invoke-virtual {v0}, Lorg/google/googlejavaformat/OpsBuilder;->space()V

    .line 14
    iget-object v0, p0, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lorg/google/googlejavaformat/OpsBuilder;

    const-string v1, "->"

    invoke-virtual {v0, v1}, Lorg/google/googlejavaformat/OpsBuilder;->op(Ljava/lang/String;)V

    .line 15
    iget-object v0, p0, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lorg/google/googlejavaformat/OpsBuilder;

    if-eqz p2, :cond_6

    sget-object v1, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->ZERO:Lorg/google/googlejavaformat/Indent$Const;

    goto :goto_3

    :cond_6
    iget-object v1, p0, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->plusFour:Lorg/google/googlejavaformat/Indent$Const;

    :goto_3
    invoke-virtual {v0, v1}, Lorg/google/googlejavaformat/OpsBuilder;->open(Lorg/google/googlejavaformat/Indent;)V

    if-eqz p2, :cond_7

    .line 16
    iget-object p2, p0, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lorg/google/googlejavaformat/OpsBuilder;

    invoke-virtual {p2}, Lorg/google/googlejavaformat/OpsBuilder;->space()V

    goto :goto_4

    .line 17
    :cond_7
    iget-object p2, p0, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lorg/google/googlejavaformat/OpsBuilder;

    invoke-virtual {p2, v5}, Lorg/google/googlejavaformat/OpsBuilder;->breakOp(Ljava/lang/String;)V

    .line 18
    :goto_4
    invoke-interface {p1}, Lorg/openjdk/source/tree/LambdaExpressionTree;->getBody()Lorg/openjdk/source/tree/Tree;

    move-result-object p2

    invoke-interface {p2}, Lorg/openjdk/source/tree/Tree;->getKind()Lorg/openjdk/source/tree/Tree$Kind;

    move-result-object p2

    sget-object v0, Lorg/openjdk/source/tree/Tree$Kind;->BLOCK:Lorg/openjdk/source/tree/Tree$Kind;

    if-ne p2, v0, :cond_8

    .line 19
    invoke-interface {p1}, Lorg/openjdk/source/tree/LambdaExpressionTree;->getBody()Lorg/openjdk/source/tree/Tree;

    move-result-object p1

    check-cast p1, Lorg/openjdk/source/tree/BlockTree;

    sget-object p2, Lorg/google/googlejavaformat/java/JavaInputAstVisitor$CollapseEmptyOrNot;->YES:Lorg/google/googlejavaformat/java/JavaInputAstVisitor$CollapseEmptyOrNot;

    sget-object v0, Lorg/google/googlejavaformat/java/JavaInputAstVisitor$AllowLeadingBlankLine;->NO:Lorg/google/googlejavaformat/java/JavaInputAstVisitor$AllowLeadingBlankLine;

    sget-object v1, Lorg/google/googlejavaformat/java/JavaInputAstVisitor$AllowTrailingBlankLine;->NO:Lorg/google/googlejavaformat/java/JavaInputAstVisitor$AllowTrailingBlankLine;

    .line 20
    invoke-direct {p0, p1, p2, v0, v1}, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->visitBlock(Lorg/openjdk/source/tree/BlockTree;Lorg/google/googlejavaformat/java/JavaInputAstVisitor$CollapseEmptyOrNot;Lorg/google/googlejavaformat/java/JavaInputAstVisitor$AllowLeadingBlankLine;Lorg/google/googlejavaformat/java/JavaInputAstVisitor$AllowTrailingBlankLine;)V

    goto :goto_5

    .line 21
    :cond_8
    invoke-interface {p1}, Lorg/openjdk/source/tree/LambdaExpressionTree;->getBody()Lorg/openjdk/source/tree/Tree;

    move-result-object p1

    invoke-virtual {p0, p1, v6}, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->scan(Lorg/openjdk/source/tree/Tree;Ljava/lang/Void;)Ljava/lang/Void;

    .line 22
    :goto_5
    iget-object p1, p0, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lorg/google/googlejavaformat/OpsBuilder;

    invoke-virtual {p1}, Lorg/google/googlejavaformat/OpsBuilder;->close()V

    return-object v6
.end method

.method public bridge synthetic visitLiteral(Lorg/openjdk/source/tree/LiteralTree;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            "node",
            "unused"
        }
    .end annotation

    .line 1
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->visitLiteral(Lorg/openjdk/source/tree/LiteralTree;Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public visitLiteral(Lorg/openjdk/source/tree/LiteralTree;Ljava/lang/Void;)Ljava/lang/Void;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "node",
            "unused"
        }
    .end annotation

    .line 2
    invoke-virtual {p0, p1}, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->sync(Lorg/openjdk/source/tree/Tree;)V

    .line 3
    invoke-virtual {p0}, Lorg/openjdk/source/util/TreePathScanner;->getCurrentPath()Lorg/openjdk/source/util/TreePath;

    move-result-object p2

    invoke-static {p1, p2}, Lorg/google/googlejavaformat/java/Trees;->getSourceForNode(Lorg/openjdk/source/tree/Tree;Lorg/openjdk/source/util/TreePath;)Ljava/lang/String;

    move-result-object p1

    .line 4
    const-string p2, "-"

    invoke-virtual {p1, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5
    invoke-virtual {p0, p2}, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->token(Ljava/lang/String;)V

    const/4 p2, 0x1

    .line 6
    invoke-virtual {p1, p2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 7
    :cond_0
    invoke-virtual {p0, p1}, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->token(Ljava/lang/String;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public bridge synthetic visitMemberReference(Lorg/openjdk/source/tree/MemberReferenceTree;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            "node",
            "unused"
        }
    .end annotation

    .line 1
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->visitMemberReference(Lorg/openjdk/source/tree/MemberReferenceTree;Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public visitMemberReference(Lorg/openjdk/source/tree/MemberReferenceTree;Ljava/lang/Void;)Ljava/lang/Void;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "node",
            "unused"
        }
    .end annotation

    .line 2
    invoke-virtual {p0, p1}, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->sync(Lorg/openjdk/source/tree/Tree;)V

    .line 3
    iget-object p2, p0, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lorg/google/googlejavaformat/OpsBuilder;

    iget-object v0, p0, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->plusFour:Lorg/google/googlejavaformat/Indent$Const;

    invoke-virtual {p2, v0}, Lorg/google/googlejavaformat/OpsBuilder;->open(Lorg/google/googlejavaformat/Indent;)V

    .line 4
    invoke-interface {p1}, Lorg/openjdk/source/tree/MemberReferenceTree;->getQualifierExpression()Lorg/openjdk/source/tree/ExpressionTree;

    move-result-object p2

    const/4 v0, 0x0

    invoke-virtual {p0, p2, v0}, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->scan(Lorg/openjdk/source/tree/Tree;Ljava/lang/Void;)Ljava/lang/Void;

    .line 5
    iget-object p2, p0, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lorg/google/googlejavaformat/OpsBuilder;

    invoke-virtual {p2}, Lorg/google/googlejavaformat/OpsBuilder;->breakOp()V

    .line 6
    iget-object p2, p0, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lorg/google/googlejavaformat/OpsBuilder;

    const-string v1, "::"

    invoke-virtual {p2, v1}, Lorg/google/googlejavaformat/OpsBuilder;->op(Ljava/lang/String;)V

    .line 7
    invoke-interface {p1}, Lorg/openjdk/source/tree/MemberReferenceTree;->getTypeArguments()Ljava/util/List;

    move-result-object p2

    iget-object v1, p0, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->plusFour:Lorg/google/googlejavaformat/Indent$Const;

    invoke-virtual {p0, p2, v1}, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->addTypeArguments(Ljava/util/List;Lorg/google/googlejavaformat/Indent;)V

    .line 8
    sget-object p2, Lorg/google/googlejavaformat/java/JavaInputAstVisitor$2;->$SwitchMap$org$openjdk$source$tree$MemberReferenceTree$ReferenceMode:[I

    invoke-interface {p1}, Lorg/openjdk/source/tree/MemberReferenceTree;->getMode()Lorg/openjdk/source/tree/MemberReferenceTree$ReferenceMode;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget p2, p2, v1

    const/4 v1, 0x1

    if-eq p2, v1, :cond_1

    const/4 v1, 0x2

    if-ne p2, v1, :cond_0

    .line 9
    const-string p1, "new"

    invoke-virtual {p0, p1}, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->token(Ljava/lang/String;)V

    goto :goto_0

    .line 10
    :cond_0
    new-instance p2, Ljava/lang/AssertionError;

    invoke-interface {p1}, Lorg/openjdk/source/tree/MemberReferenceTree;->getMode()Lorg/openjdk/source/tree/MemberReferenceTree$ReferenceMode;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p2

    .line 11
    :cond_1
    invoke-interface {p1}, Lorg/openjdk/source/tree/MemberReferenceTree;->getName()Lorg/openjdk/javax/lang/model/element/Name;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->visit(Lorg/openjdk/javax/lang/model/element/Name;)Z

    .line 12
    :goto_0
    iget-object p1, p0, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lorg/google/googlejavaformat/OpsBuilder;

    invoke-virtual {p1}, Lorg/google/googlejavaformat/OpsBuilder;->close()V

    return-object v0
.end method

.method public bridge synthetic visitMemberSelect(Lorg/openjdk/source/tree/MemberSelectTree;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            "node",
            "unused"
        }
    .end annotation

    .line 1
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->visitMemberSelect(Lorg/openjdk/source/tree/MemberSelectTree;Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public visitMemberSelect(Lorg/openjdk/source/tree/MemberSelectTree;Ljava/lang/Void;)Ljava/lang/Void;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "node",
            "unused"
        }
    .end annotation

    .line 2
    invoke-virtual {p0, p1}, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->sync(Lorg/openjdk/source/tree/Tree;)V

    .line 3
    invoke-virtual {p0, p1}, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->visitDot(Lorg/openjdk/source/tree/ExpressionTree;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public bridge synthetic visitMethod(Lorg/openjdk/source/tree/MethodTree;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            "node",
            "unused"
        }
    .end annotation

    .line 1
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->visitMethod(Lorg/openjdk/source/tree/MethodTree;Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public visitMethod(Lorg/openjdk/source/tree/MethodTree;Ljava/lang/Void;)Ljava/lang/Void;
    .locals 11
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "node",
            "unused"
        }
    .end annotation

    .line 2
    invoke-virtual {p0, p1}, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->sync(Lorg/openjdk/source/tree/Tree;)V

    .line 3
    invoke-interface {p1}, Lorg/openjdk/source/tree/MethodTree;->getModifiers()Lorg/openjdk/source/tree/ModifiersTree;

    move-result-object p2

    invoke-interface {p2}, Lorg/openjdk/source/tree/ModifiersTree;->getAnnotations()Ljava/util/List;

    move-result-object p2

    .line 4
    invoke-static {}, Lcom/google/common/collect/g1;->x()Lcom/google/common/collect/g1;

    move-result-object v0

    .line 5
    invoke-interface {p1}, Lorg/openjdk/source/tree/MethodTree;->getTypeParameters()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_1

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 6
    invoke-interface {p1}, Lorg/openjdk/source/tree/MethodTree;->getTypeParameters()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/openjdk/source/tree/Tree;

    invoke-static {v1}, Lorg/google/googlejavaformat/java/Trees;->getStartPosition(Lorg/openjdk/source/tree/Tree;)I

    move-result v1

    move v3, v2

    .line 7
    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_1

    .line 8
    invoke-interface {p2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/openjdk/source/tree/Tree;

    invoke-static {v4}, Lorg/google/googlejavaformat/java/Trees;->getStartPosition(Lorg/openjdk/source/tree/Tree;)I

    move-result v4

    if-le v4, v1, :cond_0

    .line 9
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    invoke-interface {p2, v3, v0}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v0

    .line 10
    invoke-interface {p2, v2, v3}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object p2

    goto :goto_1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 11
    :cond_1
    :goto_1
    iget-object v1, p0, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lorg/google/googlejavaformat/OpsBuilder;

    sget-object v3, Lorg/google/googlejavaformat/java/JavaInputAstVisitor$Direction;->VERTICAL:Lorg/google/googlejavaformat/java/JavaInputAstVisitor$Direction;

    .line 12
    invoke-static {}, Lw2/C;->a()Lw2/C;

    move-result-object v4

    .line 13
    invoke-direct {p0, p2, v3, v4}, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->visitModifiers(Ljava/util/List;Lorg/google/googlejavaformat/java/JavaInputAstVisitor$Direction;Lw2/C;)Ljava/util/List;

    move-result-object p2

    .line 14
    invoke-virtual {v1, p2}, Lorg/google/googlejavaformat/OpsBuilder;->addAll(Ljava/util/List;)V

    .line 15
    invoke-interface {p1}, Lorg/openjdk/source/tree/MethodTree;->getReturnType()Lorg/openjdk/source/tree/Tree;

    move-result-object p2

    const/4 v1, 0x0

    if-eqz p2, :cond_2

    .line 16
    invoke-interface {p1}, Lorg/openjdk/source/tree/MethodTree;->getReturnType()Lorg/openjdk/source/tree/Tree;

    move-result-object p2

    sget-object v3, Lorg/google/googlejavaformat/java/DimensionHelpers$SortedDims;->YES:Lorg/google/googlejavaformat/java/DimensionHelpers$SortedDims;

    invoke-static {p2, v3}, Lorg/google/googlejavaformat/java/DimensionHelpers;->extractDims(Lorg/openjdk/source/tree/Tree;Lorg/google/googlejavaformat/java/DimensionHelpers$SortedDims;)Lorg/google/googlejavaformat/java/DimensionHelpers$TypeWithDims;

    move-result-object p2

    .line 17
    iget-object v3, p2, Lorg/google/googlejavaformat/java/DimensionHelpers$TypeWithDims;->node:Lorg/openjdk/source/tree/Tree;

    .line 18
    new-instance v4, Ljava/util/ArrayDeque;

    iget-object p2, p2, Lorg/google/googlejavaformat/java/DimensionHelpers$TypeWithDims;->dims:Lcom/google/common/collect/g1;

    invoke-direct {v4, p2}, Ljava/util/ArrayDeque;-><init>(Ljava/util/Collection;)V

    goto :goto_2

    :cond_2
    move-object v3, v1

    move-object v4, v3

    .line 19
    :goto_2
    iget-object p2, p0, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lorg/google/googlejavaformat/OpsBuilder;

    iget-object v5, p0, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->plusFour:Lorg/google/googlejavaformat/Indent$Const;

    invoke-virtual {p2, v5}, Lorg/google/googlejavaformat/OpsBuilder;->open(Lorg/google/googlejavaformat/Indent;)V

    .line 20
    invoke-virtual {p0}, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->genSym()Lorg/google/googlejavaformat/Output$BreakTag;

    move-result-object p2

    .line 21
    invoke-virtual {p0}, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->genSym()Lorg/google/googlejavaformat/Output$BreakTag;

    move-result-object v5

    .line 22
    iget-object v6, p0, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lorg/google/googlejavaformat/OpsBuilder;

    sget-object v7, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->ZERO:Lorg/google/googlejavaformat/Indent$Const;

    invoke-virtual {v6, v7}, Lorg/google/googlejavaformat/OpsBuilder;->open(Lorg/google/googlejavaformat/Indent;)V

    .line 23
    invoke-interface {p1}, Lorg/openjdk/source/tree/MethodTree;->getTypeParameters()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v6

    const/4 v8, 0x1

    const-string v9, " "

    if-nez v6, :cond_4

    .line 24
    const-string v6, "<"

    invoke-virtual {p0, v6}, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->token(Ljava/lang/String;)V

    .line 25
    invoke-interface {p1}, Lorg/openjdk/source/tree/MethodTree;->getTypeParameters()Ljava/util/List;

    move-result-object v6

    iget-object v10, p0, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->plusFour:Lorg/google/googlejavaformat/Indent$Const;

    invoke-direct {p0, v6, v10}, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->typeParametersRest(Ljava/util/List;Lorg/google/googlejavaformat/Indent;)V

    .line 26
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_3

    .line 27
    iget-object v6, p0, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lorg/google/googlejavaformat/OpsBuilder;

    invoke-virtual {v6, v9}, Lorg/google/googlejavaformat/OpsBuilder;->breakToFill(Ljava/lang/String;)V

    .line 28
    sget-object v6, Lorg/google/googlejavaformat/java/JavaInputAstVisitor$BreakOrNot;->NO:Lorg/google/googlejavaformat/java/JavaInputAstVisitor$BreakOrNot;

    invoke-virtual {p0, v0, v6, v6}, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->visitAnnotations(Ljava/util/List;Lorg/google/googlejavaformat/java/JavaInputAstVisitor$BreakOrNot;Lorg/google/googlejavaformat/java/JavaInputAstVisitor$BreakOrNot;)V

    :cond_3
    move v0, v2

    goto :goto_3

    :cond_4
    move v0, v8

    :goto_3
    if-eqz v3, :cond_6

    if-nez v0, :cond_5

    .line 29
    iget-object v2, p0, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lorg/google/googlejavaformat/OpsBuilder;

    sget-object v6, Lorg/google/googlejavaformat/Doc$FillMode;->INDEPENDENT:Lorg/google/googlejavaformat/Doc$FillMode;

    invoke-static {v5}, Lw2/C;->f(Ljava/lang/Object;)Lw2/C;

    move-result-object v10

    invoke-virtual {v2, v6, v9, v7, v10}, Lorg/google/googlejavaformat/OpsBuilder;->breakOp(Lorg/google/googlejavaformat/Doc$FillMode;Ljava/lang/String;Lorg/google/googlejavaformat/Indent;Lw2/C;)V

    move v2, v0

    .line 30
    :cond_5
    iget-object v0, p0, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lorg/google/googlejavaformat/OpsBuilder;

    iget-object v6, p0, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->plusFour:Lorg/google/googlejavaformat/Indent$Const;

    invoke-static {v5, v6, v7}, Lorg/google/googlejavaformat/Indent$If;->make(Lorg/google/googlejavaformat/Output$BreakTag;Lorg/google/googlejavaformat/Indent;Lorg/google/googlejavaformat/Indent;)Lorg/google/googlejavaformat/Indent$If;

    move-result-object v6

    invoke-virtual {v0, v6}, Lorg/google/googlejavaformat/OpsBuilder;->open(Lorg/google/googlejavaformat/Indent;)V

    .line 31
    invoke-virtual {p0, v3, v1}, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->scan(Lorg/openjdk/source/tree/Tree;Ljava/lang/Void;)Ljava/lang/Void;

    .line 32
    invoke-direct {p0, v4}, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->maybeAddDims(Ljava/util/Deque;)V

    move v0, v2

    move v2, v8

    :cond_6
    if-nez v0, :cond_7

    .line 33
    iget-object v0, p0, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lorg/google/googlejavaformat/OpsBuilder;

    sget-object v3, Lorg/google/googlejavaformat/Doc$FillMode;->INDEPENDENT:Lorg/google/googlejavaformat/Doc$FillMode;

    invoke-static {p2}, Lw2/C;->f(Ljava/lang/Object;)Lw2/C;

    move-result-object v6

    invoke-virtual {v0, v3, v9, v7, v6}, Lorg/google/googlejavaformat/OpsBuilder;->breakOp(Lorg/google/googlejavaformat/Doc$FillMode;Ljava/lang/String;Lorg/google/googlejavaformat/Indent;Lw2/C;)V

    :cond_7
    if-nez v2, :cond_8

    .line 34
    iget-object v0, p0, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lorg/google/googlejavaformat/OpsBuilder;

    invoke-virtual {v0, v7}, Lorg/google/googlejavaformat/OpsBuilder;->open(Lorg/google/googlejavaformat/Indent;)V

    .line 35
    :cond_8
    invoke-interface {p1}, Lorg/openjdk/source/tree/MethodTree;->getName()Lorg/openjdk/javax/lang/model/element/Name;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 36
    const-string v2, "<init>"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 37
    iget-object v0, p0, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lorg/google/googlejavaformat/OpsBuilder;

    invoke-virtual {v0}, Lorg/google/googlejavaformat/OpsBuilder;->peekToken()Lw2/C;

    move-result-object v0

    invoke-virtual {v0}, Lw2/C;->d()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 38
    :cond_9
    invoke-virtual {p0, v0}, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->token(Ljava/lang/String;)V

    .line 39
    const-string v0, "("

    invoke-virtual {p0, v0}, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->token(Ljava/lang/String;)V

    .line 40
    iget-object v0, p0, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lorg/google/googlejavaformat/OpsBuilder;

    invoke-virtual {v0}, Lorg/google/googlejavaformat/OpsBuilder;->close()V

    .line 41
    iget-object v0, p0, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lorg/google/googlejavaformat/OpsBuilder;

    invoke-virtual {v0}, Lorg/google/googlejavaformat/OpsBuilder;->close()V

    .line 42
    iget-object v0, p0, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lorg/google/googlejavaformat/OpsBuilder;

    iget-object v2, p0, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->plusFour:Lorg/google/googlejavaformat/Indent$Const;

    invoke-static {p2, v2, v7}, Lorg/google/googlejavaformat/Indent$If;->make(Lorg/google/googlejavaformat/Output$BreakTag;Lorg/google/googlejavaformat/Indent;Lorg/google/googlejavaformat/Indent;)Lorg/google/googlejavaformat/Indent$If;

    move-result-object p2

    invoke-virtual {v0, p2}, Lorg/google/googlejavaformat/OpsBuilder;->open(Lorg/google/googlejavaformat/Indent;)V

    .line 43
    iget-object p2, p0, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lorg/google/googlejavaformat/OpsBuilder;

    iget-object v0, p0, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->plusFour:Lorg/google/googlejavaformat/Indent$Const;

    invoke-static {v5, v0, v7}, Lorg/google/googlejavaformat/Indent$If;->make(Lorg/google/googlejavaformat/Output$BreakTag;Lorg/google/googlejavaformat/Indent;Lorg/google/googlejavaformat/Indent;)Lorg/google/googlejavaformat/Indent$If;

    move-result-object v0

    invoke-virtual {p2, v0}, Lorg/google/googlejavaformat/OpsBuilder;->open(Lorg/google/googlejavaformat/Indent;)V

    .line 44
    iget-object p2, p0, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lorg/google/googlejavaformat/OpsBuilder;

    invoke-virtual {p2, v7}, Lorg/google/googlejavaformat/OpsBuilder;->open(Lorg/google/googlejavaformat/Indent;)V

    .line 45
    invoke-interface {p1}, Lorg/openjdk/source/tree/MethodTree;->getParameters()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_a

    invoke-interface {p1}, Lorg/openjdk/source/tree/MethodTree;->getReceiverParameter()Lorg/openjdk/source/tree/VariableTree;

    move-result-object p2

    if-eqz p2, :cond_b

    .line 46
    :cond_a
    iget-object p2, p0, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lorg/google/googlejavaformat/OpsBuilder;

    const-string v0, ""

    invoke-virtual {p2, v0}, Lorg/google/googlejavaformat/OpsBuilder;->breakToFill(Ljava/lang/String;)V

    .line 47
    invoke-interface {p1}, Lorg/openjdk/source/tree/MethodTree;->getReceiverParameter()Lorg/openjdk/source/tree/VariableTree;

    move-result-object p2

    invoke-static {p2}, Lw2/C;->c(Ljava/lang/Object;)Lw2/C;

    move-result-object p2

    invoke-interface {p1}, Lorg/openjdk/source/tree/MethodTree;->getParameters()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, p2, v0}, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->visitFormals(Lw2/C;Ljava/util/List;)V

    .line 48
    :cond_b
    const-string p2, ")"

    invoke-virtual {p0, p2}, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->token(Ljava/lang/String;)V

    if-eqz v4, :cond_c

    .line 49
    invoke-direct {p0, v4}, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->maybeAddDims(Ljava/util/Deque;)V

    .line 50
    :cond_c
    invoke-interface {p1}, Lorg/openjdk/source/tree/MethodTree;->getThrows()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_d

    .line 51
    iget-object p2, p0, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lorg/google/googlejavaformat/OpsBuilder;

    invoke-virtual {p2, v9}, Lorg/google/googlejavaformat/OpsBuilder;->breakToFill(Ljava/lang/String;)V

    .line 52
    iget-object p2, p0, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lorg/google/googlejavaformat/OpsBuilder;

    iget-object v0, p0, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->plusFour:Lorg/google/googlejavaformat/Indent$Const;

    invoke-virtual {p2, v0}, Lorg/google/googlejavaformat/OpsBuilder;->open(Lorg/google/googlejavaformat/Indent;)V

    .line 53
    invoke-interface {p1}, Lorg/openjdk/source/tree/MethodTree;->getThrows()Ljava/util/List;

    move-result-object p2

    invoke-direct {p0, p2}, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->visitThrowsClause(Ljava/util/List;)V

    .line 54
    iget-object p2, p0, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lorg/google/googlejavaformat/OpsBuilder;

    invoke-virtual {p2}, Lorg/google/googlejavaformat/OpsBuilder;->close()V

    .line 55
    :cond_d
    invoke-interface {p1}, Lorg/openjdk/source/tree/MethodTree;->getDefaultValue()Lorg/openjdk/source/tree/Tree;

    move-result-object p2

    if-eqz p2, :cond_f

    .line 56
    iget-object p2, p0, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lorg/google/googlejavaformat/OpsBuilder;

    invoke-virtual {p2}, Lorg/google/googlejavaformat/OpsBuilder;->space()V

    .line 57
    const-string p2, "default"

    invoke-virtual {p0, p2}, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->token(Ljava/lang/String;)V

    .line 58
    invoke-interface {p1}, Lorg/openjdk/source/tree/MethodTree;->getDefaultValue()Lorg/openjdk/source/tree/Tree;

    move-result-object p2

    invoke-interface {p2}, Lorg/openjdk/source/tree/Tree;->getKind()Lorg/openjdk/source/tree/Tree$Kind;

    move-result-object p2

    sget-object v0, Lorg/openjdk/source/tree/Tree$Kind;->NEW_ARRAY:Lorg/openjdk/source/tree/Tree$Kind;

    if-ne p2, v0, :cond_e

    .line 59
    iget-object p2, p0, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lorg/google/googlejavaformat/OpsBuilder;

    iget-object v0, p0, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->minusFour:Lorg/google/googlejavaformat/Indent$Const;

    invoke-virtual {p2, v0}, Lorg/google/googlejavaformat/OpsBuilder;->open(Lorg/google/googlejavaformat/Indent;)V

    .line 60
    iget-object p2, p0, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lorg/google/googlejavaformat/OpsBuilder;

    invoke-virtual {p2}, Lorg/google/googlejavaformat/OpsBuilder;->space()V

    .line 61
    invoke-interface {p1}, Lorg/openjdk/source/tree/MethodTree;->getDefaultValue()Lorg/openjdk/source/tree/Tree;

    move-result-object p2

    invoke-virtual {p0, p2, v1}, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->scan(Lorg/openjdk/source/tree/Tree;Ljava/lang/Void;)Ljava/lang/Void;

    .line 62
    iget-object p2, p0, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lorg/google/googlejavaformat/OpsBuilder;

    invoke-virtual {p2}, Lorg/google/googlejavaformat/OpsBuilder;->close()V

    goto :goto_4

    .line 63
    :cond_e
    iget-object p2, p0, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lorg/google/googlejavaformat/OpsBuilder;

    invoke-virtual {p2, v7}, Lorg/google/googlejavaformat/OpsBuilder;->open(Lorg/google/googlejavaformat/Indent;)V

    .line 64
    iget-object p2, p0, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lorg/google/googlejavaformat/OpsBuilder;

    invoke-virtual {p2, v9}, Lorg/google/googlejavaformat/OpsBuilder;->breakToFill(Ljava/lang/String;)V

    .line 65
    invoke-interface {p1}, Lorg/openjdk/source/tree/MethodTree;->getDefaultValue()Lorg/openjdk/source/tree/Tree;

    move-result-object p2

    invoke-virtual {p0, p2, v1}, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->scan(Lorg/openjdk/source/tree/Tree;Ljava/lang/Void;)Ljava/lang/Void;

    .line 66
    iget-object p2, p0, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lorg/google/googlejavaformat/OpsBuilder;

    invoke-virtual {p2}, Lorg/google/googlejavaformat/OpsBuilder;->close()V

    .line 67
    :cond_f
    :goto_4
    iget-object p2, p0, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lorg/google/googlejavaformat/OpsBuilder;

    invoke-virtual {p2}, Lorg/google/googlejavaformat/OpsBuilder;->close()V

    .line 68
    iget-object p2, p0, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lorg/google/googlejavaformat/OpsBuilder;

    invoke-virtual {p2}, Lorg/google/googlejavaformat/OpsBuilder;->close()V

    .line 69
    iget-object p2, p0, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lorg/google/googlejavaformat/OpsBuilder;

    invoke-virtual {p2}, Lorg/google/googlejavaformat/OpsBuilder;->close()V

    .line 70
    invoke-interface {p1}, Lorg/openjdk/source/tree/MethodTree;->getBody()Lorg/openjdk/source/tree/BlockTree;

    move-result-object p2

    if-nez p2, :cond_10

    .line 71
    const-string p2, ";"

    invoke-virtual {p0, p2}, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->token(Ljava/lang/String;)V

    goto :goto_5

    .line 72
    :cond_10
    iget-object p2, p0, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lorg/google/googlejavaformat/OpsBuilder;

    invoke-virtual {p2}, Lorg/google/googlejavaformat/OpsBuilder;->space()V

    .line 73
    iget-object p2, p0, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lorg/google/googlejavaformat/OpsBuilder;

    sget-object v0, Lorg/google/googlejavaformat/Doc$Token$RealOrImaginary;->REAL:Lorg/google/googlejavaformat/Doc$Token$RealOrImaginary;

    iget-object v2, p0, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->plusTwo:Lorg/google/googlejavaformat/Indent$Const;

    invoke-static {v2}, Lw2/C;->f(Ljava/lang/Object;)Lw2/C;

    move-result-object v3

    const-string v4, "{"

    invoke-virtual {p2, v4, v0, v2, v3}, Lorg/google/googlejavaformat/OpsBuilder;->token(Ljava/lang/String;Lorg/google/googlejavaformat/Doc$Token$RealOrImaginary;Lorg/google/googlejavaformat/Indent;Lw2/C;)V

    .line 74
    :goto_5
    iget-object p2, p0, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lorg/google/googlejavaformat/OpsBuilder;

    invoke-virtual {p2}, Lorg/google/googlejavaformat/OpsBuilder;->close()V

    .line 75
    invoke-interface {p1}, Lorg/openjdk/source/tree/MethodTree;->getBody()Lorg/openjdk/source/tree/BlockTree;

    move-result-object p2

    if-eqz p2, :cond_11

    .line 76
    invoke-direct {p0, p1}, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->methodBody(Lorg/openjdk/source/tree/MethodTree;)V

    :cond_11
    return-object v1
.end method

.method public bridge synthetic visitMethodInvocation(Lorg/openjdk/source/tree/MethodInvocationTree;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            "node",
            "unused"
        }
    .end annotation

    .line 1
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->visitMethodInvocation(Lorg/openjdk/source/tree/MethodInvocationTree;Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public visitMethodInvocation(Lorg/openjdk/source/tree/MethodInvocationTree;Ljava/lang/Void;)Ljava/lang/Void;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "node",
            "unused"
        }
    .end annotation

    .line 2
    invoke-virtual {p0, p1}, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->sync(Lorg/openjdk/source/tree/Tree;)V

    .line 3
    invoke-direct {p0, p1}, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->handleLogStatement(Lorg/openjdk/source/tree/MethodInvocationTree;)Z

    move-result p2

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    return-object v0

    .line 4
    :cond_0
    invoke-virtual {p0, p1}, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->visitDot(Lorg/openjdk/source/tree/ExpressionTree;)V

    return-object v0
.end method

.method public bridge synthetic visitModifiers(Lorg/openjdk/source/tree/ModifiersTree;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            "node",
            "unused"
        }
    .end annotation

    .line 1
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->visitModifiers(Lorg/openjdk/source/tree/ModifiersTree;Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public visitModifiers(Lorg/openjdk/source/tree/ModifiersTree;Ljava/lang/Void;)Ljava/lang/Void;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "node",
            "unused"
        }
    .end annotation

    .line 2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "expected manual descent into modifiers"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public bridge synthetic visitModule(Lorg/openjdk/source/tree/ModuleTree;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            "node",
            "unused"
        }
    .end annotation

    .line 1
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->visitModule(Lorg/openjdk/source/tree/ModuleTree;Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public visitModule(Lorg/openjdk/source/tree/ModuleTree;Ljava/lang/Void;)Ljava/lang/Void;
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "node",
            "unused"
        }
    .end annotation

    .line 2
    invoke-interface {p1}, Lorg/openjdk/source/tree/ModuleTree;->getAnnotations()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/openjdk/source/tree/AnnotationTree;

    .line 3
    invoke-virtual {p0, v0, v1}, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->scan(Lorg/openjdk/source/tree/Tree;Ljava/lang/Void;)Ljava/lang/Void;

    .line 4
    iget-object v0, p0, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lorg/google/googlejavaformat/OpsBuilder;

    invoke-virtual {v0}, Lorg/google/googlejavaformat/OpsBuilder;->forcedBreak()V

    goto :goto_0

    .line 5
    :cond_0
    invoke-interface {p1}, Lorg/openjdk/source/tree/ModuleTree;->getModuleType()Lorg/openjdk/source/tree/ModuleTree$ModuleKind;

    move-result-object p2

    sget-object v0, Lorg/openjdk/source/tree/ModuleTree$ModuleKind;->OPEN:Lorg/openjdk/source/tree/ModuleTree$ModuleKind;

    if-ne p2, v0, :cond_1

    .line 6
    const-string p2, "open"

    invoke-virtual {p0, p2}, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->token(Ljava/lang/String;)V

    .line 7
    iget-object p2, p0, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lorg/google/googlejavaformat/OpsBuilder;

    invoke-virtual {p2}, Lorg/google/googlejavaformat/OpsBuilder;->space()V

    .line 8
    :cond_1
    const-string p2, "module"

    invoke-virtual {p0, p2}, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->token(Ljava/lang/String;)V

    .line 9
    iget-object p2, p0, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lorg/google/googlejavaformat/OpsBuilder;

    invoke-virtual {p2}, Lorg/google/googlejavaformat/OpsBuilder;->space()V

    .line 10
    invoke-interface {p1}, Lorg/openjdk/source/tree/ModuleTree;->getName()Lorg/openjdk/source/tree/ExpressionTree;

    move-result-object p2

    invoke-virtual {p0, p2, v1}, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->scan(Lorg/openjdk/source/tree/Tree;Ljava/lang/Void;)Ljava/lang/Void;

    .line 11
    iget-object p2, p0, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lorg/google/googlejavaformat/OpsBuilder;

    invoke-virtual {p2}, Lorg/google/googlejavaformat/OpsBuilder;->space()V

    .line 12
    invoke-interface {p1}, Lorg/openjdk/source/tree/ModuleTree;->getDirectives()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result p2

    const-string v0, "}"

    const-string v2, "{"

    if-eqz p2, :cond_2

    .line 13
    iget-object p1, p0, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->plusTwo:Lorg/google/googlejavaformat/Indent$Const;

    invoke-virtual {p0, v2, p1}, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->tokenBreakTrailingComment(Ljava/lang/String;Lorg/google/googlejavaformat/Indent;)V

    .line 14
    iget-object p1, p0, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lorg/google/googlejavaformat/OpsBuilder;

    sget-object p2, Lorg/google/googlejavaformat/OpsBuilder$BlankLineWanted;->NO:Lorg/google/googlejavaformat/OpsBuilder$BlankLineWanted;

    invoke-virtual {p1, p2}, Lorg/google/googlejavaformat/OpsBuilder;->blankLineWanted(Lorg/google/googlejavaformat/OpsBuilder$BlankLineWanted;)V

    .line 15
    iget-object p1, p0, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->plusTwo:Lorg/google/googlejavaformat/Indent$Const;

    invoke-virtual {p0, v0, p1}, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->token(Ljava/lang/String;Lorg/google/googlejavaformat/Indent;)V

    goto :goto_3

    .line 16
    :cond_2
    iget-object p2, p0, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lorg/google/googlejavaformat/OpsBuilder;

    iget-object v3, p0, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->plusTwo:Lorg/google/googlejavaformat/Indent$Const;

    invoke-virtual {p2, v3}, Lorg/google/googlejavaformat/OpsBuilder;->open(Lorg/google/googlejavaformat/Indent;)V

    .line 17
    invoke-virtual {p0, v2}, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->token(Ljava/lang/String;)V

    .line 18
    iget-object p2, p0, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lorg/google/googlejavaformat/OpsBuilder;

    invoke-virtual {p2}, Lorg/google/googlejavaformat/OpsBuilder;->forcedBreak()V

    .line 19
    invoke-static {}, Lw2/C;->a()Lw2/C;

    move-result-object p2

    .line 20
    invoke-interface {p1}, Lorg/openjdk/source/tree/ModuleTree;->getDirectives()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/openjdk/source/tree/DirectiveTree;

    .line 21
    invoke-direct {p0}, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->markForPartialFormat()V

    .line 22
    iget-object v3, p0, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lorg/google/googlejavaformat/OpsBuilder;

    .line 23
    new-instance v4, Lorg/google/googlejavaformat/java/e;

    invoke-direct {v4, v2}, Lorg/google/googlejavaformat/java/e;-><init>(Lorg/openjdk/source/tree/DirectiveTree;)V

    invoke-virtual {p2, v4}, Lw2/C;->l(Lw2/t;)Lw2/C;

    move-result-object p2

    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p2, v4}, Lw2/C;->g(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_3

    .line 24
    sget-object p2, Lorg/google/googlejavaformat/OpsBuilder$BlankLineWanted;->YES:Lorg/google/googlejavaformat/OpsBuilder$BlankLineWanted;

    goto :goto_2

    .line 25
    :cond_3
    sget-object p2, Lorg/google/googlejavaformat/OpsBuilder$BlankLineWanted;->NO:Lorg/google/googlejavaformat/OpsBuilder$BlankLineWanted;

    .line 26
    :goto_2
    invoke-virtual {v3, p2}, Lorg/google/googlejavaformat/OpsBuilder;->blankLineWanted(Lorg/google/googlejavaformat/OpsBuilder$BlankLineWanted;)V

    .line 27
    iget-object p2, p0, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lorg/google/googlejavaformat/OpsBuilder;

    invoke-virtual {p2}, Lorg/google/googlejavaformat/OpsBuilder;->forcedBreak()V

    .line 28
    invoke-virtual {p0, v2, v1}, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->scan(Lorg/openjdk/source/tree/Tree;Ljava/lang/Void;)Ljava/lang/Void;

    .line 29
    invoke-interface {v2}, Lorg/openjdk/source/tree/Tree;->getKind()Lorg/openjdk/source/tree/Tree$Kind;

    move-result-object p2

    invoke-static {p2}, Lw2/C;->f(Ljava/lang/Object;)Lw2/C;

    move-result-object p2

    goto :goto_1

    .line 30
    :cond_4
    iget-object p1, p0, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lorg/google/googlejavaformat/OpsBuilder;

    invoke-virtual {p1}, Lorg/google/googlejavaformat/OpsBuilder;->close()V

    .line 31
    iget-object p1, p0, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lorg/google/googlejavaformat/OpsBuilder;

    invoke-virtual {p1}, Lorg/google/googlejavaformat/OpsBuilder;->forcedBreak()V

    .line 32
    invoke-virtual {p0, v0}, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->token(Ljava/lang/String;)V

    :goto_3
    return-object v1
.end method

.method public bridge synthetic visitNewArray(Lorg/openjdk/source/tree/NewArrayTree;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            "node",
            "unused"
        }
    .end annotation

    .line 1
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->visitNewArray(Lorg/openjdk/source/tree/NewArrayTree;Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public visitNewArray(Lorg/openjdk/source/tree/NewArrayTree;Ljava/lang/Void;)Ljava/lang/Void;
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "node",
            "unused"
        }
    .end annotation

    .line 2
    invoke-interface {p1}, Lorg/openjdk/source/tree/NewArrayTree;->getType()Lorg/openjdk/source/tree/Tree;

    move-result-object p2

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    .line 3
    iget-object p2, p0, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lorg/google/googlejavaformat/OpsBuilder;

    iget-object v1, p0, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->plusFour:Lorg/google/googlejavaformat/Indent$Const;

    invoke-virtual {p2, v1}, Lorg/google/googlejavaformat/OpsBuilder;->open(Lorg/google/googlejavaformat/Indent;)V

    .line 4
    const-string p2, "new"

    invoke-virtual {p0, p2}, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->token(Ljava/lang/String;)V

    .line 5
    iget-object p2, p0, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lorg/google/googlejavaformat/OpsBuilder;

    invoke-virtual {p2}, Lorg/google/googlejavaformat/OpsBuilder;->space()V

    .line 6
    invoke-interface {p1}, Lorg/openjdk/source/tree/NewArrayTree;->getType()Lorg/openjdk/source/tree/Tree;

    move-result-object p2

    sget-object v1, Lorg/google/googlejavaformat/java/DimensionHelpers$SortedDims;->YES:Lorg/google/googlejavaformat/java/DimensionHelpers$SortedDims;

    invoke-static {p2, v1}, Lorg/google/googlejavaformat/java/DimensionHelpers;->extractDims(Lorg/openjdk/source/tree/Tree;Lorg/google/googlejavaformat/java/DimensionHelpers$SortedDims;)Lorg/google/googlejavaformat/java/DimensionHelpers$TypeWithDims;

    move-result-object p2

    .line 7
    iget-object v1, p2, Lorg/google/googlejavaformat/java/DimensionHelpers$TypeWithDims;->node:Lorg/openjdk/source/tree/Tree;

    .line 8
    new-instance v2, Ljava/util/ArrayDeque;

    invoke-interface {p1}, Lorg/openjdk/source/tree/NewArrayTree;->getDimensions()Ljava/util/List;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/ArrayDeque;-><init>(Ljava/util/Collection;)V

    .line 9
    new-instance v3, Ljava/util/ArrayDeque;

    invoke-direct {v3}, Ljava/util/ArrayDeque;-><init>()V

    .line 10
    invoke-interface {p1}, Lorg/openjdk/source/tree/NewArrayTree;->getAnnotations()Ljava/util/List;

    move-result-object v4

    invoke-static {v4}, Lcom/google/common/collect/g1;->r(Ljava/util/Collection;)Lcom/google/common/collect/g1;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Deque;->add(Ljava/lang/Object;)Z

    .line 11
    invoke-interface {p1}, Lorg/openjdk/source/tree/NewArrayTree;->getDimAnnotations()Ljava/util/List;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Deque;->addAll(Ljava/util/Collection;)Z

    .line 12
    iget-object p2, p2, Lorg/google/googlejavaformat/java/DimensionHelpers$TypeWithDims;->dims:Lcom/google/common/collect/g1;

    invoke-interface {v3, p2}, Ljava/util/Deque;->addAll(Ljava/util/Collection;)Z

    .line 13
    invoke-virtual {p0, v1, v0}, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->scan(Lorg/openjdk/source/tree/Tree;Ljava/lang/Void;)Ljava/lang/Void;

    .line 14
    iget-object p2, p0, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lorg/google/googlejavaformat/OpsBuilder;

    sget-object v1, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->ZERO:Lorg/google/googlejavaformat/Indent$Const;

    invoke-virtual {p2, v1}, Lorg/google/googlejavaformat/OpsBuilder;->open(Lorg/google/googlejavaformat/Indent;)V

    .line 15
    invoke-direct {p0, v2, v3}, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->maybeAddDims(Ljava/util/Deque;Ljava/util/Deque;)V

    .line 16
    iget-object p2, p0, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lorg/google/googlejavaformat/OpsBuilder;

    invoke-virtual {p2}, Lorg/google/googlejavaformat/OpsBuilder;->close()V

    .line 17
    iget-object p2, p0, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lorg/google/googlejavaformat/OpsBuilder;

    invoke-virtual {p2}, Lorg/google/googlejavaformat/OpsBuilder;->close()V

    .line 18
    :cond_0
    invoke-interface {p1}, Lorg/openjdk/source/tree/NewArrayTree;->getInitializers()Ljava/util/List;

    move-result-object p2

    if-eqz p2, :cond_2

    .line 19
    invoke-interface {p1}, Lorg/openjdk/source/tree/NewArrayTree;->getType()Lorg/openjdk/source/tree/Tree;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 20
    iget-object p2, p0, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lorg/google/googlejavaformat/OpsBuilder;

    invoke-virtual {p2}, Lorg/google/googlejavaformat/OpsBuilder;->space()V

    .line 21
    :cond_1
    invoke-interface {p1}, Lorg/openjdk/source/tree/NewArrayTree;->getInitializers()Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->visitArrayInitializer(Ljava/util/List;)Z

    :cond_2
    return-object v0
.end method

.method public bridge synthetic visitNewClass(Lorg/openjdk/source/tree/NewClassTree;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            "node",
            "unused"
        }
    .end annotation

    .line 1
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->visitNewClass(Lorg/openjdk/source/tree/NewClassTree;Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public visitNewClass(Lorg/openjdk/source/tree/NewClassTree;Ljava/lang/Void;)Ljava/lang/Void;
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "node",
            "unused"
        }
    .end annotation

    .line 2
    invoke-virtual {p0, p1}, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->sync(Lorg/openjdk/source/tree/Tree;)V

    .line 3
    iget-object p2, p0, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lorg/google/googlejavaformat/OpsBuilder;

    sget-object v0, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->ZERO:Lorg/google/googlejavaformat/Indent$Const;

    invoke-virtual {p2, v0}, Lorg/google/googlejavaformat/OpsBuilder;->open(Lorg/google/googlejavaformat/Indent;)V

    .line 4
    invoke-interface {p1}, Lorg/openjdk/source/tree/NewClassTree;->getEnclosingExpression()Lorg/openjdk/source/tree/ExpressionTree;

    move-result-object p2

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    .line 5
    invoke-interface {p1}, Lorg/openjdk/source/tree/NewClassTree;->getEnclosingExpression()Lorg/openjdk/source/tree/ExpressionTree;

    move-result-object p2

    invoke-virtual {p0, p2, v0}, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->scan(Lorg/openjdk/source/tree/Tree;Ljava/lang/Void;)Ljava/lang/Void;

    .line 6
    iget-object p2, p0, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lorg/google/googlejavaformat/OpsBuilder;

    invoke-virtual {p2}, Lorg/google/googlejavaformat/OpsBuilder;->breakOp()V

    .line 7
    const-string p2, "."

    invoke-virtual {p0, p2}, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->token(Ljava/lang/String;)V

    .line 8
    :cond_0
    const-string p2, "new"

    invoke-virtual {p0, p2}, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->token(Ljava/lang/String;)V

    .line 9
    iget-object p2, p0, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lorg/google/googlejavaformat/OpsBuilder;

    invoke-virtual {p2}, Lorg/google/googlejavaformat/OpsBuilder;->space()V

    .line 10
    invoke-interface {p1}, Lorg/openjdk/source/tree/NewClassTree;->getTypeArguments()Ljava/util/List;

    move-result-object p2

    iget-object v1, p0, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->plusFour:Lorg/google/googlejavaformat/Indent$Const;

    invoke-virtual {p0, p2, v1}, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->addTypeArguments(Ljava/util/List;Lorg/google/googlejavaformat/Indent;)V

    .line 11
    invoke-interface {p1}, Lorg/openjdk/source/tree/NewClassTree;->getClassBody()Lorg/openjdk/source/tree/ClassTree;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 12
    iget-object p2, p0, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lorg/google/googlejavaformat/OpsBuilder;

    .line 13
    invoke-interface {p1}, Lorg/openjdk/source/tree/NewClassTree;->getClassBody()Lorg/openjdk/source/tree/ClassTree;

    move-result-object v1

    invoke-interface {v1}, Lorg/openjdk/source/tree/ClassTree;->getModifiers()Lorg/openjdk/source/tree/ModifiersTree;

    move-result-object v1

    sget-object v2, Lorg/google/googlejavaformat/java/JavaInputAstVisitor$Direction;->HORIZONTAL:Lorg/google/googlejavaformat/java/JavaInputAstVisitor$Direction;

    invoke-static {}, Lw2/C;->a()Lw2/C;

    move-result-object v3

    .line 14
    invoke-direct {p0, v1, v2, v3}, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->visitModifiers(Lorg/openjdk/source/tree/ModifiersTree;Lorg/google/googlejavaformat/java/JavaInputAstVisitor$Direction;Lw2/C;)Ljava/util/List;

    move-result-object v1

    .line 15
    invoke-virtual {p2, v1}, Lorg/google/googlejavaformat/OpsBuilder;->addAll(Ljava/util/List;)V

    .line 16
    :cond_1
    invoke-interface {p1}, Lorg/openjdk/source/tree/NewClassTree;->getIdentifier()Lorg/openjdk/source/tree/ExpressionTree;

    move-result-object p2

    invoke-virtual {p0, p2, v0}, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->scan(Lorg/openjdk/source/tree/Tree;Ljava/lang/Void;)Ljava/lang/Void;

    .line 17
    invoke-interface {p1}, Lorg/openjdk/source/tree/NewClassTree;->getArguments()Ljava/util/List;

    move-result-object p2

    iget-object v1, p0, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->plusFour:Lorg/google/googlejavaformat/Indent$Const;

    invoke-virtual {p0, p2, v1}, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->addArguments(Ljava/util/List;Lorg/google/googlejavaformat/Indent;)V

    .line 18
    iget-object p2, p0, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lorg/google/googlejavaformat/OpsBuilder;

    invoke-virtual {p2}, Lorg/google/googlejavaformat/OpsBuilder;->close()V

    .line 19
    invoke-interface {p1}, Lorg/openjdk/source/tree/NewClassTree;->getClassBody()Lorg/openjdk/source/tree/ClassTree;

    move-result-object p2

    if-eqz p2, :cond_2

    .line 20
    invoke-interface {p1}, Lorg/openjdk/source/tree/NewClassTree;->getClassBody()Lorg/openjdk/source/tree/ClassTree;

    move-result-object p1

    invoke-interface {p1}, Lorg/openjdk/source/tree/ClassTree;->getMembers()Ljava/util/List;

    move-result-object p1

    sget-object p2, Lorg/google/googlejavaformat/java/JavaInputAstVisitor$BracesOrNot;->YES:Lorg/google/googlejavaformat/java/JavaInputAstVisitor$BracesOrNot;

    sget-object v1, Lorg/google/googlejavaformat/java/JavaInputAstVisitor$FirstDeclarationsOrNot;->YES:Lorg/google/googlejavaformat/java/JavaInputAstVisitor$FirstDeclarationsOrNot;

    .line 21
    invoke-virtual {p0, p1, p2, v1}, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->addBodyDeclarations(Ljava/util/List;Lorg/google/googlejavaformat/java/JavaInputAstVisitor$BracesOrNot;Lorg/google/googlejavaformat/java/JavaInputAstVisitor$FirstDeclarationsOrNot;)V

    :cond_2
    return-object v0
.end method

.method public bridge synthetic visitOpens(Lorg/openjdk/source/tree/OpensTree;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            "node",
            "unused"
        }
    .end annotation

    .line 1
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->visitOpens(Lorg/openjdk/source/tree/OpensTree;Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public visitOpens(Lorg/openjdk/source/tree/OpensTree;Ljava/lang/Void;)Ljava/lang/Void;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "node",
            "unused"
        }
    .end annotation

    .line 2
    invoke-interface {p1}, Lorg/openjdk/source/tree/OpensTree;->getPackageName()Lorg/openjdk/source/tree/ExpressionTree;

    move-result-object p2

    invoke-interface {p1}, Lorg/openjdk/source/tree/OpensTree;->getModuleNames()Ljava/util/List;

    move-result-object p1

    const-string v0, "opens"

    const-string v1, "to"

    invoke-direct {p0, v0, v1, p2, p1}, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->visitDirective(Ljava/lang/String;Ljava/lang/String;Lorg/openjdk/source/tree/ExpressionTree;Ljava/util/List;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public bridge synthetic visitParameterizedType(Lorg/openjdk/source/tree/ParameterizedTypeTree;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            "node",
            "unused"
        }
    .end annotation

    .line 1
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->visitParameterizedType(Lorg/openjdk/source/tree/ParameterizedTypeTree;Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public visitParameterizedType(Lorg/openjdk/source/tree/ParameterizedTypeTree;Ljava/lang/Void;)Ljava/lang/Void;
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "node",
            "unused"
        }
    .end annotation

    .line 2
    invoke-virtual {p0, p1}, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->sync(Lorg/openjdk/source/tree/Tree;)V

    .line 3
    invoke-interface {p1}, Lorg/openjdk/source/tree/ParameterizedTypeTree;->getTypeArguments()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result p2

    const-string v0, ">"

    const-string v1, "<"

    const/4 v2, 0x0

    if-eqz p2, :cond_0

    .line 4
    invoke-interface {p1}, Lorg/openjdk/source/tree/ParameterizedTypeTree;->getType()Lorg/openjdk/source/tree/Tree;

    move-result-object p1

    invoke-virtual {p0, p1, v2}, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->scan(Lorg/openjdk/source/tree/Tree;Ljava/lang/Void;)Ljava/lang/Void;

    .line 5
    invoke-virtual {p0, v1}, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->token(Ljava/lang/String;)V

    .line 6
    invoke-virtual {p0, v0}, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->token(Ljava/lang/String;)V

    goto :goto_1

    .line 7
    :cond_0
    iget-object p2, p0, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lorg/google/googlejavaformat/OpsBuilder;

    iget-object v3, p0, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->plusFour:Lorg/google/googlejavaformat/Indent$Const;

    invoke-virtual {p2, v3}, Lorg/google/googlejavaformat/OpsBuilder;->open(Lorg/google/googlejavaformat/Indent;)V

    .line 8
    invoke-interface {p1}, Lorg/openjdk/source/tree/ParameterizedTypeTree;->getType()Lorg/openjdk/source/tree/Tree;

    move-result-object p2

    invoke-virtual {p0, p2, v2}, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->scan(Lorg/openjdk/source/tree/Tree;Ljava/lang/Void;)Ljava/lang/Void;

    .line 9
    invoke-virtual {p0, v1}, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->token(Ljava/lang/String;)V

    .line 10
    iget-object p2, p0, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lorg/google/googlejavaformat/OpsBuilder;

    invoke-virtual {p2}, Lorg/google/googlejavaformat/OpsBuilder;->breakOp()V

    .line 11
    iget-object p2, p0, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lorg/google/googlejavaformat/OpsBuilder;

    sget-object v1, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->ZERO:Lorg/google/googlejavaformat/Indent$Const;

    invoke-virtual {p2, v1}, Lorg/google/googlejavaformat/OpsBuilder;->open(Lorg/google/googlejavaformat/Indent;)V

    .line 12
    invoke-interface {p1}, Lorg/openjdk/source/tree/ParameterizedTypeTree;->getTypeArguments()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 p2, 0x1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/openjdk/source/tree/Tree;

    if-nez p2, :cond_1

    .line 13
    const-string p2, ","

    invoke-virtual {p0, p2}, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->token(Ljava/lang/String;)V

    .line 14
    iget-object p2, p0, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lorg/google/googlejavaformat/OpsBuilder;

    const-string v3, " "

    invoke-virtual {p2, v3}, Lorg/google/googlejavaformat/OpsBuilder;->breakOp(Ljava/lang/String;)V

    .line 15
    :cond_1
    invoke-virtual {p0, v1, v2}, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->scan(Lorg/openjdk/source/tree/Tree;Ljava/lang/Void;)Ljava/lang/Void;

    const/4 p2, 0x0

    goto :goto_0

    .line 16
    :cond_2
    iget-object p1, p0, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lorg/google/googlejavaformat/OpsBuilder;

    invoke-virtual {p1}, Lorg/google/googlejavaformat/OpsBuilder;->close()V

    .line 17
    iget-object p1, p0, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lorg/google/googlejavaformat/OpsBuilder;

    invoke-virtual {p1}, Lorg/google/googlejavaformat/OpsBuilder;->close()V

    .line 18
    invoke-virtual {p0, v0}, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->token(Ljava/lang/String;)V

    :goto_1
    return-object v2
.end method

.method public bridge synthetic visitParenthesized(Lorg/openjdk/source/tree/ParenthesizedTree;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            "node",
            "unused"
        }
    .end annotation

    .line 1
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->visitParenthesized(Lorg/openjdk/source/tree/ParenthesizedTree;Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public visitParenthesized(Lorg/openjdk/source/tree/ParenthesizedTree;Ljava/lang/Void;)Ljava/lang/Void;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "node",
            "unused"
        }
    .end annotation

    .line 2
    const-string p2, "("

    invoke-virtual {p0, p2}, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->token(Ljava/lang/String;)V

    .line 3
    invoke-interface {p1}, Lorg/openjdk/source/tree/ParenthesizedTree;->getExpression()Lorg/openjdk/source/tree/ExpressionTree;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2}, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->scan(Lorg/openjdk/source/tree/Tree;Ljava/lang/Void;)Ljava/lang/Void;

    .line 4
    const-string p1, ")"

    invoke-virtual {p0, p1}, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->token(Ljava/lang/String;)V

    return-object p2
.end method

.method public bridge synthetic visitPrimitiveType(Lorg/openjdk/source/tree/PrimitiveTypeTree;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            "node",
            "unused"
        }
    .end annotation

    .line 1
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->visitPrimitiveType(Lorg/openjdk/source/tree/PrimitiveTypeTree;Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public visitPrimitiveType(Lorg/openjdk/source/tree/PrimitiveTypeTree;Ljava/lang/Void;)Ljava/lang/Void;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "node",
            "unused"
        }
    .end annotation

    .line 2
    invoke-virtual {p0, p1}, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->sync(Lorg/openjdk/source/tree/Tree;)V

    .line 3
    sget-object p2, Lorg/google/googlejavaformat/java/JavaInputAstVisitor$2;->$SwitchMap$org$openjdk$javax$lang$model$type$TypeKind:[I

    invoke-interface {p1}, Lorg/openjdk/source/tree/PrimitiveTypeTree;->getPrimitiveTypeKind()Lorg/openjdk/javax/lang/model/type/TypeKind;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget p2, p2, v0

    packed-switch p2, :pswitch_data_0

    .line 4
    new-instance p2, Ljava/lang/AssertionError;

    invoke-interface {p1}, Lorg/openjdk/source/tree/PrimitiveTypeTree;->getPrimitiveTypeKind()Lorg/openjdk/javax/lang/model/type/TypeKind;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p2

    .line 5
    :pswitch_0
    const-string p1, "void"

    invoke-virtual {p0, p1}, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->token(Ljava/lang/String;)V

    goto :goto_0

    .line 6
    :pswitch_1
    const-string p1, "double"

    invoke-virtual {p0, p1}, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->token(Ljava/lang/String;)V

    goto :goto_0

    .line 7
    :pswitch_2
    const-string p1, "float"

    invoke-virtual {p0, p1}, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->token(Ljava/lang/String;)V

    goto :goto_0

    .line 8
    :pswitch_3
    const-string p1, "char"

    invoke-virtual {p0, p1}, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->token(Ljava/lang/String;)V

    goto :goto_0

    .line 9
    :pswitch_4
    const-string p1, "long"

    invoke-virtual {p0, p1}, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->token(Ljava/lang/String;)V

    goto :goto_0

    .line 10
    :pswitch_5
    const-string p1, "int"

    invoke-virtual {p0, p1}, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->token(Ljava/lang/String;)V

    goto :goto_0

    .line 11
    :pswitch_6
    const-string p1, "short"

    invoke-virtual {p0, p1}, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->token(Ljava/lang/String;)V

    goto :goto_0

    .line 12
    :pswitch_7
    const-string p1, "byte"

    invoke-virtual {p0, p1}, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->token(Ljava/lang/String;)V

    goto :goto_0

    .line 13
    :pswitch_8
    const-string p1, "boolean"

    invoke-virtual {p0, p1}, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->token(Ljava/lang/String;)V

    :goto_0
    const/4 p1, 0x0

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public bridge synthetic visitProvides(Lorg/openjdk/source/tree/ProvidesTree;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            "node",
            "unused"
        }
    .end annotation

    .line 1
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->visitProvides(Lorg/openjdk/source/tree/ProvidesTree;Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public visitProvides(Lorg/openjdk/source/tree/ProvidesTree;Ljava/lang/Void;)Ljava/lang/Void;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "node",
            "unused"
        }
    .end annotation

    .line 2
    invoke-interface {p1}, Lorg/openjdk/source/tree/ProvidesTree;->getServiceName()Lorg/openjdk/source/tree/ExpressionTree;

    move-result-object p2

    invoke-interface {p1}, Lorg/openjdk/source/tree/ProvidesTree;->getImplementationNames()Ljava/util/List;

    move-result-object p1

    const-string v0, "provides"

    const-string v1, "with"

    invoke-direct {p0, v0, v1, p2, p1}, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->visitDirective(Ljava/lang/String;Ljava/lang/String;Lorg/openjdk/source/tree/ExpressionTree;Ljava/util/List;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public bridge synthetic visitRequires(Lorg/openjdk/source/tree/RequiresTree;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            "node",
            "unused"
        }
    .end annotation

    .line 1
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->visitRequires(Lorg/openjdk/source/tree/RequiresTree;Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public visitRequires(Lorg/openjdk/source/tree/RequiresTree;Ljava/lang/Void;)Ljava/lang/Void;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "node",
            "unused"
        }
    .end annotation

    .line 2
    const-string p2, "requires"

    invoke-virtual {p0, p2}, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->token(Ljava/lang/String;)V

    .line 3
    iget-object p2, p0, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lorg/google/googlejavaformat/OpsBuilder;

    invoke-virtual {p2}, Lorg/google/googlejavaformat/OpsBuilder;->space()V

    .line 4
    :goto_0
    iget-object p2, p0, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lorg/google/googlejavaformat/OpsBuilder;

    invoke-virtual {p2}, Lorg/google/googlejavaformat/OpsBuilder;->peekToken()Lw2/C;

    move-result-object p2

    const-string v0, "static"

    invoke-static {v0}, Lw2/C;->f(Ljava/lang/Object;)Lw2/C;

    move-result-object v1

    invoke-virtual {p2, v1}, Lw2/C;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 5
    invoke-virtual {p0, v0}, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->token(Ljava/lang/String;)V

    .line 6
    iget-object p2, p0, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lorg/google/googlejavaformat/OpsBuilder;

    invoke-virtual {p2}, Lorg/google/googlejavaformat/OpsBuilder;->space()V

    goto :goto_0

    .line 7
    :cond_0
    iget-object p2, p0, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lorg/google/googlejavaformat/OpsBuilder;

    invoke-virtual {p2}, Lorg/google/googlejavaformat/OpsBuilder;->peekToken()Lw2/C;

    move-result-object p2

    const-string v0, "transitive"

    invoke-static {v0}, Lw2/C;->f(Ljava/lang/Object;)Lw2/C;

    move-result-object v1

    invoke-virtual {p2, v1}, Lw2/C;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 8
    invoke-virtual {p0, v0}, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->token(Ljava/lang/String;)V

    .line 9
    iget-object p2, p0, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lorg/google/googlejavaformat/OpsBuilder;

    invoke-virtual {p2}, Lorg/google/googlejavaformat/OpsBuilder;->space()V

    goto :goto_0

    .line 10
    :cond_1
    invoke-interface {p1}, Lorg/openjdk/source/tree/RequiresTree;->getModuleName()Lorg/openjdk/source/tree/ExpressionTree;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2}, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->scan(Lorg/openjdk/source/tree/Tree;Ljava/lang/Void;)Ljava/lang/Void;

    .line 11
    const-string p1, ";"

    invoke-virtual {p0, p1}, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->token(Ljava/lang/String;)V

    return-object p2
.end method

.method public bridge synthetic visitReturn(Lorg/openjdk/source/tree/ReturnTree;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            "node",
            "unused"
        }
    .end annotation

    .line 1
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->visitReturn(Lorg/openjdk/source/tree/ReturnTree;Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public visitReturn(Lorg/openjdk/source/tree/ReturnTree;Ljava/lang/Void;)Ljava/lang/Void;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "node",
            "unused"
        }
    .end annotation

    .line 2
    invoke-virtual {p0, p1}, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->sync(Lorg/openjdk/source/tree/Tree;)V

    .line 3
    const-string p2, "return"

    invoke-virtual {p0, p2}, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->token(Ljava/lang/String;)V

    .line 4
    invoke-interface {p1}, Lorg/openjdk/source/tree/ReturnTree;->getExpression()Lorg/openjdk/source/tree/ExpressionTree;

    move-result-object p2

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    .line 5
    iget-object p2, p0, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lorg/google/googlejavaformat/OpsBuilder;

    invoke-virtual {p2}, Lorg/google/googlejavaformat/OpsBuilder;->space()V

    .line 6
    invoke-interface {p1}, Lorg/openjdk/source/tree/ReturnTree;->getExpression()Lorg/openjdk/source/tree/ExpressionTree;

    move-result-object p1

    invoke-virtual {p0, p1, v0}, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->scan(Lorg/openjdk/source/tree/Tree;Ljava/lang/Void;)Ljava/lang/Void;

    .line 7
    :cond_0
    const-string p1, ";"

    invoke-virtual {p0, p1}, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->token(Ljava/lang/String;)V

    return-object v0
.end method

.method public visitSingleMemberAnnotation(Lorg/openjdk/source/tree/AnnotationTree;)Z
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "node"
        }
    .end annotation

    invoke-interface {p1}, Lorg/openjdk/source/tree/AnnotationTree;->getArguments()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_0

    return v1

    :cond_0
    invoke-interface {p1}, Lorg/openjdk/source/tree/AnnotationTree;->getArguments()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/D1;->z(Ljava/lang/Iterable;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/openjdk/source/tree/ExpressionTree;

    invoke-interface {v0}, Lorg/openjdk/source/tree/Tree;->getKind()Lorg/openjdk/source/tree/Tree$Kind;

    move-result-object v3

    sget-object v4, Lorg/openjdk/source/tree/Tree$Kind;->ASSIGNMENT:Lorg/openjdk/source/tree/Tree$Kind;

    if-ne v3, v4, :cond_1

    return v1

    :cond_1
    invoke-interface {v0}, Lorg/openjdk/source/tree/Tree;->getKind()Lorg/openjdk/source/tree/Tree$Kind;

    move-result-object v3

    sget-object v4, Lorg/openjdk/source/tree/Tree$Kind;->NEW_ARRAY:Lorg/openjdk/source/tree/Tree$Kind;

    if-ne v3, v4, :cond_2

    move v1, v2

    :cond_2
    iget-object v3, p0, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lorg/google/googlejavaformat/OpsBuilder;

    if-eqz v1, :cond_3

    sget-object v4, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->ZERO:Lorg/google/googlejavaformat/Indent$Const;

    goto :goto_0

    :cond_3
    iget-object v4, p0, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->plusFour:Lorg/google/googlejavaformat/Indent$Const;

    :goto_0
    invoke-virtual {v3, v4}, Lorg/google/googlejavaformat/OpsBuilder;->open(Lorg/google/googlejavaformat/Indent;)V

    const-string v3, "@"

    invoke-virtual {p0, v3}, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->token(Ljava/lang/String;)V

    invoke-interface {p1}, Lorg/openjdk/source/tree/AnnotationTree;->getAnnotationType()Lorg/openjdk/source/tree/Tree;

    move-result-object p1

    const/4 v3, 0x0

    invoke-virtual {p0, p1, v3}, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->scan(Lorg/openjdk/source/tree/Tree;Ljava/lang/Void;)Ljava/lang/Void;

    const-string p1, "("

    invoke-virtual {p0, p1}, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->token(Ljava/lang/String;)V

    if-nez v1, :cond_4

    iget-object p1, p0, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lorg/google/googlejavaformat/OpsBuilder;

    invoke-virtual {p1}, Lorg/google/googlejavaformat/OpsBuilder;->breakOp()V

    :cond_4
    invoke-virtual {p0, v0, v3}, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->scan(Lorg/openjdk/source/tree/Tree;Ljava/lang/Void;)Ljava/lang/Void;

    iget-object p1, p0, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lorg/google/googlejavaformat/OpsBuilder;

    invoke-virtual {p1}, Lorg/google/googlejavaformat/OpsBuilder;->close()V

    const-string p1, ")"

    invoke-virtual {p0, p1}, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->token(Ljava/lang/String;)V

    return v2
.end method

.method public bridge synthetic visitSwitch(Lorg/openjdk/source/tree/SwitchTree;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            "node",
            "unused"
        }
    .end annotation

    .line 1
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->visitSwitch(Lorg/openjdk/source/tree/SwitchTree;Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public visitSwitch(Lorg/openjdk/source/tree/SwitchTree;Ljava/lang/Void;)Ljava/lang/Void;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "node",
            "unused"
        }
    .end annotation

    .line 2
    invoke-virtual {p0, p1}, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->sync(Lorg/openjdk/source/tree/Tree;)V

    .line 3
    const-string p2, "switch"

    invoke-virtual {p0, p2}, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->token(Ljava/lang/String;)V

    .line 4
    iget-object p2, p0, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lorg/google/googlejavaformat/OpsBuilder;

    invoke-virtual {p2}, Lorg/google/googlejavaformat/OpsBuilder;->space()V

    .line 5
    const-string p2, "("

    invoke-virtual {p0, p2}, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->token(Ljava/lang/String;)V

    .line 6
    invoke-interface {p1}, Lorg/openjdk/source/tree/SwitchTree;->getExpression()Lorg/openjdk/source/tree/ExpressionTree;

    move-result-object p2

    invoke-static {p2}, Lorg/google/googlejavaformat/java/Trees;->skipParen(Lorg/openjdk/source/tree/ExpressionTree;)Lorg/openjdk/source/tree/ExpressionTree;

    move-result-object p2

    const/4 v0, 0x0

    invoke-virtual {p0, p2, v0}, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->scan(Lorg/openjdk/source/tree/Tree;Ljava/lang/Void;)Ljava/lang/Void;

    .line 7
    const-string p2, ")"

    invoke-virtual {p0, p2}, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->token(Ljava/lang/String;)V

    .line 8
    iget-object p2, p0, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lorg/google/googlejavaformat/OpsBuilder;

    invoke-virtual {p2}, Lorg/google/googlejavaformat/OpsBuilder;->space()V

    .line 9
    const-string p2, "{"

    iget-object v1, p0, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->plusTwo:Lorg/google/googlejavaformat/Indent$Const;

    invoke-virtual {p0, p2, v1}, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->tokenBreakTrailingComment(Ljava/lang/String;Lorg/google/googlejavaformat/Indent;)V

    .line 10
    iget-object p2, p0, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lorg/google/googlejavaformat/OpsBuilder;

    sget-object v1, Lorg/google/googlejavaformat/OpsBuilder$BlankLineWanted;->NO:Lorg/google/googlejavaformat/OpsBuilder$BlankLineWanted;

    invoke-virtual {p2, v1}, Lorg/google/googlejavaformat/OpsBuilder;->blankLineWanted(Lorg/google/googlejavaformat/OpsBuilder$BlankLineWanted;)V

    .line 11
    iget-object p2, p0, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lorg/google/googlejavaformat/OpsBuilder;

    iget-object v1, p0, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->plusTwo:Lorg/google/googlejavaformat/Indent$Const;

    invoke-virtual {p2, v1}, Lorg/google/googlejavaformat/OpsBuilder;->open(Lorg/google/googlejavaformat/Indent;)V

    .line 12
    invoke-interface {p1}, Lorg/openjdk/source/tree/SwitchTree;->getCases()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 p2, 0x1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/openjdk/source/tree/CaseTree;

    if-nez p2, :cond_0

    .line 13
    iget-object p2, p0, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lorg/google/googlejavaformat/OpsBuilder;

    sget-object v2, Lorg/google/googlejavaformat/OpsBuilder$BlankLineWanted;->PRESERVE:Lorg/google/googlejavaformat/OpsBuilder$BlankLineWanted;

    invoke-virtual {p2, v2}, Lorg/google/googlejavaformat/OpsBuilder;->blankLineWanted(Lorg/google/googlejavaformat/OpsBuilder$BlankLineWanted;)V

    .line 14
    :cond_0
    invoke-virtual {p0, v1, v0}, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->scan(Lorg/openjdk/source/tree/Tree;Ljava/lang/Void;)Ljava/lang/Void;

    const/4 p2, 0x0

    goto :goto_0

    .line 15
    :cond_1
    iget-object p1, p0, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lorg/google/googlejavaformat/OpsBuilder;

    invoke-virtual {p1}, Lorg/google/googlejavaformat/OpsBuilder;->close()V

    .line 16
    iget-object p1, p0, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lorg/google/googlejavaformat/OpsBuilder;

    invoke-virtual {p1}, Lorg/google/googlejavaformat/OpsBuilder;->forcedBreak()V

    .line 17
    iget-object p1, p0, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lorg/google/googlejavaformat/OpsBuilder;

    sget-object p2, Lorg/google/googlejavaformat/OpsBuilder$BlankLineWanted;->NO:Lorg/google/googlejavaformat/OpsBuilder$BlankLineWanted;

    invoke-virtual {p1, p2}, Lorg/google/googlejavaformat/OpsBuilder;->blankLineWanted(Lorg/google/googlejavaformat/OpsBuilder$BlankLineWanted;)V

    .line 18
    const-string p1, "}"

    iget-object p2, p0, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->plusFour:Lorg/google/googlejavaformat/Indent$Const;

    invoke-virtual {p0, p1, p2}, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->token(Ljava/lang/String;Lorg/google/googlejavaformat/Indent;)V

    return-object v0
.end method

.method public bridge synthetic visitSynchronized(Lorg/openjdk/source/tree/SynchronizedTree;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            "node",
            "unused"
        }
    .end annotation

    .line 1
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->visitSynchronized(Lorg/openjdk/source/tree/SynchronizedTree;Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public visitSynchronized(Lorg/openjdk/source/tree/SynchronizedTree;Ljava/lang/Void;)Ljava/lang/Void;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "node",
            "unused"
        }
    .end annotation

    .line 2
    invoke-virtual {p0, p1}, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->sync(Lorg/openjdk/source/tree/Tree;)V

    .line 3
    const-string p2, "synchronized"

    invoke-virtual {p0, p2}, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->token(Ljava/lang/String;)V

    .line 4
    iget-object p2, p0, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lorg/google/googlejavaformat/OpsBuilder;

    invoke-virtual {p2}, Lorg/google/googlejavaformat/OpsBuilder;->space()V

    .line 5
    const-string p2, "("

    invoke-virtual {p0, p2}, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->token(Ljava/lang/String;)V

    .line 6
    iget-object p2, p0, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lorg/google/googlejavaformat/OpsBuilder;

    iget-object v0, p0, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->plusFour:Lorg/google/googlejavaformat/Indent$Const;

    invoke-virtual {p2, v0}, Lorg/google/googlejavaformat/OpsBuilder;->open(Lorg/google/googlejavaformat/Indent;)V

    .line 7
    iget-object p2, p0, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lorg/google/googlejavaformat/OpsBuilder;

    invoke-virtual {p2}, Lorg/google/googlejavaformat/OpsBuilder;->breakOp()V

    .line 8
    invoke-interface {p1}, Lorg/openjdk/source/tree/SynchronizedTree;->getExpression()Lorg/openjdk/source/tree/ExpressionTree;

    move-result-object p2

    invoke-static {p2}, Lorg/google/googlejavaformat/java/Trees;->skipParen(Lorg/openjdk/source/tree/ExpressionTree;)Lorg/openjdk/source/tree/ExpressionTree;

    move-result-object p2

    const/4 v0, 0x0

    invoke-virtual {p0, p2, v0}, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->scan(Lorg/openjdk/source/tree/Tree;Ljava/lang/Void;)Ljava/lang/Void;

    .line 9
    iget-object p2, p0, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lorg/google/googlejavaformat/OpsBuilder;

    invoke-virtual {p2}, Lorg/google/googlejavaformat/OpsBuilder;->close()V

    .line 10
    const-string p2, ")"

    invoke-virtual {p0, p2}, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->token(Ljava/lang/String;)V

    .line 11
    iget-object p2, p0, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lorg/google/googlejavaformat/OpsBuilder;

    invoke-virtual {p2}, Lorg/google/googlejavaformat/OpsBuilder;->space()V

    .line 12
    invoke-interface {p1}, Lorg/openjdk/source/tree/SynchronizedTree;->getBlock()Lorg/openjdk/source/tree/BlockTree;

    move-result-object p1

    invoke-virtual {p0, p1, v0}, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->scan(Lorg/openjdk/source/tree/Tree;Ljava/lang/Void;)Ljava/lang/Void;

    return-object v0
.end method

.method public bridge synthetic visitThrow(Lorg/openjdk/source/tree/ThrowTree;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            "node",
            "unused"
        }
    .end annotation

    .line 1
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->visitThrow(Lorg/openjdk/source/tree/ThrowTree;Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public visitThrow(Lorg/openjdk/source/tree/ThrowTree;Ljava/lang/Void;)Ljava/lang/Void;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "node",
            "unused"
        }
    .end annotation

    .line 2
    invoke-virtual {p0, p1}, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->sync(Lorg/openjdk/source/tree/Tree;)V

    .line 3
    const-string p2, "throw"

    invoke-virtual {p0, p2}, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->token(Ljava/lang/String;)V

    .line 4
    iget-object p2, p0, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lorg/google/googlejavaformat/OpsBuilder;

    invoke-virtual {p2}, Lorg/google/googlejavaformat/OpsBuilder;->space()V

    .line 5
    invoke-interface {p1}, Lorg/openjdk/source/tree/ThrowTree;->getExpression()Lorg/openjdk/source/tree/ExpressionTree;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2}, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->scan(Lorg/openjdk/source/tree/Tree;Ljava/lang/Void;)Ljava/lang/Void;

    .line 6
    const-string p1, ";"

    invoke-virtual {p0, p1}, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->token(Ljava/lang/String;)V

    return-object p2
.end method

.method public bridge synthetic visitTry(Lorg/openjdk/source/tree/TryTree;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            "node",
            "unused"
        }
    .end annotation

    .line 1
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->visitTry(Lorg/openjdk/source/tree/TryTree;Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public visitTry(Lorg/openjdk/source/tree/TryTree;Ljava/lang/Void;)Ljava/lang/Void;
    .locals 19
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "node",
            "unused"
        }
    .end annotation

    move-object/from16 v12, p0

    .line 2
    invoke-virtual/range {p0 .. p1}, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->sync(Lorg/openjdk/source/tree/Tree;)V

    .line 3
    iget-object v0, v12, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lorg/google/googlejavaformat/OpsBuilder;

    sget-object v1, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->ZERO:Lorg/google/googlejavaformat/Indent$Const;

    invoke-virtual {v0, v1}, Lorg/google/googlejavaformat/OpsBuilder;->open(Lorg/google/googlejavaformat/Indent;)V

    .line 4
    const-string v0, "try"

    invoke-virtual {v12, v0}, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->token(Ljava/lang/String;)V

    .line 5
    iget-object v0, v12, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lorg/google/googlejavaformat/OpsBuilder;

    invoke-virtual {v0}, Lorg/google/googlejavaformat/OpsBuilder;->space()V

    .line 6
    invoke-interface/range {p1 .. p1}, Lorg/openjdk/source/tree/TryTree;->getResources()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x1

    if-nez v0, :cond_6

    .line 7
    const-string v0, "("

    invoke-virtual {v12, v0}, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->token(Ljava/lang/String;)V

    .line 8
    iget-object v0, v12, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lorg/google/googlejavaformat/OpsBuilder;

    invoke-interface/range {p1 .. p1}, Lorg/openjdk/source/tree/TryTree;->getResources()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-le v2, v15, :cond_0

    iget-object v1, v12, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->plusFour:Lorg/google/googlejavaformat/Indent$Const;

    :cond_0
    invoke-virtual {v0, v1}, Lorg/google/googlejavaformat/OpsBuilder;->open(Lorg/google/googlejavaformat/Indent;)V

    .line 9
    invoke-interface/range {p1 .. p1}, Lorg/openjdk/source/tree/TryTree;->getResources()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v16

    move v0, v15

    :goto_0
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const-string v11, ";"

    if-eqz v1, :cond_4

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/openjdk/source/tree/Tree;

    if-nez v0, :cond_1

    .line 10
    iget-object v0, v12, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lorg/google/googlejavaformat/OpsBuilder;

    invoke-virtual {v0}, Lorg/google/googlejavaformat/OpsBuilder;->forcedBreak()V

    .line 11
    :cond_1
    instance-of v0, v1, Lorg/openjdk/source/tree/VariableTree;

    if-eqz v0, :cond_2

    .line 12
    check-cast v1, Lorg/openjdk/source/tree/VariableTree;

    .line 13
    sget-object v2, Lorg/google/googlejavaformat/java/JavaInputAstVisitor$DeclarationKind;->PARAMETER:Lorg/google/googlejavaformat/java/JavaInputAstVisitor$DeclarationKind;

    .line 14
    invoke-interface {v1}, Lorg/openjdk/source/tree/VariableTree;->getModifiers()Lorg/openjdk/source/tree/ModifiersTree;

    move-result-object v0

    invoke-direct {v12, v0}, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->fieldAnnotationDirection(Lorg/openjdk/source/tree/ModifiersTree;)Lorg/google/googlejavaformat/java/JavaInputAstVisitor$Direction;

    move-result-object v3

    .line 15
    invoke-interface {v1}, Lorg/openjdk/source/tree/VariableTree;->getModifiers()Lorg/openjdk/source/tree/ModifiersTree;

    move-result-object v0

    invoke-static {v0}, Lw2/C;->f(Ljava/lang/Object;)Lw2/C;

    move-result-object v4

    .line 16
    invoke-interface {v1}, Lorg/openjdk/source/tree/VariableTree;->getType()Lorg/openjdk/source/tree/Tree;

    move-result-object v5

    .line 17
    invoke-interface {v1}, Lorg/openjdk/source/tree/VariableTree;->getName()Lorg/openjdk/javax/lang/model/element/Name;

    move-result-object v6

    .line 18
    invoke-interface {v1}, Lorg/openjdk/source/tree/VariableTree;->getInitializer()Lorg/openjdk/source/tree/ExpressionTree;

    move-result-object v0

    invoke-static {v0}, Lw2/C;->c(Ljava/lang/Object;)Lw2/C;

    move-result-object v8

    .line 19
    invoke-static {}, Lw2/C;->a()Lw2/C;

    move-result-object v9

    .line 20
    invoke-static {}, Lw2/C;->a()Lw2/C;

    move-result-object v10

    .line 21
    invoke-static {}, Lw2/C;->a()Lw2/C;

    move-result-object v17

    .line 22
    const-string v7, ""

    const-string v18, "="

    move-object/from16 v0, p0

    move-object v1, v2

    move-object v2, v3

    move-object v3, v4

    move-object v4, v5

    move-object v5, v6

    move-object v6, v7

    move-object/from16 v7, v18

    move-object/from16 p2, v11

    move-object/from16 v11, v17

    invoke-virtual/range {v0 .. v11}, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->declareOne(Lorg/google/googlejavaformat/java/JavaInputAstVisitor$DeclarationKind;Lorg/google/googlejavaformat/java/JavaInputAstVisitor$Direction;Lw2/C;Lorg/openjdk/source/tree/Tree;Lorg/openjdk/javax/lang/model/element/Name;Ljava/lang/String;Ljava/lang/String;Lw2/C;Lw2/C;Lw2/C;Lw2/C;)I

    goto :goto_1

    :cond_2
    move-object/from16 p2, v11

    .line 23
    invoke-virtual {v12, v1, v13}, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->scan(Lorg/openjdk/source/tree/Tree;Ljava/lang/Void;)Ljava/lang/Void;

    .line 24
    :goto_1
    iget-object v0, v12, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lorg/google/googlejavaformat/OpsBuilder;

    invoke-virtual {v0}, Lorg/google/googlejavaformat/OpsBuilder;->peekToken()Lw2/C;

    move-result-object v0

    invoke-static/range {p2 .. p2}, Lw2/C;->f(Ljava/lang/Object;)Lw2/C;

    move-result-object v1

    invoke-virtual {v0, v1}, Lw2/C;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    move-object/from16 v0, p2

    .line 25
    invoke-virtual {v12, v0}, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->token(Ljava/lang/String;)V

    .line 26
    iget-object v0, v12, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lorg/google/googlejavaformat/OpsBuilder;

    invoke-virtual {v0}, Lorg/google/googlejavaformat/OpsBuilder;->space()V

    :cond_3
    move v0, v14

    goto :goto_0

    :cond_4
    move-object v0, v11

    .line 27
    iget-object v1, v12, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lorg/google/googlejavaformat/OpsBuilder;

    invoke-virtual {v1}, Lorg/google/googlejavaformat/OpsBuilder;->peekToken()Lw2/C;

    move-result-object v1

    invoke-static {v0}, Lw2/C;->f(Ljava/lang/Object;)Lw2/C;

    move-result-object v2

    invoke-virtual {v1, v2}, Lw2/C;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 28
    invoke-virtual {v12, v0}, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->token(Ljava/lang/String;)V

    .line 29
    iget-object v0, v12, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lorg/google/googlejavaformat/OpsBuilder;

    invoke-virtual {v0}, Lorg/google/googlejavaformat/OpsBuilder;->space()V

    .line 30
    :cond_5
    const-string v0, ")"

    invoke-virtual {v12, v0}, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->token(Ljava/lang/String;)V

    .line 31
    iget-object v0, v12, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lorg/google/googlejavaformat/OpsBuilder;

    invoke-virtual {v0}, Lorg/google/googlejavaformat/OpsBuilder;->close()V

    .line 32
    iget-object v0, v12, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lorg/google/googlejavaformat/OpsBuilder;

    invoke-virtual {v0}, Lorg/google/googlejavaformat/OpsBuilder;->space()V

    .line 33
    :cond_6
    invoke-interface/range {p1 .. p1}, Lorg/openjdk/source/tree/TryTree;->getCatches()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface/range {p1 .. p1}, Lorg/openjdk/source/tree/TryTree;->getFinallyBlock()Lorg/openjdk/source/tree/BlockTree;

    move-result-object v0

    if-eqz v0, :cond_7

    goto :goto_2

    :cond_7
    move v0, v14

    goto :goto_3

    :cond_8
    :goto_2
    move v0, v15

    .line 34
    :goto_3
    invoke-interface/range {p1 .. p1}, Lorg/openjdk/source/tree/TryTree;->getBlock()Lorg/openjdk/source/tree/BlockTree;

    move-result-object v1

    xor-int/lit8 v2, v0, 0x1

    .line 35
    invoke-static {v2}, Lorg/google/googlejavaformat/java/JavaInputAstVisitor$CollapseEmptyOrNot;->valueOf(Z)Lorg/google/googlejavaformat/java/JavaInputAstVisitor$CollapseEmptyOrNot;

    move-result-object v2

    sget-object v3, Lorg/google/googlejavaformat/java/JavaInputAstVisitor$AllowLeadingBlankLine;->YES:Lorg/google/googlejavaformat/java/JavaInputAstVisitor$AllowLeadingBlankLine;

    .line 36
    invoke-static {v0}, Lorg/google/googlejavaformat/java/JavaInputAstVisitor$AllowTrailingBlankLine;->valueOf(Z)Lorg/google/googlejavaformat/java/JavaInputAstVisitor$AllowTrailingBlankLine;

    move-result-object v0

    .line 37
    invoke-direct {v12, v1, v2, v3, v0}, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->visitBlock(Lorg/openjdk/source/tree/BlockTree;Lorg/google/googlejavaformat/java/JavaInputAstVisitor$CollapseEmptyOrNot;Lorg/google/googlejavaformat/java/JavaInputAstVisitor$AllowLeadingBlankLine;Lorg/google/googlejavaformat/java/JavaInputAstVisitor$AllowTrailingBlankLine;)V

    move v0, v14

    .line 38
    :goto_4
    invoke-interface/range {p1 .. p1}, Lorg/openjdk/source/tree/TryTree;->getCatches()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_b

    .line 39
    invoke-interface/range {p1 .. p1}, Lorg/openjdk/source/tree/TryTree;->getCatches()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/openjdk/source/tree/CatchTree;

    .line 40
    invoke-interface/range {p1 .. p1}, Lorg/openjdk/source/tree/TryTree;->getCatches()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    sub-int/2addr v2, v15

    if-lt v0, v2, :cond_a

    invoke-interface/range {p1 .. p1}, Lorg/openjdk/source/tree/TryTree;->getFinallyBlock()Lorg/openjdk/source/tree/BlockTree;

    move-result-object v2

    if-eqz v2, :cond_9

    goto :goto_5

    :cond_9
    move v2, v14

    goto :goto_6

    :cond_a
    :goto_5
    move v2, v15

    .line 41
    :goto_6
    invoke-static {v2}, Lorg/google/googlejavaformat/java/JavaInputAstVisitor$AllowTrailingBlankLine;->valueOf(Z)Lorg/google/googlejavaformat/java/JavaInputAstVisitor$AllowTrailingBlankLine;

    move-result-object v2

    invoke-direct {v12, v1, v2}, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->visitCatchClause(Lorg/openjdk/source/tree/CatchTree;Lorg/google/googlejavaformat/java/JavaInputAstVisitor$AllowTrailingBlankLine;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 42
    :cond_b
    invoke-interface/range {p1 .. p1}, Lorg/openjdk/source/tree/TryTree;->getFinallyBlock()Lorg/openjdk/source/tree/BlockTree;

    move-result-object v0

    if-eqz v0, :cond_c

    .line 43
    iget-object v0, v12, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lorg/google/googlejavaformat/OpsBuilder;

    invoke-virtual {v0}, Lorg/google/googlejavaformat/OpsBuilder;->space()V

    .line 44
    const-string v0, "finally"

    invoke-virtual {v12, v0}, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->token(Ljava/lang/String;)V

    .line 45
    iget-object v0, v12, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lorg/google/googlejavaformat/OpsBuilder;

    invoke-virtual {v0}, Lorg/google/googlejavaformat/OpsBuilder;->space()V

    .line 46
    invoke-interface/range {p1 .. p1}, Lorg/openjdk/source/tree/TryTree;->getFinallyBlock()Lorg/openjdk/source/tree/BlockTree;

    move-result-object v0

    sget-object v1, Lorg/google/googlejavaformat/java/JavaInputAstVisitor$CollapseEmptyOrNot;->NO:Lorg/google/googlejavaformat/java/JavaInputAstVisitor$CollapseEmptyOrNot;

    sget-object v2, Lorg/google/googlejavaformat/java/JavaInputAstVisitor$AllowLeadingBlankLine;->YES:Lorg/google/googlejavaformat/java/JavaInputAstVisitor$AllowLeadingBlankLine;

    sget-object v3, Lorg/google/googlejavaformat/java/JavaInputAstVisitor$AllowTrailingBlankLine;->NO:Lorg/google/googlejavaformat/java/JavaInputAstVisitor$AllowTrailingBlankLine;

    .line 47
    invoke-direct {v12, v0, v1, v2, v3}, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->visitBlock(Lorg/openjdk/source/tree/BlockTree;Lorg/google/googlejavaformat/java/JavaInputAstVisitor$CollapseEmptyOrNot;Lorg/google/googlejavaformat/java/JavaInputAstVisitor$AllowLeadingBlankLine;Lorg/google/googlejavaformat/java/JavaInputAstVisitor$AllowTrailingBlankLine;)V

    .line 48
    :cond_c
    iget-object v0, v12, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lorg/google/googlejavaformat/OpsBuilder;

    invoke-virtual {v0}, Lorg/google/googlejavaformat/OpsBuilder;->close()V

    return-object v13
.end method

.method public bridge synthetic visitTypeCast(Lorg/openjdk/source/tree/TypeCastTree;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            "node",
            "unused"
        }
    .end annotation

    .line 1
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->visitTypeCast(Lorg/openjdk/source/tree/TypeCastTree;Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public visitTypeCast(Lorg/openjdk/source/tree/TypeCastTree;Ljava/lang/Void;)Ljava/lang/Void;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "node",
            "unused"
        }
    .end annotation

    .line 2
    invoke-virtual {p0, p1}, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->sync(Lorg/openjdk/source/tree/Tree;)V

    .line 3
    iget-object p2, p0, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lorg/google/googlejavaformat/OpsBuilder;

    iget-object v0, p0, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->plusFour:Lorg/google/googlejavaformat/Indent$Const;

    invoke-virtual {p2, v0}, Lorg/google/googlejavaformat/OpsBuilder;->open(Lorg/google/googlejavaformat/Indent;)V

    .line 4
    const-string p2, "("

    invoke-virtual {p0, p2}, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->token(Ljava/lang/String;)V

    .line 5
    invoke-interface {p1}, Lorg/openjdk/source/tree/TypeCastTree;->getType()Lorg/openjdk/source/tree/Tree;

    move-result-object p2

    const/4 v0, 0x0

    invoke-virtual {p0, p2, v0}, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->scan(Lorg/openjdk/source/tree/Tree;Ljava/lang/Void;)Ljava/lang/Void;

    .line 6
    const-string p2, ")"

    invoke-virtual {p0, p2}, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->token(Ljava/lang/String;)V

    .line 7
    iget-object p2, p0, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lorg/google/googlejavaformat/OpsBuilder;

    const-string v1, " "

    invoke-virtual {p2, v1}, Lorg/google/googlejavaformat/OpsBuilder;->breakOp(Ljava/lang/String;)V

    .line 8
    invoke-interface {p1}, Lorg/openjdk/source/tree/TypeCastTree;->getExpression()Lorg/openjdk/source/tree/ExpressionTree;

    move-result-object p1

    invoke-virtual {p0, p1, v0}, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->scan(Lorg/openjdk/source/tree/Tree;Ljava/lang/Void;)Ljava/lang/Void;

    .line 9
    iget-object p1, p0, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lorg/google/googlejavaformat/OpsBuilder;

    invoke-virtual {p1}, Lorg/google/googlejavaformat/OpsBuilder;->close()V

    return-object v0
.end method

.method public bridge synthetic visitTypeParameter(Lorg/openjdk/source/tree/TypeParameterTree;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            "node",
            "unused"
        }
    .end annotation

    .line 1
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->visitTypeParameter(Lorg/openjdk/source/tree/TypeParameterTree;Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public visitTypeParameter(Lorg/openjdk/source/tree/TypeParameterTree;Ljava/lang/Void;)Ljava/lang/Void;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "node",
            "unused"
        }
    .end annotation

    .line 2
    invoke-virtual {p0, p1}, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->sync(Lorg/openjdk/source/tree/Tree;)V

    .line 3
    iget-object p2, p0, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lorg/google/googlejavaformat/OpsBuilder;

    sget-object v0, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->ZERO:Lorg/google/googlejavaformat/Indent$Const;

    invoke-virtual {p2, v0}, Lorg/google/googlejavaformat/OpsBuilder;->open(Lorg/google/googlejavaformat/Indent;)V

    .line 4
    invoke-interface {p1}, Lorg/openjdk/source/tree/TypeParameterTree;->getAnnotations()Ljava/util/List;

    move-result-object p2

    sget-object v0, Lorg/google/googlejavaformat/java/JavaInputAstVisitor$BreakOrNot;->NO:Lorg/google/googlejavaformat/java/JavaInputAstVisitor$BreakOrNot;

    sget-object v1, Lorg/google/googlejavaformat/java/JavaInputAstVisitor$BreakOrNot;->YES:Lorg/google/googlejavaformat/java/JavaInputAstVisitor$BreakOrNot;

    invoke-virtual {p0, p2, v0, v1}, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->visitAnnotations(Ljava/util/List;Lorg/google/googlejavaformat/java/JavaInputAstVisitor$BreakOrNot;Lorg/google/googlejavaformat/java/JavaInputAstVisitor$BreakOrNot;)V

    .line 5
    invoke-interface {p1}, Lorg/openjdk/source/tree/TypeParameterTree;->getName()Lorg/openjdk/javax/lang/model/element/Name;

    move-result-object p2

    invoke-virtual {p0, p2}, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->visit(Lorg/openjdk/javax/lang/model/element/Name;)Z

    .line 6
    invoke-interface {p1}, Lorg/openjdk/source/tree/TypeParameterTree;->getBounds()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result p2

    const/4 v0, 0x0

    if-nez p2, :cond_2

    .line 7
    iget-object p2, p0, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lorg/google/googlejavaformat/OpsBuilder;

    invoke-virtual {p2}, Lorg/google/googlejavaformat/OpsBuilder;->space()V

    .line 8
    const-string p2, "extends"

    invoke-virtual {p0, p2}, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->token(Ljava/lang/String;)V

    .line 9
    iget-object p2, p0, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lorg/google/googlejavaformat/OpsBuilder;

    iget-object v1, p0, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->plusFour:Lorg/google/googlejavaformat/Indent$Const;

    invoke-virtual {p2, v1}, Lorg/google/googlejavaformat/OpsBuilder;->open(Lorg/google/googlejavaformat/Indent;)V

    .line 10
    iget-object p2, p0, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lorg/google/googlejavaformat/OpsBuilder;

    const-string v1, " "

    invoke-virtual {p2, v1}, Lorg/google/googlejavaformat/OpsBuilder;->breakOp(Ljava/lang/String;)V

    .line 11
    iget-object p2, p0, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lorg/google/googlejavaformat/OpsBuilder;

    iget-object v2, p0, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->plusFour:Lorg/google/googlejavaformat/Indent$Const;

    invoke-virtual {p2, v2}, Lorg/google/googlejavaformat/OpsBuilder;->open(Lorg/google/googlejavaformat/Indent;)V

    .line 12
    invoke-interface {p1}, Lorg/openjdk/source/tree/TypeParameterTree;->getBounds()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 p2, 0x1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/openjdk/source/tree/Tree;

    if-nez p2, :cond_0

    .line 13
    iget-object p2, p0, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lorg/google/googlejavaformat/OpsBuilder;

    invoke-virtual {p2, v1}, Lorg/google/googlejavaformat/OpsBuilder;->breakToFill(Ljava/lang/String;)V

    .line 14
    const-string p2, "&"

    invoke-virtual {p0, p2}, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->token(Ljava/lang/String;)V

    .line 15
    iget-object p2, p0, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lorg/google/googlejavaformat/OpsBuilder;

    invoke-virtual {p2}, Lorg/google/googlejavaformat/OpsBuilder;->space()V

    .line 16
    :cond_0
    invoke-virtual {p0, v2, v0}, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->scan(Lorg/openjdk/source/tree/Tree;Ljava/lang/Void;)Ljava/lang/Void;

    const/4 p2, 0x0

    goto :goto_0

    .line 17
    :cond_1
    iget-object p1, p0, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lorg/google/googlejavaformat/OpsBuilder;

    invoke-virtual {p1}, Lorg/google/googlejavaformat/OpsBuilder;->close()V

    .line 18
    iget-object p1, p0, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lorg/google/googlejavaformat/OpsBuilder;

    invoke-virtual {p1}, Lorg/google/googlejavaformat/OpsBuilder;->close()V

    .line 19
    :cond_2
    iget-object p1, p0, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lorg/google/googlejavaformat/OpsBuilder;

    invoke-virtual {p1}, Lorg/google/googlejavaformat/OpsBuilder;->close()V

    return-object v0
.end method

.method public bridge synthetic visitUnary(Lorg/openjdk/source/tree/UnaryTree;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            "node",
            "unused"
        }
    .end annotation

    .line 1
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->visitUnary(Lorg/openjdk/source/tree/UnaryTree;Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public visitUnary(Lorg/openjdk/source/tree/UnaryTree;Ljava/lang/Void;)Ljava/lang/Void;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "node",
            "unused"
        }
    .end annotation

    .line 2
    invoke-virtual {p0, p1}, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->sync(Lorg/openjdk/source/tree/Tree;)V

    .line 3
    invoke-static {p1}, Lorg/google/googlejavaformat/java/Trees;->operatorName(Lorg/openjdk/source/tree/ExpressionTree;)Ljava/lang/String;

    move-result-object p2

    .line 4
    move-object v0, p1

    check-cast v0, Lorg/openjdk/tools/javac/tree/JCTree;

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/tree/JCTree;->getTag()Lorg/openjdk/tools/javac/tree/JCTree$Tag;

    move-result-object v0

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/tree/JCTree$Tag;->isPostUnaryOp()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 5
    invoke-interface {p1}, Lorg/openjdk/source/tree/UnaryTree;->getExpression()Lorg/openjdk/source/tree/ExpressionTree;

    move-result-object p1

    invoke-virtual {p0, p1, v1}, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->scan(Lorg/openjdk/source/tree/Tree;Ljava/lang/Void;)Ljava/lang/Void;

    .line 6
    invoke-direct {p0, p2}, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->splitToken(Ljava/lang/String;)V

    goto :goto_0

    .line 7
    :cond_0
    invoke-direct {p0, p2}, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->splitToken(Ljava/lang/String;)V

    .line 8
    invoke-direct {p0, p1, p2}, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->ambiguousUnaryOperator(Lorg/openjdk/source/tree/UnaryTree;Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 9
    iget-object p2, p0, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lorg/google/googlejavaformat/OpsBuilder;

    invoke-virtual {p2}, Lorg/google/googlejavaformat/OpsBuilder;->space()V

    .line 10
    :cond_1
    invoke-interface {p1}, Lorg/openjdk/source/tree/UnaryTree;->getExpression()Lorg/openjdk/source/tree/ExpressionTree;

    move-result-object p1

    invoke-virtual {p0, p1, v1}, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->scan(Lorg/openjdk/source/tree/Tree;Ljava/lang/Void;)Ljava/lang/Void;

    :goto_0
    return-object v1
.end method

.method public bridge synthetic visitUnionType(Lorg/openjdk/source/tree/UnionTypeTree;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            "node",
            "unused"
        }
    .end annotation

    .line 1
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->visitUnionType(Lorg/openjdk/source/tree/UnionTypeTree;Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public visitUnionType(Lorg/openjdk/source/tree/UnionTypeTree;Ljava/lang/Void;)Ljava/lang/Void;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "node",
            "unused"
        }
    .end annotation

    .line 2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "expected manual descent into union types"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public bridge synthetic visitUses(Lorg/openjdk/source/tree/UsesTree;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            "node",
            "unused"
        }
    .end annotation

    .line 1
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->visitUses(Lorg/openjdk/source/tree/UsesTree;Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public visitUses(Lorg/openjdk/source/tree/UsesTree;Ljava/lang/Void;)Ljava/lang/Void;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "node",
            "unused"
        }
    .end annotation

    .line 2
    const-string p2, "uses"

    invoke-virtual {p0, p2}, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->token(Ljava/lang/String;)V

    .line 3
    iget-object p2, p0, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lorg/google/googlejavaformat/OpsBuilder;

    invoke-virtual {p2}, Lorg/google/googlejavaformat/OpsBuilder;->space()V

    .line 4
    invoke-interface {p1}, Lorg/openjdk/source/tree/UsesTree;->getServiceName()Lorg/openjdk/source/tree/ExpressionTree;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2}, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->scan(Lorg/openjdk/source/tree/Tree;Ljava/lang/Void;)Ljava/lang/Void;

    .line 5
    const-string p1, ";"

    invoke-virtual {p0, p1}, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->token(Ljava/lang/String;)V

    return-object p2
.end method

.method public bridge synthetic visitVariable(Lorg/openjdk/source/tree/VariableTree;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            "node",
            "unused"
        }
    .end annotation

    .line 1
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->visitVariable(Lorg/openjdk/source/tree/VariableTree;Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public visitVariable(Lorg/openjdk/source/tree/VariableTree;Ljava/lang/Void;)Ljava/lang/Void;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "node",
            "unused"
        }
    .end annotation

    .line 2
    invoke-virtual {p0, p1}, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->sync(Lorg/openjdk/source/tree/Tree;)V

    .line 3
    invoke-static {p1}, Lcom/google/common/collect/g1;->y(Ljava/lang/Object;)Lcom/google/common/collect/g1;

    move-result-object p2

    sget-object v0, Lorg/google/googlejavaformat/java/JavaInputAstVisitor$DeclarationKind;->NONE:Lorg/google/googlejavaformat/java/JavaInputAstVisitor$DeclarationKind;

    .line 4
    invoke-interface {p1}, Lorg/openjdk/source/tree/VariableTree;->getModifiers()Lorg/openjdk/source/tree/ModifiersTree;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->fieldAnnotationDirection(Lorg/openjdk/source/tree/ModifiersTree;)Lorg/google/googlejavaformat/java/JavaInputAstVisitor$Direction;

    move-result-object p1

    .line 5
    invoke-virtual {p0, p2, v0, p1}, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->visitVariables(Ljava/util/List;Lorg/google/googlejavaformat/java/JavaInputAstVisitor$DeclarationKind;Lorg/google/googlejavaformat/java/JavaInputAstVisitor$Direction;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public visitVariables(Ljava/util/List;Lorg/google/googlejavaformat/java/JavaInputAstVisitor$DeclarationKind;Lorg/google/googlejavaformat/java/JavaInputAstVisitor$Direction;)V
    .locals 13
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "fragments",
            "declarationKind",
            "annotationDirection"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/openjdk/source/tree/VariableTree;",
            ">;",
            "Lorg/google/googlejavaformat/java/JavaInputAstVisitor$DeclarationKind;",
            "Lorg/google/googlejavaformat/java/JavaInputAstVisitor$Direction;",
            ")V"
        }
    .end annotation

    move-object v12, p0

    move-object v0, p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    const/4 v1, 0x0

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/openjdk/source/tree/VariableTree;

    invoke-interface {v0}, Lorg/openjdk/source/tree/VariableTree;->getModifiers()Lorg/openjdk/source/tree/ModifiersTree;

    move-result-object v3

    invoke-static {v3}, Lw2/C;->f(Ljava/lang/Object;)Lw2/C;

    move-result-object v3

    invoke-interface {v0}, Lorg/openjdk/source/tree/VariableTree;->getType()Lorg/openjdk/source/tree/Tree;

    move-result-object v4

    invoke-interface {v0}, Lorg/openjdk/source/tree/VariableTree;->getName()Lorg/openjdk/javax/lang/model/element/Name;

    move-result-object v5

    invoke-interface {v0}, Lorg/openjdk/source/tree/VariableTree;->getInitializer()Lorg/openjdk/source/tree/ExpressionTree;

    move-result-object v6

    invoke-static {v6}, Lw2/C;->c(Ljava/lang/Object;)Lw2/C;

    move-result-object v8

    const-string v6, ";"

    invoke-static {v6}, Lw2/C;->f(Ljava/lang/Object;)Lw2/C;

    move-result-object v9

    invoke-static {}, Lw2/C;->a()Lw2/C;

    move-result-object v10

    invoke-interface {v0}, Lorg/openjdk/source/tree/VariableTree;->getType()Lorg/openjdk/source/tree/Tree;

    move-result-object v0

    invoke-direct {p0, v2, v1, v0}, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->variableFragmentDims(ZILorg/openjdk/source/tree/Tree;)Lorg/google/googlejavaformat/java/DimensionHelpers$TypeWithDims;

    move-result-object v0

    invoke-static {v0}, Lw2/C;->c(Ljava/lang/Object;)Lw2/C;

    move-result-object v11

    const-string v6, ""

    const-string v7, "="

    move-object v0, p0

    move-object v1, p2

    move-object/from16 v2, p3

    invoke-virtual/range {v0 .. v11}, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->declareOne(Lorg/google/googlejavaformat/java/JavaInputAstVisitor$DeclarationKind;Lorg/google/googlejavaformat/java/JavaInputAstVisitor$Direction;Lw2/C;Lorg/openjdk/source/tree/Tree;Lorg/openjdk/javax/lang/model/element/Name;Ljava/lang/String;Ljava/lang/String;Lw2/C;Lw2/C;Lw2/C;Lw2/C;)I

    goto :goto_0

    :cond_0
    move-object/from16 v1, p3

    invoke-direct {p0, p1, v1}, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->declareMany(Ljava/util/List;Lorg/google/googlejavaformat/java/JavaInputAstVisitor$Direction;)V

    :goto_0
    return-void
.end method

.method public bridge synthetic visitWhileLoop(Lorg/openjdk/source/tree/WhileLoopTree;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            "node",
            "unused"
        }
    .end annotation

    .line 1
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->visitWhileLoop(Lorg/openjdk/source/tree/WhileLoopTree;Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public visitWhileLoop(Lorg/openjdk/source/tree/WhileLoopTree;Ljava/lang/Void;)Ljava/lang/Void;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "node",
            "unused"
        }
    .end annotation

    .line 2
    invoke-virtual {p0, p1}, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->sync(Lorg/openjdk/source/tree/Tree;)V

    .line 3
    const-string p2, "while"

    invoke-virtual {p0, p2}, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->token(Ljava/lang/String;)V

    .line 4
    iget-object p2, p0, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lorg/google/googlejavaformat/OpsBuilder;

    invoke-virtual {p2}, Lorg/google/googlejavaformat/OpsBuilder;->space()V

    .line 5
    const-string p2, "("

    invoke-virtual {p0, p2}, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->token(Ljava/lang/String;)V

    .line 6
    invoke-interface {p1}, Lorg/openjdk/source/tree/WhileLoopTree;->getCondition()Lorg/openjdk/source/tree/ExpressionTree;

    move-result-object p2

    invoke-static {p2}, Lorg/google/googlejavaformat/java/Trees;->skipParen(Lorg/openjdk/source/tree/ExpressionTree;)Lorg/openjdk/source/tree/ExpressionTree;

    move-result-object p2

    const/4 v0, 0x0

    invoke-virtual {p0, p2, v0}, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->scan(Lorg/openjdk/source/tree/Tree;Ljava/lang/Void;)Ljava/lang/Void;

    .line 7
    const-string p2, ")"

    invoke-virtual {p0, p2}, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->token(Ljava/lang/String;)V

    .line 8
    invoke-interface {p1}, Lorg/openjdk/source/tree/WhileLoopTree;->getStatement()Lorg/openjdk/source/tree/StatementTree;

    move-result-object p1

    sget-object p2, Lorg/google/googlejavaformat/java/JavaInputAstVisitor$CollapseEmptyOrNot;->YES:Lorg/google/googlejavaformat/java/JavaInputAstVisitor$CollapseEmptyOrNot;

    sget-object v1, Lorg/google/googlejavaformat/java/JavaInputAstVisitor$AllowLeadingBlankLine;->YES:Lorg/google/googlejavaformat/java/JavaInputAstVisitor$AllowLeadingBlankLine;

    sget-object v2, Lorg/google/googlejavaformat/java/JavaInputAstVisitor$AllowTrailingBlankLine;->NO:Lorg/google/googlejavaformat/java/JavaInputAstVisitor$AllowTrailingBlankLine;

    .line 9
    invoke-direct {p0, p1, p2, v1, v2}, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->visitStatement(Lorg/openjdk/source/tree/StatementTree;Lorg/google/googlejavaformat/java/JavaInputAstVisitor$CollapseEmptyOrNot;Lorg/google/googlejavaformat/java/JavaInputAstVisitor$AllowLeadingBlankLine;Lorg/google/googlejavaformat/java/JavaInputAstVisitor$AllowTrailingBlankLine;)V

    return-object v0
.end method

.method public bridge synthetic visitWildcard(Lorg/openjdk/source/tree/WildcardTree;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            "node",
            "unused"
        }
    .end annotation

    .line 1
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->visitWildcard(Lorg/openjdk/source/tree/WildcardTree;Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public visitWildcard(Lorg/openjdk/source/tree/WildcardTree;Ljava/lang/Void;)Ljava/lang/Void;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "node",
            "unused"
        }
    .end annotation

    .line 2
    invoke-virtual {p0, p1}, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->sync(Lorg/openjdk/source/tree/Tree;)V

    .line 3
    iget-object p2, p0, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lorg/google/googlejavaformat/OpsBuilder;

    sget-object v0, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->ZERO:Lorg/google/googlejavaformat/Indent$Const;

    invoke-virtual {p2, v0}, Lorg/google/googlejavaformat/OpsBuilder;->open(Lorg/google/googlejavaformat/Indent;)V

    .line 4
    const-string p2, "?"

    invoke-virtual {p0, p2}, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->token(Ljava/lang/String;)V

    .line 5
    invoke-interface {p1}, Lorg/openjdk/source/tree/WildcardTree;->getBound()Lorg/openjdk/source/tree/Tree;

    move-result-object p2

    const/4 v0, 0x0

    if-eqz p2, :cond_1

    .line 6
    iget-object p2, p0, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lorg/google/googlejavaformat/OpsBuilder;

    iget-object v1, p0, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->plusFour:Lorg/google/googlejavaformat/Indent$Const;

    invoke-virtual {p2, v1}, Lorg/google/googlejavaformat/OpsBuilder;->open(Lorg/google/googlejavaformat/Indent;)V

    .line 7
    iget-object p2, p0, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lorg/google/googlejavaformat/OpsBuilder;

    invoke-virtual {p2}, Lorg/google/googlejavaformat/OpsBuilder;->space()V

    .line 8
    invoke-interface {p1}, Lorg/openjdk/source/tree/Tree;->getKind()Lorg/openjdk/source/tree/Tree$Kind;

    move-result-object p2

    sget-object v1, Lorg/openjdk/source/tree/Tree$Kind;->EXTENDS_WILDCARD:Lorg/openjdk/source/tree/Tree$Kind;

    if-ne p2, v1, :cond_0

    const-string p2, "extends"

    goto :goto_0

    :cond_0
    const-string p2, "super"

    :goto_0
    invoke-virtual {p0, p2}, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->token(Ljava/lang/String;)V

    .line 9
    iget-object p2, p0, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lorg/google/googlejavaformat/OpsBuilder;

    const-string v1, " "

    invoke-virtual {p2, v1}, Lorg/google/googlejavaformat/OpsBuilder;->breakOp(Ljava/lang/String;)V

    .line 10
    invoke-interface {p1}, Lorg/openjdk/source/tree/WildcardTree;->getBound()Lorg/openjdk/source/tree/Tree;

    move-result-object p1

    invoke-virtual {p0, p1, v0}, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->scan(Lorg/openjdk/source/tree/Tree;Ljava/lang/Void;)Ljava/lang/Void;

    .line 11
    iget-object p1, p0, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lorg/google/googlejavaformat/OpsBuilder;

    invoke-virtual {p1}, Lorg/google/googlejavaformat/OpsBuilder;->close()V

    .line 12
    :cond_1
    iget-object p1, p0, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->builder:Lorg/google/googlejavaformat/OpsBuilder;

    invoke-virtual {p1}, Lorg/google/googlejavaformat/OpsBuilder;->close()V

    return-object v0
.end method
