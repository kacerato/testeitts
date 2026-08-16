.class Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer$ModifierRewriter;
.super Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer$ListRewriter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ModifierRewriter"
.end annotation


# instance fields
.field private final annotationSeparation:Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFormatter$Prefix;

.field final synthetic this$0:Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;


# direct methods
.method public constructor <init>(Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFormatter$Prefix;)V
    .locals 0

    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer$ModifierRewriter;->this$0:Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;

    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer$ListRewriter;-><init>(Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;)V

    iput-object p2, p0, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer$ModifierRewriter;->annotationSeparation:Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFormatter$Prefix;

    return-void
.end method


# virtual methods
.method public getSeparatorString(I)Ljava/lang/String;
    .locals 1

    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer$ListRewriter;->getNewNode(I)Lorg/eclipse/jdt/core/dom/ASTNode;

    move-result-object v0

    instance-of v0, v0, Lorg/eclipse/jdt/core/dom/Annotation;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer$ModifierRewriter;->annotationSeparation:Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFormatter$Prefix;

    add-int/lit8 p1, p1, 0x1

    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer$ListRewriter;->getNodeIndent(I)I

    move-result p1

    invoke-interface {v0, p1}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFormatter$Prefix;->getPrefix(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-super {p0, p1}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer$ListRewriter;->getSeparatorString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
