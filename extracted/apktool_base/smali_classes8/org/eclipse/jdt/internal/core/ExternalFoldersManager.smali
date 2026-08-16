.class public Lorg/eclipse/jdt/internal/core/ExternalFoldersManager;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/eclipse/jdt/internal/core/ExternalFoldersManager$RefreshJob;
    }
.end annotation


# static fields
.field private static final EXTERNAL_PROJECT_NAME:Ljava/lang/String; = ".org.eclipse.jdt.core.external.folders"

.field private static final LINKED_FOLDER_NAME:Ljava/lang/String; = ".link"

.field private static MANAGER:Lorg/eclipse/jdt/internal/core/ExternalFoldersManager;

.field private static final WINDOWS:Z


# instance fields
.field private final counter:Ljava/util/concurrent/atomic/AtomicInteger;

.field private folders:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lorg/eclipse/core/runtime/IPath;",
            "Lorg/eclipse/core/resources/IFolder;",
            ">;"
        }
    .end annotation
.end field

.field private pendingFolders:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lorg/eclipse/core/runtime/IPath;",
            ">;"
        }
    .end annotation
.end field

.field private refreshJob:Lorg/eclipse/jdt/internal/core/ExternalFoldersManager$RefreshJob;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "os.name"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "windows"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    sput-boolean v0, Lorg/eclipse/jdt/internal/core/ExternalFoldersManager;->WINDOWS:Z

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lorg/eclipse/jdt/internal/core/ExternalFoldersManager;->counter:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-static {}, Lorg/eclipse/core/runtime/Platform;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lorg/eclipse/jdt/internal/core/ExternalFoldersManager$1InitializeFolders;

    invoke-direct {v0, p0}, Lorg/eclipse/jdt/internal/core/ExternalFoldersManager$1InitializeFolders;-><init>(Lorg/eclipse/jdt/internal/core/ExternalFoldersManager;)V

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/ExternalFoldersManager;->getExternalFoldersProject()Lorg/eclipse/core/resources/IProject;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/eclipse/jdt/internal/core/ExternalFoldersManager$1InitializeFolders;->setRule(Lorg/eclipse/core/runtime/jobs/ISchedulingRule;)V

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/core/ExternalFoldersManager$1InitializeFolders;->schedule()V

    :cond_0
    return-void
.end method

.method public static synthetic access$0(Lorg/eclipse/jdt/internal/core/ExternalFoldersManager;)Ljava/util/Map;
    .locals 0

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/core/ExternalFoldersManager;->getFolders()Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method private addFolder(Lorg/eclipse/core/runtime/IPath;Lorg/eclipse/core/resources/IProject;Z)Lorg/eclipse/core/resources/IFolder;
    .locals 3

    .line 2
    invoke-direct {p0}, Lorg/eclipse/jdt/internal/core/ExternalFoldersManager;->getFolders()Ljava/util/Map;

    move-result-object v0

    .line 3
    monitor-enter p0

    .line 4
    :try_start_0
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/eclipse/core/resources/IFolder;

    if-eqz v1, :cond_0

    .line 5
    monitor-exit p0

    return-object v1

    :catchall_0
    move-exception p1

    goto :goto_2

    .line 6
    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, ".link"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lorg/eclipse/jdt/internal/core/ExternalFoldersManager;->counter:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v1}, Lorg/eclipse/core/resources/IProject;->getFolder(Ljava/lang/String;)Lorg/eclipse/core/resources/IFolder;

    move-result-object v1

    .line 8
    invoke-interface {v1}, Lorg/eclipse/core/resources/IFolder;->exists()Z

    move-result v2

    if-nez v2, :cond_1

    .line 9
    monitor-enter p0

    if-eqz p3, :cond_3

    .line 10
    :try_start_1
    iget-object p2, p0, Lorg/eclipse/jdt/internal/core/ExternalFoldersManager;->pendingFolders:Ljava/util/Set;

    if-nez p2, :cond_2

    .line 11
    new-instance p2, Ljava/util/LinkedHashSet;

    invoke-direct {p2}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object p2, p0, Lorg/eclipse/jdt/internal/core/ExternalFoldersManager;->pendingFolders:Ljava/util/Set;

    goto :goto_0

    :catchall_1
    move-exception p1

    goto :goto_1

    .line 12
    :cond_2
    :goto_0
    iget-object p2, p0, Lorg/eclipse/jdt/internal/core/ExternalFoldersManager;->pendingFolders:Ljava/util/Set;

    invoke-interface {p2, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 13
    :cond_3
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/eclipse/core/resources/IFolder;

    if-eqz p2, :cond_4

    .line 14
    monitor-exit p0

    return-object p2

    .line 15
    :cond_4
    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    monitor-exit p0

    return-object v1

    :goto_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw p1

    .line 17
    :goto_2
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method private createExternalFoldersProject(Lorg/eclipse/core/resources/IProject;Lorg/eclipse/core/runtime/IProgressMonitor;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/core/runtime/CoreException;
        }
    .end annotation

    .line 6
    invoke-interface {p1}, Lorg/eclipse/core/resources/IProject;->getWorkspace()Lorg/eclipse/core/resources/IWorkspace;

    move-result-object v0

    invoke-interface {p1}, Lorg/eclipse/core/resources/IProject;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/eclipse/core/resources/IWorkspace;->newProjectDescription(Ljava/lang/String;)Lorg/eclipse/core/resources/IProjectDescription;

    move-result-object v0

    .line 7
    invoke-static {}, Lorg/eclipse/jdt/core/JavaCore;->getPlugin()Lorg/eclipse/core/runtime/Plugin;

    move-result-object v1

    invoke-virtual {v1}, Lorg/eclipse/core/runtime/Plugin;->getStateLocation()Lorg/eclipse/core/runtime/IPath;

    move-result-object v1

    .line 8
    const-string v2, ".org.eclipse.jdt.core.external.folders"

    invoke-interface {v1, v2}, Lorg/eclipse/core/runtime/IPath;->append(Ljava/lang/String;)Lorg/eclipse/core/runtime/IPath;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/eclipse/core/resources/IProjectDescription;->setLocation(Lorg/eclipse/core/runtime/IPath;)V

    const/16 v1, 0x1000

    .line 9
    :try_start_0
    invoke-interface {p1, v0, v1, p2}, Lorg/eclipse/core/resources/IProject;->create(Lorg/eclipse/core/resources/IProjectDescription;ILorg/eclipse/core/runtime/IProgressMonitor;)V
    :try_end_0
    .catch Lorg/eclipse/core/runtime/CoreException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    .line 10
    invoke-interface {p1}, Lorg/eclipse/core/resources/IProject;->exists()Z

    move-result p1

    if-eqz p1, :cond_0

    :goto_0
    return-void

    .line 11
    :cond_0
    throw p2
.end method

.method private createLinkFolder(Lorg/eclipse/core/runtime/IPath;ZLorg/eclipse/core/resources/IProject;Lorg/eclipse/core/runtime/IProgressMonitor;)Lorg/eclipse/core/resources/IFolder;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/core/runtime/CoreException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 3
    invoke-direct {p0, p1, p3, v0}, Lorg/eclipse/jdt/internal/core/ExternalFoldersManager;->addFolder(Lorg/eclipse/core/runtime/IPath;Lorg/eclipse/core/resources/IProject;Z)Lorg/eclipse/core/resources/IFolder;

    move-result-object p3

    .line 4
    invoke-interface {p3}, Lorg/eclipse/core/resources/IFolder;->exists()Z

    move-result v0

    if-nez v0, :cond_1

    const/16 p2, 0x10

    .line 5
    :try_start_0
    invoke-interface {p3, p1, p2, p4}, Lorg/eclipse/core/resources/IFolder;->createLink(Lorg/eclipse/core/runtime/IPath;ILorg/eclipse/core/runtime/IProgressMonitor;)V
    :try_end_0
    .catch Lorg/eclipse/core/runtime/CoreException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 6
    invoke-interface {p3}, Lorg/eclipse/core/resources/IFolder;->exists()Z

    move-result p2

    if-eqz p2, :cond_0

    goto :goto_0

    .line 7
    :cond_0
    throw p1

    :cond_1
    if-eqz p2, :cond_2

    const/4 p1, 0x2

    .line 8
    invoke-interface {p3, p1, p4}, Lorg/eclipse/core/resources/IFolder;->refreshLocal(ILorg/eclipse/core/runtime/IProgressMonitor;)V

    :cond_2
    :goto_0
    return-object p3
.end method

.method public static getExternalFolders([Lorg/eclipse/jdt/core/IClasspathEntry;)Ljava/util/Set;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lorg/eclipse/jdt/core/IClasspathEntry;",
            ")",
            "Ljava/util/Set<",
            "Lorg/eclipse/core/runtime/IPath;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    array-length v2, p0

    if-lt v1, v2, :cond_1

    return-object v0

    :cond_1
    aget-object v2, p0, v1

    invoke-interface {v2}, Lorg/eclipse/jdt/core/IClasspathEntry;->getEntryKind()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_5

    invoke-interface {v2}, Lorg/eclipse/jdt/core/IClasspathEntry;->getPath()Lorg/eclipse/core/runtime/IPath;

    move-result-object v3

    invoke-static {v3}, Lorg/eclipse/jdt/internal/core/ExternalFoldersManager;->isExternalFolderPath(Lorg/eclipse/core/runtime/IPath;)Z

    move-result v4

    if-eqz v4, :cond_3

    if-nez v0, :cond_2

    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    :cond_2
    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_3
    invoke-interface {v2}, Lorg/eclipse/jdt/core/IClasspathEntry;->getSourceAttachmentPath()Lorg/eclipse/core/runtime/IPath;

    move-result-object v2

    invoke-static {v2}, Lorg/eclipse/jdt/internal/core/ExternalFoldersManager;->isExternalFolderPath(Lorg/eclipse/core/runtime/IPath;)Z

    move-result v3

    if-eqz v3, :cond_5

    if-nez v0, :cond_4

    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    :cond_4
    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public static declared-synchronized getExternalFoldersManager()Lorg/eclipse/jdt/internal/core/ExternalFoldersManager;
    .locals 2

    const-class v0, Lorg/eclipse/jdt/internal/core/ExternalFoldersManager;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lorg/eclipse/jdt/internal/core/ExternalFoldersManager;->MANAGER:Lorg/eclipse/jdt/internal/core/ExternalFoldersManager;

    if-nez v1, :cond_0

    new-instance v1, Lorg/eclipse/jdt/internal/core/ExternalFoldersManager;

    invoke-direct {v1}, Lorg/eclipse/jdt/internal/core/ExternalFoldersManager;-><init>()V

    sput-object v1, Lorg/eclipse/jdt/internal/core/ExternalFoldersManager;->MANAGER:Lorg/eclipse/jdt/internal/core/ExternalFoldersManager;

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    :goto_0
    sget-object v1, Lorg/eclipse/jdt/internal/core/ExternalFoldersManager;->MANAGER:Lorg/eclipse/jdt/internal/core/ExternalFoldersManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private getFolders()Ljava/util/Map;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Lorg/eclipse/core/runtime/IPath;",
            "Lorg/eclipse/core/resources/IFolder;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/ExternalFoldersManager;->folders:Ljava/util/Map;

    if-nez v0, :cond_5

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/ExternalFoldersManager;->getExternalFoldersProject()Lorg/eclipse/core/resources/IProject;

    move-result-object v1

    :try_start_0
    invoke-interface {v1}, Lorg/eclipse/core/resources/IProject;->isAccessible()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-interface {v1}, Lorg/eclipse/core/resources/IProject;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Lorg/eclipse/jdt/internal/core/ExternalFoldersManager;->openExternalFoldersProject(Lorg/eclipse/core/resources/IProject;Lorg/eclipse/core/runtime/IProgressMonitor;)V

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_2

    :cond_0
    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    iput-object v1, p0, Lorg/eclipse/jdt/internal/core/ExternalFoldersManager;->folders:Ljava/util/Map;

    return-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Lorg/eclipse/core/resources/IProject;->members()[Lorg/eclipse/core/resources/IResource;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_1
    if-lt v3, v2, :cond_2

    goto :goto_3

    :cond_2
    aget-object v4, v1, v3

    invoke-interface {v4}, Lorg/eclipse/core/resources/IResource;->getType()I

    move-result v5

    const/4 v6, 0x2

    if-ne v5, v6, :cond_3

    invoke-interface {v4}, Lorg/eclipse/core/resources/IResource;->isLinked()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v4}, Lorg/eclipse/core/resources/IResource;->getName()Ljava/lang/String;

    move-result-object v5

    const-string v6, ".link"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v4}, Lorg/eclipse/core/resources/IResource;->getLocation()Lorg/eclipse/core/runtime/IPath;

    move-result-object v5

    check-cast v4, Lorg/eclipse/core/resources/IFolder;

    invoke-interface {v0, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Lorg/eclipse/core/runtime/CoreException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :goto_2
    const-string v2, "Exception while initializing external folders"

    invoke-static {v1, v2}, Lorg/eclipse/jdt/internal/core/util/Util;->log(Ljava/lang/Throwable;Ljava/lang/String;)V

    :goto_3
    monitor-enter p0

    :try_start_1
    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/ExternalFoldersManager;->folders:Ljava/util/Map;

    if-nez v1, :cond_4

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lorg/eclipse/jdt/internal/core/ExternalFoldersManager;->folders:Ljava/util/Map;

    goto :goto_4

    :catchall_0
    move-exception v0

    goto :goto_5

    :cond_4
    :goto_4
    monitor-exit p0

    goto :goto_6

    :goto_5
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_5
    :goto_6
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/ExternalFoldersManager;->folders:Ljava/util/Map;

    return-object v0
.end method

.method private getFoldersToCleanUp(Lorg/eclipse/core/runtime/IProgressMonitor;)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/eclipse/core/runtime/IProgressMonitor;",
            ")",
            "Ljava/util/List<",
            "Ljava/util/Map$Entry<",
            "Lorg/eclipse/core/runtime/IPath;",
            "Lorg/eclipse/core/resources/IFolder;",
            ">;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/core/runtime/CoreException;
        }
    .end annotation

    invoke-static {}, Lorg/eclipse/jdt/internal/core/JavaModelManager;->getDeltaState()Lorg/eclipse/jdt/internal/core/DeltaProcessingState;

    move-result-object p1

    iget-object v0, p1, Lorg/eclipse/jdt/internal/core/DeltaProcessingState;->roots:Ljava/util/Map;

    iget-object p1, p1, Lorg/eclipse/jdt/internal/core/DeltaProcessingState;->sourceAttachments:Ljava/util/Map;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    return-object v1

    :cond_0
    invoke-direct {p0}, Lorg/eclipse/jdt/internal/core/ExternalFoldersManager;->getFolders()Ljava/util/Map;

    move-result-object v2

    monitor-enter v2

    :try_start_0
    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_2

    monitor-exit v2

    return-object v1

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/eclipse/core/runtime/IPath;

    if-eqz v0, :cond_1

    invoke-interface {v0, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    if-eqz p1, :cond_1

    invoke-interface {p1, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_1

    if-nez v1, :cond_3

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    :cond_3
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :goto_1
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public static isExternalFolderPath(Lorg/eclipse/core/runtime/IPath;)Z
    .locals 5

    const/4 v0, 0x0

    if-eqz p0, :cond_8

    invoke-interface {p0}, Lorg/eclipse/core/runtime/IPath;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Lorg/eclipse/jdt/internal/core/JavaModelManager;->getJavaModelManager()Lorg/eclipse/jdt/internal/core/JavaModelManager;

    move-result-object v1

    invoke-virtual {v1, p0}, Lorg/eclipse/jdt/internal/core/JavaModelManager;->isExternalFile(Lorg/eclipse/core/runtime/IPath;)Z

    move-result v2

    if-nez v2, :cond_8

    invoke-virtual {v1, p0}, Lorg/eclipse/jdt/internal/core/JavaModelManager;->isAssumedExternalFile(Lorg/eclipse/core/runtime/IPath;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    invoke-interface {p0}, Lorg/eclipse/core/runtime/IPath;->isAbsolute()Z

    move-result v2

    if-eqz v2, :cond_8

    sget-boolean v2, Lorg/eclipse/jdt/internal/core/ExternalFoldersManager;->WINDOWS:Z

    if-eqz v2, :cond_2

    invoke-interface {p0}, Lorg/eclipse/core/runtime/IPath;->getDevice()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_2

    goto :goto_0

    :cond_2
    invoke-interface {p0}, Lorg/eclipse/core/runtime/IPath;->toFile()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v3

    new-array v4, v0, [Ljava/nio/file/LinkOption;

    invoke-static {v3, v4}, Ljava/nio/file/Files;->isRegularFile(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {v1, p0}, Lorg/eclipse/jdt/internal/core/JavaModelManager;->addExternalFile(Lorg/eclipse/core/runtime/IPath;)V

    return v0

    :cond_3
    invoke-virtual {v2}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v2

    new-array v3, v0, [Ljava/nio/file/LinkOption;

    invoke-static {v2, v3}, Ljava/nio/file/Files;->isDirectory(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_4

    return v3

    :cond_4
    invoke-static {p0}, Lorg/eclipse/jdt/internal/core/ExternalFoldersManager;->isInternalFilePath(Lorg/eclipse/core/runtime/IPath;)Z

    move-result v2

    if-eqz v2, :cond_5

    return v0

    :cond_5
    invoke-static {p0}, Lorg/eclipse/jdt/internal/core/ExternalFoldersManager;->isInternalContainerPath(Lorg/eclipse/core/runtime/IPath;)Z

    move-result v2

    if-eqz v2, :cond_6

    return v0

    :cond_6
    invoke-interface {p0}, Lorg/eclipse/core/runtime/IPath;->getFileExtension()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_7

    invoke-virtual {v1, p0}, Lorg/eclipse/jdt/internal/core/JavaModelManager;->addAssumedExternalFile(Lorg/eclipse/core/runtime/IPath;)V

    return v0

    :cond_7
    return v3

    :cond_8
    :goto_0
    return v0
.end method

.method private static isInternalContainerPath(Lorg/eclipse/core/runtime/IPath;)Z
    .locals 5

    invoke-static {}, Lorg/eclipse/core/resources/ResourcesPlugin;->getWorkspace()Lorg/eclipse/core/resources/IWorkspace;

    move-result-object v0

    invoke-interface {v0}, Lorg/eclipse/core/resources/IWorkspace;->getRoot()Lorg/eclipse/core/resources/IWorkspaceRoot;

    move-result-object v0

    invoke-interface {p0}, Lorg/eclipse/core/runtime/IPath;->segmentCount()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v1, v3, :cond_0

    invoke-interface {p0, v2}, Lorg/eclipse/core/runtime/IPath;->segment(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v4}, Lorg/eclipse/core/resources/IWorkspaceRoot;->getProject(Ljava/lang/String;)Lorg/eclipse/core/resources/IProject;

    move-result-object v4

    invoke-interface {v4}, Lorg/eclipse/core/resources/IProject;->exists()Z

    move-result v4

    if-eqz v4, :cond_0

    return v3

    :cond_0
    if-le v1, v3, :cond_1

    invoke-interface {v0, p0}, Lorg/eclipse/core/resources/IWorkspaceRoot;->getFolder(Lorg/eclipse/core/runtime/IPath;)Lorg/eclipse/core/resources/IFolder;

    move-result-object p0

    invoke-interface {p0}, Lorg/eclipse/core/resources/IFolder;->exists()Z

    move-result p0

    if-eqz p0, :cond_1

    return v3

    :cond_1
    return v2
.end method

.method private static isInternalFilePath(Lorg/eclipse/core/runtime/IPath;)Z
    .locals 3

    invoke-static {}, Lorg/eclipse/core/resources/ResourcesPlugin;->getWorkspace()Lorg/eclipse/core/resources/IWorkspace;

    move-result-object v0

    invoke-interface {v0}, Lorg/eclipse/core/resources/IWorkspace;->getRoot()Lorg/eclipse/core/resources/IWorkspaceRoot;

    move-result-object v0

    invoke-interface {p0}, Lorg/eclipse/core/runtime/IPath;->segmentCount()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_0

    invoke-interface {v0, p0}, Lorg/eclipse/core/resources/IWorkspaceRoot;->getFile(Lorg/eclipse/core/runtime/IPath;)Lorg/eclipse/core/resources/IFile;

    move-result-object p0

    invoke-interface {p0}, Lorg/eclipse/core/resources/IFile;->exists()Z

    move-result p0

    if-eqz p0, :cond_0

    return v2

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static isInternalPathForExternalFolder(Lorg/eclipse/core/runtime/IPath;)Z
    .locals 1

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Lorg/eclipse/core/runtime/IPath;->segment(I)Ljava/lang/String;

    move-result-object p0

    const-string v0, ".org.eclipse.jdt.core.external.folders"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private openExternalFoldersProject(Lorg/eclipse/core/resources/IProject;Lorg/eclipse/core/runtime/IProgressMonitor;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/core/runtime/CoreException;
        }
    .end annotation

    :try_start_0
    invoke-interface {p1, p2}, Lorg/eclipse/core/resources/IProject;->open(Lorg/eclipse/core/runtime/IProgressMonitor;)V
    :try_end_0
    .catch Lorg/eclipse/core/runtime/CoreException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lorg/eclipse/core/runtime/CoreException;->getStatus()Lorg/eclipse/core/runtime/IStatus;

    move-result-object v0

    invoke-interface {v0}, Lorg/eclipse/core/runtime/IStatus;->getCode()I

    move-result v0

    const/16 v1, 0x237

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v0, v1, :cond_0

    invoke-interface {p1, v3, v2, p2}, Lorg/eclipse/core/resources/IProject;->delete(ZZLorg/eclipse/core/runtime/IProgressMonitor;)V

    invoke-direct {p0, p1, p2}, Lorg/eclipse/jdt/internal/core/ExternalFoldersManager;->createExternalFoldersProject(Lorg/eclipse/core/resources/IProject;Lorg/eclipse/core/runtime/IProgressMonitor;)V

    goto :goto_1

    :cond_0
    invoke-static {}, Lorg/eclipse/jdt/core/JavaCore;->getPlugin()Lorg/eclipse/core/runtime/Plugin;

    move-result-object v0

    invoke-virtual {v0}, Lorg/eclipse/core/runtime/Plugin;->getStateLocation()Lorg/eclipse/core/runtime/IPath;

    move-result-object v0

    const-string v1, ".org.eclipse.jdt.core.external.folders"

    invoke-interface {v0, v1}, Lorg/eclipse/core/runtime/IPath;->append(Ljava/lang/String;)Lorg/eclipse/core/runtime/IPath;

    move-result-object v0

    :try_start_1
    invoke-interface {v0}, Lorg/eclipse/core/runtime/IPath;->toFile()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v1

    new-array v4, v3, [Ljava/nio/file/attribute/FileAttribute;

    invoke-static {v1, v4}, Ljava/nio/file/Files;->createDirectories(Ljava/nio/file/Path;[Ljava/nio/file/attribute/FileAttribute;)Ljava/nio/file/Path;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    const/4 v1, 0x0

    :try_start_2
    new-instance v4, Ljava/io/FileOutputStream;

    const-string v5, ".project"

    invoke-interface {v0, v5}, Lorg/eclipse/core/runtime/IPath;->append(Ljava/lang/String;)Lorg/eclipse/core/runtime/IPath;

    move-result-object v0

    invoke-interface {v0}, Lorg/eclipse/core/runtime/IPath;->toOSString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    const-string v0, "<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<projectDescription>\n\t<name>.org.eclipse.jdt.core.external.folders</name>\n\t<comment></comment>\n\t<projects>\n\t</projects>\n\t<buildSpec>\n\t</buildSpec>\n\t<natures>\n\t</natures>\n</projectDescription>"

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_0

    :catchall_1
    move-exception v0

    move-object v1, v0

    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V

    throw v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :goto_0
    if-eqz v1, :cond_2

    if-eq v1, v0, :cond_1

    :try_start_5
    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1
    move-object v0, v1

    :cond_2
    throw v0
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    :catch_1
    invoke-interface {p1, v3, v2, p2}, Lorg/eclipse/core/resources/IProject;->delete(ZZLorg/eclipse/core/runtime/IProgressMonitor;)V

    invoke-direct {p0, p1, p2}, Lorg/eclipse/jdt/internal/core/ExternalFoldersManager;->createExternalFoldersProject(Lorg/eclipse/core/resources/IProject;Lorg/eclipse/core/runtime/IProgressMonitor;)V

    :goto_1
    invoke-interface {p1, p2}, Lorg/eclipse/core/resources/IProject;->open(Lorg/eclipse/core/runtime/IProgressMonitor;)V

    :goto_2
    return-void
.end method

.method private declared-synchronized runRefreshJob(Ljava/util/Collection;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lorg/eclipse/core/runtime/IPath;",
            ">;)V"
        }
    .end annotation

    monitor-enter p0

    if-eqz p1, :cond_2

    :try_start_0
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_2

    :cond_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/ExternalFoldersManager;->refreshJob:Lorg/eclipse/jdt/internal/core/ExternalFoldersManager$RefreshJob;

    if-nez v0, :cond_1

    new-instance v0, Lorg/eclipse/jdt/internal/core/ExternalFoldersManager$RefreshJob;

    invoke-direct {v0}, Lorg/eclipse/jdt/internal/core/ExternalFoldersManager$RefreshJob;-><init>()V

    iput-object v0, p0, Lorg/eclipse/jdt/internal/core/ExternalFoldersManager;->refreshJob:Lorg/eclipse/jdt/internal/core/ExternalFoldersManager$RefreshJob;

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_1
    :goto_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/ExternalFoldersManager;->refreshJob:Lorg/eclipse/jdt/internal/core/ExternalFoldersManager$RefreshJob;

    invoke-virtual {v0, p1}, Lorg/eclipse/jdt/internal/core/ExternalFoldersManager$RefreshJob;->addFoldersToRefresh(Ljava/util/Collection;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    :cond_2
    :goto_2
    monitor-exit p0

    return-void
.end method


# virtual methods
.method public addFolder(Lorg/eclipse/core/runtime/IPath;Z)Lorg/eclipse/core/resources/IFolder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/ExternalFoldersManager;->getExternalFoldersProject()Lorg/eclipse/core/resources/IProject;

    move-result-object v0

    invoke-direct {p0, p1, v0, p2}, Lorg/eclipse/jdt/internal/core/ExternalFoldersManager;->addFolder(Lorg/eclipse/core/runtime/IPath;Lorg/eclipse/core/resources/IProject;Z)Lorg/eclipse/core/resources/IFolder;

    move-result-object p1

    return-object p1
.end method

.method public cleanUp(Lorg/eclipse/core/runtime/IProgressMonitor;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/core/runtime/CoreException;
        }
    .end annotation

    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/core/ExternalFoldersManager;->getFoldersToCleanUp(Lorg/eclipse/core/runtime/IProgressMonitor;)Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_2

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/ExternalFoldersManager;->getExternalFoldersProject()Lorg/eclipse/core/resources/IProject;

    move-result-object v0

    invoke-interface {v0}, Lorg/eclipse/core/resources/IProject;->isAccessible()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Lorg/eclipse/core/resources/IProject;->members()[Lorg/eclipse/core/resources/IResource;

    move-result-object v1

    array-length v1, v1

    if-ne v1, v2, :cond_1

    invoke-interface {v0, v2, p1}, Lorg/eclipse/core/resources/IProject;->delete(ZLorg/eclipse/core/runtime/IProgressMonitor;)V

    :cond_1
    return-void

    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/eclipse/core/resources/IFolder;

    invoke-interface {v3, v2, p1}, Lorg/eclipse/core/resources/IFolder;->delete(ZLorg/eclipse/core/runtime/IProgressMonitor;)V

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/eclipse/core/runtime/IPath;

    iget-object v2, p0, Lorg/eclipse/jdt/internal/core/ExternalFoldersManager;->folders:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public createExternalFoldersProject(Lorg/eclipse/core/runtime/IProgressMonitor;)Lorg/eclipse/core/resources/IProject;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/core/runtime/CoreException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/ExternalFoldersManager;->getExternalFoldersProject()Lorg/eclipse/core/resources/IProject;

    move-result-object v0

    .line 2
    invoke-interface {v0}, Lorg/eclipse/core/resources/IProject;->isAccessible()Z

    move-result v1

    if-nez v1, :cond_1

    .line 3
    invoke-interface {v0}, Lorg/eclipse/core/resources/IProject;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 4
    invoke-direct {p0, v0, p1}, Lorg/eclipse/jdt/internal/core/ExternalFoldersManager;->createExternalFoldersProject(Lorg/eclipse/core/resources/IProject;Lorg/eclipse/core/runtime/IProgressMonitor;)V

    .line 5
    :cond_0
    invoke-direct {p0, v0, p1}, Lorg/eclipse/jdt/internal/core/ExternalFoldersManager;->openExternalFoldersProject(Lorg/eclipse/core/resources/IProject;Lorg/eclipse/core/runtime/IProgressMonitor;)V

    :cond_1
    return-object v0
.end method

.method public createLinkFolder(Lorg/eclipse/core/runtime/IPath;ZLorg/eclipse/core/runtime/IProgressMonitor;)Lorg/eclipse/core/resources/IFolder;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/core/runtime/CoreException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p3}, Lorg/eclipse/jdt/internal/core/ExternalFoldersManager;->createExternalFoldersProject(Lorg/eclipse/core/runtime/IProgressMonitor;)Lorg/eclipse/core/resources/IProject;

    move-result-object v0

    .line 2
    invoke-direct {p0, p1, p2, v0, p3}, Lorg/eclipse/jdt/internal/core/ExternalFoldersManager;->createLinkFolder(Lorg/eclipse/core/runtime/IPath;ZLorg/eclipse/core/resources/IProject;Lorg/eclipse/core/runtime/IProgressMonitor;)Lorg/eclipse/core/resources/IFolder;

    move-result-object p1

    return-object p1
.end method

.method public createPendingFolders(Lorg/eclipse/core/runtime/IProgressMonitor;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/JavaModelException;
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/ExternalFoldersManager;->pendingFolders:Ljava/util/Set;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_2

    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/internal/core/ExternalFoldersManager;->createExternalFoldersProject(Lorg/eclipse/core/runtime/IProgressMonitor;)Lorg/eclipse/core/resources/IProject;

    move-result-object v0
    :try_end_1
    .catch Lorg/eclipse/core/runtime/CoreException; {:try_start_1 .. :try_end_1} :catch_1

    monitor-enter p0

    :try_start_2
    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/ExternalFoldersManager;->pendingFolders:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->toArray()[Ljava/lang/Object;

    move-result-object v1

    iget-object v2, p0, Lorg/eclipse/jdt/internal/core/ExternalFoldersManager;->pendingFolders:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->clear()V

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    array-length v4, v1

    if-lt v3, v4, :cond_1

    return-void

    :cond_1
    :try_start_3
    aget-object v4, v1, v3

    check-cast v4, Lorg/eclipse/core/runtime/IPath;

    invoke-direct {p0, v4, v2, v0, p1}, Lorg/eclipse/jdt/internal/core/ExternalFoldersManager;->createLinkFolder(Lorg/eclipse/core/runtime/IPath;ZLorg/eclipse/core/resources/IProject;Lorg/eclipse/core/runtime/IProgressMonitor;)Lorg/eclipse/core/resources/IFolder;
    :try_end_3
    .catch Lorg/eclipse/core/runtime/CoreException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_1

    :catch_0
    move-exception v4

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Error while creating a link for external folder :"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-object v6, v1, v3

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lorg/eclipse/jdt/internal/core/util/Util;->log(Ljava/lang/Throwable;Ljava/lang/String;)V

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :catchall_0
    move-exception p1

    :try_start_4
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw p1

    :catch_1
    move-exception p1

    new-instance v0, Lorg/eclipse/jdt/core/JavaModelException;

    invoke-direct {v0, p1}, Lorg/eclipse/jdt/core/JavaModelException;-><init>(Lorg/eclipse/core/runtime/CoreException;)V

    throw v0

    :catchall_1
    move-exception p1

    goto :goto_3

    :cond_2
    :goto_2
    :try_start_5
    monitor-exit p0

    return-void

    :goto_3
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    throw p1
.end method

.method public getExternalFoldersProject()Lorg/eclipse/core/resources/IProject;
    .locals 2

    invoke-static {}, Lorg/eclipse/core/resources/ResourcesPlugin;->getWorkspace()Lorg/eclipse/core/resources/IWorkspace;

    move-result-object v0

    invoke-interface {v0}, Lorg/eclipse/core/resources/IWorkspace;->getRoot()Lorg/eclipse/core/resources/IWorkspaceRoot;

    move-result-object v0

    const-string v1, ".org.eclipse.jdt.core.external.folders"

    invoke-interface {v0, v1}, Lorg/eclipse/core/resources/IWorkspaceRoot;->getProject(Ljava/lang/String;)Lorg/eclipse/core/resources/IProject;

    move-result-object v0

    return-object v0
.end method

.method public getFolder(Lorg/eclipse/core/runtime/IPath;)Lorg/eclipse/core/resources/IFolder;
    .locals 1

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/core/ExternalFoldersManager;->getFolders()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/eclipse/core/resources/IFolder;

    return-object p1
.end method

.method public refreshReferences(Lorg/eclipse/core/resources/IProject;Lorg/eclipse/core/runtime/IProgressMonitor;)V
    .locals 0

    .line 11
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/ExternalFoldersManager;->getExternalFoldersProject()Lorg/eclipse/core/resources/IProject;

    move-result-object p2

    .line 12
    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    return-void

    .line 13
    :cond_0
    invoke-static {p1}, Lorg/eclipse/jdt/internal/core/JavaProject;->hasJavaNature(Lorg/eclipse/core/resources/IProject;)Z

    move-result p2

    if-nez p2, :cond_1

    return-void

    .line 14
    :cond_1
    :try_start_0
    invoke-static {p1}, Lorg/eclipse/jdt/core/JavaCore;->create(Lorg/eclipse/core/resources/IProject;)Lorg/eclipse/jdt/core/IJavaProject;

    move-result-object p1

    check-cast p1, Lorg/eclipse/jdt/internal/core/JavaProject;

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/core/JavaProject;->getResolvedClasspath()[Lorg/eclipse/jdt/core/IClasspathEntry;

    move-result-object p1

    invoke-static {p1}, Lorg/eclipse/jdt/internal/core/ExternalFoldersManager;->getExternalFolders([Lorg/eclipse/jdt/core/IClasspathEntry;)Ljava/util/Set;

    move-result-object p1

    .line 15
    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/core/ExternalFoldersManager;->runRefreshJob(Ljava/util/Collection;)V
    :try_end_0
    .catch Lorg/eclipse/core/runtime/CoreException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 16
    const-string p2, "Exception while refreshing external project"

    invoke-static {p1, p2}, Lorg/eclipse/jdt/internal/core/util/Util;->log(Ljava/lang/Throwable;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public refreshReferences([Lorg/eclipse/core/resources/IProject;Lorg/eclipse/core/runtime/IProgressMonitor;)V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/ExternalFoldersManager;->getExternalFoldersProject()Lorg/eclipse/core/resources/IProject;

    move-result-object p2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 2
    :goto_0
    :try_start_0
    array-length v2, p1

    if-lt v1, v2, :cond_0

    .line 3
    invoke-direct {p0, v0}, Lorg/eclipse/jdt/internal/core/ExternalFoldersManager;->runRefreshJob(Ljava/util/Collection;)V

    goto :goto_3

    :catch_0
    move-exception p1

    goto :goto_2

    .line 4
    :cond_0
    aget-object v2, p1, v1

    invoke-virtual {v2, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_1

    .line 5
    :cond_1
    aget-object v2, p1, v1

    invoke-static {v2}, Lorg/eclipse/jdt/internal/core/JavaProject;->hasJavaNature(Lorg/eclipse/core/resources/IProject;)Z

    move-result v2

    if-nez v2, :cond_2

    goto :goto_1

    .line 6
    :cond_2
    aget-object v2, p1, v1

    invoke-static {v2}, Lorg/eclipse/jdt/core/JavaCore;->create(Lorg/eclipse/core/resources/IProject;)Lorg/eclipse/jdt/core/IJavaProject;

    move-result-object v2

    check-cast v2, Lorg/eclipse/jdt/internal/core/JavaProject;

    invoke-virtual {v2}, Lorg/eclipse/jdt/internal/core/JavaProject;->getResolvedClasspath()[Lorg/eclipse/jdt/core/IClasspathEntry;

    move-result-object v2

    invoke-static {v2}, Lorg/eclipse/jdt/internal/core/ExternalFoldersManager;->getExternalFolders([Lorg/eclipse/jdt/core/IClasspathEntry;)Ljava/util/Set;

    move-result-object v2

    if-eqz v2, :cond_5

    .line 7
    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v3

    if-nez v3, :cond_3

    goto :goto_1

    :cond_3
    if-nez v0, :cond_4

    .line 8
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    .line 9
    :cond_4
    invoke-interface {v0, v2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z
    :try_end_0
    .catch Lorg/eclipse/core/runtime/CoreException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_5
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 10
    :goto_2
    const-string p2, "Exception while refreshing external project"

    invoke-static {p1, p2}, Lorg/eclipse/jdt/internal/core/util/Util;->log(Ljava/lang/Throwable;Ljava/lang/String;)V

    :goto_3
    return-void
.end method

.method public removeFolder(Lorg/eclipse/core/runtime/IPath;)Lorg/eclipse/core/resources/IFolder;
    .locals 1

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/core/ExternalFoldersManager;->getFolders()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/eclipse/core/resources/IFolder;

    return-object p1
.end method

.method public declared-synchronized removePendingFolder(Ljava/lang/Object;)Z
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/ExternalFoldersManager;->pendingFolders:Ljava/util/Set;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    monitor-exit p0

    const/4 p1, 0x0

    return p1

    :cond_0
    :try_start_1
    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method
