.class public Lorg/eclipse/jdt/internal/core/DeltaProcessor;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/eclipse/jdt/internal/core/DeltaProcessor$OutputsInfo;,
        Lorg/eclipse/jdt/internal/core/DeltaProcessor$RootInfo;
    }
.end annotation


# static fields
.field private static final BINARY:I = 0x2

.field public static DEBUG:Z = false

.field public static final DEFAULT_CHANGE_EVENT:I = 0x0

.field private static final EXTERNAL_JAR_ADDED:Ljava/lang/String; = "external jar added"

.field private static final EXTERNAL_JAR_CHANGED:Ljava/lang/String; = "external jar changed"

.field private static final EXTERNAL_JAR_REMOVED:Ljava/lang/String; = "external jar removed"

.field private static final EXTERNAL_JAR_UNCHANGED:Ljava/lang/String; = "external jar unchanged"

.field private static final IGNORE:I = 0x0

.field private static final INTERNAL_JAR_IGNORE:Ljava/lang/String; = "internal jar ignore"

.field private static final NON_JAVA_RESOURCE:I = -0x1

.field public static PERF:Z = false

.field private static final SOURCE:I = 0x1

.field public static VERBOSE:Z = false


# instance fields
.field private currentDelta:Lorg/eclipse/jdt/internal/core/JavaElementDelta;

.field private currentElement:Lorg/eclipse/jdt/internal/core/Openable;

.field private isFiring:Z

.field public javaModelDeltas:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/eclipse/jdt/core/IJavaElementDelta;",
            ">;"
        }
    .end annotation
.end field

.field manager:Lorg/eclipse/jdt/internal/core/JavaModelManager;

.field private final modelUpdater:Lorg/eclipse/jdt/internal/core/ModelUpdater;

.field public oldRoots:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lorg/eclipse/jdt/core/IJavaProject;",
            "[",
            "Lorg/eclipse/jdt/core/IPackageFragmentRoot;",
            ">;"
        }
    .end annotation
.end field

.field public overridenEventType:I

.field public projectCachesToReset:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lorg/eclipse/jdt/core/IJavaElement;",
            ">;"
        }
    .end annotation
.end field

.field public reconcileDeltas:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lorg/eclipse/jdt/core/ICompilationUnit;",
            "Lorg/eclipse/jdt/core/IJavaElementDelta;",
            ">;"
        }
    .end annotation
.end field

.field private sourceElementParserCache:Lorg/eclipse/jdt/internal/compiler/SourceElementParser;

.field private state:Lorg/eclipse/jdt/internal/core/DeltaProcessingState;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lorg/eclipse/jdt/internal/core/DeltaProcessingState;Lorg/eclipse/jdt/internal/core/JavaModelManager;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/eclipse/jdt/internal/core/DeltaProcessor;->javaModelDeltas:Ljava/util/List;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/eclipse/jdt/internal/core/DeltaProcessor;->reconcileDeltas:Ljava/util/Map;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/eclipse/jdt/internal/core/DeltaProcessor;->isFiring:Z

    new-instance v0, Lorg/eclipse/jdt/internal/core/ModelUpdater;

    invoke-direct {v0}, Lorg/eclipse/jdt/internal/core/ModelUpdater;-><init>()V

    iput-object v0, p0, Lorg/eclipse/jdt/internal/core/DeltaProcessor;->modelUpdater:Lorg/eclipse/jdt/internal/core/ModelUpdater;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lorg/eclipse/jdt/internal/core/DeltaProcessor;->projectCachesToReset:Ljava/util/Set;

    const/4 v0, -0x1

    iput v0, p0, Lorg/eclipse/jdt/internal/core/DeltaProcessor;->overridenEventType:I

    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/DeltaProcessor;->state:Lorg/eclipse/jdt/internal/core/DeltaProcessingState;

    iput-object p2, p0, Lorg/eclipse/jdt/internal/core/DeltaProcessor;->manager:Lorg/eclipse/jdt/internal/core/JavaModelManager;

    return-void
.end method

.method private addDependentProjects(Lorg/eclipse/jdt/core/IJavaProject;Ljava/util/Map;Ljava/util/Set;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/eclipse/jdt/core/IJavaProject;",
            "Ljava/util/Map<",
            "Lorg/eclipse/jdt/core/IJavaProject;",
            "[",
            "Lorg/eclipse/jdt/core/IJavaProject;",
            ">;",
            "Ljava/util/Set<",
            "Lorg/eclipse/jdt/core/IJavaElement;",
            ">;)V"
        }
    .end annotation

    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lorg/eclipse/jdt/core/IJavaProject;

    if-nez p1, :cond_0

    return-void

    :cond_0
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-lt v1, v0, :cond_1

    return-void

    :cond_1
    aget-object v2, p1, v1

    invoke-interface {p3, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_1

    :cond_2
    invoke-interface {p3, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    invoke-direct {p0, v2, p2, p3}, Lorg/eclipse/jdt/internal/core/DeltaProcessor;->addDependentProjects(Lorg/eclipse/jdt/core/IJavaProject;Ljava/util/Map;Ljava/util/Set;)V

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private addPackageFragmentRoot(Lorg/eclipse/jdt/internal/core/OpenableElementInfo;Lorg/eclipse/jdt/core/IPackageFragmentRoot;)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/JavaModelException;
        }
    .end annotation

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/core/OpenableElementInfo;->getChildren()[Lorg/eclipse/jdt/core/IJavaElement;

    move-result-object v0

    array-length v1, v0

    if-lez v1, :cond_8

    invoke-interface {p2}, Lorg/eclipse/jdt/core/IJavaElement;->getJavaProject()Lorg/eclipse/jdt/core/IJavaProject;

    move-result-object v1

    check-cast v1, Lorg/eclipse/jdt/internal/core/JavaProject;

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/core/JavaProject;->getResolvedClasspath()[Lorg/eclipse/jdt/core/IClasspathEntry;

    move-result-object v1

    invoke-interface {p2}, Lorg/eclipse/jdt/core/IPackageFragmentRoot;->getResolvedClasspathEntry()Lorg/eclipse/jdt/core/IClasspathEntry;

    move-result-object v2

    invoke-interface {v2}, Lorg/eclipse/jdt/core/IClasspathEntry;->getPath()Lorg/eclipse/core/runtime/IPath;

    move-result-object v2

    const/4 v3, -0x1

    const/4 v4, 0x0

    move v7, v3

    move v5, v4

    move v6, v5

    :goto_0
    array-length v8, v0

    if-ge v5, v8, :cond_3

    array-length v8, v1

    if-lt v6, v8, :cond_0

    goto :goto_1

    :cond_0
    aget-object v8, v1, v6

    if-eq v7, v6, :cond_1

    invoke-interface {v8}, Lorg/eclipse/jdt/core/IClasspathEntry;->getPath()Lorg/eclipse/core/runtime/IPath;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    move v3, v5

    goto :goto_1

    :cond_1
    aget-object v7, v0, v5

    check-cast v7, Lorg/eclipse/jdt/core/IPackageFragmentRoot;

    invoke-interface {v7}, Lorg/eclipse/jdt/core/IPackageFragmentRoot;->getResolvedClasspathEntry()Lorg/eclipse/jdt/core/IClasspathEntry;

    move-result-object v7

    invoke-interface {v7}, Lorg/eclipse/jdt/core/IClasspathEntry;->getPath()Lorg/eclipse/core/runtime/IPath;

    move-result-object v7

    invoke-interface {v8}, Lorg/eclipse/jdt/core/IClasspathEntry;->getPath()Lorg/eclipse/core/runtime/IPath;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    add-int/lit8 v5, v5, 0x1

    move v7, v6

    goto :goto_0

    :cond_2
    add-int/lit8 v7, v6, 0x1

    move v9, v7

    move v7, v6

    move v6, v9

    goto :goto_0

    :cond_3
    :goto_1
    array-length v1, v0

    if-lt v5, v1, :cond_4

    goto :goto_2

    :cond_4
    aget-object v1, v0, v5

    invoke-virtual {v1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    return-void

    :cond_5
    aget-object v1, v0, v5

    check-cast v1, Lorg/eclipse/jdt/core/IPackageFragmentRoot;

    invoke-interface {v1}, Lorg/eclipse/jdt/core/IPackageFragmentRoot;->getResolvedClasspathEntry()Lorg/eclipse/jdt/core/IClasspathEntry;

    move-result-object v1

    invoke-interface {v1}, Lorg/eclipse/jdt/core/IClasspathEntry;->getPath()Lorg/eclipse/core/runtime/IPath;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    :goto_2
    if-ltz v3, :cond_8

    array-length v1, v0

    add-int/lit8 v1, v1, 0x1

    new-array v2, v1, [Lorg/eclipse/jdt/core/IPackageFragmentRoot;

    if-lez v3, :cond_6

    invoke-static {v0, v4, v2, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_6
    aput-object p2, v2, v3

    add-int/lit8 p2, v3, 0x1

    sub-int/2addr v1, v3

    add-int/lit8 v1, v1, -0x1

    invoke-static {v0, v3, v2, p2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-virtual {p1, v2}, Lorg/eclipse/jdt/internal/core/OpenableElementInfo;->setChildren([Lorg/eclipse/jdt/core/IJavaElement;)V

    return-void

    :cond_7
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_8
    invoke-virtual {p1, p2}, Lorg/eclipse/jdt/internal/core/OpenableElementInfo;->addChild(Lorg/eclipse/jdt/core/IJavaElement;)V

    return-void
.end method

.method private addToParentInfo(Lorg/eclipse/jdt/internal/core/Openable;)V
    .locals 2

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/core/JavaElement;->getParent()Lorg/eclipse/jdt/core/IJavaElement;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jdt/internal/core/Openable;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/core/Openable;->isOpen()Z

    move-result v1

    if-eqz v1, :cond_1

    :try_start_0
    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/core/JavaElement;->getElementInfo()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jdt/internal/core/OpenableElementInfo;

    instance-of v1, p1, Lorg/eclipse/jdt/core/IPackageFragmentRoot;

    if-eqz v1, :cond_0

    check-cast p1, Lorg/eclipse/jdt/core/IPackageFragmentRoot;

    invoke-direct {p0, v0, p1}, Lorg/eclipse/jdt/internal/core/DeltaProcessor;->addPackageFragmentRoot(Lorg/eclipse/jdt/internal/core/OpenableElementInfo;Lorg/eclipse/jdt/core/IPackageFragmentRoot;)V

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1}, Lorg/eclipse/jdt/internal/core/OpenableElementInfo;->addChild(Lorg/eclipse/jdt/core/IJavaElement;)V
    :try_end_0
    .catch Lorg/eclipse/jdt/core/JavaModelException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_1
    :goto_0
    return-void
.end method

.method private checkExternalArchiveChanges([Lorg/eclipse/jdt/core/IJavaElement;ZLorg/eclipse/core/runtime/IProgressMonitor;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/JavaModelException;
        }
    .end annotation

    if-eqz p3, :cond_1

    .line 2
    invoke-interface {p3}, Lorg/eclipse/core/runtime/IProgressMonitor;->isCanceled()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    new-instance p1, Lorg/eclipse/core/runtime/OperationCanceledException;

    invoke-direct {p1}, Lorg/eclipse/core/runtime/OperationCanceledException;-><init>()V

    throw p1

    :cond_1
    :goto_0
    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p3, :cond_2

    .line 4
    :try_start_0
    const-string v2, ""

    invoke-interface {p3, v2, v1}, Lorg/eclipse/core/runtime/IProgressMonitor;->beginTask(Ljava/lang/String;I)V

    goto :goto_1

    :catchall_0
    move-exception p1

    goto/16 :goto_8

    .line 5
    :cond_2
    :goto_1
    array-length v2, p1

    const/4 v3, 0x0

    move v4, v3

    move v5, v4

    :goto_2
    if-lt v4, v2, :cond_9

    .line 6
    iget-object p1, p0, Lorg/eclipse/jdt/internal/core/DeltaProcessor;->state:Lorg/eclipse/jdt/internal/core/DeltaProcessingState;

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/core/DeltaProcessingState;->removeExternalElementsToRefresh()Ljava/util/Set;

    move-result-object p1

    if-eqz p1, :cond_6

    .line 7
    invoke-direct {p0, p1, p3}, Lorg/eclipse/jdt/internal/core/DeltaProcessor;->createExternalArchiveDelta(Ljava/util/Set;Lorg/eclipse/core/runtime/IProgressMonitor;)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 8
    iget-object p1, p0, Lorg/eclipse/jdt/internal/core/DeltaProcessor;->currentDelta:Lorg/eclipse/jdt/internal/core/JavaElementDelta;

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/core/JavaElementDelta;->getAffectedChildren()[Lorg/eclipse/jdt/core/IJavaElementDelta;

    move-result-object p1

    .line 9
    array-length v1, p1

    .line 10
    new-array v2, v1, [Lorg/eclipse/core/resources/IProject;

    move v4, v3

    :goto_3
    if-lt v4, v1, :cond_5

    if-lez v1, :cond_4

    if-eqz p2, :cond_3

    .line 11
    iget-object p1, p0, Lorg/eclipse/jdt/internal/core/DeltaProcessor;->manager:Lorg/eclipse/jdt/internal/core/JavaModelManager;

    invoke-virtual {p1, v2, p3}, Lorg/eclipse/jdt/internal/core/JavaModelManager;->touchProjects([Lorg/eclipse/core/resources/IProject;Lorg/eclipse/core/runtime/IProgressMonitor;)V

    goto :goto_4

    .line 12
    :cond_3
    new-instance p1, Lorg/eclipse/jdt/internal/core/DeltaProcessor$1;

    invoke-direct {p1, p0, v2}, Lorg/eclipse/jdt/internal/core/DeltaProcessor$1;-><init>(Lorg/eclipse/jdt/internal/core/DeltaProcessor;[Lorg/eclipse/core/resources/IProject;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    :try_start_1
    invoke-static {}, Lorg/eclipse/core/resources/ResourcesPlugin;->getWorkspace()Lorg/eclipse/core/resources/IWorkspace;

    move-result-object p2

    invoke-interface {p2, p1, p3}, Lorg/eclipse/core/resources/IWorkspace;->run(Lorg/eclipse/core/resources/IWorkspaceRunnable;Lorg/eclipse/core/runtime/IProgressMonitor;)V
    :try_end_1
    .catch Lorg/eclipse/core/runtime/CoreException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_4

    :catch_0
    move-exception p1

    .line 14
    :try_start_2
    new-instance p2, Lorg/eclipse/jdt/core/JavaModelException;

    invoke-direct {p2, p1}, Lorg/eclipse/jdt/core/JavaModelException;-><init>(Lorg/eclipse/core/runtime/CoreException;)V

    throw p2

    .line 15
    :cond_4
    :goto_4
    iget-object p1, p0, Lorg/eclipse/jdt/internal/core/DeltaProcessor;->currentDelta:Lorg/eclipse/jdt/internal/core/JavaElementDelta;

    if-eqz p1, :cond_7

    .line 16
    invoke-virtual {p0, p1, v3}, Lorg/eclipse/jdt/internal/core/DeltaProcessor;->fire(Lorg/eclipse/jdt/core/IJavaElementDelta;I)V

    goto :goto_5

    .line 17
    :cond_5
    aget-object v5, p1, v4

    .line 18
    invoke-interface {v5}, Lorg/eclipse/jdt/core/IJavaElementDelta;->getElement()Lorg/eclipse/jdt/core/IJavaElement;

    move-result-object v5

    check-cast v5, Lorg/eclipse/jdt/internal/core/JavaProject;

    .line 19
    invoke-virtual {v5}, Lorg/eclipse/jdt/internal/core/JavaProject;->getProject()Lorg/eclipse/core/resources/IProject;

    move-result-object v5

    aput-object v5, v2, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    :cond_6
    if-eqz v5, :cond_7

    .line 20
    invoke-static {}, Lorg/eclipse/jdt/internal/core/JavaModelManager;->getJavaModelManager()Lorg/eclipse/jdt/internal/core/JavaModelManager;

    move-result-object p1

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/core/JavaModelManager;->resetJarTypeCache()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 21
    :cond_7
    :goto_5
    iput-object v0, p0, Lorg/eclipse/jdt/internal/core/DeltaProcessor;->currentDelta:Lorg/eclipse/jdt/internal/core/JavaElementDelta;

    if-eqz p3, :cond_8

    .line 22
    invoke-interface {p3}, Lorg/eclipse/core/runtime/IProgressMonitor;->done()V

    :cond_8
    return-void

    .line 23
    :cond_9
    :try_start_3
    aget-object v6, p1, v4

    .line 24
    iget-object v7, p0, Lorg/eclipse/jdt/internal/core/DeltaProcessor;->state:Lorg/eclipse/jdt/internal/core/DeltaProcessingState;

    invoke-virtual {v7, v6}, Lorg/eclipse/jdt/internal/core/DeltaProcessingState;->addForRefresh(Lorg/eclipse/jdt/core/IJavaElement;)V

    .line 25
    invoke-interface {v6}, Lorg/eclipse/jdt/core/IJavaElement;->getElementType()I

    move-result v6

    if-ne v6, v1, :cond_b

    .line 26
    invoke-static {}, Lorg/eclipse/jdt/internal/core/JavaModelManager;->getJavaModelManager()Lorg/eclipse/jdt/internal/core/JavaModelManager;

    move-result-object v6

    invoke-virtual {v6}, Lorg/eclipse/jdt/internal/core/JavaModelManager;->getExternalWorkingCopyProjects()Ljava/util/HashSet;

    move-result-object v6

    if-eqz v6, :cond_b

    .line 27
    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .line 28
    :goto_6
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_a

    move v5, v1

    goto :goto_7

    .line 29
    :cond_a
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/eclipse/jdt/internal/core/JavaProject;

    .line 30
    invoke-virtual {v6}, Lorg/eclipse/jdt/internal/core/JavaProject;->resetCaches()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_6

    :cond_b
    :goto_7
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_2

    .line 31
    :goto_8
    iput-object v0, p0, Lorg/eclipse/jdt/internal/core/DeltaProcessor;->currentDelta:Lorg/eclipse/jdt/internal/core/JavaElementDelta;

    if-eqz p3, :cond_c

    .line 32
    invoke-interface {p3}, Lorg/eclipse/core/runtime/IProgressMonitor;->done()V

    .line 33
    :cond_c
    throw p1
.end method

.method private checkExternalFolderChange(Lorg/eclipse/core/resources/IProject;Lorg/eclipse/jdt/internal/core/JavaProject;)V
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/DeltaProcessor;->state:Lorg/eclipse/jdt/internal/core/DeltaProcessingState;

    invoke-virtual {v0, p1}, Lorg/eclipse/jdt/internal/core/DeltaProcessingState;->getClasspathChange(Lorg/eclipse/core/resources/IProject;)Lorg/eclipse/jdt/internal/core/ClasspathChange;

    move-result-object p1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/DeltaProcessor;->state:Lorg/eclipse/jdt/internal/core/DeltaProcessingState;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    iget-object p1, p1, Lorg/eclipse/jdt/internal/core/ClasspathChange;->oldResolvedClasspath:[Lorg/eclipse/jdt/core/IClasspathEntry;

    :goto_0
    invoke-virtual {v0, p2, p1}, Lorg/eclipse/jdt/internal/core/DeltaProcessingState;->addExternalFolderChange(Lorg/eclipse/jdt/internal/core/JavaProject;[Lorg/eclipse/jdt/core/IClasspathEntry;)V

    return-void
.end method

.method private checkProjectReferenceChange(Lorg/eclipse/core/resources/IProject;Lorg/eclipse/jdt/internal/core/JavaProject;)V
    .locals 0

    invoke-interface {p1}, Lorg/eclipse/core/resources/IProject;->clearCachedDynamicReferences()V

    iget-object p1, p0, Lorg/eclipse/jdt/internal/core/DeltaProcessor;->state:Lorg/eclipse/jdt/internal/core/DeltaProcessingState;

    invoke-virtual {p1, p2}, Lorg/eclipse/jdt/internal/core/DeltaProcessingState;->addProjectReferenceChange(Lorg/eclipse/jdt/core/IJavaProject;)V

    return-void
.end method

.method private checkProjectsAndClasspathChanges(Lorg/eclipse/core/resources/IResourceDelta;)V
    .locals 10

    invoke-interface {p1}, Lorg/eclipse/core/resources/IResourceDelta;->getResource()Lorg/eclipse/core/resources/IResource;

    move-result-object v0

    invoke-interface {v0}, Lorg/eclipse/core/resources/IResource;->getType()I

    move-result v1

    const/4 v2, 0x4

    const/4 v3, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eq v1, v5, :cond_10

    if-eq v1, v3, :cond_d

    if-eq v1, v2, :cond_1

    const/16 v0, 0x8

    if-eq v1, v0, :cond_0

    goto/16 :goto_4

    :cond_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/DeltaProcessor;->state:Lorg/eclipse/jdt/internal/core/DeltaProcessingState;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/core/DeltaProcessingState;->getOldJavaProjecNames()Ljava/util/Set;

    invoke-interface {p1}, Lorg/eclipse/core/resources/IResourceDelta;->getAffectedChildren()[Lorg/eclipse/core/resources/IResourceDelta;

    move-result-object v6

    goto/16 :goto_4

    :cond_1
    check-cast v0, Lorg/eclipse/core/resources/IProject;

    invoke-static {v0}, Lorg/eclipse/jdt/core/JavaCore;->create(Lorg/eclipse/core/resources/IProject;)Lorg/eclipse/jdt/core/IJavaProject;

    move-result-object v1

    check-cast v1, Lorg/eclipse/jdt/internal/core/JavaProject;

    invoke-interface {p1}, Lorg/eclipse/core/resources/IResourceDelta;->getKind()I

    move-result v7

    if-eq v7, v5, :cond_b

    if-eq v7, v3, :cond_a

    if-eq v7, v2, :cond_2

    goto/16 :goto_4

    :cond_2
    invoke-interface {p1}, Lorg/eclipse/core/resources/IResourceDelta;->getFlags()I

    move-result v2

    and-int/lit16 v2, v2, 0x4000

    if-eqz v2, :cond_5

    iget-object p1, p0, Lorg/eclipse/jdt/internal/core/DeltaProcessor;->manager:Lorg/eclipse/jdt/internal/core/JavaModelManager;

    invoke-virtual {p1, v4}, Lorg/eclipse/jdt/internal/core/JavaModelManager;->forceBatchInitializations(Z)Z

    iget-object p1, p0, Lorg/eclipse/jdt/internal/core/DeltaProcessor;->projectCachesToReset:Ljava/util/Set;

    invoke-interface {p1, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    invoke-interface {v0}, Lorg/eclipse/core/resources/IProject;->isOpen()Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-static {v0}, Lorg/eclipse/jdt/internal/core/JavaProject;->hasJavaNature(Lorg/eclipse/core/resources/IProject;)Z

    move-result p1

    if-eqz p1, :cond_4

    invoke-direct {p0, v1}, Lorg/eclipse/jdt/internal/core/DeltaProcessor;->addToParentInfo(Lorg/eclipse/jdt/internal/core/Openable;)V

    invoke-direct {p0, v1}, Lorg/eclipse/jdt/internal/core/DeltaProcessor;->readRawClasspath(Lorg/eclipse/jdt/internal/core/JavaProject;)V

    invoke-direct {p0, v0, v1}, Lorg/eclipse/jdt/internal/core/DeltaProcessor;->checkProjectReferenceChange(Lorg/eclipse/core/resources/IProject;Lorg/eclipse/jdt/internal/core/JavaProject;)V

    invoke-direct {p0, v0, v1}, Lorg/eclipse/jdt/internal/core/DeltaProcessor;->checkExternalFolderChange(Lorg/eclipse/core/resources/IProject;Lorg/eclipse/jdt/internal/core/JavaProject;)V

    goto :goto_0

    :cond_3
    :try_start_0
    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/core/JavaProject;->close()V
    :try_end_0
    .catch Lorg/eclipse/jdt/core/JavaModelException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    invoke-direct {p0, v1}, Lorg/eclipse/jdt/internal/core/DeltaProcessor;->removeFromParentInfo(Lorg/eclipse/jdt/internal/core/Openable;)V

    iget-object p1, p0, Lorg/eclipse/jdt/internal/core/DeltaProcessor;->manager:Lorg/eclipse/jdt/internal/core/JavaModelManager;

    invoke-virtual {p1, v1, v4}, Lorg/eclipse/jdt/internal/core/JavaModelManager;->removePerProjectInfo(Lorg/eclipse/jdt/internal/core/JavaProject;Z)V

    iget-object p1, p0, Lorg/eclipse/jdt/internal/core/DeltaProcessor;->manager:Lorg/eclipse/jdt/internal/core/JavaModelManager;

    invoke-virtual {p1, v1}, Lorg/eclipse/jdt/internal/core/JavaModelManager;->containerRemove(Lorg/eclipse/jdt/core/IJavaProject;)V

    :cond_4
    :goto_0
    iget-object p1, p0, Lorg/eclipse/jdt/internal/core/DeltaProcessor;->state:Lorg/eclipse/jdt/internal/core/DeltaProcessingState;

    iput-boolean v5, p1, Lorg/eclipse/jdt/internal/core/DeltaProcessingState;->rootsAreStale:Z

    goto/16 :goto_4

    :cond_5
    invoke-interface {p1}, Lorg/eclipse/core/resources/IResourceDelta;->getFlags()I

    move-result v2

    const/high16 v3, 0x80000

    and-int/2addr v2, v3

    if-eqz v2, :cond_9

    iget-object v2, p0, Lorg/eclipse/jdt/internal/core/DeltaProcessor;->state:Lorg/eclipse/jdt/internal/core/DeltaProcessingState;

    invoke-interface {v0}, Lorg/eclipse/core/resources/IProject;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/eclipse/jdt/internal/core/DeltaProcessingState;->findJavaProject(Ljava/lang/String;)Lorg/eclipse/jdt/core/IJavaProject;

    move-result-object v2

    if-eqz v2, :cond_6

    move v2, v5

    goto :goto_1

    :cond_6
    move v2, v4

    :goto_1
    invoke-static {v0}, Lorg/eclipse/jdt/internal/core/JavaProject;->hasJavaNature(Lorg/eclipse/core/resources/IProject;)Z

    move-result v3

    if-eq v2, v3, :cond_8

    iget-object p1, p0, Lorg/eclipse/jdt/internal/core/DeltaProcessor;->manager:Lorg/eclipse/jdt/internal/core/JavaModelManager;

    invoke-virtual {p1, v4}, Lorg/eclipse/jdt/internal/core/JavaModelManager;->forceBatchInitializations(Z)Z

    iget-object p1, p0, Lorg/eclipse/jdt/internal/core/DeltaProcessor;->projectCachesToReset:Ljava/util/Set;

    invoke-interface {p1, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    if-eqz v3, :cond_7

    invoke-direct {p0, v1}, Lorg/eclipse/jdt/internal/core/DeltaProcessor;->addToParentInfo(Lorg/eclipse/jdt/internal/core/Openable;)V

    invoke-direct {p0, v1}, Lorg/eclipse/jdt/internal/core/DeltaProcessor;->readRawClasspath(Lorg/eclipse/jdt/internal/core/JavaProject;)V

    invoke-direct {p0, v0, v1}, Lorg/eclipse/jdt/internal/core/DeltaProcessor;->checkProjectReferenceChange(Lorg/eclipse/core/resources/IProject;Lorg/eclipse/jdt/internal/core/JavaProject;)V

    invoke-direct {p0, v0, v1}, Lorg/eclipse/jdt/internal/core/DeltaProcessor;->checkExternalFolderChange(Lorg/eclipse/core/resources/IProject;Lorg/eclipse/jdt/internal/core/JavaProject;)V

    goto :goto_2

    :cond_7
    iget-object p1, p0, Lorg/eclipse/jdt/internal/core/DeltaProcessor;->manager:Lorg/eclipse/jdt/internal/core/JavaModelManager;

    invoke-virtual {p1, v1, v5}, Lorg/eclipse/jdt/internal/core/JavaModelManager;->removePerProjectInfo(Lorg/eclipse/jdt/internal/core/JavaProject;Z)V

    iget-object p1, p0, Lorg/eclipse/jdt/internal/core/DeltaProcessor;->manager:Lorg/eclipse/jdt/internal/core/JavaModelManager;

    invoke-virtual {p1, v1}, Lorg/eclipse/jdt/internal/core/JavaModelManager;->containerRemove(Lorg/eclipse/jdt/core/IJavaProject;)V

    :try_start_1
    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/core/JavaProject;->close()V
    :try_end_1
    .catch Lorg/eclipse/jdt/core/JavaModelException; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    invoke-direct {p0, v1}, Lorg/eclipse/jdt/internal/core/DeltaProcessor;->removeFromParentInfo(Lorg/eclipse/jdt/internal/core/Openable;)V

    :goto_2
    iget-object p1, p0, Lorg/eclipse/jdt/internal/core/DeltaProcessor;->state:Lorg/eclipse/jdt/internal/core/DeltaProcessingState;

    iput-boolean v5, p1, Lorg/eclipse/jdt/internal/core/DeltaProcessingState;->rootsAreStale:Z

    goto/16 :goto_4

    :cond_8
    if-eqz v3, :cond_18

    invoke-direct {p0, v1}, Lorg/eclipse/jdt/internal/core/DeltaProcessor;->addToParentInfo(Lorg/eclipse/jdt/internal/core/Openable;)V

    invoke-interface {p1}, Lorg/eclipse/core/resources/IResourceDelta;->getAffectedChildren()[Lorg/eclipse/core/resources/IResourceDelta;

    move-result-object v6

    goto/16 :goto_4

    :cond_9
    invoke-static {v0}, Lorg/eclipse/jdt/internal/core/JavaProject;->hasJavaNature(Lorg/eclipse/core/resources/IProject;)Z

    move-result v0

    if-eqz v0, :cond_18

    invoke-direct {p0, v1}, Lorg/eclipse/jdt/internal/core/DeltaProcessor;->addToParentInfo(Lorg/eclipse/jdt/internal/core/Openable;)V

    invoke-interface {p1}, Lorg/eclipse/core/resources/IResourceDelta;->getAffectedChildren()[Lorg/eclipse/core/resources/IResourceDelta;

    move-result-object v6

    goto/16 :goto_4

    :cond_a
    iget-object p1, p0, Lorg/eclipse/jdt/internal/core/DeltaProcessor;->manager:Lorg/eclipse/jdt/internal/core/JavaModelManager;

    invoke-virtual {p1, v4}, Lorg/eclipse/jdt/internal/core/JavaModelManager;->forceBatchInitializations(Z)Z

    iget-object p1, p0, Lorg/eclipse/jdt/internal/core/DeltaProcessor;->manager:Lorg/eclipse/jdt/internal/core/JavaModelManager;

    invoke-virtual {p1, v1, v5}, Lorg/eclipse/jdt/internal/core/JavaModelManager;->removePerProjectInfo(Lorg/eclipse/jdt/internal/core/JavaProject;Z)V

    iget-object p1, p0, Lorg/eclipse/jdt/internal/core/DeltaProcessor;->manager:Lorg/eclipse/jdt/internal/core/JavaModelManager;

    invoke-virtual {p1, v1}, Lorg/eclipse/jdt/internal/core/JavaModelManager;->containerRemove(Lorg/eclipse/jdt/core/IJavaProject;)V

    invoke-static {}, Lorg/eclipse/jdt/internal/core/JavaModelManager;->getModulePathManager()Lorg/eclipse/jdt/internal/core/ModuleSourcePathManager;

    move-result-object p1

    invoke-virtual {p1, v1}, Lorg/eclipse/jdt/internal/core/ModuleSourcePathManager;->removeEntry(Lorg/eclipse/jdt/internal/core/JavaProject;)V

    iget-object p1, p0, Lorg/eclipse/jdt/internal/core/DeltaProcessor;->state:Lorg/eclipse/jdt/internal/core/DeltaProcessingState;

    iput-boolean v5, p1, Lorg/eclipse/jdt/internal/core/DeltaProcessingState;->rootsAreStale:Z

    goto/16 :goto_4

    :cond_b
    iget-object p1, p0, Lorg/eclipse/jdt/internal/core/DeltaProcessor;->manager:Lorg/eclipse/jdt/internal/core/JavaModelManager;

    invoke-virtual {p1, v4}, Lorg/eclipse/jdt/internal/core/JavaModelManager;->forceBatchInitializations(Z)Z

    iget-object p1, p0, Lorg/eclipse/jdt/internal/core/DeltaProcessor;->projectCachesToReset:Ljava/util/Set;

    invoke-interface {p1, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    invoke-static {v0}, Lorg/eclipse/jdt/internal/core/JavaProject;->hasJavaNature(Lorg/eclipse/core/resources/IProject;)Z

    move-result p1

    if-eqz p1, :cond_c

    invoke-direct {p0, v1}, Lorg/eclipse/jdt/internal/core/DeltaProcessor;->addToParentInfo(Lorg/eclipse/jdt/internal/core/Openable;)V

    invoke-direct {p0, v1}, Lorg/eclipse/jdt/internal/core/DeltaProcessor;->readRawClasspath(Lorg/eclipse/jdt/internal/core/JavaProject;)V

    invoke-direct {p0, v0, v1}, Lorg/eclipse/jdt/internal/core/DeltaProcessor;->checkProjectReferenceChange(Lorg/eclipse/core/resources/IProject;Lorg/eclipse/jdt/internal/core/JavaProject;)V

    invoke-direct {p0, v0, v1}, Lorg/eclipse/jdt/internal/core/DeltaProcessor;->checkExternalFolderChange(Lorg/eclipse/core/resources/IProject;Lorg/eclipse/jdt/internal/core/JavaProject;)V

    :cond_c
    iget-object p1, p0, Lorg/eclipse/jdt/internal/core/DeltaProcessor;->state:Lorg/eclipse/jdt/internal/core/DeltaProcessingState;

    iput-boolean v5, p1, Lorg/eclipse/jdt/internal/core/DeltaProcessingState;->rootsAreStale:Z

    goto/16 :goto_4

    :cond_d
    invoke-interface {p1}, Lorg/eclipse/core/resources/IResourceDelta;->getKind()I

    move-result v1

    if-eq v1, v5, :cond_f

    if-eq v1, v3, :cond_f

    if-eq v1, v2, :cond_e

    goto/16 :goto_4

    :cond_e
    invoke-interface {p1}, Lorg/eclipse/core/resources/IResourceDelta;->getAffectedChildren()[Lorg/eclipse/core/resources/IResourceDelta;

    move-result-object v6

    goto/16 :goto_4

    :cond_f
    :try_start_2
    invoke-direct {p0, v0}, Lorg/eclipse/jdt/internal/core/DeltaProcessor;->findContainingPackageFragmentRoot(Lorg/eclipse/core/resources/IResource;)Lorg/eclipse/jdt/core/IPackageFragmentRoot;

    move-result-object p1

    if-eqz p1, :cond_18

    invoke-interface {p1}, Lorg/eclipse/jdt/core/IOpenable;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_18

    invoke-interface {p1}, Lorg/eclipse/jdt/core/IOpenable;->close()V
    :try_end_2
    .catch Lorg/eclipse/jdt/core/JavaModelException; {:try_start_2 .. :try_end_2} :catch_2

    goto/16 :goto_4

    :catch_2
    move-exception p1

    invoke-static {p1}, Lorg/eclipse/jdt/internal/core/util/Util;->log(Ljava/lang/Throwable;)V

    goto/16 :goto_4

    :cond_10
    check-cast v0, Lorg/eclipse/core/resources/IFile;

    invoke-interface {p1}, Lorg/eclipse/core/resources/IResourceDelta;->getKind()I

    move-result v1

    invoke-interface {v0}, Lorg/eclipse/core/resources/IFile;->getName()Ljava/lang/String;

    move-result-object v7

    const-string v8, ".classpath"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_13

    iget-object v7, p0, Lorg/eclipse/jdt/internal/core/DeltaProcessor;->manager:Lorg/eclipse/jdt/internal/core/JavaModelManager;

    invoke-virtual {v7, v4}, Lorg/eclipse/jdt/internal/core/JavaModelManager;->forceBatchInitializations(Z)Z

    if-eq v1, v5, :cond_12

    if-eq v1, v3, :cond_12

    if-eq v1, v2, :cond_11

    goto :goto_3

    :cond_11
    invoke-interface {p1}, Lorg/eclipse/core/resources/IResourceDelta;->getFlags()I

    move-result p1

    and-int/lit16 v1, p1, 0x100

    if-nez v1, :cond_12

    const/high16 v1, 0x100000

    and-int/2addr v1, p1

    if-nez v1, :cond_12

    and-int/lit16 p1, p1, 0x1000

    if-nez p1, :cond_12

    goto :goto_3

    :cond_12
    invoke-interface {v0}, Lorg/eclipse/core/resources/IFile;->getProject()Lorg/eclipse/core/resources/IProject;

    move-result-object p1

    invoke-static {p1}, Lorg/eclipse/jdt/core/JavaCore;->create(Lorg/eclipse/core/resources/IProject;)Lorg/eclipse/jdt/core/IJavaProject;

    move-result-object p1

    check-cast p1, Lorg/eclipse/jdt/internal/core/JavaProject;

    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/core/DeltaProcessor;->readRawClasspath(Lorg/eclipse/jdt/internal/core/JavaProject;)V

    :goto_3
    iget-object p1, p0, Lorg/eclipse/jdt/internal/core/DeltaProcessor;->state:Lorg/eclipse/jdt/internal/core/DeltaProcessingState;

    iput-boolean v5, p1, Lorg/eclipse/jdt/internal/core/DeltaProcessingState;->rootsAreStale:Z

    goto :goto_4

    :cond_13
    invoke-interface {v0}, Lorg/eclipse/core/resources/IFile;->getFullPath()Lorg/eclipse/core/runtime/IPath;

    move-result-object v7

    invoke-direct {p0, v7, v1}, Lorg/eclipse/jdt/internal/core/DeltaProcessor;->rootInfo(Lorg/eclipse/core/runtime/IPath;I)Lorg/eclipse/jdt/internal/core/DeltaProcessor$RootInfo;

    move-result-object v7

    if-eqz v7, :cond_14

    iget v7, v7, Lorg/eclipse/jdt/internal/core/DeltaProcessor$RootInfo;->entryKind:I

    if-ne v7, v5, :cond_14

    invoke-interface {v0}, Lorg/eclipse/core/resources/IFile;->getProject()Lorg/eclipse/core/resources/IProject;

    move-result-object p1

    invoke-static {p1}, Lorg/eclipse/jdt/core/JavaCore;->create(Lorg/eclipse/core/resources/IProject;)Lorg/eclipse/jdt/core/IJavaProject;

    move-result-object p1

    check-cast p1, Lorg/eclipse/jdt/internal/core/JavaProject;

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/core/JavaProject;->resetResolvedClasspath()Lorg/eclipse/jdt/internal/core/ClasspathChange;

    iget-object p1, p0, Lorg/eclipse/jdt/internal/core/DeltaProcessor;->state:Lorg/eclipse/jdt/internal/core/DeltaProcessingState;

    iput-boolean v5, p1, Lorg/eclipse/jdt/internal/core/DeltaProcessingState;->rootsAreStale:Z

    goto :goto_4

    :cond_14
    invoke-interface {v0}, Lorg/eclipse/core/resources/IFile;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/lang/String;

    sget-object v9, Lorg/eclipse/jdt/internal/compiler/lookup/TypeConstants;->MODULE_INFO_FILE_NAME:[C

    invoke-direct {v8, v9}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v7, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_18

    if-eq v1, v5, :cond_17

    if-eq v1, v3, :cond_17

    if-eq v1, v2, :cond_15

    goto :goto_4

    :cond_15
    invoke-interface {p1}, Lorg/eclipse/core/resources/IResourceDelta;->getFlags()I

    move-result p1

    and-int/lit16 p1, p1, 0x100

    if-nez p1, :cond_16

    goto :goto_4

    :cond_16
    invoke-interface {v0}, Lorg/eclipse/core/resources/IFile;->getProject()Lorg/eclipse/core/resources/IProject;

    move-result-object p1

    invoke-static {p1}, Lorg/eclipse/jdt/core/JavaCore;->create(Lorg/eclipse/core/resources/IProject;)Lorg/eclipse/jdt/core/IJavaProject;

    move-result-object p1

    check-cast p1, Lorg/eclipse/jdt/internal/core/JavaProject;

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/DeltaProcessor;->manager:Lorg/eclipse/jdt/internal/core/JavaModelManager;

    invoke-virtual {v0, p1, v4}, Lorg/eclipse/jdt/internal/core/JavaModelManager;->removePerProjectInfo(Lorg/eclipse/jdt/internal/core/JavaProject;Z)V

    iget-object p1, p0, Lorg/eclipse/jdt/internal/core/DeltaProcessor;->state:Lorg/eclipse/jdt/internal/core/DeltaProcessingState;

    iput-boolean v5, p1, Lorg/eclipse/jdt/internal/core/DeltaProcessingState;->rootsAreStale:Z

    goto :goto_4

    :cond_17
    invoke-interface {v0}, Lorg/eclipse/core/resources/IFile;->getProject()Lorg/eclipse/core/resources/IProject;

    move-result-object p1

    invoke-static {p1}, Lorg/eclipse/jdt/core/JavaCore;->create(Lorg/eclipse/core/resources/IProject;)Lorg/eclipse/jdt/core/IJavaProject;

    move-result-object p1

    check-cast p1, Lorg/eclipse/jdt/internal/core/JavaProject;

    :try_start_3
    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/core/JavaProject;->close()V
    :try_end_3
    .catch Lorg/eclipse/jdt/core/JavaModelException; {:try_start_3 .. :try_end_3} :catch_3

    :catch_3
    :cond_18
    :goto_4
    if-eqz v6, :cond_1a

    :goto_5
    array-length p1, v6

    if-lt v4, p1, :cond_19

    goto :goto_6

    :cond_19
    aget-object p1, v6, v4

    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/core/DeltaProcessor;->checkProjectsAndClasspathChanges(Lorg/eclipse/core/resources/IResourceDelta;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    :cond_1a
    :goto_6
    return-void
.end method

.method private checkSourceAttachmentChange(Lorg/eclipse/core/resources/IResourceDelta;Lorg/eclipse/core/resources/IResource;)V
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/DeltaProcessor;->state:Lorg/eclipse/jdt/internal/core/DeltaProcessingState;

    iget-object v0, v0, Lorg/eclipse/jdt/internal/core/DeltaProcessingState;->sourceAttachments:Ljava/util/Map;

    invoke-direct {p0, p2}, Lorg/eclipse/jdt/internal/core/DeltaProcessor;->externalPath(Lorg/eclipse/core/resources/IResource;)Lorg/eclipse/core/runtime/IPath;

    move-result-object p2

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/eclipse/core/runtime/IPath;

    if-eqz p2, :cond_5

    invoke-interface {p1}, Lorg/eclipse/core/resources/IResourceDelta;->getKind()I

    move-result v0

    invoke-direct {p0, p2, v0}, Lorg/eclipse/jdt/internal/core/DeltaProcessor;->rootInfo(Lorg/eclipse/core/runtime/IPath;I)Lorg/eclipse/jdt/internal/core/DeltaProcessor$RootInfo;

    move-result-object v0

    if-eqz v0, :cond_5

    iget-object v0, v0, Lorg/eclipse/jdt/internal/core/DeltaProcessor$RootInfo;->project:Lorg/eclipse/jdt/internal/core/JavaProject;

    :try_start_0
    invoke-interface {v0, p2}, Lorg/eclipse/jdt/core/IJavaProject;->findPackageFragmentRoot(Lorg/eclipse/core/runtime/IPath;)Lorg/eclipse/jdt/core/IPackageFragmentRoot;

    move-result-object p2
    :try_end_0
    .catch Lorg/eclipse/jdt/core/JavaModelException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p2, :cond_0

    :try_start_1
    invoke-interface {p2}, Lorg/eclipse/jdt/core/IOpenable;->close()V
    :try_end_1
    .catch Lorg/eclipse/jdt/core/JavaModelException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_0
    const/4 p2, 0x0

    :catch_1
    :cond_0
    :goto_0
    if-nez p2, :cond_1

    return-void

    :cond_1
    invoke-interface {p1}, Lorg/eclipse/core/resources/IResourceDelta;->getKind()I

    move-result p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_4

    const/4 v0, 0x2

    if-eq p1, v0, :cond_3

    const/4 v0, 0x4

    if-eq p1, v0, :cond_2

    goto :goto_1

    :cond_2
    invoke-direct {p0}, Lorg/eclipse/jdt/internal/core/DeltaProcessor;->currentDelta()Lorg/eclipse/jdt/internal/core/JavaElementDelta;

    move-result-object p1

    invoke-virtual {p1, p2}, Lorg/eclipse/jdt/internal/core/JavaElementDelta;->sourceDetached(Lorg/eclipse/jdt/core/IJavaElement;)V

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/core/DeltaProcessor;->currentDelta()Lorg/eclipse/jdt/internal/core/JavaElementDelta;

    move-result-object p1

    invoke-virtual {p1, p2}, Lorg/eclipse/jdt/internal/core/JavaElementDelta;->sourceAttached(Lorg/eclipse/jdt/core/IJavaElement;)V

    goto :goto_1

    :cond_3
    invoke-direct {p0}, Lorg/eclipse/jdt/internal/core/DeltaProcessor;->currentDelta()Lorg/eclipse/jdt/internal/core/JavaElementDelta;

    move-result-object p1

    invoke-virtual {p1, p2}, Lorg/eclipse/jdt/internal/core/JavaElementDelta;->sourceDetached(Lorg/eclipse/jdt/core/IJavaElement;)V

    goto :goto_1

    :cond_4
    invoke-direct {p0}, Lorg/eclipse/jdt/internal/core/DeltaProcessor;->currentDelta()Lorg/eclipse/jdt/internal/core/JavaElementDelta;

    move-result-object p1

    invoke-virtual {p1, p2}, Lorg/eclipse/jdt/internal/core/JavaElementDelta;->sourceAttached(Lorg/eclipse/jdt/core/IJavaElement;)V

    :cond_5
    :goto_1
    return-void
.end method

.method private close(Lorg/eclipse/jdt/internal/core/Openable;)V
    .locals 0

    :try_start_0
    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/core/JavaElement;->close()V
    :try_end_0
    .catch Lorg/eclipse/jdt/core/JavaModelException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method private contentChanged(Lorg/eclipse/jdt/internal/core/Openable;)V
    .locals 4

    invoke-interface {p1}, Lorg/eclipse/jdt/core/IJavaElement;->getElementType()I

    move-result v0

    const/4 v1, 0x5

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v0, v1, :cond_0

    move-object v0, p1

    check-cast v0, Lorg/eclipse/jdt/internal/core/CompilationUnit;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/core/CompilationUnit;->isPrimary()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/core/CompilationUnit;->isWorkingCopy()Z

    move-result v0

    if-eqz v0, :cond_1

    move v3, v2

    goto :goto_0

    :cond_0
    move v1, v3

    :cond_1
    :goto_0
    const/high16 v0, 0x40000

    if-eqz v3, :cond_2

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/core/DeltaProcessor;->currentDelta()Lorg/eclipse/jdt/internal/core/JavaElementDelta;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Lorg/eclipse/jdt/internal/core/JavaElementDelta;->changed(Lorg/eclipse/jdt/core/IJavaElement;I)Lorg/eclipse/jdt/internal/core/JavaElementDelta;

    goto :goto_1

    :cond_2
    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/core/DeltaProcessor;->close(Lorg/eclipse/jdt/internal/core/Openable;)V

    instance-of v3, p1, Lorg/eclipse/jdt/internal/core/JarPackageFragmentRoot;

    if-eqz v3, :cond_3

    iget-object v2, p0, Lorg/eclipse/jdt/internal/core/DeltaProcessor;->projectCachesToReset:Ljava/util/Set;

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/core/JavaElement;->getJavaProject()Lorg/eclipse/jdt/core/IJavaProject;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const v2, 0x8001

    :cond_3
    if-eqz v1, :cond_4

    or-int/2addr v2, v0

    :cond_4
    invoke-direct {p0}, Lorg/eclipse/jdt/internal/core/DeltaProcessor;->currentDelta()Lorg/eclipse/jdt/internal/core/JavaElementDelta;

    move-result-object v0

    invoke-virtual {v0, p1, v2}, Lorg/eclipse/jdt/internal/core/JavaElementDelta;->changed(Lorg/eclipse/jdt/core/IJavaElement;I)Lorg/eclipse/jdt/internal/core/JavaElementDelta;

    :goto_1
    return-void
.end method

.method private createElement(Lorg/eclipse/core/resources/IResource;ILorg/eclipse/jdt/internal/core/DeltaProcessor$RootInfo;)Lorg/eclipse/jdt/internal/core/Openable;
    .locals 8

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    invoke-interface {p1}, Lorg/eclipse/core/resources/IResource;->getFullPath()Lorg/eclipse/core/runtime/IPath;

    move-result-object v1

    const/4 v2, 0x2

    if-eq p2, v2, :cond_12

    const/4 v2, 0x3

    if-eq p2, v2, :cond_10

    const/4 v3, 0x4

    if-eq p2, v3, :cond_c

    const/4 v4, 0x6

    const/4 v5, 0x5

    if-eq p2, v5, :cond_1

    if-eq p2, v4, :cond_1

    goto/16 :goto_2

    :cond_1
    invoke-direct {p0, v1}, Lorg/eclipse/jdt/internal/core/DeltaProcessor;->popUntilPrefixOf(Lorg/eclipse/core/runtime/IPath;)V

    iget-object v6, p0, Lorg/eclipse/jdt/internal/core/DeltaProcessor;->currentElement:Lorg/eclipse/jdt/internal/core/Openable;

    if-nez v6, :cond_3

    if-nez p3, :cond_2

    invoke-static {p1}, Lorg/eclipse/jdt/core/JavaCore;->create(Lorg/eclipse/core/resources/IResource;)Lorg/eclipse/jdt/core/IJavaElement;

    move-result-object p1

    goto/16 :goto_3

    :cond_2
    iget-object p2, p3, Lorg/eclipse/jdt/internal/core/DeltaProcessor$RootInfo;->project:Lorg/eclipse/jdt/internal/core/JavaProject;

    invoke-static {p1, p2}, Lorg/eclipse/jdt/internal/core/JavaModelManager;->create(Lorg/eclipse/core/resources/IResource;Lorg/eclipse/jdt/core/IJavaProject;)Lorg/eclipse/jdt/core/IJavaElement;

    move-result-object p1

    goto/16 :goto_3

    :cond_3
    invoke-interface {v6}, Lorg/eclipse/jdt/core/IJavaElement;->getElementType()I

    move-result v6

    const/4 v7, 0x1

    if-eq v6, v2, :cond_7

    if-eq v6, v3, :cond_5

    if-eq v6, v5, :cond_4

    if-eq v6, v4, :cond_4

    goto :goto_0

    :cond_4
    iget-object v2, p0, Lorg/eclipse/jdt/internal/core/DeltaProcessor;->currentElement:Lorg/eclipse/jdt/internal/core/Openable;

    invoke-virtual {v2}, Lorg/eclipse/jdt/internal/core/JavaElement;->getParent()Lorg/eclipse/jdt/core/IJavaElement;

    move-result-object v2

    check-cast v2, Lorg/eclipse/jdt/core/IPackageFragment;

    goto :goto_1

    :cond_5
    iget-object v2, p0, Lorg/eclipse/jdt/internal/core/DeltaProcessor;->currentElement:Lorg/eclipse/jdt/internal/core/Openable;

    invoke-interface {v2}, Lorg/eclipse/jdt/core/IJavaElement;->getPath()Lorg/eclipse/core/runtime/IPath;

    move-result-object v3

    invoke-interface {v1, v7}, Lorg/eclipse/core/runtime/IPath;->removeLastSegments(I)Lorg/eclipse/core/runtime/IPath;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    check-cast v2, Lorg/eclipse/jdt/core/IPackageFragment;

    goto :goto_1

    :cond_6
    :goto_0
    move-object v2, v0

    goto :goto_1

    :cond_7
    iget-object v2, p0, Lorg/eclipse/jdt/internal/core/DeltaProcessor;->currentElement:Lorg/eclipse/jdt/internal/core/Openable;

    check-cast v2, Lorg/eclipse/jdt/internal/core/PackageFragmentRoot;

    invoke-virtual {v2}, Lorg/eclipse/jdt/internal/core/PackageFragmentRoot;->getPath()Lorg/eclipse/core/runtime/IPath;

    move-result-object v3

    invoke-interface {v1, v7}, Lorg/eclipse/core/runtime/IPath;->removeLastSegments(I)Lorg/eclipse/core/runtime/IPath;

    move-result-object v4

    invoke-interface {v3}, Lorg/eclipse/core/runtime/IPath;->segmentCount()I

    move-result v3

    invoke-interface {v4, v3}, Lorg/eclipse/core/runtime/IPath;->removeFirstSegments(I)Lorg/eclipse/core/runtime/IPath;

    move-result-object v3

    invoke-interface {v3}, Lorg/eclipse/core/runtime/IPath;->segments()[Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/eclipse/jdt/internal/core/PackageFragmentRoot;->getPackageFragment([Ljava/lang/String;)Lorg/eclipse/jdt/internal/core/PackageFragment;

    move-result-object v2

    :goto_1
    if-nez v2, :cond_9

    if-nez p3, :cond_8

    invoke-static {p1}, Lorg/eclipse/jdt/core/JavaCore;->create(Lorg/eclipse/core/resources/IResource;)Lorg/eclipse/jdt/core/IJavaElement;

    move-result-object p1

    goto/16 :goto_3

    :cond_8
    iget-object p2, p3, Lorg/eclipse/jdt/internal/core/DeltaProcessor$RootInfo;->project:Lorg/eclipse/jdt/internal/core/JavaProject;

    invoke-static {p1, p2}, Lorg/eclipse/jdt/internal/core/JavaModelManager;->create(Lorg/eclipse/core/resources/IResource;Lorg/eclipse/jdt/core/IJavaProject;)Lorg/eclipse/jdt/core/IJavaElement;

    move-result-object p1

    goto/16 :goto_3

    :cond_9
    if-ne p2, v5, :cond_a

    invoke-interface {v1}, Lorg/eclipse/core/runtime/IPath;->lastSegment()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v2, p1}, Lorg/eclipse/jdt/core/IPackageFragment;->getCompilationUnit(Ljava/lang/String;)Lorg/eclipse/jdt/core/ICompilationUnit;

    move-result-object p1

    goto/16 :goto_3

    :cond_a
    invoke-interface {v1}, Lorg/eclipse/core/runtime/IPath;->lastSegment()Ljava/lang/String;

    move-result-object p1

    const-string p2, "module-info.class"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_b

    invoke-interface {v2}, Lorg/eclipse/jdt/core/IPackageFragment;->getModularClassFile()Lorg/eclipse/jdt/core/IModularClassFile;

    move-result-object p1

    goto/16 :goto_3

    :cond_b
    invoke-interface {v2, p1}, Lorg/eclipse/jdt/core/IPackageFragment;->getClassFile(Ljava/lang/String;)Lorg/eclipse/jdt/core/IClassFile;

    move-result-object p1

    goto/16 :goto_3

    :cond_c
    if-eqz p3, :cond_d

    iget-object p2, p3, Lorg/eclipse/jdt/internal/core/DeltaProcessor$RootInfo;->project:Lorg/eclipse/jdt/internal/core/JavaProject;

    invoke-virtual {p2, p1}, Lorg/eclipse/jdt/internal/core/JavaProject;->contains(Lorg/eclipse/core/resources/IResource;)Z

    move-result p1

    if-eqz p1, :cond_16

    invoke-virtual {p3, v0}, Lorg/eclipse/jdt/internal/core/DeltaProcessor$RootInfo;->getPackageFragmentRoot(Lorg/eclipse/core/resources/IResource;)Lorg/eclipse/jdt/core/IPackageFragmentRoot;

    move-result-object p1

    check-cast p1, Lorg/eclipse/jdt/internal/core/PackageFragmentRoot;

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/core/PackageFragmentRoot;->resource()Lorg/eclipse/core/resources/IResource;

    move-result-object p2

    invoke-interface {p2}, Lorg/eclipse/core/resources/IResource;->getFullPath()Lorg/eclipse/core/runtime/IPath;

    move-result-object p2

    invoke-interface {p2}, Lorg/eclipse/core/runtime/IPath;->segmentCount()I

    move-result p2

    invoke-interface {v1, p2}, Lorg/eclipse/core/runtime/IPath;->removeFirstSegments(I)Lorg/eclipse/core/runtime/IPath;

    move-result-object p2

    invoke-interface {p2}, Lorg/eclipse/core/runtime/IPath;->segments()[Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/eclipse/jdt/internal/core/PackageFragmentRoot;->getPackageFragment([Ljava/lang/String;)Lorg/eclipse/jdt/internal/core/PackageFragment;

    move-result-object p1

    goto/16 :goto_3

    :cond_d
    invoke-direct {p0, v1}, Lorg/eclipse/jdt/internal/core/DeltaProcessor;->popUntilPrefixOf(Lorg/eclipse/core/runtime/IPath;)V

    iget-object p2, p0, Lorg/eclipse/jdt/internal/core/DeltaProcessor;->currentElement:Lorg/eclipse/jdt/internal/core/Openable;

    if-nez p2, :cond_e

    invoke-static {p1}, Lorg/eclipse/jdt/core/JavaCore;->create(Lorg/eclipse/core/resources/IResource;)Lorg/eclipse/jdt/core/IJavaElement;

    move-result-object p1

    goto/16 :goto_3

    :cond_e
    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/core/Openable;->getPackageFragmentRoot()Lorg/eclipse/jdt/internal/core/PackageFragmentRoot;

    move-result-object p2

    if-nez p2, :cond_f

    invoke-static {p1}, Lorg/eclipse/jdt/core/JavaCore;->create(Lorg/eclipse/core/resources/IResource;)Lorg/eclipse/jdt/core/IJavaElement;

    move-result-object p1

    goto/16 :goto_3

    :cond_f
    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/core/JavaElement;->getJavaProject()Lorg/eclipse/jdt/core/IJavaProject;

    move-result-object p3

    check-cast p3, Lorg/eclipse/jdt/internal/core/JavaProject;

    invoke-virtual {p3, p1}, Lorg/eclipse/jdt/internal/core/JavaProject;->contains(Lorg/eclipse/core/resources/IResource;)Z

    move-result p1

    if-eqz p1, :cond_16

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/core/PackageFragmentRoot;->getPath()Lorg/eclipse/core/runtime/IPath;

    move-result-object p1

    invoke-interface {p1}, Lorg/eclipse/core/runtime/IPath;->segmentCount()I

    move-result p1

    invoke-interface {v1, p1}, Lorg/eclipse/core/runtime/IPath;->removeFirstSegments(I)Lorg/eclipse/core/runtime/IPath;

    move-result-object p1

    invoke-interface {p1}, Lorg/eclipse/core/runtime/IPath;->segments()[Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lorg/eclipse/jdt/internal/core/PackageFragmentRoot;->getPackageFragment([Ljava/lang/String;)Lorg/eclipse/jdt/internal/core/PackageFragment;

    move-result-object p1

    goto :goto_3

    :cond_10
    if-nez p3, :cond_11

    invoke-static {p1}, Lorg/eclipse/jdt/core/JavaCore;->create(Lorg/eclipse/core/resources/IResource;)Lorg/eclipse/jdt/core/IJavaElement;

    move-result-object p1

    goto :goto_3

    :cond_11
    invoke-virtual {p3, p1}, Lorg/eclipse/jdt/internal/core/DeltaProcessor$RootInfo;->getPackageFragmentRoot(Lorg/eclipse/core/resources/IResource;)Lorg/eclipse/jdt/core/IPackageFragmentRoot;

    move-result-object p1

    goto :goto_3

    :cond_12
    instance-of p2, p1, Lorg/eclipse/core/resources/IProject;

    if-eqz p2, :cond_16

    invoke-direct {p0, v1}, Lorg/eclipse/jdt/internal/core/DeltaProcessor;->popUntilPrefixOf(Lorg/eclipse/core/runtime/IPath;)V

    iget-object p2, p0, Lorg/eclipse/jdt/internal/core/DeltaProcessor;->currentElement:Lorg/eclipse/jdt/internal/core/Openable;

    if-eqz p2, :cond_13

    invoke-interface {p2}, Lorg/eclipse/jdt/core/IJavaElement;->getElementType()I

    move-result p2

    if-ne p2, v2, :cond_13

    iget-object p2, p0, Lorg/eclipse/jdt/internal/core/DeltaProcessor;->currentElement:Lorg/eclipse/jdt/internal/core/Openable;

    check-cast p2, Lorg/eclipse/jdt/core/IJavaProject;

    invoke-interface {p2}, Lorg/eclipse/jdt/core/IJavaProject;->getProject()Lorg/eclipse/core/resources/IProject;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_13

    iget-object p1, p0, Lorg/eclipse/jdt/internal/core/DeltaProcessor;->currentElement:Lorg/eclipse/jdt/internal/core/Openable;

    return-object p1

    :cond_13
    if-eqz p3, :cond_14

    iget-object p2, p3, Lorg/eclipse/jdt/internal/core/DeltaProcessor$RootInfo;->project:Lorg/eclipse/jdt/internal/core/JavaProject;

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/core/JavaProject;->getProject()Lorg/eclipse/core/resources/IProject;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_14

    iget-object p1, p3, Lorg/eclipse/jdt/internal/core/DeltaProcessor$RootInfo;->project:Lorg/eclipse/jdt/internal/core/JavaProject;

    goto :goto_3

    :cond_14
    check-cast p1, Lorg/eclipse/core/resources/IProject;

    invoke-static {p1}, Lorg/eclipse/jdt/internal/core/JavaProject;->hasJavaNature(Lorg/eclipse/core/resources/IProject;)Z

    move-result p2

    if-eqz p2, :cond_15

    invoke-static {p1}, Lorg/eclipse/jdt/core/JavaCore;->create(Lorg/eclipse/core/resources/IProject;)Lorg/eclipse/jdt/core/IJavaProject;

    move-result-object p1

    goto :goto_3

    :cond_15
    iget-object p2, p0, Lorg/eclipse/jdt/internal/core/DeltaProcessor;->state:Lorg/eclipse/jdt/internal/core/DeltaProcessingState;

    invoke-interface {p1}, Lorg/eclipse/core/resources/IProject;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lorg/eclipse/jdt/internal/core/DeltaProcessingState;->findJavaProject(Ljava/lang/String;)Lorg/eclipse/jdt/core/IJavaProject;

    move-result-object p1

    goto :goto_3

    :cond_16
    :goto_2
    move-object p1, v0

    :goto_3
    if-nez p1, :cond_17

    return-object v0

    :cond_17
    check-cast p1, Lorg/eclipse/jdt/internal/core/Openable;

    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/DeltaProcessor;->currentElement:Lorg/eclipse/jdt/internal/core/Openable;

    return-object p1
.end method

.method private createExternalArchiveDelta(Ljava/util/Set;Lorg/eclipse/core/runtime/IProgressMonitor;)Z
    .locals 23
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lorg/eclipse/jdt/core/IJavaElement;",
            ">;",
            "Lorg/eclipse/core/runtime/IProgressMonitor;",
            ")Z"
        }
    .end annotation

    move-object/from16 v0, p0

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    invoke-interface/range {p1 .. p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :catch_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    const/4 v5, 0x1

    if-nez v4, :cond_17

    iget-object v3, v0, Lorg/eclipse/jdt/internal/core/DeltaProcessor;->state:Lorg/eclipse/jdt/internal/core/DeltaProcessingState;

    invoke-virtual {v3}, Lorg/eclipse/jdt/internal/core/DeltaProcessingState;->getOldJavaProjecNames()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    invoke-static {}, Lorg/eclipse/core/resources/ResourcesPlugin;->getWorkspace()Lorg/eclipse/core/resources/IWorkspace;

    move-result-object v3

    invoke-interface {v3}, Lorg/eclipse/core/resources/IWorkspace;->getRoot()Lorg/eclipse/core/resources/IWorkspaceRoot;

    move-result-object v7

    const/4 v3, 0x0

    :cond_0
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-nez v8, :cond_1

    goto :goto_2

    :cond_1
    if-eqz p2, :cond_3

    invoke-interface/range {p2 .. p2}, Lorg/eclipse/core/runtime/IProgressMonitor;->isCanceled()Z

    move-result v8

    if-eqz v8, :cond_3

    :goto_2
    if-eqz v3, :cond_2

    invoke-static {}, Lorg/eclipse/jdt/internal/core/JavaModelManager;->getJavaModelManager()Lorg/eclipse/jdt/internal/core/JavaModelManager;

    move-result-object v1

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/core/JavaModelManager;->resetJarTypeCache()V

    :cond_2
    return v3

    :cond_3
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-interface {v7, v8}, Lorg/eclipse/core/resources/IWorkspaceRoot;->getProject(Ljava/lang/String;)Lorg/eclipse/core/resources/IProject;

    move-result-object v8

    invoke-static {v8}, Lorg/eclipse/jdt/internal/core/JavaProject;->hasJavaNature(Lorg/eclipse/core/resources/IProject;)Z

    move-result v9

    if-nez v9, :cond_4

    :catch_1
    move-object/from16 v21, v4

    move-object/from16 v22, v7

    goto/16 :goto_9

    :cond_4
    invoke-static {v8}, Lorg/eclipse/jdt/core/JavaCore;->create(Lorg/eclipse/core/resources/IProject;)Lorg/eclipse/jdt/core/IJavaProject;

    move-result-object v9

    check-cast v9, Lorg/eclipse/jdt/internal/core/JavaProject;

    :try_start_0
    invoke-virtual {v9}, Lorg/eclipse/jdt/internal/core/JavaProject;->getResolvedClasspath()[Lorg/eclipse/jdt/core/IClasspathEntry;

    move-result-object v10
    :try_end_0
    .catch Lorg/eclipse/jdt/core/JavaModelException; {:try_start_0 .. :try_end_0} :catch_1

    const/4 v11, 0x0

    const/4 v12, 0x0

    :goto_3
    array-length v13, v10

    if-lt v11, v13, :cond_5

    if-eqz v12, :cond_0

    invoke-virtual {v9}, Lorg/eclipse/jdt/internal/core/JavaProject;->resetResolvedClasspath()Lorg/eclipse/jdt/internal/core/ClasspathChange;

    goto :goto_1

    :cond_5
    aget-object v13, v10, v11

    invoke-interface {v13}, Lorg/eclipse/jdt/core/IClasspathEntry;->getEntryKind()I

    move-result v13

    if-ne v13, v5, :cond_6

    aget-object v13, v10, v11

    invoke-interface {v13}, Lorg/eclipse/jdt/core/IClasspathEntry;->getPath()Lorg/eclipse/core/runtime/IPath;

    move-result-object v13

    invoke-interface {v2, v13}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_7

    :cond_6
    move/from16 v16, v3

    move-object/from16 v21, v4

    move-object/from16 v22, v7

    goto/16 :goto_7

    :cond_7
    invoke-interface {v1, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    const-string v15, "external jar added"

    const-string v6, "external jar changed"

    const-string v5, "external jar removed"

    if-nez v14, :cond_10

    iget-object v14, v0, Lorg/eclipse/jdt/internal/core/DeltaProcessor;->manager:Lorg/eclipse/jdt/internal/core/JavaModelManager;

    invoke-virtual {v14, v13}, Lorg/eclipse/jdt/internal/core/JavaModelManager;->clearExternalFileState(Lorg/eclipse/core/runtime/IPath;)V

    move/from16 v16, v3

    const/4 v14, 0x1

    invoke-static {v13, v14}, Lorg/eclipse/jdt/internal/core/JavaModel;->getTarget(Lorg/eclipse/core/runtime/IPath;Z)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_9

    iget-object v3, v0, Lorg/eclipse/jdt/internal/core/DeltaProcessor;->state:Lorg/eclipse/jdt/internal/core/DeltaProcessingState;

    invoke-virtual {v3}, Lorg/eclipse/jdt/internal/core/DeltaProcessingState;->getExternalLibTimeStamps()Ljava/util/Hashtable;

    move-result-object v3

    invoke-virtual {v3, v13}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_8

    iget-object v3, v0, Lorg/eclipse/jdt/internal/core/DeltaProcessor;->state:Lorg/eclipse/jdt/internal/core/DeltaProcessingState;

    iget-object v3, v3, Lorg/eclipse/jdt/internal/core/DeltaProcessingState;->roots:Ljava/util/Map;

    invoke-interface {v3, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_8

    invoke-interface {v1, v13, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v3, v0, Lorg/eclipse/jdt/internal/core/DeltaProcessor;->manager:Lorg/eclipse/jdt/internal/core/JavaModelManager;

    iget-object v3, v3, Lorg/eclipse/jdt/internal/core/JavaModelManager;->indexManager:Lorg/eclipse/jdt/internal/core/search/indexing/IndexManager;

    invoke-virtual {v3, v13}, Lorg/eclipse/jdt/internal/core/search/indexing/IndexManager;->removeIndex(Lorg/eclipse/core/runtime/IPath;)V

    :cond_8
    :goto_4
    move-object/from16 v21, v4

    move-object/from16 v22, v7

    goto/16 :goto_5

    :cond_9
    instance-of v14, v3, Ljava/io/File;

    if-eqz v14, :cond_f

    check-cast v3, Ljava/io/File;

    iget-object v14, v0, Lorg/eclipse/jdt/internal/core/DeltaProcessor;->state:Lorg/eclipse/jdt/internal/core/DeltaProcessingState;

    invoke-virtual {v14}, Lorg/eclipse/jdt/internal/core/DeltaProcessingState;->getExternalLibTimeStamps()Ljava/util/Hashtable;

    move-result-object v14

    invoke-virtual {v14, v13}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Long;

    invoke-static {v3}, Lorg/eclipse/jdt/internal/core/DeltaProcessor;->getTimeStamp(Ljava/io/File;)J

    move-result-wide v17

    const-string v3, "external jar unchanged"

    const-wide/16 v19, 0x0

    if-eqz v14, :cond_d

    cmp-long v19, v17, v19

    if-nez v19, :cond_a

    invoke-interface {v1, v13, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v3, v0, Lorg/eclipse/jdt/internal/core/DeltaProcessor;->state:Lorg/eclipse/jdt/internal/core/DeltaProcessingState;

    invoke-virtual {v3}, Lorg/eclipse/jdt/internal/core/DeltaProcessingState;->getExternalLibTimeStamps()Ljava/util/Hashtable;

    move-result-object v3

    invoke-virtual {v3, v13}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v3, v0, Lorg/eclipse/jdt/internal/core/DeltaProcessor;->manager:Lorg/eclipse/jdt/internal/core/JavaModelManager;

    iget-object v3, v3, Lorg/eclipse/jdt/internal/core/JavaModelManager;->indexManager:Lorg/eclipse/jdt/internal/core/search/indexing/IndexManager;

    invoke-virtual {v3, v13}, Lorg/eclipse/jdt/internal/core/search/indexing/IndexManager;->removeIndex(Lorg/eclipse/core/runtime/IPath;)V

    goto :goto_4

    :cond_a
    invoke-virtual {v14}, Ljava/lang/Long;->longValue()J

    move-result-wide v19

    cmp-long v14, v19, v17

    if-eqz v14, :cond_b

    invoke-interface {v1, v13, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v3, v0, Lorg/eclipse/jdt/internal/core/DeltaProcessor;->state:Lorg/eclipse/jdt/internal/core/DeltaProcessingState;

    invoke-virtual {v3}, Lorg/eclipse/jdt/internal/core/DeltaProcessingState;->getExternalLibTimeStamps()Ljava/util/Hashtable;

    move-result-object v3

    invoke-static/range {v17 .. v18}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    invoke-virtual {v3, v13, v14}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v3, v0, Lorg/eclipse/jdt/internal/core/DeltaProcessor;->manager:Lorg/eclipse/jdt/internal/core/JavaModelManager;

    iget-object v3, v3, Lorg/eclipse/jdt/internal/core/JavaModelManager;->indexManager:Lorg/eclipse/jdt/internal/core/search/indexing/IndexManager;

    invoke-virtual {v3, v13}, Lorg/eclipse/jdt/internal/core/search/indexing/IndexManager;->removeIndex(Lorg/eclipse/core/runtime/IPath;)V

    iget-object v3, v0, Lorg/eclipse/jdt/internal/core/DeltaProcessor;->manager:Lorg/eclipse/jdt/internal/core/JavaModelManager;

    iget-object v3, v3, Lorg/eclipse/jdt/internal/core/JavaModelManager;->indexManager:Lorg/eclipse/jdt/internal/core/search/indexing/IndexManager;

    invoke-interface {v8}, Lorg/eclipse/core/resources/IProject;->getProject()Lorg/eclipse/core/resources/IProject;

    move-result-object v14

    aget-object v17, v10, v11

    check-cast v17, Lorg/eclipse/jdt/internal/core/ClasspathEntry;

    move-object/from16 v21, v4

    invoke-virtual/range {v17 .. v17}, Lorg/eclipse/jdt/internal/core/ClasspathEntry;->getLibraryIndexLocation()Ljava/net/URL;

    move-result-object v4

    move-object/from16 v22, v7

    const/4 v7, 0x1

    invoke-virtual {v3, v13, v14, v4, v7}, Lorg/eclipse/jdt/internal/core/search/indexing/IndexManager;->indexLibrary(Lorg/eclipse/core/runtime/IPath;Lorg/eclipse/core/resources/IProject;Ljava/net/URL;Z)V

    goto :goto_5

    :cond_b
    move-object/from16 v21, v4

    move-object/from16 v22, v7

    aget-object v4, v10, v11

    check-cast v4, Lorg/eclipse/jdt/internal/core/ClasspathEntry;

    invoke-virtual {v4}, Lorg/eclipse/jdt/internal/core/ClasspathEntry;->getLibraryIndexLocation()Ljava/net/URL;

    move-result-object v4

    if-eqz v4, :cond_c

    iget-object v7, v0, Lorg/eclipse/jdt/internal/core/DeltaProcessor;->manager:Lorg/eclipse/jdt/internal/core/JavaModelManager;

    iget-object v7, v7, Lorg/eclipse/jdt/internal/core/JavaModelManager;->indexManager:Lorg/eclipse/jdt/internal/core/search/indexing/IndexManager;

    invoke-interface {v8}, Lorg/eclipse/core/resources/IProject;->getProject()Lorg/eclipse/core/resources/IProject;

    move-result-object v14

    invoke-virtual {v7, v13, v14, v4}, Lorg/eclipse/jdt/internal/core/search/indexing/IndexManager;->indexLibrary(Lorg/eclipse/core/runtime/IPath;Lorg/eclipse/core/resources/IProject;Ljava/net/URL;)V

    :cond_c
    invoke-interface {v1, v13, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_5

    :cond_d
    move-object/from16 v21, v4

    move-object/from16 v22, v7

    cmp-long v4, v17, v19

    if-nez v4, :cond_e

    invoke-interface {v1, v13, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_5

    :cond_e
    invoke-interface {v1, v13, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v3, v0, Lorg/eclipse/jdt/internal/core/DeltaProcessor;->state:Lorg/eclipse/jdt/internal/core/DeltaProcessingState;

    invoke-virtual {v3}, Lorg/eclipse/jdt/internal/core/DeltaProcessingState;->getExternalLibTimeStamps()Ljava/util/Hashtable;

    move-result-object v3

    invoke-static/range {v17 .. v18}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v13, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v3, v0, Lorg/eclipse/jdt/internal/core/DeltaProcessor;->manager:Lorg/eclipse/jdt/internal/core/JavaModelManager;

    iget-object v3, v3, Lorg/eclipse/jdt/internal/core/JavaModelManager;->indexManager:Lorg/eclipse/jdt/internal/core/search/indexing/IndexManager;

    invoke-virtual {v3, v13}, Lorg/eclipse/jdt/internal/core/search/indexing/IndexManager;->removeIndex(Lorg/eclipse/core/runtime/IPath;)V

    iget-object v3, v0, Lorg/eclipse/jdt/internal/core/DeltaProcessor;->manager:Lorg/eclipse/jdt/internal/core/JavaModelManager;

    iget-object v3, v3, Lorg/eclipse/jdt/internal/core/JavaModelManager;->indexManager:Lorg/eclipse/jdt/internal/core/search/indexing/IndexManager;

    invoke-interface {v8}, Lorg/eclipse/core/resources/IProject;->getProject()Lorg/eclipse/core/resources/IProject;

    move-result-object v4

    aget-object v7, v10, v11

    check-cast v7, Lorg/eclipse/jdt/internal/core/ClasspathEntry;

    invoke-virtual {v7}, Lorg/eclipse/jdt/internal/core/ClasspathEntry;->getLibraryIndexLocation()Ljava/net/URL;

    move-result-object v7

    invoke-virtual {v3, v13, v4, v7}, Lorg/eclipse/jdt/internal/core/search/indexing/IndexManager;->indexLibrary(Lorg/eclipse/core/runtime/IPath;Lorg/eclipse/core/resources/IProject;Ljava/net/URL;)V

    goto :goto_5

    :cond_f
    move-object/from16 v21, v4

    move-object/from16 v22, v7

    const-string v3, "internal jar ignore"

    invoke-interface {v1, v13, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_5

    :cond_10
    move/from16 v16, v3

    goto/16 :goto_4

    :goto_5
    invoke-interface {v1, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    if-eqz v3, :cond_16

    const/4 v4, 0x0

    if-ne v3, v15, :cond_12

    invoke-virtual {v13}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v9, v3}, Lorg/eclipse/jdt/internal/core/JavaProject;->getPackageFragmentRoot(Ljava/lang/String;)Lorg/eclipse/jdt/core/IPackageFragmentRoot;

    move-result-object v3

    check-cast v3, Lorg/eclipse/jdt/internal/core/PackageFragmentRoot;

    sget-boolean v5, Lorg/eclipse/jdt/internal/core/DeltaProcessor;->VERBOSE:Z

    if-eqz v5, :cond_11

    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "- External JAR ADDED, affecting root: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Lorg/eclipse/jdt/internal/core/PackageFragmentRoot;->getElementName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_11
    invoke-direct {v0, v3, v4, v4}, Lorg/eclipse/jdt/internal/core/DeltaProcessor;->elementAdded(Lorg/eclipse/jdt/internal/core/Openable;Lorg/eclipse/core/resources/IResourceDelta;Lorg/eclipse/jdt/internal/core/DeltaProcessor$RootInfo;)V

    iget-object v3, v0, Lorg/eclipse/jdt/internal/core/DeltaProcessor;->state:Lorg/eclipse/jdt/internal/core/DeltaProcessingState;

    invoke-virtual {v3, v9}, Lorg/eclipse/jdt/internal/core/DeltaProcessingState;->addClasspathValidation(Lorg/eclipse/jdt/internal/core/JavaProject;)Lorg/eclipse/jdt/internal/core/ClasspathValidation;

    :goto_6
    const/4 v3, 0x1

    const/4 v12, 0x1

    goto :goto_8

    :cond_12
    if-ne v3, v6, :cond_14

    invoke-virtual {v13}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v9, v3}, Lorg/eclipse/jdt/internal/core/JavaProject;->getPackageFragmentRoot(Ljava/lang/String;)Lorg/eclipse/jdt/core/IPackageFragmentRoot;

    move-result-object v3

    check-cast v3, Lorg/eclipse/jdt/internal/core/PackageFragmentRoot;

    sget-boolean v4, Lorg/eclipse/jdt/internal/core/DeltaProcessor;->VERBOSE:Z

    if-eqz v4, :cond_13

    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "- External JAR CHANGED, affecting root: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Lorg/eclipse/jdt/internal/core/PackageFragmentRoot;->getElementName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_13
    invoke-direct {v0, v3}, Lorg/eclipse/jdt/internal/core/DeltaProcessor;->contentChanged(Lorg/eclipse/jdt/internal/core/Openable;)V

    goto :goto_6

    :cond_14
    if-ne v3, v5, :cond_16

    invoke-virtual {v13}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v9, v3}, Lorg/eclipse/jdt/internal/core/JavaProject;->getPackageFragmentRoot(Ljava/lang/String;)Lorg/eclipse/jdt/core/IPackageFragmentRoot;

    move-result-object v3

    check-cast v3, Lorg/eclipse/jdt/internal/core/PackageFragmentRoot;

    sget-boolean v5, Lorg/eclipse/jdt/internal/core/DeltaProcessor;->VERBOSE:Z

    if-eqz v5, :cond_15

    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "- External JAR REMOVED, affecting root: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Lorg/eclipse/jdt/internal/core/PackageFragmentRoot;->getElementName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_15
    invoke-direct {v0, v3, v4, v4}, Lorg/eclipse/jdt/internal/core/DeltaProcessor;->elementRemoved(Lorg/eclipse/jdt/internal/core/Openable;Lorg/eclipse/core/resources/IResourceDelta;Lorg/eclipse/jdt/internal/core/DeltaProcessor$RootInfo;)V

    iget-object v3, v0, Lorg/eclipse/jdt/internal/core/DeltaProcessor;->state:Lorg/eclipse/jdt/internal/core/DeltaProcessingState;

    invoke-virtual {v3, v9}, Lorg/eclipse/jdt/internal/core/DeltaProcessingState;->addClasspathValidation(Lorg/eclipse/jdt/internal/core/JavaProject;)Lorg/eclipse/jdt/internal/core/ClasspathValidation;

    goto :goto_6

    :cond_16
    :goto_7
    move/from16 v3, v16

    :goto_8
    add-int/lit8 v11, v11, 0x1

    move-object/from16 v4, v21

    move-object/from16 v7, v22

    const/4 v5, 0x1

    goto/16 :goto_3

    :goto_9
    move-object/from16 v4, v21

    move-object/from16 v7, v22

    const/4 v5, 0x1

    goto/16 :goto_1

    :cond_17
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/eclipse/jdt/core/IJavaElement;

    invoke-interface {v4}, Lorg/eclipse/jdt/core/IJavaElement;->getElementType()I

    move-result v5

    const/4 v6, 0x1

    if-eq v5, v6, :cond_1d

    const/4 v6, 0x2

    if-eq v5, v6, :cond_19

    const/4 v6, 0x3

    if-eq v5, v6, :cond_18

    goto/16 :goto_0

    :cond_18
    invoke-interface {v4}, Lorg/eclipse/jdt/core/IJavaElement;->getPath()Lorg/eclipse/core/runtime/IPath;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_19
    check-cast v4, Lorg/eclipse/jdt/internal/core/JavaProject;

    invoke-virtual {v4}, Lorg/eclipse/jdt/internal/core/JavaProject;->getProject()Lorg/eclipse/core/resources/IProject;

    move-result-object v5

    invoke-static {v5}, Lorg/eclipse/jdt/internal/core/JavaProject;->hasJavaNature(Lorg/eclipse/core/resources/IProject;)Z

    move-result v5

    if-nez v5, :cond_1a

    goto/16 :goto_0

    :cond_1a
    :try_start_1
    invoke-virtual {v4}, Lorg/eclipse/jdt/internal/core/JavaProject;->getResolvedClasspath()[Lorg/eclipse/jdt/core/IClasspathEntry;

    move-result-object v4

    array-length v5, v4

    const/4 v6, 0x0

    :goto_a
    if-lt v6, v5, :cond_1b

    goto/16 :goto_0

    :cond_1b
    aget-object v7, v4, v6

    invoke-interface {v7}, Lorg/eclipse/jdt/core/IClasspathEntry;->getEntryKind()I

    move-result v7

    const/4 v8, 0x1

    if-ne v7, v8, :cond_1c

    aget-object v7, v4, v6

    invoke-interface {v7}, Lorg/eclipse/jdt/core/IClasspathEntry;->getPath()Lorg/eclipse/core/runtime/IPath;

    move-result-object v7

    invoke-interface {v2, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Lorg/eclipse/jdt/core/JavaModelException; {:try_start_1 .. :try_end_1} :catch_0

    :cond_1c
    add-int/lit8 v6, v6, 0x1

    goto :goto_a

    :cond_1d
    iget-object v4, v0, Lorg/eclipse/jdt/internal/core/DeltaProcessor;->state:Lorg/eclipse/jdt/internal/core/DeltaProcessingState;

    invoke-virtual {v4}, Lorg/eclipse/jdt/internal/core/DeltaProcessingState;->getOldJavaProjecNames()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :catch_2
    :goto_b
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_1e

    goto/16 :goto_0

    :cond_1e
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-static {}, Lorg/eclipse/core/resources/ResourcesPlugin;->getWorkspace()Lorg/eclipse/core/resources/IWorkspace;

    move-result-object v6

    invoke-interface {v6}, Lorg/eclipse/core/resources/IWorkspace;->getRoot()Lorg/eclipse/core/resources/IWorkspaceRoot;

    move-result-object v6

    invoke-interface {v6, v5}, Lorg/eclipse/core/resources/IWorkspaceRoot;->getProject(Ljava/lang/String;)Lorg/eclipse/core/resources/IProject;

    move-result-object v5

    invoke-static {v5}, Lorg/eclipse/jdt/internal/core/JavaProject;->hasJavaNature(Lorg/eclipse/core/resources/IProject;)Z

    move-result v6

    if-nez v6, :cond_1f

    goto :goto_b

    :cond_1f
    invoke-static {v5}, Lorg/eclipse/jdt/core/JavaCore;->create(Lorg/eclipse/core/resources/IProject;)Lorg/eclipse/jdt/core/IJavaProject;

    move-result-object v5

    check-cast v5, Lorg/eclipse/jdt/internal/core/JavaProject;

    :try_start_2
    invoke-virtual {v5}, Lorg/eclipse/jdt/internal/core/JavaProject;->getResolvedClasspath()[Lorg/eclipse/jdt/core/IClasspathEntry;

    move-result-object v5

    array-length v6, v5

    const/4 v7, 0x0

    :goto_c
    if-lt v7, v6, :cond_20

    goto :goto_b

    :cond_20
    aget-object v8, v5, v7

    invoke-interface {v8}, Lorg/eclipse/jdt/core/IClasspathEntry;->getEntryKind()I

    move-result v8
    :try_end_2
    .catch Lorg/eclipse/jdt/core/JavaModelException; {:try_start_2 .. :try_end_2} :catch_3

    const/4 v9, 0x1

    if-ne v8, v9, :cond_21

    :try_start_3
    aget-object v8, v5, v7

    invoke-interface {v8}, Lorg/eclipse/jdt/core/IClasspathEntry;->getPath()Lorg/eclipse/core/runtime/IPath;

    move-result-object v8

    invoke-interface {v2, v8}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catch Lorg/eclipse/jdt/core/JavaModelException; {:try_start_3 .. :try_end_3} :catch_2

    :cond_21
    add-int/lit8 v7, v7, 0x1

    goto :goto_c

    :catch_3
    const/4 v9, 0x1

    goto :goto_b
.end method

.method private currentDelta()Lorg/eclipse/jdt/internal/core/JavaElementDelta;
    .locals 2

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/DeltaProcessor;->currentDelta:Lorg/eclipse/jdt/internal/core/JavaElementDelta;

    if-nez v0, :cond_0

    new-instance v0, Lorg/eclipse/jdt/internal/core/JavaElementDelta;

    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/DeltaProcessor;->manager:Lorg/eclipse/jdt/internal/core/JavaModelManager;

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/core/JavaModelManager;->getJavaModel()Lorg/eclipse/jdt/internal/core/JavaModel;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/eclipse/jdt/internal/core/JavaElementDelta;-><init>(Lorg/eclipse/jdt/core/IJavaElement;)V

    iput-object v0, p0, Lorg/eclipse/jdt/internal/core/DeltaProcessor;->currentDelta:Lorg/eclipse/jdt/internal/core/JavaElementDelta;

    :cond_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/DeltaProcessor;->currentDelta:Lorg/eclipse/jdt/internal/core/JavaElementDelta;

    return-object v0
.end method

.method private deleting(Lorg/eclipse/core/resources/IProject;)V
    .locals 5

    :try_start_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/DeltaProcessor;->manager:Lorg/eclipse/jdt/internal/core/JavaModelManager;

    iget-object v0, v0, Lorg/eclipse/jdt/internal/core/JavaModelManager;->indexManager:Lorg/eclipse/jdt/internal/core/search/indexing/IndexManager;

    invoke-interface {p1}, Lorg/eclipse/core/resources/IProject;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/eclipse/jdt/internal/core/search/processing/JobManager;->discardJobs(Ljava/lang/String;)V

    invoke-static {p1}, Lorg/eclipse/jdt/core/JavaCore;->create(Lorg/eclipse/core/resources/IProject;)Lorg/eclipse/jdt/core/IJavaProject;

    move-result-object p1

    check-cast p1, Lorg/eclipse/jdt/internal/core/JavaProject;

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/DeltaProcessor;->oldRoots:Ljava/util/Map;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/eclipse/jdt/internal/core/DeltaProcessor;->oldRoots:Ljava/util/Map;

    :cond_0
    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/core/Openable;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/DeltaProcessor;->oldRoots:Ljava/util/Map;

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/core/JavaProject;->getPackageFragmentRoots()[Lorg/eclipse/jdt/core/IPackageFragmentRoot;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/DeltaProcessor;->oldRoots:Ljava/util/Map;

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/core/JavaProject;->getResolvedClasspath()[Lorg/eclipse/jdt/core/IClasspathEntry;

    move-result-object v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {p1, v1, v4, v2, v3}, Lorg/eclipse/jdt/internal/core/JavaProject;->computePackageFragmentRoots([Lorg/eclipse/jdt/core/IClasspathEntry;ZZLjava/util/Map;)[Lorg/eclipse/jdt/core/IPackageFragmentRoot;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/core/JavaProject;->close()V

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/DeltaProcessor;->state:Lorg/eclipse/jdt/internal/core/DeltaProcessingState;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/core/DeltaProcessingState;->getOldJavaProjecNames()Ljava/util/Set;

    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/core/DeltaProcessor;->removeFromParentInfo(Lorg/eclipse/jdt/internal/core/Openable;)V

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/DeltaProcessor;->manager:Lorg/eclipse/jdt/internal/core/JavaModelManager;

    invoke-virtual {v0, p1}, Lorg/eclipse/jdt/internal/core/JavaModelManager;->resetProjectPreferences(Lorg/eclipse/jdt/internal/core/JavaProject;)V
    :try_end_0
    .catch Lorg/eclipse/jdt/core/JavaModelException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method private elementAdded(Lorg/eclipse/jdt/internal/core/Openable;Lorg/eclipse/core/resources/IResourceDelta;Lorg/eclipse/jdt/internal/core/DeltaProcessor$RootInfo;)V
    .locals 4

    invoke-interface {p1}, Lorg/eclipse/jdt/core/IJavaElement;->getElementType()I

    move-result p3

    const/4 v0, 0x2

    if-ne p3, v0, :cond_1

    if-eqz p2, :cond_a

    invoke-interface {p2}, Lorg/eclipse/core/resources/IResourceDelta;->getResource()Lorg/eclipse/core/resources/IResource;

    move-result-object p3

    check-cast p3, Lorg/eclipse/core/resources/IProject;

    invoke-static {p3}, Lorg/eclipse/jdt/internal/core/JavaProject;->hasJavaNature(Lorg/eclipse/core/resources/IProject;)Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/core/DeltaProcessor;->addToParentInfo(Lorg/eclipse/jdt/internal/core/Openable;)V

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/DeltaProcessor;->manager:Lorg/eclipse/jdt/internal/core/JavaModelManager;

    const/4 v1, 0x1

    invoke-virtual {v0, p3, v1}, Lorg/eclipse/jdt/internal/core/JavaModelManager;->getPerProjectInfo(Lorg/eclipse/core/resources/IProject;Z)Lorg/eclipse/jdt/internal/core/JavaModelManager$PerProjectInfo;

    move-result-object p3

    invoke-virtual {p3}, Lorg/eclipse/jdt/internal/core/JavaModelManager$PerProjectInfo;->rememberExternalLibTimestamps()V

    invoke-interface {p2}, Lorg/eclipse/core/resources/IResourceDelta;->getFlags()I

    move-result p3

    and-int/lit16 p3, p3, 0x1000

    if-eqz p3, :cond_0

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/core/JavaElement;->getJavaModel()Lorg/eclipse/jdt/core/IJavaModel;

    move-result-object p3

    invoke-interface {p2}, Lorg/eclipse/core/resources/IResourceDelta;->getMovedFromPath()Lorg/eclipse/core/runtime/IPath;

    move-result-object v0

    invoke-interface {v0}, Lorg/eclipse/core/runtime/IPath;->lastSegment()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p3, v0}, Lorg/eclipse/jdt/core/IJavaModel;->getJavaProject(Ljava/lang/String;)Lorg/eclipse/jdt/core/IJavaProject;

    move-result-object p3

    check-cast p3, Lorg/eclipse/jdt/internal/core/Openable;

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/core/DeltaProcessor;->currentDelta()Lorg/eclipse/jdt/internal/core/JavaElementDelta;

    move-result-object v0

    invoke-virtual {v0, p1, p3}, Lorg/eclipse/jdt/internal/core/JavaElementDelta;->movedTo(Lorg/eclipse/jdt/core/IJavaElement;Lorg/eclipse/jdt/core/IJavaElement;)V

    goto :goto_0

    :cond_0
    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/core/DeltaProcessor;->close(Lorg/eclipse/jdt/internal/core/Openable;)V

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/core/DeltaProcessor;->currentDelta()Lorg/eclipse/jdt/internal/core/JavaElementDelta;

    move-result-object p3

    invoke-virtual {p3, p1}, Lorg/eclipse/jdt/internal/core/JavaElementDelta;->added(Lorg/eclipse/jdt/core/IJavaElement;)V

    :goto_0
    iget-object p3, p0, Lorg/eclipse/jdt/internal/core/DeltaProcessor;->state:Lorg/eclipse/jdt/internal/core/DeltaProcessingState;

    invoke-interface {p1}, Lorg/eclipse/jdt/core/IJavaElement;->getPath()Lorg/eclipse/core/runtime/IPath;

    move-result-object v0

    invoke-virtual {p3, v0, p2, p0}, Lorg/eclipse/jdt/internal/core/DeltaProcessingState;->updateRoots(Lorg/eclipse/core/runtime/IPath;Lorg/eclipse/core/resources/IResourceDelta;Lorg/eclipse/jdt/internal/core/DeltaProcessor;)V

    iget-object p2, p0, Lorg/eclipse/jdt/internal/core/DeltaProcessor;->projectCachesToReset:Ljava/util/Set;

    invoke-interface {p2, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto/16 :goto_5

    :cond_1
    if-eqz p2, :cond_6

    invoke-interface {p2}, Lorg/eclipse/core/resources/IResourceDelta;->getFlags()I

    move-result v1

    and-int/lit16 v1, v1, 0x1000

    if-nez v1, :cond_2

    goto :goto_3

    :cond_2
    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/core/DeltaProcessor;->addToParentInfo(Lorg/eclipse/jdt/internal/core/Openable;)V

    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/core/DeltaProcessor;->close(Lorg/eclipse/jdt/internal/core/Openable;)V

    invoke-interface {p2}, Lorg/eclipse/core/resources/IResourceDelta;->getMovedFromPath()Lorg/eclipse/core/runtime/IPath;

    move-result-object v1

    invoke-interface {p2}, Lorg/eclipse/core/resources/IResourceDelta;->getResource()Lorg/eclipse/core/resources/IResource;

    move-result-object p2

    instance-of v2, p2, Lorg/eclipse/core/resources/IFile;

    if-eqz v2, :cond_3

    invoke-interface {p2}, Lorg/eclipse/core/resources/IResource;->getWorkspace()Lorg/eclipse/core/resources/IWorkspace;

    move-result-object p2

    invoke-interface {p2}, Lorg/eclipse/core/resources/IWorkspace;->getRoot()Lorg/eclipse/core/resources/IWorkspaceRoot;

    move-result-object p2

    invoke-interface {p2, v1}, Lorg/eclipse/core/resources/IWorkspaceRoot;->getFile(Lorg/eclipse/core/runtime/IPath;)Lorg/eclipse/core/resources/IFile;

    move-result-object p2

    goto :goto_1

    :cond_3
    invoke-interface {p2}, Lorg/eclipse/core/resources/IResource;->getWorkspace()Lorg/eclipse/core/resources/IWorkspace;

    move-result-object p2

    invoke-interface {p2}, Lorg/eclipse/core/resources/IWorkspace;->getRoot()Lorg/eclipse/core/resources/IWorkspaceRoot;

    move-result-object p2

    invoke-interface {p2, v1}, Lorg/eclipse/core/resources/IWorkspaceRoot;->getFolder(Lorg/eclipse/core/runtime/IPath;)Lorg/eclipse/core/resources/IFolder;

    move-result-object p2

    :goto_1
    invoke-direct {p0, p2}, Lorg/eclipse/jdt/internal/core/DeltaProcessor;->externalPath(Lorg/eclipse/core/resources/IResource;)Lorg/eclipse/core/runtime/IPath;

    move-result-object v1

    invoke-direct {p0, v1, v0}, Lorg/eclipse/jdt/internal/core/DeltaProcessor;->enclosingRootInfo(Lorg/eclipse/core/runtime/IPath;I)Lorg/eclipse/jdt/internal/core/DeltaProcessor$RootInfo;

    move-result-object v1

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/core/JavaElement;->getParent()Lorg/eclipse/jdt/core/IJavaElement;

    move-result-object v2

    invoke-interface {v2}, Lorg/eclipse/jdt/core/IJavaElement;->getElementType()I

    move-result v2

    invoke-direct {p0, p2, v0, v2, v1}, Lorg/eclipse/jdt/internal/core/DeltaProcessor;->elementType(Lorg/eclipse/core/resources/IResource;IILorg/eclipse/jdt/internal/core/DeltaProcessor$RootInfo;)I

    move-result v2

    const/4 v3, 0x0

    iput-object v3, p0, Lorg/eclipse/jdt/internal/core/DeltaProcessor;->currentElement:Lorg/eclipse/jdt/internal/core/Openable;

    if-eq p3, v0, :cond_4

    if-ne v2, v0, :cond_4

    goto :goto_2

    :cond_4
    invoke-direct {p0, p2, v2, v1}, Lorg/eclipse/jdt/internal/core/DeltaProcessor;->createElement(Lorg/eclipse/core/resources/IResource;ILorg/eclipse/jdt/internal/core/DeltaProcessor$RootInfo;)Lorg/eclipse/jdt/internal/core/Openable;

    move-result-object v3

    :goto_2
    if-nez v3, :cond_5

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/core/DeltaProcessor;->currentDelta()Lorg/eclipse/jdt/internal/core/JavaElementDelta;

    move-result-object p2

    invoke-virtual {p2, p1}, Lorg/eclipse/jdt/internal/core/JavaElementDelta;->added(Lorg/eclipse/jdt/core/IJavaElement;)V

    goto :goto_4

    :cond_5
    invoke-direct {p0}, Lorg/eclipse/jdt/internal/core/DeltaProcessor;->currentDelta()Lorg/eclipse/jdt/internal/core/JavaElementDelta;

    move-result-object p2

    invoke-virtual {p2, p1, v3}, Lorg/eclipse/jdt/internal/core/JavaElementDelta;->movedTo(Lorg/eclipse/jdt/core/IJavaElement;Lorg/eclipse/jdt/core/IJavaElement;)V

    goto :goto_4

    :cond_6
    :goto_3
    invoke-direct {p0, p1, p3}, Lorg/eclipse/jdt/internal/core/DeltaProcessor;->isPrimaryWorkingCopy(Lorg/eclipse/jdt/core/IJavaElement;I)Z

    move-result p2

    if-eqz p2, :cond_7

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/core/DeltaProcessor;->currentDelta()Lorg/eclipse/jdt/internal/core/JavaElementDelta;

    move-result-object p2

    const/high16 v0, 0x40000

    invoke-virtual {p2, p1, v0}, Lorg/eclipse/jdt/internal/core/JavaElementDelta;->changed(Lorg/eclipse/jdt/core/IJavaElement;I)Lorg/eclipse/jdt/internal/core/JavaElementDelta;

    goto :goto_4

    :cond_7
    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/core/DeltaProcessor;->addToParentInfo(Lorg/eclipse/jdt/internal/core/Openable;)V

    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/core/DeltaProcessor;->close(Lorg/eclipse/jdt/internal/core/Openable;)V

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/core/DeltaProcessor;->currentDelta()Lorg/eclipse/jdt/internal/core/JavaElementDelta;

    move-result-object p2

    invoke-virtual {p2, p1}, Lorg/eclipse/jdt/internal/core/JavaElementDelta;->added(Lorg/eclipse/jdt/core/IJavaElement;)V

    :goto_4
    const/4 p2, 0x3

    if-eq p3, p2, :cond_9

    const/4 p2, 0x4

    if-eq p3, p2, :cond_8

    goto :goto_5

    :cond_8
    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/core/JavaElement;->getJavaProject()Lorg/eclipse/jdt/core/IJavaProject;

    move-result-object p1

    check-cast p1, Lorg/eclipse/jdt/internal/core/JavaProject;

    iget-object p2, p0, Lorg/eclipse/jdt/internal/core/DeltaProcessor;->projectCachesToReset:Ljava/util/Set;

    invoke-interface {p2, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_5

    :cond_9
    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/core/JavaElement;->getJavaProject()Lorg/eclipse/jdt/core/IJavaProject;

    move-result-object p1

    check-cast p1, Lorg/eclipse/jdt/internal/core/JavaProject;

    iget-object p2, p0, Lorg/eclipse/jdt/internal/core/DeltaProcessor;->projectCachesToReset:Ljava/util/Set;

    invoke-interface {p2, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_a
    :goto_5
    return-void
.end method

.method private elementRemoved(Lorg/eclipse/jdt/internal/core/Openable;Lorg/eclipse/core/resources/IResourceDelta;Lorg/eclipse/jdt/internal/core/DeltaProcessor$RootInfo;)V
    .locals 7

    invoke-interface {p1}, Lorg/eclipse/jdt/core/IJavaElement;->getElementType()I

    move-result p3

    const/4 v0, 0x4

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eqz p2, :cond_6

    invoke-interface {p2}, Lorg/eclipse/core/resources/IResourceDelta;->getFlags()I

    move-result v3

    and-int/lit16 v3, v3, 0x2000

    if-nez v3, :cond_0

    goto/16 :goto_2

    :cond_0
    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/core/DeltaProcessor;->close(Lorg/eclipse/jdt/internal/core/Openable;)V

    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/core/DeltaProcessor;->removeFromParentInfo(Lorg/eclipse/jdt/internal/core/Openable;)V

    invoke-interface {p2}, Lorg/eclipse/core/resources/IResourceDelta;->getMovedToPath()Lorg/eclipse/core/runtime/IPath;

    move-result-object v3

    invoke-interface {p2}, Lorg/eclipse/core/resources/IResourceDelta;->getResource()Lorg/eclipse/core/resources/IResource;

    move-result-object v4

    invoke-interface {v4}, Lorg/eclipse/core/resources/IResource;->getType()I

    move-result v5

    if-eq v5, v2, :cond_3

    if-eq v5, v1, :cond_2

    if-eq v5, v0, :cond_1

    return-void

    :cond_1
    invoke-interface {v4}, Lorg/eclipse/core/resources/IResource;->getWorkspace()Lorg/eclipse/core/resources/IWorkspace;

    move-result-object v4

    invoke-interface {v4}, Lorg/eclipse/core/resources/IWorkspace;->getRoot()Lorg/eclipse/core/resources/IWorkspaceRoot;

    move-result-object v4

    invoke-interface {v3}, Lorg/eclipse/core/runtime/IPath;->lastSegment()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v4, v3}, Lorg/eclipse/core/resources/IWorkspaceRoot;->getProject(Ljava/lang/String;)Lorg/eclipse/core/resources/IProject;

    move-result-object v3

    goto :goto_0

    :cond_2
    invoke-interface {v4}, Lorg/eclipse/core/resources/IResource;->getWorkspace()Lorg/eclipse/core/resources/IWorkspace;

    move-result-object v4

    invoke-interface {v4}, Lorg/eclipse/core/resources/IWorkspace;->getRoot()Lorg/eclipse/core/resources/IWorkspaceRoot;

    move-result-object v4

    invoke-interface {v4, v3}, Lorg/eclipse/core/resources/IWorkspaceRoot;->getFolder(Lorg/eclipse/core/runtime/IPath;)Lorg/eclipse/core/resources/IFolder;

    move-result-object v3

    goto :goto_0

    :cond_3
    invoke-interface {v4}, Lorg/eclipse/core/resources/IResource;->getWorkspace()Lorg/eclipse/core/resources/IWorkspace;

    move-result-object v4

    invoke-interface {v4}, Lorg/eclipse/core/resources/IWorkspace;->getRoot()Lorg/eclipse/core/resources/IWorkspaceRoot;

    move-result-object v4

    invoke-interface {v4, v3}, Lorg/eclipse/core/resources/IWorkspaceRoot;->getFile(Lorg/eclipse/core/runtime/IPath;)Lorg/eclipse/core/resources/IFile;

    move-result-object v3

    :goto_0
    invoke-direct {p0, v3}, Lorg/eclipse/jdt/internal/core/DeltaProcessor;->externalPath(Lorg/eclipse/core/resources/IResource;)Lorg/eclipse/core/runtime/IPath;

    move-result-object v4

    invoke-direct {p0, v4, v2}, Lorg/eclipse/jdt/internal/core/DeltaProcessor;->enclosingRootInfo(Lorg/eclipse/core/runtime/IPath;I)Lorg/eclipse/jdt/internal/core/DeltaProcessor$RootInfo;

    move-result-object v4

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/core/JavaElement;->getParent()Lorg/eclipse/jdt/core/IJavaElement;

    move-result-object v5

    invoke-interface {v5}, Lorg/eclipse/jdt/core/IJavaElement;->getElementType()I

    move-result v5

    invoke-direct {p0, v3, v2, v5, v4}, Lorg/eclipse/jdt/internal/core/DeltaProcessor;->elementType(Lorg/eclipse/core/resources/IResource;IILorg/eclipse/jdt/internal/core/DeltaProcessor$RootInfo;)I

    move-result v5

    const/4 v6, 0x0

    iput-object v6, p0, Lorg/eclipse/jdt/internal/core/DeltaProcessor;->currentElement:Lorg/eclipse/jdt/internal/core/Openable;

    if-eq p3, v1, :cond_4

    if-ne v5, v1, :cond_4

    goto :goto_1

    :cond_4
    invoke-direct {p0, v3, v5, v4}, Lorg/eclipse/jdt/internal/core/DeltaProcessor;->createElement(Lorg/eclipse/core/resources/IResource;ILorg/eclipse/jdt/internal/core/DeltaProcessor$RootInfo;)Lorg/eclipse/jdt/internal/core/Openable;

    move-result-object v6

    :goto_1
    if-nez v6, :cond_5

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/core/DeltaProcessor;->currentDelta()Lorg/eclipse/jdt/internal/core/JavaElementDelta;

    move-result-object v3

    invoke-virtual {v3, p1}, Lorg/eclipse/jdt/internal/core/JavaElementDelta;->removed(Lorg/eclipse/jdt/core/IJavaElement;)V

    goto :goto_3

    :cond_5
    invoke-direct {p0}, Lorg/eclipse/jdt/internal/core/DeltaProcessor;->currentDelta()Lorg/eclipse/jdt/internal/core/JavaElementDelta;

    move-result-object v3

    invoke-virtual {v3, p1, v6}, Lorg/eclipse/jdt/internal/core/JavaElementDelta;->movedFrom(Lorg/eclipse/jdt/core/IJavaElement;Lorg/eclipse/jdt/core/IJavaElement;)V

    goto :goto_3

    :cond_6
    :goto_2
    invoke-direct {p0, p1, p3}, Lorg/eclipse/jdt/internal/core/DeltaProcessor;->isPrimaryWorkingCopy(Lorg/eclipse/jdt/core/IJavaElement;I)Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/core/DeltaProcessor;->currentDelta()Lorg/eclipse/jdt/internal/core/JavaElementDelta;

    move-result-object v3

    const/high16 v4, 0x40000

    invoke-virtual {v3, p1, v4}, Lorg/eclipse/jdt/internal/core/JavaElementDelta;->changed(Lorg/eclipse/jdt/core/IJavaElement;I)Lorg/eclipse/jdt/internal/core/JavaElementDelta;

    goto :goto_3

    :cond_7
    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/core/DeltaProcessor;->close(Lorg/eclipse/jdt/internal/core/Openable;)V

    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/core/DeltaProcessor;->removeFromParentInfo(Lorg/eclipse/jdt/internal/core/Openable;)V

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/core/DeltaProcessor;->currentDelta()Lorg/eclipse/jdt/internal/core/JavaElementDelta;

    move-result-object v3

    invoke-virtual {v3, p1}, Lorg/eclipse/jdt/internal/core/JavaElementDelta;->removed(Lorg/eclipse/jdt/core/IJavaElement;)V

    :goto_3
    if-eq p3, v2, :cond_b

    if-eq p3, v1, :cond_a

    const/4 p2, 0x3

    if-eq p3, p2, :cond_9

    if-eq p3, v0, :cond_8

    goto :goto_4

    :cond_8
    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/core/JavaElement;->getJavaProject()Lorg/eclipse/jdt/core/IJavaProject;

    move-result-object p1

    check-cast p1, Lorg/eclipse/jdt/internal/core/JavaProject;

    iget-object p2, p0, Lorg/eclipse/jdt/internal/core/DeltaProcessor;->projectCachesToReset:Ljava/util/Set;

    invoke-interface {p2, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_9
    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/core/JavaElement;->getJavaProject()Lorg/eclipse/jdt/core/IJavaProject;

    move-result-object p1

    check-cast p1, Lorg/eclipse/jdt/internal/core/JavaProject;

    iget-object p2, p0, Lorg/eclipse/jdt/internal/core/DeltaProcessor;->projectCachesToReset:Ljava/util/Set;

    invoke-interface {p2, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_a
    iget-object p3, p0, Lorg/eclipse/jdt/internal/core/DeltaProcessor;->state:Lorg/eclipse/jdt/internal/core/DeltaProcessingState;

    invoke-interface {p1}, Lorg/eclipse/jdt/core/IJavaElement;->getPath()Lorg/eclipse/core/runtime/IPath;

    move-result-object v0

    invoke-virtual {p3, v0, p2, p0}, Lorg/eclipse/jdt/internal/core/DeltaProcessingState;->updateRoots(Lorg/eclipse/core/runtime/IPath;Lorg/eclipse/core/resources/IResourceDelta;Lorg/eclipse/jdt/internal/core/DeltaProcessor;)V

    iget-object p2, p0, Lorg/eclipse/jdt/internal/core/DeltaProcessor;->projectCachesToReset:Ljava/util/Set;

    invoke-interface {p2, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_b
    iget-object p1, p0, Lorg/eclipse/jdt/internal/core/DeltaProcessor;->manager:Lorg/eclipse/jdt/internal/core/JavaModelManager;

    iget-object p1, p1, Lorg/eclipse/jdt/internal/core/JavaModelManager;->indexManager:Lorg/eclipse/jdt/internal/core/search/indexing/IndexManager;

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/core/search/indexing/IndexManager;->reset()V

    :goto_4
    return-void
.end method

.method private elementType(Lorg/eclipse/core/resources/IResource;IILorg/eclipse/jdt/internal/core/DeltaProcessor$RootInfo;)I
    .locals 9

    const/4 v0, 0x4

    const/4 v1, 0x3

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, -0x1

    if-eq p3, v4, :cond_1

    if-eq p3, v3, :cond_0

    if-eq p3, v2, :cond_1

    if-eq p3, v1, :cond_3

    if-eq p3, v0, :cond_3

    return v4

    :cond_0
    return v2

    :cond_1
    if-nez p4, :cond_2

    invoke-interface {p1}, Lorg/eclipse/core/resources/IResource;->getFullPath()Lorg/eclipse/core/runtime/IPath;

    move-result-object p4

    invoke-direct {p0, p4, p2}, Lorg/eclipse/jdt/internal/core/DeltaProcessor;->enclosingRootInfo(Lorg/eclipse/core/runtime/IPath;I)Lorg/eclipse/jdt/internal/core/DeltaProcessor$RootInfo;

    move-result-object p4

    :cond_2
    if-eqz p4, :cond_3

    invoke-interface {p1}, Lorg/eclipse/core/resources/IResource;->getFullPath()Lorg/eclipse/core/runtime/IPath;

    move-result-object v5

    invoke-virtual {p4, v5}, Lorg/eclipse/jdt/internal/core/DeltaProcessor$RootInfo;->isRootOfProject(Lorg/eclipse/core/runtime/IPath;)Z

    move-result v5

    if-eqz v5, :cond_3

    return v1

    :cond_3
    if-nez p4, :cond_4

    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/core/DeltaProcessor;->externalPath(Lorg/eclipse/core/resources/IResource;)Lorg/eclipse/core/runtime/IPath;

    move-result-object p4

    invoke-direct {p0, p4, p2}, Lorg/eclipse/jdt/internal/core/DeltaProcessor;->enclosingRootInfo(Lorg/eclipse/core/runtime/IPath;I)Lorg/eclipse/jdt/internal/core/DeltaProcessor$RootInfo;

    move-result-object p4

    :cond_4
    if-nez p4, :cond_5

    return v4

    :cond_5
    iget-object v5, p4, Lorg/eclipse/jdt/internal/core/DeltaProcessor$RootInfo;->inclusionPatterns:[[C

    iget-object v6, p4, Lorg/eclipse/jdt/internal/core/DeltaProcessor$RootInfo;->exclusionPatterns:[[C

    invoke-static {p1, v5, v6}, Lorg/eclipse/jdt/internal/core/util/Util;->isExcluded(Lorg/eclipse/core/resources/IResource;[[C[[C)Z

    move-result v5

    if-eqz v5, :cond_6

    return v4

    :cond_6
    invoke-interface {p1}, Lorg/eclipse/core/resources/IResource;->getType()I

    move-result v5

    const-string v6, "org.eclipse.jdt.core.compiler.compliance"

    const-string v7, "org.eclipse.jdt.core.compiler.source"

    const/4 v8, 0x0

    if-ne v5, v2, :cond_b

    if-ne p3, v4, :cond_7

    invoke-interface {p1}, Lorg/eclipse/core/resources/IResource;->getParent()Lorg/eclipse/core/resources/IContainer;

    move-result-object p2

    iget-object p3, p4, Lorg/eclipse/jdt/internal/core/DeltaProcessor$RootInfo;->inclusionPatterns:[[C

    iget-object v1, p4, Lorg/eclipse/jdt/internal/core/DeltaProcessor$RootInfo;->exclusionPatterns:[[C

    invoke-static {p2, p3, v1}, Lorg/eclipse/jdt/internal/core/util/Util;->isExcluded(Lorg/eclipse/core/resources/IResource;[[C[[C)Z

    move-result p2

    if-nez p2, :cond_7

    return v4

    :cond_7
    iget-object p2, p4, Lorg/eclipse/jdt/internal/core/DeltaProcessor$RootInfo;->project:Lorg/eclipse/jdt/internal/core/JavaProject;

    if-nez p2, :cond_8

    move-object p2, v8

    goto :goto_0

    :cond_8
    invoke-virtual {p2, v7, v3}, Lorg/eclipse/jdt/internal/core/JavaProject;->getOption(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p2

    :goto_0
    iget-object p3, p4, Lorg/eclipse/jdt/internal/core/DeltaProcessor$RootInfo;->project:Lorg/eclipse/jdt/internal/core/JavaProject;

    if-nez p3, :cond_9

    goto :goto_1

    :cond_9
    invoke-virtual {p3, v6, v3}, Lorg/eclipse/jdt/internal/core/JavaProject;->getOption(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v8

    :goto_1
    invoke-interface {p1}, Lorg/eclipse/core/resources/IResource;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, p2, v8}, Lorg/eclipse/jdt/internal/core/util/Util;->isValidFolderNameForPackage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_a

    return v0

    :cond_a
    return v4

    :cond_b
    invoke-interface {p1}, Lorg/eclipse/core/resources/IResource;->getName()Ljava/lang/String;

    move-result-object p3

    iget-object v0, p4, Lorg/eclipse/jdt/internal/core/DeltaProcessor$RootInfo;->project:Lorg/eclipse/jdt/internal/core/JavaProject;

    if-nez v0, :cond_c

    move-object v0, v8

    goto :goto_2

    :cond_c
    invoke-virtual {v0, v7, v3}, Lorg/eclipse/jdt/internal/core/JavaProject;->getOption(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    :goto_2
    iget-object p4, p4, Lorg/eclipse/jdt/internal/core/DeltaProcessor$RootInfo;->project:Lorg/eclipse/jdt/internal/core/JavaProject;

    if-nez p4, :cond_d

    goto :goto_3

    :cond_d
    invoke-virtual {p4, v6, v3}, Lorg/eclipse/jdt/internal/core/JavaProject;->getOption(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v8

    :goto_3
    invoke-static {p3, v0, v8}, Lorg/eclipse/jdt/internal/core/util/Util;->isValidCompilationUnitName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p4

    if-eqz p4, :cond_e

    const/4 p1, 0x5

    return p1

    :cond_e
    invoke-static {p3, v0, v8}, Lorg/eclipse/jdt/internal/core/util/Util;->isValidClassFileName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_f

    const/4 p1, 0x6

    return p1

    :cond_f
    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/core/DeltaProcessor;->externalPath(Lorg/eclipse/core/resources/IResource;)Lorg/eclipse/core/runtime/IPath;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Lorg/eclipse/jdt/internal/core/DeltaProcessor;->rootInfo(Lorg/eclipse/core/runtime/IPath;I)Lorg/eclipse/jdt/internal/core/DeltaProcessor$RootInfo;

    move-result-object p2

    if-eqz p2, :cond_10

    iget-object p2, p2, Lorg/eclipse/jdt/internal/core/DeltaProcessor$RootInfo;->project:Lorg/eclipse/jdt/internal/core/JavaProject;

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/core/JavaProject;->getProject()Lorg/eclipse/core/resources/IProject;

    move-result-object p2

    invoke-interface {p2}, Lorg/eclipse/core/resources/IProject;->getFullPath()Lorg/eclipse/core/runtime/IPath;

    move-result-object p2

    invoke-interface {p2, p1}, Lorg/eclipse/core/runtime/IPath;->isPrefixOf(Lorg/eclipse/core/runtime/IPath;)Z

    move-result p1

    if-eqz p1, :cond_10

    return v1

    :cond_10
    return v4
.end method

.method private enclosingRootInfo(Lorg/eclipse/core/runtime/IPath;I)Lorg/eclipse/jdt/internal/core/DeltaProcessor$RootInfo;
    .locals 1

    :goto_0
    if-eqz p1, :cond_2

    invoke-interface {p1}, Lorg/eclipse/core/runtime/IPath;->segmentCount()I

    move-result v0

    if-gtz v0, :cond_0

    goto :goto_1

    :cond_0
    invoke-direct {p0, p1, p2}, Lorg/eclipse/jdt/internal/core/DeltaProcessor;->rootInfo(Lorg/eclipse/core/runtime/IPath;I)Lorg/eclipse/jdt/internal/core/DeltaProcessor$RootInfo;

    move-result-object v0

    if-eqz v0, :cond_1

    return-object v0

    :cond_1
    const/4 v0, 0x1

    invoke-interface {p1, v0}, Lorg/eclipse/core/runtime/IPath;->removeLastSegments(I)Lorg/eclipse/core/runtime/IPath;

    move-result-object p1

    goto :goto_0

    :cond_2
    :goto_1
    const/4 p1, 0x0

    return-object p1
.end method

.method private externalPath(Lorg/eclipse/core/resources/IResource;)Lorg/eclipse/core/runtime/IPath;
    .locals 2

    invoke-interface {p1}, Lorg/eclipse/core/resources/IResource;->getFullPath()Lorg/eclipse/core/runtime/IPath;

    move-result-object v0

    invoke-static {v0}, Lorg/eclipse/jdt/internal/core/ExternalFoldersManager;->isInternalPathForExternalFolder(Lorg/eclipse/core/runtime/IPath;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Lorg/eclipse/core/resources/IResource;->getLocation()Lorg/eclipse/core/runtime/IPath;

    move-result-object p1

    return-object p1

    :cond_0
    return-object v0
.end method

.method private findContainingPackageFragmentRoot(Lorg/eclipse/core/resources/IResource;)Lorg/eclipse/jdt/core/IPackageFragmentRoot;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/JavaModelException;
        }
    .end annotation

    invoke-interface {p1}, Lorg/eclipse/core/resources/IResource;->getProject()Lorg/eclipse/core/resources/IProject;

    move-result-object v0

    invoke-static {v0}, Lorg/eclipse/jdt/internal/core/JavaProject;->hasJavaNature(Lorg/eclipse/core/resources/IProject;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    invoke-static {v0}, Lorg/eclipse/jdt/core/JavaCore;->create(Lorg/eclipse/core/resources/IProject;)Lorg/eclipse/jdt/core/IJavaProject;

    move-result-object v0

    invoke-interface {p1}, Lorg/eclipse/core/resources/IResource;->getProjectRelativePath()Lorg/eclipse/core/runtime/IPath;

    move-result-object v1

    invoke-interface {v0}, Lorg/eclipse/jdt/core/IJavaProject;->getPackageFragmentRoots()[Lorg/eclipse/jdt/core/IPackageFragmentRoot;

    move-result-object v0

    array-length v3, v0

    const/4 v4, 0x0

    :goto_0
    if-lt v4, v3, :cond_0

    goto :goto_2

    :cond_0
    aget-object v5, v0, v4

    :try_start_0
    invoke-interface {v5}, Lorg/eclipse/jdt/core/IJavaElement;->getUnderlyingResource()Lorg/eclipse/core/resources/IResource;

    move-result-object v6
    :try_end_0
    .catch Lorg/eclipse/jdt/core/JavaModelException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v6

    invoke-virtual {v6}, Lorg/eclipse/jdt/core/JavaModelException;->isDoesNotExist()Z

    move-result v7

    if-eqz v7, :cond_2

    move-object v6, v2

    :goto_1
    if-eqz v6, :cond_1

    invoke-virtual {p1, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    invoke-interface {v6}, Lorg/eclipse/core/resources/IResource;->getProjectRelativePath()Lorg/eclipse/core/runtime/IPath;

    move-result-object v6

    invoke-interface {v6, v1}, Lorg/eclipse/core/runtime/IPath;->isPrefixOf(Lorg/eclipse/core/runtime/IPath;)Z

    move-result v6

    if-eqz v6, :cond_1

    return-object v5

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    throw v6

    :cond_3
    :goto_2
    return-object v2
.end method

.method private firePostChangeDelta(Lorg/eclipse/jdt/core/IJavaElementDelta;[Lorg/eclipse/jdt/core/IElementChangedListener;[II)V
    .locals 8

    sget-boolean v0, Lorg/eclipse/jdt/internal/core/DeltaProcessor;->DEBUG:Z

    if-eqz v0, :cond_1

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "FIRING POST_CHANGE Delta ["

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "]:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    if-nez p1, :cond_0

    const-string v1, "<NONE>"

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/DeltaProcessor;->flush()V

    const-string v0, "hasModifiedResource"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/eclipse/jdt/internal/core/JavaModelOperation;->setAttribute(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v4, 0x1

    move-object v2, p0

    move-object v3, p1

    move-object v5, p2

    move-object v6, p3

    move v7, p4

    invoke-direct/range {v2 .. v7}, Lorg/eclipse/jdt/internal/core/DeltaProcessor;->notifyListeners(Lorg/eclipse/jdt/core/IJavaElementDelta;I[Lorg/eclipse/jdt/core/IElementChangedListener;[II)V

    :cond_2
    return-void
.end method

.method private fireReconcileDelta([Lorg/eclipse/jdt/core/IElementChangedListener;[II)V
    .locals 7

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/DeltaProcessor;->reconcileDeltas:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/eclipse/jdt/internal/core/DeltaProcessor;->mergeDeltas(Ljava/util/Collection;)Lorg/eclipse/jdt/core/IJavaElementDelta;

    move-result-object v2

    sget-boolean v0, Lorg/eclipse/jdt/internal/core/DeltaProcessor;->DEBUG:Z

    if-eqz v0, :cond_1

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "FIRING POST_RECONCILE Delta ["

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, "]:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    if-nez v2, :cond_0

    const-string v1, "<NONE>"

    goto :goto_0

    :cond_0
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_1
    if-eqz v2, :cond_2

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/eclipse/jdt/internal/core/DeltaProcessor;->reconcileDeltas:Ljava/util/Map;

    const/4 v3, 0x4

    move-object v1, p0

    move-object v4, p1

    move-object v5, p2

    move v6, p3

    invoke-direct/range {v1 .. v6}, Lorg/eclipse/jdt/internal/core/DeltaProcessor;->notifyListeners(Lorg/eclipse/jdt/core/IJavaElementDelta;I[Lorg/eclipse/jdt/core/IElementChangedListener;[II)V

    :cond_2
    return-void
.end method

.method private getSourceElementParser(Lorg/eclipse/jdt/internal/core/Openable;)Lorg/eclipse/jdt/internal/compiler/SourceElementParser;
    .locals 2

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/DeltaProcessor;->sourceElementParserCache:Lorg/eclipse/jdt/internal/compiler/SourceElementParser;

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/DeltaProcessor;->manager:Lorg/eclipse/jdt/internal/core/JavaModelManager;

    iget-object v0, v0, Lorg/eclipse/jdt/internal/core/JavaModelManager;->indexManager:Lorg/eclipse/jdt/internal/core/search/indexing/IndexManager;

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/core/JavaElement;->getJavaProject()Lorg/eclipse/jdt/core/IJavaProject;

    move-result-object p1

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lorg/eclipse/jdt/internal/core/search/indexing/IndexManager;->getSourceElementParser(Lorg/eclipse/jdt/core/IJavaProject;Lorg/eclipse/jdt/internal/compiler/ISourceElementRequestor;)Lorg/eclipse/jdt/internal/compiler/SourceElementParser;

    move-result-object p1

    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/DeltaProcessor;->sourceElementParserCache:Lorg/eclipse/jdt/internal/compiler/SourceElementParser;

    :cond_0
    iget-object p1, p0, Lorg/eclipse/jdt/internal/core/DeltaProcessor;->sourceElementParserCache:Lorg/eclipse/jdt/internal/compiler/SourceElementParser;

    return-object p1
.end method

.method public static getTimeStamp(Ljava/io/File;)J
    .locals 4

    invoke-virtual {p0}, Ljava/io/File;->lastModified()J

    move-result-wide v0

    invoke-virtual {p0}, Ljava/io/File;->length()J

    move-result-wide v2

    add-long/2addr v0, v2

    return-wide v0
.end method

.method private isAffectedBy(Lorg/eclipse/core/resources/IResourceDelta;)Z
    .locals 2

    if-eqz p1, :cond_0

    :try_start_0
    new-instance v0, Lorg/eclipse/jdt/internal/core/DeltaProcessor$2;

    invoke-direct {v0, p0}, Lorg/eclipse/jdt/internal/core/DeltaProcessor$2;-><init>(Lorg/eclipse/jdt/internal/core/DeltaProcessor;)V

    const/16 v1, 0x8

    invoke-interface {p1, v0, v1}, Lorg/eclipse/core/resources/IResourceDelta;->accept(Lorg/eclipse/core/resources/IResourceDeltaVisitor;I)V
    :try_end_0
    .catch Lorg/eclipse/jdt/internal/core/DeltaProcessor$1FoundRelevantDeltaException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/eclipse/core/runtime/CoreException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    :catch_0
    const/4 p1, 0x1

    return p1

    :catch_1
    :cond_0
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method private isPrimaryWorkingCopy(Lorg/eclipse/jdt/core/IJavaElement;I)Z
    .locals 2

    const/4 v0, 0x5

    const/4 v1, 0x0

    if-ne p2, v0, :cond_0

    check-cast p1, Lorg/eclipse/jdt/internal/core/CompilationUnit;

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/core/CompilationUnit;->isPrimary()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/core/CompilationUnit;->isWorkingCopy()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    return v1
.end method

.method private isResFilteredFromOutput(Lorg/eclipse/jdt/internal/core/DeltaProcessor$RootInfo;Lorg/eclipse/jdt/internal/core/DeltaProcessor$OutputsInfo;Lorg/eclipse/core/resources/IResource;I)Z
    .locals 9

    const/4 v0, 0x0

    if-eqz p2, :cond_6

    invoke-interface {p3}, Lorg/eclipse/core/resources/IResource;->getFullPath()Lorg/eclipse/core/runtime/IPath;

    move-result-object v1

    const/4 v2, 0x0

    move v3, v0

    move-object v4, v2

    move-object v5, v4

    :goto_0
    iget v6, p2, Lorg/eclipse/jdt/internal/core/DeltaProcessor$OutputsInfo;->outputCount:I

    if-lt v3, v6, :cond_0

    goto :goto_2

    :cond_0
    iget-object v6, p2, Lorg/eclipse/jdt/internal/core/DeltaProcessor$OutputsInfo;->paths:[Lorg/eclipse/core/runtime/IPath;

    aget-object v6, v6, v3

    invoke-interface {v6, v1}, Lorg/eclipse/core/runtime/IPath;->isPrefixOf(Lorg/eclipse/core/runtime/IPath;)Z

    move-result v6

    if-eqz v6, :cond_5

    iget-object v6, p2, Lorg/eclipse/jdt/internal/core/DeltaProcessor$OutputsInfo;->traverseModes:[I

    aget v6, v6, v3

    const/4 v7, 0x1

    if-eqz v6, :cond_4

    if-ne v6, v7, :cond_1

    const/4 v6, 0x6

    if-ne p4, v6, :cond_1

    return v7

    :cond_1
    const/4 v6, 0x2

    if-ne p4, v6, :cond_5

    instance-of v8, p3, Lorg/eclipse/core/resources/IFile;

    if-eqz v8, :cond_5

    if-nez v4, :cond_3

    if-nez p1, :cond_2

    invoke-interface {p3}, Lorg/eclipse/core/resources/IResource;->getProject()Lorg/eclipse/core/resources/IProject;

    move-result-object v8

    invoke-direct {p0, v8, v6, v2}, Lorg/eclipse/jdt/internal/core/DeltaProcessor;->createElement(Lorg/eclipse/core/resources/IResource;ILorg/eclipse/jdt/internal/core/DeltaProcessor$RootInfo;)Lorg/eclipse/jdt/internal/core/Openable;

    move-result-object v6

    check-cast v6, Lorg/eclipse/jdt/internal/core/JavaProject;

    goto :goto_1

    :cond_2
    iget-object v6, p1, Lorg/eclipse/jdt/internal/core/DeltaProcessor$RootInfo;->project:Lorg/eclipse/jdt/internal/core/JavaProject;

    :goto_1
    if-eqz v6, :cond_3

    const-string v4, "org.eclipse.jdt.core.compiler.source"

    invoke-virtual {v6, v4, v7}, Lorg/eclipse/jdt/internal/core/JavaProject;->getOption(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v4

    const-string v5, "org.eclipse.jdt.core.compiler.compliance"

    invoke-virtual {v6, v5, v7}, Lorg/eclipse/jdt/internal/core/JavaProject;->getOption(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v5

    :cond_3
    invoke-interface {p3}, Lorg/eclipse/core/resources/IResource;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v4, v5}, Lorg/eclipse/jdt/internal/core/util/Util;->isValidClassFileName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_5

    :cond_4
    return v7

    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_6
    :goto_2
    return v0
.end method

.method private mergeDeltas(Ljava/util/Collection;)Lorg/eclipse/jdt/core/IJavaElementDelta;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lorg/eclipse/jdt/core/IJavaElementDelta;",
            ">;)",
            "Lorg/eclipse/jdt/core/IJavaElementDelta;"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/eclipse/jdt/core/IJavaElementDelta;

    return-object p1

    :cond_1
    sget-boolean v0, Lorg/eclipse/jdt/internal/core/DeltaProcessor;->VERBOSE:Z

    if-eqz v0, :cond_2

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "MERGING "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " DELTAS ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_2
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    new-instance v0, Lorg/eclipse/jdt/internal/core/JavaElementDelta;

    iget-object v3, p0, Lorg/eclipse/jdt/internal/core/DeltaProcessor;->manager:Lorg/eclipse/jdt/internal/core/JavaModelManager;

    iget-object v3, v3, Lorg/eclipse/jdt/internal/core/JavaModelManager;->javaModel:Lorg/eclipse/jdt/internal/core/JavaModel;

    invoke-direct {v0, v3}, Lorg/eclipse/jdt/internal/core/JavaElementDelta;-><init>(Lorg/eclipse/jdt/core/IJavaElement;)V

    const/4 v3, 0x0

    move v4, v3

    :cond_3
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_5

    if-eqz v4, :cond_4

    return-object v0

    :cond_4
    return-object v1

    :cond_5
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/eclipse/jdt/internal/core/JavaElementDelta;

    sget-boolean v6, Lorg/eclipse/jdt/internal/core/DeltaProcessor;->VERBOSE:Z

    if-eqz v6, :cond_6

    sget-object v6, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v5}, Lorg/eclipse/jdt/internal/core/JavaElementDelta;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_6
    invoke-virtual {v5}, Lorg/eclipse/jdt/internal/core/JavaElementDelta;->getElement()Lorg/eclipse/jdt/core/IJavaElement;

    move-result-object v6

    iget-object v7, p0, Lorg/eclipse/jdt/internal/core/DeltaProcessor;->manager:Lorg/eclipse/jdt/internal/core/JavaModelManager;

    iget-object v7, v7, Lorg/eclipse/jdt/internal/core/JavaModelManager;->javaModel:Lorg/eclipse/jdt/internal/core/JavaModel;

    invoke-virtual {v7, v6}, Lorg/eclipse/jdt/internal/core/JavaModel;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_9

    invoke-virtual {v5}, Lorg/eclipse/jdt/internal/core/JavaElementDelta;->getAffectedChildren()[Lorg/eclipse/jdt/core/IJavaElementDelta;

    move-result-object v7

    move v6, v3

    :goto_1
    array-length v8, v7

    if-lt v6, v8, :cond_8

    invoke-virtual {v5}, Lorg/eclipse/jdt/internal/core/JavaElementDelta;->getResourceDeltas()[Lorg/eclipse/core/resources/IResourceDelta;

    move-result-object v5

    if-eqz v5, :cond_3

    array-length v6, v5

    move v7, v3

    :goto_2
    if-lt v7, v6, :cond_7

    goto :goto_0

    :cond_7
    aget-object v4, v5, v7

    invoke-virtual {v0, v4}, Lorg/eclipse/jdt/internal/core/JavaElementDelta;->addResourceDelta(Lorg/eclipse/core/resources/IResourceDelta;)V

    add-int/lit8 v7, v7, 0x1

    move v4, v2

    goto :goto_2

    :cond_8
    aget-object v4, v7, v6

    check-cast v4, Lorg/eclipse/jdt/internal/core/JavaElementDelta;

    invoke-virtual {v4}, Lorg/eclipse/jdt/internal/core/JavaElementDelta;->getElement()Lorg/eclipse/jdt/core/IJavaElement;

    move-result-object v8

    invoke-virtual {v0, v8, v4}, Lorg/eclipse/jdt/internal/core/JavaElementDelta;->insertDeltaTree(Lorg/eclipse/jdt/core/IJavaElement;Lorg/eclipse/jdt/internal/core/JavaElementDelta;)V

    add-int/lit8 v6, v6, 0x1

    move v4, v2

    goto :goto_1

    :cond_9
    invoke-virtual {v0, v6, v5}, Lorg/eclipse/jdt/internal/core/JavaElementDelta;->insertDeltaTree(Lorg/eclipse/jdt/core/IJavaElement;Lorg/eclipse/jdt/internal/core/JavaElementDelta;)V

    move v4, v2

    goto :goto_0
.end method

.method private nonJavaResourcesChanged(Lorg/eclipse/jdt/internal/core/Openable;Lorg/eclipse/core/resources/IResourceDelta;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/JavaModelException;
        }
    .end annotation

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/core/Openable;->isOpen()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_5

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/core/JavaElement;->getElementInfo()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jdt/internal/core/JavaElementInfo;

    invoke-interface {p1}, Lorg/eclipse/jdt/core/IJavaElement;->getElementType()I

    move-result v2

    const/4 v3, 0x0

    if-eq v2, v1, :cond_3

    const/4 v4, 0x2

    if-eq v2, v4, :cond_2

    const/4 v4, 0x3

    if-eq v2, v4, :cond_1

    const/4 v4, 0x4

    if-eq v2, v4, :cond_0

    goto :goto_0

    :cond_0
    check-cast v0, Lorg/eclipse/jdt/internal/core/PackageFragmentInfo;

    invoke-virtual {v0, v3}, Lorg/eclipse/jdt/internal/core/OpenableElementInfo;->setNonJavaResources([Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    check-cast v0, Lorg/eclipse/jdt/internal/core/PackageFragmentRootInfo;

    invoke-virtual {v0, v3}, Lorg/eclipse/jdt/internal/core/OpenableElementInfo;->setNonJavaResources([Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    check-cast v0, Lorg/eclipse/jdt/internal/core/JavaProjectElementInfo;

    invoke-virtual {v0, v3}, Lorg/eclipse/jdt/internal/core/OpenableElementInfo;->setNonJavaResources([Ljava/lang/Object;)V

    move-object v0, p1

    check-cast v0, Lorg/eclipse/jdt/internal/core/JavaProject;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/core/JavaProject;->getProject()Lorg/eclipse/core/resources/IProject;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/eclipse/jdt/internal/core/JavaProject;->getPackageFragmentRoot(Lorg/eclipse/core/resources/IResource;)Lorg/eclipse/jdt/core/IPackageFragmentRoot;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jdt/internal/core/PackageFragmentRoot;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/core/Openable;->isOpen()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/core/JavaElement;->getElementInfo()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jdt/internal/core/PackageFragmentRootInfo;

    invoke-virtual {v0, v3}, Lorg/eclipse/jdt/internal/core/OpenableElementInfo;->setNonJavaResources([Ljava/lang/Object;)V

    goto :goto_0

    :cond_3
    check-cast v0, Lorg/eclipse/jdt/internal/core/JavaModelInfo;

    invoke-virtual {v0, v3}, Lorg/eclipse/jdt/internal/core/OpenableElementInfo;->setNonJavaResources([Ljava/lang/Object;)V

    invoke-interface {p2}, Lorg/eclipse/core/resources/IResourceDelta;->getFullPath()Lorg/eclipse/core/runtime/IPath;

    move-result-object p1

    invoke-static {p1}, Lorg/eclipse/jdt/internal/core/ExternalFoldersManager;->isInternalPathForExternalFolder(Lorg/eclipse/core/runtime/IPath;)Z

    move-result p1

    if-nez p1, :cond_4

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/core/DeltaProcessor;->currentDelta()Lorg/eclipse/jdt/internal/core/JavaElementDelta;

    move-result-object p1

    invoke-virtual {p1, p2}, Lorg/eclipse/jdt/internal/core/JavaElementDelta;->addResourceDelta(Lorg/eclipse/core/resources/IResourceDelta;)V

    :cond_4
    return-void

    :cond_5
    :goto_0
    invoke-direct {p0}, Lorg/eclipse/jdt/internal/core/DeltaProcessor;->currentDelta()Lorg/eclipse/jdt/internal/core/JavaElementDelta;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/eclipse/jdt/internal/core/JavaElementDelta;->find(Lorg/eclipse/jdt/core/IJavaElement;)Lorg/eclipse/jdt/internal/core/JavaElementDelta;

    move-result-object v2

    if-nez v2, :cond_6

    invoke-virtual {v0, p1, v1}, Lorg/eclipse/jdt/internal/core/JavaElementDelta;->changed(Lorg/eclipse/jdt/core/IJavaElement;I)Lorg/eclipse/jdt/internal/core/JavaElementDelta;

    move-result-object v2

    :cond_6
    invoke-interface {p2}, Lorg/eclipse/core/resources/IResourceDelta;->getFullPath()Lorg/eclipse/core/runtime/IPath;

    move-result-object p1

    invoke-static {p1}, Lorg/eclipse/jdt/internal/core/ExternalFoldersManager;->isInternalPathForExternalFolder(Lorg/eclipse/core/runtime/IPath;)Z

    move-result p1

    if-nez p1, :cond_7

    invoke-virtual {v2, p2}, Lorg/eclipse/jdt/internal/core/JavaElementDelta;->addResourceDelta(Lorg/eclipse/core/resources/IResourceDelta;)V

    :cond_7
    return-void
.end method

.method private notifyListeners(Lorg/eclipse/jdt/core/IJavaElementDelta;I[Lorg/eclipse/jdt/core/IElementChangedListener;[II)V
    .locals 7

    new-instance v0, Lorg/eclipse/jdt/core/ElementChangedEvent;

    invoke-direct {v0, p1, p2}, Lorg/eclipse/jdt/core/ElementChangedEvent;-><init>(Lorg/eclipse/jdt/core/IJavaElementDelta;I)V

    const/4 p1, 0x0

    :goto_0
    if-lt p1, p5, :cond_0

    return-void

    :cond_0
    aget v1, p4, p1

    and-int/2addr v1, p2

    if-eqz v1, :cond_2

    aget-object v1, p3, p1

    sget-boolean v2, Lorg/eclipse/jdt/internal/core/DeltaProcessor;->VERBOSE:Z

    if-eqz v2, :cond_1

    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Listener #"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    add-int/lit8 v4, p1, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    goto :goto_1

    :cond_1
    const-wide/16 v2, -0x1

    :goto_1
    new-instance v4, Lorg/eclipse/jdt/internal/core/DeltaProcessor$3;

    invoke-direct {v4, p0, v1, v0}, Lorg/eclipse/jdt/internal/core/DeltaProcessor$3;-><init>(Lorg/eclipse/jdt/internal/core/DeltaProcessor;Lorg/eclipse/jdt/core/IElementChangedListener;Lorg/eclipse/jdt/core/ElementChangedEvent;)V

    invoke-static {v4}, Lorg/eclipse/core/runtime/SafeRunner;->run(Lorg/eclipse/core/runtime/ISafeRunnable;)V

    sget-boolean v1, Lorg/eclipse/jdt/internal/core/DeltaProcessor;->VERBOSE:Z

    if-eqz v1, :cond_2

    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, " -> "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sub-long/2addr v5, v2

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, "ms"

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_2
    add-int/lit8 p1, p1, 0x1

    goto :goto_0
.end method

.method private notifyTypeHierarchies([Lorg/eclipse/jdt/core/IElementChangedListener;I)V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    if-lt v0, p2, :cond_0

    return-void

    :cond_0
    aget-object v1, p1, v0

    instance-of v2, v1, Lorg/eclipse/jdt/internal/core/hierarchy/TypeHierarchy;

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    new-instance v2, Lorg/eclipse/jdt/internal/core/DeltaProcessor$4;

    invoke-direct {v2, p0, v1}, Lorg/eclipse/jdt/internal/core/DeltaProcessor$4;-><init>(Lorg/eclipse/jdt/internal/core/DeltaProcessor;Lorg/eclipse/jdt/core/IElementChangedListener;)V

    invoke-static {v2}, Lorg/eclipse/core/runtime/SafeRunner;->run(Lorg/eclipse/core/runtime/ISafeRunnable;)V

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private oldRootInfo(Lorg/eclipse/core/runtime/IPath;Lorg/eclipse/jdt/internal/core/JavaProject;)Lorg/eclipse/jdt/internal/core/DeltaProcessor$RootInfo;
    .locals 5

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/DeltaProcessor;->state:Lorg/eclipse/jdt/internal/core/DeltaProcessingState;

    iget-object v0, v0, Lorg/eclipse/jdt/internal/core/DeltaProcessingState;->oldRoots:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jdt/internal/core/DeltaProcessor$RootInfo;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    iget-object v2, v0, Lorg/eclipse/jdt/internal/core/DeltaProcessor$RootInfo;->project:Lorg/eclipse/jdt/internal/core/JavaProject;

    invoke-virtual {v2, p2}, Lorg/eclipse/jdt/internal/core/JavaProject;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    return-object v0

    :cond_1
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/DeltaProcessor;->state:Lorg/eclipse/jdt/internal/core/DeltaProcessingState;

    iget-object v0, v0, Lorg/eclipse/jdt/internal/core/DeltaProcessingState;->oldOtherRoots:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    if-nez p1, :cond_2

    return-object v1

    :cond_2
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v2, 0x0

    :goto_0
    if-lt v2, v0, :cond_3

    return-object v1

    :cond_3
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/eclipse/jdt/internal/core/DeltaProcessor$RootInfo;

    iget-object v4, v3, Lorg/eclipse/jdt/internal/core/DeltaProcessor$RootInfo;->project:Lorg/eclipse/jdt/internal/core/JavaProject;

    invoke-virtual {v4, p2}, Lorg/eclipse/jdt/internal/core/JavaProject;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    return-object v3

    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method private otherRootsInfo(Lorg/eclipse/core/runtime/IPath;I)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/eclipse/core/runtime/IPath;",
            "I)",
            "Ljava/util/List<",
            "Lorg/eclipse/jdt/internal/core/DeltaProcessor$RootInfo;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x2

    if-ne p2, v0, :cond_0

    iget-object p2, p0, Lorg/eclipse/jdt/internal/core/DeltaProcessor;->state:Lorg/eclipse/jdt/internal/core/DeltaProcessingState;

    iget-object p2, p2, Lorg/eclipse/jdt/internal/core/DeltaProcessingState;->oldOtherRoots:Ljava/util/Map;

    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    return-object p1

    :cond_0
    iget-object p2, p0, Lorg/eclipse/jdt/internal/core/DeltaProcessor;->state:Lorg/eclipse/jdt/internal/core/DeltaProcessingState;

    iget-object p2, p2, Lorg/eclipse/jdt/internal/core/DeltaProcessingState;->otherRoots:Ljava/util/Map;

    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    return-object p1
.end method

.method private outputsInfo(Lorg/eclipse/jdt/internal/core/DeltaProcessor$RootInfo;Lorg/eclipse/core/resources/IResource;)Lorg/eclipse/jdt/internal/core/DeltaProcessor$OutputsInfo;
    .locals 16

    move-object/from16 v0, p1

    const/4 v1, 0x0

    const/4 v2, 0x2

    if-nez v0, :cond_0

    :try_start_0
    invoke-interface/range {p2 .. p2}, Lorg/eclipse/core/resources/IResource;->getProject()Lorg/eclipse/core/resources/IProject;

    move-result-object v0
    :try_end_0
    .catch Lorg/eclipse/jdt/core/JavaModelException; {:try_start_0 .. :try_end_0} :catch_0

    move-object/from16 v3, p0

    :try_start_1
    invoke-direct {v3, v0, v2, v1}, Lorg/eclipse/jdt/internal/core/DeltaProcessor;->createElement(Lorg/eclipse/core/resources/IResource;ILorg/eclipse/jdt/internal/core/DeltaProcessor$RootInfo;)Lorg/eclipse/jdt/internal/core/Openable;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jdt/internal/core/JavaProject;

    goto :goto_0

    :catch_0
    move-object/from16 v3, p0

    goto/16 :goto_5

    :cond_0
    move-object/from16 v3, p0

    iget-object v0, v0, Lorg/eclipse/jdt/internal/core/DeltaProcessor$RootInfo;->project:Lorg/eclipse/jdt/internal/core/JavaProject;

    :goto_0
    if-eqz v0, :cond_8

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/core/JavaProject;->getOutputLocation()Lorg/eclipse/core/runtime/IPath;

    move-result-object v4

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/core/JavaProject;->getProject()Lorg/eclipse/core/resources/IProject;

    move-result-object v5

    invoke-interface {v5}, Lorg/eclipse/core/resources/IProject;->getFullPath()Lorg/eclipse/core/runtime/IPath;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-eqz v5, :cond_1

    new-instance v0, Lorg/eclipse/jdt/internal/core/DeltaProcessor$OutputsInfo;

    new-array v2, v7, [Lorg/eclipse/core/runtime/IPath;

    aput-object v4, v2, v6

    filled-new-array {v7}, [I

    move-result-object v4

    invoke-direct {v0, v2, v4, v7}, Lorg/eclipse/jdt/internal/core/DeltaProcessor$OutputsInfo;-><init>([Lorg/eclipse/core/runtime/IPath;[II)V

    return-object v0

    :cond_1
    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/core/JavaProject;->getResolvedClasspath()[Lorg/eclipse/jdt/core/IClasspathEntry;

    move-result-object v0

    array-length v5, v0

    add-int/2addr v5, v7

    new-array v5, v5, [Lorg/eclipse/core/runtime/IPath;

    array-length v8, v0

    add-int/2addr v8, v7

    new-array v8, v8, [I

    aput-object v4, v5, v6

    aput v6, v8, v6

    array-length v9, v0

    move v10, v6

    move v11, v7

    :goto_1
    if-lt v10, v9, :cond_2

    new-instance v0, Lorg/eclipse/jdt/internal/core/DeltaProcessor$OutputsInfo;

    invoke-direct {v0, v5, v8, v11}, Lorg/eclipse/jdt/internal/core/DeltaProcessor$OutputsInfo;-><init>([Lorg/eclipse/core/runtime/IPath;[II)V

    return-object v0

    :cond_2
    aget-object v12, v0, v10

    invoke-interface {v12}, Lorg/eclipse/jdt/core/IClasspathEntry;->getPath()Lorg/eclipse/core/runtime/IPath;

    move-result-object v13

    invoke-interface {v12}, Lorg/eclipse/jdt/core/IClasspathEntry;->getOutputLocation()Lorg/eclipse/core/runtime/IPath;

    move-result-object v14

    const/4 v15, 0x3

    if-eqz v14, :cond_5

    aput-object v14, v5, v11

    invoke-virtual {v13, v14}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_4

    add-int/lit8 v14, v11, 0x1

    invoke-interface {v12}, Lorg/eclipse/jdt/core/IClasspathEntry;->getEntryKind()I

    move-result v2

    if-ne v2, v15, :cond_3

    move v2, v7

    goto :goto_2

    :cond_3
    const/4 v2, 0x2

    :goto_2
    aput v2, v8, v11

    move v11, v14

    goto :goto_3

    :cond_4
    add-int/lit8 v2, v11, 0x1

    aput v6, v8, v11

    move v11, v2

    :cond_5
    :goto_3
    invoke-virtual {v13, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface {v12}, Lorg/eclipse/jdt/core/IClasspathEntry;->getEntryKind()I

    move-result v2

    if-ne v2, v15, :cond_6

    move v2, v7

    goto :goto_4

    :cond_6
    const/4 v2, 0x2

    :goto_4
    aput v2, v8, v6
    :try_end_1
    .catch Lorg/eclipse/jdt/core/JavaModelException; {:try_start_1 .. :try_end_1} :catch_1

    :cond_7
    add-int/lit8 v10, v10, 0x1

    const/4 v2, 0x2

    goto :goto_1

    :catch_1
    :cond_8
    :goto_5
    return-object v1
.end method

.method private popUntilPrefixOf(Lorg/eclipse/core/runtime/IPath;)V
    .locals 3

    :goto_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/DeltaProcessor;->currentElement:Lorg/eclipse/jdt/internal/core/Openable;

    if-nez v0, :cond_0

    return-void

    :cond_0
    instance-of v1, v0, Lorg/eclipse/jdt/core/IPackageFragmentRoot;

    if-eqz v1, :cond_1

    check-cast v0, Lorg/eclipse/jdt/core/IPackageFragmentRoot;

    invoke-interface {v0}, Lorg/eclipse/jdt/core/IJavaElement;->getPath()Lorg/eclipse/core/runtime/IPath;

    move-result-object v0

    goto :goto_1

    :cond_1
    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/core/Openable;->resource()Lorg/eclipse/core/resources/IResource;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-interface {v0}, Lorg/eclipse/core/resources/IResource;->getFullPath()Lorg/eclipse/core/runtime/IPath;

    move-result-object v0

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    :goto_1
    if-eqz v0, :cond_4

    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/DeltaProcessor;->currentElement:Lorg/eclipse/jdt/internal/core/Openable;

    instance-of v2, v1, Lorg/eclipse/jdt/core/IPackageFragment;

    if-eqz v2, :cond_3

    check-cast v1, Lorg/eclipse/jdt/core/IPackageFragment;

    invoke-interface {v1}, Lorg/eclipse/jdt/core/IPackageFragment;->isDefaultPackage()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Lorg/eclipse/core/runtime/IPath;->segmentCount()I

    move-result v1

    invoke-interface {p1}, Lorg/eclipse/core/runtime/IPath;->segmentCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-eq v1, v2, :cond_3

    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/DeltaProcessor;->currentElement:Lorg/eclipse/jdt/internal/core/Openable;

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/core/JavaElement;->getParent()Lorg/eclipse/jdt/core/IJavaElement;

    move-result-object v1

    check-cast v1, Lorg/eclipse/jdt/internal/core/Openable;

    iput-object v1, p0, Lorg/eclipse/jdt/internal/core/DeltaProcessor;->currentElement:Lorg/eclipse/jdt/internal/core/Openable;

    :cond_3
    invoke-interface {v0, p1}, Lorg/eclipse/core/runtime/IPath;->isPrefixOf(Lorg/eclipse/core/runtime/IPath;)Z

    move-result v0

    if-eqz v0, :cond_4

    return-void

    :cond_4
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/DeltaProcessor;->currentElement:Lorg/eclipse/jdt/internal/core/Openable;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/core/JavaElement;->getParent()Lorg/eclipse/jdt/core/IJavaElement;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jdt/internal/core/Openable;

    iput-object v0, p0, Lorg/eclipse/jdt/internal/core/DeltaProcessor;->currentElement:Lorg/eclipse/jdt/internal/core/Openable;

    goto :goto_0
.end method

.method private processResourceDelta(Lorg/eclipse/core/resources/IResourceDelta;)Lorg/eclipse/jdt/core/IJavaElementDelta;
    .locals 10

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/DeltaProcessor;->manager:Lorg/eclipse/jdt/internal/core/JavaModelManager;

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/core/JavaModelManager;->getJavaModel()Lorg/eclipse/jdt/internal/core/JavaModel;

    move-result-object v1

    invoke-interface {v1}, Lorg/eclipse/jdt/core/IOpenable;->isOpen()Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_1

    :try_start_1
    invoke-interface {v1, v0}, Lorg/eclipse/jdt/core/IOpenable;->open(Lorg/eclipse/core/runtime/IProgressMonitor;)V
    :try_end_1
    .catch Lorg/eclipse/jdt/core/JavaModelException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto/16 :goto_4

    :catch_0
    move-exception p1

    :try_start_2
    sget-boolean v1, Lorg/eclipse/jdt/internal/core/DeltaProcessor;->VERBOSE:Z

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lorg/eclipse/jdt/core/JavaModelException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_0
    iput-object v0, p0, Lorg/eclipse/jdt/internal/core/DeltaProcessor;->currentDelta:Lorg/eclipse/jdt/internal/core/JavaElementDelta;

    return-object v0

    :cond_1
    :goto_0
    :try_start_3
    iget-object v2, p0, Lorg/eclipse/jdt/internal/core/DeltaProcessor;->state:Lorg/eclipse/jdt/internal/core/DeltaProcessingState;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lorg/eclipse/jdt/internal/core/DeltaProcessingState;->initializeRoots(Z)V

    iput-object v0, p0, Lorg/eclipse/jdt/internal/core/DeltaProcessor;->currentElement:Lorg/eclipse/jdt/internal/core/Openable;

    const/4 v2, 0x7

    const/16 v4, 0x8

    invoke-interface {p1, v2, v4}, Lorg/eclipse/core/resources/IResourceDelta;->getAffectedChildren(II)[Lorg/eclipse/core/resources/IResourceDelta;

    move-result-object p1

    move v2, v3

    :goto_1
    array-length v4, p1

    if-lt v2, v4, :cond_2

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/DeltaProcessor;->resetProjectCaches()V

    iget-object p1, p0, Lorg/eclipse/jdt/internal/core/DeltaProcessor;->currentDelta:Lorg/eclipse/jdt/internal/core/JavaElementDelta;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    iput-object v0, p0, Lorg/eclipse/jdt/internal/core/DeltaProcessor;->currentDelta:Lorg/eclipse/jdt/internal/core/JavaElementDelta;

    return-object p1

    :cond_2
    :try_start_4
    aget-object v4, p1, v2

    invoke-interface {v4}, Lorg/eclipse/core/resources/IResourceDelta;->getResource()Lorg/eclipse/core/resources/IResource;

    move-result-object v5

    move-object v6, v5

    check-cast v6, Lorg/eclipse/core/resources/IProject;

    iget-object v7, p0, Lorg/eclipse/jdt/internal/core/DeltaProcessor;->state:Lorg/eclipse/jdt/internal/core/DeltaProcessingState;

    invoke-interface {v6}, Lorg/eclipse/core/resources/IProject;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lorg/eclipse/jdt/internal/core/DeltaProcessingState;->findJavaProject(Ljava/lang/String;)Lorg/eclipse/jdt/core/IJavaProject;

    move-result-object v7

    if-eqz v7, :cond_3

    const/4 v7, 0x1

    goto :goto_2

    :cond_3
    move v7, v3

    :goto_2
    invoke-static {v6}, Lorg/eclipse/jdt/internal/core/JavaProject;->hasJavaNature(Lorg/eclipse/core/resources/IProject;)Z

    move-result v6

    const/4 v8, -0x1

    if-nez v7, :cond_4

    if-nez v6, :cond_4

    move-object v9, v0

    move v5, v8

    goto :goto_3

    :cond_4
    invoke-direct {p0, v5}, Lorg/eclipse/jdt/internal/core/DeltaProcessor;->externalPath(Lorg/eclipse/core/resources/IResource;)Lorg/eclipse/core/runtime/IPath;

    move-result-object v5

    invoke-interface {v4}, Lorg/eclipse/core/resources/IResourceDelta;->getKind()I

    move-result v9

    invoke-direct {p0, v5, v9}, Lorg/eclipse/jdt/internal/core/DeltaProcessor;->enclosingRootInfo(Lorg/eclipse/core/runtime/IPath;I)Lorg/eclipse/jdt/internal/core/DeltaProcessor$RootInfo;

    move-result-object v9

    if-eqz v9, :cond_5

    invoke-virtual {v9, v5}, Lorg/eclipse/jdt/internal/core/DeltaProcessor$RootInfo;->isRootOfProject(Lorg/eclipse/core/runtime/IPath;)Z

    move-result v5

    if-eqz v5, :cond_5

    const/4 v5, 0x3

    goto :goto_3

    :cond_5
    const/4 v5, 0x2

    :goto_3
    invoke-direct {p0, v4, v5, v9, v0}, Lorg/eclipse/jdt/internal/core/DeltaProcessor;->traverseDelta(Lorg/eclipse/core/resources/IResourceDelta;ILorg/eclipse/jdt/internal/core/DeltaProcessor$RootInfo;Lorg/eclipse/jdt/internal/core/DeltaProcessor$OutputsInfo;)V

    if-eq v5, v8, :cond_6

    if-eq v7, v6, :cond_7

    invoke-interface {v4}, Lorg/eclipse/core/resources/IResourceDelta;->getKind()I

    move-result v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    const/4 v6, 0x4

    if-ne v5, v6, :cond_7

    :cond_6
    :try_start_5
    invoke-direct {p0, v1, v4}, Lorg/eclipse/jdt/internal/core/DeltaProcessor;->nonJavaResourcesChanged(Lorg/eclipse/jdt/internal/core/Openable;Lorg/eclipse/core/resources/IResourceDelta;)V
    :try_end_5
    .catch Lorg/eclipse/jdt/core/JavaModelException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :catch_1
    :cond_7
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :goto_4
    iput-object v0, p0, Lorg/eclipse/jdt/internal/core/DeltaProcessor;->currentDelta:Lorg/eclipse/jdt/internal/core/JavaElementDelta;

    throw p1
.end method

.method private readRawClasspath(Lorg/eclipse/jdt/internal/core/JavaProject;)V
    .locals 2

    :try_start_0
    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/core/JavaProject;->getPerProjectInfo()Lorg/eclipse/jdt/internal/core/JavaModelManager$PerProjectInfo;

    move-result-object v0

    iget-boolean v1, v0, Lorg/eclipse/jdt/internal/core/JavaModelManager$PerProjectInfo;->writtingRawClasspath:Z

    if-nez v1, :cond_0

    invoke-virtual {v0, p1}, Lorg/eclipse/jdt/internal/core/JavaModelManager$PerProjectInfo;->readAndCacheClasspath(Lorg/eclipse/jdt/internal/core/JavaProject;)[[Lorg/eclipse/jdt/core/IClasspathEntry;
    :try_end_0
    .catch Lorg/eclipse/jdt/core/JavaModelException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    sget-boolean v0, Lorg/eclipse/jdt/internal/core/DeltaProcessor;->VERBOSE:Z

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lorg/eclipse/jdt/core/JavaModelException;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method private removeFromParentInfo(Lorg/eclipse/jdt/internal/core/Openable;)V
    .locals 2

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/core/JavaElement;->getParent()Lorg/eclipse/jdt/core/IJavaElement;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jdt/internal/core/Openable;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/core/Openable;->isOpen()Z

    move-result v1

    if-eqz v1, :cond_0

    :try_start_0
    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/core/JavaElement;->getElementInfo()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jdt/internal/core/OpenableElementInfo;

    invoke-virtual {v0, p1}, Lorg/eclipse/jdt/internal/core/OpenableElementInfo;->removeChild(Lorg/eclipse/jdt/core/IJavaElement;)V
    :try_end_0
    .catch Lorg/eclipse/jdt/core/JavaModelException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method private rootInfo(Lorg/eclipse/core/runtime/IPath;I)Lorg/eclipse/jdt/internal/core/DeltaProcessor$RootInfo;
    .locals 1

    const/4 v0, 0x2

    if-ne p2, v0, :cond_0

    iget-object p2, p0, Lorg/eclipse/jdt/internal/core/DeltaProcessor;->state:Lorg/eclipse/jdt/internal/core/DeltaProcessingState;

    iget-object p2, p2, Lorg/eclipse/jdt/internal/core/DeltaProcessingState;->oldRoots:Ljava/util/Map;

    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/eclipse/jdt/internal/core/DeltaProcessor$RootInfo;

    return-object p1

    :cond_0
    iget-object p2, p0, Lorg/eclipse/jdt/internal/core/DeltaProcessor;->state:Lorg/eclipse/jdt/internal/core/DeltaProcessingState;

    iget-object p2, p2, Lorg/eclipse/jdt/internal/core/DeltaProcessingState;->roots:Ljava/util/Map;

    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/eclipse/jdt/internal/core/DeltaProcessor$RootInfo;

    return-object p1
.end method

.method private startDeltas()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/eclipse/jdt/internal/core/DeltaProcessor;->isFiring:Z

    return-void
.end method

.method private stopDeltas()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/eclipse/jdt/internal/core/DeltaProcessor;->isFiring:Z

    return-void
.end method

.method private traverseDelta(Lorg/eclipse/core/resources/IResourceDelta;ILorg/eclipse/jdt/internal/core/DeltaProcessor$RootInfo;Lorg/eclipse/jdt/internal/core/DeltaProcessor$OutputsInfo;)V
    .locals 20

    move-object/from16 v0, p0

    move/from16 v1, p2

    move-object/from16 v2, p3

    invoke-interface/range {p1 .. p1}, Lorg/eclipse/core/resources/IResourceDelta;->getResource()Lorg/eclipse/core/resources/IResource;

    move-result-object v3

    iget-object v4, v0, Lorg/eclipse/jdt/internal/core/DeltaProcessor;->currentElement:Lorg/eclipse/jdt/internal/core/Openable;

    if-nez v4, :cond_0

    if-eqz v2, :cond_0

    iget-object v4, v2, Lorg/eclipse/jdt/internal/core/DeltaProcessor$RootInfo;->project:Lorg/eclipse/jdt/internal/core/JavaProject;

    iput-object v4, v0, Lorg/eclipse/jdt/internal/core/DeltaProcessor;->currentElement:Lorg/eclipse/jdt/internal/core/Openable;

    :cond_0
    instance-of v4, v3, Lorg/eclipse/core/resources/IProject;

    const/4 v6, 0x3

    const/4 v8, 0x0

    if-eqz v4, :cond_2

    iput-object v8, v0, Lorg/eclipse/jdt/internal/core/DeltaProcessor;->sourceElementParserCache:Lorg/eclipse/jdt/internal/compiler/SourceElementParser;

    if-ne v1, v6, :cond_1

    move-object/from16 v9, p1

    const/4 v10, 0x2

    goto :goto_0

    :cond_1
    move-object/from16 v9, p1

    move v10, v1

    :goto_0
    invoke-virtual {v0, v9, v10, v2}, Lorg/eclipse/jdt/internal/core/DeltaProcessor;->updateCurrentDeltaAndIndex(Lorg/eclipse/core/resources/IResourceDelta;ILorg/eclipse/jdt/internal/core/DeltaProcessor$RootInfo;)Z

    move-result v10

    goto :goto_1

    :cond_2
    move-object/from16 v9, p1

    if-eqz v2, :cond_3

    invoke-virtual/range {p0 .. p3}, Lorg/eclipse/jdt/internal/core/DeltaProcessor;->updateCurrentDeltaAndIndex(Lorg/eclipse/core/resources/IResourceDelta;ILorg/eclipse/jdt/internal/core/DeltaProcessor$RootInfo;)Z

    move-result v10

    goto :goto_1

    :cond_3
    const/4 v10, 0x1

    :goto_1
    if-nez p4, :cond_4

    invoke-direct {v0, v2, v3}, Lorg/eclipse/jdt/internal/core/DeltaProcessor;->outputsInfo(Lorg/eclipse/jdt/internal/core/DeltaProcessor$RootInfo;Lorg/eclipse/core/resources/IResource;)Lorg/eclipse/jdt/internal/core/DeltaProcessor$OutputsInfo;

    move-result-object v11

    goto :goto_2

    :cond_4
    move-object/from16 v11, p4

    :goto_2
    if-eqz v10, :cond_1e

    invoke-interface/range {p1 .. p1}, Lorg/eclipse/core/resources/IResourceDelta;->getAffectedChildren()[Lorg/eclipse/core/resources/IResourceDelta;

    move-result-object v9

    array-length v10, v9

    move-object v14, v8

    move-object/from16 v17, v14

    const/4 v13, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x1

    :goto_3
    if-lt v13, v10, :cond_8

    if-eqz v14, :cond_1e

    if-nez v15, :cond_5

    if-eqz v4, :cond_1e

    :cond_5
    invoke-interface {v3}, Lorg/eclipse/core/resources/IResource;->getProject()Lorg/eclipse/core/resources/IProject;

    move-result-object v1

    invoke-static {v1}, Lorg/eclipse/jdt/core/JavaCore;->create(Lorg/eclipse/core/resources/IProject;)Lorg/eclipse/jdt/core/IJavaProject;

    move-result-object v2

    check-cast v2, Lorg/eclipse/jdt/internal/core/JavaProject;

    if-eqz v2, :cond_1e

    invoke-static {v1}, Lorg/eclipse/jdt/internal/core/JavaProject;->hasJavaNature(Lorg/eclipse/core/resources/IProject;)Z

    move-result v1

    if-eqz v1, :cond_1e

    const/4 v12, 0x0

    :goto_4
    if-lt v12, v10, :cond_6

    goto/16 :goto_16

    :cond_6
    aget-object v1, v14, v12

    if-eqz v1, :cond_7

    :try_start_0
    invoke-direct {v0, v2, v1}, Lorg/eclipse/jdt/internal/core/DeltaProcessor;->nonJavaResourcesChanged(Lorg/eclipse/jdt/internal/core/Openable;Lorg/eclipse/core/resources/IResourceDelta;)V
    :try_end_0
    .catch Lorg/eclipse/jdt/core/JavaModelException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_7
    add-int/lit8 v12, v12, 0x1

    goto :goto_4

    :cond_8
    aget-object v7, v9, v13

    invoke-interface {v7}, Lorg/eclipse/core/resources/IResourceDelta;->getResource()Lorg/eclipse/core/resources/IResource;

    move-result-object v12

    invoke-direct {v0, v7, v12}, Lorg/eclipse/jdt/internal/core/DeltaProcessor;->checkSourceAttachmentChange(Lorg/eclipse/core/resources/IResourceDelta;Lorg/eclipse/core/resources/IResource;)V

    invoke-direct {v0, v12}, Lorg/eclipse/jdt/internal/core/DeltaProcessor;->externalPath(Lorg/eclipse/core/resources/IResource;)Lorg/eclipse/core/runtime/IPath;

    move-result-object v8

    invoke-interface {v7}, Lorg/eclipse/core/resources/IResourceDelta;->getKind()I

    move-result v6

    invoke-direct {v0, v8, v6}, Lorg/eclipse/jdt/internal/core/DeltaProcessor;->rootInfo(Lorg/eclipse/core/runtime/IPath;I)Lorg/eclipse/jdt/internal/core/DeltaProcessor$RootInfo;

    move-result-object v5

    if-eqz v5, :cond_9

    invoke-virtual {v5, v8}, Lorg/eclipse/jdt/internal/core/DeltaProcessor$RootInfo;->isRootOfProject(Lorg/eclipse/core/runtime/IPath;)Z

    move-result v18

    if-nez v18, :cond_9

    const/16 v18, 0x0

    goto :goto_5

    :cond_9
    move-object/from16 v18, v5

    :goto_5
    move-object/from16 p4, v9

    if-nez v2, :cond_a

    move-object/from16 v9, v18

    goto :goto_6

    :cond_a
    move-object v9, v2

    :goto_6
    invoke-direct {v0, v12, v6, v1, v9}, Lorg/eclipse/jdt/internal/core/DeltaProcessor;->elementType(Lorg/eclipse/core/resources/IResource;IILorg/eclipse/jdt/internal/core/DeltaProcessor$RootInfo;)I

    move-result v9

    invoke-direct {v0, v2, v11, v12, v9}, Lorg/eclipse/jdt/internal/core/DeltaProcessor;->isResFilteredFromOutput(Lorg/eclipse/jdt/internal/core/DeltaProcessor$RootInfo;Lorg/eclipse/jdt/internal/core/DeltaProcessor$OutputsInfo;Lorg/eclipse/core/resources/IResource;I)Z

    move-result v12

    if-eqz v2, :cond_b

    if-eqz v18, :cond_b

    const/16 v19, 0x1

    goto :goto_7

    :cond_b
    const/16 v19, 0x0

    :goto_7
    if-nez v12, :cond_18

    if-nez v19, :cond_18

    if-nez v2, :cond_c

    move-object/from16 v12, v18

    goto :goto_8

    :cond_c
    move-object v12, v2

    :goto_8
    invoke-direct {v0, v7, v9, v12, v11}, Lorg/eclipse/jdt/internal/core/DeltaProcessor;->traverseDelta(Lorg/eclipse/core/resources/IResourceDelta;ILorg/eclipse/jdt/internal/core/DeltaProcessor$RootInfo;Lorg/eclipse/jdt/internal/core/DeltaProcessor$OutputsInfo;)V

    const/4 v12, -0x1

    if-ne v9, v12, :cond_16

    if-eqz v2, :cond_14

    if-nez v16, :cond_d

    const/4 v8, 0x3

    const/4 v9, 0x0

    goto/16 :goto_15

    :cond_d
    if-nez v17, :cond_13

    iget-object v9, v0, Lorg/eclipse/jdt/internal/core/DeltaProcessor;->currentElement:Lorg/eclipse/jdt/internal/core/Openable;

    if-eqz v9, :cond_f

    iget-object v12, v2, Lorg/eclipse/jdt/internal/core/DeltaProcessor$RootInfo;->project:Lorg/eclipse/jdt/internal/core/JavaProject;

    invoke-virtual {v9}, Lorg/eclipse/jdt/internal/core/JavaElement;->getJavaProject()Lorg/eclipse/jdt/core/IJavaProject;

    move-result-object v9

    invoke-virtual {v12, v9}, Lorg/eclipse/jdt/internal/core/JavaProject;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_e

    goto :goto_a

    :cond_e
    :goto_9
    const/4 v9, 0x2

    goto :goto_b

    :cond_f
    :goto_a
    iget-object v9, v2, Lorg/eclipse/jdt/internal/core/DeltaProcessor$RootInfo;->project:Lorg/eclipse/jdt/internal/core/JavaProject;

    iput-object v9, v0, Lorg/eclipse/jdt/internal/core/DeltaProcessor;->currentElement:Lorg/eclipse/jdt/internal/core/Openable;

    goto :goto_9

    :goto_b
    if-eq v1, v9, :cond_11

    const/4 v12, 0x3

    if-ne v1, v12, :cond_10

    if-eqz v4, :cond_10

    goto :goto_d

    :cond_10
    invoke-direct {v0, v3, v1, v2}, Lorg/eclipse/jdt/internal/core/DeltaProcessor;->createElement(Lorg/eclipse/core/resources/IResource;ILorg/eclipse/jdt/internal/core/DeltaProcessor$RootInfo;)Lorg/eclipse/jdt/internal/core/Openable;

    move-result-object v12

    :goto_c
    move-object/from16 v17, v12

    goto :goto_e

    :cond_11
    :goto_d
    iget-object v12, v2, Lorg/eclipse/jdt/internal/core/DeltaProcessor$RootInfo;->project:Lorg/eclipse/jdt/internal/core/JavaProject;

    goto :goto_c

    :goto_e
    if-nez v17, :cond_12

    const/4 v8, 0x3

    const/4 v9, 0x0

    const/16 v16, 0x0

    goto :goto_15

    :cond_12
    :goto_f
    move-object/from16 v12, v17

    goto :goto_10

    :cond_13
    const/4 v9, 0x2

    goto :goto_f

    :goto_10
    :try_start_1
    invoke-direct {v0, v12, v7}, Lorg/eclipse/jdt/internal/core/DeltaProcessor;->nonJavaResourcesChanged(Lorg/eclipse/jdt/internal/core/Openable;Lorg/eclipse/core/resources/IResourceDelta;)V
    :try_end_1
    .catch Lorg/eclipse/jdt/core/JavaModelException; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    move-object/from16 v17, v12

    goto :goto_11

    :cond_14
    const/4 v9, 0x2

    if-nez v14, :cond_15

    new-array v14, v10, [Lorg/eclipse/core/resources/IResourceDelta;

    :cond_15
    aput-object v7, v14, v13

    goto :goto_11

    :cond_16
    const/4 v9, 0x2

    if-nez v2, :cond_19

    if-nez v18, :cond_19

    if-nez v14, :cond_17

    new-array v14, v10, [Lorg/eclipse/core/resources/IResourceDelta;

    :cond_17
    aput-object v7, v14, v13

    goto :goto_11

    :cond_18
    const/4 v9, 0x2

    const/4 v15, 0x1

    :cond_19
    :goto_11
    if-nez v19, :cond_1a

    if-nez v18, :cond_1b

    if-eqz v5, :cond_1b

    :cond_1a
    const/4 v9, 0x0

    const/4 v12, 0x3

    goto :goto_12

    :cond_1b
    const/4 v9, 0x0

    goto :goto_13

    :goto_12
    invoke-direct {v0, v7, v12, v5, v9}, Lorg/eclipse/jdt/internal/core/DeltaProcessor;->traverseDelta(Lorg/eclipse/core/resources/IResourceDelta;ILorg/eclipse/jdt/internal/core/DeltaProcessor$RootInfo;Lorg/eclipse/jdt/internal/core/DeltaProcessor$OutputsInfo;)V

    :goto_13
    invoke-direct {v0, v8, v6}, Lorg/eclipse/jdt/internal/core/DeltaProcessor;->otherRootsInfo(Lorg/eclipse/core/runtime/IPath;I)Ljava/util/List;

    move-result-object v5

    if-eqz v5, :cond_1c

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_14
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_1d

    :cond_1c
    const/4 v8, 0x3

    goto :goto_15

    :cond_1d
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/eclipse/jdt/internal/core/DeltaProcessor$RootInfo;

    iput-object v9, v0, Lorg/eclipse/jdt/internal/core/DeltaProcessor;->currentElement:Lorg/eclipse/jdt/internal/core/Openable;

    const/4 v8, 0x3

    invoke-direct {v0, v7, v8, v6, v9}, Lorg/eclipse/jdt/internal/core/DeltaProcessor;->traverseDelta(Lorg/eclipse/core/resources/IResourceDelta;ILorg/eclipse/jdt/internal/core/DeltaProcessor$RootInfo;Lorg/eclipse/jdt/internal/core/DeltaProcessor$OutputsInfo;)V

    goto :goto_14

    :goto_15
    add-int/lit8 v13, v13, 0x1

    move v6, v8

    move-object v8, v9

    move-object/from16 v9, p4

    goto/16 :goto_3

    :cond_1e
    :goto_16
    return-void
.end method

.method private updateIndex(Lorg/eclipse/jdt/internal/core/Openable;Lorg/eclipse/core/resources/IResourceDelta;)V
    .locals 8

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/DeltaProcessor;->manager:Lorg/eclipse/jdt/internal/core/JavaModelManager;

    iget-object v0, v0, Lorg/eclipse/jdt/internal/core/JavaModelManager;->indexManager:Lorg/eclipse/jdt/internal/core/search/indexing/IndexManager;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-interface {p1}, Lorg/eclipse/jdt/core/IJavaElement;->getElementType()I

    move-result v1

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eq v1, v2, :cond_19

    const/high16 v4, 0x200000

    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v7, 0x4

    if-eq v1, v5, :cond_b

    if-eq v1, v7, :cond_10

    const/4 v4, 0x5

    const/high16 v5, 0x100000

    if-eq v1, v4, :cond_7

    const/4 v4, 0x6

    if-eq v1, v4, :cond_1

    goto/16 :goto_6

    :cond_1
    invoke-interface {p2}, Lorg/eclipse/core/resources/IResourceDelta;->getResource()Lorg/eclipse/core/resources/IResource;

    move-result-object v1

    check-cast v1, Lorg/eclipse/core/resources/IFile;

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/core/JavaElement;->getJavaProject()Lorg/eclipse/jdt/core/IJavaProject;

    move-result-object v4

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/core/Openable;->getPackageFragmentRoot()Lorg/eclipse/jdt/internal/core/PackageFragmentRoot;

    move-result-object p1

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/core/PackageFragmentRoot;->isExternal()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/core/PackageFragmentRoot;->isArchive()Z

    move-result v6

    if-nez v6, :cond_2

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/core/PackageFragmentRoot;->resource()Lorg/eclipse/core/resources/IResource;

    move-result-object p1

    invoke-interface {p1}, Lorg/eclipse/core/resources/IResource;->getFullPath()Lorg/eclipse/core/runtime/IPath;

    move-result-object p1

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/core/PackageFragmentRoot;->getPath()Lorg/eclipse/core/runtime/IPath;

    move-result-object p1

    :goto_0
    :try_start_0
    invoke-interface {v4}, Lorg/eclipse/jdt/core/IJavaProject;->getOutputLocation()Lorg/eclipse/core/runtime/IPath;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4
    :try_end_0
    .catch Lorg/eclipse/jdt/core/JavaModelException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v4, :cond_3

    goto/16 :goto_6

    :catch_0
    :cond_3
    invoke-interface {p2}, Lorg/eclipse/core/resources/IResourceDelta;->getKind()I

    move-result v4

    if-eq v4, v3, :cond_6

    if-eq v4, v2, :cond_5

    if-eq v4, v7, :cond_4

    goto/16 :goto_6

    :cond_4
    invoke-interface {p2}, Lorg/eclipse/core/resources/IResourceDelta;->getFlags()I

    move-result p2

    and-int/lit16 v2, p2, 0x100

    if-nez v2, :cond_6

    and-int/2addr p2, v5

    if-nez p2, :cond_6

    goto/16 :goto_6

    :cond_5
    invoke-interface {v1}, Lorg/eclipse/core/resources/IFile;->getFullPath()Lorg/eclipse/core/runtime/IPath;

    move-result-object p2

    invoke-interface {p1}, Lorg/eclipse/core/runtime/IPath;->segmentCount()I

    move-result v1

    invoke-static {p2, v1}, Lorg/eclipse/jdt/internal/core/util/Util;->relativePath(Lorg/eclipse/core/runtime/IPath;I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2, p1}, Lorg/eclipse/jdt/internal/core/search/indexing/IndexManager;->remove(Ljava/lang/String;Lorg/eclipse/core/runtime/IPath;)V

    goto/16 :goto_6

    :cond_6
    invoke-virtual {v0, v1, p1}, Lorg/eclipse/jdt/internal/core/search/indexing/IndexManager;->addBinary(Lorg/eclipse/core/resources/IFile;Lorg/eclipse/core/runtime/IPath;)V

    goto/16 :goto_6

    :cond_7
    invoke-interface {p2}, Lorg/eclipse/core/resources/IResourceDelta;->getResource()Lorg/eclipse/core/resources/IResource;

    move-result-object v1

    check-cast v1, Lorg/eclipse/core/resources/IFile;

    invoke-interface {p2}, Lorg/eclipse/core/resources/IResourceDelta;->getKind()I

    move-result v4

    if-eq v4, v3, :cond_a

    if-eq v4, v2, :cond_9

    if-eq v4, v7, :cond_8

    goto/16 :goto_6

    :cond_8
    invoke-interface {p2}, Lorg/eclipse/core/resources/IResourceDelta;->getFlags()I

    move-result p2

    and-int/lit16 v2, p2, 0x100

    if-nez v2, :cond_a

    and-int/2addr p2, v5

    if-nez p2, :cond_a

    goto/16 :goto_6

    :cond_9
    invoke-interface {v1}, Lorg/eclipse/core/resources/IFile;->getFullPath()Lorg/eclipse/core/runtime/IPath;

    move-result-object p1

    invoke-static {p1, v3}, Lorg/eclipse/jdt/internal/core/util/Util;->relativePath(Lorg/eclipse/core/runtime/IPath;I)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v1}, Lorg/eclipse/core/resources/IFile;->getProject()Lorg/eclipse/core/resources/IProject;

    move-result-object p2

    invoke-interface {p2}, Lorg/eclipse/core/resources/IProject;->getFullPath()Lorg/eclipse/core/runtime/IPath;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lorg/eclipse/jdt/internal/core/search/indexing/IndexManager;->remove(Ljava/lang/String;Lorg/eclipse/core/runtime/IPath;)V

    iget-object p1, p0, Lorg/eclipse/jdt/internal/core/DeltaProcessor;->manager:Lorg/eclipse/jdt/internal/core/JavaModelManager;

    invoke-virtual {p1, v1, v3}, Lorg/eclipse/jdt/internal/core/JavaModelManager;->secondaryTypesRemoving(Lorg/eclipse/core/resources/IFile;Z)V

    goto/16 :goto_6

    :cond_a
    invoke-interface {v1}, Lorg/eclipse/core/resources/IFile;->getProject()Lorg/eclipse/core/resources/IProject;

    move-result-object p2

    invoke-interface {p2}, Lorg/eclipse/core/resources/IProject;->getFullPath()Lorg/eclipse/core/runtime/IPath;

    move-result-object p2

    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/core/DeltaProcessor;->getSourceElementParser(Lorg/eclipse/jdt/internal/core/Openable;)Lorg/eclipse/jdt/internal/compiler/SourceElementParser;

    move-result-object p1

    invoke-virtual {v0, v1, p2, p1}, Lorg/eclipse/jdt/internal/core/search/indexing/IndexManager;->addSource(Lorg/eclipse/core/resources/IFile;Lorg/eclipse/core/runtime/IPath;Lorg/eclipse/jdt/internal/compiler/SourceElementParser;)V

    iget-object p1, p0, Lorg/eclipse/jdt/internal/core/DeltaProcessor;->manager:Lorg/eclipse/jdt/internal/core/JavaModelManager;

    invoke-virtual {p1, v1, v6}, Lorg/eclipse/jdt/internal/core/JavaModelManager;->secondaryTypesRemoving(Lorg/eclipse/core/resources/IFile;Z)V

    goto/16 :goto_6

    :cond_b
    instance-of v1, p1, Lorg/eclipse/jdt/internal/core/JarPackageFragmentRoot;

    if-eqz v1, :cond_f

    check-cast p1, Lorg/eclipse/jdt/internal/core/JarPackageFragmentRoot;

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/core/PackageFragmentRoot;->getPath()Lorg/eclipse/core/runtime/IPath;

    move-result-object v1

    invoke-interface {p2}, Lorg/eclipse/core/resources/IResourceDelta;->getKind()I

    move-result p2

    if-eq p2, v3, :cond_e

    if-eq p2, v2, :cond_d

    if-eq p2, v7, :cond_c

    goto/16 :goto_6

    :cond_c
    invoke-virtual {v0, v1}, Lorg/eclipse/jdt/internal/core/search/indexing/IndexManager;->removeIndex(Lorg/eclipse/core/runtime/IPath;)V

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/core/JavaElement;->getJavaProject()Lorg/eclipse/jdt/core/IJavaProject;

    move-result-object p2

    invoke-interface {p2}, Lorg/eclipse/jdt/core/IJavaProject;->getProject()Lorg/eclipse/core/resources/IProject;

    move-result-object p2

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/core/JarPackageFragmentRoot;->getIndexPath()Ljava/net/URL;

    move-result-object p1

    invoke-virtual {v0, v1, p2, p1}, Lorg/eclipse/jdt/internal/core/search/indexing/IndexManager;->indexLibrary(Lorg/eclipse/core/runtime/IPath;Lorg/eclipse/core/resources/IProject;Ljava/net/URL;)V

    goto/16 :goto_6

    :cond_d
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/eclipse/jdt/internal/core/search/processing/JobManager;->discardJobs(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lorg/eclipse/jdt/internal/core/search/indexing/IndexManager;->removeIndex(Lorg/eclipse/core/runtime/IPath;)V

    goto/16 :goto_6

    :cond_e
    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/core/JavaElement;->getJavaProject()Lorg/eclipse/jdt/core/IJavaProject;

    move-result-object p2

    invoke-interface {p2}, Lorg/eclipse/jdt/core/IJavaProject;->getProject()Lorg/eclipse/core/resources/IProject;

    move-result-object p2

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/core/JarPackageFragmentRoot;->getIndexPath()Ljava/net/URL;

    move-result-object p1

    invoke-virtual {v0, v1, p2, p1}, Lorg/eclipse/jdt/internal/core/search/indexing/IndexManager;->indexLibrary(Lorg/eclipse/core/runtime/IPath;Lorg/eclipse/core/resources/IProject;Ljava/net/URL;)V

    goto/16 :goto_6

    :cond_f
    invoke-interface {p2}, Lorg/eclipse/core/resources/IResourceDelta;->getKind()I

    move-result v0

    if-eq v0, v3, :cond_18

    if-eq v0, v2, :cond_18

    if-ne v0, v7, :cond_10

    invoke-interface {p2}, Lorg/eclipse/core/resources/IResourceDelta;->getFlags()I

    move-result v0

    and-int/2addr v0, v4

    if-eqz v0, :cond_10

    goto/16 :goto_5

    :cond_10
    invoke-interface {p2}, Lorg/eclipse/core/resources/IResourceDelta;->getKind()I

    move-result v0

    if-eq v0, v3, :cond_12

    if-eq v0, v2, :cond_12

    if-eq v0, v7, :cond_11

    goto/16 :goto_6

    :cond_11
    invoke-interface {p2}, Lorg/eclipse/core/resources/IResourceDelta;->getFlags()I

    move-result v0

    and-int/2addr v0, v4

    if-nez v0, :cond_12

    goto/16 :goto_6

    :cond_12
    instance-of v0, p1, Lorg/eclipse/jdt/core/IPackageFragmentRoot;

    if-eqz v0, :cond_13

    check-cast p1, Lorg/eclipse/jdt/internal/core/PackageFragmentRoot;

    sget-object v0, Lorg/eclipse/jdt/core/compiler/CharOperation;->NO_STRINGS:[Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/eclipse/jdt/internal/core/PackageFragmentRoot;->getPackageFragment([Ljava/lang/String;)Lorg/eclipse/jdt/internal/core/PackageFragment;

    move-result-object p1

    :goto_1
    move-object v0, p1

    goto :goto_2

    :cond_13
    check-cast p1, Lorg/eclipse/jdt/core/IPackageFragment;

    goto :goto_1

    :goto_2
    invoke-interface {v0}, Lorg/eclipse/jdt/core/IJavaElement;->getParent()Lorg/eclipse/jdt/core/IJavaElement;

    move-result-object p1

    invoke-interface {p1}, Lorg/eclipse/jdt/core/IJavaElement;->getPath()Lorg/eclipse/core/runtime/IPath;

    move-result-object p1

    invoke-interface {p2}, Lorg/eclipse/core/resources/IResourceDelta;->getKind()I

    move-result v1

    invoke-direct {p0, p1, v1}, Lorg/eclipse/jdt/internal/core/DeltaProcessor;->rootInfo(Lorg/eclipse/core/runtime/IPath;I)Lorg/eclipse/jdt/internal/core/DeltaProcessor$RootInfo;

    move-result-object p1

    if-eqz p1, :cond_14

    iget p1, p1, Lorg/eclipse/jdt/internal/core/DeltaProcessor$RootInfo;->entryKind:I

    if-eq p1, v5, :cond_14

    move v3, v6

    :cond_14
    invoke-interface {p2}, Lorg/eclipse/core/resources/IResourceDelta;->getAffectedChildren()[Lorg/eclipse/core/resources/IResourceDelta;

    move-result-object v1

    array-length v2, v1

    :goto_3
    if-lt v6, v2, :cond_15

    goto :goto_6

    :cond_15
    aget-object p1, v1, v6

    invoke-interface {p1}, Lorg/eclipse/core/resources/IResourceDelta;->getResource()Lorg/eclipse/core/resources/IResource;

    move-result-object p2

    instance-of v4, p2, Lorg/eclipse/core/resources/IFile;

    if-eqz v4, :cond_17

    invoke-interface {p2}, Lorg/eclipse/core/resources/IResource;->getName()Ljava/lang/String;

    move-result-object p2

    if-eqz v3, :cond_16

    invoke-static {p2}, Lorg/eclipse/jdt/internal/core/util/Util;->isJavaLikeFileName(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_17

    invoke-interface {v0, p2}, Lorg/eclipse/jdt/core/IPackageFragment;->getCompilationUnit(Ljava/lang/String;)Lorg/eclipse/jdt/core/ICompilationUnit;

    move-result-object p2

    check-cast p2, Lorg/eclipse/jdt/internal/core/Openable;

    invoke-direct {p0, p2, p1}, Lorg/eclipse/jdt/internal/core/DeltaProcessor;->updateIndex(Lorg/eclipse/jdt/internal/core/Openable;Lorg/eclipse/core/resources/IResourceDelta;)V

    goto :goto_4

    :cond_16
    invoke-static {p2}, Lorg/eclipse/jdt/internal/compiler/util/Util;->isClassFileName(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_17

    invoke-interface {v0, p2}, Lorg/eclipse/jdt/core/IPackageFragment;->getClassFile(Ljava/lang/String;)Lorg/eclipse/jdt/core/IClassFile;

    move-result-object p2

    check-cast p2, Lorg/eclipse/jdt/internal/core/Openable;

    invoke-direct {p0, p2, p1}, Lorg/eclipse/jdt/internal/core/DeltaProcessor;->updateIndex(Lorg/eclipse/jdt/internal/core/Openable;Lorg/eclipse/core/resources/IResourceDelta;)V

    :cond_17
    :goto_4
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    :cond_18
    :goto_5
    check-cast p1, Lorg/eclipse/jdt/internal/core/PackageFragmentRoot;

    sget-object v0, Lorg/eclipse/jdt/core/compiler/CharOperation;->NO_STRINGS:[Ljava/lang/String;

    invoke-direct {p0, p1, v0, p2}, Lorg/eclipse/jdt/internal/core/DeltaProcessor;->updateRootIndex(Lorg/eclipse/jdt/internal/core/PackageFragmentRoot;[Ljava/lang/String;Lorg/eclipse/core/resources/IResourceDelta;)V

    goto :goto_6

    :cond_19
    invoke-interface {p2}, Lorg/eclipse/core/resources/IResourceDelta;->getKind()I

    move-result p2

    if-eq p2, v3, :cond_1b

    if-eq p2, v2, :cond_1a

    goto :goto_6

    :cond_1a
    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/core/JavaElement;->getJavaProject()Lorg/eclipse/jdt/core/IJavaProject;

    move-result-object p1

    invoke-interface {p1}, Lorg/eclipse/jdt/core/IJavaProject;->getProject()Lorg/eclipse/core/resources/IProject;

    move-result-object p1

    invoke-interface {p1}, Lorg/eclipse/core/resources/IProject;->getFullPath()Lorg/eclipse/core/runtime/IPath;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/eclipse/jdt/internal/core/search/indexing/IndexManager;->removeIndexFamily(Lorg/eclipse/core/runtime/IPath;)V

    goto :goto_6

    :cond_1b
    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/core/JavaElement;->getJavaProject()Lorg/eclipse/jdt/core/IJavaProject;

    move-result-object p1

    invoke-interface {p1}, Lorg/eclipse/jdt/core/IJavaProject;->getProject()Lorg/eclipse/core/resources/IProject;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/eclipse/jdt/internal/core/search/indexing/IndexManager;->indexAll(Lorg/eclipse/core/resources/IProject;)V

    :goto_6
    return-void
.end method

.method private updateRootIndex(Lorg/eclipse/jdt/internal/core/PackageFragmentRoot;[Ljava/lang/String;Lorg/eclipse/core/resources/IResourceDelta;)V
    .locals 5

    invoke-virtual {p1, p2}, Lorg/eclipse/jdt/internal/core/PackageFragmentRoot;->getPackageFragment([Ljava/lang/String;)Lorg/eclipse/jdt/internal/core/PackageFragment;

    move-result-object v0

    invoke-direct {p0, v0, p3}, Lorg/eclipse/jdt/internal/core/DeltaProcessor;->updateIndex(Lorg/eclipse/jdt/internal/core/Openable;Lorg/eclipse/core/resources/IResourceDelta;)V

    invoke-interface {p3}, Lorg/eclipse/core/resources/IResourceDelta;->getAffectedChildren()[Lorg/eclipse/core/resources/IResourceDelta;

    move-result-object p3

    array-length v0, p3

    const/4 v1, 0x0

    :goto_0
    if-lt v1, v0, :cond_0

    return-void

    :cond_0
    aget-object v2, p3, v1

    invoke-interface {v2}, Lorg/eclipse/core/resources/IResourceDelta;->getResource()Lorg/eclipse/core/resources/IResource;

    move-result-object v3

    instance-of v4, v3, Lorg/eclipse/core/resources/IFolder;

    if-eqz v4, :cond_1

    invoke-interface {v3}, Lorg/eclipse/core/resources/IResource;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {p2, v3}, Lorg/eclipse/jdt/internal/core/util/Util;->arrayConcat([Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, p1, v3, v2}, Lorg/eclipse/jdt/internal/core/DeltaProcessor;->updateRootIndex(Lorg/eclipse/jdt/internal/core/PackageFragmentRoot;[Ljava/lang/String;Lorg/eclipse/core/resources/IResourceDelta;)V

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private validateClasspaths(Lorg/eclipse/core/resources/IResourceDelta;Ljava/util/Set;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/eclipse/core/resources/IResourceDelta;",
            "Ljava/util/Set<",
            "Lorg/eclipse/core/runtime/IPath;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Lorg/eclipse/core/resources/IResourceDelta;->getResource()Lorg/eclipse/core/resources/IResource;

    move-result-object v0

    .line 2
    invoke-interface {v0}, Lorg/eclipse/core/resources/IResource;->getType()I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eq v1, v2, :cond_9

    const/4 v4, 0x4

    if-eq v1, v4, :cond_1

    const/16 v0, 0x8

    if-eq v1, v0, :cond_0

    goto/16 :goto_2

    .line 3
    :cond_0
    invoke-interface {p1}, Lorg/eclipse/core/resources/IResourceDelta;->getKind()I

    move-result v0

    if-ne v0, v4, :cond_b

    goto/16 :goto_3

    .line 4
    :cond_1
    check-cast v0, Lorg/eclipse/core/resources/IProject;

    .line 5
    invoke-interface {p1}, Lorg/eclipse/core/resources/IResourceDelta;->getKind()I

    move-result v1

    .line 6
    invoke-static {v0}, Lorg/eclipse/jdt/internal/core/JavaProject;->hasJavaNature(Lorg/eclipse/core/resources/IProject;)Z

    move-result v5

    if-eq v1, v2, :cond_7

    const/4 v6, 0x2

    if-eq v1, v6, :cond_6

    if-eq v1, v4, :cond_2

    goto/16 :goto_2

    .line 7
    :cond_2
    invoke-interface {p1}, Lorg/eclipse/core/resources/IResourceDelta;->getFlags()I

    move-result v1

    and-int/lit16 v1, v1, 0x4000

    if-eqz v1, :cond_4

    if-eqz v5, :cond_3

    .line 8
    invoke-static {v0}, Lorg/eclipse/jdt/core/JavaCore;->create(Lorg/eclipse/core/resources/IProject;)Lorg/eclipse/jdt/core/IJavaProject;

    move-result-object v1

    check-cast v1, Lorg/eclipse/jdt/internal/core/JavaProject;

    .line 9
    iget-object v2, p0, Lorg/eclipse/jdt/internal/core/DeltaProcessor;->state:Lorg/eclipse/jdt/internal/core/DeltaProcessingState;

    invoke-virtual {v2, v1}, Lorg/eclipse/jdt/internal/core/DeltaProcessingState;->addClasspathValidation(Lorg/eclipse/jdt/internal/core/JavaProject;)Lorg/eclipse/jdt/internal/core/ClasspathValidation;

    .line 10
    :cond_3
    invoke-interface {v0}, Lorg/eclipse/core/resources/IProject;->getFullPath()Lorg/eclipse/core/runtime/IPath;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 11
    :cond_4
    invoke-interface {p1}, Lorg/eclipse/core/resources/IResourceDelta;->getFlags()I

    move-result v1

    const/high16 v4, 0x80000

    and-int/2addr v1, v4

    if-eqz v1, :cond_8

    .line 12
    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/DeltaProcessor;->state:Lorg/eclipse/jdt/internal/core/DeltaProcessingState;

    invoke-interface {v0}, Lorg/eclipse/core/resources/IProject;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lorg/eclipse/jdt/internal/core/DeltaProcessingState;->findJavaProject(Ljava/lang/String;)Lorg/eclipse/jdt/core/IJavaProject;

    move-result-object v1

    if-eqz v1, :cond_5

    goto :goto_0

    :cond_5
    move v2, v3

    :goto_0
    if-eq v2, v5, :cond_8

    .line 13
    invoke-static {v0}, Lorg/eclipse/jdt/core/JavaCore;->create(Lorg/eclipse/core/resources/IProject;)Lorg/eclipse/jdt/core/IJavaProject;

    move-result-object v1

    check-cast v1, Lorg/eclipse/jdt/internal/core/JavaProject;

    .line 14
    iget-object v2, p0, Lorg/eclipse/jdt/internal/core/DeltaProcessor;->state:Lorg/eclipse/jdt/internal/core/DeltaProcessingState;

    invoke-virtual {v2, v1}, Lorg/eclipse/jdt/internal/core/DeltaProcessingState;->addClasspathValidation(Lorg/eclipse/jdt/internal/core/JavaProject;)Lorg/eclipse/jdt/internal/core/ClasspathValidation;

    .line 15
    invoke-interface {v0}, Lorg/eclipse/core/resources/IProject;->getFullPath()Lorg/eclipse/core/runtime/IPath;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 16
    :cond_6
    invoke-interface {v0}, Lorg/eclipse/core/resources/IProject;->getFullPath()Lorg/eclipse/core/runtime/IPath;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 17
    :cond_7
    invoke-interface {v0}, Lorg/eclipse/core/resources/IProject;->getFullPath()Lorg/eclipse/core/runtime/IPath;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_8
    :goto_1
    move v2, v5

    goto :goto_3

    .line 18
    :cond_9
    check-cast v0, Lorg/eclipse/core/resources/IFile;

    .line 19
    invoke-interface {v0}, Lorg/eclipse/core/resources/IFile;->getName()Ljava/lang/String;

    move-result-object v1

    .line 20
    const-string v4, ".classpath"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    .line 21
    invoke-interface {v0}, Lorg/eclipse/core/resources/IFile;->getFullPath()Lorg/eclipse/core/runtime/IPath;

    move-result-object v1

    invoke-interface {p1}, Lorg/eclipse/core/resources/IResourceDelta;->getKind()I

    move-result v4

    invoke-direct {p0, v1, v4}, Lorg/eclipse/jdt/internal/core/DeltaProcessor;->rootInfo(Lorg/eclipse/core/runtime/IPath;I)Lorg/eclipse/jdt/internal/core/DeltaProcessor$RootInfo;

    move-result-object v1

    if-eqz v1, :cond_b

    iget v1, v1, Lorg/eclipse/jdt/internal/core/DeltaProcessor$RootInfo;->entryKind:I

    if-ne v1, v2, :cond_b

    .line 22
    :cond_a
    invoke-interface {v0}, Lorg/eclipse/core/resources/IFile;->getProject()Lorg/eclipse/core/resources/IProject;

    move-result-object v1

    invoke-static {v1}, Lorg/eclipse/jdt/core/JavaCore;->create(Lorg/eclipse/core/resources/IProject;)Lorg/eclipse/jdt/core/IJavaProject;

    move-result-object v1

    check-cast v1, Lorg/eclipse/jdt/internal/core/JavaProject;

    .line 23
    iget-object v2, p0, Lorg/eclipse/jdt/internal/core/DeltaProcessor;->state:Lorg/eclipse/jdt/internal/core/DeltaProcessingState;

    invoke-virtual {v2, v1}, Lorg/eclipse/jdt/internal/core/DeltaProcessingState;->addClasspathValidation(Lorg/eclipse/jdt/internal/core/JavaProject;)Lorg/eclipse/jdt/internal/core/ClasspathValidation;

    .line 24
    invoke-interface {v0}, Lorg/eclipse/core/resources/IFile;->getProject()Lorg/eclipse/core/resources/IProject;

    move-result-object v0

    invoke-interface {v0}, Lorg/eclipse/core/resources/IProject;->getFullPath()Lorg/eclipse/core/runtime/IPath;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_b
    :goto_2
    move v2, v3

    :goto_3
    if-eqz v2, :cond_d

    .line 25
    invoke-interface {p1}, Lorg/eclipse/core/resources/IResourceDelta;->getAffectedChildren()[Lorg/eclipse/core/resources/IResourceDelta;

    move-result-object p1

    .line 26
    :goto_4
    array-length v0, p1

    if-lt v3, v0, :cond_c

    goto :goto_5

    .line 27
    :cond_c
    aget-object v0, p1, v3

    invoke-direct {p0, v0, p2}, Lorg/eclipse/jdt/internal/core/DeltaProcessor;->validateClasspaths(Lorg/eclipse/core/resources/IResourceDelta;Ljava/util/Set;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    :cond_d
    :goto_5
    return-void
.end method

.method private validateClasspaths(Lorg/eclipse/core/resources/IResourceDelta;)Z
    .locals 14

    .line 28
    new-instance v0, Ljava/util/HashSet;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(I)V

    .line 29
    invoke-direct {p0, p1, v0}, Lorg/eclipse/jdt/internal/core/DeltaProcessor;->validateClasspaths(Lorg/eclipse/core/resources/IResourceDelta;Ljava/util/Set;)V

    .line 30
    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result p1

    const/4 v1, 0x0

    if-nez p1, :cond_5

    .line 31
    invoke-static {}, Lorg/eclipse/core/resources/ResourcesPlugin;->getWorkspace()Lorg/eclipse/core/resources/IWorkspace;

    move-result-object p1

    invoke-interface {p1}, Lorg/eclipse/core/resources/IWorkspace;->getRoot()Lorg/eclipse/core/resources/IWorkspaceRoot;

    move-result-object p1

    .line 32
    invoke-interface {p1}, Lorg/eclipse/core/resources/IWorkspaceRoot;->getProjects()[Lorg/eclipse/core/resources/IProject;

    move-result-object p1

    .line 33
    array-length v2, p1

    move v3, v1

    move v4, v3

    :goto_0
    if-lt v3, v2, :cond_0

    move v1, v4

    goto :goto_4

    .line 34
    :cond_0
    aget-object v5, p1, v3

    .line 35
    invoke-static {v5}, Lorg/eclipse/jdt/core/JavaCore;->create(Lorg/eclipse/core/resources/IProject;)Lorg/eclipse/jdt/core/IJavaProject;

    move-result-object v6

    check-cast v6, Lorg/eclipse/jdt/internal/core/JavaProject;

    .line 36
    :try_start_0
    invoke-interface {v5}, Lorg/eclipse/core/resources/IProject;->getFullPath()Lorg/eclipse/core/runtime/IPath;

    move-result-object v5

    .line 37
    invoke-virtual {v6}, Lorg/eclipse/jdt/internal/core/JavaProject;->getResolvedClasspath()[Lorg/eclipse/jdt/core/IClasspathEntry;

    move-result-object v7

    .line 38
    array-length v8, v7

    move v9, v1

    :goto_1
    if-lt v9, v8, :cond_1

    goto :goto_3

    .line 39
    :cond_1
    aget-object v10, v7, v9

    .line 40
    invoke-interface {v10}, Lorg/eclipse/jdt/core/IClasspathEntry;->getEntryKind()I

    move-result v11

    const/4 v12, 0x1

    if-eq v11, v12, :cond_3

    const/4 v13, 0x2

    if-eq v11, v13, :cond_2

    goto :goto_2

    .line 41
    :cond_2
    invoke-interface {v10}, Lorg/eclipse/jdt/core/IClasspathEntry;->getPath()Lorg/eclipse/core/runtime/IPath;

    move-result-object v10

    invoke-interface {v0, v10}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 42
    iget-object v10, p0, Lorg/eclipse/jdt/internal/core/DeltaProcessor;->state:Lorg/eclipse/jdt/internal/core/DeltaProcessingState;

    invoke-virtual {v10, v6}, Lorg/eclipse/jdt/internal/core/DeltaProcessingState;->addClasspathValidation(Lorg/eclipse/jdt/internal/core/JavaProject;)Lorg/eclipse/jdt/internal/core/ClasspathValidation;

    move v4, v12

    goto :goto_2

    .line 43
    :cond_3
    invoke-interface {v10}, Lorg/eclipse/jdt/core/IClasspathEntry;->getPath()Lorg/eclipse/core/runtime/IPath;

    move-result-object v10

    .line 44
    invoke-interface {v10}, Lorg/eclipse/core/runtime/IPath;->segmentCount()I

    move-result v11

    sub-int/2addr v11, v12

    invoke-interface {v10, v11}, Lorg/eclipse/core/runtime/IPath;->removeLastSegments(I)Lorg/eclipse/core/runtime/IPath;

    move-result-object v10

    .line 45
    invoke-virtual {v10, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_4

    .line 46
    invoke-interface {v0, v10}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 47
    iget-object v10, p0, Lorg/eclipse/jdt/internal/core/DeltaProcessor;->state:Lorg/eclipse/jdt/internal/core/DeltaProcessingState;

    invoke-virtual {v10, v6}, Lorg/eclipse/jdt/internal/core/DeltaProcessingState;->addClasspathValidation(Lorg/eclipse/jdt/internal/core/JavaProject;)Lorg/eclipse/jdt/internal/core/ClasspathValidation;
    :try_end_0
    .catch Lorg/eclipse/jdt/core/JavaModelException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_4
    :goto_2
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    :catch_0
    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_5
    :goto_4
    return v1
.end method


# virtual methods
.method public checkExternalArchiveChanges([Lorg/eclipse/jdt/core/IJavaElement;Lorg/eclipse/core/runtime/IProgressMonitor;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/JavaModelException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0, p2}, Lorg/eclipse/jdt/internal/core/DeltaProcessor;->checkExternalArchiveChanges([Lorg/eclipse/jdt/core/IJavaElement;ZLorg/eclipse/core/runtime/IProgressMonitor;)V

    return-void
.end method

.method public fire(Lorg/eclipse/jdt/core/IJavaElementDelta;I)V
    .locals 4

    iget-boolean v0, p0, Lorg/eclipse/jdt/internal/core/DeltaProcessor;->isFiring:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    sget-boolean v0, Lorg/eclipse/jdt/internal/core/DeltaProcessor;->DEBUG:Z

    if-eqz v0, :cond_1

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "-----------------------------------------------------------------------------------------------------------------------"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_1
    if-nez p1, :cond_2

    iget-object p1, p0, Lorg/eclipse/jdt/internal/core/DeltaProcessor;->javaModelDeltas:Ljava/util/List;

    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/core/DeltaProcessor;->mergeDeltas(Ljava/util/Collection;)Lorg/eclipse/jdt/core/IJavaElementDelta;

    move-result-object p1

    :cond_2
    if-eqz p1, :cond_4

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/DeltaProcessor;->manager:Lorg/eclipse/jdt/internal/core/JavaModelManager;

    iget-object v0, v0, Lorg/eclipse/jdt/internal/core/JavaModelManager;->searchScopes:Ljava/util/WeakHashMap;

    invoke-virtual {v0}, Ljava/util/WeakHashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/DeltaProcessor;->manager:Lorg/eclipse/jdt/internal/core/JavaModelManager;

    iget-object v0, v0, Lorg/eclipse/jdt/internal/core/JavaModelManager;->workspaceScope:Lorg/eclipse/jdt/internal/core/search/JavaWorkspaceScope;

    if-eqz v0, :cond_4

    invoke-virtual {v0, p1, p2}, Lorg/eclipse/jdt/internal/core/search/JavaWorkspaceScope;->processDelta(Lorg/eclipse/jdt/core/IJavaElementDelta;I)V

    goto :goto_1

    :cond_3
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/eclipse/jdt/internal/core/search/AbstractSearchScope;

    invoke-virtual {v1, p1, p2}, Lorg/eclipse/jdt/internal/core/search/AbstractSearchScope;->processDelta(Lorg/eclipse/jdt/core/IJavaElementDelta;I)V

    goto :goto_0

    :cond_4
    :goto_1
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/DeltaProcessor;->state:Lorg/eclipse/jdt/internal/core/DeltaProcessingState;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/DeltaProcessor;->state:Lorg/eclipse/jdt/internal/core/DeltaProcessingState;

    iget-object v2, v1, Lorg/eclipse/jdt/internal/core/DeltaProcessingState;->elementChangedListeners:[Lorg/eclipse/jdt/core/IElementChangedListener;

    iget-object v3, v1, Lorg/eclipse/jdt/internal/core/DeltaProcessingState;->elementChangedListenerMasks:[I

    iget v1, v1, Lorg/eclipse/jdt/internal/core/DeltaProcessingState;->elementChangedListenerCount:I

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p2, :cond_5

    const/4 v0, 0x1

    if-eq p2, v0, :cond_5

    goto :goto_2

    :cond_5
    invoke-direct {p0, p1, v2, v3, v1}, Lorg/eclipse/jdt/internal/core/DeltaProcessor;->firePostChangeDelta(Lorg/eclipse/jdt/core/IJavaElementDelta;[Lorg/eclipse/jdt/core/IElementChangedListener;[II)V

    invoke-direct {p0, v2, v3, v1}, Lorg/eclipse/jdt/internal/core/DeltaProcessor;->fireReconcileDelta([Lorg/eclipse/jdt/core/IElementChangedListener;[II)V

    :goto_2
    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public flush()V
    .locals 1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/eclipse/jdt/internal/core/DeltaProcessor;->javaModelDeltas:Ljava/util/List;

    return-void
.end method

.method public notifyAndFire(Lorg/eclipse/jdt/core/IJavaElementDelta;)V
    .locals 3

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/DeltaProcessor;->state:Lorg/eclipse/jdt/internal/core/DeltaProcessingState;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/DeltaProcessor;->state:Lorg/eclipse/jdt/internal/core/DeltaProcessingState;

    iget-object v2, v1, Lorg/eclipse/jdt/internal/core/DeltaProcessingState;->elementChangedListeners:[Lorg/eclipse/jdt/core/IElementChangedListener;

    iget v1, v1, Lorg/eclipse/jdt/internal/core/DeltaProcessingState;->elementChangedListenerCount:I

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-direct {p0, v2, v1}, Lorg/eclipse/jdt/internal/core/DeltaProcessor;->notifyTypeHierarchies([Lorg/eclipse/jdt/core/IElementChangedListener;I)V

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lorg/eclipse/jdt/internal/core/DeltaProcessor;->fire(Lorg/eclipse/jdt/core/IJavaElementDelta;I)V

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public registerJavaModelDelta(Lorg/eclipse/jdt/core/IJavaElementDelta;)V
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/DeltaProcessor;->javaModelDeltas:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public resetProjectCaches()V
    .locals 4

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/DeltaProcessor;->projectCachesToReset:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lorg/eclipse/jdt/internal/core/JavaModelManager;->getJavaModelManager()Lorg/eclipse/jdt/internal/core/JavaModelManager;

    move-result-object v0

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/core/JavaModelManager;->resetJarTypeCache()V

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/DeltaProcessor;->projectCachesToReset:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/DeltaProcessor;->state:Lorg/eclipse/jdt/internal/core/DeltaProcessingState;

    iget-object v1, v1, Lorg/eclipse/jdt/internal/core/DeltaProcessingState;->projectDependencies:Ljava/util/Map;

    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/DeltaProcessor;->projectCachesToReset:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    return-void

    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jdt/internal/core/JavaProject;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/core/JavaProject;->resetCaches()V

    goto :goto_1

    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/eclipse/jdt/internal/core/JavaProject;

    invoke-virtual {v3}, Lorg/eclipse/jdt/internal/core/JavaProject;->resetCaches()V

    invoke-direct {p0, v3, v1, v2}, Lorg/eclipse/jdt/internal/core/DeltaProcessor;->addDependentProjects(Lorg/eclipse/jdt/core/IJavaProject;Ljava/util/Map;Ljava/util/Set;)V

    goto :goto_0
.end method

.method public resourceChanged(Lorg/eclipse/core/resources/IResourceChangeEvent;)V
    .locals 11

    iget v0, p0, Lorg/eclipse/jdt/internal/core/DeltaProcessor;->overridenEventType:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    invoke-interface {p1}, Lorg/eclipse/core/resources/IResourceChangeEvent;->getType()I

    move-result v0

    :cond_0
    invoke-interface {p1}, Lorg/eclipse/core/resources/IResourceChangeEvent;->getResource()Lorg/eclipse/core/resources/IResource;

    move-result-object v1

    invoke-interface {p1}, Lorg/eclipse/core/resources/IResourceChangeEvent;->getDelta()Lorg/eclipse/core/resources/IResourceDelta;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eq v0, v5, :cond_18

    const-string v6, "org.eclipse.jdt.core.javanature"

    const/4 v7, 0x4

    if-eq v0, v7, :cond_16

    const/16 v1, 0x8

    if-eq v0, v1, :cond_7

    const/16 v2, 0x10

    if-eq v0, v2, :cond_6

    const/16 v2, 0x20

    if-eq v0, v2, :cond_1

    return-void

    :cond_1
    invoke-interface {p1}, Lorg/eclipse/core/resources/IResourceChangeEvent;->getSource()Ljava/lang/Object;

    move-result-object p1

    instance-of v0, p1, Lorg/eclipse/core/resources/IProject;

    if-eqz v0, :cond_2

    new-array v0, v5, [Lorg/eclipse/core/resources/IProject;

    check-cast p1, Lorg/eclipse/core/resources/IProject;

    aput-object p1, v0, v3

    goto :goto_0

    :cond_2
    instance-of v0, p1, Lorg/eclipse/core/resources/IWorkspace;

    if-eqz v0, :cond_3

    check-cast p1, Lorg/eclipse/core/resources/IWorkspace;

    invoke-interface {p1}, Lorg/eclipse/core/resources/IWorkspace;->getRoot()Lorg/eclipse/core/resources/IWorkspaceRoot;

    move-result-object p1

    invoke-interface {p1, v1}, Lorg/eclipse/core/resources/IWorkspaceRoot;->getProjects(I)[Lorg/eclipse/core/resources/IProject;

    move-result-object v0

    goto :goto_0

    :cond_3
    move-object v0, v4

    :goto_0
    invoke-static {}, Lorg/eclipse/jdt/internal/core/JavaModelManager;->getExternalManager()Lorg/eclipse/jdt/internal/core/ExternalFoldersManager;

    move-result-object p1

    invoke-virtual {p1, v0, v4}, Lorg/eclipse/jdt/internal/core/ExternalFoldersManager;->refreshReferences([Lorg/eclipse/core/resources/IProject;Lorg/eclipse/core/runtime/IProgressMonitor;)V

    array-length p1, v0

    new-array p1, p1, [Lorg/eclipse/jdt/core/IJavaProject;

    :goto_1
    array-length v1, v0

    if-lt v3, v1, :cond_5

    :try_start_0
    invoke-direct {p0, p1, v5, v4}, Lorg/eclipse/jdt/internal/core/DeltaProcessor;->checkExternalArchiveChanges([Lorg/eclipse/jdt/core/IJavaElement;ZLorg/eclipse/core/runtime/IProgressMonitor;)V
    :try_end_0
    .catch Lorg/eclipse/jdt/core/JavaModelException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Lorg/eclipse/jdt/core/JavaModelException;->isDoesNotExist()Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "Exception while updating external archives"

    invoke-static {p1, v0}, Lorg/eclipse/jdt/internal/core/util/Util;->log(Ljava/lang/Throwable;Ljava/lang/String;)V

    :cond_4
    :goto_2
    return-void

    :cond_5
    aget-object v1, v0, v3

    invoke-static {v1}, Lorg/eclipse/jdt/core/JavaCore;->create(Lorg/eclipse/core/resources/IProject;)Lorg/eclipse/jdt/core/IJavaProject;

    move-result-object v1

    aput-object v1, p1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_6
    invoke-static {}, Lorg/eclipse/jdt/internal/core/builder/JavaBuilder;->buildFinished()V

    return-void

    :cond_7
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/DeltaProcessor;->state:Lorg/eclipse/jdt/internal/core/DeltaProcessingState;

    invoke-virtual {v0, v3}, Lorg/eclipse/jdt/internal/core/DeltaProcessingState;->initializeRoots(Z)V

    invoke-direct {p0, v2}, Lorg/eclipse/jdt/internal/core/DeltaProcessor;->isAffectedBy(Lorg/eclipse/core/resources/IResourceDelta;)Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-direct {p0, v2}, Lorg/eclipse/jdt/internal/core/DeltaProcessor;->validateClasspaths(Lorg/eclipse/core/resources/IResourceDelta;)Z

    move-result v1

    if-eqz v1, :cond_8

    move v1, v5

    goto :goto_3

    :cond_8
    move v1, v3

    :goto_3
    iget-object v2, p0, Lorg/eclipse/jdt/internal/core/DeltaProcessor;->state:Lorg/eclipse/jdt/internal/core/DeltaProcessingState;

    invoke-virtual {v2}, Lorg/eclipse/jdt/internal/core/DeltaProcessingState;->removeExternalFolderChanges()[Lorg/eclipse/jdt/internal/core/ExternalFolderChange;

    move-result-object v2

    if-eqz v2, :cond_b

    array-length v7, v2

    move v8, v3

    :goto_4
    if-lt v8, v7, :cond_9

    goto :goto_6

    :cond_9
    :try_start_1
    aget-object v9, v2, v8

    invoke-virtual {v9, v3, v4}, Lorg/eclipse/jdt/internal/core/ExternalFolderChange;->updateExternalFoldersIfNecessary(ZLorg/eclipse/core/runtime/IProgressMonitor;)V
    :try_end_1
    .catch Lorg/eclipse/jdt/core/JavaModelException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_5

    :catch_1
    move-exception v9

    invoke-virtual {v9}, Lorg/eclipse/jdt/core/JavaModelException;->isDoesNotExist()Z

    move-result v10

    if-nez v10, :cond_a

    const-string v10, "Exception while updating external folders"

    invoke-static {v9, v10}, Lorg/eclipse/jdt/internal/core/util/Util;->log(Ljava/lang/Throwable;Ljava/lang/String;)V

    :cond_a
    :goto_5
    add-int/lit8 v8, v8, 0x1

    goto :goto_4

    :cond_b
    :goto_6
    iget-object v2, p0, Lorg/eclipse/jdt/internal/core/DeltaProcessor;->state:Lorg/eclipse/jdt/internal/core/DeltaProcessingState;

    invoke-virtual {v2}, Lorg/eclipse/jdt/internal/core/DeltaProcessingState;->removeClasspathValidations()[Lorg/eclipse/jdt/internal/core/ClasspathValidation;

    move-result-object v2

    if-eqz v2, :cond_d

    array-length v7, v2

    move v8, v3

    :goto_7
    if-lt v8, v7, :cond_c

    goto :goto_8

    :cond_c
    aget-object v9, v2, v8

    invoke-virtual {v9}, Lorg/eclipse/jdt/internal/core/ClasspathValidation;->validate()V

    add-int/lit8 v8, v8, 0x1

    goto :goto_7

    :cond_d
    :goto_8
    iget-object v2, p0, Lorg/eclipse/jdt/internal/core/DeltaProcessor;->state:Lorg/eclipse/jdt/internal/core/DeltaProcessingState;

    invoke-virtual {v2}, Lorg/eclipse/jdt/internal/core/DeltaProcessingState;->removeProjectReferenceChanges()Ljava/util/Set;

    move-result-object v2

    if-nez v1, :cond_e

    invoke-interface {v2}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_e

    goto :goto_a

    :cond_e
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_9
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_15

    :try_start_2
    invoke-static {v4}, Lorg/eclipse/jdt/internal/core/JavaProject;->validateCycles(Ljava/util/Map;)V
    :try_end_2
    .catch Lorg/eclipse/jdt/core/JavaModelException; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    :goto_a
    if-eqz v0, :cond_14

    invoke-interface {p1}, Lorg/eclipse/core/resources/IResourceChangeEvent;->getSource()Ljava/lang/Object;

    move-result-object p1

    instance-of v0, p1, Lorg/eclipse/core/resources/IWorkspace;

    if-eqz v0, :cond_f

    check-cast p1, Lorg/eclipse/core/resources/IWorkspace;

    invoke-interface {p1}, Lorg/eclipse/core/resources/IWorkspace;->getRoot()Lorg/eclipse/core/resources/IWorkspaceRoot;

    move-result-object p1

    invoke-interface {p1}, Lorg/eclipse/core/resources/IWorkspaceRoot;->getProjects()[Lorg/eclipse/core/resources/IProject;

    move-result-object v4

    goto :goto_b

    :cond_f
    instance-of v0, p1, Lorg/eclipse/core/resources/IProject;

    if-eqz v0, :cond_10

    new-array v4, v5, [Lorg/eclipse/core/resources/IProject;

    check-cast p1, Lorg/eclipse/core/resources/IProject;

    aput-object p1, v4, v3

    goto :goto_b

    :cond_10
    new-instance v0, Ljava/lang/Exception;

    invoke-direct {v0}, Ljava/lang/Exception;-><init>()V

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Expected to see a workspace or project on the PRE_BUILD resource change but was: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lorg/eclipse/jdt/internal/core/util/Util;->log(Ljava/lang/Throwable;Ljava/lang/String;)V

    :goto_b
    if-eqz v4, :cond_13

    move p1, v3

    :goto_c
    array-length v0, v4

    if-lt p1, v0, :cond_11

    goto :goto_d

    :cond_11
    :try_start_3
    aget-object v0, v4, p1

    invoke-interface {v0}, Lorg/eclipse/core/resources/IProject;->isOpen()Z

    move-result v1

    if-eqz v1, :cond_12

    invoke-interface {v0, v6}, Lorg/eclipse/core/resources/IProject;->hasNature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_12

    invoke-interface {v0}, Lorg/eclipse/core/resources/IProject;->getBuildConfigs()[Lorg/eclipse/core/resources/IBuildConfiguration;

    move-result-object v0

    array-length v1, v0

    if-le v1, v5, :cond_12

    const-string v1, "org.eclipse.jdt.core.javabuilder"

    aget-object v0, v0, v3

    invoke-interface {v0}, Lorg/eclipse/core/resources/IBuildConfiguration;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_12

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/DeltaProcessor;->manager:Lorg/eclipse/jdt/internal/core/JavaModelManager;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/core/JavaModelManager;->resetExternalFilesCache()V
    :try_end_3
    .catch Lorg/eclipse/core/runtime/CoreException; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_d

    :catch_3
    move-exception v0

    const-string v1, "Exception while checking builder configuration ordering"

    invoke-static {v0, v1}, Lorg/eclipse/jdt/internal/core/util/Util;->log(Ljava/lang/Throwable;Ljava/lang/String;)V

    :cond_12
    add-int/lit8 p1, p1, 0x1

    goto :goto_c

    :cond_13
    :goto_d
    invoke-static {}, Lorg/eclipse/jdt/internal/core/builder/JavaBuilder;->buildStarting()V

    :cond_14
    return-void

    :cond_15
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/eclipse/jdt/core/IJavaProject;

    invoke-interface {v1}, Lorg/eclipse/jdt/core/IJavaProject;->getProject()Lorg/eclipse/core/resources/IProject;

    move-result-object v1

    invoke-interface {v1}, Lorg/eclipse/core/resources/IProject;->clearCachedDynamicReferences()V

    goto/16 :goto_9

    :cond_16
    :try_start_4
    invoke-interface {v1}, Lorg/eclipse/core/resources/IResource;->getType()I

    move-result p1

    if-ne p1, v7, :cond_17

    move-object p1, v1

    check-cast p1, Lorg/eclipse/core/resources/IProject;

    invoke-interface {p1, v6}, Lorg/eclipse/core/resources/IProject;->hasNature(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_17

    check-cast v1, Lorg/eclipse/core/resources/IProject;

    invoke-direct {p0, v1}, Lorg/eclipse/jdt/internal/core/DeltaProcessor;->deleting(Lorg/eclipse/core/resources/IProject;)V
    :try_end_4
    .catch Lorg/eclipse/core/runtime/CoreException; {:try_start_4 .. :try_end_4} :catch_4

    :catch_4
    :cond_17
    return-void

    :cond_18
    iget-object p1, p0, Lorg/eclipse/jdt/internal/core/DeltaProcessor;->state:Lorg/eclipse/jdt/internal/core/DeltaProcessingState;

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/core/DeltaProcessingState;->removeExternalElementsToRefresh()Ljava/util/Set;

    move-result-object p1

    invoke-direct {p0, v2}, Lorg/eclipse/jdt/internal/core/DeltaProcessor;->isAffectedBy(Lorg/eclipse/core/resources/IResourceDelta;)Z

    move-result v0

    if-nez v0, :cond_19

    if-eqz p1, :cond_23

    :cond_19
    :try_start_5
    invoke-direct {p0}, Lorg/eclipse/jdt/internal/core/DeltaProcessor;->stopDeltas()V

    invoke-direct {p0, v2}, Lorg/eclipse/jdt/internal/core/DeltaProcessor;->checkProjectsAndClasspathChanges(Lorg/eclipse/core/resources/IResourceDelta;)V

    if-eqz p1, :cond_1a

    invoke-direct {p0, p1, v4}, Lorg/eclipse/jdt/internal/core/DeltaProcessor;->createExternalArchiveDelta(Ljava/util/Set;Lorg/eclipse/core/runtime/IProgressMonitor;)Z

    goto :goto_e

    :catchall_0
    move-exception p1

    goto/16 :goto_12

    :cond_1a
    :goto_e
    iget-object p1, p0, Lorg/eclipse/jdt/internal/core/DeltaProcessor;->state:Lorg/eclipse/jdt/internal/core/DeltaProcessingState;

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/core/DeltaProcessingState;->removeAllClasspathChanges()Ljava/util/Map;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_21

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/DeltaProcessor;->currentDelta:Lorg/eclipse/jdt/internal/core/JavaElementDelta;

    if-eqz v0, :cond_1b

    move v0, v5

    goto :goto_f

    :cond_1b
    move v0, v3

    :goto_f
    invoke-direct {p0}, Lorg/eclipse/jdt/internal/core/DeltaProcessor;->currentDelta()Lorg/eclipse/jdt/internal/core/JavaElementDelta;

    move-result-object v1

    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1c
    :goto_10
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_1e

    iget-object p1, p0, Lorg/eclipse/jdt/internal/core/DeltaProcessor;->state:Lorg/eclipse/jdt/internal/core/DeltaProcessingState;

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/core/DeltaProcessingState;->removeExternalElementsToRefresh()Ljava/util/Set;

    move-result-object p1

    if-eqz p1, :cond_1d

    invoke-direct {p0, p1, v4}, Lorg/eclipse/jdt/internal/core/DeltaProcessor;->createExternalArchiveDelta(Ljava/util/Set;Lorg/eclipse/core/runtime/IProgressMonitor;)Z

    move-result p1

    or-int/2addr v0, p1

    :cond_1d
    if-nez v0, :cond_21

    iput-object v4, p0, Lorg/eclipse/jdt/internal/core/DeltaProcessor;->currentDelta:Lorg/eclipse/jdt/internal/core/JavaElementDelta;

    goto :goto_11

    :cond_1e
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/eclipse/jdt/internal/core/ClasspathChange;

    invoke-virtual {v6, v1, v3}, Lorg/eclipse/jdt/internal/core/ClasspathChange;->generateDelta(Lorg/eclipse/jdt/internal/core/JavaElementDelta;Z)I

    move-result v7

    and-int/lit8 v8, v7, 0x1

    if-eqz v8, :cond_1f

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/DeltaProcessor;->state:Lorg/eclipse/jdt/internal/core/DeltaProcessingState;

    iput-boolean v5, v0, Lorg/eclipse/jdt/internal/core/DeltaProcessingState;->rootsAreStale:Z

    invoke-virtual {v6}, Lorg/eclipse/jdt/internal/core/ClasspathChange;->requestIndexing()V

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/DeltaProcessor;->state:Lorg/eclipse/jdt/internal/core/DeltaProcessingState;

    iget-object v8, v6, Lorg/eclipse/jdt/internal/core/ClasspathChange;->project:Lorg/eclipse/jdt/internal/core/JavaProject;

    invoke-virtual {v0, v8}, Lorg/eclipse/jdt/internal/core/DeltaProcessingState;->addClasspathValidation(Lorg/eclipse/jdt/internal/core/JavaProject;)Lorg/eclipse/jdt/internal/core/ClasspathValidation;

    move v0, v5

    :cond_1f
    and-int/lit8 v8, v7, 0x2

    if-eqz v8, :cond_20

    iget-object v8, v6, Lorg/eclipse/jdt/internal/core/ClasspathChange;->project:Lorg/eclipse/jdt/internal/core/JavaProject;

    invoke-virtual {v8}, Lorg/eclipse/jdt/internal/core/JavaProject;->getProject()Lorg/eclipse/core/resources/IProject;

    move-result-object v8

    invoke-interface {v8}, Lorg/eclipse/core/resources/IProject;->clearCachedDynamicReferences()V

    iget-object v8, p0, Lorg/eclipse/jdt/internal/core/DeltaProcessor;->state:Lorg/eclipse/jdt/internal/core/DeltaProcessingState;

    iget-object v9, v6, Lorg/eclipse/jdt/internal/core/ClasspathChange;->project:Lorg/eclipse/jdt/internal/core/JavaProject;

    invoke-virtual {v8, v9}, Lorg/eclipse/jdt/internal/core/DeltaProcessingState;->addProjectReferenceChange(Lorg/eclipse/jdt/core/IJavaProject;)V

    :cond_20
    and-int/lit8 v7, v7, 0x4

    if-eqz v7, :cond_1c

    iget-object v7, p0, Lorg/eclipse/jdt/internal/core/DeltaProcessor;->state:Lorg/eclipse/jdt/internal/core/DeltaProcessingState;

    iget-object v8, v6, Lorg/eclipse/jdt/internal/core/ClasspathChange;->project:Lorg/eclipse/jdt/internal/core/JavaProject;

    iget-object v6, v6, Lorg/eclipse/jdt/internal/core/ClasspathChange;->oldResolvedClasspath:[Lorg/eclipse/jdt/core/IClasspathEntry;

    invoke-virtual {v7, v8, v6}, Lorg/eclipse/jdt/internal/core/DeltaProcessingState;->addExternalFolderChange(Lorg/eclipse/jdt/internal/core/JavaProject;[Lorg/eclipse/jdt/core/IClasspathEntry;)V

    goto :goto_10

    :cond_21
    :goto_11
    invoke-direct {p0, v2}, Lorg/eclipse/jdt/internal/core/DeltaProcessor;->processResourceDelta(Lorg/eclipse/core/resources/IResourceDelta;)Lorg/eclipse/jdt/core/IJavaElementDelta;

    move-result-object p1

    if-eqz p1, :cond_22

    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/internal/core/DeltaProcessor;->registerJavaModelDelta(Lorg/eclipse/jdt/core/IJavaElementDelta;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :cond_22
    :try_start_6
    iput-object v4, p0, Lorg/eclipse/jdt/internal/core/DeltaProcessor;->sourceElementParserCache:Lorg/eclipse/jdt/internal/compiler/SourceElementParser;

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/core/DeltaProcessor;->startDeltas()V

    invoke-virtual {p0, v4}, Lorg/eclipse/jdt/internal/core/DeltaProcessor;->notifyAndFire(Lorg/eclipse/jdt/core/IJavaElementDelta;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    iget-object p1, p0, Lorg/eclipse/jdt/internal/core/DeltaProcessor;->state:Lorg/eclipse/jdt/internal/core/DeltaProcessingState;

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/core/DeltaProcessingState;->resetOldJavaProjectNames()V

    iput-object v4, p0, Lorg/eclipse/jdt/internal/core/DeltaProcessor;->oldRoots:Ljava/util/Map;

    :cond_23
    return-void

    :catchall_1
    move-exception p1

    goto :goto_13

    :goto_12
    :try_start_7
    iput-object v4, p0, Lorg/eclipse/jdt/internal/core/DeltaProcessor;->sourceElementParserCache:Lorg/eclipse/jdt/internal/compiler/SourceElementParser;

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/core/DeltaProcessor;->startDeltas()V

    throw p1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :goto_13
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/DeltaProcessor;->state:Lorg/eclipse/jdt/internal/core/DeltaProcessingState;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/core/DeltaProcessingState;->resetOldJavaProjectNames()V

    iput-object v4, p0, Lorg/eclipse/jdt/internal/core/DeltaProcessor;->oldRoots:Ljava/util/Map;

    throw p1
.end method

.method public updateCurrentDeltaAndIndex(Lorg/eclipse/core/resources/IResourceDelta;ILorg/eclipse/jdt/internal/core/DeltaProcessor$RootInfo;)Z
    .locals 7

    invoke-interface {p1}, Lorg/eclipse/core/resources/IResourceDelta;->getKind()I

    move-result v0

    const/4 v1, 0x3

    const/4 v2, 0x4

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eq v0, v4, :cond_17

    const/4 v5, 0x0

    const/4 v6, 0x2

    if-eq v0, v6, :cond_10

    if-eq v0, v2, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Lorg/eclipse/core/resources/IResourceDelta;->getFlags()I

    move-result v0

    if-ne p2, v1, :cond_3

    const/high16 v1, 0x200000

    and-int/2addr v1, v0

    if-eqz v1, :cond_3

    iget-object v0, p3, Lorg/eclipse/jdt/internal/core/DeltaProcessor$RootInfo;->rootPath:Lorg/eclipse/core/runtime/IPath;

    iget-object v1, p3, Lorg/eclipse/jdt/internal/core/DeltaProcessor$RootInfo;->project:Lorg/eclipse/jdt/internal/core/JavaProject;

    invoke-direct {p0, v0, v1}, Lorg/eclipse/jdt/internal/core/DeltaProcessor;->oldRootInfo(Lorg/eclipse/core/runtime/IPath;Lorg/eclipse/jdt/internal/core/JavaProject;)Lorg/eclipse/jdt/internal/core/DeltaProcessor$RootInfo;

    move-result-object v0

    if-nez v0, :cond_1

    :goto_0
    return v4

    :cond_1
    invoke-interface {p1}, Lorg/eclipse/core/resources/IResourceDelta;->getResource()Lorg/eclipse/core/resources/IResource;

    move-result-object v0

    invoke-interface {v0}, Lorg/eclipse/core/resources/IResource;->getLocation()Lorg/eclipse/core/runtime/IPath;

    move-result-object v1

    invoke-static {v1, v4}, Lorg/eclipse/jdt/internal/core/JavaModel;->getExternalTarget(Lorg/eclipse/core/runtime/IPath;Z)Ljava/lang/Object;

    move-result-object v1

    invoke-direct {p0, v0, p2, p3}, Lorg/eclipse/jdt/internal/core/DeltaProcessor;->createElement(Lorg/eclipse/core/resources/IResource;ILorg/eclipse/jdt/internal/core/DeltaProcessor$RootInfo;)Lorg/eclipse/jdt/internal/core/Openable;

    move-result-object p2

    invoke-direct {p0, p2, p1}, Lorg/eclipse/jdt/internal/core/DeltaProcessor;->updateIndex(Lorg/eclipse/jdt/internal/core/Openable;Lorg/eclipse/core/resources/IResourceDelta;)V

    if-eqz v1, :cond_2

    invoke-direct {p0, p2, p1, p3}, Lorg/eclipse/jdt/internal/core/DeltaProcessor;->elementAdded(Lorg/eclipse/jdt/internal/core/Openable;Lorg/eclipse/core/resources/IResourceDelta;Lorg/eclipse/jdt/internal/core/DeltaProcessor$RootInfo;)V

    goto :goto_1

    :cond_2
    invoke-direct {p0, p2, p1, p3}, Lorg/eclipse/jdt/internal/core/DeltaProcessor;->elementRemoved(Lorg/eclipse/jdt/internal/core/Openable;Lorg/eclipse/core/resources/IResourceDelta;Lorg/eclipse/jdt/internal/core/DeltaProcessor$RootInfo;)V

    :goto_1
    iget-object p1, p0, Lorg/eclipse/jdt/internal/core/DeltaProcessor;->state:Lorg/eclipse/jdt/internal/core/DeltaProcessingState;

    iget-object p2, p3, Lorg/eclipse/jdt/internal/core/DeltaProcessor$RootInfo;->project:Lorg/eclipse/jdt/internal/core/JavaProject;

    invoke-virtual {p1, p2}, Lorg/eclipse/jdt/internal/core/DeltaProcessingState;->addClasspathValidation(Lorg/eclipse/jdt/internal/core/JavaProject;)Lorg/eclipse/jdt/internal/core/ClasspathValidation;

    goto/16 :goto_6

    :cond_3
    and-int/lit16 v1, v0, 0x100

    if-nez v1, :cond_d

    const/high16 v1, 0x100000

    and-int/2addr v1, v0

    if-eqz v1, :cond_4

    goto/16 :goto_5

    :cond_4
    if-ne p2, v6, :cond_f

    and-int/lit16 v1, v0, 0x4000

    if-eqz v1, :cond_8

    invoke-interface {p1}, Lorg/eclipse/core/resources/IResourceDelta;->getResource()Lorg/eclipse/core/resources/IResource;

    move-result-object v0

    check-cast v0, Lorg/eclipse/core/resources/IProject;

    invoke-direct {p0, v0, p2, p3}, Lorg/eclipse/jdt/internal/core/DeltaProcessor;->createElement(Lorg/eclipse/core/resources/IResource;ILorg/eclipse/jdt/internal/core/DeltaProcessor$RootInfo;)Lorg/eclipse/jdt/internal/core/Openable;

    move-result-object p2

    if-nez p2, :cond_5

    iget-object p2, p0, Lorg/eclipse/jdt/internal/core/DeltaProcessor;->state:Lorg/eclipse/jdt/internal/core/DeltaProcessingState;

    invoke-interface {v0}, Lorg/eclipse/core/resources/IProject;->getFullPath()Lorg/eclipse/core/runtime/IPath;

    move-result-object p3

    invoke-virtual {p2, p3, p1, p0}, Lorg/eclipse/jdt/internal/core/DeltaProcessingState;->updateRoots(Lorg/eclipse/core/runtime/IPath;Lorg/eclipse/core/resources/IResourceDelta;Lorg/eclipse/jdt/internal/core/DeltaProcessor;)V

    return v3

    :cond_5
    invoke-interface {v0}, Lorg/eclipse/core/resources/IProject;->isOpen()Z

    move-result p3

    if-eqz p3, :cond_6

    invoke-static {v0}, Lorg/eclipse/jdt/internal/core/JavaProject;->hasJavaNature(Lorg/eclipse/core/resources/IProject;)Z

    move-result p3

    if-eqz p3, :cond_7

    invoke-direct {p0, p2}, Lorg/eclipse/jdt/internal/core/DeltaProcessor;->addToParentInfo(Lorg/eclipse/jdt/internal/core/Openable;)V

    iget-object p3, p0, Lorg/eclipse/jdt/internal/core/DeltaProcessor;->manager:Lorg/eclipse/jdt/internal/core/JavaModelManager;

    invoke-virtual {p3, v0, v4}, Lorg/eclipse/jdt/internal/core/JavaModelManager;->getPerProjectInfo(Lorg/eclipse/core/resources/IProject;Z)Lorg/eclipse/jdt/internal/core/JavaModelManager$PerProjectInfo;

    move-result-object p3

    invoke-virtual {p3}, Lorg/eclipse/jdt/internal/core/JavaModelManager$PerProjectInfo;->rememberExternalLibTimestamps()V

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/core/DeltaProcessor;->currentDelta()Lorg/eclipse/jdt/internal/core/JavaElementDelta;

    move-result-object p3

    invoke-virtual {p3, p2}, Lorg/eclipse/jdt/internal/core/JavaElementDelta;->opened(Lorg/eclipse/jdt/core/IJavaElement;)V

    iget-object p3, p0, Lorg/eclipse/jdt/internal/core/DeltaProcessor;->state:Lorg/eclipse/jdt/internal/core/DeltaProcessingState;

    invoke-interface {p2}, Lorg/eclipse/jdt/core/IJavaElement;->getPath()Lorg/eclipse/core/runtime/IPath;

    move-result-object v1

    invoke-virtual {p3, v1, p1, p0}, Lorg/eclipse/jdt/internal/core/DeltaProcessingState;->updateRoots(Lorg/eclipse/core/runtime/IPath;Lorg/eclipse/core/resources/IResourceDelta;Lorg/eclipse/jdt/internal/core/DeltaProcessor;)V

    iget-object p1, p0, Lorg/eclipse/jdt/internal/core/DeltaProcessor;->projectCachesToReset:Ljava/util/Set;

    invoke-interface {p1, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lorg/eclipse/jdt/internal/core/DeltaProcessor;->manager:Lorg/eclipse/jdt/internal/core/JavaModelManager;

    iget-object p1, p1, Lorg/eclipse/jdt/internal/core/JavaModelManager;->indexManager:Lorg/eclipse/jdt/internal/core/search/indexing/IndexManager;

    invoke-virtual {p1, v0}, Lorg/eclipse/jdt/internal/core/search/indexing/IndexManager;->indexAll(Lorg/eclipse/core/resources/IProject;)V

    goto :goto_2

    :cond_6
    iget-object p1, p0, Lorg/eclipse/jdt/internal/core/DeltaProcessor;->state:Lorg/eclipse/jdt/internal/core/DeltaProcessingState;

    invoke-interface {v0}, Lorg/eclipse/core/resources/IProject;->getName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Lorg/eclipse/jdt/internal/core/DeltaProcessingState;->findJavaProject(Ljava/lang/String;)Lorg/eclipse/jdt/core/IJavaProject;

    move-result-object p1

    if-eqz p1, :cond_7

    invoke-direct {p0, p2}, Lorg/eclipse/jdt/internal/core/DeltaProcessor;->close(Lorg/eclipse/jdt/internal/core/Openable;)V

    invoke-direct {p0, p2}, Lorg/eclipse/jdt/internal/core/DeltaProcessor;->removeFromParentInfo(Lorg/eclipse/jdt/internal/core/Openable;)V

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/core/DeltaProcessor;->currentDelta()Lorg/eclipse/jdt/internal/core/JavaElementDelta;

    move-result-object p1

    invoke-virtual {p1, p2}, Lorg/eclipse/jdt/internal/core/JavaElementDelta;->closed(Lorg/eclipse/jdt/core/IJavaElement;)V

    iget-object p1, p0, Lorg/eclipse/jdt/internal/core/DeltaProcessor;->manager:Lorg/eclipse/jdt/internal/core/JavaModelManager;

    iget-object p1, p1, Lorg/eclipse/jdt/internal/core/JavaModelManager;->indexManager:Lorg/eclipse/jdt/internal/core/search/indexing/IndexManager;

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/core/JavaElement;->getElementName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/eclipse/jdt/internal/core/search/processing/JobManager;->discardJobs(Ljava/lang/String;)V

    iget-object p1, p0, Lorg/eclipse/jdt/internal/core/DeltaProcessor;->manager:Lorg/eclipse/jdt/internal/core/JavaModelManager;

    iget-object p1, p1, Lorg/eclipse/jdt/internal/core/JavaModelManager;->indexManager:Lorg/eclipse/jdt/internal/core/search/indexing/IndexManager;

    invoke-interface {v0}, Lorg/eclipse/core/resources/IProject;->getFullPath()Lorg/eclipse/core/runtime/IPath;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/eclipse/jdt/internal/core/search/indexing/IndexManager;->removeIndexFamily(Lorg/eclipse/core/runtime/IPath;)V

    :cond_7
    :goto_2
    return v3

    :cond_8
    const/high16 v1, 0x80000

    and-int/2addr v0, v1

    if-eqz v0, :cond_f

    invoke-interface {p1}, Lorg/eclipse/core/resources/IResourceDelta;->getResource()Lorg/eclipse/core/resources/IResource;

    move-result-object v0

    check-cast v0, Lorg/eclipse/core/resources/IProject;

    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/DeltaProcessor;->state:Lorg/eclipse/jdt/internal/core/DeltaProcessingState;

    invoke-interface {v0}, Lorg/eclipse/core/resources/IProject;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/eclipse/jdt/internal/core/DeltaProcessingState;->findJavaProject(Ljava/lang/String;)Lorg/eclipse/jdt/core/IJavaProject;

    move-result-object v1

    if-eqz v1, :cond_9

    move v1, v4

    goto :goto_3

    :cond_9
    move v1, v3

    :goto_3
    invoke-static {v0}, Lorg/eclipse/jdt/internal/core/JavaProject;->hasJavaNature(Lorg/eclipse/core/resources/IProject;)Z

    move-result v2

    if-eq v1, v2, :cond_f

    invoke-direct {p0, v0, p2, p3}, Lorg/eclipse/jdt/internal/core/DeltaProcessor;->createElement(Lorg/eclipse/core/resources/IResource;ILorg/eclipse/jdt/internal/core/DeltaProcessor$RootInfo;)Lorg/eclipse/jdt/internal/core/Openable;

    move-result-object p2

    if-nez p2, :cond_a

    return v3

    :cond_a
    if-eqz v2, :cond_b

    invoke-direct {p0, p2, p1, p3}, Lorg/eclipse/jdt/internal/core/DeltaProcessor;->elementAdded(Lorg/eclipse/jdt/internal/core/Openable;Lorg/eclipse/core/resources/IResourceDelta;Lorg/eclipse/jdt/internal/core/DeltaProcessor$RootInfo;)V

    iget-object p1, p0, Lorg/eclipse/jdt/internal/core/DeltaProcessor;->manager:Lorg/eclipse/jdt/internal/core/JavaModelManager;

    iget-object p1, p1, Lorg/eclipse/jdt/internal/core/JavaModelManager;->indexManager:Lorg/eclipse/jdt/internal/core/search/indexing/IndexManager;

    invoke-virtual {p1, v0}, Lorg/eclipse/jdt/internal/core/search/indexing/IndexManager;->indexAll(Lorg/eclipse/core/resources/IProject;)V

    goto :goto_4

    :cond_b
    invoke-direct {p0, p2, p1, p3}, Lorg/eclipse/jdt/internal/core/DeltaProcessor;->elementRemoved(Lorg/eclipse/jdt/internal/core/Openable;Lorg/eclipse/core/resources/IResourceDelta;Lorg/eclipse/jdt/internal/core/DeltaProcessor$RootInfo;)V

    iget-object p1, p0, Lorg/eclipse/jdt/internal/core/DeltaProcessor;->manager:Lorg/eclipse/jdt/internal/core/JavaModelManager;

    iget-object p1, p1, Lorg/eclipse/jdt/internal/core/JavaModelManager;->indexManager:Lorg/eclipse/jdt/internal/core/search/indexing/IndexManager;

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/core/JavaElement;->getElementName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/eclipse/jdt/internal/core/search/processing/JobManager;->discardJobs(Ljava/lang/String;)V

    iget-object p1, p0, Lorg/eclipse/jdt/internal/core/DeltaProcessor;->manager:Lorg/eclipse/jdt/internal/core/JavaModelManager;

    iget-object p1, p1, Lorg/eclipse/jdt/internal/core/JavaModelManager;->indexManager:Lorg/eclipse/jdt/internal/core/search/indexing/IndexManager;

    invoke-interface {v0}, Lorg/eclipse/core/resources/IProject;->getFullPath()Lorg/eclipse/core/runtime/IPath;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/eclipse/jdt/internal/core/search/indexing/IndexManager;->removeIndexFamily(Lorg/eclipse/core/runtime/IPath;)V

    sget-boolean p1, Lorg/eclipse/jdt/internal/core/builder/JavaBuilder;->DEBUG:Z

    if-eqz p1, :cond_c

    sget-object p1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "Clearing last state for project loosing Java nature: "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_c
    iget-object p1, p0, Lorg/eclipse/jdt/internal/core/DeltaProcessor;->manager:Lorg/eclipse/jdt/internal/core/JavaModelManager;

    invoke-virtual {p1, v0, v5}, Lorg/eclipse/jdt/internal/core/JavaModelManager;->setLastBuiltState(Lorg/eclipse/core/resources/IProject;Ljava/lang/Object;)V

    :goto_4
    return v3

    :cond_d
    :goto_5
    invoke-interface {p1}, Lorg/eclipse/core/resources/IResourceDelta;->getResource()Lorg/eclipse/core/resources/IResource;

    move-result-object v0

    invoke-direct {p0, v0, p2, p3}, Lorg/eclipse/jdt/internal/core/DeltaProcessor;->createElement(Lorg/eclipse/core/resources/IResource;ILorg/eclipse/jdt/internal/core/DeltaProcessor$RootInfo;)Lorg/eclipse/jdt/internal/core/Openable;

    move-result-object p2

    if-nez p2, :cond_e

    return v3

    :cond_e
    invoke-direct {p0, p2, p1}, Lorg/eclipse/jdt/internal/core/DeltaProcessor;->updateIndex(Lorg/eclipse/jdt/internal/core/Openable;Lorg/eclipse/core/resources/IResourceDelta;)V

    invoke-direct {p0, p2}, Lorg/eclipse/jdt/internal/core/DeltaProcessor;->contentChanged(Lorg/eclipse/jdt/internal/core/Openable;)V

    :cond_f
    :goto_6
    return v4

    :cond_10
    invoke-interface {p1}, Lorg/eclipse/core/resources/IResourceDelta;->getResource()Lorg/eclipse/core/resources/IResource;

    move-result-object v0

    invoke-direct {p0, v0, p2, p3}, Lorg/eclipse/jdt/internal/core/DeltaProcessor;->createElement(Lorg/eclipse/core/resources/IResource;ILorg/eclipse/jdt/internal/core/DeltaProcessor$RootInfo;)Lorg/eclipse/jdt/internal/core/Openable;

    move-result-object v6

    if-nez v6, :cond_12

    iget-object p2, p0, Lorg/eclipse/jdt/internal/core/DeltaProcessor;->state:Lorg/eclipse/jdt/internal/core/DeltaProcessingState;

    invoke-interface {v0}, Lorg/eclipse/core/resources/IResource;->getFullPath()Lorg/eclipse/core/runtime/IPath;

    move-result-object v0

    invoke-virtual {p2, v0, p1, p0}, Lorg/eclipse/jdt/internal/core/DeltaProcessingState;->updateRoots(Lorg/eclipse/core/runtime/IPath;Lorg/eclipse/core/resources/IResourceDelta;Lorg/eclipse/jdt/internal/core/DeltaProcessor;)V

    if-eqz p3, :cond_11

    iget-object p1, p3, Lorg/eclipse/jdt/internal/core/DeltaProcessor$RootInfo;->inclusionPatterns:[[C

    if-eqz p1, :cond_11

    return v4

    :cond_11
    return v3

    :cond_12
    invoke-direct {p0, v6, p1}, Lorg/eclipse/jdt/internal/core/DeltaProcessor;->updateIndex(Lorg/eclipse/jdt/internal/core/Openable;Lorg/eclipse/core/resources/IResourceDelta;)V

    invoke-direct {p0, v6, p1, p3}, Lorg/eclipse/jdt/internal/core/DeltaProcessor;->elementRemoved(Lorg/eclipse/jdt/internal/core/Openable;Lorg/eclipse/core/resources/IResourceDelta;Lorg/eclipse/jdt/internal/core/DeltaProcessor$RootInfo;)V

    if-ne p2, v1, :cond_13

    iget-object p1, p0, Lorg/eclipse/jdt/internal/core/DeltaProcessor;->state:Lorg/eclipse/jdt/internal/core/DeltaProcessingState;

    iget-object p3, p3, Lorg/eclipse/jdt/internal/core/DeltaProcessor$RootInfo;->project:Lorg/eclipse/jdt/internal/core/JavaProject;

    invoke-virtual {p1, p3}, Lorg/eclipse/jdt/internal/core/DeltaProcessingState;->addClasspathValidation(Lorg/eclipse/jdt/internal/core/JavaProject;)Lorg/eclipse/jdt/internal/core/ClasspathValidation;

    :cond_13
    invoke-interface {v0}, Lorg/eclipse/core/resources/IResource;->getType()I

    move-result p1

    if-ne p1, v2, :cond_15

    sget-boolean p1, Lorg/eclipse/jdt/internal/core/builder/JavaBuilder;->DEBUG:Z

    if-eqz p1, :cond_14

    sget-object p1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance p3, Ljava/lang/StringBuilder;

    const-string v1, "Clearing last state for removed project : "

    invoke-direct {p3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_14
    iget-object p1, p0, Lorg/eclipse/jdt/internal/core/DeltaProcessor;->manager:Lorg/eclipse/jdt/internal/core/JavaModelManager;

    check-cast v0, Lorg/eclipse/core/resources/IProject;

    invoke-virtual {p1, v0, v5}, Lorg/eclipse/jdt/internal/core/JavaModelManager;->setLastBuiltState(Lorg/eclipse/core/resources/IProject;Ljava/lang/Object;)V

    iget-object p1, p0, Lorg/eclipse/jdt/internal/core/DeltaProcessor;->manager:Lorg/eclipse/jdt/internal/core/JavaModelManager;

    iget-object p1, p1, Lorg/eclipse/jdt/internal/core/JavaModelManager;->previousSessionContainers:Ljava/util/HashMap;

    invoke-virtual {p1, v6}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_15
    if-ne p2, v2, :cond_16

    return v4

    :cond_16
    return v3

    :cond_17
    invoke-interface {p1}, Lorg/eclipse/core/resources/IResourceDelta;->getResource()Lorg/eclipse/core/resources/IResource;

    move-result-object v0

    invoke-direct {p0, v0, p2, p3}, Lorg/eclipse/jdt/internal/core/DeltaProcessor;->createElement(Lorg/eclipse/core/resources/IResource;ILorg/eclipse/jdt/internal/core/DeltaProcessor$RootInfo;)Lorg/eclipse/jdt/internal/core/Openable;

    move-result-object v5

    if-nez v5, :cond_19

    iget-object p2, p0, Lorg/eclipse/jdt/internal/core/DeltaProcessor;->state:Lorg/eclipse/jdt/internal/core/DeltaProcessingState;

    invoke-interface {v0}, Lorg/eclipse/core/resources/IResource;->getFullPath()Lorg/eclipse/core/runtime/IPath;

    move-result-object v0

    invoke-virtual {p2, v0, p1, p0}, Lorg/eclipse/jdt/internal/core/DeltaProcessingState;->updateRoots(Lorg/eclipse/core/runtime/IPath;Lorg/eclipse/core/resources/IResourceDelta;Lorg/eclipse/jdt/internal/core/DeltaProcessor;)V

    if-eqz p3, :cond_18

    iget-object p1, p3, Lorg/eclipse/jdt/internal/core/DeltaProcessor$RootInfo;->inclusionPatterns:[[C

    if-eqz p1, :cond_18

    return v4

    :cond_18
    return v3

    :cond_19
    invoke-direct {p0, v5, p1}, Lorg/eclipse/jdt/internal/core/DeltaProcessor;->updateIndex(Lorg/eclipse/jdt/internal/core/Openable;Lorg/eclipse/core/resources/IResourceDelta;)V

    invoke-direct {p0, v5, p1, p3}, Lorg/eclipse/jdt/internal/core/DeltaProcessor;->elementAdded(Lorg/eclipse/jdt/internal/core/Openable;Lorg/eclipse/core/resources/IResourceDelta;Lorg/eclipse/jdt/internal/core/DeltaProcessor$RootInfo;)V

    if-ne p2, v1, :cond_1a

    iget-object p1, p0, Lorg/eclipse/jdt/internal/core/DeltaProcessor;->state:Lorg/eclipse/jdt/internal/core/DeltaProcessingState;

    iget-object p3, p3, Lorg/eclipse/jdt/internal/core/DeltaProcessor$RootInfo;->project:Lorg/eclipse/jdt/internal/core/JavaProject;

    invoke-virtual {p1, p3}, Lorg/eclipse/jdt/internal/core/DeltaProcessingState;->addClasspathValidation(Lorg/eclipse/jdt/internal/core/JavaProject;)Lorg/eclipse/jdt/internal/core/ClasspathValidation;

    :cond_1a
    if-ne p2, v2, :cond_1b

    return v4

    :cond_1b
    return v3
.end method

.method public updateJavaModel(Lorg/eclipse/jdt/core/IJavaElementDelta;)V
    .locals 3

    if-nez p1, :cond_1

    iget-object p1, p0, Lorg/eclipse/jdt/internal/core/DeltaProcessor;->javaModelDeltas:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 p1, 0x0

    :goto_0
    if-lt p1, v0, :cond_0

    goto :goto_1

    :cond_0
    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/DeltaProcessor;->javaModelDeltas:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/eclipse/jdt/core/IJavaElementDelta;

    iget-object v2, p0, Lorg/eclipse/jdt/internal/core/DeltaProcessor;->modelUpdater:Lorg/eclipse/jdt/internal/core/ModelUpdater;

    invoke-virtual {v2, v1}, Lorg/eclipse/jdt/internal/core/ModelUpdater;->processJavaDelta(Lorg/eclipse/jdt/core/IJavaElementDelta;)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/DeltaProcessor;->modelUpdater:Lorg/eclipse/jdt/internal/core/ModelUpdater;

    invoke-virtual {v0, p1}, Lorg/eclipse/jdt/internal/core/ModelUpdater;->processJavaDelta(Lorg/eclipse/jdt/core/IJavaElementDelta;)V

    :goto_1
    return-void
.end method
