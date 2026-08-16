.class public Lorg/eclipse/jdt/internal/core/RenameResourceElementsOperation;
.super Lorg/eclipse/jdt/internal/core/MoveResourceElementsOperation;
.source "SourceFile"


# direct methods
.method public constructor <init>([Lorg/eclipse/jdt/core/IJavaElement;[Lorg/eclipse/jdt/core/IJavaElement;[Ljava/lang/String;Z)V
    .locals 0

    invoke-direct {p0, p1, p2, p4}, Lorg/eclipse/jdt/internal/core/MoveResourceElementsOperation;-><init>([Lorg/eclipse/jdt/core/IJavaElement;[Lorg/eclipse/jdt/core/IJavaElement;Z)V

    invoke-virtual {p0, p3}, Lorg/eclipse/jdt/internal/core/MultiOperation;->setRenamings([Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getMainTaskName()Ljava/lang/String;
    .locals 1

    sget-object v0, Lorg/eclipse/jdt/internal/core/util/Messages;->operation_renameResourceProgress:Ljava/lang/String;

    return-object v0
.end method

.method public isRename()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public verify(Lorg/eclipse/jdt/core/IJavaElement;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/JavaModelException;
        }
    .end annotation

    invoke-super {p0, p1}, Lorg/eclipse/jdt/internal/core/CopyResourceElementsOperation;->verify(Lorg/eclipse/jdt/core/IJavaElement;)V

    invoke-interface {p1}, Lorg/eclipse/jdt/core/IJavaElement;->getElementType()I

    move-result v0

    const/16 v1, 0x3c7

    const/4 v2, 0x5

    if-eq v0, v2, :cond_0

    const/4 v3, 0x4

    if-eq v0, v3, :cond_0

    invoke-virtual {p0, v1, p1}, Lorg/eclipse/jdt/internal/core/MultiOperation;->error(ILorg/eclipse/jdt/core/IJavaElement;)V

    :cond_0
    if-ne v0, v2, :cond_1

    move-object v0, p1

    check-cast v0, Lorg/eclipse/jdt/internal/core/CompilationUnit;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/core/CompilationUnit;->isWorkingCopy()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/core/CompilationUnit;->isPrimary()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0, v1, p1}, Lorg/eclipse/jdt/internal/core/MultiOperation;->error(ILorg/eclipse/jdt/core/IJavaElement;)V

    :cond_1
    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/internal/core/MultiOperation;->verifyRenaming(Lorg/eclipse/jdt/core/IJavaElement;)V

    return-void
.end method
