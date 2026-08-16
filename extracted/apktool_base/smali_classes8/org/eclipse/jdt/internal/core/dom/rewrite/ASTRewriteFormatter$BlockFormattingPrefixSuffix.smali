.class Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFormatter$BlockFormattingPrefixSuffix;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFormatter$BlockContext;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFormatter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "BlockFormattingPrefixSuffix"
.end annotation


# instance fields
.field private prefix:Ljava/lang/String;

.field private start:I

.field private suffix:Ljava/lang/String;

.field final synthetic this$0:Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFormatter;


# direct methods
.method public constructor <init>(Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFormatter;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFormatter$BlockFormattingPrefixSuffix;->this$0:Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFormatter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p4, p0, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFormatter$BlockFormattingPrefixSuffix;->start:I

    iput-object p3, p0, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFormatter$BlockFormattingPrefixSuffix;->suffix:Ljava/lang/String;

    iput-object p2, p0, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFormatter$BlockFormattingPrefixSuffix;->prefix:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getPrefixAndSuffix(ILorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/internal/core/dom/rewrite/RewriteEventStore;)[Ljava/lang/String;
    .locals 10

    invoke-static {p2, p3}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFlattener;->asString(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/internal/core/dom/rewrite/RewriteEventStore;)Ljava/lang/String;

    move-result-object p2

    iget-object p3, p0, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFormatter$BlockFormattingPrefixSuffix;->prefix:Ljava/lang/String;

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result p3

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    add-int/2addr v0, p3

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    new-instance v2, Ljava/lang/StringBuilder;

    iget-object v3, p0, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFormatter$BlockFormattingPrefixSuffix;->prefix:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFormatter$BlockFormattingPrefixSuffix;->suffix:Ljava/lang/String;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    new-instance v2, Lorg/eclipse/jface/text/Position;

    iget v3, p0, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFormatter$BlockFormattingPrefixSuffix;->start:I

    add-int/2addr p3, v1

    sub-int/2addr p3, v3

    invoke-direct {v2, v3, p3}, Lorg/eclipse/jface/text/Position;-><init>(II)V

    new-instance p3, Lorg/eclipse/jface/text/Position;

    const/4 v9, 0x2

    invoke-direct {p3, v0, v9}, Lorg/eclipse/jface/text/Position;-><init>(II)V

    iget-object v3, p0, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFormatter$BlockFormattingPrefixSuffix;->this$0:Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFormatter;

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v7

    const/4 v4, 0x2

    const/4 v6, 0x0

    move-object v5, p2

    move v8, p1

    invoke-virtual/range {v3 .. v8}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFormatter;->formatString(ILjava/lang/String;III)Lorg/eclipse/text/edits/TextEdit;

    move-result-object p1

    if-eqz p1, :cond_0

    new-array v0, v9, [Lorg/eclipse/jface/text/Position;

    const/4 v3, 0x0

    aput-object v2, v0, v3

    aput-object p3, v0, v1

    invoke-static {p2, p1, v0}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFormatter;->evaluateFormatterEdit(Ljava/lang/String;Lorg/eclipse/text/edits/TextEdit;[Lorg/eclipse/jface/text/Position;)Ljava/lang/String;

    move-result-object p2

    :cond_0
    iget p1, v2, Lorg/eclipse/jface/text/Position;->offset:I

    add-int/2addr p1, v1

    iget v0, v2, Lorg/eclipse/jface/text/Position;->offset:I

    iget v2, v2, Lorg/eclipse/jface/text/Position;->length:I

    add-int/2addr v0, v2

    sub-int/2addr v0, v1

    invoke-virtual {p2, p1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    iget v0, p3, Lorg/eclipse/jface/text/Position;->offset:I

    add-int/2addr v0, v1

    iget v2, p3, Lorg/eclipse/jface/text/Position;->offset:I

    iget p3, p3, Lorg/eclipse/jface/text/Position;->length:I

    add-int/2addr v2, p3

    sub-int/2addr v2, v1

    invoke-virtual {p2, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p2

    filled-new-array {p1, p2}, [Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
