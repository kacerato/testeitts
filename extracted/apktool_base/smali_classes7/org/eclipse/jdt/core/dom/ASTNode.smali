.class public abstract Lorg/eclipse/jdt/core/dom/ASTNode;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/eclipse/jdt/core/dom/ASTNode$NodeList;
    }
.end annotation


# static fields
.field public static final ANNOTATION_TYPE_DECLARATION:I = 0x51

.field public static final ANNOTATION_TYPE_MEMBER_DECLARATION:I = 0x52

.field public static final ANONYMOUS_CLASS_DECLARATION:I = 0x1

.field public static final ARRAY_ACCESS:I = 0x2

.field public static final ARRAY_CREATION:I = 0x3

.field public static final ARRAY_INITIALIZER:I = 0x4

.field public static final ARRAY_TYPE:I = 0x5

.field public static final ASSERT_STATEMENT:I = 0x6

.field public static final ASSIGNMENT:I = 0x7

.field static final BASE_NODE_SIZE:I = 0x28

.field public static final BLOCK:I = 0x8

.field public static final BLOCK_COMMENT:I = 0x40

.field public static final BOOLEAN_LITERAL:I = 0x9

.field public static final BREAK_STATEMENT:I = 0xa

.field public static final CAST_EXPRESSION:I = 0xb

.field public static final CATCH_CLAUSE:I = 0xc

.field public static final CHARACTER_LITERAL:I = 0xd

.field public static final CLASS_INSTANCE_CREATION:I = 0xe

.field public static final COMPILATION_UNIT:I = 0xf

.field public static final CONDITIONAL_EXPRESSION:I = 0x10

.field public static final CONSTRUCTOR_INVOCATION:I = 0x11

.field public static final CONTINUE_STATEMENT:I = 0x12

.field public static final CREATION_REFERENCE:I = 0x59

.field static final CYCLE_RISK:Z = true

.field public static final DIMENSION:I = 0x55

.field public static final DO_STATEMENT:I = 0x13

.field public static final EMPTY_STATEMENT:I = 0x14

.field public static final ENHANCED_FOR_STATEMENT:I = 0x46

.field public static final ENUM_CONSTANT_DECLARATION:I = 0x48

.field public static final ENUM_DECLARATION:I = 0x47

.field public static final EXPORTS_DIRECTIVE:I = 0x5f

.field public static final EXPRESSION_METHOD_REFERENCE:I = 0x5a

.field public static final EXPRESSION_STATEMENT:I = 0x15

.field public static final FIELD_ACCESS:I = 0x16

.field public static final FIELD_DECLARATION:I = 0x17

.field public static final FOR_STATEMENT:I = 0x18

.field static final HEADERS:I = 0xc

.field public static final IF_STATEMENT:I = 0x19

.field public static final IMPORT_DECLARATION:I = 0x1a

.field public static final INFIX_EXPRESSION:I = 0x1b

.field public static final INITIALIZER:I = 0x1c

.field public static final INSTANCEOF_EXPRESSION:I = 0x3e

.field public static final INTERSECTION_TYPE:I = 0x57

.field public static final JAVADOC:I = 0x1d

.field public static final LABELED_STATEMENT:I = 0x1e

.field public static final LAMBDA_EXPRESSION:I = 0x56

.field public static final LINE_COMMENT:I = 0x3f

.field public static final MALFORMED:I = 0x1

.field static final MANDATORY:Z = true

.field public static final MARKER_ANNOTATION:I = 0x4e

.field public static final MEMBER_REF:I = 0x43

.field public static final MEMBER_VALUE_PAIR:I = 0x50

.field public static final METHOD_DECLARATION:I = 0x1f

.field public static final METHOD_INVOCATION:I = 0x20

.field public static final METHOD_REF:I = 0x44

.field public static final METHOD_REF_PARAMETER:I = 0x45

.field public static final MODIFIER:I = 0x53

.field public static final MODULE_DECLARATION:I = 0x5d

.field public static final MODULE_MODIFIER:I = 0x63

.field public static final NAME_QUALIFIED_TYPE:I = 0x58

.field public static final NORMAL_ANNOTATION:I = 0x4d

.field static final NO_CYCLE_RISK:Z = false

.field public static final NULL_LITERAL:I = 0x21

.field public static final NUMBER_LITERAL:I = 0x22

.field public static final OPENS_DIRECTIVE:I = 0x60

.field static final OPTIONAL:Z = false

.field public static final ORIGINAL:I = 0x2

.field public static final PACKAGE_DECLARATION:I = 0x23

.field public static final PARAMETERIZED_TYPE:I = 0x4a

.field public static final PARENTHESIZED_EXPRESSION:I = 0x24

.field public static final POSTFIX_EXPRESSION:I = 0x25

.field public static final PREFIX_EXPRESSION:I = 0x26

.field public static final PRIMITIVE_TYPE:I = 0x27

.field public static final PROTECT:I = 0x4

.field public static final PROVIDES_DIRECTIVE:I = 0x62

.field public static final QUALIFIED_NAME:I = 0x28

.field public static final QUALIFIED_TYPE:I = 0x4b

.field public static final RECOVERED:I = 0x8

.field public static final REQUIRES_DIRECTIVE:I = 0x5e

.field public static final RETURN_STATEMENT:I = 0x29

.field public static final SIMPLE_NAME:I = 0x2a

.field public static final SIMPLE_TYPE:I = 0x2b

.field public static final SINGLE_MEMBER_ANNOTATION:I = 0x4f

.field public static final SINGLE_VARIABLE_DECLARATION:I = 0x2c

.field public static final STRING_LITERAL:I = 0x2d

.field public static final SUPER_CONSTRUCTOR_INVOCATION:I = 0x2e

.field public static final SUPER_FIELD_ACCESS:I = 0x2f

.field public static final SUPER_METHOD_INVOCATION:I = 0x30

.field public static final SUPER_METHOD_REFERENCE:I = 0x5b

.field public static final SWITCH_CASE:I = 0x31

.field public static final SWITCH_EXPRESSION:I = 0x64

.field public static final SWITCH_STATEMENT:I = 0x32

.field public static final SYNCHRONIZED_STATEMENT:I = 0x33

.field public static final TAG_ELEMENT:I = 0x41

.field public static final TEXT_ELEMENT:I = 0x42

.field public static final THIS_EXPRESSION:I = 0x34

.field public static final THROW_STATEMENT:I = 0x35

.field public static final TRY_STATEMENT:I = 0x36

.field public static final TYPE_DECLARATION:I = 0x37

.field public static final TYPE_DECLARATION_STATEMENT:I = 0x38

.field public static final TYPE_LITERAL:I = 0x39

.field public static final TYPE_METHOD_REFERENCE:I = 0x5c

.field public static final TYPE_PARAMETER:I = 0x49

.field public static final UNION_TYPE:I = 0x54

.field private static final UNMODIFIABLE_EMPTY_MAP:Ljava/util/Map;

.field public static final USES_DIRECTIVE:I = 0x61

.field public static final VARIABLE_DECLARATION_EXPRESSION:I = 0x3a

.field public static final VARIABLE_DECLARATION_FRAGMENT:I = 0x3b

.field public static final VARIABLE_DECLARATION_STATEMENT:I = 0x3c

.field public static final WHILE_STATEMENT:I = 0x3d

.field public static final WILDCARD_TYPE:I = 0x4c


# instance fields
.field final ast:Lorg/eclipse/jdt/core/dom/AST;

.field private length:I

.field private location:Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;

.field private parent:Lorg/eclipse/jdt/core/dom/ASTNode;

.field private property1:Ljava/lang/Object;

.field private property2:Ljava/lang/Object;

.field private startPosition:I

.field typeAndFlags:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lorg/eclipse/jdt/core/dom/ASTNode;->UNMODIFIABLE_EMPTY_MAP:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(Lorg/eclipse/jdt/core/dom/AST;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/eclipse/jdt/core/dom/ASTNode;->parent:Lorg/eclipse/jdt/core/dom/ASTNode;

    iput-object v0, p0, Lorg/eclipse/jdt/core/dom/ASTNode;->property1:Ljava/lang/Object;

    iput-object v0, p0, Lorg/eclipse/jdt/core/dom/ASTNode;->property2:Ljava/lang/Object;

    const/4 v1, -0x1

    iput v1, p0, Lorg/eclipse/jdt/core/dom/ASTNode;->startPosition:I

    const/4 v1, 0x0

    iput v1, p0, Lorg/eclipse/jdt/core/dom/ASTNode;->length:I

    iput v1, p0, Lorg/eclipse/jdt/core/dom/ASTNode;->typeAndFlags:I

    iput-object v0, p0, Lorg/eclipse/jdt/core/dom/ASTNode;->location:Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;

    if-eqz p1, :cond_0

    iput-object p1, p0, Lorg/eclipse/jdt/core/dom/ASTNode;->ast:Lorg/eclipse/jdt/core/dom/AST;

    invoke-virtual {p0}, Lorg/eclipse/jdt/core/dom/ASTNode;->getNodeType0()I

    move-result v0

    invoke-direct {p0, v0}, Lorg/eclipse/jdt/core/dom/ASTNode;->setNodeType(I)V

    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/AST;->getDefaultNodeFlag()I

    move-result p1

    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/core/dom/ASTNode;->setFlags(I)V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method public static addProperty(Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;Ljava/util/List;)V
    .locals 2

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    invoke-virtual {p0}, Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;->getNodeClass()Ljava/lang/Class;

    move-result-object v1

    if-ne v1, v0, :cond_0

    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "Structural property descriptor has wrong node class!"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static checkNewChild(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/ASTNode;ZLjava/lang/Class;)V
    .locals 2

    iget-object v0, p1, Lorg/eclipse/jdt/core/dom/ASTNode;->ast:Lorg/eclipse/jdt/core/dom/AST;

    iget-object v1, p0, Lorg/eclipse/jdt/core/dom/ASTNode;->ast:Lorg/eclipse/jdt/core/dom/AST;

    if-ne v0, v1, :cond_6

    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/ASTNode;->getParent()Lorg/eclipse/jdt/core/dom/ASTNode;

    move-result-object v0

    if-nez v0, :cond_5

    if-eqz p2, :cond_1

    invoke-virtual {p0}, Lorg/eclipse/jdt/core/dom/ASTNode;->getRoot()Lorg/eclipse/jdt/core/dom/ASTNode;

    move-result-object p0

    if-eq p1, p0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0

    :cond_1
    :goto_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    if-eqz p3, :cond_3

    invoke-virtual {p3, p0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p2

    if-eqz p2, :cond_2

    goto :goto_1

    :cond_2
    new-instance p1, Ljava/lang/ClassCastException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " is not an instance of "

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    :goto_1
    iget p0, p1, Lorg/eclipse/jdt/core/dom/ASTNode;->typeAndFlags:I

    and-int/lit8 p0, p0, 0x4

    if-nez p0, :cond_4

    return-void

    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "AST node cannot be modified"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_5
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0

    :cond_6
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0
.end method

.method public static copySubtree(Lorg/eclipse/jdt/core/dom/AST;Lorg/eclipse/jdt/core/dom/ASTNode;)Lorg/eclipse/jdt/core/dom/ASTNode;
    .locals 2

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    if-eqz p0, :cond_2

    invoke-virtual {p0}, Lorg/eclipse/jdt/core/dom/AST;->apiLevel()I

    move-result v0

    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/ASTNode;->getAST()Lorg/eclipse/jdt/core/dom/AST;

    move-result-object v1

    invoke-virtual {v1}, Lorg/eclipse/jdt/core/dom/AST;->apiLevel()I

    move-result v1

    if-ne v0, v1, :cond_1

    invoke-virtual {p1, p0}, Lorg/eclipse/jdt/core/dom/ASTNode;->clone(Lorg/eclipse/jdt/core/dom/AST;)Lorg/eclipse/jdt/core/dom/ASTNode;

    move-result-object p0

    return-object p0

    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0
.end method

.method public static copySubtrees(Lorg/eclipse/jdt/core/dom/AST;Ljava/util/List;)Ljava/util/List;
    .locals 2

    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_0

    return-object v0

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/eclipse/jdt/core/dom/ASTNode;

    invoke-virtual {v1, p0}, Lorg/eclipse/jdt/core/dom/ASTNode;->clone(Lorg/eclipse/jdt/core/dom/AST;)Lorg/eclipse/jdt/core/dom/ASTNode;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public static createPropertyList(Ljava/lang/Class;Ljava/util/List;)V
    .locals 0

    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static nodeClassForType(I)Ljava/lang/Class;
    .locals 0

    packed-switch p0, :pswitch_data_0

    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0

    :pswitch_0
    const-class p0, Lorg/eclipse/jdt/core/dom/SwitchExpression;

    return-object p0

    :pswitch_1
    const-class p0, Lorg/eclipse/jdt/core/dom/ModuleModifier;

    return-object p0

    :pswitch_2
    const-class p0, Lorg/eclipse/jdt/core/dom/ProvidesDirective;

    return-object p0

    :pswitch_3
    const-class p0, Lorg/eclipse/jdt/core/dom/UsesDirective;

    return-object p0

    :pswitch_4
    const-class p0, Lorg/eclipse/jdt/core/dom/OpensDirective;

    return-object p0

    :pswitch_5
    const-class p0, Lorg/eclipse/jdt/core/dom/ExportsDirective;

    return-object p0

    :pswitch_6
    const-class p0, Lorg/eclipse/jdt/core/dom/RequiresDirective;

    return-object p0

    :pswitch_7
    const-class p0, Lorg/eclipse/jdt/core/dom/ModuleDeclaration;

    return-object p0

    :pswitch_8
    const-class p0, Lorg/eclipse/jdt/core/dom/TypeMethodReference;

    return-object p0

    :pswitch_9
    const-class p0, Lorg/eclipse/jdt/core/dom/SuperMethodReference;

    return-object p0

    :pswitch_a
    const-class p0, Lorg/eclipse/jdt/core/dom/ExpressionMethodReference;

    return-object p0

    :pswitch_b
    const-class p0, Lorg/eclipse/jdt/core/dom/CreationReference;

    return-object p0

    :pswitch_c
    const-class p0, Lorg/eclipse/jdt/core/dom/NameQualifiedType;

    return-object p0

    :pswitch_d
    const-class p0, Lorg/eclipse/jdt/core/dom/IntersectionType;

    return-object p0

    :pswitch_e
    const-class p0, Lorg/eclipse/jdt/core/dom/LambdaExpression;

    return-object p0

    :pswitch_f
    const-class p0, Lorg/eclipse/jdt/core/dom/Dimension;

    return-object p0

    :pswitch_10
    const-class p0, Lorg/eclipse/jdt/core/dom/UnionType;

    return-object p0

    :pswitch_11
    const-class p0, Lorg/eclipse/jdt/core/dom/Modifier;

    return-object p0

    :pswitch_12
    const-class p0, Lorg/eclipse/jdt/core/dom/AnnotationTypeMemberDeclaration;

    return-object p0

    :pswitch_13
    const-class p0, Lorg/eclipse/jdt/core/dom/AnnotationTypeDeclaration;

    return-object p0

    :pswitch_14
    const-class p0, Lorg/eclipse/jdt/core/dom/MemberValuePair;

    return-object p0

    :pswitch_15
    const-class p0, Lorg/eclipse/jdt/core/dom/SingleMemberAnnotation;

    return-object p0

    :pswitch_16
    const-class p0, Lorg/eclipse/jdt/core/dom/MarkerAnnotation;

    return-object p0

    :pswitch_17
    const-class p0, Lorg/eclipse/jdt/core/dom/NormalAnnotation;

    return-object p0

    :pswitch_18
    const-class p0, Lorg/eclipse/jdt/core/dom/WildcardType;

    return-object p0

    :pswitch_19
    const-class p0, Lorg/eclipse/jdt/core/dom/QualifiedType;

    return-object p0

    :pswitch_1a
    const-class p0, Lorg/eclipse/jdt/core/dom/ParameterizedType;

    return-object p0

    :pswitch_1b
    const-class p0, Lorg/eclipse/jdt/core/dom/TypeParameter;

    return-object p0

    :pswitch_1c
    const-class p0, Lorg/eclipse/jdt/core/dom/EnumConstantDeclaration;

    return-object p0

    :pswitch_1d
    const-class p0, Lorg/eclipse/jdt/core/dom/EnumDeclaration;

    return-object p0

    :pswitch_1e
    const-class p0, Lorg/eclipse/jdt/core/dom/EnhancedForStatement;

    return-object p0

    :pswitch_1f
    const-class p0, Lorg/eclipse/jdt/core/dom/MethodRefParameter;

    return-object p0

    :pswitch_20
    const-class p0, Lorg/eclipse/jdt/core/dom/MethodRef;

    return-object p0

    :pswitch_21
    const-class p0, Lorg/eclipse/jdt/core/dom/MemberRef;

    return-object p0

    :pswitch_22
    const-class p0, Lorg/eclipse/jdt/core/dom/TextElement;

    return-object p0

    :pswitch_23
    const-class p0, Lorg/eclipse/jdt/core/dom/TagElement;

    return-object p0

    :pswitch_24
    const-class p0, Lorg/eclipse/jdt/core/dom/BlockComment;

    return-object p0

    :pswitch_25
    const-class p0, Lorg/eclipse/jdt/core/dom/LineComment;

    return-object p0

    :pswitch_26
    const-class p0, Lorg/eclipse/jdt/core/dom/InstanceofExpression;

    return-object p0

    :pswitch_27
    const-class p0, Lorg/eclipse/jdt/core/dom/WhileStatement;

    return-object p0

    :pswitch_28
    const-class p0, Lorg/eclipse/jdt/core/dom/VariableDeclarationStatement;

    return-object p0

    :pswitch_29
    const-class p0, Lorg/eclipse/jdt/core/dom/VariableDeclarationFragment;

    return-object p0

    :pswitch_2a
    const-class p0, Lorg/eclipse/jdt/core/dom/VariableDeclarationExpression;

    return-object p0

    :pswitch_2b
    const-class p0, Lorg/eclipse/jdt/core/dom/TypeLiteral;

    return-object p0

    :pswitch_2c
    const-class p0, Lorg/eclipse/jdt/core/dom/TypeDeclarationStatement;

    return-object p0

    :pswitch_2d
    const-class p0, Lorg/eclipse/jdt/core/dom/TypeDeclaration;

    return-object p0

    :pswitch_2e
    const-class p0, Lorg/eclipse/jdt/core/dom/TryStatement;

    return-object p0

    :pswitch_2f
    const-class p0, Lorg/eclipse/jdt/core/dom/ThrowStatement;

    return-object p0

    :pswitch_30
    const-class p0, Lorg/eclipse/jdt/core/dom/ThisExpression;

    return-object p0

    :pswitch_31
    const-class p0, Lorg/eclipse/jdt/core/dom/SynchronizedStatement;

    return-object p0

    :pswitch_32
    const-class p0, Lorg/eclipse/jdt/core/dom/SwitchStatement;

    return-object p0

    :pswitch_33
    const-class p0, Lorg/eclipse/jdt/core/dom/SwitchCase;

    return-object p0

    :pswitch_34
    const-class p0, Lorg/eclipse/jdt/core/dom/SuperMethodInvocation;

    return-object p0

    :pswitch_35
    const-class p0, Lorg/eclipse/jdt/core/dom/SuperFieldAccess;

    return-object p0

    :pswitch_36
    const-class p0, Lorg/eclipse/jdt/core/dom/SuperConstructorInvocation;

    return-object p0

    :pswitch_37
    const-class p0, Lorg/eclipse/jdt/core/dom/StringLiteral;

    return-object p0

    :pswitch_38
    const-class p0, Lorg/eclipse/jdt/core/dom/SingleVariableDeclaration;

    return-object p0

    :pswitch_39
    const-class p0, Lorg/eclipse/jdt/core/dom/SimpleType;

    return-object p0

    :pswitch_3a
    const-class p0, Lorg/eclipse/jdt/core/dom/SimpleName;

    return-object p0

    :pswitch_3b
    const-class p0, Lorg/eclipse/jdt/core/dom/ReturnStatement;

    return-object p0

    :pswitch_3c
    const-class p0, Lorg/eclipse/jdt/core/dom/QualifiedName;

    return-object p0

    :pswitch_3d
    const-class p0, Lorg/eclipse/jdt/core/dom/PrimitiveType;

    return-object p0

    :pswitch_3e
    const-class p0, Lorg/eclipse/jdt/core/dom/PrefixExpression;

    return-object p0

    :pswitch_3f
    const-class p0, Lorg/eclipse/jdt/core/dom/PostfixExpression;

    return-object p0

    :pswitch_40
    const-class p0, Lorg/eclipse/jdt/core/dom/ParenthesizedExpression;

    return-object p0

    :pswitch_41
    const-class p0, Lorg/eclipse/jdt/core/dom/PackageDeclaration;

    return-object p0

    :pswitch_42
    const-class p0, Lorg/eclipse/jdt/core/dom/NumberLiteral;

    return-object p0

    :pswitch_43
    const-class p0, Lorg/eclipse/jdt/core/dom/NullLiteral;

    return-object p0

    :pswitch_44
    const-class p0, Lorg/eclipse/jdt/core/dom/MethodInvocation;

    return-object p0

    :pswitch_45
    const-class p0, Lorg/eclipse/jdt/core/dom/MethodDeclaration;

    return-object p0

    :pswitch_46
    const-class p0, Lorg/eclipse/jdt/core/dom/LabeledStatement;

    return-object p0

    :pswitch_47
    const-class p0, Lorg/eclipse/jdt/core/dom/Javadoc;

    return-object p0

    :pswitch_48
    const-class p0, Lorg/eclipse/jdt/core/dom/Initializer;

    return-object p0

    :pswitch_49
    const-class p0, Lorg/eclipse/jdt/core/dom/InfixExpression;

    return-object p0

    :pswitch_4a
    const-class p0, Lorg/eclipse/jdt/core/dom/ImportDeclaration;

    return-object p0

    :pswitch_4b
    const-class p0, Lorg/eclipse/jdt/core/dom/IfStatement;

    return-object p0

    :pswitch_4c
    const-class p0, Lorg/eclipse/jdt/core/dom/ForStatement;

    return-object p0

    :pswitch_4d
    const-class p0, Lorg/eclipse/jdt/core/dom/FieldDeclaration;

    return-object p0

    :pswitch_4e
    const-class p0, Lorg/eclipse/jdt/core/dom/FieldAccess;

    return-object p0

    :pswitch_4f
    const-class p0, Lorg/eclipse/jdt/core/dom/ExpressionStatement;

    return-object p0

    :pswitch_50
    const-class p0, Lorg/eclipse/jdt/core/dom/EmptyStatement;

    return-object p0

    :pswitch_51
    const-class p0, Lorg/eclipse/jdt/core/dom/DoStatement;

    return-object p0

    :pswitch_52
    const-class p0, Lorg/eclipse/jdt/core/dom/ContinueStatement;

    return-object p0

    :pswitch_53
    const-class p0, Lorg/eclipse/jdt/core/dom/ConstructorInvocation;

    return-object p0

    :pswitch_54
    const-class p0, Lorg/eclipse/jdt/core/dom/ConditionalExpression;

    return-object p0

    :pswitch_55
    const-class p0, Lorg/eclipse/jdt/core/dom/CompilationUnit;

    return-object p0

    :pswitch_56
    const-class p0, Lorg/eclipse/jdt/core/dom/ClassInstanceCreation;

    return-object p0

    :pswitch_57
    const-class p0, Lorg/eclipse/jdt/core/dom/CharacterLiteral;

    return-object p0

    :pswitch_58
    const-class p0, Lorg/eclipse/jdt/core/dom/CatchClause;

    return-object p0

    :pswitch_59
    const-class p0, Lorg/eclipse/jdt/core/dom/CastExpression;

    return-object p0

    :pswitch_5a
    const-class p0, Lorg/eclipse/jdt/core/dom/BreakStatement;

    return-object p0

    :pswitch_5b
    const-class p0, Lorg/eclipse/jdt/core/dom/BooleanLiteral;

    return-object p0

    :pswitch_5c
    const-class p0, Lorg/eclipse/jdt/core/dom/Block;

    return-object p0

    :pswitch_5d
    const-class p0, Lorg/eclipse/jdt/core/dom/Assignment;

    return-object p0

    :pswitch_5e
    const-class p0, Lorg/eclipse/jdt/core/dom/AssertStatement;

    return-object p0

    :pswitch_5f
    const-class p0, Lorg/eclipse/jdt/core/dom/ArrayType;

    return-object p0

    :pswitch_60
    const-class p0, Lorg/eclipse/jdt/core/dom/ArrayInitializer;

    return-object p0

    :pswitch_61
    const-class p0, Lorg/eclipse/jdt/core/dom/ArrayCreation;

    return-object p0

    :pswitch_62
    const-class p0, Lorg/eclipse/jdt/core/dom/ArrayAccess;

    return-object p0

    :pswitch_63
    const-class p0, Lorg/eclipse/jdt/core/dom/AnonymousClassDeclaration;

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_63
        :pswitch_62
        :pswitch_61
        :pswitch_60
        :pswitch_5f
        :pswitch_5e
        :pswitch_5d
        :pswitch_5c
        :pswitch_5b
        :pswitch_5a
        :pswitch_59
        :pswitch_58
        :pswitch_57
        :pswitch_56
        :pswitch_55
        :pswitch_54
        :pswitch_53
        :pswitch_52
        :pswitch_51
        :pswitch_50
        :pswitch_4f
        :pswitch_4e
        :pswitch_4d
        :pswitch_4c
        :pswitch_4b
        :pswitch_4a
        :pswitch_49
        :pswitch_48
        :pswitch_47
        :pswitch_46
        :pswitch_45
        :pswitch_44
        :pswitch_43
        :pswitch_42
        :pswitch_41
        :pswitch_40
        :pswitch_3f
        :pswitch_3e
        :pswitch_3d
        :pswitch_3c
        :pswitch_3b
        :pswitch_3a
        :pswitch_39
        :pswitch_38
        :pswitch_37
        :pswitch_36
        :pswitch_35
        :pswitch_34
        :pswitch_33
        :pswitch_32
        :pswitch_31
        :pswitch_30
        :pswitch_2f
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static reapPropertyList(Ljava/util/List;)Ljava/util/List;
    .locals 2

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method private setNodeType(I)V
    .locals 2

    iget v0, p0, Lorg/eclipse/jdt/core/dom/ASTNode;->typeAndFlags:I

    const/high16 v1, -0x10000

    and-int/2addr v0, v1

    shl-int/lit8 p1, p1, 0x10

    or-int/2addr p1, v0

    iput p1, p0, Lorg/eclipse/jdt/core/dom/ASTNode;->typeAndFlags:I

    return-void
.end method

.method public static stringSize(Ljava/lang/String;)I
    .locals 0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    mul-int/lit8 p0, p0, 0x2

    add-int/lit8 p0, p0, 0x28

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method public final accept(Lorg/eclipse/jdt/core/dom/ASTVisitor;)V
    .locals 1

    if-eqz p1, :cond_1

    invoke-virtual {p1, p0}, Lorg/eclipse/jdt/core/dom/ASTVisitor;->preVisit2(Lorg/eclipse/jdt/core/dom/ASTNode;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/core/dom/ASTNode;->accept0(Lorg/eclipse/jdt/core/dom/ASTVisitor;)V

    :cond_0
    invoke-virtual {p1, p0}, Lorg/eclipse/jdt/core/dom/ASTVisitor;->postVisit(Lorg/eclipse/jdt/core/dom/ASTNode;)V

    return-void

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method public abstract accept0(Lorg/eclipse/jdt/core/dom/ASTVisitor;)V
.end method

.method public final acceptChild(Lorg/eclipse/jdt/core/dom/ASTVisitor;Lorg/eclipse/jdt/core/dom/ASTNode;)V
    .locals 0

    if-nez p2, :cond_0

    return-void

    :cond_0
    invoke-virtual {p2, p1}, Lorg/eclipse/jdt/core/dom/ASTNode;->accept(Lorg/eclipse/jdt/core/dom/ASTVisitor;)V

    return-void
.end method

.method public final acceptChildren(Lorg/eclipse/jdt/core/dom/ASTVisitor;Lorg/eclipse/jdt/core/dom/ASTNode$NodeList;)V
    .locals 2

    invoke-virtual {p2}, Lorg/eclipse/jdt/core/dom/ASTNode$NodeList;->newCursor()Lorg/eclipse/jdt/core/dom/ASTNode$NodeList$Cursor;

    move-result-object v0

    :goto_0
    :try_start_0
    invoke-virtual {v0}, Lorg/eclipse/jdt/core/dom/ASTNode$NodeList$Cursor;->hasNext()Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    invoke-virtual {p2, v0}, Lorg/eclipse/jdt/core/dom/ASTNode$NodeList;->releaseCursor(Lorg/eclipse/jdt/core/dom/ASTNode$NodeList$Cursor;)V

    return-void

    :cond_0
    :try_start_1
    invoke-virtual {v0}, Lorg/eclipse/jdt/core/dom/ASTNode$NodeList$Cursor;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/eclipse/jdt/core/dom/ASTNode;

    invoke-virtual {v1, p1}, Lorg/eclipse/jdt/core/dom/ASTNode;->accept(Lorg/eclipse/jdt/core/dom/ASTVisitor;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    invoke-virtual {p2, v0}, Lorg/eclipse/jdt/core/dom/ASTNode$NodeList;->releaseCursor(Lorg/eclipse/jdt/core/dom/ASTNode$NodeList$Cursor;)V

    throw p1
.end method

.method public appendDebugString(Ljava/lang/StringBuffer;)V
    .locals 0

    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/core/dom/ASTNode;->appendPrintString(Ljava/lang/StringBuffer;)V

    return-void
.end method

.method public final appendPrintString(Ljava/lang/StringBuffer;)V
    .locals 1

    new-instance v0, Lorg/eclipse/jdt/internal/core/dom/NaiveASTFlattener;

    invoke-direct {v0}, Lorg/eclipse/jdt/internal/core/dom/NaiveASTFlattener;-><init>()V

    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/core/dom/ASTNode;->accept(Lorg/eclipse/jdt/core/dom/ASTVisitor;)V

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/core/dom/NaiveASTFlattener;->getResult()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    return-void
.end method

.method public final checkModifiable()V
    .locals 2

    iget v0, p0, Lorg/eclipse/jdt/core/dom/ASTNode;->typeAndFlags:I

    and-int/lit8 v0, v0, 0x4

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/ASTNode;->ast:Lorg/eclipse/jdt/core/dom/AST;

    invoke-virtual {v0}, Lorg/eclipse/jdt/core/dom/AST;->modifying()V

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "AST node cannot be modified"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final clone(Lorg/eclipse/jdt/core/dom/AST;)Lorg/eclipse/jdt/core/dom/ASTNode;
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/ASTNode;->ast:Lorg/eclipse/jdt/core/dom/AST;

    invoke-virtual {v0, p0}, Lorg/eclipse/jdt/core/dom/AST;->preCloneNodeEvent(Lorg/eclipse/jdt/core/dom/ASTNode;)V

    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/core/dom/ASTNode;->clone0(Lorg/eclipse/jdt/core/dom/AST;)Lorg/eclipse/jdt/core/dom/ASTNode;

    move-result-object p1

    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/ASTNode;->ast:Lorg/eclipse/jdt/core/dom/AST;

    invoke-virtual {v0, p0, p1}, Lorg/eclipse/jdt/core/dom/AST;->postCloneNodeEvent(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/ASTNode;)V

    return-object p1
.end method

.method public abstract clone0(Lorg/eclipse/jdt/core/dom/AST;)Lorg/eclipse/jdt/core/dom/ASTNode;
.end method

.method public final delete()V
    .locals 3

    invoke-virtual {p0}, Lorg/eclipse/jdt/core/dom/ASTNode;->getLocationInParent()Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;->isChildProperty()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lorg/eclipse/jdt/core/dom/ASTNode;->getParent()Lorg/eclipse/jdt/core/dom/ASTNode;

    move-result-object v0

    iget-object v1, p0, Lorg/eclipse/jdt/core/dom/ASTNode;->location:Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/eclipse/jdt/core/dom/ASTNode;->setStructuralProperty(Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;Ljava/lang/Object;)V

    return-void

    :cond_1
    invoke-virtual {v0}, Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;->isChildListProperty()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lorg/eclipse/jdt/core/dom/ASTNode;->getParent()Lorg/eclipse/jdt/core/dom/ASTNode;

    move-result-object v0

    iget-object v1, p0, Lorg/eclipse/jdt/core/dom/ASTNode;->location:Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;

    invoke-virtual {v0, v1}, Lorg/eclipse/jdt/core/dom/ASTNode;->getStructuralProperty(Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_2
    return-void
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 0

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final getAST()Lorg/eclipse/jdt/core/dom/AST;
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/ASTNode;->ast:Lorg/eclipse/jdt/core/dom/AST;

    return-object v0
.end method

.method public final getFlags()I
    .locals 2

    iget v0, p0, Lorg/eclipse/jdt/core/dom/ASTNode;->typeAndFlags:I

    const v1, 0xffff

    and-int/2addr v0, v1

    return v0
.end method

.method public final getLength()I
    .locals 1

    iget v0, p0, Lorg/eclipse/jdt/core/dom/ASTNode;->length:I

    return v0
.end method

.method public final getLocationInParent()Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/ASTNode;->location:Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;

    return-object v0
.end method

.method public final getNodeType()I
    .locals 1

    iget v0, p0, Lorg/eclipse/jdt/core/dom/ASTNode;->typeAndFlags:I

    ushr-int/lit8 v0, v0, 0x10

    return v0
.end method

.method public abstract getNodeType0()I
.end method

.method public final getParent()Lorg/eclipse/jdt/core/dom/ASTNode;
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/ASTNode;->parent:Lorg/eclipse/jdt/core/dom/ASTNode;

    return-object v0
.end method

.method public final getProperty(Ljava/lang/String;)Ljava/lang/Object;
    .locals 3

    if-eqz p1, :cond_3

    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/ASTNode;->property1:Ljava/lang/Object;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    instance-of v2, v0, Ljava/lang/String;

    if-eqz v2, :cond_2

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lorg/eclipse/jdt/core/dom/ASTNode;->property2:Ljava/lang/Object;

    return-object p1

    :cond_1
    return-object v1

    :cond_2
    check-cast v0, Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method public final getRoot()Lorg/eclipse/jdt/core/dom/ASTNode;
    .locals 2

    move-object v0, p0

    :goto_0
    invoke-virtual {v0}, Lorg/eclipse/jdt/core/dom/ASTNode;->getParent()Lorg/eclipse/jdt/core/dom/ASTNode;

    move-result-object v1

    if-nez v1, :cond_0

    return-object v0

    :cond_0
    move-object v0, v1

    goto :goto_0
.end method

.method public final getStartPosition()I
    .locals 1

    iget v0, p0, Lorg/eclipse/jdt/core/dom/ASTNode;->startPosition:I

    return v0
.end method

.method public final getStructuralProperty(Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;)Ljava/lang/Object;
    .locals 5

    instance-of v0, p1, Lorg/eclipse/jdt/core/dom/SimplePropertyDescriptor;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    check-cast p1, Lorg/eclipse/jdt/core/dom/SimplePropertyDescriptor;

    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/SimplePropertyDescriptor;->getValueType()Ljava/lang/Class;

    move-result-object v0

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v4, 0x0

    if-ne v0, v3, :cond_0

    invoke-virtual {p0, p1, v2, v4}, Lorg/eclipse/jdt/core/dom/ASTNode;->internalGetSetIntProperty(Lorg/eclipse/jdt/core/dom/SimplePropertyDescriptor;ZI)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/SimplePropertyDescriptor;->getValueType()Ljava/lang/Class;

    move-result-object v0

    sget-object v3, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-ne v0, v3, :cond_1

    invoke-virtual {p0, p1, v2, v4}, Lorg/eclipse/jdt/core/dom/ASTNode;->internalGetSetBooleanProperty(Lorg/eclipse/jdt/core/dom/SimplePropertyDescriptor;ZZ)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    :cond_1
    invoke-virtual {p0, p1, v2, v1}, Lorg/eclipse/jdt/core/dom/ASTNode;->internalGetSetObjectProperty(Lorg/eclipse/jdt/core/dom/SimplePropertyDescriptor;ZLjava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_2
    instance-of v0, p1, Lorg/eclipse/jdt/core/dom/ChildPropertyDescriptor;

    if-eqz v0, :cond_3

    check-cast p1, Lorg/eclipse/jdt/core/dom/ChildPropertyDescriptor;

    invoke-virtual {p0, p1, v2, v1}, Lorg/eclipse/jdt/core/dom/ASTNode;->internalGetSetChildProperty(Lorg/eclipse/jdt/core/dom/ChildPropertyDescriptor;ZLorg/eclipse/jdt/core/dom/ASTNode;)Lorg/eclipse/jdt/core/dom/ASTNode;

    move-result-object p1

    return-object p1

    :cond_3
    instance-of v0, p1, Lorg/eclipse/jdt/core/dom/ChildListPropertyDescriptor;

    if-eqz v0, :cond_4

    check-cast p1, Lorg/eclipse/jdt/core/dom/ChildListPropertyDescriptor;

    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/core/dom/ASTNode;->internalGetChildListProperty(Lorg/eclipse/jdt/core/dom/ChildListPropertyDescriptor;)Ljava/util/List;

    move-result-object p1

    return-object p1

    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method public final hashCode()I
    .locals 1

    invoke-super {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public internalGetChildListProperty(Lorg/eclipse/jdt/core/dom/ChildListPropertyDescriptor;)Ljava/util/List;
    .locals 1

    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "Node does not have this property"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public internalGetSetBooleanProperty(Lorg/eclipse/jdt/core/dom/SimplePropertyDescriptor;ZZ)Z
    .locals 0

    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Node does not have this property"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public internalGetSetChildProperty(Lorg/eclipse/jdt/core/dom/ChildPropertyDescriptor;ZLorg/eclipse/jdt/core/dom/ASTNode;)Lorg/eclipse/jdt/core/dom/ASTNode;
    .locals 0

    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Node does not have this property"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public internalGetSetIntProperty(Lorg/eclipse/jdt/core/dom/SimplePropertyDescriptor;ZI)I
    .locals 0

    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Node does not have this property"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public internalGetSetObjectProperty(Lorg/eclipse/jdt/core/dom/SimplePropertyDescriptor;ZLjava/lang/Object;)Ljava/lang/Object;
    .locals 0

    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Node does not have this property"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public abstract internalStructuralPropertiesForType(I)Ljava/util/List;
.end method

.method public abstract memSize()I
.end method

.method public final postLazyInit(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/ChildPropertyDescriptor;)V
    .locals 0

    invoke-virtual {p1, p0, p2}, Lorg/eclipse/jdt/core/dom/ASTNode;->setParent(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;)V

    iget-object p1, p0, Lorg/eclipse/jdt/core/dom/ASTNode;->ast:Lorg/eclipse/jdt/core/dom/AST;

    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/AST;->reenableEvents()V

    return-void
.end method

.method public final postReplaceChild(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/ChildPropertyDescriptor;)V
    .locals 1

    if-eqz p2, :cond_1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/ASTNode;->ast:Lorg/eclipse/jdt/core/dom/AST;

    invoke-virtual {v0, p0, p1, p2, p3}, Lorg/eclipse/jdt/core/dom/AST;->postReplaceChildEvent(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lorg/eclipse/jdt/core/dom/ASTNode;->ast:Lorg/eclipse/jdt/core/dom/AST;

    invoke-virtual {p1, p0, p2, p3}, Lorg/eclipse/jdt/core/dom/AST;->postAddChildEvent(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;)V

    goto :goto_0

    :cond_1
    iget-object p2, p0, Lorg/eclipse/jdt/core/dom/ASTNode;->ast:Lorg/eclipse/jdt/core/dom/AST;

    invoke-virtual {p2, p0, p1, p3}, Lorg/eclipse/jdt/core/dom/AST;->postRemoveChildEvent(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;)V

    :goto_0
    return-void
.end method

.method public final postValueChange(Lorg/eclipse/jdt/core/dom/SimplePropertyDescriptor;)V
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/ASTNode;->ast:Lorg/eclipse/jdt/core/dom/AST;

    invoke-virtual {v0, p0, p1}, Lorg/eclipse/jdt/core/dom/AST;->postValueChangeEvent(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/SimplePropertyDescriptor;)V

    return-void
.end method

.method public final preLazyInit()V
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/ASTNode;->ast:Lorg/eclipse/jdt/core/dom/AST;

    invoke-virtual {v0}, Lorg/eclipse/jdt/core/dom/AST;->disableEvents()V

    return-void
.end method

.method public final preReplaceChild(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/ChildPropertyDescriptor;)V
    .locals 3

    iget v0, p0, Lorg/eclipse/jdt/core/dom/ASTNode;->typeAndFlags:I

    and-int/lit8 v0, v0, 0x4

    const-string v1, "AST node cannot be modified"

    if-nez v0, :cond_6

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    iget-boolean v2, p3, Lorg/eclipse/jdt/core/dom/ChildPropertyDescriptor;->cycleRisk:Z

    invoke-static {p0, p2, v2, v0}, Lorg/eclipse/jdt/core/dom/ASTNode;->checkNewChild(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/ASTNode;ZLjava/lang/Class;)V

    :cond_0
    if-eqz p1, :cond_3

    iget v2, p1, Lorg/eclipse/jdt/core/dom/ASTNode;->typeAndFlags:I

    and-int/lit8 v2, v2, 0x4

    if-nez v2, :cond_2

    if-eqz p2, :cond_1

    iget-object v1, p0, Lorg/eclipse/jdt/core/dom/ASTNode;->ast:Lorg/eclipse/jdt/core/dom/AST;

    invoke-virtual {v1, p0, p1, p2, p3}, Lorg/eclipse/jdt/core/dom/AST;->preReplaceChildEvent(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;)V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lorg/eclipse/jdt/core/dom/ASTNode;->ast:Lorg/eclipse/jdt/core/dom/AST;

    invoke-virtual {v1, p0, p1, p3}, Lorg/eclipse/jdt/core/dom/AST;->preRemoveChildEvent(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;)V

    :goto_0
    invoke-virtual {p1, v0, v0}, Lorg/eclipse/jdt/core/dom/ASTNode;->setParent(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;)V

    goto :goto_1

    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    if-eqz p2, :cond_4

    iget-object p1, p0, Lorg/eclipse/jdt/core/dom/ASTNode;->ast:Lorg/eclipse/jdt/core/dom/AST;

    invoke-virtual {p1, p0, p2, p3}, Lorg/eclipse/jdt/core/dom/AST;->preAddChildEvent(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;)V

    :cond_4
    :goto_1
    if-eqz p2, :cond_5

    invoke-virtual {p2, p0, p3}, Lorg/eclipse/jdt/core/dom/ASTNode;->setParent(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;)V

    :cond_5
    return-void

    :cond_6
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final preValueChange(Lorg/eclipse/jdt/core/dom/SimplePropertyDescriptor;)V
    .locals 1

    iget v0, p0, Lorg/eclipse/jdt/core/dom/ASTNode;->typeAndFlags:I

    and-int/lit8 v0, v0, 0x4

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/ASTNode;->ast:Lorg/eclipse/jdt/core/dom/AST;

    invoke-virtual {v0, p0, p1}, Lorg/eclipse/jdt/core/dom/AST;->preValueChangeEvent(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/SimplePropertyDescriptor;)V

    iget-object p1, p0, Lorg/eclipse/jdt/core/dom/ASTNode;->ast:Lorg/eclipse/jdt/core/dom/AST;

    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/AST;->modifying()V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "AST node cannot be modified"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final properties()Ljava/util/Map;
    .locals 2

    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/ASTNode;->property1:Ljava/lang/Object;

    if-nez v0, :cond_0

    sget-object v0, Lorg/eclipse/jdt/core/dom/ASTNode;->UNMODIFIABLE_EMPTY_MAP:Ljava/util/Map;

    return-object v0

    :cond_0
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lorg/eclipse/jdt/core/dom/ASTNode;->property2:Ljava/lang/Object;

    invoke-static {v0, v1}, Ljava/util/Collections;->singletonMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v0

    return-object v0

    :cond_1
    iget-object v1, p0, Lorg/eclipse/jdt/core/dom/ASTNode;->property2:Ljava/lang/Object;

    if-nez v1, :cond_2

    check-cast v0, Ljava/util/Map;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lorg/eclipse/jdt/core/dom/ASTNode;->property2:Ljava/lang/Object;

    :cond_2
    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/ASTNode;->property2:Ljava/lang/Object;

    check-cast v0, Ljava/util/Map;

    return-object v0
.end method

.method public final setFlags(I)V
    .locals 2

    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/ASTNode;->ast:Lorg/eclipse/jdt/core/dom/AST;

    invoke-virtual {v0}, Lorg/eclipse/jdt/core/dom/AST;->modifying()V

    iget v0, p0, Lorg/eclipse/jdt/core/dom/ASTNode;->typeAndFlags:I

    const/high16 v1, -0x10000

    and-int/2addr v0, v1

    const v1, 0xffff

    and-int/2addr p1, v1

    or-int/2addr p1, v0

    iput p1, p0, Lorg/eclipse/jdt/core/dom/ASTNode;->typeAndFlags:I

    return-void
.end method

.method public final setParent(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;)V
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/ASTNode;->ast:Lorg/eclipse/jdt/core/dom/AST;

    invoke-virtual {v0}, Lorg/eclipse/jdt/core/dom/AST;->modifying()V

    iput-object p1, p0, Lorg/eclipse/jdt/core/dom/ASTNode;->parent:Lorg/eclipse/jdt/core/dom/ASTNode;

    iput-object p2, p0, Lorg/eclipse/jdt/core/dom/ASTNode;->location:Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;

    return-void
.end method

.method public final setProperty(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 4

    if-eqz p1, :cond_8

    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/ASTNode;->property1:Ljava/lang/Object;

    if-nez v0, :cond_1

    if-nez p2, :cond_0

    return-void

    :cond_0
    iput-object p1, p0, Lorg/eclipse/jdt/core/dom/ASTNode;->property1:Ljava/lang/Object;

    iput-object p2, p0, Lorg/eclipse/jdt/core/dom/ASTNode;->property2:Ljava/lang/Object;

    return-void

    :cond_1
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_5

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    if-nez p2, :cond_2

    iput-object v1, p0, Lorg/eclipse/jdt/core/dom/ASTNode;->property1:Ljava/lang/Object;

    iput-object v1, p0, Lorg/eclipse/jdt/core/dom/ASTNode;->property2:Ljava/lang/Object;

    goto :goto_0

    :cond_2
    iput-object p2, p0, Lorg/eclipse/jdt/core/dom/ASTNode;->property2:Ljava/lang/Object;

    :goto_0
    return-void

    :cond_3
    if-nez p2, :cond_4

    return-void

    :cond_4
    new-instance v0, Ljava/util/HashMap;

    const/4 v2, 0x3

    invoke-direct {v0, v2}, Ljava/util/HashMap;-><init>(I)V

    iget-object v2, p0, Lorg/eclipse/jdt/core/dom/ASTNode;->property1:Ljava/lang/Object;

    iget-object v3, p0, Lorg/eclipse/jdt/core/dom/ASTNode;->property2:Ljava/lang/Object;

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iput-object v0, p0, Lorg/eclipse/jdt/core/dom/ASTNode;->property1:Ljava/lang/Object;

    iput-object v1, p0, Lorg/eclipse/jdt/core/dom/ASTNode;->property2:Ljava/lang/Object;

    return-void

    :cond_5
    check-cast v0, Ljava/util/Map;

    if-nez p2, :cond_7

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result p1

    const/4 p2, 0x1

    if-ne p1, p2, :cond_6

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    new-array p2, p2, [Ljava/util/Map$Entry;

    invoke-interface {p1, p2}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/util/Map$Entry;

    const/4 p2, 0x0

    aget-object v0, p1, p2

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lorg/eclipse/jdt/core/dom/ASTNode;->property1:Ljava/lang/Object;

    aget-object p1, p1, p2

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lorg/eclipse/jdt/core/dom/ASTNode;->property2:Ljava/lang/Object;

    :cond_6
    return-void

    :cond_7
    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_8
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method public final setSourceRange(II)V
    .locals 0

    if-ltz p1, :cond_1

    if-ltz p2, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1

    :cond_1
    :goto_0
    if-gez p1, :cond_3

    if-nez p2, :cond_2

    goto :goto_1

    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1

    :cond_3
    :goto_1
    invoke-virtual {p0}, Lorg/eclipse/jdt/core/dom/ASTNode;->checkModifiable()V

    iput p1, p0, Lorg/eclipse/jdt/core/dom/ASTNode;->startPosition:I

    iput p2, p0, Lorg/eclipse/jdt/core/dom/ASTNode;->length:I

    return-void
.end method

.method public final setStructuralProperty(Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;Ljava/lang/Object;)V
    .locals 3

    instance-of v0, p1, Lorg/eclipse/jdt/core/dom/SimplePropertyDescriptor;

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    check-cast p1, Lorg/eclipse/jdt/core/dom/SimplePropertyDescriptor;

    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/SimplePropertyDescriptor;->getValueType()Ljava/lang/Class;

    move-result-object v0

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne v0, v2, :cond_0

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-virtual {p0, p1, v1, p2}, Lorg/eclipse/jdt/core/dom/ASTNode;->internalGetSetIntProperty(Lorg/eclipse/jdt/core/dom/SimplePropertyDescriptor;ZI)I

    return-void

    :cond_0
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/SimplePropertyDescriptor;->getValueType()Ljava/lang/Class;

    move-result-object v0

    sget-object v2, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-ne v0, v2, :cond_1

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    invoke-virtual {p0, p1, v1, p2}, Lorg/eclipse/jdt/core/dom/ASTNode;->internalGetSetBooleanProperty(Lorg/eclipse/jdt/core/dom/SimplePropertyDescriptor;ZZ)Z

    return-void

    :cond_1
    if-nez p2, :cond_3

    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/SimplePropertyDescriptor;->isMandatory()Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1

    :cond_3
    :goto_0
    invoke-virtual {p0, p1, v1, p2}, Lorg/eclipse/jdt/core/dom/ASTNode;->internalGetSetObjectProperty(Lorg/eclipse/jdt/core/dom/SimplePropertyDescriptor;ZLjava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_4
    instance-of v0, p1, Lorg/eclipse/jdt/core/dom/ChildPropertyDescriptor;

    if-eqz v0, :cond_7

    check-cast p1, Lorg/eclipse/jdt/core/dom/ChildPropertyDescriptor;

    check-cast p2, Lorg/eclipse/jdt/core/dom/ASTNode;

    if-nez p2, :cond_6

    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/ChildPropertyDescriptor;->isMandatory()Z

    move-result v0

    if-nez v0, :cond_5

    goto :goto_1

    :cond_5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1

    :cond_6
    :goto_1
    invoke-virtual {p0, p1, v1, p2}, Lorg/eclipse/jdt/core/dom/ASTNode;->internalGetSetChildProperty(Lorg/eclipse/jdt/core/dom/ChildPropertyDescriptor;ZLorg/eclipse/jdt/core/dom/ASTNode;)Lorg/eclipse/jdt/core/dom/ASTNode;

    return-void

    :cond_7
    instance-of p1, p1, Lorg/eclipse/jdt/core/dom/ChildListPropertyDescriptor;

    if-nez p1, :cond_8

    return-void

    :cond_8
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Cannot set the list of child list property"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final standardToString()Ljava/lang/String;
    .locals 1

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final structuralPropertiesForType()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/ASTNode;->ast:Lorg/eclipse/jdt/core/dom/AST;

    iget v0, v0, Lorg/eclipse/jdt/core/dom/AST;->apiLevel:I

    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/core/dom/ASTNode;->internalStructuralPropertiesForType(I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final subtreeBytes()I
    .locals 1

    invoke-virtual {p0}, Lorg/eclipse/jdt/core/dom/ASTNode;->treeSize()I

    move-result v0

    return v0
.end method

.method public final subtreeMatch(Lorg/eclipse/jdt/core/dom/ASTMatcher;Ljava/lang/Object;)Z
    .locals 0

    invoke-virtual {p0, p1, p2}, Lorg/eclipse/jdt/core/dom/ASTNode;->subtreeMatch0(Lorg/eclipse/jdt/core/dom/ASTMatcher;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public abstract subtreeMatch0(Lorg/eclipse/jdt/core/dom/ASTMatcher;Ljava/lang/Object;)Z
.end method

.method public final supportedOnlyIn2()V
    .locals 2

    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/ASTNode;->ast:Lorg/eclipse/jdt/core/dom/AST;

    iget v0, v0, Lorg/eclipse/jdt/core/dom/AST;->apiLevel:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Operation only supported in JLS2 AST"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final supportedOnlyIn2_3_4()V
    .locals 2

    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/ASTNode;->ast:Lorg/eclipse/jdt/core/dom/AST;

    iget v0, v0, Lorg/eclipse/jdt/core/dom/AST;->apiLevel:I

    const/16 v1, 0x8

    if-ge v0, v1, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Operation only supported in JLS2, JLS3 and JLS4 ASTs"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v1

    :try_start_0
    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/core/dom/ASTNode;->appendDebugString(Ljava/lang/StringBuffer;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->setLength(I)V

    const-string v1, "!"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/eclipse/jdt/core/dom/ASTNode;->standardToString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :goto_0
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public abstract treeSize()I
.end method

.method public final unsupportedBelow10()V
    .locals 2

    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/ASTNode;->ast:Lorg/eclipse/jdt/core/dom/AST;

    iget v0, v0, Lorg/eclipse/jdt/core/dom/AST;->apiLevel:I

    const/16 v1, 0xa

    if-lt v0, v1, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Operation only supported in ASTs with level JLS10 and above"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final unsupportedBelow11()V
    .locals 2

    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/ASTNode;->ast:Lorg/eclipse/jdt/core/dom/AST;

    iget v0, v0, Lorg/eclipse/jdt/core/dom/AST;->apiLevel:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Operation only supported in ASTs with level JLS11 and above"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final unsupportedBelow12()V
    .locals 2

    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/ASTNode;->ast:Lorg/eclipse/jdt/core/dom/AST;

    iget v0, v0, Lorg/eclipse/jdt/core/dom/AST;->apiLevel:I

    const/16 v1, 0xc

    if-lt v0, v1, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Operation only supported in ASTs with level JLS12 and above"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final unsupportedBelow9()V
    .locals 2

    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/ASTNode;->ast:Lorg/eclipse/jdt/core/dom/AST;

    iget v0, v0, Lorg/eclipse/jdt/core/dom/AST;->apiLevel:I

    const/16 v1, 0x9

    if-lt v0, v1, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Operation only supported in JLS9 and later AST"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final unsupportedIn2()V
    .locals 2

    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/ASTNode;->ast:Lorg/eclipse/jdt/core/dom/AST;

    iget v0, v0, Lorg/eclipse/jdt/core/dom/AST;->apiLevel:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Operation not supported in JLS2 AST"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final unsupportedIn2_3()V
    .locals 2

    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/ASTNode;->ast:Lorg/eclipse/jdt/core/dom/AST;

    iget v0, v0, Lorg/eclipse/jdt/core/dom/AST;->apiLevel:I

    const/4 v1, 0x3

    if-le v0, v1, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Operation only supported in JLS4 and later AST"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final unsupportedIn2_3_4()V
    .locals 2

    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/ASTNode;->ast:Lorg/eclipse/jdt/core/dom/AST;

    iget v0, v0, Lorg/eclipse/jdt/core/dom/AST;->apiLevel:I

    const/16 v1, 0x8

    if-lt v0, v1, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Operation only supported in JLS8 and later AST"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
