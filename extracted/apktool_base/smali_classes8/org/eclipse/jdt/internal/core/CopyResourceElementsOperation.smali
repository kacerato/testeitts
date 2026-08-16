.class public Lorg/eclipse/jdt/internal/core/CopyResourceElementsOperation;
.super Lorg/eclipse/jdt/internal/core/MultiOperation;
.source "SourceFile"

# interfaces
.implements Lorg/eclipse/jdt/internal/compiler/util/SuffixConstants;


# instance fields
.field protected createdElements:Ljava/util/ArrayList;

.field protected deltasPerProject:Ljava/util/Map;

.field protected parser:Lorg/eclipse/jdt/core/dom/ASTParser;


# direct methods
.method public constructor <init>([Lorg/eclipse/jdt/core/IJavaElement;[Lorg/eclipse/jdt/core/IJavaElement;Z)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/eclipse/jdt/internal/core/MultiOperation;-><init>([Lorg/eclipse/jdt/core/IJavaElement;[Lorg/eclipse/jdt/core/IJavaElement;Z)V

    new-instance p1, Ljava/util/HashMap;

    const/4 p2, 0x1

    invoke-direct {p1, p2}, Ljava/util/HashMap;-><init>(I)V

    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/CopyResourceElementsOperation;->deltasPerProject:Ljava/util/Map;

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/core/CopyResourceElementsOperation;->initializeASTParser()V

    return-void
.end method

.method private collectResourcesOfInterest(Lorg/eclipse/jdt/core/IPackageFragment;)[Lorg/eclipse/core/resources/IResource;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/JavaModelException;
        }
    .end annotation

    invoke-interface {p1}, Lorg/eclipse/jdt/core/IParent;->getChildren()[Lorg/eclipse/jdt/core/IJavaElement;

    move-result-object v0

    invoke-interface {p1}, Lorg/eclipse/jdt/core/IPackageFragment;->getKind()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    const/4 v1, 0x6

    goto :goto_0

    :cond_0
    const/4 v1, 0x5

    :goto_0
    new-instance v2, Ljava/util/ArrayList;

    array-length v3, v0

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v3, 0x0

    move v4, v3

    :goto_1
    array-length v5, v0

    if-lt v4, v5, :cond_6

    invoke-interface {p1}, Lorg/eclipse/jdt/core/IPackageFragment;->getNonJavaResources()[Ljava/lang/Object;

    move-result-object v5

    array-length v6, v5

    move p1, v3

    move v0, p1

    :goto_2
    if-lt p1, v6, :cond_4

    new-array v1, v0, [Lorg/eclipse/core/resources/IResource;

    array-length v4, v5

    move p1, v3

    move v6, p1

    :goto_3
    if-lt p1, v4, :cond_2

    if-eqz v0, :cond_1

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result p1

    add-int v4, p1, v0

    new-array v4, v4, [Lorg/eclipse/core/resources/IResource;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    invoke-static {v1, v3, v4, p1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v4

    :cond_1
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result p1

    new-array p1, p1, [Lorg/eclipse/core/resources/IResource;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    return-object p1

    :cond_2
    aget-object v7, v5, p1

    instance-of v8, v7, Lorg/eclipse/core/resources/IResource;

    if-eqz v8, :cond_3

    add-int/lit8 v8, v6, 0x1

    check-cast v7, Lorg/eclipse/core/resources/IResource;

    aput-object v7, v1, v6

    move v6, v8

    :cond_3
    add-int/lit8 p1, p1, 0x1

    goto :goto_3

    :cond_4
    aget-object v1, v5, p1

    instance-of v1, v1, Lorg/eclipse/core/resources/IResource;

    if-eqz v1, :cond_5

    add-int/lit8 v0, v0, 0x1

    :cond_5
    add-int/lit8 p1, p1, 0x1

    goto :goto_2

    :cond_6
    aget-object v5, v0, v4

    invoke-interface {v5}, Lorg/eclipse/jdt/core/IJavaElement;->getElementType()I

    move-result v6

    if-ne v6, v1, :cond_7

    check-cast v5, Lorg/eclipse/jdt/internal/core/JavaElement;

    invoke-virtual {v5}, Lorg/eclipse/jdt/internal/core/JavaElement;->resource()Lorg/eclipse/core/resources/IResource;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_7
    add-int/lit8 v4, v4, 0x1

    goto :goto_1
.end method

.method private createNeededPackageFragments(Lorg/eclipse/core/resources/IContainer;Lorg/eclipse/jdt/internal/core/PackageFragmentRoot;[Ljava/lang/String;Z)Z
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/JavaModelException;
        }
    .end annotation

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/core/PackageFragmentRoot;->resource()Lorg/eclipse/core/resources/IResource;

    move-result-object v0

    check-cast v0, Lorg/eclipse/core/resources/IContainer;

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/core/PackageFragmentRoot;->fullInclusionPatternChars()[[C

    move-result-object v1

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/core/PackageFragmentRoot;->fullExclusionPatternChars()[[C

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v5, v4

    move-object v6, v5

    move v4, v3

    :goto_0
    array-length v7, p3

    if-lt v3, v7, :cond_0

    return v4

    :cond_0
    aget-object v7, p3, v3

    invoke-static {v5, v7}, Lorg/eclipse/jdt/internal/core/util/Util;->arrayConcat([Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v7}, Lorg/eclipse/core/resources/IContainer;->findMember(Ljava/lang/String;)Lorg/eclipse/core/resources/IResource;

    move-result-object v8

    if-nez v8, :cond_6

    const/4 v8, 0x1

    if-eqz p4, :cond_1

    array-length v9, p3

    sub-int/2addr v9, v8

    if-eq v3, v9, :cond_2

    :cond_1
    iget-boolean v9, p0, Lorg/eclipse/jdt/internal/core/JavaModelOperation;->force:Z

    invoke-virtual {p0, v0, v7, v9}, Lorg/eclipse/jdt/internal/core/JavaModelOperation;->createFolder(Lorg/eclipse/core/resources/IContainer;Ljava/lang/String;Z)V

    :cond_2
    new-instance v9, Lorg/eclipse/core/runtime/Path;

    invoke-direct {v9, v7}, Lorg/eclipse/core/runtime/Path;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v9}, Lorg/eclipse/core/resources/IContainer;->getFolder(Lorg/eclipse/core/runtime/IPath;)Lorg/eclipse/core/resources/IFolder;

    move-result-object v0

    new-instance v9, Lorg/eclipse/core/runtime/Path;

    invoke-direct {v9, v7}, Lorg/eclipse/core/runtime/Path;-><init>(Ljava/lang/String;)V

    invoke-interface {p1, v9}, Lorg/eclipse/core/resources/IContainer;->getFolder(Lorg/eclipse/core/runtime/IPath;)Lorg/eclipse/core/resources/IFolder;

    move-result-object p1

    invoke-static {p1}, Lorg/eclipse/jdt/internal/core/util/Util;->isReadOnly(Lorg/eclipse/core/resources/IResource;)Z

    move-result v7

    if-eqz v7, :cond_3

    move v4, v8

    :cond_3
    invoke-virtual {p2, v5}, Lorg/eclipse/jdt/internal/core/PackageFragmentRoot;->getPackageFragment([Ljava/lang/String;)Lorg/eclipse/jdt/internal/core/PackageFragment;

    move-result-object v7

    array-length v9, p3

    sub-int/2addr v9, v8

    if-ge v3, v9, :cond_5

    invoke-static {v0, v1, v2}, Lorg/eclipse/jdt/internal/core/util/Util;->isExcluded(Lorg/eclipse/core/resources/IResource;[[C[[C)Z

    move-result v8

    if-nez v8, :cond_5

    if-nez v6, :cond_4

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/core/JavaElement;->getJavaProject()Lorg/eclipse/jdt/core/IJavaProject;

    move-result-object v6

    invoke-direct {p0, v6}, Lorg/eclipse/jdt/internal/core/CopyResourceElementsOperation;->getDeltaFor(Lorg/eclipse/jdt/core/IJavaProject;)Lorg/eclipse/jdt/internal/core/JavaElementDelta;

    move-result-object v6

    :cond_4
    invoke-virtual {v6, v7}, Lorg/eclipse/jdt/internal/core/JavaElementDelta;->added(Lorg/eclipse/jdt/core/IJavaElement;)V

    :cond_5
    iget-object v8, p0, Lorg/eclipse/jdt/internal/core/CopyResourceElementsOperation;->createdElements:Ljava/util/ArrayList;

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_6
    check-cast v8, Lorg/eclipse/core/resources/IContainer;

    move-object v0, v8

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method private getDeltaFor(Lorg/eclipse/jdt/core/IJavaProject;)Lorg/eclipse/jdt/internal/core/JavaElementDelta;
    .locals 2

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/CopyResourceElementsOperation;->deltasPerProject:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jdt/internal/core/JavaElementDelta;

    if-nez v0, :cond_0

    new-instance v0, Lorg/eclipse/jdt/internal/core/JavaElementDelta;

    invoke-direct {v0, p1}, Lorg/eclipse/jdt/internal/core/JavaElementDelta;-><init>(Lorg/eclipse/jdt/core/IJavaElement;)V

    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/CopyResourceElementsOperation;->deltasPerProject:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object v0
.end method

.method private getResource(Lorg/eclipse/jdt/core/IJavaElement;)Lorg/eclipse/core/resources/IResource;
    .locals 3

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    invoke-interface {p1}, Lorg/eclipse/jdt/core/IJavaElement;->getElementType()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    invoke-interface {p1}, Lorg/eclipse/jdt/core/IJavaElement;->getElementName()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x2e

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    invoke-interface {p1}, Lorg/eclipse/jdt/core/IJavaElement;->getParent()Lorg/eclipse/jdt/core/IJavaElement;

    move-result-object p1

    check-cast p1, Lorg/eclipse/jdt/core/IPackageFragmentRoot;

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lorg/eclipse/jdt/core/IPackageFragmentRoot;->getPackageFragment(Ljava/lang/String;)Lorg/eclipse/jdt/core/IPackageFragment;

    move-result-object p1

    :cond_1
    invoke-interface {p1}, Lorg/eclipse/jdt/core/IJavaElement;->getResource()Lorg/eclipse/core/resources/IResource;

    move-result-object p1

    return-object p1
.end method

.method private getSchedulingRule(Lorg/eclipse/jdt/core/IJavaElement;)Lorg/eclipse/core/runtime/jobs/ISchedulingRule;
    .locals 0

    const/4 p0, 0x0

    throw p0
.end method

.method private initializeASTParser()V
    .locals 1

    const/16 v0, 0xb

    invoke-static {v0}, Lorg/eclipse/jdt/core/dom/ASTParser;->newParser(I)Lorg/eclipse/jdt/core/dom/ASTParser;

    move-result-object v0

    iput-object v0, p0, Lorg/eclipse/jdt/internal/core/CopyResourceElementsOperation;->parser:Lorg/eclipse/jdt/core/dom/ASTParser;

    return-void
.end method

.method private processCompilationUnitResource(Lorg/eclipse/jdt/core/ICompilationUnit;Lorg/eclipse/jdt/internal/core/PackageFragment;)V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/JavaModelException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/internal/core/MultiOperation;->getNewNameFor(Lorg/eclipse/jdt/core/IJavaElement;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    move-object v4, v0

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Lorg/eclipse/jdt/core/IJavaElement;->getElementName()Ljava/lang/String;

    move-result-object v1

    move-object v4, v1

    :goto_0
    invoke-direct {p0, p1, p2, v0}, Lorg/eclipse/jdt/internal/core/CopyResourceElementsOperation;->updateContent(Lorg/eclipse/jdt/core/ICompilationUnit;Lorg/eclipse/jdt/internal/core/PackageFragment;Ljava/lang/String;)Lorg/eclipse/text/edits/TextEdit;

    move-result-object v5

    invoke-interface {p1}, Lorg/eclipse/jdt/core/IJavaElement;->getResource()Lorg/eclipse/core/resources/IResource;

    move-result-object v1

    check-cast v1, Lorg/eclipse/core/resources/IFile;

    const/4 v8, 0x0

    :try_start_0
    invoke-interface {v1, v8}, Lorg/eclipse/core/resources/IFile;->getCharset(Z)Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catch Lorg/eclipse/core/runtime/CoreException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    move-object v6, v2

    goto :goto_2

    :catch_0
    const/4 v2, 0x0

    goto :goto_1

    :goto_2
    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/core/Openable;->getResource()Lorg/eclipse/core/resources/IResource;

    move-result-object v2

    check-cast v2, Lorg/eclipse/core/resources/IContainer;

    new-instance v3, Lorg/eclipse/core/runtime/Path;

    invoke-direct {v3, v4}, Lorg/eclipse/core/runtime/Path;-><init>(Ljava/lang/String;)V

    invoke-interface {v2, v3}, Lorg/eclipse/core/resources/IContainer;->getFile(Lorg/eclipse/core/runtime/IPath;)Lorg/eclipse/core/resources/IFile;

    move-result-object v9

    new-instance v10, Lorg/eclipse/jdt/internal/core/CompilationUnit;

    sget-object v2, Lorg/eclipse/jdt/internal/core/DefaultWorkingCopyOwner;->PRIMARY:Lorg/eclipse/jdt/internal/core/DefaultWorkingCopyOwner;

    invoke-direct {v10, p2, v4, v2}, Lorg/eclipse/jdt/internal/core/CompilationUnit;-><init>(Lorg/eclipse/jdt/internal/core/PackageFragment;Ljava/lang/String;Lorg/eclipse/jdt/core/WorkingCopyOwner;)V

    invoke-virtual {v9, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/16 v3, 0x3d1

    if-nez v2, :cond_9

    :try_start_1
    invoke-virtual {v10}, Lorg/eclipse/jdt/internal/core/CompilationUnit;->isWorkingCopy()Z

    move-result v2

    const/4 v11, 0x1

    if-nez v2, :cond_5

    invoke-interface {v9}, Lorg/eclipse/core/resources/IFile;->exists()Z

    move-result v2

    const/4 v7, 0x2

    if-eqz v2, :cond_2

    iget-boolean v2, p0, Lorg/eclipse/jdt/internal/core/JavaModelOperation;->force:Z

    if-eqz v2, :cond_1

    invoke-virtual {p0, v9, v7}, Lorg/eclipse/jdt/internal/core/JavaModelOperation;->deleteResource(Lorg/eclipse/core/resources/IResource;I)V

    invoke-virtual {v10}, Lorg/eclipse/jdt/internal/core/CompilationUnit;->close()V

    goto :goto_3

    :catch_1
    move-exception p1

    goto/16 :goto_9

    :catch_2
    move-exception p1

    goto/16 :goto_a

    :cond_1
    new-instance p1, Lorg/eclipse/jdt/core/JavaModelException;

    new-instance p2, Lorg/eclipse/jdt/internal/core/JavaModelStatus;

    sget-object v0, Lorg/eclipse/jdt/internal/core/util/Messages;->status_nameCollision:Ljava/lang/String;

    invoke-interface {v9}, Lorg/eclipse/core/resources/IFile;->getFullPath()Lorg/eclipse/core/runtime/IPath;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/eclipse/jdt/internal/core/util/Messages;->bind(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, v3, v0}, Lorg/eclipse/jdt/internal/core/JavaModelStatus;-><init>(ILjava/lang/String;)V

    invoke-direct {p1, p2}, Lorg/eclipse/jdt/core/JavaModelException;-><init>(Lorg/eclipse/jdt/core/IJavaModelStatus;)V

    throw p1

    :cond_2
    :goto_3
    iget-boolean v2, p0, Lorg/eclipse/jdt/internal/core/JavaModelOperation;->force:Z

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/MultiOperation;->isMove()Z

    move-result v3

    if-eqz v3, :cond_3

    or-int/2addr v2, v7

    invoke-interface {v9}, Lorg/eclipse/core/resources/IFile;->getFullPath()Lorg/eclipse/core/runtime/IPath;

    move-result-object v3

    invoke-virtual {p0, v11}, Lorg/eclipse/jdt/internal/core/JavaModelOperation;->getSubProgressMonitor(I)Lorg/eclipse/core/runtime/IProgressMonitor;

    move-result-object v7

    invoke-interface {v1, v3, v2, v7}, Lorg/eclipse/core/resources/IFile;->move(Lorg/eclipse/core/runtime/IPath;ILorg/eclipse/core/runtime/IProgressMonitor;)V

    goto :goto_4

    :cond_3
    if-eqz v5, :cond_4

    or-int/lit8 v2, v2, 0x2

    :cond_4
    invoke-interface {v9}, Lorg/eclipse/core/resources/IFile;->getFullPath()Lorg/eclipse/core/runtime/IPath;

    move-result-object v3

    invoke-virtual {p0, v11}, Lorg/eclipse/jdt/internal/core/JavaModelOperation;->getSubProgressMonitor(I)Lorg/eclipse/core/runtime/IProgressMonitor;

    move-result-object v7

    invoke-interface {v1, v3, v2, v7}, Lorg/eclipse/core/resources/IFile;->copy(Lorg/eclipse/core/runtime/IPath;ILorg/eclipse/core/runtime/IProgressMonitor;)V

    :goto_4
    const-string v1, "hasModifiedResource"

    const-string v2, "true"

    invoke-static {v1, v2}, Lorg/eclipse/jdt/internal/core/JavaModelOperation;->setAttribute(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_5

    :cond_5
    invoke-virtual {v10}, Lorg/eclipse/jdt/internal/core/Openable;->getBuffer()Lorg/eclipse/jdt/core/IBuffer;

    move-result-object v1

    invoke-interface {p1}, Lorg/eclipse/jdt/core/IOpenable;->getBuffer()Lorg/eclipse/jdt/core/IBuffer;

    move-result-object v2

    invoke-interface {v2}, Lorg/eclipse/jdt/core/IBuffer;->getContents()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/eclipse/jdt/core/IBuffer;->setContents(Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/eclipse/jdt/core/JavaModelException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Lorg/eclipse/core/runtime/CoreException; {:try_start_1 .. :try_end_1} :catch_1

    :goto_5
    if-eqz v5, :cond_7

    invoke-interface {v9}, Lorg/eclipse/core/resources/IFile;->isReadOnly()Z

    move-result v1

    move-object v2, p0

    move-object v3, p2

    move-object v7, v9

    :try_start_2
    invoke-direct/range {v2 .. v7}, Lorg/eclipse/jdt/internal/core/CopyResourceElementsOperation;->saveContent(Lorg/eclipse/jdt/internal/core/PackageFragment;Ljava/lang/String;Lorg/eclipse/text/edits/TextEdit;Ljava/lang/String;Lorg/eclipse/core/resources/IFile;)V
    :try_end_2
    .catch Lorg/eclipse/core/runtime/CoreException; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {v9, v1}, Lorg/eclipse/jdt/internal/core/util/Util;->setReadOnly(Lorg/eclipse/core/resources/IResource;Z)V

    goto :goto_7

    :catchall_0
    move-exception p1

    goto :goto_6

    :catch_3
    move-exception p1

    :try_start_3
    instance-of p2, p1, Lorg/eclipse/jdt/core/JavaModelException;

    if-eqz p2, :cond_6

    check-cast p1, Lorg/eclipse/jdt/core/JavaModelException;

    throw p1

    :cond_6
    new-instance p2, Lorg/eclipse/jdt/core/JavaModelException;

    invoke-direct {p2, p1}, Lorg/eclipse/jdt/core/JavaModelException;-><init>(Lorg/eclipse/core/runtime/CoreException;)V

    throw p2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_6
    invoke-static {v9, v1}, Lorg/eclipse/jdt/internal/core/util/Util;->setReadOnly(Lorg/eclipse/core/resources/IResource;Z)V

    throw p1

    :cond_7
    :goto_7
    iget-boolean p2, p0, Lorg/eclipse/jdt/internal/core/JavaModelOperation;->force:Z

    if-eqz p2, :cond_8

    invoke-interface {v9}, Lorg/eclipse/core/resources/IFile;->exists()Z

    move-result p2

    if-eqz p2, :cond_8

    goto :goto_8

    :cond_8
    move v11, v8

    :goto_8
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/MultiOperation;->isMove()Z

    move-result p2

    invoke-virtual {p0, p1, v10, p2, v11}, Lorg/eclipse/jdt/internal/core/CopyResourceElementsOperation;->prepareDeltas(Lorg/eclipse/jdt/core/IJavaElement;Lorg/eclipse/jdt/core/IJavaElement;ZZ)V

    if-eqz v0, :cond_a

    invoke-interface {p1}, Lorg/eclipse/jdt/core/IJavaElement;->getElementName()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lorg/eclipse/jdt/internal/core/util/Util;->getNameWithoutJavaLikeExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {v0}, Lorg/eclipse/jdt/internal/core/util/Util;->getNameWithoutJavaLikeExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, p2}, Lorg/eclipse/jdt/core/ICompilationUnit;->getType(Ljava/lang/String;)Lorg/eclipse/jdt/core/IType;

    move-result-object p1

    invoke-virtual {v10, v0}, Lorg/eclipse/jdt/internal/core/CompilationUnit;->getType(Ljava/lang/String;)Lorg/eclipse/jdt/core/IType;

    move-result-object p2

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/MultiOperation;->isMove()Z

    move-result v0

    invoke-virtual {p0, p1, p2, v0, v8}, Lorg/eclipse/jdt/internal/core/CopyResourceElementsOperation;->prepareDeltas(Lorg/eclipse/jdt/core/IJavaElement;Lorg/eclipse/jdt/core/IJavaElement;ZZ)V

    goto :goto_b

    :goto_9
    new-instance p2, Lorg/eclipse/jdt/core/JavaModelException;

    invoke-direct {p2, p1}, Lorg/eclipse/jdt/core/JavaModelException;-><init>(Lorg/eclipse/core/runtime/CoreException;)V

    throw p2

    :goto_a
    throw p1

    :cond_9
    iget-boolean p1, p0, Lorg/eclipse/jdt/internal/core/JavaModelOperation;->force:Z

    if-eqz p1, :cond_b

    if-eqz v5, :cond_a

    move-object v2, p0

    move-object v3, p2

    move-object v7, v9

    invoke-direct/range {v2 .. v7}, Lorg/eclipse/jdt/internal/core/CopyResourceElementsOperation;->saveContent(Lorg/eclipse/jdt/internal/core/PackageFragment;Ljava/lang/String;Lorg/eclipse/text/edits/TextEdit;Ljava/lang/String;Lorg/eclipse/core/resources/IFile;)V

    :cond_a
    :goto_b
    return-void

    :cond_b
    new-instance p1, Lorg/eclipse/jdt/core/JavaModelException;

    new-instance p2, Lorg/eclipse/jdt/internal/core/JavaModelStatus;

    sget-object v0, Lorg/eclipse/jdt/internal/core/util/Messages;->status_nameCollision:Ljava/lang/String;

    invoke-interface {v9}, Lorg/eclipse/core/resources/IFile;->getFullPath()Lorg/eclipse/core/runtime/IPath;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/eclipse/jdt/internal/core/util/Messages;->bind(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, v3, v0}, Lorg/eclipse/jdt/internal/core/JavaModelStatus;-><init>(ILjava/lang/String;)V

    invoke-direct {p1, p2}, Lorg/eclipse/jdt/core/JavaModelException;-><init>(Lorg/eclipse/jdt/core/IJavaModelStatus;)V

    throw p1
.end method

.method private processPackageFragmentResource(Lorg/eclipse/jdt/internal/core/PackageFragment;Lorg/eclipse/jdt/internal/core/PackageFragmentRoot;Ljava/lang/String;)V
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/JavaModelException;
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move-object/from16 v2, p2

    if-nez p3, :cond_0

    :try_start_0
    iget-object v3, v0, Lorg/eclipse/jdt/internal/core/PackageFragment;->names:[Ljava/lang/String;

    goto :goto_0

    :catch_0
    move-exception v0

    goto/16 :goto_13

    :catch_1
    move-exception v0

    goto/16 :goto_14

    :cond_0
    invoke-static/range {p3 .. p3}, Lorg/eclipse/jdt/internal/core/util/Util;->getTrimmedSimpleNames(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    :goto_0
    invoke-virtual {v2, v3}, Lorg/eclipse/jdt/internal/core/PackageFragmentRoot;->getPackageFragment([Ljava/lang/String;)Lorg/eclipse/jdt/internal/core/PackageFragment;

    move-result-object v4

    invoke-direct/range {p0 .. p1}, Lorg/eclipse/jdt/internal/core/CopyResourceElementsOperation;->collectResourcesOfInterest(Lorg/eclipse/jdt/core/IPackageFragment;)[Lorg/eclipse/core/resources/IResource;

    move-result-object v5

    invoke-virtual/range {p0 .. p0}, Lorg/eclipse/jdt/internal/core/MultiOperation;->isMove()Z

    move-result v6

    const/4 v7, 0x1

    const/4 v8, 0x0

    if-eqz v6, :cond_1

    invoke-virtual {v4}, Lorg/eclipse/jdt/internal/core/Openable;->resource()Lorg/eclipse/core/resources/IResource;

    move-result-object v6

    invoke-interface {v6}, Lorg/eclipse/core/resources/IResource;->exists()Z

    move-result v6

    if-nez v6, :cond_1

    move v6, v7

    goto :goto_1

    :cond_1
    move v6, v8

    :goto_1
    invoke-virtual/range {p1 .. p1}, Lorg/eclipse/jdt/internal/core/Openable;->resource()Lorg/eclipse/core/resources/IResource;

    move-result-object v9

    check-cast v9, Lorg/eclipse/core/resources/IFolder;

    invoke-virtual {v4}, Lorg/eclipse/jdt/internal/core/PackageFragment;->getPath()Lorg/eclipse/core/runtime/IPath;

    move-result-object v10

    if-eqz v6, :cond_5

    invoke-interface {v9}, Lorg/eclipse/core/resources/IFolder;->getFullPath()Lorg/eclipse/core/runtime/IPath;

    move-result-object v11

    invoke-interface {v11, v10}, Lorg/eclipse/core/runtime/IPath;->isPrefixOf(Lorg/eclipse/core/runtime/IPath;)Z

    move-result v11

    if-eqz v11, :cond_2

    :goto_2
    move v6, v8

    goto :goto_4

    :cond_2
    invoke-interface {v9}, Lorg/eclipse/core/resources/IFolder;->members()[Lorg/eclipse/core/resources/IResource;

    move-result-object v11

    move v12, v8

    :goto_3
    array-length v13, v11

    if-lt v12, v13, :cond_3

    goto :goto_4

    :cond_3
    aget-object v13, v11, v12

    instance-of v13, v13, Lorg/eclipse/core/resources/IFolder;

    if-eqz v13, :cond_4

    goto :goto_2

    :cond_4
    add-int/lit8 v12, v12, 0x1

    goto :goto_3

    :cond_5
    :goto_4
    iget-object v11, v0, Lorg/eclipse/jdt/internal/core/JavaElement;->parent:Lorg/eclipse/jdt/internal/core/JavaElement;

    invoke-virtual {v11}, Lorg/eclipse/jdt/internal/core/JavaElement;->resource()Lorg/eclipse/core/resources/IResource;

    move-result-object v11

    check-cast v11, Lorg/eclipse/core/resources/IContainer;

    invoke-direct {v1, v11, v2, v3, v6}, Lorg/eclipse/jdt/internal/core/CopyResourceElementsOperation;->createNeededPackageFragments(Lorg/eclipse/core/resources/IContainer;Lorg/eclipse/jdt/internal/core/PackageFragmentRoot;[Ljava/lang/String;Z)Z

    move-result v11

    invoke-static {v9}, Lorg/eclipse/jdt/internal/core/util/Util;->isReadOnly(Lorg/eclipse/core/resources/IResource;)Z

    move-result v12

    if-eqz v6, :cond_8

    if-eqz v12, :cond_6

    invoke-static {v9, v8}, Lorg/eclipse/jdt/internal/core/util/Util;->setReadOnly(Lorg/eclipse/core/resources/IResource;Z)V

    :cond_6
    iget-boolean v6, v1, Lorg/eclipse/jdt/internal/core/JavaModelOperation;->force:Z

    invoke-virtual {v1, v7}, Lorg/eclipse/jdt/internal/core/JavaModelOperation;->getSubProgressMonitor(I)Lorg/eclipse/core/runtime/IProgressMonitor;

    move-result-object v13

    invoke-interface {v9, v10, v6, v7, v13}, Lorg/eclipse/core/resources/IFolder;->move(Lorg/eclipse/core/runtime/IPath;ZZLorg/eclipse/core/runtime/IProgressMonitor;)V

    if-eqz v12, :cond_7

    invoke-static {v9, v7}, Lorg/eclipse/jdt/internal/core/util/Util;->setReadOnly(Lorg/eclipse/core/resources/IResource;Z)V

    :cond_7
    const-string v6, "hasModifiedResource"

    const-string v13, "true"

    invoke-static {v6, v13}, Lorg/eclipse/jdt/internal/core/JavaModelOperation;->setAttribute(Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_9

    :cond_8
    array-length v6, v5

    if-lez v6, :cond_11

    invoke-virtual/range {p0 .. p0}, Lorg/eclipse/jdt/internal/core/MultiOperation;->isRename()Z

    move-result v6

    if-eqz v6, :cond_9

    invoke-virtual/range {p1 .. p1}, Lorg/eclipse/jdt/internal/core/PackageFragment;->getPath()Lorg/eclipse/core/runtime/IPath;

    move-result-object v6

    invoke-virtual {v10, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_11

    invoke-virtual {v1, v5, v10}, Lorg/eclipse/jdt/internal/core/JavaModelOperation;->moveResources([Lorg/eclipse/core/resources/IResource;Lorg/eclipse/core/runtime/IPath;)V

    goto/16 :goto_9

    :cond_9
    invoke-virtual/range {p0 .. p0}, Lorg/eclipse/jdt/internal/core/MultiOperation;->isMove()Z

    move-result v6

    const/16 v13, 0x3d1

    const/4 v14, 0x2

    if-eqz v6, :cond_d

    array-length v6, v5

    move v15, v8

    :goto_5
    if-lt v15, v6, :cond_a

    invoke-virtual {v1, v5, v10}, Lorg/eclipse/jdt/internal/core/JavaModelOperation;->moveResources([Lorg/eclipse/core/resources/IResource;Lorg/eclipse/core/runtime/IPath;)V

    goto/16 :goto_9

    :cond_a
    invoke-static {}, Lorg/eclipse/core/resources/ResourcesPlugin;->getWorkspace()Lorg/eclipse/core/resources/IWorkspace;

    move-result-object v16

    invoke-interface/range {v16 .. v16}, Lorg/eclipse/core/resources/IWorkspace;->getRoot()Lorg/eclipse/core/resources/IWorkspaceRoot;

    move-result-object v7

    aget-object v16, v5, v15

    invoke-interface/range {v16 .. v16}, Lorg/eclipse/core/resources/IResource;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v10, v8}, Lorg/eclipse/core/runtime/IPath;->append(Ljava/lang/String;)Lorg/eclipse/core/runtime/IPath;

    move-result-object v8

    invoke-interface {v7, v8}, Lorg/eclipse/core/resources/IWorkspaceRoot;->findMember(Lorg/eclipse/core/runtime/IPath;)Lorg/eclipse/core/resources/IResource;

    move-result-object v7

    if-eqz v7, :cond_c

    iget-boolean v8, v1, Lorg/eclipse/jdt/internal/core/JavaModelOperation;->force:Z

    if-eqz v8, :cond_b

    invoke-virtual {v1, v7, v14}, Lorg/eclipse/jdt/internal/core/JavaModelOperation;->deleteResource(Lorg/eclipse/core/resources/IResource;I)V

    goto :goto_6

    :cond_b
    new-instance v0, Lorg/eclipse/jdt/core/JavaModelException;

    new-instance v2, Lorg/eclipse/jdt/internal/core/JavaModelStatus;

    sget-object v3, Lorg/eclipse/jdt/internal/core/util/Messages;->status_nameCollision:Ljava/lang/String;

    invoke-interface {v7}, Lorg/eclipse/core/resources/IResource;->getFullPath()Lorg/eclipse/core/runtime/IPath;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lorg/eclipse/jdt/internal/core/util/Messages;->bind(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v13, v3}, Lorg/eclipse/jdt/internal/core/JavaModelStatus;-><init>(ILjava/lang/String;)V

    invoke-direct {v0, v2}, Lorg/eclipse/jdt/core/JavaModelException;-><init>(Lorg/eclipse/jdt/core/IJavaModelStatus;)V

    throw v0

    :cond_c
    :goto_6
    add-int/lit8 v15, v15, 0x1

    const/4 v7, 0x1

    const/4 v8, 0x0

    goto :goto_5

    :cond_d
    array-length v6, v5

    const/4 v7, 0x0

    :goto_7
    if-lt v7, v6, :cond_e

    invoke-virtual {v1, v5, v10}, Lorg/eclipse/jdt/internal/core/JavaModelOperation;->copyResources([Lorg/eclipse/core/resources/IResource;Lorg/eclipse/core/runtime/IPath;)V

    goto :goto_9

    :cond_e
    invoke-static {}, Lorg/eclipse/core/resources/ResourcesPlugin;->getWorkspace()Lorg/eclipse/core/resources/IWorkspace;

    move-result-object v8

    invoke-interface {v8}, Lorg/eclipse/core/resources/IWorkspace;->getRoot()Lorg/eclipse/core/resources/IWorkspaceRoot;

    move-result-object v8

    aget-object v15, v5, v7

    invoke-interface {v15}, Lorg/eclipse/core/resources/IResource;->getName()Ljava/lang/String;

    move-result-object v15

    invoke-interface {v10, v15}, Lorg/eclipse/core/runtime/IPath;->append(Ljava/lang/String;)Lorg/eclipse/core/runtime/IPath;

    move-result-object v15

    invoke-interface {v8, v15}, Lorg/eclipse/core/resources/IWorkspaceRoot;->findMember(Lorg/eclipse/core/runtime/IPath;)Lorg/eclipse/core/resources/IResource;

    move-result-object v8

    if-eqz v8, :cond_10

    iget-boolean v15, v1, Lorg/eclipse/jdt/internal/core/JavaModelOperation;->force:Z

    if-eqz v15, :cond_f

    invoke-virtual {v1, v8, v14}, Lorg/eclipse/jdt/internal/core/JavaModelOperation;->deleteResource(Lorg/eclipse/core/resources/IResource;I)V

    goto :goto_8

    :cond_f
    new-instance v0, Lorg/eclipse/jdt/core/JavaModelException;

    new-instance v2, Lorg/eclipse/jdt/internal/core/JavaModelStatus;

    sget-object v3, Lorg/eclipse/jdt/internal/core/util/Messages;->status_nameCollision:Ljava/lang/String;

    invoke-interface {v8}, Lorg/eclipse/core/resources/IResource;->getFullPath()Lorg/eclipse/core/runtime/IPath;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lorg/eclipse/jdt/internal/core/util/Messages;->bind(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v13, v3}, Lorg/eclipse/jdt/internal/core/JavaModelStatus;-><init>(ILjava/lang/String;)V

    invoke-direct {v0, v2}, Lorg/eclipse/jdt/core/JavaModelException;-><init>(Lorg/eclipse/jdt/core/IJavaModelStatus;)V

    throw v0

    :cond_10
    :goto_8
    add-int/lit8 v7, v7, 0x1

    goto :goto_7

    :cond_11
    :goto_9
    iget-object v6, v0, Lorg/eclipse/jdt/internal/core/PackageFragment;->names:[Ljava/lang/String;

    invoke-static {v3, v6}, Lorg/eclipse/jdt/internal/core/util/Util;->equalArraysOrNull([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_15

    invoke-virtual/range {p2 .. p2}, Lorg/eclipse/jdt/internal/core/PackageFragmentRoot;->fullInclusionPatternChars()[[C

    move-result-object v6

    invoke-virtual/range {p2 .. p2}, Lorg/eclipse/jdt/internal/core/PackageFragmentRoot;->fullExclusionPatternChars()[[C

    move-result-object v7

    const/4 v8, 0x0

    :goto_a
    array-length v13, v5

    if-lt v8, v13, :cond_12

    goto :goto_c

    :cond_12
    aget-object v13, v5, v8

    invoke-interface {v13}, Lorg/eclipse/core/resources/IResource;->getName()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lorg/eclipse/jdt/internal/core/util/Util;->isJavaLikeFileName(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_14

    invoke-virtual {v4, v13}, Lorg/eclipse/jdt/internal/core/PackageFragment;->getCompilationUnit(Ljava/lang/String;)Lorg/eclipse/jdt/core/ICompilationUnit;

    move-result-object v13

    invoke-interface {v13}, Lorg/eclipse/jdt/core/IJavaElement;->getPath()Lorg/eclipse/core/runtime/IPath;

    move-result-object v14

    const/4 v15, 0x0

    invoke-static {v14, v6, v7, v15}, Lorg/eclipse/jdt/internal/core/util/Util;->isExcluded(Lorg/eclipse/core/runtime/IPath;[[C[[CZ)Z

    move-result v14

    if-eqz v14, :cond_13

    goto :goto_b

    :cond_13
    iget-object v14, v1, Lorg/eclipse/jdt/internal/core/CopyResourceElementsOperation;->parser:Lorg/eclipse/jdt/core/dom/ASTParser;

    invoke-virtual {v14, v13}, Lorg/eclipse/jdt/core/dom/ASTParser;->setSource(Lorg/eclipse/jdt/core/ICompilationUnit;)V

    iget-object v14, v1, Lorg/eclipse/jdt/internal/core/CopyResourceElementsOperation;->parser:Lorg/eclipse/jdt/core/dom/ASTParser;

    iget-object v15, v1, Lorg/eclipse/jdt/internal/core/JavaModelOperation;->progressMonitor:Lorg/eclipse/core/runtime/SubMonitor;

    invoke-virtual {v14, v15}, Lorg/eclipse/jdt/core/dom/ASTParser;->createAST(Lorg/eclipse/core/runtime/IProgressMonitor;)Lorg/eclipse/jdt/core/dom/ASTNode;

    move-result-object v14

    check-cast v14, Lorg/eclipse/jdt/core/dom/CompilationUnit;

    invoke-virtual {v14}, Lorg/eclipse/jdt/core/dom/ASTNode;->getAST()Lorg/eclipse/jdt/core/dom/AST;

    move-result-object v15

    invoke-static {v15}, Lorg/eclipse/jdt/core/dom/rewrite/ASTRewrite;->create(Lorg/eclipse/jdt/core/dom/AST;)Lorg/eclipse/jdt/core/dom/rewrite/ASTRewrite;

    move-result-object v15

    invoke-direct {v1, v14, v3, v15, v13}, Lorg/eclipse/jdt/internal/core/CopyResourceElementsOperation;->updatePackageStatement(Lorg/eclipse/jdt/core/dom/CompilationUnit;[Ljava/lang/String;Lorg/eclipse/jdt/core/dom/rewrite/ASTRewrite;Lorg/eclipse/jdt/core/ICompilationUnit;)V

    invoke-virtual {v15}, Lorg/eclipse/jdt/core/dom/rewrite/ASTRewrite;->rewriteAST()Lorg/eclipse/text/edits/TextEdit;

    move-result-object v14

    invoke-virtual {v1, v13, v14}, Lorg/eclipse/jdt/internal/core/JavaModelOperation;->applyTextEdit(Lorg/eclipse/jdt/core/ICompilationUnit;Lorg/eclipse/text/edits/TextEdit;)V

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-interface {v13, v14, v15}, Lorg/eclipse/jdt/core/IOpenable;->save(Lorg/eclipse/core/runtime/IProgressMonitor;Z)V

    :cond_14
    :goto_b
    add-int/lit8 v8, v8, 0x1

    goto :goto_a

    :cond_15
    :goto_c
    invoke-virtual/range {p0 .. p0}, Lorg/eclipse/jdt/internal/core/MultiOperation;->isMove()Z

    move-result v5

    if-eqz v5, :cond_1b

    iget-object v5, v0, Lorg/eclipse/jdt/internal/core/JavaElement;->parent:Lorg/eclipse/jdt/internal/core/JavaElement;

    invoke-virtual {v5}, Lorg/eclipse/jdt/internal/core/JavaElement;->resource()Lorg/eclipse/core/resources/IResource;

    move-result-object v5

    check-cast v5, Lorg/eclipse/core/resources/IContainer;

    invoke-direct {v1, v5, v2, v3, v12}, Lorg/eclipse/jdt/internal/core/CopyResourceElementsOperation;->updateReadOnlyPackageFragmentsForMove(Lorg/eclipse/core/resources/IContainer;Lorg/eclipse/jdt/internal/core/PackageFragmentRoot;[Ljava/lang/String;Z)V

    invoke-interface {v9}, Lorg/eclipse/core/resources/IFolder;->exists()Z

    move-result v2

    if-eqz v2, :cond_19

    invoke-interface {v9}, Lorg/eclipse/core/resources/IFolder;->members()[Lorg/eclipse/core/resources/IResource;

    move-result-object v2

    array-length v3, v2

    const/4 v7, 0x1

    const/4 v15, 0x0

    :goto_d
    if-lt v15, v3, :cond_16

    goto :goto_f

    :cond_16
    aget-object v5, v2, v15

    instance-of v6, v5, Lorg/eclipse/core/resources/IFile;

    if-eqz v6, :cond_18

    invoke-static {v5}, Lorg/eclipse/jdt/internal/core/util/Util;->isReadOnly(Lorg/eclipse/core/resources/IResource;)Z

    move-result v6

    if-eqz v6, :cond_17

    const/4 v6, 0x0

    invoke-static {v5, v6}, Lorg/eclipse/jdt/internal/core/util/Util;->setReadOnly(Lorg/eclipse/core/resources/IResource;Z)V

    :cond_17
    const/4 v6, 0x3

    invoke-virtual {v1, v5, v6}, Lorg/eclipse/jdt/internal/core/JavaModelOperation;->deleteResource(Lorg/eclipse/core/resources/IResource;I)V

    goto :goto_e

    :cond_18
    const/4 v7, 0x0

    :goto_e
    add-int/lit8 v15, v15, 0x1

    goto :goto_d

    :cond_19
    const/4 v7, 0x1

    :goto_f
    if-eqz v7, :cond_1d

    invoke-interface {v9}, Lorg/eclipse/core/resources/IFolder;->getFullPath()Lorg/eclipse/core/runtime/IPath;

    move-result-object v2

    invoke-interface {v10, v2}, Lorg/eclipse/core/runtime/IPath;->isPrefixOf(Lorg/eclipse/core/runtime/IPath;)Z

    move-result v2

    if-eqz v2, :cond_1a

    invoke-virtual {v4}, Lorg/eclipse/jdt/internal/core/Openable;->resource()Lorg/eclipse/core/resources/IResource;

    move-result-object v2

    :goto_10
    const/4 v3, 0x0

    goto :goto_11

    :cond_1a
    iget-object v2, v0, Lorg/eclipse/jdt/internal/core/JavaElement;->parent:Lorg/eclipse/jdt/internal/core/JavaElement;

    invoke-virtual {v2}, Lorg/eclipse/jdt/internal/core/JavaElement;->resource()Lorg/eclipse/core/resources/IResource;

    move-result-object v2

    goto :goto_10

    :goto_11
    invoke-virtual {v1, v0, v3, v2}, Lorg/eclipse/jdt/internal/core/JavaModelOperation;->deleteEmptyPackageFragment(Lorg/eclipse/jdt/core/IPackageFragment;ZLorg/eclipse/core/resources/IResource;)V

    goto :goto_12

    :cond_1b
    if-eqz v11, :cond_1c

    iget-object v5, v0, Lorg/eclipse/jdt/internal/core/JavaElement;->parent:Lorg/eclipse/jdt/internal/core/JavaElement;

    invoke-virtual {v5}, Lorg/eclipse/jdt/internal/core/JavaElement;->resource()Lorg/eclipse/core/resources/IResource;

    move-result-object v5

    check-cast v5, Lorg/eclipse/core/resources/IContainer;

    invoke-direct {v1, v5, v2, v3}, Lorg/eclipse/jdt/internal/core/CopyResourceElementsOperation;->updateReadOnlyPackageFragmentsForCopy(Lorg/eclipse/core/resources/IContainer;Lorg/eclipse/jdt/internal/core/PackageFragmentRoot;[Ljava/lang/String;)V

    :cond_1c
    const/4 v7, 0x1

    :cond_1d
    :goto_12
    if-eqz v7, :cond_1e

    invoke-virtual/range {p0 .. p0}, Lorg/eclipse/jdt/internal/core/MultiOperation;->isMove()Z

    move-result v2

    if-eqz v2, :cond_1e

    invoke-static/range {p1 .. p1}, Lorg/eclipse/jdt/internal/core/util/Util;->isExcluded(Lorg/eclipse/jdt/core/IJavaElement;)Z

    move-result v2

    if-nez v2, :cond_1e

    invoke-static {v4}, Lorg/eclipse/jdt/internal/core/util/Util;->isExcluded(Lorg/eclipse/jdt/core/IJavaElement;)Z

    move-result v2

    if-nez v2, :cond_1e

    invoke-virtual/range {p1 .. p1}, Lorg/eclipse/jdt/internal/core/JavaElement;->getJavaProject()Lorg/eclipse/jdt/core/IJavaProject;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/eclipse/jdt/internal/core/CopyResourceElementsOperation;->getDeltaFor(Lorg/eclipse/jdt/core/IJavaProject;)Lorg/eclipse/jdt/internal/core/JavaElementDelta;

    move-result-object v2

    invoke-virtual {v2, v0, v4}, Lorg/eclipse/jdt/internal/core/JavaElementDelta;->movedFrom(Lorg/eclipse/jdt/core/IJavaElement;Lorg/eclipse/jdt/core/IJavaElement;)V

    invoke-virtual {v4}, Lorg/eclipse/jdt/internal/core/JavaElement;->getJavaProject()Lorg/eclipse/jdt/core/IJavaProject;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/eclipse/jdt/internal/core/CopyResourceElementsOperation;->getDeltaFor(Lorg/eclipse/jdt/core/IJavaProject;)Lorg/eclipse/jdt/internal/core/JavaElementDelta;

    move-result-object v2

    invoke-virtual {v2, v4, v0}, Lorg/eclipse/jdt/internal/core/JavaElementDelta;->movedTo(Lorg/eclipse/jdt/core/IJavaElement;Lorg/eclipse/jdt/core/IJavaElement;)V
    :try_end_0
    .catch Lorg/eclipse/jdt/core/JavaModelException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/eclipse/core/runtime/CoreException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1e
    return-void

    :goto_13
    new-instance v2, Lorg/eclipse/jdt/core/JavaModelException;

    invoke-direct {v2, v0}, Lorg/eclipse/jdt/core/JavaModelException;-><init>(Lorg/eclipse/core/runtime/CoreException;)V

    throw v2

    :goto_14
    throw v0
.end method

.method private saveContent(Lorg/eclipse/jdt/internal/core/PackageFragment;Ljava/lang/String;Lorg/eclipse/text/edits/TextEdit;Ljava/lang/String;Lorg/eclipse/core/resources/IFile;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/JavaModelException;
        }
    .end annotation

    if-eqz p4, :cond_0

    :try_start_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/JavaModelOperation;->progressMonitor:Lorg/eclipse/core/runtime/SubMonitor;

    invoke-interface {p5, p4, v0}, Lorg/eclipse/core/resources/IFile;->setCharset(Ljava/lang/String;Lorg/eclipse/core/runtime/IProgressMonitor;)V
    :try_end_0
    .catch Lorg/eclipse/core/runtime/CoreException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    const/4 p4, 0x0

    invoke-static {p5, p4}, Lorg/eclipse/jdt/internal/core/util/Util;->setReadOnly(Lorg/eclipse/core/resources/IResource;Z)V

    invoke-virtual {p1, p2}, Lorg/eclipse/jdt/internal/core/PackageFragment;->getCompilationUnit(Ljava/lang/String;)Lorg/eclipse/jdt/core/ICompilationUnit;

    move-result-object p1

    invoke-virtual {p0, p1, p3}, Lorg/eclipse/jdt/internal/core/JavaModelOperation;->applyTextEdit(Lorg/eclipse/jdt/core/ICompilationUnit;Lorg/eclipse/text/edits/TextEdit;)V

    const/4 p2, 0x1

    invoke-virtual {p0, p2}, Lorg/eclipse/jdt/internal/core/JavaModelOperation;->getSubProgressMonitor(I)Lorg/eclipse/core/runtime/IProgressMonitor;

    move-result-object p2

    iget-boolean p3, p0, Lorg/eclipse/jdt/internal/core/JavaModelOperation;->force:Z

    invoke-interface {p1, p2, p3}, Lorg/eclipse/jdt/core/IOpenable;->save(Lorg/eclipse/core/runtime/IProgressMonitor;Z)V

    return-void
.end method

.method private updateContent(Lorg/eclipse/jdt/core/ICompilationUnit;Lorg/eclipse/jdt/internal/core/PackageFragment;Ljava/lang/String;)Lorg/eclipse/text/edits/TextEdit;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/JavaModelException;
        }
    .end annotation

    invoke-interface {p1}, Lorg/eclipse/jdt/core/IJavaElement;->getParent()Lorg/eclipse/jdt/core/IJavaElement;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jdt/internal/core/PackageFragment;

    iget-object v0, v0, Lorg/eclipse/jdt/internal/core/PackageFragment;->names:[Ljava/lang/String;

    iget-object p2, p2, Lorg/eclipse/jdt/internal/core/PackageFragment;->names:[Ljava/lang/String;

    invoke-static {v0, p2}, Lorg/eclipse/jdt/internal/core/util/Util;->equalArraysOrNull([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    if-nez p3, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/JavaModelOperation;->progressMonitor:Lorg/eclipse/core/runtime/SubMonitor;

    invoke-interface {p1, v0}, Lorg/eclipse/jdt/core/IOpenable;->makeConsistent(Lorg/eclipse/core/runtime/IProgressMonitor;)V

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/CopyResourceElementsOperation;->parser:Lorg/eclipse/jdt/core/dom/ASTParser;

    invoke-virtual {v0, p1}, Lorg/eclipse/jdt/core/dom/ASTParser;->setSource(Lorg/eclipse/jdt/core/ICompilationUnit;)V

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/CopyResourceElementsOperation;->parser:Lorg/eclipse/jdt/core/dom/ASTParser;

    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/JavaModelOperation;->progressMonitor:Lorg/eclipse/core/runtime/SubMonitor;

    invoke-virtual {v0, v1}, Lorg/eclipse/jdt/core/dom/ASTParser;->createAST(Lorg/eclipse/core/runtime/IProgressMonitor;)Lorg/eclipse/jdt/core/dom/ASTNode;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jdt/core/dom/CompilationUnit;

    invoke-virtual {v0}, Lorg/eclipse/jdt/core/dom/ASTNode;->getAST()Lorg/eclipse/jdt/core/dom/AST;

    move-result-object v1

    invoke-static {v1}, Lorg/eclipse/jdt/core/dom/rewrite/ASTRewrite;->create(Lorg/eclipse/jdt/core/dom/AST;)Lorg/eclipse/jdt/core/dom/rewrite/ASTRewrite;

    move-result-object v7

    invoke-interface {p1}, Lorg/eclipse/jdt/core/IJavaElement;->getElementName()Ljava/lang/String;

    move-result-object v4

    move-object v1, p0

    move-object v2, p1

    move-object v3, v0

    move-object v5, p3

    move-object v6, v7

    invoke-direct/range {v1 .. v6}, Lorg/eclipse/jdt/internal/core/CopyResourceElementsOperation;->updateTypeName(Lorg/eclipse/jdt/core/ICompilationUnit;Lorg/eclipse/jdt/core/dom/CompilationUnit;Ljava/lang/String;Ljava/lang/String;Lorg/eclipse/jdt/core/dom/rewrite/ASTRewrite;)V

    invoke-direct {p0, v0, p2, v7, p1}, Lorg/eclipse/jdt/internal/core/CopyResourceElementsOperation;->updatePackageStatement(Lorg/eclipse/jdt/core/dom/CompilationUnit;[Ljava/lang/String;Lorg/eclipse/jdt/core/dom/rewrite/ASTRewrite;Lorg/eclipse/jdt/core/ICompilationUnit;)V

    invoke-virtual {v7}, Lorg/eclipse/jdt/core/dom/rewrite/ASTRewrite;->rewriteAST()Lorg/eclipse/text/edits/TextEdit;

    move-result-object p1

    return-object p1
.end method

.method private updatePackageStatement(Lorg/eclipse/jdt/core/dom/CompilationUnit;[Ljava/lang/String;Lorg/eclipse/jdt/core/dom/rewrite/ASTRewrite;Lorg/eclipse/jdt/core/ICompilationUnit;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/JavaModelException;
        }
    .end annotation

    array-length v0, p2

    const/4 v1, 0x1

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/ASTNode;->getAST()Lorg/eclipse/jdt/core/dom/AST;

    move-result-object v2

    const/4 v3, 0x0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/CompilationUnit;->getPackage()Lorg/eclipse/jdt/core/dom/PackageDeclaration;

    move-result-object p2

    if-eqz p2, :cond_5

    invoke-virtual {p2}, Lorg/eclipse/jdt/core/dom/PackageDeclaration;->getJavadoc()Lorg/eclipse/jdt/core/dom/Javadoc;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lorg/eclipse/jdt/core/dom/ASTNode;->getStartPosition()I

    move-result v2

    invoke-virtual {v0}, Lorg/eclipse/jdt/core/dom/ASTNode;->getLength()I

    move-result v0

    add-int/2addr v2, v0

    add-int/2addr v2, v1

    goto :goto_1

    :cond_1
    invoke-virtual {p2}, Lorg/eclipse/jdt/core/dom/ASTNode;->getStartPosition()I

    move-result v2

    :goto_1
    invoke-virtual {p1, p2}, Lorg/eclipse/jdt/core/dom/CompilationUnit;->getExtendedStartPosition(Lorg/eclipse/jdt/core/dom/ASTNode;)I

    move-result p2

    if-eq v2, p2, :cond_2

    invoke-interface {p4}, Lorg/eclipse/jdt/core/ISourceReference;->getSource()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p4, p2, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p2

    const/16 p4, 0x23

    invoke-virtual {p3, p2, p4}, Lorg/eclipse/jdt/core/dom/rewrite/ASTRewrite;->createStringPlaceholder(Ljava/lang/String;I)Lorg/eclipse/jdt/core/dom/ASTNode;

    move-result-object p2

    sget-object p4, Lorg/eclipse/jdt/core/dom/CompilationUnit;->PACKAGE_PROPERTY:Lorg/eclipse/jdt/core/dom/ChildPropertyDescriptor;

    invoke-virtual {p3, p1, p4, p2, v3}, Lorg/eclipse/jdt/core/dom/rewrite/ASTRewrite;->set(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;Ljava/lang/Object;Lorg/eclipse/text/edits/TextEditGroup;)V

    goto :goto_2

    :cond_2
    sget-object p2, Lorg/eclipse/jdt/core/dom/CompilationUnit;->PACKAGE_PROPERTY:Lorg/eclipse/jdt/core/dom/ChildPropertyDescriptor;

    invoke-virtual {p3, p1, p2, v3, v3}, Lorg/eclipse/jdt/core/dom/rewrite/ASTRewrite;->set(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;Ljava/lang/Object;Lorg/eclipse/text/edits/TextEditGroup;)V

    goto :goto_2

    :cond_3
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/CompilationUnit;->getPackage()Lorg/eclipse/jdt/core/dom/PackageDeclaration;

    move-result-object p4

    if-eqz p4, :cond_4

    invoke-virtual {v2, p2}, Lorg/eclipse/jdt/core/dom/AST;->newName([Ljava/lang/String;)Lorg/eclipse/jdt/core/dom/Name;

    move-result-object p1

    sget-object p2, Lorg/eclipse/jdt/core/dom/PackageDeclaration;->NAME_PROPERTY:Lorg/eclipse/jdt/core/dom/ChildPropertyDescriptor;

    invoke-virtual {p3, p4, p2, p1, v3}, Lorg/eclipse/jdt/core/dom/rewrite/ASTRewrite;->set(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;Ljava/lang/Object;Lorg/eclipse/text/edits/TextEditGroup;)V

    goto :goto_2

    :cond_4
    invoke-virtual {v2}, Lorg/eclipse/jdt/core/dom/AST;->newPackageDeclaration()Lorg/eclipse/jdt/core/dom/PackageDeclaration;

    move-result-object p4

    invoke-virtual {v2, p2}, Lorg/eclipse/jdt/core/dom/AST;->newName([Ljava/lang/String;)Lorg/eclipse/jdt/core/dom/Name;

    move-result-object p2

    invoke-virtual {p4, p2}, Lorg/eclipse/jdt/core/dom/PackageDeclaration;->setName(Lorg/eclipse/jdt/core/dom/Name;)V

    sget-object p2, Lorg/eclipse/jdt/core/dom/CompilationUnit;->PACKAGE_PROPERTY:Lorg/eclipse/jdt/core/dom/ChildPropertyDescriptor;

    invoke-virtual {p3, p1, p2, p4, v3}, Lorg/eclipse/jdt/core/dom/rewrite/ASTRewrite;->set(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;Ljava/lang/Object;Lorg/eclipse/text/edits/TextEditGroup;)V

    :cond_5
    :goto_2
    return-void
.end method

.method private updateReadOnlyPackageFragmentsForCopy(Lorg/eclipse/core/resources/IContainer;Lorg/eclipse/jdt/internal/core/PackageFragmentRoot;[Ljava/lang/String;)V
    .locals 4

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/core/PackageFragmentRoot;->resource()Lorg/eclipse/core/resources/IResource;

    move-result-object p2

    check-cast p2, Lorg/eclipse/core/resources/IContainer;

    array-length v0, p3

    const/4 v1, 0x0

    :goto_0
    if-lt v1, v0, :cond_0

    return-void

    :cond_0
    aget-object v2, p3, v1

    new-instance v3, Lorg/eclipse/core/runtime/Path;

    invoke-direct {v3, v2}, Lorg/eclipse/core/runtime/Path;-><init>(Ljava/lang/String;)V

    invoke-interface {p2, v3}, Lorg/eclipse/core/resources/IContainer;->getFolder(Lorg/eclipse/core/runtime/IPath;)Lorg/eclipse/core/resources/IFolder;

    move-result-object p2

    new-instance v3, Lorg/eclipse/core/runtime/Path;

    invoke-direct {v3, v2}, Lorg/eclipse/core/runtime/Path;-><init>(Ljava/lang/String;)V

    invoke-interface {p1, v3}, Lorg/eclipse/core/resources/IContainer;->getFolder(Lorg/eclipse/core/runtime/IPath;)Lorg/eclipse/core/resources/IFolder;

    move-result-object p1

    invoke-interface {p1}, Lorg/eclipse/core/resources/IContainer;->exists()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {p1}, Lorg/eclipse/jdt/internal/core/util/Util;->isReadOnly(Lorg/eclipse/core/resources/IResource;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    invoke-static {p2, v2}, Lorg/eclipse/jdt/internal/core/util/Util;->setReadOnly(Lorg/eclipse/core/resources/IResource;Z)V

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private updateReadOnlyPackageFragmentsForMove(Lorg/eclipse/core/resources/IContainer;Lorg/eclipse/jdt/internal/core/PackageFragmentRoot;[Ljava/lang/String;Z)V
    .locals 5

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/core/PackageFragmentRoot;->resource()Lorg/eclipse/core/resources/IResource;

    move-result-object p2

    check-cast p2, Lorg/eclipse/core/resources/IContainer;

    array-length v0, p3

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-lt v2, v0, :cond_0

    return-void

    :cond_0
    aget-object v3, p3, v2

    new-instance v4, Lorg/eclipse/core/runtime/Path;

    invoke-direct {v4, v3}, Lorg/eclipse/core/runtime/Path;-><init>(Ljava/lang/String;)V

    invoke-interface {p2, v4}, Lorg/eclipse/core/resources/IContainer;->getFolder(Lorg/eclipse/core/runtime/IPath;)Lorg/eclipse/core/resources/IFolder;

    move-result-object p2

    new-instance v4, Lorg/eclipse/core/runtime/Path;

    invoke-direct {v4, v3}, Lorg/eclipse/core/runtime/Path;-><init>(Ljava/lang/String;)V

    invoke-interface {p1, v4}, Lorg/eclipse/core/resources/IContainer;->getFolder(Lorg/eclipse/core/runtime/IPath;)Lorg/eclipse/core/resources/IFolder;

    move-result-object p1

    invoke-interface {p1}, Lorg/eclipse/core/resources/IContainer;->exists()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-static {p1}, Lorg/eclipse/jdt/internal/core/util/Util;->isReadOnly(Lorg/eclipse/core/resources/IResource;)Z

    move-result v3

    if-nez v3, :cond_2

    :cond_1
    add-int/lit8 v3, v0, -0x1

    if-ne v2, v3, :cond_3

    if-eqz p4, :cond_3

    :cond_2
    const/4 v3, 0x1

    invoke-static {p2, v3}, Lorg/eclipse/jdt/internal/core/util/Util;->setReadOnly(Lorg/eclipse/core/resources/IResource;Z)V

    invoke-static {p1, v1}, Lorg/eclipse/jdt/internal/core/util/Util;->setReadOnly(Lorg/eclipse/core/resources/IResource;Z)V

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method private updateTypeName(Lorg/eclipse/jdt/core/ICompilationUnit;Lorg/eclipse/jdt/core/dom/CompilationUnit;Ljava/lang/String;Ljava/lang/String;Lorg/eclipse/jdt/core/dom/rewrite/ASTRewrite;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/JavaModelException;
        }
    .end annotation

    if-eqz p4, :cond_4

    invoke-static {p3}, Lorg/eclipse/jdt/internal/core/util/Util;->getNameWithoutJavaLikeExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-static {p4}, Lorg/eclipse/jdt/internal/core/util/Util;->getNameWithoutJavaLikeExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p2}, Lorg/eclipse/jdt/core/dom/ASTNode;->getAST()Lorg/eclipse/jdt/core/dom/AST;

    move-result-object v0

    invoke-interface {p1}, Lorg/eclipse/jdt/core/ICompilationUnit;->getTypes()[Lorg/eclipse/jdt/core/IType;

    move-result-object p1

    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-lt v2, v1, :cond_0

    goto :goto_3

    :cond_0
    aget-object v3, p1, v2

    invoke-interface {v3}, Lorg/eclipse/jdt/core/IType;->getElementName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    check-cast v3, Lorg/eclipse/jdt/internal/core/JavaElement;

    invoke-virtual {v3, p2}, Lorg/eclipse/jdt/internal/core/JavaElement;->findNode(Lorg/eclipse/jdt/core/dom/CompilationUnit;)Lorg/eclipse/jdt/core/dom/ASTNode;

    move-result-object v3

    check-cast v3, Lorg/eclipse/jdt/core/dom/AbstractTypeDeclaration;

    if-eqz v3, :cond_3

    invoke-virtual {v3}, Lorg/eclipse/jdt/core/dom/AbstractTypeDeclaration;->getName()Lorg/eclipse/jdt/core/dom/SimpleName;

    move-result-object v4

    invoke-virtual {v0, p4}, Lorg/eclipse/jdt/core/dom/AST;->newSimpleName(Ljava/lang/String;)Lorg/eclipse/jdt/core/dom/SimpleName;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {p5, v4, v5, v6}, Lorg/eclipse/jdt/core/dom/rewrite/ASTRewrite;->replace(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/text/edits/TextEditGroup;)V

    invoke-virtual {v3}, Lorg/eclipse/jdt/core/dom/AbstractTypeDeclaration;->bodyDeclarations()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_2

    goto :goto_2

    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    instance-of v5, v4, Lorg/eclipse/jdt/core/dom/MethodDeclaration;

    if-eqz v5, :cond_1

    check-cast v4, Lorg/eclipse/jdt/core/dom/MethodDeclaration;

    invoke-virtual {v4}, Lorg/eclipse/jdt/core/dom/MethodDeclaration;->isConstructor()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {v4}, Lorg/eclipse/jdt/core/dom/MethodDeclaration;->getName()Lorg/eclipse/jdt/core/dom/SimpleName;

    move-result-object v4

    invoke-virtual {v4}, Lorg/eclipse/jdt/core/dom/SimpleName;->getIdentifier()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {v0, p4}, Lorg/eclipse/jdt/core/dom/AST;->newSimpleName(Ljava/lang/String;)Lorg/eclipse/jdt/core/dom/SimpleName;

    move-result-object v5

    invoke-virtual {p5, v4, v5, v6}, Lorg/eclipse/jdt/core/dom/rewrite/ASTRewrite;->replace(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/text/edits/TextEditGroup;)V

    goto :goto_1

    :cond_3
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    :goto_3
    return-void
.end method


# virtual methods
.method public getMainTaskName()Ljava/lang/String;
    .locals 1

    sget-object v0, Lorg/eclipse/jdt/internal/core/util/Messages;->operation_copyResourceProgress:Ljava/lang/String;

    return-object v0
.end method

.method public getSchedulingRule()Lorg/eclipse/core/runtime/jobs/ISchedulingRule;
    .locals 7

    .line 1
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/JavaModelOperation;->elementsToProcess:[Lorg/eclipse/jdt/core/IJavaElement;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 2
    :cond_0
    array-length v1, v0

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v1, v2, :cond_1

    .line 3
    aget-object v0, v0, v3

    invoke-direct {p0, v0}, Lorg/eclipse/jdt/internal/core/CopyResourceElementsOperation;->getSchedulingRule(Lorg/eclipse/jdt/core/IJavaElement;)Lorg/eclipse/core/runtime/jobs/ISchedulingRule;

    move-result-object v0

    return-object v0

    .line 4
    :cond_1
    new-array v0, v1, [Lorg/eclipse/core/runtime/jobs/ISchedulingRule;

    move v2, v3

    move v4, v2

    :goto_0
    if-lt v2, v1, :cond_3

    if-eq v4, v1, :cond_2

    .line 5
    new-array v1, v4, [Lorg/eclipse/core/runtime/jobs/ISchedulingRule;

    invoke-static {v0, v3, v1, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v0, v1

    .line 6
    :cond_2
    new-instance v1, Lorg/eclipse/core/runtime/jobs/MultiRule;

    invoke-direct {v1, v0}, Lorg/eclipse/core/runtime/jobs/MultiRule;-><init>([Lorg/eclipse/core/runtime/jobs/ISchedulingRule;)V

    return-object v1

    .line 7
    :cond_3
    iget-object v5, p0, Lorg/eclipse/jdt/internal/core/JavaModelOperation;->elementsToProcess:[Lorg/eclipse/jdt/core/IJavaElement;

    aget-object v5, v5, v2

    invoke-direct {p0, v5}, Lorg/eclipse/jdt/internal/core/CopyResourceElementsOperation;->getSchedulingRule(Lorg/eclipse/jdt/core/IJavaElement;)Lorg/eclipse/core/runtime/jobs/ISchedulingRule;

    move-result-object v5

    if-eqz v5, :cond_4

    add-int/lit8 v6, v4, 0x1

    .line 8
    aput-object v5, v0, v4

    move v4, v6

    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public prepareDeltas(Lorg/eclipse/jdt/core/IJavaElement;Lorg/eclipse/jdt/core/IJavaElement;ZZ)V
    .locals 1

    invoke-static {p1}, Lorg/eclipse/jdt/internal/core/util/Util;->isExcluded(Lorg/eclipse/jdt/core/IJavaElement;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-static {p2}, Lorg/eclipse/jdt/internal/core/util/Util;->isExcluded(Lorg/eclipse/jdt/core/IJavaElement;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {p2}, Lorg/eclipse/jdt/core/IJavaElement;->getJavaProject()Lorg/eclipse/jdt/core/IJavaProject;

    move-result-object v0

    if-eqz p3, :cond_1

    invoke-interface {p1}, Lorg/eclipse/jdt/core/IJavaElement;->getJavaProject()Lorg/eclipse/jdt/core/IJavaProject;

    move-result-object p3

    invoke-direct {p0, p3}, Lorg/eclipse/jdt/internal/core/CopyResourceElementsOperation;->getDeltaFor(Lorg/eclipse/jdt/core/IJavaProject;)Lorg/eclipse/jdt/internal/core/JavaElementDelta;

    move-result-object p3

    invoke-virtual {p3, p1, p2}, Lorg/eclipse/jdt/internal/core/JavaElementDelta;->movedFrom(Lorg/eclipse/jdt/core/IJavaElement;Lorg/eclipse/jdt/core/IJavaElement;)V

    if-nez p4, :cond_2

    invoke-direct {p0, v0}, Lorg/eclipse/jdt/internal/core/CopyResourceElementsOperation;->getDeltaFor(Lorg/eclipse/jdt/core/IJavaProject;)Lorg/eclipse/jdt/internal/core/JavaElementDelta;

    move-result-object p3

    invoke-virtual {p3, p2, p1}, Lorg/eclipse/jdt/internal/core/JavaElementDelta;->movedTo(Lorg/eclipse/jdt/core/IJavaElement;Lorg/eclipse/jdt/core/IJavaElement;)V

    return-void

    :cond_1
    if-nez p4, :cond_2

    invoke-direct {p0, v0}, Lorg/eclipse/jdt/internal/core/CopyResourceElementsOperation;->getDeltaFor(Lorg/eclipse/jdt/core/IJavaProject;)Lorg/eclipse/jdt/internal/core/JavaElementDelta;

    move-result-object p1

    invoke-virtual {p1, p2}, Lorg/eclipse/jdt/internal/core/JavaElementDelta;->added(Lorg/eclipse/jdt/core/IJavaElement;)V

    return-void

    :cond_2
    invoke-interface {p2}, Lorg/eclipse/jdt/core/IJavaElement;->getJavaProject()Lorg/eclipse/jdt/core/IJavaProject;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/core/CopyResourceElementsOperation;->getDeltaFor(Lorg/eclipse/jdt/core/IJavaProject;)Lorg/eclipse/jdt/internal/core/JavaElementDelta;

    move-result-object p1

    const/4 p3, 0x1

    invoke-virtual {p1, p2, p3}, Lorg/eclipse/jdt/internal/core/JavaElementDelta;->changed(Lorg/eclipse/jdt/core/IJavaElement;I)Lorg/eclipse/jdt/internal/core/JavaElementDelta;

    :cond_3
    :goto_0
    return-void
.end method

.method public processDeltas()V
    .locals 2

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/CopyResourceElementsOperation;->deltasPerProject:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/eclipse/jdt/core/IJavaElementDelta;

    invoke-virtual {p0, v1}, Lorg/eclipse/jdt/internal/core/JavaModelOperation;->addDelta(Lorg/eclipse/jdt/core/IJavaElementDelta;)V

    goto :goto_0
.end method

.method public processElement(Lorg/eclipse/jdt/core/IJavaElement;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/JavaModelException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/internal/core/MultiOperation;->getDestinationParent(Lorg/eclipse/jdt/core/IJavaElement;)Lorg/eclipse/jdt/core/IJavaElement;

    move-result-object v0

    invoke-interface {p1}, Lorg/eclipse/jdt/core/IJavaElement;->getElementType()I

    move-result v1

    const/4 v2, 0x4

    if-eq v1, v2, :cond_1

    const/4 v2, 0x5

    if-ne v1, v2, :cond_0

    move-object v1, p1

    check-cast v1, Lorg/eclipse/jdt/core/ICompilationUnit;

    move-object v2, v0

    check-cast v2, Lorg/eclipse/jdt/internal/core/PackageFragment;

    invoke-direct {p0, v1, v2}, Lorg/eclipse/jdt/internal/core/CopyResourceElementsOperation;->processCompilationUnitResource(Lorg/eclipse/jdt/core/ICompilationUnit;Lorg/eclipse/jdt/internal/core/PackageFragment;)V

    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/CopyResourceElementsOperation;->createdElements:Ljava/util/ArrayList;

    check-cast v0, Lorg/eclipse/jdt/core/IPackageFragment;

    invoke-interface {p1}, Lorg/eclipse/jdt/core/IJavaElement;->getElementName()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lorg/eclipse/jdt/core/IPackageFragment;->getCompilationUnit(Ljava/lang/String;)Lorg/eclipse/jdt/core/ICompilationUnit;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    new-instance v0, Lorg/eclipse/jdt/core/JavaModelException;

    new-instance v1, Lorg/eclipse/jdt/internal/core/JavaModelStatus;

    const/16 v2, 0x3c7

    invoke-direct {v1, v2, p1}, Lorg/eclipse/jdt/internal/core/JavaModelStatus;-><init>(ILorg/eclipse/jdt/core/IJavaElement;)V

    invoke-direct {v0, v1}, Lorg/eclipse/jdt/core/JavaModelException;-><init>(Lorg/eclipse/jdt/core/IJavaModelStatus;)V

    throw v0

    :cond_1
    move-object v1, p1

    check-cast v1, Lorg/eclipse/jdt/internal/core/PackageFragment;

    check-cast v0, Lorg/eclipse/jdt/internal/core/PackageFragmentRoot;

    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/internal/core/MultiOperation;->getNewNameFor(Lorg/eclipse/jdt/core/IJavaElement;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v1, v0, p1}, Lorg/eclipse/jdt/internal/core/CopyResourceElementsOperation;->processPackageFragmentResource(Lorg/eclipse/jdt/internal/core/PackageFragment;Lorg/eclipse/jdt/internal/core/PackageFragmentRoot;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public processElements()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/JavaModelException;
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/JavaModelOperation;->elementsToProcess:[Lorg/eclipse/jdt/core/IJavaElement;

    array-length v1, v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lorg/eclipse/jdt/internal/core/CopyResourceElementsOperation;->createdElements:Ljava/util/ArrayList;

    :try_start_0
    invoke-super {p0}, Lorg/eclipse/jdt/internal/core/MultiOperation;->processElements()V
    :try_end_0
    .catch Lorg/eclipse/jdt/core/JavaModelException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/CopyResourceElementsOperation;->createdElements:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Lorg/eclipse/jdt/core/IJavaElement;

    iput-object v0, p0, Lorg/eclipse/jdt/internal/core/JavaModelOperation;->resultElements:[Lorg/eclipse/jdt/core/IJavaElement;

    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/CopyResourceElementsOperation;->createdElements:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/CopyResourceElementsOperation;->processDeltas()V

    return-void

    :catchall_0
    move-exception v0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_1
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/CopyResourceElementsOperation;->createdElements:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Lorg/eclipse/jdt/core/IJavaElement;

    iput-object v1, p0, Lorg/eclipse/jdt/internal/core/JavaModelOperation;->resultElements:[Lorg/eclipse/jdt/core/IJavaElement;

    iget-object v2, p0, Lorg/eclipse/jdt/internal/core/CopyResourceElementsOperation;->createdElements:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/CopyResourceElementsOperation;->processDeltas()V

    throw v0
.end method

.method public verify()Lorg/eclipse/jdt/core/IJavaModelStatus;
    .locals 2

    .line 1
    invoke-super {p0}, Lorg/eclipse/jdt/internal/core/JavaModelOperation;->verify()Lorg/eclipse/jdt/core/IJavaModelStatus;

    move-result-object v0

    .line 2
    invoke-interface {v0}, Lorg/eclipse/jdt/core/IJavaModelStatus;->isOK()Z

    move-result v1

    if-nez v1, :cond_0

    return-object v0

    .line 3
    :cond_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/MultiOperation;->renamingsList:[Ljava/lang/String;

    if-eqz v0, :cond_1

    array-length v0, v0

    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/JavaModelOperation;->elementsToProcess:[Lorg/eclipse/jdt/core/IJavaElement;

    array-length v1, v1

    if-eq v0, v1, :cond_1

    .line 4
    new-instance v0, Lorg/eclipse/jdt/internal/core/JavaModelStatus;

    const/16 v1, 0x3d4

    invoke-direct {v0, v1}, Lorg/eclipse/jdt/internal/core/JavaModelStatus;-><init>(I)V

    return-object v0

    .line 5
    :cond_1
    sget-object v0, Lorg/eclipse/jdt/internal/core/JavaModelStatus;->VERIFIED_OK:Lorg/eclipse/jdt/core/IJavaModelStatus;

    return-object v0
.end method

.method public verify(Lorg/eclipse/jdt/core/IJavaElement;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/JavaModelException;
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 6
    invoke-interface {p1}, Lorg/eclipse/jdt/core/IJavaElement;->exists()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/16 v0, 0x3c9

    .line 7
    invoke-virtual {p0, v0, p1}, Lorg/eclipse/jdt/internal/core/MultiOperation;->error(ILorg/eclipse/jdt/core/IJavaElement;)V

    .line 8
    :cond_1
    invoke-interface {p1}, Lorg/eclipse/jdt/core/IJavaElement;->isReadOnly()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/MultiOperation;->isRename()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/MultiOperation;->isMove()Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    const/16 v0, 0x3d0

    .line 9
    invoke-virtual {p0, v0, p1}, Lorg/eclipse/jdt/internal/core/MultiOperation;->error(ILorg/eclipse/jdt/core/IJavaElement;)V

    .line 10
    :cond_3
    move-object v0, p1

    check-cast v0, Lorg/eclipse/jdt/internal/core/JavaElement;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/core/JavaElement;->resource()Lorg/eclipse/core/resources/IResource;

    move-result-object v0

    .line 11
    instance-of v1, v0, Lorg/eclipse/core/resources/IFolder;

    if-eqz v1, :cond_4

    .line 12
    invoke-interface {v0}, Lorg/eclipse/core/resources/IResource;->isLinked()Z

    move-result v0

    if-eqz v0, :cond_4

    const/16 v0, 0x3e3

    .line 13
    invoke-virtual {p0, v0, p1}, Lorg/eclipse/jdt/internal/core/MultiOperation;->error(ILorg/eclipse/jdt/core/IJavaElement;)V

    .line 14
    :cond_4
    invoke-interface {p1}, Lorg/eclipse/jdt/core/IJavaElement;->getElementType()I

    move-result v0

    const/4 v1, 0x5

    const/16 v2, 0x3c7

    if-ne v0, v1, :cond_5

    .line 15
    move-object v0, p1

    check-cast v0, Lorg/eclipse/jdt/internal/core/CompilationUnit;

    .line 16
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/MultiOperation;->isMove()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/core/CompilationUnit;->isWorkingCopy()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/core/CompilationUnit;->isPrimary()Z

    move-result v0

    if-nez v0, :cond_6

    .line 17
    invoke-virtual {p0, v2, p1}, Lorg/eclipse/jdt/internal/core/MultiOperation;->error(ILorg/eclipse/jdt/core/IJavaElement;)V

    goto :goto_0

    :cond_5
    const/4 v1, 0x4

    if-eq v0, v1, :cond_6

    .line 18
    invoke-virtual {p0, v2, p1}, Lorg/eclipse/jdt/internal/core/MultiOperation;->error(ILorg/eclipse/jdt/core/IJavaElement;)V

    .line 19
    :cond_6
    :goto_0
    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/internal/core/MultiOperation;->getDestinationParent(Lorg/eclipse/jdt/core/IJavaElement;)Lorg/eclipse/jdt/core/IJavaElement;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jdt/internal/core/JavaElement;

    .line 20
    invoke-virtual {p0, p1, v0}, Lorg/eclipse/jdt/internal/core/MultiOperation;->verifyDestination(Lorg/eclipse/jdt/core/IJavaElement;Lorg/eclipse/jdt/core/IJavaElement;)V

    .line 21
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/MultiOperation;->renamings:Ljava/util/Map;

    if-eqz v0, :cond_7

    .line 22
    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/internal/core/MultiOperation;->verifyRenaming(Lorg/eclipse/jdt/core/IJavaElement;)V

    :cond_7
    return-void
.end method
