.class Lorg/eclipse/jdt/internal/core/search/indexing/IndexManager$1;
.super Lorg/eclipse/jdt/internal/core/search/indexing/IndexRequest;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/eclipse/jdt/internal/core/search/indexing/IndexManager;->scheduleDocumentIndexing(Lorg/eclipse/jdt/core/search/SearchDocument;Lorg/eclipse/core/runtime/IPath;Lorg/eclipse/jdt/internal/core/index/IndexLocation;Lorg/eclipse/jdt/core/search/SearchParticipant;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/eclipse/jdt/internal/core/search/indexing/IndexManager;

.field private final synthetic val$indexLocation:Lorg/eclipse/jdt/internal/core/index/IndexLocation;

.field private final synthetic val$searchDocument:Lorg/eclipse/jdt/core/search/SearchDocument;

.field private final synthetic val$searchParticipant:Lorg/eclipse/jdt/core/search/SearchParticipant;


# direct methods
.method public constructor <init>(Lorg/eclipse/jdt/internal/core/search/indexing/IndexManager;Lorg/eclipse/core/runtime/IPath;Lorg/eclipse/jdt/internal/core/search/indexing/IndexManager;Lorg/eclipse/jdt/internal/core/index/IndexLocation;Lorg/eclipse/jdt/core/search/SearchDocument;Lorg/eclipse/jdt/core/search/SearchParticipant;)V
    .locals 0

    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/search/indexing/IndexManager$1;->this$0:Lorg/eclipse/jdt/internal/core/search/indexing/IndexManager;

    iput-object p4, p0, Lorg/eclipse/jdt/internal/core/search/indexing/IndexManager$1;->val$indexLocation:Lorg/eclipse/jdt/internal/core/index/IndexLocation;

    iput-object p5, p0, Lorg/eclipse/jdt/internal/core/search/indexing/IndexManager$1;->val$searchDocument:Lorg/eclipse/jdt/core/search/SearchDocument;

    iput-object p6, p0, Lorg/eclipse/jdt/internal/core/search/indexing/IndexManager$1;->val$searchParticipant:Lorg/eclipse/jdt/core/search/SearchParticipant;

    invoke-direct {p0, p2, p3}, Lorg/eclipse/jdt/internal/core/search/indexing/IndexRequest;-><init>(Lorg/eclipse/core/runtime/IPath;Lorg/eclipse/jdt/internal/core/search/indexing/IndexManager;)V

    return-void
.end method


# virtual methods
.method public execute(Lorg/eclipse/core/runtime/IProgressMonitor;)Z
    .locals 6

    iget-boolean v0, p0, Lorg/eclipse/jdt/internal/core/search/indexing/IndexRequest;->isCancelled:Z

    const/4 v1, 0x1

    if-nez v0, :cond_4

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lorg/eclipse/core/runtime/IProgressMonitor;->isCanceled()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lorg/eclipse/jdt/internal/core/search/indexing/IndexManager$1;->this$0:Lorg/eclipse/jdt/internal/core/search/indexing/IndexManager;

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/search/indexing/IndexRequest;->containerPath:Lorg/eclipse/core/runtime/IPath;

    iget-object v2, p0, Lorg/eclipse/jdt/internal/core/search/indexing/IndexManager$1;->val$indexLocation:Lorg/eclipse/jdt/internal/core/index/IndexLocation;

    invoke-virtual {p1, v0, v2, v1, v1}, Lorg/eclipse/jdt/internal/core/search/indexing/IndexManager;->getIndex(Lorg/eclipse/core/runtime/IPath;Lorg/eclipse/jdt/internal/core/index/IndexLocation;ZZ)Lorg/eclipse/jdt/internal/core/index/Index;

    move-result-object p1

    if-nez p1, :cond_1

    return v1

    :cond_1
    iget-object v0, p1, Lorg/eclipse/jdt/internal/core/index/Index;->monitor:Lorg/eclipse/jdt/internal/core/search/indexing/ReadWriteMonitor;

    if-nez v0, :cond_2

    return v1

    :cond_2
    new-instance v2, Lorg/eclipse/core/runtime/Path;

    iget-object v3, p0, Lorg/eclipse/jdt/internal/core/search/indexing/IndexManager$1;->val$indexLocation:Lorg/eclipse/jdt/internal/core/index/IndexLocation;

    invoke-virtual {v3}, Lorg/eclipse/jdt/internal/core/index/IndexLocation;->getCanonicalFilePath()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/eclipse/core/runtime/Path;-><init>(Ljava/lang/String;)V

    :try_start_0
    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/core/search/indexing/ReadWriteMonitor;->enterWrite()V

    iget-object v3, p0, Lorg/eclipse/jdt/internal/core/search/indexing/IndexManager$1;->this$0:Lorg/eclipse/jdt/internal/core/search/indexing/IndexManager;

    iget-object v4, p0, Lorg/eclipse/jdt/internal/core/search/indexing/IndexManager$1;->val$searchDocument:Lorg/eclipse/jdt/core/search/SearchDocument;

    iget-object v5, p0, Lorg/eclipse/jdt/internal/core/search/indexing/IndexManager$1;->val$searchParticipant:Lorg/eclipse/jdt/core/search/SearchParticipant;

    invoke-virtual {v3, v4, v5, p1, v2}, Lorg/eclipse/jdt/internal/core/search/indexing/IndexManager;->indexDocument(Lorg/eclipse/jdt/core/search/SearchDocument;Lorg/eclipse/jdt/core/search/SearchParticipant;Lorg/eclipse/jdt/internal/core/index/Index;Lorg/eclipse/core/runtime/IPath;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/core/search/indexing/ReadWriteMonitor;->exitWrite()V

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/search/indexing/IndexManager$1;->val$searchDocument:Lorg/eclipse/jdt/core/search/SearchDocument;

    invoke-virtual {v0}, Lorg/eclipse/jdt/core/search/SearchDocument;->shouldIndexResolvedDocument()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/search/indexing/IndexManager$1;->this$0:Lorg/eclipse/jdt/internal/core/search/indexing/IndexManager;

    iget-object v3, p0, Lorg/eclipse/jdt/internal/core/search/indexing/IndexManager$1;->val$searchDocument:Lorg/eclipse/jdt/core/search/SearchDocument;

    iget-object v4, p0, Lorg/eclipse/jdt/internal/core/search/indexing/IndexManager$1;->val$searchParticipant:Lorg/eclipse/jdt/core/search/SearchParticipant;

    invoke-virtual {v0, v3, v4, p1, v2}, Lorg/eclipse/jdt/internal/core/search/indexing/IndexManager;->indexResolvedDocument(Lorg/eclipse/jdt/core/search/SearchDocument;Lorg/eclipse/jdt/core/search/SearchParticipant;Lorg/eclipse/jdt/internal/core/index/Index;Lorg/eclipse/core/runtime/IPath;)V

    :cond_3
    return v1

    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/core/search/indexing/ReadWriteMonitor;->exitWrite()V

    throw p1

    :cond_4
    :goto_0
    return v1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "indexing "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/search/indexing/IndexManager$1;->val$searchDocument:Lorg/eclipse/jdt/core/search/SearchDocument;

    invoke-virtual {v1}, Lorg/eclipse/jdt/core/search/SearchDocument;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public waitNeeded()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
