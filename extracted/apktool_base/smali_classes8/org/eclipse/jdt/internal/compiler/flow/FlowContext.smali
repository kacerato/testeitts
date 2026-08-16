.class public Lorg/eclipse/jdt/internal/compiler/flow/FlowContext;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/eclipse/jdt/internal/compiler/lookup/TypeConstants;


# static fields
.field public static final ASSIGN_TO_NONNULL:I = 0x80

.field public static final CAN_ONLY_NON_NULL:I = 0x2

.field public static final CAN_ONLY_NULL:I = 0x1

.field public static final CAN_ONLY_NULL_NON_NULL:I = 0x0

.field public static final CHECK_MASK:I = 0xff

.field public static final CONTEXT_MASK:I = -0xf100

.field public static final DEFER_NULL_DIAGNOSTIC:I = 0x1

.field public static final EXIT_RESOURCE:I = 0x800

.field public static final HIDE_NULL_COMPARISON_WARNING:I = 0x1000

.field public static final HIDE_NULL_COMPARISON_WARNING_MASK:I = 0xf000

.field public static final INSIDE_NEGATION:I = 0x4

.field public static final IN_ASSIGNMENT:I = 0x300

.field public static final IN_COMPARISON_NON_NULL:I = 0x200

.field public static final IN_COMPARISON_NULL:I = 0x100

.field public static final IN_INSTANCEOF:I = 0x400

.field public static final IN_UNBOXING:I = 0x10

.field public static final MAY_NULL:I = 0x3

.field public static final NotContinuableContext:Lorg/eclipse/jdt/internal/compiler/flow/FlowContext;

.field public static final PREEMPT_NULL_DIAGNOSTIC:I = 0x2


# instance fields
.field public associatedNode:Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;

.field public conditionalLevel:I

.field public initsOnFinally:Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;

.field private nullCheckedFieldReferences:[Lorg/eclipse/jdt/internal/compiler/ast/Reference;

.field public parent:Lorg/eclipse/jdt/internal/compiler/flow/FlowContext;

.field public providedExpectedTypes:[[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

.field public tagBits:I

.field private timesToLiveForNullCheckInfo:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lorg/eclipse/jdt/internal/compiler/flow/FlowContext;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {v0, v1, v1, v2}, Lorg/eclipse/jdt/internal/compiler/flow/FlowContext;-><init>(Lorg/eclipse/jdt/internal/compiler/flow/FlowContext;Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;Z)V

    sput-object v0, Lorg/eclipse/jdt/internal/compiler/flow/FlowContext;->NotContinuableContext:Lorg/eclipse/jdt/internal/compiler/flow/FlowContext;

    return-void
.end method

.method public constructor <init>(Lorg/eclipse/jdt/internal/compiler/flow/FlowContext;Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;Z)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/flow/FlowContext;->conditionalLevel:I

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/eclipse/jdt/internal/compiler/flow/FlowContext;->providedExpectedTypes:[[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    iput-object v0, p0, Lorg/eclipse/jdt/internal/compiler/flow/FlowContext;->nullCheckedFieldReferences:[Lorg/eclipse/jdt/internal/compiler/ast/Reference;

    iput-object v0, p0, Lorg/eclipse/jdt/internal/compiler/flow/FlowContext;->timesToLiveForNullCheckInfo:[I

    iput-object p1, p0, Lorg/eclipse/jdt/internal/compiler/flow/FlowContext;->parent:Lorg/eclipse/jdt/internal/compiler/flow/FlowContext;

    iput-object p2, p0, Lorg/eclipse/jdt/internal/compiler/flow/FlowContext;->associatedNode:Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;

    if-eqz p1, :cond_1

    iget p2, p1, Lorg/eclipse/jdt/internal/compiler/flow/FlowContext;->tagBits:I

    and-int/lit8 p2, p2, 0x3

    if-eqz p2, :cond_0

    iget p2, p0, Lorg/eclipse/jdt/internal/compiler/flow/FlowContext;->tagBits:I

    or-int/lit8 p2, p2, 0x1

    iput p2, p0, Lorg/eclipse/jdt/internal/compiler/flow/FlowContext;->tagBits:I

    :cond_0
    iget-object p2, p1, Lorg/eclipse/jdt/internal/compiler/flow/FlowContext;->initsOnFinally:Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;

    iput-object p2, p0, Lorg/eclipse/jdt/internal/compiler/flow/FlowContext;->initsOnFinally:Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;

    iget p2, p1, Lorg/eclipse/jdt/internal/compiler/flow/FlowContext;->conditionalLevel:I

    iput p2, p0, Lorg/eclipse/jdt/internal/compiler/flow/FlowContext;->conditionalLevel:I

    if-eqz p3, :cond_1

    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/internal/compiler/flow/FlowContext;->copyNullCheckedFieldsFrom(Lorg/eclipse/jdt/internal/compiler/flow/FlowContext;)V

    :cond_1
    return-void
.end method


# virtual methods
.method public breakLabel()Lorg/eclipse/jdt/internal/compiler/codegen/BranchLabel;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public checkExceptionHandlers(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;)V
    .locals 6

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    .line 1
    invoke-virtual/range {v0 .. v5}, Lorg/eclipse/jdt/internal/compiler/flow/FlowContext;->checkExceptionHandlers(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;Z)V

    return-void
.end method

.method public checkExceptionHandlers(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;Z)V
    .locals 22

    move-object/from16 v7, p1

    move-object/from16 v8, p2

    move-object/from16 v9, p3

    .line 2
    invoke-virtual/range {p4 .. p4}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->compilerOptions()Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;

    move-result-object v0

    iget-wide v0, v0, Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;->sourceLevel:J

    const-wide/32 v2, 0x330000

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    instance-of v0, v8, Lorg/eclipse/jdt/internal/compiler/ast/ThrowStatement;

    if-eqz v0, :cond_0

    .line 3
    move-object v0, v8

    check-cast v0, Lorg/eclipse/jdt/internal/compiler/ast/ThrowStatement;

    iget-object v0, v0, Lorg/eclipse/jdt/internal/compiler/ast/ThrowStatement;->exception:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    .line 4
    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->localVariableBinding()Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;

    move-result-object v1

    .line 5
    instance-of v0, v0, Lorg/eclipse/jdt/internal/compiler/ast/SingleNameReference;

    if-eqz v0, :cond_0

    .line 6
    instance-of v0, v1, Lorg/eclipse/jdt/internal/compiler/lookup/CatchParameterBinding;

    if-eqz v0, :cond_0

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/compiler/lookup/VariableBinding;->isEffectivelyFinal()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 7
    check-cast v1, Lorg/eclipse/jdt/internal/compiler/lookup/CatchParameterBinding;

    .line 8
    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/compiler/lookup/CatchParameterBinding;->getPreciseTypes()[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v0

    move-object/from16 v10, p0

    move-object/from16 v11, p4

    invoke-virtual {v10, v0, v8, v9, v11}, Lorg/eclipse/jdt/internal/compiler/flow/FlowContext;->checkExceptionHandlers([Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;)V

    return-void

    :cond_0
    move-object/from16 v10, p0

    move-object/from16 v11, p4

    const/4 v0, 0x0

    move-object v12, v0

    move-object v13, v10

    :goto_0
    if-nez v13, :cond_1

    goto/16 :goto_8

    .line 9
    :cond_1
    invoke-virtual {v13}, Lorg/eclipse/jdt/internal/compiler/flow/FlowContext;->subroutine()Lorg/eclipse/jdt/internal/compiler/ast/SubRoutineStatement;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/ast/SubRoutineStatement;->isSubRoutineEscaping()Z

    move-result v0

    if-eqz v0, :cond_2

    return-void

    .line 10
    :cond_2
    instance-of v0, v13, Lorg/eclipse/jdt/internal/compiler/flow/ExceptionHandlingFlowContext;

    if-eqz v0, :cond_e

    .line 11
    move-object v14, v13

    check-cast v14, Lorg/eclipse/jdt/internal/compiler/flow/ExceptionHandlingFlowContext;

    .line 12
    iget-object v15, v14, Lorg/eclipse/jdt/internal/compiler/flow/ExceptionHandlingFlowContext;->handledExceptions:[Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    sget-object v0, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->NO_EXCEPTIONS:[Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    if-eq v15, v0, :cond_3

    .line 13
    array-length v4, v15

    const/4 v3, 0x0

    const/16 v16, 0x0

    :goto_1
    if-lt v3, v4, :cond_4

    if-eqz v16, :cond_3

    return-void

    :cond_3
    const/4 v10, 0x0

    const/16 v21, 0x1

    goto/16 :goto_7

    .line 14
    :cond_4
    aget-object v2, v15, v3

    if-nez v2, :cond_5

    const/4 v1, -0x1

    goto :goto_2

    .line 15
    :cond_5
    invoke-static {v7, v2}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->compareTypes(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)I

    move-result v1

    :goto_2
    if-eqz v12, :cond_7

    if-eqz v2, :cond_7

    if-eqz v1, :cond_7

    .line 16
    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v6

    const/4 v5, 0x0

    :goto_3
    if-lt v5, v6, :cond_6

    .line 17
    sget-object v5, Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;->DEAD_END:Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;

    :goto_4
    const/4 v0, -0x1

    goto :goto_5

    .line 18
    :cond_6
    invoke-virtual {v12, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v18

    move-object/from16 v0, v18

    check-cast v0, Lorg/eclipse/jdt/internal/compiler/flow/LoopingFlowContext;

    .line 19
    invoke-virtual {v0, v14, v2, v9}, Lorg/eclipse/jdt/internal/compiler/flow/LoopingFlowContext;->recordCatchContextOfEscapingException(Lorg/eclipse/jdt/internal/compiler/flow/ExceptionHandlingFlowContext;Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    :cond_7
    move-object v5, v9

    goto :goto_4

    :goto_5
    if-eq v1, v0, :cond_9

    const/4 v6, 0x1

    if-eq v1, v6, :cond_8

    move/from16 v19, v3

    move/from16 v20, v4

    move/from16 v21, v6

    const/4 v10, 0x0

    goto :goto_6

    .line 20
    :cond_8
    invoke-virtual {v5}, Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;->unconditionalInits()Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;

    move-result-object v5

    const/16 v17, 0x0

    move-object v0, v14

    move-object v1, v2

    move-object/from16 v18, v2

    move-object v2, v5

    move/from16 v19, v3

    move-object/from16 v3, p1

    move/from16 v20, v4

    move-object/from16 v4, v18

    move/from16 v21, v6

    move-object/from16 v5, p2

    const/4 v10, 0x0

    move/from16 v6, v17

    .line 21
    invoke-virtual/range {v0 .. v6}, Lorg/eclipse/jdt/internal/compiler/flow/ExceptionHandlingFlowContext;->recordHandlingException(Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;Z)V

    goto :goto_6

    :cond_9
    move-object/from16 v18, v2

    move/from16 v19, v3

    move/from16 v20, v4

    const/4 v10, 0x0

    const/16 v21, 0x1

    .line 22
    invoke-virtual {v5}, Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;->unconditionalInits()Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;

    move-result-object v2

    move-object v0, v14

    move-object/from16 v1, v18

    move-object/from16 v3, p1

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    move/from16 v6, v16

    .line 23
    invoke-virtual/range {v0 .. v6}, Lorg/eclipse/jdt/internal/compiler/flow/ExceptionHandlingFlowContext;->recordHandlingException(Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;Z)V

    move/from16 v16, v21

    :goto_6
    add-int/lit8 v3, v19, 0x1

    move-object/from16 v10, p0

    move/from16 v4, v20

    goto/16 :goto_1

    .line 24
    :goto_7
    iget-boolean v0, v14, Lorg/eclipse/jdt/internal/compiler/flow/ExceptionHandlingFlowContext;->isMethodContext:Z

    if-eqz v0, :cond_10

    .line 25
    invoke-virtual {v7, v10}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isUncheckedException(Z)Z

    move-result v0

    if-eqz v0, :cond_a

    return-void

    .line 26
    :cond_a
    instance-of v5, v14, Lorg/eclipse/jdt/internal/compiler/flow/ExceptionInferenceFlowContext;

    .line 27
    iget-object v0, v14, Lorg/eclipse/jdt/internal/compiler/flow/FlowContext;->associatedNode:Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;

    instance-of v1, v0, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;

    if-eqz v1, :cond_b

    .line 28
    check-cast v0, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;

    .line 29
    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->isConstructor()Z

    move-result v1

    if-eqz v1, :cond_b

    iget-object v0, v0, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    iget-object v0, v0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->declaringClass:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isAnonymousType()Z

    move-result v0

    if-eqz v0, :cond_b

    move/from16 v5, v21

    :cond_b
    if-eqz v5, :cond_c

    .line 30
    invoke-virtual {v14, v7}, Lorg/eclipse/jdt/internal/compiler/flow/ExceptionHandlingFlowContext;->mergeUnhandledException(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)V

    return-void

    :cond_c
    :goto_8
    if-eqz p5, :cond_d

    .line 31
    invoke-virtual/range {p4 .. p4}, Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object v0

    invoke-virtual {v0, v7, v8}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->unhandledExceptionFromAutoClose(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;)V

    goto :goto_9

    .line 32
    :cond_d
    invoke-virtual/range {p4 .. p4}, Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object v0

    invoke-virtual {v0, v7, v8}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->unhandledException(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;)V

    :goto_9
    return-void

    .line 33
    :cond_e
    instance-of v0, v13, Lorg/eclipse/jdt/internal/compiler/flow/LoopingFlowContext;

    if-eqz v0, :cond_10

    if-nez v12, :cond_f

    .line 34
    new-instance v12, Ljava/util/ArrayList;

    const/4 v0, 0x5

    invoke-direct {v12, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 35
    :cond_f
    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 36
    :cond_10
    invoke-virtual/range {p3 .. p3}, Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;->unconditionalInits()Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;

    move-result-object v0

    invoke-virtual {v13, v0}, Lorg/eclipse/jdt/internal/compiler/flow/FlowContext;->recordReturnFrom(Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;)V

    if-nez p5, :cond_11

    .line 37
    instance-of v0, v13, Lorg/eclipse/jdt/internal/compiler/flow/InsideSubRoutineFlowContext;

    if-eqz v0, :cond_11

    .line 38
    iget-object v0, v13, Lorg/eclipse/jdt/internal/compiler/flow/FlowContext;->associatedNode:Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;

    .line 39
    instance-of v1, v0, Lorg/eclipse/jdt/internal/compiler/ast/TryStatement;

    if-eqz v1, :cond_11

    .line 40
    check-cast v0, Lorg/eclipse/jdt/internal/compiler/ast/TryStatement;

    .line 41
    iget-object v0, v0, Lorg/eclipse/jdt/internal/compiler/ast/TryStatement;->subRoutineInits:Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;

    invoke-virtual {v9, v0}, Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;->addInitializationsFrom(Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;)Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;

    .line 42
    :cond_11
    invoke-virtual {v13}, Lorg/eclipse/jdt/internal/compiler/flow/FlowContext;->getLocalParent()Lorg/eclipse/jdt/internal/compiler/flow/FlowContext;

    move-result-object v13

    move-object/from16 v10, p0

    goto/16 :goto_0
.end method

.method public checkExceptionHandlers([Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;)V
    .locals 24

    move-object/from16 v0, p1

    move-object/from16 v1, p3

    if-eqz v0, :cond_20

    .line 43
    array-length v2, v0

    if-nez v2, :cond_0

    goto/16 :goto_12

    .line 44
    :cond_0
    new-array v3, v2, [Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    const/4 v4, 0x0

    .line 45
    invoke-static {v0, v4, v3, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 v0, 0x0

    move-object/from16 v5, p0

    move-object v6, v0

    move v7, v2

    :goto_0
    if-nez v5, :cond_1

    goto/16 :goto_c

    .line 46
    :cond_1
    invoke-virtual {v5}, Lorg/eclipse/jdt/internal/compiler/flow/FlowContext;->subroutine()Lorg/eclipse/jdt/internal/compiler/ast/SubRoutineStatement;

    move-result-object v8

    if-eqz v8, :cond_2

    invoke-virtual {v8}, Lorg/eclipse/jdt/internal/compiler/ast/SubRoutineStatement;->isSubRoutineEscaping()Z

    move-result v8

    if-eqz v8, :cond_2

    return-void

    .line 47
    :cond_2
    instance-of v8, v5, Lorg/eclipse/jdt/internal/compiler/flow/ExceptionHandlingFlowContext;

    if-eqz v8, :cond_1b

    .line 48
    move-object v8, v5

    check-cast v8, Lorg/eclipse/jdt/internal/compiler/flow/ExceptionHandlingFlowContext;

    .line 49
    iget-object v15, v8, Lorg/eclipse/jdt/internal/compiler/flow/ExceptionHandlingFlowContext;->handledExceptions:[Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    sget-object v9, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->NO_EXCEPTIONS:[Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    if-eq v15, v9, :cond_3

    .line 50
    array-length v13, v15

    .line 51
    new-array v12, v2, [Z

    move v11, v4

    :goto_1
    if-lt v11, v13, :cond_6

    move v9, v4

    :goto_2
    if-lt v9, v2, :cond_4

    :cond_3
    const/16 v22, 0x1

    goto/16 :goto_9

    .line 52
    :cond_4
    aget-boolean v10, v12, v9

    if-eqz v10, :cond_5

    .line 53
    aput-object v0, v3, v9

    :cond_5
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    .line 54
    :cond_6
    aget-object v10, v15, v11

    move v9, v4

    :goto_3
    if-lt v9, v2, :cond_7

    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    .line 55
    :cond_7
    aget-object v0, v3, v9

    if-eqz v0, :cond_d

    if-nez v10, :cond_8

    const/4 v14, -0x1

    goto :goto_4

    .line 56
    :cond_8
    invoke-static {v0, v10}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->compareTypes(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)I

    move-result v16

    move/from16 v14, v16

    :goto_4
    if-eqz v6, :cond_a

    if-eqz v10, :cond_a

    if-eqz v14, :cond_a

    .line 57
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v4

    move/from16 v18, v9

    const/4 v9, 0x0

    :goto_5
    if-lt v9, v4, :cond_9

    .line 58
    sget-object v4, Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;->DEAD_END:Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;

    :goto_6
    const/4 v9, -0x1

    goto :goto_7

    .line 59
    :cond_9
    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v19

    move/from16 v20, v4

    move-object/from16 v4, v19

    check-cast v4, Lorg/eclipse/jdt/internal/compiler/flow/LoopingFlowContext;

    .line 60
    invoke-virtual {v4, v8, v10, v1}, Lorg/eclipse/jdt/internal/compiler/flow/LoopingFlowContext;->recordCatchContextOfEscapingException(Lorg/eclipse/jdt/internal/compiler/flow/ExceptionHandlingFlowContext;Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;)V

    add-int/lit8 v9, v9, 0x1

    move/from16 v4, v20

    goto :goto_5

    :cond_a
    move/from16 v18, v9

    move-object v4, v1

    goto :goto_6

    :goto_7
    if-eq v14, v9, :cond_c

    const/4 v9, 0x1

    if-eq v14, v9, :cond_b

    move/from16 v22, v9

    move/from16 v19, v11

    move-object/from16 v20, v12

    move/from16 v21, v13

    move-object/from16 v23, v15

    move/from16 v17, v18

    move-object/from16 v18, v10

    goto/16 :goto_8

    .line 61
    :cond_b
    invoke-virtual {v4}, Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;->unconditionalInits()Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;

    move-result-object v4

    const/16 v16, 0x0

    move v14, v9

    move/from16 v17, v18

    move-object v9, v8

    move-object/from16 v18, v10

    move/from16 v19, v11

    move-object v11, v4

    move-object/from16 v20, v12

    move-object v12, v0

    move/from16 v21, v13

    move-object/from16 v13, v18

    move/from16 v22, v14

    move-object/from16 v14, p2

    move-object/from16 v23, v15

    move/from16 v15, v16

    .line 62
    invoke-virtual/range {v9 .. v15}, Lorg/eclipse/jdt/internal/compiler/flow/ExceptionHandlingFlowContext;->recordHandlingException(Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;Z)V

    goto :goto_8

    :cond_c
    move/from16 v19, v11

    move-object/from16 v20, v12

    move/from16 v21, v13

    move-object/from16 v23, v15

    move/from16 v17, v18

    const/16 v22, 0x1

    move-object/from16 v18, v10

    .line 63
    invoke-virtual {v4}, Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;->unconditionalInits()Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;

    move-result-object v11

    .line 64
    aget-boolean v15, v20, v17

    move-object v9, v8

    move-object v12, v0

    move-object v13, v0

    move-object/from16 v14, p2

    .line 65
    invoke-virtual/range {v9 .. v15}, Lorg/eclipse/jdt/internal/compiler/flow/ExceptionHandlingFlowContext;->recordHandlingException(Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;Z)V

    .line 66
    aget-boolean v0, v20, v17

    if-nez v0, :cond_e

    .line 67
    aput-boolean v22, v20, v17

    add-int/lit8 v7, v7, -0x1

    goto :goto_8

    :cond_d
    move/from16 v17, v9

    move-object/from16 v18, v10

    move/from16 v19, v11

    move-object/from16 v20, v12

    move/from16 v21, v13

    move-object/from16 v23, v15

    const/16 v22, 0x1

    :cond_e
    :goto_8
    add-int/lit8 v9, v17, 0x1

    move-object/from16 v10, v18

    move/from16 v11, v19

    move-object/from16 v12, v20

    move/from16 v13, v21

    move-object/from16 v15, v23

    const/4 v0, 0x0

    const/4 v4, 0x0

    goto/16 :goto_3

    .line 68
    :goto_9
    iget-boolean v0, v8, Lorg/eclipse/jdt/internal/compiler/flow/ExceptionHandlingFlowContext;->isMethodContext:Z

    if-eqz v0, :cond_1a

    const/4 v0, 0x0

    :goto_a
    if-lt v0, v2, :cond_17

    .line 69
    instance-of v14, v8, Lorg/eclipse/jdt/internal/compiler/flow/ExceptionInferenceFlowContext;

    .line 70
    iget-object v0, v8, Lorg/eclipse/jdt/internal/compiler/flow/FlowContext;->associatedNode:Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;

    instance-of v1, v0, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;

    if-eqz v1, :cond_f

    .line 71
    check-cast v0, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;

    .line 72
    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->isConstructor()Z

    move-result v1

    if-eqz v1, :cond_f

    iget-object v0, v0, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    iget-object v0, v0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->declaringClass:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isAnonymousType()Z

    move-result v0

    if-eqz v0, :cond_f

    move/from16 v14, v22

    :cond_f
    if-eqz v14, :cond_12

    const/4 v4, 0x0

    :goto_b
    if-lt v4, v2, :cond_10

    return-void

    .line 73
    :cond_10
    aget-object v0, v3, v4

    if-eqz v0, :cond_11

    .line 74
    invoke-virtual {v8, v0}, Lorg/eclipse/jdt/internal/compiler/flow/ExceptionHandlingFlowContext;->mergeUnhandledException(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)V

    :cond_11
    add-int/lit8 v4, v4, 0x1

    goto :goto_b

    :cond_12
    :goto_c
    const/4 v0, 0x0

    :goto_d
    if-lt v0, v2, :cond_13

    return-void

    .line 75
    :cond_13
    aget-object v1, v3, v0

    if-eqz v1, :cond_16

    const/4 v4, 0x0

    :goto_e
    if-lt v4, v0, :cond_14

    .line 76
    invoke-virtual/range {p4 .. p4}, Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object v4

    move-object/from16 v9, p2

    invoke-virtual {v4, v1, v9}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->unhandledException(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;)V

    goto :goto_f

    :cond_14
    move-object/from16 v9, p2

    .line 77
    aget-object v5, v3, v4

    invoke-static {v5, v1}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->equalsEquals(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Z

    move-result v5

    if-eqz v5, :cond_15

    goto :goto_f

    :cond_15
    add-int/lit8 v4, v4, 0x1

    goto :goto_e

    :cond_16
    move-object/from16 v9, p2

    :goto_f
    add-int/lit8 v0, v0, 0x1

    goto :goto_d

    :cond_17
    move-object/from16 v9, p2

    .line 78
    aget-object v1, v3, v0

    const/4 v4, 0x0

    if-eqz v1, :cond_18

    .line 79
    invoke-virtual {v1, v4}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isUncheckedException(Z)Z

    move-result v1

    const/4 v10, 0x0

    if-eqz v1, :cond_19

    .line 80
    aput-object v10, v3, v0

    goto :goto_10

    :cond_18
    const/4 v10, 0x0

    :cond_19
    :goto_10
    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    :cond_1a
    move-object/from16 v9, p2

    const/4 v4, 0x0

    const/4 v10, 0x0

    goto :goto_11

    :cond_1b
    move-object/from16 v9, p2

    move-object v10, v0

    .line 81
    instance-of v0, v5, Lorg/eclipse/jdt/internal/compiler/flow/LoopingFlowContext;

    if-eqz v0, :cond_1d

    if-nez v6, :cond_1c

    .line 82
    new-instance v6, Ljava/util/ArrayList;

    const/4 v0, 0x5

    invoke-direct {v6, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 83
    :cond_1c
    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1d
    :goto_11
    if-nez v7, :cond_1e

    return-void

    .line 84
    :cond_1e
    invoke-virtual/range {p3 .. p3}, Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;->unconditionalInits()Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;

    move-result-object v0

    invoke-virtual {v5, v0}, Lorg/eclipse/jdt/internal/compiler/flow/FlowContext;->recordReturnFrom(Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;)V

    .line 85
    instance-of v0, v5, Lorg/eclipse/jdt/internal/compiler/flow/InsideSubRoutineFlowContext;

    if-eqz v0, :cond_1f

    .line 86
    iget-object v0, v5, Lorg/eclipse/jdt/internal/compiler/flow/FlowContext;->associatedNode:Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;

    .line 87
    instance-of v8, v0, Lorg/eclipse/jdt/internal/compiler/ast/TryStatement;

    if-eqz v8, :cond_1f

    .line 88
    check-cast v0, Lorg/eclipse/jdt/internal/compiler/ast/TryStatement;

    .line 89
    iget-object v0, v0, Lorg/eclipse/jdt/internal/compiler/ast/TryStatement;->subRoutineInits:Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;

    invoke-virtual {v1, v0}, Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;->addInitializationsFrom(Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;)Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;

    .line 90
    :cond_1f
    invoke-virtual {v5}, Lorg/eclipse/jdt/internal/compiler/flow/FlowContext;->getLocalParent()Lorg/eclipse/jdt/internal/compiler/flow/FlowContext;

    move-result-object v5

    move-object v0, v10

    goto/16 :goto_0

    :cond_20
    :goto_12
    return-void
.end method

.method public checkUnboxing(Lorg/eclipse/jdt/internal/compiler/lookup/Scope;Lorg/eclipse/jdt/internal/compiler/ast/Expression;Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;)V
    .locals 2

    invoke-virtual {p2, p3, p0}, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->nullStatus(Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;Lorg/eclipse/jdt/internal/compiler/flow/FlowContext;)I

    move-result v0

    and-int/lit8 v1, v0, 0x2

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object p1

    iget-object p3, p2, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->resolvedType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-virtual {p1, p2, p3}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->nullUnboxing(Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)V

    return-void

    :cond_0
    and-int/lit8 v1, v0, 0x10

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object p1

    iget-object p3, p2, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->resolvedType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-virtual {p1, p2, p3}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->potentialNullUnboxing(Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)V

    return-void

    :cond_1
    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_2

    return-void

    :cond_2
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/flow/FlowContext;->parent:Lorg/eclipse/jdt/internal/compiler/flow/FlowContext;

    if-eqz v0, :cond_3

    const/4 v1, 0x1

    invoke-virtual {v0, p1, p2, v1, p3}, Lorg/eclipse/jdt/internal/compiler/flow/FlowContext;->recordUnboxing(Lorg/eclipse/jdt/internal/compiler/lookup/Scope;Lorg/eclipse/jdt/internal/compiler/ast/Expression;ILorg/eclipse/jdt/internal/compiler/flow/FlowInfo;)V

    :cond_3
    return-void
.end method

.method public continueLabel()Lorg/eclipse/jdt/internal/compiler/codegen/BranchLabel;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public copyNullCheckedFieldsFrom(Lorg/eclipse/jdt/internal/compiler/flow/FlowContext;)V
    .locals 2

    iget-object v0, p1, Lorg/eclipse/jdt/internal/compiler/flow/FlowContext;->nullCheckedFieldReferences:[Lorg/eclipse/jdt/internal/compiler/ast/Reference;

    if-eqz v0, :cond_0

    array-length v1, v0

    if-lez v1, :cond_0

    const/4 v1, 0x0

    aget-object v1, v0, v1

    if-eqz v1, :cond_0

    iput-object v0, p0, Lorg/eclipse/jdt/internal/compiler/flow/FlowContext;->nullCheckedFieldReferences:[Lorg/eclipse/jdt/internal/compiler/ast/Reference;

    iget-object p1, p1, Lorg/eclipse/jdt/internal/compiler/flow/FlowContext;->timesToLiveForNullCheckInfo:[I

    iput-object p1, p0, Lorg/eclipse/jdt/internal/compiler/flow/FlowContext;->timesToLiveForNullCheckInfo:[I

    :cond_0
    return-void
.end method

.method public expireNullCheckedFieldInfo()V
    .locals 4

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/flow/FlowContext;->nullCheckedFieldReferences:[Lorg/eclipse/jdt/internal/compiler/ast/Reference;

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/flow/FlowContext;->nullCheckedFieldReferences:[Lorg/eclipse/jdt/internal/compiler/ast/Reference;

    array-length v2, v1

    if-lt v0, v2, :cond_0

    goto :goto_1

    :cond_0
    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/flow/FlowContext;->timesToLiveForNullCheckInfo:[I

    aget v3, v2, v0

    add-int/lit8 v3, v3, -0x1

    aput v3, v2, v0

    if-nez v3, :cond_1

    const/4 v2, 0x0

    aput-object v2, v1, v0

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method

.method public extendTimeToLiveForNullCheckedField(I)V
    .locals 3

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/flow/FlowContext;->timesToLiveForNullCheckInfo:[I

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/flow/FlowContext;->timesToLiveForNullCheckInfo:[I

    array-length v2, v1

    if-lt v0, v2, :cond_0

    goto :goto_1

    :cond_0
    aget v2, v1, v0

    if-lez v2, :cond_1

    add-int/2addr v2, p1

    aput v2, v1, v0

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method

.method public getInitializationContext()Lorg/eclipse/jdt/internal/compiler/flow/FlowContext;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getInitsForFinalBlankInitializationCheck(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;)Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;
    .locals 2

    move-object v0, p0

    :goto_0
    instance-of v1, v0, Lorg/eclipse/jdt/internal/compiler/flow/InitializationFlowContext;

    if-eqz v1, :cond_1

    check-cast v0, Lorg/eclipse/jdt/internal/compiler/flow/InitializationFlowContext;

    iget-object v1, v0, Lorg/eclipse/jdt/internal/compiler/flow/FlowContext;->associatedNode:Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;

    check-cast v1, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;

    iget-object v1, v1, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;

    invoke-static {v1, p1}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->equalsEquals(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object p2

    :cond_0
    iget-object p2, v0, Lorg/eclipse/jdt/internal/compiler/flow/InitializationFlowContext;->initsBeforeContext:Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;

    iget-object v0, v0, Lorg/eclipse/jdt/internal/compiler/flow/ExceptionHandlingFlowContext;->initializationParent:Lorg/eclipse/jdt/internal/compiler/flow/FlowContext;

    goto :goto_1

    :cond_1
    instance-of v1, v0, Lorg/eclipse/jdt/internal/compiler/flow/ExceptionHandlingFlowContext;

    if-eqz v1, :cond_4

    instance-of v1, v0, Lorg/eclipse/jdt/internal/compiler/flow/FieldInitsFakingFlowContext;

    if-eqz v1, :cond_2

    sget-object p1, Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;->DEAD_END:Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;

    return-object p1

    :cond_2
    check-cast v0, Lorg/eclipse/jdt/internal/compiler/flow/ExceptionHandlingFlowContext;

    iget-object v1, v0, Lorg/eclipse/jdt/internal/compiler/flow/ExceptionHandlingFlowContext;->initializationParent:Lorg/eclipse/jdt/internal/compiler/flow/FlowContext;

    if-nez v1, :cond_3

    iget-object v1, v0, Lorg/eclipse/jdt/internal/compiler/flow/FlowContext;->parent:Lorg/eclipse/jdt/internal/compiler/flow/FlowContext;

    :cond_3
    move-object v0, v1

    goto :goto_1

    :cond_4
    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/flow/FlowContext;->getLocalParent()Lorg/eclipse/jdt/internal/compiler/flow/FlowContext;

    move-result-object v0

    :goto_1
    if-eqz v0, :cond_5

    goto :goto_0

    :cond_5
    new-instance p2, Ljava/lang/IllegalStateException;

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->debugName()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public getLocalParent()Lorg/eclipse/jdt/internal/compiler/flow/FlowContext;
    .locals 2

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/flow/FlowContext;->associatedNode:Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;

    instance-of v1, v0, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;

    if-nez v1, :cond_1

    instance-of v1, v0, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;

    if-nez v1, :cond_1

    instance-of v0, v0, Lorg/eclipse/jdt/internal/compiler/ast/LambdaExpression;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/flow/FlowContext;->parent:Lorg/eclipse/jdt/internal/compiler/flow/FlowContext;

    return-object v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getTargetContextForBreakLabel([C)Lorg/eclipse/jdt/internal/compiler/flow/FlowContext;
    .locals 4

    const/4 v0, 0x0

    move-object v1, p0

    move-object v2, v0

    :goto_0
    if-nez v1, :cond_0

    return-object v0

    :cond_0
    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/compiler/flow/FlowContext;->isNonReturningContext()Z

    move-result v3

    if-eqz v3, :cond_1

    move-object v2, v1

    :cond_1
    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/compiler/flow/FlowContext;->labelName()[C

    move-result-object v3

    if-eqz v3, :cond_3

    invoke-static {v3, p1}, Lorg/eclipse/jdt/core/compiler/CharOperation;->equals([C[C)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object p1, v1, Lorg/eclipse/jdt/internal/compiler/flow/FlowContext;->associatedNode:Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;

    check-cast p1, Lorg/eclipse/jdt/internal/compiler/ast/LabeledStatement;

    iget v0, p1, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->bits:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p1, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->bits:I

    if-nez v2, :cond_2

    return-object v1

    :cond_2
    return-object v2

    :cond_3
    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/compiler/flow/FlowContext;->getLocalParent()Lorg/eclipse/jdt/internal/compiler/flow/FlowContext;

    move-result-object v1

    goto :goto_0
.end method

.method public getTargetContextForContinueLabel([C)Lorg/eclipse/jdt/internal/compiler/flow/FlowContext;
    .locals 5

    const/4 v0, 0x0

    move-object v1, p0

    move-object v2, v0

    move-object v3, v2

    :goto_0
    if-nez v1, :cond_0

    return-object v0

    :cond_0
    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/compiler/flow/FlowContext;->isNonReturningContext()Z

    move-result v4

    if-eqz v4, :cond_1

    move-object v3, v1

    goto :goto_1

    :cond_1
    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/compiler/flow/FlowContext;->isContinuable()Z

    move-result v4

    if-eqz v4, :cond_2

    move-object v2, v1

    :cond_2
    :goto_1
    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/compiler/flow/FlowContext;->labelName()[C

    move-result-object v4

    if-eqz v4, :cond_5

    invoke-static {v4, p1}, Lorg/eclipse/jdt/core/compiler/CharOperation;->equals([C[C)Z

    move-result v4

    if-eqz v4, :cond_5

    iget-object p1, v1, Lorg/eclipse/jdt/internal/compiler/flow/FlowContext;->associatedNode:Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;

    move-object v0, p1

    check-cast v0, Lorg/eclipse/jdt/internal/compiler/ast/LabeledStatement;

    iget v1, v0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->bits:I

    or-int/lit8 v1, v1, 0x40

    iput v1, v0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->bits:I

    if-eqz v2, :cond_4

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->concreteStatement()Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;

    move-result-object p1

    iget-object v0, v2, Lorg/eclipse/jdt/internal/compiler/flow/FlowContext;->associatedNode:Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;

    if-ne p1, v0, :cond_4

    if-nez v3, :cond_3

    return-object v2

    :cond_3
    return-object v3

    :cond_4
    sget-object p1, Lorg/eclipse/jdt/internal/compiler/flow/FlowContext;->NotContinuableContext:Lorg/eclipse/jdt/internal/compiler/flow/FlowContext;

    return-object p1

    :cond_5
    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/compiler/flow/FlowContext;->getLocalParent()Lorg/eclipse/jdt/internal/compiler/flow/FlowContext;

    move-result-object v1

    goto :goto_0
.end method

.method public getTargetContextForDefaultBreak()Lorg/eclipse/jdt/internal/compiler/flow/FlowContext;
    .locals 4

    const/4 v0, 0x0

    move-object v1, p0

    move-object v2, v0

    :goto_0
    if-nez v1, :cond_0

    return-object v0

    :cond_0
    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/compiler/flow/FlowContext;->isNonReturningContext()Z

    move-result v3

    if-eqz v3, :cond_1

    move-object v2, v1

    :cond_1
    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/compiler/flow/FlowContext;->isBreakable()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/compiler/flow/FlowContext;->labelName()[C

    move-result-object v3

    if-nez v3, :cond_3

    if-nez v2, :cond_2

    return-object v1

    :cond_2
    return-object v2

    :cond_3
    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/compiler/flow/FlowContext;->getLocalParent()Lorg/eclipse/jdt/internal/compiler/flow/FlowContext;

    move-result-object v1

    goto :goto_0
.end method

.method public getTargetContextForDefaultContinue()Lorg/eclipse/jdt/internal/compiler/flow/FlowContext;
    .locals 4

    const/4 v0, 0x0

    move-object v1, p0

    move-object v2, v0

    :goto_0
    if-nez v1, :cond_0

    return-object v0

    :cond_0
    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/compiler/flow/FlowContext;->isNonReturningContext()Z

    move-result v3

    if-eqz v3, :cond_1

    move-object v2, v1

    :cond_1
    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/compiler/flow/FlowContext;->isContinuable()Z

    move-result v3

    if-eqz v3, :cond_3

    if-nez v2, :cond_2

    return-object v1

    :cond_2
    return-object v2

    :cond_3
    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/compiler/flow/FlowContext;->getLocalParent()Lorg/eclipse/jdt/internal/compiler/flow/FlowContext;

    move-result-object v1

    goto :goto_0
.end method

.method public individualToString()Ljava/lang/String;
    .locals 1

    const-string v0, "Flow context"

    return-object v0
.end method

.method public initsOnBreak()Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;
    .locals 1

    sget-object v0, Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;->DEAD_END:Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;

    return-object v0
.end method

.method public initsOnReturn()Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;
    .locals 1

    sget-object v0, Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;->DEAD_END:Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;

    return-object v0
.end method

.method public internalRecordNullityMismatch(Lorg/eclipse/jdt/internal/compiler/ast/Expression;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;ILorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;I)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public isBreakable()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isContinuable()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isNonReturningContext()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isNullcheckedFieldAccess(Lorg/eclipse/jdt/internal/compiler/ast/Reference;)Z
    .locals 4

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/flow/FlowContext;->nullCheckedFieldReferences:[Lorg/eclipse/jdt/internal/compiler/ast/Reference;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    array-length v0, v0

    move v2, v1

    :goto_0
    if-lt v2, v0, :cond_1

    return v1

    :cond_1
    iget-object v3, p0, Lorg/eclipse/jdt/internal/compiler/flow/FlowContext;->nullCheckedFieldReferences:[Lorg/eclipse/jdt/internal/compiler/ast/Reference;

    aget-object v3, v3, v2

    if-nez v3, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {v3, p1}, Lorg/eclipse/jdt/internal/compiler/ast/Reference;->isEquivalent(Lorg/eclipse/jdt/internal/compiler/ast/Reference;)Z

    move-result v3

    if-eqz v3, :cond_3

    const/4 p1, 0x1

    return p1

    :cond_3
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public isSubRoutine()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public labelName()[C
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public markFinallyNullStatus(Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;I)V
    .locals 3

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/flow/FlowContext;->initsOnFinally:Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/flow/FlowContext;->conditionalLevel:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    return-void

    :cond_1
    if-nez v1, :cond_2

    invoke-virtual {v0, p1, p2}, Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;->markNullStatus(Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;I)V

    return-void

    :cond_2
    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;->unconditionalCopy()Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;->markNullStatus(Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;I)V

    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/flow/FlowContext;->initsOnFinally:Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;

    invoke-virtual {p1, v0}, Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;->mergedWith(Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;)Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;

    move-result-object p1

    iput-object p1, p0, Lorg/eclipse/jdt/internal/compiler/flow/FlowContext;->initsOnFinally:Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;

    return-void
.end method

.method public mergeFinallyNullInfo(Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;)V
    .locals 3

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/flow/FlowContext;->initsOnFinally:Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/flow/FlowContext;->conditionalLevel:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    return-void

    :cond_1
    if-nez v1, :cond_2

    invoke-virtual {v0, p1}, Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;->addNullInfoFrom(Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;)Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;

    return-void

    :cond_2
    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;->unconditionalCopy()Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;->mergedWith(Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;)Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;

    move-result-object p1

    iput-object p1, p0, Lorg/eclipse/jdt/internal/compiler/flow/FlowContext;->initsOnFinally:Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;

    return-void
.end method

.method public recordAbruptExit()V
    .locals 2

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/flow/FlowContext;->conditionalLevel:I

    const/4 v1, -0x1

    if-le v0, v1, :cond_0

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/flow/FlowContext;->conditionalLevel:I

    instance-of v0, p0, Lorg/eclipse/jdt/internal/compiler/flow/ExceptionHandlingFlowContext;

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/flow/FlowContext;->parent:Lorg/eclipse/jdt/internal/compiler/flow/FlowContext;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/flow/FlowContext;->recordAbruptExit()V

    :cond_0
    return-void
.end method

.method public recordBreakFrom(Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;)V
    .locals 0

    return-void
.end method

.method public recordBreakTo(Lorg/eclipse/jdt/internal/compiler/flow/FlowContext;)V
    .locals 0

    return-void
.end method

.method public recordContinueFrom(Lorg/eclipse/jdt/internal/compiler/flow/FlowContext;Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;)V
    .locals 0

    return-void
.end method

.method public recordExitAgainstResource(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;Lorg/eclipse/jdt/internal/compiler/ast/FakedTrackingVariable;Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public recordFinalAssignment(Lorg/eclipse/jdt/internal/compiler/lookup/VariableBinding;Lorg/eclipse/jdt/internal/compiler/ast/Reference;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public recordNullCheckedFieldReference(Lorg/eclipse/jdt/internal/compiler/ast/Reference;I)V
    .locals 5

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/flow/FlowContext;->nullCheckedFieldReferences:[Lorg/eclipse/jdt/internal/compiler/ast/Reference;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x2

    new-array v0, v0, [Lorg/eclipse/jdt/internal/compiler/ast/Reference;

    aput-object p1, v0, v1

    iput-object v0, p0, Lorg/eclipse/jdt/internal/compiler/flow/FlowContext;->nullCheckedFieldReferences:[Lorg/eclipse/jdt/internal/compiler/ast/Reference;

    const/4 p1, -0x1

    filled-new-array {p2, p1}, [I

    move-result-object p1

    iput-object p1, p0, Lorg/eclipse/jdt/internal/compiler/flow/FlowContext;->timesToLiveForNullCheckInfo:[I

    goto :goto_1

    :cond_0
    array-length v0, v0

    move v2, v1

    :goto_0
    if-lt v2, v0, :cond_1

    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/flow/FlowContext;->nullCheckedFieldReferences:[Lorg/eclipse/jdt/internal/compiler/ast/Reference;

    add-int/lit8 v3, v0, 0x2

    new-array v4, v3, [Lorg/eclipse/jdt/internal/compiler/ast/Reference;

    iput-object v4, p0, Lorg/eclipse/jdt/internal/compiler/flow/FlowContext;->nullCheckedFieldReferences:[Lorg/eclipse/jdt/internal/compiler/ast/Reference;

    invoke-static {v2, v1, v4, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/flow/FlowContext;->timesToLiveForNullCheckInfo:[I

    new-array v3, v3, [I

    iput-object v3, p0, Lorg/eclipse/jdt/internal/compiler/flow/FlowContext;->timesToLiveForNullCheckInfo:[I

    invoke-static {v2, v1, v3, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/flow/FlowContext;->nullCheckedFieldReferences:[Lorg/eclipse/jdt/internal/compiler/ast/Reference;

    aput-object p1, v1, v0

    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/flow/FlowContext;->timesToLiveForNullCheckInfo:[I

    aput p2, p1, v0

    :goto_1
    return-void

    :cond_1
    iget-object v3, p0, Lorg/eclipse/jdt/internal/compiler/flow/FlowContext;->nullCheckedFieldReferences:[Lorg/eclipse/jdt/internal/compiler/ast/Reference;

    aget-object v4, v3, v2

    if-nez v4, :cond_2

    aput-object p1, v3, v2

    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/flow/FlowContext;->timesToLiveForNullCheckInfo:[I

    aput p2, p1, v2

    return-void

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public recordNullReference(Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;ILorg/eclipse/jdt/internal/compiler/flow/FlowInfo;)V
    .locals 0

    return-void
.end method

.method public recordNullityMismatch(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;Lorg/eclipse/jdt/internal/compiler/ast/Expression;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;ILorg/eclipse/jdt/internal/compiler/ast/NullAnnotationMatching;)V
    .locals 8

    if-nez p3, :cond_0

    return-void

    :cond_0
    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->localVariableBinding()Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;

    move-result-object v0

    if-eqz v0, :cond_4

    move-object v0, p0

    :goto_0
    if-nez v0, :cond_1

    goto :goto_2

    :cond_1
    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/flow/FlowContext;->tagBits:I

    const/16 v2, 0x1000

    and-int/2addr v1, v2

    if-eqz v1, :cond_2

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    :goto_1
    or-int/lit16 v7, v2, 0x80

    move-object v1, v0

    move-object v2, p2

    move-object v3, p3

    move-object v4, p5

    move v5, p6

    move-object v6, p4

    invoke-virtual/range {v1 .. v7}, Lorg/eclipse/jdt/internal/compiler/flow/FlowContext;->internalRecordNullityMismatch(Lorg/eclipse/jdt/internal/compiler/ast/Expression;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;ILorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;I)Z

    move-result v1

    if-eqz v1, :cond_3

    return-void

    :cond_3
    iget-object v0, v0, Lorg/eclipse/jdt/internal/compiler/flow/FlowContext;->parent:Lorg/eclipse/jdt/internal/compiler/flow/FlowContext;

    goto :goto_0

    :cond_4
    :goto_2
    if-eqz p7, :cond_5

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object p1

    invoke-virtual {p1, p2, p3, p4, p7}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->nullityMismatchingTypeAnnotation(Lorg/eclipse/jdt/internal/compiler/ast/Expression;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/ast/NullAnnotationMatching;)V

    goto :goto_3

    :cond_5
    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object v0

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->environment()Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    move-result-object p1

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->getNonNullAnnotationName()[[C

    move-result-object v5

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move v4, p6

    invoke-virtual/range {v0 .. v5}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->nullityMismatch(Lorg/eclipse/jdt/internal/compiler/ast/Expression;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;I[[C)V

    :goto_3
    return-void
.end method

.method public recordProvidedExpectedTypes(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;I)V
    .locals 4

    const/4 v0, 0x5

    if-nez p3, :cond_0

    new-array v0, v0, [[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    iput-object v0, p0, Lorg/eclipse/jdt/internal/compiler/flow/FlowContext;->providedExpectedTypes:[[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    goto :goto_1

    :cond_0
    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/flow/FlowContext;->providedExpectedTypes:[[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    if-nez v1, :cond_2

    :goto_0
    if-le v0, p3, :cond_1

    new-array v0, v0, [[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    iput-object v0, p0, Lorg/eclipse/jdt/internal/compiler/flow/FlowContext;->providedExpectedTypes:[[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    goto :goto_1

    :cond_1
    mul-int/lit8 v0, v0, 0x2

    goto :goto_0

    :cond_2
    array-length v0, v1

    if-lt p3, v0, :cond_3

    array-length v0, v1

    mul-int/lit8 v2, p3, 0x2

    new-array v2, v2, [[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    iput-object v2, p0, Lorg/eclipse/jdt/internal/compiler/flow/FlowContext;->providedExpectedTypes:[[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    const/4 v3, 0x0

    invoke-static {v1, v3, v2, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_3
    :goto_1
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/flow/FlowContext;->providedExpectedTypes:[[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    filled-new-array {p1, p2}, [Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object p1

    aput-object p1, v0, p3

    return-void
.end method

.method public recordReturnFrom(Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;)V
    .locals 0

    return-void
.end method

.method public recordSettingFinal(Lorg/eclipse/jdt/internal/compiler/lookup/VariableBinding;Lorg/eclipse/jdt/internal/compiler/ast/Reference;Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;)V
    .locals 1

    iget p3, p3, Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;->tagBits:I

    and-int/lit8 p3, p3, 0x1

    if-nez p3, :cond_2

    move-object p3, p0

    :goto_0
    if-nez p3, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p3, p1, p2}, Lorg/eclipse/jdt/internal/compiler/flow/FlowContext;->recordFinalAssignment(Lorg/eclipse/jdt/internal/compiler/lookup/VariableBinding;Lorg/eclipse/jdt/internal/compiler/ast/Reference;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p3}, Lorg/eclipse/jdt/internal/compiler/flow/FlowContext;->getLocalParent()Lorg/eclipse/jdt/internal/compiler/flow/FlowContext;

    move-result-object p3

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method

.method public recordUnboxing(Lorg/eclipse/jdt/internal/compiler/lookup/Scope;Lorg/eclipse/jdt/internal/compiler/ast/Expression;ILorg/eclipse/jdt/internal/compiler/flow/FlowInfo;)V
    .locals 0

    invoke-virtual {p0, p1, p2, p4}, Lorg/eclipse/jdt/internal/compiler/flow/FlowContext;->checkUnboxing(Lorg/eclipse/jdt/internal/compiler/lookup/Scope;Lorg/eclipse/jdt/internal/compiler/ast/Expression;Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;)V

    return-void
.end method

.method public recordUsingNullReference(Lorg/eclipse/jdt/internal/compiler/lookup/Scope;Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;ILorg/eclipse/jdt/internal/compiler/flow/FlowInfo;)V
    .locals 8

    iget v0, p5, Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;->tagBits:I

    const/4 v1, 0x3

    and-int/2addr v0, v1

    if-nez v0, :cond_15

    invoke-virtual {p5, p2}, Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;->isDefinitelyUnknown(Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_2

    :cond_0
    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/flow/FlowContext;->tagBits:I

    and-int/lit16 v0, v0, 0x1000

    or-int v6, p4, v0

    const p4, -0xf001

    and-int/2addr p4, v6

    if-eq p4, v1, :cond_11

    const/16 v0, 0x301

    const/16 v1, 0x100

    const/4 v2, 0x2

    const/16 v3, 0x200

    if-eq p4, v0, :cond_5

    const/16 v0, 0x401

    if-eq p4, v0, :cond_5

    if-eq p4, v1, :cond_1

    const/16 v0, 0x101

    if-eq p4, v0, :cond_5

    if-eq p4, v3, :cond_1

    const/16 v0, 0x201

    if-eq p4, v0, :cond_5

    goto/16 :goto_1

    :cond_1
    invoke-virtual {p5, p2}, Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;->isDefinitelyNonNull(Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;)Z

    move-result v0

    if-eqz v0, :cond_4

    if-ne p4, v3, :cond_3

    and-int/lit16 p4, v6, 0x1000

    if-nez p4, :cond_2

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object p1

    invoke-virtual {p1, p2, p3}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->localVariableRedundantCheckOnNonNull(Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;)V

    :cond_2
    invoke-virtual {p5}, Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;->initsWhenFalse()Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;

    move-result-object p1

    invoke-virtual {p1, v2}, Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;->setReachMode(I)Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;

    goto :goto_0

    :cond_3
    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object p1

    invoke-virtual {p1, p2, p3}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->localVariableNonNullComparedToNull(Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;)V

    invoke-virtual {p5}, Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;->initsWhenTrue()Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;

    move-result-object p1

    invoke-virtual {p1, v2}, Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;->setReachMode(I)Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;

    :goto_0
    return-void

    :cond_4
    invoke-virtual {p5, p2}, Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;->cannotBeDefinitelyNullOrNonNull(Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;)Z

    move-result p4

    if-eqz p4, :cond_5

    return-void

    :cond_5
    move-object p4, p3

    check-cast p4, Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    invoke-virtual {p5, p2}, Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;->isDefinitelyNull(Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;)Z

    move-result v0

    const v4, -0xf100

    const/4 v5, 0x1

    const/16 v7, 0x400

    if-eqz v0, :cond_d

    and-int v0, v6, v4

    if-eq v0, v1, :cond_a

    if-eq v0, v3, :cond_8

    const/16 v1, 0x300

    if-eq v0, v1, :cond_7

    if-eq v0, v7, :cond_6

    goto/16 :goto_1

    :cond_6
    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object p1

    invoke-virtual {p1, p2, p4}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->localVariableNullInstanceof(Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;)V

    return-void

    :cond_7
    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object p1

    invoke-virtual {p1, p2, p4}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->localVariableRedundantNullAssignment(Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;)V

    return-void

    :cond_8
    and-int/lit16 p3, v6, 0xff

    if-ne p3, v5, :cond_9

    iget p3, p4, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->implicitConversion:I

    and-int/2addr p3, v7

    if-eqz p3, :cond_9

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object p1

    invoke-virtual {p1, p2, p4}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->localVariableNullReference(Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;)V

    return-void

    :cond_9
    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object p1

    invoke-virtual {p1, p2, p4}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->localVariableNullComparedToNonNull(Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;)V

    invoke-virtual {p5}, Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;->initsWhenTrue()Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;

    move-result-object p1

    invoke-virtual {p1, v2}, Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;->setReachMode(I)Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;

    return-void

    :cond_a
    and-int/lit16 p3, v6, 0xff

    if-ne p3, v5, :cond_b

    iget p3, p4, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->implicitConversion:I

    and-int/2addr p3, v7

    if-eqz p3, :cond_b

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object p1

    invoke-virtual {p1, p2, p4}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->localVariableNullReference(Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;)V

    return-void

    :cond_b
    and-int/lit16 p3, v6, 0x1000

    if-nez p3, :cond_c

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object p1

    invoke-virtual {p1, p2, p4}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->localVariableRedundantCheckOnNull(Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;)V

    :cond_c
    invoke-virtual {p5}, Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;->initsWhenFalse()Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;

    move-result-object p1

    invoke-virtual {p1, v2}, Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;->setReachMode(I)Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;

    return-void

    :cond_d
    invoke-virtual {p5, p2}, Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;->isPotentiallyNull(Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;)Z

    move-result v0

    if-eqz v0, :cond_10

    and-int v0, v6, v4

    if-eq v0, v1, :cond_f

    if-eq v0, v3, :cond_e

    goto :goto_1

    :cond_e
    and-int/lit16 v0, v6, 0xff

    if-ne v0, v5, :cond_14

    iget v0, p4, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->implicitConversion:I

    and-int/2addr v0, v7

    if-eqz v0, :cond_14

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object p1

    invoke-virtual {p1, p2, p4}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->localVariablePotentialNullReference(Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;)V

    return-void

    :cond_f
    and-int/lit16 v0, v6, 0xff

    if-ne v0, v5, :cond_14

    iget v0, p4, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->implicitConversion:I

    and-int/2addr v0, v7

    if-eqz v0, :cond_14

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object p1

    invoke-virtual {p1, p2, p4}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->localVariablePotentialNullReference(Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;)V

    return-void

    :cond_10
    invoke-virtual {p5, p2}, Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;->cannotBeDefinitelyNullOrNonNull(Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;)Z

    move-result p4

    if-eqz p4, :cond_14

    return-void

    :cond_11
    invoke-virtual {p5, p2}, Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;->isDefinitelyNull(Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;)Z

    move-result p4

    if-eqz p4, :cond_12

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object p1

    invoke-virtual {p1, p2, p3}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->localVariableNullReference(Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;)V

    return-void

    :cond_12
    invoke-virtual {p5, p2}, Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;->isPotentiallyNull(Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;)Z

    move-result p4

    if-eqz p4, :cond_14

    iget-object p4, p2, Lorg/eclipse/jdt/internal/compiler/lookup/VariableBinding;->type:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-virtual {p4}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isFreeTypeVariable()Z

    move-result p4

    if-eqz p4, :cond_13

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object p1

    invoke-virtual {p1, p2, p3}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->localVariableFreeTypeVariableReference(Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;)V

    return-void

    :cond_13
    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object p1

    invoke-virtual {p1, p2, p3}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->localVariablePotentialNullReference(Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;)V

    return-void

    :cond_14
    :goto_1
    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/flow/FlowContext;->parent:Lorg/eclipse/jdt/internal/compiler/flow/FlowContext;

    if-eqz v2, :cond_15

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v7, p5

    invoke-virtual/range {v2 .. v7}, Lorg/eclipse/jdt/internal/compiler/flow/FlowContext;->recordUsingNullReference(Lorg/eclipse/jdt/internal/compiler/lookup/Scope;Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;ILorg/eclipse/jdt/internal/compiler/flow/FlowInfo;)V

    :cond_15
    :goto_2
    return-void
.end method

.method public removeFinalAssignmentIfAny(Lorg/eclipse/jdt/internal/compiler/ast/Reference;)V
    .locals 0

    return-void
.end method

.method public subroutine()Lorg/eclipse/jdt/internal/compiler/ast/SubRoutineStatement;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 10

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v1, 0x0

    move-object v2, p0

    move v3, v1

    :goto_0
    iget-object v2, v2, Lorg/eclipse/jdt/internal/compiler/flow/FlowContext;->parent:Lorg/eclipse/jdt/internal/compiler/flow/FlowContext;

    if-nez v2, :cond_4

    add-int/lit8 v4, v3, 0x1

    new-array v5, v4, [Lorg/eclipse/jdt/internal/compiler/flow/FlowContext;

    move-object v6, p0

    move v2, v3

    :goto_1
    if-gez v2, :cond_3

    move v7, v1

    :goto_2
    const/16 v8, 0x9

    const/16 v9, 0xa

    if-lt v7, v3, :cond_1

    const/16 v2, 0x2a

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :goto_3
    if-lt v1, v4, :cond_0

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/flow/FlowContext;->individualToString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-virtual {v0, v8}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_1
    move v2, v1

    :goto_4
    if-lt v2, v7, :cond_2

    aget-object v2, v5, v7

    invoke-virtual {v2}, Lorg/eclipse/jdt/internal/compiler/flow/FlowContext;->individualToString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    :cond_2
    invoke-virtual {v0, v8}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_3
    add-int/lit8 v7, v2, -0x1

    aput-object v6, v5, v2

    iget-object v6, v6, Lorg/eclipse/jdt/internal/compiler/flow/FlowContext;->parent:Lorg/eclipse/jdt/internal/compiler/flow/FlowContext;

    move v2, v7

    goto :goto_1

    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method
