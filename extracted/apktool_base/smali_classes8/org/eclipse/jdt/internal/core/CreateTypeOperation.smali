.class public Lorg/eclipse/jdt/internal/core/CreateTypeOperation;
.super Lorg/eclipse/jdt/internal/core/CreateTypeMemberOperation;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lorg/eclipse/jdt/core/IJavaElement;Ljava/lang/String;Z)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/eclipse/jdt/internal/core/CreateTypeMemberOperation;-><init>(Lorg/eclipse/jdt/core/IJavaElement;Ljava/lang/String;Z)V

    return-void
.end method

.method private getASTNodeName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/CreateTypeMemberOperation;->createdNode:Lorg/eclipse/jdt/core/dom/ASTNode;

    check-cast v0, Lorg/eclipse/jdt/core/dom/AbstractTypeDeclaration;

    invoke-virtual {v0}, Lorg/eclipse/jdt/core/dom/AbstractTypeDeclaration;->getName()Lorg/eclipse/jdt/core/dom/SimpleName;

    move-result-object v0

    invoke-virtual {v0}, Lorg/eclipse/jdt/core/dom/SimpleName;->getIdentifier()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public generateElementAST(Lorg/eclipse/jdt/core/dom/rewrite/ASTRewrite;Lorg/eclipse/jdt/core/ICompilationUnit;)Lorg/eclipse/jdt/core/dom/ASTNode;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/JavaModelException;
        }
    .end annotation

    invoke-super {p0, p1, p2}, Lorg/eclipse/jdt/internal/core/CreateTypeMemberOperation;->generateElementAST(Lorg/eclipse/jdt/core/dom/rewrite/ASTRewrite;Lorg/eclipse/jdt/core/ICompilationUnit;)Lorg/eclipse/jdt/core/dom/ASTNode;

    move-result-object p1

    instance-of p2, p1, Lorg/eclipse/jdt/core/dom/AbstractTypeDeclaration;

    if-eqz p2, :cond_0

    return-object p1

    :cond_0
    new-instance p1, Lorg/eclipse/jdt/core/JavaModelException;

    new-instance p2, Lorg/eclipse/jdt/internal/core/JavaModelStatus;

    const/16 v0, 0x3d8

    invoke-direct {p2, v0}, Lorg/eclipse/jdt/internal/core/JavaModelStatus;-><init>(I)V

    invoke-direct {p1, p2}, Lorg/eclipse/jdt/core/JavaModelException;-><init>(Lorg/eclipse/jdt/core/IJavaModelStatus;)V

    throw p1
.end method

.method public generateResultHandle()Lorg/eclipse/jdt/core/IJavaElement;
    .locals 3

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/JavaModelOperation;->getParentElement()Lorg/eclipse/jdt/core/IJavaElement;

    move-result-object v0

    invoke-interface {v0}, Lorg/eclipse/jdt/core/IJavaElement;->getElementType()I

    move-result v1

    const/4 v2, 0x5

    if-eq v1, v2, :cond_1

    const/4 v2, 0x7

    if-eq v1, v2, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    check-cast v0, Lorg/eclipse/jdt/core/IType;

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/core/CreateTypeOperation;->getASTNodeName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/eclipse/jdt/core/IType;->getType(Ljava/lang/String;)Lorg/eclipse/jdt/core/IType;

    move-result-object v0

    return-object v0

    :cond_1
    check-cast v0, Lorg/eclipse/jdt/core/ICompilationUnit;

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/core/CreateTypeOperation;->getASTNodeName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/eclipse/jdt/core/ICompilationUnit;->getType(Ljava/lang/String;)Lorg/eclipse/jdt/core/IType;

    move-result-object v0

    return-object v0
.end method

.method public getMainTaskName()Ljava/lang/String;
    .locals 1

    sget-object v0, Lorg/eclipse/jdt/internal/core/util/Messages;->operation_createTypeProgress:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Lorg/eclipse/jdt/core/IType;
    .locals 3

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/JavaModelOperation;->getParentElement()Lorg/eclipse/jdt/core/IJavaElement;

    move-result-object v0

    invoke-interface {v0}, Lorg/eclipse/jdt/core/IJavaElement;->getElementType()I

    move-result v1

    const/4 v2, 0x7

    if-ne v1, v2, :cond_0

    check-cast v0, Lorg/eclipse/jdt/core/IType;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public rename(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/SimpleName;)Lorg/eclipse/jdt/core/dom/SimpleName;
    .locals 1

    check-cast p1, Lorg/eclipse/jdt/core/dom/AbstractTypeDeclaration;

    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/AbstractTypeDeclaration;->getName()Lorg/eclipse/jdt/core/dom/SimpleName;

    move-result-object v0

    invoke-virtual {p1, p2}, Lorg/eclipse/jdt/core/dom/AbstractTypeDeclaration;->setName(Lorg/eclipse/jdt/core/dom/SimpleName;)V

    return-object v0
.end method

.method public verify()Lorg/eclipse/jdt/core/IJavaModelStatus;
    .locals 3

    invoke-super {p0}, Lorg/eclipse/jdt/internal/core/CreateTypeMemberOperation;->verify()Lorg/eclipse/jdt/core/IJavaModelStatus;

    move-result-object v0

    invoke-interface {v0}, Lorg/eclipse/jdt/core/IJavaModelStatus;->isOK()Z

    move-result v1

    if-nez v1, :cond_0

    return-object v0

    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/JavaModelOperation;->getParentElement()Lorg/eclipse/jdt/core/IJavaElement;

    move-result-object v0

    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/CreateElementInCUOperation;->anchorElement:Lorg/eclipse/jdt/core/IJavaElement;

    if-eqz v1, :cond_1

    invoke-interface {v1}, Lorg/eclipse/jdt/core/IJavaElement;->getElementType()I

    move-result v1

    const/16 v2, 0x8

    if-ne v1, v2, :cond_1

    invoke-interface {v0}, Lorg/eclipse/jdt/core/IJavaElement;->getElementType()I

    move-result v1

    const/4 v2, 0x7

    if-ne v1, v2, :cond_1

    check-cast v0, Lorg/eclipse/jdt/core/IType;

    invoke-interface {v0}, Lorg/eclipse/jdt/core/IType;->isEnum()Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Lorg/eclipse/jdt/internal/core/JavaModelStatus;

    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/CreateElementInCUOperation;->anchorElement:Lorg/eclipse/jdt/core/IJavaElement;

    const/16 v2, 0x3e1

    invoke-direct {v0, v2, v1}, Lorg/eclipse/jdt/internal/core/JavaModelStatus;-><init>(ILorg/eclipse/jdt/core/IJavaElement;)V
    :try_end_0
    .catch Lorg/eclipse/jdt/core/JavaModelException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    goto :goto_0

    :cond_1
    sget-object v0, Lorg/eclipse/jdt/internal/core/JavaModelStatus;->VERIFIED_OK:Lorg/eclipse/jdt/core/IJavaModelStatus;

    return-object v0

    :goto_0
    invoke-virtual {v0}, Lorg/eclipse/jdt/core/JavaModelException;->getJavaModelStatus()Lorg/eclipse/jdt/core/IJavaModelStatus;

    move-result-object v0

    return-object v0
.end method

.method public verifyNameCollision()Lorg/eclipse/jdt/core/IJavaModelStatus;
    .locals 4

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/JavaModelOperation;->getParentElement()Lorg/eclipse/jdt/core/IJavaElement;

    move-result-object v0

    invoke-interface {v0}, Lorg/eclipse/jdt/core/IJavaElement;->getElementType()I

    move-result v1

    const/4 v2, 0x5

    const/16 v3, 0x3d1

    if-eq v1, v2, :cond_1

    const/4 v2, 0x7

    if-eq v1, v2, :cond_0

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lorg/eclipse/jdt/internal/core/CreateTypeOperation;->getASTNodeName()Ljava/lang/String;

    move-result-object v1

    check-cast v0, Lorg/eclipse/jdt/core/IType;

    invoke-interface {v0, v1}, Lorg/eclipse/jdt/core/IType;->getType(Ljava/lang/String;)Lorg/eclipse/jdt/core/IType;

    move-result-object v0

    invoke-interface {v0}, Lorg/eclipse/jdt/core/IJavaElement;->exists()Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Lorg/eclipse/jdt/internal/core/JavaModelStatus;

    sget-object v2, Lorg/eclipse/jdt/internal/core/util/Messages;->status_nameCollision:Ljava/lang/String;

    invoke-static {v2, v1}, Lorg/eclipse/jdt/internal/core/util/Messages;->bind(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v3, v1}, Lorg/eclipse/jdt/internal/core/JavaModelStatus;-><init>(ILjava/lang/String;)V

    return-object v0

    :cond_1
    invoke-direct {p0}, Lorg/eclipse/jdt/internal/core/CreateTypeOperation;->getASTNodeName()Ljava/lang/String;

    move-result-object v1

    check-cast v0, Lorg/eclipse/jdt/core/ICompilationUnit;

    invoke-interface {v0, v1}, Lorg/eclipse/jdt/core/ICompilationUnit;->getType(Ljava/lang/String;)Lorg/eclipse/jdt/core/IType;

    move-result-object v0

    invoke-interface {v0}, Lorg/eclipse/jdt/core/IJavaElement;->exists()Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Lorg/eclipse/jdt/internal/core/JavaModelStatus;

    sget-object v2, Lorg/eclipse/jdt/internal/core/util/Messages;->status_nameCollision:Ljava/lang/String;

    invoke-static {v2, v1}, Lorg/eclipse/jdt/internal/core/util/Messages;->bind(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v3, v1}, Lorg/eclipse/jdt/internal/core/JavaModelStatus;-><init>(ILjava/lang/String;)V

    return-object v0

    :cond_2
    :goto_0
    sget-object v0, Lorg/eclipse/jdt/internal/core/JavaModelStatus;->VERIFIED_OK:Lorg/eclipse/jdt/core/IJavaModelStatus;

    return-object v0
.end method
