.class public Lorg/eclipse/jdt/internal/compiler/flow/LoopingFlowContext;
.super Lorg/eclipse/jdt/internal/compiler/flow/SwitchFlowContext;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/eclipse/jdt/internal/compiler/flow/LoopingFlowContext$EscapingExceptionCatchSite;
    }
.end annotation


# instance fields
.field assignCount:I

.field associatedScope:Lorg/eclipse/jdt/internal/compiler/lookup/Scope;

.field private breakTargetContexts:[Lorg/eclipse/jdt/internal/compiler/flow/LabelFlowContext;

.field private breakTargetsCount:I

.field public continueLabel:Lorg/eclipse/jdt/internal/compiler/codegen/BranchLabel;

.field private escapingExceptionCatchSites:Ljava/util/ArrayList;

.field finalAssignments:[Lorg/eclipse/jdt/internal/compiler/ast/Reference;

.field finalVariables:[Lorg/eclipse/jdt/internal/compiler/lookup/VariableBinding;

.field public initsOnContinue:Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;

.field private innerFlowContexts:[Lorg/eclipse/jdt/internal/compiler/flow/LoopingFlowContext;

.field private innerFlowContextsCount:I

.field private innerFlowInfos:[Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;

.field nullCheckTypes:[I

.field nullCount:I

.field nullInfos:[Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;

.field nullLocals:[Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;

.field nullReferences:[Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;

.field private upstreamNullFlowInfo:Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;


# direct methods
.method public constructor <init>(Lorg/eclipse/jdt/internal/compiler/flow/FlowContext;Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;Lorg/eclipse/jdt/internal/compiler/codegen/BranchLabel;Lorg/eclipse/jdt/internal/compiler/codegen/BranchLabel;Lorg/eclipse/jdt/internal/compiler/lookup/Scope;Z)V
    .locals 6

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p3

    move-object v3, p4

    move v4, p7

    invoke-direct/range {v0 .. v5}, Lorg/eclipse/jdt/internal/compiler/flow/SwitchFlowContext;-><init>(Lorg/eclipse/jdt/internal/compiler/flow/FlowContext;Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;Lorg/eclipse/jdt/internal/compiler/codegen/BranchLabel;ZZ)V

    sget-object p1, Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;->DEAD_END:Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;

    iput-object p1, p0, Lorg/eclipse/jdt/internal/compiler/flow/LoopingFlowContext;->initsOnContinue:Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;

    const/4 p1, 0x0

    iput-object p1, p0, Lorg/eclipse/jdt/internal/compiler/flow/LoopingFlowContext;->innerFlowContexts:[Lorg/eclipse/jdt/internal/compiler/flow/LoopingFlowContext;

    iput-object p1, p0, Lorg/eclipse/jdt/internal/compiler/flow/LoopingFlowContext;->innerFlowInfos:[Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;

    const/4 p3, 0x0

    iput p3, p0, Lorg/eclipse/jdt/internal/compiler/flow/LoopingFlowContext;->innerFlowContextsCount:I

    iput-object p1, p0, Lorg/eclipse/jdt/internal/compiler/flow/LoopingFlowContext;->breakTargetContexts:[Lorg/eclipse/jdt/internal/compiler/flow/LabelFlowContext;

    iput p3, p0, Lorg/eclipse/jdt/internal/compiler/flow/LoopingFlowContext;->breakTargetsCount:I

    iput p3, p0, Lorg/eclipse/jdt/internal/compiler/flow/LoopingFlowContext;->assignCount:I

    iput-object p1, p0, Lorg/eclipse/jdt/internal/compiler/flow/LoopingFlowContext;->escapingExceptionCatchSites:Ljava/util/ArrayList;

    iget p1, p0, Lorg/eclipse/jdt/internal/compiler/flow/FlowContext;->tagBits:I

    or-int/lit8 p1, p1, 0x2

    iput p1, p0, Lorg/eclipse/jdt/internal/compiler/flow/FlowContext;->tagBits:I

    iput-object p5, p0, Lorg/eclipse/jdt/internal/compiler/flow/LoopingFlowContext;->continueLabel:Lorg/eclipse/jdt/internal/compiler/codegen/BranchLabel;

    iput-object p6, p0, Lorg/eclipse/jdt/internal/compiler/flow/LoopingFlowContext;->associatedScope:Lorg/eclipse/jdt/internal/compiler/lookup/Scope;

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;->unconditionalCopy()Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;

    move-result-object p1

    iput-object p1, p0, Lorg/eclipse/jdt/internal/compiler/flow/LoopingFlowContext;->upstreamNullFlowInfo:Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;

    return-void
.end method


# virtual methods
.method public complainOnDeferredFinalChecks(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;)V
    .locals 7

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/flow/LoopingFlowContext;->assignCount:I

    if-lt v0, v1, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/flow/LoopingFlowContext;->finalVariables:[Lorg/eclipse/jdt/internal/compiler/lookup/VariableBinding;

    aget-object v1, v1, v0

    if-nez v1, :cond_1

    goto :goto_3

    :cond_1
    instance-of v2, v1, Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;

    if-eqz v2, :cond_2

    check-cast v1, Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;

    invoke-virtual {p2, v1}, Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;->isPotentiallyAssigned(Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;)Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object v2

    iget-object v3, p0, Lorg/eclipse/jdt/internal/compiler/flow/LoopingFlowContext;->finalAssignments:[Lorg/eclipse/jdt/internal/compiler/ast/Reference;

    aget-object v3, v3, v0

    invoke-virtual {v2, v1, v3}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->duplicateInitializationOfBlankFinalField(Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;Lorg/eclipse/jdt/internal/compiler/ast/Reference;)V

    goto :goto_1

    :cond_2
    move-object v2, v1

    check-cast v2, Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;

    invoke-virtual {p2, v2}, Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;->isPotentiallyAssigned(Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;)Z

    move-result v3

    if-eqz v3, :cond_4

    iget-wide v3, v1, Lorg/eclipse/jdt/internal/compiler/lookup/VariableBinding;->tagBits:J

    const-wide/16 v5, -0x801

    and-long/2addr v3, v5

    iput-wide v3, v1, Lorg/eclipse/jdt/internal/compiler/lookup/VariableBinding;->tagBits:J

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/compiler/lookup/VariableBinding;->isFinal()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object v1

    iget-object v3, p0, Lorg/eclipse/jdt/internal/compiler/flow/LoopingFlowContext;->finalAssignments:[Lorg/eclipse/jdt/internal/compiler/ast/Reference;

    aget-object v3, v3, v0

    invoke-virtual {v1, v2, v3}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->duplicateInitializationOfFinalLocal(Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;)V

    :goto_1
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/flow/FlowContext;->getLocalParent()Lorg/eclipse/jdt/internal/compiler/flow/FlowContext;

    move-result-object v1

    :goto_2
    if-nez v1, :cond_3

    goto :goto_3

    :cond_3
    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/flow/LoopingFlowContext;->finalAssignments:[Lorg/eclipse/jdt/internal/compiler/ast/Reference;

    aget-object v2, v2, v0

    invoke-virtual {v1, v2}, Lorg/eclipse/jdt/internal/compiler/flow/FlowContext;->removeFinalAssignmentIfAny(Lorg/eclipse/jdt/internal/compiler/ast/Reference;)V

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/compiler/flow/FlowContext;->getLocalParent()Lorg/eclipse/jdt/internal/compiler/flow/FlowContext;

    move-result-object v1

    goto :goto_2

    :cond_4
    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public complainOnDeferredNullChecks(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;)V
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p0, p1, p2, v0}, Lorg/eclipse/jdt/internal/compiler/flow/LoopingFlowContext;->complainOnDeferredNullChecks(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;Z)V

    return-void
.end method

.method public complainOnDeferredNullChecks(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;Z)V
    .locals 29

    move-object/from16 v0, p0

    move-object/from16 v9, p1

    const/4 v10, 0x0

    move v1, v10

    .line 2
    :goto_0
    iget v2, v0, Lorg/eclipse/jdt/internal/compiler/flow/LoopingFlowContext;->innerFlowContextsCount:I

    if-lt v1, v2, :cond_41

    .line 3
    iput v10, v0, Lorg/eclipse/jdt/internal/compiler/flow/LoopingFlowContext;->innerFlowContextsCount:I

    .line 4
    iget-object v1, v0, Lorg/eclipse/jdt/internal/compiler/flow/LoopingFlowContext;->upstreamNullFlowInfo:Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;->copy()Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;

    move-result-object v11

    .line 5
    iget-object v1, v0, Lorg/eclipse/jdt/internal/compiler/flow/LoopingFlowContext;->upstreamNullFlowInfo:Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;

    .line 6
    invoke-virtual/range {p2 .. p2}, Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;->unconditionalInitsWithoutSideEffect()Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;->addPotentialNullInfoFrom(Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;)Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;

    move-result-object v12

    .line 7
    iget v1, v0, Lorg/eclipse/jdt/internal/compiler/flow/FlowContext;->tagBits:I

    const/4 v13, 0x1

    and-int/2addr v1, v13

    const/16 v15, 0x800

    const/16 v8, 0x401

    const/16 v7, 0x301

    const/16 v6, 0x80

    const/16 v5, 0x10

    const/4 v3, 0x3

    const v16, -0xf100

    const v17, -0xf001

    const/4 v13, 0x0

    if-eqz v1, :cond_1f

    const/4 v1, 0x0

    .line 8
    :goto_1
    iget v4, v0, Lorg/eclipse/jdt/internal/compiler/flow/LoopingFlowContext;->nullCount:I

    if-lt v1, v4, :cond_0

    goto/16 :goto_b

    .line 9
    :cond_0
    iget-object v4, v0, Lorg/eclipse/jdt/internal/compiler/flow/LoopingFlowContext;->nullLocals:[Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;

    aget-object v4, v4, v1

    .line 10
    iget-object v14, v0, Lorg/eclipse/jdt/internal/compiler/flow/LoopingFlowContext;->nullReferences:[Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;

    aget-object v14, v14, v1

    .line 11
    iget-object v2, v0, Lorg/eclipse/jdt/internal/compiler/flow/LoopingFlowContext;->nullInfos:[Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;

    aget-object v2, v2, v1

    if-eqz v2, :cond_1

    .line 12
    invoke-virtual {v12}, Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;->copy()Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;

    move-result-object v2

    iget-object v10, v0, Lorg/eclipse/jdt/internal/compiler/flow/LoopingFlowContext;->nullInfos:[Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;

    aget-object v10, v10, v1

    invoke-virtual {v2, v10}, Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;->addNullInfoFrom(Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;)Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;

    move-result-object v2

    move-object v10, v2

    goto :goto_2

    :cond_1
    move-object v10, v12

    .line 13
    :goto_2
    iget-object v2, v0, Lorg/eclipse/jdt/internal/compiler/flow/LoopingFlowContext;->nullCheckTypes:[I

    aget v2, v2, v1

    and-int v2, v2, v17

    if-eq v2, v3, :cond_1b

    if-eq v2, v5, :cond_1a

    if-eq v2, v6, :cond_18

    if-eq v2, v7, :cond_c

    if-eq v2, v8, :cond_c

    if-eq v2, v15, :cond_9

    packed-switch v2, :pswitch_data_0

    packed-switch v2, :pswitch_data_1

    :cond_2
    move/from16 v22, v1

    move v15, v3

    move v8, v6

    goto/16 :goto_8

    .line 14
    :pswitch_0
    invoke-virtual {v10, v4}, Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;->isDefinitelyNonNull(Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 15
    iget-object v2, v0, Lorg/eclipse/jdt/internal/compiler/flow/LoopingFlowContext;->nullReferences:[Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;

    aput-object v13, v2, v1

    .line 16
    iget-object v2, v0, Lorg/eclipse/jdt/internal/compiler/flow/LoopingFlowContext;->nullCheckTypes:[I

    aget v2, v2, v1

    and-int v10, v2, v17

    const/16 v3, 0x202

    if-ne v10, v3, :cond_4

    and-int/lit16 v2, v2, 0x1000

    if-nez v2, :cond_3

    .line 17
    invoke-virtual/range {p1 .. p1}, Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object v2

    invoke-virtual {v2, v4, v14}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->localVariableRedundantCheckOnNonNull(Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;)V

    :cond_3
    :goto_3
    move/from16 v22, v1

    move v8, v6

    :goto_4
    const/4 v15, 0x3

    goto/16 :goto_9

    .line 18
    :cond_4
    invoke-virtual/range {p1 .. p1}, Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object v2

    invoke-virtual {v2, v4, v14}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->localVariableNonNullComparedToNull(Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;)V

    goto :goto_3

    .line 19
    :pswitch_1
    invoke-virtual {v10, v4}, Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;->isDefinitelyNonNull(Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 20
    iget-object v2, v0, Lorg/eclipse/jdt/internal/compiler/flow/LoopingFlowContext;->nullReferences:[Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;

    aput-object v13, v2, v1

    .line 21
    iget-object v2, v0, Lorg/eclipse/jdt/internal/compiler/flow/LoopingFlowContext;->nullCheckTypes:[I

    aget v2, v2, v1

    and-int v3, v2, v17

    const/16 v10, 0x200

    if-ne v3, v10, :cond_5

    and-int/lit16 v2, v2, 0x1000

    if-nez v2, :cond_3

    .line 22
    invoke-virtual/range {p1 .. p1}, Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object v2

    invoke-virtual {v2, v4, v14}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->localVariableRedundantCheckOnNonNull(Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;)V

    goto :goto_3

    .line 23
    :cond_5
    invoke-virtual/range {p1 .. p1}, Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object v2

    invoke-virtual {v2, v4, v14}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->localVariableNonNullComparedToNull(Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;)V

    goto :goto_3

    .line 24
    :cond_6
    invoke-virtual {v10, v4}, Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;->isDefinitelyNull(Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 25
    iget-object v2, v0, Lorg/eclipse/jdt/internal/compiler/flow/LoopingFlowContext;->nullReferences:[Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;

    aput-object v13, v2, v1

    .line 26
    iget-object v2, v0, Lorg/eclipse/jdt/internal/compiler/flow/LoopingFlowContext;->nullCheckTypes:[I

    aget v2, v2, v1

    and-int v3, v2, v17

    const/16 v10, 0x100

    if-ne v3, v10, :cond_7

    and-int/lit16 v2, v2, 0x1000

    if-nez v2, :cond_3

    .line 27
    invoke-virtual/range {p1 .. p1}, Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object v2

    invoke-virtual {v2, v4, v14}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->localVariableRedundantCheckOnNull(Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;)V

    goto :goto_3

    .line 28
    :cond_7
    invoke-virtual/range {p1 .. p1}, Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object v2

    invoke-virtual {v2, v4, v14}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->localVariableNullComparedToNonNull(Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;)V

    goto :goto_3

    :cond_8
    move/from16 v22, v1

    move v8, v6

    :goto_5
    const/4 v15, 0x3

    goto/16 :goto_8

    .line 29
    :cond_9
    iget-object v2, v4, Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;->closeTracker:Lorg/eclipse/jdt/internal/compiler/ast/FakedTrackingVariable;

    if-eqz v2, :cond_8

    .line 30
    invoke-virtual {v2, v10}, Lorg/eclipse/jdt/internal/compiler/ast/FakedTrackingVariable;->hasDefinitelyNoResource(Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;)Z

    move-result v3

    if-eqz v3, :cond_a

    goto :goto_3

    .line 31
    :cond_a
    invoke-virtual {v2, v9}, Lorg/eclipse/jdt/internal/compiler/ast/FakedTrackingVariable;->isClosedInFinallyOfEnclosing(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;)Z

    move-result v3

    if-eqz v3, :cond_b

    goto :goto_3

    .line 32
    :cond_b
    iget-object v3, v0, Lorg/eclipse/jdt/internal/compiler/flow/FlowContext;->parent:Lorg/eclipse/jdt/internal/compiler/flow/FlowContext;

    invoke-virtual {v3, v9, v10, v2, v14}, Lorg/eclipse/jdt/internal/compiler/flow/FlowContext;->recordExitAgainstResource(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;Lorg/eclipse/jdt/internal/compiler/ast/FakedTrackingVariable;Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 33
    iget-object v2, v0, Lorg/eclipse/jdt/internal/compiler/flow/LoopingFlowContext;->nullReferences:[Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;

    aput-object v13, v2, v1

    goto/16 :goto_3

    .line 34
    :cond_c
    :pswitch_2
    move-object v2, v14

    check-cast v2, Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    .line 35
    invoke-virtual {v10, v4}, Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;->isDefinitelyNull(Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;)Z

    move-result v3

    if-eqz v3, :cond_15

    .line 36
    iget-object v3, v0, Lorg/eclipse/jdt/internal/compiler/flow/LoopingFlowContext;->nullReferences:[Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;

    aput-object v13, v3, v1

    .line 37
    iget-object v3, v0, Lorg/eclipse/jdt/internal/compiler/flow/LoopingFlowContext;->nullCheckTypes:[I

    aget v3, v3, v1

    and-int v5, v3, v16

    const/16 v6, 0x100

    if-eq v5, v6, :cond_13

    const/16 v6, 0x200

    if-eq v5, v6, :cond_11

    const/16 v6, 0x300

    if-eq v5, v6, :cond_10

    const/16 v3, 0x400

    if-eq v5, v3, :cond_e

    :cond_d
    :goto_6
    move/from16 v22, v1

    const/16 v8, 0x80

    goto :goto_5

    .line 38
    :cond_e
    invoke-virtual/range {p1 .. p1}, Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object v3

    invoke-virtual {v3, v4, v2}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->localVariableNullInstanceof(Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;)V

    :cond_f
    :goto_7
    move/from16 v22, v1

    const/16 v8, 0x80

    goto/16 :goto_4

    .line 39
    :cond_10
    invoke-virtual/range {p1 .. p1}, Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object v3

    invoke-virtual {v3, v4, v2}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->localVariableRedundantNullAssignment(Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;)V

    goto :goto_7

    :cond_11
    and-int/lit16 v3, v3, 0xff

    const/4 v5, 0x1

    if-ne v3, v5, :cond_12

    .line 40
    iget v3, v2, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->implicitConversion:I

    const/16 v5, 0x400

    and-int/2addr v3, v5

    if-eqz v3, :cond_12

    .line 41
    invoke-virtual/range {p1 .. p1}, Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object v3

    invoke-virtual {v3, v4, v2}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->localVariableNullReference(Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;)V

    goto :goto_7

    .line 42
    :cond_12
    invoke-virtual/range {p1 .. p1}, Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object v3

    invoke-virtual {v3, v4, v2}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->localVariableNullComparedToNonNull(Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;)V

    goto :goto_7

    :cond_13
    and-int/lit16 v5, v3, 0xff

    const/4 v6, 0x1

    if-ne v5, v6, :cond_14

    .line 43
    iget v5, v2, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->implicitConversion:I

    const/16 v6, 0x400

    and-int/2addr v5, v6

    if-eqz v5, :cond_14

    .line 44
    invoke-virtual/range {p1 .. p1}, Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object v3

    invoke-virtual {v3, v4, v2}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->localVariableNullReference(Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;)V

    goto :goto_7

    :cond_14
    and-int/lit16 v3, v3, 0x1000

    if-nez v3, :cond_f

    .line 45
    invoke-virtual/range {p1 .. p1}, Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object v3

    invoke-virtual {v3, v4, v2}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->localVariableRedundantCheckOnNull(Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;)V

    goto :goto_7

    .line 46
    :cond_15
    invoke-virtual {v10, v4}, Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;->isPotentiallyNull(Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;)Z

    move-result v3

    if-eqz v3, :cond_d

    .line 47
    iget-object v3, v0, Lorg/eclipse/jdt/internal/compiler/flow/LoopingFlowContext;->nullCheckTypes:[I

    aget v3, v3, v1

    and-int v5, v3, v16

    const/16 v6, 0x100

    if-eq v5, v6, :cond_17

    const/16 v6, 0x200

    if-eq v5, v6, :cond_16

    goto :goto_6

    .line 48
    :cond_16
    iget-object v5, v0, Lorg/eclipse/jdt/internal/compiler/flow/LoopingFlowContext;->nullReferences:[Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;

    aput-object v13, v5, v1

    and-int/lit16 v3, v3, 0xff

    const/4 v5, 0x1

    if-ne v3, v5, :cond_d

    .line 49
    iget v3, v2, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->implicitConversion:I

    const/16 v5, 0x400

    and-int/2addr v3, v5

    if-eqz v3, :cond_d

    .line 50
    invoke-virtual/range {p1 .. p1}, Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object v3

    invoke-virtual {v3, v4, v2}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->localVariablePotentialNullReference(Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;)V

    goto :goto_7

    .line 51
    :cond_17
    iget-object v5, v0, Lorg/eclipse/jdt/internal/compiler/flow/LoopingFlowContext;->nullReferences:[Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;

    aput-object v13, v5, v1

    and-int/lit16 v3, v3, 0xff

    const/4 v5, 0x1

    if-ne v3, v5, :cond_d

    .line 52
    iget v3, v2, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->implicitConversion:I

    const/16 v5, 0x400

    and-int/2addr v3, v5

    if-eqz v3, :cond_d

    .line 53
    invoke-virtual/range {p1 .. p1}, Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object v3

    invoke-virtual {v3, v4, v2}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->localVariablePotentialNullReference(Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;)V

    goto/16 :goto_7

    :cond_18
    const/16 v5, 0x400

    .line 54
    invoke-virtual {v10, v4}, Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;->nullStatus(Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;)I

    move-result v6

    const/4 v4, 0x4

    if-eq v6, v4, :cond_19

    .line 55
    iget-object v2, v0, Lorg/eclipse/jdt/internal/compiler/flow/FlowContext;->parent:Lorg/eclipse/jdt/internal/compiler/flow/FlowContext;

    move-object v3, v14

    check-cast v3, Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    iget-object v14, v0, Lorg/eclipse/jdt/internal/compiler/flow/FlowContext;->providedExpectedTypes:[[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    aget-object v14, v14, v1

    const/16 v18, 0x0

    aget-object v20, v14, v18

    const/16 v19, 0x1

    aget-object v14, v14, v19

    const/16 v21, 0x0

    move/from16 v22, v1

    move-object v1, v2

    move-object/from16 v2, p1

    const/4 v15, 0x3

    move v5, v4

    move-object/from16 v4, v20

    move-object v5, v14

    move/from16 v20, v6

    const/16 v14, 0x80

    move-object v6, v10

    move v10, v7

    move/from16 v7, v20

    move-object/from16 v8, v21

    invoke-virtual/range {v1 .. v8}, Lorg/eclipse/jdt/internal/compiler/flow/FlowContext;->recordNullityMismatch(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;Lorg/eclipse/jdt/internal/compiler/ast/Expression;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;ILorg/eclipse/jdt/internal/compiler/ast/NullAnnotationMatching;)V

    move v7, v10

    move v8, v14

    goto :goto_9

    :cond_19
    move/from16 v22, v1

    const/4 v15, 0x3

    const/16 v8, 0x80

    goto :goto_9

    :cond_1a
    move/from16 v22, v1

    move v15, v3

    move v8, v6

    .line 56
    check-cast v14, Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    invoke-virtual {v0, v9, v14, v10}, Lorg/eclipse/jdt/internal/compiler/flow/FlowContext;->checkUnboxing(Lorg/eclipse/jdt/internal/compiler/lookup/Scope;Lorg/eclipse/jdt/internal/compiler/ast/Expression;Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;)V

    goto :goto_9

    :cond_1b
    move/from16 v22, v1

    move v15, v3

    move v8, v6

    .line 57
    invoke-virtual {v10, v4}, Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;->isDefinitelyNull(Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;)Z

    move-result v1

    if-eqz v1, :cond_1c

    .line 58
    iget-object v1, v0, Lorg/eclipse/jdt/internal/compiler/flow/LoopingFlowContext;->nullReferences:[Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;

    aput-object v13, v1, v22

    .line 59
    invoke-virtual/range {p1 .. p1}, Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object v1

    invoke-virtual {v1, v4, v14}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->localVariableNullReference(Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;)V

    goto :goto_9

    .line 60
    :cond_1c
    :goto_8
    iget-object v1, v0, Lorg/eclipse/jdt/internal/compiler/flow/LoopingFlowContext;->nullCheckTypes:[I

    aget v1, v1, v22

    if-ne v1, v15, :cond_1d

    invoke-virtual {v11, v4}, Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;->isDefinitelyNonNull(Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;)Z

    move-result v1

    if-nez v1, :cond_1e

    .line 61
    :cond_1d
    iget-object v1, v0, Lorg/eclipse/jdt/internal/compiler/flow/FlowContext;->parent:Lorg/eclipse/jdt/internal/compiler/flow/FlowContext;

    .line 62
    iget-object v2, v0, Lorg/eclipse/jdt/internal/compiler/flow/LoopingFlowContext;->nullCheckTypes:[I

    aget v5, v2, v22

    move-object/from16 v2, p1

    move-object v3, v4

    move-object v4, v14

    move-object v6, v10

    .line 63
    invoke-virtual/range {v1 .. v6}, Lorg/eclipse/jdt/internal/compiler/flow/FlowContext;->recordUsingNullReference(Lorg/eclipse/jdt/internal/compiler/lookup/Scope;Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;ILorg/eclipse/jdt/internal/compiler/flow/FlowInfo;)V

    :cond_1e
    :goto_9
    add-int/lit8 v1, v22, 0x1

    move v6, v8

    move v3, v15

    const/16 v5, 0x10

    const/16 v8, 0x401

    const/16 v15, 0x800

    goto/16 :goto_1

    :cond_1f
    move v15, v3

    move v8, v6

    const/4 v1, 0x0

    .line 64
    :goto_a
    iget v2, v0, Lorg/eclipse/jdt/internal/compiler/flow/LoopingFlowContext;->nullCount:I

    if-lt v1, v2, :cond_22

    :goto_b
    if-eqz p3, :cond_21

    .line 65
    iget-object v1, v0, Lorg/eclipse/jdt/internal/compiler/flow/SwitchFlowContext;->initsOnBreak:Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;

    invoke-virtual {v1, v12}, Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;->addPotentialNullInfoFrom(Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;)Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;

    const/4 v10, 0x0

    .line 66
    :goto_c
    iget v1, v0, Lorg/eclipse/jdt/internal/compiler/flow/LoopingFlowContext;->breakTargetsCount:I

    if-lt v10, v1, :cond_20

    goto :goto_d

    .line 67
    :cond_20
    iget-object v1, v0, Lorg/eclipse/jdt/internal/compiler/flow/LoopingFlowContext;->breakTargetContexts:[Lorg/eclipse/jdt/internal/compiler/flow/LabelFlowContext;

    aget-object v1, v1, v10

    iget-object v1, v1, Lorg/eclipse/jdt/internal/compiler/flow/SwitchFlowContext;->initsOnBreak:Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;

    invoke-virtual {v1, v12}, Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;->addPotentialNullInfoFrom(Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;)Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;

    add-int/lit8 v10, v10, 0x1

    goto :goto_c

    :cond_21
    :goto_d
    return-void

    .line 68
    :cond_22
    iget-object v2, v0, Lorg/eclipse/jdt/internal/compiler/flow/LoopingFlowContext;->nullReferences:[Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;

    aget-object v2, v2, v1

    .line 69
    iget-object v3, v0, Lorg/eclipse/jdt/internal/compiler/flow/LoopingFlowContext;->nullLocals:[Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;

    aget-object v3, v3, v1

    .line 70
    iget-object v4, v0, Lorg/eclipse/jdt/internal/compiler/flow/LoopingFlowContext;->nullInfos:[Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;

    aget-object v4, v4, v1

    if-eqz v4, :cond_23

    .line 71
    invoke-virtual {v12}, Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;->copy()Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;

    move-result-object v4

    iget-object v5, v0, Lorg/eclipse/jdt/internal/compiler/flow/LoopingFlowContext;->nullInfos:[Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;

    aget-object v5, v5, v1

    invoke-virtual {v4, v5}, Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;->addNullInfoFrom(Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;)Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;

    move-result-object v4

    goto :goto_e

    :cond_23
    move-object v4, v12

    .line 72
    :goto_e
    iget-object v5, v0, Lorg/eclipse/jdt/internal/compiler/flow/LoopingFlowContext;->nullCheckTypes:[I

    aget v5, v5, v1

    and-int v5, v5, v17

    if-eq v5, v15, :cond_3e

    const/16 v6, 0x10

    if-eq v5, v6, :cond_3d

    if-eq v5, v8, :cond_3c

    if-eq v5, v7, :cond_2f

    const/16 v10, 0x401

    if-eq v5, v10, :cond_2e

    const/16 v11, 0x800

    if-eq v5, v11, :cond_2a

    const/16 v14, 0x100

    if-eq v5, v14, :cond_27

    const/16 v6, 0x101

    if-eq v5, v6, :cond_29

    const/16 v6, 0x200

    if-eq v5, v6, :cond_27

    const/16 v6, 0x201

    if-eq v5, v6, :cond_29

    :cond_24
    :goto_f
    const/4 v5, 0x4

    :cond_25
    :goto_10
    const/16 v6, 0x400

    :cond_26
    :goto_11
    const/4 v7, 0x0

    const/16 v8, 0x200

    :goto_12
    const/16 v18, 0x1

    goto/16 :goto_19

    .line 73
    :cond_27
    invoke-virtual {v4, v3}, Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;->isDefinitelyNonNull(Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;)Z

    move-result v5

    if-eqz v5, :cond_29

    .line 74
    iget-object v4, v0, Lorg/eclipse/jdt/internal/compiler/flow/LoopingFlowContext;->nullReferences:[Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;

    aput-object v13, v4, v1

    .line 75
    iget-object v4, v0, Lorg/eclipse/jdt/internal/compiler/flow/LoopingFlowContext;->nullCheckTypes:[I

    aget v4, v4, v1

    and-int v5, v4, v17

    const/16 v6, 0x200

    if-ne v5, v6, :cond_28

    and-int/lit16 v4, v4, 0x1000

    if-nez v4, :cond_24

    .line 76
    invoke-virtual/range {p1 .. p1}, Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object v4

    invoke-virtual {v4, v3, v2}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->localVariableRedundantCheckOnNonNull(Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;)V

    goto :goto_f

    .line 77
    :cond_28
    invoke-virtual/range {p1 .. p1}, Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object v4

    invoke-virtual {v4, v3, v2}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->localVariableNonNullComparedToNull(Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;)V

    goto :goto_f

    :cond_29
    const/4 v5, 0x4

    goto :goto_16

    :cond_2a
    const/16 v14, 0x100

    .line 78
    invoke-virtual {v4, v3}, Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;->nullStatus(Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;)I

    move-result v2

    const/4 v5, 0x4

    if-eq v2, v5, :cond_25

    .line 79
    iget-object v2, v3, Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;->closeTracker:Lorg/eclipse/jdt/internal/compiler/ast/FakedTrackingVariable;

    if-eqz v2, :cond_25

    .line 80
    invoke-virtual {v2, v4}, Lorg/eclipse/jdt/internal/compiler/ast/FakedTrackingVariable;->hasDefinitelyNoResource(Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;)Z

    move-result v3

    if-eqz v3, :cond_2b

    :goto_13
    goto :goto_10

    .line 81
    :cond_2b
    invoke-virtual {v2, v9}, Lorg/eclipse/jdt/internal/compiler/ast/FakedTrackingVariable;->isClosedInFinallyOfEnclosing(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;)Z

    move-result v3

    if-eqz v3, :cond_2c

    goto :goto_13

    .line 82
    :cond_2c
    invoke-virtual {v2, v4, v9, v13}, Lorg/eclipse/jdt/internal/compiler/ast/FakedTrackingVariable;->findMostSpecificStatus(Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;)I

    move-result v3

    .line 83
    iget-object v6, v0, Lorg/eclipse/jdt/internal/compiler/flow/LoopingFlowContext;->nullReferences:[Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;

    aget-object v6, v6, v1

    invoke-virtual {v2, v6, v3}, Lorg/eclipse/jdt/internal/compiler/ast/FakedTrackingVariable;->recordErrorLocation(Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;I)V

    .line 84
    invoke-virtual {v4}, Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;->reachMode()I

    move-result v4

    if-eqz v4, :cond_2d

    const/4 v4, 0x1

    goto :goto_14

    :cond_2d
    const/4 v4, 0x0

    :goto_14
    invoke-virtual {v2, v9, v3, v4}, Lorg/eclipse/jdt/internal/compiler/ast/FakedTrackingVariable;->reportRecordedErrors(Lorg/eclipse/jdt/internal/compiler/lookup/Scope;IZ)Z

    .line 85
    iget-object v2, v0, Lorg/eclipse/jdt/internal/compiler/flow/LoopingFlowContext;->nullReferences:[Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;

    aput-object v13, v2, v1

    goto :goto_10

    :cond_2e
    const/4 v5, 0x4

    :goto_15
    const/16 v11, 0x800

    const/16 v14, 0x100

    goto :goto_16

    :cond_2f
    const/4 v5, 0x4

    const/16 v10, 0x401

    goto :goto_15

    .line 86
    :goto_16
    check-cast v2, Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    .line 87
    invoke-virtual {v4, v3}, Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;->isDefinitelyNull(Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;)Z

    move-result v6

    if-eqz v6, :cond_36

    .line 88
    iget-object v4, v0, Lorg/eclipse/jdt/internal/compiler/flow/LoopingFlowContext;->nullReferences:[Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;

    aput-object v13, v4, v1

    .line 89
    iget-object v4, v0, Lorg/eclipse/jdt/internal/compiler/flow/LoopingFlowContext;->nullCheckTypes:[I

    aget v4, v4, v1

    and-int v6, v4, v16

    if-eq v6, v14, :cond_34

    const/16 v7, 0x200

    if-eq v6, v7, :cond_32

    const/16 v7, 0x300

    if-eq v6, v7, :cond_31

    const/16 v4, 0x400

    if-eq v6, v4, :cond_30

    :goto_17
    move v6, v4

    goto/16 :goto_11

    .line 90
    :cond_30
    invoke-virtual/range {p1 .. p1}, Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object v6

    invoke-virtual {v6, v3, v2}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->localVariableNullInstanceof(Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;)V

    goto :goto_17

    :cond_31
    const/16 v4, 0x400

    .line 91
    invoke-virtual/range {p1 .. p1}, Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object v6

    invoke-virtual {v6, v3, v2}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->localVariableRedundantNullAssignment(Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;)V

    goto :goto_17

    :cond_32
    const/16 v6, 0x400

    const/16 v7, 0x300

    and-int/lit16 v4, v4, 0xff

    const/4 v7, 0x1

    if-ne v4, v7, :cond_33

    .line 92
    iget v4, v2, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->implicitConversion:I

    and-int/2addr v4, v6

    if-eqz v4, :cond_33

    .line 93
    invoke-virtual/range {p1 .. p1}, Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object v4

    invoke-virtual {v4, v3, v2}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->localVariableNullReference(Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;)V

    goto/16 :goto_11

    .line 94
    :cond_33
    invoke-virtual/range {p1 .. p1}, Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object v4

    invoke-virtual {v4, v3, v2}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->localVariableNullComparedToNonNull(Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;)V

    goto/16 :goto_11

    :cond_34
    const/16 v6, 0x400

    and-int/lit16 v7, v4, 0xff

    const/4 v8, 0x1

    if-ne v7, v8, :cond_35

    .line 95
    iget v7, v2, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->implicitConversion:I

    and-int/2addr v7, v6

    if-eqz v7, :cond_35

    .line 96
    invoke-virtual/range {p1 .. p1}, Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object v4

    invoke-virtual {v4, v3, v2}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->localVariableNullReference(Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;)V

    goto/16 :goto_11

    :cond_35
    and-int/lit16 v4, v4, 0x1000

    if-nez v4, :cond_26

    .line 97
    invoke-virtual/range {p1 .. p1}, Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object v4

    invoke-virtual {v4, v3, v2}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->localVariableRedundantCheckOnNull(Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;)V

    goto/16 :goto_11

    :cond_36
    const/16 v6, 0x400

    .line 98
    invoke-virtual {v4, v3}, Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;->isPotentiallyNull(Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;)Z

    move-result v4

    if-eqz v4, :cond_3b

    .line 99
    iget-object v4, v0, Lorg/eclipse/jdt/internal/compiler/flow/LoopingFlowContext;->nullCheckTypes:[I

    aget v4, v4, v1

    and-int v7, v4, v16

    if-eq v7, v14, :cond_3a

    const/16 v8, 0x200

    if-eq v7, v8, :cond_38

    :cond_37
    :goto_18
    const/4 v7, 0x0

    goto/16 :goto_12

    .line 100
    :cond_38
    iget-object v7, v0, Lorg/eclipse/jdt/internal/compiler/flow/LoopingFlowContext;->nullReferences:[Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;

    aput-object v13, v7, v1

    and-int/lit16 v4, v4, 0xff

    const/4 v7, 0x1

    if-ne v4, v7, :cond_39

    .line 101
    iget v4, v2, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->implicitConversion:I

    and-int/2addr v4, v6

    if-eqz v4, :cond_37

    .line 102
    invoke-virtual/range {p1 .. p1}, Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object v4

    invoke-virtual {v4, v3, v2}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->localVariablePotentialNullReference(Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;)V

    goto :goto_18

    :cond_39
    move/from16 v18, v7

    const/4 v7, 0x0

    goto/16 :goto_19

    :cond_3a
    const/16 v8, 0x200

    .line 103
    iget-object v7, v0, Lorg/eclipse/jdt/internal/compiler/flow/LoopingFlowContext;->nullReferences:[Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;

    aput-object v13, v7, v1

    and-int/lit16 v4, v4, 0xff

    const/4 v7, 0x1

    if-ne v4, v7, :cond_39

    .line 104
    iget v4, v2, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->implicitConversion:I

    and-int/2addr v4, v6

    if-eqz v4, :cond_37

    .line 105
    invoke-virtual/range {p1 .. p1}, Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object v4

    invoke-virtual {v4, v3, v2}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->localVariablePotentialNullReference(Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;)V

    goto :goto_18

    :cond_3b
    const/16 v8, 0x200

    goto :goto_18

    :cond_3c
    const/4 v5, 0x4

    const/16 v6, 0x400

    const/16 v8, 0x200

    const/16 v10, 0x401

    const/16 v11, 0x800

    const/16 v14, 0x100

    .line 106
    invoke-virtual {v4, v3}, Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;->nullStatus(Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;)I

    move-result v3

    if-eq v3, v5, :cond_37

    .line 107
    invoke-virtual/range {p1 .. p1}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->environment()Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    move-result-object v4

    invoke-virtual {v4}, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->getNonNullAnnotationName()[[C

    move-result-object v28

    .line 108
    invoke-virtual/range {p1 .. p1}, Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object v23

    move-object/from16 v24, v2

    check-cast v24, Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    iget-object v2, v0, Lorg/eclipse/jdt/internal/compiler/flow/FlowContext;->providedExpectedTypes:[[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    aget-object v2, v2, v1

    const/4 v7, 0x0

    aget-object v25, v2, v7

    const/16 v18, 0x1

    aget-object v26, v2, v18

    move/from16 v27, v3

    invoke-virtual/range {v23 .. v28}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->nullityMismatch(Lorg/eclipse/jdt/internal/compiler/ast/Expression;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;I[[C)V

    goto :goto_19

    :cond_3d
    const/4 v5, 0x4

    const/16 v6, 0x400

    const/4 v7, 0x0

    const/16 v8, 0x200

    const/16 v10, 0x401

    const/16 v11, 0x800

    const/16 v14, 0x100

    const/16 v18, 0x1

    .line 109
    check-cast v2, Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    invoke-virtual {v0, v9, v2, v4}, Lorg/eclipse/jdt/internal/compiler/flow/FlowContext;->checkUnboxing(Lorg/eclipse/jdt/internal/compiler/lookup/Scope;Lorg/eclipse/jdt/internal/compiler/ast/Expression;Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;)V

    goto :goto_19

    :cond_3e
    const/4 v5, 0x4

    const/16 v6, 0x400

    const/4 v7, 0x0

    const/16 v8, 0x200

    const/16 v10, 0x401

    const/16 v11, 0x800

    const/16 v14, 0x100

    const/16 v18, 0x1

    .line 110
    invoke-virtual {v4, v3}, Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;->isDefinitelyNull(Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;)Z

    move-result v19

    if-eqz v19, :cond_3f

    .line 111
    iget-object v4, v0, Lorg/eclipse/jdt/internal/compiler/flow/LoopingFlowContext;->nullReferences:[Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;

    aput-object v13, v4, v1

    .line 112
    invoke-virtual/range {p1 .. p1}, Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object v4

    invoke-virtual {v4, v3, v2}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->localVariableNullReference(Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;)V

    goto :goto_19

    .line 113
    :cond_3f
    invoke-virtual {v4, v3}, Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;->isPotentiallyNull(Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;)Z

    move-result v4

    if-eqz v4, :cond_40

    .line 114
    iget-object v4, v0, Lorg/eclipse/jdt/internal/compiler/flow/LoopingFlowContext;->nullReferences:[Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;

    aput-object v13, v4, v1

    .line 115
    invoke-virtual/range {p1 .. p1}, Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object v4

    invoke-virtual {v4, v3, v2}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->localVariablePotentialNullReference(Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;)V

    :cond_40
    :goto_19
    add-int/lit8 v1, v1, 0x1

    const/16 v7, 0x301

    const/16 v8, 0x80

    goto/16 :goto_a

    :cond_41
    move v7, v10

    .line 116
    iget-object v2, v0, Lorg/eclipse/jdt/internal/compiler/flow/LoopingFlowContext;->upstreamNullFlowInfo:Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;

    .line 117
    iget-object v3, v0, Lorg/eclipse/jdt/internal/compiler/flow/LoopingFlowContext;->innerFlowContexts:[Lorg/eclipse/jdt/internal/compiler/flow/LoopingFlowContext;

    aget-object v3, v3, v1

    iget-object v3, v3, Lorg/eclipse/jdt/internal/compiler/flow/LoopingFlowContext;->upstreamNullFlowInfo:Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;

    .line 118
    invoke-virtual {v2, v3}, Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;->addPotentialNullInfoFrom(Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;)Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;

    move-result-object v2

    .line 119
    iget-object v3, v0, Lorg/eclipse/jdt/internal/compiler/flow/LoopingFlowContext;->innerFlowInfos:[Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;

    aget-object v3, v3, v1

    invoke-virtual {v2, v3}, Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;->addPotentialNullInfoFrom(Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;)Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;

    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x100
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x200
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method public continueLabel()Lorg/eclipse/jdt/internal/compiler/codegen/BranchLabel;
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/flow/LoopingFlowContext;->continueLabel:Lorg/eclipse/jdt/internal/compiler/codegen/BranchLabel;

    return-object v0
.end method

.method public hasEscapingExceptions()Z
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/flow/LoopingFlowContext;->escapingExceptionCatchSites:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public individualToString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "Looping flow context"

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    const-string v1, "[initsOnBreak - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/flow/SwitchFlowContext;->initsOnBreak:Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    const-string v2, "[initsOnContinue - "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/flow/LoopingFlowContext;->initsOnContinue:Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;

    invoke-virtual {v2}, Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    const-string v2, "[finalAssignments count - "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v2, p0, Lorg/eclipse/jdt/internal/compiler/flow/LoopingFlowContext;->assignCount:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    const-string v2, "[nullReferences count - "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v2, p0, Lorg/eclipse/jdt/internal/compiler/flow/LoopingFlowContext;->nullCount:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public internalRecordNullityMismatch(Lorg/eclipse/jdt/internal/compiler/ast/Expression;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;ILorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;I)Z
    .locals 0

    iget p4, p0, Lorg/eclipse/jdt/internal/compiler/flow/LoopingFlowContext;->nullCount:I

    invoke-virtual {p0, p2, p5, p4}, Lorg/eclipse/jdt/internal/compiler/flow/FlowContext;->recordProvidedExpectedTypes(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;I)V

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->localVariableBinding()Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;

    move-result-object p2

    invoke-virtual {p0, p2, p1, p6, p3}, Lorg/eclipse/jdt/internal/compiler/flow/LoopingFlowContext;->recordNullReference(Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;ILorg/eclipse/jdt/internal/compiler/flow/FlowInfo;)V

    const/4 p1, 0x1

    return p1
.end method

.method public isContinuable()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isContinuedTo()Z
    .locals 2

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/flow/LoopingFlowContext;->initsOnContinue:Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;

    sget-object v1, Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;->DEAD_END:Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public recordBreakTo(Lorg/eclipse/jdt/internal/compiler/flow/FlowContext;)V
    .locals 4

    instance-of v0, p1, Lorg/eclipse/jdt/internal/compiler/flow/LabelFlowContext;

    if-eqz v0, :cond_2

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/flow/LoopingFlowContext;->breakTargetsCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/eclipse/jdt/internal/compiler/flow/LoopingFlowContext;->breakTargetsCount:I

    if-nez v0, :cond_0

    const/4 v1, 0x2

    new-array v1, v1, [Lorg/eclipse/jdt/internal/compiler/flow/LabelFlowContext;

    iput-object v1, p0, Lorg/eclipse/jdt/internal/compiler/flow/LoopingFlowContext;->breakTargetContexts:[Lorg/eclipse/jdt/internal/compiler/flow/LabelFlowContext;

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/flow/LoopingFlowContext;->breakTargetContexts:[Lorg/eclipse/jdt/internal/compiler/flow/LabelFlowContext;

    array-length v2, v1

    if-ne v0, v2, :cond_1

    add-int/lit8 v2, v0, 0x2

    new-array v2, v2, [Lorg/eclipse/jdt/internal/compiler/flow/LabelFlowContext;

    iput-object v2, p0, Lorg/eclipse/jdt/internal/compiler/flow/LoopingFlowContext;->breakTargetContexts:[Lorg/eclipse/jdt/internal/compiler/flow/LabelFlowContext;

    const/4 v3, 0x0

    invoke-static {v1, v3, v2, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_1
    :goto_0
    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/flow/LoopingFlowContext;->breakTargetContexts:[Lorg/eclipse/jdt/internal/compiler/flow/LabelFlowContext;

    check-cast p1, Lorg/eclipse/jdt/internal/compiler/flow/LabelFlowContext;

    aput-object p1, v1, v0

    :cond_2
    return-void
.end method

.method public recordCatchContextOfEscapingException(Lorg/eclipse/jdt/internal/compiler/flow/ExceptionHandlingFlowContext;Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;)V
    .locals 2

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/flow/LoopingFlowContext;->escapingExceptionCatchSites:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lorg/eclipse/jdt/internal/compiler/flow/LoopingFlowContext;->escapingExceptionCatchSites:Ljava/util/ArrayList;

    :cond_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/flow/LoopingFlowContext;->escapingExceptionCatchSites:Ljava/util/ArrayList;

    new-instance v1, Lorg/eclipse/jdt/internal/compiler/flow/LoopingFlowContext$EscapingExceptionCatchSite;

    invoke-direct {v1, p1, p2, p3}, Lorg/eclipse/jdt/internal/compiler/flow/LoopingFlowContext$EscapingExceptionCatchSite;-><init>(Lorg/eclipse/jdt/internal/compiler/flow/ExceptionHandlingFlowContext;Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public recordContinueFrom(Lorg/eclipse/jdt/internal/compiler/flow/FlowContext;Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;)V
    .locals 5

    iget v0, p2, Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;->tagBits:I

    and-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_6

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/flow/LoopingFlowContext;->initsOnContinue:Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;

    iget v1, v0, Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;->tagBits:I

    and-int/lit8 v1, v1, 0x1

    if-nez v1, :cond_0

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;->unconditionalInitsWithoutSideEffect()Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;->mergedWith(Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;)Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;

    move-result-object v0

    iput-object v0, p0, Lorg/eclipse/jdt/internal/compiler/flow/LoopingFlowContext;->initsOnContinue:Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;->unconditionalCopy()Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;

    move-result-object v0

    iput-object v0, p0, Lorg/eclipse/jdt/internal/compiler/flow/LoopingFlowContext;->initsOnContinue:Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;

    :goto_0
    if-eq p1, p0, :cond_2

    instance-of v0, p1, Lorg/eclipse/jdt/internal/compiler/flow/LoopingFlowContext;

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    iget-object p1, p1, Lorg/eclipse/jdt/internal/compiler/flow/FlowContext;->parent:Lorg/eclipse/jdt/internal/compiler/flow/FlowContext;

    goto :goto_0

    :cond_2
    :goto_1
    if-ne p1, p0, :cond_3

    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/flow/LoopingFlowContext;->upstreamNullFlowInfo:Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;->unconditionalInitsWithoutSideEffect()Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;->addPotentialNullInfoFrom(Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;)Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;

    goto :goto_3

    :cond_3
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/flow/LoopingFlowContext;->innerFlowContexts:[Lorg/eclipse/jdt/internal/compiler/flow/LoopingFlowContext;

    if-nez v0, :cond_4

    const/4 v0, 0x5

    new-array v1, v0, [Lorg/eclipse/jdt/internal/compiler/flow/LoopingFlowContext;

    iput-object v1, p0, Lorg/eclipse/jdt/internal/compiler/flow/LoopingFlowContext;->innerFlowContexts:[Lorg/eclipse/jdt/internal/compiler/flow/LoopingFlowContext;

    new-array v0, v0, [Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;

    iput-object v0, p0, Lorg/eclipse/jdt/internal/compiler/flow/LoopingFlowContext;->innerFlowInfos:[Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;

    goto :goto_2

    :cond_4
    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/flow/LoopingFlowContext;->innerFlowContextsCount:I

    array-length v2, v0

    add-int/lit8 v3, v2, -0x1

    if-ne v1, v3, :cond_5

    add-int/lit8 v1, v2, 0x5

    new-array v3, v1, [Lorg/eclipse/jdt/internal/compiler/flow/LoopingFlowContext;

    iput-object v3, p0, Lorg/eclipse/jdt/internal/compiler/flow/LoopingFlowContext;->innerFlowContexts:[Lorg/eclipse/jdt/internal/compiler/flow/LoopingFlowContext;

    const/4 v4, 0x0

    invoke-static {v0, v4, v3, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/flow/LoopingFlowContext;->innerFlowInfos:[Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;

    new-array v1, v1, [Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;

    iput-object v1, p0, Lorg/eclipse/jdt/internal/compiler/flow/LoopingFlowContext;->innerFlowInfos:[Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;

    invoke-static {v0, v4, v1, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_5
    :goto_2
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/flow/LoopingFlowContext;->innerFlowContexts:[Lorg/eclipse/jdt/internal/compiler/flow/LoopingFlowContext;

    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/flow/LoopingFlowContext;->innerFlowContextsCount:I

    check-cast p1, Lorg/eclipse/jdt/internal/compiler/flow/LoopingFlowContext;

    aput-object p1, v0, v1

    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/flow/LoopingFlowContext;->innerFlowInfos:[Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;

    add-int/lit8 v0, v1, 0x1

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/flow/LoopingFlowContext;->innerFlowContextsCount:I

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;->unconditionalInitsWithoutSideEffect()Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;

    move-result-object p2

    aput-object p2, p1, v1

    :cond_6
    :goto_3
    return-void
.end method

.method public recordExitAgainstResource(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;Lorg/eclipse/jdt/internal/compiler/ast/FakedTrackingVariable;Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;)Z
    .locals 3

    iget-object v0, p3, Lorg/eclipse/jdt/internal/compiler/ast/LocalDeclaration;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;

    invoke-virtual {p2, v0}, Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;->isDefinitelyNonNull(Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    invoke-virtual {p2, v0}, Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;->isDefinitelyNull(Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object p1

    invoke-virtual {p1, p3, p4}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->unclosedCloseable(Lorg/eclipse/jdt/internal/compiler/ast/FakedTrackingVariable;Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;)V

    return v2

    :cond_1
    invoke-virtual {p2, v0}, Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;->isPotentiallyNull(Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object p1

    invoke-virtual {p1, p3, p4}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->potentiallyUnclosedCloseable(Lorg/eclipse/jdt/internal/compiler/ast/FakedTrackingVariable;Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;)V

    return v2

    :cond_2
    iget-object p1, p3, Lorg/eclipse/jdt/internal/compiler/ast/LocalDeclaration;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;

    const/16 p3, 0x800

    invoke-virtual {p0, p1, p4, p3, p2}, Lorg/eclipse/jdt/internal/compiler/flow/LoopingFlowContext;->recordNullReference(Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;ILorg/eclipse/jdt/internal/compiler/flow/FlowInfo;)V

    return v2
.end method

.method public recordFinalAssignment(Lorg/eclipse/jdt/internal/compiler/lookup/VariableBinding;Lorg/eclipse/jdt/internal/compiler/ast/Reference;)Z
    .locals 4

    instance-of v0, p1, Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    move-object v0, p1

    check-cast v0, Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;

    iget-object v0, v0, Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;->declaringScope:Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;

    :cond_0
    iget-object v0, v0, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->parent:Lorg/eclipse/jdt/internal/compiler/lookup/Scope;

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/flow/LoopingFlowContext;->associatedScope:Lorg/eclipse/jdt/internal/compiler/lookup/Scope;

    if-ne v0, v2, :cond_0

    return v1

    :cond_2
    :goto_0
    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/flow/LoopingFlowContext;->assignCount:I

    if-nez v0, :cond_3

    const/4 v0, 0x5

    new-array v1, v0, [Lorg/eclipse/jdt/internal/compiler/ast/Reference;

    iput-object v1, p0, Lorg/eclipse/jdt/internal/compiler/flow/LoopingFlowContext;->finalAssignments:[Lorg/eclipse/jdt/internal/compiler/ast/Reference;

    new-array v0, v0, [Lorg/eclipse/jdt/internal/compiler/lookup/VariableBinding;

    iput-object v0, p0, Lorg/eclipse/jdt/internal/compiler/flow/LoopingFlowContext;->finalVariables:[Lorg/eclipse/jdt/internal/compiler/lookup/VariableBinding;

    goto :goto_1

    :cond_3
    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/flow/LoopingFlowContext;->finalAssignments:[Lorg/eclipse/jdt/internal/compiler/ast/Reference;

    array-length v3, v2

    if-ne v0, v3, :cond_4

    mul-int/lit8 v3, v0, 0x2

    new-array v3, v3, [Lorg/eclipse/jdt/internal/compiler/ast/Reference;

    iput-object v3, p0, Lorg/eclipse/jdt/internal/compiler/flow/LoopingFlowContext;->finalAssignments:[Lorg/eclipse/jdt/internal/compiler/ast/Reference;

    invoke-static {v2, v1, v3, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_4
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/flow/LoopingFlowContext;->finalVariables:[Lorg/eclipse/jdt/internal/compiler/lookup/VariableBinding;

    iget v2, p0, Lorg/eclipse/jdt/internal/compiler/flow/LoopingFlowContext;->assignCount:I

    mul-int/lit8 v3, v2, 0x2

    new-array v3, v3, [Lorg/eclipse/jdt/internal/compiler/lookup/VariableBinding;

    iput-object v3, p0, Lorg/eclipse/jdt/internal/compiler/flow/LoopingFlowContext;->finalVariables:[Lorg/eclipse/jdt/internal/compiler/lookup/VariableBinding;

    invoke-static {v0, v1, v3, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_1
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/flow/LoopingFlowContext;->finalAssignments:[Lorg/eclipse/jdt/internal/compiler/ast/Reference;

    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/flow/LoopingFlowContext;->assignCount:I

    aput-object p2, v0, v1

    iget-object p2, p0, Lorg/eclipse/jdt/internal/compiler/flow/LoopingFlowContext;->finalVariables:[Lorg/eclipse/jdt/internal/compiler/lookup/VariableBinding;

    add-int/lit8 v0, v1, 0x1

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/flow/LoopingFlowContext;->assignCount:I

    aput-object p1, p2, v1

    const/4 p1, 0x1

    return p1
.end method

.method public recordNullReference(Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;ILorg/eclipse/jdt/internal/compiler/flow/FlowInfo;)V
    .locals 4

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/flow/LoopingFlowContext;->nullCount:I

    if-nez v0, :cond_0

    const/4 v0, 0x5

    new-array v1, v0, [Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;

    iput-object v1, p0, Lorg/eclipse/jdt/internal/compiler/flow/LoopingFlowContext;->nullLocals:[Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;

    new-array v1, v0, [Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;

    iput-object v1, p0, Lorg/eclipse/jdt/internal/compiler/flow/LoopingFlowContext;->nullReferences:[Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;

    new-array v1, v0, [I

    iput-object v1, p0, Lorg/eclipse/jdt/internal/compiler/flow/LoopingFlowContext;->nullCheckTypes:[I

    new-array v0, v0, [Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;

    iput-object v0, p0, Lorg/eclipse/jdt/internal/compiler/flow/LoopingFlowContext;->nullInfos:[Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/flow/LoopingFlowContext;->nullLocals:[Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;

    array-length v2, v1

    if-ne v0, v2, :cond_1

    mul-int/lit8 v2, v0, 0x2

    new-array v2, v2, [Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;

    iput-object v2, p0, Lorg/eclipse/jdt/internal/compiler/flow/LoopingFlowContext;->nullLocals:[Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;

    const/4 v3, 0x0

    invoke-static {v1, v3, v2, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/flow/LoopingFlowContext;->nullReferences:[Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;

    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/flow/LoopingFlowContext;->nullCount:I

    mul-int/lit8 v2, v1, 0x2

    new-array v2, v2, [Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;

    iput-object v2, p0, Lorg/eclipse/jdt/internal/compiler/flow/LoopingFlowContext;->nullReferences:[Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/flow/LoopingFlowContext;->nullCheckTypes:[I

    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/flow/LoopingFlowContext;->nullCount:I

    mul-int/lit8 v2, v1, 0x2

    new-array v2, v2, [I

    iput-object v2, p0, Lorg/eclipse/jdt/internal/compiler/flow/LoopingFlowContext;->nullCheckTypes:[I

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/flow/LoopingFlowContext;->nullInfos:[Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;

    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/flow/LoopingFlowContext;->nullCount:I

    mul-int/lit8 v2, v1, 0x2

    new-array v2, v2, [Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;

    iput-object v2, p0, Lorg/eclipse/jdt/internal/compiler/flow/LoopingFlowContext;->nullInfos:[Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_1
    :goto_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/flow/LoopingFlowContext;->nullLocals:[Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;

    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/flow/LoopingFlowContext;->nullCount:I

    aput-object p1, v0, v1

    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/flow/LoopingFlowContext;->nullReferences:[Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;

    aput-object p2, p1, v1

    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/flow/LoopingFlowContext;->nullCheckTypes:[I

    aput p3, p1, v1

    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/flow/LoopingFlowContext;->nullInfos:[Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;

    add-int/lit8 p2, v1, 0x1

    iput p2, p0, Lorg/eclipse/jdt/internal/compiler/flow/LoopingFlowContext;->nullCount:I

    if-eqz p4, :cond_2

    invoke-virtual {p4}, Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;->unconditionalCopy()Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;

    move-result-object p2

    goto :goto_1

    :cond_2
    const/4 p2, 0x0

    :goto_1
    aput-object p2, p1, v1

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

    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/eclipse/jdt/internal/compiler/flow/LoopingFlowContext;->recordNullReference(Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;ILorg/eclipse/jdt/internal/compiler/flow/FlowInfo;)V

    :goto_0
    return-void
.end method

.method public recordUsingNullReference(Lorg/eclipse/jdt/internal/compiler/lookup/Scope;Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;ILorg/eclipse/jdt/internal/compiler/flow/FlowInfo;)V
    .locals 7

    iget v0, p5, Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;->tagBits:I

    const/4 v1, 0x3

    and-int/2addr v0, v1

    if-nez v0, :cond_1e

    invoke-virtual {p5, p2}, Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;->isDefinitelyUnknown(Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_3

    :cond_0
    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/flow/FlowContext;->tagBits:I

    and-int/lit16 v0, v0, 0x1000

    or-int/2addr p4, v0

    const v0, -0xf001

    and-int/2addr v0, p4

    if-eq v0, v1, :cond_1a

    const/16 v1, 0x301

    const/16 v2, 0x200

    const/16 v3, 0x100

    const/4 v4, 0x1

    const/4 v5, 0x2

    if-eq v0, v1, :cond_c

    const/16 v1, 0x401

    if-eq v0, v1, :cond_c

    if-eq v0, v3, :cond_1

    const/16 v1, 0x101

    if-eq v0, v1, :cond_c

    if-eq v0, v2, :cond_1

    const/16 v1, 0x201

    if-eq v0, v1, :cond_c

    return-void

    :cond_1
    check-cast p3, Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    invoke-virtual {p5, p2}, Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;->isDefinitelyNonNull(Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;)Z

    move-result v1

    if-eqz v1, :cond_4

    if-ne v0, v2, :cond_3

    iget p4, p0, Lorg/eclipse/jdt/internal/compiler/flow/FlowContext;->tagBits:I

    and-int/lit16 p4, p4, 0x1000

    if-nez p4, :cond_2

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object p1

    invoke-virtual {p1, p2, p3}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->localVariableRedundantCheckOnNonNull(Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;)V

    :cond_2
    invoke-virtual {p5}, Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;->initsWhenFalse()Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;

    move-result-object p1

    invoke-virtual {p1, v5}, Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;->setReachMode(I)Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;

    goto/16 :goto_0

    :cond_3
    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object p1

    invoke-virtual {p1, p2, p3}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->localVariableNonNullComparedToNull(Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;)V

    invoke-virtual {p5}, Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;->initsWhenTrue()Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;

    move-result-object p1

    invoke-virtual {p1, v5}, Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;->setReachMode(I)Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;

    goto/16 :goto_0

    :cond_4
    invoke-virtual {p5, p2}, Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;->isDefinitelyNull(Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;)Z

    move-result v1

    if-eqz v1, :cond_7

    if-ne v0, v3, :cond_6

    iget p4, p0, Lorg/eclipse/jdt/internal/compiler/flow/FlowContext;->tagBits:I

    and-int/lit16 p4, p4, 0x1000

    if-nez p4, :cond_5

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object p1

    invoke-virtual {p1, p2, p3}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->localVariableRedundantCheckOnNull(Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;)V

    :cond_5
    invoke-virtual {p5}, Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;->initsWhenFalse()Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;

    move-result-object p1

    invoke-virtual {p1, v5}, Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;->setReachMode(I)Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;

    goto :goto_0

    :cond_6
    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object p1

    invoke-virtual {p1, p2, p3}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->localVariableNullComparedToNonNull(Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;)V

    invoke-virtual {p5}, Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;->initsWhenTrue()Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;

    move-result-object p1

    invoke-virtual {p1, v5}, Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;->setReachMode(I)Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;

    goto :goto_0

    :cond_7
    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/flow/LoopingFlowContext;->upstreamNullFlowInfo:Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;

    invoke-virtual {p1, p2}, Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;->isDefinitelyNonNull(Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;)Z

    move-result p1

    if-eqz p1, :cond_8

    invoke-virtual {p5, p2}, Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;->isPotentiallyNull(Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;)Z

    move-result p1

    if-nez p1, :cond_8

    invoke-virtual {p5, p2}, Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;->isPotentiallyUnknown(Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;)Z

    move-result p1

    if-nez p1, :cond_8

    invoke-virtual {p0, p2, p3, p4, p5}, Lorg/eclipse/jdt/internal/compiler/flow/LoopingFlowContext;->recordNullReference(Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;ILorg/eclipse/jdt/internal/compiler/flow/FlowInfo;)V

    invoke-virtual {p5, p2}, Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;->markAsDefinitelyNonNull(Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;)V

    goto :goto_0

    :cond_8
    invoke-virtual {p5, p2}, Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;->cannotBeDefinitelyNullOrNonNull(Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;)Z

    move-result p1

    if-eqz p1, :cond_9

    return-void

    :cond_9
    invoke-virtual {p5, p2}, Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;->isPotentiallyNonNull(Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;)Z

    move-result p1

    if-eqz p1, :cond_a

    and-int/lit16 p1, p4, -0x100

    or-int/2addr p1, v5

    invoke-virtual {p0, p2, p3, p1, p5}, Lorg/eclipse/jdt/internal/compiler/flow/LoopingFlowContext;->recordNullReference(Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;ILorg/eclipse/jdt/internal/compiler/flow/FlowInfo;)V

    goto :goto_0

    :cond_a
    invoke-virtual {p5, p2}, Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;->isPotentiallyNull(Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;)Z

    move-result p1

    if-eqz p1, :cond_b

    and-int/lit16 p1, p4, -0x100

    or-int/2addr p1, v4

    invoke-virtual {p0, p2, p3, p1, p5}, Lorg/eclipse/jdt/internal/compiler/flow/LoopingFlowContext;->recordNullReference(Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;ILorg/eclipse/jdt/internal/compiler/flow/FlowInfo;)V

    goto :goto_0

    :cond_b
    invoke-virtual {p0, p2, p3, p4, p5}, Lorg/eclipse/jdt/internal/compiler/flow/LoopingFlowContext;->recordNullReference(Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;ILorg/eclipse/jdt/internal/compiler/flow/FlowInfo;)V

    :goto_0
    return-void

    :cond_c
    check-cast p3, Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    invoke-virtual {p5, p2}, Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;->isPotentiallyNonNull(Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;)Z

    move-result v0

    if-nez v0, :cond_19

    invoke-virtual {p5, p2}, Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;->isPotentiallyUnknown(Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;)Z

    move-result v0

    if-nez v0, :cond_19

    invoke-virtual {p5, p2}, Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;->isProtectedNonNull(Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;)Z

    move-result v0

    if-eqz v0, :cond_d

    goto/16 :goto_2

    :cond_d
    invoke-virtual {p5, p2}, Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;->isDefinitelyNull(Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;)Z

    move-result v0

    const v1, -0xf100

    const/16 v6, 0x400

    if-eqz v0, :cond_15

    and-int v0, p4, v1

    if-eq v0, v3, :cond_12

    if-eq v0, v2, :cond_10

    const/16 v1, 0x300

    if-eq v0, v1, :cond_f

    if-eq v0, v6, :cond_e

    goto/16 :goto_1

    :cond_e
    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object p1

    invoke-virtual {p1, p2, p3}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->localVariableNullInstanceof(Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;)V

    return-void

    :cond_f
    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object p1

    invoke-virtual {p1, p2, p3}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->localVariableRedundantNullAssignment(Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;)V

    return-void

    :cond_10
    and-int/lit16 p4, p4, 0xff

    if-ne p4, v4, :cond_11

    iget p4, p3, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->implicitConversion:I

    and-int/2addr p4, v6

    if-eqz p4, :cond_11

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object p1

    invoke-virtual {p1, p2, p3}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->localVariableNullReference(Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;)V

    return-void

    :cond_11
    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object p1

    invoke-virtual {p1, p2, p3}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->localVariableNullComparedToNonNull(Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;)V

    invoke-virtual {p5}, Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;->initsWhenTrue()Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;

    move-result-object p1

    invoke-virtual {p1, v5}, Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;->setReachMode(I)Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;

    return-void

    :cond_12
    and-int/lit16 p4, p4, 0xff

    if-ne p4, v4, :cond_13

    iget p4, p3, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->implicitConversion:I

    and-int/2addr p4, v6

    if-eqz p4, :cond_13

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object p1

    invoke-virtual {p1, p2, p3}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->localVariableNullReference(Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;)V

    return-void

    :cond_13
    iget p4, p0, Lorg/eclipse/jdt/internal/compiler/flow/FlowContext;->tagBits:I

    and-int/lit16 p4, p4, 0x1000

    if-nez p4, :cond_14

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object p1

    invoke-virtual {p1, p2, p3}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->localVariableRedundantCheckOnNull(Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;)V

    :cond_14
    invoke-virtual {p5}, Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;->initsWhenFalse()Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;

    move-result-object p1

    invoke-virtual {p1, v5}, Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;->setReachMode(I)Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;

    return-void

    :cond_15
    invoke-virtual {p5, p2}, Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;->isPotentiallyNull(Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;)Z

    move-result v0

    if-eqz v0, :cond_18

    and-int v0, p4, v1

    if-eq v0, v3, :cond_17

    if-eq v0, v2, :cond_16

    goto :goto_1

    :cond_16
    and-int/lit16 v0, p4, 0xff

    if-ne v0, v4, :cond_18

    iget v0, p3, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->implicitConversion:I

    and-int/2addr v0, v6

    if-eqz v0, :cond_18

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object p1

    invoke-virtual {p1, p2, p3}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->localVariablePotentialNullReference(Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;)V

    return-void

    :cond_17
    and-int/lit16 v0, p4, 0xff

    if-ne v0, v4, :cond_18

    iget v0, p3, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->implicitConversion:I

    and-int/2addr v0, v6

    if-eqz v0, :cond_18

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object p1

    invoke-virtual {p1, p2, p3}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->localVariablePotentialNullReference(Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;)V

    return-void

    :cond_18
    :goto_1
    invoke-virtual {p0, p2, p3, p4, p5}, Lorg/eclipse/jdt/internal/compiler/flow/LoopingFlowContext;->recordNullReference(Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;ILorg/eclipse/jdt/internal/compiler/flow/FlowInfo;)V

    :cond_19
    :goto_2
    return-void

    :cond_1a
    invoke-virtual {p5, p2}, Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;->isDefinitelyNonNull(Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;)Z

    move-result v0

    if-eqz v0, :cond_1b

    return-void

    :cond_1b
    invoke-virtual {p5, p2}, Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;->isDefinitelyNull(Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;)Z

    move-result v0

    if-eqz v0, :cond_1c

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object p1

    invoke-virtual {p1, p2, p3}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->localVariableNullReference(Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;)V

    return-void

    :cond_1c
    invoke-virtual {p5, p2}, Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;->isPotentiallyNull(Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;)Z

    move-result v0

    if-eqz v0, :cond_1d

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object p1

    invoke-virtual {p1, p2, p3}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->localVariablePotentialNullReference(Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;)V

    return-void

    :cond_1d
    invoke-virtual {p0, p2, p3, p4, p5}, Lorg/eclipse/jdt/internal/compiler/flow/LoopingFlowContext;->recordNullReference(Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;ILorg/eclipse/jdt/internal/compiler/flow/FlowInfo;)V

    :cond_1e
    :goto_3
    return-void
.end method

.method public removeFinalAssignmentIfAny(Lorg/eclipse/jdt/internal/compiler/ast/Reference;)V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/flow/LoopingFlowContext;->assignCount:I

    if-lt v0, v1, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/flow/LoopingFlowContext;->finalAssignments:[Lorg/eclipse/jdt/internal/compiler/ast/Reference;

    aget-object v2, v1, v0

    if-ne v2, p1, :cond_1

    const/4 p1, 0x0

    aput-object p1, v1, v0

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/flow/LoopingFlowContext;->finalVariables:[Lorg/eclipse/jdt/internal/compiler/lookup/VariableBinding;

    aput-object p1, v1, v0

    return-void

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public simulateThrowAfterLoopBack(Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;)V
    .locals 3

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/flow/LoopingFlowContext;->escapingExceptionCatchSites:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-lt v1, v0, :cond_0

    const/4 p1, 0x0

    iput-object p1, p0, Lorg/eclipse/jdt/internal/compiler/flow/LoopingFlowContext;->escapingExceptionCatchSites:Ljava/util/ArrayList;

    goto :goto_1

    :cond_0
    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/flow/LoopingFlowContext;->escapingExceptionCatchSites:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/eclipse/jdt/internal/compiler/flow/LoopingFlowContext$EscapingExceptionCatchSite;

    invoke-virtual {v2, p1}, Lorg/eclipse/jdt/internal/compiler/flow/LoopingFlowContext$EscapingExceptionCatchSite;->simulateThrowAfterLoopBack(Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method
