.class public Lorg/eclipse/jdt/internal/core/CopyElementsOperation;
.super Lorg/eclipse/jdt/internal/core/MultiOperation;
.source "SourceFile"

# interfaces
.implements Lorg/eclipse/jdt/internal/compiler/util/SuffixConstants;


# instance fields
.field private sources:Ljava/util/Map;


# direct methods
.method public constructor <init>([Lorg/eclipse/jdt/core/IJavaElement;Lorg/eclipse/jdt/core/IJavaElement;Z)V
    .locals 2

    const/4 v0, 0x1

    .line 3
    new-array v0, v0, [Lorg/eclipse/jdt/core/IJavaElement;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    invoke-direct {p0, p1, v0, p3}, Lorg/eclipse/jdt/internal/core/CopyElementsOperation;-><init>([Lorg/eclipse/jdt/core/IJavaElement;[Lorg/eclipse/jdt/core/IJavaElement;Z)V

    return-void
.end method

.method public constructor <init>([Lorg/eclipse/jdt/core/IJavaElement;[Lorg/eclipse/jdt/core/IJavaElement;Z)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lorg/eclipse/jdt/internal/core/MultiOperation;-><init>([Lorg/eclipse/jdt/core/IJavaElement;[Lorg/eclipse/jdt/core/IJavaElement;Z)V

    .line 2
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/CopyElementsOperation;->sources:Ljava/util/Map;

    return-void
.end method

.method private getSourceFor(Lorg/eclipse/jdt/core/IJavaElement;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/JavaModelException;
        }
    .end annotation

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/CopyElementsOperation;->sources:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-nez v0, :cond_0

    instance-of v1, p1, Lorg/eclipse/jdt/core/IMember;

    if-eqz v1, :cond_0

    move-object v0, p1

    check-cast v0, Lorg/eclipse/jdt/core/IMember;

    invoke-interface {v0}, Lorg/eclipse/jdt/core/ISourceReference;->getSource()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/CopyElementsOperation;->sources:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object v0
.end method

.method private resolveRenameAnchor(Lorg/eclipse/jdt/core/IJavaElement;)Lorg/eclipse/jdt/core/IJavaElement;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/JavaModelException;
        }
    .end annotation

    invoke-interface {p1}, Lorg/eclipse/jdt/core/IJavaElement;->getParent()Lorg/eclipse/jdt/core/IJavaElement;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jdt/core/IParent;

    invoke-interface {v0}, Lorg/eclipse/jdt/core/IParent;->getChildren()[Lorg/eclipse/jdt/core/IJavaElement;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    array-length v2, v0

    if-lt v1, v2, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    aget-object v2, v0, v1

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    return-object v2

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method


# virtual methods
.method public getMainTaskName()Ljava/lang/String;
    .locals 1

    sget-object v0, Lorg/eclipse/jdt/internal/core/util/Messages;->operation_copyElementProgress:Ljava/lang/String;

    return-object v0
.end method

.method public getNestedOperation(Lorg/eclipse/jdt/core/IJavaElement;)Lorg/eclipse/jdt/internal/core/JavaModelOperation;
    .locals 7

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/internal/core/MultiOperation;->getDestinationParent(Lorg/eclipse/jdt/core/IJavaElement;)Lorg/eclipse/jdt/core/IJavaElement;

    move-result-object v3

    invoke-interface {p1}, Lorg/eclipse/jdt/core/IJavaElement;->getElementType()I

    move-result v4

    packed-switch v4, :pswitch_data_0

    :pswitch_0
    return-object v2

    :pswitch_1
    move-object v0, p1

    check-cast v0, Lorg/eclipse/jdt/core/IImportDeclaration;

    new-instance v1, Lorg/eclipse/jdt/internal/core/CreateImportOperation;

    invoke-interface {p1}, Lorg/eclipse/jdt/core/IJavaElement;->getElementName()Ljava/lang/String;

    move-result-object p1

    check-cast v3, Lorg/eclipse/jdt/core/ICompilationUnit;

    invoke-interface {v0}, Lorg/eclipse/jdt/core/IImportDeclaration;->getFlags()I

    move-result v0

    invoke-direct {v1, p1, v3, v0}, Lorg/eclipse/jdt/internal/core/CreateImportOperation;-><init>(Ljava/lang/String;Lorg/eclipse/jdt/core/ICompilationUnit;I)V

    return-object v1

    :pswitch_2
    new-instance v0, Lorg/eclipse/jdt/internal/core/CreatePackageDeclarationOperation;

    invoke-interface {p1}, Lorg/eclipse/jdt/core/IJavaElement;->getElementName()Ljava/lang/String;

    move-result-object p1

    check-cast v3, Lorg/eclipse/jdt/core/ICompilationUnit;

    invoke-direct {v0, p1, v3}, Lorg/eclipse/jdt/internal/core/CreatePackageDeclarationOperation;-><init>(Ljava/lang/String;Lorg/eclipse/jdt/core/ICompilationUnit;)V

    return-object v0

    :pswitch_3
    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/core/CopyElementsOperation;->getSourceFor(Lorg/eclipse/jdt/core/IJavaElement;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1}, Lorg/eclipse/jdt/core/IJavaElement;->getJavaProject()Lorg/eclipse/jdt/core/IJavaProject;

    move-result-object p1

    invoke-static {v0, p1}, Lorg/eclipse/jdt/internal/core/util/Util;->getLineSeparator(Ljava/lang/String;Lorg/eclipse/jdt/core/IJavaProject;)Ljava/lang/String;

    move-result-object p1

    new-instance v1, Lorg/eclipse/jdt/internal/core/CreateInitializerOperation;

    check-cast v3, Lorg/eclipse/jdt/core/IType;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, v3, p1}, Lorg/eclipse/jdt/internal/core/CreateInitializerOperation;-><init>(Lorg/eclipse/jdt/core/IType;Ljava/lang/String;)V

    return-object v1

    :pswitch_4
    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/core/CopyElementsOperation;->getSourceFor(Lorg/eclipse/jdt/core/IJavaElement;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1}, Lorg/eclipse/jdt/core/IJavaElement;->getJavaProject()Lorg/eclipse/jdt/core/IJavaProject;

    move-result-object p1

    invoke-static {v0, p1}, Lorg/eclipse/jdt/internal/core/util/Util;->getLineSeparator(Ljava/lang/String;Lorg/eclipse/jdt/core/IJavaProject;)Ljava/lang/String;

    move-result-object p1

    new-instance v1, Lorg/eclipse/jdt/internal/core/CreateMethodOperation;

    check-cast v3, Lorg/eclipse/jdt/core/IType;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iget-boolean v0, p0, Lorg/eclipse/jdt/internal/core/JavaModelOperation;->force:Z

    invoke-direct {v1, v3, p1, v0}, Lorg/eclipse/jdt/internal/core/CreateMethodOperation;-><init>(Lorg/eclipse/jdt/core/IType;Ljava/lang/String;Z)V

    return-object v1

    :pswitch_5
    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/core/CopyElementsOperation;->getSourceFor(Lorg/eclipse/jdt/core/IJavaElement;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1}, Lorg/eclipse/jdt/core/IJavaElement;->getJavaProject()Lorg/eclipse/jdt/core/IJavaProject;

    move-result-object p1

    invoke-static {v0, p1}, Lorg/eclipse/jdt/internal/core/util/Util;->getLineSeparator(Ljava/lang/String;Lorg/eclipse/jdt/core/IJavaProject;)Ljava/lang/String;

    move-result-object p1

    new-instance v1, Lorg/eclipse/jdt/internal/core/CreateFieldOperation;

    check-cast v3, Lorg/eclipse/jdt/core/IType;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iget-boolean v0, p0, Lorg/eclipse/jdt/internal/core/JavaModelOperation;->force:Z

    invoke-direct {v1, v3, p1, v0}, Lorg/eclipse/jdt/internal/core/CreateFieldOperation;-><init>(Lorg/eclipse/jdt/core/IType;Ljava/lang/String;Z)V

    return-object v1

    :pswitch_6
    invoke-virtual {p0, p1, v3}, Lorg/eclipse/jdt/internal/core/CopyElementsOperation;->isRenamingMainType(Lorg/eclipse/jdt/core/IJavaElement;Lorg/eclipse/jdt/core/IJavaElement;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {p1}, Lorg/eclipse/jdt/core/IJavaElement;->getPath()Lorg/eclipse/core/runtime/IPath;

    move-result-object v4

    invoke-interface {v4}, Lorg/eclipse/core/runtime/IPath;->getFileExtension()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lorg/eclipse/jdt/internal/core/RenameResourceElementsOperation;

    new-array v6, v1, [Lorg/eclipse/jdt/core/IJavaElement;

    aput-object v3, v6, v0

    invoke-interface {v3}, Lorg/eclipse/jdt/core/IJavaElement;->getParent()Lorg/eclipse/jdt/core/IJavaElement;

    move-result-object v3

    new-array v1, v1, [Lorg/eclipse/jdt/core/IJavaElement;

    aput-object v3, v1, v0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/internal/core/MultiOperation;->getNewNameFor(Lorg/eclipse/jdt/core/IJavaElement;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 p1, 0x2e

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    iget-boolean v0, p0, Lorg/eclipse/jdt/internal/core/JavaModelOperation;->force:Z

    invoke-direct {v5, v6, v1, p1, v0}, Lorg/eclipse/jdt/internal/core/RenameResourceElementsOperation;-><init>([Lorg/eclipse/jdt/core/IJavaElement;[Lorg/eclipse/jdt/core/IJavaElement;[Ljava/lang/String;Z)V

    return-object v5

    :cond_0
    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/core/CopyElementsOperation;->getSourceFor(Lorg/eclipse/jdt/core/IJavaElement;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1}, Lorg/eclipse/jdt/core/IJavaElement;->getJavaProject()Lorg/eclipse/jdt/core/IJavaProject;

    move-result-object p1

    invoke-static {v0, p1}, Lorg/eclipse/jdt/internal/core/util/Util;->getLineSeparator(Ljava/lang/String;Lorg/eclipse/jdt/core/IJavaProject;)Ljava/lang/String;

    move-result-object p1

    new-instance v1, Lorg/eclipse/jdt/internal/core/CreateTypeOperation;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iget-boolean v0, p0, Lorg/eclipse/jdt/internal/core/JavaModelOperation;->force:Z

    invoke-direct {v1, v3, p1, v0}, Lorg/eclipse/jdt/internal/core/CreateTypeOperation;-><init>(Lorg/eclipse/jdt/core/IJavaElement;Ljava/lang/String;Z)V
    :try_end_0
    .catch Lorg/eclipse/jdt/core/JavaModelException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    return-object v2

    :pswitch_data_0
    .packed-switch 0x7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public isRenamingMainType(Lorg/eclipse/jdt/core/IJavaElement;Lorg/eclipse/jdt/core/IJavaElement;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/JavaModelException;
        }
    .end annotation

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/MultiOperation;->isRename()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/internal/core/MultiOperation;->getNewNameFor(Lorg/eclipse/jdt/core/IJavaElement;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    :cond_0
    invoke-interface {p2}, Lorg/eclipse/jdt/core/IJavaElement;->getElementType()I

    move-result v0

    const/4 v2, 0x5

    if-ne v0, v2, :cond_1

    invoke-interface {p2}, Lorg/eclipse/jdt/core/IJavaElement;->getElementName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/eclipse/jdt/internal/core/util/Util;->getNameWithoutJavaLikeExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1}, Lorg/eclipse/jdt/core/IJavaElement;->getElementName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Lorg/eclipse/jdt/core/IJavaElement;->getParent()Lorg/eclipse/jdt/core/IJavaElement;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    return v1
.end method

.method public processElement(Lorg/eclipse/jdt/core/IJavaElement;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/JavaModelException;
        }
    .end annotation

    const/4 v0, 0x1

    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/internal/core/CopyElementsOperation;->getNestedOperation(Lorg/eclipse/jdt/core/IJavaElement;)Lorg/eclipse/jdt/internal/core/JavaModelOperation;

    move-result-object v1

    instance-of v2, v1, Lorg/eclipse/jdt/internal/core/CreateElementInCUOperation;

    if-nez v1, :cond_0

    return-void

    :cond_0
    if-eqz v2, :cond_3

    iget-object v3, p0, Lorg/eclipse/jdt/internal/core/MultiOperation;->insertBeforeElements:Ljava/util/Map;

    invoke-interface {v3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/eclipse/jdt/core/IJavaElement;

    if-eqz v3, :cond_1

    move-object v4, v1

    check-cast v4, Lorg/eclipse/jdt/internal/core/CreateElementInCUOperation;

    const/4 v5, 0x3

    invoke-virtual {v4, v3, v5}, Lorg/eclipse/jdt/internal/core/CreateElementInCUOperation;->setRelativePosition(Lorg/eclipse/jdt/core/IJavaElement;I)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/MultiOperation;->isRename()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/core/CopyElementsOperation;->resolveRenameAnchor(Lorg/eclipse/jdt/core/IJavaElement;)Lorg/eclipse/jdt/core/IJavaElement;

    move-result-object v3

    if-eqz v3, :cond_2

    move-object v4, v1

    check-cast v4, Lorg/eclipse/jdt/internal/core/CreateElementInCUOperation;

    const/4 v5, 0x2

    invoke-virtual {v4, v3, v5}, Lorg/eclipse/jdt/internal/core/CreateElementInCUOperation;->setRelativePosition(Lorg/eclipse/jdt/core/IJavaElement;I)V

    :cond_2
    :goto_0
    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/internal/core/MultiOperation;->getNewNameFor(Lorg/eclipse/jdt/core/IJavaElement;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_3

    move-object v4, v1

    check-cast v4, Lorg/eclipse/jdt/internal/core/CreateElementInCUOperation;

    invoke-virtual {v4, v3}, Lorg/eclipse/jdt/internal/core/CreateElementInCUOperation;->setAlteredName(Ljava/lang/String;)V

    :cond_3
    invoke-virtual {p0, v1, v0}, Lorg/eclipse/jdt/internal/core/JavaModelOperation;->executeNestedOperation(Lorg/eclipse/jdt/internal/core/JavaModelOperation;I)V

    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/internal/core/MultiOperation;->getDestinationParent(Lorg/eclipse/jdt/core/IJavaElement;)Lorg/eclipse/jdt/core/IJavaElement;

    move-result-object v1

    check-cast v1, Lorg/eclipse/jdt/internal/core/JavaElement;

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/core/JavaElement;->getCompilationUnit()Lorg/eclipse/jdt/core/ICompilationUnit;

    move-result-object v3

    invoke-interface {v3}, Lorg/eclipse/jdt/core/ICompilationUnit;->isWorkingCopy()Z

    move-result v4

    if-nez v4, :cond_4

    invoke-interface {v3}, Lorg/eclipse/jdt/core/IOpenable;->close()V

    :cond_4
    if-eqz v2, :cond_5

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/MultiOperation;->isMove()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-virtual {p0, p1, v1}, Lorg/eclipse/jdt/internal/core/CopyElementsOperation;->isRenamingMainType(Lorg/eclipse/jdt/core/IJavaElement;Lorg/eclipse/jdt/core/IJavaElement;)Z

    move-result v1

    if-nez v1, :cond_5

    new-instance v1, Lorg/eclipse/jdt/internal/core/DeleteElementsOperation;

    new-array v2, v0, [Lorg/eclipse/jdt/core/IJavaElement;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    iget-boolean p1, p0, Lorg/eclipse/jdt/internal/core/JavaModelOperation;->force:Z

    invoke-direct {v1, v2, p1}, Lorg/eclipse/jdt/internal/core/DeleteElementsOperation;-><init>([Lorg/eclipse/jdt/core/IJavaElement;Z)V

    invoke-virtual {p0, v1, v0}, Lorg/eclipse/jdt/internal/core/JavaModelOperation;->executeNestedOperation(Lorg/eclipse/jdt/internal/core/JavaModelOperation;I)V

    :cond_5
    return-void
.end method

.method public verify()Lorg/eclipse/jdt/core/IJavaModelStatus;
    .locals 2

    .line 1
    invoke-super {p0}, Lorg/eclipse/jdt/internal/core/JavaModelOperation;->verify()Lorg/eclipse/jdt/core/IJavaModelStatus;

    move-result-object v0

    .line 2
    invoke-interface {v0}, Lorg/eclipse/jdt/core/IJavaModelStatus;->isOK()Z

    move-result v1

    if-nez v1, :cond_0

    return-object v0

    .line 3
    :cond_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/MultiOperation;->renamingsList:[Ljava/lang/String;

    if-eqz v0, :cond_1

    array-length v0, v0

    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/JavaModelOperation;->elementsToProcess:[Lorg/eclipse/jdt/core/IJavaElement;

    array-length v1, v1

    if-eq v0, v1, :cond_1

    .line 4
    new-instance v0, Lorg/eclipse/jdt/internal/core/JavaModelStatus;

    const/16 v1, 0x3d4

    invoke-direct {v0, v1}, Lorg/eclipse/jdt/internal/core/JavaModelStatus;-><init>(I)V

    return-object v0

    .line 5
    :cond_1
    sget-object v0, Lorg/eclipse/jdt/internal/core/JavaModelStatus;->VERIFIED_OK:Lorg/eclipse/jdt/core/IJavaModelStatus;

    return-object v0
.end method

.method public verify(Lorg/eclipse/jdt/core/IJavaElement;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/JavaModelException;
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 6
    invoke-interface {p1}, Lorg/eclipse/jdt/core/IJavaElement;->exists()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/16 v0, 0x3c9

    .line 7
    invoke-virtual {p0, v0, p1}, Lorg/eclipse/jdt/internal/core/MultiOperation;->error(ILorg/eclipse/jdt/core/IJavaElement;)V

    .line 8
    :cond_1
    invoke-interface {p1}, Lorg/eclipse/jdt/core/IJavaElement;->getElementType()I

    move-result v0

    const/4 v1, 0x7

    if-ge v0, v1, :cond_2

    const/16 v0, 0x3c7

    .line 9
    invoke-virtual {p0, v0, p1}, Lorg/eclipse/jdt/internal/core/MultiOperation;->error(ILorg/eclipse/jdt/core/IJavaElement;)V

    .line 10
    :cond_2
    invoke-interface {p1}, Lorg/eclipse/jdt/core/IJavaElement;->isReadOnly()Z

    move-result v0

    if-eqz v0, :cond_3

    const/16 v0, 0x3d0

    .line 11
    invoke-virtual {p0, v0, p1}, Lorg/eclipse/jdt/internal/core/MultiOperation;->error(ILorg/eclipse/jdt/core/IJavaElement;)V

    .line 12
    :cond_3
    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/internal/core/MultiOperation;->getDestinationParent(Lorg/eclipse/jdt/core/IJavaElement;)Lorg/eclipse/jdt/core/IJavaElement;

    move-result-object v0

    .line 13
    invoke-virtual {p0, p1, v0}, Lorg/eclipse/jdt/internal/core/MultiOperation;->verifyDestination(Lorg/eclipse/jdt/core/IJavaElement;Lorg/eclipse/jdt/core/IJavaElement;)V

    .line 14
    invoke-virtual {p0, p1, v0}, Lorg/eclipse/jdt/internal/core/MultiOperation;->verifySibling(Lorg/eclipse/jdt/core/IJavaElement;Lorg/eclipse/jdt/core/IJavaElement;)V

    .line 15
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/MultiOperation;->renamingsList:[Ljava/lang/String;

    if-eqz v0, :cond_4

    .line 16
    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/internal/core/MultiOperation;->verifyRenaming(Lorg/eclipse/jdt/core/IJavaElement;)V

    :cond_4
    return-void
.end method
