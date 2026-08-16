.class public Lorg/eclipse/jdt/internal/compiler/ast/ReturnStatement;
.super Lorg/eclipse/jdt/internal/compiler/ast/Statement;
.source "SourceFile"


# instance fields
.field public expression:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

.field private implicitReturn:Z

.field public initStateIndex:I

.field public saveValueVariable:Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;

.field public subroutines:[Lorg/eclipse/jdt/internal/compiler/ast/SubRoutineStatement;


# direct methods
.method public constructor <init>(Lorg/eclipse/jdt/internal/compiler/ast/Expression;II)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, p2, p3, v0}, Lorg/eclipse/jdt/internal/compiler/ast/ReturnStatement;-><init>(Lorg/eclipse/jdt/internal/compiler/ast/Expression;IIZ)V

    return-void
.end method

.method public constructor <init>(Lorg/eclipse/jdt/internal/compiler/ast/Expression;IIZ)V
    .locals 1

    .line 2
    invoke-direct {p0}, Lorg/eclipse/jdt/internal/compiler/ast/Statement;-><init>()V

    const/4 v0, -0x1

    .line 3
    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/ReturnStatement;->initStateIndex:I

    .line 4
    iput p2, p0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceStart:I

    .line 5
    iput p3, p0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceEnd:I

    .line 6
    iput-object p1, p0, Lorg/eclipse/jdt/internal/compiler/ast/ReturnStatement;->expression:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    .line 7
    iput-boolean p4, p0, Lorg/eclipse/jdt/internal/compiler/ast/ReturnStatement;->implicitReturn:Z

    return-void
.end method

.method private needValueStore()Z
    .locals 3

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/ReturnStatement;->expression:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    if-eqz v0, :cond_1

    iget-object v1, v0, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->constant:Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    sget-object v2, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->NotAConstant:Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    if-eq v1, v2, :cond_0

    iget v1, v0, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->implicitConversion:I

    and-int/lit16 v1, v1, 0x200

    if-eqz v1, :cond_1

    :cond_0
    instance-of v0, v0, Lorg/eclipse/jdt/internal/compiler/ast/NullLiteral;

    if-nez v0, :cond_1

    const/4 v0, 0x1

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public analyseCode(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;Lorg/eclipse/jdt/internal/compiler/flow/FlowContext;Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;)Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;
    .locals 12

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/ReturnStatement;->expression:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    instance-of v1, v0, Lorg/eclipse/jdt/internal/compiler/ast/FunctionalExpression;

    if-eqz v1, :cond_1

    iget-object v0, v0, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->resolvedType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->isValidBinding()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/flow/FlowContext;->recordAbruptExit()V

    sget-object p1, Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;->DEAD_END:Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;

    return-object p1

    :cond_1
    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->methodScope()Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;

    move-result-object v0

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/ast/ReturnStatement;->expression:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    const/4 v2, 0x1

    if-eqz v1, :cond_4

    invoke-virtual {v1, p1, p2, p3}, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->analyseCode(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;Lorg/eclipse/jdt/internal/compiler/flow/FlowContext;Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;)Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;

    move-result-object p3

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/ast/ReturnStatement;->expression:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    invoke-virtual {v1, p1, p2, p3}, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->checkNPEbyUnboxing(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;Lorg/eclipse/jdt/internal/compiler/flow/FlowContext;Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;)V

    invoke-virtual {p3}, Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;->reachMode()I

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->compilerOptions()Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;

    move-result-object v1

    iget-boolean v1, v1, Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;->isAnnotationBasedNullAnalysisEnabled:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/ast/ReturnStatement;->expression:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    invoke-virtual {p0, p1, p2, p3, v1}, Lorg/eclipse/jdt/internal/compiler/ast/Statement;->checkAgainstNullAnnotation(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;Lorg/eclipse/jdt/internal/compiler/flow/FlowContext;Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;Lorg/eclipse/jdt/internal/compiler/ast/Expression;)V

    :cond_2
    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->compilerOptions()Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;

    move-result-object v1

    iget-boolean v1, v1, Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;->analyseResourceLeaks:Z

    if-eqz v1, :cond_4

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/ast/ReturnStatement;->expression:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    invoke-static {v1, p3, p2}, Lorg/eclipse/jdt/internal/compiler/ast/FakedTrackingVariable;->getCloseTrackingVariable(Lorg/eclipse/jdt/internal/compiler/ast/Expression;Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;Lorg/eclipse/jdt/internal/compiler/flow/FlowContext;)Lorg/eclipse/jdt/internal/compiler/ast/FakedTrackingVariable;

    move-result-object v1

    if-eqz v1, :cond_4

    iget-object v3, v1, Lorg/eclipse/jdt/internal/compiler/ast/FakedTrackingVariable;->methodScope:Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;

    if-eq v0, v3, :cond_3

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/compiler/ast/FakedTrackingVariable;->markClosedInNestedMethod()V

    :cond_3
    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/ast/ReturnStatement;->expression:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    invoke-static {p1, v1, p3, p2, v2}, Lorg/eclipse/jdt/internal/compiler/ast/FakedTrackingVariable;->markPassedToOutside(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;Lorg/eclipse/jdt/internal/compiler/ast/Expression;Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;Lorg/eclipse/jdt/internal/compiler/flow/FlowContext;Z)Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;

    move-result-object p3

    :cond_4
    invoke-virtual {v0, p3}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;->recordInitializationStates(Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;)I

    move-result v1

    iput v1, p0, Lorg/eclipse/jdt/internal/compiler/ast/ReturnStatement;->initStateIndex:I

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/compiler/ast/ReturnStatement;->needValueStore()Z

    move-result v1

    const/4 v3, 0x0

    move-object v4, p2

    move v7, v2

    move v5, v3

    move v6, v5

    :cond_5
    invoke-virtual {v4}, Lorg/eclipse/jdt/internal/compiler/flow/FlowContext;->subroutine()Lorg/eclipse/jdt/internal/compiler/ast/SubRoutineStatement;

    move-result-object v8

    const/high16 v9, 0x40000000    # 2.0f

    if-eqz v8, :cond_a

    iget-object v10, p0, Lorg/eclipse/jdt/internal/compiler/ast/ReturnStatement;->subroutines:[Lorg/eclipse/jdt/internal/compiler/ast/SubRoutineStatement;

    if-nez v10, :cond_6

    const/4 v10, 0x5

    new-array v10, v10, [Lorg/eclipse/jdt/internal/compiler/ast/SubRoutineStatement;

    iput-object v10, p0, Lorg/eclipse/jdt/internal/compiler/ast/ReturnStatement;->subroutines:[Lorg/eclipse/jdt/internal/compiler/ast/SubRoutineStatement;

    :cond_6
    iget-object v10, p0, Lorg/eclipse/jdt/internal/compiler/ast/ReturnStatement;->subroutines:[Lorg/eclipse/jdt/internal/compiler/ast/SubRoutineStatement;

    array-length v11, v10

    if-ne v5, v11, :cond_7

    mul-int/lit8 v11, v5, 0x2

    new-array v11, v11, [Lorg/eclipse/jdt/internal/compiler/ast/SubRoutineStatement;

    iput-object v11, p0, Lorg/eclipse/jdt/internal/compiler/ast/ReturnStatement;->subroutines:[Lorg/eclipse/jdt/internal/compiler/ast/SubRoutineStatement;

    invoke-static {v10, v3, v11, v3, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_7
    iget-object v10, p0, Lorg/eclipse/jdt/internal/compiler/ast/ReturnStatement;->subroutines:[Lorg/eclipse/jdt/internal/compiler/ast/SubRoutineStatement;

    add-int/lit8 v11, v5, 0x1

    aput-object v8, v10, v5

    invoke-virtual {v8}, Lorg/eclipse/jdt/internal/compiler/ast/SubRoutineStatement;->isSubRoutineEscaping()Z

    move-result v5

    if-eqz v5, :cond_8

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->bits:I

    const/high16 v1, 0x20000000

    or-int/2addr v0, v1

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->bits:I

    move v6, v3

    goto :goto_1

    :cond_8
    instance-of v5, v8, Lorg/eclipse/jdt/internal/compiler/ast/TryStatement;

    if-eqz v5, :cond_9

    check-cast v8, Lorg/eclipse/jdt/internal/compiler/ast/TryStatement;

    iget-object v5, v8, Lorg/eclipse/jdt/internal/compiler/ast/TryStatement;->resources:[Lorg/eclipse/jdt/internal/compiler/ast/Statement;

    array-length v5, v5

    if-lez v5, :cond_9

    move v7, v3

    :cond_9
    move v5, v11

    :cond_a
    invoke-virtual {p3}, Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;->unconditionalInits()Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;

    move-result-object v8

    invoke-virtual {v4, v8}, Lorg/eclipse/jdt/internal/compiler/flow/FlowContext;->recordReturnFrom(Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;)V

    instance-of v8, v4, Lorg/eclipse/jdt/internal/compiler/flow/InsideSubRoutineFlowContext;

    if-eqz v8, :cond_d

    iget-object v8, v4, Lorg/eclipse/jdt/internal/compiler/flow/FlowContext;->associatedNode:Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;

    instance-of v10, v8, Lorg/eclipse/jdt/internal/compiler/ast/SynchronizedStatement;

    if-eqz v10, :cond_b

    iget v8, p0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->bits:I

    or-int/2addr v8, v9

    iput v8, p0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->bits:I

    goto :goto_0

    :cond_b
    instance-of v10, v8, Lorg/eclipse/jdt/internal/compiler/ast/TryStatement;

    if-eqz v10, :cond_e

    check-cast v8, Lorg/eclipse/jdt/internal/compiler/ast/TryStatement;

    iget-object v10, v8, Lorg/eclipse/jdt/internal/compiler/ast/TryStatement;->subRoutineInits:Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;

    invoke-virtual {p3, v10}, Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;->addInitializationsFrom(Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;)Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;

    if-eqz v1, :cond_e

    iget-object v6, p0, Lorg/eclipse/jdt/internal/compiler/ast/ReturnStatement;->saveValueVariable:Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;

    if-nez v6, :cond_c

    invoke-virtual {p0, v8}, Lorg/eclipse/jdt/internal/compiler/ast/ReturnStatement;->prepareSaveValueLocation(Lorg/eclipse/jdt/internal/compiler/ast/TryStatement;)V

    :cond_c
    invoke-virtual {v0, p3}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;->recordInitializationStates(Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;)I

    move-result v6

    iput v6, p0, Lorg/eclipse/jdt/internal/compiler/ast/ReturnStatement;->initStateIndex:I

    move v6, v2

    goto :goto_0

    :cond_d
    instance-of v8, v4, Lorg/eclipse/jdt/internal/compiler/flow/InitializationFlowContext;

    if-eqz v8, :cond_e

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object p1

    invoke-virtual {p1, p0}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->cannotReturnInInitializer(Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;)V

    sget-object p1, Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;->DEAD_END:Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;

    return-object p1

    :cond_e
    :goto_0
    invoke-virtual {v4}, Lorg/eclipse/jdt/internal/compiler/flow/FlowContext;->getLocalParent()Lorg/eclipse/jdt/internal/compiler/flow/FlowContext;

    move-result-object v4

    if-nez v4, :cond_5

    move v11, v5

    :goto_1
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/ReturnStatement;->subroutines:[Lorg/eclipse/jdt/internal/compiler/ast/SubRoutineStatement;

    if-eqz v0, :cond_f

    array-length v1, v0

    if-eq v11, v1, :cond_f

    new-array v1, v11, [Lorg/eclipse/jdt/internal/compiler/ast/SubRoutineStatement;

    iput-object v1, p0, Lorg/eclipse/jdt/internal/compiler/ast/ReturnStatement;->subroutines:[Lorg/eclipse/jdt/internal/compiler/ast/SubRoutineStatement;

    invoke-static {v0, v3, v1, v3, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_f
    if-eqz v6, :cond_10

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/ReturnStatement;->saveValueVariable:Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;

    if-eqz v0, :cond_11

    iput v2, v0, Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;->useFlag:I

    goto :goto_2

    :cond_10
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/ReturnStatement;->saveValueVariable:Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->bits:I

    and-int/2addr v0, v9

    if-nez v0, :cond_11

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/ReturnStatement;->expression:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    if-eqz v0, :cond_11

    iget-object v0, v0, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->resolvedType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    sget-object v1, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->BOOLEAN:Lorg/eclipse/jdt/internal/compiler/lookup/BaseTypeBinding;

    invoke-static {v0, v1}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->equalsEquals(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Z

    move-result v0

    if-eqz v0, :cond_11

    if-eqz v7, :cond_11

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/ReturnStatement;->expression:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    iget v1, v0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->bits:I

    or-int/lit8 v1, v1, 0x10

    iput v1, v0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->bits:I

    :cond_11
    :goto_2
    invoke-virtual {p1, p3, p2, p0, p1}, Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;->checkUnclosedCloseables(Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;Lorg/eclipse/jdt/internal/compiler/flow/FlowContext;Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;)V

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/flow/FlowContext;->recordAbruptExit()V

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/flow/FlowContext;->expireNullCheckedFieldInfo()V

    sget-object p1, Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;->DEAD_END:Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;

    return-object p1
.end method

.method public doesNotCompleteNormally()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public generateCode(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;)V
    .locals 12

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->bits:I

    const/high16 v1, -0x80000000

    and-int/2addr v0, v1

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget v0, p2, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->position:I

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/compiler/ast/ReturnStatement;->needValueStore()Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/ast/ReturnStatement;->expression:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/ast/ReturnStatement;->needValue()Z

    move-result v4

    invoke-virtual {v1, p1, p2, v4}, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->generateCode(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;Z)V

    invoke-virtual {p0, p2}, Lorg/eclipse/jdt/internal/compiler/ast/ReturnStatement;->generateStoreSaveValueIfNecessary(Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;)V

    move v1, v3

    goto :goto_0

    :cond_1
    move v1, v2

    :goto_0
    iget-object v4, p0, Lorg/eclipse/jdt/internal/compiler/ast/ReturnStatement;->subroutines:[Lorg/eclipse/jdt/internal/compiler/ast/SubRoutineStatement;

    if-eqz v4, :cond_5

    iget-object v4, p0, Lorg/eclipse/jdt/internal/compiler/ast/ReturnStatement;->expression:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    if-nez v4, :cond_2

    sget-object v4, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->VOID:Lorg/eclipse/jdt/internal/compiler/lookup/VoidTypeBinding;

    goto :goto_1

    :cond_2
    invoke-virtual {v4}, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->reusableJSRTarget()Ljava/lang/Object;

    move-result-object v4

    :goto_1
    iget-object v5, p0, Lorg/eclipse/jdt/internal/compiler/ast/ReturnStatement;->subroutines:[Lorg/eclipse/jdt/internal/compiler/ast/SubRoutineStatement;

    array-length v11, v5

    :goto_2
    if-lt v2, v11, :cond_3

    goto :goto_3

    :cond_3
    iget-object v5, p0, Lorg/eclipse/jdt/internal/compiler/ast/ReturnStatement;->subroutines:[Lorg/eclipse/jdt/internal/compiler/ast/SubRoutineStatement;

    aget-object v5, v5, v2

    iget v9, p0, Lorg/eclipse/jdt/internal/compiler/ast/ReturnStatement;->initStateIndex:I

    iget-object v10, p0, Lorg/eclipse/jdt/internal/compiler/ast/ReturnStatement;->saveValueVariable:Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;

    move-object v6, p1

    move-object v7, p2

    move-object v8, v4

    invoke-virtual/range {v5 .. v10}, Lorg/eclipse/jdt/internal/compiler/ast/SubRoutineStatement;->generateSubRoutineInvocation(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;Ljava/lang/Object;ILorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;)Z

    move-result v5

    if-eqz v5, :cond_4

    iget p1, p0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceStart:I

    invoke-virtual {p2, v0, p1}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->recordPositionsFrom(II)V

    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/ast/ReturnStatement;->subroutines:[Lorg/eclipse/jdt/internal/compiler/ast/SubRoutineStatement;

    invoke-static {p1, v2, p2}, Lorg/eclipse/jdt/internal/compiler/ast/SubRoutineStatement;->reenterAllExceptionHandlers([Lorg/eclipse/jdt/internal/compiler/ast/SubRoutineStatement;ILorg/eclipse/jdt/internal/compiler/codegen/CodeStream;)V

    return-void

    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_5
    :goto_3
    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/ast/ReturnStatement;->saveValueVariable:Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;

    if-eqz v2, :cond_6

    invoke-virtual {p2, v2}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->load(Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;)V

    :cond_6
    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/ast/ReturnStatement;->expression:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    if-eqz v2, :cond_7

    if-nez v1, :cond_7

    invoke-virtual {v2, p1, p2, v3}, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->generateCode(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;Z)V

    invoke-virtual {p0, p2}, Lorg/eclipse/jdt/internal/compiler/ast/ReturnStatement;->generateStoreSaveValueIfNecessary(Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;)V

    :cond_7
    invoke-virtual {p0, p2}, Lorg/eclipse/jdt/internal/compiler/ast/ReturnStatement;->generateReturnBytecode(Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;)V

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/ast/ReturnStatement;->saveValueVariable:Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;

    if-eqz v1, :cond_8

    invoke-virtual {p2, v1}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->removeVariable(Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;)V

    :cond_8
    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/ast/ReturnStatement;->initStateIndex:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_9

    invoke-virtual {p2, p1, v1}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->removeNotDefinitelyAssignedVariables(Lorg/eclipse/jdt/internal/compiler/lookup/Scope;I)V

    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/ast/ReturnStatement;->initStateIndex:I

    invoke-virtual {p2, p1, v1}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->addDefinitelyAssignedVariables(Lorg/eclipse/jdt/internal/compiler/lookup/Scope;I)V

    :cond_9
    iget p1, p0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceStart:I

    invoke-virtual {p2, v0, p1}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->recordPositionsFrom(II)V

    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/ast/ReturnStatement;->subroutines:[Lorg/eclipse/jdt/internal/compiler/ast/SubRoutineStatement;

    invoke-static {p1, v2, p2}, Lorg/eclipse/jdt/internal/compiler/ast/SubRoutineStatement;->reenterAllExceptionHandlers([Lorg/eclipse/jdt/internal/compiler/ast/SubRoutineStatement;ILorg/eclipse/jdt/internal/compiler/codegen/CodeStream;)V

    return-void
.end method

.method public generateReturnBytecode(Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;)V
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/ReturnStatement;->expression:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    invoke-virtual {p1, v0}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->generateReturnBytecode(Lorg/eclipse/jdt/internal/compiler/ast/Expression;)V

    return-void
.end method

.method public generateStoreSaveValueIfNecessary(Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;)V
    .locals 2

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/ReturnStatement;->saveValueVariable:Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->store(Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;Z)V

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/ReturnStatement;->saveValueVariable:Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;

    invoke-virtual {p1, v0}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->addVariable(Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;)V

    :cond_0
    return-void
.end method

.method public needValue()Z
    .locals 2

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/ReturnStatement;->saveValueVariable:Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;

    if-nez v0, :cond_0

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->bits:I

    const/high16 v1, 0x40000000    # 2.0f

    and-int/2addr v1, v0

    if-nez v1, :cond_0

    const/high16 v1, 0x20000000

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public prepareSaveValueLocation(Lorg/eclipse/jdt/internal/compiler/ast/TryStatement;)V
    .locals 0

    iget-object p1, p1, Lorg/eclipse/jdt/internal/compiler/ast/TryStatement;->secretReturnValue:Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;

    iput-object p1, p0, Lorg/eclipse/jdt/internal/compiler/ast/ReturnStatement;->saveValueVariable:Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;

    return-void
.end method

.method public printStatement(ILjava/lang/StringBuffer;)Ljava/lang/StringBuffer;
    .locals 1

    invoke-static {p1, p2}, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->printIndent(ILjava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    move-result-object p1

    const-string v0, "return "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/ast/ReturnStatement;->expression:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p1, v0, p2}, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->printExpression(ILjava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    :cond_0
    const/16 p1, 0x3b

    invoke-virtual {p2, p1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    return-object p2
.end method

.method public resolve(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;)V
    .locals 7

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->methodScope()Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;

    move-result-object v0

    iget-object v0, v0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;->referenceContext:Lorg/eclipse/jdt/internal/compiler/impl/ReferenceContext;

    instance-of v1, v0, Lorg/eclipse/jdt/internal/compiler/ast/LambdaExpression;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Lorg/eclipse/jdt/internal/compiler/ast/LambdaExpression;

    goto :goto_0

    :cond_0
    move-object v1, v2

    :goto_0
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/compiler/ast/LambdaExpression;->expectedResultType()Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v0

    goto :goto_1

    :cond_1
    instance-of v3, v0, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;

    if-eqz v3, :cond_3

    check-cast v0, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;

    iget-object v0, v0, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    if-nez v0, :cond_2

    move-object v0, v2

    goto :goto_1

    :cond_2
    iget-object v0, v0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->returnType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    goto :goto_1

    :cond_3
    sget-object v0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->VOID:Lorg/eclipse/jdt/internal/compiler/lookup/VoidTypeBinding;

    :goto_1
    iget-object v3, p0, Lorg/eclipse/jdt/internal/compiler/ast/ReturnStatement;->expression:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    if-eqz v3, :cond_4

    sget-object v4, Lorg/eclipse/jdt/internal/compiler/ast/ExpressionContext;->ASSIGNMENT_CONTEXT:Lorg/eclipse/jdt/internal/compiler/ast/ExpressionContext;

    invoke-virtual {v3, v4}, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->setExpressionContext(Lorg/eclipse/jdt/internal/compiler/ast/ExpressionContext;)V

    iget-object v3, p0, Lorg/eclipse/jdt/internal/compiler/ast/ReturnStatement;->expression:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    invoke-virtual {v3, v0}, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->setExpectedType(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)V

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/compiler/ast/LambdaExpression;->argumentsTypeElided()Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Lorg/eclipse/jdt/internal/compiler/ast/ReturnStatement;->expression:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    instance-of v4, v3, Lorg/eclipse/jdt/internal/compiler/ast/CastExpression;

    if-eqz v4, :cond_4

    iget v4, v3, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->bits:I

    or-int/lit8 v4, v4, 0x20

    iput v4, v3, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->bits:I

    :cond_4
    sget-object v3, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->VOID:Lorg/eclipse/jdt/internal/compiler/lookup/VoidTypeBinding;

    if-ne v0, v3, :cond_b

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/ReturnStatement;->expression:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    if-nez v0, :cond_6

    if-eqz v1, :cond_5

    invoke-virtual {v1, v2, v3}, Lorg/eclipse/jdt/internal/compiler/ast/LambdaExpression;->returnsExpression(Lorg/eclipse/jdt/internal/compiler/ast/Expression;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)V

    :cond_5
    return-void

    :cond_6
    invoke-virtual {v0, p1}, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->resolveType(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v0

    if-eqz v1, :cond_7

    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/ast/ReturnStatement;->expression:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    invoke-virtual {v1, v2, v0}, Lorg/eclipse/jdt/internal/compiler/ast/LambdaExpression;->returnsExpression(Lorg/eclipse/jdt/internal/compiler/ast/Expression;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)V

    :cond_7
    iget-boolean v1, p0, Lorg/eclipse/jdt/internal/compiler/ast/ReturnStatement;->implicitReturn:Z

    if-eqz v1, :cond_9

    if-eq v0, v3, :cond_8

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/ast/ReturnStatement;->expression:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->statementExpression()Z

    move-result v1

    if-eqz v1, :cond_9

    :cond_8
    return-void

    :cond_9
    if-eqz v0, :cond_a

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object p1

    invoke-virtual {p1, p0, v0}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->attemptToReturnNonVoidExpression(Lorg/eclipse/jdt/internal/compiler/ast/ReturnStatement;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)V

    :cond_a
    return-void

    :cond_b
    iget-object v4, p0, Lorg/eclipse/jdt/internal/compiler/ast/ReturnStatement;->expression:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    if-nez v4, :cond_e

    if-eqz v1, :cond_c

    invoke-virtual {v1, v2, v0}, Lorg/eclipse/jdt/internal/compiler/ast/LambdaExpression;->returnsExpression(Lorg/eclipse/jdt/internal/compiler/ast/Expression;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)V

    :cond_c
    if-eqz v0, :cond_d

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object p1

    invoke-virtual {p1, v0, p0}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->shouldReturn(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;)V

    :cond_d
    return-void

    :cond_e
    invoke-virtual {v4, p1}, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->resolveType(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v2

    if-eqz v1, :cond_f

    iget-object v4, p0, Lorg/eclipse/jdt/internal/compiler/ast/ReturnStatement;->expression:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    invoke-virtual {v1, v4, v2}, Lorg/eclipse/jdt/internal/compiler/ast/LambdaExpression;->returnsExpression(Lorg/eclipse/jdt/internal/compiler/ast/Expression;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)V

    :cond_f
    if-nez v2, :cond_10

    return-void

    :cond_10
    if-ne v2, v3, :cond_11

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object p1

    invoke-virtual {p1, p0}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->attemptToReturnVoidValue(Lorg/eclipse/jdt/internal/compiler/ast/ReturnStatement;)V

    return-void

    :cond_11
    if-nez v0, :cond_12

    return-void

    :cond_12
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isProperType(Z)Z

    move-result v3

    if-eqz v3, :cond_13

    if-eqz v1, :cond_13

    iget-object v3, v1, Lorg/eclipse/jdt/internal/compiler/ast/FunctionalExpression;->descriptor:Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    invoke-virtual {v1, v3}, Lorg/eclipse/jdt/internal/compiler/ast/LambdaExpression;->updateLocalTypesInMethod(Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;)Z

    move-result v3

    if-eqz v3, :cond_13

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/compiler/ast/LambdaExpression;->expectedResultType()Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v0

    :cond_13
    invoke-static {v0, v2}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->notEquals(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Z

    move-result v3

    if-eqz v3, :cond_14

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->compilationUnitScope()Lorg/eclipse/jdt/internal/compiler/lookup/CompilationUnitScope;

    move-result-object v3

    invoke-virtual {v3, v0, v2}, Lorg/eclipse/jdt/internal/compiler/lookup/CompilationUnitScope;->recordTypeConversion(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)V

    :cond_14
    iget-object v3, p0, Lorg/eclipse/jdt/internal/compiler/ast/ReturnStatement;->expression:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    invoke-virtual {v3, v2, v0}, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->isConstantValueOfTypeAssignableToType(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Z

    move-result v3

    if-nez v3, :cond_19

    invoke-virtual {v2, v0, p1}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isCompatibleWith(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/Scope;)Z

    move-result v3

    if-eqz v3, :cond_15

    goto :goto_2

    :cond_15
    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/ast/ReturnStatement;->expression:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    invoke-virtual {p0, v2, v0, v1, p1}, Lorg/eclipse/jdt/internal/compiler/ast/Statement;->isBoxingCompatible(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/ast/Expression;Lorg/eclipse/jdt/internal/compiler/lookup/Scope;)Z

    move-result v1

    if-eqz v1, :cond_17

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/ast/ReturnStatement;->expression:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    invoke-virtual {v1, p1, v0, v2}, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->computeConversion(Lorg/eclipse/jdt/internal/compiler/lookup/Scope;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)V

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/ast/ReturnStatement;->expression:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    instance-of v2, v1, Lorg/eclipse/jdt/internal/compiler/ast/CastExpression;

    if-eqz v2, :cond_16

    iget v2, v1, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->bits:I

    and-int/lit16 v2, v2, 0x4020

    if-nez v2, :cond_16

    check-cast v1, Lorg/eclipse/jdt/internal/compiler/ast/CastExpression;

    invoke-static {p1, v0, v1}, Lorg/eclipse/jdt/internal/compiler/ast/CastExpression;->checkNeedForAssignedCast(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/ast/CastExpression;)V

    :cond_16
    return-void

    :cond_17
    iget-wide v3, v0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->tagBits:J

    const-wide/16 v5, 0x80

    and-long/2addr v3, v5

    const-wide/16 v5, 0x0

    cmp-long v1, v3, v5

    if-nez v1, :cond_18

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object p1

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/ast/ReturnStatement;->expression:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    invoke-virtual {p1, v2, v0, v1, p0}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->typeMismatchError(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;)V

    :cond_18
    return-void

    :cond_19
    :goto_2
    iget-object v3, p0, Lorg/eclipse/jdt/internal/compiler/ast/ReturnStatement;->expression:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    invoke-virtual {v3, p1, v0, v2}, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->computeConversion(Lorg/eclipse/jdt/internal/compiler/lookup/Scope;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)V

    invoke-virtual {v2, v0}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->needsUncheckedConversion(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Z

    move-result v3

    if-eqz v3, :cond_1a

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object v3

    iget-object v4, p0, Lorg/eclipse/jdt/internal/compiler/ast/ReturnStatement;->expression:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    invoke-virtual {v3, v4, v2, v0}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->unsafeTypeConversion(Lorg/eclipse/jdt/internal/compiler/ast/Expression;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)V

    :cond_1a
    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/ast/ReturnStatement;->expression:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    instance-of v3, v2, Lorg/eclipse/jdt/internal/compiler/ast/CastExpression;

    if-eqz v3, :cond_1c

    iget v3, v2, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->bits:I

    and-int/lit16 v3, v3, 0x4020

    if-nez v3, :cond_1b

    check-cast v2, Lorg/eclipse/jdt/internal/compiler/ast/CastExpression;

    invoke-static {p1, v0, v2}, Lorg/eclipse/jdt/internal/compiler/ast/CastExpression;->checkNeedForAssignedCast(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/ast/CastExpression;)V

    goto :goto_3

    :cond_1b
    if-eqz v1, :cond_1c

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/compiler/ast/LambdaExpression;->argumentsTypeElided()Z

    move-result v1

    if-eqz v1, :cond_1c

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/ast/ReturnStatement;->expression:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    iget v2, v1, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->bits:I

    and-int/lit16 v2, v2, 0x4000

    if-eqz v2, :cond_1c

    check-cast v1, Lorg/eclipse/jdt/internal/compiler/ast/CastExpression;

    iget-object v1, v1, Lorg/eclipse/jdt/internal/compiler/ast/CastExpression;->expression:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    iget-object v1, v1, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->resolvedType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-static {v1, v0}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->equalsEquals(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Z

    move-result v0

    if-eqz v0, :cond_1c

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object p1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/ReturnStatement;->expression:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    check-cast v0, Lorg/eclipse/jdt/internal/compiler/ast/CastExpression;

    invoke-virtual {p1, v0}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->unnecessaryCast(Lorg/eclipse/jdt/internal/compiler/ast/CastExpression;)V

    :cond_1c
    :goto_3
    return-void
.end method

.method public traverse(Lorg/eclipse/jdt/internal/compiler/ASTVisitor;Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;)V
    .locals 1

    invoke-virtual {p1, p0, p2}, Lorg/eclipse/jdt/internal/compiler/ASTVisitor;->visit(Lorg/eclipse/jdt/internal/compiler/ast/ReturnStatement;Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/ReturnStatement;->expression:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->traverse(Lorg/eclipse/jdt/internal/compiler/ASTVisitor;Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;)V

    :cond_0
    invoke-virtual {p1, p0, p2}, Lorg/eclipse/jdt/internal/compiler/ASTVisitor;->endVisit(Lorg/eclipse/jdt/internal/compiler/ast/ReturnStatement;Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;)V

    return-void
.end method
