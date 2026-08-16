.class public Lorg/eclipse/jdt/internal/compiler/ast/LabeledStatement;
.super Lorg/eclipse/jdt/internal/compiler/ast/Statement;
.source "SourceFile"


# instance fields
.field public label:[C

.field public labelEnd:I

.field mergedInitStateIndex:I

.field public statement:Lorg/eclipse/jdt/internal/compiler/ast/Statement;

.field public targetLabel:Lorg/eclipse/jdt/internal/compiler/codegen/BranchLabel;


# direct methods
.method public constructor <init>([CLorg/eclipse/jdt/internal/compiler/ast/Statement;JI)V
    .locals 1

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/compiler/ast/Statement;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/LabeledStatement;->mergedInitStateIndex:I

    iput-object p2, p0, Lorg/eclipse/jdt/internal/compiler/ast/LabeledStatement;->statement:Lorg/eclipse/jdt/internal/compiler/ast/Statement;

    instance-of v0, p2, Lorg/eclipse/jdt/internal/compiler/ast/EmptyStatement;

    if-eqz v0, :cond_0

    iget v0, p2, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->bits:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p2, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->bits:I

    :cond_0
    iput-object p1, p0, Lorg/eclipse/jdt/internal/compiler/ast/LabeledStatement;->label:[C

    const/16 p1, 0x20

    ushr-long p1, p3, p1

    long-to-int p1, p1

    iput p1, p0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceStart:I

    long-to-int p1, p3

    iput p1, p0, Lorg/eclipse/jdt/internal/compiler/ast/LabeledStatement;->labelEnd:I

    iput p5, p0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceEnd:I

    return-void
.end method


# virtual methods
.method public analyseCode(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;Lorg/eclipse/jdt/internal/compiler/flow/FlowContext;Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;)Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;
    .locals 8

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/LabeledStatement;->statement:Lorg/eclipse/jdt/internal/compiler/ast/Statement;

    if-nez v0, :cond_0

    return-object p3

    :cond_0
    new-instance v7, Lorg/eclipse/jdt/internal/compiler/flow/LabelFlowContext;

    iget-object v4, p0, Lorg/eclipse/jdt/internal/compiler/ast/LabeledStatement;->label:[C

    new-instance v5, Lorg/eclipse/jdt/internal/compiler/codegen/BranchLabel;

    invoke-direct {v5}, Lorg/eclipse/jdt/internal/compiler/codegen/BranchLabel;-><init>()V

    iput-object v5, p0, Lorg/eclipse/jdt/internal/compiler/ast/LabeledStatement;->targetLabel:Lorg/eclipse/jdt/internal/compiler/codegen/BranchLabel;

    move-object v1, v7

    move-object v2, p2

    move-object v3, p0

    move-object v6, p1

    invoke-direct/range {v1 .. v6}, Lorg/eclipse/jdt/internal/compiler/flow/LabelFlowContext;-><init>(Lorg/eclipse/jdt/internal/compiler/flow/FlowContext;Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;[CLorg/eclipse/jdt/internal/compiler/codegen/BranchLabel;Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;)V

    invoke-virtual {v0, p1, v7, p3}, Lorg/eclipse/jdt/internal/compiler/ast/Statement;->analyseCode(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;Lorg/eclipse/jdt/internal/compiler/flow/FlowContext;Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;)Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;

    move-result-object p2

    iget v0, p2, Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;->tagBits:I

    and-int/lit8 v0, v0, 0x3

    if-eqz v0, :cond_1

    iget-object v0, v7, Lorg/eclipse/jdt/internal/compiler/flow/SwitchFlowContext;->initsOnBreak:Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;

    iget v0, v0, Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;->tagBits:I

    and-int/lit8 v0, v0, 0x3

    if-nez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    iget-object v1, v7, Lorg/eclipse/jdt/internal/compiler/flow/SwitchFlowContext;->initsOnBreak:Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;

    invoke-virtual {p2, v1}, Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;->mergedWith(Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;)Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;

    move-result-object p2

    if-eqz v0, :cond_2

    invoke-virtual {p3}, Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;->unconditionalFieldLessCopy()Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;

    move-result-object p3

    invoke-virtual {p2, p3}, Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;->addNullInfoFrom(Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;)Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;

    move-result-object p3

    iget-object v0, v7, Lorg/eclipse/jdt/internal/compiler/flow/SwitchFlowContext;->initsOnBreak:Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;->unconditionalFieldLessCopy()Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;

    move-result-object v0

    invoke-virtual {p3, v0}, Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;->addNullInfoFrom(Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;)Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;

    :cond_2
    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->methodScope()Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;

    move-result-object p3

    invoke-virtual {p3, p2}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;->recordInitializationStates(Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;)I

    move-result p3

    iput p3, p0, Lorg/eclipse/jdt/internal/compiler/ast/LabeledStatement;->mergedInitStateIndex:I

    iget p3, p0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->bits:I

    and-int/lit8 p3, p3, 0x40

    if-nez p3, :cond_3

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object p1

    invoke-virtual {p1, p0}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->unusedLabel(Lorg/eclipse/jdt/internal/compiler/ast/LabeledStatement;)V

    :cond_3
    return-object p2
.end method

.method public completesByContinue()Z
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/LabeledStatement;->statement:Lorg/eclipse/jdt/internal/compiler/ast/Statement;

    instance-of v0, v0, Lorg/eclipse/jdt/internal/compiler/ast/ContinueStatement;

    return v0
.end method

.method public concreteStatement()Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/LabeledStatement;->statement:Lorg/eclipse/jdt/internal/compiler/ast/Statement;

    return-object v0
.end method

.method public doesNotCompleteNormally()Z
    .locals 2

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/LabeledStatement;->statement:Lorg/eclipse/jdt/internal/compiler/ast/Statement;

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/ast/LabeledStatement;->label:[C

    invoke-virtual {v0, v1}, Lorg/eclipse/jdt/internal/compiler/ast/Statement;->breaksOut([C)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/LabeledStatement;->statement:Lorg/eclipse/jdt/internal/compiler/ast/Statement;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/ast/Statement;->doesNotCompleteNormally()Z

    move-result v0

    return v0
.end method

.method public generateCode(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;)V
    .locals 3

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->bits:I

    const/high16 v1, -0x80000000

    and-int/2addr v0, v1

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget v0, p2, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->position:I

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/ast/LabeledStatement;->targetLabel:Lorg/eclipse/jdt/internal/compiler/codegen/BranchLabel;

    if-eqz v1, :cond_2

    invoke-virtual {v1, p2}, Lorg/eclipse/jdt/internal/compiler/codegen/BranchLabel;->initialize(Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;)V

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/ast/LabeledStatement;->statement:Lorg/eclipse/jdt/internal/compiler/ast/Statement;

    if-eqz v1, :cond_1

    invoke-virtual {v1, p1, p2}, Lorg/eclipse/jdt/internal/compiler/ast/Statement;->generateCode(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;)V

    :cond_1
    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/ast/LabeledStatement;->targetLabel:Lorg/eclipse/jdt/internal/compiler/codegen/BranchLabel;

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/compiler/codegen/BranchLabel;->place()V

    :cond_2
    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/ast/LabeledStatement;->mergedInitStateIndex:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_3

    invoke-virtual {p2, p1, v1}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->removeNotDefinitelyAssignedVariables(Lorg/eclipse/jdt/internal/compiler/lookup/Scope;I)V

    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/ast/LabeledStatement;->mergedInitStateIndex:I

    invoke-virtual {p2, p1, v1}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->addDefinitelyAssignedVariables(Lorg/eclipse/jdt/internal/compiler/lookup/Scope;I)V

    :cond_3
    iget p1, p0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceStart:I

    invoke-virtual {p2, v0, p1}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->recordPositionsFrom(II)V

    return-void
.end method

.method public printStatement(ILjava/lang/StringBuffer;)Ljava/lang/StringBuffer;
    .locals 1

    invoke-static {p1, p2}, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->printIndent(ILjava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    move-result-object p1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/LabeledStatement;->label:[C

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    const-string v0, ": "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/ast/LabeledStatement;->statement:Lorg/eclipse/jdt/internal/compiler/ast/Statement;

    if-nez p1, :cond_0

    const/16 p1, 0x3b

    invoke-virtual {p2, p1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p1, v0, p2}, Lorg/eclipse/jdt/internal/compiler/ast/Statement;->printStatement(ILjava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    :goto_0
    return-object p2
.end method

.method public resolve(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;)V
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/LabeledStatement;->statement:Lorg/eclipse/jdt/internal/compiler/ast/Statement;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lorg/eclipse/jdt/internal/compiler/ast/Statement;->resolve(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;)V

    :cond_0
    return-void
.end method

.method public traverse(Lorg/eclipse/jdt/internal/compiler/ASTVisitor;Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;)V
    .locals 1

    invoke-virtual {p1, p0, p2}, Lorg/eclipse/jdt/internal/compiler/ASTVisitor;->visit(Lorg/eclipse/jdt/internal/compiler/ast/LabeledStatement;Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/LabeledStatement;->statement:Lorg/eclipse/jdt/internal/compiler/ast/Statement;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->traverse(Lorg/eclipse/jdt/internal/compiler/ASTVisitor;Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;)V

    :cond_0
    invoke-virtual {p1, p0, p2}, Lorg/eclipse/jdt/internal/compiler/ASTVisitor;->endVisit(Lorg/eclipse/jdt/internal/compiler/ast/LabeledStatement;Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;)V

    return-void
.end method
