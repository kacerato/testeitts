.class public Lorg/eclipse/jdt/internal/core/CreateCompilationUnitOperation;
.super Lorg/eclipse/jdt/internal/core/JavaModelOperation;
.source "SourceFile"


# instance fields
.field protected name:Ljava/lang/String;

.field protected source:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lorg/eclipse/jdt/core/IPackageFragment;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x1

    new-array v1, v1, [Lorg/eclipse/jdt/core/IJavaElement;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-direct {p0, v0, v1, p4}, Lorg/eclipse/jdt/internal/core/JavaModelOperation;-><init>([Lorg/eclipse/jdt/core/IJavaElement;[Lorg/eclipse/jdt/core/IJavaElement;Z)V

    iput-object p2, p0, Lorg/eclipse/jdt/internal/core/CreateCompilationUnitOperation;->name:Ljava/lang/String;

    iput-object p3, p0, Lorg/eclipse/jdt/internal/core/CreateCompilationUnitOperation;->source:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public executeOperation()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/JavaModelException;
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x1

    :try_start_0
    sget-object v2, Lorg/eclipse/jdt/internal/core/util/Messages;->operation_createUnitProgress:Ljava/lang/String;

    const/4 v3, 0x2

    invoke-virtual {p0, v2, v3}, Lorg/eclipse/jdt/internal/core/JavaModelOperation;->beginTask(Ljava/lang/String;I)V

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/JavaModelOperation;->newJavaElementDelta()Lorg/eclipse/jdt/internal/core/JavaElementDelta;

    move-result-object v2

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/CreateCompilationUnitOperation;->getCompilationUnit()Lorg/eclipse/jdt/core/ICompilationUnit;

    move-result-object v3

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/JavaModelOperation;->getParentElement()Lorg/eclipse/jdt/core/IJavaElement;

    move-result-object v4

    check-cast v4, Lorg/eclipse/jdt/core/IPackageFragment;

    invoke-interface {v4}, Lorg/eclipse/jdt/core/IJavaElement;->getResource()Lorg/eclipse/core/resources/IResource;

    move-result-object v4

    check-cast v4, Lorg/eclipse/core/resources/IContainer;

    invoke-virtual {p0, v1}, Lorg/eclipse/jdt/internal/core/JavaModelOperation;->worked(I)V

    new-instance v5, Lorg/eclipse/core/runtime/Path;

    iget-object v6, p0, Lorg/eclipse/jdt/internal/core/CreateCompilationUnitOperation;->name:Ljava/lang/String;

    invoke-direct {v5, v6}, Lorg/eclipse/core/runtime/Path;-><init>(Ljava/lang/String;)V

    invoke-interface {v4, v5}, Lorg/eclipse/core/resources/IContainer;->getFile(Lorg/eclipse/core/runtime/IPath;)Lorg/eclipse/core/resources/IFile;

    move-result-object v5

    invoke-interface {v5}, Lorg/eclipse/core/resources/IFile;->exists()Z

    move-result v6

    if-eqz v6, :cond_3

    iget-boolean v4, p0, Lorg/eclipse/jdt/internal/core/JavaModelOperation;->force:Z

    if-eqz v4, :cond_2

    invoke-interface {v3}, Lorg/eclipse/jdt/core/IOpenable;->getBuffer()Lorg/eclipse/jdt/core/IBuffer;

    move-result-object v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v4, :cond_0

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/JavaModelOperation;->done()V

    return-void

    :cond_0
    :try_start_1
    iget-object v5, p0, Lorg/eclipse/jdt/internal/core/CreateCompilationUnitOperation;->source:Ljava/lang/String;

    invoke-interface {v4, v5}, Lorg/eclipse/jdt/core/IBuffer;->setContents(Ljava/lang/String;)V

    new-instance v4, Lorg/eclipse/core/runtime/NullProgressMonitor;

    invoke-direct {v4}, Lorg/eclipse/core/runtime/NullProgressMonitor;-><init>()V

    invoke-interface {v3, v4, v0}, Lorg/eclipse/jdt/core/IOpenable;->save(Lorg/eclipse/core/runtime/IProgressMonitor;Z)V

    new-array v4, v1, [Lorg/eclipse/jdt/core/IJavaElement;

    aput-object v3, v4, v0

    iput-object v4, p0, Lorg/eclipse/jdt/internal/core/JavaModelOperation;->resultElements:[Lorg/eclipse/jdt/core/IJavaElement;

    invoke-static {v3}, Lorg/eclipse/jdt/internal/core/util/Util;->isExcluded(Lorg/eclipse/jdt/core/IJavaElement;)Z

    move-result v4

    if-nez v4, :cond_6

    invoke-interface {v3}, Lorg/eclipse/jdt/core/IJavaElement;->getParent()Lorg/eclipse/jdt/core/IJavaElement;

    move-result-object v3

    invoke-interface {v3}, Lorg/eclipse/jdt/core/IJavaElement;->exists()Z

    move-result v3

    if-eqz v3, :cond_6

    :goto_0
    iget-object v3, p0, Lorg/eclipse/jdt/internal/core/JavaModelOperation;->resultElements:[Lorg/eclipse/jdt/core/IJavaElement;

    array-length v4, v3

    if-lt v0, v4, :cond_1

    invoke-virtual {p0, v2}, Lorg/eclipse/jdt/internal/core/JavaModelOperation;->addDelta(Lorg/eclipse/jdt/core/IJavaElementDelta;)V

    goto/16 :goto_4

    :catchall_0
    move-exception v0

    goto/16 :goto_6

    :cond_1
    aget-object v3, v3, v0

    invoke-virtual {v2, v3, v1}, Lorg/eclipse/jdt/internal/core/JavaElementDelta;->changed(Lorg/eclipse/jdt/core/IJavaElement;I)Lorg/eclipse/jdt/internal/core/JavaElementDelta;

    add-int/2addr v0, v1

    goto :goto_0

    :cond_2
    new-instance v0, Lorg/eclipse/jdt/core/JavaModelException;

    new-instance v1, Lorg/eclipse/jdt/internal/core/JavaModelStatus;

    sget-object v2, Lorg/eclipse/jdt/internal/core/util/Messages;->status_nameCollision:Ljava/lang/String;

    invoke-interface {v5}, Lorg/eclipse/core/resources/IFile;->getFullPath()Lorg/eclipse/core/runtime/IPath;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lorg/eclipse/jdt/internal/core/util/Messages;->bind(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x3d1

    invoke-direct {v1, v3, v2}, Lorg/eclipse/jdt/internal/core/JavaModelStatus;-><init>(ILjava/lang/String;)V

    invoke-direct {v0, v1}, Lorg/eclipse/jdt/core/JavaModelException;-><init>(Lorg/eclipse/jdt/core/IJavaModelStatus;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_3
    :try_start_2
    invoke-interface {v4}, Lorg/eclipse/core/resources/IContainer;->getDefaultCharset()Ljava/lang/String;

    move-result-object v5
    :try_end_2
    .catch Lorg/eclipse/core/runtime/CoreException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_5

    :catch_1
    const/4 v5, 0x0

    :goto_1
    :try_start_3
    new-instance v6, Ljava/io/ByteArrayInputStream;

    if-nez v5, :cond_4

    iget-object v5, p0, Lorg/eclipse/jdt/internal/core/CreateCompilationUnitOperation;->source:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    goto :goto_2

    :cond_4
    iget-object v7, p0, Lorg/eclipse/jdt/internal/core/CreateCompilationUnitOperation;->source:Ljava/lang/String;

    invoke-virtual {v7, v5}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v5

    :goto_2
    invoke-direct {v6, v5}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-interface {v3}, Lorg/eclipse/jdt/core/IJavaElement;->getElementName()Ljava/lang/String;

    move-result-object v5

    iget-boolean v7, p0, Lorg/eclipse/jdt/internal/core/JavaModelOperation;->force:Z

    invoke-virtual {p0, v4, v5, v6, v7}, Lorg/eclipse/jdt/internal/core/JavaModelOperation;->createFile(Lorg/eclipse/core/resources/IContainer;Ljava/lang/String;Ljava/io/InputStream;Z)V

    new-array v4, v1, [Lorg/eclipse/jdt/core/IJavaElement;

    aput-object v3, v4, v0

    iput-object v4, p0, Lorg/eclipse/jdt/internal/core/JavaModelOperation;->resultElements:[Lorg/eclipse/jdt/core/IJavaElement;

    invoke-static {v3}, Lorg/eclipse/jdt/internal/core/util/Util;->isExcluded(Lorg/eclipse/jdt/core/IJavaElement;)Z

    move-result v4

    if-nez v4, :cond_6

    invoke-interface {v3}, Lorg/eclipse/jdt/core/IJavaElement;->getParent()Lorg/eclipse/jdt/core/IJavaElement;

    move-result-object v3

    invoke-interface {v3}, Lorg/eclipse/jdt/core/IJavaElement;->exists()Z

    move-result v3

    if-eqz v3, :cond_6

    :goto_3
    iget-object v3, p0, Lorg/eclipse/jdt/internal/core/JavaModelOperation;->resultElements:[Lorg/eclipse/jdt/core/IJavaElement;

    array-length v4, v3

    if-lt v0, v4, :cond_5

    invoke-virtual {p0, v2}, Lorg/eclipse/jdt/internal/core/JavaModelOperation;->addDelta(Lorg/eclipse/jdt/core/IJavaElementDelta;)V

    goto :goto_4

    :cond_5
    aget-object v3, v3, v0

    invoke-virtual {v2, v3}, Lorg/eclipse/jdt/internal/core/JavaElementDelta;->added(Lorg/eclipse/jdt/core/IJavaElement;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    add-int/2addr v0, v1

    goto :goto_3

    :cond_6
    :goto_4
    :try_start_4
    invoke-virtual {p0, v1}, Lorg/eclipse/jdt/internal/core/JavaModelOperation;->worked(I)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/JavaModelOperation;->done()V

    return-void

    :goto_5
    :try_start_5
    new-instance v1, Lorg/eclipse/jdt/core/JavaModelException;

    const/16 v2, 0x3d9

    invoke-direct {v1, v0, v2}, Lorg/eclipse/jdt/core/JavaModelException;-><init>(Ljava/lang/Throwable;I)V

    throw v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :goto_6
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/JavaModelOperation;->done()V

    throw v0
.end method

.method public getCompilationUnit()Lorg/eclipse/jdt/core/ICompilationUnit;
    .locals 2

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/JavaModelOperation;->getParentElement()Lorg/eclipse/jdt/core/IJavaElement;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jdt/core/IPackageFragment;

    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/CreateCompilationUnitOperation;->name:Ljava/lang/String;

    invoke-interface {v0, v1}, Lorg/eclipse/jdt/core/IPackageFragment;->getCompilationUnit(Ljava/lang/String;)Lorg/eclipse/jdt/core/ICompilationUnit;

    move-result-object v0

    return-object v0
.end method

.method public getSchedulingRule()Lorg/eclipse/core/runtime/jobs/ISchedulingRule;
    .locals 3

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/CreateCompilationUnitOperation;->getCompilationUnit()Lorg/eclipse/jdt/core/ICompilationUnit;

    move-result-object v0

    invoke-interface {v0}, Lorg/eclipse/jdt/core/IJavaElement;->getResource()Lorg/eclipse/core/resources/IResource;

    move-result-object v0

    invoke-interface {v0}, Lorg/eclipse/core/resources/IResource;->getWorkspace()Lorg/eclipse/core/resources/IWorkspace;

    move-result-object v1

    invoke-interface {v0}, Lorg/eclipse/core/resources/IResource;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Lorg/eclipse/core/resources/IWorkspace;->getRuleFactory()Lorg/eclipse/core/resources/IResourceRuleFactory;

    move-result-object v1

    invoke-interface {v1, v0}, Lorg/eclipse/core/resources/IResourceRuleFactory;->modifyRule(Lorg/eclipse/core/resources/IResource;)Lorg/eclipse/core/runtime/jobs/ISchedulingRule;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-interface {v1}, Lorg/eclipse/core/resources/IWorkspace;->getRuleFactory()Lorg/eclipse/core/resources/IResourceRuleFactory;

    move-result-object v1

    invoke-interface {v1, v0}, Lorg/eclipse/core/resources/IResourceRuleFactory;->createRule(Lorg/eclipse/core/resources/IResource;)Lorg/eclipse/core/runtime/jobs/ISchedulingRule;

    move-result-object v0

    return-object v0
.end method

.method public verify()Lorg/eclipse/jdt/core/IJavaModelStatus;
    .locals 5

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/JavaModelOperation;->getParentElement()Lorg/eclipse/jdt/core/IJavaElement;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Lorg/eclipse/jdt/internal/core/JavaModelStatus;

    const/16 v1, 0x3c8

    invoke-direct {v0, v1}, Lorg/eclipse/jdt/internal/core/JavaModelStatus;-><init>(I)V

    return-object v0

    :cond_0
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/JavaModelOperation;->getParentElement()Lorg/eclipse/jdt/core/IJavaElement;

    move-result-object v0

    invoke-interface {v0}, Lorg/eclipse/jdt/core/IJavaElement;->getJavaProject()Lorg/eclipse/jdt/core/IJavaProject;

    move-result-object v0

    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/CreateCompilationUnitOperation;->name:Ljava/lang/String;

    const-string v2, "org.eclipse.jdt.core.compiler.source"

    const/4 v3, 0x1

    invoke-interface {v0, v2, v3}, Lorg/eclipse/jdt/core/IJavaProject;->getOption(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    const-string v4, "org.eclipse.jdt.core.compiler.compliance"

    invoke-interface {v0, v4, v3}, Lorg/eclipse/jdt/core/IJavaProject;->getOption(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v2, v0}, Lorg/eclipse/jdt/core/JavaConventions;->validateCompilationUnitName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/eclipse/core/runtime/IStatus;

    move-result-object v0

    invoke-interface {v0}, Lorg/eclipse/core/runtime/IStatus;->getSeverity()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    new-instance v0, Lorg/eclipse/jdt/internal/core/JavaModelStatus;

    const/16 v1, 0x3d7

    iget-object v2, p0, Lorg/eclipse/jdt/internal/core/CreateCompilationUnitOperation;->name:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lorg/eclipse/jdt/internal/core/JavaModelStatus;-><init>(ILjava/lang/String;)V

    return-object v0

    :cond_1
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/CreateCompilationUnitOperation;->source:Ljava/lang/String;

    if-nez v0, :cond_2

    new-instance v0, Lorg/eclipse/jdt/internal/core/JavaModelStatus;

    const/16 v1, 0x3d8

    invoke-direct {v0, v1}, Lorg/eclipse/jdt/internal/core/JavaModelStatus;-><init>(I)V

    return-object v0

    :cond_2
    sget-object v0, Lorg/eclipse/jdt/internal/core/JavaModelStatus;->VERIFIED_OK:Lorg/eclipse/jdt/core/IJavaModelStatus;

    return-object v0
.end method
