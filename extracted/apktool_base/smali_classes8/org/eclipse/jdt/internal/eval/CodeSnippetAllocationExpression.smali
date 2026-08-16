.class public Lorg/eclipse/jdt/internal/eval/CodeSnippetAllocationExpression;
.super Lorg/eclipse/jdt/internal/compiler/ast/AllocationExpression;
.source "SourceFile"

# interfaces
.implements Lorg/eclipse/jdt/internal/compiler/lookup/ProblemReasons;
.implements Lorg/eclipse/jdt/internal/eval/EvaluationConstants;


# instance fields
.field delegateThis:Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;

.field evaluationContext:Lorg/eclipse/jdt/internal/eval/EvaluationContext;


# direct methods
.method public constructor <init>(Lorg/eclipse/jdt/internal/eval/EvaluationContext;)V
    .locals 0

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/compiler/ast/AllocationExpression;-><init>()V

    iput-object p1, p0, Lorg/eclipse/jdt/internal/eval/CodeSnippetAllocationExpression;->evaluationContext:Lorg/eclipse/jdt/internal/eval/EvaluationContext;

    return-void
.end method


# virtual methods
.method public generateCode(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;Z)V
    .locals 7

    iget v0, p2, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->position:I

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/ast/AllocationExpression;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->original()Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    move-result-object v1

    iget-object v2, v1, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->declaringClass:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    invoke-virtual {v1, v2, p0, p1}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->canBeSeenBy(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/InvocationSite;Lorg/eclipse/jdt/internal/compiler/lookup/Scope;)Z

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v3, :cond_5

    iget-object v3, p0, Lorg/eclipse/jdt/internal/compiler/ast/AllocationExpression;->type:Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    invoke-virtual {p2, v3, v2}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->new_(Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)V

    if-eqz p3, :cond_0

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->dup()V

    :cond_0
    iget-object p3, p0, Lorg/eclipse/jdt/internal/compiler/ast/AllocationExpression;->type:Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    iget p3, p3, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceStart:I

    invoke-virtual {p2, v0, p3}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->recordPositionsFrom(II)V

    invoke-virtual {v2}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isNestedType()Z

    move-result p3

    if-eqz p3, :cond_1

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/ast/AllocationExpression;->enclosingInstance()Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    move-result-object p3

    invoke-virtual {p2, p1, v2, p3, p0}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->generateSyntheticEnclosingInstanceValues(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;Lorg/eclipse/jdt/internal/compiler/ast/Expression;Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;)V

    :cond_1
    iget-object p3, p0, Lorg/eclipse/jdt/internal/compiler/ast/AllocationExpression;->arguments:[Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    if-eqz p3, :cond_3

    array-length p3, p3

    :goto_0
    if-lt v4, p3, :cond_2

    goto :goto_1

    :cond_2
    iget-object v3, p0, Lorg/eclipse/jdt/internal/compiler/ast/AllocationExpression;->arguments:[Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    aget-object v3, v3, v4

    invoke-virtual {v3, p1, p2, v5}, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->generateCode(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;Z)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    invoke-virtual {v2}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isNestedType()Z

    move-result p3

    if-eqz p3, :cond_4

    invoke-virtual {p2, p1, v2, p0}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->generateSyntheticOuterArgumentValues(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;)V

    :cond_4
    const/4 p1, 0x0

    iget-object p3, p0, Lorg/eclipse/jdt/internal/compiler/ast/AllocationExpression;->typeArguments:[Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    const/16 v2, -0x49

    invoke-virtual {p2, v2, v1, p1, p3}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->invoke(BLorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;[Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;)V

    goto :goto_4

    :cond_5
    invoke-virtual {p2, p1, v1}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->generateEmulationForConstructor(Lorg/eclipse/jdt/internal/compiler/lookup/Scope;Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;)V

    iget-object p3, p0, Lorg/eclipse/jdt/internal/compiler/ast/AllocationExpression;->arguments:[Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    const/4 v3, 0x3

    if-eqz p3, :cond_9

    array-length p3, p3

    invoke-virtual {p2, p3}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->generateInlinedValue(I)V

    sget-object v6, Lorg/eclipse/jdt/internal/compiler/lookup/TypeConstants;->JAVA_LANG_OBJECT:[[C

    invoke-virtual {p1, v6, v3}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->getType([[CI)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v3

    invoke-virtual {p1, v3, v5}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->createArrayType(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;I)Lorg/eclipse/jdt/internal/compiler/lookup/ArrayBinding;

    move-result-object v3

    invoke-virtual {p2, v3}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->newArray(Lorg/eclipse/jdt/internal/compiler/lookup/ArrayBinding;)V

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->dup()V

    :goto_2
    if-lt v4, p3, :cond_6

    goto :goto_3

    :cond_6
    invoke-virtual {p2, v4}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->generateInlinedValue(I)V

    iget-object v3, p0, Lorg/eclipse/jdt/internal/compiler/ast/AllocationExpression;->arguments:[Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    aget-object v3, v3, v4

    invoke-virtual {v3, p1, p2, v5}, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->generateCode(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;Z)V

    iget-object v3, v1, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->parameters:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    aget-object v3, v3, v4

    invoke-virtual {v3}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isBaseType()Z

    move-result v6

    if-eqz v6, :cond_7

    sget-object v6, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->NULL:Lorg/eclipse/jdt/internal/compiler/lookup/NullTypeBinding;

    if-eq v3, v6, :cond_7

    iget-object v3, v1, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->parameters:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    aget-object v3, v3, v4

    iget v3, v3, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->id:I

    invoke-virtual {p2, v3}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->generateBoxingConversion(I)V

    :cond_7
    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->aastore()V

    add-int/lit8 v3, p3, -0x1

    if-ge v4, v3, :cond_8

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->dup()V

    :cond_8
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_9
    invoke-virtual {p2, v4}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->generateInlinedValue(I)V

    sget-object p3, Lorg/eclipse/jdt/internal/compiler/lookup/TypeConstants;->JAVA_LANG_OBJECT:[[C

    invoke-virtual {p1, p3, v3}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->getType([[CI)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object p3

    invoke-virtual {p1, p3, v5}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->createArrayType(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;I)Lorg/eclipse/jdt/internal/compiler/lookup/ArrayBinding;

    move-result-object p1

    invoke-virtual {p2, p1}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->newArray(Lorg/eclipse/jdt/internal/compiler/lookup/ArrayBinding;)V

    :goto_3
    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->invokeJavaLangReflectConstructorNewInstance()V

    invoke-virtual {p2, v2}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->checkcast(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)V

    :goto_4
    iget p1, p0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceStart:I

    invoke-virtual {p2, v0, p1}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->recordPositionsFrom(II)V

    return-void
.end method

.method public manageEnclosingInstanceAccessIfNecessary(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;)V
    .locals 0

    return-void
.end method

.method public manageSyntheticAccessIfNecessary(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;)V
    .locals 0

    return-void
.end method

.method public resolveType(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;
    .locals 13

    sget-object v0, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->NotAConstant:Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    iput-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->constant:Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/AllocationExpression;->type:Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;->resolveType(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;Z)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v0

    iput-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->resolvedType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/ast/AllocationExpression;->type:Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    instance-of v2, v2, Lorg/eclipse/jdt/internal/compiler/ast/ParameterizedQualifiedTypeReference;

    const/4 v3, 0x2

    if-eqz v2, :cond_5

    check-cast v0, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    if-nez v0, :cond_0

    return-object v0

    :cond_0
    iget v2, v0, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->modifiers:I

    and-int/lit8 v2, v2, 0x8

    if-eqz v2, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isRawType()Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->enclosingType()Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/AllocationExpression;->type:Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    move-object v2, v0

    check-cast v2, Lorg/eclipse/jdt/internal/compiler/ast/ParameterizedQualifiedTypeReference;

    iget-object v0, v2, Lorg/eclipse/jdt/internal/compiler/ast/ParameterizedQualifiedTypeReference;->typeArguments:[[Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    array-length v0, v0

    sub-int/2addr v0, v3

    :goto_0
    if-gez v0, :cond_3

    goto :goto_1

    :cond_3
    iget-object v4, v2, Lorg/eclipse/jdt/internal/compiler/ast/ParameterizedQualifiedTypeReference;->typeArguments:[[Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    aget-object v4, v4, v0

    if-eqz v4, :cond_4

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object v0

    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/ast/AllocationExpression;->type:Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    iget-object v4, p0, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->resolvedType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-virtual {v0, v2, v4}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->illegalQualifiedParameterizedTypeAllocation(Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)V

    goto :goto_1

    :cond_4
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_5
    :goto_1
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/AllocationExpression;->type:Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    const/4 v2, 0x0

    if-eqz v0, :cond_6

    iget v0, v0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->bits:I

    const/high16 v4, 0x80000

    and-int/2addr v0, v4

    if-eqz v0, :cond_6

    move v0, v1

    goto :goto_2

    :cond_6
    move v0, v2

    :goto_2
    iget-object v4, p0, Lorg/eclipse/jdt/internal/compiler/ast/AllocationExpression;->typeArguments:[Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    const/4 v5, 0x0

    if-eqz v4, :cond_e

    array-length v4, v4

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->compilerOptions()Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;

    move-result-object v6

    iget-wide v6, v6, Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;->sourceLevel:J

    const-wide/32 v8, 0x310000

    cmp-long v6, v6, v8

    if-gez v6, :cond_7

    move v6, v1

    goto :goto_3

    :cond_7
    move v6, v2

    :goto_3
    iput-boolean v6, p0, Lorg/eclipse/jdt/internal/compiler/ast/AllocationExpression;->argumentsHaveErrors:Z

    new-array v6, v4, [Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    iput-object v6, p0, Lorg/eclipse/jdt/internal/compiler/ast/AllocationExpression;->genericTypeArguments:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move v6, v2

    :goto_4
    if-lt v6, v4, :cond_b

    if-eqz v0, :cond_8

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object p1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/AllocationExpression;->typeArguments:[Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    invoke-virtual {p1, v0}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->diamondNotWithExplicitTypeArguments([Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;)V

    return-object v5

    :cond_8
    iget-boolean v4, p0, Lorg/eclipse/jdt/internal/compiler/ast/AllocationExpression;->argumentsHaveErrors:Z

    if-eqz v4, :cond_e

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/AllocationExpression;->arguments:[Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    if-eqz v0, :cond_a

    array-length v0, v0

    :goto_5
    if-lt v2, v0, :cond_9

    goto :goto_6

    :cond_9
    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/ast/AllocationExpression;->arguments:[Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    aget-object v1, v1, v2

    invoke-virtual {v1, p1}, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->resolveType(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    :cond_a
    :goto_6
    return-object v5

    :cond_b
    iget-object v7, p0, Lorg/eclipse/jdt/internal/compiler/ast/AllocationExpression;->typeArguments:[Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    aget-object v7, v7, v6

    iget-object v8, p0, Lorg/eclipse/jdt/internal/compiler/ast/AllocationExpression;->genericTypeArguments:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-virtual {v7, p1, v1}, Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;->resolveType(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;Z)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v9

    aput-object v9, v8, v6

    if-nez v9, :cond_c

    iput-boolean v1, p0, Lorg/eclipse/jdt/internal/compiler/ast/AllocationExpression;->argumentsHaveErrors:Z

    :cond_c
    iget-boolean v8, p0, Lorg/eclipse/jdt/internal/compiler/ast/AllocationExpression;->argumentsHaveErrors:Z

    if-eqz v8, :cond_d

    instance-of v8, v7, Lorg/eclipse/jdt/internal/compiler/ast/Wildcard;

    if-eqz v8, :cond_d

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object v8

    invoke-virtual {v8, v7}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->illegalUsageOfWildcard(Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;)V

    :cond_d
    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    :cond_e
    sget-object v4, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->NO_PARAMETERS:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    iput-object v4, p0, Lorg/eclipse/jdt/internal/compiler/ast/AllocationExpression;->argumentTypes:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    iget-object v4, p0, Lorg/eclipse/jdt/internal/compiler/ast/AllocationExpression;->arguments:[Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    if-eqz v4, :cond_12

    iput-boolean v2, p0, Lorg/eclipse/jdt/internal/compiler/ast/AllocationExpression;->argumentsHaveErrors:Z

    array-length v4, v4

    new-array v6, v4, [Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    iput-object v6, p0, Lorg/eclipse/jdt/internal/compiler/ast/AllocationExpression;->argumentTypes:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move v6, v2

    :goto_7
    if-lt v6, v4, :cond_f

    iget-boolean v4, p0, Lorg/eclipse/jdt/internal/compiler/ast/AllocationExpression;->argumentsHaveErrors:Z

    if-eqz v4, :cond_12

    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->resolvedType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    return-object p1

    :cond_f
    iget-object v7, p0, Lorg/eclipse/jdt/internal/compiler/ast/AllocationExpression;->arguments:[Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    aget-object v7, v7, v6

    instance-of v8, v7, Lorg/eclipse/jdt/internal/compiler/ast/CastExpression;

    if-eqz v8, :cond_10

    iget v8, v7, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->bits:I

    or-int/lit8 v8, v8, 0x20

    iput v8, v7, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->bits:I

    iput-boolean v1, p0, Lorg/eclipse/jdt/internal/compiler/ast/AllocationExpression;->argsContainCast:Z

    :cond_10
    sget-object v8, Lorg/eclipse/jdt/internal/compiler/ast/ExpressionContext;->INVOCATION_CONTEXT:Lorg/eclipse/jdt/internal/compiler/ast/ExpressionContext;

    invoke-virtual {v7, v8}, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->setExpressionContext(Lorg/eclipse/jdt/internal/compiler/ast/ExpressionContext;)V

    iget-object v8, p0, Lorg/eclipse/jdt/internal/compiler/ast/AllocationExpression;->argumentTypes:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-virtual {v7, p1}, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->resolveType(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v7

    aput-object v7, v8, v6

    if-nez v7, :cond_11

    iput-boolean v1, p0, Lorg/eclipse/jdt/internal/compiler/ast/AllocationExpression;->argumentsHaveErrors:Z

    :cond_11
    add-int/lit8 v6, v6, 0x1

    goto :goto_7

    :cond_12
    iget-object v4, p0, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->resolvedType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    if-nez v4, :cond_13

    return-object v5

    :cond_13
    invoke-virtual {v4}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->canBeInstantiated()Z

    move-result v4

    if-nez v4, :cond_14

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object p1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/AllocationExpression;->type:Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->resolvedType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-virtual {p1, v0, v1}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->cannotInstantiate(Lorg/eclipse/jdt/internal/compiler/ast/Expression;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)V

    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->resolvedType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    return-object p1

    :cond_14
    if-eqz v0, :cond_16

    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/internal/compiler/ast/AllocationExpression;->inferElidedTypes(Lorg/eclipse/jdt/internal/compiler/lookup/Scope;)[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v0

    if-nez v0, :cond_15

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object p1

    invoke-virtual {p1, p0}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->cannotInferElidedTypes(Lorg/eclipse/jdt/internal/compiler/ast/AllocationExpression;)V

    iput-object v5, p0, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->resolvedType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    return-object v5

    :cond_15
    iget-object v4, p0, Lorg/eclipse/jdt/internal/compiler/ast/AllocationExpression;->type:Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->environment()Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    move-result-object v6

    iget-object v7, p0, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->resolvedType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    check-cast v7, Lorg/eclipse/jdt/internal/compiler/lookup/ParameterizedTypeBinding;

    invoke-virtual {v7}, Lorg/eclipse/jdt/internal/compiler/lookup/ParameterizedTypeBinding;->genericType()Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move-result-object v7

    iget-object v8, p0, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->resolvedType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    check-cast v8, Lorg/eclipse/jdt/internal/compiler/lookup/ParameterizedTypeBinding;

    invoke-virtual {v8}, Lorg/eclipse/jdt/internal/compiler/lookup/ParameterizedTypeBinding;->enclosingType()Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move-result-object v8

    invoke-virtual {v6, v7, v0, v8}, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->createParameterizedType(Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/ParameterizedTypeBinding;

    move-result-object v0

    iput-object v0, v4, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->resolvedType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    iput-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->resolvedType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    :cond_16
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->resolvedType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    check-cast v0, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    iget-object v4, p0, Lorg/eclipse/jdt/internal/compiler/ast/AllocationExpression;->argumentTypes:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-virtual {p0, p1, p0, v0, v4}, Lorg/eclipse/jdt/internal/compiler/ast/Statement;->findConstructorBinding(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;Lorg/eclipse/jdt/internal/compiler/ast/Invocation;Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    move-result-object v4

    iput-object v4, p0, Lorg/eclipse/jdt/internal/compiler/ast/AllocationExpression;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    invoke-virtual {v4}, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->isValidBinding()Z

    move-result v4

    if-nez v4, :cond_23

    iget-object v4, p0, Lorg/eclipse/jdt/internal/compiler/ast/AllocationExpression;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    instance-of v6, v4, Lorg/eclipse/jdt/internal/compiler/lookup/ProblemMethodBinding;

    if-eqz v6, :cond_20

    check-cast v4, Lorg/eclipse/jdt/internal/compiler/lookup/ProblemMethodBinding;

    invoke-virtual {v4}, Lorg/eclipse/jdt/internal/compiler/lookup/ProblemMethodBinding;->problemId()I

    move-result v4

    if-ne v4, v3, :cond_20

    iget-object v3, p0, Lorg/eclipse/jdt/internal/eval/CodeSnippetAllocationExpression;->evaluationContext:Lorg/eclipse/jdt/internal/eval/EvaluationContext;

    iget-object v3, v3, Lorg/eclipse/jdt/internal/eval/EvaluationContext;->declaringTypeName:[C

    if-eqz v3, :cond_1d

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->enclosingSourceType()Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;

    move-result-object v3

    sget-object v4, Lorg/eclipse/jdt/internal/eval/EvaluationConstants;->DELEGATE_THIS:[C

    invoke-virtual {p1, v3, v4, p0}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->getField(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;[CLorg/eclipse/jdt/internal/compiler/lookup/InvocationSite;)Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;

    move-result-object v3

    iput-object v3, p0, Lorg/eclipse/jdt/internal/eval/CodeSnippetAllocationExpression;->delegateThis:Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;

    if-nez v3, :cond_19

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/ast/AllocationExpression;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    iget-object v2, v1, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->declaringClass:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    if-nez v2, :cond_17

    iput-object v0, v1, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->declaringClass:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    :cond_17
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/AllocationExpression;->type:Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    if-eqz v0, :cond_18

    iget-object v0, v0, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->resolvedType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->isValidBinding()Z

    move-result v0

    if-nez v0, :cond_18

    return-object v5

    :cond_18
    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object p1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/AllocationExpression;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    invoke-virtual {p1, p0, v0}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->invalidConstructor(Lorg/eclipse/jdt/internal/compiler/ast/Statement;Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;)V

    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->resolvedType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    return-object p1

    :cond_19
    new-instance v3, Lorg/eclipse/jdt/internal/eval/CodeSnippetScope;

    invoke-direct {v3, p1}, Lorg/eclipse/jdt/internal/eval/CodeSnippetScope;-><init>(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;)V

    iget-object v4, p0, Lorg/eclipse/jdt/internal/eval/CodeSnippetAllocationExpression;->delegateThis:Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;

    iget-object v4, v4, Lorg/eclipse/jdt/internal/compiler/lookup/VariableBinding;->type:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    check-cast v4, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    iget-object v6, p0, Lorg/eclipse/jdt/internal/compiler/ast/AllocationExpression;->argumentTypes:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-virtual {v3, v4, v6, p0}, Lorg/eclipse/jdt/internal/eval/CodeSnippetScope;->getConstructor(Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/InvocationSite;)Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    move-result-object v3

    invoke-virtual {v3}, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->isValidBinding()Z

    move-result v4

    if-nez v4, :cond_1c

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/ast/AllocationExpression;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    iget-object v2, v1, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->declaringClass:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    if-nez v2, :cond_1a

    iput-object v0, v1, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->declaringClass:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    :cond_1a
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/AllocationExpression;->type:Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    if-eqz v0, :cond_1b

    iget-object v0, v0, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->resolvedType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->isValidBinding()Z

    move-result v0

    if-nez v0, :cond_1b

    return-object v5

    :cond_1b
    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object p1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/AllocationExpression;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    invoke-virtual {p1, p0, v0}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->invalidConstructor(Lorg/eclipse/jdt/internal/compiler/ast/Statement;Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;)V

    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->resolvedType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    return-object p1

    :cond_1c
    iput-object v3, p0, Lorg/eclipse/jdt/internal/compiler/ast/AllocationExpression;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    goto :goto_8

    :cond_1d
    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/ast/AllocationExpression;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    iget-object v2, v1, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->declaringClass:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    if-nez v2, :cond_1e

    iput-object v0, v1, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->declaringClass:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    :cond_1e
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/AllocationExpression;->type:Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    if-eqz v0, :cond_1f

    iget-object v0, v0, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->resolvedType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->isValidBinding()Z

    move-result v0

    if-nez v0, :cond_1f

    return-object v5

    :cond_1f
    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object p1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/AllocationExpression;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    invoke-virtual {p1, p0, v0}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->invalidConstructor(Lorg/eclipse/jdt/internal/compiler/ast/Statement;Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;)V

    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->resolvedType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    return-object p1

    :cond_20
    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/ast/AllocationExpression;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    iget-object v2, v1, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->declaringClass:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    if-nez v2, :cond_21

    iput-object v0, v1, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->declaringClass:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    :cond_21
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/AllocationExpression;->type:Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    if-eqz v0, :cond_22

    iget-object v0, v0, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->resolvedType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->isValidBinding()Z

    move-result v0

    if-nez v0, :cond_22

    return-object v5

    :cond_22
    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object p1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/AllocationExpression;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    invoke-virtual {p1, p0, v0}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->invalidConstructor(Lorg/eclipse/jdt/internal/compiler/ast/Statement;Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;)V

    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->resolvedType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    return-object p1

    :cond_23
    :goto_8
    iget-object v3, p0, Lorg/eclipse/jdt/internal/compiler/ast/AllocationExpression;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    invoke-virtual {p0, v3, p1, v1, p0}, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->isMethodUseDeprecated(Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;Lorg/eclipse/jdt/internal/compiler/lookup/Scope;ZLorg/eclipse/jdt/internal/compiler/lookup/InvocationSite;)Z

    move-result v1

    if-eqz v1, :cond_24

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object v1

    iget-object v3, p0, Lorg/eclipse/jdt/internal/compiler/ast/AllocationExpression;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    invoke-virtual {v1, v3, p0}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->deprecatedMethod(Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;)V

    :cond_24
    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/ast/AllocationExpression;->arguments:[Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    if-eqz v1, :cond_27

    :goto_9
    iget-object v10, p0, Lorg/eclipse/jdt/internal/compiler/ast/AllocationExpression;->arguments:[Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    array-length v1, v10

    if-lt v2, v1, :cond_25

    iget-boolean v1, p0, Lorg/eclipse/jdt/internal/compiler/ast/AllocationExpression;->argsContainCast:Z

    if-eqz v1, :cond_27

    iget-object v9, p0, Lorg/eclipse/jdt/internal/compiler/ast/AllocationExpression;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    iget-object v11, p0, Lorg/eclipse/jdt/internal/compiler/ast/AllocationExpression;->argumentTypes:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    const/4 v7, 0x0

    move-object v6, p1

    move-object v8, v0

    move-object v12, p0

    invoke-static/range {v6 .. v12}, Lorg/eclipse/jdt/internal/compiler/ast/CastExpression;->checkNeedForArgumentCasts(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;Lorg/eclipse/jdt/internal/compiler/ast/Expression;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;[Lorg/eclipse/jdt/internal/compiler/ast/Expression;[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/InvocationSite;)V

    goto :goto_a

    :cond_25
    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/ast/AllocationExpression;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    iget-object v1, v1, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->parameters:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    aget-object v1, v1, v2

    iget-object v3, p0, Lorg/eclipse/jdt/internal/compiler/ast/AllocationExpression;->argumentTypes:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    aget-object v3, v3, v2

    aget-object v4, v10, v2

    invoke-virtual {v4, p1, v1, v3}, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->computeConversion(Lorg/eclipse/jdt/internal/compiler/lookup/Scope;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)V

    invoke-virtual {v3, v1}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->needsUncheckedConversion(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Z

    move-result v4

    if-eqz v4, :cond_26

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object v4

    iget-object v5, p0, Lorg/eclipse/jdt/internal/compiler/ast/AllocationExpression;->arguments:[Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    aget-object v5, v5, v2

    invoke-virtual {v4, v5, v3, v1}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->unsafeTypeConversion(Lorg/eclipse/jdt/internal/compiler/ast/Expression;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)V

    :cond_26
    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    :cond_27
    :goto_a
    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isRawType()Z

    move-result v1

    if-eqz v1, :cond_28

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/ast/AllocationExpression;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->hasSubstitutedParameters()Z

    move-result v1

    if-eqz v1, :cond_28

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object v1

    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/ast/AllocationExpression;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    invoke-virtual {v1, p0, v2}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->unsafeRawInvocation(Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;)V

    :cond_28
    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/ast/AllocationExpression;->typeArguments:[Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    if-eqz v1, :cond_29

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/ast/AllocationExpression;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->original()Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    move-result-object v1

    iget-object v1, v1, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->typeVariables:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;

    sget-object v2, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->NO_TYPE_VARIABLES:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;

    if-ne v1, v2, :cond_29

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object p1

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/ast/AllocationExpression;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/ast/AllocationExpression;->genericTypeArguments:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    iget-object v3, p0, Lorg/eclipse/jdt/internal/compiler/ast/AllocationExpression;->typeArguments:[Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    invoke-virtual {p1, v1, v2, v3}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->unnecessaryTypeArgumentsForMethodInvocation(Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;[Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;)V

    :cond_29
    return-object v0
.end method
