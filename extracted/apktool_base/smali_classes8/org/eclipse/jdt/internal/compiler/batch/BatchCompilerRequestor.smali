.class public Lorg/eclipse/jdt/internal/compiler/batch/BatchCompilerRequestor;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/eclipse/jdt/internal/compiler/ICompilerRequestor;


# instance fields
.field private compiler:Lorg/eclipse/jdt/internal/compiler/batch/Main;

.field private lineDelta:I


# direct methods
.method public constructor <init>(Lorg/eclipse/jdt/internal/compiler/batch/Main;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/batch/BatchCompilerRequestor;->lineDelta:I

    iput-object p1, p0, Lorg/eclipse/jdt/internal/compiler/batch/BatchCompilerRequestor;->compiler:Lorg/eclipse/jdt/internal/compiler/batch/Main;

    return-void
.end method


# virtual methods
.method public acceptResult(Lorg/eclipse/jdt/internal/compiler/CompilationResult;)V
    .locals 4

    iget-object v0, p1, Lorg/eclipse/jdt/internal/compiler/CompilationResult;->lineSeparatorPositions:[I

    if-eqz v0, :cond_0

    array-length v0, v0

    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/batch/BatchCompilerRequestor;->lineDelta:I

    add-int/2addr v1, v0

    iput v1, p0, Lorg/eclipse/jdt/internal/compiler/batch/BatchCompilerRequestor;->lineDelta:I

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/batch/BatchCompilerRequestor;->compiler:Lorg/eclipse/jdt/internal/compiler/batch/Main;

    iget-boolean v2, v0, Lorg/eclipse/jdt/internal/compiler/batch/Main;->showProgress:Z

    if-eqz v2, :cond_0

    const/16 v2, 0x7d0

    if-le v1, v2, :cond_0

    iget-object v0, v0, Lorg/eclipse/jdt/internal/compiler/batch/Main;->logger:Lorg/eclipse/jdt/internal/compiler/batch/Main$Logger;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/batch/Main$Logger;->logProgress()V

    const/4 v0, 0x0

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/batch/BatchCompilerRequestor;->lineDelta:I

    :cond_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/batch/BatchCompilerRequestor;->compiler:Lorg/eclipse/jdt/internal/compiler/batch/Main;

    iget-object v0, v0, Lorg/eclipse/jdt/internal/compiler/batch/Main;->logger:Lorg/eclipse/jdt/internal/compiler/batch/Main$Logger;

    invoke-virtual {v0, p1}, Lorg/eclipse/jdt/internal/compiler/batch/Main$Logger;->startLoggingSource(Lorg/eclipse/jdt/internal/compiler/CompilationResult;)V

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/CompilationResult;->hasProblems()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/CompilationResult;->hasTasks()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/batch/BatchCompilerRequestor;->compiler:Lorg/eclipse/jdt/internal/compiler/batch/Main;

    iget-object v0, v0, Lorg/eclipse/jdt/internal/compiler/batch/Main;->logger:Lorg/eclipse/jdt/internal/compiler/batch/Main$Logger;

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/CompilationResult;->getAllProblems()[Lorg/eclipse/jdt/core/compiler/CategorizedProblem;

    move-result-object v1

    iget-object v2, p1, Lorg/eclipse/jdt/internal/compiler/CompilationResult;->compilationUnit:Lorg/eclipse/jdt/internal/compiler/env/ICompilationUnit;

    invoke-interface {v2}, Lorg/eclipse/jdt/internal/compiler/env/ICompilationUnit;->getContents()[C

    move-result-object v2

    iget-object v3, p0, Lorg/eclipse/jdt/internal/compiler/batch/BatchCompilerRequestor;->compiler:Lorg/eclipse/jdt/internal/compiler/batch/Main;

    invoke-virtual {v0, v1, v2, v3}, Lorg/eclipse/jdt/internal/compiler/batch/Main$Logger;->logProblems([Lorg/eclipse/jdt/core/compiler/CategorizedProblem;[CLorg/eclipse/jdt/internal/compiler/batch/Main;)I

    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/internal/compiler/batch/BatchCompilerRequestor;->reportProblems(Lorg/eclipse/jdt/internal/compiler/CompilationResult;)V

    :cond_2
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/batch/BatchCompilerRequestor;->compiler:Lorg/eclipse/jdt/internal/compiler/batch/Main;

    invoke-virtual {v0, p1}, Lorg/eclipse/jdt/internal/compiler/batch/Main;->outputClassFiles(Lorg/eclipse/jdt/internal/compiler/CompilationResult;)V

    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/batch/BatchCompilerRequestor;->compiler:Lorg/eclipse/jdt/internal/compiler/batch/Main;

    iget-object p1, p1, Lorg/eclipse/jdt/internal/compiler/batch/Main;->logger:Lorg/eclipse/jdt/internal/compiler/batch/Main$Logger;

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/batch/Main$Logger;->endLoggingSource()V

    return-void
.end method

.method public reportProblems(Lorg/eclipse/jdt/internal/compiler/CompilationResult;)V
    .locals 0

    return-void
.end method
