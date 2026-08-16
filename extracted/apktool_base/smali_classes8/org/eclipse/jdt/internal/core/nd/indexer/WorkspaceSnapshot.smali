.class public final Lorg/eclipse/jdt/internal/core/nd/indexer/WorkspaceSnapshot;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static EXPERIMENTAL_INDEX_OUTPUT_FOLDERS:Z


# instance fields
.field private allIndexables:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lorg/eclipse/core/runtime/IPath;",
            "Ljava/util/List<",
            "Lorg/eclipse/jdt/core/IJavaElement;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Lorg/eclipse/core/runtime/IPath;",
            "Ljava/util/List<",
            "Lorg/eclipse/jdt/core/IJavaElement;",
            ">;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/nd/indexer/WorkspaceSnapshot;->allIndexables:Ljava/util/Map;

    return-void
.end method

.method private static collectAllClassFiles(Lorg/eclipse/core/resources/IWorkspaceRoot;Ljava/util/List;Ljava/util/Collection;Lorg/eclipse/core/runtime/IProgressMonitor;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/eclipse/core/resources/IWorkspaceRoot;",
            "Ljava/util/List<",
            "-",
            "Lorg/eclipse/jdt/core/IClassFile;",
            ">;",
            "Ljava/util/Collection<",
            "+",
            "Lorg/eclipse/core/resources/IResource;",
            ">;",
            "Lorg/eclipse/core/runtime/IProgressMonitor;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-static {p3}, Lorg/eclipse/core/runtime/SubMonitor;->convert(Lorg/eclipse/core/runtime/IProgressMonitor;)Lorg/eclipse/core/runtime/SubMonitor;

    move-result-object p0

    .line 2
    new-instance p3, Ljava/util/ArrayDeque;

    invoke-direct {p3}, Ljava/util/ArrayDeque;-><init>()V

    .line 3
    invoke-virtual {p3, p2}, Ljava/util/ArrayDeque;->addAll(Ljava/util/Collection;)Z

    .line 4
    :cond_0
    :goto_0
    invoke-virtual {p3}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_1

    return-void

    .line 5
    :cond_1
    invoke-virtual {p3}, Ljava/util/ArrayDeque;->size()I

    move-result p2

    const/16 v0, 0xbb8

    invoke-static {p2, v0}, Ljava/lang/Math;->max(II)I

    move-result p2

    invoke-virtual {p0, p2}, Lorg/eclipse/core/runtime/SubMonitor;->setWorkRemaining(I)Lorg/eclipse/core/runtime/SubMonitor;

    move-result-object p2

    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Lorg/eclipse/core/runtime/SubMonitor;->split(I)Lorg/eclipse/core/runtime/SubMonitor;

    .line 6
    invoke-virtual {p3}, Ljava/util/ArrayDeque;->removeFirst()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/eclipse/core/resources/IResource;

    .line 7
    instance-of v0, p2, Lorg/eclipse/core/resources/IContainer;

    if-eqz v0, :cond_3

    .line 8
    check-cast p2, Lorg/eclipse/core/resources/IContainer;

    .line 9
    :try_start_0
    invoke-interface {p2}, Lorg/eclipse/core/resources/IContainer;->members()[Lorg/eclipse/core/resources/IResource;

    move-result-object p2

    array-length v0, p2

    const/4 v1, 0x0

    :goto_1
    if-lt v1, v0, :cond_2

    goto :goto_0

    :cond_2
    aget-object v2, p2, v1

    .line 10
    invoke-virtual {p3, v2}, Ljava/util/ArrayDeque;->addLast(Ljava/lang/Object;)V
    :try_end_0
    .catch Lorg/eclipse/core/runtime/CoreException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :catch_0
    move-exception p2

    .line 11
    invoke-static {p2}, Lorg/eclipse/jdt/internal/core/nd/indexer/Package;->log(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 12
    :cond_3
    instance-of v0, p2, Lorg/eclipse/core/resources/IFile;

    if-eqz v0, :cond_0

    .line 13
    check-cast p2, Lorg/eclipse/core/resources/IFile;

    .line 14
    invoke-interface {p2}, Lorg/eclipse/core/resources/IFile;->getFileExtension()Ljava/lang/String;

    move-result-object v0

    .line 15
    const-string v1, "class"

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 16
    invoke-static {p2}, Lorg/eclipse/jdt/core/JavaCore;->create(Lorg/eclipse/core/resources/IFile;)Lorg/eclipse/jdt/core/IJavaElement;

    move-result-object p2

    .line 17
    instance-of v0, p2, Lorg/eclipse/jdt/core/IClassFile;

    if-eqz v0, :cond_0

    .line 18
    check-cast p2, Lorg/eclipse/jdt/core/IClassFile;

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private static collectAllClassFiles(Lorg/eclipse/core/resources/IWorkspaceRoot;Ljava/util/List;Lorg/eclipse/jdt/core/IParent;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/eclipse/core/resources/IWorkspaceRoot;",
            "Ljava/util/List<",
            "-",
            "Lorg/eclipse/jdt/core/IClassFile;",
            ">;",
            "Lorg/eclipse/jdt/core/IParent;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/core/runtime/CoreException;
        }
    .end annotation

    .line 19
    invoke-interface {p2}, Lorg/eclipse/jdt/core/IParent;->getChildren()[Lorg/eclipse/jdt/core/IJavaElement;

    move-result-object p2

    array-length v0, p2

    const/4 v1, 0x0

    :goto_0
    if-lt v1, v0, :cond_0

    return-void

    :cond_0
    aget-object v2, p2, v1

    .line 20
    :try_start_0
    invoke-interface {v2}, Lorg/eclipse/jdt/core/IJavaElement;->getElementType()I

    move-result v3

    const/4 v4, 0x5

    if-ne v3, v4, :cond_1

    goto :goto_2

    .line 21
    :cond_1
    invoke-interface {v2}, Lorg/eclipse/jdt/core/IJavaElement;->exists()Z

    move-result v4

    if-nez v4, :cond_2

    goto :goto_2

    :cond_2
    const/4 v4, 0x6

    if-ne v3, v4, :cond_3

    .line 22
    check-cast v2, Lorg/eclipse/jdt/core/IClassFile;

    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :catch_0
    move-exception v2

    goto :goto_1

    .line 23
    :cond_3
    instance-of v3, v2, Lorg/eclipse/jdt/core/IParent;

    if-eqz v3, :cond_4

    .line 24
    check-cast v2, Lorg/eclipse/jdt/core/IParent;

    .line 25
    invoke-static {p0, p1, v2}, Lorg/eclipse/jdt/internal/core/nd/indexer/WorkspaceSnapshot;->collectAllClassFiles(Lorg/eclipse/core/resources/IWorkspaceRoot;Ljava/util/List;Lorg/eclipse/jdt/core/IParent;)V
    :try_end_0
    .catch Lorg/eclipse/core/runtime/CoreException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 26
    :goto_1
    invoke-static {v2}, Lorg/eclipse/jdt/internal/core/nd/indexer/Package;->log(Ljava/lang/Throwable;)V

    :cond_4
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public static create(Lorg/eclipse/core/resources/IWorkspaceRoot;Lorg/eclipse/core/runtime/IProgressMonitor;)Lorg/eclipse/jdt/internal/core/nd/indexer/WorkspaceSnapshot;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/core/runtime/CoreException;
        }
    .end annotation

    invoke-static {p1}, Lorg/eclipse/core/runtime/SubMonitor;->convert(Lorg/eclipse/core/runtime/IProgressMonitor;)Lorg/eclipse/core/runtime/SubMonitor;

    move-result-object p1

    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Lorg/eclipse/core/runtime/SubMonitor;->split(I)Lorg/eclipse/core/runtime/SubMonitor;

    move-result-object p1

    invoke-static {p0, p1}, Lorg/eclipse/jdt/internal/core/nd/indexer/WorkspaceSnapshot;->getAllIndexableObjectsInWorkspace(Lorg/eclipse/core/resources/IWorkspaceRoot;Lorg/eclipse/core/runtime/IProgressMonitor;)Ljava/util/List;

    move-result-object p0

    invoke-static {p0}, Lorg/eclipse/jdt/internal/core/nd/indexer/WorkspaceSnapshot;->removeDuplicatePaths(Ljava/util/List;)Ljava/util/Map;

    move-result-object p0

    new-instance p1, Lorg/eclipse/jdt/internal/core/nd/indexer/WorkspaceSnapshot;

    invoke-direct {p1, p0}, Lorg/eclipse/jdt/internal/core/nd/indexer/WorkspaceSnapshot;-><init>(Ljava/util/Map;)V

    return-object p1
.end method

.method private static getAllIndexableObjectsInWorkspace(Lorg/eclipse/core/resources/IWorkspaceRoot;Lorg/eclipse/core/runtime/IProgressMonitor;)Ljava/util/List;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/eclipse/core/resources/IWorkspaceRoot;",
            "Lorg/eclipse/core/runtime/IProgressMonitor;",
            ")",
            "Ljava/util/List<",
            "Lorg/eclipse/jdt/core/IJavaElement;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/core/runtime/CoreException;
        }
    .end annotation

    move-object/from16 v1, p0

    const/4 v2, 0x2

    move-object/from16 v0, p1

    invoke-static {v0, v2}, Lorg/eclipse/core/runtime/SubMonitor;->convert(Lorg/eclipse/core/runtime/IProgressMonitor;I)Lorg/eclipse/core/runtime/SubMonitor;

    move-result-object v3

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-interface/range {p0 .. p0}, Lorg/eclipse/core/resources/IWorkspaceRoot;->getProjects()[Lorg/eclipse/core/resources/IProject;

    move-result-object v0

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    array-length v6, v0

    const/4 v8, 0x0

    :goto_0
    if-lt v8, v6, :cond_b

    new-instance v9, Ljava/util/HashSet;

    invoke-direct {v9}, Ljava/util/HashSet;-><init>()V

    new-instance v10, Ljava/util/HashSet;

    invoke-direct {v10}, Ljava/util/HashSet;-><init>()V

    const/4 v11, 0x1

    invoke-virtual {v3, v11}, Lorg/eclipse/core/runtime/SubMonitor;->split(I)Lorg/eclipse/core/runtime/SubMonitor;

    move-result-object v0

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    invoke-virtual {v0, v6}, Lorg/eclipse/core/runtime/SubMonitor;->setWorkRemaining(I)Lorg/eclipse/core/runtime/SubMonitor;

    move-result-object v12

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :cond_0
    :goto_1
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {v3, v11}, Lorg/eclipse/core/runtime/SubMonitor;->split(I)Lorg/eclipse/core/runtime/SubMonitor;

    move-result-object v0

    invoke-static {v1, v4, v10, v0}, Lorg/eclipse/jdt/internal/core/nd/indexer/WorkspaceSnapshot;->collectAllClassFiles(Lorg/eclipse/core/resources/IWorkspaceRoot;Ljava/util/List;Ljava/util/Collection;Lorg/eclipse/core/runtime/IProgressMonitor;)V

    return-object v4

    :cond_1
    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/eclipse/core/resources/IProject;

    invoke-virtual {v12, v11}, Lorg/eclipse/core/runtime/SubMonitor;->split(I)Lorg/eclipse/core/runtime/SubMonitor;

    move-result-object v5

    :try_start_0
    invoke-interface {v0}, Lorg/eclipse/core/resources/IProject;->isOpen()Z

    move-result v6

    if-eqz v6, :cond_0

    const-string v6, "org.eclipse.jdt.core.javanature"

    invoke-interface {v0, v6}, Lorg/eclipse/core/resources/IProject;->isNatureEnabled(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-static {v0}, Lorg/eclipse/jdt/core/JavaCore;->create(Lorg/eclipse/core/resources/IProject;)Lorg/eclipse/jdt/core/IJavaProject;

    move-result-object v0

    invoke-interface {v0}, Lorg/eclipse/jdt/core/IJavaProject;->getRawClasspath()[Lorg/eclipse/jdt/core/IClasspathEntry;

    move-result-object v6

    sget-boolean v8, Lorg/eclipse/jdt/internal/core/nd/indexer/WorkspaceSnapshot;->EXPERIMENTAL_INDEX_OUTPUT_FOLDERS:Z

    if-eqz v8, :cond_5

    invoke-interface {v0}, Lorg/eclipse/jdt/core/IJavaProject;->getOutputLocation()Lorg/eclipse/core/runtime/IPath;

    move-result-object v8

    array-length v14, v6

    const/4 v15, 0x0

    :goto_2
    if-lt v15, v14, :cond_2

    goto :goto_5

    :cond_2
    aget-object v16, v6, v15

    invoke-interface/range {v16 .. v16}, Lorg/eclipse/jdt/core/IClasspathEntry;->getOutputLocation()Lorg/eclipse/core/runtime/IPath;

    move-result-object v16

    if-nez v16, :cond_3

    move-object v7, v8

    goto :goto_3

    :cond_3
    move-object/from16 v7, v16

    :goto_3
    invoke-interface {v1, v7}, Lorg/eclipse/core/resources/IWorkspaceRoot;->findMember(Lorg/eclipse/core/runtime/IPath;)Lorg/eclipse/core/resources/IResource;

    move-result-object v7

    if-eqz v7, :cond_4

    invoke-interface {v10, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :catch_0
    move-exception v0

    goto :goto_8

    :cond_4
    :goto_4
    add-int/lit8 v15, v15, 0x1

    goto :goto_2

    :cond_5
    :goto_5
    invoke-interface {v0}, Lorg/eclipse/jdt/core/IJavaProject;->getAllPackageFragmentRoots()[Lorg/eclipse/jdt/core/IPackageFragmentRoot;

    move-result-object v0

    array-length v6, v0

    invoke-virtual {v5, v6}, Lorg/eclipse/core/runtime/SubMonitor;->setWorkRemaining(I)Lorg/eclipse/core/runtime/SubMonitor;

    move-result-object v5

    array-length v6, v0

    const/4 v7, 0x0

    :goto_6
    if-lt v7, v6, :cond_6

    goto :goto_1

    :cond_6
    aget-object v8, v0, v7

    invoke-virtual {v5, v11}, Lorg/eclipse/core/runtime/SubMonitor;->split(I)Lorg/eclipse/core/runtime/SubMonitor;

    invoke-interface {v8}, Lorg/eclipse/jdt/core/IJavaElement;->exists()Z

    move-result v14

    if-nez v14, :cond_7

    goto :goto_7

    :cond_7
    invoke-static {v8}, Lorg/eclipse/jdt/internal/core/nd/java/JavaIndex;->getLocationForElement(Lorg/eclipse/jdt/core/IJavaElement;)Lorg/eclipse/core/runtime/IPath;

    move-result-object v14

    invoke-interface {v9, v14}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_8

    goto :goto_7

    :cond_8
    invoke-interface {v9, v14}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    invoke-interface {v8}, Lorg/eclipse/jdt/core/IPackageFragmentRoot;->getKind()I

    move-result v14

    if-ne v14, v2, :cond_a

    invoke-interface {v8}, Lorg/eclipse/jdt/core/IPackageFragmentRoot;->isArchive()Z

    move-result v14

    if-eqz v14, :cond_9

    invoke-interface {v4, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_7

    :cond_9
    invoke-static {v1, v4, v8}, Lorg/eclipse/jdt/internal/core/nd/indexer/WorkspaceSnapshot;->collectAllClassFiles(Lorg/eclipse/core/resources/IWorkspaceRoot;Ljava/util/List;Lorg/eclipse/jdt/core/IParent;)V

    goto :goto_7

    :cond_a
    invoke-static {v1, v4, v8}, Lorg/eclipse/jdt/internal/core/nd/indexer/WorkspaceSnapshot;->collectAllClassFiles(Lorg/eclipse/core/resources/IWorkspaceRoot;Ljava/util/List;Lorg/eclipse/jdt/core/IParent;)V
    :try_end_0
    .catch Lorg/eclipse/core/runtime/CoreException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_7
    add-int/lit8 v7, v7, 0x1

    goto :goto_6

    :goto_8
    invoke-static {v0}, Lorg/eclipse/jdt/internal/core/nd/indexer/Package;->log(Ljava/lang/Throwable;)V

    goto/16 :goto_1

    :cond_b
    aget-object v7, v0, v8

    invoke-interface {v7}, Lorg/eclipse/core/resources/IProject;->isOpen()Z

    move-result v9

    if-eqz v9, :cond_c

    invoke-interface {v5, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_c
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_0
.end method

.method private static getWorkspacePathForRoot(Lorg/eclipse/jdt/core/IJavaElement;)Lorg/eclipse/core/runtime/IPath;
    .locals 0

    invoke-interface {p0}, Lorg/eclipse/jdt/core/IJavaElement;->getResource()Lorg/eclipse/core/resources/IResource;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lorg/eclipse/core/resources/IResource;->getFullPath()Lorg/eclipse/core/runtime/IPath;

    move-result-object p0

    return-object p0

    :cond_0
    sget-object p0, Lorg/eclipse/core/runtime/Path;->EMPTY:Lorg/eclipse/core/runtime/Path;

    return-object p0
.end method

.method private static removeDuplicatePaths(Ljava/util/List;)Ljava/util/Map;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/eclipse/jdt/core/IJavaElement;",
            ">;)",
            "Ljava/util/Map<",
            "Lorg/eclipse/core/runtime/IPath;",
            "Ljava/util/List<",
            "Lorg/eclipse/jdt/core/IJavaElement;",
            ">;>;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_0

    return-object v0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/eclipse/jdt/core/IJavaElement;

    invoke-static {v2}, Lorg/eclipse/jdt/internal/core/nd/java/JavaIndex;->getLocationForElement(Lorg/eclipse/jdt/core/IJavaElement;)Lorg/eclipse/core/runtime/IPath;

    move-result-object v3

    invoke-static {v2}, Lorg/eclipse/jdt/internal/core/nd/indexer/WorkspaceSnapshot;->getWorkspacePathForRoot(Lorg/eclipse/jdt/core/IJavaElement;)Lorg/eclipse/core/runtime/IPath;

    move-result-object v4

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    if-nez v5, :cond_1

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_1
    if-eqz v4, :cond_4

    invoke-virtual {v1, v4}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_0

    :cond_2
    invoke-interface {v4}, Lorg/eclipse/core/runtime/IPath;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_3

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v6, "Found duplicate workspace path for "

    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lorg/eclipse/jdt/internal/core/nd/indexer/Package;->logInfo(Ljava/lang/String;)V

    :cond_3
    invoke-virtual {v1, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_4
    :goto_1
    invoke-interface {v5, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method


# virtual methods
.method public allLocations()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lorg/eclipse/core/runtime/IPath;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/nd/indexer/WorkspaceSnapshot;->allIndexables:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public get(Lorg/eclipse/core/runtime/IPath;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/eclipse/core/runtime/IPath;",
            ")",
            "Ljava/util/List<",
            "Lorg/eclipse/jdt/core/IJavaElement;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/nd/indexer/WorkspaceSnapshot;->allIndexables:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    if-nez p1, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    :cond_0
    return-object p1
.end method

.method public getAllIndexables()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Lorg/eclipse/core/runtime/IPath;",
            "Ljava/util/List<",
            "Lorg/eclipse/jdt/core/IJavaElement;",
            ">;>;"
        }
    .end annotation

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/nd/indexer/WorkspaceSnapshot;->allIndexables:Ljava/util/Map;

    return-object v0
.end method
