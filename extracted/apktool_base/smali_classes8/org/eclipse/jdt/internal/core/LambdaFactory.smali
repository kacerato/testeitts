.class public Lorg/eclipse/jdt/internal/core/LambdaFactory;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createLambdaExpression(Lorg/eclipse/jdt/internal/core/JavaElement;Ljava/lang/String;III)Lorg/eclipse/jdt/internal/core/LambdaExpression;
    .locals 7

    .line 4
    invoke-static {p0}, Lorg/eclipse/jdt/internal/core/LambdaFactory;->isBinaryMember(Lorg/eclipse/jdt/internal/core/JavaElement;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5
    new-instance v0, Lorg/eclipse/jdt/internal/core/BinaryLambdaExpression;

    move-object v1, v0

    move-object v2, p0

    move-object v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    invoke-direct/range {v1 .. v6}, Lorg/eclipse/jdt/internal/core/BinaryLambdaExpression;-><init>(Lorg/eclipse/jdt/internal/core/JavaElement;Ljava/lang/String;III)V

    return-object v0

    .line 6
    :cond_0
    new-instance v0, Lorg/eclipse/jdt/internal/core/LambdaExpression;

    move-object v1, v0

    move-object v2, p0

    move-object v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    invoke-direct/range {v1 .. v6}, Lorg/eclipse/jdt/internal/core/LambdaExpression;-><init>(Lorg/eclipse/jdt/internal/core/JavaElement;Ljava/lang/String;III)V

    return-object v0
.end method

.method public static createLambdaExpression(Lorg/eclipse/jdt/internal/core/JavaElement;Lorg/eclipse/jdt/internal/compiler/ast/LambdaExpression;)Lorg/eclipse/jdt/internal/core/LambdaExpression;
    .locals 1

    .line 1
    invoke-static {p0}, Lorg/eclipse/jdt/internal/core/LambdaFactory;->isBinaryMember(Lorg/eclipse/jdt/internal/core/JavaElement;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    new-instance v0, Lorg/eclipse/jdt/internal/core/BinaryLambdaExpression;

    invoke-direct {v0, p0, p1}, Lorg/eclipse/jdt/internal/core/BinaryLambdaExpression;-><init>(Lorg/eclipse/jdt/internal/core/JavaElement;Lorg/eclipse/jdt/internal/compiler/ast/LambdaExpression;)V

    return-object v0

    .line 3
    :cond_0
    new-instance v0, Lorg/eclipse/jdt/internal/core/LambdaExpression;

    invoke-direct {v0, p0, p1}, Lorg/eclipse/jdt/internal/core/LambdaExpression;-><init>(Lorg/eclipse/jdt/internal/core/JavaElement;Lorg/eclipse/jdt/internal/compiler/ast/LambdaExpression;)V

    return-object v0
.end method

.method public static createLambdaMethod(Lorg/eclipse/jdt/internal/core/JavaElement;Ljava/lang/String;Ljava/lang/String;III[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Lorg/eclipse/jdt/internal/core/LambdaMethod;
    .locals 10

    move v4, p3

    move-object/from16 v6, p7

    move-object v1, p0

    .line 23
    instance-of v0, v1, Lorg/eclipse/jdt/internal/core/BinaryLambdaExpression;

    .line 24
    new-instance v8, Lorg/eclipse/jdt/internal/core/SourceMethodInfo;

    invoke-direct {v8}, Lorg/eclipse/jdt/internal/core/SourceMethodInfo;-><init>()V

    .line 25
    invoke-virtual {v8, p3}, Lorg/eclipse/jdt/internal/core/SourceRefElementInfo;->setSourceRangeStart(I)V

    move v2, p4

    .line 26
    invoke-virtual {v8, p4}, Lorg/eclipse/jdt/internal/core/SourceRefElementInfo;->setSourceRangeEnd(I)V

    const/4 v2, 0x0

    .line 27
    invoke-virtual {v8, v2}, Lorg/eclipse/jdt/internal/core/MemberElementInfo;->setFlags(I)V

    .line 28
    invoke-virtual {v8, p3}, Lorg/eclipse/jdt/internal/core/AnnotatableInfo;->setNameSourceStart(I)V

    move v3, p5

    .line 29
    invoke-virtual {v8, p5}, Lorg/eclipse/jdt/internal/core/AnnotatableInfo;->setNameSourceEnd(I)V

    .line 30
    invoke-static {}, Lorg/eclipse/jdt/internal/core/JavaModelManager;->getJavaModelManager()Lorg/eclipse/jdt/internal/core/JavaModelManager;

    move-result-object v3

    .line 31
    array-length v5, v6

    new-array v7, v5, [[C

    :goto_0
    if-lt v2, v5, :cond_1

    .line 32
    invoke-virtual {v8, v7}, Lorg/eclipse/jdt/internal/core/SourceMethodElementInfo;->setArgumentNames([[C)V

    .line 33
    invoke-virtual/range {p8 .. p8}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    invoke-static {v2}, Lorg/eclipse/jdt/core/Signature;->toCharArray([C)[C

    move-result-object v2

    invoke-virtual {v3, v2}, Lorg/eclipse/jdt/internal/core/JavaModelManager;->intern([C)[C

    move-result-object v2

    invoke-virtual {v8, v2}, Lorg/eclipse/jdt/internal/core/SourceMethodInfo;->setReturnType([C)V

    .line 34
    sget-object v2, Lorg/eclipse/jdt/core/compiler/CharOperation;->NO_CHAR_CHAR:[[C

    invoke-virtual {v8, v2}, Lorg/eclipse/jdt/internal/core/SourceMethodElementInfo;->setExceptionTypeNames([[C)V

    const/4 v2, 0x0

    .line 35
    iput-object v2, v8, Lorg/eclipse/jdt/internal/core/SourceMethodElementInfo;->arguments:[Lorg/eclipse/jdt/core/ILocalVariable;

    if-eqz v0, :cond_0

    .line 36
    new-instance v9, Lorg/eclipse/jdt/internal/core/BinaryLambdaMethod;

    move-object v0, v9

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move-object/from16 v5, p6

    move-object/from16 v6, p7

    move-object/from16 v7, p8

    invoke-direct/range {v0 .. v8}, Lorg/eclipse/jdt/internal/core/BinaryLambdaMethod;-><init>(Lorg/eclipse/jdt/internal/core/JavaElement;Ljava/lang/String;Ljava/lang/String;I[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Lorg/eclipse/jdt/internal/core/SourceMethodElementInfo;)V

    goto :goto_1

    .line 37
    :cond_0
    new-instance v9, Lorg/eclipse/jdt/internal/core/LambdaMethod;

    move-object v0, v9

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move-object/from16 v5, p6

    move-object/from16 v6, p7

    move-object/from16 v7, p8

    invoke-direct/range {v0 .. v8}, Lorg/eclipse/jdt/internal/core/LambdaMethod;-><init>(Lorg/eclipse/jdt/internal/core/JavaElement;Ljava/lang/String;Ljava/lang/String;I[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Lorg/eclipse/jdt/internal/core/SourceMethodElementInfo;)V

    :goto_1
    return-object v9

    .line 38
    :cond_1
    aget-object v9, v6, v2

    invoke-virtual {v9}, Ljava/lang/String;->toCharArray()[C

    move-result-object v9

    invoke-virtual {v3, v9}, Lorg/eclipse/jdt/internal/core/JavaModelManager;->intern([C)[C

    move-result-object v9

    aput-object v9, v7, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public static createLambdaMethod(Lorg/eclipse/jdt/internal/core/JavaElement;Lorg/eclipse/jdt/internal/compiler/ast/LambdaExpression;)Lorg/eclipse/jdt/internal/core/LambdaMethod;
    .locals 24

    move-object/from16 v0, p1

    .line 1
    invoke-static {}, Lorg/eclipse/jdt/internal/core/JavaModelManager;->getJavaModelManager()Lorg/eclipse/jdt/internal/core/JavaModelManager;

    move-result-object v1

    .line 2
    iget-object v2, v0, Lorg/eclipse/jdt/internal/compiler/ast/FunctionalExpression;->descriptor:Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    iget-object v2, v2, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->parameters:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    array-length v2, v2

    new-array v9, v2, [Ljava/lang/String;

    const/4 v12, 0x0

    move v3, v12

    :goto_0
    if-lt v3, v2, :cond_2

    .line 3
    new-array v10, v2, [Ljava/lang/String;

    move v3, v12

    :goto_1
    if-lt v3, v2, :cond_1

    .line 4
    iget-object v2, v0, Lorg/eclipse/jdt/internal/compiler/ast/FunctionalExpression;->descriptor:Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    iget-object v2, v2, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->returnType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-static {v1, v2}, Lorg/eclipse/jdt/internal/core/LambdaFactory;->getTypeSignature(Lorg/eclipse/jdt/internal/core/JavaModelManager;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Ljava/lang/String;

    move-result-object v11

    .line 5
    new-instance v2, Ljava/lang/String;

    iget-object v3, v0, Lorg/eclipse/jdt/internal/compiler/ast/FunctionalExpression;->descriptor:Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    iget-object v3, v3, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->selector:[C

    invoke-direct {v2, v3}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v1, v2}, Lorg/eclipse/jdt/internal/core/JavaModelManager;->intern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 6
    new-instance v5, Ljava/lang/String;

    iget-object v2, v0, Lorg/eclipse/jdt/internal/compiler/ast/FunctionalExpression;->descriptor:Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    invoke-virtual {v2}, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->computeUniqueKey()[C

    move-result-object v2

    invoke-direct {v5, v2}, Ljava/lang/String;-><init>([C)V

    .line 7
    iget v6, v0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceStart:I

    iget v7, v0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceEnd:I

    iget v8, v0, Lorg/eclipse/jdt/internal/compiler/ast/LambdaExpression;->arrowPosition:I

    move-object/from16 v3, p0

    invoke-static/range {v3 .. v11}, Lorg/eclipse/jdt/internal/core/LambdaFactory;->createLambdaMethod(Lorg/eclipse/jdt/internal/core/JavaElement;Ljava/lang/String;Ljava/lang/String;III[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Lorg/eclipse/jdt/internal/core/LambdaMethod;

    move-result-object v4

    .line 8
    iget-object v2, v0, Lorg/eclipse/jdt/internal/compiler/ast/LambdaExpression;->arguments:[Lorg/eclipse/jdt/internal/compiler/ast/Argument;

    array-length v5, v2

    new-array v6, v5, [Lorg/eclipse/jdt/core/ILocalVariable;

    :goto_2
    if-lt v12, v5, :cond_0

    .line 9
    iget-object v0, v4, Lorg/eclipse/jdt/internal/core/LambdaMethod;->elementInfo:Lorg/eclipse/jdt/internal/core/SourceMethodElementInfo;

    iput-object v6, v0, Lorg/eclipse/jdt/internal/core/SourceMethodElementInfo;->arguments:[Lorg/eclipse/jdt/core/ILocalVariable;

    return-object v4

    .line 10
    :cond_0
    iget-object v2, v0, Lorg/eclipse/jdt/internal/compiler/ast/LambdaExpression;->arguments:[Lorg/eclipse/jdt/internal/compiler/ast/Argument;

    aget-object v2, v2, v12

    .line 11
    new-instance v3, Ljava/lang/String;

    iget-object v7, v0, Lorg/eclipse/jdt/internal/compiler/ast/FunctionalExpression;->descriptor:Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    iget-object v7, v7, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->parameters:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    aget-object v7, v7, v12

    invoke-virtual {v7}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->signature()[C

    move-result-object v7

    invoke-direct {v3, v7}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v1, v3}, Lorg/eclipse/jdt/internal/core/JavaModelManager;->intern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    .line 12
    new-instance v3, Lorg/eclipse/jdt/internal/core/LocalVariable;

    .line 13
    new-instance v15, Ljava/lang/String;

    iget-object v7, v2, Lorg/eclipse/jdt/internal/compiler/ast/AbstractVariableDeclaration;->name:[C

    invoke-direct {v15, v7}, Ljava/lang/String;-><init>([C)V

    .line 14
    iget v7, v2, Lorg/eclipse/jdt/internal/compiler/ast/AbstractVariableDeclaration;->declarationSourceStart:I

    .line 15
    iget v8, v2, Lorg/eclipse/jdt/internal/compiler/ast/AbstractVariableDeclaration;->declarationSourceEnd:I

    .line 16
    iget v9, v2, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceStart:I

    .line 17
    iget v10, v2, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceEnd:I

    .line 18
    iget v2, v2, Lorg/eclipse/jdt/internal/compiler/ast/AbstractVariableDeclaration;->modifiers:I

    const/16 v23, 0x1

    const/16 v21, 0x0

    move-object v13, v3

    move-object v14, v4

    move/from16 v16, v7

    move/from16 v17, v8

    move/from16 v18, v9

    move/from16 v19, v10

    move/from16 v22, v2

    .line 19
    invoke-direct/range {v13 .. v23}, Lorg/eclipse/jdt/internal/core/LocalVariable;-><init>(Lorg/eclipse/jdt/internal/core/JavaElement;Ljava/lang/String;IIIILjava/lang/String;[Lorg/eclipse/jdt/internal/compiler/ast/Annotation;IZ)V

    .line 20
    aput-object v3, v6, v12

    add-int/lit8 v12, v12, 0x1

    goto :goto_2

    .line 21
    :cond_1
    new-instance v4, Ljava/lang/String;

    iget-object v5, v0, Lorg/eclipse/jdt/internal/compiler/ast/LambdaExpression;->arguments:[Lorg/eclipse/jdt/internal/compiler/ast/Argument;

    aget-object v5, v5, v3

    iget-object v5, v5, Lorg/eclipse/jdt/internal/compiler/ast/AbstractVariableDeclaration;->name:[C

    invoke-direct {v4, v5}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v1, v4}, Lorg/eclipse/jdt/internal/core/JavaModelManager;->intern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v10, v3

    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_1

    .line 22
    :cond_2
    iget-object v4, v0, Lorg/eclipse/jdt/internal/compiler/ast/FunctionalExpression;->descriptor:Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    iget-object v4, v4, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->parameters:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    aget-object v4, v4, v3

    invoke-static {v1, v4}, Lorg/eclipse/jdt/internal/core/LambdaFactory;->getTypeSignature(Lorg/eclipse/jdt/internal/core/JavaModelManager;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v9, v3

    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0
.end method

.method private static getTypeSignature(Lorg/eclipse/jdt/internal/core/JavaModelManager;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Ljava/lang/String;
    .locals 2

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->genericTypeSignature()[C

    move-result-object p1

    const/16 v0, 0x2f

    const/16 v1, 0x2e

    invoke-static {p1, v0, v1}, Lorg/eclipse/jdt/core/compiler/CharOperation;->replaceOnCopy([CCC)[C

    move-result-object p1

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/internal/core/JavaModelManager;->intern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static isBinaryMember(Lorg/eclipse/jdt/internal/core/JavaElement;)Z
    .locals 0

    instance-of p0, p0, Lorg/eclipse/jdt/internal/core/BinaryMember;

    return p0
.end method
