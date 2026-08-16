.class public Lorg/eclipse/jdt/internal/core/SetClasspathOperation;
.super Lorg/eclipse/jdt/internal/core/ChangeClasspathOperation;
.source "SourceFile"


# instance fields
.field newOutputLocation:Lorg/eclipse/core/runtime/IPath;

.field newRawClasspath:[Lorg/eclipse/jdt/core/IClasspathEntry;

.field project:Lorg/eclipse/jdt/internal/core/JavaProject;

.field referencedEntries:[Lorg/eclipse/jdt/core/IClasspathEntry;


# direct methods
.method public constructor <init>(Lorg/eclipse/jdt/internal/core/JavaProject;[Lorg/eclipse/jdt/core/IClasspathEntry;Lorg/eclipse/core/runtime/IPath;Z)V
    .locals 6

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move v5, p4

    .line 1
    invoke-direct/range {v0 .. v5}, Lorg/eclipse/jdt/internal/core/SetClasspathOperation;-><init>(Lorg/eclipse/jdt/internal/core/JavaProject;[Lorg/eclipse/jdt/core/IClasspathEntry;[Lorg/eclipse/jdt/core/IClasspathEntry;Lorg/eclipse/core/runtime/IPath;Z)V

    return-void
.end method

.method public constructor <init>(Lorg/eclipse/jdt/internal/core/JavaProject;[Lorg/eclipse/jdt/core/IClasspathEntry;[Lorg/eclipse/jdt/core/IClasspathEntry;Lorg/eclipse/core/runtime/IPath;Z)V
    .locals 2

    const/4 v0, 0x1

    .line 2
    new-array v0, v0, [Lorg/eclipse/jdt/core/IJavaElement;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-direct {p0, v0, p5}, Lorg/eclipse/jdt/internal/core/ChangeClasspathOperation;-><init>([Lorg/eclipse/jdt/core/IJavaElement;Z)V

    .line 3
    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/SetClasspathOperation;->project:Lorg/eclipse/jdt/internal/core/JavaProject;

    .line 4
    iput-object p2, p0, Lorg/eclipse/jdt/internal/core/SetClasspathOperation;->newRawClasspath:[Lorg/eclipse/jdt/core/IClasspathEntry;

    .line 5
    iput-object p3, p0, Lorg/eclipse/jdt/internal/core/SetClasspathOperation;->referencedEntries:[Lorg/eclipse/jdt/core/IClasspathEntry;

    .line 6
    iput-object p4, p0, Lorg/eclipse/jdt/internal/core/SetClasspathOperation;->newOutputLocation:Lorg/eclipse/core/runtime/IPath;

    return-void
.end method


# virtual methods
.method public executeOperation()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/JavaModelException;
        }
    .end annotation

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/JavaModelOperation;->checkCanceled()V

    :try_start_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/SetClasspathOperation;->project:Lorg/eclipse/jdt/internal/core/JavaProject;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/core/JavaProject;->getPerProjectInfo()Lorg/eclipse/jdt/internal/core/JavaModelManager$PerProjectInfo;

    move-result-object v0

    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/SetClasspathOperation;->newRawClasspath:[Lorg/eclipse/jdt/core/IClasspathEntry;

    iget-object v2, p0, Lorg/eclipse/jdt/internal/core/SetClasspathOperation;->referencedEntries:[Lorg/eclipse/jdt/core/IClasspathEntry;

    iget-object v3, p0, Lorg/eclipse/jdt/internal/core/SetClasspathOperation;->newOutputLocation:Lorg/eclipse/core/runtime/IPath;

    sget-object v4, Lorg/eclipse/jdt/internal/core/JavaModelStatus;->VERIFIED_OK:Lorg/eclipse/jdt/core/IJavaModelStatus;

    invoke-virtual {v0, v1, v2, v3, v4}, Lorg/eclipse/jdt/internal/core/JavaModelManager$PerProjectInfo;->setRawClasspath([Lorg/eclipse/jdt/core/IClasspathEntry;[Lorg/eclipse/jdt/core/IClasspathEntry;Lorg/eclipse/core/runtime/IPath;Lorg/eclipse/jdt/core/IJavaModelStatus;)Lorg/eclipse/jdt/internal/core/ClasspathChange;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v2}, Lorg/eclipse/jdt/internal/core/ChangeClasspathOperation;->classpathChanged(Lorg/eclipse/jdt/internal/core/ClasspathChange;Z)V

    iget-boolean v1, p0, Lorg/eclipse/jdt/internal/core/ChangeClasspathOperation;->canChangeResources:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/SetClasspathOperation;->project:Lorg/eclipse/jdt/internal/core/JavaProject;

    iget-object v2, p0, Lorg/eclipse/jdt/internal/core/SetClasspathOperation;->newRawClasspath:[Lorg/eclipse/jdt/core/IClasspathEntry;

    iget-object v3, p0, Lorg/eclipse/jdt/internal/core/SetClasspathOperation;->newOutputLocation:Lorg/eclipse/core/runtime/IPath;

    invoke-virtual {v0, v1, v2, v3}, Lorg/eclipse/jdt/internal/core/JavaModelManager$PerProjectInfo;->writeAndCacheClasspath(Lorg/eclipse/jdt/internal/core/JavaProject;[Lorg/eclipse/jdt/core/IClasspathEntry;Lorg/eclipse/core/runtime/IPath;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "hasModifiedResource"

    const-string v1, "true"

    invoke-static {v0, v1}, Lorg/eclipse/jdt/internal/core/JavaModelOperation;->setAttribute(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/JavaModelOperation;->done()V

    return-void

    :goto_1
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/JavaModelOperation;->done()V

    throw v0
.end method

.method public getSchedulingRule()Lorg/eclipse/core/runtime/jobs/ISchedulingRule;
    .locals 5

    iget-boolean v0, p0, Lorg/eclipse/jdt/internal/core/ChangeClasspathOperation;->canChangeResources:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lorg/eclipse/core/resources/ResourcesPlugin;->getWorkspace()Lorg/eclipse/core/resources/IWorkspace;

    move-result-object v0

    invoke-interface {v0}, Lorg/eclipse/core/resources/IWorkspace;->getRuleFactory()Lorg/eclipse/core/resources/IResourceRuleFactory;

    move-result-object v0

    new-instance v1, Lorg/eclipse/core/runtime/jobs/MultiRule;

    const/4 v2, 0x2

    new-array v2, v2, [Lorg/eclipse/core/runtime/jobs/ISchedulingRule;

    iget-object v3, p0, Lorg/eclipse/jdt/internal/core/SetClasspathOperation;->project:Lorg/eclipse/jdt/internal/core/JavaProject;

    invoke-virtual {v3}, Lorg/eclipse/jdt/internal/core/JavaProject;->getProject()Lorg/eclipse/core/resources/IProject;

    move-result-object v3

    invoke-interface {v0, v3}, Lorg/eclipse/core/resources/IResourceRuleFactory;->modifyRule(Lorg/eclipse/core/resources/IResource;)Lorg/eclipse/core/runtime/jobs/ISchedulingRule;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {}, Lorg/eclipse/jdt/internal/core/JavaModelManager;->getExternalManager()Lorg/eclipse/jdt/internal/core/ExternalFoldersManager;

    move-result-object v3

    invoke-virtual {v3}, Lorg/eclipse/jdt/internal/core/ExternalFoldersManager;->getExternalFoldersProject()Lorg/eclipse/core/resources/IProject;

    move-result-object v3

    invoke-interface {v0, v3}, Lorg/eclipse/core/resources/IResourceRuleFactory;->modifyRule(Lorg/eclipse/core/resources/IResource;)Lorg/eclipse/core/runtime/jobs/ISchedulingRule;

    move-result-object v0

    const/4 v3, 0x1

    aput-object v0, v2, v3

    invoke-direct {v1, v2}, Lorg/eclipse/core/runtime/jobs/MultiRule;-><init>([Lorg/eclipse/core/runtime/jobs/ISchedulingRule;)V

    return-object v1

    :cond_0
    invoke-super {p0}, Lorg/eclipse/jdt/internal/core/ChangeClasspathOperation;->getSchedulingRule()Lorg/eclipse/core/runtime/jobs/ISchedulingRule;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuffer;

    const/16 v1, 0x14

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    const-string v1, "SetClasspathOperation\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, " - classpath : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lorg/eclipse/jdt/internal/core/SetClasspathOperation;->newRawClasspath:[Lorg/eclipse/jdt/core/IClasspathEntry;

    array-length v2, v2

    if-lt v1, v2, :cond_0

    const-string v1, "\n - output location : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/SetClasspathOperation;->newOutputLocation:Lorg/eclipse/core/runtime/IPath;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    if-lez v1, :cond_1

    const-string v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_1
    iget-object v2, p0, Lorg/eclipse/jdt/internal/core/SetClasspathOperation;->newRawClasspath:[Lorg/eclipse/jdt/core/IClasspathEntry;

    aget-object v2, v2, v1

    const-string v3, " "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v1, v1, 0x1

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
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/SetClasspathOperation;->project:Lorg/eclipse/jdt/internal/core/JavaProject;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v2, v1}, Lorg/eclipse/jdt/internal/core/JavaProject;->flushClasspathProblemMarkers(ZZZ)V

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/SetClasspathOperation;->project:Lorg/eclipse/jdt/internal/core/JavaProject;

    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/SetClasspathOperation;->newRawClasspath:[Lorg/eclipse/jdt/core/IClasspathEntry;

    iget-object v2, p0, Lorg/eclipse/jdt/internal/core/SetClasspathOperation;->newOutputLocation:Lorg/eclipse/core/runtime/IPath;

    invoke-static {v0, v1, v2}, Lorg/eclipse/jdt/internal/core/ClasspathEntry;->validateClasspath(Lorg/eclipse/jdt/core/IJavaProject;[Lorg/eclipse/jdt/core/IClasspathEntry;Lorg/eclipse/core/runtime/IPath;)Lorg/eclipse/jdt/core/IJavaModelStatus;

    move-result-object v0

    return-object v0
.end method
