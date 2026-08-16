.class public Lorg/eclipse/jdt/internal/compiler/ast/BreakStatement;
.super Lorg/eclipse/jdt/internal/compiler/ast/BranchStatement;
.source "SourceFile"


# instance fields
.field public expression:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

.field public isImplicit:Z

.field public switchExpression:Lorg/eclipse/jdt/internal/compiler/ast/SwitchExpression;


# direct methods
.method public constructor <init>([CII)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/eclipse/jdt/internal/compiler/ast/BranchStatement;-><init>([CII)V

    return-void
.end method


# virtual methods
.method public adjustStackSize(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;)V
    .locals 2

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/BranchStatement;->label:[C

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/BreakStatement;->expression:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/ast/BreakStatement;->switchExpression:Lorg/eclipse/jdt/internal/compiler/ast/SwitchExpression;

    if-eqz v1, :cond_1

    invoke-virtual {v0, p1}, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->postConversionType(Lorg/eclipse/jdt/internal/compiler/lookup/Scope;)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object p1

    iget p1, p1, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->id:I

    const/4 v0, 0x6

    if-eq p1, v0, :cond_1

    const/4 v0, 0x7

    if-eq p1, v0, :cond_0

    const/16 v0, 0x8

    if-eq p1, v0, :cond_0

    const/4 p1, 0x1

    invoke-virtual {p2, p1}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->decrStackSize(I)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x2

    invoke-virtual {p2, p1}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->decrStackSize(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public analyseCode(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;Lorg/eclipse/jdt/internal/compiler/flow/FlowContext;Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;)Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;
    .locals 5

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/BranchStatement;->label:[C

    if-nez v0, :cond_0

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/flow/FlowContext;->getTargetContextForDefaultBreak()Lorg/eclipse/jdt/internal/compiler/flow/FlowContext;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-virtual {p2, v0}, Lorg/eclipse/jdt/internal/compiler/flow/FlowContext;->getTargetContextForBreakLabel([C)Lorg/eclipse/jdt/internal/compiler/flow/FlowContext;

    move-result-object v0

    :goto_0
    if-nez v0, :cond_3

    iget-object p2, p0, Lorg/eclipse/jdt/internal/compiler/ast/BranchStatement;->label:[C

    if-nez p2, :cond_1

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object p1

    invoke-virtual {p1, p0}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->invalidBreak(Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;)V

    goto :goto_1

    :cond_1
    iget-object p2, p0, Lorg/eclipse/jdt/internal/compiler/ast/BreakStatement;->switchExpression:Lorg/eclipse/jdt/internal/compiler/ast/SwitchExpression;

    if-nez p2, :cond_2

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object p1

    invoke-virtual {p1, p0}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->undefinedLabel(Lorg/eclipse/jdt/internal/compiler/ast/BranchStatement;)V

    :cond_2
    :goto_1
    return-object p3

    :cond_3
    iget-boolean v1, p0, Lorg/eclipse/jdt/internal/compiler/ast/BreakStatement;->isImplicit:Z

    if-nez v1, :cond_4

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/ast/BreakStatement;->switchExpression:Lorg/eclipse/jdt/internal/compiler/ast/SwitchExpression;

    if-eqz v1, :cond_5

    :cond_4
    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/ast/BreakStatement;->expression:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    if-eqz v1, :cond_5

    invoke-virtual {v1, p1, p2, p3}, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->analyseCode(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;Lorg/eclipse/jdt/internal/compiler/flow/FlowContext;Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;)Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;

    move-result-object p3

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/ast/BreakStatement;->expression:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    invoke-virtual {v1, p1, p2, p3}, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->checkNPEbyUnboxing(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;Lorg/eclipse/jdt/internal/compiler/flow/FlowContext;Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;)V

    invoke-virtual {p3}, Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;->reachMode()I

    move-result v1

    if-nez v1, :cond_5

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->compilerOptions()Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;

    move-result-object v1

    iget-boolean v1, v1, Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;->isAnnotationBasedNullAnalysisEnabled:Z

    if-eqz v1, :cond_5

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/ast/BreakStatement;->expression:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    invoke-virtual {p0, p1, p2, p3, v1}, Lorg/eclipse/jdt/internal/compiler/ast/Statement;->checkAgainstNullAnnotation(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;Lorg/eclipse/jdt/internal/compiler/flow/FlowContext;Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;Lorg/eclipse/jdt/internal/compiler/ast/Expression;)V

    :cond_5
    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/flow/FlowContext;->recordAbruptExit()V

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/flow/FlowContext;->expireNullCheckedFieldInfo()V

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->methodScope()Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;

    move-result-object p1

    invoke-virtual {p1, p3}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;->recordInitializationStates(Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;)I

    move-result p1

    iput p1, p0, Lorg/eclipse/jdt/internal/compiler/ast/BranchStatement;->initStateIndex:I

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/flow/FlowContext;->breakLabel()Lorg/eclipse/jdt/internal/compiler/codegen/BranchLabel;

    move-result-object p1

    iput-object p1, p0, Lorg/eclipse/jdt/internal/compiler/ast/BranchStatement;->targetLabel:Lorg/eclipse/jdt/internal/compiler/codegen/BranchLabel;

    const/4 p1, 0x5

    new-array p1, p1, [Lorg/eclipse/jdt/internal/compiler/ast/SubRoutineStatement;

    iput-object p1, p0, Lorg/eclipse/jdt/internal/compiler/ast/BranchStatement;->subroutines:[Lorg/eclipse/jdt/internal/compiler/ast/SubRoutineStatement;

    const/4 p1, 0x0

    move v1, p1

    :cond_6
    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/flow/FlowContext;->subroutine()Lorg/eclipse/jdt/internal/compiler/ast/SubRoutineStatement;

    move-result-object v2

    if-eqz v2, :cond_9

    iget-object v3, p0, Lorg/eclipse/jdt/internal/compiler/ast/BranchStatement;->subroutines:[Lorg/eclipse/jdt/internal/compiler/ast/SubRoutineStatement;

    array-length v4, v3

    if-ne v1, v4, :cond_7

    mul-int/lit8 v4, v1, 0x2

    new-array v4, v4, [Lorg/eclipse/jdt/internal/compiler/ast/SubRoutineStatement;

    iput-object v4, p0, Lorg/eclipse/jdt/internal/compiler/ast/BranchStatement;->subroutines:[Lorg/eclipse/jdt/internal/compiler/ast/SubRoutineStatement;

    invoke-static {v3, p1, v4, p1, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_7
    iget-object v3, p0, Lorg/eclipse/jdt/internal/compiler/ast/BranchStatement;->subroutines:[Lorg/eclipse/jdt/internal/compiler/ast/SubRoutineStatement;

    add-int/lit8 v4, v1, 0x1

    aput-object v2, v3, v1

    invoke-virtual {v2}, Lorg/eclipse/jdt/internal/compiler/ast/SubRoutineStatement;->isSubRoutineEscaping()Z

    move-result v1

    if-eqz v1, :cond_8

    goto :goto_4

    :cond_8
    move v1, v4

    :cond_9
    invoke-virtual {p3}, Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;->unconditionalInits()Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;

    move-result-object v2

    invoke-virtual {p2, v2}, Lorg/eclipse/jdt/internal/compiler/flow/FlowContext;->recordReturnFrom(Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;)V

    invoke-virtual {p2, v0}, Lorg/eclipse/jdt/internal/compiler/flow/FlowContext;->recordBreakTo(Lorg/eclipse/jdt/internal/compiler/flow/FlowContext;)V

    instance-of v2, p2, Lorg/eclipse/jdt/internal/compiler/flow/InsideSubRoutineFlowContext;

    if-eqz v2, :cond_a

    iget-object v2, p2, Lorg/eclipse/jdt/internal/compiler/flow/FlowContext;->associatedNode:Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;

    instance-of v3, v2, Lorg/eclipse/jdt/internal/compiler/ast/TryStatement;

    if-eqz v3, :cond_b

    check-cast v2, Lorg/eclipse/jdt/internal/compiler/ast/TryStatement;

    iget-object v2, v2, Lorg/eclipse/jdt/internal/compiler/ast/TryStatement;->subRoutineInits:Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;

    invoke-virtual {p3, v2}, Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;->addInitializationsFrom(Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;)Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;

    goto :goto_2

    :cond_a
    if-ne p2, v0, :cond_b

    invoke-virtual {v0, p3}, Lorg/eclipse/jdt/internal/compiler/flow/FlowContext;->recordBreakFrom(Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;)V

    goto :goto_3

    :cond_b
    :goto_2
    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/flow/FlowContext;->getLocalParent()Lorg/eclipse/jdt/internal/compiler/flow/FlowContext;

    move-result-object p2

    if-nez p2, :cond_6

    :goto_3
    move v4, v1

    :goto_4
    iget-object p2, p0, Lorg/eclipse/jdt/internal/compiler/ast/BranchStatement;->subroutines:[Lorg/eclipse/jdt/internal/compiler/ast/SubRoutineStatement;

    array-length p3, p2

    if-eq v4, p3, :cond_c

    new-array p3, v4, [Lorg/eclipse/jdt/internal/compiler/ast/SubRoutineStatement;

    iput-object p3, p0, Lorg/eclipse/jdt/internal/compiler/ast/BranchStatement;->subroutines:[Lorg/eclipse/jdt/internal/compiler/ast/SubRoutineStatement;

    invoke-static {p2, p1, p3, p1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_c
    sget-object p1, Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;->DEAD_END:Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;

    return-object p1
.end method

.method public doesNotCompleteNormally()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public generateExpressionResultCode(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;)V
    .locals 2

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/BranchStatement;->label:[C

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/BreakStatement;->expression:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/ast/BreakStatement;->switchExpression:Lorg/eclipse/jdt/internal/compiler/ast/SwitchExpression;

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, p1, p2, v1}, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->generateCode(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;Z)V

    :cond_1
    return-void
.end method

.method public printStatement(ILjava/lang/StringBuffer;)Ljava/lang/StringBuffer;
    .locals 2

    iget-boolean v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/BreakStatement;->isImplicit:Z

    if-nez v0, :cond_0

    invoke-static {p1, p2}, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->printIndent(ILjava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "break"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/BranchStatement;->label:[C

    const/16 v1, 0x20

    if-eqz v0, :cond_1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/BranchStatement;->label:[C

    invoke-virtual {p2, v0}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    :cond_1
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/BreakStatement;->expression:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    if-eqz v0, :cond_2

    invoke-virtual {p2, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/BreakStatement;->expression:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    invoke-virtual {v0, p1, p2}, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->printExpression(ILjava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    :cond_2
    const/16 p1, 0x3b

    invoke-virtual {p2, p1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    return-object p2
.end method

.method public resolve(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;)V
    .locals 3

    invoke-super {p0, p1}, Lorg/eclipse/jdt/internal/compiler/ast/BranchStatement;->resolve(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;)V

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/BreakStatement;->expression:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    if-eqz v0, :cond_2

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/ast/BreakStatement;->switchExpression:Lorg/eclipse/jdt/internal/compiler/ast/SwitchExpression;

    if-nez v1, :cond_0

    iget-boolean v2, p0, Lorg/eclipse/jdt/internal/compiler/ast/BreakStatement;->isImplicit:Z

    if-eqz v2, :cond_2

    :cond_0
    if-nez v1, :cond_1

    iget-boolean v1, p0, Lorg/eclipse/jdt/internal/compiler/ast/BreakStatement;->isImplicit:Z

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->statementExpression()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->compilerOptions()Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;

    move-result-object v0

    iget-boolean v0, v0, Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;->enablePreviewFeatures:Z

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object p1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/BreakStatement;->expression:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    invoke-virtual {p1, v0}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->invalidExpressionAsStatement(Lorg/eclipse/jdt/internal/compiler/ast/Expression;)V

    return-void

    :cond_1
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/BreakStatement;->expression:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    invoke-virtual {v0, p1}, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->resolveType(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    goto :goto_0

    :cond_2
    if-nez v0, :cond_3

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/BreakStatement;->switchExpression:Lorg/eclipse/jdt/internal/compiler/ast/SwitchExpression;

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object p1

    invoke-virtual {p1, p0}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->switchExpressionBreakMissingValue(Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;)V

    :cond_3
    :goto_0
    return-void
.end method

.method public resolveExpressionType(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/BreakStatement;->expression:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->resolveType(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public traverse(Lorg/eclipse/jdt/internal/compiler/ASTVisitor;Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;)V
    .locals 1

    invoke-virtual {p1, p0, p2}, Lorg/eclipse/jdt/internal/compiler/ASTVisitor;->visit(Lorg/eclipse/jdt/internal/compiler/ast/BreakStatement;Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/BreakStatement;->expression:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->traverse(Lorg/eclipse/jdt/internal/compiler/ASTVisitor;Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;)V

    :cond_0
    invoke-virtual {p1, p0, p2}, Lorg/eclipse/jdt/internal/compiler/ASTVisitor;->endVisit(Lorg/eclipse/jdt/internal/compiler/ast/BreakStatement;Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;)V

    return-void
.end method
