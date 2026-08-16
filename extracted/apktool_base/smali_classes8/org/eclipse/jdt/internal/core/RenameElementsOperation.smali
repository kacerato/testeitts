.class public Lorg/eclipse/jdt/internal/core/RenameElementsOperation;
.super Lorg/eclipse/jdt/internal/core/MoveElementsOperation;
.source "SourceFile"


# direct methods
.method public constructor <init>([Lorg/eclipse/jdt/core/IJavaElement;[Lorg/eclipse/jdt/core/IJavaElement;[Ljava/lang/String;Z)V
    .locals 0

    invoke-direct {p0, p1, p2, p4}, Lorg/eclipse/jdt/internal/core/MoveElementsOperation;-><init>([Lorg/eclipse/jdt/core/IJavaElement;[Lorg/eclipse/jdt/core/IJavaElement;Z)V

    invoke-virtual {p0, p3}, Lorg/eclipse/jdt/internal/core/MultiOperation;->setRenamings([Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getMainTaskName()Ljava/lang/String;
    .locals 1

    sget-object v0, Lorg/eclipse/jdt/internal/core/util/Messages;->operation_renameElementProgress:Ljava/lang/String;

    return-object v0
.end method

.method public isRename()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public verify()Lorg/eclipse/jdt/core/IJavaModelStatus;
    .locals 2

    .line 1
    invoke-super {p0}, Lorg/eclipse/jdt/internal/core/CopyElementsOperation;->verify()Lorg/eclipse/jdt/core/IJavaModelStatus;

    move-result-object v0

    .line 2
    invoke-interface {v0}, Lorg/eclipse/jdt/core/IJavaModelStatus;->isOK()Z

    move-result v1

    if-nez v1, :cond_0

    return-object v0

    .line 3
    :cond_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/MultiOperation;->renamingsList:[Ljava/lang/String;

    if-eqz v0, :cond_2

    array-length v0, v0

    if-nez v0, :cond_1

    goto :goto_0

    .line 4
    :cond_1
    sget-object v0, Lorg/eclipse/jdt/internal/core/JavaModelStatus;->VERIFIED_OK:Lorg/eclipse/jdt/core/IJavaModelStatus;

    return-object v0

    .line 5
    :cond_2
    :goto_0
    new-instance v0, Lorg/eclipse/jdt/internal/core/JavaModelStatus;

    const/16 v1, 0x3d6

    invoke-direct {v0, v1}, Lorg/eclipse/jdt/internal/core/JavaModelStatus;-><init>(I)V

    return-object v0
.end method

.method public verify(Lorg/eclipse/jdt/core/IJavaElement;)V
    .locals 3
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
    invoke-interface {p1}, Lorg/eclipse/jdt/core/IJavaElement;->isReadOnly()Z

    move-result v0

    if-eqz v0, :cond_2

    const/16 v0, 0x3d0

    .line 9
    invoke-virtual {p0, v0, p1}, Lorg/eclipse/jdt/internal/core/MultiOperation;->error(ILorg/eclipse/jdt/core/IJavaElement;)V

    .line 10
    :cond_2
    instance-of v0, p1, Lorg/eclipse/jdt/core/ISourceReference;

    const/16 v1, 0x3c7

    if-nez v0, :cond_3

    .line 11
    invoke-virtual {p0, v1, p1}, Lorg/eclipse/jdt/internal/core/MultiOperation;->error(ILorg/eclipse/jdt/core/IJavaElement;)V

    .line 12
    :cond_3
    invoke-interface {p1}, Lorg/eclipse/jdt/core/IJavaElement;->getElementType()I

    move-result v0

    const/4 v2, 0x7

    if-lt v0, v2, :cond_4

    const/16 v2, 0xa

    if-ne v0, v2, :cond_5

    .line 13
    :cond_4
    invoke-virtual {p0, v1, p1}, Lorg/eclipse/jdt/internal/core/MultiOperation;->error(ILorg/eclipse/jdt/core/IJavaElement;)V

    .line 14
    :cond_5
    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/internal/core/MultiOperation;->verifyRenaming(Lorg/eclipse/jdt/core/IJavaElement;)V

    return-void
.end method
