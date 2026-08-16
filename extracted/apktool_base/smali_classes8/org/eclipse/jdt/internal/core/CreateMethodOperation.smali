.class public Lorg/eclipse/jdt/internal/core/CreateMethodOperation;
.super Lorg/eclipse/jdt/internal/core/CreateTypeMemberOperation;
.source "SourceFile"


# instance fields
.field protected parameterTypes:[Ljava/lang/String;


# direct methods
.method public constructor <init>(Lorg/eclipse/jdt/core/IType;Ljava/lang/String;Z)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/eclipse/jdt/internal/core/CreateTypeMemberOperation;-><init>(Lorg/eclipse/jdt/core/IJavaElement;Ljava/lang/String;Z)V

    return-void
.end method

.method private getASTNodeName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/CreateTypeMemberOperation;->createdNode:Lorg/eclipse/jdt/core/dom/ASTNode;

    check-cast v0, Lorg/eclipse/jdt/core/dom/MethodDeclaration;

    invoke-virtual {v0}, Lorg/eclipse/jdt/core/dom/MethodDeclaration;->getName()Lorg/eclipse/jdt/core/dom/SimpleName;

    move-result-object v0

    invoke-virtual {v0}, Lorg/eclipse/jdt/core/dom/SimpleName;->getIdentifier()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public convertASTMethodTypesToSignatures()[Ljava/lang/String;
    .locals 7

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/CreateMethodOperation;->parameterTypes:[Ljava/lang/String;

    if-nez v0, :cond_2

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/CreateTypeMemberOperation;->createdNode:Lorg/eclipse/jdt/core/dom/ASTNode;

    if-eqz v0, :cond_2

    check-cast v0, Lorg/eclipse/jdt/core/dom/MethodDeclaration;

    invoke-virtual {v0}, Lorg/eclipse/jdt/core/dom/MethodDeclaration;->parameters()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    new-array v3, v2, [Ljava/lang/String;

    iput-object v3, p0, Lorg/eclipse/jdt/internal/core/CreateMethodOperation;->parameterTypes:[Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v3, 0x0

    :goto_0
    if-lt v3, v2, :cond_0

    goto :goto_1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/eclipse/jdt/core/dom/SingleVariableDeclaration;

    invoke-virtual {v4}, Lorg/eclipse/jdt/core/dom/SingleVariableDeclaration;->getType()Lorg/eclipse/jdt/core/dom/Type;

    move-result-object v5

    invoke-static {v5}, Lorg/eclipse/jdt/internal/core/util/Util;->getSignature(Lorg/eclipse/jdt/core/dom/Type;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4}, Lorg/eclipse/jdt/core/dom/VariableDeclaration;->getExtraDimensions()I

    move-result v4

    invoke-virtual {v0}, Lorg/eclipse/jdt/core/dom/MethodDeclaration;->isVarargs()Z

    move-result v6

    if-eqz v6, :cond_1

    add-int/lit8 v6, v2, -0x1

    if-ne v3, v6, :cond_1

    add-int/lit8 v4, v4, 0x1

    :cond_1
    iget-object v6, p0, Lorg/eclipse/jdt/internal/core/CreateMethodOperation;->parameterTypes:[Ljava/lang/String;

    invoke-static {v5, v4}, Lorg/eclipse/jdt/core/Signature;->createArraySignature(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v6, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/CreateMethodOperation;->parameterTypes:[Ljava/lang/String;

    return-object v0
.end method

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

    const/16 v0, 0x1f

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
    .locals 3

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/CreateMethodOperation;->convertASTMethodTypesToSignatures()[Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/core/CreateMethodOperation;->getASTNodeName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/CreateTypeMemberOperation;->getType()Lorg/eclipse/jdt/core/IType;

    move-result-object v2

    invoke-interface {v2, v1, v0}, Lorg/eclipse/jdt/core/IType;->getMethod(Ljava/lang/String;[Ljava/lang/String;)Lorg/eclipse/jdt/core/IMethod;

    move-result-object v0

    return-object v0
.end method

.method public getMainTaskName()Ljava/lang/String;
    .locals 1

    sget-object v0, Lorg/eclipse/jdt/internal/core/util/Messages;->operation_createMethodProgress:Ljava/lang/String;

    return-object v0
.end method

.method public rename(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/SimpleName;)Lorg/eclipse/jdt/core/dom/SimpleName;
    .locals 1

    check-cast p1, Lorg/eclipse/jdt/core/dom/MethodDeclaration;

    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/MethodDeclaration;->getName()Lorg/eclipse/jdt/core/dom/SimpleName;

    move-result-object v0

    invoke-virtual {p1, p2}, Lorg/eclipse/jdt/core/dom/MethodDeclaration;->setName(Lorg/eclipse/jdt/core/dom/SimpleName;)V

    return-object v0
.end method

.method public verifyNameCollision()Lorg/eclipse/jdt/core/IJavaModelStatus;
    .locals 3

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/CreateTypeMemberOperation;->createdNode:Lorg/eclipse/jdt/core/dom/ASTNode;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/CreateTypeMemberOperation;->getType()Lorg/eclipse/jdt/core/IType;

    move-result-object v0

    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/CreateTypeMemberOperation;->createdNode:Lorg/eclipse/jdt/core/dom/ASTNode;

    check-cast v1, Lorg/eclipse/jdt/core/dom/MethodDeclaration;

    invoke-virtual {v1}, Lorg/eclipse/jdt/core/dom/MethodDeclaration;->isConstructor()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Lorg/eclipse/jdt/core/IType;->getElementName()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lorg/eclipse/jdt/internal/core/CreateMethodOperation;->getASTNodeName()Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/CreateMethodOperation;->convertASTMethodTypesToSignatures()[Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lorg/eclipse/jdt/core/IType;->getMethod(Ljava/lang/String;[Ljava/lang/String;)Lorg/eclipse/jdt/core/IMethod;

    move-result-object v0

    invoke-interface {v0}, Lorg/eclipse/jdt/core/IJavaElement;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Lorg/eclipse/jdt/internal/core/JavaModelStatus;

    sget-object v2, Lorg/eclipse/jdt/internal/core/util/Messages;->status_nameCollision:Ljava/lang/String;

    invoke-static {v2, v1}, Lorg/eclipse/jdt/internal/core/util/Messages;->bind(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x3d1

    invoke-direct {v0, v2, v1}, Lorg/eclipse/jdt/internal/core/JavaModelStatus;-><init>(ILjava/lang/String;)V

    return-object v0

    :cond_1
    sget-object v0, Lorg/eclipse/jdt/internal/core/JavaModelStatus;->VERIFIED_OK:Lorg/eclipse/jdt/core/IJavaModelStatus;

    return-object v0
.end method
