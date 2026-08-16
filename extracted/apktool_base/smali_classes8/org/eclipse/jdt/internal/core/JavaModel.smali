.class public Lorg/eclipse/jdt/internal/core/JavaModel;
.super Lorg/eclipse/jdt/internal/core/Openable;
.source "SourceFile"

# interfaces
.implements Lorg/eclipse/jdt/core/IJavaModel;


# direct methods
.method public constructor <init>()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Error;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/eclipse/jdt/internal/core/Openable;-><init>(Lorg/eclipse/jdt/internal/core/JavaElement;)V

    return-void
.end method

.method public static getExternalTarget(Lorg/eclipse/core/runtime/IPath;Z)Ljava/lang/Object;
    .locals 3

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    invoke-static {}, Lorg/eclipse/jdt/internal/core/JavaModelManager;->getExternalManager()Lorg/eclipse/jdt/internal/core/ExternalFoldersManager;

    move-result-object v1

    invoke-virtual {v1, p0}, Lorg/eclipse/jdt/internal/core/ExternalFoldersManager;->getFolder(Lorg/eclipse/core/runtime/IPath;)Lorg/eclipse/core/resources/IFolder;

    move-result-object v1

    if-eqz v1, :cond_2

    if-eqz p1, :cond_1

    new-instance p1, Ljava/io/File;

    invoke-interface {p0}, Lorg/eclipse/core/runtime/IPath;->toOSString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result p0

    if-nez p0, :cond_1

    return-object v0

    :cond_1
    return-object v1

    :cond_2
    new-instance v1, Ljava/io/File;

    invoke-interface {p0}, Lorg/eclipse/core/runtime/IPath;->toOSString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    if-nez p1, :cond_3

    return-object v1

    :cond_3
    invoke-static {p0}, Lorg/eclipse/jdt/internal/core/JavaModel;->isExternalFile(Lorg/eclipse/core/runtime/IPath;)Z

    move-result p0

    if-eqz p0, :cond_4

    return-object v1

    :cond_4
    return-object v0
.end method

.method public static getFile(Ljava/lang/Object;)Ljava/io/File;
    .locals 1

    invoke-static {p0}, Lorg/eclipse/jdt/internal/core/JavaModel;->isFile(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    check-cast p0, Ljava/io/File;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public static getTarget(Lorg/eclipse/core/runtime/IPath;Z)Ljava/lang/Object;
    .locals 1

    invoke-static {p0}, Lorg/eclipse/jdt/internal/core/JavaModel;->getWorkspaceTarget(Lorg/eclipse/core/runtime/IPath;)Lorg/eclipse/core/resources/IResource;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    invoke-static {p0, p1}, Lorg/eclipse/jdt/internal/core/JavaModel;->getExternalTarget(Lorg/eclipse/core/runtime/IPath;Z)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static getWorkspaceTarget(Lorg/eclipse/core/runtime/IPath;)Lorg/eclipse/core/resources/IResource;
    .locals 2

    const/4 v0, 0x0

    if-eqz p0, :cond_2

    invoke-interface {p0}, Lorg/eclipse/core/runtime/IPath;->getDevice()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Lorg/eclipse/core/resources/ResourcesPlugin;->getWorkspace()Lorg/eclipse/core/resources/IWorkspace;

    move-result-object v1

    if-nez v1, :cond_1

    return-object v0

    :cond_1
    invoke-interface {v1}, Lorg/eclipse/core/resources/IWorkspace;->getRoot()Lorg/eclipse/core/resources/IWorkspaceRoot;

    move-result-object v0

    invoke-interface {v0, p0}, Lorg/eclipse/core/resources/IWorkspaceRoot;->findMember(Lorg/eclipse/core/runtime/IPath;)Lorg/eclipse/core/resources/IResource;

    move-result-object p0

    return-object p0

    :cond_2
    :goto_0
    return-object v0
.end method

.method private static isExternalFile(Lorg/eclipse/core/runtime/IPath;)Z
    .locals 3

    invoke-static {}, Lorg/eclipse/jdt/internal/core/JavaModelManager;->getJavaModelManager()Lorg/eclipse/jdt/internal/core/JavaModelManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/eclipse/jdt/internal/core/JavaModelManager;->isExternalFile(Lorg/eclipse/core/runtime/IPath;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    sget-boolean v0, Lorg/eclipse/jdt/internal/core/JavaModelManager;->ZIP_ACCESS_VERBOSE:Z

    if-eqz v0, :cond_1

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ") [JavaModel.isExternalFile(...)] Checking existence of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_1
    invoke-interface {p0}, Lorg/eclipse/core/runtime/IPath;->toFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lorg/eclipse/jdt/internal/core/JavaModelManager;->getJavaModelManager()Lorg/eclipse/jdt/internal/core/JavaModelManager;

    move-result-object v1

    invoke-virtual {v1, p0}, Lorg/eclipse/jdt/internal/core/JavaModelManager;->addExternalFile(Lorg/eclipse/core/runtime/IPath;)V

    :cond_2
    return v0
.end method

.method public static isFile(Ljava/lang/Object;)Z
    .locals 1

    instance-of v0, p0, Ljava/io/File;

    if-eqz v0, :cond_0

    check-cast p0, Ljava/io/File;

    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lorg/eclipse/core/runtime/Path;->fromOSString(Ljava/lang/String;)Lorg/eclipse/core/runtime/IPath;

    move-result-object p0

    invoke-static {p0}, Lorg/eclipse/jdt/internal/core/JavaModel;->isExternalFile(Lorg/eclipse/core/runtime/IPath;)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static isJimage(Ljava/io/File;)Z
    .locals 0

    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lorg/eclipse/jdt/internal/core/JavaModelManager;->isJrt(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static isJmod(Ljava/io/File;)Z
    .locals 1

    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lorg/eclipse/core/runtime/Path;->fromOSString(Ljava/lang/String;)Lorg/eclipse/core/runtime/IPath;

    move-result-object p0

    invoke-interface {p0}, Lorg/eclipse/core/runtime/IPath;->getFileExtension()Ljava/lang/String;

    move-result-object p0

    const-string v0, "jmod"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public buildStructure(Lorg/eclipse/jdt/internal/core/OpenableElementInfo;Lorg/eclipse/core/runtime/IProgressMonitor;Ljava/util/Map;Lorg/eclipse/core/resources/IResource;)Z
    .locals 6

    invoke-static {}, Lorg/eclipse/core/resources/ResourcesPlugin;->getWorkspace()Lorg/eclipse/core/resources/IWorkspace;

    move-result-object p2

    invoke-interface {p2}, Lorg/eclipse/core/resources/IWorkspace;->getRoot()Lorg/eclipse/core/resources/IWorkspaceRoot;

    move-result-object p2

    invoke-interface {p2}, Lorg/eclipse/core/resources/IWorkspaceRoot;->getProjects()[Lorg/eclipse/core/resources/IProject;

    move-result-object p2

    array-length p4, p2

    new-array v0, p4, [Lorg/eclipse/jdt/core/IJavaElement;

    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    :goto_0
    if-lt v2, p4, :cond_1

    if-ge v3, p4, :cond_0

    new-array p2, v3, [Lorg/eclipse/jdt/core/IJavaElement;

    invoke-static {v0, v1, p2, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v0, p2

    :cond_0
    invoke-virtual {p1, v0}, Lorg/eclipse/jdt/internal/core/OpenableElementInfo;->setChildren([Lorg/eclipse/jdt/core/IJavaElement;)V

    invoke-interface {p3, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p1, 0x1

    return p1

    :cond_1
    aget-object v4, p2, v2

    invoke-static {v4}, Lorg/eclipse/jdt/internal/core/JavaProject;->hasJavaNature(Lorg/eclipse/core/resources/IProject;)Z

    move-result v5

    if-eqz v5, :cond_2

    add-int/lit8 v5, v3, 0x1

    invoke-virtual {p0, v4}, Lorg/eclipse/jdt/internal/core/JavaModel;->getJavaProject(Lorg/eclipse/core/resources/IResource;)Lorg/eclipse/jdt/core/IJavaProject;

    move-result-object v4

    aput-object v4, v0, v3

    move v3, v5

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public contains(Lorg/eclipse/core/resources/IResource;)Z
    .locals 6

    invoke-interface {p1}, Lorg/eclipse/core/resources/IResource;->getType()I

    move-result v0

    const/4 v1, 0x4

    const/4 v2, 0x1

    if-eq v0, v1, :cond_2

    const/16 v1, 0x8

    if-eq v0, v1, :cond_2

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/JavaModel;->getJavaProjects()[Lorg/eclipse/jdt/core/IJavaProject;

    move-result-object v1
    :try_end_0
    .catch Lorg/eclipse/jdt/core/JavaModelException; {:try_start_0 .. :try_end_0} :catch_0

    array-length v3, v1

    move v4, v0

    :goto_0
    if-lt v4, v3, :cond_0

    return v2

    :cond_0
    aget-object v5, v1, v4

    check-cast v5, Lorg/eclipse/jdt/internal/core/JavaProject;

    invoke-virtual {v5, p1}, Lorg/eclipse/jdt/internal/core/JavaProject;->contains(Lorg/eclipse/core/resources/IResource;)Z

    move-result v5

    if-nez v5, :cond_1

    return v0

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :catch_0
    return v0

    :cond_2
    return v2
.end method

.method public copy([Lorg/eclipse/jdt/core/IJavaElement;[Lorg/eclipse/jdt/core/IJavaElement;[Lorg/eclipse/jdt/core/IJavaElement;[Ljava/lang/String;ZLorg/eclipse/core/runtime/IProgressMonitor;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/JavaModelException;
        }
    .end annotation

    if-eqz p1, :cond_0

    array-length v3, p1

    if-lez v3, :cond_0

    const/4 v3, 0x0

    aget-object v3, p1, v3

    if-eqz v3, :cond_0

    invoke-interface {v3}, Lorg/eclipse/jdt/core/IJavaElement;->getElementType()I

    move-result v3

    const/4 v4, 0x7

    if-ge v3, v4, :cond_0

    new-instance v3, Lorg/eclipse/jdt/internal/core/CopyResourceElementsOperation;

    invoke-direct {v3, p1, p2, p5}, Lorg/eclipse/jdt/internal/core/CopyResourceElementsOperation;-><init>([Lorg/eclipse/jdt/core/IJavaElement;[Lorg/eclipse/jdt/core/IJavaElement;Z)V

    move-object v0, p0

    move-object v1, v3

    move-object v2, p1

    move-object v3, p3

    move-object v4, p4

    move-object v5, p6

    invoke-virtual/range {v0 .. v5}, Lorg/eclipse/jdt/internal/core/JavaModel;->runOperation(Lorg/eclipse/jdt/internal/core/MultiOperation;[Lorg/eclipse/jdt/core/IJavaElement;[Lorg/eclipse/jdt/core/IJavaElement;[Ljava/lang/String;Lorg/eclipse/core/runtime/IProgressMonitor;)V

    goto :goto_0

    :cond_0
    new-instance v3, Lorg/eclipse/jdt/internal/core/CopyElementsOperation;

    invoke-direct {v3, p1, p2, p5}, Lorg/eclipse/jdt/internal/core/CopyElementsOperation;-><init>([Lorg/eclipse/jdt/core/IJavaElement;[Lorg/eclipse/jdt/core/IJavaElement;Z)V

    move-object v0, p0

    move-object v1, v3

    move-object v2, p1

    move-object v3, p3

    move-object v4, p4

    move-object v5, p6

    invoke-virtual/range {v0 .. v5}, Lorg/eclipse/jdt/internal/core/JavaModel;->runOperation(Lorg/eclipse/jdt/internal/core/MultiOperation;[Lorg/eclipse/jdt/core/IJavaElement;[Lorg/eclipse/jdt/core/IJavaElement;[Ljava/lang/String;Lorg/eclipse/core/runtime/IProgressMonitor;)V

    :goto_0
    return-void
.end method

.method public createElementInfo()Ljava/lang/Object;
    .locals 1

    new-instance v0, Lorg/eclipse/jdt/internal/core/JavaModelInfo;

    invoke-direct {v0}, Lorg/eclipse/jdt/internal/core/JavaModelInfo;-><init>()V

    return-object v0
.end method

.method public delete([Lorg/eclipse/jdt/core/IJavaElement;ZLorg/eclipse/core/runtime/IProgressMonitor;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/JavaModelException;
        }
    .end annotation

    if-eqz p1, :cond_0

    array-length v0, p1

    if-lez v0, :cond_0

    const/4 v0, 0x0

    aget-object v0, p1, v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lorg/eclipse/jdt/core/IJavaElement;->getElementType()I

    move-result v0

    const/4 v1, 0x7

    if-ge v0, v1, :cond_0

    new-instance v0, Lorg/eclipse/jdt/internal/core/DeleteResourceElementsOperation;

    invoke-direct {v0, p1, p2}, Lorg/eclipse/jdt/internal/core/DeleteResourceElementsOperation;-><init>([Lorg/eclipse/jdt/core/IJavaElement;Z)V

    invoke-virtual {v0, p3}, Lorg/eclipse/jdt/internal/core/JavaModelOperation;->runOperation(Lorg/eclipse/core/runtime/IProgressMonitor;)V

    goto :goto_0

    :cond_0
    new-instance v0, Lorg/eclipse/jdt/internal/core/DeleteElementsOperation;

    invoke-direct {v0, p1, p2}, Lorg/eclipse/jdt/internal/core/DeleteElementsOperation;-><init>([Lorg/eclipse/jdt/core/IJavaElement;Z)V

    invoke-virtual {v0, p3}, Lorg/eclipse/jdt/internal/core/JavaModelOperation;->runOperation(Lorg/eclipse/core/runtime/IProgressMonitor;)V

    :goto_0
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    instance-of v0, p1, Lorg/eclipse/jdt/internal/core/JavaModel;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    invoke-super {p0, p1}, Lorg/eclipse/jdt/internal/core/JavaElement;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public getElementType()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public getHandleFromMemento(Ljava/lang/String;Lorg/eclipse/jdt/internal/core/util/MementoTokenizer;Lorg/eclipse/jdt/core/WorkingCopyOwner;)Lorg/eclipse/jdt/core/IJavaElement;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result p1

    const/16 v0, 0x3d

    if-eq p1, v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/core/util/MementoTokenizer;->hasMoreTokens()Z

    move-result p1

    if-nez p1, :cond_1

    return-object p0

    :cond_1
    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/core/util/MementoTokenizer;->nextToken()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/internal/core/JavaModel;->getJavaProject(Ljava/lang/String;)Lorg/eclipse/jdt/core/IJavaProject;

    move-result-object p1

    check-cast p1, Lorg/eclipse/jdt/internal/core/JavaElement;

    invoke-virtual {p1, p2, p3}, Lorg/eclipse/jdt/internal/core/JavaElement;->getHandleFromMemento(Lorg/eclipse/jdt/internal/core/util/MementoTokenizer;Lorg/eclipse/jdt/core/WorkingCopyOwner;)Lorg/eclipse/jdt/core/IJavaElement;

    move-result-object p1

    return-object p1
.end method

.method public getHandleMemento(Ljava/lang/StringBuffer;)V
    .locals 1

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/JavaElement;->getElementName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    return-void
.end method

.method public getHandleMementoDelimiter()C
    .locals 2

    const-string v0, "Should not be called"

    const/4 v1, 0x0

    invoke-static {v1, v0}, Lorg/eclipse/core/runtime/Assert;->isTrue(ZLjava/lang/String;)Z

    return v1
.end method

.method public getJavaProject(Ljava/lang/String;)Lorg/eclipse/jdt/core/IJavaProject;
    .locals 2

    .line 1
    new-instance v0, Lorg/eclipse/jdt/internal/core/JavaProject;

    invoke-static {}, Lorg/eclipse/core/resources/ResourcesPlugin;->getWorkspace()Lorg/eclipse/core/resources/IWorkspace;

    move-result-object v1

    invoke-interface {v1}, Lorg/eclipse/core/resources/IWorkspace;->getRoot()Lorg/eclipse/core/resources/IWorkspaceRoot;

    move-result-object v1

    invoke-interface {v1, p1}, Lorg/eclipse/core/resources/IWorkspaceRoot;->getProject(Ljava/lang/String;)Lorg/eclipse/core/resources/IProject;

    move-result-object p1

    invoke-direct {v0, p1, p0}, Lorg/eclipse/jdt/internal/core/JavaProject;-><init>(Lorg/eclipse/core/resources/IProject;Lorg/eclipse/jdt/internal/core/JavaElement;)V

    return-object v0
.end method

.method public getJavaProject(Lorg/eclipse/core/resources/IResource;)Lorg/eclipse/jdt/core/IJavaProject;
    .locals 2

    .line 2
    invoke-interface {p1}, Lorg/eclipse/core/resources/IResource;->getType()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 3
    new-instance v0, Lorg/eclipse/jdt/internal/core/JavaProject;

    check-cast p1, Lorg/eclipse/core/resources/IProject;

    invoke-direct {v0, p1, p0}, Lorg/eclipse/jdt/internal/core/JavaProject;-><init>(Lorg/eclipse/core/resources/IProject;Lorg/eclipse/jdt/internal/core/JavaElement;)V

    return-object v0

    .line 4
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    sget-object v0, Lorg/eclipse/jdt/internal/core/util/Messages;->element_invalidResourceForProject:Ljava/lang/String;

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 5
    :cond_1
    new-instance v0, Lorg/eclipse/jdt/internal/core/JavaProject;

    check-cast p1, Lorg/eclipse/core/resources/IFolder;

    invoke-interface {p1}, Lorg/eclipse/core/resources/IFolder;->getProject()Lorg/eclipse/core/resources/IProject;

    move-result-object p1

    invoke-direct {v0, p1, p0}, Lorg/eclipse/jdt/internal/core/JavaProject;-><init>(Lorg/eclipse/core/resources/IProject;Lorg/eclipse/jdt/internal/core/JavaElement;)V

    return-object v0

    .line 6
    :cond_2
    new-instance v0, Lorg/eclipse/jdt/internal/core/JavaProject;

    check-cast p1, Lorg/eclipse/core/resources/IFile;

    invoke-interface {p1}, Lorg/eclipse/core/resources/IFile;->getProject()Lorg/eclipse/core/resources/IProject;

    move-result-object p1

    invoke-direct {v0, p1, p0}, Lorg/eclipse/jdt/internal/core/JavaProject;-><init>(Lorg/eclipse/core/resources/IProject;Lorg/eclipse/jdt/internal/core/JavaElement;)V

    return-object v0
.end method

.method public getJavaProjects()[Lorg/eclipse/jdt/core/IJavaProject;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/JavaModelException;
        }
    .end annotation

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/internal/core/JavaElement;->getChildrenOfType(I)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Lorg/eclipse/jdt/core/IJavaProject;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    return-object v1
.end method

.method public getNonJavaResources()[Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/JavaModelException;
        }
    .end annotation

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/JavaElement;->getElementInfo()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jdt/internal/core/JavaModelInfo;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/core/JavaModelInfo;->getNonJavaResources()[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getPath()Lorg/eclipse/core/runtime/IPath;
    .locals 1

    sget-object v0, Lorg/eclipse/core/runtime/Path;->ROOT:Lorg/eclipse/core/runtime/Path;

    return-object v0
.end method

.method public getUnderlyingResource()Lorg/eclipse/core/resources/IResource;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getWorkspace()Lorg/eclipse/core/resources/IWorkspace;
    .locals 1

    invoke-static {}, Lorg/eclipse/core/resources/ResourcesPlugin;->getWorkspace()Lorg/eclipse/core/resources/IWorkspace;

    move-result-object v0

    return-object v0
.end method

.method public move([Lorg/eclipse/jdt/core/IJavaElement;[Lorg/eclipse/jdt/core/IJavaElement;[Lorg/eclipse/jdt/core/IJavaElement;[Ljava/lang/String;ZLorg/eclipse/core/runtime/IProgressMonitor;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/JavaModelException;
        }
    .end annotation

    if-eqz p1, :cond_0

    array-length v3, p1

    if-lez v3, :cond_0

    const/4 v3, 0x0

    aget-object v3, p1, v3

    if-eqz v3, :cond_0

    invoke-interface {v3}, Lorg/eclipse/jdt/core/IJavaElement;->getElementType()I

    move-result v3

    const/4 v4, 0x7

    if-ge v3, v4, :cond_0

    new-instance v3, Lorg/eclipse/jdt/internal/core/MoveResourceElementsOperation;

    invoke-direct {v3, p1, p2, p5}, Lorg/eclipse/jdt/internal/core/MoveResourceElementsOperation;-><init>([Lorg/eclipse/jdt/core/IJavaElement;[Lorg/eclipse/jdt/core/IJavaElement;Z)V

    move-object v0, p0

    move-object v1, v3

    move-object v2, p1

    move-object v3, p3

    move-object v4, p4

    move-object v5, p6

    invoke-virtual/range {v0 .. v5}, Lorg/eclipse/jdt/internal/core/JavaModel;->runOperation(Lorg/eclipse/jdt/internal/core/MultiOperation;[Lorg/eclipse/jdt/core/IJavaElement;[Lorg/eclipse/jdt/core/IJavaElement;[Ljava/lang/String;Lorg/eclipse/core/runtime/IProgressMonitor;)V

    goto :goto_0

    :cond_0
    new-instance v3, Lorg/eclipse/jdt/internal/core/MoveElementsOperation;

    invoke-direct {v3, p1, p2, p5}, Lorg/eclipse/jdt/internal/core/MoveElementsOperation;-><init>([Lorg/eclipse/jdt/core/IJavaElement;[Lorg/eclipse/jdt/core/IJavaElement;Z)V

    move-object v0, p0

    move-object v1, v3

    move-object v2, p1

    move-object v3, p3

    move-object v4, p4

    move-object v5, p6

    invoke-virtual/range {v0 .. v5}, Lorg/eclipse/jdt/internal/core/JavaModel;->runOperation(Lorg/eclipse/jdt/internal/core/MultiOperation;[Lorg/eclipse/jdt/core/IJavaElement;[Lorg/eclipse/jdt/core/IJavaElement;[Ljava/lang/String;Lorg/eclipse/core/runtime/IProgressMonitor;)V

    :goto_0
    return-void
.end method

.method public refreshExternalArchives([Lorg/eclipse/jdt/core/IJavaElement;Lorg/eclipse/core/runtime/IProgressMonitor;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/JavaModelException;
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 p1, 0x1

    new-array p1, p1, [Lorg/eclipse/jdt/core/IJavaElement;

    const/4 v0, 0x0

    aput-object p0, p1, v0

    :cond_0
    invoke-static {}, Lorg/eclipse/jdt/internal/core/JavaModelManager;->getJavaModelManager()Lorg/eclipse/jdt/internal/core/JavaModelManager;

    move-result-object v0

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/core/JavaModelManager;->getDeltaProcessor()Lorg/eclipse/jdt/internal/core/DeltaProcessor;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lorg/eclipse/jdt/internal/core/DeltaProcessor;->checkExternalArchiveChanges([Lorg/eclipse/jdt/core/IJavaElement;Lorg/eclipse/core/runtime/IProgressMonitor;)V

    return-void
.end method

.method public rename([Lorg/eclipse/jdt/core/IJavaElement;[Lorg/eclipse/jdt/core/IJavaElement;[Ljava/lang/String;ZLorg/eclipse/core/runtime/IProgressMonitor;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/JavaModelException;
        }
    .end annotation

    if-eqz p1, :cond_0

    array-length v0, p1

    if-lez v0, :cond_0

    const/4 v0, 0x0

    aget-object v0, p1, v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lorg/eclipse/jdt/core/IJavaElement;->getElementType()I

    move-result v0

    const/4 v1, 0x7

    if-ge v0, v1, :cond_0

    new-instance v0, Lorg/eclipse/jdt/internal/core/RenameResourceElementsOperation;

    invoke-direct {v0, p1, p2, p3, p4}, Lorg/eclipse/jdt/internal/core/RenameResourceElementsOperation;-><init>([Lorg/eclipse/jdt/core/IJavaElement;[Lorg/eclipse/jdt/core/IJavaElement;[Ljava/lang/String;Z)V

    goto :goto_0

    :cond_0
    new-instance v0, Lorg/eclipse/jdt/internal/core/RenameElementsOperation;

    invoke-direct {v0, p1, p2, p3, p4}, Lorg/eclipse/jdt/internal/core/RenameElementsOperation;-><init>([Lorg/eclipse/jdt/core/IJavaElement;[Lorg/eclipse/jdt/core/IJavaElement;[Ljava/lang/String;Z)V

    :goto_0
    invoke-virtual {v0, p5}, Lorg/eclipse/jdt/internal/core/JavaModelOperation;->runOperation(Lorg/eclipse/core/runtime/IProgressMonitor;)V

    return-void
.end method

.method public resource(Lorg/eclipse/jdt/internal/core/PackageFragmentRoot;)Lorg/eclipse/core/resources/IResource;
    .locals 0

    invoke-static {}, Lorg/eclipse/core/resources/ResourcesPlugin;->getWorkspace()Lorg/eclipse/core/resources/IWorkspace;

    move-result-object p1

    invoke-interface {p1}, Lorg/eclipse/core/resources/IWorkspace;->getRoot()Lorg/eclipse/core/resources/IWorkspaceRoot;

    move-result-object p1

    return-object p1
.end method

.method public runOperation(Lorg/eclipse/jdt/internal/core/MultiOperation;[Lorg/eclipse/jdt/core/IJavaElement;[Lorg/eclipse/jdt/core/IJavaElement;[Ljava/lang/String;Lorg/eclipse/core/runtime/IProgressMonitor;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/JavaModelException;
        }
    .end annotation

    invoke-virtual {p1, p4}, Lorg/eclipse/jdt/internal/core/MultiOperation;->setRenamings([Ljava/lang/String;)V

    if-eqz p3, :cond_1

    const/4 p4, 0x0

    :goto_0
    array-length v0, p2

    if-lt p4, v0, :cond_0

    goto :goto_1

    :cond_0
    aget-object v0, p2, p4

    aget-object v1, p3, p4

    invoke-virtual {p1, v0, v1}, Lorg/eclipse/jdt/internal/core/MultiOperation;->setInsertBefore(Lorg/eclipse/jdt/core/IJavaElement;Lorg/eclipse/jdt/core/IJavaElement;)V

    add-int/lit8 p4, p4, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    invoke-virtual {p1, p5}, Lorg/eclipse/jdt/internal/core/JavaModelOperation;->runOperation(Lorg/eclipse/core/runtime/IProgressMonitor;)V

    return-void
.end method

.method public toStringInfo(ILjava/lang/StringBuffer;Ljava/lang/Object;Z)V
    .locals 0

    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/internal/core/JavaElement;->tabString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string p1, "Java Model"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    if-nez p3, :cond_0

    const-string p1, " (not open)"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_0
    return-void
.end method

.method public validateExistence(Lorg/eclipse/core/resources/IResource;)Lorg/eclipse/core/runtime/IStatus;
    .locals 0

    sget-object p1, Lorg/eclipse/jdt/internal/core/JavaModelStatus;->VERIFIED_OK:Lorg/eclipse/jdt/core/IJavaModelStatus;

    return-object p1
.end method
