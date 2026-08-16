.class Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFormatter$1;
.super Lorg/eclipse/jface/text/DefaultPositionUpdater;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFormatter;->createDocument(Ljava/lang/String;[Lorg/eclipse/jface/text/Position;)Lorg/eclipse/jface/text/Document;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/eclipse/jface/text/DefaultPositionUpdater;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public notDeleted()Z
    .locals 3

    iget v0, p0, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFormatter$1;->fOffset:I

    iget v1, p0, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFormatter$1;->fLength:I

    add-int/2addr v1, v0

    iget-object v2, p0, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFormatter$1;->fPosition:Lorg/eclipse/jface/text/Position;

    iget v2, v2, Lorg/eclipse/jface/text/Position;->offset:I

    if-ge v0, v2, :cond_0

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFormatter$1;->fPosition:Lorg/eclipse/jface/text/Position;

    iget v0, v0, Lorg/eclipse/jface/text/Position;->offset:I

    iget-object v2, p0, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFormatter$1;->fPosition:Lorg/eclipse/jface/text/Position;

    iget v2, v2, Lorg/eclipse/jface/text/Position;->length:I

    add-int/2addr v0, v2

    if-ge v0, v1, :cond_0

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFormatter$1;->fPosition:Lorg/eclipse/jface/text/Position;

    iput v1, v0, Lorg/eclipse/jface/text/Position;->offset:I

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method
