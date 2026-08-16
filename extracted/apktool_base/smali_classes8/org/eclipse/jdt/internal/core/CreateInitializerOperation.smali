.class public Lorg/eclipse/jdt/internal/core/CreateInitializerOperation;
.super Lorg/eclipse/jdt/internal/core/CreateTypeMemberOperation;
.source "SourceFile"


# instance fields
.field protected numberOfInitializers:I


# direct methods
.method public constructor <init>(Lorg/eclipse/jdt/core/IType;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lorg/eclipse/jdt/internal/core/CreateTypeMemberOperation;-><init>(Lorg/eclipse/jdt/core/IJavaElement;Ljava/lang/String;Z)V

    const/4 p1, 0x1

    iput p1, p0, Lorg/eclipse/jdt/internal/core/CreateInitializerOperation;->numberOfInitializers:I

    return-void
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

    const/16 v0, 0x1c

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
    .locals 6

    :try_start_0
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/CreateTypeMemberOperation;->getType()Lorg/eclipse/jdt/core/IType;

    move-result-object v0

    invoke-interface {v0}, Lorg/eclipse/jdt/core/IMember;->getCompilationUnit()Lorg/eclipse/jdt/core/ICompilationUnit;

    move-result-object v0

    invoke-interface {v0}, Lorg/eclipse/jdt/core/IOpenable;->close()V

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/CreateElementInCUOperation;->anchorElement:Lorg/eclipse/jdt/core/IJavaElement;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/CreateTypeMemberOperation;->getType()Lorg/eclipse/jdt/core/IType;

    move-result-object v0

    iget v1, p0, Lorg/eclipse/jdt/internal/core/CreateInitializerOperation;->numberOfInitializers:I

    invoke-interface {v0, v1}, Lorg/eclipse/jdt/core/IType;->getInitializer(I)Lorg/eclipse/jdt/core/IInitializer;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/CreateTypeMemberOperation;->getType()Lorg/eclipse/jdt/core/IType;

    move-result-object v0

    invoke-interface {v0}, Lorg/eclipse/jdt/core/IParent;->getChildren()[Lorg/eclipse/jdt/core/IJavaElement;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    array-length v3, v0

    if-lt v1, v3, :cond_1

    goto :goto_1

    :cond_1
    aget-object v3, v0, v1

    iget-object v4, p0, Lorg/eclipse/jdt/internal/core/CreateElementInCUOperation;->anchorElement:Lorg/eclipse/jdt/core/IJavaElement;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    const/16 v5, 0xa

    if-eqz v4, :cond_3

    invoke-interface {v3}, Lorg/eclipse/jdt/core/IJavaElement;->getElementType()I

    move-result v0

    if-ne v0, v5, :cond_2

    iget v0, p0, Lorg/eclipse/jdt/internal/core/CreateElementInCUOperation;->insertionPolicy:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    add-int/lit8 v2, v2, 0x1

    :cond_2
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/CreateTypeMemberOperation;->getType()Lorg/eclipse/jdt/core/IType;

    move-result-object v0

    invoke-interface {v0, v2}, Lorg/eclipse/jdt/core/IType;->getInitializer(I)Lorg/eclipse/jdt/core/IInitializer;

    move-result-object v0

    return-object v0

    :cond_3
    invoke-interface {v3}, Lorg/eclipse/jdt/core/IJavaElement;->getElementType()I

    move-result v3
    :try_end_0
    .catch Lorg/eclipse/jdt/core/JavaModelException; {:try_start_0 .. :try_end_0} :catch_0

    if-ne v3, v5, :cond_4

    add-int/lit8 v2, v2, 0x1

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catch_0
    :goto_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public getMainTaskName()Ljava/lang/String;
    .locals 1

    sget-object v0, Lorg/eclipse/jdt/internal/core/util/Messages;->operation_createInitializerProgress:Ljava/lang/String;

    return-object v0
.end method

.method public initializeDefaultPosition()V
    .locals 3

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/CreateTypeMemberOperation;->getType()Lorg/eclipse/jdt/core/IType;

    move-result-object v0

    :try_start_0
    invoke-interface {v0}, Lorg/eclipse/jdt/core/IType;->getInitializers()[Lorg/eclipse/jdt/core/IInitializer;

    move-result-object v1

    if-eqz v1, :cond_0

    array-length v2, v1

    if-lez v2, :cond_0

    array-length v0, v1

    iput v0, p0, Lorg/eclipse/jdt/internal/core/CreateInitializerOperation;->numberOfInitializers:I

    array-length v0, v1

    add-int/lit8 v0, v0, -0x1

    aget-object v0, v1, v0

    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/internal/core/CreateElementInCUOperation;->createAfter(Lorg/eclipse/jdt/core/IJavaElement;)V

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Lorg/eclipse/jdt/core/IParent;->getChildren()[Lorg/eclipse/jdt/core/IJavaElement;

    move-result-object v0

    if-eqz v0, :cond_1

    array-length v1, v0

    if-lez v1, :cond_1

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/internal/core/CreateElementInCUOperation;->createBefore(Lorg/eclipse/jdt/core/IJavaElement;)V
    :try_end_0
    .catch Lorg/eclipse/jdt/core/JavaModelException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_1
    :goto_0
    return-void
.end method

.method public rename(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/SimpleName;)Lorg/eclipse/jdt/core/dom/SimpleName;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method
