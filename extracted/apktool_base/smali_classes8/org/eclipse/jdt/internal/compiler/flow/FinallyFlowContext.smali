.class public Lorg/eclipse/jdt/internal/compiler/flow/FinallyFlowContext;
.super Lorg/eclipse/jdt/internal/compiler/flow/TryFlowContext;
.source "SourceFile"


# instance fields
.field assignCount:I

.field finalAssignments:[Lorg/eclipse/jdt/internal/compiler/ast/Reference;

.field finalVariables:[Lorg/eclipse/jdt/internal/compiler/lookup/VariableBinding;

.field nullCheckTypes:[I

.field nullCount:I

.field nullLocals:[Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;

.field nullReferences:[Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;

.field public tryContext:Lorg/eclipse/jdt/internal/compiler/flow/FlowContext;


# direct methods
.method public constructor <init>(Lorg/eclipse/jdt/internal/compiler/flow/FlowContext;Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;Lorg/eclipse/jdt/internal/compiler/flow/ExceptionHandlingFlowContext;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/eclipse/jdt/internal/compiler/flow/TryFlowContext;-><init>(Lorg/eclipse/jdt/internal/compiler/flow/FlowContext;Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;)V

    iput-object p3, p0, Lorg/eclipse/jdt/internal/compiler/flow/FinallyFlowContext;->tryContext:Lorg/eclipse/jdt/internal/compiler/flow/FlowContext;

    return-void
.end method


# virtual methods
.method public complainOnDeferredChecks(Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;)V
    .locals 23

    move-object/from16 v0, p0

    move-object/from16 v9, p1

    move-object/from16 v10, p2

    const/4 v11, 0x0

    move v1, v11

    :goto_0
    iget v2, v0, Lorg/eclipse/jdt/internal/compiler/flow/FinallyFlowContext;->assignCount:I

    if-lt v1, v2, :cond_17

    iget v1, v0, Lorg/eclipse/jdt/internal/compiler/flow/FlowContext;->tagBits:I

    const/4 v12, 0x1

    and-int/2addr v1, v12

    const/4 v13, 0x4

    const/16 v14, 0x80

    const/16 v15, 0x10

    const v16, -0xf001

    if-eqz v1, :cond_4

    move v8, v11

    :goto_1
    iget v1, v0, Lorg/eclipse/jdt/internal/compiler/flow/FinallyFlowContext;->nullCount:I

    if-lt v8, v1, :cond_0

    goto :goto_4

    :cond_0
    iget-object v1, v0, Lorg/eclipse/jdt/internal/compiler/flow/FinallyFlowContext;->nullReferences:[Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;

    aget-object v4, v1, v8

    iget-object v1, v0, Lorg/eclipse/jdt/internal/compiler/flow/FinallyFlowContext;->nullCheckTypes:[I

    aget v5, v1, v8

    and-int v1, v5, v16

    if-eq v1, v15, :cond_3

    if-eq v1, v14, :cond_2

    iget-object v1, v0, Lorg/eclipse/jdt/internal/compiler/flow/FlowContext;->parent:Lorg/eclipse/jdt/internal/compiler/flow/FlowContext;

    iget-object v2, v0, Lorg/eclipse/jdt/internal/compiler/flow/FinallyFlowContext;->nullLocals:[Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;

    aget-object v3, v2, v8

    move-object/from16 v2, p2

    move-object/from16 v6, p1

    invoke-virtual/range {v1 .. v6}, Lorg/eclipse/jdt/internal/compiler/flow/FlowContext;->recordUsingNullReference(Lorg/eclipse/jdt/internal/compiler/lookup/Scope;Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;ILorg/eclipse/jdt/internal/compiler/flow/FlowInfo;)V

    :cond_1
    move/from16 v18, v8

    goto :goto_2

    :cond_2
    iget-object v1, v0, Lorg/eclipse/jdt/internal/compiler/flow/FinallyFlowContext;->nullLocals:[Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;

    aget-object v1, v1, v8

    invoke-virtual {v9, v1}, Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;->nullStatus(Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;)I

    move-result v7

    if-eq v7, v13, :cond_1

    iget-object v1, v0, Lorg/eclipse/jdt/internal/compiler/flow/FlowContext;->parent:Lorg/eclipse/jdt/internal/compiler/flow/FlowContext;

    move-object v3, v4

    check-cast v3, Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    iget-object v2, v0, Lorg/eclipse/jdt/internal/compiler/flow/FlowContext;->providedExpectedTypes:[[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    aget-object v2, v2, v8

    aget-object v4, v2, v11

    aget-object v5, v2, v12

    const/16 v17, 0x0

    move-object/from16 v2, p2

    move-object/from16 v6, p1

    move/from16 v18, v8

    move-object/from16 v8, v17

    invoke-virtual/range {v1 .. v8}, Lorg/eclipse/jdt/internal/compiler/flow/FlowContext;->recordNullityMismatch(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;Lorg/eclipse/jdt/internal/compiler/ast/Expression;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;ILorg/eclipse/jdt/internal/compiler/ast/NullAnnotationMatching;)V

    goto :goto_2

    :cond_3
    move/from16 v18, v8

    check-cast v4, Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    invoke-virtual {v0, v10, v4, v9}, Lorg/eclipse/jdt/internal/compiler/flow/FlowContext;->checkUnboxing(Lorg/eclipse/jdt/internal/compiler/lookup/Scope;Lorg/eclipse/jdt/internal/compiler/ast/Expression;Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;)V

    :goto_2
    add-int/lit8 v8, v18, 0x1

    goto :goto_1

    :cond_4
    move v1, v11

    :goto_3
    iget v2, v0, Lorg/eclipse/jdt/internal/compiler/flow/FinallyFlowContext;->nullCount:I

    if-lt v1, v2, :cond_5

    :goto_4
    return-void

    :cond_5
    iget-object v2, v0, Lorg/eclipse/jdt/internal/compiler/flow/FinallyFlowContext;->nullReferences:[Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;

    aget-object v2, v2, v1

    iget-object v3, v0, Lorg/eclipse/jdt/internal/compiler/flow/FinallyFlowContext;->nullLocals:[Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;

    aget-object v3, v3, v1

    iget-object v4, v0, Lorg/eclipse/jdt/internal/compiler/flow/FinallyFlowContext;->nullCheckTypes:[I

    aget v4, v4, v1

    and-int v4, v4, v16

    const/4 v5, 0x3

    if-eq v4, v5, :cond_14

    if-eq v4, v15, :cond_13

    if-eq v4, v14, :cond_12

    const/16 v5, 0x301

    const/16 v6, 0x100

    const/16 v7, 0x200

    if-eq v4, v5, :cond_8

    const/16 v5, 0x401

    if-eq v4, v5, :cond_8

    if-eq v4, v6, :cond_6

    const/16 v5, 0x101

    if-eq v4, v5, :cond_8

    if-eq v4, v7, :cond_6

    const/16 v5, 0x201

    if-eq v4, v5, :cond_8

    goto/16 :goto_5

    :cond_6
    invoke-virtual {v9, v3}, Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;->isDefinitelyNonNull(Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;)Z

    move-result v4

    if-eqz v4, :cond_8

    iget-object v4, v0, Lorg/eclipse/jdt/internal/compiler/flow/FinallyFlowContext;->nullCheckTypes:[I

    aget v4, v4, v1

    and-int v5, v4, v16

    if-ne v5, v7, :cond_7

    and-int/lit16 v4, v4, 0x1000

    if-nez v4, :cond_16

    invoke-virtual/range {p2 .. p2}, Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object v4

    invoke-virtual {v4, v3, v2}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->localVariableRedundantCheckOnNonNull(Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;)V

    goto/16 :goto_5

    :cond_7
    invoke-virtual/range {p2 .. p2}, Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object v4

    invoke-virtual {v4, v3, v2}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->localVariableNonNullComparedToNull(Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;)V

    goto/16 :goto_5

    :cond_8
    check-cast v2, Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    invoke-virtual {v9, v3}, Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;->isDefinitelyNull(Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;)Z

    move-result v4

    const v5, -0xf100

    const/16 v8, 0x400

    if-eqz v4, :cond_f

    iget-object v4, v0, Lorg/eclipse/jdt/internal/compiler/flow/FinallyFlowContext;->nullCheckTypes:[I

    aget v4, v4, v1

    and-int/2addr v5, v4

    if-eq v5, v6, :cond_d

    if-eq v5, v7, :cond_b

    const/16 v4, 0x300

    if-eq v5, v4, :cond_a

    if-eq v5, v8, :cond_9

    goto/16 :goto_5

    :cond_9
    invoke-virtual/range {p2 .. p2}, Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object v4

    invoke-virtual {v4, v3, v2}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->localVariableNullInstanceof(Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;)V

    goto/16 :goto_5

    :cond_a
    invoke-virtual/range {p2 .. p2}, Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object v4

    invoke-virtual {v4, v3, v2}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->localVariableRedundantNullAssignment(Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;)V

    goto/16 :goto_5

    :cond_b
    and-int/lit16 v4, v4, 0xff

    if-ne v4, v12, :cond_c

    iget v4, v2, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->implicitConversion:I

    and-int/2addr v4, v8

    if-eqz v4, :cond_c

    invoke-virtual/range {p2 .. p2}, Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object v4

    invoke-virtual {v4, v3, v2}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->localVariableNullReference(Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;)V

    goto/16 :goto_5

    :cond_c
    invoke-virtual/range {p2 .. p2}, Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object v4

    invoke-virtual {v4, v3, v2}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->localVariableNullComparedToNonNull(Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;)V

    goto/16 :goto_5

    :cond_d
    and-int/lit16 v5, v4, 0xff

    if-ne v5, v12, :cond_e

    iget v5, v2, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->implicitConversion:I

    and-int/2addr v5, v8

    if-eqz v5, :cond_e

    invoke-virtual/range {p2 .. p2}, Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object v4

    invoke-virtual {v4, v3, v2}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->localVariableNullReference(Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;)V

    goto/16 :goto_5

    :cond_e
    and-int/lit16 v4, v4, 0x1000

    if-nez v4, :cond_16

    invoke-virtual/range {p2 .. p2}, Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object v4

    invoke-virtual {v4, v3, v2}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->localVariableRedundantCheckOnNull(Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;)V

    goto/16 :goto_5

    :cond_f
    invoke-virtual {v9, v3}, Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;->isPotentiallyNull(Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;)Z

    move-result v4

    if-eqz v4, :cond_16

    iget-object v4, v0, Lorg/eclipse/jdt/internal/compiler/flow/FinallyFlowContext;->nullCheckTypes:[I

    aget v4, v4, v1

    and-int/2addr v5, v4

    const/16 v17, 0x0

    if-eq v5, v6, :cond_11

    if-eq v5, v7, :cond_10

    goto/16 :goto_5

    :cond_10
    iget-object v5, v0, Lorg/eclipse/jdt/internal/compiler/flow/FinallyFlowContext;->nullReferences:[Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;

    aput-object v17, v5, v1

    and-int/lit16 v4, v4, 0xff

    if-ne v4, v12, :cond_16

    iget v4, v2, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->implicitConversion:I

    and-int/2addr v4, v8

    if-eqz v4, :cond_16

    invoke-virtual/range {p2 .. p2}, Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object v4

    invoke-virtual {v4, v3, v2}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->localVariablePotentialNullReference(Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;)V

    goto :goto_5

    :cond_11
    iget-object v5, v0, Lorg/eclipse/jdt/internal/compiler/flow/FinallyFlowContext;->nullReferences:[Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;

    aput-object v17, v5, v1

    and-int/lit16 v4, v4, 0xff

    if-ne v4, v12, :cond_16

    iget v4, v2, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->implicitConversion:I

    and-int/2addr v4, v8

    if-eqz v4, :cond_16

    invoke-virtual/range {p2 .. p2}, Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object v4

    invoke-virtual {v4, v3, v2}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->localVariablePotentialNullReference(Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;)V

    goto :goto_5

    :cond_12
    invoke-virtual {v9, v3}, Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;->nullStatus(Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;)I

    move-result v3

    if-eq v3, v13, :cond_16

    invoke-virtual/range {p2 .. p2}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->environment()Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    move-result-object v4

    invoke-virtual {v4}, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->getNonNullAnnotationName()[[C

    move-result-object v22

    invoke-virtual/range {p2 .. p2}, Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object v17

    move-object/from16 v18, v2

    check-cast v18, Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    iget-object v2, v0, Lorg/eclipse/jdt/internal/compiler/flow/FlowContext;->providedExpectedTypes:[[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    aget-object v2, v2, v1

    aget-object v19, v2, v11

    aget-object v20, v2, v12

    move/from16 v21, v3

    invoke-virtual/range {v17 .. v22}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->nullityMismatch(Lorg/eclipse/jdt/internal/compiler/ast/Expression;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;I[[C)V

    goto :goto_5

    :cond_13
    check-cast v2, Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    invoke-virtual {v0, v10, v2, v9}, Lorg/eclipse/jdt/internal/compiler/flow/FlowContext;->checkUnboxing(Lorg/eclipse/jdt/internal/compiler/lookup/Scope;Lorg/eclipse/jdt/internal/compiler/ast/Expression;Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;)V

    goto :goto_5

    :cond_14
    invoke-virtual {v9, v3}, Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;->isDefinitelyNull(Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;)Z

    move-result v4

    if-eqz v4, :cond_15

    invoke-virtual/range {p2 .. p2}, Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object v4

    invoke-virtual {v4, v3, v2}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->localVariableNullReference(Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;)V

    goto :goto_5

    :cond_15
    invoke-virtual {v9, v3}, Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;->isPotentiallyNull(Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;)Z

    move-result v4

    if-eqz v4, :cond_16

    invoke-virtual/range {p2 .. p2}, Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object v4

    invoke-virtual {v4, v3, v2}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->localVariablePotentialNullReference(Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;)V

    :cond_16
    :goto_5
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_3

    :cond_17
    iget-object v2, v0, Lorg/eclipse/jdt/internal/compiler/flow/FinallyFlowContext;->finalVariables:[Lorg/eclipse/jdt/internal/compiler/lookup/VariableBinding;

    aget-object v2, v2, v1

    if-nez v2, :cond_18

    goto :goto_8

    :cond_18
    instance-of v3, v2, Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;

    if-eqz v3, :cond_19

    check-cast v2, Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;

    invoke-virtual {v9, v2}, Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;->isPotentiallyAssigned(Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;)Z

    move-result v3

    if-eqz v3, :cond_1b

    invoke-virtual/range {p2 .. p2}, Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object v3

    iget-object v4, v0, Lorg/eclipse/jdt/internal/compiler/flow/FinallyFlowContext;->finalAssignments:[Lorg/eclipse/jdt/internal/compiler/ast/Reference;

    aget-object v4, v4, v1

    invoke-virtual {v3, v2, v4}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->duplicateInitializationOfBlankFinalField(Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;Lorg/eclipse/jdt/internal/compiler/ast/Reference;)V

    goto :goto_6

    :cond_19
    move-object v3, v2

    check-cast v3, Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;

    invoke-virtual {v9, v3}, Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;->isPotentiallyAssigned(Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;)Z

    move-result v4

    if-eqz v4, :cond_1b

    iget-wide v4, v2, Lorg/eclipse/jdt/internal/compiler/lookup/VariableBinding;->tagBits:J

    const-wide/16 v6, -0x801

    and-long/2addr v4, v6

    iput-wide v4, v2, Lorg/eclipse/jdt/internal/compiler/lookup/VariableBinding;->tagBits:J

    invoke-virtual {v2}, Lorg/eclipse/jdt/internal/compiler/lookup/VariableBinding;->isFinal()Z

    move-result v2

    if-eqz v2, :cond_1b

    invoke-virtual/range {p2 .. p2}, Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object v2

    iget-object v4, v0, Lorg/eclipse/jdt/internal/compiler/flow/FinallyFlowContext;->finalAssignments:[Lorg/eclipse/jdt/internal/compiler/ast/Reference;

    aget-object v4, v4, v1

    invoke-virtual {v2, v3, v4}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->duplicateInitializationOfFinalLocal(Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;)V

    :goto_6
    invoke-virtual/range {p0 .. p0}, Lorg/eclipse/jdt/internal/compiler/flow/FlowContext;->getLocalParent()Lorg/eclipse/jdt/internal/compiler/flow/FlowContext;

    move-result-object v2

    :goto_7
    if-nez v2, :cond_1a

    goto :goto_8

    :cond_1a
    iget-object v3, v0, Lorg/eclipse/jdt/internal/compiler/flow/FinallyFlowContext;->finalAssignments:[Lorg/eclipse/jdt/internal/compiler/ast/Reference;

    aget-object v3, v3, v1

    invoke-virtual {v2, v3}, Lorg/eclipse/jdt/internal/compiler/flow/FlowContext;->removeFinalAssignmentIfAny(Lorg/eclipse/jdt/internal/compiler/ast/Reference;)V

    invoke-virtual {v2}, Lorg/eclipse/jdt/internal/compiler/flow/FlowContext;->getLocalParent()Lorg/eclipse/jdt/internal/compiler/flow/FlowContext;

    move-result-object v2

    goto :goto_7

    :cond_1b
    :goto_8
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0
.end method

.method public individualToString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "Finally flow context"

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    const-string v1, "[finalAssignments count - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/flow/FinallyFlowContext;->assignCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    const-string v2, "[nullReferences count - "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v2, p0, Lorg/eclipse/jdt/internal/compiler/flow/FinallyFlowContext;->nullCount:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public internalRecordNullityMismatch(Lorg/eclipse/jdt/internal/compiler/ast/Expression;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;ILorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;I)Z
    .locals 2

    const/4 v0, 0x1

    if-eq p4, v0, :cond_1

    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/flow/FlowContext;->tagBits:I

    and-int/2addr v1, v0

    if-eqz v1, :cond_0

    const/4 v1, 0x2

    if-eq p4, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    iget p4, p0, Lorg/eclipse/jdt/internal/compiler/flow/FinallyFlowContext;->nullCount:I

    invoke-virtual {p0, p2, p5, p4}, Lorg/eclipse/jdt/internal/compiler/flow/FlowContext;->recordProvidedExpectedTypes(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;I)V

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->localVariableBinding()Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;

    move-result-object p2

    invoke-virtual {p0, p2, p1, p6, p3}, Lorg/eclipse/jdt/internal/compiler/flow/FinallyFlowContext;->recordNullReference(Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;ILorg/eclipse/jdt/internal/compiler/flow/FlowInfo;)V

    return v0
.end method

.method public isSubRoutine()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public recordFinalAssignment(Lorg/eclipse/jdt/internal/compiler/lookup/VariableBinding;Lorg/eclipse/jdt/internal/compiler/ast/Reference;)Z
    .locals 4

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/flow/FinallyFlowContext;->assignCount:I

    if-nez v0, :cond_0

    const/4 v0, 0x5

    new-array v1, v0, [Lorg/eclipse/jdt/internal/compiler/ast/Reference;

    iput-object v1, p0, Lorg/eclipse/jdt/internal/compiler/flow/FinallyFlowContext;->finalAssignments:[Lorg/eclipse/jdt/internal/compiler/ast/Reference;

    new-array v0, v0, [Lorg/eclipse/jdt/internal/compiler/lookup/VariableBinding;

    iput-object v0, p0, Lorg/eclipse/jdt/internal/compiler/flow/FinallyFlowContext;->finalVariables:[Lorg/eclipse/jdt/internal/compiler/lookup/VariableBinding;

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/flow/FinallyFlowContext;->finalAssignments:[Lorg/eclipse/jdt/internal/compiler/ast/Reference;

    array-length v2, v1

    const/4 v3, 0x0

    if-ne v0, v2, :cond_1

    mul-int/lit8 v2, v0, 0x2

    new-array v2, v2, [Lorg/eclipse/jdt/internal/compiler/ast/Reference;

    iput-object v2, p0, Lorg/eclipse/jdt/internal/compiler/flow/FinallyFlowContext;->finalAssignments:[Lorg/eclipse/jdt/internal/compiler/ast/Reference;

    invoke-static {v1, v3, v2, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_1
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/flow/FinallyFlowContext;->finalVariables:[Lorg/eclipse/jdt/internal/compiler/lookup/VariableBinding;

    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/flow/FinallyFlowContext;->assignCount:I

    mul-int/lit8 v2, v1, 0x2

    new-array v2, v2, [Lorg/eclipse/jdt/internal/compiler/lookup/VariableBinding;

    iput-object v2, p0, Lorg/eclipse/jdt/internal/compiler/flow/FinallyFlowContext;->finalVariables:[Lorg/eclipse/jdt/internal/compiler/lookup/VariableBinding;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/flow/FinallyFlowContext;->finalAssignments:[Lorg/eclipse/jdt/internal/compiler/ast/Reference;

    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/flow/FinallyFlowContext;->assignCount:I

    aput-object p2, v0, v1

    iget-object p2, p0, Lorg/eclipse/jdt/internal/compiler/flow/FinallyFlowContext;->finalVariables:[Lorg/eclipse/jdt/internal/compiler/lookup/VariableBinding;

    add-int/lit8 v0, v1, 0x1

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/flow/FinallyFlowContext;->assignCount:I

    aput-object p1, p2, v1

    const/4 p1, 0x1

    return p1
.end method

.method public recordNullReference(Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;ILorg/eclipse/jdt/internal/compiler/flow/FlowInfo;)V
    .locals 4

    iget p4, p0, Lorg/eclipse/jdt/internal/compiler/flow/FinallyFlowContext;->nullCount:I

    if-nez p4, :cond_0

    const/4 p4, 0x5

    new-array v0, p4, [Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;

    iput-object v0, p0, Lorg/eclipse/jdt/internal/compiler/flow/FinallyFlowContext;->nullLocals:[Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;

    new-array v0, p4, [Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;

    iput-object v0, p0, Lorg/eclipse/jdt/internal/compiler/flow/FinallyFlowContext;->nullReferences:[Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;

    new-array p4, p4, [I

    iput-object p4, p0, Lorg/eclipse/jdt/internal/compiler/flow/FinallyFlowContext;->nullCheckTypes:[I

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/flow/FinallyFlowContext;->nullLocals:[Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;

    array-length v1, v0

    if-ne p4, v1, :cond_1

    mul-int/lit8 v1, p4, 0x2

    new-array v2, v1, [Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;

    iput-object v2, p0, Lorg/eclipse/jdt/internal/compiler/flow/FinallyFlowContext;->nullLocals:[Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;

    const/4 v3, 0x0

    invoke-static {v0, v3, v2, v3, p4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object p4, p0, Lorg/eclipse/jdt/internal/compiler/flow/FinallyFlowContext;->nullReferences:[Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;

    new-array v0, v1, [Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;

    iput-object v0, p0, Lorg/eclipse/jdt/internal/compiler/flow/FinallyFlowContext;->nullReferences:[Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;

    iget v2, p0, Lorg/eclipse/jdt/internal/compiler/flow/FinallyFlowContext;->nullCount:I

    invoke-static {p4, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object p4, p0, Lorg/eclipse/jdt/internal/compiler/flow/FinallyFlowContext;->nullCheckTypes:[I

    new-array v0, v1, [I

    iput-object v0, p0, Lorg/eclipse/jdt/internal/compiler/flow/FinallyFlowContext;->nullCheckTypes:[I

    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/flow/FinallyFlowContext;->nullCount:I

    invoke-static {p4, v3, v0, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_1
    :goto_0
    iget-object p4, p0, Lorg/eclipse/jdt/internal/compiler/flow/FinallyFlowContext;->nullLocals:[Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/flow/FinallyFlowContext;->nullCount:I

    aput-object p1, p4, v0

    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/flow/FinallyFlowContext;->nullReferences:[Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;

    aput-object p2, p1, v0

    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/flow/FinallyFlowContext;->nullCheckTypes:[I

    add-int/lit8 p2, v0, 0x1

    iput p2, p0, Lorg/eclipse/jdt/internal/compiler/flow/FinallyFlowContext;->nullCount:I

    aput p3, p1, v0

    return-void
.end method

.method public recordUnboxing(Lorg/eclipse/jdt/internal/compiler/lookup/Scope;Lorg/eclipse/jdt/internal/compiler/ast/Expression;ILorg/eclipse/jdt/internal/compiler/flow/FlowInfo;)V
    .locals 1

    const/4 v0, 0x2

    if-ne p3, v0, :cond_0

    invoke-super {p0, p1, p2, p3, p4}, Lorg/eclipse/jdt/internal/compiler/flow/FlowContext;->recordUnboxing(Lorg/eclipse/jdt/internal/compiler/lookup/Scope;Lorg/eclipse/jdt/internal/compiler/ast/Expression;ILorg/eclipse/jdt/internal/compiler/flow/FlowInfo;)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    const/16 p3, 0x10

    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/eclipse/jdt/internal/compiler/flow/FinallyFlowContext;->recordNullReference(Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;ILorg/eclipse/jdt/internal/compiler/flow/FlowInfo;)V

    :goto_0
    return-void
.end method

.method public recordUsingNullReference(Lorg/eclipse/jdt/internal/compiler/lookup/Scope;Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;ILorg/eclipse/jdt/internal/compiler/flow/FlowInfo;)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move-object/from16 v3, p5

    iget v4, v3, Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;->tagBits:I

    const/4 v5, 0x3

    and-int/2addr v4, v5

    if-nez v4, :cond_24

    invoke-virtual {v3, v1}, Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;->isDefinitelyUnknown(Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;)Z

    move-result v4

    if-nez v4, :cond_24

    iget v4, v0, Lorg/eclipse/jdt/internal/compiler/flow/FlowContext;->tagBits:I

    and-int/lit16 v6, v4, 0x1000

    or-int v6, p4, v6

    const v7, -0xf001

    and-int/2addr v7, v6

    const/4 v8, 0x1

    and-int/2addr v4, v8

    const/16 v10, 0x201

    const/16 v11, 0x101

    const/16 v12, 0x401

    const/16 v13, 0x301

    const/16 v15, 0x100

    const/4 v8, 0x2

    const/16 v9, 0x200

    const/16 v14, 0x400

    if-eqz v4, :cond_11

    if-eq v7, v5, :cond_f

    if-eq v7, v13, :cond_0

    if-eq v7, v12, :cond_0

    if-eq v7, v15, :cond_0

    if-eq v7, v11, :cond_0

    if-eq v7, v9, :cond_0

    if-eq v7, v10, :cond_0

    goto/16 :goto_2

    :cond_0
    move-object v4, v2

    check-cast v4, Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    invoke-virtual {v3, v1}, Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;->cannotBeNull(Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;)Z

    move-result v5

    if-eqz v5, :cond_4

    if-ne v7, v9, :cond_2

    and-int/lit16 v2, v6, 0x1000

    if-nez v2, :cond_1

    invoke-virtual/range {p1 .. p1}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object v2

    invoke-virtual {v2, v1, v4}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->localVariableRedundantCheckOnNonNull(Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;)V

    :cond_1
    invoke-virtual/range {p5 .. p5}, Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;->initsWhenFalse()Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;

    move-result-object v1

    invoke-virtual {v1, v8}, Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;->setReachMode(I)Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;

    goto :goto_0

    :cond_2
    if-ne v7, v15, :cond_3

    invoke-virtual/range {p1 .. p1}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object v2

    invoke-virtual {v2, v1, v4}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->localVariableNonNullComparedToNull(Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;)V

    invoke-virtual/range {p5 .. p5}, Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;->initsWhenTrue()Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;

    move-result-object v1

    invoke-virtual {v1, v8}, Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;->setReachMode(I)Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;

    :cond_3
    :goto_0
    return-void

    :cond_4
    invoke-virtual {v3, v1}, Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;->canOnlyBeNull(Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;)Z

    move-result v5

    if-eqz v5, :cond_c

    const v5, -0xf100

    and-int/2addr v5, v6

    if-eq v5, v15, :cond_9

    if-eq v5, v9, :cond_7

    const/16 v7, 0x300

    if-eq v5, v7, :cond_6

    if-eq v5, v14, :cond_5

    goto/16 :goto_2

    :cond_5
    invoke-virtual/range {p1 .. p1}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object v2

    invoke-virtual {v2, v1, v4}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->localVariableNullInstanceof(Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;)V

    return-void

    :cond_6
    invoke-virtual/range {p1 .. p1}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object v2

    invoke-virtual {v2, v1, v4}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->localVariableRedundantNullAssignment(Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;)V

    return-void

    :cond_7
    and-int/lit16 v2, v6, 0xff

    const/4 v5, 0x1

    if-ne v2, v5, :cond_8

    iget v2, v4, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->implicitConversion:I

    and-int/2addr v2, v14

    if-eqz v2, :cond_8

    invoke-virtual/range {p1 .. p1}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object v2

    invoke-virtual {v2, v1, v4}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->localVariableNullReference(Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;)V

    return-void

    :cond_8
    invoke-virtual/range {p1 .. p1}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object v2

    invoke-virtual {v2, v1, v4}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->localVariableNullComparedToNonNull(Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;)V

    invoke-virtual/range {p5 .. p5}, Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;->initsWhenTrue()Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;

    move-result-object v1

    invoke-virtual {v1, v8}, Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;->setReachMode(I)Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;

    return-void

    :cond_9
    and-int/lit16 v2, v6, 0xff

    const/4 v5, 0x1

    if-ne v2, v5, :cond_a

    iget v2, v4, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->implicitConversion:I

    and-int/2addr v2, v14

    if-eqz v2, :cond_a

    invoke-virtual/range {p1 .. p1}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object v2

    invoke-virtual {v2, v1, v4}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->localVariableNullReference(Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;)V

    return-void

    :cond_a
    and-int/lit16 v2, v6, 0x1000

    if-nez v2, :cond_b

    invoke-virtual/range {p1 .. p1}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object v2

    invoke-virtual {v2, v1, v4}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->localVariableRedundantCheckOnNull(Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;)V

    :cond_b
    invoke-virtual/range {p5 .. p5}, Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;->initsWhenFalse()Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;

    move-result-object v1

    invoke-virtual {v1, v8}, Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;->setReachMode(I)Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;

    return-void

    :cond_c
    invoke-virtual {v3, v1}, Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;->isPotentiallyNull(Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;)Z

    move-result v5

    if-eqz v5, :cond_23

    const v5, -0xf100

    and-int/2addr v5, v6

    if-eq v5, v15, :cond_e

    if-eq v5, v9, :cond_d

    goto/16 :goto_2

    :cond_d
    and-int/lit16 v5, v6, 0xff

    const/4 v7, 0x1

    if-ne v5, v7, :cond_23

    iget v5, v4, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->implicitConversion:I

    and-int/2addr v5, v14

    if-eqz v5, :cond_23

    invoke-virtual/range {p1 .. p1}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object v2

    invoke-virtual {v2, v1, v4}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->localVariablePotentialNullReference(Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;)V

    return-void

    :cond_e
    const/4 v7, 0x1

    and-int/lit16 v5, v6, 0xff

    if-ne v5, v7, :cond_23

    iget v5, v4, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->implicitConversion:I

    and-int/2addr v5, v14

    if-eqz v5, :cond_23

    invoke-virtual/range {p1 .. p1}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object v2

    invoke-virtual {v2, v1, v4}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->localVariablePotentialNullReference(Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;)V

    return-void

    :cond_f
    invoke-virtual {v3, v1}, Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;->cannotBeNull(Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;)Z

    move-result v4

    if-eqz v4, :cond_10

    return-void

    :cond_10
    invoke-virtual {v3, v1}, Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;->canOnlyBeNull(Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;)Z

    move-result v4

    if-eqz v4, :cond_23

    invoke-virtual/range {p1 .. p1}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object v3

    invoke-virtual {v3, v1, v2}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->localVariableNullReference(Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;)V

    return-void

    :cond_11
    if-eq v7, v5, :cond_20

    if-eq v7, v13, :cond_15

    if-eq v7, v12, :cond_15

    if-eq v7, v15, :cond_12

    if-eq v7, v11, :cond_15

    if-eq v7, v9, :cond_12

    if-eq v7, v10, :cond_15

    goto/16 :goto_2

    :cond_12
    invoke-virtual {v3, v1}, Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;->isDefinitelyNonNull(Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;)Z

    move-result v4

    if-eqz v4, :cond_15

    if-ne v7, v9, :cond_14

    and-int/lit16 v4, v6, 0x1000

    if-nez v4, :cond_13

    invoke-virtual/range {p1 .. p1}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object v4

    invoke-virtual {v4, v1, v2}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->localVariableRedundantCheckOnNonNull(Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;)V

    :cond_13
    invoke-virtual/range {p5 .. p5}, Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;->initsWhenFalse()Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;

    move-result-object v1

    invoke-virtual {v1, v8}, Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;->setReachMode(I)Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;

    goto :goto_1

    :cond_14
    invoke-virtual/range {p1 .. p1}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object v4

    invoke-virtual {v4, v1, v2}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->localVariableNonNullComparedToNull(Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;)V

    invoke-virtual/range {p5 .. p5}, Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;->initsWhenTrue()Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;

    move-result-object v1

    invoke-virtual {v1, v8}, Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;->setReachMode(I)Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;

    :goto_1
    return-void

    :cond_15
    move-object v4, v2

    check-cast v4, Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    invoke-virtual {v3, v1}, Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;->isDefinitelyNull(Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;)Z

    move-result v5

    if-eqz v5, :cond_1d

    const v5, -0xf100

    and-int/2addr v5, v6

    if-eq v5, v15, :cond_1a

    if-eq v5, v9, :cond_18

    const/16 v7, 0x300

    if-eq v5, v7, :cond_17

    if-eq v5, v14, :cond_16

    goto/16 :goto_2

    :cond_16
    invoke-virtual/range {p1 .. p1}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object v2

    invoke-virtual {v2, v1, v4}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->localVariableNullInstanceof(Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;)V

    return-void

    :cond_17
    invoke-virtual/range {p1 .. p1}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object v2

    invoke-virtual {v2, v1, v4}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->localVariableRedundantNullAssignment(Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;)V

    return-void

    :cond_18
    and-int/lit16 v2, v6, 0xff

    const/4 v5, 0x1

    if-ne v2, v5, :cond_19

    iget v2, v4, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->implicitConversion:I

    and-int/2addr v2, v14

    if-eqz v2, :cond_19

    invoke-virtual/range {p1 .. p1}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object v2

    invoke-virtual {v2, v1, v4}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->localVariableNullReference(Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;)V

    return-void

    :cond_19
    invoke-virtual/range {p1 .. p1}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object v2

    invoke-virtual {v2, v1, v4}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->localVariableNullComparedToNonNull(Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;)V

    invoke-virtual/range {p5 .. p5}, Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;->initsWhenTrue()Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;

    move-result-object v1

    invoke-virtual {v1, v8}, Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;->setReachMode(I)Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;

    return-void

    :cond_1a
    and-int/lit16 v2, v6, 0xff

    const/4 v5, 0x1

    if-ne v2, v5, :cond_1b

    iget v2, v4, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->implicitConversion:I

    and-int/2addr v2, v14

    if-eqz v2, :cond_1b

    invoke-virtual/range {p1 .. p1}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object v2

    invoke-virtual {v2, v1, v4}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->localVariableNullReference(Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;)V

    return-void

    :cond_1b
    and-int/lit16 v2, v6, 0x1000

    if-nez v2, :cond_1c

    invoke-virtual/range {p1 .. p1}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object v2

    invoke-virtual {v2, v1, v4}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->localVariableRedundantCheckOnNull(Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;)V

    :cond_1c
    invoke-virtual/range {p5 .. p5}, Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;->initsWhenFalse()Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;

    move-result-object v1

    invoke-virtual {v1, v8}, Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;->setReachMode(I)Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;

    return-void

    :cond_1d
    invoke-virtual {v3, v1}, Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;->isPotentiallyNull(Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;)Z

    move-result v5

    if-eqz v5, :cond_23

    const v5, -0xf100

    and-int/2addr v5, v6

    if-eq v5, v15, :cond_1f

    if-eq v5, v9, :cond_1e

    goto :goto_2

    :cond_1e
    and-int/lit16 v5, v6, 0xff

    const/4 v7, 0x1

    if-ne v5, v7, :cond_23

    iget v5, v4, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->implicitConversion:I

    and-int/2addr v5, v14

    if-eqz v5, :cond_23

    invoke-virtual/range {p1 .. p1}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object v2

    invoke-virtual {v2, v1, v4}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->localVariablePotentialNullReference(Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;)V

    return-void

    :cond_1f
    const/4 v7, 0x1

    and-int/lit16 v5, v6, 0xff

    if-ne v5, v7, :cond_23

    iget v5, v4, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->implicitConversion:I

    and-int/2addr v5, v14

    if-eqz v5, :cond_23

    invoke-virtual/range {p1 .. p1}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object v2

    invoke-virtual {v2, v1, v4}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->localVariablePotentialNullReference(Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;)V

    return-void

    :cond_20
    invoke-virtual {v3, v1}, Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;->isDefinitelyNull(Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;)Z

    move-result v4

    if-eqz v4, :cond_21

    invoke-virtual/range {p1 .. p1}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object v3

    invoke-virtual {v3, v1, v2}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->localVariableNullReference(Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;)V

    return-void

    :cond_21
    invoke-virtual {v3, v1}, Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;->isPotentiallyNull(Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;)Z

    move-result v4

    if-eqz v4, :cond_22

    invoke-virtual/range {p1 .. p1}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object v3

    invoke-virtual {v3, v1, v2}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->localVariablePotentialNullReference(Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;)V

    return-void

    :cond_22
    invoke-virtual {v3, v1}, Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;->isDefinitelyNonNull(Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;)Z

    move-result v4

    if-eqz v4, :cond_23

    return-void

    :cond_23
    :goto_2
    invoke-virtual {v0, v1, v2, v6, v3}, Lorg/eclipse/jdt/internal/compiler/flow/FinallyFlowContext;->recordNullReference(Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;ILorg/eclipse/jdt/internal/compiler/flow/FlowInfo;)V

    :cond_24
    return-void
.end method

.method public removeFinalAssignmentIfAny(Lorg/eclipse/jdt/internal/compiler/ast/Reference;)V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/flow/FinallyFlowContext;->assignCount:I

    if-lt v0, v1, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/flow/FinallyFlowContext;->finalAssignments:[Lorg/eclipse/jdt/internal/compiler/ast/Reference;

    aget-object v2, v1, v0

    if-ne v2, p1, :cond_1

    const/4 p1, 0x0

    aput-object p1, v1, v0

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/flow/FinallyFlowContext;->finalVariables:[Lorg/eclipse/jdt/internal/compiler/lookup/VariableBinding;

    aput-object p1, v1, v0

    return-void

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method
