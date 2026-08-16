.class public Lorg/eclipse/jdt/internal/core/CreateFieldOperation;
.super Lorg/eclipse/jdt/internal/core/CreateTypeMemberOperation;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lorg/eclipse/jdt/core/IType;Ljava/lang/String;Z)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/eclipse/jdt/internal/core/CreateTypeMemberOperation;-><init>(Lorg/eclipse/jdt/core/IJavaElement;Ljava/lang/String;Z)V

    return-void
.end method

.method private getASTNodeName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/CreateTypeMemberOperation;->alteredName:Ljava/lang/String;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/CreateTypeMemberOperation;->createdNode:Lorg/eclipse/jdt/core/dom/ASTNode;

    invoke-direct {p0, v0}, Lorg/eclipse/jdt/internal/core/CreateFieldOperation;->getFragment(Lorg/eclipse/jdt/core/dom/ASTNode;)Lorg/eclipse/jdt/core/dom/VariableDeclarationFragment;

    move-result-object v0

    invoke-virtual {v0}, Lorg/eclipse/jdt/core/dom/VariableDeclaration;->getName()Lorg/eclipse/jdt/core/dom/SimpleName;

    move-result-object v0

    invoke-virtual {v0}, Lorg/eclipse/jdt/core/dom/SimpleName;->getIdentifier()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getFragment(Lorg/eclipse/jdt/core/dom/ASTNode;)Lorg/eclipse/jdt/core/dom/VariableDeclarationFragment;
    .locals 3

    check-cast p1, Lorg/eclipse/jdt/core/dom/FieldDeclaration;

    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/FieldDeclaration;->fragments()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/CreateElementInCUOperation;->anchorElement:Lorg/eclipse/jdt/core/IJavaElement;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Lorg/eclipse/jdt/core/IJavaElement;->getElementName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_1

    return-object v1

    :cond_1
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/eclipse/jdt/core/dom/VariableDeclarationFragment;

    invoke-virtual {v1}, Lorg/eclipse/jdt/core/dom/VariableDeclaration;->getName()Lorg/eclipse/jdt/core/dom/SimpleName;

    move-result-object v2

    invoke-virtual {v2}, Lorg/eclipse/jdt/core/dom/SimpleName;->getIdentifier()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v1

    :cond_2
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/eclipse/jdt/core/dom/VariableDeclarationFragment;

    return-object p1
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

    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/ASTNode;->getNodeType()I

    move-result p2

    const/16 v0, 0x17

    if-ne p2, v0, :cond_0

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
    .locals 2

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/CreateTypeMemberOperation;->getType()Lorg/eclipse/jdt/core/IType;

    move-result-object v0

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/core/CreateFieldOperation;->getASTNodeName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/eclipse/jdt/core/IType;->getField(Ljava/lang/String;)Lorg/eclipse/jdt/core/IField;

    move-result-object v0

    return-object v0
.end method

.method public getMainTaskName()Ljava/lang/String;
    .locals 1

    sget-object v0, Lorg/eclipse/jdt/internal/core/util/Messages;->operation_createFieldProgress:Ljava/lang/String;

    return-object v0
.end method

.method public initializeDefaultPosition()V
    .locals 3

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/CreateTypeMemberOperation;->getType()Lorg/eclipse/jdt/core/IType;

    move-result-object v0

    :try_start_0
    invoke-interface {v0}, Lorg/eclipse/jdt/core/IType;->getFields()[Lorg/eclipse/jdt/core/IField;

    move-result-object v1

    if-eqz v1, :cond_1

    array-length v2, v1

    if-lez v2, :cond_1

    array-length v2, v1

    add-int/lit8 v2, v2, -0x1

    aget-object v1, v1, v2

    invoke-interface {v0}, Lorg/eclipse/jdt/core/IType;->isEnum()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Lorg/eclipse/jdt/core/IField;->isEnumConstant()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0, v1}, Lorg/eclipse/jdt/internal/core/CreateElementInCUOperation;->createAfter(Lorg/eclipse/jdt/core/IJavaElement;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v1}, Lorg/eclipse/jdt/internal/core/CreateElementInCUOperation;->createAfter(Lorg/eclipse/jdt/core/IJavaElement;)V

    goto :goto_0

    :cond_1
    invoke-interface {v0}, Lorg/eclipse/jdt/core/IParent;->getChildren()[Lorg/eclipse/jdt/core/IJavaElement;

    move-result-object v0

    if-eqz v0, :cond_2

    array-length v1, v0

    if-lez v1, :cond_2

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/internal/core/CreateElementInCUOperation;->createBefore(Lorg/eclipse/jdt/core/IJavaElement;)V
    :try_end_0
    .catch Lorg/eclipse/jdt/core/JavaModelException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_2
    :goto_0
    return-void
.end method

.method public rename(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/SimpleName;)Lorg/eclipse/jdt/core/dom/SimpleName;
    .locals 1

    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/core/CreateFieldOperation;->getFragment(Lorg/eclipse/jdt/core/dom/ASTNode;)Lorg/eclipse/jdt/core/dom/VariableDeclarationFragment;

    move-result-object p1

    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/VariableDeclaration;->getName()Lorg/eclipse/jdt/core/dom/SimpleName;

    move-result-object v0

    invoke-virtual {p1, p2}, Lorg/eclipse/jdt/core/dom/VariableDeclaration;->setName(Lorg/eclipse/jdt/core/dom/SimpleName;)V

    return-object v0
.end method

.method public verifyNameCollision()Lorg/eclipse/jdt/core/IJavaModelStatus;
    .locals 3

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/CreateTypeMemberOperation;->createdNode:Lorg/eclipse/jdt/core/dom/ASTNode;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/CreateTypeMemberOperation;->getType()Lorg/eclipse/jdt/core/IType;

    move-result-object v0

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/core/CreateFieldOperation;->getASTNodeName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/eclipse/jdt/core/IType;->getField(Ljava/lang/String;)Lorg/eclipse/jdt/core/IField;

    move-result-object v0

    invoke-interface {v0}, Lorg/eclipse/jdt/core/IJavaElement;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lorg/eclipse/jdt/internal/core/JavaModelStatus;

    sget-object v2, Lorg/eclipse/jdt/internal/core/util/Messages;->status_nameCollision:Ljava/lang/String;

    invoke-static {v2, v1}, Lorg/eclipse/jdt/internal/core/util/Messages;->bind(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x3d1

    invoke-direct {v0, v2, v1}, Lorg/eclipse/jdt/internal/core/JavaModelStatus;-><init>(ILjava/lang/String;)V

    return-object v0

    :cond_0
    sget-object v0, Lorg/eclipse/jdt/internal/core/JavaModelStatus;->VERIFIED_OK:Lorg/eclipse/jdt/core/IJavaModelStatus;

    return-object v0
.end method
