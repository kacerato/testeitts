.class public Lorg/eclipse/jdt/internal/core/BinaryTypeConverter;
.super Lorg/eclipse/jdt/internal/compiler/parser/TypeConverter;
.source "SourceFile"


# instance fields
.field private compilationResult:Lorg/eclipse/jdt/internal/compiler/CompilationResult;

.field private typeNames:Lorg/eclipse/jdt/internal/core/util/HashSetOfCharArrayArray;


# direct methods
.method public constructor <init>(Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;Lorg/eclipse/jdt/internal/compiler/CompilationResult;Lorg/eclipse/jdt/internal/core/util/HashSetOfCharArrayArray;)V
    .locals 1

    const/16 v0, 0x24

    invoke-direct {p0, p1, v0}, Lorg/eclipse/jdt/internal/compiler/parser/TypeConverter;-><init>(Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;C)V

    iput-object p2, p0, Lorg/eclipse/jdt/internal/core/BinaryTypeConverter;->compilationResult:Lorg/eclipse/jdt/internal/compiler/CompilationResult;

    iput-object p3, p0, Lorg/eclipse/jdt/internal/core/BinaryTypeConverter;->typeNames:Lorg/eclipse/jdt/internal/core/util/HashSetOfCharArrayArray;

    return-void
.end method

.method private convert(Lorg/eclipse/jdt/core/IMethod;Lorg/eclipse/jdt/core/IType;)Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;
    .locals 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/JavaModelException;
        }
    .end annotation

    move-object/from16 v0, p0

    .line 6
    iget-boolean v1, v0, Lorg/eclipse/jdt/internal/compiler/parser/TypeConverter;->has1_5Compliance:Z

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    .line 7
    invoke-interface/range {p1 .. p1}, Lorg/eclipse/jdt/core/IMethod;->getTypeParameters()[Lorg/eclipse/jdt/core/ITypeParameter;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 8
    array-length v4, v1

    if-lez v4, :cond_1

    .line 9
    array-length v4, v1

    .line 10
    new-array v5, v4, [Lorg/eclipse/jdt/internal/compiler/ast/TypeParameter;

    move v6, v2

    :goto_0
    if-lt v6, v4, :cond_0

    goto :goto_1

    .line 11
    :cond_0
    aget-object v7, v1, v6

    .line 12
    invoke-interface {v7}, Lorg/eclipse/jdt/core/IJavaElement;->getElementName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->toCharArray()[C

    move-result-object v8

    .line 13
    invoke-interface {v7}, Lorg/eclipse/jdt/core/ITypeParameter;->getBounds()[Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lorg/eclipse/jdt/internal/core/BinaryTypeConverter;->stringArrayToCharArray([Ljava/lang/String;)[[C

    move-result-object v7

    .line 14
    invoke-virtual {v0, v8, v7, v2, v2}, Lorg/eclipse/jdt/internal/compiler/parser/TypeConverter;->createTypeParameter([C[[CII)Lorg/eclipse/jdt/internal/compiler/ast/TypeParameter;

    move-result-object v7

    .line 15
    aput-object v7, v5, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_1
    move-object v5, v3

    .line 16
    :goto_1
    invoke-interface/range {p1 .. p1}, Lorg/eclipse/jdt/core/IMethod;->isConstructor()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 17
    new-instance v1, Lorg/eclipse/jdt/internal/compiler/ast/ConstructorDeclaration;

    iget-object v4, v0, Lorg/eclipse/jdt/internal/core/BinaryTypeConverter;->compilationResult:Lorg/eclipse/jdt/internal/compiler/CompilationResult;

    invoke-direct {v1, v4}, Lorg/eclipse/jdt/internal/compiler/ast/ConstructorDeclaration;-><init>(Lorg/eclipse/jdt/internal/compiler/CompilationResult;)V

    .line 18
    iget v4, v1, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->bits:I

    and-int/lit16 v4, v4, -0x81

    iput v4, v1, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->bits:I

    .line 19
    iput-object v5, v1, Lorg/eclipse/jdt/internal/compiler/ast/ConstructorDeclaration;->typeParameters:[Lorg/eclipse/jdt/internal/compiler/ast/TypeParameter;

    goto :goto_3

    .line 20
    :cond_2
    invoke-interface/range {p2 .. p2}, Lorg/eclipse/jdt/core/IType;->isAnnotation()Z

    move-result v1

    if-eqz v1, :cond_3

    new-instance v1, Lorg/eclipse/jdt/internal/compiler/ast/AnnotationMethodDeclaration;

    iget-object v4, v0, Lorg/eclipse/jdt/internal/core/BinaryTypeConverter;->compilationResult:Lorg/eclipse/jdt/internal/compiler/CompilationResult;

    invoke-direct {v1, v4}, Lorg/eclipse/jdt/internal/compiler/ast/AnnotationMethodDeclaration;-><init>(Lorg/eclipse/jdt/internal/compiler/CompilationResult;)V

    goto :goto_2

    :cond_3
    new-instance v1, Lorg/eclipse/jdt/internal/compiler/ast/MethodDeclaration;

    iget-object v4, v0, Lorg/eclipse/jdt/internal/core/BinaryTypeConverter;->compilationResult:Lorg/eclipse/jdt/internal/compiler/CompilationResult;

    invoke-direct {v1, v4}, Lorg/eclipse/jdt/internal/compiler/ast/MethodDeclaration;-><init>(Lorg/eclipse/jdt/internal/compiler/CompilationResult;)V

    .line 21
    :goto_2
    invoke-interface/range {p1 .. p1}, Lorg/eclipse/jdt/core/IMethod;->getReturnType()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v4}, Lorg/eclipse/jdt/internal/core/BinaryTypeConverter;->createTypeReference(Ljava/lang/String;)Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    move-result-object v4

    if-nez v4, :cond_4

    return-object v3

    .line 22
    :cond_4
    iput-object v4, v1, Lorg/eclipse/jdt/internal/compiler/ast/MethodDeclaration;->returnType:Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    .line 23
    iput-object v5, v1, Lorg/eclipse/jdt/internal/compiler/ast/MethodDeclaration;->typeParameters:[Lorg/eclipse/jdt/internal/compiler/ast/TypeParameter;

    .line 24
    :goto_3
    invoke-interface/range {p1 .. p1}, Lorg/eclipse/jdt/core/IMethod;->getElementName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toCharArray()[C

    move-result-object v4

    iput-object v4, v1, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->selector:[C

    .line 25
    invoke-interface/range {p1 .. p1}, Lorg/eclipse/jdt/core/IMember;->getFlags()I

    move-result v4

    .line 26
    invoke-static {v4}, Lorg/eclipse/jdt/core/Flags;->isVarargs(I)Z

    move-result v5

    and-int/lit16 v4, v4, -0x81

    .line 27
    iput v4, v1, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->modifiers:I

    .line 28
    invoke-interface/range {p1 .. p1}, Lorg/eclipse/jdt/core/IMethod;->getParameterTypes()[Ljava/lang/String;

    move-result-object v4

    .line 29
    invoke-interface/range {p1 .. p1}, Lorg/eclipse/jdt/core/IMethod;->getParameterNames()[Ljava/lang/String;

    move-result-object v6

    if-nez v4, :cond_5

    move v7, v2

    goto :goto_4

    .line 30
    :cond_5
    array-length v7, v4

    .line 31
    :goto_4
    invoke-interface/range {p1 .. p1}, Lorg/eclipse/jdt/core/IMethod;->isConstructor()Z

    move-result v8

    if-eqz v8, :cond_6

    invoke-interface/range {p2 .. p2}, Lorg/eclipse/jdt/core/IType;->isMember()Z

    move-result v8

    if-eqz v8, :cond_6

    invoke-interface/range {p2 .. p2}, Lorg/eclipse/jdt/core/IMember;->getFlags()I

    move-result v8

    invoke-static {v8}, Lorg/eclipse/jdt/core/Flags;->isStatic(I)Z

    move-result v8

    if-nez v8, :cond_6

    const/4 v8, 0x1

    goto :goto_5

    :cond_6
    move v8, v2

    :goto_5
    sub-int/2addr v7, v8

    .line 32
    new-array v9, v7, [Lorg/eclipse/jdt/internal/compiler/ast/Argument;

    iput-object v9, v1, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->arguments:[Lorg/eclipse/jdt/internal/compiler/ast/Argument;

    move v9, v2

    :goto_6
    if-lt v9, v7, :cond_b

    .line 33
    invoke-interface/range {p1 .. p1}, Lorg/eclipse/jdt/core/IMethod;->getExceptionTypes()[Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_7

    move v5, v2

    goto :goto_7

    .line 34
    :cond_7
    array-length v5, v4

    :goto_7
    if-lez v5, :cond_a

    .line 35
    new-array v6, v5, [Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    iput-object v6, v1, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->thrownExceptions:[Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    :goto_8
    if-lt v2, v5, :cond_8

    goto :goto_9

    .line 36
    :cond_8
    aget-object v6, v4, v2

    invoke-direct {v0, v6}, Lorg/eclipse/jdt/internal/core/BinaryTypeConverter;->createTypeReference(Ljava/lang/String;)Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    move-result-object v6

    if-nez v6, :cond_9

    return-object v3

    .line 37
    :cond_9
    iget-object v7, v1, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->thrownExceptions:[Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    aput-object v6, v7, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    :cond_a
    :goto_9
    return-object v1

    :cond_b
    add-int v10, v8, v9

    .line 38
    aget-object v10, v4, v10

    .line 39
    invoke-direct {v0, v10}, Lorg/eclipse/jdt/internal/core/BinaryTypeConverter;->createTypeReference(Ljava/lang/String;)Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    move-result-object v15

    if-nez v15, :cond_c

    return-object v3

    :cond_c
    if-eqz v5, :cond_d

    add-int/lit8 v10, v7, -0x1

    if-ne v9, v10, :cond_d

    .line 40
    iget v10, v15, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->bits:I

    or-int/lit16 v10, v10, 0x4000

    iput v10, v15, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->bits:I

    .line 41
    :cond_d
    iget-object v10, v1, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->arguments:[Lorg/eclipse/jdt/internal/compiler/ast/Argument;

    new-instance v17, Lorg/eclipse/jdt/internal/compiler/ast/Argument;

    .line 42
    aget-object v11, v6, v9

    invoke-virtual {v11}, Ljava/lang/String;->toCharArray()[C

    move-result-object v12

    const-wide/16 v13, 0x0

    const/16 v16, 0x0

    move-object/from16 v11, v17

    .line 43
    invoke-direct/range {v11 .. v16}, Lorg/eclipse/jdt/internal/compiler/ast/Argument;-><init>([CJLorg/eclipse/jdt/internal/compiler/ast/TypeReference;I)V

    .line 44
    aput-object v17, v10, v9

    add-int/lit8 v9, v9, 0x1

    goto :goto_6
.end method

.method private convert(Lorg/eclipse/jdt/core/IField;Lorg/eclipse/jdt/core/IType;)Lorg/eclipse/jdt/internal/compiler/ast/FieldDeclaration;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/JavaModelException;
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Lorg/eclipse/jdt/core/IField;->getTypeSignature()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p2}, Lorg/eclipse/jdt/internal/core/BinaryTypeConverter;->createTypeReference(Ljava/lang/String;)Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    move-result-object p2

    if-nez p2, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 2
    :cond_0
    new-instance v0, Lorg/eclipse/jdt/internal/compiler/ast/FieldDeclaration;

    invoke-direct {v0}, Lorg/eclipse/jdt/internal/compiler/ast/FieldDeclaration;-><init>()V

    .line 3
    invoke-interface {p1}, Lorg/eclipse/jdt/core/IField;->getElementName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    iput-object v1, v0, Lorg/eclipse/jdt/internal/compiler/ast/AbstractVariableDeclaration;->name:[C

    .line 4
    iput-object p2, v0, Lorg/eclipse/jdt/internal/compiler/ast/AbstractVariableDeclaration;->type:Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    .line 5
    invoke-interface {p1}, Lorg/eclipse/jdt/core/IMember;->getFlags()I

    move-result p1

    iput p1, v0, Lorg/eclipse/jdt/internal/compiler/ast/AbstractVariableDeclaration;->modifiers:I

    return-object v0
.end method

.method private convert(Lorg/eclipse/jdt/core/IType;Lorg/eclipse/jdt/core/IType;Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;)Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/JavaModelException;
        }
    .end annotation

    .line 45
    new-instance v0, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;

    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/BinaryTypeConverter;->compilationResult:Lorg/eclipse/jdt/internal/compiler/CompilationResult;

    invoke-direct {v0, v1}, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;-><init>(Lorg/eclipse/jdt/internal/compiler/CompilationResult;)V

    .line 46
    invoke-interface {p1}, Lorg/eclipse/jdt/core/IMember;->getDeclaringType()Lorg/eclipse/jdt/core/IType;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 47
    iget v1, v0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->bits:I

    or-int/lit16 v1, v1, 0x400

    iput v1, v0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->bits:I

    .line 48
    :cond_0
    invoke-interface {p1}, Lorg/eclipse/jdt/core/IType;->getElementName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    iput-object v1, v0, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->name:[C

    .line 49
    invoke-interface {p1}, Lorg/eclipse/jdt/core/IMember;->getFlags()I

    move-result v1

    iput v1, v0, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->modifiers:I

    .line 50
    invoke-interface {p1}, Lorg/eclipse/jdt/core/IType;->getSuperclassName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 51
    invoke-interface {p1}, Lorg/eclipse/jdt/core/IType;->getSuperclassTypeSignature()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lorg/eclipse/jdt/internal/core/BinaryTypeConverter;->createTypeReference(Ljava/lang/String;)Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 52
    iput-object v1, v0, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->superclass:Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    .line 53
    iget v2, v1, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->bits:I

    or-int/lit8 v2, v2, 0x10

    iput v2, v1, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->bits:I

    .line 54
    :cond_1
    invoke-interface {p1}, Lorg/eclipse/jdt/core/IType;->getSuperInterfaceTypeSignatures()[Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    if-nez v1, :cond_2

    move v3, v2

    goto :goto_0

    .line 55
    :cond_2
    array-length v3, v1

    .line 56
    :goto_0
    new-array v4, v3, [Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    iput-object v4, v0, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->superInterfaces:[Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    move v4, v2

    move v5, v4

    :goto_1
    if-lt v4, v3, :cond_19

    if-eq v5, v3, :cond_3

    .line 57
    iget-object v1, v0, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->fields:[Lorg/eclipse/jdt/internal/compiler/ast/FieldDeclaration;

    new-array v4, v3, [Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    iput-object v4, v0, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->superInterfaces:[Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    invoke-static {v1, v2, v4, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 58
    :cond_3
    iget-boolean v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/TypeConverter;->has1_5Compliance:Z

    if-eqz v1, :cond_5

    .line 59
    invoke-interface {p1}, Lorg/eclipse/jdt/core/IType;->getTypeParameters()[Lorg/eclipse/jdt/core/ITypeParameter;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 60
    array-length v3, v1

    if-lez v3, :cond_5

    .line 61
    array-length v3, v1

    .line 62
    new-array v4, v3, [Lorg/eclipse/jdt/internal/compiler/ast/TypeParameter;

    move v5, v2

    :goto_2
    if-lt v5, v3, :cond_4

    .line 63
    iput-object v4, v0, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->typeParameters:[Lorg/eclipse/jdt/internal/compiler/ast/TypeParameter;

    goto :goto_3

    .line 64
    :cond_4
    aget-object v6, v1, v5

    .line 65
    invoke-interface {v6}, Lorg/eclipse/jdt/core/IJavaElement;->getElementName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->toCharArray()[C

    move-result-object v7

    .line 66
    invoke-interface {v6}, Lorg/eclipse/jdt/core/ITypeParameter;->getBounds()[Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lorg/eclipse/jdt/internal/core/BinaryTypeConverter;->stringArrayToCharArray([Ljava/lang/String;)[[C

    move-result-object v6

    .line 67
    invoke-virtual {p0, v7, v6, v2, v2}, Lorg/eclipse/jdt/internal/compiler/parser/TypeConverter;->createTypeParameter([C[[CII)Lorg/eclipse/jdt/internal/compiler/ast/TypeParameter;

    move-result-object v6

    .line 68
    aput-object v6, v4, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 69
    :cond_5
    :goto_3
    invoke-interface {p1}, Lorg/eclipse/jdt/core/IType;->getTypes()[Lorg/eclipse/jdt/core/IType;

    move-result-object v6

    if-nez v6, :cond_6

    move v7, v2

    goto :goto_4

    .line 70
    :cond_6
    array-length v1, v6

    move v7, v1

    .line 71
    :goto_4
    new-array v1, v7, [Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;

    iput-object v1, v0, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->memberTypes:[Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;

    move v1, v2

    :goto_5
    if-lt v1, v7, :cond_17

    .line 72
    invoke-interface {p1}, Lorg/eclipse/jdt/core/IType;->getFields()[Lorg/eclipse/jdt/core/IField;

    move-result-object v3

    if-nez v3, :cond_7

    move v4, v2

    goto :goto_6

    .line 73
    :cond_7
    array-length p2, v3

    move v4, p2

    .line 74
    :goto_6
    new-array p2, v4, [Lorg/eclipse/jdt/internal/compiler/ast/FieldDeclaration;

    iput-object p2, v0, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->fields:[Lorg/eclipse/jdt/internal/compiler/ast/FieldDeclaration;

    move p2, v2

    move p3, p2

    :goto_7
    if-lt p2, v4, :cond_15

    if-eq p3, v4, :cond_8

    .line 75
    iget-object p2, v0, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->fields:[Lorg/eclipse/jdt/internal/compiler/ast/FieldDeclaration;

    new-array v1, p3, [Lorg/eclipse/jdt/internal/compiler/ast/FieldDeclaration;

    iput-object v1, v0, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->fields:[Lorg/eclipse/jdt/internal/compiler/ast/FieldDeclaration;

    invoke-static {p2, v2, v1, v2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 76
    :cond_8
    invoke-interface {p1}, Lorg/eclipse/jdt/core/IType;->getMethods()[Lorg/eclipse/jdt/core/IMethod;

    move-result-object v1

    if-nez v1, :cond_9

    move v5, v2

    goto :goto_8

    .line 77
    :cond_9
    array-length p2, v1

    move v5, p2

    :goto_8
    move p2, v2

    :goto_9
    const/4 p3, 0x1

    if-lt p2, v5, :cond_a

    move p2, p3

    goto :goto_a

    .line 78
    :cond_a
    aget-object v3, v1, p2

    invoke-interface {v3}, Lorg/eclipse/jdt/core/IMethod;->isConstructor()Z

    move-result v3

    if-eqz v3, :cond_14

    move p2, v2

    .line 79
    :goto_a
    invoke-interface {p1}, Lorg/eclipse/jdt/core/IType;->isInterface()Z

    move-result v3

    if-eqz v3, :cond_b

    move v4, v2

    goto :goto_b

    :cond_b
    move v4, p2

    :goto_b
    add-int p2, v5, v4

    .line 80
    new-array p2, p2, [Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;

    iput-object p2, v0, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->methods:[Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;

    if-eqz v4, :cond_c

    .line 81
    invoke-virtual {v0, v2, v2}, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->createDefaultConstructor(ZZ)Lorg/eclipse/jdt/internal/compiler/ast/ConstructorDeclaration;

    move-result-object v6

    aput-object v6, p2, v2

    :cond_c
    move p2, v2

    move v6, p2

    move v7, v6

    :goto_c
    if-lt p2, v5, :cond_f

    if-eq v6, v5, :cond_d

    .line 82
    iget-object p1, v0, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->methods:[Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;

    add-int/2addr v6, v4

    new-array p2, v6, [Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;

    iput-object p2, v0, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->methods:[Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;

    invoke-static {p1, v2, p2, v2, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_d
    if-eqz v7, :cond_e

    .line 83
    iget p1, v0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->bits:I

    or-int/lit16 p1, p1, 0x800

    iput p1, v0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->bits:I

    :cond_e
    return-object v0

    .line 84
    :cond_f
    aget-object v8, v1, p2

    invoke-direct {p0, v8, p1}, Lorg/eclipse/jdt/internal/core/BinaryTypeConverter;->convert(Lorg/eclipse/jdt/core/IMethod;Lorg/eclipse/jdt/core/IType;)Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;

    move-result-object v8

    if-eqz v8, :cond_13

    .line 85
    invoke-virtual {v8}, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->isAbstract()Z

    move-result v9

    if-nez v9, :cond_10

    if-eqz v3, :cond_11

    .line 86
    :cond_10
    iget v10, v8, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->modifiers:I

    const/high16 v11, 0x1000000

    or-int/2addr v10, v11

    iput v10, v8, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->modifiers:I

    :cond_11
    if-eqz v9, :cond_12

    move v7, p3

    .line 87
    :cond_12
    iget-object v9, v0, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->methods:[Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;

    add-int/lit8 v10, v6, 0x1

    add-int/2addr v6, v4

    aput-object v8, v9, v6

    move v6, v10

    :cond_13
    add-int/lit8 p2, p2, 0x1

    goto :goto_c

    :cond_14
    add-int/lit8 p2, p2, 0x1

    goto :goto_9

    .line 88
    :cond_15
    aget-object v1, v3, p2

    invoke-direct {p0, v1, p1}, Lorg/eclipse/jdt/internal/core/BinaryTypeConverter;->convert(Lorg/eclipse/jdt/core/IField;Lorg/eclipse/jdt/core/IType;)Lorg/eclipse/jdt/internal/compiler/ast/FieldDeclaration;

    move-result-object v1

    if-eqz v1, :cond_16

    .line 89
    iget-object v5, v0, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->fields:[Lorg/eclipse/jdt/internal/compiler/ast/FieldDeclaration;

    add-int/lit8 v6, p3, 0x1

    aput-object v1, v5, p3

    move p3, v6

    :cond_16
    add-int/lit8 p2, p2, 0x1

    goto/16 :goto_7

    :cond_17
    if-eqz p2, :cond_18

    .line 90
    invoke-interface {p2}, Lorg/eclipse/jdt/core/IType;->getFullyQualifiedName()Ljava/lang/String;

    move-result-object v3

    aget-object v4, v6, v1

    invoke-interface {v4}, Lorg/eclipse/jdt/core/IType;->getFullyQualifiedName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 91
    iget-object v3, v0, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->memberTypes:[Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;

    aput-object p3, v3, v1

    goto :goto_d

    .line 92
    :cond_18
    iget-object v3, v0, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->memberTypes:[Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;

    aget-object v4, v6, v1

    const/4 v5, 0x0

    invoke-direct {p0, v4, v5, v5}, Lorg/eclipse/jdt/internal/core/BinaryTypeConverter;->convert(Lorg/eclipse/jdt/core/IType;Lorg/eclipse/jdt/core/IType;Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;)Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;

    move-result-object v4

    aput-object v4, v3, v1

    .line 93
    :goto_d
    iget-object v3, v0, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->memberTypes:[Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;

    aget-object v3, v3, v1

    iput-object v0, v3, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->enclosingType:Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;

    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_5

    .line 94
    :cond_19
    aget-object v6, v1, v4

    invoke-direct {p0, v6}, Lorg/eclipse/jdt/internal/core/BinaryTypeConverter;->createTypeReference(Ljava/lang/String;)Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    move-result-object v6

    if-eqz v6, :cond_1a

    .line 95
    iget-object v7, v0, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->superInterfaces:[Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    aput-object v6, v7, v5

    add-int/lit8 v5, v5, 0x1

    .line 96
    iget v7, v6, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->bits:I

    or-int/lit8 v7, v7, 0x10

    iput v7, v6, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->bits:I

    :cond_1a
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_1
.end method

.method private createTypeReference(Ljava/lang/String;)Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;
    .locals 2

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, v0}, Lorg/eclipse/jdt/internal/compiler/parser/TypeConverter;->createTypeReference(Ljava/lang/String;II)Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    move-result-object p1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/BinaryTypeConverter;->typeNames:Lorg/eclipse/jdt/internal/core/util/HashSetOfCharArrayArray;

    if-eqz v0, :cond_0

    instance-of v1, p1, Lorg/eclipse/jdt/internal/compiler/ast/QualifiedTypeReference;

    if-eqz v1, :cond_0

    move-object v1, p1

    check-cast v1, Lorg/eclipse/jdt/internal/compiler/ast/QualifiedTypeReference;

    iget-object v1, v1, Lorg/eclipse/jdt/internal/compiler/ast/QualifiedTypeReference;->tokens:[[C

    invoke-virtual {v0, v1}, Lorg/eclipse/jdt/internal/core/util/HashSetOfCharArrayArray;->add([[C)[[C

    :cond_0
    return-object p1
.end method

.method private static stringArrayToCharArray([Ljava/lang/String;)[[C
    .locals 4

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    array-length v0, p0

    if-nez v0, :cond_1

    sget-object p0, Lorg/eclipse/jdt/core/compiler/CharOperation;->NO_CHAR_CHAR:[[C

    return-object p0

    :cond_1
    new-array v1, v0, [[C

    const/4 v2, 0x0

    :goto_0
    if-lt v2, v0, :cond_2

    return-object v1

    :cond_2
    aget-object v3, p0, v2

    invoke-virtual {v3}, Ljava/lang/String;->toCharArray()[C

    move-result-object v3

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method


# virtual methods
.method public buildImports(Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileReader;)[Lorg/eclipse/jdt/internal/compiler/ast/ImportReference;
    .locals 9

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileReader;->getConstantPoolOffsets()[I

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-lt v3, v1, :cond_0

    goto :goto_2

    :cond_0
    aget v4, v0, v3

    invoke-virtual {p1, v4}, Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileStruct;->u1At(I)I

    move-result v4

    const/4 v5, 0x7

    if-eq v4, v5, :cond_2

    const/16 v5, 0xa

    if-eq v4, v5, :cond_1

    const/16 v5, 0xb

    if-eq v4, v5, :cond_1

    const/4 v4, 0x0

    goto :goto_1

    :cond_1
    aget v4, v0, v3

    add-int/lit8 v4, v4, 0x3

    invoke-virtual {p1, v4}, Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileStruct;->u2At(I)I

    move-result v4

    aget v4, v0, v4

    add-int/lit8 v4, v4, 0x3

    invoke-virtual {p1, v4}, Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileStruct;->u2At(I)I

    move-result v4

    aget v4, v0, v4

    add-int/lit8 v5, v4, 0x3

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {p1, v4}, Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileStruct;->u2At(I)I

    move-result v4

    invoke-virtual {p1, v5, v4}, Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileStruct;->utf8At(II)[C

    move-result-object v4

    goto :goto_1

    :cond_2
    aget v4, v0, v3

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {p1, v4}, Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileStruct;->u2At(I)I

    move-result v4

    aget v4, v0, v4

    add-int/lit8 v5, v4, 0x3

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {p1, v4}, Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileStruct;->u2At(I)I

    move-result v4

    invoke-virtual {p1, v5, v4}, Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileStruct;->utf8At(II)[C

    move-result-object v4

    :goto_1
    if-eqz v4, :cond_4

    array-length v5, v4

    if-lez v5, :cond_3

    aget-char v5, v4, v2

    const/16 v6, 0x5b

    if-ne v5, v6, :cond_3

    goto :goto_2

    :cond_3
    iget-object v5, p0, Lorg/eclipse/jdt/internal/core/BinaryTypeConverter;->typeNames:Lorg/eclipse/jdt/internal/core/util/HashSetOfCharArrayArray;

    const/16 v6, 0x2f

    invoke-static {v6, v4}, Lorg/eclipse/jdt/core/compiler/CharOperation;->splitOn(C[C)[[C

    move-result-object v4

    invoke-virtual {v5, v4}, Lorg/eclipse/jdt/internal/core/util/HashSetOfCharArrayArray;->add([[C)[[C

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_4
    :goto_2
    iget-object p1, p0, Lorg/eclipse/jdt/internal/core/BinaryTypeConverter;->typeNames:Lorg/eclipse/jdt/internal/core/util/HashSetOfCharArrayArray;

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/core/util/HashSetOfCharArrayArray;->size()I

    move-result p1

    new-array p1, p1, [Lorg/eclipse/jdt/internal/compiler/ast/ImportReference;

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/BinaryTypeConverter;->typeNames:Lorg/eclipse/jdt/internal/core/util/HashSetOfCharArrayArray;

    iget-object v0, v0, Lorg/eclipse/jdt/internal/core/util/HashSetOfCharArrayArray;->set:[[[C

    array-length v1, v0

    move v3, v2

    move v4, v3

    :goto_3
    if-lt v3, v1, :cond_5

    return-object p1

    :cond_5
    aget-object v5, v0, v3

    if-eqz v5, :cond_6

    add-int/lit8 v6, v4, 0x1

    new-instance v7, Lorg/eclipse/jdt/internal/compiler/ast/ImportReference;

    array-length v8, v5

    new-array v8, v8, [J

    invoke-direct {v7, v5, v8, v2, v2}, Lorg/eclipse/jdt/internal/compiler/ast/ImportReference;-><init>([[C[JZI)V

    aput-object v7, p1, v4

    move v4, v6

    :cond_6
    add-int/lit8 v3, v3, 0x1

    goto :goto_3
.end method

.method public buildTypeDeclaration(Lorg/eclipse/jdt/core/IType;Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;)Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/JavaModelException;
        }
    .end annotation

    invoke-interface {p1}, Lorg/eclipse/jdt/core/IType;->getPackageFragment()Lorg/eclipse/jdt/core/IPackageFragment;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jdt/internal/core/PackageFragment;

    iget-object v0, v0, Lorg/eclipse/jdt/internal/core/PackageFragment;->names:[Ljava/lang/String;

    invoke-static {v0}, Lorg/eclipse/jdt/internal/core/util/Util;->toCharArrays([Ljava/lang/String;)[[C

    move-result-object v0

    array-length v1, v0

    if-lez v1, :cond_0

    new-instance v1, Lorg/eclipse/jdt/internal/compiler/ast/ImportReference;

    const/4 v2, 0x1

    new-array v2, v2, [J

    const/4 v3, 0x0

    invoke-direct {v1, v0, v2, v3, v3}, Lorg/eclipse/jdt/internal/compiler/ast/ImportReference;-><init>([[C[JZI)V

    iput-object v1, p2, Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;->currentPackage:Lorg/eclipse/jdt/internal/compiler/ast/ImportReference;

    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, v0}, Lorg/eclipse/jdt/internal/core/BinaryTypeConverter;->convert(Lorg/eclipse/jdt/core/IType;Lorg/eclipse/jdt/core/IType;Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;)Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;

    move-result-object v0

    invoke-interface {p1}, Lorg/eclipse/jdt/core/IMember;->getDeclaringType()Lorg/eclipse/jdt/core/IType;

    move-result-object v1

    move-object v2, v0

    :goto_0
    move-object v4, v1

    move-object v1, p1

    move-object p1, v4

    if-nez p1, :cond_1

    filled-new-array {v2}, [Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;

    move-result-object p1

    iput-object p1, p2, Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;->types:[Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;

    return-object v0

    :cond_1
    invoke-direct {p0, p1, v1, v2}, Lorg/eclipse/jdt/internal/core/BinaryTypeConverter;->convert(Lorg/eclipse/jdt/core/IType;Lorg/eclipse/jdt/core/IType;Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;)Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;

    move-result-object v2

    invoke-interface {p1}, Lorg/eclipse/jdt/core/IMember;->getDeclaringType()Lorg/eclipse/jdt/core/IType;

    move-result-object v1

    goto :goto_0
.end method
