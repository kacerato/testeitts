.class public Lorg/eclipse/jdt/core/dom/MethodDeclaration;
.super Lorg/eclipse/jdt/core/dom/BodyDeclaration;
.source "SourceFile"


# static fields
.field public static final BODY_PROPERTY:Lorg/eclipse/jdt/core/dom/ChildPropertyDescriptor;

.field public static final CONSTRUCTOR_PROPERTY:Lorg/eclipse/jdt/core/dom/SimplePropertyDescriptor;

.field public static final EXTRA_DIMENSIONS2_PROPERTY:Lorg/eclipse/jdt/core/dom/ChildListPropertyDescriptor;

.field public static final EXTRA_DIMENSIONS_PROPERTY:Lorg/eclipse/jdt/core/dom/SimplePropertyDescriptor;

.field public static final JAVADOC_PROPERTY:Lorg/eclipse/jdt/core/dom/ChildPropertyDescriptor;

.field public static final MODIFIERS2_PROPERTY:Lorg/eclipse/jdt/core/dom/ChildListPropertyDescriptor;

.field public static final MODIFIERS_PROPERTY:Lorg/eclipse/jdt/core/dom/SimplePropertyDescriptor;

.field public static final NAME_PROPERTY:Lorg/eclipse/jdt/core/dom/ChildPropertyDescriptor;

.field public static final PARAMETERS_PROPERTY:Lorg/eclipse/jdt/core/dom/ChildListPropertyDescriptor;

.field private static final PROPERTY_DESCRIPTORS_2_0:Ljava/util/List;

.field private static final PROPERTY_DESCRIPTORS_3_0:Ljava/util/List;

.field private static final PROPERTY_DESCRIPTORS_8_0:Ljava/util/List;

.field public static final RECEIVER_QUALIFIER_PROPERTY:Lorg/eclipse/jdt/core/dom/ChildPropertyDescriptor;

.field public static final RECEIVER_TYPE_PROPERTY:Lorg/eclipse/jdt/core/dom/ChildPropertyDescriptor;

.field public static final RETURN_TYPE2_PROPERTY:Lorg/eclipse/jdt/core/dom/ChildPropertyDescriptor;

.field public static final RETURN_TYPE_PROPERTY:Lorg/eclipse/jdt/core/dom/ChildPropertyDescriptor;

.field public static final THROWN_EXCEPTIONS_PROPERTY:Lorg/eclipse/jdt/core/dom/ChildListPropertyDescriptor;

.field public static final THROWN_EXCEPTION_TYPES_PROPERTY:Lorg/eclipse/jdt/core/dom/ChildListPropertyDescriptor;

.field public static final TYPE_PARAMETERS_PROPERTY:Lorg/eclipse/jdt/core/dom/ChildListPropertyDescriptor;


# instance fields
.field private extraArrayDimensions:I

.field private extraDimensions:Lorg/eclipse/jdt/core/dom/ASTNode$NodeList;

.field private isConstructor:Z

.field private methodName:Lorg/eclipse/jdt/core/dom/SimpleName;

.field private optionalBody:Lorg/eclipse/jdt/core/dom/Block;

.field private optionalReceiverQualifier:Lorg/eclipse/jdt/core/dom/SimpleName;

.field private optionalReceiverType:Lorg/eclipse/jdt/core/dom/Type;

.field private parameters:Lorg/eclipse/jdt/core/dom/ASTNode$NodeList;

.field private returnType:Lorg/eclipse/jdt/core/dom/Type;

.field private returnType2Initialized:Z

.field private thrownExceptionTypes:Lorg/eclipse/jdt/core/dom/ASTNode$NodeList;

.field private thrownExceptions:Lorg/eclipse/jdt/core/dom/ASTNode$NodeList;

.field private typeParameters:Lorg/eclipse/jdt/core/dom/ASTNode$NodeList;


# direct methods
.method static constructor <clinit>()V
    .locals 28

    const-class v0, Lorg/eclipse/jdt/core/dom/MethodDeclaration;

    invoke-static {v0}, Lorg/eclipse/jdt/core/dom/BodyDeclaration;->internalJavadocPropertyFactory(Ljava/lang/Class;)Lorg/eclipse/jdt/core/dom/ChildPropertyDescriptor;

    move-result-object v1

    sput-object v1, Lorg/eclipse/jdt/core/dom/MethodDeclaration;->JAVADOC_PROPERTY:Lorg/eclipse/jdt/core/dom/ChildPropertyDescriptor;

    invoke-static {v0}, Lorg/eclipse/jdt/core/dom/BodyDeclaration;->internalModifiersPropertyFactory(Ljava/lang/Class;)Lorg/eclipse/jdt/core/dom/SimplePropertyDescriptor;

    move-result-object v2

    sput-object v2, Lorg/eclipse/jdt/core/dom/MethodDeclaration;->MODIFIERS_PROPERTY:Lorg/eclipse/jdt/core/dom/SimplePropertyDescriptor;

    invoke-static {v0}, Lorg/eclipse/jdt/core/dom/BodyDeclaration;->internalModifiers2PropertyFactory(Ljava/lang/Class;)Lorg/eclipse/jdt/core/dom/ChildListPropertyDescriptor;

    move-result-object v3

    sput-object v3, Lorg/eclipse/jdt/core/dom/MethodDeclaration;->MODIFIERS2_PROPERTY:Lorg/eclipse/jdt/core/dom/ChildListPropertyDescriptor;

    new-instance v4, Lorg/eclipse/jdt/core/dom/SimplePropertyDescriptor;

    sget-object v5, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const-string v6, "constructor"

    const/4 v7, 0x1

    invoke-direct {v4, v0, v6, v5, v7}, Lorg/eclipse/jdt/core/dom/SimplePropertyDescriptor;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;Z)V

    sput-object v4, Lorg/eclipse/jdt/core/dom/MethodDeclaration;->CONSTRUCTOR_PROPERTY:Lorg/eclipse/jdt/core/dom/SimplePropertyDescriptor;

    new-instance v5, Lorg/eclipse/jdt/core/dom/ChildPropertyDescriptor;

    const/4 v12, 0x1

    const/4 v13, 0x0

    const-class v9, Lorg/eclipse/jdt/core/dom/MethodDeclaration;

    const-string v10, "name"

    const-class v11, Lorg/eclipse/jdt/core/dom/SimpleName;

    move-object v8, v5

    invoke-direct/range {v8 .. v13}, Lorg/eclipse/jdt/core/dom/ChildPropertyDescriptor;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;ZZ)V

    sput-object v5, Lorg/eclipse/jdt/core/dom/MethodDeclaration;->NAME_PROPERTY:Lorg/eclipse/jdt/core/dom/ChildPropertyDescriptor;

    new-instance v6, Lorg/eclipse/jdt/core/dom/ChildPropertyDescriptor;

    const/16 v18, 0x1

    const/16 v19, 0x0

    const-class v15, Lorg/eclipse/jdt/core/dom/MethodDeclaration;

    const-string v16, "returnType"

    const-class v17, Lorg/eclipse/jdt/core/dom/Type;

    move-object v14, v6

    invoke-direct/range {v14 .. v19}, Lorg/eclipse/jdt/core/dom/ChildPropertyDescriptor;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;ZZ)V

    sput-object v6, Lorg/eclipse/jdt/core/dom/MethodDeclaration;->RETURN_TYPE_PROPERTY:Lorg/eclipse/jdt/core/dom/ChildPropertyDescriptor;

    new-instance v14, Lorg/eclipse/jdt/core/dom/ChildPropertyDescriptor;

    const/4 v12, 0x0

    const-class v9, Lorg/eclipse/jdt/core/dom/MethodDeclaration;

    const-string v10, "returnType2"

    const-class v11, Lorg/eclipse/jdt/core/dom/Type;

    move-object v8, v14

    invoke-direct/range {v8 .. v13}, Lorg/eclipse/jdt/core/dom/ChildPropertyDescriptor;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;ZZ)V

    sput-object v14, Lorg/eclipse/jdt/core/dom/MethodDeclaration;->RETURN_TYPE2_PROPERTY:Lorg/eclipse/jdt/core/dom/ChildPropertyDescriptor;

    new-instance v8, Lorg/eclipse/jdt/core/dom/SimplePropertyDescriptor;

    const-string v9, "extraDimensions"

    sget-object v10, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-direct {v8, v0, v9, v10, v7}, Lorg/eclipse/jdt/core/dom/SimplePropertyDescriptor;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;Z)V

    sput-object v8, Lorg/eclipse/jdt/core/dom/MethodDeclaration;->EXTRA_DIMENSIONS_PROPERTY:Lorg/eclipse/jdt/core/dom/SimplePropertyDescriptor;

    new-instance v9, Lorg/eclipse/jdt/core/dom/ChildListPropertyDescriptor;

    const-string v10, "extraDimensions2"

    const-class v11, Lorg/eclipse/jdt/core/dom/Dimension;

    invoke-direct {v9, v0, v10, v11, v12}, Lorg/eclipse/jdt/core/dom/ChildListPropertyDescriptor;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;Z)V

    sput-object v9, Lorg/eclipse/jdt/core/dom/MethodDeclaration;->EXTRA_DIMENSIONS2_PROPERTY:Lorg/eclipse/jdt/core/dom/ChildListPropertyDescriptor;

    new-instance v10, Lorg/eclipse/jdt/core/dom/ChildListPropertyDescriptor;

    const-string v11, "typeParameters"

    const-class v13, Lorg/eclipse/jdt/core/dom/TypeParameter;

    invoke-direct {v10, v0, v11, v13, v12}, Lorg/eclipse/jdt/core/dom/ChildListPropertyDescriptor;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;Z)V

    sput-object v10, Lorg/eclipse/jdt/core/dom/MethodDeclaration;->TYPE_PARAMETERS_PROPERTY:Lorg/eclipse/jdt/core/dom/ChildListPropertyDescriptor;

    new-instance v11, Lorg/eclipse/jdt/core/dom/ChildListPropertyDescriptor;

    const-string v13, "parameters"

    const-class v15, Lorg/eclipse/jdt/core/dom/SingleVariableDeclaration;

    invoke-direct {v11, v0, v13, v15, v7}, Lorg/eclipse/jdt/core/dom/ChildListPropertyDescriptor;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;Z)V

    sput-object v11, Lorg/eclipse/jdt/core/dom/MethodDeclaration;->PARAMETERS_PROPERTY:Lorg/eclipse/jdt/core/dom/ChildListPropertyDescriptor;

    new-instance v7, Lorg/eclipse/jdt/core/dom/ChildPropertyDescriptor;

    const/16 v20, 0x0

    const/16 v21, 0x0

    const-class v17, Lorg/eclipse/jdt/core/dom/MethodDeclaration;

    const-string v18, "receiverType"

    const-class v19, Lorg/eclipse/jdt/core/dom/Type;

    move-object/from16 v16, v7

    invoke-direct/range {v16 .. v21}, Lorg/eclipse/jdt/core/dom/ChildPropertyDescriptor;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;ZZ)V

    sput-object v7, Lorg/eclipse/jdt/core/dom/MethodDeclaration;->RECEIVER_TYPE_PROPERTY:Lorg/eclipse/jdt/core/dom/ChildPropertyDescriptor;

    new-instance v13, Lorg/eclipse/jdt/core/dom/ChildPropertyDescriptor;

    const/16 v26, 0x0

    const/16 v27, 0x0

    const-class v23, Lorg/eclipse/jdt/core/dom/MethodDeclaration;

    const-string v24, "receiverQualifier"

    const-class v25, Lorg/eclipse/jdt/core/dom/SimpleName;

    move-object/from16 v22, v13

    invoke-direct/range {v22 .. v27}, Lorg/eclipse/jdt/core/dom/ChildPropertyDescriptor;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;ZZ)V

    sput-object v13, Lorg/eclipse/jdt/core/dom/MethodDeclaration;->RECEIVER_QUALIFIER_PROPERTY:Lorg/eclipse/jdt/core/dom/ChildPropertyDescriptor;

    new-instance v15, Lorg/eclipse/jdt/core/dom/ChildListPropertyDescriptor;

    move-object/from16 v16, v9

    const-string v9, "thrownExceptions"

    move-object/from16 v17, v13

    const-class v13, Lorg/eclipse/jdt/core/dom/Name;

    invoke-direct {v15, v0, v9, v13, v12}, Lorg/eclipse/jdt/core/dom/ChildListPropertyDescriptor;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;Z)V

    sput-object v15, Lorg/eclipse/jdt/core/dom/MethodDeclaration;->THROWN_EXCEPTIONS_PROPERTY:Lorg/eclipse/jdt/core/dom/ChildListPropertyDescriptor;

    new-instance v9, Lorg/eclipse/jdt/core/dom/ChildListPropertyDescriptor;

    const-string v13, "thrownExceptionTypes"

    move-object/from16 v18, v7

    const-class v7, Lorg/eclipse/jdt/core/dom/Type;

    invoke-direct {v9, v0, v13, v7, v12}, Lorg/eclipse/jdt/core/dom/ChildListPropertyDescriptor;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;Z)V

    sput-object v9, Lorg/eclipse/jdt/core/dom/MethodDeclaration;->THROWN_EXCEPTION_TYPES_PROPERTY:Lorg/eclipse/jdt/core/dom/ChildListPropertyDescriptor;

    new-instance v7, Lorg/eclipse/jdt/core/dom/ChildPropertyDescriptor;

    const/16 v23, 0x0

    const/16 v24, 0x1

    const-class v20, Lorg/eclipse/jdt/core/dom/MethodDeclaration;

    const-string v21, "body"

    const-class v22, Lorg/eclipse/jdt/core/dom/Block;

    move-object/from16 v19, v7

    invoke-direct/range {v19 .. v24}, Lorg/eclipse/jdt/core/dom/ChildPropertyDescriptor;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;ZZ)V

    sput-object v7, Lorg/eclipse/jdt/core/dom/MethodDeclaration;->BODY_PROPERTY:Lorg/eclipse/jdt/core/dom/ChildPropertyDescriptor;

    new-instance v12, Ljava/util/ArrayList;

    const/16 v13, 0xa

    invoke-direct {v12, v13}, Ljava/util/ArrayList;-><init>(I)V

    invoke-static {v0, v12}, Lorg/eclipse/jdt/core/dom/ASTNode;->createPropertyList(Ljava/lang/Class;Ljava/util/List;)V

    invoke-static {v1, v12}, Lorg/eclipse/jdt/core/dom/ASTNode;->addProperty(Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;Ljava/util/List;)V

    invoke-static {v2, v12}, Lorg/eclipse/jdt/core/dom/ASTNode;->addProperty(Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;Ljava/util/List;)V

    invoke-static {v4, v12}, Lorg/eclipse/jdt/core/dom/ASTNode;->addProperty(Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;Ljava/util/List;)V

    invoke-static {v6, v12}, Lorg/eclipse/jdt/core/dom/ASTNode;->addProperty(Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;Ljava/util/List;)V

    invoke-static {v5, v12}, Lorg/eclipse/jdt/core/dom/ASTNode;->addProperty(Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;Ljava/util/List;)V

    invoke-static {v11, v12}, Lorg/eclipse/jdt/core/dom/ASTNode;->addProperty(Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;Ljava/util/List;)V

    invoke-static {v8, v12}, Lorg/eclipse/jdt/core/dom/ASTNode;->addProperty(Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;Ljava/util/List;)V

    invoke-static {v15, v12}, Lorg/eclipse/jdt/core/dom/ASTNode;->addProperty(Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;Ljava/util/List;)V

    invoke-static {v7, v12}, Lorg/eclipse/jdt/core/dom/ASTNode;->addProperty(Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;Ljava/util/List;)V

    invoke-static {v12}, Lorg/eclipse/jdt/core/dom/ASTNode;->reapPropertyList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    sput-object v2, Lorg/eclipse/jdt/core/dom/MethodDeclaration;->PROPERTY_DESCRIPTORS_2_0:Ljava/util/List;

    new-instance v2, Ljava/util/ArrayList;

    const/16 v6, 0xb

    invoke-direct {v2, v6}, Ljava/util/ArrayList;-><init>(I)V

    invoke-static {v0, v2}, Lorg/eclipse/jdt/core/dom/ASTNode;->createPropertyList(Ljava/lang/Class;Ljava/util/List;)V

    invoke-static {v1, v2}, Lorg/eclipse/jdt/core/dom/ASTNode;->addProperty(Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;Ljava/util/List;)V

    invoke-static {v3, v2}, Lorg/eclipse/jdt/core/dom/ASTNode;->addProperty(Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;Ljava/util/List;)V

    invoke-static {v4, v2}, Lorg/eclipse/jdt/core/dom/ASTNode;->addProperty(Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;Ljava/util/List;)V

    invoke-static {v10, v2}, Lorg/eclipse/jdt/core/dom/ASTNode;->addProperty(Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;Ljava/util/List;)V

    invoke-static {v14, v2}, Lorg/eclipse/jdt/core/dom/ASTNode;->addProperty(Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;Ljava/util/List;)V

    invoke-static {v5, v2}, Lorg/eclipse/jdt/core/dom/ASTNode;->addProperty(Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;Ljava/util/List;)V

    invoke-static {v11, v2}, Lorg/eclipse/jdt/core/dom/ASTNode;->addProperty(Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;Ljava/util/List;)V

    invoke-static {v8, v2}, Lorg/eclipse/jdt/core/dom/ASTNode;->addProperty(Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;Ljava/util/List;)V

    invoke-static {v15, v2}, Lorg/eclipse/jdt/core/dom/ASTNode;->addProperty(Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;Ljava/util/List;)V

    invoke-static {v7, v2}, Lorg/eclipse/jdt/core/dom/ASTNode;->addProperty(Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;Ljava/util/List;)V

    invoke-static {v2}, Lorg/eclipse/jdt/core/dom/ASTNode;->reapPropertyList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    sput-object v2, Lorg/eclipse/jdt/core/dom/MethodDeclaration;->PROPERTY_DESCRIPTORS_3_0:Ljava/util/List;

    new-instance v2, Ljava/util/ArrayList;

    const/16 v6, 0xd

    invoke-direct {v2, v6}, Ljava/util/ArrayList;-><init>(I)V

    invoke-static {v0, v2}, Lorg/eclipse/jdt/core/dom/ASTNode;->createPropertyList(Ljava/lang/Class;Ljava/util/List;)V

    invoke-static {v1, v2}, Lorg/eclipse/jdt/core/dom/ASTNode;->addProperty(Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;Ljava/util/List;)V

    invoke-static {v3, v2}, Lorg/eclipse/jdt/core/dom/ASTNode;->addProperty(Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;Ljava/util/List;)V

    invoke-static {v4, v2}, Lorg/eclipse/jdt/core/dom/ASTNode;->addProperty(Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;Ljava/util/List;)V

    invoke-static {v10, v2}, Lorg/eclipse/jdt/core/dom/ASTNode;->addProperty(Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;Ljava/util/List;)V

    invoke-static {v14, v2}, Lorg/eclipse/jdt/core/dom/ASTNode;->addProperty(Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;Ljava/util/List;)V

    invoke-static {v5, v2}, Lorg/eclipse/jdt/core/dom/ASTNode;->addProperty(Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;Ljava/util/List;)V

    move-object/from16 v0, v18

    invoke-static {v0, v2}, Lorg/eclipse/jdt/core/dom/ASTNode;->addProperty(Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;Ljava/util/List;)V

    move-object/from16 v0, v17

    invoke-static {v0, v2}, Lorg/eclipse/jdt/core/dom/ASTNode;->addProperty(Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;Ljava/util/List;)V

    invoke-static {v11, v2}, Lorg/eclipse/jdt/core/dom/ASTNode;->addProperty(Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;Ljava/util/List;)V

    move-object/from16 v0, v16

    invoke-static {v0, v2}, Lorg/eclipse/jdt/core/dom/ASTNode;->addProperty(Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;Ljava/util/List;)V

    invoke-static {v9, v2}, Lorg/eclipse/jdt/core/dom/ASTNode;->addProperty(Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;Ljava/util/List;)V

    invoke-static {v7, v2}, Lorg/eclipse/jdt/core/dom/ASTNode;->addProperty(Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;Ljava/util/List;)V

    invoke-static {v2}, Lorg/eclipse/jdt/core/dom/ASTNode;->reapPropertyList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lorg/eclipse/jdt/core/dom/MethodDeclaration;->PROPERTY_DESCRIPTORS_8_0:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Lorg/eclipse/jdt/core/dom/AST;)V
    .locals 4

    invoke-direct {p0, p1}, Lorg/eclipse/jdt/core/dom/BodyDeclaration;-><init>(Lorg/eclipse/jdt/core/dom/AST;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/eclipse/jdt/core/dom/MethodDeclaration;->isConstructor:Z

    const/4 v1, 0x0

    iput-object v1, p0, Lorg/eclipse/jdt/core/dom/MethodDeclaration;->methodName:Lorg/eclipse/jdt/core/dom/SimpleName;

    iput-object v1, p0, Lorg/eclipse/jdt/core/dom/MethodDeclaration;->optionalReceiverType:Lorg/eclipse/jdt/core/dom/Type;

    iput-object v1, p0, Lorg/eclipse/jdt/core/dom/MethodDeclaration;->optionalReceiverQualifier:Lorg/eclipse/jdt/core/dom/SimpleName;

    new-instance v2, Lorg/eclipse/jdt/core/dom/ASTNode$NodeList;

    sget-object v3, Lorg/eclipse/jdt/core/dom/MethodDeclaration;->PARAMETERS_PROPERTY:Lorg/eclipse/jdt/core/dom/ChildListPropertyDescriptor;

    invoke-direct {v2, p0, v3}, Lorg/eclipse/jdt/core/dom/ASTNode$NodeList;-><init>(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/ChildListPropertyDescriptor;)V

    iput-object v2, p0, Lorg/eclipse/jdt/core/dom/MethodDeclaration;->parameters:Lorg/eclipse/jdt/core/dom/ASTNode$NodeList;

    iput-object v1, p0, Lorg/eclipse/jdt/core/dom/MethodDeclaration;->returnType:Lorg/eclipse/jdt/core/dom/Type;

    iput-boolean v0, p0, Lorg/eclipse/jdt/core/dom/MethodDeclaration;->returnType2Initialized:Z

    iput-object v1, p0, Lorg/eclipse/jdt/core/dom/MethodDeclaration;->typeParameters:Lorg/eclipse/jdt/core/dom/ASTNode$NodeList;

    iput v0, p0, Lorg/eclipse/jdt/core/dom/MethodDeclaration;->extraArrayDimensions:I

    iput-object v1, p0, Lorg/eclipse/jdt/core/dom/MethodDeclaration;->extraDimensions:Lorg/eclipse/jdt/core/dom/ASTNode$NodeList;

    iput-object v1, p0, Lorg/eclipse/jdt/core/dom/MethodDeclaration;->thrownExceptions:Lorg/eclipse/jdt/core/dom/ASTNode$NodeList;

    iput-object v1, p0, Lorg/eclipse/jdt/core/dom/MethodDeclaration;->thrownExceptionTypes:Lorg/eclipse/jdt/core/dom/ASTNode$NodeList;

    iput-object v1, p0, Lorg/eclipse/jdt/core/dom/MethodDeclaration;->optionalBody:Lorg/eclipse/jdt/core/dom/Block;

    iget v0, p1, Lorg/eclipse/jdt/core/dom/AST;->apiLevel:I

    const/4 v1, 0x3

    if-lt v0, v1, :cond_0

    new-instance v0, Lorg/eclipse/jdt/core/dom/ASTNode$NodeList;

    sget-object v1, Lorg/eclipse/jdt/core/dom/MethodDeclaration;->TYPE_PARAMETERS_PROPERTY:Lorg/eclipse/jdt/core/dom/ChildListPropertyDescriptor;

    invoke-direct {v0, p0, v1}, Lorg/eclipse/jdt/core/dom/ASTNode$NodeList;-><init>(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/ChildListPropertyDescriptor;)V

    iput-object v0, p0, Lorg/eclipse/jdt/core/dom/MethodDeclaration;->typeParameters:Lorg/eclipse/jdt/core/dom/ASTNode$NodeList;

    :cond_0
    iget p1, p1, Lorg/eclipse/jdt/core/dom/AST;->apiLevel:I

    const/16 v0, 0x8

    if-ge p1, v0, :cond_1

    new-instance p1, Lorg/eclipse/jdt/core/dom/ASTNode$NodeList;

    sget-object v0, Lorg/eclipse/jdt/core/dom/MethodDeclaration;->THROWN_EXCEPTIONS_PROPERTY:Lorg/eclipse/jdt/core/dom/ChildListPropertyDescriptor;

    invoke-direct {p1, p0, v0}, Lorg/eclipse/jdt/core/dom/ASTNode$NodeList;-><init>(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/ChildListPropertyDescriptor;)V

    iput-object p1, p0, Lorg/eclipse/jdt/core/dom/MethodDeclaration;->thrownExceptions:Lorg/eclipse/jdt/core/dom/ASTNode$NodeList;

    goto :goto_0

    :cond_1
    new-instance p1, Lorg/eclipse/jdt/core/dom/ASTNode$NodeList;

    sget-object v0, Lorg/eclipse/jdt/core/dom/MethodDeclaration;->EXTRA_DIMENSIONS2_PROPERTY:Lorg/eclipse/jdt/core/dom/ChildListPropertyDescriptor;

    invoke-direct {p1, p0, v0}, Lorg/eclipse/jdt/core/dom/ASTNode$NodeList;-><init>(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/ChildListPropertyDescriptor;)V

    iput-object p1, p0, Lorg/eclipse/jdt/core/dom/MethodDeclaration;->extraDimensions:Lorg/eclipse/jdt/core/dom/ASTNode$NodeList;

    new-instance p1, Lorg/eclipse/jdt/core/dom/ASTNode$NodeList;

    sget-object v0, Lorg/eclipse/jdt/core/dom/MethodDeclaration;->THROWN_EXCEPTION_TYPES_PROPERTY:Lorg/eclipse/jdt/core/dom/ChildListPropertyDescriptor;

    invoke-direct {p1, p0, v0}, Lorg/eclipse/jdt/core/dom/ASTNode$NodeList;-><init>(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/ChildListPropertyDescriptor;)V

    iput-object p1, p0, Lorg/eclipse/jdt/core/dom/MethodDeclaration;->thrownExceptionTypes:Lorg/eclipse/jdt/core/dom/ASTNode$NodeList;

    :goto_0
    return-void
.end method

.method public static propertyDescriptors(I)Ljava/util/List;
    .locals 1

    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    sget-object p0, Lorg/eclipse/jdt/core/dom/MethodDeclaration;->PROPERTY_DESCRIPTORS_2_0:Ljava/util/List;

    return-object p0

    :cond_0
    const/16 v0, 0x8

    if-ge p0, v0, :cond_1

    sget-object p0, Lorg/eclipse/jdt/core/dom/MethodDeclaration;->PROPERTY_DESCRIPTORS_3_0:Ljava/util/List;

    return-object p0

    :cond_1
    sget-object p0, Lorg/eclipse/jdt/core/dom/MethodDeclaration;->PROPERTY_DESCRIPTORS_8_0:Ljava/util/List;

    return-object p0
.end method


# virtual methods
.method public accept0(Lorg/eclipse/jdt/core/dom/ASTVisitor;)V
    .locals 2

    invoke-virtual {p1, p0}, Lorg/eclipse/jdt/core/dom/ASTVisitor;->visit(Lorg/eclipse/jdt/core/dom/MethodDeclaration;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lorg/eclipse/jdt/core/dom/BodyDeclaration;->getJavadoc()Lorg/eclipse/jdt/core/dom/Javadoc;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lorg/eclipse/jdt/core/dom/ASTNode;->acceptChild(Lorg/eclipse/jdt/core/dom/ASTVisitor;Lorg/eclipse/jdt/core/dom/ASTNode;)V

    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/ASTNode;->ast:Lorg/eclipse/jdt/core/dom/AST;

    iget v0, v0, Lorg/eclipse/jdt/core/dom/AST;->apiLevel:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lorg/eclipse/jdt/core/dom/MethodDeclaration;->getReturnType()Lorg/eclipse/jdt/core/dom/Type;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lorg/eclipse/jdt/core/dom/ASTNode;->acceptChild(Lorg/eclipse/jdt/core/dom/ASTVisitor;Lorg/eclipse/jdt/core/dom/ASTNode;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/BodyDeclaration;->modifiers:Lorg/eclipse/jdt/core/dom/ASTNode$NodeList;

    invoke-virtual {p0, p1, v0}, Lorg/eclipse/jdt/core/dom/ASTNode;->acceptChildren(Lorg/eclipse/jdt/core/dom/ASTVisitor;Lorg/eclipse/jdt/core/dom/ASTNode$NodeList;)V

    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/MethodDeclaration;->typeParameters:Lorg/eclipse/jdt/core/dom/ASTNode$NodeList;

    invoke-virtual {p0, p1, v0}, Lorg/eclipse/jdt/core/dom/ASTNode;->acceptChildren(Lorg/eclipse/jdt/core/dom/ASTVisitor;Lorg/eclipse/jdt/core/dom/ASTNode$NodeList;)V

    invoke-virtual {p0}, Lorg/eclipse/jdt/core/dom/MethodDeclaration;->getReturnType2()Lorg/eclipse/jdt/core/dom/Type;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lorg/eclipse/jdt/core/dom/ASTNode;->acceptChild(Lorg/eclipse/jdt/core/dom/ASTVisitor;Lorg/eclipse/jdt/core/dom/ASTNode;)V

    :goto_0
    invoke-virtual {p0}, Lorg/eclipse/jdt/core/dom/MethodDeclaration;->getName()Lorg/eclipse/jdt/core/dom/SimpleName;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lorg/eclipse/jdt/core/dom/ASTNode;->acceptChild(Lorg/eclipse/jdt/core/dom/ASTVisitor;Lorg/eclipse/jdt/core/dom/ASTNode;)V

    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/ASTNode;->ast:Lorg/eclipse/jdt/core/dom/AST;

    iget v0, v0, Lorg/eclipse/jdt/core/dom/AST;->apiLevel:I

    const/16 v1, 0x8

    if-lt v0, v1, :cond_1

    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/MethodDeclaration;->optionalReceiverType:Lorg/eclipse/jdt/core/dom/Type;

    invoke-virtual {p0, p1, v0}, Lorg/eclipse/jdt/core/dom/ASTNode;->acceptChild(Lorg/eclipse/jdt/core/dom/ASTVisitor;Lorg/eclipse/jdt/core/dom/ASTNode;)V

    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/MethodDeclaration;->optionalReceiverQualifier:Lorg/eclipse/jdt/core/dom/SimpleName;

    invoke-virtual {p0, p1, v0}, Lorg/eclipse/jdt/core/dom/ASTNode;->acceptChild(Lorg/eclipse/jdt/core/dom/ASTVisitor;Lorg/eclipse/jdt/core/dom/ASTNode;)V

    :cond_1
    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/MethodDeclaration;->parameters:Lorg/eclipse/jdt/core/dom/ASTNode$NodeList;

    invoke-virtual {p0, p1, v0}, Lorg/eclipse/jdt/core/dom/ASTNode;->acceptChildren(Lorg/eclipse/jdt/core/dom/ASTVisitor;Lorg/eclipse/jdt/core/dom/ASTNode$NodeList;)V

    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/ASTNode;->ast:Lorg/eclipse/jdt/core/dom/AST;

    invoke-virtual {v0}, Lorg/eclipse/jdt/core/dom/AST;->apiLevel()I

    move-result v0

    if-lt v0, v1, :cond_2

    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/MethodDeclaration;->extraDimensions:Lorg/eclipse/jdt/core/dom/ASTNode$NodeList;

    invoke-virtual {p0, p1, v0}, Lorg/eclipse/jdt/core/dom/ASTNode;->acceptChildren(Lorg/eclipse/jdt/core/dom/ASTVisitor;Lorg/eclipse/jdt/core/dom/ASTNode$NodeList;)V

    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/MethodDeclaration;->thrownExceptionTypes:Lorg/eclipse/jdt/core/dom/ASTNode$NodeList;

    invoke-virtual {p0, p1, v0}, Lorg/eclipse/jdt/core/dom/ASTNode;->acceptChildren(Lorg/eclipse/jdt/core/dom/ASTVisitor;Lorg/eclipse/jdt/core/dom/ASTNode$NodeList;)V

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/MethodDeclaration;->thrownExceptions:Lorg/eclipse/jdt/core/dom/ASTNode$NodeList;

    invoke-virtual {p0, p1, v0}, Lorg/eclipse/jdt/core/dom/ASTNode;->acceptChildren(Lorg/eclipse/jdt/core/dom/ASTVisitor;Lorg/eclipse/jdt/core/dom/ASTNode$NodeList;)V

    :goto_1
    invoke-virtual {p0}, Lorg/eclipse/jdt/core/dom/MethodDeclaration;->getBody()Lorg/eclipse/jdt/core/dom/Block;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lorg/eclipse/jdt/core/dom/ASTNode;->acceptChild(Lorg/eclipse/jdt/core/dom/ASTVisitor;Lorg/eclipse/jdt/core/dom/ASTNode;)V

    :cond_3
    invoke-virtual {p1, p0}, Lorg/eclipse/jdt/core/dom/ASTVisitor;->endVisit(Lorg/eclipse/jdt/core/dom/MethodDeclaration;)V

    return-void
.end method

.method public clone0(Lorg/eclipse/jdt/core/dom/AST;)Lorg/eclipse/jdt/core/dom/ASTNode;
    .locals 4

    new-instance v0, Lorg/eclipse/jdt/core/dom/MethodDeclaration;

    invoke-direct {v0, p1}, Lorg/eclipse/jdt/core/dom/MethodDeclaration;-><init>(Lorg/eclipse/jdt/core/dom/AST;)V

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

    invoke-virtual {p0}, Lorg/eclipse/jdt/core/dom/MethodDeclaration;->getReturnType()Lorg/eclipse/jdt/core/dom/Type;

    move-result-object v1

    invoke-static {p1, v1}, Lorg/eclipse/jdt/core/dom/ASTNode;->copySubtree(Lorg/eclipse/jdt/core/dom/AST;Lorg/eclipse/jdt/core/dom/ASTNode;)Lorg/eclipse/jdt/core/dom/ASTNode;

    move-result-object v1

    check-cast v1, Lorg/eclipse/jdt/core/dom/Type;

    invoke-virtual {v0, v1}, Lorg/eclipse/jdt/core/dom/MethodDeclaration;->setReturnType(Lorg/eclipse/jdt/core/dom/Type;)V

    :cond_0
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

    invoke-virtual {v0}, Lorg/eclipse/jdt/core/dom/MethodDeclaration;->typeParameters()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0}, Lorg/eclipse/jdt/core/dom/MethodDeclaration;->typeParameters()Ljava/util/List;

    move-result-object v2

    invoke-static {p1, v2}, Lorg/eclipse/jdt/core/dom/ASTNode;->copySubtrees(Lorg/eclipse/jdt/core/dom/AST;Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {p0}, Lorg/eclipse/jdt/core/dom/MethodDeclaration;->getReturnType2()Lorg/eclipse/jdt/core/dom/Type;

    move-result-object v1

    invoke-static {p1, v1}, Lorg/eclipse/jdt/core/dom/ASTNode;->copySubtree(Lorg/eclipse/jdt/core/dom/AST;Lorg/eclipse/jdt/core/dom/ASTNode;)Lorg/eclipse/jdt/core/dom/ASTNode;

    move-result-object v1

    check-cast v1, Lorg/eclipse/jdt/core/dom/Type;

    invoke-virtual {v0, v1}, Lorg/eclipse/jdt/core/dom/MethodDeclaration;->setReturnType2(Lorg/eclipse/jdt/core/dom/Type;)V

    :cond_1
    invoke-virtual {p0}, Lorg/eclipse/jdt/core/dom/MethodDeclaration;->isConstructor()Z

    move-result v1

    invoke-virtual {v0, v1}, Lorg/eclipse/jdt/core/dom/MethodDeclaration;->setConstructor(Z)V

    invoke-virtual {p0}, Lorg/eclipse/jdt/core/dom/MethodDeclaration;->getName()Lorg/eclipse/jdt/core/dom/SimpleName;

    move-result-object v1

    invoke-virtual {v1, p1}, Lorg/eclipse/jdt/core/dom/ASTNode;->clone(Lorg/eclipse/jdt/core/dom/AST;)Lorg/eclipse/jdt/core/dom/ASTNode;

    move-result-object v1

    check-cast v1, Lorg/eclipse/jdt/core/dom/SimpleName;

    invoke-virtual {v0, v1}, Lorg/eclipse/jdt/core/dom/MethodDeclaration;->setName(Lorg/eclipse/jdt/core/dom/SimpleName;)V

    iget-object v1, p0, Lorg/eclipse/jdt/core/dom/ASTNode;->ast:Lorg/eclipse/jdt/core/dom/AST;

    iget v1, v1, Lorg/eclipse/jdt/core/dom/AST;->apiLevel:I

    const/16 v2, 0x8

    if-lt v1, v2, :cond_2

    invoke-virtual {p0}, Lorg/eclipse/jdt/core/dom/MethodDeclaration;->getReceiverType()Lorg/eclipse/jdt/core/dom/Type;

    move-result-object v1

    invoke-static {p1, v1}, Lorg/eclipse/jdt/core/dom/ASTNode;->copySubtree(Lorg/eclipse/jdt/core/dom/AST;Lorg/eclipse/jdt/core/dom/ASTNode;)Lorg/eclipse/jdt/core/dom/ASTNode;

    move-result-object v1

    check-cast v1, Lorg/eclipse/jdt/core/dom/Type;

    invoke-virtual {v0, v1}, Lorg/eclipse/jdt/core/dom/MethodDeclaration;->setReceiverType(Lorg/eclipse/jdt/core/dom/Type;)V

    invoke-virtual {p0}, Lorg/eclipse/jdt/core/dom/MethodDeclaration;->getReceiverQualifier()Lorg/eclipse/jdt/core/dom/SimpleName;

    move-result-object v1

    invoke-static {p1, v1}, Lorg/eclipse/jdt/core/dom/ASTNode;->copySubtree(Lorg/eclipse/jdt/core/dom/AST;Lorg/eclipse/jdt/core/dom/ASTNode;)Lorg/eclipse/jdt/core/dom/ASTNode;

    move-result-object v1

    check-cast v1, Lorg/eclipse/jdt/core/dom/SimpleName;

    invoke-virtual {v0, v1}, Lorg/eclipse/jdt/core/dom/MethodDeclaration;->setReceiverQualifier(Lorg/eclipse/jdt/core/dom/SimpleName;)V

    :cond_2
    invoke-virtual {v0}, Lorg/eclipse/jdt/core/dom/MethodDeclaration;->parameters()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0}, Lorg/eclipse/jdt/core/dom/MethodDeclaration;->parameters()Ljava/util/List;

    move-result-object v3

    invoke-static {p1, v3}, Lorg/eclipse/jdt/core/dom/ASTNode;->copySubtrees(Lorg/eclipse/jdt/core/dom/AST;Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object v1, p0, Lorg/eclipse/jdt/core/dom/ASTNode;->ast:Lorg/eclipse/jdt/core/dom/AST;

    iget v1, v1, Lorg/eclipse/jdt/core/dom/AST;->apiLevel:I

    if-lt v1, v2, :cond_3

    invoke-virtual {v0}, Lorg/eclipse/jdt/core/dom/MethodDeclaration;->extraDimensions()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0}, Lorg/eclipse/jdt/core/dom/MethodDeclaration;->extraDimensions()Ljava/util/List;

    move-result-object v3

    invoke-static {p1, v3}, Lorg/eclipse/jdt/core/dom/ASTNode;->copySubtrees(Lorg/eclipse/jdt/core/dom/AST;Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lorg/eclipse/jdt/core/dom/MethodDeclaration;->getExtraDimensions()I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/eclipse/jdt/core/dom/MethodDeclaration;->setExtraDimensions(I)V

    :goto_0
    iget-object v1, p0, Lorg/eclipse/jdt/core/dom/ASTNode;->ast:Lorg/eclipse/jdt/core/dom/AST;

    invoke-virtual {v1}, Lorg/eclipse/jdt/core/dom/AST;->apiLevel()I

    move-result v1

    if-lt v1, v2, :cond_4

    invoke-virtual {v0}, Lorg/eclipse/jdt/core/dom/MethodDeclaration;->thrownExceptionTypes()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0}, Lorg/eclipse/jdt/core/dom/MethodDeclaration;->thrownExceptionTypes()Ljava/util/List;

    move-result-object v2

    invoke-static {p1, v2}, Lorg/eclipse/jdt/core/dom/ASTNode;->copySubtrees(Lorg/eclipse/jdt/core/dom/AST;Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_1

    :cond_4
    invoke-virtual {v0}, Lorg/eclipse/jdt/core/dom/MethodDeclaration;->thrownExceptions()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0}, Lorg/eclipse/jdt/core/dom/MethodDeclaration;->thrownExceptions()Ljava/util/List;

    move-result-object v2

    invoke-static {p1, v2}, Lorg/eclipse/jdt/core/dom/ASTNode;->copySubtrees(Lorg/eclipse/jdt/core/dom/AST;Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :goto_1
    invoke-virtual {p0}, Lorg/eclipse/jdt/core/dom/MethodDeclaration;->getBody()Lorg/eclipse/jdt/core/dom/Block;

    move-result-object v1

    invoke-static {p1, v1}, Lorg/eclipse/jdt/core/dom/ASTNode;->copySubtree(Lorg/eclipse/jdt/core/dom/AST;Lorg/eclipse/jdt/core/dom/ASTNode;)Lorg/eclipse/jdt/core/dom/ASTNode;

    move-result-object p1

    check-cast p1, Lorg/eclipse/jdt/core/dom/Block;

    invoke-virtual {v0, p1}, Lorg/eclipse/jdt/core/dom/MethodDeclaration;->setBody(Lorg/eclipse/jdt/core/dom/Block;)V

    return-object v0
.end method

.method public extraDimensions()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/MethodDeclaration;->extraDimensions:Lorg/eclipse/jdt/core/dom/ASTNode$NodeList;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lorg/eclipse/jdt/core/dom/ASTNode;->unsupportedIn2_3_4()V

    :cond_0
    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/MethodDeclaration;->extraDimensions:Lorg/eclipse/jdt/core/dom/ASTNode$NodeList;

    return-object v0
.end method

.method public getBody()Lorg/eclipse/jdt/core/dom/Block;
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/MethodDeclaration;->optionalBody:Lorg/eclipse/jdt/core/dom/Block;

    return-object v0
.end method

.method public getExtraDimensions()I
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/MethodDeclaration;->extraDimensions:Lorg/eclipse/jdt/core/dom/ASTNode$NodeList;

    if-nez v0, :cond_0

    iget v0, p0, Lorg/eclipse/jdt/core/dom/MethodDeclaration;->extraArrayDimensions:I

    return v0

    :cond_0
    invoke-virtual {v0}, Lorg/eclipse/jdt/core/dom/ASTNode$NodeList;->size()I

    move-result v0

    return v0
.end method

.method public getName()Lorg/eclipse/jdt/core/dom/SimpleName;
    .locals 2

    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/MethodDeclaration;->methodName:Lorg/eclipse/jdt/core/dom/SimpleName;

    if-nez v0, :cond_1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/MethodDeclaration;->methodName:Lorg/eclipse/jdt/core/dom/SimpleName;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lorg/eclipse/jdt/core/dom/ASTNode;->preLazyInit()V

    new-instance v0, Lorg/eclipse/jdt/core/dom/SimpleName;

    iget-object v1, p0, Lorg/eclipse/jdt/core/dom/ASTNode;->ast:Lorg/eclipse/jdt/core/dom/AST;

    invoke-direct {v0, v1}, Lorg/eclipse/jdt/core/dom/SimpleName;-><init>(Lorg/eclipse/jdt/core/dom/AST;)V

    iput-object v0, p0, Lorg/eclipse/jdt/core/dom/MethodDeclaration;->methodName:Lorg/eclipse/jdt/core/dom/SimpleName;

    sget-object v1, Lorg/eclipse/jdt/core/dom/MethodDeclaration;->NAME_PROPERTY:Lorg/eclipse/jdt/core/dom/ChildPropertyDescriptor;

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
    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/MethodDeclaration;->methodName:Lorg/eclipse/jdt/core/dom/SimpleName;

    return-object v0
.end method

.method public final getNodeType0()I
    .locals 1

    const/16 v0, 0x1f

    return v0
.end method

.method public getReceiverQualifier()Lorg/eclipse/jdt/core/dom/SimpleName;
    .locals 1

    invoke-virtual {p0}, Lorg/eclipse/jdt/core/dom/ASTNode;->unsupportedIn2_3_4()V

    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/MethodDeclaration;->optionalReceiverQualifier:Lorg/eclipse/jdt/core/dom/SimpleName;

    return-object v0
.end method

.method public getReceiverType()Lorg/eclipse/jdt/core/dom/Type;
    .locals 1

    invoke-virtual {p0}, Lorg/eclipse/jdt/core/dom/ASTNode;->unsupportedIn2_3_4()V

    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/MethodDeclaration;->optionalReceiverType:Lorg/eclipse/jdt/core/dom/Type;

    return-object v0
.end method

.method public getReturnType()Lorg/eclipse/jdt/core/dom/Type;
    .locals 1

    invoke-virtual {p0}, Lorg/eclipse/jdt/core/dom/MethodDeclaration;->internalGetReturnType()Lorg/eclipse/jdt/core/dom/Type;

    move-result-object v0

    return-object v0
.end method

.method public getReturnType2()Lorg/eclipse/jdt/core/dom/Type;
    .locals 2

    invoke-virtual {p0}, Lorg/eclipse/jdt/core/dom/ASTNode;->unsupportedIn2()V

    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/MethodDeclaration;->returnType:Lorg/eclipse/jdt/core/dom/Type;

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lorg/eclipse/jdt/core/dom/MethodDeclaration;->returnType2Initialized:Z

    if-nez v0, :cond_1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/MethodDeclaration;->returnType:Lorg/eclipse/jdt/core/dom/Type;

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lorg/eclipse/jdt/core/dom/MethodDeclaration;->returnType2Initialized:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lorg/eclipse/jdt/core/dom/ASTNode;->preLazyInit()V

    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/ASTNode;->ast:Lorg/eclipse/jdt/core/dom/AST;

    sget-object v1, Lorg/eclipse/jdt/core/dom/PrimitiveType;->VOID:Lorg/eclipse/jdt/core/dom/PrimitiveType$Code;

    invoke-virtual {v0, v1}, Lorg/eclipse/jdt/core/dom/AST;->newPrimitiveType(Lorg/eclipse/jdt/core/dom/PrimitiveType$Code;)Lorg/eclipse/jdt/core/dom/PrimitiveType;

    move-result-object v0

    iput-object v0, p0, Lorg/eclipse/jdt/core/dom/MethodDeclaration;->returnType:Lorg/eclipse/jdt/core/dom/Type;

    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/eclipse/jdt/core/dom/MethodDeclaration;->returnType2Initialized:Z

    sget-object v1, Lorg/eclipse/jdt/core/dom/MethodDeclaration;->RETURN_TYPE2_PROPERTY:Lorg/eclipse/jdt/core/dom/ChildPropertyDescriptor;

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
    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/MethodDeclaration;->returnType:Lorg/eclipse/jdt/core/dom/Type;

    return-object v0
.end method

.method public final internalGetChildListProperty(Lorg/eclipse/jdt/core/dom/ChildListPropertyDescriptor;)Ljava/util/List;
    .locals 1

    sget-object v0, Lorg/eclipse/jdt/core/dom/MethodDeclaration;->MODIFIERS2_PROPERTY:Lorg/eclipse/jdt/core/dom/ChildListPropertyDescriptor;

    if-ne p1, v0, :cond_0

    invoke-virtual {p0}, Lorg/eclipse/jdt/core/dom/BodyDeclaration;->modifiers()Ljava/util/List;

    move-result-object p1

    return-object p1

    :cond_0
    sget-object v0, Lorg/eclipse/jdt/core/dom/MethodDeclaration;->TYPE_PARAMETERS_PROPERTY:Lorg/eclipse/jdt/core/dom/ChildListPropertyDescriptor;

    if-ne p1, v0, :cond_1

    invoke-virtual {p0}, Lorg/eclipse/jdt/core/dom/MethodDeclaration;->typeParameters()Ljava/util/List;

    move-result-object p1

    return-object p1

    :cond_1
    sget-object v0, Lorg/eclipse/jdt/core/dom/MethodDeclaration;->PARAMETERS_PROPERTY:Lorg/eclipse/jdt/core/dom/ChildListPropertyDescriptor;

    if-ne p1, v0, :cond_2

    invoke-virtual {p0}, Lorg/eclipse/jdt/core/dom/MethodDeclaration;->parameters()Ljava/util/List;

    move-result-object p1

    return-object p1

    :cond_2
    sget-object v0, Lorg/eclipse/jdt/core/dom/MethodDeclaration;->THROWN_EXCEPTIONS_PROPERTY:Lorg/eclipse/jdt/core/dom/ChildListPropertyDescriptor;

    if-ne p1, v0, :cond_3

    invoke-virtual {p0}, Lorg/eclipse/jdt/core/dom/MethodDeclaration;->thrownExceptions()Ljava/util/List;

    move-result-object p1

    return-object p1

    :cond_3
    sget-object v0, Lorg/eclipse/jdt/core/dom/MethodDeclaration;->THROWN_EXCEPTION_TYPES_PROPERTY:Lorg/eclipse/jdt/core/dom/ChildListPropertyDescriptor;

    if-ne p1, v0, :cond_4

    invoke-virtual {p0}, Lorg/eclipse/jdt/core/dom/MethodDeclaration;->thrownExceptionTypes()Ljava/util/List;

    move-result-object p1

    return-object p1

    :cond_4
    sget-object v0, Lorg/eclipse/jdt/core/dom/MethodDeclaration;->EXTRA_DIMENSIONS2_PROPERTY:Lorg/eclipse/jdt/core/dom/ChildListPropertyDescriptor;

    if-ne p1, v0, :cond_5

    invoke-virtual {p0}, Lorg/eclipse/jdt/core/dom/MethodDeclaration;->extraDimensions()Ljava/util/List;

    move-result-object p1

    return-object p1

    :cond_5
    invoke-super {p0, p1}, Lorg/eclipse/jdt/core/dom/ASTNode;->internalGetChildListProperty(Lorg/eclipse/jdt/core/dom/ChildListPropertyDescriptor;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public final internalGetReturnType()Lorg/eclipse/jdt/core/dom/Type;
    .locals 2

    invoke-virtual {p0}, Lorg/eclipse/jdt/core/dom/ASTNode;->supportedOnlyIn2()V

    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/MethodDeclaration;->returnType:Lorg/eclipse/jdt/core/dom/Type;

    if-nez v0, :cond_1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/MethodDeclaration;->returnType:Lorg/eclipse/jdt/core/dom/Type;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lorg/eclipse/jdt/core/dom/ASTNode;->preLazyInit()V

    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/ASTNode;->ast:Lorg/eclipse/jdt/core/dom/AST;

    sget-object v1, Lorg/eclipse/jdt/core/dom/PrimitiveType;->VOID:Lorg/eclipse/jdt/core/dom/PrimitiveType$Code;

    invoke-virtual {v0, v1}, Lorg/eclipse/jdt/core/dom/AST;->newPrimitiveType(Lorg/eclipse/jdt/core/dom/PrimitiveType$Code;)Lorg/eclipse/jdt/core/dom/PrimitiveType;

    move-result-object v0

    iput-object v0, p0, Lorg/eclipse/jdt/core/dom/MethodDeclaration;->returnType:Lorg/eclipse/jdt/core/dom/Type;

    sget-object v1, Lorg/eclipse/jdt/core/dom/MethodDeclaration;->RETURN_TYPE_PROPERTY:Lorg/eclipse/jdt/core/dom/ChildPropertyDescriptor;

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
    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/MethodDeclaration;->returnType:Lorg/eclipse/jdt/core/dom/Type;

    return-object v0
.end method

.method public final internalGetSetBooleanProperty(Lorg/eclipse/jdt/core/dom/SimplePropertyDescriptor;ZZ)Z
    .locals 1

    sget-object v0, Lorg/eclipse/jdt/core/dom/MethodDeclaration;->CONSTRUCTOR_PROPERTY:Lorg/eclipse/jdt/core/dom/SimplePropertyDescriptor;

    if-ne p1, v0, :cond_1

    if-eqz p2, :cond_0

    invoke-virtual {p0}, Lorg/eclipse/jdt/core/dom/MethodDeclaration;->isConstructor()Z

    move-result p1

    return p1

    :cond_0
    invoke-virtual {p0, p3}, Lorg/eclipse/jdt/core/dom/MethodDeclaration;->setConstructor(Z)V

    const/4 p1, 0x0

    return p1

    :cond_1
    invoke-super {p0, p1, p2, p3}, Lorg/eclipse/jdt/core/dom/ASTNode;->internalGetSetBooleanProperty(Lorg/eclipse/jdt/core/dom/SimplePropertyDescriptor;ZZ)Z

    move-result p1

    return p1
.end method

.method public final internalGetSetChildProperty(Lorg/eclipse/jdt/core/dom/ChildPropertyDescriptor;ZLorg/eclipse/jdt/core/dom/ASTNode;)Lorg/eclipse/jdt/core/dom/ASTNode;
    .locals 2

    sget-object v0, Lorg/eclipse/jdt/core/dom/MethodDeclaration;->JAVADOC_PROPERTY:Lorg/eclipse/jdt/core/dom/ChildPropertyDescriptor;

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
    sget-object v0, Lorg/eclipse/jdt/core/dom/MethodDeclaration;->NAME_PROPERTY:Lorg/eclipse/jdt/core/dom/ChildPropertyDescriptor;

    if-ne p1, v0, :cond_3

    if-eqz p2, :cond_2

    invoke-virtual {p0}, Lorg/eclipse/jdt/core/dom/MethodDeclaration;->getName()Lorg/eclipse/jdt/core/dom/SimpleName;

    move-result-object p1

    return-object p1

    :cond_2
    check-cast p3, Lorg/eclipse/jdt/core/dom/SimpleName;

    invoke-virtual {p0, p3}, Lorg/eclipse/jdt/core/dom/MethodDeclaration;->setName(Lorg/eclipse/jdt/core/dom/SimpleName;)V

    return-object v1

    :cond_3
    sget-object v0, Lorg/eclipse/jdt/core/dom/MethodDeclaration;->RETURN_TYPE_PROPERTY:Lorg/eclipse/jdt/core/dom/ChildPropertyDescriptor;

    if-ne p1, v0, :cond_5

    if-eqz p2, :cond_4

    invoke-virtual {p0}, Lorg/eclipse/jdt/core/dom/MethodDeclaration;->getReturnType()Lorg/eclipse/jdt/core/dom/Type;

    move-result-object p1

    return-object p1

    :cond_4
    check-cast p3, Lorg/eclipse/jdt/core/dom/Type;

    invoke-virtual {p0, p3}, Lorg/eclipse/jdt/core/dom/MethodDeclaration;->setReturnType(Lorg/eclipse/jdt/core/dom/Type;)V

    return-object v1

    :cond_5
    sget-object v0, Lorg/eclipse/jdt/core/dom/MethodDeclaration;->RETURN_TYPE2_PROPERTY:Lorg/eclipse/jdt/core/dom/ChildPropertyDescriptor;

    if-ne p1, v0, :cond_7

    if-eqz p2, :cond_6

    invoke-virtual {p0}, Lorg/eclipse/jdt/core/dom/MethodDeclaration;->getReturnType2()Lorg/eclipse/jdt/core/dom/Type;

    move-result-object p1

    return-object p1

    :cond_6
    check-cast p3, Lorg/eclipse/jdt/core/dom/Type;

    invoke-virtual {p0, p3}, Lorg/eclipse/jdt/core/dom/MethodDeclaration;->setReturnType2(Lorg/eclipse/jdt/core/dom/Type;)V

    return-object v1

    :cond_7
    sget-object v0, Lorg/eclipse/jdt/core/dom/MethodDeclaration;->RECEIVER_TYPE_PROPERTY:Lorg/eclipse/jdt/core/dom/ChildPropertyDescriptor;

    if-ne p1, v0, :cond_9

    if-eqz p2, :cond_8

    invoke-virtual {p0}, Lorg/eclipse/jdt/core/dom/MethodDeclaration;->getReceiverType()Lorg/eclipse/jdt/core/dom/Type;

    move-result-object p1

    return-object p1

    :cond_8
    check-cast p3, Lorg/eclipse/jdt/core/dom/Type;

    invoke-virtual {p0, p3}, Lorg/eclipse/jdt/core/dom/MethodDeclaration;->setReceiverType(Lorg/eclipse/jdt/core/dom/Type;)V

    return-object v1

    :cond_9
    sget-object v0, Lorg/eclipse/jdt/core/dom/MethodDeclaration;->RECEIVER_QUALIFIER_PROPERTY:Lorg/eclipse/jdt/core/dom/ChildPropertyDescriptor;

    if-ne p1, v0, :cond_b

    if-eqz p2, :cond_a

    invoke-virtual {p0}, Lorg/eclipse/jdt/core/dom/MethodDeclaration;->getReceiverQualifier()Lorg/eclipse/jdt/core/dom/SimpleName;

    move-result-object p1

    return-object p1

    :cond_a
    check-cast p3, Lorg/eclipse/jdt/core/dom/SimpleName;

    invoke-virtual {p0, p3}, Lorg/eclipse/jdt/core/dom/MethodDeclaration;->setReceiverQualifier(Lorg/eclipse/jdt/core/dom/SimpleName;)V

    return-object v1

    :cond_b
    sget-object v0, Lorg/eclipse/jdt/core/dom/MethodDeclaration;->BODY_PROPERTY:Lorg/eclipse/jdt/core/dom/ChildPropertyDescriptor;

    if-ne p1, v0, :cond_d

    if-eqz p2, :cond_c

    invoke-virtual {p0}, Lorg/eclipse/jdt/core/dom/MethodDeclaration;->getBody()Lorg/eclipse/jdt/core/dom/Block;

    move-result-object p1

    return-object p1

    :cond_c
    check-cast p3, Lorg/eclipse/jdt/core/dom/Block;

    invoke-virtual {p0, p3}, Lorg/eclipse/jdt/core/dom/MethodDeclaration;->setBody(Lorg/eclipse/jdt/core/dom/Block;)V

    return-object v1

    :cond_d
    invoke-super {p0, p1, p2, p3}, Lorg/eclipse/jdt/core/dom/ASTNode;->internalGetSetChildProperty(Lorg/eclipse/jdt/core/dom/ChildPropertyDescriptor;ZLorg/eclipse/jdt/core/dom/ASTNode;)Lorg/eclipse/jdt/core/dom/ASTNode;

    move-result-object p1

    return-object p1
.end method

.method public final internalGetSetIntProperty(Lorg/eclipse/jdt/core/dom/SimplePropertyDescriptor;ZI)I
    .locals 2

    sget-object v0, Lorg/eclipse/jdt/core/dom/MethodDeclaration;->MODIFIERS_PROPERTY:Lorg/eclipse/jdt/core/dom/SimplePropertyDescriptor;

    const/4 v1, 0x0

    if-ne p1, v0, :cond_1

    if-eqz p2, :cond_0

    invoke-virtual {p0}, Lorg/eclipse/jdt/core/dom/BodyDeclaration;->getModifiers()I

    move-result p1

    return p1

    :cond_0
    invoke-virtual {p0, p3}, Lorg/eclipse/jdt/core/dom/BodyDeclaration;->internalSetModifiers(I)V

    return v1

    :cond_1
    sget-object v0, Lorg/eclipse/jdt/core/dom/MethodDeclaration;->EXTRA_DIMENSIONS_PROPERTY:Lorg/eclipse/jdt/core/dom/SimplePropertyDescriptor;

    if-ne p1, v0, :cond_3

    if-eqz p2, :cond_2

    invoke-virtual {p0}, Lorg/eclipse/jdt/core/dom/MethodDeclaration;->getExtraDimensions()I

    move-result p1

    return p1

    :cond_2
    invoke-virtual {p0, p3}, Lorg/eclipse/jdt/core/dom/MethodDeclaration;->setExtraDimensions(I)V

    return v1

    :cond_3
    invoke-super {p0, p1, p2, p3}, Lorg/eclipse/jdt/core/dom/ASTNode;->internalGetSetIntProperty(Lorg/eclipse/jdt/core/dom/SimplePropertyDescriptor;ZI)I

    move-result p1

    return p1
.end method

.method public final internalJavadocProperty()Lorg/eclipse/jdt/core/dom/ChildPropertyDescriptor;
    .locals 1

    sget-object v0, Lorg/eclipse/jdt/core/dom/MethodDeclaration;->JAVADOC_PROPERTY:Lorg/eclipse/jdt/core/dom/ChildPropertyDescriptor;

    return-object v0
.end method

.method public final internalModifiers2Property()Lorg/eclipse/jdt/core/dom/ChildListPropertyDescriptor;
    .locals 1

    sget-object v0, Lorg/eclipse/jdt/core/dom/MethodDeclaration;->MODIFIERS2_PROPERTY:Lorg/eclipse/jdt/core/dom/ChildListPropertyDescriptor;

    return-object v0
.end method

.method public final internalModifiersProperty()Lorg/eclipse/jdt/core/dom/SimplePropertyDescriptor;
    .locals 1

    sget-object v0, Lorg/eclipse/jdt/core/dom/MethodDeclaration;->MODIFIERS_PROPERTY:Lorg/eclipse/jdt/core/dom/SimplePropertyDescriptor;

    return-object v0
.end method

.method public internalSetReturnType(Lorg/eclipse/jdt/core/dom/Type;)V
    .locals 2

    invoke-virtual {p0}, Lorg/eclipse/jdt/core/dom/ASTNode;->supportedOnlyIn2()V

    if-eqz p1, :cond_0

    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/MethodDeclaration;->returnType:Lorg/eclipse/jdt/core/dom/Type;

    sget-object v1, Lorg/eclipse/jdt/core/dom/MethodDeclaration;->RETURN_TYPE_PROPERTY:Lorg/eclipse/jdt/core/dom/ChildPropertyDescriptor;

    invoke-virtual {p0, v0, p1, v1}, Lorg/eclipse/jdt/core/dom/ASTNode;->preReplaceChild(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/ChildPropertyDescriptor;)V

    iput-object p1, p0, Lorg/eclipse/jdt/core/dom/MethodDeclaration;->returnType:Lorg/eclipse/jdt/core/dom/Type;

    invoke-virtual {p0, v0, p1, v1}, Lorg/eclipse/jdt/core/dom/ASTNode;->postReplaceChild(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/ChildPropertyDescriptor;)V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method public final internalStructuralPropertiesForType(I)Ljava/util/List;
    .locals 0

    invoke-static {p1}, Lorg/eclipse/jdt/core/dom/MethodDeclaration;->propertyDescriptors(I)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public internalThrownExceptions()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/MethodDeclaration;->thrownExceptions:Lorg/eclipse/jdt/core/dom/ASTNode$NodeList;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lorg/eclipse/jdt/core/dom/ASTNode;->supportedOnlyIn2_3_4()V

    :cond_0
    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/MethodDeclaration;->thrownExceptions:Lorg/eclipse/jdt/core/dom/ASTNode$NodeList;

    return-object v0
.end method

.method public isConstructor()Z
    .locals 1

    iget-boolean v0, p0, Lorg/eclipse/jdt/core/dom/MethodDeclaration;->isConstructor:Z

    return v0
.end method

.method public isVarargs()Z
    .locals 2

    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/BodyDeclaration;->modifiers:Lorg/eclipse/jdt/core/dom/ASTNode$NodeList;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lorg/eclipse/jdt/core/dom/ASTNode;->unsupportedIn2()V

    :cond_0
    invoke-virtual {p0}, Lorg/eclipse/jdt/core/dom/MethodDeclaration;->parameters()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    return v0

    :cond_1
    invoke-virtual {p0}, Lorg/eclipse/jdt/core/dom/MethodDeclaration;->parameters()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0}, Lorg/eclipse/jdt/core/dom/MethodDeclaration;->parameters()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jdt/core/dom/SingleVariableDeclaration;

    invoke-virtual {v0}, Lorg/eclipse/jdt/core/dom/SingleVariableDeclaration;->isVarargs()Z

    move-result v0

    return v0
.end method

.method public memSize()I
    .locals 1

    invoke-super {p0}, Lorg/eclipse/jdt/core/dom/BodyDeclaration;->memSize()I

    move-result v0

    add-int/lit8 v0, v0, 0x34

    return v0
.end method

.method public parameters()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/MethodDeclaration;->parameters:Lorg/eclipse/jdt/core/dom/ASTNode$NodeList;

    return-object v0
.end method

.method public resolveBinding()Lorg/eclipse/jdt/core/dom/IMethodBinding;
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/ASTNode;->ast:Lorg/eclipse/jdt/core/dom/AST;

    invoke-virtual {v0}, Lorg/eclipse/jdt/core/dom/AST;->getBindingResolver()Lorg/eclipse/jdt/core/dom/BindingResolver;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/eclipse/jdt/core/dom/BindingResolver;->resolveMethod(Lorg/eclipse/jdt/core/dom/MethodDeclaration;)Lorg/eclipse/jdt/core/dom/IMethodBinding;

    move-result-object v0

    return-object v0
.end method

.method public setBody(Lorg/eclipse/jdt/core/dom/Block;)V
    .locals 2

    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/MethodDeclaration;->optionalBody:Lorg/eclipse/jdt/core/dom/Block;

    sget-object v1, Lorg/eclipse/jdt/core/dom/MethodDeclaration;->BODY_PROPERTY:Lorg/eclipse/jdt/core/dom/ChildPropertyDescriptor;

    invoke-virtual {p0, v0, p1, v1}, Lorg/eclipse/jdt/core/dom/ASTNode;->preReplaceChild(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/ChildPropertyDescriptor;)V

    iput-object p1, p0, Lorg/eclipse/jdt/core/dom/MethodDeclaration;->optionalBody:Lorg/eclipse/jdt/core/dom/Block;

    invoke-virtual {p0, v0, p1, v1}, Lorg/eclipse/jdt/core/dom/ASTNode;->postReplaceChild(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/ChildPropertyDescriptor;)V

    return-void
.end method

.method public setConstructor(Z)V
    .locals 1

    sget-object v0, Lorg/eclipse/jdt/core/dom/MethodDeclaration;->CONSTRUCTOR_PROPERTY:Lorg/eclipse/jdt/core/dom/SimplePropertyDescriptor;

    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/core/dom/ASTNode;->preValueChange(Lorg/eclipse/jdt/core/dom/SimplePropertyDescriptor;)V

    iput-boolean p1, p0, Lorg/eclipse/jdt/core/dom/MethodDeclaration;->isConstructor:Z

    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/core/dom/ASTNode;->postValueChange(Lorg/eclipse/jdt/core/dom/SimplePropertyDescriptor;)V

    return-void
.end method

.method public setExtraDimensions(I)V
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/MethodDeclaration;->extraDimensions:Lorg/eclipse/jdt/core/dom/ASTNode$NodeList;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/eclipse/jdt/core/dom/ASTNode;->supportedOnlyIn2_3_4()V

    :cond_0
    if-ltz p1, :cond_1

    sget-object v0, Lorg/eclipse/jdt/core/dom/MethodDeclaration;->EXTRA_DIMENSIONS_PROPERTY:Lorg/eclipse/jdt/core/dom/SimplePropertyDescriptor;

    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/core/dom/ASTNode;->preValueChange(Lorg/eclipse/jdt/core/dom/SimplePropertyDescriptor;)V

    iput p1, p0, Lorg/eclipse/jdt/core/dom/MethodDeclaration;->extraArrayDimensions:I

    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/core/dom/ASTNode;->postValueChange(Lorg/eclipse/jdt/core/dom/SimplePropertyDescriptor;)V

    return-void

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method public setName(Lorg/eclipse/jdt/core/dom/SimpleName;)V
    .locals 2

    if-eqz p1, :cond_0

    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/MethodDeclaration;->methodName:Lorg/eclipse/jdt/core/dom/SimpleName;

    sget-object v1, Lorg/eclipse/jdt/core/dom/MethodDeclaration;->NAME_PROPERTY:Lorg/eclipse/jdt/core/dom/ChildPropertyDescriptor;

    invoke-virtual {p0, v0, p1, v1}, Lorg/eclipse/jdt/core/dom/ASTNode;->preReplaceChild(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/ChildPropertyDescriptor;)V

    iput-object p1, p0, Lorg/eclipse/jdt/core/dom/MethodDeclaration;->methodName:Lorg/eclipse/jdt/core/dom/SimpleName;

    invoke-virtual {p0, v0, p1, v1}, Lorg/eclipse/jdt/core/dom/ASTNode;->postReplaceChild(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/ChildPropertyDescriptor;)V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method public setReceiverQualifier(Lorg/eclipse/jdt/core/dom/SimpleName;)V
    .locals 2

    invoke-virtual {p0}, Lorg/eclipse/jdt/core/dom/ASTNode;->unsupportedIn2_3_4()V

    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/MethodDeclaration;->optionalReceiverQualifier:Lorg/eclipse/jdt/core/dom/SimpleName;

    sget-object v1, Lorg/eclipse/jdt/core/dom/MethodDeclaration;->RECEIVER_QUALIFIER_PROPERTY:Lorg/eclipse/jdt/core/dom/ChildPropertyDescriptor;

    invoke-virtual {p0, v0, p1, v1}, Lorg/eclipse/jdt/core/dom/ASTNode;->preReplaceChild(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/ChildPropertyDescriptor;)V

    iput-object p1, p0, Lorg/eclipse/jdt/core/dom/MethodDeclaration;->optionalReceiverQualifier:Lorg/eclipse/jdt/core/dom/SimpleName;

    invoke-virtual {p0, v0, p1, v1}, Lorg/eclipse/jdt/core/dom/ASTNode;->postReplaceChild(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/ChildPropertyDescriptor;)V

    return-void
.end method

.method public setReceiverType(Lorg/eclipse/jdt/core/dom/Type;)V
    .locals 2

    invoke-virtual {p0}, Lorg/eclipse/jdt/core/dom/ASTNode;->unsupportedIn2_3_4()V

    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/MethodDeclaration;->optionalReceiverType:Lorg/eclipse/jdt/core/dom/Type;

    sget-object v1, Lorg/eclipse/jdt/core/dom/MethodDeclaration;->RECEIVER_TYPE_PROPERTY:Lorg/eclipse/jdt/core/dom/ChildPropertyDescriptor;

    invoke-virtual {p0, v0, p1, v1}, Lorg/eclipse/jdt/core/dom/ASTNode;->preReplaceChild(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/ChildPropertyDescriptor;)V

    iput-object p1, p0, Lorg/eclipse/jdt/core/dom/MethodDeclaration;->optionalReceiverType:Lorg/eclipse/jdt/core/dom/Type;

    invoke-virtual {p0, v0, p1, v1}, Lorg/eclipse/jdt/core/dom/ASTNode;->postReplaceChild(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/ChildPropertyDescriptor;)V

    return-void
.end method

.method public setReturnType(Lorg/eclipse/jdt/core/dom/Type;)V
    .locals 0

    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/core/dom/MethodDeclaration;->internalSetReturnType(Lorg/eclipse/jdt/core/dom/Type;)V

    return-void
.end method

.method public setReturnType2(Lorg/eclipse/jdt/core/dom/Type;)V
    .locals 2

    invoke-virtual {p0}, Lorg/eclipse/jdt/core/dom/ASTNode;->unsupportedIn2()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/eclipse/jdt/core/dom/MethodDeclaration;->returnType2Initialized:Z

    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/MethodDeclaration;->returnType:Lorg/eclipse/jdt/core/dom/Type;

    sget-object v1, Lorg/eclipse/jdt/core/dom/MethodDeclaration;->RETURN_TYPE2_PROPERTY:Lorg/eclipse/jdt/core/dom/ChildPropertyDescriptor;

    invoke-virtual {p0, v0, p1, v1}, Lorg/eclipse/jdt/core/dom/ASTNode;->preReplaceChild(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/ChildPropertyDescriptor;)V

    iput-object p1, p0, Lorg/eclipse/jdt/core/dom/MethodDeclaration;->returnType:Lorg/eclipse/jdt/core/dom/Type;

    invoke-virtual {p0, v0, p1, v1}, Lorg/eclipse/jdt/core/dom/ASTNode;->postReplaceChild(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/ChildPropertyDescriptor;)V

    return-void
.end method

.method public final subtreeMatch0(Lorg/eclipse/jdt/core/dom/ASTMatcher;Ljava/lang/Object;)Z
    .locals 0

    invoke-virtual {p1, p0, p2}, Lorg/eclipse/jdt/core/dom/ASTMatcher;->match(Lorg/eclipse/jdt/core/dom/MethodDeclaration;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public thrownExceptionTypes()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/MethodDeclaration;->thrownExceptionTypes:Lorg/eclipse/jdt/core/dom/ASTNode$NodeList;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lorg/eclipse/jdt/core/dom/ASTNode;->unsupportedIn2_3_4()V

    :cond_0
    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/MethodDeclaration;->thrownExceptionTypes:Lorg/eclipse/jdt/core/dom/ASTNode$NodeList;

    return-object v0
.end method

.method public thrownExceptions()Ljava/util/List;
    .locals 1

    invoke-virtual {p0}, Lorg/eclipse/jdt/core/dom/MethodDeclaration;->internalThrownExceptions()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public treeSize()I
    .locals 4

    invoke-virtual {p0}, Lorg/eclipse/jdt/core/dom/MethodDeclaration;->memSize()I

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

    iget-object v1, p0, Lorg/eclipse/jdt/core/dom/MethodDeclaration;->typeParameters:Lorg/eclipse/jdt/core/dom/ASTNode$NodeList;

    if-nez v1, :cond_2

    move v1, v2

    goto :goto_2

    :cond_2
    invoke-virtual {v1}, Lorg/eclipse/jdt/core/dom/ASTNode$NodeList;->listSize()I

    move-result v1

    :goto_2
    add-int/2addr v0, v1

    iget-object v1, p0, Lorg/eclipse/jdt/core/dom/MethodDeclaration;->methodName:Lorg/eclipse/jdt/core/dom/SimpleName;

    if-nez v1, :cond_3

    move v1, v2

    goto :goto_3

    :cond_3
    invoke-virtual {p0}, Lorg/eclipse/jdt/core/dom/MethodDeclaration;->getName()Lorg/eclipse/jdt/core/dom/SimpleName;

    move-result-object v1

    invoke-virtual {v1}, Lorg/eclipse/jdt/core/dom/SimpleName;->treeSize()I

    move-result v1

    :goto_3
    add-int/2addr v0, v1

    iget-object v1, p0, Lorg/eclipse/jdt/core/dom/MethodDeclaration;->optionalReceiverType:Lorg/eclipse/jdt/core/dom/Type;

    if-nez v1, :cond_4

    move v1, v2

    goto :goto_4

    :cond_4
    invoke-virtual {v1}, Lorg/eclipse/jdt/core/dom/ASTNode;->treeSize()I

    move-result v1

    :goto_4
    add-int/2addr v0, v1

    iget-object v1, p0, Lorg/eclipse/jdt/core/dom/MethodDeclaration;->optionalReceiverQualifier:Lorg/eclipse/jdt/core/dom/SimpleName;

    if-nez v1, :cond_5

    move v1, v2

    goto :goto_5

    :cond_5
    invoke-virtual {v1}, Lorg/eclipse/jdt/core/dom/SimpleName;->treeSize()I

    move-result v1

    :goto_5
    add-int/2addr v0, v1

    iget-object v1, p0, Lorg/eclipse/jdt/core/dom/MethodDeclaration;->returnType:Lorg/eclipse/jdt/core/dom/Type;

    if-nez v1, :cond_6

    move v1, v2

    goto :goto_6

    :cond_6
    invoke-virtual {v1}, Lorg/eclipse/jdt/core/dom/ASTNode;->treeSize()I

    move-result v1

    :goto_6
    add-int/2addr v0, v1

    iget-object v1, p0, Lorg/eclipse/jdt/core/dom/MethodDeclaration;->parameters:Lorg/eclipse/jdt/core/dom/ASTNode$NodeList;

    invoke-virtual {v1}, Lorg/eclipse/jdt/core/dom/ASTNode$NodeList;->listSize()I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lorg/eclipse/jdt/core/dom/ASTNode;->ast:Lorg/eclipse/jdt/core/dom/AST;

    iget v1, v1, Lorg/eclipse/jdt/core/dom/AST;->apiLevel:I

    const/16 v3, 0x8

    if-ge v1, v3, :cond_7

    iget-object v1, p0, Lorg/eclipse/jdt/core/dom/MethodDeclaration;->thrownExceptions:Lorg/eclipse/jdt/core/dom/ASTNode$NodeList;

    invoke-virtual {v1}, Lorg/eclipse/jdt/core/dom/ASTNode$NodeList;->listSize()I

    move-result v1

    goto :goto_7

    :cond_7
    iget-object v1, p0, Lorg/eclipse/jdt/core/dom/MethodDeclaration;->extraDimensions:Lorg/eclipse/jdt/core/dom/ASTNode$NodeList;

    invoke-virtual {v1}, Lorg/eclipse/jdt/core/dom/ASTNode$NodeList;->listSize()I

    move-result v1

    iget-object v3, p0, Lorg/eclipse/jdt/core/dom/MethodDeclaration;->thrownExceptionTypes:Lorg/eclipse/jdt/core/dom/ASTNode$NodeList;

    invoke-virtual {v3}, Lorg/eclipse/jdt/core/dom/ASTNode$NodeList;->listSize()I

    move-result v3

    add-int/2addr v1, v3

    :goto_7
    add-int/2addr v0, v1

    iget-object v1, p0, Lorg/eclipse/jdt/core/dom/MethodDeclaration;->optionalBody:Lorg/eclipse/jdt/core/dom/Block;

    if-nez v1, :cond_8

    goto :goto_8

    :cond_8
    invoke-virtual {p0}, Lorg/eclipse/jdt/core/dom/MethodDeclaration;->getBody()Lorg/eclipse/jdt/core/dom/Block;

    move-result-object v1

    invoke-virtual {v1}, Lorg/eclipse/jdt/core/dom/Block;->treeSize()I

    move-result v2

    :goto_8
    add-int/2addr v0, v2

    return v0
.end method

.method public typeParameters()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/MethodDeclaration;->typeParameters:Lorg/eclipse/jdt/core/dom/ASTNode$NodeList;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lorg/eclipse/jdt/core/dom/ASTNode;->unsupportedIn2()V

    :cond_0
    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/MethodDeclaration;->typeParameters:Lorg/eclipse/jdt/core/dom/ASTNode$NodeList;

    return-object v0
.end method
