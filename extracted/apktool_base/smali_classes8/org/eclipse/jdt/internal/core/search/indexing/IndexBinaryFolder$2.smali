.class Lorg/eclipse/jdt/internal/core/search/indexing/IndexBinaryFolder$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/eclipse/core/resources/IResourceProxyVisitor;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/eclipse/jdt/internal/core/search/indexing/IndexBinaryFolder;->execute(Lorg/eclipse/core/runtime/IProgressMonitor;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/eclipse/jdt/internal/core/search/indexing/IndexBinaryFolder;

.field private final synthetic val$indexLastModified:J

.field private final synthetic val$indexedFileNames:Lorg/eclipse/jdt/internal/compiler/util/SimpleLookupTable;


# direct methods
.method public constructor <init>(Lorg/eclipse/jdt/internal/core/search/indexing/IndexBinaryFolder;Lorg/eclipse/jdt/internal/compiler/util/SimpleLookupTable;J)V
    .locals 0

    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/search/indexing/IndexBinaryFolder$2;->this$0:Lorg/eclipse/jdt/internal/core/search/indexing/IndexBinaryFolder;

    iput-object p2, p0, Lorg/eclipse/jdt/internal/core/search/indexing/IndexBinaryFolder$2;->val$indexedFileNames:Lorg/eclipse/jdt/internal/compiler/util/SimpleLookupTable;

    iput-wide p3, p0, Lorg/eclipse/jdt/internal/core/search/indexing/IndexBinaryFolder$2;->val$indexLastModified:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public visit(Lorg/eclipse/core/resources/IResourceProxy;)Z
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/core/runtime/CoreException;
        }
    .end annotation

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/search/indexing/IndexBinaryFolder$2;->this$0:Lorg/eclipse/jdt/internal/core/search/indexing/IndexBinaryFolder;

    iget-boolean v0, v0, Lorg/eclipse/jdt/internal/core/search/indexing/IndexRequest;->isCancelled:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    invoke-interface {p1}, Lorg/eclipse/core/resources/IResourceProxy;->getType()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_4

    invoke-interface {p1}, Lorg/eclipse/core/resources/IResourceProxy;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/eclipse/jdt/internal/compiler/util/Util;->isClassFileName(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Lorg/eclipse/core/resources/IResourceProxy;->requestResource()Lorg/eclipse/core/resources/IResource;

    move-result-object p1

    check-cast p1, Lorg/eclipse/core/resources/IFile;

    invoke-interface {p1}, Lorg/eclipse/core/resources/IFile;->getLocationURI()Ljava/net/URI;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Lorg/eclipse/core/resources/IFile;->getFullPath()Lorg/eclipse/core/runtime/IPath;

    move-result-object v2

    iget-object v3, p0, Lorg/eclipse/jdt/internal/core/search/indexing/IndexBinaryFolder$2;->this$0:Lorg/eclipse/jdt/internal/core/search/indexing/IndexBinaryFolder;

    iget-object v3, v3, Lorg/eclipse/jdt/internal/core/search/indexing/IndexRequest;->containerPath:Lorg/eclipse/core/runtime/IPath;

    invoke-interface {v3}, Lorg/eclipse/core/runtime/IPath;->segmentCount()I

    move-result v3

    invoke-static {v2, v3}, Lorg/eclipse/jdt/internal/core/util/Util;->relativePath(Lorg/eclipse/core/runtime/IPath;I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lorg/eclipse/jdt/internal/core/search/indexing/IndexBinaryFolder$2;->val$indexedFileNames:Lorg/eclipse/jdt/internal/compiler/util/SimpleLookupTable;

    invoke-virtual {v3, v2}, Lorg/eclipse/jdt/internal/compiler/util/SimpleLookupTable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_2

    iget-wide v4, p0, Lorg/eclipse/jdt/internal/core/search/indexing/IndexBinaryFolder$2;->val$indexLastModified:J

    invoke-static {v0}, Lorg/eclipse/core/filesystem/EFS;->getStore(Ljava/net/URI;)Lorg/eclipse/core/filesystem/IFileStore;

    move-result-object v0

    invoke-interface {v0}, Lorg/eclipse/core/filesystem/IFileStore;->fetchInfo()Lorg/eclipse/core/filesystem/IFileInfo;

    move-result-object v0

    invoke-interface {v0}, Lorg/eclipse/core/filesystem/IFileInfo;->getLastModified()J

    move-result-wide v6

    cmp-long v0, v4, v6

    if-gez v0, :cond_1

    goto :goto_0

    :cond_1
    const-string p1, "OK"

    :cond_2
    :goto_0
    invoke-virtual {v3, v2, p1}, Lorg/eclipse/jdt/internal/compiler/util/SimpleLookupTable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    return v1

    :cond_4
    return v2
.end method
