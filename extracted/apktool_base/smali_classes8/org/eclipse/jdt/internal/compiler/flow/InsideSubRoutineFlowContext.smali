.class public Lorg/eclipse/jdt/internal/compiler/flow/InsideSubRoutineFlowContext;
.super Lorg/eclipse/jdt/internal/compiler/flow/TryFlowContext;
.source "SourceFile"


# instance fields
.field public initsOnReturn:Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;


# direct methods
.method public constructor <init>(Lorg/eclipse/jdt/internal/compiler/flow/FlowContext;Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/eclipse/jdt/internal/compiler/flow/TryFlowContext;-><init>(Lorg/eclipse/jdt/internal/compiler/flow/FlowContext;Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;)V

    sget-object p1, Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;->DEAD_END:Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;

    iput-object p1, p0, Lorg/eclipse/jdt/internal/compiler/flow/InsideSubRoutineFlowContext;->initsOnReturn:Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;

    return-void
.end method


# virtual methods
.method public individualToString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "Inside SubRoutine flow context"

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    const-string v1, "[initsOnReturn -"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/flow/InsideSubRoutineFlowContext;->initsOnReturn:Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public initsOnReturn()Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/flow/InsideSubRoutineFlowContext;->initsOnReturn:Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;

    return-object v0
.end method

.method public isNonReturningContext()Z
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/flow/FlowContext;->associatedNode:Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;

    check-cast v0, Lorg/eclipse/jdt/internal/compiler/ast/SubRoutineStatement;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/ast/SubRoutineStatement;->isSubRoutineEscaping()Z

    move-result v0

    return v0
.end method

.method public recordReturnFrom(Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;)V
    .locals 2

    iget v0, p1, Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;->tagBits:I

    and-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/flow/InsideSubRoutineFlowContext;->initsOnReturn:Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;

    sget-object v1, Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;->DEAD_END:Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;

    if-ne v0, v1, :cond_0

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;->copy()Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;

    move-result-object p1

    check-cast p1, Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;

    iput-object p1, p0, Lorg/eclipse/jdt/internal/compiler/flow/InsideSubRoutineFlowContext;->initsOnReturn:Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1}, Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;->mergedWith(Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;)Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;

    move-result-object p1

    iput-object p1, p0, Lorg/eclipse/jdt/internal/compiler/flow/InsideSubRoutineFlowContext;->initsOnReturn:Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;

    :cond_1
    :goto_0
    return-void
.end method

.method public subroutine()Lorg/eclipse/jdt/internal/compiler/ast/SubRoutineStatement;
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/flow/FlowContext;->associatedNode:Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;

    check-cast v0, Lorg/eclipse/jdt/internal/compiler/ast/SubRoutineStatement;

    return-object v0
.end method
