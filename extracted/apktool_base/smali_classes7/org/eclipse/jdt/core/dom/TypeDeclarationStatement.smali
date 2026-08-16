.class public Lorg/eclipse/jdt/core/dom/TypeDeclarationStatement;
.super Lorg/eclipse/jdt/core/dom/Statement;
.source "SourceFile"


# static fields
.field public static final DECLARATION_PROPERTY:Lorg/eclipse/jdt/core/dom/ChildPropertyDescriptor;

.field private static final PROPERTY_DESCRIPTORS_2_0:Ljava/util/List;

.field private static final PROPERTY_DESCRIPTORS_3_0:Ljava/util/List;

.field public static final TYPE_DECLARATION_PROPERTY:Lorg/eclipse/jdt/core/dom/ChildPropertyDescriptor;


# instance fields
.field private typeDecl:Lorg/eclipse/jdt/core/dom/AbstractTypeDeclaration;


# direct methods
.method static constructor <clinit>()V
    .locals 13

    new-instance v6, Lorg/eclipse/jdt/core/dom/ChildPropertyDescriptor;

    const/4 v4, 0x1

    const/4 v5, 0x1

    const-class v1, Lorg/eclipse/jdt/core/dom/TypeDeclarationStatement;

    const-string v2, "typeDeclaration"

    const-class v3, Lorg/eclipse/jdt/core/dom/TypeDeclaration;

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lorg/eclipse/jdt/core/dom/ChildPropertyDescriptor;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;ZZ)V

    sput-object v6, Lorg/eclipse/jdt/core/dom/TypeDeclarationStatement;->TYPE_DECLARATION_PROPERTY:Lorg/eclipse/jdt/core/dom/ChildPropertyDescriptor;

    new-instance v0, Lorg/eclipse/jdt/core/dom/ChildPropertyDescriptor;

    const/4 v11, 0x1

    const/4 v12, 0x1

    const-class v8, Lorg/eclipse/jdt/core/dom/TypeDeclarationStatement;

    const-string v9, "declaration"

    const-class v10, Lorg/eclipse/jdt/core/dom/AbstractTypeDeclaration;

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lorg/eclipse/jdt/core/dom/ChildPropertyDescriptor;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;ZZ)V

    sput-object v0, Lorg/eclipse/jdt/core/dom/TypeDeclarationStatement;->DECLARATION_PROPERTY:Lorg/eclipse/jdt/core/dom/ChildPropertyDescriptor;

    new-instance v1, Ljava/util/ArrayList;

    const/4 v2, 0x2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    const-class v3, Lorg/eclipse/jdt/core/dom/TypeDeclarationStatement;

    invoke-static {v3, v1}, Lorg/eclipse/jdt/core/dom/ASTNode;->createPropertyList(Ljava/lang/Class;Ljava/util/List;)V

    invoke-static {v6, v1}, Lorg/eclipse/jdt/core/dom/ASTNode;->addProperty(Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;Ljava/util/List;)V

    invoke-static {v1}, Lorg/eclipse/jdt/core/dom/ASTNode;->reapPropertyList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    sput-object v1, Lorg/eclipse/jdt/core/dom/TypeDeclarationStatement;->PROPERTY_DESCRIPTORS_2_0:Ljava/util/List;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-static {v3, v1}, Lorg/eclipse/jdt/core/dom/ASTNode;->createPropertyList(Ljava/lang/Class;Ljava/util/List;)V

    invoke-static {v0, v1}, Lorg/eclipse/jdt/core/dom/ASTNode;->addProperty(Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;Ljava/util/List;)V

    invoke-static {v1}, Lorg/eclipse/jdt/core/dom/ASTNode;->reapPropertyList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lorg/eclipse/jdt/core/dom/TypeDeclarationStatement;->PROPERTY_DESCRIPTORS_3_0:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Lorg/eclipse/jdt/core/dom/AST;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/eclipse/jdt/core/dom/Statement;-><init>(Lorg/eclipse/jdt/core/dom/AST;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lorg/eclipse/jdt/core/dom/TypeDeclarationStatement;->typeDecl:Lorg/eclipse/jdt/core/dom/AbstractTypeDeclaration;

    return-void
.end method

.method public static propertyDescriptors(I)Ljava/util/List;
    .locals 1

    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    sget-object p0, Lorg/eclipse/jdt/core/dom/TypeDeclarationStatement;->PROPERTY_DESCRIPTORS_2_0:Ljava/util/List;

    return-object p0

    :cond_0
    sget-object p0, Lorg/eclipse/jdt/core/dom/TypeDeclarationStatement;->PROPERTY_DESCRIPTORS_3_0:Ljava/util/List;

    return-object p0
.end method

.method private typeDeclProperty()Lorg/eclipse/jdt/core/dom/ChildPropertyDescriptor;
    .locals 2

    invoke-virtual {p0}, Lorg/eclipse/jdt/core/dom/ASTNode;->getAST()Lorg/eclipse/jdt/core/dom/AST;

    move-result-object v0

    invoke-virtual {v0}, Lorg/eclipse/jdt/core/dom/AST;->apiLevel()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    sget-object v0, Lorg/eclipse/jdt/core/dom/TypeDeclarationStatement;->TYPE_DECLARATION_PROPERTY:Lorg/eclipse/jdt/core/dom/ChildPropertyDescriptor;

    return-object v0

    :cond_0
    sget-object v0, Lorg/eclipse/jdt/core/dom/TypeDeclarationStatement;->DECLARATION_PROPERTY:Lorg/eclipse/jdt/core/dom/ChildPropertyDescriptor;

    return-object v0
.end method


# virtual methods
.method public accept0(Lorg/eclipse/jdt/core/dom/ASTVisitor;)V
    .locals 1

    invoke-virtual {p1, p0}, Lorg/eclipse/jdt/core/dom/ASTVisitor;->visit(Lorg/eclipse/jdt/core/dom/TypeDeclarationStatement;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/eclipse/jdt/core/dom/TypeDeclarationStatement;->getDeclaration()Lorg/eclipse/jdt/core/dom/AbstractTypeDeclaration;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lorg/eclipse/jdt/core/dom/ASTNode;->acceptChild(Lorg/eclipse/jdt/core/dom/ASTVisitor;Lorg/eclipse/jdt/core/dom/ASTNode;)V

    :cond_0
    invoke-virtual {p1, p0}, Lorg/eclipse/jdt/core/dom/ASTVisitor;->endVisit(Lorg/eclipse/jdt/core/dom/TypeDeclarationStatement;)V

    return-void
.end method

.method public clone0(Lorg/eclipse/jdt/core/dom/AST;)Lorg/eclipse/jdt/core/dom/ASTNode;
    .locals 3

    new-instance v0, Lorg/eclipse/jdt/core/dom/TypeDeclarationStatement;

    invoke-direct {v0, p1}, Lorg/eclipse/jdt/core/dom/TypeDeclarationStatement;-><init>(Lorg/eclipse/jdt/core/dom/AST;)V

    invoke-virtual {p0}, Lorg/eclipse/jdt/core/dom/ASTNode;->getStartPosition()I

    move-result v1

    invoke-virtual {p0}, Lorg/eclipse/jdt/core/dom/ASTNode;->getLength()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/eclipse/jdt/core/dom/ASTNode;->setSourceRange(II)V

    invoke-virtual {v0, p0}, Lorg/eclipse/jdt/core/dom/Statement;->copyLeadingComment(Lorg/eclipse/jdt/core/dom/Statement;)V

    invoke-virtual {p0}, Lorg/eclipse/jdt/core/dom/TypeDeclarationStatement;->getDeclaration()Lorg/eclipse/jdt/core/dom/AbstractTypeDeclaration;

    move-result-object v1

    invoke-virtual {v1, p1}, Lorg/eclipse/jdt/core/dom/ASTNode;->clone(Lorg/eclipse/jdt/core/dom/AST;)Lorg/eclipse/jdt/core/dom/ASTNode;

    move-result-object p1

    check-cast p1, Lorg/eclipse/jdt/core/dom/AbstractTypeDeclaration;

    invoke-virtual {v0, p1}, Lorg/eclipse/jdt/core/dom/TypeDeclarationStatement;->setDeclaration(Lorg/eclipse/jdt/core/dom/AbstractTypeDeclaration;)V

    return-object v0
.end method

.method public getDeclaration()Lorg/eclipse/jdt/core/dom/AbstractTypeDeclaration;
    .locals 2

    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/TypeDeclarationStatement;->typeDecl:Lorg/eclipse/jdt/core/dom/AbstractTypeDeclaration;

    if-nez v0, :cond_1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/TypeDeclarationStatement;->typeDecl:Lorg/eclipse/jdt/core/dom/AbstractTypeDeclaration;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lorg/eclipse/jdt/core/dom/ASTNode;->preLazyInit()V

    new-instance v0, Lorg/eclipse/jdt/core/dom/TypeDeclaration;

    iget-object v1, p0, Lorg/eclipse/jdt/core/dom/ASTNode;->ast:Lorg/eclipse/jdt/core/dom/AST;

    invoke-direct {v0, v1}, Lorg/eclipse/jdt/core/dom/TypeDeclaration;-><init>(Lorg/eclipse/jdt/core/dom/AST;)V

    iput-object v0, p0, Lorg/eclipse/jdt/core/dom/TypeDeclarationStatement;->typeDecl:Lorg/eclipse/jdt/core/dom/AbstractTypeDeclaration;

    invoke-direct {p0}, Lorg/eclipse/jdt/core/dom/TypeDeclarationStatement;->typeDeclProperty()Lorg/eclipse/jdt/core/dom/ChildPropertyDescriptor;

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
    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/TypeDeclarationStatement;->typeDecl:Lorg/eclipse/jdt/core/dom/AbstractTypeDeclaration;

    return-object v0
.end method

.method public final getNodeType0()I
    .locals 1

    const/16 v0, 0x38

    return v0
.end method

.method public getTypeDeclaration()Lorg/eclipse/jdt/core/dom/TypeDeclaration;
    .locals 1

    invoke-virtual {p0}, Lorg/eclipse/jdt/core/dom/TypeDeclarationStatement;->internalGetTypeDeclaration()Lorg/eclipse/jdt/core/dom/TypeDeclaration;

    move-result-object v0

    return-object v0
.end method

.method public final internalGetSetChildProperty(Lorg/eclipse/jdt/core/dom/ChildPropertyDescriptor;ZLorg/eclipse/jdt/core/dom/ASTNode;)Lorg/eclipse/jdt/core/dom/ASTNode;
    .locals 2

    sget-object v0, Lorg/eclipse/jdt/core/dom/TypeDeclarationStatement;->TYPE_DECLARATION_PROPERTY:Lorg/eclipse/jdt/core/dom/ChildPropertyDescriptor;

    const/4 v1, 0x0

    if-ne p1, v0, :cond_1

    if-eqz p2, :cond_0

    invoke-virtual {p0}, Lorg/eclipse/jdt/core/dom/TypeDeclarationStatement;->getTypeDeclaration()Lorg/eclipse/jdt/core/dom/TypeDeclaration;

    move-result-object p1

    return-object p1

    :cond_0
    check-cast p3, Lorg/eclipse/jdt/core/dom/TypeDeclaration;

    invoke-virtual {p0, p3}, Lorg/eclipse/jdt/core/dom/TypeDeclarationStatement;->setTypeDeclaration(Lorg/eclipse/jdt/core/dom/TypeDeclaration;)V

    return-object v1

    :cond_1
    sget-object v0, Lorg/eclipse/jdt/core/dom/TypeDeclarationStatement;->DECLARATION_PROPERTY:Lorg/eclipse/jdt/core/dom/ChildPropertyDescriptor;

    if-ne p1, v0, :cond_3

    if-eqz p2, :cond_2

    invoke-virtual {p0}, Lorg/eclipse/jdt/core/dom/TypeDeclarationStatement;->getDeclaration()Lorg/eclipse/jdt/core/dom/AbstractTypeDeclaration;

    move-result-object p1

    return-object p1

    :cond_2
    check-cast p3, Lorg/eclipse/jdt/core/dom/AbstractTypeDeclaration;

    invoke-virtual {p0, p3}, Lorg/eclipse/jdt/core/dom/TypeDeclarationStatement;->setDeclaration(Lorg/eclipse/jdt/core/dom/AbstractTypeDeclaration;)V

    return-object v1

    :cond_3
    invoke-super {p0, p1, p2, p3}, Lorg/eclipse/jdt/core/dom/ASTNode;->internalGetSetChildProperty(Lorg/eclipse/jdt/core/dom/ChildPropertyDescriptor;ZLorg/eclipse/jdt/core/dom/ASTNode;)Lorg/eclipse/jdt/core/dom/ASTNode;

    move-result-object p1

    return-object p1
.end method

.method public final internalGetTypeDeclaration()Lorg/eclipse/jdt/core/dom/TypeDeclaration;
    .locals 1

    invoke-virtual {p0}, Lorg/eclipse/jdt/core/dom/ASTNode;->supportedOnlyIn2()V

    invoke-virtual {p0}, Lorg/eclipse/jdt/core/dom/TypeDeclarationStatement;->getDeclaration()Lorg/eclipse/jdt/core/dom/AbstractTypeDeclaration;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jdt/core/dom/TypeDeclaration;

    return-object v0
.end method

.method public final internalSetTypeDeclaration(Lorg/eclipse/jdt/core/dom/TypeDeclaration;)V
    .locals 0

    invoke-virtual {p0}, Lorg/eclipse/jdt/core/dom/ASTNode;->supportedOnlyIn2()V

    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/core/dom/TypeDeclarationStatement;->setDeclaration(Lorg/eclipse/jdt/core/dom/AbstractTypeDeclaration;)V

    return-void
.end method

.method public final internalStructuralPropertiesForType(I)Ljava/util/List;
    .locals 0

    invoke-static {p1}, Lorg/eclipse/jdt/core/dom/TypeDeclarationStatement;->propertyDescriptors(I)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public memSize()I
    .locals 1

    invoke-super {p0}, Lorg/eclipse/jdt/core/dom/Statement;->memSize()I

    move-result v0

    add-int/lit8 v0, v0, 0x4

    return v0
.end method

.method public resolveBinding()Lorg/eclipse/jdt/core/dom/ITypeBinding;
    .locals 2

    invoke-virtual {p0}, Lorg/eclipse/jdt/core/dom/TypeDeclarationStatement;->getDeclaration()Lorg/eclipse/jdt/core/dom/AbstractTypeDeclaration;

    move-result-object v0

    instance-of v1, v0, Lorg/eclipse/jdt/core/dom/TypeDeclaration;

    if-eqz v1, :cond_0

    check-cast v0, Lorg/eclipse/jdt/core/dom/TypeDeclaration;

    invoke-virtual {v0}, Lorg/eclipse/jdt/core/dom/AbstractTypeDeclaration;->resolveBinding()Lorg/eclipse/jdt/core/dom/ITypeBinding;

    move-result-object v0

    return-object v0

    :cond_0
    instance-of v1, v0, Lorg/eclipse/jdt/core/dom/AnnotationTypeDeclaration;

    if-eqz v1, :cond_1

    check-cast v0, Lorg/eclipse/jdt/core/dom/AnnotationTypeDeclaration;

    invoke-virtual {v0}, Lorg/eclipse/jdt/core/dom/AbstractTypeDeclaration;->resolveBinding()Lorg/eclipse/jdt/core/dom/ITypeBinding;

    move-result-object v0

    return-object v0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public setDeclaration(Lorg/eclipse/jdt/core/dom/AbstractTypeDeclaration;)V
    .locals 2

    if-eqz p1, :cond_0

    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/TypeDeclarationStatement;->typeDecl:Lorg/eclipse/jdt/core/dom/AbstractTypeDeclaration;

    invoke-direct {p0}, Lorg/eclipse/jdt/core/dom/TypeDeclarationStatement;->typeDeclProperty()Lorg/eclipse/jdt/core/dom/ChildPropertyDescriptor;

    move-result-object v1

    invoke-virtual {p0, v0, p1, v1}, Lorg/eclipse/jdt/core/dom/ASTNode;->preReplaceChild(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/ChildPropertyDescriptor;)V

    iput-object p1, p0, Lorg/eclipse/jdt/core/dom/TypeDeclarationStatement;->typeDecl:Lorg/eclipse/jdt/core/dom/AbstractTypeDeclaration;

    invoke-virtual {p0, v0, p1, v1}, Lorg/eclipse/jdt/core/dom/ASTNode;->postReplaceChild(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/ChildPropertyDescriptor;)V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method public setTypeDeclaration(Lorg/eclipse/jdt/core/dom/TypeDeclaration;)V
    .locals 0

    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/core/dom/TypeDeclarationStatement;->internalSetTypeDeclaration(Lorg/eclipse/jdt/core/dom/TypeDeclaration;)V

    return-void
.end method

.method public final subtreeMatch0(Lorg/eclipse/jdt/core/dom/ASTMatcher;Ljava/lang/Object;)Z
    .locals 0

    invoke-virtual {p1, p0, p2}, Lorg/eclipse/jdt/core/dom/ASTMatcher;->match(Lorg/eclipse/jdt/core/dom/TypeDeclarationStatement;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public treeSize()I
    .locals 2

    invoke-virtual {p0}, Lorg/eclipse/jdt/core/dom/TypeDeclarationStatement;->memSize()I

    move-result v0

    iget-object v1, p0, Lorg/eclipse/jdt/core/dom/TypeDeclarationStatement;->typeDecl:Lorg/eclipse/jdt/core/dom/AbstractTypeDeclaration;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lorg/eclipse/jdt/core/dom/TypeDeclarationStatement;->getDeclaration()Lorg/eclipse/jdt/core/dom/AbstractTypeDeclaration;

    move-result-object v1

    invoke-virtual {v1}, Lorg/eclipse/jdt/core/dom/ASTNode;->treeSize()I

    move-result v1

    :goto_0
    add-int/2addr v0, v1

    return v0
.end method
