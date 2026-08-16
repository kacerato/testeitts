.class public Lorg/eclipse/jdt/internal/core/DiscardWorkingCopyOperation;
.super Lorg/eclipse/jdt/internal/core/JavaModelOperation;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lorg/eclipse/jdt/core/IJavaElement;)V
    .locals 2

    const/4 v0, 0x1

    new-array v0, v0, [Lorg/eclipse/jdt/core/IJavaElement;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-direct {p0, v0}, Lorg/eclipse/jdt/internal/core/JavaModelOperation;-><init>([Lorg/eclipse/jdt/core/IJavaElement;)V

    return-void
.end method


# virtual methods
.method public executeOperation()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/JavaModelException;
        }
    .end annotation

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/DiscardWorkingCopyOperation;->getWorkingCopy()Lorg/eclipse/jdt/internal/core/CompilationUnit;

    move-result-object v0

    invoke-static {}, Lorg/eclipse/jdt/internal/core/JavaModelManager;->getJavaModelManager()Lorg/eclipse/jdt/internal/core/JavaModelManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/eclipse/jdt/internal/core/JavaModelManager;->discardPerWorkingCopyInfo(Lorg/eclipse/jdt/internal/core/CompilationUnit;)I

    move-result v2

    if-nez v2, :cond_3

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/core/JavaElement;->getJavaProject()Lorg/eclipse/jdt/core/IJavaProject;

    move-result-object v2

    invoke-interface {v2}, Lorg/eclipse/jdt/core/IJavaElement;->getElementName()Ljava/lang/String;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    move-object v3, v2

    check-cast v3, Lorg/eclipse/jdt/internal/core/JavaProject;

    const/4 v4, 0x1

    invoke-virtual {v1, v3, v4}, Lorg/eclipse/jdt/internal/core/JavaModelManager;->removePerProjectInfo(Lorg/eclipse/jdt/internal/core/JavaProject;Z)V

    invoke-virtual {v1, v2}, Lorg/eclipse/jdt/internal/core/JavaModelManager;->containerRemove(Lorg/eclipse/jdt/core/IJavaProject;)V

    :cond_0
    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/core/CompilationUnit;->isPrimary()Z

    move-result v1

    if-nez v1, :cond_1

    new-instance v1, Lorg/eclipse/jdt/internal/core/JavaElementDelta;

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/JavaModelOperation;->getJavaModel()Lorg/eclipse/jdt/core/IJavaModel;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/eclipse/jdt/internal/core/JavaElementDelta;-><init>(Lorg/eclipse/jdt/core/IJavaElement;)V

    invoke-virtual {v1, v0}, Lorg/eclipse/jdt/internal/core/JavaElementDelta;->removed(Lorg/eclipse/jdt/core/IJavaElement;)V

    invoke-virtual {p0, v1}, Lorg/eclipse/jdt/internal/core/JavaModelOperation;->addDelta(Lorg/eclipse/jdt/core/IJavaElementDelta;)V

    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/internal/core/JavaModelOperation;->removeReconcileDelta(Lorg/eclipse/jdt/core/ICompilationUnit;)V

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/core/Openable;->getResource()Lorg/eclipse/core/resources/IResource;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-interface {v1}, Lorg/eclipse/core/resources/IResource;->isAccessible()Z

    move-result v1

    const/high16 v2, 0x10000

    if-eqz v1, :cond_2

    new-instance v1, Lorg/eclipse/jdt/internal/core/JavaElementDelta;

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/JavaModelOperation;->getJavaModel()Lorg/eclipse/jdt/core/IJavaModel;

    move-result-object v3

    invoke-direct {v1, v3}, Lorg/eclipse/jdt/internal/core/JavaElementDelta;-><init>(Lorg/eclipse/jdt/core/IJavaElement;)V

    invoke-virtual {v1, v0, v2}, Lorg/eclipse/jdt/internal/core/JavaElementDelta;->changed(Lorg/eclipse/jdt/core/IJavaElement;I)Lorg/eclipse/jdt/internal/core/JavaElementDelta;

    invoke-virtual {p0, v1}, Lorg/eclipse/jdt/internal/core/JavaModelOperation;->addDelta(Lorg/eclipse/jdt/core/IJavaElementDelta;)V

    goto :goto_0

    :cond_2
    new-instance v1, Lorg/eclipse/jdt/internal/core/JavaElementDelta;

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/JavaModelOperation;->getJavaModel()Lorg/eclipse/jdt/core/IJavaModel;

    move-result-object v3

    invoke-direct {v1, v3}, Lorg/eclipse/jdt/internal/core/JavaElementDelta;-><init>(Lorg/eclipse/jdt/core/IJavaElement;)V

    invoke-virtual {v1, v0, v2}, Lorg/eclipse/jdt/internal/core/JavaElementDelta;->removed(Lorg/eclipse/jdt/core/IJavaElement;I)V

    invoke-virtual {p0, v1}, Lorg/eclipse/jdt/internal/core/JavaModelOperation;->addDelta(Lorg/eclipse/jdt/core/IJavaElementDelta;)V

    :cond_3
    :goto_0
    return-void
.end method

.method public getWorkingCopy()Lorg/eclipse/jdt/internal/core/CompilationUnit;
    .locals 1

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/JavaModelOperation;->getElementToProcess()Lorg/eclipse/jdt/core/IJavaElement;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jdt/internal/core/CompilationUnit;

    return-object v0
.end method

.method public isReadOnly()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
