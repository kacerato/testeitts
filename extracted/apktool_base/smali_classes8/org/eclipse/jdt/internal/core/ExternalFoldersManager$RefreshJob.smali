.class Lorg/eclipse/jdt/internal/core/ExternalFoldersManager$RefreshJob;
.super Lorg/eclipse/core/runtime/jobs/Job;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/eclipse/jdt/internal/core/ExternalFoldersManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RefreshJob"
.end annotation


# instance fields
.field final externalFolders:Ljava/util/LinkedHashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashSet<",
            "Lorg/eclipse/core/runtime/IPath;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    sget-object v0, Lorg/eclipse/jdt/internal/core/util/Messages;->refreshing_external_folders:Ljava/lang/String;

    invoke-direct {p0, v0}, Lorg/eclipse/core/runtime/jobs/Job;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/internal/core/ExternalFoldersManager$RefreshJob;->setSystem(Z)V

    invoke-static {}, Lorg/eclipse/core/resources/ResourcesPlugin;->getWorkspace()Lorg/eclipse/core/resources/IWorkspace;

    move-result-object v0

    invoke-interface {v0}, Lorg/eclipse/core/resources/IWorkspace;->getRuleFactory()Lorg/eclipse/core/resources/IResourceRuleFactory;

    move-result-object v1

    invoke-interface {v0}, Lorg/eclipse/core/resources/IWorkspace;->getRoot()Lorg/eclipse/core/resources/IWorkspaceRoot;

    move-result-object v0

    invoke-interface {v1, v0}, Lorg/eclipse/core/resources/IResourceRuleFactory;->refreshRule(Lorg/eclipse/core/resources/IResource;)Lorg/eclipse/core/runtime/jobs/ISchedulingRule;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/internal/core/ExternalFoldersManager$RefreshJob;->setRule(Lorg/eclipse/core/runtime/jobs/ISchedulingRule;)V

    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Lorg/eclipse/jdt/internal/core/ExternalFoldersManager$RefreshJob;->externalFolders:Ljava/util/LinkedHashSet;

    return-void
.end method


# virtual methods
.method public addFoldersToRefresh(Ljava/util/Collection;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lorg/eclipse/core/runtime/IPath;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/ExternalFoldersManager$RefreshJob;->externalFolders:Ljava/util/LinkedHashSet;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/ExternalFoldersManager$RefreshJob;->externalFolders:Ljava/util/LinkedHashSet;

    invoke-virtual {v1, p1}, Ljava/util/AbstractCollection;->addAll(Ljava/util/Collection;)Z

    iget-object p1, p0, Lorg/eclipse/jdt/internal/core/ExternalFoldersManager$RefreshJob;->externalFolders:Ljava/util/LinkedHashSet;

    invoke-virtual {p1}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/ExternalFoldersManager$RefreshJob;->schedule()V

    :cond_0
    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public belongsTo(Ljava/lang/Object;)Z
    .locals 1

    sget-object v0, Lorg/eclipse/core/resources/ResourcesPlugin;->FAMILY_MANUAL_REFRESH:Ljava/lang/Object;

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public run(Lorg/eclipse/core/runtime/IProgressMonitor;)Lorg/eclipse/core/runtime/IStatus;
    .locals 0

    const/4 p0, 0x0

    throw p0
.end method
