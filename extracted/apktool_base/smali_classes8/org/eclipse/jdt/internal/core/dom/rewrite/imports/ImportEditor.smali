.class final Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/ImportEditor;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/ImportEditor$ImportEdits;,
        Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/ImportEditor$OriginalImportsCursor;
    }
.end annotation


# instance fields
.field private final commentReassigner:Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/RemovedImportCommentReassigner;

.field private final declarationWriter:Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/ImportDeclarationWriter;

.field private final fixAllLineDelimiters:Z

.field private final importGroupComparator:Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/ImportGroupComparator;

.field private final lineDelimiter:Ljava/lang/String;

.field private final lineDelimitersBetweenImportGroups:I

.field private final originalImportEntries:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/OriginalImportEntry;",
            ">;"
        }
    .end annotation
.end field

.field private final originalPrecedingImports:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/ImportName;",
            "Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/ImportEntry;",
            ">;"
        }
    .end annotation
.end field

.field private final rewriteSite:Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/RewriteSite;

.field private final twoLineDelimiters:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;ZILorg/eclipse/jdt/internal/core/dom/rewrite/imports/ImportGroupComparator;Ljava/util/List;Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/RewriteSite;Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/ImportDeclarationWriter;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "ZI",
            "Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/ImportGroupComparator;",
            "Ljava/util/List<",
            "Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/OriginalImportEntry;",
            ">;",
            "Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/RewriteSite;",
            "Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/ImportDeclarationWriter;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/ImportEditor;->lineDelimiter:Ljava/lang/String;

    invoke-virtual {p1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/ImportEditor;->twoLineDelimiters:Ljava/lang/String;

    iput-boolean p2, p0, Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/ImportEditor;->fixAllLineDelimiters:Z

    iput p3, p0, Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/ImportEditor;->lineDelimitersBetweenImportGroups:I

    iput-object p4, p0, Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/ImportEditor;->importGroupComparator:Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/ImportGroupComparator;

    iput-object p5, p0, Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/ImportEditor;->originalImportEntries:Ljava/util/List;

    iput-object p6, p0, Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/ImportEditor;->rewriteSite:Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/RewriteSite;

    iput-object p7, p0, Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/ImportEditor;->declarationWriter:Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/ImportDeclarationWriter;

    new-instance p1, Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/RemovedImportCommentReassigner;

    invoke-direct {p1, p5}, Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/RemovedImportCommentReassigner;-><init>(Ljava/util/List;)V

    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/ImportEditor;->commentReassigner:Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/RemovedImportCommentReassigner;

    if-eqz p2, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/ImportEditor;->originalPrecedingImports:Ljava/util/Map;

    goto :goto_0

    :cond_0
    invoke-static {p5}, Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/ImportEditor;->mapPrecedingImports(Ljava/util/Collection;)Ljava/util/Map;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/ImportEditor;->originalPrecedingImports:Ljava/util/Map;

    :goto_0
    return-void
.end method

.method private static containsFloatingComment(Ljava/lang/Iterable;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/ImportComment;",
            ">;)Z"
        }
    .end annotation

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 p0, 0x0

    return p0

    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/ImportComment;

    iget v0, v0, Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/ImportComment;->succeedingLineDelimiters:I

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    return v1
.end method

.method private createDelimiter(I)Ljava/lang/String;
    .locals 3

    const/4 v0, 0x1

    if-lt p1, v0, :cond_3

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/ImportEditor;->lineDelimiter:Ljava/lang/String;

    return-object p1

    :cond_0
    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    iget-object p1, p0, Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/ImportEditor;->twoLineDelimiters:Ljava/lang/String;

    return-object p1

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    :goto_0
    if-lt v1, p1, :cond_2

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_2
    iget-object v2, p0, Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/ImportEditor;->lineDelimiter:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method private static deleteRemainingText(Lorg/eclipse/jface/text/IRegion;Ljava/util/Collection;)Ljava/util/Collection;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/eclipse/jface/text/IRegion;",
            "Ljava/util/Collection<",
            "Lorg/eclipse/text/edits/TextEdit;",
            ">;)",
            "Ljava/util/Collection<",
            "Lorg/eclipse/text/edits/TextEdit;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    new-instance p1, Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/ImportEditor$1;

    invoke-direct {p1}, Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/ImportEditor$1;-><init>()V

    invoke-static {v0, p1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    invoke-interface {p0}, Lorg/eclipse/jface/text/IRegion;->getOffset()I

    move-result p1

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-interface {p0}, Lorg/eclipse/jface/text/IRegion;->getOffset()I

    move-result v0

    invoke-interface {p0}, Lorg/eclipse/jface/text/IRegion;->getLength()I

    move-result p0

    add-int/2addr v0, p0

    if-ge p1, v0, :cond_0

    new-instance p0, Lorg/eclipse/text/edits/DeleteEdit;

    sub-int/2addr v0, p1

    invoke-direct {p0, p1, v0}, Lorg/eclipse/text/edits/DeleteEdit;-><init>(II)V

    invoke-interface {v1, p0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    :cond_0
    return-object v1

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/eclipse/text/edits/TextEdit;

    invoke-virtual {v2}, Lorg/eclipse/text/edits/TextEdit;->getOffset()I

    move-result v3

    if-le v3, p1, :cond_2

    new-instance v3, Lorg/eclipse/text/edits/DeleteEdit;

    invoke-virtual {v2}, Lorg/eclipse/text/edits/TextEdit;->getOffset()I

    move-result v4

    sub-int/2addr v4, p1

    invoke-direct {v3, p1, v4}, Lorg/eclipse/text/edits/DeleteEdit;-><init>(II)V

    invoke-interface {v1, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    :cond_2
    invoke-virtual {v2}, Lorg/eclipse/text/edits/TextEdit;->getOffset()I

    move-result v3

    invoke-virtual {v2}, Lorg/eclipse/text/edits/TextEdit;->getLength()I

    move-result v2

    add-int/2addr v3, v2

    invoke-static {p1, v3}, Ljava/lang/Math;->max(II)I

    move-result p1

    goto :goto_0
.end method

.method private determineEditsForImports(Lorg/eclipse/jface/text/IRegion;Ljava/util/Collection;)Ljava/util/Collection;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/eclipse/jface/text/IRegion;",
            "Ljava/util/Collection<",
            "Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/ImportEntry;",
            ">;)",
            "Ljava/util/Collection<",
            "Lorg/eclipse/text/edits/TextEdit;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/ImportEditor;->commentReassigner:Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/RemovedImportCommentReassigner;

    invoke-virtual {v1, p2}, Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/RemovedImportCommentReassigner;->reassignComments(Ljava/util/Collection;)Ljava/util/Map;

    move-result-object v1

    new-instance v2, Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/ImportEditor$OriginalImportsCursor;

    invoke-interface {p1}, Lorg/eclipse/jface/text/IRegion;->getOffset()I

    move-result v3

    iget-object v4, p0, Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/ImportEditor;->originalImportEntries:Ljava/util/List;

    invoke-direct {v2, v3, v4}, Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/ImportEditor$OriginalImportsCursor;-><init>(ILjava/util/Collection;)V

    invoke-direct {p0, v2, p2, v1}, Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/ImportEditor;->placeResultantImports(Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/ImportEditor$OriginalImportsCursor;Ljava/util/Collection;Ljava/util/Map;)Ljava/util/Collection;

    move-result-object p2

    invoke-interface {v0, p2}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    invoke-static {p1, v0}, Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/ImportEditor;->deleteRemainingText(Lorg/eclipse/jface/text/IRegion;Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    new-instance p1, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result p2

    invoke-direct {p1, p2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_0
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    return-object p1

    :cond_1
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/eclipse/text/edits/TextEdit;

    instance-of v1, v0, Lorg/eclipse/text/edits/RangeMarker;

    if-nez v1, :cond_0

    invoke-interface {p1, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private determineNewDelimiter(Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/ImportEntry;Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/ImportEntry;Ljava/util/Collection;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/ImportEntry;",
            "Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/ImportEntry;",
            "Ljava/util/Collection<",
            "Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/ImportComment;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    if-nez p1, :cond_0

    const-string p1, ""

    return-object p1

    :cond_0
    invoke-interface {p3}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    xor-int/lit8 v1, v0, 0x1

    invoke-direct {p0, p1, p2, v1}, Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/ImportEditor;->needsStandardDelimiter(Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/ImportEntry;Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/ImportEntry;Z)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return-object v2

    :cond_1
    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/ImportEntry;->isOriginal()Z

    move-result p3

    if-eqz p3, :cond_3

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/ImportEntry;->asOriginalImportEntry()Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/OriginalImportEntry;

    move-result-object p3

    iget-object p3, p3, Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/OriginalImportEntry;->comments:Ljava/util/List;

    goto :goto_0

    :cond_3
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p3

    :goto_0
    invoke-static {p3}, Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/ImportEditor;->containsFloatingComment(Ljava/lang/Iterable;)Z

    move-result p3

    if-eqz p3, :cond_4

    const/4 p3, 0x2

    goto :goto_1

    :cond_4
    const/4 p3, 0x1

    :goto_1
    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/ImportEditor;->importGroupComparator:Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/ImportGroupComparator;

    iget-object p1, p1, Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/ImportEntry;->importName:Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/ImportName;

    iget-object v3, p2, Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/ImportEntry;->importName:Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/ImportName;

    invoke-virtual {v1, p1, v3}, Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/ImportGroupComparator;->compare(Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/ImportName;Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/ImportName;)I

    move-result p1

    if-eqz p1, :cond_5

    iget p1, p0, Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/ImportEditor;->lineDelimitersBetweenImportGroups:I

    invoke-static {p3, p1}, Ljava/lang/Math;->max(II)I

    move-result p3

    :cond_5
    invoke-direct {p0, p3}, Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/ImportEditor;->createDelimiter(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/ImportEntry;->isOriginal()Z

    move-result v1

    if-eqz v1, :cond_8

    if-eqz v0, :cond_8

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/ImportEntry;->asOriginalImportEntry()Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/OriginalImportEntry;

    move-result-object p2

    iget-object v0, p2, Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/OriginalImportEntry;->leadingDelimiter:Lorg/eclipse/jface/text/IRegion;

    iget p2, p2, Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/OriginalImportEntry;->precedingLineDelimiters:I

    if-ne p2, p3, :cond_8

    if-nez v0, :cond_6

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_7

    :cond_6
    if-eqz v0, :cond_8

    invoke-interface {v0}, Lorg/eclipse/jface/text/IRegion;->getLength()I

    move-result p2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p3

    if-eq p2, p3, :cond_7

    goto :goto_2

    :cond_7
    return-object v2

    :cond_8
    :goto_2
    return-object p1
.end method

.method private static mapPrecedingImports(Ljava/util/Collection;)Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+",
            "Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/ImportEntry;",
            ">;)",
            "Ljava/util/Map<",
            "Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/ImportName;",
            "Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/ImportEntry;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/IdentityHashMap;

    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/IdentityHashMap;-><init>(I)V

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_0

    return-object v0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/ImportEntry;

    iget-object v3, v2, Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/ImportEntry;->importName:Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/ImportName;

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v1, v2

    goto :goto_0
.end method

.method private moveOriginalImport(Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/OriginalImportEntry;I)Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/ImportEditor$ImportEdits;
    .locals 6

    new-instance v0, Lorg/eclipse/text/edits/MoveSourceEdit;

    iget-object v1, p1, Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/OriginalImportEntry;->leadingDelimiter:Lorg/eclipse/jface/text/IRegion;

    invoke-interface {v1}, Lorg/eclipse/jface/text/IRegion;->getOffset()I

    move-result v1

    iget-object v2, p1, Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/OriginalImportEntry;->leadingDelimiter:Lorg/eclipse/jface/text/IRegion;

    invoke-interface {v2}, Lorg/eclipse/jface/text/IRegion;->getLength()I

    move-result v2

    invoke-direct {v0, v1, v2}, Lorg/eclipse/text/edits/MoveSourceEdit;-><init>(II)V

    new-instance v1, Lorg/eclipse/text/edits/MoveTargetEdit;

    invoke-direct {v1, p2, v0}, Lorg/eclipse/text/edits/MoveTargetEdit;-><init>(ILorg/eclipse/text/edits/MoveSourceEdit;)V

    const/4 v2, 0x2

    new-array v3, v2, [Lorg/eclipse/text/edits/TextEdit;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    const/4 v0, 0x1

    aput-object v1, v3, v0

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    new-instance v3, Lorg/eclipse/text/edits/MoveSourceEdit;

    iget-object v5, p1, Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/OriginalImportEntry;->declarationAndComments:Lorg/eclipse/jface/text/IRegion;

    invoke-interface {v5}, Lorg/eclipse/jface/text/IRegion;->getOffset()I

    move-result v5

    iget-object p1, p1, Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/OriginalImportEntry;->declarationAndComments:Lorg/eclipse/jface/text/IRegion;

    invoke-interface {p1}, Lorg/eclipse/jface/text/IRegion;->getLength()I

    move-result p1

    invoke-direct {v3, v5, p1}, Lorg/eclipse/text/edits/MoveSourceEdit;-><init>(II)V

    new-instance p1, Lorg/eclipse/text/edits/MoveTargetEdit;

    invoke-direct {p1, p2, v3}, Lorg/eclipse/text/edits/MoveTargetEdit;-><init>(ILorg/eclipse/text/edits/MoveSourceEdit;)V

    new-array p2, v2, [Lorg/eclipse/text/edits/TextEdit;

    aput-object v3, p2, v4

    aput-object p1, p2, v0

    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    new-instance p2, Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/ImportEditor$ImportEdits;

    invoke-direct {p2, v1, p1}, Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/ImportEditor$ImportEdits;-><init>(Ljava/util/Collection;Ljava/util/Collection;)V

    return-object p2
.end method

.method private needsStandardDelimiter(Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/ImportEntry;Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/ImportEntry;Z)Z
    .locals 2

    iget-boolean v0, p0, Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/ImportEditor;->fixAllLineDelimiters:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/ImportEntry;->isOriginal()Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    if-eqz p3, :cond_2

    goto :goto_0

    :cond_2
    iget-object p3, p0, Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/ImportEditor;->originalPrecedingImports:Ljava/util/Map;

    iget-object p2, p2, Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/ImportEntry;->importName:Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/ImportName;

    invoke-interface {p3, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/ImportEntry;

    if-eqz p2, :cond_4

    iget-object p1, p1, Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/ImportEntry;->importName:Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/ImportName;

    iget-object p2, p2, Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/ImportEntry;->importName:Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/ImportName;

    if-eq p1, p2, :cond_3

    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    :cond_4
    :goto_0
    return v1
.end method

.method private placeNewImport(Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/ImportEntry;I)Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/ImportEditor$ImportEdits;
    .locals 3

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/ImportEditor;->declarationWriter:Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/ImportDeclarationWriter;

    iget-object p1, p1, Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/ImportEntry;->importName:Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/ImportName;

    invoke-virtual {v0, p1}, Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/ImportDeclarationWriter;->writeImportDeclaration(Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/ImportName;)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/ImportEditor$ImportEdits;

    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v1

    new-instance v2, Lorg/eclipse/text/edits/InsertEdit;

    invoke-direct {v2, p2, p1}, Lorg/eclipse/text/edits/InsertEdit;-><init>(ILjava/lang/String;)V

    invoke-static {v2}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/ImportEditor$ImportEdits;-><init>(Ljava/util/Collection;Ljava/util/Collection;)V

    return-object v0
.end method

.method private placeResultantImports(Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/ImportEditor$OriginalImportsCursor;Ljava/util/Collection;Ljava/util/Map;)Ljava/util/Collection;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/ImportEditor$OriginalImportsCursor;",
            "Ljava/util/Collection<",
            "Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/ImportEntry;",
            ">;",
            "Ljava/util/Map<",
            "Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/ImportEntry;",
            "Ljava/util/Collection<",
            "Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/ImportComment;",
            ">;>;)",
            "Ljava/util/Collection<",
            "Lorg/eclipse/text/edits/TextEdit;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p2

    const/4 v1, 0x0

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_0

    return-object v0

    :cond_0
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/ImportEntry;

    invoke-virtual {v2}, Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/ImportEntry;->isOriginal()Z

    move-result v3

    if-eqz v3, :cond_2

    :goto_1
    iget-object v3, p1, Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/ImportEditor$OriginalImportsCursor;->currentOriginalImport:Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/OriginalImportEntry;

    if-eqz v3, :cond_2

    if-ne v3, v2, :cond_1

    goto :goto_2

    :cond_1
    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/ImportEditor$OriginalImportsCursor;->advance()V

    goto :goto_1

    :cond_2
    :goto_2
    invoke-interface {p3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Collection;

    if-nez v3, :cond_3

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v3

    :cond_3
    invoke-virtual {v2}, Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/ImportEntry;->isOriginal()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-virtual {v2}, Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/ImportEntry;->asOriginalImportEntry()Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/OriginalImportEntry;

    move-result-object v4

    iget-object v5, p1, Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/ImportEditor$OriginalImportsCursor;->currentOriginalImport:Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/OriginalImportEntry;

    if-ne v5, v2, :cond_4

    invoke-direct {p0, v4}, Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/ImportEditor;->preserveStationaryImport(Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/OriginalImportEntry;)Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/ImportEditor$ImportEdits;

    move-result-object v4

    goto :goto_3

    :cond_4
    iget v5, p1, Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/ImportEditor$OriginalImportsCursor;->currentPosition:I

    invoke-direct {p0, v4, v5}, Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/ImportEditor;->moveOriginalImport(Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/OriginalImportEntry;I)Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/ImportEditor$ImportEdits;

    move-result-object v4

    goto :goto_3

    :cond_5
    iget v4, p1, Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/ImportEditor$OriginalImportsCursor;->currentPosition:I

    invoke-direct {p0, v2, v4}, Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/ImportEditor;->placeNewImport(Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/ImportEntry;I)Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/ImportEditor$ImportEdits;

    move-result-object v4

    :goto_3
    invoke-direct {p0, v1, v2, v3}, Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/ImportEditor;->determineNewDelimiter(Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/ImportEntry;Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/ImportEntry;Ljava/util/Collection;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_6

    iget-object v1, v4, Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/ImportEditor$ImportEdits;->leadingDelimiterEdits:Ljava/util/Collection;

    invoke-interface {v0, v1}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    goto :goto_4

    :cond_6
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_7

    new-instance v5, Lorg/eclipse/text/edits/InsertEdit;

    iget v6, p1, Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/ImportEditor$OriginalImportsCursor;->currentPosition:I

    invoke-direct {v5, v6, v1}, Lorg/eclipse/text/edits/InsertEdit;-><init>(ILjava/lang/String;)V

    invoke-interface {v0, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    :cond_7
    :goto_4
    invoke-interface {v3}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_9

    iget v1, p1, Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/ImportEditor$OriginalImportsCursor;->currentPosition:I

    invoke-direct {p0, v3, v1}, Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/ImportEditor;->relocateComments(Ljava/util/Collection;I)Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {v2}, Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/ImportEntry;->isOriginal()Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-virtual {v2}, Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/ImportEntry;->asOriginalImportEntry()Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/OriginalImportEntry;

    move-result-object v1

    iget-object v1, v1, Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/OriginalImportEntry;->comments:Ljava/util/List;

    invoke-static {v1}, Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/ImportEditor;->containsFloatingComment(Ljava/lang/Iterable;)Z

    move-result v1

    if-eqz v1, :cond_8

    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/ImportEditor;->twoLineDelimiters:Ljava/lang/String;

    goto :goto_5

    :cond_8
    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/ImportEditor;->lineDelimiter:Ljava/lang/String;

    :goto_5
    new-instance v3, Lorg/eclipse/text/edits/InsertEdit;

    iget v5, p1, Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/ImportEditor$OriginalImportsCursor;->currentPosition:I

    invoke-direct {v3, v5, v1}, Lorg/eclipse/text/edits/InsertEdit;-><init>(ILjava/lang/String;)V

    invoke-interface {v0, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    :cond_9
    iget-object v1, v4, Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/ImportEditor$ImportEdits;->commentAndDeclarationEdits:Ljava/util/Collection;

    invoke-interface {v0, v1}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    iget-object v1, p1, Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/ImportEditor$OriginalImportsCursor;->currentOriginalImport:Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/OriginalImportEntry;

    if-ne v2, v1, :cond_a

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/ImportEditor$OriginalImportsCursor;->advance()V

    :cond_a
    move-object v1, v2

    goto/16 :goto_0
.end method

.method private preserveStationaryImport(Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/OriginalImportEntry;)Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/ImportEditor$ImportEdits;
    .locals 4

    new-instance v0, Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/ImportEditor$ImportEdits;

    new-instance v1, Lorg/eclipse/text/edits/RangeMarker;

    iget-object v2, p1, Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/OriginalImportEntry;->leadingDelimiter:Lorg/eclipse/jface/text/IRegion;

    invoke-interface {v2}, Lorg/eclipse/jface/text/IRegion;->getOffset()I

    move-result v2

    iget-object v3, p1, Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/OriginalImportEntry;->leadingDelimiter:Lorg/eclipse/jface/text/IRegion;

    invoke-interface {v3}, Lorg/eclipse/jface/text/IRegion;->getLength()I

    move-result v3

    invoke-direct {v1, v2, v3}, Lorg/eclipse/text/edits/RangeMarker;-><init>(II)V

    invoke-static {v1}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v1

    new-instance v2, Lorg/eclipse/text/edits/RangeMarker;

    iget-object v3, p1, Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/OriginalImportEntry;->declarationAndComments:Lorg/eclipse/jface/text/IRegion;

    invoke-interface {v3}, Lorg/eclipse/jface/text/IRegion;->getOffset()I

    move-result v3

    iget-object p1, p1, Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/OriginalImportEntry;->declarationAndComments:Lorg/eclipse/jface/text/IRegion;

    invoke-interface {p1}, Lorg/eclipse/jface/text/IRegion;->getLength()I

    move-result p1

    invoke-direct {v2, v3, p1}, Lorg/eclipse/text/edits/RangeMarker;-><init>(II)V

    invoke-static {v2}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/ImportEditor$ImportEdits;-><init>(Ljava/util/Collection;Ljava/util/Collection;)V

    return-object v0
.end method

.method private relocateComments(Ljava/util/Collection;I)Ljava/util/Collection;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/ImportComment;",
            ">;I)",
            "Ljava/util/Collection<",
            "Lorg/eclipse/text/edits/TextEdit;",
            ">;"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    return-object p1

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v1

    mul-int/lit8 v1, v1, 0x3

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v1, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_1

    return-object v0

    :cond_1
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/ImportComment;

    new-instance v3, Lorg/eclipse/text/edits/MoveSourceEdit;

    iget-object v4, v2, Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/ImportComment;->region:Lorg/eclipse/jface/text/IRegion;

    invoke-interface {v4}, Lorg/eclipse/jface/text/IRegion;->getOffset()I

    move-result v4

    iget-object v5, v2, Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/ImportComment;->region:Lorg/eclipse/jface/text/IRegion;

    invoke-interface {v5}, Lorg/eclipse/jface/text/IRegion;->getLength()I

    move-result v5

    invoke-direct {v3, v4, v5}, Lorg/eclipse/text/edits/MoveSourceEdit;-><init>(II)V

    invoke-interface {v0, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    if-eqz v1, :cond_3

    iget v1, v1, Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/ImportComment;->succeedingLineDelimiters:I

    const/4 v4, 0x1

    if-le v1, v4, :cond_2

    const/4 v4, 0x2

    :cond_2
    new-instance v1, Lorg/eclipse/text/edits/InsertEdit;

    invoke-direct {p0, v4}, Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/ImportEditor;->createDelimiter(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, p2, v4}, Lorg/eclipse/text/edits/InsertEdit;-><init>(ILjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    :cond_3
    new-instance v1, Lorg/eclipse/text/edits/MoveTargetEdit;

    invoke-direct {v1, p2, v3}, Lorg/eclipse/text/edits/MoveTargetEdit;-><init>(ILorg/eclipse/text/edits/MoveSourceEdit;)V

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    move-object v1, v2

    goto :goto_0
.end method


# virtual methods
.method public createTextEdit(Ljava/util/Collection;)Lorg/eclipse/text/edits/TextEdit;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/ImportEntry;",
            ">;)",
            "Lorg/eclipse/text/edits/TextEdit;"
        }
    .end annotation

    new-instance v0, Lorg/eclipse/text/edits/MultiTextEdit;

    invoke-direct {v0}, Lorg/eclipse/text/edits/MultiTextEdit;-><init>()V

    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/ImportEditor;->rewriteSite:Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/RewriteSite;

    iget-object v1, v1, Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/RewriteSite;->surroundingRegion:Lorg/eclipse/jface/text/IRegion;

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x2

    if-eqz v2, :cond_2

    iget-object p1, p0, Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/ImportEditor;->originalImportEntries:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_6

    iget-object p1, p0, Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/ImportEditor;->rewriteSite:Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/RewriteSite;

    iget-boolean v2, p1, Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/RewriteSite;->hasPrecedingElements:Z

    if-eqz v2, :cond_1

    iget-boolean p1, p1, Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/RewriteSite;->hasSucceedingElements:Z

    if-eqz p1, :cond_0

    move v3, v4

    :cond_0
    invoke-direct {p0, v3}, Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/ImportEditor;->createDelimiter(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_1
    const-string p1, ""

    :goto_0
    new-instance v2, Lorg/eclipse/text/edits/ReplaceEdit;

    invoke-interface {v1}, Lorg/eclipse/jface/text/IRegion;->getOffset()I

    move-result v3

    invoke-interface {v1}, Lorg/eclipse/jface/text/IRegion;->getLength()I

    move-result v1

    invoke-direct {v2, v3, v1, p1}, Lorg/eclipse/text/edits/ReplaceEdit;-><init>(IILjava/lang/String;)V

    invoke-virtual {v0, v2}, Lorg/eclipse/text/edits/TextEdit;->addChild(Lorg/eclipse/text/edits/TextEdit;)V

    goto :goto_1

    :cond_2
    iget-object v2, p0, Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/ImportEditor;->originalImportEntries:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-direct {p0, v1, p1}, Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/ImportEditor;->determineEditsForImports(Lorg/eclipse/jface/text/IRegion;Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object p1

    iget-object v2, p0, Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/ImportEditor;->rewriteSite:Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/RewriteSite;

    iget-boolean v2, v2, Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/RewriteSite;->hasPrecedingElements:Z

    if-eqz v2, :cond_3

    new-instance v2, Lorg/eclipse/text/edits/InsertEdit;

    invoke-interface {v1}, Lorg/eclipse/jface/text/IRegion;->getOffset()I

    move-result v5

    invoke-direct {p0, v4}, Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/ImportEditor;->createDelimiter(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v2, v5, v6}, Lorg/eclipse/text/edits/InsertEdit;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v2}, Lorg/eclipse/text/edits/TextEdit;->addChild(Lorg/eclipse/text/edits/TextEdit;)V

    :cond_3
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v2

    new-array v2, v2, [Lorg/eclipse/text/edits/TextEdit;

    invoke-interface {p1, v2}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lorg/eclipse/text/edits/TextEdit;

    invoke-virtual {v0, p1}, Lorg/eclipse/text/edits/TextEdit;->addChildren([Lorg/eclipse/text/edits/TextEdit;)V

    iget-object p1, p0, Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/ImportEditor;->rewriteSite:Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/RewriteSite;

    iget-boolean p1, p1, Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/RewriteSite;->hasSucceedingElements:Z

    if-eqz p1, :cond_4

    move v3, v4

    :cond_4
    invoke-direct {p0, v3}, Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/ImportEditor;->createDelimiter(I)Ljava/lang/String;

    move-result-object p1

    new-instance v2, Lorg/eclipse/text/edits/InsertEdit;

    invoke-interface {v1}, Lorg/eclipse/jface/text/IRegion;->getOffset()I

    move-result v1

    invoke-direct {v2, v1, p1}, Lorg/eclipse/text/edits/InsertEdit;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v2}, Lorg/eclipse/text/edits/TextEdit;->addChild(Lorg/eclipse/text/edits/TextEdit;)V

    goto :goto_1

    :cond_5
    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/ImportEditor;->rewriteSite:Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/RewriteSite;

    iget-object v1, v1, Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/RewriteSite;->importsRegion:Lorg/eclipse/jface/text/IRegion;

    invoke-direct {p0, v1, p1}, Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/ImportEditor;->determineEditsForImports(Lorg/eclipse/jface/text/IRegion;Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v1

    new-array v1, v1, [Lorg/eclipse/text/edits/TextEdit;

    invoke-interface {p1, v1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lorg/eclipse/text/edits/TextEdit;

    invoke-virtual {v0, p1}, Lorg/eclipse/text/edits/TextEdit;->addChildren([Lorg/eclipse/text/edits/TextEdit;)V

    :cond_6
    :goto_1
    return-object v0
.end method
