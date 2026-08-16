.class Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFormatter$FormattingPrefix;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFormatter$Prefix;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFormatter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "FormattingPrefix"
.end annotation


# instance fields
.field private kind:I

.field private length:I

.field private start:I

.field private string:Ljava/lang/String;

.field final synthetic this$0:Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFormatter;


# direct methods
.method public constructor <init>(Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFormatter;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFormatter$FormattingPrefix;->this$0:Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFormatter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p2, p3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFormatter$FormattingPrefix;->start:I

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result p1

    iput p1, p0, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFormatter$FormattingPrefix;->length:I

    iput-object p2, p0, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFormatter$FormattingPrefix;->string:Ljava/lang/String;

    iput p4, p0, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFormatter$FormattingPrefix;->kind:I

    return-void
.end method


# virtual methods
.method public getPrefix(I)Ljava/lang/String;
    .locals 9

    new-instance v0, Lorg/eclipse/jface/text/Position;

    iget v1, p0, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFormatter$FormattingPrefix;->start:I

    iget v2, p0, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFormatter$FormattingPrefix;->length:I

    invoke-direct {v0, v1, v2}, Lorg/eclipse/jface/text/Position;-><init>(II)V

    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFormatter$FormattingPrefix;->string:Ljava/lang/String;

    iget-object v3, p0, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFormatter$FormattingPrefix;->this$0:Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFormatter;

    iget v4, p0, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFormatter$FormattingPrefix;->kind:I

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v7

    const/4 v6, 0x0

    move-object v5, v1

    move v8, p1

    invoke-virtual/range {v3 .. v8}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFormatter;->formatString(ILjava/lang/String;III)Lorg/eclipse/text/edits/TextEdit;

    move-result-object p1

    const/4 v2, 0x1

    if-eqz p1, :cond_0

    new-array v3, v2, [Lorg/eclipse/jface/text/Position;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-static {v1, p1, v3}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFormatter;->evaluateFormatterEdit(Ljava/lang/String;Lorg/eclipse/text/edits/TextEdit;[Lorg/eclipse/jface/text/Position;)Ljava/lang/String;

    move-result-object v1

    :cond_0
    iget p1, v0, Lorg/eclipse/jface/text/Position;->offset:I

    add-int/2addr p1, v2

    iget v3, v0, Lorg/eclipse/jface/text/Position;->offset:I

    iget v0, v0, Lorg/eclipse/jface/text/Position;->length:I

    add-int/2addr v3, v0

    sub-int/2addr v3, v2

    invoke-virtual {v1, p1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
