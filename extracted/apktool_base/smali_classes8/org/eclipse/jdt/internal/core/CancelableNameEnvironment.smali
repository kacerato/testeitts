.class public Lorg/eclipse/jdt/internal/core/CancelableNameEnvironment;
.super Lorg/eclipse/jdt/internal/core/SearchableEnvironment;
.source "SourceFile"

# interfaces
.implements Lorg/eclipse/jdt/internal/core/INameEnvironmentWithProgress;


# instance fields
.field private monitor:Lorg/eclipse/core/runtime/IProgressMonitor;


# direct methods
.method public constructor <init>(Lorg/eclipse/jdt/internal/core/JavaProject;Lorg/eclipse/jdt/core/WorkingCopyOwner;Lorg/eclipse/core/runtime/IProgressMonitor;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/JavaModelException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, p2, p3, v0}, Lorg/eclipse/jdt/internal/core/CancelableNameEnvironment;-><init>(Lorg/eclipse/jdt/internal/core/JavaProject;Lorg/eclipse/jdt/core/WorkingCopyOwner;Lorg/eclipse/core/runtime/IProgressMonitor;Z)V

    return-void
.end method

.method public constructor <init>(Lorg/eclipse/jdt/internal/core/JavaProject;Lorg/eclipse/jdt/core/WorkingCopyOwner;Lorg/eclipse/core/runtime/IProgressMonitor;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/JavaModelException;
        }
    .end annotation

    .line 2
    invoke-direct {p0, p1, p2, p4}, Lorg/eclipse/jdt/internal/core/SearchableEnvironment;-><init>(Lorg/eclipse/jdt/internal/core/JavaProject;Lorg/eclipse/jdt/core/WorkingCopyOwner;Z)V

    .line 3
    invoke-virtual {p0, p3}, Lorg/eclipse/jdt/internal/core/CancelableNameEnvironment;->setMonitor(Lorg/eclipse/core/runtime/IProgressMonitor;)V

    return-void
.end method

.method private checkCanceled()V
    .locals 3

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/CancelableNameEnvironment;->monitor:Lorg/eclipse/core/runtime/IProgressMonitor;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lorg/eclipse/core/runtime/IProgressMonitor;->isCanceled()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-boolean v0, Lorg/eclipse/jdt/internal/core/NameLookup;->VERBOSE:Z

    if-eqz v0, :cond_0

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " CANCELLING LOOKUP "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_0
    new-instance v0, Lorg/eclipse/jdt/internal/compiler/problem/AbortCompilation;

    new-instance v1, Lorg/eclipse/core/runtime/OperationCanceledException;

    invoke-direct {v1}, Lorg/eclipse/core/runtime/OperationCanceledException;-><init>()V

    const/4 v2, 0x1

    invoke-direct {v0, v2, v1}, Lorg/eclipse/jdt/internal/compiler/problem/AbortCompilation;-><init>(ZLjava/lang/RuntimeException;)V

    throw v0

    :cond_1
    return-void
.end method


# virtual methods
.method public findPackages([CLorg/eclipse/jdt/internal/codeassist/ISearchRequestor;)V
    .locals 0

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/core/CancelableNameEnvironment;->checkCanceled()V

    invoke-super {p0, p1, p2}, Lorg/eclipse/jdt/internal/core/SearchableEnvironment;->findPackages([CLorg/eclipse/jdt/internal/codeassist/ISearchRequestor;)V

    return-void
.end method

.method public findType([C[[C)Lorg/eclipse/jdt/internal/compiler/env/NameEnvironmentAnswer;
    .locals 0

    .line 1
    invoke-direct {p0}, Lorg/eclipse/jdt/internal/core/CancelableNameEnvironment;->checkCanceled()V

    .line 2
    invoke-super {p0, p1, p2}, Lorg/eclipse/jdt/internal/compiler/env/IModuleAwareNameEnvironment;->findType([C[[C)Lorg/eclipse/jdt/internal/compiler/env/NameEnvironmentAnswer;

    move-result-object p1

    return-object p1
.end method

.method public findType([C[[CZ[C)Lorg/eclipse/jdt/internal/compiler/env/NameEnvironmentAnswer;
    .locals 0

    .line 5
    invoke-virtual {p0, p1, p2, p4}, Lorg/eclipse/jdt/internal/core/SearchableEnvironment;->findType([C[[C[C)Lorg/eclipse/jdt/internal/compiler/env/NameEnvironmentAnswer;

    move-result-object p1

    return-object p1
.end method

.method public findType([[C)Lorg/eclipse/jdt/internal/compiler/env/NameEnvironmentAnswer;
    .locals 0

    .line 3
    invoke-direct {p0}, Lorg/eclipse/jdt/internal/core/CancelableNameEnvironment;->checkCanceled()V

    .line 4
    invoke-super {p0, p1}, Lorg/eclipse/jdt/internal/compiler/env/IModuleAwareNameEnvironment;->findType([[C)Lorg/eclipse/jdt/internal/compiler/env/NameEnvironmentAnswer;

    move-result-object p1

    return-object p1
.end method

.method public findTypes([CZZILorg/eclipse/jdt/internal/codeassist/ISearchRequestor;Lorg/eclipse/core/runtime/IProgressMonitor;)V
    .locals 0

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/core/CancelableNameEnvironment;->checkCanceled()V

    invoke-super/range {p0 .. p6}, Lorg/eclipse/jdt/internal/core/SearchableEnvironment;->findTypes([CZZILorg/eclipse/jdt/internal/codeassist/ISearchRequestor;Lorg/eclipse/core/runtime/IProgressMonitor;)V

    return-void
.end method

.method public setMonitor(Lorg/eclipse/core/runtime/IProgressMonitor;)V
    .locals 0

    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/CancelableNameEnvironment;->monitor:Lorg/eclipse/core/runtime/IProgressMonitor;

    return-void
.end method
