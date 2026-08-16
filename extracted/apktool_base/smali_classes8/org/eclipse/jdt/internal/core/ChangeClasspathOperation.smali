.class public abstract Lorg/eclipse/jdt/internal/core/ChangeClasspathOperation;
.super Lorg/eclipse/jdt/internal/core/JavaModelOperation;
.source "SourceFile"


# instance fields
.field protected canChangeResources:Z


# direct methods
.method public constructor <init>([Lorg/eclipse/jdt/core/IJavaElement;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/core/JavaModelOperation;-><init>([Lorg/eclipse/jdt/core/IJavaElement;)V

    iput-boolean p2, p0, Lorg/eclipse/jdt/internal/core/ChangeClasspathOperation;->canChangeResources:Z

    return-void
.end method


# virtual methods
.method public canModifyRoots()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public classpathChanged(Lorg/eclipse/jdt/internal/core/ClasspathChange;Z)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/JavaModelException;
        }
    .end annotation

    iget-object v0, p1, Lorg/eclipse/jdt/internal/core/ClasspathChange;->project:Lorg/eclipse/jdt/internal/core/JavaProject;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/core/JavaProject;->resetCaches()V

    iget-boolean v1, p0, Lorg/eclipse/jdt/internal/core/ChangeClasspathOperation;->canChangeResources:Z

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/JavaModelOperation;->isTopLevelOperation()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lorg/eclipse/core/resources/ResourcesPlugin;->getWorkspace()Lorg/eclipse/core/resources/IWorkspace;

    move-result-object v1

    invoke-interface {v1}, Lorg/eclipse/core/resources/IWorkspace;->isTreeLocked()Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Lorg/eclipse/jdt/internal/core/ClasspathValidation;

    invoke-direct {v1, v0}, Lorg/eclipse/jdt/internal/core/ClasspathValidation;-><init>(Lorg/eclipse/jdt/internal/core/JavaProject;)V

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/core/ClasspathValidation;->validate()V

    :cond_0
    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/core/JavaProject;->getProject()Lorg/eclipse/core/resources/IProject;

    move-result-object v1

    invoke-interface {v1}, Lorg/eclipse/core/resources/IProject;->clearCachedDynamicReferences()V

    new-instance v1, Lorg/eclipse/jdt/internal/core/ExternalFolderChange;

    iget-object p1, p1, Lorg/eclipse/jdt/internal/core/ClasspathChange;->oldResolvedClasspath:[Lorg/eclipse/jdt/core/IClasspathEntry;

    invoke-direct {v1, v0, p1}, Lorg/eclipse/jdt/internal/core/ExternalFolderChange;-><init>(Lorg/eclipse/jdt/internal/core/JavaProject;[Lorg/eclipse/jdt/core/IClasspathEntry;)V

    const/4 p1, 0x0

    invoke-virtual {v1, p2, p1}, Lorg/eclipse/jdt/internal/core/ExternalFolderChange;->updateExternalFoldersIfNecessary(ZLorg/eclipse/core/runtime/IProgressMonitor;)V

    goto :goto_0

    :cond_1
    invoke-static {}, Lorg/eclipse/jdt/internal/core/JavaModelManager;->getDeltaState()Lorg/eclipse/jdt/internal/core/DeltaProcessingState;

    move-result-object p2

    new-instance v1, Lorg/eclipse/jdt/internal/core/JavaElementDelta;

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/JavaModelOperation;->getJavaModel()Lorg/eclipse/jdt/core/IJavaModel;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/eclipse/jdt/internal/core/JavaElementDelta;-><init>(Lorg/eclipse/jdt/core/IJavaElement;)V

    const/4 v2, 0x1

    invoke-virtual {p1, v1, v2}, Lorg/eclipse/jdt/internal/core/ClasspathChange;->generateDelta(Lorg/eclipse/jdt/internal/core/JavaElementDelta;Z)I

    move-result v3

    and-int/lit8 v4, v3, 0x1

    if-eqz v4, :cond_2

    invoke-virtual {p0, v1}, Lorg/eclipse/jdt/internal/core/JavaModelOperation;->addDelta(Lorg/eclipse/jdt/core/IJavaElementDelta;)V

    iput-boolean v2, p2, Lorg/eclipse/jdt/internal/core/DeltaProcessingState;->rootsAreStale:Z

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/core/ClasspathChange;->requestIndexing()V

    invoke-virtual {p2, v0}, Lorg/eclipse/jdt/internal/core/DeltaProcessingState;->addClasspathValidation(Lorg/eclipse/jdt/internal/core/JavaProject;)Lorg/eclipse/jdt/internal/core/ClasspathValidation;

    :cond_2
    and-int/lit8 v1, v3, 0x2

    if-eqz v1, :cond_3

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/core/JavaProject;->getProject()Lorg/eclipse/core/resources/IProject;

    move-result-object v1

    invoke-interface {v1}, Lorg/eclipse/core/resources/IProject;->clearCachedDynamicReferences()V

    invoke-virtual {p2, v0}, Lorg/eclipse/jdt/internal/core/DeltaProcessingState;->addProjectReferenceChange(Lorg/eclipse/jdt/core/IJavaProject;)V

    :cond_3
    and-int/lit8 v1, v3, 0x4

    if-eqz v1, :cond_4

    iget-object p1, p1, Lorg/eclipse/jdt/internal/core/ClasspathChange;->oldResolvedClasspath:[Lorg/eclipse/jdt/core/IClasspathEntry;

    invoke-virtual {p2, v0, p1}, Lorg/eclipse/jdt/internal/core/DeltaProcessingState;->addExternalFolderChange(Lorg/eclipse/jdt/internal/core/JavaProject;[Lorg/eclipse/jdt/core/IClasspathEntry;)V

    :cond_4
    :goto_0
    return-void
.end method

.method public getSchedulingRule()Lorg/eclipse/core/runtime/jobs/ISchedulingRule;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public isReadOnly()Z
    .locals 1

    iget-boolean v0, p0, Lorg/eclipse/jdt/internal/core/ChangeClasspathOperation;->canChangeResources:Z

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method
