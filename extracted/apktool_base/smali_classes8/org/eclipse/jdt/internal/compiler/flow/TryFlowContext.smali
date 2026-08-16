.class public abstract Lorg/eclipse/jdt/internal/compiler/flow/TryFlowContext;
.super Lorg/eclipse/jdt/internal/compiler/flow/FlowContext;
.source "SourceFile"


# instance fields
.field public outerTryContext:Lorg/eclipse/jdt/internal/compiler/flow/FlowContext;


# direct methods
.method public constructor <init>(Lorg/eclipse/jdt/internal/compiler/flow/FlowContext;Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lorg/eclipse/jdt/internal/compiler/flow/FlowContext;-><init>(Lorg/eclipse/jdt/internal/compiler/flow/FlowContext;Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;Z)V

    return-void
.end method


# virtual methods
.method public markFinallyNullStatus(Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;I)V
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/flow/TryFlowContext;->outerTryContext:Lorg/eclipse/jdt/internal/compiler/flow/FlowContext;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Lorg/eclipse/jdt/internal/compiler/flow/FlowContext;->markFinallyNullStatus(Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;I)V

    :cond_0
    invoke-super {p0, p1, p2}, Lorg/eclipse/jdt/internal/compiler/flow/FlowContext;->markFinallyNullStatus(Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;I)V

    return-void
.end method

.method public mergeFinallyNullInfo(Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;)V
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/flow/TryFlowContext;->outerTryContext:Lorg/eclipse/jdt/internal/compiler/flow/FlowContext;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lorg/eclipse/jdt/internal/compiler/flow/FlowContext;->mergeFinallyNullInfo(Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;)V

    :cond_0
    invoke-super {p0, p1}, Lorg/eclipse/jdt/internal/compiler/flow/FlowContext;->mergeFinallyNullInfo(Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;)V

    return-void
.end method
