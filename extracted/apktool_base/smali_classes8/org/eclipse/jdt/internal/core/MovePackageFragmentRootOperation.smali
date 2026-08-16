.class public Lorg/eclipse/jdt/internal/core/MovePackageFragmentRootOperation;
.super Lorg/eclipse/jdt/internal/core/CopyPackageFragmentRootOperation;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lorg/eclipse/jdt/core/IPackageFragmentRoot;Lorg/eclipse/core/runtime/IPath;IILorg/eclipse/jdt/core/IClasspathEntry;)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lorg/eclipse/jdt/internal/core/CopyPackageFragmentRootOperation;-><init>(Lorg/eclipse/jdt/core/IPackageFragmentRoot;Lorg/eclipse/core/runtime/IPath;IILorg/eclipse/jdt/core/IClasspathEntry;)V

    return-void
.end method

.method private renamePatterns(Lorg/eclipse/core/runtime/IPath;[Lorg/eclipse/core/runtime/IPath;)[Lorg/eclipse/core/runtime/IPath;
    .locals 8

    array-length v0, p2

    const/4 v1, 0x0

    const/4 v2, -0x1

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-lt v4, v0, :cond_0

    return-object v1

    :cond_0
    aget-object v5, p2, v4

    invoke-virtual {v5, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    if-nez v1, :cond_1

    new-array v1, v0, [Lorg/eclipse/core/runtime/IPath;

    invoke-static {p2, v3, v1, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move v2, v4

    :cond_1
    iget-object v6, p0, Lorg/eclipse/jdt/internal/core/CopyPackageFragmentRootOperation;->destination:Lorg/eclipse/core/runtime/IPath;

    const/4 v7, 0x1

    invoke-interface {v6, v7}, Lorg/eclipse/core/runtime/IPath;->removeFirstSegments(I)Lorg/eclipse/core/runtime/IPath;

    move-result-object v6

    invoke-interface {v5}, Lorg/eclipse/core/runtime/IPath;->hasTrailingSeparator()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v6}, Lorg/eclipse/core/runtime/IPath;->addTrailingSeparator()Lorg/eclipse/core/runtime/IPath;

    move-result-object v6

    :cond_2
    add-int/lit8 v5, v2, 0x1

    aput-object v6, v1, v2

    move v2, v5

    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_0
.end method


# virtual methods
.method public executeOperation()V
    .locals 8
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

    invoke-static {}, Lorg/eclipse/core/resources/ResourcesPlugin;->getWorkspace()Lorg/eclipse/core/resources/IWorkspace;

    move-result-object v2

    invoke-interface {v2}, Lorg/eclipse/core/resources/IWorkspace;->getRoot()Lorg/eclipse/core/resources/IWorkspaceRoot;

    move-result-object v2

    invoke-interface {v0}, Lorg/eclipse/jdt/core/IPackageFragmentRoot;->isExternal()Z

    move-result v3

    const/4 v4, 0x1

    if-nez v3, :cond_0

    iget v3, p0, Lorg/eclipse/jdt/internal/core/CopyPackageFragmentRootOperation;->updateModelFlags:I

    and-int/2addr v3, v4

    if-nez v3, :cond_0

    invoke-virtual {p0, v0, v1, v2}, Lorg/eclipse/jdt/internal/core/MovePackageFragmentRootOperation;->moveResource(Lorg/eclipse/jdt/core/IPackageFragmentRoot;Lorg/eclipse/jdt/core/IClasspathEntry;Lorg/eclipse/core/resources/IWorkspaceRoot;)V

    :cond_0
    invoke-interface {v0}, Lorg/eclipse/jdt/core/IJavaElement;->getJavaProject()Lorg/eclipse/jdt/core/IJavaProject;

    move-result-object v0

    iget v3, p0, Lorg/eclipse/jdt/internal/core/CopyPackageFragmentRootOperation;->updateModelFlags:I

    and-int/lit8 v3, v3, 0x4

    if-eqz v3, :cond_1

    invoke-interface {v1}, Lorg/eclipse/jdt/core/IClasspathEntry;->getPath()Lorg/eclipse/core/runtime/IPath;

    move-result-object v3

    invoke-virtual {p0, v3, v0}, Lorg/eclipse/jdt/internal/core/MovePackageFragmentRootOperation;->updateReferringProjectClasspaths(Lorg/eclipse/core/runtime/IPath;Lorg/eclipse/jdt/core/IJavaProject;)V

    :cond_1
    iget-object v3, p0, Lorg/eclipse/jdt/internal/core/CopyPackageFragmentRootOperation;->destination:Lorg/eclipse/core/runtime/IPath;

    const/4 v5, 0x0

    invoke-interface {v3, v5}, Lorg/eclipse/core/runtime/IPath;->segment(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0}, Lorg/eclipse/jdt/core/IJavaElement;->getElementName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    iget v6, p0, Lorg/eclipse/jdt/internal/core/CopyPackageFragmentRootOperation;->updateModelFlags:I

    and-int/lit8 v7, v6, 0x2

    if-eqz v7, :cond_2

    move v7, v4

    goto :goto_0

    :cond_2
    move v7, v5

    :goto_0
    and-int/lit8 v6, v6, 0x8

    if-eqz v6, :cond_3

    goto :goto_1

    :cond_3
    move v4, v5

    :goto_1
    if-eqz v7, :cond_5

    if-eqz v3, :cond_4

    if-eqz v4, :cond_4

    invoke-interface {v1}, Lorg/eclipse/jdt/core/IClasspathEntry;->getPath()Lorg/eclipse/core/runtime/IPath;

    move-result-object v5

    invoke-virtual {p0, v5, v0}, Lorg/eclipse/jdt/internal/core/MovePackageFragmentRootOperation;->renameEntryInClasspath(Lorg/eclipse/core/runtime/IPath;Lorg/eclipse/jdt/core/IJavaProject;)V

    goto :goto_2

    :cond_4
    invoke-interface {v1}, Lorg/eclipse/jdt/core/IClasspathEntry;->getPath()Lorg/eclipse/core/runtime/IPath;

    move-result-object v5

    invoke-virtual {p0, v5, v0}, Lorg/eclipse/jdt/internal/core/MovePackageFragmentRootOperation;->removeEntryFromClasspath(Lorg/eclipse/core/runtime/IPath;Lorg/eclipse/jdt/core/IJavaProject;)V

    :cond_5
    :goto_2
    if-eqz v4, :cond_7

    if-eqz v3, :cond_6

    if-nez v7, :cond_7

    :cond_6
    invoke-virtual {p0, v1, v2}, Lorg/eclipse/jdt/internal/core/CopyPackageFragmentRootOperation;->addEntryToClasspath(Lorg/eclipse/jdt/core/IClasspathEntry;Lorg/eclipse/core/resources/IWorkspaceRoot;)V

    :cond_7
    return-void
.end method

.method public moveResource(Lorg/eclipse/jdt/core/IPackageFragmentRoot;Lorg/eclipse/jdt/core/IClasspathEntry;Lorg/eclipse/core/resources/IWorkspaceRoot;)V
    .locals 8
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

    move-result v2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_1

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {p2}, Lorg/eclipse/jdt/core/IClasspathEntry;->getPath()Lorg/eclipse/core/runtime/IPath;

    move-result-object p2

    invoke-interface {p2}, Lorg/eclipse/core/runtime/IPath;->segmentCount()I

    move-result v6

    iget-object p2, p0, Lorg/eclipse/jdt/internal/core/CopyPackageFragmentRootOperation;->destination:Lorg/eclipse/core/runtime/IPath;

    invoke-interface {p3, p2}, Lorg/eclipse/core/resources/IWorkspaceRoot;->getFolder(Lorg/eclipse/core/runtime/IPath;)Lorg/eclipse/core/resources/IFolder;

    move-result-object v5

    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/internal/core/JavaModelOperation;->getNestedFolders(Lorg/eclipse/jdt/core/IPackageFragmentRoot;)[Lorg/eclipse/core/runtime/IPath;

    move-result-object v4

    new-instance p1, Lorg/eclipse/jdt/internal/core/MovePackageFragmentRootOperation$1;

    move-object v2, p1

    move-object v3, p0

    move-object v7, p3

    invoke-direct/range {v2 .. v7}, Lorg/eclipse/jdt/internal/core/MovePackageFragmentRootOperation$1;-><init>(Lorg/eclipse/jdt/internal/core/MovePackageFragmentRootOperation;[Lorg/eclipse/core/runtime/IPath;Lorg/eclipse/core/resources/IFolder;ILorg/eclipse/core/resources/IWorkspaceRoot;)V

    const/4 p2, 0x0

    :try_start_0
    invoke-interface {v1, p1, p2}, Lorg/eclipse/core/resources/IResource;->accept(Lorg/eclipse/core/resources/IResourceProxyVisitor;I)V
    :try_end_0
    .catch Lorg/eclipse/core/runtime/CoreException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    new-instance p2, Lorg/eclipse/jdt/core/JavaModelException;

    invoke-direct {p2, p1}, Lorg/eclipse/jdt/core/JavaModelException;-><init>(Lorg/eclipse/core/runtime/CoreException;)V

    throw p2

    :cond_1
    :goto_0
    :try_start_1
    iget p1, p0, Lorg/eclipse/jdt/internal/core/CopyPackageFragmentRootOperation;->updateModelFlags:I

    and-int/lit8 p1, p1, 0x10

    if-eqz p1, :cond_2

    iget-object p1, p0, Lorg/eclipse/jdt/internal/core/CopyPackageFragmentRootOperation;->destination:Lorg/eclipse/core/runtime/IPath;

    invoke-interface {p3, p1}, Lorg/eclipse/core/resources/IWorkspaceRoot;->findMember(Lorg/eclipse/core/runtime/IPath;)Lorg/eclipse/core/resources/IResource;

    move-result-object p1

    if-eqz p1, :cond_2

    iget p2, p0, Lorg/eclipse/jdt/internal/core/CopyPackageFragmentRootOperation;->updateResourceFlags:I

    iget-object p3, p0, Lorg/eclipse/jdt/internal/core/JavaModelOperation;->progressMonitor:Lorg/eclipse/core/runtime/SubMonitor;

    invoke-interface {p1, p2, p3}, Lorg/eclipse/core/resources/IResource;->delete(ILorg/eclipse/core/runtime/IProgressMonitor;)V

    goto :goto_1

    :catch_1
    move-exception p1

    goto :goto_3

    :cond_2
    :goto_1
    iget-object p1, p0, Lorg/eclipse/jdt/internal/core/CopyPackageFragmentRootOperation;->destination:Lorg/eclipse/core/runtime/IPath;

    iget p2, p0, Lorg/eclipse/jdt/internal/core/CopyPackageFragmentRootOperation;->updateResourceFlags:I

    iget-object p3, p0, Lorg/eclipse/jdt/internal/core/JavaModelOperation;->progressMonitor:Lorg/eclipse/core/runtime/SubMonitor;

    invoke-interface {v1, p1, p2, p3}, Lorg/eclipse/core/resources/IResource;->move(Lorg/eclipse/core/runtime/IPath;ILorg/eclipse/core/runtime/IProgressMonitor;)V
    :try_end_1
    .catch Lorg/eclipse/core/runtime/CoreException; {:try_start_1 .. :try_end_1} :catch_1

    :goto_2
    const-string p1, "hasModifiedResource"

    const-string p2, "true"

    invoke-static {p1, p2}, Lorg/eclipse/jdt/internal/core/JavaModelOperation;->setAttribute(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void

    :goto_3
    new-instance p2, Lorg/eclipse/jdt/core/JavaModelException;

    invoke-direct {p2, p1}, Lorg/eclipse/jdt/core/JavaModelException;-><init>(Lorg/eclipse/core/runtime/CoreException;)V

    throw p2
.end method

.method public removeEntryFromClasspath(Lorg/eclipse/core/runtime/IPath;Lorg/eclipse/jdt/core/IJavaProject;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/JavaModelException;
        }
    .end annotation

    invoke-interface {p2}, Lorg/eclipse/jdt/core/IJavaProject;->getRawClasspath()[Lorg/eclipse/jdt/core/IClasspathEntry;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, -0x1

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    if-lt v5, v1, :cond_2

    if-eqz v2, :cond_1

    array-length p1, v2

    if-ge v3, p1, :cond_0

    new-array p1, v3, [Lorg/eclipse/jdt/core/IClasspathEntry;

    invoke-static {v2, v4, p1, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v2, p1

    :cond_0
    iget-object p1, p0, Lorg/eclipse/jdt/internal/core/JavaModelOperation;->progressMonitor:Lorg/eclipse/core/runtime/SubMonitor;

    invoke-interface {p2, v2, p1}, Lorg/eclipse/jdt/core/IJavaProject;->setRawClasspath([Lorg/eclipse/jdt/core/IClasspathEntry;Lorg/eclipse/core/runtime/IProgressMonitor;)V

    :cond_1
    return-void

    :cond_2
    aget-object v6, v0, v5

    invoke-interface {v6}, Lorg/eclipse/jdt/core/IClasspathEntry;->getPath()Lorg/eclipse/core/runtime/IPath;

    move-result-object v7

    invoke-virtual {p1, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    if-nez v2, :cond_4

    new-array v2, v1, [Lorg/eclipse/jdt/core/IClasspathEntry;

    invoke-static {v0, v4, v2, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move v3, v5

    goto :goto_1

    :cond_3
    if-eqz v2, :cond_4

    add-int/lit8 v7, v3, 0x1

    aput-object v6, v2, v3

    move v3, v7

    :cond_4
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0
.end method

.method public renameEntryInClasspath(Lorg/eclipse/core/runtime/IPath;Lorg/eclipse/jdt/core/IJavaProject;)V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/JavaModelException;
        }
    .end annotation

    invoke-interface {p2}, Lorg/eclipse/jdt/core/IJavaProject;->getRawClasspath()[Lorg/eclipse/jdt/core/IClasspathEntry;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, -0x1

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    if-lt v5, v1, :cond_2

    if-eqz v2, :cond_1

    array-length p1, v2

    if-ge v3, p1, :cond_0

    new-array p1, v3, [Lorg/eclipse/jdt/core/IClasspathEntry;

    invoke-static {v2, v4, p1, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v2, p1

    :cond_0
    invoke-interface {p2}, Lorg/eclipse/jdt/core/IJavaProject;->getOutputLocation()Lorg/eclipse/core/runtime/IPath;

    move-result-object p1

    invoke-static {p2, v2, p1}, Lorg/eclipse/jdt/core/JavaConventions;->validateClasspath(Lorg/eclipse/jdt/core/IJavaProject;[Lorg/eclipse/jdt/core/IClasspathEntry;Lorg/eclipse/core/runtime/IPath;)Lorg/eclipse/jdt/core/IJavaModelStatus;

    move-result-object p1

    invoke-interface {p1}, Lorg/eclipse/jdt/core/IJavaModelStatus;->isOK()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lorg/eclipse/jdt/internal/core/JavaModelOperation;->progressMonitor:Lorg/eclipse/core/runtime/SubMonitor;

    invoke-interface {p2, v2, p1}, Lorg/eclipse/jdt/core/IJavaProject;->setRawClasspath([Lorg/eclipse/jdt/core/IClasspathEntry;Lorg/eclipse/core/runtime/IProgressMonitor;)V

    :cond_1
    return-void

    :cond_2
    aget-object v6, v0, v5

    invoke-interface {v6}, Lorg/eclipse/jdt/core/IClasspathEntry;->getPath()Lorg/eclipse/core/runtime/IPath;

    move-result-object v7

    invoke-virtual {p1, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    if-nez v2, :cond_3

    new-array v2, v1, [Lorg/eclipse/jdt/core/IClasspathEntry;

    invoke-static {v0, v4, v2, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move v3, v5

    :cond_3
    add-int/lit8 v7, v3, 0x1

    invoke-virtual {p0, v6}, Lorg/eclipse/jdt/internal/core/CopyPackageFragmentRootOperation;->copy(Lorg/eclipse/jdt/core/IClasspathEntry;)Lorg/eclipse/jdt/core/IClasspathEntry;

    move-result-object v6

    aput-object v6, v2, v3

    :goto_1
    move v3, v7

    goto/16 :goto_3

    :cond_4
    iget-object v8, p0, Lorg/eclipse/jdt/internal/core/CopyPackageFragmentRootOperation;->destination:Lorg/eclipse/core/runtime/IPath;

    invoke-virtual {v8, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    if-nez v2, :cond_c

    new-array v2, v1, [Lorg/eclipse/jdt/core/IClasspathEntry;

    invoke-static {v0, v4, v2, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move v3, v5

    goto :goto_3

    :cond_5
    invoke-interface {v6}, Lorg/eclipse/jdt/core/IClasspathEntry;->getEntryKind()I

    move-result v7

    const/4 v8, 0x3

    if-ne v7, v8, :cond_b

    const/4 v7, 0x1

    invoke-interface {p1, v7}, Lorg/eclipse/core/runtime/IPath;->removeFirstSegments(I)Lorg/eclipse/core/runtime/IPath;

    move-result-object v7

    invoke-interface {v6}, Lorg/eclipse/jdt/core/IClasspathEntry;->getExclusionPatterns()[Lorg/eclipse/core/runtime/IPath;

    move-result-object v8

    invoke-direct {p0, v7, v8}, Lorg/eclipse/jdt/internal/core/MovePackageFragmentRootOperation;->renamePatterns(Lorg/eclipse/core/runtime/IPath;[Lorg/eclipse/core/runtime/IPath;)[Lorg/eclipse/core/runtime/IPath;

    move-result-object v8

    invoke-interface {v6}, Lorg/eclipse/jdt/core/IClasspathEntry;->getInclusionPatterns()[Lorg/eclipse/core/runtime/IPath;

    move-result-object v9

    invoke-direct {p0, v7, v9}, Lorg/eclipse/jdt/internal/core/MovePackageFragmentRootOperation;->renamePatterns(Lorg/eclipse/core/runtime/IPath;[Lorg/eclipse/core/runtime/IPath;)[Lorg/eclipse/core/runtime/IPath;

    move-result-object v7

    if-nez v8, :cond_7

    if-eqz v7, :cond_6

    goto :goto_2

    :cond_6
    if-eqz v2, :cond_c

    add-int/lit8 v7, v3, 0x1

    aput-object v6, v2, v3

    goto :goto_1

    :cond_7
    :goto_2
    if-nez v2, :cond_8

    new-array v2, v1, [Lorg/eclipse/jdt/core/IClasspathEntry;

    invoke-static {v0, v4, v2, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move v3, v5

    :cond_8
    add-int/lit8 v9, v3, 0x1

    invoke-interface {v6}, Lorg/eclipse/jdt/core/IClasspathEntry;->getPath()Lorg/eclipse/core/runtime/IPath;

    move-result-object v10

    if-nez v7, :cond_9

    invoke-interface {v6}, Lorg/eclipse/jdt/core/IClasspathEntry;->getInclusionPatterns()[Lorg/eclipse/core/runtime/IPath;

    move-result-object v7

    :cond_9
    if-nez v8, :cond_a

    invoke-interface {v6}, Lorg/eclipse/jdt/core/IClasspathEntry;->getExclusionPatterns()[Lorg/eclipse/core/runtime/IPath;

    move-result-object v8

    :cond_a
    invoke-interface {v6}, Lorg/eclipse/jdt/core/IClasspathEntry;->getOutputLocation()Lorg/eclipse/core/runtime/IPath;

    move-result-object v11

    invoke-interface {v6}, Lorg/eclipse/jdt/core/IClasspathEntry;->getExtraAttributes()[Lorg/eclipse/jdt/core/IClasspathAttribute;

    move-result-object v6

    invoke-static {v10, v7, v8, v11, v6}, Lorg/eclipse/jdt/core/JavaCore;->newSourceEntry(Lorg/eclipse/core/runtime/IPath;[Lorg/eclipse/core/runtime/IPath;[Lorg/eclipse/core/runtime/IPath;Lorg/eclipse/core/runtime/IPath;[Lorg/eclipse/jdt/core/IClasspathAttribute;)Lorg/eclipse/jdt/core/IClasspathEntry;

    move-result-object v6

    aput-object v6, v2, v3

    move v3, v9

    goto :goto_3

    :cond_b
    if-eqz v2, :cond_c

    add-int/lit8 v7, v3, 0x1

    aput-object v6, v2, v3

    goto :goto_1

    :cond_c
    :goto_3
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_0
.end method

.method public updateReferringProjectClasspaths(Lorg/eclipse/core/runtime/IPath;Lorg/eclipse/jdt/core/IJavaProject;)V
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
    invoke-virtual {p0, p1, v3}, Lorg/eclipse/jdt/internal/core/MovePackageFragmentRootOperation;->renameEntryInClasspath(Lorg/eclipse/core/runtime/IPath;Lorg/eclipse/jdt/core/IJavaProject;)V

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method
