.class Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/OriginalImportEntry;
.super Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/ImportEntry;
.source "SourceFile"


# instance fields
.field final comments:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/ImportComment;",
            ">;"
        }
    .end annotation
.end field

.field final declarationAndComments:Lorg/eclipse/jface/text/IRegion;

.field final leadingDelimiter:Lorg/eclipse/jface/text/IRegion;

.field final precedingLineDelimiters:I


# direct methods
.method public constructor <init>(Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/ImportName;Ljava/util/Collection;ILorg/eclipse/jface/text/IRegion;Lorg/eclipse/jface/text/IRegion;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/ImportName;",
            "Ljava/util/Collection<",
            "Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/ImportComment;",
            ">;I",
            "Lorg/eclipse/jface/text/IRegion;",
            "Lorg/eclipse/jface/text/IRegion;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/ImportEntry;-><init>(Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/ImportName;)V

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/OriginalImportEntry;->comments:Ljava/util/List;

    iput p3, p0, Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/OriginalImportEntry;->precedingLineDelimiters:I

    iput-object p4, p0, Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/OriginalImportEntry;->leadingDelimiter:Lorg/eclipse/jface/text/IRegion;

    iput-object p5, p0, Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/OriginalImportEntry;->declarationAndComments:Lorg/eclipse/jface/text/IRegion;

    return-void
.end method


# virtual methods
.method public asOriginalImportEntry()Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/OriginalImportEntry;
    .locals 0

    return-object p0
.end method

.method public isOriginal()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/ImportEntry;->importName:Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/ImportName;

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "OriginalImportEntry(%s)"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
