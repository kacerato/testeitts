.class public Lorg/eclipse/jdt/internal/compiler/flow/ExceptionHandlingFlowContext;
.super Lorg/eclipse/jdt/internal/compiler/flow/FlowContext;
.source "SourceFile"


# static fields
.field public static final BitCacheSize:I = 0x20

.field private static final NO_ARGUMENTS:[Lorg/eclipse/jdt/internal/compiler/ast/Argument;


# instance fields
.field public catchArguments:[Lorg/eclipse/jdt/internal/compiler/ast/Argument;

.field private exceptionToCatchBlockMap:[I

.field public extendedExceptions:Ljava/util/ArrayList;

.field public handledExceptions:[Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

.field indexes:Lorg/eclipse/jdt/internal/compiler/codegen/ObjectCache;

.field public initializationParent:Lorg/eclipse/jdt/internal/compiler/flow/FlowContext;

.field initsOnExceptions:[Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;

.field public initsOnReturn:Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;

.field isMethodContext:Z

.field isNeeded:[I

.field isReached:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [Lorg/eclipse/jdt/internal/compiler/ast/Argument;

    sput-object v0, Lorg/eclipse/jdt/internal/compiler/flow/ExceptionHandlingFlowContext;->NO_ARGUMENTS:[Lorg/eclipse/jdt/internal/compiler/ast/Argument;

    return-void
.end method

.method public constructor <init>(Lorg/eclipse/jdt/internal/compiler/flow/FlowContext;Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;[Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;Lorg/eclipse/jdt/internal/compiler/flow/FlowContext;Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;)V
    .locals 9

    const/4 v4, 0x0

    .line 1
    sget-object v5, Lorg/eclipse/jdt/internal/compiler/flow/ExceptionHandlingFlowContext;->NO_ARGUMENTS:[Lorg/eclipse/jdt/internal/compiler/ast/Argument;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v6, p4

    move-object v7, p5

    move-object v8, p6

    invoke-direct/range {v0 .. v8}, Lorg/eclipse/jdt/internal/compiler/flow/ExceptionHandlingFlowContext;-><init>(Lorg/eclipse/jdt/internal/compiler/flow/FlowContext;Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;[Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;[I[Lorg/eclipse/jdt/internal/compiler/ast/Argument;Lorg/eclipse/jdt/internal/compiler/flow/FlowContext;Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;)V

    return-void
.end method

.method public constructor <init>(Lorg/eclipse/jdt/internal/compiler/flow/FlowContext;Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;[Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;[I[Lorg/eclipse/jdt/internal/compiler/ast/Argument;Lorg/eclipse/jdt/internal/compiler/flow/FlowContext;Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;)V
    .locals 6

    const/4 v0, 0x1

    .line 8
    invoke-direct {p0, p1, p2, v0}, Lorg/eclipse/jdt/internal/compiler/flow/FlowContext;-><init>(Lorg/eclipse/jdt/internal/compiler/flow/FlowContext;Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;Z)V

    .line 9
    new-instance p1, Lorg/eclipse/jdt/internal/compiler/codegen/ObjectCache;

    invoke-direct {p1}, Lorg/eclipse/jdt/internal/compiler/codegen/ObjectCache;-><init>()V

    iput-object p1, p0, Lorg/eclipse/jdt/internal/compiler/flow/ExceptionHandlingFlowContext;->indexes:Lorg/eclipse/jdt/internal/compiler/codegen/ObjectCache;

    .line 10
    invoke-virtual {p7}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->methodScope()Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;

    move-result-object p1

    const/4 p2, 0x0

    if-ne p7, p1, :cond_0

    move p1, v0

    goto :goto_0

    :cond_0
    move p1, p2

    :goto_0
    iput-boolean p1, p0, Lorg/eclipse/jdt/internal/compiler/flow/ExceptionHandlingFlowContext;->isMethodContext:Z

    .line 11
    iput-object p3, p0, Lorg/eclipse/jdt/internal/compiler/flow/ExceptionHandlingFlowContext;->handledExceptions:[Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    .line 12
    iput-object p5, p0, Lorg/eclipse/jdt/internal/compiler/flow/ExceptionHandlingFlowContext;->catchArguments:[Lorg/eclipse/jdt/internal/compiler/ast/Argument;

    .line 13
    iput-object p4, p0, Lorg/eclipse/jdt/internal/compiler/flow/ExceptionHandlingFlowContext;->exceptionToCatchBlockMap:[I

    .line 14
    array-length p4, p3

    div-int/lit8 p5, p4, 0x20

    add-int/2addr p5, v0

    .line 15
    new-array v1, p5, [I

    iput-object v1, p0, Lorg/eclipse/jdt/internal/compiler/flow/ExceptionHandlingFlowContext;->isReached:[I

    .line 16
    new-array v1, p5, [I

    iput-object v1, p0, Lorg/eclipse/jdt/internal/compiler/flow/ExceptionHandlingFlowContext;->isNeeded:[I

    .line 17
    new-array v1, p4, [Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;

    iput-object v1, p0, Lorg/eclipse/jdt/internal/compiler/flow/ExceptionHandlingFlowContext;->initsOnExceptions:[Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;

    if-eqz p1, :cond_1

    .line 18
    invoke-virtual {p7}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->compilerOptions()Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;

    move-result-object p1

    iget-boolean p1, p1, Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;->reportUnusedDeclaredThrownExceptionExemptExceptionAndThrowable:Z

    if-nez p1, :cond_1

    move p1, p2

    goto :goto_1

    :cond_1
    move p1, v0

    :goto_1
    move p7, p2

    :goto_2
    if-lt p7, p4, :cond_3

    .line 19
    iget-boolean p1, p0, Lorg/eclipse/jdt/internal/compiler/flow/ExceptionHandlingFlowContext;->isMethodContext:Z

    if-nez p1, :cond_2

    .line 20
    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/flow/ExceptionHandlingFlowContext;->isReached:[I

    iget-object p3, p0, Lorg/eclipse/jdt/internal/compiler/flow/ExceptionHandlingFlowContext;->isNeeded:[I

    invoke-static {p1, p2, p3, p2, p5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 21
    :cond_2
    sget-object p1, Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;->DEAD_END:Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;

    iput-object p1, p0, Lorg/eclipse/jdt/internal/compiler/flow/ExceptionHandlingFlowContext;->initsOnReturn:Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;

    .line 22
    iput-object p6, p0, Lorg/eclipse/jdt/internal/compiler/flow/ExceptionHandlingFlowContext;->initializationParent:Lorg/eclipse/jdt/internal/compiler/flow/FlowContext;

    return-void

    .line 23
    :cond_3
    aget-object v1, p3, p7

    .line 24
    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/flow/ExceptionHandlingFlowContext;->exceptionToCatchBlockMap:[I

    if-eqz v2, :cond_4

    aget v2, v2, p7

    goto :goto_3

    :cond_4
    move v2, p7

    .line 25
    :goto_3
    iget-object v3, p0, Lorg/eclipse/jdt/internal/compiler/flow/ExceptionHandlingFlowContext;->indexes:Lorg/eclipse/jdt/internal/compiler/codegen/ObjectCache;

    invoke-virtual {v3, v1, p7}, Lorg/eclipse/jdt/internal/compiler/codegen/ObjectCache;->put(Ljava/lang/Object;I)I

    .line 26
    invoke-virtual {v1, v0}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->isUncheckedException(Z)Z

    move-result v3

    if-eqz v3, :cond_7

    if-nez p1, :cond_5

    .line 27
    iget v1, v1, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->id:I

    const/16 v3, 0x15

    if-eq v1, v3, :cond_6

    const/16 v3, 0x19

    if-eq v1, v3, :cond_6

    .line 28
    :cond_5
    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/flow/ExceptionHandlingFlowContext;->isReached:[I

    div-int/lit8 v3, p7, 0x20

    aget v4, v1, v3

    rem-int/lit8 v5, p7, 0x20

    shl-int v5, v0, v5

    or-int/2addr v4, v5

    aput v4, v1, v3

    .line 29
    :cond_6
    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/flow/ExceptionHandlingFlowContext;->initsOnExceptions:[Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;

    invoke-virtual {p8}, Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;->unconditionalCopy()Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;

    move-result-object v3

    aput-object v3, v1, v2

    goto :goto_4

    .line 30
    :cond_7
    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/flow/ExceptionHandlingFlowContext;->initsOnExceptions:[Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;

    sget-object v3, Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;->DEAD_END:Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;

    aput-object v3, v1, v2

    :goto_4
    add-int/lit8 p7, p7, 0x1

    goto :goto_2
.end method

.method public constructor <init>(Lorg/eclipse/jdt/internal/compiler/flow/FlowContext;Lorg/eclipse/jdt/internal/compiler/ast/TryStatement;[Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;[ILorg/eclipse/jdt/internal/compiler/flow/FlowContext;Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;)V
    .locals 9

    move-object v2, p2

    .line 2
    iget-object v5, v2, Lorg/eclipse/jdt/internal/compiler/ast/TryStatement;->catchArguments:[Lorg/eclipse/jdt/internal/compiler/ast/Argument;

    invoke-virtual/range {p7 .. p7}, Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;->unconditionalInits()Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;

    move-result-object v8

    move-object v0, p0

    move-object v1, p1

    move-object v3, p3

    move-object v4, p4

    move-object v6, p5

    move-object v7, p6

    invoke-direct/range {v0 .. v8}, Lorg/eclipse/jdt/internal/compiler/flow/ExceptionHandlingFlowContext;-><init>(Lorg/eclipse/jdt/internal/compiler/flow/FlowContext;Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;[Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;[I[Lorg/eclipse/jdt/internal/compiler/ast/Argument;Lorg/eclipse/jdt/internal/compiler/flow/FlowContext;Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;)V

    .line 3
    invoke-virtual/range {p7 .. p7}, Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;->unconditionalCopy()Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;

    move-result-object v0

    const-wide/16 v1, -0x1

    .line 4
    iput-wide v1, v0, Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;->iNBit:J

    .line 5
    iput-wide v1, v0, Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;->iNNBit:J

    .line 6
    iget v1, v0, Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;->tagBits:I

    or-int/lit8 v1, v1, 0x40

    iput v1, v0, Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;->tagBits:I

    move-object v1, p0

    .line 7
    iput-object v0, v1, Lorg/eclipse/jdt/internal/compiler/flow/FlowContext;->initsOnFinally:Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;

    return-void
.end method

.method private getExceptionType(I)Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;
    .locals 7

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/flow/ExceptionHandlingFlowContext;->exceptionToCatchBlockMap:[I

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/flow/ExceptionHandlingFlowContext;->catchArguments:[Lorg/eclipse/jdt/internal/compiler/ast/Argument;

    aget-object p1, v0, p1

    iget-object p1, p1, Lorg/eclipse/jdt/internal/compiler/ast/AbstractVariableDeclaration;->type:Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    return-object p1

    :cond_0
    aget v0, v0, p1

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/flow/ExceptionHandlingFlowContext;->catchArguments:[Lorg/eclipse/jdt/internal/compiler/ast/Argument;

    aget-object v0, v1, v0

    iget-object v0, v0, Lorg/eclipse/jdt/internal/compiler/ast/AbstractVariableDeclaration;->type:Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    instance-of v1, v0, Lorg/eclipse/jdt/internal/compiler/ast/UnionTypeReference;

    if-eqz v1, :cond_3

    move-object v1, v0

    check-cast v1, Lorg/eclipse/jdt/internal/compiler/ast/UnionTypeReference;

    iget-object v1, v1, Lorg/eclipse/jdt/internal/compiler/ast/UnionTypeReference;->typeReferences:[Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-lt v3, v2, :cond_1

    goto :goto_1

    :cond_1
    aget-object v4, v1, v3

    iget-object v5, v4, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->resolvedType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    iget-object v6, p0, Lorg/eclipse/jdt/internal/compiler/flow/ExceptionHandlingFlowContext;->handledExceptions:[Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    aget-object v6, v6, p1

    invoke-static {v5, v6}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->equalsEquals(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Z

    move-result v5

    if-eqz v5, :cond_2

    return-object v4

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    return-object v0
.end method


# virtual methods
.method public complainIfUnusedExceptionHandlers(Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;)V
    .locals 10

    .line 1
    iget-object v0, p1, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->scope:Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;

    .line 2
    iget-object v1, p1, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    iget v1, v1, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->modifiers:I

    const/high16 v2, 0x30000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    .line 3
    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->compilerOptions()Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;

    move-result-object v1

    iget-boolean v1, v1, Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;->reportUnusedDeclaredThrownExceptionWhenOverriding:Z

    if-nez v1, :cond_0

    return-void

    .line 4
    :cond_0
    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->compilerOptions()Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;

    move-result-object v1

    .line 5
    iget-boolean v1, v1, Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;->reportUnusedDeclaredThrownExceptionIncludeDocCommentReference:Z

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-eqz v1, :cond_2

    .line 6
    iget-object v1, p1, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->javadoc:Lorg/eclipse/jdt/internal/compiler/ast/Javadoc;

    if-eqz v1, :cond_2

    .line 7
    iget-object v1, v1, Lorg/eclipse/jdt/internal/compiler/ast/Javadoc;->exceptionReferences:[Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    if-eqz v1, :cond_2

    .line 8
    array-length v1, v1

    if-lez v1, :cond_3

    .line 9
    new-array v4, v1, [Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move v3, v2

    :goto_0
    if-lt v3, v1, :cond_1

    move-object v3, v4

    goto :goto_1

    .line 10
    :cond_1
    iget-object v5, p1, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->javadoc:Lorg/eclipse/jdt/internal/compiler/ast/Javadoc;

    iget-object v5, v5, Lorg/eclipse/jdt/internal/compiler/ast/Javadoc;->exceptionReferences:[Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    aget-object v5, v5, v3

    iget-object v5, v5, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->resolvedType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    aput-object v5, v4, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    move v1, v2

    .line 11
    :cond_3
    :goto_1
    iget-object v4, p0, Lorg/eclipse/jdt/internal/compiler/flow/ExceptionHandlingFlowContext;->handledExceptions:[Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    array-length v4, v4

    move v5, v2

    :goto_2
    if-lt v5, v4, :cond_4

    return-void

    .line 12
    :cond_4
    iget-object v6, p0, Lorg/eclipse/jdt/internal/compiler/flow/ExceptionHandlingFlowContext;->indexes:Lorg/eclipse/jdt/internal/compiler/codegen/ObjectCache;

    iget-object v7, p0, Lorg/eclipse/jdt/internal/compiler/flow/ExceptionHandlingFlowContext;->handledExceptions:[Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    aget-object v7, v7, v5

    invoke-virtual {v6, v7}, Lorg/eclipse/jdt/internal/compiler/codegen/ObjectCache;->get(Ljava/lang/Object;)I

    move-result v6

    .line 13
    iget-object v7, p0, Lorg/eclipse/jdt/internal/compiler/flow/ExceptionHandlingFlowContext;->isReached:[I

    div-int/lit8 v8, v6, 0x20

    aget v7, v7, v8

    rem-int/lit8 v8, v6, 0x20

    const/4 v9, 0x1

    shl-int v8, v9, v8

    and-int/2addr v7, v8

    if-nez v7, :cond_7

    move v7, v2

    :goto_3
    if-lt v7, v1, :cond_5

    .line 14
    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object v7

    .line 15
    iget-object v8, p0, Lorg/eclipse/jdt/internal/compiler/flow/ExceptionHandlingFlowContext;->handledExceptions:[Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    aget-object v8, v8, v6

    .line 16
    iget-object v9, p1, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->thrownExceptions:[Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    aget-object v6, v9, v6

    .line 17
    invoke-virtual {v7, v8, p1, v6}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->unusedDeclaredThrownException(Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;)V

    goto :goto_4

    .line 18
    :cond_5
    aget-object v8, v3, v7

    iget-object v9, p0, Lorg/eclipse/jdt/internal/compiler/flow/ExceptionHandlingFlowContext;->handledExceptions:[Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    aget-object v9, v9, v5

    invoke-static {v8, v9}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->equalsEquals(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Z

    move-result v8

    if-eqz v8, :cond_6

    goto :goto_4

    :cond_6
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    :cond_7
    :goto_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_2
.end method

.method public complainIfUnusedExceptionHandlers(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;Lorg/eclipse/jdt/internal/compiler/ast/TryStatement;)V
    .locals 4

    .line 19
    iget-object p2, p0, Lorg/eclipse/jdt/internal/compiler/flow/ExceptionHandlingFlowContext;->handledExceptions:[Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    array-length p2, p2

    const/4 v0, 0x0

    :goto_0
    if-lt v0, p2, :cond_0

    return-void

    .line 20
    :cond_0
    div-int/lit8 v1, v0, 0x20

    .line 21
    rem-int/lit8 v2, v0, 0x20

    const/4 v3, 0x1

    shl-int v2, v3, v2

    .line 22
    iget-object v3, p0, Lorg/eclipse/jdt/internal/compiler/flow/ExceptionHandlingFlowContext;->isReached:[I

    aget v3, v3, v1

    and-int/2addr v3, v2

    if-nez v3, :cond_1

    .line 23
    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object v1

    .line 24
    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/flow/ExceptionHandlingFlowContext;->handledExceptions:[Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    aget-object v2, v2, v0

    .line 25
    invoke-direct {p0, v0}, Lorg/eclipse/jdt/internal/compiler/flow/ExceptionHandlingFlowContext;->getExceptionType(I)Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;

    move-result-object v3

    .line 26
    invoke-virtual {v1, v2, v3}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->unreachableCatchBlock(Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;)V

    goto :goto_1

    .line 27
    :cond_1
    iget-object v3, p0, Lorg/eclipse/jdt/internal/compiler/flow/ExceptionHandlingFlowContext;->isNeeded:[I

    aget v1, v3, v1

    and-int/2addr v1, v2

    if-nez v1, :cond_2

    .line 28
    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object v1

    .line 29
    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/flow/ExceptionHandlingFlowContext;->handledExceptions:[Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    aget-object v2, v2, v0

    .line 30
    invoke-direct {p0, v0}, Lorg/eclipse/jdt/internal/compiler/flow/ExceptionHandlingFlowContext;->getExceptionType(I)Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;

    move-result-object v3

    .line 31
    invoke-virtual {v1, v2, v3}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->hiddenCatchBlock(Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;)V

    :cond_2
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public getInitializationContext()Lorg/eclipse/jdt/internal/compiler/flow/FlowContext;
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/flow/ExceptionHandlingFlowContext;->initializationParent:Lorg/eclipse/jdt/internal/compiler/flow/FlowContext;

    return-object v0
.end method

.method public individualToString()Ljava/lang/String;
    .locals 7

    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "Exception flow context"

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/flow/ExceptionHandlingFlowContext;->handledExceptions:[Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    array-length v1, v1

    const/4 v2, 0x0

    :goto_0
    const/16 v3, 0x5d

    if-lt v2, v1, :cond_0

    const-string v1, "[initsOnReturn -"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/flow/ExceptionHandlingFlowContext;->initsOnReturn:Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    div-int/lit8 v4, v2, 0x20

    rem-int/lit8 v5, v2, 0x20

    const/4 v6, 0x1

    shl-int v5, v6, v5

    const/16 v6, 0x5b

    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    iget-object v6, p0, Lorg/eclipse/jdt/internal/compiler/flow/ExceptionHandlingFlowContext;->handledExceptions:[Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    aget-object v6, v6, v2

    invoke-virtual {v6}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->readableName()[C

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    iget-object v6, p0, Lorg/eclipse/jdt/internal/compiler/flow/ExceptionHandlingFlowContext;->isReached:[I

    aget v6, v6, v4

    and-int/2addr v6, v5

    if-eqz v6, :cond_2

    iget-object v6, p0, Lorg/eclipse/jdt/internal/compiler/flow/ExceptionHandlingFlowContext;->isNeeded:[I

    aget v4, v6, v4

    and-int/2addr v4, v5

    if-nez v4, :cond_1

    const-string v4, "-masked"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    :cond_1
    const-string v4, "-reached"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    :cond_2
    const-string v4, "-not reached"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :goto_1
    iget-object v4, p0, Lorg/eclipse/jdt/internal/compiler/flow/ExceptionHandlingFlowContext;->exceptionToCatchBlockMap:[I

    if-eqz v4, :cond_3

    aget v4, v4, v2

    goto :goto_2

    :cond_3
    move v4, v2

    :goto_2
    const/16 v5, 0x2d

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    iget-object v5, p0, Lorg/eclipse/jdt/internal/compiler/flow/ExceptionHandlingFlowContext;->initsOnExceptions:[Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;

    aget-object v4, v5, v4

    invoke-virtual {v4}, Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public initsOnException(I)Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/flow/ExceptionHandlingFlowContext;->initsOnExceptions:[Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;

    aget-object p1, v0, p1

    return-object p1
.end method

.method public initsOnReturn()Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/flow/ExceptionHandlingFlowContext;->initsOnReturn:Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;

    return-object v0
.end method

.method public mergeUnhandledException(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)V
    .locals 5

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/flow/ExceptionHandlingFlowContext;->extendedExceptions:Ljava/util/ArrayList;

    const/4 v1, 0x0

    if-nez v0, :cond_1

    new-instance v0, Ljava/util/ArrayList;

    const/4 v2, 0x5

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lorg/eclipse/jdt/internal/compiler/flow/ExceptionHandlingFlowContext;->extendedExceptions:Ljava/util/ArrayList;

    move v0, v1

    :goto_0
    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/flow/ExceptionHandlingFlowContext;->handledExceptions:[Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    array-length v3, v2

    if-lt v0, v3, :cond_0

    goto :goto_1

    :cond_0
    iget-object v3, p0, Lorg/eclipse/jdt/internal/compiler/flow/ExceptionHandlingFlowContext;->extendedExceptions:Ljava/util/ArrayList;

    aget-object v2, v2, v0

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/flow/ExceptionHandlingFlowContext;->extendedExceptions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v2, 0x1

    sub-int/2addr v0, v2

    :goto_2
    if-gez v0, :cond_3

    if-nez v1, :cond_2

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/flow/ExceptionHandlingFlowContext;->extendedExceptions:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    return-void

    :cond_3
    iget-object v3, p0, Lorg/eclipse/jdt/internal/compiler/flow/ExceptionHandlingFlowContext;->extendedExceptions:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-static {p1, v3}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->compareTypes(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_5

    if-eq v3, v2, :cond_4

    goto :goto_3

    :cond_4
    iget-object v3, p0, Lorg/eclipse/jdt/internal/compiler/flow/ExceptionHandlingFlowContext;->extendedExceptions:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_3

    :cond_5
    move v1, v2

    :goto_3
    add-int/lit8 v0, v0, -0x1

    goto :goto_2
.end method

.method public recordHandlingException(Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;Z)V
    .locals 2

    iget-object p3, p0, Lorg/eclipse/jdt/internal/compiler/flow/ExceptionHandlingFlowContext;->indexes:Lorg/eclipse/jdt/internal/compiler/codegen/ObjectCache;

    invoke-virtual {p3, p1}, Lorg/eclipse/jdt/internal/compiler/codegen/ObjectCache;->get(Ljava/lang/Object;)I

    move-result p1

    div-int/lit8 p3, p1, 0x20

    const/4 p5, 0x1

    rem-int/lit8 v0, p1, 0x20

    shl-int/2addr p5, v0

    if-nez p6, :cond_0

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/flow/ExceptionHandlingFlowContext;->isNeeded:[I

    aget v1, v0, p3

    or-int/2addr v1, p5

    aput v1, v0, p3

    :cond_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/flow/ExceptionHandlingFlowContext;->isReached:[I

    aget v1, v0, p3

    or-int/2addr p5, v1

    aput p5, v0, p3

    iget-object p3, p0, Lorg/eclipse/jdt/internal/compiler/flow/ExceptionHandlingFlowContext;->exceptionToCatchBlockMap:[I

    if-eqz p3, :cond_1

    aget p1, p3, p1

    :cond_1
    if-eqz p4, :cond_2

    iget-object p3, p0, Lorg/eclipse/jdt/internal/compiler/flow/ExceptionHandlingFlowContext;->catchArguments:[Lorg/eclipse/jdt/internal/compiler/ast/Argument;

    if-eqz p3, :cond_2

    array-length p5, p3

    if-lez p5, :cond_2

    if-nez p6, :cond_2

    aget-object p3, p3, p1

    iget-object p3, p3, Lorg/eclipse/jdt/internal/compiler/ast/LocalDeclaration;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;

    check-cast p3, Lorg/eclipse/jdt/internal/compiler/lookup/CatchParameterBinding;

    invoke-virtual {p3, p4}, Lorg/eclipse/jdt/internal/compiler/lookup/CatchParameterBinding;->setPreciseType(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)V

    :cond_2
    iget-object p3, p0, Lorg/eclipse/jdt/internal/compiler/flow/ExceptionHandlingFlowContext;->initsOnExceptions:[Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;

    aget-object p4, p3, p1

    iget p5, p4, Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;->tagBits:I

    and-int/lit8 p5, p5, 0x3

    if-nez p5, :cond_3

    invoke-virtual {p4, p2}, Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;->mergedWith(Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;)Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;

    move-result-object p2

    goto :goto_0

    :cond_3
    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;->unconditionalCopy()Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;

    move-result-object p2

    :goto_0
    aput-object p2, p3, p1

    return-void
.end method

.method public recordReturnFrom(Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;)V
    .locals 2

    iget v0, p1, Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;->tagBits:I

    and-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/flow/ExceptionHandlingFlowContext;->initsOnReturn:Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;

    iget v1, v0, Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;->tagBits:I

    and-int/lit8 v1, v1, 0x1

    if-nez v1, :cond_0

    invoke-virtual {v0, p1}, Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;->mergedWith(Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;)Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;

    move-result-object p1

    iput-object p1, p0, Lorg/eclipse/jdt/internal/compiler/flow/ExceptionHandlingFlowContext;->initsOnReturn:Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;->copy()Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;

    move-result-object p1

    check-cast p1, Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;

    iput-object p1, p0, Lorg/eclipse/jdt/internal/compiler/flow/ExceptionHandlingFlowContext;->initsOnReturn:Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;

    :cond_1
    :goto_0
    return-void
.end method

.method public subroutine()Lorg/eclipse/jdt/internal/compiler/ast/SubRoutineStatement;
    .locals 3

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/flow/FlowContext;->associatedNode:Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;

    instance-of v0, v0, Lorg/eclipse/jdt/internal/compiler/ast/SubRoutineStatement;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/flow/FlowContext;->parent:Lorg/eclipse/jdt/internal/compiler/flow/FlowContext;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/flow/FlowContext;->subroutine()Lorg/eclipse/jdt/internal/compiler/ast/SubRoutineStatement;

    move-result-object v0

    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/flow/FlowContext;->associatedNode:Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;

    if-ne v0, v2, :cond_0

    return-object v1

    :cond_0
    check-cast v2, Lorg/eclipse/jdt/internal/compiler/ast/SubRoutineStatement;

    return-object v2

    :cond_1
    return-object v1
.end method
