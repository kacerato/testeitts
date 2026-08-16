.class Lorg/eclipse/jdt/internal/core/search/indexing/IndexAllProject$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/eclipse/core/resources/IResourceProxyVisitor;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/eclipse/jdt/internal/core/search/indexing/IndexAllProject;->execute(Lorg/eclipse/core/runtime/IProgressMonitor;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/eclipse/jdt/internal/core/search/indexing/IndexAllProject;

.field private final synthetic val$exclusionPatterns:[[C

.field private final synthetic val$hasOutputs:Z

.field private final synthetic val$inclusionPatterns:[[C

.field private final synthetic val$indexedFileNames:Lorg/eclipse/jdt/internal/compiler/util/SimpleLookupTable;

.field private final synthetic val$outputs:Ljava/util/HashSet;


# direct methods
.method public constructor <init>(Lorg/eclipse/jdt/internal/core/search/indexing/IndexAllProject;[[C[[CLorg/eclipse/jdt/internal/compiler/util/SimpleLookupTable;ZLjava/util/HashSet;)V
    .locals 0

    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/search/indexing/IndexAllProject$1;->this$0:Lorg/eclipse/jdt/internal/core/search/indexing/IndexAllProject;

    iput-object p2, p0, Lorg/eclipse/jdt/internal/core/search/indexing/IndexAllProject$1;->val$exclusionPatterns:[[C

    iput-object p3, p0, Lorg/eclipse/jdt/internal/core/search/indexing/IndexAllProject$1;->val$inclusionPatterns:[[C

    iput-object p4, p0, Lorg/eclipse/jdt/internal/core/search/indexing/IndexAllProject$1;->val$indexedFileNames:Lorg/eclipse/jdt/internal/compiler/util/SimpleLookupTable;

    iput-boolean p5, p0, Lorg/eclipse/jdt/internal/core/search/indexing/IndexAllProject$1;->val$hasOutputs:Z

    iput-object p6, p0, Lorg/eclipse/jdt/internal/core/search/indexing/IndexAllProject$1;->val$outputs:Ljava/util/HashSet;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public visit(Lorg/eclipse/core/resources/IResourceProxy;)Z
    .locals 5

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/search/indexing/IndexAllProject$1;->this$0:Lorg/eclipse/jdt/internal/core/search/indexing/IndexAllProject;

    iget-boolean v0, v0, Lorg/eclipse/jdt/internal/core/search/indexing/IndexRequest;->isCancelled:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    invoke-interface {p1}, Lorg/eclipse/core/resources/IResourceProxy;->getType()I

    move-result v0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_4

    const/4 v3, 0x2

    if-eq v0, v3, :cond_1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/search/indexing/IndexAllProject$1;->val$exclusionPatterns:[[C

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/search/indexing/IndexAllProject$1;->val$inclusionPatterns:[[C

    if-nez v0, :cond_2

    invoke-interface {p1}, Lorg/eclipse/core/resources/IResourceProxy;->requestFullPath()Lorg/eclipse/core/runtime/IPath;

    move-result-object v0

    iget-object v3, p0, Lorg/eclipse/jdt/internal/core/search/indexing/IndexAllProject$1;->val$inclusionPatterns:[[C

    iget-object v4, p0, Lorg/eclipse/jdt/internal/core/search/indexing/IndexAllProject$1;->val$exclusionPatterns:[[C

    invoke-static {v0, v3, v4, v2}, Lorg/eclipse/jdt/internal/core/util/Util;->isExcluded(Lorg/eclipse/core/runtime/IPath;[[C[[CZ)Z

    move-result v0

    if-eqz v0, :cond_2

    return v1

    :cond_2
    iget-boolean v0, p0, Lorg/eclipse/jdt/internal/core/search/indexing/IndexAllProject$1;->val$hasOutputs:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/search/indexing/IndexAllProject$1;->val$outputs:Ljava/util/HashSet;

    invoke-interface {p1}, Lorg/eclipse/core/resources/IResourceProxy;->requestFullPath()Lorg/eclipse/core/runtime/IPath;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    return v1

    :cond_3
    :goto_0
    return v2

    :cond_4
    invoke-interface {p1}, Lorg/eclipse/core/resources/IResourceProxy;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/eclipse/jdt/internal/core/util/Util;->isJavaLikeFileName(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {p1}, Lorg/eclipse/core/resources/IResourceProxy;->requestResource()Lorg/eclipse/core/resources/IResource;

    move-result-object p1

    check-cast p1, Lorg/eclipse/core/resources/IFile;

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/search/indexing/IndexAllProject$1;->val$exclusionPatterns:[[C

    if-nez v0, :cond_5

    iget-object v3, p0, Lorg/eclipse/jdt/internal/core/search/indexing/IndexAllProject$1;->val$inclusionPatterns:[[C

    if-eqz v3, :cond_6

    :cond_5
    iget-object v3, p0, Lorg/eclipse/jdt/internal/core/search/indexing/IndexAllProject$1;->val$inclusionPatterns:[[C

    invoke-static {p1, v3, v0}, Lorg/eclipse/jdt/internal/core/util/Util;->isExcluded(Lorg/eclipse/core/resources/IResource;[[C[[C)Z

    move-result v0

    if-eqz v0, :cond_6

    return v1

    :cond_6
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/search/indexing/IndexAllProject$1;->val$indexedFileNames:Lorg/eclipse/jdt/internal/compiler/util/SimpleLookupTable;

    invoke-interface {p1}, Lorg/eclipse/core/resources/IFile;->getFullPath()Lorg/eclipse/core/runtime/IPath;

    move-result-object v3

    invoke-static {v3, v2}, Lorg/eclipse/jdt/internal/core/util/Util;->relativePath(Lorg/eclipse/core/runtime/IPath;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, p1}, Lorg/eclipse/jdt/internal/compiler/util/SimpleLookupTable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_7
    return v1
.end method
