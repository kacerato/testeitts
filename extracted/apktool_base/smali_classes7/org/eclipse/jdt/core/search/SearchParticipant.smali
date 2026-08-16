.class public abstract Lorg/eclipse/jdt/core/search/SearchParticipant;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private lastIndexLocation:Lorg/eclipse/core/runtime/IPath;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public beginSearching()V
    .locals 0

    return-void
.end method

.method public doneSearching()V
    .locals 0

    return-void
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    const-string v0, "Search participant"

    return-object v0
.end method

.method public abstract getDocument(Ljava/lang/String;)Lorg/eclipse/jdt/core/search/SearchDocument;
.end method

.method public abstract indexDocument(Lorg/eclipse/jdt/core/search/SearchDocument;Lorg/eclipse/core/runtime/IPath;)V
.end method

.method public indexResolvedDocument(Lorg/eclipse/jdt/core/search/SearchDocument;Lorg/eclipse/core/runtime/IPath;)V
    .locals 0

    return-void
.end method

.method public abstract locateMatches([Lorg/eclipse/jdt/core/search/SearchDocument;Lorg/eclipse/jdt/core/search/SearchPattern;Lorg/eclipse/jdt/core/search/IJavaSearchScope;Lorg/eclipse/jdt/core/search/SearchRequestor;Lorg/eclipse/core/runtime/IProgressMonitor;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/core/runtime/CoreException;
        }
    .end annotation
.end method

.method public removeIndex(Lorg/eclipse/core/runtime/IPath;)V
    .locals 1

    invoke-static {}, Lorg/eclipse/jdt/internal/core/JavaModelManager;->getIndexManager()Lorg/eclipse/jdt/internal/core/search/indexing/IndexManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/eclipse/jdt/internal/core/search/indexing/IndexManager;->removeIndexPath(Lorg/eclipse/core/runtime/IPath;)V

    return-void
.end method

.method public resolveDocument(Lorg/eclipse/jdt/core/search/SearchDocument;)V
    .locals 0

    return-void
.end method

.method public final scheduleDocumentIndexing(Lorg/eclipse/jdt/core/search/SearchDocument;Lorg/eclipse/core/runtime/IPath;)V
    .locals 5

    new-instance v0, Lorg/eclipse/core/runtime/Path;

    invoke-virtual {p1}, Lorg/eclipse/jdt/core/search/SearchDocument;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/eclipse/core/runtime/Path;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lorg/eclipse/jdt/internal/core/JavaModel;->getTarget(Lorg/eclipse/core/runtime/IPath;Z)Ljava/lang/Object;

    move-result-object v2

    instance-of v3, v2, Lorg/eclipse/core/resources/IResource;

    if-eqz v3, :cond_0

    check-cast v2, Lorg/eclipse/core/resources/IResource;

    invoke-interface {v2}, Lorg/eclipse/core/resources/IResource;->getProject()Lorg/eclipse/core/resources/IProject;

    move-result-object v0

    invoke-interface {v0}, Lorg/eclipse/core/resources/IProject;->getFullPath()Lorg/eclipse/core/runtime/IPath;

    move-result-object v0

    goto :goto_0

    :cond_0
    if-nez v2, :cond_1

    invoke-interface {v0, v1}, Lorg/eclipse/core/runtime/IPath;->removeLastSegments(I)Lorg/eclipse/core/runtime/IPath;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-static {}, Lorg/eclipse/jdt/internal/core/JavaModelManager;->getIndexManager()Lorg/eclipse/jdt/internal/core/search/indexing/IndexManager;

    move-result-object v2

    new-instance v3, Lorg/eclipse/jdt/internal/core/index/FileIndexLocation;

    invoke-interface {p2}, Lorg/eclipse/core/runtime/IPath;->toFile()Ljava/io/File;

    move-result-object v4

    invoke-direct {v3, v4, v1}, Lorg/eclipse/jdt/internal/core/index/FileIndexLocation;-><init>(Ljava/io/File;Z)V

    invoke-virtual {v2, v3, v0}, Lorg/eclipse/jdt/internal/core/search/indexing/IndexManager;->ensureIndexExists(Lorg/eclipse/jdt/internal/core/index/IndexLocation;Lorg/eclipse/core/runtime/IPath;)V

    invoke-virtual {v2, p1, v0, v3, p0}, Lorg/eclipse/jdt/internal/core/search/indexing/IndexManager;->scheduleDocumentIndexing(Lorg/eclipse/jdt/core/search/SearchDocument;Lorg/eclipse/core/runtime/IPath;Lorg/eclipse/jdt/internal/core/index/IndexLocation;Lorg/eclipse/jdt/core/search/SearchParticipant;)V

    iget-object p1, p0, Lorg/eclipse/jdt/core/search/SearchParticipant;->lastIndexLocation:Lorg/eclipse/core/runtime/IPath;

    invoke-virtual {p2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    invoke-virtual {v2, p2, v0}, Lorg/eclipse/jdt/internal/core/search/indexing/IndexManager;->updateParticipant(Lorg/eclipse/core/runtime/IPath;Lorg/eclipse/core/runtime/IPath;)V

    iput-object p2, p0, Lorg/eclipse/jdt/core/search/SearchParticipant;->lastIndexLocation:Lorg/eclipse/core/runtime/IPath;

    :cond_2
    return-void
.end method

.method public abstract selectIndexes(Lorg/eclipse/jdt/core/search/SearchPattern;Lorg/eclipse/jdt/core/search/IJavaSearchScope;)[Lorg/eclipse/core/runtime/IPath;
.end method
