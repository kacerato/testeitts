.class public Lorg/eclipse/jdt/internal/compiler/ast/ContinueStatement;
.super Lorg/eclipse/jdt/internal/compiler/ast/BranchStatement;
.source "SourceFile"


# direct methods
.method public constructor <init>([CII)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/eclipse/jdt/internal/compiler/ast/BranchStatement;-><init>([CII)V

    return-void
.end method


# virtual methods
.method public analyseCode(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;Lorg/eclipse/jdt/internal/compiler/flow/FlowContext;Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;)Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;
    .locals 6

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/BranchStatement;->label:[C

    if-nez v0, :cond_0

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/flow/FlowContext;->getTargetContextForDefaultContinue()Lorg/eclipse/jdt/internal/compiler/flow/FlowContext;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-virtual {p2, v0}, Lorg/eclipse/jdt/internal/compiler/flow/FlowContext;->getTargetContextForContinueLabel([C)Lorg/eclipse/jdt/internal/compiler/flow/FlowContext;

    move-result-object v0

    :goto_0
    if-nez v0, :cond_2

    iget-object p2, p0, Lorg/eclipse/jdt/internal/compiler/ast/BranchStatement;->label:[C

    if-nez p2, :cond_1

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object p1

    invoke-virtual {p1, p0}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->invalidContinue(Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;)V

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object p1

    invoke-virtual {p1, p0}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->undefinedLabel(Lorg/eclipse/jdt/internal/compiler/ast/BranchStatement;)V

    :goto_1
    return-object p3

    :cond_2
    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/flow/FlowContext;->recordAbruptExit()V

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/flow/FlowContext;->expireNullCheckedFieldInfo()V

    sget-object v1, Lorg/eclipse/jdt/internal/compiler/flow/FlowContext;->NotContinuableContext:Lorg/eclipse/jdt/internal/compiler/flow/FlowContext;

    if-ne v0, v1, :cond_3

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object p1

    invoke-virtual {p1, p0}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->invalidContinue(Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;)V

    return-object p3

    :cond_3
    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->methodScope()Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;

    move-result-object p1

    invoke-virtual {p1, p3}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;->recordInitializationStates(Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;)I

    move-result p1

    iput p1, p0, Lorg/eclipse/jdt/internal/compiler/ast/BranchStatement;->initStateIndex:I

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/flow/FlowContext;->continueLabel()Lorg/eclipse/jdt/internal/compiler/codegen/BranchLabel;

    move-result-object p1

    iput-object p1, p0, Lorg/eclipse/jdt/internal/compiler/ast/BranchStatement;->targetLabel:Lorg/eclipse/jdt/internal/compiler/codegen/BranchLabel;

    const/4 p1, 0x5

    new-array p1, p1, [Lorg/eclipse/jdt/internal/compiler/ast/SubRoutineStatement;

    iput-object p1, p0, Lorg/eclipse/jdt/internal/compiler/ast/BranchStatement;->subroutines:[Lorg/eclipse/jdt/internal/compiler/ast/SubRoutineStatement;

    const/4 p1, 0x0

    move v2, p1

    move-object v1, p2

    :cond_4
    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/compiler/flow/FlowContext;->subroutine()Lorg/eclipse/jdt/internal/compiler/ast/SubRoutineStatement;

    move-result-object v3

    if-eqz v3, :cond_7

    iget-object v4, p0, Lorg/eclipse/jdt/internal/compiler/ast/BranchStatement;->subroutines:[Lorg/eclipse/jdt/internal/compiler/ast/SubRoutineStatement;

    array-length v5, v4

    if-ne v2, v5, :cond_5

    mul-int/lit8 v5, v2, 0x2

    new-array v5, v5, [Lorg/eclipse/jdt/internal/compiler/ast/SubRoutineStatement;

    iput-object v5, p0, Lorg/eclipse/jdt/internal/compiler/ast/BranchStatement;->subroutines:[Lorg/eclipse/jdt/internal/compiler/ast/SubRoutineStatement;

    invoke-static {v4, p1, v5, p1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_5
    iget-object v4, p0, Lorg/eclipse/jdt/internal/compiler/ast/BranchStatement;->subroutines:[Lorg/eclipse/jdt/internal/compiler/ast/SubRoutineStatement;

    add-int/lit8 v5, v2, 0x1

    aput-object v3, v4, v2

    invoke-virtual {v3}, Lorg/eclipse/jdt/internal/compiler/ast/SubRoutineStatement;->isSubRoutineEscaping()Z

    move-result v2

    if-eqz v2, :cond_6

    goto :goto_4

    :cond_6
    move v2, v5

    :cond_7
    invoke-virtual {p3}, Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;->unconditionalInits()Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;

    move-result-object v3

    invoke-virtual {v1, v3}, Lorg/eclipse/jdt/internal/compiler/flow/FlowContext;->recordReturnFrom(Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;)V

    instance-of v3, v1, Lorg/eclipse/jdt/internal/compiler/flow/InsideSubRoutineFlowContext;

    if-eqz v3, :cond_8

    iget-object v3, v1, Lorg/eclipse/jdt/internal/compiler/flow/FlowContext;->associatedNode:Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;

    instance-of v4, v3, Lorg/eclipse/jdt/internal/compiler/ast/TryStatement;

    if-eqz v4, :cond_9

    check-cast v3, Lorg/eclipse/jdt/internal/compiler/ast/TryStatement;

    iget-object v3, v3, Lorg/eclipse/jdt/internal/compiler/ast/TryStatement;->subRoutineInits:Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;

    invoke-virtual {p3, v3}, Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;->addInitializationsFrom(Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;)Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;

    goto :goto_2

    :cond_8
    if-ne v1, v0, :cond_9

    invoke-virtual {v0, p2, p3}, Lorg/eclipse/jdt/internal/compiler/flow/FlowContext;->recordContinueFrom(Lorg/eclipse/jdt/internal/compiler/flow/FlowContext;Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;)V

    goto :goto_3

    :cond_9
    :goto_2
    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/compiler/flow/FlowContext;->getLocalParent()Lorg/eclipse/jdt/internal/compiler/flow/FlowContext;

    move-result-object v1

    if-nez v1, :cond_4

    :goto_3
    move v5, v2

    :goto_4
    iget-object p2, p0, Lorg/eclipse/jdt/internal/compiler/ast/BranchStatement;->subroutines:[Lorg/eclipse/jdt/internal/compiler/ast/SubRoutineStatement;

    array-length p3, p2

    if-eq v5, p3, :cond_a

    new-array p3, v5, [Lorg/eclipse/jdt/internal/compiler/ast/SubRoutineStatement;

    iput-object p3, p0, Lorg/eclipse/jdt/internal/compiler/ast/BranchStatement;->subroutines:[Lorg/eclipse/jdt/internal/compiler/ast/SubRoutineStatement;

    invoke-static {p2, p1, p3, p1, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_a
    sget-object p1, Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;->DEAD_END:Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;

    return-object p1
.end method

.method public completesByContinue()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public doesNotCompleteNormally()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public printStatement(ILjava/lang/StringBuffer;)Ljava/lang/StringBuffer;
    .locals 1

    invoke-static {p1, p2}, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->printIndent(ILjava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    move-result-object p1

    const-string v0, "continue "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/ast/BranchStatement;->label:[C

    if-eqz p1, :cond_0

    invoke-virtual {p2, p1}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    :cond_0
    const/16 p1, 0x3b

    invoke-virtual {p2, p1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    return-object p2
.end method

.method public traverse(Lorg/eclipse/jdt/internal/compiler/ASTVisitor;Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;)V
    .locals 0

    invoke-virtual {p1, p0, p2}, Lorg/eclipse/jdt/internal/compiler/ASTVisitor;->visit(Lorg/eclipse/jdt/internal/compiler/ast/ContinueStatement;Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;)Z

    invoke-virtual {p1, p0, p2}, Lorg/eclipse/jdt/internal/compiler/ASTVisitor;->endVisit(Lorg/eclipse/jdt/internal/compiler/ast/ContinueStatement;Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;)V

    return-void
.end method
