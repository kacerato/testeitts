.class public Lorg/eclipse/jdt/internal/core/DeleteResourceElementsOperation;
.super Lorg/eclipse/jdt/internal/core/MultiOperation;
.source "SourceFile"


# direct methods
.method public constructor <init>([Lorg/eclipse/jdt/core/IJavaElement;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/eclipse/jdt/internal/core/MultiOperation;-><init>([Lorg/eclipse/jdt/core/IJavaElement;Z)V

    return-void
.end method

.method private deletePackageFragment(Lorg/eclipse/jdt/core/IPackageFragment;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/JavaModelException;
        }
    .end annotation

    move-object v0, p1

    check-cast v0, Lorg/eclipse/jdt/internal/core/JavaElement;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/core/JavaElement;->resource()Lorg/eclipse/core/resources/IResource;

    move-result-object v0

    if-eqz v0, :cond_8

    invoke-interface {p1}, Lorg/eclipse/jdt/core/IParent;->getChildren()[Lorg/eclipse/jdt/core/IJavaElement;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    if-lez v2, :cond_1

    array-length v2, v1

    new-array v2, v2, [Lorg/eclipse/core/resources/IResource;

    move v4, v3

    :goto_0
    array-length v5, v1

    if-lt v4, v5, :cond_0

    iget-boolean v1, p0, Lorg/eclipse/jdt/internal/core/JavaModelOperation;->force:Z

    invoke-virtual {p0, v2, v1}, Lorg/eclipse/jdt/internal/core/JavaModelOperation;->deleteResources([Lorg/eclipse/core/resources/IResource;Z)V

    goto :goto_1

    :cond_0
    aget-object v5, v1, v4

    check-cast v5, Lorg/eclipse/jdt/internal/core/JavaElement;

    invoke-virtual {v5}, Lorg/eclipse/jdt/internal/core/JavaElement;->resource()Lorg/eclipse/core/resources/IResource;

    move-result-object v5

    aput-object v5, v2, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    invoke-interface {p1}, Lorg/eclipse/jdt/core/IPackageFragment;->getNonJavaResources()[Ljava/lang/Object;

    move-result-object v1

    array-length v2, v1

    move v4, v3

    move v5, v4

    :goto_2
    if-lt v4, v2, :cond_6

    new-array v6, v5, [Lorg/eclipse/core/resources/IResource;

    array-length v7, v1

    move v2, v3

    move v4, v2

    :goto_3
    if-lt v2, v7, :cond_4

    iget-boolean v1, p0, Lorg/eclipse/jdt/internal/core/JavaModelOperation;->force:Z

    invoke-virtual {p0, v6, v1}, Lorg/eclipse/jdt/internal/core/JavaModelOperation;->deleteResources([Lorg/eclipse/core/resources/IResource;Z)V

    :try_start_0
    check-cast v0, Lorg/eclipse/core/resources/IContainer;

    invoke-interface {v0}, Lorg/eclipse/core/resources/IContainer;->members()[Lorg/eclipse/core/resources/IResource;

    move-result-object v0
    :try_end_0
    .catch Lorg/eclipse/core/runtime/CoreException; {:try_start_0 .. :try_end_0} :catch_0

    array-length v1, v0

    const/4 v2, 0x1

    move v4, v3

    :goto_4
    if-lt v4, v1, :cond_2

    if-eqz v2, :cond_8

    invoke-interface {p1}, Lorg/eclipse/jdt/core/IPackageFragment;->isDefaultPackage()Z

    move-result v0

    if-nez v0, :cond_8

    move-object v0, p1

    check-cast v0, Lorg/eclipse/jdt/internal/core/JavaElement;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/core/JavaElement;->resource()Lorg/eclipse/core/resources/IResource;

    move-result-object v0

    if-eqz v0, :cond_8

    invoke-interface {v0}, Lorg/eclipse/core/resources/IResource;->getParent()Lorg/eclipse/core/resources/IContainer;

    move-result-object v0

    invoke-virtual {p0, p1, v3, v0}, Lorg/eclipse/jdt/internal/core/JavaModelOperation;->deleteEmptyPackageFragment(Lorg/eclipse/jdt/core/IPackageFragment;ZLorg/eclipse/core/resources/IResource;)V

    goto :goto_6

    :cond_2
    aget-object v5, v0, v4

    instance-of v6, v5, Lorg/eclipse/core/resources/IFile;

    if-eqz v6, :cond_3

    invoke-interface {v5}, Lorg/eclipse/core/resources/IResource;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lorg/eclipse/jdt/internal/compiler/util/Util;->isClassFileName(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    const/4 v6, 0x3

    invoke-virtual {p0, v5, v6}, Lorg/eclipse/jdt/internal/core/JavaModelOperation;->deleteResource(Lorg/eclipse/core/resources/IResource;I)V

    goto :goto_5

    :cond_3
    move v2, v3

    :goto_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    :catch_0
    move-exception p1

    new-instance v0, Lorg/eclipse/jdt/core/JavaModelException;

    invoke-direct {v0, p1}, Lorg/eclipse/jdt/core/JavaModelException;-><init>(Lorg/eclipse/core/runtime/CoreException;)V

    throw v0

    :cond_4
    aget-object v5, v1, v2

    instance-of v8, v5, Lorg/eclipse/core/resources/IResource;

    if-eqz v8, :cond_5

    add-int/lit8 v8, v4, 0x1

    check-cast v5, Lorg/eclipse/core/resources/IResource;

    aput-object v5, v6, v4

    move v4, v8

    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_6
    aget-object v6, v1, v4

    instance-of v6, v6, Lorg/eclipse/core/resources/IResource;

    if-eqz v6, :cond_7

    add-int/lit8 v5, v5, 0x1

    :cond_7
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_8
    :goto_6
    return-void
.end method


# virtual methods
.method public getMainTaskName()Ljava/lang/String;
    .locals 1

    sget-object v0, Lorg/eclipse/jdt/internal/core/util/Messages;->operation_deleteResourceProgress:Ljava/lang/String;

    return-object v0
.end method

.method public processElement(Lorg/eclipse/jdt/core/IJavaElement;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/JavaModelException;
        }
    .end annotation

    invoke-interface {p1}, Lorg/eclipse/jdt/core/IJavaElement;->getElementType()I

    move-result v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_3

    const/4 v1, 0x5

    if-eq v0, v1, :cond_1

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Lorg/eclipse/jdt/core/JavaModelException;

    new-instance v1, Lorg/eclipse/jdt/internal/core/JavaModelStatus;

    const/16 v2, 0x3c7

    invoke-direct {v1, v2, p1}, Lorg/eclipse/jdt/internal/core/JavaModelStatus;-><init>(ILorg/eclipse/jdt/core/IJavaElement;)V

    invoke-direct {v0, v1}, Lorg/eclipse/jdt/core/JavaModelException;-><init>(Lorg/eclipse/jdt/core/IJavaModelStatus;)V

    throw v0

    :cond_1
    :goto_0
    invoke-interface {p1}, Lorg/eclipse/jdt/core/IJavaElement;->getResource()Lorg/eclipse/core/resources/IResource;

    move-result-object v0

    iget-boolean v1, p0, Lorg/eclipse/jdt/internal/core/JavaModelOperation;->force:Z

    if-eqz v1, :cond_2

    const/4 v1, 0x3

    goto :goto_1

    :cond_2
    const/4 v1, 0x2

    :goto_1
    invoke-virtual {p0, v0, v1}, Lorg/eclipse/jdt/internal/core/JavaModelOperation;->deleteResource(Lorg/eclipse/core/resources/IResource;I)V

    goto :goto_2

    :cond_3
    move-object v0, p1

    check-cast v0, Lorg/eclipse/jdt/core/IPackageFragment;

    invoke-direct {p0, v0}, Lorg/eclipse/jdt/internal/core/DeleteResourceElementsOperation;->deletePackageFragment(Lorg/eclipse/jdt/core/IPackageFragment;)V

    :goto_2
    instance-of v0, p1, Lorg/eclipse/jdt/core/IOpenable;

    if-eqz v0, :cond_4

    check-cast p1, Lorg/eclipse/jdt/core/IOpenable;

    invoke-interface {p1}, Lorg/eclipse/jdt/core/IOpenable;->close()V

    :cond_4
    return-void
.end method

.method public verify(Lorg/eclipse/jdt/core/IJavaElement;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/JavaModelException;
        }
    .end annotation

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lorg/eclipse/jdt/core/IJavaElement;->exists()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/16 v0, 0x3c9

    invoke-virtual {p0, v0, p1}, Lorg/eclipse/jdt/internal/core/MultiOperation;->error(ILorg/eclipse/jdt/core/IJavaElement;)V

    :cond_1
    invoke-interface {p1}, Lorg/eclipse/jdt/core/IJavaElement;->getElementType()I

    move-result v0

    const/4 v1, 0x3

    const/16 v2, 0x3c7

    if-le v0, v1, :cond_3

    const/4 v1, 0x5

    if-le v0, v1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v1, 0x4

    if-ne v0, v1, :cond_4

    instance-of v0, p1, Lorg/eclipse/jdt/internal/core/JarPackageFragment;

    if-eqz v0, :cond_4

    invoke-virtual {p0, v2, p1}, Lorg/eclipse/jdt/internal/core/MultiOperation;->error(ILorg/eclipse/jdt/core/IJavaElement;)V

    goto :goto_1

    :cond_3
    :goto_0
    invoke-virtual {p0, v2, p1}, Lorg/eclipse/jdt/internal/core/MultiOperation;->error(ILorg/eclipse/jdt/core/IJavaElement;)V

    :cond_4
    :goto_1
    move-object v0, p1

    check-cast v0, Lorg/eclipse/jdt/internal/core/JavaElement;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/core/JavaElement;->resource()Lorg/eclipse/core/resources/IResource;

    move-result-object v0

    instance-of v1, v0, Lorg/eclipse/core/resources/IFolder;

    if-eqz v1, :cond_5

    invoke-interface {v0}, Lorg/eclipse/core/resources/IResource;->isLinked()Z

    move-result v0

    if-eqz v0, :cond_5

    const/16 v0, 0x3e3

    invoke-virtual {p0, v0, p1}, Lorg/eclipse/jdt/internal/core/MultiOperation;->error(ILorg/eclipse/jdt/core/IJavaElement;)V

    :cond_5
    return-void
.end method
