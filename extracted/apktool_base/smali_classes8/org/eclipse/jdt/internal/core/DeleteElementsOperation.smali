.class public Lorg/eclipse/jdt/internal/core/DeleteElementsOperation;
.super Lorg/eclipse/jdt/internal/core/MultiOperation;
.source "SourceFile"


# instance fields
.field protected childrenToRemove:Ljava/util/Map;

.field protected parser:Lorg/eclipse/jdt/core/dom/ASTParser;


# direct methods
.method public constructor <init>([Lorg/eclipse/jdt/core/IJavaElement;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/eclipse/jdt/internal/core/MultiOperation;-><init>([Lorg/eclipse/jdt/core/IJavaElement;Z)V

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/core/DeleteElementsOperation;->initASTParser()V

    return-void
.end method

.method private deleteElement(Lorg/eclipse/jdt/core/IJavaElement;Lorg/eclipse/jdt/core/ICompilationUnit;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/JavaModelException;
        }
    .end annotation

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/JavaModelOperation;->progressMonitor:Lorg/eclipse/core/runtime/SubMonitor;

    invoke-interface {p2, v0}, Lorg/eclipse/jdt/core/IOpenable;->makeConsistent(Lorg/eclipse/core/runtime/IProgressMonitor;)V

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/DeleteElementsOperation;->parser:Lorg/eclipse/jdt/core/dom/ASTParser;

    invoke-virtual {v0, p2}, Lorg/eclipse/jdt/core/dom/ASTParser;->setSource(Lorg/eclipse/jdt/core/ICompilationUnit;)V

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/DeleteElementsOperation;->parser:Lorg/eclipse/jdt/core/dom/ASTParser;

    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/JavaModelOperation;->progressMonitor:Lorg/eclipse/core/runtime/SubMonitor;

    invoke-virtual {v0, v1}, Lorg/eclipse/jdt/core/dom/ASTParser;->createAST(Lorg/eclipse/core/runtime/IProgressMonitor;)Lorg/eclipse/jdt/core/dom/ASTNode;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jdt/core/dom/CompilationUnit;

    move-object v1, p1

    check-cast v1, Lorg/eclipse/jdt/internal/core/JavaElement;

    invoke-virtual {v1, v0}, Lorg/eclipse/jdt/internal/core/JavaElement;->findNode(Lorg/eclipse/jdt/core/dom/CompilationUnit;)Lorg/eclipse/jdt/core/dom/ASTNode;

    move-result-object v1

    if-nez v1, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Failed to locate "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p1}, Lorg/eclipse/jdt/core/IJavaElement;->getElementName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " in "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p2}, Lorg/eclipse/jdt/core/IJavaElement;->getElementName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v2, 0x0

    invoke-static {v2, p1}, Lorg/eclipse/core/runtime/Assert;->isTrue(ZLjava/lang/String;)Z

    :cond_0
    invoke-virtual {v0}, Lorg/eclipse/jdt/core/dom/ASTNode;->getAST()Lorg/eclipse/jdt/core/dom/AST;

    move-result-object p1

    invoke-static {p1}, Lorg/eclipse/jdt/core/dom/rewrite/ASTRewrite;->create(Lorg/eclipse/jdt/core/dom/AST;)Lorg/eclipse/jdt/core/dom/rewrite/ASTRewrite;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v1, v0}, Lorg/eclipse/jdt/core/dom/rewrite/ASTRewrite;->remove(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/text/edits/TextEditGroup;)V

    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/rewrite/ASTRewrite;->rewriteAST()Lorg/eclipse/text/edits/TextEdit;

    move-result-object p1

    invoke-virtual {p0, p2, p1}, Lorg/eclipse/jdt/internal/core/JavaModelOperation;->applyTextEdit(Lorg/eclipse/jdt/core/ICompilationUnit;Lorg/eclipse/text/edits/TextEdit;)V

    return-void
.end method

.method private initASTParser()V
    .locals 1

    const/16 v0, 0xb

    invoke-static {v0}, Lorg/eclipse/jdt/core/dom/ASTParser;->newParser(I)Lorg/eclipse/jdt/core/dom/ASTParser;

    move-result-object v0

    iput-object v0, p0, Lorg/eclipse/jdt/internal/core/DeleteElementsOperation;->parser:Lorg/eclipse/jdt/core/dom/ASTParser;

    return-void
.end method


# virtual methods
.method public getMainTaskName()Ljava/lang/String;
    .locals 1

    sget-object v0, Lorg/eclipse/jdt/internal/core/util/Messages;->operation_deleteElementProgress:Ljava/lang/String;

    return-object v0
.end method

.method public getSchedulingRule()Lorg/eclipse/core/runtime/jobs/ISchedulingRule;
    .locals 3

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/JavaModelOperation;->elementsToProcess:[Lorg/eclipse/jdt/core/IJavaElement;

    if-eqz v0, :cond_0

    array-length v1, v0

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-interface {v0}, Lorg/eclipse/jdt/core/IJavaElement;->getResource()Lorg/eclipse/core/resources/IResource;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lorg/eclipse/core/resources/ResourcesPlugin;->getWorkspace()Lorg/eclipse/core/resources/IWorkspace;

    move-result-object v1

    invoke-interface {v1}, Lorg/eclipse/core/resources/IWorkspace;->getRuleFactory()Lorg/eclipse/core/resources/IResourceRuleFactory;

    move-result-object v1

    invoke-interface {v1, v0}, Lorg/eclipse/core/resources/IResourceRuleFactory;->modifyRule(Lorg/eclipse/core/resources/IResource;)Lorg/eclipse/core/runtime/jobs/ISchedulingRule;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-super {p0}, Lorg/eclipse/jdt/internal/core/JavaModelOperation;->getSchedulingRule()Lorg/eclipse/core/runtime/jobs/ISchedulingRule;

    move-result-object v0

    return-object v0
.end method

.method public groupElements()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/JavaModelException;
        }
    .end annotation

    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lorg/eclipse/jdt/internal/core/DeleteElementsOperation;->childrenToRemove:Ljava/util/Map;

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/JavaModelOperation;->elementsToProcess:[Lorg/eclipse/jdt/core/IJavaElement;

    array-length v0, v0

    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    :goto_0
    if-lt v2, v0, :cond_1

    new-array v0, v3, [Lorg/eclipse/jdt/core/IJavaElement;

    iput-object v0, p0, Lorg/eclipse/jdt/internal/core/JavaModelOperation;->elementsToProcess:[Lorg/eclipse/jdt/core/IJavaElement;

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/DeleteElementsOperation;->childrenToRemove:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/JavaModelOperation;->elementsToProcess:[Lorg/eclipse/jdt/core/IJavaElement;

    add-int/lit8 v2, v1, 0x1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/eclipse/jdt/core/IJavaElement;

    aput-object v3, v0, v1

    move v1, v2

    goto :goto_1

    :cond_1
    iget-object v4, p0, Lorg/eclipse/jdt/internal/core/JavaModelOperation;->elementsToProcess:[Lorg/eclipse/jdt/core/IJavaElement;

    aget-object v4, v4, v2

    invoke-virtual {p0, v4}, Lorg/eclipse/jdt/internal/core/JavaModelOperation;->getCompilationUnitFor(Lorg/eclipse/jdt/core/IJavaElement;)Lorg/eclipse/jdt/core/ICompilationUnit;

    move-result-object v5

    if-eqz v5, :cond_3

    iget-object v6, p0, Lorg/eclipse/jdt/internal/core/DeleteElementsOperation;->childrenToRemove:Ljava/util/Map;

    invoke-interface {v6, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/eclipse/jdt/core/IRegion;

    if-nez v6, :cond_2

    new-instance v6, Lorg/eclipse/jdt/internal/core/Region;

    invoke-direct {v6}, Lorg/eclipse/jdt/internal/core/Region;-><init>()V

    iget-object v7, p0, Lorg/eclipse/jdt/internal/core/DeleteElementsOperation;->childrenToRemove:Ljava/util/Map;

    invoke-interface {v7, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v3, v3, 0x1

    :cond_2
    invoke-interface {v6, v4}, Lorg/eclipse/jdt/core/IRegion;->add(Lorg/eclipse/jdt/core/IJavaElement;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    new-instance v0, Lorg/eclipse/jdt/core/JavaModelException;

    new-instance v1, Lorg/eclipse/jdt/internal/core/JavaModelStatus;

    const/16 v2, 0x3d0

    invoke-direct {v1, v2, v4}, Lorg/eclipse/jdt/internal/core/JavaModelStatus;-><init>(ILorg/eclipse/jdt/core/IJavaElement;)V

    invoke-direct {v0, v1}, Lorg/eclipse/jdt/core/JavaModelException;-><init>(Lorg/eclipse/jdt/core/IJavaModelStatus;)V

    throw v0
.end method

.method public processElement(Lorg/eclipse/jdt/core/IJavaElement;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/JavaModelException;
        }
    .end annotation

    check-cast p1, Lorg/eclipse/jdt/core/ICompilationUnit;

    invoke-interface {p1}, Lorg/eclipse/jdt/core/ICompilationUnit;->getImports()[Lorg/eclipse/jdt/core/IImportDeclaration;

    move-result-object v0

    array-length v0, v0

    new-instance v1, Lorg/eclipse/jdt/internal/core/JavaElementDelta;

    invoke-direct {v1, p1}, Lorg/eclipse/jdt/internal/core/JavaElementDelta;-><init>(Lorg/eclipse/jdt/core/IJavaElement;)V

    iget-object v2, p0, Lorg/eclipse/jdt/internal/core/DeleteElementsOperation;->childrenToRemove:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/eclipse/jdt/core/IRegion;

    invoke-interface {v2}, Lorg/eclipse/jdt/core/IRegion;->getElements()[Lorg/eclipse/jdt/core/IJavaElement;

    move-result-object v2

    array-length v3, v2

    const/4 v4, 0x0

    :goto_0
    if-lt v4, v3, :cond_1

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/core/JavaElementDelta;->getAffectedChildren()[Lorg/eclipse/jdt/core/IJavaElementDelta;

    move-result-object v0

    array-length v0, v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/internal/core/JavaModelOperation;->getSubProgressMonitor(I)Lorg/eclipse/core/runtime/IProgressMonitor;

    move-result-object v0

    iget-boolean v2, p0, Lorg/eclipse/jdt/internal/core/JavaModelOperation;->force:Z

    invoke-interface {p1, v0, v2}, Lorg/eclipse/jdt/core/IOpenable;->save(Lorg/eclipse/core/runtime/IProgressMonitor;Z)V

    invoke-interface {p1}, Lorg/eclipse/jdt/core/ICompilationUnit;->isWorkingCopy()Z

    move-result p1

    if-nez p1, :cond_0

    invoke-virtual {p0, v1}, Lorg/eclipse/jdt/internal/core/JavaModelOperation;->addDelta(Lorg/eclipse/jdt/core/IJavaElementDelta;)V

    const-string p1, "hasModifiedResource"

    const-string v0, "true"

    invoke-static {p1, v0}, Lorg/eclipse/jdt/internal/core/JavaModelOperation;->setAttribute(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    return-void

    :cond_1
    aget-object v5, v2, v4

    invoke-interface {v5}, Lorg/eclipse/jdt/core/IJavaElement;->exists()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-direct {p0, v5, p1}, Lorg/eclipse/jdt/internal/core/DeleteElementsOperation;->deleteElement(Lorg/eclipse/jdt/core/IJavaElement;Lorg/eclipse/jdt/core/ICompilationUnit;)V

    invoke-virtual {v1, v5}, Lorg/eclipse/jdt/internal/core/JavaElementDelta;->removed(Lorg/eclipse/jdt/core/IJavaElement;)V

    invoke-interface {v5}, Lorg/eclipse/jdt/core/IJavaElement;->getElementType()I

    move-result v5

    const/16 v6, 0xd

    if-ne v5, v6, :cond_2

    add-int/lit8 v0, v0, -0x1

    if-nez v0, :cond_2

    invoke-interface {p1}, Lorg/eclipse/jdt/core/ICompilationUnit;->getImportContainer()Lorg/eclipse/jdt/core/IImportContainer;

    move-result-object v5

    invoke-virtual {v1, v5}, Lorg/eclipse/jdt/internal/core/JavaElementDelta;->removed(Lorg/eclipse/jdt/core/IJavaElement;)V

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0
.end method

.method public processElements()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/JavaModelException;
        }
    .end annotation

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/DeleteElementsOperation;->groupElements()V

    invoke-super {p0}, Lorg/eclipse/jdt/internal/core/MultiOperation;->processElements()V

    return-void
.end method

.method public verify(Lorg/eclipse/jdt/core/IJavaElement;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/JavaModelException;
        }
    .end annotation

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/DeleteElementsOperation;->childrenToRemove:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/eclipse/jdt/core/IRegion;

    invoke-interface {p1}, Lorg/eclipse/jdt/core/IRegion;->getElements()[Lorg/eclipse/jdt/core/IJavaElement;

    move-result-object p1

    const/4 v0, 0x0

    :goto_0
    array-length v1, p1

    if-lt v0, v1, :cond_0

    return-void

    :cond_0
    aget-object v1, p1, v0

    invoke-interface {v1}, Lorg/eclipse/jdt/core/IJavaElement;->getCorrespondingResource()Lorg/eclipse/core/resources/IResource;

    move-result-object v2

    if-eqz v2, :cond_1

    const/16 v2, 0x3c7

    invoke-virtual {p0, v2, v1}, Lorg/eclipse/jdt/internal/core/MultiOperation;->error(ILorg/eclipse/jdt/core/IJavaElement;)V

    :cond_1
    invoke-interface {v1}, Lorg/eclipse/jdt/core/IJavaElement;->isReadOnly()Z

    move-result v2

    if-eqz v2, :cond_2

    const/16 v2, 0x3d0

    invoke-virtual {p0, v2, v1}, Lorg/eclipse/jdt/internal/core/MultiOperation;->error(ILorg/eclipse/jdt/core/IJavaElement;)V

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method
