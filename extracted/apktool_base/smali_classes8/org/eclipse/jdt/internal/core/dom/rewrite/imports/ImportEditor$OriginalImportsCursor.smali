.class final Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/ImportEditor$OriginalImportsCursor;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/ImportEditor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "OriginalImportsCursor"
.end annotation


# instance fields
.field currentOriginalImport:Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/OriginalImportEntry;

.field currentPosition:I

.field private final originalImportIterator:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator<",
            "Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/OriginalImportEntry;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(ILjava/util/Collection;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Collection<",
            "Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/OriginalImportEntry;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p2

    iput-object p2, p0, Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/ImportEditor$OriginalImportsCursor;->originalImportIterator:Ljava/util/Iterator;

    iput p1, p0, Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/ImportEditor$OriginalImportsCursor;->currentPosition:I

    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/OriginalImportEntry;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/ImportEditor$OriginalImportsCursor;->currentOriginalImport:Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/OriginalImportEntry;

    return-void
.end method


# virtual methods
.method public advance()V
    .locals 2

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/ImportEditor$OriginalImportsCursor;->currentOriginalImport:Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/OriginalImportEntry;

    iget-object v0, v0, Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/OriginalImportEntry;->declarationAndComments:Lorg/eclipse/jface/text/IRegion;

    invoke-interface {v0}, Lorg/eclipse/jface/text/IRegion;->getOffset()I

    move-result v1

    invoke-interface {v0}, Lorg/eclipse/jface/text/IRegion;->getLength()I

    move-result v0

    add-int/2addr v1, v0

    iput v1, p0, Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/ImportEditor$OriginalImportsCursor;->currentPosition:I

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/ImportEditor$OriginalImportsCursor;->originalImportIterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/ImportEditor$OriginalImportsCursor;->originalImportIterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/OriginalImportEntry;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/ImportEditor$OriginalImportsCursor;->currentOriginalImport:Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/OriginalImportEntry;

    return-void
.end method
