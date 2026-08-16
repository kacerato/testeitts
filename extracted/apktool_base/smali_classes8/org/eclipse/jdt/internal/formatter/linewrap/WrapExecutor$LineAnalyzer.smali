.class Lorg/eclipse/jdt/internal/formatter/linewrap/WrapExecutor$LineAnalyzer;
.super Lorg/eclipse/jdt/internal/formatter/TokenTraverser;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/eclipse/jdt/internal/formatter/linewrap/WrapExecutor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "LineAnalyzer"
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field activeTopPriorityWrap:I

.field private final commentWrapper:Lorg/eclipse/jdt/internal/formatter/linewrap/CommentWrapExecutor;

.field private currentTopPriorityGroupEnd:I

.field extraLines:I

.field final extraLinesPerComment:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field firstPotentialWrap:I

.field private isNLSTagInLine:Z

.field isNextLineWrapped:Z

.field lineExceeded:Z

.field private lineIndent:I

.field minStructureDepth:I

.field final synthetic this$0:Lorg/eclipse/jdt/internal/formatter/linewrap/WrapExecutor;

.field final topPriorityGroupStarts:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lorg/eclipse/jdt/internal/formatter/linewrap/WrapExecutor;Lorg/eclipse/jdt/internal/formatter/TokenManager;Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;)V
    .locals 0

    iput-object p1, p0, Lorg/eclipse/jdt/internal/formatter/linewrap/WrapExecutor$LineAnalyzer;->this$0:Lorg/eclipse/jdt/internal/formatter/linewrap/WrapExecutor;

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/formatter/TokenTraverser;-><init>()V

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lorg/eclipse/jdt/internal/formatter/linewrap/WrapExecutor$LineAnalyzer;->extraLinesPerComment:Ljava/util/List;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lorg/eclipse/jdt/internal/formatter/linewrap/WrapExecutor$LineAnalyzer;->topPriorityGroupStarts:Ljava/util/List;

    new-instance p1, Lorg/eclipse/jdt/internal/formatter/linewrap/CommentWrapExecutor;

    invoke-direct {p1, p2, p3}, Lorg/eclipse/jdt/internal/formatter/linewrap/CommentWrapExecutor;-><init>(Lorg/eclipse/jdt/internal/formatter/TokenManager;Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;)V

    iput-object p1, p0, Lorg/eclipse/jdt/internal/formatter/linewrap/WrapExecutor$LineAnalyzer;->commentWrapper:Lorg/eclipse/jdt/internal/formatter/linewrap/CommentWrapExecutor;

    return-void
.end method

.method private isActiveTopPriorityWrap(ILorg/eclipse/jdt/internal/formatter/Token$WrapPolicy;)Z
    .locals 5

    iget v0, p0, Lorg/eclipse/jdt/internal/formatter/linewrap/WrapExecutor$LineAnalyzer;->activeTopPriorityWrap:I

    const/4 v1, 0x0

    if-ltz v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x1

    sub-int/2addr p1, v0

    :goto_0
    iget v2, p2, Lorg/eclipse/jdt/internal/formatter/Token$WrapPolicy;->wrapParentIndex:I

    if-gt p1, v2, :cond_1

    return v1

    :cond_1
    iget-object v2, p0, Lorg/eclipse/jdt/internal/formatter/linewrap/WrapExecutor$LineAnalyzer;->this$0:Lorg/eclipse/jdt/internal/formatter/linewrap/WrapExecutor;

    iget-object v2, v2, Lorg/eclipse/jdt/internal/formatter/linewrap/WrapExecutor;->tm:Lorg/eclipse/jdt/internal/formatter/TokenManager;

    invoke-virtual {v2, p1}, Lorg/eclipse/jdt/internal/formatter/TokenManager;->get(I)Lorg/eclipse/jdt/internal/formatter/Token;

    move-result-object v2

    invoke-virtual {v2}, Lorg/eclipse/jdt/internal/formatter/Token;->isWrappable()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {v2}, Lorg/eclipse/jdt/internal/formatter/Token;->getWrapPolicy()Lorg/eclipse/jdt/internal/formatter/Token$WrapPolicy;

    move-result-object v3

    iget v3, v3, Lorg/eclipse/jdt/internal/formatter/Token$WrapPolicy;->wrapParentIndex:I

    iget v4, p2, Lorg/eclipse/jdt/internal/formatter/Token$WrapPolicy;->wrapParentIndex:I

    if-ne v3, v4, :cond_3

    invoke-virtual {v2}, Lorg/eclipse/jdt/internal/formatter/Token;->getLineBreaksBefore()I

    move-result v2

    if-gtz v2, :cond_2

    iget-object v2, p0, Lorg/eclipse/jdt/internal/formatter/linewrap/WrapExecutor$LineAnalyzer;->this$0:Lorg/eclipse/jdt/internal/formatter/linewrap/WrapExecutor;

    iget-object v2, v2, Lorg/eclipse/jdt/internal/formatter/linewrap/WrapExecutor;->tm:Lorg/eclipse/jdt/internal/formatter/TokenManager;

    add-int/lit8 v3, p1, -0x1

    invoke-virtual {v2, v3}, Lorg/eclipse/jdt/internal/formatter/TokenManager;->get(I)Lorg/eclipse/jdt/internal/formatter/Token;

    move-result-object v2

    invoke-virtual {v2}, Lorg/eclipse/jdt/internal/formatter/Token;->getLineBreaksAfter()I

    move-result v2

    if-lez v2, :cond_3

    :cond_2
    return v0

    :cond_3
    add-int/lit8 p1, p1, -0x1

    goto :goto_0
.end method


# virtual methods
.method public analyzeLine(II)I
    .locals 2

    iget-object v0, p0, Lorg/eclipse/jdt/internal/formatter/linewrap/WrapExecutor$LineAnalyzer;->this$0:Lorg/eclipse/jdt/internal/formatter/linewrap/WrapExecutor;

    iget-object v0, v0, Lorg/eclipse/jdt/internal/formatter/linewrap/WrapExecutor;->tm:Lorg/eclipse/jdt/internal/formatter/TokenManager;

    invoke-virtual {v0, p1}, Lorg/eclipse/jdt/internal/formatter/TokenManager;->get(I)Lorg/eclipse/jdt/internal/formatter/Token;

    move-result-object v0

    iget-object v1, p0, Lorg/eclipse/jdt/internal/formatter/linewrap/WrapExecutor$LineAnalyzer;->this$0:Lorg/eclipse/jdt/internal/formatter/linewrap/WrapExecutor;

    iget-object v1, v1, Lorg/eclipse/jdt/internal/formatter/linewrap/WrapExecutor;->tm:Lorg/eclipse/jdt/internal/formatter/TokenManager;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/formatter/Token;->isWrappable()Z

    move-result v0

    invoke-virtual {v1, p2, v0}, Lorg/eclipse/jdt/internal/formatter/TokenManager;->toIndent(IZ)I

    move-result v0

    iput v0, p0, Lorg/eclipse/jdt/internal/formatter/TokenTraverser;->counter:I

    iput p2, p0, Lorg/eclipse/jdt/internal/formatter/linewrap/WrapExecutor$LineAnalyzer;->lineIndent:I

    const/4 p2, -0x1

    iput p2, p0, Lorg/eclipse/jdt/internal/formatter/linewrap/WrapExecutor$LineAnalyzer;->firstPotentialWrap:I

    iput p2, p0, Lorg/eclipse/jdt/internal/formatter/linewrap/WrapExecutor$LineAnalyzer;->activeTopPriorityWrap:I

    const v0, 0x7fffffff

    iput v0, p0, Lorg/eclipse/jdt/internal/formatter/linewrap/WrapExecutor$LineAnalyzer;->minStructureDepth:I

    const/4 v0, 0x0

    iput v0, p0, Lorg/eclipse/jdt/internal/formatter/linewrap/WrapExecutor$LineAnalyzer;->extraLines:I

    iput-boolean v0, p0, Lorg/eclipse/jdt/internal/formatter/linewrap/WrapExecutor$LineAnalyzer;->isNextLineWrapped:Z

    iget-object v1, p0, Lorg/eclipse/jdt/internal/formatter/linewrap/WrapExecutor$LineAnalyzer;->extraLinesPerComment:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    iget-object v1, p0, Lorg/eclipse/jdt/internal/formatter/linewrap/WrapExecutor$LineAnalyzer;->topPriorityGroupStarts:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    iput p2, p0, Lorg/eclipse/jdt/internal/formatter/linewrap/WrapExecutor$LineAnalyzer;->currentTopPriorityGroupEnd:I

    iput-boolean v0, p0, Lorg/eclipse/jdt/internal/formatter/linewrap/WrapExecutor$LineAnalyzer;->isNLSTagInLine:Z

    iget-object p2, p0, Lorg/eclipse/jdt/internal/formatter/linewrap/WrapExecutor$LineAnalyzer;->this$0:Lorg/eclipse/jdt/internal/formatter/linewrap/WrapExecutor;

    iget-object p2, p2, Lorg/eclipse/jdt/internal/formatter/linewrap/WrapExecutor;->tm:Lorg/eclipse/jdt/internal/formatter/TokenManager;

    invoke-virtual {p2, p1, p0}, Lorg/eclipse/jdt/internal/formatter/TokenManager;->traverse(ILorg/eclipse/jdt/internal/formatter/TokenTraverser;)I

    move-result p1

    iget-boolean p2, p0, Lorg/eclipse/jdt/internal/formatter/linewrap/WrapExecutor$LineAnalyzer;->isNextLineWrapped:Z

    add-int/2addr p1, p2

    return p1
.end method

.method public getLastPosition()I
    .locals 1

    iget v0, p0, Lorg/eclipse/jdt/internal/formatter/TokenTraverser;->counter:I

    return v0
.end method

.method public token(Lorg/eclipse/jdt/internal/formatter/Token;I)Z
    .locals 4

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/formatter/Token;->hasNLSTag()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iput-boolean v1, p0, Lorg/eclipse/jdt/internal/formatter/linewrap/WrapExecutor$LineAnalyzer;->isNLSTagInLine:Z

    :cond_0
    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/formatter/Token;->isWrappable()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/formatter/Token;->getWrapPolicy()Lorg/eclipse/jdt/internal/formatter/Token$WrapPolicy;

    move-result-object v0

    iget-object v2, v0, Lorg/eclipse/jdt/internal/formatter/Token$WrapPolicy;->wrapMode:Lorg/eclipse/jdt/internal/formatter/Token$WrapMode;

    sget-object v3, Lorg/eclipse/jdt/internal/formatter/Token$WrapMode;->TOP_PRIORITY:Lorg/eclipse/jdt/internal/formatter/Token$WrapMode;

    if-ne v2, v3, :cond_2

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/formatter/TokenTraverser;->getLineBreaksBefore()I

    move-result v2

    if-nez v2, :cond_2

    iget v2, p0, Lorg/eclipse/jdt/internal/formatter/linewrap/WrapExecutor$LineAnalyzer;->currentTopPriorityGroupEnd:I

    if-le p2, v2, :cond_2

    invoke-direct {p0, p2, v0}, Lorg/eclipse/jdt/internal/formatter/linewrap/WrapExecutor$LineAnalyzer;->isActiveTopPriorityWrap(ILorg/eclipse/jdt/internal/formatter/Token$WrapPolicy;)Z

    move-result v2

    if-eqz v2, :cond_1

    iput p2, p0, Lorg/eclipse/jdt/internal/formatter/linewrap/WrapExecutor$LineAnalyzer;->activeTopPriorityWrap:I

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lorg/eclipse/jdt/internal/formatter/linewrap/WrapExecutor$LineAnalyzer;->topPriorityGroupStarts:Ljava/util/List;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget v2, v0, Lorg/eclipse/jdt/internal/formatter/Token$WrapPolicy;->groupEndIndex:I

    iput v2, p0, Lorg/eclipse/jdt/internal/formatter/linewrap/WrapExecutor$LineAnalyzer;->currentTopPriorityGroupEnd:I

    :goto_0
    iget v2, p0, Lorg/eclipse/jdt/internal/formatter/linewrap/WrapExecutor$LineAnalyzer;->firstPotentialWrap:I

    if-gez v2, :cond_3

    iput p2, p0, Lorg/eclipse/jdt/internal/formatter/linewrap/WrapExecutor$LineAnalyzer;->firstPotentialWrap:I

    goto :goto_1

    :cond_2
    iget v2, p0, Lorg/eclipse/jdt/internal/formatter/linewrap/WrapExecutor$LineAnalyzer;->firstPotentialWrap:I

    if-gez v2, :cond_3

    iget-object v2, p0, Lorg/eclipse/jdt/internal/formatter/linewrap/WrapExecutor$LineAnalyzer;->this$0:Lorg/eclipse/jdt/internal/formatter/linewrap/WrapExecutor;

    invoke-virtual {v2, p1}, Lorg/eclipse/jdt/internal/formatter/linewrap/WrapExecutor;->getWrapIndent(Lorg/eclipse/jdt/internal/formatter/Token;)I

    move-result v2

    iget v3, p0, Lorg/eclipse/jdt/internal/formatter/TokenTraverser;->counter:I

    if-ge v2, v3, :cond_3

    iput p2, p0, Lorg/eclipse/jdt/internal/formatter/linewrap/WrapExecutor$LineAnalyzer;->firstPotentialWrap:I

    :cond_3
    :goto_1
    iget v2, p0, Lorg/eclipse/jdt/internal/formatter/linewrap/WrapExecutor$LineAnalyzer;->minStructureDepth:I

    iget v0, v0, Lorg/eclipse/jdt/internal/formatter/Token$WrapPolicy;->structureDepth:I

    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lorg/eclipse/jdt/internal/formatter/linewrap/WrapExecutor$LineAnalyzer;->minStructureDepth:I

    :cond_4
    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/formatter/Token;->getAlign()I

    move-result v0

    const/16 v2, 0x3e9

    if-lez v0, :cond_5

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/formatter/Token;->getAlign()I

    move-result v0

    iput v0, p0, Lorg/eclipse/jdt/internal/formatter/TokenTraverser;->counter:I

    goto :goto_2

    :cond_5
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/formatter/TokenTraverser;->isSpaceBefore()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/formatter/TokenTraverser;->getLineBreaksBefore()I

    move-result v0

    if-nez v0, :cond_6

    if-lez p2, :cond_6

    iget v0, p1, Lorg/eclipse/jdt/internal/formatter/Token;->tokenType:I

    if-eq v0, v2, :cond_6

    iget v0, p0, Lorg/eclipse/jdt/internal/formatter/TokenTraverser;->counter:I

    add-int/2addr v0, v1

    iput v0, p0, Lorg/eclipse/jdt/internal/formatter/TokenTraverser;->counter:I

    :cond_6
    :goto_2
    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/formatter/Token;->isComment()Z

    move-result v0

    if-nez v0, :cond_7

    iget v0, p0, Lorg/eclipse/jdt/internal/formatter/TokenTraverser;->counter:I

    iget-object v2, p0, Lorg/eclipse/jdt/internal/formatter/linewrap/WrapExecutor$LineAnalyzer;->this$0:Lorg/eclipse/jdt/internal/formatter/linewrap/WrapExecutor;

    iget-object v2, v2, Lorg/eclipse/jdt/internal/formatter/linewrap/WrapExecutor;->tm:Lorg/eclipse/jdt/internal/formatter/TokenManager;

    invoke-virtual {v2, p1, v0}, Lorg/eclipse/jdt/internal/formatter/TokenManager;->getLength(Lorg/eclipse/jdt/internal/formatter/Token;I)I

    move-result v2

    add-int/2addr v0, v2

    iput v0, p0, Lorg/eclipse/jdt/internal/formatter/TokenTraverser;->counter:I

    goto :goto_3

    :cond_7
    iget v0, p1, Lorg/eclipse/jdt/internal/formatter/Token;->tokenType:I

    if-eq v0, v2, :cond_8

    iget-object v0, p0, Lorg/eclipse/jdt/internal/formatter/linewrap/WrapExecutor$LineAnalyzer;->commentWrapper:Lorg/eclipse/jdt/internal/formatter/linewrap/CommentWrapExecutor;

    iget v2, p0, Lorg/eclipse/jdt/internal/formatter/TokenTraverser;->counter:I

    iget-boolean v3, p0, Lorg/eclipse/jdt/internal/formatter/linewrap/WrapExecutor$LineAnalyzer;->isNLSTagInLine:Z

    invoke-virtual {v0, p1, v2, v1, v3}, Lorg/eclipse/jdt/internal/formatter/linewrap/CommentWrapExecutor;->wrapMultiLineComment(Lorg/eclipse/jdt/internal/formatter/Token;IZZ)I

    move-result v0

    iput v0, p0, Lorg/eclipse/jdt/internal/formatter/TokenTraverser;->counter:I

    iget v0, p0, Lorg/eclipse/jdt/internal/formatter/linewrap/WrapExecutor$LineAnalyzer;->extraLines:I

    iget-object v2, p0, Lorg/eclipse/jdt/internal/formatter/linewrap/WrapExecutor$LineAnalyzer;->commentWrapper:Lorg/eclipse/jdt/internal/formatter/linewrap/CommentWrapExecutor;

    invoke-virtual {v2}, Lorg/eclipse/jdt/internal/formatter/linewrap/CommentWrapExecutor;->getLinesCount()I

    move-result v2

    sub-int/2addr v2, v1

    add-int/2addr v0, v2

    iput v0, p0, Lorg/eclipse/jdt/internal/formatter/linewrap/WrapExecutor$LineAnalyzer;->extraLines:I

    iget-object v0, p0, Lorg/eclipse/jdt/internal/formatter/linewrap/WrapExecutor$LineAnalyzer;->extraLinesPerComment:Ljava/util/List;

    iget-object v2, p0, Lorg/eclipse/jdt/internal/formatter/linewrap/WrapExecutor$LineAnalyzer;->commentWrapper:Lorg/eclipse/jdt/internal/formatter/linewrap/CommentWrapExecutor;

    invoke-virtual {v2}, Lorg/eclipse/jdt/internal/formatter/linewrap/CommentWrapExecutor;->getLinesCount()I

    move-result v2

    sub-int/2addr v2, v1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_8
    :goto_3
    iget v0, p0, Lorg/eclipse/jdt/internal/formatter/TokenTraverser;->counter:I

    iget-object v2, p0, Lorg/eclipse/jdt/internal/formatter/linewrap/WrapExecutor$LineAnalyzer;->this$0:Lorg/eclipse/jdt/internal/formatter/linewrap/WrapExecutor;

    iget-object v2, v2, Lorg/eclipse/jdt/internal/formatter/linewrap/WrapExecutor;->options:Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;

    iget v2, v2, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->page_width:I

    const/4 v3, 0x0

    if-le v0, v2, :cond_9

    move v0, v1

    goto :goto_4

    :cond_9
    move v0, v3

    :goto_4
    iput-boolean v0, p0, Lorg/eclipse/jdt/internal/formatter/linewrap/WrapExecutor$LineAnalyzer;->lineExceeded:Z

    if-eqz v0, :cond_a

    iget v0, p0, Lorg/eclipse/jdt/internal/formatter/linewrap/WrapExecutor$LineAnalyzer;->firstPotentialWrap:I

    if-ltz v0, :cond_a

    return v3

    :cond_a
    iget v0, p0, Lorg/eclipse/jdt/internal/formatter/linewrap/WrapExecutor$LineAnalyzer;->lineIndent:I

    invoke-virtual {p1, v0}, Lorg/eclipse/jdt/internal/formatter/Token;->setIndent(I)V

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/formatter/TokenTraverser;->getNext()Lorg/eclipse/jdt/internal/formatter/Token;

    move-result-object p1

    if-eqz p1, :cond_c

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/formatter/TokenTraverser;->getNext()Lorg/eclipse/jdt/internal/formatter/Token;

    move-result-object p1

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/formatter/Token;->isWrappable()Z

    move-result p1

    if-eqz p1, :cond_c

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/formatter/TokenTraverser;->getLineBreaksAfter()I

    move-result p1

    if-lez p1, :cond_c

    iput-boolean v1, p0, Lorg/eclipse/jdt/internal/formatter/linewrap/WrapExecutor$LineAnalyzer;->isNextLineWrapped:Z

    iget p1, p0, Lorg/eclipse/jdt/internal/formatter/linewrap/WrapExecutor$LineAnalyzer;->firstPotentialWrap:I

    if-gez p1, :cond_b

    add-int/2addr p2, v1

    iput p2, p0, Lorg/eclipse/jdt/internal/formatter/linewrap/WrapExecutor$LineAnalyzer;->firstPotentialWrap:I

    :cond_b
    return v3

    :cond_c
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/formatter/TokenTraverser;->getLineBreaksAfter()I

    move-result p1

    if-gtz p1, :cond_d

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/formatter/TokenTraverser;->getNext()Lorg/eclipse/jdt/internal/formatter/Token;

    move-result-object p1

    if-eqz p1, :cond_d

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/formatter/TokenTraverser;->getNext()Lorg/eclipse/jdt/internal/formatter/Token;

    move-result-object p1

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/formatter/Token;->isNextLineOnWrap()Z

    move-result p1

    if-eqz p1, :cond_e

    iget-object p1, p0, Lorg/eclipse/jdt/internal/formatter/linewrap/WrapExecutor$LineAnalyzer;->this$0:Lorg/eclipse/jdt/internal/formatter/linewrap/WrapExecutor;

    iget-object p1, p1, Lorg/eclipse/jdt/internal/formatter/linewrap/WrapExecutor;->tm:Lorg/eclipse/jdt/internal/formatter/TokenManager;

    invoke-virtual {p1, p2}, Lorg/eclipse/jdt/internal/formatter/TokenManager;->findFirstTokenInLine(I)I

    move-result p2

    invoke-virtual {p1, p2}, Lorg/eclipse/jdt/internal/formatter/TokenManager;->get(I)Lorg/eclipse/jdt/internal/formatter/Token;

    move-result-object p1

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/formatter/Token;->isWrappable()Z

    move-result p1

    if-nez p1, :cond_d

    goto :goto_5

    :cond_d
    move v3, v1

    :cond_e
    :goto_5
    xor-int/lit8 p1, v3, 0x1

    return p1
.end method
