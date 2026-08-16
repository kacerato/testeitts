.class public Lorg/eclipse/jdt/internal/core/CommitWorkingCopyOperation;
.super Lorg/eclipse/jdt/internal/core/JavaModelOperation;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lorg/eclipse/jdt/core/ICompilationUnit;Z)V
    .locals 2

    const/4 v0, 0x1

    new-array v0, v0, [Lorg/eclipse/jdt/core/IJavaElement;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-direct {p0, v0, p2}, Lorg/eclipse/jdt/internal/core/JavaModelOperation;-><init>([Lorg/eclipse/jdt/core/IJavaElement;Z)V

    return-void
.end method


# virtual methods
.method public executeOperation()V
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/JavaModelException;
        }
    .end annotation

    :try_start_0
    sget-object v0, Lorg/eclipse/jdt/internal/core/util/Messages;->workingCopy_commit:Ljava/lang/String;

    const/4 v1, 0x2

    invoke-virtual {p0, v0, v1}, Lorg/eclipse/jdt/internal/core/JavaModelOperation;->beginTask(Ljava/lang/String;I)V

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/CommitWorkingCopyOperation;->getCompilationUnit()Lorg/eclipse/jdt/internal/core/CompilationUnit;

    move-result-object v0

    const-string v2, " "

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/core/JavaElement;->getJavaProject()Lorg/eclipse/jdt/core/IJavaProject;

    move-result-object v3

    invoke-interface {v3}, Lorg/eclipse/jdt/core/IJavaElement;->getElementName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/core/Openable;->getBuffer()Lorg/eclipse/jdt/core/IBuffer;

    move-result-object v0

    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/JavaModelOperation;->progressMonitor:Lorg/eclipse/core/runtime/SubMonitor;

    iget-boolean v2, p0, Lorg/eclipse/jdt/internal/core/JavaModelOperation;->force:Z

    invoke-interface {v0, v1, v2}, Lorg/eclipse/jdt/core/IBuffer;->save(Lorg/eclipse/core/runtime/IProgressMonitor;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/JavaModelOperation;->done()V

    return-void

    :catchall_0
    move-exception v0

    goto/16 :goto_6

    :cond_0
    :try_start_1
    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/core/CompilationUnit;->getPrimary()Lorg/eclipse/jdt/core/ICompilationUnit;

    move-result-object v2

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/core/CompilationUnit;->isPrimary()Z

    move-result v3

    const/4 v4, 0x3

    invoke-virtual {v0, v4}, Lorg/eclipse/jdt/internal/core/JavaElement;->getAncestor(I)Lorg/eclipse/jdt/core/IJavaElement;

    move-result-object v5

    check-cast v5, Lorg/eclipse/jdt/internal/core/PackageFragmentRoot;

    invoke-static {v0}, Lorg/eclipse/jdt/internal/core/util/Util;->isExcluded(Lorg/eclipse/jdt/core/IJavaElement;)Z

    move-result v6

    const/4 v7, 0x1

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/core/Openable;->getResource()Lorg/eclipse/core/resources/IResource;

    move-result-object v8

    check-cast v8, Lorg/eclipse/core/resources/IFile;

    invoke-virtual {v5}, Lorg/eclipse/jdt/internal/core/JavaElement;->getJavaProject()Lorg/eclipse/jdt/core/IJavaProject;

    move-result-object v9

    const/4 v10, 0x0

    if-nez v3, :cond_6

    invoke-virtual {v5}, Lorg/eclipse/jdt/internal/core/PackageFragmentRoot;->validateOnClasspath()Lorg/eclipse/core/runtime/IStatus;

    move-result-object v5

    invoke-interface {v5}, Lorg/eclipse/core/runtime/IStatus;->isOK()Z

    move-result v5

    if-eqz v5, :cond_1

    if-nez v6, :cond_1

    invoke-interface {v8}, Lorg/eclipse/core/resources/IFile;->isAccessible()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/core/CompilationUnit;->getElementName()Ljava/lang/String;

    move-result-object v5

    const-string v11, "org.eclipse.jdt.core.compiler.source"

    invoke-interface {v9, v11, v7}, Lorg/eclipse/jdt/core/IJavaProject;->getOption(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v11

    const-string v12, "org.eclipse.jdt.core.compiler.compliance"

    invoke-interface {v9, v12, v7}, Lorg/eclipse/jdt/core/IJavaProject;->getOption(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v9

    invoke-static {v5, v11, v9}, Lorg/eclipse/jdt/internal/core/util/Util;->isValidCompilationUnitName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v5, :cond_1

    goto :goto_4

    :cond_1
    :try_start_2
    invoke-interface {v8}, Lorg/eclipse/core/resources/IFile;->getCharset()Ljava/lang/String;

    move-result-object v3
    :try_end_2
    .catch Lorg/eclipse/core/runtime/CoreException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catch_0
    move-object v3, v10

    :goto_0
    :try_start_3
    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/core/CompilationUnit;->getSource()Ljava/lang/String;

    move-result-object v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-nez v5, :cond_2

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/JavaModelOperation;->done()V

    return-void

    :cond_2
    if-nez v3, :cond_3

    :try_start_4
    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    goto :goto_1

    :catch_1
    move-exception v0

    goto :goto_2

    :catch_2
    move-exception v0

    goto :goto_3

    :cond_3
    invoke-virtual {v5, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    :goto_1
    new-instance v5, Ljava/io/ByteArrayInputStream;

    invoke-direct {v5, v3}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-interface {v8}, Lorg/eclipse/core/resources/IFile;->exists()Z

    move-result v3

    if-eqz v3, :cond_5

    iget-boolean v3, p0, Lorg/eclipse/jdt/internal/core/JavaModelOperation;->force:Z

    if-eqz v3, :cond_4

    move v1, v4

    :cond_4
    invoke-interface {v8, v5, v1, v10}, Lorg/eclipse/core/resources/IFile;->setContents(Ljava/io/InputStream;ILorg/eclipse/core/runtime/IProgressMonitor;)V

    goto :goto_5

    :cond_5
    iget-boolean v1, p0, Lorg/eclipse/jdt/internal/core/JavaModelOperation;->force:Z

    iget-object v3, p0, Lorg/eclipse/jdt/internal/core/JavaModelOperation;->progressMonitor:Lorg/eclipse/core/runtime/SubMonitor;

    invoke-interface {v8, v5, v1, v3}, Lorg/eclipse/core/resources/IFile;->create(Ljava/io/InputStream;ZLorg/eclipse/core/runtime/IProgressMonitor;)V
    :try_end_4
    .catch Lorg/eclipse/core/runtime/CoreException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_5

    :goto_2
    :try_start_5
    new-instance v1, Lorg/eclipse/jdt/core/JavaModelException;

    const/16 v2, 0x3d9

    invoke-direct {v1, v0, v2}, Lorg/eclipse/jdt/core/JavaModelException;-><init>(Ljava/lang/Throwable;I)V

    throw v1

    :goto_3
    new-instance v1, Lorg/eclipse/jdt/core/JavaModelException;

    invoke-direct {v1, v0}, Lorg/eclipse/jdt/core/JavaModelException;-><init>(Lorg/eclipse/core/runtime/CoreException;)V

    throw v1

    :cond_6
    :goto_4
    if-nez v3, :cond_7

    invoke-interface {v2}, Lorg/eclipse/jdt/core/IOpenable;->isOpen()Z

    move-result v1

    if-nez v1, :cond_7

    invoke-interface {v2, v10}, Lorg/eclipse/jdt/core/IOpenable;->open(Lorg/eclipse/core/runtime/IProgressMonitor;)V

    :cond_7
    if-nez v6, :cond_9

    if-eqz v3, :cond_8

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/core/CompilationUnit;->isConsistent()Z

    move-result v1

    if-nez v1, :cond_9

    :cond_8
    new-instance v10, Lorg/eclipse/jdt/internal/core/JavaElementDeltaBuilder;

    invoke-direct {v10, v2}, Lorg/eclipse/jdt/internal/core/JavaElementDeltaBuilder;-><init>(Lorg/eclipse/jdt/core/IJavaElement;)V

    :cond_9
    invoke-interface {v2}, Lorg/eclipse/jdt/core/IOpenable;->getBuffer()Lorg/eclipse/jdt/core/IBuffer;

    move-result-object v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    if-nez v3, :cond_c

    if-nez v1, :cond_a

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/JavaModelOperation;->done()V

    return-void

    :cond_a
    :try_start_6
    invoke-interface {v1}, Lorg/eclipse/jdt/core/IBuffer;->getCharacters()[C

    move-result-object v3
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :try_start_7
    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/core/Openable;->getBuffer()Lorg/eclipse/jdt/core/IBuffer;

    move-result-object v4
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    if-nez v4, :cond_b

    :try_start_8
    invoke-interface {v1, v3}, Lorg/eclipse/jdt/core/IBuffer;->setContents([C)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/JavaModelOperation;->done()V

    return-void

    :cond_b
    :try_start_9
    invoke-interface {v4}, Lorg/eclipse/jdt/core/IBuffer;->getCharacters()[C

    move-result-object v4

    invoke-interface {v1, v4}, Lorg/eclipse/jdt/core/IBuffer;->setContents([C)V

    iget-object v4, p0, Lorg/eclipse/jdt/internal/core/JavaModelOperation;->progressMonitor:Lorg/eclipse/core/runtime/SubMonitor;

    iget-boolean v5, p0, Lorg/eclipse/jdt/internal/core/JavaModelOperation;->force:Z

    invoke-interface {v1, v4, v5}, Lorg/eclipse/jdt/core/IBuffer;->save(Lorg/eclipse/core/runtime/IProgressMonitor;Z)V

    invoke-interface {v2, p0}, Lorg/eclipse/jdt/core/IOpenable;->makeConsistent(Lorg/eclipse/core/runtime/IProgressMonitor;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    goto :goto_5

    :catchall_1
    move-exception v0

    :try_start_a
    invoke-interface {v1, v3}, Lorg/eclipse/jdt/core/IBuffer;->setContents([C)V

    throw v0

    :cond_c
    iget-object v3, p0, Lorg/eclipse/jdt/internal/core/JavaModelOperation;->progressMonitor:Lorg/eclipse/core/runtime/SubMonitor;

    iget-boolean v4, p0, Lorg/eclipse/jdt/internal/core/JavaModelOperation;->force:Z

    invoke-interface {v1, v3, v4}, Lorg/eclipse/jdt/core/IBuffer;->save(Lorg/eclipse/core/runtime/IProgressMonitor;Z)V

    invoke-interface {v2, p0}, Lorg/eclipse/jdt/core/IOpenable;->makeConsistent(Lorg/eclipse/core/runtime/IProgressMonitor;)V

    :goto_5
    const-string v1, "hasModifiedResource"

    const-string v3, "true"

    invoke-static {v1, v3}, Lorg/eclipse/jdt/internal/core/JavaModelOperation;->setAttribute(Ljava/lang/Object;Ljava/lang/Object;)V

    check-cast v2, Lorg/eclipse/jdt/internal/core/CompilationUnit;

    invoke-virtual {v0, v2}, Lorg/eclipse/jdt/internal/core/CompilationUnit;->updateTimeStamp(Lorg/eclipse/jdt/internal/core/CompilationUnit;)V

    invoke-virtual {v0, p0}, Lorg/eclipse/jdt/internal/core/CompilationUnit;->makeConsistent(Lorg/eclipse/core/runtime/IProgressMonitor;)V

    invoke-virtual {p0, v7}, Lorg/eclipse/jdt/internal/core/JavaModelOperation;->worked(I)V

    if-eqz v10, :cond_d

    invoke-virtual {v10}, Lorg/eclipse/jdt/internal/core/JavaElementDeltaBuilder;->buildDeltas()V

    iget-object v0, v10, Lorg/eclipse/jdt/internal/core/JavaElementDeltaBuilder;->delta:Lorg/eclipse/jdt/internal/core/JavaElementDelta;

    if-eqz v0, :cond_d

    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/internal/core/JavaModelOperation;->addDelta(Lorg/eclipse/jdt/core/IJavaElementDelta;)V

    :cond_d
    invoke-virtual {p0, v7}, Lorg/eclipse/jdt/internal/core/JavaModelOperation;->worked(I)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/JavaModelOperation;->done()V

    return-void

    :goto_6
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/JavaModelOperation;->done()V

    throw v0
.end method

.method public getCompilationUnit()Lorg/eclipse/jdt/internal/core/CompilationUnit;
    .locals 1

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/JavaModelOperation;->getElementToProcess()Lorg/eclipse/jdt/core/IJavaElement;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jdt/internal/core/CompilationUnit;

    return-object v0
.end method

.method public getSchedulingRule()Lorg/eclipse/core/runtime/jobs/ISchedulingRule;
    .locals 3

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/JavaModelOperation;->getElementToProcess()Lorg/eclipse/jdt/core/IJavaElement;

    move-result-object v0

    invoke-interface {v0}, Lorg/eclipse/jdt/core/IJavaElement;->getResource()Lorg/eclipse/core/resources/IResource;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    invoke-interface {v0}, Lorg/eclipse/core/resources/IResource;->getWorkspace()Lorg/eclipse/core/resources/IWorkspace;

    move-result-object v1

    invoke-interface {v0}, Lorg/eclipse/core/resources/IResource;->exists()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Lorg/eclipse/core/resources/IWorkspace;->getRuleFactory()Lorg/eclipse/core/resources/IResourceRuleFactory;

    move-result-object v1

    invoke-interface {v1, v0}, Lorg/eclipse/core/resources/IResourceRuleFactory;->modifyRule(Lorg/eclipse/core/resources/IResource;)Lorg/eclipse/core/runtime/jobs/ISchedulingRule;

    move-result-object v0

    return-object v0

    :cond_1
    invoke-interface {v1}, Lorg/eclipse/core/resources/IWorkspace;->getRuleFactory()Lorg/eclipse/core/resources/IResourceRuleFactory;

    move-result-object v1

    invoke-interface {v1, v0}, Lorg/eclipse/core/resources/IResourceRuleFactory;->createRule(Lorg/eclipse/core/resources/IResource;)Lorg/eclipse/core/runtime/jobs/ISchedulingRule;

    move-result-object v0

    return-object v0
.end method

.method public verify()Lorg/eclipse/jdt/core/IJavaModelStatus;
    .locals 3

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/CommitWorkingCopyOperation;->getCompilationUnit()Lorg/eclipse/jdt/internal/core/CompilationUnit;

    move-result-object v0

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/core/CompilationUnit;->isWorkingCopy()Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Lorg/eclipse/jdt/internal/core/JavaModelStatus;

    const/16 v2, 0x3c7

    invoke-direct {v1, v2, v0}, Lorg/eclipse/jdt/internal/core/JavaModelStatus;-><init>(ILorg/eclipse/jdt/core/IJavaElement;)V

    return-object v1

    :cond_0
    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/core/CompilationUnit;->hasResourceChanged()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lorg/eclipse/jdt/internal/core/JavaModelOperation;->force:Z

    if-nez v0, :cond_1

    new-instance v0, Lorg/eclipse/jdt/internal/core/JavaModelStatus;

    const/16 v1, 0x3d5

    invoke-direct {v0, v1}, Lorg/eclipse/jdt/internal/core/JavaModelStatus;-><init>(I)V

    return-object v0

    :cond_1
    sget-object v0, Lorg/eclipse/jdt/internal/core/JavaModelStatus;->VERIFIED_OK:Lorg/eclipse/jdt/core/IJavaModelStatus;

    return-object v0
.end method
