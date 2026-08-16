.class public Lorg/eclipse/jdt/core/dom/TypeDeclaration;
.super Lorg/eclipse/jdt/core/dom/AbstractTypeDeclaration;
.source "SourceFile"


# static fields
.field public static final BODY_DECLARATIONS_PROPERTY:Lorg/eclipse/jdt/core/dom/ChildListPropertyDescriptor;

.field public static final INTERFACE_PROPERTY:Lorg/eclipse/jdt/core/dom/SimplePropertyDescriptor;

.field public static final JAVADOC_PROPERTY:Lorg/eclipse/jdt/core/dom/ChildPropertyDescriptor;

.field public static final MODIFIERS2_PROPERTY:Lorg/eclipse/jdt/core/dom/ChildListPropertyDescriptor;

.field public static final MODIFIERS_PROPERTY:Lorg/eclipse/jdt/core/dom/SimplePropertyDescriptor;

.field public static final NAME_PROPERTY:Lorg/eclipse/jdt/core/dom/ChildPropertyDescriptor;

.field private static final PROPERTY_DESCRIPTORS_2_0:Ljava/util/List;

.field private static final PROPERTY_DESCRIPTORS_3_0:Ljava/util/List;

.field public static final SUPERCLASS_PROPERTY:Lorg/eclipse/jdt/core/dom/ChildPropertyDescriptor;

.field public static final SUPERCLASS_TYPE_PROPERTY:Lorg/eclipse/jdt/core/dom/ChildPropertyDescriptor;

.field public static final SUPER_INTERFACES_PROPERTY:Lorg/eclipse/jdt/core/dom/ChildListPropertyDescriptor;

.field public static final SUPER_INTERFACE_TYPES_PROPERTY:Lorg/eclipse/jdt/core/dom/ChildListPropertyDescriptor;

.field public static final TYPE_PARAMETERS_PROPERTY:Lorg/eclipse/jdt/core/dom/ChildListPropertyDescriptor;


# instance fields
.field private isInterface:Z

.field private optionalSuperclassName:Lorg/eclipse/jdt/core/dom/Name;

.field private optionalSuperclassType:Lorg/eclipse/jdt/core/dom/Type;

.field private superInterfaceNames:Lorg/eclipse/jdt/core/dom/ASTNode$NodeList;

.field private superInterfaceTypes:Lorg/eclipse/jdt/core/dom/ASTNode$NodeList;

.field private typeParameters:Lorg/eclipse/jdt/core/dom/ASTNode$NodeList;


# direct methods
.method static constructor <clinit>()V
    .locals 19

    const-class v0, Lorg/eclipse/jdt/core/dom/TypeDeclaration;

    invoke-static {v0}, Lorg/eclipse/jdt/core/dom/BodyDeclaration;->internalJavadocPropertyFactory(Ljava/lang/Class;)Lorg/eclipse/jdt/core/dom/ChildPropertyDescriptor;

    move-result-object v1

    sput-object v1, Lorg/eclipse/jdt/core/dom/TypeDeclaration;->JAVADOC_PROPERTY:Lorg/eclipse/jdt/core/dom/ChildPropertyDescriptor;

    invoke-static {v0}, Lorg/eclipse/jdt/core/dom/BodyDeclaration;->internalModifiersPropertyFactory(Ljava/lang/Class;)Lorg/eclipse/jdt/core/dom/SimplePropertyDescriptor;

    move-result-object v2

    sput-object v2, Lorg/eclipse/jdt/core/dom/TypeDeclaration;->MODIFIERS_PROPERTY:Lorg/eclipse/jdt/core/dom/SimplePropertyDescriptor;

    invoke-static {v0}, Lorg/eclipse/jdt/core/dom/BodyDeclaration;->internalModifiers2PropertyFactory(Ljava/lang/Class;)Lorg/eclipse/jdt/core/dom/ChildListPropertyDescriptor;

    move-result-object v3

    sput-object v3, Lorg/eclipse/jdt/core/dom/TypeDeclaration;->MODIFIERS2_PROPERTY:Lorg/eclipse/jdt/core/dom/ChildListPropertyDescriptor;

    new-instance v4, Lorg/eclipse/jdt/core/dom/SimplePropertyDescriptor;

    sget-object v5, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v6, 0x1

    const-string v7, "interface"

    invoke-direct {v4, v0, v7, v5, v6}, Lorg/eclipse/jdt/core/dom/SimplePropertyDescriptor;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;Z)V

    sput-object v4, Lorg/eclipse/jdt/core/dom/TypeDeclaration;->INTERFACE_PROPERTY:Lorg/eclipse/jdt/core/dom/SimplePropertyDescriptor;

    invoke-static {v0}, Lorg/eclipse/jdt/core/dom/AbstractTypeDeclaration;->internalNamePropertyFactory(Ljava/lang/Class;)Lorg/eclipse/jdt/core/dom/ChildPropertyDescriptor;

    move-result-object v5

    sput-object v5, Lorg/eclipse/jdt/core/dom/TypeDeclaration;->NAME_PROPERTY:Lorg/eclipse/jdt/core/dom/ChildPropertyDescriptor;

    new-instance v12, Lorg/eclipse/jdt/core/dom/ChildPropertyDescriptor;

    const/4 v10, 0x0

    const/4 v11, 0x0

    const-class v7, Lorg/eclipse/jdt/core/dom/TypeDeclaration;

    const-string v8, "superclass"

    const-class v9, Lorg/eclipse/jdt/core/dom/Name;

    move-object v6, v12

    invoke-direct/range {v6 .. v11}, Lorg/eclipse/jdt/core/dom/ChildPropertyDescriptor;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;ZZ)V

    sput-object v12, Lorg/eclipse/jdt/core/dom/TypeDeclaration;->SUPERCLASS_PROPERTY:Lorg/eclipse/jdt/core/dom/ChildPropertyDescriptor;

    new-instance v6, Lorg/eclipse/jdt/core/dom/ChildListPropertyDescriptor;

    const-string v7, "superInterfaces"

    const-class v8, Lorg/eclipse/jdt/core/dom/Name;

    const/4 v9, 0x0

    invoke-direct {v6, v0, v7, v8, v9}, Lorg/eclipse/jdt/core/dom/ChildListPropertyDescriptor;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;Z)V

    sput-object v6, Lorg/eclipse/jdt/core/dom/TypeDeclaration;->SUPER_INTERFACES_PROPERTY:Lorg/eclipse/jdt/core/dom/ChildListPropertyDescriptor;

    new-instance v7, Lorg/eclipse/jdt/core/dom/ChildPropertyDescriptor;

    const/16 v17, 0x0

    const/16 v18, 0x0

    const-class v14, Lorg/eclipse/jdt/core/dom/TypeDeclaration;

    const-string v15, "superclassType"

    const-class v16, Lorg/eclipse/jdt/core/dom/Type;

    move-object v13, v7

    invoke-direct/range {v13 .. v18}, Lorg/eclipse/jdt/core/dom/ChildPropertyDescriptor;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;ZZ)V

    sput-object v7, Lorg/eclipse/jdt/core/dom/TypeDeclaration;->SUPERCLASS_TYPE_PROPERTY:Lorg/eclipse/jdt/core/dom/ChildPropertyDescriptor;

    new-instance v8, Lorg/eclipse/jdt/core/dom/ChildListPropertyDescriptor;

    const-string v10, "superInterfaceTypes"

    const-class v11, Lorg/eclipse/jdt/core/dom/Type;

    invoke-direct {v8, v0, v10, v11, v9}, Lorg/eclipse/jdt/core/dom/ChildListPropertyDescriptor;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;Z)V

    sput-object v8, Lorg/eclipse/jdt/core/dom/TypeDeclaration;->SUPER_INTERFACE_TYPES_PROPERTY:Lorg/eclipse/jdt/core/dom/ChildListPropertyDescriptor;

    new-instance v10, Lorg/eclipse/jdt/core/dom/ChildListPropertyDescriptor;

    const-string v11, "typeParameters"

    const-class v13, Lorg/eclipse/jdt/core/dom/TypeParameter;

    invoke-direct {v10, v0, v11, v13, v9}, Lorg/eclipse/jdt/core/dom/ChildListPropertyDescriptor;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;Z)V

    sput-object v10, Lorg/eclipse/jdt/core/dom/TypeDeclaration;->TYPE_PARAMETERS_PROPERTY:Lorg/eclipse/jdt/core/dom/ChildListPropertyDescriptor;

    invoke-static {v0}, Lorg/eclipse/jdt/core/dom/AbstractTypeDeclaration;->internalBodyDeclarationPropertyFactory(Ljava/lang/Class;)Lorg/eclipse/jdt/core/dom/ChildListPropertyDescriptor;

    move-result-object v9

    sput-object v9, Lorg/eclipse/jdt/core/dom/TypeDeclaration;->BODY_DECLARATIONS_PROPERTY:Lorg/eclipse/jdt/core/dom/ChildListPropertyDescriptor;

    new-instance v11, Ljava/util/ArrayList;

    const/16 v13, 0x8

    invoke-direct {v11, v13}, Ljava/util/ArrayList;-><init>(I)V

    invoke-static {v0, v11}, Lorg/eclipse/jdt/core/dom/ASTNode;->createPropertyList(Ljava/lang/Class;Ljava/util/List;)V

    invoke-static {v1, v11}, Lorg/eclipse/jdt/core/dom/ASTNode;->addProperty(Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;Ljava/util/List;)V

    invoke-static {v2, v11}, Lorg/eclipse/jdt/core/dom/ASTNode;->addProperty(Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;Ljava/util/List;)V

    invoke-static {v4, v11}, Lorg/eclipse/jdt/core/dom/ASTNode;->addProperty(Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;Ljava/util/List;)V

    invoke-static {v5, v11}, Lorg/eclipse/jdt/core/dom/ASTNode;->addProperty(Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;Ljava/util/List;)V

    invoke-static {v12, v11}, Lorg/eclipse/jdt/core/dom/ASTNode;->addProperty(Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;Ljava/util/List;)V

    invoke-static {v6, v11}, Lorg/eclipse/jdt/core/dom/ASTNode;->addProperty(Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;Ljava/util/List;)V

    invoke-static {v9, v11}, Lorg/eclipse/jdt/core/dom/ASTNode;->addProperty(Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;Ljava/util/List;)V

    invoke-static {v11}, Lorg/eclipse/jdt/core/dom/ASTNode;->reapPropertyList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    sput-object v2, Lorg/eclipse/jdt/core/dom/TypeDeclaration;->PROPERTY_DESCRIPTORS_2_0:Ljava/util/List;

    new-instance v2, Ljava/util/ArrayList;

    const/16 v6, 0x9

    invoke-direct {v2, v6}, Ljava/util/ArrayList;-><init>(I)V

    invoke-static {v0, v2}, Lorg/eclipse/jdt/core/dom/ASTNode;->createPropertyList(Ljava/lang/Class;Ljava/util/List;)V

    invoke-static {v1, v2}, Lorg/eclipse/jdt/core/dom/ASTNode;->addProperty(Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;Ljava/util/List;)V

    invoke-static {v3, v2}, Lorg/eclipse/jdt/core/dom/ASTNode;->addProperty(Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;Ljava/util/List;)V

    invoke-static {v4, v2}, Lorg/eclipse/jdt/core/dom/ASTNode;->addProperty(Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;Ljava/util/List;)V

    invoke-static {v5, v2}, Lorg/eclipse/jdt/core/dom/ASTNode;->addProperty(Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;Ljava/util/List;)V

    invoke-static {v10, v2}, Lorg/eclipse/jdt/core/dom/ASTNode;->addProperty(Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;Ljava/util/List;)V

    invoke-static {v7, v2}, Lorg/eclipse/jdt/core/dom/ASTNode;->addProperty(Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;Ljava/util/List;)V

    invoke-static {v8, v2}, Lorg/eclipse/jdt/core/dom/ASTNode;->addProperty(Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;Ljava/util/List;)V

    invoke-static {v9, v2}, Lorg/eclipse/jdt/core/dom/ASTNode;->addProperty(Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;Ljava/util/List;)V

    invoke-static {v2}, Lorg/eclipse/jdt/core/dom/ASTNode;->reapPropertyList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lorg/eclipse/jdt/core/dom/TypeDeclaration;->PROPERTY_DESCRIPTORS_3_0:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Lorg/eclipse/jdt/core/dom/AST;)V
    .locals 2

    invoke-direct {p0, p1}, Lorg/eclipse/jdt/core/dom/AbstractTypeDeclaration;-><init>(Lorg/eclipse/jdt/core/dom/AST;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/eclipse/jdt/core/dom/TypeDeclaration;->isInterface:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/eclipse/jdt/core/dom/TypeDeclaration;->typeParameters:Lorg/eclipse/jdt/core/dom/ASTNode$NodeList;

    iput-object v0, p0, Lorg/eclipse/jdt/core/dom/TypeDeclaration;->optionalSuperclassName:Lorg/eclipse/jdt/core/dom/Name;

    iput-object v0, p0, Lorg/eclipse/jdt/core/dom/TypeDeclaration;->superInterfaceNames:Lorg/eclipse/jdt/core/dom/ASTNode$NodeList;

    iput-object v0, p0, Lorg/eclipse/jdt/core/dom/TypeDeclaration;->optionalSuperclassType:Lorg/eclipse/jdt/core/dom/Type;

    iput-object v0, p0, Lorg/eclipse/jdt/core/dom/TypeDeclaration;->superInterfaceTypes:Lorg/eclipse/jdt/core/dom/ASTNode$NodeList;

    iget v0, p1, Lorg/eclipse/jdt/core/dom/AST;->apiLevel:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    new-instance v0, Lorg/eclipse/jdt/core/dom/ASTNode$NodeList;

    sget-object v1, Lorg/eclipse/jdt/core/dom/TypeDeclaration;->SUPER_INTERFACES_PROPERTY:Lorg/eclipse/jdt/core/dom/ChildListPropertyDescriptor;

    invoke-direct {v0, p0, v1}, Lorg/eclipse/jdt/core/dom/ASTNode$NodeList;-><init>(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/ChildListPropertyDescriptor;)V

    iput-object v0, p0, Lorg/eclipse/jdt/core/dom/TypeDeclaration;->superInterfaceNames:Lorg/eclipse/jdt/core/dom/ASTNode$NodeList;

    :cond_0
    iget p1, p1, Lorg/eclipse/jdt/core/dom/AST;->apiLevel:I

    const/4 v0, 0x3

    if-lt p1, v0, :cond_1

    new-instance p1, Lorg/eclipse/jdt/core/dom/ASTNode$NodeList;

    sget-object v0, Lorg/eclipse/jdt/core/dom/TypeDeclaration;->TYPE_PARAMETERS_PROPERTY:Lorg/eclipse/jdt/core/dom/ChildListPropertyDescriptor;

    invoke-direct {p1, p0, v0}, Lorg/eclipse/jdt/core/dom/ASTNode$NodeList;-><init>(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/ChildListPropertyDescriptor;)V

    iput-object p1, p0, Lorg/eclipse/jdt/core/dom/TypeDeclaration;->typeParameters:Lorg/eclipse/jdt/core/dom/ASTNode$NodeList;

    new-instance p1, Lorg/eclipse/jdt/core/dom/ASTNode$NodeList;

    sget-object v0, Lorg/eclipse/jdt/core/dom/TypeDeclaration;->SUPER_INTERFACE_TYPES_PROPERTY:Lorg/eclipse/jdt/core/dom/ChildListPropertyDescriptor;

    invoke-direct {p1, p0, v0}, Lorg/eclipse/jdt/core/dom/ASTNode$NodeList;-><init>(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/ChildListPropertyDescriptor;)V

    iput-object p1, p0, Lorg/eclipse/jdt/core/dom/TypeDeclaration;->superInterfaceTypes:Lorg/eclipse/jdt/core/dom/ASTNode$NodeList;

    :cond_1
    return-void
.end method

.method public static propertyDescriptors(I)Ljava/util/List;
    .locals 1

    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    sget-object p0, Lorg/eclipse/jdt/core/dom/TypeDeclaration;->PROPERTY_DESCRIPTORS_2_0:Ljava/util/List;

    return-object p0

    :cond_0
    sget-object p0, Lorg/eclipse/jdt/core/dom/TypeDeclaration;->PROPERTY_DESCRIPTORS_3_0:Ljava/util/List;

    return-object p0
.end method


# virtual methods
.method public accept0(Lorg/eclipse/jdt/core/dom/ASTVisitor;)V
    .locals 2

    invoke-virtual {p1, p0}, Lorg/eclipse/jdt/core/dom/ASTVisitor;->visit(Lorg/eclipse/jdt/core/dom/TypeDeclaration;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/ASTNode;->ast:Lorg/eclipse/jdt/core/dom/AST;

    iget v0, v0, Lorg/eclipse/jdt/core/dom/AST;->apiLevel:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lorg/eclipse/jdt/core/dom/BodyDeclaration;->getJavadoc()Lorg/eclipse/jdt/core/dom/Javadoc;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lorg/eclipse/jdt/core/dom/ASTNode;->acceptChild(Lorg/eclipse/jdt/core/dom/ASTVisitor;Lorg/eclipse/jdt/core/dom/ASTNode;)V

    invoke-virtual {p0}, Lorg/eclipse/jdt/core/dom/AbstractTypeDeclaration;->getName()Lorg/eclipse/jdt/core/dom/SimpleName;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lorg/eclipse/jdt/core/dom/ASTNode;->acceptChild(Lorg/eclipse/jdt/core/dom/ASTVisitor;Lorg/eclipse/jdt/core/dom/ASTNode;)V

    invoke-virtual {p0}, Lorg/eclipse/jdt/core/dom/TypeDeclaration;->getSuperclass()Lorg/eclipse/jdt/core/dom/Name;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lorg/eclipse/jdt/core/dom/ASTNode;->acceptChild(Lorg/eclipse/jdt/core/dom/ASTVisitor;Lorg/eclipse/jdt/core/dom/ASTNode;)V

    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/TypeDeclaration;->superInterfaceNames:Lorg/eclipse/jdt/core/dom/ASTNode$NodeList;

    invoke-virtual {p0, p1, v0}, Lorg/eclipse/jdt/core/dom/ASTNode;->acceptChildren(Lorg/eclipse/jdt/core/dom/ASTVisitor;Lorg/eclipse/jdt/core/dom/ASTNode$NodeList;)V

    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/AbstractTypeDeclaration;->bodyDeclarations:Lorg/eclipse/jdt/core/dom/ASTNode$NodeList;

    invoke-virtual {p0, p1, v0}, Lorg/eclipse/jdt/core/dom/ASTNode;->acceptChildren(Lorg/eclipse/jdt/core/dom/ASTVisitor;Lorg/eclipse/jdt/core/dom/ASTNode$NodeList;)V

    :cond_0
    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/ASTNode;->ast:Lorg/eclipse/jdt/core/dom/AST;

    iget v0, v0, Lorg/eclipse/jdt/core/dom/AST;->apiLevel:I

    const/4 v1, 0x3

    if-lt v0, v1, :cond_1

    invoke-virtual {p0}, Lorg/eclipse/jdt/core/dom/BodyDeclaration;->getJavadoc()Lorg/eclipse/jdt/core/dom/Javadoc;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lorg/eclipse/jdt/core/dom/ASTNode;->acceptChild(Lorg/eclipse/jdt/core/dom/ASTVisitor;Lorg/eclipse/jdt/core/dom/ASTNode;)V

    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/BodyDeclaration;->modifiers:Lorg/eclipse/jdt/core/dom/ASTNode$NodeList;

    invoke-virtual {p0, p1, v0}, Lorg/eclipse/jdt/core/dom/ASTNode;->acceptChildren(Lorg/eclipse/jdt/core/dom/ASTVisitor;Lorg/eclipse/jdt/core/dom/ASTNode$NodeList;)V

    invoke-virtual {p0}, Lorg/eclipse/jdt/core/dom/AbstractTypeDeclaration;->getName()Lorg/eclipse/jdt/core/dom/SimpleName;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lorg/eclipse/jdt/core/dom/ASTNode;->acceptChild(Lorg/eclipse/jdt/core/dom/ASTVisitor;Lorg/eclipse/jdt/core/dom/ASTNode;)V

    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/TypeDeclaration;->typeParameters:Lorg/eclipse/jdt/core/dom/ASTNode$NodeList;

    invoke-virtual {p0, p1, v0}, Lorg/eclipse/jdt/core/dom/ASTNode;->acceptChildren(Lorg/eclipse/jdt/core/dom/ASTVisitor;Lorg/eclipse/jdt/core/dom/ASTNode$NodeList;)V

    invoke-virtual {p0}, Lorg/eclipse/jdt/core/dom/TypeDeclaration;->getSuperclassType()Lorg/eclipse/jdt/core/dom/Type;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lorg/eclipse/jdt/core/dom/ASTNode;->acceptChild(Lorg/eclipse/jdt/core/dom/ASTVisitor;Lorg/eclipse/jdt/core/dom/ASTNode;)V

    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/TypeDeclaration;->superInterfaceTypes:Lorg/eclipse/jdt/core/dom/ASTNode$NodeList;

    invoke-virtual {p0, p1, v0}, Lorg/eclipse/jdt/core/dom/ASTNode;->acceptChildren(Lorg/eclipse/jdt/core/dom/ASTVisitor;Lorg/eclipse/jdt/core/dom/ASTNode$NodeList;)V

    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/AbstractTypeDeclaration;->bodyDeclarations:Lorg/eclipse/jdt/core/dom/ASTNode$NodeList;

    invoke-virtual {p0, p1, v0}, Lorg/eclipse/jdt/core/dom/ASTNode;->acceptChildren(Lorg/eclipse/jdt/core/dom/ASTVisitor;Lorg/eclipse/jdt/core/dom/ASTNode$NodeList;)V

    :cond_1
    invoke-virtual {p1, p0}, Lorg/eclipse/jdt/core/dom/ASTVisitor;->endVisit(Lorg/eclipse/jdt/core/dom/TypeDeclaration;)V

    return-void
.end method

.method public clone0(Lorg/eclipse/jdt/core/dom/AST;)Lorg/eclipse/jdt/core/dom/ASTNode;
    .locals 3

    new-instance v0, Lorg/eclipse/jdt/core/dom/TypeDeclaration;

    invoke-direct {v0, p1}, Lorg/eclipse/jdt/core/dom/TypeDeclaration;-><init>(Lorg/eclipse/jdt/core/dom/AST;)V

    invoke-virtual {p0}, Lorg/eclipse/jdt/core/dom/ASTNode;->getStartPosition()I

    move-result v1

    invoke-virtual {p0}, Lorg/eclipse/jdt/core/dom/ASTNode;->getLength()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/eclipse/jdt/core/dom/ASTNode;->setSourceRange(II)V

    invoke-virtual {p0}, Lorg/eclipse/jdt/core/dom/BodyDeclaration;->getJavadoc()Lorg/eclipse/jdt/core/dom/Javadoc;

    move-result-object v1

    invoke-static {p1, v1}, Lorg/eclipse/jdt/core/dom/ASTNode;->copySubtree(Lorg/eclipse/jdt/core/dom/AST;Lorg/eclipse/jdt/core/dom/ASTNode;)Lorg/eclipse/jdt/core/dom/ASTNode;

    move-result-object v1

    check-cast v1, Lorg/eclipse/jdt/core/dom/Javadoc;

    invoke-virtual {v0, v1}, Lorg/eclipse/jdt/core/dom/BodyDeclaration;->setJavadoc(Lorg/eclipse/jdt/core/dom/Javadoc;)V

    iget-object v1, p0, Lorg/eclipse/jdt/core/dom/ASTNode;->ast:Lorg/eclipse/jdt/core/dom/AST;

    iget v1, v1, Lorg/eclipse/jdt/core/dom/AST;->apiLevel:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    invoke-virtual {p0}, Lorg/eclipse/jdt/core/dom/BodyDeclaration;->getModifiers()I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/eclipse/jdt/core/dom/BodyDeclaration;->internalSetModifiers(I)V

    invoke-virtual {p0}, Lorg/eclipse/jdt/core/dom/TypeDeclaration;->getSuperclass()Lorg/eclipse/jdt/core/dom/Name;

    move-result-object v1

    invoke-static {p1, v1}, Lorg/eclipse/jdt/core/dom/ASTNode;->copySubtree(Lorg/eclipse/jdt/core/dom/AST;Lorg/eclipse/jdt/core/dom/ASTNode;)Lorg/eclipse/jdt/core/dom/ASTNode;

    move-result-object v1

    check-cast v1, Lorg/eclipse/jdt/core/dom/Name;

    invoke-virtual {v0, v1}, Lorg/eclipse/jdt/core/dom/TypeDeclaration;->setSuperclass(Lorg/eclipse/jdt/core/dom/Name;)V

    invoke-virtual {v0}, Lorg/eclipse/jdt/core/dom/TypeDeclaration;->superInterfaces()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0}, Lorg/eclipse/jdt/core/dom/TypeDeclaration;->superInterfaces()Ljava/util/List;

    move-result-object v2

    invoke-static {p1, v2}, Lorg/eclipse/jdt/core/dom/ASTNode;->copySubtrees(Lorg/eclipse/jdt/core/dom/AST;Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_0
    invoke-virtual {p0}, Lorg/eclipse/jdt/core/dom/TypeDeclaration;->isInterface()Z

    move-result v1

    invoke-virtual {v0, v1}, Lorg/eclipse/jdt/core/dom/TypeDeclaration;->setInterface(Z)V

    invoke-virtual {p0}, Lorg/eclipse/jdt/core/dom/AbstractTypeDeclaration;->getName()Lorg/eclipse/jdt/core/dom/SimpleName;

    move-result-object v1

    invoke-virtual {v1, p1}, Lorg/eclipse/jdt/core/dom/ASTNode;->clone(Lorg/eclipse/jdt/core/dom/AST;)Lorg/eclipse/jdt/core/dom/ASTNode;

    move-result-object v1

    check-cast v1, Lorg/eclipse/jdt/core/dom/SimpleName;

    invoke-virtual {v0, v1}, Lorg/eclipse/jdt/core/dom/AbstractTypeDeclaration;->setName(Lorg/eclipse/jdt/core/dom/SimpleName;)V

    iget-object v1, p0, Lorg/eclipse/jdt/core/dom/ASTNode;->ast:Lorg/eclipse/jdt/core/dom/AST;

    iget v1, v1, Lorg/eclipse/jdt/core/dom/AST;->apiLevel:I

    const/4 v2, 0x3

    if-lt v1, v2, :cond_1

    invoke-virtual {v0}, Lorg/eclipse/jdt/core/dom/BodyDeclaration;->modifiers()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0}, Lorg/eclipse/jdt/core/dom/BodyDeclaration;->modifiers()Ljava/util/List;

    move-result-object v2

    invoke-static {p1, v2}, Lorg/eclipse/jdt/core/dom/ASTNode;->copySubtrees(Lorg/eclipse/jdt/core/dom/AST;Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {v0}, Lorg/eclipse/jdt/core/dom/TypeDeclaration;->typeParameters()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0}, Lorg/eclipse/jdt/core/dom/TypeDeclaration;->typeParameters()Ljava/util/List;

    move-result-object v2

    invoke-static {p1, v2}, Lorg/eclipse/jdt/core/dom/ASTNode;->copySubtrees(Lorg/eclipse/jdt/core/dom/AST;Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {p0}, Lorg/eclipse/jdt/core/dom/TypeDeclaration;->getSuperclassType()Lorg/eclipse/jdt/core/dom/Type;

    move-result-object v1

    invoke-static {p1, v1}, Lorg/eclipse/jdt/core/dom/ASTNode;->copySubtree(Lorg/eclipse/jdt/core/dom/AST;Lorg/eclipse/jdt/core/dom/ASTNode;)Lorg/eclipse/jdt/core/dom/ASTNode;

    move-result-object v1

    check-cast v1, Lorg/eclipse/jdt/core/dom/Type;

    invoke-virtual {v0, v1}, Lorg/eclipse/jdt/core/dom/TypeDeclaration;->setSuperclassType(Lorg/eclipse/jdt/core/dom/Type;)V

    invoke-virtual {v0}, Lorg/eclipse/jdt/core/dom/TypeDeclaration;->superInterfaceTypes()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0}, Lorg/eclipse/jdt/core/dom/TypeDeclaration;->superInterfaceTypes()Ljava/util/List;

    move-result-object v2

    invoke-static {p1, v2}, Lorg/eclipse/jdt/core/dom/ASTNode;->copySubtrees(Lorg/eclipse/jdt/core/dom/AST;Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_1
    invoke-virtual {v0}, Lorg/eclipse/jdt/core/dom/AbstractTypeDeclaration;->bodyDeclarations()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0}, Lorg/eclipse/jdt/core/dom/AbstractTypeDeclaration;->bodyDeclarations()Ljava/util/List;

    move-result-object v2

    invoke-static {p1, v2}, Lorg/eclipse/jdt/core/dom/ASTNode;->copySubtrees(Lorg/eclipse/jdt/core/dom/AST;Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    invoke-interface {v1, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-object v0
.end method

.method public getFields()[Lorg/eclipse/jdt/core/dom/FieldDeclaration;
    .locals 6

    invoke-virtual {p0}, Lorg/eclipse/jdt/core/dom/AbstractTypeDeclaration;->bodyDeclarations()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object v1

    const/4 v2, 0x0

    move v3, v2

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_3

    new-array v4, v3, [Lorg/eclipse/jdt/core/dom/FieldDeclaration;

    invoke-interface {v0}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object v5

    :cond_1
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_2

    return-object v4

    :cond_2
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Lorg/eclipse/jdt/core/dom/FieldDeclaration;

    if-eqz v1, :cond_1

    add-int/lit8 v1, v2, 0x1

    check-cast v0, Lorg/eclipse/jdt/core/dom/FieldDeclaration;

    aput-object v0, v4, v2

    move v2, v1

    goto :goto_1

    :cond_3
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    instance-of v4, v4, Lorg/eclipse/jdt/core/dom/FieldDeclaration;

    if-eqz v4, :cond_0

    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method public getMethods()[Lorg/eclipse/jdt/core/dom/MethodDeclaration;
    .locals 6

    invoke-virtual {p0}, Lorg/eclipse/jdt/core/dom/AbstractTypeDeclaration;->bodyDeclarations()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object v1

    const/4 v2, 0x0

    move v3, v2

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_3

    new-array v4, v3, [Lorg/eclipse/jdt/core/dom/MethodDeclaration;

    invoke-interface {v0}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object v5

    :cond_1
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_2

    return-object v4

    :cond_2
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Lorg/eclipse/jdt/core/dom/MethodDeclaration;

    if-eqz v1, :cond_1

    add-int/lit8 v1, v2, 0x1

    check-cast v0, Lorg/eclipse/jdt/core/dom/MethodDeclaration;

    aput-object v0, v4, v2

    move v2, v1

    goto :goto_1

    :cond_3
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    instance-of v4, v4, Lorg/eclipse/jdt/core/dom/MethodDeclaration;

    if-eqz v4, :cond_0

    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method public final getNodeType0()I
    .locals 1

    const/16 v0, 0x37

    return v0
.end method

.method public getSuperclass()Lorg/eclipse/jdt/core/dom/Name;
    .locals 1

    invoke-virtual {p0}, Lorg/eclipse/jdt/core/dom/TypeDeclaration;->internalGetSuperclass()Lorg/eclipse/jdt/core/dom/Name;

    move-result-object v0

    return-object v0
.end method

.method public getSuperclassType()Lorg/eclipse/jdt/core/dom/Type;
    .locals 1

    invoke-virtual {p0}, Lorg/eclipse/jdt/core/dom/ASTNode;->unsupportedIn2()V

    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/TypeDeclaration;->optionalSuperclassType:Lorg/eclipse/jdt/core/dom/Type;

    return-object v0
.end method

.method public getTypes()[Lorg/eclipse/jdt/core/dom/TypeDeclaration;
    .locals 6

    invoke-virtual {p0}, Lorg/eclipse/jdt/core/dom/AbstractTypeDeclaration;->bodyDeclarations()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object v1

    const/4 v2, 0x0

    move v3, v2

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_3

    new-array v4, v3, [Lorg/eclipse/jdt/core/dom/TypeDeclaration;

    invoke-interface {v0}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object v5

    :cond_1
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_2

    return-object v4

    :cond_2
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Lorg/eclipse/jdt/core/dom/TypeDeclaration;

    if-eqz v1, :cond_1

    add-int/lit8 v1, v2, 0x1

    check-cast v0, Lorg/eclipse/jdt/core/dom/TypeDeclaration;

    aput-object v0, v4, v2

    move v2, v1

    goto :goto_1

    :cond_3
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    instance-of v4, v4, Lorg/eclipse/jdt/core/dom/TypeDeclaration;

    if-eqz v4, :cond_0

    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method public final internalBodyDeclarationsProperty()Lorg/eclipse/jdt/core/dom/ChildListPropertyDescriptor;
    .locals 1

    sget-object v0, Lorg/eclipse/jdt/core/dom/TypeDeclaration;->BODY_DECLARATIONS_PROPERTY:Lorg/eclipse/jdt/core/dom/ChildListPropertyDescriptor;

    return-object v0
.end method

.method public final internalGetChildListProperty(Lorg/eclipse/jdt/core/dom/ChildListPropertyDescriptor;)Ljava/util/List;
    .locals 1

    sget-object v0, Lorg/eclipse/jdt/core/dom/TypeDeclaration;->MODIFIERS2_PROPERTY:Lorg/eclipse/jdt/core/dom/ChildListPropertyDescriptor;

    if-ne p1, v0, :cond_0

    invoke-virtual {p0}, Lorg/eclipse/jdt/core/dom/BodyDeclaration;->modifiers()Ljava/util/List;

    move-result-object p1

    return-object p1

    :cond_0
    sget-object v0, Lorg/eclipse/jdt/core/dom/TypeDeclaration;->TYPE_PARAMETERS_PROPERTY:Lorg/eclipse/jdt/core/dom/ChildListPropertyDescriptor;

    if-ne p1, v0, :cond_1

    invoke-virtual {p0}, Lorg/eclipse/jdt/core/dom/TypeDeclaration;->typeParameters()Ljava/util/List;

    move-result-object p1

    return-object p1

    :cond_1
    sget-object v0, Lorg/eclipse/jdt/core/dom/TypeDeclaration;->SUPER_INTERFACES_PROPERTY:Lorg/eclipse/jdt/core/dom/ChildListPropertyDescriptor;

    if-ne p1, v0, :cond_2

    invoke-virtual {p0}, Lorg/eclipse/jdt/core/dom/TypeDeclaration;->superInterfaces()Ljava/util/List;

    move-result-object p1

    return-object p1

    :cond_2
    sget-object v0, Lorg/eclipse/jdt/core/dom/TypeDeclaration;->SUPER_INTERFACE_TYPES_PROPERTY:Lorg/eclipse/jdt/core/dom/ChildListPropertyDescriptor;

    if-ne p1, v0, :cond_3

    invoke-virtual {p0}, Lorg/eclipse/jdt/core/dom/TypeDeclaration;->superInterfaceTypes()Ljava/util/List;

    move-result-object p1

    return-object p1

    :cond_3
    sget-object v0, Lorg/eclipse/jdt/core/dom/TypeDeclaration;->BODY_DECLARATIONS_PROPERTY:Lorg/eclipse/jdt/core/dom/ChildListPropertyDescriptor;

    if-ne p1, v0, :cond_4

    invoke-virtual {p0}, Lorg/eclipse/jdt/core/dom/AbstractTypeDeclaration;->bodyDeclarations()Ljava/util/List;

    move-result-object p1

    return-object p1

    :cond_4
    invoke-super {p0, p1}, Lorg/eclipse/jdt/core/dom/ASTNode;->internalGetChildListProperty(Lorg/eclipse/jdt/core/dom/ChildListPropertyDescriptor;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public final internalGetSetBooleanProperty(Lorg/eclipse/jdt/core/dom/SimplePropertyDescriptor;ZZ)Z
    .locals 1

    sget-object v0, Lorg/eclipse/jdt/core/dom/TypeDeclaration;->INTERFACE_PROPERTY:Lorg/eclipse/jdt/core/dom/SimplePropertyDescriptor;

    if-ne p1, v0, :cond_1

    if-eqz p2, :cond_0

    invoke-virtual {p0}, Lorg/eclipse/jdt/core/dom/TypeDeclaration;->isInterface()Z

    move-result p1

    return p1

    :cond_0
    invoke-virtual {p0, p3}, Lorg/eclipse/jdt/core/dom/TypeDeclaration;->setInterface(Z)V

    const/4 p1, 0x0

    return p1

    :cond_1
    invoke-super {p0, p1, p2, p3}, Lorg/eclipse/jdt/core/dom/ASTNode;->internalGetSetBooleanProperty(Lorg/eclipse/jdt/core/dom/SimplePropertyDescriptor;ZZ)Z

    move-result p1

    return p1
.end method

.method public final internalGetSetChildProperty(Lorg/eclipse/jdt/core/dom/ChildPropertyDescriptor;ZLorg/eclipse/jdt/core/dom/ASTNode;)Lorg/eclipse/jdt/core/dom/ASTNode;
    .locals 2

    sget-object v0, Lorg/eclipse/jdt/core/dom/TypeDeclaration;->JAVADOC_PROPERTY:Lorg/eclipse/jdt/core/dom/ChildPropertyDescriptor;

    const/4 v1, 0x0

    if-ne p1, v0, :cond_1

    if-eqz p2, :cond_0

    invoke-virtual {p0}, Lorg/eclipse/jdt/core/dom/BodyDeclaration;->getJavadoc()Lorg/eclipse/jdt/core/dom/Javadoc;

    move-result-object p1

    return-object p1

    :cond_0
    check-cast p3, Lorg/eclipse/jdt/core/dom/Javadoc;

    invoke-virtual {p0, p3}, Lorg/eclipse/jdt/core/dom/BodyDeclaration;->setJavadoc(Lorg/eclipse/jdt/core/dom/Javadoc;)V

    return-object v1

    :cond_1
    sget-object v0, Lorg/eclipse/jdt/core/dom/TypeDeclaration;->NAME_PROPERTY:Lorg/eclipse/jdt/core/dom/ChildPropertyDescriptor;

    if-ne p1, v0, :cond_3

    if-eqz p2, :cond_2

    invoke-virtual {p0}, Lorg/eclipse/jdt/core/dom/AbstractTypeDeclaration;->getName()Lorg/eclipse/jdt/core/dom/SimpleName;

    move-result-object p1

    return-object p1

    :cond_2
    check-cast p3, Lorg/eclipse/jdt/core/dom/SimpleName;

    invoke-virtual {p0, p3}, Lorg/eclipse/jdt/core/dom/AbstractTypeDeclaration;->setName(Lorg/eclipse/jdt/core/dom/SimpleName;)V

    return-object v1

    :cond_3
    sget-object v0, Lorg/eclipse/jdt/core/dom/TypeDeclaration;->SUPERCLASS_PROPERTY:Lorg/eclipse/jdt/core/dom/ChildPropertyDescriptor;

    if-ne p1, v0, :cond_5

    if-eqz p2, :cond_4

    invoke-virtual {p0}, Lorg/eclipse/jdt/core/dom/TypeDeclaration;->getSuperclass()Lorg/eclipse/jdt/core/dom/Name;

    move-result-object p1

    return-object p1

    :cond_4
    check-cast p3, Lorg/eclipse/jdt/core/dom/Name;

    invoke-virtual {p0, p3}, Lorg/eclipse/jdt/core/dom/TypeDeclaration;->setSuperclass(Lorg/eclipse/jdt/core/dom/Name;)V

    return-object v1

    :cond_5
    sget-object v0, Lorg/eclipse/jdt/core/dom/TypeDeclaration;->SUPERCLASS_TYPE_PROPERTY:Lorg/eclipse/jdt/core/dom/ChildPropertyDescriptor;

    if-ne p1, v0, :cond_7

    if-eqz p2, :cond_6

    invoke-virtual {p0}, Lorg/eclipse/jdt/core/dom/TypeDeclaration;->getSuperclassType()Lorg/eclipse/jdt/core/dom/Type;

    move-result-object p1

    return-object p1

    :cond_6
    check-cast p3, Lorg/eclipse/jdt/core/dom/Type;

    invoke-virtual {p0, p3}, Lorg/eclipse/jdt/core/dom/TypeDeclaration;->setSuperclassType(Lorg/eclipse/jdt/core/dom/Type;)V

    return-object v1

    :cond_7
    invoke-super {p0, p1, p2, p3}, Lorg/eclipse/jdt/core/dom/ASTNode;->internalGetSetChildProperty(Lorg/eclipse/jdt/core/dom/ChildPropertyDescriptor;ZLorg/eclipse/jdt/core/dom/ASTNode;)Lorg/eclipse/jdt/core/dom/ASTNode;

    move-result-object p1

    return-object p1
.end method

.method public final internalGetSetIntProperty(Lorg/eclipse/jdt/core/dom/SimplePropertyDescriptor;ZI)I
    .locals 1

    sget-object v0, Lorg/eclipse/jdt/core/dom/TypeDeclaration;->MODIFIERS_PROPERTY:Lorg/eclipse/jdt/core/dom/SimplePropertyDescriptor;

    if-ne p1, v0, :cond_1

    if-eqz p2, :cond_0

    invoke-virtual {p0}, Lorg/eclipse/jdt/core/dom/BodyDeclaration;->getModifiers()I

    move-result p1

    return p1

    :cond_0
    invoke-virtual {p0, p3}, Lorg/eclipse/jdt/core/dom/BodyDeclaration;->internalSetModifiers(I)V

    const/4 p1, 0x0

    return p1

    :cond_1
    invoke-super {p0, p1, p2, p3}, Lorg/eclipse/jdt/core/dom/ASTNode;->internalGetSetIntProperty(Lorg/eclipse/jdt/core/dom/SimplePropertyDescriptor;ZI)I

    move-result p1

    return p1
.end method

.method public final internalGetSuperclass()Lorg/eclipse/jdt/core/dom/Name;
    .locals 1

    invoke-virtual {p0}, Lorg/eclipse/jdt/core/dom/ASTNode;->supportedOnlyIn2()V

    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/TypeDeclaration;->optionalSuperclassName:Lorg/eclipse/jdt/core/dom/Name;

    return-object v0
.end method

.method public final internalJavadocProperty()Lorg/eclipse/jdt/core/dom/ChildPropertyDescriptor;
    .locals 1

    sget-object v0, Lorg/eclipse/jdt/core/dom/TypeDeclaration;->JAVADOC_PROPERTY:Lorg/eclipse/jdt/core/dom/ChildPropertyDescriptor;

    return-object v0
.end method

.method public final internalModifiers2Property()Lorg/eclipse/jdt/core/dom/ChildListPropertyDescriptor;
    .locals 1

    sget-object v0, Lorg/eclipse/jdt/core/dom/TypeDeclaration;->MODIFIERS2_PROPERTY:Lorg/eclipse/jdt/core/dom/ChildListPropertyDescriptor;

    return-object v0
.end method

.method public final internalModifiersProperty()Lorg/eclipse/jdt/core/dom/SimplePropertyDescriptor;
    .locals 1

    sget-object v0, Lorg/eclipse/jdt/core/dom/TypeDeclaration;->MODIFIERS_PROPERTY:Lorg/eclipse/jdt/core/dom/SimplePropertyDescriptor;

    return-object v0
.end method

.method public final internalNameProperty()Lorg/eclipse/jdt/core/dom/ChildPropertyDescriptor;
    .locals 1

    sget-object v0, Lorg/eclipse/jdt/core/dom/TypeDeclaration;->NAME_PROPERTY:Lorg/eclipse/jdt/core/dom/ChildPropertyDescriptor;

    return-object v0
.end method

.method public internalResolveBinding()Lorg/eclipse/jdt/core/dom/ITypeBinding;
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/ASTNode;->ast:Lorg/eclipse/jdt/core/dom/AST;

    invoke-virtual {v0}, Lorg/eclipse/jdt/core/dom/AST;->getBindingResolver()Lorg/eclipse/jdt/core/dom/BindingResolver;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/eclipse/jdt/core/dom/BindingResolver;->resolveType(Lorg/eclipse/jdt/core/dom/TypeDeclaration;)Lorg/eclipse/jdt/core/dom/ITypeBinding;

    move-result-object v0

    return-object v0
.end method

.method public final internalSetSuperclass(Lorg/eclipse/jdt/core/dom/Name;)V
    .locals 2

    invoke-virtual {p0}, Lorg/eclipse/jdt/core/dom/ASTNode;->supportedOnlyIn2()V

    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/TypeDeclaration;->optionalSuperclassName:Lorg/eclipse/jdt/core/dom/Name;

    sget-object v1, Lorg/eclipse/jdt/core/dom/TypeDeclaration;->SUPERCLASS_PROPERTY:Lorg/eclipse/jdt/core/dom/ChildPropertyDescriptor;

    invoke-virtual {p0, v0, p1, v1}, Lorg/eclipse/jdt/core/dom/ASTNode;->preReplaceChild(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/ChildPropertyDescriptor;)V

    iput-object p1, p0, Lorg/eclipse/jdt/core/dom/TypeDeclaration;->optionalSuperclassName:Lorg/eclipse/jdt/core/dom/Name;

    invoke-virtual {p0, v0, p1, v1}, Lorg/eclipse/jdt/core/dom/ASTNode;->postReplaceChild(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/ChildPropertyDescriptor;)V

    return-void
.end method

.method public final internalStructuralPropertiesForType(I)Ljava/util/List;
    .locals 0

    invoke-static {p1}, Lorg/eclipse/jdt/core/dom/TypeDeclaration;->propertyDescriptors(I)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public final internalSuperInterfaces()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/TypeDeclaration;->superInterfaceNames:Lorg/eclipse/jdt/core/dom/ASTNode$NodeList;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lorg/eclipse/jdt/core/dom/ASTNode;->supportedOnlyIn2()V

    :cond_0
    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/TypeDeclaration;->superInterfaceNames:Lorg/eclipse/jdt/core/dom/ASTNode$NodeList;

    return-object v0
.end method

.method public isInterface()Z
    .locals 1

    iget-boolean v0, p0, Lorg/eclipse/jdt/core/dom/TypeDeclaration;->isInterface:Z

    return v0
.end method

.method public memSize()I
    .locals 1

    invoke-super {p0}, Lorg/eclipse/jdt/core/dom/AbstractTypeDeclaration;->memSize()I

    move-result v0

    add-int/lit8 v0, v0, 0x18

    return v0
.end method

.method public setInterface(Z)V
    .locals 1

    sget-object v0, Lorg/eclipse/jdt/core/dom/TypeDeclaration;->INTERFACE_PROPERTY:Lorg/eclipse/jdt/core/dom/SimplePropertyDescriptor;

    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/core/dom/ASTNode;->preValueChange(Lorg/eclipse/jdt/core/dom/SimplePropertyDescriptor;)V

    iput-boolean p1, p0, Lorg/eclipse/jdt/core/dom/TypeDeclaration;->isInterface:Z

    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/core/dom/ASTNode;->postValueChange(Lorg/eclipse/jdt/core/dom/SimplePropertyDescriptor;)V

    return-void
.end method

.method public setSuperclass(Lorg/eclipse/jdt/core/dom/Name;)V
    .locals 0

    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/core/dom/TypeDeclaration;->internalSetSuperclass(Lorg/eclipse/jdt/core/dom/Name;)V

    return-void
.end method

.method public setSuperclassType(Lorg/eclipse/jdt/core/dom/Type;)V
    .locals 2

    invoke-virtual {p0}, Lorg/eclipse/jdt/core/dom/ASTNode;->unsupportedIn2()V

    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/TypeDeclaration;->optionalSuperclassType:Lorg/eclipse/jdt/core/dom/Type;

    sget-object v1, Lorg/eclipse/jdt/core/dom/TypeDeclaration;->SUPERCLASS_TYPE_PROPERTY:Lorg/eclipse/jdt/core/dom/ChildPropertyDescriptor;

    invoke-virtual {p0, v0, p1, v1}, Lorg/eclipse/jdt/core/dom/ASTNode;->preReplaceChild(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/ChildPropertyDescriptor;)V

    iput-object p1, p0, Lorg/eclipse/jdt/core/dom/TypeDeclaration;->optionalSuperclassType:Lorg/eclipse/jdt/core/dom/Type;

    invoke-virtual {p0, v0, p1, v1}, Lorg/eclipse/jdt/core/dom/ASTNode;->postReplaceChild(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/ChildPropertyDescriptor;)V

    return-void
.end method

.method public final subtreeMatch0(Lorg/eclipse/jdt/core/dom/ASTMatcher;Ljava/lang/Object;)Z
    .locals 0

    invoke-virtual {p1, p0, p2}, Lorg/eclipse/jdt/core/dom/ASTMatcher;->match(Lorg/eclipse/jdt/core/dom/TypeDeclaration;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public superInterfaceTypes()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/TypeDeclaration;->superInterfaceTypes:Lorg/eclipse/jdt/core/dom/ASTNode$NodeList;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lorg/eclipse/jdt/core/dom/ASTNode;->unsupportedIn2()V

    :cond_0
    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/TypeDeclaration;->superInterfaceTypes:Lorg/eclipse/jdt/core/dom/ASTNode$NodeList;

    return-object v0
.end method

.method public superInterfaces()Ljava/util/List;
    .locals 1

    invoke-virtual {p0}, Lorg/eclipse/jdt/core/dom/TypeDeclaration;->internalSuperInterfaces()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public treeSize()I
    .locals 3

    invoke-virtual {p0}, Lorg/eclipse/jdt/core/dom/TypeDeclaration;->memSize()I

    move-result v0

    iget-object v1, p0, Lorg/eclipse/jdt/core/dom/BodyDeclaration;->optionalDocComment:Lorg/eclipse/jdt/core/dom/Javadoc;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lorg/eclipse/jdt/core/dom/BodyDeclaration;->getJavadoc()Lorg/eclipse/jdt/core/dom/Javadoc;

    move-result-object v1

    invoke-virtual {v1}, Lorg/eclipse/jdt/core/dom/Javadoc;->treeSize()I

    move-result v1

    :goto_0
    add-int/2addr v0, v1

    iget-object v1, p0, Lorg/eclipse/jdt/core/dom/BodyDeclaration;->modifiers:Lorg/eclipse/jdt/core/dom/ASTNode$NodeList;

    if-nez v1, :cond_1

    move v1, v2

    goto :goto_1

    :cond_1
    invoke-virtual {v1}, Lorg/eclipse/jdt/core/dom/ASTNode$NodeList;->listSize()I

    move-result v1

    :goto_1
    add-int/2addr v0, v1

    iget-object v1, p0, Lorg/eclipse/jdt/core/dom/AbstractTypeDeclaration;->typeName:Lorg/eclipse/jdt/core/dom/SimpleName;

    if-nez v1, :cond_2

    move v1, v2

    goto :goto_2

    :cond_2
    invoke-virtual {p0}, Lorg/eclipse/jdt/core/dom/AbstractTypeDeclaration;->getName()Lorg/eclipse/jdt/core/dom/SimpleName;

    move-result-object v1

    invoke-virtual {v1}, Lorg/eclipse/jdt/core/dom/SimpleName;->treeSize()I

    move-result v1

    :goto_2
    add-int/2addr v0, v1

    iget-object v1, p0, Lorg/eclipse/jdt/core/dom/TypeDeclaration;->typeParameters:Lorg/eclipse/jdt/core/dom/ASTNode$NodeList;

    if-nez v1, :cond_3

    move v1, v2

    goto :goto_3

    :cond_3
    invoke-virtual {v1}, Lorg/eclipse/jdt/core/dom/ASTNode$NodeList;->listSize()I

    move-result v1

    :goto_3
    add-int/2addr v0, v1

    iget-object v1, p0, Lorg/eclipse/jdt/core/dom/TypeDeclaration;->optionalSuperclassName:Lorg/eclipse/jdt/core/dom/Name;

    if-nez v1, :cond_4

    move v1, v2

    goto :goto_4

    :cond_4
    invoke-virtual {p0}, Lorg/eclipse/jdt/core/dom/TypeDeclaration;->getSuperclass()Lorg/eclipse/jdt/core/dom/Name;

    move-result-object v1

    invoke-virtual {v1}, Lorg/eclipse/jdt/core/dom/ASTNode;->treeSize()I

    move-result v1

    :goto_4
    add-int/2addr v0, v1

    iget-object v1, p0, Lorg/eclipse/jdt/core/dom/TypeDeclaration;->optionalSuperclassType:Lorg/eclipse/jdt/core/dom/Type;

    if-nez v1, :cond_5

    move v1, v2

    goto :goto_5

    :cond_5
    invoke-virtual {p0}, Lorg/eclipse/jdt/core/dom/TypeDeclaration;->getSuperclassType()Lorg/eclipse/jdt/core/dom/Type;

    move-result-object v1

    invoke-virtual {v1}, Lorg/eclipse/jdt/core/dom/ASTNode;->treeSize()I

    move-result v1

    :goto_5
    add-int/2addr v0, v1

    iget-object v1, p0, Lorg/eclipse/jdt/core/dom/TypeDeclaration;->superInterfaceNames:Lorg/eclipse/jdt/core/dom/ASTNode$NodeList;

    if-nez v1, :cond_6

    move v1, v2

    goto :goto_6

    :cond_6
    invoke-virtual {v1}, Lorg/eclipse/jdt/core/dom/ASTNode$NodeList;->listSize()I

    move-result v1

    :goto_6
    add-int/2addr v0, v1

    iget-object v1, p0, Lorg/eclipse/jdt/core/dom/TypeDeclaration;->superInterfaceTypes:Lorg/eclipse/jdt/core/dom/ASTNode$NodeList;

    if-nez v1, :cond_7

    goto :goto_7

    :cond_7
    invoke-virtual {v1}, Lorg/eclipse/jdt/core/dom/ASTNode$NodeList;->listSize()I

    move-result v2

    :goto_7
    add-int/2addr v0, v2

    iget-object v1, p0, Lorg/eclipse/jdt/core/dom/AbstractTypeDeclaration;->bodyDeclarations:Lorg/eclipse/jdt/core/dom/ASTNode$NodeList;

    invoke-virtual {v1}, Lorg/eclipse/jdt/core/dom/ASTNode$NodeList;->listSize()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public typeParameters()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/TypeDeclaration;->typeParameters:Lorg/eclipse/jdt/core/dom/ASTNode$NodeList;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lorg/eclipse/jdt/core/dom/ASTNode;->unsupportedIn2()V

    :cond_0
    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/TypeDeclaration;->typeParameters:Lorg/eclipse/jdt/core/dom/ASTNode$NodeList;

    return-object v0
.end method
