.class public Lorg/eclipse/jdt/internal/compiler/ast/ArrayInitializer;
.super Lorg/eclipse/jdt/internal/compiler/ast/Expression;
.source "SourceFile"


# instance fields
.field public binding:Lorg/eclipse/jdt/internal/compiler/lookup/ArrayBinding;

.field public expressions:[Lorg/eclipse/jdt/internal/compiler/ast/Expression;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/compiler/ast/Expression;-><init>()V

    return-void
.end method


# virtual methods
.method public analyseCode(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;Lorg/eclipse/jdt/internal/compiler/flow/FlowContext;Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;)Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;
    .locals 11

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/ArrayInitializer;->expressions:[Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->compilerOptions()Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;

    move-result-object v0

    iget-boolean v0, v0, Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;->analyseResourceLeaks:Z

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->environment()Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    move-result-object v1

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->usesNullTypeAnnotations()Z

    move-result v1

    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/ast/ArrayInitializer;->expressions:[Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    array-length v2, v2

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-lt v4, v2, :cond_0

    goto :goto_1

    :cond_0
    iget-object v5, p0, Lorg/eclipse/jdt/internal/compiler/ast/ArrayInitializer;->expressions:[Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    aget-object v5, v5, v4

    invoke-virtual {v5, p1, p2, p3}, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->analyseCode(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;Lorg/eclipse/jdt/internal/compiler/flow/FlowContext;Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;)Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;

    move-result-object p3

    invoke-virtual {p3}, Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;->unconditionalInits()Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;

    move-result-object p3

    if-eqz v0, :cond_1

    iget-object v5, p0, Lorg/eclipse/jdt/internal/compiler/ast/ArrayInitializer;->expressions:[Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    aget-object v5, v5, v4

    iget-object v5, v5, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->resolvedType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-static {v5}, Lorg/eclipse/jdt/internal/compiler/ast/FakedTrackingVariable;->isAnyCloseable(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Z

    move-result v5

    if-eqz v5, :cond_1

    iget-object v5, p0, Lorg/eclipse/jdt/internal/compiler/ast/ArrayInitializer;->expressions:[Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    aget-object v5, v5, v4

    invoke-static {p1, v5, p3, p2, v3}, Lorg/eclipse/jdt/internal/compiler/ast/FakedTrackingVariable;->markPassedToOutside(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;Lorg/eclipse/jdt/internal/compiler/ast/Expression;Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;Lorg/eclipse/jdt/internal/compiler/flow/FlowContext;Z)Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;

    move-result-object p3

    :cond_1
    if-eqz v1, :cond_2

    iget-object v5, p0, Lorg/eclipse/jdt/internal/compiler/ast/ArrayInitializer;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/ArrayBinding;

    invoke-virtual {v5}, Lorg/eclipse/jdt/internal/compiler/lookup/ArrayBinding;->elementsType()Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v7

    iget-object v5, p0, Lorg/eclipse/jdt/internal/compiler/ast/ArrayInitializer;->expressions:[Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    aget-object v8, v5, v4

    move-object v5, p0

    move-object v6, p1

    move-object v9, p2

    move-object v10, p3

    invoke-virtual/range {v5 .. v10}, Lorg/eclipse/jdt/internal/compiler/ast/Statement;->checkAgainstNullTypeAnnotation(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/ast/Expression;Lorg/eclipse/jdt/internal/compiler/flow/FlowContext;Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;)V

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    return-object p3
.end method

.method public generateCode(Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;Lorg/eclipse/jdt/internal/compiler/ast/ArrayAllocationExpression;Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;Z)V
    .locals 9

    .line 2
    iget v0, p4, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->position:I

    .line 3
    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/ast/ArrayInitializer;->expressions:[Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    array-length v1, v1

    .line 4
    :goto_0
    invoke-virtual {p4, v1}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->generateInlinedValue(I)V

    .line 5
    iget-object v3, p0, Lorg/eclipse/jdt/internal/compiler/ast/ArrayInitializer;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/ArrayBinding;

    invoke-virtual {p4, p1, p2, v3}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->newArray(Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;Lorg/eclipse/jdt/internal/compiler/ast/ArrayAllocationExpression;Lorg/eclipse/jdt/internal/compiler/lookup/ArrayBinding;)V

    .line 6
    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/ast/ArrayInitializer;->expressions:[Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    if-eqz p1, :cond_6

    .line 7
    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/ast/ArrayInitializer;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/ArrayBinding;

    iget p2, p1, Lorg/eclipse/jdt/internal/compiler/lookup/ArrayBinding;->dimensions:I

    const/4 v3, 0x1

    if-le p2, v3, :cond_1

    const/4 p1, -0x1

    goto :goto_1

    :cond_1
    iget-object p1, p1, Lorg/eclipse/jdt/internal/compiler/lookup/ArrayBinding;->leafComponentType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    iget p1, p1, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->id:I

    :goto_1
    move p2, v2

    :goto_2
    if-lt p2, v1, :cond_2

    goto/16 :goto_4

    .line 8
    :cond_2
    iget-object v4, p0, Lorg/eclipse/jdt/internal/compiler/ast/ArrayInitializer;->expressions:[Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    aget-object v4, v4, p2

    iget-object v5, v4, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->constant:Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    sget-object v6, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->NotAConstant:Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    if-eq v5, v6, :cond_4

    packed-switch p1, :pswitch_data_0

    .line 9
    :pswitch_0
    instance-of v5, v4, Lorg/eclipse/jdt/internal/compiler/ast/NullLiteral;

    if-nez v5, :cond_5

    .line 10
    invoke-virtual {p4}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->dup()V

    .line 11
    invoke-virtual {p4, p2}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->generateInlinedValue(I)V

    .line 12
    invoke-virtual {v4, p3, p4, v3}, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->generateCode(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;Z)V

    .line 13
    invoke-virtual {p4, p1, v2}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->arrayAtPut(IZ)V

    goto :goto_3

    .line 14
    :pswitch_1
    invoke-virtual {v5}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->doubleValue()D

    move-result-wide v5

    const-wide/high16 v7, -0x8000000000000000L

    cmpl-double v7, v5, v7

    if-eqz v7, :cond_3

    const-wide/16 v7, 0x0

    cmpl-double v5, v5, v7

    if-eqz v5, :cond_5

    .line 15
    :cond_3
    invoke-virtual {p4}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->dup()V

    .line 16
    invoke-virtual {p4, p2}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->generateInlinedValue(I)V

    .line 17
    invoke-virtual {v4, p3, p4, v3}, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->generateCode(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;Z)V

    .line 18
    invoke-virtual {p4, p1, v2}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->arrayAtPut(IZ)V

    goto :goto_3

    .line 19
    :pswitch_2
    invoke-virtual {v5}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 20
    invoke-virtual {p4}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->dup()V

    .line 21
    invoke-virtual {p4, p2}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->generateInlinedValue(I)V

    .line 22
    invoke-virtual {v4, p3, p4, v3}, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->generateCode(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;Z)V

    .line 23
    invoke-virtual {p4, p1, v2}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->arrayAtPut(IZ)V

    goto :goto_3

    .line 24
    :pswitch_3
    invoke-virtual {v5}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->longValue()J

    move-result-wide v5

    const-wide/16 v7, 0x0

    cmp-long v5, v5, v7

    if-eqz v5, :cond_5

    .line 25
    invoke-virtual {p4}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->dup()V

    .line 26
    invoke-virtual {p4, p2}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->generateInlinedValue(I)V

    .line 27
    invoke-virtual {v4, p3, p4, v3}, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->generateCode(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;Z)V

    .line 28
    invoke-virtual {p4, p1, v2}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->arrayAtPut(IZ)V

    goto :goto_3

    .line 29
    :cond_4
    instance-of v5, v4, Lorg/eclipse/jdt/internal/compiler/ast/NullLiteral;

    if-nez v5, :cond_5

    .line 30
    invoke-virtual {p4}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->dup()V

    .line 31
    invoke-virtual {p4, p2}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->generateInlinedValue(I)V

    .line 32
    invoke-virtual {v4, p3, p4, v3}, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->generateCode(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;Z)V

    .line 33
    invoke-virtual {p4, p1, v2}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->arrayAtPut(IZ)V

    :cond_5
    :goto_3
    add-int/lit8 p2, p2, 0x1

    goto :goto_2

    :cond_6
    :goto_4
    if-eqz p5, :cond_7

    .line 34
    iget p1, p0, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->implicitConversion:I

    invoke-virtual {p4, p1}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->generateImplicitConversion(I)V

    goto :goto_5

    .line 35
    :cond_7
    invoke-virtual {p4}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->pop()V

    .line 36
    :goto_5
    iget p1, p0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceStart:I

    invoke-virtual {p4, v0, p1}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->recordPositionsFrom(II)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_1
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method public generateCode(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;Z)V
    .locals 6

    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object v0, p0

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    .line 1
    invoke-virtual/range {v0 .. v5}, Lorg/eclipse/jdt/internal/compiler/ast/ArrayInitializer;->generateCode(Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;Lorg/eclipse/jdt/internal/compiler/ast/ArrayAllocationExpression;Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;Z)V

    return-void
.end method

.method public printExpression(ILjava/lang/StringBuffer;)Ljava/lang/StringBuffer;
    .locals 5

    const/16 v0, 0x7b

    invoke-virtual {p2, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/ArrayInitializer;->expressions:[Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    if-eqz v0, :cond_3

    const/4 v0, 0x0

    const/16 v1, 0x14

    move v2, v0

    move v3, v1

    :goto_0
    iget-object v4, p0, Lorg/eclipse/jdt/internal/compiler/ast/ArrayInitializer;->expressions:[Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    array-length v4, v4

    if-lt v2, v4, :cond_0

    goto :goto_1

    :cond_0
    if-lez v2, :cond_1

    const-string v4, ", "

    invoke-virtual {p2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_1
    iget-object v4, p0, Lorg/eclipse/jdt/internal/compiler/ast/ArrayInitializer;->expressions:[Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    aget-object v4, v4, v2

    invoke-virtual {v4, v0, p2}, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->printExpression(ILjava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    add-int/lit8 v3, v3, -0x1

    if-nez v3, :cond_2

    const/16 v3, 0xa

    invoke-virtual {p2, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    add-int/lit8 v3, p1, 0x1

    invoke-static {v3, p2}, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->printIndent(ILjava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    move v3, v1

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    const/16 p1, 0x7d

    invoke-virtual {p2, p1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    return-object p2
.end method

.method public resolveTypeExpecting(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;
    .locals 6

    sget-object v0, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->NotAConstant:Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    iput-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->constant:Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    instance-of v0, p2, Lorg/eclipse/jdt/internal/compiler/lookup/ArrayBinding;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v0, :cond_9

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->bits:I

    and-int/2addr v0, v3

    if-nez v0, :cond_0

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->leafComponentType()Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v0

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isReifiable()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object v3

    invoke-virtual {v3, v0, p0}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->illegalGenericArray(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;)V

    :cond_0
    check-cast p2, Lorg/eclipse/jdt/internal/compiler/lookup/ArrayBinding;

    iput-object p2, p0, Lorg/eclipse/jdt/internal/compiler/ast/ArrayInitializer;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/ArrayBinding;

    iput-object p2, p0, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->resolvedType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/ArrayInitializer;->expressions:[Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    if-nez v0, :cond_1

    return-object p2

    :cond_1
    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/lookup/ArrayBinding;->elementsType()Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v0

    iget-object p2, p0, Lorg/eclipse/jdt/internal/compiler/ast/ArrayInitializer;->expressions:[Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    array-length v4, p2

    :goto_0
    if-lt v1, v4, :cond_2

    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/ast/ArrayInitializer;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/ArrayBinding;

    return-object p1

    :cond_2
    iget-object p2, p0, Lorg/eclipse/jdt/internal/compiler/ast/ArrayInitializer;->expressions:[Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    aget-object p2, p2, v1

    sget-object v3, Lorg/eclipse/jdt/internal/compiler/ast/ExpressionContext;->ASSIGNMENT_CONTEXT:Lorg/eclipse/jdt/internal/compiler/ast/ExpressionContext;

    invoke-virtual {p2, v3}, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->setExpressionContext(Lorg/eclipse/jdt/internal/compiler/ast/ExpressionContext;)V

    invoke-virtual {p2, v0}, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->setExpectedType(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)V

    instance-of v3, p2, Lorg/eclipse/jdt/internal/compiler/ast/ArrayInitializer;

    if-eqz v3, :cond_3

    invoke-virtual {p2, p1, v0}, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->resolveTypeExpecting(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v3

    goto :goto_1

    :cond_3
    invoke-virtual {p2, p1}, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->resolveType(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v3

    :goto_1
    if-nez v3, :cond_4

    goto :goto_3

    :cond_4
    invoke-static {v0, v3}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->notEquals(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->compilationUnitScope()Lorg/eclipse/jdt/internal/compiler/lookup/CompilationUnitScope;

    move-result-object v5

    invoke-virtual {v5, v0, v3}, Lorg/eclipse/jdt/internal/compiler/lookup/CompilationUnitScope;->recordTypeConversion(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)V

    :cond_5
    invoke-virtual {p2, v3, v0}, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->isConstantValueOfTypeAssignableToType(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Z

    move-result v5

    if-nez v5, :cond_8

    invoke-virtual {v3, v0}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isCompatibleWith(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Z

    move-result v5

    if-eqz v5, :cond_6

    goto :goto_2

    :cond_6
    invoke-virtual {p0, v3, v0, p2, p1}, Lorg/eclipse/jdt/internal/compiler/ast/Statement;->isBoxingCompatible(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/ast/Expression;Lorg/eclipse/jdt/internal/compiler/lookup/Scope;)Z

    move-result v5

    if-eqz v5, :cond_7

    invoke-virtual {p2, p1, v0, v3}, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->computeConversion(Lorg/eclipse/jdt/internal/compiler/lookup/Scope;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)V

    goto :goto_3

    :cond_7
    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object v5

    invoke-virtual {v5, v3, v0, p2, v2}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->typeMismatchError(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;)V

    goto :goto_3

    :cond_8
    :goto_2
    invoke-virtual {p2, p1, v0, v3}, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->computeConversion(Lorg/eclipse/jdt/internal/compiler/lookup/Scope;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)V

    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_9
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/ArrayInitializer;->expressions:[Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    if-nez v0, :cond_a

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->getJavaLangObject()Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move-result-object v0

    goto :goto_9

    :cond_a
    aget-object v0, v0, v1

    move v4, v3

    :goto_4
    if-eqz v0, :cond_d

    instance-of v5, v0, Lorg/eclipse/jdt/internal/compiler/ast/ArrayInitializer;

    if-nez v5, :cond_b

    goto :goto_5

    :cond_b
    add-int/lit8 v4, v4, 0x1

    check-cast v0, Lorg/eclipse/jdt/internal/compiler/ast/ArrayInitializer;

    iget-object v0, v0, Lorg/eclipse/jdt/internal/compiler/ast/ArrayInitializer;->expressions:[Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    if-nez v0, :cond_c

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->getJavaLangObject()Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move-result-object v0

    move-object v1, v0

    move-object v0, v2

    goto :goto_6

    :cond_c
    aget-object v0, v0, v1

    goto :goto_4

    :cond_d
    :goto_5
    move-object v1, v2

    :goto_6
    if-eqz v0, :cond_e

    invoke-virtual {v0, p1}, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->resolveType(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v0

    goto :goto_7

    :cond_e
    move-object v0, v1

    :goto_7
    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/ast/ArrayInitializer;->expressions:[Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    array-length v1, v1

    :goto_8
    if-lt v3, v1, :cond_10

    move v3, v4

    :goto_9
    if-eqz v0, :cond_f

    invoke-virtual {p1, v0, v3}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->createArrayType(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;I)Lorg/eclipse/jdt/internal/compiler/lookup/ArrayBinding;

    move-result-object v0

    iput-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->resolvedType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    if-eqz p2, :cond_f

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object p1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->resolvedType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-virtual {p1, v0, p2, p0, v2}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->typeMismatchError(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;)V

    :cond_f
    return-object v2

    :cond_10
    iget-object v5, p0, Lorg/eclipse/jdt/internal/compiler/ast/ArrayInitializer;->expressions:[Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    aget-object v5, v5, v3

    if-eqz v5, :cond_11

    invoke-virtual {v5, p1}, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->resolveType(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    :cond_11
    add-int/lit8 v3, v3, 0x1

    goto :goto_8
.end method

.method public traverse(Lorg/eclipse/jdt/internal/compiler/ASTVisitor;Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;)V
    .locals 3

    invoke-virtual {p1, p0, p2}, Lorg/eclipse/jdt/internal/compiler/ASTVisitor;->visit(Lorg/eclipse/jdt/internal/compiler/ast/ArrayInitializer;Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/ArrayInitializer;->expressions:[Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    if-eqz v0, :cond_1

    array-length v0, v0

    const/4 v1, 0x0

    :goto_0
    if-lt v1, v0, :cond_0

    goto :goto_1

    :cond_0
    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/ast/ArrayInitializer;->expressions:[Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    aget-object v2, v2, v1

    invoke-virtual {v2, p1, p2}, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->traverse(Lorg/eclipse/jdt/internal/compiler/ASTVisitor;Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    invoke-virtual {p1, p0, p2}, Lorg/eclipse/jdt/internal/compiler/ASTVisitor;->endVisit(Lorg/eclipse/jdt/internal/compiler/ast/ArrayInitializer;Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;)V

    return-void
.end method
