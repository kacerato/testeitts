.class public abstract Lorg/eclipse/jdt/internal/compiler/ast/FunctionalExpression;
.super Lorg/eclipse/jdt/internal/compiler/ast/Expression;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/eclipse/jdt/internal/compiler/ast/FunctionalExpression$VisibilityInspector;
    }
.end annotation


# static fields
.field protected static silentErrorHandlingPolicy:Lorg/eclipse/jdt/internal/compiler/IErrorHandlingPolicy;


# instance fields
.field protected actualMethodBinding:Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

.field public binding:Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

.field public bootstrapMethodNumber:I

.field public compilationResult:Lorg/eclipse/jdt/internal/compiler/CompilationResult;

.field public descriptor:Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

.field public enclosingScope:Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;

.field protected expectedType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

.field protected expressionContext:Lorg/eclipse/jdt/internal/compiler/ast/ExpressionContext;

.field public hasDescripterProblem:Z

.field private hasReportedSamProblem:Z

.field ignoreFurtherInvestigation:Z

.field public isSerializable:Z

.field public ordinal:I

.field public shouldCaptureInstance:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lorg/eclipse/jdt/internal/compiler/DefaultErrorHandlingPolicies;->ignoreAllProblems()Lorg/eclipse/jdt/internal/compiler/IErrorHandlingPolicy;

    move-result-object v0

    sput-object v0, Lorg/eclipse/jdt/internal/compiler/ast/FunctionalExpression;->silentErrorHandlingPolicy:Lorg/eclipse/jdt/internal/compiler/IErrorHandlingPolicy;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 7
    invoke-direct {p0}, Lorg/eclipse/jdt/internal/compiler/ast/Expression;-><init>()V

    .line 8
    sget-object v0, Lorg/eclipse/jdt/internal/compiler/ast/ExpressionContext;->VANILLA_CONTEXT:Lorg/eclipse/jdt/internal/compiler/ast/ExpressionContext;

    iput-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/FunctionalExpression;->expressionContext:Lorg/eclipse/jdt/internal/compiler/ast/ExpressionContext;

    const/4 v0, -0x1

    .line 9
    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/FunctionalExpression;->bootstrapMethodNumber:I

    const/4 v0, 0x0

    .line 10
    iput-boolean v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/FunctionalExpression;->shouldCaptureInstance:Z

    .line 11
    iput-boolean v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/FunctionalExpression;->hasReportedSamProblem:Z

    return-void
.end method

.method public constructor <init>(Lorg/eclipse/jdt/internal/compiler/CompilationResult;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lorg/eclipse/jdt/internal/compiler/ast/Expression;-><init>()V

    .line 2
    sget-object v0, Lorg/eclipse/jdt/internal/compiler/ast/ExpressionContext;->VANILLA_CONTEXT:Lorg/eclipse/jdt/internal/compiler/ast/ExpressionContext;

    iput-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/FunctionalExpression;->expressionContext:Lorg/eclipse/jdt/internal/compiler/ast/ExpressionContext;

    const/4 v0, -0x1

    .line 3
    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/FunctionalExpression;->bootstrapMethodNumber:I

    const/4 v0, 0x0

    .line 4
    iput-boolean v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/FunctionalExpression;->shouldCaptureInstance:Z

    .line 5
    iput-boolean v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/FunctionalExpression;->hasReportedSamProblem:Z

    .line 6
    iput-object p1, p0, Lorg/eclipse/jdt/internal/compiler/ast/FunctionalExpression;->compilationResult:Lorg/eclipse/jdt/internal/compiler/CompilationResult;

    return-void
.end method


# virtual methods
.method public argumentsTypeElided()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public cleanUp()V
    .locals 0

    return-void
.end method

.method public diagnosticsSourceEnd()I
    .locals 1

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceEnd:I

    return v0
.end method

.method public expectedType()Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/FunctionalExpression;->expectedType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    return-object v0
.end method

.method public getExpressionContext()Lorg/eclipse/jdt/internal/compiler/ast/ExpressionContext;
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/FunctionalExpression;->expressionContext:Lorg/eclipse/jdt/internal/compiler/ast/ExpressionContext;

    return-object v0
.end method

.method public getMethodBinding()Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getRequiredBridges()[Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;
    .locals 3

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/FunctionalExpression;->expectedType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    instance-of v1, v0, Lorg/eclipse/jdt/internal/compiler/lookup/IntersectionTypeBinding18;

    if-eqz v1, :cond_0

    check-cast v0, Lorg/eclipse/jdt/internal/compiler/lookup/IntersectionTypeBinding18;

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/ast/FunctionalExpression;->enclosingScope:Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;

    invoke-virtual {v0, v1}, Lorg/eclipse/jdt/internal/compiler/lookup/IntersectionTypeBinding18;->getSAMType(Lorg/eclipse/jdt/internal/compiler/lookup/Scope;)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    goto :goto_0

    :cond_0
    check-cast v0, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    :goto_0
    new-instance v1, Lorg/eclipse/jdt/internal/compiler/ast/FunctionalExpression$1BridgeCollector;

    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/ast/FunctionalExpression;->descriptor:Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    invoke-direct {v1, p0, v0, v2}, Lorg/eclipse/jdt/internal/compiler/ast/FunctionalExpression$1BridgeCollector;-><init>(Lorg/eclipse/jdt/internal/compiler/ast/FunctionalExpression;Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;)V

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/compiler/ast/FunctionalExpression$1BridgeCollector;->getBridges()[Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    move-result-object v0

    return-object v0
.end method

.method public invocationTargetType()Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;
    .locals 4

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/FunctionalExpression;->expectedType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/ast/FunctionalExpression;->enclosingScope:Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->getSingleAbstractMethod(Lorg/eclipse/jdt/internal/compiler/lookup/Scope;Z)Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->problemId()I

    move-result v2

    const/16 v3, 0x11

    if-eq v2, v3, :cond_2

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->isConstructor()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v0, v0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->declaringClass:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    return-object v0

    :cond_1
    iget-object v0, v0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->returnType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    return-object v0

    :cond_2
    return-object v1
.end method

.method public isBoxingCompatibleWith(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/Scope;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public isFunctionalType()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isPertinentToApplicability(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;)Z
    .locals 2

    instance-of v0, p1, Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;

    if-eqz v0, :cond_2

    check-cast p1, Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;

    const/4 v0, 0x0

    if-eqz p2, :cond_1

    iget-object v1, p1, Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;->declaringElement:Lorg/eclipse/jdt/internal/compiler/lookup/Binding;

    if-ne v1, p2, :cond_0

    return v0

    :cond_0
    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->isConstructor()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object p1, p1, Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;->declaringElement:Lorg/eclipse/jdt/internal/compiler/lookup/Binding;

    iget-object p2, p2, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->declaringClass:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    if-ne p1, p2, :cond_2

    return v0

    :cond_1
    iget-object p1, p1, Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;->declaringElement:Lorg/eclipse/jdt/internal/compiler/lookup/Binding;

    instance-of p1, p1, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    if-eqz p1, :cond_2

    return v0

    :cond_2
    const/4 p1, 0x1

    return p1
.end method

.method public isPolyExpression()Z
    .locals 1

    .line 1
    const/4 v0, 0x1

    return v0
.end method

.method public isPolyExpression(Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;)Z
    .locals 0

    .line 2
    const/4 p1, 0x1

    return p1
.end method

.method public kosherDescriptor(Lorg/eclipse/jdt/internal/compiler/lookup/Scope;Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;Z)Z
    .locals 2

    new-instance v0, Lorg/eclipse/jdt/internal/compiler/ast/FunctionalExpression$VisibilityInspector;

    invoke-direct {v0, p0, p0, p1, p3}, Lorg/eclipse/jdt/internal/compiler/ast/FunctionalExpression$VisibilityInspector;-><init>(Lorg/eclipse/jdt/internal/compiler/ast/FunctionalExpression;Lorg/eclipse/jdt/internal/compiler/ast/FunctionalExpression;Lorg/eclipse/jdt/internal/compiler/lookup/Scope;Z)V

    iget-object p1, p2, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->returnType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-virtual {v0, p1}, Lorg/eclipse/jdt/internal/compiler/ast/FunctionalExpression$VisibilityInspector;->visible(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Z

    move-result p1

    iget-object p3, p2, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->parameters:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-virtual {v0, p3}, Lorg/eclipse/jdt/internal/compiler/ast/FunctionalExpression$VisibilityInspector;->visible([Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Z

    move-result p3

    const/4 v1, 0x0

    if-nez p3, :cond_0

    move p1, v1

    :cond_0
    iget-object p2, p2, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->thrownExceptions:[Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    invoke-virtual {v0, p2}, Lorg/eclipse/jdt/internal/compiler/ast/FunctionalExpression$VisibilityInspector;->visible([Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Z

    move-result p2

    if-nez p2, :cond_1

    move p1, v1

    :cond_1
    iget-object p2, p0, Lorg/eclipse/jdt/internal/compiler/ast/FunctionalExpression;->expectedType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-virtual {v0, p2}, Lorg/eclipse/jdt/internal/compiler/ast/FunctionalExpression$VisibilityInspector;->visible(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Z

    move-result p2

    if-nez p2, :cond_2

    goto :goto_0

    :cond_2
    move v1, p1

    :goto_0
    iget-boolean p1, p0, Lorg/eclipse/jdt/internal/compiler/ast/FunctionalExpression;->hasDescripterProblem:Z

    xor-int/lit8 p2, v1, 0x1

    or-int/2addr p1, p2

    iput-boolean p1, p0, Lorg/eclipse/jdt/internal/compiler/ast/FunctionalExpression;->hasDescripterProblem:Z

    return v1
.end method

.method public nullStatus(Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;)I
    .locals 0

    const/4 p1, 0x4

    return p1
.end method

.method public recordFunctionalType(Lorg/eclipse/jdt/internal/compiler/lookup/Scope;)I
    .locals 3

    :goto_0
    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    iget v1, p1, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->kind:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_2

    const/4 v0, 0x4

    if-eq v1, v0, :cond_1

    goto :goto_1

    :cond_1
    check-cast p1, Lorg/eclipse/jdt/internal/compiler/lookup/CompilationUnitScope;

    iget-object p1, p1, Lorg/eclipse/jdt/internal/compiler/lookup/CompilationUnitScope;->referenceContext:Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;

    invoke-virtual {p1, p0}, Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;->record(Lorg/eclipse/jdt/internal/compiler/ast/FunctionalExpression;)I

    move-result p1

    return p1

    :cond_2
    move-object v1, p1

    check-cast v1, Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;

    iget-object v1, v1, Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;->referenceContext:Lorg/eclipse/jdt/internal/compiler/impl/ReferenceContext;

    instance-of v2, v1, Lorg/eclipse/jdt/internal/compiler/ast/LambdaExpression;

    if-eqz v2, :cond_3

    check-cast v1, Lorg/eclipse/jdt/internal/compiler/ast/LambdaExpression;

    iget-object v2, v1, Lorg/eclipse/jdt/internal/compiler/ast/LambdaExpression;->original:Lorg/eclipse/jdt/internal/compiler/ast/LambdaExpression;

    if-eq v1, v2, :cond_3

    return v0

    :cond_3
    :goto_1
    iget-object p1, p1, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->parent:Lorg/eclipse/jdt/internal/compiler/lookup/Scope;

    goto :goto_0
.end method

.method public reportSamProblem(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;
    .locals 3

    iget-boolean v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/FunctionalExpression;->hasReportedSamProblem:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    :cond_0
    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->problemId()I

    move-result p2

    const/16 v0, 0x11

    const/4 v2, 0x1

    if-eq p2, v0, :cond_2

    const/16 v0, 0x12

    if-eq p2, v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object p1

    invoke-virtual {p1, p0}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->illFormedParameterizationOfFunctionalInterface(Lorg/eclipse/jdt/internal/compiler/ast/FunctionalExpression;)V

    iput-boolean v2, p0, Lorg/eclipse/jdt/internal/compiler/ast/FunctionalExpression;->hasReportedSamProblem:Z

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object p1

    invoke-virtual {p1, p0}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->targetTypeIsNotAFunctionalInterface(Lorg/eclipse/jdt/internal/compiler/ast/FunctionalExpression;)V

    iput-boolean v2, p0, Lorg/eclipse/jdt/internal/compiler/ast/FunctionalExpression;->hasReportedSamProblem:Z

    :goto_0
    return-object v1
.end method

.method public requiresBridges()Z
    .locals 1

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/ast/FunctionalExpression;->getRequiredBridges()[Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public resolveType(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, v0}, Lorg/eclipse/jdt/internal/compiler/ast/FunctionalExpression;->resolveType(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;Z)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object p1

    return-object p1
.end method

.method public resolveType(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;Z)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;
    .locals 7

    .line 2
    sget-object v0, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->NotAConstant:Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    iput-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->constant:Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    .line 3
    iput-object p1, p0, Lorg/eclipse/jdt/internal/compiler/ast/FunctionalExpression;->enclosingScope:Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;

    .line 4
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/FunctionalExpression;->expectedType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move-object v0, v1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/ast/FunctionalExpression;->argumentsTypeElided()Z

    move-result v2

    invoke-virtual {v0, p1, v2}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->getSingleAbstractMethod(Lorg/eclipse/jdt/internal/compiler/lookup/Scope;Z)Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    move-result-object v0

    :goto_0
    if-nez v0, :cond_1

    .line 5
    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object p1

    invoke-virtual {p1, p0}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->targetTypeIsNotAFunctionalInterface(Lorg/eclipse/jdt/internal/compiler/ast/FunctionalExpression;)V

    return-object v1

    .line 6
    :cond_1
    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->isValidBinding()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->problemId()I

    move-result v2

    const/16 v3, 0x19

    if-eq v2, v3, :cond_2

    .line 7
    invoke-virtual {p0, p1, v0}, Lorg/eclipse/jdt/internal/compiler/ast/FunctionalExpression;->reportSamProblem(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object p1

    return-object p1

    .line 8
    :cond_2
    iput-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/FunctionalExpression;->descriptor:Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    const/4 v2, 0x1

    if-nez p2, :cond_4

    .line 9
    invoke-virtual {p0, p1, v0, v2}, Lorg/eclipse/jdt/internal/compiler/ast/FunctionalExpression;->kosherDescriptor(Lorg/eclipse/jdt/internal/compiler/lookup/Scope;Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;Z)Z

    move-result p2

    if-eqz p2, :cond_3

    goto :goto_1

    .line 10
    :cond_3
    iput-object v1, p0, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->resolvedType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    return-object v1

    .line 11
    :cond_4
    :goto_1
    iget-object p2, p0, Lorg/eclipse/jdt/internal/compiler/ast/FunctionalExpression;->expectedType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    instance-of v1, p2, Lorg/eclipse/jdt/internal/compiler/lookup/IntersectionTypeBinding18;

    const/16 v3, 0x25

    const/4 v4, 0x0

    if-eqz v1, :cond_7

    .line 12
    check-cast p2, Lorg/eclipse/jdt/internal/compiler/lookup/IntersectionTypeBinding18;

    iget-object v1, p2, Lorg/eclipse/jdt/internal/compiler/lookup/IntersectionTypeBinding18;->intersectingTypes:[Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    .line 13
    array-length v5, v1

    move p2, v4

    :goto_2
    if-lt p2, v5, :cond_5

    goto :goto_3

    .line 14
    :cond_5
    aget-object v6, v1, p2

    invoke-virtual {v6, v3, v4}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->findSuperTypeOriginatingFrom(IZ)Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move-result-object v6

    if-eqz v6, :cond_6

    .line 15
    iput-boolean v2, p0, Lorg/eclipse/jdt/internal/compiler/ast/FunctionalExpression;->isSerializable:Z

    goto :goto_3

    :cond_6
    add-int/lit8 p2, p2, 0x1

    goto :goto_2

    .line 16
    :cond_7
    invoke-virtual {p2, v3, v4}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->findSuperTypeOriginatingFrom(IZ)Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move-result-object p2

    if-eqz p2, :cond_8

    .line 17
    iput-boolean v2, p0, Lorg/eclipse/jdt/internal/compiler/ast/FunctionalExpression;->isSerializable:Z

    .line 18
    :cond_8
    :goto_3
    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->environment()Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    move-result-object p2

    .line 19
    iget-object p2, p2, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->globalOptions:Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;

    iget-boolean p2, p2, Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;->isAnnotationBasedNullAnalysisEnabled:Z

    if-eqz p2, :cond_9

    .line 20
    invoke-static {v0, p0, p1}, Lorg/eclipse/jdt/internal/compiler/ast/NullAnnotationMatching;->checkForContradictions(Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;Ljava/lang/Object;Lorg/eclipse/jdt/internal/compiler/lookup/Scope;)Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    .line 21
    :cond_9
    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/ast/FunctionalExpression;->expectedType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    iput-object p1, p0, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->resolvedType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    return-object p1
.end method

.method public setCompilationResult(Lorg/eclipse/jdt/internal/compiler/CompilationResult;)V
    .locals 0

    iput-object p1, p0, Lorg/eclipse/jdt/internal/compiler/ast/FunctionalExpression;->compilationResult:Lorg/eclipse/jdt/internal/compiler/CompilationResult;

    return-void
.end method

.method public setExpectedType(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)V
    .locals 0

    iput-object p1, p0, Lorg/eclipse/jdt/internal/compiler/ast/FunctionalExpression;->expectedType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    return-void
.end method

.method public setExpressionContext(Lorg/eclipse/jdt/internal/compiler/ast/ExpressionContext;)V
    .locals 0

    iput-object p1, p0, Lorg/eclipse/jdt/internal/compiler/ast/FunctionalExpression;->expressionContext:Lorg/eclipse/jdt/internal/compiler/ast/ExpressionContext;

    return-void
.end method
