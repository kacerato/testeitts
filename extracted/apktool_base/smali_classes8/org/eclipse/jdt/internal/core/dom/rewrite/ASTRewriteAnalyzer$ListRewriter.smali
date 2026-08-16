.class Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer$ListRewriter;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ListRewriter"
.end annotation


# instance fields
.field protected constantSeparator:Ljava/lang/String;

.field protected list:[Lorg/eclipse/jdt/internal/core/dom/rewrite/RewriteEvent;

.field protected startPos:I

.field final synthetic this$0:Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;


# direct methods
.method public constructor <init>(Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;)V
    .locals 0

    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer$ListRewriter;->this$0:Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private insertAfterSeparator(Lorg/eclipse/jdt/core/dom/ASTNode;)Z
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer$ListRewriter;->this$0:Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;

    invoke-virtual {v0, p1}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->isInsertBoundToPrevious(Lorg/eclipse/jdt/core/dom/ASTNode;)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    return p1
.end method

.method private lineCommentSwallowsActualCode(I)Z
    .locals 5

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer$ListRewriter;->this$0:Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->getLineCommentEndOffsets()Lorg/eclipse/jdt/internal/core/dom/rewrite/LineCommentEndOffsets;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/eclipse/jdt/internal/core/dom/rewrite/LineCommentEndOffsets;->isEndOfLineComment(I)Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    iget-object p1, p0, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer$ListRewriter;->list:[Lorg/eclipse/jdt/internal/core/dom/rewrite/RewriteEvent;

    array-length v1, p1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    aget-object p1, p1, v1

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/core/dom/rewrite/RewriteEvent;->getOriginalValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/eclipse/jdt/core/dom/ASTNode;

    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer$ListRewriter;->getEndOfNode(Lorg/eclipse/jdt/core/dom/ASTNode;)I

    move-result p1

    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer$ListRewriter;->this$0:Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->getLineInformation()Lorg/eclipse/jdt/internal/core/dom/rewrite/LineInformation;

    move-result-object v1

    :try_start_0
    invoke-virtual {v1, p1}, Lorg/eclipse/jdt/internal/core/dom/rewrite/LineInformation;->getLineOfOffset(I)I

    move-result v3

    iget-object v4, p0, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer$ListRewriter;->this$0:Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;

    invoke-virtual {v4}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->getScanner()Lorg/eclipse/jdt/internal/core/dom/rewrite/TokenScanner;

    move-result-object v4

    invoke-virtual {v4, p1, v0}, Lorg/eclipse/jdt/internal/core/dom/rewrite/TokenScanner;->getNextStartOffset(IZ)I

    move-result p1

    invoke-virtual {v1, p1}, Lorg/eclipse/jdt/internal/core/dom/rewrite/LineInformation;->getLineOfOffset(I)I

    move-result p1
    :try_end_0
    .catch Lorg/eclipse/core/runtime/CoreException; {:try_start_0 .. :try_end_0} :catch_0

    if-ne v3, p1, :cond_0

    return v2

    :catch_0
    :cond_0
    return v0
.end method

.method private rewriteList(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;Ljava/lang/String;Ljava/lang/String;I)I
    .locals 27

    move-object/from16 v0, p0

    move-object/from16 v1, p4

    move/from16 v2, p5

    .line 3
    iput v2, v0, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer$ListRewriter;->startPos:I

    .line 4
    iget-object v3, v0, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer$ListRewriter;->this$0:Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    invoke-virtual {v3, v4, v5}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->getEvent(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;)Lorg/eclipse/jdt/internal/core/dom/rewrite/RewriteEvent;

    move-result-object v3

    invoke-virtual {v3}, Lorg/eclipse/jdt/internal/core/dom/rewrite/RewriteEvent;->getChildren()[Lorg/eclipse/jdt/internal/core/dom/rewrite/RewriteEvent;

    move-result-object v3

    iput-object v3, v0, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer$ListRewriter;->list:[Lorg/eclipse/jdt/internal/core/dom/rewrite/RewriteEvent;

    .line 5
    array-length v3, v3

    if-nez v3, :cond_0

    .line 6
    iget v1, v0, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer$ListRewriter;->startPos:I

    return v1

    :cond_0
    const/4 v4, -0x1

    const/4 v5, 0x0

    move v7, v4

    move v8, v7

    move v9, v8

    move v6, v5

    :goto_0
    const/4 v11, 0x1

    if-lt v6, v3, :cond_1f

    if-ne v7, v4, :cond_1

    move v12, v11

    goto :goto_1

    :cond_1
    move v12, v5

    :goto_1
    if-eqz v12, :cond_3

    .line 7
    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_2

    .line 8
    iget-object v6, v0, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer$ListRewriter;->this$0:Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;

    iget-object v7, v0, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer$ListRewriter;->list:[Lorg/eclipse/jdt/internal/core/dom/rewrite/RewriteEvent;

    aget-object v7, v7, v5

    invoke-virtual {v6, v7}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->getEditGroup(Lorg/eclipse/jdt/internal/core/dom/rewrite/RewriteEvent;)Lorg/eclipse/text/edits/TextEditGroup;

    move-result-object v6

    .line 9
    iget-object v7, v0, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer$ListRewriter;->this$0:Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;

    move-object/from16 v13, p3

    invoke-virtual {v7, v2, v13, v6}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->doTextInsert(ILjava/lang/String;Lorg/eclipse/text/edits/TextEditGroup;)V

    :cond_2
    move v7, v2

    :cond_3
    if-ne v8, v4, :cond_4

    goto :goto_2

    :cond_4
    move v2, v7

    :goto_2
    move v4, v2

    move v6, v5

    move v13, v6

    move v7, v11

    :goto_3
    if-lt v6, v3, :cond_5

    return v2

    .line 10
    :cond_5
    iget-object v14, v0, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer$ListRewriter;->list:[Lorg/eclipse/jdt/internal/core/dom/rewrite/RewriteEvent;

    aget-object v14, v14, v6

    .line 11
    invoke-virtual {v14}, Lorg/eclipse/jdt/internal/core/dom/rewrite/RewriteEvent;->getChangeKind()I

    move-result v15

    add-int/lit8 v5, v6, 0x1

    if-ne v15, v11, :cond_d

    .line 12
    iget-object v10, v0, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer$ListRewriter;->this$0:Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;

    invoke-virtual {v10, v14}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->getEditGroup(Lorg/eclipse/jdt/internal/core/dom/rewrite/RewriteEvent;)Lorg/eclipse/text/edits/TextEditGroup;

    move-result-object v10

    .line 13
    invoke-virtual {v14}, Lorg/eclipse/jdt/internal/core/dom/rewrite/RewriteEvent;->getNewValue()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lorg/eclipse/jdt/core/dom/ASTNode;

    if-nez v7, :cond_6

    .line 14
    iget-object v7, v0, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer$ListRewriter;->this$0:Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;

    add-int/lit8 v11, v6, -0x1

    invoke-virtual {v0, v11}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer$ListRewriter;->getSeparatorString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v7, v2, v11, v10}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->doTextInsert(ILjava/lang/String;Lorg/eclipse/text/edits/TextEditGroup;)V

    const/4 v7, 0x1

    const/4 v11, 0x1

    :cond_6
    if-eq v7, v11, :cond_7

    .line 15
    invoke-direct {v0, v14}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer$ListRewriter;->insertAfterSeparator(Lorg/eclipse/jdt/core/dom/ASTNode;)Z

    move-result v11

    if-eqz v11, :cond_8

    :cond_7
    move-object v11, v14

    const/4 v14, 0x2

    goto :goto_4

    .line 16
    :cond_8
    iget-object v11, v0, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer$ListRewriter;->this$0:Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;

    add-int/lit8 v13, v6, -0x1

    invoke-virtual {v0, v13}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer$ListRewriter;->getSeparatorString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v11, v4, v13, v10}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->doTextInsert(ILjava/lang/String;Lorg/eclipse/text/edits/TextEditGroup;)V

    .line 17
    iget-object v13, v0, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer$ListRewriter;->this$0:Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;

    invoke-virtual {v0, v6}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer$ListRewriter;->getNodeIndent(I)I

    move-result v16

    const/16 v17, 0x1

    move-object v11, v14

    move v14, v4

    move v6, v15

    move-object v15, v11

    move-object/from16 v18, v10

    invoke-virtual/range {v13 .. v18}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->doTextInsert(ILorg/eclipse/jdt/core/dom/ASTNode;IZLorg/eclipse/text/edits/TextEditGroup;)V

    move/from16 v26, v7

    move v7, v6

    move/from16 v6, v26

    goto :goto_6

    :goto_4
    if-ne v7, v14, :cond_9

    .line 18
    invoke-virtual {v0, v13, v2, v6, v10}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer$ListRewriter;->updateIndent(IIILorg/eclipse/text/edits/TextEditGroup;)V

    .line 19
    :cond_9
    iget-object v13, v0, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer$ListRewriter;->this$0:Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;

    invoke-virtual {v0, v6}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer$ListRewriter;->getNodeIndent(I)I

    move-result v16

    const/16 v17, 0x1

    move v14, v2

    move v7, v15

    move-object v15, v11

    move-object/from16 v18, v10

    invoke-virtual/range {v13 .. v18}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->doTextInsert(ILorg/eclipse/jdt/core/dom/ASTNode;IZLorg/eclipse/text/edits/TextEditGroup;)V

    if-eq v6, v8, :cond_b

    .line 20
    iget-object v11, v0, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer$ListRewriter;->list:[Lorg/eclipse/jdt/internal/core/dom/rewrite/RewriteEvent;

    aget-object v11, v11, v5

    invoke-virtual {v11}, Lorg/eclipse/jdt/internal/core/dom/rewrite/RewriteEvent;->getChangeKind()I

    move-result v11

    const/4 v13, 0x1

    if-eq v11, v13, :cond_a

    .line 21
    iget-object v11, v0, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer$ListRewriter;->this$0:Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;

    invoke-virtual {v0, v6}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer$ListRewriter;->getSeparatorString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v11, v2, v6, v10}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->doTextInsert(ILjava/lang/String;Lorg/eclipse/text/edits/TextEditGroup;)V

    goto :goto_5

    :cond_a
    const/4 v6, 0x0

    goto :goto_6

    :cond_b
    :goto_5
    const/4 v6, 0x1

    :goto_6
    if-eqz v12, :cond_c

    if-eqz v1, :cond_c

    .line 22
    invoke-virtual/range {p4 .. p4}, Ljava/lang/String;->length()I

    move-result v11

    if-lez v11, :cond_c

    .line 23
    iget-object v11, v0, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer$ListRewriter;->this$0:Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;

    invoke-virtual {v11, v2, v1, v10}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->doTextInsert(ILjava/lang/String;Lorg/eclipse/text/edits/TextEditGroup;)V

    :cond_c
    move/from16 v16, v3

    move v3, v7

    move v1, v9

    move/from16 v18, v12

    const/4 v15, 0x0

    move v7, v6

    goto/16 :goto_12

    :cond_d
    move v11, v15

    const/4 v10, 0x2

    if-ne v11, v10, :cond_16

    .line 24
    invoke-virtual {v14}, Lorg/eclipse/jdt/internal/core/dom/rewrite/RewriteEvent;->getOriginalValue()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lorg/eclipse/jdt/core/dom/ASTNode;

    .line 25
    iget-object v15, v0, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer$ListRewriter;->this$0:Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;

    invoke-virtual {v15, v14}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->getEditGroup(Lorg/eclipse/jdt/internal/core/dom/rewrite/RewriteEvent;)Lorg/eclipse/text/edits/TextEditGroup;

    move-result-object v15

    .line 26
    invoke-virtual {v0, v10}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer$ListRewriter;->getEndOfNode(Lorg/eclipse/jdt/core/dom/ASTNode;)I

    move-result v1

    move/from16 v16, v3

    .line 27
    :try_start_0
    iget-object v3, v0, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer$ListRewriter;->this$0:Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;

    invoke-virtual {v3}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->getScanner()Lorg/eclipse/jdt/internal/core/dom/rewrite/TokenScanner;

    move-result-object v3
    :try_end_0
    .catch Lorg/eclipse/core/runtime/CoreException; {:try_start_0 .. :try_end_0} :catch_2

    move/from16 v17, v4

    .line 28
    :try_start_1
    iget-object v4, v0, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer$ListRewriter;->this$0:Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;

    invoke-virtual {v4, v10}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->getExtendedOffset(Lorg/eclipse/jdt/core/dom/ASTNode;)I

    move-result v4
    :try_end_1
    .catch Lorg/eclipse/core/runtime/CoreException; {:try_start_1 .. :try_end_1} :catch_1

    move/from16 v19, v9

    move/from16 v18, v12

    move/from16 v9, v17

    :goto_7
    const/4 v12, 0x0

    .line 29
    :try_start_2
    invoke-virtual {v3, v9, v12}, Lorg/eclipse/jdt/internal/core/dom/rewrite/TokenScanner;->readNext(IZ)I

    move-result v20

    invoke-static/range {v20 .. v20}, Lorg/eclipse/jdt/internal/core/dom/rewrite/TokenScanner;->isComment(I)Z

    move-result v20
    :try_end_2
    .catch Lorg/eclipse/core/runtime/CoreException; {:try_start_2 .. :try_end_2} :catch_0

    if-nez v20, :cond_e

    move/from16 v20, v11

    goto :goto_8

    :cond_e
    move/from16 v20, v11

    .line 30
    :try_start_3
    invoke-virtual {v3, v9, v12}, Lorg/eclipse/jdt/internal/core/dom/rewrite/TokenScanner;->getNextEndOffset(IZ)I

    move-result v11
    :try_end_3
    .catch Lorg/eclipse/core/runtime/CoreException; {:try_start_3 .. :try_end_3} :catch_3

    if-ge v11, v4, :cond_f

    move v9, v11

    move/from16 v11, v20

    goto :goto_7

    :cond_f
    :goto_8
    if-ge v2, v9, :cond_10

    move v2, v4

    :cond_10
    move v4, v9

    goto :goto_b

    :catch_0
    move/from16 v20, v11

    goto :goto_a

    :catch_1
    :goto_9
    move/from16 v19, v9

    move/from16 v20, v11

    move/from16 v18, v12

    goto :goto_a

    :catch_2
    move/from16 v17, v4

    goto :goto_9

    :catch_3
    :goto_a
    move/from16 v4, v17

    :goto_b
    if-le v6, v8, :cond_12

    const/4 v3, 0x2

    if-ne v7, v3, :cond_12

    .line 31
    iget-object v3, v0, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer$ListRewriter;->this$0:Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;

    sub-int v6, v2, v4

    invoke-virtual {v3, v4, v6, v15}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->doTextRemove(IILorg/eclipse/text/edits/TextEditGroup;)Lorg/eclipse/text/edits/TextEdit;

    .line 32
    iget-object v3, v0, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer$ListRewriter;->this$0:Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;

    sub-int v6, v1, v2

    invoke-virtual {v3, v2, v6, v10, v15}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->doTextRemoveAndVisit(IILorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/text/edits/TextEditGroup;)V

    .line 33
    invoke-direct {v0, v4}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer$ListRewriter;->lineCommentSwallowsActualCode(I)Z

    move-result v2

    if-eqz v2, :cond_11

    iget-object v2, v0, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer$ListRewriter;->this$0:Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;

    invoke-virtual {v2}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->getLineDelimiter()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v1, v3, v15}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->doTextInsert(ILjava/lang/String;Lorg/eclipse/text/edits/TextEditGroup;)V

    :cond_11
    move v2, v1

    move v4, v2

    move/from16 v1, v19

    move/from16 v3, v20

    :goto_c
    const/4 v15, 0x0

    goto/16 :goto_12

    :cond_12
    if-ge v6, v8, :cond_13

    .line 34
    invoke-virtual {v0, v13, v2, v6, v15}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer$ListRewriter;->updateIndent(IIILorg/eclipse/text/edits/TextEditGroup;)V

    .line 35
    :cond_13
    invoke-virtual {v0, v5, v1}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer$ListRewriter;->getStartOfNextNode(II)I

    move-result v3

    .line 36
    :try_start_4
    iget-object v4, v0, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer$ListRewriter;->this$0:Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;

    invoke-virtual {v4}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->getScanner()Lorg/eclipse/jdt/internal/core/dom/rewrite/TokenScanner;

    move-result-object v4

    const/4 v7, 0x0

    .line 37
    invoke-virtual {v4, v1, v7}, Lorg/eclipse/jdt/internal/core/dom/rewrite/TokenScanner;->readNext(IZ)I

    move-result v9

    .line 38
    invoke-static {v9}, Lorg/eclipse/jdt/internal/core/dom/rewrite/TokenScanner;->isComment(I)Z

    move-result v9

    if-eqz v9, :cond_14

    .line 39
    invoke-virtual {v4, v1, v7}, Lorg/eclipse/jdt/internal/core/dom/rewrite/TokenScanner;->getNextStartOffset(IZ)I

    move-result v4
    :try_end_4
    .catch Lorg/eclipse/core/runtime/CoreException; {:try_start_4 .. :try_end_4} :catch_4

    if-eq v3, v4, :cond_14

    move v3, v1

    .line 40
    :catch_4
    :cond_14
    iget-object v4, v0, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer$ListRewriter;->this$0:Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;

    sub-int v7, v1, v2

    invoke-virtual {v4, v14}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->getEditGroup(Lorg/eclipse/jdt/internal/core/dom/rewrite/RewriteEvent;)Lorg/eclipse/text/edits/TextEditGroup;

    move-result-object v9

    invoke-virtual {v4, v2, v7, v10, v9}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->doTextRemoveAndVisit(IILorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/text/edits/TextEditGroup;)V

    .line 41
    invoke-virtual {v0, v2, v6}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer$ListRewriter;->mustRemoveSeparator(II)Z

    move-result v2

    if-eqz v2, :cond_15

    .line 42
    iget-object v2, v0, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer$ListRewriter;->this$0:Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;

    sub-int v4, v3, v1

    invoke-virtual {v2, v1, v4, v15}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->doTextRemove(IILorg/eclipse/text/edits/TextEditGroup;)Lorg/eclipse/text/edits/TextEdit;

    :cond_15
    move v4, v1

    move v2, v3

    move/from16 v1, v19

    move/from16 v3, v20

    const/4 v7, 0x1

    goto :goto_c

    :cond_16
    move/from16 v16, v3

    move/from16 v17, v4

    move/from16 v19, v9

    move/from16 v20, v11

    move/from16 v18, v12

    const/4 v1, 0x4

    move/from16 v3, v20

    if-ne v3, v1, :cond_1a

    .line 43
    invoke-virtual {v14}, Lorg/eclipse/jdt/internal/core/dom/rewrite/RewriteEvent;->getOriginalValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/eclipse/jdt/core/dom/ASTNode;

    .line 44
    invoke-virtual {v0, v1}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer$ListRewriter;->getEndOfNode(Lorg/eclipse/jdt/core/dom/ASTNode;)I

    move-result v4

    .line 45
    iget-object v9, v0, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer$ListRewriter;->this$0:Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;

    invoke-virtual {v9, v14}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->getEditGroup(Lorg/eclipse/jdt/internal/core/dom/rewrite/RewriteEvent;)Lorg/eclipse/text/edits/TextEditGroup;

    move-result-object v9

    .line 46
    invoke-virtual {v14}, Lorg/eclipse/jdt/internal/core/dom/rewrite/RewriteEvent;->getNewValue()Ljava/lang/Object;

    move-result-object v10

    move-object/from16 v22, v10

    check-cast v22, Lorg/eclipse/jdt/core/dom/ASTNode;

    .line 47
    invoke-virtual {v0, v13, v2, v6, v9}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer$ListRewriter;->updateIndent(IIILorg/eclipse/text/edits/TextEditGroup;)V

    .line 48
    :try_start_5
    iget-object v10, v0, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer$ListRewriter;->this$0:Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;

    invoke-virtual {v10}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->getScanner()Lorg/eclipse/jdt/internal/core/dom/rewrite/TokenScanner;

    move-result-object v10

    .line 49
    iget-object v11, v0, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer$ListRewriter;->this$0:Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;

    invoke-virtual {v11, v1}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->getExtendedOffset(Lorg/eclipse/jdt/core/dom/ASTNode;)I

    move-result v11
    :try_end_5
    .catch Lorg/eclipse/core/runtime/CoreException; {:try_start_5 .. :try_end_5} :catch_5

    move/from16 v12, v17

    const/4 v15, 0x0

    .line 50
    :goto_d
    :try_start_6
    invoke-virtual {v10, v12, v15}, Lorg/eclipse/jdt/internal/core/dom/rewrite/TokenScanner;->readNext(IZ)I

    move-result v13

    invoke-static {v13}, Lorg/eclipse/jdt/internal/core/dom/rewrite/TokenScanner;->isComment(I)Z

    move-result v13

    if-nez v13, :cond_17

    goto :goto_e

    .line 51
    :cond_17
    invoke-virtual {v10, v12, v15}, Lorg/eclipse/jdt/internal/core/dom/rewrite/TokenScanner;->getNextEndOffset(IZ)I

    move-result v13
    :try_end_6
    .catch Lorg/eclipse/core/runtime/CoreException; {:try_start_6 .. :try_end_6} :catch_6

    if-ge v13, v11, :cond_18

    move v12, v13

    goto :goto_d

    :cond_18
    :goto_e
    if-ge v2, v12, :cond_19

    move v2, v11

    goto :goto_f

    :catch_5
    const/4 v15, 0x0

    .line 52
    :catch_6
    :cond_19
    :goto_f
    iget-object v10, v0, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer$ListRewriter;->this$0:Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;

    sub-int v11, v4, v2

    invoke-virtual {v10, v2, v11, v1, v9}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->doTextRemoveAndVisit(IILorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/text/edits/TextEditGroup;)V

    .line 53
    iget-object v1, v0, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer$ListRewriter;->this$0:Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;

    invoke-virtual {v0, v6}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer$ListRewriter;->getNodeIndent(I)I

    move-result v23

    const/16 v24, 0x1

    move-object/from16 v20, v1

    move/from16 v21, v2

    move-object/from16 v25, v9

    invoke-virtual/range {v20 .. v25}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->doTextInsert(ILorg/eclipse/jdt/core/dom/ASTNode;IZLorg/eclipse/text/edits/TextEditGroup;)V

    :goto_10
    move/from16 v1, v19

    goto :goto_11

    :cond_1a
    const/4 v15, 0x0

    .line 54
    invoke-virtual {v14}, Lorg/eclipse/jdt/internal/core/dom/rewrite/RewriteEvent;->getOriginalValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/eclipse/jdt/core/dom/ASTNode;

    .line 55
    iget-object v4, v0, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer$ListRewriter;->this$0:Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;

    invoke-virtual {v4, v1}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->voidVisit(Lorg/eclipse/jdt/core/dom/ASTNode;)V

    move/from16 v4, v17

    goto :goto_10

    :goto_11
    if-ne v6, v1, :cond_1c

    if-nez v3, :cond_1b

    .line 56
    invoke-virtual {v14}, Lorg/eclipse/jdt/internal/core/dom/rewrite/RewriteEvent;->getOriginalValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/eclipse/jdt/core/dom/ASTNode;

    .line 57
    invoke-virtual {v0, v2}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer$ListRewriter;->getEndOfNode(Lorg/eclipse/jdt/core/dom/ASTNode;)I

    move-result v4

    :cond_1b
    move v2, v4

    move v7, v15

    goto :goto_12

    .line 58
    :cond_1c
    iget-object v6, v0, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer$ListRewriter;->list:[Lorg/eclipse/jdt/internal/core/dom/rewrite/RewriteEvent;

    aget-object v6, v6, v5

    invoke-virtual {v6}, Lorg/eclipse/jdt/internal/core/dom/rewrite/RewriteEvent;->getChangeKind()I

    move-result v6

    if-eqz v6, :cond_1e

    if-nez v3, :cond_1d

    .line 59
    invoke-virtual {v14}, Lorg/eclipse/jdt/internal/core/dom/rewrite/RewriteEvent;->getOriginalValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/eclipse/jdt/core/dom/ASTNode;

    .line 60
    invoke-virtual {v0, v2}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer$ListRewriter;->getEndOfNode(Lorg/eclipse/jdt/core/dom/ASTNode;)I

    move-result v4

    .line 61
    :cond_1d
    invoke-virtual {v0, v5, v4}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer$ListRewriter;->getStartOfNextNode(II)I

    move-result v2

    const/4 v7, 0x2

    :cond_1e
    :goto_12
    move v9, v1

    move v13, v3

    move v6, v5

    move v5, v15

    move/from16 v3, v16

    move/from16 v12, v18

    const/4 v11, 0x1

    move-object/from16 v1, p4

    goto/16 :goto_3

    :cond_1f
    move-object/from16 v13, p3

    move/from16 v16, v3

    move v15, v5

    move v1, v9

    .line 62
    iget-object v3, v0, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer$ListRewriter;->list:[Lorg/eclipse/jdt/internal/core/dom/rewrite/RewriteEvent;

    aget-object v3, v3, v6

    invoke-virtual {v3}, Lorg/eclipse/jdt/internal/core/dom/rewrite/RewriteEvent;->getChangeKind()I

    move-result v3

    const/4 v5, 0x1

    if-eq v3, v5, :cond_21

    if-ne v7, v4, :cond_20

    .line 63
    iget-object v1, v0, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer$ListRewriter;->list:[Lorg/eclipse/jdt/internal/core/dom/rewrite/RewriteEvent;

    aget-object v1, v1, v6

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/core/dom/rewrite/RewriteEvent;->getOriginalValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/eclipse/jdt/core/dom/ASTNode;

    .line 64
    iget-object v5, v0, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer$ListRewriter;->this$0:Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;

    invoke-virtual {v5, v1}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->getExtendedOffset(Lorg/eclipse/jdt/core/dom/ASTNode;)I

    move-result v7

    :cond_20
    move v9, v6

    :goto_13
    const/4 v1, 0x2

    goto :goto_14

    :cond_21
    move v9, v1

    goto :goto_13

    :goto_14
    if-eq v3, v1, :cond_22

    move v8, v6

    :cond_22
    add-int/lit8 v6, v6, 0x1

    move-object/from16 v1, p4

    move v5, v15

    move/from16 v3, v16

    goto/16 :goto_0
.end method


# virtual methods
.method public getEndOfNode(Lorg/eclipse/jdt/core/dom/ASTNode;)I
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer$ListRewriter;->this$0:Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;

    invoke-virtual {v0, p1}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->getExtendedEnd(Lorg/eclipse/jdt/core/dom/ASTNode;)I

    move-result p1

    return p1
.end method

.method public getInitialIndent()I
    .locals 2

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer$ListRewriter;->this$0:Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;

    iget v1, p0, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer$ListRewriter;->startPos:I

    invoke-virtual {v0, v1}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->getIndent(I)I

    move-result v0

    return v0
.end method

.method public final getNewNode(I)Lorg/eclipse/jdt/core/dom/ASTNode;
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer$ListRewriter;->list:[Lorg/eclipse/jdt/internal/core/dom/rewrite/RewriteEvent;

    aget-object p1, v0, p1

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/core/dom/rewrite/RewriteEvent;->getNewValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/eclipse/jdt/core/dom/ASTNode;

    return-object p1
.end method

.method public getNodeIndent(I)I
    .locals 1

    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer$ListRewriter;->getOriginalNode(I)Lorg/eclipse/jdt/core/dom/ASTNode;

    move-result-object v0

    if-nez v0, :cond_2

    add-int/lit8 p1, p1, -0x1

    :goto_0
    if-gez p1, :cond_0

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer$ListRewriter;->getInitialIndent()I

    move-result p1

    return p1

    :cond_0
    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer$ListRewriter;->getOriginalNode(I)Lorg/eclipse/jdt/core/dom/ASTNode;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object p1, p0, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer$ListRewriter;->this$0:Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;

    invoke-virtual {v0}, Lorg/eclipse/jdt/core/dom/ASTNode;->getStartPosition()I

    move-result v0

    invoke-virtual {p1, v0}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->getIndent(I)I

    move-result p1

    return p1

    :cond_1
    add-int/lit8 p1, p1, -0x1

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer$ListRewriter;->this$0:Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;

    invoke-virtual {v0}, Lorg/eclipse/jdt/core/dom/ASTNode;->getStartPosition()I

    move-result v0

    invoke-virtual {p1, v0}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->getIndent(I)I

    move-result p1

    return p1
.end method

.method public final getOriginalNode(I)Lorg/eclipse/jdt/core/dom/ASTNode;
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer$ListRewriter;->list:[Lorg/eclipse/jdt/internal/core/dom/rewrite/RewriteEvent;

    aget-object p1, v0, p1

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/core/dom/rewrite/RewriteEvent;->getOriginalValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/eclipse/jdt/core/dom/ASTNode;

    return-object p1
.end method

.method public getSeparatorString(I)Ljava/lang/String;
    .locals 0

    iget-object p1, p0, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer$ListRewriter;->constantSeparator:Ljava/lang/String;

    return-object p1
.end method

.method public getStartOfNextNode(II)I
    .locals 3

    :goto_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer$ListRewriter;->list:[Lorg/eclipse/jdt/internal/core/dom/rewrite/RewriteEvent;

    array-length v1, v0

    if-lt p1, v1, :cond_0

    return p2

    :cond_0
    aget-object v0, v0, p1

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/core/dom/rewrite/RewriteEvent;->getChangeKind()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_1

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/core/dom/rewrite/RewriteEvent;->getOriginalValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/eclipse/jdt/core/dom/ASTNode;

    iget-object p2, p0, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer$ListRewriter;->this$0:Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;

    invoke-virtual {p2, p1}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->getExtendedOffset(Lorg/eclipse/jdt/core/dom/ASTNode;)I

    move-result p1

    return p1

    :cond_1
    add-int/lit8 p1, p1, 0x1

    goto :goto_0
.end method

.method public mustRemoveSeparator(II)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public final rewriteList(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;ILjava/lang/String;)I
    .locals 6

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p4

    move v5, p3

    .line 65
    invoke-direct/range {v0 .. v5}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer$ListRewriter;->rewriteList(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;Ljava/lang/String;Ljava/lang/String;I)I

    move-result p1

    return p1
.end method

.method public final rewriteList(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;ILjava/lang/String;Ljava/lang/String;)I
    .locals 6

    .line 1
    iput-object p5, p0, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer$ListRewriter;->constantSeparator:Ljava/lang/String;

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p4

    move v5, p3

    .line 2
    invoke-direct/range {v0 .. v5}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer$ListRewriter;->rewriteList(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;Ljava/lang/String;Ljava/lang/String;I)I

    move-result p1

    return p1
.end method

.method public final rewriteList(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 6

    .line 66
    iput-object p6, p0, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer$ListRewriter;->constantSeparator:Ljava/lang/String;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p4

    move-object v4, p5

    move v5, p3

    .line 67
    invoke-direct/range {v0 .. v5}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer$ListRewriter;->rewriteList(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;Ljava/lang/String;Ljava/lang/String;I)I

    move-result p1

    return p1
.end method

.method public updateIndent(IIILorg/eclipse/text/edits/TextEditGroup;)V
    .locals 0

    return-void
.end method
