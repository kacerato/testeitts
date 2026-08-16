.class public Lorg/eclipse/jdt/internal/core/ClasspathValidation;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private project:Lorg/eclipse/jdt/internal/core/JavaProject;


# direct methods
.method public constructor <init>(Lorg/eclipse/jdt/internal/core/JavaProject;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/ClasspathValidation;->project:Lorg/eclipse/jdt/internal/core/JavaProject;

    return-void
.end method


# virtual methods
.method public validate()V
    .locals 6

    const/4 v0, 0x1

    :try_start_0
    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/ClasspathValidation;->project:Lorg/eclipse/jdt/internal/core/JavaProject;

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/core/JavaProject;->getPerProjectInfo()Lorg/eclipse/jdt/internal/core/JavaModelManager$PerProjectInfo;

    move-result-object v1
    :try_end_0
    .catch Lorg/eclipse/jdt/core/JavaModelException; {:try_start_0 .. :try_end_0} :catch_0

    monitor-enter v1

    :try_start_1
    iget-object v2, v1, Lorg/eclipse/jdt/internal/core/JavaModelManager$PerProjectInfo;->rawClasspath:[Lorg/eclipse/jdt/core/IClasspathEntry;

    iget-object v3, v1, Lorg/eclipse/jdt/internal/core/JavaModelManager$PerProjectInfo;->outputLocation:Lorg/eclipse/core/runtime/IPath;

    iget-object v4, v1, Lorg/eclipse/jdt/internal/core/JavaModelManager$PerProjectInfo;->rawClasspathStatus:Lorg/eclipse/jdt/core/IJavaModelStatus;

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/ClasspathValidation;->project:Lorg/eclipse/jdt/internal/core/JavaProject;

    const/4 v5, 0x0

    invoke-virtual {v1, v5, v0, v5}, Lorg/eclipse/jdt/internal/core/JavaProject;->flushClasspathProblemMarkers(ZZZ)V

    invoke-interface {v4}, Lorg/eclipse/jdt/core/IJavaModelStatus;->isOK()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/ClasspathValidation;->project:Lorg/eclipse/jdt/internal/core/JavaProject;

    invoke-virtual {v1, v4}, Lorg/eclipse/jdt/internal/core/JavaProject;->createClasspathProblemMarker(Lorg/eclipse/jdt/core/IJavaModelStatus;)V

    :cond_0
    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/ClasspathValidation;->project:Lorg/eclipse/jdt/internal/core/JavaProject;

    invoke-virtual {v1, v5, v5, v0}, Lorg/eclipse/jdt/internal/core/JavaProject;->flushClasspathProblemMarkers(ZZZ)V

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/ClasspathValidation;->project:Lorg/eclipse/jdt/internal/core/JavaProject;

    invoke-virtual {v0, v5, v5, v5}, Lorg/eclipse/jdt/internal/core/JavaProject;->flushClasspathProblemMarkers(ZZZ)V

    sget-object v0, Lorg/eclipse/jdt/internal/core/JavaProject;->INVALID_CLASSPATH:[Lorg/eclipse/jdt/core/IClasspathEntry;

    if-eq v2, v0, :cond_3

    if-eqz v3, :cond_3

    move v0, v5

    :goto_0
    array-length v1, v2

    if-lt v0, v1, :cond_1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/ClasspathValidation;->project:Lorg/eclipse/jdt/internal/core/JavaProject;

    invoke-static {v0, v2, v3}, Lorg/eclipse/jdt/internal/core/ClasspathEntry;->validateClasspath(Lorg/eclipse/jdt/core/IJavaProject;[Lorg/eclipse/jdt/core/IClasspathEntry;Lorg/eclipse/core/runtime/IPath;)Lorg/eclipse/jdt/core/IJavaModelStatus;

    move-result-object v0

    invoke-interface {v0}, Lorg/eclipse/jdt/core/IJavaModelStatus;->getCode()I

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/ClasspathValidation;->project:Lorg/eclipse/jdt/internal/core/JavaProject;

    invoke-virtual {v1, v0}, Lorg/eclipse/jdt/internal/core/JavaProject;->createClasspathProblemMarker(Lorg/eclipse/jdt/core/IJavaModelStatus;)V

    goto :goto_1

    :cond_1
    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/ClasspathValidation;->project:Lorg/eclipse/jdt/internal/core/JavaProject;

    aget-object v4, v2, v0

    invoke-static {v1, v4, v5, v5}, Lorg/eclipse/jdt/internal/core/ClasspathEntry;->validateClasspathEntry(Lorg/eclipse/jdt/core/IJavaProject;Lorg/eclipse/jdt/core/IClasspathEntry;ZZ)Lorg/eclipse/jdt/core/IJavaModelStatus;

    move-result-object v1

    invoke-interface {v1}, Lorg/eclipse/jdt/core/IJavaModelStatus;->isOK()Z

    move-result v4

    if-nez v4, :cond_2

    iget-object v4, p0, Lorg/eclipse/jdt/internal/core/ClasspathValidation;->project:Lorg/eclipse/jdt/internal/core/JavaProject;

    invoke-virtual {v4, v1}, Lorg/eclipse/jdt/internal/core/JavaProject;->createClasspathProblemMarker(Lorg/eclipse/jdt/core/IJavaModelStatus;)V

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    return-void

    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :catch_0
    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/ClasspathValidation;->project:Lorg/eclipse/jdt/internal/core/JavaProject;

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/core/JavaProject;->getProject()Lorg/eclipse/core/resources/IProject;

    move-result-object v1

    invoke-interface {v1}, Lorg/eclipse/core/resources/IProject;->isAccessible()Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lorg/eclipse/jdt/internal/core/ClasspathValidation;->project:Lorg/eclipse/jdt/internal/core/JavaProject;

    invoke-virtual {v2, v0, v0, v0}, Lorg/eclipse/jdt/internal/core/JavaProject;->flushClasspathProblemMarkers(ZZZ)V

    invoke-static {v1}, Lorg/eclipse/jdt/internal/core/builder/JavaBuilder;->removeProblemsAndTasksFor(Lorg/eclipse/core/resources/IResource;)V

    :cond_4
    return-void
.end method
