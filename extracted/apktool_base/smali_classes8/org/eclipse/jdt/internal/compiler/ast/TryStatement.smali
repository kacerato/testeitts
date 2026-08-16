.class public Lorg/eclipse/jdt/internal/compiler/ast/TryStatement;
.super Lorg/eclipse/jdt/internal/compiler/ast/SubRoutineStatement;
.source "SourceFile"


# static fields
.field private static final FINALLY_DOES_NOT_COMPLETE:I = 0x2

.field private static final FINALLY_INLINE:I = 0x3

.field private static final FINALLY_SUBROUTINE:I = 0x1

.field private static final NO_FINALLY:I

.field static final SECRET_ANY_HANDLER_NAME:[C

.field static final SECRET_CAUGHT_THROWABLE_VARIABLE_NAME:[C

.field static final SECRET_PRIMARY_EXCEPTION_VARIABLE_NAME:[C

.field static final SECRET_RETURN_ADDRESS_NAME:[C

.field static final SECRET_RETURN_VALUE_NAME:[C


# instance fields
.field public anyExceptionVariable:Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;

.field public catchArguments:[Lorg/eclipse/jdt/internal/compiler/ast/Argument;

.field public catchBlocks:[Lorg/eclipse/jdt/internal/compiler/ast/Block;

.field catchExitInitStateIndexes:[I

.field catchExits:[Z

.field caughtExceptionTypes:[Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

.field private caughtExceptionsCatchBlocks:[I

.field private caughtThrowableVariable:Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;

.field declaredExceptionLabels:[Lorg/eclipse/jdt/internal/compiler/codegen/ExceptionLabel;

.field public finallyBlock:Lorg/eclipse/jdt/internal/compiler/ast/Block;

.field mergedInitStateIndex:I

.field naturalExitMergeInitStateIndex:I

.field postResourcesInitStateIndexes:[I

.field postTryInitStateIndex:I

.field preTryInitStateIndex:I

.field private primaryExceptionVariable:Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;

.field private resourceExceptionLabels:[Lorg/eclipse/jdt/internal/compiler/codegen/ExceptionLabel;

.field public resources:[Lorg/eclipse/jdt/internal/compiler/ast/Statement;

.field public returnAddressVariable:Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;

.field private reusableJSRSequenceStartLabels:[Lorg/eclipse/jdt/internal/compiler/codegen/BranchLabel;

.field private reusableJSRStateIndexes:[I

.field private reusableJSRTargets:[Ljava/lang/Object;

.field private reusableJSRTargetsCount:I

.field scope:Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;

.field public secretReturnValue:Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;

.field public subRoutineInits:Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;

.field subRoutineStartLabel:Lorg/eclipse/jdt/internal/compiler/codegen/BranchLabel;

.field public tryBlock:Lorg/eclipse/jdt/internal/compiler/ast/Block;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, " returnAddress"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lorg/eclipse/jdt/internal/compiler/ast/TryStatement;->SECRET_RETURN_ADDRESS_NAME:[C

    const-string v0, " anyExceptionHandler"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lorg/eclipse/jdt/internal/compiler/ast/TryStatement;->SECRET_ANY_HANDLER_NAME:[C

    const-string v0, " primaryException"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lorg/eclipse/jdt/internal/compiler/ast/TryStatement;->SECRET_PRIMARY_EXCEPTION_VARIABLE_NAME:[C

    const-string v0, " caughtThrowable"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lorg/eclipse/jdt/internal/compiler/ast/TryStatement;->SECRET_CAUGHT_THROWABLE_VARIABLE_NAME:[C

    const-string v0, " returnValue"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lorg/eclipse/jdt/internal/compiler/ast/TryStatement;->SECRET_RETURN_VALUE_NAME:[C

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/compiler/ast/SubRoutineStatement;-><init>()V

    const/4 v0, 0x0

    new-array v1, v0, [Lorg/eclipse/jdt/internal/compiler/ast/Statement;

    iput-object v1, p0, Lorg/eclipse/jdt/internal/compiler/ast/TryStatement;->resources:[Lorg/eclipse/jdt/internal/compiler/ast/Statement;

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/TryStatement;->reusableJSRTargetsCount:I

    const/4 v0, -0x1

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/TryStatement;->mergedInitStateIndex:I

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/TryStatement;->preTryInitStateIndex:I

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/TryStatement;->postTryInitStateIndex:I

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/TryStatement;->naturalExitMergeInitStateIndex:I

    return-void
.end method

.method private finallyMode()I
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/TryStatement;->subRoutineStartLabel:Lorg/eclipse/jdt/internal/compiler/codegen/BranchLabel;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/ast/TryStatement;->isSubRoutineEscaping()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x2

    return v0

    :cond_1
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/TryStatement;->scope:Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->compilerOptions()Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;

    move-result-object v0

    iget-boolean v0, v0, Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;->inlineJsrBytecode:Z

    if-eqz v0, :cond_2

    const/4 v0, 0x3

    return v0

    :cond_2
    const/4 v0, 0x1

    return v0
.end method

.method private findCloseMethod(Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;
    .locals 7

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->isValidBinding()Z

    move-result v0

    if-eqz v0, :cond_0

    instance-of v0, p2, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    if-eqz v0, :cond_0

    move-object v2, p2

    check-cast v2, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    sget-object v3, Lorg/eclipse/jdt/internal/compiler/codegen/ConstantPool;->Close:[C

    const/4 p2, 0x0

    new-array v0, p2, [Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/ast/TryStatement;->scope:Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->compilationUnitScope()Lorg/eclipse/jdt/internal/compiler/lookup/CompilationUnitScope;

    move-result-object v1

    invoke-virtual {v2, v3, v0, v1}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->getExactMethod([C[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/CompilationUnitScope;)Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    move-result-object v0

    if-nez v0, :cond_1

    new-instance v5, Lorg/eclipse/jdt/internal/compiler/lookup/InvocationSite$EmptyWithAstNode;

    invoke-direct {v5, p1}, Lorg/eclipse/jdt/internal/compiler/lookup/InvocationSite$EmptyWithAstNode;-><init>(Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;)V

    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/ast/TryStatement;->scope:Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->compilationUnitScope()Lorg/eclipse/jdt/internal/compiler/lookup/CompilationUnitScope;

    move-result-object v1

    new-array v4, p2, [Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->findMethod(Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;[C[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/InvocationSite;Z)Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :cond_1
    :goto_0
    return-object v0
.end method

.method private generateCodeSnippet(Lorg/eclipse/jdt/internal/compiler/ast/LocalDeclaration;Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;Lorg/eclipse/jdt/internal/compiler/codegen/BranchLabel;ZII)V
    .locals 0

    .line 13
    iget-object p1, p1, Lorg/eclipse/jdt/internal/compiler/ast/LocalDeclaration;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;

    .line 14
    invoke-virtual {p2, p1}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->load(Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;)V

    .line 15
    invoke-virtual {p2, p3}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->ifnull(Lorg/eclipse/jdt/internal/compiler/codegen/BranchLabel;)V

    .line 16
    invoke-virtual {p2, p1}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->load(Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;)V

    .line 17
    iget-object p3, p1, Lorg/eclipse/jdt/internal/compiler/lookup/VariableBinding;->type:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-virtual {p2, p3}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->invokeAutoCloseableClose(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)V

    if-nez p4, :cond_0

    return-void

    .line 18
    :cond_0
    iget-object p3, p0, Lorg/eclipse/jdt/internal/compiler/ast/TryStatement;->tryBlock:Lorg/eclipse/jdt/internal/compiler/ast/Block;

    iget p3, p3, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceEnd:I

    invoke-virtual {p2, p6, p3}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->recordPositionsFrom(II)V

    .line 19
    invoke-direct {p0, p5}, Lorg/eclipse/jdt/internal/compiler/ast/TryStatement;->isDuplicateResourceReference(I)Z

    move-result p3

    if-nez p3, :cond_1

    .line 20
    invoke-virtual {p2, p1}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->removeVariable(Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;)V

    :cond_1
    return-void
.end method

.method private generateCodeSnippet(Lorg/eclipse/jdt/internal/compiler/ast/Reference;Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;Lorg/eclipse/jdt/internal/compiler/codegen/BranchLabel;ZII)V
    .locals 2

    .line 7
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/TryStatement;->scope:Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;

    const/4 v1, 0x1

    invoke-virtual {p1, v0, p2, v1}, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->generateCode(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;Z)V

    .line 8
    invoke-virtual {p2, p3}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->ifnull(Lorg/eclipse/jdt/internal/compiler/codegen/BranchLabel;)V

    .line 9
    iget-object p3, p0, Lorg/eclipse/jdt/internal/compiler/ast/TryStatement;->scope:Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;

    invoke-virtual {p1, p3, p2, v1}, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->generateCode(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;Z)V

    .line 10
    iget-object p1, p1, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->resolvedType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-virtual {p2, p1}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->invokeAutoCloseableClose(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)V

    if-nez p4, :cond_0

    return-void

    .line 11
    :cond_0
    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/ast/TryStatement;->tryBlock:Lorg/eclipse/jdt/internal/compiler/ast/Block;

    iget p1, p1, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceEnd:I

    invoke-virtual {p2, p6, p1}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->recordPositionsFrom(II)V

    .line 12
    invoke-direct {p0, p5}, Lorg/eclipse/jdt/internal/compiler/ast/TryStatement;->isDuplicateResourceReference(I)Z

    return-void
.end method

.method private varargs generateCodeSnippet(Lorg/eclipse/jdt/internal/compiler/ast/Statement;Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;Lorg/eclipse/jdt/internal/compiler/codegen/BranchLabel;Z[I)V
    .locals 8

    if-eqz p4, :cond_0

    const/4 v0, 0x0

    .line 1
    aget v0, p5, v0

    const/4 v1, 0x1

    .line 2
    aget p5, p5, v1

    move v7, p5

    move v6, v0

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    move v6, v0

    move v7, v6

    .line 3
    :goto_0
    instance-of p5, p1, Lorg/eclipse/jdt/internal/compiler/ast/LocalDeclaration;

    if-eqz p5, :cond_1

    .line 4
    move-object v2, p1

    check-cast v2, Lorg/eclipse/jdt/internal/compiler/ast/LocalDeclaration;

    move-object v1, p0

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    invoke-direct/range {v1 .. v7}, Lorg/eclipse/jdt/internal/compiler/ast/TryStatement;->generateCodeSnippet(Lorg/eclipse/jdt/internal/compiler/ast/LocalDeclaration;Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;Lorg/eclipse/jdt/internal/compiler/codegen/BranchLabel;ZII)V

    goto :goto_1

    .line 5
    :cond_1
    instance-of p5, p1, Lorg/eclipse/jdt/internal/compiler/ast/Reference;

    if-eqz p5, :cond_2

    .line 6
    move-object v2, p1

    check-cast v2, Lorg/eclipse/jdt/internal/compiler/ast/Reference;

    move-object v1, p0

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    invoke-direct/range {v1 .. v7}, Lorg/eclipse/jdt/internal/compiler/ast/TryStatement;->generateCodeSnippet(Lorg/eclipse/jdt/internal/compiler/ast/Reference;Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;Lorg/eclipse/jdt/internal/compiler/codegen/BranchLabel;ZII)V

    :cond_2
    :goto_1
    return-void
.end method

.method private isDuplicateResourceReference(I)Z
    .locals 7

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/TryStatement;->resources:[Lorg/eclipse/jdt/internal/compiler/ast/Statement;

    array-length v1, v0

    const/4 v2, 0x0

    if-ge p1, v1, :cond_8

    aget-object v0, v0, p1

    instance-of v1, v0, Lorg/eclipse/jdt/internal/compiler/ast/Reference;

    if-eqz v1, :cond_8

    check-cast v0, Lorg/eclipse/jdt/internal/compiler/ast/Reference;

    instance-of v1, v0, Lorg/eclipse/jdt/internal/compiler/ast/NameReference;

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Lorg/eclipse/jdt/internal/compiler/ast/NameReference;

    iget-object v1, v1, Lorg/eclipse/jdt/internal/compiler/ast/NameReference;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/Binding;

    goto :goto_0

    :cond_0
    instance-of v1, v0, Lorg/eclipse/jdt/internal/compiler/ast/FieldReference;

    if-eqz v1, :cond_1

    move-object v1, v0

    check-cast v1, Lorg/eclipse/jdt/internal/compiler/ast/FieldReference;

    iget-object v1, v1, Lorg/eclipse/jdt/internal/compiler/ast/FieldReference;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;

    goto :goto_0

    :cond_1
    move-object v1, v3

    :goto_0
    if-nez v1, :cond_2

    return v2

    :cond_2
    move v4, v2

    :goto_1
    if-lt v4, p1, :cond_3

    goto :goto_3

    :cond_3
    iget-object v5, p0, Lorg/eclipse/jdt/internal/compiler/ast/TryStatement;->resources:[Lorg/eclipse/jdt/internal/compiler/ast/Statement;

    aget-object v5, v5, v4

    instance-of v6, v5, Lorg/eclipse/jdt/internal/compiler/ast/LocalDeclaration;

    if-eqz v6, :cond_4

    check-cast v5, Lorg/eclipse/jdt/internal/compiler/ast/LocalDeclaration;

    iget-object v5, v5, Lorg/eclipse/jdt/internal/compiler/ast/LocalDeclaration;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;

    goto :goto_2

    :cond_4
    instance-of v6, v5, Lorg/eclipse/jdt/internal/compiler/ast/NameReference;

    if-eqz v6, :cond_5

    check-cast v5, Lorg/eclipse/jdt/internal/compiler/ast/NameReference;

    iget-object v5, v5, Lorg/eclipse/jdt/internal/compiler/ast/NameReference;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/Binding;

    goto :goto_2

    :cond_5
    instance-of v6, v5, Lorg/eclipse/jdt/internal/compiler/ast/FieldReference;

    if-eqz v6, :cond_6

    check-cast v5, Lorg/eclipse/jdt/internal/compiler/ast/FieldReference;

    iget-object v5, v5, Lorg/eclipse/jdt/internal/compiler/ast/FieldReference;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;

    goto :goto_2

    :cond_6
    move-object v5, v3

    :goto_2
    if-ne v5, v1, :cond_7

    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/ast/TryStatement;->scope:Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object p1

    invoke-virtual {p1, v0}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->duplicateResourceReference(Lorg/eclipse/jdt/internal/compiler/ast/Reference;)V

    const/4 p1, 0x1

    return p1

    :cond_7
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_8
    :goto_3
    return v2
.end method

.method private isUncheckedCatchBlock(I)Z
    .locals 5

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/TryStatement;->caughtExceptionsCatchBlocks:[I

    const/4 v1, 0x1

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/TryStatement;->caughtExceptionTypes:[Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    aget-object p1, v0, p1

    invoke-virtual {p1, v1}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->isUncheckedException(Z)Z

    move-result p1

    return p1

    :cond_0
    array-length v0, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-lt v3, v0, :cond_1

    return v2

    :cond_1
    iget-object v4, p0, Lorg/eclipse/jdt/internal/compiler/ast/TryStatement;->caughtExceptionsCatchBlocks:[I

    aget v4, v4, v3

    if-ne v4, p1, :cond_2

    iget-object v4, p0, Lorg/eclipse/jdt/internal/compiler/ast/TryStatement;->caughtExceptionTypes:[Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    aget-object v4, v4, v3

    invoke-virtual {v4, v1}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->isUncheckedException(Z)Z

    move-result v4

    if-eqz v4, :cond_2

    return v1

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method private prepareCatchInfo(Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;Lorg/eclipse/jdt/internal/compiler/flow/ExceptionHandlingFlowContext;Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;I)Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;
    .locals 1

    invoke-direct {p0, p4}, Lorg/eclipse/jdt/internal/compiler/ast/TryStatement;->isUncheckedCatchBlock(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;->unconditionalCopy()Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;

    move-result-object p1

    invoke-virtual {p2, p4}, Lorg/eclipse/jdt/internal/compiler/flow/ExceptionHandlingFlowContext;->initsOnException(I)Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;->addPotentialInitializationsFrom(Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;)Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;

    move-result-object p1

    invoke-virtual {p1, p3}, Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;->addPotentialInitializationsFrom(Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;)Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;

    move-result-object p1

    iget-object p3, p2, Lorg/eclipse/jdt/internal/compiler/flow/ExceptionHandlingFlowContext;->initsOnReturn:Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;

    invoke-virtual {p1, p3}, Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;->addPotentialInitializationsFrom(Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;)Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;

    move-result-object p1

    iget-object p2, p2, Lorg/eclipse/jdt/internal/compiler/flow/FlowContext;->initsOnFinally:Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;

    invoke-virtual {p1, p2}, Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;->addNullInfoFrom(Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;)Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-virtual {p2, p4}, Lorg/eclipse/jdt/internal/compiler/flow/ExceptionHandlingFlowContext;->initsOnException(I)Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;

    move-result-object v0

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;->nullInfoLessUnconditionalCopy()Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;

    move-result-object p1

    invoke-virtual {p1, v0}, Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;->addPotentialInitializationsFrom(Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;)Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;

    move-result-object p1

    invoke-virtual {p1, v0}, Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;->addNullInfoFrom(Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;)Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;

    move-result-object p1

    invoke-virtual {p3}, Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;->nullInfoLessUnconditionalCopy()Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;

    move-result-object p3

    invoke-virtual {p1, p3}, Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;->addPotentialInitializationsFrom(Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;)Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;

    move-result-object p1

    iget-object p2, p2, Lorg/eclipse/jdt/internal/compiler/flow/ExceptionHandlingFlowContext;->initsOnReturn:Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;->nullInfoLessUnconditionalCopy()Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;->addPotentialInitializationsFrom(Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;)Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;

    move-result-object p1

    :goto_0
    iget-object p2, p0, Lorg/eclipse/jdt/internal/compiler/ast/TryStatement;->catchArguments:[Lorg/eclipse/jdt/internal/compiler/ast/Argument;

    aget-object p2, p2, p4

    iget-object p2, p2, Lorg/eclipse/jdt/internal/compiler/ast/LocalDeclaration;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;

    invoke-virtual {p1, p2}, Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;->markAsDefinitelyAssigned(Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;)V

    invoke-virtual {p1, p2}, Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;->markAsDefinitelyNonNull(Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;)V

    iget-object p2, p0, Lorg/eclipse/jdt/internal/compiler/ast/TryStatement;->tryBlock:Lorg/eclipse/jdt/internal/compiler/ast/Block;

    iget-object p2, p2, Lorg/eclipse/jdt/internal/compiler/ast/Block;->statements:[Lorg/eclipse/jdt/internal/compiler/ast/Statement;

    if-nez p2, :cond_1

    iget-object p2, p0, Lorg/eclipse/jdt/internal/compiler/ast/TryStatement;->resources:[Lorg/eclipse/jdt/internal/compiler/ast/Statement;

    if-nez p2, :cond_1

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;->setReachMode(I)Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;

    :cond_1
    return-object p1
.end method


# virtual methods
.method public analyseCode(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;Lorg/eclipse/jdt/internal/compiler/flow/FlowContext;Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;)Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;
    .locals 26

    move-object/from16 v8, p0

    move-object/from16 v9, p1

    move-object/from16 v10, p2

    move-object/from16 v11, p3

    invoke-virtual/range {p1 .. p1}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->methodScope()Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;

    move-result-object v0

    invoke-virtual {v0, v11}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;->recordInitializationStates(Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;)I

    move-result v0

    iput v0, v8, Lorg/eclipse/jdt/internal/compiler/ast/TryStatement;->preTryInitStateIndex:I

    iget-object v0, v8, Lorg/eclipse/jdt/internal/compiler/ast/TryStatement;->anyExceptionVariable:Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;

    const/4 v12, 0x1

    if-eqz v0, :cond_0

    iput v12, v0, Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;->useFlag:I

    :cond_0
    iget-object v0, v8, Lorg/eclipse/jdt/internal/compiler/ast/TryStatement;->primaryExceptionVariable:Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;

    if-eqz v0, :cond_1

    iput v12, v0, Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;->useFlag:I

    :cond_1
    iget-object v0, v8, Lorg/eclipse/jdt/internal/compiler/ast/TryStatement;->caughtThrowableVariable:Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;

    if-eqz v0, :cond_2

    iput v12, v0, Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;->useFlag:I

    :cond_2
    iget-object v0, v8, Lorg/eclipse/jdt/internal/compiler/ast/TryStatement;->returnAddressVariable:Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;

    if-eqz v0, :cond_3

    iput v12, v0, Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;->useFlag:I

    :cond_3
    iget-object v0, v8, Lorg/eclipse/jdt/internal/compiler/ast/TryStatement;->resources:[Lorg/eclipse/jdt/internal/compiler/ast/Statement;

    array-length v13, v0

    if-lez v13, :cond_4

    new-array v0, v13, [I

    iput-object v0, v8, Lorg/eclipse/jdt/internal/compiler/ast/TryStatement;->postResourcesInitStateIndexes:[I

    :cond_4
    iget-object v0, v8, Lorg/eclipse/jdt/internal/compiler/ast/TryStatement;->subRoutineStartLabel:Lorg/eclipse/jdt/internal/compiler/codegen/BranchLabel;

    const/4 v7, 0x0

    const/4 v6, 0x0

    if-nez v0, :cond_13

    instance-of v0, v10, Lorg/eclipse/jdt/internal/compiler/flow/FinallyFlowContext;

    if-eqz v0, :cond_5

    move-object v0, v10

    check-cast v0, Lorg/eclipse/jdt/internal/compiler/flow/FinallyFlowContext;

    iget-object v1, v0, Lorg/eclipse/jdt/internal/compiler/flow/FinallyFlowContext;->tryContext:Lorg/eclipse/jdt/internal/compiler/flow/FlowContext;

    iput-object v1, v0, Lorg/eclipse/jdt/internal/compiler/flow/TryFlowContext;->outerTryContext:Lorg/eclipse/jdt/internal/compiler/flow/FlowContext;

    :cond_5
    new-instance v5, Lorg/eclipse/jdt/internal/compiler/flow/ExceptionHandlingFlowContext;

    iget-object v3, v8, Lorg/eclipse/jdt/internal/compiler/ast/TryStatement;->caughtExceptionTypes:[Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    iget-object v4, v8, Lorg/eclipse/jdt/internal/compiler/ast/TryStatement;->caughtExceptionsCatchBlocks:[I

    const/16 v16, 0x0

    iget-object v2, v8, Lorg/eclipse/jdt/internal/compiler/ast/TryStatement;->scope:Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;

    move-object v0, v5

    move-object/from16 v1, p2

    move-object/from16 v17, v2

    move-object/from16 v2, p0

    move-object v14, v5

    move-object/from16 v5, v16

    move v15, v6

    move-object/from16 v6, v17

    move-object/from16 v7, p3

    invoke-direct/range {v0 .. v7}, Lorg/eclipse/jdt/internal/compiler/flow/ExceptionHandlingFlowContext;-><init>(Lorg/eclipse/jdt/internal/compiler/flow/FlowContext;Lorg/eclipse/jdt/internal/compiler/ast/TryStatement;[Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;[ILorg/eclipse/jdt/internal/compiler/flow/FlowContext;Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;)V

    iput v15, v14, Lorg/eclipse/jdt/internal/compiler/flow/FlowContext;->conditionalLevel:I

    invoke-virtual/range {p3 .. p3}, Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;->copy()Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;

    move-result-object v0

    move v6, v15

    :goto_0
    if-lt v6, v13, :cond_d

    iget-object v1, v8, Lorg/eclipse/jdt/internal/compiler/ast/TryStatement;->tryBlock:Lorg/eclipse/jdt/internal/compiler/ast/Block;

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/compiler/ast/Block;->isEmptyBlock()Z

    move-result v1

    if-nez v1, :cond_6

    iget-object v1, v8, Lorg/eclipse/jdt/internal/compiler/ast/TryStatement;->tryBlock:Lorg/eclipse/jdt/internal/compiler/ast/Block;

    invoke-virtual {v1, v9, v14, v0}, Lorg/eclipse/jdt/internal/compiler/ast/Block;->analyseCode(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;Lorg/eclipse/jdt/internal/compiler/flow/FlowContext;Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;)Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;

    move-result-object v0

    iget v1, v0, Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;->tagBits:I

    and-int/2addr v1, v12

    if-eqz v1, :cond_6

    iget v1, v8, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->bits:I

    const/high16 v2, 0x20000000

    or-int/2addr v1, v2

    iput v1, v8, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->bits:I

    :cond_6
    if-lez v13, :cond_9

    invoke-virtual/range {p1 .. p1}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->methodScope()Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;->recordInitializationStates(Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;)I

    move-result v1

    iput v1, v8, Lorg/eclipse/jdt/internal/compiler/ast/TryStatement;->postTryInitStateIndex:I

    move v6, v15

    :goto_1
    if-lt v6, v13, :cond_7

    goto :goto_2

    :cond_7
    iget-object v1, v8, Lorg/eclipse/jdt/internal/compiler/ast/TryStatement;->resources:[Lorg/eclipse/jdt/internal/compiler/ast/Statement;

    aget-object v1, v1, v6

    instance-of v2, v1, Lorg/eclipse/jdt/internal/compiler/ast/LocalDeclaration;

    if-eqz v2, :cond_8

    check-cast v1, Lorg/eclipse/jdt/internal/compiler/ast/LocalDeclaration;

    iget-object v1, v1, Lorg/eclipse/jdt/internal/compiler/ast/LocalDeclaration;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;

    invoke-virtual {v0, v1}, Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;->resetAssignmentInfo(Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;)V

    :cond_8
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_9
    :goto_2
    iget-object v1, v8, Lorg/eclipse/jdt/internal/compiler/ast/TryStatement;->scope:Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;

    invoke-virtual {v14, v1, v8}, Lorg/eclipse/jdt/internal/compiler/flow/ExceptionHandlingFlowContext;->complainIfUnusedExceptionHandlers(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;Lorg/eclipse/jdt/internal/compiler/ast/TryStatement;)V

    iget-object v1, v8, Lorg/eclipse/jdt/internal/compiler/ast/TryStatement;->catchArguments:[Lorg/eclipse/jdt/internal/compiler/ast/Argument;

    if-eqz v1, :cond_c

    iget-object v1, v8, Lorg/eclipse/jdt/internal/compiler/ast/TryStatement;->catchBlocks:[Lorg/eclipse/jdt/internal/compiler/ast/Block;

    array-length v1, v1

    new-array v2, v1, [Z

    iput-object v2, v8, Lorg/eclipse/jdt/internal/compiler/ast/TryStatement;->catchExits:[Z

    new-array v2, v1, [I

    iput-object v2, v8, Lorg/eclipse/jdt/internal/compiler/ast/TryStatement;->catchExitInitStateIndexes:[I

    move v6, v15

    :goto_3
    if-lt v6, v1, :cond_a

    goto :goto_5

    :cond_a
    invoke-direct {v8, v11, v14, v0, v6}, Lorg/eclipse/jdt/internal/compiler/ast/TryStatement;->prepareCatchInfo(Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;Lorg/eclipse/jdt/internal/compiler/flow/ExceptionHandlingFlowContext;Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;I)Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;

    move-result-object v2

    iget v3, v10, Lorg/eclipse/jdt/internal/compiler/flow/FlowContext;->conditionalLevel:I

    add-int/2addr v3, v12

    iput v3, v10, Lorg/eclipse/jdt/internal/compiler/flow/FlowContext;->conditionalLevel:I

    iget-object v3, v8, Lorg/eclipse/jdt/internal/compiler/ast/TryStatement;->catchBlocks:[Lorg/eclipse/jdt/internal/compiler/ast/Block;

    aget-object v3, v3, v6

    invoke-virtual {v3, v9, v10, v2}, Lorg/eclipse/jdt/internal/compiler/ast/Block;->analyseCode(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;Lorg/eclipse/jdt/internal/compiler/flow/FlowContext;Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;)Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;

    move-result-object v2

    iget v3, v10, Lorg/eclipse/jdt/internal/compiler/flow/FlowContext;->conditionalLevel:I

    sub-int/2addr v3, v12

    iput v3, v10, Lorg/eclipse/jdt/internal/compiler/flow/FlowContext;->conditionalLevel:I

    iget-object v3, v8, Lorg/eclipse/jdt/internal/compiler/ast/TryStatement;->catchExitInitStateIndexes:[I

    invoke-virtual/range {p1 .. p1}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->methodScope()Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;

    move-result-object v4

    invoke-virtual {v4, v2}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;->recordInitializationStates(Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;)I

    move-result v4

    aput v4, v3, v6

    iget-object v3, v8, Lorg/eclipse/jdt/internal/compiler/ast/TryStatement;->catchExits:[Z

    iget v4, v2, Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;->tagBits:I

    and-int/2addr v4, v12

    if-eqz v4, :cond_b

    move v4, v12

    goto :goto_4

    :cond_b
    move v4, v15

    :goto_4
    aput-boolean v4, v3, v6

    invoke-virtual {v2}, Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;->unconditionalInits()Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;->mergedWith(Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;)Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;

    move-result-object v0

    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    :cond_c
    :goto_5
    invoke-virtual/range {p1 .. p1}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->methodScope()Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;->recordInitializationStates(Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;)I

    move-result v1

    iput v1, v8, Lorg/eclipse/jdt/internal/compiler/ast/TryStatement;->mergedInitStateIndex:I

    iget-object v1, v14, Lorg/eclipse/jdt/internal/compiler/flow/FlowContext;->initsOnFinally:Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;

    invoke-virtual {v10, v1}, Lorg/eclipse/jdt/internal/compiler/flow/FlowContext;->mergeFinallyNullInfo(Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;)V

    return-object v0

    :cond_d
    iget-object v1, v8, Lorg/eclipse/jdt/internal/compiler/ast/TryStatement;->resources:[Lorg/eclipse/jdt/internal/compiler/ast/Statement;

    aget-object v1, v1, v6

    invoke-virtual {v1, v9, v14, v0}, Lorg/eclipse/jdt/internal/compiler/ast/Statement;->analyseCode(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;Lorg/eclipse/jdt/internal/compiler/flow/FlowContext;Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;)Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;

    move-result-object v7

    iget-object v0, v8, Lorg/eclipse/jdt/internal/compiler/ast/TryStatement;->postResourcesInitStateIndexes:[I

    invoke-virtual/range {p1 .. p1}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->methodScope()Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;

    move-result-object v2

    invoke-virtual {v2, v7}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;->recordInitializationStates(Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;)I

    move-result v2

    aput v2, v0, v6

    instance-of v0, v1, Lorg/eclipse/jdt/internal/compiler/ast/LocalDeclaration;

    if-eqz v0, :cond_e

    move-object v0, v1

    check-cast v0, Lorg/eclipse/jdt/internal/compiler/ast/LocalDeclaration;

    iget-object v0, v0, Lorg/eclipse/jdt/internal/compiler/ast/LocalDeclaration;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;

    iget-object v2, v0, Lorg/eclipse/jdt/internal/compiler/lookup/VariableBinding;->type:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    goto :goto_7

    :cond_e
    instance-of v0, v1, Lorg/eclipse/jdt/internal/compiler/ast/NameReference;

    if-eqz v0, :cond_f

    move-object v0, v1

    check-cast v0, Lorg/eclipse/jdt/internal/compiler/ast/NameReference;

    iget-object v0, v0, Lorg/eclipse/jdt/internal/compiler/ast/NameReference;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/Binding;

    instance-of v2, v0, Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;

    if-eqz v2, :cond_f

    check-cast v0, Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;

    goto :goto_6

    :cond_f
    const/4 v0, 0x0

    :goto_6
    move-object v2, v1

    check-cast v2, Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    iget-object v2, v2, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->resolvedType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    :goto_7
    if-eqz v0, :cond_10

    iput v12, v0, Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;->useFlag:I

    iget-object v3, v0, Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;->closeTracker:Lorg/eclipse/jdt/internal/compiler/ast/FakedTrackingVariable;

    if-eqz v3, :cond_10

    invoke-virtual {v3}, Lorg/eclipse/jdt/internal/compiler/ast/FakedTrackingVariable;->withdraw()V

    const/4 v5, 0x0

    iput-object v5, v0, Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;->closeTracker:Lorg/eclipse/jdt/internal/compiler/ast/FakedTrackingVariable;

    goto :goto_8

    :cond_10
    const/4 v5, 0x0

    :goto_8
    invoke-direct {v8, v1, v2}, Lorg/eclipse/jdt/internal/compiler/ast/TryStatement;->findCloseMethod(Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    move-result-object v0

    if-eqz v0, :cond_11

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->isValidBinding()Z

    move-result v1

    if-eqz v1, :cond_11

    iget-object v1, v0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->returnType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    iget v1, v1, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->id:I

    const/4 v2, 0x6

    if-ne v1, v2, :cond_11

    iget-object v4, v0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->thrownExceptions:[Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    array-length v3, v4

    move v2, v15

    :goto_9
    if-lt v2, v3, :cond_12

    :cond_11
    move-object/from16 v22, v5

    goto :goto_a

    :cond_12
    aget-object v1, v4, v2

    iget-object v0, v8, Lorg/eclipse/jdt/internal/compiler/ast/TryStatement;->resources:[Lorg/eclipse/jdt/internal/compiler/ast/Statement;

    aget-object v17, v0, v6

    const/16 v19, 0x1

    move-object v0, v14

    move/from16 v20, v2

    move-object/from16 v2, v17

    move/from16 v17, v3

    move-object v3, v7

    move-object/from16 v21, v4

    move-object/from16 v4, p1

    move-object/from16 v22, v5

    move/from16 v5, v19

    invoke-virtual/range {v0 .. v5}, Lorg/eclipse/jdt/internal/compiler/flow/FlowContext;->checkExceptionHandlers(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;Z)V

    add-int/lit8 v2, v20, 0x1

    move/from16 v3, v17

    move-object/from16 v4, v21

    move-object/from16 v5, v22

    goto :goto_9

    :goto_a
    add-int/lit8 v6, v6, 0x1

    move-object v0, v7

    goto/16 :goto_0

    :cond_13
    move v15, v6

    move-object/from16 v22, v7

    new-instance v14, Lorg/eclipse/jdt/internal/compiler/flow/InsideSubRoutineFlowContext;

    invoke-direct {v14, v10, v8}, Lorg/eclipse/jdt/internal/compiler/flow/InsideSubRoutineFlowContext;-><init>(Lorg/eclipse/jdt/internal/compiler/flow/FlowContext;Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;)V

    instance-of v0, v10, Lorg/eclipse/jdt/internal/compiler/flow/FinallyFlowContext;

    if-eqz v0, :cond_14

    move-object v0, v10

    check-cast v0, Lorg/eclipse/jdt/internal/compiler/flow/FinallyFlowContext;

    iget-object v0, v0, Lorg/eclipse/jdt/internal/compiler/flow/FinallyFlowContext;->tryContext:Lorg/eclipse/jdt/internal/compiler/flow/FlowContext;

    iput-object v0, v14, Lorg/eclipse/jdt/internal/compiler/flow/TryFlowContext;->outerTryContext:Lorg/eclipse/jdt/internal/compiler/flow/FlowContext;

    :cond_14
    new-instance v7, Lorg/eclipse/jdt/internal/compiler/flow/ExceptionHandlingFlowContext;

    iget-object v3, v8, Lorg/eclipse/jdt/internal/compiler/ast/TryStatement;->caughtExceptionTypes:[Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    iget-object v4, v8, Lorg/eclipse/jdt/internal/compiler/ast/TryStatement;->caughtExceptionsCatchBlocks:[I

    const/4 v5, 0x0

    iget-object v6, v8, Lorg/eclipse/jdt/internal/compiler/ast/TryStatement;->scope:Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;

    move-object v0, v7

    move-object v1, v14

    move-object/from16 v2, p0

    move-object v12, v7

    move-object/from16 v7, p3

    invoke-direct/range {v0 .. v7}, Lorg/eclipse/jdt/internal/compiler/flow/ExceptionHandlingFlowContext;-><init>(Lorg/eclipse/jdt/internal/compiler/flow/FlowContext;Lorg/eclipse/jdt/internal/compiler/ast/TryStatement;[Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;[ILorg/eclipse/jdt/internal/compiler/flow/FlowContext;Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;)V

    iget-object v0, v12, Lorg/eclipse/jdt/internal/compiler/flow/FlowContext;->initsOnFinally:Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;

    iput-object v0, v14, Lorg/eclipse/jdt/internal/compiler/flow/FlowContext;->initsOnFinally:Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;

    iget-object v0, v8, Lorg/eclipse/jdt/internal/compiler/ast/TryStatement;->finallyBlock:Lorg/eclipse/jdt/internal/compiler/ast/Block;

    new-instance v6, Lorg/eclipse/jdt/internal/compiler/flow/FinallyFlowContext;

    iget-object v1, v8, Lorg/eclipse/jdt/internal/compiler/ast/TryStatement;->finallyBlock:Lorg/eclipse/jdt/internal/compiler/ast/Block;

    invoke-direct {v6, v10, v1, v12}, Lorg/eclipse/jdt/internal/compiler/flow/FinallyFlowContext;-><init>(Lorg/eclipse/jdt/internal/compiler/flow/FlowContext;Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;Lorg/eclipse/jdt/internal/compiler/flow/ExceptionHandlingFlowContext;)V

    invoke-virtual/range {p3 .. p3}, Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;->nullInfoLessUnconditionalCopy()Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;

    move-result-object v1

    invoke-virtual {v0, v9, v6, v1}, Lorg/eclipse/jdt/internal/compiler/ast/Block;->analyseCode(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;Lorg/eclipse/jdt/internal/compiler/flow/FlowContext;Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;)Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;

    move-result-object v0

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;->unconditionalInits()Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;

    move-result-object v7

    iput v15, v12, Lorg/eclipse/jdt/internal/compiler/flow/FlowContext;->conditionalLevel:I

    sget-object v0, Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;->DEAD_END:Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;

    if-ne v7, v0, :cond_15

    iget v0, v8, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->bits:I

    or-int/lit16 v0, v0, 0x4000

    iput v0, v8, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->bits:I

    iget-object v0, v8, Lorg/eclipse/jdt/internal/compiler/ast/TryStatement;->scope:Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object v0

    iget-object v1, v8, Lorg/eclipse/jdt/internal/compiler/ast/TryStatement;->finallyBlock:Lorg/eclipse/jdt/internal/compiler/ast/Block;

    invoke-virtual {v0, v1}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->finallyMustCompleteNormally(Lorg/eclipse/jdt/internal/compiler/ast/Block;)V

    goto :goto_c

    :cond_15
    invoke-virtual {v7}, Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;->copy()Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;

    move-result-object v0

    iget-object v1, v8, Lorg/eclipse/jdt/internal/compiler/ast/TryStatement;->tryBlock:Lorg/eclipse/jdt/internal/compiler/ast/Block;

    iget-object v1, v1, Lorg/eclipse/jdt/internal/compiler/ast/Block;->scope:Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;

    iput-object v0, v1, Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;->finallyInfo:Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;

    iget-object v1, v8, Lorg/eclipse/jdt/internal/compiler/ast/TryStatement;->catchBlocks:[Lorg/eclipse/jdt/internal/compiler/ast/Block;

    if-eqz v1, :cond_17

    move v1, v15

    :goto_b
    iget-object v2, v8, Lorg/eclipse/jdt/internal/compiler/ast/TryStatement;->catchBlocks:[Lorg/eclipse/jdt/internal/compiler/ast/Block;

    array-length v3, v2

    if-lt v1, v3, :cond_16

    goto :goto_c

    :cond_16
    aget-object v2, v2, v1

    iget-object v2, v2, Lorg/eclipse/jdt/internal/compiler/ast/Block;->scope:Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;

    iput-object v0, v2, Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;->finallyInfo:Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;

    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    :cond_17
    :goto_c
    iput-object v7, v8, Lorg/eclipse/jdt/internal/compiler/ast/TryStatement;->subRoutineInits:Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;

    invoke-virtual/range {p3 .. p3}, Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;->copy()Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;

    move-result-object v0

    move v5, v15

    :goto_d
    if-lt v5, v13, :cond_21

    iget-object v1, v8, Lorg/eclipse/jdt/internal/compiler/ast/TryStatement;->tryBlock:Lorg/eclipse/jdt/internal/compiler/ast/Block;

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/compiler/ast/Block;->isEmptyBlock()Z

    move-result v1

    if-nez v1, :cond_18

    iget-object v1, v8, Lorg/eclipse/jdt/internal/compiler/ast/TryStatement;->tryBlock:Lorg/eclipse/jdt/internal/compiler/ast/Block;

    invoke-virtual {v1, v9, v12, v0}, Lorg/eclipse/jdt/internal/compiler/ast/Block;->analyseCode(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;Lorg/eclipse/jdt/internal/compiler/flow/FlowContext;Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;)Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;

    move-result-object v0

    iget v1, v0, Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;->tagBits:I

    const/4 v2, 0x1

    and-int/2addr v1, v2

    if-eqz v1, :cond_18

    iget v1, v8, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->bits:I

    const/high16 v16, 0x20000000

    or-int v1, v1, v16

    iput v1, v8, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->bits:I

    :cond_18
    if-lez v13, :cond_1b

    invoke-virtual/range {p1 .. p1}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->methodScope()Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;->recordInitializationStates(Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;)I

    move-result v1

    iput v1, v8, Lorg/eclipse/jdt/internal/compiler/ast/TryStatement;->postTryInitStateIndex:I

    move v1, v15

    :goto_e
    if-lt v1, v13, :cond_19

    goto :goto_f

    :cond_19
    iget-object v2, v8, Lorg/eclipse/jdt/internal/compiler/ast/TryStatement;->resources:[Lorg/eclipse/jdt/internal/compiler/ast/Statement;

    aget-object v2, v2, v1

    instance-of v3, v2, Lorg/eclipse/jdt/internal/compiler/ast/LocalDeclaration;

    if-eqz v3, :cond_1a

    check-cast v2, Lorg/eclipse/jdt/internal/compiler/ast/LocalDeclaration;

    iget-object v2, v2, Lorg/eclipse/jdt/internal/compiler/ast/LocalDeclaration;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;

    invoke-virtual {v0, v2}, Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;->resetAssignmentInfo(Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;)V

    :cond_1a
    add-int/lit8 v1, v1, 0x1

    goto :goto_e

    :cond_1b
    :goto_f
    iget-object v1, v8, Lorg/eclipse/jdt/internal/compiler/ast/TryStatement;->scope:Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;

    invoke-virtual {v12, v1, v8}, Lorg/eclipse/jdt/internal/compiler/flow/ExceptionHandlingFlowContext;->complainIfUnusedExceptionHandlers(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;Lorg/eclipse/jdt/internal/compiler/ast/TryStatement;)V

    iget-object v1, v8, Lorg/eclipse/jdt/internal/compiler/ast/TryStatement;->catchArguments:[Lorg/eclipse/jdt/internal/compiler/ast/Argument;

    if-eqz v1, :cond_1e

    iget-object v1, v8, Lorg/eclipse/jdt/internal/compiler/ast/TryStatement;->catchBlocks:[Lorg/eclipse/jdt/internal/compiler/ast/Block;

    array-length v1, v1

    new-array v2, v1, [Z

    iput-object v2, v8, Lorg/eclipse/jdt/internal/compiler/ast/TryStatement;->catchExits:[Z

    new-array v2, v1, [I

    iput-object v2, v8, Lorg/eclipse/jdt/internal/compiler/ast/TryStatement;->catchExitInitStateIndexes:[I

    move v2, v15

    :goto_10
    if-lt v2, v1, :cond_1c

    goto :goto_12

    :cond_1c
    invoke-direct {v8, v11, v12, v0, v2}, Lorg/eclipse/jdt/internal/compiler/ast/TryStatement;->prepareCatchInfo(Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;Lorg/eclipse/jdt/internal/compiler/flow/ExceptionHandlingFlowContext;Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;I)Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;

    move-result-object v3

    const/4 v4, 0x1

    iput v4, v14, Lorg/eclipse/jdt/internal/compiler/flow/FlowContext;->conditionalLevel:I

    iget-object v5, v8, Lorg/eclipse/jdt/internal/compiler/ast/TryStatement;->catchBlocks:[Lorg/eclipse/jdt/internal/compiler/ast/Block;

    aget-object v5, v5, v2

    invoke-virtual {v5, v9, v14, v3}, Lorg/eclipse/jdt/internal/compiler/ast/Block;->analyseCode(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;Lorg/eclipse/jdt/internal/compiler/flow/FlowContext;Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;)Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;

    move-result-object v3

    iget-object v5, v8, Lorg/eclipse/jdt/internal/compiler/ast/TryStatement;->catchExitInitStateIndexes:[I

    invoke-virtual/range {p1 .. p1}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->methodScope()Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;

    move-result-object v13

    invoke-virtual {v13, v3}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;->recordInitializationStates(Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;)I

    move-result v13

    aput v13, v5, v2

    iget-object v5, v8, Lorg/eclipse/jdt/internal/compiler/ast/TryStatement;->catchExits:[Z

    iget v13, v3, Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;->tagBits:I

    and-int/2addr v13, v4

    if-eqz v13, :cond_1d

    const/4 v4, 0x1

    goto :goto_11

    :cond_1d
    move v4, v15

    :goto_11
    aput-boolean v4, v5, v2

    invoke-virtual {v3}, Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;->unconditionalInits()Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;->mergedWith(Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;)Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;

    move-result-object v0

    add-int/lit8 v2, v2, 0x1

    goto :goto_10

    :cond_1e
    :goto_12
    iget v1, v0, Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;->tagBits:I

    and-int/lit8 v1, v1, 0x3

    if-nez v1, :cond_1f

    invoke-virtual/range {p3 .. p3}, Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;->unconditionalCopy()Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;->addPotentialInitializationsFrom(Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;)Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;

    move-result-object v1

    iget-object v2, v14, Lorg/eclipse/jdt/internal/compiler/flow/InsideSubRoutineFlowContext;->initsOnReturn:Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;

    invoke-virtual {v1, v2}, Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;->addPotentialInitializationsFrom(Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;)Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;

    move-result-object v1

    goto :goto_13

    :cond_1f
    iget-object v1, v14, Lorg/eclipse/jdt/internal/compiler/flow/InsideSubRoutineFlowContext;->initsOnReturn:Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;

    :goto_13
    iget-object v2, v12, Lorg/eclipse/jdt/internal/compiler/flow/FlowContext;->initsOnFinally:Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;

    invoke-virtual {v1, v2}, Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;->addNullInfoFrom(Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;)Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;

    move-result-object v1

    invoke-virtual {v6, v1, v9}, Lorg/eclipse/jdt/internal/compiler/flow/FinallyFlowContext;->complainOnDeferredChecks(Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;)V

    iget-object v1, v12, Lorg/eclipse/jdt/internal/compiler/flow/FlowContext;->initsOnFinally:Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;

    invoke-virtual {v10, v1}, Lorg/eclipse/jdt/internal/compiler/flow/FlowContext;->mergeFinallyNullInfo(Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;)V

    invoke-virtual/range {p1 .. p1}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->methodScope()Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;->recordInitializationStates(Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;)I

    move-result v1

    iput v1, v8, Lorg/eclipse/jdt/internal/compiler/ast/TryStatement;->naturalExitMergeInitStateIndex:I

    sget-object v1, Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;->DEAD_END:Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;

    if-ne v7, v1, :cond_20

    invoke-virtual/range {p1 .. p1}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->methodScope()Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;

    move-result-object v0

    invoke-virtual {v0, v7}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;->recordInitializationStates(Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;)I

    move-result v0

    iput v0, v8, Lorg/eclipse/jdt/internal/compiler/ast/TryStatement;->mergedInitStateIndex:I

    return-object v7

    :cond_20
    invoke-virtual {v0, v7}, Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;->addInitializationsFrom(Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;)Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;

    move-result-object v0

    invoke-virtual/range {p1 .. p1}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->methodScope()Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;->recordInitializationStates(Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;)I

    move-result v1

    iput v1, v8, Lorg/eclipse/jdt/internal/compiler/ast/TryStatement;->mergedInitStateIndex:I

    return-object v0

    :cond_21
    const/high16 v16, 0x20000000

    iget-object v1, v8, Lorg/eclipse/jdt/internal/compiler/ast/TryStatement;->resources:[Lorg/eclipse/jdt/internal/compiler/ast/Statement;

    aget-object v1, v1, v5

    invoke-virtual {v1, v9, v12, v0}, Lorg/eclipse/jdt/internal/compiler/ast/Statement;->analyseCode(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;Lorg/eclipse/jdt/internal/compiler/flow/FlowContext;Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;)Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;

    move-result-object v4

    iget-object v0, v8, Lorg/eclipse/jdt/internal/compiler/ast/TryStatement;->postResourcesInitStateIndexes:[I

    invoke-virtual/range {p1 .. p1}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->methodScope()Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;

    move-result-object v2

    invoke-virtual {v2, v4}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;->recordInitializationStates(Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;)I

    move-result v2

    aput v2, v0, v5

    instance-of v0, v1, Lorg/eclipse/jdt/internal/compiler/ast/LocalDeclaration;

    if-eqz v0, :cond_22

    iget-object v0, v8, Lorg/eclipse/jdt/internal/compiler/ast/TryStatement;->resources:[Lorg/eclipse/jdt/internal/compiler/ast/Statement;

    aget-object v0, v0, v5

    check-cast v0, Lorg/eclipse/jdt/internal/compiler/ast/LocalDeclaration;

    iget-object v0, v0, Lorg/eclipse/jdt/internal/compiler/ast/LocalDeclaration;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;

    iget-object v2, v0, Lorg/eclipse/jdt/internal/compiler/lookup/VariableBinding;->type:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    goto :goto_15

    :cond_22
    instance-of v0, v1, Lorg/eclipse/jdt/internal/compiler/ast/NameReference;

    if-eqz v0, :cond_23

    move-object v0, v1

    check-cast v0, Lorg/eclipse/jdt/internal/compiler/ast/NameReference;

    iget-object v0, v0, Lorg/eclipse/jdt/internal/compiler/ast/NameReference;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/Binding;

    instance-of v2, v0, Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;

    if-eqz v2, :cond_23

    check-cast v0, Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;

    goto :goto_14

    :cond_23
    move-object/from16 v0, v22

    :goto_14
    move-object v2, v1

    check-cast v2, Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    iget-object v2, v2, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->resolvedType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    :goto_15
    const/4 v3, 0x1

    if-eqz v0, :cond_24

    iput v3, v0, Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;->useFlag:I

    iget-object v0, v0, Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;->closeTracker:Lorg/eclipse/jdt/internal/compiler/ast/FakedTrackingVariable;

    if-eqz v0, :cond_24

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/ast/FakedTrackingVariable;->withdraw()V

    :cond_24
    invoke-direct {v8, v1, v2}, Lorg/eclipse/jdt/internal/compiler/ast/TryStatement;->findCloseMethod(Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    move-result-object v0

    if-eqz v0, :cond_27

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->isValidBinding()Z

    move-result v1

    if-eqz v1, :cond_27

    iget-object v1, v0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->returnType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    iget v1, v1, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->id:I

    const/4 v2, 0x6

    if-ne v1, v2, :cond_25

    iget-object v1, v0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->thrownExceptions:[Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    array-length v0, v1

    :goto_16
    if-lt v15, v0, :cond_26

    :cond_25
    move/from16 v18, v2

    move/from16 v19, v3

    move-object/from16 v24, v4

    move/from16 v25, v5

    goto :goto_17

    :cond_26
    aget-object v18, v1, v15

    iget-object v2, v8, Lorg/eclipse/jdt/internal/compiler/ast/TryStatement;->resources:[Lorg/eclipse/jdt/internal/compiler/ast/Statement;

    aget-object v2, v2, v5

    const/16 v20, 0x1

    move/from16 v21, v0

    move-object v0, v12

    move-object/from16 v23, v1

    move-object/from16 v1, v18

    const/16 v18, 0x6

    move/from16 v19, v3

    move-object v3, v4

    move-object/from16 v24, v4

    move-object/from16 v4, p1

    move/from16 v25, v5

    move/from16 v5, v20

    invoke-virtual/range {v0 .. v5}, Lorg/eclipse/jdt/internal/compiler/flow/FlowContext;->checkExceptionHandlers(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;Z)V

    add-int/lit8 v15, v15, 0x1

    move/from16 v2, v18

    move/from16 v3, v19

    move/from16 v0, v21

    move-object/from16 v1, v23

    move-object/from16 v4, v24

    move/from16 v5, v25

    goto :goto_16

    :cond_27
    move/from16 v19, v3

    move-object/from16 v24, v4

    move/from16 v25, v5

    const/16 v18, 0x6

    :goto_17
    add-int/lit8 v5, v25, 0x1

    move-object/from16 v0, v24

    const/4 v15, 0x0

    goto/16 :goto_d
.end method

.method public completesByContinue()Z
    .locals 5

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/TryStatement;->tryBlock:Lorg/eclipse/jdt/internal/compiler/ast/Block;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/ast/Block;->completesByContinue()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/TryStatement;->finallyBlock:Lorg/eclipse/jdt/internal/compiler/ast/Block;

    if-nez v0, :cond_1

    :cond_0
    move v1, v2

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/ast/Block;->doesNotCompleteNormally()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/TryStatement;->finallyBlock:Lorg/eclipse/jdt/internal/compiler/ast/Block;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/ast/Block;->completesByContinue()Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return v1

    :cond_2
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/TryStatement;->catchBlocks:[Lorg/eclipse/jdt/internal/compiler/ast/Block;

    if-eqz v0, :cond_7

    move v0, v1

    :goto_1
    iget-object v3, p0, Lorg/eclipse/jdt/internal/compiler/ast/TryStatement;->catchBlocks:[Lorg/eclipse/jdt/internal/compiler/ast/Block;

    array-length v4, v3

    if-lt v0, v4, :cond_3

    goto :goto_3

    :cond_3
    aget-object v3, v3, v0

    invoke-virtual {v3}, Lorg/eclipse/jdt/internal/compiler/ast/Block;->completesByContinue()Z

    move-result v3

    if-eqz v3, :cond_6

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/TryStatement;->finallyBlock:Lorg/eclipse/jdt/internal/compiler/ast/Block;

    if-nez v0, :cond_5

    :cond_4
    move v1, v2

    goto :goto_2

    :cond_5
    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/ast/Block;->doesNotCompleteNormally()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/TryStatement;->finallyBlock:Lorg/eclipse/jdt/internal/compiler/ast/Block;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/ast/Block;->completesByContinue()Z

    move-result v0

    if-nez v0, :cond_4

    :goto_2
    return v1

    :cond_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_7
    :goto_3
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/TryStatement;->finallyBlock:Lorg/eclipse/jdt/internal/compiler/ast/Block;

    if-eqz v0, :cond_8

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/ast/Block;->completesByContinue()Z

    move-result v0

    if-eqz v0, :cond_8

    return v2

    :cond_8
    return v1
.end method

.method public doesNotCompleteNormally()Z
    .locals 4

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/TryStatement;->tryBlock:Lorg/eclipse/jdt/internal/compiler/ast/Block;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/ast/Block;->doesNotCompleteNormally()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/TryStatement;->finallyBlock:Lorg/eclipse/jdt/internal/compiler/ast/Block;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/ast/Block;->doesNotCompleteNormally()Z

    move-result v1

    :cond_0
    return v1

    :cond_1
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/TryStatement;->catchBlocks:[Lorg/eclipse/jdt/internal/compiler/ast/Block;

    if-eqz v0, :cond_5

    move v0, v1

    :goto_0
    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/ast/TryStatement;->catchBlocks:[Lorg/eclipse/jdt/internal/compiler/ast/Block;

    array-length v3, v2

    if-lt v0, v3, :cond_2

    goto :goto_1

    :cond_2
    aget-object v2, v2, v0

    invoke-virtual {v2}, Lorg/eclipse/jdt/internal/compiler/ast/Block;->doesNotCompleteNormally()Z

    move-result v2

    if-nez v2, :cond_4

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/TryStatement;->finallyBlock:Lorg/eclipse/jdt/internal/compiler/ast/Block;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/ast/Block;->doesNotCompleteNormally()Z

    move-result v1

    :cond_3
    return v1

    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_5
    :goto_1
    const/4 v0, 0x1

    return v0
.end method

.method public enterAnyExceptionHandler(Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;)Lorg/eclipse/jdt/internal/compiler/codegen/ExceptionLabel;
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/TryStatement;->subRoutineStartLabel:Lorg/eclipse/jdt/internal/compiler/codegen/BranchLabel;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    invoke-super {p0, p1}, Lorg/eclipse/jdt/internal/compiler/ast/SubRoutineStatement;->enterAnyExceptionHandler(Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;)Lorg/eclipse/jdt/internal/compiler/codegen/ExceptionLabel;

    move-result-object p1

    return-object p1
.end method

.method public enterDeclaredExceptionHandlers(Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;)V
    .locals 2

    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/ast/TryStatement;->declaredExceptionLabels:[Lorg/eclipse/jdt/internal/compiler/codegen/ExceptionLabel;

    const/4 v0, 0x0

    if-nez p1, :cond_0

    move p1, v0

    goto :goto_0

    :cond_0
    array-length p1, p1

    :goto_0
    if-lt v0, p1, :cond_3

    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/ast/TryStatement;->resources:[Lorg/eclipse/jdt/internal/compiler/ast/Statement;

    array-length p1, p1

    if-lez p1, :cond_2

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/TryStatement;->resourceExceptionLabels:[Lorg/eclipse/jdt/internal/compiler/codegen/ExceptionLabel;

    if-eqz v0, :cond_2

    :goto_1
    if-gez p1, :cond_1

    goto :goto_2

    :cond_1
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/TryStatement;->resourceExceptionLabels:[Lorg/eclipse/jdt/internal/compiler/codegen/ExceptionLabel;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/codegen/ExceptionLabel;->placeStart()V

    add-int/lit8 p1, p1, -0x1

    goto :goto_1

    :cond_2
    :goto_2
    return-void

    :cond_3
    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/ast/TryStatement;->declaredExceptionLabels:[Lorg/eclipse/jdt/internal/compiler/codegen/ExceptionLabel;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/compiler/codegen/ExceptionLabel;->placeStart()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public exitAnyExceptionHandler()V
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/TryStatement;->subRoutineStartLabel:Lorg/eclipse/jdt/internal/compiler/codegen/BranchLabel;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-super {p0}, Lorg/eclipse/jdt/internal/compiler/ast/SubRoutineStatement;->exitAnyExceptionHandler()V

    return-void
.end method

.method public exitDeclaredExceptionHandlers(Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;)V
    .locals 2

    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/ast/TryStatement;->declaredExceptionLabels:[Lorg/eclipse/jdt/internal/compiler/codegen/ExceptionLabel;

    const/4 v0, 0x0

    if-nez p1, :cond_0

    move p1, v0

    goto :goto_0

    :cond_0
    array-length p1, p1

    :goto_0
    if-lt v0, p1, :cond_1

    return-void

    :cond_1
    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/ast/TryStatement;->declaredExceptionLabels:[Lorg/eclipse/jdt/internal/compiler/codegen/ExceptionLabel;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/compiler/codegen/ExceptionLabel;->placeEnd()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public generateCode(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;)V
    .locals 22

    move-object/from16 v7, p0

    move-object/from16 v0, p1

    move-object/from16 v8, p2

    iget v1, v7, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->bits:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-nez v1, :cond_0

    return-void

    :cond_0
    instance-of v9, v8, Lorg/eclipse/jdt/internal/compiler/codegen/StackMapFrameCodeStream;

    const/4 v10, 0x0

    iput-object v10, v7, Lorg/eclipse/jdt/internal/compiler/ast/SubRoutineStatement;->anyExceptionLabel:Lorg/eclipse/jdt/internal/compiler/codegen/ExceptionLabel;

    iput-object v10, v7, Lorg/eclipse/jdt/internal/compiler/ast/TryStatement;->reusableJSRTargets:[Ljava/lang/Object;

    iput-object v10, v7, Lorg/eclipse/jdt/internal/compiler/ast/TryStatement;->reusableJSRSequenceStartLabels:[Lorg/eclipse/jdt/internal/compiler/codegen/BranchLabel;

    const/4 v11, 0x0

    iput v11, v7, Lorg/eclipse/jdt/internal/compiler/ast/TryStatement;->reusableJSRTargetsCount:I

    iget v12, v8, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->position:I

    invoke-direct/range {p0 .. p0}, Lorg/eclipse/jdt/internal/compiler/ast/TryStatement;->finallyMode()I

    move-result v13

    iget-object v1, v7, Lorg/eclipse/jdt/internal/compiler/ast/TryStatement;->catchArguments:[Lorg/eclipse/jdt/internal/compiler/ast/Argument;

    if-nez v1, :cond_1

    move v14, v11

    goto :goto_0

    :cond_1
    array-length v1, v1

    move v14, v1

    :goto_0
    if-lez v14, :cond_4

    new-array v1, v14, [Lorg/eclipse/jdt/internal/compiler/codegen/ExceptionLabel;

    move v2, v11

    :goto_1
    if-lt v2, v14, :cond_2

    move-object v15, v1

    goto :goto_3

    :cond_2
    iget-object v3, v7, Lorg/eclipse/jdt/internal/compiler/ast/TryStatement;->catchArguments:[Lorg/eclipse/jdt/internal/compiler/ast/Argument;

    aget-object v3, v3, v2

    iget-object v4, v3, Lorg/eclipse/jdt/internal/compiler/ast/LocalDeclaration;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;

    iget-wide v5, v4, Lorg/eclipse/jdt/internal/compiler/lookup/VariableBinding;->tagBits:J

    const-wide/16 v15, 0x1000

    and-long/2addr v5, v15

    const-wide/16 v15, 0x0

    cmp-long v5, v5, v15

    if-eqz v5, :cond_3

    new-instance v5, Lorg/eclipse/jdt/internal/compiler/codegen/MultiCatchExceptionLabel;

    iget-object v4, v4, Lorg/eclipse/jdt/internal/compiler/lookup/VariableBinding;->type:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-direct {v5, v8, v4}, Lorg/eclipse/jdt/internal/compiler/codegen/MultiCatchExceptionLabel;-><init>(Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)V

    iget-object v4, v3, Lorg/eclipse/jdt/internal/compiler/ast/AbstractVariableDeclaration;->type:Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    check-cast v4, Lorg/eclipse/jdt/internal/compiler/ast/UnionTypeReference;

    iget-object v3, v3, Lorg/eclipse/jdt/internal/compiler/ast/AbstractVariableDeclaration;->annotations:[Lorg/eclipse/jdt/internal/compiler/ast/Annotation;

    invoke-virtual {v5, v4, v3}, Lorg/eclipse/jdt/internal/compiler/codegen/MultiCatchExceptionLabel;->initialize(Lorg/eclipse/jdt/internal/compiler/ast/UnionTypeReference;[Lorg/eclipse/jdt/internal/compiler/ast/Annotation;)V

    goto :goto_2

    :cond_3
    new-instance v5, Lorg/eclipse/jdt/internal/compiler/codegen/ExceptionLabel;

    iget-object v4, v4, Lorg/eclipse/jdt/internal/compiler/lookup/VariableBinding;->type:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    iget-object v6, v3, Lorg/eclipse/jdt/internal/compiler/ast/AbstractVariableDeclaration;->type:Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    iget-object v3, v3, Lorg/eclipse/jdt/internal/compiler/ast/AbstractVariableDeclaration;->annotations:[Lorg/eclipse/jdt/internal/compiler/ast/Annotation;

    invoke-direct {v5, v8, v4, v6, v3}, Lorg/eclipse/jdt/internal/compiler/codegen/ExceptionLabel;-><init>(Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;[Lorg/eclipse/jdt/internal/compiler/ast/Annotation;)V

    :goto_2
    invoke-virtual {v5}, Lorg/eclipse/jdt/internal/compiler/codegen/ExceptionLabel;->placeStart()V

    aput-object v5, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_4
    move-object v15, v10

    :goto_3
    iget-object v1, v7, Lorg/eclipse/jdt/internal/compiler/ast/TryStatement;->subRoutineStartLabel:Lorg/eclipse/jdt/internal/compiler/codegen/BranchLabel;

    if-eqz v1, :cond_5

    invoke-virtual {v1, v8}, Lorg/eclipse/jdt/internal/compiler/codegen/BranchLabel;->initialize(Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;)V

    invoke-virtual {v7, v8}, Lorg/eclipse/jdt/internal/compiler/ast/TryStatement;->enterAnyExceptionHandler(Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;)Lorg/eclipse/jdt/internal/compiler/codegen/ExceptionLabel;

    :cond_5
    :try_start_0
    iput-object v15, v7, Lorg/eclipse/jdt/internal/compiler/ast/TryStatement;->declaredExceptionLabels:[Lorg/eclipse/jdt/internal/compiler/codegen/ExceptionLabel;

    iget-object v1, v7, Lorg/eclipse/jdt/internal/compiler/ast/TryStatement;->resources:[Lorg/eclipse/jdt/internal/compiler/ast/Statement;

    array-length v6, v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-lez v6, :cond_a

    add-int/lit8 v1, v6, 0x1

    :try_start_1
    new-array v1, v1, [Lorg/eclipse/jdt/internal/compiler/codegen/ExceptionLabel;

    iput-object v1, v7, Lorg/eclipse/jdt/internal/compiler/ast/TryStatement;->resourceExceptionLabels:[Lorg/eclipse/jdt/internal/compiler/codegen/ExceptionLabel;

    invoke-virtual/range {p2 .. p2}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->aconst_null()V

    iget-object v1, v7, Lorg/eclipse/jdt/internal/compiler/ast/TryStatement;->primaryExceptionVariable:Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;

    invoke-virtual {v8, v1, v11}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->store(Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;Z)V

    iget-object v1, v7, Lorg/eclipse/jdt/internal/compiler/ast/TryStatement;->primaryExceptionVariable:Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;

    invoke-virtual {v8, v1}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->addVariable(Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;)V

    invoke-virtual/range {p2 .. p2}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->aconst_null()V

    iget-object v1, v7, Lorg/eclipse/jdt/internal/compiler/ast/TryStatement;->caughtThrowableVariable:Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;

    invoke-virtual {v8, v1, v11}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->store(Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;Z)V

    iget-object v1, v7, Lorg/eclipse/jdt/internal/compiler/ast/TryStatement;->caughtThrowableVariable:Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;

    invoke-virtual {v8, v1}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->addVariable(Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;)V

    move v1, v11

    :goto_4
    if-le v1, v6, :cond_6

    goto :goto_6

    :cond_6
    iget-object v2, v7, Lorg/eclipse/jdt/internal/compiler/ast/TryStatement;->resourceExceptionLabels:[Lorg/eclipse/jdt/internal/compiler/codegen/ExceptionLabel;

    new-instance v3, Lorg/eclipse/jdt/internal/compiler/codegen/ExceptionLabel;

    invoke-direct {v3, v8, v10}, Lorg/eclipse/jdt/internal/compiler/codegen/ExceptionLabel;-><init>(Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)V

    aput-object v3, v2, v1

    iget-object v2, v7, Lorg/eclipse/jdt/internal/compiler/ast/TryStatement;->resourceExceptionLabels:[Lorg/eclipse/jdt/internal/compiler/codegen/ExceptionLabel;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Lorg/eclipse/jdt/internal/compiler/codegen/ExceptionLabel;->placeStart()V

    if-ge v1, v6, :cond_9

    iget-object v2, v7, Lorg/eclipse/jdt/internal/compiler/ast/TryStatement;->resources:[Lorg/eclipse/jdt/internal/compiler/ast/Statement;

    aget-object v2, v2, v1

    instance-of v3, v2, Lorg/eclipse/jdt/internal/compiler/ast/NameReference;

    if-eqz v3, :cond_7

    move-object v3, v2

    check-cast v3, Lorg/eclipse/jdt/internal/compiler/ast/NameReference;

    iget v4, v3, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->bits:I

    const/high16 v5, 0x80000

    or-int/2addr v4, v5

    iput v4, v3, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->bits:I

    iget-object v4, v3, Lorg/eclipse/jdt/internal/compiler/ast/NameReference;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/Binding;

    check-cast v4, Lorg/eclipse/jdt/internal/compiler/lookup/VariableBinding;

    iget-object v5, v7, Lorg/eclipse/jdt/internal/compiler/ast/TryStatement;->scope:Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;

    invoke-virtual {v3, v4, v5}, Lorg/eclipse/jdt/internal/compiler/ast/NameReference;->checkEffectiveFinality(Lorg/eclipse/jdt/internal/compiler/lookup/VariableBinding;Lorg/eclipse/jdt/internal/compiler/lookup/Scope;)V

    goto :goto_5

    :catchall_0
    move-exception v0

    move-object v1, v10

    goto/16 :goto_1a

    :cond_7
    instance-of v3, v2, Lorg/eclipse/jdt/internal/compiler/ast/FieldReference;

    if-eqz v3, :cond_8

    move-object v3, v2

    check-cast v3, Lorg/eclipse/jdt/internal/compiler/ast/FieldReference;

    iget-object v4, v3, Lorg/eclipse/jdt/internal/compiler/ast/FieldReference;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;

    invoke-virtual {v4}, Lorg/eclipse/jdt/internal/compiler/lookup/VariableBinding;->isFinal()Z

    move-result v4

    if-nez v4, :cond_8

    iget-object v4, v7, Lorg/eclipse/jdt/internal/compiler/ast/TryStatement;->scope:Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;

    invoke-virtual {v4}, Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object v4

    iget-object v5, v3, Lorg/eclipse/jdt/internal/compiler/ast/FieldReference;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;

    invoke-virtual {v4, v5, v3}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->cannotReferToNonFinalField(Lorg/eclipse/jdt/internal/compiler/lookup/VariableBinding;Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;)V

    :cond_8
    :goto_5
    iget-object v3, v7, Lorg/eclipse/jdt/internal/compiler/ast/TryStatement;->scope:Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;

    invoke-virtual {v2, v3, v8}, Lorg/eclipse/jdt/internal/compiler/ast/Statement;->generateCode(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_9
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_a
    :goto_6
    :try_start_2
    iget-object v1, v7, Lorg/eclipse/jdt/internal/compiler/ast/TryStatement;->tryBlock:Lorg/eclipse/jdt/internal/compiler/ast/Block;

    iget-object v2, v7, Lorg/eclipse/jdt/internal/compiler/ast/TryStatement;->scope:Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;

    invoke-virtual {v1, v2, v8}, Lorg/eclipse/jdt/internal/compiler/ast/Block;->generateCode(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    const/high16 v16, 0x20000000

    const/4 v5, -0x1

    if-lez v6, :cond_b

    move v4, v6

    :goto_7
    if-gez v4, :cond_c

    :try_start_3
    iget-object v1, v7, Lorg/eclipse/jdt/internal/compiler/ast/TryStatement;->primaryExceptionVariable:Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;

    invoke-virtual {v8, v1}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->removeVariable(Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;)V

    iget-object v1, v7, Lorg/eclipse/jdt/internal/compiler/ast/TryStatement;->caughtThrowableVariable:Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;

    invoke-virtual {v8, v1}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->removeVariable(Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :cond_b
    move/from16 v21, v9

    move-object v1, v10

    goto/16 :goto_d

    :cond_c
    :try_start_4
    new-instance v3, Lorg/eclipse/jdt/internal/compiler/codegen/BranchLabel;

    invoke-direct {v3, v8}, Lorg/eclipse/jdt/internal/compiler/codegen/BranchLabel;-><init>(Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;)V

    iget-object v1, v7, Lorg/eclipse/jdt/internal/compiler/ast/TryStatement;->resourceExceptionLabels:[Lorg/eclipse/jdt/internal/compiler/codegen/ExceptionLabel;

    aget-object v1, v1, v4

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/compiler/codegen/ExceptionLabel;->placeEnd()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    if-lez v4, :cond_d

    :try_start_5
    iget-object v1, v7, Lorg/eclipse/jdt/internal/compiler/ast/TryStatement;->resources:[Lorg/eclipse/jdt/internal/compiler/ast/Statement;

    add-int/lit8 v2, v4, -0x1

    aget-object v1, v1, v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-object/from16 v17, v1

    goto :goto_8

    :cond_d
    move-object/from16 v17, v10

    :goto_8
    :try_start_6
    iget v1, v7, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->bits:I

    and-int v1, v1, v16

    if-nez v1, :cond_10

    if-lez v4, :cond_f

    iget v2, v8, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->position:I

    iget v1, v7, Lorg/eclipse/jdt/internal/compiler/ast/TryStatement;->postTryInitStateIndex:I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    if-eq v1, v5, :cond_e

    :try_start_7
    invoke-virtual {v8, v0, v1}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->removeNotDefinitelyAssignedVariables(Lorg/eclipse/jdt/internal/compiler/lookup/Scope;I)V

    iget v1, v7, Lorg/eclipse/jdt/internal/compiler/ast/TryStatement;->postTryInitStateIndex:I

    invoke-virtual {v8, v0, v1}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->addDefinitelyAssignedVariables(Lorg/eclipse/jdt/internal/compiler/lookup/Scope;I)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    :cond_e
    :try_start_8
    new-array v1, v11, [I

    const/16 v18, 0x0

    move-object/from16 v19, v1

    move-object/from16 v1, p0

    move v10, v2

    move-object/from16 v2, v17

    move-object/from16 v20, v3

    move-object/from16 v3, p2

    move v11, v4

    move-object/from16 v4, v20

    move/from16 v21, v9

    move v9, v5

    move/from16 v5, v18

    move v9, v6

    move-object/from16 v6, v19

    invoke-direct/range {v1 .. v6}, Lorg/eclipse/jdt/internal/compiler/ast/TryStatement;->generateCodeSnippet(Lorg/eclipse/jdt/internal/compiler/ast/Statement;Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;Lorg/eclipse/jdt/internal/compiler/codegen/BranchLabel;Z[I)V

    iget-object v1, v7, Lorg/eclipse/jdt/internal/compiler/ast/TryStatement;->tryBlock:Lorg/eclipse/jdt/internal/compiler/ast/Block;

    iget v1, v1, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceEnd:I

    invoke-virtual {v8, v10, v1}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->recordPositionsFrom(II)V

    move-object/from16 v10, v20

    goto :goto_9

    :catchall_1
    move-exception v0

    const/4 v1, 0x0

    goto/16 :goto_1a

    :cond_f
    move v11, v4

    move/from16 v21, v9

    move v9, v6

    move-object v10, v3

    :goto_9
    invoke-virtual {v8, v10}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->goto_(Lorg/eclipse/jdt/internal/compiler/codegen/BranchLabel;)V

    goto :goto_a

    :cond_10
    move-object v10, v3

    move v11, v4

    move/from16 v21, v9

    move v9, v6

    :goto_a
    if-lez v11, :cond_11

    iget-object v1, v7, Lorg/eclipse/jdt/internal/compiler/ast/TryStatement;->postResourcesInitStateIndexes:[I

    add-int/lit8 v4, v11, -0x1

    aget v1, v1, v4

    invoke-virtual {v8, v0, v1}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->removeNotDefinitelyAssignedVariables(Lorg/eclipse/jdt/internal/compiler/lookup/Scope;I)V

    iget-object v1, v7, Lorg/eclipse/jdt/internal/compiler/ast/TryStatement;->postResourcesInitStateIndexes:[I

    aget v1, v1, v4

    invoke-virtual {v8, v0, v1}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->addDefinitelyAssignedVariables(Lorg/eclipse/jdt/internal/compiler/lookup/Scope;I)V

    goto :goto_b

    :cond_11
    iget v1, v7, Lorg/eclipse/jdt/internal/compiler/ast/TryStatement;->preTryInitStateIndex:I

    invoke-virtual {v8, v0, v1}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->removeNotDefinitelyAssignedVariables(Lorg/eclipse/jdt/internal/compiler/lookup/Scope;I)V

    iget v1, v7, Lorg/eclipse/jdt/internal/compiler/ast/TryStatement;->preTryInitStateIndex:I

    invoke-virtual {v8, v0, v1}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->addDefinitelyAssignedVariables(Lorg/eclipse/jdt/internal/compiler/lookup/Scope;I)V

    :goto_b
    iget-object v1, v7, Lorg/eclipse/jdt/internal/compiler/ast/TryStatement;->scope:Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->getJavaLangThrowable()Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move-result-object v1

    invoke-virtual {v8, v1}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->pushExceptionOnStack(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)V

    iget-object v1, v7, Lorg/eclipse/jdt/internal/compiler/ast/TryStatement;->resourceExceptionLabels:[Lorg/eclipse/jdt/internal/compiler/codegen/ExceptionLabel;

    aget-object v1, v1, v11

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/compiler/codegen/ExceptionLabel;->place()V

    if-ne v11, v9, :cond_12

    iget-object v1, v7, Lorg/eclipse/jdt/internal/compiler/ast/TryStatement;->primaryExceptionVariable:Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;

    const/4 v2, 0x0

    invoke-virtual {v8, v1, v2}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->store(Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;Z)V

    goto :goto_c

    :cond_12
    new-instance v1, Lorg/eclipse/jdt/internal/compiler/codegen/BranchLabel;

    invoke-direct {v1, v8}, Lorg/eclipse/jdt/internal/compiler/codegen/BranchLabel;-><init>(Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;)V

    new-instance v2, Lorg/eclipse/jdt/internal/compiler/codegen/BranchLabel;

    invoke-direct {v2, v8}, Lorg/eclipse/jdt/internal/compiler/codegen/BranchLabel;-><init>(Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;)V

    iget-object v3, v7, Lorg/eclipse/jdt/internal/compiler/ast/TryStatement;->caughtThrowableVariable:Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;

    const/4 v4, 0x0

    invoke-virtual {v8, v3, v4}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->store(Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;Z)V

    iget-object v3, v7, Lorg/eclipse/jdt/internal/compiler/ast/TryStatement;->primaryExceptionVariable:Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;

    invoke-virtual {v8, v3}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->load(Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;)V

    invoke-virtual {v8, v1}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->ifnonnull(Lorg/eclipse/jdt/internal/compiler/codegen/BranchLabel;)V

    iget-object v3, v7, Lorg/eclipse/jdt/internal/compiler/ast/TryStatement;->caughtThrowableVariable:Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;

    invoke-virtual {v8, v3}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->load(Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;)V

    iget-object v3, v7, Lorg/eclipse/jdt/internal/compiler/ast/TryStatement;->primaryExceptionVariable:Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;

    const/4 v4, 0x0

    invoke-virtual {v8, v3, v4}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->store(Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;Z)V

    invoke-virtual {v8, v2}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->goto_(Lorg/eclipse/jdt/internal/compiler/codegen/BranchLabel;)V

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/compiler/codegen/BranchLabel;->place()V

    iget-object v1, v7, Lorg/eclipse/jdt/internal/compiler/ast/TryStatement;->primaryExceptionVariable:Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;

    invoke-virtual {v8, v1}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->load(Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;)V

    iget-object v1, v7, Lorg/eclipse/jdt/internal/compiler/ast/TryStatement;->caughtThrowableVariable:Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;

    invoke-virtual {v8, v1}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->load(Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;)V

    invoke-virtual {v8, v2}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->if_acmpeq(Lorg/eclipse/jdt/internal/compiler/codegen/BranchLabel;)V

    iget-object v1, v7, Lorg/eclipse/jdt/internal/compiler/ast/TryStatement;->primaryExceptionVariable:Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;

    invoke-virtual {v8, v1}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->load(Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;)V

    iget-object v1, v7, Lorg/eclipse/jdt/internal/compiler/ast/TryStatement;->caughtThrowableVariable:Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;

    invoke-virtual {v8, v1}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->load(Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;)V

    invoke-virtual/range {p2 .. p2}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->invokeThrowableAddSuppressed()V

    invoke-virtual {v2}, Lorg/eclipse/jdt/internal/compiler/codegen/BranchLabel;->place()V

    :goto_c
    if-lez v11, :cond_13

    new-instance v6, Lorg/eclipse/jdt/internal/compiler/codegen/BranchLabel;

    invoke-direct {v6, v8}, Lorg/eclipse/jdt/internal/compiler/codegen/BranchLabel;-><init>(Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;)V

    iget v1, v8, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->position:I

    filled-new-array {v11, v1}, [I

    move-result-object v19

    const/4 v5, 0x1

    move-object/from16 v1, p0

    move-object/from16 v2, v17

    move-object/from16 v3, p2

    move-object v4, v6

    move-object/from16 v17, v6

    move-object/from16 v6, v19

    invoke-direct/range {v1 .. v6}, Lorg/eclipse/jdt/internal/compiler/ast/TryStatement;->generateCodeSnippet(Lorg/eclipse/jdt/internal/compiler/ast/Statement;Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;Lorg/eclipse/jdt/internal/compiler/codegen/BranchLabel;Z[I)V

    invoke-virtual/range {v17 .. v17}, Lorg/eclipse/jdt/internal/compiler/codegen/BranchLabel;->place()V

    :cond_13
    iget-object v1, v7, Lorg/eclipse/jdt/internal/compiler/ast/TryStatement;->primaryExceptionVariable:Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;

    invoke-virtual {v8, v1}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->load(Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;)V

    invoke-virtual/range {p2 .. p2}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->athrow()V

    invoke-virtual {v10}, Lorg/eclipse/jdt/internal/compiler/codegen/BranchLabel;->place()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    add-int/lit8 v4, v11, -0x1

    move v6, v9

    move/from16 v9, v21

    const/4 v5, -0x1

    const/4 v10, 0x0

    const/4 v11, 0x0

    goto/16 :goto_7

    :goto_d
    iput-object v1, v7, Lorg/eclipse/jdt/internal/compiler/ast/TryStatement;->declaredExceptionLabels:[Lorg/eclipse/jdt/internal/compiler/codegen/ExceptionLabel;

    iput-object v1, v7, Lorg/eclipse/jdt/internal/compiler/ast/TryStatement;->resourceExceptionLabels:[Lorg/eclipse/jdt/internal/compiler/codegen/ExceptionLabel;

    iget v1, v8, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->position:I

    if-eq v1, v12, :cond_36

    new-instance v1, Lorg/eclipse/jdt/internal/compiler/codegen/BranchLabel;

    invoke-direct {v1, v8}, Lorg/eclipse/jdt/internal/compiler/codegen/BranchLabel;-><init>(Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;)V

    const/4 v2, 0x0

    :goto_e
    if-lt v2, v14, :cond_35

    iget v2, v7, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->bits:I

    and-int v2, v2, v16

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-nez v2, :cond_19

    iget v2, v8, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->position:I

    if-eqz v13, :cond_17

    if-eq v13, v5, :cond_15

    if-eq v13, v4, :cond_14

    if-eq v13, v3, :cond_15

    goto :goto_f

    :cond_14
    iget-object v6, v7, Lorg/eclipse/jdt/internal/compiler/ast/TryStatement;->subRoutineStartLabel:Lorg/eclipse/jdt/internal/compiler/codegen/BranchLabel;

    invoke-virtual {v8, v6}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->goto_(Lorg/eclipse/jdt/internal/compiler/codegen/BranchLabel;)V

    goto :goto_f

    :cond_15
    iget v6, v7, Lorg/eclipse/jdt/internal/compiler/ast/TryStatement;->naturalExitMergeInitStateIndex:I

    const/4 v9, -0x1

    if-eq v6, v9, :cond_16

    invoke-virtual {v8, v0, v6}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->removeNotDefinitelyAssignedVariables(Lorg/eclipse/jdt/internal/compiler/lookup/Scope;I)V

    iget v6, v7, Lorg/eclipse/jdt/internal/compiler/ast/TryStatement;->naturalExitMergeInitStateIndex:I

    invoke-virtual {v8, v0, v6}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->addDefinitelyAssignedVariables(Lorg/eclipse/jdt/internal/compiler/lookup/Scope;I)V

    :cond_16
    invoke-virtual {v8, v1}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->goto_(Lorg/eclipse/jdt/internal/compiler/codegen/BranchLabel;)V

    move v6, v5

    goto :goto_10

    :cond_17
    const/4 v9, -0x1

    iget v6, v7, Lorg/eclipse/jdt/internal/compiler/ast/TryStatement;->naturalExitMergeInitStateIndex:I

    if-eq v6, v9, :cond_18

    invoke-virtual {v8, v0, v6}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->removeNotDefinitelyAssignedVariables(Lorg/eclipse/jdt/internal/compiler/lookup/Scope;I)V

    iget v6, v7, Lorg/eclipse/jdt/internal/compiler/ast/TryStatement;->naturalExitMergeInitStateIndex:I

    invoke-virtual {v8, v0, v6}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->addDefinitelyAssignedVariables(Lorg/eclipse/jdt/internal/compiler/lookup/Scope;I)V

    :cond_18
    invoke-virtual {v8, v1}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->goto_(Lorg/eclipse/jdt/internal/compiler/codegen/BranchLabel;)V

    :goto_f
    const/4 v6, 0x0

    :goto_10
    iget-object v9, v7, Lorg/eclipse/jdt/internal/compiler/ast/TryStatement;->tryBlock:Lorg/eclipse/jdt/internal/compiler/ast/Block;

    iget v9, v9, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceEnd:I

    invoke-virtual {v8, v2, v9}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->recordPositionsFrom(II)V

    goto :goto_11

    :cond_19
    const/4 v6, 0x0

    :goto_11
    invoke-virtual/range {p0 .. p0}, Lorg/eclipse/jdt/internal/compiler/ast/TryStatement;->exitAnyExceptionHandler()V

    iget-object v2, v7, Lorg/eclipse/jdt/internal/compiler/ast/TryStatement;->catchArguments:[Lorg/eclipse/jdt/internal/compiler/ast/Argument;

    if-eqz v2, :cond_26

    new-instance v2, Lorg/eclipse/jdt/internal/compiler/codegen/BranchLabel;

    invoke-direct {v2, v8}, Lorg/eclipse/jdt/internal/compiler/codegen/BranchLabel;-><init>(Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;)V

    const/4 v9, 0x0

    :goto_12
    if-lt v9, v14, :cond_1a

    goto/16 :goto_15

    :cond_1a
    aget-object v10, v15, v9

    invoke-virtual {v10}, Lorg/eclipse/jdt/internal/compiler/codegen/ExceptionLabel;->getCount()I

    move-result v10

    if-nez v10, :cond_1b

    goto/16 :goto_14

    :cond_1b
    invoke-virtual {v7, v8}, Lorg/eclipse/jdt/internal/compiler/ast/TryStatement;->enterAnyExceptionHandler(Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;)Lorg/eclipse/jdt/internal/compiler/codegen/ExceptionLabel;

    iget v10, v7, Lorg/eclipse/jdt/internal/compiler/ast/TryStatement;->preTryInitStateIndex:I

    const/4 v11, -0x1

    if-eq v10, v11, :cond_1c

    invoke-virtual {v8, v0, v10}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->removeNotDefinitelyAssignedVariables(Lorg/eclipse/jdt/internal/compiler/lookup/Scope;I)V

    iget v10, v7, Lorg/eclipse/jdt/internal/compiler/ast/TryStatement;->preTryInitStateIndex:I

    invoke-virtual {v8, v0, v10}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->addDefinitelyAssignedVariables(Lorg/eclipse/jdt/internal/compiler/lookup/Scope;I)V

    :cond_1c
    aget-object v10, v15, v9

    iget-object v10, v10, Lorg/eclipse/jdt/internal/compiler/codegen/ExceptionLabel;->exceptionType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-virtual {v8, v10}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->pushExceptionOnStack(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)V

    aget-object v10, v15, v9

    invoke-virtual {v10}, Lorg/eclipse/jdt/internal/compiler/codegen/ExceptionLabel;->place()V

    iget v10, v8, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->position:I

    iget-object v11, v7, Lorg/eclipse/jdt/internal/compiler/ast/TryStatement;->catchArguments:[Lorg/eclipse/jdt/internal/compiler/ast/Argument;

    aget-object v11, v11, v9

    iget-object v11, v11, Lorg/eclipse/jdt/internal/compiler/ast/LocalDeclaration;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;

    iget v3, v11, Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;->resolvedPosition:I

    const/4 v4, -0x1

    if-eq v3, v4, :cond_1d

    const/4 v3, 0x0

    invoke-virtual {v8, v11, v3}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->store(Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;Z)V

    iget v3, v8, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->position:I

    invoke-virtual {v11, v3}, Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;->recordInitializationStartPC(I)V

    invoke-virtual {v8, v11}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->addVisibleLocalVariable(Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;)V

    goto :goto_13

    :cond_1d
    invoke-virtual/range {p2 .. p2}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->pop()V

    :goto_13
    iget-object v3, v7, Lorg/eclipse/jdt/internal/compiler/ast/TryStatement;->catchArguments:[Lorg/eclipse/jdt/internal/compiler/ast/Argument;

    aget-object v3, v3, v9

    iget v3, v3, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceStart:I

    invoke-virtual {v8, v10, v3}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->recordPositionsFrom(II)V

    iget-object v3, v7, Lorg/eclipse/jdt/internal/compiler/ast/TryStatement;->catchBlocks:[Lorg/eclipse/jdt/internal/compiler/ast/Block;

    aget-object v3, v3, v9

    iget-object v4, v7, Lorg/eclipse/jdt/internal/compiler/ast/TryStatement;->scope:Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;

    invoke-virtual {v3, v4, v8}, Lorg/eclipse/jdt/internal/compiler/ast/Block;->generateCode(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;)V

    invoke-virtual/range {p0 .. p0}, Lorg/eclipse/jdt/internal/compiler/ast/TryStatement;->exitAnyExceptionHandler()V

    iget-object v3, v7, Lorg/eclipse/jdt/internal/compiler/ast/TryStatement;->catchExits:[Z

    aget-boolean v3, v3, v9

    if-nez v3, :cond_25

    if-eqz v13, :cond_23

    if-eq v13, v5, :cond_22

    const/4 v3, 0x2

    if-eq v13, v3, :cond_21

    const/4 v3, 0x3

    if-eq v13, v3, :cond_1e

    goto :goto_14

    :cond_1e
    if-eqz v21, :cond_1f

    move-object v3, v8

    check-cast v3, Lorg/eclipse/jdt/internal/compiler/codegen/StackMapFrameCodeStream;

    iget v4, v7, Lorg/eclipse/jdt/internal/compiler/ast/TryStatement;->naturalExitMergeInitStateIndex:I

    invoke-virtual {v3, v4}, Lorg/eclipse/jdt/internal/compiler/codegen/StackMapFrameCodeStream;->pushStateIndex(I)V

    :cond_1f
    iget-object v3, v7, Lorg/eclipse/jdt/internal/compiler/ast/TryStatement;->catchExitInitStateIndexes:[I

    aget v3, v3, v9

    const/4 v4, -0x1

    if-eq v3, v4, :cond_20

    invoke-virtual {v8, v0, v3}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->removeNotDefinitelyAssignedVariables(Lorg/eclipse/jdt/internal/compiler/lookup/Scope;I)V

    iget-object v3, v7, Lorg/eclipse/jdt/internal/compiler/ast/TryStatement;->catchExitInitStateIndexes:[I

    aget v3, v3, v9

    invoke-virtual {v8, v0, v3}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->addDefinitelyAssignedVariables(Lorg/eclipse/jdt/internal/compiler/lookup/Scope;I)V

    :cond_20
    iget-object v3, v7, Lorg/eclipse/jdt/internal/compiler/ast/TryStatement;->finallyBlock:Lorg/eclipse/jdt/internal/compiler/ast/Block;

    iget-object v4, v7, Lorg/eclipse/jdt/internal/compiler/ast/TryStatement;->scope:Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;

    invoke-virtual {v3, v4, v8}, Lorg/eclipse/jdt/internal/compiler/ast/Block;->generateCode(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;)V

    invoke-virtual {v8, v2}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->goto_(Lorg/eclipse/jdt/internal/compiler/codegen/BranchLabel;)V

    if-eqz v21, :cond_25

    move-object v3, v8

    check-cast v3, Lorg/eclipse/jdt/internal/compiler/codegen/StackMapFrameCodeStream;

    invoke-virtual {v3}, Lorg/eclipse/jdt/internal/compiler/codegen/StackMapFrameCodeStream;->popStateIndex()V

    goto :goto_14

    :cond_21
    iget-object v3, v7, Lorg/eclipse/jdt/internal/compiler/ast/TryStatement;->subRoutineStartLabel:Lorg/eclipse/jdt/internal/compiler/codegen/BranchLabel;

    invoke-virtual {v8, v3}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->goto_(Lorg/eclipse/jdt/internal/compiler/codegen/BranchLabel;)V

    goto :goto_14

    :cond_22
    move v6, v5

    :cond_23
    iget v3, v7, Lorg/eclipse/jdt/internal/compiler/ast/TryStatement;->naturalExitMergeInitStateIndex:I

    const/4 v4, -0x1

    if-eq v3, v4, :cond_24

    invoke-virtual {v8, v0, v3}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->removeNotDefinitelyAssignedVariables(Lorg/eclipse/jdt/internal/compiler/lookup/Scope;I)V

    iget v3, v7, Lorg/eclipse/jdt/internal/compiler/ast/TryStatement;->naturalExitMergeInitStateIndex:I

    invoke-virtual {v8, v0, v3}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->addDefinitelyAssignedVariables(Lorg/eclipse/jdt/internal/compiler/lookup/Scope;I)V

    :cond_24
    invoke-virtual {v8, v1}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->goto_(Lorg/eclipse/jdt/internal/compiler/codegen/BranchLabel;)V

    :cond_25
    :goto_14
    add-int/lit8 v9, v9, 0x1

    const/4 v3, 0x3

    const/4 v4, 0x2

    goto/16 :goto_12

    :cond_26
    const/4 v2, 0x0

    :goto_15
    if-eqz v6, :cond_27

    if-ne v13, v5, :cond_27

    new-instance v3, Lorg/eclipse/jdt/internal/compiler/codegen/ExceptionLabel;

    const/4 v4, 0x0

    invoke-direct {v3, v8, v4}, Lorg/eclipse/jdt/internal/compiler/codegen/ExceptionLabel;-><init>(Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)V

    move-object v10, v3

    goto :goto_16

    :cond_27
    const/4 v10, 0x0

    :goto_16
    iget v3, v8, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->position:I

    iget-object v4, v7, Lorg/eclipse/jdt/internal/compiler/ast/TryStatement;->subRoutineStartLabel:Lorg/eclipse/jdt/internal/compiler/codegen/BranchLabel;

    if-eqz v4, :cond_34

    iget-object v4, v7, Lorg/eclipse/jdt/internal/compiler/ast/SubRoutineStatement;->anyExceptionLabel:Lorg/eclipse/jdt/internal/compiler/codegen/ExceptionLabel;

    invoke-virtual {v4}, Lorg/eclipse/jdt/internal/compiler/codegen/ExceptionLabel;->getCount()I

    move-result v4

    if-eqz v4, :cond_34

    iget-object v4, v7, Lorg/eclipse/jdt/internal/compiler/ast/TryStatement;->scope:Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;

    invoke-virtual {v4}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->getJavaLangThrowable()Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move-result-object v4

    invoke-virtual {v8, v4}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->pushExceptionOnStack(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)V

    iget v4, v7, Lorg/eclipse/jdt/internal/compiler/ast/TryStatement;->preTryInitStateIndex:I

    const/4 v9, -0x1

    if-eq v4, v9, :cond_28

    invoke-virtual {v8, v0, v4}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->removeNotDefinitelyAssignedVariables(Lorg/eclipse/jdt/internal/compiler/lookup/Scope;I)V

    iget v4, v7, Lorg/eclipse/jdt/internal/compiler/ast/TryStatement;->preTryInitStateIndex:I

    invoke-virtual {v8, v0, v4}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->addDefinitelyAssignedVariables(Lorg/eclipse/jdt/internal/compiler/lookup/Scope;I)V

    :cond_28
    invoke-virtual/range {p0 .. p0}, Lorg/eclipse/jdt/internal/compiler/ast/SubRoutineStatement;->placeAllAnyExceptionHandler()V

    if-eqz v10, :cond_29

    invoke-virtual {v10}, Lorg/eclipse/jdt/internal/compiler/codegen/ExceptionLabel;->place()V

    :cond_29
    if-eq v13, v5, :cond_2d

    const/4 v4, 0x2

    if-eq v13, v4, :cond_2c

    const/4 v4, 0x3

    if-eq v13, v4, :cond_2a

    goto/16 :goto_17

    :cond_2a
    iget-object v4, v7, Lorg/eclipse/jdt/internal/compiler/ast/TryStatement;->anyExceptionVariable:Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;

    const/4 v9, 0x0

    invoke-virtual {v8, v4, v9}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->store(Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;Z)V

    iget-object v4, v7, Lorg/eclipse/jdt/internal/compiler/ast/TryStatement;->anyExceptionVariable:Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;

    invoke-virtual {v8, v4}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->addVariable(Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;)V

    iget-object v4, v7, Lorg/eclipse/jdt/internal/compiler/ast/TryStatement;->finallyBlock:Lorg/eclipse/jdt/internal/compiler/ast/Block;

    iget v4, v4, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceStart:I

    invoke-virtual {v8, v3, v4}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->recordPositionsFrom(II)V

    iget-object v3, v7, Lorg/eclipse/jdt/internal/compiler/ast/TryStatement;->finallyBlock:Lorg/eclipse/jdt/internal/compiler/ast/Block;

    invoke-virtual {v3, v0, v8}, Lorg/eclipse/jdt/internal/compiler/ast/Block;->generateCode(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;)V

    iget v3, v8, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->position:I

    iget-object v4, v7, Lorg/eclipse/jdt/internal/compiler/ast/TryStatement;->anyExceptionVariable:Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;

    invoke-virtual {v8, v4}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->throwAnyException(Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;)V

    iget-object v4, v7, Lorg/eclipse/jdt/internal/compiler/ast/TryStatement;->anyExceptionVariable:Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;

    invoke-virtual {v8, v4}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->removeVariable(Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;)V

    iget v4, v7, Lorg/eclipse/jdt/internal/compiler/ast/TryStatement;->preTryInitStateIndex:I

    const/4 v9, -0x1

    if-eq v4, v9, :cond_2b

    invoke-virtual {v8, v0, v4}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->removeNotDefinitelyAssignedVariables(Lorg/eclipse/jdt/internal/compiler/lookup/Scope;I)V

    :cond_2b
    iget-object v4, v7, Lorg/eclipse/jdt/internal/compiler/ast/TryStatement;->subRoutineStartLabel:Lorg/eclipse/jdt/internal/compiler/codegen/BranchLabel;

    invoke-virtual {v4}, Lorg/eclipse/jdt/internal/compiler/codegen/BranchLabel;->place()V

    iget-object v4, v7, Lorg/eclipse/jdt/internal/compiler/ast/TryStatement;->finallyBlock:Lorg/eclipse/jdt/internal/compiler/ast/Block;

    iget v4, v4, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceEnd:I

    invoke-virtual {v8, v3, v4}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->recordPositionsFrom(II)V

    goto :goto_17

    :cond_2c
    invoke-virtual/range {p2 .. p2}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->pop()V

    iget-object v4, v7, Lorg/eclipse/jdt/internal/compiler/ast/TryStatement;->subRoutineStartLabel:Lorg/eclipse/jdt/internal/compiler/codegen/BranchLabel;

    invoke-virtual {v4}, Lorg/eclipse/jdt/internal/compiler/codegen/BranchLabel;->place()V

    iget-object v4, v7, Lorg/eclipse/jdt/internal/compiler/ast/TryStatement;->finallyBlock:Lorg/eclipse/jdt/internal/compiler/ast/Block;

    iget v4, v4, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceStart:I

    invoke-virtual {v8, v3, v4}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->recordPositionsFrom(II)V

    iget-object v3, v7, Lorg/eclipse/jdt/internal/compiler/ast/TryStatement;->finallyBlock:Lorg/eclipse/jdt/internal/compiler/ast/Block;

    iget-object v4, v7, Lorg/eclipse/jdt/internal/compiler/ast/TryStatement;->scope:Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;

    invoke-virtual {v3, v4, v8}, Lorg/eclipse/jdt/internal/compiler/ast/Block;->generateCode(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;)V

    goto :goto_17

    :cond_2d
    iget-object v4, v7, Lorg/eclipse/jdt/internal/compiler/ast/TryStatement;->anyExceptionVariable:Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;

    const/4 v9, 0x0

    invoke-virtual {v8, v4, v9}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->store(Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;Z)V

    iget-object v4, v7, Lorg/eclipse/jdt/internal/compiler/ast/TryStatement;->subRoutineStartLabel:Lorg/eclipse/jdt/internal/compiler/codegen/BranchLabel;

    invoke-virtual {v8, v4}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->jsr(Lorg/eclipse/jdt/internal/compiler/codegen/BranchLabel;)V

    iget-object v4, v7, Lorg/eclipse/jdt/internal/compiler/ast/TryStatement;->finallyBlock:Lorg/eclipse/jdt/internal/compiler/ast/Block;

    iget v4, v4, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceStart:I

    invoke-virtual {v8, v3, v4}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->recordPositionsFrom(II)V

    iget v3, v8, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->position:I

    iget-object v4, v7, Lorg/eclipse/jdt/internal/compiler/ast/TryStatement;->anyExceptionVariable:Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;

    invoke-virtual {v8, v4}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->throwAnyException(Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;)V

    iget-object v4, v7, Lorg/eclipse/jdt/internal/compiler/ast/TryStatement;->finallyBlock:Lorg/eclipse/jdt/internal/compiler/ast/Block;

    iget v4, v4, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceEnd:I

    invoke-virtual {v8, v3, v4}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->recordPositionsFrom(II)V

    iget-object v3, v7, Lorg/eclipse/jdt/internal/compiler/ast/TryStatement;->subRoutineStartLabel:Lorg/eclipse/jdt/internal/compiler/codegen/BranchLabel;

    invoke-virtual {v3}, Lorg/eclipse/jdt/internal/compiler/codegen/BranchLabel;->place()V

    iget-object v3, v7, Lorg/eclipse/jdt/internal/compiler/ast/TryStatement;->scope:Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;

    invoke-virtual {v3}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->getJavaLangThrowable()Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move-result-object v3

    invoke-virtual {v8, v3}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->pushExceptionOnStack(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)V

    iget v3, v8, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->position:I

    iget-object v4, v7, Lorg/eclipse/jdt/internal/compiler/ast/TryStatement;->returnAddressVariable:Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;

    const/4 v9, 0x0

    invoke-virtual {v8, v4, v9}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->store(Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;Z)V

    iget-object v4, v7, Lorg/eclipse/jdt/internal/compiler/ast/TryStatement;->finallyBlock:Lorg/eclipse/jdt/internal/compiler/ast/Block;

    iget v4, v4, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceStart:I

    invoke-virtual {v8, v3, v4}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->recordPositionsFrom(II)V

    iget-object v3, v7, Lorg/eclipse/jdt/internal/compiler/ast/TryStatement;->finallyBlock:Lorg/eclipse/jdt/internal/compiler/ast/Block;

    iget-object v4, v7, Lorg/eclipse/jdt/internal/compiler/ast/TryStatement;->scope:Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;

    invoke-virtual {v3, v4, v8}, Lorg/eclipse/jdt/internal/compiler/ast/Block;->generateCode(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;)V

    iget v3, v8, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->position:I

    iget-object v4, v7, Lorg/eclipse/jdt/internal/compiler/ast/TryStatement;->returnAddressVariable:Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;

    iget v4, v4, Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;->resolvedPosition:I

    invoke-virtual {v8, v4}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->ret(I)V

    iget-object v4, v7, Lorg/eclipse/jdt/internal/compiler/ast/TryStatement;->finallyBlock:Lorg/eclipse/jdt/internal/compiler/ast/Block;

    iget v4, v4, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceEnd:I

    invoke-virtual {v8, v3, v4}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->recordPositionsFrom(II)V

    :goto_17
    if-eqz v6, :cond_33

    if-eq v13, v5, :cond_32

    const/4 v3, 0x2

    if-eq v13, v3, :cond_33

    const/4 v3, 0x3

    if-eq v13, v3, :cond_2e

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/compiler/codegen/BranchLabel;->place()V

    goto :goto_18

    :cond_2e
    if-eqz v21, :cond_2f

    move-object v3, v8

    check-cast v3, Lorg/eclipse/jdt/internal/compiler/codegen/StackMapFrameCodeStream;

    iget v4, v7, Lorg/eclipse/jdt/internal/compiler/ast/TryStatement;->naturalExitMergeInitStateIndex:I

    invoke-virtual {v3, v4}, Lorg/eclipse/jdt/internal/compiler/codegen/StackMapFrameCodeStream;->pushStateIndex(I)V

    :cond_2f
    iget v3, v7, Lorg/eclipse/jdt/internal/compiler/ast/TryStatement;->naturalExitMergeInitStateIndex:I

    const/4 v4, -0x1

    if-eq v3, v4, :cond_30

    invoke-virtual {v8, v0, v3}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->removeNotDefinitelyAssignedVariables(Lorg/eclipse/jdt/internal/compiler/lookup/Scope;I)V

    iget v3, v7, Lorg/eclipse/jdt/internal/compiler/ast/TryStatement;->naturalExitMergeInitStateIndex:I

    invoke-virtual {v8, v0, v3}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->addDefinitelyAssignedVariables(Lorg/eclipse/jdt/internal/compiler/lookup/Scope;I)V

    :cond_30
    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/compiler/codegen/BranchLabel;->place()V

    iget-object v1, v7, Lorg/eclipse/jdt/internal/compiler/ast/TryStatement;->finallyBlock:Lorg/eclipse/jdt/internal/compiler/ast/Block;

    iget-object v3, v7, Lorg/eclipse/jdt/internal/compiler/ast/TryStatement;->scope:Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;

    invoke-virtual {v1, v3, v8}, Lorg/eclipse/jdt/internal/compiler/ast/Block;->generateCode(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;)V

    if-eqz v2, :cond_31

    iget v1, v8, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->position:I

    invoke-virtual {v8, v2}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->goto_(Lorg/eclipse/jdt/internal/compiler/codegen/BranchLabel;)V

    iget-object v3, v7, Lorg/eclipse/jdt/internal/compiler/ast/TryStatement;->finallyBlock:Lorg/eclipse/jdt/internal/compiler/ast/Block;

    iget v3, v3, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceEnd:I

    invoke-virtual {v8, v1, v3}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->recordPositionsFrom(II)V

    :cond_31
    if-eqz v21, :cond_33

    move-object v1, v8

    check-cast v1, Lorg/eclipse/jdt/internal/compiler/codegen/StackMapFrameCodeStream;

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/compiler/codegen/StackMapFrameCodeStream;->popStateIndex()V

    goto :goto_18

    :cond_32
    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/compiler/codegen/BranchLabel;->place()V

    iget v1, v8, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->position:I

    invoke-virtual {v10}, Lorg/eclipse/jdt/internal/compiler/codegen/ExceptionLabel;->placeStart()V

    iget-object v3, v7, Lorg/eclipse/jdt/internal/compiler/ast/TryStatement;->subRoutineStartLabel:Lorg/eclipse/jdt/internal/compiler/codegen/BranchLabel;

    invoke-virtual {v8, v3}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->jsr(Lorg/eclipse/jdt/internal/compiler/codegen/BranchLabel;)V

    invoke-virtual {v10}, Lorg/eclipse/jdt/internal/compiler/codegen/ExceptionLabel;->placeEnd()V

    iget-object v3, v7, Lorg/eclipse/jdt/internal/compiler/ast/TryStatement;->finallyBlock:Lorg/eclipse/jdt/internal/compiler/ast/Block;

    iget v3, v3, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceEnd:I

    invoke-virtual {v8, v1, v3}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->recordPositionsFrom(II)V

    :cond_33
    :goto_18
    if-eqz v2, :cond_37

    invoke-virtual {v2}, Lorg/eclipse/jdt/internal/compiler/codegen/BranchLabel;->place()V

    goto :goto_19

    :cond_34
    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/compiler/codegen/BranchLabel;->place()V

    goto :goto_19

    :cond_35
    const/4 v9, 0x0

    aget-object v3, v15, v2

    invoke-virtual {v3}, Lorg/eclipse/jdt/internal/compiler/codegen/ExceptionLabel;->placeEnd()V

    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_e

    :cond_36
    iget-object v1, v7, Lorg/eclipse/jdt/internal/compiler/ast/TryStatement;->subRoutineStartLabel:Lorg/eclipse/jdt/internal/compiler/codegen/BranchLabel;

    if-eqz v1, :cond_37

    iget-object v1, v7, Lorg/eclipse/jdt/internal/compiler/ast/TryStatement;->finallyBlock:Lorg/eclipse/jdt/internal/compiler/ast/Block;

    iget-object v2, v7, Lorg/eclipse/jdt/internal/compiler/ast/TryStatement;->scope:Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;

    invoke-virtual {v1, v2, v8}, Lorg/eclipse/jdt/internal/compiler/ast/Block;->generateCode(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;)V

    :cond_37
    :goto_19
    iget v1, v7, Lorg/eclipse/jdt/internal/compiler/ast/TryStatement;->mergedInitStateIndex:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_38

    invoke-virtual {v8, v0, v1}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->removeNotDefinitelyAssignedVariables(Lorg/eclipse/jdt/internal/compiler/lookup/Scope;I)V

    iget v1, v7, Lorg/eclipse/jdt/internal/compiler/ast/TryStatement;->mergedInitStateIndex:I

    invoke-virtual {v8, v0, v1}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->addDefinitelyAssignedVariables(Lorg/eclipse/jdt/internal/compiler/lookup/Scope;I)V

    :cond_38
    iget v0, v7, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceStart:I

    invoke-virtual {v8, v12, v0}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->recordPositionsFrom(II)V

    return-void

    :goto_1a
    iput-object v1, v7, Lorg/eclipse/jdt/internal/compiler/ast/TryStatement;->declaredExceptionLabels:[Lorg/eclipse/jdt/internal/compiler/codegen/ExceptionLabel;

    iput-object v1, v7, Lorg/eclipse/jdt/internal/compiler/ast/TryStatement;->resourceExceptionLabels:[Lorg/eclipse/jdt/internal/compiler/codegen/ExceptionLabel;

    throw v0
.end method

.method public generateSubRoutineInvocation(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;Ljava/lang/Object;ILorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;)Z
    .locals 9

    iget-object p5, p0, Lorg/eclipse/jdt/internal/compiler/ast/TryStatement;->resources:[Lorg/eclipse/jdt/internal/compiler/ast/Statement;

    array-length p5, p5

    const/4 v0, 0x0

    if-lez p5, :cond_1

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/ast/TryStatement;->resourceExceptionLabels:[Lorg/eclipse/jdt/internal/compiler/codegen/ExceptionLabel;

    if-eqz v1, :cond_1

    :goto_0
    if-gtz p5, :cond_0

    iget-object p5, p0, Lorg/eclipse/jdt/internal/compiler/ast/TryStatement;->resourceExceptionLabels:[Lorg/eclipse/jdt/internal/compiler/codegen/ExceptionLabel;

    aget-object p5, p5, v0

    invoke-virtual {p5}, Lorg/eclipse/jdt/internal/compiler/codegen/ExceptionLabel;->placeEnd()V

    goto :goto_1

    :cond_0
    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/ast/TryStatement;->resourceExceptionLabels:[Lorg/eclipse/jdt/internal/compiler/codegen/ExceptionLabel;

    aget-object v1, v1, p5

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/compiler/codegen/ExceptionLabel;->placeEnd()V

    new-instance v1, Lorg/eclipse/jdt/internal/compiler/codegen/BranchLabel;

    invoke-direct {v1, p2}, Lorg/eclipse/jdt/internal/compiler/codegen/BranchLabel;-><init>(Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;)V

    iget v8, p2, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->position:I

    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/ast/TryStatement;->resources:[Lorg/eclipse/jdt/internal/compiler/ast/Statement;

    add-int/lit8 v3, p5, -0x1

    aget-object v3, v2, v3

    const/4 v6, 0x0

    new-array v7, v0, [I

    move-object v2, p0

    move-object v4, p2

    move-object v5, v1

    invoke-direct/range {v2 .. v7}, Lorg/eclipse/jdt/internal/compiler/ast/TryStatement;->generateCodeSnippet(Lorg/eclipse/jdt/internal/compiler/ast/Statement;Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;Lorg/eclipse/jdt/internal/compiler/codegen/BranchLabel;Z[I)V

    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/ast/TryStatement;->tryBlock:Lorg/eclipse/jdt/internal/compiler/ast/Block;

    iget v2, v2, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceEnd:I

    invoke-virtual {p2, v8, v2}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->recordPositionsFrom(II)V

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/compiler/codegen/BranchLabel;->place()V

    add-int/lit8 p5, p5, -0x1

    goto :goto_0

    :cond_1
    :goto_1
    instance-of p5, p2, Lorg/eclipse/jdt/internal/compiler/codegen/StackMapFrameCodeStream;

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/compiler/ast/TryStatement;->finallyMode()I

    move-result v1

    if-eqz v1, :cond_d

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eq v1, v2, :cond_c

    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/ast/TryStatement;->scope:Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;

    invoke-virtual {v2}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->compilerOptions()Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;

    move-result-object v2

    iget-boolean v2, v2, Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;->shareCommonFinallyBlocks:Z

    const/4 v4, 0x3

    if-eqz v2, :cond_8

    if-eqz p3, :cond_8

    iget v2, p0, Lorg/eclipse/jdt/internal/compiler/ast/TryStatement;->reusableJSRTargetsCount:I

    if-lez v2, :cond_6

    move v5, v0

    :goto_2
    if-lt v5, v2, :cond_2

    goto :goto_4

    :cond_2
    iget-object v6, p0, Lorg/eclipse/jdt/internal/compiler/ast/TryStatement;->reusableJSRTargets:[Ljava/lang/Object;

    aget-object v6, v6, v5

    if-ne p3, v6, :cond_3

    goto :goto_3

    :cond_3
    instance-of v7, p3, Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    if-eqz v7, :cond_5

    instance-of v7, v6, Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    if-eqz v7, :cond_5

    move-object v7, p3

    check-cast v7, Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    check-cast v6, Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    invoke-virtual {v7, v6}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->hasSameValue(Lorg/eclipse/jdt/internal/compiler/impl/Constant;)Z

    move-result v6

    if-eqz v6, :cond_5

    :goto_3
    iget-object p3, p0, Lorg/eclipse/jdt/internal/compiler/ast/TryStatement;->reusableJSRStateIndexes:[I

    aget p3, p3, v5

    if-eq p3, p4, :cond_4

    if-ne v1, v4, :cond_4

    goto :goto_5

    :cond_4
    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/ast/TryStatement;->reusableJSRSequenceStartLabels:[Lorg/eclipse/jdt/internal/compiler/codegen/BranchLabel;

    aget-object p1, p1, v5

    invoke-virtual {p2, p1}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->goto_(Lorg/eclipse/jdt/internal/compiler/codegen/BranchLabel;)V

    return v3

    :cond_5
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_6
    new-array v2, v4, [Ljava/lang/Object;

    iput-object v2, p0, Lorg/eclipse/jdt/internal/compiler/ast/TryStatement;->reusableJSRTargets:[Ljava/lang/Object;

    new-array v2, v4, [Lorg/eclipse/jdt/internal/compiler/codegen/BranchLabel;

    iput-object v2, p0, Lorg/eclipse/jdt/internal/compiler/ast/TryStatement;->reusableJSRSequenceStartLabels:[Lorg/eclipse/jdt/internal/compiler/codegen/BranchLabel;

    new-array v2, v4, [I

    iput-object v2, p0, Lorg/eclipse/jdt/internal/compiler/ast/TryStatement;->reusableJSRStateIndexes:[I

    :goto_4
    iget v2, p0, Lorg/eclipse/jdt/internal/compiler/ast/TryStatement;->reusableJSRTargetsCount:I

    iget-object v3, p0, Lorg/eclipse/jdt/internal/compiler/ast/TryStatement;->reusableJSRTargets:[Ljava/lang/Object;

    array-length v5, v3

    if-ne v2, v5, :cond_7

    mul-int/lit8 v5, v2, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    iput-object v5, p0, Lorg/eclipse/jdt/internal/compiler/ast/TryStatement;->reusableJSRTargets:[Ljava/lang/Object;

    invoke-static {v3, v0, v5, v0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/ast/TryStatement;->reusableJSRSequenceStartLabels:[Lorg/eclipse/jdt/internal/compiler/codegen/BranchLabel;

    iget v3, p0, Lorg/eclipse/jdt/internal/compiler/ast/TryStatement;->reusableJSRTargetsCount:I

    mul-int/lit8 v5, v3, 0x2

    new-array v5, v5, [Lorg/eclipse/jdt/internal/compiler/codegen/BranchLabel;

    iput-object v5, p0, Lorg/eclipse/jdt/internal/compiler/ast/TryStatement;->reusableJSRSequenceStartLabels:[Lorg/eclipse/jdt/internal/compiler/codegen/BranchLabel;

    invoke-static {v2, v0, v5, v0, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/ast/TryStatement;->reusableJSRStateIndexes:[I

    iget v3, p0, Lorg/eclipse/jdt/internal/compiler/ast/TryStatement;->reusableJSRTargetsCount:I

    mul-int/lit8 v5, v3, 0x2

    new-array v5, v5, [I

    iput-object v5, p0, Lorg/eclipse/jdt/internal/compiler/ast/TryStatement;->reusableJSRStateIndexes:[I

    invoke-static {v2, v0, v5, v0, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_7
    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/ast/TryStatement;->reusableJSRTargets:[Ljava/lang/Object;

    iget v3, p0, Lorg/eclipse/jdt/internal/compiler/ast/TryStatement;->reusableJSRTargetsCount:I

    aput-object p3, v2, v3

    new-instance p3, Lorg/eclipse/jdt/internal/compiler/codegen/BranchLabel;

    invoke-direct {p3, p2}, Lorg/eclipse/jdt/internal/compiler/codegen/BranchLabel;-><init>(Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;)V

    invoke-virtual {p3}, Lorg/eclipse/jdt/internal/compiler/codegen/BranchLabel;->place()V

    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/ast/TryStatement;->reusableJSRStateIndexes:[I

    iget v3, p0, Lorg/eclipse/jdt/internal/compiler/ast/TryStatement;->reusableJSRTargetsCount:I

    aput p4, v2, v3

    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/ast/TryStatement;->reusableJSRSequenceStartLabels:[Lorg/eclipse/jdt/internal/compiler/codegen/BranchLabel;

    add-int/lit8 v5, v3, 0x1

    iput v5, p0, Lorg/eclipse/jdt/internal/compiler/ast/TryStatement;->reusableJSRTargetsCount:I

    aput-object p3, v2, v3

    :cond_8
    :goto_5
    if-ne v1, v4, :cond_a

    if-eqz p5, :cond_9

    move-object p3, p2

    check-cast p3, Lorg/eclipse/jdt/internal/compiler/codegen/StackMapFrameCodeStream;

    invoke-virtual {p3, p4}, Lorg/eclipse/jdt/internal/compiler/codegen/StackMapFrameCodeStream;->pushStateIndex(I)V

    :cond_9
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/ast/TryStatement;->exitAnyExceptionHandler()V

    invoke-virtual {p0, p2}, Lorg/eclipse/jdt/internal/compiler/ast/TryStatement;->exitDeclaredExceptionHandlers(Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;)V

    iget-object p3, p0, Lorg/eclipse/jdt/internal/compiler/ast/TryStatement;->finallyBlock:Lorg/eclipse/jdt/internal/compiler/ast/Block;

    invoke-virtual {p3, p1, p2}, Lorg/eclipse/jdt/internal/compiler/ast/Block;->generateCode(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;)V

    if-eqz p5, :cond_b

    check-cast p2, Lorg/eclipse/jdt/internal/compiler/codegen/StackMapFrameCodeStream;

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/codegen/StackMapFrameCodeStream;->popStateIndex()V

    goto :goto_6

    :cond_a
    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/ast/TryStatement;->subRoutineStartLabel:Lorg/eclipse/jdt/internal/compiler/codegen/BranchLabel;

    invoke-virtual {p2, p1}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->jsr(Lorg/eclipse/jdt/internal/compiler/codegen/BranchLabel;)V

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/ast/TryStatement;->exitAnyExceptionHandler()V

    invoke-virtual {p0, p2}, Lorg/eclipse/jdt/internal/compiler/ast/TryStatement;->exitDeclaredExceptionHandlers(Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;)V

    :cond_b
    :goto_6
    return v0

    :cond_c
    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/ast/TryStatement;->subRoutineStartLabel:Lorg/eclipse/jdt/internal/compiler/codegen/BranchLabel;

    invoke-virtual {p2, p1}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->goto_(Lorg/eclipse/jdt/internal/compiler/codegen/BranchLabel;)V

    return v3

    :cond_d
    invoke-virtual {p0, p2}, Lorg/eclipse/jdt/internal/compiler/ast/TryStatement;->exitDeclaredExceptionHandlers(Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;)V

    return v0
.end method

.method public isSubRoutineEscaping()Z
    .locals 1

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->bits:I

    and-int/lit16 v0, v0, 0x4000

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public printStatement(ILjava/lang/StringBuffer;)Ljava/lang/StringBuffer;
    .locals 7

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/TryStatement;->resources:[Lorg/eclipse/jdt/internal/compiler/ast/Statement;

    array-length v0, v0

    invoke-static {p1, p2}, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->printIndent(ILjava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "try"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-nez v0, :cond_0

    const-string v3, "\n"

    goto :goto_0

    :cond_0
    const-string v3, " ("

    :goto_0
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/4 v1, 0x0

    move v2, v1

    :goto_1
    if-lt v2, v0, :cond_5

    const-string v2, ")\n"

    if-lez v0, :cond_1

    invoke-virtual {p2, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_1
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/TryStatement;->tryBlock:Lorg/eclipse/jdt/internal/compiler/ast/Block;

    add-int/lit8 v3, p1, 0x1

    invoke-virtual {v0, v3, p2}, Lorg/eclipse/jdt/internal/compiler/ast/Block;->printStatement(ILjava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/TryStatement;->catchBlocks:[Lorg/eclipse/jdt/internal/compiler/ast/Block;

    const/16 v4, 0xa

    if-eqz v0, :cond_3

    move v0, v1

    :goto_2
    iget-object v5, p0, Lorg/eclipse/jdt/internal/compiler/ast/TryStatement;->catchBlocks:[Lorg/eclipse/jdt/internal/compiler/ast/Block;

    array-length v5, v5

    if-lt v0, v5, :cond_2

    goto :goto_3

    :cond_2
    invoke-virtual {p2, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-static {p1, p2}, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->printIndent(ILjava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    move-result-object v5

    const-string v6, "catch ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v5, p0, Lorg/eclipse/jdt/internal/compiler/ast/TryStatement;->catchArguments:[Lorg/eclipse/jdt/internal/compiler/ast/Argument;

    aget-object v5, v5, v0

    invoke-virtual {v5, v1, p2}, Lorg/eclipse/jdt/internal/compiler/ast/Argument;->print(ILjava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v5, p0, Lorg/eclipse/jdt/internal/compiler/ast/TryStatement;->catchBlocks:[Lorg/eclipse/jdt/internal/compiler/ast/Block;

    aget-object v5, v5, v0

    invoke-virtual {v5, v3, p2}, Lorg/eclipse/jdt/internal/compiler/ast/Block;->printStatement(ILjava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_3
    :goto_3
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/TryStatement;->finallyBlock:Lorg/eclipse/jdt/internal/compiler/ast/Block;

    if-eqz v0, :cond_4

    invoke-virtual {p2, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-static {p1, p2}, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->printIndent(ILjava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    move-result-object p1

    const-string v0, "finally\n"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/ast/TryStatement;->finallyBlock:Lorg/eclipse/jdt/internal/compiler/ast/Block;

    invoke-virtual {p1, v3, p2}, Lorg/eclipse/jdt/internal/compiler/ast/Block;->printStatement(ILjava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    :cond_4
    return-object p2

    :cond_5
    iget-object v3, p0, Lorg/eclipse/jdt/internal/compiler/ast/TryStatement;->resources:[Lorg/eclipse/jdt/internal/compiler/ast/Statement;

    aget-object v3, v3, v2

    instance-of v4, v3, Lorg/eclipse/jdt/internal/compiler/ast/LocalDeclaration;

    if-eqz v4, :cond_6

    check-cast v3, Lorg/eclipse/jdt/internal/compiler/ast/LocalDeclaration;

    invoke-virtual {v3, v1, p2}, Lorg/eclipse/jdt/internal/compiler/ast/AbstractVariableDeclaration;->printAsExpression(ILjava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    goto :goto_4

    :cond_6
    instance-of v4, v3, Lorg/eclipse/jdt/internal/compiler/ast/Reference;

    if-eqz v4, :cond_7

    check-cast v3, Lorg/eclipse/jdt/internal/compiler/ast/Reference;

    invoke-virtual {v3, v1, p2}, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->printExpression(ILjava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    :goto_4
    add-int/lit8 v3, v0, -0x1

    if-eq v2, v3, :cond_7

    const-string v3, ";\n"

    invoke-virtual {p2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v3, p1, 0x2

    invoke-static {v3, p2}, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->printIndent(ILjava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    :cond_7
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method public resolve(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;)V
    .locals 14

    new-instance v0, Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;

    invoke-direct {v0, p1}, Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;-><init>(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;)V

    iput-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/TryStatement;->scope:Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/TryStatement;->resources:[Lorg/eclipse/jdt/internal/compiler/ast/Statement;

    array-length v0, v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-lez v0, :cond_0

    new-instance v3, Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;

    iget-object v4, p0, Lorg/eclipse/jdt/internal/compiler/ast/TryStatement;->scope:Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;

    invoke-direct {v3, v4}, Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;-><init>(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;)V

    new-instance v4, Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;

    sget-object v5, Lorg/eclipse/jdt/internal/compiler/ast/TryStatement;->SECRET_PRIMARY_EXCEPTION_VARIABLE_NAME:[C

    iget-object v6, p0, Lorg/eclipse/jdt/internal/compiler/ast/TryStatement;->scope:Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;

    invoke-virtual {v6}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->getJavaLangThrowable()Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move-result-object v6

    invoke-direct {v4, v5, v6, v1, v1}, Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;-><init>([CLorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;IZ)V

    iput-object v4, p0, Lorg/eclipse/jdt/internal/compiler/ast/TryStatement;->primaryExceptionVariable:Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;

    invoke-virtual {v3, v4}, Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;->addLocalVariable(Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;)V

    iget-object v4, p0, Lorg/eclipse/jdt/internal/compiler/ast/TryStatement;->primaryExceptionVariable:Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;

    sget-object v5, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->NotAConstant:Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    invoke-virtual {v4, v5}, Lorg/eclipse/jdt/internal/compiler/lookup/VariableBinding;->setConstant(Lorg/eclipse/jdt/internal/compiler/impl/Constant;)V

    new-instance v4, Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;

    sget-object v6, Lorg/eclipse/jdt/internal/compiler/ast/TryStatement;->SECRET_CAUGHT_THROWABLE_VARIABLE_NAME:[C

    iget-object v7, p0, Lorg/eclipse/jdt/internal/compiler/ast/TryStatement;->scope:Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;

    invoke-virtual {v7}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->getJavaLangThrowable()Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move-result-object v7

    invoke-direct {v4, v6, v7, v1, v1}, Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;-><init>([CLorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;IZ)V

    iput-object v4, p0, Lorg/eclipse/jdt/internal/compiler/ast/TryStatement;->caughtThrowableVariable:Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;

    invoke-virtual {v3, v4}, Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;->addLocalVariable(Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;)V

    iget-object v4, p0, Lorg/eclipse/jdt/internal/compiler/ast/TryStatement;->caughtThrowableVariable:Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;

    invoke-virtual {v4, v5}, Lorg/eclipse/jdt/internal/compiler/lookup/VariableBinding;->setConstant(Lorg/eclipse/jdt/internal/compiler/impl/Constant;)V

    goto :goto_0

    :cond_0
    move-object v3, v2

    :goto_0
    move v4, v1

    :goto_1
    if-lt v4, v0, :cond_10

    new-instance v0, Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;

    if-eqz v3, :cond_1

    goto :goto_2

    :cond_1
    iget-object v3, p0, Lorg/eclipse/jdt/internal/compiler/ast/TryStatement;->scope:Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;

    :goto_2
    invoke-direct {v0, v3}, Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;-><init>(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;)V

    iget-object v3, p0, Lorg/eclipse/jdt/internal/compiler/ast/TryStatement;->finallyBlock:Lorg/eclipse/jdt/internal/compiler/ast/Block;

    const/4 v4, 0x1

    if-eqz v3, :cond_8

    invoke-virtual {v3}, Lorg/eclipse/jdt/internal/compiler/ast/Block;->isEmptyBlock()Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/ast/TryStatement;->finallyBlock:Lorg/eclipse/jdt/internal/compiler/ast/Block;

    iget p1, p1, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->bits:I

    and-int/lit8 p1, p1, 0x8

    if-eqz p1, :cond_8

    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/ast/TryStatement;->scope:Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object p1

    iget-object v3, p0, Lorg/eclipse/jdt/internal/compiler/ast/TryStatement;->finallyBlock:Lorg/eclipse/jdt/internal/compiler/ast/Block;

    iget v5, v3, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceStart:I

    iget v3, v3, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceEnd:I

    invoke-virtual {p1, v5, v3}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->undocumentedEmptyBlock(II)V

    goto/16 :goto_5

    :cond_2
    new-instance v3, Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;

    iget-object v5, p0, Lorg/eclipse/jdt/internal/compiler/ast/TryStatement;->scope:Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;

    invoke-direct {v3, v5, v1}, Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;-><init>(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;Z)V

    iget-object v5, p0, Lorg/eclipse/jdt/internal/compiler/ast/TryStatement;->scope:Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;

    invoke-virtual {v5}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->methodScope()Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;

    move-result-object v5

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->compilerOptions()Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;

    move-result-object v6

    iget-boolean v6, v6, Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;->inlineJsrBytecode:Z

    if-nez v6, :cond_3

    new-instance v6, Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;

    sget-object v7, Lorg/eclipse/jdt/internal/compiler/ast/TryStatement;->SECRET_RETURN_ADDRESS_NAME:[C

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->getJavaLangObject()Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move-result-object p1

    invoke-direct {v6, v7, p1, v1, v1}, Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;-><init>([CLorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;IZ)V

    iput-object v6, p0, Lorg/eclipse/jdt/internal/compiler/ast/TryStatement;->returnAddressVariable:Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;

    invoke-virtual {v3, v6}, Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;->addLocalVariable(Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;)V

    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/ast/TryStatement;->returnAddressVariable:Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;

    sget-object v6, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->NotAConstant:Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    invoke-virtual {p1, v6}, Lorg/eclipse/jdt/internal/compiler/lookup/VariableBinding;->setConstant(Lorg/eclipse/jdt/internal/compiler/impl/Constant;)V

    :cond_3
    new-instance p1, Lorg/eclipse/jdt/internal/compiler/codegen/BranchLabel;

    invoke-direct {p1}, Lorg/eclipse/jdt/internal/compiler/codegen/BranchLabel;-><init>()V

    iput-object p1, p0, Lorg/eclipse/jdt/internal/compiler/ast/TryStatement;->subRoutineStartLabel:Lorg/eclipse/jdt/internal/compiler/codegen/BranchLabel;

    new-instance p1, Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;

    sget-object v6, Lorg/eclipse/jdt/internal/compiler/ast/TryStatement;->SECRET_ANY_HANDLER_NAME:[C

    iget-object v7, p0, Lorg/eclipse/jdt/internal/compiler/ast/TryStatement;->scope:Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;

    invoke-virtual {v7}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->getJavaLangThrowable()Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move-result-object v7

    invoke-direct {p1, v6, v7, v1, v1}, Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;-><init>([CLorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;IZ)V

    iput-object p1, p0, Lorg/eclipse/jdt/internal/compiler/ast/TryStatement;->anyExceptionVariable:Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;

    invoke-virtual {v3, p1}, Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;->addLocalVariable(Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;)V

    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/ast/TryStatement;->anyExceptionVariable:Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;

    sget-object v6, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->NotAConstant:Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    invoke-virtual {p1, v6}, Lorg/eclipse/jdt/internal/compiler/lookup/VariableBinding;->setConstant(Lorg/eclipse/jdt/internal/compiler/impl/Constant;)V

    invoke-virtual {v5}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;->isInsideInitializer()Z

    move-result p1

    if-nez p1, :cond_6

    iget-object p1, v5, Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;->referenceContext:Lorg/eclipse/jdt/internal/compiler/impl/ReferenceContext;

    instance-of v5, p1, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;

    if-eqz v5, :cond_4

    check-cast p1, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;

    iget-object v2, p1, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    goto :goto_3

    :cond_4
    instance-of v5, p1, Lorg/eclipse/jdt/internal/compiler/ast/LambdaExpression;

    if-eqz v5, :cond_5

    check-cast p1, Lorg/eclipse/jdt/internal/compiler/ast/LambdaExpression;

    iget-object v2, p1, Lorg/eclipse/jdt/internal/compiler/ast/FunctionalExpression;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    :cond_5
    :goto_3
    if-eqz v2, :cond_6

    iget-object p1, v2, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->returnType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    iget v2, p1, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->id:I

    const/4 v5, 0x6

    if-eq v2, v5, :cond_6

    new-instance v2, Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;

    sget-object v5, Lorg/eclipse/jdt/internal/compiler/ast/TryStatement;->SECRET_RETURN_VALUE_NAME:[C

    invoke-direct {v2, v5, p1, v1, v1}, Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;-><init>([CLorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;IZ)V

    iput-object v2, p0, Lorg/eclipse/jdt/internal/compiler/ast/TryStatement;->secretReturnValue:Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;

    invoke-virtual {v3, v2}, Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;->addLocalVariable(Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;)V

    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/ast/TryStatement;->secretReturnValue:Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;

    invoke-virtual {p1, v6}, Lorg/eclipse/jdt/internal/compiler/lookup/VariableBinding;->setConstant(Lorg/eclipse/jdt/internal/compiler/impl/Constant;)V

    :cond_6
    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/ast/TryStatement;->finallyBlock:Lorg/eclipse/jdt/internal/compiler/ast/Block;

    invoke-virtual {p1, v3}, Lorg/eclipse/jdt/internal/compiler/ast/Block;->resolveUsing(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;)V

    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/ast/TryStatement;->catchArguments:[Lorg/eclipse/jdt/internal/compiler/ast/Argument;

    if-nez p1, :cond_7

    move p1, v4

    goto :goto_4

    :cond_7
    array-length p1, p1

    add-int/2addr p1, v4

    :goto_4
    new-array p1, p1, [Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;

    iput-object p1, v3, Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;->shiftScopes:[Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;

    aput-object v0, p1, v1

    move-object v2, v3

    :cond_8
    :goto_5
    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/ast/TryStatement;->tryBlock:Lorg/eclipse/jdt/internal/compiler/ast/Block;

    invoke-virtual {p1, v0}, Lorg/eclipse/jdt/internal/compiler/ast/Block;->resolveUsing(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;)V

    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/ast/TryStatement;->catchBlocks:[Lorg/eclipse/jdt/internal/compiler/ast/Block;

    if-eqz p1, :cond_e

    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/ast/TryStatement;->catchArguments:[Lorg/eclipse/jdt/internal/compiler/ast/Argument;

    array-length p1, p1

    new-array v0, p1, [Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move v3, v1

    move v5, v3

    move v6, v5

    :goto_6
    if-lt v3, p1, :cond_a

    if-eqz v5, :cond_9

    return-void

    :cond_9
    invoke-virtual {p0, p1, v0, v6}, Lorg/eclipse/jdt/internal/compiler/ast/TryStatement;->verifyDuplicationAndOrder(I[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Z)V

    goto :goto_8

    :cond_a
    new-instance v7, Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;

    iget-object v8, p0, Lorg/eclipse/jdt/internal/compiler/ast/TryStatement;->scope:Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;

    invoke-direct {v7, v8}, Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;-><init>(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;)V

    if-eqz v2, :cond_b

    iget-object v8, v2, Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;->shiftScopes:[Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;

    add-int/lit8 v9, v3, 0x1

    aput-object v7, v8, v9

    :cond_b
    iget-object v8, p0, Lorg/eclipse/jdt/internal/compiler/ast/TryStatement;->catchArguments:[Lorg/eclipse/jdt/internal/compiler/ast/Argument;

    aget-object v8, v8, v3

    iget-object v9, v8, Lorg/eclipse/jdt/internal/compiler/ast/AbstractVariableDeclaration;->type:Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    iget v9, v9, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->bits:I

    const/high16 v10, 0x20000000

    and-int/2addr v9, v10

    if-eqz v9, :cond_c

    move v9, v4

    goto :goto_7

    :cond_c
    move v9, v1

    :goto_7
    or-int/2addr v6, v9

    invoke-virtual {v8, v7}, Lorg/eclipse/jdt/internal/compiler/ast/Argument;->resolveForCatch(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v8

    aput-object v8, v0, v3

    if-nez v8, :cond_d

    move v5, v4

    :cond_d
    iget-object v8, p0, Lorg/eclipse/jdt/internal/compiler/ast/TryStatement;->catchBlocks:[Lorg/eclipse/jdt/internal/compiler/ast/Block;

    aget-object v8, v8, v3

    invoke-virtual {v8, v7}, Lorg/eclipse/jdt/internal/compiler/ast/Block;->resolveUsing(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    :cond_e
    new-array p1, v1, [Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    iput-object p1, p0, Lorg/eclipse/jdt/internal/compiler/ast/TryStatement;->caughtExceptionTypes:[Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    :goto_8
    if-eqz v2, :cond_f

    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/ast/TryStatement;->scope:Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;

    invoke-virtual {p1, v2}, Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;->addSubscope(Lorg/eclipse/jdt/internal/compiler/lookup/Scope;)V

    :cond_f
    return-void

    :cond_10
    iget-object v5, p0, Lorg/eclipse/jdt/internal/compiler/ast/TryStatement;->resources:[Lorg/eclipse/jdt/internal/compiler/ast/Statement;

    aget-object v5, v5, v4

    invoke-virtual {v5, v3}, Lorg/eclipse/jdt/internal/compiler/ast/Statement;->resolve(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;)V

    iget-object v5, p0, Lorg/eclipse/jdt/internal/compiler/ast/TryStatement;->resources:[Lorg/eclipse/jdt/internal/compiler/ast/Statement;

    aget-object v5, v5, v4

    instance-of v6, v5, Lorg/eclipse/jdt/internal/compiler/ast/LocalDeclaration;

    const/16 v7, 0x3e

    const/16 v8, 0xf

    const/16 v9, 0x2e

    if-eqz v6, :cond_12

    check-cast v5, Lorg/eclipse/jdt/internal/compiler/ast/LocalDeclaration;

    iget-object v6, v5, Lorg/eclipse/jdt/internal/compiler/ast/LocalDeclaration;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;

    if-eqz v6, :cond_14

    invoke-virtual {v6}, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->isValidBinding()Z

    move-result v10

    if-eqz v10, :cond_14

    iget v10, v6, Lorg/eclipse/jdt/internal/compiler/lookup/VariableBinding;->modifiers:I

    or-int/lit8 v10, v10, 0x10

    iput v10, v6, Lorg/eclipse/jdt/internal/compiler/lookup/VariableBinding;->modifiers:I

    iget-wide v10, v6, Lorg/eclipse/jdt/internal/compiler/lookup/VariableBinding;->tagBits:J

    const-wide/16 v12, 0x2000

    or-long/2addr v10, v12

    iput-wide v10, v6, Lorg/eclipse/jdt/internal/compiler/lookup/VariableBinding;->tagBits:J

    iget-object v10, v6, Lorg/eclipse/jdt/internal/compiler/lookup/VariableBinding;->type:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    instance-of v11, v10, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    if-eqz v11, :cond_11

    invoke-virtual {v10, v7, v1}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->findSuperTypeOriginatingFrom(IZ)Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move-result-object v7

    if-nez v7, :cond_14

    invoke-virtual {v10}, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->isValidBinding()Z

    move-result v7

    if-eqz v7, :cond_14

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object v7

    iget-object v5, v5, Lorg/eclipse/jdt/internal/compiler/ast/AbstractVariableDeclaration;->type:Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    invoke-virtual {v7, v10, v5}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->resourceHasToImplementAutoCloseable(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;)V

    new-instance v5, Lorg/eclipse/jdt/internal/compiler/lookup/ProblemReferenceBinding;

    invoke-virtual {v10}, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->shortReadableName()[C

    move-result-object v7

    invoke-static {v9, v7}, Lorg/eclipse/jdt/core/compiler/CharOperation;->splitOn(C[C)[[C

    move-result-object v7

    invoke-direct {v5, v7, v2, v8}, Lorg/eclipse/jdt/internal/compiler/lookup/ProblemReferenceBinding;-><init>([[CLorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;I)V

    iput-object v5, v6, Lorg/eclipse/jdt/internal/compiler/lookup/VariableBinding;->type:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    goto :goto_9

    :cond_11
    if-eqz v10, :cond_14

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object v7

    iget-object v5, v5, Lorg/eclipse/jdt/internal/compiler/ast/AbstractVariableDeclaration;->type:Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    invoke-virtual {v7, v10, v5}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->resourceHasToImplementAutoCloseable(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;)V

    new-instance v5, Lorg/eclipse/jdt/internal/compiler/lookup/ProblemReferenceBinding;

    invoke-virtual {v10}, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->shortReadableName()[C

    move-result-object v7

    invoke-static {v9, v7}, Lorg/eclipse/jdt/core/compiler/CharOperation;->splitOn(C[C)[[C

    move-result-object v7

    invoke-direct {v5, v7, v2, v8}, Lorg/eclipse/jdt/internal/compiler/lookup/ProblemReferenceBinding;-><init>([[CLorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;I)V

    iput-object v5, v6, Lorg/eclipse/jdt/internal/compiler/lookup/VariableBinding;->type:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    goto :goto_9

    :cond_12
    check-cast v5, Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    iget-object v6, v5, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->resolvedType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    instance-of v10, v6, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    if-eqz v10, :cond_13

    invoke-virtual {v6, v7, v1}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->findSuperTypeOriginatingFrom(IZ)Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move-result-object v7

    if-nez v7, :cond_14

    invoke-virtual {v6}, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->isValidBinding()Z

    move-result v7

    if-eqz v7, :cond_14

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object v7

    invoke-virtual {v7, v6, v5}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->resourceHasToImplementAutoCloseable(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;)V

    iget-object v5, p0, Lorg/eclipse/jdt/internal/compiler/ast/TryStatement;->resources:[Lorg/eclipse/jdt/internal/compiler/ast/Statement;

    aget-object v5, v5, v4

    check-cast v5, Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    new-instance v7, Lorg/eclipse/jdt/internal/compiler/lookup/ProblemReferenceBinding;

    invoke-virtual {v6}, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->shortReadableName()[C

    move-result-object v6

    invoke-static {v9, v6}, Lorg/eclipse/jdt/core/compiler/CharOperation;->splitOn(C[C)[[C

    move-result-object v6

    invoke-direct {v7, v6, v2, v8}, Lorg/eclipse/jdt/internal/compiler/lookup/ProblemReferenceBinding;-><init>([[CLorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;I)V

    iput-object v7, v5, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->resolvedType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    goto :goto_9

    :cond_13
    if-eqz v6, :cond_14

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object v7

    invoke-virtual {v7, v6, v5}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->resourceHasToImplementAutoCloseable(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;)V

    iget-object v5, p0, Lorg/eclipse/jdt/internal/compiler/ast/TryStatement;->resources:[Lorg/eclipse/jdt/internal/compiler/ast/Statement;

    aget-object v5, v5, v4

    check-cast v5, Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    new-instance v7, Lorg/eclipse/jdt/internal/compiler/lookup/ProblemReferenceBinding;

    invoke-virtual {v6}, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->shortReadableName()[C

    move-result-object v6

    invoke-static {v9, v6}, Lorg/eclipse/jdt/core/compiler/CharOperation;->splitOn(C[C)[[C

    move-result-object v6

    invoke-direct {v7, v6, v2, v8}, Lorg/eclipse/jdt/internal/compiler/lookup/ProblemReferenceBinding;-><init>([[CLorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;I)V

    iput-object v7, v5, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->resolvedType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    :cond_14
    :goto_9
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_1
.end method

.method public traverse(Lorg/eclipse/jdt/internal/compiler/ASTVisitor;Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;)V
    .locals 6

    invoke-virtual {p1, p0, p2}, Lorg/eclipse/jdt/internal/compiler/ASTVisitor;->visit(Lorg/eclipse/jdt/internal/compiler/ast/TryStatement;Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/TryStatement;->resources:[Lorg/eclipse/jdt/internal/compiler/ast/Statement;

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-lt v3, v1, :cond_2

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/TryStatement;->tryBlock:Lorg/eclipse/jdt/internal/compiler/ast/Block;

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/ast/TryStatement;->scope:Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;

    invoke-virtual {v0, p1, v1}, Lorg/eclipse/jdt/internal/compiler/ast/Block;->traverse(Lorg/eclipse/jdt/internal/compiler/ASTVisitor;Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;)V

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/TryStatement;->catchArguments:[Lorg/eclipse/jdt/internal/compiler/ast/Argument;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/TryStatement;->catchBlocks:[Lorg/eclipse/jdt/internal/compiler/ast/Block;

    array-length v0, v0

    :goto_1
    if-lt v2, v0, :cond_0

    goto :goto_2

    :cond_0
    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/ast/TryStatement;->catchArguments:[Lorg/eclipse/jdt/internal/compiler/ast/Argument;

    aget-object v1, v1, v2

    iget-object v3, p0, Lorg/eclipse/jdt/internal/compiler/ast/TryStatement;->scope:Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;

    invoke-virtual {v1, p1, v3}, Lorg/eclipse/jdt/internal/compiler/ast/Argument;->traverse(Lorg/eclipse/jdt/internal/compiler/ASTVisitor;Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;)V

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/ast/TryStatement;->catchBlocks:[Lorg/eclipse/jdt/internal/compiler/ast/Block;

    aget-object v1, v1, v2

    iget-object v3, p0, Lorg/eclipse/jdt/internal/compiler/ast/TryStatement;->scope:Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;

    invoke-virtual {v1, p1, v3}, Lorg/eclipse/jdt/internal/compiler/ast/Block;->traverse(Lorg/eclipse/jdt/internal/compiler/ASTVisitor;Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    :goto_2
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/TryStatement;->finallyBlock:Lorg/eclipse/jdt/internal/compiler/ast/Block;

    if-eqz v0, :cond_3

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/ast/TryStatement;->scope:Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;

    invoke-virtual {v0, p1, v1}, Lorg/eclipse/jdt/internal/compiler/ast/Block;->traverse(Lorg/eclipse/jdt/internal/compiler/ASTVisitor;Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;)V

    goto :goto_3

    :cond_2
    aget-object v4, v0, v3

    iget-object v5, p0, Lorg/eclipse/jdt/internal/compiler/ast/TryStatement;->scope:Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;

    invoke-virtual {v4, p1, v5}, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->traverse(Lorg/eclipse/jdt/internal/compiler/ASTVisitor;Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    :goto_3
    invoke-virtual {p1, p0, p2}, Lorg/eclipse/jdt/internal/compiler/ASTVisitor;->endVisit(Lorg/eclipse/jdt/internal/compiler/ast/TryStatement;Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;)V

    return-void
.end method

.method public verifyDuplicationAndOrder(I[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Z)V
    .locals 17

    move-object/from16 v0, p0

    move/from16 v1, p1

    const/4 v2, 0x0

    if-eqz p3, :cond_c

    new-array v3, v1, [[Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move v4, v2

    move v5, v4

    :goto_0
    const/high16 v6, 0x20000000

    if-lt v4, v1, :cond_8

    new-array v4, v5, [Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    iput-object v4, v0, Lorg/eclipse/jdt/internal/compiler/ast/TryStatement;->caughtExceptionTypes:[Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    new-array v4, v5, [I

    iput-object v4, v0, Lorg/eclipse/jdt/internal/compiler/ast/TryStatement;->caughtExceptionsCatchBlocks:[I

    move v4, v2

    move v7, v4

    :goto_1
    if-lt v7, v1, :cond_0

    goto/16 :goto_a

    :cond_0
    aget-object v8, v3, v7

    if-nez v8, :cond_1

    goto :goto_6

    :cond_1
    array-length v9, v8

    move v10, v2

    :goto_2
    if-lt v10, v9, :cond_2

    goto :goto_6

    :cond_2
    aget-object v11, v8, v10

    iget-object v5, v0, Lorg/eclipse/jdt/internal/compiler/ast/TryStatement;->caughtExceptionTypes:[Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    aput-object v11, v5, v4

    iget-object v5, v0, Lorg/eclipse/jdt/internal/compiler/ast/TryStatement;->caughtExceptionsCatchBlocks:[I

    add-int/lit8 v12, v4, 0x1

    aput v7, v5, v4

    move v13, v2

    :goto_3
    if-lt v13, v7, :cond_3

    add-int/lit8 v10, v10, 0x1

    move v4, v12

    goto :goto_2

    :cond_3
    aget-object v14, v3, v13

    if-nez v14, :cond_4

    goto :goto_5

    :cond_4
    array-length v15, v14

    move v4, v2

    :goto_4
    if-lt v4, v15, :cond_5

    :goto_5
    add-int/lit8 v13, v13, 0x1

    goto :goto_3

    :cond_5
    aget-object v5, v14, v4

    invoke-virtual {v11, v5}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isCompatibleWith(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Z

    move-result v16

    if-eqz v16, :cond_7

    iget-object v4, v0, Lorg/eclipse/jdt/internal/compiler/ast/TryStatement;->catchArguments:[Lorg/eclipse/jdt/internal/compiler/ast/Argument;

    aget-object v4, v4, v7

    iget-object v4, v4, Lorg/eclipse/jdt/internal/compiler/ast/AbstractVariableDeclaration;->type:Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    iget v8, v4, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->bits:I

    and-int/2addr v8, v6

    if-eqz v8, :cond_6

    check-cast v4, Lorg/eclipse/jdt/internal/compiler/ast/UnionTypeReference;

    iget-object v4, v4, Lorg/eclipse/jdt/internal/compiler/ast/UnionTypeReference;->typeReferences:[Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    aget-object v4, v4, v10

    :cond_6
    iget-object v8, v0, Lorg/eclipse/jdt/internal/compiler/ast/TryStatement;->scope:Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;

    invoke-virtual {v8}, Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object v8

    invoke-virtual {v8, v4, v11, v5}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->wrongSequenceOfExceptionTypesError(Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)V

    move v4, v12

    :goto_6
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_7
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    :cond_8
    aget-object v7, p2, v4

    instance-of v8, v7, Lorg/eclipse/jdt/internal/compiler/lookup/ArrayBinding;

    if-eqz v8, :cond_9

    goto :goto_8

    :cond_9
    check-cast v7, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    iget-object v8, v0, Lorg/eclipse/jdt/internal/compiler/ast/TryStatement;->catchArguments:[Lorg/eclipse/jdt/internal/compiler/ast/Argument;

    aget-object v8, v8, v4

    iget-object v8, v8, Lorg/eclipse/jdt/internal/compiler/ast/AbstractVariableDeclaration;->type:Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    iget v9, v8, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->bits:I

    and-int/2addr v6, v9

    if-eqz v6, :cond_b

    check-cast v8, Lorg/eclipse/jdt/internal/compiler/ast/UnionTypeReference;

    iget-object v6, v8, Lorg/eclipse/jdt/internal/compiler/ast/UnionTypeReference;->typeReferences:[Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    array-length v8, v6

    new-array v9, v8, [Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move v7, v2

    :goto_7
    if-lt v7, v8, :cond_a

    add-int/2addr v5, v8

    aput-object v9, v3, v4

    goto :goto_8

    :cond_a
    aget-object v10, v6, v7

    iget-object v10, v10, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->resolvedType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    check-cast v10, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    aput-object v10, v9, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_7

    :cond_b
    filled-new-array {v7}, [Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move-result-object v6

    aput-object v6, v3, v4

    add-int/lit8 v5, v5, 0x1

    :goto_8
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    :cond_c
    new-array v3, v1, [Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    iput-object v3, v0, Lorg/eclipse/jdt/internal/compiler/ast/TryStatement;->caughtExceptionTypes:[Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move v3, v2

    :goto_9
    if-lt v3, v1, :cond_d

    :goto_a
    return-void

    :cond_d
    aget-object v4, p2, v3

    instance-of v5, v4, Lorg/eclipse/jdt/internal/compiler/lookup/ArrayBinding;

    if-eqz v5, :cond_e

    goto :goto_c

    :cond_e
    iget-object v5, v0, Lorg/eclipse/jdt/internal/compiler/ast/TryStatement;->caughtExceptionTypes:[Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    check-cast v4, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    aput-object v4, v5, v3

    move v4, v2

    :goto_b
    if-lt v4, v3, :cond_f

    :goto_c
    add-int/lit8 v3, v3, 0x1

    goto :goto_9

    :cond_f
    iget-object v5, v0, Lorg/eclipse/jdt/internal/compiler/ast/TryStatement;->caughtExceptionTypes:[Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    aget-object v5, v5, v3

    aget-object v6, p2, v4

    invoke-virtual {v5, v6}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isCompatibleWith(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Z

    move-result v5

    if-eqz v5, :cond_10

    iget-object v5, v0, Lorg/eclipse/jdt/internal/compiler/ast/TryStatement;->scope:Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;

    invoke-virtual {v5}, Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object v5

    iget-object v6, v0, Lorg/eclipse/jdt/internal/compiler/ast/TryStatement;->catchArguments:[Lorg/eclipse/jdt/internal/compiler/ast/Argument;

    aget-object v6, v6, v3

    iget-object v6, v6, Lorg/eclipse/jdt/internal/compiler/ast/AbstractVariableDeclaration;->type:Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    iget-object v7, v0, Lorg/eclipse/jdt/internal/compiler/ast/TryStatement;->caughtExceptionTypes:[Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    aget-object v7, v7, v3

    aget-object v8, p2, v4

    invoke-virtual {v5, v6, v7, v8}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->wrongSequenceOfExceptionTypesError(Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)V

    :cond_10
    add-int/lit8 v4, v4, 0x1

    goto :goto_b
.end method
