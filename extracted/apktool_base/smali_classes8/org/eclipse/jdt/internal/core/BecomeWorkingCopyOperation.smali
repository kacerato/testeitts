.class public Lorg/eclipse/jdt/internal/core/BecomeWorkingCopyOperation;
.super Lorg/eclipse/jdt/internal/core/JavaModelOperation;
.source "SourceFile"


# instance fields
.field problemRequestor:Lorg/eclipse/jdt/core/IProblemRequestor;


# direct methods
.method public constructor <init>(Lorg/eclipse/jdt/internal/core/CompilationUnit;Lorg/eclipse/jdt/core/IProblemRequestor;)V
    .locals 2

    const/4 v0, 0x1

    new-array v0, v0, [Lorg/eclipse/jdt/core/IJavaElement;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-direct {p0, v0}, Lorg/eclipse/jdt/internal/core/JavaModelOperation;-><init>([Lorg/eclipse/jdt/core/IJavaElement;)V

    iput-object p2, p0, Lorg/eclipse/jdt/internal/core/BecomeWorkingCopyOperation;->problemRequestor:Lorg/eclipse/jdt/core/IProblemRequestor;

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

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/BecomeWorkingCopyOperation;->getWorkingCopy()Lorg/eclipse/jdt/internal/core/CompilationUnit;

    move-result-object v0

    invoke-static {}, Lorg/eclipse/jdt/internal/core/JavaModelManager;->getJavaModelManager()Lorg/eclipse/jdt/internal/core/JavaModelManager;

    move-result-object v1

    iget-object v2, p0, Lorg/eclipse/jdt/internal/core/BecomeWorkingCopyOperation;->problemRequestor:Lorg/eclipse/jdt/core/IProblemRequestor;

    const/4 v3, 0x1

    invoke-virtual {v1, v0, v3, v3, v2}, Lorg/eclipse/jdt/internal/core/JavaModelManager;->getPerWorkingCopyInfo(Lorg/eclipse/jdt/internal/core/CompilationUnit;ZZLorg/eclipse/jdt/core/IProblemRequestor;)Lorg/eclipse/jdt/internal/core/JavaModelManager$PerWorkingCopyInfo;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/core/CompilationUnit;->createElementInfo()Ljava/lang/Object;

    move-result-object v1

    iget-object v2, p0, Lorg/eclipse/jdt/internal/core/JavaModelOperation;->progressMonitor:Lorg/eclipse/core/runtime/SubMonitor;

    invoke-virtual {v0, v1, v3, v2}, Lorg/eclipse/jdt/internal/core/JavaElement;->openWhenClosed(Ljava/lang/Object;ZLorg/eclipse/core/runtime/IProgressMonitor;)Ljava/lang/Object;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/core/CompilationUnit;->isPrimary()Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Lorg/eclipse/jdt/internal/core/JavaElementDelta;

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/JavaModelOperation;->getJavaModel()Lorg/eclipse/jdt/core/IJavaModel;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/eclipse/jdt/internal/core/JavaElementDelta;-><init>(Lorg/eclipse/jdt/core/IJavaElement;)V

    invoke-virtual {v1, v0}, Lorg/eclipse/jdt/internal/core/JavaElementDelta;->added(Lorg/eclipse/jdt/core/IJavaElement;)V

    invoke-virtual {p0, v1}, Lorg/eclipse/jdt/internal/core/JavaModelOperation;->addDelta(Lorg/eclipse/jdt/core/IJavaElementDelta;)V

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/core/Openable;->getResource()Lorg/eclipse/core/resources/IResource;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-interface {v1}, Lorg/eclipse/core/resources/IResource;->isAccessible()Z

    move-result v1

    const/high16 v2, 0x10000

    if-eqz v1, :cond_1

    new-instance v1, Lorg/eclipse/jdt/internal/core/JavaElementDelta;

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/JavaModelOperation;->getJavaModel()Lorg/eclipse/jdt/core/IJavaModel;

    move-result-object v4

    invoke-direct {v1, v4}, Lorg/eclipse/jdt/internal/core/JavaElementDelta;-><init>(Lorg/eclipse/jdt/core/IJavaElement;)V

    invoke-virtual {v1, v0, v2}, Lorg/eclipse/jdt/internal/core/JavaElementDelta;->changed(Lorg/eclipse/jdt/core/IJavaElement;I)Lorg/eclipse/jdt/internal/core/JavaElementDelta;

    invoke-virtual {p0, v1}, Lorg/eclipse/jdt/internal/core/JavaModelOperation;->addDelta(Lorg/eclipse/jdt/core/IJavaElementDelta;)V

    goto :goto_0

    :cond_1
    new-instance v1, Lorg/eclipse/jdt/internal/core/JavaElementDelta;

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/JavaModelOperation;->getJavaModel()Lorg/eclipse/jdt/core/IJavaModel;

    move-result-object v4

    invoke-direct {v1, v4}, Lorg/eclipse/jdt/internal/core/JavaElementDelta;-><init>(Lorg/eclipse/jdt/core/IJavaElement;)V

    invoke-virtual {v1, v0, v2}, Lorg/eclipse/jdt/internal/core/JavaElementDelta;->added(Lorg/eclipse/jdt/core/IJavaElement;I)V

    invoke-virtual {p0, v1}, Lorg/eclipse/jdt/internal/core/JavaModelOperation;->addDelta(Lorg/eclipse/jdt/core/IJavaElementDelta;)V

    :cond_2
    :goto_0
    new-array v1, v3, [Lorg/eclipse/jdt/core/IJavaElement;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    iput-object v1, p0, Lorg/eclipse/jdt/internal/core/JavaModelOperation;->resultElements:[Lorg/eclipse/jdt/core/IJavaElement;

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
