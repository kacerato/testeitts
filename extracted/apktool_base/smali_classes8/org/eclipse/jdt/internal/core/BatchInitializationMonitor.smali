.class public Lorg/eclipse/jdt/internal/core/BatchInitializationMonitor;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/eclipse/core/runtime/IProgressMonitor;


# instance fields
.field public initializeAfterLoadMonitor:Ljava/lang/ThreadLocal;

.field public subTaskName:Ljava/lang/String;

.field public worked:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    iput-object v0, p0, Lorg/eclipse/jdt/internal/core/BatchInitializationMonitor;->initializeAfterLoadMonitor:Ljava/lang/ThreadLocal;

    const-string v0, ""

    iput-object v0, p0, Lorg/eclipse/jdt/internal/core/BatchInitializationMonitor;->subTaskName:Ljava/lang/String;

    const/4 v0, 0x0

    iput v0, p0, Lorg/eclipse/jdt/internal/core/BatchInitializationMonitor;->worked:I

    return-void
.end method

.method private getMonitor()Lorg/eclipse/core/runtime/IProgressMonitor;
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/BatchInitializationMonitor;->initializeAfterLoadMonitor:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/eclipse/core/runtime/IProgressMonitor;

    return-object v0
.end method


# virtual methods
.method public beginTask(Ljava/lang/String;I)V
    .locals 1

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/core/BatchInitializationMonitor;->getMonitor()Lorg/eclipse/core/runtime/IProgressMonitor;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2}, Lorg/eclipse/core/runtime/IProgressMonitor;->beginTask(Ljava/lang/String;I)V

    :cond_0
    return-void
.end method

.method public done()V
    .locals 1

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/core/BatchInitializationMonitor;->getMonitor()Lorg/eclipse/core/runtime/IProgressMonitor;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lorg/eclipse/core/runtime/IProgressMonitor;->done()V

    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lorg/eclipse/jdt/internal/core/BatchInitializationMonitor;->worked:I

    const-string v0, ""

    iput-object v0, p0, Lorg/eclipse/jdt/internal/core/BatchInitializationMonitor;->subTaskName:Ljava/lang/String;

    return-void
.end method

.method public declared-synchronized getWorked()I
    .locals 2

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lorg/eclipse/jdt/internal/core/BatchInitializationMonitor;->worked:I

    const/4 v1, 0x0

    iput v1, p0, Lorg/eclipse/jdt/internal/core/BatchInitializationMonitor;->worked:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public internalWorked(D)V
    .locals 1

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/core/BatchInitializationMonitor;->getMonitor()Lorg/eclipse/core/runtime/IProgressMonitor;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2}, Lorg/eclipse/core/runtime/IProgressMonitor;->internalWorked(D)V

    :cond_0
    return-void
.end method

.method public isCanceled()Z
    .locals 1

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/core/BatchInitializationMonitor;->getMonitor()Lorg/eclipse/core/runtime/IProgressMonitor;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lorg/eclipse/core/runtime/IProgressMonitor;->isCanceled()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public setCanceled(Z)V
    .locals 1

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/core/BatchInitializationMonitor;->getMonitor()Lorg/eclipse/core/runtime/IProgressMonitor;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lorg/eclipse/core/runtime/IProgressMonitor;->setCanceled(Z)V

    :cond_0
    return-void
.end method

.method public setTaskName(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/core/BatchInitializationMonitor;->getMonitor()Lorg/eclipse/core/runtime/IProgressMonitor;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lorg/eclipse/core/runtime/IProgressMonitor;->setTaskName(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public subTask(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/core/BatchInitializationMonitor;->getMonitor()Lorg/eclipse/core/runtime/IProgressMonitor;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lorg/eclipse/core/runtime/IProgressMonitor;->subTask(Ljava/lang/String;)V

    :cond_0
    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/BatchInitializationMonitor;->subTaskName:Ljava/lang/String;

    return-void
.end method

.method public worked(I)V
    .locals 1

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/core/BatchInitializationMonitor;->getMonitor()Lorg/eclipse/core/runtime/IProgressMonitor;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lorg/eclipse/core/runtime/IProgressMonitor;->worked(I)V

    :cond_0
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lorg/eclipse/jdt/internal/core/BatchInitializationMonitor;->worked:I

    add-int/2addr v0, p1

    iput v0, p0, Lorg/eclipse/jdt/internal/core/BatchInitializationMonitor;->worked:I

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
