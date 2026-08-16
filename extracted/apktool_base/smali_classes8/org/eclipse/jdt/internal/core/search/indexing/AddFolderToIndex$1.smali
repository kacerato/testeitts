.class Lorg/eclipse/jdt/internal/core/search/indexing/AddFolderToIndex$1;
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

    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/search/indexing/AddFolderToIndex$1;->this$0:Lorg/eclipse/jdt/internal/core/search/indexing/AddFolderToIndex;

    iput-object p2, p0, Lorg/eclipse/jdt/internal/core/search/indexing/AddFolderToIndex$1;->val$indexManager:Lorg/eclipse/jdt/internal/core/search/indexing/IndexManager;

    iput-object p3, p0, Lorg/eclipse/jdt/internal/core/search/indexing/AddFolderToIndex$1;->val$container:Lorg/eclipse/core/runtime/IPath;

    iput-object p4, p0, Lorg/eclipse/jdt/internal/core/search/indexing/AddFolderToIndex$1;->val$parser:Lorg/eclipse/jdt/internal/compiler/SourceElementParser;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public visit(Lorg/eclipse/core/resources/IResourceProxy;)Z
    .locals 3

    invoke-interface {p1}, Lorg/eclipse/core/resources/IResourceProxy;->getType()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    invoke-interface {p1}, Lorg/eclipse/core/resources/IResourceProxy;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/eclipse/jdt/internal/core/util/Util;->isJavaLikeFileName(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/search/indexing/AddFolderToIndex$1;->val$indexManager:Lorg/eclipse/jdt/internal/core/search/indexing/IndexManager;

    invoke-interface {p1}, Lorg/eclipse/core/resources/IResourceProxy;->requestResource()Lorg/eclipse/core/resources/IResource;

    move-result-object p1

    check-cast p1, Lorg/eclipse/core/resources/IFile;

    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/search/indexing/AddFolderToIndex$1;->val$container:Lorg/eclipse/core/runtime/IPath;

    iget-object v2, p0, Lorg/eclipse/jdt/internal/core/search/indexing/AddFolderToIndex$1;->val$parser:Lorg/eclipse/jdt/internal/compiler/SourceElementParser;

    invoke-virtual {v0, p1, v1, v2}, Lorg/eclipse/jdt/internal/core/search/indexing/IndexManager;->addSource(Lorg/eclipse/core/resources/IFile;Lorg/eclipse/core/runtime/IPath;Lorg/eclipse/jdt/internal/compiler/SourceElementParser;)V

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    return v1
.end method
