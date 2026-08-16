.class Lorg/eclipse/jdt/internal/compiler/flow/LoopingFlowContext$EscapingExceptionCatchSite;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/eclipse/jdt/internal/compiler/flow/LoopingFlowContext;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "EscapingExceptionCatchSite"
.end annotation


# instance fields
.field final catchingContext:Lorg/eclipse/jdt/internal/compiler/flow/ExceptionHandlingFlowContext;

.field final caughtException:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

.field final exceptionInfo:Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;


# direct methods
.method public constructor <init>(Lorg/eclipse/jdt/internal/compiler/flow/ExceptionHandlingFlowContext;Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/eclipse/jdt/internal/compiler/flow/LoopingFlowContext$EscapingExceptionCatchSite;->catchingContext:Lorg/eclipse/jdt/internal/compiler/flow/ExceptionHandlingFlowContext;

    iput-object p2, p0, Lorg/eclipse/jdt/internal/compiler/flow/LoopingFlowContext$EscapingExceptionCatchSite;->caughtException:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    iput-object p3, p0, Lorg/eclipse/jdt/internal/compiler/flow/LoopingFlowContext$EscapingExceptionCatchSite;->exceptionInfo:Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;

    return-void
.end method


# virtual methods
.method public simulateThrowAfterLoopBack(Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;)V
    .locals 7

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/flow/LoopingFlowContext$EscapingExceptionCatchSite;->catchingContext:Lorg/eclipse/jdt/internal/compiler/flow/ExceptionHandlingFlowContext;

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/flow/LoopingFlowContext$EscapingExceptionCatchSite;->caughtException:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;->unconditionalCopy()Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;

    move-result-object p1

    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/flow/LoopingFlowContext$EscapingExceptionCatchSite;->exceptionInfo:Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;

    invoke-virtual {p1, v2}, Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;->addNullInfoFrom(Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;)Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;

    move-result-object p1

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;->unconditionalInits()Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;

    move-result-object v2

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual/range {v0 .. v6}, Lorg/eclipse/jdt/internal/compiler/flow/ExceptionHandlingFlowContext;->recordHandlingException(Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;Z)V

    return-void
.end method
