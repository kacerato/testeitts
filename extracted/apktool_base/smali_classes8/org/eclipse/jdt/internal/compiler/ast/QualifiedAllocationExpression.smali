.class public Lorg/eclipse/jdt/internal/compiler/ast/QualifiedAllocationExpression;
.super Lorg/eclipse/jdt/internal/compiler/ast/AllocationExpression;
.source "SourceFile"


# instance fields
.field public anonymousType:Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;

.field public enclosingInstance:Lorg/eclipse/jdt/internal/compiler/ast/Expression;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lorg/eclipse/jdt/internal/compiler/ast/AllocationExpression;-><init>()V

    return-void
.end method

.method public constructor <init>(Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lorg/eclipse/jdt/internal/compiler/ast/AllocationExpression;-><init>()V

    .line 3
    iput-object p1, p0, Lorg/eclipse/jdt/internal/compiler/ast/QualifiedAllocationExpression;->anonymousType:Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;

    .line 4
    iput-object p0, p1, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->allocation:Lorg/eclipse/jdt/internal/compiler/ast/QualifiedAllocationExpression;

    return-void
.end method

.method private getAnonymousConstructorBinding(Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;)Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;
    .locals 5

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->isInterface()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->getJavaLangObject()Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, p1

    :goto_0
    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/ast/QualifiedAllocationExpression;->anonymousType:Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;

    invoke-virtual {p2, v1, p1}, Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;->addAnonymousType(Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;)V

    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/ast/QualifiedAllocationExpression;->anonymousType:Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;

    invoke-virtual {p1, p2}, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->resolve(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;)V

    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/ast/QualifiedAllocationExpression;->anonymousType:Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;

    iget-object p1, p1, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;

    iput-object p1, p0, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->resolvedType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    iget-wide v1, p1, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->tagBits:J

    const-wide/32 v3, 0x20000

    and-long/2addr v1, v3

    const-wide/16 v3, 0x0

    cmp-long p1, v1, v3

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    return-object p1

    :cond_1
    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/ast/AllocationExpression;->argumentTypes:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-virtual {p0, p2, p0, v0, p1}, Lorg/eclipse/jdt/internal/compiler/ast/Statement;->findConstructorBinding(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;Lorg/eclipse/jdt/internal/compiler/ast/Invocation;Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    move-result-object p1

    return-object p1
.end method

.method private resolveTypeForQualifiedAllocationExpression(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;
    .locals 20

    move-object/from16 v8, p0

    move-object/from16 v9, p1

    iget-object v0, v8, Lorg/eclipse/jdt/internal/compiler/ast/AllocationExpression;->type:Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    const/4 v11, 0x1

    if-eqz v0, :cond_0

    iget v0, v0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->bits:I

    const/high16 v1, 0x80000

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    move v12, v11

    goto :goto_0

    :cond_0
    const/4 v12, 0x0

    :goto_0
    invoke-virtual/range {p1 .. p1}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->compilerOptions()Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;

    move-result-object v0

    iget-wide v13, v0, Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;->sourceLevel:J

    iget-object v0, v8, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->constant:Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    sget-object v1, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->NotAConstant:Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    const-wide/32 v15, 0x350000

    const/4 v2, 0x2

    const/4 v7, 0x0

    if-eq v0, v1, :cond_2c

    iput-object v1, v8, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->constant:Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    iget-object v0, v8, Lorg/eclipse/jdt/internal/compiler/ast/QualifiedAllocationExpression;->enclosingInstance:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    if-eqz v0, :cond_8

    instance-of v1, v0, Lorg/eclipse/jdt/internal/compiler/ast/CastExpression;

    if-eqz v1, :cond_1

    iget v1, v0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->bits:I

    or-int/lit8 v1, v1, 0x20

    iput v1, v0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->bits:I

    move v1, v11

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    invoke-virtual {v0, v9}, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->resolveType(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v0

    if-nez v0, :cond_2

    :goto_2
    move-object v6, v7

    move v1, v11

    goto/16 :goto_7

    :cond_2
    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isBaseType()Z

    move-result v3

    if-nez v3, :cond_7

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isArrayType()Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_4

    :cond_3
    iget-object v3, v8, Lorg/eclipse/jdt/internal/compiler/ast/AllocationExpression;->type:Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    instance-of v3, v3, Lorg/eclipse/jdt/internal/compiler/ast/QualifiedTypeReference;

    if-eqz v3, :cond_4

    invoke-virtual/range {p1 .. p1}, Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object v1

    iget-object v3, v8, Lorg/eclipse/jdt/internal/compiler/ast/AllocationExpression;->type:Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    check-cast v3, Lorg/eclipse/jdt/internal/compiler/ast/QualifiedTypeReference;

    invoke-virtual {v1, v3}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->illegalUsageOfQualifiedTypeReference(Lorg/eclipse/jdt/internal/compiler/ast/QualifiedTypeReference;)V

    goto :goto_2

    :cond_4
    move-object v3, v0

    check-cast v3, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    invoke-virtual {v3, v9}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->canBeSeenBy(Lorg/eclipse/jdt/internal/compiler/lookup/Scope;)Z

    move-result v4

    if-nez v4, :cond_5

    new-instance v0, Lorg/eclipse/jdt/internal/compiler/lookup/ProblemReferenceBinding;

    iget-object v1, v3, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->compoundName:[[C

    invoke-direct {v0, v1, v3, v2}, Lorg/eclipse/jdt/internal/compiler/lookup/ProblemReferenceBinding;-><init>([[CLorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;I)V

    invoke-virtual/range {p1 .. p1}, Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object v1

    iget-object v3, v8, Lorg/eclipse/jdt/internal/compiler/ast/QualifiedAllocationExpression;->enclosingInstance:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    invoke-virtual {v1, v3, v0}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->invalidType(Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)V

    goto :goto_2

    :cond_5
    iget-object v4, v8, Lorg/eclipse/jdt/internal/compiler/ast/AllocationExpression;->type:Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    check-cast v4, Lorg/eclipse/jdt/internal/compiler/ast/SingleTypeReference;

    invoke-virtual {v4, v9, v3}, Lorg/eclipse/jdt/internal/compiler/ast/SingleTypeReference;->resolveTypeEnclosing(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v3

    iput-object v3, v8, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->resolvedType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-virtual {v8, v9, v3}, Lorg/eclipse/jdt/internal/compiler/ast/AllocationExpression;->checkIllegalNullAnnotation(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)V

    if-eqz v3, :cond_6

    if-eqz v1, :cond_6

    iget-object v1, v8, Lorg/eclipse/jdt/internal/compiler/ast/QualifiedAllocationExpression;->enclosingInstance:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    invoke-static {v9, v1, v0, v3}, Lorg/eclipse/jdt/internal/compiler/ast/CastExpression;->checkNeedForEnclosingInstanceCast(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;Lorg/eclipse/jdt/internal/compiler/ast/Expression;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)V

    :cond_6
    move-object v6, v3

    :goto_3
    const/4 v1, 0x0

    goto/16 :goto_7

    :cond_7
    :goto_4
    invoke-virtual/range {p1 .. p1}, Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object v1

    iget-object v3, v8, Lorg/eclipse/jdt/internal/compiler/ast/QualifiedAllocationExpression;->enclosingInstance:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    invoke-virtual {v1, v0, v3}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->illegalPrimitiveOrArrayTypeForEnclosingInstance(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;)V

    goto :goto_2

    :cond_8
    iget-object v0, v8, Lorg/eclipse/jdt/internal/compiler/ast/AllocationExpression;->type:Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    if-nez v0, :cond_a

    invoke-virtual/range {p1 .. p1}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->enclosingSourceType()Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;

    move-result-object v3

    :cond_9
    :goto_5
    move-object v6, v3

    move-object v0, v7

    goto :goto_3

    :cond_a
    invoke-virtual {v0, v9, v11}, Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;->resolveType(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;Z)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v3

    invoke-virtual {v8, v9, v3}, Lorg/eclipse/jdt/internal/compiler/ast/AllocationExpression;->checkIllegalNullAnnotation(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)V

    if-eqz v3, :cond_9

    invoke-virtual {v3}, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->isValidBinding()Z

    move-result v0

    if-nez v0, :cond_b

    goto :goto_5

    :cond_b
    iget-object v0, v8, Lorg/eclipse/jdt/internal/compiler/ast/AllocationExpression;->type:Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    instance-of v0, v0, Lorg/eclipse/jdt/internal/compiler/ast/ParameterizedQualifiedTypeReference;

    if-eqz v0, :cond_9

    move-object v0, v3

    check-cast v0, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    :cond_c
    iget v1, v0, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->modifiers:I

    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_d

    goto :goto_5

    :cond_d
    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isRawType()Z

    move-result v1

    if-eqz v1, :cond_e

    goto :goto_5

    :cond_e
    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->enclosingType()Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move-result-object v0

    if-nez v0, :cond_c

    iget-object v0, v8, Lorg/eclipse/jdt/internal/compiler/ast/AllocationExpression;->type:Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    move-object v1, v0

    check-cast v1, Lorg/eclipse/jdt/internal/compiler/ast/ParameterizedQualifiedTypeReference;

    iget-object v0, v1, Lorg/eclipse/jdt/internal/compiler/ast/ParameterizedQualifiedTypeReference;->typeArguments:[[Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    array-length v0, v0

    sub-int/2addr v0, v2

    :goto_6
    if-gez v0, :cond_f

    goto :goto_5

    :cond_f
    iget-object v4, v1, Lorg/eclipse/jdt/internal/compiler/ast/ParameterizedQualifiedTypeReference;->typeArguments:[[Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    aget-object v4, v4, v0

    if-eqz v4, :cond_10

    invoke-virtual/range {p1 .. p1}, Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object v0

    iget-object v1, v8, Lorg/eclipse/jdt/internal/compiler/ast/AllocationExpression;->type:Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    invoke-virtual {v0, v1, v3}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->illegalQualifiedParameterizedTypeAllocation(Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)V

    goto :goto_5

    :cond_10
    add-int/lit8 v0, v0, -0x1

    goto :goto_6

    :goto_7
    if-eqz v6, :cond_11

    invoke-virtual {v6}, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->isValidBinding()Z

    move-result v3

    if-nez v3, :cond_12

    :cond_11
    move v1, v11

    :cond_12
    iget-object v3, v8, Lorg/eclipse/jdt/internal/compiler/ast/AllocationExpression;->typeArguments:[Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    if-eqz v3, :cond_1a

    array-length v3, v3

    const-wide/32 v4, 0x310000

    cmp-long v4, v13, v4

    if-gez v4, :cond_13

    move v4, v11

    goto :goto_8

    :cond_13
    const/4 v4, 0x0

    :goto_8
    iput-boolean v4, v8, Lorg/eclipse/jdt/internal/compiler/ast/AllocationExpression;->argumentsHaveErrors:Z

    new-array v4, v3, [Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    iput-object v4, v8, Lorg/eclipse/jdt/internal/compiler/ast/AllocationExpression;->genericTypeArguments:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    const/4 v4, 0x0

    :goto_9
    if-lt v4, v3, :cond_17

    if-eqz v12, :cond_14

    invoke-virtual/range {p1 .. p1}, Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object v0

    iget-object v1, v8, Lorg/eclipse/jdt/internal/compiler/ast/AllocationExpression;->typeArguments:[Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    invoke-virtual {v0, v1}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->diamondNotWithExplicitTypeArguments([Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;)V

    return-object v7

    :cond_14
    iget-boolean v3, v8, Lorg/eclipse/jdt/internal/compiler/ast/AllocationExpression;->argumentsHaveErrors:Z

    if-eqz v3, :cond_1a

    iget-object v0, v8, Lorg/eclipse/jdt/internal/compiler/ast/AllocationExpression;->arguments:[Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    if-eqz v0, :cond_16

    array-length v0, v0

    const/4 v10, 0x0

    :goto_a
    if-lt v10, v0, :cond_15

    goto :goto_b

    :cond_15
    iget-object v1, v8, Lorg/eclipse/jdt/internal/compiler/ast/AllocationExpression;->arguments:[Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    aget-object v1, v1, v10

    invoke-virtual {v1, v9}, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->resolveType(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    add-int/lit8 v10, v10, 0x1

    goto :goto_a

    :cond_16
    :goto_b
    return-object v7

    :cond_17
    iget-object v5, v8, Lorg/eclipse/jdt/internal/compiler/ast/AllocationExpression;->typeArguments:[Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    aget-object v5, v5, v4

    iget-object v10, v8, Lorg/eclipse/jdt/internal/compiler/ast/AllocationExpression;->genericTypeArguments:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-virtual {v5, v9, v11}, Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;->resolveType(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;Z)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v17

    aput-object v17, v10, v4

    if-nez v17, :cond_18

    iput-boolean v11, v8, Lorg/eclipse/jdt/internal/compiler/ast/AllocationExpression;->argumentsHaveErrors:Z

    :cond_18
    iget-boolean v10, v8, Lorg/eclipse/jdt/internal/compiler/ast/AllocationExpression;->argumentsHaveErrors:Z

    if-eqz v10, :cond_19

    instance-of v10, v5, Lorg/eclipse/jdt/internal/compiler/ast/Wildcard;

    if-eqz v10, :cond_19

    invoke-virtual/range {p1 .. p1}, Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object v10

    invoke-virtual {v10, v5}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->illegalUsageOfWildcard(Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;)V

    :cond_19
    add-int/lit8 v4, v4, 0x1

    goto :goto_9

    :cond_1a
    sget-object v3, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->NO_PARAMETERS:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    iput-object v3, v8, Lorg/eclipse/jdt/internal/compiler/ast/AllocationExpression;->argumentTypes:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    iget-object v3, v8, Lorg/eclipse/jdt/internal/compiler/ast/AllocationExpression;->arguments:[Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    if-eqz v3, :cond_1e

    array-length v3, v3

    new-array v4, v3, [Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    iput-object v4, v8, Lorg/eclipse/jdt/internal/compiler/ast/AllocationExpression;->argumentTypes:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    const/4 v4, 0x0

    :goto_c
    if-lt v4, v3, :cond_1b

    goto :goto_d

    :cond_1b
    iget-object v5, v8, Lorg/eclipse/jdt/internal/compiler/ast/AllocationExpression;->arguments:[Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    aget-object v5, v5, v4

    instance-of v10, v5, Lorg/eclipse/jdt/internal/compiler/ast/CastExpression;

    if-eqz v10, :cond_1c

    iget v10, v5, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->bits:I

    or-int/lit8 v10, v10, 0x20

    iput v10, v5, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->bits:I

    iput-boolean v11, v8, Lorg/eclipse/jdt/internal/compiler/ast/AllocationExpression;->argsContainCast:Z

    :cond_1c
    sget-object v10, Lorg/eclipse/jdt/internal/compiler/ast/ExpressionContext;->INVOCATION_CONTEXT:Lorg/eclipse/jdt/internal/compiler/ast/ExpressionContext;

    invoke-virtual {v5, v10}, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->setExpressionContext(Lorg/eclipse/jdt/internal/compiler/ast/ExpressionContext;)V

    iget-object v10, v8, Lorg/eclipse/jdt/internal/compiler/ast/AllocationExpression;->argumentTypes:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-virtual {v5, v9}, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->resolveType(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v5

    aput-object v5, v10, v4

    if-nez v5, :cond_1d

    iput-boolean v11, v8, Lorg/eclipse/jdt/internal/compiler/ast/AllocationExpression;->argumentsHaveErrors:Z

    move v1, v11

    :cond_1d
    add-int/lit8 v4, v4, 0x1

    goto :goto_c

    :cond_1e
    :goto_d
    if-eqz v1, :cond_26

    if-eqz v12, :cond_1f

    return-object v7

    :cond_1f
    instance-of v0, v6, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    if-eqz v0, :cond_25

    move-object v10, v6

    check-cast v10, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    invoke-virtual {v6}, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->isValidBinding()Z

    move-result v0

    if-eqz v0, :cond_24

    iget-object v0, v8, Lorg/eclipse/jdt/internal/compiler/ast/AllocationExpression;->arguments:[Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    if-nez v0, :cond_20

    const/4 v0, 0x0

    goto :goto_e

    :cond_20
    array-length v0, v0

    :goto_e
    new-array v3, v0, [Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    :goto_f
    add-int/lit8 v0, v0, -0x1

    if-gez v0, :cond_22

    sget-object v2, Lorg/eclipse/jdt/internal/compiler/lookup/TypeConstants;->INIT:[C

    const/4 v5, 0x0

    move-object/from16 v0, p1

    move-object v1, v10

    move-object/from16 v4, p0

    invoke-virtual/range {v0 .. v5}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->findMethod(Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;[C[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/InvocationSite;Z)Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    move-result-object v0

    iput-object v0, v8, Lorg/eclipse/jdt/internal/compiler/ast/AllocationExpression;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    if-eqz v0, :cond_24

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->isValidBinding()Z

    move-result v0

    if-nez v0, :cond_24

    iget-object v0, v8, Lorg/eclipse/jdt/internal/compiler/ast/AllocationExpression;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    check-cast v0, Lorg/eclipse/jdt/internal/compiler/lookup/ProblemMethodBinding;

    iget-object v0, v0, Lorg/eclipse/jdt/internal/compiler/lookup/ProblemMethodBinding;->closestMatch:Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    if-eqz v0, :cond_24

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->original()Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    move-result-object v1

    iget-object v1, v1, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->typeVariables:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;

    sget-object v2, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->NO_TYPE_VARIABLES:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;

    if-eq v1, v2, :cond_21

    invoke-virtual/range {p1 .. p1}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->environment()Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    move-result-object v1

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->original()Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    move-result-object v0

    invoke-virtual {v1, v0, v7}, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->createParameterizedGenericMethod(Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;Lorg/eclipse/jdt/internal/compiler/lookup/RawTypeBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/ParameterizedGenericMethodBinding;

    move-result-object v0

    :cond_21
    iput-object v0, v8, Lorg/eclipse/jdt/internal/compiler/ast/AllocationExpression;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->original()Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    move-result-object v0

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->isOrEnclosedByPrivateType()Z

    move-result v1

    if-eqz v1, :cond_24

    invoke-virtual {v9, v0}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->isDefinedInMethod(Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;)Z

    move-result v1

    if-nez v1, :cond_24

    iget v1, v0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->modifiers:I

    const/high16 v2, 0x8000000

    or-int/2addr v1, v2

    iput v1, v0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->modifiers:I

    goto :goto_10

    :cond_22
    iget-object v1, v8, Lorg/eclipse/jdt/internal/compiler/ast/AllocationExpression;->argumentTypes:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    aget-object v1, v1, v0

    if-nez v1, :cond_23

    sget-object v1, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->NULL:Lorg/eclipse/jdt/internal/compiler/lookup/NullTypeBinding;

    :cond_23
    aput-object v1, v3, v0

    goto :goto_f

    :cond_24
    :goto_10
    iget-object v0, v8, Lorg/eclipse/jdt/internal/compiler/ast/QualifiedAllocationExpression;->anonymousType:Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;

    if-eqz v0, :cond_25

    invoke-virtual {v9, v0, v10}, Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;->addAnonymousType(Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;)V

    iget-object v0, v8, Lorg/eclipse/jdt/internal/compiler/ast/QualifiedAllocationExpression;->anonymousType:Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;

    invoke-virtual {v0, v9}, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->resolve(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;)V

    iget-object v0, v8, Lorg/eclipse/jdt/internal/compiler/ast/QualifiedAllocationExpression;->anonymousType:Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;

    iget-object v0, v0, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;

    iput-object v0, v8, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->resolvedType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    return-object v0

    :cond_25
    iput-object v6, v8, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->resolvedType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    return-object v6

    :cond_26
    iget-object v1, v8, Lorg/eclipse/jdt/internal/compiler/ast/QualifiedAllocationExpression;->anonymousType:Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;

    if-nez v1, :cond_27

    invoke-virtual {v6}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->canBeInstantiated()Z

    move-result v1

    if-nez v1, :cond_2b

    invoke-virtual/range {p1 .. p1}, Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object v0

    iget-object v1, v8, Lorg/eclipse/jdt/internal/compiler/ast/AllocationExpression;->type:Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    invoke-virtual {v0, v1, v6}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->cannotInstantiate(Lorg/eclipse/jdt/internal/compiler/ast/Expression;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)V

    iput-object v6, v8, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->resolvedType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    return-object v6

    :cond_27
    if-eqz v12, :cond_28

    cmp-long v1, v13, v15

    if-gez v1, :cond_28

    invoke-virtual/range {p1 .. p1}, Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object v0

    iget-object v1, v8, Lorg/eclipse/jdt/internal/compiler/ast/AllocationExpression;->type:Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    invoke-virtual {v0, v1}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->diamondNotWithAnoymousClasses(Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;)V

    return-object v7

    :cond_28
    move-object v1, v6

    check-cast v1, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isTypeVariable()Z

    move-result v3

    if-eqz v3, :cond_29

    new-instance v0, Lorg/eclipse/jdt/internal/compiler/lookup/ProblemReferenceBinding;

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->sourceName()[C

    move-result-object v2

    filled-new-array {v2}, [[C

    move-result-object v2

    const/16 v3, 0x9

    invoke-direct {v0, v2, v1, v3}, Lorg/eclipse/jdt/internal/compiler/lookup/ProblemReferenceBinding;-><init>([[CLorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;I)V

    invoke-virtual/range {p1 .. p1}, Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object v1

    invoke-virtual {v1, v8, v0}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->invalidType(Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)V

    return-object v7

    :cond_29
    iget-object v3, v8, Lorg/eclipse/jdt/internal/compiler/ast/AllocationExpression;->type:Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    if-eqz v3, :cond_2a

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->isEnum()Z

    move-result v3

    if-eqz v3, :cond_2a

    invoke-virtual/range {p1 .. p1}, Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object v0

    iget-object v2, v8, Lorg/eclipse/jdt/internal/compiler/ast/AllocationExpression;->type:Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    invoke-virtual {v0, v2, v1}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->cannotInstantiate(Lorg/eclipse/jdt/internal/compiler/ast/Expression;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)V

    iput-object v1, v8, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->resolvedType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    return-object v1

    :cond_2a
    iput-object v6, v8, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->resolvedType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    :cond_2b
    :goto_11
    move-object v10, v0

    goto :goto_12

    :cond_2c
    iget-object v0, v8, Lorg/eclipse/jdt/internal/compiler/ast/QualifiedAllocationExpression;->enclosingInstance:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    if-eqz v0, :cond_2d

    iget-object v0, v0, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->resolvedType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    iget-object v1, v8, Lorg/eclipse/jdt/internal/compiler/ast/AllocationExpression;->type:Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    iget-object v6, v1, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->resolvedType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    iput-object v6, v8, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->resolvedType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    goto :goto_11

    :cond_2d
    move-object v6, v7

    move-object v10, v6

    :goto_12
    if-eqz v12, :cond_34

    invoke-virtual/range {p0 .. p1}, Lorg/eclipse/jdt/internal/compiler/ast/AllocationExpression;->inferConstructorOfElidedParameterizedType(Lorg/eclipse/jdt/internal/compiler/lookup/Scope;)Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    move-result-object v0

    iput-object v0, v8, Lorg/eclipse/jdt/internal/compiler/ast/AllocationExpression;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    if-eqz v0, :cond_33

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->isValidBinding()Z

    move-result v1

    if-nez v1, :cond_2e

    goto/16 :goto_14

    :cond_2e
    iget-object v1, v8, Lorg/eclipse/jdt/internal/compiler/ast/AllocationExpression;->typeExpected:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    if-nez v1, :cond_2f

    const-wide/32 v3, 0x340000

    cmp-long v1, v13, v3

    if-ltz v1, :cond_2f

    iget-object v1, v8, Lorg/eclipse/jdt/internal/compiler/ast/AllocationExpression;->expressionContext:Lorg/eclipse/jdt/internal/compiler/ast/ExpressionContext;

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/compiler/ast/ExpressionContext;->definesTargetType()Z

    move-result v1

    if-eqz v1, :cond_2f

    new-instance v0, Lorg/eclipse/jdt/internal/compiler/lookup/PolyTypeBinding;

    invoke-direct {v0, v8}, Lorg/eclipse/jdt/internal/compiler/lookup/PolyTypeBinding;-><init>(Lorg/eclipse/jdt/internal/compiler/ast/Expression;)V

    return-object v0

    :cond_2f
    iget-object v1, v8, Lorg/eclipse/jdt/internal/compiler/ast/AllocationExpression;->type:Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    iget-object v3, v8, Lorg/eclipse/jdt/internal/compiler/ast/AllocationExpression;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    iget-object v6, v3, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->declaringClass:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    iput-object v6, v1, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->resolvedType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    iput-object v6, v8, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->resolvedType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    iget-object v1, v8, Lorg/eclipse/jdt/internal/compiler/ast/QualifiedAllocationExpression;->anonymousType:Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;

    if-eqz v1, :cond_31

    invoke-direct {v8, v6, v9}, Lorg/eclipse/jdt/internal/compiler/ast/QualifiedAllocationExpression;->getAnonymousConstructorBinding(Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;)Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    move-result-object v0

    if-nez v0, :cond_30

    return-object v7

    :cond_30
    iget-object v1, v8, Lorg/eclipse/jdt/internal/compiler/ast/QualifiedAllocationExpression;->anonymousType:Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;

    iget-object v1, v1, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;

    iput-object v1, v8, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->resolvedType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-object v1, v6

    check-cast v1, Lorg/eclipse/jdt/internal/compiler/lookup/ParameterizedTypeBinding;

    invoke-direct {v8, v1, v9}, Lorg/eclipse/jdt/internal/compiler/ast/QualifiedAllocationExpression;->validate(Lorg/eclipse/jdt/internal/compiler/lookup/ParameterizedTypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/Scope;)Z

    move-result v1

    if-nez v1, :cond_32

    iget-object v0, v8, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->resolvedType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    return-object v0

    :cond_31
    invoke-virtual {v3}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->isVarargs()Z

    move-result v1

    if-eqz v1, :cond_32

    iget-object v1, v8, Lorg/eclipse/jdt/internal/compiler/ast/AllocationExpression;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    iget-object v1, v1, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->parameters:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    array-length v3, v1

    sub-int/2addr v3, v11

    aget-object v1, v1, v3

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->leafComponentType()Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v1

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->erasure()Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v3

    invoke-virtual {v3, v9}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->canBeSeenBy(Lorg/eclipse/jdt/internal/compiler/lookup/Scope;)Z

    move-result v3

    if-nez v3, :cond_32

    invoke-virtual/range {p1 .. p1}, Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object v0

    new-instance v3, Lorg/eclipse/jdt/internal/compiler/lookup/ProblemReferenceBinding;

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->readableName()[C

    move-result-object v4

    filled-new-array {v4}, [[C

    move-result-object v4

    check-cast v1, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    invoke-direct {v3, v4, v1, v2}, Lorg/eclipse/jdt/internal/compiler/lookup/ProblemReferenceBinding;-><init>([[CLorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;I)V

    invoke-virtual {v0, v8, v3}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->invalidType(Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)V

    iput-object v7, v8, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->resolvedType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    return-object v7

    :cond_32
    iget-object v1, v8, Lorg/eclipse/jdt/internal/compiler/ast/AllocationExpression;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    iget-object v2, v8, Lorg/eclipse/jdt/internal/compiler/ast/AllocationExpression;->argumentTypes:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-static {v8, v1, v2, v9}, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->resolvePolyExpressionArguments(Lorg/eclipse/jdt/internal/compiler/ast/Invocation;Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;)Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    move-result-object v1

    iput-object v1, v8, Lorg/eclipse/jdt/internal/compiler/ast/AllocationExpression;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    :goto_13
    move-object v5, v6

    move-object v6, v0

    goto :goto_15

    :cond_33
    :goto_14
    invoke-virtual/range {p1 .. p1}, Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object v0

    invoke-virtual {v0, v8}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->cannotInferElidedTypes(Lorg/eclipse/jdt/internal/compiler/ast/AllocationExpression;)V

    iput-object v7, v8, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->resolvedType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    return-object v7

    :cond_34
    iget-object v0, v8, Lorg/eclipse/jdt/internal/compiler/ast/QualifiedAllocationExpression;->anonymousType:Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;

    if-eqz v0, :cond_36

    move-object v0, v6

    check-cast v0, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    invoke-direct {v8, v0, v9}, Lorg/eclipse/jdt/internal/compiler/ast/QualifiedAllocationExpression;->getAnonymousConstructorBinding(Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;)Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    move-result-object v0

    if-nez v0, :cond_35

    return-object v7

    :cond_35
    iget-object v1, v8, Lorg/eclipse/jdt/internal/compiler/ast/QualifiedAllocationExpression;->anonymousType:Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;

    iget-object v1, v1, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;

    iput-object v1, v8, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->resolvedType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    goto :goto_13

    :cond_36
    move-object v0, v6

    check-cast v0, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    iget-object v1, v8, Lorg/eclipse/jdt/internal/compiler/ast/AllocationExpression;->argumentTypes:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-virtual {v8, v9, v8, v0, v1}, Lorg/eclipse/jdt/internal/compiler/ast/Statement;->findConstructorBinding(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;Lorg/eclipse/jdt/internal/compiler/ast/Invocation;Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    move-result-object v0

    iput-object v0, v8, Lorg/eclipse/jdt/internal/compiler/ast/AllocationExpression;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    goto :goto_13

    :goto_15
    move-object v4, v5

    check-cast v4, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    invoke-virtual {v4}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->isInterface()Z

    move-result v0

    if-eqz v0, :cond_37

    invoke-virtual/range {p1 .. p1}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->getJavaLangObject()Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move-result-object v0

    move-object v2, v0

    goto :goto_16

    :cond_37
    move-object v2, v4

    :goto_16
    invoke-virtual {v6}, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->isValidBinding()Z

    move-result v0

    if-eqz v0, :cond_44

    invoke-virtual {v8, v6, v9, v11, v8}, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->isMethodUseDeprecated(Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;Lorg/eclipse/jdt/internal/compiler/lookup/Scope;ZLorg/eclipse/jdt/internal/compiler/lookup/InvocationSite;)Z

    move-result v0

    if-eqz v0, :cond_38

    invoke-virtual/range {p1 .. p1}, Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object v0

    invoke-virtual {v0, v6, v8}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->deprecatedMethod(Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;)V

    :cond_38
    iget-object v3, v8, Lorg/eclipse/jdt/internal/compiler/ast/AllocationExpression;->arguments:[Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    iget-object v1, v8, Lorg/eclipse/jdt/internal/compiler/ast/AllocationExpression;->argumentTypes:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    iget-boolean v0, v8, Lorg/eclipse/jdt/internal/compiler/ast/AllocationExpression;->argsContainCast:Z

    const/16 v17, 0x0

    move/from16 v18, v0

    move-object/from16 v0, p1

    move-object/from16 v19, v1

    move-object/from16 v1, v17

    move-object/from16 v17, v3

    move-object v3, v6

    move-object v11, v4

    move-object/from16 v4, v17

    move-object/from16 v17, v5

    move-object/from16 v5, v19

    move-object/from16 v19, v6

    move/from16 v6, v18

    move-object v15, v7

    move-object/from16 v7, p0

    invoke-static/range {v0 .. v7}, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->checkInvocationArguments(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;Lorg/eclipse/jdt/internal/compiler/ast/Expression;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;[Lorg/eclipse/jdt/internal/compiler/ast/Expression;[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;ZLorg/eclipse/jdt/internal/compiler/lookup/InvocationSite;)Z

    move-result v0

    const/high16 v1, 0x10000

    if-eqz v0, :cond_39

    iget v0, v8, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->bits:I

    or-int/2addr v0, v1

    iput v0, v8, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->bits:I

    :cond_39
    iget-object v0, v8, Lorg/eclipse/jdt/internal/compiler/ast/AllocationExpression;->typeArguments:[Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    if-eqz v0, :cond_3a

    invoke-virtual/range {v19 .. v19}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->original()Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    move-result-object v0

    iget-object v0, v0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->typeVariables:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;

    sget-object v2, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->NO_TYPE_VARIABLES:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;

    if-ne v0, v2, :cond_3a

    invoke-virtual/range {p1 .. p1}, Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object v0

    iget-object v2, v8, Lorg/eclipse/jdt/internal/compiler/ast/AllocationExpression;->genericTypeArguments:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    iget-object v3, v8, Lorg/eclipse/jdt/internal/compiler/ast/AllocationExpression;->typeArguments:[Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    move-object/from16 v4, v19

    invoke-virtual {v0, v4, v2, v3}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->unnecessaryTypeArgumentsForMethodInvocation(Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;[Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;)V

    goto :goto_17

    :cond_3a
    move-object/from16 v4, v19

    :goto_17
    iget-wide v2, v4, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->tagBits:J

    const-wide/16 v5, 0x80

    and-long/2addr v2, v5

    const-wide/16 v5, 0x0

    cmp-long v0, v2, v5

    if-eqz v0, :cond_3b

    invoke-virtual/range {p1 .. p1}, Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object v0

    invoke-virtual {v0, v8, v4}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->missingTypeInConstructor(Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;)V

    :cond_3b
    iget-object v0, v8, Lorg/eclipse/jdt/internal/compiler/ast/QualifiedAllocationExpression;->enclosingInstance:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    if-eqz v0, :cond_3e

    iget-object v0, v4, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->declaringClass:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->enclosingType()Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move-result-object v0

    if-nez v0, :cond_3c

    invoke-virtual/range {p1 .. p1}, Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object v0

    iget-object v1, v8, Lorg/eclipse/jdt/internal/compiler/ast/QualifiedAllocationExpression;->enclosingInstance:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    invoke-virtual {v0, v1, v11}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->unnecessaryEnclosingInstanceSpecification(Lorg/eclipse/jdt/internal/compiler/ast/Expression;Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;)V

    iget-object v0, v8, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->resolvedType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    return-object v0

    :cond_3c
    invoke-virtual {v10, v0}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isCompatibleWith(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Z

    move-result v2

    if-nez v2, :cond_3d

    invoke-virtual {v9, v10, v0}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->isBoxingCompatibleWith(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Z

    move-result v2

    if-nez v2, :cond_3d

    invoke-virtual/range {p1 .. p1}, Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object v1

    iget-object v2, v8, Lorg/eclipse/jdt/internal/compiler/ast/QualifiedAllocationExpression;->enclosingInstance:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    invoke-virtual {v1, v10, v0, v2, v15}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->typeMismatchError(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;)V

    iget-object v0, v8, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->resolvedType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    return-object v0

    :cond_3d
    iget-object v2, v8, Lorg/eclipse/jdt/internal/compiler/ast/QualifiedAllocationExpression;->enclosingInstance:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    invoke-virtual {v2, v9, v0, v10}, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->computeConversion(Lorg/eclipse/jdt/internal/compiler/lookup/Scope;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)V

    :cond_3e
    if-nez v12, :cond_40

    invoke-virtual/range {v17 .. v17}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isParameterizedTypeWithActualArguments()Z

    move-result v0

    if-eqz v0, :cond_40

    iget-object v0, v8, Lorg/eclipse/jdt/internal/compiler/ast/QualifiedAllocationExpression;->anonymousType:Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;

    if-eqz v0, :cond_3f

    const-wide/32 v2, 0x350000

    cmp-long v0, v13, v2

    if-ltz v0, :cond_40

    :cond_3f
    move-object/from16 v6, v17

    goto :goto_18

    :cond_40
    move-object/from16 v6, v17

    goto :goto_19

    :goto_18
    move-object v5, v6

    check-cast v5, Lorg/eclipse/jdt/internal/compiler/lookup/ParameterizedTypeBinding;

    invoke-virtual {v8, v5, v9}, Lorg/eclipse/jdt/internal/compiler/ast/AllocationExpression;->checkTypeArgumentRedundancy(Lorg/eclipse/jdt/internal/compiler/lookup/ParameterizedTypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;)V

    :goto_19
    iget-object v0, v8, Lorg/eclipse/jdt/internal/compiler/ast/QualifiedAllocationExpression;->anonymousType:Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;

    if-eqz v0, :cond_43

    invoke-virtual/range {p1 .. p1}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->environment()Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    move-result-object v0

    iget-object v0, v0, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->globalOptions:Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;

    iget-boolean v0, v0, Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;->isAnnotationBasedNullAnalysisEnabled:Z

    if-eqz v0, :cond_41

    invoke-static {v4, v9}, Lorg/eclipse/jdt/internal/compiler/lookup/ImplicitNullAnnotationVerifier;->ensureNullnessIsKnown(Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;Lorg/eclipse/jdt/internal/compiler/lookup/Scope;)V

    :cond_41
    iget-object v0, v8, Lorg/eclipse/jdt/internal/compiler/ast/QualifiedAllocationExpression;->anonymousType:Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;

    iget v2, v8, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->bits:I

    and-int/2addr v1, v2

    if-eqz v1, :cond_42

    iget-object v1, v8, Lorg/eclipse/jdt/internal/compiler/ast/AllocationExpression;->genericTypeArguments:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    if-nez v1, :cond_42

    const/4 v10, 0x1

    goto :goto_1a

    :cond_42
    const/4 v10, 0x0

    :goto_1a
    invoke-virtual {v0, v4, v10}, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->createDefaultConstructorWithBinding(Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;Z)Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    move-result-object v0

    iput-object v0, v8, Lorg/eclipse/jdt/internal/compiler/ast/AllocationExpression;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    iget-object v0, v8, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->resolvedType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    return-object v0

    :cond_43
    iput-object v6, v8, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->resolvedType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    return-object v6

    :cond_44
    move-object v4, v6

    move-object v15, v7

    iget-object v0, v4, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->declaringClass:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    if-nez v0, :cond_45

    iput-object v2, v4, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->declaringClass:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    :cond_45
    iget-object v0, v8, Lorg/eclipse/jdt/internal/compiler/ast/AllocationExpression;->type:Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    if-eqz v0, :cond_46

    iget-object v0, v0, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->resolvedType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->isValidBinding()Z

    move-result v0

    if-nez v0, :cond_46

    return-object v15

    :cond_46
    invoke-virtual/range {p1 .. p1}, Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object v0

    invoke-virtual {v0, v8, v4}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->invalidConstructor(Lorg/eclipse/jdt/internal/compiler/ast/Statement;Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;)V

    iget-object v0, v8, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->resolvedType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    return-object v0
.end method

.method private validate(Lorg/eclipse/jdt/internal/compiler/lookup/ParameterizedTypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/Scope;)Z
    .locals 1

    new-instance v0, Lorg/eclipse/jdt/internal/compiler/ast/QualifiedAllocationExpression$1ValidityInspector;

    invoke-direct {v0, p0, p2, p1}, Lorg/eclipse/jdt/internal/compiler/ast/QualifiedAllocationExpression$1ValidityInspector;-><init>(Lorg/eclipse/jdt/internal/compiler/ast/QualifiedAllocationExpression;Lorg/eclipse/jdt/internal/compiler/lookup/Scope;Lorg/eclipse/jdt/internal/compiler/lookup/ParameterizedTypeBinding;)V

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/ast/QualifiedAllocationExpression$1ValidityInspector;->isValid()Z

    move-result p1

    return p1
.end method


# virtual methods
.method public analyseCode(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;Lorg/eclipse/jdt/internal/compiler/flow/FlowContext;Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;)Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;
    .locals 11

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/QualifiedAllocationExpression;->enclosingInstance:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2, p3}, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->analyseCode(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;Lorg/eclipse/jdt/internal/compiler/flow/FlowContext;Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;)Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;

    move-result-object p3

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/AllocationExpression;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    if-eqz v0, :cond_1

    iget-object v0, v0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->declaringClass:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->superclass()Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isMemberType()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->isStatic()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->enclosingType()Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move-result-object v0

    invoke-virtual {p1, v0, v1}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->tagAsAccessingEnclosingInstanceStateOf(Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;Z)V

    :cond_1
    :goto_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/QualifiedAllocationExpression;->anonymousType:Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;

    if-nez v0, :cond_2

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/AllocationExpression;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    iget-object v0, v0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->declaringClass:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->erasure()Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v0

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/AllocationExpression;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    iget-object v0, v0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->declaringClass:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->superclass()Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move-result-object v0

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->erasure()Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v0

    :goto_1
    check-cast v0, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    invoke-virtual {p0, v0, p1, p3}, Lorg/eclipse/jdt/internal/compiler/ast/AllocationExpression;->checkCapturedLocalInitializationIfNecessary(Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;)V

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/AllocationExpression;->arguments:[Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    const/4 v2, 0x1

    if-eqz v0, :cond_6

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->compilerOptions()Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;

    move-result-object v0

    iget-boolean v0, v0, Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;->analyseResourceLeaks:Z

    if-eqz v0, :cond_3

    iget-object v3, p0, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->resolvedType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    instance-of v4, v3, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    if-eqz v4, :cond_3

    check-cast v3, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->hasTypeBit(I)Z

    move-result v3

    if-eqz v3, :cond_3

    move v3, v2

    goto :goto_2

    :cond_3
    move v3, v1

    :goto_2
    iget-object v4, p0, Lorg/eclipse/jdt/internal/compiler/ast/AllocationExpression;->arguments:[Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    array-length v4, v4

    move v5, v1

    :goto_3
    if-lt v5, v4, :cond_4

    iget-object v9, p0, Lorg/eclipse/jdt/internal/compiler/ast/AllocationExpression;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    iget-object v10, p0, Lorg/eclipse/jdt/internal/compiler/ast/AllocationExpression;->arguments:[Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    move-object v5, p0

    move-object v6, p1

    move-object v7, p2

    move-object v8, p3

    invoke-virtual/range {v5 .. v10}, Lorg/eclipse/jdt/internal/compiler/ast/Statement;->analyseArguments(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;Lorg/eclipse/jdt/internal/compiler/flow/FlowContext;Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;[Lorg/eclipse/jdt/internal/compiler/ast/Expression;)V

    goto :goto_4

    :cond_4
    iget-object v6, p0, Lorg/eclipse/jdt/internal/compiler/ast/AllocationExpression;->arguments:[Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    aget-object v6, v6, v5

    invoke-virtual {v6, p1, p2, p3}, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->analyseCode(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;Lorg/eclipse/jdt/internal/compiler/flow/FlowContext;Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;)Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;

    move-result-object p3

    if-eqz v0, :cond_5

    if-nez v3, :cond_5

    iget-object v6, p0, Lorg/eclipse/jdt/internal/compiler/ast/AllocationExpression;->arguments:[Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    aget-object v6, v6, v5

    invoke-static {p1, v6, p3, p2, v1}, Lorg/eclipse/jdt/internal/compiler/ast/FakedTrackingVariable;->markPassedToOutside(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;Lorg/eclipse/jdt/internal/compiler/ast/Expression;Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;Lorg/eclipse/jdt/internal/compiler/flow/FlowContext;Z)Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;

    move-result-object p3

    :cond_5
    iget-object v6, p0, Lorg/eclipse/jdt/internal/compiler/ast/AllocationExpression;->arguments:[Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    aget-object v6, v6, v5

    invoke-virtual {v6, p1, p2, p3}, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->checkNPEbyUnboxing(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;Lorg/eclipse/jdt/internal/compiler/flow/FlowContext;Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    :cond_6
    :goto_4
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/QualifiedAllocationExpression;->anonymousType:Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;

    if-eqz v0, :cond_7

    invoke-virtual {v0, p1, p2, p3}, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->analyseCode(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;Lorg/eclipse/jdt/internal/compiler/flow/FlowContext;Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;)Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;

    move-result-object p3

    :cond_7
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/AllocationExpression;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    iget-object v0, v0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->thrownExceptions:[Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    array-length v1, v0

    if-eqz v1, :cond_9

    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->bits:I

    const/high16 v3, 0x10000

    and-int/2addr v1, v3

    if-eqz v1, :cond_8

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/ast/AllocationExpression;->genericTypeArguments:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    if-nez v1, :cond_8

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->environment()Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    move-result-object v0

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/ast/AllocationExpression;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    iget-object v1, v1, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->thrownExceptions:[Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    invoke-virtual {v0, v1, v2, v2}, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->convertToRawTypes([Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;ZZ)[Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move-result-object v0

    :cond_8
    invoke-virtual {p3}, Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;->unconditionalCopy()Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;

    move-result-object v1

    invoke-virtual {p2, v0, p0, v1, p1}, Lorg/eclipse/jdt/internal/compiler/flow/FlowContext;->checkExceptionHandlers([Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;)V

    :cond_9
    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->compilerOptions()Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;

    move-result-object v0

    iget-boolean v0, v0, Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;->analyseResourceLeaks:Z

    if-eqz v0, :cond_a

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->resolvedType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-static {v0}, Lorg/eclipse/jdt/internal/compiler/ast/FakedTrackingVariable;->isAnyCloseable(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-static {p1, p3, p0}, Lorg/eclipse/jdt/internal/compiler/ast/FakedTrackingVariable;->analyseCloseableAllocation(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;Lorg/eclipse/jdt/internal/compiler/ast/AllocationExpression;)V

    :cond_a
    invoke-virtual {p0, p1, p3}, Lorg/eclipse/jdt/internal/compiler/ast/QualifiedAllocationExpression;->manageEnclosingInstanceAccessIfNecessary(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;)V

    invoke-virtual {p0, p1, p3}, Lorg/eclipse/jdt/internal/compiler/ast/AllocationExpression;->manageSyntheticAccessIfNecessary(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;)V

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/flow/FlowContext;->recordAbruptExit()V

    return-object p3
.end method

.method public enclosingInstance()Lorg/eclipse/jdt/internal/compiler/ast/Expression;
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/QualifiedAllocationExpression;->enclosingInstance:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    return-object v0
.end method

.method public generateCode(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;Z)V
    .locals 7

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/ast/AllocationExpression;->cleanUpInferenceContexts()V

    if-nez p3, :cond_0

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->unusedObjectAllocation(Lorg/eclipse/jdt/internal/compiler/ast/AllocationExpression;)V

    :cond_0
    iget v0, p2, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->position:I

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/ast/AllocationExpression;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->original()Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    move-result-object v1

    iget-object v2, v1, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->declaringClass:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    iget-object v3, p0, Lorg/eclipse/jdt/internal/compiler/ast/AllocationExpression;->type:Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    invoke-virtual {p2, v3, v2}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->new_(Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)V

    iget v3, p0, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->implicitConversion:I

    and-int/lit16 v3, v3, 0x400

    const/4 v4, 0x0

    if-eqz v3, :cond_1

    const/4 v3, 0x1

    goto :goto_0

    :cond_1
    move v3, v4

    :goto_0
    if-nez p3, :cond_2

    if-eqz v3, :cond_3

    :cond_2
    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->dup()V

    :cond_3
    iget-object v5, p0, Lorg/eclipse/jdt/internal/compiler/ast/AllocationExpression;->type:Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    if-eqz v5, :cond_4

    iget v5, v5, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceStart:I

    invoke-virtual {p2, v0, v5}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->recordPositionsFrom(II)V

    goto :goto_1

    :cond_4
    iget-object v5, p0, Lorg/eclipse/jdt/internal/compiler/ast/AllocationExpression;->enumConstant:Lorg/eclipse/jdt/internal/compiler/ast/FieldDeclaration;

    iget-object v5, v5, Lorg/eclipse/jdt/internal/compiler/ast/AbstractVariableDeclaration;->name:[C

    invoke-static {v5}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->ldc(Ljava/lang/String;)V

    iget-object v5, p0, Lorg/eclipse/jdt/internal/compiler/ast/AllocationExpression;->enumConstant:Lorg/eclipse/jdt/internal/compiler/ast/FieldDeclaration;

    iget-object v5, v5, Lorg/eclipse/jdt/internal/compiler/ast/FieldDeclaration;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;

    iget v5, v5, Lorg/eclipse/jdt/internal/compiler/lookup/VariableBinding;->id:I

    invoke-virtual {p2, v5}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->generateInlinedValue(I)V

    :goto_1
    invoke-virtual {v2}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isNestedType()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/ast/QualifiedAllocationExpression;->enclosingInstance()Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    move-result-object v5

    invoke-virtual {p2, p1, v2, v5, p0}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->generateSyntheticEnclosingInstanceValues(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;Lorg/eclipse/jdt/internal/compiler/ast/Expression;Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;)V

    :cond_5
    iget-object v5, p0, Lorg/eclipse/jdt/internal/compiler/ast/AllocationExpression;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    iget-object v6, p0, Lorg/eclipse/jdt/internal/compiler/ast/AllocationExpression;->arguments:[Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    invoke-virtual {p0, v5, v6, p1, p2}, Lorg/eclipse/jdt/internal/compiler/ast/Statement;->generateArguments(Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;[Lorg/eclipse/jdt/internal/compiler/ast/Expression;Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;)V

    invoke-virtual {v2}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isNestedType()Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-virtual {p2, p1, v2, p0}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->generateSyntheticOuterArgumentValues(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;)V

    :cond_6
    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/ast/AllocationExpression;->syntheticAccessor:Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    const/4 v5, 0x0

    const/16 v6, -0x49

    if-nez v2, :cond_7

    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/ast/AllocationExpression;->typeArguments:[Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    invoke-virtual {p2, v6, v1, v5, v2}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->invoke(BLorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;[Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;)V

    goto :goto_3

    :cond_7
    iget-object v2, v2, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->parameters:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    array-length v2, v2

    iget-object v1, v1, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->parameters:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    array-length v1, v1

    sub-int/2addr v2, v1

    :goto_2
    if-lt v4, v2, :cond_c

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/ast/AllocationExpression;->syntheticAccessor:Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/ast/AllocationExpression;->typeArguments:[Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    invoke-virtual {p2, v6, v1, v5, v2}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->invoke(BLorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;[Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;)V

    :goto_3
    if-eqz p3, :cond_8

    iget p3, p0, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->implicitConversion:I

    invoke-virtual {p2, p3}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->generateImplicitConversion(I)V

    goto :goto_4

    :cond_8
    if-eqz v3, :cond_a

    iget p3, p0, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->implicitConversion:I

    invoke-virtual {p2, p3}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->generateImplicitConversion(I)V

    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->postConversionType(Lorg/eclipse/jdt/internal/compiler/lookup/Scope;)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object p3

    iget p3, p3, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->id:I

    const/4 v1, 0x7

    if-eq p3, v1, :cond_9

    const/16 v1, 0x8

    if-eq p3, v1, :cond_9

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->pop()V

    goto :goto_4

    :cond_9
    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->pop2()V

    :cond_a
    :goto_4
    iget p3, p0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceStart:I

    invoke-virtual {p2, v0, p3}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->recordPositionsFrom(II)V

    iget-object p3, p0, Lorg/eclipse/jdt/internal/compiler/ast/QualifiedAllocationExpression;->anonymousType:Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;

    if-eqz p3, :cond_b

    invoke-virtual {p3, p1, p2}, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->generateCode(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;)V

    :cond_b
    return-void

    :cond_c
    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->aconst_null()V

    add-int/lit8 v4, v4, 0x1

    goto :goto_2
.end method

.method public isSuperAccess()Z
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/QualifiedAllocationExpression;->anonymousType:Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public manageEnclosingInstanceAccessIfNecessary(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;)V
    .locals 3

    iget p2, p2, Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;->tagBits:I

    const/4 v0, 0x1

    and-int/2addr p2, v0

    if-nez p2, :cond_4

    iget-object p2, p0, Lorg/eclipse/jdt/internal/compiler/ast/AllocationExpression;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    iget-object p2, p2, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->declaringClass:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->erasure()Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object p2

    check-cast p2, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isNestedType()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->enclosingSourceType()Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;

    move-result-object v1

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isLocalType()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->isLambdaSubscope()Z

    move-result v1

    if-eqz v1, :cond_4

    :cond_0
    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isLocalType()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    check-cast p2, Lorg/eclipse/jdt/internal/compiler/lookup/LocalTypeBinding;

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/ast/QualifiedAllocationExpression;->enclosingInstance:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    move v0, v2

    :goto_0
    invoke-virtual {p2, p1, v0}, Lorg/eclipse/jdt/internal/compiler/lookup/LocalTypeBinding;->addInnerEmulationDependent(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;Z)V

    goto :goto_2

    :cond_2
    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/ast/QualifiedAllocationExpression;->enclosingInstance:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    if-eqz v1, :cond_3

    goto :goto_1

    :cond_3
    move v0, v2

    :goto_1
    invoke-virtual {p1, p2, v0}, Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;->propagateInnerEmulation(Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;Z)V

    :cond_4
    :goto_2
    return-void
.end method

.method public printExpression(ILjava/lang/StringBuffer;)Ljava/lang/StringBuffer;
    .locals 3

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/QualifiedAllocationExpression;->enclosingInstance:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0, v1, p2}, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->printExpression(ILjava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    move-result-object v0

    const/16 v2, 0x2e

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_0
    invoke-super {p0, v1, p2}, Lorg/eclipse/jdt/internal/compiler/ast/AllocationExpression;->printExpression(ILjava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/QualifiedAllocationExpression;->anonymousType:Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1, p2}, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->print(ILjava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    :cond_1
    return-object p2
.end method

.method public resolveType(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;
    .locals 8

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/QualifiedAllocationExpression;->anonymousType:Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/QualifiedAllocationExpression;->enclosingInstance:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Lorg/eclipse/jdt/internal/compiler/ast/AllocationExpression;->resolveType(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/compiler/ast/QualifiedAllocationExpression;->resolveTypeForQualifiedAllocationExpression(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isPolyType()Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/ast/AllocationExpression;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    if-eqz v1, :cond_3

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->compilerOptions()Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;

    move-result-object v1

    iget-boolean v2, v1, Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;->isAnnotationBasedNullAnalysisEnabled:Z

    const-wide/32 v3, 0x340000

    if-eqz v2, :cond_2

    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/ast/AllocationExpression;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    invoke-static {v2, p1}, Lorg/eclipse/jdt/internal/compiler/lookup/ImplicitNullAnnotationVerifier;->ensureNullnessIsKnown(Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;Lorg/eclipse/jdt/internal/compiler/lookup/Scope;)V

    iget-wide v5, v1, Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;->sourceLevel:J

    cmp-long v2, v5, v3

    if-ltz v2, :cond_2

    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/ast/AllocationExpression;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    instance-of v5, v2, Lorg/eclipse/jdt/internal/compiler/lookup/ParameterizedGenericMethodBinding;

    if-eqz v5, :cond_2

    iget-object v5, p0, Lorg/eclipse/jdt/internal/compiler/ast/AllocationExpression;->typeArguments:[Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    if-eqz v5, :cond_2

    invoke-virtual {v2}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->original()Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    move-result-object v2

    invoke-virtual {v2}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->typeVariables()[Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;

    move-result-object v2

    const/4 v5, 0x0

    :goto_0
    iget-object v6, p0, Lorg/eclipse/jdt/internal/compiler/ast/AllocationExpression;->typeArguments:[Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    array-length v7, v6

    if-lt v5, v7, :cond_1

    goto :goto_1

    :cond_1
    aget-object v6, v6, v5

    iget-object v7, p0, Lorg/eclipse/jdt/internal/compiler/ast/AllocationExpression;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    check-cast v7, Lorg/eclipse/jdt/internal/compiler/lookup/ParameterizedGenericMethodBinding;

    invoke-virtual {v6, p1, v7, v2, v5}, Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;->checkNullConstraints(Lorg/eclipse/jdt/internal/compiler/lookup/Scope;Lorg/eclipse/jdt/internal/compiler/lookup/Substitution;[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;I)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    iget-wide v1, v1, Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;->sourceLevel:J

    cmp-long v1, v1, v3

    if-ltz v1, :cond_3

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/ast/AllocationExpression;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->getTypeAnnotations()[Lorg/eclipse/jdt/internal/compiler/lookup/AnnotationBinding;

    move-result-object v1

    sget-object v2, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->NO_ANNOTATIONS:[Lorg/eclipse/jdt/internal/compiler/lookup/AnnotationBinding;

    if-eq v1, v2, :cond_3

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->environment()Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    move-result-object p1

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->resolvedType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/ast/AllocationExpression;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    invoke-virtual {v2}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->getTypeAnnotations()[Lorg/eclipse/jdt/internal/compiler/lookup/AnnotationBinding;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->createAnnotatedType(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;[Lorg/eclipse/jdt/internal/compiler/lookup/AnnotationBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object p1

    iput-object p1, p0, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->resolvedType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    :cond_3
    return-object v0
.end method

.method public traverse(Lorg/eclipse/jdt/internal/compiler/ASTVisitor;Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;)V
    .locals 4

    invoke-virtual {p1, p0, p2}, Lorg/eclipse/jdt/internal/compiler/ASTVisitor;->visit(Lorg/eclipse/jdt/internal/compiler/ast/QualifiedAllocationExpression;Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/QualifiedAllocationExpression;->enclosingInstance:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->traverse(Lorg/eclipse/jdt/internal/compiler/ASTVisitor;Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;)V

    :cond_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/AllocationExpression;->typeArguments:[Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    array-length v0, v0

    move v2, v1

    :goto_0
    if-lt v2, v0, :cond_1

    goto :goto_1

    :cond_1
    iget-object v3, p0, Lorg/eclipse/jdt/internal/compiler/ast/AllocationExpression;->typeArguments:[Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    aget-object v3, v3, v2

    invoke-virtual {v3, p1, p2}, Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;->traverse(Lorg/eclipse/jdt/internal/compiler/ASTVisitor;Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/AllocationExpression;->type:Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    if-eqz v0, :cond_3

    invoke-virtual {v0, p1, p2}, Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;->traverse(Lorg/eclipse/jdt/internal/compiler/ASTVisitor;Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;)V

    :cond_3
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/AllocationExpression;->arguments:[Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    if-eqz v0, :cond_5

    array-length v0, v0

    :goto_2
    if-lt v1, v0, :cond_4

    goto :goto_3

    :cond_4
    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/ast/AllocationExpression;->arguments:[Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    aget-object v2, v2, v1

    invoke-virtual {v2, p1, p2}, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->traverse(Lorg/eclipse/jdt/internal/compiler/ASTVisitor;Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_5
    :goto_3
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/QualifiedAllocationExpression;->anonymousType:Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;

    if-eqz v0, :cond_6

    invoke-virtual {v0, p1, p2}, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->traverse(Lorg/eclipse/jdt/internal/compiler/ASTVisitor;Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;)V

    :cond_6
    invoke-virtual {p1, p0, p2}, Lorg/eclipse/jdt/internal/compiler/ASTVisitor;->endVisit(Lorg/eclipse/jdt/internal/compiler/ast/QualifiedAllocationExpression;Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;)V

    return-void
.end method
