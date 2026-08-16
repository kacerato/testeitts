.class public Lorg/eclipse/jdt/internal/core/ModulePathContainerInitializer;
.super Lorg/eclipse/jdt/core/ClasspathContainerInitializer;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/eclipse/jdt/core/ClasspathContainerInitializer;-><init>()V

    return-void
.end method

.method private isModulePathContainer(Lorg/eclipse/core/runtime/IPath;)Z
    .locals 2

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    const-string v1, "org.eclipse.jdt.MODULE_PATH"

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

.method private verbose_not_a_module_project(Lorg/eclipse/jdt/core/IJavaProject;Lorg/eclipse/core/runtime/IPath;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Module path INIT - FAILED (not a module project)\n\tproject: "

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
.method public initialize(Lorg/eclipse/core/runtime/IPath;Lorg/eclipse/jdt/core/IJavaProject;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/core/runtime/CoreException;
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/core/ModulePathContainerInitializer;->isModulePathContainer(Lorg/eclipse/core/runtime/IPath;)Z

    move-result v2

    if-eqz v2, :cond_0

    instance-of v2, p2, Lorg/eclipse/jdt/internal/core/JavaProject;

    if-eqz v2, :cond_2

    new-instance v2, Lorg/eclipse/jdt/internal/core/ModulePathContainer;

    invoke-direct {v2, p2}, Lorg/eclipse/jdt/internal/core/ModulePathContainer;-><init>(Lorg/eclipse/jdt/core/IJavaProject;)V

    new-array v3, v1, [Lorg/eclipse/jdt/core/IJavaProject;

    aput-object p2, v3, v0

    new-array p2, v1, [Lorg/eclipse/jdt/core/IClasspathContainer;

    aput-object v2, p2, v0

    const/4 v0, 0x0

    invoke-static {p1, v3, p2, v0}, Lorg/eclipse/jdt/core/JavaCore;->setClasspathContainer(Lorg/eclipse/core/runtime/IPath;[Lorg/eclipse/jdt/core/IJavaProject;[Lorg/eclipse/jdt/core/IClasspathContainer;Lorg/eclipse/core/runtime/IProgressMonitor;)V

    goto :goto_0

    :cond_0
    sget-boolean v0, Lorg/eclipse/jdt/internal/core/JavaModelManager;->CP_RESOLVE_VERBOSE:Z

    if-nez v0, :cond_1

    sget-boolean v0, Lorg/eclipse/jdt/internal/core/JavaModelManager;->CP_RESOLVE_VERBOSE_FAILURE:Z

    if-eqz v0, :cond_2

    :cond_1
    invoke-direct {p0, p2, p1}, Lorg/eclipse/jdt/internal/core/ModulePathContainerInitializer;->verbose_not_a_module_project(Lorg/eclipse/jdt/core/IJavaProject;Lorg/eclipse/core/runtime/IPath;)V

    :cond_2
    :goto_0
    return-void
.end method
