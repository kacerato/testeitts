.class public Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFlattener;
.super Lorg/eclipse/jdt/core/dom/ASTVisitor;
.source "SourceFile"


# static fields
.field private static final INTERNAL_ARRAY_COMPONENT_TYPE_PROPERTY:Lorg/eclipse/jdt/core/dom/ChildPropertyDescriptor;

.field private static final INTERNAL_CIC_NAME_PROPERTY:Lorg/eclipse/jdt/core/dom/ChildPropertyDescriptor;

.field private static final INTERNAL_FIELD_MODIFIERS_PROPERTY:Lorg/eclipse/jdt/core/dom/SimplePropertyDescriptor;

.field private static final INTERNAL_FRAGMENT_EXTRA_DIMENSIONS_PROPERTY:Lorg/eclipse/jdt/core/dom/SimplePropertyDescriptor;

.field private static final INTERNAL_INITIALIZER_MODIFIERS_PROPERTY:Lorg/eclipse/jdt/core/dom/SimplePropertyDescriptor;

.field private static final INTERNAL_METHOD_EXTRA_DIMENSIONS_PROPERTY:Lorg/eclipse/jdt/core/dom/SimplePropertyDescriptor;

.field private static final INTERNAL_METHOD_MODIFIERS_PROPERTY:Lorg/eclipse/jdt/core/dom/SimplePropertyDescriptor;

.field private static final INTERNAL_METHOD_RETURN_TYPE_PROPERTY:Lorg/eclipse/jdt/core/dom/ChildPropertyDescriptor;

.field private static final INTERNAL_METHOD_THROWN_EXCEPTIONS_PROPERTY:Lorg/eclipse/jdt/core/dom/ChildListPropertyDescriptor;

.field private static final INTERNAL_SWITCH_EXPRESSION_PROPERTY:Lorg/eclipse/jdt/core/dom/ChildPropertyDescriptor;

.field private static final INTERNAL_TDS_TYPE_DECLARATION_PROPERTY:Lorg/eclipse/jdt/core/dom/ChildPropertyDescriptor;

.field private static final INTERNAL_TRY_STATEMENT_RESOURCES_PROPERTY:Lorg/eclipse/jdt/core/dom/ChildListPropertyDescriptor;

.field private static final INTERNAL_TYPE_MODIFIERS_PROPERTY:Lorg/eclipse/jdt/core/dom/SimplePropertyDescriptor;

.field private static final INTERNAL_TYPE_SUPERCLASS_PROPERTY:Lorg/eclipse/jdt/core/dom/ChildPropertyDescriptor;

.field private static final INTERNAL_TYPE_SUPER_INTERFACES_PROPERTY:Lorg/eclipse/jdt/core/dom/ChildListPropertyDescriptor;

.field private static final INTERNAL_VARIABLE_EXTRA_DIMENSIONS_PROPERTY:Lorg/eclipse/jdt/core/dom/SimplePropertyDescriptor;

.field private static final INTERNAL_VARIABLE_MODIFIERS_PROPERTY:Lorg/eclipse/jdt/core/dom/SimplePropertyDescriptor;

.field private static final INTERNAL_VDE_MODIFIERS_PROPERTY:Lorg/eclipse/jdt/core/dom/SimplePropertyDescriptor;

.field private static final INTERNAL_VDS_MODIFIERS_PROPERTY:Lorg/eclipse/jdt/core/dom/SimplePropertyDescriptor;

.field private static final JLS12:I = 0xc

.field private static final JLS2_INTERNAL:I = 0x2

.field private static final JLS3_INTERNAL:I = 0x3

.field private static final JLS4_INTERNAL:I = 0x4

.field private static final JLS8_INTERNAL:I = 0x8

.field private static final JLS9_INTERNAL:I = 0x9


# instance fields
.field protected result:Ljava/lang/StringBuffer;

.field private store:Lorg/eclipse/jdt/internal/core/dom/rewrite/RewriteEventStore;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lorg/eclipse/jdt/core/dom/ArrayType;->COMPONENT_TYPE_PROPERTY:Lorg/eclipse/jdt/core/dom/ChildPropertyDescriptor;

    sput-object v0, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFlattener;->INTERNAL_ARRAY_COMPONENT_TYPE_PROPERTY:Lorg/eclipse/jdt/core/dom/ChildPropertyDescriptor;

    sget-object v0, Lorg/eclipse/jdt/core/dom/FieldDeclaration;->MODIFIERS_PROPERTY:Lorg/eclipse/jdt/core/dom/SimplePropertyDescriptor;

    sput-object v0, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFlattener;->INTERNAL_FIELD_MODIFIERS_PROPERTY:Lorg/eclipse/jdt/core/dom/SimplePropertyDescriptor;

    sget-object v0, Lorg/eclipse/jdt/core/dom/Initializer;->MODIFIERS_PROPERTY:Lorg/eclipse/jdt/core/dom/SimplePropertyDescriptor;

    sput-object v0, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFlattener;->INTERNAL_INITIALIZER_MODIFIERS_PROPERTY:Lorg/eclipse/jdt/core/dom/SimplePropertyDescriptor;

    sget-object v0, Lorg/eclipse/jdt/core/dom/MethodDeclaration;->MODIFIERS_PROPERTY:Lorg/eclipse/jdt/core/dom/SimplePropertyDescriptor;

    sput-object v0, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFlattener;->INTERNAL_METHOD_MODIFIERS_PROPERTY:Lorg/eclipse/jdt/core/dom/SimplePropertyDescriptor;

    sget-object v0, Lorg/eclipse/jdt/core/dom/MethodDeclaration;->RETURN_TYPE_PROPERTY:Lorg/eclipse/jdt/core/dom/ChildPropertyDescriptor;

    sput-object v0, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFlattener;->INTERNAL_METHOD_RETURN_TYPE_PROPERTY:Lorg/eclipse/jdt/core/dom/ChildPropertyDescriptor;

    sget-object v0, Lorg/eclipse/jdt/core/dom/MethodDeclaration;->EXTRA_DIMENSIONS_PROPERTY:Lorg/eclipse/jdt/core/dom/SimplePropertyDescriptor;

    sput-object v0, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFlattener;->INTERNAL_METHOD_EXTRA_DIMENSIONS_PROPERTY:Lorg/eclipse/jdt/core/dom/SimplePropertyDescriptor;

    sget-object v0, Lorg/eclipse/jdt/core/dom/MethodDeclaration;->THROWN_EXCEPTIONS_PROPERTY:Lorg/eclipse/jdt/core/dom/ChildListPropertyDescriptor;

    sput-object v0, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFlattener;->INTERNAL_METHOD_THROWN_EXCEPTIONS_PROPERTY:Lorg/eclipse/jdt/core/dom/ChildListPropertyDescriptor;

    sget-object v0, Lorg/eclipse/jdt/core/dom/TypeDeclaration;->MODIFIERS_PROPERTY:Lorg/eclipse/jdt/core/dom/SimplePropertyDescriptor;

    sput-object v0, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFlattener;->INTERNAL_TYPE_MODIFIERS_PROPERTY:Lorg/eclipse/jdt/core/dom/SimplePropertyDescriptor;

    sget-object v0, Lorg/eclipse/jdt/core/dom/TypeDeclaration;->SUPERCLASS_PROPERTY:Lorg/eclipse/jdt/core/dom/ChildPropertyDescriptor;

    sput-object v0, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFlattener;->INTERNAL_TYPE_SUPERCLASS_PROPERTY:Lorg/eclipse/jdt/core/dom/ChildPropertyDescriptor;

    sget-object v0, Lorg/eclipse/jdt/core/dom/TypeDeclaration;->SUPER_INTERFACES_PROPERTY:Lorg/eclipse/jdt/core/dom/ChildListPropertyDescriptor;

    sput-object v0, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFlattener;->INTERNAL_TYPE_SUPER_INTERFACES_PROPERTY:Lorg/eclipse/jdt/core/dom/ChildListPropertyDescriptor;

    sget-object v0, Lorg/eclipse/jdt/core/dom/ClassInstanceCreation;->NAME_PROPERTY:Lorg/eclipse/jdt/core/dom/ChildPropertyDescriptor;

    sput-object v0, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFlattener;->INTERNAL_CIC_NAME_PROPERTY:Lorg/eclipse/jdt/core/dom/ChildPropertyDescriptor;

    sget-object v0, Lorg/eclipse/jdt/core/dom/VariableDeclarationFragment;->EXTRA_DIMENSIONS_PROPERTY:Lorg/eclipse/jdt/core/dom/SimplePropertyDescriptor;

    sput-object v0, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFlattener;->INTERNAL_FRAGMENT_EXTRA_DIMENSIONS_PROPERTY:Lorg/eclipse/jdt/core/dom/SimplePropertyDescriptor;

    sget-object v0, Lorg/eclipse/jdt/core/dom/TypeDeclarationStatement;->TYPE_DECLARATION_PROPERTY:Lorg/eclipse/jdt/core/dom/ChildPropertyDescriptor;

    sput-object v0, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFlattener;->INTERNAL_TDS_TYPE_DECLARATION_PROPERTY:Lorg/eclipse/jdt/core/dom/ChildPropertyDescriptor;

    sget-object v0, Lorg/eclipse/jdt/core/dom/SingleVariableDeclaration;->MODIFIERS_PROPERTY:Lorg/eclipse/jdt/core/dom/SimplePropertyDescriptor;

    sput-object v0, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFlattener;->INTERNAL_VARIABLE_MODIFIERS_PROPERTY:Lorg/eclipse/jdt/core/dom/SimplePropertyDescriptor;

    sget-object v0, Lorg/eclipse/jdt/core/dom/SingleVariableDeclaration;->EXTRA_DIMENSIONS_PROPERTY:Lorg/eclipse/jdt/core/dom/SimplePropertyDescriptor;

    sput-object v0, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFlattener;->INTERNAL_VARIABLE_EXTRA_DIMENSIONS_PROPERTY:Lorg/eclipse/jdt/core/dom/SimplePropertyDescriptor;

    sget-object v0, Lorg/eclipse/jdt/core/dom/VariableDeclarationExpression;->MODIFIERS_PROPERTY:Lorg/eclipse/jdt/core/dom/SimplePropertyDescriptor;

    sput-object v0, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFlattener;->INTERNAL_VDE_MODIFIERS_PROPERTY:Lorg/eclipse/jdt/core/dom/SimplePropertyDescriptor;

    sget-object v0, Lorg/eclipse/jdt/core/dom/VariableDeclarationStatement;->MODIFIERS_PROPERTY:Lorg/eclipse/jdt/core/dom/SimplePropertyDescriptor;

    sput-object v0, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFlattener;->INTERNAL_VDS_MODIFIERS_PROPERTY:Lorg/eclipse/jdt/core/dom/SimplePropertyDescriptor;

    sget-object v0, Lorg/eclipse/jdt/core/dom/TryStatement;->RESOURCES_PROPERTY:Lorg/eclipse/jdt/core/dom/ChildListPropertyDescriptor;

    sput-object v0, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFlattener;->INTERNAL_TRY_STATEMENT_RESOURCES_PROPERTY:Lorg/eclipse/jdt/core/dom/ChildListPropertyDescriptor;

    sget-object v0, Lorg/eclipse/jdt/core/dom/SwitchCase;->EXPRESSION_PROPERTY:Lorg/eclipse/jdt/core/dom/ChildPropertyDescriptor;

    sput-object v0, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFlattener;->INTERNAL_SWITCH_EXPRESSION_PROPERTY:Lorg/eclipse/jdt/core/dom/ChildPropertyDescriptor;

    return-void
.end method

.method public constructor <init>(Lorg/eclipse/jdt/internal/core/dom/rewrite/RewriteEventStore;)V
    .locals 0

    invoke-direct {p0}, Lorg/eclipse/jdt/core/dom/ASTVisitor;-><init>()V

    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFlattener;->store:Lorg/eclipse/jdt/internal/core/dom/rewrite/RewriteEventStore;

    new-instance p1, Ljava/lang/StringBuffer;

    invoke-direct {p1}, Ljava/lang/StringBuffer;-><init>()V

    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFlattener;->result:Ljava/lang/StringBuffer;

    return-void
.end method

.method public static asString(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/internal/core/dom/rewrite/RewriteEventStore;)Ljava/lang/String;
    .locals 1

    new-instance v0, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFlattener;

    invoke-direct {v0, p1}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFlattener;-><init>(Lorg/eclipse/jdt/internal/core/dom/rewrite/RewriteEventStore;)V

    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/core/dom/ASTNode;->accept(Lorg/eclipse/jdt/core/dom/ASTVisitor;)V

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFlattener;->getResult()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private internalVisitDimensionAnnotations(Lorg/eclipse/jdt/core/dom/ArrayType;IZ)V
    .locals 6

    if-eqz p3, :cond_0

    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/ArrayType;->dimensions()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    move-object v1, p1

    check-cast v1, Lorg/eclipse/jdt/core/dom/Dimension;

    sget-object v2, Lorg/eclipse/jdt/core/dom/Dimension;->ANNOTATIONS_PROPERTY:Lorg/eclipse/jdt/core/dom/ChildListPropertyDescriptor;

    const/16 p1, 0x20

    invoke-static {p1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lorg/eclipse/jdt/internal/compiler/util/Util;->EMPTY_STRING:Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v5

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFlattener;->visitList(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static printModifiers(ILjava/lang/StringBuffer;)V
    .locals 1

    invoke-static {p0}, Lorg/eclipse/jdt/core/dom/Modifier;->isPublic(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "public "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_0
    invoke-static {p0}, Lorg/eclipse/jdt/core/dom/Modifier;->isProtected(I)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "protected "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_1
    invoke-static {p0}, Lorg/eclipse/jdt/core/dom/Modifier;->isPrivate(I)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "private "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_2
    invoke-static {p0}, Lorg/eclipse/jdt/core/dom/Modifier;->isStatic(I)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "static "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_3
    invoke-static {p0}, Lorg/eclipse/jdt/core/dom/Modifier;->isAbstract(I)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "abstract "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_4
    invoke-static {p0}, Lorg/eclipse/jdt/core/dom/Modifier;->isFinal(I)Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v0, "final "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_5
    invoke-static {p0}, Lorg/eclipse/jdt/core/dom/Modifier;->isSynchronized(I)Z

    move-result v0

    if-eqz v0, :cond_6

    const-string v0, "synchronized "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_6
    invoke-static {p0}, Lorg/eclipse/jdt/core/dom/Modifier;->isVolatile(I)Z

    move-result v0

    if-eqz v0, :cond_7

    const-string v0, "volatile "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_7
    invoke-static {p0}, Lorg/eclipse/jdt/core/dom/Modifier;->isNative(I)Z

    move-result v0

    if-eqz v0, :cond_8

    const-string v0, "native "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_8
    invoke-static {p0}, Lorg/eclipse/jdt/core/dom/Modifier;->isStrictfp(I)Z

    move-result v0

    if-eqz v0, :cond_9

    const-string v0, "strictfp "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_9
    invoke-static {p0}, Lorg/eclipse/jdt/core/dom/Modifier;->isTransient(I)Z

    move-result p0

    if-eqz p0, :cond_a

    const-string p0, "transient "

    invoke-virtual {p1, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_a
    return-void
.end method

.method private visitExtraDimensions(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/SimplePropertyDescriptor;Lorg/eclipse/jdt/core/dom/ChildListPropertyDescriptor;)V
    .locals 6

    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/ASTNode;->getAST()Lorg/eclipse/jdt/core/dom/AST;

    move-result-object v0

    invoke-virtual {v0}, Lorg/eclipse/jdt/core/dom/AST;->apiLevel()I

    move-result v0

    const/16 v1, 0x8

    if-ge v0, v1, :cond_1

    invoke-virtual {p0, p1, p2}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFlattener;->getIntAttribute(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;)I

    move-result p2

    const/4 p1, 0x0

    :goto_0
    if-lt p1, p2, :cond_0

    goto :goto_1

    :cond_0
    iget-object p3, p0, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFlattener;->result:Ljava/lang/StringBuffer;

    const-string v0, "[]"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    const/16 p2, 0x20

    invoke-static {p2}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v3

    invoke-static {p2}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lorg/eclipse/jdt/internal/compiler/util/Util;->EMPTY_STRING:Ljava/lang/String;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p3

    invoke-virtual/range {v0 .. v5}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFlattener;->visitList(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method private visitSwitchNode(Lorg/eclipse/jdt/core/dom/ASTNode;)V
    .locals 3

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFlattener;->result:Ljava/lang/StringBuffer;

    const-string v1, "switch ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    instance-of v0, p1, Lorg/eclipse/jdt/core/dom/SwitchExpression;

    if-eqz v0, :cond_0

    sget-object v1, Lorg/eclipse/jdt/core/dom/SwitchExpression;->EXPRESSION_PROPERTY:Lorg/eclipse/jdt/core/dom/ChildPropertyDescriptor;

    invoke-virtual {p0, p1, v1}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFlattener;->getChildNode(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;)Lorg/eclipse/jdt/core/dom/ASTNode;

    move-result-object v1

    invoke-virtual {v1, p0}, Lorg/eclipse/jdt/core/dom/ASTNode;->accept(Lorg/eclipse/jdt/core/dom/ASTVisitor;)V

    goto :goto_0

    :cond_0
    instance-of v1, p1, Lorg/eclipse/jdt/core/dom/SwitchStatement;

    if-eqz v1, :cond_1

    sget-object v1, Lorg/eclipse/jdt/core/dom/SwitchStatement;->EXPRESSION_PROPERTY:Lorg/eclipse/jdt/core/dom/ChildPropertyDescriptor;

    invoke-virtual {p0, p1, v1}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFlattener;->getChildNode(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;)Lorg/eclipse/jdt/core/dom/ASTNode;

    move-result-object v1

    invoke-virtual {v1, p0}, Lorg/eclipse/jdt/core/dom/ASTNode;->accept(Lorg/eclipse/jdt/core/dom/ASTVisitor;)V

    :cond_1
    :goto_0
    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFlattener;->result:Ljava/lang/StringBuffer;

    const/16 v2, 0x29

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFlattener;->result:Ljava/lang/StringBuffer;

    const/16 v2, 0x7b

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    sget-object v0, Lorg/eclipse/jdt/core/dom/SwitchExpression;->STATEMENTS_PROPERTY:Lorg/eclipse/jdt/core/dom/ChildListPropertyDescriptor;

    invoke-virtual {p0, p1, v0, v1}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFlattener;->visitList(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    instance-of v0, p1, Lorg/eclipse/jdt/core/dom/SwitchStatement;

    if-eqz v0, :cond_3

    sget-object v0, Lorg/eclipse/jdt/core/dom/SwitchStatement;->STATEMENTS_PROPERTY:Lorg/eclipse/jdt/core/dom/ChildListPropertyDescriptor;

    invoke-virtual {p0, p1, v0, v1}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFlattener;->visitList(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;Ljava/lang/String;)V

    :cond_3
    :goto_1
    iget-object p1, p0, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFlattener;->result:Ljava/lang/StringBuffer;

    const/16 v0, 0x7d

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    return-void
.end method


# virtual methods
.method public getAttribute(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFlattener;->store:Lorg/eclipse/jdt/internal/core/dom/rewrite/RewriteEventStore;

    invoke-virtual {v0, p1, p2}, Lorg/eclipse/jdt/internal/core/dom/rewrite/RewriteEventStore;->getNewValue(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getBooleanAttribute(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;)Z
    .locals 0

    invoke-virtual {p0, p1, p2}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFlattener;->getAttribute(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1
.end method

.method public getChildList(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;)Ljava/util/List;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFlattener;->getAttribute(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    return-object p1
.end method

.method public getChildNode(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;)Lorg/eclipse/jdt/core/dom/ASTNode;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFlattener;->getAttribute(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/eclipse/jdt/core/dom/ASTNode;

    return-object p1
.end method

.method public getIntAttribute(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;)I
    .locals 0

    invoke-virtual {p0, p1, p2}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFlattener;->getAttribute(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1
.end method

.method public getResult()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFlattener;->result:Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public reset()V
    .locals 2

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFlattener;->result:Ljava/lang/StringBuffer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->setLength(I)V

    return-void
.end method

.method public visit(Lorg/eclipse/jdt/core/dom/AnnotationTypeDeclaration;)Z
    .locals 8

    .line 453
    sget-object v0, Lorg/eclipse/jdt/core/dom/AnnotationTypeDeclaration;->JAVADOC_PROPERTY:Lorg/eclipse/jdt/core/dom/ChildPropertyDescriptor;

    invoke-virtual {p0, p1, v0}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFlattener;->getChildNode(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;)Lorg/eclipse/jdt/core/dom/ASTNode;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 454
    invoke-virtual {v0, p0}, Lorg/eclipse/jdt/core/dom/ASTNode;->accept(Lorg/eclipse/jdt/core/dom/ASTVisitor;)V

    .line 455
    :cond_0
    sget-object v3, Lorg/eclipse/jdt/core/dom/AnnotationTypeDeclaration;->MODIFIERS2_PROPERTY:Lorg/eclipse/jdt/core/dom/ChildListPropertyDescriptor;

    const/16 v0, 0x20

    invoke-static {v0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v4

    sget-object v7, Lorg/eclipse/jdt/internal/compiler/util/Util;->EMPTY_STRING:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v6

    move-object v1, p0

    move-object v2, p1

    move-object v5, v7

    invoke-virtual/range {v1 .. v6}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFlattener;->visitList(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 456
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFlattener;->result:Ljava/lang/StringBuffer;

    const-string v1, "@interface "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 457
    sget-object v0, Lorg/eclipse/jdt/core/dom/AnnotationTypeDeclaration;->NAME_PROPERTY:Lorg/eclipse/jdt/core/dom/ChildPropertyDescriptor;

    invoke-virtual {p0, p1, v0}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFlattener;->getChildNode(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;)Lorg/eclipse/jdt/core/dom/ASTNode;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/eclipse/jdt/core/dom/ASTNode;->accept(Lorg/eclipse/jdt/core/dom/ASTVisitor;)V

    .line 458
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFlattener;->result:Ljava/lang/StringBuffer;

    const/16 v1, 0x7b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 459
    sget-object v0, Lorg/eclipse/jdt/core/dom/AnnotationTypeDeclaration;->BODY_DECLARATIONS_PROPERTY:Lorg/eclipse/jdt/core/dom/ChildListPropertyDescriptor;

    invoke-virtual {p0, p1, v0, v7}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFlattener;->visitList(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;Ljava/lang/String;)V

    .line 460
    iget-object p1, p0, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFlattener;->result:Ljava/lang/StringBuffer;

    const/16 v0, 0x7d

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    const/4 p1, 0x0

    return p1
.end method

.method public visit(Lorg/eclipse/jdt/core/dom/AnnotationTypeMemberDeclaration;)Z
    .locals 7

    .line 461
    sget-object v0, Lorg/eclipse/jdt/core/dom/AnnotationTypeMemberDeclaration;->JAVADOC_PROPERTY:Lorg/eclipse/jdt/core/dom/ChildPropertyDescriptor;

    invoke-virtual {p0, p1, v0}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFlattener;->getChildNode(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;)Lorg/eclipse/jdt/core/dom/ASTNode;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 462
    invoke-virtual {v0, p0}, Lorg/eclipse/jdt/core/dom/ASTNode;->accept(Lorg/eclipse/jdt/core/dom/ASTVisitor;)V

    .line 463
    :cond_0
    sget-object v3, Lorg/eclipse/jdt/core/dom/AnnotationTypeMemberDeclaration;->MODIFIERS2_PROPERTY:Lorg/eclipse/jdt/core/dom/ChildListPropertyDescriptor;

    const/16 v0, 0x20

    invoke-static {v0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lorg/eclipse/jdt/internal/compiler/util/Util;->EMPTY_STRING:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v6

    move-object v1, p0

    move-object v2, p1

    invoke-virtual/range {v1 .. v6}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFlattener;->visitList(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 464
    sget-object v1, Lorg/eclipse/jdt/core/dom/AnnotationTypeMemberDeclaration;->TYPE_PROPERTY:Lorg/eclipse/jdt/core/dom/ChildPropertyDescriptor;

    invoke-virtual {p0, p1, v1}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFlattener;->getChildNode(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;)Lorg/eclipse/jdt/core/dom/ASTNode;

    move-result-object v1

    invoke-virtual {v1, p0}, Lorg/eclipse/jdt/core/dom/ASTNode;->accept(Lorg/eclipse/jdt/core/dom/ASTVisitor;)V

    .line 465
    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFlattener;->result:Ljava/lang/StringBuffer;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 466
    sget-object v0, Lorg/eclipse/jdt/core/dom/AnnotationTypeMemberDeclaration;->NAME_PROPERTY:Lorg/eclipse/jdt/core/dom/ChildPropertyDescriptor;

    invoke-virtual {p0, p1, v0}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFlattener;->getChildNode(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;)Lorg/eclipse/jdt/core/dom/ASTNode;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/eclipse/jdt/core/dom/ASTNode;->accept(Lorg/eclipse/jdt/core/dom/ASTVisitor;)V

    .line 467
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFlattener;->result:Ljava/lang/StringBuffer;

    const-string v1, "()"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 468
    sget-object v0, Lorg/eclipse/jdt/core/dom/AnnotationTypeMemberDeclaration;->DEFAULT_PROPERTY:Lorg/eclipse/jdt/core/dom/ChildPropertyDescriptor;

    invoke-virtual {p0, p1, v0}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFlattener;->getChildNode(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;)Lorg/eclipse/jdt/core/dom/ASTNode;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 469
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFlattener;->result:Ljava/lang/StringBuffer;

    const-string v1, " default "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 470
    invoke-virtual {p1, p0}, Lorg/eclipse/jdt/core/dom/ASTNode;->accept(Lorg/eclipse/jdt/core/dom/ASTVisitor;)V

    .line 471
    :cond_1
    iget-object p1, p0, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFlattener;->result:Ljava/lang/StringBuffer;

    const/16 v0, 0x3b

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    const/4 p1, 0x0

    return p1
.end method

.method public visit(Lorg/eclipse/jdt/core/dom/AnonymousClassDeclaration;)Z
    .locals 2

    .line 3
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFlattener;->result:Ljava/lang/StringBuffer;

    const/16 v1, 0x7b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 4
    sget-object v0, Lorg/eclipse/jdt/core/dom/AnonymousClassDeclaration;->BODY_DECLARATIONS_PROPERTY:Lorg/eclipse/jdt/core/dom/ChildListPropertyDescriptor;

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFlattener;->visitList(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;Ljava/lang/String;)V

    .line 5
    iget-object p1, p0, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFlattener;->result:Ljava/lang/StringBuffer;

    const/16 v0, 0x7d

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    const/4 p1, 0x0

    return p1
.end method

.method public visit(Lorg/eclipse/jdt/core/dom/ArrayAccess;)Z
    .locals 2

    .line 6
    sget-object v0, Lorg/eclipse/jdt/core/dom/ArrayAccess;->ARRAY_PROPERTY:Lorg/eclipse/jdt/core/dom/ChildPropertyDescriptor;

    invoke-virtual {p0, p1, v0}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFlattener;->getChildNode(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;)Lorg/eclipse/jdt/core/dom/ASTNode;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/eclipse/jdt/core/dom/ASTNode;->accept(Lorg/eclipse/jdt/core/dom/ASTVisitor;)V

    .line 7
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFlattener;->result:Ljava/lang/StringBuffer;

    const/16 v1, 0x5b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 8
    sget-object v0, Lorg/eclipse/jdt/core/dom/ArrayAccess;->INDEX_PROPERTY:Lorg/eclipse/jdt/core/dom/ChildPropertyDescriptor;

    invoke-virtual {p0, p1, v0}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFlattener;->getChildNode(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;)Lorg/eclipse/jdt/core/dom/ASTNode;

    move-result-object p1

    invoke-virtual {p1, p0}, Lorg/eclipse/jdt/core/dom/ASTNode;->accept(Lorg/eclipse/jdt/core/dom/ASTVisitor;)V

    .line 9
    iget-object p1, p0, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFlattener;->result:Ljava/lang/StringBuffer;

    const/16 v0, 0x5d

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    const/4 p1, 0x0

    return p1
.end method

.method public visit(Lorg/eclipse/jdt/core/dom/ArrayCreation;)Z
    .locals 9

    .line 10
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFlattener;->result:Ljava/lang/StringBuffer;

    const-string v1, "new "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 11
    sget-object v0, Lorg/eclipse/jdt/core/dom/ArrayCreation;->TYPE_PROPERTY:Lorg/eclipse/jdt/core/dom/ChildPropertyDescriptor;

    invoke-virtual {p0, p1, v0}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFlattener;->getChildNode(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;)Lorg/eclipse/jdt/core/dom/ASTNode;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jdt/core/dom/ArrayType;

    .line 12
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/ASTNode;->getAST()Lorg/eclipse/jdt/core/dom/AST;

    move-result-object v1

    invoke-virtual {v1}, Lorg/eclipse/jdt/core/dom/AST;->apiLevel()I

    move-result v1

    const/16 v2, 0x8

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-lt v1, v2, :cond_0

    move v1, v4

    goto :goto_0

    :cond_0
    move v1, v3

    :goto_0
    if-eqz v1, :cond_1

    .line 13
    sget-object v2, Lorg/eclipse/jdt/core/dom/ArrayType;->ELEMENT_TYPE_PROPERTY:Lorg/eclipse/jdt/core/dom/ChildPropertyDescriptor;

    invoke-virtual {p0, v0, v2}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFlattener;->getChildNode(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;)Lorg/eclipse/jdt/core/dom/ASTNode;

    move-result-object v2

    check-cast v2, Lorg/eclipse/jdt/core/dom/Type;

    .line 14
    sget-object v4, Lorg/eclipse/jdt/core/dom/ArrayType;->DIMENSIONS_PROPERTY:Lorg/eclipse/jdt/core/dom/ChildListPropertyDescriptor;

    invoke-virtual {p0, v0, v4}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFlattener;->getChildList(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    :goto_1
    move v5, v4

    goto :goto_3

    .line 15
    :cond_1
    sget-object v2, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFlattener;->INTERNAL_ARRAY_COMPONENT_TYPE_PROPERTY:Lorg/eclipse/jdt/core/dom/ChildPropertyDescriptor;

    invoke-virtual {p0, v0, v2}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFlattener;->getChildNode(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;)Lorg/eclipse/jdt/core/dom/ASTNode;

    move-result-object v2

    check-cast v2, Lorg/eclipse/jdt/core/dom/Type;

    .line 16
    :goto_2
    invoke-virtual {v2}, Lorg/eclipse/jdt/core/dom/Type;->isArrayType()Z

    move-result v5

    if-nez v5, :cond_5

    goto :goto_1

    .line 17
    :goto_3
    invoke-virtual {v2, p0}, Lorg/eclipse/jdt/core/dom/ASTNode;->accept(Lorg/eclipse/jdt/core/dom/ASTVisitor;)V

    .line 18
    sget-object v2, Lorg/eclipse/jdt/core/dom/ArrayCreation;->DIMENSIONS_PROPERTY:Lorg/eclipse/jdt/core/dom/ChildListPropertyDescriptor;

    invoke-virtual {p0, p1, v2}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFlattener;->getChildList(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;)Ljava/util/List;

    move-result-object v6

    .line 19
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v7

    move v2, v3

    :goto_4
    if-lt v2, v7, :cond_4

    .line 20
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v2

    :goto_5
    if-lt v2, v5, :cond_3

    .line 21
    sget-object v0, Lorg/eclipse/jdt/core/dom/ArrayCreation;->INITIALIZER_PROPERTY:Lorg/eclipse/jdt/core/dom/ChildPropertyDescriptor;

    invoke-virtual {p0, p1, v0}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFlattener;->getChildNode(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;)Lorg/eclipse/jdt/core/dom/ASTNode;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 22
    invoke-virtual {p0, p1, v0}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFlattener;->getChildNode(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;)Lorg/eclipse/jdt/core/dom/ASTNode;

    move-result-object p1

    invoke-virtual {p1, p0}, Lorg/eclipse/jdt/core/dom/ASTNode;->accept(Lorg/eclipse/jdt/core/dom/ASTVisitor;)V

    :cond_2
    return v3

    .line 23
    :cond_3
    invoke-direct {p0, v0, v2, v1}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFlattener;->internalVisitDimensionAnnotations(Lorg/eclipse/jdt/core/dom/ArrayType;IZ)V

    .line 24
    iget-object v4, p0, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFlattener;->result:Ljava/lang/StringBuffer;

    const-string v6, "[]"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 25
    :cond_4
    invoke-direct {p0, v0, v2, v1}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFlattener;->internalVisitDimensionAnnotations(Lorg/eclipse/jdt/core/dom/ArrayType;IZ)V

    .line 26
    iget-object v4, p0, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFlattener;->result:Ljava/lang/StringBuffer;

    const/16 v8, 0x5b

    invoke-virtual {v4, v8}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 27
    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/eclipse/jdt/core/dom/ASTNode;

    invoke-virtual {v4, p0}, Lorg/eclipse/jdt/core/dom/ASTNode;->accept(Lorg/eclipse/jdt/core/dom/ASTVisitor;)V

    .line 28
    iget-object v4, p0, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFlattener;->result:Ljava/lang/StringBuffer;

    const/16 v8, 0x5d

    invoke-virtual {v4, v8}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_5
    add-int/lit8 v4, v4, 0x1

    .line 29
    sget-object v5, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFlattener;->INTERNAL_ARRAY_COMPONENT_TYPE_PROPERTY:Lorg/eclipse/jdt/core/dom/ChildPropertyDescriptor;

    invoke-virtual {p0, v2, v5}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFlattener;->getChildNode(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;)Lorg/eclipse/jdt/core/dom/ASTNode;

    move-result-object v2

    check-cast v2, Lorg/eclipse/jdt/core/dom/Type;

    goto :goto_2
.end method

.method public visit(Lorg/eclipse/jdt/core/dom/ArrayInitializer;)Z
    .locals 2

    .line 30
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFlattener;->result:Ljava/lang/StringBuffer;

    const/16 v1, 0x7b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 31
    sget-object v0, Lorg/eclipse/jdt/core/dom/ArrayInitializer;->EXPRESSIONS_PROPERTY:Lorg/eclipse/jdt/core/dom/ChildListPropertyDescriptor;

    const/16 v1, 0x2c

    invoke-static {v1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p1, v0, v1}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFlattener;->visitList(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;Ljava/lang/String;)V

    .line 32
    iget-object p1, p0, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFlattener;->result:Ljava/lang/StringBuffer;

    const/16 v0, 0x7d

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    const/4 p1, 0x0

    return p1
.end method

.method public visit(Lorg/eclipse/jdt/core/dom/ArrayType;)Z
    .locals 7

    .line 33
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/ASTNode;->getAST()Lorg/eclipse/jdt/core/dom/AST;

    move-result-object v0

    invoke-virtual {v0}, Lorg/eclipse/jdt/core/dom/AST;->apiLevel()I

    move-result v0

    const/16 v1, 0x8

    if-ge v0, v1, :cond_0

    .line 34
    sget-object v0, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFlattener;->INTERNAL_ARRAY_COMPONENT_TYPE_PROPERTY:Lorg/eclipse/jdt/core/dom/ChildPropertyDescriptor;

    invoke-virtual {p0, p1, v0}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFlattener;->getChildNode(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;)Lorg/eclipse/jdt/core/dom/ASTNode;

    move-result-object p1

    invoke-virtual {p1, p0}, Lorg/eclipse/jdt/core/dom/ASTNode;->accept(Lorg/eclipse/jdt/core/dom/ASTVisitor;)V

    .line 35
    iget-object p1, p0, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFlattener;->result:Ljava/lang/StringBuffer;

    const-string v0, "[]"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 36
    :cond_0
    sget-object v0, Lorg/eclipse/jdt/core/dom/ArrayType;->ELEMENT_TYPE_PROPERTY:Lorg/eclipse/jdt/core/dom/ChildPropertyDescriptor;

    invoke-virtual {p0, p1, v0}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFlattener;->getChildNode(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;)Lorg/eclipse/jdt/core/dom/ASTNode;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/eclipse/jdt/core/dom/ASTNode;->accept(Lorg/eclipse/jdt/core/dom/ASTVisitor;)V

    .line 37
    sget-object v3, Lorg/eclipse/jdt/core/dom/ArrayType;->DIMENSIONS_PROPERTY:Lorg/eclipse/jdt/core/dom/ChildListPropertyDescriptor;

    sget-object v6, Lorg/eclipse/jdt/internal/compiler/util/Util;->EMPTY_STRING:Ljava/lang/String;

    move-object v1, p0

    move-object v2, p1

    move-object v4, v6

    move-object v5, v6

    invoke-virtual/range {v1 .. v6}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFlattener;->visitList(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public visit(Lorg/eclipse/jdt/core/dom/AssertStatement;)Z
    .locals 2

    .line 38
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFlattener;->result:Ljava/lang/StringBuffer;

    const-string v1, "assert "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 39
    sget-object v0, Lorg/eclipse/jdt/core/dom/AssertStatement;->EXPRESSION_PROPERTY:Lorg/eclipse/jdt/core/dom/ChildPropertyDescriptor;

    invoke-virtual {p0, p1, v0}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFlattener;->getChildNode(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;)Lorg/eclipse/jdt/core/dom/ASTNode;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/eclipse/jdt/core/dom/ASTNode;->accept(Lorg/eclipse/jdt/core/dom/ASTVisitor;)V

    .line 40
    sget-object v0, Lorg/eclipse/jdt/core/dom/AssertStatement;->MESSAGE_PROPERTY:Lorg/eclipse/jdt/core/dom/ChildPropertyDescriptor;

    invoke-virtual {p0, p1, v0}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFlattener;->getChildNode(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;)Lorg/eclipse/jdt/core/dom/ASTNode;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 41
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFlattener;->result:Ljava/lang/StringBuffer;

    const/16 v1, 0x3a

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 42
    invoke-virtual {p1, p0}, Lorg/eclipse/jdt/core/dom/ASTNode;->accept(Lorg/eclipse/jdt/core/dom/ASTVisitor;)V

    .line 43
    :cond_0
    iget-object p1, p0, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFlattener;->result:Ljava/lang/StringBuffer;

    const/16 v0, 0x3b

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    const/4 p1, 0x0

    return p1
.end method

.method public visit(Lorg/eclipse/jdt/core/dom/Assignment;)Z
    .locals 2

    .line 44
    sget-object v0, Lorg/eclipse/jdt/core/dom/Assignment;->LEFT_HAND_SIDE_PROPERTY:Lorg/eclipse/jdt/core/dom/ChildPropertyDescriptor;

    invoke-virtual {p0, p1, v0}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFlattener;->getChildNode(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;)Lorg/eclipse/jdt/core/dom/ASTNode;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/eclipse/jdt/core/dom/ASTNode;->accept(Lorg/eclipse/jdt/core/dom/ASTVisitor;)V

    .line 45
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFlattener;->result:Ljava/lang/StringBuffer;

    sget-object v1, Lorg/eclipse/jdt/core/dom/Assignment;->OPERATOR_PROPERTY:Lorg/eclipse/jdt/core/dom/SimplePropertyDescriptor;

    invoke-virtual {p0, p1, v1}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFlattener;->getAttribute(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 46
    sget-object v0, Lorg/eclipse/jdt/core/dom/Assignment;->RIGHT_HAND_SIDE_PROPERTY:Lorg/eclipse/jdt/core/dom/ChildPropertyDescriptor;

    invoke-virtual {p0, p1, v0}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFlattener;->getChildNode(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;)Lorg/eclipse/jdt/core/dom/ASTNode;

    move-result-object p1

    invoke-virtual {p1, p0}, Lorg/eclipse/jdt/core/dom/ASTNode;->accept(Lorg/eclipse/jdt/core/dom/ASTVisitor;)V

    const/4 p1, 0x0

    return p1
.end method

.method public visit(Lorg/eclipse/jdt/core/dom/Block;)Z
    .locals 2

    .line 47
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFlattener;->result:Ljava/lang/StringBuffer;

    const/16 v1, 0x7b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 48
    sget-object v0, Lorg/eclipse/jdt/core/dom/Block;->STATEMENTS_PROPERTY:Lorg/eclipse/jdt/core/dom/ChildListPropertyDescriptor;

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFlattener;->visitList(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;Ljava/lang/String;)V

    .line 49
    iget-object p1, p0, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFlattener;->result:Ljava/lang/StringBuffer;

    const/16 v0, 0x7d

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    const/4 p1, 0x0

    return p1
.end method

.method public visit(Lorg/eclipse/jdt/core/dom/BlockComment;)Z
    .locals 0

    .line 1
    const/4 p1, 0x0

    return p1
.end method

.method public visit(Lorg/eclipse/jdt/core/dom/BooleanLiteral;)Z
    .locals 1

    .line 50
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/BooleanLiteral;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 51
    iget-object p1, p0, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFlattener;->result:Ljava/lang/StringBuffer;

    const-string v0, "true"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 52
    :cond_0
    iget-object p1, p0, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFlattener;->result:Ljava/lang/StringBuffer;

    const-string v0, "false"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public visit(Lorg/eclipse/jdt/core/dom/BreakStatement;)Z
    .locals 5

    .line 53
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/ASTNode;->getAST()Lorg/eclipse/jdt/core/dom/AST;

    move-result-object v0

    invoke-virtual {v0}, Lorg/eclipse/jdt/core/dom/AST;->apiLevel()I

    move-result v0

    const/4 v1, 0x0

    const/16 v2, 0xc

    if-lt v0, v2, :cond_0

    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/BreakStatement;->isImplicit()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/BreakStatement;->getExpression()Lorg/eclipse/jdt/core/dom/Expression;

    move-result-object v0

    if-nez v0, :cond_0

    return v1

    .line 54
    :cond_0
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/ASTNode;->getAST()Lorg/eclipse/jdt/core/dom/AST;

    move-result-object v0

    invoke-virtual {v0}, Lorg/eclipse/jdt/core/dom/AST;->apiLevel()I

    move-result v0

    if-lt v0, v2, :cond_1

    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/ASTNode;->getAST()Lorg/eclipse/jdt/core/dom/AST;

    move-result-object v0

    invoke-virtual {v0}, Lorg/eclipse/jdt/core/dom/AST;->apiLevel()I

    move-result v0

    if-lt v0, v2, :cond_2

    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/BreakStatement;->isImplicit()Z

    move-result v0

    if-nez v0, :cond_2

    .line 55
    :cond_1
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFlattener;->result:Ljava/lang/StringBuffer;

    const-string v3, "break"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 56
    :cond_2
    sget-object v0, Lorg/eclipse/jdt/core/dom/BreakStatement;->LABEL_PROPERTY:Lorg/eclipse/jdt/core/dom/ChildPropertyDescriptor;

    invoke-virtual {p0, p1, v0}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFlattener;->getChildNode(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;)Lorg/eclipse/jdt/core/dom/ASTNode;

    move-result-object v0

    const/16 v3, 0x20

    if-eqz v0, :cond_3

    .line 57
    iget-object v4, p0, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFlattener;->result:Ljava/lang/StringBuffer;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 58
    invoke-virtual {v0, p0}, Lorg/eclipse/jdt/core/dom/ASTNode;->accept(Lorg/eclipse/jdt/core/dom/ASTVisitor;)V

    .line 59
    :cond_3
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/ASTNode;->getAST()Lorg/eclipse/jdt/core/dom/AST;

    move-result-object v0

    invoke-virtual {v0}, Lorg/eclipse/jdt/core/dom/AST;->apiLevel()I

    move-result v0

    if-lt v0, v2, :cond_4

    .line 60
    sget-object v0, Lorg/eclipse/jdt/core/dom/BreakStatement;->EXPRESSION_PROPERTY:Lorg/eclipse/jdt/core/dom/ChildPropertyDescriptor;

    invoke-virtual {p0, p1, v0}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFlattener;->getChildNode(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;)Lorg/eclipse/jdt/core/dom/ASTNode;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 61
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFlattener;->result:Ljava/lang/StringBuffer;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 62
    invoke-virtual {p1, p0}, Lorg/eclipse/jdt/core/dom/ASTNode;->accept(Lorg/eclipse/jdt/core/dom/ASTVisitor;)V

    .line 63
    :cond_4
    iget-object p1, p0, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFlattener;->result:Ljava/lang/StringBuffer;

    const/16 v0, 0x3b

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    return v1
.end method

.method public visit(Lorg/eclipse/jdt/core/dom/CastExpression;)Z
    .locals 2

    .line 64
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFlattener;->result:Ljava/lang/StringBuffer;

    const/16 v1, 0x28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 65
    sget-object v0, Lorg/eclipse/jdt/core/dom/CastExpression;->TYPE_PROPERTY:Lorg/eclipse/jdt/core/dom/ChildPropertyDescriptor;

    invoke-virtual {p0, p1, v0}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFlattener;->getChildNode(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;)Lorg/eclipse/jdt/core/dom/ASTNode;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/eclipse/jdt/core/dom/ASTNode;->accept(Lorg/eclipse/jdt/core/dom/ASTVisitor;)V

    .line 66
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFlattener;->result:Ljava/lang/StringBuffer;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 67
    sget-object v0, Lorg/eclipse/jdt/core/dom/CastExpression;->EXPRESSION_PROPERTY:Lorg/eclipse/jdt/core/dom/ChildPropertyDescriptor;

    invoke-virtual {p0, p1, v0}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFlattener;->getChildNode(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;)Lorg/eclipse/jdt/core/dom/ASTNode;

    move-result-object p1

    invoke-virtual {p1, p0}, Lorg/eclipse/jdt/core/dom/ASTNode;->accept(Lorg/eclipse/jdt/core/dom/ASTVisitor;)V

    const/4 p1, 0x0

    return p1
.end method

.method public visit(Lorg/eclipse/jdt/core/dom/CatchClause;)Z
    .locals 2

    .line 68
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFlattener;->result:Ljava/lang/StringBuffer;

    const-string v1, "catch ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 69
    sget-object v0, Lorg/eclipse/jdt/core/dom/CatchClause;->EXCEPTION_PROPERTY:Lorg/eclipse/jdt/core/dom/ChildPropertyDescriptor;

    invoke-virtual {p0, p1, v0}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFlattener;->getChildNode(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;)Lorg/eclipse/jdt/core/dom/ASTNode;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/eclipse/jdt/core/dom/ASTNode;->accept(Lorg/eclipse/jdt/core/dom/ASTVisitor;)V

    .line 70
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFlattener;->result:Ljava/lang/StringBuffer;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 71
    sget-object v0, Lorg/eclipse/jdt/core/dom/CatchClause;->BODY_PROPERTY:Lorg/eclipse/jdt/core/dom/ChildPropertyDescriptor;

    invoke-virtual {p0, p1, v0}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFlattener;->getChildNode(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;)Lorg/eclipse/jdt/core/dom/ASTNode;

    move-result-object p1

    invoke-virtual {p1, p0}, Lorg/eclipse/jdt/core/dom/ASTNode;->accept(Lorg/eclipse/jdt/core/dom/ASTVisitor;)V

    const/4 p1, 0x0

    return p1
.end method

.method public visit(Lorg/eclipse/jdt/core/dom/CharacterLiteral;)Z
    .locals 2

    .line 72
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFlattener;->result:Ljava/lang/StringBuffer;

    sget-object v1, Lorg/eclipse/jdt/core/dom/CharacterLiteral;->ESCAPED_VALUE_PROPERTY:Lorg/eclipse/jdt/core/dom/SimplePropertyDescriptor;

    invoke-virtual {p0, p1, v1}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFlattener;->getAttribute(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    const/4 p1, 0x0

    return p1
.end method

.method public visit(Lorg/eclipse/jdt/core/dom/ClassInstanceCreation;)Z
    .locals 9

    .line 73
    sget-object v0, Lorg/eclipse/jdt/core/dom/ClassInstanceCreation;->EXPRESSION_PROPERTY:Lorg/eclipse/jdt/core/dom/ChildPropertyDescriptor;

    invoke-virtual {p0, p1, v0}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFlattener;->getChildNode(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;)Lorg/eclipse/jdt/core/dom/ASTNode;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 74
    invoke-virtual {v0, p0}, Lorg/eclipse/jdt/core/dom/ASTNode;->accept(Lorg/eclipse/jdt/core/dom/ASTVisitor;)V

    .line 75
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFlattener;->result:Ljava/lang/StringBuffer;

    const/16 v1, 0x2e

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 76
    :cond_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFlattener;->result:Ljava/lang/StringBuffer;

    const-string v1, "new "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 77
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/ASTNode;->getAST()Lorg/eclipse/jdt/core/dom/AST;

    move-result-object v0

    invoke-virtual {v0}, Lorg/eclipse/jdt/core/dom/AST;->apiLevel()I

    move-result v0

    const/4 v1, 0x2

    const/16 v2, 0x2c

    if-ne v0, v1, :cond_1

    .line 78
    sget-object v0, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFlattener;->INTERNAL_CIC_NAME_PROPERTY:Lorg/eclipse/jdt/core/dom/ChildPropertyDescriptor;

    invoke-virtual {p0, p1, v0}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFlattener;->getChildNode(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;)Lorg/eclipse/jdt/core/dom/ASTNode;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/eclipse/jdt/core/dom/ASTNode;->accept(Lorg/eclipse/jdt/core/dom/ASTVisitor;)V

    goto :goto_0

    .line 79
    :cond_1
    sget-object v5, Lorg/eclipse/jdt/core/dom/ClassInstanceCreation;->TYPE_ARGUMENTS_PROPERTY:Lorg/eclipse/jdt/core/dom/ChildListPropertyDescriptor;

    invoke-static {v2}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v6

    const/16 v0, 0x3c

    invoke-static {v0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v7

    const/16 v0, 0x3e

    invoke-static {v0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v8

    move-object v3, p0

    move-object v4, p1

    invoke-virtual/range {v3 .. v8}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFlattener;->visitList(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    sget-object v0, Lorg/eclipse/jdt/core/dom/ClassInstanceCreation;->TYPE_PROPERTY:Lorg/eclipse/jdt/core/dom/ChildPropertyDescriptor;

    invoke-virtual {p0, p1, v0}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFlattener;->getChildNode(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;)Lorg/eclipse/jdt/core/dom/ASTNode;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/eclipse/jdt/core/dom/ASTNode;->accept(Lorg/eclipse/jdt/core/dom/ASTVisitor;)V

    .line 81
    :goto_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFlattener;->result:Ljava/lang/StringBuffer;

    const/16 v1, 0x28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 82
    sget-object v0, Lorg/eclipse/jdt/core/dom/ClassInstanceCreation;->ARGUMENTS_PROPERTY:Lorg/eclipse/jdt/core/dom/ChildListPropertyDescriptor;

    invoke-static {v2}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p1, v0, v1}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFlattener;->visitList(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;Ljava/lang/String;)V

    .line 83
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFlattener;->result:Ljava/lang/StringBuffer;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 84
    sget-object v0, Lorg/eclipse/jdt/core/dom/ClassInstanceCreation;->ANONYMOUS_CLASS_DECLARATION_PROPERTY:Lorg/eclipse/jdt/core/dom/ChildPropertyDescriptor;

    invoke-virtual {p0, p1, v0}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFlattener;->getChildNode(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;)Lorg/eclipse/jdt/core/dom/ASTNode;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 85
    invoke-virtual {p1, p0}, Lorg/eclipse/jdt/core/dom/ASTNode;->accept(Lorg/eclipse/jdt/core/dom/ASTVisitor;)V

    :cond_2
    const/4 p1, 0x0

    return p1
.end method

.method public visit(Lorg/eclipse/jdt/core/dom/CompilationUnit;)Z
    .locals 2

    .line 86
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/ASTNode;->getAST()Lorg/eclipse/jdt/core/dom/AST;

    move-result-object v0

    invoke-virtual {v0}, Lorg/eclipse/jdt/core/dom/AST;->apiLevel()I

    move-result v0

    const/16 v1, 0x9

    if-lt v0, v1, :cond_0

    .line 87
    sget-object v0, Lorg/eclipse/jdt/core/dom/CompilationUnit;->MODULE_PROPERTY:Lorg/eclipse/jdt/core/dom/ChildPropertyDescriptor;

    invoke-virtual {p0, p1, v0}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFlattener;->getChildNode(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;)Lorg/eclipse/jdt/core/dom/ASTNode;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 88
    invoke-virtual {v0, p0}, Lorg/eclipse/jdt/core/dom/ASTNode;->accept(Lorg/eclipse/jdt/core/dom/ASTVisitor;)V

    .line 89
    :cond_0
    sget-object v0, Lorg/eclipse/jdt/core/dom/CompilationUnit;->PACKAGE_PROPERTY:Lorg/eclipse/jdt/core/dom/ChildPropertyDescriptor;

    invoke-virtual {p0, p1, v0}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFlattener;->getChildNode(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;)Lorg/eclipse/jdt/core/dom/ASTNode;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 90
    invoke-virtual {v0, p0}, Lorg/eclipse/jdt/core/dom/ASTNode;->accept(Lorg/eclipse/jdt/core/dom/ASTVisitor;)V

    .line 91
    :cond_1
    sget-object v0, Lorg/eclipse/jdt/core/dom/CompilationUnit;->IMPORTS_PROPERTY:Lorg/eclipse/jdt/core/dom/ChildListPropertyDescriptor;

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFlattener;->visitList(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;Ljava/lang/String;)V

    .line 92
    sget-object v0, Lorg/eclipse/jdt/core/dom/CompilationUnit;->TYPES_PROPERTY:Lorg/eclipse/jdt/core/dom/ChildListPropertyDescriptor;

    invoke-virtual {p0, p1, v0, v1}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFlattener;->visitList(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1
.end method

.method public visit(Lorg/eclipse/jdt/core/dom/ConditionalExpression;)Z
    .locals 2

    .line 93
    sget-object v0, Lorg/eclipse/jdt/core/dom/ConditionalExpression;->EXPRESSION_PROPERTY:Lorg/eclipse/jdt/core/dom/ChildPropertyDescriptor;

    invoke-virtual {p0, p1, v0}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFlattener;->getChildNode(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;)Lorg/eclipse/jdt/core/dom/ASTNode;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/eclipse/jdt/core/dom/ASTNode;->accept(Lorg/eclipse/jdt/core/dom/ASTVisitor;)V

    .line 94
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFlattener;->result:Ljava/lang/StringBuffer;

    const/16 v1, 0x3f

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 95
    sget-object v0, Lorg/eclipse/jdt/core/dom/ConditionalExpression;->THEN_EXPRESSION_PROPERTY:Lorg/eclipse/jdt/core/dom/ChildPropertyDescriptor;

    invoke-virtual {p0, p1, v0}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFlattener;->getChildNode(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;)Lorg/eclipse/jdt/core/dom/ASTNode;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/eclipse/jdt/core/dom/ASTNode;->accept(Lorg/eclipse/jdt/core/dom/ASTVisitor;)V

    .line 96
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFlattener;->result:Ljava/lang/StringBuffer;

    const/16 v1, 0x3a

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 97
    sget-object v0, Lorg/eclipse/jdt/core/dom/ConditionalExpression;->ELSE_EXPRESSION_PROPERTY:Lorg/eclipse/jdt/core/dom/ChildPropertyDescriptor;

    invoke-virtual {p0, p1, v0}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFlattener;->getChildNode(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;)Lorg/eclipse/jdt/core/dom/ASTNode;

    move-result-object p1

    invoke-virtual {p1, p0}, Lorg/eclipse/jdt/core/dom/ASTNode;->accept(Lorg/eclipse/jdt/core/dom/ASTVisitor;)V

    const/4 p1, 0x0

    return p1
.end method

.method public visit(Lorg/eclipse/jdt/core/dom/ConstructorInvocation;)Z
    .locals 9

    .line 98
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/ASTNode;->getAST()Lorg/eclipse/jdt/core/dom/AST;

    move-result-object v0

    invoke-virtual {v0}, Lorg/eclipse/jdt/core/dom/AST;->apiLevel()I

    move-result v0

    const/4 v1, 0x3

    const/16 v2, 0x2c

    if-lt v0, v1, :cond_0

    .line 99
    sget-object v5, Lorg/eclipse/jdt/core/dom/ConstructorInvocation;->TYPE_ARGUMENTS_PROPERTY:Lorg/eclipse/jdt/core/dom/ChildListPropertyDescriptor;

    invoke-static {v2}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v6

    const/16 v0, 0x3c

    invoke-static {v0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v7

    const/16 v0, 0x3e

    invoke-static {v0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v8

    move-object v3, p0

    move-object v4, p1

    invoke-virtual/range {v3 .. v8}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFlattener;->visitList(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    :cond_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFlattener;->result:Ljava/lang/StringBuffer;

    const-string v1, "this("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 101
    sget-object v0, Lorg/eclipse/jdt/core/dom/ConstructorInvocation;->ARGUMENTS_PROPERTY:Lorg/eclipse/jdt/core/dom/ChildListPropertyDescriptor;

    invoke-static {v2}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p1, v0, v1}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFlattener;->visitList(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;Ljava/lang/String;)V

    .line 102
    iget-object p1, p0, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFlattener;->result:Ljava/lang/StringBuffer;

    const-string v0, ");"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/4 p1, 0x0

    return p1
.end method

.method public visit(Lorg/eclipse/jdt/core/dom/ContinueStatement;)Z
    .locals 2

    .line 103
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFlattener;->result:Ljava/lang/StringBuffer;

    const-string v1, "continue"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 104
    sget-object v0, Lorg/eclipse/jdt/core/dom/ContinueStatement;->LABEL_PROPERTY:Lorg/eclipse/jdt/core/dom/ChildPropertyDescriptor;

    invoke-virtual {p0, p1, v0}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFlattener;->getChildNode(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;)Lorg/eclipse/jdt/core/dom/ASTNode;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 105
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFlattener;->result:Ljava/lang/StringBuffer;

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 106
    invoke-virtual {p1, p0}, Lorg/eclipse/jdt/core/dom/ASTNode;->accept(Lorg/eclipse/jdt/core/dom/ASTVisitor;)V

    .line 107
    :cond_0
    iget-object p1, p0, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFlattener;->result:Ljava/lang/StringBuffer;

    const/16 v0, 0x3b

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    const/4 p1, 0x0

    return p1
.end method

.method public visit(Lorg/eclipse/jdt/core/dom/CreationReference;)Z
    .locals 8

    .line 108
    sget-object v0, Lorg/eclipse/jdt/core/dom/CreationReference;->TYPE_PROPERTY:Lorg/eclipse/jdt/core/dom/ChildPropertyDescriptor;

    invoke-virtual {p0, p1, v0}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFlattener;->getChildNode(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;)Lorg/eclipse/jdt/core/dom/ASTNode;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/eclipse/jdt/core/dom/ASTNode;->accept(Lorg/eclipse/jdt/core/dom/ASTVisitor;)V

    .line 109
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFlattener;->result:Ljava/lang/StringBuffer;

    const-string v1, "::"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 110
    sget-object v4, Lorg/eclipse/jdt/core/dom/CreationReference;->TYPE_ARGUMENTS_PROPERTY:Lorg/eclipse/jdt/core/dom/ChildListPropertyDescriptor;

    sget-object v5, Lorg/eclipse/jdt/internal/compiler/util/Util;->EMPTY_STRING:Ljava/lang/String;

    const/16 v0, 0x3c

    invoke-static {v0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v6

    const/16 v0, 0x3e

    invoke-static {v0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v7

    move-object v2, p0

    move-object v3, p1

    invoke-virtual/range {v2 .. v7}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFlattener;->visitList(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    iget-object p1, p0, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFlattener;->result:Ljava/lang/StringBuffer;

    const-string v0, "new"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/4 p1, 0x0

    return p1
.end method

.method public visit(Lorg/eclipse/jdt/core/dom/Dimension;)Z
    .locals 6

    .line 112
    sget-object v2, Lorg/eclipse/jdt/core/dom/Dimension;->ANNOTATIONS_PROPERTY:Lorg/eclipse/jdt/core/dom/ChildListPropertyDescriptor;

    const/16 v0, 0x20

    invoke-static {v0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v4

    invoke-static {v0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v5

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFlattener;->visitList(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    iget-object p1, p0, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFlattener;->result:Ljava/lang/StringBuffer;

    const-string v0, "[]"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/4 p1, 0x0

    return p1
.end method

.method public visit(Lorg/eclipse/jdt/core/dom/DoStatement;)Z
    .locals 2

    .line 114
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFlattener;->result:Ljava/lang/StringBuffer;

    const-string v1, "do "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 115
    sget-object v0, Lorg/eclipse/jdt/core/dom/DoStatement;->BODY_PROPERTY:Lorg/eclipse/jdt/core/dom/ChildPropertyDescriptor;

    invoke-virtual {p0, p1, v0}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFlattener;->getChildNode(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;)Lorg/eclipse/jdt/core/dom/ASTNode;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/eclipse/jdt/core/dom/ASTNode;->accept(Lorg/eclipse/jdt/core/dom/ASTVisitor;)V

    .line 116
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFlattener;->result:Ljava/lang/StringBuffer;

    const-string v1, " while ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 117
    sget-object v0, Lorg/eclipse/jdt/core/dom/DoStatement;->EXPRESSION_PROPERTY:Lorg/eclipse/jdt/core/dom/ChildPropertyDescriptor;

    invoke-virtual {p0, p1, v0}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFlattener;->getChildNode(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;)Lorg/eclipse/jdt/core/dom/ASTNode;

    move-result-object p1

    invoke-virtual {p1, p0}, Lorg/eclipse/jdt/core/dom/ASTNode;->accept(Lorg/eclipse/jdt/core/dom/ASTVisitor;)V

    .line 118
    iget-object p1, p0, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFlattener;->result:Ljava/lang/StringBuffer;

    const-string v0, ");"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/4 p1, 0x0

    return p1
.end method

.method public visit(Lorg/eclipse/jdt/core/dom/EmptyStatement;)Z
    .locals 1

    .line 119
    iget-object p1, p0, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFlattener;->result:Ljava/lang/StringBuffer;

    const/16 v0, 0x3b

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    const/4 p1, 0x0

    return p1
.end method

.method public visit(Lorg/eclipse/jdt/core/dom/EnhancedForStatement;)Z
    .locals 2

    .line 472
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFlattener;->result:Ljava/lang/StringBuffer;

    const-string v1, "for ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 473
    sget-object v0, Lorg/eclipse/jdt/core/dom/EnhancedForStatement;->PARAMETER_PROPERTY:Lorg/eclipse/jdt/core/dom/ChildPropertyDescriptor;

    invoke-virtual {p0, p1, v0}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFlattener;->getChildNode(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;)Lorg/eclipse/jdt/core/dom/ASTNode;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/eclipse/jdt/core/dom/ASTNode;->accept(Lorg/eclipse/jdt/core/dom/ASTVisitor;)V

    .line 474
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFlattener;->result:Ljava/lang/StringBuffer;

    const/16 v1, 0x3a

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 475
    sget-object v0, Lorg/eclipse/jdt/core/dom/EnhancedForStatement;->EXPRESSION_PROPERTY:Lorg/eclipse/jdt/core/dom/ChildPropertyDescriptor;

    invoke-virtual {p0, p1, v0}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFlattener;->getChildNode(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;)Lorg/eclipse/jdt/core/dom/ASTNode;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/eclipse/jdt/core/dom/ASTNode;->accept(Lorg/eclipse/jdt/core/dom/ASTVisitor;)V

    .line 476
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFlattener;->result:Ljava/lang/StringBuffer;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 477
    sget-object v0, Lorg/eclipse/jdt/core/dom/EnhancedForStatement;->BODY_PROPERTY:Lorg/eclipse/jdt/core/dom/ChildPropertyDescriptor;

    invoke-virtual {p0, p1, v0}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFlattener;->getChildNode(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;)Lorg/eclipse/jdt/core/dom/ASTNode;

    move-result-object p1

    invoke-virtual {p1, p0}, Lorg/eclipse/jdt/core/dom/ASTNode;->accept(Lorg/eclipse/jdt/core/dom/ASTVisitor;)V

    const/4 p1, 0x0

    return p1
.end method

.method public visit(Lorg/eclipse/jdt/core/dom/EnumConstantDeclaration;)Z
    .locals 7

    .line 478
    sget-object v0, Lorg/eclipse/jdt/core/dom/EnumConstantDeclaration;->JAVADOC_PROPERTY:Lorg/eclipse/jdt/core/dom/ChildPropertyDescriptor;

    invoke-virtual {p0, p1, v0}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFlattener;->getChildNode(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;)Lorg/eclipse/jdt/core/dom/ASTNode;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 479
    invoke-virtual {v0, p0}, Lorg/eclipse/jdt/core/dom/ASTNode;->accept(Lorg/eclipse/jdt/core/dom/ASTVisitor;)V

    .line 480
    :cond_0
    sget-object v3, Lorg/eclipse/jdt/core/dom/EnumConstantDeclaration;->MODIFIERS2_PROPERTY:Lorg/eclipse/jdt/core/dom/ChildListPropertyDescriptor;

    const/16 v0, 0x20

    invoke-static {v0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lorg/eclipse/jdt/internal/compiler/util/Util;->EMPTY_STRING:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v6

    move-object v1, p0

    move-object v2, p1

    invoke-virtual/range {v1 .. v6}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFlattener;->visitList(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 481
    sget-object v0, Lorg/eclipse/jdt/core/dom/EnumConstantDeclaration;->NAME_PROPERTY:Lorg/eclipse/jdt/core/dom/ChildPropertyDescriptor;

    invoke-virtual {p0, p1, v0}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFlattener;->getChildNode(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;)Lorg/eclipse/jdt/core/dom/ASTNode;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/eclipse/jdt/core/dom/ASTNode;->accept(Lorg/eclipse/jdt/core/dom/ASTVisitor;)V

    .line 482
    sget-object v3, Lorg/eclipse/jdt/core/dom/EnumConstantDeclaration;->ARGUMENTS_PROPERTY:Lorg/eclipse/jdt/core/dom/ChildListPropertyDescriptor;

    const/16 v0, 0x2c

    invoke-static {v0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v4

    const/16 v0, 0x28

    invoke-static {v0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v5

    const/16 v0, 0x29

    invoke-static {v0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v6

    invoke-virtual/range {v1 .. v6}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFlattener;->visitList(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 483
    sget-object v0, Lorg/eclipse/jdt/core/dom/EnumConstantDeclaration;->ANONYMOUS_CLASS_DECLARATION_PROPERTY:Lorg/eclipse/jdt/core/dom/ChildPropertyDescriptor;

    invoke-virtual {p0, p1, v0}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFlattener;->getChildNode(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;)Lorg/eclipse/jdt/core/dom/ASTNode;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 484
    invoke-virtual {p1, p0}, Lorg/eclipse/jdt/core/dom/ASTNode;->accept(Lorg/eclipse/jdt/core/dom/ASTVisitor;)V

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public visit(Lorg/eclipse/jdt/core/dom/EnumDeclaration;)Z
    .locals 12

    .line 485
    sget-object v0, Lorg/eclipse/jdt/core/dom/EnumDeclaration;->JAVADOC_PROPERTY:Lorg/eclipse/jdt/core/dom/ChildPropertyDescriptor;

    invoke-virtual {p0, p1, v0}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFlattener;->getChildNode(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;)Lorg/eclipse/jdt/core/dom/ASTNode;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 486
    invoke-virtual {v0, p0}, Lorg/eclipse/jdt/core/dom/ASTNode;->accept(Lorg/eclipse/jdt/core/dom/ASTVisitor;)V

    .line 487
    :cond_0
    sget-object v3, Lorg/eclipse/jdt/core/dom/EnumDeclaration;->MODIFIERS2_PROPERTY:Lorg/eclipse/jdt/core/dom/ChildListPropertyDescriptor;

    const/16 v0, 0x20

    invoke-static {v0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v4

    sget-object v11, Lorg/eclipse/jdt/internal/compiler/util/Util;->EMPTY_STRING:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v6

    move-object v1, p0

    move-object v2, p1

    move-object v5, v11

    invoke-virtual/range {v1 .. v6}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFlattener;->visitList(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 488
    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFlattener;->result:Ljava/lang/StringBuffer;

    const-string v2, "enum "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 489
    sget-object v1, Lorg/eclipse/jdt/core/dom/EnumDeclaration;->NAME_PROPERTY:Lorg/eclipse/jdt/core/dom/ChildPropertyDescriptor;

    invoke-virtual {p0, p1, v1}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFlattener;->getChildNode(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;)Lorg/eclipse/jdt/core/dom/ASTNode;

    move-result-object v1

    invoke-virtual {v1, p0}, Lorg/eclipse/jdt/core/dom/ASTNode;->accept(Lorg/eclipse/jdt/core/dom/ASTVisitor;)V

    .line 490
    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFlattener;->result:Ljava/lang/StringBuffer;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 491
    sget-object v7, Lorg/eclipse/jdt/core/dom/EnumDeclaration;->SUPER_INTERFACE_TYPES_PROPERTY:Lorg/eclipse/jdt/core/dom/ChildListPropertyDescriptor;

    const/16 v0, 0x2c

    invoke-static {v0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v8

    const-string v9, "implements "

    move-object v5, p0

    move-object v6, p1

    move-object v10, v11

    invoke-virtual/range {v5 .. v10}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFlattener;->visitList(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 492
    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFlattener;->result:Ljava/lang/StringBuffer;

    const/16 v2, 0x7b

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 493
    sget-object v7, Lorg/eclipse/jdt/core/dom/EnumDeclaration;->ENUM_CONSTANTS_PROPERTY:Lorg/eclipse/jdt/core/dom/ChildListPropertyDescriptor;

    invoke-static {v0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v8

    move-object v9, v11

    invoke-virtual/range {v5 .. v10}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFlattener;->visitList(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 494
    sget-object v7, Lorg/eclipse/jdt/core/dom/EnumDeclaration;->BODY_DECLARATIONS_PROPERTY:Lorg/eclipse/jdt/core/dom/ChildListPropertyDescriptor;

    const/16 v0, 0x3b

    invoke-static {v0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v9

    move-object v8, v11

    invoke-virtual/range {v5 .. v10}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFlattener;->visitList(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 495
    iget-object p1, p0, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFlattener;->result:Ljava/lang/StringBuffer;

    const/16 v0, 0x7d

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    const/4 p1, 0x0

    return p1
.end method

.method public visit(Lorg/eclipse/jdt/core/dom/ExportsDirective;)Z
    .locals 8

    .line 120
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFlattener;->result:Ljava/lang/StringBuffer;

    const-string v1, "exports "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 121
    sget-object v0, Lorg/eclipse/jdt/core/dom/ExportsDirective;->NAME_PROPERTY:Lorg/eclipse/jdt/core/dom/ChildPropertyDescriptor;

    invoke-virtual {p0, p1, v0}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFlattener;->getChildNode(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;)Lorg/eclipse/jdt/core/dom/ASTNode;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/eclipse/jdt/core/dom/ASTNode;->accept(Lorg/eclipse/jdt/core/dom/ASTVisitor;)V

    .line 122
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/ModulePackageAccess;->modules()Ljava/util/List;

    move-result-object v0

    .line 123
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 124
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFlattener;->result:Ljava/lang/StringBuffer;

    const-string v1, " to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 125
    sget-object v4, Lorg/eclipse/jdt/core/dom/ExportsDirective;->MODULES_PROPERTY:Lorg/eclipse/jdt/core/dom/ChildListPropertyDescriptor;

    sget-object v5, Lorg/eclipse/jdt/internal/compiler/util/Util;->COMMA_SEPARATOR:Ljava/lang/String;

    sget-object v7, Lorg/eclipse/jdt/internal/compiler/util/Util;->EMPTY_STRING:Ljava/lang/String;

    move-object v2, p0

    move-object v3, p1

    move-object v6, v7

    invoke-virtual/range {v2 .. v7}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFlattener;->visitList(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    :cond_0
    iget-object p1, p0, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFlattener;->result:Ljava/lang/StringBuffer;

    const/16 v0, 0x3b

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    const/4 p1, 0x0

    return p1
.end method

.method public visit(Lorg/eclipse/jdt/core/dom/ExpressionMethodReference;)Z
    .locals 8

    .line 496
    sget-object v0, Lorg/eclipse/jdt/core/dom/ExpressionMethodReference;->EXPRESSION_PROPERTY:Lorg/eclipse/jdt/core/dom/ChildPropertyDescriptor;

    invoke-virtual {p0, p1, v0}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFlattener;->getChildNode(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;)Lorg/eclipse/jdt/core/dom/ASTNode;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/eclipse/jdt/core/dom/ASTNode;->accept(Lorg/eclipse/jdt/core/dom/ASTVisitor;)V

    .line 497
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFlattener;->result:Ljava/lang/StringBuffer;

    const-string v1, "::"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 498
    sget-object v4, Lorg/eclipse/jdt/core/dom/ExpressionMethodReference;->TYPE_ARGUMENTS_PROPERTY:Lorg/eclipse/jdt/core/dom/ChildListPropertyDescriptor;

    sget-object v5, Lorg/eclipse/jdt/internal/compiler/util/Util;->EMPTY_STRING:Ljava/lang/String;

    const/16 v0, 0x3c

    invoke-static {v0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v6

    const/16 v0, 0x3e

    invoke-static {v0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v7

    move-object v2, p0

    move-object v3, p1

    invoke-virtual/range {v2 .. v7}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFlattener;->visitList(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 499
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/ExpressionMethodReference;->getName()Lorg/eclipse/jdt/core/dom/SimpleName;

    move-result-object p1

    invoke-virtual {p1, p0}, Lorg/eclipse/jdt/core/dom/ASTNode;->accept(Lorg/eclipse/jdt/core/dom/ASTVisitor;)V

    const/4 p1, 0x0

    return p1
.end method

.method public visit(Lorg/eclipse/jdt/core/dom/ExpressionStatement;)Z
    .locals 1

    .line 127
    sget-object v0, Lorg/eclipse/jdt/core/dom/ExpressionStatement;->EXPRESSION_PROPERTY:Lorg/eclipse/jdt/core/dom/ChildPropertyDescriptor;

    invoke-virtual {p0, p1, v0}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFlattener;->getChildNode(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;)Lorg/eclipse/jdt/core/dom/ASTNode;

    move-result-object p1

    invoke-virtual {p1, p0}, Lorg/eclipse/jdt/core/dom/ASTNode;->accept(Lorg/eclipse/jdt/core/dom/ASTVisitor;)V

    .line 128
    iget-object p1, p0, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFlattener;->result:Ljava/lang/StringBuffer;

    const/16 v0, 0x3b

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    const/4 p1, 0x0

    return p1
.end method

.method public visit(Lorg/eclipse/jdt/core/dom/FieldAccess;)Z
    .locals 2

    .line 129
    sget-object v0, Lorg/eclipse/jdt/core/dom/FieldAccess;->EXPRESSION_PROPERTY:Lorg/eclipse/jdt/core/dom/ChildPropertyDescriptor;

    invoke-virtual {p0, p1, v0}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFlattener;->getChildNode(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;)Lorg/eclipse/jdt/core/dom/ASTNode;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/eclipse/jdt/core/dom/ASTNode;->accept(Lorg/eclipse/jdt/core/dom/ASTVisitor;)V

    .line 130
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFlattener;->result:Ljava/lang/StringBuffer;

    const/16 v1, 0x2e

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 131
    sget-object v0, Lorg/eclipse/jdt/core/dom/FieldAccess;->NAME_PROPERTY:Lorg/eclipse/jdt/core/dom/ChildPropertyDescriptor;

    invoke-virtual {p0, p1, v0}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFlattener;->getChildNode(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;)Lorg/eclipse/jdt/core/dom/ASTNode;

    move-result-object p1

    invoke-virtual {p1, p0}, Lorg/eclipse/jdt/core/dom/ASTNode;->accept(Lorg/eclipse/jdt/core/dom/ASTVisitor;)V

    const/4 p1, 0x0

    return p1
.end method

.method public visit(Lorg/eclipse/jdt/core/dom/FieldDeclaration;)Z
    .locals 9

    .line 132
    sget-object v0, Lorg/eclipse/jdt/core/dom/FieldDeclaration;->JAVADOC_PROPERTY:Lorg/eclipse/jdt/core/dom/ChildPropertyDescriptor;

    invoke-virtual {p0, p1, v0}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFlattener;->getChildNode(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;)Lorg/eclipse/jdt/core/dom/ASTNode;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 133
    invoke-virtual {v0, p0}, Lorg/eclipse/jdt/core/dom/ASTNode;->accept(Lorg/eclipse/jdt/core/dom/ASTVisitor;)V

    .line 134
    :cond_0
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/ASTNode;->getAST()Lorg/eclipse/jdt/core/dom/AST;

    move-result-object v0

    invoke-virtual {v0}, Lorg/eclipse/jdt/core/dom/AST;->apiLevel()I

    move-result v0

    const/4 v1, 0x2

    const/16 v2, 0x20

    if-ne v0, v1, :cond_1

    .line 135
    sget-object v0, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFlattener;->INTERNAL_FIELD_MODIFIERS_PROPERTY:Lorg/eclipse/jdt/core/dom/SimplePropertyDescriptor;

    invoke-virtual {p0, p1, v0}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFlattener;->getIntAttribute(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;)I

    move-result v0

    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFlattener;->result:Ljava/lang/StringBuffer;

    invoke-static {v0, v1}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFlattener;->printModifiers(ILjava/lang/StringBuffer;)V

    goto :goto_0

    .line 136
    :cond_1
    sget-object v5, Lorg/eclipse/jdt/core/dom/FieldDeclaration;->MODIFIERS2_PROPERTY:Lorg/eclipse/jdt/core/dom/ChildListPropertyDescriptor;

    invoke-static {v2}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v6

    sget-object v7, Lorg/eclipse/jdt/internal/compiler/util/Util;->EMPTY_STRING:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v8

    move-object v3, p0

    move-object v4, p1

    invoke-virtual/range {v3 .. v8}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFlattener;->visitList(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    :goto_0
    sget-object v0, Lorg/eclipse/jdt/core/dom/FieldDeclaration;->TYPE_PROPERTY:Lorg/eclipse/jdt/core/dom/ChildPropertyDescriptor;

    invoke-virtual {p0, p1, v0}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFlattener;->getChildNode(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;)Lorg/eclipse/jdt/core/dom/ASTNode;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/eclipse/jdt/core/dom/ASTNode;->accept(Lorg/eclipse/jdt/core/dom/ASTVisitor;)V

    .line 138
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFlattener;->result:Ljava/lang/StringBuffer;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 139
    sget-object v0, Lorg/eclipse/jdt/core/dom/FieldDeclaration;->FRAGMENTS_PROPERTY:Lorg/eclipse/jdt/core/dom/ChildListPropertyDescriptor;

    const/16 v1, 0x2c

    invoke-static {v1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p1, v0, v1}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFlattener;->visitList(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;Ljava/lang/String;)V

    .line 140
    iget-object p1, p0, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFlattener;->result:Ljava/lang/StringBuffer;

    const/16 v0, 0x3b

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    const/4 p1, 0x0

    return p1
.end method

.method public visit(Lorg/eclipse/jdt/core/dom/ForStatement;)Z
    .locals 3

    .line 141
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFlattener;->result:Ljava/lang/StringBuffer;

    const-string v1, "for ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 142
    sget-object v0, Lorg/eclipse/jdt/core/dom/ForStatement;->INITIALIZERS_PROPERTY:Lorg/eclipse/jdt/core/dom/ChildListPropertyDescriptor;

    const/16 v1, 0x2c

    invoke-static {v1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, p1, v0, v2}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFlattener;->visitList(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;Ljava/lang/String;)V

    .line 143
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFlattener;->result:Ljava/lang/StringBuffer;

    const/16 v2, 0x3b

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 144
    sget-object v0, Lorg/eclipse/jdt/core/dom/ForStatement;->EXPRESSION_PROPERTY:Lorg/eclipse/jdt/core/dom/ChildPropertyDescriptor;

    invoke-virtual {p0, p1, v0}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFlattener;->getChildNode(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;)Lorg/eclipse/jdt/core/dom/ASTNode;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 145
    invoke-virtual {v0, p0}, Lorg/eclipse/jdt/core/dom/ASTNode;->accept(Lorg/eclipse/jdt/core/dom/ASTVisitor;)V

    .line 146
    :cond_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFlattener;->result:Ljava/lang/StringBuffer;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 147
    sget-object v0, Lorg/eclipse/jdt/core/dom/ForStatement;->UPDATERS_PROPERTY:Lorg/eclipse/jdt/core/dom/ChildListPropertyDescriptor;

    invoke-static {v1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p1, v0, v1}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFlattener;->visitList(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;Ljava/lang/String;)V

    .line 148
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFlattener;->result:Ljava/lang/StringBuffer;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 149
    sget-object v0, Lorg/eclipse/jdt/core/dom/ForStatement;->BODY_PROPERTY:Lorg/eclipse/jdt/core/dom/ChildPropertyDescriptor;

    invoke-virtual {p0, p1, v0}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFlattener;->getChildNode(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;)Lorg/eclipse/jdt/core/dom/ASTNode;

    move-result-object p1

    invoke-virtual {p1, p0}, Lorg/eclipse/jdt/core/dom/ASTNode;->accept(Lorg/eclipse/jdt/core/dom/ASTVisitor;)V

    const/4 p1, 0x0

    return p1
.end method

.method public visit(Lorg/eclipse/jdt/core/dom/IfStatement;)Z
    .locals 2

    .line 150
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFlattener;->result:Ljava/lang/StringBuffer;

    const-string v1, "if ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 151
    sget-object v0, Lorg/eclipse/jdt/core/dom/IfStatement;->EXPRESSION_PROPERTY:Lorg/eclipse/jdt/core/dom/ChildPropertyDescriptor;

    invoke-virtual {p0, p1, v0}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFlattener;->getChildNode(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;)Lorg/eclipse/jdt/core/dom/ASTNode;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/eclipse/jdt/core/dom/ASTNode;->accept(Lorg/eclipse/jdt/core/dom/ASTVisitor;)V

    .line 152
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFlattener;->result:Ljava/lang/StringBuffer;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 153
    sget-object v0, Lorg/eclipse/jdt/core/dom/IfStatement;->THEN_STATEMENT_PROPERTY:Lorg/eclipse/jdt/core/dom/ChildPropertyDescriptor;

    invoke-virtual {p0, p1, v0}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFlattener;->getChildNode(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;)Lorg/eclipse/jdt/core/dom/ASTNode;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/eclipse/jdt/core/dom/ASTNode;->accept(Lorg/eclipse/jdt/core/dom/ASTVisitor;)V

    .line 154
    sget-object v0, Lorg/eclipse/jdt/core/dom/IfStatement;->ELSE_STATEMENT_PROPERTY:Lorg/eclipse/jdt/core/dom/ChildPropertyDescriptor;

    invoke-virtual {p0, p1, v0}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFlattener;->getChildNode(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;)Lorg/eclipse/jdt/core/dom/ASTNode;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 155
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFlattener;->result:Ljava/lang/StringBuffer;

    const-string v1, " else "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 156
    invoke-virtual {p1, p0}, Lorg/eclipse/jdt/core/dom/ASTNode;->accept(Lorg/eclipse/jdt/core/dom/ASTVisitor;)V

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public visit(Lorg/eclipse/jdt/core/dom/ImportDeclaration;)Z
    .locals 2

    .line 157
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFlattener;->result:Ljava/lang/StringBuffer;

    const-string v1, "import "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 158
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/ASTNode;->getAST()Lorg/eclipse/jdt/core/dom/AST;

    move-result-object v0

    invoke-virtual {v0}, Lorg/eclipse/jdt/core/dom/AST;->apiLevel()I

    move-result v0

    const/4 v1, 0x3

    if-lt v0, v1, :cond_0

    .line 159
    sget-object v0, Lorg/eclipse/jdt/core/dom/ImportDeclaration;->STATIC_PROPERTY:Lorg/eclipse/jdt/core/dom/SimplePropertyDescriptor;

    invoke-virtual {p0, p1, v0}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFlattener;->getBooleanAttribute(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 160
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFlattener;->result:Ljava/lang/StringBuffer;

    const-string v1, "static "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 161
    :cond_0
    sget-object v0, Lorg/eclipse/jdt/core/dom/ImportDeclaration;->NAME_PROPERTY:Lorg/eclipse/jdt/core/dom/ChildPropertyDescriptor;

    invoke-virtual {p0, p1, v0}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFlattener;->getChildNode(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;)Lorg/eclipse/jdt/core/dom/ASTNode;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/eclipse/jdt/core/dom/ASTNode;->accept(Lorg/eclipse/jdt/core/dom/ASTVisitor;)V

    .line 162
    sget-object v0, Lorg/eclipse/jdt/core/dom/ImportDeclaration;->ON_DEMAND_PROPERTY:Lorg/eclipse/jdt/core/dom/SimplePropertyDescriptor;

    invoke-virtual {p0, p1, v0}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFlattener;->getBooleanAttribute(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 163
    iget-object p1, p0, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFlattener;->result:Ljava/lang/StringBuffer;

    const-string v0, ".*"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 164
    :cond_1
    iget-object p1, p0, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFlattener;->result:Ljava/lang/StringBuffer;

    const/16 v0, 0x3b

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    const/4 p1, 0x0

    return p1
.end method

.method public visit(Lorg/eclipse/jdt/core/dom/InfixExpression;)Z
    .locals 10

    .line 165
    sget-object v0, Lorg/eclipse/jdt/core/dom/InfixExpression;->LEFT_OPERAND_PROPERTY:Lorg/eclipse/jdt/core/dom/ChildPropertyDescriptor;

    invoke-virtual {p0, p1, v0}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFlattener;->getChildNode(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;)Lorg/eclipse/jdt/core/dom/ASTNode;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/eclipse/jdt/core/dom/ASTNode;->accept(Lorg/eclipse/jdt/core/dom/ASTVisitor;)V

    .line 166
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFlattener;->result:Ljava/lang/StringBuffer;

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 167
    sget-object v0, Lorg/eclipse/jdt/core/dom/InfixExpression;->OPERATOR_PROPERTY:Lorg/eclipse/jdt/core/dom/SimplePropertyDescriptor;

    invoke-virtual {p0, p1, v0}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFlattener;->getAttribute(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 168
    iget-object v2, p0, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFlattener;->result:Ljava/lang/StringBuffer;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 169
    iget-object v2, p0, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFlattener;->result:Ljava/lang/StringBuffer;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 170
    sget-object v2, Lorg/eclipse/jdt/core/dom/InfixExpression;->RIGHT_OPERAND_PROPERTY:Lorg/eclipse/jdt/core/dom/ChildPropertyDescriptor;

    invoke-virtual {p0, p1, v2}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFlattener;->getChildNode(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;)Lorg/eclipse/jdt/core/dom/ASTNode;

    move-result-object v2

    invoke-virtual {v2, p0}, Lorg/eclipse/jdt/core/dom/ASTNode;->accept(Lorg/eclipse/jdt/core/dom/ASTVisitor;)V

    .line 171
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 172
    sget-object v6, Lorg/eclipse/jdt/core/dom/InfixExpression;->EXTENDED_OPERANDS_PROPERTY:Lorg/eclipse/jdt/core/dom/ChildListPropertyDescriptor;

    sget-object v9, Lorg/eclipse/jdt/internal/compiler/util/Util;->EMPTY_STRING:Ljava/lang/String;

    move-object v4, p0

    move-object v5, p1

    move-object v7, v8

    invoke-virtual/range {v4 .. v9}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFlattener;->visitList(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1
.end method

.method public visit(Lorg/eclipse/jdt/core/dom/Initializer;)Z
    .locals 8

    .line 173
    sget-object v0, Lorg/eclipse/jdt/core/dom/Initializer;->JAVADOC_PROPERTY:Lorg/eclipse/jdt/core/dom/ChildPropertyDescriptor;

    invoke-virtual {p0, p1, v0}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFlattener;->getChildNode(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;)Lorg/eclipse/jdt/core/dom/ASTNode;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 174
    invoke-virtual {v0, p0}, Lorg/eclipse/jdt/core/dom/ASTNode;->accept(Lorg/eclipse/jdt/core/dom/ASTVisitor;)V

    .line 175
    :cond_0
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/ASTNode;->getAST()Lorg/eclipse/jdt/core/dom/AST;

    move-result-object v0

    invoke-virtual {v0}, Lorg/eclipse/jdt/core/dom/AST;->apiLevel()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 176
    sget-object v0, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFlattener;->INTERNAL_INITIALIZER_MODIFIERS_PROPERTY:Lorg/eclipse/jdt/core/dom/SimplePropertyDescriptor;

    invoke-virtual {p0, p1, v0}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFlattener;->getIntAttribute(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;)I

    move-result v0

    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFlattener;->result:Ljava/lang/StringBuffer;

    invoke-static {v0, v1}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFlattener;->printModifiers(ILjava/lang/StringBuffer;)V

    goto :goto_0

    .line 177
    :cond_1
    sget-object v4, Lorg/eclipse/jdt/core/dom/Initializer;->MODIFIERS2_PROPERTY:Lorg/eclipse/jdt/core/dom/ChildListPropertyDescriptor;

    const/16 v0, 0x20

    invoke-static {v0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v5

    sget-object v6, Lorg/eclipse/jdt/internal/compiler/util/Util;->EMPTY_STRING:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v7

    move-object v2, p0

    move-object v3, p1

    invoke-virtual/range {v2 .. v7}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFlattener;->visitList(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 178
    :goto_0
    sget-object v0, Lorg/eclipse/jdt/core/dom/Initializer;->BODY_PROPERTY:Lorg/eclipse/jdt/core/dom/ChildPropertyDescriptor;

    invoke-virtual {p0, p1, v0}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFlattener;->getChildNode(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;)Lorg/eclipse/jdt/core/dom/ASTNode;

    move-result-object p1

    invoke-virtual {p1, p0}, Lorg/eclipse/jdt/core/dom/ASTNode;->accept(Lorg/eclipse/jdt/core/dom/ASTVisitor;)V

    const/4 p1, 0x0

    return p1
.end method

.method public visit(Lorg/eclipse/jdt/core/dom/InstanceofExpression;)Z
    .locals 2

    .line 179
    sget-object v0, Lorg/eclipse/jdt/core/dom/InstanceofExpression;->LEFT_OPERAND_PROPERTY:Lorg/eclipse/jdt/core/dom/ChildPropertyDescriptor;

    invoke-virtual {p0, p1, v0}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFlattener;->getChildNode(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;)Lorg/eclipse/jdt/core/dom/ASTNode;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/eclipse/jdt/core/dom/ASTNode;->accept(Lorg/eclipse/jdt/core/dom/ASTVisitor;)V

    .line 180
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFlattener;->result:Ljava/lang/StringBuffer;

    const-string v1, " instanceof "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 181
    sget-object v0, Lorg/eclipse/jdt/core/dom/InstanceofExpression;->RIGHT_OPERAND_PROPERTY:Lorg/eclipse/jdt/core/dom/ChildPropertyDescriptor;

    invoke-virtual {p0, p1, v0}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFlattener;->getChildNode(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;)Lorg/eclipse/jdt/core/dom/ASTNode;

    move-result-object p1

    invoke-virtual {p1, p0}, Lorg/eclipse/jdt/core/dom/ASTNode;->accept(Lorg/eclipse/jdt/core/dom/ASTVisitor;)V

    const/4 p1, 0x0

    return p1
.end method

.method public visit(Lorg/eclipse/jdt/core/dom/IntersectionType;)Z
    .locals 6

    .line 182
    sget-object v2, Lorg/eclipse/jdt/core/dom/IntersectionType;->TYPES_PROPERTY:Lorg/eclipse/jdt/core/dom/ChildListPropertyDescriptor;

    const-string v3, " & "

    sget-object v5, Lorg/eclipse/jdt/internal/compiler/util/Util;->EMPTY_STRING:Ljava/lang/String;

    move-object v0, p0

    move-object v1, p1

    move-object v4, v5

    invoke-virtual/range {v0 .. v5}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFlattener;->visitList(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1
.end method

.method public visit(Lorg/eclipse/jdt/core/dom/Javadoc;)Z
    .locals 4

    .line 183
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFlattener;->result:Ljava/lang/StringBuffer;

    const-string v1, "/**"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 184
    sget-object v0, Lorg/eclipse/jdt/core/dom/Javadoc;->TAGS_PROPERTY:Lorg/eclipse/jdt/core/dom/ChildListPropertyDescriptor;

    invoke-virtual {p0, p1, v0}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFlattener;->getChildList(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;)Ljava/util/List;

    move-result-object p1

    const/4 v0, 0x0

    move v1, v0

    .line 185
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-lt v1, v2, :cond_0

    .line 186
    iget-object p1, p0, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFlattener;->result:Ljava/lang/StringBuffer;

    const-string v1, "\n */"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    return v0

    .line 187
    :cond_0
    iget-object v2, p0, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFlattener;->result:Ljava/lang/StringBuffer;

    const-string v3, "\n * "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 188
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/eclipse/jdt/core/dom/ASTNode;

    invoke-virtual {v2, p0}, Lorg/eclipse/jdt/core/dom/ASTNode;->accept(Lorg/eclipse/jdt/core/dom/ASTVisitor;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public visit(Lorg/eclipse/jdt/core/dom/LabeledStatement;)Z
    .locals 2

    .line 189
    sget-object v0, Lorg/eclipse/jdt/core/dom/LabeledStatement;->LABEL_PROPERTY:Lorg/eclipse/jdt/core/dom/ChildPropertyDescriptor;

    invoke-virtual {p0, p1, v0}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFlattener;->getChildNode(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;)Lorg/eclipse/jdt/core/dom/ASTNode;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/eclipse/jdt/core/dom/ASTNode;->accept(Lorg/eclipse/jdt/core/dom/ASTVisitor;)V

    .line 190
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFlattener;->result:Ljava/lang/StringBuffer;

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 191
    sget-object v0, Lorg/eclipse/jdt/core/dom/LabeledStatement;->BODY_PROPERTY:Lorg/eclipse/jdt/core/dom/ChildPropertyDescriptor;

    invoke-virtual {p0, p1, v0}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFlattener;->getChildNode(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;)Lorg/eclipse/jdt/core/dom/ASTNode;

    move-result-object p1

    invoke-virtual {p1, p0}, Lorg/eclipse/jdt/core/dom/ASTNode;->accept(Lorg/eclipse/jdt/core/dom/ASTVisitor;)V

    const/4 p1, 0x0

    return p1
.end method

.method public visit(Lorg/eclipse/jdt/core/dom/LambdaExpression;)Z
    .locals 4

    .line 192
    sget-object v0, Lorg/eclipse/jdt/core/dom/LambdaExpression;->PARENTHESES_PROPERTY:Lorg/eclipse/jdt/core/dom/SimplePropertyDescriptor;

    invoke-virtual {p0, p1, v0}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFlattener;->getBooleanAttribute(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 193
    sget-object v0, Lorg/eclipse/jdt/core/dom/LambdaExpression;->PARAMETERS_PROPERTY:Lorg/eclipse/jdt/core/dom/ChildListPropertyDescriptor;

    invoke-virtual {p0, p1, v0}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFlattener;->getChildList(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;)Ljava/util/List;

    move-result-object v0

    .line 194
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lorg/eclipse/jdt/core/dom/VariableDeclarationFragment;

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v3

    :cond_1
    :goto_0
    if-eqz v0, :cond_2

    .line 195
    iget-object v2, p0, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFlattener;->result:Ljava/lang/StringBuffer;

    const/16 v3, 0x28

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 196
    :cond_2
    sget-object v2, Lorg/eclipse/jdt/core/dom/LambdaExpression;->PARAMETERS_PROPERTY:Lorg/eclipse/jdt/core/dom/ChildListPropertyDescriptor;

    const/16 v3, 0x2c

    invoke-static {v3}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, p1, v2, v3}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFlattener;->visitList(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;Ljava/lang/String;)V

    if-eqz v0, :cond_3

    .line 197
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFlattener;->result:Ljava/lang/StringBuffer;

    const/16 v2, 0x29

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 198
    :cond_3
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFlattener;->result:Ljava/lang/StringBuffer;

    const-string v2, "->"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 199
    sget-object v0, Lorg/eclipse/jdt/core/dom/LambdaExpression;->BODY_PROPERTY:Lorg/eclipse/jdt/core/dom/ChildPropertyDescriptor;

    invoke-virtual {p0, p1, v0}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFlattener;->getChildNode(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;)Lorg/eclipse/jdt/core/dom/ASTNode;

    move-result-object p1

    invoke-virtual {p1, p0}, Lorg/eclipse/jdt/core/dom/ASTNode;->accept(Lorg/eclipse/jdt/core/dom/ASTVisitor;)V

    return v1
.end method

.method public visit(Lorg/eclipse/jdt/core/dom/LineComment;)Z
    .locals 0

    .line 2
    const/4 p1, 0x0

    return p1
.end method

.method public visit(Lorg/eclipse/jdt/core/dom/MarkerAnnotation;)Z
    .locals 2

    .line 500
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFlattener;->result:Ljava/lang/StringBuffer;

    const/16 v1, 0x40

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 501
    sget-object v0, Lorg/eclipse/jdt/core/dom/MarkerAnnotation;->TYPE_NAME_PROPERTY:Lorg/eclipse/jdt/core/dom/ChildPropertyDescriptor;

    invoke-virtual {p0, p1, v0}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFlattener;->getChildNode(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;)Lorg/eclipse/jdt/core/dom/ASTNode;

    move-result-object p1

    invoke-virtual {p1, p0}, Lorg/eclipse/jdt/core/dom/ASTNode;->accept(Lorg/eclipse/jdt/core/dom/ASTVisitor;)V

    const/4 p1, 0x0

    return p1
.end method

.method public visit(Lorg/eclipse/jdt/core/dom/MemberRef;)Z
    .locals 2

    .line 423
    sget-object v0, Lorg/eclipse/jdt/core/dom/MemberRef;->QUALIFIER_PROPERTY:Lorg/eclipse/jdt/core/dom/ChildPropertyDescriptor;

    invoke-virtual {p0, p1, v0}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFlattener;->getChildNode(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;)Lorg/eclipse/jdt/core/dom/ASTNode;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 424
    invoke-virtual {v0, p0}, Lorg/eclipse/jdt/core/dom/ASTNode;->accept(Lorg/eclipse/jdt/core/dom/ASTVisitor;)V

    .line 425
    :cond_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFlattener;->result:Ljava/lang/StringBuffer;

    const/16 v1, 0x23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 426
    sget-object v0, Lorg/eclipse/jdt/core/dom/MemberRef;->NAME_PROPERTY:Lorg/eclipse/jdt/core/dom/ChildPropertyDescriptor;

    invoke-virtual {p0, p1, v0}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFlattener;->getChildNode(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;)Lorg/eclipse/jdt/core/dom/ASTNode;

    move-result-object p1

    invoke-virtual {p1, p0}, Lorg/eclipse/jdt/core/dom/ASTNode;->accept(Lorg/eclipse/jdt/core/dom/ASTVisitor;)V

    const/4 p1, 0x0

    return p1
.end method

.method public visit(Lorg/eclipse/jdt/core/dom/MemberValuePair;)Z
    .locals 2

    .line 502
    sget-object v0, Lorg/eclipse/jdt/core/dom/MemberValuePair;->NAME_PROPERTY:Lorg/eclipse/jdt/core/dom/ChildPropertyDescriptor;

    invoke-virtual {p0, p1, v0}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFlattener;->getChildNode(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;)Lorg/eclipse/jdt/core/dom/ASTNode;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/eclipse/jdt/core/dom/ASTNode;->accept(Lorg/eclipse/jdt/core/dom/ASTVisitor;)V

    .line 503
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFlattener;->result:Ljava/lang/StringBuffer;

    const/16 v1, 0x3d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 504
    sget-object v0, Lorg/eclipse/jdt/core/dom/MemberValuePair;->VALUE_PROPERTY:Lorg/eclipse/jdt/core/dom/ChildPropertyDescriptor;

    invoke-virtual {p0, p1, v0}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFlattener;->getChildNode(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;)Lorg/eclipse/jdt/core/dom/ASTNode;

    move-result-object p1

    invoke-virtual {p1, p0}, Lorg/eclipse/jdt/core/dom/ASTNode;->accept(Lorg/eclipse/jdt/core/dom/ASTVisitor;)V

    const/4 p1, 0x0

    return p1
.end method

.method public visit(Lorg/eclipse/jdt/core/dom/MethodDeclaration;)Z
    .locals 9

    .line 200
    sget-object v0, Lorg/eclipse/jdt/core/dom/MethodDeclaration;->JAVADOC_PROPERTY:Lorg/eclipse/jdt/core/dom/ChildPropertyDescriptor;

    invoke-virtual {p0, p1, v0}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFlattener;->getChildNode(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;)Lorg/eclipse/jdt/core/dom/ASTNode;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 201
    invoke-virtual {v0, p0}, Lorg/eclipse/jdt/core/dom/ASTNode;->accept(Lorg/eclipse/jdt/core/dom/ASTVisitor;)V

    .line 202
    :cond_0
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/ASTNode;->getAST()Lorg/eclipse/jdt/core/dom/AST;

    move-result-object v0

    invoke-virtual {v0}, Lorg/eclipse/jdt/core/dom/AST;->apiLevel()I

    move-result v0

    const/4 v6, 0x2

    const/16 v7, 0x2c

    const/16 v8, 0x20

    if-ne v0, v6, :cond_1

    .line 203
    sget-object v0, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFlattener;->INTERNAL_METHOD_MODIFIERS_PROPERTY:Lorg/eclipse/jdt/core/dom/SimplePropertyDescriptor;

    invoke-virtual {p0, p1, v0}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFlattener;->getIntAttribute(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;)I

    move-result v0

    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFlattener;->result:Ljava/lang/StringBuffer;

    invoke-static {v0, v1}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFlattener;->printModifiers(ILjava/lang/StringBuffer;)V

    goto :goto_0

    .line 204
    :cond_1
    sget-object v2, Lorg/eclipse/jdt/core/dom/MethodDeclaration;->MODIFIERS2_PROPERTY:Lorg/eclipse/jdt/core/dom/ChildListPropertyDescriptor;

    invoke-static {v8}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lorg/eclipse/jdt/internal/compiler/util/Util;->EMPTY_STRING:Ljava/lang/String;

    invoke-static {v8}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v5

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFlattener;->visitList(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 205
    sget-object v2, Lorg/eclipse/jdt/core/dom/MethodDeclaration;->TYPE_PARAMETERS_PROPERTY:Lorg/eclipse/jdt/core/dom/ChildListPropertyDescriptor;

    invoke-static {v7}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v3

    const/16 v0, 0x3c

    invoke-static {v0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v4

    const/16 v0, 0x3e

    invoke-static {v0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v5

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFlattener;->visitList(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 206
    :goto_0
    sget-object v0, Lorg/eclipse/jdt/core/dom/MethodDeclaration;->CONSTRUCTOR_PROPERTY:Lorg/eclipse/jdt/core/dom/SimplePropertyDescriptor;

    invoke-virtual {p0, p1, v0}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFlattener;->getBooleanAttribute(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 207
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/ASTNode;->getAST()Lorg/eclipse/jdt/core/dom/AST;

    move-result-object v0

    invoke-virtual {v0}, Lorg/eclipse/jdt/core/dom/AST;->apiLevel()I

    move-result v0

    if-ne v0, v6, :cond_2

    .line 208
    sget-object v0, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFlattener;->INTERNAL_METHOD_RETURN_TYPE_PROPERTY:Lorg/eclipse/jdt/core/dom/ChildPropertyDescriptor;

    invoke-virtual {p0, p1, v0}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFlattener;->getChildNode(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;)Lorg/eclipse/jdt/core/dom/ASTNode;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/eclipse/jdt/core/dom/ASTNode;->accept(Lorg/eclipse/jdt/core/dom/ASTVisitor;)V

    goto :goto_1

    .line 209
    :cond_2
    sget-object v0, Lorg/eclipse/jdt/core/dom/MethodDeclaration;->RETURN_TYPE2_PROPERTY:Lorg/eclipse/jdt/core/dom/ChildPropertyDescriptor;

    invoke-virtual {p0, p1, v0}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFlattener;->getChildNode(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;)Lorg/eclipse/jdt/core/dom/ASTNode;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 210
    invoke-virtual {v0, p0}, Lorg/eclipse/jdt/core/dom/ASTNode;->accept(Lorg/eclipse/jdt/core/dom/ASTVisitor;)V

    goto :goto_1

    .line 211
    :cond_3
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFlattener;->result:Ljava/lang/StringBuffer;

    const-string v1, "void"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 212
    :goto_1
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFlattener;->result:Ljava/lang/StringBuffer;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 213
    :cond_4
    sget-object v0, Lorg/eclipse/jdt/core/dom/MethodDeclaration;->NAME_PROPERTY:Lorg/eclipse/jdt/core/dom/ChildPropertyDescriptor;

    invoke-virtual {p0, p1, v0}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFlattener;->getChildNode(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;)Lorg/eclipse/jdt/core/dom/ASTNode;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/eclipse/jdt/core/dom/ASTNode;->accept(Lorg/eclipse/jdt/core/dom/ASTVisitor;)V

    .line 214
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFlattener;->result:Ljava/lang/StringBuffer;

    const/16 v1, 0x28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 215
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/ASTNode;->getAST()Lorg/eclipse/jdt/core/dom/AST;

    move-result-object v0

    invoke-virtual {v0}, Lorg/eclipse/jdt/core/dom/AST;->apiLevel()I

    move-result v0

    const/16 v1, 0x8

    if-lt v0, v1, :cond_6

    .line 216
    sget-object v0, Lorg/eclipse/jdt/core/dom/MethodDeclaration;->RECEIVER_TYPE_PROPERTY:Lorg/eclipse/jdt/core/dom/ChildPropertyDescriptor;

    invoke-virtual {p0, p1, v0}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFlattener;->getChildNode(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;)Lorg/eclipse/jdt/core/dom/ASTNode;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 217
    invoke-virtual {v0, p0}, Lorg/eclipse/jdt/core/dom/ASTNode;->accept(Lorg/eclipse/jdt/core/dom/ASTVisitor;)V

    .line 218
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFlattener;->result:Ljava/lang/StringBuffer;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 219
    sget-object v0, Lorg/eclipse/jdt/core/dom/MethodDeclaration;->RECEIVER_QUALIFIER_PROPERTY:Lorg/eclipse/jdt/core/dom/ChildPropertyDescriptor;

    invoke-virtual {p0, p1, v0}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFlattener;->getChildNode(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;)Lorg/eclipse/jdt/core/dom/ASTNode;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 220
    invoke-virtual {v0, p0}, Lorg/eclipse/jdt/core/dom/ASTNode;->accept(Lorg/eclipse/jdt/core/dom/ASTVisitor;)V

    .line 221
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFlattener;->result:Ljava/lang/StringBuffer;

    const/16 v2, 0x2e

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 222
    :cond_5
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFlattener;->result:Ljava/lang/StringBuffer;

    const-string v2, "this"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 223
    sget-object v0, Lorg/eclipse/jdt/core/dom/MethodDeclaration;->PARAMETERS_PROPERTY:Lorg/eclipse/jdt/core/dom/ChildListPropertyDescriptor;

    invoke-virtual {p0, p1, v0}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFlattener;->getChildList(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_6

    .line 224
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFlattener;->result:Ljava/lang/StringBuffer;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 225
    :cond_6
    sget-object v0, Lorg/eclipse/jdt/core/dom/MethodDeclaration;->PARAMETERS_PROPERTY:Lorg/eclipse/jdt/core/dom/ChildListPropertyDescriptor;

    invoke-static {v7}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, p1, v0, v2}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFlattener;->visitList(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;Ljava/lang/String;)V

    .line 226
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFlattener;->result:Ljava/lang/StringBuffer;

    const/16 v2, 0x29

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 227
    sget-object v0, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFlattener;->INTERNAL_METHOD_EXTRA_DIMENSIONS_PROPERTY:Lorg/eclipse/jdt/core/dom/SimplePropertyDescriptor;

    sget-object v2, Lorg/eclipse/jdt/core/dom/MethodDeclaration;->EXTRA_DIMENSIONS2_PROPERTY:Lorg/eclipse/jdt/core/dom/ChildListPropertyDescriptor;

    invoke-direct {p0, p1, v0, v2}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFlattener;->visitExtraDimensions(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/SimplePropertyDescriptor;Lorg/eclipse/jdt/core/dom/ChildListPropertyDescriptor;)V

    .line 228
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/ASTNode;->getAST()Lorg/eclipse/jdt/core/dom/AST;

    move-result-object v0

    invoke-virtual {v0}, Lorg/eclipse/jdt/core/dom/AST;->apiLevel()I

    move-result v0

    if-ge v0, v1, :cond_7

    .line 229
    sget-object v0, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFlattener;->INTERNAL_METHOD_THROWN_EXCEPTIONS_PROPERTY:Lorg/eclipse/jdt/core/dom/ChildListPropertyDescriptor;

    :goto_2
    move-object v2, v0

    goto :goto_3

    :cond_7
    sget-object v0, Lorg/eclipse/jdt/core/dom/MethodDeclaration;->THROWN_EXCEPTION_TYPES_PROPERTY:Lorg/eclipse/jdt/core/dom/ChildListPropertyDescriptor;

    goto :goto_2

    .line 230
    :goto_3
    invoke-static {v7}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v3

    const-string v4, " throws "

    sget-object v5, Lorg/eclipse/jdt/internal/compiler/util/Util;->EMPTY_STRING:Ljava/lang/String;

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFlattener;->visitList(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 231
    sget-object v0, Lorg/eclipse/jdt/core/dom/MethodDeclaration;->BODY_PROPERTY:Lorg/eclipse/jdt/core/dom/ChildPropertyDescriptor;

    invoke-virtual {p0, p1, v0}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFlattener;->getChildNode(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;)Lorg/eclipse/jdt/core/dom/ASTNode;

    move-result-object v0

    if-nez v0, :cond_8

    .line 232
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFlattener;->result:Ljava/lang/StringBuffer;

    const/16 v1, 0x3b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_4

    .line 233
    :cond_8
    invoke-virtual {v0, p0}, Lorg/eclipse/jdt/core/dom/ASTNode;->accept(Lorg/eclipse/jdt/core/dom/ASTVisitor;)V

    :goto_4
    const/4 v0, 0x0

    return v0
.end method

.method public visit(Lorg/eclipse/jdt/core/dom/MethodInvocation;)Z
    .locals 9

    .line 244
    sget-object v0, Lorg/eclipse/jdt/core/dom/MethodInvocation;->EXPRESSION_PROPERTY:Lorg/eclipse/jdt/core/dom/ChildPropertyDescriptor;

    invoke-virtual {p0, p1, v0}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFlattener;->getChildNode(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;)Lorg/eclipse/jdt/core/dom/ASTNode;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 245
    invoke-virtual {v0, p0}, Lorg/eclipse/jdt/core/dom/ASTNode;->accept(Lorg/eclipse/jdt/core/dom/ASTVisitor;)V

    .line 246
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFlattener;->result:Ljava/lang/StringBuffer;

    const/16 v1, 0x2e

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 247
    :cond_0
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/ASTNode;->getAST()Lorg/eclipse/jdt/core/dom/AST;

    move-result-object v0

    invoke-virtual {v0}, Lorg/eclipse/jdt/core/dom/AST;->apiLevel()I

    move-result v0

    const/4 v1, 0x3

    const/16 v2, 0x2c

    if-lt v0, v1, :cond_1

    .line 248
    sget-object v5, Lorg/eclipse/jdt/core/dom/MethodInvocation;->TYPE_ARGUMENTS_PROPERTY:Lorg/eclipse/jdt/core/dom/ChildListPropertyDescriptor;

    invoke-static {v2}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v6

    const/16 v0, 0x3c

    invoke-static {v0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v7

    const/16 v0, 0x3e

    invoke-static {v0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v8

    move-object v3, p0

    move-object v4, p1

    invoke-virtual/range {v3 .. v8}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFlattener;->visitList(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 249
    :cond_1
    sget-object v0, Lorg/eclipse/jdt/core/dom/MethodInvocation;->NAME_PROPERTY:Lorg/eclipse/jdt/core/dom/ChildPropertyDescriptor;

    invoke-virtual {p0, p1, v0}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFlattener;->getChildNode(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;)Lorg/eclipse/jdt/core/dom/ASTNode;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/eclipse/jdt/core/dom/ASTNode;->accept(Lorg/eclipse/jdt/core/dom/ASTVisitor;)V

    .line 250
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFlattener;->result:Ljava/lang/StringBuffer;

    const/16 v1, 0x28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 251
    sget-object v0, Lorg/eclipse/jdt/core/dom/MethodInvocation;->ARGUMENTS_PROPERTY:Lorg/eclipse/jdt/core/dom/ChildListPropertyDescriptor;

    invoke-static {v2}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p1, v0, v1}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFlattener;->visitList(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;Ljava/lang/String;)V

    .line 252
    iget-object p1, p0, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFlattener;->result:Ljava/lang/StringBuffer;

    const/16 v0, 0x29

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    const/4 p1, 0x0

    return p1
.end method

.method public visit(Lorg/eclipse/jdt/core/dom/MethodRef;)Z
    .locals 2

    .line 427
    sget-object v0, Lorg/eclipse/jdt/core/dom/MethodRef;->QUALIFIER_PROPERTY:Lorg/eclipse/jdt/core/dom/ChildPropertyDescriptor;

    invoke-virtual {p0, p1, v0}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFlattener;->getChildNode(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;)Lorg/eclipse/jdt/core/dom/ASTNode;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 428
    invoke-virtual {v0, p0}, Lorg/eclipse/jdt/core/dom/ASTNode;->accept(Lorg/eclipse/jdt/core/dom/ASTVisitor;)V

    .line 429
    :cond_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFlattener;->result:Ljava/lang/StringBuffer;

    const/16 v1, 0x23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 430
    sget-object v0, Lorg/eclipse/jdt/core/dom/MethodRef;->NAME_PROPERTY:Lorg/eclipse/jdt/core/dom/ChildPropertyDescriptor;

    invoke-virtual {p0, p1, v0}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFlattener;->getChildNode(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;)Lorg/eclipse/jdt/core/dom/ASTNode;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/eclipse/jdt/core/dom/ASTNode;->accept(Lorg/eclipse/jdt/core/dom/ASTVisitor;)V

    .line 431
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFlattener;->result:Ljava/lang/StringBuffer;

    const/16 v1, 0x28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 432
    sget-object v0, Lorg/eclipse/jdt/core/dom/MethodRef;->PARAMETERS_PROPERTY:Lorg/eclipse/jdt/core/dom/ChildListPropertyDescriptor;

    const-string v1, ","

    invoke-virtual {p0, p1, v0, v1}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFlattener;->visitList(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;Ljava/lang/String;)V

    .line 433
    iget-object p1, p0, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFlattener;->result:Ljava/lang/StringBuffer;

    const/16 v0, 0x29

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    const/4 p1, 0x0

    return p1
.end method

.method public visit(Lorg/eclipse/jdt/core/dom/MethodRefParameter;)Z
    .locals 2

    .line 434
    sget-object v0, Lorg/eclipse/jdt/core/dom/MethodRefParameter;->TYPE_PROPERTY:Lorg/eclipse/jdt/core/dom/ChildPropertyDescriptor;

    invoke-virtual {p0, p1, v0}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFlattener;->getChildNode(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;)Lorg/eclipse/jdt/core/dom/ASTNode;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/eclipse/jdt/core/dom/ASTNode;->accept(Lorg/eclipse/jdt/core/dom/ASTVisitor;)V

    .line 435
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/ASTNode;->getAST()Lorg/eclipse/jdt/core/dom/AST;

    move-result-object v0

    invoke-virtual {v0}, Lorg/eclipse/jdt/core/dom/AST;->apiLevel()I

    move-result v0

    const/4 v1, 0x3

    if-lt v0, v1, :cond_0

    .line 436
    sget-object v0, Lorg/eclipse/jdt/core/dom/MethodRefParameter;->VARARGS_PROPERTY:Lorg/eclipse/jdt/core/dom/SimplePropertyDescriptor;

    invoke-virtual {p0, p1, v0}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFlattener;->getBooleanAttribute(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 437
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFlattener;->result:Ljava/lang/StringBuffer;

    const-string v1, "..."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 438
    :cond_0
    sget-object v0, Lorg/eclipse/jdt/core/dom/MethodRefParameter;->NAME_PROPERTY:Lorg/eclipse/jdt/core/dom/ChildPropertyDescriptor;

    invoke-virtual {p0, p1, v0}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFlattener;->getChildNode(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;)Lorg/eclipse/jdt/core/dom/ASTNode;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 439
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFlattener;->result:Ljava/lang/StringBuffer;

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 440
    invoke-virtual {p1, p0}, Lorg/eclipse/jdt/core/dom/ASTNode;->accept(Lorg/eclipse/jdt/core/dom/ASTVisitor;)V

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public visit(Lorg/eclipse/jdt/core/dom/Modifier;)Z
    .locals 2

    .line 505
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFlattener;->result:Ljava/lang/StringBuffer;

    sget-object v1, Lorg/eclipse/jdt/core/dom/Modifier;->KEYWORD_PROPERTY:Lorg/eclipse/jdt/core/dom/SimplePropertyDescriptor;

    invoke-virtual {p0, p1, v1}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFlattener;->getAttribute(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/4 p1, 0x0

    return p1
.end method

.method public visit(Lorg/eclipse/jdt/core/dom/ModuleDeclaration;)Z
    .locals 7

    .line 234
    sget-object v0, Lorg/eclipse/jdt/core/dom/ModuleDeclaration;->JAVADOC_PROPERTY:Lorg/eclipse/jdt/core/dom/ChildPropertyDescriptor;

    invoke-virtual {p0, p1, v0}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFlattener;->getChildNode(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;)Lorg/eclipse/jdt/core/dom/ASTNode;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 235
    invoke-virtual {v0, p0}, Lorg/eclipse/jdt/core/dom/ASTNode;->accept(Lorg/eclipse/jdt/core/dom/ASTVisitor;)V

    .line 236
    :cond_0
    sget-object v3, Lorg/eclipse/jdt/core/dom/ModuleDeclaration;->ANNOTATIONS_PROPERTY:Lorg/eclipse/jdt/core/dom/ChildListPropertyDescriptor;

    const/16 v0, 0x20

    invoke-static {v0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lorg/eclipse/jdt/internal/compiler/util/Util;->EMPTY_STRING:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v6

    move-object v1, p0

    move-object v2, p1

    invoke-virtual/range {v1 .. v6}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFlattener;->visitList(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 237
    sget-object v0, Lorg/eclipse/jdt/core/dom/ModuleDeclaration;->OPEN_PROPERTY:Lorg/eclipse/jdt/core/dom/SimplePropertyDescriptor;

    invoke-virtual {p0, p1, v0}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFlattener;->getBooleanAttribute(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 238
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFlattener;->result:Ljava/lang/StringBuffer;

    const-string v1, "open "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 239
    :cond_1
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFlattener;->result:Ljava/lang/StringBuffer;

    const-string v1, "module "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 240
    sget-object v0, Lorg/eclipse/jdt/core/dom/ModuleDeclaration;->NAME_PROPERTY:Lorg/eclipse/jdt/core/dom/ChildPropertyDescriptor;

    invoke-virtual {p0, p1, v0}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFlattener;->getChildNode(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;)Lorg/eclipse/jdt/core/dom/ASTNode;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/eclipse/jdt/core/dom/ASTNode;->accept(Lorg/eclipse/jdt/core/dom/ASTVisitor;)V

    .line 241
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFlattener;->result:Ljava/lang/StringBuffer;

    const/16 v1, 0x7b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 242
    sget-object v0, Lorg/eclipse/jdt/core/dom/ModuleDeclaration;->MODULE_DIRECTIVES_PROPERTY:Lorg/eclipse/jdt/core/dom/ChildListPropertyDescriptor;

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFlattener;->visitList(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;Ljava/lang/String;)V

    .line 243
    iget-object p1, p0, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFlattener;->result:Ljava/lang/StringBuffer;

    const/16 v0, 0x7d

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    const/4 p1, 0x0

    return p1
.end method

.method public visit(Lorg/eclipse/jdt/core/dom/ModuleModifier;)Z
    .locals 2

    .line 506
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFlattener;->result:Ljava/lang/StringBuffer;

    sget-object v1, Lorg/eclipse/jdt/core/dom/ModuleModifier;->KEYWORD_PROPERTY:Lorg/eclipse/jdt/core/dom/SimplePropertyDescriptor;

    invoke-virtual {p0, p1, v1}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFlattener;->getAttribute(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/4 p1, 0x0

    return p1
.end method

.method public visit(Lorg/eclipse/jdt/core/dom/NameQualifiedType;)Z
    .locals 8

    .line 512
    sget-object v0, Lorg/eclipse/jdt/core/dom/NameQualifiedType;->QUALIFIER_PROPERTY:Lorg/eclipse/jdt/core/dom/ChildPropertyDescriptor;

    invoke-virtual {p0, p1, v0}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFlattener;->getChildNode(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;)Lorg/eclipse/jdt/core/dom/ASTNode;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/eclipse/jdt/core/dom/ASTNode;->accept(Lorg/eclipse/jdt/core/dom/ASTVisitor;)V

    .line 513
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFlattener;->result:Ljava/lang/StringBuffer;

    const/16 v1, 0x2e

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 514
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/ASTNode;->getAST()Lorg/eclipse/jdt/core/dom/AST;

    move-result-object v0

    invoke-virtual {v0}, Lorg/eclipse/jdt/core/dom/AST;->apiLevel()I

    move-result v0

    const/16 v1, 0x8

    if-lt v0, v1, :cond_0

    .line 515
    sget-object v4, Lorg/eclipse/jdt/core/dom/NameQualifiedType;->ANNOTATIONS_PROPERTY:Lorg/eclipse/jdt/core/dom/ChildListPropertyDescriptor;

    const/16 v0, 0x20

    invoke-static {v0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v5

    sget-object v6, Lorg/eclipse/jdt/internal/compiler/util/Util;->EMPTY_STRING:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v7

    move-object v2, p0

    move-object v3, p1

    invoke-virtual/range {v2 .. v7}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFlattener;->visitList(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 516
    :cond_0
    sget-object v0, Lorg/eclipse/jdt/core/dom/NameQualifiedType;->NAME_PROPERTY:Lorg/eclipse/jdt/core/dom/ChildPropertyDescriptor;

    invoke-virtual {p0, p1, v0}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFlattener;->getChildNode(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;)Lorg/eclipse/jdt/core/dom/ASTNode;

    move-result-object p1

    invoke-virtual {p1, p0}, Lorg/eclipse/jdt/core/dom/ASTNode;->accept(Lorg/eclipse/jdt/core/dom/ASTVisitor;)V

    const/4 p1, 0x0

    return p1
.end method

.method public visit(Lorg/eclipse/jdt/core/dom/NormalAnnotation;)Z
    .locals 2

    .line 507
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFlattener;->result:Ljava/lang/StringBuffer;

    const/16 v1, 0x40

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 508
    sget-object v0, Lorg/eclipse/jdt/core/dom/NormalAnnotation;->TYPE_NAME_PROPERTY:Lorg/eclipse/jdt/core/dom/ChildPropertyDescriptor;

    invoke-virtual {p0, p1, v0}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFlattener;->getChildNode(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;)Lorg/eclipse/jdt/core/dom/ASTNode;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/eclipse/jdt/core/dom/ASTNode;->accept(Lorg/eclipse/jdt/core/dom/ASTVisitor;)V

    .line 509
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFlattener;->result:Ljava/lang/StringBuffer;

    const/16 v1, 0x28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 510
    sget-object v0, Lorg/eclipse/jdt/core/dom/NormalAnnotation;->VALUES_PROPERTY:Lorg/eclipse/jdt/core/dom/ChildListPropertyDescriptor;

    const-string v1, ", "

    invoke-virtual {p0, p1, v0, v1}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFlattener;->visitList(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;Ljava/lang/String;)V

    .line 511
    iget-object p1, p0, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFlattener;->result:Ljava/lang/StringBuffer;

    const/16 v0, 0x29

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    const/4 p1, 0x0

    return p1
.end method

.method public visit(Lorg/eclipse/jdt/core/dom/NullLiteral;)Z
    .locals 1

    .line 253
    iget-object p1, p0, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFlattener;->result:Ljava/lang/StringBuffer;

    const-string v0, "null"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/4 p1, 0x0

    return p1
.end method

.method public visit(Lorg/eclipse/jdt/core/dom/NumberLiteral;)Z
    .locals 2

    .line 254
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFlattener;->result:Ljava/lang/StringBuffer;

    sget-object v1, Lorg/eclipse/jdt/core/dom/NumberLiteral;->TOKEN_PROPERTY:Lorg/eclipse/jdt/core/dom/SimplePropertyDescriptor;

    invoke-virtual {p0, p1, v1}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFlattener;->getAttribute(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/4 p1, 0x0

    return p1
.end method

.method public visit(Lorg/eclipse/jdt/core/dom/PackageDeclaration;)Z
    .locals 2

    .line 255
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/ASTNode;->getAST()Lorg/eclipse/jdt/core/dom/AST;

    move-result-object v0

    invoke-virtual {v0}, Lorg/eclipse/jdt/core/dom/AST;->apiLevel()I

    move-result v0

    const/4 v1, 0x3

    if-lt v0, v1, :cond_1

    .line 256
    sget-object v0, Lorg/eclipse/jdt/core/dom/PackageDeclaration;->JAVADOC_PROPERTY:Lorg/eclipse/jdt/core/dom/ChildPropertyDescriptor;

    invoke-virtual {p0, p1, v0}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFlattener;->getChildNode(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;)Lorg/eclipse/jdt/core/dom/ASTNode;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 257
    invoke-virtual {v0, p0}, Lorg/eclipse/jdt/core/dom/ASTNode;->accept(Lorg/eclipse/jdt/core/dom/ASTVisitor;)V

    .line 258
    :cond_0
    sget-object v0, Lorg/eclipse/jdt/core/dom/PackageDeclaration;->ANNOTATIONS_PROPERTY:Lorg/eclipse/jdt/core/dom/ChildListPropertyDescriptor;

    const/16 v1, 0x20

    invoke-static {v1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p1, v0, v1}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFlattener;->visitList(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;Ljava/lang/String;)V

    .line 259
    :cond_1
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFlattener;->result:Ljava/lang/StringBuffer;

    const-string v1, "package "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 260
    sget-object v0, Lorg/eclipse/jdt/core/dom/PackageDeclaration;->NAME_PROPERTY:Lorg/eclipse/jdt/core/dom/ChildPropertyDescriptor;

    invoke-virtual {p0, p1, v0}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFlattener;->getChildNode(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;)Lorg/eclipse/jdt/core/dom/ASTNode;

    move-result-object p1

    invoke-virtual {p1, p0}, Lorg/eclipse/jdt/core/dom/ASTNode;->accept(Lorg/eclipse/jdt/core/dom/ASTVisitor;)V

    .line 261
    iget-object p1, p0, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFlattener;->result:Ljava/lang/StringBuffer;

    const/16 v0, 0x3b

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    const/4 p1, 0x0

    return p1
.end method

.method public visit(Lorg/eclipse/jdt/core/dom/ParameterizedType;)Z
    .locals 2

    .line 517
    sget-object v0, Lorg/eclipse/jdt/core/dom/ParameterizedType;->TYPE_PROPERTY:Lorg/eclipse/jdt/core/dom/ChildPropertyDescriptor;

    invoke-virtual {p0, p1, v0}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFlattener;->getChildNode(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;)Lorg/eclipse/jdt/core/dom/ASTNode;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/eclipse/jdt/core/dom/ASTNode;->accept(Lorg/eclipse/jdt/core/dom/ASTVisitor;)V

    .line 518
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFlattener;->result:Ljava/lang/StringBuffer;

    const/16 v1, 0x3c

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 519
    sget-object v0, Lorg/eclipse/jdt/core/dom/ParameterizedType;->TYPE_ARGUMENTS_PROPERTY:Lorg/eclipse/jdt/core/dom/ChildListPropertyDescriptor;

    const-string v1, ", "

    invoke-virtual {p0, p1, v0, v1}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFlattener;->visitList(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;Ljava/lang/String;)V

    .line 520
    iget-object p1, p0, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFlattener;->result:Ljava/lang/StringBuffer;

    const/16 v0, 0x3e

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    const/4 p1, 0x0

    return p1
.end method

.method public visit(Lorg/eclipse/jdt/core/dom/ParenthesizedExpression;)Z
    .locals 2

    .line 262
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFlattener;->result:Ljava/lang/StringBuffer;

    const/16 v1, 0x28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 263
    sget-object v0, Lorg/eclipse/jdt/core/dom/ParenthesizedExpression;->EXPRESSION_PROPERTY:Lorg/eclipse/jdt/core/dom/ChildPropertyDescriptor;

    invoke-virtual {p0, p1, v0}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFlattener;->getChildNode(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;)Lorg/eclipse/jdt/core/dom/ASTNode;

    move-result-object p1

    invoke-virtual {p1, p0}, Lorg/eclipse/jdt/core/dom/ASTNode;->accept(Lorg/eclipse/jdt/core/dom/ASTVisitor;)V

    .line 264
    iget-object p1, p0, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFlattener;->result:Ljava/lang/StringBuffer;

    const/16 v0, 0x29

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    const/4 p1, 0x0

    return p1
.end method

.method public visit(Lorg/eclipse/jdt/core/dom/PostfixExpression;)Z
    .locals 2

    .line 265
    sget-object v0, Lorg/eclipse/jdt/core/dom/PostfixExpression;->OPERAND_PROPERTY:Lorg/eclipse/jdt/core/dom/ChildPropertyDescriptor;

    invoke-virtual {p0, p1, v0}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFlattener;->getChildNode(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;)Lorg/eclipse/jdt/core/dom/ASTNode;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/eclipse/jdt/core/dom/ASTNode;->accept(Lorg/eclipse/jdt/core/dom/ASTVisitor;)V

    .line 266
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFlattener;->result:Ljava/lang/StringBuffer;

    sget-object v1, Lorg/eclipse/jdt/core/dom/PostfixExpression;->OPERATOR_PROPERTY:Lorg/eclipse/jdt/core/dom/SimplePropertyDescriptor;

    invoke-virtual {p0, p1, v1}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFlattener;->getAttribute(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/4 p1, 0x0

    return p1
.end method

.method public visit(Lorg/eclipse/jdt/core/dom/PrefixExpression;)Z
    .locals 2

    .line 267
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFlattener;->result:Ljava/lang/StringBuffer;

    sget-object v1, Lorg/eclipse/jdt/core/dom/PrefixExpression;->OPERATOR_PROPERTY:Lorg/eclipse/jdt/core/dom/SimplePropertyDescriptor;

    invoke-virtual {p0, p1, v1}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFlattener;->getAttribute(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 268
    sget-object v0, Lorg/eclipse/jdt/core/dom/PrefixExpression;->OPERAND_PROPERTY:Lorg/eclipse/jdt/core/dom/ChildPropertyDescriptor;

    invoke-virtual {p0, p1, v0}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFlattener;->getChildNode(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;)Lorg/eclipse/jdt/core/dom/ASTNode;

    move-result-object p1

    invoke-virtual {p1, p0}, Lorg/eclipse/jdt/core/dom/ASTNode;->accept(Lorg/eclipse/jdt/core/dom/ASTVisitor;)V

    const/4 p1, 0x0

    return p1
.end method

.method public visit(Lorg/eclipse/jdt/core/dom/PrimitiveType;)Z
    .locals 8

    .line 274
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/ASTNode;->getAST()Lorg/eclipse/jdt/core/dom/AST;

    move-result-object v0

    invoke-virtual {v0}, Lorg/eclipse/jdt/core/dom/AST;->apiLevel()I

    move-result v0

    const/16 v1, 0x8

    if-lt v0, v1, :cond_0

    .line 275
    sget-object v4, Lorg/eclipse/jdt/core/dom/PrimitiveType;->ANNOTATIONS_PROPERTY:Lorg/eclipse/jdt/core/dom/ChildListPropertyDescriptor;

    const/16 v0, 0x20

    invoke-static {v0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v5

    sget-object v6, Lorg/eclipse/jdt/internal/compiler/util/Util;->EMPTY_STRING:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v7

    move-object v2, p0

    move-object v3, p1

    invoke-virtual/range {v2 .. v7}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFlattener;->visitList(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 276
    :cond_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFlattener;->result:Ljava/lang/StringBuffer;

    sget-object v1, Lorg/eclipse/jdt/core/dom/PrimitiveType;->PRIMITIVE_TYPE_CODE_PROPERTY:Lorg/eclipse/jdt/core/dom/SimplePropertyDescriptor;

    invoke-virtual {p0, p1, v1}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFlattener;->getAttribute(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/4 p1, 0x0

    return p1
.end method

.method public visit(Lorg/eclipse/jdt/core/dom/ProvidesDirective;)Z
    .locals 8

    .line 269
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFlattener;->result:Ljava/lang/StringBuffer;

    const-string v1, "provides "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 270
    sget-object v0, Lorg/eclipse/jdt/core/dom/ProvidesDirective;->NAME_PROPERTY:Lorg/eclipse/jdt/core/dom/ChildPropertyDescriptor;

    invoke-virtual {p0, p1, v0}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFlattener;->getChildNode(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;)Lorg/eclipse/jdt/core/dom/ASTNode;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/eclipse/jdt/core/dom/ASTNode;->accept(Lorg/eclipse/jdt/core/dom/ASTVisitor;)V

    .line 271
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFlattener;->result:Ljava/lang/StringBuffer;

    const-string v1, " with "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 272
    sget-object v4, Lorg/eclipse/jdt/core/dom/ProvidesDirective;->IMPLEMENTATIONS_PROPERTY:Lorg/eclipse/jdt/core/dom/ChildListPropertyDescriptor;

    sget-object v7, Lorg/eclipse/jdt/internal/compiler/util/Util;->EMPTY_STRING:Ljava/lang/String;

    sget-object v6, Lorg/eclipse/jdt/internal/compiler/util/Util;->COMMA_SEPARATOR:Ljava/lang/String;

    move-object v2, p0

    move-object v3, p1

    move-object v5, v7

    invoke-virtual/range {v2 .. v7}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFlattener;->visitList(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 273
    iget-object p1, p0, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFlattener;->result:Ljava/lang/StringBuffer;

    const/16 v0, 0x3b

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    const/4 p1, 0x0

    return p1
.end method

.method public visit(Lorg/eclipse/jdt/core/dom/QualifiedName;)Z
    .locals 2

    .line 277
    sget-object v0, Lorg/eclipse/jdt/core/dom/QualifiedName;->QUALIFIER_PROPERTY:Lorg/eclipse/jdt/core/dom/ChildPropertyDescriptor;

    invoke-virtual {p0, p1, v0}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFlattener;->getChildNode(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;)Lorg/eclipse/jdt/core/dom/ASTNode;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/eclipse/jdt/core/dom/ASTNode;->accept(Lorg/eclipse/jdt/core/dom/ASTVisitor;)V

    .line 278
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFlattener;->result:Ljava/lang/StringBuffer;

    const/16 v1, 0x2e

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 279
    sget-object v0, Lorg/eclipse/jdt/core/dom/QualifiedName;->NAME_PROPERTY:Lorg/eclipse/jdt/core/dom/ChildPropertyDescriptor;

    invoke-virtual {p0, p1, v0}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFlattener;->getChildNode(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;)Lorg/eclipse/jdt/core/dom/ASTNode;

    move-result-object p1

    invoke-virtual {p1, p0}, Lorg/eclipse/jdt/core/dom/ASTNode;->accept(Lorg/eclipse/jdt/core/dom/ASTVisitor;)V

    const/4 p1, 0x0

    return p1
.end method

.method public visit(Lorg/eclipse/jdt/core/dom/QualifiedType;)Z
    .locals 8

    .line 521
    sget-object v0, Lorg/eclipse/jdt/core/dom/QualifiedType;->QUALIFIER_PROPERTY:Lorg/eclipse/jdt/core/dom/ChildPropertyDescriptor;

    invoke-virtual {p0, p1, v0}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFlattener;->getChildNode(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;)Lorg/eclipse/jdt/core/dom/ASTNode;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/eclipse/jdt/core/dom/ASTNode;->accept(Lorg/eclipse/jdt/core/dom/ASTVisitor;)V

    .line 522
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFlattener;->result:Ljava/lang/StringBuffer;

    const/16 v1, 0x2e

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 523
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/ASTNode;->getAST()Lorg/eclipse/jdt/core/dom/AST;

    move-result-object v0

    invoke-virtual {v0}, Lorg/eclipse/jdt/core/dom/AST;->apiLevel()I

    move-result v0

    const/16 v1, 0x8

    if-lt v0, v1, :cond_0

    .line 524
    sget-object v4, Lorg/eclipse/jdt/core/dom/QualifiedType;->ANNOTATIONS_PROPERTY:Lorg/eclipse/jdt/core/dom/ChildListPropertyDescriptor;

    const/16 v0, 0x20

    invoke-static {v0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v5

    sget-object v6, Lorg/eclipse/jdt/internal/compiler/util/Util;->EMPTY_STRING:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v7

    move-object v2, p0

    move-object v3, p1

    invoke-virtual/range {v2 .. v7}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFlattener;->visitList(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 525
    :cond_0
    sget-object v0, Lorg/eclipse/jdt/core/dom/QualifiedType;->NAME_PROPERTY:Lorg/eclipse/jdt/core/dom/ChildPropertyDescriptor;

    invoke-virtual {p0, p1, v0}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFlattener;->getChildNode(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;)Lorg/eclipse/jdt/core/dom/ASTNode;

    move-result-object p1

    invoke-virtual {p1, p0}, Lorg/eclipse/jdt/core/dom/ASTNode;->accept(Lorg/eclipse/jdt/core/dom/ASTVisitor;)V

    const/4 p1, 0x0

    return p1
.end method

.method public visit(Lorg/eclipse/jdt/core/dom/RequiresDirective;)Z
    .locals 8

    .line 280
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFlattener;->result:Ljava/lang/StringBuffer;

    const-string v1, "requires "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 281
    sget-object v4, Lorg/eclipse/jdt/core/dom/RequiresDirective;->MODIFIERS_PROPERTY:Lorg/eclipse/jdt/core/dom/ChildListPropertyDescriptor;

    const/16 v0, 0x20

    invoke-static {v0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v5

    sget-object v6, Lorg/eclipse/jdt/internal/compiler/util/Util;->EMPTY_STRING:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v7

    move-object v2, p0

    move-object v3, p1

    invoke-virtual/range {v2 .. v7}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFlattener;->visitList(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 282
    sget-object v0, Lorg/eclipse/jdt/core/dom/RequiresDirective;->NAME_PROPERTY:Lorg/eclipse/jdt/core/dom/ChildPropertyDescriptor;

    invoke-virtual {p0, p1, v0}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFlattener;->getChildNode(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;)Lorg/eclipse/jdt/core/dom/ASTNode;

    move-result-object p1

    invoke-virtual {p1, p0}, Lorg/eclipse/jdt/core/dom/ASTNode;->accept(Lorg/eclipse/jdt/core/dom/ASTVisitor;)V

    .line 283
    iget-object p1, p0, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFlattener;->result:Ljava/lang/StringBuffer;

    const/16 v0, 0x3b

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    const/4 p1, 0x0

    return p1
.end method

.method public visit(Lorg/eclipse/jdt/core/dom/ReturnStatement;)Z
    .locals 2

    .line 284
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFlattener;->result:Ljava/lang/StringBuffer;

    const-string v1, "return"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 285
    sget-object v0, Lorg/eclipse/jdt/core/dom/ReturnStatement;->EXPRESSION_PROPERTY:Lorg/eclipse/jdt/core/dom/ChildPropertyDescriptor;

    invoke-virtual {p0, p1, v0}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFlattener;->getChildNode(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;)Lorg/eclipse/jdt/core/dom/ASTNode;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 286
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFlattener;->result:Ljava/lang/StringBuffer;

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 287
    invoke-virtual {p1, p0}, Lorg/eclipse/jdt/core/dom/ASTNode;->accept(Lorg/eclipse/jdt/core/dom/ASTVisitor;)V

    .line 288
    :cond_0
    iget-object p1, p0, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFlattener;->result:Ljava/lang/StringBuffer;

    const/16 v0, 0x3b

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    const/4 p1, 0x0

    return p1
.end method

.method public visit(Lorg/eclipse/jdt/core/dom/SimpleName;)Z
    .locals 2

    .line 289
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFlattener;->result:Ljava/lang/StringBuffer;

    sget-object v1, Lorg/eclipse/jdt/core/dom/SimpleName;->IDENTIFIER_PROPERTY:Lorg/eclipse/jdt/core/dom/SimplePropertyDescriptor;

    invoke-virtual {p0, p1, v1}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFlattener;->getAttribute(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    const/4 p1, 0x0

    return p1
.end method

.method public visit(Lorg/eclipse/jdt/core/dom/SimpleType;)Z
    .locals 8

    .line 290
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/ASTNode;->getAST()Lorg/eclipse/jdt/core/dom/AST;

    move-result-object v0

    invoke-virtual {v0}, Lorg/eclipse/jdt/core/dom/AST;->apiLevel()I

    move-result v0

    const/16 v1, 0x8

    if-lt v0, v1, :cond_0

    .line 291
    sget-object v4, Lorg/eclipse/jdt/core/dom/SimpleType;->ANNOTATIONS_PROPERTY:Lorg/eclipse/jdt/core/dom/ChildListPropertyDescriptor;

    const/16 v0, 0x20

    invoke-static {v0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v5

    sget-object v6, Lorg/eclipse/jdt/internal/compiler/util/Util;->EMPTY_STRING:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v7

    move-object v2, p0

    move-object v3, p1

    invoke-virtual/range {v2 .. v7}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFlattener;->visitList(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 292
    :cond_0
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/SimpleType;->getName()Lorg/eclipse/jdt/core/dom/Name;

    move-result-object p1

    invoke-virtual {p1, p0}, Lorg/eclipse/jdt/core/dom/ASTNode;->accept(Lorg/eclipse/jdt/core/dom/ASTVisitor;)V

    const/4 p1, 0x0

    return p1
.end method

.method public visit(Lorg/eclipse/jdt/core/dom/SingleMemberAnnotation;)Z
    .locals 2

    .line 526
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFlattener;->result:Ljava/lang/StringBuffer;

    const/16 v1, 0x40

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 527
    sget-object v0, Lorg/eclipse/jdt/core/dom/SingleMemberAnnotation;->TYPE_NAME_PROPERTY:Lorg/eclipse/jdt/core/dom/ChildPropertyDescriptor;

    invoke-virtual {p0, p1, v0}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFlattener;->getChildNode(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;)Lorg/eclipse/jdt/core/dom/ASTNode;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/eclipse/jdt/core/dom/ASTNode;->accept(Lorg/eclipse/jdt/core/dom/ASTVisitor;)V

    .line 528
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFlattener;->result:Ljava/lang/StringBuffer;

    const/16 v1, 0x28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 529
    sget-object v0, Lorg/eclipse/jdt/core/dom/SingleMemberAnnotation;->VALUE_PROPERTY:Lorg/eclipse/jdt/core/dom/ChildPropertyDescriptor;

    invoke-virtual {p0, p1, v0}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFlattener;->getChildNode(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;)Lorg/eclipse/jdt/core/dom/ASTNode;

    move-result-object p1

    invoke-virtual {p1, p0}, Lorg/eclipse/jdt/core/dom/ASTNode;->accept(Lorg/eclipse/jdt/core/dom/ASTVisitor;)V

    .line 530
    iget-object p1, p0, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFlattener;->result:Ljava/lang/StringBuffer;

    const/16 v0, 0x29

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    const/4 p1, 0x0

    return p1
.end method

.method public visit(Lorg/eclipse/jdt/core/dom/SingleVariableDeclaration;)Z
    .locals 9

    .line 293
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/ASTNode;->getAST()Lorg/eclipse/jdt/core/dom/AST;

    move-result-object v0

    invoke-virtual {v0}, Lorg/eclipse/jdt/core/dom/AST;->apiLevel()I

    move-result v0

    const/4 v1, 0x2

    const/16 v2, 0x20

    if-ne v0, v1, :cond_0

    .line 294
    sget-object v0, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFlattener;->INTERNAL_VARIABLE_MODIFIERS_PROPERTY:Lorg/eclipse/jdt/core/dom/SimplePropertyDescriptor;

    invoke-virtual {p0, p1, v0}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFlattener;->getIntAttribute(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;)I

    move-result v0

    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFlattener;->result:Ljava/lang/StringBuffer;

    invoke-static {v0, v1}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFlattener;->printModifiers(ILjava/lang/StringBuffer;)V

    goto :goto_0

    .line 295
    :cond_0
    sget-object v5, Lorg/eclipse/jdt/core/dom/SingleVariableDeclaration;->MODIFIERS2_PROPERTY:Lorg/eclipse/jdt/core/dom/ChildListPropertyDescriptor;

    invoke-static {v2}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v6

    sget-object v7, Lorg/eclipse/jdt/internal/compiler/util/Util;->EMPTY_STRING:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v8

    move-object v3, p0

    move-object v4, p1

    invoke-virtual/range {v3 .. v8}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFlattener;->visitList(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 296
    :goto_0
    sget-object v0, Lorg/eclipse/jdt/core/dom/SingleVariableDeclaration;->TYPE_PROPERTY:Lorg/eclipse/jdt/core/dom/ChildPropertyDescriptor;

    invoke-virtual {p0, p1, v0}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFlattener;->getChildNode(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;)Lorg/eclipse/jdt/core/dom/ASTNode;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/eclipse/jdt/core/dom/ASTNode;->accept(Lorg/eclipse/jdt/core/dom/ASTVisitor;)V

    .line 297
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/ASTNode;->getAST()Lorg/eclipse/jdt/core/dom/AST;

    move-result-object v0

    invoke-virtual {v0}, Lorg/eclipse/jdt/core/dom/AST;->apiLevel()I

    move-result v0

    const/16 v1, 0x8

    if-lt v0, v1, :cond_1

    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/SingleVariableDeclaration;->isVarargs()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 298
    sget-object v5, Lorg/eclipse/jdt/core/dom/SingleVariableDeclaration;->VARARGS_ANNOTATIONS_PROPERTY:Lorg/eclipse/jdt/core/dom/ChildListPropertyDescriptor;

    invoke-static {v2}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v6

    sget-object v7, Lorg/eclipse/jdt/internal/compiler/util/Util;->EMPTY_STRING:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v8

    move-object v3, p0

    move-object v4, p1

    invoke-virtual/range {v3 .. v8}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFlattener;->visitList(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 299
    :cond_1
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/ASTNode;->getAST()Lorg/eclipse/jdt/core/dom/AST;

    move-result-object v0

    invoke-virtual {v0}, Lorg/eclipse/jdt/core/dom/AST;->apiLevel()I

    move-result v0

    const/4 v1, 0x3

    if-lt v0, v1, :cond_2

    .line 300
    sget-object v0, Lorg/eclipse/jdt/core/dom/SingleVariableDeclaration;->VARARGS_PROPERTY:Lorg/eclipse/jdt/core/dom/SimplePropertyDescriptor;

    invoke-virtual {p0, p1, v0}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFlattener;->getBooleanAttribute(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 301
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFlattener;->result:Ljava/lang/StringBuffer;

    const-string v1, "..."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 302
    :cond_2
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFlattener;->result:Ljava/lang/StringBuffer;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 303
    sget-object v0, Lorg/eclipse/jdt/core/dom/SingleVariableDeclaration;->NAME_PROPERTY:Lorg/eclipse/jdt/core/dom/ChildPropertyDescriptor;

    invoke-virtual {p0, p1, v0}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFlattener;->getChildNode(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;)Lorg/eclipse/jdt/core/dom/ASTNode;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/eclipse/jdt/core/dom/ASTNode;->accept(Lorg/eclipse/jdt/core/dom/ASTVisitor;)V

    .line 304
    sget-object v0, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFlattener;->INTERNAL_VARIABLE_EXTRA_DIMENSIONS_PROPERTY:Lorg/eclipse/jdt/core/dom/SimplePropertyDescriptor;

    sget-object v1, Lorg/eclipse/jdt/core/dom/SingleVariableDeclaration;->EXTRA_DIMENSIONS2_PROPERTY:Lorg/eclipse/jdt/core/dom/ChildListPropertyDescriptor;

    invoke-direct {p0, p1, v0, v1}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFlattener;->visitExtraDimensions(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/SimplePropertyDescriptor;Lorg/eclipse/jdt/core/dom/ChildListPropertyDescriptor;)V

    .line 305
    sget-object v0, Lorg/eclipse/jdt/core/dom/SingleVariableDeclaration;->INITIALIZER_PROPERTY:Lorg/eclipse/jdt/core/dom/ChildPropertyDescriptor;

    invoke-virtual {p0, p1, v0}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFlattener;->getChildNode(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;)Lorg/eclipse/jdt/core/dom/ASTNode;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 306
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFlattener;->result:Ljava/lang/StringBuffer;

    const/16 v1, 0x3d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 307
    invoke-virtual {p1, p0}, Lorg/eclipse/jdt/core/dom/ASTNode;->accept(Lorg/eclipse/jdt/core/dom/ASTVisitor;)V

    :cond_3
    const/4 p1, 0x0

    return p1
.end method

.method public visit(Lorg/eclipse/jdt/core/dom/StringLiteral;)Z
    .locals 2

    .line 308
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFlattener;->result:Ljava/lang/StringBuffer;

    sget-object v1, Lorg/eclipse/jdt/core/dom/StringLiteral;->ESCAPED_VALUE_PROPERTY:Lorg/eclipse/jdt/core/dom/SimplePropertyDescriptor;

    invoke-virtual {p0, p1, v1}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFlattener;->getAttribute(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    const/4 p1, 0x0

    return p1
.end method

.method public visit(Lorg/eclipse/jdt/core/dom/SuperConstructorInvocation;)Z
    .locals 9

    .line 309
    sget-object v0, Lorg/eclipse/jdt/core/dom/SuperConstructorInvocation;->EXPRESSION_PROPERTY:Lorg/eclipse/jdt/core/dom/ChildPropertyDescriptor;

    invoke-virtual {p0, p1, v0}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFlattener;->getChildNode(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;)Lorg/eclipse/jdt/core/dom/ASTNode;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 310
    invoke-virtual {v0, p0}, Lorg/eclipse/jdt/core/dom/ASTNode;->accept(Lorg/eclipse/jdt/core/dom/ASTVisitor;)V

    .line 311
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFlattener;->result:Ljava/lang/StringBuffer;

    const/16 v1, 0x2e

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 312
    :cond_0
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/ASTNode;->getAST()Lorg/eclipse/jdt/core/dom/AST;

    move-result-object v0

    invoke-virtual {v0}, Lorg/eclipse/jdt/core/dom/AST;->apiLevel()I

    move-result v0

    const/4 v1, 0x3

    const/16 v2, 0x2c

    if-lt v0, v1, :cond_1

    .line 313
    sget-object v5, Lorg/eclipse/jdt/core/dom/SuperConstructorInvocation;->TYPE_ARGUMENTS_PROPERTY:Lorg/eclipse/jdt/core/dom/ChildListPropertyDescriptor;

    invoke-static {v2}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v6

    const/16 v0, 0x3c

    invoke-static {v0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v7

    const/16 v0, 0x3e

    invoke-static {v0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v8

    move-object v3, p0

    move-object v4, p1

    invoke-virtual/range {v3 .. v8}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFlattener;->visitList(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 314
    :cond_1
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFlattener;->result:Ljava/lang/StringBuffer;

    const-string v1, "super("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 315
    sget-object v0, Lorg/eclipse/jdt/core/dom/SuperConstructorInvocation;->ARGUMENTS_PROPERTY:Lorg/eclipse/jdt/core/dom/ChildListPropertyDescriptor;

    invoke-static {v2}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p1, v0, v1}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFlattener;->visitList(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;Ljava/lang/String;)V

    .line 316
    iget-object p1, p0, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFlattener;->result:Ljava/lang/StringBuffer;

    const-string v0, ");"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/4 p1, 0x0

    return p1
.end method

.method public visit(Lorg/eclipse/jdt/core/dom/SuperFieldAccess;)Z
    .locals 2

    .line 317
    sget-object v0, Lorg/eclipse/jdt/core/dom/SuperFieldAccess;->QUALIFIER_PROPERTY:Lorg/eclipse/jdt/core/dom/ChildPropertyDescriptor;

    invoke-virtual {p0, p1, v0}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFlattener;->getChildNode(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;)Lorg/eclipse/jdt/core/dom/ASTNode;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 318
    invoke-virtual {v0, p0}, Lorg/eclipse/jdt/core/dom/ASTNode;->accept(Lorg/eclipse/jdt/core/dom/ASTVisitor;)V

    .line 319
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFlattener;->result:Ljava/lang/StringBuffer;

    const/16 v1, 0x2e

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 320
    :cond_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFlattener;->result:Ljava/lang/StringBuffer;

    const-string v1, "super."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 321
    sget-object v0, Lorg/eclipse/jdt/core/dom/SuperFieldAccess;->NAME_PROPERTY:Lorg/eclipse/jdt/core/dom/ChildPropertyDescriptor;

    invoke-virtual {p0, p1, v0}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFlattener;->getChildNode(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;)Lorg/eclipse/jdt/core/dom/ASTNode;

    move-result-object p1

    invoke-virtual {p1, p0}, Lorg/eclipse/jdt/core/dom/ASTNode;->accept(Lorg/eclipse/jdt/core/dom/ASTVisitor;)V

    const/4 p1, 0x0

    return p1
.end method

.method public visit(Lorg/eclipse/jdt/core/dom/SuperMethodInvocation;)Z
    .locals 9

    .line 322
    sget-object v0, Lorg/eclipse/jdt/core/dom/SuperMethodInvocation;->QUALIFIER_PROPERTY:Lorg/eclipse/jdt/core/dom/ChildPropertyDescriptor;

    invoke-virtual {p0, p1, v0}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFlattener;->getChildNode(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;)Lorg/eclipse/jdt/core/dom/ASTNode;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 323
    invoke-virtual {v0, p0}, Lorg/eclipse/jdt/core/dom/ASTNode;->accept(Lorg/eclipse/jdt/core/dom/ASTVisitor;)V

    .line 324
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFlattener;->result:Ljava/lang/StringBuffer;

    const/16 v1, 0x2e

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 325
    :cond_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFlattener;->result:Ljava/lang/StringBuffer;

    const-string v1, "super."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 326
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/ASTNode;->getAST()Lorg/eclipse/jdt/core/dom/AST;

    move-result-object v0

    invoke-virtual {v0}, Lorg/eclipse/jdt/core/dom/AST;->apiLevel()I

    move-result v0

    const/4 v1, 0x3

    const/16 v2, 0x2c

    if-lt v0, v1, :cond_1

    .line 327
    sget-object v5, Lorg/eclipse/jdt/core/dom/SuperMethodInvocation;->TYPE_ARGUMENTS_PROPERTY:Lorg/eclipse/jdt/core/dom/ChildListPropertyDescriptor;

    invoke-static {v2}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v6

    const/16 v0, 0x3c

    invoke-static {v0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v7

    const/16 v0, 0x3e

    invoke-static {v0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v8

    move-object v3, p0

    move-object v4, p1

    invoke-virtual/range {v3 .. v8}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFlattener;->visitList(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 328
    :cond_1
    sget-object v0, Lorg/eclipse/jdt/core/dom/SuperMethodInvocation;->NAME_PROPERTY:Lorg/eclipse/jdt/core/dom/ChildPropertyDescriptor;

    invoke-virtual {p0, p1, v0}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFlattener;->getChildNode(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;)Lorg/eclipse/jdt/core/dom/ASTNode;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/eclipse/jdt/core/dom/ASTNode;->accept(Lorg/eclipse/jdt/core/dom/ASTVisitor;)V

    .line 329
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFlattener;->result:Ljava/lang/StringBuffer;

    const/16 v1, 0x28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 330
    sget-object v0, Lorg/eclipse/jdt/core/dom/SuperMethodInvocation;->ARGUMENTS_PROPERTY:Lorg/eclipse/jdt/core/dom/ChildListPropertyDescriptor;

    invoke-static {v2}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p1, v0, v1}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFlattener;->visitList(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;Ljava/lang/String;)V

    .line 331
    iget-object p1, p0, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFlattener;->result:Ljava/lang/StringBuffer;

    const/16 v0, 0x29

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    const/4 p1, 0x0

    return p1
.end method

.method public visit(Lorg/eclipse/jdt/core/dom/SuperMethodReference;)Z
    .locals 8

    .line 531
    sget-object v0, Lorg/eclipse/jdt/core/dom/SuperMethodReference;->QUALIFIER_PROPERTY:Lorg/eclipse/jdt/core/dom/ChildPropertyDescriptor;

    invoke-virtual {p0, p1, v0}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFlattener;->getChildNode(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;)Lorg/eclipse/jdt/core/dom/ASTNode;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 532
    invoke-virtual {v0, p0}, Lorg/eclipse/jdt/core/dom/ASTNode;->accept(Lorg/eclipse/jdt/core/dom/ASTVisitor;)V

    .line 533
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFlattener;->result:Ljava/lang/StringBuffer;

    const/16 v1, 0x2e

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 534
    :cond_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFlattener;->result:Ljava/lang/StringBuffer;

    const-string v1, "super ::"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 535
    sget-object v4, Lorg/eclipse/jdt/core/dom/SuperMethodReference;->TYPE_ARGUMENTS_PROPERTY:Lorg/eclipse/jdt/core/dom/ChildListPropertyDescriptor;

    sget-object v5, Lorg/eclipse/jdt/internal/compiler/util/Util;->EMPTY_STRING:Ljava/lang/String;

    const/16 v0, 0x3c

    invoke-static {v0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v6

    const/16 v0, 0x3e

    invoke-static {v0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v7

    move-object v2, p0

    move-object v3, p1

    invoke-virtual/range {v2 .. v7}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFlattener;->visitList(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 536
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/SuperMethodReference;->getName()Lorg/eclipse/jdt/core/dom/SimpleName;

    move-result-object p1

    invoke-virtual {p1, p0}, Lorg/eclipse/jdt/core/dom/ASTNode;->accept(Lorg/eclipse/jdt/core/dom/ASTVisitor;)V

    const/4 p1, 0x0

    return p1
.end method

.method public visit(Lorg/eclipse/jdt/core/dom/SwitchCase;)Z
    .locals 5

    .line 332
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/ASTNode;->getAST()Lorg/eclipse/jdt/core/dom/AST;

    move-result-object v0

    invoke-virtual {v0}, Lorg/eclipse/jdt/core/dom/AST;->apiLevel()I

    move-result v0

    const/16 v1, 0xc

    const-string v2, "case "

    const-string v3, "default"

    if-lt v0, v1, :cond_5

    .line 333
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/SwitchCase;->isDefault()Z

    move-result v0

    const-string v1, ":"

    const-string v4, " ->"

    if-eqz v0, :cond_1

    .line 334
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFlattener;->result:Ljava/lang/StringBuffer;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 335
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFlattener;->result:Ljava/lang/StringBuffer;

    sget-object v2, Lorg/eclipse/jdt/core/dom/SwitchCase;->SWITCH_LABELED_RULE_PROPERTY:Lorg/eclipse/jdt/core/dom/SimplePropertyDescriptor;

    invoke-virtual {p0, p1, v2}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFlattener;->getBooleanAttribute(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;)Z

    move-result p1

    if-eqz p1, :cond_0

    move-object v1, v4

    :cond_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_3

    .line 336
    :cond_1
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFlattener;->result:Ljava/lang/StringBuffer;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 337
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/SwitchCase;->expressions()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_3

    .line 338
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFlattener;->result:Ljava/lang/StringBuffer;

    sget-object v2, Lorg/eclipse/jdt/core/dom/SwitchCase;->SWITCH_LABELED_RULE_PROPERTY:Lorg/eclipse/jdt/core/dom/SimplePropertyDescriptor;

    invoke-virtual {p0, p1, v2}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFlattener;->getBooleanAttribute(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;)Z

    move-result p1

    if-eqz p1, :cond_2

    move-object v1, v4

    :cond_2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_3

    .line 339
    :cond_3
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/eclipse/jdt/core/dom/Expression;

    .line 340
    invoke-virtual {v2, p0}, Lorg/eclipse/jdt/core/dom/ASTNode;->accept(Lorg/eclipse/jdt/core/dom/ASTVisitor;)V

    .line 341
    iget-object v2, p0, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFlattener;->result:Ljava/lang/StringBuffer;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    const-string v3, ", "

    goto :goto_1

    :cond_4
    const-string v3, ""

    :goto_1
    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 342
    :cond_5
    sget-object v0, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFlattener;->INTERNAL_SWITCH_EXPRESSION_PROPERTY:Lorg/eclipse/jdt/core/dom/ChildPropertyDescriptor;

    invoke-virtual {p0, p1, v0}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFlattener;->getChildNode(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;)Lorg/eclipse/jdt/core/dom/ASTNode;

    move-result-object p1

    if-nez p1, :cond_6

    .line 343
    iget-object p1, p0, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFlattener;->result:Ljava/lang/StringBuffer;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_2

    .line 344
    :cond_6
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFlattener;->result:Ljava/lang/StringBuffer;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 345
    invoke-virtual {p1, p0}, Lorg/eclipse/jdt/core/dom/ASTNode;->accept(Lorg/eclipse/jdt/core/dom/ASTVisitor;)V

    .line 346
    :goto_2
    iget-object p1, p0, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFlattener;->result:Ljava/lang/StringBuffer;

    const/16 v0, 0x3a

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :goto_3
    const/4 p1, 0x0

    return p1
.end method

.method public visit(Lorg/eclipse/jdt/core/dom/SwitchExpression;)Z
    .locals 0

    .line 347
    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFlattener;->visitSwitchNode(Lorg/eclipse/jdt/core/dom/ASTNode;)V

    const/4 p1, 0x0

    return p1
.end method

.method public visit(Lorg/eclipse/jdt/core/dom/SwitchStatement;)Z
    .locals 0

    .line 348
    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFlattener;->visitSwitchNode(Lorg/eclipse/jdt/core/dom/ASTNode;)V

    const/4 p1, 0x0

    return p1
.end method

.method public visit(Lorg/eclipse/jdt/core/dom/SynchronizedStatement;)Z
    .locals 2

    .line 349
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFlattener;->result:Ljava/lang/StringBuffer;

    const-string v1, "synchronized ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 350
    sget-object v0, Lorg/eclipse/jdt/core/dom/SynchronizedStatement;->EXPRESSION_PROPERTY:Lorg/eclipse/jdt/core/dom/ChildPropertyDescriptor;

    invoke-virtual {p0, p1, v0}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFlattener;->getChildNode(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;)Lorg/eclipse/jdt/core/dom/ASTNode;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/eclipse/jdt/core/dom/ASTNode;->accept(Lorg/eclipse/jdt/core/dom/ASTVisitor;)V

    .line 351
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFlattener;->result:Ljava/lang/StringBuffer;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 352
    sget-object v0, Lorg/eclipse/jdt/core/dom/SynchronizedStatement;->BODY_PROPERTY:Lorg/eclipse/jdt/core/dom/ChildPropertyDescriptor;

    invoke-virtual {p0, p1, v0}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFlattener;->getChildNode(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;)Lorg/eclipse/jdt/core/dom/ASTNode;

    move-result-object p1

    invoke-virtual {p1, p0}, Lorg/eclipse/jdt/core/dom/ASTNode;->accept(Lorg/eclipse/jdt/core/dom/ASTVisitor;)V

    const/4 p1, 0x0

    return p1
.end method

.method public visit(Lorg/eclipse/jdt/core/dom/TagElement;)Z
    .locals 6

    .line 441
    sget-object v0, Lorg/eclipse/jdt/core/dom/TagElement;->TAG_NAME_PROPERTY:Lorg/eclipse/jdt/core/dom/SimplePropertyDescriptor;

    invoke-virtual {p0, p1, v0}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFlattener;->getAttribute(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 442
    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFlattener;->result:Ljava/lang/StringBuffer;

    move-object v2, v0

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 443
    :cond_0
    sget-object v1, Lorg/eclipse/jdt/core/dom/TagElement;->FRAGMENTS_PROPERTY:Lorg/eclipse/jdt/core/dom/ChildListPropertyDescriptor;

    invoke-virtual {p0, p1, v1}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFlattener;->getChildList(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;)Ljava/util/List;

    move-result-object p1

    const/4 v1, 0x0

    move v2, v1

    .line 444
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-lt v2, v3, :cond_1

    return v1

    :cond_1
    if-gtz v2, :cond_2

    if-eqz v0, :cond_3

    .line 445
    :cond_2
    iget-object v3, p0, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFlattener;->result:Ljava/lang/StringBuffer;

    const/16 v4, 0x20

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 446
    :cond_3
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/eclipse/jdt/core/dom/ASTNode;

    .line 447
    instance-of v4, v3, Lorg/eclipse/jdt/core/dom/TagElement;

    if-eqz v4, :cond_4

    .line 448
    iget-object v4, p0, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFlattener;->result:Ljava/lang/StringBuffer;

    const/16 v5, 0x7b

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 449
    invoke-virtual {v3, p0}, Lorg/eclipse/jdt/core/dom/ASTNode;->accept(Lorg/eclipse/jdt/core/dom/ASTVisitor;)V

    .line 450
    iget-object v3, p0, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFlattener;->result:Ljava/lang/StringBuffer;

    const/16 v4, 0x7d

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 451
    :cond_4
    invoke-virtual {v3, p0}, Lorg/eclipse/jdt/core/dom/ASTNode;->accept(Lorg/eclipse/jdt/core/dom/ASTVisitor;)V

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public visit(Lorg/eclipse/jdt/core/dom/TextElement;)Z
    .locals 2

    .line 452
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFlattener;->result:Ljava/lang/StringBuffer;

    sget-object v1, Lorg/eclipse/jdt/core/dom/TextElement;->TEXT_PROPERTY:Lorg/eclipse/jdt/core/dom/SimplePropertyDescriptor;

    invoke-virtual {p0, p1, v1}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFlattener;->getAttribute(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    const/4 p1, 0x0

    return p1
.end method

.method public visit(Lorg/eclipse/jdt/core/dom/ThisExpression;)Z
    .locals 1

    .line 353
    sget-object v0, Lorg/eclipse/jdt/core/dom/ThisExpression;->QUALIFIER_PROPERTY:Lorg/eclipse/jdt/core/dom/ChildPropertyDescriptor;

    invoke-virtual {p0, p1, v0}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFlattener;->getChildNode(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;)Lorg/eclipse/jdt/core/dom/ASTNode;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 354
    invoke-virtual {p1, p0}, Lorg/eclipse/jdt/core/dom/ASTNode;->accept(Lorg/eclipse/jdt/core/dom/ASTVisitor;)V

    .line 355
    iget-object p1, p0, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFlattener;->result:Ljava/lang/StringBuffer;

    const/16 v0, 0x2e

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 356
    :cond_0
    iget-object p1, p0, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFlattener;->result:Ljava/lang/StringBuffer;

    const-string v0, "this"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/4 p1, 0x0

    return p1
.end method

.method public visit(Lorg/eclipse/jdt/core/dom/ThrowStatement;)Z
    .locals 2

    .line 357
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFlattener;->result:Ljava/lang/StringBuffer;

    const-string v1, "throw "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 358
    sget-object v0, Lorg/eclipse/jdt/core/dom/ThrowStatement;->EXPRESSION_PROPERTY:Lorg/eclipse/jdt/core/dom/ChildPropertyDescriptor;

    invoke-virtual {p0, p1, v0}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFlattener;->getChildNode(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;)Lorg/eclipse/jdt/core/dom/ASTNode;

    move-result-object p1

    invoke-virtual {p1, p0}, Lorg/eclipse/jdt/core/dom/ASTNode;->accept(Lorg/eclipse/jdt/core/dom/ASTVisitor;)V

    .line 359
    iget-object p1, p0, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFlattener;->result:Ljava/lang/StringBuffer;

    const/16 v0, 0x3b

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    const/4 p1, 0x0

    return p1
.end method

.method public visit(Lorg/eclipse/jdt/core/dom/TryStatement;)Z
    .locals 7

    .line 360
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFlattener;->result:Ljava/lang/StringBuffer;

    const-string v1, "try "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 361
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/ASTNode;->getAST()Lorg/eclipse/jdt/core/dom/AST;

    move-result-object v0

    invoke-virtual {v0}, Lorg/eclipse/jdt/core/dom/AST;->apiLevel()I

    move-result v0

    const/4 v1, 0x4

    if-lt v0, v1, :cond_1

    const/16 v1, 0x9

    if-ge v0, v1, :cond_0

    .line 362
    sget-object v0, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFlattener;->INTERNAL_TRY_STATEMENT_RESOURCES_PROPERTY:Lorg/eclipse/jdt/core/dom/ChildListPropertyDescriptor;

    :goto_0
    move-object v3, v0

    goto :goto_1

    :cond_0
    sget-object v0, Lorg/eclipse/jdt/core/dom/TryStatement;->RESOURCES2_PROPERTY:Lorg/eclipse/jdt/core/dom/ChildListPropertyDescriptor;

    goto :goto_0

    :goto_1
    const/16 v0, 0x3b

    .line 363
    invoke-static {v0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v4

    const/16 v0, 0x28

    invoke-static {v0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v5

    const/16 v0, 0x29

    invoke-static {v0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v6

    move-object v1, p0

    move-object v2, p1

    invoke-virtual/range {v1 .. v6}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFlattener;->visitList(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 364
    :cond_1
    sget-object v0, Lorg/eclipse/jdt/core/dom/TryStatement;->BODY_PROPERTY:Lorg/eclipse/jdt/core/dom/ChildPropertyDescriptor;

    invoke-virtual {p0, p1, v0}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFlattener;->getChildNode(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;)Lorg/eclipse/jdt/core/dom/ASTNode;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/eclipse/jdt/core/dom/ASTNode;->accept(Lorg/eclipse/jdt/core/dom/ASTVisitor;)V

    .line 365
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFlattener;->result:Ljava/lang/StringBuffer;

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 366
    sget-object v0, Lorg/eclipse/jdt/core/dom/TryStatement;->CATCH_CLAUSES_PROPERTY:Lorg/eclipse/jdt/core/dom/ChildListPropertyDescriptor;

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFlattener;->visitList(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;Ljava/lang/String;)V

    .line 367
    sget-object v0, Lorg/eclipse/jdt/core/dom/TryStatement;->FINALLY_PROPERTY:Lorg/eclipse/jdt/core/dom/ChildPropertyDescriptor;

    invoke-virtual {p0, p1, v0}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFlattener;->getChildNode(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;)Lorg/eclipse/jdt/core/dom/ASTNode;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 368
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFlattener;->result:Ljava/lang/StringBuffer;

    const-string v1, " finally "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 369
    invoke-virtual {p1, p0}, Lorg/eclipse/jdt/core/dom/ASTNode;->accept(Lorg/eclipse/jdt/core/dom/ASTVisitor;)V

    :cond_2
    const/4 p1, 0x0

    return p1
.end method

.method public visit(Lorg/eclipse/jdt/core/dom/TypeDeclaration;)Z
    .locals 13

    .line 370
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/ASTNode;->getAST()Lorg/eclipse/jdt/core/dom/AST;

    move-result-object v0

    invoke-virtual {v0}, Lorg/eclipse/jdt/core/dom/AST;->apiLevel()I

    move-result v0

    .line 371
    sget-object v1, Lorg/eclipse/jdt/core/dom/TypeDeclaration;->JAVADOC_PROPERTY:Lorg/eclipse/jdt/core/dom/ChildPropertyDescriptor;

    invoke-virtual {p0, p1, v1}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFlattener;->getChildNode(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;)Lorg/eclipse/jdt/core/dom/ASTNode;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 372
    invoke-virtual {v1, p0}, Lorg/eclipse/jdt/core/dom/ASTNode;->accept(Lorg/eclipse/jdt/core/dom/ASTVisitor;)V

    :cond_0
    const/4 v1, 0x2

    const/16 v2, 0x20

    if-ne v0, v1, :cond_1

    .line 373
    sget-object v3, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFlattener;->INTERNAL_TYPE_MODIFIERS_PROPERTY:Lorg/eclipse/jdt/core/dom/SimplePropertyDescriptor;

    invoke-virtual {p0, p1, v3}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFlattener;->getIntAttribute(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;)I

    move-result v3

    iget-object v4, p0, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFlattener;->result:Ljava/lang/StringBuffer;

    invoke-static {v3, v4}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFlattener;->printModifiers(ILjava/lang/StringBuffer;)V

    goto :goto_0

    .line 374
    :cond_1
    sget-object v7, Lorg/eclipse/jdt/core/dom/TypeDeclaration;->MODIFIERS2_PROPERTY:Lorg/eclipse/jdt/core/dom/ChildListPropertyDescriptor;

    invoke-static {v2}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v8

    sget-object v9, Lorg/eclipse/jdt/internal/compiler/util/Util;->EMPTY_STRING:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v10

    move-object v5, p0

    move-object v6, p1

    invoke-virtual/range {v5 .. v10}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFlattener;->visitList(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 375
    :goto_0
    sget-object v3, Lorg/eclipse/jdt/core/dom/TypeDeclaration;->INTERFACE_PROPERTY:Lorg/eclipse/jdt/core/dom/SimplePropertyDescriptor;

    invoke-virtual {p0, p1, v3}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFlattener;->getBooleanAttribute(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;)Z

    move-result v3

    .line 376
    iget-object v4, p0, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFlattener;->result:Ljava/lang/StringBuffer;

    if-eqz v3, :cond_2

    const-string v5, "interface "

    goto :goto_1

    :cond_2
    const-string v5, "class "

    :goto_1
    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 377
    sget-object v4, Lorg/eclipse/jdt/core/dom/TypeDeclaration;->NAME_PROPERTY:Lorg/eclipse/jdt/core/dom/ChildPropertyDescriptor;

    invoke-virtual {p0, p1, v4}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFlattener;->getChildNode(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;)Lorg/eclipse/jdt/core/dom/ASTNode;

    move-result-object v4

    invoke-virtual {v4, p0}, Lorg/eclipse/jdt/core/dom/ASTNode;->accept(Lorg/eclipse/jdt/core/dom/ASTVisitor;)V

    const/4 v4, 0x3

    const/16 v5, 0x2c

    if-lt v0, v4, :cond_3

    .line 378
    sget-object v8, Lorg/eclipse/jdt/core/dom/TypeDeclaration;->TYPE_PARAMETERS_PROPERTY:Lorg/eclipse/jdt/core/dom/ChildListPropertyDescriptor;

    invoke-static {v5}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v9

    const/16 v4, 0x3c

    invoke-static {v4}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v10

    const/16 v4, 0x3e

    invoke-static {v4}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v11

    move-object v6, p0

    move-object v7, p1

    invoke-virtual/range {v6 .. v11}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFlattener;->visitList(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 379
    :cond_3
    iget-object v4, p0, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFlattener;->result:Ljava/lang/StringBuffer;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    if-ne v0, v1, :cond_4

    .line 380
    sget-object v4, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFlattener;->INTERNAL_TYPE_SUPERCLASS_PROPERTY:Lorg/eclipse/jdt/core/dom/ChildPropertyDescriptor;

    goto :goto_2

    :cond_4
    sget-object v4, Lorg/eclipse/jdt/core/dom/TypeDeclaration;->SUPERCLASS_TYPE_PROPERTY:Lorg/eclipse/jdt/core/dom/ChildPropertyDescriptor;

    .line 381
    :goto_2
    invoke-virtual {p0, p1, v4}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFlattener;->getChildNode(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;)Lorg/eclipse/jdt/core/dom/ASTNode;

    move-result-object v4

    .line 382
    const-string v6, "extends "

    if-eqz v4, :cond_5

    .line 383
    iget-object v7, p0, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFlattener;->result:Ljava/lang/StringBuffer;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 384
    invoke-virtual {v4, p0}, Lorg/eclipse/jdt/core/dom/ASTNode;->accept(Lorg/eclipse/jdt/core/dom/ASTVisitor;)V

    .line 385
    iget-object v4, p0, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFlattener;->result:Ljava/lang/StringBuffer;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_5
    if-ne v0, v1, :cond_6

    .line 386
    sget-object v0, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFlattener;->INTERNAL_TYPE_SUPER_INTERFACES_PROPERTY:Lorg/eclipse/jdt/core/dom/ChildListPropertyDescriptor;

    :goto_3
    move-object v9, v0

    goto :goto_4

    :cond_6
    sget-object v0, Lorg/eclipse/jdt/core/dom/TypeDeclaration;->SUPER_INTERFACE_TYPES_PROPERTY:Lorg/eclipse/jdt/core/dom/ChildListPropertyDescriptor;

    goto :goto_3

    :goto_4
    if-eqz v3, :cond_7

    :goto_5
    move-object v11, v6

    goto :goto_6

    .line 387
    :cond_7
    const-string v6, "implements "

    goto :goto_5

    .line 388
    :goto_6
    invoke-static {v5}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v10

    sget-object v12, Lorg/eclipse/jdt/internal/compiler/util/Util;->EMPTY_STRING:Ljava/lang/String;

    move-object v7, p0

    move-object v8, p1

    invoke-virtual/range {v7 .. v12}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFlattener;->visitList(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 389
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFlattener;->result:Ljava/lang/StringBuffer;

    const/16 v1, 0x7b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 390
    sget-object v0, Lorg/eclipse/jdt/core/dom/TypeDeclaration;->BODY_DECLARATIONS_PROPERTY:Lorg/eclipse/jdt/core/dom/ChildListPropertyDescriptor;

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFlattener;->visitList(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;Ljava/lang/String;)V

    .line 391
    iget-object p1, p0, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFlattener;->result:Ljava/lang/StringBuffer;

    const/16 v0, 0x7d

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    const/4 p1, 0x0

    return p1
.end method

.method public visit(Lorg/eclipse/jdt/core/dom/TypeDeclarationStatement;)Z
    .locals 2

    .line 392
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/ASTNode;->getAST()Lorg/eclipse/jdt/core/dom/AST;

    move-result-object v0

    invoke-virtual {v0}, Lorg/eclipse/jdt/core/dom/AST;->apiLevel()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 393
    sget-object v0, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFlattener;->INTERNAL_TDS_TYPE_DECLARATION_PROPERTY:Lorg/eclipse/jdt/core/dom/ChildPropertyDescriptor;

    invoke-virtual {p0, p1, v0}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFlattener;->getChildNode(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;)Lorg/eclipse/jdt/core/dom/ASTNode;

    move-result-object p1

    invoke-virtual {p1, p0}, Lorg/eclipse/jdt/core/dom/ASTNode;->accept(Lorg/eclipse/jdt/core/dom/ASTVisitor;)V

    goto :goto_0

    .line 394
    :cond_0
    sget-object v0, Lorg/eclipse/jdt/core/dom/TypeDeclarationStatement;->DECLARATION_PROPERTY:Lorg/eclipse/jdt/core/dom/ChildPropertyDescriptor;

    invoke-virtual {p0, p1, v0}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFlattener;->getChildNode(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;)Lorg/eclipse/jdt/core/dom/ASTNode;

    move-result-object p1

    invoke-virtual {p1, p0}, Lorg/eclipse/jdt/core/dom/ASTNode;->accept(Lorg/eclipse/jdt/core/dom/ASTVisitor;)V

    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public visit(Lorg/eclipse/jdt/core/dom/TypeLiteral;)Z
    .locals 1

    .line 395
    sget-object v0, Lorg/eclipse/jdt/core/dom/TypeLiteral;->TYPE_PROPERTY:Lorg/eclipse/jdt/core/dom/ChildPropertyDescriptor;

    invoke-virtual {p0, p1, v0}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFlattener;->getChildNode(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;)Lorg/eclipse/jdt/core/dom/ASTNode;

    move-result-object p1

    invoke-virtual {p1, p0}, Lorg/eclipse/jdt/core/dom/ASTNode;->accept(Lorg/eclipse/jdt/core/dom/ASTVisitor;)V

    .line 396
    iget-object p1, p0, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFlattener;->result:Ljava/lang/StringBuffer;

    const-string v0, ".class"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/4 p1, 0x0

    return p1
.end method

.method public visit(Lorg/eclipse/jdt/core/dom/TypeMethodReference;)Z
    .locals 8

    .line 537
    sget-object v0, Lorg/eclipse/jdt/core/dom/TypeMethodReference;->TYPE_PROPERTY:Lorg/eclipse/jdt/core/dom/ChildPropertyDescriptor;

    invoke-virtual {p0, p1, v0}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFlattener;->getChildNode(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;)Lorg/eclipse/jdt/core/dom/ASTNode;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/eclipse/jdt/core/dom/ASTNode;->accept(Lorg/eclipse/jdt/core/dom/ASTVisitor;)V

    .line 538
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFlattener;->result:Ljava/lang/StringBuffer;

    const-string v1, "::"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 539
    sget-object v4, Lorg/eclipse/jdt/core/dom/TypeMethodReference;->TYPE_ARGUMENTS_PROPERTY:Lorg/eclipse/jdt/core/dom/ChildListPropertyDescriptor;

    sget-object v5, Lorg/eclipse/jdt/internal/compiler/util/Util;->EMPTY_STRING:Ljava/lang/String;

    const/16 v0, 0x3c

    invoke-static {v0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v6

    const/16 v0, 0x3e

    invoke-static {v0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v7

    move-object v2, p0

    move-object v3, p1

    invoke-virtual/range {v2 .. v7}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFlattener;->visitList(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 540
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/TypeMethodReference;->getName()Lorg/eclipse/jdt/core/dom/SimpleName;

    move-result-object p1

    invoke-virtual {p1, p0}, Lorg/eclipse/jdt/core/dom/ASTNode;->accept(Lorg/eclipse/jdt/core/dom/ASTVisitor;)V

    const/4 p1, 0x0

    return p1
.end method

.method public visit(Lorg/eclipse/jdt/core/dom/TypeParameter;)Z
    .locals 8

    .line 541
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/ASTNode;->getAST()Lorg/eclipse/jdt/core/dom/AST;

    move-result-object v0

    invoke-virtual {v0}, Lorg/eclipse/jdt/core/dom/AST;->apiLevel()I

    move-result v0

    const/16 v1, 0x8

    if-lt v0, v1, :cond_0

    .line 542
    sget-object v4, Lorg/eclipse/jdt/core/dom/TypeParameter;->MODIFIERS_PROPERTY:Lorg/eclipse/jdt/core/dom/ChildListPropertyDescriptor;

    const/16 v0, 0x20

    invoke-static {v0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v5

    sget-object v6, Lorg/eclipse/jdt/internal/compiler/util/Util;->EMPTY_STRING:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v7

    move-object v2, p0

    move-object v3, p1

    invoke-virtual/range {v2 .. v7}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFlattener;->visitList(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 543
    :cond_0
    sget-object v0, Lorg/eclipse/jdt/core/dom/TypeParameter;->NAME_PROPERTY:Lorg/eclipse/jdt/core/dom/ChildPropertyDescriptor;

    invoke-virtual {p0, p1, v0}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFlattener;->getChildNode(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;)Lorg/eclipse/jdt/core/dom/ASTNode;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/eclipse/jdt/core/dom/ASTNode;->accept(Lorg/eclipse/jdt/core/dom/ASTVisitor;)V

    .line 544
    sget-object v3, Lorg/eclipse/jdt/core/dom/TypeParameter;->TYPE_BOUNDS_PROPERTY:Lorg/eclipse/jdt/core/dom/ChildListPropertyDescriptor;

    const-string v5, " extends "

    sget-object v6, Lorg/eclipse/jdt/internal/compiler/util/Util;->EMPTY_STRING:Ljava/lang/String;

    const-string v4, " & "

    move-object v1, p0

    move-object v2, p1

    invoke-virtual/range {v1 .. v6}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFlattener;->visitList(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1
.end method

.method public visit(Lorg/eclipse/jdt/core/dom/UnionType;)Z
    .locals 6

    .line 397
    sget-object v2, Lorg/eclipse/jdt/core/dom/UnionType;->TYPES_PROPERTY:Lorg/eclipse/jdt/core/dom/ChildListPropertyDescriptor;

    const-string v3, " | "

    sget-object v5, Lorg/eclipse/jdt/internal/compiler/util/Util;->EMPTY_STRING:Ljava/lang/String;

    move-object v0, p0

    move-object v1, p1

    move-object v4, v5

    invoke-virtual/range {v0 .. v5}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFlattener;->visitList(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1
.end method

.method public visit(Lorg/eclipse/jdt/core/dom/UsesDirective;)Z
    .locals 2

    .line 398
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFlattener;->result:Ljava/lang/StringBuffer;

    const-string v1, "uses "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 399
    sget-object v0, Lorg/eclipse/jdt/core/dom/UsesDirective;->NAME_PROPERTY:Lorg/eclipse/jdt/core/dom/ChildPropertyDescriptor;

    invoke-virtual {p0, p1, v0}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFlattener;->getChildNode(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;)Lorg/eclipse/jdt/core/dom/ASTNode;

    move-result-object p1

    invoke-virtual {p1, p0}, Lorg/eclipse/jdt/core/dom/ASTNode;->accept(Lorg/eclipse/jdt/core/dom/ASTVisitor;)V

    .line 400
    iget-object p1, p0, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFlattener;->result:Ljava/lang/StringBuffer;

    const/16 v0, 0x3b

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    const/4 p1, 0x0

    return p1
.end method

.method public visit(Lorg/eclipse/jdt/core/dom/VariableDeclarationExpression;)Z
    .locals 9

    .line 401
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/ASTNode;->getAST()Lorg/eclipse/jdt/core/dom/AST;

    move-result-object v0

    invoke-virtual {v0}, Lorg/eclipse/jdt/core/dom/AST;->apiLevel()I

    move-result v0

    const/4 v1, 0x2

    const/16 v2, 0x20

    if-ne v0, v1, :cond_0

    .line 402
    sget-object v0, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFlattener;->INTERNAL_VDE_MODIFIERS_PROPERTY:Lorg/eclipse/jdt/core/dom/SimplePropertyDescriptor;

    invoke-virtual {p0, p1, v0}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFlattener;->getIntAttribute(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;)I

    move-result v0

    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFlattener;->result:Ljava/lang/StringBuffer;

    invoke-static {v0, v1}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFlattener;->printModifiers(ILjava/lang/StringBuffer;)V

    goto :goto_0

    .line 403
    :cond_0
    sget-object v5, Lorg/eclipse/jdt/core/dom/VariableDeclarationExpression;->MODIFIERS2_PROPERTY:Lorg/eclipse/jdt/core/dom/ChildListPropertyDescriptor;

    invoke-static {v2}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v6

    sget-object v7, Lorg/eclipse/jdt/internal/compiler/util/Util;->EMPTY_STRING:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v8

    move-object v3, p0

    move-object v4, p1

    invoke-virtual/range {v3 .. v8}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFlattener;->visitList(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 404
    :goto_0
    sget-object v0, Lorg/eclipse/jdt/core/dom/VariableDeclarationExpression;->TYPE_PROPERTY:Lorg/eclipse/jdt/core/dom/ChildPropertyDescriptor;

    invoke-virtual {p0, p1, v0}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFlattener;->getChildNode(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;)Lorg/eclipse/jdt/core/dom/ASTNode;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/eclipse/jdt/core/dom/ASTNode;->accept(Lorg/eclipse/jdt/core/dom/ASTVisitor;)V

    .line 405
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFlattener;->result:Ljava/lang/StringBuffer;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 406
    sget-object v0, Lorg/eclipse/jdt/core/dom/VariableDeclarationExpression;->FRAGMENTS_PROPERTY:Lorg/eclipse/jdt/core/dom/ChildListPropertyDescriptor;

    const/16 v1, 0x2c

    invoke-static {v1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p1, v0, v1}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFlattener;->visitList(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1
.end method

.method public visit(Lorg/eclipse/jdt/core/dom/VariableDeclarationFragment;)Z
    .locals 2

    .line 407
    sget-object v0, Lorg/eclipse/jdt/core/dom/VariableDeclarationFragment;->NAME_PROPERTY:Lorg/eclipse/jdt/core/dom/ChildPropertyDescriptor;

    invoke-virtual {p0, p1, v0}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFlattener;->getChildNode(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;)Lorg/eclipse/jdt/core/dom/ASTNode;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/eclipse/jdt/core/dom/ASTNode;->accept(Lorg/eclipse/jdt/core/dom/ASTVisitor;)V

    .line 408
    sget-object v0, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFlattener;->INTERNAL_FRAGMENT_EXTRA_DIMENSIONS_PROPERTY:Lorg/eclipse/jdt/core/dom/SimplePropertyDescriptor;

    sget-object v1, Lorg/eclipse/jdt/core/dom/VariableDeclarationFragment;->EXTRA_DIMENSIONS2_PROPERTY:Lorg/eclipse/jdt/core/dom/ChildListPropertyDescriptor;

    invoke-direct {p0, p1, v0, v1}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFlattener;->visitExtraDimensions(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/SimplePropertyDescriptor;Lorg/eclipse/jdt/core/dom/ChildListPropertyDescriptor;)V

    .line 409
    sget-object v0, Lorg/eclipse/jdt/core/dom/VariableDeclarationFragment;->INITIALIZER_PROPERTY:Lorg/eclipse/jdt/core/dom/ChildPropertyDescriptor;

    invoke-virtual {p0, p1, v0}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFlattener;->getChildNode(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;)Lorg/eclipse/jdt/core/dom/ASTNode;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 410
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFlattener;->result:Ljava/lang/StringBuffer;

    const/16 v1, 0x3d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 411
    invoke-virtual {p1, p0}, Lorg/eclipse/jdt/core/dom/ASTNode;->accept(Lorg/eclipse/jdt/core/dom/ASTVisitor;)V

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public visit(Lorg/eclipse/jdt/core/dom/VariableDeclarationStatement;)Z
    .locals 9

    .line 412
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/ASTNode;->getAST()Lorg/eclipse/jdt/core/dom/AST;

    move-result-object v0

    invoke-virtual {v0}, Lorg/eclipse/jdt/core/dom/AST;->apiLevel()I

    move-result v0

    const/4 v1, 0x2

    const/16 v2, 0x20

    if-ne v0, v1, :cond_0

    .line 413
    sget-object v0, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFlattener;->INTERNAL_VDS_MODIFIERS_PROPERTY:Lorg/eclipse/jdt/core/dom/SimplePropertyDescriptor;

    invoke-virtual {p0, p1, v0}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFlattener;->getIntAttribute(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;)I

    move-result v0

    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFlattener;->result:Ljava/lang/StringBuffer;

    invoke-static {v0, v1}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFlattener;->printModifiers(ILjava/lang/StringBuffer;)V

    goto :goto_0

    .line 414
    :cond_0
    sget-object v5, Lorg/eclipse/jdt/core/dom/VariableDeclarationStatement;->MODIFIERS2_PROPERTY:Lorg/eclipse/jdt/core/dom/ChildListPropertyDescriptor;

    invoke-static {v2}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v6

    sget-object v7, Lorg/eclipse/jdt/internal/compiler/util/Util;->EMPTY_STRING:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v8

    move-object v3, p0

    move-object v4, p1

    invoke-virtual/range {v3 .. v8}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFlattener;->visitList(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 415
    :goto_0
    sget-object v0, Lorg/eclipse/jdt/core/dom/VariableDeclarationStatement;->TYPE_PROPERTY:Lorg/eclipse/jdt/core/dom/ChildPropertyDescriptor;

    invoke-virtual {p0, p1, v0}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFlattener;->getChildNode(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;)Lorg/eclipse/jdt/core/dom/ASTNode;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/eclipse/jdt/core/dom/ASTNode;->accept(Lorg/eclipse/jdt/core/dom/ASTVisitor;)V

    .line 416
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFlattener;->result:Ljava/lang/StringBuffer;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 417
    sget-object v0, Lorg/eclipse/jdt/core/dom/VariableDeclarationStatement;->FRAGMENTS_PROPERTY:Lorg/eclipse/jdt/core/dom/ChildListPropertyDescriptor;

    const/16 v1, 0x2c

    invoke-static {v1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p1, v0, v1}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFlattener;->visitList(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;Ljava/lang/String;)V

    .line 418
    iget-object p1, p0, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFlattener;->result:Ljava/lang/StringBuffer;

    const/16 v0, 0x3b

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    const/4 p1, 0x0

    return p1
.end method

.method public visit(Lorg/eclipse/jdt/core/dom/WhileStatement;)Z
    .locals 2

    .line 419
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFlattener;->result:Ljava/lang/StringBuffer;

    const-string v1, "while ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 420
    sget-object v0, Lorg/eclipse/jdt/core/dom/WhileStatement;->EXPRESSION_PROPERTY:Lorg/eclipse/jdt/core/dom/ChildPropertyDescriptor;

    invoke-virtual {p0, p1, v0}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFlattener;->getChildNode(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;)Lorg/eclipse/jdt/core/dom/ASTNode;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/eclipse/jdt/core/dom/ASTNode;->accept(Lorg/eclipse/jdt/core/dom/ASTVisitor;)V

    .line 421
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFlattener;->result:Ljava/lang/StringBuffer;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 422
    sget-object v0, Lorg/eclipse/jdt/core/dom/WhileStatement;->BODY_PROPERTY:Lorg/eclipse/jdt/core/dom/ChildPropertyDescriptor;

    invoke-virtual {p0, p1, v0}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFlattener;->getChildNode(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;)Lorg/eclipse/jdt/core/dom/ASTNode;

    move-result-object p1

    invoke-virtual {p1, p0}, Lorg/eclipse/jdt/core/dom/ASTNode;->accept(Lorg/eclipse/jdt/core/dom/ASTVisitor;)V

    const/4 p1, 0x0

    return p1
.end method

.method public visit(Lorg/eclipse/jdt/core/dom/WildcardType;)Z
    .locals 8

    .line 545
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/ASTNode;->getAST()Lorg/eclipse/jdt/core/dom/AST;

    move-result-object v0

    invoke-virtual {v0}, Lorg/eclipse/jdt/core/dom/AST;->apiLevel()I

    move-result v0

    const/16 v1, 0x8

    if-lt v0, v1, :cond_0

    .line 546
    sget-object v4, Lorg/eclipse/jdt/core/dom/WildcardType;->ANNOTATIONS_PROPERTY:Lorg/eclipse/jdt/core/dom/ChildListPropertyDescriptor;

    const/16 v0, 0x20

    invoke-static {v0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v5

    sget-object v6, Lorg/eclipse/jdt/internal/compiler/util/Util;->EMPTY_STRING:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v7

    move-object v2, p0

    move-object v3, p1

    invoke-virtual/range {v2 .. v7}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFlattener;->visitList(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 547
    :cond_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFlattener;->result:Ljava/lang/StringBuffer;

    const/16 v1, 0x3f

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 548
    sget-object v0, Lorg/eclipse/jdt/core/dom/WildcardType;->BOUND_PROPERTY:Lorg/eclipse/jdt/core/dom/ChildPropertyDescriptor;

    invoke-virtual {p0, p1, v0}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFlattener;->getChildNode(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;)Lorg/eclipse/jdt/core/dom/ASTNode;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 549
    sget-object v1, Lorg/eclipse/jdt/core/dom/WildcardType;->UPPER_BOUND_PROPERTY:Lorg/eclipse/jdt/core/dom/SimplePropertyDescriptor;

    invoke-virtual {p0, p1, v1}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFlattener;->getBooleanAttribute(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 550
    iget-object p1, p0, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFlattener;->result:Ljava/lang/StringBuffer;

    const-string v1, " extends "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 551
    :cond_1
    iget-object p1, p0, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFlattener;->result:Ljava/lang/StringBuffer;

    const-string v1, " super "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 552
    :goto_0
    invoke-virtual {v0, p0}, Lorg/eclipse/jdt/core/dom/ASTNode;->accept(Lorg/eclipse/jdt/core/dom/ASTVisitor;)V

    :cond_2
    const/4 p1, 0x0

    return p1
.end method

.method public visitList(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-virtual {p0, p1, p2}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFlattener;->getChildList(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;)Ljava/util/List;

    move-result-object p1

    const/4 p2, 0x0

    .line 2
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lt p2, v0, :cond_0

    return-void

    :cond_0
    if-eqz p3, :cond_1

    if-lez p2, :cond_1

    .line 3
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFlattener;->result:Ljava/lang/StringBuffer;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 4
    :cond_1
    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jdt/core/dom/ASTNode;

    invoke-virtual {v0, p0}, Lorg/eclipse/jdt/core/dom/ASTNode;->accept(Lorg/eclipse/jdt/core/dom/ASTVisitor;)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0
.end method

.method public visitList(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 5
    invoke-virtual {p0, p1, p2}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFlattener;->getChildList(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;)Ljava/util/List;

    move-result-object p1

    .line 6
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_2

    .line 7
    iget-object p2, p0, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFlattener;->result:Ljava/lang/StringBuffer;

    invoke-virtual {p2, p4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/4 p2, 0x0

    .line 8
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p4

    if-lt p2, p4, :cond_0

    .line 9
    iget-object p1, p0, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFlattener;->result:Ljava/lang/StringBuffer;

    invoke-virtual {p1, p5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    :cond_0
    if-eqz p3, :cond_1

    if-lez p2, :cond_1

    .line 10
    iget-object p4, p0, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFlattener;->result:Ljava/lang/StringBuffer;

    invoke-virtual {p4, p3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 11
    :cond_1
    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lorg/eclipse/jdt/core/dom/ASTNode;

    invoke-virtual {p4, p0}, Lorg/eclipse/jdt/core/dom/ASTNode;->accept(Lorg/eclipse/jdt/core/dom/ASTVisitor;)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method
