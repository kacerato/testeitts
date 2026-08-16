.class public Lorg/eclipse/jdt/internal/core/search/JavaSearchParticipant;
.super Lorg/eclipse/jdt/core/search/SearchParticipant;
.source "SourceFile"


# instance fields
.field private indexSelector:Ljava/lang/ThreadLocal;

.field private sourceIndexer:Lorg/eclipse/jdt/internal/core/search/indexing/SourceIndexer;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lorg/eclipse/jdt/core/search/SearchParticipant;-><init>()V

    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    iput-object v0, p0, Lorg/eclipse/jdt/internal/core/search/JavaSearchParticipant;->indexSelector:Ljava/lang/ThreadLocal;

    return-void
.end method


# virtual methods
.method public beginSearching()V
    .locals 2

    invoke-super {p0}, Lorg/eclipse/jdt/core/search/SearchParticipant;->beginSearching()V

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/search/JavaSearchParticipant;->indexSelector:Ljava/lang/ThreadLocal;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    return-void
.end method

.method public doneSearching()V
    .locals 2

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/search/JavaSearchParticipant;->indexSelector:Ljava/lang/ThreadLocal;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    invoke-super {p0}, Lorg/eclipse/jdt/core/search/SearchParticipant;->doneSearching()V

    return-void
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    const-string v0, "Java"

    return-object v0
.end method

.method public getDocument(Ljava/lang/String;)Lorg/eclipse/jdt/core/search/SearchDocument;
    .locals 1

    new-instance v0, Lorg/eclipse/jdt/internal/core/search/JavaSearchDocument;

    invoke-direct {v0, p1, p0}, Lorg/eclipse/jdt/internal/core/search/JavaSearchDocument;-><init>(Ljava/lang/String;Lorg/eclipse/jdt/core/search/SearchParticipant;)V

    return-object v0
.end method

.method public indexDocument(Lorg/eclipse/jdt/core/search/SearchDocument;Lorg/eclipse/core/runtime/IPath;)V
    .locals 1

    invoke-virtual {p1}, Lorg/eclipse/jdt/core/search/SearchDocument;->removeAllIndexEntries()V

    invoke-virtual {p1}, Lorg/eclipse/jdt/core/search/SearchDocument;->getPath()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lorg/eclipse/jdt/internal/core/util/Util;->isJavaLikeFileName(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance p2, Lorg/eclipse/jdt/internal/core/search/indexing/SourceIndexer;

    invoke-direct {p2, p1}, Lorg/eclipse/jdt/internal/core/search/indexing/SourceIndexer;-><init>(Lorg/eclipse/jdt/core/search/SearchDocument;)V

    iput-object p2, p0, Lorg/eclipse/jdt/internal/core/search/JavaSearchParticipant;->sourceIndexer:Lorg/eclipse/jdt/internal/core/search/indexing/SourceIndexer;

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/core/search/indexing/SourceIndexer;->indexDocument()V

    goto :goto_0

    :cond_0
    invoke-static {p2}, Lorg/eclipse/jdt/internal/compiler/util/Util;->isClassFileName(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance p2, Lorg/eclipse/jdt/internal/core/search/indexing/BinaryIndexer;

    invoke-direct {p2, p1}, Lorg/eclipse/jdt/internal/core/search/indexing/BinaryIndexer;-><init>(Lorg/eclipse/jdt/core/search/SearchDocument;)V

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/core/search/indexing/BinaryIndexer;->indexDocument()V

    goto :goto_0

    :cond_1
    const-string v0, "Automatic-Module-Name"

    invoke-virtual {p2, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_2

    new-instance p2, Lorg/eclipse/jdt/internal/core/search/indexing/ManifestIndexer;

    invoke-direct {p2, p1}, Lorg/eclipse/jdt/internal/core/search/indexing/ManifestIndexer;-><init>(Lorg/eclipse/jdt/core/search/SearchDocument;)V

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/core/search/indexing/ManifestIndexer;->indexDocument()V

    :cond_2
    :goto_0
    return-void
.end method

.method public indexResolvedDocument(Lorg/eclipse/jdt/core/search/SearchDocument;Lorg/eclipse/core/runtime/IPath;)V
    .locals 0

    invoke-virtual {p1}, Lorg/eclipse/jdt/core/search/SearchDocument;->getPath()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/eclipse/jdt/internal/core/util/Util;->isJavaLikeFileName(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lorg/eclipse/jdt/internal/core/search/JavaSearchParticipant;->sourceIndexer:Lorg/eclipse/jdt/internal/core/search/indexing/SourceIndexer;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/core/search/indexing/SourceIndexer;->indexResolvedDocument()V

    :cond_0
    const/4 p1, 0x0

    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/search/JavaSearchParticipant;->sourceIndexer:Lorg/eclipse/jdt/internal/core/search/indexing/SourceIndexer;

    :cond_1
    return-void
.end method

.method public locateMatches([Lorg/eclipse/jdt/core/search/SearchDocument;Lorg/eclipse/jdt/core/search/SearchPattern;Lorg/eclipse/jdt/core/search/IJavaSearchScope;Lorg/eclipse/jdt/core/search/SearchRequestor;Lorg/eclipse/core/runtime/IProgressMonitor;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/core/runtime/CoreException;
        }
    .end annotation

    new-instance v0, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocator;

    invoke-direct {v0, p2, p4, p3, p5}, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocator;-><init>(Lorg/eclipse/jdt/core/search/SearchPattern;Lorg/eclipse/jdt/core/search/SearchRequestor;Lorg/eclipse/jdt/core/search/IJavaSearchScope;Lorg/eclipse/core/runtime/IProgressMonitor;)V

    if-eqz p5, :cond_1

    invoke-interface {p5}, Lorg/eclipse/core/runtime/IProgressMonitor;->isCanceled()Z

    move-result p2

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Lorg/eclipse/core/runtime/OperationCanceledException;

    invoke-direct {p1}, Lorg/eclipse/core/runtime/OperationCanceledException;-><init>()V

    throw p1

    :cond_1
    :goto_0
    invoke-virtual {v0, p1}, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocator;->locateMatches([Lorg/eclipse/jdt/core/search/SearchDocument;)V

    return-void
.end method

.method public resolveDocument(Lorg/eclipse/jdt/core/search/SearchDocument;)V
    .locals 0

    invoke-virtual {p1}, Lorg/eclipse/jdt/core/search/SearchDocument;->getPath()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/eclipse/jdt/internal/core/util/Util;->isJavaLikeFileName(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lorg/eclipse/jdt/internal/core/search/JavaSearchParticipant;->sourceIndexer:Lorg/eclipse/jdt/internal/core/search/indexing/SourceIndexer;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/core/search/indexing/SourceIndexer;->resolveDocument()V

    :cond_0
    return-void
.end method

.method public selectIndexURLs(Lorg/eclipse/jdt/core/search/SearchPattern;Lorg/eclipse/jdt/core/search/IJavaSearchScope;)[Lorg/eclipse/jdt/internal/core/index/IndexLocation;
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/search/JavaSearchParticipant;->indexSelector:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jdt/internal/core/search/IndexSelector;

    if-nez v0, :cond_0

    new-instance v0, Lorg/eclipse/jdt/internal/core/search/IndexSelector;

    invoke-direct {v0, p2, p1}, Lorg/eclipse/jdt/internal/core/search/IndexSelector;-><init>(Lorg/eclipse/jdt/core/search/IJavaSearchScope;Lorg/eclipse/jdt/core/search/SearchPattern;)V

    iget-object p1, p0, Lorg/eclipse/jdt/internal/core/search/JavaSearchParticipant;->indexSelector:Ljava/lang/ThreadLocal;

    invoke-virtual {p1, v0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    :cond_0
    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/core/search/IndexSelector;->getIndexLocations()[Lorg/eclipse/jdt/internal/core/index/IndexLocation;

    move-result-object p1

    return-object p1
.end method

.method public selectIndexes(Lorg/eclipse/jdt/core/search/SearchPattern;Lorg/eclipse/jdt/core/search/IJavaSearchScope;)[Lorg/eclipse/core/runtime/IPath;
    .locals 3

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/search/JavaSearchParticipant;->indexSelector:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jdt/internal/core/search/IndexSelector;

    if-nez v0, :cond_0

    new-instance v0, Lorg/eclipse/jdt/internal/core/search/IndexSelector;

    invoke-direct {v0, p2, p1}, Lorg/eclipse/jdt/internal/core/search/IndexSelector;-><init>(Lorg/eclipse/jdt/core/search/IJavaSearchScope;Lorg/eclipse/jdt/core/search/SearchPattern;)V

    iget-object p1, p0, Lorg/eclipse/jdt/internal/core/search/JavaSearchParticipant;->indexSelector:Ljava/lang/ThreadLocal;

    invoke-virtual {p1, v0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    :cond_0
    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/core/search/IndexSelector;->getIndexLocations()[Lorg/eclipse/jdt/internal/core/index/IndexLocation;

    move-result-object p1

    array-length p2, p1

    new-array p2, p2, [Lorg/eclipse/core/runtime/IPath;

    const/4 v0, 0x0

    :goto_0
    array-length v1, p1

    if-lt v0, v1, :cond_1

    return-object p2

    :cond_1
    new-instance v1, Lorg/eclipse/core/runtime/Path;

    aget-object v2, p1, v0

    invoke-virtual {v2}, Lorg/eclipse/jdt/internal/core/index/IndexLocation;->getIndexFile()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/eclipse/core/runtime/Path;-><init>(Ljava/lang/String;)V

    aput-object v1, p2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method
