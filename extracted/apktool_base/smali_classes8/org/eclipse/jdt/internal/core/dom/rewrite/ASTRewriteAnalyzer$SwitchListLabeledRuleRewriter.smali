.class Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer$SwitchListLabeledRuleRewriter;
.super Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer$SwitchListRewriter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SwitchListLabeledRuleRewriter"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;


# direct methods
.method public constructor <init>(Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;I)V
    .locals 0

    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer$SwitchListLabeledRuleRewriter;->this$0:Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;

    invoke-direct {p0, p1, p2}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer$SwitchListRewriter;-><init>(Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;I)V

    return-void
.end method

.method private isSwitchLabeledRule(II)Z
    .locals 3

    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer$ParagraphListRewriter;->getNode(I)Lorg/eclipse/jdt/core/dom/ASTNode;

    move-result-object p2

    const/4 v0, 0x1

    add-int/2addr p1, v0

    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer$ParagraphListRewriter;->getNode(I)Lorg/eclipse/jdt/core/dom/ASTNode;

    move-result-object p1

    invoke-virtual {p2}, Lorg/eclipse/jdt/core/dom/ASTNode;->getNodeType()I

    move-result v1

    const/16 v2, 0x31

    if-ne v1, v2, :cond_0

    instance-of p1, p1, Lorg/eclipse/jdt/core/dom/Statement;

    if-eqz p1, :cond_0

    check-cast p2, Lorg/eclipse/jdt/core/dom/SwitchCase;

    invoke-virtual {p2}, Lorg/eclipse/jdt/core/dom/SwitchCase;->isSwitchLabeledRule()Z

    move-result p1

    if-eqz p1, :cond_0

    return v0

    :cond_0
    const/4 p1, 0x0

    return p1
.end method


# virtual methods
.method public getNodeIndent(I)I
    .locals 5

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer$ParagraphListRewriter;->getInitialIndent()I

    move-result v0

    iget-boolean v1, p0, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer$SwitchListRewriter;->indentSwitchStatementsCompareToCases:Z

    if-eqz v1, :cond_3

    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer$ListRewriter;->list:[Lorg/eclipse/jdt/internal/core/dom/rewrite/RewriteEvent;

    aget-object v1, v1, p1

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/core/dom/rewrite/RewriteEvent;->getChangeKind()I

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_1

    const/4 v4, 0x4

    if-ne v2, v4, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/core/dom/rewrite/RewriteEvent;->getOriginalValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/eclipse/jdt/core/dom/ASTNode;

    goto :goto_1

    :cond_1
    :goto_0
    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/core/dom/rewrite/RewriteEvent;->getNewValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/eclipse/jdt/core/dom/ASTNode;

    :goto_1
    invoke-virtual {v1}, Lorg/eclipse/jdt/core/dom/ASTNode;->getNodeType()I

    move-result v1

    const/16 v2, 0x31

    if-eq v1, v2, :cond_3

    sub-int/2addr p1, v3

    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer$ParagraphListRewriter;->getNode(I)Lorg/eclipse/jdt/core/dom/ASTNode;

    move-result-object p1

    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/ASTNode;->getNodeType()I

    move-result v1

    if-ne v1, v2, :cond_2

    check-cast p1, Lorg/eclipse/jdt/core/dom/SwitchCase;

    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/SwitchCase;->isSwitchLabeledRule()Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 p1, 0x0

    return p1

    :cond_2
    add-int/lit8 v0, v0, 0x1

    :cond_3
    return v0
.end method

.method public getSeparatorString(II)Ljava/lang/String;
    .locals 2

    invoke-direct {p0, p1, p2}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer$SwitchListLabeledRuleRewriter;->isSwitchLabeledRule(II)Z

    move-result p1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer$SwitchListLabeledRuleRewriter;->this$0:Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;

    iget-object v0, v0, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->options:Ljava/util/Map;

    const-string v1, "org.eclipse.jdt.core.formatter.insert_space_after_arrow_in_switch_case"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "insert"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, " "

    goto :goto_0

    :cond_0
    const-string v0, ""

    :goto_0
    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    iget-object p1, p0, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer$SwitchListLabeledRuleRewriter;->this$0:Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->getLineDelimiter()Ljava/lang/String;

    move-result-object v0

    :goto_1
    new-instance p1, Ljava/lang/StringBuffer;

    invoke-direct {p1, v0}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer$SwitchListLabeledRuleRewriter;->this$0:Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;

    invoke-virtual {p0, p2}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer$SwitchListLabeledRuleRewriter;->getNodeIndent(I)I

    move-result p2

    invoke-virtual {v0, p2}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->createIndentString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
