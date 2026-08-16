.class public Lorg/eclipse/jdt/internal/core/CreatePackageFragmentOperation;
.super Lorg/eclipse/jdt/internal/core/JavaModelOperation;
.source "SourceFile"


# instance fields
.field protected pkgName:[Ljava/lang/String;


# direct methods
.method public constructor <init>(Lorg/eclipse/jdt/core/IPackageFragmentRoot;Ljava/lang/String;Z)V
    .locals 2

    const/4 v0, 0x1

    new-array v0, v0, [Lorg/eclipse/jdt/core/IJavaElement;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 p1, 0x0

    invoke-direct {p0, p1, v0, p3}, Lorg/eclipse/jdt/internal/core/JavaModelOperation;-><init>([Lorg/eclipse/jdt/core/IJavaElement;[Lorg/eclipse/jdt/core/IJavaElement;Z)V

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p2}, Lorg/eclipse/jdt/internal/core/util/Util;->getTrimmedSimpleNames(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/CreatePackageFragmentOperation;->pkgName:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public executeOperation()V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/JavaModelException;
        }
    .end annotation

    :try_start_0
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/JavaModelOperation;->getParentElement()Lorg/eclipse/jdt/core/IJavaElement;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jdt/internal/core/PackageFragmentRoot;

    sget-object v1, Lorg/eclipse/jdt/internal/core/util/Messages;->operation_createPackageFragmentProgress:Ljava/lang/String;

    iget-object v2, p0, Lorg/eclipse/jdt/internal/core/CreatePackageFragmentOperation;->pkgName:[Ljava/lang/String;

    array-length v2, v2

    invoke-virtual {p0, v1, v2}, Lorg/eclipse/jdt/internal/core/JavaModelOperation;->beginTask(Ljava/lang/String;I)V

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/core/PackageFragmentRoot;->resource()Lorg/eclipse/core/resources/IResource;

    move-result-object v1

    check-cast v1, Lorg/eclipse/core/resources/IContainer;

    sget-object v2, Lorg/eclipse/jdt/core/compiler/CharOperation;->NO_STRINGS:[Ljava/lang/String;

    new-instance v3, Ljava/util/ArrayList;

    iget-object v4, p0, Lorg/eclipse/jdt/internal/core/CreatePackageFragmentOperation;->pkgName:[Ljava/lang/String;

    array-length v4, v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/core/PackageFragmentRoot;->fullInclusionPatternChars()[[C

    move-result-object v4

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/core/PackageFragmentRoot;->fullExclusionPatternChars()[[C

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    :goto_0
    iget-object v8, p0, Lorg/eclipse/jdt/internal/core/CreatePackageFragmentOperation;->pkgName:[Ljava/lang/String;

    array-length v9, v8

    if-lt v7, v9, :cond_1

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Lorg/eclipse/jdt/core/IJavaElement;

    iput-object v0, p0, Lorg/eclipse/jdt/internal/core/JavaModelOperation;->resultElements:[Lorg/eclipse/jdt/core/IJavaElement;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    if-eqz v6, :cond_0

    invoke-virtual {p0, v6}, Lorg/eclipse/jdt/internal/core/JavaModelOperation;->addDelta(Lorg/eclipse/jdt/core/IJavaElementDelta;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_3

    :cond_0
    :goto_1
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/JavaModelOperation;->done()V

    return-void

    :cond_1
    :try_start_1
    aget-object v8, v8, v7

    invoke-static {v2, v8}, Lorg/eclipse/jdt/internal/core/util/Util;->arrayConcat([Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v8}, Lorg/eclipse/core/resources/IContainer;->findMember(Ljava/lang/String;)Lorg/eclipse/core/resources/IResource;

    move-result-object v9

    if-nez v9, :cond_4

    iget-boolean v9, p0, Lorg/eclipse/jdt/internal/core/JavaModelOperation;->force:Z

    invoke-virtual {p0, v1, v8, v9}, Lorg/eclipse/jdt/internal/core/JavaModelOperation;->createFolder(Lorg/eclipse/core/resources/IContainer;Ljava/lang/String;Z)V

    new-instance v9, Lorg/eclipse/core/runtime/Path;

    invoke-direct {v9, v8}, Lorg/eclipse/core/runtime/Path;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, v9}, Lorg/eclipse/core/resources/IContainer;->getFolder(Lorg/eclipse/core/runtime/IPath;)Lorg/eclipse/core/resources/IFolder;

    move-result-object v1

    invoke-virtual {v0, v2}, Lorg/eclipse/jdt/internal/core/PackageFragmentRoot;->getPackageFragment([Ljava/lang/String;)Lorg/eclipse/jdt/internal/core/PackageFragment;

    move-result-object v8

    invoke-static {v1, v4, v5}, Lorg/eclipse/jdt/internal/core/util/Util;->isExcluded(Lorg/eclipse/core/resources/IResource;[[C[[C)Z

    move-result v9

    if-nez v9, :cond_3

    if-nez v6, :cond_2

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/JavaModelOperation;->newJavaElementDelta()Lorg/eclipse/jdt/internal/core/JavaElementDelta;

    move-result-object v6

    :cond_2
    invoke-virtual {v6, v8}, Lorg/eclipse/jdt/internal/core/JavaElementDelta;->added(Lorg/eclipse/jdt/core/IJavaElement;)V

    :cond_3
    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_4
    check-cast v9, Lorg/eclipse/core/resources/IContainer;

    move-object v1, v9

    :goto_2
    const/4 v8, 0x1

    invoke-virtual {p0, v8}, Lorg/eclipse/jdt/internal/core/JavaModelOperation;->worked(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :goto_3
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/JavaModelOperation;->done()V

    throw v0
.end method

.method public getSchedulingRule()Lorg/eclipse/core/runtime/jobs/ISchedulingRule;
    .locals 4

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/CreatePackageFragmentOperation;->pkgName:[Ljava/lang/String;

    array-length v0, v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/JavaModelOperation;->getParentElement()Lorg/eclipse/jdt/core/IJavaElement;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jdt/internal/core/JavaElement;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/core/JavaElement;->resource()Lorg/eclipse/core/resources/IResource;

    move-result-object v0

    check-cast v0, Lorg/eclipse/core/resources/IContainer;

    new-instance v1, Lorg/eclipse/core/runtime/Path;

    iget-object v2, p0, Lorg/eclipse/jdt/internal/core/CreatePackageFragmentOperation;->pkgName:[Ljava/lang/String;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    invoke-direct {v1, v2}, Lorg/eclipse/core/runtime/Path;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lorg/eclipse/core/resources/IContainer;->getFolder(Lorg/eclipse/core/runtime/IPath;)Lorg/eclipse/core/resources/IFolder;

    move-result-object v0

    invoke-interface {v0}, Lorg/eclipse/core/resources/IResource;->getWorkspace()Lorg/eclipse/core/resources/IWorkspace;

    move-result-object v1

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
    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/CreatePackageFragmentOperation;->pkgName:[Ljava/lang/String;

    if-nez v1, :cond_1

    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    const/16 v2, 0x2e

    invoke-static {v1, v2}, Lorg/eclipse/jdt/internal/core/util/Util;->concatWith([Ljava/lang/String;C)Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-interface {v0}, Lorg/eclipse/jdt/core/IJavaElement;->getJavaProject()Lorg/eclipse/jdt/core/IJavaProject;

    move-result-object v0

    iget-object v2, p0, Lorg/eclipse/jdt/internal/core/CreatePackageFragmentOperation;->pkgName:[Ljava/lang/String;

    if-eqz v2, :cond_7

    array-length v2, v2

    if-lez v2, :cond_2

    const-string v2, "org.eclipse.jdt.core.compiler.source"

    const/4 v3, 0x1

    invoke-interface {v0, v2, v3}, Lorg/eclipse/jdt/core/IJavaProject;->getOption(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    const-string v4, "org.eclipse.jdt.core.compiler.compliance"

    invoke-interface {v0, v4, v3}, Lorg/eclipse/jdt/core/IJavaProject;->getOption(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v2, v0}, Lorg/eclipse/jdt/core/JavaConventions;->validatePackageName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/eclipse/core/runtime/IStatus;

    move-result-object v0

    invoke-interface {v0}, Lorg/eclipse/core/runtime/IStatus;->getSeverity()I

    move-result v0

    const/4 v2, 0x4

    if-ne v0, v2, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/JavaModelOperation;->getParentElement()Lorg/eclipse/jdt/core/IJavaElement;

    move-result-object v0

    invoke-interface {v0}, Lorg/eclipse/jdt/core/IJavaElement;->isReadOnly()Z

    move-result v1

    if-eqz v1, :cond_3

    new-instance v1, Lorg/eclipse/jdt/internal/core/JavaModelStatus;

    const/16 v2, 0x3d0

    invoke-direct {v1, v2, v0}, Lorg/eclipse/jdt/internal/core/JavaModelStatus;-><init>(ILorg/eclipse/jdt/core/IJavaElement;)V

    return-object v1

    :cond_3
    check-cast v0, Lorg/eclipse/jdt/internal/core/JavaElement;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/core/JavaElement;->resource()Lorg/eclipse/core/resources/IResource;

    move-result-object v0

    check-cast v0, Lorg/eclipse/core/resources/IContainer;

    const/4 v1, 0x0

    :goto_1
    iget-object v2, p0, Lorg/eclipse/jdt/internal/core/CreatePackageFragmentOperation;->pkgName:[Ljava/lang/String;

    array-length v3, v2

    if-lt v1, v3, :cond_4

    sget-object v0, Lorg/eclipse/jdt/internal/core/JavaModelStatus;->VERIFIED_OK:Lorg/eclipse/jdt/core/IJavaModelStatus;

    return-object v0

    :cond_4
    aget-object v2, v2, v1

    invoke-interface {v0, v2}, Lorg/eclipse/core/resources/IContainer;->findMember(Ljava/lang/String;)Lorg/eclipse/core/resources/IResource;

    move-result-object v2

    if-eqz v2, :cond_6

    invoke-interface {v2}, Lorg/eclipse/core/resources/IResource;->getType()I

    move-result v0

    const/4 v3, 0x2

    if-eq v0, v3, :cond_5

    new-instance v0, Lorg/eclipse/jdt/internal/core/JavaModelStatus;

    sget-object v1, Lorg/eclipse/jdt/internal/core/util/Messages;->status_nameCollision:Ljava/lang/String;

    invoke-interface {v2}, Lorg/eclipse/core/resources/IResource;->getFullPath()Lorg/eclipse/core/runtime/IPath;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/eclipse/jdt/internal/core/util/Messages;->bind(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x3d1

    invoke-direct {v0, v2, v1}, Lorg/eclipse/jdt/internal/core/JavaModelStatus;-><init>(ILjava/lang/String;)V

    return-object v0

    :cond_5
    check-cast v2, Lorg/eclipse/core/resources/IContainer;

    move-object v0, v2

    :cond_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_7
    :goto_2
    new-instance v0, Lorg/eclipse/jdt/internal/core/JavaModelStatus;

    const/16 v2, 0x3d7

    invoke-direct {v0, v2, v1}, Lorg/eclipse/jdt/internal/core/JavaModelStatus;-><init>(ILjava/lang/String;)V

    return-object v0
.end method
