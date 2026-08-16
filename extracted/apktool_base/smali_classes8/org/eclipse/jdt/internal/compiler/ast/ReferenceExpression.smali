.class public Lorg/eclipse/jdt/internal/compiler/ast/ReferenceExpression;
.super Lorg/eclipse/jdt/internal/compiler/ast/FunctionalExpression;
.source "SourceFile"

# interfaces
.implements Lorg/eclipse/jdt/internal/compiler/ast/IPolyExpression;
.implements Lorg/eclipse/jdt/internal/compiler/lookup/InvocationSite;


# static fields
.field private static final ImplicitArgName:[C

.field private static final SecretReceiverVariableName:Ljava/lang/String; = " rec_"


# instance fields
.field private checkingPotentialCompatibility:Z

.field private copiesPerTargetType:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;",
            "Lorg/eclipse/jdt/internal/compiler/ast/ReferenceExpression;",
            ">;"
        }
    .end annotation
.end field

.field private depth:I

.field private exactMethodBinding:Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

.field private freeParameters:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

.field public haveReceiver:Z

.field private inferenceContexts:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lorg/eclipse/jdt/internal/compiler/lookup/ParameterizedGenericMethodBinding;",
            "Lorg/eclipse/jdt/internal/compiler/lookup/InferenceContext18;",
            ">;"
        }
    .end annotation
.end field

.field public lhs:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

.field public nameSourceStart:I

.field protected original:Lorg/eclipse/jdt/internal/compiler/ast/ReferenceExpression;

.field private potentialMethods:[Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

.field private receiverPrecedesParameters:Z

.field public receiverType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

.field public receiverVariable:Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;

.field public resolvedTypeArguments:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

.field private scanner:Lorg/eclipse/jdt/internal/compiler/parser/Scanner;

.field public selector:[C

.field syntheticAccessor:Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

.field public text:[C

.field public typeArguments:[Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

.field private typeArgumentsHaveErrors:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, " arg"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lorg/eclipse/jdt/internal/compiler/ast/ReferenceExpression;->ImplicitArgName:[C

    return-void
.end method

.method public constructor <init>(Lorg/eclipse/jdt/internal/compiler/parser/Scanner;)V
    .locals 1

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/compiler/ast/FunctionalExpression;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/ReferenceExpression;->receiverPrecedesParameters:Z

    sget-object v0, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->NO_METHODS:[Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    iput-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/ReferenceExpression;->potentialMethods:[Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    iput-object p0, p0, Lorg/eclipse/jdt/internal/compiler/ast/ReferenceExpression;->original:Lorg/eclipse/jdt/internal/compiler/ast/ReferenceExpression;

    iput-object p1, p0, Lorg/eclipse/jdt/internal/compiler/ast/ReferenceExpression;->scanner:Lorg/eclipse/jdt/internal/compiler/parser/Scanner;

    return-void
.end method

.method private cachedResolvedCopy(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Lorg/eclipse/jdt/internal/compiler/ast/ReferenceExpression;
    .locals 3

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/ReferenceExpression;->copiesPerTargetType:Ljava/util/HashMap;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jdt/internal/compiler/ast/ReferenceExpression;

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    if-eqz v0, :cond_1

    return-object v0

    :cond_1
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/FunctionalExpression;->enclosingScope:Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object v0

    sget-object v2, Lorg/eclipse/jdt/internal/compiler/ast/FunctionalExpression;->silentErrorHandlingPolicy:Lorg/eclipse/jdt/internal/compiler/IErrorHandlingPolicy;

    invoke-virtual {v0, v2}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemHandler;->switchErrorHandlingPolicy(Lorg/eclipse/jdt/internal/compiler/IErrorHandlingPolicy;)Lorg/eclipse/jdt/internal/compiler/IErrorHandlingPolicy;

    move-result-object v0

    :try_start_0
    invoke-direct {p0}, Lorg/eclipse/jdt/internal/compiler/ast/ReferenceExpression;->copy()Lorg/eclipse/jdt/internal/compiler/ast/ReferenceExpression;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_2

    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/ast/FunctionalExpression;->enclosingScope:Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object p1

    invoke-virtual {p1, v0}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemHandler;->switchErrorHandlingPolicy(Lorg/eclipse/jdt/internal/compiler/IErrorHandlingPolicy;)Lorg/eclipse/jdt/internal/compiler/IErrorHandlingPolicy;

    return-object v1

    :cond_2
    :try_start_1
    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/ast/FunctionalExpression;->expressionContext:Lorg/eclipse/jdt/internal/compiler/ast/ExpressionContext;

    invoke-virtual {v2, v1}, Lorg/eclipse/jdt/internal/compiler/ast/FunctionalExpression;->setExpressionContext(Lorg/eclipse/jdt/internal/compiler/ast/ExpressionContext;)V

    invoke-virtual {v2, p1}, Lorg/eclipse/jdt/internal/compiler/ast/FunctionalExpression;->setExpectedType(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)V

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/ast/FunctionalExpression;->enclosingScope:Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;

    invoke-virtual {v2, v1}, Lorg/eclipse/jdt/internal/compiler/ast/ReferenceExpression;->resolveType(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/ast/ReferenceExpression;->copiesPerTargetType:Ljava/util/HashMap;

    if-nez v1, :cond_3

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lorg/eclipse/jdt/internal/compiler/ast/ReferenceExpression;->copiesPerTargetType:Ljava/util/HashMap;

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_3
    :goto_1
    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/ast/ReferenceExpression;->copiesPerTargetType:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/ast/FunctionalExpression;->enclosingScope:Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object p1

    invoke-virtual {p1, v0}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemHandler;->switchErrorHandlingPolicy(Lorg/eclipse/jdt/internal/compiler/IErrorHandlingPolicy;)Lorg/eclipse/jdt/internal/compiler/IErrorHandlingPolicy;

    return-object v2

    :goto_2
    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/ast/FunctionalExpression;->enclosingScope:Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemHandler;->switchErrorHandlingPolicy(Lorg/eclipse/jdt/internal/compiler/IErrorHandlingPolicy;)Lorg/eclipse/jdt/internal/compiler/IErrorHandlingPolicy;

    throw p1
.end method

.method private copy()Lorg/eclipse/jdt/internal/compiler/ast/ReferenceExpression;
    .locals 7

    new-instance v0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/ast/FunctionalExpression;->enclosingScope:Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/eclipse/jdt/internal/compiler/parser/Parser;-><init>(Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;Z)V

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/ast/FunctionalExpression;->compilationResult:Lorg/eclipse/jdt/internal/compiler/CompilationResult;

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/compiler/CompilationResult;->getCompilationUnit()Lorg/eclipse/jdt/internal/compiler/env/ICompilationUnit;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {v1}, Lorg/eclipse/jdt/internal/compiler/env/ICompilationUnit;->getContents()[C

    move-result-object v3

    goto :goto_0

    :cond_0
    iget-object v3, p0, Lorg/eclipse/jdt/internal/compiler/ast/ReferenceExpression;->text:[C

    :goto_0
    iget-object v4, p0, Lorg/eclipse/jdt/internal/compiler/ast/ReferenceExpression;->scanner:Lorg/eclipse/jdt/internal/compiler/parser/Scanner;

    iput-object v4, v0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->scanner:Lorg/eclipse/jdt/internal/compiler/parser/Scanner;

    if-eqz v1, :cond_1

    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceStart:I

    move v2, v1

    :cond_1
    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceEnd:I

    iget v4, p0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceStart:I

    sub-int/2addr v1, v4

    add-int/lit8 v4, v1, 0x1

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/ast/FunctionalExpression;->enclosingScope:Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->referenceCompilationUnit()Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;

    move-result-object v5

    const/4 v6, 0x0

    move-object v1, v3

    move v3, v4

    move-object v4, v5

    move v5, v6

    invoke-virtual/range {v0 .. v5}, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->parseExpression([CIILorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;Z)Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jdt/internal/compiler/ast/ReferenceExpression;

    iput-object p0, v0, Lorg/eclipse/jdt/internal/compiler/ast/ReferenceExpression;->original:Lorg/eclipse/jdt/internal/compiler/ast/ReferenceExpression;

    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceStart:I

    iput v1, v0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceStart:I

    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceEnd:I

    iput v1, v0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceEnd:I

    return-object v0
.end method

.method private descriptorParametersAsArgumentExpressions()[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;
    .locals 5

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/FunctionalExpression;->descriptor:Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    if-eqz v0, :cond_2

    iget-object v0, v0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->parameters:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    if-eqz v0, :cond_2

    array-length v0, v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/FunctionalExpression;->expectedType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isParameterizedType()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/FunctionalExpression;->expectedType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    check-cast v0, Lorg/eclipse/jdt/internal/compiler/lookup/ParameterizedTypeBinding;

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/ast/FunctionalExpression;->enclosingScope:Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;

    iget v2, p0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceStart:I

    iget v3, p0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceEnd:I

    const/4 v4, 0x1

    invoke-virtual {v0, v1, v4, v2, v3}, Lorg/eclipse/jdt/internal/compiler/lookup/ParameterizedTypeBinding;->getSingleAbstractMethod(Lorg/eclipse/jdt/internal/compiler/lookup/Scope;ZII)Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    move-result-object v0

    iget-object v0, v0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->parameters:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    return-object v0

    :cond_1
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/FunctionalExpression;->descriptor:Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    iget-object v0, v0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->parameters:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    return-object v0

    :cond_2
    :goto_0
    sget-object v0, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->NO_PARAMETERS:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    return-object v0
.end method

.method private isDirectCodeGenPossible()Z
    .locals 9

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/FunctionalExpression;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    const/4 v1, 0x1

    if-eqz v0, :cond_6

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/ast/ReferenceExpression;->isMethodReference()Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/ReferenceExpression;->syntheticAccessor:Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    if-nez v0, :cond_2

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/FunctionalExpression;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    iget-object v0, v0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->declaringClass:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    iget-object v3, p0, Lorg/eclipse/jdt/internal/compiler/ast/ReferenceExpression;->lhs:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    iget-object v3, v3, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->resolvedType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-virtual {v3}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->erasure()Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v3

    invoke-static {v0, v3}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->notEquals(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/FunctionalExpression;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    iget-object v0, v0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->declaringClass:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    iget-object v3, p0, Lorg/eclipse/jdt/internal/compiler/ast/FunctionalExpression;->enclosingScope:Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;

    invoke-virtual {v0, v3}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->canBeSeenBy(Lorg/eclipse/jdt/internal/compiler/lookup/Scope;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/FunctionalExpression;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->isFinal()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/FunctionalExpression;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->isStatic()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    move v1, v2

    :cond_1
    return v1

    :cond_2
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/FunctionalExpression;->descriptor:Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    iget-object v0, v0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->parameters:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    iget-object v3, p0, Lorg/eclipse/jdt/internal/compiler/ast/FunctionalExpression;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    invoke-virtual {v3}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->original()Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    move-result-object v3

    iget-object v3, v3, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->parameters:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    iget-object v4, p0, Lorg/eclipse/jdt/internal/compiler/ast/FunctionalExpression;->descriptor:Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    invoke-virtual {v4}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->original()Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    move-result-object v4

    iget-object v4, v4, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->parameters:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    iget-boolean v5, p0, Lorg/eclipse/jdt/internal/compiler/ast/ReferenceExpression;->receiverPrecedesParameters:Z

    :goto_0
    array-length v6, v0

    sub-int/2addr v6, v5

    if-lt v2, v6, :cond_3

    goto :goto_2

    :cond_3
    add-int v6, v2, v5

    aget-object v7, v0, v6

    aget-object v6, v4, v6

    invoke-virtual {v7}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isIntersectionType18()Z

    move-result v8

    if-nez v8, :cond_5

    invoke-virtual {v7}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isTypeVariable()Z

    move-result v8

    if-eqz v8, :cond_4

    check-cast v7, Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;

    invoke-virtual {v7}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;->boundsCount()I

    move-result v7

    if-le v7, v1, :cond_4

    goto :goto_1

    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_5
    :goto_1
    invoke-virtual {v6}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->signature()[C

    move-result-object v0

    aget-object v1, v3, v2

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->signature()[C

    move-result-object v1

    invoke-static {v0, v1}, Lorg/eclipse/jdt/core/compiler/CharOperation;->equals([C[C)Z

    move-result v0

    return v0

    :cond_6
    :goto_2
    return v1
.end method

.method private shouldGenerateImplicitLambda(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;)Z
    .locals 0

    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/ast/FunctionalExpression;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->isVarargs()Z

    move-result p1

    if-nez p1, :cond_1

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/ast/ReferenceExpression;->isConstructorReference()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/ast/ReferenceExpression;->receiverType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->syntheticOuterLocalVariables()[Lorg/eclipse/jdt/internal/compiler/lookup/SyntheticArgumentBinding;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-boolean p1, p0, Lorg/eclipse/jdt/internal/compiler/ast/FunctionalExpression;->shouldCaptureInstance:Z

    if-nez p1, :cond_1

    :cond_0
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/ast/FunctionalExpression;->requiresBridges()Z

    move-result p1

    if-nez p1, :cond_1

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/compiler/ast/ReferenceExpression;->isDirectCodeGenPossible()Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    return p1

    :cond_1
    const/4 p1, 0x1

    return p1
.end method

.method private shouldGenerateSecretReceiverVariable()Z
    .locals 1

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/ast/ReferenceExpression;->isMethodReference()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/ReferenceExpression;->haveReceiver:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/ReferenceExpression;->lhs:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    instance-of v0, v0, Lorg/eclipse/jdt/internal/compiler/ast/Invocation;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    new-instance v0, Lorg/eclipse/jdt/internal/compiler/ast/ReferenceExpression$1;

    invoke-direct {v0, p0}, Lorg/eclipse/jdt/internal/compiler/ast/ReferenceExpression$1;-><init>(Lorg/eclipse/jdt/internal/compiler/ast/ReferenceExpression;)V

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/ast/ReferenceExpression$1;->accessesnonFinalOuterLocals()Z

    move-result v0

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public acceptPotentiallyCompatibleMethods([Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;)V
    .locals 1

    iget-boolean v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/ReferenceExpression;->checkingPotentialCompatibility:Z

    if-eqz v0, :cond_0

    iput-object p1, p0, Lorg/eclipse/jdt/internal/compiler/ast/ReferenceExpression;->potentialMethods:[Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    :cond_0
    return-void
.end method

.method public analyseCode(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;Lorg/eclipse/jdt/internal/compiler/flow/FlowContext;Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;)Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;
    .locals 8

    iget-boolean v1, p0, Lorg/eclipse/jdt/internal/compiler/ast/ReferenceExpression;->haveReceiver:Z

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/ast/ReferenceExpression;->lhs:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    invoke-virtual {v1, p1, p2, p3, v3}, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->analyseCode(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;Lorg/eclipse/jdt/internal/compiler/flow/FlowContext;Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;Z)Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/ast/ReferenceExpression;->lhs:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    invoke-virtual {v1, p1, p2, p3}, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->checkNPE(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;Lorg/eclipse/jdt/internal/compiler/flow/FlowContext;Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;)Z

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/ast/ReferenceExpression;->isConstructorReference()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/ReferenceExpression;->receiverType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->leafComponentType()Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v0

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isNestedType()Z

    move-result v1

    if-eqz v1, :cond_1

    instance-of v1, v0, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    if-eqz v1, :cond_1

    move-object v1, v0

    check-cast v1, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->isStatic()Z

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual {p1, v1, v2}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->tagAsAccessingEnclosingInstanceStateOf(Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;Z)V

    iput-boolean v3, p0, Lorg/eclipse/jdt/internal/compiler/ast/FunctionalExpression;->shouldCaptureInstance:Z

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->erasure()Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isLocalType()Z

    move-result v1

    if-eqz v1, :cond_1

    check-cast v0, Lorg/eclipse/jdt/internal/compiler/lookup/LocalTypeBinding;

    invoke-virtual {v0, p1, v2}, Lorg/eclipse/jdt/internal/compiler/lookup/LocalTypeBinding;->addInnerEmulationDependent(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;Z)V

    :cond_1
    :goto_0
    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->compilerOptions()Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;

    move-result-object v0

    sget-object v1, Lorg/eclipse/jdt/internal/compiler/impl/IrritantSet;->UNLIKELY_ARGUMENT_TYPE:Lorg/eclipse/jdt/internal/compiler/impl/IrritantSet;

    invoke-virtual {v0, v1}, Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;->isAnyEnabled(Lorg/eclipse/jdt/internal/compiler/impl/IrritantSet;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/FunctionalExpression;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->isValidBinding()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/FunctionalExpression;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    if-eqz v0, :cond_5

    iget-object v1, v0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->parameters:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    if-eqz v1, :cond_5

    array-length v1, v1

    const/4 v4, 0x2

    if-ne v1, v3, :cond_4

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/ast/FunctionalExpression;->descriptor:Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    iget-object v1, v1, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->parameters:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    array-length v1, v1

    iget-boolean v5, p0, Lorg/eclipse/jdt/internal/compiler/ast/ReferenceExpression;->receiverPrecedesParameters:Z

    if-eqz v5, :cond_2

    move v5, v4

    goto :goto_1

    :cond_2
    move v5, v3

    :goto_1
    if-ne v1, v5, :cond_4

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->isStatic()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/FunctionalExpression;->descriptor:Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    iget-object v0, v0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->parameters:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    iget-boolean v1, p0, Lorg/eclipse/jdt/internal/compiler/ast/ReferenceExpression;->receiverPrecedesParameters:Z

    aget-object v3, v0, v1

    if-eqz v1, :cond_3

    aget-object v0, v0, v2

    goto :goto_2

    :cond_3
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/FunctionalExpression;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    iget-object v0, v0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->declaringClass:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    :goto_2
    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/ast/ReferenceExpression;->selector:[C

    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/ast/FunctionalExpression;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    iget-object v2, v2, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->parameters:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-static {v3, p1, v1, v0, v2}, Lorg/eclipse/jdt/internal/compiler/ast/UnlikelyArgumentCheck;->determineCheckForNonStaticSingleArgumentMethod(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/Scope;[CLorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Lorg/eclipse/jdt/internal/compiler/ast/UnlikelyArgumentCheck;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-virtual {v0, p1}, Lorg/eclipse/jdt/internal/compiler/ast/UnlikelyArgumentCheck;->isDangerous(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;)Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object v1

    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/ast/FunctionalExpression;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    iget-object v4, v0, Lorg/eclipse/jdt/internal/compiler/ast/UnlikelyArgumentCheck;->typeToReport:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    iget-object v5, v0, Lorg/eclipse/jdt/internal/compiler/ast/UnlikelyArgumentCheck;->dangerousMethod:Lorg/eclipse/jdt/internal/compiler/lookup/TypeConstants$DangerousMethod;

    move-object v0, v1

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->unlikelyArgumentType(Lorg/eclipse/jdt/internal/compiler/ast/Expression;Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeConstants$DangerousMethod;)V

    goto :goto_3

    :cond_4
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/FunctionalExpression;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    iget-object v1, v0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->parameters:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    array-length v1, v1

    if-ne v1, v4, :cond_5

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/ast/FunctionalExpression;->descriptor:Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    iget-object v1, v1, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->parameters:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    array-length v1, v1

    if-ne v1, v4, :cond_5

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->isStatic()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/FunctionalExpression;->descriptor:Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    iget-object v0, v0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->parameters:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    aget-object v4, v0, v2

    aget-object v6, v0, v3

    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/ast/ReferenceExpression;->selector:[C

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/FunctionalExpression;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    iget-object v5, v0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->parameters:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    iget-object v7, p0, Lorg/eclipse/jdt/internal/compiler/ast/ReferenceExpression;->receiverType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-object v0, v6

    move-object v1, p1

    move-object v3, v4

    move-object v4, v5

    move-object v5, v7

    invoke-static/range {v0 .. v5}, Lorg/eclipse/jdt/internal/compiler/ast/UnlikelyArgumentCheck;->determineCheckForStaticTwoArgumentMethod(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/Scope;[CLorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Lorg/eclipse/jdt/internal/compiler/ast/UnlikelyArgumentCheck;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-virtual {v0, p1}, Lorg/eclipse/jdt/internal/compiler/ast/UnlikelyArgumentCheck;->isDangerous(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;)Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object v1

    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/ast/FunctionalExpression;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    iget-object v4, v0, Lorg/eclipse/jdt/internal/compiler/ast/UnlikelyArgumentCheck;->typeToReport:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    iget-object v5, v0, Lorg/eclipse/jdt/internal/compiler/ast/UnlikelyArgumentCheck;->dangerousMethod:Lorg/eclipse/jdt/internal/compiler/lookup/TypeConstants$DangerousMethod;

    move-object v0, v1

    move-object v1, p0

    move-object v3, v6

    invoke-virtual/range {v0 .. v5}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->unlikelyArgumentType(Lorg/eclipse/jdt/internal/compiler/ast/Expression;Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeConstants$DangerousMethod;)V

    :cond_5
    :goto_3
    invoke-virtual {p0, p1, p3}, Lorg/eclipse/jdt/internal/compiler/ast/ReferenceExpression;->manageSyntheticAccessIfNecessary(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;)V

    return-object p3
.end method

.method public checkNullAnnotations(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;)V
    .locals 12

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->compilerOptions()Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;

    move-result-object v0

    iget-boolean v0, v0, Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;->isAnnotationBasedNullAnalysisEnabled:Z

    if-eqz v0, :cond_8

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/FunctionalExpression;->expectedType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    if-eqz v0, :cond_0

    invoke-static {v0}, Lorg/eclipse/jdt/internal/compiler/ast/NullAnnotationMatching;->hasContradictions(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Z

    move-result v0

    if-nez v0, :cond_8

    :cond_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/FunctionalExpression;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    invoke-static {v0, p1}, Lorg/eclipse/jdt/internal/compiler/lookup/ImplicitNullAnnotationVerifier;->ensureNullnessIsKnown(Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;Lorg/eclipse/jdt/internal/compiler/lookup/Scope;)V

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/FunctionalExpression;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    iget-object v0, v0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->parameters:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    array-length v0, v0

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/ast/FunctionalExpression;->descriptor:Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    iget-object v1, v1, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->parameters:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    array-length v2, v1

    iget-boolean v3, p0, Lorg/eclipse/jdt/internal/compiler/ast/ReferenceExpression;->receiverPrecedesParameters:Z

    const/4 v4, 0x0

    if-eqz v3, :cond_1

    add-int/lit8 v2, v2, -0x1

    aget-object v8, v1, v4

    iget-wide v5, v8, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->tagBits:J

    const-wide/high16 v9, 0x80000000000000L

    and-long/2addr v5, v9

    const-wide/16 v9, 0x0

    cmp-long v1, v5, v9

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->environment()Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    move-result-object v1

    iget-object v3, p0, Lorg/eclipse/jdt/internal/compiler/ast/FunctionalExpression;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    iget-object v3, v3, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->declaringClass:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->environment()Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    move-result-object v5

    invoke-virtual {v5}, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->getNonNullAnnotation()Lorg/eclipse/jdt/internal/compiler/lookup/AnnotationBinding;

    move-result-object v5

    filled-new-array {v5}, [Lorg/eclipse/jdt/internal/compiler/lookup/AnnotationBinding;

    move-result-object v5

    invoke-virtual {v1, v3, v5}, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->createAnnotatedType(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;[Lorg/eclipse/jdt/internal/compiler/lookup/AnnotationBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v7

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object v5

    iget-object v9, p0, Lorg/eclipse/jdt/internal/compiler/ast/FunctionalExpression;->descriptor:Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    const/4 v10, -0x1

    sget-object v11, Lorg/eclipse/jdt/internal/compiler/ast/NullAnnotationMatching;->NULL_ANNOTATIONS_MISMATCH:Lorg/eclipse/jdt/internal/compiler/ast/NullAnnotationMatching;

    move-object v6, p0

    invoke-virtual/range {v5 .. v11}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->referenceExpressionArgumentNullityMismatch(Lorg/eclipse/jdt/internal/compiler/ast/ReferenceExpression;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;ILorg/eclipse/jdt/internal/compiler/ast/NullAnnotationMatching;)V

    :cond_1
    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/ast/FunctionalExpression;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->isVarargs()Z

    move-result v1

    const/4 v3, 0x1

    if-eqz v1, :cond_3

    if-ne v2, v0, :cond_2

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/ast/FunctionalExpression;->descriptor:Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    iget-object v1, v1, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->parameters:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    sub-int/2addr v0, v3

    aget-object v1, v1, v0

    iget-object v5, p0, Lorg/eclipse/jdt/internal/compiler/ast/FunctionalExpression;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    iget-object v5, v5, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->parameters:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    aget-object v0, v5, v0

    invoke-virtual {v1, v0}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isCompatibleWith(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Z

    move-result v0

    if-eqz v0, :cond_2

    :goto_0
    move v0, v4

    goto :goto_1

    :cond_2
    move v0, v3

    goto :goto_1

    :cond_3
    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    goto :goto_0

    :goto_1
    if-lt v4, v2, :cond_5

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/FunctionalExpression;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    iget-object v0, v0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->returnType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isPrimitiveType()Z

    move-result v1

    if-nez v1, :cond_8

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/ast/FunctionalExpression;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->isConstructor()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->environment()Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    move-result-object v0

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/ast/ReferenceExpression;->receiverType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->environment()Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    move-result-object v2

    invoke-virtual {v2}, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->getNonNullAnnotation()Lorg/eclipse/jdt/internal/compiler/lookup/AnnotationBinding;

    move-result-object v2

    filled-new-array {v2}, [Lorg/eclipse/jdt/internal/compiler/lookup/AnnotationBinding;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->createAnnotatedType(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;[Lorg/eclipse/jdt/internal/compiler/lookup/AnnotationBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v0

    :cond_4
    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/ast/FunctionalExpression;->descriptor:Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    iget-object v1, v1, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->returnType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-static {v1, v0, v3}, Lorg/eclipse/jdt/internal/compiler/ast/NullAnnotationMatching;->analyse(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;I)Lorg/eclipse/jdt/internal/compiler/ast/NullAnnotationMatching;

    move-result-object v1

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/compiler/ast/NullAnnotationMatching;->isAnyMismatch()Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object p1

    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/ast/FunctionalExpression;->descriptor:Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/compiler/ast/NullAnnotationMatching;->isUnchecked()Z

    move-result v1

    invoke-virtual {p1, p0, v2, v1, v0}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->illegalReturnRedefinition(Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;ZLorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)V

    goto :goto_3

    :cond_5
    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/ast/FunctionalExpression;->descriptor:Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    iget-object v1, v1, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->parameters:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    iget-boolean v5, p0, Lorg/eclipse/jdt/internal/compiler/ast/ReferenceExpression;->receiverPrecedesParameters:Z

    add-int/2addr v5, v4

    aget-object v8, v1, v5

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/ast/FunctionalExpression;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    iget-object v1, v1, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->parameters:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-static {v1, v4, v0}, Lorg/eclipse/jdt/internal/compiler/lookup/InferenceContext18;->getParameter([Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;IZ)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v7

    invoke-virtual {v7}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isPrimitiveType()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-virtual {v8}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isPrimitiveType()Z

    move-result v1

    if-nez v1, :cond_6

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->environment()Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    move-result-object v1

    invoke-virtual {p1, v7}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->boxing(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v5

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->environment()Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    move-result-object v6

    invoke-virtual {v6}, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->getNonNullAnnotation()Lorg/eclipse/jdt/internal/compiler/lookup/AnnotationBinding;

    move-result-object v6

    filled-new-array {v6}, [Lorg/eclipse/jdt/internal/compiler/lookup/AnnotationBinding;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->createAnnotatedType(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;[Lorg/eclipse/jdt/internal/compiler/lookup/AnnotationBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v1

    goto :goto_2

    :cond_6
    move-object v1, v7

    :goto_2
    invoke-static {v1, v8, v3}, Lorg/eclipse/jdt/internal/compiler/ast/NullAnnotationMatching;->analyse(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;I)Lorg/eclipse/jdt/internal/compiler/ast/NullAnnotationMatching;

    move-result-object v11

    invoke-virtual {v11}, Lorg/eclipse/jdt/internal/compiler/ast/NullAnnotationMatching;->isAnyMismatch()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object v5

    iget-object v9, p0, Lorg/eclipse/jdt/internal/compiler/ast/FunctionalExpression;->descriptor:Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    move-object v6, p0

    move v10, v4

    invoke-virtual/range {v5 .. v11}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->referenceExpressionArgumentNullityMismatch(Lorg/eclipse/jdt/internal/compiler/ast/ReferenceExpression;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;ILorg/eclipse/jdt/internal/compiler/ast/NullAnnotationMatching;)V

    :cond_7
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_1

    :cond_8
    :goto_3
    return-void
.end method

.method public checkingPotentialCompatibility()Z
    .locals 1

    iget-boolean v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/ReferenceExpression;->checkingPotentialCompatibility:Z

    return v0
.end method

.method public cleanUp()V
    .locals 3

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/ReferenceExpression;->copiesPerTargetType:Ljava/util/HashMap;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_1

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/eclipse/jdt/internal/compiler/ast/ReferenceExpression;

    iput-object v1, v2, Lorg/eclipse/jdt/internal/compiler/ast/ReferenceExpression;->scanner:Lorg/eclipse/jdt/internal/compiler/parser/Scanner;

    goto :goto_0

    :cond_1
    :goto_1
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/ReferenceExpression;->original:Lorg/eclipse/jdt/internal/compiler/ast/ReferenceExpression;

    if-eqz v0, :cond_2

    if-eq v0, p0, :cond_2

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/ast/ReferenceExpression;->cleanUp()V

    :cond_2
    iput-object v1, p0, Lorg/eclipse/jdt/internal/compiler/ast/ReferenceExpression;->scanner:Lorg/eclipse/jdt/internal/compiler/parser/Scanner;

    iput-object v1, p0, Lorg/eclipse/jdt/internal/compiler/ast/ReferenceExpression;->receiverVariable:Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;

    return-void
.end method

.method public createPseudoExpressions([Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)[Lorg/eclipse/jdt/internal/compiler/ast/Expression;
    .locals 7

    array-length v0, p1

    new-array v0, v0, [Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceStart:I

    int-to-long v1, v1

    const/16 v3, 0x20

    shl-long/2addr v1, v3

    iget v3, p0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceEnd:I

    int-to-long v3, v3

    add-long/2addr v1, v3

    const/4 v3, 0x0

    :goto_0
    array-length v4, p1

    if-lt v3, v4, :cond_0

    return-object v0

    :cond_0
    new-instance v4, Lorg/eclipse/jdt/internal/compiler/ast/SingleNameReference;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "fakeArg"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toCharArray()[C

    move-result-object v5

    invoke-direct {v4, v5, v1, v2}, Lorg/eclipse/jdt/internal/compiler/ast/SingleNameReference;-><init>([CJ)V

    aput-object v4, v0, v3

    aget-object v5, p1, v3

    iput-object v5, v4, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->resolvedType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method public freshInferenceContext(Lorg/eclipse/jdt/internal/compiler/lookup/Scope;)Lorg/eclipse/jdt/internal/compiler/lookup/InferenceContext18;
    .locals 3

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/FunctionalExpression;->expressionContext:Lorg/eclipse/jdt/internal/compiler/ast/ExpressionContext;

    sget-object v1, Lorg/eclipse/jdt/internal/compiler/ast/ExpressionContext;->VANILLA_CONTEXT:Lorg/eclipse/jdt/internal/compiler/ast/ExpressionContext;

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/ReferenceExpression;->freeParameters:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/internal/compiler/ast/ReferenceExpression;->createPseudoExpressions([Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)[Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    move-result-object v0

    new-instance v1, Lorg/eclipse/jdt/internal/compiler/lookup/InferenceContext18;

    invoke-direct {v1, p1, v0, p0, v2}, Lorg/eclipse/jdt/internal/compiler/lookup/InferenceContext18;-><init>(Lorg/eclipse/jdt/internal/compiler/lookup/Scope;[Lorg/eclipse/jdt/internal/compiler/ast/Expression;Lorg/eclipse/jdt/internal/compiler/lookup/InvocationSite;Lorg/eclipse/jdt/internal/compiler/lookup/InferenceContext18;)V

    return-object v1

    :cond_0
    return-object v2
.end method

.method public generateCode(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;Z)V
    .locals 14

    move-object v0, p0

    move-object v1, p1

    move-object/from16 v10, p2

    iget-object v2, v0, Lorg/eclipse/jdt/internal/compiler/ast/FunctionalExpression;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    iput-object v2, v0, Lorg/eclipse/jdt/internal/compiler/ast/FunctionalExpression;->actualMethodBinding:Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/compiler/ast/ReferenceExpression;->shouldGenerateImplicitLambda(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual/range {p0 .. p3}, Lorg/eclipse/jdt/internal/compiler/ast/ReferenceExpression;->generateImplicitLambda(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;Z)V

    return-void

    :cond_0
    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->enclosingSourceType()Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;

    move-result-object v2

    iget-object v3, v0, Lorg/eclipse/jdt/internal/compiler/ast/ReferenceExpression;->receiverType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-virtual {v3}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isArrayType()Z

    move-result v3

    if-eqz v3, :cond_2

    sget-object v3, Lorg/eclipse/jdt/internal/compiler/lookup/TypeConstants;->ANONYMOUS_METHOD:[C

    iget v4, v0, Lorg/eclipse/jdt/internal/compiler/ast/FunctionalExpression;->ordinal:I

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toCharArray()[C

    move-result-object v4

    invoke-static {v3, v4}, Lorg/eclipse/jdt/core/compiler/CharOperation;->concat([C[C)[C

    move-result-object v3

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/ast/ReferenceExpression;->isConstructorReference()Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, v0, Lorg/eclipse/jdt/internal/compiler/ast/ReferenceExpression;->receiverType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    check-cast v4, Lorg/eclipse/jdt/internal/compiler/lookup/ArrayBinding;

    const/16 v5, 0xe

    invoke-virtual {v2, v4, v5, v3}, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->addSyntheticArrayMethod(Lorg/eclipse/jdt/internal/compiler/lookup/ArrayBinding;I[C)Lorg/eclipse/jdt/internal/compiler/lookup/SyntheticMethodBinding;

    move-result-object v3

    iput-object v3, v0, Lorg/eclipse/jdt/internal/compiler/ast/FunctionalExpression;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    iput-object v3, v0, Lorg/eclipse/jdt/internal/compiler/ast/FunctionalExpression;->actualMethodBinding:Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    goto :goto_0

    :cond_1
    iget-object v4, v0, Lorg/eclipse/jdt/internal/compiler/ast/ReferenceExpression;->selector:[C

    sget-object v5, Lorg/eclipse/jdt/internal/compiler/lookup/TypeConstants;->CLONE:[C

    invoke-static {v4, v5}, Lorg/eclipse/jdt/core/compiler/CharOperation;->equals([C[C)Z

    move-result v4

    if-eqz v4, :cond_5

    iget-object v4, v0, Lorg/eclipse/jdt/internal/compiler/ast/ReferenceExpression;->receiverType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    check-cast v4, Lorg/eclipse/jdt/internal/compiler/lookup/ArrayBinding;

    const/16 v5, 0xf

    invoke-virtual {v2, v4, v5, v3}, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->addSyntheticArrayMethod(Lorg/eclipse/jdt/internal/compiler/lookup/ArrayBinding;I[C)Lorg/eclipse/jdt/internal/compiler/lookup/SyntheticMethodBinding;

    move-result-object v3

    iput-object v3, v0, Lorg/eclipse/jdt/internal/compiler/ast/FunctionalExpression;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    iput-object v3, v0, Lorg/eclipse/jdt/internal/compiler/ast/FunctionalExpression;->actualMethodBinding:Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    goto :goto_0

    :cond_2
    iget-object v3, v0, Lorg/eclipse/jdt/internal/compiler/ast/ReferenceExpression;->syntheticAccessor:Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    if-eqz v3, :cond_4

    iget-object v3, v0, Lorg/eclipse/jdt/internal/compiler/ast/ReferenceExpression;->lhs:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    invoke-virtual {v3}, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->isSuper()Z

    move-result v3

    if-nez v3, :cond_3

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/ast/ReferenceExpression;->isMethodReference()Z

    move-result v3

    if-eqz v3, :cond_5

    :cond_3
    iget-object v3, v0, Lorg/eclipse/jdt/internal/compiler/ast/ReferenceExpression;->syntheticAccessor:Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    iput-object v3, v0, Lorg/eclipse/jdt/internal/compiler/ast/FunctionalExpression;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    goto :goto_0

    :cond_4
    iget-object v3, v0, Lorg/eclipse/jdt/internal/compiler/ast/FunctionalExpression;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    if-eqz v3, :cond_5

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/ast/ReferenceExpression;->isMethodReference()Z

    move-result v3

    if-eqz v3, :cond_5

    iget-object v3, v0, Lorg/eclipse/jdt/internal/compiler/ast/FunctionalExpression;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    iget-object v3, v3, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->declaringClass:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    iget-object v4, v0, Lorg/eclipse/jdt/internal/compiler/ast/ReferenceExpression;->lhs:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    iget-object v4, v4, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->resolvedType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-virtual {v4}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->erasure()Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v4

    invoke-static {v3, v4}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->notEquals(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Z

    move-result v3

    if-eqz v3, :cond_5

    iget-object v3, v0, Lorg/eclipse/jdt/internal/compiler/ast/FunctionalExpression;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    iget-object v3, v3, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->declaringClass:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    invoke-virtual {v3, p1}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->canBeSeenBy(Lorg/eclipse/jdt/internal/compiler/lookup/Scope;)Z

    move-result v3

    if-nez v3, :cond_5

    new-instance v3, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    iget-object v4, v0, Lorg/eclipse/jdt/internal/compiler/ast/FunctionalExpression;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    invoke-virtual {v4}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->original()Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    move-result-object v4

    iget-object v5, v0, Lorg/eclipse/jdt/internal/compiler/ast/ReferenceExpression;->lhs:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    iget-object v5, v5, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->resolvedType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-virtual {v5}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->erasure()Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v5

    check-cast v5, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    invoke-direct {v3, v4, v5}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;-><init>(Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;)V

    iput-object v3, v0, Lorg/eclipse/jdt/internal/compiler/ast/FunctionalExpression;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    :cond_5
    :goto_0
    iget v11, v10, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->position:I

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const/16 v4, 0x28

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    iget-boolean v4, v0, Lorg/eclipse/jdt/internal/compiler/ast/ReferenceExpression;->haveReceiver:Z

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eqz v4, :cond_a

    iget-object v4, v0, Lorg/eclipse/jdt/internal/compiler/ast/ReferenceExpression;->lhs:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    invoke-virtual {v4, p1, v10, v6}, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->generateCode(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;Z)V

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/ast/ReferenceExpression;->isMethodReference()Z

    move-result v4

    if-eqz v4, :cond_6

    iget-object v4, v0, Lorg/eclipse/jdt/internal/compiler/ast/ReferenceExpression;->lhs:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    invoke-virtual {v4}, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->isThis()Z

    move-result v4

    if-nez v4, :cond_6

    iget-object v4, v0, Lorg/eclipse/jdt/internal/compiler/ast/ReferenceExpression;->lhs:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    invoke-virtual {v4}, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->isSuper()Z

    move-result v4

    if-nez v4, :cond_6

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->getJavaLangObject()Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move-result-object v4

    sget-object v7, Lorg/eclipse/jdt/internal/compiler/lookup/TypeConstants;->GETCLASS:[C

    sget-object v8, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->NO_PARAMETERS:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->compilationUnitScope()Lorg/eclipse/jdt/internal/compiler/lookup/CompilationUnitScope;

    move-result-object v1

    invoke-virtual {v4, v7, v8, v1}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->getExactMethod([C[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/CompilationUnitScope;)Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    move-result-object v1

    invoke-virtual/range {p2 .. p2}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->dup()V

    iget-object v4, v1, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->declaringClass:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    const/16 v7, -0x4a

    invoke-virtual {v10, v7, v1, v4}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->invoke(BLorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)V

    invoke-virtual/range {p2 .. p2}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->pop()V

    :cond_6
    iget-object v1, v0, Lorg/eclipse/jdt/internal/compiler/ast/ReferenceExpression;->lhs:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->isSuper()Z

    move-result v1

    if-eqz v1, :cond_9

    iget-object v1, v0, Lorg/eclipse/jdt/internal/compiler/ast/FunctionalExpression;->actualMethodBinding:Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->isPrivate()Z

    move-result v1

    if-nez v1, :cond_9

    iget-object v1, v0, Lorg/eclipse/jdt/internal/compiler/ast/ReferenceExpression;->lhs:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    instance-of v4, v1, Lorg/eclipse/jdt/internal/compiler/ast/QualifiedSuperReference;

    if-eqz v4, :cond_8

    check-cast v1, Lorg/eclipse/jdt/internal/compiler/ast/QualifiedSuperReference;

    iget-object v1, v1, Lorg/eclipse/jdt/internal/compiler/ast/QualifiedThisReference;->qualification:Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    iget-object v1, v1, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->resolvedType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isInterface()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-virtual {v2}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->signature()[C

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    goto :goto_1

    :cond_7
    iget-object v1, v0, Lorg/eclipse/jdt/internal/compiler/ast/ReferenceExpression;->lhs:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    check-cast v1, Lorg/eclipse/jdt/internal/compiler/ast/QualifiedSuperReference;

    iget-object v1, v1, Lorg/eclipse/jdt/internal/compiler/ast/QualifiedThisReference;->currentCompatibleType:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->signature()[C

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    goto :goto_1

    :cond_8
    invoke-virtual {v2}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->signature()[C

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    goto :goto_1

    :cond_9
    iget-object v1, v0, Lorg/eclipse/jdt/internal/compiler/ast/ReferenceExpression;->receiverType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->signature()[C

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    :goto_1
    move v7, v6

    goto :goto_4

    :cond_a
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/ast/ReferenceExpression;->isConstructorReference()Z

    move-result v4

    const/4 v7, 0x0

    if-eqz v4, :cond_e

    sget-object v4, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->UNINITIALIZED_REFERENCE_TYPES:[Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    iget-object v8, v0, Lorg/eclipse/jdt/internal/compiler/ast/ReferenceExpression;->receiverType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-virtual {v8}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isNestedType()Z

    move-result v8

    if-eqz v8, :cond_d

    iget-object v4, v0, Lorg/eclipse/jdt/internal/compiler/ast/ReferenceExpression;->receiverType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    check-cast v4, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    invoke-virtual {v4}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->syntheticEnclosingInstanceTypes()[Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move-result-object v4

    if-eqz v4, :cond_c

    array-length v8, v4

    move v9, v7

    :goto_2
    if-lt v9, v8, :cond_b

    move v7, v8

    goto :goto_3

    :cond_b
    aget-object v12, v4, v9

    invoke-virtual {v12}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->signature()[C

    move-result-object v13

    invoke-virtual {v3, v13}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    invoke-virtual {p1, v12, v7, v6}, Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;->getEmulationPath(Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;ZZ)[Ljava/lang/Object;

    move-result-object v13

    invoke-virtual {v10, v13, p0, v12, p1}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->generateOuterAccess([Ljava/lang/Object;Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;Lorg/eclipse/jdt/internal/compiler/lookup/Binding;Lorg/eclipse/jdt/internal/compiler/lookup/Scope;)V

    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    :cond_c
    sget-object v4, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->NO_REFERENCE_TYPES:[Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    :cond_d
    :goto_3
    iget-object v1, v0, Lorg/eclipse/jdt/internal/compiler/ast/ReferenceExpression;->syntheticAccessor:Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    if-eqz v1, :cond_e

    sget-object v1, Lorg/eclipse/jdt/internal/compiler/lookup/TypeConstants;->ANONYMOUS_METHOD:[C

    iget v6, v0, Lorg/eclipse/jdt/internal/compiler/ast/FunctionalExpression;->ordinal:I

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->toCharArray()[C

    move-result-object v6

    invoke-static {v1, v6}, Lorg/eclipse/jdt/core/compiler/CharOperation;->concat([C[C)[C

    move-result-object v1

    iget-object v6, v0, Lorg/eclipse/jdt/internal/compiler/ast/FunctionalExpression;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    iget-object v8, v0, Lorg/eclipse/jdt/internal/compiler/ast/ReferenceExpression;->syntheticAccessor:Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    invoke-virtual {v2, v6, v8, v4, v1}, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->addSyntheticFactoryMethod(Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;[C)Lorg/eclipse/jdt/internal/compiler/lookup/SyntheticMethodBinding;

    move-result-object v1

    iput-object v1, v0, Lorg/eclipse/jdt/internal/compiler/ast/FunctionalExpression;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    iput-object v5, v0, Lorg/eclipse/jdt/internal/compiler/ast/ReferenceExpression;->syntheticAccessor:Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    :cond_e
    :goto_4
    const/16 v1, 0x29

    invoke-virtual {v3, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    const/16 v1, 0x4c

    invoke-virtual {v3, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    iget-object v1, v0, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->resolvedType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isIntersectionType18()Z

    move-result v1

    if-eqz v1, :cond_f

    iget-object v1, v0, Lorg/eclipse/jdt/internal/compiler/ast/FunctionalExpression;->descriptor:Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    iget-object v1, v1, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->declaringClass:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->constantPoolName()[C

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    goto :goto_5

    :cond_f
    iget-object v1, v0, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->resolvedType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->constantPoolName()[C

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    :goto_5
    const/16 v1, 0x3b

    invoke-virtual {v3, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    iget-boolean v1, v0, Lorg/eclipse/jdt/internal/compiler/ast/FunctionalExpression;->isSerializable:Z

    if-eqz v1, :cond_10

    invoke-virtual {v2, p0}, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->addSyntheticMethod(Lorg/eclipse/jdt/internal/compiler/ast/ReferenceExpression;)Lorg/eclipse/jdt/internal/compiler/lookup/SyntheticMethodBinding;

    :cond_10
    iget-object v1, v10, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->classFile:Lorg/eclipse/jdt/internal/compiler/ClassFile;

    invoke-virtual {v1, p0}, Lorg/eclipse/jdt/internal/compiler/ClassFile;->recordBootstrapMethod(Lorg/eclipse/jdt/internal/compiler/ast/FunctionalExpression;)I

    move-result v2

    iget-object v1, v0, Lorg/eclipse/jdt/internal/compiler/ast/FunctionalExpression;->descriptor:Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    iget-object v6, v1, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->selector:[C

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v8

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/ast/ReferenceExpression;->isConstructorReference()Z

    move-result v9

    iget-object v1, v0, Lorg/eclipse/jdt/internal/compiler/ast/ReferenceExpression;->lhs:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    instance-of v3, v1, Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    if-eqz v3, :cond_11

    check-cast v1, Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    move-object v12, v1

    goto :goto_6

    :cond_11
    move-object v12, v5

    :goto_6
    iget-object v13, v0, Lorg/eclipse/jdt/internal/compiler/ast/ReferenceExpression;->typeArguments:[Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    const/4 v4, 0x1

    move-object/from16 v1, p2

    move v3, v7

    move-object v5, v6

    move-object v6, v8

    move v7, v9

    move-object v8, v12

    move-object v9, v13

    invoke-virtual/range {v1 .. v9}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->invokeDynamic(III[C[CZLorg/eclipse/jdt/internal/compiler/ast/TypeReference;[Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;)V

    if-nez p3, :cond_12

    invoke-virtual/range {p2 .. p2}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->pop()V

    :cond_12
    iget v1, v0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceStart:I

    invoke-virtual {v10, v11, v1}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->recordPositionsFrom(II)V

    return-void
.end method

.method public generateImplicitLambda(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;Z)V
    .locals 23

    move-object/from16 v8, p0

    move-object/from16 v0, p2

    invoke-direct/range {p0 .. p0}, Lorg/eclipse/jdt/internal/compiler/ast/ReferenceExpression;->copy()Lorg/eclipse/jdt/internal/compiler/ast/ReferenceExpression;

    move-result-object v1

    iget-object v2, v8, Lorg/eclipse/jdt/internal/compiler/ast/FunctionalExpression;->descriptor:Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    iget-object v2, v2, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->parameters:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    array-length v2, v2

    new-instance v9, Lorg/eclipse/jdt/internal/compiler/ast/LambdaExpression;

    iget-object v3, v8, Lorg/eclipse/jdt/internal/compiler/ast/FunctionalExpression;->compilationResult:Lorg/eclipse/jdt/internal/compiler/CompilationResult;

    iget-object v4, v8, Lorg/eclipse/jdt/internal/compiler/ast/FunctionalExpression;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    iget v4, v4, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->modifiers:I

    const/high16 v5, 0x40000000    # 2.0f

    and-int/2addr v4, v5

    const/4 v10, 0x1

    const/4 v11, 0x0

    if-eqz v4, :cond_0

    move v4, v10

    goto :goto_0

    :cond_0
    move v4, v11

    :goto_0
    invoke-direct {v9, v3, v11, v4}, Lorg/eclipse/jdt/internal/compiler/ast/LambdaExpression;-><init>(Lorg/eclipse/jdt/internal/compiler/CompilationResult;ZZ)V

    new-array v3, v2, [Lorg/eclipse/jdt/internal/compiler/ast/Argument;

    move v4, v11

    :goto_1
    if-lt v4, v2, :cond_11

    invoke-virtual {v9, v3}, Lorg/eclipse/jdt/internal/compiler/ast/LambdaExpression;->setArguments([Lorg/eclipse/jdt/internal/compiler/ast/Argument;)V

    iget-object v3, v8, Lorg/eclipse/jdt/internal/compiler/ast/FunctionalExpression;->expressionContext:Lorg/eclipse/jdt/internal/compiler/ast/ExpressionContext;

    invoke-virtual {v9, v3}, Lorg/eclipse/jdt/internal/compiler/ast/FunctionalExpression;->setExpressionContext(Lorg/eclipse/jdt/internal/compiler/ast/ExpressionContext;)V

    iget-object v3, v8, Lorg/eclipse/jdt/internal/compiler/ast/FunctionalExpression;->expectedType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-virtual {v9, v3}, Lorg/eclipse/jdt/internal/compiler/ast/FunctionalExpression;->setExpectedType(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)V

    iget-boolean v5, v8, Lorg/eclipse/jdt/internal/compiler/ast/ReferenceExpression;->receiverPrecedesParameters:Z

    sub-int v6, v2, v5

    new-array v7, v6, [Lorg/eclipse/jdt/internal/compiler/ast/SingleNameReference;

    move v2, v11

    :goto_2
    const-wide/16 v3, 0x0

    if-lt v2, v6, :cond_10

    invoke-direct/range {p0 .. p0}, Lorg/eclipse/jdt/internal/compiler/ast/ReferenceExpression;->shouldGenerateSecretReceiverVariable()Z

    move-result v12

    invoke-virtual/range {p0 .. p0}, Lorg/eclipse/jdt/internal/compiler/ast/ReferenceExpression;->isMethodReference()Z

    move-result v2

    if-eqz v2, :cond_4

    if-eqz v12, :cond_1

    iget-object v2, v8, Lorg/eclipse/jdt/internal/compiler/ast/ReferenceExpression;->lhs:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    move-object/from16 v13, p1

    invoke-virtual {v2, v13, v0, v10}, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->generateCode(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;Z)V

    iget-object v2, v8, Lorg/eclipse/jdt/internal/compiler/ast/ReferenceExpression;->receiverVariable:Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;

    invoke-virtual {v0, v2, v11}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->store(Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;Z)V

    iget-object v2, v8, Lorg/eclipse/jdt/internal/compiler/ast/ReferenceExpression;->receiverVariable:Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;

    invoke-virtual {v0, v2}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->addVariable(Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;)V

    goto :goto_3

    :cond_1
    move-object/from16 v13, p1

    :goto_3
    new-instance v2, Lorg/eclipse/jdt/internal/compiler/ast/MessageSend;

    invoke-direct {v2}, Lorg/eclipse/jdt/internal/compiler/ast/MessageSend;-><init>()V

    iget-object v5, v8, Lorg/eclipse/jdt/internal/compiler/ast/ReferenceExpression;->selector:[C

    iput-object v5, v2, Lorg/eclipse/jdt/internal/compiler/ast/MessageSend;->selector:[C

    if-eqz v12, :cond_2

    new-instance v5, Lorg/eclipse/jdt/internal/compiler/ast/SingleNameReference;

    iget-object v6, v8, Lorg/eclipse/jdt/internal/compiler/ast/ReferenceExpression;->receiverVariable:Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;

    iget-object v6, v6, Lorg/eclipse/jdt/internal/compiler/lookup/VariableBinding;->name:[C

    invoke-direct {v5, v6, v3, v4}, Lorg/eclipse/jdt/internal/compiler/ast/SingleNameReference;-><init>([CJ)V

    goto :goto_4

    :cond_2
    iget-object v5, v1, Lorg/eclipse/jdt/internal/compiler/ast/ReferenceExpression;->lhs:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    :goto_4
    iget-boolean v6, v8, Lorg/eclipse/jdt/internal/compiler/ast/ReferenceExpression;->receiverPrecedesParameters:Z

    if-eqz v6, :cond_3

    new-instance v5, Lorg/eclipse/jdt/internal/compiler/ast/SingleNameReference;

    sget-object v6, Lorg/eclipse/jdt/internal/compiler/ast/ReferenceExpression;->ImplicitArgName:[C

    invoke-static {v11}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/String;->toCharArray()[C

    move-result-object v14

    invoke-static {v6, v14}, Lorg/eclipse/jdt/core/compiler/CharOperation;->append([C[C)[C

    move-result-object v6

    invoke-direct {v5, v6, v3, v4}, Lorg/eclipse/jdt/internal/compiler/ast/SingleNameReference;-><init>([CJ)V

    :cond_3
    iput-object v5, v2, Lorg/eclipse/jdt/internal/compiler/ast/MessageSend;->receiver:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    iget-object v1, v1, Lorg/eclipse/jdt/internal/compiler/ast/ReferenceExpression;->typeArguments:[Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    iput-object v1, v2, Lorg/eclipse/jdt/internal/compiler/ast/MessageSend;->typeArguments:[Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    iput-object v7, v2, Lorg/eclipse/jdt/internal/compiler/ast/MessageSend;->arguments:[Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    invoke-virtual {v9, v2}, Lorg/eclipse/jdt/internal/compiler/ast/LambdaExpression;->setBody(Lorg/eclipse/jdt/internal/compiler/ast/Statement;)V

    goto/16 :goto_9

    :cond_4
    move-object/from16 v13, p1

    invoke-virtual/range {p0 .. p0}, Lorg/eclipse/jdt/internal/compiler/ast/ReferenceExpression;->isArrayConstructorReference()Z

    move-result v2

    if-eqz v2, :cond_8

    new-instance v1, Lorg/eclipse/jdt/internal/compiler/ast/ArrayAllocationExpression;

    invoke-direct {v1}, Lorg/eclipse/jdt/internal/compiler/ast/ArrayAllocationExpression;-><init>()V

    aget-object v2, v7, v11

    new-array v5, v10, [Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    aput-object v2, v5, v11

    iput-object v5, v1, Lorg/eclipse/jdt/internal/compiler/ast/ArrayAllocationExpression;->dimensions:[Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    iget-object v2, v8, Lorg/eclipse/jdt/internal/compiler/ast/ReferenceExpression;->lhs:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    instance-of v5, v2, Lorg/eclipse/jdt/internal/compiler/ast/ArrayTypeReference;

    if-eqz v5, :cond_6

    check-cast v2, Lorg/eclipse/jdt/internal/compiler/ast/ArrayTypeReference;

    iget v5, v2, Lorg/eclipse/jdt/internal/compiler/ast/ArrayTypeReference;->dimensions:I

    if-ne v5, v10, :cond_5

    new-instance v5, Lorg/eclipse/jdt/internal/compiler/ast/SingleTypeReference;

    iget-object v2, v2, Lorg/eclipse/jdt/internal/compiler/ast/SingleTypeReference;->token:[C

    invoke-direct {v5, v2, v3, v4}, Lorg/eclipse/jdt/internal/compiler/ast/SingleTypeReference;-><init>([CJ)V

    goto :goto_5

    :cond_5
    new-instance v5, Lorg/eclipse/jdt/internal/compiler/ast/ArrayTypeReference;

    iget-object v6, v2, Lorg/eclipse/jdt/internal/compiler/ast/SingleTypeReference;->token:[C

    iget v2, v2, Lorg/eclipse/jdt/internal/compiler/ast/ArrayTypeReference;->dimensions:I

    sub-int/2addr v2, v10

    invoke-direct {v5, v6, v2, v3, v4}, Lorg/eclipse/jdt/internal/compiler/ast/ArrayTypeReference;-><init>([CIJ)V

    :goto_5
    iput-object v5, v1, Lorg/eclipse/jdt/internal/compiler/ast/ArrayAllocationExpression;->type:Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    goto :goto_7

    :cond_6
    check-cast v2, Lorg/eclipse/jdt/internal/compiler/ast/ArrayQualifiedTypeReference;

    iget v3, v2, Lorg/eclipse/jdt/internal/compiler/ast/ArrayQualifiedTypeReference;->dimensions:I

    if-ne v3, v10, :cond_7

    new-instance v3, Lorg/eclipse/jdt/internal/compiler/ast/QualifiedTypeReference;

    iget-object v4, v2, Lorg/eclipse/jdt/internal/compiler/ast/QualifiedTypeReference;->tokens:[[C

    iget-object v2, v2, Lorg/eclipse/jdt/internal/compiler/ast/QualifiedTypeReference;->sourcePositions:[J

    invoke-direct {v3, v4, v2}, Lorg/eclipse/jdt/internal/compiler/ast/QualifiedTypeReference;-><init>([[C[J)V

    goto :goto_6

    :cond_7
    new-instance v3, Lorg/eclipse/jdt/internal/compiler/ast/ArrayQualifiedTypeReference;

    iget-object v4, v2, Lorg/eclipse/jdt/internal/compiler/ast/QualifiedTypeReference;->tokens:[[C

    iget v5, v2, Lorg/eclipse/jdt/internal/compiler/ast/ArrayQualifiedTypeReference;->dimensions:I

    sub-int/2addr v5, v10

    iget-object v2, v2, Lorg/eclipse/jdt/internal/compiler/ast/QualifiedTypeReference;->sourcePositions:[J

    invoke-direct {v3, v4, v5, v2}, Lorg/eclipse/jdt/internal/compiler/ast/ArrayQualifiedTypeReference;-><init>([[CI[J)V

    :goto_6
    iput-object v3, v1, Lorg/eclipse/jdt/internal/compiler/ast/ArrayAllocationExpression;->type:Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    :goto_7
    invoke-virtual {v9, v1}, Lorg/eclipse/jdt/internal/compiler/ast/LambdaExpression;->setBody(Lorg/eclipse/jdt/internal/compiler/ast/Statement;)V

    goto :goto_9

    :cond_8
    new-instance v2, Lorg/eclipse/jdt/internal/compiler/ast/AllocationExpression;

    invoke-direct {v2}, Lorg/eclipse/jdt/internal/compiler/ast/AllocationExpression;-><init>()V

    iget-object v5, v8, Lorg/eclipse/jdt/internal/compiler/ast/ReferenceExpression;->lhs:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    instance-of v6, v5, Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    if-eqz v6, :cond_9

    check-cast v5, Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    iput-object v5, v2, Lorg/eclipse/jdt/internal/compiler/ast/AllocationExpression;->type:Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    goto :goto_8

    :cond_9
    instance-of v6, v5, Lorg/eclipse/jdt/internal/compiler/ast/SingleNameReference;

    if-eqz v6, :cond_a

    new-instance v5, Lorg/eclipse/jdt/internal/compiler/ast/SingleTypeReference;

    iget-object v6, v8, Lorg/eclipse/jdt/internal/compiler/ast/ReferenceExpression;->lhs:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    check-cast v6, Lorg/eclipse/jdt/internal/compiler/ast/SingleNameReference;

    iget-object v6, v6, Lorg/eclipse/jdt/internal/compiler/ast/SingleNameReference;->token:[C

    invoke-direct {v5, v6, v3, v4}, Lorg/eclipse/jdt/internal/compiler/ast/SingleTypeReference;-><init>([CJ)V

    iput-object v5, v2, Lorg/eclipse/jdt/internal/compiler/ast/AllocationExpression;->type:Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    goto :goto_8

    :cond_a
    instance-of v3, v5, Lorg/eclipse/jdt/internal/compiler/ast/QualifiedNameReference;

    if-eqz v3, :cond_f

    new-instance v3, Lorg/eclipse/jdt/internal/compiler/ast/QualifiedTypeReference;

    iget-object v4, v8, Lorg/eclipse/jdt/internal/compiler/ast/ReferenceExpression;->lhs:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    move-object v5, v4

    check-cast v5, Lorg/eclipse/jdt/internal/compiler/ast/QualifiedNameReference;

    iget-object v5, v5, Lorg/eclipse/jdt/internal/compiler/ast/QualifiedNameReference;->tokens:[[C

    check-cast v4, Lorg/eclipse/jdt/internal/compiler/ast/QualifiedNameReference;

    iget-object v4, v4, Lorg/eclipse/jdt/internal/compiler/ast/QualifiedNameReference;->tokens:[[C

    array-length v4, v4

    new-array v4, v4, [J

    invoke-direct {v3, v5, v4}, Lorg/eclipse/jdt/internal/compiler/ast/QualifiedTypeReference;-><init>([[C[J)V

    iput-object v3, v2, Lorg/eclipse/jdt/internal/compiler/ast/AllocationExpression;->type:Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    :goto_8
    iget-object v1, v1, Lorg/eclipse/jdt/internal/compiler/ast/ReferenceExpression;->typeArguments:[Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    iput-object v1, v2, Lorg/eclipse/jdt/internal/compiler/ast/AllocationExpression;->typeArguments:[Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    iput-object v7, v2, Lorg/eclipse/jdt/internal/compiler/ast/AllocationExpression;->arguments:[Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    invoke-virtual {v9, v2}, Lorg/eclipse/jdt/internal/compiler/ast/LambdaExpression;->setBody(Lorg/eclipse/jdt/internal/compiler/ast/Statement;)V

    :goto_9
    iget-object v1, v8, Lorg/eclipse/jdt/internal/compiler/ast/ReferenceExpression;->receiverVariable:Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;

    if-eqz v1, :cond_b

    iget-object v1, v1, Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;->declaringScope:Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;

    move-object v13, v1

    :cond_b
    invoke-virtual {v13}, Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object v1

    sget-object v2, Lorg/eclipse/jdt/internal/compiler/ast/FunctionalExpression;->silentErrorHandlingPolicy:Lorg/eclipse/jdt/internal/compiler/IErrorHandlingPolicy;

    invoke-virtual {v1, v2}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemHandler;->switchErrorHandlingPolicy(Lorg/eclipse/jdt/internal/compiler/IErrorHandlingPolicy;)Lorg/eclipse/jdt/internal/compiler/IErrorHandlingPolicy;

    move-result-object v14

    :try_start_0
    invoke-virtual {v9, v13, v10}, Lorg/eclipse/jdt/internal/compiler/ast/LambdaExpression;->resolveType(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;Z)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    new-instance v15, Lorg/eclipse/jdt/internal/compiler/flow/FieldInitsFakingFlowContext;

    sget-object v4, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->NO_EXCEPTIONS:[Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    sget-object v7, Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;->DEAD_END:Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;

    const/4 v2, 0x0

    const/4 v5, 0x0

    move-object v1, v15

    move-object/from16 v3, p0

    move-object v6, v13

    invoke-direct/range {v1 .. v7}, Lorg/eclipse/jdt/internal/compiler/flow/FieldInitsFakingFlowContext;-><init>(Lorg/eclipse/jdt/internal/compiler/flow/FlowContext;Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;[Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;Lorg/eclipse/jdt/internal/compiler/flow/FlowContext;Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;)V

    invoke-virtual {v13}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->outerMostMethodScope()Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;

    move-result-object v1

    iget v1, v1, Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;->analysisIndex:I

    invoke-virtual {v13}, Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;->referenceType()Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;

    move-result-object v2

    iget v2, v2, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->maxFieldCount:I

    invoke-static {v1, v2}, Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;->fakeInitializedFlowInfo(II)Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;

    move-result-object v1

    invoke-virtual {v9, v13, v15, v1}, Lorg/eclipse/jdt/internal/compiler/ast/LambdaExpression;->analyseCode(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;Lorg/eclipse/jdt/internal/compiler/flow/FlowContext;Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;)Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v13}, Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object v1

    invoke-virtual {v1, v14}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemHandler;->switchErrorHandlingPolicy(Lorg/eclipse/jdt/internal/compiler/IErrorHandlingPolicy;)Lorg/eclipse/jdt/internal/compiler/IErrorHandlingPolicy;

    iget-object v1, v8, Lorg/eclipse/jdt/internal/compiler/ast/ReferenceExpression;->receiverType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->syntheticOuterLocalVariables()[Lorg/eclipse/jdt/internal/compiler/lookup/SyntheticArgumentBinding;

    move-result-object v1

    if-nez v1, :cond_c

    move v2, v11

    goto :goto_a

    :cond_c
    array-length v2, v1

    :goto_a
    if-lt v11, v2, :cond_e

    move/from16 v15, p3

    invoke-virtual {v9, v13, v0, v15}, Lorg/eclipse/jdt/internal/compiler/ast/LambdaExpression;->generateCode(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;Z)V

    if-eqz v12, :cond_d

    iget-object v1, v8, Lorg/eclipse/jdt/internal/compiler/ast/ReferenceExpression;->receiverVariable:Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;

    invoke-virtual {v0, v1}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->removeVariable(Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;)V

    :cond_d
    return-void

    :cond_e
    move/from16 v15, p3

    aget-object v3, v1, v11

    iget-object v3, v3, Lorg/eclipse/jdt/internal/compiler/lookup/SyntheticArgumentBinding;->actualOuterLocalVariable:Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;

    invoke-virtual {v9, v3}, Lorg/eclipse/jdt/internal/compiler/ast/LambdaExpression;->addSyntheticArgument(Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;)V

    add-int/2addr v11, v10

    goto :goto_a

    :catchall_0
    move-exception v0

    invoke-virtual {v13}, Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object v1

    invoke-virtual {v1, v14}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemHandler;->switchErrorHandlingPolicy(Lorg/eclipse/jdt/internal/compiler/IErrorHandlingPolicy;)Lorg/eclipse/jdt/internal/compiler/IErrorHandlingPolicy;

    throw v0

    :cond_f
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Unexpected node type"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_10
    move-object/from16 v13, p1

    move/from16 v15, p3

    sget-object v12, Lorg/eclipse/jdt/internal/compiler/ast/ReferenceExpression;->ImplicitArgName:[C

    add-int v14, v2, v5

    invoke-static {v14}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/String;->toCharArray()[C

    move-result-object v14

    invoke-static {v12, v14}, Lorg/eclipse/jdt/core/compiler/CharOperation;->append([C[C)[C

    move-result-object v12

    new-instance v14, Lorg/eclipse/jdt/internal/compiler/ast/SingleNameReference;

    invoke-direct {v14, v12, v3, v4}, Lorg/eclipse/jdt/internal/compiler/ast/SingleNameReference;-><init>([CJ)V

    aput-object v14, v7, v2

    add-int/2addr v2, v10

    goto/16 :goto_2

    :cond_11
    move-object/from16 v13, p1

    move/from16 v15, p3

    new-instance v5, Lorg/eclipse/jdt/internal/compiler/ast/Argument;

    sget-object v6, Lorg/eclipse/jdt/internal/compiler/ast/ReferenceExpression;->ImplicitArgName:[C

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->toCharArray()[C

    move-result-object v7

    invoke-static {v6, v7}, Lorg/eclipse/jdt/core/compiler/CharOperation;->append([C[C)[C

    move-result-object v17

    const/16 v21, 0x0

    const/16 v22, 0x1

    const-wide/16 v18, 0x0

    const/16 v20, 0x0

    move-object/from16 v16, v5

    invoke-direct/range {v16 .. v22}, Lorg/eclipse/jdt/internal/compiler/ast/Argument;-><init>([CJLorg/eclipse/jdt/internal/compiler/ast/TypeReference;IZ)V

    aput-object v5, v3, v4

    add-int/2addr v4, v10

    goto/16 :goto_1
.end method

.method public genericTypeArguments()[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/ReferenceExpression;->resolvedTypeArguments:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    return-object v0
.end method

.method public getCompileTimeDeclaration(Lorg/eclipse/jdt/internal/compiler/lookup/Scope;Z[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/ReferenceExpression;->exactMethodBinding:Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/ReferenceExpression;->receiverType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isArrayType()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p2, p0, Lorg/eclipse/jdt/internal/compiler/ast/ReferenceExpression;->receiverType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    check-cast p2, Lorg/eclipse/jdt/internal/compiler/lookup/ArrayBinding;

    iget-object p3, p0, Lorg/eclipse/jdt/internal/compiler/ast/ReferenceExpression;->selector:[C

    sget-object v0, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->NO_PARAMETERS:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-virtual {p1, p2, p3, v0, p0}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->findMethodForArray(Lorg/eclipse/jdt/internal/compiler/lookup/ArrayBinding;[C[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/InvocationSite;)Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    move-result-object p1

    return-object p1

    :cond_1
    if-eqz p2, :cond_2

    iget-object p2, p0, Lorg/eclipse/jdt/internal/compiler/ast/ReferenceExpression;->receiverType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    check-cast p2, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    invoke-virtual {p1, p2, p3, p0}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->getConstructor(Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/InvocationSite;)Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    move-result-object p1

    return-object p1

    :cond_2
    iget-object p2, p0, Lorg/eclipse/jdt/internal/compiler/ast/ReferenceExpression;->receiverType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/ReferenceExpression;->selector:[C

    invoke-virtual {p1, p2, v0, p3, p0}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->getMethod(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;[C[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/InvocationSite;)Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    move-result-object p1

    return-object p1
.end method

.method public getExactMethod()Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/ReferenceExpression;->exactMethodBinding:Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    return-object v0
.end method

.method public getInferenceContext(Lorg/eclipse/jdt/internal/compiler/lookup/ParameterizedMethodBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/InferenceContext18;
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/ReferenceExpression;->inferenceContexts:Ljava/util/HashMap;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/eclipse/jdt/internal/compiler/lookup/InferenceContext18;

    return-object p1
.end method

.method public getMethodBinding()Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/FunctionalExpression;->actualMethodBinding:Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/FunctionalExpression;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    iput-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/FunctionalExpression;->actualMethodBinding:Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    :cond_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/FunctionalExpression;->actualMethodBinding:Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    return-object v0
.end method

.method public initialize(Lorg/eclipse/jdt/internal/compiler/CompilationResult;Lorg/eclipse/jdt/internal/compiler/ast/Expression;[Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;[CI)V
    .locals 0

    invoke-super {p0, p1}, Lorg/eclipse/jdt/internal/compiler/ast/FunctionalExpression;->setCompilationResult(Lorg/eclipse/jdt/internal/compiler/CompilationResult;)V

    iput-object p2, p0, Lorg/eclipse/jdt/internal/compiler/ast/ReferenceExpression;->lhs:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    iput-object p3, p0, Lorg/eclipse/jdt/internal/compiler/ast/ReferenceExpression;->typeArguments:[Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    iput-object p4, p0, Lorg/eclipse/jdt/internal/compiler/ast/ReferenceExpression;->selector:[C

    iget p1, p2, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceStart:I

    iput p1, p0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceStart:I

    iput p5, p0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceEnd:I

    return-void
.end method

.method public isArrayConstructorReference()Z
    .locals 1

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/ast/ReferenceExpression;->isConstructorReference()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/ReferenceExpression;->lhs:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    iget-object v0, v0, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->resolvedType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isArrayType()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isCompatibleWith(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/Scope;)Z
    .locals 0

    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/compiler/ast/ReferenceExpression;->cachedResolvedCopy(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Lorg/eclipse/jdt/internal/compiler/ast/ReferenceExpression;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p2, p1, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->resolvedType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->isValidBinding()Z

    move-result p2

    if-eqz p2, :cond_0

    iget-object p1, p1, Lorg/eclipse/jdt/internal/compiler/ast/FunctionalExpression;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->isValidBinding()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public isConstructorReference()Z
    .locals 2

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/ReferenceExpression;->selector:[C

    sget-object v1, Lorg/eclipse/jdt/internal/compiler/codegen/ConstantPool;->Init:[C

    invoke-static {v0, v1}, Lorg/eclipse/jdt/core/compiler/CharOperation;->equals([C[C)Z

    move-result v0

    return v0
.end method

.method public isExactMethodReference()Z
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/ReferenceExpression;->exactMethodBinding:Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isMethodReference()Z
    .locals 2

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/ReferenceExpression;->selector:[C

    sget-object v1, Lorg/eclipse/jdt/internal/compiler/codegen/ConstantPool;->Init:[C

    invoke-static {v0, v1}, Lorg/eclipse/jdt/core/compiler/CharOperation;->equals([C[C)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public isPertinentToApplicability(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;)Z
    .locals 1

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/ast/ReferenceExpression;->isExactMethodReference()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    invoke-super {p0, p1, p2}, Lorg/eclipse/jdt/internal/compiler/ast/FunctionalExpression;->isPertinentToApplicability(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;)Z

    move-result p1

    return p1
.end method

.method public isPotentiallyCompatibleWith(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/Scope;)Z
    .locals 7

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/ast/ReferenceExpression;->isConstructorReference()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/ast/ReferenceExpression;->receiverType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    if-nez v2, :cond_0

    return v1

    :cond_0
    invoke-virtual {v2}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isArrayType()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/ast/ReferenceExpression;->receiverType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-virtual {v2}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->leafComponentType()Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v2

    invoke-virtual {v2}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isReifiable()Z

    move-result v2

    if-nez v2, :cond_1

    return v1

    :cond_1
    const/4 v2, 0x0

    invoke-super {p0, p1, v2}, Lorg/eclipse/jdt/internal/compiler/ast/FunctionalExpression;->isPertinentToApplicability(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;)Z

    move-result v3

    const/4 v4, 0x1

    if-nez v3, :cond_2

    return v4

    :cond_2
    iget-object v3, p0, Lorg/eclipse/jdt/internal/compiler/ast/FunctionalExpression;->enclosingScope:Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;

    invoke-virtual {p1, v3, v4}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->getSingleAbstractMethod(Lorg/eclipse/jdt/internal/compiler/lookup/Scope;Z)Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    move-result-object p1

    if-eqz p1, :cond_10

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->isValidBinding()Z

    move-result v3

    if-nez v3, :cond_3

    goto/16 :goto_9

    :cond_3
    iget-boolean v3, p0, Lorg/eclipse/jdt/internal/compiler/ast/ReferenceExpression;->typeArgumentsHaveErrors:Z

    if-nez v3, :cond_10

    iget-object v3, p0, Lorg/eclipse/jdt/internal/compiler/ast/ReferenceExpression;->receiverType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    if-eqz v3, :cond_10

    invoke-virtual {v3}, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->isValidBinding()Z

    move-result v3

    if-nez v3, :cond_4

    goto/16 :goto_9

    :cond_4
    iget-object p1, p1, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->parameters:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    array-length p1, p1

    new-array v3, p1, [Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move v5, v1

    :goto_0
    if-lt v5, p1, :cond_f

    iput-object v3, p0, Lorg/eclipse/jdt/internal/compiler/ast/ReferenceExpression;->freeParameters:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    iput-boolean v4, p0, Lorg/eclipse/jdt/internal/compiler/ast/ReferenceExpression;->checkingPotentialCompatibility:Z

    :try_start_0
    invoke-virtual {p0, p2, v0, v3}, Lorg/eclipse/jdt/internal/compiler/ast/ReferenceExpression;->getCompileTimeDeclaration(Lorg/eclipse/jdt/internal/compiler/lookup/Scope;Z[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->isValidBinding()Z

    move-result v5

    if-eqz v5, :cond_5

    filled-new-array {v0}, [Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    move-result-object v0

    iput-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/ReferenceExpression;->potentialMethods:[Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    goto :goto_1

    :catchall_0
    move-exception p1

    goto/16 :goto_8

    :cond_5
    :goto_1
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/ReferenceExpression;->potentialMethods:[Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    array-length v0, v0

    move v5, v1

    :goto_2
    if-lt v5, v0, :cond_b

    iget-boolean v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/ReferenceExpression;->haveReceiver:Z

    if-nez v0, :cond_a

    if-nez p1, :cond_6

    goto :goto_6

    :cond_6
    sub-int/2addr p1, v4

    new-array v0, p1, [Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-static {v3, v4, v0, v1, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/ReferenceExpression;->freeParameters:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    sget-object p1, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->NO_METHODS:[Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    iput-object p1, p0, Lorg/eclipse/jdt/internal/compiler/ast/ReferenceExpression;->potentialMethods:[Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    invoke-virtual {p0, p2, v1, v0}, Lorg/eclipse/jdt/internal/compiler/ast/ReferenceExpression;->getCompileTimeDeclaration(Lorg/eclipse/jdt/internal/compiler/lookup/Scope;Z[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    move-result-object p1

    if-eqz p1, :cond_7

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->isValidBinding()Z

    move-result p2

    if-eqz p2, :cond_7

    filled-new-array {p1}, [Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    move-result-object p1

    iput-object p1, p0, Lorg/eclipse/jdt/internal/compiler/ast/ReferenceExpression;->potentialMethods:[Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    :cond_7
    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/ast/ReferenceExpression;->potentialMethods:[Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    array-length p1, p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move p2, v1

    :goto_3
    if-lt p2, p1, :cond_8

    iput-boolean v1, p0, Lorg/eclipse/jdt/internal/compiler/ast/ReferenceExpression;->checkingPotentialCompatibility:Z

    sget-object p1, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->NO_METHODS:[Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    iput-object p1, p0, Lorg/eclipse/jdt/internal/compiler/ast/ReferenceExpression;->potentialMethods:[Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    :goto_4
    iput-object v2, p0, Lorg/eclipse/jdt/internal/compiler/ast/ReferenceExpression;->freeParameters:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    return v1

    :cond_8
    :try_start_1
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/ReferenceExpression;->potentialMethods:[Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    aget-object v0, v0, p2

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->isStatic()Z

    move-result v0

    if-nez v0, :cond_9

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/ReferenceExpression;->potentialMethods:[Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    aget-object v0, v0, p2

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->isConstructor()Z

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v0, :cond_9

    iput-boolean v1, p0, Lorg/eclipse/jdt/internal/compiler/ast/ReferenceExpression;->checkingPotentialCompatibility:Z

    sget-object p1, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->NO_METHODS:[Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    iput-object p1, p0, Lorg/eclipse/jdt/internal/compiler/ast/ReferenceExpression;->potentialMethods:[Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    :goto_5
    iput-object v2, p0, Lorg/eclipse/jdt/internal/compiler/ast/ReferenceExpression;->freeParameters:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    return v4

    :cond_9
    add-int/lit8 p2, p2, 0x1

    goto :goto_3

    :cond_a
    :goto_6
    iput-boolean v1, p0, Lorg/eclipse/jdt/internal/compiler/ast/ReferenceExpression;->checkingPotentialCompatibility:Z

    sget-object p1, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->NO_METHODS:[Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    iput-object p1, p0, Lorg/eclipse/jdt/internal/compiler/ast/ReferenceExpression;->potentialMethods:[Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    goto :goto_4

    :cond_b
    :try_start_2
    iget-object v6, p0, Lorg/eclipse/jdt/internal/compiler/ast/ReferenceExpression;->potentialMethods:[Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    aget-object v6, v6, v5

    invoke-virtual {v6}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->isStatic()Z

    move-result v6

    if-nez v6, :cond_d

    iget-object v6, p0, Lorg/eclipse/jdt/internal/compiler/ast/ReferenceExpression;->potentialMethods:[Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    aget-object v6, v6, v5

    invoke-virtual {v6}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->isConstructor()Z

    move-result v6

    if-eqz v6, :cond_c

    goto :goto_7

    :cond_c
    iget-boolean v6, p0, Lorg/eclipse/jdt/internal/compiler/ast/ReferenceExpression;->haveReceiver:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v6, :cond_e

    iput-boolean v1, p0, Lorg/eclipse/jdt/internal/compiler/ast/ReferenceExpression;->checkingPotentialCompatibility:Z

    sget-object p1, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->NO_METHODS:[Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    iput-object p1, p0, Lorg/eclipse/jdt/internal/compiler/ast/ReferenceExpression;->potentialMethods:[Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    goto :goto_5

    :cond_d
    :goto_7
    :try_start_3
    iget-boolean v6, p0, Lorg/eclipse/jdt/internal/compiler/ast/ReferenceExpression;->haveReceiver:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-nez v6, :cond_e

    iput-boolean v1, p0, Lorg/eclipse/jdt/internal/compiler/ast/ReferenceExpression;->checkingPotentialCompatibility:Z

    sget-object p1, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->NO_METHODS:[Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    iput-object p1, p0, Lorg/eclipse/jdt/internal/compiler/ast/ReferenceExpression;->potentialMethods:[Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    goto :goto_5

    :cond_e
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_2

    :goto_8
    iput-boolean v1, p0, Lorg/eclipse/jdt/internal/compiler/ast/ReferenceExpression;->checkingPotentialCompatibility:Z

    sget-object p2, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->NO_METHODS:[Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    iput-object p2, p0, Lorg/eclipse/jdt/internal/compiler/ast/ReferenceExpression;->potentialMethods:[Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    iput-object v2, p0, Lorg/eclipse/jdt/internal/compiler/ast/ReferenceExpression;->freeParameters:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    throw p1

    :cond_f
    new-instance v6, Lorg/eclipse/jdt/internal/compiler/ast/ReferenceExpression$2;

    invoke-direct {v6, p0}, Lorg/eclipse/jdt/internal/compiler/ast/ReferenceExpression$2;-><init>(Lorg/eclipse/jdt/internal/compiler/ast/ReferenceExpression;)V

    aput-object v6, v3, v5

    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_0

    :cond_10
    :goto_9
    return v1
.end method

.method public isSuperAccess()Z
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/ReferenceExpression;->lhs:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->isSuper()Z

    move-result v0

    return v0
.end method

.method public isTypeAccess()Z
    .locals 1

    iget-boolean v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/ReferenceExpression;->haveReceiver:Z

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public manageSyntheticAccessIfNecessary(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;)V
    .locals 6

    iget p2, p2, Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;->tagBits:I

    const/4 v0, 0x1

    and-int/2addr p2, v0

    if-nez p2, :cond_a

    iget-object p2, p0, Lorg/eclipse/jdt/internal/compiler/ast/FunctionalExpression;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    if-eqz p2, :cond_a

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->isValidBinding()Z

    move-result p2

    if-nez p2, :cond_0

    goto/16 :goto_1

    :cond_0
    iget-object p2, p0, Lorg/eclipse/jdt/internal/compiler/ast/FunctionalExpression;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->original()Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    move-result-object p2

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->isVarargs()Z

    move-result v1

    if-eqz v1, :cond_1

    return-void

    :cond_1
    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->enclosingSourceType()Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;

    move-result-object v1

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/ast/ReferenceExpression;->isConstructorReference()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_5

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->isPrivate()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p2, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->declaringClass:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    invoke-static {v1, v0}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->notEquals(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-wide v1, v0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->tagBits:J

    const-wide/16 v4, 0x10

    and-long/2addr v1, v4

    const-wide/16 v4, 0x0

    cmp-long v1, v1, v4

    if-eqz v1, :cond_2

    iget-wide v0, p2, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->tagBits:J

    const-wide/16 v2, 0x200

    or-long/2addr v0, v2

    iput-wide v0, p2, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->tagBits:J

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->enclosingSourceType()Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;

    move-result-object v1

    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/ast/FunctionalExpression;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    iget-object v2, v2, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->declaringClass:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    invoke-virtual {v1, v2}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->isNestmateOf(Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;)Z

    move-result v1

    if-eqz v1, :cond_3

    iput-object p2, p0, Lorg/eclipse/jdt/internal/compiler/ast/ReferenceExpression;->syntheticAccessor:Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    return-void

    :cond_3
    check-cast v0, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;

    invoke-virtual {v0, p2, v3}, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->addSyntheticMethod(Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;Z)Lorg/eclipse/jdt/internal/compiler/lookup/SyntheticMethodBinding;

    move-result-object v0

    iput-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/ReferenceExpression;->syntheticAccessor:Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object p1

    invoke-virtual {p1, p2, p0}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->needToEmulateMethodAccess(Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;)V

    :cond_4
    :goto_0
    return-void

    :cond_5
    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/ast/FunctionalExpression;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    invoke-virtual {v2}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->isPrivate()Z

    move-result v2

    if-eqz v2, :cond_7

    iget-object v0, p2, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->declaringClass:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    invoke-static {v1, v0}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->notEquals(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p2, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->declaringClass:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    check-cast v0, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;

    invoke-virtual {v0, p2, v3}, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->addSyntheticMethod(Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;Z)Lorg/eclipse/jdt/internal/compiler/lookup/SyntheticMethodBinding;

    move-result-object v0

    iput-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/ReferenceExpression;->syntheticAccessor:Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object p1

    invoke-virtual {p1, p2, p0}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->needToEmulateMethodAccess(Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;)V

    :cond_6
    return-void

    :cond_7
    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/ast/ReferenceExpression;->lhs:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    invoke-virtual {v2}, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->isSuper()Z

    move-result v2

    if-eqz v2, :cond_9

    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/ast/ReferenceExpression;->lhs:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    instance-of v3, v2, Lorg/eclipse/jdt/internal/compiler/ast/QualifiedSuperReference;

    if-eqz v3, :cond_8

    check-cast v2, Lorg/eclipse/jdt/internal/compiler/ast/QualifiedSuperReference;

    iget-object v3, v2, Lorg/eclipse/jdt/internal/compiler/ast/QualifiedThisReference;->qualification:Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    iget-object v3, v3, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->resolvedType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-virtual {v3}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isInterface()Z

    move-result v3

    if-nez v3, :cond_8

    iget-object v1, v2, Lorg/eclipse/jdt/internal/compiler/ast/QualifiedThisReference;->currentCompatibleType:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    check-cast v1, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;

    :cond_8
    invoke-virtual {v1, p2, v0}, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->addSyntheticMethod(Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;Z)Lorg/eclipse/jdt/internal/compiler/lookup/SyntheticMethodBinding;

    move-result-object v0

    iput-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/ReferenceExpression;->syntheticAccessor:Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object p1

    invoke-virtual {p1, p2, p0}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->needToEmulateMethodAccess(Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;)V

    return-void

    :cond_9
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/FunctionalExpression;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->isProtected()Z

    move-result v0

    if-eqz v0, :cond_a

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->bits:I

    and-int/lit16 v0, v0, 0x1fe0

    if-eqz v0, :cond_a

    iget-object v0, p2, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->declaringClass:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->getPackage()Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;

    move-result-object v0

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->getPackage()Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;

    move-result-object v2

    if-eq v0, v2, :cond_a

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->bits:I

    and-int/lit16 v0, v0, 0x1fe0

    shr-int/lit8 v0, v0, 0x5

    invoke-virtual {v1, v0}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->enclosingTypeAt(I)Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/ast/ReferenceExpression;->isSuperAccess()Z

    move-result v1

    invoke-virtual {v0, p2, v1}, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->addSyntheticMethod(Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;Z)Lorg/eclipse/jdt/internal/compiler/lookup/SyntheticMethodBinding;

    move-result-object v0

    iput-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/ReferenceExpression;->syntheticAccessor:Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object p1

    invoke-virtual {p1, p2, p0}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->needToEmulateMethodAccess(Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;)V

    :cond_a
    :goto_1
    return-void
.end method

.method public printExpression(ILjava/lang/StringBuffer;)Ljava/lang/StringBuffer;
    .locals 3

    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/ast/ReferenceExpression;->lhs:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    const/4 v0, 0x0

    invoke-virtual {p1, v0, p2}, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->print(ILjava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    const-string p1, "::"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/ast/ReferenceExpression;->typeArguments:[Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    if-eqz p1, :cond_1

    const/16 p1, 0x3c

    invoke-virtual {p2, p1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/ast/ReferenceExpression;->typeArguments:[Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    array-length p1, p1

    add-int/lit8 p1, p1, -0x1

    move v1, v0

    :goto_0
    if-lt v1, p1, :cond_0

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/ast/ReferenceExpression;->typeArguments:[Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    aget-object p1, v1, p1

    invoke-virtual {p1, v0, p2}, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->print(ILjava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    const/16 p1, 0x3e

    invoke-virtual {p2, p1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_1

    :cond_0
    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/ast/ReferenceExpression;->typeArguments:[Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    aget-object v2, v2, v1

    invoke-virtual {v2, v0, p2}, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->print(ILjava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    const-string v2, ", "

    invoke-virtual {p2, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/ast/ReferenceExpression;->isConstructorReference()Z

    move-result p1

    if-eqz p1, :cond_2

    const-string p1, "new"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_2

    :cond_2
    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/ast/ReferenceExpression;->selector:[C

    invoke-virtual {p2, p1}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    :goto_2
    return-object p2
.end method

.method public registerInferenceContext(Lorg/eclipse/jdt/internal/compiler/lookup/ParameterizedGenericMethodBinding;Lorg/eclipse/jdt/internal/compiler/lookup/InferenceContext18;)V
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/ReferenceExpression;->inferenceContexts:Ljava/util/HashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/ReferenceExpression;->inferenceContexts:Ljava/util/HashMap;

    :cond_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/ReferenceExpression;->inferenceContexts:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public bridge synthetic resolveExpressionExpecting(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/Scope;Lorg/eclipse/jdt/internal/compiler/lookup/InferenceContext18;)Lorg/eclipse/jdt/internal/compiler/ast/Expression;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Lorg/eclipse/jdt/internal/compiler/ast/ReferenceExpression;->resolveExpressionExpecting(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/Scope;Lorg/eclipse/jdt/internal/compiler/lookup/InferenceContext18;)Lorg/eclipse/jdt/internal/compiler/ast/ReferenceExpression;

    move-result-object p1

    return-object p1
.end method

.method public resolveExpressionExpecting(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/Scope;Lorg/eclipse/jdt/internal/compiler/lookup/InferenceContext18;)Lorg/eclipse/jdt/internal/compiler/ast/ReferenceExpression;
    .locals 1

    .line 2
    iget-object p3, p0, Lorg/eclipse/jdt/internal/compiler/ast/ReferenceExpression;->exactMethodBinding:Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    const/4 v0, 0x0

    if-eqz p3, :cond_3

    const/4 p3, 0x1

    .line 3
    invoke-virtual {p1, p2, p3}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->getSingleAbstractMethod(Lorg/eclipse/jdt/internal/compiler/lookup/Scope;Z)Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 4
    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->problemId()I

    move-result p2

    const/16 p3, 0x11

    if-ne p2, p3, :cond_0

    goto :goto_0

    .line 5
    :cond_0
    iget-object p1, p1, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->parameters:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    array-length p1, p1

    .line 6
    iget-object p2, p0, Lorg/eclipse/jdt/internal/compiler/ast/ReferenceExpression;->exactMethodBinding:Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    iget-object p2, p2, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->parameters:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    array-length p2, p2

    .line 7
    iget-boolean p3, p0, Lorg/eclipse/jdt/internal/compiler/ast/ReferenceExpression;->haveReceiver:Z

    if-nez p3, :cond_1

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/ast/ReferenceExpression;->isMethodReference()Z

    move-result p3

    if-eqz p3, :cond_1

    iget-object p3, p0, Lorg/eclipse/jdt/internal/compiler/ast/ReferenceExpression;->exactMethodBinding:Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    invoke-virtual {p3}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->isStatic()Z

    move-result p3

    if-nez p3, :cond_1

    add-int/lit8 p2, p2, 0x1

    :cond_1
    if-ne p1, p2, :cond_2

    move-object v0, p0

    :cond_2
    :goto_0
    return-object v0

    .line 8
    :cond_3
    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/compiler/ast/ReferenceExpression;->cachedResolvedCopy(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Lorg/eclipse/jdt/internal/compiler/ast/ReferenceExpression;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 9
    iget-object p2, p1, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->resolvedType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    if-eqz p2, :cond_4

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->isValidBinding()Z

    move-result p2

    if-eqz p2, :cond_4

    iget-object p2, p1, Lorg/eclipse/jdt/internal/compiler/ast/FunctionalExpression;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    if-eqz p2, :cond_4

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->isValidBinding()Z

    move-result p2

    if-eqz p2, :cond_4

    move-object v0, p1

    :cond_4
    return-object v0
.end method

.method public resolveType(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;
    .locals 15

    move-object v8, p0

    move-object/from16 v9, p1

    invoke-virtual/range {p1 .. p1}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->compilerOptions()Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;

    move-result-object v0

    iget-object v1, v8, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->constant:Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    sget-object v2, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->NotAConstant:Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    const/4 v3, 0x0

    const/4 v10, 0x1

    const/4 v11, 0x0

    if-eq v1, v2, :cond_1a

    iput-object v2, v8, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->constant:Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    iput-object v9, v8, Lorg/eclipse/jdt/internal/compiler/ast/FunctionalExpression;->enclosingScope:Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;

    iget-object v1, v8, Lorg/eclipse/jdt/internal/compiler/ast/ReferenceExpression;->original:Lorg/eclipse/jdt/internal/compiler/ast/ReferenceExpression;

    if-ne v1, v8, :cond_0

    invoke-virtual/range {p0 .. p1}, Lorg/eclipse/jdt/internal/compiler/ast/FunctionalExpression;->recordFunctionalType(Lorg/eclipse/jdt/internal/compiler/lookup/Scope;)I

    move-result v1

    iput v1, v8, Lorg/eclipse/jdt/internal/compiler/ast/FunctionalExpression;->ordinal:I

    :cond_0
    iget-object v1, v8, Lorg/eclipse/jdt/internal/compiler/ast/ReferenceExpression;->lhs:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    iget v2, v1, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->bits:I

    const/high16 v4, 0x40000000    # 2.0f

    or-int/2addr v2, v4

    iput v2, v1, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->bits:I

    invoke-virtual {v1, v9}, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->resolveType(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v1

    iget-object v2, v8, Lorg/eclipse/jdt/internal/compiler/ast/ReferenceExpression;->lhs:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    invoke-virtual {v2, v9, v1, v1}, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->computeConversion(Lorg/eclipse/jdt/internal/compiler/lookup/Scope;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)V

    iget-object v2, v8, Lorg/eclipse/jdt/internal/compiler/ast/ReferenceExpression;->typeArguments:[Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    if-eqz v2, :cond_7

    array-length v2, v2

    iget-wide v4, v0, Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;->sourceLevel:J

    const-wide/32 v6, 0x310000

    cmp-long v4, v4, v6

    if-gez v4, :cond_1

    move v4, v10

    goto :goto_0

    :cond_1
    move v4, v3

    :goto_0
    iput-boolean v4, v8, Lorg/eclipse/jdt/internal/compiler/ast/ReferenceExpression;->typeArgumentsHaveErrors:Z

    new-array v4, v2, [Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    iput-object v4, v8, Lorg/eclipse/jdt/internal/compiler/ast/ReferenceExpression;->resolvedTypeArguments:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move v4, v3

    :goto_1
    if-lt v4, v2, :cond_4

    iget-boolean v2, v8, Lorg/eclipse/jdt/internal/compiler/ast/ReferenceExpression;->typeArgumentsHaveErrors:Z

    if-nez v2, :cond_3

    if-nez v1, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/ast/ReferenceExpression;->isConstructorReference()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isRawType()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-virtual/range {p1 .. p1}, Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object v0

    iget-object v1, v8, Lorg/eclipse/jdt/internal/compiler/ast/ReferenceExpression;->typeArguments:[Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    invoke-virtual {v0, v1}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->rawConstructorReferenceNotWithExplicitTypeArguments([Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;)V

    iput-object v11, v8, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->resolvedType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    return-object v11

    :cond_3
    :goto_2
    iput-object v11, v8, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->resolvedType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    return-object v11

    :cond_4
    iget-object v5, v8, Lorg/eclipse/jdt/internal/compiler/ast/ReferenceExpression;->typeArguments:[Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    aget-object v5, v5, v4

    iget-object v6, v8, Lorg/eclipse/jdt/internal/compiler/ast/ReferenceExpression;->resolvedTypeArguments:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-virtual {v5, v9, v10}, Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;->resolveType(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;Z)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v7

    aput-object v7, v6, v4

    if-nez v7, :cond_5

    iput-boolean v10, v8, Lorg/eclipse/jdt/internal/compiler/ast/ReferenceExpression;->typeArgumentsHaveErrors:Z

    :cond_5
    iget-boolean v6, v8, Lorg/eclipse/jdt/internal/compiler/ast/ReferenceExpression;->typeArgumentsHaveErrors:Z

    if-eqz v6, :cond_6

    instance-of v6, v5, Lorg/eclipse/jdt/internal/compiler/ast/Wildcard;

    if-eqz v6, :cond_6

    invoke-virtual/range {p1 .. p1}, Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object v6

    invoke-virtual {v6, v5}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->illegalUsageOfWildcard(Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;)V

    :cond_6
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_7
    iget-boolean v2, v8, Lorg/eclipse/jdt/internal/compiler/ast/ReferenceExpression;->typeArgumentsHaveErrors:Z

    if-nez v2, :cond_19

    if-nez v1, :cond_8

    goto/16 :goto_6

    :cond_8
    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->problemId()I

    move-result v2

    const/16 v4, 0x15

    if-ne v2, v4, :cond_9

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->closestMatch()Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v1

    :cond_9
    if-eqz v1, :cond_18

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->isValidBinding()Z

    move-result v2

    if-nez v2, :cond_a

    goto/16 :goto_5

    :cond_a
    iput-object v1, v8, Lorg/eclipse/jdt/internal/compiler/ast/ReferenceExpression;->receiverType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    iput-boolean v10, v8, Lorg/eclipse/jdt/internal/compiler/ast/ReferenceExpression;->haveReceiver:Z

    iget-object v2, v8, Lorg/eclipse/jdt/internal/compiler/ast/ReferenceExpression;->lhs:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    instance-of v4, v2, Lorg/eclipse/jdt/internal/compiler/ast/NameReference;

    if-eqz v4, :cond_c

    iget v2, v2, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->bits:I

    and-int/lit8 v2, v2, 0x7

    const/4 v4, 0x4

    if-ne v2, v4, :cond_b

    iput-boolean v3, v8, Lorg/eclipse/jdt/internal/compiler/ast/ReferenceExpression;->haveReceiver:Z

    goto :goto_3

    :cond_b
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/ast/ReferenceExpression;->isConstructorReference()Z

    move-result v2

    if-eqz v2, :cond_d

    invoke-virtual/range {p1 .. p1}, Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object v0

    iget-object v1, v8, Lorg/eclipse/jdt/internal/compiler/ast/ReferenceExpression;->lhs:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    new-instance v2, Lorg/eclipse/jdt/internal/compiler/lookup/ProblemReferenceBinding;

    iget-object v3, v8, Lorg/eclipse/jdt/internal/compiler/ast/ReferenceExpression;->lhs:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    check-cast v3, Lorg/eclipse/jdt/internal/compiler/ast/NameReference;

    invoke-virtual {v3}, Lorg/eclipse/jdt/internal/compiler/ast/NameReference;->getName()[[C

    move-result-object v3

    invoke-direct {v2, v3, v11, v10}, Lorg/eclipse/jdt/internal/compiler/lookup/ProblemReferenceBinding;-><init>([[CLorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;I)V

    invoke-virtual {v0, v1, v2}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->invalidType(Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)V

    iput-object v11, v8, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->resolvedType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    return-object v11

    :cond_c
    instance-of v2, v2, Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    if-eqz v2, :cond_d

    iput-boolean v3, v8, Lorg/eclipse/jdt/internal/compiler/ast/ReferenceExpression;->haveReceiver:Z

    :cond_d
    :goto_3
    iget-boolean v2, v8, Lorg/eclipse/jdt/internal/compiler/ast/ReferenceExpression;->haveReceiver:Z

    if-nez v2, :cond_e

    iget-object v2, v8, Lorg/eclipse/jdt/internal/compiler/ast/ReferenceExpression;->lhs:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    invoke-virtual {v2}, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->isSuper()Z

    move-result v2

    if-nez v2, :cond_e

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/ast/ReferenceExpression;->isArrayConstructorReference()Z

    move-result v2

    if-nez v2, :cond_e

    iget v2, v8, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceStart:I

    iget v4, v8, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceEnd:I

    invoke-virtual {v1, v9, v2, v4}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->capture(Lorg/eclipse/jdt/internal/compiler/lookup/Scope;II)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v2

    iput-object v2, v8, Lorg/eclipse/jdt/internal/compiler/ast/ReferenceExpression;->receiverType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    :cond_e
    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isRawType()Z

    move-result v2

    if-nez v2, :cond_10

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/ast/ReferenceExpression;->isMethodReference()Z

    move-result v2

    if-eqz v2, :cond_f

    iget-object v2, v8, Lorg/eclipse/jdt/internal/compiler/ast/ReferenceExpression;->selector:[C

    invoke-virtual {v9, v1, v2, p0}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->getExactMethod(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;[CLorg/eclipse/jdt/internal/compiler/lookup/InvocationSite;)Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    move-result-object v2

    goto :goto_4

    :cond_f
    invoke-virtual {v9, v1, p0}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->getExactConstructor(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/InvocationSite;)Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    move-result-object v2

    :goto_4
    iput-object v2, v8, Lorg/eclipse/jdt/internal/compiler/ast/ReferenceExpression;->exactMethodBinding:Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    iput-object v2, v8, Lorg/eclipse/jdt/internal/compiler/ast/FunctionalExpression;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    :cond_10
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/ast/ReferenceExpression;->isConstructorReference()Z

    move-result v2

    if-eqz v2, :cond_11

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->canBeInstantiated()Z

    move-result v2

    if-nez v2, :cond_11

    invoke-virtual/range {p1 .. p1}, Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object v0

    iget-object v2, v8, Lorg/eclipse/jdt/internal/compiler/ast/ReferenceExpression;->lhs:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    invoke-virtual {v0, v2, v1}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->cannotInstantiate(Lorg/eclipse/jdt/internal/compiler/ast/Expression;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)V

    iput-object v11, v8, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->resolvedType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    return-object v11

    :cond_11
    iget-object v2, v8, Lorg/eclipse/jdt/internal/compiler/ast/ReferenceExpression;->lhs:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    instance-of v4, v2, Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    if-eqz v4, :cond_12

    check-cast v2, Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    sget-object v4, Lorg/eclipse/jdt/internal/compiler/ast/TypeReference$AnnotationPosition;->ANY:Lorg/eclipse/jdt/internal/compiler/ast/TypeReference$AnnotationPosition;

    invoke-virtual {v2, v4}, Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;->hasNullTypeAnnotation(Lorg/eclipse/jdt/internal/compiler/ast/TypeReference$AnnotationPosition;)Z

    move-result v2

    if-eqz v2, :cond_12

    invoke-virtual/range {p1 .. p1}, Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object v2

    iget-object v4, v8, Lorg/eclipse/jdt/internal/compiler/ast/ReferenceExpression;->lhs:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    check-cast v4, Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    invoke-virtual {v2, v4}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->nullAnnotationUnsupportedLocation(Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;)V

    :cond_12
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/ast/ReferenceExpression;->isConstructorReference()Z

    move-result v2

    if-eqz v2, :cond_15

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isArrayType()Z

    move-result v2

    if-eqz v2, :cond_15

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->leafComponentType()Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v2

    invoke-virtual {v2}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isReifiable()Z

    move-result v4

    if-nez v4, :cond_13

    invoke-virtual/range {p1 .. p1}, Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object v0

    invoke-virtual {v0, v2, p0}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->illegalGenericArray(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;)V

    iput-object v11, v8, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->resolvedType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    return-object v11

    :cond_13
    iget-object v2, v8, Lorg/eclipse/jdt/internal/compiler/ast/ReferenceExpression;->typeArguments:[Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    if-eqz v2, :cond_14

    invoke-virtual/range {p1 .. p1}, Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object v0

    iget-object v1, v8, Lorg/eclipse/jdt/internal/compiler/ast/ReferenceExpression;->typeArguments:[Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    invoke-virtual {v0, v1}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->invalidTypeArguments([Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;)V

    iput-object v11, v8, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->resolvedType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    return-object v11

    :cond_14
    invoke-virtual {v9, v1, p0}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->getExactConstructor(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/InvocationSite;)Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    move-result-object v2

    iput-object v2, v8, Lorg/eclipse/jdt/internal/compiler/ast/ReferenceExpression;->exactMethodBinding:Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    iput-object v2, v8, Lorg/eclipse/jdt/internal/compiler/ast/FunctionalExpression;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    :cond_15
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/ast/ReferenceExpression;->isMethodReference()Z

    move-result v2

    if-eqz v2, :cond_16

    iget-boolean v2, v8, Lorg/eclipse/jdt/internal/compiler/ast/ReferenceExpression;->haveReceiver:Z

    if-eqz v2, :cond_16

    iget-object v2, v8, Lorg/eclipse/jdt/internal/compiler/ast/ReferenceExpression;->original:Lorg/eclipse/jdt/internal/compiler/ast/ReferenceExpression;

    if-ne v2, v8, :cond_16

    new-instance v2, Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, " rec_"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v5, v8, Lorg/eclipse/jdt/internal/compiler/ast/ReferenceExpression;->nameSourceStart:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toCharArray()[C

    move-result-object v4

    iget-object v5, v8, Lorg/eclipse/jdt/internal/compiler/ast/ReferenceExpression;->lhs:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    iget-object v5, v5, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->resolvedType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-direct {v2, v4, v5, v3, v3}, Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;-><init>([CLorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;IZ)V

    iput-object v2, v8, Lorg/eclipse/jdt/internal/compiler/ast/ReferenceExpression;->receiverVariable:Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;

    invoke-virtual {v9, v2}, Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;->addLocalVariable(Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;)V

    iget-object v2, v8, Lorg/eclipse/jdt/internal/compiler/ast/ReferenceExpression;->receiverVariable:Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;

    sget-object v4, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->NotAConstant:Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    invoke-virtual {v2, v4}, Lorg/eclipse/jdt/internal/compiler/lookup/VariableBinding;->setConstant(Lorg/eclipse/jdt/internal/compiler/impl/Constant;)V

    iget-object v2, v8, Lorg/eclipse/jdt/internal/compiler/ast/ReferenceExpression;->receiverVariable:Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;

    iput v10, v2, Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;->useFlag:I

    :cond_16
    iget-object v2, v8, Lorg/eclipse/jdt/internal/compiler/ast/FunctionalExpression;->expectedType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    if-nez v2, :cond_1b

    iget-object v2, v8, Lorg/eclipse/jdt/internal/compiler/ast/FunctionalExpression;->expressionContext:Lorg/eclipse/jdt/internal/compiler/ast/ExpressionContext;

    sget-object v4, Lorg/eclipse/jdt/internal/compiler/ast/ExpressionContext;->INVOCATION_CONTEXT:Lorg/eclipse/jdt/internal/compiler/ast/ExpressionContext;

    if-ne v2, v4, :cond_1b

    iget-boolean v0, v0, Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;->isAnnotationBasedNullAnalysisEnabled:Z

    if-eqz v0, :cond_17

    iget-object v0, v8, Lorg/eclipse/jdt/internal/compiler/ast/FunctionalExpression;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    if-eqz v0, :cond_17

    invoke-static {v0, v9}, Lorg/eclipse/jdt/internal/compiler/lookup/ImplicitNullAnnotationVerifier;->ensureNullnessIsKnown(Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;Lorg/eclipse/jdt/internal/compiler/lookup/Scope;)V

    :cond_17
    new-instance v0, Lorg/eclipse/jdt/internal/compiler/lookup/PolyTypeBinding;

    invoke-direct {v0, p0}, Lorg/eclipse/jdt/internal/compiler/lookup/PolyTypeBinding;-><init>(Lorg/eclipse/jdt/internal/compiler/ast/Expression;)V

    return-object v0

    :cond_18
    :goto_5
    iput-object v11, v8, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->resolvedType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    return-object v11

    :cond_19
    :goto_6
    iput-object v11, v8, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->resolvedType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    return-object v11

    :cond_1a
    iget-object v0, v8, Lorg/eclipse/jdt/internal/compiler/ast/ReferenceExpression;->lhs:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    iget-object v1, v0, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->resolvedType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    iget-boolean v0, v8, Lorg/eclipse/jdt/internal/compiler/ast/ReferenceExpression;->typeArgumentsHaveErrors:Z

    if-nez v0, :cond_45

    if-nez v1, :cond_1b

    goto/16 :goto_12

    :cond_1b
    invoke-super/range {p0 .. p1}, Lorg/eclipse/jdt/internal/compiler/ast/FunctionalExpression;->resolveType(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    iget-object v0, v8, Lorg/eclipse/jdt/internal/compiler/ast/FunctionalExpression;->descriptor:Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    if-eqz v0, :cond_44

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->isValidBinding()Z

    move-result v0

    if-nez v0, :cond_1c

    goto/16 :goto_11

    :cond_1c
    invoke-direct {p0}, Lorg/eclipse/jdt/internal/compiler/ast/ReferenceExpression;->descriptorParametersAsArgumentExpressions()[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v5

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isBaseType()Z

    move-result v0

    if-eqz v0, :cond_1d

    invoke-virtual/range {p1 .. p1}, Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object v0

    iget-object v2, v8, Lorg/eclipse/jdt/internal/compiler/ast/ReferenceExpression;->lhs:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    iget-object v3, v8, Lorg/eclipse/jdt/internal/compiler/ast/ReferenceExpression;->selector:[C

    invoke-virtual {v0, v2, v1, v3, v5}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->errorNoMethodFor(Lorg/eclipse/jdt/internal/compiler/ast/Expression;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;[C[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)V

    iput-object v11, v8, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->resolvedType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    return-object v11

    :cond_1d
    array-length v0, v5

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/ast/ReferenceExpression;->isConstructorReference()Z

    move-result v2

    const/4 v12, 0x6

    if-eqz v2, :cond_21

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isArrayType()Z

    move-result v2

    if-eqz v2, :cond_21

    if-ne v0, v10, :cond_20

    aget-object v0, v5, v3

    sget-object v2, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->INT:Lorg/eclipse/jdt/internal/compiler/lookup/BaseTypeBinding;

    invoke-virtual {v9, v0, v2}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->parameterCompatibilityLevel(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)I

    move-result v0

    const/4 v2, -0x1

    if-ne v0, v2, :cond_1e

    goto :goto_7

    :cond_1e
    iget-object v0, v8, Lorg/eclipse/jdt/internal/compiler/ast/FunctionalExpression;->descriptor:Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    iget-object v0, v0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->returnType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-virtual {v0, v10}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isProperType(Z)Z

    move-result v0

    if-eqz v0, :cond_1f

    iget-object v0, v8, Lorg/eclipse/jdt/internal/compiler/ast/FunctionalExpression;->descriptor:Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    iget-object v0, v0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->returnType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-virtual {v1, v0}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isCompatibleWith(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Z

    move-result v0

    if-nez v0, :cond_1f

    iget-object v0, v8, Lorg/eclipse/jdt/internal/compiler/ast/FunctionalExpression;->descriptor:Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    iget-object v0, v0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->returnType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    iget v0, v0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->id:I

    if-eq v0, v12, :cond_1f

    invoke-virtual/range {p1 .. p1}, Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object v0

    iget-object v2, v8, Lorg/eclipse/jdt/internal/compiler/ast/FunctionalExpression;->descriptor:Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    iget-object v2, v2, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->returnType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-virtual {v0, p0, v1, v2}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->constructedArrayIncompatible(Lorg/eclipse/jdt/internal/compiler/ast/ReferenceExpression;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)V

    iput-object v11, v8, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->resolvedType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    return-object v11

    :cond_1f
    invoke-virtual/range {p0 .. p1}, Lorg/eclipse/jdt/internal/compiler/ast/ReferenceExpression;->checkNullAnnotations(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;)V

    iget-object v0, v8, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->resolvedType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    return-object v0

    :cond_20
    :goto_7
    invoke-virtual/range {p1 .. p1}, Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object v0

    invoke-virtual {v0, p0, v1, v5}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->invalidArrayConstructorReference(Lorg/eclipse/jdt/internal/compiler/ast/ReferenceExpression;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)V

    iput-object v11, v8, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->resolvedType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    return-object v11

    :cond_21
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/ast/ReferenceExpression;->isMethodReference()Z

    move-result v1

    iput v3, v8, Lorg/eclipse/jdt/internal/compiler/ast/ReferenceExpression;->depth:I

    iput-object v5, v8, Lorg/eclipse/jdt/internal/compiler/ast/ReferenceExpression;->freeParameters:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    if-eqz v1, :cond_22

    iget-object v2, v8, Lorg/eclipse/jdt/internal/compiler/ast/ReferenceExpression;->receiverType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    iget-object v4, v8, Lorg/eclipse/jdt/internal/compiler/ast/ReferenceExpression;->selector:[C

    invoke-virtual {v9, v2, v4, v5, p0}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->getMethod(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;[C[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/InvocationSite;)Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    move-result-object v2

    goto :goto_9

    :cond_22
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/ast/FunctionalExpression;->argumentsTypeElided()Z

    move-result v2

    if-eqz v2, :cond_23

    iget-object v2, v8, Lorg/eclipse/jdt/internal/compiler/ast/ReferenceExpression;->receiverType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-virtual {v2}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isRawType()Z

    move-result v2

    if-eqz v2, :cond_23

    new-array v2, v10, [Z

    iget-object v4, v8, Lorg/eclipse/jdt/internal/compiler/ast/ReferenceExpression;->receiverType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    iget-object v6, v8, Lorg/eclipse/jdt/internal/compiler/ast/FunctionalExpression;->descriptor:Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    iget-object v6, v6, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->parameters:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-static {v9, p0, v4, v6, v2}, Lorg/eclipse/jdt/internal/compiler/ast/AllocationExpression;->inferDiamondConstructor(Lorg/eclipse/jdt/internal/compiler/lookup/Scope;Lorg/eclipse/jdt/internal/compiler/lookup/InvocationSite;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;[Z)Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    move-result-object v2

    goto :goto_8

    :cond_23
    move-object v2, v11

    :goto_8
    if-nez v2, :cond_24

    iget-object v2, v8, Lorg/eclipse/jdt/internal/compiler/ast/ReferenceExpression;->receiverType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    check-cast v2, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    invoke-virtual {v9, v2, v5, p0}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->getConstructor(Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/InvocationSite;)Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    move-result-object v2

    :cond_24
    :goto_9
    iget v4, v8, Lorg/eclipse/jdt/internal/compiler/ast/ReferenceExpression;->depth:I

    if-eqz v2, :cond_26

    invoke-virtual {v2}, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->isValidBinding()Z

    move-result v6

    if-eqz v6, :cond_26

    invoke-virtual {v2}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->isStatic()Z

    move-result v6

    if-eqz v6, :cond_26

    iget-boolean v6, v8, Lorg/eclipse/jdt/internal/compiler/ast/ReferenceExpression;->haveReceiver:Z

    if-nez v6, :cond_25

    iget-object v6, v8, Lorg/eclipse/jdt/internal/compiler/ast/ReferenceExpression;->receiverType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-virtual {v6}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isParameterizedTypeWithActualArguments()Z

    move-result v6

    if-eqz v6, :cond_26

    :cond_25
    invoke-virtual/range {p1 .. p1}, Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object v0

    invoke-virtual {v0, p0, v2}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->methodMustBeAccessedStatically(Lorg/eclipse/jdt/internal/compiler/ast/ReferenceExpression;Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;)V

    iput-object v11, v8, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->resolvedType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    return-object v11

    :cond_26
    iget-object v6, v8, Lorg/eclipse/jdt/internal/compiler/ast/ReferenceExpression;->lhs:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    invoke-virtual {v6}, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->isSuper()Z

    move-result v6

    if-eqz v6, :cond_27

    iget-object v6, v8, Lorg/eclipse/jdt/internal/compiler/ast/ReferenceExpression;->lhs:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    iget-object v6, v6, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->resolvedType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-virtual {v6}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isInterface()Z

    move-result v6

    if-eqz v6, :cond_27

    iget-object v6, v8, Lorg/eclipse/jdt/internal/compiler/ast/ReferenceExpression;->selector:[C

    iget-object v7, v8, Lorg/eclipse/jdt/internal/compiler/ast/FunctionalExpression;->descriptor:Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    iget-object v7, v7, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->parameters:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-virtual {v9, v6, v2, v7, p0}, Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;->checkAppropriateMethodAgainstSupers([CLorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/InvocationSite;)V

    :cond_27
    iput-boolean v3, v8, Lorg/eclipse/jdt/internal/compiler/ast/ReferenceExpression;->receiverPrecedesParameters:Z

    iget-boolean v6, v8, Lorg/eclipse/jdt/internal/compiler/ast/ReferenceExpression;->haveReceiver:Z

    if-nez v6, :cond_2a

    if-eqz v1, :cond_2a

    if-lez v0, :cond_2a

    aget-object v1, v5, v3

    iget-object v6, v8, Lorg/eclipse/jdt/internal/compiler/ast/ReferenceExpression;->receiverType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-virtual {v1, v6, v9}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isCompatibleWith(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/Scope;)Z

    move-result v6

    if-eqz v6, :cond_2a

    iget-object v6, v8, Lorg/eclipse/jdt/internal/compiler/ast/ReferenceExpression;->receiverType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-virtual {v6}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isRawType()Z

    move-result v7

    if-eqz v7, :cond_28

    iget-object v7, v8, Lorg/eclipse/jdt/internal/compiler/ast/ReferenceExpression;->receiverType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-virtual {v1, v7}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->findSuperTypeOriginatingFrom(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v1

    if-eqz v1, :cond_28

    iget v6, v8, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceStart:I

    iget v7, v8, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceEnd:I

    invoke-virtual {v1, v9, v6, v7}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->capture(Lorg/eclipse/jdt/internal/compiler/lookup/Scope;II)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v6

    :cond_28
    sget-object v1, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->NO_PARAMETERS:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    if-le v0, v10, :cond_29

    sub-int/2addr v0, v10

    new-array v1, v0, [Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-static {v5, v10, v1, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_29
    iput v3, v8, Lorg/eclipse/jdt/internal/compiler/ast/ReferenceExpression;->depth:I

    iput-object v1, v8, Lorg/eclipse/jdt/internal/compiler/ast/ReferenceExpression;->freeParameters:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    iget-object v0, v8, Lorg/eclipse/jdt/internal/compiler/ast/ReferenceExpression;->selector:[C

    invoke-virtual {v9, v6, v0, v1, p0}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->getMethod(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;[C[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/InvocationSite;)Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    move-result-object v0

    iget v1, v8, Lorg/eclipse/jdt/internal/compiler/ast/ReferenceExpression;->depth:I

    iput v3, v8, Lorg/eclipse/jdt/internal/compiler/ast/ReferenceExpression;->depth:I

    goto :goto_a

    :cond_2a
    move v1, v3

    move-object v0, v11

    :goto_a
    if-eqz v2, :cond_2b

    invoke-virtual {v2}, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->isValidBinding()Z

    move-result v6

    if-eqz v6, :cond_2b

    invoke-virtual {v2}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->isStatic()Z

    move-result v6

    if-eqz v6, :cond_2b

    if-eqz v0, :cond_2b

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->isValidBinding()Z

    move-result v6

    if-eqz v6, :cond_2b

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->isStatic()Z

    move-result v6

    if-nez v6, :cond_2b

    invoke-virtual/range {p1 .. p1}, Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object v1

    invoke-virtual {v1, p0, v0, v2}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->methodReferenceSwingsBothWays(Lorg/eclipse/jdt/internal/compiler/ast/ReferenceExpression;Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;)V

    iput-object v11, v8, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->resolvedType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    return-object v11

    :cond_2b
    if-eqz v2, :cond_2e

    invoke-virtual {v2}, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->isValidBinding()Z

    move-result v6

    if-eqz v6, :cond_2e

    if-eqz v0, :cond_2c

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->isValidBinding()Z

    move-result v6

    if-eqz v6, :cond_2c

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->isStatic()Z

    move-result v6

    if-eqz v6, :cond_2e

    :cond_2c
    iput-object v2, v8, Lorg/eclipse/jdt/internal/compiler/ast/FunctionalExpression;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    iget v0, v8, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->bits:I

    and-int/lit16 v0, v0, -0x1fe1

    iput v0, v8, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->bits:I

    if-lez v4, :cond_2d

    and-int/lit16 v1, v4, 0xff

    shl-int/lit8 v1, v1, 0x5

    or-int/2addr v0, v1

    iput v0, v8, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->bits:I

    :cond_2d
    iget-boolean v0, v8, Lorg/eclipse/jdt/internal/compiler/ast/ReferenceExpression;->haveReceiver:Z

    if-nez v0, :cond_32

    invoke-virtual {v2}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->isStatic()Z

    move-result v0

    if-nez v0, :cond_32

    invoke-virtual {v2}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->isConstructor()Z

    move-result v0

    if-nez v0, :cond_32

    invoke-virtual/range {p1 .. p1}, Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object v0

    invoke-virtual {v0, p0, v2}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->methodMustBeAccessedWithInstance(Lorg/eclipse/jdt/internal/compiler/ast/ReferenceExpression;Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;)V

    iput-object v11, v8, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->resolvedType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    return-object v11

    :cond_2e
    if-eqz v0, :cond_31

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->isValidBinding()Z

    move-result v4

    if-eqz v4, :cond_31

    if-eqz v2, :cond_2f

    invoke-virtual {v2}, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->isValidBinding()Z

    move-result v4

    if-eqz v4, :cond_2f

    invoke-virtual {v2}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->isStatic()Z

    move-result v2

    if-nez v2, :cond_31

    :cond_2f
    iput-object v0, v8, Lorg/eclipse/jdt/internal/compiler/ast/FunctionalExpression;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    iput-boolean v10, v8, Lorg/eclipse/jdt/internal/compiler/ast/ReferenceExpression;->receiverPrecedesParameters:Z

    iget v2, v8, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->bits:I

    and-int/lit16 v2, v2, -0x1fe1

    iput v2, v8, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->bits:I

    if-lez v1, :cond_30

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x5

    or-int/2addr v1, v2

    iput v1, v8, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->bits:I

    :cond_30
    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->isStatic()Z

    move-result v1

    if-eqz v1, :cond_32

    invoke-virtual/range {p1 .. p1}, Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object v1

    invoke-virtual {v1, p0, v0}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->methodMustBeAccessedStatically(Lorg/eclipse/jdt/internal/compiler/ast/ReferenceExpression;Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;)V

    iput-object v11, v8, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->resolvedType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    return-object v11

    :cond_31
    iput-object v11, v8, Lorg/eclipse/jdt/internal/compiler/ast/FunctionalExpression;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    iget v0, v8, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->bits:I

    and-int/lit16 v0, v0, -0x1fe1

    iput v0, v8, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->bits:I

    :cond_32
    iget-object v0, v8, Lorg/eclipse/jdt/internal/compiler/ast/FunctionalExpression;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    if-nez v0, :cond_34

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/ast/ReferenceExpression;->isConstructorReference()Z

    move-result v0

    if-eqz v0, :cond_33

    iget-object v0, v8, Lorg/eclipse/jdt/internal/compiler/ast/ReferenceExpression;->receiverType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->sourceName()[C

    move-result-object v0

    goto :goto_b

    :cond_33
    iget-object v0, v8, Lorg/eclipse/jdt/internal/compiler/ast/ReferenceExpression;->selector:[C

    :goto_b
    invoke-virtual/range {p1 .. p1}, Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object v1

    iget-object v2, v8, Lorg/eclipse/jdt/internal/compiler/ast/ReferenceExpression;->receiverType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-virtual {v1, p0, v2, v0, v5}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->danglingReference(Lorg/eclipse/jdt/internal/compiler/ast/ReferenceExpression;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;[C[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)V

    iput-object v11, v8, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->resolvedType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    return-object v11

    :cond_34
    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->isAbstract()Z

    move-result v0

    if-eqz v0, :cond_35

    iget-object v0, v8, Lorg/eclipse/jdt/internal/compiler/ast/ReferenceExpression;->lhs:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->isSuper()Z

    move-result v0

    if-eqz v0, :cond_35

    invoke-virtual/range {p1 .. p1}, Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object v0

    iget-object v1, v8, Lorg/eclipse/jdt/internal/compiler/ast/FunctionalExpression;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    invoke-virtual {v0, p0, v1}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->cannotDireclyInvokeAbstractMethod(Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;)V

    :cond_35
    iget-object v0, v8, Lorg/eclipse/jdt/internal/compiler/ast/FunctionalExpression;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->isStatic()Z

    move-result v0

    if-eqz v0, :cond_36

    iget-object v0, v8, Lorg/eclipse/jdt/internal/compiler/ast/FunctionalExpression;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    iget-object v0, v0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->declaringClass:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    iget-object v1, v8, Lorg/eclipse/jdt/internal/compiler/ast/ReferenceExpression;->receiverType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-static {v0, v1}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->notEquals(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Z

    move-result v0

    if-eqz v0, :cond_37

    invoke-virtual/range {p1 .. p1}, Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object v0

    iget-object v1, v8, Lorg/eclipse/jdt/internal/compiler/ast/FunctionalExpression;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    invoke-virtual {v0, p0, v1}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->indirectAccessToStaticMethod(Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;)V

    goto :goto_c

    :cond_36
    iget-object v0, v8, Lorg/eclipse/jdt/internal/compiler/ast/FunctionalExpression;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->sourceMethod()Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;

    move-result-object v0

    if-eqz v0, :cond_37

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->isMethod()Z

    move-result v1

    if-eqz v1, :cond_37

    iget v1, v0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->bits:I

    and-int/lit16 v1, v1, -0x101

    iput v1, v0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->bits:I

    :cond_37
    :goto_c
    iget-object v0, v8, Lorg/eclipse/jdt/internal/compiler/ast/FunctionalExpression;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    invoke-virtual {p0, v0, v9, v10, p0}, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->isMethodUseDeprecated(Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;Lorg/eclipse/jdt/internal/compiler/lookup/Scope;ZLorg/eclipse/jdt/internal/compiler/lookup/InvocationSite;)Z

    move-result v0

    if-eqz v0, :cond_38

    invoke-virtual/range {p1 .. p1}, Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object v0

    iget-object v1, v8, Lorg/eclipse/jdt/internal/compiler/ast/FunctionalExpression;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    invoke-virtual {v0, v1, p0}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->deprecatedMethod(Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;)V

    :cond_38
    iget-object v0, v8, Lorg/eclipse/jdt/internal/compiler/ast/ReferenceExpression;->typeArguments:[Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    if-eqz v0, :cond_39

    iget-object v0, v8, Lorg/eclipse/jdt/internal/compiler/ast/FunctionalExpression;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->original()Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    move-result-object v0

    iget-object v0, v0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->typeVariables:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;

    sget-object v1, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->NO_TYPE_VARIABLES:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;

    if-ne v0, v1, :cond_39

    invoke-virtual/range {p1 .. p1}, Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object v0

    iget-object v1, v8, Lorg/eclipse/jdt/internal/compiler/ast/FunctionalExpression;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    iget-object v2, v8, Lorg/eclipse/jdt/internal/compiler/ast/ReferenceExpression;->resolvedTypeArguments:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    iget-object v4, v8, Lorg/eclipse/jdt/internal/compiler/ast/ReferenceExpression;->typeArguments:[Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    invoke-virtual {v0, v1, v2, v4}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->unnecessaryTypeArgumentsForMethodInvocation(Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;[Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;)V

    :cond_39
    iget-object v0, v8, Lorg/eclipse/jdt/internal/compiler/ast/FunctionalExpression;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    iget-wide v0, v0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->tagBits:J

    const-wide/16 v6, 0x80

    and-long/2addr v0, v6

    const-wide/16 v6, 0x0

    cmp-long v0, v0, v6

    if-eqz v0, :cond_3a

    invoke-virtual/range {p1 .. p1}, Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object v0

    iget-object v1, v8, Lorg/eclipse/jdt/internal/compiler/ast/FunctionalExpression;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    invoke-virtual {v0, p0, v1}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->missingTypeInMethod(Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;)V

    :cond_3a
    iget-object v0, v8, Lorg/eclipse/jdt/internal/compiler/ast/FunctionalExpression;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    iget-object v0, v0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->thrownExceptions:[Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    iget-object v1, v8, Lorg/eclipse/jdt/internal/compiler/ast/FunctionalExpression;->descriptor:Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    iget-object v1, v1, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->thrownExceptions:[Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    array-length v2, v0

    move v4, v3

    :goto_d
    if-lt v4, v2, :cond_40

    invoke-virtual/range {p0 .. p1}, Lorg/eclipse/jdt/internal/compiler/ast/ReferenceExpression;->checkNullAnnotations(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;)V

    iput-object v11, v8, Lorg/eclipse/jdt/internal/compiler/ast/ReferenceExpression;->freeParameters:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    iget-object v2, v8, Lorg/eclipse/jdt/internal/compiler/ast/ReferenceExpression;->receiverType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    iget-object v3, v8, Lorg/eclipse/jdt/internal/compiler/ast/FunctionalExpression;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v1, 0x0

    move-object/from16 v0, p1

    move-object v7, p0

    invoke-static/range {v0 .. v7}, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->checkInvocationArguments(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;Lorg/eclipse/jdt/internal/compiler/ast/Expression;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;[Lorg/eclipse/jdt/internal/compiler/ast/Expression;[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;ZLorg/eclipse/jdt/internal/compiler/lookup/InvocationSite;)Z

    move-result v0

    const/high16 v1, 0x10000

    if-eqz v0, :cond_3b

    iget v0, v8, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->bits:I

    or-int/2addr v0, v1

    iput v0, v8, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->bits:I

    :cond_3b
    iget-object v0, v8, Lorg/eclipse/jdt/internal/compiler/ast/FunctionalExpression;->descriptor:Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    iget-object v0, v0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->returnType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    iget v0, v0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->id:I

    if-eq v0, v12, :cond_3f

    iget-object v0, v8, Lorg/eclipse/jdt/internal/compiler/ast/FunctionalExpression;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->isConstructor()Z

    move-result v0

    if-eqz v0, :cond_3c

    iget-object v0, v8, Lorg/eclipse/jdt/internal/compiler/ast/ReferenceExpression;->receiverType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    goto :goto_e

    :cond_3c
    iget v0, v8, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->bits:I

    and-int/2addr v0, v1

    if-eqz v0, :cond_3d

    iget-object v0, v8, Lorg/eclipse/jdt/internal/compiler/ast/ReferenceExpression;->resolvedTypeArguments:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    if-nez v0, :cond_3d

    iget-object v0, v8, Lorg/eclipse/jdt/internal/compiler/ast/FunctionalExpression;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    iget-object v0, v0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->returnType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    if-eqz v0, :cond_3e

    invoke-virtual/range {p1 .. p1}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->environment()Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    move-result-object v1

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->erasure()Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v0

    invoke-virtual {v1, v0, v10}, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->convertToRawType(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Z)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v0

    goto :goto_e

    :cond_3d
    iget-object v0, v8, Lorg/eclipse/jdt/internal/compiler/ast/FunctionalExpression;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    iget-object v0, v0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->returnType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    if-eqz v0, :cond_3e

    iget v1, v8, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceStart:I

    iget v2, v8, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceEnd:I

    invoke-virtual {v0, v9, v1, v2}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->capture(Lorg/eclipse/jdt/internal/compiler/lookup/Scope;II)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v0

    :cond_3e
    :goto_e
    iget-object v1, v8, Lorg/eclipse/jdt/internal/compiler/ast/FunctionalExpression;->descriptor:Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    iget-object v1, v1, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->returnType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-virtual {v1, v10}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isProperType(Z)Z

    move-result v1

    if-eqz v1, :cond_3f

    iget-object v1, v8, Lorg/eclipse/jdt/internal/compiler/ast/FunctionalExpression;->descriptor:Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    iget-object v1, v1, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->returnType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-virtual {v0, v1, v9}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isCompatibleWith(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/Scope;)Z

    move-result v1

    if-nez v1, :cond_3f

    iget-object v1, v8, Lorg/eclipse/jdt/internal/compiler/ast/FunctionalExpression;->descriptor:Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    iget-object v1, v1, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->returnType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-virtual {p0, v0, v1, p0, v9}, Lorg/eclipse/jdt/internal/compiler/ast/Statement;->isBoxingCompatible(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/ast/Expression;Lorg/eclipse/jdt/internal/compiler/lookup/Scope;)Z

    move-result v0

    if-nez v0, :cond_3f

    invoke-virtual/range {p1 .. p1}, Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object v0

    iget-object v1, v8, Lorg/eclipse/jdt/internal/compiler/ast/FunctionalExpression;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    iget-object v2, v8, Lorg/eclipse/jdt/internal/compiler/ast/FunctionalExpression;->descriptor:Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    iget-object v2, v2, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->returnType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-virtual {v0, p0, v1, v2}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->incompatibleReturnType(Lorg/eclipse/jdt/internal/compiler/ast/ReferenceExpression;Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)V

    iput-object v11, v8, Lorg/eclipse/jdt/internal/compiler/ast/FunctionalExpression;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    iput-object v11, v8, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->resolvedType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    :cond_3f
    iget-object v0, v8, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->resolvedType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    return-object v0

    :cond_40
    aget-object v6, v0, v4

    invoke-virtual {v6, v3}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isUncheckedException(Z)Z

    move-result v6

    if-eqz v6, :cond_41

    goto :goto_10

    :cond_41
    array-length v6, v1

    move v7, v3

    :goto_f
    if-lt v7, v6, :cond_42

    invoke-virtual/range {p1 .. p1}, Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object v6

    aget-object v7, v0, v4

    invoke-virtual {v6, v7, p0}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->unhandledException(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/ast/ReferenceExpression;)V

    goto :goto_10

    :cond_42
    aget-object v13, v0, v4

    aget-object v14, v1, v7

    invoke-virtual {v13, v14, v9}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isCompatibleWith(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/Scope;)Z

    move-result v13

    if-eqz v13, :cond_43

    :goto_10
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_d

    :cond_43
    add-int/lit8 v7, v7, 0x1

    goto :goto_f

    :cond_44
    :goto_11
    iput-object v11, v8, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->resolvedType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    return-object v11

    :cond_45
    :goto_12
    iput-object v11, v8, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->resolvedType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    return-object v11
.end method

.method public sIsMoreSpecific(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/Scope;)Z
    .locals 7

    invoke-super {p0, p1, p2, p3}, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->sIsMoreSpecific(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/Scope;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/ReferenceExpression;->exactMethodBinding:Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    const/4 v2, 0x0

    if-eqz v0, :cond_a

    invoke-virtual {p2, p1}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->findSuperTypeOriginatingFrom(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v0

    if-eqz v0, :cond_1

    goto/16 :goto_1

    :cond_1
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/FunctionalExpression;->enclosingScope:Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;

    iget v3, p0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceStart:I

    iget v4, p0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceEnd:I

    invoke-virtual {p1, v0, v3, v4}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->capture(Lorg/eclipse/jdt/internal/compiler/lookup/Scope;II)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object p1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/FunctionalExpression;->enclosingScope:Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;

    invoke-virtual {p1, v0, v1}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->getSingleAbstractMethod(Lorg/eclipse/jdt/internal/compiler/lookup/Scope;Z)Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    move-result-object p1

    if-eqz p1, :cond_a

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->isValidBinding()Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_1

    :cond_2
    iget-object v0, p1, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->returnType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    iget-object v3, p0, Lorg/eclipse/jdt/internal/compiler/ast/FunctionalExpression;->enclosingScope:Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;

    invoke-virtual {p2, v3, v1}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->getSingleAbstractMethod(Lorg/eclipse/jdt/internal/compiler/lookup/Scope;Z)Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    move-result-object p2

    if-eqz p2, :cond_a

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->isValidBinding()Z

    move-result v3

    if-nez v3, :cond_3

    goto :goto_1

    :cond_3
    iget-object v3, p2, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->returnType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    iget-object p1, p1, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->parameters:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    iget-object p2, p2, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->parameters:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move v4, v2

    :goto_0
    array-length v5, p1

    if-lt v4, v5, :cond_8

    iget p1, v3, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->id:I

    const/4 p2, 0x6

    if-ne p1, p2, :cond_4

    return v1

    :cond_4
    iget p1, v0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->id:I

    if-ne p1, p2, :cond_5

    return v2

    :cond_5
    invoke-virtual {v0, v3, p3}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isCompatibleWith(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/Scope;)Z

    move-result p1

    if-eqz p1, :cond_6

    return v1

    :cond_6
    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isBaseType()Z

    move-result p1

    invoke-virtual {v3}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isBaseType()Z

    move-result p2

    if-eq p1, p2, :cond_7

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isBaseType()Z

    move-result p1

    iget-object p2, p0, Lorg/eclipse/jdt/internal/compiler/ast/ReferenceExpression;->exactMethodBinding:Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    iget-object p2, p2, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->returnType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isBaseType()Z

    move-result p2

    if-ne p1, p2, :cond_7

    return v1

    :cond_7
    return v2

    :cond_8
    aget-object v5, p1, v4

    aget-object v6, p2, v4

    invoke-static {v5, v6}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->notEquals(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Z

    move-result v5

    if-eqz v5, :cond_9

    return v2

    :cond_9
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_a
    :goto_1
    return v2
.end method

.method public setActualReceiverType(Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;)V
    .locals 0

    return-void
.end method

.method public setDepth(I)V
    .locals 0

    iput p1, p0, Lorg/eclipse/jdt/internal/compiler/ast/ReferenceExpression;->depth:I

    return-void
.end method

.method public setFieldIndex(I)V
    .locals 0

    return-void
.end method

.method public traverse(Lorg/eclipse/jdt/internal/compiler/ASTVisitor;Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;)V
    .locals 3

    invoke-virtual {p1, p0, p2}, Lorg/eclipse/jdt/internal/compiler/ASTVisitor;->visit(Lorg/eclipse/jdt/internal/compiler/ast/ReferenceExpression;Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/ReferenceExpression;->lhs:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    invoke-virtual {v0, p1, p2}, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->traverse(Lorg/eclipse/jdt/internal/compiler/ASTVisitor;Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;)V

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/ReferenceExpression;->typeArguments:[Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    array-length v0, v0

    :goto_0
    if-lt v1, v0, :cond_1

    goto :goto_1

    :cond_1
    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/ast/ReferenceExpression;->typeArguments:[Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    aget-object v2, v2, v1

    invoke-virtual {v2, p1, p2}, Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;->traverse(Lorg/eclipse/jdt/internal/compiler/ASTVisitor;Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    invoke-virtual {p1, p0, p2}, Lorg/eclipse/jdt/internal/compiler/ASTVisitor;->endVisit(Lorg/eclipse/jdt/internal/compiler/ast/ReferenceExpression;Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;)V

    return-void
.end method
