.class public Lorg/eclipse/jdt/internal/core/CopyPackageFragmentRootOperation;
.super Lorg/eclipse/jdt/internal/core/JavaModelOperation;
.source "SourceFile"


# instance fields
.field destination:Lorg/eclipse/core/runtime/IPath;

.field sibling:Lorg/eclipse/jdt/core/IClasspathEntry;

.field updateModelFlags:I

.field updateResourceFlags:I


# direct methods
.method public constructor <init>(Lorg/eclipse/jdt/core/IPackageFragmentRoot;Lorg/eclipse/core/runtime/IPath;IILorg/eclipse/jdt/core/IClasspathEntry;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/core/JavaModelOperation;-><init>(Lorg/eclipse/jdt/core/IJavaElement;)V

    iput-object p2, p0, Lorg/eclipse/jdt/internal/core/CopyPackageFragmentRootOperation;->destination:Lorg/eclipse/core/runtime/IPath;

    iput p3, p0, Lorg/eclipse/jdt/internal/core/CopyPackageFragmentRootOperation;->updateResourceFlags:I

    iput p4, p0, Lorg/eclipse/jdt/internal/core/CopyPackageFragmentRootOperation;->updateModelFlags:I

    iput-object p5, p0, Lorg/eclipse/jdt/internal/core/CopyPackageFragmentRootOperation;->sibling:Lorg/eclipse/jdt/core/IClasspathEntry;

    return-void
.end method


# virtual methods
.method public addEntryToClasspath(Lorg/eclipse/jdt/core/IClasspathEntry;Lorg/eclipse/core/resources/IWorkspaceRoot;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/JavaModelException;
        }
    .end annotation

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/CopyPackageFragmentRootOperation;->destination:Lorg/eclipse/core/runtime/IPath;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lorg/eclipse/core/runtime/IPath;->segment(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v0}, Lorg/eclipse/core/resources/IWorkspaceRoot;->getProject(Ljava/lang/String;)Lorg/eclipse/core/resources/IProject;

    move-result-object p2

    invoke-static {p2}, Lorg/eclipse/jdt/core/JavaCore;->create(Lorg/eclipse/core/resources/IProject;)Lorg/eclipse/jdt/core/IJavaProject;

    move-result-object p2

    invoke-interface {p2}, Lorg/eclipse/jdt/core/IJavaProject;->getRawClasspath()[Lorg/eclipse/jdt/core/IClasspathEntry;

    move-result-object v0

    array-length v2, v0

    iget v3, p0, Lorg/eclipse/jdt/internal/core/CopyPackageFragmentRootOperation;->updateModelFlags:I

    and-int/lit8 v3, v3, 0x10

    if-eqz v3, :cond_2

    move v3, v1

    :goto_0
    if-lt v3, v2, :cond_0

    goto :goto_1

    :cond_0
    iget-object v4, p0, Lorg/eclipse/jdt/internal/core/CopyPackageFragmentRootOperation;->destination:Lorg/eclipse/core/runtime/IPath;

    aget-object v5, v0, v3

    invoke-interface {v5}, Lorg/eclipse/jdt/core/IClasspathEntry;->getPath()Lorg/eclipse/core/runtime/IPath;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    new-array v4, v2, [Lorg/eclipse/jdt/core/IClasspathEntry;

    invoke-static {v0, v1, v4, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/internal/core/CopyPackageFragmentRootOperation;->copy(Lorg/eclipse/jdt/core/IClasspathEntry;)Lorg/eclipse/jdt/core/IClasspathEntry;

    move-result-object p1

    aput-object p1, v4, v3

    iget-object p1, p0, Lorg/eclipse/jdt/internal/core/JavaModelOperation;->progressMonitor:Lorg/eclipse/core/runtime/SubMonitor;

    invoke-interface {p2, v4, p1}, Lorg/eclipse/jdt/core/IJavaProject;->setRawClasspath([Lorg/eclipse/jdt/core/IClasspathEntry;Lorg/eclipse/core/runtime/IProgressMonitor;)V

    return-void

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    iget-object v3, p0, Lorg/eclipse/jdt/internal/core/CopyPackageFragmentRootOperation;->sibling:Lorg/eclipse/jdt/core/IClasspathEntry;

    const/4 v4, -0x1

    if-nez v3, :cond_3

    move v3, v2

    goto :goto_3

    :cond_3
    move v3, v1

    :goto_2
    if-lt v3, v2, :cond_4

    move v3, v4

    goto :goto_3

    :cond_4
    iget-object v5, p0, Lorg/eclipse/jdt/internal/core/CopyPackageFragmentRootOperation;->sibling:Lorg/eclipse/jdt/core/IClasspathEntry;

    aget-object v6, v0, v3

    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    :goto_3
    if-eq v3, v4, :cond_7

    add-int/lit8 v4, v2, 0x1

    new-array v4, v4, [Lorg/eclipse/jdt/core/IClasspathEntry;

    if-eqz v3, :cond_5

    invoke-static {v0, v1, v4, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_5
    if-eq v3, v2, :cond_6

    add-int/lit8 v1, v3, 0x1

    sub-int/2addr v2, v3

    invoke-static {v0, v3, v4, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_6
    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/internal/core/CopyPackageFragmentRootOperation;->copy(Lorg/eclipse/jdt/core/IClasspathEntry;)Lorg/eclipse/jdt/core/IClasspathEntry;

    move-result-object p1

    aput-object p1, v4, v3

    iget-object p1, p0, Lorg/eclipse/jdt/internal/core/JavaModelOperation;->progressMonitor:Lorg/eclipse/core/runtime/SubMonitor;

    invoke-interface {p2, v4, p1}, Lorg/eclipse/jdt/core/IJavaProject;->setRawClasspath([Lorg/eclipse/jdt/core/IClasspathEntry;Lorg/eclipse/core/runtime/IProgressMonitor;)V

    return-void

    :cond_7
    new-instance p1, Lorg/eclipse/jdt/core/JavaModelException;

    new-instance p2, Lorg/eclipse/jdt/internal/core/JavaModelStatus;

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/CopyPackageFragmentRootOperation;->sibling:Lorg/eclipse/jdt/core/IClasspathEntry;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x3e1

    invoke-direct {p2, v1, v0}, Lorg/eclipse/jdt/internal/core/JavaModelStatus;-><init>(ILjava/lang/String;)V

    invoke-direct {p1, p2}, Lorg/eclipse/jdt/core/JavaModelException;-><init>(Lorg/eclipse/jdt/core/IJavaModelStatus;)V

    throw p1

    :cond_8
    add-int/lit8 v3, v3, 0x1

    goto :goto_2
.end method

.method public copy(Lorg/eclipse/jdt/core/IClasspathEntry;)Lorg/eclipse/jdt/core/IClasspathEntry;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/JavaModelException;
        }
    .end annotation

    invoke-interface {p1}, Lorg/eclipse/jdt/core/IClasspathEntry;->getEntryKind()I

    move-result v0

    const/4 v1, 0x1

    const/16 v2, 0x3d3

    if-eq v0, v1, :cond_4

    const/4 v1, 0x2

    if-eq v0, v1, :cond_3

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    invoke-interface {p1}, Lorg/eclipse/jdt/core/IClasspathEntry;->getPath()Lorg/eclipse/core/runtime/IPath;

    move-result-object v0

    invoke-interface {p1}, Lorg/eclipse/jdt/core/IClasspathEntry;->getAccessRules()[Lorg/eclipse/jdt/core/IAccessRule;

    move-result-object v1

    invoke-interface {p1}, Lorg/eclipse/jdt/core/IClasspathEntry;->getExtraAttributes()[Lorg/eclipse/jdt/core/IClasspathAttribute;

    move-result-object v2

    invoke-interface {p1}, Lorg/eclipse/jdt/core/IClasspathEntry;->isExported()Z

    move-result p1

    invoke-static {v0, v1, v2, p1}, Lorg/eclipse/jdt/core/JavaCore;->newContainerEntry(Lorg/eclipse/core/runtime/IPath;[Lorg/eclipse/jdt/core/IAccessRule;[Lorg/eclipse/jdt/core/IClasspathAttribute;Z)Lorg/eclipse/jdt/core/IClasspathEntry;

    move-result-object p1

    return-object p1

    :cond_0
    new-instance p1, Lorg/eclipse/jdt/core/JavaModelException;

    new-instance v0, Lorg/eclipse/jdt/internal/core/JavaModelStatus;

    const/16 v1, 0x3c9

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/JavaModelOperation;->getElementToProcess()Lorg/eclipse/jdt/core/IJavaElement;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/eclipse/jdt/internal/core/JavaModelStatus;-><init>(ILorg/eclipse/jdt/core/IJavaElement;)V

    invoke-direct {p1, v0}, Lorg/eclipse/jdt/core/JavaModelException;-><init>(Lorg/eclipse/jdt/core/IJavaModelStatus;)V

    throw p1

    :cond_1
    :try_start_0
    invoke-interface {p1}, Lorg/eclipse/jdt/core/IClasspathEntry;->getPath()Lorg/eclipse/core/runtime/IPath;

    move-result-object v3

    invoke-interface {p1}, Lorg/eclipse/jdt/core/IClasspathEntry;->getSourceAttachmentPath()Lorg/eclipse/core/runtime/IPath;

    move-result-object v4

    invoke-interface {p1}, Lorg/eclipse/jdt/core/IClasspathEntry;->getSourceAttachmentRootPath()Lorg/eclipse/core/runtime/IPath;

    move-result-object v5

    invoke-interface {p1}, Lorg/eclipse/jdt/core/IClasspathEntry;->getAccessRules()[Lorg/eclipse/jdt/core/IAccessRule;

    move-result-object v6

    invoke-interface {p1}, Lorg/eclipse/jdt/core/IClasspathEntry;->getExtraAttributes()[Lorg/eclipse/jdt/core/IClasspathAttribute;

    move-result-object v7

    invoke-interface {p1}, Lorg/eclipse/jdt/core/IClasspathEntry;->isExported()Z

    move-result v8

    invoke-static/range {v3 .. v8}, Lorg/eclipse/jdt/core/JavaCore;->newVariableEntry(Lorg/eclipse/core/runtime/IPath;Lorg/eclipse/core/runtime/IPath;Lorg/eclipse/core/runtime/IPath;[Lorg/eclipse/jdt/core/IAccessRule;[Lorg/eclipse/jdt/core/IClasspathAttribute;Z)Lorg/eclipse/jdt/core/IClasspathEntry;

    move-result-object p1
    :try_end_0
    .catch Lorg/eclipse/jdt/internal/core/ClasspathEntry$AssertionFailedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    new-instance v0, Lorg/eclipse/jdt/internal/core/JavaModelStatus;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, v2, p1}, Lorg/eclipse/jdt/internal/core/JavaModelStatus;-><init>(ILjava/lang/String;)V

    new-instance p1, Lorg/eclipse/jdt/core/JavaModelException;

    invoke-direct {p1, v0}, Lorg/eclipse/jdt/core/JavaModelException;-><init>(Lorg/eclipse/jdt/core/IJavaModelStatus;)V

    throw p1

    :cond_2
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/CopyPackageFragmentRootOperation;->destination:Lorg/eclipse/core/runtime/IPath;

    invoke-interface {p1}, Lorg/eclipse/jdt/core/IClasspathEntry;->getInclusionPatterns()[Lorg/eclipse/core/runtime/IPath;

    move-result-object v1

    invoke-interface {p1}, Lorg/eclipse/jdt/core/IClasspathEntry;->getExclusionPatterns()[Lorg/eclipse/core/runtime/IPath;

    move-result-object v2

    invoke-interface {p1}, Lorg/eclipse/jdt/core/IClasspathEntry;->getOutputLocation()Lorg/eclipse/core/runtime/IPath;

    move-result-object v3

    invoke-interface {p1}, Lorg/eclipse/jdt/core/IClasspathEntry;->getExtraAttributes()[Lorg/eclipse/jdt/core/IClasspathAttribute;

    move-result-object p1

    invoke-static {v0, v1, v2, v3, p1}, Lorg/eclipse/jdt/core/JavaCore;->newSourceEntry(Lorg/eclipse/core/runtime/IPath;[Lorg/eclipse/core/runtime/IPath;[Lorg/eclipse/core/runtime/IPath;Lorg/eclipse/core/runtime/IPath;[Lorg/eclipse/jdt/core/IClasspathAttribute;)Lorg/eclipse/jdt/core/IClasspathEntry;

    move-result-object p1

    return-object p1

    :cond_3
    invoke-interface {p1}, Lorg/eclipse/jdt/core/IClasspathEntry;->getPath()Lorg/eclipse/core/runtime/IPath;

    move-result-object v0

    invoke-interface {p1}, Lorg/eclipse/jdt/core/IClasspathEntry;->getAccessRules()[Lorg/eclipse/jdt/core/IAccessRule;

    move-result-object v1

    invoke-interface {p1}, Lorg/eclipse/jdt/core/IClasspathEntry;->combineAccessRules()Z

    move-result v2

    invoke-interface {p1}, Lorg/eclipse/jdt/core/IClasspathEntry;->getExtraAttributes()[Lorg/eclipse/jdt/core/IClasspathAttribute;

    move-result-object v3

    invoke-interface {p1}, Lorg/eclipse/jdt/core/IClasspathEntry;->isExported()Z

    move-result p1

    invoke-static {v0, v1, v2, v3, p1}, Lorg/eclipse/jdt/core/JavaCore;->newProjectEntry(Lorg/eclipse/core/runtime/IPath;[Lorg/eclipse/jdt/core/IAccessRule;Z[Lorg/eclipse/jdt/core/IClasspathAttribute;Z)Lorg/eclipse/jdt/core/IClasspathEntry;

    move-result-object p1

    return-object p1

    :cond_4
    :try_start_1
    iget-object v3, p0, Lorg/eclipse/jdt/internal/core/CopyPackageFragmentRootOperation;->destination:Lorg/eclipse/core/runtime/IPath;

    invoke-interface {p1}, Lorg/eclipse/jdt/core/IClasspathEntry;->getSourceAttachmentPath()Lorg/eclipse/core/runtime/IPath;

    move-result-object v4

    invoke-interface {p1}, Lorg/eclipse/jdt/core/IClasspathEntry;->getSourceAttachmentRootPath()Lorg/eclipse/core/runtime/IPath;

    move-result-object v5

    invoke-interface {p1}, Lorg/eclipse/jdt/core/IClasspathEntry;->getAccessRules()[Lorg/eclipse/jdt/core/IAccessRule;

    move-result-object v6

    invoke-interface {p1}, Lorg/eclipse/jdt/core/IClasspathEntry;->getExtraAttributes()[Lorg/eclipse/jdt/core/IClasspathAttribute;

    move-result-object v7

    invoke-interface {p1}, Lorg/eclipse/jdt/core/IClasspathEntry;->isExported()Z

    move-result v8

    invoke-static/range {v3 .. v8}, Lorg/eclipse/jdt/core/JavaCore;->newLibraryEntry(Lorg/eclipse/core/runtime/IPath;Lorg/eclipse/core/runtime/IPath;Lorg/eclipse/core/runtime/IPath;[Lorg/eclipse/jdt/core/IAccessRule;[Lorg/eclipse/jdt/core/IClasspathAttribute;Z)Lorg/eclipse/jdt/core/IClasspathEntry;

    move-result-object p1
    :try_end_1
    .catch Lorg/eclipse/jdt/internal/core/ClasspathEntry$AssertionFailedException; {:try_start_1 .. :try_end_1} :catch_1

    return-object p1

    :catch_1
    move-exception p1

    new-instance v0, Lorg/eclipse/jdt/internal/core/JavaModelStatus;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, v2, p1}, Lorg/eclipse/jdt/internal/core/JavaModelStatus;-><init>(ILjava/lang/String;)V

    new-instance p1, Lorg/eclipse/jdt/core/JavaModelException;

    invoke-direct {p1, v0}, Lorg/eclipse/jdt/core/JavaModelException;-><init>(Lorg/eclipse/jdt/core/IJavaModelStatus;)V

    throw p1
.end method

.method public copyResource(Lorg/eclipse/jdt/core/IPackageFragmentRoot;Lorg/eclipse/jdt/core/IClasspathEntry;Lorg/eclipse/core/resources/IWorkspaceRoot;)V
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

    invoke-interface {p1}, Lorg/eclipse/jdt/core/IPackageFragmentRoot;->getKind()I

    move-result v2

    const/4 v3, 0x2

    if-eq v2, v3, :cond_1

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

    new-instance p1, Lorg/eclipse/jdt/internal/core/CopyPackageFragmentRootOperation$1;

    move-object v2, p1

    move-object v3, p0

    move-object v7, p3

    invoke-direct/range {v2 .. v7}, Lorg/eclipse/jdt/internal/core/CopyPackageFragmentRootOperation$1;-><init>(Lorg/eclipse/jdt/internal/core/CopyPackageFragmentRootOperation;[Lorg/eclipse/core/runtime/IPath;Lorg/eclipse/core/resources/IFolder;ILorg/eclipse/core/resources/IWorkspaceRoot;)V

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

    if-eqz p1, :cond_3

    invoke-interface {p2}, Lorg/eclipse/jdt/core/IClasspathEntry;->getPath()Lorg/eclipse/core/runtime/IPath;

    move-result-object p1

    iget-object p2, p0, Lorg/eclipse/jdt/internal/core/CopyPackageFragmentRootOperation;->destination:Lorg/eclipse/core/runtime/IPath;

    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    return-void

    :cond_2
    iget-object p1, p0, Lorg/eclipse/jdt/internal/core/CopyPackageFragmentRootOperation;->destination:Lorg/eclipse/core/runtime/IPath;

    invoke-interface {p3, p1}, Lorg/eclipse/core/resources/IWorkspaceRoot;->findMember(Lorg/eclipse/core/runtime/IPath;)Lorg/eclipse/core/resources/IResource;

    move-result-object p1

    if-eqz p1, :cond_3

    iget p2, p0, Lorg/eclipse/jdt/internal/core/CopyPackageFragmentRootOperation;->updateResourceFlags:I

    iget-object p3, p0, Lorg/eclipse/jdt/internal/core/JavaModelOperation;->progressMonitor:Lorg/eclipse/core/runtime/SubMonitor;

    invoke-interface {p1, p2, p3}, Lorg/eclipse/core/resources/IResource;->delete(ILorg/eclipse/core/runtime/IProgressMonitor;)V

    goto :goto_1

    :catch_1
    move-exception p1

    goto :goto_3

    :cond_3
    :goto_1
    iget-object p1, p0, Lorg/eclipse/jdt/internal/core/CopyPackageFragmentRootOperation;->destination:Lorg/eclipse/core/runtime/IPath;

    iget p2, p0, Lorg/eclipse/jdt/internal/core/CopyPackageFragmentRootOperation;->updateResourceFlags:I

    iget-object p3, p0, Lorg/eclipse/jdt/internal/core/JavaModelOperation;->progressMonitor:Lorg/eclipse/core/runtime/SubMonitor;

    invoke-interface {v1, p1, p2, p3}, Lorg/eclipse/core/resources/IResource;->copy(Lorg/eclipse/core/runtime/IPath;ILorg/eclipse/core/runtime/IProgressMonitor;)V
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

.method public executeOperation()V
    .locals 4
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

    if-nez v3, :cond_0

    iget v3, p0, Lorg/eclipse/jdt/internal/core/CopyPackageFragmentRootOperation;->updateModelFlags:I

    and-int/lit8 v3, v3, 0x1

    if-nez v3, :cond_0

    invoke-virtual {p0, v0, v1, v2}, Lorg/eclipse/jdt/internal/core/CopyPackageFragmentRootOperation;->copyResource(Lorg/eclipse/jdt/core/IPackageFragmentRoot;Lorg/eclipse/jdt/core/IClasspathEntry;Lorg/eclipse/core/resources/IWorkspaceRoot;)V

    :cond_0
    iget v0, p0, Lorg/eclipse/jdt/internal/core/CopyPackageFragmentRootOperation;->updateModelFlags:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_1

    invoke-virtual {p0, v1, v2}, Lorg/eclipse/jdt/internal/core/CopyPackageFragmentRootOperation;->addEntryToClasspath(Lorg/eclipse/jdt/core/IClasspathEntry;Lorg/eclipse/core/resources/IWorkspaceRoot;)V

    :cond_1
    return-void
.end method

.method public verify()Lorg/eclipse/jdt/core/IJavaModelStatus;
    .locals 8

    invoke-super {p0}, Lorg/eclipse/jdt/internal/core/JavaModelOperation;->verify()Lorg/eclipse/jdt/core/IJavaModelStatus;

    move-result-object v0

    invoke-interface {v0}, Lorg/eclipse/jdt/core/IJavaModelStatus;->isOK()Z

    move-result v1

    if-nez v1, :cond_0

    return-object v0

    :cond_0
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/JavaModelOperation;->getElementToProcess()Lorg/eclipse/jdt/core/IJavaElement;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jdt/internal/core/PackageFragmentRoot;

    if-eqz v0, :cond_8

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/core/Openable;->exists()Z

    move-result v1

    if-nez v1, :cond_1

    goto/16 :goto_3

    :cond_1
    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/core/PackageFragmentRoot;->resource()Lorg/eclipse/core/resources/IResource;

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
    iget v0, p0, Lorg/eclipse/jdt/internal/core/CopyPackageFragmentRootOperation;->updateModelFlags:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_7

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/CopyPackageFragmentRootOperation;->destination:Lorg/eclipse/core/runtime/IPath;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lorg/eclipse/core/runtime/IPath;->segment(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lorg/eclipse/core/resources/ResourcesPlugin;->getWorkspace()Lorg/eclipse/core/resources/IWorkspace;

    move-result-object v2

    invoke-interface {v2}, Lorg/eclipse/core/resources/IWorkspace;->getRoot()Lorg/eclipse/core/resources/IWorkspaceRoot;

    move-result-object v2

    invoke-interface {v2, v0}, Lorg/eclipse/core/resources/IWorkspaceRoot;->getProject(Ljava/lang/String;)Lorg/eclipse/core/resources/IProject;

    move-result-object v0

    invoke-static {v0}, Lorg/eclipse/jdt/internal/core/JavaProject;->hasJavaNature(Lorg/eclipse/core/resources/IProject;)Z

    move-result v2

    if-eqz v2, :cond_7

    :try_start_0
    invoke-static {v0}, Lorg/eclipse/jdt/core/JavaCore;->create(Lorg/eclipse/core/resources/IProject;)Lorg/eclipse/jdt/core/IJavaProject;

    move-result-object v0

    invoke-interface {v0}, Lorg/eclipse/jdt/core/IJavaProject;->getRawClasspath()[Lorg/eclipse/jdt/core/IClasspathEntry;

    move-result-object v0

    array-length v2, v0

    move v3, v1

    move v4, v3

    :goto_0
    if-lt v3, v2, :cond_3

    goto :goto_1

    :cond_3
    aget-object v5, v0, v3

    iget-object v6, p0, Lorg/eclipse/jdt/internal/core/CopyPackageFragmentRootOperation;->sibling:Lorg/eclipse/jdt/core/IClasspathEntry;

    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    const/4 v7, 0x1

    if-eqz v6, :cond_5

    move v1, v7

    :goto_1
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/CopyPackageFragmentRootOperation;->sibling:Lorg/eclipse/jdt/core/IClasspathEntry;

    if-eqz v0, :cond_4

    if-nez v1, :cond_4

    new-instance v0, Lorg/eclipse/jdt/internal/core/JavaModelStatus;

    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/CopyPackageFragmentRootOperation;->sibling:Lorg/eclipse/jdt/core/IClasspathEntry;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x3e1

    invoke-direct {v0, v2, v1}, Lorg/eclipse/jdt/internal/core/JavaModelStatus;-><init>(ILjava/lang/String;)V

    return-object v0

    :catch_0
    move-exception v0

    goto :goto_2

    :cond_4
    if-eqz v4, :cond_7

    iget v0, p0, Lorg/eclipse/jdt/internal/core/CopyPackageFragmentRootOperation;->updateModelFlags:I

    and-int/lit8 v0, v0, 0x10

    if-nez v0, :cond_7

    new-instance v0, Lorg/eclipse/jdt/internal/core/JavaModelStatus;

    sget-object v1, Lorg/eclipse/jdt/internal/core/util/Messages;->status_nameCollision:Ljava/lang/String;

    iget-object v2, p0, Lorg/eclipse/jdt/internal/core/CopyPackageFragmentRootOperation;->destination:Lorg/eclipse/core/runtime/IPath;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/eclipse/jdt/internal/core/util/Messages;->bind(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x3d1

    invoke-direct {v0, v2, v1}, Lorg/eclipse/jdt/internal/core/JavaModelStatus;-><init>(ILjava/lang/String;)V

    return-object v0

    :cond_5
    invoke-interface {v5}, Lorg/eclipse/jdt/core/IClasspathEntry;->getPath()Lorg/eclipse/core/runtime/IPath;

    move-result-object v5

    iget-object v6, p0, Lorg/eclipse/jdt/internal/core/CopyPackageFragmentRootOperation;->destination:Lorg/eclipse/core/runtime/IPath;

    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5
    :try_end_0
    .catch Lorg/eclipse/jdt/core/JavaModelException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v5, :cond_6

    move v4, v7

    :cond_6
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :goto_2
    invoke-virtual {v0}, Lorg/eclipse/jdt/core/JavaModelException;->getJavaModelStatus()Lorg/eclipse/jdt/core/IJavaModelStatus;

    move-result-object v0

    return-object v0

    :cond_7
    sget-object v0, Lorg/eclipse/jdt/internal/core/JavaModelStatus;->VERIFIED_OK:Lorg/eclipse/jdt/core/IJavaModelStatus;

    return-object v0

    :cond_8
    :goto_3
    new-instance v1, Lorg/eclipse/jdt/internal/core/JavaModelStatus;

    const/16 v2, 0x3c9

    invoke-direct {v1, v2, v0}, Lorg/eclipse/jdt/internal/core/JavaModelStatus;-><init>(ILorg/eclipse/jdt/core/IJavaElement;)V

    return-object v1
.end method
