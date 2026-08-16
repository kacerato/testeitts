.class Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer$SwitchListRewriter;
.super Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer$ParagraphListRewriter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SwitchListRewriter"
.end annotation


# instance fields
.field protected indentSwitchStatementsCompareToCases:Z

.field final synthetic this$0:Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;


# direct methods
.method public constructor <init>(Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;I)V
    .locals 1

    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer$SwitchListRewriter;->this$0:Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer$ParagraphListRewriter;-><init>(Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;II)V

    iget-object p1, p1, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->options:Ljava/util/Map;

    const-string p2, "org.eclipse.jdt.core.formatter.indent_switchstatements_compare_to_cases"

    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    const-string p2, "true"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    iput-boolean p1, p0, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer$SwitchListRewriter;->indentSwitchStatementsCompareToCases:Z

    return-void
.end method


# virtual methods
.method public getNodeIndent(I)I
    .locals 3

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer$ParagraphListRewriter;->getInitialIndent()I

    move-result v0

    iget-boolean v1, p0, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer$SwitchListRewriter;->indentSwitchStatementsCompareToCases:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer$ListRewriter;->list:[Lorg/eclipse/jdt/internal/core/dom/rewrite/RewriteEvent;

    aget-object p1, v1, p1

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/core/dom/rewrite/RewriteEvent;->getChangeKind()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/core/dom/rewrite/RewriteEvent;->getOriginalValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/eclipse/jdt/core/dom/ASTNode;

    goto :goto_1

    :cond_1
    :goto_0
    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/core/dom/rewrite/RewriteEvent;->getNewValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/eclipse/jdt/core/dom/ASTNode;

    :goto_1
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/ASTNode;->getNodeType()I

    move-result p1

    const/16 v1, 0x31

    if-eq p1, v1, :cond_2

    add-int/lit8 v0, v0, 0x1

    :cond_2
    return v0
.end method

.method public getSeparatorString(I)Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer$ListRewriter;->list:[Lorg/eclipse/jdt/internal/core/dom/rewrite/RewriteEvent;

    array-length v0, v0

    add-int/lit8 v1, p1, 0x1

    :goto_0
    if-ge v1, v0, :cond_1

    iget-object v2, p0, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer$ListRewriter;->list:[Lorg/eclipse/jdt/internal/core/dom/rewrite/RewriteEvent;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Lorg/eclipse/jdt/internal/core/dom/rewrite/RewriteEvent;->getChangeKind()I

    move-result v2

    const/4 v3, 0x2

    if-eq v2, v3, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    if-ne v1, v0, :cond_2

    invoke-super {p0, p1}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer$ParagraphListRewriter;->getSeparatorString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_2
    invoke-virtual {p0, p1, v1}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer$ParagraphListRewriter;->getSeparatorString(II)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public updateIndent(IIILorg/eclipse/text/edits/TextEditGroup;)V
    .locals 4

    const/4 v0, 0x4

    if-eqz p1, :cond_0

    if-eq p1, v0, :cond_0

    return-void

    :cond_0
    add-int/lit8 p1, p3, -0x1

    :goto_0
    const/4 v1, 0x2

    if-ltz p1, :cond_2

    iget-object v2, p0, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer$ListRewriter;->list:[Lorg/eclipse/jdt/internal/core/dom/rewrite/RewriteEvent;

    aget-object v2, v2, p1

    invoke-virtual {v2}, Lorg/eclipse/jdt/internal/core/dom/rewrite/RewriteEvent;->getChangeKind()I

    move-result v2

    if-eq v2, v1, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 p1, p1, -0x1

    goto :goto_0

    :cond_2
    :goto_1
    const/4 v2, -0x1

    if-le p1, v2, :cond_4

    iget-object v2, p0, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer$SwitchListRewriter;->this$0:Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;

    invoke-virtual {v2}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->getLineInformation()Lorg/eclipse/jdt/internal/core/dom/rewrite/LineInformation;

    move-result-object v2

    iget-object v3, p0, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer$ListRewriter;->list:[Lorg/eclipse/jdt/internal/core/dom/rewrite/RewriteEvent;

    aget-object v3, v3, p1

    invoke-virtual {v3}, Lorg/eclipse/jdt/internal/core/dom/rewrite/RewriteEvent;->getChangeKind()I

    move-result v3

    if-eqz v3, :cond_3

    if-ne v3, v0, :cond_4

    :cond_3
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer$ListRewriter;->list:[Lorg/eclipse/jdt/internal/core/dom/rewrite/RewriteEvent;

    aget-object p1, v0, p1

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/core/dom/rewrite/RewriteEvent;->getOriginalValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/eclipse/jdt/core/dom/ASTNode;

    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/ASTNode;->getStartPosition()I

    move-result v0

    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/ASTNode;->getLength()I

    move-result p1

    add-int/2addr v0, p1

    invoke-virtual {v2, v0}, Lorg/eclipse/jdt/internal/core/dom/rewrite/LineInformation;->getLineOfOffset(I)I

    move-result p1

    invoke-virtual {v2, p2}, Lorg/eclipse/jdt/internal/core/dom/rewrite/LineInformation;->getLineOfOffset(I)I

    move-result v0

    if-ne p1, v0, :cond_4

    return-void

    :cond_4
    iget-object p1, p0, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer$ListRewriter;->list:[Lorg/eclipse/jdt/internal/core/dom/rewrite/RewriteEvent;

    array-length p1, p1

    :goto_2
    if-ge p3, p1, :cond_6

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer$ListRewriter;->list:[Lorg/eclipse/jdt/internal/core/dom/rewrite/RewriteEvent;

    aget-object v0, v0, p3

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/core/dom/rewrite/RewriteEvent;->getChangeKind()I

    move-result v0

    if-eq v0, v1, :cond_5

    goto :goto_3

    :cond_5
    add-int/lit8 p3, p3, 0x1

    goto :goto_2

    :cond_6
    :goto_3
    iget-object p1, p0, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer$SwitchListRewriter;->this$0:Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;

    invoke-virtual {p1, p2}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->getIndent(I)I

    move-result p1

    invoke-virtual {p0, p3}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer$SwitchListRewriter;->getNodeIndent(I)I

    move-result p3

    if-eq p1, p3, :cond_7

    iget-object p1, p0, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer$SwitchListRewriter;->this$0:Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->getLineInformation()Lorg/eclipse/jdt/internal/core/dom/rewrite/LineInformation;

    move-result-object p1

    invoke-virtual {p1, p2}, Lorg/eclipse/jdt/internal/core/dom/rewrite/LineInformation;->getLineOfOffset(I)I

    move-result p1

    if-ltz p1, :cond_7

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer$SwitchListRewriter;->this$0:Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->getLineInformation()Lorg/eclipse/jdt/internal/core/dom/rewrite/LineInformation;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/eclipse/jdt/internal/core/dom/rewrite/LineInformation;->getLineOffset(I)I

    move-result p1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer$SwitchListRewriter;->this$0:Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;

    sub-int/2addr p2, p1

    invoke-virtual {v0, p1, p2, p4}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->doTextRemove(IILorg/eclipse/text/edits/TextEditGroup;)Lorg/eclipse/text/edits/TextEdit;

    iget-object p2, p0, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer$SwitchListRewriter;->this$0:Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;

    invoke-virtual {p2, p3}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->createIndentString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p1, p3, p4}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->doTextInsert(ILjava/lang/String;Lorg/eclipse/text/edits/TextEditGroup;)V

    :cond_7
    return-void
.end method
