.class Lorg/eclipse/jdt/internal/core/search/indexing/IndexBinaryFolder$1;
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

.field private final synthetic val$indexedFileNames:Lorg/eclipse/jdt/internal/compiler/util/SimpleLookupTable;


# direct methods
.method public constructor <init>(Lorg/eclipse/jdt/internal/core/search/indexing/IndexBinaryFolder;Lorg/eclipse/jdt/internal/compiler/util/SimpleLookupTable;)V
    .locals 0

    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/search/indexing/IndexBinaryFolder$1;->this$0:Lorg/eclipse/jdt/internal/core/search/indexing/IndexBinaryFolder;

    iput-object p2, p0, Lorg/eclipse/jdt/internal/core/search/indexing/IndexBinaryFolder$1;->val$indexedFileNames:Lorg/eclipse/jdt/internal/compiler/util/SimpleLookupTable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public visit(Lorg/eclipse/core/resources/IResourceProxy;)Z
    .locals 3

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/search/indexing/IndexBinaryFolder$1;->this$0:Lorg/eclipse/jdt/internal/core/search/indexing/IndexBinaryFolder;

    iget-boolean v0, v0, Lorg/eclipse/jdt/internal/core/search/indexing/IndexRequest;->isCancelled:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    invoke-interface {p1}, Lorg/eclipse/core/resources/IResourceProxy;->getType()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_2

    invoke-interface {p1}, Lorg/eclipse/core/resources/IResourceProxy;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/eclipse/jdt/internal/compiler/util/Util;->isClassFileName(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Lorg/eclipse/core/resources/IResourceProxy;->requestResource()Lorg/eclipse/core/resources/IResource;

    move-result-object p1

    check-cast p1, Lorg/eclipse/core/resources/IFile;

    invoke-interface {p1}, Lorg/eclipse/core/resources/IFile;->getFullPath()Lorg/eclipse/core/runtime/IPath;

    move-result-object v0

    iget-object v2, p0, Lorg/eclipse/jdt/internal/core/search/indexing/IndexBinaryFolder$1;->this$0:Lorg/eclipse/jdt/internal/core/search/indexing/IndexBinaryFolder;

    iget-object v2, v2, Lorg/eclipse/jdt/internal/core/search/indexing/IndexRequest;->containerPath:Lorg/eclipse/core/runtime/IPath;

    invoke-interface {v2}, Lorg/eclipse/core/runtime/IPath;->segmentCount()I

    move-result v2

    invoke-static {v0, v2}, Lorg/eclipse/jdt/internal/core/util/Util;->relativePath(Lorg/eclipse/core/runtime/IPath;I)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lorg/eclipse/jdt/internal/core/search/indexing/IndexBinaryFolder$1;->val$indexedFileNames:Lorg/eclipse/jdt/internal/compiler/util/SimpleLookupTable;

    invoke-virtual {v2, v0, p1}, Lorg/eclipse/jdt/internal/compiler/util/SimpleLookupTable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return v1

    :cond_2
    return v2
.end method
