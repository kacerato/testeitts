.class public Lorg/eclipse/jdt/internal/formatter/linewrap/WrapExecutor;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/eclipse/jdt/internal/formatter/linewrap/WrapExecutor$LineAnalyzer;,
        Lorg/eclipse/jdt/internal/formatter/linewrap/WrapExecutor$NLSTagHandler;,
        Lorg/eclipse/jdt/internal/formatter/linewrap/WrapExecutor$WrapInfo;,
        Lorg/eclipse/jdt/internal/formatter/linewrap/WrapExecutor$WrapResult;,
        Lorg/eclipse/jdt/internal/formatter/linewrap/WrapExecutor$WrapsApplier;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final EMPTY_ARRAY:[I


# instance fields
.field private final lineAnalyzer:Lorg/eclipse/jdt/internal/formatter/linewrap/WrapExecutor$LineAnalyzer;

.field final options:Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;

.field final tm:Lorg/eclipse/jdt/internal/formatter/TokenManager;

.field private final wrapInfoTemp:Lorg/eclipse/jdt/internal/formatter/linewrap/WrapExecutor$WrapInfo;

.field final wrapSearchResults:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lorg/eclipse/jdt/internal/formatter/linewrap/WrapExecutor$WrapInfo;",
            "Lorg/eclipse/jdt/internal/formatter/linewrap/WrapExecutor$WrapResult;",
            ">;"
        }
    .end annotation
.end field

.field private final wrapSearchStack:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque<",
            "Lorg/eclipse/jdt/internal/formatter/linewrap/WrapExecutor$WrapInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [I

    sput-object v0, Lorg/eclipse/jdt/internal/formatter/linewrap/WrapExecutor;->EMPTY_ARRAY:[I

    return-void
.end method

.method public constructor <init>(Lorg/eclipse/jdt/internal/formatter/TokenManager;Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/eclipse/jdt/internal/formatter/linewrap/WrapExecutor;->wrapSearchResults:Ljava/util/HashMap;

    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lorg/eclipse/jdt/internal/formatter/linewrap/WrapExecutor;->wrapSearchStack:Ljava/util/ArrayDeque;

    new-instance v0, Lorg/eclipse/jdt/internal/formatter/linewrap/WrapExecutor$WrapInfo;

    invoke-direct {v0}, Lorg/eclipse/jdt/internal/formatter/linewrap/WrapExecutor$WrapInfo;-><init>()V

    iput-object v0, p0, Lorg/eclipse/jdt/internal/formatter/linewrap/WrapExecutor;->wrapInfoTemp:Lorg/eclipse/jdt/internal/formatter/linewrap/WrapExecutor$WrapInfo;

    iput-object p1, p0, Lorg/eclipse/jdt/internal/formatter/linewrap/WrapExecutor;->tm:Lorg/eclipse/jdt/internal/formatter/TokenManager;

    iput-object p2, p0, Lorg/eclipse/jdt/internal/formatter/linewrap/WrapExecutor;->options:Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;

    new-instance v0, Lorg/eclipse/jdt/internal/formatter/linewrap/WrapExecutor$LineAnalyzer;

    invoke-direct {v0, p0, p1, p2}, Lorg/eclipse/jdt/internal/formatter/linewrap/WrapExecutor$LineAnalyzer;-><init>(Lorg/eclipse/jdt/internal/formatter/linewrap/WrapExecutor;Lorg/eclipse/jdt/internal/formatter/TokenManager;Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;)V

    iput-object v0, p0, Lorg/eclipse/jdt/internal/formatter/linewrap/WrapExecutor;->lineAnalyzer:Lorg/eclipse/jdt/internal/formatter/linewrap/WrapExecutor$LineAnalyzer;

    return-void
.end method

.method private findWraps(II)Lorg/eclipse/jdt/internal/formatter/linewrap/WrapExecutor$WrapResult;
    .locals 32

    move-object/from16 v6, p0

    move/from16 v7, p1

    iget-object v0, v6, Lorg/eclipse/jdt/internal/formatter/linewrap/WrapExecutor;->lineAnalyzer:Lorg/eclipse/jdt/internal/formatter/linewrap/WrapExecutor$LineAnalyzer;

    move/from16 v8, p2

    invoke-virtual {v0, v7, v8}, Lorg/eclipse/jdt/internal/formatter/linewrap/WrapExecutor$LineAnalyzer;->analyzeLine(II)I

    move-result v9

    iget-object v0, v6, Lorg/eclipse/jdt/internal/formatter/linewrap/WrapExecutor;->lineAnalyzer:Lorg/eclipse/jdt/internal/formatter/linewrap/WrapExecutor$LineAnalyzer;

    iget-boolean v10, v0, Lorg/eclipse/jdt/internal/formatter/linewrap/WrapExecutor$LineAnalyzer;->isNextLineWrapped:Z

    iget-boolean v1, v0, Lorg/eclipse/jdt/internal/formatter/linewrap/WrapExecutor$LineAnalyzer;->lineExceeded:Z

    const/4 v11, 0x1

    const/4 v12, 0x0

    if-nez v1, :cond_0

    if-nez v10, :cond_0

    move v13, v12

    goto :goto_0

    :cond_0
    move v13, v11

    :goto_0
    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/formatter/linewrap/WrapExecutor$LineAnalyzer;->getLastPosition()I

    move-result v0

    iget-object v1, v6, Lorg/eclipse/jdt/internal/formatter/linewrap/WrapExecutor;->options:Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;

    iget v1, v1, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->page_width:I

    sub-int/2addr v0, v1

    invoke-static {v12, v0}, Ljava/lang/Math;->max(II)I

    move-result v14

    iget-object v0, v6, Lorg/eclipse/jdt/internal/formatter/linewrap/WrapExecutor;->lineAnalyzer:Lorg/eclipse/jdt/internal/formatter/linewrap/WrapExecutor$LineAnalyzer;

    iget v15, v0, Lorg/eclipse/jdt/internal/formatter/linewrap/WrapExecutor$LineAnalyzer;->extraLines:I

    iget v5, v0, Lorg/eclipse/jdt/internal/formatter/linewrap/WrapExecutor$LineAnalyzer;->firstPotentialWrap:I

    iget v4, v0, Lorg/eclipse/jdt/internal/formatter/linewrap/WrapExecutor$LineAnalyzer;->activeTopPriorityWrap:I

    iget-object v0, v0, Lorg/eclipse/jdt/internal/formatter/linewrap/WrapExecutor$LineAnalyzer;->extraLinesPerComment:Ljava/util/List;

    invoke-direct {v6, v0}, Lorg/eclipse/jdt/internal/formatter/linewrap/WrapExecutor;->toArray(Ljava/util/List;)[I

    move-result-object v3

    array-length v2, v3

    iget-object v0, v6, Lorg/eclipse/jdt/internal/formatter/linewrap/WrapExecutor;->lineAnalyzer:Lorg/eclipse/jdt/internal/formatter/linewrap/WrapExecutor$LineAnalyzer;

    iget-object v0, v0, Lorg/eclipse/jdt/internal/formatter/linewrap/WrapExecutor$LineAnalyzer;->topPriorityGroupStarts:Ljava/util/List;

    invoke-direct {v6, v0}, Lorg/eclipse/jdt/internal/formatter/linewrap/WrapExecutor;->toArray(Ljava/util/List;)[I

    move-result-object v1

    array-length v0, v1

    sub-int/2addr v0, v11

    const/4 v11, -0x1

    if-ne v0, v11, :cond_1

    move v11, v12

    goto :goto_1

    :cond_1
    iget-object v12, v6, Lorg/eclipse/jdt/internal/formatter/linewrap/WrapExecutor;->tm:Lorg/eclipse/jdt/internal/formatter/TokenManager;

    aget v11, v1, v0

    invoke-virtual {v12, v11}, Lorg/eclipse/jdt/internal/formatter/TokenManager;->get(I)Lorg/eclipse/jdt/internal/formatter/Token;

    move-result-object v11

    invoke-virtual {v11}, Lorg/eclipse/jdt/internal/formatter/Token;->getWrapPolicy()Lorg/eclipse/jdt/internal/formatter/Token$WrapPolicy;

    move-result-object v11

    iget v11, v11, Lorg/eclipse/jdt/internal/formatter/Token$WrapPolicy;->groupEndIndex:I

    :goto_1
    add-int/lit8 v12, v9, 0x1

    const/16 v16, -0x1

    sget-object v17, Lorg/eclipse/jdt/internal/formatter/linewrap/WrapExecutor$WrapResult;->NO_WRAP_NEEDED:Lorg/eclipse/jdt/internal/formatter/linewrap/WrapExecutor$WrapResult;

    move/from16 v18, v0

    move-object/from16 v0, p0

    move-object/from16 v19, v1

    move/from16 v1, p1

    move/from16 v20, v2

    move/from16 v2, p2

    move-object/from16 v21, v3

    move v3, v12

    move v12, v4

    move/from16 v4, v16

    move v8, v5

    move-object/from16 v5, v17

    invoke-direct/range {v0 .. v5}, Lorg/eclipse/jdt/internal/formatter/linewrap/WrapExecutor;->getWrapPenalty(IIIILorg/eclipse/jdt/internal/formatter/linewrap/WrapExecutor$WrapResult;)D

    move-result-wide v0

    add-int v2, v14, v15

    const/4 v5, 0x0

    if-nez v13, :cond_3

    if-gez v12, :cond_3

    iget-object v3, v6, Lorg/eclipse/jdt/internal/formatter/linewrap/WrapExecutor;->options:Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;

    iget-boolean v4, v3, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->join_wrapped_lines:Z

    if-eqz v4, :cond_2

    iget-boolean v3, v3, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->wrap_outer_expressions_when_nested:Z

    if-nez v3, :cond_3

    :cond_2
    new-instance v3, Lorg/eclipse/jdt/internal/formatter/linewrap/WrapExecutor$WrapResult;

    invoke-direct {v3, v0, v1, v2, v5}, Lorg/eclipse/jdt/internal/formatter/linewrap/WrapExecutor$WrapResult;-><init>(DILorg/eclipse/jdt/internal/formatter/linewrap/WrapExecutor$WrapInfo;)V

    return-object v3

    :cond_3
    iget-object v3, v6, Lorg/eclipse/jdt/internal/formatter/linewrap/WrapExecutor;->tm:Lorg/eclipse/jdt/internal/formatter/TokenManager;

    invoke-virtual {v3, v7}, Lorg/eclipse/jdt/internal/formatter/TokenManager;->get(I)Lorg/eclipse/jdt/internal/formatter/Token;

    move-result-object v3

    invoke-virtual {v3}, Lorg/eclipse/jdt/internal/formatter/Token;->isWrappable()Z

    move-result v4

    if-eqz v4, :cond_4

    iget-object v4, v6, Lorg/eclipse/jdt/internal/formatter/linewrap/WrapExecutor;->options:Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;

    iget-boolean v4, v4, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->wrap_outer_expressions_when_nested:Z

    if-eqz v4, :cond_4

    if-gez v12, :cond_4

    invoke-virtual {v3}, Lorg/eclipse/jdt/internal/formatter/Token;->getWrapPolicy()Lorg/eclipse/jdt/internal/formatter/Token$WrapPolicy;

    move-result-object v3

    iget v3, v3, Lorg/eclipse/jdt/internal/formatter/Token$WrapPolicy;->structureDepth:I

    iget-object v4, v6, Lorg/eclipse/jdt/internal/formatter/linewrap/WrapExecutor;->lineAnalyzer:Lorg/eclipse/jdt/internal/formatter/linewrap/WrapExecutor$LineAnalyzer;

    iget v4, v4, Lorg/eclipse/jdt/internal/formatter/linewrap/WrapExecutor$LineAnalyzer;->minStructureDepth:I

    if-ge v4, v3, :cond_4

    :goto_2
    move v4, v3

    goto :goto_3

    :cond_4
    const v3, 0x7fffffff

    goto :goto_2

    :goto_3
    new-instance v3, Ljava/util/LinkedHashSet;

    invoke-direct {v3}, Ljava/util/LinkedHashSet;-><init>()V

    move/from16 v16, v14

    move/from16 v17, v15

    const/16 v22, 0x0

    move-wide v14, v0

    move v1, v11

    move/from16 v0, v18

    const/16 v18, 0x0

    move v11, v9

    move v9, v2

    move/from16 v2, v20

    const/16 v20, -0x1

    :goto_4
    if-ltz v8, :cond_5

    if-ge v11, v8, :cond_6

    :cond_5
    move-object/from16 v23, v5

    goto/16 :goto_12

    :cond_6
    iget-object v5, v6, Lorg/eclipse/jdt/internal/formatter/linewrap/WrapExecutor;->tm:Lorg/eclipse/jdt/internal/formatter/TokenManager;

    invoke-virtual {v5, v11}, Lorg/eclipse/jdt/internal/formatter/TokenManager;->get(I)Lorg/eclipse/jdt/internal/formatter/Token;

    move-result-object v5

    if-lez v2, :cond_9

    iget v7, v5, Lorg/eclipse/jdt/internal/formatter/Token;->tokenType:I

    move/from16 v24, v8

    const/16 v8, 0x3ea

    if-eq v7, v8, :cond_7

    const/16 v8, 0x3eb

    if-ne v7, v8, :cond_8

    :cond_7
    add-int/lit8 v2, v2, -0x1

    aget v7, v21, v2

    sub-int v17, v17, v7

    if-lez v7, :cond_8

    invoke-virtual {v3}, Ljava/util/AbstractCollection;->clear()V

    :cond_8
    :goto_5
    move v7, v2

    goto :goto_6

    :cond_9
    move/from16 v24, v8

    goto :goto_5

    :goto_6
    if-ltz v0, :cond_c

    if-gt v11, v1, :cond_c

    aget v2, v19, v0

    if-le v11, v2, :cond_a

    move-object/from16 v27, v3

    move/from16 v28, v4

    :goto_7
    const/4 v4, 0x0

    const/16 v23, 0x0

    goto/16 :goto_11

    :cond_a
    add-int/lit8 v0, v0, -0x1

    const/4 v1, -0x1

    if-ne v0, v1, :cond_b

    const/4 v1, 0x0

    goto :goto_8

    :cond_b
    iget-object v1, v6, Lorg/eclipse/jdt/internal/formatter/linewrap/WrapExecutor;->tm:Lorg/eclipse/jdt/internal/formatter/TokenManager;

    aget v2, v19, v0

    invoke-virtual {v1, v2}, Lorg/eclipse/jdt/internal/formatter/TokenManager;->get(I)Lorg/eclipse/jdt/internal/formatter/Token;

    move-result-object v1

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/formatter/Token;->getWrapPolicy()Lorg/eclipse/jdt/internal/formatter/Token$WrapPolicy;

    move-result-object v1

    iget v1, v1, Lorg/eclipse/jdt/internal/formatter/Token$WrapPolicy;->groupEndIndex:I

    :cond_c
    :goto_8
    move v8, v0

    move/from16 v25, v1

    invoke-virtual {v5}, Lorg/eclipse/jdt/internal/formatter/Token;->getWrapPolicy()Lorg/eclipse/jdt/internal/formatter/Token$WrapPolicy;

    move-result-object v0

    invoke-virtual {v5}, Lorg/eclipse/jdt/internal/formatter/Token;->isWrappable()Z

    move-result v1

    if-eqz v1, :cond_d

    if-ltz v12, :cond_e

    if-ne v11, v12, :cond_d

    goto :goto_a

    :cond_d
    :goto_9
    move-object/from16 v27, v3

    move/from16 v28, v4

    const/4 v4, 0x0

    const/16 v23, 0x0

    goto/16 :goto_10

    :cond_e
    :goto_a
    invoke-virtual {v3, v0}, Ljava/util/AbstractCollection;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_d

    iget v1, v0, Lorg/eclipse/jdt/internal/formatter/Token$WrapPolicy;->structureDepth:I

    if-lt v1, v4, :cond_f

    goto :goto_9

    :cond_f
    invoke-virtual {v3, v0}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    invoke-virtual {v6, v5}, Lorg/eclipse/jdt/internal/formatter/linewrap/WrapExecutor;->getWrapIndent(Lorg/eclipse/jdt/internal/formatter/Token;)I

    move-result v5

    invoke-virtual {v6, v11, v5}, Lorg/eclipse/jdt/internal/formatter/linewrap/WrapExecutor;->findWrapsCached(II)Lorg/eclipse/jdt/internal/formatter/linewrap/WrapExecutor$WrapResult;

    move-result-object v2

    if-nez v2, :cond_10

    const/4 v0, 0x1

    goto :goto_b

    :cond_10
    const/4 v0, 0x0

    :goto_b
    or-int v18, v18, v0

    if-eqz v18, :cond_11

    move-object/from16 v27, v3

    move/from16 v28, v4

    move v0, v8

    move/from16 v1, v25

    goto :goto_7

    :cond_11
    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v26, v2

    move/from16 v2, p2

    move-object/from16 v27, v3

    move v3, v11

    move/from16 v28, v4

    move v4, v5

    move/from16 v29, v5

    const/16 v23, 0x0

    move-object/from16 v5, v26

    invoke-direct/range {v0 .. v5}, Lorg/eclipse/jdt/internal/formatter/linewrap/WrapExecutor;->getWrapPenalty(IIIILorg/eclipse/jdt/internal/formatter/linewrap/WrapExecutor$WrapResult;)D

    move-result-wide v0

    move-object/from16 v2, v26

    iget v2, v2, Lorg/eclipse/jdt/internal/formatter/linewrap/WrapExecutor$WrapResult;->extraPenalty:I

    add-int v2, v2, v17

    if-lez v16, :cond_12

    iget-object v3, v6, Lorg/eclipse/jdt/internal/formatter/linewrap/WrapExecutor;->tm:Lorg/eclipse/jdt/internal/formatter/TokenManager;

    add-int/lit8 v4, v11, -0x1

    invoke-virtual {v3, v4}, Lorg/eclipse/jdt/internal/formatter/TokenManager;->getPositionInLine(I)I

    move-result v3

    iget-object v5, v6, Lorg/eclipse/jdt/internal/formatter/linewrap/WrapExecutor;->tm:Lorg/eclipse/jdt/internal/formatter/TokenManager;

    invoke-virtual {v5, v4}, Lorg/eclipse/jdt/internal/formatter/TokenManager;->get(I)Lorg/eclipse/jdt/internal/formatter/Token;

    move-result-object v4

    invoke-virtual {v5, v4, v3}, Lorg/eclipse/jdt/internal/formatter/TokenManager;->getLength(Lorg/eclipse/jdt/internal/formatter/Token;I)I

    move-result v4

    add-int/2addr v3, v4

    iget-object v4, v6, Lorg/eclipse/jdt/internal/formatter/linewrap/WrapExecutor;->options:Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;

    iget v4, v4, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->page_width:I

    sub-int/2addr v3, v4

    const/4 v4, 0x0

    invoke-static {v4, v3}, Ljava/lang/Math;->max(II)I

    move-result v5

    add-int/2addr v2, v5

    move/from16 v16, v3

    goto :goto_c

    :cond_12
    const/4 v4, 0x0

    :goto_c
    if-lt v2, v9, :cond_14

    if-eq v11, v12, :cond_14

    if-gez v20, :cond_13

    if-nez v13, :cond_14

    :cond_13
    move v3, v4

    goto :goto_d

    :cond_14
    const/4 v3, 0x1

    :goto_d
    if-nez v3, :cond_16

    if-ne v2, v9, :cond_16

    cmpg-double v3, v0, v14

    if-ltz v3, :cond_15

    const-wide v30, 0x7fefffffffffffffL    # Double.MAX_VALUE

    cmpl-double v3, v14, v30

    if-eqz v3, :cond_15

    move v3, v4

    goto :goto_e

    :cond_15
    const/4 v3, 0x1

    :cond_16
    :goto_e
    if-eqz v3, :cond_19

    iget-object v3, v6, Lorg/eclipse/jdt/internal/formatter/linewrap/WrapExecutor;->options:Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;

    iget-boolean v3, v3, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->wrap_outer_expressions_when_nested:Z

    if-eqz v3, :cond_18

    if-eq v11, v12, :cond_18

    if-eqz v10, :cond_17

    goto :goto_f

    :cond_17
    move-wide v14, v0

    move v9, v2

    move v0, v8

    move/from16 v20, v11

    move/from16 v1, v25

    move/from16 v22, v29

    goto :goto_11

    :cond_18
    :goto_f
    move-wide v14, v0

    move v9, v2

    move/from16 v0, v29

    goto :goto_13

    :cond_19
    :goto_10
    move v0, v8

    move/from16 v1, v25

    :goto_11
    add-int/lit8 v11, v11, -0x1

    move v2, v7

    move-object/from16 v5, v23

    move/from16 v8, v24

    move-object/from16 v3, v27

    move/from16 v4, v28

    move/from16 v7, p1

    goto/16 :goto_4

    :goto_12
    move/from16 v11, v20

    move/from16 v0, v22

    :goto_13
    if-eqz v18, :cond_1a

    return-object v23

    :cond_1a
    new-instance v1, Lorg/eclipse/jdt/internal/formatter/linewrap/WrapExecutor$WrapResult;

    const/4 v2, -0x1

    if-ne v11, v2, :cond_1b

    move-object/from16 v5, v23

    goto :goto_14

    :cond_1b
    new-instance v5, Lorg/eclipse/jdt/internal/formatter/linewrap/WrapExecutor$WrapInfo;

    invoke-direct {v5, v11, v0}, Lorg/eclipse/jdt/internal/formatter/linewrap/WrapExecutor$WrapInfo;-><init>(II)V

    :goto_14
    invoke-direct {v1, v14, v15, v9, v5}, Lorg/eclipse/jdt/internal/formatter/linewrap/WrapExecutor$WrapResult;-><init>(DILorg/eclipse/jdt/internal/formatter/linewrap/WrapExecutor$WrapInfo;)V

    return-object v1
.end method

.method private getPenalty(Lorg/eclipse/jdt/internal/formatter/Token$WrapPolicy;)D
    .locals 4

    iget v0, p1, Lorg/eclipse/jdt/internal/formatter/Token$WrapPolicy;->structureDepth:I

    int-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->exp(D)D

    move-result-wide v0

    iget p1, p1, Lorg/eclipse/jdt/internal/formatter/Token$WrapPolicy;->penaltyMultiplier:F

    float-to-double v2, p1

    mul-double/2addr v0, v2

    return-wide v0
.end method

.method private getWrapPenalty(IIIILorg/eclipse/jdt/internal/formatter/linewrap/WrapExecutor$WrapResult;)D
    .locals 17

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p3

    move-object/from16 v3, p5

    iget-object v4, v0, Lorg/eclipse/jdt/internal/formatter/linewrap/WrapExecutor;->tm:Lorg/eclipse/jdt/internal/formatter/TokenManager;

    invoke-virtual {v4}, Lorg/eclipse/jdt/internal/formatter/TokenManager;->size()I

    move-result v4

    if-ge v2, v4, :cond_1

    iget-object v4, v0, Lorg/eclipse/jdt/internal/formatter/linewrap/WrapExecutor;->tm:Lorg/eclipse/jdt/internal/formatter/TokenManager;

    invoke-virtual {v4, v2}, Lorg/eclipse/jdt/internal/formatter/TokenManager;->get(I)Lorg/eclipse/jdt/internal/formatter/Token;

    move-result-object v4

    invoke-virtual {v4}, Lorg/eclipse/jdt/internal/formatter/Token;->getWrapPolicy()Lorg/eclipse/jdt/internal/formatter/Token$WrapPolicy;

    move-result-object v5

    if-gez p4, :cond_0

    iget-object v6, v0, Lorg/eclipse/jdt/internal/formatter/linewrap/WrapExecutor;->tm:Lorg/eclipse/jdt/internal/formatter/TokenManager;

    invoke-virtual {v6, v2}, Lorg/eclipse/jdt/internal/formatter/TokenManager;->get(I)Lorg/eclipse/jdt/internal/formatter/Token;

    move-result-object v6

    invoke-virtual {v0, v6}, Lorg/eclipse/jdt/internal/formatter/linewrap/WrapExecutor;->getWrapIndent(Lorg/eclipse/jdt/internal/formatter/Token;)I

    move-result v6

    goto :goto_0

    :cond_0
    move/from16 v6, p4

    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    move/from16 v6, p4

    move-object v5, v4

    :goto_0
    const-wide/16 v7, 0x0

    if-eqz v4, :cond_2

    invoke-virtual {v4}, Lorg/eclipse/jdt/internal/formatter/Token;->isWrappable()Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-direct {v0, v5}, Lorg/eclipse/jdt/internal/formatter/linewrap/WrapExecutor;->getPenalty(Lorg/eclipse/jdt/internal/formatter/Token$WrapPolicy;)D

    move-result-wide v9

    move/from16 v11, p2

    goto :goto_1

    :cond_2
    move/from16 v11, p2

    move-wide v9, v7

    :goto_1
    if-le v6, v11, :cond_3

    const-wide/high16 v11, 0x3ff3000000000000L    # 1.1875

    mul-double/2addr v9, v11

    :cond_3
    iget-object v6, v0, Lorg/eclipse/jdt/internal/formatter/linewrap/WrapExecutor;->tm:Lorg/eclipse/jdt/internal/formatter/TokenManager;

    invoke-virtual {v6, v1}, Lorg/eclipse/jdt/internal/formatter/TokenManager;->get(I)Lorg/eclipse/jdt/internal/formatter/Token;

    move-result-object v6

    invoke-virtual {v6}, Lorg/eclipse/jdt/internal/formatter/Token;->getWrapPolicy()Lorg/eclipse/jdt/internal/formatter/Token$WrapPolicy;

    move-result-object v11

    const/4 v12, 0x1

    if-eqz v4, :cond_6

    invoke-virtual {v4}, Lorg/eclipse/jdt/internal/formatter/Token;->isWrappable()Z

    move-result v13

    if-eqz v13, :cond_6

    invoke-virtual {v6}, Lorg/eclipse/jdt/internal/formatter/Token;->isWrappable()Z

    move-result v6

    if-eqz v6, :cond_6

    add-int/2addr v1, v12

    :goto_2
    if-lt v1, v2, :cond_4

    goto :goto_3

    :cond_4
    iget-object v6, v0, Lorg/eclipse/jdt/internal/formatter/linewrap/WrapExecutor;->tm:Lorg/eclipse/jdt/internal/formatter/TokenManager;

    invoke-virtual {v6, v1}, Lorg/eclipse/jdt/internal/formatter/TokenManager;->get(I)Lorg/eclipse/jdt/internal/formatter/Token;

    move-result-object v6

    invoke-virtual {v6}, Lorg/eclipse/jdt/internal/formatter/Token;->getWrapPolicy()Lorg/eclipse/jdt/internal/formatter/Token$WrapPolicy;

    move-result-object v6

    if-eqz v6, :cond_5

    iget v13, v6, Lorg/eclipse/jdt/internal/formatter/Token$WrapPolicy;->structureDepth:I

    iget v14, v11, Lorg/eclipse/jdt/internal/formatter/Token$WrapPolicy;->structureDepth:I

    if-ge v13, v14, :cond_5

    iget v14, v5, Lorg/eclipse/jdt/internal/formatter/Token$WrapPolicy;->structureDepth:I

    if-ge v13, v14, :cond_5

    invoke-direct {v0, v6}, Lorg/eclipse/jdt/internal/formatter/linewrap/WrapExecutor;->getPenalty(Lorg/eclipse/jdt/internal/formatter/Token$WrapPolicy;)D

    move-result-wide v13

    const-wide/high16 v15, 0x3ff4000000000000L    # 1.25

    mul-double/2addr v13, v15

    add-double/2addr v9, v13

    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_6
    :goto_3
    iget-object v1, v3, Lorg/eclipse/jdt/internal/formatter/linewrap/WrapExecutor$WrapResult;->nextWrap:Lorg/eclipse/jdt/internal/formatter/linewrap/WrapExecutor$WrapInfo;

    if-eqz v4, :cond_7

    invoke-virtual {v4}, Lorg/eclipse/jdt/internal/formatter/Token;->isWrappable()Z

    move-result v2

    if-eqz v2, :cond_7

    if-eqz v11, :cond_8

    iget v2, v5, Lorg/eclipse/jdt/internal/formatter/Token$WrapPolicy;->structureDepth:I

    iget v4, v11, Lorg/eclipse/jdt/internal/formatter/Token$WrapPolicy;->structureDepth:I

    if-lt v2, v4, :cond_7

    goto :goto_4

    :cond_7
    const/4 v12, 0x0

    :cond_8
    :goto_4
    move-wide v13, v7

    :goto_5
    if-eqz v12, :cond_d

    if-nez v1, :cond_9

    goto :goto_7

    :cond_9
    iget-object v2, v0, Lorg/eclipse/jdt/internal/formatter/linewrap/WrapExecutor;->tm:Lorg/eclipse/jdt/internal/formatter/TokenManager;

    iget v4, v1, Lorg/eclipse/jdt/internal/formatter/linewrap/WrapExecutor$WrapInfo;->wrapTokenIndex:I

    invoke-virtual {v2, v4}, Lorg/eclipse/jdt/internal/formatter/TokenManager;->get(I)Lorg/eclipse/jdt/internal/formatter/Token;

    move-result-object v2

    invoke-virtual {v2}, Lorg/eclipse/jdt/internal/formatter/Token;->getWrapPolicy()Lorg/eclipse/jdt/internal/formatter/Token$WrapPolicy;

    move-result-object v2

    iget v4, v2, Lorg/eclipse/jdt/internal/formatter/Token$WrapPolicy;->wrapParentIndex:I

    iget v6, v5, Lorg/eclipse/jdt/internal/formatter/Token$WrapPolicy;->wrapParentIndex:I

    if-eq v4, v6, :cond_c

    cmpl-double v4, v13, v7

    if-eqz v4, :cond_a

    iget-boolean v4, v5, Lorg/eclipse/jdt/internal/formatter/Token$WrapPolicy;->isFirstInGroup:Z

    if-nez v4, :cond_a

    goto :goto_6

    :cond_a
    iget v4, v2, Lorg/eclipse/jdt/internal/formatter/Token$WrapPolicy;->structureDepth:I

    iget v6, v5, Lorg/eclipse/jdt/internal/formatter/Token$WrapPolicy;->structureDepth:I

    if-gt v4, v6, :cond_b

    goto :goto_7

    :cond_b
    invoke-direct {v0, v2}, Lorg/eclipse/jdt/internal/formatter/linewrap/WrapExecutor;->getPenalty(Lorg/eclipse/jdt/internal/formatter/Token$WrapPolicy;)D

    move-result-wide v7

    invoke-static {v13, v14, v7, v8}, Ljava/lang/Math;->max(DD)D

    move-result-wide v13

    iget-object v2, v0, Lorg/eclipse/jdt/internal/formatter/linewrap/WrapExecutor;->wrapSearchResults:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/eclipse/jdt/internal/formatter/linewrap/WrapExecutor$WrapResult;

    iget-object v1, v1, Lorg/eclipse/jdt/internal/formatter/linewrap/WrapExecutor$WrapResult;->nextWrap:Lorg/eclipse/jdt/internal/formatter/linewrap/WrapExecutor$WrapInfo;

    const-wide/16 v7, 0x0

    goto :goto_5

    :cond_c
    :goto_6
    const-wide v1, 0x3ff0400000000000L    # 1.015625

    mul-double/2addr v13, v1

    sub-double/2addr v9, v13

    :cond_d
    :goto_7
    iget-wide v1, v3, Lorg/eclipse/jdt/internal/formatter/linewrap/WrapExecutor$WrapResult;->penalty:D

    add-double/2addr v9, v1

    return-wide v9
.end method

.method private toArray(Ljava/util/List;)[I
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)[I"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object p1, Lorg/eclipse/jdt/internal/formatter/linewrap/WrapExecutor;->EMPTY_ARRAY:[I

    return-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [I

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v1, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_1

    return-object v0

    :cond_1
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    add-int/lit8 v3, v1, 0x1

    aput v2, v0, v1

    move v1, v3

    goto :goto_0
.end method


# virtual methods
.method public checkForceWrap(Lorg/eclipse/jdt/internal/formatter/Token;II)Z
    .locals 2

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/formatter/Token;->isWrappable()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/formatter/linewrap/WrapExecutor;->options:Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;

    iget-boolean v0, v0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->wrap_outer_expressions_when_nested:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/internal/formatter/linewrap/WrapExecutor;->getWrapIndent(Lorg/eclipse/jdt/internal/formatter/Token;)I

    move-result p1

    if-lt p1, p3, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lorg/eclipse/jdt/internal/formatter/linewrap/WrapExecutor;->tm:Lorg/eclipse/jdt/internal/formatter/TokenManager;

    const/4 p3, 0x1

    invoke-virtual {p1, p2, v1, p3}, Lorg/eclipse/jdt/internal/formatter/TokenManager;->findFirstTokenInLine(IZZ)I

    move-result p2

    invoke-virtual {p1, p2}, Lorg/eclipse/jdt/internal/formatter/TokenManager;->get(I)Lorg/eclipse/jdt/internal/formatter/Token;

    move-result-object p1

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/formatter/Token;->getWrapPolicy()Lorg/eclipse/jdt/internal/formatter/Token$WrapPolicy;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p1, Lorg/eclipse/jdt/internal/formatter/Token$WrapPolicy;->wrapMode:Lorg/eclipse/jdt/internal/formatter/Token$WrapMode;

    sget-object p2, Lorg/eclipse/jdt/internal/formatter/Token$WrapMode;->BLOCK_INDENT:Lorg/eclipse/jdt/internal/formatter/Token$WrapMode;

    if-eq p1, p2, :cond_1

    return p3

    :cond_1
    :goto_0
    return v1
.end method

.method public executeWraps()V
    .locals 3

    iget-object v0, p0, Lorg/eclipse/jdt/internal/formatter/linewrap/WrapExecutor;->tm:Lorg/eclipse/jdt/internal/formatter/TokenManager;

    new-instance v1, Lorg/eclipse/jdt/internal/formatter/linewrap/WrapExecutor$WrapsApplier;

    invoke-direct {v1, p0}, Lorg/eclipse/jdt/internal/formatter/linewrap/WrapExecutor$WrapsApplier;-><init>(Lorg/eclipse/jdt/internal/formatter/linewrap/WrapExecutor;)V

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Lorg/eclipse/jdt/internal/formatter/TokenManager;->traverse(ILorg/eclipse/jdt/internal/formatter/TokenTraverser;)I

    iget-object v0, p0, Lorg/eclipse/jdt/internal/formatter/linewrap/WrapExecutor;->tm:Lorg/eclipse/jdt/internal/formatter/TokenManager;

    new-instance v1, Lorg/eclipse/jdt/internal/formatter/linewrap/WrapExecutor$NLSTagHandler;

    invoke-direct {v1, p0}, Lorg/eclipse/jdt/internal/formatter/linewrap/WrapExecutor$NLSTagHandler;-><init>(Lorg/eclipse/jdt/internal/formatter/linewrap/WrapExecutor;)V

    invoke-virtual {v0, v2, v1}, Lorg/eclipse/jdt/internal/formatter/TokenManager;->traverse(ILorg/eclipse/jdt/internal/formatter/TokenTraverser;)I

    return-void
.end method

.method public findWrapsCached(II)Lorg/eclipse/jdt/internal/formatter/linewrap/WrapExecutor$WrapResult;
    .locals 8

    iget-object v0, p0, Lorg/eclipse/jdt/internal/formatter/linewrap/WrapExecutor;->wrapInfoTemp:Lorg/eclipse/jdt/internal/formatter/linewrap/WrapExecutor$WrapInfo;

    iput p1, v0, Lorg/eclipse/jdt/internal/formatter/linewrap/WrapExecutor$WrapInfo;->wrapTokenIndex:I

    iput p2, v0, Lorg/eclipse/jdt/internal/formatter/linewrap/WrapExecutor$WrapInfo;->indent:I

    iget-object v1, p0, Lorg/eclipse/jdt/internal/formatter/linewrap/WrapExecutor;->wrapSearchResults:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jdt/internal/formatter/linewrap/WrapExecutor$WrapResult;

    const/16 v1, 0x32

    move-object v2, v0

    :goto_0
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v2, :cond_2

    iget-object v2, v2, Lorg/eclipse/jdt/internal/formatter/linewrap/WrapExecutor$WrapResult;->nextWrap:Lorg/eclipse/jdt/internal/formatter/linewrap/WrapExecutor$WrapInfo;

    if-eqz v2, :cond_2

    add-int/lit8 v6, v1, -0x1

    if-gtz v1, :cond_0

    goto :goto_1

    :cond_0
    iget-object v1, p0, Lorg/eclipse/jdt/internal/formatter/linewrap/WrapExecutor;->tm:Lorg/eclipse/jdt/internal/formatter/TokenManager;

    iget v7, v2, Lorg/eclipse/jdt/internal/formatter/linewrap/WrapExecutor$WrapInfo;->wrapTokenIndex:I

    invoke-virtual {v1, v7}, Lorg/eclipse/jdt/internal/formatter/TokenManager;->get(I)Lorg/eclipse/jdt/internal/formatter/Token;

    move-result-object v1

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/formatter/Token;->getWrapPolicy()Lorg/eclipse/jdt/internal/formatter/Token$WrapPolicy;

    move-result-object v7

    iget v7, v7, Lorg/eclipse/jdt/internal/formatter/Token$WrapPolicy;->wrapParentIndex:I

    if-ge v7, p1, :cond_1

    invoke-virtual {p0, v1}, Lorg/eclipse/jdt/internal/formatter/linewrap/WrapExecutor;->getWrapIndent(Lorg/eclipse/jdt/internal/formatter/Token;)I

    move-result v1

    iget v7, v2, Lorg/eclipse/jdt/internal/formatter/linewrap/WrapExecutor$WrapInfo;->indent:I

    if-eq v1, v7, :cond_1

    move v1, v3

    move-object v0, v4

    goto :goto_2

    :cond_1
    iget-object v1, p0, Lorg/eclipse/jdt/internal/formatter/linewrap/WrapExecutor;->wrapSearchResults:Ljava/util/HashMap;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lorg/eclipse/jdt/internal/formatter/linewrap/WrapExecutor$WrapResult;

    move v1, v6

    goto :goto_0

    :cond_2
    :goto_1
    move v1, v5

    :goto_2
    if-eqz v0, :cond_3

    return-object v0

    :cond_3
    iget-object v0, p0, Lorg/eclipse/jdt/internal/formatter/linewrap/WrapExecutor;->wrapSearchStack:Ljava/util/ArrayDeque;

    new-instance v2, Lorg/eclipse/jdt/internal/formatter/linewrap/WrapExecutor$WrapInfo;

    invoke-direct {v2, p1, p2}, Lorg/eclipse/jdt/internal/formatter/linewrap/WrapExecutor$WrapInfo;-><init>(II)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayDeque;->push(Ljava/lang/Object;)V

    iget-object v0, p0, Lorg/eclipse/jdt/internal/formatter/linewrap/WrapExecutor;->wrapSearchStack:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->size()I

    move-result v0

    if-le v0, v5, :cond_4

    if-eqz v1, :cond_4

    return-object v4

    :cond_4
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :cond_5
    :goto_3
    iget-object v1, p0, Lorg/eclipse/jdt/internal/formatter/linewrap/WrapExecutor;->wrapSearchStack:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/eclipse/jdt/internal/formatter/linewrap/WrapExecutor$WrapInfo;

    iget-object v2, p0, Lorg/eclipse/jdt/internal/formatter/linewrap/WrapExecutor;->tm:Lorg/eclipse/jdt/internal/formatter/TokenManager;

    iget v4, v1, Lorg/eclipse/jdt/internal/formatter/linewrap/WrapExecutor$WrapInfo;->wrapTokenIndex:I

    invoke-virtual {v2, v4}, Lorg/eclipse/jdt/internal/formatter/TokenManager;->get(I)Lorg/eclipse/jdt/internal/formatter/Token;

    move-result-object v2

    invoke-virtual {v2, v5}, Lorg/eclipse/jdt/internal/formatter/Token;->setWrapped(Z)V

    iget v4, v1, Lorg/eclipse/jdt/internal/formatter/linewrap/WrapExecutor$WrapInfo;->wrapTokenIndex:I

    iget v6, v1, Lorg/eclipse/jdt/internal/formatter/linewrap/WrapExecutor$WrapInfo;->indent:I

    invoke-direct {p0, v4, v6}, Lorg/eclipse/jdt/internal/formatter/linewrap/WrapExecutor;->findWraps(II)Lorg/eclipse/jdt/internal/formatter/linewrap/WrapExecutor$WrapResult;

    move-result-object v4

    if-eqz v4, :cond_6

    invoke-virtual {v2, v3}, Lorg/eclipse/jdt/internal/formatter/Token;->setWrapped(Z)V

    iget-object v2, p0, Lorg/eclipse/jdt/internal/formatter/linewrap/WrapExecutor;->wrapSearchStack:Ljava/util/ArrayDeque;

    invoke-virtual {v2}, Ljava/util/ArrayDeque;->pop()Ljava/lang/Object;

    iget-object v2, p0, Lorg/eclipse/jdt/internal/formatter/linewrap/WrapExecutor;->wrapSearchResults:Ljava/util/HashMap;

    invoke-virtual {v2, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget v2, v1, Lorg/eclipse/jdt/internal/formatter/linewrap/WrapExecutor$WrapInfo;->wrapTokenIndex:I

    if-ne v2, p1, :cond_5

    iget v1, v1, Lorg/eclipse/jdt/internal/formatter/linewrap/WrapExecutor$WrapInfo;->indent:I

    if-ne v1, p2, :cond_5

    return-object v4

    :cond_6
    :goto_4
    iget-object v2, p0, Lorg/eclipse/jdt/internal/formatter/linewrap/WrapExecutor;->wrapSearchStack:Ljava/util/ArrayDeque;

    invoke-virtual {v2}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v1, :cond_8

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_5
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_7

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    goto :goto_3

    :cond_7
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/eclipse/jdt/internal/formatter/linewrap/WrapExecutor$WrapInfo;

    iget-object v4, p0, Lorg/eclipse/jdt/internal/formatter/linewrap/WrapExecutor;->wrapSearchStack:Ljava/util/ArrayDeque;

    invoke-virtual {v4, v1}, Ljava/util/ArrayDeque;->push(Ljava/lang/Object;)V

    goto :goto_5

    :cond_8
    iget-object v2, p0, Lorg/eclipse/jdt/internal/formatter/linewrap/WrapExecutor;->wrapSearchStack:Ljava/util/ArrayDeque;

    invoke-virtual {v2}, Ljava/util/ArrayDeque;->pop()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/eclipse/jdt/internal/formatter/linewrap/WrapExecutor$WrapInfo;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4
.end method

.method public getWrapIndent(Lorg/eclipse/jdt/internal/formatter/Token;)I
    .locals 5

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/formatter/Token;->getWrapPolicy()Lorg/eclipse/jdt/internal/formatter/Token$WrapPolicy;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/formatter/Token;->getIndent()I

    move-result p1

    return p1

    :cond_0
    sget-object p1, Lorg/eclipse/jdt/internal/formatter/Token$WrapPolicy;->FORCE_FIRST_COLUMN:Lorg/eclipse/jdt/internal/formatter/Token$WrapPolicy;

    if-ne v0, p1, :cond_1

    const/4 p1, 0x0

    return p1

    :cond_1
    iget-object p1, p0, Lorg/eclipse/jdt/internal/formatter/linewrap/WrapExecutor;->tm:Lorg/eclipse/jdt/internal/formatter/TokenManager;

    iget v1, v0, Lorg/eclipse/jdt/internal/formatter/Token$WrapPolicy;->wrapParentIndex:I

    invoke-virtual {p1, v1}, Lorg/eclipse/jdt/internal/formatter/TokenManager;->get(I)Lorg/eclipse/jdt/internal/formatter/Token;

    move-result-object p1

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/formatter/Token;->getIndent()I

    move-result v1

    iget-boolean v2, v0, Lorg/eclipse/jdt/internal/formatter/Token$WrapPolicy;->indentOnColumn:Z

    const/4 v3, 0x1

    if-eqz v2, :cond_3

    iget-object v1, p0, Lorg/eclipse/jdt/internal/formatter/linewrap/WrapExecutor;->tm:Lorg/eclipse/jdt/internal/formatter/TokenManager;

    iget v2, v0, Lorg/eclipse/jdt/internal/formatter/Token$WrapPolicy;->wrapParentIndex:I

    invoke-virtual {v1, v2}, Lorg/eclipse/jdt/internal/formatter/TokenManager;->getPositionInLine(I)I

    move-result v1

    iget-object v2, p0, Lorg/eclipse/jdt/internal/formatter/linewrap/WrapExecutor;->tm:Lorg/eclipse/jdt/internal/formatter/TokenManager;

    invoke-virtual {v2, p1, v1}, Lorg/eclipse/jdt/internal/formatter/TokenManager;->getLength(Lorg/eclipse/jdt/internal/formatter/Token;I)I

    move-result v2

    add-int/2addr v1, v2

    iget-object v2, p0, Lorg/eclipse/jdt/internal/formatter/linewrap/WrapExecutor;->tm:Lorg/eclipse/jdt/internal/formatter/TokenManager;

    iget v4, v0, Lorg/eclipse/jdt/internal/formatter/Token$WrapPolicy;->wrapParentIndex:I

    add-int/2addr v4, v3

    invoke-virtual {v2, v4}, Lorg/eclipse/jdt/internal/formatter/TokenManager;->get(I)Lorg/eclipse/jdt/internal/formatter/Token;

    move-result-object v2

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/formatter/Token;->isSpaceAfter()Z

    move-result p1

    if-nez p1, :cond_2

    invoke-virtual {v2}, Lorg/eclipse/jdt/internal/formatter/Token;->isSpaceBefore()Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-virtual {v2}, Lorg/eclipse/jdt/internal/formatter/Token;->isComment()Z

    move-result p1

    if-nez p1, :cond_3

    :cond_2
    add-int/lit8 v1, v1, 0x1

    :cond_3
    iget p1, v0, Lorg/eclipse/jdt/internal/formatter/Token$WrapPolicy;->extraIndent:I

    add-int/2addr v1, p1

    iget-object p1, p0, Lorg/eclipse/jdt/internal/formatter/linewrap/WrapExecutor;->tm:Lorg/eclipse/jdt/internal/formatter/TokenManager;

    invoke-virtual {p1, v1, v3}, Lorg/eclipse/jdt/internal/formatter/TokenManager;->toIndent(IZ)I

    move-result p1

    return p1
.end method

.method public handleOnColumnIndent(ILorg/eclipse/jdt/internal/formatter/Token$WrapPolicy;)V
    .locals 3

    if-eqz p2, :cond_2

    iget-boolean v0, p2, Lorg/eclipse/jdt/internal/formatter/Token$WrapPolicy;->indentOnColumn:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p2, Lorg/eclipse/jdt/internal/formatter/Token$WrapPolicy;->isFirstInGroup:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lorg/eclipse/jdt/internal/formatter/linewrap/WrapExecutor;->options:Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;

    iget v1, v0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->tab_char:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    iget-boolean v0, v0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatterOptions;->use_tabs_only_for_leading_indentations:Z

    if-nez v0, :cond_2

    sub-int/2addr p1, v2

    :goto_0
    if-gez p1, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/formatter/linewrap/WrapExecutor;->tm:Lorg/eclipse/jdt/internal/formatter/TokenManager;

    invoke-virtual {v0, p1}, Lorg/eclipse/jdt/internal/formatter/TokenManager;->get(I)Lorg/eclipse/jdt/internal/formatter/Token;

    move-result-object v0

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/formatter/Token;->getWrapPolicy()Lorg/eclipse/jdt/internal/formatter/Token$WrapPolicy;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-boolean v2, v1, Lorg/eclipse/jdt/internal/formatter/Token$WrapPolicy;->isFirstInGroup:Z

    if-eqz v2, :cond_1

    iget v1, v1, Lorg/eclipse/jdt/internal/formatter/Token$WrapPolicy;->wrapParentIndex:I

    iget v2, p2, Lorg/eclipse/jdt/internal/formatter/Token$WrapPolicy;->wrapParentIndex:I

    if-ne v1, v2, :cond_1

    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/internal/formatter/linewrap/WrapExecutor;->getWrapIndent(Lorg/eclipse/jdt/internal/formatter/Token;)I

    move-result p1

    invoke-virtual {v0, p1}, Lorg/eclipse/jdt/internal/formatter/Token;->setAlign(I)V

    goto :goto_1

    :cond_1
    add-int/lit8 p1, p1, -0x1

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method
