.class public Lorg/eclipse/jdt/internal/core/DeletePackageFragmentRootOperation;
.super Lorg/eclipse/jdt/internal/core/JavaModelOperation;
.source "SourceFile"


# instance fields
.field updateModelFlags:I

.field updateResourceFlags:I


# direct methods
.method public constructor <init>(Lorg/eclipse/jdt/core/IPackageFragmentRoot;II)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/core/JavaModelOperation;-><init>(Lorg/eclipse/jdt/core/IJavaElement;)V

    iput p2, p0, Lorg/eclipse/jdt/internal/core/DeletePackageFragmentRootOperation;->updateResourceFlags:I

    iput p3, p0, Lorg/eclipse/jdt/internal/core/DeletePackageFragmentRootOperation;->updateModelFlags:I

    return-void
.end method


# virtual methods
.method public deleteResource(Lorg/eclipse/jdt/core/IPackageFragmentRoot;Lorg/eclipse/jdt/core/IClasspathEntry;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/JavaModelException;
        }
    .end annotation

    move-object v0, p2

    check-cast v0, Lorg/eclipse/jdt/internal/core/ClasspathEntry;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/core/ClasspathEntry;->fullExclusionPatternChars()[[C

    move-result-object v0

    move-object v1, p1

    check-cast v1, Lorg/eclipse/jdt/internal/core/JavaElement;

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/core/JavaElement;->resource()Lorg/eclipse/core/resources/IResource;

    move-result-object v1

    invoke-interface {p2}, Lorg/eclipse/jdt/core/IClasspathEntry;->getEntryKind()I

    move-result p2

    const/4 v2, 0x3

    if-ne p2, v2, :cond_1

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/internal/core/JavaModelOperation;->getNestedFolders(Lorg/eclipse/jdt/core/IPackageFragmentRoot;)[Lorg/eclipse/core/runtime/IPath;

    move-result-object p1

    new-instance p2, Lorg/eclipse/jdt/internal/core/DeletePackageFragmentRootOperation$1;

    invoke-direct {p2, p0, p1}, Lorg/eclipse/jdt/internal/core/DeletePackageFragmentRootOperation$1;-><init>(Lorg/eclipse/jdt/internal/core/DeletePackageFragmentRootOperation;[Lorg/eclipse/core/runtime/IPath;)V

    const/4 p1, 0x0

    :try_start_0
    invoke-interface {v1, p2, p1}, Lorg/eclipse/core/resources/IResource;->accept(Lorg/eclipse/core/resources/IResourceProxyVisitor;I)V
    :try_end_0
    .catch Lorg/eclipse/core/runtime/CoreException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    new-instance p2, Lorg/eclipse/jdt/core/JavaModelException;

    invoke-direct {p2, p1}, Lorg/eclipse/jdt/core/JavaModelException;-><init>(Lorg/eclipse/core/runtime/CoreException;)V

    throw p2

    :cond_1
    :goto_0
    :try_start_1
    iget p1, p0, Lorg/eclipse/jdt/internal/core/DeletePackageFragmentRootOperation;->updateResourceFlags:I

    iget-object p2, p0, Lorg/eclipse/jdt/internal/core/JavaModelOperation;->progressMonitor:Lorg/eclipse/core/runtime/SubMonitor;

    invoke-interface {v1, p1, p2}, Lorg/eclipse/core/resources/IResource;->delete(ILorg/eclipse/core/runtime/IProgressMonitor;)V
    :try_end_1
    .catch Lorg/eclipse/core/runtime/CoreException; {:try_start_1 .. :try_end_1} :catch_1

    :goto_1
    const-string p1, "hasModifiedResource"

    const-string p2, "true"

    invoke-static {p1, p2}, Lorg/eclipse/jdt/internal/core/JavaModelOperation;->setAttribute(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void

    :catch_1
    move-exception p1

    new-instance p2, Lorg/eclipse/jdt/core/JavaModelException;

    invoke-direct {p2, p1}, Lorg/eclipse/jdt/core/JavaModelException;-><init>(Lorg/eclipse/core/runtime/CoreException;)V

    throw p2
.end method

.method public executeOperation()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/JavaModelException;
        }
    .end annotation

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/JavaModelOperation;->getElementToProcess()Lorg/eclipse/jdt/core/IJavaElement;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jdt/core/IPackageFragmentRoot;

    invoke-interface {v0}, Lorg/eclipse/jdt/core/IPackageFragmentRoot;->getRawClasspathEntry()Lorg/eclipse/jdt/core/IClasspathEntry;

    move-result-object v1

    invoke-static {}, Lorg/eclipse/jdt/internal/core/JavaModelManager;->getJavaModelManager()Lorg/eclipse/jdt/internal/core/JavaModelManager;

    move-result-object v2

    invoke-virtual {v2}, Lorg/eclipse/jdt/internal/core/JavaModelManager;->getDeltaProcessor()Lorg/eclipse/jdt/internal/core/DeltaProcessor;

    move-result-object v2

    iget-object v3, v2, Lorg/eclipse/jdt/internal/core/DeltaProcessor;->oldRoots:Ljava/util/Map;

    if-nez v3, :cond_0

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, v2, Lorg/eclipse/jdt/internal/core/DeltaProcessor;->oldRoots:Ljava/util/Map;

    :cond_0
    iget v3, p0, Lorg/eclipse/jdt/internal/core/DeletePackageFragmentRootOperation;->updateModelFlags:I

    and-int/lit8 v3, v3, 0x2

    if-eqz v3, :cond_1

    invoke-interface {v1}, Lorg/eclipse/jdt/core/IClasspathEntry;->getPath()Lorg/eclipse/core/runtime/IPath;

    move-result-object v3

    invoke-interface {v0}, Lorg/eclipse/jdt/core/IJavaElement;->getJavaProject()Lorg/eclipse/jdt/core/IJavaProject;

    move-result-object v4

    iget-object v5, v2, Lorg/eclipse/jdt/internal/core/DeltaProcessor;->oldRoots:Ljava/util/Map;

    invoke-virtual {p0, v3, v4, v5}, Lorg/eclipse/jdt/internal/core/DeletePackageFragmentRootOperation;->updateProjectClasspath(Lorg/eclipse/core/runtime/IPath;Lorg/eclipse/jdt/core/IJavaProject;Ljava/util/Map;)V

    :cond_1
    iget v3, p0, Lorg/eclipse/jdt/internal/core/DeletePackageFragmentRootOperation;->updateModelFlags:I

    and-int/lit8 v3, v3, 0x4

    if-eqz v3, :cond_2

    invoke-interface {v1}, Lorg/eclipse/jdt/core/IClasspathEntry;->getPath()Lorg/eclipse/core/runtime/IPath;

    move-result-object v3

    invoke-interface {v0}, Lorg/eclipse/jdt/core/IJavaElement;->getJavaProject()Lorg/eclipse/jdt/core/IJavaProject;

    move-result-object v4

    iget-object v2, v2, Lorg/eclipse/jdt/internal/core/DeltaProcessor;->oldRoots:Ljava/util/Map;

    invoke-virtual {p0, v3, v4, v2}, Lorg/eclipse/jdt/internal/core/DeletePackageFragmentRootOperation;->updateReferringProjectClasspaths(Lorg/eclipse/core/runtime/IPath;Lorg/eclipse/jdt/core/IJavaProject;Ljava/util/Map;)V

    :cond_2
    invoke-interface {v0}, Lorg/eclipse/jdt/core/IPackageFragmentRoot;->isExternal()Z

    move-result v2

    if-nez v2, :cond_3

    iget v2, p0, Lorg/eclipse/jdt/internal/core/DeletePackageFragmentRootOperation;->updateModelFlags:I

    and-int/lit8 v2, v2, 0x1

    if-nez v2, :cond_3

    invoke-virtual {p0, v0, v1}, Lorg/eclipse/jdt/internal/core/DeletePackageFragmentRootOperation;->deleteResource(Lorg/eclipse/jdt/core/IPackageFragmentRoot;Lorg/eclipse/jdt/core/IClasspathEntry;)V

    :cond_3
    return-void
.end method

.method public updateProjectClasspath(Lorg/eclipse/core/runtime/IPath;Lorg/eclipse/jdt/core/IJavaProject;Ljava/util/Map;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/JavaModelException;
        }
    .end annotation

    invoke-interface {p2}, Lorg/eclipse/jdt/core/IJavaProject;->getPackageFragmentRoots()[Lorg/eclipse/jdt/core/IPackageFragmentRoot;

    move-result-object v0

    invoke-interface {p3, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {p2}, Lorg/eclipse/jdt/core/IJavaProject;->getRawClasspath()[Lorg/eclipse/jdt/core/IClasspathEntry;

    move-result-object p3

    array-length v0, p3

    const/4 v1, 0x0

    const/4 v2, -0x1

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-lt v4, v0, :cond_2

    if-eqz v1, :cond_1

    array-length p1, v1

    if-ge v2, p1, :cond_0

    new-array p1, v2, [Lorg/eclipse/jdt/core/IClasspathEntry;

    invoke-static {v1, v3, p1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v1, p1

    :cond_0
    iget-object p1, p0, Lorg/eclipse/jdt/internal/core/JavaModelOperation;->progressMonitor:Lorg/eclipse/core/runtime/SubMonitor;

    invoke-interface {p2, v1, p1}, Lorg/eclipse/jdt/core/IJavaProject;->setRawClasspath([Lorg/eclipse/jdt/core/IClasspathEntry;Lorg/eclipse/core/runtime/IProgressMonitor;)V

    :cond_1
    return-void

    :cond_2
    aget-object v5, p3, v4

    invoke-interface {v5}, Lorg/eclipse/jdt/core/IClasspathEntry;->getPath()Lorg/eclipse/core/runtime/IPath;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    if-nez v1, :cond_4

    add-int/lit8 v1, v0, -0x1

    new-array v1, v1, [Lorg/eclipse/jdt/core/IClasspathEntry;

    invoke-static {p3, v3, v1, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move v2, v4

    goto :goto_1

    :cond_3
    if-eqz v1, :cond_4

    add-int/lit8 v6, v2, 0x1

    aput-object v5, v1, v2

    move v2, v6

    :cond_4
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0
.end method

.method public updateReferringProjectClasspaths(Lorg/eclipse/core/runtime/IPath;Lorg/eclipse/jdt/core/IJavaProject;Ljava/util/Map;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/JavaModelException;
        }
    .end annotation

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/JavaModelOperation;->getJavaModel()Lorg/eclipse/jdt/core/IJavaModel;

    move-result-object v0

    invoke-interface {v0}, Lorg/eclipse/jdt/core/IJavaModel;->getJavaProjects()[Lorg/eclipse/jdt/core/IJavaProject;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-lt v2, v1, :cond_0

    return-void

    :cond_0
    aget-object v3, v0, v2

    invoke-virtual {v3, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p0, p1, v3, p3}, Lorg/eclipse/jdt/internal/core/DeletePackageFragmentRootOperation;->updateProjectClasspath(Lorg/eclipse/core/runtime/IPath;Lorg/eclipse/jdt/core/IJavaProject;Ljava/util/Map;)V

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public verify()Lorg/eclipse/jdt/core/IJavaModelStatus;
    .locals 3

    invoke-super {p0}, Lorg/eclipse/jdt/internal/core/JavaModelOperation;->verify()Lorg/eclipse/jdt/core/IJavaModelStatus;

    move-result-object v0

    invoke-interface {v0}, Lorg/eclipse/jdt/core/IJavaModelStatus;->isOK()Z

    move-result v1

    if-nez v1, :cond_0

    return-object v0

    :cond_0
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/JavaModelOperation;->getElementToProcess()Lorg/eclipse/jdt/core/IJavaElement;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-interface {v0}, Lorg/eclipse/jdt/core/IJavaElement;->exists()Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    move-object v1, v0

    check-cast v1, Lorg/eclipse/jdt/internal/core/JavaElement;

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/core/JavaElement;->resource()Lorg/eclipse/core/resources/IResource;

    move-result-object v1

    instance-of v2, v1, Lorg/eclipse/core/resources/IFolder;

    if-eqz v2, :cond_2

    invoke-interface {v1}, Lorg/eclipse/core/resources/IResource;->isLinked()Z

    move-result v1

    if-eqz v1, :cond_2

    new-instance v1, Lorg/eclipse/jdt/internal/core/JavaModelStatus;

    const/16 v2, 0x3e3

    invoke-direct {v1, v2, v0}, Lorg/eclipse/jdt/internal/core/JavaModelStatus;-><init>(ILorg/eclipse/jdt/core/IJavaElement;)V

    return-object v1

    :cond_2
    sget-object v0, Lorg/eclipse/jdt/internal/core/JavaModelStatus;->VERIFIED_OK:Lorg/eclipse/jdt/core/IJavaModelStatus;

    return-object v0

    :cond_3
    :goto_0
    new-instance v1, Lorg/eclipse/jdt/internal/core/JavaModelStatus;

    const/16 v2, 0x3c9

    invoke-direct {v1, v2, v0}, Lorg/eclipse/jdt/internal/core/JavaModelStatus;-><init>(ILorg/eclipse/jdt/core/IJavaElement;)V

    return-object v1
.end method
