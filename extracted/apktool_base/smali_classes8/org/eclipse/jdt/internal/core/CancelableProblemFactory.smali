.class public Lorg/eclipse/jdt/internal/core/CancelableProblemFactory;
.super Lorg/eclipse/jdt/internal/compiler/problem/DefaultProblemFactory;
.source "SourceFile"


# instance fields
.field public monitor:Lorg/eclipse/core/runtime/IProgressMonitor;


# direct methods
.method public constructor <init>(Lorg/eclipse/core/runtime/IProgressMonitor;)V
    .locals 0

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/compiler/problem/DefaultProblemFactory;-><init>()V

    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/CancelableProblemFactory;->monitor:Lorg/eclipse/core/runtime/IProgressMonitor;

    return-void
.end method


# virtual methods
.method public createProblem([CI[Ljava/lang/String;I[Ljava/lang/String;IIIII)Lorg/eclipse/jdt/core/compiler/CategorizedProblem;
    .locals 1

    .line 4
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/CancelableProblemFactory;->monitor:Lorg/eclipse/core/runtime/IProgressMonitor;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lorg/eclipse/core/runtime/IProgressMonitor;->isCanceled()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 5
    :cond_0
    new-instance p1, Lorg/eclipse/jdt/internal/compiler/problem/AbortCompilation;

    new-instance p2, Lorg/eclipse/core/runtime/OperationCanceledException;

    invoke-direct {p2}, Lorg/eclipse/core/runtime/OperationCanceledException;-><init>()V

    const/4 p3, 0x1

    invoke-direct {p1, p3, p2}, Lorg/eclipse/jdt/internal/compiler/problem/AbortCompilation;-><init>(ZLjava/lang/RuntimeException;)V

    throw p1

    .line 6
    :cond_1
    :goto_0
    invoke-super/range {p0 .. p10}, Lorg/eclipse/jdt/internal/compiler/problem/DefaultProblemFactory;->createProblem([CI[Ljava/lang/String;I[Ljava/lang/String;IIIII)Lorg/eclipse/jdt/core/compiler/CategorizedProblem;

    move-result-object p1

    return-object p1
.end method

.method public createProblem([CI[Ljava/lang/String;[Ljava/lang/String;IIIII)Lorg/eclipse/jdt/core/compiler/CategorizedProblem;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/CancelableProblemFactory;->monitor:Lorg/eclipse/core/runtime/IProgressMonitor;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lorg/eclipse/core/runtime/IProgressMonitor;->isCanceled()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    new-instance p1, Lorg/eclipse/jdt/internal/compiler/problem/AbortCompilation;

    new-instance p2, Lorg/eclipse/core/runtime/OperationCanceledException;

    invoke-direct {p2}, Lorg/eclipse/core/runtime/OperationCanceledException;-><init>()V

    const/4 p3, 0x1

    invoke-direct {p1, p3, p2}, Lorg/eclipse/jdt/internal/compiler/problem/AbortCompilation;-><init>(ZLjava/lang/RuntimeException;)V

    throw p1

    .line 3
    :cond_1
    :goto_0
    invoke-super/range {p0 .. p9}, Lorg/eclipse/jdt/internal/compiler/problem/DefaultProblemFactory;->createProblem([CI[Ljava/lang/String;[Ljava/lang/String;IIIII)Lorg/eclipse/jdt/core/compiler/CategorizedProblem;

    move-result-object p1

    return-object p1
.end method
