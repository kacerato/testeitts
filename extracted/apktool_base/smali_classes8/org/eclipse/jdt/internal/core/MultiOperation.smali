.class public abstract Lorg/eclipse/jdt/internal/core/MultiOperation;
.super Lorg/eclipse/jdt/internal/core/JavaModelOperation;
.source "SourceFile"


# instance fields
.field protected insertBeforeElements:Ljava/util/Map;

.field protected newParents:Ljava/util/Map;

.field protected renamings:Ljava/util/Map;

.field protected renamingsList:[Ljava/lang/String;


# direct methods
.method public constructor <init>([Lorg/eclipse/jdt/core/IJavaElement;Z)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lorg/eclipse/jdt/internal/core/JavaModelOperation;-><init>([Lorg/eclipse/jdt/core/IJavaElement;Z)V

    .line 2
    new-instance p1, Ljava/util/HashMap;

    const/4 p2, 0x1

    invoke-direct {p1, p2}, Ljava/util/HashMap;-><init>(I)V

    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/MultiOperation;->insertBeforeElements:Ljava/util/Map;

    const/4 p1, 0x0

    .line 3
    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/MultiOperation;->renamingsList:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>([Lorg/eclipse/jdt/core/IJavaElement;[Lorg/eclipse/jdt/core/IJavaElement;Z)V
    .locals 4

    .line 4
    invoke-direct {p0, p1, p2, p3}, Lorg/eclipse/jdt/internal/core/JavaModelOperation;-><init>([Lorg/eclipse/jdt/core/IJavaElement;[Lorg/eclipse/jdt/core/IJavaElement;Z)V

    .line 5
    new-instance p3, Ljava/util/HashMap;

    const/4 v0, 0x1

    invoke-direct {p3, v0}, Ljava/util/HashMap;-><init>(I)V

    iput-object p3, p0, Lorg/eclipse/jdt/internal/core/MultiOperation;->insertBeforeElements:Ljava/util/Map;

    const/4 p3, 0x0

    .line 6
    iput-object p3, p0, Lorg/eclipse/jdt/internal/core/MultiOperation;->renamingsList:[Ljava/lang/String;

    .line 7
    new-instance p3, Ljava/util/HashMap;

    array-length v0, p1

    invoke-direct {p3, v0}, Ljava/util/HashMap;-><init>(I)V

    iput-object p3, p0, Lorg/eclipse/jdt/internal/core/MultiOperation;->newParents:Ljava/util/Map;

    .line 8
    array-length p3, p1

    array-length v0, p2

    const/4 v1, 0x0

    if-ne p3, v0, :cond_1

    .line 9
    :goto_0
    array-length p3, p1

    if-lt v1, p3, :cond_0

    goto :goto_2

    .line 10
    :cond_0
    iget-object p3, p0, Lorg/eclipse/jdt/internal/core/MultiOperation;->newParents:Ljava/util/Map;

    aget-object v0, p1, v1

    aget-object v2, p2, v1

    invoke-interface {p3, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    move p3, v1

    .line 11
    :goto_1
    array-length v0, p1

    if-lt p3, v0, :cond_2

    :goto_2
    return-void

    .line 12
    :cond_2
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/MultiOperation;->newParents:Ljava/util/Map;

    aget-object v2, p1, p3

    aget-object v3, p2, v1

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 p3, p3, 0x1

    goto :goto_1
.end method

.method private initializeRenamings()V
    .locals 4

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/MultiOperation;->renamingsList:[Ljava/lang/String;

    if-eqz v0, :cond_2

    array-length v0, v0

    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/JavaModelOperation;->elementsToProcess:[Lorg/eclipse/jdt/core/IJavaElement;

    array-length v1, v1

    if-ne v0, v1, :cond_2

    new-instance v0, Ljava/util/HashMap;

    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/MultiOperation;->renamingsList:[Ljava/lang/String;

    array-length v1, v1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lorg/eclipse/jdt/internal/core/MultiOperation;->renamings:Ljava/util/Map;

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/MultiOperation;->renamingsList:[Ljava/lang/String;

    array-length v2, v1

    if-lt v0, v2, :cond_0

    goto :goto_1

    :cond_0
    aget-object v1, v1, v0

    if-eqz v1, :cond_1

    iget-object v2, p0, Lorg/eclipse/jdt/internal/core/MultiOperation;->renamings:Ljava/util/Map;

    iget-object v3, p0, Lorg/eclipse/jdt/internal/core/JavaModelOperation;->elementsToProcess:[Lorg/eclipse/jdt/core/IJavaElement;

    aget-object v3, v3, v0

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method


# virtual methods
.method public error(ILorg/eclipse/jdt/core/IJavaElement;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/JavaModelException;
        }
    .end annotation

    new-instance v0, Lorg/eclipse/jdt/core/JavaModelException;

    new-instance v1, Lorg/eclipse/jdt/internal/core/JavaModelStatus;

    invoke-direct {v1, p1, p2}, Lorg/eclipse/jdt/internal/core/JavaModelStatus;-><init>(ILorg/eclipse/jdt/core/IJavaElement;)V

    invoke-direct {v0, v1}, Lorg/eclipse/jdt/core/JavaModelException;-><init>(Lorg/eclipse/jdt/core/IJavaModelStatus;)V

    throw v0
.end method

.method public executeOperation()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/JavaModelException;
        }
    .end annotation

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/MultiOperation;->processElements()V

    return-void
.end method

.method public getDestinationParent(Lorg/eclipse/jdt/core/IJavaElement;)Lorg/eclipse/jdt/core/IJavaElement;
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/MultiOperation;->newParents:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/eclipse/jdt/core/IJavaElement;

    return-object p1
.end method

.method public abstract getMainTaskName()Ljava/lang/String;
.end method

.method public getNewNameFor(Lorg/eclipse/jdt/core/IJavaElement;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/JavaModelException;
        }
    .end annotation

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/MultiOperation;->renamings:Ljava/util/Map;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    instance-of v1, p1, Lorg/eclipse/jdt/core/IMethod;

    if-eqz v1, :cond_1

    move-object v1, p1

    check-cast v1, Lorg/eclipse/jdt/core/IMethod;

    invoke-interface {v1}, Lorg/eclipse/jdt/core/IMethod;->isConstructor()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/internal/core/MultiOperation;->getDestinationParent(Lorg/eclipse/jdt/core/IJavaElement;)Lorg/eclipse/jdt/core/IJavaElement;

    move-result-object p1

    invoke-interface {p1}, Lorg/eclipse/jdt/core/IJavaElement;->getElementName()Ljava/lang/String;

    move-result-object v0

    :cond_1
    return-object v0
.end method

.method public isMove()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isRename()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public abstract processElement(Lorg/eclipse/jdt/core/IJavaElement;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/JavaModelException;
        }
    .end annotation
.end method

.method public processElements()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/JavaModelException;
        }
    .end annotation

    :try_start_0
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/MultiOperation;->getMainTaskName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/JavaModelOperation;->elementsToProcess:[Lorg/eclipse/jdt/core/IJavaElement;

    array-length v1, v1

    invoke-virtual {p0, v0, v1}, Lorg/eclipse/jdt/internal/core/JavaModelOperation;->beginTask(Ljava/lang/String;I)V

    const/4 v0, 0x3

    new-array v0, v0, [Lorg/eclipse/jdt/core/IJavaModelStatus;

    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    :goto_0
    iget-object v4, p0, Lorg/eclipse/jdt/internal/core/JavaModelOperation;->elementsToProcess:[Lorg/eclipse/jdt/core/IJavaElement;

    array-length v5, v4

    const/4 v6, 0x1

    if-lt v2, v5, :cond_3

    if-eq v3, v6, :cond_2

    if-le v3, v6, :cond_1

    array-length v2, v0

    if-eq v3, v2, :cond_0

    new-array v2, v3, [Lorg/eclipse/jdt/core/IJavaModelStatus;

    invoke-static {v0, v1, v2, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v0, v2

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_4

    :cond_0
    :goto_1
    new-instance v1, Lorg/eclipse/jdt/core/JavaModelException;

    invoke-static {v0}, Lorg/eclipse/jdt/internal/core/JavaModelStatus;->newMultiStatus([Lorg/eclipse/jdt/core/IJavaModelStatus;)Lorg/eclipse/jdt/core/IJavaModelStatus;

    move-result-object v0

    invoke-direct {v1, v0}, Lorg/eclipse/jdt/core/JavaModelException;-><init>(Lorg/eclipse/jdt/core/IJavaModelStatus;)V

    throw v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/JavaModelOperation;->done()V

    return-void

    :cond_2
    :try_start_1
    new-instance v2, Lorg/eclipse/jdt/core/JavaModelException;

    aget-object v0, v0, v1

    invoke-direct {v2, v0}, Lorg/eclipse/jdt/core/JavaModelException;-><init>(Lorg/eclipse/jdt/core/IJavaModelStatus;)V

    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_3
    :try_start_2
    aget-object v4, v4, v2

    invoke-virtual {p0, v4}, Lorg/eclipse/jdt/internal/core/MultiOperation;->verify(Lorg/eclipse/jdt/core/IJavaElement;)V

    iget-object v4, p0, Lorg/eclipse/jdt/internal/core/JavaModelOperation;->elementsToProcess:[Lorg/eclipse/jdt/core/IJavaElement;

    aget-object v4, v4, v2

    invoke-virtual {p0, v4}, Lorg/eclipse/jdt/internal/core/MultiOperation;->processElement(Lorg/eclipse/jdt/core/IJavaElement;)V
    :try_end_2
    .catch Lorg/eclipse/jdt/core/JavaModelException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    invoke-virtual {p0, v6}, Lorg/eclipse/jdt/internal/core/JavaModelOperation;->worked(I)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_2

    :catchall_1
    move-exception v0

    goto :goto_3

    :catch_0
    move-exception v4

    :try_start_4
    array-length v5, v0

    if-ne v3, v5, :cond_4

    mul-int/lit8 v5, v3, 0x2

    new-array v5, v5, [Lorg/eclipse/jdt/core/IJavaModelStatus;

    invoke-static {v0, v1, v5, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v0, v5

    :cond_4
    add-int/lit8 v5, v3, 0x1

    invoke-virtual {v4}, Lorg/eclipse/jdt/core/JavaModelException;->getJavaModelStatus()Lorg/eclipse/jdt/core/IJavaModelStatus;

    move-result-object v4

    aput-object v4, v0, v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :try_start_5
    invoke-virtual {p0, v6}, Lorg/eclipse/jdt/internal/core/JavaModelOperation;->worked(I)V

    move v3, v5

    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :goto_3
    invoke-virtual {p0, v6}, Lorg/eclipse/jdt/internal/core/JavaModelOperation;->worked(I)V

    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :goto_4
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/JavaModelOperation;->done()V

    throw v0
.end method

.method public setInsertBefore(Lorg/eclipse/jdt/core/IJavaElement;Lorg/eclipse/jdt/core/IJavaElement;)V
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/MultiOperation;->insertBeforeElements:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setRenamings([Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/MultiOperation;->renamingsList:[Ljava/lang/String;

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/core/MultiOperation;->initializeRenamings()V

    return-void
.end method

.method public abstract verify(Lorg/eclipse/jdt/core/IJavaElement;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/JavaModelException;
        }
    .end annotation
.end method

.method public verifyDestination(Lorg/eclipse/jdt/core/IJavaElement;Lorg/eclipse/jdt/core/IJavaElement;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/JavaModelException;
        }
    .end annotation

    if-eqz p2, :cond_0

    invoke-interface {p2}, Lorg/eclipse/jdt/core/IJavaElement;->exists()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/16 v0, 0x3c9

    invoke-virtual {p0, v0, p2}, Lorg/eclipse/jdt/internal/core/MultiOperation;->error(ILorg/eclipse/jdt/core/IJavaElement;)V

    :cond_1
    invoke-interface {p2}, Lorg/eclipse/jdt/core/IJavaElement;->getElementType()I

    move-result v0

    invoke-interface {p1}, Lorg/eclipse/jdt/core/IJavaElement;->getElementType()I

    move-result v1

    const/4 v2, 0x7

    const/4 v3, 0x5

    const/16 v4, 0x3c7

    const/16 v5, 0x3d2

    packed-switch v1, :pswitch_data_0

    :pswitch_0
    invoke-virtual {p0, v4, p1}, Lorg/eclipse/jdt/internal/core/MultiOperation;->error(ILorg/eclipse/jdt/core/IJavaElement;)V

    goto :goto_0

    :pswitch_1
    if-eq v0, v3, :cond_5

    invoke-virtual {p0, v5, p1}, Lorg/eclipse/jdt/internal/core/MultiOperation;->error(ILorg/eclipse/jdt/core/IJavaElement;)V

    goto :goto_0

    :pswitch_2
    if-ne v0, v2, :cond_2

    instance-of p2, p2, Lorg/eclipse/jdt/internal/core/BinaryType;

    if-eqz p2, :cond_5

    :cond_2
    invoke-virtual {p0, v5, p1}, Lorg/eclipse/jdt/internal/core/MultiOperation;->error(ILorg/eclipse/jdt/core/IJavaElement;)V

    goto :goto_0

    :pswitch_3
    if-eq v0, v3, :cond_5

    if-eq v0, v2, :cond_5

    invoke-virtual {p0, v5, p1}, Lorg/eclipse/jdt/internal/core/MultiOperation;->error(ILorg/eclipse/jdt/core/IJavaElement;)V

    goto :goto_0

    :pswitch_4
    const/4 p2, 0x4

    if-eq v0, p2, :cond_3

    invoke-virtual {p0, v5, p1}, Lorg/eclipse/jdt/internal/core/MultiOperation;->error(ILorg/eclipse/jdt/core/IJavaElement;)V

    goto :goto_0

    :cond_3
    move-object p2, p1

    check-cast p2, Lorg/eclipse/jdt/internal/core/CompilationUnit;

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/MultiOperation;->isMove()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/core/CompilationUnit;->isWorkingCopy()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/core/CompilationUnit;->isPrimary()Z

    move-result p2

    if-nez p2, :cond_5

    invoke-virtual {p0, v4, p1}, Lorg/eclipse/jdt/internal/core/MultiOperation;->error(ILorg/eclipse/jdt/core/IJavaElement;)V

    goto :goto_0

    :pswitch_5
    move-object p2, p1

    check-cast p2, Lorg/eclipse/jdt/core/IPackageFragment;

    invoke-interface {p2}, Lorg/eclipse/jdt/core/IJavaElement;->getParent()Lorg/eclipse/jdt/core/IJavaElement;

    move-result-object p2

    invoke-interface {p2}, Lorg/eclipse/jdt/core/IJavaElement;->isReadOnly()Z

    move-result p2

    if-eqz p2, :cond_4

    const/16 p2, 0x3d0

    invoke-virtual {p0, p2, p1}, Lorg/eclipse/jdt/internal/core/MultiOperation;->error(ILorg/eclipse/jdt/core/IJavaElement;)V

    goto :goto_0

    :cond_4
    const/4 p2, 0x3

    if-eq v0, p2, :cond_5

    invoke-virtual {p0, v5, p1}, Lorg/eclipse/jdt/internal/core/MultiOperation;->error(ILorg/eclipse/jdt/core/IJavaElement;)V

    :cond_5
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_5
        :pswitch_4
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public verifyRenaming(Lorg/eclipse/jdt/core/IJavaElement;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/JavaModelException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/internal/core/MultiOperation;->getNewNameFor(Lorg/eclipse/jdt/core/IJavaElement;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1}, Lorg/eclipse/jdt/core/IJavaElement;->getJavaProject()Lorg/eclipse/jdt/core/IJavaProject;

    move-result-object v1

    const-string v2, "org.eclipse.jdt.core.compiler.source"

    const/4 v3, 0x1

    invoke-interface {v1, v2, v3}, Lorg/eclipse/jdt/core/IJavaProject;->getOption(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    const-string v4, "org.eclipse.jdt.core.compiler.compliance"

    invoke-interface {v1, v4, v3}, Lorg/eclipse/jdt/core/IJavaProject;->getOption(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1}, Lorg/eclipse/jdt/core/IJavaElement;->getElementType()I

    move-result v3

    const/4 v4, 0x4

    if-eq v3, v4, :cond_1

    const/4 v5, 0x5

    if-eq v3, v5, :cond_0

    const/16 v5, 0xa

    if-eq v3, v5, :cond_2

    invoke-static {v0, v2, v1}, Lorg/eclipse/jdt/core/JavaConventions;->validateIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/eclipse/core/runtime/IStatus;

    move-result-object v1

    invoke-interface {v1}, Lorg/eclipse/core/runtime/IStatus;->getSeverity()I

    move-result v1

    if-eq v1, v4, :cond_2

    goto :goto_0

    :cond_0
    invoke-static {v0, v2, v1}, Lorg/eclipse/jdt/core/JavaConventions;->validateCompilationUnitName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/eclipse/core/runtime/IStatus;

    move-result-object v1

    invoke-interface {v1}, Lorg/eclipse/core/runtime/IStatus;->getSeverity()I

    move-result v1

    if-eq v1, v4, :cond_2

    goto :goto_0

    :cond_1
    move-object v3, p1

    check-cast v3, Lorg/eclipse/jdt/core/IPackageFragment;

    invoke-interface {v3}, Lorg/eclipse/jdt/core/IPackageFragment;->isDefaultPackage()Z

    move-result v3

    if-nez v3, :cond_3

    invoke-static {v0, v2, v1}, Lorg/eclipse/jdt/core/JavaConventions;->validatePackageName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/eclipse/core/runtime/IStatus;

    move-result-object v1

    invoke-interface {v1}, Lorg/eclipse/core/runtime/IStatus;->getSeverity()I

    move-result v1

    if-eq v1, v4, :cond_2

    :goto_0
    return-void

    :cond_2
    new-instance v1, Lorg/eclipse/jdt/core/JavaModelException;

    new-instance v2, Lorg/eclipse/jdt/internal/core/JavaModelStatus;

    const/16 v3, 0x3d7

    invoke-direct {v2, v3, p1, v0}, Lorg/eclipse/jdt/internal/core/JavaModelStatus;-><init>(ILorg/eclipse/jdt/core/IJavaElement;Ljava/lang/String;)V

    invoke-direct {v1, v2}, Lorg/eclipse/jdt/core/JavaModelException;-><init>(Lorg/eclipse/jdt/core/IJavaModelStatus;)V

    throw v1

    :cond_3
    new-instance v0, Lorg/eclipse/jdt/core/JavaModelException;

    new-instance v1, Lorg/eclipse/jdt/internal/core/JavaModelStatus;

    const/16 v2, 0x3d1

    invoke-direct {v1, v2, p1}, Lorg/eclipse/jdt/internal/core/JavaModelStatus;-><init>(ILorg/eclipse/jdt/core/IJavaElement;)V

    invoke-direct {v0, v1}, Lorg/eclipse/jdt/core/JavaModelException;-><init>(Lorg/eclipse/jdt/core/IJavaModelStatus;)V

    throw v0
.end method

.method public verifySibling(Lorg/eclipse/jdt/core/IJavaElement;Lorg/eclipse/jdt/core/IJavaElement;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/JavaModelException;
        }
    .end annotation

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/MultiOperation;->insertBeforeElements:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/eclipse/jdt/core/IJavaElement;

    if-eqz p1, :cond_1

    invoke-interface {p1}, Lorg/eclipse/jdt/core/IJavaElement;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Lorg/eclipse/jdt/core/IJavaElement;->getParent()Lorg/eclipse/jdt/core/IJavaElement;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_1

    :cond_0
    const/16 p2, 0x3e1

    invoke-virtual {p0, p2, p1}, Lorg/eclipse/jdt/internal/core/MultiOperation;->error(ILorg/eclipse/jdt/core/IJavaElement;)V

    :cond_1
    return-void
.end method
