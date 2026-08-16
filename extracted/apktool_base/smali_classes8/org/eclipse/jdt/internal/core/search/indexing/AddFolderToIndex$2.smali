.class Lorg/eclipse/jdt/internal/core/search/indexing/AddFolderToIndex$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/eclipse/core/resources/IResourceProxyVisitor;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/eclipse/jdt/internal/core/search/indexing/AddFolderToIndex;->execute(Lorg/eclipse/core/runtime/IProgressMonitor;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/eclipse/jdt/internal/core/search/indexing/AddFolderToIndex;

.field private final synthetic val$container:Lorg/eclipse/core/runtime/IPath;

.field private final synthetic val$indexManager:Lorg/eclipse/jdt/internal/core/search/indexing/IndexManager;

.field private final synthetic val$parser:Lorg/eclipse/jdt/internal/compiler/SourceElementParser;


# direct methods
.method public constructor <init>(Lorg/eclipse/jdt/internal/core/search/indexing/AddFolderToIndex;Lorg/eclipse/jdt/internal/core/search/indexing/IndexManager;Lorg/eclipse/core/runtime/IPath;Lorg/eclipse/jdt/internal/compiler/SourceElementParser;)V
    .locals 0

    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/search/indexing/AddFolderToIndex$2;->this$0:Lorg/eclipse/jdt/internal/core/search/indexing/AddFolderToIndex;

    iput-object p2, p0, Lorg/eclipse/jdt/internal/core/search/indexing/AddFolderToIndex$2;->val$indexManager:Lorg/eclipse/jdt/internal/core/search/indexing/IndexManager;

    iput-object p3, p0, Lorg/eclipse/jdt/internal/core/search/indexing/AddFolderToIndex$2;->val$container:Lorg/eclipse/core/runtime/IPath;

    iput-object p4, p0, Lorg/eclipse/jdt/internal/core/search/indexing/AddFolderToIndex$2;->val$parser:Lorg/eclipse/jdt/internal/compiler/SourceElementParser;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public visit(Lorg/eclipse/core/resources/IResourceProxy;)Z
    .locals 4

    invoke-interface {p1}, Lorg/eclipse/core/resources/IResourceProxy;->getType()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_2

    const/4 v3, 0x2

    if-eq v0, v3, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/search/indexing/AddFolderToIndex$2;->this$0:Lorg/eclipse/jdt/internal/core/search/indexing/AddFolderToIndex;

    iget-object v3, v0, Lorg/eclipse/jdt/internal/core/search/indexing/AddFolderToIndex;->exclusionPatterns:[[C

    if-eqz v3, :cond_1

    iget-object v0, v0, Lorg/eclipse/jdt/internal/core/search/indexing/AddFolderToIndex;->inclusionPatterns:[[C

    if-nez v0, :cond_1

    invoke-interface {p1}, Lorg/eclipse/core/resources/IResourceProxy;->requestFullPath()Lorg/eclipse/core/runtime/IPath;

    move-result-object p1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/search/indexing/AddFolderToIndex$2;->this$0:Lorg/eclipse/jdt/internal/core/search/indexing/AddFolderToIndex;

    iget-object v3, v0, Lorg/eclipse/jdt/internal/core/search/indexing/AddFolderToIndex;->inclusionPatterns:[[C

    iget-object v0, v0, Lorg/eclipse/jdt/internal/core/search/indexing/AddFolderToIndex;->exclusionPatterns:[[C

    invoke-static {p1, v3, v0, v2}, Lorg/eclipse/jdt/internal/core/util/Util;->isExcluded(Lorg/eclipse/core/runtime/IPath;[[C[[CZ)Z

    move-result p1

    if-eqz p1, :cond_1

    return v1

    :cond_1
    :goto_0
    return v2

    :cond_2
    invoke-interface {p1}, Lorg/eclipse/core/resources/IResourceProxy;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/eclipse/jdt/internal/core/util/Util;->isJavaLikeFileName(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Lorg/eclipse/core/resources/IResourceProxy;->requestResource()Lorg/eclipse/core/resources/IResource;

    move-result-object p1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/search/indexing/AddFolderToIndex$2;->this$0:Lorg/eclipse/jdt/internal/core/search/indexing/AddFolderToIndex;

    iget-object v2, v0, Lorg/eclipse/jdt/internal/core/search/indexing/AddFolderToIndex;->inclusionPatterns:[[C

    iget-object v0, v0, Lorg/eclipse/jdt/internal/core/search/indexing/AddFolderToIndex;->exclusionPatterns:[[C

    invoke-static {p1, v2, v0}, Lorg/eclipse/jdt/internal/core/util/Util;->isExcluded(Lorg/eclipse/core/resources/IResource;[[C[[C)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/search/indexing/AddFolderToIndex$2;->val$indexManager:Lorg/eclipse/jdt/internal/core/search/indexing/IndexManager;

    check-cast p1, Lorg/eclipse/core/resources/IFile;

    iget-object v2, p0, Lorg/eclipse/jdt/internal/core/search/indexing/AddFolderToIndex$2;->val$container:Lorg/eclipse/core/runtime/IPath;

    iget-object v3, p0, Lorg/eclipse/jdt/internal/core/search/indexing/AddFolderToIndex$2;->val$parser:Lorg/eclipse/jdt/internal/compiler/SourceElementParser;

    invoke-virtual {v0, p1, v2, v3}, Lorg/eclipse/jdt/internal/core/search/indexing/IndexManager;->addSource(Lorg/eclipse/core/resources/IFile;Lorg/eclipse/core/runtime/IPath;Lorg/eclipse/jdt/internal/compiler/SourceElementParser;)V

    :cond_3
    return v1
.end method
