.class public Lorg/eclipse/jdt/internal/core/ReconcileWorkingCopyOperation;
.super Lorg/eclipse/jdt/internal/core/JavaModelOperation;
.source "SourceFile"


# static fields
.field public static PERF:Z = false


# instance fields
.field public ast:Lorg/eclipse/jdt/core/dom/CompilationUnit;

.field public astLevel:I

.field public deltaBuilder:Lorg/eclipse/jdt/internal/core/JavaElementDeltaBuilder;

.field public problems:Ljava/util/HashMap;

.field public reconcileFlags:I

.field public requestorIsActive:Z

.field public resolveBindings:Z

.field workingCopyOwner:Lorg/eclipse/jdt/core/WorkingCopyOwner;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lorg/eclipse/jdt/core/IJavaElement;IILorg/eclipse/jdt/core/WorkingCopyOwner;)V
    .locals 2

    const/4 v0, 0x1

    new-array v0, v0, [Lorg/eclipse/jdt/core/IJavaElement;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-direct {p0, v0}, Lorg/eclipse/jdt/internal/core/JavaModelOperation;-><init>([Lorg/eclipse/jdt/core/IJavaElement;)V

    iput p2, p0, Lorg/eclipse/jdt/internal/core/ReconcileWorkingCopyOperation;->astLevel:I

    iput p3, p0, Lorg/eclipse/jdt/internal/core/ReconcileWorkingCopyOperation;->reconcileFlags:I

    iput-object p4, p0, Lorg/eclipse/jdt/internal/core/ReconcileWorkingCopyOperation;->workingCopyOwner:Lorg/eclipse/jdt/core/WorkingCopyOwner;

    return-void
.end method

.method private notifyParticipants(Lorg/eclipse/jdt/internal/core/CompilationUnit;)V
    .locals 5

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/ReconcileWorkingCopyOperation;->getWorkingCopy()Lorg/eclipse/jdt/internal/core/CompilationUnit;

    move-result-object v0

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/core/JavaElement;->getJavaProject()Lorg/eclipse/jdt/core/IJavaProject;

    move-result-object v0

    invoke-static {}, Lorg/eclipse/jdt/internal/core/JavaModelManager;->getJavaModelManager()Lorg/eclipse/jdt/internal/core/JavaModelManager;

    move-result-object v1

    iget-object v1, v1, Lorg/eclipse/jdt/internal/core/JavaModelManager;->compilationParticipants:Lorg/eclipse/jdt/internal/core/JavaModelManager$CompilationParticipants;

    invoke-virtual {v1, v0}, Lorg/eclipse/jdt/internal/core/JavaModelManager$CompilationParticipants;->getCompilationParticipants(Lorg/eclipse/jdt/core/IJavaProject;)[Lorg/eclipse/jdt/core/compiler/CompilationParticipant;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v1, Lorg/eclipse/jdt/core/compiler/ReconcileContext;

    invoke-direct {v1, p0, p1}, Lorg/eclipse/jdt/core/compiler/ReconcileContext;-><init>(Lorg/eclipse/jdt/internal/core/ReconcileWorkingCopyOperation;Lorg/eclipse/jdt/internal/core/CompilationUnit;)V

    array-length p1, v0

    const/4 v2, 0x0

    :goto_0
    if-lt v2, p1, :cond_1

    return-void

    :cond_1
    aget-object v3, v0, v2

    new-instance v4, Lorg/eclipse/jdt/internal/core/ReconcileWorkingCopyOperation$1;

    invoke-direct {v4, p0, v3, v1}, Lorg/eclipse/jdt/internal/core/ReconcileWorkingCopyOperation$1;-><init>(Lorg/eclipse/jdt/internal/core/ReconcileWorkingCopyOperation;Lorg/eclipse/jdt/core/compiler/CompilationParticipant;Lorg/eclipse/jdt/core/compiler/ReconcileContext;)V

    invoke-static {v4}, Lorg/eclipse/core/runtime/SafeRunner;->run(Lorg/eclipse/core/runtime/ISafeRunnable;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method private reportProblems(Lorg/eclipse/jdt/internal/core/CompilationUnit;Lorg/eclipse/jdt/core/IProblemRequestor;)V
    .locals 7

    :try_start_0
    invoke-interface {p2}, Lorg/eclipse/jdt/core/IProblemRequestor;->beginReporting()V

    iget-object p1, p0, Lorg/eclipse/jdt/internal/core/ReconcileWorkingCopyOperation;->problems:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    invoke-interface {p2}, Lorg/eclipse/jdt/core/IProblemRequestor;->endReporting()V

    return-void

    :cond_0
    :try_start_1
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/eclipse/jdt/core/compiler/CategorizedProblem;

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    array-length v1, v0

    const/4 v2, 0x0

    :goto_1
    if-lt v2, v1, :cond_2

    goto :goto_0

    :cond_2
    aget-object v3, v0, v2

    sget-boolean v4, Lorg/eclipse/jdt/internal/core/JavaModelManager;->VERBOSE:Z

    if-eqz v4, :cond_3

    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "PROBLEM FOUND while reconciling : "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v3}, Lorg/eclipse/jdt/core/compiler/IProblem;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_2

    :catchall_0
    move-exception p1

    goto :goto_3

    :cond_3
    :goto_2
    iget-object v4, p0, Lorg/eclipse/jdt/internal/core/JavaModelOperation;->progressMonitor:Lorg/eclipse/core/runtime/SubMonitor;

    if-eqz v4, :cond_4

    invoke-virtual {v4}, Lorg/eclipse/core/runtime/SubMonitor;->isCanceled()Z

    move-result v4

    if-eqz v4, :cond_4

    goto :goto_0

    :cond_4
    invoke-interface {p2, v3}, Lorg/eclipse/jdt/core/IProblemRequestor;->acceptProblem(Lorg/eclipse/jdt/core/compiler/IProblem;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :goto_3
    invoke-interface {p2}, Lorg/eclipse/jdt/core/IProblemRequestor;->endReporting()V

    throw p1
.end method


# virtual methods
.method public executeOperation()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/JavaModelException;
        }
    .end annotation

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/JavaModelOperation;->checkCanceled()V

    :try_start_0
    sget-object v0, Lorg/eclipse/jdt/internal/core/util/Messages;->element_reconciling:Ljava/lang/String;

    const/4 v1, 0x2

    invoke-virtual {p0, v0, v1}, Lorg/eclipse/jdt/internal/core/JavaModelOperation;->beginTask(Ljava/lang/String;I)V

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/ReconcileWorkingCopyOperation;->getWorkingCopy()Lorg/eclipse/jdt/internal/core/CompilationUnit;

    move-result-object v0

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/core/CompilationUnit;->isConsistent()Z

    move-result v1

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/core/CompilationUnit;->getPerWorkingCopyInfo()Lorg/eclipse/jdt/internal/core/JavaModelManager$PerWorkingCopyInfo;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lorg/eclipse/jdt/internal/core/JavaModelManager$PerWorkingCopyInfo;->getProblemRequestor()Lorg/eclipse/jdt/core/IProblemRequestor;

    move-result-object v2

    goto :goto_0

    :catchall_0
    move-exception v0

    goto/16 :goto_4

    :cond_0
    :goto_0
    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_1

    invoke-interface {v2}, Lorg/eclipse/jdt/core/IProblemRequestor;->isActive()Z

    move-result v5

    if-eqz v5, :cond_1

    move v5, v4

    goto :goto_1

    :cond_1
    move v5, v3

    :goto_1
    iget-object v6, p0, Lorg/eclipse/jdt/internal/core/ReconcileWorkingCopyOperation;->workingCopyOwner:Lorg/eclipse/jdt/core/WorkingCopyOwner;

    invoke-virtual {v6, v0}, Lorg/eclipse/jdt/core/WorkingCopyOwner;->getProblemRequestor(Lorg/eclipse/jdt/core/ICompilationUnit;)Lorg/eclipse/jdt/core/IProblemRequestor;

    move-result-object v6

    if-eqz v6, :cond_2

    if-eq v6, v2, :cond_2

    invoke-interface {v6}, Lorg/eclipse/jdt/core/IProblemRequestor;->isActive()Z

    move-result v7

    if-eqz v7, :cond_2

    move v7, v4

    goto :goto_2

    :cond_2
    move v7, v3

    :goto_2
    if-nez v5, :cond_3

    if-nez v7, :cond_3

    goto :goto_3

    :cond_3
    move v3, v4

    :goto_3
    iput-boolean v3, p0, Lorg/eclipse/jdt/internal/core/ReconcileWorkingCopyOperation;->requestorIsActive:Z

    new-instance v3, Lorg/eclipse/jdt/internal/core/JavaElementDeltaBuilder;

    invoke-direct {v3, v0}, Lorg/eclipse/jdt/internal/core/JavaElementDeltaBuilder;-><init>(Lorg/eclipse/jdt/core/IJavaElement;)V

    iput-object v3, p0, Lorg/eclipse/jdt/internal/core/ReconcileWorkingCopyOperation;->deltaBuilder:Lorg/eclipse/jdt/internal/core/JavaElementDeltaBuilder;

    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/internal/core/ReconcileWorkingCopyOperation;->makeConsistent(Lorg/eclipse/jdt/internal/core/CompilationUnit;)Lorg/eclipse/jdt/core/dom/CompilationUnit;

    if-eqz v1, :cond_4

    iget v3, p0, Lorg/eclipse/jdt/internal/core/ReconcileWorkingCopyOperation;->reconcileFlags:I

    and-int/2addr v3, v4

    if-eqz v3, :cond_5

    :cond_4
    invoke-direct {p0, v0}, Lorg/eclipse/jdt/internal/core/ReconcileWorkingCopyOperation;->notifyParticipants(Lorg/eclipse/jdt/internal/core/CompilationUnit;)V

    iget-object v3, p0, Lorg/eclipse/jdt/internal/core/ReconcileWorkingCopyOperation;->ast:Lorg/eclipse/jdt/core/dom/CompilationUnit;

    if-nez v3, :cond_5

    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/internal/core/ReconcileWorkingCopyOperation;->makeConsistent(Lorg/eclipse/jdt/internal/core/CompilationUnit;)Lorg/eclipse/jdt/core/dom/CompilationUnit;

    :cond_5
    iget-object v3, p0, Lorg/eclipse/jdt/internal/core/ReconcileWorkingCopyOperation;->problems:Ljava/util/HashMap;

    if-eqz v3, :cond_8

    iget v3, p0, Lorg/eclipse/jdt/internal/core/ReconcileWorkingCopyOperation;->reconcileFlags:I

    and-int/2addr v3, v4

    if-nez v3, :cond_6

    if-nez v1, :cond_8

    :cond_6
    if-eqz v5, :cond_7

    invoke-direct {p0, v0, v2}, Lorg/eclipse/jdt/internal/core/ReconcileWorkingCopyOperation;->reportProblems(Lorg/eclipse/jdt/internal/core/CompilationUnit;Lorg/eclipse/jdt/core/IProblemRequestor;)V

    :cond_7
    if-eqz v7, :cond_8

    invoke-direct {p0, v0, v6}, Lorg/eclipse/jdt/internal/core/ReconcileWorkingCopyOperation;->reportProblems(Lorg/eclipse/jdt/internal/core/CompilationUnit;Lorg/eclipse/jdt/core/IProblemRequestor;)V

    :cond_8
    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/ReconcileWorkingCopyOperation;->deltaBuilder:Lorg/eclipse/jdt/internal/core/JavaElementDeltaBuilder;

    iget-object v1, v1, Lorg/eclipse/jdt/internal/core/JavaElementDeltaBuilder;->delta:Lorg/eclipse/jdt/internal/core/JavaElementDelta;

    if-eqz v1, :cond_9

    invoke-virtual {p0, v0, v1}, Lorg/eclipse/jdt/internal/core/JavaModelOperation;->addReconcileDelta(Lorg/eclipse/jdt/core/ICompilationUnit;Lorg/eclipse/jdt/core/IJavaElementDelta;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_9
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/JavaModelOperation;->done()V

    return-void

    :goto_4
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/JavaModelOperation;->done()V

    throw v0
.end method

.method public getWorkingCopy()Lorg/eclipse/jdt/internal/core/CompilationUnit;
    .locals 1

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/JavaModelOperation;->getElementToProcess()Lorg/eclipse/jdt/core/IJavaElement;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jdt/internal/core/CompilationUnit;

    return-object v0
.end method

.method public isReadOnly()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public makeConsistent(Lorg/eclipse/jdt/internal/core/CompilationUnit;)Lorg/eclipse/jdt/core/dom/CompilationUnit;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/JavaModelException;
        }
    .end annotation

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/core/CompilationUnit;->isConsistent()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/ReconcileWorkingCopyOperation;->problems:Ljava/util/HashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/eclipse/jdt/internal/core/ReconcileWorkingCopyOperation;->problems:Ljava/util/HashMap;

    :cond_0
    iget-boolean v3, p0, Lorg/eclipse/jdt/internal/core/ReconcileWorkingCopyOperation;->requestorIsActive:Z

    iput-boolean v3, p0, Lorg/eclipse/jdt/internal/core/ReconcileWorkingCopyOperation;->resolveBindings:Z

    iget v2, p0, Lorg/eclipse/jdt/internal/core/ReconcileWorkingCopyOperation;->astLevel:I

    iget v4, p0, Lorg/eclipse/jdt/internal/core/ReconcileWorkingCopyOperation;->reconcileFlags:I

    iget-object v5, p0, Lorg/eclipse/jdt/internal/core/ReconcileWorkingCopyOperation;->problems:Ljava/util/HashMap;

    iget-object v6, p0, Lorg/eclipse/jdt/internal/core/JavaModelOperation;->progressMonitor:Lorg/eclipse/core/runtime/SubMonitor;

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Lorg/eclipse/jdt/internal/core/CompilationUnit;->makeConsistent(IZILjava/util/HashMap;Lorg/eclipse/core/runtime/IProgressMonitor;)Lorg/eclipse/jdt/core/dom/CompilationUnit;

    move-result-object p1

    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/ReconcileWorkingCopyOperation;->ast:Lorg/eclipse/jdt/core/dom/CompilationUnit;

    iget-object p1, p0, Lorg/eclipse/jdt/internal/core/ReconcileWorkingCopyOperation;->deltaBuilder:Lorg/eclipse/jdt/internal/core/JavaElementDeltaBuilder;

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/core/JavaElementDeltaBuilder;->buildDeltas()V

    iget-object p1, p0, Lorg/eclipse/jdt/internal/core/ReconcileWorkingCopyOperation;->ast:Lorg/eclipse/jdt/core/dom/CompilationUnit;

    if-eqz p1, :cond_1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/ReconcileWorkingCopyOperation;->deltaBuilder:Lorg/eclipse/jdt/internal/core/JavaElementDeltaBuilder;

    iget-object v0, v0, Lorg/eclipse/jdt/internal/core/JavaElementDeltaBuilder;->delta:Lorg/eclipse/jdt/internal/core/JavaElementDelta;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Lorg/eclipse/jdt/internal/core/JavaElementDelta;->changedAST(Lorg/eclipse/jdt/core/dom/CompilationUnit;)V

    :cond_1
    iget-object p1, p0, Lorg/eclipse/jdt/internal/core/ReconcileWorkingCopyOperation;->ast:Lorg/eclipse/jdt/core/dom/CompilationUnit;

    return-object p1

    :cond_2
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/ReconcileWorkingCopyOperation;->ast:Lorg/eclipse/jdt/core/dom/CompilationUnit;

    if-eqz v0, :cond_3

    return-object v0

    :cond_3
    const/4 v0, 0x0

    :try_start_0
    invoke-static {}, Lorg/eclipse/jdt/internal/core/JavaModelManager;->getJavaModelManager()Lorg/eclipse/jdt/internal/core/JavaModelManager;

    move-result-object v1

    iget-object v1, v1, Lorg/eclipse/jdt/internal/core/JavaModelManager;->abortOnMissingSource:Ljava/lang/ThreadLocal;

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v1, v2}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/core/CompilationUnit;->cloneCachingContents()Lorg/eclipse/jdt/internal/core/CompilationUnit;

    move-result-object v1

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/core/JavaElement;->getJavaProject()Lorg/eclipse/jdt/core/IJavaProject;

    move-result-object v2

    invoke-interface {v2}, Lorg/eclipse/jdt/core/IJavaProject;->getProject()Lorg/eclipse/core/resources/IProject;

    move-result-object v2

    invoke-static {v2}, Lorg/eclipse/jdt/internal/core/JavaProject;->hasJavaNature(Lorg/eclipse/core/resources/IProject;)Z

    move-result v2

    const/4 v10, 0x1

    if-eqz v2, :cond_6

    iget v2, p0, Lorg/eclipse/jdt/internal/core/ReconcileWorkingCopyOperation;->reconcileFlags:I

    and-int/2addr v2, v10

    if-eqz v2, :cond_6

    iget-boolean v2, p0, Lorg/eclipse/jdt/internal/core/ReconcileWorkingCopyOperation;->requestorIsActive:Z

    iput-boolean v2, p0, Lorg/eclipse/jdt/internal/core/ReconcileWorkingCopyOperation;->resolveBindings:Z

    iget-object v2, p0, Lorg/eclipse/jdt/internal/core/ReconcileWorkingCopyOperation;->problems:Ljava/util/HashMap;

    if-nez v2, :cond_4

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lorg/eclipse/jdt/internal/core/ReconcileWorkingCopyOperation;->problems:Ljava/util/HashMap;

    goto :goto_0

    :catchall_0
    move-exception p1

    move-object v2, v0

    goto/16 :goto_6

    :catch_0
    move-exception v1

    move-object v2, v0

    goto/16 :goto_4

    :cond_4
    :goto_0
    iget-object v4, p0, Lorg/eclipse/jdt/internal/core/ReconcileWorkingCopyOperation;->workingCopyOwner:Lorg/eclipse/jdt/core/WorkingCopyOwner;

    iget-object v5, p0, Lorg/eclipse/jdt/internal/core/ReconcileWorkingCopyOperation;->problems:Ljava/util/HashMap;

    iget v2, p0, Lorg/eclipse/jdt/internal/core/ReconcileWorkingCopyOperation;->astLevel:I

    if-eqz v2, :cond_5

    move v6, v10

    goto :goto_1

    :cond_5
    const/4 v2, 0x0

    move v6, v2

    :goto_1
    iget v7, p0, Lorg/eclipse/jdt/internal/core/ReconcileWorkingCopyOperation;->reconcileFlags:I

    iget-object v8, p0, Lorg/eclipse/jdt/internal/core/JavaModelOperation;->progressMonitor:Lorg/eclipse/core/runtime/SubMonitor;

    move-object v3, v1

    invoke-static/range {v3 .. v8}, Lorg/eclipse/jdt/internal/core/CompilationUnitProblemFinder;->process(Lorg/eclipse/jdt/internal/core/CompilationUnit;Lorg/eclipse/jdt/core/WorkingCopyOwner;Ljava/util/HashMap;ZILorg/eclipse/core/runtime/IProgressMonitor;)Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;

    move-result-object v2
    :try_end_0
    .catch Lorg/eclipse/jdt/core/JavaModelException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v3, p0, Lorg/eclipse/jdt/internal/core/JavaModelOperation;->progressMonitor:Lorg/eclipse/core/runtime/SubMonitor;

    if-eqz v3, :cond_7

    invoke-virtual {v3, v10}, Lorg/eclipse/core/runtime/SubMonitor;->worked(I)V

    goto :goto_2

    :catchall_1
    move-exception p1

    goto/16 :goto_6

    :catch_1
    move-exception v1

    goto :goto_4

    :cond_6
    move-object v2, v0

    :cond_7
    :goto_2
    iget v3, p0, Lorg/eclipse/jdt/internal/core/ReconcileWorkingCopyOperation;->astLevel:I

    if-eqz v3, :cond_a

    if-eqz v2, :cond_a

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/core/JavaElement;->getJavaProject()Lorg/eclipse/jdt/core/IJavaProject;

    move-result-object v3

    invoke-interface {v3, v10}, Lorg/eclipse/jdt/core/IJavaProject;->getOptions(Z)Ljava/util/Map;

    move-result-object v5

    iget v3, p0, Lorg/eclipse/jdt/internal/core/ReconcileWorkingCopyOperation;->astLevel:I

    iget-boolean v6, p0, Lorg/eclipse/jdt/internal/core/ReconcileWorkingCopyOperation;->resolveBindings:Z

    iget v8, p0, Lorg/eclipse/jdt/internal/core/ReconcileWorkingCopyOperation;->reconcileFlags:I

    iget-object v9, p0, Lorg/eclipse/jdt/internal/core/JavaModelOperation;->progressMonitor:Lorg/eclipse/core/runtime/SubMonitor;

    move-object v4, v2

    move-object v7, v1

    invoke-static/range {v3 .. v9}, Lorg/eclipse/jdt/core/dom/AST;->convertCompilationUnit(ILorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;Ljava/util/Map;ZLorg/eclipse/jdt/internal/core/CompilationUnit;ILorg/eclipse/core/runtime/IProgressMonitor;)Lorg/eclipse/jdt/core/dom/CompilationUnit;

    move-result-object v1

    iput-object v1, p0, Lorg/eclipse/jdt/internal/core/ReconcileWorkingCopyOperation;->ast:Lorg/eclipse/jdt/core/dom/CompilationUnit;

    if-eqz v1, :cond_9

    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/ReconcileWorkingCopyOperation;->deltaBuilder:Lorg/eclipse/jdt/internal/core/JavaElementDeltaBuilder;

    iget-object v3, v1, Lorg/eclipse/jdt/internal/core/JavaElementDeltaBuilder;->delta:Lorg/eclipse/jdt/internal/core/JavaElementDelta;

    if-nez v3, :cond_8

    new-instance v3, Lorg/eclipse/jdt/internal/core/JavaElementDelta;

    invoke-direct {v3, p1}, Lorg/eclipse/jdt/internal/core/JavaElementDelta;-><init>(Lorg/eclipse/jdt/core/IJavaElement;)V

    iput-object v3, v1, Lorg/eclipse/jdt/internal/core/JavaElementDeltaBuilder;->delta:Lorg/eclipse/jdt/internal/core/JavaElementDelta;

    :cond_8
    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/ReconcileWorkingCopyOperation;->deltaBuilder:Lorg/eclipse/jdt/internal/core/JavaElementDeltaBuilder;

    iget-object v1, v1, Lorg/eclipse/jdt/internal/core/JavaElementDeltaBuilder;->delta:Lorg/eclipse/jdt/internal/core/JavaElementDelta;

    iget-object v3, p0, Lorg/eclipse/jdt/internal/core/ReconcileWorkingCopyOperation;->ast:Lorg/eclipse/jdt/core/dom/CompilationUnit;

    invoke-virtual {v1, v3}, Lorg/eclipse/jdt/internal/core/JavaElementDelta;->changedAST(Lorg/eclipse/jdt/core/dom/CompilationUnit;)V

    :cond_9
    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/JavaModelOperation;->progressMonitor:Lorg/eclipse/core/runtime/SubMonitor;

    if-eqz v1, :cond_a

    invoke-virtual {v1, v10}, Lorg/eclipse/core/runtime/SubMonitor;->worked(I)V
    :try_end_1
    .catch Lorg/eclipse/jdt/core/JavaModelException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :cond_a
    invoke-static {}, Lorg/eclipse/jdt/internal/core/JavaModelManager;->getJavaModelManager()Lorg/eclipse/jdt/internal/core/JavaModelManager;

    move-result-object p1

    iget-object p1, p1, Lorg/eclipse/jdt/internal/core/JavaModelManager;->abortOnMissingSource:Ljava/lang/ThreadLocal;

    invoke-virtual {p1, v0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    if-eqz v2, :cond_b

    :goto_3
    invoke-virtual {v2}, Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;->cleanUp()V

    goto :goto_5

    :goto_4
    :try_start_2
    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/core/JavaElement;->getJavaProject()Lorg/eclipse/jdt/core/IJavaProject;

    move-result-object p1

    invoke-interface {p1}, Lorg/eclipse/jdt/core/IJavaProject;->getProject()Lorg/eclipse/core/resources/IProject;

    move-result-object p1

    invoke-static {p1}, Lorg/eclipse/jdt/internal/core/JavaProject;->hasJavaNature(Lorg/eclipse/core/resources/IProject;)Z

    move-result p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-nez p1, :cond_c

    invoke-static {}, Lorg/eclipse/jdt/internal/core/JavaModelManager;->getJavaModelManager()Lorg/eclipse/jdt/internal/core/JavaModelManager;

    move-result-object p1

    iget-object p1, p1, Lorg/eclipse/jdt/internal/core/JavaModelManager;->abortOnMissingSource:Ljava/lang/ThreadLocal;

    invoke-virtual {p1, v0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    if-eqz v2, :cond_b

    goto :goto_3

    :cond_b
    :goto_5
    iget-object p1, p0, Lorg/eclipse/jdt/internal/core/ReconcileWorkingCopyOperation;->ast:Lorg/eclipse/jdt/core/dom/CompilationUnit;

    return-object p1

    :cond_c
    :try_start_3
    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :goto_6
    invoke-static {}, Lorg/eclipse/jdt/internal/core/JavaModelManager;->getJavaModelManager()Lorg/eclipse/jdt/internal/core/JavaModelManager;

    move-result-object v1

    iget-object v1, v1, Lorg/eclipse/jdt/internal/core/JavaModelManager;->abortOnMissingSource:Ljava/lang/ThreadLocal;

    invoke-virtual {v1, v0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    if-eqz v2, :cond_d

    invoke-virtual {v2}, Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;->cleanUp()V

    :cond_d
    throw p1
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
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/ReconcileWorkingCopyOperation;->getWorkingCopy()Lorg/eclipse/jdt/internal/core/CompilationUnit;

    move-result-object v1

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/core/CompilationUnit;->isWorkingCopy()Z

    move-result v2

    if-nez v2, :cond_1

    new-instance v0, Lorg/eclipse/jdt/internal/core/JavaModelStatus;

    const/16 v2, 0x3c9

    invoke-direct {v0, v2, v1}, Lorg/eclipse/jdt/internal/core/JavaModelStatus;-><init>(ILorg/eclipse/jdt/core/IJavaElement;)V

    :cond_1
    return-object v0
.end method
