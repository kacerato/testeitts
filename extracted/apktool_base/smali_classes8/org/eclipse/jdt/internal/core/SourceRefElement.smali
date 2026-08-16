.class public abstract Lorg/eclipse/jdt/internal/core/SourceRefElement;
.super Lorg/eclipse/jdt/internal/core/JavaElement;
.source "SourceFile"

# interfaces
.implements Lorg/eclipse/jdt/core/ISourceReference;


# instance fields
.field public occurrenceCount:I


# direct methods
.method public constructor <init>(Lorg/eclipse/jdt/internal/core/JavaElement;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/core/JavaElement;-><init>(Lorg/eclipse/jdt/internal/core/JavaElement;)V

    const/4 p1, 0x1

    iput p1, p0, Lorg/eclipse/jdt/internal/core/SourceRefElement;->occurrenceCount:I

    return-void
.end method


# virtual methods
.method public closing(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/JavaModelException;
        }
    .end annotation

    return-void
.end method

.method public copy(Lorg/eclipse/jdt/core/IJavaElement;Lorg/eclipse/jdt/core/IJavaElement;Ljava/lang/String;ZLorg/eclipse/core/runtime/IProgressMonitor;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/JavaModelException;
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_2

    new-array v3, v1, [Lorg/eclipse/jdt/core/IJavaElement;

    aput-object p0, v3, v0

    new-array v4, v1, [Lorg/eclipse/jdt/core/IJavaElement;

    aput-object p1, v4, v0

    const/4 p1, 0x0

    if-eqz p2, :cond_0

    new-array v2, v1, [Lorg/eclipse/jdt/core/IJavaElement;

    aput-object p2, v2, v0

    move-object v5, v2

    goto :goto_0

    :cond_0
    move-object v5, p1

    :goto_0
    if-eqz p3, :cond_1

    new-array p1, v1, [Ljava/lang/String;

    aput-object p3, p1, v0

    :cond_1
    move-object v6, p1

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/JavaElement;->getJavaModel()Lorg/eclipse/jdt/core/IJavaModel;

    move-result-object v2

    move v7, p4

    move-object v8, p5

    invoke-interface/range {v2 .. v8}, Lorg/eclipse/jdt/core/IJavaModel;->copy([Lorg/eclipse/jdt/core/IJavaElement;[Lorg/eclipse/jdt/core/IJavaElement;[Lorg/eclipse/jdt/core/IJavaElement;[Ljava/lang/String;ZLorg/eclipse/core/runtime/IProgressMonitor;)V

    return-void

    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    sget-object p2, Lorg/eclipse/jdt/internal/core/util/Messages;->operation_nullContainer:Ljava/lang/String;

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public createElementInfo()Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public delete(ZLorg/eclipse/core/runtime/IProgressMonitor;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/JavaModelException;
        }
    .end annotation

    const/4 v0, 0x1

    new-array v0, v0, [Lorg/eclipse/jdt/core/IJavaElement;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/JavaElement;->getJavaModel()Lorg/eclipse/jdt/core/IJavaModel;

    move-result-object v1

    invoke-interface {v1, v0, p1, p2}, Lorg/eclipse/jdt/core/IJavaModel;->delete([Lorg/eclipse/jdt/core/IJavaElement;ZLorg/eclipse/core/runtime/IProgressMonitor;)V

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    instance-of v0, p1, Lorg/eclipse/jdt/internal/core/SourceRefElement;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget v0, p0, Lorg/eclipse/jdt/internal/core/SourceRefElement;->occurrenceCount:I

    move-object v2, p1

    check-cast v2, Lorg/eclipse/jdt/internal/core/SourceRefElement;

    iget v2, v2, Lorg/eclipse/jdt/internal/core/SourceRefElement;->occurrenceCount:I

    if-ne v0, v2, :cond_1

    invoke-super {p0, p1}, Lorg/eclipse/jdt/internal/core/JavaElement;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    return v1
.end method

.method public findNode(Lorg/eclipse/jdt/core/dom/CompilationUnit;)Lorg/eclipse/jdt/core/dom/ASTNode;
    .locals 2

    new-instance v0, Lorg/eclipse/jdt/internal/core/util/DOMFinder;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p0, v1}, Lorg/eclipse/jdt/internal/core/util/DOMFinder;-><init>(Lorg/eclipse/jdt/core/dom/CompilationUnit;Lorg/eclipse/jdt/internal/core/SourceRefElement;Z)V

    :try_start_0
    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/core/util/DOMFinder;->search()Lorg/eclipse/jdt/core/dom/ASTNode;

    move-result-object p1
    :try_end_0
    .catch Lorg/eclipse/jdt/core/JavaModelException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public generateInfos(Ljava/lang/Object;Ljava/util/HashMap;Lorg/eclipse/core/runtime/IProgressMonitor;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/JavaModelException;
        }
    .end annotation

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/SourceRefElement;->getOpenableParent()Lorg/eclipse/jdt/core/IOpenable;

    move-result-object p1

    check-cast p1, Lorg/eclipse/jdt/internal/core/Openable;

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lorg/eclipse/jdt/internal/core/JavaModelManager;->getJavaModelManager()Lorg/eclipse/jdt/internal/core/JavaModelManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/eclipse/jdt/internal/core/JavaModelManager;->getInfo(Lorg/eclipse/jdt/core/IJavaElement;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jdt/internal/core/JavaElementInfo;

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/core/Openable;->createElementInfo()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, v0, p2, p3}, Lorg/eclipse/jdt/internal/core/Openable;->generateInfos(Ljava/lang/Object;Ljava/util/HashMap;Lorg/eclipse/core/runtime/IProgressMonitor;)V

    :cond_1
    return-void
.end method

.method public getAnnotation(Ljava/lang/String;)Lorg/eclipse/jdt/core/IAnnotation;
    .locals 1

    new-instance v0, Lorg/eclipse/jdt/internal/core/Annotation;

    invoke-direct {v0, p0, p1}, Lorg/eclipse/jdt/internal/core/Annotation;-><init>(Lorg/eclipse/jdt/internal/core/JavaElement;Ljava/lang/String;)V

    return-object v0
.end method

.method public getAnnotations()[Lorg/eclipse/jdt/core/IAnnotation;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/JavaModelException;
        }
    .end annotation

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/JavaElement;->getElementInfo()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jdt/internal/core/AnnotatableInfo;

    iget-object v0, v0, Lorg/eclipse/jdt/internal/core/AnnotatableInfo;->annotations:[Lorg/eclipse/jdt/core/IAnnotation;

    return-object v0
.end method

.method public getCompilationUnit()Lorg/eclipse/jdt/core/ICompilationUnit;
    .locals 1

    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/internal/core/JavaElement;->getAncestor(I)Lorg/eclipse/jdt/core/IJavaElement;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jdt/core/ICompilationUnit;

    return-object v0
.end method

.method public getCorrespondingResource()Lorg/eclipse/core/resources/IResource;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/JavaModelException;
        }
    .end annotation

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/JavaElement;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/JavaElement;->newNotPresentException()Lorg/eclipse/jdt/core/JavaModelException;

    move-result-object v0

    throw v0
.end method

.method public getHandleFromMemento(Ljava/lang/String;Lorg/eclipse/jdt/internal/core/util/MementoTokenizer;Lorg/eclipse/jdt/core/WorkingCopyOwner;)Lorg/eclipse/jdt/core/IJavaElement;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result p1

    const/16 v0, 0x21

    if-eq p1, v0, :cond_0

    return-object p0

    :cond_0
    invoke-virtual {p0, p2, p3}, Lorg/eclipse/jdt/internal/core/SourceRefElement;->getHandleUpdatingCountFromMemento(Lorg/eclipse/jdt/internal/core/util/MementoTokenizer;Lorg/eclipse/jdt/core/WorkingCopyOwner;)Lorg/eclipse/jdt/core/IJavaElement;

    move-result-object p1

    return-object p1
.end method

.method public getHandleMemento(Ljava/lang/StringBuffer;)V
    .locals 2

    invoke-super {p0, p1}, Lorg/eclipse/jdt/internal/core/JavaElement;->getHandleMemento(Ljava/lang/StringBuffer;)V

    iget v0, p0, Lorg/eclipse/jdt/internal/core/SourceRefElement;->occurrenceCount:I

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    const/16 v0, 0x21

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    iget v0, p0, Lorg/eclipse/jdt/internal/core/SourceRefElement;->occurrenceCount:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    :cond_0
    return-void
.end method

.method public getHandleUpdatingCountFromMemento(Lorg/eclipse/jdt/internal/core/util/MementoTokenizer;Lorg/eclipse/jdt/core/WorkingCopyOwner;)Lorg/eclipse/jdt/core/IJavaElement;
    .locals 1

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/core/util/MementoTokenizer;->hasMoreTokens()Z

    move-result v0

    if-nez v0, :cond_0

    return-object p0

    :cond_0
    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/core/util/MementoTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lorg/eclipse/jdt/internal/core/SourceRefElement;->occurrenceCount:I

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/core/util/MementoTokenizer;->hasMoreTokens()Z

    move-result v0

    if-nez v0, :cond_1

    return-object p0

    :cond_1
    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/core/util/MementoTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p1, p2}, Lorg/eclipse/jdt/internal/core/SourceRefElement;->getHandleFromMemento(Ljava/lang/String;Lorg/eclipse/jdt/internal/core/util/MementoTokenizer;Lorg/eclipse/jdt/core/WorkingCopyOwner;)Lorg/eclipse/jdt/core/IJavaElement;

    move-result-object p1

    return-object p1
.end method

.method public getOccurrenceCount()I
    .locals 1

    iget v0, p0, Lorg/eclipse/jdt/internal/core/SourceRefElement;->occurrenceCount:I

    return v0
.end method

.method public getOpenableParent()Lorg/eclipse/jdt/core/IOpenable;
    .locals 2

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/JavaElement;->getParent()Lorg/eclipse/jdt/core/IJavaElement;

    move-result-object v0

    :goto_0
    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    instance-of v1, v0, Lorg/eclipse/jdt/core/IOpenable;

    if-eqz v1, :cond_1

    check-cast v0, Lorg/eclipse/jdt/core/IOpenable;

    return-object v0

    :cond_1
    invoke-interface {v0}, Lorg/eclipse/jdt/core/IJavaElement;->getParent()Lorg/eclipse/jdt/core/IJavaElement;

    move-result-object v0

    goto :goto_0
.end method

.method public getPath()Lorg/eclipse/core/runtime/IPath;
    .locals 1

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/JavaElement;->getParent()Lorg/eclipse/jdt/core/IJavaElement;

    move-result-object v0

    invoke-interface {v0}, Lorg/eclipse/jdt/core/IJavaElement;->getPath()Lorg/eclipse/core/runtime/IPath;

    move-result-object v0

    return-object v0
.end method

.method public getSource()Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/JavaModelException;
        }
    .end annotation

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/SourceRefElement;->getOpenableParent()Lorg/eclipse/jdt/core/IOpenable;

    move-result-object v0

    invoke-interface {v0}, Lorg/eclipse/jdt/core/IOpenable;->getBuffer()Lorg/eclipse/jdt/core/IBuffer;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/SourceRefElement;->getSourceRange()Lorg/eclipse/jdt/core/ISourceRange;

    move-result-object v2

    invoke-interface {v2}, Lorg/eclipse/jdt/core/ISourceRange;->getOffset()I

    move-result v3

    invoke-interface {v2}, Lorg/eclipse/jdt/core/ISourceRange;->getLength()I

    move-result v2

    const/4 v4, -0x1

    if-eq v3, v4, :cond_2

    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    :try_start_0
    invoke-interface {v0, v3, v2}, Lorg/eclipse/jdt/core/IBuffer;->getText(II)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    :cond_2
    :goto_0
    return-object v1
.end method

.method public getSourceRange()Lorg/eclipse/jdt/core/ISourceRange;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/JavaModelException;
        }
    .end annotation

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/JavaElement;->getElementInfo()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jdt/internal/core/SourceRefElementInfo;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/core/SourceRefElementInfo;->getSourceRange()Lorg/eclipse/jdt/core/ISourceRange;

    move-result-object v0

    return-object v0
.end method

.method public getUnderlyingResource()Lorg/eclipse/core/resources/IResource;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/JavaModelException;
        }
    .end annotation

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/JavaElement;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/JavaElement;->getParent()Lorg/eclipse/jdt/core/IJavaElement;

    move-result-object v0

    invoke-interface {v0}, Lorg/eclipse/jdt/core/IJavaElement;->getUnderlyingResource()Lorg/eclipse/core/resources/IResource;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/JavaElement;->newNotPresentException()Lorg/eclipse/jdt/core/JavaModelException;

    move-result-object v0

    throw v0
.end method

.method public hasChildren()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/JavaModelException;
        }
    .end annotation

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/JavaElement;->getChildren()[Lorg/eclipse/jdt/core/IJavaElement;

    move-result-object v0

    array-length v0, v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isStructureKnown()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/JavaModelException;
        }
    .end annotation

    const/4 v0, 0x1

    return v0
.end method

.method public move(Lorg/eclipse/jdt/core/IJavaElement;Lorg/eclipse/jdt/core/IJavaElement;Ljava/lang/String;ZLorg/eclipse/core/runtime/IProgressMonitor;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/JavaModelException;
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_2

    new-array v3, v1, [Lorg/eclipse/jdt/core/IJavaElement;

    aput-object p0, v3, v0

    new-array v4, v1, [Lorg/eclipse/jdt/core/IJavaElement;

    aput-object p1, v4, v0

    const/4 p1, 0x0

    if-eqz p2, :cond_0

    new-array v2, v1, [Lorg/eclipse/jdt/core/IJavaElement;

    aput-object p2, v2, v0

    move-object v5, v2

    goto :goto_0

    :cond_0
    move-object v5, p1

    :goto_0
    if-eqz p3, :cond_1

    new-array p1, v1, [Ljava/lang/String;

    aput-object p3, p1, v0

    :cond_1
    move-object v6, p1

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/JavaElement;->getJavaModel()Lorg/eclipse/jdt/core/IJavaModel;

    move-result-object v2

    move v7, p4

    move-object v8, p5

    invoke-interface/range {v2 .. v8}, Lorg/eclipse/jdt/core/IJavaModel;->move([Lorg/eclipse/jdt/core/IJavaElement;[Lorg/eclipse/jdt/core/IJavaElement;[Lorg/eclipse/jdt/core/IJavaElement;[Ljava/lang/String;ZLorg/eclipse/core/runtime/IProgressMonitor;)V

    return-void

    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    sget-object p2, Lorg/eclipse/jdt/internal/core/util/Messages;->operation_nullContainer:Ljava/lang/String;

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public rename(Ljava/lang/String;ZLorg/eclipse/core/runtime/IProgressMonitor;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/JavaModelException;
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_0

    new-array v3, v1, [Lorg/eclipse/jdt/core/IJavaElement;

    aput-object p0, v3, v0

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/JavaElement;->getParent()Lorg/eclipse/jdt/core/IJavaElement;

    move-result-object v2

    new-array v4, v1, [Lorg/eclipse/jdt/core/IJavaElement;

    aput-object v2, v4, v0

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/JavaElement;->getJavaModel()Lorg/eclipse/jdt/core/IJavaModel;

    move-result-object v2

    move v6, p2

    move-object v7, p3

    invoke-interface/range {v2 .. v7}, Lorg/eclipse/jdt/core/IJavaModel;->rename([Lorg/eclipse/jdt/core/IJavaElement;[Lorg/eclipse/jdt/core/IJavaElement;[Ljava/lang/String;ZLorg/eclipse/core/runtime/IProgressMonitor;)V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    sget-object p2, Lorg/eclipse/jdt/internal/core/util/Messages;->element_nullName:Ljava/lang/String;

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public resource()Lorg/eclipse/core/resources/IResource;
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/JavaElement;->parent:Lorg/eclipse/jdt/internal/core/JavaElement;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/core/JavaElement;->resource()Lorg/eclipse/core/resources/IResource;

    move-result-object v0

    return-object v0
.end method

.method public toStringName(Ljava/lang/StringBuffer;)V
    .locals 2

    invoke-super {p0, p1}, Lorg/eclipse/jdt/internal/core/JavaElement;->toStringName(Ljava/lang/StringBuffer;)V

    iget v0, p0, Lorg/eclipse/jdt/internal/core/SourceRefElement;->occurrenceCount:I

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    const-string v0, "#"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v0, p0, Lorg/eclipse/jdt/internal/core/SourceRefElement;->occurrenceCount:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    :cond_0
    return-void
.end method
