.class public abstract Lorg/eclipse/jdt/internal/core/CreateElementInCUOperation;
.super Lorg/eclipse/jdt/internal/core/JavaModelOperation;
.source "SourceFile"


# static fields
.field protected static final INSERT_AFTER:I = 0x2

.field protected static final INSERT_BEFORE:I = 0x3

.field protected static final INSERT_LAST:I = 0x1


# instance fields
.field protected anchorElement:Lorg/eclipse/jdt/core/IJavaElement;

.field protected creationOccurred:Z

.field protected cuAST:Lorg/eclipse/jdt/core/dom/CompilationUnit;

.field protected insertionPolicy:I


# direct methods
.method public constructor <init>(Lorg/eclipse/jdt/core/IJavaElement;)V
    .locals 3

    const/4 v0, 0x1

    new-array v1, v0, [Lorg/eclipse/jdt/core/IJavaElement;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 p1, 0x0

    invoke-direct {p0, p1, v1}, Lorg/eclipse/jdt/internal/core/JavaModelOperation;-><init>([Lorg/eclipse/jdt/core/IJavaElement;[Lorg/eclipse/jdt/core/IJavaElement;)V

    iput v0, p0, Lorg/eclipse/jdt/internal/core/CreateElementInCUOperation;->insertionPolicy:I

    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/CreateElementInCUOperation;->anchorElement:Lorg/eclipse/jdt/core/IJavaElement;

    iput-boolean v0, p0, Lorg/eclipse/jdt/internal/core/CreateElementInCUOperation;->creationOccurred:Z

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/CreateElementInCUOperation;->initializeDefaultPosition()V

    return-void
.end method


# virtual methods
.method public checkCanceled()V
    .locals 1

    iget-boolean v0, p0, Lorg/eclipse/jdt/internal/core/JavaModelOperation;->isNested:Z

    if-nez v0, :cond_0

    invoke-super {p0}, Lorg/eclipse/jdt/internal/core/JavaModelOperation;->checkCanceled()V

    :cond_0
    return-void
.end method

.method public createAfter(Lorg/eclipse/jdt/core/IJavaElement;)V
    .locals 1

    const/4 v0, 0x2

    invoke-virtual {p0, p1, v0}, Lorg/eclipse/jdt/internal/core/CreateElementInCUOperation;->setRelativePosition(Lorg/eclipse/jdt/core/IJavaElement;I)V

    return-void
.end method

.method public createBefore(Lorg/eclipse/jdt/core/IJavaElement;)V
    .locals 1

    const/4 v0, 0x3

    invoke-virtual {p0, p1, v0}, Lorg/eclipse/jdt/internal/core/CreateElementInCUOperation;->setRelativePosition(Lorg/eclipse/jdt/core/IJavaElement;I)V

    return-void
.end method

.method public executeOperation()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/JavaModelException;
        }
    .end annotation

    :try_start_0
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/CreateElementInCUOperation;->getMainTaskName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/CreateElementInCUOperation;->getMainAmountOfWork()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lorg/eclipse/jdt/internal/core/JavaModelOperation;->beginTask(Ljava/lang/String;I)V

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/JavaModelOperation;->newJavaElementDelta()Lorg/eclipse/jdt/internal/core/JavaElementDelta;

    move-result-object v0

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/CreateElementInCUOperation;->getCompilationUnit()Lorg/eclipse/jdt/core/ICompilationUnit;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/eclipse/jdt/internal/core/CreateElementInCUOperation;->generateNewCompilationUnitAST(Lorg/eclipse/jdt/core/ICompilationUnit;)V

    iget-boolean v2, p0, Lorg/eclipse/jdt/internal/core/CreateElementInCUOperation;->creationOccurred:Z

    if-eqz v2, :cond_2

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Lorg/eclipse/jdt/core/IOpenable;->save(Lorg/eclipse/core/runtime/IProgressMonitor;Z)V

    invoke-interface {v1}, Lorg/eclipse/jdt/core/ICompilationUnit;->isWorkingCopy()Z

    move-result v2

    if-nez v2, :cond_0

    const-string v4, "hasModifiedResource"

    const-string v5, "true"

    invoke-static {v4, v5}, Lorg/eclipse/jdt/internal/core/JavaModelOperation;->setAttribute(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_3

    :cond_0
    :goto_0
    const/4 v4, 0x1

    invoke-virtual {p0, v4}, Lorg/eclipse/jdt/internal/core/JavaModelOperation;->worked(I)V

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/CreateElementInCUOperation;->generateResultHandles()[Lorg/eclipse/jdt/core/IJavaElement;

    move-result-object v4

    iput-object v4, p0, Lorg/eclipse/jdt/internal/core/JavaModelOperation;->resultElements:[Lorg/eclipse/jdt/core/IJavaElement;

    if-nez v2, :cond_2

    invoke-static {v1}, Lorg/eclipse/jdt/internal/core/util/Util;->isExcluded(Lorg/eclipse/jdt/core/IJavaElement;)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-interface {v1}, Lorg/eclipse/jdt/core/IJavaElement;->getParent()Lorg/eclipse/jdt/core/IJavaElement;

    move-result-object v1

    invoke-interface {v1}, Lorg/eclipse/jdt/core/IJavaElement;->exists()Z

    move-result v1

    if-eqz v1, :cond_2

    :goto_1
    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/JavaModelOperation;->resultElements:[Lorg/eclipse/jdt/core/IJavaElement;

    array-length v2, v1

    if-lt v3, v2, :cond_1

    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/internal/core/JavaModelOperation;->addDelta(Lorg/eclipse/jdt/core/IJavaElementDelta;)V

    goto :goto_2

    :cond_1
    aget-object v1, v1, v3

    invoke-virtual {v0, v1}, Lorg/eclipse/jdt/internal/core/JavaElementDelta;->added(Lorg/eclipse/jdt/core/IJavaElement;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    :goto_2
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/JavaModelOperation;->done()V

    return-void

    :goto_3
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/JavaModelOperation;->done()V

    throw v0
.end method

.method public abstract generateElementAST(Lorg/eclipse/jdt/core/dom/rewrite/ASTRewrite;Lorg/eclipse/jdt/core/ICompilationUnit;)Lorg/eclipse/jdt/core/dom/ASTNode;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/JavaModelException;
        }
    .end annotation
.end method

.method public generateNewCompilationUnitAST(Lorg/eclipse/jdt/core/ICompilationUnit;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/JavaModelException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/internal/core/CreateElementInCUOperation;->parse(Lorg/eclipse/jdt/core/ICompilationUnit;)Lorg/eclipse/jdt/core/dom/CompilationUnit;

    move-result-object v0

    iput-object v0, p0, Lorg/eclipse/jdt/internal/core/CreateElementInCUOperation;->cuAST:Lorg/eclipse/jdt/core/dom/CompilationUnit;

    invoke-virtual {v0}, Lorg/eclipse/jdt/core/dom/ASTNode;->getAST()Lorg/eclipse/jdt/core/dom/AST;

    move-result-object v0

    invoke-static {v0}, Lorg/eclipse/jdt/core/dom/rewrite/ASTRewrite;->create(Lorg/eclipse/jdt/core/dom/AST;)Lorg/eclipse/jdt/core/dom/rewrite/ASTRewrite;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lorg/eclipse/jdt/internal/core/CreateElementInCUOperation;->generateElementAST(Lorg/eclipse/jdt/core/dom/rewrite/ASTRewrite;Lorg/eclipse/jdt/core/ICompilationUnit;)Lorg/eclipse/jdt/core/dom/ASTNode;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/JavaModelOperation;->getParentElement()Lorg/eclipse/jdt/core/IJavaElement;

    move-result-object v2

    check-cast v2, Lorg/eclipse/jdt/internal/core/JavaElement;

    iget-object v3, p0, Lorg/eclipse/jdt/internal/core/CreateElementInCUOperation;->cuAST:Lorg/eclipse/jdt/core/dom/CompilationUnit;

    invoke-virtual {v2, v3}, Lorg/eclipse/jdt/internal/core/JavaElement;->findNode(Lorg/eclipse/jdt/core/dom/CompilationUnit;)Lorg/eclipse/jdt/core/dom/ASTNode;

    move-result-object v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lorg/eclipse/jdt/internal/core/CreateElementInCUOperation;->cuAST:Lorg/eclipse/jdt/core/dom/CompilationUnit;

    :cond_0
    invoke-virtual {p0, v0, v2, v1}, Lorg/eclipse/jdt/internal/core/CreateElementInCUOperation;->insertASTNode(Lorg/eclipse/jdt/core/dom/rewrite/ASTRewrite;Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/ASTNode;)V

    invoke-virtual {v0}, Lorg/eclipse/jdt/core/dom/rewrite/ASTRewrite;->rewriteAST()Lorg/eclipse/text/edits/TextEdit;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lorg/eclipse/jdt/internal/core/JavaModelOperation;->applyTextEdit(Lorg/eclipse/jdt/core/ICompilationUnit;Lorg/eclipse/text/edits/TextEdit;)V

    :cond_1
    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/internal/core/JavaModelOperation;->worked(I)V

    return-void
.end method

.method public abstract generateResultHandle()Lorg/eclipse/jdt/core/IJavaElement;
.end method

.method public generateResultHandles()[Lorg/eclipse/jdt/core/IJavaElement;
    .locals 3

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/CreateElementInCUOperation;->generateResultHandle()Lorg/eclipse/jdt/core/IJavaElement;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Lorg/eclipse/jdt/core/IJavaElement;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    return-object v1
.end method

.method public abstract getChildPropertyDescriptor(Lorg/eclipse/jdt/core/dom/ASTNode;)Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;
.end method

.method public getCompilationUnit()Lorg/eclipse/jdt/core/ICompilationUnit;
    .locals 1

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/JavaModelOperation;->getParentElement()Lorg/eclipse/jdt/core/IJavaElement;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/internal/core/JavaModelOperation;->getCompilationUnitFor(Lorg/eclipse/jdt/core/IJavaElement;)Lorg/eclipse/jdt/core/ICompilationUnit;

    move-result-object v0

    return-object v0
.end method

.method public getMainAmountOfWork()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method

.method public abstract getMainTaskName()Ljava/lang/String;
.end method

.method public getSchedulingRule()Lorg/eclipse/core/runtime/jobs/ISchedulingRule;
    .locals 2

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/CreateElementInCUOperation;->getCompilationUnit()Lorg/eclipse/jdt/core/ICompilationUnit;

    move-result-object v0

    invoke-interface {v0}, Lorg/eclipse/jdt/core/IJavaElement;->getResource()Lorg/eclipse/core/resources/IResource;

    move-result-object v0

    invoke-interface {v0}, Lorg/eclipse/core/resources/IResource;->getWorkspace()Lorg/eclipse/core/resources/IWorkspace;

    move-result-object v1

    invoke-interface {v1}, Lorg/eclipse/core/resources/IWorkspace;->getRuleFactory()Lorg/eclipse/core/resources/IResourceRuleFactory;

    move-result-object v1

    invoke-interface {v1, v0}, Lorg/eclipse/core/resources/IResourceRuleFactory;->modifyRule(Lorg/eclipse/core/resources/IResource;)Lorg/eclipse/core/runtime/jobs/ISchedulingRule;

    move-result-object v0

    return-object v0
.end method

.method public initializeDefaultPosition()V
    .locals 0

    return-void
.end method

.method public insertASTNode(Lorg/eclipse/jdt/core/dom/rewrite/ASTRewrite;Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/ASTNode;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/JavaModelException;
        }
    .end annotation

    invoke-virtual {p0, p2}, Lorg/eclipse/jdt/internal/core/CreateElementInCUOperation;->getChildPropertyDescriptor(Lorg/eclipse/jdt/core/dom/ASTNode;)Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;

    move-result-object v0

    instance-of v1, v0, Lorg/eclipse/jdt/core/dom/ChildListPropertyDescriptor;

    const/4 v2, 0x0

    if-eqz v1, :cond_5

    check-cast v0, Lorg/eclipse/jdt/core/dom/ChildListPropertyDescriptor;

    invoke-virtual {p1, p2, v0}, Lorg/eclipse/jdt/core/dom/rewrite/ASTRewrite;->getListRewrite(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/ChildListPropertyDescriptor;)Lorg/eclipse/jdt/core/dom/rewrite/ListRewrite;

    move-result-object p1

    iget p2, p0, Lorg/eclipse/jdt/internal/core/CreateElementInCUOperation;->insertionPolicy:I

    const/4 v1, 0x1

    if-eq p2, v1, :cond_4

    const/4 v1, 0x2

    if-eq p2, v1, :cond_2

    const/4 v1, 0x3

    if-eq p2, v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p2, p0, Lorg/eclipse/jdt/internal/core/CreateElementInCUOperation;->anchorElement:Lorg/eclipse/jdt/core/IJavaElement;

    check-cast p2, Lorg/eclipse/jdt/internal/core/JavaElement;

    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/CreateElementInCUOperation;->cuAST:Lorg/eclipse/jdt/core/dom/CompilationUnit;

    invoke-virtual {p2, v1}, Lorg/eclipse/jdt/internal/core/JavaElement;->findNode(Lorg/eclipse/jdt/core/dom/CompilationUnit;)Lorg/eclipse/jdt/core/dom/ASTNode;

    move-result-object p2

    invoke-virtual {v0}, Lorg/eclipse/jdt/core/dom/ChildListPropertyDescriptor;->getElementType()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1, p3, p2, v2}, Lorg/eclipse/jdt/core/dom/rewrite/ListRewrite;->insertBefore(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/text/edits/TextEditGroup;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p1, p3, v2}, Lorg/eclipse/jdt/core/dom/rewrite/ListRewrite;->insertLast(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/text/edits/TextEditGroup;)V

    goto :goto_0

    :cond_2
    iget-object p2, p0, Lorg/eclipse/jdt/internal/core/CreateElementInCUOperation;->anchorElement:Lorg/eclipse/jdt/core/IJavaElement;

    check-cast p2, Lorg/eclipse/jdt/internal/core/JavaElement;

    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/CreateElementInCUOperation;->cuAST:Lorg/eclipse/jdt/core/dom/CompilationUnit;

    invoke-virtual {p2, v1}, Lorg/eclipse/jdt/internal/core/JavaElement;->findNode(Lorg/eclipse/jdt/core/dom/CompilationUnit;)Lorg/eclipse/jdt/core/dom/ASTNode;

    move-result-object p2

    invoke-virtual {v0}, Lorg/eclipse/jdt/core/dom/ChildListPropertyDescriptor;->getElementType()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p1, p3, p2, v2}, Lorg/eclipse/jdt/core/dom/rewrite/ListRewrite;->insertAfter(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/text/edits/TextEditGroup;)V

    goto :goto_0

    :cond_3
    invoke-virtual {p1, p3, v2}, Lorg/eclipse/jdt/core/dom/rewrite/ListRewrite;->insertLast(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/text/edits/TextEditGroup;)V

    goto :goto_0

    :cond_4
    invoke-virtual {p1, p3, v2}, Lorg/eclipse/jdt/core/dom/rewrite/ListRewrite;->insertLast(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/text/edits/TextEditGroup;)V

    goto :goto_0

    :cond_5
    invoke-virtual {p1, p2, v0, p3, v2}, Lorg/eclipse/jdt/core/dom/rewrite/ASTRewrite;->set(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;Ljava/lang/Object;Lorg/eclipse/text/edits/TextEditGroup;)V

    :goto_0
    return-void
.end method

.method public parse(Lorg/eclipse/jdt/core/ICompilationUnit;)Lorg/eclipse/jdt/core/dom/CompilationUnit;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/JavaModelException;
        }
    .end annotation

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/JavaModelOperation;->progressMonitor:Lorg/eclipse/core/runtime/SubMonitor;

    invoke-interface {p1, v0}, Lorg/eclipse/jdt/core/IOpenable;->makeConsistent(Lorg/eclipse/core/runtime/IProgressMonitor;)V

    const/16 v0, 0xb

    invoke-static {v0}, Lorg/eclipse/jdt/core/dom/ASTParser;->newParser(I)Lorg/eclipse/jdt/core/dom/ASTParser;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/eclipse/jdt/core/dom/ASTParser;->setSource(Lorg/eclipse/jdt/core/ICompilationUnit;)V

    iget-object p1, p0, Lorg/eclipse/jdt/internal/core/JavaModelOperation;->progressMonitor:Lorg/eclipse/core/runtime/SubMonitor;

    invoke-virtual {v0, p1}, Lorg/eclipse/jdt/core/dom/ASTParser;->createAST(Lorg/eclipse/core/runtime/IProgressMonitor;)Lorg/eclipse/jdt/core/dom/ASTNode;

    move-result-object p1

    check-cast p1, Lorg/eclipse/jdt/core/dom/CompilationUnit;

    return-object p1
.end method

.method public setAlteredName(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public setRelativePosition(Lorg/eclipse/jdt/core/IJavaElement;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 p1, 0x0

    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/CreateElementInCUOperation;->anchorElement:Lorg/eclipse/jdt/core/IJavaElement;

    const/4 p1, 0x1

    iput p1, p0, Lorg/eclipse/jdt/internal/core/CreateElementInCUOperation;->insertionPolicy:I

    goto :goto_0

    :cond_0
    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/CreateElementInCUOperation;->anchorElement:Lorg/eclipse/jdt/core/IJavaElement;

    iput p2, p0, Lorg/eclipse/jdt/internal/core/CreateElementInCUOperation;->insertionPolicy:I

    :goto_0
    return-void
.end method

.method public verify()Lorg/eclipse/jdt/core/IJavaModelStatus;
    .locals 3

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/JavaModelOperation;->getParentElement()Lorg/eclipse/jdt/core/IJavaElement;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Lorg/eclipse/jdt/internal/core/JavaModelStatus;

    const/16 v1, 0x3c8

    invoke-direct {v0, v1}, Lorg/eclipse/jdt/internal/core/JavaModelStatus;-><init>(I)V

    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/CreateElementInCUOperation;->anchorElement:Lorg/eclipse/jdt/core/IJavaElement;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Lorg/eclipse/jdt/core/IJavaElement;->getParent()Lorg/eclipse/jdt/core/IJavaElement;

    move-result-object v0

    invoke-interface {v0}, Lorg/eclipse/jdt/core/IJavaElement;->getElementType()I

    move-result v1

    const/16 v2, 0xc

    if-ne v1, v2, :cond_1

    invoke-interface {v0}, Lorg/eclipse/jdt/core/IJavaElement;->getParent()Lorg/eclipse/jdt/core/IJavaElement;

    move-result-object v0

    :cond_1
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/JavaModelOperation;->getParentElement()Lorg/eclipse/jdt/core/IJavaElement;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    new-instance v0, Lorg/eclipse/jdt/internal/core/JavaModelStatus;

    const/16 v1, 0x3e1

    iget-object v2, p0, Lorg/eclipse/jdt/internal/core/CreateElementInCUOperation;->anchorElement:Lorg/eclipse/jdt/core/IJavaElement;

    invoke-direct {v0, v1, v2}, Lorg/eclipse/jdt/internal/core/JavaModelStatus;-><init>(ILorg/eclipse/jdt/core/IJavaElement;)V

    return-object v0

    :cond_2
    sget-object v0, Lorg/eclipse/jdt/internal/core/JavaModelStatus;->VERIFIED_OK:Lorg/eclipse/jdt/core/IJavaModelStatus;

    return-object v0
.end method
