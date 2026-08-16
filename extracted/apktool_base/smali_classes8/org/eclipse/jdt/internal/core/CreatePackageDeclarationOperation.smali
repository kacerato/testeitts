.class public Lorg/eclipse/jdt/internal/core/CreatePackageDeclarationOperation;
.super Lorg/eclipse/jdt/internal/core/CreateElementInCUOperation;
.source "SourceFile"


# instance fields
.field protected name:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lorg/eclipse/jdt/core/ICompilationUnit;)V
    .locals 0

    invoke-direct {p0, p2}, Lorg/eclipse/jdt/internal/core/CreateElementInCUOperation;-><init>(Lorg/eclipse/jdt/core/IJavaElement;)V

    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/CreatePackageDeclarationOperation;->name:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public generateElementAST(Lorg/eclipse/jdt/core/dom/rewrite/ASTRewrite;Lorg/eclipse/jdt/core/ICompilationUnit;)Lorg/eclipse/jdt/core/dom/ASTNode;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/JavaModelException;
        }
    .end annotation

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/CreateElementInCUOperation;->getCompilationUnit()Lorg/eclipse/jdt/core/ICompilationUnit;

    move-result-object p1

    invoke-interface {p1}, Lorg/eclipse/jdt/core/IParent;->getChildren()[Lorg/eclipse/jdt/core/IJavaElement;

    move-result-object p1

    const/4 p2, 0x0

    move v0, p2

    :goto_0
    array-length v1, p1

    if-lt v0, v1, :cond_0

    iget-object p1, p0, Lorg/eclipse/jdt/internal/core/CreateElementInCUOperation;->cuAST:Lorg/eclipse/jdt/core/dom/CompilationUnit;

    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/ASTNode;->getAST()Lorg/eclipse/jdt/core/dom/AST;

    move-result-object p1

    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/AST;->newPackageDeclaration()Lorg/eclipse/jdt/core/dom/PackageDeclaration;

    move-result-object p2

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/CreatePackageDeclarationOperation;->name:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/eclipse/jdt/core/dom/AST;->newName(Ljava/lang/String;)Lorg/eclipse/jdt/core/dom/Name;

    move-result-object p1

    invoke-virtual {p2, p1}, Lorg/eclipse/jdt/core/dom/PackageDeclaration;->setName(Lorg/eclipse/jdt/core/dom/Name;)V

    return-object p2

    :cond_0
    aget-object v1, p1, v0

    invoke-interface {v1}, Lorg/eclipse/jdt/core/IJavaElement;->getElementType()I

    move-result v1

    const/16 v2, 0xb

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/CreatePackageDeclarationOperation;->name:Ljava/lang/String;

    aget-object v2, p1, v0

    invoke-interface {v2}, Lorg/eclipse/jdt/core/IJavaElement;->getElementName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iput-boolean p2, p0, Lorg/eclipse/jdt/internal/core/CreateElementInCUOperation;->creationOccurred:Z

    const/4 p1, 0x0

    return-object p1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public generateResultHandle()Lorg/eclipse/jdt/core/IJavaElement;
    .locals 2

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/CreateElementInCUOperation;->getCompilationUnit()Lorg/eclipse/jdt/core/ICompilationUnit;

    move-result-object v0

    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/CreatePackageDeclarationOperation;->name:Ljava/lang/String;

    invoke-interface {v0, v1}, Lorg/eclipse/jdt/core/ICompilationUnit;->getPackageDeclaration(Ljava/lang/String;)Lorg/eclipse/jdt/core/IPackageDeclaration;

    move-result-object v0

    return-object v0
.end method

.method public getChildPropertyDescriptor(Lorg/eclipse/jdt/core/dom/ASTNode;)Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;
    .locals 0

    sget-object p1, Lorg/eclipse/jdt/core/dom/CompilationUnit;->PACKAGE_PROPERTY:Lorg/eclipse/jdt/core/dom/ChildPropertyDescriptor;

    return-object p1
.end method

.method public getMainTaskName()Ljava/lang/String;
    .locals 1

    sget-object v0, Lorg/eclipse/jdt/internal/core/util/Messages;->operation_createPackageProgress:Ljava/lang/String;

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

    const/4 v3, 0x0

    if-lez v2, :cond_0

    aget-object v0, v1, v3

    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/internal/core/CreateElementInCUOperation;->createBefore(Lorg/eclipse/jdt/core/IJavaElement;)V

    return-void

    :cond_0
    invoke-interface {v0}, Lorg/eclipse/jdt/core/ICompilationUnit;->getTypes()[Lorg/eclipse/jdt/core/IType;

    move-result-object v0

    array-length v1, v0

    if-lez v1, :cond_1

    aget-object v0, v0, v3

    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/internal/core/CreateElementInCUOperation;->createBefore(Lorg/eclipse/jdt/core/IJavaElement;)V
    :try_end_0
    .catch Lorg/eclipse/jdt/core/JavaModelException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_1
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

    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/CreatePackageDeclarationOperation;->name:Ljava/lang/String;

    const-string v2, "org.eclipse.jdt.core.compiler.source"

    const/4 v3, 0x1

    invoke-interface {v0, v2, v3}, Lorg/eclipse/jdt/core/IJavaProject;->getOption(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    const-string v4, "org.eclipse.jdt.core.compiler.compliance"

    invoke-interface {v0, v4, v3}, Lorg/eclipse/jdt/core/IJavaProject;->getOption(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v2, v0}, Lorg/eclipse/jdt/core/JavaConventions;->validatePackageName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/eclipse/core/runtime/IStatus;

    move-result-object v0

    invoke-interface {v0}, Lorg/eclipse/core/runtime/IStatus;->getSeverity()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    new-instance v0, Lorg/eclipse/jdt/internal/core/JavaModelStatus;

    const/16 v1, 0x3d7

    iget-object v2, p0, Lorg/eclipse/jdt/internal/core/CreatePackageDeclarationOperation;->name:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lorg/eclipse/jdt/internal/core/JavaModelStatus;-><init>(ILjava/lang/String;)V

    return-object v0

    :cond_1
    sget-object v0, Lorg/eclipse/jdt/internal/core/JavaModelStatus;->VERIFIED_OK:Lorg/eclipse/jdt/core/IJavaModelStatus;

    return-object v0
.end method
