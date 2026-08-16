.class Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer$ParagraphListRewriter;
.super Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer$ListRewriter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ParagraphListRewriter"
.end annotation


# static fields
.field public static final DEFAULT_SPACING:I = 0x1


# instance fields
.field private initialIndent:I

.field private separatorLines:I

.field final synthetic this$0:Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;


# direct methods
.method public constructor <init>(Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;II)V
    .locals 0

    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer$ParagraphListRewriter;->this$0:Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;

    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer$ListRewriter;-><init>(Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;)V

    iput p2, p0, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer$ParagraphListRewriter;->initialIndent:I

    iput p3, p0, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer$ParagraphListRewriter;->separatorLines:I

    return-void
.end method

.method private countEmptyLines(Lorg/eclipse/jdt/core/dom/ASTNode;)I
    .locals 6

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer$ParagraphListRewriter;->this$0:Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->getLineInformation()Lorg/eclipse/jdt/internal/core/dom/rewrite/LineInformation;

    move-result-object v0

    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer$ParagraphListRewriter;->this$0:Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;

    invoke-virtual {v1, p1}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->getExtendedEnd(Lorg/eclipse/jdt/core/dom/ASTNode;)I

    move-result p1

    invoke-virtual {v0, p1}, Lorg/eclipse/jdt/internal/core/dom/rewrite/LineInformation;->getLineOfOffset(I)I

    move-result p1

    const/4 v1, 0x0

    if-ltz p1, :cond_3

    add-int/lit8 p1, p1, 0x1

    invoke-virtual {v0, p1}, Lorg/eclipse/jdt/internal/core/dom/rewrite/LineInformation;->getLineOffset(I)I

    move-result v2

    if-gez v2, :cond_0

    return v1

    :cond_0
    iget-object v3, p0, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer$ParagraphListRewriter;->this$0:Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;

    invoke-virtual {v3}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->getContent()[C

    move-result-object v3

    move v4, v2

    :goto_0
    array-length v5, v3

    if-ge v4, v5, :cond_2

    aget-char v5, v3, v4

    invoke-static {v5}, Lorg/eclipse/jdt/internal/compiler/parser/ScannerHelper;->isWhitespace(C)Z

    move-result v5

    if-nez v5, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    if-le v4, v2, :cond_3

    invoke-virtual {v0, v4}, Lorg/eclipse/jdt/internal/core/dom/rewrite/LineInformation;->getLineOfOffset(I)I

    move-result v0

    if-le v0, p1, :cond_3

    sub-int/2addr v0, p1

    return v0

    :cond_3
    return v1
.end method

.method private getNewLines(I)I
    .locals 8

    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer$ParagraphListRewriter;->getNode(I)Lorg/eclipse/jdt/core/dom/ASTNode;

    move-result-object v0

    const/4 v1, 0x1

    add-int/2addr p1, v1

    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer$ParagraphListRewriter;->getNode(I)Lorg/eclipse/jdt/core/dom/ASTNode;

    move-result-object p1

    invoke-virtual {v0}, Lorg/eclipse/jdt/core/dom/ASTNode;->getNodeType()I

    move-result v0

    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/ASTNode;->getNodeType()I

    move-result p1

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v4, v2

    move v5, v3

    :goto_0
    iget-object v6, p0, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer$ListRewriter;->list:[Lorg/eclipse/jdt/internal/core/dom/rewrite/RewriteEvent;

    array-length v7, v6

    if-lt v5, v7, :cond_2

    const/16 v2, 0x17

    if-ne v0, v2, :cond_0

    if-ne p1, v2, :cond_0

    return v3

    :cond_0
    if-eqz v4, :cond_1

    invoke-direct {p0, v4}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer$ParagraphListRewriter;->countEmptyLines(Lorg/eclipse/jdt/core/dom/ASTNode;)I

    move-result p1

    return p1

    :cond_1
    return v1

    :cond_2
    aget-object v6, v6, v5

    invoke-virtual {v6}, Lorg/eclipse/jdt/internal/core/dom/rewrite/RewriteEvent;->getOriginalValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/eclipse/jdt/core/dom/ASTNode;

    if-eqz v6, :cond_5

    if-eqz v2, :cond_3

    invoke-virtual {v6}, Lorg/eclipse/jdt/core/dom/ASTNode;->getNodeType()I

    move-result v4

    if-ne v4, p1, :cond_4

    invoke-virtual {v2}, Lorg/eclipse/jdt/core/dom/ASTNode;->getNodeType()I

    move-result v4

    if-ne v4, v0, :cond_4

    invoke-direct {p0, v2}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer$ParagraphListRewriter;->countEmptyLines(Lorg/eclipse/jdt/core/dom/ASTNode;)I

    move-result p1

    return p1

    :cond_3
    move-object v2, v4

    :cond_4
    move-object v4, v2

    move-object v2, v6

    :cond_5
    add-int/lit8 v5, v5, 0x1

    goto :goto_0
.end method


# virtual methods
.method public getInitialIndent()I
    .locals 1

    iget v0, p0, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer$ParagraphListRewriter;->initialIndent:I

    return v0
.end method

.method public getNode(I)Lorg/eclipse/jdt/core/dom/ASTNode;
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer$ListRewriter;->list:[Lorg/eclipse/jdt/internal/core/dom/rewrite/RewriteEvent;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/core/dom/rewrite/RewriteEvent;->getOriginalValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jdt/core/dom/ASTNode;

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer$ListRewriter;->list:[Lorg/eclipse/jdt/internal/core/dom/rewrite/RewriteEvent;

    aget-object p1, v0, p1

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/core/dom/rewrite/RewriteEvent;->getNewValue()Ljava/lang/Object;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Lorg/eclipse/jdt/core/dom/ASTNode;

    :cond_0
    return-object v0
.end method

.method public getSeparatorString(I)Ljava/lang/String;
    .locals 1

    add-int/lit8 v0, p1, 0x1

    .line 1
    invoke-virtual {p0, p1, v0}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer$ParagraphListRewriter;->getSeparatorString(II)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getSeparatorString(II)Ljava/lang/String;
    .locals 3

    .line 2
    iget v0, p0, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer$ParagraphListRewriter;->separatorLines:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer$ParagraphListRewriter;->getNewLines(I)I

    move-result v0

    .line 3
    :cond_0
    iget-object p1, p0, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer$ParagraphListRewriter;->this$0:Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->getLineDelimiter()Ljava/lang/String;

    move-result-object p1

    .line 4
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1, p1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x0

    :goto_0
    if-lt v2, v0, :cond_1

    .line 5
    iget-object p1, p0, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer$ParagraphListRewriter;->this$0:Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;

    invoke-virtual {p0, p2}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer$ListRewriter;->getNodeIndent(I)I

    move-result p2

    invoke-virtual {p1, p2}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->createIndentString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 6
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 7
    :cond_1
    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public mustRemoveSeparator(II)Z
    .locals 6

    add-int/lit8 v0, p2, -0x1

    :goto_0
    if-ltz v0, :cond_1

    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer$ListRewriter;->list:[Lorg/eclipse/jdt/internal/core/dom/rewrite/RewriteEvent;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/core/dom/rewrite/RewriteEvent;->getChangeKind()I

    move-result v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    :goto_1
    const/4 v1, -0x1

    const/4 v2, 0x1

    if-le v0, v1, :cond_6

    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer$ParagraphListRewriter;->this$0:Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->getLineInformation()Lorg/eclipse/jdt/internal/core/dom/rewrite/LineInformation;

    move-result-object v1

    iget-object v3, p0, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer$ListRewriter;->list:[Lorg/eclipse/jdt/internal/core/dom/rewrite/RewriteEvent;

    aget-object v3, v3, v0

    invoke-virtual {v3}, Lorg/eclipse/jdt/internal/core/dom/rewrite/RewriteEvent;->getChangeKind()I

    move-result v3

    const/4 v4, 0x4

    if-eqz v3, :cond_2

    if-ne v3, v4, :cond_6

    :cond_2
    iget-object v5, p0, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer$ListRewriter;->list:[Lorg/eclipse/jdt/internal/core/dom/rewrite/RewriteEvent;

    aget-object v0, v5, v0

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/core/dom/rewrite/RewriteEvent;->getOriginalValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jdt/core/dom/ASTNode;

    invoke-virtual {v0}, Lorg/eclipse/jdt/core/dom/ASTNode;->getStartPosition()I

    move-result v5

    invoke-virtual {v0}, Lorg/eclipse/jdt/core/dom/ASTNode;->getLength()I

    move-result v0

    add-int/2addr v5, v0

    invoke-virtual {v1, v5}, Lorg/eclipse/jdt/internal/core/dom/rewrite/LineInformation;->getLineOfOffset(I)I

    move-result v0

    invoke-virtual {v1, p1}, Lorg/eclipse/jdt/internal/core/dom/rewrite/LineInformation;->getLineOfOffset(I)I

    move-result p1

    if-ne v0, p1, :cond_6

    add-int/2addr p2, v2

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer$ListRewriter;->list:[Lorg/eclipse/jdt/internal/core/dom/rewrite/RewriteEvent;

    array-length v5, v0

    if-ge p2, v5, :cond_6

    aget-object p2, v0, p2

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/core/dom/rewrite/RewriteEvent;->getChangeKind()I

    move-result v0

    const/4 v5, 0x0

    if-eqz v0, :cond_4

    if-ne v3, v4, :cond_3

    goto :goto_2

    :cond_3
    return v5

    :cond_4
    :goto_2
    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/core/dom/rewrite/RewriteEvent;->getOriginalValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/eclipse/jdt/core/dom/ASTNode;

    invoke-virtual {p2}, Lorg/eclipse/jdt/core/dom/ASTNode;->getStartPosition()I

    move-result p2

    invoke-virtual {v1, p2}, Lorg/eclipse/jdt/internal/core/dom/rewrite/LineInformation;->getLineOfOffset(I)I

    move-result p2

    if-ne p2, p1, :cond_5

    return v2

    :cond_5
    return v5

    :cond_6
    return v2
.end method
