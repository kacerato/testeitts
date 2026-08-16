.class Lorg/eclipse/jdt/internal/compiler/lookup/ConstraintExpressionFormula;
.super Lorg/eclipse/jdt/internal/compiler/lookup/ConstraintFormula;
.source "SourceFile"


# instance fields
.field isSoft:Z

.field left:Lorg/eclipse/jdt/internal/compiler/ast/Expression;


# direct methods
.method public constructor <init>(Lorg/eclipse/jdt/internal/compiler/ast/Expression;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/ConstraintFormula;-><init>()V

    .line 2
    iput-object p1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ConstraintExpressionFormula;->left:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    .line 3
    iput-object p2, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ReductionResult;->right:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    .line 4
    iput p3, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ReductionResult;->relation:I

    return-void
.end method

.method public constructor <init>(Lorg/eclipse/jdt/internal/compiler/ast/Expression;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;IZ)V
    .locals 0

    .line 5
    invoke-direct {p0, p1, p2, p3}, Lorg/eclipse/jdt/internal/compiler/lookup/ConstraintExpressionFormula;-><init>(Lorg/eclipse/jdt/internal/compiler/ast/Expression;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;I)V

    .line 6
    iput-boolean p4, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ConstraintExpressionFormula;->isSoft:Z

    return-void
.end method

.method private canBePolyExpression(Lorg/eclipse/jdt/internal/compiler/ast/Expression;)Z
    .locals 3

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/ast/Statement;->getExpressionContext()Lorg/eclipse/jdt/internal/compiler/ast/ExpressionContext;

    move-result-object v0

    sget-object v1, Lorg/eclipse/jdt/internal/compiler/ast/ExpressionContext;->VANILLA_CONTEXT:Lorg/eclipse/jdt/internal/compiler/ast/ExpressionContext;

    if-ne v0, v1, :cond_0

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ConstraintExpressionFormula;->left:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    sget-object v2, Lorg/eclipse/jdt/internal/compiler/ast/ExpressionContext;->ASSIGNMENT_CONTEXT:Lorg/eclipse/jdt/internal/compiler/ast/ExpressionContext;

    invoke-virtual {v1, v2}, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->setExpressionContext(Lorg/eclipse/jdt/internal/compiler/ast/ExpressionContext;)V

    :cond_0
    :try_start_0
    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->isPolyExpression()Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p1, v0}, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->setExpressionContext(Lorg/eclipse/jdt/internal/compiler/ast/ExpressionContext;)V

    return v1

    :catchall_0
    move-exception v1

    invoke-virtual {p1, v0}, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->setExpressionContext(Lorg/eclipse/jdt/internal/compiler/ast/ExpressionContext;)V

    throw v1
.end method

.method private determineInferenceKind(Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/InferenceContext18;)I
    .locals 3

    if-eqz p3, :cond_0

    iget p1, p3, Lorg/eclipse/jdt/internal/compiler/lookup/InferenceContext18;->inferenceKind:I

    return p1

    :cond_0
    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->isVarargs()Z

    move-result p3

    const/4 v0, 0x1

    if-eqz p3, :cond_2

    iget-object p1, p1, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->parameters:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    array-length p3, p1

    array-length v1, p2

    const/4 v2, 0x3

    if-ge p3, v1, :cond_1

    return v2

    :cond_1
    if-ne p3, v1, :cond_2

    sub-int/2addr p3, v0

    aget-object p2, p2, p3

    aget-object p1, p1, p3

    invoke-virtual {p2, p1}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isCompatibleWith(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Z

    move-result p3

    if-nez p3, :cond_2

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isArrayType()Z

    move-result p3

    if-eqz p3, :cond_2

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->leafComponentType()Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object p1

    invoke-virtual {p2, p1}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isCompatibleWith(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Z

    move-result p1

    if-eqz p1, :cond_2

    return v2

    :cond_2
    return v0
.end method

.method public static findGroundTargetType(Lorg/eclipse/jdt/internal/compiler/lookup/InferenceContext18;Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;Lorg/eclipse/jdt/internal/compiler/ast/LambdaExpression;Lorg/eclipse/jdt/internal/compiler/lookup/ParameterizedTypeBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;
    .locals 2

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/ast/LambdaExpression;->argumentsTypeElided()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p2, p1, p3}, Lorg/eclipse/jdt/internal/compiler/ast/LambdaExpression;->findGroundTargetTypeForElidedLambda(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;Lorg/eclipse/jdt/internal/compiler/lookup/ParameterizedTypeBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-virtual {p0, p2}, Lorg/eclipse/jdt/internal/compiler/lookup/InferenceContext18;->enterLambda(Lorg/eclipse/jdt/internal/compiler/ast/LambdaExpression;)Lorg/eclipse/jdt/internal/compiler/lookup/InferenceContext18$SuspendedInferenceRecord;

    move-result-object v0

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p0, p2, p1, p3}, Lorg/eclipse/jdt/internal/compiler/lookup/InferenceContext18;->inferFunctionalInterfaceParameterization(Lorg/eclipse/jdt/internal/compiler/ast/LambdaExpression;Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;Lorg/eclipse/jdt/internal/compiler/lookup/ParameterizedTypeBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0, v0, v1}, Lorg/eclipse/jdt/internal/compiler/lookup/InferenceContext18;->resumeSuspendedInference(Lorg/eclipse/jdt/internal/compiler/lookup/InferenceContext18$SuspendedInferenceRecord;Lorg/eclipse/jdt/internal/compiler/lookup/InferenceContext18;)V

    return-object p1

    :catchall_0
    move-exception p1

    invoke-virtual {p0, v0, v1}, Lorg/eclipse/jdt/internal/compiler/lookup/InferenceContext18;->resumeSuspendedInference(Lorg/eclipse/jdt/internal/compiler/lookup/InferenceContext18$SuspendedInferenceRecord;Lorg/eclipse/jdt/internal/compiler/lookup/InferenceContext18;)V

    throw p1
.end method

.method private static getRealErasure(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;
    .locals 2

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->erasure()Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object p0

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->leafComponentType()Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v0

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isGenericType()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->convertToRawType(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Z)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v0

    :cond_0
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isArrayType()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->dimensions()I

    move-result p0

    invoke-virtual {p1, v0, p0}, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->createArrayType(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;I)Lorg/eclipse/jdt/internal/compiler/lookup/ArrayBinding;

    move-result-object p0

    return-object p0

    :cond_1
    return-object v0
.end method

.method public static inferInvocationApplicability(Lorg/eclipse/jdt/internal/compiler/lookup/InferenceContext18;Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;ZI)V
    .locals 4

    invoke-virtual {p1, p3}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->getAllTypeVariables(Z)[Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;

    move-result-object p2

    invoke-virtual {p0, p2}, Lorg/eclipse/jdt/internal/compiler/lookup/InferenceContext18;->createInitialBoundSet([Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;)[Lorg/eclipse/jdt/internal/compiler/lookup/InferenceVariable;

    move-result-object p3

    iget-object v0, p1, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->parameters:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    array-length v0, v0

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->isVarargs()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    sub-int/2addr v0, v2

    iget-object v1, p1, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->parameters:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    aget-object v0, v1, v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p1, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->parameters:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    const/4 v3, 0x3

    if-ne p4, v3, :cond_1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    invoke-virtual {p0, v1, v2, v0, p1}, Lorg/eclipse/jdt/internal/compiler/lookup/InferenceContext18;->createInitialConstraintsForParameters([Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;ZLorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;)V

    iget-object p1, p1, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->thrownExceptions:[Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    invoke-virtual {p0, p2, p3, p1}, Lorg/eclipse/jdt/internal/compiler/lookup/InferenceContext18;->addThrowsContraints([Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;[Lorg/eclipse/jdt/internal/compiler/lookup/InferenceVariable;[Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;)V

    return-void
.end method

.method public static inferPolyInvocationType(Lorg/eclipse/jdt/internal/compiler/lookup/InferenceContext18;Lorg/eclipse/jdt/internal/compiler/lookup/InvocationSite;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;)Z
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/internal/compiler/lookup/InferenceFailureException;
        }
    .end annotation

    invoke-interface {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/InvocationSite;->genericTypeArguments()[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v0

    const/4 v1, 0x1

    if-nez v0, :cond_d

    invoke-virtual {p3}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->isConstructor()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p3, p3, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->declaringClass:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    goto :goto_0

    :cond_0
    iget-object p3, p3, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->returnType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    :goto_0
    sget-object v0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->VOID:Lorg/eclipse/jdt/internal/compiler/lookup/VoidTypeBinding;

    if-eq p3, v0, :cond_c

    iget-boolean v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/InferenceContext18;->usesUncheckedConversion:Z

    if-eqz v0, :cond_1

    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/InferenceContext18;->environment:Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    invoke-static {p3, p1}, Lorg/eclipse/jdt/internal/compiler/lookup/ConstraintExpressionFormula;->getRealErasure(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object p1

    invoke-static {p1, p2, v1}, Lorg/eclipse/jdt/internal/compiler/lookup/ConstraintTypeFormula;->create(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;I)Lorg/eclipse/jdt/internal/compiler/lookup/ConstraintTypeFormula;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/internal/compiler/lookup/InferenceContext18;->reduceAndIncorporate(Lorg/eclipse/jdt/internal/compiler/lookup/ConstraintFormula;)Z

    move-result p0

    return p0

    :cond_1
    invoke-virtual {p0, p3}, Lorg/eclipse/jdt/internal/compiler/lookup/InferenceContext18;->substitute(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object p3

    invoke-static {p3}, Lorg/eclipse/jdt/internal/compiler/lookup/InferenceContext18;->parameterizedWithWildcard(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/ParameterizedTypeBinding;

    move-result-object v0

    const/4 v2, 0x0

    if-eqz v0, :cond_6

    iget-object v3, v0, Lorg/eclipse/jdt/internal/compiler/lookup/ParameterizedTypeBinding;->arguments:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    if-eqz v3, :cond_6

    invoke-virtual {p0, v3}, Lorg/eclipse/jdt/internal/compiler/lookup/InferenceContext18;->addTypeVariableSubstitutions([Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)[Lorg/eclipse/jdt/internal/compiler/lookup/InferenceVariable;

    move-result-object v4

    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/InferenceContext18;->environment:Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/ParameterizedTypeBinding;->genericType()Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move-result-object p3

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/ParameterizedTypeBinding;->enclosingType()Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move-result-object v5

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->getTypeAnnotations()[Lorg/eclipse/jdt/internal/compiler/lookup/AnnotationBinding;

    move-result-object v6

    invoke-virtual {p1, p3, v4, v5, v6}, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->createParameterizedType(Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;[Lorg/eclipse/jdt/internal/compiler/lookup/AnnotationBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/ParameterizedTypeBinding;

    move-result-object v5

    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/InferenceContext18;->currentBounds:Lorg/eclipse/jdt/internal/compiler/lookup/BoundSet;

    iget-object p1, p1, Lorg/eclipse/jdt/internal/compiler/lookup/BoundSet;->captures:Ljava/util/HashMap;

    invoke-virtual {p1, v5, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    array-length v0, v3

    :goto_1
    if-lt v2, v0, :cond_2

    invoke-static {v5, p2, v1}, Lorg/eclipse/jdt/internal/compiler/lookup/ConstraintTypeFormula;->create(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;I)Lorg/eclipse/jdt/internal/compiler/lookup/ConstraintTypeFormula;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/internal/compiler/lookup/InferenceContext18;->reduceAndIncorporate(Lorg/eclipse/jdt/internal/compiler/lookup/ConstraintFormula;)Z

    move-result p0

    return p0

    :cond_2
    aget-object p1, v3, v2

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isWildcard()Z

    move-result p1

    if-eqz p1, :cond_5

    aget-object p1, v3, v2

    check-cast p1, Lorg/eclipse/jdt/internal/compiler/lookup/WildcardBinding;

    iget p3, p1, Lorg/eclipse/jdt/internal/compiler/lookup/WildcardBinding;->boundKind:I

    const/4 v6, 0x2

    if-eq p3, v1, :cond_4

    if-eq p3, v6, :cond_3

    goto :goto_2

    :cond_3
    iget-object p3, p0, Lorg/eclipse/jdt/internal/compiler/lookup/InferenceContext18;->currentBounds:Lorg/eclipse/jdt/internal/compiler/lookup/BoundSet;

    new-instance v6, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBound;

    aget-object v7, v4, v2

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/WildcardBinding;->bound()Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object p1

    const/4 v8, 0x3

    invoke-direct {v6, v7, p1, v8}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBound;-><init>(Lorg/eclipse/jdt/internal/compiler/lookup/InferenceVariable;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;I)V

    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/InferenceContext18;->environment:Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    invoke-virtual {p3, v6, p1}, Lorg/eclipse/jdt/internal/compiler/lookup/BoundSet;->addBound(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBound;Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;)V

    goto :goto_2

    :cond_4
    iget-object p3, p0, Lorg/eclipse/jdt/internal/compiler/lookup/InferenceContext18;->currentBounds:Lorg/eclipse/jdt/internal/compiler/lookup/BoundSet;

    new-instance v7, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBound;

    aget-object v8, v4, v2

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/WildcardBinding;->bound()Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object p1

    invoke-direct {v7, v8, p1, v6}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBound;-><init>(Lorg/eclipse/jdt/internal/compiler/lookup/InferenceVariable;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;I)V

    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/InferenceContext18;->environment:Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    invoke-virtual {p3, v7, p1}, Lorg/eclipse/jdt/internal/compiler/lookup/BoundSet;->addBound(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBound;Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;)V

    :cond_5
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_6
    invoke-virtual {p3}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->leafComponentType()Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v0

    instance-of v0, v0, Lorg/eclipse/jdt/internal/compiler/lookup/InferenceVariable;

    if-eqz v0, :cond_b

    invoke-virtual {p3}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->leafComponentType()Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jdt/internal/compiler/lookup/InferenceVariable;

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->leafComponentType()Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v3

    iget-object v4, p0, Lorg/eclipse/jdt/internal/compiler/lookup/InferenceContext18;->currentBounds:Lorg/eclipse/jdt/internal/compiler/lookup/BoundSet;

    invoke-virtual {v4, v0, v3}, Lorg/eclipse/jdt/internal/compiler/lookup/BoundSet;->condition18_5_2_bullet_3_3_1(Lorg/eclipse/jdt/internal/compiler/lookup/InferenceVariable;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Z

    move-result v4

    if-eqz v4, :cond_7

    goto :goto_3

    :cond_7
    iget-object v4, p0, Lorg/eclipse/jdt/internal/compiler/lookup/InferenceContext18;->currentBounds:Lorg/eclipse/jdt/internal/compiler/lookup/BoundSet;

    invoke-virtual {v4, v0, v3, p0}, Lorg/eclipse/jdt/internal/compiler/lookup/BoundSet;->condition18_5_2_bullet_3_3_2(Lorg/eclipse/jdt/internal/compiler/lookup/InferenceVariable;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/InferenceContext18;)Z

    move-result v4

    if-eqz v4, :cond_8

    goto :goto_3

    :cond_8
    invoke-virtual {v3}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isPrimitiveType()Z

    move-result v3

    if-eqz v3, :cond_b

    iget-object v3, p0, Lorg/eclipse/jdt/internal/compiler/lookup/InferenceContext18;->currentBounds:Lorg/eclipse/jdt/internal/compiler/lookup/BoundSet;

    invoke-virtual {v3, v0}, Lorg/eclipse/jdt/internal/compiler/lookup/BoundSet;->findWrapperTypeBound(Lorg/eclipse/jdt/internal/compiler/lookup/InferenceVariable;)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v3

    if-eqz v3, :cond_b

    :goto_3
    filled-new-array {v0}, [Lorg/eclipse/jdt/internal/compiler/lookup/InferenceVariable;

    move-result-object v3

    invoke-virtual {p0, v3}, Lorg/eclipse/jdt/internal/compiler/lookup/InferenceContext18;->solve([Lorg/eclipse/jdt/internal/compiler/lookup/InferenceVariable;)Lorg/eclipse/jdt/internal/compiler/lookup/BoundSet;

    move-result-object v3

    if-nez v3, :cond_9

    return v2

    :cond_9
    const/4 v2, 0x0

    invoke-virtual {v3, v0, v2}, Lorg/eclipse/jdt/internal/compiler/lookup/BoundSet;->getInstantiation(Lorg/eclipse/jdt/internal/compiler/lookup/InferenceVariable;Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v0

    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/lookup/InferenceContext18;->scope:Lorg/eclipse/jdt/internal/compiler/lookup/Scope;

    invoke-interface {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/InvocationSite;->sourceStart()I

    move-result v3

    invoke-interface {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/InvocationSite;->sourceEnd()I

    move-result p1

    invoke-virtual {v0, v2, v3, p1}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->capture(Lorg/eclipse/jdt/internal/compiler/lookup/Scope;II)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object p1

    invoke-virtual {p3}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->dimensions()I

    move-result v0

    if-eqz v0, :cond_a

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/InferenceContext18;->environment:Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    invoke-virtual {p3}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->dimensions()I

    move-result p3

    invoke-virtual {v0, p1, p3}, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->createArrayType(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;I)Lorg/eclipse/jdt/internal/compiler/lookup/ArrayBinding;

    move-result-object p1

    :cond_a
    invoke-static {p1, p2, v1}, Lorg/eclipse/jdt/internal/compiler/lookup/ConstraintTypeFormula;->create(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;I)Lorg/eclipse/jdt/internal/compiler/lookup/ConstraintTypeFormula;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/internal/compiler/lookup/InferenceContext18;->reduceAndIncorporate(Lorg/eclipse/jdt/internal/compiler/lookup/ConstraintFormula;)Z

    move-result p0

    return p0

    :cond_b
    invoke-static {p3, p2, v1}, Lorg/eclipse/jdt/internal/compiler/lookup/ConstraintTypeFormula;->create(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;I)Lorg/eclipse/jdt/internal/compiler/lookup/ConstraintTypeFormula;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/internal/compiler/lookup/InferenceContext18;->reduceAndIncorporate(Lorg/eclipse/jdt/internal/compiler/lookup/ConstraintFormula;)Z

    move-result p0

    if-nez p0, :cond_d

    return v2

    :cond_c
    new-instance p0, Lorg/eclipse/jdt/internal/compiler/lookup/InferenceFailureException;

    const-string p1, "expression has no value"

    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/compiler/lookup/InferenceFailureException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_d
    return v1
.end method

.method private needsInference(Lorg/eclipse/jdt/internal/compiler/ast/ReferenceExpression;Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;)Z
    .locals 4

    iget-object v0, p1, Lorg/eclipse/jdt/internal/compiler/ast/ReferenceExpression;->typeArguments:[Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->isConstructor()Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    iget-object v0, p2, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->declaringClass:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->typeVariables()[Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;

    move-result-object v0

    sget-object v3, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->NO_TYPE_VARIABLES:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;

    if-eq v0, v3, :cond_1

    iget-object p1, p1, Lorg/eclipse/jdt/internal/compiler/ast/ReferenceExpression;->receiverType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isRawType()Z

    move-result p1

    if-eqz p1, :cond_1

    return v2

    :cond_1
    iget-object p1, p2, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->declaringClass:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    goto :goto_0

    :cond_2
    iget-object p1, p2, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->returnType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    :goto_0
    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->typeVariables()[Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;

    move-result-object v0

    sget-object v3, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->NO_TYPE_VARIABLES:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;

    if-eq v0, v3, :cond_3

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->typeVariables()[Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;

    move-result-object p2

    const/4 v0, -0x1

    invoke-virtual {p1, p2, v0}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->mentionsAny([Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;I)Z

    move-result p1

    if-eqz p1, :cond_3

    return v2

    :cond_3
    return v1
.end method

.method private reduceReferenceExpressionCompatibility(Lorg/eclipse/jdt/internal/compiler/ast/ReferenceExpression;Lorg/eclipse/jdt/internal/compiler/lookup/InferenceContext18;)Ljava/lang/Object;
    .locals 11

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ReductionResult;->right:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isProperType(Z)Z

    move-result v2

    if-nez v2, :cond_14

    iget-object v2, p2, Lorg/eclipse/jdt/internal/compiler/lookup/InferenceContext18;->scope:Lorg/eclipse/jdt/internal/compiler/lookup/Scope;

    invoke-virtual {v0, v2}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isFunctionalInterface(Lorg/eclipse/jdt/internal/compiler/lookup/Scope;)Z

    move-result v2

    if-nez v2, :cond_0

    sget-object p1, Lorg/eclipse/jdt/internal/compiler/lookup/ReductionResult;->FALSE:Lorg/eclipse/jdt/internal/compiler/lookup/ConstraintTypeFormula;

    return-object p1

    :cond_0
    iget-object v2, p2, Lorg/eclipse/jdt/internal/compiler/lookup/InferenceContext18;->scope:Lorg/eclipse/jdt/internal/compiler/lookup/Scope;

    invoke-virtual {v0, v2, v1}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->getSingleAbstractMethod(Lorg/eclipse/jdt/internal/compiler/lookup/Scope;Z)Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    move-result-object v2

    if-nez v2, :cond_1

    sget-object p1, Lorg/eclipse/jdt/internal/compiler/lookup/ReductionResult;->FALSE:Lorg/eclipse/jdt/internal/compiler/lookup/ConstraintTypeFormula;

    return-object p1

    :cond_1
    iget-object v3, p2, Lorg/eclipse/jdt/internal/compiler/lookup/InferenceContext18;->scope:Lorg/eclipse/jdt/internal/compiler/lookup/Scope;

    invoke-virtual {p1, v0, v3, p2}, Lorg/eclipse/jdt/internal/compiler/ast/ReferenceExpression;->resolveExpressionExpecting(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/Scope;Lorg/eclipse/jdt/internal/compiler/lookup/InferenceContext18;)Lorg/eclipse/jdt/internal/compiler/ast/ReferenceExpression;

    move-result-object p1

    const/4 v3, 0x0

    if-eqz p1, :cond_2

    iget-object v4, p1, Lorg/eclipse/jdt/internal/compiler/ast/FunctionalExpression;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    goto :goto_0

    :cond_2
    move-object v4, v3

    :goto_0
    if-nez v4, :cond_3

    sget-object p1, Lorg/eclipse/jdt/internal/compiler/lookup/ReductionResult;->FALSE:Lorg/eclipse/jdt/internal/compiler/lookup/ConstraintTypeFormula;

    return-object p1

    :cond_3
    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/ast/ReferenceExpression;->isExactMethodReference()Z

    move-result v5

    const/4 v6, 0x0

    if-eqz v5, :cond_9

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iget-object v7, v2, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->parameters:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    array-length v8, v7

    iget-object v9, v4, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->parameters:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    array-length v0, v9

    add-int/2addr v0, v1

    if-ne v8, v0, :cond_4

    aget-object v0, v7, v6

    iget-object v3, p1, Lorg/eclipse/jdt/internal/compiler/ast/ReferenceExpression;->lhs:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    iget-object v3, v3, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->resolvedType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-static {v0, v3, v1}, Lorg/eclipse/jdt/internal/compiler/lookup/ConstraintTypeFormula;->create(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;I)Lorg/eclipse/jdt/internal/compiler/lookup/ConstraintTypeFormula;

    move-result-object v0

    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v10, v1

    goto :goto_1

    :cond_4
    move v10, v6

    :goto_1
    move v0, v10

    :goto_2
    if-lt v0, v8, :cond_8

    iget-object v0, v2, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->returnType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    sget-object v2, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->VOID:Lorg/eclipse/jdt/internal/compiler/lookup/VoidTypeBinding;

    if-eq v0, v2, :cond_7

    invoke-virtual {v4}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->isConstructor()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/ast/ReferenceExpression;->isArrayConstructorReference()Z

    move-result v3

    if-nez v3, :cond_5

    iget-object v3, v4, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->declaringClass:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    goto :goto_3

    :cond_5
    iget-object v3, v4, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->returnType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    :goto_3
    if-ne v3, v2, :cond_6

    sget-object p1, Lorg/eclipse/jdt/internal/compiler/lookup/ReductionResult;->FALSE:Lorg/eclipse/jdt/internal/compiler/lookup/ConstraintTypeFormula;

    return-object p1

    :cond_6
    iget-object p2, p2, Lorg/eclipse/jdt/internal/compiler/lookup/InferenceContext18;->scope:Lorg/eclipse/jdt/internal/compiler/lookup/Scope;

    iget v2, p1, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceStart:I

    iget p1, p1, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceEnd:I

    invoke-virtual {v3, p2, v2, p1}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->capture(Lorg/eclipse/jdt/internal/compiler/lookup/Scope;II)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object p1

    invoke-static {p1, v0, v1}, Lorg/eclipse/jdt/internal/compiler/lookup/ConstraintTypeFormula;->create(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;I)Lorg/eclipse/jdt/internal/compiler/lookup/ConstraintTypeFormula;

    move-result-object p1

    invoke-interface {v5, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_7
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result p1

    new-array p1, p1, [Lorg/eclipse/jdt/internal/compiler/lookup/ConstraintFormula;

    invoke-interface {v5, p1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_8
    aget-object v3, v7, v0

    sub-int v6, v0, v10

    aget-object v6, v9, v6

    invoke-static {v3, v6, v1}, Lorg/eclipse/jdt/internal/compiler/lookup/ConstraintTypeFormula;->create(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;I)Lorg/eclipse/jdt/internal/compiler/lookup/ConstraintTypeFormula;

    move-result-object v3

    invoke-interface {v5, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_9
    iget-object v5, v2, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->parameters:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    array-length v5, v5

    :goto_4
    if-lt v6, v5, :cond_12

    invoke-virtual {v4}, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->isValidBinding()Z

    move-result v5

    if-nez v5, :cond_a

    sget-object p1, Lorg/eclipse/jdt/internal/compiler/lookup/ReductionResult;->FALSE:Lorg/eclipse/jdt/internal/compiler/lookup/ConstraintTypeFormula;

    return-object p1

    :cond_a
    invoke-virtual {v2}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->isConstructor()Z

    move-result v5

    if-eqz v5, :cond_b

    iget-object v5, v2, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->declaringClass:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    goto :goto_5

    :cond_b
    iget-object v5, v2, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->returnType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    :goto_5
    iget v6, v5, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->id:I

    const/4 v7, 0x6

    if-ne v6, v7, :cond_c

    sget-object p1, Lorg/eclipse/jdt/internal/compiler/lookup/ReductionResult;->TRUE:Lorg/eclipse/jdt/internal/compiler/lookup/ConstraintTypeFormula;

    return-object p1

    :cond_c
    invoke-virtual {v4}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->shallowOriginal()Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    move-result-object v6

    invoke-direct {p0, p1, v6}, Lorg/eclipse/jdt/internal/compiler/lookup/ConstraintExpressionFormula;->needsInference(Lorg/eclipse/jdt/internal/compiler/ast/ReferenceExpression;Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;)Z

    move-result v8

    if-eqz v8, :cond_f

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isParameterizedType()Z

    move-result v7

    if-eqz v7, :cond_d

    check-cast v0, Lorg/eclipse/jdt/internal/compiler/lookup/ParameterizedTypeBinding;

    iget-object v2, p2, Lorg/eclipse/jdt/internal/compiler/lookup/InferenceContext18;->scope:Lorg/eclipse/jdt/internal/compiler/lookup/Scope;

    iget v7, p1, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceStart:I

    iget v8, p1, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceEnd:I

    invoke-virtual {v0, v2, v1, v7, v8}, Lorg/eclipse/jdt/internal/compiler/lookup/ParameterizedTypeBinding;->getSingleAbstractMethod(Lorg/eclipse/jdt/internal/compiler/lookup/Scope;ZII)Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    move-result-object v0

    iget-object v0, v0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->parameters:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    goto :goto_6

    :cond_d
    iget-object v0, v2, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->parameters:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    :goto_6
    invoke-virtual {p1, v0}, Lorg/eclipse/jdt/internal/compiler/ast/ReferenceExpression;->createPseudoExpressions([Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)[Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    move-result-object v1

    invoke-virtual {p2, p1, v1}, Lorg/eclipse/jdt/internal/compiler/lookup/InferenceContext18;->enterPolyInvocation(Lorg/eclipse/jdt/internal/compiler/lookup/InvocationSite;[Lorg/eclipse/jdt/internal/compiler/ast/Expression;)Lorg/eclipse/jdt/internal/compiler/lookup/InferenceContext18$SuspendedInferenceRecord;

    move-result-object v1

    :try_start_0
    move-object v2, v4

    check-cast v2, Lorg/eclipse/jdt/internal/compiler/lookup/ParameterizedMethodBinding;

    invoke-virtual {p1, v2}, Lorg/eclipse/jdt/internal/compiler/ast/ReferenceExpression;->getInferenceContext(Lorg/eclipse/jdt/internal/compiler/lookup/ParameterizedMethodBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/InferenceContext18;

    move-result-object v2
    :try_end_0
    .catch Lorg/eclipse/jdt/internal/compiler/lookup/InferenceFailureException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-direct {p0, v4, v0, v2}, Lorg/eclipse/jdt/internal/compiler/lookup/ConstraintExpressionFormula;->determineInferenceKind(Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/InferenceContext18;)I

    move-result v4

    invoke-virtual {v6}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->isConstructor()Z

    move-result v7

    invoke-static {p2, v6, v0, v7, v4}, Lorg/eclipse/jdt/internal/compiler/lookup/ConstraintExpressionFormula;->inferInvocationApplicability(Lorg/eclipse/jdt/internal/compiler/lookup/InferenceContext18;Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;ZI)V

    invoke-virtual {p2, p1, v5, v6}, Lorg/eclipse/jdt/internal/compiler/lookup/InferenceContext18;->computeB3(Lorg/eclipse/jdt/internal/compiler/lookup/InvocationSite;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;)Z

    move-result p1

    if-nez p1, :cond_e

    sget-object p1, Lorg/eclipse/jdt/internal/compiler/lookup/ReductionResult;->FALSE:Lorg/eclipse/jdt/internal/compiler/lookup/ConstraintTypeFormula;
    :try_end_1
    .catch Lorg/eclipse/jdt/internal/compiler/lookup/InferenceFailureException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-virtual {p2, v1, v2}, Lorg/eclipse/jdt/internal/compiler/lookup/InferenceContext18;->resumeSuspendedInference(Lorg/eclipse/jdt/internal/compiler/lookup/InferenceContext18$SuspendedInferenceRecord;Lorg/eclipse/jdt/internal/compiler/lookup/InferenceContext18;)V

    return-object p1

    :catchall_0
    move-exception p1

    move-object v3, v2

    goto :goto_8

    :cond_e
    invoke-virtual {p2, v1, v2}, Lorg/eclipse/jdt/internal/compiler/lookup/InferenceContext18;->resumeSuspendedInference(Lorg/eclipse/jdt/internal/compiler/lookup/InferenceContext18$SuspendedInferenceRecord;Lorg/eclipse/jdt/internal/compiler/lookup/InferenceContext18;)V

    return-object v3

    :catch_0
    move-object v3, v2

    goto :goto_7

    :catchall_1
    move-exception p1

    goto :goto_8

    :catch_1
    :goto_7
    :try_start_2
    sget-object p1, Lorg/eclipse/jdt/internal/compiler/lookup/ReductionResult;->FALSE:Lorg/eclipse/jdt/internal/compiler/lookup/ConstraintTypeFormula;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    invoke-virtual {p2, v1, v3}, Lorg/eclipse/jdt/internal/compiler/lookup/InferenceContext18;->resumeSuspendedInference(Lorg/eclipse/jdt/internal/compiler/lookup/InferenceContext18$SuspendedInferenceRecord;Lorg/eclipse/jdt/internal/compiler/lookup/InferenceContext18;)V

    return-object p1

    :goto_8
    invoke-virtual {p2, v1, v3}, Lorg/eclipse/jdt/internal/compiler/lookup/InferenceContext18;->resumeSuspendedInference(Lorg/eclipse/jdt/internal/compiler/lookup/InferenceContext18$SuspendedInferenceRecord;Lorg/eclipse/jdt/internal/compiler/lookup/InferenceContext18;)V

    throw p1

    :cond_f
    invoke-virtual {v4}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->isConstructor()Z

    move-result v0

    if-eqz v0, :cond_10

    iget-object p1, v4, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->declaringClass:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    goto :goto_9

    :cond_10
    iget-object v0, v4, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->returnType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    iget-object p2, p2, Lorg/eclipse/jdt/internal/compiler/lookup/InferenceContext18;->scope:Lorg/eclipse/jdt/internal/compiler/lookup/Scope;

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceStart()I

    move-result v2

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceEnd()I

    move-result p1

    invoke-virtual {v0, p2, v2, p1}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->capture(Lorg/eclipse/jdt/internal/compiler/lookup/Scope;II)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object p1

    :goto_9
    iget p2, p1, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->id:I

    if-ne p2, v7, :cond_11

    sget-object p1, Lorg/eclipse/jdt/internal/compiler/lookup/ReductionResult;->FALSE:Lorg/eclipse/jdt/internal/compiler/lookup/ConstraintTypeFormula;

    return-object p1

    :cond_11
    iget-boolean p2, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ConstraintExpressionFormula;->isSoft:Z

    invoke-static {p1, v5, v1, p2}, Lorg/eclipse/jdt/internal/compiler/lookup/ConstraintTypeFormula;->create(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;IZ)Lorg/eclipse/jdt/internal/compiler/lookup/ConstraintTypeFormula;

    move-result-object p1

    return-object p1

    :cond_12
    iget-object v7, v2, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->parameters:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    aget-object v7, v7, v6

    invoke-virtual {v7, v1}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isProperType(Z)Z

    move-result v7

    if-nez v7, :cond_13

    sget-object p1, Lorg/eclipse/jdt/internal/compiler/lookup/ReductionResult;->FALSE:Lorg/eclipse/jdt/internal/compiler/lookup/ConstraintTypeFormula;

    return-object p1

    :cond_13
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_4

    :cond_14
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Should not reach here with T being a proper type"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public inputVariables(Lorg/eclipse/jdt/internal/compiler/lookup/InferenceContext18;)Ljava/util/Collection;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/eclipse/jdt/internal/compiler/lookup/InferenceContext18;",
            ")",
            "Ljava/util/Collection<",
            "Lorg/eclipse/jdt/internal/compiler/lookup/InferenceVariable;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ConstraintExpressionFormula;->left:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    instance-of v1, v0, Lorg/eclipse/jdt/internal/compiler/ast/LambdaExpression;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_9

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ReductionResult;->right:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    instance-of v1, v0, Lorg/eclipse/jdt/internal/compiler/lookup/InferenceVariable;

    if-eqz v1, :cond_0

    check-cast v0, Lorg/eclipse/jdt/internal/compiler/lookup/InferenceVariable;

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    return-object p1

    :cond_0
    iget-object v1, p1, Lorg/eclipse/jdt/internal/compiler/lookup/InferenceContext18;->scope:Lorg/eclipse/jdt/internal/compiler/lookup/Scope;

    invoke-virtual {v0, v1}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isFunctionalInterface(Lorg/eclipse/jdt/internal/compiler/lookup/Scope;)Z

    move-result v0

    if-eqz v0, :cond_f

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ConstraintExpressionFormula;->left:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    check-cast v0, Lorg/eclipse/jdt/internal/compiler/ast/LambdaExpression;

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ReductionResult;->right:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    check-cast v1, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    invoke-static {v1}, Lorg/eclipse/jdt/internal/compiler/lookup/InferenceContext18;->parameterizedWithWildcard(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/ParameterizedTypeBinding;

    move-result-object v4

    if-eqz v4, :cond_1

    iget-object v1, v0, Lorg/eclipse/jdt/internal/compiler/ast/FunctionalExpression;->enclosingScope:Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;

    invoke-static {p1, v1, v0, v4}, Lorg/eclipse/jdt/internal/compiler/lookup/ConstraintExpressionFormula;->findGroundTargetType(Lorg/eclipse/jdt/internal/compiler/lookup/InferenceContext18;Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;Lorg/eclipse/jdt/internal/compiler/ast/LambdaExpression;Lorg/eclipse/jdt/internal/compiler/lookup/ParameterizedTypeBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move-result-object v1

    :cond_1
    if-nez v1, :cond_2

    sget-object p1, Lorg/eclipse/jdt/internal/compiler/lookup/ConstraintFormula;->EMPTY_VARIABLE_LIST:Ljava/util/List;

    return-object p1

    :cond_2
    iget-object v4, p1, Lorg/eclipse/jdt/internal/compiler/lookup/InferenceContext18;->scope:Lorg/eclipse/jdt/internal/compiler/lookup/Scope;

    invoke-virtual {v1, v4, v3}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->getSingleAbstractMethod(Lorg/eclipse/jdt/internal/compiler/lookup/Scope;Z)Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    move-result-object v1

    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/ast/LambdaExpression;->argumentsTypeElided()Z

    move-result v5

    if-eqz v5, :cond_4

    iget-object v5, v1, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->parameters:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    array-length v5, v5

    move v6, v2

    :goto_0
    if-lt v6, v5, :cond_3

    goto :goto_1

    :cond_3
    iget-object v7, v1, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->parameters:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    aget-object v7, v7, v6

    invoke-virtual {v7, v4}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->collectInferenceVariables(Ljava/util/Set;)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_4
    :goto_1
    iget-object v1, v1, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->returnType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    sget-object v5, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->VOID:Lorg/eclipse/jdt/internal/compiler/lookup/VoidTypeBinding;

    if-eq v1, v5, :cond_8

    iget-object v5, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ReductionResult;->right:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    iget-object v6, p1, Lorg/eclipse/jdt/internal/compiler/lookup/InferenceContext18;->scope:Lorg/eclipse/jdt/internal/compiler/lookup/Scope;

    invoke-virtual {v0, v5, v6, p1}, Lorg/eclipse/jdt/internal/compiler/ast/LambdaExpression;->resolveExpressionExpecting(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/Scope;Lorg/eclipse/jdt/internal/compiler/lookup/InferenceContext18;)Lorg/eclipse/jdt/internal/compiler/ast/LambdaExpression;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/ast/LambdaExpression;->resultExpressions()[Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    move-result-object v0

    goto :goto_2

    :cond_5
    const/4 v0, 0x0

    :goto_2
    if-nez v0, :cond_6

    move v5, v2

    goto :goto_3

    :cond_6
    array-length v5, v0

    :goto_3
    if-lt v2, v5, :cond_7

    goto :goto_4

    :cond_7
    new-instance v6, Lorg/eclipse/jdt/internal/compiler/lookup/ConstraintExpressionFormula;

    aget-object v7, v0, v2

    invoke-direct {v6, v7, v1, v3}, Lorg/eclipse/jdt/internal/compiler/lookup/ConstraintExpressionFormula;-><init>(Lorg/eclipse/jdt/internal/compiler/ast/Expression;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;I)V

    invoke-virtual {v6, p1}, Lorg/eclipse/jdt/internal/compiler/lookup/ConstraintExpressionFormula;->inputVariables(Lorg/eclipse/jdt/internal/compiler/lookup/InferenceContext18;)Ljava/util/Collection;

    move-result-object v6

    invoke-interface {v4, v6}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_8
    :goto_4
    return-object v4

    :cond_9
    instance-of v1, v0, Lorg/eclipse/jdt/internal/compiler/ast/ReferenceExpression;

    if-eqz v1, :cond_c

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ReductionResult;->right:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    instance-of v1, v0, Lorg/eclipse/jdt/internal/compiler/lookup/InferenceVariable;

    if-eqz v1, :cond_a

    check-cast v0, Lorg/eclipse/jdt/internal/compiler/lookup/InferenceVariable;

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    return-object p1

    :cond_a
    iget-object v1, p1, Lorg/eclipse/jdt/internal/compiler/lookup/InferenceContext18;->scope:Lorg/eclipse/jdt/internal/compiler/lookup/Scope;

    invoke-virtual {v0, v1}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isFunctionalInterface(Lorg/eclipse/jdt/internal/compiler/lookup/Scope;)Z

    move-result v0

    if-eqz v0, :cond_f

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ConstraintExpressionFormula;->left:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->isExactMethodReference()Z

    move-result v0

    if-nez v0, :cond_f

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ReductionResult;->right:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    iget-object p1, p1, Lorg/eclipse/jdt/internal/compiler/lookup/InferenceContext18;->scope:Lorg/eclipse/jdt/internal/compiler/lookup/Scope;

    invoke-virtual {v0, p1, v3}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->getSingleAbstractMethod(Lorg/eclipse/jdt/internal/compiler/lookup/Scope;Z)Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    move-result-object p1

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iget-object v1, p1, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->parameters:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    array-length v1, v1

    :goto_5
    if-lt v2, v1, :cond_b

    return-object v0

    :cond_b
    iget-object v3, p1, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->parameters:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    aget-object v3, v3, v2

    invoke-virtual {v3, v0}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->collectInferenceVariables(Ljava/util/Set;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    :cond_c
    instance-of v1, v0, Lorg/eclipse/jdt/internal/compiler/ast/ConditionalExpression;

    if-eqz v1, :cond_d

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->isPolyExpression()Z

    move-result v0

    if-eqz v0, :cond_d

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ConstraintExpressionFormula;->left:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    check-cast v0, Lorg/eclipse/jdt/internal/compiler/ast/ConditionalExpression;

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    new-instance v2, Lorg/eclipse/jdt/internal/compiler/lookup/ConstraintExpressionFormula;

    iget-object v4, v0, Lorg/eclipse/jdt/internal/compiler/ast/ConditionalExpression;->valueIfTrue:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    iget-object v5, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ReductionResult;->right:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-direct {v2, v4, v5, v3}, Lorg/eclipse/jdt/internal/compiler/lookup/ConstraintExpressionFormula;-><init>(Lorg/eclipse/jdt/internal/compiler/ast/Expression;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;I)V

    invoke-virtual {v2, p1}, Lorg/eclipse/jdt/internal/compiler/lookup/ConstraintExpressionFormula;->inputVariables(Lorg/eclipse/jdt/internal/compiler/lookup/InferenceContext18;)Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    new-instance v2, Lorg/eclipse/jdt/internal/compiler/lookup/ConstraintExpressionFormula;

    iget-object v0, v0, Lorg/eclipse/jdt/internal/compiler/ast/ConditionalExpression;->valueIfFalse:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    iget-object v4, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ReductionResult;->right:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-direct {v2, v0, v4, v3}, Lorg/eclipse/jdt/internal/compiler/lookup/ConstraintExpressionFormula;-><init>(Lorg/eclipse/jdt/internal/compiler/ast/Expression;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;I)V

    invoke-virtual {v2, p1}, Lorg/eclipse/jdt/internal/compiler/lookup/ConstraintExpressionFormula;->inputVariables(Lorg/eclipse/jdt/internal/compiler/lookup/InferenceContext18;)Ljava/util/Collection;

    move-result-object p1

    invoke-interface {v1, p1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    return-object v1

    :cond_d
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ConstraintExpressionFormula;->left:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    instance-of v1, v0, Lorg/eclipse/jdt/internal/compiler/ast/SwitchExpression;

    if-eqz v1, :cond_f

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->isPolyExpression()Z

    move-result v0

    if-eqz v0, :cond_f

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ConstraintExpressionFormula;->left:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    check-cast v0, Lorg/eclipse/jdt/internal/compiler/ast/SwitchExpression;

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iget-object v0, v0, Lorg/eclipse/jdt/internal/compiler/ast/SwitchExpression;->resultExpressions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_e

    return-object v1

    :cond_e
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    new-instance v4, Lorg/eclipse/jdt/internal/compiler/lookup/ConstraintExpressionFormula;

    iget-object v5, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ReductionResult;->right:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-direct {v4, v2, v5, v3}, Lorg/eclipse/jdt/internal/compiler/lookup/ConstraintExpressionFormula;-><init>(Lorg/eclipse/jdt/internal/compiler/ast/Expression;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;I)V

    invoke-virtual {v4, p1}, Lorg/eclipse/jdt/internal/compiler/lookup/ConstraintExpressionFormula;->inputVariables(Lorg/eclipse/jdt/internal/compiler/lookup/InferenceContext18;)Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    goto :goto_6

    :cond_f
    sget-object p1, Lorg/eclipse/jdt/internal/compiler/lookup/ConstraintFormula;->EMPTY_VARIABLE_LIST:Ljava/util/List;

    return-object p1
.end method

.method public reduce(Lorg/eclipse/jdt/internal/compiler/lookup/InferenceContext18;)Ljava/lang/Object;
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/internal/compiler/lookup/InferenceFailureException;
        }
    .end annotation

    const/4 v0, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x1

    iget v3, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ReductionResult;->relation:I

    const/16 v4, 0x8

    if-ne v3, v4, :cond_1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ConstraintExpressionFormula;->left:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ReductionResult;->right:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    iget-object p1, p1, Lorg/eclipse/jdt/internal/compiler/lookup/InferenceContext18;->scope:Lorg/eclipse/jdt/internal/compiler/lookup/Scope;

    invoke-virtual {v0, v1, p1}, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->isPotentiallyCompatibleWith(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/Scope;)Z

    move-result p1

    if-eqz p1, :cond_0

    sget-object p1, Lorg/eclipse/jdt/internal/compiler/lookup/ReductionResult;->TRUE:Lorg/eclipse/jdt/internal/compiler/lookup/ConstraintTypeFormula;

    goto :goto_0

    :cond_0
    sget-object p1, Lorg/eclipse/jdt/internal/compiler/lookup/ReductionResult;->FALSE:Lorg/eclipse/jdt/internal/compiler/lookup/ConstraintTypeFormula;

    :goto_0
    return-object p1

    :cond_1
    iget-object v3, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ReductionResult;->right:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-virtual {v3, v2}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isProperType(Z)Z

    move-result v3

    if-eqz v3, :cond_5

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ConstraintExpressionFormula;->left:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ReductionResult;->right:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    iget-object v3, p1, Lorg/eclipse/jdt/internal/compiler/lookup/InferenceContext18;->scope:Lorg/eclipse/jdt/internal/compiler/lookup/Scope;

    invoke-virtual {v0, v1, v3}, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->isCompatibleWith(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/Scope;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ConstraintExpressionFormula;->left:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ReductionResult;->right:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    iget-object v3, p1, Lorg/eclipse/jdt/internal/compiler/lookup/InferenceContext18;->scope:Lorg/eclipse/jdt/internal/compiler/lookup/Scope;

    invoke-virtual {v0, v1, v3}, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->isBoxingCompatibleWith(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/Scope;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    sget-object p1, Lorg/eclipse/jdt/internal/compiler/lookup/ReductionResult;->FALSE:Lorg/eclipse/jdt/internal/compiler/lookup/ConstraintTypeFormula;

    return-object p1

    :cond_3
    :goto_1
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ConstraintExpressionFormula;->left:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    iget-object v0, v0, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->resolvedType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    if-eqz v0, :cond_4

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ReductionResult;->right:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-virtual {v0, v1}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->needsUncheckedConversion(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Z

    move-result v0

    if-eqz v0, :cond_4

    iput-boolean v2, p1, Lorg/eclipse/jdt/internal/compiler/lookup/InferenceContext18;->usesUncheckedConversion:Z

    :cond_4
    sget-object p1, Lorg/eclipse/jdt/internal/compiler/lookup/ReductionResult;->TRUE:Lorg/eclipse/jdt/internal/compiler/lookup/ConstraintTypeFormula;

    return-object p1

    :cond_5
    iget-object v3, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ConstraintExpressionFormula;->left:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    invoke-direct {p0, v3}, Lorg/eclipse/jdt/internal/compiler/lookup/ConstraintExpressionFormula;->canBePolyExpression(Lorg/eclipse/jdt/internal/compiler/ast/Expression;)Z

    move-result v3

    const/4 v4, 0x0

    if-nez v3, :cond_9

    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ConstraintExpressionFormula;->left:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    iget-object p1, p1, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->resolvedType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    if-eqz p1, :cond_7

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->isValidBinding()Z

    move-result v0

    if-nez v0, :cond_6

    goto :goto_2

    :cond_6
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ReductionResult;->right:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    iget-boolean v1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ConstraintExpressionFormula;->isSoft:Z

    invoke-static {p1, v0, v2, v1}, Lorg/eclipse/jdt/internal/compiler/lookup/ConstraintTypeFormula;->create(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;IZ)Lorg/eclipse/jdt/internal/compiler/lookup/ConstraintTypeFormula;

    move-result-object p1

    return-object p1

    :cond_7
    :goto_2
    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ConstraintExpressionFormula;->left:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    instance-of v0, p1, Lorg/eclipse/jdt/internal/compiler/ast/MessageSend;

    if-eqz v0, :cond_8

    check-cast p1, Lorg/eclipse/jdt/internal/compiler/ast/MessageSend;

    iget-object p1, p1, Lorg/eclipse/jdt/internal/compiler/ast/MessageSend;->actualReceiverType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    instance-of p1, p1, Lorg/eclipse/jdt/internal/compiler/lookup/InferenceVariable;

    if-eqz p1, :cond_8

    return-object v4

    :cond_8
    sget-object p1, Lorg/eclipse/jdt/internal/compiler/lookup/ReductionResult;->FALSE:Lorg/eclipse/jdt/internal/compiler/lookup/ConstraintTypeFormula;

    return-object p1

    :cond_9
    iget-object v3, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ConstraintExpressionFormula;->left:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    instance-of v5, v3, Lorg/eclipse/jdt/internal/compiler/ast/Invocation;

    if-eqz v5, :cond_14

    check-cast v3, Lorg/eclipse/jdt/internal/compiler/ast/Invocation;

    invoke-interface {v3}, Lorg/eclipse/jdt/internal/compiler/ast/Invocation;->binding()Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    move-result-object v0

    if-nez v0, :cond_a

    return-object v4

    :cond_a
    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->shallowOriginal()Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    move-result-object v5

    invoke-interface {v3}, Lorg/eclipse/jdt/internal/compiler/ast/Invocation;->arguments()[Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    move-result-object v6

    invoke-virtual {p1, v3, v6}, Lorg/eclipse/jdt/internal/compiler/lookup/InferenceContext18;->enterPolyInvocation(Lorg/eclipse/jdt/internal/compiler/lookup/InvocationSite;[Lorg/eclipse/jdt/internal/compiler/ast/Expression;)Lorg/eclipse/jdt/internal/compiler/lookup/InferenceContext18$SuspendedInferenceRecord;

    move-result-object v6

    :try_start_0
    invoke-interface {v3}, Lorg/eclipse/jdt/internal/compiler/ast/Invocation;->arguments()[Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    move-result-object v7

    if-nez v7, :cond_b

    sget-object v8, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->NO_PARAMETERS:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    goto :goto_3

    :catchall_0
    move-exception v0

    goto/16 :goto_7

    :cond_b
    array-length v8, v7

    new-array v8, v8, [Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    :goto_3
    move v9, v1

    :goto_4
    array-length v10, v8

    if-lt v9, v10, :cond_13

    instance-of v7, v0, Lorg/eclipse/jdt/internal/compiler/lookup/ParameterizedGenericMethodBinding;

    if-eqz v7, :cond_10

    check-cast v0, Lorg/eclipse/jdt/internal/compiler/lookup/ParameterizedGenericMethodBinding;

    invoke-interface {v3, v0}, Lorg/eclipse/jdt/internal/compiler/ast/Invocation;->getInferenceContext(Lorg/eclipse/jdt/internal/compiler/lookup/ParameterizedMethodBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/InferenceContext18;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_e

    :try_start_1
    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ConstraintExpressionFormula;->left:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    iget-object v1, v1, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->resolvedType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    if-eqz v1, :cond_d

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->isValidBinding()Z

    move-result v3

    if-nez v3, :cond_c

    goto :goto_5

    :cond_c
    iget-object v3, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ReductionResult;->right:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    iget-boolean v4, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ConstraintExpressionFormula;->isSoft:Z

    invoke-static {v1, v3, v2, v4}, Lorg/eclipse/jdt/internal/compiler/lookup/ConstraintTypeFormula;->create(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;IZ)Lorg/eclipse/jdt/internal/compiler/lookup/ConstraintTypeFormula;

    move-result-object v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    invoke-virtual {p1, v6, v0}, Lorg/eclipse/jdt/internal/compiler/lookup/InferenceContext18;->resumeSuspendedInference(Lorg/eclipse/jdt/internal/compiler/lookup/InferenceContext18$SuspendedInferenceRecord;Lorg/eclipse/jdt/internal/compiler/lookup/InferenceContext18;)V

    return-object v1

    :catchall_1
    move-exception v1

    move-object v4, v0

    move-object v0, v1

    goto :goto_7

    :cond_d
    :goto_5
    :try_start_2
    sget-object v1, Lorg/eclipse/jdt/internal/compiler/lookup/ReductionResult;->FALSE:Lorg/eclipse/jdt/internal/compiler/lookup/ConstraintTypeFormula;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    invoke-virtual {p1, v6, v0}, Lorg/eclipse/jdt/internal/compiler/lookup/InferenceContext18;->resumeSuspendedInference(Lorg/eclipse/jdt/internal/compiler/lookup/InferenceContext18$SuspendedInferenceRecord;Lorg/eclipse/jdt/internal/compiler/lookup/InferenceContext18;)V

    return-object v1

    :cond_e
    :try_start_3
    iget v1, v0, Lorg/eclipse/jdt/internal/compiler/lookup/InferenceContext18;->stepCompleted:I

    if-lt v1, v2, :cond_f

    invoke-virtual {p1, v0}, Lorg/eclipse/jdt/internal/compiler/lookup/InferenceContext18;->integrateInnerInferenceB2(Lorg/eclipse/jdt/internal/compiler/lookup/InferenceContext18;)V

    goto :goto_6

    :cond_f
    sget-object v1, Lorg/eclipse/jdt/internal/compiler/lookup/ReductionResult;->FALSE:Lorg/eclipse/jdt/internal/compiler/lookup/ConstraintTypeFormula;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    invoke-virtual {p1, v6, v0}, Lorg/eclipse/jdt/internal/compiler/lookup/InferenceContext18;->resumeSuspendedInference(Lorg/eclipse/jdt/internal/compiler/lookup/InferenceContext18$SuspendedInferenceRecord;Lorg/eclipse/jdt/internal/compiler/lookup/InferenceContext18;)V

    return-object v1

    :cond_10
    :try_start_4
    invoke-virtual {p1, v0, v8}, Lorg/eclipse/jdt/internal/compiler/lookup/InferenceContext18;->getInferenceKind(Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)I

    move-result v0

    iput v0, p1, Lorg/eclipse/jdt/internal/compiler/lookup/InferenceContext18;->inferenceKind:I

    invoke-virtual {v5}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->isConstructor()Z

    move-result v0

    if-eqz v0, :cond_11

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ConstraintExpressionFormula;->left:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    invoke-virtual {v0, v5}, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->isPolyExpression(Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;)Z

    move-result v0

    if-eqz v0, :cond_11

    move v1, v2

    :cond_11
    iget v0, p1, Lorg/eclipse/jdt/internal/compiler/lookup/InferenceContext18;->inferenceKind:I

    invoke-static {p1, v5, v8, v1, v0}, Lorg/eclipse/jdt/internal/compiler/lookup/ConstraintExpressionFormula;->inferInvocationApplicability(Lorg/eclipse/jdt/internal/compiler/lookup/InferenceContext18;Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;ZI)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-object v0, v4

    :goto_6
    :try_start_5
    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ReductionResult;->right:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-virtual {p1, v3, v1, v5}, Lorg/eclipse/jdt/internal/compiler/lookup/InferenceContext18;->computeB3(Lorg/eclipse/jdt/internal/compiler/lookup/InvocationSite;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;)Z

    move-result v1

    if-nez v1, :cond_12

    sget-object v1, Lorg/eclipse/jdt/internal/compiler/lookup/ReductionResult;->FALSE:Lorg/eclipse/jdt/internal/compiler/lookup/ConstraintTypeFormula;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    invoke-virtual {p1, v6, v0}, Lorg/eclipse/jdt/internal/compiler/lookup/InferenceContext18;->resumeSuspendedInference(Lorg/eclipse/jdt/internal/compiler/lookup/InferenceContext18$SuspendedInferenceRecord;Lorg/eclipse/jdt/internal/compiler/lookup/InferenceContext18;)V

    return-object v1

    :cond_12
    invoke-virtual {p1, v6, v0}, Lorg/eclipse/jdt/internal/compiler/lookup/InferenceContext18;->resumeSuspendedInference(Lorg/eclipse/jdt/internal/compiler/lookup/InferenceContext18$SuspendedInferenceRecord;Lorg/eclipse/jdt/internal/compiler/lookup/InferenceContext18;)V

    return-object v4

    :cond_13
    :try_start_6
    aget-object v10, v7, v9

    iget-object v10, v10, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->resolvedType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    aput-object v10, v8, v9
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    add-int/2addr v9, v2

    goto :goto_4

    :goto_7
    invoke-virtual {p1, v6, v4}, Lorg/eclipse/jdt/internal/compiler/lookup/InferenceContext18;->resumeSuspendedInference(Lorg/eclipse/jdt/internal/compiler/lookup/InferenceContext18$SuspendedInferenceRecord;Lorg/eclipse/jdt/internal/compiler/lookup/InferenceContext18;)V

    throw v0

    :cond_14
    instance-of v4, v3, Lorg/eclipse/jdt/internal/compiler/ast/ConditionalExpression;

    if-eqz v4, :cond_15

    check-cast v3, Lorg/eclipse/jdt/internal/compiler/ast/ConditionalExpression;

    new-instance p1, Lorg/eclipse/jdt/internal/compiler/lookup/ConstraintExpressionFormula;

    iget-object v4, v3, Lorg/eclipse/jdt/internal/compiler/ast/ConditionalExpression;->valueIfTrue:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    iget-object v5, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ReductionResult;->right:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    iget v6, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ReductionResult;->relation:I

    iget-boolean v7, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ConstraintExpressionFormula;->isSoft:Z

    invoke-direct {p1, v4, v5, v6, v7}, Lorg/eclipse/jdt/internal/compiler/lookup/ConstraintExpressionFormula;-><init>(Lorg/eclipse/jdt/internal/compiler/ast/Expression;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;IZ)V

    new-instance v4, Lorg/eclipse/jdt/internal/compiler/lookup/ConstraintExpressionFormula;

    iget-object v3, v3, Lorg/eclipse/jdt/internal/compiler/ast/ConditionalExpression;->valueIfFalse:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    iget-object v5, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ReductionResult;->right:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    iget v6, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ReductionResult;->relation:I

    iget-boolean v7, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ConstraintExpressionFormula;->isSoft:Z

    invoke-direct {v4, v3, v5, v6, v7}, Lorg/eclipse/jdt/internal/compiler/lookup/ConstraintExpressionFormula;-><init>(Lorg/eclipse/jdt/internal/compiler/ast/Expression;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;IZ)V

    new-array v0, v0, [Lorg/eclipse/jdt/internal/compiler/lookup/ConstraintFormula;

    aput-object p1, v0, v1

    aput-object v4, v0, v2

    return-object v0

    :cond_15
    instance-of v4, v3, Lorg/eclipse/jdt/internal/compiler/ast/SwitchExpression;

    if-eqz v4, :cond_17

    check-cast v3, Lorg/eclipse/jdt/internal/compiler/ast/SwitchExpression;

    iget-object p1, v3, Lorg/eclipse/jdt/internal/compiler/ast/SwitchExpression;->resultExpressions:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    new-array v4, p1, [Lorg/eclipse/jdt/internal/compiler/lookup/ConstraintFormula;

    iget-object p1, v3, Lorg/eclipse/jdt/internal/compiler/ast/SwitchExpression;->resultExpressions:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_8
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-nez p1, :cond_16

    return-object v4

    :cond_16
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    add-int/lit8 v0, v1, 0x1

    new-instance v3, Lorg/eclipse/jdt/internal/compiler/lookup/ConstraintExpressionFormula;

    iget-object v6, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ReductionResult;->right:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    iget v7, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ReductionResult;->relation:I

    iget-boolean v8, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ConstraintExpressionFormula;->isSoft:Z

    invoke-direct {v3, p1, v6, v7, v8}, Lorg/eclipse/jdt/internal/compiler/lookup/ConstraintExpressionFormula;-><init>(Lorg/eclipse/jdt/internal/compiler/ast/Expression;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;IZ)V

    aput-object v3, v4, v1

    move v1, v0

    goto :goto_8

    :cond_17
    instance-of v4, v3, Lorg/eclipse/jdt/internal/compiler/ast/LambdaExpression;

    if-eqz v4, :cond_2c

    check-cast v3, Lorg/eclipse/jdt/internal/compiler/ast/LambdaExpression;

    iget-object v4, v3, Lorg/eclipse/jdt/internal/compiler/ast/FunctionalExpression;->enclosingScope:Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;

    iget-object v5, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ReductionResult;->right:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    instance-of v6, v5, Lorg/eclipse/jdt/internal/compiler/lookup/InferenceVariable;

    if-eqz v6, :cond_18

    sget-object p1, Lorg/eclipse/jdt/internal/compiler/lookup/ReductionResult;->TRUE:Lorg/eclipse/jdt/internal/compiler/lookup/ConstraintTypeFormula;

    return-object p1

    :cond_18
    invoke-virtual {v5, v4}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isFunctionalInterface(Lorg/eclipse/jdt/internal/compiler/lookup/Scope;)Z

    move-result v5

    if-nez v5, :cond_19

    sget-object p1, Lorg/eclipse/jdt/internal/compiler/lookup/ReductionResult;->FALSE:Lorg/eclipse/jdt/internal/compiler/lookup/ConstraintTypeFormula;

    return-object p1

    :cond_19
    iget-object v5, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ReductionResult;->right:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    check-cast v5, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    invoke-static {v5}, Lorg/eclipse/jdt/internal/compiler/lookup/InferenceContext18;->parameterizedWithWildcard(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/ParameterizedTypeBinding;

    move-result-object v6

    if-eqz v6, :cond_1a

    invoke-static {p1, v4, v3, v6}, Lorg/eclipse/jdt/internal/compiler/lookup/ConstraintExpressionFormula;->findGroundTargetType(Lorg/eclipse/jdt/internal/compiler/lookup/InferenceContext18;Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;Lorg/eclipse/jdt/internal/compiler/ast/LambdaExpression;Lorg/eclipse/jdt/internal/compiler/lookup/ParameterizedTypeBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move-result-object v5

    :cond_1a
    if-nez v5, :cond_1b

    sget-object p1, Lorg/eclipse/jdt/internal/compiler/lookup/ReductionResult;->FALSE:Lorg/eclipse/jdt/internal/compiler/lookup/ConstraintTypeFormula;

    return-object p1

    :cond_1b
    invoke-virtual {v5, v4, v2}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->getSingleAbstractMethod(Lorg/eclipse/jdt/internal/compiler/lookup/Scope;Z)Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    move-result-object v6

    if-nez v6, :cond_1c

    sget-object p1, Lorg/eclipse/jdt/internal/compiler/lookup/ReductionResult;->FALSE:Lorg/eclipse/jdt/internal/compiler/lookup/ConstraintTypeFormula;

    return-object p1

    :cond_1c
    iget-object v7, v6, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->parameters:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    array-length v8, v7

    invoke-virtual {v3}, Lorg/eclipse/jdt/internal/compiler/ast/LambdaExpression;->arguments()[Lorg/eclipse/jdt/internal/compiler/ast/Argument;

    move-result-object v9

    array-length v9, v9

    if-eq v8, v9, :cond_1d

    sget-object p1, Lorg/eclipse/jdt/internal/compiler/lookup/ReductionResult;->FALSE:Lorg/eclipse/jdt/internal/compiler/lookup/ConstraintTypeFormula;

    return-object p1

    :cond_1d
    invoke-virtual {v3}, Lorg/eclipse/jdt/internal/compiler/ast/LambdaExpression;->argumentsTypeElided()Z

    move-result v8

    if-eqz v8, :cond_20

    move v8, v1

    :goto_9
    array-length v9, v7

    if-lt v8, v9, :cond_1e

    goto :goto_a

    :cond_1e
    aget-object v9, v7, v8

    invoke-virtual {v9, v2}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isProperType(Z)Z

    move-result v9

    if-nez v9, :cond_1f

    sget-object p1, Lorg/eclipse/jdt/internal/compiler/lookup/ReductionResult;->FALSE:Lorg/eclipse/jdt/internal/compiler/lookup/ConstraintTypeFormula;

    return-object p1

    :cond_1f
    add-int/2addr v8, v2

    goto :goto_9

    :cond_20
    :goto_a
    iget-object v8, p1, Lorg/eclipse/jdt/internal/compiler/lookup/InferenceContext18;->scope:Lorg/eclipse/jdt/internal/compiler/lookup/Scope;

    invoke-virtual {v3, v5, v8, p1}, Lorg/eclipse/jdt/internal/compiler/ast/LambdaExpression;->resolveExpressionExpecting(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/Scope;Lorg/eclipse/jdt/internal/compiler/lookup/InferenceContext18;)Lorg/eclipse/jdt/internal/compiler/ast/LambdaExpression;

    move-result-object p1

    if-nez p1, :cond_21

    sget-object p1, Lorg/eclipse/jdt/internal/compiler/lookup/ReductionResult;->FALSE:Lorg/eclipse/jdt/internal/compiler/lookup/ConstraintTypeFormula;

    return-object p1

    :cond_21
    iget-object v3, v6, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->returnType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    sget-object v5, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->VOID:Lorg/eclipse/jdt/internal/compiler/lookup/VoidTypeBinding;

    if-ne v3, v5, :cond_22

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/ast/LambdaExpression;->isVoidCompatible()Z

    move-result v3

    if-nez v3, :cond_23

    sget-object p1, Lorg/eclipse/jdt/internal/compiler/lookup/ReductionResult;->FALSE:Lorg/eclipse/jdt/internal/compiler/lookup/ConstraintTypeFormula;

    return-object p1

    :cond_22
    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/ast/LambdaExpression;->isValueCompatible()Z

    move-result v3

    if-nez v3, :cond_23

    sget-object p1, Lorg/eclipse/jdt/internal/compiler/lookup/ReductionResult;->FALSE:Lorg/eclipse/jdt/internal/compiler/lookup/ConstraintTypeFormula;

    return-object p1

    :cond_23
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/ast/LambdaExpression;->argumentsTypeElided()Z

    move-result v5

    if-nez v5, :cond_25

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/ast/LambdaExpression;->arguments()[Lorg/eclipse/jdt/internal/compiler/ast/Argument;

    move-result-object v5

    move v8, v1

    :goto_b
    array-length v9, v7

    if-lt v8, v9, :cond_24

    iget-object v5, p1, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->resolvedType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    if-eqz v5, :cond_25

    iget-object v7, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ReductionResult;->right:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-static {v5, v7, v0}, Lorg/eclipse/jdt/internal/compiler/lookup/ConstraintTypeFormula;->create(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;I)Lorg/eclipse/jdt/internal/compiler/lookup/ConstraintTypeFormula;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_c

    :cond_24
    aget-object v9, v7, v8

    aget-object v10, v5, v8

    iget-object v10, v10, Lorg/eclipse/jdt/internal/compiler/ast/AbstractVariableDeclaration;->type:Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    iget-object v10, v10, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->resolvedType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    const/4 v11, 0x4

    invoke-static {v9, v10, v11}, Lorg/eclipse/jdt/internal/compiler/lookup/ConstraintTypeFormula;->create(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;I)Lorg/eclipse/jdt/internal/compiler/lookup/ConstraintTypeFormula;

    move-result-object v9

    invoke-interface {v3, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/2addr v8, v2

    goto :goto_b

    :cond_25
    :goto_c
    iget-object v0, v6, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->returnType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    sget-object v5, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->VOID:Lorg/eclipse/jdt/internal/compiler/lookup/VoidTypeBinding;

    if-eq v0, v5, :cond_2a

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/ast/LambdaExpression;->resultExpressions()[Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    move-result-object p1

    if-nez p1, :cond_26

    move v5, v1

    goto :goto_d

    :cond_26
    array-length v5, p1

    :goto_d
    if-lt v1, v5, :cond_27

    goto :goto_e

    :cond_27
    aget-object v6, p1, v1

    invoke-virtual {v0, v2}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isProperType(Z)Z

    move-result v7

    if-eqz v7, :cond_28

    iget-object v7, v6, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->resolvedType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    if-eqz v7, :cond_28

    invoke-virtual {v6, v7, v0}, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->isConstantValueOfTypeAssignableToType(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Z

    move-result v8

    if-nez v8, :cond_29

    invoke-virtual {v7, v0}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isCompatibleWith(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Z

    move-result v8

    if-nez v8, :cond_29

    invoke-virtual {v6, v7, v0, v6, v4}, Lorg/eclipse/jdt/internal/compiler/ast/Statement;->isBoxingCompatible(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/ast/Expression;Lorg/eclipse/jdt/internal/compiler/lookup/Scope;)Z

    move-result v6

    if-nez v6, :cond_29

    sget-object p1, Lorg/eclipse/jdt/internal/compiler/lookup/ReductionResult;->FALSE:Lorg/eclipse/jdt/internal/compiler/lookup/ConstraintTypeFormula;

    return-object p1

    :cond_28
    new-instance v7, Lorg/eclipse/jdt/internal/compiler/lookup/ConstraintExpressionFormula;

    iget-boolean v8, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ConstraintExpressionFormula;->isSoft:Z

    invoke-direct {v7, v6, v0, v2, v8}, Lorg/eclipse/jdt/internal/compiler/lookup/ConstraintExpressionFormula;-><init>(Lorg/eclipse/jdt/internal/compiler/ast/Expression;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;IZ)V

    invoke-interface {v3, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_29
    add-int/2addr v1, v2

    goto :goto_d

    :cond_2a
    :goto_e
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result p1

    if-nez p1, :cond_2b

    sget-object p1, Lorg/eclipse/jdt/internal/compiler/lookup/ReductionResult;->TRUE:Lorg/eclipse/jdt/internal/compiler/lookup/ConstraintTypeFormula;

    return-object p1

    :cond_2b
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result p1

    new-array p1, p1, [Lorg/eclipse/jdt/internal/compiler/lookup/ConstraintFormula;

    invoke-interface {v3, p1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_2c
    instance-of v0, v3, Lorg/eclipse/jdt/internal/compiler/ast/ReferenceExpression;

    if-eqz v0, :cond_2d

    check-cast v3, Lorg/eclipse/jdt/internal/compiler/ast/ReferenceExpression;

    invoke-direct {p0, v3, p1}, Lorg/eclipse/jdt/internal/compiler/lookup/ConstraintExpressionFormula;->reduceReferenceExpressionCompatibility(Lorg/eclipse/jdt/internal/compiler/ast/ReferenceExpression;Lorg/eclipse/jdt/internal/compiler/lookup/InferenceContext18;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_2d
    sget-object p1, Lorg/eclipse/jdt/internal/compiler/lookup/ReductionResult;->FALSE:Lorg/eclipse/jdt/internal/compiler/lookup/ConstraintTypeFormula;

    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const/16 v1, 0x27e8

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ConstraintExpressionFormula;->left:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    const/4 v2, 0x4

    invoke-virtual {v1, v2, v0}, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->printExpression(ILjava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ReductionResult;->relation:I

    invoke-static {v1}, Lorg/eclipse/jdt/internal/compiler/lookup/ReductionResult;->relationToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ReductionResult;->right:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-virtual {p0, v0, v1}, Lorg/eclipse/jdt/internal/compiler/lookup/ConstraintFormula;->appendTypeName(Ljava/lang/StringBuffer;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)V

    const/16 v1, 0x27e9

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
