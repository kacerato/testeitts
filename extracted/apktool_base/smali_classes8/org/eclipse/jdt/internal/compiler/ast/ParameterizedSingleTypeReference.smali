.class public Lorg/eclipse/jdt/internal/compiler/ast/ParameterizedSingleTypeReference;
.super Lorg/eclipse/jdt/internal/compiler/ast/ArrayTypeReference;
.source "SourceFile"


# static fields
.field public static final DIAMOND_TYPE_ARGUMENTS:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;


# instance fields
.field public typeArguments:[Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    sput-object v0, Lorg/eclipse/jdt/internal/compiler/ast/ParameterizedSingleTypeReference;->DIAMOND_TYPE_ARGUMENTS:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    return-void
.end method

.method public constructor <init>([C[Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;IJ)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p3, p4, p5}, Lorg/eclipse/jdt/internal/compiler/ast/ArrayTypeReference;-><init>([CIJ)V

    .line 2
    iget p1, p0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceEnd:I

    iput p1, p0, Lorg/eclipse/jdt/internal/compiler/ast/ArrayTypeReference;->originalSourceEnd:I

    .line 3
    iput-object p2, p0, Lorg/eclipse/jdt/internal/compiler/ast/ParameterizedSingleTypeReference;->typeArguments:[Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    .line 4
    array-length p1, p2

    const/4 p3, 0x0

    :goto_0
    if-lt p3, p1, :cond_0

    goto :goto_1

    .line 5
    :cond_0
    aget-object p4, p2, p3

    iget p4, p4, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->bits:I

    const/high16 p5, 0x100000

    and-int/2addr p4, p5

    if-eqz p4, :cond_1

    .line 6
    iget p1, p0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->bits:I

    or-int/2addr p1, p5

    iput p1, p0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->bits:I

    :goto_1
    return-void

    :cond_1
    add-int/lit8 p3, p3, 0x1

    goto :goto_0
.end method

.method public constructor <init>([C[Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;I[[Lorg/eclipse/jdt/internal/compiler/ast/Annotation;J)V
    .locals 6

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-wide v4, p5

    .line 7
    invoke-direct/range {v0 .. v5}, Lorg/eclipse/jdt/internal/compiler/ast/ParameterizedSingleTypeReference;-><init>([C[Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;IJ)V

    .line 8
    invoke-virtual {p0, p4}, Lorg/eclipse/jdt/internal/compiler/ast/ArrayTypeReference;->setAnnotationsOnDimensions([[Lorg/eclipse/jdt/internal/compiler/ast/Annotation;)V

    if-eqz p4, :cond_0

    .line 9
    iget p1, p0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->bits:I

    const/high16 p2, 0x100000

    or-int/2addr p1, p2

    iput p1, p0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->bits:I

    :cond_0
    return-void
.end method

.method public static synthetic b(Lorg/eclipse/jdt/internal/compiler/ast/ParameterizedSingleTypeReference;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/compiler/ast/ParameterizedSingleTypeReference;->lambda$0(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)V

    return-void
.end method

.method private createArrayType(Lorg/eclipse/jdt/internal/compiler/lookup/Scope;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;
    .locals 2

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/ArrayTypeReference;->dimensions:I

    if-lez v0, :cond_1

    const/16 v1, 0xff

    if-le v0, v1, :cond_0

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->tooManyDimensions(Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;)V

    :cond_0
    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/ArrayTypeReference;->dimensions:I

    invoke-virtual {p1, p2, v0}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->createArrayType(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;I)Lorg/eclipse/jdt/internal/compiler/lookup/ArrayBinding;

    move-result-object p1

    return-object p1

    :cond_1
    return-object p2
.end method

.method private internalResolveLeafType(Lorg/eclipse/jdt/internal/compiler/lookup/Scope;Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;Z)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    const/4 v4, 0x3

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-nez v2, :cond_6

    iget-object v2, v0, Lorg/eclipse/jdt/internal/compiler/ast/SingleTypeReference;->token:[C

    invoke-virtual {v1, v2}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->getType([C)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v2

    iput-object v2, v0, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->resolvedType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-virtual {v2}, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->isValidBinding()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, v0, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->resolvedType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    check-cast v2, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    goto :goto_0

    :cond_0
    invoke-virtual/range {p0 .. p1}, Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;->reportInvalidType(Lorg/eclipse/jdt/internal/compiler/lookup/Scope;)V

    iget-object v2, v0, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->resolvedType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-virtual {v2}, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->problemId()I

    move-result v2

    if-eq v2, v6, :cond_1

    const/4 v8, 0x2

    if-eq v2, v8, :cond_1

    const/4 v8, 0x5

    if-eq v2, v8, :cond_1

    goto :goto_1

    :cond_1
    iget-object v2, v0, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->resolvedType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-virtual {v2}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->closestMatch()Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v2

    instance-of v8, v2, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    if-eqz v8, :cond_2

    check-cast v2, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    :goto_0
    invoke-virtual {v2}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->enclosingType()Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move-result-object v8

    if-eqz v8, :cond_a

    invoke-virtual {v2}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->hasEnclosingInstanceContext()Z

    move-result v9

    if-eqz v9, :cond_a

    invoke-virtual/range {p1 .. p1}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->environment()Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    move-result-object v9

    invoke-virtual {v9, v8}, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->convertToParameterizedType(Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move-result-object v8

    goto/16 :goto_5

    :cond_2
    :goto_1
    iget v2, v1, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->kind:I

    if-ne v2, v4, :cond_3

    move v8, v6

    goto :goto_2

    :cond_3
    move v8, v5

    :goto_2
    iget-object v2, v0, Lorg/eclipse/jdt/internal/compiler/ast/ParameterizedSingleTypeReference;->typeArguments:[Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    array-length v9, v2

    :goto_3
    if-lt v5, v9, :cond_4

    return-object v7

    :cond_4
    iget-object v2, v0, Lorg/eclipse/jdt/internal/compiler/ast/ParameterizedSingleTypeReference;->typeArguments:[Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    aget-object v2, v2, v5

    if-eqz v8, :cond_5

    move-object v4, v1

    check-cast v4, Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;

    invoke-virtual {v2, v4}, Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;->resolveType(Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    goto :goto_4

    :cond_5
    move-object v4, v1

    check-cast v4, Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;

    invoke-virtual {v2, v4, v3}, Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;->resolveType(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;Z)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    :goto_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    :cond_6
    iget-object v8, v0, Lorg/eclipse/jdt/internal/compiler/ast/SingleTypeReference;->token:[C

    invoke-virtual {v1, v8, v2}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->getMemberType([CLorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move-result-object v8

    iput-object v8, v0, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->resolvedType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-virtual {v8}, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->isValidBinding()Z

    move-result v9

    if-nez v9, :cond_7

    invoke-virtual/range {p1 .. p1}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object v1

    invoke-virtual {v1, v0, v8, v2}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->invalidEnclosingType(Lorg/eclipse/jdt/internal/compiler/ast/Expression;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;)V

    return-object v7

    :cond_7
    invoke-virtual {v0, v8, v1}, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->isTypeUseDeprecated(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/Scope;)Z

    move-result v9

    if-eqz v9, :cond_8

    invoke-virtual/range {p1 .. p1}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object v9

    invoke-virtual {v9, v8, v0}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->deprecatedType(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;)V

    :cond_8
    invoke-virtual {v8}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->enclosingType()Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move-result-object v9

    if-eqz v9, :cond_9

    invoke-virtual {v9}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->erasure()Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v10

    invoke-virtual/range {p2 .. p2}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->erasure()Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v11

    invoke-static {v10, v11}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->notEquals(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Z

    move-result v10

    if-eqz v10, :cond_9

    move-object v2, v8

    move-object v8, v9

    goto :goto_5

    :cond_9
    move-object/from16 v17, v8

    move-object v8, v2

    move-object/from16 v2, v17

    :cond_a
    :goto_5
    iget v9, v1, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->kind:I

    if-ne v9, v4, :cond_b

    move v4, v6

    goto :goto_6

    :cond_b
    move v4, v5

    :goto_6
    if-eqz v4, :cond_c

    move-object v9, v1

    check-cast v9, Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;

    iget-object v10, v9, Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;->superTypeReference:Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    iput-object v7, v9, Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;->superTypeReference:Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    goto :goto_7

    :cond_c
    move-object v10, v7

    :goto_7
    iget v9, v0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->bits:I

    const/high16 v11, 0x80000

    and-int/2addr v9, v11

    if-eqz v9, :cond_d

    move v9, v6

    goto :goto_8

    :cond_d
    move v9, v5

    :goto_8
    iget-object v11, v0, Lorg/eclipse/jdt/internal/compiler/ast/ParameterizedSingleTypeReference;->typeArguments:[Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    array-length v11, v11

    new-array v12, v11, [Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-virtual {v2}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->original()Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v13

    check-cast v13, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move v14, v5

    move v15, v14

    :goto_9
    if-lt v14, v11, :cond_1a

    if-eqz v15, :cond_e

    return-object v7

    :cond_e
    if-eqz v4, :cond_f

    move-object v4, v1

    check-cast v4, Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;

    iput-object v10, v4, Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;->superTypeReference:Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    invoke-virtual {v4, v13, v0}, Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;->detectHierarchyCycle(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;)Z

    move-result v4

    if-eqz v4, :cond_f

    return-object v7

    :cond_f
    invoke-virtual {v13}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->typeVariables()[Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;

    move-result-object v4

    sget-object v10, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->NO_TYPE_VARIABLES:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;

    if-ne v4, v10, :cond_13

    invoke-virtual/range {p1 .. p1}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->compilerOptions()Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;

    move-result-object v4

    iget-wide v10, v4, Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;->originalSourceLevel:J

    const-wide/32 v14, 0x310000

    cmp-long v4, v10, v14

    if-ltz v4, :cond_10

    goto :goto_a

    :cond_10
    move v6, v5

    :goto_a
    iget-wide v10, v13, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->tagBits:J

    const-wide/16 v14, 0x80

    and-long/2addr v10, v14

    const-wide/16 v14, 0x0

    cmp-long v4, v10, v14

    if-nez v4, :cond_11

    if-eqz v6, :cond_11

    iput-object v2, v0, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->resolvedType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-virtual/range {p1 .. p1}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object v1

    invoke-virtual {v1, v5, v0, v2, v12}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->nonGenericTypeCannotBeParameterized(ILorg/eclipse/jdt/internal/compiler/ast/ASTNode;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)V

    return-object v7

    :cond_11
    if-nez v6, :cond_15

    iget-object v1, v0, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->resolvedType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->isValidBinding()Z

    move-result v1

    if-nez v1, :cond_12

    return-object v2

    :cond_12
    iput-object v2, v0, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->resolvedType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    return-object v2

    :cond_13
    array-length v4, v4

    if-eq v11, v4, :cond_14

    if-nez v9, :cond_15

    invoke-virtual/range {p1 .. p1}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object v1

    invoke-virtual {v1, v0, v2, v12}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->incorrectArityForParameterizedType(Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)V

    return-object v7

    :cond_14
    invoke-virtual {v2}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->isStatic()Z

    move-result v4

    if-nez v4, :cond_15

    invoke-virtual {v2}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->enclosingType()Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move-result-object v2

    if-eqz v2, :cond_15

    invoke-virtual {v2}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isRawType()Z

    move-result v4

    if-eqz v4, :cond_15

    invoke-virtual/range {p1 .. p1}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object v3

    invoke-virtual/range {p1 .. p1}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->environment()Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    move-result-object v1

    invoke-virtual {v1, v13, v2}, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->createRawType(Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/RawTypeBinding;

    move-result-object v1

    invoke-virtual {v3, v0, v1, v12}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->rawMemberTypeCannotBeParameterized(Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)V

    return-object v7

    :cond_15
    invoke-virtual/range {p1 .. p1}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->environment()Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    move-result-object v2

    invoke-virtual {v2, v13, v12, v8}, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->createParameterizedType(Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/ParameterizedTypeBinding;

    move-result-object v2

    if-nez v9, :cond_17

    if-eqz v3, :cond_16

    iget-object v3, v0, Lorg/eclipse/jdt/internal/compiler/ast/ParameterizedSingleTypeReference;->typeArguments:[Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    invoke-virtual {v2, v1, v3}, Lorg/eclipse/jdt/internal/compiler/lookup/ParameterizedTypeBinding;->boundCheck(Lorg/eclipse/jdt/internal/compiler/lookup/Scope;[Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;)V

    goto :goto_b

    :cond_16
    invoke-virtual {v1, v0}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->deferBoundCheck(Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;)V

    goto :goto_b

    :cond_17
    sget-object v3, Lorg/eclipse/jdt/internal/compiler/ast/ParameterizedSingleTypeReference;->DIAMOND_TYPE_ARGUMENTS:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    iput-object v3, v2, Lorg/eclipse/jdt/internal/compiler/lookup/ParameterizedTypeBinding;->arguments:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    :goto_b
    invoke-virtual {v0, v2, v1}, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->isTypeUseDeprecated(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/Scope;)Z

    move-result v3

    if-eqz v3, :cond_18

    invoke-virtual {v0, v2, v1}, Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;->reportDeprecatedType(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/Scope;)V

    :cond_18
    iget-object v3, v0, Lorg/eclipse/jdt/internal/compiler/ast/ParameterizedSingleTypeReference;->typeArguments:[Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    invoke-virtual {v0, v1, v3}, Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;->checkIllegalNullAnnotations(Lorg/eclipse/jdt/internal/compiler/lookup/Scope;[Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;)V

    iget-object v1, v0, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->resolvedType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->isValidBinding()Z

    move-result v1

    if-nez v1, :cond_19

    return-object v2

    :cond_19
    iput-object v2, v0, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->resolvedType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    return-object v2

    :cond_1a
    iget-object v5, v0, Lorg/eclipse/jdt/internal/compiler/ast/ParameterizedSingleTypeReference;->typeArguments:[Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    aget-object v5, v5, v14

    if-eqz v4, :cond_1b

    move-object v6, v1

    check-cast v6, Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;

    invoke-virtual {v5, v6, v13, v14}, Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;->resolveTypeArgument(Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;I)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v6

    goto :goto_c

    :cond_1b
    move-object v6, v1

    check-cast v6, Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;

    invoke-virtual {v5, v6, v13, v14}, Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;->resolveTypeArgument(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;I)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v6

    :goto_c
    iget v7, v0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->bits:I

    iget v5, v5, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->bits:I

    const/high16 v16, 0x100000

    and-int v5, v5, v16

    or-int/2addr v5, v7

    iput v5, v0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->bits:I

    if-nez v6, :cond_1c

    const/4 v15, 0x1

    goto :goto_d

    :cond_1c
    aput-object v6, v12, v14

    :goto_d
    add-int/lit8 v14, v14, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    goto/16 :goto_9
.end method

.method private internalResolveType(Lorg/eclipse/jdt/internal/compiler/lookup/Scope;Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;ZI)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;
    .locals 4

    sget-object v0, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->NotAConstant:Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    iput-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->constant:Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->bits:I

    const/high16 v1, 0x40000

    and-int v2, v0, v1

    const/4 v3, 0x0

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

    const/4 p2, 0x1

    if-eq p1, p2, :cond_1

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

    invoke-direct {p0, p1, p2, p3}, Lorg/eclipse/jdt/internal/compiler/ast/ParameterizedSingleTypeReference;->internalResolveLeafType(Lorg/eclipse/jdt/internal/compiler/lookup/Scope;Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;Z)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object p2

    const/4 p3, 0x0

    if-nez p2, :cond_3

    iget-object p2, p0, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->resolvedType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-direct {p0, p1, p2}, Lorg/eclipse/jdt/internal/compiler/ast/ParameterizedSingleTypeReference;->createArrayType(Lorg/eclipse/jdt/internal/compiler/lookup/Scope;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object p2

    iput-object p2, p0, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->resolvedType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-virtual {p0, p1, p3}, Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;->resolveAnnotations(Lorg/eclipse/jdt/internal/compiler/lookup/Scope;I)V

    return-object v3

    :cond_3
    invoke-direct {p0, p1, p2}, Lorg/eclipse/jdt/internal/compiler/ast/ParameterizedSingleTypeReference;->createArrayType(Lorg/eclipse/jdt/internal/compiler/lookup/Scope;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object p2

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->resolvedType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->isValidBinding()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->resolvedType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->dimensions()I

    move-result v0

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->dimensions()I

    move-result v1

    if-ne v0, v1, :cond_4

    invoke-virtual {p0, p1, p3}, Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;->resolveAnnotations(Lorg/eclipse/jdt/internal/compiler/lookup/Scope;I)V

    return-object p2

    :cond_4
    iput-object p2, p0, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->resolvedType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-virtual {p0, p1, p4}, Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;->resolveAnnotations(Lorg/eclipse/jdt/internal/compiler/lookup/Scope;I)V

    iget p2, p0, Lorg/eclipse/jdt/internal/compiler/ast/ArrayTypeReference;->dimensions:I

    if-lez p2, :cond_5

    iget-object p3, p0, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->resolvedType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    iget p4, p0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceStart:I

    new-instance v0, Lorg/eclipse/jdt/internal/compiler/ast/b;

    invoke-direct {v0, p0}, Lorg/eclipse/jdt/internal/compiler/ast/b;-><init>(Lorg/eclipse/jdt/internal/compiler/ast/ParameterizedSingleTypeReference;)V

    invoke-static {p1, p3, p4, p2, v0}, Lorg/eclipse/jdt/internal/compiler/ast/ArrayTypeReference;->maybeMarkArrayContentsNonNull(Lorg/eclipse/jdt/internal/compiler/lookup/Scope;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;IILjava/util/function/Consumer;)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object p1

    iput-object p1, p0, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->resolvedType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    :cond_5
    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->resolvedType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    return-object p1
.end method

.method private synthetic lambda$0(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)V
    .locals 0

    iput-object p1, p0, Lorg/eclipse/jdt/internal/compiler/ast/ArrayTypeReference;->leafComponentTypeWithoutDefaultNullness:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    return-void
.end method


# virtual methods
.method public augmentTypeWithAdditionalDimensions(I[[Lorg/eclipse/jdt/internal/compiler/ast/Annotation;Z)Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;
    .locals 8

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/ast/ArrayTypeReference;->dimensions()I

    move-result v0

    add-int v4, v0, p1

    invoke-virtual {p0, p1, p2}, Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;->getMergedAnnotationsOnDimensions(I[[Lorg/eclipse/jdt/internal/compiler/ast/Annotation;)[[Lorg/eclipse/jdt/internal/compiler/ast/Annotation;

    move-result-object v5

    new-instance p2, Lorg/eclipse/jdt/internal/compiler/ast/ParameterizedSingleTypeReference;

    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/ast/SingleTypeReference;->token:[C

    iget-object v3, p0, Lorg/eclipse/jdt/internal/compiler/ast/ParameterizedSingleTypeReference;->typeArguments:[Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceStart:I

    int-to-long v0, v0

    const/16 v6, 0x20

    shl-long/2addr v0, v6

    iget v6, p0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceEnd:I

    int-to-long v6, v6

    add-long/2addr v6, v0

    move-object v1, p2

    invoke-direct/range {v1 .. v7}, Lorg/eclipse/jdt/internal/compiler/ast/ParameterizedSingleTypeReference;-><init>([C[Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;I[[Lorg/eclipse/jdt/internal/compiler/ast/Annotation;J)V

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;->annotations:[[Lorg/eclipse/jdt/internal/compiler/ast/Annotation;

    iput-object v0, p2, Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;->annotations:[[Lorg/eclipse/jdt/internal/compiler/ast/Annotation;

    iget v0, p2, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->bits:I

    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->bits:I

    const/high16 v2, 0x100000

    and-int/2addr v1, v2

    or-int/2addr v0, v1

    iput v0, p2, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->bits:I

    if-nez p3, :cond_0

    iput p1, p2, Lorg/eclipse/jdt/internal/compiler/ast/ArrayTypeReference;->extendedDimensions:I

    :cond_0
    return-object p2
.end method

.method public checkBounds(Lorg/eclipse/jdt/internal/compiler/lookup/Scope;)V
    .locals 2

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->resolvedType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->leafComponentType()Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v0

    instance-of v0, v0, Lorg/eclipse/jdt/internal/compiler/lookup/ParameterizedTypeBinding;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->resolvedType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->leafComponentType()Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jdt/internal/compiler/lookup/ParameterizedTypeBinding;

    iget-object v1, v0, Lorg/eclipse/jdt/internal/compiler/lookup/ParameterizedTypeBinding;->arguments:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/ast/ParameterizedSingleTypeReference;->typeArguments:[Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    invoke-virtual {v0, p1, v1}, Lorg/eclipse/jdt/internal/compiler/lookup/ParameterizedTypeBinding;->boundCheck(Lorg/eclipse/jdt/internal/compiler/lookup/Scope;[Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;)V

    :cond_1
    return-void
.end method

.method public getParameterizedTypeName()[[C
    .locals 6

    new-instance v0, Ljava/lang/StringBuffer;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/ast/SingleTypeReference;->token:[C

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    const/16 v1, 0x3c

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/ast/ParameterizedSingleTypeReference;->typeArguments:[Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    array-length v1, v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-lt v3, v1, :cond_2

    const/16 v1, 0x3e

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v1

    new-array v3, v1, [C

    invoke-virtual {v0, v2, v1, v3, v2}, Ljava/lang/StringBuffer;->getChars(II[CI)V

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/ArrayTypeReference;->dimensions:I

    if-lez v0, :cond_1

    mul-int/lit8 v1, v0, 0x2

    new-array v1, v1, [C

    :goto_1
    if-lt v2, v0, :cond_0

    invoke-static {v3, v1}, Lorg/eclipse/jdt/core/compiler/CharOperation;->concat([C[C)[C

    move-result-object v3

    goto :goto_2

    :cond_0
    mul-int/lit8 v4, v2, 0x2

    const/16 v5, 0x5b

    aput-char v5, v1, v4

    add-int/lit8 v4, v4, 0x1

    const/16 v5, 0x5d

    aput-char v5, v1, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    :goto_2
    filled-new-array {v3}, [[C

    move-result-object v0

    return-object v0

    :cond_2
    if-lez v3, :cond_3

    const/16 v4, 0x2c

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_3
    iget-object v4, p0, Lorg/eclipse/jdt/internal/compiler/ast/ParameterizedSingleTypeReference;->typeArguments:[Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    aget-object v4, v4, v3

    invoke-virtual {v4}, Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;->getParameterizedTypeName()[[C

    move-result-object v4

    const/16 v5, 0x2e

    invoke-static {v4, v5}, Lorg/eclipse/jdt/core/compiler/CharOperation;->concatWith([[CC)[C

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method public getTypeArguments()[[Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/ParameterizedSingleTypeReference;->typeArguments:[Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    filled-new-array {v0}, [[Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    move-result-object v0

    return-object v0
.end method

.method public getTypeBinding(Lorg/eclipse/jdt/internal/compiler/lookup/Scope;)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public hasNullTypeAnnotation(Lorg/eclipse/jdt/internal/compiler/ast/TypeReference$AnnotationPosition;)Z
    .locals 5

    invoke-super {p0, p1}, Lorg/eclipse/jdt/internal/compiler/ast/ArrayTypeReference;->hasNullTypeAnnotation(Lorg/eclipse/jdt/internal/compiler/ast/TypeReference$AnnotationPosition;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    sget-object v0, Lorg/eclipse/jdt/internal/compiler/ast/TypeReference$AnnotationPosition;->ANY:Lorg/eclipse/jdt/internal/compiler/ast/TypeReference$AnnotationPosition;

    const/4 v2, 0x0

    if-ne p1, v0, :cond_4

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->resolvedType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->hasNullTypeAnnotations()Z

    move-result v0

    if-nez v0, :cond_1

    return v2

    :cond_1
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/ParameterizedSingleTypeReference;->typeArguments:[Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    if-eqz v0, :cond_4

    move v0, v2

    :goto_0
    iget-object v3, p0, Lorg/eclipse/jdt/internal/compiler/ast/ParameterizedSingleTypeReference;->typeArguments:[Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    array-length v4, v3

    if-lt v0, v4, :cond_2

    goto :goto_1

    :cond_2
    aget-object v3, v3, v0

    invoke-virtual {v3, p1}, Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;->hasNullTypeAnnotation(Lorg/eclipse/jdt/internal/compiler/ast/TypeReference$AnnotationPosition;)Z

    move-result v3

    if-eqz v3, :cond_3

    return v1

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_4
    :goto_1
    return v2
.end method

.method public isParameterizedTypeReference()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public printExpression(ILjava/lang/StringBuffer;)Ljava/lang/StringBuffer;
    .locals 5

    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;->annotations:[[Lorg/eclipse/jdt/internal/compiler/ast/Annotation;

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    aget-object p1, p1, v0

    if-eqz p1, :cond_0

    invoke-static {p1, p2}, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->printAnnotations([Lorg/eclipse/jdt/internal/compiler/ast/Annotation;Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    const/16 p1, 0x20

    invoke-virtual {p2, p1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_0
    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/ast/SingleTypeReference;->token:[C

    invoke-virtual {p2, p1}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    const-string p1, "<"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/ast/ParameterizedSingleTypeReference;->typeArguments:[Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    array-length p1, p1

    if-lez p1, :cond_2

    add-int/lit8 p1, p1, -0x1

    move v1, v0

    :goto_0
    if-lt v1, p1, :cond_1

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/ast/ParameterizedSingleTypeReference;->typeArguments:[Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    aget-object p1, v1, p1

    invoke-virtual {p1, v0, p2}, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->print(ILjava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    goto :goto_1

    :cond_1
    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/ast/ParameterizedSingleTypeReference;->typeArguments:[Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    aget-object v2, v2, v1

    invoke-virtual {v2, v0, p2}, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->print(ILjava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    const-string v2, ", "

    invoke-virtual {p2, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    const-string p1, ">"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;->getAnnotationsOnDimensions()[[Lorg/eclipse/jdt/internal/compiler/ast/Annotation;

    move-result-object p1

    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->bits:I

    and-int/lit16 v1, v1, 0x4000

    const-string v2, "[]"

    const-string v3, " "

    if-eqz v1, :cond_6

    :goto_2
    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/ast/ArrayTypeReference;->dimensions:I

    add-int/lit8 v4, v1, -0x1

    if-lt v0, v4, :cond_4

    if-eqz p1, :cond_3

    add-int/lit8 v1, v1, -0x1

    aget-object v0, p1, v1

    if-eqz v0, :cond_3

    invoke-virtual {p2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/ArrayTypeReference;->dimensions:I

    add-int/lit8 v0, v0, -0x1

    aget-object p1, p1, v0

    invoke-static {p1, p2}, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->printAnnotations([Lorg/eclipse/jdt/internal/compiler/ast/Annotation;Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    invoke-virtual {p2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_3
    const-string p1, "..."

    invoke-virtual {p2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_4

    :cond_4
    if-eqz p1, :cond_5

    aget-object v1, p1, v0

    if-eqz v1, :cond_5

    invoke-virtual {p2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    aget-object v1, p1, v0

    invoke-static {v1, p2}, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->printAnnotations([Lorg/eclipse/jdt/internal/compiler/ast/Annotation;Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    invoke-virtual {p2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_5
    invoke-virtual {p2, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_6
    :goto_3
    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/ast/ArrayTypeReference;->dimensions:I

    if-lt v0, v1, :cond_7

    :goto_4
    return-object p2

    :cond_7
    if-eqz p1, :cond_8

    aget-object v1, p1, v0

    if-eqz v1, :cond_8

    invoke-virtual {p2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    aget-object v1, p1, v0

    invoke-static {v1, p2}, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->printAnnotations([Lorg/eclipse/jdt/internal/compiler/ast/Annotation;Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    invoke-virtual {p2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_8
    invoke-virtual {p2, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v0, v0, 0x1

    goto :goto_3
.end method

.method public resolveType(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;ZI)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0, p2, p3}, Lorg/eclipse/jdt/internal/compiler/ast/ParameterizedSingleTypeReference;->internalResolveType(Lorg/eclipse/jdt/internal/compiler/lookup/Scope;Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;ZI)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object p1

    return-object p1
.end method

.method public resolveType(Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;I)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 2
    invoke-direct {p0, p1, v0, v1, p2}, Lorg/eclipse/jdt/internal/compiler/ast/ParameterizedSingleTypeReference;->internalResolveType(Lorg/eclipse/jdt/internal/compiler/lookup/Scope;Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;ZI)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object p1

    return-object p1
.end method

.method public resolveTypeEnclosing(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v0, v1}, Lorg/eclipse/jdt/internal/compiler/ast/ParameterizedSingleTypeReference;->internalResolveType(Lorg/eclipse/jdt/internal/compiler/lookup/Scope;Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;ZI)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object p1

    return-object p1
.end method

.method public traverse(Lorg/eclipse/jdt/internal/compiler/ASTVisitor;Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;)V
    .locals 8

    .line 1
    invoke-virtual {p1, p0, p2}, Lorg/eclipse/jdt/internal/compiler/ASTVisitor;->visit(Lorg/eclipse/jdt/internal/compiler/ast/ParameterizedSingleTypeReference;Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 2
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;->annotations:[[Lorg/eclipse/jdt/internal/compiler/ast/Annotation;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 3
    aget-object v0, v0, v1

    if-nez v0, :cond_0

    move v2, v1

    goto :goto_0

    .line 4
    :cond_0
    array-length v2, v0

    :goto_0
    move v3, v1

    :goto_1
    if-lt v3, v2, :cond_1

    goto :goto_2

    .line 5
    :cond_1
    aget-object v4, v0, v3

    invoke-virtual {v4, p1, p2}, Lorg/eclipse/jdt/internal/compiler/ast/Annotation;->traverse(Lorg/eclipse/jdt/internal/compiler/ASTVisitor;Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    :goto_2
    const/4 v0, 0x1

    .line 6
    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/internal/compiler/ast/ArrayTypeReference;->getAnnotationsOnDimensions(Z)[[Lorg/eclipse/jdt/internal/compiler/ast/Annotation;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 7
    array-length v2, v0

    move v3, v1

    :goto_3
    if-lt v3, v2, :cond_3

    goto :goto_6

    .line 8
    :cond_3
    aget-object v4, v0, v3

    if-eqz v4, :cond_5

    .line 9
    array-length v5, v4

    move v6, v1

    :goto_4
    if-lt v6, v5, :cond_4

    goto :goto_5

    .line 10
    :cond_4
    aget-object v7, v4, v6

    .line 11
    invoke-virtual {v7, p1, p2}, Lorg/eclipse/jdt/internal/compiler/ast/Annotation;->traverse(Lorg/eclipse/jdt/internal/compiler/ASTVisitor;Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    :cond_5
    :goto_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 12
    :cond_6
    :goto_6
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/ParameterizedSingleTypeReference;->typeArguments:[Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    array-length v0, v0

    :goto_7
    if-lt v1, v0, :cond_7

    goto :goto_8

    .line 13
    :cond_7
    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/ast/ParameterizedSingleTypeReference;->typeArguments:[Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    aget-object v2, v2, v1

    invoke-virtual {v2, p1, p2}, Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;->traverse(Lorg/eclipse/jdt/internal/compiler/ASTVisitor;Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 14
    :cond_8
    :goto_8
    invoke-virtual {p1, p0, p2}, Lorg/eclipse/jdt/internal/compiler/ASTVisitor;->endVisit(Lorg/eclipse/jdt/internal/compiler/ast/ParameterizedSingleTypeReference;Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;)V

    return-void
.end method

.method public traverse(Lorg/eclipse/jdt/internal/compiler/ASTVisitor;Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;)V
    .locals 8

    .line 15
    invoke-virtual {p1, p0, p2}, Lorg/eclipse/jdt/internal/compiler/ASTVisitor;->visit(Lorg/eclipse/jdt/internal/compiler/ast/ParameterizedSingleTypeReference;Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 16
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;->annotations:[[Lorg/eclipse/jdt/internal/compiler/ast/Annotation;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 17
    aget-object v0, v0, v1

    if-nez v0, :cond_0

    move v2, v1

    goto :goto_0

    .line 18
    :cond_0
    array-length v2, v0

    :goto_0
    move v3, v1

    :goto_1
    if-lt v3, v2, :cond_1

    goto :goto_2

    .line 19
    :cond_1
    aget-object v4, v0, v3

    invoke-virtual {v4, p1, p2}, Lorg/eclipse/jdt/internal/compiler/ast/Annotation;->traverse(Lorg/eclipse/jdt/internal/compiler/ASTVisitor;Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    :goto_2
    const/4 v0, 0x1

    .line 20
    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/internal/compiler/ast/ArrayTypeReference;->getAnnotationsOnDimensions(Z)[[Lorg/eclipse/jdt/internal/compiler/ast/Annotation;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 21
    array-length v2, v0

    move v3, v1

    :goto_3
    if-lt v3, v2, :cond_3

    goto :goto_5

    .line 22
    :cond_3
    aget-object v4, v0, v3

    .line 23
    array-length v5, v4

    move v6, v1

    :goto_4
    if-lt v6, v5, :cond_4

    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 24
    :cond_4
    aget-object v7, v4, v6

    .line 25
    invoke-virtual {v7, p1, p2}, Lorg/eclipse/jdt/internal/compiler/ast/Annotation;->traverse(Lorg/eclipse/jdt/internal/compiler/ASTVisitor;Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    .line 26
    :cond_5
    :goto_5
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/ParameterizedSingleTypeReference;->typeArguments:[Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    array-length v0, v0

    :goto_6
    if-lt v1, v0, :cond_6

    goto :goto_7

    .line 27
    :cond_6
    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/ast/ParameterizedSingleTypeReference;->typeArguments:[Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    aget-object v2, v2, v1

    invoke-virtual {v2, p1, p2}, Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;->traverse(Lorg/eclipse/jdt/internal/compiler/ASTVisitor;Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 28
    :cond_7
    :goto_7
    invoke-virtual {p1, p0, p2}, Lorg/eclipse/jdt/internal/compiler/ASTVisitor;->endVisit(Lorg/eclipse/jdt/internal/compiler/ast/ParameterizedSingleTypeReference;Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;)V

    return-void
.end method
