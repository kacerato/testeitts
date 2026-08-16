.class public Lorg/eclipse/jdt/internal/formatter/linewrap/CommentWrapExecutor;
.super Lorg/eclipse/jdt/internal/formatter/TokenTraverser;
.source "SourceFile"


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private counterIfWrapped:I

.field private counterIfWrappedSubstitute:I

.field private lineCounter:I

.field private lineLimit:I

.field private lineStartPosition:I

.field private newLinesAtBoundries:Z

.field private final nlsTags:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/eclipse/jdt/internal/formatter/Token;",
            ">;"
        }
    .end annotation
.end field

.field private final options:Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;

.field private potentialWrapToken:Lorg/eclipse/jdt/internal/formatter/Token;

.field private potentialWrapTokenSubstitute:Lorg/eclipse/jdt/internal/formatter/Token;

.field private simulation:Z

.field private final tm:Lorg/eclipse/jdt/internal/formatter/TokenManager;

.field private wrapDisabled:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lorg/eclipse/jdt/internal/formatter/TokenManager;Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;)V
    .locals 1

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/formatter/TokenTraverser;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/eclipse/jdt/internal/formatter/linewrap/CommentWrapExecutor;->nlsTags:Ljava/util/ArrayList;

    iput-object p1, p0, Lorg/eclipse/jdt/internal/formatter/linewrap/CommentWrapExecutor;->tm:Lorg/eclipse/jdt/internal/formatter/TokenManager;

    iput-object p2, p0, Lorg/eclipse/jdt/internal/formatter/linewrap/CommentWrapExecutor;->options:Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;

    return-void
.end method

.method private cleanupIndent(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/eclipse/jdt/internal/formatter/Token;",
            ">;)V"
        }
    .end annotation

    iget-boolean v0, p0, Lorg/eclipse/jdt/internal/formatter/linewrap/CommentWrapExecutor;->simulation:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Lorg/eclipse/jdt/internal/formatter/linewrap/CommentWrapExecutor$1;

    invoke-direct {v0, p0}, Lorg/eclipse/jdt/internal/formatter/linewrap/CommentWrapExecutor$1;-><init>(Lorg/eclipse/jdt/internal/formatter/linewrap/CommentWrapExecutor;)V

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lorg/eclipse/jdt/internal/formatter/TokenTraverser;->traverse(Ljava/util/List;I)I

    return-void
.end method

.method private getLineLimit(I)I
    .locals 3

    iget-object v0, p0, Lorg/eclipse/jdt/internal/formatter/linewrap/CommentWrapExecutor;->options:Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;

    iget v1, v0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->comment_line_length:I

    iget-boolean v2, v0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->comment_count_line_length_from_starting_position:Z

    if-nez v2, :cond_0

    return v1

    :cond_0
    iget v0, v0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->page_width:I

    add-int/2addr p1, v1

    if-le p1, v0, :cond_1

    if-gt v1, v0, :cond_1

    goto :goto_0

    :cond_1
    move v0, p1

    :goto_0
    return v0
.end method

.method private getStartingPosition(Lorg/eclipse/jdt/internal/formatter/Token;Z)I
    .locals 2

    iget v0, p0, Lorg/eclipse/jdt/internal/formatter/linewrap/CommentWrapExecutor;->lineStartPosition:I

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/formatter/Token;->getAlign()I

    move-result v1

    add-int/2addr v0, v1

    if-eqz p2, :cond_0

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/formatter/Token;->getIndent()I

    move-result p2

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    add-int/2addr v0, p2

    iget p1, p1, Lorg/eclipse/jdt/internal/formatter/Token;->tokenType:I

    if-eqz p1, :cond_1

    add-int/lit8 v0, v0, 0x3

    :cond_1
    return v0
.end method

.method private shouldWrap()Z
    .locals 3

    iget-boolean v0, p0, Lorg/eclipse/jdt/internal/formatter/linewrap/CommentWrapExecutor;->wrapDisabled:Z

    const/4 v1, 0x0

    if-nez v0, :cond_4

    iget v0, p0, Lorg/eclipse/jdt/internal/formatter/TokenTraverser;->counter:I

    iget v2, p0, Lorg/eclipse/jdt/internal/formatter/linewrap/CommentWrapExecutor;->lineLimit:I

    if-gt v0, v2, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/formatter/TokenTraverser;->getLineBreaksAfter()I

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/formatter/TokenTraverser;->getNext()Lorg/eclipse/jdt/internal/formatter/Token;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/formatter/TokenTraverser;->getNext()Lorg/eclipse/jdt/internal/formatter/Token;

    move-result-object v0

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/formatter/Token;->getWrapPolicy()Lorg/eclipse/jdt/internal/formatter/Token$WrapPolicy;

    move-result-object v0

    sget-object v2, Lorg/eclipse/jdt/internal/formatter/Token$WrapPolicy;->DISABLE_WRAP:Lorg/eclipse/jdt/internal/formatter/Token$WrapPolicy;

    if-ne v0, v2, :cond_1

    return v1

    :cond_1
    iget-object v0, p0, Lorg/eclipse/jdt/internal/formatter/linewrap/CommentWrapExecutor;->potentialWrapToken:Lorg/eclipse/jdt/internal/formatter/Token;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/eclipse/jdt/internal/formatter/linewrap/CommentWrapExecutor;->potentialWrapTokenSubstitute:Lorg/eclipse/jdt/internal/formatter/Token;

    if-eqz v0, :cond_2

    iget v0, p0, Lorg/eclipse/jdt/internal/formatter/linewrap/CommentWrapExecutor;->counterIfWrapped:I

    iget v2, p0, Lorg/eclipse/jdt/internal/formatter/linewrap/CommentWrapExecutor;->lineLimit:I

    if-le v0, v2, :cond_2

    iget v2, p0, Lorg/eclipse/jdt/internal/formatter/linewrap/CommentWrapExecutor;->counterIfWrappedSubstitute:I

    if-ge v2, v0, :cond_2

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/eclipse/jdt/internal/formatter/linewrap/CommentWrapExecutor;->potentialWrapToken:Lorg/eclipse/jdt/internal/formatter/Token;

    :cond_2
    iget-object v0, p0, Lorg/eclipse/jdt/internal/formatter/linewrap/CommentWrapExecutor;->potentialWrapToken:Lorg/eclipse/jdt/internal/formatter/Token;

    if-nez v0, :cond_3

    iget-object v0, p0, Lorg/eclipse/jdt/internal/formatter/linewrap/CommentWrapExecutor;->potentialWrapTokenSubstitute:Lorg/eclipse/jdt/internal/formatter/Token;

    if-nez v0, :cond_3

    return v1

    :cond_3
    const/4 v0, 0x1

    return v0

    :cond_4
    :goto_0
    return v1
.end method

.method private tryToFitInOneLine(Ljava/util/List;IZ)I
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/eclipse/jdt/internal/formatter/Token;",
            ">;IZ)I"
        }
    .end annotation

    const/4 v0, 0x0

    move v1, v0

    move v2, v1

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, -0x1

    if-lt v0, v3, :cond_2

    iget p1, p0, Lorg/eclipse/jdt/internal/formatter/linewrap/CommentWrapExecutor;->lineLimit:I

    if-le p2, p1, :cond_1

    if-nez p3, :cond_1

    if-nez v2, :cond_0

    goto :goto_1

    :cond_0
    return v4

    :cond_1
    :goto_1
    return p2

    :cond_2
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/eclipse/jdt/internal/formatter/Token;

    invoke-virtual {v3}, Lorg/eclipse/jdt/internal/formatter/Token;->getLineBreaksBefore()I

    move-result v5

    if-gtz v5, :cond_8

    invoke-virtual {v3}, Lorg/eclipse/jdt/internal/formatter/Token;->getLineBreaksAfter()I

    move-result v5

    if-lez v5, :cond_3

    goto :goto_2

    :cond_3
    if-nez v1, :cond_4

    invoke-virtual {v3}, Lorg/eclipse/jdt/internal/formatter/Token;->isSpaceBefore()Z

    move-result v1

    if-eqz v1, :cond_4

    add-int/lit8 p2, p2, 0x1

    :cond_4
    iget-object v1, p0, Lorg/eclipse/jdt/internal/formatter/linewrap/CommentWrapExecutor;->tm:Lorg/eclipse/jdt/internal/formatter/TokenManager;

    invoke-virtual {v1, v3, p2}, Lorg/eclipse/jdt/internal/formatter/TokenManager;->getLength(Lorg/eclipse/jdt/internal/formatter/Token;I)I

    move-result v1

    add-int/2addr p2, v1

    invoke-virtual {v3}, Lorg/eclipse/jdt/internal/formatter/Token;->isSpaceAfter()Z

    move-result v1

    if-eqz v1, :cond_5

    add-int/lit8 p2, p2, 0x1

    :cond_5
    invoke-virtual {v3}, Lorg/eclipse/jdt/internal/formatter/Token;->getWrapPolicy()Lorg/eclipse/jdt/internal/formatter/Token$WrapPolicy;

    move-result-object v3

    const/4 v4, 0x1

    if-le v0, v4, :cond_7

    if-eqz v3, :cond_6

    sget-object v5, Lorg/eclipse/jdt/internal/formatter/Token$WrapPolicy;->SUBSTITUTE_ONLY:Lorg/eclipse/jdt/internal/formatter/Token$WrapPolicy;

    if-ne v3, v5, :cond_7

    :cond_6
    move v2, v4

    :cond_7
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_8
    :goto_2
    return v4
.end method


# virtual methods
.method public getLinesCount()I
    .locals 1

    iget v0, p0, Lorg/eclipse/jdt/internal/formatter/linewrap/CommentWrapExecutor;->lineCounter:I

    return v0
.end method

.method public token(Lorg/eclipse/jdt/internal/formatter/Token;I)Z
    .locals 5

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lorg/eclipse/jdt/internal/formatter/linewrap/CommentWrapExecutor;->getStartingPosition(Lorg/eclipse/jdt/internal/formatter/Token;Z)I

    move-result v1

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/formatter/TokenTraverser;->getLineBreaksBefore()I

    move-result v2

    if-eq p2, v0, :cond_0

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/formatter/TokenTraverser;->getNext()Lorg/eclipse/jdt/internal/formatter/Token;

    move-result-object v3

    if-nez v3, :cond_2

    :cond_0
    iget-boolean v3, p0, Lorg/eclipse/jdt/internal/formatter/linewrap/CommentWrapExecutor;->newLinesAtBoundries:Z

    if-eqz v3, :cond_2

    if-nez v2, :cond_2

    iget-boolean v2, p0, Lorg/eclipse/jdt/internal/formatter/linewrap/CommentWrapExecutor;->simulation:Z

    if-nez v2, :cond_1

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/formatter/Token;->breakBefore()V

    :cond_1
    move v2, v0

    :cond_2
    const/4 v3, 0x0

    if-lez v2, :cond_3

    iget v4, p0, Lorg/eclipse/jdt/internal/formatter/linewrap/CommentWrapExecutor;->lineCounter:I

    add-int/2addr v4, v2

    iput v4, p0, Lorg/eclipse/jdt/internal/formatter/linewrap/CommentWrapExecutor;->lineCounter:I

    iput v1, p0, Lorg/eclipse/jdt/internal/formatter/TokenTraverser;->counter:I

    iput-object v3, p0, Lorg/eclipse/jdt/internal/formatter/linewrap/CommentWrapExecutor;->potentialWrapTokenSubstitute:Lorg/eclipse/jdt/internal/formatter/Token;

    iput-object v3, p0, Lorg/eclipse/jdt/internal/formatter/linewrap/CommentWrapExecutor;->potentialWrapToken:Lorg/eclipse/jdt/internal/formatter/Token;

    iget v4, p0, Lorg/eclipse/jdt/internal/formatter/linewrap/CommentWrapExecutor;->lineStartPosition:I

    invoke-direct {p0, v4}, Lorg/eclipse/jdt/internal/formatter/linewrap/CommentWrapExecutor;->getLineLimit(I)I

    move-result v4

    iput v4, p0, Lorg/eclipse/jdt/internal/formatter/linewrap/CommentWrapExecutor;->lineLimit:I

    :cond_3
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/formatter/TokenTraverser;->getNext()Lorg/eclipse/jdt/internal/formatter/Token;

    move-result-object v4

    if-eqz v4, :cond_5

    if-nez v2, :cond_5

    if-le p2, v0, :cond_5

    iget v2, p0, Lorg/eclipse/jdt/internal/formatter/TokenTraverser;->counter:I

    if-ge v1, v2, :cond_5

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/formatter/Token;->getWrapPolicy()Lorg/eclipse/jdt/internal/formatter/Token$WrapPolicy;

    move-result-object v2

    if-nez v2, :cond_4

    iput-object p1, p0, Lorg/eclipse/jdt/internal/formatter/linewrap/CommentWrapExecutor;->potentialWrapToken:Lorg/eclipse/jdt/internal/formatter/Token;

    iput v1, p0, Lorg/eclipse/jdt/internal/formatter/linewrap/CommentWrapExecutor;->counterIfWrapped:I

    goto :goto_0

    :cond_4
    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/formatter/Token;->getWrapPolicy()Lorg/eclipse/jdt/internal/formatter/Token$WrapPolicy;

    move-result-object v2

    sget-object v4, Lorg/eclipse/jdt/internal/formatter/Token$WrapPolicy;->SUBSTITUTE_ONLY:Lorg/eclipse/jdt/internal/formatter/Token$WrapPolicy;

    if-ne v2, v4, :cond_5

    iput-object p1, p0, Lorg/eclipse/jdt/internal/formatter/linewrap/CommentWrapExecutor;->potentialWrapTokenSubstitute:Lorg/eclipse/jdt/internal/formatter/Token;

    iput v1, p0, Lorg/eclipse/jdt/internal/formatter/linewrap/CommentWrapExecutor;->counterIfWrappedSubstitute:I

    :cond_5
    :goto_0
    if-le p2, v0, :cond_7

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/formatter/TokenTraverser;->getNext()Lorg/eclipse/jdt/internal/formatter/Token;

    move-result-object p2

    if-eqz p2, :cond_7

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/formatter/Token;->getAlign()I

    move-result p2

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/formatter/Token;->getIndent()I

    move-result v1

    add-int/2addr p2, v1

    if-lez p2, :cond_7

    iget p2, p0, Lorg/eclipse/jdt/internal/formatter/TokenTraverser;->counter:I

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/formatter/TokenTraverser;->getLineBreaksBefore()I

    move-result v1

    if-lez v1, :cond_6

    move v1, v0

    goto :goto_1

    :cond_6
    const/4 v1, 0x0

    :goto_1
    invoke-direct {p0, p1, v1}, Lorg/eclipse/jdt/internal/formatter/linewrap/CommentWrapExecutor;->getStartingPosition(Lorg/eclipse/jdt/internal/formatter/Token;Z)I

    move-result v1

    invoke-static {p2, v1}, Ljava/lang/Math;->max(II)I

    move-result p2

    iput p2, p0, Lorg/eclipse/jdt/internal/formatter/TokenTraverser;->counter:I

    :cond_7
    iget p2, p0, Lorg/eclipse/jdt/internal/formatter/TokenTraverser;->counter:I

    iget-object v1, p0, Lorg/eclipse/jdt/internal/formatter/linewrap/CommentWrapExecutor;->tm:Lorg/eclipse/jdt/internal/formatter/TokenManager;

    invoke-virtual {v1, p1, p2}, Lorg/eclipse/jdt/internal/formatter/TokenManager;->getLength(Lorg/eclipse/jdt/internal/formatter/Token;I)I

    move-result v1

    add-int/2addr p2, v1

    iput p2, p0, Lorg/eclipse/jdt/internal/formatter/TokenTraverser;->counter:I

    iget p2, p0, Lorg/eclipse/jdt/internal/formatter/linewrap/CommentWrapExecutor;->counterIfWrapped:I

    iget-object v1, p0, Lorg/eclipse/jdt/internal/formatter/linewrap/CommentWrapExecutor;->tm:Lorg/eclipse/jdt/internal/formatter/TokenManager;

    invoke-virtual {v1, p1, p2}, Lorg/eclipse/jdt/internal/formatter/TokenManager;->getLength(Lorg/eclipse/jdt/internal/formatter/Token;I)I

    move-result v1

    add-int/2addr p2, v1

    iput p2, p0, Lorg/eclipse/jdt/internal/formatter/linewrap/CommentWrapExecutor;->counterIfWrapped:I

    iget p2, p0, Lorg/eclipse/jdt/internal/formatter/linewrap/CommentWrapExecutor;->counterIfWrappedSubstitute:I

    iget-object v1, p0, Lorg/eclipse/jdt/internal/formatter/linewrap/CommentWrapExecutor;->tm:Lorg/eclipse/jdt/internal/formatter/TokenManager;

    invoke-virtual {v1, p1, p2}, Lorg/eclipse/jdt/internal/formatter/TokenManager;->getLength(Lorg/eclipse/jdt/internal/formatter/Token;I)I

    move-result p1

    add-int/2addr p2, p1

    iput p2, p0, Lorg/eclipse/jdt/internal/formatter/linewrap/CommentWrapExecutor;->counterIfWrappedSubstitute:I

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/formatter/linewrap/CommentWrapExecutor;->shouldWrap()Z

    move-result p1

    if-eqz p1, :cond_a

    iget-object p1, p0, Lorg/eclipse/jdt/internal/formatter/linewrap/CommentWrapExecutor;->potentialWrapToken:Lorg/eclipse/jdt/internal/formatter/Token;

    if-nez p1, :cond_8

    iget-object p1, p0, Lorg/eclipse/jdt/internal/formatter/linewrap/CommentWrapExecutor;->potentialWrapTokenSubstitute:Lorg/eclipse/jdt/internal/formatter/Token;

    iput-object p1, p0, Lorg/eclipse/jdt/internal/formatter/linewrap/CommentWrapExecutor;->potentialWrapToken:Lorg/eclipse/jdt/internal/formatter/Token;

    iget p1, p0, Lorg/eclipse/jdt/internal/formatter/linewrap/CommentWrapExecutor;->counterIfWrappedSubstitute:I

    iput p1, p0, Lorg/eclipse/jdt/internal/formatter/linewrap/CommentWrapExecutor;->counterIfWrapped:I

    :cond_8
    iget-boolean p1, p0, Lorg/eclipse/jdt/internal/formatter/linewrap/CommentWrapExecutor;->simulation:Z

    if-nez p1, :cond_9

    iget-object p1, p0, Lorg/eclipse/jdt/internal/formatter/linewrap/CommentWrapExecutor;->potentialWrapToken:Lorg/eclipse/jdt/internal/formatter/Token;

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/formatter/Token;->breakBefore()V

    :cond_9
    iget p1, p0, Lorg/eclipse/jdt/internal/formatter/linewrap/CommentWrapExecutor;->counterIfWrapped:I

    iput p1, p0, Lorg/eclipse/jdt/internal/formatter/TokenTraverser;->counter:I

    iget p1, p0, Lorg/eclipse/jdt/internal/formatter/linewrap/CommentWrapExecutor;->lineCounter:I

    add-int/2addr p1, v0

    iput p1, p0, Lorg/eclipse/jdt/internal/formatter/linewrap/CommentWrapExecutor;->lineCounter:I

    iput-object v3, p0, Lorg/eclipse/jdt/internal/formatter/linewrap/CommentWrapExecutor;->potentialWrapTokenSubstitute:Lorg/eclipse/jdt/internal/formatter/Token;

    iput-object v3, p0, Lorg/eclipse/jdt/internal/formatter/linewrap/CommentWrapExecutor;->potentialWrapToken:Lorg/eclipse/jdt/internal/formatter/Token;

    iget p1, p0, Lorg/eclipse/jdt/internal/formatter/linewrap/CommentWrapExecutor;->lineStartPosition:I

    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/formatter/linewrap/CommentWrapExecutor;->getLineLimit(I)I

    move-result p1

    iput p1, p0, Lorg/eclipse/jdt/internal/formatter/linewrap/CommentWrapExecutor;->lineLimit:I

    :cond_a
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/formatter/TokenTraverser;->isSpaceAfter()Z

    move-result p1

    if-eqz p1, :cond_b

    iget p1, p0, Lorg/eclipse/jdt/internal/formatter/TokenTraverser;->counter:I

    add-int/2addr p1, v0

    iput p1, p0, Lorg/eclipse/jdt/internal/formatter/TokenTraverser;->counter:I

    iget p1, p0, Lorg/eclipse/jdt/internal/formatter/linewrap/CommentWrapExecutor;->counterIfWrapped:I

    add-int/2addr p1, v0

    iput p1, p0, Lorg/eclipse/jdt/internal/formatter/linewrap/CommentWrapExecutor;->counterIfWrapped:I

    :cond_b
    return v0
.end method

.method public wrapLineComment(Lorg/eclipse/jdt/internal/formatter/Token;I)V
    .locals 11

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/formatter/Token;->getInternalStructure()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_12

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto/16 :goto_6

    :cond_0
    iget-object v1, p0, Lorg/eclipse/jdt/internal/formatter/linewrap/CommentWrapExecutor;->tm:Lorg/eclipse/jdt/internal/formatter/TokenManager;

    invoke-virtual {v1, p1}, Lorg/eclipse/jdt/internal/formatter/TokenManager;->indexOf(Lorg/eclipse/jdt/internal/formatter/Token;)I

    move-result v1

    iget-object v2, p0, Lorg/eclipse/jdt/internal/formatter/linewrap/CommentWrapExecutor;->tm:Lorg/eclipse/jdt/internal/formatter/TokenManager;

    invoke-virtual {v2, v1}, Lorg/eclipse/jdt/internal/formatter/TokenManager;->isInHeader(I)Z

    move-result v2

    iget-object v3, p0, Lorg/eclipse/jdt/internal/formatter/linewrap/CommentWrapExecutor;->options:Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;

    iget-boolean v4, v3, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->comment_format_line_comment:Z

    if-eqz v4, :cond_1

    if-eqz v2, :cond_2

    :cond_1
    iget-boolean v3, v3, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->comment_format_header:Z

    if-eqz v3, :cond_12

    if-nez v2, :cond_2

    goto/16 :goto_6

    :cond_2
    iget-object v2, p0, Lorg/eclipse/jdt/internal/formatter/linewrap/CommentWrapExecutor;->tm:Lorg/eclipse/jdt/internal/formatter/TokenManager;

    const/4 v3, 0x1

    invoke-virtual {v2, p2, v3}, Lorg/eclipse/jdt/internal/formatter/TokenManager;->toIndent(IZ)I

    move-result v2

    invoke-direct {p0, p2}, Lorg/eclipse/jdt/internal/formatter/linewrap/CommentWrapExecutor;->getLineLimit(I)I

    move-result v4

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_3
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_11

    const/4 v5, 0x0

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/eclipse/jdt/internal/formatter/Token;

    iget v7, v6, Lorg/eclipse/jdt/internal/formatter/Token;->tokenType:I

    const/16 v8, 0x3e8

    if-ne v7, v8, :cond_4

    new-instance v7, Lorg/eclipse/jdt/internal/formatter/Token;

    invoke-direct {v7, v6}, Lorg/eclipse/jdt/internal/formatter/Token;-><init>(Lorg/eclipse/jdt/internal/formatter/Token;)V

    invoke-virtual {v7}, Lorg/eclipse/jdt/internal/formatter/Token;->breakBefore()V

    invoke-virtual {v7, v2}, Lorg/eclipse/jdt/internal/formatter/Token;->setIndent(I)V

    new-instance v6, Lorg/eclipse/jdt/internal/formatter/Token$WrapPolicy;

    sget-object v9, Lorg/eclipse/jdt/internal/formatter/Token$WrapMode;->WHERE_NECESSARY:Lorg/eclipse/jdt/internal/formatter/Token$WrapMode;

    invoke-direct {v6, v9, v1, v5}, Lorg/eclipse/jdt/internal/formatter/Token$WrapPolicy;-><init>(Lorg/eclipse/jdt/internal/formatter/Token$WrapMode;II)V

    invoke-virtual {v7, v6}, Lorg/eclipse/jdt/internal/formatter/Token;->setWrapPolicy(Lorg/eclipse/jdt/internal/formatter/Token$WrapPolicy;)V

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/eclipse/jdt/internal/formatter/Token;

    goto :goto_1

    :cond_4
    const/4 v7, 0x0

    :goto_1
    iget v9, p1, Lorg/eclipse/jdt/internal/formatter/Token;->originalStart:I

    add-int/2addr v9, v3

    invoke-virtual {v6}, Lorg/eclipse/jdt/internal/formatter/Token;->hasNLSTag()Z

    move-result v10

    if-nez v10, :cond_5

    iget v6, v6, Lorg/eclipse/jdt/internal/formatter/Token;->originalEnd:I

    invoke-static {v9, v6}, Ljava/lang/Math;->max(II)I

    move-result v9

    :cond_5
    new-instance v6, Lorg/eclipse/jdt/internal/formatter/Token;

    iget p1, p1, Lorg/eclipse/jdt/internal/formatter/Token;->originalStart:I

    const/16 v10, 0x3e9

    invoke-direct {v6, p1, v9, v10}, Lorg/eclipse/jdt/internal/formatter/Token;-><init>(III)V

    if-nez v7, :cond_6

    invoke-virtual {v6}, Lorg/eclipse/jdt/internal/formatter/Token;->breakBefore()V

    new-instance p1, Lorg/eclipse/jdt/internal/formatter/Token$WrapPolicy;

    sget-object v9, Lorg/eclipse/jdt/internal/formatter/Token$WrapMode;->WHERE_NECESSARY:Lorg/eclipse/jdt/internal/formatter/Token$WrapMode;

    invoke-direct {p1, v9, v1, v5}, Lorg/eclipse/jdt/internal/formatter/Token$WrapPolicy;-><init>(Lorg/eclipse/jdt/internal/formatter/Token$WrapMode;II)V

    invoke-virtual {v6, p1}, Lorg/eclipse/jdt/internal/formatter/Token;->setWrapPolicy(Lorg/eclipse/jdt/internal/formatter/Token$WrapPolicy;)V

    :cond_6
    if-nez v7, :cond_7

    move p1, v5

    goto :goto_2

    :cond_7
    move p1, v3

    :goto_2
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lt v5, v1, :cond_8

    iget-object p1, p0, Lorg/eclipse/jdt/internal/formatter/linewrap/CommentWrapExecutor;->nlsTags:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    return-void

    :cond_8
    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/eclipse/jdt/internal/formatter/Token;

    invoke-virtual {v1, v2}, Lorg/eclipse/jdt/internal/formatter/Token;->setIndent(I)V

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/formatter/Token;->hasNLSTag()Z

    move-result v9

    if-eqz v9, :cond_9

    iget-object v9, p0, Lorg/eclipse/jdt/internal/formatter/linewrap/CommentWrapExecutor;->nlsTags:Ljava/util/ArrayList;

    invoke-virtual {v9, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_5

    :cond_9
    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/formatter/Token;->isSpaceBefore()Z

    move-result v9

    if-eqz v9, :cond_a

    add-int/lit8 p2, p2, 0x1

    :cond_a
    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/formatter/Token;->getLineBreaksBefore()I

    move-result v9

    if-lez v9, :cond_d

    invoke-direct {p0, v2}, Lorg/eclipse/jdt/internal/formatter/linewrap/CommentWrapExecutor;->getLineLimit(I)I

    move-result v4

    if-nez v7, :cond_b

    move p1, v5

    goto :goto_3

    :cond_b
    add-int/lit8 p1, v5, 0x1

    :goto_3
    if-eqz v7, :cond_c

    if-eq v1, v7, :cond_c

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/formatter/Token;->clearLineBreaksBefore()V

    invoke-interface {v0, v5, v7}, Ljava/util/List;->add(ILjava/lang/Object;)V

    move p2, v2

    move-object v1, v7

    goto :goto_4

    :cond_c
    move p2, v2

    :cond_d
    :goto_4
    iget-object v9, p0, Lorg/eclipse/jdt/internal/formatter/linewrap/CommentWrapExecutor;->tm:Lorg/eclipse/jdt/internal/formatter/TokenManager;

    invoke-virtual {v9, v1, p2}, Lorg/eclipse/jdt/internal/formatter/TokenManager;->getLength(Lorg/eclipse/jdt/internal/formatter/Token;I)I

    move-result v9

    add-int/2addr p2, v9

    iget v1, v1, Lorg/eclipse/jdt/internal/formatter/Token;->tokenType:I

    if-ne v1, v8, :cond_e

    invoke-direct {p0, p2}, Lorg/eclipse/jdt/internal/formatter/linewrap/CommentWrapExecutor;->getLineLimit(I)I

    move-result v4

    :cond_e
    if-le p2, v4, :cond_10

    add-int/lit8 v1, p1, 0x1

    if-le v5, v1, :cond_10

    invoke-interface {v0, v5, v6}, Ljava/util/List;->add(ILjava/lang/Object;)V

    if-eqz v7, :cond_f

    invoke-interface {v0, v5, v7}, Ljava/util/List;->add(ILjava/lang/Object;)V

    :cond_f
    iget-object v1, p0, Lorg/eclipse/jdt/internal/formatter/linewrap/CommentWrapExecutor;->nlsTags:Ljava/util/ArrayList;

    invoke-interface {v0, v1}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    iget-object v1, p0, Lorg/eclipse/jdt/internal/formatter/linewrap/CommentWrapExecutor;->nlsTags:Ljava/util/ArrayList;

    invoke-interface {v0, v5, v1}, Ljava/util/List;->addAll(ILjava/util/Collection;)Z

    iget-object v1, p0, Lorg/eclipse/jdt/internal/formatter/linewrap/CommentWrapExecutor;->nlsTags:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/2addr v5, v1

    sub-int/2addr v5, v3

    iget-object v1, p0, Lorg/eclipse/jdt/internal/formatter/linewrap/CommentWrapExecutor;->nlsTags:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    :cond_10
    :goto_5
    add-int/2addr v5, v3

    goto :goto_2

    :cond_11
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/eclipse/jdt/internal/formatter/Token;

    invoke-virtual {v6}, Lorg/eclipse/jdt/internal/formatter/Token;->hasNLSTag()Z

    move-result v7

    if-eqz v7, :cond_3

    iget-object v7, p0, Lorg/eclipse/jdt/internal/formatter/linewrap/CommentWrapExecutor;->nlsTags:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v6}, Lorg/eclipse/jdt/internal/formatter/Token;->countChars()I

    move-result v7

    invoke-virtual {v6}, Lorg/eclipse/jdt/internal/formatter/Token;->isSpaceBefore()Z

    move-result v6

    add-int/2addr v7, v6

    add-int/2addr p2, v7

    goto/16 :goto_0

    :cond_12
    :goto_6
    return-void
.end method

.method public wrapMultiLineComment(Lorg/eclipse/jdt/internal/formatter/Token;IZZ)I
    .locals 2

    const/4 v0, 0x1

    iput v0, p0, Lorg/eclipse/jdt/internal/formatter/linewrap/CommentWrapExecutor;->lineCounter:I

    iput p2, p0, Lorg/eclipse/jdt/internal/formatter/TokenTraverser;->counter:I

    iget-object v1, p0, Lorg/eclipse/jdt/internal/formatter/linewrap/CommentWrapExecutor;->tm:Lorg/eclipse/jdt/internal/formatter/TokenManager;

    invoke-virtual {v1, p2, v0}, Lorg/eclipse/jdt/internal/formatter/TokenManager;->toIndent(IZ)I

    move-result v1

    invoke-virtual {p1, v1}, Lorg/eclipse/jdt/internal/formatter/Token;->setIndent(I)V

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/formatter/Token;->getIndent()I

    move-result v1

    iput v1, p0, Lorg/eclipse/jdt/internal/formatter/linewrap/CommentWrapExecutor;->lineStartPosition:I

    invoke-direct {p0, p2}, Lorg/eclipse/jdt/internal/formatter/linewrap/CommentWrapExecutor;->getLineLimit(I)I

    move-result v1

    iput v1, p0, Lorg/eclipse/jdt/internal/formatter/linewrap/CommentWrapExecutor;->lineLimit:I

    iput-boolean p3, p0, Lorg/eclipse/jdt/internal/formatter/linewrap/CommentWrapExecutor;->simulation:Z

    iput-boolean p4, p0, Lorg/eclipse/jdt/internal/formatter/linewrap/CommentWrapExecutor;->wrapDisabled:Z

    const/4 p3, 0x0

    iput-object p3, p0, Lorg/eclipse/jdt/internal/formatter/linewrap/CommentWrapExecutor;->potentialWrapTokenSubstitute:Lorg/eclipse/jdt/internal/formatter/Token;

    iput-object p3, p0, Lorg/eclipse/jdt/internal/formatter/linewrap/CommentWrapExecutor;->potentialWrapToken:Lorg/eclipse/jdt/internal/formatter/Token;

    iget p3, p1, Lorg/eclipse/jdt/internal/formatter/Token;->tokenType:I

    const/16 v1, 0x3eb

    if-ne p3, v1, :cond_0

    iget-object p3, p0, Lorg/eclipse/jdt/internal/formatter/linewrap/CommentWrapExecutor;->options:Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;

    iget-boolean p3, p3, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->comment_new_lines_at_javadoc_boundaries:Z

    goto :goto_0

    :cond_0
    iget-object p3, p0, Lorg/eclipse/jdt/internal/formatter/linewrap/CommentWrapExecutor;->options:Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;

    iget-boolean p3, p3, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->comment_new_lines_at_block_boundaries:Z

    :goto_0
    iput-boolean p3, p0, Lorg/eclipse/jdt/internal/formatter/linewrap/CommentWrapExecutor;->newLinesAtBoundries:Z

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/formatter/Token;->getInternalStructure()Ljava/util/List;

    move-result-object p3

    if-eqz p3, :cond_4

    invoke-interface {p3}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_2

    :cond_1
    invoke-direct {p0, p3, p2, p4}, Lorg/eclipse/jdt/internal/formatter/linewrap/CommentWrapExecutor;->tryToFitInOneLine(Ljava/util/List;IZ)I

    move-result p1

    if-lez p1, :cond_2

    return p1

    :cond_2
    const/4 p1, 0x0

    invoke-virtual {p0, p3, p1}, Lorg/eclipse/jdt/internal/formatter/TokenTraverser;->traverse(Ljava/util/List;I)I

    invoke-direct {p0, p3}, Lorg/eclipse/jdt/internal/formatter/linewrap/CommentWrapExecutor;->cleanupIndent(Ljava/util/List;)V

    iget-boolean p2, p0, Lorg/eclipse/jdt/internal/formatter/linewrap/CommentWrapExecutor;->newLinesAtBoundries:Z

    if-eqz p2, :cond_3

    iget p2, p0, Lorg/eclipse/jdt/internal/formatter/linewrap/CommentWrapExecutor;->lineStartPosition:I

    add-int/2addr p2, v0

    iget-object p4, p0, Lorg/eclipse/jdt/internal/formatter/linewrap/CommentWrapExecutor;->tm:Lorg/eclipse/jdt/internal/formatter/TokenManager;

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v1

    sub-int/2addr v1, v0

    invoke-interface {p3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lorg/eclipse/jdt/internal/formatter/Token;

    invoke-virtual {p4, p3, p1}, Lorg/eclipse/jdt/internal/formatter/TokenManager;->getLength(Lorg/eclipse/jdt/internal/formatter/Token;I)I

    move-result p1

    :goto_1
    add-int/2addr p2, p1

    return p2

    :cond_3
    iget p1, p0, Lorg/eclipse/jdt/internal/formatter/TokenTraverser;->counter:I

    return p1

    :cond_4
    :goto_2
    iget-object p3, p0, Lorg/eclipse/jdt/internal/formatter/linewrap/CommentWrapExecutor;->tm:Lorg/eclipse/jdt/internal/formatter/TokenManager;

    invoke-virtual {p3, p1, p2}, Lorg/eclipse/jdt/internal/formatter/TokenManager;->getLength(Lorg/eclipse/jdt/internal/formatter/Token;I)I

    move-result p1

    goto :goto_1
.end method
