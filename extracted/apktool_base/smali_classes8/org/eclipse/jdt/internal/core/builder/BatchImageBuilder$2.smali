.class Lorg/eclipse/jdt/internal/core/builder/BatchImageBuilder$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/eclipse/core/resources/IResourceProxyVisitor;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/eclipse/jdt/internal/core/builder/BatchImageBuilder;->cleanOutputFolders(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/eclipse/jdt/internal/core/builder/BatchImageBuilder;

.field private final synthetic val$exclusionPatterns:[[C

.field private final synthetic val$inclusionPatterns:[[C


# direct methods
.method public constructor <init>(Lorg/eclipse/jdt/internal/core/builder/BatchImageBuilder;[[C[[C)V
    .locals 0

    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/builder/BatchImageBuilder$2;->this$0:Lorg/eclipse/jdt/internal/core/builder/BatchImageBuilder;

    iput-object p2, p0, Lorg/eclipse/jdt/internal/core/builder/BatchImageBuilder$2;->val$exclusionPatterns:[[C

    iput-object p3, p0, Lorg/eclipse/jdt/internal/core/builder/BatchImageBuilder$2;->val$inclusionPatterns:[[C

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public visit(Lorg/eclipse/core/resources/IResourceProxy;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/core/runtime/CoreException;
        }
    .end annotation

    invoke-interface {p1}, Lorg/eclipse/core/resources/IResourceProxy;->getType()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v0, v3, :cond_4

    invoke-interface {p1}, Lorg/eclipse/core/resources/IResourceProxy;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/eclipse/jdt/internal/compiler/util/Util;->isClassFileName(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Lorg/eclipse/core/resources/IResourceProxy;->requestResource()Lorg/eclipse/core/resources/IResource;

    move-result-object p1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/builder/BatchImageBuilder$2;->val$exclusionPatterns:[[C

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/builder/BatchImageBuilder$2;->val$inclusionPatterns:[[C

    if-eqz v0, :cond_1

    :cond_0
    invoke-interface {p1}, Lorg/eclipse/core/resources/IResource;->getFullPath()Lorg/eclipse/core/runtime/IPath;

    move-result-object v0

    iget-object v4, p0, Lorg/eclipse/jdt/internal/core/builder/BatchImageBuilder$2;->val$inclusionPatterns:[[C

    iget-object v5, p0, Lorg/eclipse/jdt/internal/core/builder/BatchImageBuilder$2;->val$exclusionPatterns:[[C

    invoke-static {v0, v4, v5, v2}, Lorg/eclipse/jdt/internal/core/util/Util;->isExcluded(Lorg/eclipse/core/runtime/IPath;[[C[[CZ)Z

    move-result v0

    if-eqz v0, :cond_1

    return v2

    :cond_1
    invoke-interface {p1}, Lorg/eclipse/core/resources/IResource;->isDerived()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-interface {p1, v3, v1}, Lorg/eclipse/core/resources/IResource;->setDerived(ZLorg/eclipse/core/runtime/IProgressMonitor;)V

    :cond_2
    :try_start_0
    invoke-interface {p1, v3, v1}, Lorg/eclipse/core/resources/IResource;->delete(ILorg/eclipse/core/runtime/IProgressMonitor;)V
    :try_end_0
    .catch Lorg/eclipse/core/runtime/CoreException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Error occurred while deleting: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p1}, Lorg/eclipse/core/resources/IResource;->getFullPath()Lorg/eclipse/core/runtime/IPath;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lorg/eclipse/jdt/internal/core/util/Util;->log(Ljava/lang/Throwable;Ljava/lang/String;)V

    :cond_3
    :goto_0
    return v2

    :cond_4
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/builder/BatchImageBuilder$2;->val$exclusionPatterns:[[C

    if-eqz v0, :cond_5

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/builder/BatchImageBuilder$2;->val$inclusionPatterns:[[C

    if-nez v0, :cond_5

    invoke-interface {p1}, Lorg/eclipse/core/resources/IResourceProxy;->requestFullPath()Lorg/eclipse/core/runtime/IPath;

    move-result-object p1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/builder/BatchImageBuilder$2;->val$exclusionPatterns:[[C

    invoke-static {p1, v1, v0, v3}, Lorg/eclipse/jdt/internal/core/util/Util;->isExcluded(Lorg/eclipse/core/runtime/IPath;[[C[[CZ)Z

    move-result p1

    if-eqz p1, :cond_5

    return v2

    :cond_5
    iget-object p1, p0, Lorg/eclipse/jdt/internal/core/builder/BatchImageBuilder$2;->this$0:Lorg/eclipse/jdt/internal/core/builder/BatchImageBuilder;

    iget-object p1, p1, Lorg/eclipse/jdt/internal/core/builder/AbstractImageBuilder;->notifier:Lorg/eclipse/jdt/internal/core/builder/BuildNotifier;

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/core/builder/BuildNotifier;->checkCancel()V

    return v3
.end method
