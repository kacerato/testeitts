.class public Lorg/eclipse/jdt/internal/compiler/ast/ForStatement;
.super Lorg/eclipse/jdt/internal/compiler/ast/Statement;
.source "SourceFile"


# instance fields
.field public action:Lorg/eclipse/jdt/internal/compiler/ast/Statement;

.field private breakLabel:Lorg/eclipse/jdt/internal/compiler/codegen/BranchLabel;

.field condIfTrueInitStateIndex:I

.field public condition:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

.field private continueLabel:Lorg/eclipse/jdt/internal/compiler/codegen/BranchLabel;

.field public increments:[Lorg/eclipse/jdt/internal/compiler/ast/Statement;

.field public initializations:[Lorg/eclipse/jdt/internal/compiler/ast/Statement;

.field mergedInitStateIndex:I

.field preCondInitStateIndex:I

.field preIncrementsInitStateIndex:I

.field public scope:Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;


# direct methods
.method public constructor <init>([Lorg/eclipse/jdt/internal/compiler/ast/Statement;Lorg/eclipse/jdt/internal/compiler/ast/Expression;[Lorg/eclipse/jdt/internal/compiler/ast/Statement;Lorg/eclipse/jdt/internal/compiler/ast/Statement;ZII)V
    .locals 1

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/compiler/ast/Statement;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/ForStatement;->preCondInitStateIndex:I

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/ForStatement;->preIncrementsInitStateIndex:I

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/ForStatement;->condIfTrueInitStateIndex:I

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/ForStatement;->mergedInitStateIndex:I

    iput p6, p0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceStart:I

    iput p7, p0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceEnd:I

    iput-object p1, p0, Lorg/eclipse/jdt/internal/compiler/ast/ForStatement;->initializations:[Lorg/eclipse/jdt/internal/compiler/ast/Statement;

    iput-object p2, p0, Lorg/eclipse/jdt/internal/compiler/ast/ForStatement;->condition:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    iput-object p3, p0, Lorg/eclipse/jdt/internal/compiler/ast/ForStatement;->increments:[Lorg/eclipse/jdt/internal/compiler/ast/Statement;

    iput-object p4, p0, Lorg/eclipse/jdt/internal/compiler/ast/ForStatement;->action:Lorg/eclipse/jdt/internal/compiler/ast/Statement;

    instance-of p1, p4, Lorg/eclipse/jdt/internal/compiler/ast/EmptyStatement;

    if-eqz p1, :cond_0

    iget p1, p4, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->bits:I

    or-int/lit8 p1, p1, 0x1

    iput p1, p4, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->bits:I

    :cond_0
    if-eqz p5, :cond_1

    iget p1, p0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->bits:I

    const/high16 p2, 0x20000000

    or-int/2addr p1, p2

    iput p1, p0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->bits:I

    :cond_1
    return-void
.end method


# virtual methods
.method public analyseCode(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;Lorg/eclipse/jdt/internal/compiler/flow/FlowContext;Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;)Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;
    .locals 27

    move-object/from16 v8, p0

    move-object/from16 v9, p1

    move-object/from16 v10, p2

    new-instance v0, Lorg/eclipse/jdt/internal/compiler/codegen/BranchLabel;

    invoke-direct {v0}, Lorg/eclipse/jdt/internal/compiler/codegen/BranchLabel;-><init>()V

    iput-object v0, v8, Lorg/eclipse/jdt/internal/compiler/ast/ForStatement;->breakLabel:Lorg/eclipse/jdt/internal/compiler/codegen/BranchLabel;

    new-instance v0, Lorg/eclipse/jdt/internal/compiler/codegen/BranchLabel;

    invoke-direct {v0}, Lorg/eclipse/jdt/internal/compiler/codegen/BranchLabel;-><init>()V

    iput-object v0, v8, Lorg/eclipse/jdt/internal/compiler/ast/ForStatement;->continueLabel:Lorg/eclipse/jdt/internal/compiler/codegen/BranchLabel;

    invoke-virtual/range {p3 .. p3}, Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;->reachMode()I

    move-result v0

    and-int/lit8 v0, v0, 0x3

    if-eqz v0, :cond_0

    const/4 v13, 0x1

    goto :goto_0

    :cond_0
    const/4 v13, 0x0

    :goto_0
    iget-object v0, v8, Lorg/eclipse/jdt/internal/compiler/ast/ForStatement;->initializations:[Lorg/eclipse/jdt/internal/compiler/ast/Statement;

    if-eqz v0, :cond_2

    array-length v0, v0

    move-object/from16 v1, p3

    const/4 v2, 0x0

    :goto_1
    if-lt v2, v0, :cond_1

    move-object v14, v1

    goto :goto_2

    :cond_1
    iget-object v3, v8, Lorg/eclipse/jdt/internal/compiler/ast/ForStatement;->initializations:[Lorg/eclipse/jdt/internal/compiler/ast/Statement;

    aget-object v3, v3, v2

    iget-object v4, v8, Lorg/eclipse/jdt/internal/compiler/ast/ForStatement;->scope:Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;

    invoke-virtual {v3, v4, v10, v1}, Lorg/eclipse/jdt/internal/compiler/ast/Statement;->analyseCode(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;Lorg/eclipse/jdt/internal/compiler/flow/FlowContext;Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;)Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;

    move-result-object v1

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    move-object/from16 v14, p3

    :goto_2
    invoke-virtual/range {p1 .. p1}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->methodScope()Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;

    move-result-object v0

    invoke-virtual {v0, v14}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;->recordInitializationStates(Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;)I

    move-result v0

    iput v0, v8, Lorg/eclipse/jdt/internal/compiler/ast/ForStatement;->preCondInitStateIndex:I

    iget-object v0, v8, Lorg/eclipse/jdt/internal/compiler/ast/ForStatement;->condition:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    if-nez v0, :cond_3

    const/4 v0, 0x0

    goto :goto_3

    :cond_3
    iget-object v0, v0, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->constant:Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    :goto_3
    if-eqz v0, :cond_5

    sget-object v1, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->NotAConstant:Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    if-eq v0, v1, :cond_4

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_5

    :cond_4
    const/16 v16, 0x0

    goto :goto_4

    :cond_5
    const/16 v16, 0x1

    :goto_4
    if-eqz v0, :cond_6

    sget-object v1, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->NotAConstant:Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    if-eq v0, v1, :cond_6

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_6

    const/16 v17, 0x1

    goto :goto_5

    :cond_6
    const/16 v17, 0x0

    :goto_5
    iget-object v0, v8, Lorg/eclipse/jdt/internal/compiler/ast/ForStatement;->condition:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    if-nez v0, :cond_7

    const/4 v0, 0x0

    goto :goto_6

    :cond_7
    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->optimizedBooleanConstant()Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    move-result-object v0

    :goto_6
    if-eqz v0, :cond_9

    sget-object v1, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->NotAConstant:Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    if-eq v0, v1, :cond_8

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_9

    :cond_8
    const/4 v7, 0x0

    goto :goto_7

    :cond_9
    const/4 v7, 0x1

    :goto_7
    if-eqz v0, :cond_a

    sget-object v1, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->NotAConstant:Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    if-eq v0, v1, :cond_a

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_a

    const/4 v6, 0x1

    goto :goto_8

    :cond_a
    const/4 v6, 0x0

    :goto_8
    invoke-virtual {v14}, Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;->nullInfoLessUnconditionalCopy()Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;

    move-result-object v5

    iget-object v4, v8, Lorg/eclipse/jdt/internal/compiler/ast/ForStatement;->condition:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    if-eqz v4, :cond_b

    if-nez v16, :cond_b

    iget-object v3, v8, Lorg/eclipse/jdt/internal/compiler/ast/ForStatement;->scope:Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;

    new-instance v2, Lorg/eclipse/jdt/internal/compiler/flow/LoopingFlowContext;

    iget-object v1, v8, Lorg/eclipse/jdt/internal/compiler/ast/ForStatement;->scope:Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;

    const/16 v18, 0x1

    const/16 v19, 0x0

    const/16 v20, 0x0

    move-object v0, v2

    move-object/from16 v21, v1

    move-object/from16 v1, p2

    move-object v11, v2

    move-object v2, v14

    move-object v15, v3

    move-object/from16 v3, p0

    move-object v12, v4

    move-object/from16 v4, v19

    move-object/from16 v22, v5

    move-object/from16 v5, v20

    move/from16 v23, v6

    move-object/from16 v6, v21

    move/from16 v24, v7

    move/from16 v7, v18

    invoke-direct/range {v0 .. v7}, Lorg/eclipse/jdt/internal/compiler/flow/LoopingFlowContext;-><init>(Lorg/eclipse/jdt/internal/compiler/flow/FlowContext;Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;Lorg/eclipse/jdt/internal/compiler/codegen/BranchLabel;Lorg/eclipse/jdt/internal/compiler/codegen/BranchLabel;Lorg/eclipse/jdt/internal/compiler/lookup/Scope;Z)V

    move-object/from16 v0, v22

    invoke-virtual {v12, v15, v11, v0}, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->analyseCode(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;Lorg/eclipse/jdt/internal/compiler/flow/FlowContext;Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;)Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;

    move-result-object v5

    iget-object v0, v8, Lorg/eclipse/jdt/internal/compiler/ast/ForStatement;->condition:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    invoke-virtual {v0, v9, v10, v14}, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->checkNPEbyUnboxing(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;Lorg/eclipse/jdt/internal/compiler/flow/FlowContext;Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;)V

    move-object v12, v5

    goto :goto_9

    :cond_b
    move-object v0, v5

    move/from16 v23, v6

    move/from16 v24, v7

    move-object v12, v0

    const/4 v11, 0x0

    :goto_9
    iget-object v0, v8, Lorg/eclipse/jdt/internal/compiler/ast/ForStatement;->action:Lorg/eclipse/jdt/internal/compiler/ast/Statement;

    if-eqz v0, :cond_c

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/ast/Statement;->isEmptyBlock()Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-virtual/range {p1 .. p1}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->compilerOptions()Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;

    move-result-object v0

    iget-wide v0, v0, Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;->complianceLevel:J

    const-wide/32 v2, 0x2f0000

    cmp-long v0, v0, v2

    if-gtz v0, :cond_d

    :cond_c
    move/from16 v7, v23

    goto/16 :goto_c

    :cond_d
    new-instance v15, Lorg/eclipse/jdt/internal/compiler/flow/LoopingFlowContext;

    iget-object v4, v8, Lorg/eclipse/jdt/internal/compiler/ast/ForStatement;->breakLabel:Lorg/eclipse/jdt/internal/compiler/codegen/BranchLabel;

    iget-object v5, v8, Lorg/eclipse/jdt/internal/compiler/ast/ForStatement;->continueLabel:Lorg/eclipse/jdt/internal/compiler/codegen/BranchLabel;

    iget-object v6, v8, Lorg/eclipse/jdt/internal/compiler/ast/ForStatement;->scope:Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;

    const/4 v7, 0x1

    move-object v0, v15

    move-object/from16 v1, p2

    move-object v2, v14

    move-object/from16 v3, p0

    invoke-direct/range {v0 .. v7}, Lorg/eclipse/jdt/internal/compiler/flow/LoopingFlowContext;-><init>(Lorg/eclipse/jdt/internal/compiler/flow/FlowContext;Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;Lorg/eclipse/jdt/internal/compiler/codegen/BranchLabel;Lorg/eclipse/jdt/internal/compiler/codegen/BranchLabel;Lorg/eclipse/jdt/internal/compiler/lookup/Scope;Z)V

    invoke-virtual {v12}, Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;->initsWhenTrue()Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;

    move-result-object v0

    invoke-virtual/range {p1 .. p1}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->methodScope()Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;->recordInitializationStates(Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;)I

    move-result v1

    iput v1, v8, Lorg/eclipse/jdt/internal/compiler/ast/ForStatement;->condIfTrueInitStateIndex:I

    if-eqz v17, :cond_e

    sget-object v0, Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;->DEAD_END:Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;

    move/from16 v7, v23

    const/4 v1, 0x1

    goto :goto_a

    :cond_e
    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;->unconditionalCopy()Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;

    move-result-object v0

    move/from16 v7, v23

    const/4 v1, 0x1

    if-eqz v7, :cond_f

    invoke-virtual {v0, v1}, Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;->setReachMode(I)Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;

    :cond_f
    :goto_a
    iget-object v2, v8, Lorg/eclipse/jdt/internal/compiler/ast/ForStatement;->action:Lorg/eclipse/jdt/internal/compiler/ast/Statement;

    iget-object v3, v8, Lorg/eclipse/jdt/internal/compiler/ast/ForStatement;->scope:Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;

    invoke-virtual {v2, v0, v3, v13, v1}, Lorg/eclipse/jdt/internal/compiler/ast/Statement;->complainIfUnreachable(Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;IZ)I

    move-result v2

    const/4 v1, 0x2

    if-ge v2, v1, :cond_10

    iget-object v1, v8, Lorg/eclipse/jdt/internal/compiler/ast/ForStatement;->action:Lorg/eclipse/jdt/internal/compiler/ast/Statement;

    iget-object v2, v8, Lorg/eclipse/jdt/internal/compiler/ast/ForStatement;->scope:Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;

    invoke-virtual {v1, v2, v15, v0}, Lorg/eclipse/jdt/internal/compiler/ast/Statement;->analyseCode(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;Lorg/eclipse/jdt/internal/compiler/flow/FlowContext;Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;)Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;

    move-result-object v0

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;->unconditionalInits()Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;

    move-result-object v0

    :cond_10
    iget v1, v0, Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;->tagBits:I

    iget-object v2, v15, Lorg/eclipse/jdt/internal/compiler/flow/LoopingFlowContext;->initsOnContinue:Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;

    iget v2, v2, Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;->tagBits:I

    and-int/2addr v1, v2

    const/4 v2, 0x1

    and-int/2addr v1, v2

    if-eqz v1, :cond_11

    const/4 v1, 0x0

    iput-object v1, v8, Lorg/eclipse/jdt/internal/compiler/ast/ForStatement;->continueLabel:Lorg/eclipse/jdt/internal/compiler/codegen/BranchLabel;

    :goto_b
    move-object v6, v15

    move v15, v7

    move-object v7, v0

    goto :goto_d

    :cond_11
    if-eqz v11, :cond_12

    iget-object v1, v8, Lorg/eclipse/jdt/internal/compiler/ast/ForStatement;->scope:Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;

    invoke-virtual {v11, v1, v12}, Lorg/eclipse/jdt/internal/compiler/flow/LoopingFlowContext;->complainOnDeferredFinalChecks(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;)V

    :cond_12
    iget-object v1, v15, Lorg/eclipse/jdt/internal/compiler/flow/LoopingFlowContext;->initsOnContinue:Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;

    invoke-virtual {v0, v1}, Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;->mergedWith(Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;)Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;

    move-result-object v0

    iget-object v1, v8, Lorg/eclipse/jdt/internal/compiler/ast/ForStatement;->scope:Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;

    invoke-virtual {v15, v1, v0}, Lorg/eclipse/jdt/internal/compiler/flow/LoopingFlowContext;->complainOnDeferredFinalChecks(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;)V

    goto :goto_b

    :goto_c
    if-eqz v11, :cond_13

    iget-object v0, v8, Lorg/eclipse/jdt/internal/compiler/ast/ForStatement;->scope:Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;

    invoke-virtual {v11, v0, v12}, Lorg/eclipse/jdt/internal/compiler/flow/LoopingFlowContext;->complainOnDeferredFinalChecks(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;)V

    :cond_13
    if-eqz v16, :cond_15

    if-eqz v11, :cond_14

    invoke-virtual {v11, v9, v12}, Lorg/eclipse/jdt/internal/compiler/flow/LoopingFlowContext;->complainOnDeferredNullChecks(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;)V

    :cond_14
    sget-object v0, Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;->DEAD_END:Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;

    return-object v0

    :cond_15
    const/4 v15, 0x0

    if-eqz v17, :cond_16

    iput-object v15, v8, Lorg/eclipse/jdt/internal/compiler/ast/ForStatement;->continueLabel:Lorg/eclipse/jdt/internal/compiler/codegen/BranchLabel;

    :cond_16
    invoke-virtual {v12}, Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;->initsWhenTrue()Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;

    move-result-object v0

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;->unconditionalCopy()Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;

    move-result-object v17

    new-instance v18, Lorg/eclipse/jdt/internal/compiler/flow/LoopingFlowContext;

    iget-object v4, v8, Lorg/eclipse/jdt/internal/compiler/ast/ForStatement;->breakLabel:Lorg/eclipse/jdt/internal/compiler/codegen/BranchLabel;

    iget-object v5, v8, Lorg/eclipse/jdt/internal/compiler/ast/ForStatement;->continueLabel:Lorg/eclipse/jdt/internal/compiler/codegen/BranchLabel;

    iget-object v6, v8, Lorg/eclipse/jdt/internal/compiler/ast/ForStatement;->scope:Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;

    const/16 v19, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, p2

    move-object v2, v14

    move-object/from16 v3, p0

    move v15, v7

    move/from16 v7, v19

    invoke-direct/range {v0 .. v7}, Lorg/eclipse/jdt/internal/compiler/flow/LoopingFlowContext;-><init>(Lorg/eclipse/jdt/internal/compiler/flow/FlowContext;Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;Lorg/eclipse/jdt/internal/compiler/codegen/BranchLabel;Lorg/eclipse/jdt/internal/compiler/codegen/BranchLabel;Lorg/eclipse/jdt/internal/compiler/lookup/Scope;Z)V

    move-object/from16 v7, v17

    move-object/from16 v6, v18

    :goto_d
    invoke-virtual {v14}, Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;->copy()Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;

    move-result-object v5

    iget-object v0, v8, Lorg/eclipse/jdt/internal/compiler/ast/ForStatement;->continueLabel:Lorg/eclipse/jdt/internal/compiler/codegen/BranchLabel;

    if-eqz v0, :cond_19

    iget-object v0, v8, Lorg/eclipse/jdt/internal/compiler/ast/ForStatement;->increments:[Lorg/eclipse/jdt/internal/compiler/ast/Statement;

    if-eqz v0, :cond_18

    new-instance v13, Lorg/eclipse/jdt/internal/compiler/flow/LoopingFlowContext;

    iget-object v4, v8, Lorg/eclipse/jdt/internal/compiler/ast/ForStatement;->scope:Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;

    const/16 v17, 0x1

    const/16 v18, 0x0

    const/16 v19, 0x0

    move-object v0, v13

    move-object/from16 v1, p2

    move-object v2, v14

    move-object/from16 v3, p0

    move-object v10, v4

    move-object/from16 v4, v18

    move-object/from16 v25, v5

    move-object/from16 v5, v19

    move-object/from16 v26, v6

    move-object v6, v10

    move-object v10, v7

    move/from16 v7, v17

    invoke-direct/range {v0 .. v7}, Lorg/eclipse/jdt/internal/compiler/flow/LoopingFlowContext;-><init>(Lorg/eclipse/jdt/internal/compiler/flow/FlowContext;Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;Lorg/eclipse/jdt/internal/compiler/codegen/BranchLabel;Lorg/eclipse/jdt/internal/compiler/codegen/BranchLabel;Lorg/eclipse/jdt/internal/compiler/lookup/Scope;Z)V

    invoke-virtual/range {p1 .. p1}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->methodScope()Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;

    move-result-object v0

    invoke-virtual {v0, v10}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;->recordInitializationStates(Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;)I

    move-result v0

    iput v0, v8, Lorg/eclipse/jdt/internal/compiler/ast/ForStatement;->preIncrementsInitStateIndex:I

    iget-object v0, v8, Lorg/eclipse/jdt/internal/compiler/ast/ForStatement;->increments:[Lorg/eclipse/jdt/internal/compiler/ast/Statement;

    array-length v0, v0

    move-object v7, v10

    const/4 v1, 0x0

    :goto_e
    if-lt v1, v0, :cond_17

    iget-object v0, v8, Lorg/eclipse/jdt/internal/compiler/ast/ForStatement;->scope:Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;

    invoke-virtual {v7}, Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;->unconditionalInits()Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;

    move-result-object v7

    invoke-virtual {v13, v0, v7}, Lorg/eclipse/jdt/internal/compiler/flow/LoopingFlowContext;->complainOnDeferredFinalChecks(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;)V

    move-object/from16 v0, v25

    goto :goto_f

    :cond_17
    iget-object v2, v8, Lorg/eclipse/jdt/internal/compiler/ast/ForStatement;->increments:[Lorg/eclipse/jdt/internal/compiler/ast/Statement;

    aget-object v2, v2, v1

    iget-object v3, v8, Lorg/eclipse/jdt/internal/compiler/ast/ForStatement;->scope:Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;

    invoke-virtual {v2, v3, v13, v7}, Lorg/eclipse/jdt/internal/compiler/ast/Statement;->analyseCode(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;Lorg/eclipse/jdt/internal/compiler/flow/FlowContext;Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;)Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;

    move-result-object v7

    add-int/lit8 v1, v1, 0x1

    goto :goto_e

    :cond_18
    move-object/from16 v26, v6

    move-object v10, v7

    move-object v0, v5

    const/4 v13, 0x0

    :goto_f
    invoke-virtual {v0, v7}, Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;->addPotentialInitializationsFrom(Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;)Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;

    move-result-object v1

    invoke-virtual {v12}, Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;->initsWhenFalse()Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;->addInitializationsFrom(Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;)Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;

    const/4 v3, 0x0

    goto :goto_11

    :cond_19
    move-object v0, v5

    move-object/from16 v26, v6

    move-object v10, v7

    invoke-virtual {v12}, Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;->initsWhenFalse()Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;->addInitializationsFrom(Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;)Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;

    iget-object v1, v8, Lorg/eclipse/jdt/internal/compiler/ast/ForStatement;->increments:[Lorg/eclipse/jdt/internal/compiler/ast/Statement;

    if-eqz v1, :cond_1a

    if-nez v13, :cond_1a

    invoke-virtual/range {p1 .. p1}, Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object v1

    iget-object v2, v8, Lorg/eclipse/jdt/internal/compiler/ast/ForStatement;->increments:[Lorg/eclipse/jdt/internal/compiler/ast/Statement;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->fakeReachable(Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;)V

    goto :goto_10

    :cond_1a
    const/4 v3, 0x0

    :goto_10
    move-object v7, v10

    const/4 v13, 0x0

    :goto_11
    if-eqz v11, :cond_1b

    invoke-virtual {v11, v9, v7}, Lorg/eclipse/jdt/internal/compiler/flow/LoopingFlowContext;->complainOnDeferredNullChecks(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;)V

    :cond_1b
    move-object/from16 v1, v26

    invoke-virtual {v1, v9, v7}, Lorg/eclipse/jdt/internal/compiler/flow/LoopingFlowContext;->complainOnDeferredNullChecks(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;)V

    if-eqz v13, :cond_1c

    invoke-virtual {v13, v9, v7}, Lorg/eclipse/jdt/internal/compiler/flow/LoopingFlowContext;->complainOnDeferredNullChecks(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;)V

    :cond_1c
    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/compiler/flow/LoopingFlowContext;->hasEscapingExceptions()Z

    move-result v2

    if-eqz v2, :cond_1e

    invoke-virtual {v14}, Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;->copy()Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;

    move-result-object v2

    iget-object v4, v8, Lorg/eclipse/jdt/internal/compiler/ast/ForStatement;->continueLabel:Lorg/eclipse/jdt/internal/compiler/codegen/BranchLabel;

    if-eqz v4, :cond_1d

    invoke-virtual {v2}, Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;->unconditionalCopy()Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;

    move-result-object v4

    invoke-virtual {v4, v7}, Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;->addNullInfoFrom(Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;)Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;

    move-result-object v4

    invoke-virtual {v4}, Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;->unconditionalInits()Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;

    move-result-object v4

    invoke-virtual {v2, v4}, Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;->mergedWith(Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;)Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;

    move-result-object v2

    :cond_1d
    invoke-virtual {v1, v2}, Lorg/eclipse/jdt/internal/compiler/flow/LoopingFlowContext;->simulateThrowAfterLoopBack(Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;)V

    :cond_1e
    iget-object v1, v1, Lorg/eclipse/jdt/internal/compiler/flow/SwitchFlowContext;->initsOnBreak:Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;

    iget v2, v1, Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;->tagBits:I

    and-int/lit8 v2, v2, 0x3

    if-eqz v2, :cond_1f

    :goto_12
    const/4 v2, 0x1

    goto :goto_13

    :cond_1f
    invoke-virtual {v14, v1}, Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;->addInitializationsFrom(Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;)Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;

    move-result-object v1

    goto :goto_12

    :goto_13
    xor-int/lit8 v2, v16, 0x1

    move/from16 v12, v24

    invoke-static {v1, v12, v0, v15, v2}, Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;->mergedOptimizedBranches(Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;ZLorg/eclipse/jdt/internal/compiler/flow/FlowInfo;ZZ)Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;

    move-result-object v0

    iget-object v1, v8, Lorg/eclipse/jdt/internal/compiler/ast/ForStatement;->initializations:[Lorg/eclipse/jdt/internal/compiler/ast/Statement;

    if-eqz v1, :cond_22

    move v11, v3

    :goto_14
    iget-object v1, v8, Lorg/eclipse/jdt/internal/compiler/ast/ForStatement;->initializations:[Lorg/eclipse/jdt/internal/compiler/ast/Statement;

    array-length v2, v1

    if-lt v11, v2, :cond_20

    goto :goto_15

    :cond_20
    aget-object v1, v1, v11

    instance-of v2, v1, Lorg/eclipse/jdt/internal/compiler/ast/LocalDeclaration;

    if-eqz v2, :cond_21

    check-cast v1, Lorg/eclipse/jdt/internal/compiler/ast/LocalDeclaration;

    iget-object v1, v1, Lorg/eclipse/jdt/internal/compiler/ast/LocalDeclaration;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;

    invoke-virtual {v0, v1}, Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;->resetAssignmentInfo(Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;)V

    :cond_21
    add-int/lit8 v11, v11, 0x1

    goto :goto_14

    :cond_22
    :goto_15
    invoke-virtual/range {p1 .. p1}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->methodScope()Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;->recordInitializationStates(Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;)I

    move-result v1

    iput v1, v8, Lorg/eclipse/jdt/internal/compiler/ast/ForStatement;->mergedInitStateIndex:I

    return-object v0
.end method

.method public completesByContinue()Z
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/ForStatement;->action:Lorg/eclipse/jdt/internal/compiler/ast/Statement;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/ast/Statement;->continuesAtOuterLabel()Z

    move-result v0

    return v0
.end method

.method public doesNotCompleteNormally()Z
    .locals 6

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/ForStatement;->condition:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move-object v0, v1

    goto :goto_0

    :cond_0
    iget-object v0, v0, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->constant:Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    :goto_0
    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v0, :cond_2

    sget-object v4, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->NotAConstant:Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    if-eq v0, v4, :cond_1

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    move v0, v2

    goto :goto_1

    :cond_2
    move v0, v3

    :goto_1
    iget-object v4, p0, Lorg/eclipse/jdt/internal/compiler/ast/ForStatement;->condition:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    if-nez v4, :cond_3

    move-object v4, v1

    goto :goto_2

    :cond_3
    invoke-virtual {v4}, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->optimizedBooleanConstant()Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    move-result-object v4

    :goto_2
    if-nez v4, :cond_4

    :goto_3
    move v4, v3

    goto :goto_4

    :cond_4
    sget-object v5, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->NotAConstant:Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    if-eq v4, v5, :cond_5

    invoke-virtual {v4}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_5

    goto :goto_3

    :cond_5
    move v4, v2

    :goto_4
    if-nez v0, :cond_6

    if-eqz v4, :cond_7

    :cond_6
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/ForStatement;->action:Lorg/eclipse/jdt/internal/compiler/ast/Statement;

    if-eqz v0, :cond_8

    invoke-virtual {v0, v1}, Lorg/eclipse/jdt/internal/compiler/ast/Statement;->breaksOut([C)Z

    move-result v0

    if-nez v0, :cond_7

    goto :goto_5

    :cond_7
    return v2

    :cond_8
    :goto_5
    return v3
.end method

.method public generateCode(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;)V
    .locals 15

    move-object v0, p0

    move-object/from16 v1, p1

    move-object/from16 v8, p2

    iget v2, v0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->bits:I

    const/high16 v3, -0x80000000

    and-int/2addr v2, v3

    if-nez v2, :cond_0

    return-void

    :cond_0
    iget v9, v8, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->position:I

    iget-object v2, v0, Lorg/eclipse/jdt/internal/compiler/ast/ForStatement;->initializations:[Lorg/eclipse/jdt/internal/compiler/ast/Statement;

    const/4 v10, 0x0

    if-eqz v2, :cond_2

    array-length v2, v2

    move v3, v10

    :goto_0
    if-lt v3, v2, :cond_1

    goto :goto_1

    :cond_1
    iget-object v4, v0, Lorg/eclipse/jdt/internal/compiler/ast/ForStatement;->initializations:[Lorg/eclipse/jdt/internal/compiler/ast/Statement;

    aget-object v4, v4, v3

    iget-object v5, v0, Lorg/eclipse/jdt/internal/compiler/ast/ForStatement;->scope:Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;

    invoke-virtual {v4, v5, v8}, Lorg/eclipse/jdt/internal/compiler/ast/Statement;->generateCode(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    iget-object v2, v0, Lorg/eclipse/jdt/internal/compiler/ast/ForStatement;->condition:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    if-nez v2, :cond_3

    const/4 v2, 0x0

    goto :goto_2

    :cond_3
    invoke-virtual {v2}, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->optimizedBooleanConstant()Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    move-result-object v2

    :goto_2
    const/high16 v11, 0x20000000

    const/4 v12, -0x1

    if-eqz v2, :cond_6

    sget-object v3, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->NotAConstant:Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    if-eq v2, v3, :cond_6

    invoke-virtual {v2}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_6

    iget-object v2, v0, Lorg/eclipse/jdt/internal/compiler/ast/ForStatement;->condition:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    iget-object v3, v0, Lorg/eclipse/jdt/internal/compiler/ast/ForStatement;->scope:Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;

    invoke-virtual {v2, v3, v8, v10}, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->generateCode(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;Z)V

    iget v2, v0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->bits:I

    and-int/2addr v2, v11

    if-eqz v2, :cond_4

    iget-object v2, v0, Lorg/eclipse/jdt/internal/compiler/ast/ForStatement;->scope:Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;

    invoke-virtual {v8, v2}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->exitUserScope(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;)V

    :cond_4
    iget v2, v0, Lorg/eclipse/jdt/internal/compiler/ast/ForStatement;->mergedInitStateIndex:I

    if-eq v2, v12, :cond_5

    invoke-virtual {v8, v1, v2}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->removeNotDefinitelyAssignedVariables(Lorg/eclipse/jdt/internal/compiler/lookup/Scope;I)V

    iget v2, v0, Lorg/eclipse/jdt/internal/compiler/ast/ForStatement;->mergedInitStateIndex:I

    invoke-virtual {v8, v1, v2}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->addDefinitelyAssignedVariables(Lorg/eclipse/jdt/internal/compiler/lookup/Scope;I)V

    :cond_5
    iget v1, v0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceStart:I

    invoke-virtual {v8, v9, v1}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->recordPositionsFrom(II)V

    return-void

    :cond_6
    new-instance v13, Lorg/eclipse/jdt/internal/compiler/codegen/BranchLabel;

    invoke-direct {v13, v8}, Lorg/eclipse/jdt/internal/compiler/codegen/BranchLabel;-><init>(Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;)V

    iget v2, v13, Lorg/eclipse/jdt/internal/compiler/codegen/BranchLabel;->tagBits:I

    or-int/lit8 v2, v2, 0x2

    iput v2, v13, Lorg/eclipse/jdt/internal/compiler/codegen/BranchLabel;->tagBits:I

    new-instance v14, Lorg/eclipse/jdt/internal/compiler/codegen/BranchLabel;

    invoke-direct {v14, v8}, Lorg/eclipse/jdt/internal/compiler/codegen/BranchLabel;-><init>(Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;)V

    iget-object v2, v0, Lorg/eclipse/jdt/internal/compiler/ast/ForStatement;->breakLabel:Lorg/eclipse/jdt/internal/compiler/codegen/BranchLabel;

    invoke-virtual {v2, v8}, Lorg/eclipse/jdt/internal/compiler/codegen/BranchLabel;->initialize(Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;)V

    iget-object v2, v0, Lorg/eclipse/jdt/internal/compiler/ast/ForStatement;->continueLabel:Lorg/eclipse/jdt/internal/compiler/codegen/BranchLabel;

    if-nez v2, :cond_7

    invoke-virtual {v14}, Lorg/eclipse/jdt/internal/compiler/codegen/BranchLabel;->place()V

    iget-object v2, v0, Lorg/eclipse/jdt/internal/compiler/ast/ForStatement;->condition:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    if-eqz v2, :cond_a

    iget-object v3, v2, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->constant:Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    sget-object v4, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->NotAConstant:Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    if-ne v3, v4, :cond_a

    iget-object v3, v0, Lorg/eclipse/jdt/internal/compiler/ast/ForStatement;->scope:Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;

    iget-object v6, v0, Lorg/eclipse/jdt/internal/compiler/ast/ForStatement;->breakLabel:Lorg/eclipse/jdt/internal/compiler/codegen/BranchLabel;

    const/4 v7, 0x1

    const/4 v5, 0x0

    move-object/from16 v4, p2

    invoke-virtual/range {v2 .. v7}, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->generateOptimizedBoolean(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;Lorg/eclipse/jdt/internal/compiler/codegen/BranchLabel;Lorg/eclipse/jdt/internal/compiler/codegen/BranchLabel;Z)V

    goto :goto_3

    :cond_7
    invoke-virtual {v2, v8}, Lorg/eclipse/jdt/internal/compiler/codegen/BranchLabel;->initialize(Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;)V

    iget-object v2, v0, Lorg/eclipse/jdt/internal/compiler/ast/ForStatement;->condition:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    if-eqz v2, :cond_a

    iget-object v2, v2, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->constant:Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    sget-object v3, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->NotAConstant:Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    if-ne v2, v3, :cond_a

    iget-object v2, v0, Lorg/eclipse/jdt/internal/compiler/ast/ForStatement;->action:Lorg/eclipse/jdt/internal/compiler/ast/Statement;

    if-eqz v2, :cond_8

    invoke-virtual {v2}, Lorg/eclipse/jdt/internal/compiler/ast/Statement;->isEmptyBlock()Z

    move-result v2

    if-eqz v2, :cond_9

    :cond_8
    iget-object v2, v0, Lorg/eclipse/jdt/internal/compiler/ast/ForStatement;->increments:[Lorg/eclipse/jdt/internal/compiler/ast/Statement;

    if-eqz v2, :cond_a

    :cond_9
    iget v2, v14, Lorg/eclipse/jdt/internal/compiler/codegen/BranchLabel;->tagBits:I

    or-int/lit8 v2, v2, 0x2

    iput v2, v14, Lorg/eclipse/jdt/internal/compiler/codegen/BranchLabel;->tagBits:I

    iget v2, v8, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->position:I

    invoke-virtual {v8, v14}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->goto_(Lorg/eclipse/jdt/internal/compiler/codegen/BranchLabel;)V

    iget-object v3, v0, Lorg/eclipse/jdt/internal/compiler/ast/ForStatement;->condition:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    iget v3, v3, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceStart:I

    invoke-virtual {v8, v2, v3}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->recordPositionsFrom(II)V

    :cond_a
    :goto_3
    iget-object v2, v0, Lorg/eclipse/jdt/internal/compiler/ast/ForStatement;->action:Lorg/eclipse/jdt/internal/compiler/ast/Statement;

    if-eqz v2, :cond_c

    iget v2, v0, Lorg/eclipse/jdt/internal/compiler/ast/ForStatement;->condIfTrueInitStateIndex:I

    if-eq v2, v12, :cond_b

    invoke-virtual {v8, v1, v2}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->addDefinitelyAssignedVariables(Lorg/eclipse/jdt/internal/compiler/lookup/Scope;I)V

    :cond_b
    invoke-virtual {v13}, Lorg/eclipse/jdt/internal/compiler/codegen/BranchLabel;->place()V

    iget-object v2, v0, Lorg/eclipse/jdt/internal/compiler/ast/ForStatement;->action:Lorg/eclipse/jdt/internal/compiler/ast/Statement;

    iget-object v3, v0, Lorg/eclipse/jdt/internal/compiler/ast/ForStatement;->scope:Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;

    invoke-virtual {v2, v3, v8}, Lorg/eclipse/jdt/internal/compiler/ast/Statement;->generateCode(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;)V

    goto :goto_4

    :cond_c
    invoke-virtual {v13}, Lorg/eclipse/jdt/internal/compiler/codegen/BranchLabel;->place()V

    :goto_4
    iget v2, v0, Lorg/eclipse/jdt/internal/compiler/ast/ForStatement;->preIncrementsInitStateIndex:I

    if-eq v2, v12, :cond_d

    invoke-virtual {v8, v1, v2}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->removeNotDefinitelyAssignedVariables(Lorg/eclipse/jdt/internal/compiler/lookup/Scope;I)V

    iget v2, v0, Lorg/eclipse/jdt/internal/compiler/ast/ForStatement;->preIncrementsInitStateIndex:I

    invoke-virtual {v8, v1, v2}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->addDefinitelyAssignedVariables(Lorg/eclipse/jdt/internal/compiler/lookup/Scope;I)V

    :cond_d
    iget-object v2, v0, Lorg/eclipse/jdt/internal/compiler/ast/ForStatement;->continueLabel:Lorg/eclipse/jdt/internal/compiler/codegen/BranchLabel;

    if-eqz v2, :cond_12

    invoke-virtual {v2}, Lorg/eclipse/jdt/internal/compiler/codegen/BranchLabel;->place()V

    iget-object v2, v0, Lorg/eclipse/jdt/internal/compiler/ast/ForStatement;->increments:[Lorg/eclipse/jdt/internal/compiler/ast/Statement;

    if-eqz v2, :cond_f

    array-length v2, v2

    :goto_5
    if-lt v10, v2, :cond_e

    goto :goto_6

    :cond_e
    iget-object v3, v0, Lorg/eclipse/jdt/internal/compiler/ast/ForStatement;->increments:[Lorg/eclipse/jdt/internal/compiler/ast/Statement;

    aget-object v3, v3, v10

    iget-object v4, v0, Lorg/eclipse/jdt/internal/compiler/ast/ForStatement;->scope:Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;

    invoke-virtual {v3, v4, v8}, Lorg/eclipse/jdt/internal/compiler/ast/Statement;->generateCode(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;)V

    add-int/lit8 v10, v10, 0x1

    goto :goto_5

    :cond_f
    :goto_6
    iget v2, v0, Lorg/eclipse/jdt/internal/compiler/ast/ForStatement;->preCondInitStateIndex:I

    if-eq v2, v12, :cond_10

    invoke-virtual {v8, v1, v2}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->removeNotDefinitelyAssignedVariables(Lorg/eclipse/jdt/internal/compiler/lookup/Scope;I)V

    :cond_10
    invoke-virtual {v14}, Lorg/eclipse/jdt/internal/compiler/codegen/BranchLabel;->place()V

    iget-object v2, v0, Lorg/eclipse/jdt/internal/compiler/ast/ForStatement;->condition:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    if-eqz v2, :cond_11

    iget-object v3, v2, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->constant:Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    sget-object v4, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->NotAConstant:Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    if-ne v3, v4, :cond_11

    iget-object v3, v0, Lorg/eclipse/jdt/internal/compiler/ast/ForStatement;->scope:Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;

    const/4 v6, 0x0

    const/4 v7, 0x1

    move-object/from16 v4, p2

    move-object v5, v13

    invoke-virtual/range {v2 .. v7}, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->generateOptimizedBoolean(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;Lorg/eclipse/jdt/internal/compiler/codegen/BranchLabel;Lorg/eclipse/jdt/internal/compiler/codegen/BranchLabel;Z)V

    goto :goto_7

    :cond_11
    invoke-virtual {v8, v13}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->goto_(Lorg/eclipse/jdt/internal/compiler/codegen/BranchLabel;)V

    goto :goto_7

    :cond_12
    iget v2, v0, Lorg/eclipse/jdt/internal/compiler/ast/ForStatement;->preCondInitStateIndex:I

    if-eq v2, v12, :cond_13

    invoke-virtual {v8, v1, v2}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->removeNotDefinitelyAssignedVariables(Lorg/eclipse/jdt/internal/compiler/lookup/Scope;I)V

    :cond_13
    :goto_7
    iget v2, v0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->bits:I

    and-int/2addr v2, v11

    if-eqz v2, :cond_14

    iget-object v2, v0, Lorg/eclipse/jdt/internal/compiler/ast/ForStatement;->scope:Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;

    invoke-virtual {v8, v2}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->exitUserScope(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;)V

    :cond_14
    iget v2, v0, Lorg/eclipse/jdt/internal/compiler/ast/ForStatement;->mergedInitStateIndex:I

    if-eq v2, v12, :cond_15

    invoke-virtual {v8, v1, v2}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->removeNotDefinitelyAssignedVariables(Lorg/eclipse/jdt/internal/compiler/lookup/Scope;I)V

    iget v2, v0, Lorg/eclipse/jdt/internal/compiler/ast/ForStatement;->mergedInitStateIndex:I

    invoke-virtual {v8, v1, v2}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->addDefinitelyAssignedVariables(Lorg/eclipse/jdt/internal/compiler/lookup/Scope;I)V

    :cond_15
    iget-object v1, v0, Lorg/eclipse/jdt/internal/compiler/ast/ForStatement;->breakLabel:Lorg/eclipse/jdt/internal/compiler/codegen/BranchLabel;

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/compiler/codegen/BranchLabel;->place()V

    iget v1, v0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceStart:I

    invoke-virtual {v8, v9, v1}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->recordPositionsFrom(II)V

    return-void
.end method

.method public printStatement(ILjava/lang/StringBuffer;)Ljava/lang/StringBuffer;
    .locals 4

    invoke-static {p1, p2}, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->printIndent(ILjava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "for ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/ForStatement;->initializations:[Lorg/eclipse/jdt/internal/compiler/ast/Statement;

    const-string v1, ", "

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    move v0, v2

    :goto_0
    iget-object v3, p0, Lorg/eclipse/jdt/internal/compiler/ast/ForStatement;->initializations:[Lorg/eclipse/jdt/internal/compiler/ast/Statement;

    array-length v3, v3

    if-lt v0, v3, :cond_0

    goto :goto_1

    :cond_0
    if-lez v0, :cond_1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_1
    iget-object v3, p0, Lorg/eclipse/jdt/internal/compiler/ast/ForStatement;->initializations:[Lorg/eclipse/jdt/internal/compiler/ast/Statement;

    aget-object v3, v3, v0

    invoke-virtual {v3, v2, p2}, Lorg/eclipse/jdt/internal/compiler/ast/Statement;->print(ILjava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    const-string v0, "; "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v3, p0, Lorg/eclipse/jdt/internal/compiler/ast/ForStatement;->condition:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    if-eqz v3, :cond_3

    invoke-virtual {v3, v2, p2}, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->printExpression(ILjava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    :cond_3
    invoke-virtual {p2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/ForStatement;->increments:[Lorg/eclipse/jdt/internal/compiler/ast/Statement;

    if-eqz v0, :cond_6

    move v0, v2

    :goto_2
    iget-object v3, p0, Lorg/eclipse/jdt/internal/compiler/ast/ForStatement;->increments:[Lorg/eclipse/jdt/internal/compiler/ast/Statement;

    array-length v3, v3

    if-lt v0, v3, :cond_4

    goto :goto_3

    :cond_4
    if-lez v0, :cond_5

    invoke-virtual {p2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_5
    iget-object v3, p0, Lorg/eclipse/jdt/internal/compiler/ast/ForStatement;->increments:[Lorg/eclipse/jdt/internal/compiler/ast/Statement;

    aget-object v3, v3, v0

    invoke-virtual {v3, v2, p2}, Lorg/eclipse/jdt/internal/compiler/ast/Statement;->print(ILjava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_6
    :goto_3
    const-string v0, ") "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/ForStatement;->action:Lorg/eclipse/jdt/internal/compiler/ast/Statement;

    if-nez v0, :cond_7

    const/16 p1, 0x3b

    invoke-virtual {p2, p1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_4

    :cond_7
    const/16 v0, 0xa

    invoke-virtual {p2, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/ForStatement;->action:Lorg/eclipse/jdt/internal/compiler/ast/Statement;

    add-int/lit8 p1, p1, 0x1

    invoke-virtual {v0, p1, p2}, Lorg/eclipse/jdt/internal/compiler/ast/Statement;->printStatement(ILjava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    :goto_4
    return-object p2
.end method

.method public resolve(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;)V
    .locals 4

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->bits:I

    const/high16 v1, 0x20000000

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    new-instance v0, Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;

    invoke-direct {v0, p1}, Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;-><init>(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;)V

    move-object p1, v0

    :cond_0
    iput-object p1, p0, Lorg/eclipse/jdt/internal/compiler/ast/ForStatement;->scope:Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;

    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/ast/ForStatement;->initializations:[Lorg/eclipse/jdt/internal/compiler/ast/Statement;

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    array-length p1, p1

    move v1, v0

    :goto_0
    if-lt v1, p1, :cond_1

    goto :goto_1

    :cond_1
    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/ast/ForStatement;->initializations:[Lorg/eclipse/jdt/internal/compiler/ast/Statement;

    aget-object v2, v2, v1

    iget-object v3, p0, Lorg/eclipse/jdt/internal/compiler/ast/ForStatement;->scope:Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;

    invoke-virtual {v2, v3}, Lorg/eclipse/jdt/internal/compiler/ast/Statement;->resolve(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/ast/ForStatement;->condition:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    if-eqz p1, :cond_3

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/ast/ForStatement;->scope:Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;

    sget-object v2, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->BOOLEAN:Lorg/eclipse/jdt/internal/compiler/lookup/BaseTypeBinding;

    invoke-virtual {p1, v1, v2}, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->resolveTypeExpecting(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object p1

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/ast/ForStatement;->condition:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/ast/ForStatement;->scope:Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;

    invoke-virtual {v1, v2, p1, p1}, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->computeConversion(Lorg/eclipse/jdt/internal/compiler/lookup/Scope;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)V

    :cond_3
    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/ast/ForStatement;->increments:[Lorg/eclipse/jdt/internal/compiler/ast/Statement;

    if-eqz p1, :cond_5

    array-length p1, p1

    :goto_2
    if-lt v0, p1, :cond_4

    goto :goto_3

    :cond_4
    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/ast/ForStatement;->increments:[Lorg/eclipse/jdt/internal/compiler/ast/Statement;

    aget-object v1, v1, v0

    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/ast/ForStatement;->scope:Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;

    invoke-virtual {v1, v2}, Lorg/eclipse/jdt/internal/compiler/ast/Statement;->resolve(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_5
    :goto_3
    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/ast/ForStatement;->action:Lorg/eclipse/jdt/internal/compiler/ast/Statement;

    if-eqz p1, :cond_6

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/ForStatement;->scope:Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;

    invoke-virtual {p1, v0}, Lorg/eclipse/jdt/internal/compiler/ast/Statement;->resolve(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;)V

    :cond_6
    return-void
.end method

.method public traverse(Lorg/eclipse/jdt/internal/compiler/ASTVisitor;Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;)V
    .locals 5

    invoke-virtual {p1, p0, p2}, Lorg/eclipse/jdt/internal/compiler/ASTVisitor;->visit(Lorg/eclipse/jdt/internal/compiler/ast/ForStatement;Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/ForStatement;->initializations:[Lorg/eclipse/jdt/internal/compiler/ast/Statement;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    array-length v0, v0

    move v2, v1

    :goto_0
    if-lt v2, v0, :cond_0

    goto :goto_1

    :cond_0
    iget-object v3, p0, Lorg/eclipse/jdt/internal/compiler/ast/ForStatement;->initializations:[Lorg/eclipse/jdt/internal/compiler/ast/Statement;

    aget-object v3, v3, v2

    iget-object v4, p0, Lorg/eclipse/jdt/internal/compiler/ast/ForStatement;->scope:Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;

    invoke-virtual {v3, p1, v4}, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->traverse(Lorg/eclipse/jdt/internal/compiler/ASTVisitor;Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/ForStatement;->condition:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    if-eqz v0, :cond_2

    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/ast/ForStatement;->scope:Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;

    invoke-virtual {v0, p1, v2}, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->traverse(Lorg/eclipse/jdt/internal/compiler/ASTVisitor;Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;)V

    :cond_2
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/ForStatement;->increments:[Lorg/eclipse/jdt/internal/compiler/ast/Statement;

    if-eqz v0, :cond_4

    array-length v0, v0

    :goto_2
    if-lt v1, v0, :cond_3

    goto :goto_3

    :cond_3
    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/ast/ForStatement;->increments:[Lorg/eclipse/jdt/internal/compiler/ast/Statement;

    aget-object v2, v2, v1

    iget-object v3, p0, Lorg/eclipse/jdt/internal/compiler/ast/ForStatement;->scope:Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;

    invoke-virtual {v2, p1, v3}, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->traverse(Lorg/eclipse/jdt/internal/compiler/ASTVisitor;Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_4
    :goto_3
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/ForStatement;->action:Lorg/eclipse/jdt/internal/compiler/ast/Statement;

    if-eqz v0, :cond_5

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/ast/ForStatement;->scope:Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;

    invoke-virtual {v0, p1, v1}, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->traverse(Lorg/eclipse/jdt/internal/compiler/ASTVisitor;Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;)V

    :cond_5
    invoke-virtual {p1, p0, p2}, Lorg/eclipse/jdt/internal/compiler/ASTVisitor;->endVisit(Lorg/eclipse/jdt/internal/compiler/ast/ForStatement;Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;)V

    return-void
.end method
