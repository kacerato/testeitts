.class public Lorg/eclipse/jdt/internal/compiler/ast/LambdaExpression;
.super Lorg/eclipse/jdt/internal/compiler/ast/FunctionalExpression;
.source "SourceFile"

# interfaces
.implements Lorg/eclipse/jdt/internal/compiler/ast/IPolyExpression;
.implements Lorg/eclipse/jdt/internal/compiler/impl/ReferenceContext;
.implements Lorg/eclipse/jdt/internal/compiler/problem/ProblemSeverities;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/eclipse/jdt/internal/compiler/ast/LambdaExpression$CompatibilityResult;,
        Lorg/eclipse/jdt/internal/compiler/ast/LambdaExpression$CopyFailureException;,
        Lorg/eclipse/jdt/internal/compiler/ast/LambdaExpression$LocalTypeSubstitutor;
    }
.end annotation


# static fields
.field private static final NO_BODY:Lorg/eclipse/jdt/internal/compiler/ast/Block;

.field private static final NO_SYNTHETIC_ARGUMENTS:[Lorg/eclipse/jdt/internal/compiler/lookup/SyntheticArgumentBinding;


# instance fields
.field private argumentTypes:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

.field public arguments:[Lorg/eclipse/jdt/internal/compiler/ast/Argument;

.field public argumentsTypeVar:Z

.field public arrowPosition:I

.field private assistNode:Z

.field public body:Lorg/eclipse/jdt/internal/compiler/ast/Statement;

.field private classType:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

.field private copiesPerTargetType:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;",
            "Lorg/eclipse/jdt/internal/compiler/ast/LambdaExpression;",
            ">;"
        }
    .end annotation
.end field

.field private hasIgnoredMandatoryErrors:Z

.field public hasParentheses:Z

.field public inferenceContext:Lorg/eclipse/jdt/internal/compiler/lookup/InferenceContext18;

.field private localTypes:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lorg/eclipse/jdt/internal/compiler/lookup/LocalTypeBinding;",
            ">;"
        }
    .end annotation
.end field

.field public original:Lorg/eclipse/jdt/internal/compiler/ast/LambdaExpression;

.field public outerLocalVariables:[Lorg/eclipse/jdt/internal/compiler/lookup/SyntheticArgumentBinding;

.field private outerLocalVariablesSlotSize:I

.field private requiresGenericSignature:Z

.field protected resultExpressions:[Lorg/eclipse/jdt/internal/compiler/ast/Expression;

.field returnsValue:Z

.field returnsVoid:Z

.field public scope:Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;

.field public text:[C

.field private thrownExceptions:Ljava/util/Set;

.field valueCompatible:Z

.field voidCompatible:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x0

    new-array v1, v0, [Lorg/eclipse/jdt/internal/compiler/lookup/SyntheticArgumentBinding;

    sput-object v1, Lorg/eclipse/jdt/internal/compiler/ast/LambdaExpression;->NO_SYNTHETIC_ARGUMENTS:[Lorg/eclipse/jdt/internal/compiler/lookup/SyntheticArgumentBinding;

    new-instance v1, Lorg/eclipse/jdt/internal/compiler/ast/Block;

    invoke-direct {v1, v0}, Lorg/eclipse/jdt/internal/compiler/ast/Block;-><init>(I)V

    sput-object v1, Lorg/eclipse/jdt/internal/compiler/ast/LambdaExpression;->NO_BODY:Lorg/eclipse/jdt/internal/compiler/ast/Block;

    return-void
.end method

.method public constructor <init>(Lorg/eclipse/jdt/internal/compiler/CompilationResult;Z)V
    .locals 1

    const/4 v0, 0x0

    .line 14
    invoke-direct {p0, p1, p2, v0}, Lorg/eclipse/jdt/internal/compiler/ast/LambdaExpression;-><init>(Lorg/eclipse/jdt/internal/compiler/CompilationResult;ZZ)V

    return-void
.end method

.method public constructor <init>(Lorg/eclipse/jdt/internal/compiler/CompilationResult;ZZ)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/compiler/ast/FunctionalExpression;-><init>(Lorg/eclipse/jdt/internal/compiler/CompilationResult;)V

    const/4 p1, 0x1

    .line 2
    iput-boolean p1, p0, Lorg/eclipse/jdt/internal/compiler/ast/LambdaExpression;->voidCompatible:Z

    const/4 p1, 0x0

    .line 3
    iput-boolean p1, p0, Lorg/eclipse/jdt/internal/compiler/ast/LambdaExpression;->valueCompatible:Z

    .line 4
    iput-object p0, p0, Lorg/eclipse/jdt/internal/compiler/ast/LambdaExpression;->original:Lorg/eclipse/jdt/internal/compiler/ast/LambdaExpression;

    .line 5
    sget-object v0, Lorg/eclipse/jdt/internal/compiler/ast/LambdaExpression;->NO_SYNTHETIC_ARGUMENTS:[Lorg/eclipse/jdt/internal/compiler/lookup/SyntheticArgumentBinding;

    iput-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/LambdaExpression;->outerLocalVariables:[Lorg/eclipse/jdt/internal/compiler/lookup/SyntheticArgumentBinding;

    .line 6
    iput p1, p0, Lorg/eclipse/jdt/internal/compiler/ast/LambdaExpression;->outerLocalVariablesSlotSize:I

    .line 7
    iput-boolean p1, p0, Lorg/eclipse/jdt/internal/compiler/ast/LambdaExpression;->hasIgnoredMandatoryErrors:Z

    .line 8
    sget-object v0, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->NO_EXPRESSIONS:[Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    iput-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/LambdaExpression;->resultExpressions:[Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    .line 9
    iput-boolean p1, p0, Lorg/eclipse/jdt/internal/compiler/ast/LambdaExpression;->argumentsTypeVar:Z

    .line 10
    iput-boolean p2, p0, Lorg/eclipse/jdt/internal/compiler/ast/LambdaExpression;->assistNode:Z

    .line 11
    iput-boolean p3, p0, Lorg/eclipse/jdt/internal/compiler/ast/LambdaExpression;->requiresGenericSignature:Z

    .line 12
    sget-object p1, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->NO_ARGUMENTS:[Lorg/eclipse/jdt/internal/compiler/ast/Argument;

    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/internal/compiler/ast/LambdaExpression;->setArguments([Lorg/eclipse/jdt/internal/compiler/ast/Argument;)V

    .line 13
    sget-object p1, Lorg/eclipse/jdt/internal/compiler/ast/LambdaExpression;->NO_BODY:Lorg/eclipse/jdt/internal/compiler/ast/Block;

    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/internal/compiler/ast/LambdaExpression;->setBody(Lorg/eclipse/jdt/internal/compiler/ast/Statement;)V

    return-void
.end method

.method private analyzeExceptions()V
    .locals 12

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/LambdaExpression;->scope:Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->compilerOptions()Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;

    move-result-object v0

    iget-boolean v1, v0, Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;->analyseResourceLeaks:Z

    const/4 v2, 0x0

    iput-boolean v2, v0, Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;->analyseResourceLeaks:Z

    :try_start_0
    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/ast/LambdaExpression;->body:Lorg/eclipse/jdt/internal/compiler/ast/Statement;

    iget-object v3, p0, Lorg/eclipse/jdt/internal/compiler/ast/LambdaExpression;->scope:Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;

    new-instance v11, Lorg/eclipse/jdt/internal/compiler/flow/ExceptionInferenceFlowContext;

    sget-object v7, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->NO_EXCEPTIONS:[Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    iget-object v9, p0, Lorg/eclipse/jdt/internal/compiler/ast/LambdaExpression;->scope:Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;

    sget-object v10, Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;->DEAD_END:Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;

    const/4 v5, 0x0

    const/4 v8, 0x0

    move-object v4, v11

    move-object v6, p0

    invoke-direct/range {v4 .. v10}, Lorg/eclipse/jdt/internal/compiler/flow/ExceptionInferenceFlowContext;-><init>(Lorg/eclipse/jdt/internal/compiler/flow/FlowContext;Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;[Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;Lorg/eclipse/jdt/internal/compiler/flow/FlowContext;Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;)V

    iget-object v4, p0, Lorg/eclipse/jdt/internal/compiler/ast/LambdaExpression;->scope:Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;

    invoke-virtual {v4}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->outerMostMethodScope()Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;

    move-result-object v4

    iget v4, v4, Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;->analysisIndex:I

    iget-object v5, p0, Lorg/eclipse/jdt/internal/compiler/ast/LambdaExpression;->scope:Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;

    invoke-virtual {v5}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;->referenceType()Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;

    move-result-object v5

    iget v5, v5, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->maxFieldCount:I

    invoke-static {v4, v5}, Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;->fakeInitializedFlowInfo(II)Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;

    move-result-object v4

    invoke-virtual {v2, v3, v11, v4}, Lorg/eclipse/jdt/internal/compiler/ast/Statement;->analyseCode(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;Lorg/eclipse/jdt/internal/compiler/flow/FlowContext;Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;)Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;

    iget-object v2, v11, Lorg/eclipse/jdt/internal/compiler/flow/ExceptionHandlingFlowContext;->extendedExceptions:Ljava/util/ArrayList;

    if-nez v2, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v2

    goto :goto_0

    :catchall_0
    move-exception v2

    goto :goto_1

    :cond_0
    new-instance v2, Ljava/util/HashSet;

    iget-object v3, v11, Lorg/eclipse/jdt/internal/compiler/flow/ExceptionHandlingFlowContext;->extendedExceptions:Ljava/util/ArrayList;

    invoke-direct {v2, v3}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    :goto_0
    iput-object v2, p0, Lorg/eclipse/jdt/internal/compiler/ast/LambdaExpression;->thrownExceptions:Ljava/util/Set;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catch_0
    iput-boolean v1, v0, Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;->analyseResourceLeaks:Z

    goto :goto_2

    :goto_1
    iput-boolean v1, v0, Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;->analyseResourceLeaks:Z

    throw v2

    :goto_2
    return-void
.end method

.method private analyzeShape()V
    .locals 3

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/LambdaExpression;->body:Lorg/eclipse/jdt/internal/compiler/ast/Statement;

    instance-of v1, v0, Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    check-cast v0, Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->isTrulyExpression()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/LambdaExpression;->assistNode:Z

    if-eqz v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/LambdaExpression;->body:Lorg/eclipse/jdt/internal/compiler/ast/Statement;

    check-cast v0, Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->statementExpression()Z

    move-result v0

    :goto_0
    iput-boolean v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/LambdaExpression;->voidCompatible:Z

    iput-boolean v2, p0, Lorg/eclipse/jdt/internal/compiler/ast/LambdaExpression;->valueCompatible:Z

    goto :goto_1

    :cond_1
    iget-boolean v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/LambdaExpression;->assistNode:Z

    if-eqz v0, :cond_2

    iput-boolean v2, p0, Lorg/eclipse/jdt/internal/compiler/ast/LambdaExpression;->voidCompatible:Z

    iput-boolean v2, p0, Lorg/eclipse/jdt/internal/compiler/ast/LambdaExpression;->valueCompatible:Z

    :cond_2
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/LambdaExpression;->body:Lorg/eclipse/jdt/internal/compiler/ast/Statement;

    new-instance v1, Lorg/eclipse/jdt/internal/compiler/ast/LambdaExpression$1ShapeComputer;

    invoke-direct {v1, p0}, Lorg/eclipse/jdt/internal/compiler/ast/LambdaExpression$1ShapeComputer;-><init>(Lorg/eclipse/jdt/internal/compiler/ast/LambdaExpression;)V

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->traverse(Lorg/eclipse/jdt/internal/compiler/ASTVisitor;Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;)V

    iget-boolean v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/LambdaExpression;->returnsValue:Z

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/LambdaExpression;->returnsVoid:Z

    if-nez v0, :cond_3

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/LambdaExpression;->body:Lorg/eclipse/jdt/internal/compiler/ast/Statement;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/ast/Statement;->doesNotCompleteNormally()Z

    move-result v0

    iput-boolean v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/LambdaExpression;->valueCompatible:Z

    :cond_3
    :goto_1
    return-void
.end method

.method private cachedResolvedCopy(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;ZZLorg/eclipse/jdt/internal/compiler/lookup/InferenceContext18;)Lorg/eclipse/jdt/internal/compiler/ast/LambdaExpression;
    .locals 4

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/FunctionalExpression;->enclosingScope:Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/ast/LambdaExpression;->argumentsTypeElided()Z

    move-result v1

    invoke-direct {p0, v0, p1, p1, v1}, Lorg/eclipse/jdt/internal/compiler/ast/LambdaExpression;->findGroundTargetType(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Z)Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move-result-object p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/ast/FunctionalExpression;->enclosingScope:Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;

    const/4 v2, 0x1

    invoke-virtual {p1, v1, v2}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->getSingleAbstractMethod(Lorg/eclipse/jdt/internal/compiler/lookup/Scope;Z)Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    move-result-object v1

    if-eqz v1, :cond_c

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->isValidBinding()Z

    move-result v3

    if-nez v3, :cond_1

    goto/16 :goto_6

    :cond_1
    iget-object v1, v1, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->parameters:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    array-length v1, v1

    iget-object v3, p0, Lorg/eclipse/jdt/internal/compiler/ast/LambdaExpression;->arguments:[Lorg/eclipse/jdt/internal/compiler/ast/Argument;

    array-length v3, v3

    if-eq v1, v3, :cond_2

    return-object v0

    :cond_2
    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/ast/LambdaExpression;->copiesPerTargetType:Ljava/util/HashMap;

    if-eqz v1, :cond_3

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/eclipse/jdt/internal/compiler/ast/LambdaExpression;

    if-nez v1, :cond_4

    if-eqz p2, :cond_4

    iget-object p2, p0, Lorg/eclipse/jdt/internal/compiler/ast/LambdaExpression;->copiesPerTargetType:Ljava/util/HashMap;

    invoke-virtual {p2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Collection;->size()I

    move-result p2

    if-lez p2, :cond_4

    iget-object p2, p0, Lorg/eclipse/jdt/internal/compiler/ast/LambdaExpression;->copiesPerTargetType:Ljava/util/HashMap;

    invoke-virtual {p2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    move-object v1, p2

    check-cast v1, Lorg/eclipse/jdt/internal/compiler/ast/LambdaExpression;

    goto :goto_0

    :cond_3
    move-object v1, v0

    :cond_4
    :goto_0
    iget-object p2, p0, Lorg/eclipse/jdt/internal/compiler/ast/FunctionalExpression;->enclosingScope:Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object p2

    sget-object v3, Lorg/eclipse/jdt/internal/compiler/ast/FunctionalExpression;->silentErrorHandlingPolicy:Lorg/eclipse/jdt/internal/compiler/IErrorHandlingPolicy;

    invoke-virtual {p2, v3}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemHandler;->switchErrorHandlingPolicy(Lorg/eclipse/jdt/internal/compiler/IErrorHandlingPolicy;)Lorg/eclipse/jdt/internal/compiler/IErrorHandlingPolicy;

    move-result-object p2

    if-nez v1, :cond_9

    :try_start_0
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/ast/LambdaExpression;->copy()Lorg/eclipse/jdt/internal/compiler/ast/LambdaExpression;

    move-result-object v1

    if-eqz v1, :cond_8

    iget-object v3, p0, Lorg/eclipse/jdt/internal/compiler/ast/FunctionalExpression;->expressionContext:Lorg/eclipse/jdt/internal/compiler/ast/ExpressionContext;

    invoke-virtual {v1, v3}, Lorg/eclipse/jdt/internal/compiler/ast/FunctionalExpression;->setExpressionContext(Lorg/eclipse/jdt/internal/compiler/ast/ExpressionContext;)V

    invoke-virtual {v1, p1}, Lorg/eclipse/jdt/internal/compiler/ast/FunctionalExpression;->setExpectedType(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)V

    iput-object p4, v1, Lorg/eclipse/jdt/internal/compiler/ast/LambdaExpression;->inferenceContext:Lorg/eclipse/jdt/internal/compiler/lookup/InferenceContext18;

    iget-object p4, p0, Lorg/eclipse/jdt/internal/compiler/ast/FunctionalExpression;->enclosingScope:Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;

    invoke-virtual {v1, p4, v2}, Lorg/eclipse/jdt/internal/compiler/ast/LambdaExpression;->resolveType(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;Z)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object p4

    if-eqz p4, :cond_7

    invoke-virtual {p4}, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->isValidBinding()Z

    move-result p4

    if-nez p4, :cond_5

    goto :goto_2

    :cond_5
    iget-object p4, p0, Lorg/eclipse/jdt/internal/compiler/ast/LambdaExpression;->copiesPerTargetType:Ljava/util/HashMap;

    if-nez p4, :cond_6

    new-instance p4, Ljava/util/HashMap;

    invoke-direct {p4}, Ljava/util/HashMap;-><init>()V

    iput-object p4, p0, Lorg/eclipse/jdt/internal/compiler/ast/LambdaExpression;->copiesPerTargetType:Ljava/util/HashMap;

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_5

    :cond_6
    :goto_1
    iget-object p4, p0, Lorg/eclipse/jdt/internal/compiler/ast/LambdaExpression;->copiesPerTargetType:Ljava/util/HashMap;

    invoke-virtual {p4, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_3

    :cond_7
    :goto_2
    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/ast/FunctionalExpression;->enclosingScope:Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object p1

    invoke-virtual {p1, p2}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemHandler;->switchErrorHandlingPolicy(Lorg/eclipse/jdt/internal/compiler/IErrorHandlingPolicy;)Lorg/eclipse/jdt/internal/compiler/IErrorHandlingPolicy;

    return-object v0

    :cond_8
    :try_start_1
    new-instance p1, Lorg/eclipse/jdt/internal/compiler/ast/LambdaExpression$CopyFailureException;

    invoke-direct {p1, p0}, Lorg/eclipse/jdt/internal/compiler/ast/LambdaExpression$CopyFailureException;-><init>(Lorg/eclipse/jdt/internal/compiler/ast/LambdaExpression;)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_9
    :goto_3
    if-nez p3, :cond_b

    :cond_a
    :goto_4
    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/ast/FunctionalExpression;->enclosingScope:Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object p1

    invoke-virtual {p1, p2}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemHandler;->switchErrorHandlingPolicy(Lorg/eclipse/jdt/internal/compiler/IErrorHandlingPolicy;)Lorg/eclipse/jdt/internal/compiler/IErrorHandlingPolicy;

    return-object v1

    :cond_b
    :try_start_2
    iget-object p1, v1, Lorg/eclipse/jdt/internal/compiler/ast/LambdaExpression;->thrownExceptions:Ljava/util/Set;

    if-nez p1, :cond_a

    iget-boolean p1, v1, Lorg/eclipse/jdt/internal/compiler/ast/LambdaExpression;->hasIgnoredMandatoryErrors:Z

    if-nez p1, :cond_a

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/compiler/ast/LambdaExpression;->enclosingScopesHaveErrors()Z

    move-result p1

    if-nez p1, :cond_a

    invoke-direct {v1}, Lorg/eclipse/jdt/internal/compiler/ast/LambdaExpression;->analyzeExceptions()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_4

    :goto_5
    iget-object p3, p0, Lorg/eclipse/jdt/internal/compiler/ast/FunctionalExpression;->enclosingScope:Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;

    invoke-virtual {p3}, Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object p3

    invoke-virtual {p3, p2}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemHandler;->switchErrorHandlingPolicy(Lorg/eclipse/jdt/internal/compiler/IErrorHandlingPolicy;)Lorg/eclipse/jdt/internal/compiler/IErrorHandlingPolicy;

    throw p1

    :cond_c
    :goto_6
    return-object v0
.end method

.method private enclosingScopesHaveErrors()Z
    .locals 2

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/FunctionalExpression;->enclosingScope:Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;

    :goto_0
    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->referenceContext()Lorg/eclipse/jdt/internal/compiler/impl/ReferenceContext;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-interface {v1}, Lorg/eclipse/jdt/internal/compiler/impl/ReferenceContext;->hasErrors()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x1

    return v0

    :cond_1
    iget-object v0, v0, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->parent:Lorg/eclipse/jdt/internal/compiler/lookup/Scope;

    goto :goto_0
.end method

.method private findGroundTargetType(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Z)Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;
    .locals 1

    instance-of v0, p3, Lorg/eclipse/jdt/internal/compiler/lookup/IntersectionTypeBinding18;

    if-eqz v0, :cond_0

    check-cast p3, Lorg/eclipse/jdt/internal/compiler/lookup/IntersectionTypeBinding18;

    invoke-virtual {p3, p1}, Lorg/eclipse/jdt/internal/compiler/lookup/IntersectionTypeBinding18;->getSAMType(Lorg/eclipse/jdt/internal/compiler/lookup/Scope;)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object p3

    :cond_0
    instance-of v0, p3, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    if-eqz v0, :cond_3

    invoke-virtual {p3}, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->isValidBinding()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {p3}, Lorg/eclipse/jdt/internal/compiler/lookup/InferenceContext18;->parameterizedWithWildcard(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/ParameterizedTypeBinding;

    move-result-object p3

    if-eqz p3, :cond_2

    if-nez p4, :cond_1

    new-instance p2, Lorg/eclipse/jdt/internal/compiler/lookup/InferenceContext18;

    invoke-direct {p2, p1}, Lorg/eclipse/jdt/internal/compiler/lookup/InferenceContext18;-><init>(Lorg/eclipse/jdt/internal/compiler/lookup/Scope;)V

    :try_start_0
    invoke-virtual {p2, p0, p1, p3}, Lorg/eclipse/jdt/internal/compiler/lookup/InferenceContext18;->inferFunctionalInterfaceParameterization(Lorg/eclipse/jdt/internal/compiler/ast/LambdaExpression;Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;Lorg/eclipse/jdt/internal/compiler/lookup/ParameterizedTypeBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/lookup/InferenceContext18;->cleanUp()V

    return-object p1

    :catchall_0
    move-exception p1

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/lookup/InferenceContext18;->cleanUp()V

    throw p1

    :cond_1
    invoke-virtual {p0, p1, p3}, Lorg/eclipse/jdt/internal/compiler/ast/LambdaExpression;->findGroundTargetTypeForElidedLambda(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;Lorg/eclipse/jdt/internal/compiler/lookup/ParameterizedTypeBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move-result-object p1

    return-object p1

    :cond_2
    instance-of p1, p2, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    if-eqz p1, :cond_3

    check-cast p2, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    return-object p2

    :cond_3
    const/4 p1, 0x0

    return-object p1
.end method

.method private isOnlyWildcardMismatch(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Z
    .locals 6

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isParameterizedType()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isParameterizedType()Z

    move-result v0

    if-eqz v0, :cond_3

    check-cast p1, Lorg/eclipse/jdt/internal/compiler/lookup/ParameterizedTypeBinding;

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/ParameterizedTypeBinding;->typeArguments()[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object p1

    check-cast p2, Lorg/eclipse/jdt/internal/compiler/lookup/ParameterizedTypeBinding;

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/lookup/ParameterizedTypeBinding;->typeArguments()[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object p2

    array-length v0, p2

    array-length v2, p1

    if-eq v0, v2, :cond_0

    return v1

    :cond_0
    move v0, v1

    move v2, v0

    :goto_0
    array-length v3, p2

    if-lt v0, v3, :cond_1

    move v1, v2

    goto :goto_1

    :cond_1
    aget-object v3, p1, v0

    aget-object v4, p2, v0

    invoke-static {v3, v4}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->notEquals(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Z

    move-result v3

    if-eqz v3, :cond_2

    aget-object v3, p1, v0

    invoke-virtual {v3}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isWildcard()Z

    move-result v3

    if-eqz v3, :cond_3

    aget-object v3, p2, v0

    invoke-virtual {v3}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isUnboundWildcard()Z

    move-result v3

    if-eqz v3, :cond_3

    aget-object v3, p1, v0

    check-cast v3, Lorg/eclipse/jdt/internal/compiler/lookup/WildcardBinding;

    invoke-virtual {v3}, Lorg/eclipse/jdt/internal/compiler/lookup/WildcardBinding;->allBounds()Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v4

    if-eqz v4, :cond_2

    iget v3, v3, Lorg/eclipse/jdt/internal/compiler/lookup/WildcardBinding;->boundKind:I

    const/4 v5, 0x1

    if-ne v3, v5, :cond_2

    iget v3, v4, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->id:I

    if-ne v3, v5, :cond_2

    move v2, v5

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    return v1
.end method

.method private mergeParameterNullAnnotations(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;)V
    .locals 14

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->environment()Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    move-result-object v0

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/ast/FunctionalExpression;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    iget-object v1, v1, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->parameters:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/ast/FunctionalExpression;->descriptor:Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    iget-object v2, v2, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->parameters:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    array-length v3, v1

    array-length v4, v2

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    if-lt v5, v3, :cond_0

    return-void

    :cond_0
    aget-object v6, v1, v5

    iget-wide v7, v6, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->tagBits:J

    const-wide/high16 v9, 0x180000000000000L

    and-long/2addr v7, v9

    aget-object v11, v2, v5

    iget-wide v11, v11, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->tagBits:J

    and-long/2addr v9, v11

    const-wide/16 v11, 0x0

    cmp-long v13, v7, v11

    if-nez v13, :cond_3

    cmp-long v7, v9, v11

    if-eqz v7, :cond_5

    invoke-virtual {v6}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isBaseType()Z

    move-result v6

    if-nez v6, :cond_5

    aget-object v6, v2, v5

    invoke-virtual {v6}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->getTypeAnnotations()[Lorg/eclipse/jdt/internal/compiler/lookup/AnnotationBinding;

    move-result-object v6

    array-length v7, v6

    move v8, v4

    :goto_1
    if-lt v8, v7, :cond_1

    goto :goto_3

    :cond_1
    aget-object v9, v6, v8

    if-eqz v9, :cond_2

    invoke-virtual {v9}, Lorg/eclipse/jdt/internal/compiler/lookup/AnnotationBinding;->getAnnotationType()Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move-result-object v10

    const/16 v11, 0x60

    invoke-virtual {v10, v11}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->hasNullBit(I)Z

    move-result v10

    if-eqz v10, :cond_2

    aget-object v10, v1, v5

    filled-new-array {v9}, [Lorg/eclipse/jdt/internal/compiler/lookup/AnnotationBinding;

    move-result-object v9

    invoke-virtual {v0, v10, v9}, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->createAnnotatedType(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;[Lorg/eclipse/jdt/internal/compiler/lookup/AnnotationBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v9

    aput-object v9, v1, v5

    :cond_2
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    :cond_3
    cmp-long v6, v7, v9

    if-eqz v6, :cond_5

    const-wide/high16 v11, 0x100000000000000L

    cmp-long v6, v7, v11

    if-nez v6, :cond_5

    const-wide/high16 v6, 0x80000000000000L

    cmp-long v6, v9, v6

    if-nez v6, :cond_4

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->getNullableAnnotationName()[[C

    move-result-object v6

    goto :goto_2

    :cond_4
    const/4 v6, 0x0

    :goto_2
    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object v7

    iget-object v8, p0, Lorg/eclipse/jdt/internal/compiler/ast/LambdaExpression;->arguments:[Lorg/eclipse/jdt/internal/compiler/ast/Argument;

    aget-object v8, v8, v5

    iget-object v9, p0, Lorg/eclipse/jdt/internal/compiler/ast/FunctionalExpression;->descriptor:Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    iget-object v9, v9, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->declaringClass:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    invoke-virtual {v7, v8, v9, v6}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->illegalRedefinitionToNonNullParameter(Lorg/eclipse/jdt/internal/compiler/ast/Argument;Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;[[C)V

    :cond_5
    :goto_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_0
.end method

.method private updateLocalTypes()V
    .locals 3

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/FunctionalExpression;->descriptor:Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/LambdaExpression;->localTypes:Ljava/util/Map;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v1, Lorg/eclipse/jdt/internal/compiler/ast/LambdaExpression$LocalTypeSubstitutor;

    invoke-direct {v1, p0, v0}, Lorg/eclipse/jdt/internal/compiler/ast/LambdaExpression$LocalTypeSubstitutor;-><init>(Lorg/eclipse/jdt/internal/compiler/ast/LambdaExpression;Ljava/util/Map;)V

    new-instance v0, Lorg/eclipse/jdt/internal/compiler/lookup/Substitution$NullSubstitution;

    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/ast/LambdaExpression;->scope:Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;

    invoke-virtual {v2}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->environment()Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    move-result-object v2

    invoke-direct {v0, v2}, Lorg/eclipse/jdt/internal/compiler/lookup/Substitution$NullSubstitution;-><init>(Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;)V

    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/ast/FunctionalExpression;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    invoke-direct {p0, v2, v1, v0}, Lorg/eclipse/jdt/internal/compiler/ast/LambdaExpression;->updateLocalTypesInMethod(Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;Lorg/eclipse/jdt/internal/compiler/lookup/Scope$Substitutor;Lorg/eclipse/jdt/internal/compiler/lookup/Substitution;)V

    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/ast/FunctionalExpression;->descriptor:Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    invoke-direct {p0, v2, v1, v0}, Lorg/eclipse/jdt/internal/compiler/ast/LambdaExpression;->updateLocalTypesInMethod(Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;Lorg/eclipse/jdt/internal/compiler/lookup/Scope$Substitutor;Lorg/eclipse/jdt/internal/compiler/lookup/Substitution;)V

    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->resolvedType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-virtual {v1, v0, v2}, Lorg/eclipse/jdt/internal/compiler/ast/LambdaExpression$LocalTypeSubstitutor;->substitute(Lorg/eclipse/jdt/internal/compiler/lookup/Substitution;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v2

    iput-object v2, p0, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->resolvedType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/ast/FunctionalExpression;->expectedType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-virtual {v1, v0, v2}, Lorg/eclipse/jdt/internal/compiler/ast/LambdaExpression$LocalTypeSubstitutor;->substitute(Lorg/eclipse/jdt/internal/compiler/lookup/Substitution;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v0

    iput-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/FunctionalExpression;->expectedType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    :cond_1
    :goto_0
    return-void
.end method

.method private updateLocalTypesInMethod(Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;Lorg/eclipse/jdt/internal/compiler/lookup/Scope$Substitutor;Lorg/eclipse/jdt/internal/compiler/lookup/Substitution;)V
    .locals 3

    .line 3
    iget-object v0, p1, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->declaringClass:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    invoke-virtual {p2, p3, v0}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope$Substitutor;->substitute(Lorg/eclipse/jdt/internal/compiler/lookup/Substitution;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    iput-object v0, p1, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->declaringClass:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    .line 4
    iget-object v0, p1, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->returnType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-virtual {p2, p3, v0}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope$Substitutor;->substitute(Lorg/eclipse/jdt/internal/compiler/lookup/Substitution;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v0

    iput-object v0, p1, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->returnType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    const/4 v0, 0x0

    .line 5
    :goto_0
    iget-object v1, p1, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->parameters:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    array-length v2, v1

    if-lt v0, v2, :cond_0

    return-void

    .line 6
    :cond_0
    aget-object v2, v1, v0

    invoke-virtual {p2, p3, v2}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope$Substitutor;->substitute(Lorg/eclipse/jdt/internal/compiler/lookup/Substitution;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v2

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public abort(ILorg/eclipse/jdt/core/compiler/CategorizedProblem;)V
    .locals 1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_2

    const/4 v0, 0x4

    if-eq p1, v0, :cond_1

    const/16 v0, 0x8

    if-eq p1, v0, :cond_0

    new-instance p1, Lorg/eclipse/jdt/internal/compiler/problem/AbortMethod;

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/FunctionalExpression;->compilationResult:Lorg/eclipse/jdt/internal/compiler/CompilationResult;

    invoke-direct {p1, v0, p2}, Lorg/eclipse/jdt/internal/compiler/problem/AbortMethod;-><init>(Lorg/eclipse/jdt/internal/compiler/CompilationResult;Lorg/eclipse/jdt/core/compiler/CategorizedProblem;)V

    throw p1

    :cond_0
    new-instance p1, Lorg/eclipse/jdt/internal/compiler/problem/AbortType;

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/FunctionalExpression;->compilationResult:Lorg/eclipse/jdt/internal/compiler/CompilationResult;

    invoke-direct {p1, v0, p2}, Lorg/eclipse/jdt/internal/compiler/problem/AbortType;-><init>(Lorg/eclipse/jdt/internal/compiler/CompilationResult;Lorg/eclipse/jdt/core/compiler/CategorizedProblem;)V

    throw p1

    :cond_1
    new-instance p1, Lorg/eclipse/jdt/internal/compiler/problem/AbortCompilationUnit;

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/FunctionalExpression;->compilationResult:Lorg/eclipse/jdt/internal/compiler/CompilationResult;

    invoke-direct {p1, v0, p2}, Lorg/eclipse/jdt/internal/compiler/problem/AbortCompilationUnit;-><init>(Lorg/eclipse/jdt/internal/compiler/CompilationResult;Lorg/eclipse/jdt/core/compiler/CategorizedProblem;)V

    throw p1

    :cond_2
    new-instance p1, Lorg/eclipse/jdt/internal/compiler/problem/AbortCompilation;

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/FunctionalExpression;->compilationResult:Lorg/eclipse/jdt/internal/compiler/CompilationResult;

    invoke-direct {p1, v0, p2}, Lorg/eclipse/jdt/internal/compiler/problem/AbortCompilation;-><init>(Lorg/eclipse/jdt/internal/compiler/CompilationResult;Lorg/eclipse/jdt/core/compiler/CategorizedProblem;)V

    throw p1
.end method

.method public addLocalType(Lorg/eclipse/jdt/internal/compiler/lookup/LocalTypeBinding;)V
    .locals 2

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/LambdaExpression;->localTypes:Ljava/util/Map;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/LambdaExpression;->localTypes:Ljava/util/Map;

    :cond_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/LambdaExpression;->localTypes:Ljava/util/Map;

    iget v1, p1, Lorg/eclipse/jdt/internal/compiler/lookup/LocalTypeBinding;->sourceStart:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public addSyntheticArgument(Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;)V
    .locals 6

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/LambdaExpression;->original:Lorg/eclipse/jdt/internal/compiler/ast/LambdaExpression;

    if-ne v0, p0, :cond_6

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/FunctionalExpression;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    if-nez v0, :cond_0

    goto/16 :goto_3

    :cond_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/LambdaExpression;->outerLocalVariables:[Lorg/eclipse/jdt/internal/compiler/lookup/SyntheticArgumentBinding;

    array-length v0, v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-lt v2, v0, :cond_4

    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/ast/LambdaExpression;->outerLocalVariables:[Lorg/eclipse/jdt/internal/compiler/lookup/SyntheticArgumentBinding;

    add-int/lit8 v3, v0, 0x1

    new-array v3, v3, [Lorg/eclipse/jdt/internal/compiler/lookup/SyntheticArgumentBinding;

    iput-object v3, p0, Lorg/eclipse/jdt/internal/compiler/ast/LambdaExpression;->outerLocalVariables:[Lorg/eclipse/jdt/internal/compiler/lookup/SyntheticArgumentBinding;

    invoke-static {v2, v1, v3, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/ast/LambdaExpression;->outerLocalVariables:[Lorg/eclipse/jdt/internal/compiler/lookup/SyntheticArgumentBinding;

    new-instance v3, Lorg/eclipse/jdt/internal/compiler/lookup/SyntheticArgumentBinding;

    invoke-direct {v3, p1}, Lorg/eclipse/jdt/internal/compiler/lookup/SyntheticArgumentBinding;-><init>(Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;)V

    aput-object v3, v2, v0

    iget v2, p0, Lorg/eclipse/jdt/internal/compiler/ast/LambdaExpression;->outerLocalVariablesSlotSize:I

    iput v2, v3, Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;->resolvedPosition:I

    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/ast/LambdaExpression;->scope:Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;

    iput-object v2, v3, Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;->declaringScope:Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;

    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/ast/FunctionalExpression;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    iget-object v2, v2, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->parameters:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    array-length v4, v2

    add-int/lit8 v2, v4, 0x1

    new-array v5, v2, [Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    iget-object p1, p1, Lorg/eclipse/jdt/internal/compiler/lookup/VariableBinding;->type:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    aput-object p1, v5, v0

    move p1, v1

    :goto_1
    if-lt v1, v4, :cond_2

    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/ast/FunctionalExpression;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    iput-object v5, p1, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->parameters:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    iget-object p1, v3, Lorg/eclipse/jdt/internal/compiler/lookup/VariableBinding;->type:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    iget p1, p1, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->id:I

    const/4 v0, 0x7

    if-eq p1, v0, :cond_1

    const/16 v0, 0x8

    if-eq p1, v0, :cond_1

    iget p1, p0, Lorg/eclipse/jdt/internal/compiler/ast/LambdaExpression;->outerLocalVariablesSlotSize:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lorg/eclipse/jdt/internal/compiler/ast/LambdaExpression;->outerLocalVariablesSlotSize:I

    goto :goto_2

    :cond_1
    iget p1, p0, Lorg/eclipse/jdt/internal/compiler/ast/LambdaExpression;->outerLocalVariablesSlotSize:I

    add-int/lit8 p1, p1, 0x2

    iput p1, p0, Lorg/eclipse/jdt/internal/compiler/ast/LambdaExpression;->outerLocalVariablesSlotSize:I

    :goto_2
    return-void

    :cond_2
    if-ne v1, v0, :cond_3

    add-int/lit8 p1, p1, 0x1

    :cond_3
    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/ast/FunctionalExpression;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    iget-object v2, v2, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->parameters:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    aget-object v2, v2, v1

    aput-object v2, v5, p1

    add-int/lit8 v1, v1, 0x1

    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    :cond_4
    iget-object v3, p0, Lorg/eclipse/jdt/internal/compiler/ast/LambdaExpression;->outerLocalVariables:[Lorg/eclipse/jdt/internal/compiler/lookup/SyntheticArgumentBinding;

    aget-object v3, v3, v2

    iget-object v3, v3, Lorg/eclipse/jdt/internal/compiler/lookup/SyntheticArgumentBinding;->actualOuterLocalVariable:Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;

    if-ne v3, p1, :cond_5

    return-void

    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_6
    :goto_3
    return-void
.end method

.method public analyseCode(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;Lorg/eclipse/jdt/internal/compiler/flow/FlowContext;Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;)Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;
    .locals 9

    iget-boolean v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/FunctionalExpression;->ignoreFurtherInvestigation:Z

    if-eqz v0, :cond_0

    return-object p3

    :cond_0
    invoke-virtual {p3}, Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;->copy()Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;

    move-result-object v0

    new-instance v8, Lorg/eclipse/jdt/internal/compiler/flow/ExceptionHandlingFlowContext;

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/ast/FunctionalExpression;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    iget-object v4, v1, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->thrownExceptions:[Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/flow/FlowContext;->getInitializationContext()Lorg/eclipse/jdt/internal/compiler/flow/FlowContext;

    move-result-object v5

    iget-object v6, p0, Lorg/eclipse/jdt/internal/compiler/ast/LambdaExpression;->scope:Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;

    sget-object v7, Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;->DEAD_END:Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;

    move-object v1, v8

    move-object v2, p2

    move-object v3, p0

    invoke-direct/range {v1 .. v7}, Lorg/eclipse/jdt/internal/compiler/flow/ExceptionHandlingFlowContext;-><init>(Lorg/eclipse/jdt/internal/compiler/flow/FlowContext;Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;[Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;Lorg/eclipse/jdt/internal/compiler/flow/FlowContext;Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;)V

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/ast/LambdaExpression;->argumentsTypeElided()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/ast/FunctionalExpression;->descriptor:Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/ast/FunctionalExpression;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    :goto_0
    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->environment()Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    move-result-object v2

    iget-object v3, p0, Lorg/eclipse/jdt/internal/compiler/ast/LambdaExpression;->arguments:[Lorg/eclipse/jdt/internal/compiler/ast/Argument;

    invoke-static {v2, v0, v3, v1}, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->analyseArguments(Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;[Lorg/eclipse/jdt/internal/compiler/ast/Argument;Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;)V

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/ast/LambdaExpression;->arguments:[Lorg/eclipse/jdt/internal/compiler/ast/Argument;

    if-eqz v1, :cond_3

    array-length v1, v1

    const/4 v2, 0x0

    :goto_1
    if-lt v2, v1, :cond_2

    goto :goto_2

    :cond_2
    iget v3, p0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->bits:I

    iget-object v4, p0, Lorg/eclipse/jdt/internal/compiler/ast/LambdaExpression;->arguments:[Lorg/eclipse/jdt/internal/compiler/ast/Argument;

    aget-object v4, v4, v2

    iget v4, v4, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->bits:I

    const/high16 v5, 0x100000

    and-int/2addr v4, v5

    or-int/2addr v3, v4

    iput v3, p0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->bits:I

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    :goto_2
    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/ast/LambdaExpression;->body:Lorg/eclipse/jdt/internal/compiler/ast/Statement;

    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/ast/LambdaExpression;->scope:Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;

    invoke-virtual {v1, v2, v8, v0}, Lorg/eclipse/jdt/internal/compiler/ast/Statement;->analyseCode(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;Lorg/eclipse/jdt/internal/compiler/flow/FlowContext;Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;)Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;

    move-result-object v0

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/ast/LambdaExpression;->body:Lorg/eclipse/jdt/internal/compiler/ast/Statement;

    instance-of v1, v1, Lorg/eclipse/jdt/internal/compiler/ast/Block;

    if-eqz v1, :cond_6

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/ast/LambdaExpression;->expectedResultType()Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object p1

    sget-object p2, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->VOID:Lorg/eclipse/jdt/internal/compiler/lookup/VoidTypeBinding;

    if-ne p1, p2, :cond_5

    iget p1, v0, Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;->tagBits:I

    and-int/lit8 p1, p1, 0x1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/ast/LambdaExpression;->body:Lorg/eclipse/jdt/internal/compiler/ast/Statement;

    check-cast p1, Lorg/eclipse/jdt/internal/compiler/ast/Block;

    iget-object p1, p1, Lorg/eclipse/jdt/internal/compiler/ast/Block;->statements:[Lorg/eclipse/jdt/internal/compiler/ast/Statement;

    if-nez p1, :cond_7

    :cond_4
    iget p1, p0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->bits:I

    or-int/lit8 p1, p1, 0x40

    iput p1, p0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->bits:I

    goto :goto_3

    :cond_5
    sget-object p2, Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;->DEAD_END:Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;

    if-eq v0, p2, :cond_7

    iget-object p2, p0, Lorg/eclipse/jdt/internal/compiler/ast/LambdaExpression;->scope:Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object p2

    invoke-virtual {p2, p1, p0}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->shouldReturn(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;)V

    goto :goto_3

    :cond_6
    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->compilerOptions()Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;

    move-result-object p1

    iget-boolean p1, p1, Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;->isAnnotationBasedNullAnalysisEnabled:Z

    if-eqz p1, :cond_7

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;->reachMode()I

    move-result p1

    if-nez p1, :cond_7

    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/ast/LambdaExpression;->body:Lorg/eclipse/jdt/internal/compiler/ast/Statement;

    check-cast p1, Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    invoke-virtual {p1, v0, p2}, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->nullStatus(Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;Lorg/eclipse/jdt/internal/compiler/flow/FlowContext;)I

    move-result v0

    invoke-virtual {p0, p2, p1, p3, v0}, Lorg/eclipse/jdt/internal/compiler/ast/LambdaExpression;->checkAgainstNullAnnotation(Lorg/eclipse/jdt/internal/compiler/flow/FlowContext;Lorg/eclipse/jdt/internal/compiler/ast/Expression;Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;I)V

    :cond_7
    :goto_3
    return-object p3
.end method

.method public argumentTypes()[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/LambdaExpression;->argumentTypes:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    return-object v0
.end method

.method public arguments()[Lorg/eclipse/jdt/internal/compiler/ast/Argument;
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/LambdaExpression;->arguments:[Lorg/eclipse/jdt/internal/compiler/ast/Argument;

    return-object v0
.end method

.method public argumentsTypeElided()Z
    .locals 3

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/LambdaExpression;->arguments:[Lorg/eclipse/jdt/internal/compiler/ast/Argument;

    array-length v1, v0

    const/4 v2, 0x0

    if-lez v1, :cond_0

    aget-object v0, v0, v2

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/ast/Argument;->hasElidedType()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-boolean v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/LambdaExpression;->argumentsTypeVar:Z

    if-nez v0, :cond_1

    return v2

    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method public arrowPosition()I
    .locals 1

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/LambdaExpression;->arrowPosition:I

    return v0
.end method

.method public body()Lorg/eclipse/jdt/internal/compiler/ast/Statement;
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/LambdaExpression;->body:Lorg/eclipse/jdt/internal/compiler/ast/Statement;

    return-object v0
.end method

.method public checkAgainstNullAnnotation(Lorg/eclipse/jdt/internal/compiler/flow/FlowContext;Lorg/eclipse/jdt/internal/compiler/ast/Expression;Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;I)V
    .locals 9

    const/4 v0, 0x4

    if-eq p4, v0, :cond_0

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/FunctionalExpression;->descriptor:Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    iget-object v5, v0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->returnType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    iget-wide v0, v5, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->tagBits:J

    const-wide/high16 v2, 0x100000000000000L

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/ast/LambdaExpression;->scope:Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;

    iget-object v4, p2, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->resolvedType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    const/4 v8, 0x0

    move-object v1, p1

    move-object v3, p2

    move-object v6, p3

    move v7, p4

    invoke-virtual/range {v1 .. v8}, Lorg/eclipse/jdt/internal/compiler/flow/FlowContext;->recordNullityMismatch(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;Lorg/eclipse/jdt/internal/compiler/ast/Expression;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;ILorg/eclipse/jdt/internal/compiler/ast/NullAnnotationMatching;)V

    :cond_0
    return-void
.end method

.method public compilationResult()Lorg/eclipse/jdt/internal/compiler/CompilationResult;
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/FunctionalExpression;->compilationResult:Lorg/eclipse/jdt/internal/compiler/CompilationResult;

    return-object v0
.end method

.method public copy()Lorg/eclipse/jdt/internal/compiler/ast/LambdaExpression;
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
    iget-object v3, p0, Lorg/eclipse/jdt/internal/compiler/ast/LambdaExpression;->text:[C

    :goto_0
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

    invoke-virtual/range {v0 .. v5}, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->parseLambdaExpression([CIILorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;Z)Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jdt/internal/compiler/ast/LambdaExpression;

    if-eqz v0, :cond_2

    iput-object p0, v0, Lorg/eclipse/jdt/internal/compiler/ast/LambdaExpression;->original:Lorg/eclipse/jdt/internal/compiler/ast/LambdaExpression;

    iget-boolean v1, p0, Lorg/eclipse/jdt/internal/compiler/ast/LambdaExpression;->assistNode:Z

    iput-boolean v1, v0, Lorg/eclipse/jdt/internal/compiler/ast/LambdaExpression;->assistNode:Z

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/ast/FunctionalExpression;->enclosingScope:Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;

    iput-object v1, v0, Lorg/eclipse/jdt/internal/compiler/ast/FunctionalExpression;->enclosingScope:Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;

    :cond_2
    return-object v0
.end method

.method public diagnosticsSourceEnd()I
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/LambdaExpression;->body:Lorg/eclipse/jdt/internal/compiler/ast/Statement;

    instance-of v0, v0, Lorg/eclipse/jdt/internal/compiler/ast/Block;

    if-eqz v0, :cond_0

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/LambdaExpression;->arrowPosition:I

    goto :goto_0

    :cond_0
    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceEnd:I

    :goto_0
    return v0
.end method

.method public expectedResultType()Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/FunctionalExpression;->descriptor:Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->isValidBinding()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/FunctionalExpression;->descriptor:Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    iget-object v0, v0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->returnType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public findGroundTargetTypeForElidedLambda(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;Lorg/eclipse/jdt/internal/compiler/lookup/ParameterizedTypeBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;
    .locals 2

    invoke-virtual {p2, p1}, Lorg/eclipse/jdt/internal/compiler/lookup/ParameterizedTypeBinding;->getNonWildcardParameterization(Lorg/eclipse/jdt/internal/compiler/lookup/Scope;)[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/lookup/ParameterizedTypeBinding;->genericType()Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move-result-object v1

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->environment()Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    move-result-object p1

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/lookup/ParameterizedTypeBinding;->enclosingType()Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move-result-object p2

    invoke-virtual {p1, v1, v0, p2}, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->createParameterizedType(Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/ParameterizedTypeBinding;

    move-result-object p1

    return-object p1
.end method

.method public generateCode(Lorg/eclipse/jdt/internal/compiler/ClassFile;)V
    .locals 9

    .line 41
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/FunctionalExpression;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    invoke-virtual {p1, v0}, Lorg/eclipse/jdt/internal/compiler/ClassFile;->generateMethodInfoHeader(Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;)V

    .line 42
    iget v0, p1, Lorg/eclipse/jdt/internal/compiler/ClassFile;->contentsOffset:I

    .line 43
    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/ast/FunctionalExpression;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    invoke-virtual {p1, v1}, Lorg/eclipse/jdt/internal/compiler/ClassFile;->generateMethodInfoAttributes(Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;)I

    move-result v1

    .line 44
    iget v2, p1, Lorg/eclipse/jdt/internal/compiler/ClassFile;->contentsOffset:I

    .line 45
    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/ClassFile;->generateCodeAttributeHeader()V

    .line 46
    iget-object v3, p1, Lorg/eclipse/jdt/internal/compiler/ClassFile;->codeStream:Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;

    .line 47
    invoke-virtual {v3, p0, p1}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->reset(Lorg/eclipse/jdt/internal/compiler/ast/LambdaExpression;Lorg/eclipse/jdt/internal/compiler/ClassFile;)V

    .line 48
    iget-object v4, p0, Lorg/eclipse/jdt/internal/compiler/ast/LambdaExpression;->scope:Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;

    iget v5, p0, Lorg/eclipse/jdt/internal/compiler/ast/LambdaExpression;->outerLocalVariablesSlotSize:I

    iget-object v6, p0, Lorg/eclipse/jdt/internal/compiler/ast/FunctionalExpression;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    invoke-virtual {v6}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->isStatic()Z

    move-result v6

    const/4 v7, 0x1

    xor-int/2addr v6, v7

    add-int/2addr v5, v6

    invoke-virtual {v4, v5, v3}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;->computeLocalVariablePositions(ILorg/eclipse/jdt/internal/compiler/codegen/CodeStream;)V

    .line 49
    iget-object v4, p0, Lorg/eclipse/jdt/internal/compiler/ast/LambdaExpression;->outerLocalVariables:[Lorg/eclipse/jdt/internal/compiler/lookup/SyntheticArgumentBinding;

    const/4 v5, 0x0

    if-eqz v4, :cond_1

    .line 50
    array-length v4, v4

    move v6, v5

    :goto_0
    if-lt v6, v4, :cond_0

    goto :goto_1

    .line 51
    :cond_0
    iget-object v8, p0, Lorg/eclipse/jdt/internal/compiler/ast/LambdaExpression;->outerLocalVariables:[Lorg/eclipse/jdt/internal/compiler/lookup/SyntheticArgumentBinding;

    aget-object v8, v8, v6

    invoke-virtual {v3, v8}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->addVisibleLocalVariable(Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;)V

    .line 52
    invoke-virtual {v3, v8}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->record(Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;)V

    .line 53
    invoke-virtual {v8, v5}, Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;->recordInitializationStartPC(I)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 54
    :cond_1
    :goto_1
    iget-object v4, p0, Lorg/eclipse/jdt/internal/compiler/ast/LambdaExpression;->arguments:[Lorg/eclipse/jdt/internal/compiler/ast/Argument;

    if-eqz v4, :cond_3

    .line 55
    array-length v4, v4

    move v6, v5

    :goto_2
    if-lt v6, v4, :cond_2

    goto :goto_3

    .line 56
    :cond_2
    iget-object v8, p0, Lorg/eclipse/jdt/internal/compiler/ast/LambdaExpression;->arguments:[Lorg/eclipse/jdt/internal/compiler/ast/Argument;

    aget-object v8, v8, v6

    iget-object v8, v8, Lorg/eclipse/jdt/internal/compiler/ast/LocalDeclaration;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;

    invoke-virtual {v3, v8}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->addVisibleLocalVariable(Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;)V

    .line 57
    invoke-virtual {v8, v5}, Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;->recordInitializationStartPC(I)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 58
    :cond_3
    :goto_3
    iget-object v4, p0, Lorg/eclipse/jdt/internal/compiler/ast/LambdaExpression;->body:Lorg/eclipse/jdt/internal/compiler/ast/Statement;

    instance-of v6, v4, Lorg/eclipse/jdt/internal/compiler/ast/Block;

    if-eqz v6, :cond_4

    .line 59
    iget-object v6, p0, Lorg/eclipse/jdt/internal/compiler/ast/LambdaExpression;->scope:Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;

    invoke-virtual {v4, v6, v3}, Lorg/eclipse/jdt/internal/compiler/ast/Statement;->generateCode(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;)V

    .line 60
    iget v4, p0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->bits:I

    and-int/lit8 v4, v4, 0x40

    if-eqz v4, :cond_6

    .line 61
    invoke-virtual {v3}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->return_()V

    goto :goto_4

    .line 62
    :cond_4
    check-cast v4, Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    .line 63
    iget-object v6, p0, Lorg/eclipse/jdt/internal/compiler/ast/LambdaExpression;->scope:Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;

    invoke-virtual {v4, v6, v3, v7}, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->generateCode(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;Z)V

    .line 64
    iget-object v6, p0, Lorg/eclipse/jdt/internal/compiler/ast/FunctionalExpression;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    iget-object v6, v6, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->returnType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    sget-object v8, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->VOID:Lorg/eclipse/jdt/internal/compiler/lookup/VoidTypeBinding;

    if-ne v6, v8, :cond_5

    .line 65
    invoke-virtual {v3}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->return_()V

    goto :goto_4

    .line 66
    :cond_5
    invoke-virtual {v3, v4}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->generateReturnBytecode(Lorg/eclipse/jdt/internal/compiler/ast/Expression;)V

    .line 67
    :cond_6
    :goto_4
    iget-object v4, p0, Lorg/eclipse/jdt/internal/compiler/ast/LambdaExpression;->scope:Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;

    invoke-virtual {v3, v4}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->exitUserScope(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;)V

    .line 68
    iget v4, p0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceEnd:I

    invoke-virtual {v3, v5, v4}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->recordPositionsFrom(II)V

    .line 69
    :try_start_0
    invoke-virtual {p1, v2}, Lorg/eclipse/jdt/internal/compiler/ClassFile;->completeCodeAttribute(I)V
    :try_end_0
    .catch Ljava/lang/NegativeArraySizeException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/2addr v1, v7

    .line 70
    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/ast/FunctionalExpression;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    invoke-virtual {p1, v2, v0, v1}, Lorg/eclipse/jdt/internal/compiler/ClassFile;->completeMethodInfo(Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;II)V

    return-void

    .line 71
    :catch_0
    new-instance p1, Lorg/eclipse/jdt/internal/compiler/problem/AbortMethod;

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/LambdaExpression;->scope:Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->referenceCompilationUnit()Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;

    move-result-object v0

    iget-object v0, v0, Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;->compilationResult:Lorg/eclipse/jdt/internal/compiler/CompilationResult;

    const/4 v1, 0x0

    invoke-direct {p1, v0, v1}, Lorg/eclipse/jdt/internal/compiler/problem/AbortMethod;-><init>(Lorg/eclipse/jdt/internal/compiler/CompilationResult;Lorg/eclipse/jdt/core/compiler/CategorizedProblem;)V

    throw p1
.end method

.method public generateCode(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;Z)V
    .locals 10

    .line 1
    iget-boolean v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/FunctionalExpression;->shouldCaptureInstance:Z

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/FunctionalExpression;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    iget v1, v0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->modifiers:I

    and-int/lit8 v1, v1, -0x9

    iput v1, v0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->modifiers:I

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/FunctionalExpression;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    iget v1, v0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->modifiers:I

    or-int/lit8 v1, v1, 0x8

    iput v1, v0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->modifiers:I

    .line 4
    :goto_0
    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->enclosingSourceType()Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;

    move-result-object v0

    .line 5
    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/ast/FunctionalExpression;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    instance-of v1, v1, Lorg/eclipse/jdt/internal/compiler/lookup/SyntheticMethodBinding;

    .line 6
    invoke-virtual {v0, p0}, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->addSyntheticMethod(Lorg/eclipse/jdt/internal/compiler/ast/LambdaExpression;)Lorg/eclipse/jdt/internal/compiler/lookup/SyntheticMethodBinding;

    move-result-object v2

    iput-object v2, p0, Lorg/eclipse/jdt/internal/compiler/ast/FunctionalExpression;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    .line 7
    iget v2, p2, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->position:I

    .line 8
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const/16 v4, 0x28

    .line 9
    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 10
    iget-boolean v4, p0, Lorg/eclipse/jdt/internal/compiler/ast/FunctionalExpression;->shouldCaptureInstance:Z

    if-eqz v4, :cond_1

    .line 11
    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->aload_0()V

    .line 12
    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->signature()[C

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    .line 13
    :cond_1
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/LambdaExpression;->outerLocalVariables:[Lorg/eclipse/jdt/internal/compiler/lookup/SyntheticArgumentBinding;

    const/4 v4, 0x0

    if-nez v0, :cond_2

    move v0, v4

    goto :goto_1

    :cond_2
    array-length v0, v0

    :goto_1
    if-lt v4, v0, :cond_5

    const/16 v0, 0x29

    .line 14
    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 15
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/FunctionalExpression;->expectedType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    instance-of v1, v0, Lorg/eclipse/jdt/internal/compiler/lookup/IntersectionTypeBinding18;

    if-eqz v1, :cond_3

    .line 16
    check-cast v0, Lorg/eclipse/jdt/internal/compiler/lookup/IntersectionTypeBinding18;

    invoke-virtual {v0, p1}, Lorg/eclipse/jdt/internal/compiler/lookup/IntersectionTypeBinding18;->getSAMType(Lorg/eclipse/jdt/internal/compiler/lookup/Scope;)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object p1

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->signature()[C

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    goto :goto_2

    .line 17
    :cond_3
    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->signature()[C

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    .line 18
    :goto_2
    iget-object p1, p2, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->classFile:Lorg/eclipse/jdt/internal/compiler/ClassFile;

    invoke-virtual {p1, p0}, Lorg/eclipse/jdt/internal/compiler/ClassFile;->recordBootstrapMethod(Lorg/eclipse/jdt/internal/compiler/ast/FunctionalExpression;)I

    move-result v5

    .line 19
    iget-boolean p1, p0, Lorg/eclipse/jdt/internal/compiler/ast/FunctionalExpression;->shouldCaptureInstance:Z

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/LambdaExpression;->outerLocalVariablesSlotSize:I

    add-int v6, p1, v0

    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/ast/FunctionalExpression;->descriptor:Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    iget-object v8, p1, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->selector:[C

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v9

    const/4 v7, 0x1

    move-object v4, p2

    invoke-virtual/range {v4 .. v9}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->invokeDynamic(III[C[C)V

    if-nez p3, :cond_4

    .line 20
    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->pop()V

    .line 21
    :cond_4
    iget p1, p0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceStart:I

    invoke-virtual {p2, v2, p1}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->recordPositionsFrom(II)V

    return-void

    .line 22
    :cond_5
    iget-object v5, p0, Lorg/eclipse/jdt/internal/compiler/ast/LambdaExpression;->outerLocalVariables:[Lorg/eclipse/jdt/internal/compiler/lookup/SyntheticArgumentBinding;

    aget-object v5, v5, v4

    .line 23
    iget-boolean v6, p0, Lorg/eclipse/jdt/internal/compiler/ast/FunctionalExpression;->shouldCaptureInstance:Z

    if-eqz v6, :cond_6

    if-nez v1, :cond_6

    .line 24
    iget v6, v5, Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;->resolvedPosition:I

    add-int/lit8 v6, v6, 0x1

    iput v6, v5, Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;->resolvedPosition:I

    .line 25
    :cond_6
    iget-object v6, v5, Lorg/eclipse/jdt/internal/compiler/lookup/VariableBinding;->type:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-virtual {v6}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->signature()[C

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    .line 26
    iget-object v5, v5, Lorg/eclipse/jdt/internal/compiler/lookup/SyntheticArgumentBinding;->actualOuterLocalVariable:Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;

    .line 27
    invoke-virtual {p1, v5}, Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;->getEmulationPath(Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;)[Lorg/eclipse/jdt/internal/compiler/lookup/VariableBinding;

    move-result-object v6

    .line 28
    invoke-virtual {p2, v6, p0, v5, p1}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->generateOuterAccess([Ljava/lang/Object;Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;Lorg/eclipse/jdt/internal/compiler/lookup/Binding;Lorg/eclipse/jdt/internal/compiler/lookup/Scope;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_1
.end method

.method public generateCode(Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;Lorg/eclipse/jdt/internal/compiler/ClassFile;)V
    .locals 5

    .line 29
    iget-object p1, p2, Lorg/eclipse/jdt/internal/compiler/ClassFile;->codeStream:Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;

    const/4 v0, 0x0

    iput-boolean v0, p1, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->wideMode:Z

    move p1, v0

    .line 30
    :cond_0
    :try_start_0
    iget p1, p2, Lorg/eclipse/jdt/internal/compiler/ClassFile;->contentsOffset:I

    .line 31
    invoke-virtual {p0, p2}, Lorg/eclipse/jdt/internal/compiler/ast/LambdaExpression;->generateCode(Lorg/eclipse/jdt/internal/compiler/ClassFile;)V
    :try_end_0
    .catch Lorg/eclipse/jdt/internal/compiler/problem/AbortMethod; {:try_start_0 .. :try_end_0} :catch_0

    move v4, v0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 32
    iget-object v2, v1, Lorg/eclipse/jdt/internal/compiler/problem/AbortCompilation;->compilationResult:Lorg/eclipse/jdt/internal/compiler/CompilationResult;

    sget-object v3, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->RESTART_IN_WIDE_MODE:Lorg/eclipse/jdt/internal/compiler/CompilationResult;

    const/4 v4, 0x1

    if-ne v2, v3, :cond_1

    .line 33
    iput p1, p2, Lorg/eclipse/jdt/internal/compiler/ClassFile;->contentsOffset:I

    .line 34
    iget v1, p2, Lorg/eclipse/jdt/internal/compiler/ClassFile;->methodCount:I

    sub-int/2addr v1, v4

    iput v1, p2, Lorg/eclipse/jdt/internal/compiler/ClassFile;->methodCount:I

    .line 35
    iget-object v1, p2, Lorg/eclipse/jdt/internal/compiler/ClassFile;->codeStream:Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->resetInWideMode()V

    goto :goto_0

    .line 36
    :cond_1
    sget-object v3, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->RESTART_CODE_GEN_FOR_UNUSED_LOCALS_MODE:Lorg/eclipse/jdt/internal/compiler/CompilationResult;

    if-ne v2, v3, :cond_2

    .line 37
    iput p1, p2, Lorg/eclipse/jdt/internal/compiler/ClassFile;->contentsOffset:I

    .line 38
    iget v1, p2, Lorg/eclipse/jdt/internal/compiler/ClassFile;->methodCount:I

    sub-int/2addr v1, v4

    iput v1, p2, Lorg/eclipse/jdt/internal/compiler/ClassFile;->methodCount:I

    .line 39
    iget-object v1, p2, Lorg/eclipse/jdt/internal/compiler/ClassFile;->codeStream:Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->resetForCodeGenUnusedLocals()V

    :goto_0
    if-nez v4, :cond_0

    return-void

    .line 40
    :cond_2
    new-instance p1, Lorg/eclipse/jdt/internal/compiler/problem/AbortType;

    iget-object p2, p0, Lorg/eclipse/jdt/internal/compiler/ast/FunctionalExpression;->compilationResult:Lorg/eclipse/jdt/internal/compiler/CompilationResult;

    iget-object v0, v1, Lorg/eclipse/jdt/internal/compiler/problem/AbortCompilation;->problem:Lorg/eclipse/jdt/core/compiler/CategorizedProblem;

    invoke-direct {p1, p2, v0}, Lorg/eclipse/jdt/internal/compiler/problem/AbortType;-><init>(Lorg/eclipse/jdt/internal/compiler/CompilationResult;Lorg/eclipse/jdt/core/compiler/CategorizedProblem;)V

    throw p1
.end method

.method public getCompilationUnitDeclaration()Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/FunctionalExpression;->enclosingScope:Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->compilationUnitScope()Lorg/eclipse/jdt/internal/compiler/lookup/CompilationUnitScope;

    move-result-object v0

    iget-object v0, v0, Lorg/eclipse/jdt/internal/compiler/lookup/CompilationUnitScope;->referenceContext:Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;

    :goto_0
    return-object v0
.end method

.method public getMarkerInterfaces()[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;
    .locals 8

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/FunctionalExpression;->expectedType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    instance-of v0, v0, Lorg/eclipse/jdt/internal/compiler/lookup/IntersectionTypeBinding18;

    if-eqz v0, :cond_3

    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/ast/FunctionalExpression;->expectedType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    check-cast v1, Lorg/eclipse/jdt/internal/compiler/lookup/IntersectionTypeBinding18;

    iget-object v2, v1, Lorg/eclipse/jdt/internal/compiler/lookup/IntersectionTypeBinding18;->intersectingTypes:[Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    iget-object v3, p0, Lorg/eclipse/jdt/internal/compiler/ast/FunctionalExpression;->enclosingScope:Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;

    invoke-virtual {v1, v3}, Lorg/eclipse/jdt/internal/compiler/lookup/IntersectionTypeBinding18;->getSAMType(Lorg/eclipse/jdt/internal/compiler/lookup/Scope;)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v1

    array-length v3, v2

    const/4 v4, 0x0

    :goto_0
    if-lt v4, v3, :cond_0

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v1

    if-lez v1, :cond_3

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v1

    new-array v1, v1, [Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-interface {v0, v1}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    return-object v0

    :cond_0
    aget-object v5, v2, v4

    invoke-virtual {v5}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isInterface()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-static {v1, v5}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->equalsEquals(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Z

    move-result v6

    if-nez v6, :cond_2

    iget v6, v5, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->id:I

    const/16 v7, 0x25

    if-ne v6, v7, :cond_1

    goto :goto_1

    :cond_1
    invoke-interface {v0, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_2
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    return-object v0
.end method

.method public getMethodBinding()Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;
    .locals 11

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/FunctionalExpression;->actualMethodBinding:Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    if-nez v0, :cond_2

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/FunctionalExpression;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    if-eqz v0, :cond_1

    instance-of v1, v0, Lorg/eclipse/jdt/internal/compiler/lookup/SyntheticMethodBinding;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/ast/LambdaExpression;->outerLocalVariables:[Lorg/eclipse/jdt/internal/compiler/lookup/SyntheticArgumentBinding;

    array-length v2, v1

    if-lez v2, :cond_0

    iget-object v0, v0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->parameters:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    array-length v2, v0

    array-length v3, v1

    sub-int/2addr v2, v3

    new-array v3, v2, [Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    array-length v1, v1

    const/4 v4, 0x0

    invoke-static {v0, v1, v3, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_0
    move-object v8, v3

    goto :goto_1

    :cond_0
    iget-object v3, v0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->parameters:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    goto :goto_0

    :goto_1
    new-instance v0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/ast/FunctionalExpression;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    iget v5, v1, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->modifiers:I

    iget-object v6, v1, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->selector:[C

    iget-object v7, v1, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->returnType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    iget-object v9, v1, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->thrownExceptions:[Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    iget-object v10, v1, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->declaringClass:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move-object v4, v0

    invoke-direct/range {v4 .. v10}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;-><init>(I[CLorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;[Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;)V

    iput-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/FunctionalExpression;->actualMethodBinding:Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/ast/FunctionalExpression;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    iget-wide v1, v1, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->tagBits:J

    iput-wide v1, v0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->tagBits:J

    goto :goto_2

    :cond_1
    new-instance v0, Lorg/eclipse/jdt/internal/compiler/lookup/ProblemMethodBinding;

    sget-object v1, Lorg/eclipse/jdt/core/compiler/CharOperation;->NO_CHAR:[C

    const/4 v2, 0x0

    const/16 v3, 0x11

    invoke-direct {v0, v1, v2, v3}, Lorg/eclipse/jdt/internal/compiler/lookup/ProblemMethodBinding;-><init>([C[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;I)V

    iput-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/FunctionalExpression;->actualMethodBinding:Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    :cond_2
    :goto_2
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/FunctionalExpression;->actualMethodBinding:Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    return-object v0
.end method

.method public getScope()Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/LambdaExpression;->scope:Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;

    return-object v0
.end method

.method public getSyntheticArgument(Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/SyntheticArgumentBinding;
    .locals 4

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/LambdaExpression;->outerLocalVariables:[Lorg/eclipse/jdt/internal/compiler/lookup/SyntheticArgumentBinding;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    array-length v0, v0

    :goto_0
    if-lt v1, v0, :cond_1

    const/4 p1, 0x0

    return-object p1

    :cond_1
    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/ast/LambdaExpression;->outerLocalVariables:[Lorg/eclipse/jdt/internal/compiler/lookup/SyntheticArgumentBinding;

    aget-object v2, v2, v1

    iget-object v3, v2, Lorg/eclipse/jdt/internal/compiler/lookup/SyntheticArgumentBinding;->actualOuterLocalVariable:Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;

    if-ne v3, p1, :cond_2

    return-object v2

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public getThrownExceptions()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/LambdaExpression;->thrownExceptions:Ljava/util/Set;

    if-nez v0, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getTypeBinding()Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/LambdaExpression;->classType:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->resolvedType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Lorg/eclipse/jdt/internal/compiler/ast/LambdaExpression$1LambdaTypeBinding;

    invoke-direct {v0, p0}, Lorg/eclipse/jdt/internal/compiler/ast/LambdaExpression$1LambdaTypeBinding;-><init>(Lorg/eclipse/jdt/internal/compiler/ast/LambdaExpression;)V

    iput-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/LambdaExpression;->classType:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    return-object v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public hasErrors()Z
    .locals 1

    iget-boolean v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/FunctionalExpression;->ignoreFurtherInvestigation:Z

    return v0
.end method

.method public internalIsCompatibleWith(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/Scope;Z)Lorg/eclipse/jdt/internal/compiler/ast/LambdaExpression$CompatibilityResult;
    .locals 7

    const/4 v0, 0x0

    invoke-super {p0, p1, v0}, Lorg/eclipse/jdt/internal/compiler/ast/FunctionalExpression;->isPertinentToApplicability(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object p1, Lorg/eclipse/jdt/internal/compiler/ast/LambdaExpression$CompatibilityResult;->COMPATIBLE:Lorg/eclipse/jdt/internal/compiler/ast/LambdaExpression$CompatibilityResult;

    return-object p1

    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/ast/LambdaExpression;->argumentsTypeElided()Z

    move-result v1

    const/4 v2, 0x0

    invoke-direct {p0, p1, v1, v2, v0}, Lorg/eclipse/jdt/internal/compiler/ast/LambdaExpression;->cachedResolvedCopy(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;ZZLorg/eclipse/jdt/internal/compiler/lookup/InferenceContext18;)Lorg/eclipse/jdt/internal/compiler/ast/LambdaExpression;

    move-result-object v1
    :try_end_0
    .catch Lorg/eclipse/jdt/internal/compiler/ast/LambdaExpression$CopyFailureException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v1, :cond_1

    sget-object p1, Lorg/eclipse/jdt/internal/compiler/ast/LambdaExpression$CompatibilityResult;->INCOMPATIBLE:Lorg/eclipse/jdt/internal/compiler/ast/LambdaExpression$CompatibilityResult;

    return-object p1

    :cond_1
    iget-object v3, p0, Lorg/eclipse/jdt/internal/compiler/ast/FunctionalExpression;->enclosingScope:Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/ast/LambdaExpression;->argumentsTypeElided()Z

    move-result v4

    invoke-direct {p0, v3, p1, p1, v4}, Lorg/eclipse/jdt/internal/compiler/ast/LambdaExpression;->findGroundTargetType(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Z)Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move-result-object p1

    iget-object v3, p0, Lorg/eclipse/jdt/internal/compiler/ast/FunctionalExpression;->enclosingScope:Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;

    const/4 v4, 0x1

    invoke-virtual {p1, v3, v4}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->getSingleAbstractMethod(Lorg/eclipse/jdt/internal/compiler/lookup/Scope;Z)Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    move-result-object v3

    if-eqz v3, :cond_c

    invoke-virtual {v3}, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->problemId()I

    move-result v5

    const/16 v6, 0x11

    if-ne v5, v6, :cond_2

    goto/16 :goto_1

    :cond_2
    iget-object v5, v3, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->returnType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    iget v5, v5, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->id:I

    const/4 v6, 0x6

    if-ne v5, v6, :cond_3

    iget-boolean p2, v1, Lorg/eclipse/jdt/internal/compiler/ast/LambdaExpression;->voidCompatible:Z

    if-nez p2, :cond_5

    sget-object p1, Lorg/eclipse/jdt/internal/compiler/ast/LambdaExpression$CompatibilityResult;->INCOMPATIBLE:Lorg/eclipse/jdt/internal/compiler/ast/LambdaExpression$CompatibilityResult;

    return-object p1

    :cond_3
    iget-boolean v5, v1, Lorg/eclipse/jdt/internal/compiler/ast/LambdaExpression;->valueCompatible:Z

    if-nez v5, :cond_5

    if-eqz p3, :cond_4

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object p1

    iget-object p2, v3, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->returnType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-virtual {p1, p0, p2}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->missingValueFromLambda(Lorg/eclipse/jdt/internal/compiler/ast/LambdaExpression;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)V

    sget-object p1, Lorg/eclipse/jdt/internal/compiler/ast/LambdaExpression$CompatibilityResult;->REPORTED:Lorg/eclipse/jdt/internal/compiler/ast/LambdaExpression$CompatibilityResult;

    return-object p1

    :cond_4
    sget-object p1, Lorg/eclipse/jdt/internal/compiler/ast/LambdaExpression$CompatibilityResult;->INCOMPATIBLE:Lorg/eclipse/jdt/internal/compiler/ast/LambdaExpression$CompatibilityResult;

    return-object p1

    :cond_5
    if-eqz p3, :cond_6

    sget-object p1, Lorg/eclipse/jdt/internal/compiler/ast/LambdaExpression$CompatibilityResult;->COMPATIBLE:Lorg/eclipse/jdt/internal/compiler/ast/LambdaExpression$CompatibilityResult;

    return-object p1

    :cond_6
    invoke-virtual {p0, p1, v0}, Lorg/eclipse/jdt/internal/compiler/ast/LambdaExpression;->isPertinentToApplicability(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;)Z

    move-result p1

    if-nez p1, :cond_7

    sget-object p1, Lorg/eclipse/jdt/internal/compiler/ast/LambdaExpression$CompatibilityResult;->COMPATIBLE:Lorg/eclipse/jdt/internal/compiler/ast/LambdaExpression$CompatibilityResult;

    return-object p1

    :cond_7
    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/ast/FunctionalExpression;->enclosingScope:Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;

    invoke-virtual {p0, p1, v3, v2}, Lorg/eclipse/jdt/internal/compiler/ast/LambdaExpression;->kosherDescriptor(Lorg/eclipse/jdt/internal/compiler/lookup/Scope;Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;Z)Z

    move-result p1

    if-nez p1, :cond_8

    sget-object p1, Lorg/eclipse/jdt/internal/compiler/ast/LambdaExpression$CompatibilityResult;->INCOMPATIBLE:Lorg/eclipse/jdt/internal/compiler/ast/LambdaExpression$CompatibilityResult;

    return-object p1

    :cond_8
    iget-object p1, v1, Lorg/eclipse/jdt/internal/compiler/ast/LambdaExpression;->resultExpressions:[Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    array-length p2, p1

    :goto_0
    if-lt v2, p2, :cond_9

    sget-object p1, Lorg/eclipse/jdt/internal/compiler/ast/LambdaExpression$CompatibilityResult;->COMPATIBLE:Lorg/eclipse/jdt/internal/compiler/ast/LambdaExpression$CompatibilityResult;

    return-object p1

    :cond_9
    iget-object p3, v3, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->returnType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-virtual {p3, v4}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isProperType(Z)Z

    move-result p3

    if-eqz p3, :cond_b

    iget-object p3, p0, Lorg/eclipse/jdt/internal/compiler/ast/FunctionalExpression;->enclosingScope:Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;

    aget-object v0, p1, v2

    iget-object v0, v0, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->resolvedType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    iget-object v1, v3, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->returnType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-virtual {p3, v0, v1}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->parameterCompatibilityLevel(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)I

    move-result p3

    const/4 v0, -0x1

    if-ne p3, v0, :cond_b

    aget-object p3, p1, v2

    iget-object v0, p3, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->resolvedType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    iget-object v1, v3, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->returnType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-virtual {p3, v0, v1}, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->isConstantValueOfTypeAssignableToType(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Z

    move-result p3

    if-nez p3, :cond_b

    iget-object p3, v3, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->returnType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    iget p3, p3, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->id:I

    if-ne p3, v6, :cond_a

    iget-object p3, p0, Lorg/eclipse/jdt/internal/compiler/ast/LambdaExpression;->body:Lorg/eclipse/jdt/internal/compiler/ast/Statement;

    instance-of p3, p3, Lorg/eclipse/jdt/internal/compiler/ast/Block;

    if-eqz p3, :cond_b

    :cond_a
    sget-object p1, Lorg/eclipse/jdt/internal/compiler/ast/LambdaExpression$CompatibilityResult;->INCOMPATIBLE:Lorg/eclipse/jdt/internal/compiler/ast/LambdaExpression$CompatibilityResult;

    return-object p1

    :cond_b
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_c
    :goto_1
    sget-object p1, Lorg/eclipse/jdt/internal/compiler/ast/LambdaExpression$CompatibilityResult;->INCOMPATIBLE:Lorg/eclipse/jdt/internal/compiler/ast/LambdaExpression$CompatibilityResult;

    return-object p1

    :catch_0
    iget-boolean p2, p0, Lorg/eclipse/jdt/internal/compiler/ast/LambdaExpression;->assistNode:Z

    if-eqz p2, :cond_d

    sget-object p1, Lorg/eclipse/jdt/internal/compiler/ast/LambdaExpression$CompatibilityResult;->COMPATIBLE:Lorg/eclipse/jdt/internal/compiler/ast/LambdaExpression$CompatibilityResult;

    return-object p1

    :cond_d
    invoke-virtual {p0, p1, v0}, Lorg/eclipse/jdt/internal/compiler/ast/LambdaExpression;->isPertinentToApplicability(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;)Z

    move-result p1

    if-eqz p1, :cond_e

    sget-object p1, Lorg/eclipse/jdt/internal/compiler/ast/LambdaExpression$CompatibilityResult;->INCOMPATIBLE:Lorg/eclipse/jdt/internal/compiler/ast/LambdaExpression$CompatibilityResult;

    goto :goto_2

    :cond_e
    sget-object p1, Lorg/eclipse/jdt/internal/compiler/ast/LambdaExpression$CompatibilityResult;->COMPATIBLE:Lorg/eclipse/jdt/internal/compiler/ast/LambdaExpression$CompatibilityResult;

    :goto_2
    return-object p1
.end method

.method public isCompatibleWith(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/Scope;)Z
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lorg/eclipse/jdt/internal/compiler/ast/LambdaExpression;->internalIsCompatibleWith(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/Scope;Z)Lorg/eclipse/jdt/internal/compiler/ast/LambdaExpression$CompatibilityResult;

    move-result-object p1

    sget-object p2, Lorg/eclipse/jdt/internal/compiler/ast/LambdaExpression$CompatibilityResult;->COMPATIBLE:Lorg/eclipse/jdt/internal/compiler/ast/LambdaExpression$CompatibilityResult;

    if-ne p1, p2, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    return v0
.end method

.method public isPertinentToApplicability(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;)Z
    .locals 6

    const/4 v0, 0x1

    if-nez p1, :cond_0

    return v0

    :cond_0
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/ast/LambdaExpression;->argumentsTypeElided()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    return v2

    :cond_1
    invoke-super {p0, p1, p2}, Lorg/eclipse/jdt/internal/compiler/ast/FunctionalExpression;->isPertinentToApplicability(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/ast/LambdaExpression;->body:Lorg/eclipse/jdt/internal/compiler/ast/Statement;

    instance-of v3, v1, Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    if-eqz v3, :cond_3

    check-cast v1, Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->isTrulyExpression()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/ast/LambdaExpression;->body:Lorg/eclipse/jdt/internal/compiler/ast/Statement;

    check-cast v1, Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    invoke-virtual {v1, p1, p2}, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->isPertinentToApplicability(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;)Z

    move-result p1

    if-nez p1, :cond_7

    return v2

    :cond_3
    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/ast/LambdaExpression;->resultExpressions:[Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    sget-object v3, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->NO_EXPRESSIONS:[Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    if-eq v1, v3, :cond_6

    array-length v3, v1

    move v4, v2

    :goto_0
    if-lt v4, v3, :cond_4

    goto :goto_1

    :cond_4
    aget-object v5, v1, v4

    invoke-virtual {v5, p1, p2}, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->isPertinentToApplicability(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;)Z

    move-result v5

    if-nez v5, :cond_5

    return v2

    :cond_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_6
    :try_start_0
    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/ast/LambdaExpression;->body:Lorg/eclipse/jdt/internal/compiler/ast/Statement;

    new-instance v3, Lorg/eclipse/jdt/internal/compiler/ast/LambdaExpression$1ResultsAnalyser;

    invoke-direct {v3, p0, p1, p2}, Lorg/eclipse/jdt/internal/compiler/ast/LambdaExpression$1ResultsAnalyser;-><init>(Lorg/eclipse/jdt/internal/compiler/ast/LambdaExpression;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;)V

    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/ast/LambdaExpression;->scope:Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;

    invoke-virtual {v1, v3, p1}, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->traverse(Lorg/eclipse/jdt/internal/compiler/ASTVisitor;Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;)V
    :try_end_0
    .catch Lorg/eclipse/jdt/internal/compiler/ast/LambdaExpression$1NotPertientToApplicability; {:try_start_0 .. :try_end_0} :catch_0

    :cond_7
    :goto_1
    return v0

    :catch_0
    return v2
.end method

.method public isPotentiallyCompatibleWith(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/Scope;)Z
    .locals 3

    const/4 v0, 0x0

    invoke-super {p0, p1, v0}, Lorg/eclipse/jdt/internal/compiler/ast/FunctionalExpression;->isPertinentToApplicability(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p1, p2, v1}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->getSingleAbstractMethod(Lorg/eclipse/jdt/internal/compiler/lookup/Scope;Z)Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    move-result-object p1

    const/4 p2, 0x0

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->isValidBinding()Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    iget-object v0, p1, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->parameters:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    array-length v0, v0

    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/ast/LambdaExpression;->arguments:[Lorg/eclipse/jdt/internal/compiler/ast/Argument;

    array-length v2, v2

    if-eq v0, v2, :cond_2

    return p2

    :cond_2
    invoke-direct {p0}, Lorg/eclipse/jdt/internal/compiler/ast/LambdaExpression;->analyzeShape()V

    iget-object p1, p1, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->returnType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    iget p1, p1, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->id:I

    const/4 v0, 0x6

    if-ne p1, v0, :cond_3

    iget-boolean p1, p0, Lorg/eclipse/jdt/internal/compiler/ast/LambdaExpression;->voidCompatible:Z

    if-nez p1, :cond_4

    return p2

    :cond_3
    iget-boolean p1, p0, Lorg/eclipse/jdt/internal/compiler/ast/LambdaExpression;->valueCompatible:Z

    if-nez p1, :cond_4

    return p2

    :cond_4
    return v1

    :cond_5
    :goto_0
    return p2
.end method

.method public isValueCompatible()Z
    .locals 1

    iget-boolean v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/LambdaExpression;->valueCompatible:Z

    return v0
.end method

.method public isVoidCompatible()Z
    .locals 1

    iget-boolean v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/LambdaExpression;->voidCompatible:Z

    return v0
.end method

.method public kosherDescriptor(Lorg/eclipse/jdt/internal/compiler/lookup/Scope;Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;Z)Z
    .locals 2

    iget-object v0, p2, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->typeVariables:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;

    sget-object v1, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->NO_TYPE_VARIABLES:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;

    if-eq v0, v1, :cond_1

    if-eqz p3, :cond_0

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object p1

    invoke-virtual {p1, p0, p2}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->lambdaExpressionCannotImplementGenericMethod(Lorg/eclipse/jdt/internal/compiler/ast/LambdaExpression;Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;)V

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    invoke-super {p0, p1, p2, p3}, Lorg/eclipse/jdt/internal/compiler/ast/FunctionalExpression;->kosherDescriptor(Lorg/eclipse/jdt/internal/compiler/lookup/Scope;Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;Z)Z

    move-result p1

    return p1
.end method

.method public original()Lorg/eclipse/jdt/internal/compiler/ast/FunctionalExpression;
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/LambdaExpression;->original:Lorg/eclipse/jdt/internal/compiler/ast/LambdaExpression;

    return-object v0
.end method

.method public printExpression(ILjava/lang/StringBuffer;)Ljava/lang/StringBuffer;
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, p2, v0}, Lorg/eclipse/jdt/internal/compiler/ast/LambdaExpression;->printExpression(ILjava/lang/StringBuffer;Z)Ljava/lang/StringBuffer;

    move-result-object p1

    return-object p1
.end method

.method public printExpression(ILjava/lang/StringBuffer;Z)Ljava/lang/StringBuffer;
    .locals 5

    .line 2
    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->bits:I

    const/high16 v1, 0x1fe00000

    and-int/2addr v0, v1

    shr-int/lit8 v0, v0, 0x15

    .line 3
    const-string v1, ""

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    const/16 v4, 0x28

    if-lt v3, v0, :cond_6

    .line 4
    invoke-virtual {p2, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 5
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/LambdaExpression;->arguments:[Lorg/eclipse/jdt/internal/compiler/ast/Argument;

    if-eqz v0, :cond_2

    move v0, v2

    .line 6
    :goto_1
    iget-object v3, p0, Lorg/eclipse/jdt/internal/compiler/ast/LambdaExpression;->arguments:[Lorg/eclipse/jdt/internal/compiler/ast/Argument;

    array-length v3, v3

    if-lt v0, v3, :cond_0

    goto :goto_2

    :cond_0
    if-lez v0, :cond_1

    .line 7
    const-string v3, ", "

    invoke-virtual {p2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 8
    :cond_1
    iget-object v3, p0, Lorg/eclipse/jdt/internal/compiler/ast/LambdaExpression;->arguments:[Lorg/eclipse/jdt/internal/compiler/ast/Argument;

    aget-object v3, v3, v0

    invoke-virtual {v3, v2, p2}, Lorg/eclipse/jdt/internal/compiler/ast/Argument;->print(ILjava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 9
    :cond_2
    :goto_2
    const-string v0, ") -> "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    if-eqz p3, :cond_3

    .line 10
    const-string p1, "{}"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_4

    .line 11
    :cond_3
    iget-object p3, p0, Lorg/eclipse/jdt/internal/compiler/ast/LambdaExpression;->body:Lorg/eclipse/jdt/internal/compiler/ast/Statement;

    if-eqz p3, :cond_5

    .line 12
    instance-of v0, p3, Lorg/eclipse/jdt/internal/compiler/ast/Block;

    if-eqz v0, :cond_4

    goto :goto_3

    :cond_4
    move p1, v2

    :goto_3
    invoke-virtual {p3, p1, p2}, Lorg/eclipse/jdt/internal/compiler/ast/Statement;->print(ILjava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    goto :goto_4

    .line 13
    :cond_5
    const-string p1, "<@incubator>"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 14
    :goto_4
    invoke-virtual {p2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    return-object p2

    .line 15
    :cond_6
    invoke-virtual {p2, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 16
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v4, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v1, 0x29

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method public reportShapeError(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/Scope;)Z
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lorg/eclipse/jdt/internal/compiler/ast/LambdaExpression;->internalIsCompatibleWith(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/Scope;Z)Lorg/eclipse/jdt/internal/compiler/ast/LambdaExpression$CompatibilityResult;

    move-result-object p1

    sget-object p2, Lorg/eclipse/jdt/internal/compiler/ast/LambdaExpression$CompatibilityResult;->REPORTED:Lorg/eclipse/jdt/internal/compiler/ast/LambdaExpression$CompatibilityResult;

    if-ne p1, p2, :cond_0

    return v0

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public bridge synthetic resolveExpressionExpecting(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/Scope;Lorg/eclipse/jdt/internal/compiler/lookup/InferenceContext18;)Lorg/eclipse/jdt/internal/compiler/ast/Expression;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Lorg/eclipse/jdt/internal/compiler/ast/LambdaExpression;->resolveExpressionExpecting(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/Scope;Lorg/eclipse/jdt/internal/compiler/lookup/InferenceContext18;)Lorg/eclipse/jdt/internal/compiler/ast/LambdaExpression;

    move-result-object p1

    return-object p1
.end method

.method public resolveExpressionExpecting(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/Scope;Lorg/eclipse/jdt/internal/compiler/lookup/InferenceContext18;)Lorg/eclipse/jdt/internal/compiler/ast/LambdaExpression;
    .locals 1

    const/4 p2, 0x0

    const/4 v0, 0x1

    .line 2
    :try_start_0
    invoke-direct {p0, p1, p2, v0, p3}, Lorg/eclipse/jdt/internal/compiler/ast/LambdaExpression;->cachedResolvedCopy(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;ZZLorg/eclipse/jdt/internal/compiler/lookup/InferenceContext18;)Lorg/eclipse/jdt/internal/compiler/ast/LambdaExpression;

    move-result-object p1
    :try_end_0
    .catch Lorg/eclipse/jdt/internal/compiler/ast/LambdaExpression$CopyFailureException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public resolveType(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;Z)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;
    .locals 21

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual/range {p0 .. p0}, Lorg/eclipse/jdt/internal/compiler/ast/LambdaExpression;->argumentsTypeElided()Z

    move-result v2

    iget-object v3, v0, Lorg/eclipse/jdt/internal/compiler/ast/LambdaExpression;->arguments:[Lorg/eclipse/jdt/internal/compiler/ast/Argument;

    if-nez v3, :cond_0

    const/4 v3, 0x0

    goto :goto_0

    :cond_0
    array-length v3, v3

    :goto_0
    iget-object v5, v0, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->constant:Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    sget-object v6, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->NotAConstant:Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    const/4 v7, 0x1

    if-eq v5, v6, :cond_4

    iput-object v6, v0, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->constant:Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    iput-object v1, v0, Lorg/eclipse/jdt/internal/compiler/ast/FunctionalExpression;->enclosingScope:Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;

    iget-object v5, v0, Lorg/eclipse/jdt/internal/compiler/ast/LambdaExpression;->original:Lorg/eclipse/jdt/internal/compiler/ast/LambdaExpression;

    if-ne v5, v0, :cond_1

    invoke-virtual/range {p0 .. p1}, Lorg/eclipse/jdt/internal/compiler/ast/FunctionalExpression;->recordFunctionalType(Lorg/eclipse/jdt/internal/compiler/lookup/Scope;)I

    move-result v5

    iput v5, v0, Lorg/eclipse/jdt/internal/compiler/ast/FunctionalExpression;->ordinal:I

    :cond_1
    if-nez v2, :cond_3

    const/4 v5, 0x0

    :goto_1
    if-lt v5, v3, :cond_2

    goto :goto_2

    :cond_2
    iget-object v6, v0, Lorg/eclipse/jdt/internal/compiler/ast/LambdaExpression;->argumentTypes:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    iget-object v8, v0, Lorg/eclipse/jdt/internal/compiler/ast/LambdaExpression;->arguments:[Lorg/eclipse/jdt/internal/compiler/ast/Argument;

    aget-object v8, v8, v5

    iget-object v8, v8, Lorg/eclipse/jdt/internal/compiler/ast/AbstractVariableDeclaration;->type:Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    invoke-virtual {v8, v1, v7}, Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;->resolveType(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;Z)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v8

    aput-object v8, v6, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_3
    :goto_2
    iget-object v5, v0, Lorg/eclipse/jdt/internal/compiler/ast/FunctionalExpression;->expectedType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    if-nez v5, :cond_4

    iget-object v5, v0, Lorg/eclipse/jdt/internal/compiler/ast/FunctionalExpression;->expressionContext:Lorg/eclipse/jdt/internal/compiler/ast/ExpressionContext;

    sget-object v6, Lorg/eclipse/jdt/internal/compiler/ast/ExpressionContext;->INVOCATION_CONTEXT:Lorg/eclipse/jdt/internal/compiler/ast/ExpressionContext;

    if-ne v5, v6, :cond_4

    new-instance v1, Lorg/eclipse/jdt/internal/compiler/lookup/PolyTypeBinding;

    invoke-direct {v1, v0}, Lorg/eclipse/jdt/internal/compiler/lookup/PolyTypeBinding;-><init>(Lorg/eclipse/jdt/internal/compiler/ast/Expression;)V

    return-object v1

    :cond_4
    invoke-virtual/range {p1 .. p1}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->methodScope()Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;

    move-result-object v5

    new-instance v6, Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;

    iget-boolean v8, v5, Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;->isStatic:Z

    iget v9, v5, Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;->lastVisibleFieldID:I

    invoke-direct {v6, v1, v0, v8, v9}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;-><init>(Lorg/eclipse/jdt/internal/compiler/lookup/Scope;Lorg/eclipse/jdt/internal/compiler/impl/ReferenceContext;ZI)V

    iput-object v6, v0, Lorg/eclipse/jdt/internal/compiler/ast/LambdaExpression;->scope:Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;

    iget-boolean v5, v5, Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;->isConstructorCall:Z

    iput-boolean v5, v6, Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;->isConstructorCall:Z

    invoke-super/range {p0 .. p2}, Lorg/eclipse/jdt/internal/compiler/ast/FunctionalExpression;->resolveType(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;Z)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    iget-object v5, v0, Lorg/eclipse/jdt/internal/compiler/ast/FunctionalExpression;->descriptor:Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    if-eqz v5, :cond_5

    move v6, v7

    goto :goto_3

    :cond_5
    const/4 v6, 0x0

    :goto_3
    const/4 v8, 0x0

    if-nez p2, :cond_7

    if-eqz v6, :cond_6

    iget-object v5, v5, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->typeVariables:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;

    sget-object v9, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->NO_TYPE_VARIABLES:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;

    if-eq v5, v9, :cond_7

    :cond_6
    iput-object v8, v0, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->resolvedType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    return-object v8

    :cond_7
    new-instance v5, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    sget-object v9, Lorg/eclipse/jdt/internal/compiler/lookup/TypeConstants;->ANONYMOUS_METHOD:[C

    iget v10, v0, Lorg/eclipse/jdt/internal/compiler/ast/FunctionalExpression;->ordinal:I

    invoke-static {v10}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->toCharArray()[C

    move-result-object v10

    invoke-static {v9, v10}, Lorg/eclipse/jdt/core/compiler/CharOperation;->concat([C[C)[C

    move-result-object v12

    if-eqz v6, :cond_8

    iget-object v9, v0, Lorg/eclipse/jdt/internal/compiler/ast/FunctionalExpression;->descriptor:Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    iget-object v9, v9, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->returnType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    :goto_4
    move-object v13, v9

    goto :goto_5

    :cond_8
    sget-object v9, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->VOID:Lorg/eclipse/jdt/internal/compiler/lookup/VoidTypeBinding;

    goto :goto_4

    :goto_5
    sget-object v14, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->NO_PARAMETERS:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    if-eqz v6, :cond_9

    iget-object v9, v0, Lorg/eclipse/jdt/internal/compiler/ast/FunctionalExpression;->descriptor:Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    iget-object v9, v9, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->thrownExceptions:[Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    :goto_6
    move-object v15, v9

    goto :goto_7

    :cond_9
    sget-object v9, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->NO_EXCEPTIONS:[Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    goto :goto_6

    :goto_7
    invoke-virtual/range {p1 .. p1}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->enclosingSourceType()Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;

    move-result-object v16

    const v11, 0x2001002

    move-object v10, v5

    invoke-direct/range {v10 .. v16}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;-><init>(I[CLorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;[Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;)V

    iput-object v5, v0, Lorg/eclipse/jdt/internal/compiler/ast/FunctionalExpression;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    sget-object v9, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->NO_TYPE_VARIABLES:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;

    iput-object v9, v5, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->typeVariables:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;

    if-eqz v6, :cond_c

    iget-object v5, v0, Lorg/eclipse/jdt/internal/compiler/ast/FunctionalExpression;->descriptor:Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    iget-object v5, v5, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->parameters:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    array-length v5, v5

    if-eq v5, v3, :cond_c

    iget-object v5, v0, Lorg/eclipse/jdt/internal/compiler/ast/LambdaExpression;->scope:Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;

    invoke-virtual {v5}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object v5

    invoke-virtual {v5, v0}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->lambdaSignatureMismatched(Lorg/eclipse/jdt/internal/compiler/ast/LambdaExpression;)V

    if-nez v2, :cond_b

    iget-object v5, v0, Lorg/eclipse/jdt/internal/compiler/ast/LambdaExpression;->original:Lorg/eclipse/jdt/internal/compiler/ast/LambdaExpression;

    if-eq v5, v0, :cond_a

    goto :goto_8

    :cond_a
    iput-object v8, v0, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->resolvedType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move v5, v7

    goto :goto_9

    :cond_b
    :goto_8
    iput-object v8, v0, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->resolvedType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    return-object v8

    :cond_c
    const/4 v5, 0x0

    :goto_9
    new-array v9, v3, [Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    const/4 v10, 0x0

    :goto_a
    const-wide/16 v13, 0x80

    if-lt v10, v3, :cond_2e

    if-nez v2, :cond_13

    if-nez v5, :cond_13

    iget-object v10, v0, Lorg/eclipse/jdt/internal/compiler/ast/FunctionalExpression;->expectedType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    instance-of v15, v10, Lorg/eclipse/jdt/internal/compiler/lookup/IntersectionTypeBinding18;

    if-eqz v15, :cond_d

    check-cast v10, Lorg/eclipse/jdt/internal/compiler/lookup/IntersectionTypeBinding18;

    invoke-virtual {v10, v1}, Lorg/eclipse/jdt/internal/compiler/lookup/IntersectionTypeBinding18;->getSAMType(Lorg/eclipse/jdt/internal/compiler/lookup/Scope;)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v10

    check-cast v10, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    goto :goto_b

    :cond_d
    instance-of v15, v10, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    if-eqz v15, :cond_e

    check-cast v10, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    goto :goto_b

    :cond_e
    move-object v10, v8

    :goto_b
    if-eqz v10, :cond_f

    iget-object v15, v0, Lorg/eclipse/jdt/internal/compiler/ast/FunctionalExpression;->expectedType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-direct {v0, v1, v15, v10, v2}, Lorg/eclipse/jdt/internal/compiler/ast/LambdaExpression;->findGroundTargetType(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Z)Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move-result-object v15

    goto :goto_c

    :cond_f
    move-object v15, v8

    :goto_c
    if-eqz v15, :cond_12

    invoke-virtual {v15, v1, v7}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->getSingleAbstractMethod(Lorg/eclipse/jdt/internal/compiler/lookup/Scope;Z)Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    move-result-object v4

    iput-object v4, v0, Lorg/eclipse/jdt/internal/compiler/ast/FunctionalExpression;->descriptor:Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    invoke-virtual {v4}, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->isValidBinding()Z

    move-result v4

    if-nez v4, :cond_10

    iget-object v4, v0, Lorg/eclipse/jdt/internal/compiler/ast/FunctionalExpression;->descriptor:Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    invoke-virtual {v0, v1, v4}, Lorg/eclipse/jdt/internal/compiler/ast/FunctionalExpression;->reportSamProblem(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    goto :goto_d

    :cond_10
    if-eq v15, v10, :cond_11

    iget-object v4, v0, Lorg/eclipse/jdt/internal/compiler/ast/LambdaExpression;->scope:Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;

    invoke-virtual {v15, v10, v4}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->isCompatibleWith(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/Scope;)Z

    move-result v4

    if-nez v4, :cond_11

    invoke-virtual/range {p1 .. p1}, Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object v1

    iget-object v2, v0, Lorg/eclipse/jdt/internal/compiler/ast/FunctionalExpression;->expectedType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-virtual {v1, v15, v2, v0, v8}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->typeMismatchError(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;)V

    return-object v8

    :cond_11
    iput-object v15, v0, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->resolvedType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    goto :goto_d

    :cond_12
    new-instance v2, Lorg/eclipse/jdt/internal/compiler/lookup/ProblemMethodBinding;

    sget-object v3, Lorg/eclipse/jdt/internal/compiler/lookup/TypeConstants;->ANONYMOUS_METHOD:[C

    const/16 v4, 0x12

    invoke-direct {v2, v3, v8, v4}, Lorg/eclipse/jdt/internal/compiler/lookup/ProblemMethodBinding;-><init>([C[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;I)V

    iput-object v2, v0, Lorg/eclipse/jdt/internal/compiler/ast/FunctionalExpression;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    invoke-virtual {v0, v1, v2}, Lorg/eclipse/jdt/internal/compiler/ast/FunctionalExpression;->reportSamProblem(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    iput-object v8, v0, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->resolvedType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    return-object v8

    :cond_13
    :goto_d
    iget-boolean v4, v0, Lorg/eclipse/jdt/internal/compiler/ast/LambdaExpression;->requiresGenericSignature:Z

    if-nez v4, :cond_14

    invoke-virtual/range {p1 .. p1}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->compilerOptions()Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;

    move-result-object v4

    iget-boolean v4, v4, Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;->generateGenericSignatureForLambdaExpressions:Z

    if-nez v4, :cond_14

    const/4 v4, 0x0

    goto :goto_e

    :cond_14
    move v4, v7

    :goto_e
    new-array v15, v3, [Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    const/4 v10, 0x0

    const/16 v17, 0x0

    :goto_f
    const/high16 v18, 0x40000000    # 2.0f

    if-lt v10, v3, :cond_25

    iget-boolean v10, v0, Lorg/eclipse/jdt/internal/compiler/ast/LambdaExpression;->argumentsTypeVar:Z

    if-eqz v10, :cond_16

    const/4 v10, 0x0

    :goto_10
    if-lt v10, v3, :cond_15

    goto :goto_11

    :cond_15
    iget-object v11, v0, Lorg/eclipse/jdt/internal/compiler/ast/LambdaExpression;->arguments:[Lorg/eclipse/jdt/internal/compiler/ast/Argument;

    aget-object v11, v11, v10

    iget-object v11, v11, Lorg/eclipse/jdt/internal/compiler/ast/AbstractVariableDeclaration;->type:Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    aget-object v12, v15, v10

    iput-object v12, v11, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->resolvedType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    add-int/lit8 v10, v10, 0x1

    goto :goto_10

    :cond_16
    :goto_11
    if-nez v5, :cond_17

    iget-object v3, v0, Lorg/eclipse/jdt/internal/compiler/ast/FunctionalExpression;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    iput-object v9, v3, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->parameters:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    if-eqz v8, :cond_17

    invoke-virtual {v3, v8}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->setParameterAnnotations([[Lorg/eclipse/jdt/internal/compiler/lookup/AnnotationBinding;)V

    :cond_17
    if-nez v2, :cond_18

    if-nez v5, :cond_18

    iget-object v3, v0, Lorg/eclipse/jdt/internal/compiler/ast/FunctionalExpression;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    invoke-virtual {v3}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->isVarargs()Z

    move-result v3

    if-eqz v3, :cond_18

    iget-object v3, v0, Lorg/eclipse/jdt/internal/compiler/ast/FunctionalExpression;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    iget-object v3, v3, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->parameters:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    array-length v8, v3

    sub-int/2addr v8, v7

    aget-object v3, v3, v8

    invoke-virtual {v3}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isReifiable()Z

    move-result v3

    if-nez v3, :cond_18

    iget-object v3, v0, Lorg/eclipse/jdt/internal/compiler/ast/LambdaExpression;->scope:Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;

    invoke-virtual {v3}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object v3

    iget-object v8, v0, Lorg/eclipse/jdt/internal/compiler/ast/LambdaExpression;->arguments:[Lorg/eclipse/jdt/internal/compiler/ast/Argument;

    array-length v9, v8

    sub-int/2addr v9, v7

    aget-object v8, v8, v9

    invoke-virtual {v3, v8}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->possibleHeapPollutionFromVararg(Lorg/eclipse/jdt/internal/compiler/ast/AbstractVariableDeclaration;)V

    :cond_18
    iget-object v3, v0, Lorg/eclipse/jdt/internal/compiler/ast/FunctionalExpression;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    iget-object v11, v3, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->thrownExceptions:[Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    array-length v12, v11

    const/4 v3, 0x0

    :goto_12
    if-lt v3, v12, :cond_22

    iget-object v3, v0, Lorg/eclipse/jdt/internal/compiler/ast/FunctionalExpression;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    iget-object v8, v3, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->returnType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    if-eqz v8, :cond_1a

    iget-wide v9, v8, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->tagBits:J

    and-long/2addr v9, v13

    const-wide/16 v11, 0x0

    cmp-long v9, v9, v11

    if-eqz v9, :cond_19

    iget-wide v9, v3, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->tagBits:J

    or-long/2addr v9, v13

    iput-wide v9, v3, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->tagBits:J

    :cond_19
    if-eqz v4, :cond_1a

    invoke-virtual {v8}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->leafComponentType()Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v3

    instance-of v4, v3, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    if-eqz v4, :cond_1a

    check-cast v3, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    iget v3, v3, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->modifiers:I

    and-int v3, v3, v18

    if-eqz v3, :cond_1a

    iget-object v3, v0, Lorg/eclipse/jdt/internal/compiler/ast/FunctionalExpression;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    iget v4, v3, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->modifiers:I

    or-int v4, v4, v18

    iput v4, v3, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->modifiers:I

    :cond_1a
    if-eqz v6, :cond_1c

    if-nez v5, :cond_1c

    invoke-virtual/range {p1 .. p1}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->compilerOptions()Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;

    move-result-object v3

    iget-boolean v3, v3, Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;->isAnnotationBasedNullAnalysisEnabled:Z

    if-eqz v3, :cond_1c

    if-nez v2, :cond_1b

    iget-object v2, v0, Lorg/eclipse/jdt/internal/compiler/ast/LambdaExpression;->arguments:[Lorg/eclipse/jdt/internal/compiler/ast/Argument;

    iget-object v3, v0, Lorg/eclipse/jdt/internal/compiler/ast/FunctionalExpression;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    iget-object v4, v0, Lorg/eclipse/jdt/internal/compiler/ast/LambdaExpression;->scope:Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;

    invoke-static {v2, v3, v4}, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->createArgumentBindings([Lorg/eclipse/jdt/internal/compiler/ast/Argument;Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;)V

    invoke-direct/range {p0 .. p1}, Lorg/eclipse/jdt/internal/compiler/ast/LambdaExpression;->mergeParameterNullAnnotations(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;)V

    :cond_1b
    iget-object v1, v0, Lorg/eclipse/jdt/internal/compiler/ast/FunctionalExpression;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    iget-wide v2, v1, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->tagBits:J

    iget-object v4, v0, Lorg/eclipse/jdt/internal/compiler/ast/FunctionalExpression;->descriptor:Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    iget-wide v8, v4, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->tagBits:J

    const-wide/high16 v10, 0x180000000000000L

    and-long/2addr v8, v10

    or-long/2addr v2, v8

    iput-wide v2, v1, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->tagBits:J

    :cond_1c
    iget-object v1, v0, Lorg/eclipse/jdt/internal/compiler/ast/FunctionalExpression;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    iget v2, v1, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->modifiers:I

    const v3, -0x2000001

    and-int/2addr v2, v3

    iput v2, v1, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->modifiers:I

    iget-object v1, v0, Lorg/eclipse/jdt/internal/compiler/ast/LambdaExpression;->body:Lorg/eclipse/jdt/internal/compiler/ast/Statement;

    instance-of v2, v1, Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    if-eqz v2, :cond_1d

    check-cast v1, Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->isTrulyExpression()Z

    move-result v1

    if-eqz v1, :cond_1d

    iget-object v1, v0, Lorg/eclipse/jdt/internal/compiler/ast/LambdaExpression;->body:Lorg/eclipse/jdt/internal/compiler/ast/Statement;

    check-cast v1, Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    new-instance v2, Lorg/eclipse/jdt/internal/compiler/ast/ReturnStatement;

    iget v3, v1, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceStart:I

    iget v4, v1, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceEnd:I

    invoke-direct {v2, v1, v3, v4, v7}, Lorg/eclipse/jdt/internal/compiler/ast/ReturnStatement;-><init>(Lorg/eclipse/jdt/internal/compiler/ast/Expression;IIZ)V

    iget-object v3, v0, Lorg/eclipse/jdt/internal/compiler/ast/LambdaExpression;->scope:Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;

    invoke-virtual {v2, v3}, Lorg/eclipse/jdt/internal/compiler/ast/ReturnStatement;->resolve(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;)V

    iget-object v2, v1, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->resolvedType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    sget-object v3, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->VOID:Lorg/eclipse/jdt/internal/compiler/lookup/VoidTypeBinding;

    if-ne v2, v3, :cond_1e

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->statementExpression()Z

    move-result v2

    if-nez v2, :cond_1e

    iget-object v2, v0, Lorg/eclipse/jdt/internal/compiler/ast/LambdaExpression;->scope:Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;

    invoke-virtual {v2}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object v2

    invoke-virtual {v2, v1}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->invalidExpressionAsStatement(Lorg/eclipse/jdt/internal/compiler/ast/Expression;)V

    goto :goto_13

    :cond_1d
    iget-object v1, v0, Lorg/eclipse/jdt/internal/compiler/ast/LambdaExpression;->body:Lorg/eclipse/jdt/internal/compiler/ast/Statement;

    iget-object v2, v0, Lorg/eclipse/jdt/internal/compiler/ast/LambdaExpression;->scope:Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;

    invoke-virtual {v1, v2}, Lorg/eclipse/jdt/internal/compiler/ast/Statement;->resolve(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;)V

    iget-boolean v1, v0, Lorg/eclipse/jdt/internal/compiler/ast/LambdaExpression;->returnsVoid:Z

    if-nez v1, :cond_1e

    iget-boolean v1, v0, Lorg/eclipse/jdt/internal/compiler/ast/LambdaExpression;->returnsValue:Z

    if-nez v1, :cond_1e

    iget-object v1, v0, Lorg/eclipse/jdt/internal/compiler/ast/LambdaExpression;->body:Lorg/eclipse/jdt/internal/compiler/ast/Statement;

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/compiler/ast/Statement;->doesNotCompleteNormally()Z

    move-result v1

    iput-boolean v1, v0, Lorg/eclipse/jdt/internal/compiler/ast/LambdaExpression;->valueCompatible:Z

    :cond_1e
    :goto_13
    iget-object v1, v0, Lorg/eclipse/jdt/internal/compiler/ast/FunctionalExpression;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    iget-wide v1, v1, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->tagBits:J

    and-long/2addr v1, v13

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-eqz v1, :cond_1f

    iget-object v1, v0, Lorg/eclipse/jdt/internal/compiler/ast/LambdaExpression;->scope:Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object v1

    iget-object v2, v0, Lorg/eclipse/jdt/internal/compiler/ast/FunctionalExpression;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    invoke-virtual {v1, v0, v2}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->missingTypeInLambda(Lorg/eclipse/jdt/internal/compiler/ast/LambdaExpression;Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;)V

    :cond_1f
    iget-boolean v1, v0, Lorg/eclipse/jdt/internal/compiler/ast/FunctionalExpression;->shouldCaptureInstance:Z

    if-eqz v1, :cond_20

    iget-object v1, v0, Lorg/eclipse/jdt/internal/compiler/ast/LambdaExpression;->scope:Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;

    iget-boolean v2, v1, Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;->isConstructorCall:Z

    if-eqz v2, :cond_20

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->fieldsOrThisBeforeConstructorInvocation(Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;)V

    :cond_20
    invoke-direct/range {p0 .. p0}, Lorg/eclipse/jdt/internal/compiler/ast/LambdaExpression;->updateLocalTypes()V

    or-int v1, v5, v17

    if-eqz v1, :cond_21

    const/4 v8, 0x0

    goto :goto_14

    :cond_21
    iget-object v8, v0, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->resolvedType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    :goto_14
    return-object v8

    :cond_22
    aget-object v8, v11, v3

    iget-wide v9, v8, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->tagBits:J

    and-long/2addr v9, v13

    const-wide/16 v15, 0x0

    cmp-long v9, v9, v15

    if-eqz v9, :cond_23

    iget-object v9, v0, Lorg/eclipse/jdt/internal/compiler/ast/FunctionalExpression;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    move-object/from16 p2, v8

    iget-wide v7, v9, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->tagBits:J

    or-long/2addr v7, v13

    iput-wide v7, v9, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->tagBits:J

    goto :goto_15

    :cond_23
    move-object/from16 p2, v8

    :goto_15
    if-eqz v4, :cond_24

    iget-object v7, v0, Lorg/eclipse/jdt/internal/compiler/ast/FunctionalExpression;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    iget v8, v7, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->modifiers:I

    move-object/from16 v9, p2

    iget v9, v9, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->modifiers:I

    and-int v9, v9, v18

    or-int/2addr v8, v9

    iput v8, v7, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->modifiers:I

    :cond_24
    add-int/lit8 v3, v3, 0x1

    const/4 v7, 0x1

    goto/16 :goto_12

    :cond_25
    iget-object v7, v0, Lorg/eclipse/jdt/internal/compiler/ast/LambdaExpression;->arguments:[Lorg/eclipse/jdt/internal/compiler/ast/Argument;

    aget-object v7, v7, v10

    if-eqz v6, :cond_26

    iget-object v11, v0, Lorg/eclipse/jdt/internal/compiler/ast/FunctionalExpression;->descriptor:Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    iget-object v11, v11, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->parameters:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    array-length v12, v11

    if-ge v10, v12, :cond_26

    aget-object v11, v11, v10

    goto :goto_16

    :cond_26
    const/4 v11, 0x0

    :goto_16
    if-eqz v2, :cond_27

    move-object v12, v11

    goto :goto_17

    :cond_27
    iget-object v12, v0, Lorg/eclipse/jdt/internal/compiler/ast/LambdaExpression;->argumentTypes:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    aget-object v12, v12, v10

    :goto_17
    aput-object v11, v15, v10

    if-eqz v12, :cond_2d

    sget-object v13, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->VOID:Lorg/eclipse/jdt/internal/compiler/lookup/VoidTypeBinding;

    if-eq v12, v13, :cond_2d

    if-eqz v6, :cond_28

    if-eqz v11, :cond_28

    invoke-virtual {v12}, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->isValidBinding()Z

    move-result v13

    if-eqz v13, :cond_28

    invoke-static {v12, v11}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->notEquals(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Z

    move-result v13

    if-eqz v13, :cond_28

    const/4 v13, 0x1

    invoke-virtual {v11, v13}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isProperType(Z)Z

    move-result v14

    if-eqz v14, :cond_28

    invoke-direct {v0, v11, v12}, Lorg/eclipse/jdt/internal/compiler/ast/LambdaExpression;->isOnlyWildcardMismatch(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Z

    move-result v14

    if-nez v14, :cond_28

    iget-object v14, v0, Lorg/eclipse/jdt/internal/compiler/ast/LambdaExpression;->scope:Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;

    invoke-virtual {v14}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object v14

    iget-object v13, v7, Lorg/eclipse/jdt/internal/compiler/ast/AbstractVariableDeclaration;->type:Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    invoke-virtual {v14, v7, v13, v11}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->lambdaParameterTypeMismatched(Lorg/eclipse/jdt/internal/compiler/ast/Argument;Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)V

    const/16 v17, 0x1

    :cond_28
    if-eqz v4, :cond_29

    invoke-virtual {v12}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->leafComponentType()Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v11

    instance-of v13, v11, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    if-eqz v13, :cond_29

    check-cast v11, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    iget v11, v11, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->modifiers:I

    and-int v11, v11, v18

    if-eqz v11, :cond_29

    iget-object v11, v0, Lorg/eclipse/jdt/internal/compiler/ast/FunctionalExpression;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    iget v13, v11, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->modifiers:I

    or-int v13, v13, v18

    iput v13, v11, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->modifiers:I

    :cond_29
    iget-object v11, v0, Lorg/eclipse/jdt/internal/compiler/ast/LambdaExpression;->scope:Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;

    const/4 v13, 0x0

    invoke-virtual {v7, v11, v12, v13}, Lorg/eclipse/jdt/internal/compiler/ast/Argument;->bind(Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Z)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v11

    aput-object v11, v9, v10

    iget-object v11, v7, Lorg/eclipse/jdt/internal/compiler/ast/AbstractVariableDeclaration;->annotations:[Lorg/eclipse/jdt/internal/compiler/ast/Annotation;

    if-eqz v11, :cond_2c

    iget-object v11, v0, Lorg/eclipse/jdt/internal/compiler/ast/FunctionalExpression;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    iget-wide v13, v11, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->tagBits:J

    const-wide/16 v19, 0x400

    or-long v12, v13, v19

    iput-wide v12, v11, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->tagBits:J

    if-nez v8, :cond_2b

    new-array v11, v3, [[Lorg/eclipse/jdt/internal/compiler/lookup/AnnotationBinding;

    const/4 v8, 0x0

    :goto_18
    if-lt v8, v10, :cond_2a

    move-object v8, v11

    goto :goto_19

    :cond_2a
    sget-object v12, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->NO_ANNOTATIONS:[Lorg/eclipse/jdt/internal/compiler/lookup/AnnotationBinding;

    aput-object v12, v11, v8

    add-int/lit8 v8, v8, 0x1

    goto :goto_18

    :cond_2b
    :goto_19
    iget-object v7, v7, Lorg/eclipse/jdt/internal/compiler/ast/LocalDeclaration;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;

    invoke-virtual {v7}, Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;->getAnnotations()[Lorg/eclipse/jdt/internal/compiler/lookup/AnnotationBinding;

    move-result-object v7

    aput-object v7, v8, v10

    goto :goto_1a

    :cond_2c
    if-eqz v8, :cond_2d

    sget-object v7, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->NO_ANNOTATIONS:[Lorg/eclipse/jdt/internal/compiler/lookup/AnnotationBinding;

    aput-object v7, v8, v10

    :cond_2d
    :goto_1a
    add-int/lit8 v10, v10, 0x1

    const/4 v7, 0x1

    const-wide/16 v13, 0x80

    goto/16 :goto_f

    :cond_2e
    iget-object v4, v0, Lorg/eclipse/jdt/internal/compiler/ast/LambdaExpression;->arguments:[Lorg/eclipse/jdt/internal/compiler/ast/Argument;

    aget-object v4, v4, v10

    invoke-virtual {v4}, Lorg/eclipse/jdt/internal/compiler/ast/Argument;->isVarArgs()Z

    move-result v7

    if-eqz v7, :cond_30

    add-int/lit8 v7, v3, -0x1

    if-ne v10, v7, :cond_2f

    iget-object v7, v0, Lorg/eclipse/jdt/internal/compiler/ast/FunctionalExpression;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    iget v8, v7, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->modifiers:I

    or-int/lit16 v8, v8, 0x80

    iput v8, v7, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->modifiers:I

    goto :goto_1b

    :cond_2f
    iget-object v5, v0, Lorg/eclipse/jdt/internal/compiler/ast/LambdaExpression;->scope:Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;

    invoke-virtual {v5}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object v5

    invoke-virtual {v5, v4}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->illegalVarargInLambda(Lorg/eclipse/jdt/internal/compiler/ast/Argument;)V

    const/4 v5, 0x1

    :cond_30
    :goto_1b
    if-eqz v6, :cond_31

    iget-object v7, v0, Lorg/eclipse/jdt/internal/compiler/ast/FunctionalExpression;->descriptor:Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    iget-object v7, v7, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->parameters:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    array-length v8, v7

    if-ge v10, v8, :cond_31

    aget-object v7, v7, v10

    goto :goto_1c

    :cond_31
    const/4 v7, 0x0

    :goto_1c
    if-eqz v2, :cond_32

    goto :goto_1d

    :cond_32
    iget-object v7, v0, Lorg/eclipse/jdt/internal/compiler/ast/LambdaExpression;->argumentTypes:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    aget-object v7, v7, v10

    :goto_1d
    if-nez v7, :cond_33

    :goto_1e
    const/4 v5, 0x1

    goto :goto_1f

    :cond_33
    sget-object v8, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->VOID:Lorg/eclipse/jdt/internal/compiler/lookup/VoidTypeBinding;

    if-ne v7, v8, :cond_34

    iget-object v5, v0, Lorg/eclipse/jdt/internal/compiler/ast/LambdaExpression;->scope:Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;

    invoke-virtual {v5}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object v5

    invoke-virtual {v5, v0, v4}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->argumentTypeCannotBeVoid(Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;Lorg/eclipse/jdt/internal/compiler/ast/Argument;)V

    goto :goto_1e

    :cond_34
    invoke-virtual {v7}, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->isValidBinding()Z

    move-result v4

    if-nez v4, :cond_35

    iget-object v4, v0, Lorg/eclipse/jdt/internal/compiler/ast/FunctionalExpression;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    iget-wide v11, v4, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->tagBits:J

    const-wide/16 v13, 0x200

    or-long/2addr v11, v13

    iput-wide v11, v4, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->tagBits:J

    :cond_35
    iget-wide v7, v7, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->tagBits:J

    const-wide/16 v11, 0x80

    and-long/2addr v7, v11

    const-wide/16 v13, 0x0

    cmp-long v4, v7, v13

    if-eqz v4, :cond_36

    iget-object v4, v0, Lorg/eclipse/jdt/internal/compiler/ast/FunctionalExpression;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    iget-wide v7, v4, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->tagBits:J

    or-long/2addr v7, v11

    iput-wide v7, v4, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->tagBits:J

    :cond_36
    :goto_1f
    add-int/lit8 v10, v10, 0x1

    const/4 v7, 0x1

    const/4 v8, 0x0

    goto/16 :goto_a
.end method

.method public resultExpressions()[Lorg/eclipse/jdt/internal/compiler/ast/Expression;
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/LambdaExpression;->resultExpressions:[Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    return-object v0
.end method

.method public returnsExpression(Lorg/eclipse/jdt/internal/compiler/ast/Expression;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)V
    .locals 4

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/LambdaExpression;->original:Lorg/eclipse/jdt/internal/compiler/ast/LambdaExpression;

    if-ne v0, p0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/LambdaExpression;->body:Lorg/eclipse/jdt/internal/compiler/ast/Statement;

    instance-of v1, v0, Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_3

    check-cast v0, Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->isTrulyExpression()Z

    move-result v0

    if-eqz v0, :cond_3

    if-eqz p2, :cond_1

    iget p2, p2, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->id:I

    const/4 v0, 0x6

    if-ne p2, v0, :cond_1

    goto :goto_0

    :cond_1
    move v2, v3

    :goto_0
    iput-boolean v2, p0, Lorg/eclipse/jdt/internal/compiler/ast/LambdaExpression;->valueCompatible:Z

    iget-boolean p2, p0, Lorg/eclipse/jdt/internal/compiler/ast/LambdaExpression;->assistNode:Z

    if-eqz p2, :cond_2

    goto :goto_1

    :cond_2
    iget-object p2, p0, Lorg/eclipse/jdt/internal/compiler/ast/LambdaExpression;->body:Lorg/eclipse/jdt/internal/compiler/ast/Statement;

    check-cast p2, Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->statementExpression()Z

    move-result v3

    :goto_1
    iput-boolean v3, p0, Lorg/eclipse/jdt/internal/compiler/ast/LambdaExpression;->voidCompatible:Z

    filled-new-array {p1}, [Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    move-result-object p1

    iput-object p1, p0, Lorg/eclipse/jdt/internal/compiler/ast/LambdaExpression;->resultExpressions:[Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    return-void

    :cond_3
    if-eqz p1, :cond_4

    iput-boolean v3, p0, Lorg/eclipse/jdt/internal/compiler/ast/LambdaExpression;->returnsValue:Z

    iput-boolean v2, p0, Lorg/eclipse/jdt/internal/compiler/ast/LambdaExpression;->voidCompatible:Z

    iget-boolean p2, p0, Lorg/eclipse/jdt/internal/compiler/ast/LambdaExpression;->returnsVoid:Z

    xor-int/2addr p2, v3

    iput-boolean p2, p0, Lorg/eclipse/jdt/internal/compiler/ast/LambdaExpression;->valueCompatible:Z

    iget-object p2, p0, Lorg/eclipse/jdt/internal/compiler/ast/LambdaExpression;->resultExpressions:[Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    array-length v0, p2

    add-int/lit8 v1, v0, 0x1

    new-array v1, v1, [Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    invoke-static {p2, v2, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    aput-object p1, v1, v0

    iput-object v1, p0, Lorg/eclipse/jdt/internal/compiler/ast/LambdaExpression;->resultExpressions:[Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    goto :goto_2

    :cond_4
    iput-boolean v3, p0, Lorg/eclipse/jdt/internal/compiler/ast/LambdaExpression;->returnsVoid:Z

    iput-boolean v2, p0, Lorg/eclipse/jdt/internal/compiler/ast/LambdaExpression;->valueCompatible:Z

    iget-boolean p1, p0, Lorg/eclipse/jdt/internal/compiler/ast/LambdaExpression;->returnsValue:Z

    xor-int/2addr p1, v3

    iput-boolean p1, p0, Lorg/eclipse/jdt/internal/compiler/ast/LambdaExpression;->voidCompatible:Z

    :goto_2
    return-void
.end method

.method public sIsMoreSpecific(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/Scope;)Z
    .locals 9

    invoke-super {p0, p1, p2, p3}, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->sIsMoreSpecific(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/Scope;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/ast/LambdaExpression;->argumentsTypeElided()Z

    move-result v0

    const/4 v2, 0x0

    if-nez v0, :cond_18

    invoke-virtual {p2, p1}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->findSuperTypeOriginatingFrom(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v0

    if-eqz v0, :cond_1

    goto/16 :goto_a

    :cond_1
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/FunctionalExpression;->enclosingScope:Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;

    iget v3, p0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceStart:I

    iget v4, p0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceEnd:I

    invoke-virtual {p1, v0, v3, v4}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->capture(Lorg/eclipse/jdt/internal/compiler/lookup/Scope;II)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v0

    iget-object v3, p0, Lorg/eclipse/jdt/internal/compiler/ast/FunctionalExpression;->enclosingScope:Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;

    invoke-virtual {v0, v3, v1}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->getSingleAbstractMethod(Lorg/eclipse/jdt/internal/compiler/lookup/Scope;Z)Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    move-result-object v3

    if-eqz v3, :cond_18

    invoke-virtual {v3}, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->isValidBinding()Z

    move-result v4

    if-nez v4, :cond_2

    goto/16 :goto_a

    :cond_2
    iget-object v4, p0, Lorg/eclipse/jdt/internal/compiler/ast/FunctionalExpression;->enclosingScope:Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;

    invoke-virtual {p2, v4, v1}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->getSingleAbstractMethod(Lorg/eclipse/jdt/internal/compiler/lookup/Scope;Z)Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    move-result-object p2

    if-eqz p2, :cond_17

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->isValidBinding()Z

    move-result v4

    if-nez v4, :cond_3

    goto/16 :goto_9

    :cond_3
    invoke-virtual {p3}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->environment()Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    move-result-object v4

    invoke-virtual {p2, v3, v4}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->computeSubstitutedMethod(Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;)Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    move-result-object v3

    if-nez v3, :cond_4

    return v2

    :cond_4
    iget-object v4, p0, Lorg/eclipse/jdt/internal/compiler/ast/FunctionalExpression;->enclosingScope:Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;

    invoke-virtual {p1, v4, v1}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->getSingleAbstractMethod(Lorg/eclipse/jdt/internal/compiler/lookup/Scope;Z)Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    move-result-object p1

    iget-object v4, v3, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->parameters:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-virtual {p3}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->environment()Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    move-result-object v5

    invoke-virtual {p2, p1, v5}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->computeSubstitutedMethod(Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;)Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    move-result-object p1

    iget-object p1, p1, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->parameters:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    iget-object v5, p2, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->parameters:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move v6, v2

    :goto_0
    array-length v7, v4

    if-lt v6, v7, :cond_14

    iget-object p1, v3, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->returnType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    iget-object p2, p2, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->returnType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    iget v3, p2, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->id:I

    const/4 v4, 0x6

    if-ne v3, v4, :cond_5

    return v1

    :cond_5
    iget v3, p1, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->id:I

    if-ne v3, v4, :cond_6

    return v2

    :cond_6
    invoke-virtual {p1, p2, p3}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isCompatibleWith(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/Scope;)Z

    move-result v3

    if-eqz v3, :cond_7

    return v1

    :cond_7
    const/4 v3, 0x0

    :try_start_0
    invoke-direct {p0, v0, v1, v2, v3}, Lorg/eclipse/jdt/internal/compiler/ast/LambdaExpression;->cachedResolvedCopy(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;ZZLorg/eclipse/jdt/internal/compiler/lookup/InferenceContext18;)Lorg/eclipse/jdt/internal/compiler/ast/LambdaExpression;

    move-result-object v0
    :try_end_0
    .catch Lorg/eclipse/jdt/internal/compiler/ast/LambdaExpression$CopyFailureException; {:try_start_0 .. :try_end_0} :catch_0

    iget-object v0, v0, Lorg/eclipse/jdt/internal/compiler/ast/LambdaExpression;->resultExpressions:[Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    if-nez v0, :cond_8

    move v3, v2

    goto :goto_1

    :cond_8
    array-length v3, v0

    :goto_1
    if-lez v3, :cond_12

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isBaseType()Z

    move-result v4

    if-eqz v4, :cond_c

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isBaseType()Z

    move-result v4

    if-nez v4, :cond_c

    move v4, v2

    :goto_2
    if-lt v4, v3, :cond_9

    goto :goto_3

    :cond_9
    aget-object v5, v0, v4

    invoke-virtual {v5}, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->isPolyExpression()Z

    move-result v5

    if-nez v5, :cond_b

    aget-object v5, v0, v4

    iget-object v5, v5, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->resolvedType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-virtual {v5}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isBaseType()Z

    move-result v5

    if-nez v5, :cond_a

    goto :goto_3

    :cond_a
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_b
    :goto_3
    if-ne v4, v3, :cond_c

    return v1

    :cond_c
    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isBaseType()Z

    move-result v4

    if-nez v4, :cond_f

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isBaseType()Z

    move-result v4

    if-eqz v4, :cond_f

    move v4, v2

    :goto_4
    if-lt v4, v3, :cond_d

    goto :goto_5

    :cond_d
    aget-object v5, v0, v4

    iget-object v5, v5, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->resolvedType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-virtual {v5}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isBaseType()Z

    move-result v5

    if-eqz v5, :cond_e

    :goto_5
    if-ne v4, v3, :cond_f

    return v1

    :cond_e
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    :cond_f
    iget-object v4, p0, Lorg/eclipse/jdt/internal/compiler/ast/FunctionalExpression;->enclosingScope:Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;

    invoke-virtual {p1, v4}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isFunctionalInterface(Lorg/eclipse/jdt/internal/compiler/lookup/Scope;)Z

    move-result v4

    if-eqz v4, :cond_12

    iget-object v4, p0, Lorg/eclipse/jdt/internal/compiler/ast/FunctionalExpression;->enclosingScope:Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;

    invoke-virtual {p2, v4}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isFunctionalInterface(Lorg/eclipse/jdt/internal/compiler/lookup/Scope;)Z

    move-result v4

    if-eqz v4, :cond_12

    move v4, v2

    :goto_6
    if-lt v4, v3, :cond_10

    goto :goto_7

    :cond_10
    aget-object v5, v0, v4

    invoke-virtual {v5, p1, p2, p3}, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->sIsMoreSpecific(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/Scope;)Z

    move-result v5

    if-nez v5, :cond_11

    :goto_7
    if-ne v4, v3, :cond_12

    return v1

    :cond_11
    add-int/lit8 v4, v4, 0x1

    goto :goto_6

    :cond_12
    return v2

    :catch_0
    move-exception p1

    iget-boolean p2, p0, Lorg/eclipse/jdt/internal/compiler/ast/LambdaExpression;->assistNode:Z

    if-eqz p2, :cond_13

    return v2

    :cond_13
    throw p1

    :cond_14
    aget-object v7, v5, v6

    aget-object v8, v4, v6

    invoke-virtual {v7, v8}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isCompatibleWith(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Z

    move-result v7

    if-eqz v7, :cond_16

    aget-object v7, v5, v6

    aget-object v8, p1, v6

    invoke-static {v7, v8}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->notEquals(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Z

    move-result v7

    if-eqz v7, :cond_15

    goto :goto_8

    :cond_15
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_0

    :cond_16
    :goto_8
    return v2

    :cond_17
    :goto_9
    return v1

    :cond_18
    :goto_a
    return v2
.end method

.method public setArguments([Lorg/eclipse/jdt/internal/compiler/ast/Argument;)V
    .locals 1

    if-eqz p1, :cond_0

    move-object v0, p1

    goto :goto_0

    :cond_0
    sget-object v0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->NO_ARGUMENTS:[Lorg/eclipse/jdt/internal/compiler/ast/Argument;

    :goto_0
    iput-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/LambdaExpression;->arguments:[Lorg/eclipse/jdt/internal/compiler/ast/Argument;

    if-eqz p1, :cond_1

    array-length p1, p1

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    :goto_1
    new-array p1, p1, [Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    iput-object p1, p0, Lorg/eclipse/jdt/internal/compiler/ast/LambdaExpression;->argumentTypes:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    return-void
.end method

.method public setArrowPosition(I)V
    .locals 0

    iput p1, p0, Lorg/eclipse/jdt/internal/compiler/ast/LambdaExpression;->arrowPosition:I

    return-void
.end method

.method public setBody(Lorg/eclipse/jdt/internal/compiler/ast/Statement;)V
    .locals 0

    if-nez p1, :cond_0

    sget-object p1, Lorg/eclipse/jdt/internal/compiler/ast/LambdaExpression;->NO_BODY:Lorg/eclipse/jdt/internal/compiler/ast/Block;

    :cond_0
    iput-object p1, p0, Lorg/eclipse/jdt/internal/compiler/ast/LambdaExpression;->body:Lorg/eclipse/jdt/internal/compiler/ast/Statement;

    return-void
.end method

.method public tagAsHavingErrors()V
    .locals 3

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/FunctionalExpression;->ignoreFurtherInvestigation:Z

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/FunctionalExpression;->enclosingScope:Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;

    iget-object v0, v0, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->parent:Lorg/eclipse/jdt/internal/compiler/lookup/Scope;

    :goto_0
    if-nez v0, :cond_0

    return-void

    :cond_0
    iget v1, v0, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->kind:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_1

    const/4 v2, 0x3

    if-eq v1, v2, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->referenceContext()Lorg/eclipse/jdt/internal/compiler/impl/ReferenceContext;

    move-result-object v1

    if-eq v1, p0, :cond_2

    invoke-interface {v1}, Lorg/eclipse/jdt/internal/compiler/impl/ReferenceContext;->tagAsHavingErrors()V

    return-void

    :cond_2
    :goto_1
    iget-object v0, v0, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->parent:Lorg/eclipse/jdt/internal/compiler/lookup/Scope;

    goto :goto_0
.end method

.method public tagAsHavingIgnoredMandatoryErrors(I)V
    .locals 2

    sparse-switch p1, :sswitch_data_0

    packed-switch p1, :pswitch_data_0

    const/4 p1, 0x1

    iput-boolean p1, p0, Lorg/eclipse/jdt/internal/compiler/ast/LambdaExpression;->hasIgnoredMandatoryErrors:Z

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/LambdaExpression;->scope:Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->enclosingLambdaScope()Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;

    move-result-object v0

    :goto_0
    if-nez v0, :cond_1

    return-void

    :cond_1
    iget-object v1, v0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;->referenceContext:Lorg/eclipse/jdt/internal/compiler/impl/ReferenceContext;

    check-cast v1, Lorg/eclipse/jdt/internal/compiler/ast/LambdaExpression;

    iput-boolean p1, v1, Lorg/eclipse/jdt/internal/compiler/ast/LambdaExpression;->hasIgnoredMandatoryErrors:Z

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->enclosingLambdaScope()Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;

    move-result-object v0

    goto :goto_0

    :pswitch_0
    :sswitch_0
    return-void

    :sswitch_data_0
    .sparse-switch
        0x63 -> :sswitch_0
        0x1000013 -> :sswitch_0
        0x1000092 -> :sswitch_0
        0x10000a8 -> :sswitch_0
        0x1000372 -> :sswitch_0
        0x4000069 -> :sswitch_0
        0x4000303 -> :sswitch_0
        0x2100028d -> :sswitch_0
        0x2400006c -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x2100028f
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public traverse(Lorg/eclipse/jdt/internal/compiler/ASTVisitor;Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;)V
    .locals 4

    invoke-virtual {p1, p0, p2}, Lorg/eclipse/jdt/internal/compiler/ASTVisitor;->visit(Lorg/eclipse/jdt/internal/compiler/ast/LambdaExpression;Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/LambdaExpression;->arguments:[Lorg/eclipse/jdt/internal/compiler/ast/Argument;

    if-eqz v0, :cond_1

    array-length v0, v0

    const/4 v1, 0x0

    :goto_0
    if-lt v1, v0, :cond_0

    goto :goto_1

    :cond_0
    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/ast/LambdaExpression;->arguments:[Lorg/eclipse/jdt/internal/compiler/ast/Argument;

    aget-object v2, v2, v1

    iget-object v3, p0, Lorg/eclipse/jdt/internal/compiler/ast/LambdaExpression;->scope:Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;

    invoke-virtual {v2, p1, v3}, Lorg/eclipse/jdt/internal/compiler/ast/Argument;->traverse(Lorg/eclipse/jdt/internal/compiler/ASTVisitor;Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/LambdaExpression;->body:Lorg/eclipse/jdt/internal/compiler/ast/Statement;

    if-eqz v0, :cond_2

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/ast/LambdaExpression;->scope:Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;

    invoke-virtual {v0, p1, v1}, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->traverse(Lorg/eclipse/jdt/internal/compiler/ASTVisitor;Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;)V

    :cond_2
    invoke-virtual {p1, p0, p2}, Lorg/eclipse/jdt/internal/compiler/ASTVisitor;->endVisit(Lorg/eclipse/jdt/internal/compiler/ast/LambdaExpression;Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;)V

    return-void
.end method

.method public updateLocalTypesInMethod(Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;)Z
    .locals 3

    .line 1
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/LambdaExpression;->localTypes:Ljava/util/Map;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 2
    :cond_0
    new-instance v1, Lorg/eclipse/jdt/internal/compiler/ast/LambdaExpression$LocalTypeSubstitutor;

    invoke-direct {v1, p0, v0}, Lorg/eclipse/jdt/internal/compiler/ast/LambdaExpression$LocalTypeSubstitutor;-><init>(Lorg/eclipse/jdt/internal/compiler/ast/LambdaExpression;Ljava/util/Map;)V

    new-instance v0, Lorg/eclipse/jdt/internal/compiler/lookup/Substitution$NullSubstitution;

    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/ast/LambdaExpression;->scope:Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;

    invoke-virtual {v2}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->environment()Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    move-result-object v2

    invoke-direct {v0, v2}, Lorg/eclipse/jdt/internal/compiler/lookup/Substitution$NullSubstitution;-><init>(Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;)V

    invoke-direct {p0, p1, v1, v0}, Lorg/eclipse/jdt/internal/compiler/ast/LambdaExpression;->updateLocalTypesInMethod(Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;Lorg/eclipse/jdt/internal/compiler/lookup/Scope$Substitutor;Lorg/eclipse/jdt/internal/compiler/lookup/Substitution;)V

    const/4 p1, 0x1

    return p1
.end method

.method public validateNullAnnotations()V
    .locals 7

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/FunctionalExpression;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    if-eqz v0, :cond_2

    iget-object v0, v0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->parameters:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    array-length v0, v0

    const/4 v1, 0x0

    :goto_0
    if-lt v1, v0, :cond_0

    goto :goto_1

    :cond_0
    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/ast/LambdaExpression;->scope:Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;

    iget-object v3, p0, Lorg/eclipse/jdt/internal/compiler/ast/FunctionalExpression;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    iget-object v3, v3, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->returnType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    iget-wide v3, v3, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->tagBits:J

    iget-object v5, p0, Lorg/eclipse/jdt/internal/compiler/ast/LambdaExpression;->arguments:[Lorg/eclipse/jdt/internal/compiler/ast/Argument;

    aget-object v5, v5, v1

    iget-object v6, v5, Lorg/eclipse/jdt/internal/compiler/ast/AbstractVariableDeclaration;->type:Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    iget-object v5, v5, Lorg/eclipse/jdt/internal/compiler/ast/AbstractVariableDeclaration;->annotations:[Lorg/eclipse/jdt/internal/compiler/ast/Annotation;

    invoke-virtual {v2, v3, v4, v6, v5}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->validateNullAnnotation(JLorg/eclipse/jdt/internal/compiler/ast/TypeReference;[Lorg/eclipse/jdt/internal/compiler/ast/Annotation;)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/ast/FunctionalExpression;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    iget-object v3, v2, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->returnType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-virtual {v3}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->withoutToplevelNullAnnotation()Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v3

    iput-object v3, v2, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->returnType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method
