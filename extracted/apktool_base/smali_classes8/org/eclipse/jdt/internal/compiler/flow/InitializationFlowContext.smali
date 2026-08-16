.class public Lorg/eclipse/jdt/internal/compiler/flow/InitializationFlowContext;
.super Lorg/eclipse/jdt/internal/compiler/flow/ExceptionHandlingFlowContext;
.source "SourceFile"


# instance fields
.field public exceptionCount:I

.field public exceptionThrowerFlowInfos:[Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;

.field public exceptionThrowers:[Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;

.field public initsBeforeContext:Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;

.field public thrownExceptions:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;


# direct methods
.method public constructor <init>(Lorg/eclipse/jdt/internal/compiler/flow/FlowContext;Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;Lorg/eclipse/jdt/internal/compiler/flow/FlowContext;Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;)V
    .locals 7

    sget-object v3, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->NO_EXCEPTIONS:[Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    sget-object v6, Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;->DEAD_END:Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v6}, Lorg/eclipse/jdt/internal/compiler/flow/ExceptionHandlingFlowContext;-><init>(Lorg/eclipse/jdt/internal/compiler/flow/FlowContext;Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;[Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;Lorg/eclipse/jdt/internal/compiler/flow/FlowContext;Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;)V

    const/4 p1, 0x5

    new-array p2, p1, [Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    iput-object p2, p0, Lorg/eclipse/jdt/internal/compiler/flow/InitializationFlowContext;->thrownExceptions:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    new-array p2, p1, [Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;

    iput-object p2, p0, Lorg/eclipse/jdt/internal/compiler/flow/InitializationFlowContext;->exceptionThrowers:[Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;

    new-array p1, p1, [Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;

    iput-object p1, p0, Lorg/eclipse/jdt/internal/compiler/flow/InitializationFlowContext;->exceptionThrowerFlowInfos:[Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;

    iput-object p3, p0, Lorg/eclipse/jdt/internal/compiler/flow/InitializationFlowContext;->initsBeforeContext:Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;

    return-void
.end method


# virtual methods
.method public checkInitializerExceptions(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;Lorg/eclipse/jdt/internal/compiler/flow/FlowContext;Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;)V
    .locals 3

    const/4 p3, 0x0

    :goto_0
    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/flow/InitializationFlowContext;->exceptionCount:I

    if-lt p3, v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/flow/InitializationFlowContext;->thrownExceptions:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    aget-object v0, v0, p3

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/flow/InitializationFlowContext;->exceptionThrowers:[Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;

    aget-object v1, v1, p3

    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/flow/InitializationFlowContext;->exceptionThrowerFlowInfos:[Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;

    aget-object v2, v2, p3

    invoke-virtual {p2, v0, v1, v2, p1}, Lorg/eclipse/jdt/internal/compiler/flow/FlowContext;->checkExceptionHandlers(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;)V

    add-int/lit8 p3, p3, 0x1

    goto :goto_0
.end method

.method public getInitializationContext()Lorg/eclipse/jdt/internal/compiler/flow/FlowContext;
    .locals 0

    return-object p0
.end method

.method public individualToString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "Initialization flow context"

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    :goto_0
    iget v2, p0, Lorg/eclipse/jdt/internal/compiler/flow/InitializationFlowContext;->exceptionCount:I

    if-lt v1, v2, :cond_0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/16 v2, 0x5b

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/flow/InitializationFlowContext;->thrownExceptions:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->readableName()[C

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    const/16 v2, 0x2d

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/flow/InitializationFlowContext;->exceptionThrowerFlowInfos:[Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/16 v2, 0x5d

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public recordHandlingException(Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;Z)V
    .locals 2

    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/flow/InitializationFlowContext;->thrownExceptions:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    array-length p4, p1

    iget p6, p0, Lorg/eclipse/jdt/internal/compiler/flow/InitializationFlowContext;->exceptionCount:I

    if-ne p6, p4, :cond_0

    mul-int/lit8 p6, p4, 0x2

    new-array v0, p6, [Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    iput-object v0, p0, Lorg/eclipse/jdt/internal/compiler/flow/InitializationFlowContext;->thrownExceptions:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    const/4 v1, 0x0

    invoke-static {p1, v1, v0, v1, p4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/flow/InitializationFlowContext;->exceptionThrowers:[Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;

    new-array v0, p6, [Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;

    iput-object v0, p0, Lorg/eclipse/jdt/internal/compiler/flow/InitializationFlowContext;->exceptionThrowers:[Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;

    invoke-static {p1, v1, v0, v1, p4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/flow/InitializationFlowContext;->exceptionThrowerFlowInfos:[Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;

    new-array p6, p6, [Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;

    iput-object p6, p0, Lorg/eclipse/jdt/internal/compiler/flow/InitializationFlowContext;->exceptionThrowerFlowInfos:[Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;

    invoke-static {p1, v1, p6, v1, p4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_0
    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/flow/InitializationFlowContext;->thrownExceptions:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    iget p4, p0, Lorg/eclipse/jdt/internal/compiler/flow/InitializationFlowContext;->exceptionCount:I

    aput-object p3, p1, p4

    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/flow/InitializationFlowContext;->exceptionThrowers:[Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;

    aput-object p5, p1, p4

    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/flow/InitializationFlowContext;->exceptionThrowerFlowInfos:[Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;

    add-int/lit8 p3, p4, 0x1

    iput p3, p0, Lorg/eclipse/jdt/internal/compiler/flow/InitializationFlowContext;->exceptionCount:I

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;->copy()Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;

    move-result-object p2

    aput-object p2, p1, p4

    return-void
.end method
