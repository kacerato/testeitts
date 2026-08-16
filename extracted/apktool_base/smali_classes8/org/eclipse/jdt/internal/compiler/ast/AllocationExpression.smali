.class public Lorg/eclipse/jdt/internal/compiler/ast/AllocationExpression;
.super Lorg/eclipse/jdt/internal/compiler/ast/Expression;
.source "SourceFile"

# interfaces
.implements Lorg/eclipse/jdt/internal/compiler/ast/IPolyExpression;
.implements Lorg/eclipse/jdt/internal/compiler/ast/Invocation;


# instance fields
.field public argsContainCast:Z

.field public argumentTypes:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

.field public arguments:[Lorg/eclipse/jdt/internal/compiler/ast/Expression;

.field public argumentsHaveErrors:Z

.field public binding:Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

.field public closeTracker:Lorg/eclipse/jdt/internal/compiler/ast/FakedTrackingVariable;

.field public enumConstant:Lorg/eclipse/jdt/internal/compiler/ast/FieldDeclaration;

.field public expressionContext:Lorg/eclipse/jdt/internal/compiler/ast/ExpressionContext;

.field public genericTypeArguments:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

.field private inferenceContexts:Lorg/eclipse/jdt/internal/compiler/util/SimpleLookupTable;

.field public inferredReturnType:Z

.field private outerInferenceContext:Lorg/eclipse/jdt/internal/compiler/lookup/InferenceContext18;

.field public solutionsPerTargetType:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;",
            "Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;",
            ">;"
        }
    .end annotation
.end field

.field syntheticAccessor:Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

.field public type:Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

.field public typeArguments:[Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

.field protected typeExpected:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/compiler/ast/Expression;-><init>()V

    sget-object v0, Lorg/eclipse/jdt/internal/compiler/ast/ExpressionContext;->VANILLA_CONTEXT:Lorg/eclipse/jdt/internal/compiler/ast/ExpressionContext;

    iput-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/AllocationExpression;->expressionContext:Lorg/eclipse/jdt/internal/compiler/ast/ExpressionContext;

    sget-object v0, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->NO_PARAMETERS:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    iput-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/AllocationExpression;->argumentTypes:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/AllocationExpression;->argumentsHaveErrors:Z

    return-void
.end method

.method public static inferDiamondConstructor(Lorg/eclipse/jdt/internal/compiler/lookup/Scope;Lorg/eclipse/jdt/internal/compiler/lookup/InvocationSite;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;[Z)Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;
    .locals 5

    move-object v0, p2

    check-cast v0, Lorg/eclipse/jdt/internal/compiler/lookup/ParameterizedTypeBinding;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/ParameterizedTypeBinding;->genericType()Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move-result-object v0

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->enclosingType()Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move-result-object p2

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->environment()Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    move-result-object v1

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->typeVariables()[Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;

    move-result-object v2

    invoke-virtual {v1, v0, v2, p2}, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->createParameterizedType(Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/ParameterizedTypeBinding;

    move-result-object v0

    invoke-virtual {p0, v0, p2, p3, p1}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->getStaticFactory(Lorg/eclipse/jdt/internal/compiler/lookup/ParameterizedTypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/InvocationSite;)Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    move-result-object p0

    instance-of p2, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ParameterizedGenericMethodBinding;

    if-eqz p2, :cond_3

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->isValidBinding()Z

    move-result p2

    if-eqz p2, :cond_3

    move-object p2, p0

    check-cast p2, Lorg/eclipse/jdt/internal/compiler/lookup/ParameterizedGenericMethodBinding;

    iget-boolean p3, p2, Lorg/eclipse/jdt/internal/compiler/lookup/ParameterizedGenericMethodBinding;->inferredReturnType:Z

    const/4 v1, 0x0

    aput-boolean p3, p4, v1

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->original()Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    move-result-object p3

    check-cast p3, Lorg/eclipse/jdt/internal/compiler/lookup/SyntheticFactoryMethodBinding;

    invoke-virtual {p3}, Lorg/eclipse/jdt/internal/compiler/lookup/SyntheticFactoryMethodBinding;->getConstructor()Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    move-result-object p4

    invoke-virtual {p4}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->typeVariables()[Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;

    move-result-object p4

    if-eqz p4, :cond_0

    array-length p4, p4

    new-array p4, p4, [Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    goto :goto_0

    :cond_0
    sget-object p4, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->NO_TYPES:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    :goto_0
    array-length v2, p4

    if-lez v2, :cond_1

    iget-object v2, p2, Lorg/eclipse/jdt/internal/compiler/lookup/ParameterizedGenericMethodBinding;->typeArguments:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-virtual {p3}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->typeVariables()[Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;

    move-result-object v3

    array-length v3, v3

    array-length v4, p4

    sub-int/2addr v3, v4

    array-length v4, p4

    invoke-static {v2, v3, p4, v1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_1
    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->isInterface()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object p0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->returnType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    check-cast p0, Lorg/eclipse/jdt/internal/compiler/lookup/ParameterizedTypeBinding;

    new-instance p1, Lorg/eclipse/jdt/internal/compiler/lookup/ParameterizedMethodBinding;

    invoke-virtual {p3}, Lorg/eclipse/jdt/internal/compiler/lookup/SyntheticFactoryMethodBinding;->getConstructor()Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    move-result-object p2

    invoke-direct {p1, p0, p2}, Lorg/eclipse/jdt/internal/compiler/lookup/ParameterizedMethodBinding;-><init>(Lorg/eclipse/jdt/internal/compiler/lookup/ParameterizedTypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;)V

    return-object p1

    :cond_2
    iget-object p0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->returnType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    check-cast p0, Lorg/eclipse/jdt/internal/compiler/lookup/ParameterizedTypeBinding;

    iget-object p0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ParameterizedTypeBinding;->arguments:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    iget-boolean p2, p2, Lorg/eclipse/jdt/internal/compiler/lookup/ParameterizedGenericMethodBinding;->inferredWithUncheckedConversion:Z

    invoke-interface {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/InvocationSite;->invocationTargetType()Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object p1

    invoke-virtual {p3, p0, p4, p2, p1}, Lorg/eclipse/jdt/internal/compiler/lookup/SyntheticFactoryMethodBinding;->applyTypeArgumentsOnConstructor([Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;ZLorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/ParameterizedMethodBinding;

    move-result-object p0

    return-object p0

    :cond_3
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public analyseCode(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;Lorg/eclipse/jdt/internal/compiler/flow/FlowContext;Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;)Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;
    .locals 11

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/AllocationExpression;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    iget-object v0, v0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->declaringClass:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->erasure()Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    invoke-virtual {p0, v0, p1, p3}, Lorg/eclipse/jdt/internal/compiler/ast/AllocationExpression;->checkCapturedLocalInitializationIfNecessary(Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;)V

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/AllocationExpression;->arguments:[Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->compilerOptions()Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;

    move-result-object v0

    iget-boolean v0, v0, Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;->analyseResourceLeaks:Z

    if-eqz v0, :cond_0

    iget-object v3, p0, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->resolvedType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    instance-of v4, v3, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    if-eqz v4, :cond_0

    check-cast v3, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->hasTypeBit(I)Z

    move-result v3

    if-eqz v3, :cond_0

    move v3, v2

    goto :goto_0

    :cond_0
    move v3, v1

    :goto_0
    iget-object v4, p0, Lorg/eclipse/jdt/internal/compiler/ast/AllocationExpression;->arguments:[Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    array-length v4, v4

    move v5, v1

    :goto_1
    if-lt v5, v4, :cond_1

    iget-object v9, p0, Lorg/eclipse/jdt/internal/compiler/ast/AllocationExpression;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    iget-object v10, p0, Lorg/eclipse/jdt/internal/compiler/ast/AllocationExpression;->arguments:[Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    move-object v5, p0

    move-object v6, p1

    move-object v7, p2

    move-object v8, p3

    invoke-virtual/range {v5 .. v10}, Lorg/eclipse/jdt/internal/compiler/ast/Statement;->analyseArguments(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;Lorg/eclipse/jdt/internal/compiler/flow/FlowContext;Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;[Lorg/eclipse/jdt/internal/compiler/ast/Expression;)V

    goto :goto_2

    :cond_1
    iget-object v6, p0, Lorg/eclipse/jdt/internal/compiler/ast/AllocationExpression;->arguments:[Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    aget-object v6, v6, v5

    invoke-virtual {v6, p1, p2, p3}, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->analyseCode(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;Lorg/eclipse/jdt/internal/compiler/flow/FlowContext;Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;)Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;

    move-result-object p3

    invoke-virtual {p3}, Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;->unconditionalInits()Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;

    move-result-object p3

    if-eqz v0, :cond_2

    if-nez v3, :cond_2

    iget-object v6, p0, Lorg/eclipse/jdt/internal/compiler/ast/AllocationExpression;->arguments:[Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    aget-object v6, v6, v5

    invoke-static {p1, v6, p3, p2, v1}, Lorg/eclipse/jdt/internal/compiler/ast/FakedTrackingVariable;->markPassedToOutside(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;Lorg/eclipse/jdt/internal/compiler/ast/Expression;Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;Lorg/eclipse/jdt/internal/compiler/flow/FlowContext;Z)Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;

    move-result-object p3

    :cond_2
    iget-object v6, p0, Lorg/eclipse/jdt/internal/compiler/ast/AllocationExpression;->arguments:[Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    aget-object v6, v6, v5

    invoke-virtual {v6, p1, p2, p3}, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->checkNPEbyUnboxing(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;Lorg/eclipse/jdt/internal/compiler/flow/FlowContext;Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_3
    :goto_2
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/AllocationExpression;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    iget-object v0, v0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->thrownExceptions:[Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    array-length v3, v0

    if-eqz v3, :cond_5

    iget v3, p0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->bits:I

    const/high16 v4, 0x10000

    and-int/2addr v3, v4

    if-eqz v3, :cond_4

    iget-object v3, p0, Lorg/eclipse/jdt/internal/compiler/ast/AllocationExpression;->genericTypeArguments:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    if-nez v3, :cond_4

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->environment()Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    move-result-object v0

    iget-object v3, p0, Lorg/eclipse/jdt/internal/compiler/ast/AllocationExpression;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    iget-object v3, v3, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->thrownExceptions:[Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    invoke-virtual {v0, v3, v2, v2}, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->convertToRawTypes([Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;ZZ)[Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move-result-object v0

    :cond_4
    invoke-virtual {p3}, Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;->unconditionalCopy()Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;

    move-result-object v2

    invoke-virtual {p2, v0, p0, v2, p1}, Lorg/eclipse/jdt/internal/compiler/flow/FlowContext;->checkExceptionHandlers([Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;)V

    :cond_5
    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->compilerOptions()Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;

    move-result-object v0

    iget-boolean v0, v0, Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;->analyseResourceLeaks:Z

    if-eqz v0, :cond_6

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->resolvedType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-static {v0}, Lorg/eclipse/jdt/internal/compiler/ast/FakedTrackingVariable;->isAnyCloseable(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-static {p1, p3, p0}, Lorg/eclipse/jdt/internal/compiler/ast/FakedTrackingVariable;->analyseCloseableAllocation(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;Lorg/eclipse/jdt/internal/compiler/ast/AllocationExpression;)V

    :cond_6
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/AllocationExpression;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    iget-object v0, v0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->declaringClass:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->methodScope()Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;

    move-result-object v2

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isMemberType()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->isStatic()Z

    move-result v3

    if-eqz v3, :cond_8

    :cond_7
    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isLocalType()Z

    move-result v0

    if-eqz v0, :cond_9

    iget-boolean v0, v2, Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;->isStatic:Z

    if-nez v0, :cond_9

    invoke-virtual {v2}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;->isLambdaScope()Z

    move-result v0

    if-eqz v0, :cond_9

    :cond_8
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/AllocationExpression;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    iget-object v0, v0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->declaringClass:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->enclosingType()Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move-result-object v0

    invoke-virtual {p1, v0, v1}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->tagAsAccessingEnclosingInstanceStateOf(Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;Z)V

    :cond_9
    invoke-virtual {p0, p1, p3}, Lorg/eclipse/jdt/internal/compiler/ast/AllocationExpression;->manageEnclosingInstanceAccessIfNecessary(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;)V

    invoke-virtual {p0, p1, p3}, Lorg/eclipse/jdt/internal/compiler/ast/AllocationExpression;->manageSyntheticAccessIfNecessary(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;)V

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/flow/FlowContext;->recordAbruptExit()V

    return-object p3
.end method

.method public arguments()[Lorg/eclipse/jdt/internal/compiler/ast/Expression;
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/AllocationExpression;->arguments:[Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    return-object v0
.end method

.method public binding()Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/AllocationExpression;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    return-object v0
.end method

.method public checkCapturedLocalInitializationIfNecessary(Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;)V
    .locals 4

    iget-wide v0, p1, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->tagBits:J

    const-wide/16 v2, 0x834

    and-long/2addr v0, v2

    const-wide/16 v2, 0x814

    cmp-long v0, v0, v2

    if-nez v0, :cond_3

    invoke-virtual {p2, p1}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->isDefinedInType(Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;)Z

    move-result v0

    if-nez v0, :cond_3

    check-cast p1, Lorg/eclipse/jdt/internal/compiler/lookup/NestedTypeBinding;

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/NestedTypeBinding;->syntheticOuterLocalVariables()[Lorg/eclipse/jdt/internal/compiler/lookup/SyntheticArgumentBinding;

    move-result-object p1

    if-eqz p1, :cond_3

    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-lt v1, v0, :cond_0

    goto :goto_2

    :cond_0
    aget-object v2, p1, v1

    iget-object v2, v2, Lorg/eclipse/jdt/internal/compiler/lookup/SyntheticArgumentBinding;->actualOuterLocalVariable:Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    iget-object v3, v2, Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;->declaration:Lorg/eclipse/jdt/internal/compiler/ast/LocalDeclaration;

    if-eqz v3, :cond_2

    invoke-virtual {p3, v2}, Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;->isDefinitelyAssigned(Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;)Z

    move-result v3

    if-nez v3, :cond_2

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object v3

    invoke-virtual {v3, v2, p0, p2}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->uninitializedLocalVariable(Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;Lorg/eclipse/jdt/internal/compiler/lookup/Scope;)V

    :cond_2
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    :goto_2
    return-void
.end method

.method public checkIllegalNullAnnotation(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)V
    .locals 4

    if-eqz p2, :cond_0

    iget-wide v0, p2, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->tagBits:J

    const-wide/high16 v2, 0x180000000000000L

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long p2, v0, v2

    if-eqz p2, :cond_0

    iget-object p2, p0, Lorg/eclipse/jdt/internal/compiler/ast/AllocationExpression;->type:Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    invoke-virtual {p2, v0, v1}, Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;->findAnnotation(J)Lorg/eclipse/jdt/internal/compiler/ast/Annotation;

    move-result-object p2

    if-eqz p2, :cond_0

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object p1

    invoke-virtual {p1, p2}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->nullAnnotationUnsupportedLocation(Lorg/eclipse/jdt/internal/compiler/ast/Annotation;)V

    :cond_0
    return-void
.end method

.method public checkTypeArgumentRedundancy(Lorg/eclipse/jdt/internal/compiler/lookup/ParameterizedTypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;)V
    .locals 5

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object v0

    const v1, 0x1000374

    invoke-virtual {v0, v1}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->computeSeverity(I)I

    move-result v0

    const/16 v1, 0x100

    if-eq v0, v1, :cond_a

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->compilerOptions()Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;

    move-result-object v0

    iget-wide v0, v0, Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;->sourceLevel:J

    const-wide/32 v2, 0x330000

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    goto/16 :goto_3

    :cond_0
    iget-object v0, p1, Lorg/eclipse/jdt/internal/compiler/lookup/ParameterizedTypeBinding;->arguments:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    if-nez v0, :cond_1

    return-void

    :cond_1
    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/ast/AllocationExpression;->genericTypeArguments:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    if-eqz v1, :cond_2

    return-void

    :cond_2
    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/ast/AllocationExpression;->type:Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    if-nez v1, :cond_3

    return-void

    :cond_3
    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/ast/AllocationExpression;->argumentTypes:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    sget-object v2, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->NO_PARAMETERS:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    const/4 v3, 0x0

    if-ne v1, v2, :cond_6

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/ast/AllocationExpression;->typeExpected:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    instance-of v2, v1, Lorg/eclipse/jdt/internal/compiler/lookup/ParameterizedTypeBinding;

    if-eqz v2, :cond_6

    check-cast v1, Lorg/eclipse/jdt/internal/compiler/lookup/ParameterizedTypeBinding;

    iget-object v2, v1, Lorg/eclipse/jdt/internal/compiler/lookup/ParameterizedTypeBinding;->arguments:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    if-eqz v2, :cond_6

    array-length v0, v0

    array-length v2, v2

    if-ne v0, v2, :cond_6

    move v0, v3

    :goto_0
    iget-object v2, p1, Lorg/eclipse/jdt/internal/compiler/lookup/ParameterizedTypeBinding;->arguments:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    array-length v4, v2

    if-lt v0, v4, :cond_4

    goto :goto_1

    :cond_4
    aget-object v2, v2, v0

    iget-object v4, v1, Lorg/eclipse/jdt/internal/compiler/lookup/ParameterizedTypeBinding;->arguments:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    aget-object v4, v4, v0

    invoke-static {v2, v4}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->notEquals(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Z

    move-result v2

    if-eqz v2, :cond_5

    :goto_1
    iget-object v1, p1, Lorg/eclipse/jdt/internal/compiler/lookup/ParameterizedTypeBinding;->arguments:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    array-length v1, v1

    if-ne v0, v1, :cond_6

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object p2

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/AllocationExpression;->type:Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    iget-object p1, p1, Lorg/eclipse/jdt/internal/compiler/lookup/ParameterizedTypeBinding;->arguments:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-virtual {p2, v0, p1}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->redundantSpecificationOfTypeArguments(Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)V

    return-void

    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_6
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/AllocationExpression;->type:Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    iget v1, v0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->bits:I

    const/high16 v2, 0x80000

    or-int/2addr v2, v1

    :try_start_0
    iput v2, v0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->bits:I

    invoke-virtual {p0, p1, p2}, Lorg/eclipse/jdt/internal/compiler/ast/AllocationExpression;->inferElidedTypes(Lorg/eclipse/jdt/internal/compiler/lookup/ParameterizedTypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/Scope;)[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/ast/AllocationExpression;->type:Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    iput v1, v2, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->bits:I

    if-nez v0, :cond_7

    return-void

    :cond_7
    :goto_2
    array-length v1, v0

    if-lt v3, v1, :cond_8

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object p2

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/AllocationExpression;->type:Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    iget-object p1, p1, Lorg/eclipse/jdt/internal/compiler/lookup/ParameterizedTypeBinding;->arguments:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-virtual {p2, v0, p1}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->redundantSpecificationOfTypeArguments(Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)V

    return-void

    :cond_8
    aget-object v1, v0, v3

    iget-object v2, p1, Lorg/eclipse/jdt/internal/compiler/lookup/ParameterizedTypeBinding;->arguments:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    aget-object v2, v2, v3

    invoke-static {v1, v2}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->notEquals(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Z

    move-result v1

    if-eqz v1, :cond_9

    return-void

    :cond_9
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :catchall_0
    move-exception p1

    iget-object p2, p0, Lorg/eclipse/jdt/internal/compiler/ast/AllocationExpression;->type:Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    iput v1, p2, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->bits:I

    throw p1

    :cond_a
    :goto_3
    return-void
.end method

.method public cleanUpInferenceContexts()V
    .locals 4

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/AllocationExpression;->inferenceContexts:Lorg/eclipse/jdt/internal/compiler/util/SimpleLookupTable;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, v0, Lorg/eclipse/jdt/internal/compiler/util/SimpleLookupTable;->valueTable:[Ljava/lang/Object;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-lt v2, v1, :cond_1

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/AllocationExpression;->inferenceContexts:Lorg/eclipse/jdt/internal/compiler/util/SimpleLookupTable;

    iput-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/AllocationExpression;->outerInferenceContext:Lorg/eclipse/jdt/internal/compiler/lookup/InferenceContext18;

    iput-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/AllocationExpression;->solutionsPerTargetType:Ljava/util/HashMap;

    return-void

    :cond_1
    aget-object v3, v0, v2

    if-eqz v3, :cond_2

    check-cast v3, Lorg/eclipse/jdt/internal/compiler/lookup/InferenceContext18;

    invoke-virtual {v3}, Lorg/eclipse/jdt/internal/compiler/lookup/InferenceContext18;->cleanUp()V

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public enclosingInstance()Lorg/eclipse/jdt/internal/compiler/ast/Expression;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public freshInferenceContext(Lorg/eclipse/jdt/internal/compiler/lookup/Scope;)Lorg/eclipse/jdt/internal/compiler/lookup/InferenceContext18;
    .locals 3

    new-instance v0, Lorg/eclipse/jdt/internal/compiler/lookup/InferenceContext18;

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/ast/AllocationExpression;->arguments:[Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/ast/AllocationExpression;->outerInferenceContext:Lorg/eclipse/jdt/internal/compiler/lookup/InferenceContext18;

    invoke-direct {v0, p1, v1, p0, v2}, Lorg/eclipse/jdt/internal/compiler/lookup/InferenceContext18;-><init>(Lorg/eclipse/jdt/internal/compiler/lookup/Scope;[Lorg/eclipse/jdt/internal/compiler/ast/Expression;Lorg/eclipse/jdt/internal/compiler/lookup/InvocationSite;Lorg/eclipse/jdt/internal/compiler/lookup/InferenceContext18;)V

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

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/ast/AllocationExpression;->enclosingInstance()Lorg/eclipse/jdt/internal/compiler/ast/Expression;

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
    if-lt v4, v2, :cond_b

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/ast/AllocationExpression;->syntheticAccessor:Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/ast/AllocationExpression;->typeArguments:[Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    invoke-virtual {p2, v6, v1, v5, v2}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->invoke(BLorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;[Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;)V

    :goto_3
    if-eqz p3, :cond_8

    iget p1, p0, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->implicitConversion:I

    invoke-virtual {p2, p1}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->generateImplicitConversion(I)V

    goto :goto_4

    :cond_8
    if-eqz v3, :cond_a

    iget p3, p0, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->implicitConversion:I

    invoke-virtual {p2, p3}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->generateImplicitConversion(I)V

    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->postConversionType(Lorg/eclipse/jdt/internal/compiler/lookup/Scope;)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object p1

    iget p1, p1, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->id:I

    const/4 p3, 0x7

    if-eq p1, p3, :cond_9

    const/16 p3, 0x8

    if-eq p1, p3, :cond_9

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->pop()V

    goto :goto_4

    :cond_9
    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->pop2()V

    :cond_a
    :goto_4
    iget p1, p0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceStart:I

    invoke-virtual {p2, v0, p1}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->recordPositionsFrom(II)V

    return-void

    :cond_b
    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->aconst_null()V

    add-int/lit8 v4, v4, 0x1

    goto :goto_2
.end method

.method public genericTypeArguments()[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/AllocationExpression;->genericTypeArguments:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    return-object v0
.end method

.method public getExpressionContext()Lorg/eclipse/jdt/internal/compiler/ast/ExpressionContext;
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/AllocationExpression;->expressionContext:Lorg/eclipse/jdt/internal/compiler/ast/ExpressionContext;

    return-object v0
.end method

.method public getInferenceContext(Lorg/eclipse/jdt/internal/compiler/lookup/ParameterizedMethodBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/InferenceContext18;
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/AllocationExpression;->inferenceContexts:Lorg/eclipse/jdt/internal/compiler/util/SimpleLookupTable;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    invoke-virtual {v0, p1}, Lorg/eclipse/jdt/internal/compiler/util/SimpleLookupTable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/eclipse/jdt/internal/compiler/lookup/InferenceContext18;

    return-object p1
.end method

.method public inferConstructorOfElidedParameterizedType(Lorg/eclipse/jdt/internal/compiler/lookup/Scope;)Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;
    .locals 7

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/AllocationExpression;->typeExpected:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/ast/AllocationExpression;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/ast/AllocationExpression;->solutionsPerTargetType:Ljava/util/HashMap;

    if-eqz v1, :cond_0

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    return-object v0

    :cond_1
    const/4 v0, 0x1

    new-array v1, v0, [Z

    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->resolvedType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    iget-object v3, p0, Lorg/eclipse/jdt/internal/compiler/ast/AllocationExpression;->argumentTypes:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-static {p1, p0, v2, v3, v1}, Lorg/eclipse/jdt/internal/compiler/ast/AllocationExpression;->inferDiamondConstructor(Lorg/eclipse/jdt/internal/compiler/lookup/Scope;Lorg/eclipse/jdt/internal/compiler/lookup/InvocationSite;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;[Z)Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    move-result-object v2

    if-eqz v2, :cond_3

    const/4 v3, 0x0

    aget-boolean v1, v1, v3

    iput-boolean v1, p0, Lorg/eclipse/jdt/internal/compiler/ast/AllocationExpression;->inferredReturnType:Z

    instance-of v1, v2, Lorg/eclipse/jdt/internal/compiler/lookup/ParameterizedGenericMethodBinding;

    if-eqz v1, :cond_2

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->compilerOptions()Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;

    move-result-object v1

    iget-wide v3, v1, Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;->sourceLevel:J

    const-wide/32 v5, 0x340000

    cmp-long v1, v3, v5

    if-ltz v1, :cond_2

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/ast/AllocationExpression;->expressionContext:Lorg/eclipse/jdt/internal/compiler/ast/ExpressionContext;

    sget-object v3, Lorg/eclipse/jdt/internal/compiler/ast/ExpressionContext;->INVOCATION_CONTEXT:Lorg/eclipse/jdt/internal/compiler/ast/ExpressionContext;

    if-ne v1, v3, :cond_2

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/ast/AllocationExpression;->typeExpected:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    if-nez v1, :cond_2

    invoke-virtual {v2}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->shallowOriginal()Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    move-result-object v1

    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/ast/AllocationExpression;->argumentTypes:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-static {v1, v2, p1, p0}, Lorg/eclipse/jdt/internal/compiler/lookup/ParameterizedGenericMethodBinding;->computeCompatibleMethod18(Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/Scope;Lorg/eclipse/jdt/internal/compiler/lookup/InvocationSite;)Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    move-result-object v2

    :cond_2
    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/ast/AllocationExpression;->typeExpected:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    if-eqz p1, :cond_3

    invoke-virtual {p1, v0}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isProperType(Z)Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/ast/AllocationExpression;->typeExpected:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-virtual {p0, p1, v2}, Lorg/eclipse/jdt/internal/compiler/ast/AllocationExpression;->registerResult(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;)V

    :cond_3
    return-object v2
.end method

.method public inferElidedTypes(Lorg/eclipse/jdt/internal/compiler/lookup/ParameterizedTypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/Scope;)[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;
    .locals 3

    .line 2
    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/ParameterizedTypeBinding;->genericType()Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move-result-object v0

    .line 3
    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/ParameterizedTypeBinding;->enclosingType()Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move-result-object p1

    .line 4
    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->environment()Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    move-result-object v1

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->typeVariables()[Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;

    move-result-object v2

    invoke-virtual {v1, v0, v2, p1}, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->createParameterizedType(Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/ParameterizedTypeBinding;

    move-result-object v0

    .line 5
    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/ast/AllocationExpression;->argumentTypes:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-virtual {p2, v0, p1, v1, p0}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->getStaticFactory(Lorg/eclipse/jdt/internal/compiler/lookup/ParameterizedTypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/InvocationSite;)Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    move-result-object p1

    .line 6
    instance-of p2, p1, Lorg/eclipse/jdt/internal/compiler/lookup/ParameterizedGenericMethodBinding;

    if-eqz p2, :cond_0

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->isValidBinding()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 7
    move-object p2, p1

    check-cast p2, Lorg/eclipse/jdt/internal/compiler/lookup/ParameterizedGenericMethodBinding;

    .line 8
    iget-boolean p2, p2, Lorg/eclipse/jdt/internal/compiler/lookup/ParameterizedGenericMethodBinding;->inferredReturnType:Z

    iput-boolean p2, p0, Lorg/eclipse/jdt/internal/compiler/ast/AllocationExpression;->inferredReturnType:Z

    .line 9
    iget-object p1, p1, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->returnType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    check-cast p1, Lorg/eclipse/jdt/internal/compiler/lookup/ParameterizedTypeBinding;

    iget-object p1, p1, Lorg/eclipse/jdt/internal/compiler/lookup/ParameterizedTypeBinding;->arguments:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public inferElidedTypes(Lorg/eclipse/jdt/internal/compiler/lookup/Scope;)[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->resolvedType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    check-cast v0, Lorg/eclipse/jdt/internal/compiler/lookup/ParameterizedTypeBinding;

    invoke-virtual {p0, v0, p1}, Lorg/eclipse/jdt/internal/compiler/ast/AllocationExpression;->inferElidedTypes(Lorg/eclipse/jdt/internal/compiler/lookup/ParameterizedTypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/Scope;)[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object p1

    return-object p1
.end method

.method public invocationTargetType()Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/AllocationExpression;->typeExpected:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    return-object v0
.end method

.method public isBoxingCompatibleWith(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/Scope;)Z
    .locals 1

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/ast/AllocationExpression;->isPolyExpression()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p2, p1}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->boxing(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lorg/eclipse/jdt/internal/compiler/ast/AllocationExpression;->isCompatibleWith(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/Scope;)Z

    move-result p1

    :goto_0
    return p1
.end method

.method public isCompatibleWith(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/Scope;)Z
    .locals 4

    iget-boolean v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/AllocationExpression;->argumentsHaveErrors:Z

    const/4 v1, 0x0

    if-nez v0, :cond_5

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/AllocationExpression;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->isValidBinding()Z

    move-result v0

    if-eqz v0, :cond_5

    if-eqz p1, :cond_5

    if-nez p2, :cond_0

    goto :goto_3

    :cond_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->resolvedType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/ast/AllocationExpression;->isPolyExpression()Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/AllocationExpression;->typeExpected:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    :try_start_0
    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/ast/AllocationExpression;->solutionsPerTargetType:Ljava/util/HashMap;

    if-eqz v2, :cond_1

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_0
    if-nez v2, :cond_3

    iput-object p1, p0, Lorg/eclipse/jdt/internal/compiler/ast/AllocationExpression;->typeExpected:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-virtual {p0, p2}, Lorg/eclipse/jdt/internal/compiler/ast/AllocationExpression;->inferConstructorOfElidedParameterizedType(Lorg/eclipse/jdt/internal/compiler/lookup/Scope;)Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->isValidBinding()Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v3, :cond_3

    :cond_2
    iput-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/AllocationExpression;->typeExpected:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    return v1

    :cond_3
    :try_start_1
    iget-object v2, v2, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->declaringClass:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iput-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/AllocationExpression;->typeExpected:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-object v0, v2

    goto :goto_2

    :goto_1
    iput-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/AllocationExpression;->typeExpected:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    throw p1

    :cond_4
    :goto_2
    if-eqz v0, :cond_5

    invoke-virtual {v0, p1, p2}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isCompatibleWith(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/Scope;)Z

    move-result p1

    if-eqz p1, :cond_5

    const/4 p1, 0x1

    return p1

    :cond_5
    :goto_3
    return v1
.end method

.method public isPolyExpression()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/AllocationExpression;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/internal/compiler/ast/AllocationExpression;->isPolyExpression(Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;)Z

    move-result v0

    return v0
.end method

.method public isPolyExpression(Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;)Z
    .locals 1

    .line 2
    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/ast/AllocationExpression;->expressionContext:Lorg/eclipse/jdt/internal/compiler/ast/ExpressionContext;

    sget-object v0, Lorg/eclipse/jdt/internal/compiler/ast/ExpressionContext;->ASSIGNMENT_CONTEXT:Lorg/eclipse/jdt/internal/compiler/ast/ExpressionContext;

    if-eq p1, v0, :cond_0

    sget-object v0, Lorg/eclipse/jdt/internal/compiler/ast/ExpressionContext;->INVOCATION_CONTEXT:Lorg/eclipse/jdt/internal/compiler/ast/ExpressionContext;

    if-ne p1, v0, :cond_1

    .line 3
    :cond_0
    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/ast/AllocationExpression;->type:Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    if-eqz p1, :cond_1

    iget p1, p1, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->bits:I

    const/high16 v0, 0x80000

    and-int/2addr p1, v0

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public isSuperAccess()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isTypeAccess()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public manageEnclosingInstanceAccessIfNecessary(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;)V
    .locals 2

    iget p2, p2, Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;->tagBits:I

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    return-void

    :cond_0
    iget-object p2, p0, Lorg/eclipse/jdt/internal/compiler/ast/AllocationExpression;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    iget-object p2, p2, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->declaringClass:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->erasure()Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object p2

    check-cast p2, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isNestedType()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->enclosingSourceType()Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;

    move-result-object v0

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isLocalType()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->isLambdaSubscope()Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_1
    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isLocalType()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    check-cast p2, Lorg/eclipse/jdt/internal/compiler/lookup/LocalTypeBinding;

    invoke-virtual {p2, p1, v1}, Lorg/eclipse/jdt/internal/compiler/lookup/LocalTypeBinding;->addInnerEmulationDependent(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;Z)V

    goto :goto_0

    :cond_2
    invoke-virtual {p1, p2, v1}, Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;->propagateInnerEmulation(Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;Z)V

    :cond_3
    :goto_0
    return-void
.end method

.method public manageSyntheticAccessIfNecessary(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;)V
    .locals 6

    iget p2, p2, Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;->tagBits:I

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    return-void

    :cond_0
    iget-object p2, p0, Lorg/eclipse/jdt/internal/compiler/ast/AllocationExpression;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->original()Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    move-result-object p2

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->isPrivate()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->enclosingSourceType()Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;

    move-result-object v0

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/ast/AllocationExpression;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    iget-object v1, v1, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->declaringClass:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    invoke-virtual {v0, v1}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->isNestmateOf(Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->enclosingSourceType()Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;

    move-result-object v0

    iget-object v1, p2, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->declaringClass:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    invoke-static {v0, v1}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->notEquals(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-wide v2, v1, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->tagBits:J

    const-wide/16 v4, 0x10

    and-long/2addr v2, v4

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->compilerOptions()Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;

    move-result-object v0

    iget-wide v2, v0, Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;->complianceLevel:J

    const-wide/32 v4, 0x300000

    cmp-long v0, v2, v4

    if-ltz v0, :cond_1

    iget-wide v0, p2, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->tagBits:J

    const-wide/16 v2, 0x200

    or-long/2addr v0, v2

    iput-wide v0, p2, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->tagBits:J

    goto :goto_0

    :cond_1
    check-cast v1, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/ast/AllocationExpression;->isSuperAccess()Z

    move-result v0

    invoke-virtual {v1, p2, v0}, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->addSyntheticMethod(Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;Z)Lorg/eclipse/jdt/internal/compiler/lookup/SyntheticMethodBinding;

    move-result-object v0

    iput-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/AllocationExpression;->syntheticAccessor:Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object p1

    invoke-virtual {p1, p2, p0}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->needToEmulateMethodAccess(Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public nameSourceEnd()I
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/AllocationExpression;->enumConstant:Lorg/eclipse/jdt/internal/compiler/ast/FieldDeclaration;

    if-eqz v0, :cond_0

    iget v0, v0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceEnd:I

    return v0

    :cond_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/AllocationExpression;->type:Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    iget v0, v0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceEnd:I

    return v0
.end method

.method public nameSourceStart()I
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/AllocationExpression;->enumConstant:Lorg/eclipse/jdt/internal/compiler/ast/FieldDeclaration;

    if-eqz v0, :cond_0

    iget v0, v0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceStart:I

    return v0

    :cond_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/AllocationExpression;->type:Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    iget v0, v0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceStart:I

    return v0
.end method

.method public printExpression(ILjava/lang/StringBuffer;)Ljava/lang/StringBuffer;
    .locals 4

    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/ast/AllocationExpression;->type:Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    if-eqz p1, :cond_0

    const-string p1, "new "

    invoke-virtual {p2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_0
    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/ast/AllocationExpression;->typeArguments:[Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    const-string v0, ", "

    const/4 v1, 0x0

    if-eqz p1, :cond_2

    const/16 p1, 0x3c

    invoke-virtual {p2, p1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/ast/AllocationExpression;->typeArguments:[Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    array-length p1, p1

    add-int/lit8 p1, p1, -0x1

    move v2, v1

    :goto_0
    if-lt v2, p1, :cond_1

    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/ast/AllocationExpression;->typeArguments:[Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    aget-object p1, v2, p1

    invoke-virtual {p1, v1, p2}, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->print(ILjava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    const/16 p1, 0x3e

    invoke-virtual {p2, p1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_1

    :cond_1
    iget-object v3, p0, Lorg/eclipse/jdt/internal/compiler/ast/AllocationExpression;->typeArguments:[Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    aget-object v3, v3, v2

    invoke-virtual {v3, v1, p2}, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->print(ILjava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/ast/AllocationExpression;->type:Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    if-eqz p1, :cond_3

    invoke-virtual {p1, v1, p2}, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->printExpression(ILjava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    :cond_3
    const/16 p1, 0x28

    invoke-virtual {p2, p1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/ast/AllocationExpression;->arguments:[Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    if-eqz p1, :cond_6

    move p1, v1

    :goto_2
    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/ast/AllocationExpression;->arguments:[Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    array-length v2, v2

    if-lt p1, v2, :cond_4

    goto :goto_3

    :cond_4
    if-lez p1, :cond_5

    invoke-virtual {p2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_5
    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/ast/AllocationExpression;->arguments:[Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    aget-object v2, v2, p1

    invoke-virtual {v2, v1, p2}, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->printExpression(ILjava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    add-int/lit8 p1, p1, 0x1

    goto :goto_2

    :cond_6
    :goto_3
    const/16 p1, 0x29

    invoke-virtual {p2, p1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    return-object p2
.end method

.method public registerInferenceContext(Lorg/eclipse/jdt/internal/compiler/lookup/ParameterizedGenericMethodBinding;Lorg/eclipse/jdt/internal/compiler/lookup/InferenceContext18;)V
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/AllocationExpression;->inferenceContexts:Lorg/eclipse/jdt/internal/compiler/util/SimpleLookupTable;

    if-nez v0, :cond_0

    new-instance v0, Lorg/eclipse/jdt/internal/compiler/util/SimpleLookupTable;

    invoke-direct {v0}, Lorg/eclipse/jdt/internal/compiler/util/SimpleLookupTable;-><init>()V

    iput-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/AllocationExpression;->inferenceContexts:Lorg/eclipse/jdt/internal/compiler/util/SimpleLookupTable;

    :cond_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/AllocationExpression;->inferenceContexts:Lorg/eclipse/jdt/internal/compiler/util/SimpleLookupTable;

    invoke-virtual {v0, p1, p2}, Lorg/eclipse/jdt/internal/compiler/util/SimpleLookupTable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public registerResult(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;)V
    .locals 1

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->isConstructor()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/AllocationExpression;->solutionsPerTargetType:Ljava/util/HashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/AllocationExpression;->solutionsPerTargetType:Ljava/util/HashMap;

    :cond_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/AllocationExpression;->solutionsPerTargetType:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-void
.end method

.method public resolveType(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;
    .locals 15

    move-object v8, p0

    move-object/from16 v9, p1

    iget-object v0, v8, Lorg/eclipse/jdt/internal/compiler/ast/AllocationExpression;->type:Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    const/4 v10, 0x0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget v0, v0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->bits:I

    const/high16 v2, 0x80000

    and-int/2addr v0, v2

    if-eqz v0, :cond_0

    move v11, v1

    goto :goto_0

    :cond_0
    move v11, v10

    :goto_0
    invoke-virtual/range {p1 .. p1}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->compilerOptions()Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;

    move-result-object v12

    iget-wide v2, v12, Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;->sourceLevel:J

    iget-object v0, v8, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->constant:Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    sget-object v4, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->NotAConstant:Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    const/4 v5, 0x2

    const/4 v6, 0x0

    if-eq v0, v4, :cond_1c

    iput-object v4, v8, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->constant:Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    iget-object v0, v8, Lorg/eclipse/jdt/internal/compiler/ast/AllocationExpression;->type:Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    if-nez v0, :cond_1

    invoke-virtual/range {p1 .. p1}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->enclosingReceiverType()Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move-result-object v0

    iput-object v0, v8, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->resolvedType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    goto :goto_1

    :cond_1
    invoke-virtual {v0, v9, v1}, Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;->resolveType(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;Z)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v0

    iput-object v0, v8, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->resolvedType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    :goto_1
    iget-object v0, v8, Lorg/eclipse/jdt/internal/compiler/ast/AllocationExpression;->type:Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    if-eqz v0, :cond_7

    iget-object v0, v8, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->resolvedType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-virtual {p0, v9, v0}, Lorg/eclipse/jdt/internal/compiler/ast/AllocationExpression;->checkIllegalNullAnnotation(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)V

    iget-object v0, v8, Lorg/eclipse/jdt/internal/compiler/ast/AllocationExpression;->type:Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    instance-of v0, v0, Lorg/eclipse/jdt/internal/compiler/ast/ParameterizedQualifiedTypeReference;

    if-eqz v0, :cond_7

    iget-object v0, v8, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->resolvedType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    check-cast v0, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    if-nez v0, :cond_2

    return-object v0

    :cond_2
    iget v4, v0, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->modifiers:I

    and-int/lit8 v4, v4, 0x8

    if-eqz v4, :cond_3

    goto :goto_3

    :cond_3
    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isRawType()Z

    move-result v4

    if-eqz v4, :cond_4

    goto :goto_3

    :cond_4
    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->enclosingType()Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move-result-object v0

    if-nez v0, :cond_2

    iget-object v0, v8, Lorg/eclipse/jdt/internal/compiler/ast/AllocationExpression;->type:Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    move-object v4, v0

    check-cast v4, Lorg/eclipse/jdt/internal/compiler/ast/ParameterizedQualifiedTypeReference;

    iget-object v0, v4, Lorg/eclipse/jdt/internal/compiler/ast/ParameterizedQualifiedTypeReference;->typeArguments:[[Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    array-length v0, v0

    sub-int/2addr v0, v5

    :goto_2
    if-gez v0, :cond_5

    goto :goto_3

    :cond_5
    iget-object v7, v4, Lorg/eclipse/jdt/internal/compiler/ast/ParameterizedQualifiedTypeReference;->typeArguments:[[Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    aget-object v7, v7, v0

    if-eqz v7, :cond_6

    invoke-virtual/range {p1 .. p1}, Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object v0

    iget-object v4, v8, Lorg/eclipse/jdt/internal/compiler/ast/AllocationExpression;->type:Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    iget-object v7, v8, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->resolvedType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-virtual {v0, v4, v7}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->illegalQualifiedParameterizedTypeAllocation(Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)V

    goto :goto_3

    :cond_6
    add-int/lit8 v0, v0, -0x1

    goto :goto_2

    :cond_7
    :goto_3
    iget-object v0, v8, Lorg/eclipse/jdt/internal/compiler/ast/AllocationExpression;->typeArguments:[Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    if-eqz v0, :cond_f

    array-length v0, v0

    const-wide/32 v13, 0x310000

    cmp-long v2, v2, v13

    if-gez v2, :cond_8

    move v2, v1

    goto :goto_4

    :cond_8
    move v2, v10

    :goto_4
    iput-boolean v2, v8, Lorg/eclipse/jdt/internal/compiler/ast/AllocationExpression;->argumentsHaveErrors:Z

    new-array v2, v0, [Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    iput-object v2, v8, Lorg/eclipse/jdt/internal/compiler/ast/AllocationExpression;->genericTypeArguments:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move v2, v10

    :goto_5
    if-lt v2, v0, :cond_c

    if-eqz v11, :cond_9

    invoke-virtual/range {p1 .. p1}, Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object v0

    iget-object v1, v8, Lorg/eclipse/jdt/internal/compiler/ast/AllocationExpression;->typeArguments:[Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    invoke-virtual {v0, v1}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->diamondNotWithExplicitTypeArguments([Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;)V

    return-object v6

    :cond_9
    iget-boolean v0, v8, Lorg/eclipse/jdt/internal/compiler/ast/AllocationExpression;->argumentsHaveErrors:Z

    if-eqz v0, :cond_f

    iget-object v0, v8, Lorg/eclipse/jdt/internal/compiler/ast/AllocationExpression;->arguments:[Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    if-eqz v0, :cond_b

    array-length v0, v0

    :goto_6
    if-lt v10, v0, :cond_a

    goto :goto_7

    :cond_a
    iget-object v1, v8, Lorg/eclipse/jdt/internal/compiler/ast/AllocationExpression;->arguments:[Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    aget-object v1, v1, v10

    invoke-virtual {v1, v9}, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->resolveType(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    add-int/lit8 v10, v10, 0x1

    goto :goto_6

    :cond_b
    :goto_7
    return-object v6

    :cond_c
    iget-object v3, v8, Lorg/eclipse/jdt/internal/compiler/ast/AllocationExpression;->typeArguments:[Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    aget-object v3, v3, v2

    iget-object v4, v8, Lorg/eclipse/jdt/internal/compiler/ast/AllocationExpression;->genericTypeArguments:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-virtual {v3, v9, v1}, Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;->resolveType(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;Z)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v7

    aput-object v7, v4, v2

    if-nez v7, :cond_d

    iput-boolean v1, v8, Lorg/eclipse/jdt/internal/compiler/ast/AllocationExpression;->argumentsHaveErrors:Z

    :cond_d
    iget-boolean v4, v8, Lorg/eclipse/jdt/internal/compiler/ast/AllocationExpression;->argumentsHaveErrors:Z

    if-eqz v4, :cond_e

    instance-of v4, v3, Lorg/eclipse/jdt/internal/compiler/ast/Wildcard;

    if-eqz v4, :cond_e

    invoke-virtual/range {p1 .. p1}, Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object v4

    invoke-virtual {v4, v3}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->illegalUsageOfWildcard(Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;)V

    :cond_e
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    :cond_f
    iget-object v0, v8, Lorg/eclipse/jdt/internal/compiler/ast/AllocationExpression;->arguments:[Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    if-eqz v0, :cond_19

    iput-boolean v10, v8, Lorg/eclipse/jdt/internal/compiler/ast/AllocationExpression;->argumentsHaveErrors:Z

    array-length v0, v0

    new-array v2, v0, [Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    iput-object v2, v8, Lorg/eclipse/jdt/internal/compiler/ast/AllocationExpression;->argumentTypes:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move v2, v10

    :goto_8
    if-lt v2, v0, :cond_15

    iget-boolean v2, v8, Lorg/eclipse/jdt/internal/compiler/ast/AllocationExpression;->argumentsHaveErrors:Z

    if-eqz v2, :cond_19

    if-eqz v11, :cond_10

    return-object v6

    :cond_10
    iget-object v1, v8, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->resolvedType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    instance-of v1, v1, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    if-eqz v1, :cond_14

    new-array v3, v0, [Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    :goto_9
    add-int/lit8 v0, v0, -0x1

    if-gez v0, :cond_12

    iget-object v0, v8, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->resolvedType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-object v1, v0

    check-cast v1, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    sget-object v2, Lorg/eclipse/jdt/internal/compiler/lookup/TypeConstants;->INIT:[C

    const/4 v5, 0x0

    move-object/from16 v0, p1

    move-object v4, p0

    invoke-virtual/range {v0 .. v5}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->findMethod(Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;[C[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/InvocationSite;Z)Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    move-result-object v0

    iput-object v0, v8, Lorg/eclipse/jdt/internal/compiler/ast/AllocationExpression;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    if-eqz v0, :cond_14

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->isValidBinding()Z

    move-result v0

    if-nez v0, :cond_14

    iget-object v0, v8, Lorg/eclipse/jdt/internal/compiler/ast/AllocationExpression;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    check-cast v0, Lorg/eclipse/jdt/internal/compiler/lookup/ProblemMethodBinding;

    iget-object v0, v0, Lorg/eclipse/jdt/internal/compiler/lookup/ProblemMethodBinding;->closestMatch:Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    if-eqz v0, :cond_14

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->original()Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    move-result-object v1

    iget-object v1, v1, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->typeVariables:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;

    sget-object v2, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->NO_TYPE_VARIABLES:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;

    if-eq v1, v2, :cond_11

    invoke-virtual/range {p1 .. p1}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->environment()Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    move-result-object v1

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->original()Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    move-result-object v0

    invoke-virtual {v1, v0, v6}, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->createParameterizedGenericMethod(Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;Lorg/eclipse/jdt/internal/compiler/lookup/RawTypeBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/ParameterizedGenericMethodBinding;

    move-result-object v0

    :cond_11
    iput-object v0, v8, Lorg/eclipse/jdt/internal/compiler/ast/AllocationExpression;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->original()Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    move-result-object v0

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->isOrEnclosedByPrivateType()Z

    move-result v1

    if-eqz v1, :cond_14

    invoke-virtual {v9, v0}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->isDefinedInMethod(Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;)Z

    move-result v1

    if-nez v1, :cond_14

    iget v1, v0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->modifiers:I

    const/high16 v2, 0x8000000

    or-int/2addr v1, v2

    iput v1, v0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->modifiers:I

    goto :goto_a

    :cond_12
    iget-object v1, v8, Lorg/eclipse/jdt/internal/compiler/ast/AllocationExpression;->argumentTypes:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    aget-object v1, v1, v0

    if-nez v1, :cond_13

    sget-object v1, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->NULL:Lorg/eclipse/jdt/internal/compiler/lookup/NullTypeBinding;

    :cond_13
    aput-object v1, v3, v0

    goto :goto_9

    :cond_14
    :goto_a
    iget-object v0, v8, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->resolvedType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    return-object v0

    :cond_15
    iget-object v3, v8, Lorg/eclipse/jdt/internal/compiler/ast/AllocationExpression;->arguments:[Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    aget-object v3, v3, v2

    instance-of v4, v3, Lorg/eclipse/jdt/internal/compiler/ast/CastExpression;

    if-eqz v4, :cond_16

    iget v4, v3, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->bits:I

    or-int/lit8 v4, v4, 0x20

    iput v4, v3, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->bits:I

    iput-boolean v1, v8, Lorg/eclipse/jdt/internal/compiler/ast/AllocationExpression;->argsContainCast:Z

    :cond_16
    sget-object v4, Lorg/eclipse/jdt/internal/compiler/ast/ExpressionContext;->INVOCATION_CONTEXT:Lorg/eclipse/jdt/internal/compiler/ast/ExpressionContext;

    invoke-virtual {v3, v4}, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->setExpressionContext(Lorg/eclipse/jdt/internal/compiler/ast/ExpressionContext;)V

    iget-object v4, v8, Lorg/eclipse/jdt/internal/compiler/ast/AllocationExpression;->arguments:[Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    aget-object v4, v4, v2

    iget-object v4, v4, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->resolvedType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    if-eqz v4, :cond_17

    invoke-virtual/range {p1 .. p1}, Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object v4

    const-string v7, "Argument was unexpectedly found resolved"

    invoke-virtual {v4, v7, p0}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->genericInferenceError(Ljava/lang/String;Lorg/eclipse/jdt/internal/compiler/lookup/InvocationSite;)V

    :cond_17
    iget-object v4, v8, Lorg/eclipse/jdt/internal/compiler/ast/AllocationExpression;->argumentTypes:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-virtual {v3, v9}, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->resolveType(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v3

    aput-object v3, v4, v2

    if-nez v3, :cond_18

    iput-boolean v1, v8, Lorg/eclipse/jdt/internal/compiler/ast/AllocationExpression;->argumentsHaveErrors:Z

    :cond_18
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_8

    :cond_19
    iget-object v0, v8, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->resolvedType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    if-eqz v0, :cond_1b

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->isValidBinding()Z

    move-result v0

    if-nez v0, :cond_1a

    goto :goto_b

    :cond_1a
    iget-object v0, v8, Lorg/eclipse/jdt/internal/compiler/ast/AllocationExpression;->type:Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    if-eqz v0, :cond_1c

    iget-object v0, v8, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->resolvedType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->canBeInstantiated()Z

    move-result v0

    if-nez v0, :cond_1c

    invoke-virtual/range {p1 .. p1}, Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object v0

    iget-object v1, v8, Lorg/eclipse/jdt/internal/compiler/ast/AllocationExpression;->type:Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    iget-object v2, v8, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->resolvedType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-virtual {v0, v1, v2}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->cannotInstantiate(Lorg/eclipse/jdt/internal/compiler/ast/Expression;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)V

    iget-object v0, v8, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->resolvedType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    return-object v0

    :cond_1b
    :goto_b
    return-object v6

    :cond_1c
    const-wide/32 v13, 0x340000

    if-eqz v11, :cond_21

    invoke-virtual/range {p0 .. p1}, Lorg/eclipse/jdt/internal/compiler/ast/AllocationExpression;->inferConstructorOfElidedParameterizedType(Lorg/eclipse/jdt/internal/compiler/lookup/Scope;)Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    move-result-object v0

    iput-object v0, v8, Lorg/eclipse/jdt/internal/compiler/ast/AllocationExpression;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    if-eqz v0, :cond_20

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->isValidBinding()Z

    move-result v0

    if-nez v0, :cond_1d

    goto :goto_c

    :cond_1d
    iget-object v0, v8, Lorg/eclipse/jdt/internal/compiler/ast/AllocationExpression;->typeExpected:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    if-nez v0, :cond_1e

    iget-wide v2, v12, Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;->sourceLevel:J

    cmp-long v0, v2, v13

    if-ltz v0, :cond_1e

    iget-object v0, v8, Lorg/eclipse/jdt/internal/compiler/ast/AllocationExpression;->expressionContext:Lorg/eclipse/jdt/internal/compiler/ast/ExpressionContext;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/ast/ExpressionContext;->definesTargetType()Z

    move-result v0

    if-eqz v0, :cond_1e

    new-instance v0, Lorg/eclipse/jdt/internal/compiler/lookup/PolyTypeBinding;

    invoke-direct {v0, p0}, Lorg/eclipse/jdt/internal/compiler/lookup/PolyTypeBinding;-><init>(Lorg/eclipse/jdt/internal/compiler/ast/Expression;)V

    return-object v0

    :cond_1e
    iget-object v0, v8, Lorg/eclipse/jdt/internal/compiler/ast/AllocationExpression;->type:Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    iget-object v2, v8, Lorg/eclipse/jdt/internal/compiler/ast/AllocationExpression;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    iget-object v3, v2, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->declaringClass:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    iput-object v3, v0, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->resolvedType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    iput-object v3, v8, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->resolvedType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-virtual {v2}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->isVarargs()Z

    move-result v0

    if-eqz v0, :cond_1f

    iget-object v0, v8, Lorg/eclipse/jdt/internal/compiler/ast/AllocationExpression;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    iget-object v0, v0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->parameters:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    array-length v2, v0

    sub-int/2addr v2, v1

    aget-object v0, v0, v2

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->leafComponentType()Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v0

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->erasure()Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v2

    invoke-virtual {v2, v9}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->canBeSeenBy(Lorg/eclipse/jdt/internal/compiler/lookup/Scope;)Z

    move-result v2

    if-nez v2, :cond_1f

    invoke-virtual/range {p1 .. p1}, Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object v1

    new-instance v2, Lorg/eclipse/jdt/internal/compiler/lookup/ProblemReferenceBinding;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->readableName()[C

    move-result-object v3

    filled-new-array {v3}, [[C

    move-result-object v3

    check-cast v0, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    invoke-direct {v2, v3, v0, v5}, Lorg/eclipse/jdt/internal/compiler/lookup/ProblemReferenceBinding;-><init>([[CLorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;I)V

    invoke-virtual {v1, p0, v2}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->invalidType(Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)V

    iput-object v6, v8, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->resolvedType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    return-object v6

    :cond_1f
    iget-object v0, v8, Lorg/eclipse/jdt/internal/compiler/ast/AllocationExpression;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    iget-object v2, v8, Lorg/eclipse/jdt/internal/compiler/ast/AllocationExpression;->argumentTypes:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-static {p0, v0, v2, v9}, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->resolvePolyExpressionArguments(Lorg/eclipse/jdt/internal/compiler/ast/Invocation;Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;)Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    move-result-object v0

    iput-object v0, v8, Lorg/eclipse/jdt/internal/compiler/ast/AllocationExpression;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    goto :goto_d

    :cond_20
    :goto_c
    invoke-virtual/range {p1 .. p1}, Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->cannotInferElidedTypes(Lorg/eclipse/jdt/internal/compiler/ast/AllocationExpression;)V

    iput-object v6, v8, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->resolvedType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    return-object v6

    :cond_21
    iget-object v0, v8, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->resolvedType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    check-cast v0, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    iget-object v2, v8, Lorg/eclipse/jdt/internal/compiler/ast/AllocationExpression;->argumentTypes:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-virtual {p0, v9, p0, v0, v2}, Lorg/eclipse/jdt/internal/compiler/ast/Statement;->findConstructorBinding(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;Lorg/eclipse/jdt/internal/compiler/ast/Invocation;Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    move-result-object v0

    iput-object v0, v8, Lorg/eclipse/jdt/internal/compiler/ast/AllocationExpression;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    :goto_d
    iget-object v0, v8, Lorg/eclipse/jdt/internal/compiler/ast/AllocationExpression;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->isValidBinding()Z

    move-result v0

    if-nez v0, :cond_24

    iget-object v0, v8, Lorg/eclipse/jdt/internal/compiler/ast/AllocationExpression;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    iget-object v1, v0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->declaringClass:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    if-nez v1, :cond_22

    iget-object v1, v8, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->resolvedType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    check-cast v1, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    iput-object v1, v0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->declaringClass:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    :cond_22
    iget-object v0, v8, Lorg/eclipse/jdt/internal/compiler/ast/AllocationExpression;->type:Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    if-eqz v0, :cond_23

    iget-object v0, v0, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->resolvedType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->isValidBinding()Z

    move-result v0

    if-nez v0, :cond_23

    return-object v6

    :cond_23
    invoke-virtual/range {p1 .. p1}, Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object v0

    iget-object v1, v8, Lorg/eclipse/jdt/internal/compiler/ast/AllocationExpression;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    invoke-virtual {v0, p0, v1}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->invalidConstructor(Lorg/eclipse/jdt/internal/compiler/ast/Statement;Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;)V

    iget-object v0, v8, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->resolvedType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    return-object v0

    :cond_24
    iget-object v0, v8, Lorg/eclipse/jdt/internal/compiler/ast/AllocationExpression;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    iget-wide v2, v0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->tagBits:J

    const-wide/16 v4, 0x80

    and-long/2addr v2, v4

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-eqz v0, :cond_25

    invoke-virtual/range {p1 .. p1}, Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object v0

    iget-object v2, v8, Lorg/eclipse/jdt/internal/compiler/ast/AllocationExpression;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    invoke-virtual {v0, p0, v2}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->missingTypeInConstructor(Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;)V

    :cond_25
    iget-object v0, v8, Lorg/eclipse/jdt/internal/compiler/ast/AllocationExpression;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    invoke-virtual {p0, v0, v9, v1, p0}, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->isMethodUseDeprecated(Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;Lorg/eclipse/jdt/internal/compiler/lookup/Scope;ZLorg/eclipse/jdt/internal/compiler/lookup/InvocationSite;)Z

    move-result v0

    if-eqz v0, :cond_26

    invoke-virtual/range {p1 .. p1}, Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object v0

    iget-object v1, v8, Lorg/eclipse/jdt/internal/compiler/ast/AllocationExpression;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    invoke-virtual {v0, v1, p0}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->deprecatedMethod(Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;)V

    :cond_26
    iget-object v2, v8, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->resolvedType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    iget-object v3, v8, Lorg/eclipse/jdt/internal/compiler/ast/AllocationExpression;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    iget-object v4, v8, Lorg/eclipse/jdt/internal/compiler/ast/AllocationExpression;->arguments:[Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    iget-object v5, v8, Lorg/eclipse/jdt/internal/compiler/ast/AllocationExpression;->argumentTypes:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    iget-boolean v6, v8, Lorg/eclipse/jdt/internal/compiler/ast/AllocationExpression;->argsContainCast:Z

    const/4 v1, 0x0

    move-object/from16 v0, p1

    move-object v7, p0

    invoke-static/range {v0 .. v7}, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->checkInvocationArguments(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;Lorg/eclipse/jdt/internal/compiler/ast/Expression;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;[Lorg/eclipse/jdt/internal/compiler/ast/Expression;[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;ZLorg/eclipse/jdt/internal/compiler/lookup/InvocationSite;)Z

    move-result v0

    if-eqz v0, :cond_27

    iget v0, v8, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->bits:I

    const/high16 v1, 0x10000

    or-int/2addr v0, v1

    iput v0, v8, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->bits:I

    :cond_27
    iget-object v0, v8, Lorg/eclipse/jdt/internal/compiler/ast/AllocationExpression;->typeArguments:[Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    if-eqz v0, :cond_28

    iget-object v0, v8, Lorg/eclipse/jdt/internal/compiler/ast/AllocationExpression;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->original()Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    move-result-object v0

    iget-object v0, v0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->typeVariables:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;

    sget-object v1, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->NO_TYPE_VARIABLES:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;

    if-ne v0, v1, :cond_28

    invoke-virtual/range {p1 .. p1}, Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object v0

    iget-object v1, v8, Lorg/eclipse/jdt/internal/compiler/ast/AllocationExpression;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    iget-object v2, v8, Lorg/eclipse/jdt/internal/compiler/ast/AllocationExpression;->genericTypeArguments:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    iget-object v3, v8, Lorg/eclipse/jdt/internal/compiler/ast/AllocationExpression;->typeArguments:[Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    invoke-virtual {v0, v1, v2, v3}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->unnecessaryTypeArgumentsForMethodInvocation(Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;[Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;)V

    :cond_28
    if-nez v11, :cond_29

    iget-object v0, v8, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->resolvedType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isParameterizedTypeWithActualArguments()Z

    move-result v0

    if-eqz v0, :cond_29

    iget-object v0, v8, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->resolvedType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    check-cast v0, Lorg/eclipse/jdt/internal/compiler/lookup/ParameterizedTypeBinding;

    invoke-virtual {p0, v0, v9}, Lorg/eclipse/jdt/internal/compiler/ast/AllocationExpression;->checkTypeArgumentRedundancy(Lorg/eclipse/jdt/internal/compiler/lookup/ParameterizedTypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;)V

    :cond_29
    iget-boolean v0, v12, Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;->isAnnotationBasedNullAnalysisEnabled:Z

    if-eqz v0, :cond_2b

    iget-object v0, v8, Lorg/eclipse/jdt/internal/compiler/ast/AllocationExpression;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    invoke-static {v0, v9}, Lorg/eclipse/jdt/internal/compiler/lookup/ImplicitNullAnnotationVerifier;->ensureNullnessIsKnown(Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;Lorg/eclipse/jdt/internal/compiler/lookup/Scope;)V

    iget-wide v0, v12, Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;->sourceLevel:J

    cmp-long v0, v0, v13

    if-ltz v0, :cond_2b

    iget-object v0, v8, Lorg/eclipse/jdt/internal/compiler/ast/AllocationExpression;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    instance-of v1, v0, Lorg/eclipse/jdt/internal/compiler/lookup/ParameterizedGenericMethodBinding;

    if-eqz v1, :cond_2b

    iget-object v1, v8, Lorg/eclipse/jdt/internal/compiler/ast/AllocationExpression;->typeArguments:[Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    if-eqz v1, :cond_2b

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->original()Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    move-result-object v0

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->typeVariables()[Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;

    move-result-object v0

    :goto_e
    iget-object v1, v8, Lorg/eclipse/jdt/internal/compiler/ast/AllocationExpression;->typeArguments:[Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    array-length v2, v1

    if-lt v10, v2, :cond_2a

    goto :goto_f

    :cond_2a
    aget-object v1, v1, v10

    iget-object v2, v8, Lorg/eclipse/jdt/internal/compiler/ast/AllocationExpression;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    check-cast v2, Lorg/eclipse/jdt/internal/compiler/lookup/ParameterizedGenericMethodBinding;

    invoke-virtual {v1, v9, v2, v0, v10}, Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;->checkNullConstraints(Lorg/eclipse/jdt/internal/compiler/lookup/Scope;Lorg/eclipse/jdt/internal/compiler/lookup/Substitution;[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;I)V

    add-int/lit8 v10, v10, 0x1

    goto :goto_e

    :cond_2b
    :goto_f
    iget-wide v0, v12, Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;->sourceLevel:J

    cmp-long v0, v0, v13

    if-ltz v0, :cond_2c

    iget-object v0, v8, Lorg/eclipse/jdt/internal/compiler/ast/AllocationExpression;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->getTypeAnnotations()[Lorg/eclipse/jdt/internal/compiler/lookup/AnnotationBinding;

    move-result-object v0

    sget-object v1, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->NO_ANNOTATIONS:[Lorg/eclipse/jdt/internal/compiler/lookup/AnnotationBinding;

    if-eq v0, v1, :cond_2c

    invoke-virtual/range {p1 .. p1}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->environment()Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    move-result-object v0

    iget-object v1, v8, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->resolvedType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    iget-object v2, v8, Lorg/eclipse/jdt/internal/compiler/ast/AllocationExpression;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    invoke-virtual {v2}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->getTypeAnnotations()[Lorg/eclipse/jdt/internal/compiler/lookup/AnnotationBinding;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->createAnnotatedType(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;[Lorg/eclipse/jdt/internal/compiler/lookup/AnnotationBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v0

    iput-object v0, v8, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->resolvedType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    :cond_2c
    iget-object v0, v8, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->resolvedType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    return-object v0
.end method

.method public setActualReceiverType(Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;)V
    .locals 0

    return-void
.end method

.method public setDepth(I)V
    .locals 0

    return-void
.end method

.method public setExpectedType(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)V
    .locals 0

    iput-object p1, p0, Lorg/eclipse/jdt/internal/compiler/ast/AllocationExpression;->typeExpected:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    return-void
.end method

.method public setExpressionContext(Lorg/eclipse/jdt/internal/compiler/ast/ExpressionContext;)V
    .locals 0

    iput-object p1, p0, Lorg/eclipse/jdt/internal/compiler/ast/AllocationExpression;->expressionContext:Lorg/eclipse/jdt/internal/compiler/ast/ExpressionContext;

    return-void
.end method

.method public setFieldIndex(I)V
    .locals 0

    return-void
.end method

.method public statementExpression()Z
    .locals 2

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->bits:I

    const/high16 v1, 0x1fe00000

    and-int/2addr v0, v1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public traverse(Lorg/eclipse/jdt/internal/compiler/ASTVisitor;Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;)V
    .locals 4

    invoke-virtual {p1, p0, p2}, Lorg/eclipse/jdt/internal/compiler/ASTVisitor;->visit(Lorg/eclipse/jdt/internal/compiler/ast/AllocationExpression;Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/AllocationExpression;->typeArguments:[Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    array-length v0, v0

    move v2, v1

    :goto_0
    if-lt v2, v0, :cond_0

    goto :goto_1

    :cond_0
    iget-object v3, p0, Lorg/eclipse/jdt/internal/compiler/ast/AllocationExpression;->typeArguments:[Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    aget-object v3, v3, v2

    invoke-virtual {v3, p1, p2}, Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;->traverse(Lorg/eclipse/jdt/internal/compiler/ASTVisitor;Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/AllocationExpression;->type:Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    if-eqz v0, :cond_2

    invoke-virtual {v0, p1, p2}, Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;->traverse(Lorg/eclipse/jdt/internal/compiler/ASTVisitor;Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;)V

    :cond_2
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/AllocationExpression;->arguments:[Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    if-eqz v0, :cond_4

    array-length v0, v0

    :goto_2
    if-lt v1, v0, :cond_3

    goto :goto_3

    :cond_3
    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/ast/AllocationExpression;->arguments:[Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    aget-object v2, v2, v1

    invoke-virtual {v2, p1, p2}, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->traverse(Lorg/eclipse/jdt/internal/compiler/ASTVisitor;Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_4
    :goto_3
    invoke-virtual {p1, p0, p2}, Lorg/eclipse/jdt/internal/compiler/ASTVisitor;->endVisit(Lorg/eclipse/jdt/internal/compiler/ast/AllocationExpression;Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;)V

    return-void
.end method
