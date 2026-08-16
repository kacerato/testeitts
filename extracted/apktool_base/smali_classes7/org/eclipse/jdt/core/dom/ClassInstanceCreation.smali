.class public Lorg/eclipse/jdt/core/dom/ClassInstanceCreation;
.super Lorg/eclipse/jdt/core/dom/Expression;
.source "SourceFile"


# static fields
.field public static final ANONYMOUS_CLASS_DECLARATION_PROPERTY:Lorg/eclipse/jdt/core/dom/ChildPropertyDescriptor;

.field public static final ARGUMENTS_PROPERTY:Lorg/eclipse/jdt/core/dom/ChildListPropertyDescriptor;

.field public static final EXPRESSION_PROPERTY:Lorg/eclipse/jdt/core/dom/ChildPropertyDescriptor;

.field public static final NAME_PROPERTY:Lorg/eclipse/jdt/core/dom/ChildPropertyDescriptor;

.field private static final PROPERTY_DESCRIPTORS_2_0:Ljava/util/List;

.field private static final PROPERTY_DESCRIPTORS_3_0:Ljava/util/List;

.field public static final TYPE_ARGUMENTS_PROPERTY:Lorg/eclipse/jdt/core/dom/ChildListPropertyDescriptor;

.field public static final TYPE_PROPERTY:Lorg/eclipse/jdt/core/dom/ChildPropertyDescriptor;


# instance fields
.field private arguments:Lorg/eclipse/jdt/core/dom/ASTNode$NodeList;

.field private optionalAnonymousClassDeclaration:Lorg/eclipse/jdt/core/dom/AnonymousClassDeclaration;

.field private optionalExpression:Lorg/eclipse/jdt/core/dom/Expression;

.field private type:Lorg/eclipse/jdt/core/dom/Type;

.field private typeArguments:Lorg/eclipse/jdt/core/dom/ASTNode$NodeList;

.field private typeName:Lorg/eclipse/jdt/core/dom/Name;


# direct methods
.method static constructor <clinit>()V
    .locals 17

    new-instance v0, Lorg/eclipse/jdt/core/dom/ChildListPropertyDescriptor;

    const-class v1, Lorg/eclipse/jdt/core/dom/Type;

    const/4 v2, 0x0

    const-class v3, Lorg/eclipse/jdt/core/dom/ClassInstanceCreation;

    const-string v4, "typeArguments"

    invoke-direct {v0, v3, v4, v1, v2}, Lorg/eclipse/jdt/core/dom/ChildListPropertyDescriptor;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;Z)V

    sput-object v0, Lorg/eclipse/jdt/core/dom/ClassInstanceCreation;->TYPE_ARGUMENTS_PROPERTY:Lorg/eclipse/jdt/core/dom/ChildListPropertyDescriptor;

    new-instance v1, Lorg/eclipse/jdt/core/dom/ChildPropertyDescriptor;

    const/4 v9, 0x0

    const/4 v10, 0x1

    const-class v6, Lorg/eclipse/jdt/core/dom/ClassInstanceCreation;

    const-string v7, "expression"

    const-class v8, Lorg/eclipse/jdt/core/dom/Expression;

    move-object v5, v1

    invoke-direct/range {v5 .. v10}, Lorg/eclipse/jdt/core/dom/ChildPropertyDescriptor;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;ZZ)V

    sput-object v1, Lorg/eclipse/jdt/core/dom/ClassInstanceCreation;->EXPRESSION_PROPERTY:Lorg/eclipse/jdt/core/dom/ChildPropertyDescriptor;

    new-instance v2, Lorg/eclipse/jdt/core/dom/ChildPropertyDescriptor;

    const/4 v15, 0x1

    const/16 v16, 0x0

    const-class v12, Lorg/eclipse/jdt/core/dom/ClassInstanceCreation;

    const-string v13, "name"

    const-class v14, Lorg/eclipse/jdt/core/dom/Name;

    move-object v11, v2

    invoke-direct/range {v11 .. v16}, Lorg/eclipse/jdt/core/dom/ChildPropertyDescriptor;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;ZZ)V

    sput-object v2, Lorg/eclipse/jdt/core/dom/ClassInstanceCreation;->NAME_PROPERTY:Lorg/eclipse/jdt/core/dom/ChildPropertyDescriptor;

    new-instance v10, Lorg/eclipse/jdt/core/dom/ChildPropertyDescriptor;

    const/4 v8, 0x1

    const-class v5, Lorg/eclipse/jdt/core/dom/ClassInstanceCreation;

    const-string v6, "type"

    const-class v7, Lorg/eclipse/jdt/core/dom/Type;

    move-object v4, v10

    invoke-direct/range {v4 .. v9}, Lorg/eclipse/jdt/core/dom/ChildPropertyDescriptor;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;ZZ)V

    sput-object v10, Lorg/eclipse/jdt/core/dom/ClassInstanceCreation;->TYPE_PROPERTY:Lorg/eclipse/jdt/core/dom/ChildPropertyDescriptor;

    new-instance v4, Lorg/eclipse/jdt/core/dom/ChildListPropertyDescriptor;

    const-class v5, Lorg/eclipse/jdt/core/dom/Expression;

    const/4 v6, 0x1

    const-string v7, "arguments"

    invoke-direct {v4, v3, v7, v5, v6}, Lorg/eclipse/jdt/core/dom/ChildListPropertyDescriptor;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;Z)V

    sput-object v4, Lorg/eclipse/jdt/core/dom/ClassInstanceCreation;->ARGUMENTS_PROPERTY:Lorg/eclipse/jdt/core/dom/ChildListPropertyDescriptor;

    new-instance v5, Lorg/eclipse/jdt/core/dom/ChildPropertyDescriptor;

    const/4 v15, 0x0

    const/16 v16, 0x1

    const-class v12, Lorg/eclipse/jdt/core/dom/ClassInstanceCreation;

    const-string v13, "anonymousClassDeclaration"

    const-class v14, Lorg/eclipse/jdt/core/dom/AnonymousClassDeclaration;

    move-object v11, v5

    invoke-direct/range {v11 .. v16}, Lorg/eclipse/jdt/core/dom/ChildPropertyDescriptor;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;ZZ)V

    sput-object v5, Lorg/eclipse/jdt/core/dom/ClassInstanceCreation;->ANONYMOUS_CLASS_DECLARATION_PROPERTY:Lorg/eclipse/jdt/core/dom/ChildPropertyDescriptor;

    new-instance v6, Ljava/util/ArrayList;

    const/4 v7, 0x5

    invoke-direct {v6, v7}, Ljava/util/ArrayList;-><init>(I)V

    invoke-static {v3, v6}, Lorg/eclipse/jdt/core/dom/ASTNode;->createPropertyList(Ljava/lang/Class;Ljava/util/List;)V

    invoke-static {v1, v6}, Lorg/eclipse/jdt/core/dom/ASTNode;->addProperty(Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;Ljava/util/List;)V

    invoke-static {v2, v6}, Lorg/eclipse/jdt/core/dom/ASTNode;->addProperty(Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;Ljava/util/List;)V

    invoke-static {v4, v6}, Lorg/eclipse/jdt/core/dom/ASTNode;->addProperty(Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;Ljava/util/List;)V

    invoke-static {v5, v6}, Lorg/eclipse/jdt/core/dom/ASTNode;->addProperty(Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;Ljava/util/List;)V

    invoke-static {v6}, Lorg/eclipse/jdt/core/dom/ASTNode;->reapPropertyList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    sput-object v2, Lorg/eclipse/jdt/core/dom/ClassInstanceCreation;->PROPERTY_DESCRIPTORS_2_0:Ljava/util/List;

    new-instance v2, Ljava/util/ArrayList;

    const/4 v6, 0x6

    invoke-direct {v2, v6}, Ljava/util/ArrayList;-><init>(I)V

    invoke-static {v3, v2}, Lorg/eclipse/jdt/core/dom/ASTNode;->createPropertyList(Ljava/lang/Class;Ljava/util/List;)V

    invoke-static {v1, v2}, Lorg/eclipse/jdt/core/dom/ASTNode;->addProperty(Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;Ljava/util/List;)V

    invoke-static {v0, v2}, Lorg/eclipse/jdt/core/dom/ASTNode;->addProperty(Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;Ljava/util/List;)V

    invoke-static {v10, v2}, Lorg/eclipse/jdt/core/dom/ASTNode;->addProperty(Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;Ljava/util/List;)V

    invoke-static {v4, v2}, Lorg/eclipse/jdt/core/dom/ASTNode;->addProperty(Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;Ljava/util/List;)V

    invoke-static {v5, v2}, Lorg/eclipse/jdt/core/dom/ASTNode;->addProperty(Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;Ljava/util/List;)V

    invoke-static {v2}, Lorg/eclipse/jdt/core/dom/ASTNode;->reapPropertyList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lorg/eclipse/jdt/core/dom/ClassInstanceCreation;->PROPERTY_DESCRIPTORS_3_0:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Lorg/eclipse/jdt/core/dom/AST;)V
    .locals 3

    invoke-direct {p0, p1}, Lorg/eclipse/jdt/core/dom/Expression;-><init>(Lorg/eclipse/jdt/core/dom/AST;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/eclipse/jdt/core/dom/ClassInstanceCreation;->optionalExpression:Lorg/eclipse/jdt/core/dom/Expression;

    iput-object v0, p0, Lorg/eclipse/jdt/core/dom/ClassInstanceCreation;->typeArguments:Lorg/eclipse/jdt/core/dom/ASTNode$NodeList;

    iput-object v0, p0, Lorg/eclipse/jdt/core/dom/ClassInstanceCreation;->typeName:Lorg/eclipse/jdt/core/dom/Name;

    iput-object v0, p0, Lorg/eclipse/jdt/core/dom/ClassInstanceCreation;->type:Lorg/eclipse/jdt/core/dom/Type;

    new-instance v1, Lorg/eclipse/jdt/core/dom/ASTNode$NodeList;

    sget-object v2, Lorg/eclipse/jdt/core/dom/ClassInstanceCreation;->ARGUMENTS_PROPERTY:Lorg/eclipse/jdt/core/dom/ChildListPropertyDescriptor;

    invoke-direct {v1, p0, v2}, Lorg/eclipse/jdt/core/dom/ASTNode$NodeList;-><init>(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/ChildListPropertyDescriptor;)V

    iput-object v1, p0, Lorg/eclipse/jdt/core/dom/ClassInstanceCreation;->arguments:Lorg/eclipse/jdt/core/dom/ASTNode$NodeList;

    iput-object v0, p0, Lorg/eclipse/jdt/core/dom/ClassInstanceCreation;->optionalAnonymousClassDeclaration:Lorg/eclipse/jdt/core/dom/AnonymousClassDeclaration;

    iget p1, p1, Lorg/eclipse/jdt/core/dom/AST;->apiLevel:I

    const/4 v0, 0x3

    if-lt p1, v0, :cond_0

    new-instance p1, Lorg/eclipse/jdt/core/dom/ASTNode$NodeList;

    sget-object v0, Lorg/eclipse/jdt/core/dom/ClassInstanceCreation;->TYPE_ARGUMENTS_PROPERTY:Lorg/eclipse/jdt/core/dom/ChildListPropertyDescriptor;

    invoke-direct {p1, p0, v0}, Lorg/eclipse/jdt/core/dom/ASTNode$NodeList;-><init>(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/ChildListPropertyDescriptor;)V

    iput-object p1, p0, Lorg/eclipse/jdt/core/dom/ClassInstanceCreation;->typeArguments:Lorg/eclipse/jdt/core/dom/ASTNode$NodeList;

    :cond_0
    return-void
.end method

.method public static propertyDescriptors(I)Ljava/util/List;
    .locals 1

    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    sget-object p0, Lorg/eclipse/jdt/core/dom/ClassInstanceCreation;->PROPERTY_DESCRIPTORS_2_0:Ljava/util/List;

    return-object p0

    :cond_0
    sget-object p0, Lorg/eclipse/jdt/core/dom/ClassInstanceCreation;->PROPERTY_DESCRIPTORS_3_0:Ljava/util/List;

    return-object p0
.end method


# virtual methods
.method public accept0(Lorg/eclipse/jdt/core/dom/ASTVisitor;)V
    .locals 2

    invoke-virtual {p1, p0}, Lorg/eclipse/jdt/core/dom/ASTVisitor;->visit(Lorg/eclipse/jdt/core/dom/ClassInstanceCreation;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lorg/eclipse/jdt/core/dom/ClassInstanceCreation;->getExpression()Lorg/eclipse/jdt/core/dom/Expression;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lorg/eclipse/jdt/core/dom/ASTNode;->acceptChild(Lorg/eclipse/jdt/core/dom/ASTVisitor;Lorg/eclipse/jdt/core/dom/ASTNode;)V

    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/ASTNode;->ast:Lorg/eclipse/jdt/core/dom/AST;

    iget v0, v0, Lorg/eclipse/jdt/core/dom/AST;->apiLevel:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lorg/eclipse/jdt/core/dom/ClassInstanceCreation;->getName()Lorg/eclipse/jdt/core/dom/Name;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lorg/eclipse/jdt/core/dom/ASTNode;->acceptChild(Lorg/eclipse/jdt/core/dom/ASTVisitor;Lorg/eclipse/jdt/core/dom/ASTNode;)V

    :cond_0
    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/ASTNode;->ast:Lorg/eclipse/jdt/core/dom/AST;

    iget v0, v0, Lorg/eclipse/jdt/core/dom/AST;->apiLevel:I

    const/4 v1, 0x3

    if-lt v0, v1, :cond_1

    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/ClassInstanceCreation;->typeArguments:Lorg/eclipse/jdt/core/dom/ASTNode$NodeList;

    invoke-virtual {p0, p1, v0}, Lorg/eclipse/jdt/core/dom/ASTNode;->acceptChildren(Lorg/eclipse/jdt/core/dom/ASTVisitor;Lorg/eclipse/jdt/core/dom/ASTNode$NodeList;)V

    invoke-virtual {p0}, Lorg/eclipse/jdt/core/dom/ClassInstanceCreation;->getType()Lorg/eclipse/jdt/core/dom/Type;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lorg/eclipse/jdt/core/dom/ASTNode;->acceptChild(Lorg/eclipse/jdt/core/dom/ASTVisitor;Lorg/eclipse/jdt/core/dom/ASTNode;)V

    :cond_1
    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/ClassInstanceCreation;->arguments:Lorg/eclipse/jdt/core/dom/ASTNode$NodeList;

    invoke-virtual {p0, p1, v0}, Lorg/eclipse/jdt/core/dom/ASTNode;->acceptChildren(Lorg/eclipse/jdt/core/dom/ASTVisitor;Lorg/eclipse/jdt/core/dom/ASTNode$NodeList;)V

    invoke-virtual {p0}, Lorg/eclipse/jdt/core/dom/ClassInstanceCreation;->getAnonymousClassDeclaration()Lorg/eclipse/jdt/core/dom/AnonymousClassDeclaration;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lorg/eclipse/jdt/core/dom/ASTNode;->acceptChild(Lorg/eclipse/jdt/core/dom/ASTVisitor;Lorg/eclipse/jdt/core/dom/ASTNode;)V

    :cond_2
    invoke-virtual {p1, p0}, Lorg/eclipse/jdt/core/dom/ASTVisitor;->endVisit(Lorg/eclipse/jdt/core/dom/ClassInstanceCreation;)V

    return-void
.end method

.method public arguments()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/ClassInstanceCreation;->arguments:Lorg/eclipse/jdt/core/dom/ASTNode$NodeList;

    return-object v0
.end method

.method public clone0(Lorg/eclipse/jdt/core/dom/AST;)Lorg/eclipse/jdt/core/dom/ASTNode;
    .locals 3

    new-instance v0, Lorg/eclipse/jdt/core/dom/ClassInstanceCreation;

    invoke-direct {v0, p1}, Lorg/eclipse/jdt/core/dom/ClassInstanceCreation;-><init>(Lorg/eclipse/jdt/core/dom/AST;)V

    invoke-virtual {p0}, Lorg/eclipse/jdt/core/dom/ASTNode;->getStartPosition()I

    move-result v1

    invoke-virtual {p0}, Lorg/eclipse/jdt/core/dom/ASTNode;->getLength()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/eclipse/jdt/core/dom/ASTNode;->setSourceRange(II)V

    invoke-virtual {p0}, Lorg/eclipse/jdt/core/dom/ClassInstanceCreation;->getExpression()Lorg/eclipse/jdt/core/dom/Expression;

    move-result-object v1

    invoke-static {p1, v1}, Lorg/eclipse/jdt/core/dom/ASTNode;->copySubtree(Lorg/eclipse/jdt/core/dom/AST;Lorg/eclipse/jdt/core/dom/ASTNode;)Lorg/eclipse/jdt/core/dom/ASTNode;

    move-result-object v1

    check-cast v1, Lorg/eclipse/jdt/core/dom/Expression;

    invoke-virtual {v0, v1}, Lorg/eclipse/jdt/core/dom/ClassInstanceCreation;->setExpression(Lorg/eclipse/jdt/core/dom/Expression;)V

    iget-object v1, p0, Lorg/eclipse/jdt/core/dom/ASTNode;->ast:Lorg/eclipse/jdt/core/dom/AST;

    iget v1, v1, Lorg/eclipse/jdt/core/dom/AST;->apiLevel:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    invoke-virtual {p0}, Lorg/eclipse/jdt/core/dom/ClassInstanceCreation;->getName()Lorg/eclipse/jdt/core/dom/Name;

    move-result-object v1

    invoke-virtual {v1, p1}, Lorg/eclipse/jdt/core/dom/ASTNode;->clone(Lorg/eclipse/jdt/core/dom/AST;)Lorg/eclipse/jdt/core/dom/ASTNode;

    move-result-object v1

    check-cast v1, Lorg/eclipse/jdt/core/dom/Name;

    invoke-virtual {v0, v1}, Lorg/eclipse/jdt/core/dom/ClassInstanceCreation;->setName(Lorg/eclipse/jdt/core/dom/Name;)V

    :cond_0
    iget-object v1, p0, Lorg/eclipse/jdt/core/dom/ASTNode;->ast:Lorg/eclipse/jdt/core/dom/AST;

    iget v1, v1, Lorg/eclipse/jdt/core/dom/AST;->apiLevel:I

    const/4 v2, 0x3

    if-lt v1, v2, :cond_1

    invoke-virtual {v0}, Lorg/eclipse/jdt/core/dom/ClassInstanceCreation;->typeArguments()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0}, Lorg/eclipse/jdt/core/dom/ClassInstanceCreation;->typeArguments()Ljava/util/List;

    move-result-object v2

    invoke-static {p1, v2}, Lorg/eclipse/jdt/core/dom/ASTNode;->copySubtrees(Lorg/eclipse/jdt/core/dom/AST;Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {p0}, Lorg/eclipse/jdt/core/dom/ClassInstanceCreation;->getType()Lorg/eclipse/jdt/core/dom/Type;

    move-result-object v1

    invoke-virtual {v1, p1}, Lorg/eclipse/jdt/core/dom/ASTNode;->clone(Lorg/eclipse/jdt/core/dom/AST;)Lorg/eclipse/jdt/core/dom/ASTNode;

    move-result-object v1

    check-cast v1, Lorg/eclipse/jdt/core/dom/Type;

    invoke-virtual {v0, v1}, Lorg/eclipse/jdt/core/dom/ClassInstanceCreation;->setType(Lorg/eclipse/jdt/core/dom/Type;)V

    :cond_1
    invoke-virtual {v0}, Lorg/eclipse/jdt/core/dom/ClassInstanceCreation;->arguments()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0}, Lorg/eclipse/jdt/core/dom/ClassInstanceCreation;->arguments()Ljava/util/List;

    move-result-object v2

    invoke-static {p1, v2}, Lorg/eclipse/jdt/core/dom/ASTNode;->copySubtrees(Lorg/eclipse/jdt/core/dom/AST;Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {p0}, Lorg/eclipse/jdt/core/dom/ClassInstanceCreation;->getAnonymousClassDeclaration()Lorg/eclipse/jdt/core/dom/AnonymousClassDeclaration;

    move-result-object v1

    invoke-static {p1, v1}, Lorg/eclipse/jdt/core/dom/ASTNode;->copySubtree(Lorg/eclipse/jdt/core/dom/AST;Lorg/eclipse/jdt/core/dom/ASTNode;)Lorg/eclipse/jdt/core/dom/ASTNode;

    move-result-object p1

    check-cast p1, Lorg/eclipse/jdt/core/dom/AnonymousClassDeclaration;

    invoke-virtual {v0, p1}, Lorg/eclipse/jdt/core/dom/ClassInstanceCreation;->setAnonymousClassDeclaration(Lorg/eclipse/jdt/core/dom/AnonymousClassDeclaration;)V

    return-object v0
.end method

.method public getAnonymousClassDeclaration()Lorg/eclipse/jdt/core/dom/AnonymousClassDeclaration;
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/ClassInstanceCreation;->optionalAnonymousClassDeclaration:Lorg/eclipse/jdt/core/dom/AnonymousClassDeclaration;

    return-object v0
.end method

.method public getExpression()Lorg/eclipse/jdt/core/dom/Expression;
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/ClassInstanceCreation;->optionalExpression:Lorg/eclipse/jdt/core/dom/Expression;

    return-object v0
.end method

.method public getName()Lorg/eclipse/jdt/core/dom/Name;
    .locals 1

    invoke-virtual {p0}, Lorg/eclipse/jdt/core/dom/ClassInstanceCreation;->internalGetName()Lorg/eclipse/jdt/core/dom/Name;

    move-result-object v0

    return-object v0
.end method

.method public final getNodeType0()I
    .locals 1

    const/16 v0, 0xe

    return v0
.end method

.method public getType()Lorg/eclipse/jdt/core/dom/Type;
    .locals 2

    invoke-virtual {p0}, Lorg/eclipse/jdt/core/dom/ASTNode;->unsupportedIn2()V

    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/ClassInstanceCreation;->type:Lorg/eclipse/jdt/core/dom/Type;

    if-nez v0, :cond_1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/ClassInstanceCreation;->type:Lorg/eclipse/jdt/core/dom/Type;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lorg/eclipse/jdt/core/dom/ASTNode;->preLazyInit()V

    new-instance v0, Lorg/eclipse/jdt/core/dom/SimpleType;

    iget-object v1, p0, Lorg/eclipse/jdt/core/dom/ASTNode;->ast:Lorg/eclipse/jdt/core/dom/AST;

    invoke-direct {v0, v1}, Lorg/eclipse/jdt/core/dom/SimpleType;-><init>(Lorg/eclipse/jdt/core/dom/AST;)V

    iput-object v0, p0, Lorg/eclipse/jdt/core/dom/ClassInstanceCreation;->type:Lorg/eclipse/jdt/core/dom/Type;

    sget-object v1, Lorg/eclipse/jdt/core/dom/ClassInstanceCreation;->TYPE_PROPERTY:Lorg/eclipse/jdt/core/dom/ChildPropertyDescriptor;

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
    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/ClassInstanceCreation;->type:Lorg/eclipse/jdt/core/dom/Type;

    return-object v0
.end method

.method public final internalGetChildListProperty(Lorg/eclipse/jdt/core/dom/ChildListPropertyDescriptor;)Ljava/util/List;
    .locals 1

    sget-object v0, Lorg/eclipse/jdt/core/dom/ClassInstanceCreation;->ARGUMENTS_PROPERTY:Lorg/eclipse/jdt/core/dom/ChildListPropertyDescriptor;

    if-ne p1, v0, :cond_0

    invoke-virtual {p0}, Lorg/eclipse/jdt/core/dom/ClassInstanceCreation;->arguments()Ljava/util/List;

    move-result-object p1

    return-object p1

    :cond_0
    sget-object v0, Lorg/eclipse/jdt/core/dom/ClassInstanceCreation;->TYPE_ARGUMENTS_PROPERTY:Lorg/eclipse/jdt/core/dom/ChildListPropertyDescriptor;

    if-ne p1, v0, :cond_1

    invoke-virtual {p0}, Lorg/eclipse/jdt/core/dom/ClassInstanceCreation;->typeArguments()Ljava/util/List;

    move-result-object p1

    return-object p1

    :cond_1
    invoke-super {p0, p1}, Lorg/eclipse/jdt/core/dom/ASTNode;->internalGetChildListProperty(Lorg/eclipse/jdt/core/dom/ChildListPropertyDescriptor;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public internalGetName()Lorg/eclipse/jdt/core/dom/Name;
    .locals 2

    invoke-virtual {p0}, Lorg/eclipse/jdt/core/dom/ASTNode;->supportedOnlyIn2()V

    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/ClassInstanceCreation;->typeName:Lorg/eclipse/jdt/core/dom/Name;

    if-nez v0, :cond_1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/ClassInstanceCreation;->typeName:Lorg/eclipse/jdt/core/dom/Name;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lorg/eclipse/jdt/core/dom/ASTNode;->preLazyInit()V

    new-instance v0, Lorg/eclipse/jdt/core/dom/SimpleName;

    iget-object v1, p0, Lorg/eclipse/jdt/core/dom/ASTNode;->ast:Lorg/eclipse/jdt/core/dom/AST;

    invoke-direct {v0, v1}, Lorg/eclipse/jdt/core/dom/SimpleName;-><init>(Lorg/eclipse/jdt/core/dom/AST;)V

    iput-object v0, p0, Lorg/eclipse/jdt/core/dom/ClassInstanceCreation;->typeName:Lorg/eclipse/jdt/core/dom/Name;

    sget-object v1, Lorg/eclipse/jdt/core/dom/ClassInstanceCreation;->NAME_PROPERTY:Lorg/eclipse/jdt/core/dom/ChildPropertyDescriptor;

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
    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/ClassInstanceCreation;->typeName:Lorg/eclipse/jdt/core/dom/Name;

    return-object v0
.end method

.method public final internalGetSetChildProperty(Lorg/eclipse/jdt/core/dom/ChildPropertyDescriptor;ZLorg/eclipse/jdt/core/dom/ASTNode;)Lorg/eclipse/jdt/core/dom/ASTNode;
    .locals 2

    sget-object v0, Lorg/eclipse/jdt/core/dom/ClassInstanceCreation;->EXPRESSION_PROPERTY:Lorg/eclipse/jdt/core/dom/ChildPropertyDescriptor;

    const/4 v1, 0x0

    if-ne p1, v0, :cond_1

    if-eqz p2, :cond_0

    invoke-virtual {p0}, Lorg/eclipse/jdt/core/dom/ClassInstanceCreation;->getExpression()Lorg/eclipse/jdt/core/dom/Expression;

    move-result-object p1

    return-object p1

    :cond_0
    check-cast p3, Lorg/eclipse/jdt/core/dom/Expression;

    invoke-virtual {p0, p3}, Lorg/eclipse/jdt/core/dom/ClassInstanceCreation;->setExpression(Lorg/eclipse/jdt/core/dom/Expression;)V

    return-object v1

    :cond_1
    sget-object v0, Lorg/eclipse/jdt/core/dom/ClassInstanceCreation;->NAME_PROPERTY:Lorg/eclipse/jdt/core/dom/ChildPropertyDescriptor;

    if-ne p1, v0, :cond_3

    if-eqz p2, :cond_2

    invoke-virtual {p0}, Lorg/eclipse/jdt/core/dom/ClassInstanceCreation;->getName()Lorg/eclipse/jdt/core/dom/Name;

    move-result-object p1

    return-object p1

    :cond_2
    check-cast p3, Lorg/eclipse/jdt/core/dom/Name;

    invoke-virtual {p0, p3}, Lorg/eclipse/jdt/core/dom/ClassInstanceCreation;->setName(Lorg/eclipse/jdt/core/dom/Name;)V

    return-object v1

    :cond_3
    sget-object v0, Lorg/eclipse/jdt/core/dom/ClassInstanceCreation;->TYPE_PROPERTY:Lorg/eclipse/jdt/core/dom/ChildPropertyDescriptor;

    if-ne p1, v0, :cond_5

    if-eqz p2, :cond_4

    invoke-virtual {p0}, Lorg/eclipse/jdt/core/dom/ClassInstanceCreation;->getType()Lorg/eclipse/jdt/core/dom/Type;

    move-result-object p1

    return-object p1

    :cond_4
    check-cast p3, Lorg/eclipse/jdt/core/dom/Type;

    invoke-virtual {p0, p3}, Lorg/eclipse/jdt/core/dom/ClassInstanceCreation;->setType(Lorg/eclipse/jdt/core/dom/Type;)V

    return-object v1

    :cond_5
    sget-object v0, Lorg/eclipse/jdt/core/dom/ClassInstanceCreation;->ANONYMOUS_CLASS_DECLARATION_PROPERTY:Lorg/eclipse/jdt/core/dom/ChildPropertyDescriptor;

    if-ne p1, v0, :cond_7

    if-eqz p2, :cond_6

    invoke-virtual {p0}, Lorg/eclipse/jdt/core/dom/ClassInstanceCreation;->getAnonymousClassDeclaration()Lorg/eclipse/jdt/core/dom/AnonymousClassDeclaration;

    move-result-object p1

    return-object p1

    :cond_6
    check-cast p3, Lorg/eclipse/jdt/core/dom/AnonymousClassDeclaration;

    invoke-virtual {p0, p3}, Lorg/eclipse/jdt/core/dom/ClassInstanceCreation;->setAnonymousClassDeclaration(Lorg/eclipse/jdt/core/dom/AnonymousClassDeclaration;)V

    return-object v1

    :cond_7
    invoke-super {p0, p1, p2, p3}, Lorg/eclipse/jdt/core/dom/ASTNode;->internalGetSetChildProperty(Lorg/eclipse/jdt/core/dom/ChildPropertyDescriptor;ZLorg/eclipse/jdt/core/dom/ASTNode;)Lorg/eclipse/jdt/core/dom/ASTNode;

    move-result-object p1

    return-object p1
.end method

.method public internalSetName(Lorg/eclipse/jdt/core/dom/Name;)V
    .locals 2

    invoke-virtual {p0}, Lorg/eclipse/jdt/core/dom/ASTNode;->supportedOnlyIn2()V

    if-eqz p1, :cond_0

    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/ClassInstanceCreation;->typeName:Lorg/eclipse/jdt/core/dom/Name;

    sget-object v1, Lorg/eclipse/jdt/core/dom/ClassInstanceCreation;->NAME_PROPERTY:Lorg/eclipse/jdt/core/dom/ChildPropertyDescriptor;

    invoke-virtual {p0, v0, p1, v1}, Lorg/eclipse/jdt/core/dom/ASTNode;->preReplaceChild(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/ChildPropertyDescriptor;)V

    iput-object p1, p0, Lorg/eclipse/jdt/core/dom/ClassInstanceCreation;->typeName:Lorg/eclipse/jdt/core/dom/Name;

    invoke-virtual {p0, v0, p1, v1}, Lorg/eclipse/jdt/core/dom/ASTNode;->postReplaceChild(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/ChildPropertyDescriptor;)V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method public final internalStructuralPropertiesForType(I)Ljava/util/List;
    .locals 0

    invoke-static {p1}, Lorg/eclipse/jdt/core/dom/ClassInstanceCreation;->propertyDescriptors(I)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public isResolvedTypeInferredFromExpectedType()Z
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/ASTNode;->ast:Lorg/eclipse/jdt/core/dom/AST;

    invoke-virtual {v0}, Lorg/eclipse/jdt/core/dom/AST;->getBindingResolver()Lorg/eclipse/jdt/core/dom/BindingResolver;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/eclipse/jdt/core/dom/BindingResolver;->isResolvedTypeInferredFromExpectedType(Lorg/eclipse/jdt/core/dom/ClassInstanceCreation;)Z

    move-result v0

    return v0
.end method

.method public memSize()I
    .locals 1

    const/16 v0, 0x40

    return v0
.end method

.method public resolveConstructorBinding()Lorg/eclipse/jdt/core/dom/IMethodBinding;
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/ASTNode;->ast:Lorg/eclipse/jdt/core/dom/AST;

    invoke-virtual {v0}, Lorg/eclipse/jdt/core/dom/AST;->getBindingResolver()Lorg/eclipse/jdt/core/dom/BindingResolver;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/eclipse/jdt/core/dom/BindingResolver;->resolveConstructor(Lorg/eclipse/jdt/core/dom/ClassInstanceCreation;)Lorg/eclipse/jdt/core/dom/IMethodBinding;

    move-result-object v0

    return-object v0
.end method

.method public setAnonymousClassDeclaration(Lorg/eclipse/jdt/core/dom/AnonymousClassDeclaration;)V
    .locals 2

    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/ClassInstanceCreation;->optionalAnonymousClassDeclaration:Lorg/eclipse/jdt/core/dom/AnonymousClassDeclaration;

    sget-object v1, Lorg/eclipse/jdt/core/dom/ClassInstanceCreation;->ANONYMOUS_CLASS_DECLARATION_PROPERTY:Lorg/eclipse/jdt/core/dom/ChildPropertyDescriptor;

    invoke-virtual {p0, v0, p1, v1}, Lorg/eclipse/jdt/core/dom/ASTNode;->preReplaceChild(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/ChildPropertyDescriptor;)V

    iput-object p1, p0, Lorg/eclipse/jdt/core/dom/ClassInstanceCreation;->optionalAnonymousClassDeclaration:Lorg/eclipse/jdt/core/dom/AnonymousClassDeclaration;

    invoke-virtual {p0, v0, p1, v1}, Lorg/eclipse/jdt/core/dom/ASTNode;->postReplaceChild(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/ChildPropertyDescriptor;)V

    return-void
.end method

.method public setExpression(Lorg/eclipse/jdt/core/dom/Expression;)V
    .locals 2

    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/ClassInstanceCreation;->optionalExpression:Lorg/eclipse/jdt/core/dom/Expression;

    sget-object v1, Lorg/eclipse/jdt/core/dom/ClassInstanceCreation;->EXPRESSION_PROPERTY:Lorg/eclipse/jdt/core/dom/ChildPropertyDescriptor;

    invoke-virtual {p0, v0, p1, v1}, Lorg/eclipse/jdt/core/dom/ASTNode;->preReplaceChild(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/ChildPropertyDescriptor;)V

    iput-object p1, p0, Lorg/eclipse/jdt/core/dom/ClassInstanceCreation;->optionalExpression:Lorg/eclipse/jdt/core/dom/Expression;

    invoke-virtual {p0, v0, p1, v1}, Lorg/eclipse/jdt/core/dom/ASTNode;->postReplaceChild(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/ChildPropertyDescriptor;)V

    return-void
.end method

.method public setName(Lorg/eclipse/jdt/core/dom/Name;)V
    .locals 0

    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/core/dom/ClassInstanceCreation;->internalSetName(Lorg/eclipse/jdt/core/dom/Name;)V

    return-void
.end method

.method public setType(Lorg/eclipse/jdt/core/dom/Type;)V
    .locals 2

    invoke-virtual {p0}, Lorg/eclipse/jdt/core/dom/ASTNode;->unsupportedIn2()V

    if-eqz p1, :cond_0

    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/ClassInstanceCreation;->type:Lorg/eclipse/jdt/core/dom/Type;

    sget-object v1, Lorg/eclipse/jdt/core/dom/ClassInstanceCreation;->TYPE_PROPERTY:Lorg/eclipse/jdt/core/dom/ChildPropertyDescriptor;

    invoke-virtual {p0, v0, p1, v1}, Lorg/eclipse/jdt/core/dom/ASTNode;->preReplaceChild(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/ChildPropertyDescriptor;)V

    iput-object p1, p0, Lorg/eclipse/jdt/core/dom/ClassInstanceCreation;->type:Lorg/eclipse/jdt/core/dom/Type;

    invoke-virtual {p0, v0, p1, v1}, Lorg/eclipse/jdt/core/dom/ASTNode;->postReplaceChild(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/ChildPropertyDescriptor;)V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method public final subtreeMatch0(Lorg/eclipse/jdt/core/dom/ASTMatcher;Ljava/lang/Object;)Z
    .locals 0

    invoke-virtual {p1, p0, p2}, Lorg/eclipse/jdt/core/dom/ASTMatcher;->match(Lorg/eclipse/jdt/core/dom/ClassInstanceCreation;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public treeSize()I
    .locals 3

    invoke-virtual {p0}, Lorg/eclipse/jdt/core/dom/ClassInstanceCreation;->memSize()I

    move-result v0

    iget-object v1, p0, Lorg/eclipse/jdt/core/dom/ClassInstanceCreation;->typeName:Lorg/eclipse/jdt/core/dom/Name;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lorg/eclipse/jdt/core/dom/ClassInstanceCreation;->getName()Lorg/eclipse/jdt/core/dom/Name;

    move-result-object v1

    invoke-virtual {v1}, Lorg/eclipse/jdt/core/dom/ASTNode;->treeSize()I

    move-result v1

    :goto_0
    add-int/2addr v0, v1

    iget-object v1, p0, Lorg/eclipse/jdt/core/dom/ClassInstanceCreation;->type:Lorg/eclipse/jdt/core/dom/Type;

    if-nez v1, :cond_1

    move v1, v2

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lorg/eclipse/jdt/core/dom/ClassInstanceCreation;->getType()Lorg/eclipse/jdt/core/dom/Type;

    move-result-object v1

    invoke-virtual {v1}, Lorg/eclipse/jdt/core/dom/ASTNode;->treeSize()I

    move-result v1

    :goto_1
    add-int/2addr v0, v1

    iget-object v1, p0, Lorg/eclipse/jdt/core/dom/ClassInstanceCreation;->optionalExpression:Lorg/eclipse/jdt/core/dom/Expression;

    if-nez v1, :cond_2

    move v1, v2

    goto :goto_2

    :cond_2
    invoke-virtual {p0}, Lorg/eclipse/jdt/core/dom/ClassInstanceCreation;->getExpression()Lorg/eclipse/jdt/core/dom/Expression;

    move-result-object v1

    invoke-virtual {v1}, Lorg/eclipse/jdt/core/dom/ASTNode;->treeSize()I

    move-result v1

    :goto_2
    add-int/2addr v0, v1

    iget-object v1, p0, Lorg/eclipse/jdt/core/dom/ClassInstanceCreation;->typeArguments:Lorg/eclipse/jdt/core/dom/ASTNode$NodeList;

    if-nez v1, :cond_3

    move v1, v2

    goto :goto_3

    :cond_3
    invoke-virtual {v1}, Lorg/eclipse/jdt/core/dom/ASTNode$NodeList;->listSize()I

    move-result v1

    :goto_3
    add-int/2addr v0, v1

    iget-object v1, p0, Lorg/eclipse/jdt/core/dom/ClassInstanceCreation;->arguments:Lorg/eclipse/jdt/core/dom/ASTNode$NodeList;

    if-nez v1, :cond_4

    move v1, v2

    goto :goto_4

    :cond_4
    invoke-virtual {v1}, Lorg/eclipse/jdt/core/dom/ASTNode$NodeList;->listSize()I

    move-result v1

    :goto_4
    add-int/2addr v0, v1

    iget-object v1, p0, Lorg/eclipse/jdt/core/dom/ClassInstanceCreation;->optionalAnonymousClassDeclaration:Lorg/eclipse/jdt/core/dom/AnonymousClassDeclaration;

    if-nez v1, :cond_5

    goto :goto_5

    :cond_5
    invoke-virtual {p0}, Lorg/eclipse/jdt/core/dom/ClassInstanceCreation;->getAnonymousClassDeclaration()Lorg/eclipse/jdt/core/dom/AnonymousClassDeclaration;

    move-result-object v1

    invoke-virtual {v1}, Lorg/eclipse/jdt/core/dom/AnonymousClassDeclaration;->treeSize()I

    move-result v2

    :goto_5
    add-int/2addr v0, v2

    return v0
.end method

.method public typeArguments()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/ClassInstanceCreation;->typeArguments:Lorg/eclipse/jdt/core/dom/ASTNode$NodeList;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lorg/eclipse/jdt/core/dom/ASTNode;->unsupportedIn2()V

    :cond_0
    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/ClassInstanceCreation;->typeArguments:Lorg/eclipse/jdt/core/dom/ASTNode$NodeList;

    return-object v0
.end method
