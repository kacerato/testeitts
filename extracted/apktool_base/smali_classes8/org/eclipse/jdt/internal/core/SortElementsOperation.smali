.class public Lorg/eclipse/jdt/internal/core/SortElementsOperation;
.super Lorg/eclipse/jdt/internal/core/JavaModelOperation;
.source "SourceFile"


# static fields
.field public static final CONTAINS_MALFORMED_NODES:Ljava/lang/String; = "malformed"


# instance fields
.field apiLevel:I

.field comparator:Ljava/util/Comparator;

.field positions:[I


# direct methods
.method public constructor <init>(I[Lorg/eclipse/jdt/core/IJavaElement;[ILjava/util/Comparator;)V
    .locals 0

    invoke-direct {p0, p2}, Lorg/eclipse/jdt/internal/core/JavaModelOperation;-><init>([Lorg/eclipse/jdt/core/IJavaElement;)V

    iput-object p4, p0, Lorg/eclipse/jdt/internal/core/SortElementsOperation;->comparator:Ljava/util/Comparator;

    iput-object p3, p0, Lorg/eclipse/jdt/internal/core/SortElementsOperation;->positions:[I

    iput p1, p0, Lorg/eclipse/jdt/internal/core/SortElementsOperation;->apiLevel:I

    return-void
.end method

.method private static covers(Lorg/eclipse/text/edits/TextEdit;Lorg/eclipse/text/edits/TextEdit;)Z
    .locals 4

    invoke-virtual {p0}, Lorg/eclipse/text/edits/TextEdit;->getLength()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p0}, Lorg/eclipse/text/edits/TextEdit;->getOffset()I

    move-result v0

    invoke-virtual {p0}, Lorg/eclipse/text/edits/TextEdit;->getExclusiveEnd()I

    move-result p0

    invoke-virtual {p1}, Lorg/eclipse/text/edits/TextEdit;->getLength()I

    move-result v2

    const/4 v3, 0x1

    if-nez v2, :cond_2

    invoke-virtual {p1}, Lorg/eclipse/text/edits/TextEdit;->getOffset()I

    move-result p1

    if-gt v0, p1, :cond_1

    if-ge p1, p0, :cond_1

    return v3

    :cond_1
    return v1

    :cond_2
    invoke-virtual {p1}, Lorg/eclipse/text/edits/TextEdit;->getOffset()I

    move-result v2

    invoke-virtual {p1}, Lorg/eclipse/text/edits/TextEdit;->getExclusiveEnd()I

    move-result p1

    if-gt v0, v2, :cond_3

    if-gt p1, p0, :cond_3

    return v3

    :cond_3
    return v1
.end method

.method public static insert(Lorg/eclipse/text/edits/TextEdit;Lorg/eclipse/text/edits/TextEdit;)V
    .locals 4

    invoke-virtual {p0}, Lorg/eclipse/text/edits/TextEdit;->hasChildren()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Lorg/eclipse/text/edits/TextEdit;->addChild(Lorg/eclipse/text/edits/TextEdit;)V

    return-void

    :cond_0
    invoke-virtual {p0}, Lorg/eclipse/text/edits/TextEdit;->getChildren()[Lorg/eclipse/text/edits/TextEdit;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    array-length v2, v0

    if-lt v1, v2, :cond_3

    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    :goto_1
    if-gez v1, :cond_1

    invoke-virtual {p0, p1}, Lorg/eclipse/text/edits/TextEdit;->addChild(Lorg/eclipse/text/edits/TextEdit;)V

    return-void

    :cond_1
    aget-object v2, v0, v1

    invoke-static {p1, v2}, Lorg/eclipse/jdt/internal/core/SortElementsOperation;->covers(Lorg/eclipse/text/edits/TextEdit;Lorg/eclipse/text/edits/TextEdit;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {p0, v1}, Lorg/eclipse/text/edits/TextEdit;->removeChild(I)Lorg/eclipse/text/edits/TextEdit;

    invoke-virtual {p1, v2}, Lorg/eclipse/text/edits/TextEdit;->addChild(Lorg/eclipse/text/edits/TextEdit;)V

    :cond_2
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    :cond_3
    aget-object v2, v0, v1

    invoke-static {v2, p1}, Lorg/eclipse/jdt/internal/core/SortElementsOperation;->covers(Lorg/eclipse/text/edits/TextEdit;Lorg/eclipse/text/edits/TextEdit;)Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-static {v2, p1}, Lorg/eclipse/jdt/internal/core/SortElementsOperation;->insert(Lorg/eclipse/text/edits/TextEdit;Lorg/eclipse/text/edits/TextEdit;)V

    return-void

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private processElement(Lorg/eclipse/jdt/core/ICompilationUnit;[C)Ljava/lang/String;
    .locals 6

    new-instance v0, Lorg/eclipse/jface/text/Document;

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p2}, Ljava/lang/String;-><init>([C)V

    invoke-direct {v0, v1}, Lorg/eclipse/jface/text/Document;-><init>(Ljava/lang/String;)V

    new-instance v1, Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;

    invoke-interface {p1}, Lorg/eclipse/jdt/core/IJavaElement;->getJavaProject()Lorg/eclipse/jdt/core/IJavaProject;

    move-result-object v2

    const/4 v3, 0x1

    invoke-interface {v2, v3}, Lorg/eclipse/jdt/core/IJavaProject;->getOptions(Z)Ljava/util/Map;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;-><init>(Ljava/util/Map;)V

    iget v2, p0, Lorg/eclipse/jdt/internal/core/SortElementsOperation;->apiLevel:I

    invoke-static {v2}, Lorg/eclipse/jdt/core/dom/ASTParser;->newParser(I)Lorg/eclipse/jdt/core/dom/ASTParser;

    move-result-object v2

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;->getMap()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v2, v1}, Lorg/eclipse/jdt/core/dom/ASTParser;->setCompilerOptions(Ljava/util/Map;)V

    invoke-virtual {v2, p2}, Lorg/eclipse/jdt/core/dom/ASTParser;->setSource([C)V

    const/16 p2, 0x8

    invoke-virtual {v2, p2}, Lorg/eclipse/jdt/core/dom/ASTParser;->setKind(I)V

    const/4 p2, 0x0

    invoke-virtual {v2, p2}, Lorg/eclipse/jdt/core/dom/ASTParser;->setResolveBindings(Z)V

    const/4 v1, 0x0

    invoke-virtual {v2, v1}, Lorg/eclipse/jdt/core/dom/ASTParser;->createAST(Lorg/eclipse/core/runtime/IProgressMonitor;)Lorg/eclipse/jdt/core/dom/ASTNode;

    move-result-object v2

    check-cast v2, Lorg/eclipse/jdt/core/dom/CompilationUnit;

    invoke-direct {p0, v2, v1}, Lorg/eclipse/jdt/internal/core/SortElementsOperation;->sortCompilationUnit(Lorg/eclipse/jdt/core/dom/CompilationUnit;Lorg/eclipse/text/edits/TextEditGroup;)Lorg/eclipse/jdt/core/dom/rewrite/ASTRewrite;

    move-result-object v2

    if-nez v2, :cond_0

    invoke-virtual {v0}, Lorg/eclipse/jface/text/Document;->get()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-interface {p1}, Lorg/eclipse/jdt/core/IJavaElement;->getJavaProject()Lorg/eclipse/jdt/core/IJavaProject;

    move-result-object p1

    invoke-interface {p1, v3}, Lorg/eclipse/jdt/core/IJavaProject;->getOptions(Z)Ljava/util/Map;

    move-result-object p1

    invoke-virtual {v2, v0, p1}, Lorg/eclipse/jdt/core/dom/rewrite/ASTRewrite;->rewriteAST(Lorg/eclipse/jface/text/IDocument;Ljava/util/Map;)Lorg/eclipse/text/edits/TextEdit;

    move-result-object p1

    iget-object v2, p0, Lorg/eclipse/jdt/internal/core/SortElementsOperation;->positions:[I

    if-eqz v2, :cond_2

    array-length v1, v2

    new-array v3, v1, [Lorg/eclipse/text/edits/RangeMarker;

    array-length v2, v2

    move v1, p2

    :goto_0
    if-lt v1, v2, :cond_1

    move-object v1, v3

    goto :goto_1

    :cond_1
    new-instance v4, Lorg/eclipse/text/edits/RangeMarker;

    iget-object v5, p0, Lorg/eclipse/jdt/internal/core/SortElementsOperation;->positions:[I

    aget v5, v5, v1

    invoke-direct {v4, v5, p2}, Lorg/eclipse/text/edits/RangeMarker;-><init>(II)V

    aput-object v4, v3, v1

    invoke-static {p1, v4}, Lorg/eclipse/jdt/internal/core/SortElementsOperation;->insert(Lorg/eclipse/text/edits/TextEdit;Lorg/eclipse/text/edits/TextEdit;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    const/4 v2, 0x2

    :try_start_0
    invoke-virtual {p1, v0, v2}, Lorg/eclipse/text/edits/TextEdit;->apply(Lorg/eclipse/jface/text/IDocument;I)Lorg/eclipse/text/edits/UndoEdit;

    iget-object p1, p0, Lorg/eclipse/jdt/internal/core/SortElementsOperation;->positions:[I

    if-eqz p1, :cond_4

    array-length p1, v1

    :goto_2
    if-lt p2, p1, :cond_3

    goto :goto_3

    :cond_3
    iget-object v2, p0, Lorg/eclipse/jdt/internal/core/SortElementsOperation;->positions:[I

    aget-object v3, v1, p2

    invoke-virtual {v3}, Lorg/eclipse/text/edits/RangeMarker;->getOffset()I

    move-result v3

    aput v3, v2, p2
    :try_end_0
    .catch Lorg/eclipse/jface/text/BadLocationException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 p2, p2, 0x1

    goto :goto_2

    :catch_0
    :cond_4
    :goto_3
    invoke-virtual {v0}, Lorg/eclipse/jface/text/Document;->get()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private sortCompilationUnit(Lorg/eclipse/jdt/core/dom/CompilationUnit;Lorg/eclipse/text/edits/TextEditGroup;)Lorg/eclipse/jdt/core/dom/rewrite/ASTRewrite;
    .locals 3

    new-instance v0, Lorg/eclipse/jdt/internal/core/SortElementsOperation$1;

    invoke-direct {v0, p0}, Lorg/eclipse/jdt/internal/core/SortElementsOperation$1;-><init>(Lorg/eclipse/jdt/internal/core/SortElementsOperation;)V

    invoke-virtual {p1, v0}, Lorg/eclipse/jdt/core/dom/ASTNode;->accept(Lorg/eclipse/jdt/core/dom/ASTVisitor;)V

    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/ASTNode;->getAST()Lorg/eclipse/jdt/core/dom/AST;

    move-result-object v0

    invoke-static {v0}, Lorg/eclipse/jdt/core/dom/rewrite/ASTRewrite;->create(Lorg/eclipse/jdt/core/dom/AST;)Lorg/eclipse/jdt/core/dom/rewrite/ASTRewrite;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Z

    new-instance v2, Lorg/eclipse/jdt/internal/core/SortElementsOperation$2;

    invoke-direct {v2, p0, v0, p2, v1}, Lorg/eclipse/jdt/internal/core/SortElementsOperation$2;-><init>(Lorg/eclipse/jdt/internal/core/SortElementsOperation;Lorg/eclipse/jdt/core/dom/rewrite/ASTRewrite;Lorg/eclipse/text/edits/TextEditGroup;[Z)V

    invoke-virtual {p1, v2}, Lorg/eclipse/jdt/core/dom/ASTNode;->accept(Lorg/eclipse/jdt/core/dom/ASTVisitor;)V

    const/4 p1, 0x0

    aget-boolean p1, v1, p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    return-object v0
.end method


# virtual methods
.method public calculateEdit(Lorg/eclipse/jdt/core/dom/CompilationUnit;Lorg/eclipse/text/edits/TextEditGroup;)Lorg/eclipse/text/edits/TextEdit;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/JavaModelException;
        }
    .end annotation

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/JavaModelOperation;->elementsToProcess:[Lorg/eclipse/jdt/core/IJavaElement;

    array-length v1, v0

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    const/4 v1, 0x0

    aget-object v0, v0, v1

    instance-of v0, v0, Lorg/eclipse/jdt/core/ICompilationUnit;

    if-eqz v0, :cond_1

    :try_start_0
    sget-object v0, Lorg/eclipse/jdt/internal/core/util/Messages;->operation_sortelements:Ljava/lang/String;

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/SortElementsOperation;->getMainAmountOfWork()I

    move-result v3

    invoke-virtual {p0, v0, v3}, Lorg/eclipse/jdt/internal/core/JavaModelOperation;->beginTask(Ljava/lang/String;I)V

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/JavaModelOperation;->elementsToProcess:[Lorg/eclipse/jdt/core/IJavaElement;

    aget-object v0, v0, v1

    check-cast v0, Lorg/eclipse/jdt/core/ICompilationUnit;

    invoke-interface {v0}, Lorg/eclipse/jdt/core/IOpenable;->getBuffer()Lorg/eclipse/jdt/core/IBuffer;

    move-result-object v1

    invoke-interface {v1}, Lorg/eclipse/jdt/core/IBuffer;->getContents()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p1, p2}, Lorg/eclipse/jdt/internal/core/SortElementsOperation;->sortCompilationUnit(Lorg/eclipse/jdt/core/dom/CompilationUnit;Lorg/eclipse/text/edits/TextEditGroup;)Lorg/eclipse/jdt/core/dom/rewrite/ASTRewrite;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/JavaModelOperation;->done()V

    const/4 p1, 0x0

    return-object p1

    :cond_0
    :try_start_1
    new-instance p2, Lorg/eclipse/jface/text/Document;

    invoke-direct {p2, v1}, Lorg/eclipse/jface/text/Document;-><init>(Ljava/lang/String;)V

    invoke-interface {v0}, Lorg/eclipse/jdt/core/IJavaElement;->getJavaProject()Lorg/eclipse/jdt/core/IJavaProject;

    move-result-object v0

    invoke-interface {v0, v2}, Lorg/eclipse/jdt/core/IJavaProject;->getOptions(Z)Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Lorg/eclipse/jdt/core/dom/rewrite/ASTRewrite;->rewriteAST(Lorg/eclipse/jface/text/IDocument;Ljava/util/Map;)Lorg/eclipse/text/edits/TextEdit;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/JavaModelOperation;->done()V

    return-object p1

    :catchall_0
    move-exception p1

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/JavaModelOperation;->done()V

    throw p1

    :cond_1
    new-instance p1, Lorg/eclipse/jdt/core/JavaModelException;

    new-instance p2, Lorg/eclipse/jdt/internal/core/JavaModelStatus;

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/JavaModelOperation;->elementsToProcess:[Lorg/eclipse/jdt/core/IJavaElement;

    aget-object v0, v0, v1

    const/16 v1, 0x3c7

    invoke-direct {p2, v1, v0}, Lorg/eclipse/jdt/internal/core/JavaModelStatus;-><init>(ILorg/eclipse/jdt/core/IJavaElement;)V

    invoke-direct {p1, p2}, Lorg/eclipse/jdt/core/JavaModelException;-><init>(Lorg/eclipse/jdt/core/IJavaModelStatus;)V

    throw p1

    :cond_2
    new-instance p1, Lorg/eclipse/jdt/core/JavaModelException;

    new-instance p2, Lorg/eclipse/jdt/internal/core/JavaModelStatus;

    const/16 v0, 0x3c8

    invoke-direct {p2, v0}, Lorg/eclipse/jdt/internal/core/JavaModelStatus;-><init>(I)V

    invoke-direct {p1, p2}, Lorg/eclipse/jdt/core/JavaModelException;-><init>(Lorg/eclipse/jdt/core/IJavaModelStatus;)V

    throw p1
.end method

.method public checkMalformedNodes(Lorg/eclipse/jdt/core/dom/ASTNode;)Z
    .locals 1

    const-string v0, "malformed"

    invoke-virtual {p1, v0}, Lorg/eclipse/jdt/core/dom/ASTNode;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1
.end method

.method public executeOperation()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/JavaModelException;
        }
    .end annotation

    :try_start_0
    sget-object v0, Lorg/eclipse/jdt/internal/core/util/Messages;->operation_sortelements:Ljava/lang/String;

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/SortElementsOperation;->getMainAmountOfWork()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lorg/eclipse/jdt/internal/core/JavaModelOperation;->beginTask(Ljava/lang/String;I)V

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/JavaModelOperation;->elementsToProcess:[Lorg/eclipse/jdt/core/IJavaElement;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    check-cast v0, Lorg/eclipse/jdt/internal/core/CompilationUnit;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/core/CompilationUnit;->getPrimary()Lorg/eclipse/jdt/core/ICompilationUnit;

    move-result-object v1

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/core/Openable;->getBuffer()Lorg/eclipse/jdt/core/IBuffer;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_0

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/JavaModelOperation;->done()V

    return-void

    :cond_0
    :try_start_1
    invoke-interface {v2}, Lorg/eclipse/jdt/core/IBuffer;->getCharacters()[C

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lorg/eclipse/jdt/internal/core/SortElementsOperation;->processElement(Lorg/eclipse/jdt/core/ICompilationUnit;[C)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v3

    invoke-static {v3, v2}, Lorg/eclipse/jdt/core/compiler/CharOperation;->equals([C[C)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/core/Openable;->getBuffer()Lorg/eclipse/jdt/core/IBuffer;

    move-result-object v0

    invoke-interface {v0, v1}, Lorg/eclipse/jdt/core/IBuffer;->setContents(Ljava/lang/String;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/internal/core/JavaModelOperation;->worked(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/JavaModelOperation;->done()V

    return-void

    :goto_1
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/JavaModelOperation;->done()V

    throw v0
.end method

.method public getMainAmountOfWork()I
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/JavaModelOperation;->elementsToProcess:[Lorg/eclipse/jdt/core/IJavaElement;

    array-length v0, v0

    return v0
.end method

.method public isMalformed(Lorg/eclipse/jdt/core/dom/ASTNode;)Z
    .locals 1

    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/ASTNode;->getFlags()I

    move-result p1

    const/4 v0, 0x1

    and-int/2addr p1, v0

    if-eqz p1, :cond_0

    return v0

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public verify()Lorg/eclipse/jdt/core/IJavaModelStatus;
    .locals 4

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/JavaModelOperation;->elementsToProcess:[Lorg/eclipse/jdt/core/IJavaElement;

    array-length v1, v0

    const/4 v2, 0x1

    const/16 v3, 0x3c8

    if-eq v1, v2, :cond_0

    new-instance v0, Lorg/eclipse/jdt/internal/core/JavaModelStatus;

    invoke-direct {v0, v3}, Lorg/eclipse/jdt/internal/core/JavaModelStatus;-><init>(I)V

    return-object v0

    :cond_0
    const/4 v1, 0x0

    aget-object v0, v0, v1

    if-nez v0, :cond_1

    new-instance v0, Lorg/eclipse/jdt/internal/core/JavaModelStatus;

    invoke-direct {v0, v3}, Lorg/eclipse/jdt/internal/core/JavaModelStatus;-><init>(I)V

    return-object v0

    :cond_1
    instance-of v2, v0, Lorg/eclipse/jdt/core/ICompilationUnit;

    if-eqz v2, :cond_3

    check-cast v0, Lorg/eclipse/jdt/core/ICompilationUnit;

    invoke-interface {v0}, Lorg/eclipse/jdt/core/ICompilationUnit;->isWorkingCopy()Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    sget-object v0, Lorg/eclipse/jdt/internal/core/JavaModelStatus;->VERIFIED_OK:Lorg/eclipse/jdt/core/IJavaModelStatus;

    return-object v0

    :cond_3
    :goto_0
    new-instance v0, Lorg/eclipse/jdt/internal/core/JavaModelStatus;

    iget-object v2, p0, Lorg/eclipse/jdt/internal/core/JavaModelOperation;->elementsToProcess:[Lorg/eclipse/jdt/core/IJavaElement;

    aget-object v1, v2, v1

    const/16 v2, 0x3c7

    invoke-direct {v0, v2, v1}, Lorg/eclipse/jdt/internal/core/JavaModelStatus;-><init>(ILorg/eclipse/jdt/core/IJavaElement;)V

    return-object v0
.end method
