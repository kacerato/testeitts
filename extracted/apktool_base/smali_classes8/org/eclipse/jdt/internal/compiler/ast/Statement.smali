.class public abstract Lorg/eclipse/jdt/internal/compiler/ast/Statement;
.super Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;
.source "SourceFile"


# static fields
.field public static final COMPLAINED_FAKE_REACHABLE:I = 0x1

.field public static final COMPLAINED_UNREACHABLE:I = 0x2

.field public static final NOT_COMPLAINED:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;-><init>()V

    return-void
.end method

.method private internalCheckAgainstNullTypeAnnotation(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/ast/Expression;ILorg/eclipse/jdt/internal/compiler/flow/FlowContext;Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;)V
    .locals 9

    iget-object v1, p3, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->resolvedType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    const/4 v3, 0x0

    sget-object v6, Lorg/eclipse/jdt/internal/compiler/ast/NullAnnotationMatching$CheckMode;->COMPATIBLE:Lorg/eclipse/jdt/internal/compiler/ast/NullAnnotationMatching$CheckMode;

    const/4 v2, 0x0

    move-object v0, p2

    move v4, p4

    move-object v5, p3

    invoke-static/range {v0 .. v6}, Lorg/eclipse/jdt/internal/compiler/ast/NullAnnotationMatching;->analyse(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/Substitution;ILorg/eclipse/jdt/internal/compiler/ast/Expression;Lorg/eclipse/jdt/internal/compiler/ast/NullAnnotationMatching$CheckMode;)Lorg/eclipse/jdt/internal/compiler/ast/NullAnnotationMatching;

    move-result-object v8

    invoke-virtual {v8}, Lorg/eclipse/jdt/internal/compiler/ast/NullAnnotationMatching;->isDefiniteMismatch()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object v0

    iget-object v1, p3, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->resolvedType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-virtual {v0, p3, v1, p2, v8}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->nullityMismatchingTypeAnnotation(Lorg/eclipse/jdt/internal/compiler/ast/Expression;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/ast/NullAnnotationMatching;)V

    goto :goto_0

    :cond_0
    invoke-virtual {v8}, Lorg/eclipse/jdt/internal/compiler/ast/NullAnnotationMatching;->wantToReport()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {v8, p1}, Lorg/eclipse/jdt/internal/compiler/ast/NullAnnotationMatching;->report(Lorg/eclipse/jdt/internal/compiler/lookup/Scope;)V

    :cond_1
    invoke-virtual {v8}, Lorg/eclipse/jdt/internal/compiler/ast/NullAnnotationMatching;->isUnchecked()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v3, p3, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->resolvedType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-object v0, p5

    move-object v1, p1

    move-object v2, p3

    move-object v4, p2

    move-object v5, p6

    move v6, p4

    move-object v7, v8

    invoke-virtual/range {v0 .. v7}, Lorg/eclipse/jdt/internal/compiler/flow/FlowContext;->recordNullityMismatch(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;Lorg/eclipse/jdt/internal/compiler/ast/Expression;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;ILorg/eclipse/jdt/internal/compiler/ast/NullAnnotationMatching;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public static isKnowDeadCodePattern(Lorg/eclipse/jdt/internal/compiler/ast/Expression;)Z
    .locals 1

    instance-of v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/UnaryExpression;

    if-eqz v0, :cond_0

    check-cast p0, Lorg/eclipse/jdt/internal/compiler/ast/UnaryExpression;

    iget-object p0, p0, Lorg/eclipse/jdt/internal/compiler/ast/UnaryExpression;->expression:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    :cond_0
    instance-of p0, p0, Lorg/eclipse/jdt/internal/compiler/ast/Reference;

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public analyseArguments(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;Lorg/eclipse/jdt/internal/compiler/flow/FlowContext;Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;[Lorg/eclipse/jdt/internal/compiler/ast/Expression;)V
    .locals 18

    move-object/from16 v0, p4

    move-object/from16 v1, p5

    if-eqz v1, :cond_f

    invoke-virtual/range {p1 .. p1}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->compilerOptions()Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;

    move-result-object v2

    iget-wide v2, v2, Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;->sourceLevel:J

    const-wide/32 v4, 0x330000

    cmp-long v2, v2, v4

    if-ltz v2, :cond_0

    invoke-virtual/range {p4 .. p4}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->isPolymorphic()Z

    move-result v2

    if-eqz v2, :cond_0

    return-void

    :cond_0
    invoke-virtual/range {p1 .. p1}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->environment()Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    move-result-object v2

    invoke-virtual {v2}, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->usesNullTypeAnnotations()Z

    move-result v2

    iget-object v3, v0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->parameterNonNullness:[Ljava/lang/Boolean;

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v3, :cond_1

    move v3, v5

    goto :goto_0

    :cond_1
    move v3, v4

    :goto_0
    iget-object v6, v0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->parameters:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    array-length v6, v6

    const/4 v7, 0x0

    if-nez v2, :cond_2

    if-eqz v3, :cond_5

    :cond_2
    invoke-virtual/range {p4 .. p4}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->isVarargs()Z

    move-result v8

    if-eqz v8, :cond_5

    add-int/lit8 v8, v6, -0x1

    iget-object v9, v0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->parameters:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    aget-object v9, v9, v8

    array-length v10, v1

    if-ne v6, v10, :cond_3

    aget-object v10, v1, v8

    iget-object v10, v10, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->resolvedType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    sget-object v11, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->NULL:Lorg/eclipse/jdt/internal/compiler/lookup/NullTypeBinding;

    if-eq v10, v11, :cond_4

    invoke-virtual {v9}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->dimensions()I

    move-result v11

    invoke-virtual {v10}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->dimensions()I

    move-result v12

    if-ne v11, v12, :cond_3

    invoke-virtual {v10, v9}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isCompatibleWith(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Z

    move-result v10

    if-eqz v10, :cond_3

    goto :goto_1

    :cond_3
    move v5, v4

    :cond_4
    :goto_1
    if-nez v5, :cond_6

    add-int/lit8 v6, v6, -0x1

    goto :goto_2

    :cond_5
    const/4 v8, -0x1

    move v5, v4

    move-object v9, v7

    :cond_6
    :goto_2
    if-eqz v2, :cond_b

    :goto_3
    if-lt v4, v6, :cond_9

    if-nez v5, :cond_f

    instance-of v2, v9, Lorg/eclipse/jdt/internal/compiler/lookup/ArrayBinding;

    if-eqz v2, :cond_f

    check-cast v9, Lorg/eclipse/jdt/internal/compiler/lookup/ArrayBinding;

    invoke-virtual {v9}, Lorg/eclipse/jdt/internal/compiler/lookup/ArrayBinding;->elementsType()Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v2

    if-eqz v3, :cond_7

    iget-object v3, v0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->parameterNonNullness:[Ljava/lang/Boolean;

    aget-object v7, v3, v8

    :cond_7
    :goto_4
    array-length v3, v1

    if-lt v6, v3, :cond_8

    goto/16 :goto_8

    :cond_8
    aget-object v15, v1, v6

    invoke-virtual/range {p4 .. p4}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->original()Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    move-result-object v3

    iget-object v3, v3, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->parameters:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    aget-object v17, v3, v8

    move-object/from16 v10, p0

    move-object/from16 v11, p1

    move-object/from16 v12, p2

    move-object/from16 v13, p3

    move-object v14, v2

    move-object/from16 v16, v7

    invoke-virtual/range {v10 .. v17}, Lorg/eclipse/jdt/internal/compiler/ast/Statement;->analyseOneArgument18(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;Lorg/eclipse/jdt/internal/compiler/flow/FlowContext;Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/ast/Expression;Ljava/lang/Boolean;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    :cond_9
    iget-object v2, v0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->parameters:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    aget-object v14, v2, v4

    if-eqz v3, :cond_a

    iget-object v2, v0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->parameterNonNullness:[Ljava/lang/Boolean;

    aget-object v2, v2, v4

    move-object/from16 v16, v2

    goto :goto_5

    :cond_a
    move-object/from16 v16, v7

    :goto_5
    aget-object v15, v1, v4

    invoke-virtual/range {p4 .. p4}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->original()Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    move-result-object v2

    iget-object v2, v2, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->parameters:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    aget-object v17, v2, v4

    move-object/from16 v10, p0

    move-object/from16 v11, p1

    move-object/from16 v12, p2

    move-object/from16 v13, p3

    invoke-virtual/range {v10 .. v17}, Lorg/eclipse/jdt/internal/compiler/ast/Statement;->analyseOneArgument18(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;Lorg/eclipse/jdt/internal/compiler/flow/FlowContext;Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/ast/Expression;Ljava/lang/Boolean;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    :cond_b
    if-eqz v3, :cond_f

    :goto_6
    if-lt v4, v6, :cond_c

    goto :goto_8

    :cond_c
    iget-object v2, v0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->parameterNonNullness:[Ljava/lang/Boolean;

    aget-object v2, v2, v4

    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    if-ne v2, v3, :cond_d

    iget-object v2, v0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->parameters:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    aget-object v11, v2, v4

    aget-object v9, v1, v4

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    invoke-virtual {v9, v3, v2}, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->nullStatus(Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;Lorg/eclipse/jdt/internal/compiler/flow/FlowContext;)I

    move-result v13

    const/4 v5, 0x4

    if-eq v13, v5, :cond_e

    iget-object v10, v9, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->resolvedType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    const/4 v14, 0x0

    move-object/from16 v7, p2

    move-object/from16 v8, p1

    move-object/from16 v12, p3

    invoke-virtual/range {v7 .. v14}, Lorg/eclipse/jdt/internal/compiler/flow/FlowContext;->recordNullityMismatch(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;Lorg/eclipse/jdt/internal/compiler/ast/Expression;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;ILorg/eclipse/jdt/internal/compiler/ast/NullAnnotationMatching;)V

    goto :goto_7

    :cond_d
    move-object/from16 v2, p2

    move-object/from16 v3, p3

    :cond_e
    :goto_7
    add-int/lit8 v4, v4, 0x1

    goto :goto_6

    :cond_f
    :goto_8
    return-void
.end method

.method public abstract analyseCode(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;Lorg/eclipse/jdt/internal/compiler/flow/FlowContext;Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;)Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;
.end method

.method public analyseOneArgument18(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;Lorg/eclipse/jdt/internal/compiler/flow/FlowContext;Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/ast/Expression;Ljava/lang/Boolean;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)V
    .locals 11

    move-object/from16 v4, p5

    instance-of v0, v4, Lorg/eclipse/jdt/internal/compiler/ast/ConditionalExpression;

    if-eqz v0, :cond_0

    invoke-virtual/range {p5 .. p5}, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->isPolyExpression()Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v0, v4

    check-cast v0, Lorg/eclipse/jdt/internal/compiler/ast/ConditionalExpression;

    iget-object v5, v0, Lorg/eclipse/jdt/internal/compiler/ast/ConditionalExpression;->valueIfTrue:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    iget v7, v0, Lorg/eclipse/jdt/internal/compiler/ast/ConditionalExpression;->ifTrueNullStatus:I

    move-object v1, v0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p4

    move-object v6, p3

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    invoke-virtual/range {v1 .. v9}, Lorg/eclipse/jdt/internal/compiler/ast/Statement;->internalAnalyseOneArgument18(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;Lorg/eclipse/jdt/internal/compiler/flow/FlowContext;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/ast/Expression;Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;ILjava/lang/Boolean;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)V

    iget-object v5, v0, Lorg/eclipse/jdt/internal/compiler/ast/ConditionalExpression;->valueIfFalse:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    iget v7, v0, Lorg/eclipse/jdt/internal/compiler/ast/ConditionalExpression;->ifFalseNullStatus:I

    invoke-virtual/range {v1 .. v9}, Lorg/eclipse/jdt/internal/compiler/ast/Statement;->internalAnalyseOneArgument18(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;Lorg/eclipse/jdt/internal/compiler/flow/FlowContext;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/ast/Expression;Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;ILjava/lang/Boolean;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)V

    return-void

    :cond_0
    instance-of v0, v4, Lorg/eclipse/jdt/internal/compiler/ast/SwitchExpression;

    if-eqz v0, :cond_2

    invoke-virtual/range {p5 .. p5}, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->isPolyExpression()Z

    move-result v0

    if-eqz v0, :cond_2

    move-object v0, v4

    check-cast v0, Lorg/eclipse/jdt/internal/compiler/ast/SwitchExpression;

    const/4 v1, 0x0

    move v10, v1

    :goto_0
    iget-object v1, v0, Lorg/eclipse/jdt/internal/compiler/ast/SwitchExpression;->resultExpressions:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lt v10, v1, :cond_1

    return-void

    :cond_1
    iget-object v1, v0, Lorg/eclipse/jdt/internal/compiler/ast/SwitchExpression;->resultExpressions:Ljava/util/List;

    invoke-interface {v1, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    iget-object v1, v0, Lorg/eclipse/jdt/internal/compiler/ast/SwitchExpression;->resultExpressionNullStatus:Ljava/util/List;

    invoke-interface {v1, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v7

    move-object v1, v0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p4

    move-object v6, p3

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    invoke-virtual/range {v1 .. v9}, Lorg/eclipse/jdt/internal/compiler/ast/Statement;->internalAnalyseOneArgument18(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;Lorg/eclipse/jdt/internal/compiler/flow/FlowContext;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/ast/Expression;Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;ILjava/lang/Boolean;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)V

    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    :cond_2
    move-object v2, p2

    move-object v5, p3

    invoke-virtual {v4, p3, p2}, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->nullStatus(Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;Lorg/eclipse/jdt/internal/compiler/flow/FlowContext;)I

    move-result v6

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p4

    move-object/from16 v4, p5

    move-object v5, p3

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    invoke-virtual/range {v0 .. v8}, Lorg/eclipse/jdt/internal/compiler/ast/Statement;->internalAnalyseOneArgument18(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;Lorg/eclipse/jdt/internal/compiler/flow/FlowContext;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/ast/Expression;Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;ILjava/lang/Boolean;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)V

    return-void
.end method

.method public branchChainTo(Lorg/eclipse/jdt/internal/compiler/codegen/BranchLabel;)V
    .locals 0

    return-void
.end method

.method public breaksOut([C)Z
    .locals 1

    new-instance v0, Lorg/eclipse/jdt/internal/compiler/ast/Statement$1;

    invoke-direct {v0, p0, p1}, Lorg/eclipse/jdt/internal/compiler/ast/Statement$1;-><init>(Lorg/eclipse/jdt/internal/compiler/ast/Statement;[C)V

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/ast/Statement$1;->breaksOut()Z

    move-result p1

    return p1
.end method

.method public checkAgainstNullAnnotation(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;Lorg/eclipse/jdt/internal/compiler/flow/FlowContext;Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;Lorg/eclipse/jdt/internal/compiler/ast/Expression;)V
    .locals 11

    invoke-virtual {p4, p3, p2}, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->nullStatus(Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;Lorg/eclipse/jdt/internal/compiler/flow/FlowContext;)I

    move-result v6

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->environment()Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    move-result-object v0

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->usesNullTypeAnnotations()Z

    move-result v0

    :try_start_0
    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->methodScope()Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;

    move-result-object v1

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;->referenceMethodBinding()Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    move-result-object v1

    if-eqz v0, :cond_0

    iget-object v2, v1, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->returnType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    iget-wide v7, v2, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->tagBits:J

    goto :goto_0

    :cond_0
    iget-wide v7, v1, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->tagBits:J
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    if-eqz v0, :cond_1

    iget-object v2, v1, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->returnType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-object v0, p0

    move-object v1, p1

    move-object v3, p4

    move-object v4, p2

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Lorg/eclipse/jdt/internal/compiler/ast/Statement;->checkAgainstNullTypeAnnotation(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/ast/Expression;Lorg/eclipse/jdt/internal/compiler/flow/FlowContext;Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;)V

    goto :goto_1

    :cond_1
    const/4 v0, 0x4

    if-eq v6, v0, :cond_2

    const-wide/high16 v9, 0x100000000000000L

    and-long/2addr v7, v9

    const-wide/16 v9, 0x0

    cmp-long v0, v7, v9

    if-eqz v0, :cond_2

    iget-object v7, p4, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->resolvedType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    iget-object v8, v1, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->returnType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    const/4 v9, 0x0

    move-object v0, p2

    move-object v1, p1

    move-object v2, p4

    move-object v3, v7

    move-object v4, v8

    move-object v5, p3

    move-object v7, v9

    invoke-virtual/range {v0 .. v7}, Lorg/eclipse/jdt/internal/compiler/flow/FlowContext;->recordNullityMismatch(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;Lorg/eclipse/jdt/internal/compiler/ast/Expression;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;ILorg/eclipse/jdt/internal/compiler/ast/NullAnnotationMatching;)V

    :catch_0
    :cond_2
    :goto_1
    return-void
.end method

.method public checkAgainstNullTypeAnnotation(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/ast/Expression;Lorg/eclipse/jdt/internal/compiler/flow/FlowContext;Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;)V
    .locals 13

    move-object/from16 v3, p3

    instance-of v0, v3, Lorg/eclipse/jdt/internal/compiler/ast/ConditionalExpression;

    if-eqz v0, :cond_0

    invoke-virtual/range {p3 .. p3}, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->isPolyExpression()Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v0, v3

    check-cast v0, Lorg/eclipse/jdt/internal/compiler/ast/ConditionalExpression;

    iget-object v4, v0, Lorg/eclipse/jdt/internal/compiler/ast/ConditionalExpression;->valueIfTrue:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    iget v5, v0, Lorg/eclipse/jdt/internal/compiler/ast/ConditionalExpression;->ifTrueNullStatus:I

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    invoke-direct/range {v1 .. v7}, Lorg/eclipse/jdt/internal/compiler/ast/Statement;->internalCheckAgainstNullTypeAnnotation(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/ast/Expression;ILorg/eclipse/jdt/internal/compiler/flow/FlowContext;Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;)V

    iget-object v9, v0, Lorg/eclipse/jdt/internal/compiler/ast/ConditionalExpression;->valueIfFalse:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    iget v10, v0, Lorg/eclipse/jdt/internal/compiler/ast/ConditionalExpression;->ifFalseNullStatus:I

    move-object v6, p0

    move-object v7, p1

    move-object v8, p2

    move-object/from16 v11, p4

    move-object/from16 v12, p5

    invoke-direct/range {v6 .. v12}, Lorg/eclipse/jdt/internal/compiler/ast/Statement;->internalCheckAgainstNullTypeAnnotation(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/ast/Expression;ILorg/eclipse/jdt/internal/compiler/flow/FlowContext;Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;)V

    return-void

    :cond_0
    instance-of v0, v3, Lorg/eclipse/jdt/internal/compiler/ast/SwitchExpression;

    if-eqz v0, :cond_2

    invoke-virtual/range {p3 .. p3}, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->isPolyExpression()Z

    move-result v0

    if-eqz v0, :cond_2

    move-object v0, v3

    check-cast v0, Lorg/eclipse/jdt/internal/compiler/ast/SwitchExpression;

    const/4 v1, 0x0

    :goto_0
    iget-object v2, v0, Lorg/eclipse/jdt/internal/compiler/ast/SwitchExpression;->resultExpressions:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lt v1, v2, :cond_1

    return-void

    :cond_1
    iget-object v2, v0, Lorg/eclipse/jdt/internal/compiler/ast/SwitchExpression;->resultExpressions:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v6, v2

    check-cast v6, Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    iget-object v2, v0, Lorg/eclipse/jdt/internal/compiler/ast/SwitchExpression;->resultExpressionNullStatus:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v7

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    move-object/from16 v8, p4

    move-object/from16 v9, p5

    invoke-direct/range {v3 .. v9}, Lorg/eclipse/jdt/internal/compiler/ast/Statement;->internalCheckAgainstNullTypeAnnotation(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/ast/Expression;ILorg/eclipse/jdt/internal/compiler/flow/FlowContext;Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    move-object/from16 v5, p4

    move-object/from16 v6, p5

    invoke-virtual {v3, v6, v5}, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->nullStatus(Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;Lorg/eclipse/jdt/internal/compiler/flow/FlowContext;)I

    move-result v4

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object/from16 v3, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    invoke-direct/range {v0 .. v6}, Lorg/eclipse/jdt/internal/compiler/ast/Statement;->internalCheckAgainstNullTypeAnnotation(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/ast/Expression;ILorg/eclipse/jdt/internal/compiler/flow/FlowContext;Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;)V

    return-void
.end method

.method public complainIfUnreachable(Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;IZ)I
    .locals 3

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;->reachMode()I

    move-result v0

    and-int/lit8 v0, v0, 0x3

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;->reachMode()I

    move-result v0

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->bits:I

    const v2, 0x7fffffff

    and-int/2addr v0, v2

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->bits:I

    :cond_0
    sget-object v0, Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;->DEAD_END:Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;

    const/4 v2, 0x0

    if-ne p1, v0, :cond_2

    const/4 v0, 0x2

    if-ge p3, v0, :cond_1

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object p3

    invoke-virtual {p3, p0}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->unreachableCode(Lorg/eclipse/jdt/internal/compiler/ast/Statement;)V

    if-eqz p4, :cond_1

    invoke-virtual {p2, p1, v2, v2, v2}, Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;->checkUnclosedCloseables(Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;Lorg/eclipse/jdt/internal/compiler/flow/FlowContext;Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;)V

    :cond_1
    return v0

    :cond_2
    if-ge p3, v1, :cond_3

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object p3

    invoke-virtual {p3, p0}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->fakeReachable(Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;)V

    if-eqz p4, :cond_3

    invoke-virtual {p2, p1, v2, v2, v2}, Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;->checkUnclosedCloseables(Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;Lorg/eclipse/jdt/internal/compiler/flow/FlowContext;Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;)V

    :cond_3
    return v1

    :cond_4
    return p3
.end method

.method public completesByContinue()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public continuesAtOuterLabel()Z
    .locals 1

    new-instance v0, Lorg/eclipse/jdt/internal/compiler/ast/Statement$2;

    invoke-direct {v0, p0}, Lorg/eclipse/jdt/internal/compiler/ast/Statement$2;-><init>(Lorg/eclipse/jdt/internal/compiler/ast/Statement;)V

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/ast/Statement$2;->continuesAtOuterLabel()Z

    move-result v0

    return v0
.end method

.method public doesNotCompleteNormally()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public expectedType()Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;
    .locals 1

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/ast/Statement;->invocationTargetType()Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v0

    return-object v0
.end method

.method public findConstructorBinding(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;Lorg/eclipse/jdt/internal/compiler/ast/Invocation;Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;
    .locals 0

    invoke-virtual {p1, p3, p4, p2}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->getConstructor(Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/InvocationSite;)Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    move-result-object p3

    invoke-static {p2, p3, p4, p1}, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->resolvePolyExpressionArguments(Lorg/eclipse/jdt/internal/compiler/ast/Invocation;Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;)Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    move-result-object p1

    return-object p1
.end method

.method public generateArguments(Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;[Lorg/eclipse/jdt/internal/compiler/ast/Expression;Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;)V
    .locals 7

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->isVarargs()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_7

    iget-object v0, p1, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->parameters:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    array-length v3, v0

    add-int/lit8 v4, v3, -0x1

    move v5, v1

    :goto_0
    if-lt v5, v4, :cond_6

    aget-object v0, v0, v4

    check-cast v0, Lorg/eclipse/jdt/internal/compiler/lookup/ArrayBinding;

    iget-object p1, p1, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->parameters:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    aget-object p1, p1, v4

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->erasure()Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object p1

    check-cast p1, Lorg/eclipse/jdt/internal/compiler/lookup/ArrayBinding;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/ArrayBinding;->elementsType()Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v5

    iget v5, v5, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->id:I

    if-nez p2, :cond_0

    move v6, v1

    goto :goto_1

    :cond_0
    array-length v6, p2

    :goto_1
    if-le v6, v3, :cond_2

    sub-int v0, v6, v4

    invoke-virtual {p4, v0}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->generateInlinedValue(I)V

    invoke-virtual {p4, p1}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->newArray(Lorg/eclipse/jdt/internal/compiler/lookup/ArrayBinding;)V

    move p1, v4

    :goto_2
    if-lt p1, v6, :cond_1

    goto :goto_5

    :cond_1
    invoke-virtual {p4}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->dup()V

    sub-int v0, p1, v4

    invoke-virtual {p4, v0}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->generateInlinedValue(I)V

    aget-object v0, p2, p1

    invoke-virtual {v0, p3, p4, v2}, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->generateCode(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;Z)V

    invoke-virtual {p4, v5, v1}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->arrayAtPut(IZ)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_2

    :cond_2
    if-ne v6, v3, :cond_5

    aget-object v3, p2, v4

    iget-object v3, v3, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->resolvedType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    sget-object v6, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->NULL:Lorg/eclipse/jdt/internal/compiler/lookup/NullTypeBinding;

    if-eq v3, v6, :cond_4

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/ArrayBinding;->dimensions()I

    move-result v0

    invoke-virtual {v3}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->dimensions()I

    move-result v6

    if-ne v0, v6, :cond_3

    invoke-virtual {v3, p1}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isCompatibleWith(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_3

    :cond_3
    invoke-virtual {p4, v2}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->generateInlinedValue(I)V

    invoke-virtual {p4, p1}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->newArray(Lorg/eclipse/jdt/internal/compiler/lookup/ArrayBinding;)V

    invoke-virtual {p4}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->dup()V

    invoke-virtual {p4, v1}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->generateInlinedValue(I)V

    aget-object p1, p2, v4

    invoke-virtual {p1, p3, p4, v2}, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->generateCode(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;Z)V

    invoke-virtual {p4, v5, v1}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->arrayAtPut(IZ)V

    goto :goto_5

    :cond_4
    :goto_3
    aget-object p1, p2, v4

    invoke-virtual {p1, p3, p4, v2}, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->generateCode(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;Z)V

    goto :goto_5

    :cond_5
    invoke-virtual {p4, v1}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->generateInlinedValue(I)V

    invoke-virtual {p4, p1}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->newArray(Lorg/eclipse/jdt/internal/compiler/lookup/ArrayBinding;)V

    goto :goto_5

    :cond_6
    aget-object v6, p2, v5

    invoke-virtual {v6, p3, p4, v2}, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->generateCode(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;Z)V

    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_0

    :cond_7
    if-eqz p2, :cond_9

    array-length p1, p2

    :goto_4
    if-lt v1, p1, :cond_8

    goto :goto_5

    :cond_8
    aget-object v0, p2, v1

    invoke-virtual {v0, p3, p4, v2}, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->generateCode(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;Z)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_9
    :goto_5
    return-void
.end method

.method public abstract generateCode(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;)V
.end method

.method public getExpressionContext()Lorg/eclipse/jdt/internal/compiler/ast/ExpressionContext;
    .locals 1

    sget-object v0, Lorg/eclipse/jdt/internal/compiler/ast/ExpressionContext;->VANILLA_CONTEXT:Lorg/eclipse/jdt/internal/compiler/ast/ExpressionContext;

    return-object v0
.end method

.method public internalAnalyseOneArgument18(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;Lorg/eclipse/jdt/internal/compiler/flow/FlowContext;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/ast/Expression;Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;ILjava/lang/Boolean;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)V
    .locals 8

    move-object v2, p4

    move-object v0, p7

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    if-ne v0, v1, :cond_0

    move v3, p6

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    iget-object v4, v2, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->resolvedType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-object v5, p3

    move v6, p6

    invoke-static {p3, v4, p6}, Lorg/eclipse/jdt/internal/compiler/ast/NullAnnotationMatching;->analyse(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;I)Lorg/eclipse/jdt/internal/compiler/ast/NullAnnotationMatching;

    move-result-object v7

    invoke-virtual {v7}, Lorg/eclipse/jdt/internal/compiler/ast/NullAnnotationMatching;->isAnyMismatch()Z

    move-result v4

    if-nez v4, :cond_1

    if-eqz v3, :cond_1

    move-object/from16 v5, p8

    :cond_1
    const/4 v4, 0x2

    if-ne v3, v4, :cond_2

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object v0

    iget-object v1, v2, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->resolvedType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-virtual {v0, p4, v1, v5, v7}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->nullityMismatchingTypeAnnotation(Lorg/eclipse/jdt/internal/compiler/ast/Expression;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/ast/NullAnnotationMatching;)V

    goto :goto_2

    :cond_2
    invoke-virtual {v7}, Lorg/eclipse/jdt/internal/compiler/ast/NullAnnotationMatching;->isAnyMismatch()Z

    move-result v4

    if-nez v4, :cond_3

    and-int/lit8 v3, v3, 0x10

    if-eqz v3, :cond_5

    :cond_3
    invoke-virtual {v5}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->hasNullTypeAnnotations()Z

    move-result v3

    if-nez v3, :cond_4

    if-ne v0, v1, :cond_4

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->environment()Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    move-result-object v0

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->getNonNullAnnotation()Lorg/eclipse/jdt/internal/compiler/lookup/AnnotationBinding;

    move-result-object v1

    filled-new-array {v1}, [Lorg/eclipse/jdt/internal/compiler/lookup/AnnotationBinding;

    move-result-object v1

    invoke-virtual {v0, v5, v1}, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->createAnnotatedType(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;[Lorg/eclipse/jdt/internal/compiler/lookup/AnnotationBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v0

    move-object v4, v0

    goto :goto_1

    :cond_4
    move-object v4, v5

    :goto_1
    iget-object v3, v2, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->resolvedType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-object v0, p2

    move-object v1, p1

    move-object v2, p4

    move-object v5, p5

    move v6, p6

    invoke-virtual/range {v0 .. v7}, Lorg/eclipse/jdt/internal/compiler/flow/FlowContext;->recordNullityMismatch(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;Lorg/eclipse/jdt/internal/compiler/ast/Expression;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;ILorg/eclipse/jdt/internal/compiler/ast/NullAnnotationMatching;)V

    :cond_5
    :goto_2
    return-void
.end method

.method public invocationTargetType()Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public isBoxingCompatible(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/ast/Expression;Lorg/eclipse/jdt/internal/compiler/lookup/Scope;)Z
    .locals 6

    invoke-virtual {p4, p1, p2}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->isBoxingCompatibleWith(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isBaseType()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isBaseType()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isTypeVariable()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p4}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->compilerOptions()Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;

    move-result-object v0

    iget-wide v2, v0, Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;->sourceLevel:J

    const-wide/32 v4, 0x310000

    cmp-long v0, v2, v4

    if-ltz v0, :cond_2

    iget v0, p2, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->id:I

    const/16 v2, 0x1a

    if-eq v0, v2, :cond_1

    const/16 v2, 0x1b

    if-eq v0, v2, :cond_1

    const/16 v2, 0x1c

    if-ne v0, v2, :cond_2

    :cond_1
    invoke-virtual {p4}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->environment()Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    move-result-object p4

    invoke-virtual {p4, p2}, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->computeBoxingType(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object p2

    invoke-virtual {p3, p1, p2}, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->isConstantValueOfTypeAssignableToType(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Z

    move-result p1

    if-eqz p1, :cond_2

    return v1

    :cond_2
    const/4 p1, 0x0

    return p1
.end method

.method public isEmptyBlock()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isValidJavaStatement()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public print(ILjava/lang/StringBuffer;)Ljava/lang/StringBuffer;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lorg/eclipse/jdt/internal/compiler/ast/Statement;->printStatement(ILjava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    move-result-object p1

    return-object p1
.end method

.method public abstract printStatement(ILjava/lang/StringBuffer;)Ljava/lang/StringBuffer;
.end method

.method public abstract resolve(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;)V
.end method

.method public resolveCase(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/ast/SwitchStatement;)[Lorg/eclipse/jdt/internal/compiler/impl/Constant;
    .locals 0

    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/internal/compiler/ast/Statement;->resolve(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;)V

    sget-object p1, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->NotAConstant:Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    filled-new-array {p1}, [Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    move-result-object p1

    return-object p1
.end method

.method public resolveExpressionType(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method
