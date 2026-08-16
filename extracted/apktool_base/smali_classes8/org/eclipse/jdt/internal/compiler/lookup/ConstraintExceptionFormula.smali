.class public Lorg/eclipse/jdt/internal/compiler/lookup/ConstraintExceptionFormula;
.super Lorg/eclipse/jdt/internal/compiler/lookup/ConstraintFormula;
.source "SourceFile"


# instance fields
.field left:Lorg/eclipse/jdt/internal/compiler/ast/FunctionalExpression;


# direct methods
.method public constructor <init>(Lorg/eclipse/jdt/internal/compiler/ast/FunctionalExpression;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)V
    .locals 0

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/ConstraintFormula;-><init>()V

    iput-object p1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ConstraintExceptionFormula;->left:Lorg/eclipse/jdt/internal/compiler/ast/FunctionalExpression;

    iput-object p2, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ReductionResult;->right:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    const/4 p1, 0x7

    iput p1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ReductionResult;->relation:I

    return-void
.end method


# virtual methods
.method public bridge synthetic applySubstitution(Lorg/eclipse/jdt/internal/compiler/lookup/BoundSet;[Lorg/eclipse/jdt/internal/compiler/lookup/InferenceVariable;)Z
    .locals 0

    invoke-super {p0, p1, p2}, Lorg/eclipse/jdt/internal/compiler/lookup/ConstraintFormula;->applySubstitution(Lorg/eclipse/jdt/internal/compiler/lookup/BoundSet;[Lorg/eclipse/jdt/internal/compiler/lookup/InferenceVariable;)Z

    move-result p1

    return p1
.end method

.method public inputVariables(Lorg/eclipse/jdt/internal/compiler/lookup/InferenceContext18;)Ljava/util/Collection;
    .locals 4
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

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ConstraintExceptionFormula;->left:Lorg/eclipse/jdt/internal/compiler/ast/FunctionalExpression;

    instance-of v1, v0, Lorg/eclipse/jdt/internal/compiler/ast/LambdaExpression;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_4

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

    if-eqz v0, :cond_7

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ConstraintExceptionFormula;->left:Lorg/eclipse/jdt/internal/compiler/ast/FunctionalExpression;

    check-cast v0, Lorg/eclipse/jdt/internal/compiler/ast/LambdaExpression;

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ReductionResult;->right:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    iget-object p1, p1, Lorg/eclipse/jdt/internal/compiler/lookup/InferenceContext18;->scope:Lorg/eclipse/jdt/internal/compiler/lookup/Scope;

    invoke-virtual {v1, p1, v3}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->getSingleAbstractMethod(Lorg/eclipse/jdt/internal/compiler/lookup/Scope;Z)Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    move-result-object p1

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/ast/LambdaExpression;->argumentsTypeElided()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p1, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->parameters:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    array-length v0, v0

    :goto_0
    if-lt v2, v0, :cond_1

    goto :goto_1

    :cond_1
    iget-object v3, p1, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->parameters:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    aget-object v3, v3, v2

    invoke-virtual {v3, v1}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->collectInferenceVariables(Ljava/util/Set;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    iget-object p1, p1, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->returnType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    sget-object v0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->VOID:Lorg/eclipse/jdt/internal/compiler/lookup/VoidTypeBinding;

    if-eq p1, v0, :cond_3

    invoke-virtual {p1, v1}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->collectInferenceVariables(Ljava/util/Set;)V

    :cond_3
    return-object v1

    :cond_4
    instance-of v0, v0, Lorg/eclipse/jdt/internal/compiler/ast/ReferenceExpression;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ReductionResult;->right:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    instance-of v1, v0, Lorg/eclipse/jdt/internal/compiler/lookup/InferenceVariable;

    if-eqz v1, :cond_5

    check-cast v0, Lorg/eclipse/jdt/internal/compiler/lookup/InferenceVariable;

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    return-object p1

    :cond_5
    iget-object v1, p1, Lorg/eclipse/jdt/internal/compiler/lookup/InferenceContext18;->scope:Lorg/eclipse/jdt/internal/compiler/lookup/Scope;

    invoke-virtual {v0, v1}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isFunctionalInterface(Lorg/eclipse/jdt/internal/compiler/lookup/Scope;)Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ReductionResult;->right:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    iget-object p1, p1, Lorg/eclipse/jdt/internal/compiler/lookup/InferenceContext18;->scope:Lorg/eclipse/jdt/internal/compiler/lookup/Scope;

    invoke-virtual {v0, p1, v3}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->getSingleAbstractMethod(Lorg/eclipse/jdt/internal/compiler/lookup/Scope;Z)Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    move-result-object p1

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iget-object v1, p1, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->parameters:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    array-length v1, v1

    :goto_2
    if-lt v2, v1, :cond_6

    iget-object p1, p1, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->returnType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-virtual {p1, v0}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->collectInferenceVariables(Ljava/util/Set;)V

    return-object v0

    :cond_6
    iget-object v3, p1, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->parameters:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    aget-object v3, v3, v2

    invoke-virtual {v3, v0}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->collectInferenceVariables(Ljava/util/Set;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_7
    sget-object p1, Lorg/eclipse/jdt/internal/compiler/lookup/ConstraintFormula;->EMPTY_VARIABLE_LIST:Ljava/util/List;

    return-object p1
.end method

.method public reduce(Lorg/eclipse/jdt/internal/compiler/lookup/InferenceContext18;)Ljava/lang/Object;
    .locals 13

    iget-object v0, p1, Lorg/eclipse/jdt/internal/compiler/lookup/InferenceContext18;->scope:Lorg/eclipse/jdt/internal/compiler/lookup/Scope;

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ReductionResult;->right:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-virtual {v1, v0}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isFunctionalInterface(Lorg/eclipse/jdt/internal/compiler/lookup/Scope;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object p1, Lorg/eclipse/jdt/internal/compiler/lookup/ReductionResult;->FALSE:Lorg/eclipse/jdt/internal/compiler/lookup/ConstraintTypeFormula;

    return-object p1

    :cond_0
    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ReductionResult;->right:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->getSingleAbstractMethod(Lorg/eclipse/jdt/internal/compiler/lookup/Scope;Z)Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    move-result-object v1

    if-nez v1, :cond_1

    sget-object p1, Lorg/eclipse/jdt/internal/compiler/lookup/ReductionResult;->FALSE:Lorg/eclipse/jdt/internal/compiler/lookup/ConstraintTypeFormula;

    return-object p1

    :cond_1
    iget-object v3, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ConstraintExceptionFormula;->left:Lorg/eclipse/jdt/internal/compiler/ast/FunctionalExpression;

    instance-of v4, v3, Lorg/eclipse/jdt/internal/compiler/ast/LambdaExpression;

    const/4 v5, 0x0

    if-eqz v4, :cond_5

    check-cast v3, Lorg/eclipse/jdt/internal/compiler/ast/LambdaExpression;

    invoke-virtual {v3}, Lorg/eclipse/jdt/internal/compiler/ast/LambdaExpression;->argumentsTypeElided()Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, v1, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->parameters:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    array-length v3, v3

    move v4, v5

    :goto_0
    if-lt v4, v3, :cond_2

    goto :goto_1

    :cond_2
    iget-object v6, v1, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->parameters:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    aget-object v6, v6, v4

    invoke-virtual {v6, v2}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isProperType(Z)Z

    move-result v6

    if-nez v6, :cond_3

    sget-object p1, Lorg/eclipse/jdt/internal/compiler/lookup/ReductionResult;->FALSE:Lorg/eclipse/jdt/internal/compiler/lookup/ConstraintTypeFormula;

    return-object p1

    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_4
    :goto_1
    iget-object v3, v1, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->returnType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    sget-object v4, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->VOID:Lorg/eclipse/jdt/internal/compiler/lookup/VoidTypeBinding;

    if-eq v3, v4, :cond_8

    invoke-virtual {v3, v2}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isProperType(Z)Z

    move-result v3

    if-nez v3, :cond_8

    sget-object p1, Lorg/eclipse/jdt/internal/compiler/lookup/ReductionResult;->FALSE:Lorg/eclipse/jdt/internal/compiler/lookup/ConstraintTypeFormula;

    return-object p1

    :cond_5
    check-cast v3, Lorg/eclipse/jdt/internal/compiler/ast/ReferenceExpression;

    invoke-virtual {v3}, Lorg/eclipse/jdt/internal/compiler/ast/ReferenceExpression;->isExactMethodReference()Z

    move-result v3

    if-nez v3, :cond_8

    iget-object v3, v1, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->parameters:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    array-length v3, v3

    move v4, v5

    :goto_2
    if-lt v4, v3, :cond_6

    iget-object v3, v1, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->returnType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    sget-object v4, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->VOID:Lorg/eclipse/jdt/internal/compiler/lookup/VoidTypeBinding;

    if-eq v3, v4, :cond_8

    invoke-virtual {v3, v2}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isProperType(Z)Z

    move-result v3

    if-nez v3, :cond_8

    sget-object p1, Lorg/eclipse/jdt/internal/compiler/lookup/ReductionResult;->FALSE:Lorg/eclipse/jdt/internal/compiler/lookup/ConstraintTypeFormula;

    return-object p1

    :cond_6
    iget-object v6, v1, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->parameters:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    aget-object v6, v6, v4

    invoke-virtual {v6, v2}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isProperType(Z)Z

    move-result v6

    if-nez v6, :cond_7

    sget-object p1, Lorg/eclipse/jdt/internal/compiler/lookup/ReductionResult;->FALSE:Lorg/eclipse/jdt/internal/compiler/lookup/ConstraintTypeFormula;

    return-object p1

    :cond_7
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_8
    iget-object v1, v1, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->thrownExceptions:[Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    array-length v3, v1

    new-array v3, v3, [Lorg/eclipse/jdt/internal/compiler/lookup/InferenceVariable;

    move v4, v5

    move v6, v4

    :goto_3
    array-length v7, v1

    if-lt v4, v7, :cond_15

    if-nez v6, :cond_9

    sget-object p1, Lorg/eclipse/jdt/internal/compiler/lookup/ReductionResult;->TRUE:Lorg/eclipse/jdt/internal/compiler/lookup/ConstraintTypeFormula;

    return-object p1

    :cond_9
    iget-object v4, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ConstraintExceptionFormula;->left:Lorg/eclipse/jdt/internal/compiler/ast/FunctionalExpression;

    instance-of v7, v4, Lorg/eclipse/jdt/internal/compiler/ast/LambdaExpression;

    if-eqz v7, :cond_b

    check-cast v4, Lorg/eclipse/jdt/internal/compiler/ast/LambdaExpression;

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ReductionResult;->right:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    iget-object v7, p1, Lorg/eclipse/jdt/internal/compiler/lookup/InferenceContext18;->scope:Lorg/eclipse/jdt/internal/compiler/lookup/Scope;

    invoke-virtual {v4, v0, v7, p1}, Lorg/eclipse/jdt/internal/compiler/ast/LambdaExpression;->resolveExpressionExpecting(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/Scope;Lorg/eclipse/jdt/internal/compiler/lookup/InferenceContext18;)Lorg/eclipse/jdt/internal/compiler/ast/LambdaExpression;

    move-result-object v0

    if-nez v0, :cond_a

    sget-object p1, Lorg/eclipse/jdt/internal/compiler/lookup/ReductionResult;->TRUE:Lorg/eclipse/jdt/internal/compiler/lookup/ConstraintTypeFormula;

    return-object p1

    :cond_a
    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/ast/LambdaExpression;->getThrownExceptions()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v4

    new-array v4, v4, [Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-interface {v0, v4}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    :goto_4
    move-object v7, v0

    goto :goto_6

    :cond_b
    check-cast v4, Lorg/eclipse/jdt/internal/compiler/ast/ReferenceExpression;

    iget-object v7, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ReductionResult;->right:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-virtual {v4, v7, v0, p1}, Lorg/eclipse/jdt/internal/compiler/ast/ReferenceExpression;->resolveExpressionExpecting(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/Scope;Lorg/eclipse/jdt/internal/compiler/lookup/InferenceContext18;)Lorg/eclipse/jdt/internal/compiler/ast/ReferenceExpression;

    move-result-object v0

    const/4 v4, 0x0

    if-eqz v0, :cond_c

    iget-object v0, v0, Lorg/eclipse/jdt/internal/compiler/ast/FunctionalExpression;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    goto :goto_5

    :cond_c
    move-object v0, v4

    :goto_5
    if-eqz v0, :cond_d

    iget-object v0, v0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->thrownExceptions:[Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    goto :goto_4

    :cond_d
    move-object v7, v4

    :goto_6
    if-nez v7, :cond_e

    sget-object p1, Lorg/eclipse/jdt/internal/compiler/lookup/ReductionResult;->TRUE:Lorg/eclipse/jdt/internal/compiler/lookup/ConstraintTypeFormula;

    return-object p1

    :cond_e
    array-length v8, v7

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    move v10, v5

    :goto_7
    if-lt v10, v8, :cond_10

    :goto_8
    if-lt v5, v6, :cond_f

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result p1

    new-array p1, p1, [Lorg/eclipse/jdt/internal/compiler/lookup/ConstraintFormula;

    invoke-interface {v9, p1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_f
    iget-object v0, p1, Lorg/eclipse/jdt/internal/compiler/lookup/InferenceContext18;->currentBounds:Lorg/eclipse/jdt/internal/compiler/lookup/BoundSet;

    iget-object v0, v0, Lorg/eclipse/jdt/internal/compiler/lookup/BoundSet;->inThrows:Ljava/util/Set;

    aget-object v1, v3, v5

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/compiler/lookup/InferenceVariable;->prototype()Lorg/eclipse/jdt/internal/compiler/lookup/InferenceVariable;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_8

    :cond_10
    aget-object v0, v7, v10

    invoke-virtual {v0, v5}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isUncheckedException(Z)Z

    move-result v0

    if-eqz v0, :cond_11

    goto :goto_b

    :cond_11
    move v0, v5

    :goto_9
    array-length v4, v1

    if-lt v0, v4, :cond_13

    move v0, v5

    :goto_a
    if-lt v0, v6, :cond_12

    goto :goto_b

    :cond_12
    aget-object v4, v7, v10

    aget-object v11, v3, v0

    const/4 v12, 0x2

    invoke-static {v4, v11, v12}, Lorg/eclipse/jdt/internal/compiler/lookup/ConstraintTypeFormula;->create(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;I)Lorg/eclipse/jdt/internal/compiler/lookup/ConstraintTypeFormula;

    move-result-object v4

    invoke-interface {v9, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    :cond_13
    aget-object v4, v1, v0

    invoke-virtual {v4, v2}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isProperType(Z)Z

    move-result v4

    if-eqz v4, :cond_14

    aget-object v4, v7, v10

    aget-object v11, v1, v0

    invoke-virtual {v4, v11}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isCompatibleWith(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Z

    move-result v4

    if-eqz v4, :cond_14

    :goto_b
    add-int/lit8 v10, v10, 0x1

    goto :goto_7

    :cond_14
    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    :cond_15
    aget-object v7, v1, v4

    invoke-virtual {v7, v2}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isProperType(Z)Z

    move-result v7

    if-nez v7, :cond_16

    add-int/lit8 v7, v6, 0x1

    aget-object v8, v1, v4

    check-cast v8, Lorg/eclipse/jdt/internal/compiler/lookup/InferenceVariable;

    aput-object v8, v3, v6

    move v6, v7

    :cond_16
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_3
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const/16 v1, 0x27e8

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ConstraintExceptionFormula;->left:Lorg/eclipse/jdt/internal/compiler/ast/FunctionalExpression;

    const/4 v2, 0x4

    invoke-virtual {v1, v2, v0}, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->printExpression(ILjava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    const-string v1, " \u2286throws "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ReductionResult;->right:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-virtual {p0, v0, v1}, Lorg/eclipse/jdt/internal/compiler/lookup/ConstraintFormula;->appendTypeName(Ljava/lang/StringBuffer;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)V

    const/16 v1, 0x27e9

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
