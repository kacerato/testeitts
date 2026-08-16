.class public Lorg/eclipse/jdt/core/compiler/ReconcileContext;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private operation:Lorg/eclipse/jdt/internal/core/ReconcileWorkingCopyOperation;

.field private workingCopy:Lorg/eclipse/jdt/internal/core/CompilationUnit;


# direct methods
.method public constructor <init>(Lorg/eclipse/jdt/internal/core/ReconcileWorkingCopyOperation;Lorg/eclipse/jdt/internal/core/CompilationUnit;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/eclipse/jdt/core/compiler/ReconcileContext;->operation:Lorg/eclipse/jdt/internal/core/ReconcileWorkingCopyOperation;

    iput-object p2, p0, Lorg/eclipse/jdt/core/compiler/ReconcileContext;->workingCopy:Lorg/eclipse/jdt/internal/core/CompilationUnit;

    return-void
.end method


# virtual methods
.method public getAST(I)Lorg/eclipse/jdt/core/dom/CompilationUnit;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/JavaModelException;
        }
    .end annotation

    iget-object v0, p0, Lorg/eclipse/jdt/core/compiler/ReconcileContext;->operation:Lorg/eclipse/jdt/internal/core/ReconcileWorkingCopyOperation;

    iget v1, v0, Lorg/eclipse/jdt/internal/core/ReconcileWorkingCopyOperation;->astLevel:I

    if-ne v1, p1, :cond_1

    iget-boolean v1, v0, Lorg/eclipse/jdt/internal/core/ReconcileWorkingCopyOperation;->resolveBindings:Z

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lorg/eclipse/jdt/core/compiler/ReconcileContext;->workingCopy:Lorg/eclipse/jdt/internal/core/CompilationUnit;

    invoke-virtual {v0, p1}, Lorg/eclipse/jdt/internal/core/ReconcileWorkingCopyOperation;->makeConsistent(Lorg/eclipse/jdt/internal/core/CompilationUnit;)Lorg/eclipse/jdt/core/dom/CompilationUnit;

    move-result-object p1

    return-object p1

    :cond_1
    :goto_0
    invoke-static {p1}, Lorg/eclipse/jdt/core/dom/ASTParser;->newParser(I)Lorg/eclipse/jdt/core/dom/ASTParser;

    move-result-object p1

    iget-object v0, p0, Lorg/eclipse/jdt/core/compiler/ReconcileContext;->workingCopy:Lorg/eclipse/jdt/internal/core/CompilationUnit;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/core/JavaElement;->getJavaProject()Lorg/eclipse/jdt/core/IJavaProject;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lorg/eclipse/jdt/core/IJavaProject;->getOptions(Z)Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/eclipse/jdt/core/dom/ASTParser;->setCompilerOptions(Ljava/util/Map;)V

    iget-object v0, p0, Lorg/eclipse/jdt/core/compiler/ReconcileContext;->workingCopy:Lorg/eclipse/jdt/internal/core/CompilationUnit;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/core/JavaElement;->getJavaProject()Lorg/eclipse/jdt/core/IJavaProject;

    move-result-object v0

    invoke-interface {v0}, Lorg/eclipse/jdt/core/IJavaProject;->getProject()Lorg/eclipse/core/resources/IProject;

    move-result-object v0

    invoke-static {v0}, Lorg/eclipse/jdt/internal/core/JavaProject;->hasJavaNature(Lorg/eclipse/core/resources/IProject;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1, v1}, Lorg/eclipse/jdt/core/dom/ASTParser;->setResolveBindings(Z)V

    :cond_2
    iget-object v0, p0, Lorg/eclipse/jdt/core/compiler/ReconcileContext;->operation:Lorg/eclipse/jdt/internal/core/ReconcileWorkingCopyOperation;

    iget v0, v0, Lorg/eclipse/jdt/internal/core/ReconcileWorkingCopyOperation;->reconcileFlags:I

    and-int/lit8 v0, v0, 0x2

    const/4 v2, 0x0

    if-eqz v0, :cond_3

    move v0, v1

    goto :goto_1

    :cond_3
    move v0, v2

    :goto_1
    invoke-virtual {p1, v0}, Lorg/eclipse/jdt/core/dom/ASTParser;->setStatementsRecovery(Z)V

    iget-object v0, p0, Lorg/eclipse/jdt/core/compiler/ReconcileContext;->operation:Lorg/eclipse/jdt/internal/core/ReconcileWorkingCopyOperation;

    iget v0, v0, Lorg/eclipse/jdt/internal/core/ReconcileWorkingCopyOperation;->reconcileFlags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_4

    move v0, v1

    goto :goto_2

    :cond_4
    move v0, v2

    :goto_2
    invoke-virtual {p1, v0}, Lorg/eclipse/jdt/core/dom/ASTParser;->setBindingsRecovery(Z)V

    iget-object v0, p0, Lorg/eclipse/jdt/core/compiler/ReconcileContext;->workingCopy:Lorg/eclipse/jdt/internal/core/CompilationUnit;

    invoke-virtual {p1, v0}, Lorg/eclipse/jdt/core/dom/ASTParser;->setSource(Lorg/eclipse/jdt/core/ICompilationUnit;)V

    iget-object v0, p0, Lorg/eclipse/jdt/core/compiler/ReconcileContext;->operation:Lorg/eclipse/jdt/internal/core/ReconcileWorkingCopyOperation;

    iget v0, v0, Lorg/eclipse/jdt/internal/core/ReconcileWorkingCopyOperation;->reconcileFlags:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_5

    goto :goto_3

    :cond_5
    move v1, v2

    :goto_3
    invoke-virtual {p1, v1}, Lorg/eclipse/jdt/core/dom/ASTParser;->setIgnoreMethodBodies(Z)V

    iget-object v0, p0, Lorg/eclipse/jdt/core/compiler/ReconcileContext;->operation:Lorg/eclipse/jdt/internal/core/ReconcileWorkingCopyOperation;

    iget-object v0, v0, Lorg/eclipse/jdt/internal/core/JavaModelOperation;->progressMonitor:Lorg/eclipse/core/runtime/SubMonitor;

    invoke-virtual {p1, v0}, Lorg/eclipse/jdt/core/dom/ASTParser;->createAST(Lorg/eclipse/core/runtime/IProgressMonitor;)Lorg/eclipse/jdt/core/dom/ASTNode;

    move-result-object p1

    check-cast p1, Lorg/eclipse/jdt/core/dom/CompilationUnit;

    return-object p1
.end method

.method public getAST3()Lorg/eclipse/jdt/core/dom/CompilationUnit;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/JavaModelException;
        }
    .end annotation

    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/core/compiler/ReconcileContext;->getAST(I)Lorg/eclipse/jdt/core/dom/CompilationUnit;

    move-result-object v0

    return-object v0
.end method

.method public getAST4()Lorg/eclipse/jdt/core/dom/CompilationUnit;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/JavaModelException;
        }
    .end annotation

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/core/compiler/ReconcileContext;->getAST(I)Lorg/eclipse/jdt/core/dom/CompilationUnit;

    move-result-object v0

    return-object v0
.end method

.method public getAST8()Lorg/eclipse/jdt/core/dom/CompilationUnit;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/JavaModelException;
        }
    .end annotation

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/core/compiler/ReconcileContext;->getAST(I)Lorg/eclipse/jdt/core/dom/CompilationUnit;

    move-result-object v0

    return-object v0
.end method

.method public getASTLevel()I
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/core/compiler/ReconcileContext;->operation:Lorg/eclipse/jdt/internal/core/ReconcileWorkingCopyOperation;

    iget v0, v0, Lorg/eclipse/jdt/internal/core/ReconcileWorkingCopyOperation;->astLevel:I

    return v0
.end method

.method public getDelta()Lorg/eclipse/jdt/core/IJavaElementDelta;
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/core/compiler/ReconcileContext;->operation:Lorg/eclipse/jdt/internal/core/ReconcileWorkingCopyOperation;

    iget-object v0, v0, Lorg/eclipse/jdt/internal/core/ReconcileWorkingCopyOperation;->deltaBuilder:Lorg/eclipse/jdt/internal/core/JavaElementDeltaBuilder;

    iget-object v0, v0, Lorg/eclipse/jdt/internal/core/JavaElementDeltaBuilder;->delta:Lorg/eclipse/jdt/internal/core/JavaElementDelta;

    return-object v0
.end method

.method public getProblems(Ljava/lang/String;)[Lorg/eclipse/jdt/core/compiler/CategorizedProblem;
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/core/compiler/ReconcileContext;->operation:Lorg/eclipse/jdt/internal/core/ReconcileWorkingCopyOperation;

    iget-object v0, v0, Lorg/eclipse/jdt/internal/core/ReconcileWorkingCopyOperation;->problems:Ljava/util/HashMap;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lorg/eclipse/jdt/core/compiler/CategorizedProblem;

    return-object p1
.end method

.method public getReconcileFlags()I
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/core/compiler/ReconcileContext;->operation:Lorg/eclipse/jdt/internal/core/ReconcileWorkingCopyOperation;

    iget v0, v0, Lorg/eclipse/jdt/internal/core/ReconcileWorkingCopyOperation;->reconcileFlags:I

    return v0
.end method

.method public getWorkingCopy()Lorg/eclipse/jdt/core/ICompilationUnit;
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/core/compiler/ReconcileContext;->workingCopy:Lorg/eclipse/jdt/internal/core/CompilationUnit;

    return-object v0
.end method

.method public isResolvingBindings()Z
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/core/compiler/ReconcileContext;->operation:Lorg/eclipse/jdt/internal/core/ReconcileWorkingCopyOperation;

    iget-boolean v0, v0, Lorg/eclipse/jdt/internal/core/ReconcileWorkingCopyOperation;->resolveBindings:Z

    return v0
.end method

.method public putProblems(Ljava/lang/String;[Lorg/eclipse/jdt/core/compiler/CategorizedProblem;)V
    .locals 2

    iget-object v0, p0, Lorg/eclipse/jdt/core/compiler/ReconcileContext;->operation:Lorg/eclipse/jdt/internal/core/ReconcileWorkingCopyOperation;

    iget-object v1, v0, Lorg/eclipse/jdt/internal/core/ReconcileWorkingCopyOperation;->problems:Ljava/util/HashMap;

    if-nez v1, :cond_0

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, v0, Lorg/eclipse/jdt/internal/core/ReconcileWorkingCopyOperation;->problems:Ljava/util/HashMap;

    :cond_0
    iget-object v0, p0, Lorg/eclipse/jdt/core/compiler/ReconcileContext;->operation:Lorg/eclipse/jdt/internal/core/ReconcileWorkingCopyOperation;

    iget-object v0, v0, Lorg/eclipse/jdt/internal/core/ReconcileWorkingCopyOperation;->problems:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public resetAST()V
    .locals 2

    iget-object v0, p0, Lorg/eclipse/jdt/core/compiler/ReconcileContext;->operation:Lorg/eclipse/jdt/internal/core/ReconcileWorkingCopyOperation;

    const/4 v1, 0x0

    iput-object v1, v0, Lorg/eclipse/jdt/internal/core/ReconcileWorkingCopyOperation;->ast:Lorg/eclipse/jdt/core/dom/CompilationUnit;

    const-string v0, "org.eclipse.jdt.core.problem"

    invoke-virtual {p0, v0, v1}, Lorg/eclipse/jdt/core/compiler/ReconcileContext;->putProblems(Ljava/lang/String;[Lorg/eclipse/jdt/core/compiler/CategorizedProblem;)V

    const-string v0, "org.eclipse.jdt.core.task"

    invoke-virtual {p0, v0, v1}, Lorg/eclipse/jdt/core/compiler/ReconcileContext;->putProblems(Ljava/lang/String;[Lorg/eclipse/jdt/core/compiler/CategorizedProblem;)V

    return-void
.end method
