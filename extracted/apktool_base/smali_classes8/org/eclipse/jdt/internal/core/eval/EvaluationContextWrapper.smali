.class public Lorg/eclipse/jdt/internal/core/eval/EvaluationContextWrapper;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/eclipse/jdt/core/eval/IEvaluationContext;


# instance fields
.field protected context:Lorg/eclipse/jdt/internal/eval/EvaluationContext;

.field protected project:Lorg/eclipse/jdt/internal/core/JavaProject;


# direct methods
.method public constructor <init>(Lorg/eclipse/jdt/internal/eval/EvaluationContext;Lorg/eclipse/jdt/internal/core/JavaProject;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/eval/EvaluationContextWrapper;->context:Lorg/eclipse/jdt/internal/eval/EvaluationContext;

    iput-object p2, p0, Lorg/eclipse/jdt/internal/core/eval/EvaluationContextWrapper;->project:Lorg/eclipse/jdt/internal/core/JavaProject;

    return-void
.end method


# virtual methods
.method public allVariables()[Lorg/eclipse/jdt/core/eval/IGlobalVariable;
    .locals 6

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/eval/EvaluationContextWrapper;->context:Lorg/eclipse/jdt/internal/eval/EvaluationContext;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/eval/EvaluationContext;->allVariables()[Lorg/eclipse/jdt/internal/eval/GlobalVariable;

    move-result-object v0

    array-length v1, v0

    new-array v2, v1, [Lorg/eclipse/jdt/internal/core/eval/GlobalVariableWrapper;

    const/4 v3, 0x0

    :goto_0
    if-lt v3, v1, :cond_0

    return-object v2

    :cond_0
    new-instance v4, Lorg/eclipse/jdt/internal/core/eval/GlobalVariableWrapper;

    aget-object v5, v0, v3

    invoke-direct {v4, v5}, Lorg/eclipse/jdt/internal/core/eval/GlobalVariableWrapper;-><init>(Lorg/eclipse/jdt/internal/eval/GlobalVariable;)V

    aput-object v4, v2, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method public checkBuilderState()V
    .locals 0

    return-void
.end method

.method public codeComplete(Ljava/lang/String;ILorg/eclipse/jdt/core/CompletionRequestor;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/JavaModelException;
        }
    .end annotation

    .line 4
    sget-object v0, Lorg/eclipse/jdt/internal/core/DefaultWorkingCopyOwner;->PRIMARY:Lorg/eclipse/jdt/internal/core/DefaultWorkingCopyOwner;

    invoke-virtual {p0, p1, p2, p3, v0}, Lorg/eclipse/jdt/internal/core/eval/EvaluationContextWrapper;->codeComplete(Ljava/lang/String;ILorg/eclipse/jdt/core/CompletionRequestor;Lorg/eclipse/jdt/core/WorkingCopyOwner;)V

    return-void
.end method

.method public codeComplete(Ljava/lang/String;ILorg/eclipse/jdt/core/CompletionRequestor;Lorg/eclipse/core/runtime/IProgressMonitor;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/JavaModelException;
        }
    .end annotation

    .line 5
    sget-object v4, Lorg/eclipse/jdt/internal/core/DefaultWorkingCopyOwner;->PRIMARY:Lorg/eclipse/jdt/internal/core/DefaultWorkingCopyOwner;

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    invoke-virtual/range {v0 .. v5}, Lorg/eclipse/jdt/internal/core/eval/EvaluationContextWrapper;->codeComplete(Ljava/lang/String;ILorg/eclipse/jdt/core/CompletionRequestor;Lorg/eclipse/jdt/core/WorkingCopyOwner;Lorg/eclipse/core/runtime/IProgressMonitor;)V

    return-void
.end method

.method public codeComplete(Ljava/lang/String;ILorg/eclipse/jdt/core/CompletionRequestor;Lorg/eclipse/jdt/core/WorkingCopyOwner;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/JavaModelException;
        }
    .end annotation

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    .line 6
    invoke-virtual/range {v0 .. v5}, Lorg/eclipse/jdt/internal/core/eval/EvaluationContextWrapper;->codeComplete(Ljava/lang/String;ILorg/eclipse/jdt/core/CompletionRequestor;Lorg/eclipse/jdt/core/WorkingCopyOwner;Lorg/eclipse/core/runtime/IProgressMonitor;)V

    return-void
.end method

.method public codeComplete(Ljava/lang/String;ILorg/eclipse/jdt/core/CompletionRequestor;Lorg/eclipse/jdt/core/WorkingCopyOwner;Lorg/eclipse/core/runtime/IProgressMonitor;)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/JavaModelException;
        }
    .end annotation

    .line 7
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/eval/EvaluationContextWrapper;->project:Lorg/eclipse/jdt/internal/core/JavaProject;

    invoke-virtual {v0, p4}, Lorg/eclipse/jdt/internal/core/JavaProject;->newSearchableNameEnvironment(Lorg/eclipse/jdt/core/WorkingCopyOwner;)Lorg/eclipse/jdt/internal/core/SearchableEnvironment;

    move-result-object v4

    .line 8
    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/eval/EvaluationContextWrapper;->context:Lorg/eclipse/jdt/internal/eval/EvaluationContext;

    .line 9
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    .line 10
    iget-object p1, p0, Lorg/eclipse/jdt/internal/core/eval/EvaluationContextWrapper;->project:Lorg/eclipse/jdt/internal/core/JavaProject;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lorg/eclipse/jdt/internal/core/JavaProject;->getOptions(Z)Ljava/util/Map;

    move-result-object v6

    .line 11
    iget-object v7, p0, Lorg/eclipse/jdt/internal/core/eval/EvaluationContextWrapper;->project:Lorg/eclipse/jdt/internal/core/JavaProject;

    move v3, p2

    move-object v5, p3

    move-object v8, p4

    move-object v9, p5

    .line 12
    invoke-virtual/range {v1 .. v9}, Lorg/eclipse/jdt/internal/eval/EvaluationContext;->complete([CILorg/eclipse/jdt/internal/core/SearchableEnvironment;Lorg/eclipse/jdt/core/CompletionRequestor;Ljava/util/Map;Lorg/eclipse/jdt/core/IJavaProject;Lorg/eclipse/jdt/core/WorkingCopyOwner;Lorg/eclipse/core/runtime/IProgressMonitor;)V

    return-void
.end method

.method public codeComplete(Ljava/lang/String;ILorg/eclipse/jdt/core/ICodeCompletionRequestor;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/JavaModelException;
        }
    .end annotation

    if-nez p3, :cond_0

    const/4 p3, 0x0

    .line 13
    invoke-virtual {p0, p1, p2, p3}, Lorg/eclipse/jdt/internal/core/eval/EvaluationContextWrapper;->codeComplete(Ljava/lang/String;ILorg/eclipse/jdt/core/ICompletionRequestor;)V

    return-void

    .line 14
    :cond_0
    new-instance v0, Lorg/eclipse/jdt/internal/core/eval/EvaluationContextWrapper$1;

    invoke-direct {v0, p0, p3}, Lorg/eclipse/jdt/internal/core/eval/EvaluationContextWrapper$1;-><init>(Lorg/eclipse/jdt/internal/core/eval/EvaluationContextWrapper;Lorg/eclipse/jdt/core/ICodeCompletionRequestor;)V

    .line 15
    invoke-virtual {p0, p1, p2, v0}, Lorg/eclipse/jdt/internal/core/eval/EvaluationContextWrapper;->codeComplete(Ljava/lang/String;ILorg/eclipse/jdt/core/ICompletionRequestor;)V

    return-void
.end method

.method public codeComplete(Ljava/lang/String;ILorg/eclipse/jdt/core/ICompletionRequestor;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/JavaModelException;
        }
    .end annotation

    .line 1
    sget-object v0, Lorg/eclipse/jdt/internal/core/DefaultWorkingCopyOwner;->PRIMARY:Lorg/eclipse/jdt/internal/core/DefaultWorkingCopyOwner;

    invoke-virtual {p0, p1, p2, p3, v0}, Lorg/eclipse/jdt/internal/core/eval/EvaluationContextWrapper;->codeComplete(Ljava/lang/String;ILorg/eclipse/jdt/core/ICompletionRequestor;Lorg/eclipse/jdt/core/WorkingCopyOwner;)V

    return-void
.end method

.method public codeComplete(Ljava/lang/String;ILorg/eclipse/jdt/core/ICompletionRequestor;Lorg/eclipse/jdt/core/WorkingCopyOwner;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/JavaModelException;
        }
    .end annotation

    if-eqz p3, :cond_0

    .line 2
    new-instance v0, Lorg/eclipse/jdt/internal/codeassist/CompletionRequestorWrapper;

    invoke-direct {v0, p3}, Lorg/eclipse/jdt/internal/codeassist/CompletionRequestorWrapper;-><init>(Lorg/eclipse/jdt/core/ICompletionRequestor;)V

    invoke-virtual {p0, p1, p2, v0, p4}, Lorg/eclipse/jdt/internal/core/eval/EvaluationContextWrapper;->codeComplete(Ljava/lang/String;ILorg/eclipse/jdt/core/CompletionRequestor;Lorg/eclipse/jdt/core/WorkingCopyOwner;)V

    return-void

    .line 3
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Completion requestor cannot be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public codeSelect(Ljava/lang/String;II)[Lorg/eclipse/jdt/core/IJavaElement;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/JavaModelException;
        }
    .end annotation

    .line 1
    sget-object v0, Lorg/eclipse/jdt/internal/core/DefaultWorkingCopyOwner;->PRIMARY:Lorg/eclipse/jdt/internal/core/DefaultWorkingCopyOwner;

    invoke-virtual {p0, p1, p2, p3, v0}, Lorg/eclipse/jdt/internal/core/eval/EvaluationContextWrapper;->codeSelect(Ljava/lang/String;IILorg/eclipse/jdt/core/WorkingCopyOwner;)[Lorg/eclipse/jdt/core/IJavaElement;

    move-result-object p1

    return-object p1
.end method

.method public codeSelect(Ljava/lang/String;IILorg/eclipse/jdt/core/WorkingCopyOwner;)[Lorg/eclipse/jdt/core/IJavaElement;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/JavaModelException;
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/eval/EvaluationContextWrapper;->project:Lorg/eclipse/jdt/internal/core/JavaProject;

    invoke-virtual {v0, p4}, Lorg/eclipse/jdt/internal/core/JavaProject;->newSearchableNameEnvironment(Lorg/eclipse/jdt/core/WorkingCopyOwner;)Lorg/eclipse/jdt/internal/core/SearchableEnvironment;

    move-result-object v5

    .line 3
    new-instance v0, Lorg/eclipse/jdt/internal/core/SelectionRequestor;

    iget-object v1, v5, Lorg/eclipse/jdt/internal/core/SearchableEnvironment;->nameLookup:Lorg/eclipse/jdt/internal/core/NameLookup;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/eclipse/jdt/internal/core/SelectionRequestor;-><init>(Lorg/eclipse/jdt/internal/core/NameLookup;Lorg/eclipse/jdt/internal/core/Openable;)V

    .line 4
    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/eval/EvaluationContextWrapper;->context:Lorg/eclipse/jdt/internal/eval/EvaluationContext;

    .line 5
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    add-int/2addr p3, p2

    const/4 p1, 0x1

    add-int/lit8 v4, p3, -0x1

    .line 6
    iget-object p3, p0, Lorg/eclipse/jdt/internal/core/eval/EvaluationContextWrapper;->project:Lorg/eclipse/jdt/internal/core/JavaProject;

    invoke-virtual {p3, p1}, Lorg/eclipse/jdt/internal/core/JavaProject;->getOptions(Z)Ljava/util/Map;

    move-result-object v7

    move v3, p2

    move-object v6, v0

    move-object v8, p4

    .line 7
    invoke-virtual/range {v1 .. v8}, Lorg/eclipse/jdt/internal/eval/EvaluationContext;->select([CIILorg/eclipse/jdt/internal/core/SearchableEnvironment;Lorg/eclipse/jdt/internal/codeassist/ISelectionRequestor;Ljava/util/Map;Lorg/eclipse/jdt/core/WorkingCopyOwner;)V

    .line 8
    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/core/SelectionRequestor;->getElements()[Lorg/eclipse/jdt/core/IJavaElement;

    move-result-object p1

    return-object p1
.end method

.method public deleteVariable(Lorg/eclipse/jdt/core/eval/IGlobalVariable;)V
    .locals 1

    instance-of v0, p1, Lorg/eclipse/jdt/internal/core/eval/GlobalVariableWrapper;

    if-eqz v0, :cond_0

    check-cast p1, Lorg/eclipse/jdt/internal/core/eval/GlobalVariableWrapper;

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/eval/EvaluationContextWrapper;->context:Lorg/eclipse/jdt/internal/eval/EvaluationContext;

    iget-object p1, p1, Lorg/eclipse/jdt/internal/core/eval/GlobalVariableWrapper;->variable:Lorg/eclipse/jdt/internal/eval/GlobalVariable;

    invoke-virtual {v0, p1}, Lorg/eclipse/jdt/internal/eval/EvaluationContext;->deleteVariable(Lorg/eclipse/jdt/internal/eval/GlobalVariable;)V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/Error;

    const-string v0, "Unknown implementation of IGlobalVariable"

    invoke-direct {p1, v0}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public evaluateCodeSnippet(Ljava/lang/String;Lorg/eclipse/jdt/core/eval/ICodeSnippetRequestor;Lorg/eclipse/core/runtime/IProgressMonitor;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/JavaModelException;
        }
    .end annotation

    .line 33
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/eval/EvaluationContextWrapper;->checkBuilderState()V

    const/4 p3, 0x0

    .line 34
    :try_start_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/eval/EvaluationContextWrapper;->context:Lorg/eclipse/jdt/internal/eval/EvaluationContext;

    .line 35
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    .line 36
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/eval/EvaluationContextWrapper;->getBuildNameEnvironment()Lorg/eclipse/jdt/internal/compiler/env/INameEnvironment;

    move-result-object p3

    .line 37
    iget-object p1, p0, Lorg/eclipse/jdt/internal/core/eval/EvaluationContextWrapper;->project:Lorg/eclipse/jdt/internal/core/JavaProject;

    const/4 v2, 0x1

    invoke-virtual {p1, v2}, Lorg/eclipse/jdt/internal/core/JavaProject;->getOptions(Z)Ljava/util/Map;

    move-result-object v3

    .line 38
    invoke-virtual {p0, p2}, Lorg/eclipse/jdt/internal/core/eval/EvaluationContextWrapper;->getInfrastructureEvaluationRequestor(Lorg/eclipse/jdt/core/eval/ICodeSnippetRequestor;)Lorg/eclipse/jdt/internal/eval/IRequestor;

    move-result-object v4

    .line 39
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/eval/EvaluationContextWrapper;->getProblemFactory()Lorg/eclipse/jdt/internal/compiler/IProblemFactory;

    move-result-object v5

    move-object v2, p3

    .line 40
    invoke-virtual/range {v0 .. v5}, Lorg/eclipse/jdt/internal/eval/EvaluationContext;->evaluate([CLorg/eclipse/jdt/internal/compiler/env/INameEnvironment;Ljava/util/Map;Lorg/eclipse/jdt/internal/eval/IRequestor;Lorg/eclipse/jdt/internal/compiler/IProblemFactory;)V
    :try_end_0
    .catch Lorg/eclipse/jdt/internal/eval/InstallException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p3, :cond_0

    .line 41
    :goto_0
    invoke-interface {p3}, Lorg/eclipse/jdt/internal/compiler/env/INameEnvironment;->cleanup()V

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_0
    move-exception p1

    .line 42
    :try_start_1
    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/internal/core/eval/EvaluationContextWrapper;->handleInstallException(Lorg/eclipse/jdt/internal/eval/InstallException;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p3, :cond_0

    goto :goto_0

    :cond_0
    :goto_1
    return-void

    :goto_2
    if-eqz p3, :cond_1

    .line 43
    invoke-interface {p3}, Lorg/eclipse/jdt/internal/compiler/env/INameEnvironment;->cleanup()V

    .line 44
    :cond_1
    throw p1
.end method

.method public evaluateCodeSnippet(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[ILorg/eclipse/jdt/core/IType;ZZLorg/eclipse/jdt/core/eval/ICodeSnippetRequestor;Lorg/eclipse/core/runtime/IProgressMonitor;)V
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/JavaModelException;
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v0, p2

    move-object/from16 v2, p3

    .line 1
    invoke-virtual/range {p0 .. p0}, Lorg/eclipse/jdt/internal/core/eval/EvaluationContextWrapper;->checkBuilderState()V

    .line 2
    array-length v3, v0

    .line 3
    new-array v6, v3, [[C

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    if-lt v5, v3, :cond_7

    .line 4
    array-length v7, v2

    .line 5
    new-array v8, v7, [[C

    move v0, v4

    :goto_1
    if-lt v0, v7, :cond_6

    .line 6
    iget-object v0, v1, Lorg/eclipse/jdt/internal/core/eval/EvaluationContextWrapper;->project:Lorg/eclipse/jdt/internal/core/JavaProject;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lorg/eclipse/jdt/internal/core/JavaProject;->getOptions(Z)Ljava/util/Map;

    move-result-object v13

    if-eqz p5, :cond_2

    .line 7
    iget-object v0, v1, Lorg/eclipse/jdt/internal/core/eval/EvaluationContextWrapper;->context:Lorg/eclipse/jdt/internal/eval/EvaluationContext;

    invoke-interface/range {p5 .. p5}, Lorg/eclipse/jdt/core/IType;->getPackageFragment()Lorg/eclipse/jdt/core/IPackageFragment;

    move-result-object v2

    invoke-interface {v2}, Lorg/eclipse/jdt/core/IPackageFragment;->getElementName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/eclipse/jdt/internal/eval/EvaluationContext;->setPackageName([C)V

    .line 8
    invoke-interface/range {p5 .. p5}, Lorg/eclipse/jdt/core/IMember;->getCompilationUnit()Lorg/eclipse/jdt/core/ICompilationUnit;

    move-result-object v0

    .line 9
    const-string v2, "ignore"

    const-string v3, "org.eclipse.jdt.core.compiler.problem.unusedImport"

    if-eqz v0, :cond_1

    .line 10
    invoke-interface {v0}, Lorg/eclipse/jdt/core/ICompilationUnit;->getImports()[Lorg/eclipse/jdt/core/IImportDeclaration;

    move-result-object v0

    .line 11
    array-length v5, v0

    if-eqz v5, :cond_2

    .line 12
    new-array v7, v5, [[C

    :goto_2
    if-lt v4, v5, :cond_0

    .line 13
    iget-object v0, v1, Lorg/eclipse/jdt/internal/core/eval/EvaluationContextWrapper;->context:Lorg/eclipse/jdt/internal/eval/EvaluationContext;

    invoke-virtual {v0, v7}, Lorg/eclipse/jdt/internal/eval/EvaluationContext;->setImports([[C)V

    .line 14
    invoke-interface {v13, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 15
    :cond_0
    aget-object v9, v0, v4

    invoke-interface {v9}, Lorg/eclipse/jdt/core/IImportDeclaration;->getElementName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->toCharArray()[C

    move-result-object v9

    aput-object v9, v7, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 16
    :cond_1
    invoke-interface/range {p5 .. p5}, Lorg/eclipse/jdt/core/IType;->getClassFile()Lorg/eclipse/jdt/core/IOrdinaryClassFile;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jdt/internal/core/AbstractClassFile;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/core/JavaElement;->getSourceMapper()Lorg/eclipse/jdt/internal/core/SourceMapper;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 17
    move-object/from16 v4, p5

    check-cast v4, Lorg/eclipse/jdt/internal/core/BinaryType;

    invoke-virtual {v0, v4}, Lorg/eclipse/jdt/internal/core/SourceMapper;->getImports(Lorg/eclipse/jdt/internal/core/Member;)[[C

    move-result-object v0

    if-eqz v0, :cond_2

    .line 18
    iget-object v4, v1, Lorg/eclipse/jdt/internal/core/eval/EvaluationContextWrapper;->context:Lorg/eclipse/jdt/internal/eval/EvaluationContext;

    invoke-virtual {v4, v0}, Lorg/eclipse/jdt/internal/eval/EvaluationContext;->setImports([[C)V

    .line 19
    invoke-interface {v13, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    :goto_3
    const/4 v2, 0x0

    .line 20
    :try_start_0
    iget-object v4, v1, Lorg/eclipse/jdt/internal/core/eval/EvaluationContextWrapper;->context:Lorg/eclipse/jdt/internal/eval/EvaluationContext;

    .line 21
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v5

    if-nez p5, :cond_3

    move-object v9, v2

    goto :goto_4

    .line 22
    :cond_3
    invoke-interface/range {p5 .. p5}, Lorg/eclipse/jdt/core/IType;->getFullyQualifiedName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    move-object v9, v0

    .line 23
    :goto_4
    invoke-virtual/range {p0 .. p0}, Lorg/eclipse/jdt/internal/core/eval/EvaluationContextWrapper;->getBuildNameEnvironment()Lorg/eclipse/jdt/internal/compiler/env/INameEnvironment;

    move-result-object v2

    move-object/from16 v10, p8

    .line 24
    invoke-virtual {v1, v10}, Lorg/eclipse/jdt/internal/core/eval/EvaluationContextWrapper;->getInfrastructureEvaluationRequestor(Lorg/eclipse/jdt/core/eval/ICodeSnippetRequestor;)Lorg/eclipse/jdt/internal/eval/IRequestor;

    move-result-object v14

    .line 25
    invoke-virtual/range {p0 .. p0}, Lorg/eclipse/jdt/internal/core/eval/EvaluationContextWrapper;->getProblemFactory()Lorg/eclipse/jdt/internal/compiler/IProblemFactory;

    move-result-object v15

    move-object v7, v8

    move-object/from16 v8, p4

    move/from16 v10, p6

    move/from16 v11, p7

    move-object v12, v2

    .line 26
    invoke-virtual/range {v4 .. v15}, Lorg/eclipse/jdt/internal/eval/EvaluationContext;->evaluate([C[[C[[C[I[CZZLorg/eclipse/jdt/internal/compiler/env/INameEnvironment;Ljava/util/Map;Lorg/eclipse/jdt/internal/eval/IRequestor;Lorg/eclipse/jdt/internal/compiler/IProblemFactory;)V
    :try_end_0
    .catch Lorg/eclipse/jdt/internal/eval/InstallException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_4

    .line 27
    :goto_5
    invoke-interface {v2}, Lorg/eclipse/jdt/internal/compiler/env/INameEnvironment;->cleanup()V

    goto :goto_6

    :catchall_0
    move-exception v0

    goto :goto_7

    :catch_0
    move-exception v0

    .line 28
    :try_start_1
    invoke-virtual {v1, v0}, Lorg/eclipse/jdt/internal/core/eval/EvaluationContextWrapper;->handleInstallException(Lorg/eclipse/jdt/internal/eval/InstallException;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v2, :cond_4

    goto :goto_5

    :cond_4
    :goto_6
    return-void

    :goto_7
    if-eqz v2, :cond_5

    .line 29
    invoke-interface {v2}, Lorg/eclipse/jdt/internal/compiler/env/INameEnvironment;->cleanup()V

    .line 30
    :cond_5
    throw v0

    :cond_6
    move-object/from16 v10, p8

    .line 31
    aget-object v3, v2, v0

    invoke-virtual {v3}, Ljava/lang/String;->toCharArray()[C

    move-result-object v3

    aput-object v3, v8, v0

    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_1

    :cond_7
    move-object/from16 v10, p8

    .line 32
    aget-object v7, v0, v5

    invoke-virtual {v7}, Ljava/lang/String;->toCharArray()[C

    move-result-object v7

    aput-object v7, v6, v5

    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_0
.end method

.method public evaluateVariable(Lorg/eclipse/jdt/core/eval/IGlobalVariable;Lorg/eclipse/jdt/core/eval/ICodeSnippetRequestor;Lorg/eclipse/core/runtime/IProgressMonitor;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/JavaModelException;
        }
    .end annotation

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/eval/EvaluationContextWrapper;->checkBuilderState()V

    const/4 p3, 0x0

    :try_start_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/eval/EvaluationContextWrapper;->context:Lorg/eclipse/jdt/internal/eval/EvaluationContext;

    check-cast p1, Lorg/eclipse/jdt/internal/core/eval/GlobalVariableWrapper;

    iget-object v1, p1, Lorg/eclipse/jdt/internal/core/eval/GlobalVariableWrapper;->variable:Lorg/eclipse/jdt/internal/eval/GlobalVariable;

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/eval/EvaluationContextWrapper;->getBuildNameEnvironment()Lorg/eclipse/jdt/internal/compiler/env/INameEnvironment;

    move-result-object p3

    iget-object p1, p0, Lorg/eclipse/jdt/internal/core/eval/EvaluationContextWrapper;->project:Lorg/eclipse/jdt/internal/core/JavaProject;

    const/4 v2, 0x1

    invoke-virtual {p1, v2}, Lorg/eclipse/jdt/internal/core/JavaProject;->getOptions(Z)Ljava/util/Map;

    move-result-object v3

    invoke-virtual {p0, p2}, Lorg/eclipse/jdt/internal/core/eval/EvaluationContextWrapper;->getInfrastructureEvaluationRequestor(Lorg/eclipse/jdt/core/eval/ICodeSnippetRequestor;)Lorg/eclipse/jdt/internal/eval/IRequestor;

    move-result-object v4

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/eval/EvaluationContextWrapper;->getProblemFactory()Lorg/eclipse/jdt/internal/compiler/IProblemFactory;

    move-result-object v5

    move-object v2, p3

    invoke-virtual/range {v0 .. v5}, Lorg/eclipse/jdt/internal/eval/EvaluationContext;->evaluateVariable(Lorg/eclipse/jdt/internal/eval/GlobalVariable;Lorg/eclipse/jdt/internal/compiler/env/INameEnvironment;Ljava/util/Map;Lorg/eclipse/jdt/internal/eval/IRequestor;Lorg/eclipse/jdt/internal/compiler/IProblemFactory;)V
    :try_end_0
    .catch Lorg/eclipse/jdt/internal/eval/InstallException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p3, :cond_0

    :goto_0
    invoke-interface {p3}, Lorg/eclipse/jdt/internal/compiler/env/INameEnvironment;->cleanup()V

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_0
    move-exception p1

    :try_start_1
    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/internal/core/eval/EvaluationContextWrapper;->handleInstallException(Lorg/eclipse/jdt/internal/eval/InstallException;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p3, :cond_0

    goto :goto_0

    :cond_0
    :goto_1
    return-void

    :goto_2
    if-eqz p3, :cond_1

    invoke-interface {p3}, Lorg/eclipse/jdt/internal/compiler/env/INameEnvironment;->cleanup()V

    :cond_1
    throw p1
.end method

.method public getBuildNameEnvironment()Lorg/eclipse/jdt/internal/compiler/env/INameEnvironment;
    .locals 3

    new-instance v0, Lorg/eclipse/jdt/internal/core/builder/NameEnvironment;

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/eval/EvaluationContextWrapper;->getProject()Lorg/eclipse/jdt/core/IJavaProject;

    move-result-object v1

    sget-object v2, Lorg/eclipse/jdt/internal/core/CompilationGroup;->TEST:Lorg/eclipse/jdt/internal/core/CompilationGroup;

    invoke-direct {v0, v1, v2}, Lorg/eclipse/jdt/internal/core/builder/NameEnvironment;-><init>(Lorg/eclipse/jdt/core/IJavaProject;Lorg/eclipse/jdt/internal/core/CompilationGroup;)V

    return-object v0
.end method

.method public getImports()[Ljava/lang/String;
    .locals 6

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/eval/EvaluationContextWrapper;->context:Lorg/eclipse/jdt/internal/eval/EvaluationContext;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/eval/EvaluationContext;->getImports()[[C

    move-result-object v0

    array-length v1, v0

    new-array v2, v1, [Ljava/lang/String;

    const/4 v3, 0x0

    :goto_0
    if-lt v3, v1, :cond_0

    return-object v2

    :cond_0
    new-instance v4, Ljava/lang/String;

    aget-object v5, v0, v3

    invoke-direct {v4, v5}, Ljava/lang/String;-><init>([C)V

    aput-object v4, v2, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method public getInfrastructureEvaluationContext()Lorg/eclipse/jdt/internal/eval/EvaluationContext;
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/eval/EvaluationContextWrapper;->context:Lorg/eclipse/jdt/internal/eval/EvaluationContext;

    return-object v0
.end method

.method public getInfrastructureEvaluationRequestor(Lorg/eclipse/jdt/core/eval/ICodeSnippetRequestor;)Lorg/eclipse/jdt/internal/eval/IRequestor;
    .locals 1

    new-instance v0, Lorg/eclipse/jdt/internal/core/eval/RequestorWrapper;

    invoke-direct {v0, p1}, Lorg/eclipse/jdt/internal/core/eval/RequestorWrapper;-><init>(Lorg/eclipse/jdt/core/eval/ICodeSnippetRequestor;)V

    return-object v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/eval/EvaluationContextWrapper;->context:Lorg/eclipse/jdt/internal/eval/EvaluationContext;

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/eval/EvaluationContext;->getPackageName()[C

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([C)V

    return-object v0
.end method

.method public getProblemFactory()Lorg/eclipse/jdt/internal/compiler/IProblemFactory;
    .locals 1

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-static {v0}, Lorg/eclipse/jdt/internal/core/builder/ProblemFactory;->getProblemFactory(Ljava/util/Locale;)Lorg/eclipse/jdt/internal/core/builder/ProblemFactory;

    move-result-object v0

    return-object v0
.end method

.method public getProject()Lorg/eclipse/jdt/core/IJavaProject;
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/eval/EvaluationContextWrapper;->project:Lorg/eclipse/jdt/internal/core/JavaProject;

    return-object v0
.end method

.method public getVarClassName()[C
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/eval/EvaluationContextWrapper;->context:Lorg/eclipse/jdt/internal/eval/EvaluationContext;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/eval/EvaluationContext;->getVarClassName()[C

    move-result-object v0

    return-object v0
.end method

.method public handleInstallException(Lorg/eclipse/jdt/internal/eval/InstallException;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/JavaModelException;
        }
    .end annotation

    new-instance v0, Lorg/eclipse/jdt/core/JavaModelException;

    new-instance v1, Lorg/eclipse/jdt/internal/core/JavaModelStatus;

    const/16 v2, 0x3e0

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, v2, p1}, Lorg/eclipse/jdt/internal/core/JavaModelStatus;-><init>(ILjava/lang/String;)V

    invoke-direct {v0, v1}, Lorg/eclipse/jdt/core/JavaModelException;-><init>(Lorg/eclipse/jdt/core/IJavaModelStatus;)V

    throw v0
.end method

.method public newVariable(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/eclipse/jdt/core/eval/IGlobalVariable;
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/eval/EvaluationContextWrapper;->context:Lorg/eclipse/jdt/internal/eval/EvaluationContext;

    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object p1

    invoke-virtual {p2}, Ljava/lang/String;->toCharArray()[C

    move-result-object p2

    if-nez p3, :cond_0

    const/4 p3, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p3}, Ljava/lang/String;->toCharArray()[C

    move-result-object p3

    :goto_0
    invoke-virtual {v0, p1, p2, p3}, Lorg/eclipse/jdt/internal/eval/EvaluationContext;->newVariable([C[C[C)Lorg/eclipse/jdt/internal/eval/GlobalVariable;

    move-result-object p1

    new-instance p2, Lorg/eclipse/jdt/internal/core/eval/GlobalVariableWrapper;

    invoke-direct {p2, p1}, Lorg/eclipse/jdt/internal/core/eval/GlobalVariableWrapper;-><init>(Lorg/eclipse/jdt/internal/eval/GlobalVariable;)V

    return-object p2
.end method

.method public setImports([Ljava/lang/String;)V
    .locals 4

    array-length v0, p1

    new-array v1, v0, [[C

    const/4 v2, 0x0

    :goto_0
    if-lt v2, v0, :cond_0

    iget-object p1, p0, Lorg/eclipse/jdt/internal/core/eval/EvaluationContextWrapper;->context:Lorg/eclipse/jdt/internal/eval/EvaluationContext;

    invoke-virtual {p1, v1}, Lorg/eclipse/jdt/internal/eval/EvaluationContext;->setImports([[C)V

    return-void

    :cond_0
    aget-object v3, p1, v2

    invoke-virtual {v3}, Ljava/lang/String;->toCharArray()[C

    move-result-object v3

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public setPackageName(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/eval/EvaluationContextWrapper;->context:Lorg/eclipse/jdt/internal/eval/EvaluationContext;

    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/eclipse/jdt/internal/eval/EvaluationContext;->setPackageName([C)V

    return-void
.end method

.method public validateImports(Lorg/eclipse/jdt/core/eval/ICodeSnippetRequestor;)V
    .locals 3

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/eval/EvaluationContextWrapper;->checkBuilderState()V

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/eval/EvaluationContextWrapper;->context:Lorg/eclipse/jdt/internal/eval/EvaluationContext;

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/eval/EvaluationContextWrapper;->getBuildNameEnvironment()Lorg/eclipse/jdt/internal/compiler/env/INameEnvironment;

    move-result-object v0

    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/internal/core/eval/EvaluationContextWrapper;->getInfrastructureEvaluationRequestor(Lorg/eclipse/jdt/core/eval/ICodeSnippetRequestor;)Lorg/eclipse/jdt/internal/eval/IRequestor;

    move-result-object p1

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/eval/EvaluationContextWrapper;->getProblemFactory()Lorg/eclipse/jdt/internal/compiler/IProblemFactory;

    move-result-object v2

    invoke-virtual {v1, v0, p1, v2}, Lorg/eclipse/jdt/internal/eval/EvaluationContext;->evaluateImports(Lorg/eclipse/jdt/internal/compiler/env/INameEnvironment;Lorg/eclipse/jdt/internal/eval/IRequestor;Lorg/eclipse/jdt/internal/compiler/IProblemFactory;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lorg/eclipse/jdt/internal/compiler/env/INameEnvironment;->cleanup()V

    :cond_0
    return-void

    :catchall_0
    move-exception p1

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lorg/eclipse/jdt/internal/compiler/env/INameEnvironment;->cleanup()V

    :cond_1
    throw p1
.end method
