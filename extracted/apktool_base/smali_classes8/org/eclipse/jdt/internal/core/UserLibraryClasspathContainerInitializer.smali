.class public Lorg/eclipse/jdt/internal/core/UserLibraryClasspathContainerInitializer;
.super Lorg/eclipse/jdt/core/ClasspathContainerInitializer;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/eclipse/jdt/core/ClasspathContainerInitializer;-><init>()V

    return-void
.end method

.method private isUserLibraryContainer(Lorg/eclipse/core/runtime/IPath;)Z
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lorg/eclipse/core/runtime/IPath;->segmentCount()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    const-string v1, "org.eclipse.jdt.USER_LIBRARY"

    invoke-interface {p1, v0}, Lorg/eclipse/core/runtime/IPath;->segment(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    return v0
.end method

.method private verbose_no_user_library_found(Lorg/eclipse/jdt/core/IJavaProject;Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "UserLibrary INIT - FAILED (no user library found)\n\tproject: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p1}, Lorg/eclipse/jdt/core/IJavaElement;->getElementName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p1, 0xa

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string p1, "\tuserLibraryName: "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/eclipse/jdt/internal/core/util/Util;->verbose(Ljava/lang/String;)V

    return-void
.end method

.method private verbose_not_a_user_library(Lorg/eclipse/jdt/core/IJavaProject;Lorg/eclipse/core/runtime/IPath;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "UserLibrary INIT - FAILED (not a user library)\n\tproject: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p1}, Lorg/eclipse/jdt/core/IJavaElement;->getElementName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p1, 0xa

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string p1, "\tcontainer path: "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/eclipse/jdt/internal/core/util/Util;->verbose(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public canUpdateClasspathContainer(Lorg/eclipse/core/runtime/IPath;Lorg/eclipse/jdt/core/IJavaProject;)Z
    .locals 0

    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/core/UserLibraryClasspathContainerInitializer;->isUserLibraryContainer(Lorg/eclipse/core/runtime/IPath;)Z

    move-result p1

    return p1
.end method

.method public getComparisonID(Lorg/eclipse/core/runtime/IPath;Lorg/eclipse/jdt/core/IJavaProject;)Ljava/lang/Object;
    .locals 0

    return-object p1
.end method

.method public getDescription(Lorg/eclipse/core/runtime/IPath;Lorg/eclipse/jdt/core/IJavaProject;)Ljava/lang/String;
    .locals 1

    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/core/UserLibraryClasspathContainerInitializer;->isUserLibraryContainer(Lorg/eclipse/core/runtime/IPath;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p2, 0x1

    invoke-interface {p1, p2}, Lorg/eclipse/core/runtime/IPath;->segment(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-super {p0, p1, p2}, Lorg/eclipse/jdt/core/ClasspathContainerInitializer;->getDescription(Lorg/eclipse/core/runtime/IPath;Lorg/eclipse/jdt/core/IJavaProject;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public initialize(Lorg/eclipse/core/runtime/IPath;Lorg/eclipse/jdt/core/IJavaProject;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/core/runtime/CoreException;
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/core/UserLibraryClasspathContainerInitializer;->isUserLibraryContainer(Lorg/eclipse/core/runtime/IPath;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p1, v1}, Lorg/eclipse/core/runtime/IPath;->segment(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lorg/eclipse/jdt/internal/core/JavaModelManager;->getUserLibraryManager()Lorg/eclipse/jdt/internal/core/UserLibraryManager;

    move-result-object v3

    invoke-virtual {v3, v2}, Lorg/eclipse/jdt/internal/core/UserLibraryManager;->getUserLibrary(Ljava/lang/String;)Lorg/eclipse/jdt/internal/core/UserLibrary;

    move-result-object v3

    if-eqz v3, :cond_0

    new-instance v3, Lorg/eclipse/jdt/internal/core/UserLibraryClasspathContainer;

    invoke-direct {v3, v2}, Lorg/eclipse/jdt/internal/core/UserLibraryClasspathContainer;-><init>(Ljava/lang/String;)V

    new-array v2, v1, [Lorg/eclipse/jdt/core/IJavaProject;

    aput-object p2, v2, v0

    new-array p2, v1, [Lorg/eclipse/jdt/core/IClasspathContainer;

    aput-object v3, p2, v0

    const/4 v0, 0x0

    invoke-static {p1, v2, p2, v0}, Lorg/eclipse/jdt/core/JavaCore;->setClasspathContainer(Lorg/eclipse/core/runtime/IPath;[Lorg/eclipse/jdt/core/IJavaProject;[Lorg/eclipse/jdt/core/IClasspathContainer;Lorg/eclipse/core/runtime/IProgressMonitor;)V

    goto :goto_0

    :cond_0
    sget-boolean p1, Lorg/eclipse/jdt/internal/core/JavaModelManager;->CP_RESOLVE_VERBOSE:Z

    if-nez p1, :cond_1

    sget-boolean p1, Lorg/eclipse/jdt/internal/core/JavaModelManager;->CP_RESOLVE_VERBOSE_FAILURE:Z

    if-eqz p1, :cond_4

    :cond_1
    invoke-direct {p0, p2, v2}, Lorg/eclipse/jdt/internal/core/UserLibraryClasspathContainerInitializer;->verbose_no_user_library_found(Lorg/eclipse/jdt/core/IJavaProject;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    sget-boolean v0, Lorg/eclipse/jdt/internal/core/JavaModelManager;->CP_RESOLVE_VERBOSE:Z

    if-nez v0, :cond_3

    sget-boolean v0, Lorg/eclipse/jdt/internal/core/JavaModelManager;->CP_RESOLVE_VERBOSE_FAILURE:Z

    if-eqz v0, :cond_4

    :cond_3
    invoke-direct {p0, p2, p1}, Lorg/eclipse/jdt/internal/core/UserLibraryClasspathContainerInitializer;->verbose_not_a_user_library(Lorg/eclipse/jdt/core/IJavaProject;Lorg/eclipse/core/runtime/IPath;)V

    :cond_4
    :goto_0
    return-void
.end method

.method public requestClasspathContainerUpdate(Lorg/eclipse/core/runtime/IPath;Lorg/eclipse/jdt/core/IJavaProject;Lorg/eclipse/jdt/core/IClasspathContainer;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/core/runtime/CoreException;
        }
    .end annotation

    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/core/UserLibraryClasspathContainerInitializer;->isUserLibraryContainer(Lorg/eclipse/core/runtime/IPath;)Z

    move-result p2

    if-eqz p2, :cond_2

    const/4 p2, 0x1

    invoke-interface {p1, p2}, Lorg/eclipse/core/runtime/IPath;->segment(I)Ljava/lang/String;

    move-result-object p1

    if-eqz p3, :cond_1

    invoke-static {}, Lorg/eclipse/jdt/internal/core/JavaModelManager;->getUserLibraryManager()Lorg/eclipse/jdt/internal/core/UserLibraryManager;

    move-result-object v0

    invoke-interface {p3}, Lorg/eclipse/jdt/core/IClasspathContainer;->getClasspathEntries()[Lorg/eclipse/jdt/core/IClasspathEntry;

    move-result-object v1

    invoke-interface {p3}, Lorg/eclipse/jdt/core/IClasspathContainer;->getKind()I

    move-result p3

    const/4 v2, 0x2

    if-ne p3, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    invoke-virtual {v0, p1, v1, p2}, Lorg/eclipse/jdt/internal/core/UserLibraryManager;->setUserLibrary(Ljava/lang/String;[Lorg/eclipse/jdt/core/IClasspathEntry;Z)V

    goto :goto_1

    :cond_1
    invoke-static {}, Lorg/eclipse/jdt/internal/core/JavaModelManager;->getUserLibraryManager()Lorg/eclipse/jdt/internal/core/UserLibraryManager;

    move-result-object p2

    invoke-virtual {p2, p1}, Lorg/eclipse/jdt/internal/core/UserLibraryManager;->removeUserLibrary(Ljava/lang/String;)V

    :cond_2
    :goto_1
    return-void
.end method
