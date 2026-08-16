.class public Lorg/eclipse/jdt/internal/core/dom/rewrite/SourceModifier;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/eclipse/text/edits/ISourceModifier;


# instance fields
.field private final destinationIndent:Ljava/lang/String;

.field private final indentWidth:I

.field private final sourceIndentLevel:I

.field private final tabWidth:I


# direct methods
.method public constructor <init>(ILjava/lang/String;II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lorg/eclipse/jdt/internal/core/dom/rewrite/SourceModifier;->destinationIndent:Ljava/lang/String;

    iput p1, p0, Lorg/eclipse/jdt/internal/core/dom/rewrite/SourceModifier;->sourceIndentLevel:I

    iput p3, p0, Lorg/eclipse/jdt/internal/core/dom/rewrite/SourceModifier;->tabWidth:I

    iput p4, p0, Lorg/eclipse/jdt/internal/core/dom/rewrite/SourceModifier;->indentWidth:I

    return-void
.end method


# virtual methods
.method public copy()Lorg/eclipse/text/edits/ISourceModifier;
    .locals 0

    return-object p0
.end method

.method public getModifications(Ljava/lang/String;)[Lorg/eclipse/text/edits/ReplaceEdit;
    .locals 4

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/dom/rewrite/SourceModifier;->destinationIndent:Ljava/lang/String;

    iget v2, p0, Lorg/eclipse/jdt/internal/core/dom/rewrite/SourceModifier;->tabWidth:I

    iget v3, p0, Lorg/eclipse/jdt/internal/core/dom/rewrite/SourceModifier;->indentWidth:I

    invoke-static {v1, v2, v3}, Lorg/eclipse/jdt/core/formatter/IndentManipulation;->measureIndentUnits(Ljava/lang/CharSequence;II)I

    move-result v1

    iget v2, p0, Lorg/eclipse/jdt/internal/core/dom/rewrite/SourceModifier;->sourceIndentLevel:I

    if-ne v1, v2, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p1

    new-array p1, p1, [Lorg/eclipse/text/edits/ReplaceEdit;

    invoke-interface {v0, p1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lorg/eclipse/text/edits/ReplaceEdit;

    return-object p1

    :cond_0
    iget v0, p0, Lorg/eclipse/jdt/internal/core/dom/rewrite/SourceModifier;->tabWidth:I

    iget v1, p0, Lorg/eclipse/jdt/internal/core/dom/rewrite/SourceModifier;->indentWidth:I

    iget-object v3, p0, Lorg/eclipse/jdt/internal/core/dom/rewrite/SourceModifier;->destinationIndent:Ljava/lang/String;

    invoke-static {p1, v2, v0, v1, v3}, Lorg/eclipse/jdt/core/formatter/IndentManipulation;->getChangeIndentEdits(Ljava/lang/String;IIILjava/lang/String;)[Lorg/eclipse/text/edits/ReplaceEdit;

    move-result-object p1

    return-object p1
.end method
