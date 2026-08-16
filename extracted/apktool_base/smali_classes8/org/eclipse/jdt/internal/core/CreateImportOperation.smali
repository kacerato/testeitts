.class public Lorg/eclipse/jdt/internal/core/CreateImportOperation;
.super Lorg/eclipse/jdt/internal/core/CreateElementInCUOperation;
.source "SourceFile"


# instance fields
.field protected flags:I

.field protected importName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lorg/eclipse/jdt/core/ICompilationUnit;I)V
    .locals 0

    invoke-direct {p0, p2}, Lorg/eclipse/jdt/internal/core/CreateElementInCUOperation;-><init>(Lorg/eclipse/jdt/core/IJavaElement;)V

    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/CreateImportOperation;->importName:Ljava/lang/String;

    iput p3, p0, Lorg/eclipse/jdt/internal/core/CreateImportOperation;->flags:I

    return-void
.end method


# virtual methods
.method public generateElementAST(Lorg/eclipse/jdt/core/dom/rewrite/ASTRewrite;Lorg/eclipse/jdt/core/ICompilationUnit;)Lorg/eclipse/jdt/core/dom/ASTNode;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/JavaModelException;
        }
    .end annotation

    iget-object p1, p0, Lorg/eclipse/jdt/internal/core/CreateElementInCUOperation;->cuAST:Lorg/eclipse/jdt/core/dom/CompilationUnit;

    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/CompilationUnit;->imports()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    iget-object p2, p0, Lorg/eclipse/jdt/internal/core/CreateImportOperation;->importName:Ljava/lang/String;

    const-string v0, ".*"

    invoke-virtual {p2, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p2

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/CreateImportOperation;->importName:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz p2, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x2

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_3

    iget-object p1, p0, Lorg/eclipse/jdt/internal/core/CreateElementInCUOperation;->cuAST:Lorg/eclipse/jdt/core/dom/CompilationUnit;

    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/ASTNode;->getAST()Lorg/eclipse/jdt/core/dom/AST;

    move-result-object v2

    invoke-virtual {v2}, Lorg/eclipse/jdt/core/dom/AST;->newImportDeclaration()Lorg/eclipse/jdt/core/dom/ImportDeclaration;

    move-result-object v3

    iget p1, p0, Lorg/eclipse/jdt/internal/core/CreateImportOperation;->flags:I

    invoke-static {p1}, Lorg/eclipse/jdt/core/Flags;->isStatic(I)Z

    move-result p1

    invoke-virtual {v3, p1}, Lorg/eclipse/jdt/core/dom/ImportDeclaration;->setStatic(Z)V

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object p1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v4, 0x2e

    invoke-static {v4, p1, v1, v0}, Lorg/eclipse/jdt/core/compiler/CharOperation;->splitOn(C[CII)[[C

    move-result-object v4

    array-length v5, v4

    new-array v6, v5, [Ljava/lang/String;

    :goto_0
    if-lt v1, v5, :cond_2

    invoke-virtual {v2, v6}, Lorg/eclipse/jdt/core/dom/AST;->newName([Ljava/lang/String;)Lorg/eclipse/jdt/core/dom/Name;

    move-result-object p1

    invoke-virtual {v3, p1}, Lorg/eclipse/jdt/core/dom/ImportDeclaration;->setName(Lorg/eclipse/jdt/core/dom/Name;)V

    if-eqz p2, :cond_1

    const/4 p1, 0x1

    invoke-virtual {v3, p1}, Lorg/eclipse/jdt/core/dom/ImportDeclaration;->setOnDemand(Z)V

    :cond_1
    return-object v3

    :cond_2
    aget-object p1, v4, v1

    invoke-static {p1}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v6, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/eclipse/jdt/core/dom/ImportDeclaration;

    invoke-virtual {v2}, Lorg/eclipse/jdt/core/dom/ImportDeclaration;->getName()Lorg/eclipse/jdt/core/dom/Name;

    move-result-object v3

    invoke-virtual {v3}, Lorg/eclipse/jdt/core/dom/Name;->getFullyQualifiedName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v2}, Lorg/eclipse/jdt/core/dom/ImportDeclaration;->isOnDemand()Z

    move-result v3

    if-ne p2, v3, :cond_0

    iget v3, p0, Lorg/eclipse/jdt/internal/core/CreateImportOperation;->flags:I

    invoke-static {v3}, Lorg/eclipse/jdt/core/Flags;->isStatic(I)Z

    move-result v3

    invoke-virtual {v2}, Lorg/eclipse/jdt/core/dom/ImportDeclaration;->isStatic()Z

    move-result v2

    if-ne v3, v2, :cond_0

    iput-boolean v1, p0, Lorg/eclipse/jdt/internal/core/CreateElementInCUOperation;->creationOccurred:Z

    const/4 p1, 0x0

    return-object p1
.end method

.method public generateResultHandle()Lorg/eclipse/jdt/core/IJavaElement;
    .locals 2

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/CreateElementInCUOperation;->getCompilationUnit()Lorg/eclipse/jdt/core/ICompilationUnit;

    move-result-object v0

    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/CreateImportOperation;->importName:Ljava/lang/String;

    invoke-interface {v0, v1}, Lorg/eclipse/jdt/core/ICompilationUnit;->getImport(Ljava/lang/String;)Lorg/eclipse/jdt/core/IImportDeclaration;

    move-result-object v0

    return-object v0
.end method

.method public getChildPropertyDescriptor(Lorg/eclipse/jdt/core/dom/ASTNode;)Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;
    .locals 0

    sget-object p1, Lorg/eclipse/jdt/core/dom/CompilationUnit;->IMPORTS_PROPERTY:Lorg/eclipse/jdt/core/dom/ChildListPropertyDescriptor;

    return-object p1
.end method

.method public getMainTaskName()Ljava/lang/String;
    .locals 1

    sget-object v0, Lorg/eclipse/jdt/internal/core/util/Messages;->operation_createImportsProgress:Ljava/lang/String;

    return-object v0
.end method

.method public initializeDefaultPosition()V
    .locals 4

    :try_start_0
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/CreateElementInCUOperation;->getCompilationUnit()Lorg/eclipse/jdt/core/ICompilationUnit;

    move-result-object v0

    invoke-interface {v0}, Lorg/eclipse/jdt/core/ICompilationUnit;->getImports()[Lorg/eclipse/jdt/core/IImportDeclaration;

    move-result-object v1

    array-length v2, v1

    if-lez v2, :cond_0

    array-length v0, v1

    add-int/lit8 v0, v0, -0x1

    aget-object v0, v1, v0

    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/internal/core/CreateElementInCUOperation;->createAfter(Lorg/eclipse/jdt/core/IJavaElement;)V

    return-void

    :cond_0
    invoke-interface {v0}, Lorg/eclipse/jdt/core/ICompilationUnit;->getTypes()[Lorg/eclipse/jdt/core/IType;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    if-lez v2, :cond_1

    aget-object v0, v1, v3

    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/internal/core/CreateElementInCUOperation;->createBefore(Lorg/eclipse/jdt/core/IJavaElement;)V

    return-void

    :cond_1
    invoke-interface {v0}, Lorg/eclipse/jdt/core/IParent;->getChildren()[Lorg/eclipse/jdt/core/IJavaElement;

    move-result-object v0

    :goto_0
    array-length v1, v0

    if-lt v3, v1, :cond_2

    goto :goto_1

    :cond_2
    aget-object v1, v0, v3

    invoke-interface {v1}, Lorg/eclipse/jdt/core/IJavaElement;->getElementType()I

    move-result v1

    const/16 v2, 0xb

    if-ne v1, v2, :cond_3

    aget-object v0, v0, v3

    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/internal/core/CreateElementInCUOperation;->createAfter(Lorg/eclipse/jdt/core/IJavaElement;)V
    :try_end_0
    .catch Lorg/eclipse/jdt/core/JavaModelException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :catch_0
    :goto_1
    return-void
.end method

.method public verify()Lorg/eclipse/jdt/core/IJavaModelStatus;
    .locals 5

    invoke-super {p0}, Lorg/eclipse/jdt/internal/core/CreateElementInCUOperation;->verify()Lorg/eclipse/jdt/core/IJavaModelStatus;

    move-result-object v0

    invoke-interface {v0}, Lorg/eclipse/jdt/core/IJavaModelStatus;->isOK()Z

    move-result v1

    if-nez v1, :cond_0

    return-object v0

    :cond_0
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/JavaModelOperation;->getParentElement()Lorg/eclipse/jdt/core/IJavaElement;

    move-result-object v0

    invoke-interface {v0}, Lorg/eclipse/jdt/core/IJavaElement;->getJavaProject()Lorg/eclipse/jdt/core/IJavaProject;

    move-result-object v0

    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/CreateImportOperation;->importName:Ljava/lang/String;

    const-string v2, "org.eclipse.jdt.core.compiler.source"

    const/4 v3, 0x1

    invoke-interface {v0, v2, v3}, Lorg/eclipse/jdt/core/IJavaProject;->getOption(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    const-string v4, "org.eclipse.jdt.core.compiler.compliance"

    invoke-interface {v0, v4, v3}, Lorg/eclipse/jdt/core/IJavaProject;->getOption(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v2, v0}, Lorg/eclipse/jdt/core/JavaConventions;->validateImportDeclaration(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/eclipse/core/runtime/IStatus;

    move-result-object v0

    invoke-interface {v0}, Lorg/eclipse/core/runtime/IStatus;->getSeverity()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    new-instance v0, Lorg/eclipse/jdt/internal/core/JavaModelStatus;

    const/16 v1, 0x3d7

    iget-object v2, p0, Lorg/eclipse/jdt/internal/core/CreateImportOperation;->importName:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lorg/eclipse/jdt/internal/core/JavaModelStatus;-><init>(ILjava/lang/String;)V

    return-object v0

    :cond_1
    sget-object v0, Lorg/eclipse/jdt/internal/core/JavaModelStatus;->VERIFIED_OK:Lorg/eclipse/jdt/core/IJavaModelStatus;

    return-object v0
.end method
