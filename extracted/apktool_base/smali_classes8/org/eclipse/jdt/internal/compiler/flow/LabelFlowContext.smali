.class public Lorg/eclipse/jdt/internal/compiler/flow/LabelFlowContext;
.super Lorg/eclipse/jdt/internal/compiler/flow/SwitchFlowContext;
.source "SourceFile"


# instance fields
.field public labelName:[C


# direct methods
.method public constructor <init>(Lorg/eclipse/jdt/internal/compiler/flow/FlowContext;Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;[CLorg/eclipse/jdt/internal/compiler/codegen/BranchLabel;Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;)V
    .locals 6

    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p4

    invoke-direct/range {v0 .. v5}, Lorg/eclipse/jdt/internal/compiler/flow/SwitchFlowContext;-><init>(Lorg/eclipse/jdt/internal/compiler/flow/FlowContext;Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;Lorg/eclipse/jdt/internal/compiler/codegen/BranchLabel;ZZ)V

    iput-object p3, p0, Lorg/eclipse/jdt/internal/compiler/flow/LabelFlowContext;->labelName:[C

    invoke-virtual {p0, p5}, Lorg/eclipse/jdt/internal/compiler/flow/LabelFlowContext;->checkLabelValidity(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;)V

    return-void
.end method


# virtual methods
.method public checkLabelValidity(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;)V
    .locals 4

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/flow/FlowContext;->getLocalParent()Lorg/eclipse/jdt/internal/compiler/flow/FlowContext;

    move-result-object v0

    :goto_0
    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/flow/FlowContext;->labelName()[C

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/flow/LabelFlowContext;->labelName:[C

    invoke-static {v1, v2}, Lorg/eclipse/jdt/core/compiler/CharOperation;->equals([C[C)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object v1

    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/flow/LabelFlowContext;->labelName:[C

    iget-object v3, p0, Lorg/eclipse/jdt/internal/compiler/flow/FlowContext;->associatedNode:Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;

    invoke-virtual {v1, v2, v3}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->alreadyDefinedLabel([CLorg/eclipse/jdt/internal/compiler/ast/ASTNode;)V

    :cond_1
    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/flow/FlowContext;->getLocalParent()Lorg/eclipse/jdt/internal/compiler/flow/FlowContext;

    move-result-object v0

    goto :goto_0
.end method

.method public individualToString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Label flow context [label:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/flow/LabelFlowContext;->labelName:[C

    invoke-static {v1}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public labelName()[C
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/flow/LabelFlowContext;->labelName:[C

    return-object v0
.end method
