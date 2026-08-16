.class Lorg/eclipse/jdt/core/dom/VariableBinding;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/eclipse/jdt/core/dom/IVariableBinding;


# static fields
.field private static final VALID_MODIFIERS:I = 0xdf


# instance fields
.field private annotations:[Lorg/eclipse/jdt/core/dom/IAnnotationBinding;

.field private binding:Lorg/eclipse/jdt/internal/compiler/lookup/VariableBinding;

.field private declaringClass:Lorg/eclipse/jdt/core/dom/ITypeBinding;

.field private key:Ljava/lang/String;

.field private name:Ljava/lang/String;

.field private resolver:Lorg/eclipse/jdt/core/dom/BindingResolver;

.field private type:Lorg/eclipse/jdt/core/dom/ITypeBinding;


# direct methods
.method public constructor <init>(Lorg/eclipse/jdt/core/dom/BindingResolver;Lorg/eclipse/jdt/internal/compiler/lookup/VariableBinding;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/eclipse/jdt/core/dom/VariableBinding;->resolver:Lorg/eclipse/jdt/core/dom/BindingResolver;

    iput-object p2, p0, Lorg/eclipse/jdt/core/dom/VariableBinding;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/VariableBinding;

    return-void
.end method

.method private getUnresolvedJavaElement()Lorg/eclipse/jdt/internal/core/JavaElement;
    .locals 19

    move-object/from16 v0, p0

    invoke-static {}, Lorg/eclipse/jdt/core/JavaCore;->getPlugin()Lorg/eclipse/core/runtime/Plugin;

    move-result-object v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return-object v2

    :cond_0
    invoke-virtual/range {p0 .. p0}, Lorg/eclipse/jdt/core/dom/VariableBinding;->isField()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, v0, Lorg/eclipse/jdt/core/dom/VariableBinding;->resolver:Lorg/eclipse/jdt/core/dom/BindingResolver;

    instance-of v3, v1, Lorg/eclipse/jdt/core/dom/DefaultBindingResolver;

    if-eqz v3, :cond_2

    check-cast v1, Lorg/eclipse/jdt/core/dom/DefaultBindingResolver;

    iget-boolean v3, v1, Lorg/eclipse/jdt/core/dom/DefaultBindingResolver;->fromJavaProject:Z

    if-nez v3, :cond_1

    return-object v2

    :cond_1
    iget-object v2, v0, Lorg/eclipse/jdt/core/dom/VariableBinding;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/VariableBinding;

    check-cast v2, Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;

    iget-object v3, v1, Lorg/eclipse/jdt/core/dom/DefaultBindingResolver;->workingCopyOwner:Lorg/eclipse/jdt/core/WorkingCopyOwner;

    invoke-virtual {v1}, Lorg/eclipse/jdt/core/dom/DefaultBindingResolver;->getBindingsToNodesMap()Lorg/eclipse/jdt/internal/core/util/Util$BindingsToNodesMap;

    move-result-object v1

    invoke-static {v2, v3, v1}, Lorg/eclipse/jdt/internal/core/util/Util;->getUnresolvedJavaElement(Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;Lorg/eclipse/jdt/core/WorkingCopyOwner;Lorg/eclipse/jdt/internal/core/util/Util$BindingsToNodesMap;)Lorg/eclipse/jdt/internal/core/JavaElement;

    move-result-object v1

    return-object v1

    :cond_2
    return-object v2

    :cond_3
    iget-object v1, v0, Lorg/eclipse/jdt/core/dom/VariableBinding;->resolver:Lorg/eclipse/jdt/core/dom/BindingResolver;

    instance-of v3, v1, Lorg/eclipse/jdt/core/dom/DefaultBindingResolver;

    if-nez v3, :cond_4

    return-object v2

    :cond_4
    check-cast v1, Lorg/eclipse/jdt/core/dom/DefaultBindingResolver;

    iget-boolean v3, v1, Lorg/eclipse/jdt/core/dom/DefaultBindingResolver;->fromJavaProject:Z

    if-nez v3, :cond_5

    return-object v2

    :cond_5
    iget-object v3, v1, Lorg/eclipse/jdt/core/dom/DefaultBindingResolver;->bindingsToAstNodes:Ljava/util/Map;

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/eclipse/jdt/core/dom/VariableDeclaration;

    if-nez v3, :cond_6

    return-object v2

    :cond_6
    invoke-virtual {v3}, Lorg/eclipse/jdt/core/dom/VariableDeclaration;->getName()Lorg/eclipse/jdt/core/dom/SimpleName;

    move-result-object v4

    invoke-virtual {v4}, Lorg/eclipse/jdt/core/dom/ASTNode;->getStartPosition()I

    move-result v10

    invoke-virtual {v4}, Lorg/eclipse/jdt/core/dom/ASTNode;->getLength()I

    move-result v5

    instance-of v6, v3, Lorg/eclipse/jdt/core/dom/SingleVariableDeclaration;

    const/4 v7, 0x0

    if-eqz v6, :cond_7

    invoke-virtual {v3}, Lorg/eclipse/jdt/core/dom/ASTNode;->getStartPosition()I

    move-result v6

    invoke-virtual {v3}, Lorg/eclipse/jdt/core/dom/ASTNode;->getLength()I

    move-result v8

    check-cast v3, Lorg/eclipse/jdt/core/dom/SingleVariableDeclaration;

    invoke-virtual {v3}, Lorg/eclipse/jdt/core/dom/SingleVariableDeclaration;->getModifiers()I

    move-result v3

    move v14, v3

    move/from16 v18, v8

    move v8, v6

    move/from16 v6, v18

    goto :goto_1

    :cond_7
    invoke-virtual {v3}, Lorg/eclipse/jdt/core/dom/ASTNode;->getParent()Lorg/eclipse/jdt/core/dom/ASTNode;

    move-result-object v6

    invoke-virtual {v6}, Lorg/eclipse/jdt/core/dom/ASTNode;->getStartPosition()I

    move-result v8

    invoke-virtual {v6}, Lorg/eclipse/jdt/core/dom/ASTNode;->getLength()I

    move-result v6

    check-cast v3, Lorg/eclipse/jdt/core/dom/VariableDeclarationFragment;

    invoke-virtual {v3}, Lorg/eclipse/jdt/core/dom/ASTNode;->getParent()Lorg/eclipse/jdt/core/dom/ASTNode;

    move-result-object v3

    invoke-virtual {v3}, Lorg/eclipse/jdt/core/dom/ASTNode;->getNodeType()I

    move-result v9

    const/16 v11, 0x17

    if-eq v9, v11, :cond_a

    const/16 v11, 0x3a

    if-eq v9, v11, :cond_9

    const/16 v11, 0x3c

    if-eq v9, v11, :cond_8

    move v14, v7

    goto :goto_1

    :cond_8
    check-cast v3, Lorg/eclipse/jdt/core/dom/VariableDeclarationStatement;

    invoke-virtual {v3}, Lorg/eclipse/jdt/core/dom/VariableDeclarationStatement;->getModifiers()I

    move-result v3

    :goto_0
    move v14, v3

    goto :goto_1

    :cond_9
    check-cast v3, Lorg/eclipse/jdt/core/dom/VariableDeclarationExpression;

    invoke-virtual {v3}, Lorg/eclipse/jdt/core/dom/VariableDeclarationExpression;->getModifiers()I

    move-result v3

    goto :goto_0

    :cond_a
    check-cast v3, Lorg/eclipse/jdt/core/dom/FieldDeclaration;

    invoke-virtual {v3}, Lorg/eclipse/jdt/core/dom/BodyDeclaration;->getModifiers()I

    move-result v3

    goto :goto_0

    :goto_1
    add-int/2addr v6, v8

    const/4 v3, 0x1

    add-int/lit8 v9, v6, -0x1

    iget-object v6, v0, Lorg/eclipse/jdt/core/dom/VariableBinding;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/VariableBinding;

    iget-object v6, v6, Lorg/eclipse/jdt/internal/compiler/lookup/VariableBinding;->type:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-virtual {v6}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->genericTypeSignature()[C

    move-result-object v6

    invoke-virtual/range {p0 .. p0}, Lorg/eclipse/jdt/core/dom/VariableBinding;->getDeclaringMethod()Lorg/eclipse/jdt/core/dom/IMethodBinding;

    move-result-object v11

    iget-object v12, v0, Lorg/eclipse/jdt/core/dom/VariableBinding;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/VariableBinding;

    check-cast v12, Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;

    if-nez v11, :cond_c

    iget-object v11, v12, Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;->declaringScope:Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;

    invoke-virtual {v11}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->referenceContext()Lorg/eclipse/jdt/internal/compiler/impl/ReferenceContext;

    move-result-object v11

    instance-of v13, v11, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;

    if-eqz v13, :cond_b

    check-cast v11, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;

    iget-object v11, v11, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;

    iget-object v13, v1, Lorg/eclipse/jdt/core/dom/DefaultBindingResolver;->workingCopyOwner:Lorg/eclipse/jdt/core/WorkingCopyOwner;

    invoke-virtual {v1}, Lorg/eclipse/jdt/core/dom/DefaultBindingResolver;->getBindingsToNodesMap()Lorg/eclipse/jdt/internal/core/util/Util$BindingsToNodesMap;

    move-result-object v1

    invoke-static {v11, v13, v1}, Lorg/eclipse/jdt/internal/core/util/Util;->getUnresolvedJavaElement(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/core/WorkingCopyOwner;Lorg/eclipse/jdt/internal/core/util/Util$BindingsToNodesMap;)Lorg/eclipse/jdt/internal/core/JavaElement;

    move-result-object v1

    invoke-static {v8, v9, v1}, Lorg/eclipse/jdt/internal/core/util/Util;->getUnresolvedJavaElement(IILorg/eclipse/jdt/internal/core/JavaElement;)Lorg/eclipse/jdt/internal/core/JavaElement;

    move-result-object v1

    goto :goto_2

    :cond_b
    return-object v2

    :cond_c
    invoke-interface {v11}, Lorg/eclipse/jdt/core/dom/IBinding;->getJavaElement()Lorg/eclipse/jdt/core/IJavaElement;

    move-result-object v1

    check-cast v1, Lorg/eclipse/jdt/internal/core/JavaElement;

    :goto_2
    if-nez v1, :cond_d

    return-object v2

    :cond_d
    new-instance v2, Lorg/eclipse/jdt/internal/core/LocalVariable;

    invoke-virtual {v4}, Lorg/eclipse/jdt/core/dom/SimpleName;->getIdentifier()Ljava/lang/String;

    move-result-object v4

    add-int/2addr v5, v10

    add-int/lit8 v11, v5, -0x1

    new-instance v13, Ljava/lang/String;

    invoke-direct {v13, v6}, Ljava/lang/String;-><init>([C)V

    iget-object v5, v12, Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;->declaration:Lorg/eclipse/jdt/internal/compiler/ast/LocalDeclaration;

    iget-object v15, v5, Lorg/eclipse/jdt/internal/compiler/ast/AbstractVariableDeclaration;->annotations:[Lorg/eclipse/jdt/internal/compiler/ast/Annotation;

    iget-wide v5, v12, Lorg/eclipse/jdt/internal/compiler/lookup/VariableBinding;->tagBits:J

    const-wide/16 v16, 0x400

    and-long v5, v5, v16

    const-wide/16 v16, 0x0

    cmp-long v5, v5, v16

    if-eqz v5, :cond_e

    goto :goto_3

    :cond_e
    move v3, v7

    :goto_3
    move-object v5, v2

    move-object v6, v1

    move-object v7, v4

    move-object v12, v13

    move-object v13, v15

    move v15, v3

    invoke-direct/range {v5 .. v15}, Lorg/eclipse/jdt/internal/core/LocalVariable;-><init>(Lorg/eclipse/jdt/internal/core/JavaElement;Ljava/lang/String;IIIILjava/lang/String;[Lorg/eclipse/jdt/internal/compiler/ast/Annotation;IZ)V

    return-object v2
.end method


# virtual methods
.method public getAnnotations()[Lorg/eclipse/jdt/core/dom/IAnnotationBinding;
    .locals 8

    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/VariableBinding;->annotations:[Lorg/eclipse/jdt/core/dom/IAnnotationBinding;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/VariableBinding;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/VariableBinding;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/VariableBinding;->getAnnotations()[Lorg/eclipse/jdt/internal/compiler/lookup/AnnotationBinding;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    move v2, v1

    goto :goto_0

    :cond_1
    array-length v2, v0

    :goto_0
    if-eqz v2, :cond_6

    new-array v3, v2, [Lorg/eclipse/jdt/core/dom/IAnnotationBinding;

    move v4, v1

    move v5, v4

    :goto_1
    if-lt v4, v2, :cond_4

    if-eq v5, v2, :cond_3

    if-nez v5, :cond_2

    sget-object v0, Lorg/eclipse/jdt/core/dom/AnnotationBinding;->NoAnnotations:[Lorg/eclipse/jdt/core/dom/AnnotationBinding;

    iput-object v0, p0, Lorg/eclipse/jdt/core/dom/VariableBinding;->annotations:[Lorg/eclipse/jdt/core/dom/IAnnotationBinding;

    return-object v0

    :cond_2
    new-array v0, v5, [Lorg/eclipse/jdt/core/dom/IAnnotationBinding;

    invoke-static {v3, v1, v0, v1, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v3, v0

    :cond_3
    iput-object v3, p0, Lorg/eclipse/jdt/core/dom/VariableBinding;->annotations:[Lorg/eclipse/jdt/core/dom/IAnnotationBinding;

    return-object v3

    :cond_4
    aget-object v6, v0, v4

    iget-object v7, p0, Lorg/eclipse/jdt/core/dom/VariableBinding;->resolver:Lorg/eclipse/jdt/core/dom/BindingResolver;

    invoke-virtual {v7, v6}, Lorg/eclipse/jdt/core/dom/BindingResolver;->getAnnotationInstance(Lorg/eclipse/jdt/internal/compiler/lookup/AnnotationBinding;)Lorg/eclipse/jdt/core/dom/IAnnotationBinding;

    move-result-object v6

    if-nez v6, :cond_5

    goto :goto_2

    :cond_5
    add-int/lit8 v7, v5, 0x1

    aput-object v6, v3, v5

    move v5, v7

    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_6
    sget-object v0, Lorg/eclipse/jdt/core/dom/AnnotationBinding;->NoAnnotations:[Lorg/eclipse/jdt/core/dom/AnnotationBinding;

    iput-object v0, p0, Lorg/eclipse/jdt/core/dom/VariableBinding;->annotations:[Lorg/eclipse/jdt/core/dom/IAnnotationBinding;

    return-object v0
.end method

.method public getConstantValue()Ljava/lang/Object;
    .locals 4

    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/VariableBinding;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/VariableBinding;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/VariableBinding;->constant()Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    sget-object v2, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->NotAConstant:Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->typeID()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    :pswitch_0
    return-object v1

    :pswitch_1
    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->stringValue()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_2
    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->intValue()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    :pswitch_3
    new-instance v1, Ljava/lang/Float;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->floatValue()F

    move-result v0

    invoke-direct {v1, v0}, Ljava/lang/Float;-><init>(F)V

    return-object v1

    :pswitch_4
    new-instance v1, Ljava/lang/Double;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->doubleValue()D

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Ljava/lang/Double;-><init>(D)V

    return-object v1

    :pswitch_5
    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->longValue()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0

    :pswitch_6
    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->booleanValue()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    :pswitch_7
    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->shortValue()S

    move-result v0

    invoke-static {v0}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v0

    return-object v0

    :pswitch_8
    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->byteValue()B

    move-result v0

    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    return-object v0

    :pswitch_9
    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->charValue()C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    return-object v0

    :cond_1
    :goto_0
    return-object v1

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public getDeclaringClass()Lorg/eclipse/jdt/core/dom/ITypeBinding;
    .locals 2

    invoke-virtual {p0}, Lorg/eclipse/jdt/core/dom/VariableBinding;->isField()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/VariableBinding;->declaringClass:Lorg/eclipse/jdt/core/dom/ITypeBinding;

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/VariableBinding;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/VariableBinding;

    check-cast v0, Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;

    iget-object v1, p0, Lorg/eclipse/jdt/core/dom/VariableBinding;->resolver:Lorg/eclipse/jdt/core/dom/BindingResolver;

    iget-object v0, v0, Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;->declaringClass:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    invoke-virtual {v1, v0}, Lorg/eclipse/jdt/core/dom/BindingResolver;->getTypeBinding(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Lorg/eclipse/jdt/core/dom/ITypeBinding;

    move-result-object v0

    iput-object v0, p0, Lorg/eclipse/jdt/core/dom/VariableBinding;->declaringClass:Lorg/eclipse/jdt/core/dom/ITypeBinding;

    :cond_0
    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/VariableBinding;->declaringClass:Lorg/eclipse/jdt/core/dom/ITypeBinding;

    return-object v0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public getDeclaringMethod()Lorg/eclipse/jdt/core/dom/IMethodBinding;
    .locals 4

    invoke-virtual {p0}, Lorg/eclipse/jdt/core/dom/VariableBinding;->isField()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_4

    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/VariableBinding;->resolver:Lorg/eclipse/jdt/core/dom/BindingResolver;

    invoke-virtual {v0, p0}, Lorg/eclipse/jdt/core/dom/BindingResolver;->findDeclaringNode(Lorg/eclipse/jdt/core/dom/IBinding;)Lorg/eclipse/jdt/core/dom/ASTNode;

    move-result-object v0

    :goto_0
    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/VariableBinding;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/VariableBinding;

    instance-of v2, v0, Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;

    if-eqz v2, :cond_0

    check-cast v0, Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;->getEnclosingMethod()Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lorg/eclipse/jdt/core/dom/VariableBinding;->resolver:Lorg/eclipse/jdt/core/dom/BindingResolver;

    invoke-virtual {v1, v0}, Lorg/eclipse/jdt/core/dom/BindingResolver;->getMethodBinding(Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;)Lorg/eclipse/jdt/core/dom/IMethodBinding;

    move-result-object v0

    return-object v0

    :cond_0
    return-object v1

    :cond_1
    invoke-virtual {v0}, Lorg/eclipse/jdt/core/dom/ASTNode;->getNodeType()I

    move-result v2

    const/16 v3, 0x1c

    if-eq v2, v3, :cond_4

    const/16 v3, 0x1f

    if-eq v2, v3, :cond_3

    const/16 v3, 0x56

    if-eq v2, v3, :cond_2

    invoke-virtual {v0}, Lorg/eclipse/jdt/core/dom/ASTNode;->getParent()Lorg/eclipse/jdt/core/dom/ASTNode;

    move-result-object v0

    goto :goto_0

    :cond_2
    check-cast v0, Lorg/eclipse/jdt/core/dom/LambdaExpression;

    invoke-virtual {v0}, Lorg/eclipse/jdt/core/dom/LambdaExpression;->resolveMethodBinding()Lorg/eclipse/jdt/core/dom/IMethodBinding;

    move-result-object v0

    return-object v0

    :cond_3
    check-cast v0, Lorg/eclipse/jdt/core/dom/MethodDeclaration;

    invoke-virtual {v0}, Lorg/eclipse/jdt/core/dom/MethodDeclaration;->resolveBinding()Lorg/eclipse/jdt/core/dom/IMethodBinding;

    move-result-object v0

    return-object v0

    :cond_4
    return-object v1
.end method

.method public getJavaElement()Lorg/eclipse/jdt/core/IJavaElement;
    .locals 2

    invoke-direct {p0}, Lorg/eclipse/jdt/core/dom/VariableBinding;->getUnresolvedJavaElement()Lorg/eclipse/jdt/internal/core/JavaElement;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    iget-object v1, p0, Lorg/eclipse/jdt/core/dom/VariableBinding;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/VariableBinding;

    invoke-virtual {v0, v1}, Lorg/eclipse/jdt/internal/core/JavaElement;->resolved(Lorg/eclipse/jdt/internal/compiler/lookup/Binding;)Lorg/eclipse/jdt/internal/core/JavaElement;

    move-result-object v0

    return-object v0
.end method

.method public getKey()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/VariableBinding;->key:Ljava/lang/String;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lorg/eclipse/jdt/core/dom/VariableBinding;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/VariableBinding;

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->computeUniqueKey()[C

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([C)V

    iput-object v0, p0, Lorg/eclipse/jdt/core/dom/VariableBinding;->key:Ljava/lang/String;

    :cond_0
    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/VariableBinding;->key:Ljava/lang/String;

    return-object v0
.end method

.method public getKind()I
    .locals 1

    const/4 v0, 0x3

    return v0
.end method

.method public getModifiers()I
    .locals 1

    invoke-virtual {p0}, Lorg/eclipse/jdt/core/dom/VariableBinding;->isField()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/VariableBinding;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/VariableBinding;

    check-cast v0, Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;->getAccessFlags()I

    move-result v0

    and-int/lit16 v0, v0, 0xdf

    return v0

    :cond_0
    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/VariableBinding;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/VariableBinding;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/VariableBinding;->isFinal()Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0x10

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/VariableBinding;->name:Ljava/lang/String;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lorg/eclipse/jdt/core/dom/VariableBinding;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/VariableBinding;

    iget-object v1, v1, Lorg/eclipse/jdt/internal/compiler/lookup/VariableBinding;->name:[C

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([C)V

    iput-object v0, p0, Lorg/eclipse/jdt/core/dom/VariableBinding;->name:Ljava/lang/String;

    :cond_0
    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/VariableBinding;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Lorg/eclipse/jdt/core/dom/ITypeBinding;
    .locals 2

    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/VariableBinding;->type:Lorg/eclipse/jdt/core/dom/ITypeBinding;

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/VariableBinding;->resolver:Lorg/eclipse/jdt/core/dom/BindingResolver;

    iget-object v1, p0, Lorg/eclipse/jdt/core/dom/VariableBinding;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/VariableBinding;

    iget-object v1, v1, Lorg/eclipse/jdt/internal/compiler/lookup/VariableBinding;->type:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-virtual {v0, v1}, Lorg/eclipse/jdt/core/dom/BindingResolver;->getTypeBinding(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Lorg/eclipse/jdt/core/dom/ITypeBinding;

    move-result-object v0

    iput-object v0, p0, Lorg/eclipse/jdt/core/dom/VariableBinding;->type:Lorg/eclipse/jdt/core/dom/ITypeBinding;

    :cond_0
    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/VariableBinding;->type:Lorg/eclipse/jdt/core/dom/ITypeBinding;

    return-object v0
.end method

.method public getVariableDeclaration()Lorg/eclipse/jdt/core/dom/IVariableBinding;
    .locals 2

    invoke-virtual {p0}, Lorg/eclipse/jdt/core/dom/VariableBinding;->isField()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/VariableBinding;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/VariableBinding;

    check-cast v0, Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;

    iget-object v1, p0, Lorg/eclipse/jdt/core/dom/VariableBinding;->resolver:Lorg/eclipse/jdt/core/dom/BindingResolver;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;->original()Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/eclipse/jdt/core/dom/BindingResolver;->getVariableBinding(Lorg/eclipse/jdt/internal/compiler/lookup/VariableBinding;)Lorg/eclipse/jdt/core/dom/IVariableBinding;

    move-result-object v0

    return-object v0

    :cond_0
    return-object p0
.end method

.method public getVariableId()I
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/VariableBinding;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/VariableBinding;

    iget v0, v0, Lorg/eclipse/jdt/internal/compiler/lookup/VariableBinding;->id:I

    return v0
.end method

.method public isDeprecated()Z
    .locals 1

    invoke-virtual {p0}, Lorg/eclipse/jdt/core/dom/VariableBinding;->isField()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/VariableBinding;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/VariableBinding;

    check-cast v0, Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;->isDeprecated()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isEffectivelyFinal()Z
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/VariableBinding;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/VariableBinding;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/VariableBinding;->isFinal()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/VariableBinding;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/VariableBinding;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/VariableBinding;->isEffectivelyFinal()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isEnumConstant()Z
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/VariableBinding;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/VariableBinding;

    iget v0, v0, Lorg/eclipse/jdt/internal/compiler/lookup/VariableBinding;->modifiers:I

    and-int/lit16 v0, v0, 0x4000

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isEqualTo(Lorg/eclipse/jdt/core/dom/IBinding;)Z
    .locals 5

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    return v1

    :cond_1
    instance-of v2, p1, Lorg/eclipse/jdt/core/dom/VariableBinding;

    if-nez v2, :cond_2

    return v1

    :cond_2
    check-cast p1, Lorg/eclipse/jdt/core/dom/VariableBinding;

    iget-object v2, p1, Lorg/eclipse/jdt/core/dom/VariableBinding;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/VariableBinding;

    iget-object v3, p0, Lorg/eclipse/jdt/core/dom/VariableBinding;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/VariableBinding;

    instance-of v4, v3, Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;

    if-eqz v4, :cond_4

    instance-of p1, v2, Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;

    if-eqz p1, :cond_3

    check-cast v3, Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;

    check-cast v2, Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;

    invoke-static {v3, v2}, Lorg/eclipse/jdt/core/dom/BindingComparator;->isEqual(Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;)Z

    move-result p1

    return p1

    :cond_3
    return v1

    :cond_4
    invoke-static {v3, v2}, Lorg/eclipse/jdt/core/dom/BindingComparator;->isEqual(Lorg/eclipse/jdt/internal/compiler/lookup/VariableBinding;Lorg/eclipse/jdt/internal/compiler/lookup/VariableBinding;)Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-virtual {p0}, Lorg/eclipse/jdt/core/dom/VariableBinding;->getDeclaringMethod()Lorg/eclipse/jdt/core/dom/IMethodBinding;

    move-result-object v2

    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/VariableBinding;->getDeclaringMethod()Lorg/eclipse/jdt/core/dom/IMethodBinding;

    move-result-object p1

    if-nez v2, :cond_6

    if-eqz p1, :cond_5

    return v1

    :cond_5
    return v0

    :cond_6
    invoke-interface {v2, p1}, Lorg/eclipse/jdt/core/dom/IBinding;->isEqualTo(Lorg/eclipse/jdt/core/dom/IBinding;)Z

    move-result p1

    return p1

    :cond_7
    return v1
.end method

.method public isField()Z
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/VariableBinding;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/VariableBinding;

    instance-of v0, v0, Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;

    return v0
.end method

.method public isParameter()Z
    .locals 4

    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/VariableBinding;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/VariableBinding;

    iget-wide v0, v0, Lorg/eclipse/jdt/internal/compiler/lookup/VariableBinding;->tagBits:J

    const-wide/16 v2, 0x400

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isRecovered()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isSynthetic()Z
    .locals 1

    invoke-virtual {p0}, Lorg/eclipse/jdt/core/dom/VariableBinding;->isField()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/VariableBinding;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/VariableBinding;

    check-cast v0, Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;->isSynthetic()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/VariableBinding;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/VariableBinding;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/VariableBinding;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
