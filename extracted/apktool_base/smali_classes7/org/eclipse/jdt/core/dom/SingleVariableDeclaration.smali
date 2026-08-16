.class public Lorg/eclipse/jdt/core/dom/SingleVariableDeclaration;
.super Lorg/eclipse/jdt/core/dom/VariableDeclaration;
.source "SourceFile"


# static fields
.field public static final EXTRA_DIMENSIONS2_PROPERTY:Lorg/eclipse/jdt/core/dom/ChildListPropertyDescriptor;

.field public static final EXTRA_DIMENSIONS_PROPERTY:Lorg/eclipse/jdt/core/dom/SimplePropertyDescriptor;

.field public static final INITIALIZER_PROPERTY:Lorg/eclipse/jdt/core/dom/ChildPropertyDescriptor;

.field public static final MODIFIERS2_PROPERTY:Lorg/eclipse/jdt/core/dom/ChildListPropertyDescriptor;

.field public static final MODIFIERS_PROPERTY:Lorg/eclipse/jdt/core/dom/SimplePropertyDescriptor;

.field public static final NAME_PROPERTY:Lorg/eclipse/jdt/core/dom/ChildPropertyDescriptor;

.field private static final PROPERTY_DESCRIPTORS_2_0:Ljava/util/List;

.field private static final PROPERTY_DESCRIPTORS_3_0:Ljava/util/List;

.field private static final PROPERTY_DESCRIPTORS_8_0:Ljava/util/List;

.field public static final TYPE_PROPERTY:Lorg/eclipse/jdt/core/dom/ChildPropertyDescriptor;

.field public static final VARARGS_ANNOTATIONS_PROPERTY:Lorg/eclipse/jdt/core/dom/ChildListPropertyDescriptor;

.field public static final VARARGS_PROPERTY:Lorg/eclipse/jdt/core/dom/SimplePropertyDescriptor;


# instance fields
.field private modifierFlags:I

.field private modifiers:Lorg/eclipse/jdt/core/dom/ASTNode$NodeList;

.field private type:Lorg/eclipse/jdt/core/dom/Type;

.field private varargsAnnotations:Lorg/eclipse/jdt/core/dom/ASTNode$NodeList;

.field private variableArity:Z


# direct methods
.method static constructor <clinit>()V
    .locals 12

    new-instance v0, Lorg/eclipse/jdt/core/dom/SimplePropertyDescriptor;

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const-class v2, Lorg/eclipse/jdt/core/dom/SingleVariableDeclaration;

    const-string v3, "modifiers"

    const/4 v4, 0x1

    invoke-direct {v0, v2, v3, v1, v4}, Lorg/eclipse/jdt/core/dom/SimplePropertyDescriptor;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;Z)V

    sput-object v0, Lorg/eclipse/jdt/core/dom/SingleVariableDeclaration;->MODIFIERS_PROPERTY:Lorg/eclipse/jdt/core/dom/SimplePropertyDescriptor;

    new-instance v1, Lorg/eclipse/jdt/core/dom/ChildListPropertyDescriptor;

    const-class v5, Lorg/eclipse/jdt/core/dom/IExtendedModifier;

    invoke-direct {v1, v2, v3, v5, v4}, Lorg/eclipse/jdt/core/dom/ChildListPropertyDescriptor;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;Z)V

    sput-object v1, Lorg/eclipse/jdt/core/dom/SingleVariableDeclaration;->MODIFIERS2_PROPERTY:Lorg/eclipse/jdt/core/dom/ChildListPropertyDescriptor;

    new-instance v3, Lorg/eclipse/jdt/core/dom/ChildPropertyDescriptor;

    const/4 v10, 0x1

    const/4 v11, 0x0

    const-class v7, Lorg/eclipse/jdt/core/dom/SingleVariableDeclaration;

    const-string v8, "type"

    const-class v9, Lorg/eclipse/jdt/core/dom/Type;

    move-object v6, v3

    invoke-direct/range {v6 .. v11}, Lorg/eclipse/jdt/core/dom/ChildPropertyDescriptor;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;ZZ)V

    sput-object v3, Lorg/eclipse/jdt/core/dom/SingleVariableDeclaration;->TYPE_PROPERTY:Lorg/eclipse/jdt/core/dom/ChildPropertyDescriptor;

    new-instance v5, Lorg/eclipse/jdt/core/dom/ChildListPropertyDescriptor;

    const-string v6, "varargsAnnotations"

    const-class v7, Lorg/eclipse/jdt/core/dom/Annotation;

    invoke-direct {v5, v2, v6, v7, v4}, Lorg/eclipse/jdt/core/dom/ChildListPropertyDescriptor;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;Z)V

    sput-object v5, Lorg/eclipse/jdt/core/dom/SingleVariableDeclaration;->VARARGS_ANNOTATIONS_PROPERTY:Lorg/eclipse/jdt/core/dom/ChildListPropertyDescriptor;

    new-instance v6, Lorg/eclipse/jdt/core/dom/SimplePropertyDescriptor;

    const-string v7, "varargs"

    sget-object v8, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-direct {v6, v2, v7, v8, v4}, Lorg/eclipse/jdt/core/dom/SimplePropertyDescriptor;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;Z)V

    sput-object v6, Lorg/eclipse/jdt/core/dom/SingleVariableDeclaration;->VARARGS_PROPERTY:Lorg/eclipse/jdt/core/dom/SimplePropertyDescriptor;

    invoke-static {v2}, Lorg/eclipse/jdt/core/dom/VariableDeclaration;->internalNamePropertyFactory(Ljava/lang/Class;)Lorg/eclipse/jdt/core/dom/ChildPropertyDescriptor;

    move-result-object v4

    sput-object v4, Lorg/eclipse/jdt/core/dom/SingleVariableDeclaration;->NAME_PROPERTY:Lorg/eclipse/jdt/core/dom/ChildPropertyDescriptor;

    invoke-static {v2}, Lorg/eclipse/jdt/core/dom/VariableDeclaration;->internalExtraDimensionsPropertyFactory(Ljava/lang/Class;)Lorg/eclipse/jdt/core/dom/SimplePropertyDescriptor;

    move-result-object v7

    sput-object v7, Lorg/eclipse/jdt/core/dom/SingleVariableDeclaration;->EXTRA_DIMENSIONS_PROPERTY:Lorg/eclipse/jdt/core/dom/SimplePropertyDescriptor;

    invoke-static {v2}, Lorg/eclipse/jdt/core/dom/VariableDeclaration;->internalExtraDimensions2PropertyFactory(Ljava/lang/Class;)Lorg/eclipse/jdt/core/dom/ChildListPropertyDescriptor;

    move-result-object v8

    sput-object v8, Lorg/eclipse/jdt/core/dom/SingleVariableDeclaration;->EXTRA_DIMENSIONS2_PROPERTY:Lorg/eclipse/jdt/core/dom/ChildListPropertyDescriptor;

    invoke-static {v2}, Lorg/eclipse/jdt/core/dom/VariableDeclaration;->internalInitializerPropertyFactory(Ljava/lang/Class;)Lorg/eclipse/jdt/core/dom/ChildPropertyDescriptor;

    move-result-object v9

    sput-object v9, Lorg/eclipse/jdt/core/dom/SingleVariableDeclaration;->INITIALIZER_PROPERTY:Lorg/eclipse/jdt/core/dom/ChildPropertyDescriptor;

    new-instance v10, Ljava/util/ArrayList;

    const/4 v11, 0x6

    invoke-direct {v10, v11}, Ljava/util/ArrayList;-><init>(I)V

    invoke-static {v2, v10}, Lorg/eclipse/jdt/core/dom/ASTNode;->createPropertyList(Ljava/lang/Class;Ljava/util/List;)V

    invoke-static {v0, v10}, Lorg/eclipse/jdt/core/dom/ASTNode;->addProperty(Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;Ljava/util/List;)V

    invoke-static {v3, v10}, Lorg/eclipse/jdt/core/dom/ASTNode;->addProperty(Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;Ljava/util/List;)V

    invoke-static {v4, v10}, Lorg/eclipse/jdt/core/dom/ASTNode;->addProperty(Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;Ljava/util/List;)V

    invoke-static {v7, v10}, Lorg/eclipse/jdt/core/dom/ASTNode;->addProperty(Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;Ljava/util/List;)V

    invoke-static {v9, v10}, Lorg/eclipse/jdt/core/dom/ASTNode;->addProperty(Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;Ljava/util/List;)V

    invoke-static {v10}, Lorg/eclipse/jdt/core/dom/ASTNode;->reapPropertyList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lorg/eclipse/jdt/core/dom/SingleVariableDeclaration;->PROPERTY_DESCRIPTORS_2_0:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    const/4 v10, 0x7

    invoke-direct {v0, v10}, Ljava/util/ArrayList;-><init>(I)V

    invoke-static {v2, v0}, Lorg/eclipse/jdt/core/dom/ASTNode;->createPropertyList(Ljava/lang/Class;Ljava/util/List;)V

    invoke-static {v1, v0}, Lorg/eclipse/jdt/core/dom/ASTNode;->addProperty(Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;Ljava/util/List;)V

    invoke-static {v3, v0}, Lorg/eclipse/jdt/core/dom/ASTNode;->addProperty(Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;Ljava/util/List;)V

    invoke-static {v6, v0}, Lorg/eclipse/jdt/core/dom/ASTNode;->addProperty(Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;Ljava/util/List;)V

    invoke-static {v4, v0}, Lorg/eclipse/jdt/core/dom/ASTNode;->addProperty(Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;Ljava/util/List;)V

    invoke-static {v7, v0}, Lorg/eclipse/jdt/core/dom/ASTNode;->addProperty(Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;Ljava/util/List;)V

    invoke-static {v9, v0}, Lorg/eclipse/jdt/core/dom/ASTNode;->addProperty(Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;Ljava/util/List;)V

    invoke-static {v0}, Lorg/eclipse/jdt/core/dom/ASTNode;->reapPropertyList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lorg/eclipse/jdt/core/dom/SingleVariableDeclaration;->PROPERTY_DESCRIPTORS_3_0:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    const/16 v7, 0x8

    invoke-direct {v0, v7}, Ljava/util/ArrayList;-><init>(I)V

    invoke-static {v2, v0}, Lorg/eclipse/jdt/core/dom/ASTNode;->createPropertyList(Ljava/lang/Class;Ljava/util/List;)V

    invoke-static {v1, v0}, Lorg/eclipse/jdt/core/dom/ASTNode;->addProperty(Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;Ljava/util/List;)V

    invoke-static {v3, v0}, Lorg/eclipse/jdt/core/dom/ASTNode;->addProperty(Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;Ljava/util/List;)V

    invoke-static {v5, v0}, Lorg/eclipse/jdt/core/dom/ASTNode;->addProperty(Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;Ljava/util/List;)V

    invoke-static {v6, v0}, Lorg/eclipse/jdt/core/dom/ASTNode;->addProperty(Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;Ljava/util/List;)V

    invoke-static {v4, v0}, Lorg/eclipse/jdt/core/dom/ASTNode;->addProperty(Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;Ljava/util/List;)V

    invoke-static {v8, v0}, Lorg/eclipse/jdt/core/dom/ASTNode;->addProperty(Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;Ljava/util/List;)V

    invoke-static {v9, v0}, Lorg/eclipse/jdt/core/dom/ASTNode;->addProperty(Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;Ljava/util/List;)V

    invoke-static {v0}, Lorg/eclipse/jdt/core/dom/ASTNode;->reapPropertyList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lorg/eclipse/jdt/core/dom/SingleVariableDeclaration;->PROPERTY_DESCRIPTORS_8_0:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Lorg/eclipse/jdt/core/dom/AST;)V
    .locals 2

    invoke-direct {p0, p1}, Lorg/eclipse/jdt/core/dom/VariableDeclaration;-><init>(Lorg/eclipse/jdt/core/dom/AST;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/eclipse/jdt/core/dom/SingleVariableDeclaration;->modifiers:Lorg/eclipse/jdt/core/dom/ASTNode$NodeList;

    const/4 v1, 0x0

    iput v1, p0, Lorg/eclipse/jdt/core/dom/SingleVariableDeclaration;->modifierFlags:I

    iput-object v0, p0, Lorg/eclipse/jdt/core/dom/SingleVariableDeclaration;->type:Lorg/eclipse/jdt/core/dom/Type;

    iput-object v0, p0, Lorg/eclipse/jdt/core/dom/SingleVariableDeclaration;->varargsAnnotations:Lorg/eclipse/jdt/core/dom/ASTNode$NodeList;

    iput-boolean v1, p0, Lorg/eclipse/jdt/core/dom/SingleVariableDeclaration;->variableArity:Z

    iget v0, p1, Lorg/eclipse/jdt/core/dom/AST;->apiLevel:I

    const/4 v1, 0x3

    if-lt v0, v1, :cond_0

    new-instance v0, Lorg/eclipse/jdt/core/dom/ASTNode$NodeList;

    sget-object v1, Lorg/eclipse/jdt/core/dom/SingleVariableDeclaration;->MODIFIERS2_PROPERTY:Lorg/eclipse/jdt/core/dom/ChildListPropertyDescriptor;

    invoke-direct {v0, p0, v1}, Lorg/eclipse/jdt/core/dom/ASTNode$NodeList;-><init>(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/ChildListPropertyDescriptor;)V

    iput-object v0, p0, Lorg/eclipse/jdt/core/dom/SingleVariableDeclaration;->modifiers:Lorg/eclipse/jdt/core/dom/ASTNode$NodeList;

    iget p1, p1, Lorg/eclipse/jdt/core/dom/AST;->apiLevel:I

    const/16 v0, 0x8

    if-lt p1, v0, :cond_0

    new-instance p1, Lorg/eclipse/jdt/core/dom/ASTNode$NodeList;

    sget-object v0, Lorg/eclipse/jdt/core/dom/SingleVariableDeclaration;->VARARGS_ANNOTATIONS_PROPERTY:Lorg/eclipse/jdt/core/dom/ChildListPropertyDescriptor;

    invoke-direct {p1, p0, v0}, Lorg/eclipse/jdt/core/dom/ASTNode$NodeList;-><init>(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/ChildListPropertyDescriptor;)V

    iput-object p1, p0, Lorg/eclipse/jdt/core/dom/SingleVariableDeclaration;->varargsAnnotations:Lorg/eclipse/jdt/core/dom/ASTNode$NodeList;

    :cond_0
    return-void
.end method

.method public static propertyDescriptors(I)Ljava/util/List;
    .locals 1

    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    sget-object p0, Lorg/eclipse/jdt/core/dom/SingleVariableDeclaration;->PROPERTY_DESCRIPTORS_2_0:Ljava/util/List;

    return-object p0

    :cond_0
    const/16 v0, 0x8

    if-ge p0, v0, :cond_1

    sget-object p0, Lorg/eclipse/jdt/core/dom/SingleVariableDeclaration;->PROPERTY_DESCRIPTORS_3_0:Ljava/util/List;

    return-object p0

    :cond_1
    sget-object p0, Lorg/eclipse/jdt/core/dom/SingleVariableDeclaration;->PROPERTY_DESCRIPTORS_8_0:Ljava/util/List;

    return-object p0
.end method


# virtual methods
.method public accept0(Lorg/eclipse/jdt/core/dom/ASTVisitor;)V
    .locals 2

    invoke-virtual {p1, p0}, Lorg/eclipse/jdt/core/dom/ASTVisitor;->visit(Lorg/eclipse/jdt/core/dom/SingleVariableDeclaration;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/ASTNode;->ast:Lorg/eclipse/jdt/core/dom/AST;

    iget v0, v0, Lorg/eclipse/jdt/core/dom/AST;->apiLevel:I

    const/4 v1, 0x3

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/SingleVariableDeclaration;->modifiers:Lorg/eclipse/jdt/core/dom/ASTNode$NodeList;

    invoke-virtual {p0, p1, v0}, Lorg/eclipse/jdt/core/dom/ASTNode;->acceptChildren(Lorg/eclipse/jdt/core/dom/ASTVisitor;Lorg/eclipse/jdt/core/dom/ASTNode$NodeList;)V

    :cond_0
    invoke-virtual {p0}, Lorg/eclipse/jdt/core/dom/SingleVariableDeclaration;->getType()Lorg/eclipse/jdt/core/dom/Type;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lorg/eclipse/jdt/core/dom/ASTNode;->acceptChild(Lorg/eclipse/jdt/core/dom/ASTVisitor;Lorg/eclipse/jdt/core/dom/ASTNode;)V

    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/ASTNode;->ast:Lorg/eclipse/jdt/core/dom/AST;

    iget v0, v0, Lorg/eclipse/jdt/core/dom/AST;->apiLevel:I

    const/16 v1, 0x8

    if-lt v0, v1, :cond_1

    invoke-virtual {p0}, Lorg/eclipse/jdt/core/dom/SingleVariableDeclaration;->isVarargs()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/SingleVariableDeclaration;->varargsAnnotations:Lorg/eclipse/jdt/core/dom/ASTNode$NodeList;

    invoke-virtual {p0, p1, v0}, Lorg/eclipse/jdt/core/dom/ASTNode;->acceptChildren(Lorg/eclipse/jdt/core/dom/ASTVisitor;Lorg/eclipse/jdt/core/dom/ASTNode$NodeList;)V

    :cond_1
    invoke-virtual {p0}, Lorg/eclipse/jdt/core/dom/VariableDeclaration;->getName()Lorg/eclipse/jdt/core/dom/SimpleName;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lorg/eclipse/jdt/core/dom/ASTNode;->acceptChild(Lorg/eclipse/jdt/core/dom/ASTVisitor;Lorg/eclipse/jdt/core/dom/ASTNode;)V

    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/ASTNode;->ast:Lorg/eclipse/jdt/core/dom/AST;

    iget v0, v0, Lorg/eclipse/jdt/core/dom/AST;->apiLevel:I

    if-lt v0, v1, :cond_2

    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/VariableDeclaration;->extraDimensions:Lorg/eclipse/jdt/core/dom/ASTNode$NodeList;

    invoke-virtual {p0, p1, v0}, Lorg/eclipse/jdt/core/dom/ASTNode;->acceptChildren(Lorg/eclipse/jdt/core/dom/ASTVisitor;Lorg/eclipse/jdt/core/dom/ASTNode$NodeList;)V

    :cond_2
    invoke-virtual {p0}, Lorg/eclipse/jdt/core/dom/VariableDeclaration;->getInitializer()Lorg/eclipse/jdt/core/dom/Expression;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lorg/eclipse/jdt/core/dom/ASTNode;->acceptChild(Lorg/eclipse/jdt/core/dom/ASTVisitor;Lorg/eclipse/jdt/core/dom/ASTNode;)V

    :cond_3
    invoke-virtual {p1, p0}, Lorg/eclipse/jdt/core/dom/ASTVisitor;->endVisit(Lorg/eclipse/jdt/core/dom/SingleVariableDeclaration;)V

    return-void
.end method

.method public clone0(Lorg/eclipse/jdt/core/dom/AST;)Lorg/eclipse/jdt/core/dom/ASTNode;
    .locals 4

    new-instance v0, Lorg/eclipse/jdt/core/dom/SingleVariableDeclaration;

    invoke-direct {v0, p1}, Lorg/eclipse/jdt/core/dom/SingleVariableDeclaration;-><init>(Lorg/eclipse/jdt/core/dom/AST;)V

    invoke-virtual {p0}, Lorg/eclipse/jdt/core/dom/ASTNode;->getStartPosition()I

    move-result v1

    invoke-virtual {p0}, Lorg/eclipse/jdt/core/dom/ASTNode;->getLength()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/eclipse/jdt/core/dom/ASTNode;->setSourceRange(II)V

    iget-object v1, p0, Lorg/eclipse/jdt/core/dom/ASTNode;->ast:Lorg/eclipse/jdt/core/dom/AST;

    iget v1, v1, Lorg/eclipse/jdt/core/dom/AST;->apiLevel:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    invoke-virtual {p0}, Lorg/eclipse/jdt/core/dom/SingleVariableDeclaration;->getModifiers()I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/eclipse/jdt/core/dom/SingleVariableDeclaration;->setModifiers(I)V

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lorg/eclipse/jdt/core/dom/SingleVariableDeclaration;->modifiers()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0}, Lorg/eclipse/jdt/core/dom/SingleVariableDeclaration;->modifiers()Ljava/util/List;

    move-result-object v2

    invoke-static {p1, v2}, Lorg/eclipse/jdt/core/dom/ASTNode;->copySubtrees(Lorg/eclipse/jdt/core/dom/AST;Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {p0}, Lorg/eclipse/jdt/core/dom/SingleVariableDeclaration;->isVarargs()Z

    move-result v1

    invoke-virtual {v0, v1}, Lorg/eclipse/jdt/core/dom/SingleVariableDeclaration;->setVarargs(Z)V

    :goto_0
    invoke-virtual {p0}, Lorg/eclipse/jdt/core/dom/SingleVariableDeclaration;->getType()Lorg/eclipse/jdt/core/dom/Type;

    move-result-object v1

    invoke-virtual {v1, p1}, Lorg/eclipse/jdt/core/dom/ASTNode;->clone(Lorg/eclipse/jdt/core/dom/AST;)Lorg/eclipse/jdt/core/dom/ASTNode;

    move-result-object v1

    check-cast v1, Lorg/eclipse/jdt/core/dom/Type;

    invoke-virtual {v0, v1}, Lorg/eclipse/jdt/core/dom/SingleVariableDeclaration;->setType(Lorg/eclipse/jdt/core/dom/Type;)V

    iget-object v1, p0, Lorg/eclipse/jdt/core/dom/ASTNode;->ast:Lorg/eclipse/jdt/core/dom/AST;

    iget v1, v1, Lorg/eclipse/jdt/core/dom/AST;->apiLevel:I

    const/16 v2, 0x8

    if-lt v1, v2, :cond_1

    invoke-virtual {v0}, Lorg/eclipse/jdt/core/dom/SingleVariableDeclaration;->varargsAnnotations()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0}, Lorg/eclipse/jdt/core/dom/SingleVariableDeclaration;->varargsAnnotations()Ljava/util/List;

    move-result-object v3

    invoke-static {p1, v3}, Lorg/eclipse/jdt/core/dom/ASTNode;->copySubtrees(Lorg/eclipse/jdt/core/dom/AST;Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_1
    invoke-virtual {p0}, Lorg/eclipse/jdt/core/dom/VariableDeclaration;->getName()Lorg/eclipse/jdt/core/dom/SimpleName;

    move-result-object v1

    invoke-virtual {v1, p1}, Lorg/eclipse/jdt/core/dom/ASTNode;->clone(Lorg/eclipse/jdt/core/dom/AST;)Lorg/eclipse/jdt/core/dom/ASTNode;

    move-result-object v1

    check-cast v1, Lorg/eclipse/jdt/core/dom/SimpleName;

    invoke-virtual {v0, v1}, Lorg/eclipse/jdt/core/dom/VariableDeclaration;->setName(Lorg/eclipse/jdt/core/dom/SimpleName;)V

    iget-object v1, p0, Lorg/eclipse/jdt/core/dom/ASTNode;->ast:Lorg/eclipse/jdt/core/dom/AST;

    iget v1, v1, Lorg/eclipse/jdt/core/dom/AST;->apiLevel:I

    if-lt v1, v2, :cond_2

    invoke-virtual {v0}, Lorg/eclipse/jdt/core/dom/VariableDeclaration;->extraDimensions()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0}, Lorg/eclipse/jdt/core/dom/VariableDeclaration;->extraDimensions()Ljava/util/List;

    move-result-object v2

    invoke-static {p1, v2}, Lorg/eclipse/jdt/core/dom/ASTNode;->copySubtrees(Lorg/eclipse/jdt/core/dom/AST;Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Lorg/eclipse/jdt/core/dom/VariableDeclaration;->getExtraDimensions()I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/eclipse/jdt/core/dom/VariableDeclaration;->internalSetExtraDimensions(I)V

    :goto_1
    invoke-virtual {p0}, Lorg/eclipse/jdt/core/dom/VariableDeclaration;->getInitializer()Lorg/eclipse/jdt/core/dom/Expression;

    move-result-object v1

    invoke-static {p1, v1}, Lorg/eclipse/jdt/core/dom/ASTNode;->copySubtree(Lorg/eclipse/jdt/core/dom/AST;Lorg/eclipse/jdt/core/dom/ASTNode;)Lorg/eclipse/jdt/core/dom/ASTNode;

    move-result-object p1

    check-cast p1, Lorg/eclipse/jdt/core/dom/Expression;

    invoke-virtual {v0, p1}, Lorg/eclipse/jdt/core/dom/VariableDeclaration;->setInitializer(Lorg/eclipse/jdt/core/dom/Expression;)V

    return-object v0
.end method

.method public getModifiers()I
    .locals 4

    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/SingleVariableDeclaration;->modifiers:Lorg/eclipse/jdt/core/dom/ASTNode$NodeList;

    if-nez v0, :cond_0

    iget v0, p0, Lorg/eclipse/jdt/core/dom/SingleVariableDeclaration;->modifierFlags:I

    return v0

    :cond_0
    invoke-virtual {p0}, Lorg/eclipse/jdt/core/dom/SingleVariableDeclaration;->modifiers()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_2

    return v1

    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    instance-of v3, v2, Lorg/eclipse/jdt/core/dom/Modifier;

    if-eqz v3, :cond_1

    check-cast v2, Lorg/eclipse/jdt/core/dom/Modifier;

    invoke-virtual {v2}, Lorg/eclipse/jdt/core/dom/Modifier;->getKeyword()Lorg/eclipse/jdt/core/dom/Modifier$ModifierKeyword;

    move-result-object v2

    invoke-virtual {v2}, Lorg/eclipse/jdt/core/dom/Modifier$ModifierKeyword;->toFlagValue()I

    move-result v2

    or-int/2addr v1, v2

    goto :goto_0
.end method

.method public final getNodeType0()I
    .locals 1

    const/16 v0, 0x2c

    return v0
.end method

.method public getType()Lorg/eclipse/jdt/core/dom/Type;
    .locals 2

    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/SingleVariableDeclaration;->type:Lorg/eclipse/jdt/core/dom/Type;

    if-nez v0, :cond_1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/SingleVariableDeclaration;->type:Lorg/eclipse/jdt/core/dom/Type;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lorg/eclipse/jdt/core/dom/ASTNode;->preLazyInit()V

    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/ASTNode;->ast:Lorg/eclipse/jdt/core/dom/AST;

    sget-object v1, Lorg/eclipse/jdt/core/dom/PrimitiveType;->INT:Lorg/eclipse/jdt/core/dom/PrimitiveType$Code;

    invoke-virtual {v0, v1}, Lorg/eclipse/jdt/core/dom/AST;->newPrimitiveType(Lorg/eclipse/jdt/core/dom/PrimitiveType$Code;)Lorg/eclipse/jdt/core/dom/PrimitiveType;

    move-result-object v0

    iput-object v0, p0, Lorg/eclipse/jdt/core/dom/SingleVariableDeclaration;->type:Lorg/eclipse/jdt/core/dom/Type;

    sget-object v1, Lorg/eclipse/jdt/core/dom/SingleVariableDeclaration;->TYPE_PROPERTY:Lorg/eclipse/jdt/core/dom/ChildPropertyDescriptor;

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
    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/SingleVariableDeclaration;->type:Lorg/eclipse/jdt/core/dom/Type;

    return-object v0
.end method

.method public final internalExtraDimensions2Property()Lorg/eclipse/jdt/core/dom/ChildListPropertyDescriptor;
    .locals 1

    sget-object v0, Lorg/eclipse/jdt/core/dom/SingleVariableDeclaration;->EXTRA_DIMENSIONS2_PROPERTY:Lorg/eclipse/jdt/core/dom/ChildListPropertyDescriptor;

    return-object v0
.end method

.method public final internalExtraDimensionsProperty()Lorg/eclipse/jdt/core/dom/SimplePropertyDescriptor;
    .locals 1

    sget-object v0, Lorg/eclipse/jdt/core/dom/SingleVariableDeclaration;->EXTRA_DIMENSIONS_PROPERTY:Lorg/eclipse/jdt/core/dom/SimplePropertyDescriptor;

    return-object v0
.end method

.method public final internalGetChildListProperty(Lorg/eclipse/jdt/core/dom/ChildListPropertyDescriptor;)Ljava/util/List;
    .locals 1

    sget-object v0, Lorg/eclipse/jdt/core/dom/SingleVariableDeclaration;->MODIFIERS2_PROPERTY:Lorg/eclipse/jdt/core/dom/ChildListPropertyDescriptor;

    if-ne p1, v0, :cond_0

    invoke-virtual {p0}, Lorg/eclipse/jdt/core/dom/SingleVariableDeclaration;->modifiers()Ljava/util/List;

    move-result-object p1

    return-object p1

    :cond_0
    sget-object v0, Lorg/eclipse/jdt/core/dom/SingleVariableDeclaration;->VARARGS_ANNOTATIONS_PROPERTY:Lorg/eclipse/jdt/core/dom/ChildListPropertyDescriptor;

    if-ne p1, v0, :cond_1

    invoke-virtual {p0}, Lorg/eclipse/jdt/core/dom/SingleVariableDeclaration;->varargsAnnotations()Ljava/util/List;

    move-result-object p1

    return-object p1

    :cond_1
    sget-object v0, Lorg/eclipse/jdt/core/dom/SingleVariableDeclaration;->EXTRA_DIMENSIONS2_PROPERTY:Lorg/eclipse/jdt/core/dom/ChildListPropertyDescriptor;

    if-ne p1, v0, :cond_2

    invoke-virtual {p0}, Lorg/eclipse/jdt/core/dom/VariableDeclaration;->extraDimensions()Ljava/util/List;

    move-result-object p1

    return-object p1

    :cond_2
    invoke-super {p0, p1}, Lorg/eclipse/jdt/core/dom/ASTNode;->internalGetChildListProperty(Lorg/eclipse/jdt/core/dom/ChildListPropertyDescriptor;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public final internalGetSetBooleanProperty(Lorg/eclipse/jdt/core/dom/SimplePropertyDescriptor;ZZ)Z
    .locals 1

    sget-object v0, Lorg/eclipse/jdt/core/dom/SingleVariableDeclaration;->VARARGS_PROPERTY:Lorg/eclipse/jdt/core/dom/SimplePropertyDescriptor;

    if-ne p1, v0, :cond_1

    if-eqz p2, :cond_0

    invoke-virtual {p0}, Lorg/eclipse/jdt/core/dom/SingleVariableDeclaration;->isVarargs()Z

    move-result p1

    return p1

    :cond_0
    invoke-virtual {p0, p3}, Lorg/eclipse/jdt/core/dom/SingleVariableDeclaration;->setVarargs(Z)V

    const/4 p1, 0x0

    return p1

    :cond_1
    invoke-super {p0, p1, p2, p3}, Lorg/eclipse/jdt/core/dom/ASTNode;->internalGetSetBooleanProperty(Lorg/eclipse/jdt/core/dom/SimplePropertyDescriptor;ZZ)Z

    move-result p1

    return p1
.end method

.method public final internalGetSetChildProperty(Lorg/eclipse/jdt/core/dom/ChildPropertyDescriptor;ZLorg/eclipse/jdt/core/dom/ASTNode;)Lorg/eclipse/jdt/core/dom/ASTNode;
    .locals 2

    sget-object v0, Lorg/eclipse/jdt/core/dom/SingleVariableDeclaration;->TYPE_PROPERTY:Lorg/eclipse/jdt/core/dom/ChildPropertyDescriptor;

    const/4 v1, 0x0

    if-ne p1, v0, :cond_1

    if-eqz p2, :cond_0

    invoke-virtual {p0}, Lorg/eclipse/jdt/core/dom/SingleVariableDeclaration;->getType()Lorg/eclipse/jdt/core/dom/Type;

    move-result-object p1

    return-object p1

    :cond_0
    check-cast p3, Lorg/eclipse/jdt/core/dom/Type;

    invoke-virtual {p0, p3}, Lorg/eclipse/jdt/core/dom/SingleVariableDeclaration;->setType(Lorg/eclipse/jdt/core/dom/Type;)V

    return-object v1

    :cond_1
    sget-object v0, Lorg/eclipse/jdt/core/dom/SingleVariableDeclaration;->NAME_PROPERTY:Lorg/eclipse/jdt/core/dom/ChildPropertyDescriptor;

    if-ne p1, v0, :cond_3

    if-eqz p2, :cond_2

    invoke-virtual {p0}, Lorg/eclipse/jdt/core/dom/VariableDeclaration;->getName()Lorg/eclipse/jdt/core/dom/SimpleName;

    move-result-object p1

    return-object p1

    :cond_2
    check-cast p3, Lorg/eclipse/jdt/core/dom/SimpleName;

    invoke-virtual {p0, p3}, Lorg/eclipse/jdt/core/dom/VariableDeclaration;->setName(Lorg/eclipse/jdt/core/dom/SimpleName;)V

    return-object v1

    :cond_3
    sget-object v0, Lorg/eclipse/jdt/core/dom/SingleVariableDeclaration;->INITIALIZER_PROPERTY:Lorg/eclipse/jdt/core/dom/ChildPropertyDescriptor;

    if-ne p1, v0, :cond_5

    if-eqz p2, :cond_4

    invoke-virtual {p0}, Lorg/eclipse/jdt/core/dom/VariableDeclaration;->getInitializer()Lorg/eclipse/jdt/core/dom/Expression;

    move-result-object p1

    return-object p1

    :cond_4
    check-cast p3, Lorg/eclipse/jdt/core/dom/Expression;

    invoke-virtual {p0, p3}, Lorg/eclipse/jdt/core/dom/VariableDeclaration;->setInitializer(Lorg/eclipse/jdt/core/dom/Expression;)V

    return-object v1

    :cond_5
    invoke-super {p0, p1, p2, p3}, Lorg/eclipse/jdt/core/dom/ASTNode;->internalGetSetChildProperty(Lorg/eclipse/jdt/core/dom/ChildPropertyDescriptor;ZLorg/eclipse/jdt/core/dom/ASTNode;)Lorg/eclipse/jdt/core/dom/ASTNode;

    move-result-object p1

    return-object p1
.end method

.method public final internalGetSetIntProperty(Lorg/eclipse/jdt/core/dom/SimplePropertyDescriptor;ZI)I
    .locals 2

    sget-object v0, Lorg/eclipse/jdt/core/dom/SingleVariableDeclaration;->MODIFIERS_PROPERTY:Lorg/eclipse/jdt/core/dom/SimplePropertyDescriptor;

    const/4 v1, 0x0

    if-ne p1, v0, :cond_1

    if-eqz p2, :cond_0

    invoke-virtual {p0}, Lorg/eclipse/jdt/core/dom/SingleVariableDeclaration;->getModifiers()I

    move-result p1

    return p1

    :cond_0
    invoke-virtual {p0, p3}, Lorg/eclipse/jdt/core/dom/SingleVariableDeclaration;->setModifiers(I)V

    return v1

    :cond_1
    sget-object v0, Lorg/eclipse/jdt/core/dom/SingleVariableDeclaration;->EXTRA_DIMENSIONS_PROPERTY:Lorg/eclipse/jdt/core/dom/SimplePropertyDescriptor;

    if-ne p1, v0, :cond_3

    if-eqz p2, :cond_2

    invoke-virtual {p0}, Lorg/eclipse/jdt/core/dom/VariableDeclaration;->getExtraDimensions()I

    move-result p1

    return p1

    :cond_2
    invoke-virtual {p0, p3}, Lorg/eclipse/jdt/core/dom/VariableDeclaration;->internalSetExtraDimensions(I)V

    return v1

    :cond_3
    invoke-super {p0, p1, p2, p3}, Lorg/eclipse/jdt/core/dom/ASTNode;->internalGetSetIntProperty(Lorg/eclipse/jdt/core/dom/SimplePropertyDescriptor;ZI)I

    move-result p1

    return p1
.end method

.method public final internalInitializerProperty()Lorg/eclipse/jdt/core/dom/ChildPropertyDescriptor;
    .locals 1

    sget-object v0, Lorg/eclipse/jdt/core/dom/SingleVariableDeclaration;->INITIALIZER_PROPERTY:Lorg/eclipse/jdt/core/dom/ChildPropertyDescriptor;

    return-object v0
.end method

.method public final internalNameProperty()Lorg/eclipse/jdt/core/dom/ChildPropertyDescriptor;
    .locals 1

    sget-object v0, Lorg/eclipse/jdt/core/dom/SingleVariableDeclaration;->NAME_PROPERTY:Lorg/eclipse/jdt/core/dom/ChildPropertyDescriptor;

    return-object v0
.end method

.method public final internalSetModifiers(I)V
    .locals 1

    invoke-virtual {p0}, Lorg/eclipse/jdt/core/dom/ASTNode;->supportedOnlyIn2()V

    sget-object v0, Lorg/eclipse/jdt/core/dom/SingleVariableDeclaration;->MODIFIERS_PROPERTY:Lorg/eclipse/jdt/core/dom/SimplePropertyDescriptor;

    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/core/dom/ASTNode;->preValueChange(Lorg/eclipse/jdt/core/dom/SimplePropertyDescriptor;)V

    iput p1, p0, Lorg/eclipse/jdt/core/dom/SingleVariableDeclaration;->modifierFlags:I

    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/core/dom/ASTNode;->postValueChange(Lorg/eclipse/jdt/core/dom/SimplePropertyDescriptor;)V

    return-void
.end method

.method public final internalStructuralPropertiesForType(I)Ljava/util/List;
    .locals 0

    invoke-static {p1}, Lorg/eclipse/jdt/core/dom/SingleVariableDeclaration;->propertyDescriptors(I)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public isVarargs()Z
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/SingleVariableDeclaration;->modifiers:Lorg/eclipse/jdt/core/dom/ASTNode$NodeList;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lorg/eclipse/jdt/core/dom/ASTNode;->unsupportedIn2()V

    :cond_0
    iget-boolean v0, p0, Lorg/eclipse/jdt/core/dom/SingleVariableDeclaration;->variableArity:Z

    return v0
.end method

.method public memSize()I
    .locals 1

    const/16 v0, 0x4c

    return v0
.end method

.method public modifiers()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/SingleVariableDeclaration;->modifiers:Lorg/eclipse/jdt/core/dom/ASTNode$NodeList;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lorg/eclipse/jdt/core/dom/ASTNode;->unsupportedIn2()V

    :cond_0
    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/SingleVariableDeclaration;->modifiers:Lorg/eclipse/jdt/core/dom/ASTNode$NodeList;

    return-object v0
.end method

.method public setModifiers(I)V
    .locals 0

    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/core/dom/SingleVariableDeclaration;->internalSetModifiers(I)V

    return-void
.end method

.method public setType(Lorg/eclipse/jdt/core/dom/Type;)V
    .locals 2

    if-eqz p1, :cond_0

    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/SingleVariableDeclaration;->type:Lorg/eclipse/jdt/core/dom/Type;

    sget-object v1, Lorg/eclipse/jdt/core/dom/SingleVariableDeclaration;->TYPE_PROPERTY:Lorg/eclipse/jdt/core/dom/ChildPropertyDescriptor;

    invoke-virtual {p0, v0, p1, v1}, Lorg/eclipse/jdt/core/dom/ASTNode;->preReplaceChild(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/ChildPropertyDescriptor;)V

    iput-object p1, p0, Lorg/eclipse/jdt/core/dom/SingleVariableDeclaration;->type:Lorg/eclipse/jdt/core/dom/Type;

    invoke-virtual {p0, v0, p1, v1}, Lorg/eclipse/jdt/core/dom/ASTNode;->postReplaceChild(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/ChildPropertyDescriptor;)V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method public setVarargs(Z)V
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/SingleVariableDeclaration;->modifiers:Lorg/eclipse/jdt/core/dom/ASTNode$NodeList;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lorg/eclipse/jdt/core/dom/ASTNode;->unsupportedIn2()V

    :cond_0
    sget-object v0, Lorg/eclipse/jdt/core/dom/SingleVariableDeclaration;->VARARGS_PROPERTY:Lorg/eclipse/jdt/core/dom/SimplePropertyDescriptor;

    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/core/dom/ASTNode;->preValueChange(Lorg/eclipse/jdt/core/dom/SimplePropertyDescriptor;)V

    iput-boolean p1, p0, Lorg/eclipse/jdt/core/dom/SingleVariableDeclaration;->variableArity:Z

    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/core/dom/ASTNode;->postValueChange(Lorg/eclipse/jdt/core/dom/SimplePropertyDescriptor;)V

    return-void
.end method

.method public final subtreeMatch0(Lorg/eclipse/jdt/core/dom/ASTMatcher;Ljava/lang/Object;)Z
    .locals 0

    invoke-virtual {p1, p0, p2}, Lorg/eclipse/jdt/core/dom/ASTMatcher;->match(Lorg/eclipse/jdt/core/dom/SingleVariableDeclaration;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public treeSize()I
    .locals 3

    invoke-virtual {p0}, Lorg/eclipse/jdt/core/dom/SingleVariableDeclaration;->memSize()I

    move-result v0

    iget-object v1, p0, Lorg/eclipse/jdt/core/dom/SingleVariableDeclaration;->modifiers:Lorg/eclipse/jdt/core/dom/ASTNode$NodeList;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Lorg/eclipse/jdt/core/dom/ASTNode$NodeList;->listSize()I

    move-result v1

    :goto_0
    add-int/2addr v0, v1

    iget-object v1, p0, Lorg/eclipse/jdt/core/dom/SingleVariableDeclaration;->type:Lorg/eclipse/jdt/core/dom/Type;

    if-nez v1, :cond_1

    move v1, v2

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lorg/eclipse/jdt/core/dom/SingleVariableDeclaration;->getType()Lorg/eclipse/jdt/core/dom/Type;

    move-result-object v1

    invoke-virtual {v1}, Lorg/eclipse/jdt/core/dom/ASTNode;->treeSize()I

    move-result v1

    :goto_1
    add-int/2addr v0, v1

    iget-object v1, p0, Lorg/eclipse/jdt/core/dom/SingleVariableDeclaration;->varargsAnnotations:Lorg/eclipse/jdt/core/dom/ASTNode$NodeList;

    if-nez v1, :cond_2

    move v1, v2

    goto :goto_2

    :cond_2
    invoke-virtual {v1}, Lorg/eclipse/jdt/core/dom/ASTNode$NodeList;->listSize()I

    move-result v1

    :goto_2
    add-int/2addr v0, v1

    iget-object v1, p0, Lorg/eclipse/jdt/core/dom/VariableDeclaration;->variableName:Lorg/eclipse/jdt/core/dom/SimpleName;

    if-nez v1, :cond_3

    move v1, v2

    goto :goto_3

    :cond_3
    invoke-virtual {p0}, Lorg/eclipse/jdt/core/dom/VariableDeclaration;->getName()Lorg/eclipse/jdt/core/dom/SimpleName;

    move-result-object v1

    invoke-virtual {v1}, Lorg/eclipse/jdt/core/dom/SimpleName;->treeSize()I

    move-result v1

    :goto_3
    add-int/2addr v0, v1

    iget-object v1, p0, Lorg/eclipse/jdt/core/dom/VariableDeclaration;->extraDimensions:Lorg/eclipse/jdt/core/dom/ASTNode$NodeList;

    if-nez v1, :cond_4

    move v1, v2

    goto :goto_4

    :cond_4
    invoke-virtual {v1}, Lorg/eclipse/jdt/core/dom/ASTNode$NodeList;->listSize()I

    move-result v1

    :goto_4
    add-int/2addr v0, v1

    iget-object v1, p0, Lorg/eclipse/jdt/core/dom/VariableDeclaration;->optionalInitializer:Lorg/eclipse/jdt/core/dom/Expression;

    if-nez v1, :cond_5

    goto :goto_5

    :cond_5
    invoke-virtual {p0}, Lorg/eclipse/jdt/core/dom/VariableDeclaration;->getInitializer()Lorg/eclipse/jdt/core/dom/Expression;

    move-result-object v1

    invoke-virtual {v1}, Lorg/eclipse/jdt/core/dom/ASTNode;->treeSize()I

    move-result v2

    :goto_5
    add-int/2addr v0, v2

    return v0
.end method

.method public varargsAnnotations()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/SingleVariableDeclaration;->varargsAnnotations:Lorg/eclipse/jdt/core/dom/ASTNode$NodeList;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lorg/eclipse/jdt/core/dom/ASTNode;->unsupportedIn2_3_4()V

    :cond_0
    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/SingleVariableDeclaration;->varargsAnnotations:Lorg/eclipse/jdt/core/dom/ASTNode$NodeList;

    return-object v0
.end method
