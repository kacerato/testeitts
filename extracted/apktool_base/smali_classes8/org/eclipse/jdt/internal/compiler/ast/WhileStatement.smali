.class public Lorg/eclipse/jdt/internal/compiler/ast/WhileStatement;
.super Lorg/eclipse/jdt/internal/compiler/ast/Statement;
.source "SourceFile"


# instance fields
.field public action:Lorg/eclipse/jdt/internal/compiler/ast/Statement;

.field private breakLabel:Lorg/eclipse/jdt/internal/compiler/codegen/BranchLabel;

.field condIfTrueInitStateIndex:I

.field public condition:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

.field private continueLabel:Lorg/eclipse/jdt/internal/compiler/codegen/BranchLabel;

.field mergedInitStateIndex:I

.field preCondInitStateIndex:I


# direct methods
.method public constructor <init>(Lorg/eclipse/jdt/internal/compiler/ast/Expression;Lorg/eclipse/jdt/internal/compiler/ast/Statement;II)V
    .locals 1

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/compiler/ast/Statement;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/WhileStatement;->preCondInitStateIndex:I

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/WhileStatement;->condIfTrueInitStateIndex:I

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/WhileStatement;->mergedInitStateIndex:I

    iput-object p1, p0, Lorg/eclipse/jdt/internal/compiler/ast/WhileStatement;->condition:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    iput-object p2, p0, Lorg/eclipse/jdt/internal/compiler/ast/WhileStatement;->action:Lorg/eclipse/jdt/internal/compiler/ast/Statement;

    instance-of p1, p2, Lorg/eclipse/jdt/internal/compiler/ast/EmptyStatement;

    if-eqz p1, :cond_0

    iget p1, p2, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->bits:I

    or-int/lit8 p1, p1, 0x1

    iput p1, p2, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->bits:I

    :cond_0
    iput p3, p0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceStart:I

    iput p4, p0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceEnd:I

    return-void
.end method


# virtual methods
.method public analyseCode(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;Lorg/eclipse/jdt/internal/compiler/flow/FlowContext;Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;)Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;
    .locals 22

    move-object/from16 v8, p0

    move-object/from16 v9, p1

    move-object/from16 v10, p3

    new-instance v0, Lorg/eclipse/jdt/internal/compiler/codegen/BranchLabel;

    invoke-direct {v0}, Lorg/eclipse/jdt/internal/compiler/codegen/BranchLabel;-><init>()V

    iput-object v0, v8, Lorg/eclipse/jdt/internal/compiler/ast/WhileStatement;->breakLabel:Lorg/eclipse/jdt/internal/compiler/codegen/BranchLabel;

    new-instance v0, Lorg/eclipse/jdt/internal/compiler/codegen/BranchLabel;

    invoke-direct {v0}, Lorg/eclipse/jdt/internal/compiler/codegen/BranchLabel;-><init>()V

    iput-object v0, v8, Lorg/eclipse/jdt/internal/compiler/ast/WhileStatement;->continueLabel:Lorg/eclipse/jdt/internal/compiler/codegen/BranchLabel;

    invoke-virtual/range {p3 .. p3}, Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;->reachMode()I

    move-result v0

    and-int/lit8 v0, v0, 0x3

    if-eqz v0, :cond_0

    const/4 v13, 0x1

    goto :goto_0

    :cond_0
    const/4 v13, 0x0

    :goto_0
    iget-object v0, v8, Lorg/eclipse/jdt/internal/compiler/ast/WhileStatement;->condition:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    iget-object v0, v0, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->constant:Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    sget-object v1, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->NotAConstant:Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    if-eq v0, v1, :cond_1

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v14, 0x1

    goto :goto_1

    :cond_1
    const/4 v14, 0x0

    :goto_1
    if-eq v0, v1, :cond_2

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v15, 0x1

    goto :goto_2

    :cond_2
    const/4 v15, 0x0

    :goto_2
    iget-object v0, v8, Lorg/eclipse/jdt/internal/compiler/ast/WhileStatement;->condition:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->optimizedBooleanConstant()Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    move-result-object v0

    if-eq v0, v1, :cond_3

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_3

    const/4 v7, 0x1

    goto :goto_3

    :cond_3
    const/4 v7, 0x0

    :goto_3
    if-eq v0, v1, :cond_4

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_4

    const/4 v6, 0x1

    goto :goto_4

    :cond_4
    const/4 v6, 0x0

    :goto_4
    invoke-virtual/range {p1 .. p1}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->methodScope()Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;

    move-result-object v0

    invoke-virtual {v0, v10}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;->recordInitializationStates(Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;)I

    move-result v0

    iput v0, v8, Lorg/eclipse/jdt/internal/compiler/ast/WhileStatement;->preCondInitStateIndex:I

    invoke-virtual/range {p3 .. p3}, Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;->nullInfoLessUnconditionalCopy()Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;

    move-result-object v5

    iget-object v4, v8, Lorg/eclipse/jdt/internal/compiler/ast/WhileStatement;->condition:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    new-instance v3, Lorg/eclipse/jdt/internal/compiler/flow/LoopingFlowContext;

    const/16 v16, 0x0

    const/16 v17, 0x1

    const/16 v18, 0x0

    move-object v0, v3

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move-object v11, v3

    move-object/from16 v3, p0

    move-object v12, v4

    move-object/from16 v4, v18

    move-object/from16 v19, v5

    move-object/from16 v5, v16

    move/from16 v20, v6

    move-object/from16 v6, p1

    move/from16 v21, v7

    move/from16 v7, v17

    invoke-direct/range {v0 .. v7}, Lorg/eclipse/jdt/internal/compiler/flow/LoopingFlowContext;-><init>(Lorg/eclipse/jdt/internal/compiler/flow/FlowContext;Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;Lorg/eclipse/jdt/internal/compiler/codegen/BranchLabel;Lorg/eclipse/jdt/internal/compiler/codegen/BranchLabel;Lorg/eclipse/jdt/internal/compiler/lookup/Scope;Z)V

    move-object/from16 v0, v19

    invoke-virtual {v12, v9, v11, v0}, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->analyseCode(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;Lorg/eclipse/jdt/internal/compiler/flow/FlowContext;Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;)Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;

    move-result-object v12

    iget-object v0, v8, Lorg/eclipse/jdt/internal/compiler/ast/WhileStatement;->condition:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    invoke-virtual {v0, v9, v1, v10}, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->checkNPEbyUnboxing(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;Lorg/eclipse/jdt/internal/compiler/flow/FlowContext;Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;)V

    iget-object v0, v8, Lorg/eclipse/jdt/internal/compiler/ast/WhileStatement;->action:Lorg/eclipse/jdt/internal/compiler/ast/Statement;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/ast/Statement;->isEmptyBlock()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual/range {p1 .. p1}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->compilerOptions()Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;

    move-result-object v0

    iget-wide v2, v0, Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;->complianceLevel:J

    const-wide/32 v4, 0x2f0000

    cmp-long v0, v2, v4

    if-gtz v0, :cond_6

    :cond_5
    move/from16 v17, v14

    move/from16 v4, v21

    goto/16 :goto_9

    :cond_6
    new-instance v7, Lorg/eclipse/jdt/internal/compiler/flow/LoopingFlowContext;

    iget-object v4, v8, Lorg/eclipse/jdt/internal/compiler/ast/WhileStatement;->breakLabel:Lorg/eclipse/jdt/internal/compiler/codegen/BranchLabel;

    iget-object v5, v8, Lorg/eclipse/jdt/internal/compiler/ast/WhileStatement;->continueLabel:Lorg/eclipse/jdt/internal/compiler/codegen/BranchLabel;

    const/16 v16, 0x1

    move-object v0, v7

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move-object/from16 v3, p0

    move-object/from16 v6, p1

    move/from16 v17, v14

    move-object v14, v7

    move/from16 v7, v16

    invoke-direct/range {v0 .. v7}, Lorg/eclipse/jdt/internal/compiler/flow/LoopingFlowContext;-><init>(Lorg/eclipse/jdt/internal/compiler/flow/FlowContext;Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;Lorg/eclipse/jdt/internal/compiler/codegen/BranchLabel;Lorg/eclipse/jdt/internal/compiler/codegen/BranchLabel;Lorg/eclipse/jdt/internal/compiler/lookup/Scope;Z)V

    invoke-virtual {v14, v11}, Lorg/eclipse/jdt/internal/compiler/flow/FlowContext;->copyNullCheckedFieldsFrom(Lorg/eclipse/jdt/internal/compiler/flow/FlowContext;)V

    if-eqz v15, :cond_7

    sget-object v0, Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;->DEAD_END:Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;

    move/from16 v1, v20

    const/4 v2, 0x1

    goto :goto_5

    :cond_7
    invoke-virtual {v12}, Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;->initsWhenTrue()Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;

    move-result-object v0

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;->copy()Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;

    move-result-object v0

    move/from16 v1, v20

    const/4 v2, 0x1

    if-eqz v1, :cond_8

    invoke-virtual {v0, v2}, Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;->setReachMode(I)Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;

    :cond_8
    :goto_5
    invoke-virtual/range {p1 .. p1}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->methodScope()Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;

    move-result-object v3

    invoke-virtual {v12}, Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;->initsWhenTrue()Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;->recordInitializationStates(Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;)I

    move-result v3

    iput v3, v8, Lorg/eclipse/jdt/internal/compiler/ast/WhileStatement;->condIfTrueInitStateIndex:I

    iget-object v3, v8, Lorg/eclipse/jdt/internal/compiler/ast/WhileStatement;->action:Lorg/eclipse/jdt/internal/compiler/ast/Statement;

    invoke-virtual {v3, v0, v9, v13, v2}, Lorg/eclipse/jdt/internal/compiler/ast/Statement;->complainIfUnreachable(Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;IZ)I

    move-result v3

    const/4 v2, 0x2

    if-ge v3, v2, :cond_9

    iget-object v2, v8, Lorg/eclipse/jdt/internal/compiler/ast/WhileStatement;->action:Lorg/eclipse/jdt/internal/compiler/ast/Statement;

    invoke-virtual {v2, v9, v14, v0}, Lorg/eclipse/jdt/internal/compiler/ast/Statement;->analyseCode(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;Lorg/eclipse/jdt/internal/compiler/flow/FlowContext;Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;)Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;

    move-result-object v0

    :cond_9
    invoke-virtual/range {p3 .. p3}, Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;->copy()Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;

    move-result-object v2

    iget v3, v0, Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;->tagBits:I

    iget-object v4, v14, Lorg/eclipse/jdt/internal/compiler/flow/LoopingFlowContext;->initsOnContinue:Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;

    iget v4, v4, Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;->tagBits:I

    and-int/2addr v3, v4

    and-int/lit8 v4, v3, 0x3

    if-eqz v4, :cond_b

    const/4 v4, 0x1

    and-int/2addr v3, v4

    if-eqz v3, :cond_a

    const/4 v3, 0x0

    iput-object v3, v8, Lorg/eclipse/jdt/internal/compiler/ast/WhileStatement;->continueLabel:Lorg/eclipse/jdt/internal/compiler/codegen/BranchLabel;

    :cond_a
    invoke-virtual {v12}, Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;->initsWhenFalse()Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;->addInitializationsFrom(Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;)Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;

    iget-object v3, v14, Lorg/eclipse/jdt/internal/compiler/flow/LoopingFlowContext;->initsOnContinue:Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;

    invoke-virtual {v3}, Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;->unconditionalInits()Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;->mergedWith(Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;)Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;

    move-result-object v0

    const/4 v3, 0x0

    invoke-virtual {v11, v9, v0, v3}, Lorg/eclipse/jdt/internal/compiler/flow/LoopingFlowContext;->complainOnDeferredNullChecks(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;Z)V

    invoke-virtual {v14, v9, v0, v3}, Lorg/eclipse/jdt/internal/compiler/flow/LoopingFlowContext;->complainOnDeferredNullChecks(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;Z)V

    goto :goto_6

    :cond_b
    invoke-virtual {v11, v9, v12}, Lorg/eclipse/jdt/internal/compiler/flow/LoopingFlowContext;->complainOnDeferredFinalChecks(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;)V

    iget-object v3, v14, Lorg/eclipse/jdt/internal/compiler/flow/LoopingFlowContext;->initsOnContinue:Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;

    invoke-virtual {v3}, Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;->unconditionalInits()Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;->mergedWith(Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;)Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;

    move-result-object v0

    invoke-virtual {v11, v9, v0}, Lorg/eclipse/jdt/internal/compiler/flow/LoopingFlowContext;->complainOnDeferredNullChecks(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;)V

    invoke-virtual {v14, v9, v0}, Lorg/eclipse/jdt/internal/compiler/flow/LoopingFlowContext;->complainOnDeferredFinalChecks(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;)V

    invoke-virtual {v14, v9, v0}, Lorg/eclipse/jdt/internal/compiler/flow/LoopingFlowContext;->complainOnDeferredNullChecks(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;)V

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;->unconditionalInits()Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;->addPotentialInitializationsFrom(Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;)Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;

    move-result-object v3

    invoke-virtual {v12}, Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;->initsWhenFalse()Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;->addInitializationsFrom(Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;)Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;

    :goto_6
    invoke-virtual {v14}, Lorg/eclipse/jdt/internal/compiler/flow/LoopingFlowContext;->hasEscapingExceptions()Z

    move-result v3

    if-eqz v3, :cond_d

    invoke-virtual/range {p3 .. p3}, Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;->copy()Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;

    move-result-object v3

    iget-object v4, v8, Lorg/eclipse/jdt/internal/compiler/ast/WhileStatement;->continueLabel:Lorg/eclipse/jdt/internal/compiler/codegen/BranchLabel;

    if-eqz v4, :cond_c

    invoke-virtual {v3}, Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;->unconditionalCopy()Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;

    move-result-object v4

    invoke-virtual {v4, v0}, Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;->addNullInfoFrom(Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;)Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;

    move-result-object v0

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;->unconditionalInits()Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;

    move-result-object v0

    invoke-virtual {v3, v0}, Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;->mergedWith(Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;)Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;

    move-result-object v3

    :cond_c
    invoke-virtual {v14, v3}, Lorg/eclipse/jdt/internal/compiler/flow/LoopingFlowContext;->simulateThrowAfterLoopBack(Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;)V

    :cond_d
    iget-object v0, v14, Lorg/eclipse/jdt/internal/compiler/flow/SwitchFlowContext;->initsOnBreak:Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;

    iget v3, v0, Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;->tagBits:I

    and-int/lit8 v3, v3, 0x3

    if-eqz v3, :cond_e

    :goto_7
    const/4 v3, 0x1

    goto :goto_8

    :cond_e
    invoke-virtual {v10, v0}, Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;->addInitializationsFrom(Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;)Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;

    move-result-object v0

    goto :goto_7

    :goto_8
    xor-int/lit8 v3, v17, 0x1

    move/from16 v4, v21

    invoke-static {v0, v4, v2, v1, v3}, Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;->mergedOptimizedBranches(Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;ZLorg/eclipse/jdt/internal/compiler/flow/FlowInfo;ZZ)Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;

    move-result-object v0

    invoke-virtual/range {p1 .. p1}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->methodScope()Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;->recordInitializationStates(Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;)I

    move-result v1

    iput v1, v8, Lorg/eclipse/jdt/internal/compiler/ast/WhileStatement;->mergedInitStateIndex:I

    return-object v0

    :goto_9
    invoke-virtual {v11, v9, v12}, Lorg/eclipse/jdt/internal/compiler/flow/LoopingFlowContext;->complainOnDeferredFinalChecks(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;)V

    invoke-virtual {v12}, Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;->unconditionalInits()Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;

    move-result-object v0

    invoke-virtual {v11, v9, v0}, Lorg/eclipse/jdt/internal/compiler/flow/LoopingFlowContext;->complainOnDeferredNullChecks(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;)V

    if-eqz v17, :cond_f

    sget-object v0, Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;->DEAD_END:Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;

    return-object v0

    :cond_f
    invoke-virtual/range {p3 .. p3}, Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;->copy()Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;

    move-result-object v0

    invoke-virtual {v12}, Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;->initsWhenFalse()Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;->addInitializationsFrom(Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;)Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;

    move-result-object v0

    if-eqz v4, :cond_10

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;->setReachMode(I)Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;

    :cond_10
    invoke-virtual/range {p1 .. p1}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->methodScope()Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;->recordInitializationStates(Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;)I

    move-result v1

    iput v1, v8, Lorg/eclipse/jdt/internal/compiler/ast/WhileStatement;->mergedInitStateIndex:I

    return-object v0
.end method

.method public completesByContinue()Z
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/WhileStatement;->action:Lorg/eclipse/jdt/internal/compiler/ast/Statement;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/ast/Statement;->continuesAtOuterLabel()Z

    move-result v0

    return v0
.end method

.method public doesNotCompleteNormally()Z
    .locals 5

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/WhileStatement;->condition:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    iget-object v0, v0, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->constant:Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    sget-object v3, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->NotAConstant:Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    if-eq v0, v3, :cond_0

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    move v0, v1

    goto :goto_0

    :cond_1
    move v0, v2

    :goto_0
    iget-object v3, p0, Lorg/eclipse/jdt/internal/compiler/ast/WhileStatement;->condition:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    invoke-virtual {v3}, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->optimizedBooleanConstant()Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    move-result-object v3

    if-nez v3, :cond_2

    :goto_1
    move v3, v2

    goto :goto_2

    :cond_2
    sget-object v4, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->NotAConstant:Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    if-eq v3, v4, :cond_3

    invoke-virtual {v3}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_1

    :cond_3
    move v3, v1

    :goto_2
    if-nez v0, :cond_4

    if-eqz v3, :cond_5

    :cond_4
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/WhileStatement;->action:Lorg/eclipse/jdt/internal/compiler/ast/Statement;

    if-eqz v0, :cond_6

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lorg/eclipse/jdt/internal/compiler/ast/Statement;->breaksOut([C)Z

    move-result v0

    if-nez v0, :cond_5

    goto :goto_3

    :cond_5
    return v1

    :cond_6
    :goto_3
    return v2
.end method

.method public generateCode(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;)V
    .locals 10

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->bits:I

    const/high16 v1, -0x80000000

    and-int/2addr v0, v1

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget v0, p2, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->position:I

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/ast/WhileStatement;->condition:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->optimizedBooleanConstant()Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    move-result-object v1

    sget-object v2, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->NotAConstant:Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    const/4 v3, -0x1

    if-eq v1, v2, :cond_2

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/ast/WhileStatement;->condition:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, p2, v2}, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->generateCode(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;Z)V

    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/ast/WhileStatement;->mergedInitStateIndex:I

    if-eq v1, v3, :cond_1

    invoke-virtual {p2, p1, v1}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->removeNotDefinitelyAssignedVariables(Lorg/eclipse/jdt/internal/compiler/lookup/Scope;I)V

    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/ast/WhileStatement;->mergedInitStateIndex:I

    invoke-virtual {p2, p1, v1}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->addDefinitelyAssignedVariables(Lorg/eclipse/jdt/internal/compiler/lookup/Scope;I)V

    :cond_1
    iget p1, p0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceStart:I

    invoke-virtual {p2, v0, p1}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->recordPositionsFrom(II)V

    return-void

    :cond_2
    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/ast/WhileStatement;->breakLabel:Lorg/eclipse/jdt/internal/compiler/codegen/BranchLabel;

    invoke-virtual {v1, p2}, Lorg/eclipse/jdt/internal/compiler/codegen/BranchLabel;->initialize(Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;)V

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/ast/WhileStatement;->continueLabel:Lorg/eclipse/jdt/internal/compiler/codegen/BranchLabel;

    if-nez v1, :cond_3

    iget-object v4, p0, Lorg/eclipse/jdt/internal/compiler/ast/WhileStatement;->condition:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    iget-object v1, v4, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->constant:Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    if-ne v1, v2, :cond_5

    iget-object v8, p0, Lorg/eclipse/jdt/internal/compiler/ast/WhileStatement;->breakLabel:Lorg/eclipse/jdt/internal/compiler/codegen/BranchLabel;

    const/4 v9, 0x1

    const/4 v7, 0x0

    move-object v5, p1

    move-object v6, p2

    invoke-virtual/range {v4 .. v9}, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->generateOptimizedBoolean(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;Lorg/eclipse/jdt/internal/compiler/codegen/BranchLabel;Lorg/eclipse/jdt/internal/compiler/codegen/BranchLabel;Z)V

    goto :goto_0

    :cond_3
    invoke-virtual {v1, p2}, Lorg/eclipse/jdt/internal/compiler/codegen/BranchLabel;->initialize(Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;)V

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/ast/WhileStatement;->condition:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    iget-object v1, v1, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->constant:Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    if-eq v1, v2, :cond_4

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_5

    :cond_4
    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/ast/WhileStatement;->action:Lorg/eclipse/jdt/internal/compiler/ast/Statement;

    if-eqz v1, :cond_5

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/compiler/ast/Statement;->isEmptyBlock()Z

    move-result v1

    if-nez v1, :cond_5

    iget v1, p2, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->position:I

    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/ast/WhileStatement;->continueLabel:Lorg/eclipse/jdt/internal/compiler/codegen/BranchLabel;

    invoke-virtual {p2, v2}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->goto_(Lorg/eclipse/jdt/internal/compiler/codegen/BranchLabel;)V

    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/ast/WhileStatement;->condition:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    iget v2, v2, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceStart:I

    invoke-virtual {p2, v1, v2}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->recordPositionsFrom(II)V

    :cond_5
    :goto_0
    new-instance v7, Lorg/eclipse/jdt/internal/compiler/codegen/BranchLabel;

    invoke-direct {v7, p2}, Lorg/eclipse/jdt/internal/compiler/codegen/BranchLabel;-><init>(Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;)V

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/ast/WhileStatement;->action:Lorg/eclipse/jdt/internal/compiler/ast/Statement;

    if-eqz v1, :cond_7

    iget v1, v7, Lorg/eclipse/jdt/internal/compiler/codegen/BranchLabel;->tagBits:I

    or-int/lit8 v1, v1, 0x2

    iput v1, v7, Lorg/eclipse/jdt/internal/compiler/codegen/BranchLabel;->tagBits:I

    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/ast/WhileStatement;->condIfTrueInitStateIndex:I

    if-eq v1, v3, :cond_6

    invoke-virtual {p2, p1, v1}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->addDefinitelyAssignedVariables(Lorg/eclipse/jdt/internal/compiler/lookup/Scope;I)V

    :cond_6
    invoke-virtual {v7}, Lorg/eclipse/jdt/internal/compiler/codegen/BranchLabel;->place()V

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/ast/WhileStatement;->action:Lorg/eclipse/jdt/internal/compiler/ast/Statement;

    invoke-virtual {v1, p1, p2}, Lorg/eclipse/jdt/internal/compiler/ast/Statement;->generateCode(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;)V

    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/ast/WhileStatement;->preCondInitStateIndex:I

    if-eq v1, v3, :cond_8

    invoke-virtual {p2, p1, v1}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->removeNotDefinitelyAssignedVariables(Lorg/eclipse/jdt/internal/compiler/lookup/Scope;I)V

    goto :goto_1

    :cond_7
    invoke-virtual {v7}, Lorg/eclipse/jdt/internal/compiler/codegen/BranchLabel;->place()V

    :cond_8
    :goto_1
    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/ast/WhileStatement;->continueLabel:Lorg/eclipse/jdt/internal/compiler/codegen/BranchLabel;

    if-eqz v1, :cond_9

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/compiler/codegen/BranchLabel;->place()V

    iget-object v4, p0, Lorg/eclipse/jdt/internal/compiler/ast/WhileStatement;->condition:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    const/4 v8, 0x0

    const/4 v9, 0x1

    move-object v5, p1

    move-object v6, p2

    invoke-virtual/range {v4 .. v9}, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->generateOptimizedBoolean(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;Lorg/eclipse/jdt/internal/compiler/codegen/BranchLabel;Lorg/eclipse/jdt/internal/compiler/codegen/BranchLabel;Z)V

    :cond_9
    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/ast/WhileStatement;->mergedInitStateIndex:I

    if-eq v1, v3, :cond_a

    invoke-virtual {p2, p1, v1}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->removeNotDefinitelyAssignedVariables(Lorg/eclipse/jdt/internal/compiler/lookup/Scope;I)V

    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/ast/WhileStatement;->mergedInitStateIndex:I

    invoke-virtual {p2, p1, v1}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->addDefinitelyAssignedVariables(Lorg/eclipse/jdt/internal/compiler/lookup/Scope;I)V

    :cond_a
    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/ast/WhileStatement;->breakLabel:Lorg/eclipse/jdt/internal/compiler/codegen/BranchLabel;

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/codegen/BranchLabel;->place()V

    iget p1, p0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceStart:I

    invoke-virtual {p2, v0, p1}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->recordPositionsFrom(II)V

    return-void
.end method

.method public printStatement(ILjava/lang/StringBuffer;)Ljava/lang/StringBuffer;
    .locals 2

    invoke-static {p1, p2}, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->printIndent(ILjava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "while ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/WhileStatement;->condition:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p2}, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->printExpression(ILjava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    move-result-object v0

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/WhileStatement;->action:Lorg/eclipse/jdt/internal/compiler/ast/Statement;

    if-nez v0, :cond_0

    const/16 p1, 0x3b

    invoke-virtual {p2, p1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_0

    :cond_0
    add-int/lit8 p1, p1, 0x1

    invoke-virtual {v0, p1, p2}, Lorg/eclipse/jdt/internal/compiler/ast/Statement;->printStatement(ILjava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    :goto_0
    return-object p2
.end method

.method public resolve(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;)V
    .locals 2

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/WhileStatement;->condition:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    sget-object v1, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->BOOLEAN:Lorg/eclipse/jdt/internal/compiler/lookup/BaseTypeBinding;

    invoke-virtual {v0, p1, v1}, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->resolveTypeExpecting(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v0

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/ast/WhileStatement;->condition:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    invoke-virtual {v1, p1, v0, v0}, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->computeConversion(Lorg/eclipse/jdt/internal/compiler/lookup/Scope;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)V

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/WhileStatement;->action:Lorg/eclipse/jdt/internal/compiler/ast/Statement;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lorg/eclipse/jdt/internal/compiler/ast/Statement;->resolve(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;)V

    :cond_0
    return-void
.end method

.method public traverse(Lorg/eclipse/jdt/internal/compiler/ASTVisitor;Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;)V
    .locals 1

    invoke-virtual {p1, p0, p2}, Lorg/eclipse/jdt/internal/compiler/ASTVisitor;->visit(Lorg/eclipse/jdt/internal/compiler/ast/WhileStatement;Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/WhileStatement;->condition:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    invoke-virtual {v0, p1, p2}, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->traverse(Lorg/eclipse/jdt/internal/compiler/ASTVisitor;Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;)V

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/WhileStatement;->action:Lorg/eclipse/jdt/internal/compiler/ast/Statement;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->traverse(Lorg/eclipse/jdt/internal/compiler/ASTVisitor;Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;)V

    :cond_0
    invoke-virtual {p1, p0, p2}, Lorg/eclipse/jdt/internal/compiler/ASTVisitor;->endVisit(Lorg/eclipse/jdt/internal/compiler/ast/WhileStatement;Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;)V

    return-void
.end method
