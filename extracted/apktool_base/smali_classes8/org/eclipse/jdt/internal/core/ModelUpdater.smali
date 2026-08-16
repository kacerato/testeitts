.class public Lorg/eclipse/jdt/internal/core/ModelUpdater;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field projectsToUpdate:Ljava/util/HashSet;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lorg/eclipse/jdt/internal/core/ModelUpdater;->projectsToUpdate:Ljava/util/HashSet;

    return-void
.end method

.method public static close(Lorg/eclipse/jdt/internal/core/Openable;)V
    .locals 0

    :try_start_0
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/JavaElement;->close()V
    :try_end_0
    .catch Lorg/eclipse/jdt/core/JavaModelException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method


# virtual methods
.method public addToParentInfo(Lorg/eclipse/jdt/internal/core/Openable;)V
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

    invoke-virtual {v0, p1}, Lorg/eclipse/jdt/internal/core/OpenableElementInfo;->addChild(Lorg/eclipse/jdt/core/IJavaElement;)V
    :try_end_0
    .catch Lorg/eclipse/jdt/core/JavaModelException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method public elementAdded(Lorg/eclipse/jdt/internal/core/Openable;)V
    .locals 2

    invoke-interface {p1}, Lorg/eclipse/jdt/core/IJavaElement;->getElementType()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/internal/core/ModelUpdater;->addToParentInfo(Lorg/eclipse/jdt/internal/core/Openable;)V

    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/ModelUpdater;->projectsToUpdate:Ljava/util/HashSet;

    invoke-virtual {v1, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/internal/core/ModelUpdater;->addToParentInfo(Lorg/eclipse/jdt/internal/core/Openable;)V

    invoke-static {p1}, Lorg/eclipse/jdt/internal/core/ModelUpdater;->close(Lorg/eclipse/jdt/internal/core/Openable;)V

    :goto_0
    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/core/JavaElement;->getJavaProject()Lorg/eclipse/jdt/core/IJavaProject;

    move-result-object p1

    check-cast p1, Lorg/eclipse/jdt/internal/core/JavaProject;

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/core/JavaProject;->resetCaches()V

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/ModelUpdater;->projectsToUpdate:Ljava/util/HashSet;

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/core/JavaElement;->getJavaProject()Lorg/eclipse/jdt/core/IJavaProject;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :goto_1
    return-void
.end method

.method public elementChanged(Lorg/eclipse/jdt/internal/core/Openable;)V
    .locals 0

    invoke-static {p1}, Lorg/eclipse/jdt/internal/core/ModelUpdater;->close(Lorg/eclipse/jdt/internal/core/Openable;)V

    return-void
.end method

.method public elementRemoved(Lorg/eclipse/jdt/internal/core/Openable;)V
    .locals 3

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/core/Openable;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Lorg/eclipse/jdt/internal/core/ModelUpdater;->close(Lorg/eclipse/jdt/internal/core/Openable;)V

    :cond_0
    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/internal/core/ModelUpdater;->removeFromParentInfo(Lorg/eclipse/jdt/internal/core/Openable;)V

    invoke-interface {p1}, Lorg/eclipse/jdt/core/IJavaElement;->getElementType()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_4

    const/4 v2, 0x2

    if-eq v0, v2, :cond_3

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/core/JavaElement;->getJavaProject()Lorg/eclipse/jdt/core/IJavaProject;

    move-result-object p1

    check-cast p1, Lorg/eclipse/jdt/internal/core/JavaProject;

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/core/JavaProject;->resetCaches()V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/ModelUpdater;->projectsToUpdate:Ljava/util/HashSet;

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/core/JavaElement;->getJavaProject()Lorg/eclipse/jdt/core/IJavaProject;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    invoke-static {}, Lorg/eclipse/jdt/internal/core/JavaModelManager;->getJavaModelManager()Lorg/eclipse/jdt/internal/core/JavaModelManager;

    move-result-object v0

    check-cast p1, Lorg/eclipse/jdt/internal/core/JavaProject;

    invoke-virtual {v0, p1, v1}, Lorg/eclipse/jdt/internal/core/JavaModelManager;->removePerProjectInfo(Lorg/eclipse/jdt/internal/core/JavaProject;Z)V

    invoke-virtual {v0, p1}, Lorg/eclipse/jdt/internal/core/JavaModelManager;->containerRemove(Lorg/eclipse/jdt/core/IJavaProject;)V

    goto :goto_0

    :cond_4
    invoke-static {}, Lorg/eclipse/jdt/internal/core/JavaModelManager;->getIndexManager()Lorg/eclipse/jdt/internal/core/search/indexing/IndexManager;

    move-result-object p1

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/core/search/indexing/IndexManager;->reset()V

    :goto_0
    return-void
.end method

.method public processJavaDelta(Lorg/eclipse/jdt/core/IJavaElementDelta;)V
    .locals 1

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0, p1, v0, v0}, Lorg/eclipse/jdt/internal/core/ModelUpdater;->traverseDelta(Lorg/eclipse/jdt/core/IJavaElementDelta;Lorg/eclipse/jdt/core/IPackageFragmentRoot;Lorg/eclipse/jdt/core/IJavaProject;)V

    iget-object p1, p0, Lorg/eclipse/jdt/internal/core/ModelUpdater;->projectsToUpdate:Ljava/util/HashSet;

    invoke-virtual {p1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/ModelUpdater;->projectsToUpdate:Ljava/util/HashSet;

    return-void

    :cond_0
    :try_start_1
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jdt/internal/core/JavaProject;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/core/JavaProject;->resetCaches()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lorg/eclipse/jdt/internal/core/ModelUpdater;->projectsToUpdate:Ljava/util/HashSet;

    throw p1
.end method

.method public removeFromParentInfo(Lorg/eclipse/jdt/internal/core/Openable;)V
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

.method public traverseDelta(Lorg/eclipse/jdt/core/IJavaElementDelta;Lorg/eclipse/jdt/core/IPackageFragmentRoot;Lorg/eclipse/jdt/core/IJavaProject;)V
    .locals 6

    invoke-interface {p1}, Lorg/eclipse/jdt/core/IJavaElementDelta;->getElement()Lorg/eclipse/jdt/core/IJavaElement;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jdt/internal/core/Openable;

    invoke-interface {v0}, Lorg/eclipse/jdt/core/IJavaElement;->getElementType()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eq v1, v3, :cond_3

    const/4 v5, 0x3

    if-eq v1, v5, :cond_2

    const/4 v5, 0x5

    if-eq v1, v5, :cond_0

    const/4 v5, 0x6

    if-eq v1, v5, :cond_1

    :goto_0
    move v1, v4

    goto :goto_1

    :cond_0
    move-object v1, v0

    check-cast v1, Lorg/eclipse/jdt/internal/core/CompilationUnit;

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/core/CompilationUnit;->isWorkingCopy()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/core/CompilationUnit;->isPrimary()Z

    move-result v1

    if-nez v1, :cond_1

    return-void

    :cond_1
    move v1, v2

    goto :goto_1

    :cond_2
    move-object p2, v0

    check-cast p2, Lorg/eclipse/jdt/core/IPackageFragmentRoot;

    goto :goto_0

    :cond_3
    move-object p3, v0

    check-cast p3, Lorg/eclipse/jdt/core/IJavaProject;

    goto :goto_0

    :goto_1
    invoke-interface {p1}, Lorg/eclipse/jdt/core/IJavaElementDelta;->getKind()I

    move-result v5

    if-eq v5, v4, :cond_6

    if-eq v5, v3, :cond_5

    const/4 v3, 0x4

    if-eq v5, v3, :cond_4

    goto :goto_2

    :cond_4
    invoke-interface {p1}, Lorg/eclipse/jdt/core/IJavaElementDelta;->getFlags()I

    move-result v3

    and-int/2addr v3, v4

    if-eqz v3, :cond_7

    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/internal/core/ModelUpdater;->elementChanged(Lorg/eclipse/jdt/internal/core/Openable;)V

    goto :goto_2

    :cond_5
    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/internal/core/ModelUpdater;->elementRemoved(Lorg/eclipse/jdt/internal/core/Openable;)V

    goto :goto_2

    :cond_6
    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/internal/core/ModelUpdater;->elementAdded(Lorg/eclipse/jdt/internal/core/Openable;)V

    :cond_7
    :goto_2
    if-eqz v1, :cond_9

    invoke-interface {p1}, Lorg/eclipse/jdt/core/IJavaElementDelta;->getAffectedChildren()[Lorg/eclipse/jdt/core/IJavaElementDelta;

    move-result-object p1

    :goto_3
    array-length v0, p1

    if-lt v2, v0, :cond_8

    goto :goto_4

    :cond_8
    aget-object v0, p1, v2

    invoke-virtual {p0, v0, p2, p3}, Lorg/eclipse/jdt/internal/core/ModelUpdater;->traverseDelta(Lorg/eclipse/jdt/core/IJavaElementDelta;Lorg/eclipse/jdt/core/IPackageFragmentRoot;Lorg/eclipse/jdt/core/IJavaProject;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_9
    :goto_4
    return-void
.end method
