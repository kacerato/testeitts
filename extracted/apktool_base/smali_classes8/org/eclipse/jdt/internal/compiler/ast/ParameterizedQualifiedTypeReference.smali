.class public Lorg/eclipse/jdt/internal/compiler/ast/ParameterizedQualifiedTypeReference;
.super Lorg/eclipse/jdt/internal/compiler/ast/ArrayQualifiedTypeReference;
.source "SourceFile"


# instance fields
.field public typeArguments:[[Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

.field typesPerToken:[Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;


# direct methods
.method public constructor <init>([[C[[Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;I[J)V
    .locals 5

    .line 1
    invoke-direct {p0, p1, p3, p4}, Lorg/eclipse/jdt/internal/compiler/ast/ArrayQualifiedTypeReference;-><init>([[CI[J)V

    .line 2
    iput-object p2, p0, Lorg/eclipse/jdt/internal/compiler/ast/ParameterizedQualifiedTypeReference;->typeArguments:[[Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    .line 3
    array-length p1, p2

    const/4 p3, 0x0

    move p4, p3

    :goto_0
    if-lt p4, p1, :cond_0

    goto :goto_2

    .line 4
    :cond_0
    aget-object v0, p2, p4

    if-eqz v0, :cond_3

    .line 5
    array-length v1, v0

    move v2, p3

    :goto_1
    if-lt v2, v1, :cond_1

    goto :goto_3

    .line 6
    :cond_1
    aget-object v3, v0, v2

    iget v3, v3, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->bits:I

    const/high16 v4, 0x100000

    and-int/2addr v3, v4

    if-eqz v3, :cond_2

    .line 7
    iget p1, p0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->bits:I

    or-int/2addr p1, v4

    iput p1, p0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->bits:I

    :goto_2
    return-void

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    :goto_3
    add-int/lit8 p4, p4, 0x1

    goto :goto_0
.end method

.method public constructor <init>([[C[[Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;I[[Lorg/eclipse/jdt/internal/compiler/ast/Annotation;[J)V
    .locals 0

    .line 8
    invoke-direct {p0, p1, p2, p3, p5}, Lorg/eclipse/jdt/internal/compiler/ast/ParameterizedQualifiedTypeReference;-><init>([[C[[Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;I[J)V

    .line 9
    invoke-virtual {p0, p4}, Lorg/eclipse/jdt/internal/compiler/ast/ArrayQualifiedTypeReference;->setAnnotationsOnDimensions([[Lorg/eclipse/jdt/internal/compiler/ast/Annotation;)V

    if-eqz p4, :cond_0

    .line 10
    iget p1, p0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->bits:I

    const/high16 p2, 0x100000

    or-int/2addr p1, p2

    iput p1, p0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->bits:I

    :cond_0
    return-void
.end method

.method private createArrayType(Lorg/eclipse/jdt/internal/compiler/lookup/Scope;)V
    .locals 2

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/ArrayQualifiedTypeReference;->dimensions:I

    if-lez v0, :cond_1

    const/16 v1, 0xff

    if-le v0, v1, :cond_0

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->tooManyDimensions(Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;)V

    :cond_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->resolvedType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/ast/ArrayQualifiedTypeReference;->dimensions:I

    invoke-virtual {p1, v0, v1}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->createArrayType(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;I)Lorg/eclipse/jdt/internal/compiler/lookup/ArrayBinding;

    move-result-object p1

    iput-object p1, p0, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->resolvedType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    :cond_1
    return-void
.end method

.method private internalResolveLeafType(Lorg/eclipse/jdt/internal/compiler/lookup/Scope;Z)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;
    .locals 20

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    iget v3, v1, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->kind:I

    const/4 v4, 0x3

    if-ne v3, v4, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    iget-object v4, v0, Lorg/eclipse/jdt/internal/compiler/ast/QualifiedTypeReference;->tokens:[[C

    invoke-virtual {v1, v4}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->getPackage([[C)Lorg/eclipse/jdt/internal/compiler/lookup/Binding;

    move-result-object v4

    const/4 v7, 0x0

    if-eqz v4, :cond_5

    invoke-virtual {v4}, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->isValidBinding()Z

    move-result v8

    if-nez v8, :cond_5

    check-cast v4, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    iput-object v4, v0, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->resolvedType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-virtual/range {p0 .. p1}, Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;->reportInvalidType(Lorg/eclipse/jdt/internal/compiler/lookup/Scope;)V

    iget-object v4, v0, Lorg/eclipse/jdt/internal/compiler/ast/QualifiedTypeReference;->tokens:[[C

    array-length v8, v4

    const/4 v4, 0x0

    :goto_1
    if-lt v4, v8, :cond_1

    return-object v7

    :cond_1
    iget-object v6, v0, Lorg/eclipse/jdt/internal/compiler/ast/ParameterizedQualifiedTypeReference;->typeArguments:[[Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    aget-object v6, v6, v4

    if-eqz v6, :cond_4

    array-length v9, v6

    const/4 v10, 0x0

    :goto_2
    if-lt v10, v9, :cond_2

    goto :goto_4

    :cond_2
    aget-object v11, v6, v10

    if-eqz v3, :cond_3

    move-object v12, v1

    check-cast v12, Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;

    invoke-virtual {v11, v12}, Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;->resolveType(Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    goto :goto_3

    :cond_3
    move-object v12, v1

    check-cast v12, Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;

    invoke-virtual {v11, v12, v2}, Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;->resolveType(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;Z)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    :goto_3
    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    :cond_4
    :goto_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_5
    if-nez v4, :cond_6

    move-object v4, v7

    goto :goto_5

    :cond_6
    check-cast v4, Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;

    :goto_5
    invoke-virtual {v0, v1, v4}, Lorg/eclipse/jdt/internal/compiler/ast/QualifiedTypeReference;->rejectAnnotationsOnPackageQualifiers(Lorg/eclipse/jdt/internal/compiler/lookup/Scope;Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;)V

    iget-object v8, v0, Lorg/eclipse/jdt/internal/compiler/ast/QualifiedTypeReference;->tokens:[[C

    array-length v8, v8

    new-array v9, v8, [Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    iput-object v9, v0, Lorg/eclipse/jdt/internal/compiler/ast/ParameterizedQualifiedTypeReference;->typesPerToken:[Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    if-nez v4, :cond_7

    const/4 v9, 0x0

    goto :goto_6

    :cond_7
    iget-object v9, v4, Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;->compoundName:[[C

    array-length v9, v9

    :goto_6
    move-object v10, v7

    const/4 v11, 0x1

    :goto_7
    if-lt v9, v8, :cond_8

    iget-object v1, v0, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->resolvedType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    return-object v1

    :cond_8
    invoke-virtual {v0, v9, v1, v4}, Lorg/eclipse/jdt/internal/compiler/ast/QualifiedTypeReference;->findNextTypeBinding(ILorg/eclipse/jdt/internal/compiler/lookup/Scope;Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    iget-object v12, v0, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->resolvedType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-virtual {v12}, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->isValidBinding()Z

    move-result v12

    if-nez v12, :cond_d

    invoke-virtual/range {p0 .. p1}, Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;->reportInvalidType(Lorg/eclipse/jdt/internal/compiler/lookup/Scope;)V

    :goto_8
    if-lt v9, v8, :cond_9

    return-object v7

    :cond_9
    iget-object v2, v0, Lorg/eclipse/jdt/internal/compiler/ast/ParameterizedQualifiedTypeReference;->typeArguments:[[Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    aget-object v2, v2, v9

    if-eqz v2, :cond_c

    array-length v4, v2

    const/4 v6, 0x0

    :goto_9
    if-lt v6, v4, :cond_a

    goto :goto_b

    :cond_a
    aget-object v10, v2, v6

    if-eqz v3, :cond_b

    move-object v11, v1

    check-cast v11, Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;

    invoke-virtual {v10, v11}, Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;->resolveType(Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    goto :goto_a

    :cond_b
    move-object v11, v1

    check-cast v11, Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;

    invoke-virtual {v10, v11}, Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;->resolveType(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    :goto_a
    add-int/lit8 v6, v6, 0x1

    goto :goto_9

    :cond_c
    :goto_b
    add-int/lit8 v9, v9, 0x1

    goto :goto_8

    :cond_d
    iget-object v12, v0, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->resolvedType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    check-cast v12, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    if-nez v10, :cond_e

    invoke-virtual {v12}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->enclosingType()Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move-result-object v10

    if-eqz v10, :cond_12

    invoke-virtual {v12}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->hasEnclosingInstanceContext()Z

    move-result v13

    if-eqz v13, :cond_12

    invoke-virtual/range {p1 .. p1}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->environment()Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    move-result-object v13

    invoke-virtual {v13, v10}, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->convertToParameterizedType(Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move-result-object v10

    goto :goto_c

    :cond_e
    iget-object v13, v0, Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;->annotations:[[Lorg/eclipse/jdt/internal/compiler/ast/Annotation;

    if-eqz v13, :cond_f

    add-int/lit8 v14, v9, -0x1

    aget-object v13, v13, v14

    invoke-static {v1, v12, v13}, Lorg/eclipse/jdt/internal/compiler/ast/QualifiedTypeReference;->rejectAnnotationsOnStaticMemberQualififer(Lorg/eclipse/jdt/internal/compiler/lookup/Scope;Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;[Lorg/eclipse/jdt/internal/compiler/ast/Annotation;)V

    :cond_f
    if-eqz v11, :cond_11

    invoke-virtual {v12}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->isStatic()Z

    move-result v13

    if-eqz v13, :cond_11

    invoke-virtual {v10}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isParameterizedTypeWithActualArguments()Z

    move-result v13

    if-nez v13, :cond_10

    invoke-virtual {v10}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isGenericType()Z

    move-result v13

    if-eqz v13, :cond_11

    :cond_10
    invoke-virtual/range {p1 .. p1}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object v11

    invoke-virtual {v11, v0, v12, v10, v9}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->staticMemberOfParameterizedType(Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;I)V

    invoke-virtual {v10}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->actualType()Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move-result-object v10

    const/4 v11, 0x0

    :cond_11
    invoke-virtual {v12}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->enclosingType()Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move-result-object v13

    if-eqz v13, :cond_12

    invoke-virtual {v13}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->erasure()Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v14

    invoke-virtual {v10}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->erasure()Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v15

    invoke-static {v14, v15}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->notEquals(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Z

    move-result v14

    if-eqz v14, :cond_12

    move-object v10, v13

    :cond_12
    :goto_c
    iget-object v13, v0, Lorg/eclipse/jdt/internal/compiler/ast/ParameterizedQualifiedTypeReference;->typeArguments:[[Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    aget-object v13, v13, v9

    if-eqz v13, :cond_22

    if-eqz v3, :cond_13

    move-object v14, v1

    check-cast v14, Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;

    iget-object v15, v14, Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;->superTypeReference:Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    iput-object v7, v14, Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;->superTypeReference:Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    goto :goto_d

    :cond_13
    move-object v15, v7

    :goto_d
    array-length v14, v13

    if-nez v14, :cond_14

    add-int/lit8 v5, v8, -0x1

    if-ne v9, v5, :cond_14

    iget v5, v0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->bits:I

    const/high16 v16, 0x80000

    and-int v5, v5, v16

    if-eqz v5, :cond_14

    const/4 v5, 0x1

    goto :goto_e

    :cond_14
    const/4 v5, 0x0

    :goto_e
    new-array v6, v14, [Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-virtual {v12}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->original()Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v17

    move-object/from16 v7, v17

    check-cast v7, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move-object/from16 v17, v4

    const/4 v4, 0x0

    const/16 v18, 0x0

    :goto_f
    if-lt v4, v14, :cond_1f

    if-eqz v18, :cond_15

    const/4 v4, 0x0

    return-object v4

    :cond_15
    const/4 v4, 0x0

    if-eqz v3, :cond_16

    move-object v4, v1

    check-cast v4, Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;

    iput-object v15, v4, Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;->superTypeReference:Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    invoke-virtual {v4, v7, v0}, Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;->detectHierarchyCycle(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;)Z

    move-result v4

    if-eqz v4, :cond_16

    const/4 v4, 0x0

    return-object v4

    :cond_16
    invoke-virtual {v7}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->typeVariables()[Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;

    move-result-object v4

    sget-object v15, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->NO_TYPE_VARIABLES:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;

    if-ne v4, v15, :cond_19

    invoke-virtual/range {p1 .. p1}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->compilerOptions()Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;

    move-result-object v2

    iget-wide v2, v2, Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;->originalSourceLevel:J

    const-wide/32 v4, 0x310000

    cmp-long v2, v2, v4

    if-ltz v2, :cond_17

    invoke-virtual/range {p1 .. p1}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object v1

    invoke-virtual {v1, v9, v0, v12, v6}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->nonGenericTypeCannotBeParameterized(ILorg/eclipse/jdt/internal/compiler/ast/ASTNode;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)V

    const/4 v2, 0x0

    return-object v2

    :cond_17
    const/4 v2, 0x0

    if-eqz v10, :cond_18

    invoke-virtual {v10}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isParameterizedType()Z

    move-result v3

    if-eqz v3, :cond_18

    invoke-virtual/range {p1 .. p1}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->environment()Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    move-result-object v1

    invoke-virtual {v1, v7, v2, v10}, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->createParameterizedType(Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/ParameterizedTypeBinding;

    move-result-object v12

    :cond_18
    iput-object v12, v0, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->resolvedType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    return-object v12

    :cond_19
    array-length v4, v4

    if-eq v14, v4, :cond_1a

    if-nez v5, :cond_1a

    invoke-virtual/range {p1 .. p1}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object v1

    invoke-virtual {v1, v0, v12, v6, v9}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->incorrectArityForParameterizedType(Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;I)V

    const/4 v1, 0x0

    return-object v1

    :cond_1a
    if-eqz v11, :cond_1c

    invoke-virtual {v12}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->hasEnclosingInstanceContext()Z

    move-result v4

    if-nez v4, :cond_1b

    if-eqz v10, :cond_1c

    invoke-virtual {v10}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isRawType()Z

    move-result v4

    if-eqz v4, :cond_1c

    iget-object v4, v0, Lorg/eclipse/jdt/internal/compiler/ast/ParameterizedQualifiedTypeReference;->typesPerToken:[Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    add-int/lit8 v12, v9, -0x1

    invoke-virtual {v10}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->actualType()Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move-result-object v10

    aput-object v10, v4, v12

    goto :goto_10

    :cond_1b
    invoke-virtual {v12}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->enclosingType()Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move-result-object v4

    if-eqz v4, :cond_1c

    invoke-virtual {v4}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isRawType()Z

    move-result v12

    if-eqz v12, :cond_1c

    invoke-virtual/range {p1 .. p1}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object v11

    invoke-virtual/range {p1 .. p1}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->environment()Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    move-result-object v12

    invoke-virtual {v12, v7, v4}, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->createRawType(Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/RawTypeBinding;

    move-result-object v4

    invoke-virtual {v11, v0, v4, v6}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->rawMemberTypeCannotBeParameterized(Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)V

    const/4 v11, 0x0

    :cond_1c
    :goto_10
    invoke-virtual/range {p1 .. p1}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->environment()Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    move-result-object v4

    invoke-virtual {v4, v7, v6, v10}, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->createParameterizedType(Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/ParameterizedTypeBinding;

    move-result-object v4

    if-nez v5, :cond_1e

    if-eqz v2, :cond_1d

    invoke-virtual {v4, v1, v13}, Lorg/eclipse/jdt/internal/compiler/lookup/ParameterizedTypeBinding;->boundCheck(Lorg/eclipse/jdt/internal/compiler/lookup/Scope;[Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;)V

    goto :goto_11

    :cond_1d
    invoke-virtual {v1, v0}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->deferBoundCheck(Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;)V

    goto :goto_11

    :cond_1e
    sget-object v5, Lorg/eclipse/jdt/internal/compiler/ast/ParameterizedSingleTypeReference;->DIAMOND_TYPE_ARGUMENTS:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    iput-object v5, v4, Lorg/eclipse/jdt/internal/compiler/lookup/ParameterizedTypeBinding;->arguments:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    :goto_11
    move-object v10, v4

    const/4 v6, 0x0

    goto/16 :goto_16

    :cond_1f
    aget-object v2, v13, v4

    if-eqz v3, :cond_20

    move/from16 v19, v5

    move-object v5, v1

    check-cast v5, Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;

    invoke-virtual {v2, v5, v7, v4}, Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;->resolveTypeArgument(Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;I)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v2

    goto :goto_12

    :cond_20
    move/from16 v19, v5

    move-object v5, v1

    check-cast v5, Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;

    invoke-virtual {v2, v5, v7, v4}, Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;->resolveTypeArgument(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;I)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v2

    :goto_12
    if-nez v2, :cond_21

    const/16 v18, 0x1

    goto :goto_13

    :cond_21
    aput-object v2, v6, v4

    :goto_13
    add-int/lit8 v4, v4, 0x1

    move/from16 v2, p2

    move/from16 v5, v19

    goto/16 :goto_f

    :cond_22
    move-object/from16 v17, v4

    invoke-virtual {v12}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->original()Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v2

    check-cast v2, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    if-eqz v3, :cond_23

    move-object v4, v1

    check-cast v4, Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;

    invoke-virtual {v4, v2, v0}, Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;->detectHierarchyCycle(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;)Z

    move-result v4

    if-eqz v4, :cond_23

    const/4 v4, 0x0

    return-object v4

    :cond_23
    invoke-virtual {v2}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isGenericType()Z

    move-result v4

    if-eqz v4, :cond_25

    if-eqz v11, :cond_24

    if-eqz v10, :cond_24

    invoke-virtual {v10}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isParameterizedType()Z

    move-result v4

    if-eqz v4, :cond_24

    invoke-virtual {v2}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->hasEnclosingInstanceContext()Z

    move-result v4

    if-eqz v4, :cond_24

    invoke-virtual/range {p1 .. p1}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object v4

    invoke-virtual/range {p1 .. p1}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->environment()Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v2, v6, v10}, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->createParameterizedType(Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/ParameterizedTypeBinding;

    move-result-object v5

    invoke-virtual {v4, v0, v5, v9}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->parameterizedMemberTypeMissingArguments(Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;I)V

    const/4 v11, 0x0

    goto :goto_14

    :cond_24
    const/4 v6, 0x0

    :goto_14
    invoke-virtual/range {p1 .. p1}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->environment()Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    move-result-object v4

    invoke-virtual {v4, v2, v10}, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->createRawType(Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/RawTypeBinding;

    move-result-object v2

    :goto_15
    move-object v10, v2

    goto :goto_16

    :cond_25
    const/4 v6, 0x0

    invoke-virtual/range {p1 .. p1}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->environment()Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    move-result-object v4

    invoke-virtual {v4, v2, v10}, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->maybeCreateParameterizedType(Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move-result-object v2

    goto :goto_15

    :goto_16
    invoke-virtual {v0, v10, v1}, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->isTypeUseDeprecated(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/Scope;)Z

    move-result v2

    if-eqz v2, :cond_26

    invoke-virtual {v0, v10, v1, v9}, Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;->reportDeprecatedType(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/Scope;I)V

    :cond_26
    iput-object v10, v0, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->resolvedType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    iget-object v2, v0, Lorg/eclipse/jdt/internal/compiler/ast/ParameterizedQualifiedTypeReference;->typesPerToken:[Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    aput-object v10, v2, v9

    invoke-virtual/range {p1 .. p1}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->environment()Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    move-result-object v2

    iget-object v4, v0, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->resolvedType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-virtual {v0, v2, v4}, Lorg/eclipse/jdt/internal/compiler/ast/QualifiedTypeReference;->recordResolution(Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)V

    add-int/lit8 v9, v9, 0x1

    move/from16 v2, p2

    move-object v7, v6

    move-object/from16 v4, v17

    goto/16 :goto_7
.end method

.method private internalResolveType(Lorg/eclipse/jdt/internal/compiler/lookup/Scope;ZI)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;
    .locals 5

    sget-object v0, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->NotAConstant:Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    iput-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->constant:Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->bits:I

    const/high16 v1, 0x40000

    and-int v2, v0, v1

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_2

    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->resolvedType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->isValidBinding()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->resolvedType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    return-object p1

    :cond_0
    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->resolvedType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->problemId()I

    move-result p1

    if-eq p1, v4, :cond_1

    const/4 p2, 0x2

    if-eq p1, p2, :cond_1

    const/4 p2, 0x5

    if-eq p1, p2, :cond_1

    return-object v3

    :cond_1
    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->resolvedType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->closestMatch()Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object p1

    return-object p1

    :cond_2
    or-int/2addr v0, v1

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->bits:I

    invoke-direct {p0, p1, p2}, Lorg/eclipse/jdt/internal/compiler/ast/ParameterizedQualifiedTypeReference;->internalResolveLeafType(Lorg/eclipse/jdt/internal/compiler/lookup/Scope;Z)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object p2

    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/compiler/ast/ParameterizedQualifiedTypeReference;->createArrayType(Lorg/eclipse/jdt/internal/compiler/lookup/Scope;)V

    invoke-virtual {p0, p1, p3}, Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;->resolveAnnotations(Lorg/eclipse/jdt/internal/compiler/lookup/Scope;I)V

    iget p3, p0, Lorg/eclipse/jdt/internal/compiler/ast/ArrayQualifiedTypeReference;->dimensions:I

    if-lez p3, :cond_3

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->resolvedType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceStart:I

    invoke-static {p1, v0, v1, p3, v3}, Lorg/eclipse/jdt/internal/compiler/ast/ArrayTypeReference;->maybeMarkArrayContentsNonNull(Lorg/eclipse/jdt/internal/compiler/lookup/Scope;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;IILjava/util/function/Consumer;)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object p3

    iput-object p3, p0, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->resolvedType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    :cond_3
    iget-object p3, p0, Lorg/eclipse/jdt/internal/compiler/ast/ParameterizedQualifiedTypeReference;->typeArguments:[[Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    if-eqz p3, :cond_4

    array-length v0, p3

    sub-int/2addr v0, v4

    aget-object p3, p3, v0

    invoke-virtual {p0, p1, p3}, Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;->checkIllegalNullAnnotations(Lorg/eclipse/jdt/internal/compiler/lookup/Scope;[Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;)V

    :cond_4
    if-nez p2, :cond_5

    goto :goto_0

    :cond_5
    iget-object p2, p0, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->resolvedType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    :goto_0
    return-object p2
.end method


# virtual methods
.method public augmentTypeWithAdditionalDimensions(I[[Lorg/eclipse/jdt/internal/compiler/ast/Annotation;Z)Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;
    .locals 7

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/ast/ArrayQualifiedTypeReference;->dimensions()I

    move-result v0

    add-int v4, v0, p1

    invoke-virtual {p0, p1, p2}, Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;->getMergedAnnotationsOnDimensions(I[[Lorg/eclipse/jdt/internal/compiler/ast/Annotation;)[[Lorg/eclipse/jdt/internal/compiler/ast/Annotation;

    move-result-object v5

    new-instance p2, Lorg/eclipse/jdt/internal/compiler/ast/ParameterizedQualifiedTypeReference;

    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/ast/QualifiedTypeReference;->tokens:[[C

    iget-object v3, p0, Lorg/eclipse/jdt/internal/compiler/ast/ParameterizedQualifiedTypeReference;->typeArguments:[[Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    iget-object v6, p0, Lorg/eclipse/jdt/internal/compiler/ast/QualifiedTypeReference;->sourcePositions:[J

    move-object v1, p2

    invoke-direct/range {v1 .. v6}, Lorg/eclipse/jdt/internal/compiler/ast/ParameterizedQualifiedTypeReference;-><init>([[C[[Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;I[[Lorg/eclipse/jdt/internal/compiler/ast/Annotation;[J)V

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;->annotations:[[Lorg/eclipse/jdt/internal/compiler/ast/Annotation;

    iput-object v0, p2, Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;->annotations:[[Lorg/eclipse/jdt/internal/compiler/ast/Annotation;

    iget v0, p2, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->bits:I

    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->bits:I

    const/high16 v2, 0x100000

    and-int/2addr v1, v2

    or-int/2addr v0, v1

    iput v0, p2, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->bits:I

    if-nez p3, :cond_0

    iput p1, p2, Lorg/eclipse/jdt/internal/compiler/ast/ArrayQualifiedTypeReference;->extendedDimensions:I

    :cond_0
    return-object p2
.end method

.method public checkBounds(Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;Lorg/eclipse/jdt/internal/compiler/lookup/Scope;I)V
    .locals 2

    if-lez p3, :cond_0

    .line 5
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/ParameterizedQualifiedTypeReference;->typesPerToken:[Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    add-int/lit8 v1, p3, -0x1

    aget-object v0, v0, v1

    if-eqz v0, :cond_0

    .line 6
    invoke-virtual {p0, v0, p2, v1}, Lorg/eclipse/jdt/internal/compiler/ast/ParameterizedQualifiedTypeReference;->checkBounds(Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;Lorg/eclipse/jdt/internal/compiler/lookup/Scope;I)V

    .line 7
    :cond_0
    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isParameterizedTypeWithActualArguments()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 8
    check-cast p1, Lorg/eclipse/jdt/internal/compiler/lookup/ParameterizedTypeBinding;

    .line 9
    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/ParameterizedTypeBinding;->genericType()Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move-result-object v0

    .line 10
    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->typeVariables()[Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 11
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/ParameterizedQualifiedTypeReference;->typeArguments:[[Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    aget-object p3, v0, p3

    invoke-virtual {p1, p2, p3}, Lorg/eclipse/jdt/internal/compiler/lookup/ParameterizedTypeBinding;->boundCheck(Lorg/eclipse/jdt/internal/compiler/lookup/Scope;[Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;)V

    :cond_1
    return-void
.end method

.method public checkBounds(Lorg/eclipse/jdt/internal/compiler/lookup/Scope;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->resolvedType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->isValidBinding()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->resolvedType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->leafComponentType()Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    .line 3
    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/ast/ParameterizedQualifiedTypeReference;->typeArguments:[[Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    .line 4
    invoke-virtual {p0, v0, p1, v1}, Lorg/eclipse/jdt/internal/compiler/ast/ParameterizedQualifiedTypeReference;->checkBounds(Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;Lorg/eclipse/jdt/internal/compiler/lookup/Scope;I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public getParameterizedTypeName()[[C
    .locals 10

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/QualifiedTypeReference;->tokens:[[C

    array-length v0, v0

    new-array v1, v0, [[C

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-lt v3, v0, :cond_2

    iget v3, p0, Lorg/eclipse/jdt/internal/compiler/ast/ArrayQualifiedTypeReference;->dimensions:I

    if-lez v3, :cond_1

    mul-int/lit8 v4, v3, 0x2

    new-array v4, v4, [C

    :goto_1
    if-lt v2, v3, :cond_0

    add-int/lit8 v0, v0, -0x1

    aget-object v2, v1, v0

    invoke-static {v2, v4}, Lorg/eclipse/jdt/core/compiler/CharOperation;->concat([C[C)[C

    move-result-object v2

    aput-object v2, v1, v0

    goto :goto_2

    :cond_0
    mul-int/lit8 v5, v2, 0x2

    const/16 v6, 0x5b

    aput-char v6, v4, v5

    add-int/lit8 v5, v5, 0x1

    const/16 v6, 0x5d

    aput-char v6, v4, v5

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    :goto_2
    return-object v1

    :cond_2
    iget-object v4, p0, Lorg/eclipse/jdt/internal/compiler/ast/ParameterizedQualifiedTypeReference;->typeArguments:[[Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    aget-object v4, v4, v3

    if-nez v4, :cond_3

    iget-object v4, p0, Lorg/eclipse/jdt/internal/compiler/ast/QualifiedTypeReference;->tokens:[[C

    aget-object v4, v4, v3

    aput-object v4, v1, v3

    goto :goto_4

    :cond_3
    new-instance v5, Ljava/lang/StringBuffer;

    const/4 v6, 0x5

    invoke-direct {v5, v6}, Ljava/lang/StringBuffer;-><init>(I)V

    iget-object v6, p0, Lorg/eclipse/jdt/internal/compiler/ast/QualifiedTypeReference;->tokens:[[C

    aget-object v6, v6, v3

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    const/16 v6, 0x3c

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    array-length v6, v4

    move v7, v2

    :goto_3
    if-lt v7, v6, :cond_4

    const/16 v4, 0x3e

    invoke-virtual {v5, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->length()I

    move-result v4

    new-array v6, v4, [C

    aput-object v6, v1, v3

    invoke-virtual {v5, v2, v4, v6, v2}, Ljava/lang/StringBuffer;->getChars(II[CI)V

    :goto_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_4
    if-lez v7, :cond_5

    const/16 v8, 0x2c

    invoke-virtual {v5, v8}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_5
    aget-object v8, v4, v7

    invoke-virtual {v8}, Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;->getParameterizedTypeName()[[C

    move-result-object v8

    const/16 v9, 0x2e

    invoke-static {v8, v9}, Lorg/eclipse/jdt/core/compiler/CharOperation;->concatWith([[CC)[C

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    add-int/lit8 v7, v7, 0x1

    goto :goto_3
.end method

.method public getTypeArguments()[[Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/ParameterizedQualifiedTypeReference;->typeArguments:[[Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    return-object v0
.end method

.method public getTypeBinding(Lorg/eclipse/jdt/internal/compiler/lookup/Scope;)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public hasNullTypeAnnotation(Lorg/eclipse/jdt/internal/compiler/ast/TypeReference$AnnotationPosition;)Z
    .locals 6

    invoke-super {p0, p1}, Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;->hasNullTypeAnnotation(Lorg/eclipse/jdt/internal/compiler/ast/TypeReference$AnnotationPosition;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    sget-object v0, Lorg/eclipse/jdt/internal/compiler/ast/TypeReference$AnnotationPosition;->ANY:Lorg/eclipse/jdt/internal/compiler/ast/TypeReference$AnnotationPosition;

    const/4 v2, 0x0

    if-ne p1, v0, :cond_6

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->resolvedType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->hasNullTypeAnnotations()Z

    move-result v0

    if-nez v0, :cond_1

    return v2

    :cond_1
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/ParameterizedQualifiedTypeReference;->typeArguments:[[Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    if-eqz v0, :cond_6

    move v0, v2

    :goto_0
    iget-object v3, p0, Lorg/eclipse/jdt/internal/compiler/ast/ParameterizedQualifiedTypeReference;->typeArguments:[[Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    array-length v4, v3

    if-lt v0, v4, :cond_2

    goto :goto_3

    :cond_2
    aget-object v3, v3, v0

    if-eqz v3, :cond_5

    move v4, v2

    :goto_1
    array-length v5, v3

    if-lt v4, v5, :cond_3

    goto :goto_2

    :cond_3
    aget-object v5, v3, v4

    invoke-virtual {v5, p1}, Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;->hasNullTypeAnnotation(Lorg/eclipse/jdt/internal/compiler/ast/TypeReference$AnnotationPosition;)Z

    move-result v5

    if-eqz v5, :cond_4

    return v1

    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_5
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_6
    :goto_3
    return v2
.end method

.method public isParameterizedTypeReference()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public printExpression(ILjava/lang/StringBuffer;)Ljava/lang/StringBuffer;
    .locals 9

    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/ast/QualifiedTypeReference;->tokens:[[C

    array-length p1, p1

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    add-int/lit8 v2, p1, -0x1

    const/16 v3, 0x3e

    const-string v4, ", "

    const/16 v5, 0x3c

    const/16 v6, 0x20

    if-lt v1, v2, :cond_a

    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;->annotations:[[Lorg/eclipse/jdt/internal/compiler/ast/Annotation;

    const-string v7, " "

    if-eqz p1, :cond_0

    aget-object p1, p1, v2

    if-eqz p1, :cond_0

    invoke-virtual {p2, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;->annotations:[[Lorg/eclipse/jdt/internal/compiler/ast/Annotation;

    aget-object p1, p1, v2

    invoke-static {p1, p2}, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->printAnnotations([Lorg/eclipse/jdt/internal/compiler/ast/Annotation;Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    invoke-virtual {p2, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_0
    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/ast/QualifiedTypeReference;->tokens:[[C

    aget-object p1, p1, v2

    invoke-virtual {p2, p1}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/ast/ParameterizedQualifiedTypeReference;->typeArguments:[[Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    aget-object p1, p1, v2

    if-eqz p1, :cond_3

    invoke-virtual {p2, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    array-length v1, p1

    if-lez v1, :cond_2

    add-int/lit8 v1, v1, -0x1

    move v2, v0

    :goto_1
    if-lt v2, v1, :cond_1

    aget-object p1, p1, v1

    invoke-virtual {p1, v0, p2}, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->print(ILjava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    goto :goto_2

    :cond_1
    aget-object v5, p1, v2

    invoke-virtual {v5, v0, p2}, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->print(ILjava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    invoke-virtual {p2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    :goto_2
    invoke-virtual {p2, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_3
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;->getAnnotationsOnDimensions()[[Lorg/eclipse/jdt/internal/compiler/ast/Annotation;

    move-result-object v2

    iget p1, p0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->bits:I

    and-int/lit16 p1, p1, 0x4000

    const-string v8, "[]"

    if-eqz p1, :cond_7

    :goto_3
    iget p1, p0, Lorg/eclipse/jdt/internal/compiler/ast/ArrayQualifiedTypeReference;->dimensions:I

    add-int/lit8 v1, p1, -0x1

    if-lt v0, v1, :cond_5

    if-eqz v2, :cond_4

    add-int/lit8 p1, p1, -0x1

    aget-object p1, v2, p1

    if-eqz p1, :cond_4

    invoke-virtual {p2, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget p1, p0, Lorg/eclipse/jdt/internal/compiler/ast/ArrayQualifiedTypeReference;->dimensions:I

    add-int/lit8 p1, p1, -0x1

    aget-object p1, v2, p1

    invoke-static {p1, p2}, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->printAnnotations([Lorg/eclipse/jdt/internal/compiler/ast/Annotation;Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    invoke-virtual {p2, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_4
    const-string p1, "..."

    invoke-virtual {p2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_5

    :cond_5
    if-eqz v2, :cond_6

    aget-object p1, v2, v0

    if-eqz p1, :cond_6

    invoke-virtual {p2, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    aget-object p1, v2, v0

    invoke-static {p1, p2}, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->printAnnotations([Lorg/eclipse/jdt/internal/compiler/ast/Annotation;Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    invoke-virtual {p2, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_6
    invoke-virtual {p2, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_7
    :goto_4
    iget p1, p0, Lorg/eclipse/jdt/internal/compiler/ast/ArrayQualifiedTypeReference;->dimensions:I

    if-lt v0, p1, :cond_8

    :goto_5
    return-object p2

    :cond_8
    if-eqz v2, :cond_9

    aget-object p1, v2, v0

    if-eqz p1, :cond_9

    invoke-virtual {p2, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    aget-object p1, v2, v0

    invoke-static {p1, p2}, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->printAnnotations([Lorg/eclipse/jdt/internal/compiler/ast/Annotation;Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    invoke-virtual {p2, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_9
    invoke-virtual {p2, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_a
    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;->annotations:[[Lorg/eclipse/jdt/internal/compiler/ast/Annotation;

    if-eqz v2, :cond_b

    aget-object v2, v2, v1

    if-eqz v2, :cond_b

    invoke-static {v2, p2}, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->printAnnotations([Lorg/eclipse/jdt/internal/compiler/ast/Annotation;Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    invoke-virtual {p2, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_b
    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/ast/QualifiedTypeReference;->tokens:[[C

    aget-object v2, v2, v1

    invoke-virtual {p2, v2}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/ast/ParameterizedQualifiedTypeReference;->typeArguments:[[Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    aget-object v2, v2, v1

    if-eqz v2, :cond_e

    invoke-virtual {p2, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    array-length v5, v2

    if-lez v5, :cond_d

    add-int/lit8 v5, v5, -0x1

    move v6, v0

    :goto_6
    if-lt v6, v5, :cond_c

    aget-object v2, v2, v5

    invoke-virtual {v2, v0, p2}, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->print(ILjava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    goto :goto_7

    :cond_c
    aget-object v7, v2, v6

    invoke-virtual {v7, v0, p2}, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->print(ILjava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    invoke-virtual {p2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v6, v6, 0x1

    goto :goto_6

    :cond_d
    :goto_7
    invoke-virtual {p2, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_e
    const/16 v2, 0x2e

    invoke-virtual {p2, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0
.end method

.method public resolveType(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;ZI)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lorg/eclipse/jdt/internal/compiler/ast/ParameterizedQualifiedTypeReference;->internalResolveType(Lorg/eclipse/jdt/internal/compiler/lookup/Scope;ZI)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object p1

    return-object p1
.end method

.method public resolveType(Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;I)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, v0, p2}, Lorg/eclipse/jdt/internal/compiler/ast/ParameterizedQualifiedTypeReference;->internalResolveType(Lorg/eclipse/jdt/internal/compiler/lookup/Scope;ZI)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object p1

    return-object p1
.end method

.method public traverse(Lorg/eclipse/jdt/internal/compiler/ASTVisitor;Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;)V
    .locals 8

    .line 1
    invoke-virtual {p1, p0, p2}, Lorg/eclipse/jdt/internal/compiler/ASTVisitor;->visit(Lorg/eclipse/jdt/internal/compiler/ast/ParameterizedQualifiedTypeReference;Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 2
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;->annotations:[[Lorg/eclipse/jdt/internal/compiler/ast/Annotation;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    .line 3
    array-length v0, v0

    move v2, v1

    :goto_0
    if-lt v2, v0, :cond_0

    goto :goto_3

    .line 4
    :cond_0
    iget-object v3, p0, Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;->annotations:[[Lorg/eclipse/jdt/internal/compiler/ast/Annotation;

    aget-object v3, v3, v2

    if-nez v3, :cond_1

    move v3, v1

    goto :goto_1

    :cond_1
    array-length v3, v3

    :goto_1
    move v4, v1

    :goto_2
    if-lt v4, v3, :cond_2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 5
    :cond_2
    iget-object v5, p0, Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;->annotations:[[Lorg/eclipse/jdt/internal/compiler/ast/Annotation;

    aget-object v5, v5, v2

    aget-object v5, v5, v4

    invoke-virtual {v5, p1, p2}, Lorg/eclipse/jdt/internal/compiler/ast/Annotation;->traverse(Lorg/eclipse/jdt/internal/compiler/ASTVisitor;Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_3
    :goto_3
    const/4 v0, 0x1

    .line 6
    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/internal/compiler/ast/ArrayQualifiedTypeReference;->getAnnotationsOnDimensions(Z)[[Lorg/eclipse/jdt/internal/compiler/ast/Annotation;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 7
    array-length v2, v0

    move v3, v1

    :goto_4
    if-lt v3, v2, :cond_4

    goto :goto_7

    .line 8
    :cond_4
    aget-object v4, v0, v3

    if-nez v4, :cond_5

    move v5, v1

    goto :goto_5

    .line 9
    :cond_5
    array-length v5, v4

    :goto_5
    move v6, v1

    :goto_6
    if-lt v6, v5, :cond_6

    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 10
    :cond_6
    aget-object v7, v4, v6

    .line 11
    invoke-virtual {v7, p1, p2}, Lorg/eclipse/jdt/internal/compiler/ast/Annotation;->traverse(Lorg/eclipse/jdt/internal/compiler/ASTVisitor;Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_6

    .line 12
    :cond_7
    :goto_7
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/ParameterizedQualifiedTypeReference;->typeArguments:[[Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    array-length v0, v0

    move v2, v1

    :goto_8
    if-lt v2, v0, :cond_8

    goto :goto_b

    .line 13
    :cond_8
    iget-object v3, p0, Lorg/eclipse/jdt/internal/compiler/ast/ParameterizedQualifiedTypeReference;->typeArguments:[[Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    aget-object v3, v3, v2

    if-eqz v3, :cond_a

    .line 14
    array-length v3, v3

    move v4, v1

    :goto_9
    if-lt v4, v3, :cond_9

    goto :goto_a

    .line 15
    :cond_9
    iget-object v5, p0, Lorg/eclipse/jdt/internal/compiler/ast/ParameterizedQualifiedTypeReference;->typeArguments:[[Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    aget-object v5, v5, v2

    aget-object v5, v5, v4

    invoke-virtual {v5, p1, p2}, Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;->traverse(Lorg/eclipse/jdt/internal/compiler/ASTVisitor;Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_9

    :cond_a
    :goto_a
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 16
    :cond_b
    :goto_b
    invoke-virtual {p1, p0, p2}, Lorg/eclipse/jdt/internal/compiler/ASTVisitor;->endVisit(Lorg/eclipse/jdt/internal/compiler/ast/ParameterizedQualifiedTypeReference;Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;)V

    return-void
.end method

.method public traverse(Lorg/eclipse/jdt/internal/compiler/ASTVisitor;Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;)V
    .locals 8

    .line 17
    invoke-virtual {p1, p0, p2}, Lorg/eclipse/jdt/internal/compiler/ASTVisitor;->visit(Lorg/eclipse/jdt/internal/compiler/ast/ParameterizedQualifiedTypeReference;Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 18
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;->annotations:[[Lorg/eclipse/jdt/internal/compiler/ast/Annotation;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    .line 19
    array-length v0, v0

    move v2, v1

    :goto_0
    if-lt v2, v0, :cond_0

    goto :goto_3

    .line 20
    :cond_0
    iget-object v3, p0, Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;->annotations:[[Lorg/eclipse/jdt/internal/compiler/ast/Annotation;

    aget-object v3, v3, v2

    if-nez v3, :cond_1

    move v3, v1

    goto :goto_1

    :cond_1
    array-length v3, v3

    :goto_1
    move v4, v1

    :goto_2
    if-lt v4, v3, :cond_2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 21
    :cond_2
    iget-object v5, p0, Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;->annotations:[[Lorg/eclipse/jdt/internal/compiler/ast/Annotation;

    aget-object v5, v5, v2

    aget-object v5, v5, v4

    invoke-virtual {v5, p1, p2}, Lorg/eclipse/jdt/internal/compiler/ast/Annotation;->traverse(Lorg/eclipse/jdt/internal/compiler/ASTVisitor;Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_3
    :goto_3
    const/4 v0, 0x1

    .line 22
    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/internal/compiler/ast/ArrayQualifiedTypeReference;->getAnnotationsOnDimensions(Z)[[Lorg/eclipse/jdt/internal/compiler/ast/Annotation;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 23
    array-length v2, v0

    move v3, v1

    :goto_4
    if-lt v3, v2, :cond_4

    goto :goto_7

    .line 24
    :cond_4
    aget-object v4, v0, v3

    if-nez v4, :cond_5

    move v5, v1

    goto :goto_5

    .line 25
    :cond_5
    array-length v5, v4

    :goto_5
    move v6, v1

    :goto_6
    if-lt v6, v5, :cond_6

    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 26
    :cond_6
    aget-object v7, v4, v6

    .line 27
    invoke-virtual {v7, p1, p2}, Lorg/eclipse/jdt/internal/compiler/ast/Annotation;->traverse(Lorg/eclipse/jdt/internal/compiler/ASTVisitor;Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_6

    .line 28
    :cond_7
    :goto_7
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/ParameterizedQualifiedTypeReference;->typeArguments:[[Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    array-length v0, v0

    move v2, v1

    :goto_8
    if-lt v2, v0, :cond_8

    goto :goto_b

    .line 29
    :cond_8
    iget-object v3, p0, Lorg/eclipse/jdt/internal/compiler/ast/ParameterizedQualifiedTypeReference;->typeArguments:[[Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    aget-object v3, v3, v2

    if-eqz v3, :cond_a

    .line 30
    array-length v3, v3

    move v4, v1

    :goto_9
    if-lt v4, v3, :cond_9

    goto :goto_a

    .line 31
    :cond_9
    iget-object v5, p0, Lorg/eclipse/jdt/internal/compiler/ast/ParameterizedQualifiedTypeReference;->typeArguments:[[Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    aget-object v5, v5, v2

    aget-object v5, v5, v4

    invoke-virtual {v5, p1, p2}, Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;->traverse(Lorg/eclipse/jdt/internal/compiler/ASTVisitor;Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_9

    :cond_a
    :goto_a
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 32
    :cond_b
    :goto_b
    invoke-virtual {p1, p0, p2}, Lorg/eclipse/jdt/internal/compiler/ASTVisitor;->endVisit(Lorg/eclipse/jdt/internal/compiler/ast/ParameterizedQualifiedTypeReference;Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;)V

    return-void
.end method
