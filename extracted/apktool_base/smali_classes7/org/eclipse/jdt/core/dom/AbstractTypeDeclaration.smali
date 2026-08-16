.class public abstract Lorg/eclipse/jdt/core/dom/AbstractTypeDeclaration;
.super Lorg/eclipse/jdt/core/dom/BodyDeclaration;
.source "SourceFile"


# instance fields
.field bodyDeclarations:Lorg/eclipse/jdt/core/dom/ASTNode$NodeList;

.field typeName:Lorg/eclipse/jdt/core/dom/SimpleName;


# direct methods
.method public constructor <init>(Lorg/eclipse/jdt/core/dom/AST;)V
    .locals 1

    invoke-direct {p0, p1}, Lorg/eclipse/jdt/core/dom/BodyDeclaration;-><init>(Lorg/eclipse/jdt/core/dom/AST;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lorg/eclipse/jdt/core/dom/AbstractTypeDeclaration;->typeName:Lorg/eclipse/jdt/core/dom/SimpleName;

    new-instance p1, Lorg/eclipse/jdt/core/dom/ASTNode$NodeList;

    invoke-virtual {p0}, Lorg/eclipse/jdt/core/dom/AbstractTypeDeclaration;->internalBodyDeclarationsProperty()Lorg/eclipse/jdt/core/dom/ChildListPropertyDescriptor;

    move-result-object v0

    invoke-direct {p1, p0, v0}, Lorg/eclipse/jdt/core/dom/ASTNode$NodeList;-><init>(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/ChildListPropertyDescriptor;)V

    iput-object p1, p0, Lorg/eclipse/jdt/core/dom/AbstractTypeDeclaration;->bodyDeclarations:Lorg/eclipse/jdt/core/dom/ASTNode$NodeList;

    return-void
.end method

.method public static final internalBodyDeclarationPropertyFactory(Ljava/lang/Class;)Lorg/eclipse/jdt/core/dom/ChildListPropertyDescriptor;
    .locals 4

    new-instance v0, Lorg/eclipse/jdt/core/dom/ChildListPropertyDescriptor;

    const-class v1, Lorg/eclipse/jdt/core/dom/BodyDeclaration;

    const/4 v2, 0x1

    const-string v3, "bodyDeclarations"

    invoke-direct {v0, p0, v3, v1, v2}, Lorg/eclipse/jdt/core/dom/ChildListPropertyDescriptor;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;Z)V

    return-object v0
.end method

.method public static final internalNamePropertyFactory(Ljava/lang/Class;)Lorg/eclipse/jdt/core/dom/ChildPropertyDescriptor;
    .locals 7

    new-instance v6, Lorg/eclipse/jdt/core/dom/ChildPropertyDescriptor;

    const/4 v4, 0x1

    const/4 v5, 0x0

    const-string v2, "name"

    const-class v3, Lorg/eclipse/jdt/core/dom/SimpleName;

    move-object v0, v6

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lorg/eclipse/jdt/core/dom/ChildPropertyDescriptor;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;ZZ)V

    return-object v6
.end method


# virtual methods
.method public bodyDeclarations()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/AbstractTypeDeclaration;->bodyDeclarations:Lorg/eclipse/jdt/core/dom/ASTNode$NodeList;

    return-object v0
.end method

.method public final getBodyDeclarationsProperty()Lorg/eclipse/jdt/core/dom/ChildListPropertyDescriptor;
    .locals 1

    invoke-virtual {p0}, Lorg/eclipse/jdt/core/dom/AbstractTypeDeclaration;->internalBodyDeclarationsProperty()Lorg/eclipse/jdt/core/dom/ChildListPropertyDescriptor;

    move-result-object v0

    return-object v0
.end method

.method public getName()Lorg/eclipse/jdt/core/dom/SimpleName;
    .locals 2

    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/AbstractTypeDeclaration;->typeName:Lorg/eclipse/jdt/core/dom/SimpleName;

    if-nez v0, :cond_1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/AbstractTypeDeclaration;->typeName:Lorg/eclipse/jdt/core/dom/SimpleName;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lorg/eclipse/jdt/core/dom/ASTNode;->preLazyInit()V

    new-instance v0, Lorg/eclipse/jdt/core/dom/SimpleName;

    iget-object v1, p0, Lorg/eclipse/jdt/core/dom/ASTNode;->ast:Lorg/eclipse/jdt/core/dom/AST;

    invoke-direct {v0, v1}, Lorg/eclipse/jdt/core/dom/SimpleName;-><init>(Lorg/eclipse/jdt/core/dom/AST;)V

    iput-object v0, p0, Lorg/eclipse/jdt/core/dom/AbstractTypeDeclaration;->typeName:Lorg/eclipse/jdt/core/dom/SimpleName;

    invoke-virtual {p0}, Lorg/eclipse/jdt/core/dom/AbstractTypeDeclaration;->internalNameProperty()Lorg/eclipse/jdt/core/dom/ChildPropertyDescriptor;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/eclipse/jdt/core/dom/ASTNode;->postLazyInit(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/ChildPropertyDescriptor;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit p0

    goto :goto_2

    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    :goto_2
    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/AbstractTypeDeclaration;->typeName:Lorg/eclipse/jdt/core/dom/SimpleName;

    return-object v0
.end method

.method public final getNameProperty()Lorg/eclipse/jdt/core/dom/ChildPropertyDescriptor;
    .locals 1

    invoke-virtual {p0}, Lorg/eclipse/jdt/core/dom/AbstractTypeDeclaration;->internalNameProperty()Lorg/eclipse/jdt/core/dom/ChildPropertyDescriptor;

    move-result-object v0

    return-object v0
.end method

.method public abstract internalBodyDeclarationsProperty()Lorg/eclipse/jdt/core/dom/ChildListPropertyDescriptor;
.end method

.method public abstract internalNameProperty()Lorg/eclipse/jdt/core/dom/ChildPropertyDescriptor;
.end method

.method public abstract internalResolveBinding()Lorg/eclipse/jdt/core/dom/ITypeBinding;
.end method

.method public isLocalTypeDeclaration()Z
    .locals 1

    invoke-virtual {p0}, Lorg/eclipse/jdt/core/dom/ASTNode;->getParent()Lorg/eclipse/jdt/core/dom/ASTNode;

    move-result-object v0

    instance-of v0, v0, Lorg/eclipse/jdt/core/dom/TypeDeclarationStatement;

    return v0
.end method

.method public isMemberTypeDeclaration()Z
    .locals 2

    invoke-virtual {p0}, Lorg/eclipse/jdt/core/dom/ASTNode;->getParent()Lorg/eclipse/jdt/core/dom/ASTNode;

    move-result-object v0

    instance-of v1, v0, Lorg/eclipse/jdt/core/dom/AbstractTypeDeclaration;

    if-nez v1, :cond_0

    instance-of v0, v0, Lorg/eclipse/jdt/core/dom/AnonymousClassDeclaration;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public isPackageMemberTypeDeclaration()Z
    .locals 1

    invoke-virtual {p0}, Lorg/eclipse/jdt/core/dom/ASTNode;->getParent()Lorg/eclipse/jdt/core/dom/ASTNode;

    move-result-object v0

    instance-of v0, v0, Lorg/eclipse/jdt/core/dom/CompilationUnit;

    return v0
.end method

.method public memSize()I
    .locals 1

    invoke-super {p0}, Lorg/eclipse/jdt/core/dom/BodyDeclaration;->memSize()I

    move-result v0

    add-int/lit8 v0, v0, 0x8

    return v0
.end method

.method public final resolveBinding()Lorg/eclipse/jdt/core/dom/ITypeBinding;
    .locals 1

    invoke-virtual {p0}, Lorg/eclipse/jdt/core/dom/AbstractTypeDeclaration;->internalResolveBinding()Lorg/eclipse/jdt/core/dom/ITypeBinding;

    move-result-object v0

    return-object v0
.end method

.method public setName(Lorg/eclipse/jdt/core/dom/SimpleName;)V
    .locals 2

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lorg/eclipse/jdt/core/dom/AbstractTypeDeclaration;->internalNameProperty()Lorg/eclipse/jdt/core/dom/ChildPropertyDescriptor;

    move-result-object v0

    iget-object v1, p0, Lorg/eclipse/jdt/core/dom/AbstractTypeDeclaration;->typeName:Lorg/eclipse/jdt/core/dom/SimpleName;

    invoke-virtual {p0, v1, p1, v0}, Lorg/eclipse/jdt/core/dom/ASTNode;->preReplaceChild(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/ChildPropertyDescriptor;)V

    iput-object p1, p0, Lorg/eclipse/jdt/core/dom/AbstractTypeDeclaration;->typeName:Lorg/eclipse/jdt/core/dom/SimpleName;

    invoke-virtual {p0, v1, p1, v0}, Lorg/eclipse/jdt/core/dom/ASTNode;->postReplaceChild(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/ChildPropertyDescriptor;)V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method
