.class public Lorg/eclipse/jdt/internal/core/BatchOperation;
.super Lorg/eclipse/jdt/internal/core/JavaModelOperation;
.source "SourceFile"


# instance fields
.field protected runnable:Lorg/eclipse/core/resources/IWorkspaceRunnable;


# direct methods
.method public constructor <init>(Lorg/eclipse/core/resources/IWorkspaceRunnable;)V
    .locals 0

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/core/JavaModelOperation;-><init>()V

    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/BatchOperation;->runnable:Lorg/eclipse/core/resources/IWorkspaceRunnable;

    return-void
.end method


# virtual methods
.method public canModifyRoots()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public executeOperation()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/JavaModelException;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/BatchOperation;->runnable:Lorg/eclipse/core/resources/IWorkspaceRunnable;

    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/JavaModelOperation;->progressMonitor:Lorg/eclipse/core/runtime/SubMonitor;

    invoke-interface {v0, v1}, Lorg/eclipse/core/resources/IWorkspaceRunnable;->run(Lorg/eclipse/core/runtime/IProgressMonitor;)V
    :try_end_0
    .catch Lorg/eclipse/core/runtime/CoreException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    instance-of v1, v0, Lorg/eclipse/jdt/core/JavaModelException;

    if-nez v1, :cond_1

    invoke-virtual {v0}, Lorg/eclipse/core/runtime/CoreException;->getStatus()Lorg/eclipse/core/runtime/IStatus;

    move-result-object v1

    invoke-interface {v1}, Lorg/eclipse/core/runtime/IStatus;->getCode()I

    move-result v1

    const/16 v2, 0x4c

    if-ne v1, v2, :cond_0

    invoke-virtual {v0}, Lorg/eclipse/core/runtime/CoreException;->getStatus()Lorg/eclipse/core/runtime/IStatus;

    move-result-object v1

    invoke-interface {v1}, Lorg/eclipse/core/runtime/IStatus;->getException()Ljava/lang/Throwable;

    :cond_0
    new-instance v1, Lorg/eclipse/jdt/core/JavaModelException;

    invoke-direct {v1, v0}, Lorg/eclipse/jdt/core/JavaModelException;-><init>(Lorg/eclipse/core/runtime/CoreException;)V

    throw v1

    :cond_1
    check-cast v0, Lorg/eclipse/jdt/core/JavaModelException;

    throw v0
.end method

.method public verify()Lorg/eclipse/jdt/core/IJavaModelStatus;
    .locals 1

    sget-object v0, Lorg/eclipse/jdt/internal/core/JavaModelStatus;->VERIFIED_OK:Lorg/eclipse/jdt/core/IJavaModelStatus;

    return-object v0
.end method
