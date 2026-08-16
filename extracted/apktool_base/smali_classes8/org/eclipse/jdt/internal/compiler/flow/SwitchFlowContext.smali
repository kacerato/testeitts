.class public Lorg/eclipse/jdt/internal/compiler/flow/SwitchFlowContext;
.super Lorg/eclipse/jdt/internal/compiler/flow/FlowContext;
.source "SourceFile"


# instance fields
.field public breakLabel:Lorg/eclipse/jdt/internal/compiler/codegen/BranchLabel;

.field public initsOnBreak:Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;


# direct methods
.method public constructor <init>(Lorg/eclipse/jdt/internal/compiler/flow/FlowContext;Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;Lorg/eclipse/jdt/internal/compiler/codegen/BranchLabel;ZZ)V
    .locals 0

    invoke-direct {p0, p1, p2, p5}, Lorg/eclipse/jdt/internal/compiler/flow/FlowContext;-><init>(Lorg/eclipse/jdt/internal/compiler/flow/FlowContext;Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;Z)V

    sget-object p2, Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;->DEAD_END:Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;

    iput-object p2, p0, Lorg/eclipse/jdt/internal/compiler/flow/SwitchFlowContext;->initsOnBreak:Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;

    iput-object p3, p0, Lorg/eclipse/jdt/internal/compiler/flow/SwitchFlowContext;->breakLabel:Lorg/eclipse/jdt/internal/compiler/codegen/BranchLabel;

    if-eqz p4, :cond_0

    iget p1, p1, Lorg/eclipse/jdt/internal/compiler/flow/FlowContext;->conditionalLevel:I

    const/4 p2, -0x1

    if-le p1, p2, :cond_0

    iget p1, p0, Lorg/eclipse/jdt/internal/compiler/flow/FlowContext;->conditionalLevel:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lorg/eclipse/jdt/internal/compiler/flow/FlowContext;->conditionalLevel:I

    :cond_0
    return-void
.end method


# virtual methods
.method public breakLabel()Lorg/eclipse/jdt/internal/compiler/codegen/BranchLabel;
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/flow/SwitchFlowContext;->breakLabel:Lorg/eclipse/jdt/internal/compiler/codegen/BranchLabel;

    return-object v0
.end method

.method public individualToString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "Switch flow context"

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    const-string v1, "[initsOnBreak -"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/flow/SwitchFlowContext;->initsOnBreak:Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isBreakable()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public recordBreakFrom(Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;)V
    .locals 2

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/flow/SwitchFlowContext;->initsOnBreak:Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;

    iget v1, v0, Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;->tagBits:I

    and-int/lit8 v1, v1, 0x1

    if-nez v1, :cond_0

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;->unconditionalInits()Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;->mergedWith(Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;)Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;

    move-result-object p1

    iput-object p1, p0, Lorg/eclipse/jdt/internal/compiler/flow/SwitchFlowContext;->initsOnBreak:Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;->unconditionalCopy()Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;

    move-result-object p1

    iput-object p1, p0, Lorg/eclipse/jdt/internal/compiler/flow/SwitchFlowContext;->initsOnBreak:Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;

    :goto_0
    return-void
.end method
