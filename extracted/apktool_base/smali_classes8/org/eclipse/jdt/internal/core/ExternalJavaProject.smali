.class public Lorg/eclipse/jdt/internal/core/ExternalJavaProject;
.super Lorg/eclipse/jdt/internal/core/JavaProject;
.source "SourceFile"


# static fields
.field public static final EXTERNAL_PROJECT_NAME:Ljava/lang/String; = " "


# direct methods
.method public constructor <init>([Lorg/eclipse/jdt/core/IClasspathEntry;)V
    .locals 3

    invoke-static {}, Lorg/eclipse/core/resources/ResourcesPlugin;->getWorkspace()Lorg/eclipse/core/resources/IWorkspace;

    move-result-object v0

    invoke-interface {v0}, Lorg/eclipse/core/resources/IWorkspace;->getRoot()Lorg/eclipse/core/resources/IWorkspaceRoot;

    move-result-object v0

    const-string v1, " "

    invoke-interface {v0, v1}, Lorg/eclipse/core/resources/IWorkspaceRoot;->getProject(Ljava/lang/String;)Lorg/eclipse/core/resources/IProject;

    move-result-object v0

    invoke-static {}, Lorg/eclipse/jdt/internal/core/JavaModelManager;->getJavaModelManager()Lorg/eclipse/jdt/internal/core/JavaModelManager;

    move-result-object v1

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/core/JavaModelManager;->getJavaModel()Lorg/eclipse/jdt/internal/core/JavaModel;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lorg/eclipse/jdt/internal/core/JavaProject;-><init>(Lorg/eclipse/core/resources/IProject;Lorg/eclipse/jdt/internal/core/JavaElement;)V

    :try_start_0
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/JavaProject;->getPerProjectInfo()Lorg/eclipse/jdt/internal/core/JavaModelManager$PerProjectInfo;

    move-result-object v0

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/JavaProject;->defaultOutputLocation()Lorg/eclipse/core/runtime/IPath;

    move-result-object v1

    sget-object v2, Lorg/eclipse/jdt/internal/core/JavaModelStatus;->VERIFIED_OK:Lorg/eclipse/jdt/core/IJavaModelStatus;

    invoke-virtual {v0, p1, v1, v2}, Lorg/eclipse/jdt/internal/core/JavaModelManager$PerProjectInfo;->setRawClasspath([Lorg/eclipse/jdt/core/IClasspathEntry;Lorg/eclipse/core/runtime/IPath;Lorg/eclipse/jdt/core/IJavaModelStatus;)Lorg/eclipse/jdt/internal/core/ClasspathChange;
    :try_end_0
    .catch Lorg/eclipse/jdt/core/JavaModelException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 0

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public exists()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getOption(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 1

    const-string v0, "org.eclipse.jdt.core.compiler.problem.forbiddenReference"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "org.eclipse.jdt.core.compiler.problem.discouragedReference"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-super {p0, p1, p2}, Lorg/eclipse/jdt/internal/core/JavaProject;->getOption(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_1
    :goto_0
    const-string p1, "ignore"

    return-object p1
.end method

.method public isOnClasspath(Lorg/eclipse/core/resources/IResource;)Z
    .locals 0

    .line 1
    const/4 p1, 0x0

    return p1
.end method

.method public isOnClasspath(Lorg/eclipse/jdt/core/IJavaElement;)Z
    .locals 0

    .line 2
    const/4 p1, 0x0

    return p1
.end method

.method public validateExistence(Lorg/eclipse/core/resources/IResource;)Lorg/eclipse/core/runtime/IStatus;
    .locals 0

    sget-object p1, Lorg/eclipse/jdt/internal/core/JavaModelStatus;->VERIFIED_OK:Lorg/eclipse/jdt/core/IJavaModelStatus;

    return-object p1
.end method
