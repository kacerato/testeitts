.class public Lorg/eclipse/jdt/internal/compiler/lookup/InferenceContext18;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/eclipse/jdt/internal/compiler/lookup/InferenceContext18$InferenceOperation;,
        Lorg/eclipse/jdt/internal/compiler/lookup/InferenceContext18$SuspendedInferenceRecord;
    }
.end annotation


# static fields
.field public static final APPLICABILITY_INFERRED:I = 0x1

.field static final ARGUMENT_CONSTRAINTS_ARE_SOFT:Z = false

.field public static final CHECK_LOOSE:I = 0x2

.field public static final CHECK_STRICT:I = 0x1

.field public static final CHECK_UNKNOWN:I = 0x0

.field public static final CHECK_VARARG:I = 0x3

.field public static final NOT_INFERRED:I = 0x0

.field static final SHOULD_WORKAROUND_BUG_JDK_8054721:Z = true

.field static final SHOULD_WORKAROUND_BUG_JDK_8153748:Z = true

.field static final SIMULATE_BUG_JDK_8026527:Z = true

.field public static final TYPE_INFERRED:I = 0x2

.field public static final TYPE_INFERRED_FINAL:I = 0x3


# instance fields
.field public b2:Lorg/eclipse/jdt/internal/compiler/lookup/BoundSet;

.field private b3:Lorg/eclipse/jdt/internal/compiler/lookup/BoundSet;

.field captureId:I

.field public constraintsWithUncheckedConversion:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/eclipse/jdt/internal/compiler/lookup/ConstraintFormula;",
            ">;"
        }
    .end annotation
.end field

.field currentBounds:Lorg/eclipse/jdt/internal/compiler/lookup/BoundSet;

.field currentInvocation:Lorg/eclipse/jdt/internal/compiler/lookup/InvocationSite;

.field private directlyAcceptingInnerBounds:Z

.field environment:Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

.field finalConstraints:[Lorg/eclipse/jdt/internal/compiler/lookup/ConstraintExpressionFormula;

.field inferenceKind:I

.field inferenceVariables:[Lorg/eclipse/jdt/internal/compiler/lookup/InferenceVariable;

.field initialConstraints:[Lorg/eclipse/jdt/internal/compiler/lookup/ConstraintFormula;

.field private innerInbox:Lorg/eclipse/jdt/internal/compiler/lookup/BoundSet;

.field invocationArguments:[Lorg/eclipse/jdt/internal/compiler/ast/Expression;

.field object:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

.field public outerContext:Lorg/eclipse/jdt/internal/compiler/lookup/InferenceContext18;

.field private pushToOuterJob:Ljava/lang/Runnable;

.field scope:Lorg/eclipse/jdt/internal/compiler/lookup/Scope;

.field private seenInnerContexts:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lorg/eclipse/jdt/internal/compiler/lookup/InferenceContext18;",
            ">;"
        }
    .end annotation
.end field

.field public stepCompleted:I

.field public usesUncheckedConversion:Z


# direct methods
.method public constructor <init>(Lorg/eclipse/jdt/internal/compiler/lookup/Scope;)V
    .locals 2

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 15
    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/InferenceContext18;->stepCompleted:I

    .line 16
    iput-boolean v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/InferenceContext18;->directlyAcceptingInnerBounds:Z

    const/4 v1, 0x0

    .line 17
    iput-object v1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/InferenceContext18;->pushToOuterJob:Ljava/lang/Runnable;

    .line 18
    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/InferenceContext18;->captureId:I

    .line 19
    iput-object p1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/InferenceContext18;->scope:Lorg/eclipse/jdt/internal/compiler/lookup/Scope;

    .line 20
    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->environment()Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    move-result-object v0

    iput-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/InferenceContext18;->environment:Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    .line 21
    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->getJavaLangObject()Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move-result-object p1

    iput-object p1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/InferenceContext18;->object:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    return-void
.end method

.method public constructor <init>(Lorg/eclipse/jdt/internal/compiler/lookup/Scope;[Lorg/eclipse/jdt/internal/compiler/ast/Expression;Lorg/eclipse/jdt/internal/compiler/lookup/InvocationSite;Lorg/eclipse/jdt/internal/compiler/lookup/InferenceContext18;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/InferenceContext18;->stepCompleted:I

    .line 3
    iput-boolean v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/InferenceContext18;->directlyAcceptingInnerBounds:Z

    const/4 v1, 0x0

    .line 4
    iput-object v1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/InferenceContext18;->pushToOuterJob:Ljava/lang/Runnable;

    .line 5
    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/InferenceContext18;->captureId:I

    .line 6
    iput-object p1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/InferenceContext18;->scope:Lorg/eclipse/jdt/internal/compiler/lookup/Scope;

    .line 7
    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->environment()Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    move-result-object v0

    iput-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/InferenceContext18;->environment:Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    .line 8
    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->getJavaLangObject()Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move-result-object v0

    iput-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/InferenceContext18;->object:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    .line 9
    iput-object p2, p0, Lorg/eclipse/jdt/internal/compiler/lookup/InferenceContext18;->invocationArguments:[Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    .line 10
    iput-object p3, p0, Lorg/eclipse/jdt/internal/compiler/lookup/InferenceContext18;->currentInvocation:Lorg/eclipse/jdt/internal/compiler/lookup/InvocationSite;

    .line 11
    iput-object p4, p0, Lorg/eclipse/jdt/internal/compiler/lookup/InferenceContext18;->outerContext:Lorg/eclipse/jdt/internal/compiler/lookup/InferenceContext18;

    .line 12
    instance-of p2, p3, Lorg/eclipse/jdt/internal/compiler/ast/Invocation;

    if-eqz p2, :cond_0

    .line 13
    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->compilationUnitScope()Lorg/eclipse/jdt/internal/compiler/lookup/CompilationUnitScope;

    move-result-object p1

    check-cast p3, Lorg/eclipse/jdt/internal/compiler/ast/Invocation;

    invoke-virtual {p1, p3}, Lorg/eclipse/jdt/internal/compiler/lookup/CompilationUnitScope;->registerInferredInvocation(Lorg/eclipse/jdt/internal/compiler/ast/Invocation;)V

    :cond_0
    return-void
.end method

.method public static synthetic a(Lorg/eclipse/jdt/internal/compiler/lookup/InferenceContext18;Lorg/eclipse/jdt/internal/compiler/lookup/ConstraintFormula;)Z
    .locals 0

    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/compiler/lookup/InferenceContext18;->lambda$2(Lorg/eclipse/jdt/internal/compiler/lookup/ConstraintFormula;)Z

    move-result p0

    return p0
.end method

.method private addConstraintsToC([Lorg/eclipse/jdt/internal/compiler/ast/Expression;Ljava/util/Set;Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;ILorg/eclipse/jdt/internal/compiler/lookup/InvocationSite;)Z
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lorg/eclipse/jdt/internal/compiler/ast/Expression;",
            "Ljava/util/Set<",
            "Lorg/eclipse/jdt/internal/compiler/lookup/ConstraintFormula;",
            ">;",
            "Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;",
            "I",
            "Lorg/eclipse/jdt/internal/compiler/lookup/InvocationSite;",
            ")Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/internal/compiler/lookup/InferenceFailureException;
        }
    .end annotation

    move-object/from16 v6, p0

    move-object/from16 v7, p1

    move-object/from16 v8, p3

    move/from16 v0, p4

    const/4 v9, 0x1

    if-eqz v7, :cond_6

    array-length v10, v7

    iget-object v1, v8, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->parameters:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    array-length v11, v1

    invoke-virtual/range {p3 .. p3}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->isVarargs()Z

    move-result v1

    const/4 v12, 0x0

    if-eqz v1, :cond_0

    add-int/lit8 v1, v11, -0x1

    if-ge v10, v1, :cond_1

    return v12

    :cond_0
    if-eq v10, v11, :cond_1

    return v12

    :cond_1
    if-eq v0, v9, :cond_3

    const/4 v1, 0x2

    if-eq v0, v1, :cond_3

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    iget-object v0, v8, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->parameters:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-direct {v6, v0, v10}, Lorg/eclipse/jdt/internal/compiler/lookup/InferenceContext18;->varArgTypes([Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;I)[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v0

    :goto_0
    move-object v13, v0

    goto :goto_1

    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unexpected checkKind "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, v6, Lorg/eclipse/jdt/internal/compiler/lookup/InferenceContext18;->inferenceKind:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    iget-object v0, v8, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->parameters:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    goto :goto_0

    :goto_1
    move v14, v12

    :goto_2
    if-lt v14, v10, :cond_4

    goto :goto_3

    :cond_4
    add-int/lit8 v0, v11, -0x1

    invoke-static {v14, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    aget-object v3, v13, v0

    new-instance v0, Lorg/eclipse/jdt/internal/compiler/lookup/InferenceSubstitution;

    iget-object v1, v6, Lorg/eclipse/jdt/internal/compiler/lookup/InferenceContext18;->environment:Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    iget-object v2, v6, Lorg/eclipse/jdt/internal/compiler/lookup/InferenceContext18;->inferenceVariables:[Lorg/eclipse/jdt/internal/compiler/lookup/InferenceVariable;

    move-object/from16 v15, p5

    invoke-direct {v0, v1, v2, v15}, Lorg/eclipse/jdt/internal/compiler/lookup/InferenceSubstitution;-><init>(Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;[Lorg/eclipse/jdt/internal/compiler/lookup/InferenceVariable;Lorg/eclipse/jdt/internal/compiler/lookup/InvocationSite;)V

    invoke-virtual {v0, v0, v3}, Lorg/eclipse/jdt/internal/compiler/lookup/InferenceSubstitution;->substitute(Lorg/eclipse/jdt/internal/compiler/lookup/Substitution;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v4

    aget-object v1, v7, v14

    move-object/from16 v0, p0

    move-object/from16 v2, p2

    move-object/from16 v5, p3

    invoke-direct/range {v0 .. v5}, Lorg/eclipse/jdt/internal/compiler/lookup/InferenceContext18;->addConstraintsToC_OneExpr(Lorg/eclipse/jdt/internal/compiler/ast/Expression;Ljava/util/Set;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;)Z

    move-result v0

    if-nez v0, :cond_5

    return v12

    :cond_5
    add-int/lit8 v14, v14, 0x1

    goto :goto_2

    :cond_6
    :goto_3
    return v9
.end method

.method private addConstraintsToC_OneExpr(Lorg/eclipse/jdt/internal/compiler/ast/Expression;Ljava/util/Set;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;)Z
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/eclipse/jdt/internal/compiler/ast/Expression;",
            "Ljava/util/Set<",
            "Lorg/eclipse/jdt/internal/compiler/lookup/ConstraintFormula;",
            ">;",
            "Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;",
            "Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;",
            "Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;",
            ")Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/internal/compiler/lookup/InferenceFailureException;
        }
    .end annotation

    const/4 v0, 0x1

    invoke-virtual {p4, v0}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isProperType(Z)Z

    move-result v1

    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/lookup/InferenceContext18;->b3:Lorg/eclipse/jdt/internal/compiler/lookup/BoundSet;

    invoke-direct {p0, v2}, Lorg/eclipse/jdt/internal/compiler/lookup/InferenceContext18;->getResultSubstitution(Lorg/eclipse/jdt/internal/compiler/lookup/BoundSet;)Lorg/eclipse/jdt/internal/compiler/lookup/Substitution;

    move-result-object v2

    invoke-static {v2, p4}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->substitute(Lorg/eclipse/jdt/internal/compiler/lookup/Substitution;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object p4

    invoke-virtual {p1, p3, p5}, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->isPertinentToApplicability(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;)Z

    move-result v2

    const/4 v9, 0x0

    if-nez v2, :cond_0

    new-instance v2, Lorg/eclipse/jdt/internal/compiler/lookup/ConstraintExpressionFormula;

    invoke-direct {v2, p1, p4, v0, v9}, Lorg/eclipse/jdt/internal/compiler/lookup/ConstraintExpressionFormula;-><init>(Lorg/eclipse/jdt/internal/compiler/ast/Expression;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;IZ)V

    invoke-interface {p2, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_0
    instance-of v2, p1, Lorg/eclipse/jdt/internal/compiler/ast/FunctionalExpression;

    if-eqz v2, :cond_5

    new-instance p3, Lorg/eclipse/jdt/internal/compiler/lookup/ConstraintExceptionFormula;

    move-object v1, p1

    check-cast v1, Lorg/eclipse/jdt/internal/compiler/ast/FunctionalExpression;

    invoke-direct {p3, v1, p4}, Lorg/eclipse/jdt/internal/compiler/lookup/ConstraintExceptionFormula;-><init>(Lorg/eclipse/jdt/internal/compiler/ast/FunctionalExpression;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)V

    invoke-interface {p2, p3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    instance-of p3, p1, Lorg/eclipse/jdt/internal/compiler/ast/LambdaExpression;

    if-eqz p3, :cond_14

    check-cast p1, Lorg/eclipse/jdt/internal/compiler/ast/LambdaExpression;

    iget-object p3, p1, Lorg/eclipse/jdt/internal/compiler/ast/FunctionalExpression;->enclosingScope:Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;

    invoke-virtual {p4, p3}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isFunctionalInterface(Lorg/eclipse/jdt/internal/compiler/lookup/Scope;)Z

    move-result v1

    if-eqz v1, :cond_14

    check-cast p4, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    invoke-static {p4}, Lorg/eclipse/jdt/internal/compiler/lookup/InferenceContext18;->parameterizedWithWildcard(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/ParameterizedTypeBinding;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-static {p0, p3, p1, v1}, Lorg/eclipse/jdt/internal/compiler/lookup/ConstraintExpressionFormula;->findGroundTargetType(Lorg/eclipse/jdt/internal/compiler/lookup/InferenceContext18;Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;Lorg/eclipse/jdt/internal/compiler/ast/LambdaExpression;Lorg/eclipse/jdt/internal/compiler/lookup/ParameterizedTypeBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move-result-object p4

    :cond_1
    if-eqz p4, :cond_14

    invoke-virtual {p4, p3, v0}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->getSingleAbstractMethod(Lorg/eclipse/jdt/internal/compiler/lookup/Scope;Z)Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    move-result-object p3

    if-eqz p3, :cond_14

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/InferenceContext18;->scope:Lorg/eclipse/jdt/internal/compiler/lookup/Scope;

    invoke-virtual {p1, p4, v1, p0}, Lorg/eclipse/jdt/internal/compiler/ast/LambdaExpression;->resolveExpressionExpecting(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/Scope;Lorg/eclipse/jdt/internal/compiler/lookup/InferenceContext18;)Lorg/eclipse/jdt/internal/compiler/ast/LambdaExpression;

    move-result-object p1

    if-eqz p1, :cond_14

    iget-object p3, p3, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->returnType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/ast/LambdaExpression;->resultExpressions()[Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    move-result-object p1

    if-nez p1, :cond_2

    move p4, v9

    goto :goto_0

    :cond_2
    array-length p4, p1

    :goto_0
    move v7, v9

    :goto_1
    if-lt v7, p4, :cond_3

    goto/16 :goto_6

    :cond_3
    aget-object v2, p1, v7

    invoke-virtual {p3}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->original()Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v4

    move-object v1, p0

    move-object v3, p2

    move-object v5, p3

    move-object v6, p5

    invoke-direct/range {v1 .. v6}, Lorg/eclipse/jdt/internal/compiler/lookup/InferenceContext18;->addConstraintsToC_OneExpr(Lorg/eclipse/jdt/internal/compiler/ast/Expression;Ljava/util/Set;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;)Z

    move-result v1

    if-nez v1, :cond_4

    return v9

    :cond_4
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_5
    instance-of v2, p1, Lorg/eclipse/jdt/internal/compiler/ast/Invocation;

    if-eqz v2, :cond_f

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->isPolyExpression()Z

    move-result v2

    if-eqz v2, :cond_f

    if-eqz v1, :cond_6

    return v0

    :cond_6
    move-object v8, p1

    check-cast v8, Lorg/eclipse/jdt/internal/compiler/ast/Invocation;

    invoke-interface {v8}, Lorg/eclipse/jdt/internal/compiler/ast/Invocation;->binding()Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    move-result-object v1

    if-nez v1, :cond_7

    return v0

    :cond_7
    invoke-interface {v8}, Lorg/eclipse/jdt/internal/compiler/ast/Invocation;->arguments()[Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    move-result-object v4

    if-nez v4, :cond_8

    sget-object p1, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->NO_PARAMETERS:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    :goto_2
    move-object v2, p1

    goto :goto_3

    :cond_8
    array-length p1, v4

    new-array p1, p1, [Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    goto :goto_2

    :goto_3
    move p1, v9

    :goto_4
    array-length p3, v2

    if-lt p1, p3, :cond_e

    instance-of p1, v1, Lorg/eclipse/jdt/internal/compiler/lookup/ParameterizedGenericMethodBinding;

    if-eqz p1, :cond_9

    move-object p1, v1

    check-cast p1, Lorg/eclipse/jdt/internal/compiler/lookup/ParameterizedGenericMethodBinding;

    invoke-interface {v8, p1}, Lorg/eclipse/jdt/internal/compiler/ast/Invocation;->getInferenceContext(Lorg/eclipse/jdt/internal/compiler/lookup/ParameterizedMethodBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/InferenceContext18;

    move-result-object p1

    goto :goto_5

    :cond_9
    const/4 p1, 0x0

    :goto_5
    if-eqz p1, :cond_d

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->shallowOriginal()Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    move-result-object p3

    iput-object p0, p1, Lorg/eclipse/jdt/internal/compiler/lookup/InferenceContext18;->outerContext:Lorg/eclipse/jdt/internal/compiler/lookup/InferenceContext18;

    iget p5, p1, Lorg/eclipse/jdt/internal/compiler/lookup/InferenceContext18;->stepCompleted:I

    if-ge p5, v0, :cond_a

    invoke-virtual {p3}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->isConstructor()Z

    move-result p5

    invoke-virtual {p1, p3, v2, p5}, Lorg/eclipse/jdt/internal/compiler/lookup/InferenceContext18;->inferInvocationApplicability(Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Z)V

    :cond_a
    invoke-virtual {p1, v8, p4, p3}, Lorg/eclipse/jdt/internal/compiler/lookup/InferenceContext18;->computeB3(Lorg/eclipse/jdt/internal/compiler/lookup/InvocationSite;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;)Z

    move-result p3

    if-nez p3, :cond_b

    return v9

    :cond_b
    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->genericMethod()Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    move-result-object v6

    iget v7, p1, Lorg/eclipse/jdt/internal/compiler/lookup/InferenceContext18;->inferenceKind:I

    move-object v3, p1

    move-object v5, p2

    invoke-direct/range {v3 .. v8}, Lorg/eclipse/jdt/internal/compiler/lookup/InferenceContext18;->addConstraintsToC([Lorg/eclipse/jdt/internal/compiler/ast/Expression;Ljava/util/Set;Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;ILorg/eclipse/jdt/internal/compiler/lookup/InvocationSite;)Z

    move-result p2

    if-eqz p2, :cond_c

    iget-object p2, p0, Lorg/eclipse/jdt/internal/compiler/lookup/InferenceContext18;->currentBounds:Lorg/eclipse/jdt/internal/compiler/lookup/BoundSet;

    iget-object p1, p1, Lorg/eclipse/jdt/internal/compiler/lookup/InferenceContext18;->currentBounds:Lorg/eclipse/jdt/internal/compiler/lookup/BoundSet;

    iget-object p3, p0, Lorg/eclipse/jdt/internal/compiler/lookup/InferenceContext18;->environment:Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    invoke-virtual {p2, p1, p3}, Lorg/eclipse/jdt/internal/compiler/lookup/BoundSet;->addBounds(Lorg/eclipse/jdt/internal/compiler/lookup/BoundSet;Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;)V

    return v0

    :cond_c
    return v9

    :cond_d
    invoke-virtual {p0, v1, v2}, Lorg/eclipse/jdt/internal/compiler/lookup/InferenceContext18;->getInferenceKind(Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)I

    move-result v7

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->genericMethod()Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    move-result-object v6

    move-object v3, p0

    move-object v5, p2

    invoke-direct/range {v3 .. v8}, Lorg/eclipse/jdt/internal/compiler/lookup/InferenceContext18;->addConstraintsToC([Lorg/eclipse/jdt/internal/compiler/ast/Expression;Ljava/util/Set;Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;ILorg/eclipse/jdt/internal/compiler/lookup/InvocationSite;)Z

    move-result p1

    return p1

    :cond_e
    aget-object p3, v4, p1

    iget-object p3, p3, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->resolvedType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    aput-object p3, v2, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_4

    :cond_f
    instance-of v1, p1, Lorg/eclipse/jdt/internal/compiler/ast/ConditionalExpression;

    if-eqz v1, :cond_11

    check-cast p1, Lorg/eclipse/jdt/internal/compiler/ast/ConditionalExpression;

    iget-object v4, p1, Lorg/eclipse/jdt/internal/compiler/ast/ConditionalExpression;->valueIfTrue:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    move-object v3, p0

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    move-object v8, p5

    invoke-direct/range {v3 .. v8}, Lorg/eclipse/jdt/internal/compiler/lookup/InferenceContext18;->addConstraintsToC_OneExpr(Lorg/eclipse/jdt/internal/compiler/ast/Expression;Ljava/util/Set;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;)Z

    move-result v1

    if-eqz v1, :cond_10

    iget-object v4, p1, Lorg/eclipse/jdt/internal/compiler/ast/ConditionalExpression;->valueIfFalse:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    move-object v3, p0

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    move-object v8, p5

    invoke-direct/range {v3 .. v8}, Lorg/eclipse/jdt/internal/compiler/lookup/InferenceContext18;->addConstraintsToC_OneExpr(Lorg/eclipse/jdt/internal/compiler/ast/Expression;Ljava/util/Set;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;)Z

    move-result p1

    if-eqz p1, :cond_10

    return v0

    :cond_10
    return v9

    :cond_11
    instance-of v1, p1, Lorg/eclipse/jdt/internal/compiler/ast/SwitchExpression;

    if-eqz v1, :cond_14

    check-cast p1, Lorg/eclipse/jdt/internal/compiler/ast/SwitchExpression;

    iget-object p1, p1, Lorg/eclipse/jdt/internal/compiler/ast/SwitchExpression;->resultExpressions:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_12
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_13

    return v0

    :cond_13
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    move-object v3, p0

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    move-object v8, p5

    invoke-direct/range {v3 .. v8}, Lorg/eclipse/jdt/internal/compiler/lookup/InferenceContext18;->addConstraintsToC_OneExpr(Lorg/eclipse/jdt/internal/compiler/ast/Expression;Ljava/util/Set;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;)Z

    move-result v1

    if-nez v1, :cond_12

    return v9

    :cond_14
    :goto_6
    return v0
.end method

.method private addDependencies(Lorg/eclipse/jdt/internal/compiler/lookup/BoundSet;Ljava/util/Set;Lorg/eclipse/jdt/internal/compiler/lookup/InferenceVariable;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/eclipse/jdt/internal/compiler/lookup/BoundSet;",
            "Ljava/util/Set<",
            "Lorg/eclipse/jdt/internal/compiler/lookup/InferenceVariable;",
            ">;",
            "Lorg/eclipse/jdt/internal/compiler/lookup/InferenceVariable;",
            ")V"
        }
    .end annotation

    invoke-virtual {p1, p3}, Lorg/eclipse/jdt/internal/compiler/lookup/BoundSet;->isInstantiated(Lorg/eclipse/jdt/internal/compiler/lookup/InferenceVariable;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-interface {p2, p3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/InferenceContext18;->inferenceVariables:[Lorg/eclipse/jdt/internal/compiler/lookup/InferenceVariable;

    array-length v2, v1

    if-lt v0, v2, :cond_2

    return-void

    :cond_2
    aget-object v1, v1, v0

    invoke-static {v1, p3}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->equalsEquals(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Z

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_1

    :cond_3
    invoke-virtual {p1, p3, v1}, Lorg/eclipse/jdt/internal/compiler/lookup/BoundSet;->dependsOnResolutionOf(Lorg/eclipse/jdt/internal/compiler/lookup/InferenceVariable;Lorg/eclipse/jdt/internal/compiler/lookup/InferenceVariable;)Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-direct {p0, p1, p2, v1}, Lorg/eclipse/jdt/internal/compiler/lookup/InferenceContext18;->addDependencies(Lorg/eclipse/jdt/internal/compiler/lookup/BoundSet;Ljava/util/Set;Lorg/eclipse/jdt/internal/compiler/lookup/InferenceVariable;)V

    :cond_4
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private addInferenceVariables([Lorg/eclipse/jdt/internal/compiler/lookup/InferenceVariable;)V
    .locals 5

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/InferenceContext18;->inferenceVariables:[Lorg/eclipse/jdt/internal/compiler/lookup/InferenceVariable;

    if-eqz v0, :cond_1

    array-length v1, v0

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    array-length v1, p1

    array-length v2, v0

    add-int v3, v1, v2

    new-array v3, v3, [Lorg/eclipse/jdt/internal/compiler/lookup/InferenceVariable;

    iput-object v3, p0, Lorg/eclipse/jdt/internal/compiler/lookup/InferenceContext18;->inferenceVariables:[Lorg/eclipse/jdt/internal/compiler/lookup/InferenceVariable;

    const/4 v4, 0x0

    invoke-static {v0, v4, v3, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/InferenceContext18;->inferenceVariables:[Lorg/eclipse/jdt/internal/compiler/lookup/InferenceVariable;

    invoke-static {p1, v4, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_1

    :cond_1
    :goto_0
    iput-object p1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/InferenceContext18;->inferenceVariables:[Lorg/eclipse/jdt/internal/compiler/lookup/InferenceVariable;

    :goto_1
    return-void
.end method

.method private addInitialTypeVariableSubstitutions([Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)[Lorg/eclipse/jdt/internal/compiler/lookup/InferenceVariable;
    .locals 9

    array-length v0, p1

    if-nez v0, :cond_1

    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/InferenceContext18;->inferenceVariables:[Lorg/eclipse/jdt/internal/compiler/lookup/InferenceVariable;

    if-nez p1, :cond_0

    sget-object p1, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->NO_INFERENCE_VARIABLES:[Lorg/eclipse/jdt/internal/compiler/lookup/InferenceVariable;

    iput-object p1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/InferenceContext18;->inferenceVariables:[Lorg/eclipse/jdt/internal/compiler/lookup/InferenceVariable;

    :cond_0
    sget-object p1, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->NO_INFERENCE_VARIABLES:[Lorg/eclipse/jdt/internal/compiler/lookup/InferenceVariable;

    return-object p1

    :cond_1
    new-array v1, v0, [Lorg/eclipse/jdt/internal/compiler/lookup/InferenceVariable;

    const/4 v2, 0x0

    :goto_0
    if-lt v2, v0, :cond_2

    invoke-direct {p0, v1}, Lorg/eclipse/jdt/internal/compiler/lookup/InferenceContext18;->addInferenceVariables([Lorg/eclipse/jdt/internal/compiler/lookup/InferenceVariable;)V

    return-object v1

    :cond_2
    aget-object v3, p1, v2

    iget-object v5, p0, Lorg/eclipse/jdt/internal/compiler/lookup/InferenceContext18;->currentInvocation:Lorg/eclipse/jdt/internal/compiler/lookup/InvocationSite;

    iget-object v6, p0, Lorg/eclipse/jdt/internal/compiler/lookup/InferenceContext18;->scope:Lorg/eclipse/jdt/internal/compiler/lookup/Scope;

    iget-object v7, p0, Lorg/eclipse/jdt/internal/compiler/lookup/InferenceContext18;->object:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    const/4 v8, 0x1

    move v4, v2

    invoke-static/range {v3 .. v8}, Lorg/eclipse/jdt/internal/compiler/lookup/InferenceVariable;->get(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;ILorg/eclipse/jdt/internal/compiler/lookup/InvocationSite;Lorg/eclipse/jdt/internal/compiler/lookup/Scope;Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;Z)Lorg/eclipse/jdt/internal/compiler/lookup/InferenceVariable;

    move-result-object v3

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method private addJDK_8153748ConstraintsFromExpression(Lorg/eclipse/jdt/internal/compiler/ast/Expression;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;Lorg/eclipse/jdt/internal/compiler/lookup/InferenceSubstitution;)Lorg/eclipse/jdt/internal/compiler/lookup/ReductionResult;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/internal/compiler/lookup/InferenceFailureException;
        }
    .end annotation

    instance-of v0, p1, Lorg/eclipse/jdt/internal/compiler/ast/FunctionalExpression;

    if-eqz v0, :cond_0

    check-cast p1, Lorg/eclipse/jdt/internal/compiler/ast/FunctionalExpression;

    invoke-direct {p0, p1, p2, p3}, Lorg/eclipse/jdt/internal/compiler/lookup/InferenceContext18;->addJDK_8153748ConstraintsFromFunctionalExpr(Lorg/eclipse/jdt/internal/compiler/ast/FunctionalExpression;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/ReductionResult;

    move-result-object p1

    return-object p1

    :cond_0
    instance-of v0, p1, Lorg/eclipse/jdt/internal/compiler/ast/Invocation;

    if-eqz v0, :cond_1

    invoke-virtual {p1, p3}, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->isPolyExpression(Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;)Z

    move-result v0

    if-eqz v0, :cond_1

    check-cast p1, Lorg/eclipse/jdt/internal/compiler/ast/Invocation;

    invoke-interface {p1}, Lorg/eclipse/jdt/internal/compiler/ast/Invocation;->arguments()[Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    move-result-object p2

    invoke-interface {p1}, Lorg/eclipse/jdt/internal/compiler/ast/Invocation;->binding()Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    move-result-object p3

    if-eqz p3, :cond_6

    invoke-virtual {p3}, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->isValidBinding()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {p0, p4, p1, p3}, Lorg/eclipse/jdt/internal/compiler/lookup/InferenceContext18;->enrichSubstitution(Lorg/eclipse/jdt/internal/compiler/lookup/InferenceSubstitution;Lorg/eclipse/jdt/internal/compiler/ast/Invocation;Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/InferenceSubstitution;

    move-result-object p1

    invoke-virtual {p3}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->shallowOriginal()Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    move-result-object p3

    invoke-direct {p0, p2, p3, p1}, Lorg/eclipse/jdt/internal/compiler/lookup/InferenceContext18;->addJDK_8153748ConstraintsFromInvocation([Lorg/eclipse/jdt/internal/compiler/ast/Expression;Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;Lorg/eclipse/jdt/internal/compiler/lookup/InferenceSubstitution;)Lorg/eclipse/jdt/internal/compiler/lookup/ReductionResult;

    move-result-object p1

    return-object p1

    :cond_1
    instance-of v0, p1, Lorg/eclipse/jdt/internal/compiler/ast/ConditionalExpression;

    if-eqz v0, :cond_3

    check-cast p1, Lorg/eclipse/jdt/internal/compiler/ast/ConditionalExpression;

    iget-object v0, p1, Lorg/eclipse/jdt/internal/compiler/ast/ConditionalExpression;->valueIfTrue:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    invoke-direct {p0, v0, p2, p3, p4}, Lorg/eclipse/jdt/internal/compiler/lookup/InferenceContext18;->addJDK_8153748ConstraintsFromExpression(Lorg/eclipse/jdt/internal/compiler/ast/Expression;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;Lorg/eclipse/jdt/internal/compiler/lookup/InferenceSubstitution;)Lorg/eclipse/jdt/internal/compiler/lookup/ReductionResult;

    move-result-object v0

    sget-object v1, Lorg/eclipse/jdt/internal/compiler/lookup/ReductionResult;->FALSE:Lorg/eclipse/jdt/internal/compiler/lookup/ConstraintTypeFormula;

    if-ne v0, v1, :cond_2

    return-object v1

    :cond_2
    iget-object p1, p1, Lorg/eclipse/jdt/internal/compiler/ast/ConditionalExpression;->valueIfFalse:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    invoke-direct {p0, p1, p2, p3, p4}, Lorg/eclipse/jdt/internal/compiler/lookup/InferenceContext18;->addJDK_8153748ConstraintsFromExpression(Lorg/eclipse/jdt/internal/compiler/ast/Expression;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;Lorg/eclipse/jdt/internal/compiler/lookup/InferenceSubstitution;)Lorg/eclipse/jdt/internal/compiler/lookup/ReductionResult;

    move-result-object p1

    return-object p1

    :cond_3
    instance-of v0, p1, Lorg/eclipse/jdt/internal/compiler/ast/SwitchExpression;

    if-eqz v0, :cond_6

    check-cast p1, Lorg/eclipse/jdt/internal/compiler/ast/SwitchExpression;

    sget-object v0, Lorg/eclipse/jdt/internal/compiler/lookup/ReductionResult;->FALSE:Lorg/eclipse/jdt/internal/compiler/lookup/ConstraintTypeFormula;

    iget-object p1, p1, Lorg/eclipse/jdt/internal/compiler/ast/SwitchExpression;->resultExpressions:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_5

    goto :goto_0

    :cond_5
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    invoke-direct {p0, v0, p2, p3, p4}, Lorg/eclipse/jdt/internal/compiler/lookup/InferenceContext18;->addJDK_8153748ConstraintsFromExpression(Lorg/eclipse/jdt/internal/compiler/ast/Expression;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;Lorg/eclipse/jdt/internal/compiler/lookup/InferenceSubstitution;)Lorg/eclipse/jdt/internal/compiler/lookup/ReductionResult;

    move-result-object v0

    sget-object v1, Lorg/eclipse/jdt/internal/compiler/lookup/ReductionResult;->FALSE:Lorg/eclipse/jdt/internal/compiler/lookup/ConstraintTypeFormula;

    if-ne v0, v1, :cond_4

    :goto_0
    return-object v0

    :cond_6
    const/4 p1, 0x0

    return-object p1
.end method

.method private addJDK_8153748ConstraintsFromFunctionalExpr(Lorg/eclipse/jdt/internal/compiler/ast/FunctionalExpression;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/ReductionResult;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/internal/compiler/lookup/InferenceFailureException;
        }
    .end annotation

    invoke-virtual {p1, p2, p3}, Lorg/eclipse/jdt/internal/compiler/ast/FunctionalExpression;->isPertinentToApplicability(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;)Z

    move-result p3

    if-nez p3, :cond_2

    new-instance p3, Lorg/eclipse/jdt/internal/compiler/lookup/ConstraintExpressionFormula;

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p3, p1, p2, v0, v1}, Lorg/eclipse/jdt/internal/compiler/lookup/ConstraintExpressionFormula;-><init>(Lorg/eclipse/jdt/internal/compiler/ast/Expression;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;IZ)V

    new-instance v0, Lorg/eclipse/jdt/internal/compiler/lookup/f;

    invoke-direct {v0, p0, p3}, Lorg/eclipse/jdt/internal/compiler/lookup/f;-><init>(Lorg/eclipse/jdt/internal/compiler/lookup/InferenceContext18;Lorg/eclipse/jdt/internal/compiler/lookup/ConstraintFormula;)V

    invoke-direct {p0, v0}, Lorg/eclipse/jdt/internal/compiler/lookup/InferenceContext18;->collectingInnerBounds(Lorg/eclipse/jdt/internal/compiler/lookup/InferenceContext18$InferenceOperation;)Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Lorg/eclipse/jdt/internal/compiler/lookup/g;

    invoke-direct {v0, p0, p3}, Lorg/eclipse/jdt/internal/compiler/lookup/g;-><init>(Lorg/eclipse/jdt/internal/compiler/lookup/InferenceContext18;Lorg/eclipse/jdt/internal/compiler/lookup/ConstraintFormula;)V

    invoke-direct {p0, v0}, Lorg/eclipse/jdt/internal/compiler/lookup/InferenceContext18;->collectingInnerBounds(Lorg/eclipse/jdt/internal/compiler/lookup/InferenceContext18$InferenceOperation;)Z

    move-result p3

    if-nez p3, :cond_0

    sget-object p1, Lorg/eclipse/jdt/internal/compiler/lookup/ReductionResult;->FALSE:Lorg/eclipse/jdt/internal/compiler/lookup/ConstraintTypeFormula;

    return-object p1

    :cond_0
    new-instance p3, Lorg/eclipse/jdt/internal/compiler/lookup/ConstraintExceptionFormula;

    invoke-direct {p3, p1, p2}, Lorg/eclipse/jdt/internal/compiler/lookup/ConstraintExceptionFormula;-><init>(Lorg/eclipse/jdt/internal/compiler/ast/FunctionalExpression;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)V

    new-instance p1, Lorg/eclipse/jdt/internal/compiler/lookup/h;

    invoke-direct {p1, p0, p3}, Lorg/eclipse/jdt/internal/compiler/lookup/h;-><init>(Lorg/eclipse/jdt/internal/compiler/lookup/InferenceContext18;Lorg/eclipse/jdt/internal/compiler/lookup/ConstraintFormula;)V

    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/compiler/lookup/InferenceContext18;->collectingInnerBounds(Lorg/eclipse/jdt/internal/compiler/lookup/InferenceContext18$InferenceOperation;)Z

    move-result p1

    if-nez p1, :cond_1

    sget-object p1, Lorg/eclipse/jdt/internal/compiler/lookup/ReductionResult;->FALSE:Lorg/eclipse/jdt/internal/compiler/lookup/ConstraintTypeFormula;

    return-object p1

    :cond_1
    sget-object p1, Lorg/eclipse/jdt/internal/compiler/lookup/ReductionResult;->TRUE:Lorg/eclipse/jdt/internal/compiler/lookup/ConstraintTypeFormula;

    return-object p1

    :cond_2
    const/4 p1, 0x0

    return-object p1
.end method

.method private addJDK_8153748ConstraintsFromInvocation([Lorg/eclipse/jdt/internal/compiler/ast/Expression;Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;Lorg/eclipse/jdt/internal/compiler/lookup/InferenceSubstitution;)Lorg/eclipse/jdt/internal/compiler/lookup/ReductionResult;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/internal/compiler/lookup/InferenceFailureException;
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_3

    move v1, v0

    :goto_0
    array-length v2, p1

    if-lt v0, v2, :cond_0

    move v0, v1

    goto :goto_1

    :cond_0
    aget-object v2, p1, v0

    iget-object v3, p2, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->parameters:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->isVarargs()Z

    move-result v4

    invoke-static {v3, v0, v4}, Lorg/eclipse/jdt/internal/compiler/lookup/InferenceContext18;->getParameter([Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;IZ)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v3

    invoke-virtual {p3, p3, v3}, Lorg/eclipse/jdt/internal/compiler/lookup/InferenceSubstitution;->substitute(Lorg/eclipse/jdt/internal/compiler/lookup/Substitution;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v3

    invoke-direct {p0, v2, v3, p2, p3}, Lorg/eclipse/jdt/internal/compiler/lookup/InferenceContext18;->addJDK_8153748ConstraintsFromExpression(Lorg/eclipse/jdt/internal/compiler/ast/Expression;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;Lorg/eclipse/jdt/internal/compiler/lookup/InferenceSubstitution;)Lorg/eclipse/jdt/internal/compiler/lookup/ReductionResult;

    move-result-object v2

    sget-object v3, Lorg/eclipse/jdt/internal/compiler/lookup/ReductionResult;->FALSE:Lorg/eclipse/jdt/internal/compiler/lookup/ConstraintTypeFormula;

    if-ne v2, v3, :cond_1

    return-object v3

    :cond_1
    sget-object v3, Lorg/eclipse/jdt/internal/compiler/lookup/ReductionResult;->TRUE:Lorg/eclipse/jdt/internal/compiler/lookup/ConstraintTypeFormula;

    if-ne v2, v3, :cond_2

    const/4 v1, 0x1

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    if-eqz v0, :cond_4

    sget-object p1, Lorg/eclipse/jdt/internal/compiler/lookup/ReductionResult;->TRUE:Lorg/eclipse/jdt/internal/compiler/lookup/ConstraintTypeFormula;

    goto :goto_2

    :cond_4
    const/4 p1, 0x0

    :goto_2
    return-object p1
.end method

.method public static synthetic b(Lorg/eclipse/jdt/internal/compiler/lookup/InferenceContext18;Lorg/eclipse/jdt/internal/compiler/lookup/InferenceContext18;Lorg/eclipse/jdt/internal/compiler/lookup/BoundSet;Z)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/eclipse/jdt/internal/compiler/lookup/InferenceContext18;->lambda$0(Lorg/eclipse/jdt/internal/compiler/lookup/InferenceContext18;Lorg/eclipse/jdt/internal/compiler/lookup/BoundSet;Z)V

    return-void
.end method

.method public static synthetic c(Lorg/eclipse/jdt/internal/compiler/lookup/InferenceContext18;Lorg/eclipse/jdt/internal/compiler/lookup/ConstraintFormula;)Z
    .locals 0

    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/compiler/lookup/InferenceContext18;->lambda$1(Lorg/eclipse/jdt/internal/compiler/lookup/ConstraintFormula;)Z

    move-result p0

    return p0
.end method

.method private canInfluenceAnyOf(Lorg/eclipse/jdt/internal/compiler/lookup/InferenceVariable;Ljava/util/Set;Ljava/util/List;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/eclipse/jdt/internal/compiler/lookup/InferenceVariable;",
            "Ljava/util/Set<",
            "Lorg/eclipse/jdt/internal/compiler/lookup/InferenceVariable;",
            ">;",
            "Ljava/util/List<",
            "Ljava/util/Set<",
            "Lorg/eclipse/jdt/internal/compiler/lookup/InferenceVariable;",
            ">;>;)Z"
        }
    .end annotation

    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :cond_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    return v1

    :cond_1
    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-nez p1, :cond_3

    return v1

    :cond_3
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/eclipse/jdt/internal/compiler/lookup/InferenceVariable;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 p1, 0x1

    return p1
.end method

.method private checkExpression(Lorg/eclipse/jdt/internal/compiler/ast/Expression;[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Z
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/internal/compiler/lookup/InferenceFailureException;
        }
    .end annotation

    move-object v6, p0

    move-object v0, p1

    move-object/from16 v7, p2

    move-object/from16 v8, p3

    move-object/from16 v9, p5

    instance-of v1, v0, Lorg/eclipse/jdt/internal/compiler/ast/LambdaExpression;

    const/4 v2, 0x4

    const/4 v3, 0x2

    const/4 v4, 0x6

    const/4 v10, 0x0

    const/4 v11, 0x1

    if-eqz v1, :cond_d

    move-object v1, v0

    check-cast v1, Lorg/eclipse/jdt/internal/compiler/ast/LambdaExpression;

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/compiler/ast/LambdaExpression;->argumentsTypeElided()Z

    move-result v5

    if-nez v5, :cond_d

    move v0, v10

    :goto_0
    array-length v5, v7

    if-lt v0, v5, :cond_b

    iget v0, v9, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->id:I

    if-ne v0, v4, :cond_0

    return v11

    :cond_0
    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/compiler/ast/LambdaExpression;->resultExpressions()[Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    move-result-object v12

    sget-object v0, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->NO_EXPRESSIONS:[Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    if-eq v12, v0, :cond_a

    iget-object v0, v6, Lorg/eclipse/jdt/internal/compiler/lookup/InferenceContext18;->scope:Lorg/eclipse/jdt/internal/compiler/lookup/Scope;

    invoke-virtual {v8, v0}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isFunctionalInterface(Lorg/eclipse/jdt/internal/compiler/lookup/Scope;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, v6, Lorg/eclipse/jdt/internal/compiler/lookup/InferenceContext18;->scope:Lorg/eclipse/jdt/internal/compiler/lookup/Scope;

    invoke-virtual {v9, v0}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isFunctionalInterface(Lorg/eclipse/jdt/internal/compiler/lookup/Scope;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {v8, v9}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isCompatibleWith(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {v9, v8}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isCompatibleWith(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Z

    move-result v0

    if-nez v0, :cond_3

    move v13, v10

    :goto_1
    array-length v0, v12

    if-lt v13, v0, :cond_1

    return v11

    :cond_1
    aget-object v1, v12, v13

    move-object v0, p0

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    invoke-direct/range {v0 .. v5}, Lorg/eclipse/jdt/internal/compiler/lookup/InferenceContext18;->checkExpression(Lorg/eclipse/jdt/internal/compiler/ast/Expression;[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Z

    move-result v0

    if-nez v0, :cond_2

    return v10

    :cond_2
    add-int/lit8 v13, v13, 0x1

    goto :goto_1

    :cond_3
    invoke-virtual/range {p3 .. p3}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isPrimitiveType()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual/range {p5 .. p5}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isPrimitiveType()Z

    move-result v0

    if-nez v0, :cond_6

    move v0, v10

    :goto_2
    array-length v1, v12

    if-lt v0, v1, :cond_4

    return v11

    :cond_4
    aget-object v1, v12, v0

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->isPolyExpression()Z

    move-result v1

    if-nez v1, :cond_6

    aget-object v1, v12, v0

    iget-object v1, v1, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->resolvedType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    if-eqz v1, :cond_5

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isPrimitiveType()Z

    move-result v1

    if-nez v1, :cond_5

    goto :goto_3

    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_6
    :goto_3
    invoke-virtual/range {p5 .. p5}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isPrimitiveType()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-virtual/range {p3 .. p3}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isPrimitiveType()Z

    move-result v0

    if-nez v0, :cond_a

    :goto_4
    array-length v0, v12

    if-lt v10, v0, :cond_7

    return v11

    :cond_7
    aget-object v0, v12, v10

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->isPolyExpression()Z

    move-result v0

    if-nez v0, :cond_8

    aget-object v0, v12, v10

    iget-object v0, v0, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->resolvedType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    if-eqz v0, :cond_8

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isPrimitiveType()Z

    move-result v0

    if-eqz v0, :cond_9

    :cond_8
    aget-object v0, v12, v10

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->isPolyExpression()Z

    move-result v0

    if-nez v0, :cond_9

    goto :goto_5

    :cond_9
    add-int/lit8 v10, v10, 0x1

    goto :goto_4

    :cond_a
    :goto_5
    invoke-static {v8, v9, v3}, Lorg/eclipse/jdt/internal/compiler/lookup/ConstraintTypeFormula;->create(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;I)Lorg/eclipse/jdt/internal/compiler/lookup/ConstraintTypeFormula;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/internal/compiler/lookup/InferenceContext18;->reduceAndIncorporate(Lorg/eclipse/jdt/internal/compiler/lookup/ConstraintFormula;)Z

    move-result v0

    return v0

    :cond_b
    aget-object v5, v7, v0

    aget-object v12, p4, v0

    invoke-static {v5, v12, v2}, Lorg/eclipse/jdt/internal/compiler/lookup/ConstraintTypeFormula;->create(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;I)Lorg/eclipse/jdt/internal/compiler/lookup/ConstraintTypeFormula;

    move-result-object v5

    invoke-virtual {p0, v5}, Lorg/eclipse/jdt/internal/compiler/lookup/InferenceContext18;->reduceAndIncorporate(Lorg/eclipse/jdt/internal/compiler/lookup/ConstraintFormula;)Z

    move-result v5

    if-nez v5, :cond_c

    return v10

    :cond_c
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    :cond_d
    instance-of v1, v0, Lorg/eclipse/jdt/internal/compiler/ast/ReferenceExpression;

    if-eqz v1, :cond_14

    move-object v1, v0

    check-cast v1, Lorg/eclipse/jdt/internal/compiler/ast/ReferenceExpression;

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/compiler/ast/ReferenceExpression;->isExactMethodReference()Z

    move-result v5

    if-eqz v5, :cond_14

    move v0, v10

    :goto_6
    array-length v5, v7

    if-lt v0, v5, :cond_12

    iget v0, v9, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->id:I

    if-ne v0, v4, :cond_e

    return v11

    :cond_e
    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/compiler/ast/ReferenceExpression;->getExactMethod()Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    move-result-object v0

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->isConstructor()Z

    move-result v1

    if-eqz v1, :cond_f

    iget-object v0, v0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->declaringClass:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    goto :goto_7

    :cond_f
    iget-object v0, v0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->returnType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    :goto_7
    invoke-virtual/range {p3 .. p3}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isPrimitiveType()Z

    move-result v1

    if-eqz v1, :cond_10

    invoke-virtual/range {p5 .. p5}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isPrimitiveType()Z

    move-result v1

    if-nez v1, :cond_10

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isPrimitiveType()Z

    move-result v1

    if-eqz v1, :cond_10

    return v11

    :cond_10
    invoke-virtual/range {p5 .. p5}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isPrimitiveType()Z

    move-result v1

    if-eqz v1, :cond_11

    invoke-virtual/range {p3 .. p3}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isPrimitiveType()Z

    move-result v1

    if-nez v1, :cond_11

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isPrimitiveType()Z

    move-result v0

    if-nez v0, :cond_11

    return v11

    :cond_11
    invoke-static {v8, v9, v3}, Lorg/eclipse/jdt/internal/compiler/lookup/ConstraintTypeFormula;->create(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;I)Lorg/eclipse/jdt/internal/compiler/lookup/ConstraintTypeFormula;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/internal/compiler/lookup/InferenceContext18;->reduceAndIncorporate(Lorg/eclipse/jdt/internal/compiler/lookup/ConstraintFormula;)Z

    move-result v0

    return v0

    :cond_12
    aget-object v5, v7, v0

    aget-object v12, p4, v0

    invoke-static {v5, v12, v2}, Lorg/eclipse/jdt/internal/compiler/lookup/ConstraintTypeFormula;->create(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;I)Lorg/eclipse/jdt/internal/compiler/lookup/ConstraintTypeFormula;

    move-result-object v5

    invoke-virtual {p0, v5}, Lorg/eclipse/jdt/internal/compiler/lookup/InferenceContext18;->reduceAndIncorporate(Lorg/eclipse/jdt/internal/compiler/lookup/ConstraintFormula;)Z

    move-result v5

    if-nez v5, :cond_13

    return v10

    :cond_13
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    :cond_14
    instance-of v1, v0, Lorg/eclipse/jdt/internal/compiler/ast/ConditionalExpression;

    if-eqz v1, :cond_16

    move-object v12, v0

    check-cast v12, Lorg/eclipse/jdt/internal/compiler/ast/ConditionalExpression;

    iget-object v1, v12, Lorg/eclipse/jdt/internal/compiler/ast/ConditionalExpression;->valueIfTrue:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    move-object v0, p0

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    invoke-direct/range {v0 .. v5}, Lorg/eclipse/jdt/internal/compiler/lookup/InferenceContext18;->checkExpression(Lorg/eclipse/jdt/internal/compiler/ast/Expression;[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Z

    move-result v0

    if-eqz v0, :cond_15

    iget-object v1, v12, Lorg/eclipse/jdt/internal/compiler/ast/ConditionalExpression;->valueIfFalse:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    move-object v0, p0

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    invoke-direct/range {v0 .. v5}, Lorg/eclipse/jdt/internal/compiler/lookup/InferenceContext18;->checkExpression(Lorg/eclipse/jdt/internal/compiler/ast/Expression;[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Z

    move-result v0

    if-eqz v0, :cond_15

    return v11

    :cond_15
    return v10

    :cond_16
    instance-of v1, v0, Lorg/eclipse/jdt/internal/compiler/ast/SwitchExpression;

    if-eqz v1, :cond_19

    check-cast v0, Lorg/eclipse/jdt/internal/compiler/ast/SwitchExpression;

    iget-object v0, v0, Lorg/eclipse/jdt/internal/compiler/ast/SwitchExpression;->resultExpressions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :cond_17
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_18

    return v11

    :cond_18
    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    move-object v0, p0

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    invoke-direct/range {v0 .. v5}, Lorg/eclipse/jdt/internal/compiler/lookup/InferenceContext18;->checkExpression(Lorg/eclipse/jdt/internal/compiler/ast/Expression;[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Z

    move-result v0

    if-nez v0, :cond_17

    :cond_19
    return v10
.end method

.method private collectInnerContext(Lorg/eclipse/jdt/internal/compiler/lookup/InferenceContext18;)Z
    .locals 1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/InferenceContext18;->seenInnerContexts:Ljava/util/Set;

    if-nez v0, :cond_1

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/InferenceContext18;->seenInnerContexts:Ljava/util/Set;

    :cond_1
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/InferenceContext18;->seenInnerContexts:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method private collectingInnerBounds(Lorg/eclipse/jdt/internal/compiler/lookup/InferenceContext18$InferenceOperation;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/internal/compiler/lookup/InferenceFailureException;
        }
    .end annotation

    invoke-interface {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/InferenceContext18$InferenceOperation;->perform()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/InferenceContext18;->mergeInnerBounds()V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/InferenceContext18;->innerInbox:Lorg/eclipse/jdt/internal/compiler/lookup/BoundSet;

    :goto_0
    return p1
.end method

.method public static synthetic d(Lorg/eclipse/jdt/internal/compiler/lookup/InferenceContext18;Lorg/eclipse/jdt/internal/compiler/lookup/ConstraintFormula;)Z
    .locals 0

    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/compiler/lookup/InferenceContext18;->lambda$3(Lorg/eclipse/jdt/internal/compiler/lookup/ConstraintFormula;)Z

    move-result p0

    return p0
.end method

.method private dependsOn(Ljava/util/Collection;Ljava/util/Collection;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lorg/eclipse/jdt/internal/compiler/lookup/InferenceVariable;",
            ">;",
            "Ljava/util/Collection<",
            "Lorg/eclipse/jdt/internal/compiler/lookup/InferenceVariable;",
            ">;)Z"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jdt/internal/compiler/lookup/InferenceVariable;

    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_2

    goto :goto_0

    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/eclipse/jdt/internal/compiler/lookup/InferenceVariable;

    iget-object v3, p0, Lorg/eclipse/jdt/internal/compiler/lookup/InferenceContext18;->currentBounds:Lorg/eclipse/jdt/internal/compiler/lookup/BoundSet;

    invoke-virtual {v3, v0, v2}, Lorg/eclipse/jdt/internal/compiler/lookup/BoundSet;->dependsOnResolutionOf(Lorg/eclipse/jdt/internal/compiler/lookup/InferenceVariable;Lorg/eclipse/jdt/internal/compiler/lookup/InferenceVariable;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 p1, 0x1

    return p1
.end method

.method private doesExpressionContain(Lorg/eclipse/jdt/internal/compiler/ast/Expression;Lorg/eclipse/jdt/internal/compiler/ast/Expression;)Z
    .locals 4

    iget v0, p2, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceStart:I

    iget v1, p1, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceStart:I

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-le v0, v1, :cond_1

    iget p2, p2, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceEnd:I

    iget p1, p1, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceEnd:I

    if-gt p2, p1, :cond_0

    return v2

    :cond_0
    return v3

    :cond_1
    if-ne v0, v1, :cond_2

    iget p2, p2, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceEnd:I

    iget p1, p1, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceEnd:I

    if-ge p2, p1, :cond_2

    return v2

    :cond_2
    return v3
.end method

.method private findBottomSet(Ljava/util/Set;Ljava/util/Set;Ljava/util/List;)Ljava/util/Set;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lorg/eclipse/jdt/internal/compiler/lookup/ConstraintFormula;",
            ">;",
            "Ljava/util/Set<",
            "Lorg/eclipse/jdt/internal/compiler/lookup/InferenceVariable;",
            ">;",
            "Ljava/util/List<",
            "Ljava/util/Set<",
            "Lorg/eclipse/jdt/internal/compiler/lookup/InferenceVariable;",
            ">;>;)",
            "Ljava/util/Set<",
            "Lorg/eclipse/jdt/internal/compiler/lookup/ConstraintFormula;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_0

    return-object v0

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/eclipse/jdt/internal/compiler/lookup/ConstraintFormula;

    invoke-virtual {v1, p0}, Lorg/eclipse/jdt/internal/compiler/lookup/ConstraintFormula;->inputVariables(Lorg/eclipse/jdt/internal/compiler/lookup/InferenceContext18;)Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_2

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/eclipse/jdt/internal/compiler/lookup/InferenceVariable;

    invoke-direct {p0, v3, p2, p3}, Lorg/eclipse/jdt/internal/compiler/lookup/InferenceContext18;->canInfluenceAnyOf(Lorg/eclipse/jdt/internal/compiler/lookup/InferenceVariable;Ljava/util/Set;Ljava/util/List;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_0
.end method

.method private freshCapture(Lorg/eclipse/jdt/internal/compiler/lookup/InferenceVariable;)Lorg/eclipse/jdt/internal/compiler/lookup/CaptureBinding18;
    .locals 9

    iget v6, p0, Lorg/eclipse/jdt/internal/compiler/lookup/InferenceContext18;->captureId:I

    add-int/lit8 v0, v6, 0x1

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/InferenceContext18;->captureId:I

    const-string v0, "Z"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    iget-object v2, p1, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->sourceName:[C

    const/16 v3, 0x23

    const/16 v4, 0x2d

    invoke-static {v0, v3, v1, v4, v2}, Lorg/eclipse/jdt/core/compiler/CharOperation;->concat([CC[CC[C)[C

    move-result-object v2

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/InferenceContext18;->currentInvocation:Lorg/eclipse/jdt/internal/compiler/lookup/InvocationSite;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/InvocationSite;->sourceStart()I

    move-result v0

    move v4, v0

    goto :goto_0

    :cond_0
    move v4, v1

    :goto_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/InferenceContext18;->currentInvocation:Lorg/eclipse/jdt/internal/compiler/lookup/InvocationSite;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/InvocationSite;->sourceEnd()I

    move-result v0

    move v5, v0

    goto :goto_1

    :cond_1
    move v5, v1

    :goto_1
    new-instance v8, Lorg/eclipse/jdt/internal/compiler/lookup/CaptureBinding18;

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/InferenceContext18;->scope:Lorg/eclipse/jdt/internal/compiler/lookup/Scope;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->enclosingSourceType()Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;

    move-result-object v1

    iget-object p1, p1, Lorg/eclipse/jdt/internal/compiler/lookup/InferenceVariable;->typeParameter:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->shortReadableName()[C

    move-result-object v3

    iget-object v7, p0, Lorg/eclipse/jdt/internal/compiler/lookup/InferenceContext18;->environment:Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Lorg/eclipse/jdt/internal/compiler/lookup/CaptureBinding18;-><init>(Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;[C[CIIILorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;)V

    return-object v8
.end method

.method public static getParameter([Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;IZ)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;
    .locals 0

    if-eqz p2, :cond_0

    array-length p2, p0

    add-int/lit8 p2, p2, -0x1

    if-lt p1, p2, :cond_1

    array-length p1, p0

    add-int/lit8 p1, p1, -0x1

    aget-object p0, p0, p1

    check-cast p0, Lorg/eclipse/jdt/internal/compiler/lookup/ArrayBinding;

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/ArrayBinding;->elementsType()Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object p0

    return-object p0

    :cond_0
    array-length p2, p0

    if-lt p1, p2, :cond_1

    const/4 p0, 0x0

    return-object p0

    :cond_1
    aget-object p0, p0, p1

    return-object p0
.end method

.method private getResultSubstitution(Lorg/eclipse/jdt/internal/compiler/lookup/BoundSet;)Lorg/eclipse/jdt/internal/compiler/lookup/Substitution;
    .locals 1

    new-instance v0, Lorg/eclipse/jdt/internal/compiler/lookup/InferenceContext18$3;

    invoke-direct {v0, p0, p1}, Lorg/eclipse/jdt/internal/compiler/lookup/InferenceContext18$3;-><init>(Lorg/eclipse/jdt/internal/compiler/lookup/InferenceContext18;Lorg/eclipse/jdt/internal/compiler/lookup/BoundSet;)V

    return-object v0
.end method

.method private getSmallestVariableSet(Lorg/eclipse/jdt/internal/compiler/lookup/BoundSet;[Lorg/eclipse/jdt/internal/compiler/lookup/InferenceVariable;)Ljava/util/Set;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/eclipse/jdt/internal/compiler/lookup/BoundSet;",
            "[",
            "Lorg/eclipse/jdt/internal/compiler/lookup/InferenceVariable;",
            ")",
            "Ljava/util/Set<",
            "Lorg/eclipse/jdt/internal/compiler/lookup/InferenceVariable;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    array-length v2, p2

    const/4 v3, 0x0

    :goto_0
    if-lt v3, v2, :cond_4

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    const p2, 0x7fffffff

    const/4 v0, 0x0

    :cond_0
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_1

    return-object v0

    :cond_1
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/eclipse/jdt/internal/compiler/lookup/InferenceVariable;

    invoke-virtual {p1, v2}, Lorg/eclipse/jdt/internal/compiler/lookup/BoundSet;->isInstantiated(Lorg/eclipse/jdt/internal/compiler/lookup/InferenceVariable;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Set;

    if-nez v3, :cond_2

    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    invoke-direct {p0, p1, v3, v2}, Lorg/eclipse/jdt/internal/compiler/lookup/InferenceContext18;->addDependencies(Lorg/eclipse/jdt/internal/compiler/lookup/BoundSet;Ljava/util/Set;Lorg/eclipse/jdt/internal/compiler/lookup/InferenceVariable;)V

    :cond_2
    invoke-interface {v3}, Ljava/util/Set;->size()I

    move-result v2

    const/4 v5, 0x1

    if-ne v2, v5, :cond_3

    return-object v3

    :cond_3
    if-ge v2, p2, :cond_0

    move p2, v2

    move-object v0, v3

    goto :goto_1

    :cond_4
    aget-object v4, p2, v3

    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    invoke-direct {p0, p1, v5, v4}, Lorg/eclipse/jdt/internal/compiler/lookup/InferenceContext18;->addDependencies(Lorg/eclipse/jdt/internal/compiler/lookup/BoundSet;Ljava/util/Set;Lorg/eclipse/jdt/internal/compiler/lookup/InferenceVariable;)V

    invoke-interface {v1, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v0, v5}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method private isReachable(Ljava/util/Map;Lorg/eclipse/jdt/internal/compiler/lookup/ConstraintFormula;Lorg/eclipse/jdt/internal/compiler/lookup/ConstraintFormula;Ljava/util/Set;Ljava/util/Set;)Z
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Lorg/eclipse/jdt/internal/compiler/lookup/ConstraintFormula;",
            "Ljava/util/Set<",
            "Lorg/eclipse/jdt/internal/compiler/lookup/ConstraintFormula;",
            ">;>;",
            "Lorg/eclipse/jdt/internal/compiler/lookup/ConstraintFormula;",
            "Lorg/eclipse/jdt/internal/compiler/lookup/ConstraintFormula;",
            "Ljava/util/Set<",
            "Lorg/eclipse/jdt/internal/compiler/lookup/ConstraintFormula;",
            ">;",
            "Ljava/util/Set<",
            "Lorg/eclipse/jdt/internal/compiler/lookup/ConstraintFormula;",
            ">;)Z"
        }
    .end annotation

    const/4 v0, 0x1

    if-ne p2, p3, :cond_0

    invoke-interface {p5, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return v0

    :cond_0
    invoke-interface {p4, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Set;

    if-eqz v1, :cond_4

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_3

    goto :goto_0

    :cond_3
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v6, v3

    check-cast v6, Lorg/eclipse/jdt/internal/compiler/lookup/ConstraintFormula;

    move-object v4, p0

    move-object v5, p1

    move-object v7, p3

    move-object v8, p4

    move-object v9, p5

    invoke-direct/range {v4 .. v9}, Lorg/eclipse/jdt/internal/compiler/lookup/InferenceContext18;->isReachable(Ljava/util/Map;Lorg/eclipse/jdt/internal/compiler/lookup/ConstraintFormula;Lorg/eclipse/jdt/internal/compiler/lookup/ConstraintFormula;Ljava/util/Set;Ljava/util/Set;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {p5, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return v0

    :cond_4
    :goto_0
    return v2
.end method

.method public static isSameSite(Lorg/eclipse/jdt/internal/compiler/lookup/InvocationSite;Lorg/eclipse/jdt/internal/compiler/lookup/InvocationSite;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p0, :cond_2

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    invoke-interface {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/InvocationSite;->sourceStart()I

    move-result v2

    invoke-interface {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/InvocationSite;->sourceStart()I

    move-result v3

    if-ne v2, v3, :cond_2

    invoke-interface {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/InvocationSite;->sourceEnd()I

    move-result p0

    invoke-interface {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/InvocationSite;->sourceEnd()I

    move-result p1

    if-ne p0, p1, :cond_2

    return v0

    :cond_2
    :goto_0
    return v1
.end method

.method private isTypeVariableOfCandidate(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;)Z
    .locals 2

    instance-of v0, p1, Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;

    if-eqz v0, :cond_1

    check-cast p1, Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;

    iget-object p1, p1, Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;->declaringElement:Lorg/eclipse/jdt/internal/compiler/lookup/Binding;

    const/4 v0, 0x1

    if-ne p1, p2, :cond_0

    return v0

    :cond_0
    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->isConstructor()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object p2, p2, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->declaringClass:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    if-ne p1, p2, :cond_1

    return v0

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method private synthetic lambda$0(Lorg/eclipse/jdt/internal/compiler/lookup/InferenceContext18;Lorg/eclipse/jdt/internal/compiler/lookup/BoundSet;Z)V
    .locals 1

    iget-boolean v0, p1, Lorg/eclipse/jdt/internal/compiler/lookup/InferenceContext18;->directlyAcceptingInnerBounds:Z

    if-eqz v0, :cond_0

    iget-object p1, p1, Lorg/eclipse/jdt/internal/compiler/lookup/InferenceContext18;->currentBounds:Lorg/eclipse/jdt/internal/compiler/lookup/BoundSet;

    iget-object p3, p0, Lorg/eclipse/jdt/internal/compiler/lookup/InferenceContext18;->environment:Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    invoke-virtual {p1, p2, p3}, Lorg/eclipse/jdt/internal/compiler/lookup/BoundSet;->addBounds(Lorg/eclipse/jdt/internal/compiler/lookup/BoundSet;Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;)V

    goto :goto_1

    :cond_0
    iget-object v0, p1, Lorg/eclipse/jdt/internal/compiler/lookup/InferenceContext18;->innerInbox:Lorg/eclipse/jdt/internal/compiler/lookup/BoundSet;

    if-nez v0, :cond_2

    if-eqz p3, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/lookup/BoundSet;->copy()Lorg/eclipse/jdt/internal/compiler/lookup/BoundSet;

    move-result-object p2

    :goto_0
    iput-object p2, p1, Lorg/eclipse/jdt/internal/compiler/lookup/InferenceContext18;->innerInbox:Lorg/eclipse/jdt/internal/compiler/lookup/BoundSet;

    goto :goto_1

    :cond_2
    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/InferenceContext18;->environment:Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    invoke-virtual {v0, p2, p1}, Lorg/eclipse/jdt/internal/compiler/lookup/BoundSet;->addBounds(Lorg/eclipse/jdt/internal/compiler/lookup/BoundSet;Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;)V

    :goto_1
    return-void
.end method

.method private synthetic lambda$1(Lorg/eclipse/jdt/internal/compiler/lookup/ConstraintFormula;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/internal/compiler/lookup/InferenceFailureException;
        }
    .end annotation

    invoke-virtual {p1, p0}, Lorg/eclipse/jdt/internal/compiler/lookup/ConstraintFormula;->inputVariables(Lorg/eclipse/jdt/internal/compiler/lookup/InferenceContext18;)Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result p1

    return p1
.end method

.method private synthetic lambda$2(Lorg/eclipse/jdt/internal/compiler/lookup/ConstraintFormula;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/internal/compiler/lookup/InferenceFailureException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/internal/compiler/lookup/InferenceContext18;->reduceAndIncorporate(Lorg/eclipse/jdt/internal/compiler/lookup/ConstraintFormula;)Z

    move-result p1

    return p1
.end method

.method private synthetic lambda$3(Lorg/eclipse/jdt/internal/compiler/lookup/ConstraintFormula;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/internal/compiler/lookup/InferenceFailureException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/internal/compiler/lookup/InferenceContext18;->reduceAndIncorporate(Lorg/eclipse/jdt/internal/compiler/lookup/ConstraintFormula;)Z

    move-result p1

    return p1
.end method

.method private mergeInnerBounds()V
    .locals 3

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/InferenceContext18;->innerInbox:Lorg/eclipse/jdt/internal/compiler/lookup/BoundSet;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/InferenceContext18;->currentBounds:Lorg/eclipse/jdt/internal/compiler/lookup/BoundSet;

    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/lookup/InferenceContext18;->environment:Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    invoke-virtual {v1, v0, v2}, Lorg/eclipse/jdt/internal/compiler/lookup/BoundSet;->addBounds(Lorg/eclipse/jdt/internal/compiler/lookup/BoundSet;Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/InferenceContext18;->innerInbox:Lorg/eclipse/jdt/internal/compiler/lookup/BoundSet;

    :cond_0
    return-void
.end method

.method public static missingImplementation(Ljava/lang/String;)V
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0, p0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private moreSpecificMain(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/ast/Expression;)Ljava/lang/Boolean;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/internal/compiler/lookup/InferenceFailureException;
        }
    .end annotation

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isProperType(Z)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p2, v0}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isProperType(Z)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/InferenceContext18;->scope:Lorg/eclipse/jdt/internal/compiler/lookup/Scope;

    invoke-virtual {p3, p1, p2, v0}, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->sIsMoreSpecific(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/Scope;)Z

    move-result p1

    if-eqz p1, :cond_0

    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_0

    :cond_0
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    :goto_0
    return-object p1

    :cond_1
    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/InferenceContext18;->scope:Lorg/eclipse/jdt/internal/compiler/lookup/Scope;

    invoke-virtual {p2, v1}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isFunctionalInterface(Lorg/eclipse/jdt/internal/compiler/lookup/Scope;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_2

    return-object v2

    :cond_2
    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->original()Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v1

    iget-object v3, p0, Lorg/eclipse/jdt/internal/compiler/lookup/InferenceContext18;->scope:Lorg/eclipse/jdt/internal/compiler/lookup/Scope;

    invoke-virtual {p1, v3}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isFunctionalInterface(Lorg/eclipse/jdt/internal/compiler/lookup/Scope;)Z

    move-result v3

    if-eqz v3, :cond_b

    invoke-direct {p0, p1, v1}, Lorg/eclipse/jdt/internal/compiler/lookup/InferenceContext18;->siSuperI(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Z

    move-result v3

    if-nez v3, :cond_b

    invoke-direct {p0, p1, v1}, Lorg/eclipse/jdt/internal/compiler/lookup/InferenceContext18;->siSubI(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto/16 :goto_8

    :cond_3
    instance-of v3, p1, Lorg/eclipse/jdt/internal/compiler/lookup/IntersectionTypeBinding18;

    const/4 v4, 0x0

    if-eqz v3, :cond_8

    move-object v3, p1

    check-cast v3, Lorg/eclipse/jdt/internal/compiler/lookup/IntersectionTypeBinding18;

    iget-object v3, v3, Lorg/eclipse/jdt/internal/compiler/lookup/IntersectionTypeBinding18;->intersectingTypes:[Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move v5, v4

    :goto_1
    array-length v6, v3

    if-lt v5, v6, :cond_4

    return-object v2

    :cond_4
    aget-object v6, v3, v5

    invoke-direct {p0, v6, v1}, Lorg/eclipse/jdt/internal/compiler/lookup/InferenceContext18;->siSuperI(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Z

    move-result v6

    if-nez v6, :cond_7

    move v5, v4

    :goto_2
    array-length v6, v3

    if-lt v5, v6, :cond_5

    goto :goto_3

    :cond_5
    aget-object v6, v3, v5

    invoke-direct {p0, v6, v1}, Lorg/eclipse/jdt/internal/compiler/lookup/InferenceContext18;->siSubI(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Z

    move-result v6

    if-eqz v6, :cond_6

    return-object v2

    :cond_6
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_7
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_8
    :goto_3
    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/InferenceContext18;->scope:Lorg/eclipse/jdt/internal/compiler/lookup/Scope;

    iget v2, p3, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceStart:I

    iget v3, p3, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceEnd:I

    invoke-virtual {p1, v1, v2, v3}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->capture(Lorg/eclipse/jdt/internal/compiler/lookup/Scope;II)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object p1

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/InferenceContext18;->scope:Lorg/eclipse/jdt/internal/compiler/lookup/Scope;

    invoke-virtual {p1, v1, v4}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->getSingleAbstractMethod(Lorg/eclipse/jdt/internal/compiler/lookup/Scope;Z)Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    move-result-object p1

    iget-object v3, p1, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->parameters:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->isConstructor()Z

    move-result v1

    if-eqz v1, :cond_9

    iget-object p1, p1, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->declaringClass:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    :goto_4
    move-object v4, p1

    goto :goto_5

    :cond_9
    iget-object p1, p1, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->returnType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    goto :goto_4

    :goto_5
    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/InferenceContext18;->scope:Lorg/eclipse/jdt/internal/compiler/lookup/Scope;

    invoke-virtual {p2, p1, v0}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->getSingleAbstractMethod(Lorg/eclipse/jdt/internal/compiler/lookup/Scope;Z)Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    move-result-object p1

    iget-object v5, p1, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->parameters:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->isConstructor()Z

    move-result p2

    if-eqz p2, :cond_a

    iget-object p1, p1, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->declaringClass:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    :goto_6
    move-object v6, p1

    goto :goto_7

    :cond_a
    iget-object p1, p1, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->returnType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    goto :goto_6

    :goto_7
    move-object v1, p0

    move-object v2, p3

    invoke-direct/range {v1 .. v6}, Lorg/eclipse/jdt/internal/compiler/lookup/InferenceContext18;->checkExpression(Lorg/eclipse/jdt/internal/compiler/ast/Expression;[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    :cond_b
    :goto_8
    return-object v2
.end method

.method public static parameterizedWithWildcard(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/ParameterizedTypeBinding;
    .locals 4

    const/4 v0, 0x0

    if-eqz p0, :cond_3

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->kind()I

    move-result v1

    const/16 v2, 0x104

    if-eq v1, v2, :cond_0

    goto :goto_1

    :cond_0
    check-cast p0, Lorg/eclipse/jdt/internal/compiler/lookup/ParameterizedTypeBinding;

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ParameterizedTypeBinding;->arguments:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    if-eqz v1, :cond_3

    const/4 v2, 0x0

    :goto_0
    array-length v3, v1

    if-lt v2, v3, :cond_1

    goto :goto_1

    :cond_1
    aget-object v3, v1, v2

    invoke-virtual {v3}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isWildcard()Z

    move-result v3

    if-eqz v3, :cond_2

    return-object p0

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    return-object v0
.end method

.method private pickFromCycle(Ljava/util/Set;)Lorg/eclipse/jdt/internal/compiler/lookup/ConstraintFormula;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lorg/eclipse/jdt/internal/compiler/lookup/ConstraintFormula;",
            ">;)",
            "Lorg/eclipse/jdt/internal/compiler/lookup/ConstraintFormula;"
        }
    .end annotation

    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    new-instance v7, Ljava/util/HashSet;

    invoke-direct {v7}, Ljava/util/HashSet;-><init>()V

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_12

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0, p1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-interface {v0, v7}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_f

    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v3, p1

    goto :goto_2

    :cond_0
    move-object v3, v1

    :goto_2
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_1
    :goto_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-nez p1, :cond_e

    invoke-interface {v4}, Ljava/util/Set;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_7

    :cond_2
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_9

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_5
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_7

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v2, -0x1

    const/4 v3, 0x0

    :cond_3
    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_6

    if-eqz v3, :cond_4

    return-object v3

    :cond_4
    move-object v3, v4

    :goto_7
    invoke-interface {v3}, Ljava/util/Set;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_5

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/eclipse/jdt/internal/compiler/lookup/ConstraintFormula;

    return-object p1

    :cond_5
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "cannot pick constraint from cyclic set"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_6
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/eclipse/jdt/internal/compiler/lookup/ConstraintExpressionFormula;

    invoke-direct {p0, v5, p1, v1}, Lorg/eclipse/jdt/internal/compiler/lookup/InferenceContext18;->rankNode(Lorg/eclipse/jdt/internal/compiler/lookup/ConstraintExpressionFormula;Ljava/util/Map;Ljava/util/Map;)I

    move-result v6

    if-le v6, v2, :cond_3

    move-object v3, v5

    move v2, v6

    goto :goto_6

    :cond_7
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/eclipse/jdt/internal/compiler/lookup/ConstraintExpressionFormula;

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Set;

    if-nez v5, :cond_8

    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    invoke-interface {v1, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_8
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jdt/internal/compiler/lookup/ConstraintExpressionFormula;

    invoke-interface {v5, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_5

    :cond_9
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/eclipse/jdt/internal/compiler/lookup/ConstraintFormula;

    move-object v2, v1

    check-cast v2, Lorg/eclipse/jdt/internal/compiler/lookup/ConstraintExpressionFormula;

    iget-object v6, v2, Lorg/eclipse/jdt/internal/compiler/lookup/ConstraintExpressionFormula;->left:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_a
    :goto_8
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_b

    goto/16 :goto_4

    :cond_b
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/eclipse/jdt/internal/compiler/lookup/ConstraintFormula;

    if-ne v1, v3, :cond_c

    goto :goto_8

    :cond_c
    move-object v5, v3

    check-cast v5, Lorg/eclipse/jdt/internal/compiler/lookup/ConstraintExpressionFormula;

    iget-object v8, v5, Lorg/eclipse/jdt/internal/compiler/lookup/ConstraintExpressionFormula;->left:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    invoke-direct {p0, v6, v8}, Lorg/eclipse/jdt/internal/compiler/lookup/InferenceContext18;->doesExpressionContain(Lorg/eclipse/jdt/internal/compiler/ast/Expression;Lorg/eclipse/jdt/internal/compiler/ast/Expression;)Z

    move-result v8

    if-eqz v8, :cond_a

    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/eclipse/jdt/internal/compiler/lookup/ConstraintExpressionFormula;

    if-eqz v3, :cond_d

    iget-object v3, v3, Lorg/eclipse/jdt/internal/compiler/lookup/ConstraintExpressionFormula;->left:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    invoke-direct {p0, v3, v6}, Lorg/eclipse/jdt/internal/compiler/lookup/InferenceContext18;->doesExpressionContain(Lorg/eclipse/jdt/internal/compiler/ast/Expression;Lorg/eclipse/jdt/internal/compiler/ast/Expression;)Z

    move-result v3

    if-eqz v3, :cond_a

    :cond_d
    invoke-interface {p1, v5, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_8

    :cond_e
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/eclipse/jdt/internal/compiler/lookup/ConstraintFormula;

    instance-of v0, p1, Lorg/eclipse/jdt/internal/compiler/lookup/ConstraintExpressionFormula;

    if-eqz v0, :cond_1

    invoke-interface {v4, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    :cond_f
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/eclipse/jdt/internal/compiler/lookup/ConstraintFormula;

    invoke-virtual {v3, p0}, Lorg/eclipse/jdt/internal/compiler/lookup/ConstraintFormula;->inputVariables(Lorg/eclipse/jdt/internal/compiler/lookup/InferenceContext18;)Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_10
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_11

    invoke-interface {v1, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    :cond_11
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/eclipse/jdt/internal/compiler/lookup/ConstraintFormula;

    invoke-virtual {v6, p0}, Lorg/eclipse/jdt/internal/compiler/lookup/ConstraintFormula;->outputVariables(Lorg/eclipse/jdt/internal/compiler/lookup/InferenceContext18;)Ljava/util/Collection;

    move-result-object v6

    invoke-direct {p0, v4, v6}, Lorg/eclipse/jdt/internal/compiler/lookup/InferenceContext18;->dependsOn(Ljava/util/Collection;Ljava/util/Collection;)Z

    move-result v6

    if-eqz v6, :cond_10

    goto/16 :goto_1

    :cond_12
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Lorg/eclipse/jdt/internal/compiler/lookup/ConstraintFormula;

    invoke-virtual {v9, p0}, Lorg/eclipse/jdt/internal/compiler/lookup/ConstraintFormula;->inputVariables(Lorg/eclipse/jdt/internal/compiler/lookup/InferenceContext18;)Ljava/util/Collection;

    move-result-object v10

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :cond_13
    :goto_9
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_14

    goto/16 :goto_0

    :cond_14
    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lorg/eclipse/jdt/internal/compiler/lookup/ConstraintFormula;

    if-ne v2, v9, :cond_15

    goto :goto_9

    :cond_15
    invoke-virtual {v2, p0}, Lorg/eclipse/jdt/internal/compiler/lookup/ConstraintFormula;->outputVariables(Lorg/eclipse/jdt/internal/compiler/lookup/InferenceContext18;)Ljava/util/Collection;

    move-result-object v0

    invoke-direct {p0, v10, v0}, Lorg/eclipse/jdt/internal/compiler/lookup/InferenceContext18;->dependsOn(Ljava/util/Collection;Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_13

    invoke-virtual {v6, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    if-nez v0, :cond_16

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    invoke-virtual {v6, v9, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_16
    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    new-instance v12, Ljava/util/HashSet;

    invoke-direct {v12}, Ljava/util/HashSet;-><init>()V

    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    move-object v0, p0

    move-object v1, v6

    move-object v3, v9

    move-object v5, v12

    invoke-direct/range {v0 .. v5}, Lorg/eclipse/jdt/internal/compiler/lookup/InferenceContext18;->isReachable(Ljava/util/Map;Lorg/eclipse/jdt/internal/compiler/lookup/ConstraintFormula;Lorg/eclipse/jdt/internal/compiler/lookup/ConstraintFormula;Ljava/util/Set;Ljava/util/Set;)Z

    move-result v0

    if-eqz v0, :cond_13

    invoke-interface {v7, v12}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    goto :goto_9
.end method

.method private pushBoundsToOuter()V
    .locals 4

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/InferenceContext18;->outerContext:Lorg/eclipse/jdt/internal/compiler/lookup/InferenceContext18;

    if-eqz v0, :cond_2

    iget v1, v0, Lorg/eclipse/jdt/internal/compiler/lookup/InferenceContext18;->stepCompleted:I

    const/4 v2, 0x1

    if-lt v1, v2, :cond_2

    iget-object v1, v0, Lorg/eclipse/jdt/internal/compiler/lookup/InferenceContext18;->currentInvocation:Lorg/eclipse/jdt/internal/compiler/lookup/InvocationSite;

    instance-of v1, v1, Lorg/eclipse/jdt/internal/compiler/ast/Invocation;

    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/lookup/InferenceContext18;->currentBounds:Lorg/eclipse/jdt/internal/compiler/lookup/BoundSet;

    if-eqz v1, :cond_0

    invoke-virtual {v2}, Lorg/eclipse/jdt/internal/compiler/lookup/BoundSet;->copy()Lorg/eclipse/jdt/internal/compiler/lookup/BoundSet;

    move-result-object v2

    :cond_0
    new-instance v3, Lorg/eclipse/jdt/internal/compiler/lookup/i;

    invoke-direct {v3, p0, v0, v2, v1}, Lorg/eclipse/jdt/internal/compiler/lookup/i;-><init>(Lorg/eclipse/jdt/internal/compiler/lookup/InferenceContext18;Lorg/eclipse/jdt/internal/compiler/lookup/InferenceContext18;Lorg/eclipse/jdt/internal/compiler/lookup/BoundSet;Z)V

    if-eqz v1, :cond_1

    iput-object v3, p0, Lorg/eclipse/jdt/internal/compiler/lookup/InferenceContext18;->pushToOuterJob:Ljava/lang/Runnable;

    goto :goto_0

    :cond_1
    invoke-interface {v3}, Ljava/lang/Runnable;->run()V

    :cond_2
    :goto_0
    return-void
.end method

.method private rankNode(Lorg/eclipse/jdt/internal/compiler/lookup/ConstraintExpressionFormula;Ljava/util/Map;Ljava/util/Map;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/eclipse/jdt/internal/compiler/lookup/ConstraintExpressionFormula;",
            "Ljava/util/Map<",
            "Lorg/eclipse/jdt/internal/compiler/lookup/ConstraintExpressionFormula;",
            "Lorg/eclipse/jdt/internal/compiler/lookup/ConstraintExpressionFormula;",
            ">;",
            "Ljava/util/Map<",
            "Lorg/eclipse/jdt/internal/compiler/lookup/ConstraintExpressionFormula;",
            "Ljava/util/Set<",
            "Lorg/eclipse/jdt/internal/compiler/lookup/ConstraintExpressionFormula;",
            ">;>;)I"
        }
    .end annotation

    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 p1, -0x1

    return p1

    :cond_0
    invoke-interface {p3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Set;

    const/4 v0, 0x1

    if-nez p1, :cond_1

    return v0

    :cond_1
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_3

    return v0

    :cond_3
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/eclipse/jdt/internal/compiler/lookup/ConstraintExpressionFormula;

    invoke-direct {p0, v1, p2, p3}, Lorg/eclipse/jdt/internal/compiler/lookup/InferenceContext18;->rankNode(Lorg/eclipse/jdt/internal/compiler/lookup/ConstraintExpressionFormula;Ljava/util/Map;Ljava/util/Map;)I

    move-result v1

    if-lez v1, :cond_2

    add-int/2addr v0, v1

    goto :goto_0
.end method

.method private reduce()Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/internal/compiler/lookup/InferenceFailureException;
        }
    .end annotation

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/lookup/InferenceContext18;->initialConstraints:[Lorg/eclipse/jdt/internal/compiler/lookup/ConstraintFormula;

    const/4 v3, 0x0

    if-eqz v2, :cond_3

    array-length v4, v2

    if-lt v1, v4, :cond_0

    goto :goto_2

    :cond_0
    aget-object v4, v2, v1

    if-nez v4, :cond_1

    goto :goto_1

    :cond_1
    aput-object v3, v2, v1

    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/lookup/InferenceContext18;->currentBounds:Lorg/eclipse/jdt/internal/compiler/lookup/BoundSet;

    invoke-virtual {v2, p0, v4}, Lorg/eclipse/jdt/internal/compiler/lookup/BoundSet;->reduceOneConstraint(Lorg/eclipse/jdt/internal/compiler/lookup/InferenceContext18;Lorg/eclipse/jdt/internal/compiler/lookup/ConstraintFormula;)Z

    move-result v2

    if-nez v2, :cond_2

    return v0

    :cond_2
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    :goto_2
    iput-object v3, p0, Lorg/eclipse/jdt/internal/compiler/lookup/InferenceContext18;->initialConstraints:[Lorg/eclipse/jdt/internal/compiler/lookup/ConstraintFormula;

    const/4 v0, 0x1

    return v0
.end method

.method private resolve([Lorg/eclipse/jdt/internal/compiler/lookup/InferenceVariable;)Lorg/eclipse/jdt/internal/compiler/lookup/BoundSet;
    .locals 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/internal/compiler/lookup/InferenceFailureException;
        }
    .end annotation

    move-object/from16 v6, p0

    const/4 v7, 0x0

    iput v7, v6, Lorg/eclipse/jdt/internal/compiler/lookup/InferenceContext18;->captureId:I

    iget-object v0, v6, Lorg/eclipse/jdt/internal/compiler/lookup/InferenceContext18;->currentBounds:Lorg/eclipse/jdt/internal/compiler/lookup/BoundSet;

    iget-object v1, v6, Lorg/eclipse/jdt/internal/compiler/lookup/InferenceContext18;->inferenceVariables:[Lorg/eclipse/jdt/internal/compiler/lookup/InferenceVariable;

    if-eqz v1, :cond_17

    move-object/from16 v9, p1

    :goto_0
    move-object v8, v0

    :cond_0
    invoke-direct {v6, v8, v9}, Lorg/eclipse/jdt/internal/compiler/lookup/InferenceContext18;->getSmallestVariableSet(Lorg/eclipse/jdt/internal/compiler/lookup/BoundSet;[Lorg/eclipse/jdt/internal/compiler/lookup/InferenceVariable;)Ljava/util/Set;

    move-result-object v0

    if-nez v0, :cond_1

    move-object v0, v8

    goto/16 :goto_e

    :cond_1
    iget-object v1, v6, Lorg/eclipse/jdt/internal/compiler/lookup/InferenceContext18;->inferenceVariables:[Lorg/eclipse/jdt/internal/compiler/lookup/InferenceVariable;

    invoke-virtual {v8, v1}, Lorg/eclipse/jdt/internal/compiler/lookup/BoundSet;->numUninstantiatedVariables([Lorg/eclipse/jdt/internal/compiler/lookup/InferenceVariable;)I

    move-result v10

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v11

    if-lez v11, :cond_0

    new-array v1, v11, [Lorg/eclipse/jdt/internal/compiler/lookup/InferenceVariable;

    invoke-interface {v0, v1}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    move-object v12, v1

    check-cast v12, [Lorg/eclipse/jdt/internal/compiler/lookup/InferenceVariable;

    invoke-virtual {v8, v0}, Lorg/eclipse/jdt/internal/compiler/lookup/BoundSet;->hasCaptureBound(Ljava/util/Set;)Z

    move-result v0

    const/4 v13, 0x0

    const/4 v14, 0x4

    const/4 v15, 0x1

    if-nez v0, :cond_b

    invoke-virtual {v8}, Lorg/eclipse/jdt/internal/compiler/lookup/BoundSet;->copy()Lorg/eclipse/jdt/internal/compiler/lookup/BoundSet;

    move-result-object v0

    move v1, v7

    :goto_1
    array-length v2, v12

    if-lt v1, v2, :cond_2

    invoke-virtual {v0, v6}, Lorg/eclipse/jdt/internal/compiler/lookup/BoundSet;->incorporate(Lorg/eclipse/jdt/internal/compiler/lookup/InferenceContext18;)Z

    move-result v1

    if-eqz v1, :cond_b

    goto :goto_0

    :cond_2
    aget-object v2, v12, v1

    invoke-virtual {v0, v2, v15}, Lorg/eclipse/jdt/internal/compiler/lookup/BoundSet;->lowerBounds(Lorg/eclipse/jdt/internal/compiler/lookup/InferenceVariable;Z)[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v3

    sget-object v4, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->NO_TYPES:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    if-eq v3, v4, :cond_5

    iget-object v4, v6, Lorg/eclipse/jdt/internal/compiler/lookup/InferenceContext18;->scope:Lorg/eclipse/jdt/internal/compiler/lookup/Scope;

    invoke-virtual {v4, v3}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->lowerUpperBound([Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v3

    sget-object v4, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->VOID:Lorg/eclipse/jdt/internal/compiler/lookup/VoidTypeBinding;

    if-eq v3, v4, :cond_4

    if-nez v3, :cond_3

    goto :goto_2

    :cond_3
    new-instance v4, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBound;

    invoke-direct {v4, v2, v3, v14}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBound;-><init>(Lorg/eclipse/jdt/internal/compiler/lookup/InferenceVariable;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;I)V

    iget-object v2, v6, Lorg/eclipse/jdt/internal/compiler/lookup/InferenceContext18;->environment:Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    invoke-virtual {v0, v4, v2}, Lorg/eclipse/jdt/internal/compiler/lookup/BoundSet;->addBound(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBound;Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;)V

    goto :goto_4

    :cond_4
    :goto_2
    return-object v13

    :cond_5
    invoke-virtual {v0, v2, v15}, Lorg/eclipse/jdt/internal/compiler/lookup/BoundSet;->upperBounds(Lorg/eclipse/jdt/internal/compiler/lookup/InferenceVariable;Z)[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v3

    iget-object v5, v0, Lorg/eclipse/jdt/internal/compiler/lookup/BoundSet;->inThrows:Ljava/util/Set;

    invoke-virtual {v2}, Lorg/eclipse/jdt/internal/compiler/lookup/InferenceVariable;->prototype()Lorg/eclipse/jdt/internal/compiler/lookup/InferenceVariable;

    move-result-object v13

    invoke-interface {v5, v13}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-virtual {v0, v2, v3}, Lorg/eclipse/jdt/internal/compiler/lookup/BoundSet;->hasOnlyTrivialExceptionBounds(Lorg/eclipse/jdt/internal/compiler/lookup/InferenceVariable;[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Z

    move-result v5

    if-eqz v5, :cond_6

    iget-object v3, v6, Lorg/eclipse/jdt/internal/compiler/lookup/InferenceContext18;->scope:Lorg/eclipse/jdt/internal/compiler/lookup/Scope;

    sget-object v4, Lorg/eclipse/jdt/internal/compiler/lookup/TypeConstants;->JAVA_LANG_RUNTIMEEXCEPTION:[[C

    const/4 v5, 0x3

    invoke-virtual {v3, v4, v5}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->getType([[CI)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v3

    new-instance v4, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBound;

    invoke-direct {v4, v2, v3, v14}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBound;-><init>(Lorg/eclipse/jdt/internal/compiler/lookup/InferenceVariable;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;I)V

    iget-object v2, v6, Lorg/eclipse/jdt/internal/compiler/lookup/InferenceContext18;->environment:Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    invoke-virtual {v0, v4, v2}, Lorg/eclipse/jdt/internal/compiler/lookup/BoundSet;->addBound(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBound;Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;)V

    goto :goto_4

    :cond_6
    iget-object v5, v6, Lorg/eclipse/jdt/internal/compiler/lookup/InferenceContext18;->object:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    if-eq v3, v4, :cond_a

    array-length v4, v3

    if-ne v4, v15, :cond_7

    aget-object v5, v3, v7

    goto :goto_3

    :cond_7
    check-cast v3, [Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    invoke-static {v3}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->greaterLowerBound([Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;)[Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move-result-object v3

    if-nez v3, :cond_8

    const/4 v4, 0x0

    return-object v4

    :cond_8
    array-length v4, v3

    if-ne v4, v15, :cond_9

    aget-object v5, v3, v7

    goto :goto_3

    :cond_9
    iget-object v4, v6, Lorg/eclipse/jdt/internal/compiler/lookup/InferenceContext18;->environment:Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    invoke-virtual {v4, v3}, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->createIntersectionType18([Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v3

    move-object v5, v3

    check-cast v5, Lorg/eclipse/jdt/internal/compiler/lookup/IntersectionTypeBinding18;

    iget-object v3, v5, Lorg/eclipse/jdt/internal/compiler/lookup/IntersectionTypeBinding18;->intersectingTypes:[Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    invoke-static {v3}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->isConsistentIntersection([Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Z

    move-result v3

    if-nez v3, :cond_a

    goto :goto_5

    :cond_a
    :goto_3
    new-instance v3, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBound;

    invoke-direct {v3, v2, v5, v14}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBound;-><init>(Lorg/eclipse/jdt/internal/compiler/lookup/InferenceVariable;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;I)V

    iget-object v2, v6, Lorg/eclipse/jdt/internal/compiler/lookup/InferenceContext18;->environment:Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    invoke-virtual {v0, v3, v2}, Lorg/eclipse/jdt/internal/compiler/lookup/BoundSet;->addBound(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBound;Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;)V

    :goto_4
    add-int/lit8 v1, v1, 0x1

    const/4 v13, 0x0

    goto/16 :goto_1

    :cond_b
    :goto_5
    invoke-static {v12}, Lorg/eclipse/jdt/internal/compiler/util/Sorting;->sortInferenceVariables([Lorg/eclipse/jdt/internal/compiler/lookup/InferenceVariable;)V

    new-array v13, v11, [Lorg/eclipse/jdt/internal/compiler/lookup/CaptureBinding18;

    move v0, v7

    :goto_6
    if-lt v0, v11, :cond_16

    new-instance v5, Lorg/eclipse/jdt/internal/compiler/lookup/InferenceContext18$1;

    move-object v0, v5

    move-object/from16 v1, p0

    move v2, v11

    move-object v3, v12

    move-object v4, v13

    move-object v14, v5

    move-object v5, v8

    invoke-direct/range {v0 .. v5}, Lorg/eclipse/jdt/internal/compiler/lookup/InferenceContext18$1;-><init>(Lorg/eclipse/jdt/internal/compiler/lookup/InferenceContext18;I[Lorg/eclipse/jdt/internal/compiler/lookup/InferenceVariable;[Lorg/eclipse/jdt/internal/compiler/lookup/CaptureBinding18;Lorg/eclipse/jdt/internal/compiler/lookup/BoundSet;)V

    move v1, v7

    :goto_7
    if-lt v1, v11, :cond_d

    invoke-virtual {v8, v6}, Lorg/eclipse/jdt/internal/compiler/lookup/BoundSet;->incorporate(Lorg/eclipse/jdt/internal/compiler/lookup/InferenceContext18;)Z

    move-result v0

    if-eqz v0, :cond_c

    iget-object v0, v6, Lorg/eclipse/jdt/internal/compiler/lookup/InferenceContext18;->inferenceVariables:[Lorg/eclipse/jdt/internal/compiler/lookup/InferenceVariable;

    invoke-virtual {v8, v0}, Lorg/eclipse/jdt/internal/compiler/lookup/BoundSet;->numUninstantiatedVariables([Lorg/eclipse/jdt/internal/compiler/lookup/InferenceVariable;)I

    move-result v0

    if-ne v0, v10, :cond_0

    const/4 v2, 0x0

    return-object v2

    :cond_c
    const/4 v2, 0x0

    return-object v2

    :cond_d
    const/4 v2, 0x0

    aget-object v3, v12, v1

    aget-object v4, v13, v1

    invoke-virtual {v8, v3, v15}, Lorg/eclipse/jdt/internal/compiler/lookup/BoundSet;->lowerBounds(Lorg/eclipse/jdt/internal/compiler/lookup/InferenceVariable;Z)[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v0

    sget-object v5, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->NO_TYPES:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    if-eq v0, v5, :cond_e

    iget-object v2, v6, Lorg/eclipse/jdt/internal/compiler/lookup/InferenceContext18;->scope:Lorg/eclipse/jdt/internal/compiler/lookup/Scope;

    invoke-virtual {v2, v0}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->lowerUpperBound([Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v0

    sget-object v2, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->VOID:Lorg/eclipse/jdt/internal/compiler/lookup/VoidTypeBinding;

    if-eq v0, v2, :cond_e

    if-eqz v0, :cond_e

    iput-object v0, v4, Lorg/eclipse/jdt/internal/compiler/lookup/CaptureBinding;->lowerBound:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    :cond_e
    invoke-virtual {v8, v3, v7}, Lorg/eclipse/jdt/internal/compiler/lookup/BoundSet;->upperBounds(Lorg/eclipse/jdt/internal/compiler/lookup/InferenceVariable;Z)[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v0

    if-eq v0, v5, :cond_10

    move v2, v7

    :goto_8
    array-length v5, v0

    if-lt v2, v5, :cond_f

    invoke-direct {v6, v4, v0}, Lorg/eclipse/jdt/internal/compiler/lookup/InferenceContext18;->setUpperBounds(Lorg/eclipse/jdt/internal/compiler/lookup/CaptureBinding18;[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Z

    move-result v0

    if-nez v0, :cond_10

    const/4 v5, 0x4

    goto :goto_b

    :cond_f
    aget-object v5, v0, v2

    invoke-static {v14, v5}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->substitute(Lorg/eclipse/jdt/internal/compiler/lookup/Substitution;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v5

    aput-object v5, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    :cond_10
    iget-object v0, v6, Lorg/eclipse/jdt/internal/compiler/lookup/InferenceContext18;->currentBounds:Lorg/eclipse/jdt/internal/compiler/lookup/BoundSet;

    if-ne v8, v0, :cond_11

    invoke-virtual {v8}, Lorg/eclipse/jdt/internal/compiler/lookup/BoundSet;->copy()Lorg/eclipse/jdt/internal/compiler/lookup/BoundSet;

    move-result-object v8

    :cond_11
    move-object v2, v8

    iget-object v0, v2, Lorg/eclipse/jdt/internal/compiler/lookup/BoundSet;->captures:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    :goto_9
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-nez v8, :cond_13

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_a
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_12

    new-instance v0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBound;

    const/4 v5, 0x4

    invoke-direct {v0, v3, v4, v5}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBound;-><init>(Lorg/eclipse/jdt/internal/compiler/lookup/InferenceVariable;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;I)V

    iget-object v3, v6, Lorg/eclipse/jdt/internal/compiler/lookup/InferenceContext18;->environment:Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    invoke-virtual {v2, v0, v3}, Lorg/eclipse/jdt/internal/compiler/lookup/BoundSet;->addBound(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBound;Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;)V

    move-object v8, v2

    :goto_b
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_7

    :cond_12
    const/4 v5, 0x4

    iget-object v0, v2, Lorg/eclipse/jdt/internal/compiler/lookup/BoundSet;->captures:Ljava/util/HashMap;

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_a

    :cond_13
    const/16 v16, 0x4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/eclipse/jdt/internal/compiler/lookup/ParameterizedTypeBinding;

    iget-object v7, v8, Lorg/eclipse/jdt/internal/compiler/lookup/ParameterizedTypeBinding;->arguments:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    array-length v7, v7

    const/4 v15, 0x0

    :goto_c
    if-lt v15, v7, :cond_14

    :goto_d
    const/4 v7, 0x0

    const/4 v15, 0x1

    goto :goto_9

    :cond_14
    move/from16 v17, v1

    iget-object v1, v8, Lorg/eclipse/jdt/internal/compiler/lookup/ParameterizedTypeBinding;->arguments:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    aget-object v1, v1, v15

    invoke-static {v1, v3}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->equalsEquals(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Z

    move-result v1

    if-eqz v1, :cond_15

    invoke-interface {v0, v8}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move/from16 v1, v17

    goto :goto_d

    :cond_15
    add-int/lit8 v15, v15, 0x1

    move/from16 v1, v17

    goto :goto_c

    :cond_16
    move/from16 v16, v14

    aget-object v1, v12, v0

    invoke-direct {v6, v1}, Lorg/eclipse/jdt/internal/compiler/lookup/InferenceContext18;->freshCapture(Lorg/eclipse/jdt/internal/compiler/lookup/InferenceVariable;)Lorg/eclipse/jdt/internal/compiler/lookup/CaptureBinding18;

    move-result-object v1

    aput-object v1, v13, v0

    add-int/lit8 v0, v0, 0x1

    const/4 v7, 0x0

    const/4 v15, 0x1

    goto/16 :goto_6

    :cond_17
    :goto_e
    return-object v0
.end method

.method private setUpperBounds(Lorg/eclipse/jdt/internal/compiler/lookup/CaptureBinding18;[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Z
    .locals 5

    array-length v0, p2

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/InferenceContext18;->object:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    invoke-virtual {p1, p2, v0}, Lorg/eclipse/jdt/internal/compiler/lookup/CaptureBinding18;->setUpperBounds([Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;)Z

    move-result p1

    return p1

    :cond_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/InferenceContext18;->scope:Lorg/eclipse/jdt/internal/compiler/lookup/Scope;

    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/lookup/InferenceContext18;->environment:Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    invoke-static {p2, v0, v2}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->greaterLowerBound([Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/Scope;Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;)[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object p2

    const/4 v0, 0x0

    if-nez p2, :cond_1

    return v0

    :cond_1
    iget-object v2, p1, Lorg/eclipse/jdt/internal/compiler/lookup/CaptureBinding;->lowerBound:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    if-eqz v2, :cond_4

    move v2, v0

    :goto_0
    array-length v3, p2

    if-lt v2, v3, :cond_2

    goto :goto_1

    :cond_2
    iget-object v3, p1, Lorg/eclipse/jdt/internal/compiler/lookup/CaptureBinding;->lowerBound:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    aget-object v4, p2, v2

    invoke-virtual {v3, v4}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isCompatibleWith(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Z

    move-result v3

    if-nez v3, :cond_3

    return v0

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    :goto_1
    invoke-static {p2}, Lorg/eclipse/jdt/internal/compiler/lookup/InferenceContext18;->sortTypes([Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)V

    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/lookup/InferenceContext18;->object:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    invoke-virtual {p1, p2, v2}, Lorg/eclipse/jdt/internal/compiler/lookup/CaptureBinding18;->setUpperBounds([Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;)Z

    move-result p1

    if-nez p1, :cond_5

    return v0

    :cond_5
    return v1
.end method

.method private siSubI(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Z
    .locals 4

    invoke-static {p1, p2}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->equalsEquals(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_4

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->original()Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v0

    invoke-static {v0, p2}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->equalsEquals(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->superInterfaces()[Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move-result-object p1

    const/4 v0, 0x0

    if-nez p1, :cond_1

    return v0

    :cond_1
    move v2, v0

    :goto_0
    array-length v3, p1

    if-lt v2, v3, :cond_2

    return v0

    :cond_2
    aget-object v3, p1, v2

    invoke-direct {p0, v3, p2}, Lorg/eclipse/jdt/internal/compiler/lookup/InferenceContext18;->siSubI(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Z

    move-result v3

    if-eqz v3, :cond_3

    return v1

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    :goto_1
    return v1
.end method

.method private siSuperI(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Z
    .locals 4

    invoke-static {p1, p2}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->equalsEquals(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_4

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->original()Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v0

    invoke-static {v0, p2}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->equalsEquals(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->superInterfaces()[Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move-result-object p2

    const/4 v0, 0x0

    if-nez p2, :cond_1

    return v0

    :cond_1
    move v2, v0

    :goto_0
    array-length v3, p2

    if-lt v2, v3, :cond_2

    return v0

    :cond_2
    aget-object v3, p2, v2

    invoke-virtual {v3}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->original()Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v3

    invoke-direct {p0, p1, v3}, Lorg/eclipse/jdt/internal/compiler/lookup/InferenceContext18;->siSuperI(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Z

    move-result v3

    if-eqz v3, :cond_3

    return v1

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    :goto_1
    return v1
.end method

.method public static sortTypes([Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)V
    .locals 1

    new-instance v0, Lorg/eclipse/jdt/internal/compiler/lookup/InferenceContext18$2;

    invoke-direct {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/InferenceContext18$2;-><init>()V

    invoke-static {p0, v0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    return-void
.end method

.method private varArgTypes([Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;I)[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;
    .locals 3

    new-array v0, p2, [Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    array-length v1, p1

    add-int/lit8 v1, v1, -0x1

    const/4 v2, 0x0

    invoke-static {p1, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    aget-object p1, p1, v1

    check-cast p1, Lorg/eclipse/jdt/internal/compiler/lookup/ArrayBinding;

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/ArrayBinding;->elementsType()Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object p1

    :goto_0
    if-lt v1, p2, :cond_0

    return-object v0

    :cond_0
    aput-object p1, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method


# virtual methods
.method public addThrowsContraints([Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;[Lorg/eclipse/jdt/internal/compiler/lookup/InferenceVariable;[Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;)V
    .locals 5

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    array-length v2, p1

    if-lt v1, v2, :cond_0

    return-void

    :cond_0
    aget-object v2, p1, v1

    move v3, v0

    :goto_1
    array-length v4, p3

    if-lt v3, v4, :cond_1

    goto :goto_2

    :cond_1
    aget-object v4, p3, v3

    invoke-static {v2, v4}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->equalsEquals(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/lookup/InferenceContext18;->currentBounds:Lorg/eclipse/jdt/internal/compiler/lookup/BoundSet;

    iget-object v2, v2, Lorg/eclipse/jdt/internal/compiler/lookup/BoundSet;->inThrows:Ljava/util/Set;

    aget-object v3, p2, v1

    invoke-virtual {v3}, Lorg/eclipse/jdt/internal/compiler/lookup/InferenceVariable;->prototype()Lorg/eclipse/jdt/internal/compiler/lookup/InferenceVariable;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1
.end method

.method public addTypeVariableSubstitutions([Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)[Lorg/eclipse/jdt/internal/compiler/lookup/InferenceVariable;
    .locals 12

    array-length v0, p1

    new-array v1, v0, [Lorg/eclipse/jdt/internal/compiler/lookup/InferenceVariable;

    new-array v0, v0, [Lorg/eclipse/jdt/internal/compiler/lookup/InferenceVariable;

    const/4 v2, 0x0

    move v9, v2

    move v10, v9

    :goto_0
    array-length v3, p1

    if-lt v9, v3, :cond_2

    if-lez v10, :cond_1

    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/InferenceContext18;->inferenceVariables:[Lorg/eclipse/jdt/internal/compiler/lookup/InferenceVariable;

    if-eqz p1, :cond_0

    array-length v3, p1

    add-int v4, v3, v10

    new-array v4, v4, [Lorg/eclipse/jdt/internal/compiler/lookup/InferenceVariable;

    iput-object v4, p0, Lorg/eclipse/jdt/internal/compiler/lookup/InferenceContext18;->inferenceVariables:[Lorg/eclipse/jdt/internal/compiler/lookup/InferenceVariable;

    invoke-static {p1, v2, v4, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_1

    :cond_0
    new-array p1, v10, [Lorg/eclipse/jdt/internal/compiler/lookup/InferenceVariable;

    iput-object p1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/InferenceContext18;->inferenceVariables:[Lorg/eclipse/jdt/internal/compiler/lookup/InferenceVariable;

    move v3, v2

    :goto_1
    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/InferenceContext18;->inferenceVariables:[Lorg/eclipse/jdt/internal/compiler/lookup/InferenceVariable;

    invoke-static {v0, v2, p1, v3, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_1
    return-object v1

    :cond_2
    aget-object v3, p1, v9

    instance-of v4, v3, Lorg/eclipse/jdt/internal/compiler/lookup/InferenceVariable;

    if-eqz v4, :cond_3

    check-cast v3, Lorg/eclipse/jdt/internal/compiler/lookup/InferenceVariable;

    aput-object v3, v1, v9

    goto :goto_2

    :cond_3
    add-int/lit8 v11, v10, 0x1

    iget-object v5, p0, Lorg/eclipse/jdt/internal/compiler/lookup/InferenceContext18;->currentInvocation:Lorg/eclipse/jdt/internal/compiler/lookup/InvocationSite;

    iget-object v6, p0, Lorg/eclipse/jdt/internal/compiler/lookup/InferenceContext18;->scope:Lorg/eclipse/jdt/internal/compiler/lookup/Scope;

    iget-object v7, p0, Lorg/eclipse/jdt/internal/compiler/lookup/InferenceContext18;->object:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    const/4 v8, 0x0

    move v4, v9

    invoke-static/range {v3 .. v8}, Lorg/eclipse/jdt/internal/compiler/lookup/InferenceVariable;->get(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;ILorg/eclipse/jdt/internal/compiler/lookup/InvocationSite;Lorg/eclipse/jdt/internal/compiler/lookup/Scope;Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;Z)Lorg/eclipse/jdt/internal/compiler/lookup/InferenceVariable;

    move-result-object v3

    aput-object v3, v1, v9

    aput-object v3, v0, v10

    move v10, v11

    :goto_2
    add-int/lit8 v9, v9, 0x1

    goto :goto_0
.end method

.method public allOutputVariables(Ljava/util/Set;)Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lorg/eclipse/jdt/internal/compiler/lookup/ConstraintFormula;",
            ">;)",
            "Ljava/util/Set<",
            "Lorg/eclipse/jdt/internal/compiler/lookup/InferenceVariable;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_0

    return-object v0

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/eclipse/jdt/internal/compiler/lookup/ConstraintFormula;

    invoke-virtual {v1, p0}, Lorg/eclipse/jdt/internal/compiler/lookup/ConstraintFormula;->outputVariables(Lorg/eclipse/jdt/internal/compiler/lookup/InferenceContext18;)Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    goto :goto_0
.end method

.method public cleanUp()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/InferenceContext18;->b2:Lorg/eclipse/jdt/internal/compiler/lookup/BoundSet;

    iput-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/InferenceContext18;->currentBounds:Lorg/eclipse/jdt/internal/compiler/lookup/BoundSet;

    return-void
.end method

.method public computeB3(Lorg/eclipse/jdt/internal/compiler/lookup/InvocationSite;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/internal/compiler/lookup/InferenceFailureException;
        }
    .end annotation

    invoke-static {p0, p1, p2, p3}, Lorg/eclipse/jdt/internal/compiler/lookup/ConstraintExpressionFormula;->inferPolyInvocationType(Lorg/eclipse/jdt/internal/compiler/lookup/InferenceContext18;Lorg/eclipse/jdt/internal/compiler/lookup/InvocationSite;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/InferenceContext18;->mergeInnerBounds()V

    iget-object p2, p0, Lorg/eclipse/jdt/internal/compiler/lookup/InferenceContext18;->b3:Lorg/eclipse/jdt/internal/compiler/lookup/BoundSet;

    if-nez p2, :cond_0

    iget-object p2, p0, Lorg/eclipse/jdt/internal/compiler/lookup/InferenceContext18;->currentBounds:Lorg/eclipse/jdt/internal/compiler/lookup/BoundSet;

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/lookup/BoundSet;->copy()Lorg/eclipse/jdt/internal/compiler/lookup/BoundSet;

    move-result-object p2

    iput-object p2, p0, Lorg/eclipse/jdt/internal/compiler/lookup/InferenceContext18;->b3:Lorg/eclipse/jdt/internal/compiler/lookup/BoundSet;

    :cond_0
    return p1
.end method

.method public createBoundsForFunctionalInterfaceParameterizationInference(Lorg/eclipse/jdt/internal/compiler/lookup/ParameterizedTypeBinding;)[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;
    .locals 7

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/InferenceContext18;->currentBounds:Lorg/eclipse/jdt/internal/compiler/lookup/BoundSet;

    if-nez v0, :cond_0

    new-instance v0, Lorg/eclipse/jdt/internal/compiler/lookup/BoundSet;

    invoke-direct {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/BoundSet;-><init>()V

    iput-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/InferenceContext18;->currentBounds:Lorg/eclipse/jdt/internal/compiler/lookup/BoundSet;

    :cond_0
    iget-object v0, p1, Lorg/eclipse/jdt/internal/compiler/lookup/ParameterizedTypeBinding;->arguments:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    if-nez v0, :cond_1

    const/4 p1, 0x0

    return-object p1

    :cond_1
    invoke-direct {p0, v0}, Lorg/eclipse/jdt/internal/compiler/lookup/InferenceContext18;->addInitialTypeVariableSubstitutions([Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)[Lorg/eclipse/jdt/internal/compiler/lookup/InferenceVariable;

    move-result-object v1

    const/4 v2, 0x0

    :goto_0
    array-length v3, v0

    const/4 v4, 0x1

    if-lt v2, v3, :cond_2

    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/internal/compiler/lookup/InferenceContext18;->substitute(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object p1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/InferenceContext18;->scope:Lorg/eclipse/jdt/internal/compiler/lookup/Scope;

    invoke-virtual {p1, v0, v4}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->getSingleAbstractMethod(Lorg/eclipse/jdt/internal/compiler/lookup/Scope;Z)Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    move-result-object p1

    iget-object p1, p1, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->parameters:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    return-object p1

    :cond_2
    aget-object v3, v0, v2

    invoke-virtual {v3}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->kind()I

    move-result v3

    const/16 v5, 0x204

    if-ne v3, v5, :cond_6

    aget-object v3, v0, v2

    check-cast v3, Lorg/eclipse/jdt/internal/compiler/lookup/WildcardBinding;

    iget v5, v3, Lorg/eclipse/jdt/internal/compiler/lookup/WildcardBinding;->boundKind:I

    const/4 v6, 0x2

    if-eqz v5, :cond_5

    if-eq v5, v4, :cond_4

    if-eq v5, v6, :cond_3

    goto :goto_2

    :cond_3
    new-instance v4, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBound;

    aget-object v5, v1, v2

    iget-object v3, v3, Lorg/eclipse/jdt/internal/compiler/lookup/WildcardBinding;->bound:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    const/4 v6, 0x3

    invoke-direct {v4, v5, v3, v6}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBound;-><init>(Lorg/eclipse/jdt/internal/compiler/lookup/InferenceVariable;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;I)V

    goto :goto_1

    :cond_4
    new-instance v4, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBound;

    aget-object v5, v1, v2

    invoke-virtual {v3}, Lorg/eclipse/jdt/internal/compiler/lookup/WildcardBinding;->allBounds()Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v3

    invoke-direct {v4, v5, v3, v6}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBound;-><init>(Lorg/eclipse/jdt/internal/compiler/lookup/InferenceVariable;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;I)V

    goto :goto_1

    :cond_5
    new-instance v4, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBound;

    aget-object v3, v1, v2

    iget-object v5, p0, Lorg/eclipse/jdt/internal/compiler/lookup/InferenceContext18;->object:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    invoke-direct {v4, v3, v5, v6}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBound;-><init>(Lorg/eclipse/jdt/internal/compiler/lookup/InferenceVariable;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;I)V

    goto :goto_1

    :cond_6
    new-instance v4, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBound;

    aget-object v3, v1, v2

    aget-object v5, v0, v2

    const/4 v6, 0x4

    invoke-direct {v4, v3, v5, v6}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBound;-><init>(Lorg/eclipse/jdt/internal/compiler/lookup/InferenceVariable;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;I)V

    :goto_1
    iget-object v3, p0, Lorg/eclipse/jdt/internal/compiler/lookup/InferenceContext18;->currentBounds:Lorg/eclipse/jdt/internal/compiler/lookup/BoundSet;

    iget-object v5, p0, Lorg/eclipse/jdt/internal/compiler/lookup/InferenceContext18;->environment:Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    invoke-virtual {v3, v4, v5}, Lorg/eclipse/jdt/internal/compiler/lookup/BoundSet;->addBound(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBound;Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;)V

    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public createInitialBoundSet([Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;)[Lorg/eclipse/jdt/internal/compiler/lookup/InferenceVariable;
    .locals 2

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/InferenceContext18;->currentBounds:Lorg/eclipse/jdt/internal/compiler/lookup/BoundSet;

    if-nez v0, :cond_0

    new-instance v0, Lorg/eclipse/jdt/internal/compiler/lookup/BoundSet;

    invoke-direct {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/BoundSet;-><init>()V

    iput-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/InferenceContext18;->currentBounds:Lorg/eclipse/jdt/internal/compiler/lookup/BoundSet;

    :cond_0
    if-eqz p1, :cond_1

    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/compiler/lookup/InferenceContext18;->addInitialTypeVariableSubstitutions([Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)[Lorg/eclipse/jdt/internal/compiler/lookup/InferenceVariable;

    move-result-object v0

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/InferenceContext18;->currentBounds:Lorg/eclipse/jdt/internal/compiler/lookup/BoundSet;

    invoke-virtual {v1, p0, p1, v0}, Lorg/eclipse/jdt/internal/compiler/lookup/BoundSet;->addBoundsFromTypeParameters(Lorg/eclipse/jdt/internal/compiler/lookup/InferenceContext18;[Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;[Lorg/eclipse/jdt/internal/compiler/lookup/InferenceVariable;)V

    return-object v0

    :cond_1
    sget-object p1, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->NO_INFERENCE_VARIABLES:[Lorg/eclipse/jdt/internal/compiler/lookup/InferenceVariable;

    return-object p1
.end method

.method public createInitialConstraintsForParameters([Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;ZLorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    iget-object v4, v0, Lorg/eclipse/jdt/internal/compiler/lookup/InferenceContext18;->invocationArguments:[Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    if-nez v4, :cond_0

    return-void

    :cond_0
    const/4 v5, 0x1

    if-eqz p2, :cond_1

    array-length v4, v1

    sub-int/2addr v4, v5

    goto :goto_0

    :cond_1
    array-length v6, v1

    array-length v4, v4

    invoke-static {v6, v4}, Ljava/lang/Math;->min(II)I

    move-result v4

    :goto_0
    if-eqz p2, :cond_2

    iget-object v6, v0, Lorg/eclipse/jdt/internal/compiler/lookup/InferenceContext18;->invocationArguments:[Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    array-length v6, v6

    goto :goto_1

    :cond_2
    move v6, v4

    :goto_1
    iget-object v7, v0, Lorg/eclipse/jdt/internal/compiler/lookup/InferenceContext18;->initialConstraints:[Lorg/eclipse/jdt/internal/compiler/lookup/ConstraintFormula;

    const/4 v8, 0x0

    if-nez v7, :cond_3

    new-array v7, v6, [Lorg/eclipse/jdt/internal/compiler/lookup/ConstraintFormula;

    iput-object v7, v0, Lorg/eclipse/jdt/internal/compiler/lookup/InferenceContext18;->initialConstraints:[Lorg/eclipse/jdt/internal/compiler/lookup/ConstraintFormula;

    move v7, v5

    move v9, v8

    goto :goto_2

    :cond_3
    array-length v9, v7

    add-int/2addr v6, v9

    new-array v10, v6, [Lorg/eclipse/jdt/internal/compiler/lookup/ConstraintFormula;

    iput-object v10, v0, Lorg/eclipse/jdt/internal/compiler/lookup/InferenceContext18;->initialConstraints:[Lorg/eclipse/jdt/internal/compiler/lookup/ConstraintFormula;

    invoke-static {v7, v8, v10, v8, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move v7, v8

    :goto_2
    move v10, v8

    :goto_3
    const/16 v11, 0x8

    if-lt v10, v4, :cond_b

    if-eqz p2, :cond_7

    instance-of v1, v2, Lorg/eclipse/jdt/internal/compiler/lookup/ArrayBinding;

    if-eqz v1, :cond_7

    move-object v1, v2

    check-cast v1, Lorg/eclipse/jdt/internal/compiler/lookup/ArrayBinding;

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/compiler/lookup/ArrayBinding;->elementsType()Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/eclipse/jdt/internal/compiler/lookup/InferenceContext18;->substitute(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v2

    :goto_4
    iget-object v10, v0, Lorg/eclipse/jdt/internal/compiler/lookup/InferenceContext18;->invocationArguments:[Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    array-length v12, v10

    if-lt v4, v12, :cond_4

    goto :goto_7

    :cond_4
    aget-object v10, v10, v4

    invoke-virtual {v10, v1, v3}, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->isPertinentToApplicability(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;)Z

    move-result v10

    if-eqz v10, :cond_5

    iget-object v10, v0, Lorg/eclipse/jdt/internal/compiler/lookup/InferenceContext18;->initialConstraints:[Lorg/eclipse/jdt/internal/compiler/lookup/ConstraintFormula;

    add-int/lit8 v12, v9, 0x1

    new-instance v13, Lorg/eclipse/jdt/internal/compiler/lookup/ConstraintExpressionFormula;

    iget-object v14, v0, Lorg/eclipse/jdt/internal/compiler/lookup/InferenceContext18;->invocationArguments:[Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    aget-object v14, v14, v4

    invoke-direct {v13, v14, v2, v5, v8}, Lorg/eclipse/jdt/internal/compiler/lookup/ConstraintExpressionFormula;-><init>(Lorg/eclipse/jdt/internal/compiler/ast/Expression;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;IZ)V

    aput-object v13, v10, v9

    :goto_5
    move v9, v12

    goto :goto_6

    :cond_5
    invoke-direct {v0, v1, v3}, Lorg/eclipse/jdt/internal/compiler/lookup/InferenceContext18;->isTypeVariableOfCandidate(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;)Z

    move-result v10

    if-nez v10, :cond_6

    iget-object v10, v0, Lorg/eclipse/jdt/internal/compiler/lookup/InferenceContext18;->initialConstraints:[Lorg/eclipse/jdt/internal/compiler/lookup/ConstraintFormula;

    add-int/lit8 v12, v9, 0x1

    new-instance v13, Lorg/eclipse/jdt/internal/compiler/lookup/ConstraintExpressionFormula;

    iget-object v14, v0, Lorg/eclipse/jdt/internal/compiler/lookup/InferenceContext18;->invocationArguments:[Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    aget-object v14, v14, v4

    invoke-direct {v13, v14, v2, v11}, Lorg/eclipse/jdt/internal/compiler/lookup/ConstraintExpressionFormula;-><init>(Lorg/eclipse/jdt/internal/compiler/ast/Expression;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;I)V

    aput-object v13, v10, v9

    goto :goto_5

    :cond_6
    :goto_6
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    :cond_7
    :goto_7
    if-nez v9, :cond_8

    sget-object v1, Lorg/eclipse/jdt/internal/compiler/lookup/ConstraintFormula;->NO_CONSTRAINTS:[Lorg/eclipse/jdt/internal/compiler/lookup/ConstraintFormula;

    iput-object v1, v0, Lorg/eclipse/jdt/internal/compiler/lookup/InferenceContext18;->initialConstraints:[Lorg/eclipse/jdt/internal/compiler/lookup/ConstraintFormula;

    goto :goto_8

    :cond_8
    if-ge v9, v6, :cond_9

    iget-object v1, v0, Lorg/eclipse/jdt/internal/compiler/lookup/InferenceContext18;->initialConstraints:[Lorg/eclipse/jdt/internal/compiler/lookup/ConstraintFormula;

    new-array v2, v9, [Lorg/eclipse/jdt/internal/compiler/lookup/ConstraintFormula;

    iput-object v2, v0, Lorg/eclipse/jdt/internal/compiler/lookup/InferenceContext18;->initialConstraints:[Lorg/eclipse/jdt/internal/compiler/lookup/ConstraintFormula;

    invoke-static {v1, v8, v2, v8, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_9
    :goto_8
    if-eqz v7, :cond_a

    iget-object v1, v0, Lorg/eclipse/jdt/internal/compiler/lookup/InferenceContext18;->initialConstraints:[Lorg/eclipse/jdt/internal/compiler/lookup/ConstraintFormula;

    array-length v2, v1

    new-array v3, v2, [Lorg/eclipse/jdt/internal/compiler/lookup/ConstraintExpressionFormula;

    iput-object v3, v0, Lorg/eclipse/jdt/internal/compiler/lookup/InferenceContext18;->finalConstraints:[Lorg/eclipse/jdt/internal/compiler/lookup/ConstraintExpressionFormula;

    invoke-static {v1, v8, v3, v8, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_a
    return-void

    :cond_b
    aget-object v12, v1, v10

    invoke-virtual {v0, v12}, Lorg/eclipse/jdt/internal/compiler/lookup/InferenceContext18;->substitute(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v12

    iget-object v13, v0, Lorg/eclipse/jdt/internal/compiler/lookup/InferenceContext18;->invocationArguments:[Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    aget-object v13, v13, v10

    aget-object v14, v1, v10

    invoke-virtual {v13, v14, v3}, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->isPertinentToApplicability(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;)Z

    move-result v13

    if-eqz v13, :cond_c

    iget-object v11, v0, Lorg/eclipse/jdt/internal/compiler/lookup/InferenceContext18;->initialConstraints:[Lorg/eclipse/jdt/internal/compiler/lookup/ConstraintFormula;

    add-int/lit8 v13, v9, 0x1

    new-instance v14, Lorg/eclipse/jdt/internal/compiler/lookup/ConstraintExpressionFormula;

    iget-object v15, v0, Lorg/eclipse/jdt/internal/compiler/lookup/InferenceContext18;->invocationArguments:[Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    aget-object v15, v15, v10

    invoke-direct {v14, v15, v12, v5, v8}, Lorg/eclipse/jdt/internal/compiler/lookup/ConstraintExpressionFormula;-><init>(Lorg/eclipse/jdt/internal/compiler/ast/Expression;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;IZ)V

    aput-object v14, v11, v9

    move v9, v13

    goto :goto_9

    :cond_c
    aget-object v13, v1, v10

    invoke-direct {v0, v13, v3}, Lorg/eclipse/jdt/internal/compiler/lookup/InferenceContext18;->isTypeVariableOfCandidate(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;)Z

    move-result v13

    if-nez v13, :cond_d

    iget-object v13, v0, Lorg/eclipse/jdt/internal/compiler/lookup/InferenceContext18;->initialConstraints:[Lorg/eclipse/jdt/internal/compiler/lookup/ConstraintFormula;

    add-int/lit8 v14, v9, 0x1

    new-instance v15, Lorg/eclipse/jdt/internal/compiler/lookup/ConstraintExpressionFormula;

    iget-object v5, v0, Lorg/eclipse/jdt/internal/compiler/lookup/InferenceContext18;->invocationArguments:[Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    aget-object v5, v5, v10

    invoke-direct {v15, v5, v12, v11}, Lorg/eclipse/jdt/internal/compiler/lookup/ConstraintExpressionFormula;-><init>(Lorg/eclipse/jdt/internal/compiler/ast/Expression;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;I)V

    aput-object v15, v13, v9

    move v9, v14

    :cond_d
    :goto_9
    add-int/lit8 v10, v10, 0x1

    const/4 v5, 0x1

    goto/16 :goto_3
.end method

.method public enrichSubstitution(Lorg/eclipse/jdt/internal/compiler/lookup/InferenceSubstitution;Lorg/eclipse/jdt/internal/compiler/ast/Invocation;Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/InferenceSubstitution;
    .locals 1

    instance-of v0, p3, Lorg/eclipse/jdt/internal/compiler/lookup/ParameterizedGenericMethodBinding;

    if-eqz v0, :cond_0

    check-cast p3, Lorg/eclipse/jdt/internal/compiler/lookup/ParameterizedMethodBinding;

    invoke-interface {p2, p3}, Lorg/eclipse/jdt/internal/compiler/ast/Invocation;->getInferenceContext(Lorg/eclipse/jdt/internal/compiler/lookup/ParameterizedMethodBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/InferenceContext18;

    move-result-object p2

    if-eqz p2, :cond_0

    invoke-virtual {p1, p2}, Lorg/eclipse/jdt/internal/compiler/lookup/InferenceSubstitution;->addContext(Lorg/eclipse/jdt/internal/compiler/lookup/InferenceContext18;)Lorg/eclipse/jdt/internal/compiler/lookup/InferenceSubstitution;

    move-result-object p1

    :cond_0
    return-object p1
.end method

.method public enterLambda(Lorg/eclipse/jdt/internal/compiler/ast/LambdaExpression;)Lorg/eclipse/jdt/internal/compiler/lookup/InferenceContext18$SuspendedInferenceRecord;
    .locals 6

    new-instance p1, Lorg/eclipse/jdt/internal/compiler/lookup/InferenceContext18$SuspendedInferenceRecord;

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/InferenceContext18;->currentInvocation:Lorg/eclipse/jdt/internal/compiler/lookup/InvocationSite;

    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/lookup/InferenceContext18;->invocationArguments:[Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    iget-object v3, p0, Lorg/eclipse/jdt/internal/compiler/lookup/InferenceContext18;->inferenceVariables:[Lorg/eclipse/jdt/internal/compiler/lookup/InferenceVariable;

    iget v4, p0, Lorg/eclipse/jdt/internal/compiler/lookup/InferenceContext18;->inferenceKind:I

    iget-boolean v5, p0, Lorg/eclipse/jdt/internal/compiler/lookup/InferenceContext18;->usesUncheckedConversion:Z

    move-object v0, p1

    invoke-direct/range {v0 .. v5}, Lorg/eclipse/jdt/internal/compiler/lookup/InferenceContext18$SuspendedInferenceRecord;-><init>(Lorg/eclipse/jdt/internal/compiler/lookup/InvocationSite;[Lorg/eclipse/jdt/internal/compiler/ast/Expression;[Lorg/eclipse/jdt/internal/compiler/lookup/InferenceVariable;IZ)V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/InferenceContext18;->inferenceVariables:[Lorg/eclipse/jdt/internal/compiler/lookup/InferenceVariable;

    iput-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/InferenceContext18;->invocationArguments:[Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/InferenceContext18;->usesUncheckedConversion:Z

    return-object p1
.end method

.method public enterPolyInvocation(Lorg/eclipse/jdt/internal/compiler/lookup/InvocationSite;[Lorg/eclipse/jdt/internal/compiler/ast/Expression;)Lorg/eclipse/jdt/internal/compiler/lookup/InferenceContext18$SuspendedInferenceRecord;
    .locals 7

    new-instance v6, Lorg/eclipse/jdt/internal/compiler/lookup/InferenceContext18$SuspendedInferenceRecord;

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/InferenceContext18;->currentInvocation:Lorg/eclipse/jdt/internal/compiler/lookup/InvocationSite;

    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/lookup/InferenceContext18;->invocationArguments:[Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    iget-object v3, p0, Lorg/eclipse/jdt/internal/compiler/lookup/InferenceContext18;->inferenceVariables:[Lorg/eclipse/jdt/internal/compiler/lookup/InferenceVariable;

    iget v4, p0, Lorg/eclipse/jdt/internal/compiler/lookup/InferenceContext18;->inferenceKind:I

    iget-boolean v5, p0, Lorg/eclipse/jdt/internal/compiler/lookup/InferenceContext18;->usesUncheckedConversion:Z

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lorg/eclipse/jdt/internal/compiler/lookup/InferenceContext18$SuspendedInferenceRecord;-><init>(Lorg/eclipse/jdt/internal/compiler/lookup/InvocationSite;[Lorg/eclipse/jdt/internal/compiler/ast/Expression;[Lorg/eclipse/jdt/internal/compiler/lookup/InferenceVariable;IZ)V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/InferenceContext18;->inferenceVariables:[Lorg/eclipse/jdt/internal/compiler/lookup/InferenceVariable;

    iput-object p2, p0, Lorg/eclipse/jdt/internal/compiler/lookup/InferenceContext18;->invocationArguments:[Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    iput-object p1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/InferenceContext18;->currentInvocation:Lorg/eclipse/jdt/internal/compiler/lookup/InvocationSite;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/InferenceContext18;->usesUncheckedConversion:Z

    return-object v6
.end method

.method public flushBoundOutbox()V
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/InferenceContext18;->pushToOuterJob:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/InferenceContext18;->pushToOuterJob:Ljava/lang/Runnable;

    :cond_0
    return-void
.end method

.method public forwardResults(Lorg/eclipse/jdt/internal/compiler/lookup/BoundSet;Lorg/eclipse/jdt/internal/compiler/ast/Invocation;Lorg/eclipse/jdt/internal/compiler/lookup/ParameterizedMethodBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    move-object/from16 v4, p2

    if-eqz v3, :cond_0

    invoke-interface {v4, v3, v2}, Lorg/eclipse/jdt/internal/compiler/ast/Invocation;->registerResult(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;)V

    :cond_0
    invoke-interface/range {p2 .. p2}, Lorg/eclipse/jdt/internal/compiler/ast/Invocation;->arguments()[Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    move-result-object v3

    if-nez v3, :cond_1

    const/4 v5, 0x0

    goto :goto_0

    :cond_1
    array-length v5, v3

    :goto_0
    const/4 v6, 0x0

    :goto_1
    if-lt v6, v5, :cond_2

    return-void

    :cond_2
    aget-object v7, v3, v6

    invoke-virtual {v7}, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->getPolyExpressions()[Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    move-result-object v7

    array-length v8, v7

    const/4 v9, 0x0

    :goto_2
    if-lt v9, v8, :cond_3

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_3
    aget-object v10, v7, v9

    instance-of v11, v10, Lorg/eclipse/jdt/internal/compiler/ast/Invocation;

    if-nez v11, :cond_4

    goto/16 :goto_5

    :cond_4
    move-object v11, v10

    check-cast v11, Lorg/eclipse/jdt/internal/compiler/ast/Invocation;

    invoke-interface {v11}, Lorg/eclipse/jdt/internal/compiler/ast/Invocation;->binding()Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    move-result-object v12

    if-eqz v12, :cond_e

    invoke-virtual {v12}, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->isValidBinding()Z

    move-result v13

    if-nez v13, :cond_5

    goto/16 :goto_5

    :cond_5
    instance-of v13, v12, Lorg/eclipse/jdt/internal/compiler/lookup/ParameterizedGenericMethodBinding;

    if-eqz v13, :cond_7

    invoke-virtual {v12}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->shallowOriginal()Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    move-result-object v12

    invoke-virtual {v12}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->typeVariables()[Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;

    move-result-object v13

    invoke-virtual {v0, v13, v11, v1}, Lorg/eclipse/jdt/internal/compiler/lookup/InferenceContext18;->getSolutions([Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;Lorg/eclipse/jdt/internal/compiler/lookup/InvocationSite;Lorg/eclipse/jdt/internal/compiler/lookup/BoundSet;)[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v13

    if-nez v13, :cond_6

    goto/16 :goto_5

    :cond_6
    iget-object v14, v0, Lorg/eclipse/jdt/internal/compiler/lookup/InferenceContext18;->environment:Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    invoke-virtual {v14, v12, v13}, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->createParameterizedGenericMethod(Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/ParameterizedGenericMethodBinding;

    move-result-object v12

    goto :goto_4

    :cond_7
    invoke-virtual {v12}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->isConstructor()Z

    move-result v13

    if-eqz v13, :cond_e

    instance-of v13, v12, Lorg/eclipse/jdt/internal/compiler/lookup/ParameterizedMethodBinding;

    if-nez v13, :cond_8

    goto/16 :goto_5

    :cond_8
    invoke-virtual {v12}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->shallowOriginal()Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    move-result-object v13

    iget-object v14, v13, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->declaringClass:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    invoke-virtual {v14}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->typeVariables()[Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;

    move-result-object v15

    invoke-virtual {v0, v15, v11, v1}, Lorg/eclipse/jdt/internal/compiler/lookup/InferenceContext18;->getSolutions([Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;Lorg/eclipse/jdt/internal/compiler/lookup/InvocationSite;Lorg/eclipse/jdt/internal/compiler/lookup/BoundSet;)[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v15

    if-nez v15, :cond_9

    goto :goto_5

    :cond_9
    iget-object v4, v0, Lorg/eclipse/jdt/internal/compiler/lookup/InferenceContext18;->environment:Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    iget-object v12, v12, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->declaringClass:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    invoke-virtual {v12}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->enclosingType()Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move-result-object v12

    invoke-virtual {v4, v14, v15, v12}, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->createParameterizedType(Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/ParameterizedTypeBinding;

    move-result-object v4

    invoke-virtual {v4}, Lorg/eclipse/jdt/internal/compiler/lookup/ParameterizedTypeBinding;->methods()[Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    move-result-object v4

    array-length v12, v4

    const/4 v14, 0x0

    :goto_3
    if-lt v14, v12, :cond_a

    const/4 v12, 0x0

    goto :goto_4

    :cond_a
    aget-object v15, v4, v14

    move-object/from16 p4, v4

    invoke-virtual {v15}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->original()Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    move-result-object v4

    if-ne v4, v13, :cond_d

    move-object v12, v15

    check-cast v12, Lorg/eclipse/jdt/internal/compiler/lookup/ParameterizedMethodBinding;

    :goto_4
    if-eqz v12, :cond_e

    invoke-virtual {v12}, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->isValidBinding()Z

    move-result v4

    if-nez v4, :cond_b

    goto :goto_5

    :cond_b
    invoke-virtual/range {p3 .. p3}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->isVarargs()Z

    move-result v4

    iget-object v13, v2, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->parameters:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    if-eqz v4, :cond_c

    array-length v14, v13

    array-length v15, v3

    if-ne v14, v15, :cond_c

    add-int/lit8 v14, v5, -0x1

    if-ne v6, v14, :cond_c

    iget-object v14, v12, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->returnType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    iget-object v15, v0, Lorg/eclipse/jdt/internal/compiler/lookup/InferenceContext18;->scope:Lorg/eclipse/jdt/internal/compiler/lookup/Scope;

    iget v2, v10, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceStart:I

    iget v10, v10, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceEnd:I

    invoke-virtual {v14, v15, v2, v10}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->capture(Lorg/eclipse/jdt/internal/compiler/lookup/Scope;II)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v2

    array-length v10, v13

    add-int/lit8 v10, v10, -0x1

    aget-object v10, v13, v10

    iget-object v14, v0, Lorg/eclipse/jdt/internal/compiler/lookup/InferenceContext18;->scope:Lorg/eclipse/jdt/internal/compiler/lookup/Scope;

    invoke-virtual {v2, v10, v14}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isCompatibleWith(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/Scope;)Z

    move-result v2

    if-eqz v2, :cond_c

    const/4 v4, 0x0

    :cond_c
    invoke-static {v13, v6, v4}, Lorg/eclipse/jdt/internal/compiler/lookup/InferenceContext18;->getParameter([Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;IZ)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v2

    invoke-virtual {v0, v1, v11, v12, v2}, Lorg/eclipse/jdt/internal/compiler/lookup/InferenceContext18;->forwardResults(Lorg/eclipse/jdt/internal/compiler/lookup/BoundSet;Lorg/eclipse/jdt/internal/compiler/ast/Invocation;Lorg/eclipse/jdt/internal/compiler/lookup/ParameterizedMethodBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)V

    goto :goto_5

    :cond_d
    add-int/lit8 v14, v14, 0x1

    move-object/from16 v2, p3

    move-object/from16 v4, p4

    goto :goto_3

    :cond_e
    :goto_5
    add-int/lit8 v9, v9, 0x1

    move-object/from16 v2, p3

    goto/16 :goto_2
.end method

.method public getFunctionInterfaceArgumentSolutions([Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;
    .locals 5

    array-length v0, p1

    new-array v0, v0, [Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/lookup/InferenceContext18;->inferenceVariables:[Lorg/eclipse/jdt/internal/compiler/lookup/InferenceVariable;

    array-length v3, v2

    if-lt v1, v3, :cond_0

    return-object v0

    :cond_0
    aget-object v2, v2, v1

    iget-object v3, p0, Lorg/eclipse/jdt/internal/compiler/lookup/InferenceContext18;->currentBounds:Lorg/eclipse/jdt/internal/compiler/lookup/BoundSet;

    iget-object v4, p0, Lorg/eclipse/jdt/internal/compiler/lookup/InferenceContext18;->environment:Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    invoke-virtual {v3, v2, v4}, Lorg/eclipse/jdt/internal/compiler/lookup/BoundSet;->getInstantiation(Lorg/eclipse/jdt/internal/compiler/lookup/InferenceVariable;Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v2

    if-eqz v2, :cond_1

    aput-object v2, v0, v1

    goto :goto_1

    :cond_1
    aget-object v2, p1, v1

    aput-object v2, v0, v1

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public getInferenceKind(Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)I
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/InferenceContext18;->scope:Lorg/eclipse/jdt/internal/compiler/lookup/Scope;

    invoke-virtual {v0, p1, p2}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->parameterCompatibilityLevel(Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)I

    move-result p1

    const/4 p2, 0x2

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    if-eq p1, p2, :cond_0

    return v0

    :cond_0
    const/4 p1, 0x3

    return p1

    :cond_1
    return p2
.end method

.method public getReturnProblemMethodIfNeeded(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;
    .locals 4

    if-eqz p1, :cond_2

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->original()Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    move-result-object v0

    instance-of v0, v0, Lorg/eclipse/jdt/internal/compiler/lookup/SyntheticFactoryMethodBinding;

    if-nez v0, :cond_2

    iget-object v0, p2, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->returnType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    instance-of v1, v0, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    if-nez v1, :cond_0

    instance-of v0, v0, Lorg/eclipse/jdt/internal/compiler/lookup/ArrayBinding;

    if-eqz v0, :cond_2

    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isProperType(Z)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 p1, 0x0

    return-object p1

    :cond_1
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/InferenceContext18;->environment:Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    iget-object v1, p2, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->returnType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->erasure()Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->convertToRawType(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Z)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isCompatibleWith(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Z

    move-result v0

    if-eqz v0, :cond_2

    return-object p2

    :cond_2
    new-instance v0, Lorg/eclipse/jdt/internal/compiler/lookup/ProblemMethodBinding;

    iget-object v1, p2, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->selector:[C

    iget-object v2, p2, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->parameters:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    const/16 v3, 0x17

    invoke-direct {v0, p2, v1, v2, v3}, Lorg/eclipse/jdt/internal/compiler/lookup/ProblemMethodBinding;-><init>(Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;[C[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;I)V

    if-eqz p1, :cond_3

    goto :goto_0

    :cond_3
    iget-object p1, p2, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->returnType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    :goto_0
    iput-object p1, v0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->returnType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    iput-object p0, v0, Lorg/eclipse/jdt/internal/compiler/lookup/ProblemMethodBinding;->inferenceContext:Lorg/eclipse/jdt/internal/compiler/lookup/InferenceContext18;

    return-object v0
.end method

.method public getSolutions([Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;Lorg/eclipse/jdt/internal/compiler/lookup/InvocationSite;Lorg/eclipse/jdt/internal/compiler/lookup/BoundSet;)[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;
    .locals 9

    array-length v0, p1

    new-array v0, v0, [Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/InferenceContext18;->outerContext:Lorg/eclipse/jdt/internal/compiler/lookup/InferenceContext18;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    iget v3, v1, Lorg/eclipse/jdt/internal/compiler/lookup/InferenceContext18;->stepCompleted:I

    const/4 v4, 0x2

    if-ge v3, v4, :cond_0

    iget-object v1, v1, Lorg/eclipse/jdt/internal/compiler/lookup/InferenceContext18;->inferenceVariables:[Lorg/eclipse/jdt/internal/compiler/lookup/InferenceVariable;

    goto :goto_0

    :cond_0
    move-object v1, v2

    :goto_0
    const/4 v3, 0x0

    move v4, v3

    :goto_1
    array-length v5, p1

    if-lt v4, v5, :cond_1

    return-object v0

    :cond_1
    move v5, v3

    :goto_2
    iget-object v6, p0, Lorg/eclipse/jdt/internal/compiler/lookup/InferenceContext18;->inferenceVariables:[Lorg/eclipse/jdt/internal/compiler/lookup/InferenceVariable;

    array-length v7, v6

    if-lt v5, v7, :cond_2

    goto :goto_3

    :cond_2
    aget-object v6, v6, v5

    iget-object v7, v6, Lorg/eclipse/jdt/internal/compiler/lookup/InferenceVariable;->site:Lorg/eclipse/jdt/internal/compiler/lookup/InvocationSite;

    invoke-static {v7, p2}, Lorg/eclipse/jdt/internal/compiler/lookup/InferenceContext18;->isSameSite(Lorg/eclipse/jdt/internal/compiler/lookup/InvocationSite;Lorg/eclipse/jdt/internal/compiler/lookup/InvocationSite;)Z

    move-result v7

    if-eqz v7, :cond_5

    iget-object v7, v6, Lorg/eclipse/jdt/internal/compiler/lookup/InferenceVariable;->typeParameter:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    aget-object v8, p1, v4

    invoke-static {v7, v8}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->equalsEquals(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Z

    move-result v7

    if-eqz v7, :cond_5

    if-eqz v1, :cond_3

    invoke-virtual {p3, v6, v1}, Lorg/eclipse/jdt/internal/compiler/lookup/BoundSet;->getEquivalentOuterVariable(Lorg/eclipse/jdt/internal/compiler/lookup/InferenceVariable;[Lorg/eclipse/jdt/internal/compiler/lookup/InferenceVariable;)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v5

    if-eqz v5, :cond_3

    aput-object v5, v0, v4

    goto :goto_3

    :cond_3
    iget-object v5, p0, Lorg/eclipse/jdt/internal/compiler/lookup/InferenceContext18;->environment:Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    invoke-virtual {p3, v6, v5}, Lorg/eclipse/jdt/internal/compiler/lookup/BoundSet;->getInstantiation(Lorg/eclipse/jdt/internal/compiler/lookup/InferenceVariable;Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v5

    aput-object v5, v0, v4

    :goto_3
    aget-object v5, v0, v4

    if-nez v5, :cond_4

    return-object v2

    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_5
    add-int/lit8 v5, v5, 0x1

    goto :goto_2
.end method

.method public inferFunctionalInterfaceParameterization(Lorg/eclipse/jdt/internal/compiler/ast/LambdaExpression;Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;Lorg/eclipse/jdt/internal/compiler/lookup/ParameterizedTypeBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;
    .locals 6

    invoke-virtual {p0, p3}, Lorg/eclipse/jdt/internal/compiler/lookup/InferenceContext18;->createBoundsForFunctionalInterfaceParameterizationInference(Lorg/eclipse/jdt/internal/compiler/lookup/ParameterizedTypeBinding;)[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v0

    if-eqz v0, :cond_2

    array-length v1, v0

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/ast/LambdaExpression;->arguments()[Lorg/eclipse/jdt/internal/compiler/ast/Argument;

    move-result-object v2

    array-length v2, v2

    if-ne v1, v2, :cond_2

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/ast/LambdaExpression;->argumentTypes()[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v1

    invoke-virtual {p0, v1, v0}, Lorg/eclipse/jdt/internal/compiler/lookup/InferenceContext18;->reduceWithEqualityConstraints([Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p3}, Lorg/eclipse/jdt/internal/compiler/lookup/ParameterizedTypeBinding;->genericType()Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move-result-object v0

    iget-object v1, p3, Lorg/eclipse/jdt/internal/compiler/lookup/ParameterizedTypeBinding;->arguments:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-virtual {p0, v1}, Lorg/eclipse/jdt/internal/compiler/lookup/InferenceContext18;->getFunctionInterfaceArgumentSolutions([Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v1

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->environment()Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    move-result-object v2

    invoke-virtual {p3}, Lorg/eclipse/jdt/internal/compiler/lookup/ParameterizedTypeBinding;->enclosingType()Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move-result-object p3

    invoke-virtual {v2, v0, v1, p3}, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->createParameterizedType(Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/ParameterizedTypeBinding;

    move-result-object v0

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/ParameterizedTypeBinding;->genericType()Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move-result-object p3

    invoke-virtual {p3}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->typeVariables()[Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;

    move-result-object v2

    iget p3, p1, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceStart:I

    iget v3, p1, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceEnd:I

    invoke-virtual {v0, p2, p3, v3}, Lorg/eclipse/jdt/internal/compiler/lookup/ParameterizedTypeBinding;->capture(Lorg/eclipse/jdt/internal/compiler/lookup/Scope;II)Lorg/eclipse/jdt/internal/compiler/lookup/ParameterizedTypeBinding;

    move-result-object v3

    const/4 p3, 0x0

    :goto_0
    array-length v4, v2

    if-lt p3, v4, :cond_0

    return-object v0

    :cond_0
    aget-object v4, v2, p3

    aget-object v5, v1, p3

    invoke-virtual {v4, v3, v5, p2, p1}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;->boundCheck(Lorg/eclipse/jdt/internal/compiler/lookup/Substitution;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/Scope;Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;)Lorg/eclipse/jdt/internal/compiler/lookup/TypeConstants$BoundCheckStatus;

    move-result-object v4

    sget-object v5, Lorg/eclipse/jdt/internal/compiler/lookup/TypeConstants$BoundCheckStatus;->MISMATCH:Lorg/eclipse/jdt/internal/compiler/lookup/TypeConstants$BoundCheckStatus;

    if-ne v4, v5, :cond_1

    const/4 p1, 0x0

    return-object p1

    :cond_1
    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    :cond_2
    return-object p3
.end method

.method public inferInvocationApplicability(Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Z)V
    .locals 1

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/InferenceContext18;->inferenceKind:I

    invoke-static {p0, p1, p2, p3, v0}, Lorg/eclipse/jdt/internal/compiler/lookup/ConstraintExpressionFormula;->inferInvocationApplicability(Lorg/eclipse/jdt/internal/compiler/lookup/InferenceContext18;Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;ZI)V

    return-void
.end method

.method public inferInvocationType(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/InvocationSite;Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/BoundSet;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/internal/compiler/lookup/InferenceFailureException;
        }
    .end annotation

    if-nez p1, :cond_0

    iget-object v0, p3, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->returnType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/internal/compiler/lookup/InferenceContext18;->substitute(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    :cond_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/InferenceContext18;->b2:Lorg/eclipse/jdt/internal/compiler/lookup/BoundSet;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/BoundSet;->copy()Lorg/eclipse/jdt/internal/compiler/lookup/BoundSet;

    move-result-object v0

    iput-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/InferenceContext18;->currentBounds:Lorg/eclipse/jdt/internal/compiler/lookup/BoundSet;

    const/4 v0, 0x3

    const/4 v1, 0x1

    if-eqz p1, :cond_2

    invoke-virtual {p1, v1}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isProperType(Z)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x2

    goto :goto_1

    :cond_2
    :goto_0
    move v2, v0

    :goto_1
    const/4 v3, 0x0

    if-eqz p1, :cond_3

    :try_start_0
    sget-object v4, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->VOID:Lorg/eclipse/jdt/internal/compiler/lookup/VoidTypeBinding;

    if-eq p1, v4, :cond_3

    instance-of v4, p2, Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    if-eqz v4, :cond_3

    move-object v4, p2

    check-cast v4, Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    invoke-virtual {v4}, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->isTrulyExpression()Z

    move-result v4

    if-eqz v4, :cond_3

    move-object v4, p2

    check-cast v4, Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    invoke-virtual {v4, p3}, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->isPolyExpression(Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;)Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-virtual {p0, p2, p1, p3}, Lorg/eclipse/jdt/internal/compiler/lookup/InferenceContext18;->computeB3(Lorg/eclipse/jdt/internal/compiler/lookup/InvocationSite;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p1, :cond_4

    iput v2, p0, Lorg/eclipse/jdt/internal/compiler/lookup/InferenceContext18;->stepCompleted:I

    return-object v3

    :catchall_0
    move-exception p1

    goto/16 :goto_5

    :cond_3
    :try_start_1
    invoke-direct {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/InferenceContext18;->mergeInnerBounds()V

    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/InferenceContext18;->currentBounds:Lorg/eclipse/jdt/internal/compiler/lookup/BoundSet;

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/BoundSet;->copy()Lorg/eclipse/jdt/internal/compiler/lookup/BoundSet;

    move-result-object p1

    iput-object p1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/InferenceContext18;->b3:Lorg/eclipse/jdt/internal/compiler/lookup/BoundSet;

    :cond_4
    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/InferenceContext18;->invocationArguments:[Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    new-instance v4, Lorg/eclipse/jdt/internal/compiler/lookup/InferenceSubstitution;

    invoke-direct {v4, p0}, Lorg/eclipse/jdt/internal/compiler/lookup/InferenceSubstitution;-><init>(Lorg/eclipse/jdt/internal/compiler/lookup/InferenceContext18;)V

    invoke-direct {p0, p1, p3, v4}, Lorg/eclipse/jdt/internal/compiler/lookup/InferenceContext18;->addJDK_8153748ConstraintsFromInvocation([Lorg/eclipse/jdt/internal/compiler/ast/Expression;Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;Lorg/eclipse/jdt/internal/compiler/lookup/InferenceSubstitution;)Lorg/eclipse/jdt/internal/compiler/lookup/ReductionResult;

    move-result-object p1

    if-eqz p1, :cond_5

    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/InferenceContext18;->currentBounds:Lorg/eclipse/jdt/internal/compiler/lookup/BoundSet;

    invoke-virtual {p1, p0}, Lorg/eclipse/jdt/internal/compiler/lookup/BoundSet;->incorporate(Lorg/eclipse/jdt/internal/compiler/lookup/InferenceContext18;)Z

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez p1, :cond_5

    iput v2, p0, Lorg/eclipse/jdt/internal/compiler/lookup/InferenceContext18;->stepCompleted:I

    return-object v3

    :cond_5
    :try_start_2
    invoke-direct {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/InferenceContext18;->pushBoundsToOuter()V

    iput-boolean v1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/InferenceContext18;->directlyAcceptingInnerBounds:Z

    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iget-object v5, p0, Lorg/eclipse/jdt/internal/compiler/lookup/InferenceContext18;->invocationArguments:[Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    iget v8, p0, Lorg/eclipse/jdt/internal/compiler/lookup/InferenceContext18;->inferenceKind:I

    move-object v4, p0

    move-object v6, p1

    move-object v7, p3

    move-object v9, p2

    invoke-direct/range {v4 .. v9}, Lorg/eclipse/jdt/internal/compiler/lookup/InferenceContext18;->addConstraintsToC([Lorg/eclipse/jdt/internal/compiler/ast/Expression;Ljava/util/Set;Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;ILorg/eclipse/jdt/internal/compiler/lookup/InvocationSite;)Z

    move-result p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-nez p2, :cond_6

    iput v2, p0, Lorg/eclipse/jdt/internal/compiler/lookup/InferenceContext18;->stepCompleted:I

    return-object v3

    :cond_6
    :try_start_3
    iget-object p2, p0, Lorg/eclipse/jdt/internal/compiler/lookup/InferenceContext18;->currentBounds:Lorg/eclipse/jdt/internal/compiler/lookup/BoundSet;

    iget-object p3, p0, Lorg/eclipse/jdt/internal/compiler/lookup/InferenceContext18;->inferenceVariables:[Lorg/eclipse/jdt/internal/compiler/lookup/InferenceVariable;

    invoke-virtual {p2, p3}, Lorg/eclipse/jdt/internal/compiler/lookup/BoundSet;->computeConnectedComponents([Lorg/eclipse/jdt/internal/compiler/lookup/InferenceVariable;)Ljava/util/List;

    move-result-object p2

    :goto_2
    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    move-result p3

    if-eqz p3, :cond_a

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/InferenceContext18;->solve()Lorg/eclipse/jdt/internal/compiler/lookup/BoundSet;

    move-result-object p1

    if-eqz p1, :cond_9

    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/internal/compiler/lookup/InferenceContext18;->isResolved(Lorg/eclipse/jdt/internal/compiler/lookup/BoundSet;)Z

    move-result p2

    if-nez p2, :cond_7

    goto :goto_3

    :cond_7
    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/internal/compiler/lookup/InferenceContext18;->reportUncheckedConversions(Lorg/eclipse/jdt/internal/compiler/lookup/BoundSet;)V

    if-ne v2, v0, :cond_8

    iput-object p1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/InferenceContext18;->currentBounds:Lorg/eclipse/jdt/internal/compiler/lookup/BoundSet;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :cond_8
    iput v2, p0, Lorg/eclipse/jdt/internal/compiler/lookup/InferenceContext18;->stepCompleted:I

    return-object p1

    :cond_9
    :goto_3
    :try_start_4
    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/InferenceContext18;->b2:Lorg/eclipse/jdt/internal/compiler/lookup/BoundSet;

    iput-object p1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/InferenceContext18;->currentBounds:Lorg/eclipse/jdt/internal/compiler/lookup/BoundSet;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    iput v2, p0, Lorg/eclipse/jdt/internal/compiler/lookup/InferenceContext18;->stepCompleted:I

    return-object v3

    :cond_a
    :try_start_5
    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/internal/compiler/lookup/InferenceContext18;->allOutputVariables(Ljava/util/Set;)Ljava/util/Set;

    move-result-object p3

    invoke-direct {p0, p1, p3, p2}, Lorg/eclipse/jdt/internal/compiler/lookup/InferenceContext18;->findBottomSet(Ljava/util/Set;Ljava/util/Set;Ljava/util/List;)Ljava/util/Set;

    move-result-object p3

    invoke-interface {p3}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_b

    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/compiler/lookup/InferenceContext18;->pickFromCycle(Ljava/util/Set;)Lorg/eclipse/jdt/internal/compiler/lookup/ConstraintFormula;

    move-result-object v1

    invoke-interface {p3, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_b
    invoke-interface {p1, p3}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    invoke-interface {p3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_4
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_11

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v4

    new-array v4, v4, [Lorg/eclipse/jdt/internal/compiler/lookup/InferenceVariable;

    invoke-interface {v1, v4}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lorg/eclipse/jdt/internal/compiler/lookup/InferenceVariable;

    iget-object v4, p0, Lorg/eclipse/jdt/internal/compiler/lookup/InferenceContext18;->currentBounds:Lorg/eclipse/jdt/internal/compiler/lookup/BoundSet;

    invoke-virtual {v4, p0}, Lorg/eclipse/jdt/internal/compiler/lookup/BoundSet;->incorporate(Lorg/eclipse/jdt/internal/compiler/lookup/InferenceContext18;)Z

    move-result v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    if-nez v4, :cond_c

    iput v2, p0, Lorg/eclipse/jdt/internal/compiler/lookup/InferenceContext18;->stepCompleted:I

    return-object v3

    :cond_c
    :try_start_6
    invoke-direct {p0, v1}, Lorg/eclipse/jdt/internal/compiler/lookup/InferenceContext18;->resolve([Lorg/eclipse/jdt/internal/compiler/lookup/InferenceVariable;)Lorg/eclipse/jdt/internal/compiler/lookup/BoundSet;

    move-result-object v4

    if-nez v4, :cond_d

    iget-object v4, p0, Lorg/eclipse/jdt/internal/compiler/lookup/InferenceContext18;->inferenceVariables:[Lorg/eclipse/jdt/internal/compiler/lookup/InferenceVariable;

    invoke-direct {p0, v4}, Lorg/eclipse/jdt/internal/compiler/lookup/InferenceContext18;->resolve([Lorg/eclipse/jdt/internal/compiler/lookup/InferenceVariable;)Lorg/eclipse/jdt/internal/compiler/lookup/BoundSet;

    move-result-object v4

    :cond_d
    invoke-interface {p3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :cond_e
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_f

    goto :goto_2

    :cond_f
    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/eclipse/jdt/internal/compiler/lookup/ConstraintFormula;

    if-eqz v4, :cond_10

    invoke-virtual {v5, v4, v1}, Lorg/eclipse/jdt/internal/compiler/lookup/ConstraintFormula;->applySubstitution(Lorg/eclipse/jdt/internal/compiler/lookup/BoundSet;[Lorg/eclipse/jdt/internal/compiler/lookup/InferenceVariable;)Z

    move-result v6
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    if-nez v6, :cond_10

    iput v2, p0, Lorg/eclipse/jdt/internal/compiler/lookup/InferenceContext18;->stepCompleted:I

    return-object v3

    :cond_10
    :try_start_7
    iget-object v6, p0, Lorg/eclipse/jdt/internal/compiler/lookup/InferenceContext18;->currentBounds:Lorg/eclipse/jdt/internal/compiler/lookup/BoundSet;

    invoke-virtual {v6, p0, v5}, Lorg/eclipse/jdt/internal/compiler/lookup/BoundSet;->reduceOneConstraint(Lorg/eclipse/jdt/internal/compiler/lookup/InferenceContext18;Lorg/eclipse/jdt/internal/compiler/lookup/ConstraintFormula;)Z

    move-result v5
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    if-nez v5, :cond_e

    iput v2, p0, Lorg/eclipse/jdt/internal/compiler/lookup/InferenceContext18;->stepCompleted:I

    return-object v3

    :cond_11
    :try_start_8
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/eclipse/jdt/internal/compiler/lookup/ConstraintFormula;

    invoke-virtual {v5, p0}, Lorg/eclipse/jdt/internal/compiler/lookup/ConstraintFormula;->inputVariables(Lorg/eclipse/jdt/internal/compiler/lookup/InferenceContext18;)Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v1, v5}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto :goto_4

    :goto_5
    iput v2, p0, Lorg/eclipse/jdt/internal/compiler/lookup/InferenceContext18;->stepCompleted:I

    throw p1
.end method

.method public integrateInnerInferenceB2(Lorg/eclipse/jdt/internal/compiler/lookup/InferenceContext18;)V
    .locals 3

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/InferenceContext18;->currentBounds:Lorg/eclipse/jdt/internal/compiler/lookup/BoundSet;

    iget-object v1, p1, Lorg/eclipse/jdt/internal/compiler/lookup/InferenceContext18;->b2:Lorg/eclipse/jdt/internal/compiler/lookup/BoundSet;

    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/lookup/InferenceContext18;->environment:Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    invoke-virtual {v0, v1, v2}, Lorg/eclipse/jdt/internal/compiler/lookup/BoundSet;->addBounds(Lorg/eclipse/jdt/internal/compiler/lookup/BoundSet;Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;)V

    iget-object v0, p1, Lorg/eclipse/jdt/internal/compiler/lookup/InferenceContext18;->inferenceVariables:[Lorg/eclipse/jdt/internal/compiler/lookup/InferenceVariable;

    iput-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/InferenceContext18;->inferenceVariables:[Lorg/eclipse/jdt/internal/compiler/lookup/InferenceVariable;

    iget v0, p1, Lorg/eclipse/jdt/internal/compiler/lookup/InferenceContext18;->inferenceKind:I

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/InferenceContext18;->inferenceKind:I

    iget-object v0, p1, Lorg/eclipse/jdt/internal/compiler/lookup/InferenceContext18;->currentInvocation:Lorg/eclipse/jdt/internal/compiler/lookup/InvocationSite;

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/InferenceContext18;->currentInvocation:Lorg/eclipse/jdt/internal/compiler/lookup/InvocationSite;

    invoke-static {v0, v1}, Lorg/eclipse/jdt/internal/compiler/lookup/InferenceContext18;->isSameSite(Lorg/eclipse/jdt/internal/compiler/lookup/InvocationSite;Lorg/eclipse/jdt/internal/compiler/lookup/InvocationSite;)Z

    move-result v0

    if-nez v0, :cond_0

    iput-object p0, p1, Lorg/eclipse/jdt/internal/compiler/lookup/InferenceContext18;->outerContext:Lorg/eclipse/jdt/internal/compiler/lookup/InferenceContext18;

    :cond_0
    iget-boolean p1, p1, Lorg/eclipse/jdt/internal/compiler/lookup/InferenceContext18;->usesUncheckedConversion:Z

    iput-boolean p1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/InferenceContext18;->usesUncheckedConversion:Z

    return-void
.end method

.method public isMoreSpecificThan(Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;ZZ)Z
    .locals 8

    if-eq p3, p4, :cond_0

    return p4

    :cond_0
    iget-object p4, p0, Lorg/eclipse/jdt/internal/compiler/lookup/InferenceContext18;->invocationArguments:[Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    const/4 v0, 0x0

    if-nez p4, :cond_1

    move p4, v0

    goto :goto_0

    :cond_1
    array-length p4, p4

    :goto_0
    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->typeVariables()[Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;

    move-result-object v1

    iget-object p1, p1, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->parameters:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    iget-object v2, p2, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->parameters:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    array-length v2, v2

    new-array v3, v2, [Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-virtual {p0, v1}, Lorg/eclipse/jdt/internal/compiler/lookup/InferenceContext18;->createInitialBoundSet([Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;)[Lorg/eclipse/jdt/internal/compiler/lookup/InferenceVariable;

    move v1, v0

    :goto_1
    if-lt v1, v2, :cond_7

    move p2, v0

    :goto_2
    const/4 v1, 0x2

    if-lt p2, p4, :cond_4

    add-int/lit8 p2, p4, 0x1

    const/4 p3, 0x1

    if-ne v2, p2, :cond_2

    :try_start_0
    invoke-static {p1, p4, p3}, Lorg/eclipse/jdt/internal/compiler/lookup/InferenceContext18;->getParameter([Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;IZ)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object p1

    invoke-static {v3, p4, p3}, Lorg/eclipse/jdt/internal/compiler/lookup/InferenceContext18;->getParameter([Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;IZ)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object p2

    invoke-static {p1, p2, v1}, Lorg/eclipse/jdt/internal/compiler/lookup/ConstraintTypeFormula;->create(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;I)Lorg/eclipse/jdt/internal/compiler/lookup/ConstraintTypeFormula;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/internal/compiler/lookup/InferenceContext18;->reduceAndIncorporate(Lorg/eclipse/jdt/internal/compiler/lookup/ConstraintFormula;)Z

    move-result p1

    if-nez p1, :cond_2

    return v0

    :cond_2
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/InferenceContext18;->solve()Lorg/eclipse/jdt/internal/compiler/lookup/BoundSet;

    move-result-object p1

    if-eqz p1, :cond_3

    return p3

    :cond_3
    return v0

    :cond_4
    invoke-static {p1, p2, p3}, Lorg/eclipse/jdt/internal/compiler/lookup/InferenceContext18;->getParameter([Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;IZ)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v4

    invoke-static {v3, p2, p3}, Lorg/eclipse/jdt/internal/compiler/lookup/InferenceContext18;->getParameter([Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;IZ)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v5

    iget-object v6, p0, Lorg/eclipse/jdt/internal/compiler/lookup/InferenceContext18;->invocationArguments:[Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    aget-object v6, v6, p2

    invoke-direct {p0, v4, v5, v6}, Lorg/eclipse/jdt/internal/compiler/lookup/InferenceContext18;->moreSpecificMain(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/ast/Expression;)Ljava/lang/Boolean;

    move-result-object v6

    sget-object v7, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-ne v6, v7, :cond_5

    return v0

    :cond_5
    if-nez v6, :cond_6

    invoke-static {v4, v5, v1}, Lorg/eclipse/jdt/internal/compiler/lookup/ConstraintTypeFormula;->create(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;I)Lorg/eclipse/jdt/internal/compiler/lookup/ConstraintTypeFormula;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/eclipse/jdt/internal/compiler/lookup/InferenceContext18;->reduceAndIncorporate(Lorg/eclipse/jdt/internal/compiler/lookup/ConstraintFormula;)Z

    move-result v1
    :try_end_0
    .catch Lorg/eclipse/jdt/internal/compiler/lookup/InferenceFailureException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v1, :cond_6

    return v0

    :cond_6
    add-int/lit8 p2, p2, 0x1

    goto :goto_2

    :catch_0
    return v0

    :cond_7
    iget-object v4, p2, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->parameters:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    aget-object v4, v4, v1

    invoke-virtual {p0, v4}, Lorg/eclipse/jdt/internal/compiler/lookup/InferenceContext18;->substitute(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v4

    aput-object v4, v3, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public isResolved(Lorg/eclipse/jdt/internal/compiler/lookup/BoundSet;)Z
    .locals 4

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/InferenceContext18;->inferenceVariables:[Lorg/eclipse/jdt/internal/compiler/lookup/InferenceVariable;

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/lookup/InferenceContext18;->inferenceVariables:[Lorg/eclipse/jdt/internal/compiler/lookup/InferenceVariable;

    array-length v3, v2

    if-lt v1, v3, :cond_0

    goto :goto_1

    :cond_0
    aget-object v2, v2, v1

    invoke-virtual {p1, v2}, Lorg/eclipse/jdt/internal/compiler/lookup/BoundSet;->isInstantiated(Lorg/eclipse/jdt/internal/compiler/lookup/InferenceVariable;)Z

    move-result v2

    if-nez v2, :cond_1

    return v0

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    const/4 p1, 0x1

    return p1
.end method

.method public isVarArgs()Z
    .locals 2

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/InferenceContext18;->inferenceKind:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public recordUncheckedConversion(Lorg/eclipse/jdt/internal/compiler/lookup/ConstraintTypeFormula;)V
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/InferenceContext18;->constraintsWithUncheckedConversion:Ljava/util/List;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/InferenceContext18;->constraintsWithUncheckedConversion:Ljava/util/List;

    :cond_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/InferenceContext18;->constraintsWithUncheckedConversion:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 p1, 0x1

    iput-boolean p1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/InferenceContext18;->usesUncheckedConversion:Z

    return-void
.end method

.method public reduceAndIncorporate(Lorg/eclipse/jdt/internal/compiler/lookup/ConstraintFormula;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/internal/compiler/lookup/InferenceFailureException;
        }
    .end annotation

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/InferenceContext18;->currentBounds:Lorg/eclipse/jdt/internal/compiler/lookup/BoundSet;

    invoke-virtual {v0, p0, p1}, Lorg/eclipse/jdt/internal/compiler/lookup/BoundSet;->reduceOneConstraint(Lorg/eclipse/jdt/internal/compiler/lookup/InferenceContext18;Lorg/eclipse/jdt/internal/compiler/lookup/ConstraintFormula;)Z

    move-result p1

    return p1
.end method

.method public reduceWithEqualityConstraints([Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Z
    .locals 5

    if-eqz p1, :cond_2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    array-length v2, p1

    if-lt v1, v2, :cond_0

    goto :goto_1

    :cond_0
    :try_start_0
    aget-object v2, p1, v1

    aget-object v3, p2, v1

    const/4 v4, 0x4

    invoke-static {v2, v3, v4}, Lorg/eclipse/jdt/internal/compiler/lookup/ConstraintTypeFormula;->create(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;I)Lorg/eclipse/jdt/internal/compiler/lookup/ConstraintTypeFormula;

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/eclipse/jdt/internal/compiler/lookup/InferenceContext18;->reduceAndIncorporate(Lorg/eclipse/jdt/internal/compiler/lookup/ConstraintFormula;)Z

    move-result v2
    :try_end_0
    .catch Lorg/eclipse/jdt/internal/compiler/lookup/InferenceFailureException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v2, :cond_1

    return v0

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catch_0
    return v0

    :cond_2
    :goto_1
    const/4 p1, 0x1

    return p1
.end method

.method public reportUncheckedConversions(Lorg/eclipse/jdt/internal/compiler/lookup/BoundSet;)V
    .locals 6

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/InferenceContext18;->constraintsWithUncheckedConversion:Ljava/util/List;

    if-eqz v0, :cond_3

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/compiler/lookup/InferenceContext18;->getResultSubstitution(Lorg/eclipse/jdt/internal/compiler/lookup/BoundSet;)Lorg/eclipse/jdt/internal/compiler/lookup/Substitution;

    move-result-object p1

    const/4 v1, 0x0

    :goto_0
    if-lt v1, v0, :cond_0

    goto :goto_1

    :cond_0
    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/lookup/InferenceContext18;->constraintsWithUncheckedConversion:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/eclipse/jdt/internal/compiler/lookup/ConstraintTypeFormula;

    iget-object v3, v2, Lorg/eclipse/jdt/internal/compiler/lookup/ReductionResult;->right:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    iget-object v2, v2, Lorg/eclipse/jdt/internal/compiler/lookup/ConstraintTypeFormula;->left:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isProperType(Z)Z

    move-result v5

    if-nez v5, :cond_1

    invoke-static {p1, v3}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->substitute(Lorg/eclipse/jdt/internal/compiler/lookup/Substitution;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    :cond_1
    invoke-virtual {v2, v4}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isProperType(Z)Z

    move-result v3

    if-nez v3, :cond_2

    invoke-static {p1, v2}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->substitute(Lorg/eclipse/jdt/internal/compiler/lookup/Substitution;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    return-void
.end method

.method public resumeSuspendedInference(Lorg/eclipse/jdt/internal/compiler/lookup/InferenceContext18$SuspendedInferenceRecord;Lorg/eclipse/jdt/internal/compiler/lookup/InferenceContext18;)V
    .locals 4

    invoke-direct {p0, p2}, Lorg/eclipse/jdt/internal/compiler/lookup/InferenceContext18;->collectInnerContext(Lorg/eclipse/jdt/internal/compiler/lookup/InferenceContext18;)Z

    move-result p2

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/InferenceContext18;->inferenceVariables:[Lorg/eclipse/jdt/internal/compiler/lookup/InferenceVariable;

    if-nez v0, :cond_0

    iget-object p2, p1, Lorg/eclipse/jdt/internal/compiler/lookup/InferenceContext18$SuspendedInferenceRecord;->inferenceVariables:[Lorg/eclipse/jdt/internal/compiler/lookup/InferenceVariable;

    iput-object p2, p0, Lorg/eclipse/jdt/internal/compiler/lookup/InferenceContext18;->inferenceVariables:[Lorg/eclipse/jdt/internal/compiler/lookup/InferenceVariable;

    goto :goto_0

    :cond_0
    if-nez p2, :cond_1

    new-instance p2, Ljava/util/LinkedHashSet;

    invoke-direct {p2}, Ljava/util/LinkedHashSet;-><init>()V

    iget-object v0, p1, Lorg/eclipse/jdt/internal/compiler/lookup/InferenceContext18$SuspendedInferenceRecord;->inferenceVariables:[Lorg/eclipse/jdt/internal/compiler/lookup/InferenceVariable;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/InferenceContext18;->inferenceVariables:[Lorg/eclipse/jdt/internal/compiler/lookup/InferenceVariable;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    invoke-interface {p2}, Ljava/util/Set;->size()I

    move-result v0

    new-array v0, v0, [Lorg/eclipse/jdt/internal/compiler/lookup/InferenceVariable;

    invoke-interface {p2, v0}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Lorg/eclipse/jdt/internal/compiler/lookup/InferenceVariable;

    iput-object p2, p0, Lorg/eclipse/jdt/internal/compiler/lookup/InferenceContext18;->inferenceVariables:[Lorg/eclipse/jdt/internal/compiler/lookup/InferenceVariable;

    goto :goto_0

    :cond_1
    array-length p2, v0

    iget-object v1, p1, Lorg/eclipse/jdt/internal/compiler/lookup/InferenceContext18$SuspendedInferenceRecord;->inferenceVariables:[Lorg/eclipse/jdt/internal/compiler/lookup/InferenceVariable;

    array-length v1, v1

    add-int v2, p2, v1

    new-array v2, v2, [Lorg/eclipse/jdt/internal/compiler/lookup/InferenceVariable;

    iput-object v2, p0, Lorg/eclipse/jdt/internal/compiler/lookup/InferenceContext18;->inferenceVariables:[Lorg/eclipse/jdt/internal/compiler/lookup/InferenceVariable;

    const/4 v3, 0x0

    invoke-static {v0, v3, v2, v1, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object p2, p1, Lorg/eclipse/jdt/internal/compiler/lookup/InferenceContext18$SuspendedInferenceRecord;->inferenceVariables:[Lorg/eclipse/jdt/internal/compiler/lookup/InferenceVariable;

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/InferenceContext18;->inferenceVariables:[Lorg/eclipse/jdt/internal/compiler/lookup/InferenceVariable;

    invoke-static {p2, v3, v0, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_0
    iget-object p2, p1, Lorg/eclipse/jdt/internal/compiler/lookup/InferenceContext18$SuspendedInferenceRecord;->site:Lorg/eclipse/jdt/internal/compiler/lookup/InvocationSite;

    iput-object p2, p0, Lorg/eclipse/jdt/internal/compiler/lookup/InferenceContext18;->currentInvocation:Lorg/eclipse/jdt/internal/compiler/lookup/InvocationSite;

    iget-object p2, p1, Lorg/eclipse/jdt/internal/compiler/lookup/InferenceContext18$SuspendedInferenceRecord;->invocationArguments:[Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    iput-object p2, p0, Lorg/eclipse/jdt/internal/compiler/lookup/InferenceContext18;->invocationArguments:[Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    iget p2, p1, Lorg/eclipse/jdt/internal/compiler/lookup/InferenceContext18$SuspendedInferenceRecord;->inferenceKind:I

    iput p2, p0, Lorg/eclipse/jdt/internal/compiler/lookup/InferenceContext18;->inferenceKind:I

    iget-boolean p1, p1, Lorg/eclipse/jdt/internal/compiler/lookup/InferenceContext18$SuspendedInferenceRecord;->usesUncheckedConversion:Z

    iput-boolean p1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/InferenceContext18;->usesUncheckedConversion:Z

    return-void
.end method

.method public solve()Lorg/eclipse/jdt/internal/compiler/lookup/BoundSet;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/internal/compiler/lookup/InferenceFailureException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 10
    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/internal/compiler/lookup/InferenceContext18;->solve(Z)Lorg/eclipse/jdt/internal/compiler/lookup/BoundSet;

    move-result-object v0

    return-object v0
.end method

.method public solve(Z)Lorg/eclipse/jdt/internal/compiler/lookup/BoundSet;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/internal/compiler/lookup/InferenceFailureException;
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/InferenceContext18;->reduce()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 2
    :cond_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/InferenceContext18;->currentBounds:Lorg/eclipse/jdt/internal/compiler/lookup/BoundSet;

    invoke-virtual {v0, p0}, Lorg/eclipse/jdt/internal/compiler/lookup/BoundSet;->incorporate(Lorg/eclipse/jdt/internal/compiler/lookup/InferenceContext18;)Z

    move-result v0

    if-nez v0, :cond_1

    return-object v1

    :cond_1
    if-eqz p1, :cond_2

    .line 3
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/InferenceContext18;->currentBounds:Lorg/eclipse/jdt/internal/compiler/lookup/BoundSet;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/BoundSet;->copy()Lorg/eclipse/jdt/internal/compiler/lookup/BoundSet;

    move-result-object v0

    iput-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/InferenceContext18;->b2:Lorg/eclipse/jdt/internal/compiler/lookup/BoundSet;

    .line 4
    :cond_2
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/InferenceContext18;->inferenceVariables:[Lorg/eclipse/jdt/internal/compiler/lookup/InferenceVariable;

    invoke-direct {p0, v0}, Lorg/eclipse/jdt/internal/compiler/lookup/InferenceContext18;->resolve([Lorg/eclipse/jdt/internal/compiler/lookup/InferenceVariable;)Lorg/eclipse/jdt/internal/compiler/lookup/BoundSet;

    move-result-object v0

    if-eqz p1, :cond_6

    if-eqz v0, :cond_6

    .line 5
    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/InferenceContext18;->finalConstraints:[Lorg/eclipse/jdt/internal/compiler/lookup/ConstraintExpressionFormula;

    if-eqz p1, :cond_6

    .line 6
    array-length v2, p1

    const/4 v3, 0x0

    :goto_0
    if-lt v3, v2, :cond_3

    goto :goto_2

    :cond_3
    aget-object v4, p1, v3

    .line 7
    iget-object v5, v4, Lorg/eclipse/jdt/internal/compiler/lookup/ConstraintExpressionFormula;->left:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    invoke-virtual {v5}, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->isPolyExpression()Z

    move-result v5

    if-eqz v5, :cond_4

    goto :goto_1

    .line 8
    :cond_4
    iget-object v5, p0, Lorg/eclipse/jdt/internal/compiler/lookup/InferenceContext18;->inferenceVariables:[Lorg/eclipse/jdt/internal/compiler/lookup/InferenceVariable;

    invoke-virtual {v4, v0, v5}, Lorg/eclipse/jdt/internal/compiler/lookup/ConstraintFormula;->applySubstitution(Lorg/eclipse/jdt/internal/compiler/lookup/BoundSet;[Lorg/eclipse/jdt/internal/compiler/lookup/InferenceVariable;)Z

    .line 9
    iget-object v5, p0, Lorg/eclipse/jdt/internal/compiler/lookup/InferenceContext18;->currentBounds:Lorg/eclipse/jdt/internal/compiler/lookup/BoundSet;

    invoke-virtual {v5, p0, v4}, Lorg/eclipse/jdt/internal/compiler/lookup/BoundSet;->reduceOneConstraint(Lorg/eclipse/jdt/internal/compiler/lookup/InferenceContext18;Lorg/eclipse/jdt/internal/compiler/lookup/ConstraintFormula;)Z

    move-result v4

    if-nez v4, :cond_5

    return-object v1

    :cond_5
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_6
    :goto_2
    return-object v0
.end method

.method public solve([Lorg/eclipse/jdt/internal/compiler/lookup/InferenceVariable;)Lorg/eclipse/jdt/internal/compiler/lookup/BoundSet;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/internal/compiler/lookup/InferenceFailureException;
        }
    .end annotation

    .line 11
    invoke-direct {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/InferenceContext18;->reduce()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 12
    :cond_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/InferenceContext18;->currentBounds:Lorg/eclipse/jdt/internal/compiler/lookup/BoundSet;

    invoke-virtual {v0, p0}, Lorg/eclipse/jdt/internal/compiler/lookup/BoundSet;->incorporate(Lorg/eclipse/jdt/internal/compiler/lookup/InferenceContext18;)Z

    move-result v0

    if-nez v0, :cond_1

    return-object v1

    .line 13
    :cond_1
    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/compiler/lookup/InferenceContext18;->resolve([Lorg/eclipse/jdt/internal/compiler/lookup/InferenceVariable;)Lorg/eclipse/jdt/internal/compiler/lookup/BoundSet;

    move-result-object p1

    return-object p1
.end method

.method public substitute(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;
    .locals 1

    new-instance v0, Lorg/eclipse/jdt/internal/compiler/lookup/InferenceSubstitution;

    invoke-direct {v0, p0}, Lorg/eclipse/jdt/internal/compiler/lookup/InferenceSubstitution;-><init>(Lorg/eclipse/jdt/internal/compiler/lookup/InferenceContext18;)V

    invoke-virtual {v0, v0, p1}, Lorg/eclipse/jdt/internal/compiler/lookup/InferenceSubstitution;->substitute(Lorg/eclipse/jdt/internal/compiler/lookup/Substitution;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object p1

    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 8

    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "Inference Context"

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/InferenceContext18;->stepCompleted:I

    const/4 v2, 0x3

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v1, :cond_3

    if-eq v1, v4, :cond_2

    if-eq v1, v3, :cond_1

    if-eq v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, " (type inferred final)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    :cond_1
    const-string v1, " (type inferred)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    :cond_2
    const-string v1, " (applicability inferred)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    :cond_3
    const-string v1, " (initial)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :goto_0
    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/InferenceContext18;->inferenceKind:I

    if-eq v1, v4, :cond_6

    if-eq v1, v3, :cond_5

    if-eq v1, v2, :cond_4

    goto :goto_1

    :cond_4
    const-string v1, " (vararg)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    :cond_5
    const-string v1, " (loose)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    :cond_6
    const-string v1, " (strict)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :goto_1
    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/InferenceContext18;->currentBounds:Lorg/eclipse/jdt/internal/compiler/lookup/BoundSet;

    if-eqz v1, :cond_7

    invoke-virtual {p0, v1}, Lorg/eclipse/jdt/internal/compiler/lookup/InferenceContext18;->isResolved(Lorg/eclipse/jdt/internal/compiler/lookup/BoundSet;)Z

    move-result v1

    if-eqz v1, :cond_7

    const-string v1, " (resolved)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_7
    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/lookup/InferenceContext18;->inferenceVariables:[Lorg/eclipse/jdt/internal/compiler/lookup/InferenceVariable;

    const/16 v3, 0x9

    const/4 v4, 0x0

    if-eqz v2, :cond_a

    const-string v2, "Inference Variables:\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move v2, v4

    :goto_2
    iget-object v5, p0, Lorg/eclipse/jdt/internal/compiler/lookup/InferenceContext18;->inferenceVariables:[Lorg/eclipse/jdt/internal/compiler/lookup/InferenceVariable;

    array-length v5, v5

    if-lt v2, v5, :cond_8

    goto :goto_4

    :cond_8
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    iget-object v5, p0, Lorg/eclipse/jdt/internal/compiler/lookup/InferenceContext18;->inferenceVariables:[Lorg/eclipse/jdt/internal/compiler/lookup/InferenceVariable;

    aget-object v5, v5, v2

    iget-object v5, v5, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->sourceName:[C

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    const-string v5, "\t:\t"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v5, p0, Lorg/eclipse/jdt/internal/compiler/lookup/InferenceContext18;->currentBounds:Lorg/eclipse/jdt/internal/compiler/lookup/BoundSet;

    if-eqz v5, :cond_9

    iget-object v6, p0, Lorg/eclipse/jdt/internal/compiler/lookup/InferenceContext18;->inferenceVariables:[Lorg/eclipse/jdt/internal/compiler/lookup/InferenceVariable;

    aget-object v6, v6, v2

    invoke-virtual {v5, v6}, Lorg/eclipse/jdt/internal/compiler/lookup/BoundSet;->isInstantiated(Lorg/eclipse/jdt/internal/compiler/lookup/InferenceVariable;)Z

    move-result v5

    if-eqz v5, :cond_9

    iget-object v5, p0, Lorg/eclipse/jdt/internal/compiler/lookup/InferenceContext18;->currentBounds:Lorg/eclipse/jdt/internal/compiler/lookup/BoundSet;

    iget-object v6, p0, Lorg/eclipse/jdt/internal/compiler/lookup/InferenceContext18;->inferenceVariables:[Lorg/eclipse/jdt/internal/compiler/lookup/InferenceVariable;

    aget-object v6, v6, v2

    iget-object v7, p0, Lorg/eclipse/jdt/internal/compiler/lookup/InferenceContext18;->environment:Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    invoke-virtual {v5, v6, v7}, Lorg/eclipse/jdt/internal/compiler/lookup/BoundSet;->getInstantiation(Lorg/eclipse/jdt/internal/compiler/lookup/InferenceVariable;Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v5

    invoke-virtual {v5}, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->readableName()[C

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    goto :goto_3

    :cond_9
    const-string v5, "NOT INSTANTIATED"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :goto_3
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_a
    :goto_4
    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/lookup/InferenceContext18;->initialConstraints:[Lorg/eclipse/jdt/internal/compiler/lookup/ConstraintFormula;

    if-eqz v2, :cond_d

    const-string v2, "Initial Constraints:\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :goto_5
    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/lookup/InferenceContext18;->initialConstraints:[Lorg/eclipse/jdt/internal/compiler/lookup/ConstraintFormula;

    array-length v5, v2

    if-lt v4, v5, :cond_b

    goto :goto_6

    :cond_b
    aget-object v2, v2, v4

    if-eqz v2, :cond_c

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/lookup/InferenceContext18;->initialConstraints:[Lorg/eclipse/jdt/internal/compiler/lookup/ConstraintFormula;

    aget-object v2, v2, v4

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_c
    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    :cond_d
    :goto_6
    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/InferenceContext18;->currentBounds:Lorg/eclipse/jdt/internal/compiler/lookup/BoundSet;

    if-eqz v1, :cond_e

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/compiler/lookup/BoundSet;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_e
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public usesUncheckedConversion()Z
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/InferenceContext18;->constraintsWithUncheckedConversion:Ljava/util/List;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
