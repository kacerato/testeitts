.class public Lorg/eclipse/jdt/internal/compiler/ast/ArrayAllocationExpression;
.super Lorg/eclipse/jdt/internal/compiler/ast/Expression;
.source "SourceFile"


# instance fields
.field public annotationsOnDimensions:[[Lorg/eclipse/jdt/internal/compiler/ast/Annotation;

.field public dimensions:[Lorg/eclipse/jdt/internal/compiler/ast/Expression;

.field public initializer:Lorg/eclipse/jdt/internal/compiler/ast/ArrayInitializer;

.field public type:Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/compiler/ast/Expression;-><init>()V

    return-void
.end method


# virtual methods
.method public analyseCode(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;Lorg/eclipse/jdt/internal/compiler/flow/FlowContext;Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;)Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;
    .locals 3

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/ArrayAllocationExpression;->dimensions:[Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    array-length v0, v0

    const/4 v1, 0x0

    :goto_0
    if-lt v1, v0, :cond_1

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/flow/FlowContext;->recordAbruptExit()V

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/ArrayAllocationExpression;->initializer:Lorg/eclipse/jdt/internal/compiler/ast/ArrayInitializer;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2, p3}, Lorg/eclipse/jdt/internal/compiler/ast/ArrayInitializer;->analyseCode(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;Lorg/eclipse/jdt/internal/compiler/flow/FlowContext;Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;)Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;

    move-result-object p1

    return-object p1

    :cond_0
    return-object p3

    :cond_1
    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/ast/ArrayAllocationExpression;->dimensions:[Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    aget-object v2, v2, v1

    if-eqz v2, :cond_2

    invoke-virtual {v2, p1, p2, p3}, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->analyseCode(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;Lorg/eclipse/jdt/internal/compiler/flow/FlowContext;Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;)Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;

    move-result-object p3

    invoke-virtual {v2, p1, p2, p3}, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->checkNPEbyUnboxing(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;Lorg/eclipse/jdt/internal/compiler/flow/FlowContext;Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;)V

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public generateCode(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;Z)V
    .locals 7

    iget v0, p2, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->position:I

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/ast/ArrayAllocationExpression;->initializer:Lorg/eclipse/jdt/internal/compiler/ast/ArrayInitializer;

    if-eqz v1, :cond_0

    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/ast/ArrayAllocationExpression;->type:Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    move v6, p3

    invoke-virtual/range {v1 .. v6}, Lorg/eclipse/jdt/internal/compiler/ast/ArrayInitializer;->generateCode(Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;Lorg/eclipse/jdt/internal/compiler/ast/ArrayAllocationExpression;Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;Z)V

    return-void

    :cond_0
    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/ast/ArrayAllocationExpression;->dimensions:[Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    array-length v1, v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    const/4 v4, 0x1

    if-lt v2, v1, :cond_1

    goto :goto_1

    :cond_1
    iget-object v5, p0, Lorg/eclipse/jdt/internal/compiler/ast/ArrayAllocationExpression;->dimensions:[Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    aget-object v5, v5, v2

    if-nez v5, :cond_4

    :goto_1
    if-ne v3, v4, :cond_2

    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/ast/ArrayAllocationExpression;->type:Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->resolvedType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    check-cast v1, Lorg/eclipse/jdt/internal/compiler/lookup/ArrayBinding;

    invoke-virtual {p2, p1, p0, v1}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->newArray(Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;Lorg/eclipse/jdt/internal/compiler/ast/ArrayAllocationExpression;Lorg/eclipse/jdt/internal/compiler/lookup/ArrayBinding;)V

    goto :goto_2

    :cond_2
    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/ast/ArrayAllocationExpression;->type:Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->resolvedType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-virtual {p2, p1, v1, v3, p0}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->multianewarray(Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;ILorg/eclipse/jdt/internal/compiler/ast/ArrayAllocationExpression;)V

    :goto_2
    if-eqz p3, :cond_3

    iget p1, p0, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->implicitConversion:I

    invoke-virtual {p2, p1}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->generateImplicitConversion(I)V

    goto :goto_3

    :cond_3
    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->pop()V

    :goto_3
    iget p1, p0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceStart:I

    invoke-virtual {p2, v0, p1}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->recordPositionsFrom(II)V

    return-void

    :cond_4
    invoke-virtual {v5, p1, p2, v4}, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->generateCode(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;Z)V

    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public getAllAnnotationContexts(IILjava/util/List;)V
    .locals 6

    new-instance v0, Lorg/eclipse/jdt/internal/compiler/ast/TypeReference$AnnotationCollector;

    invoke-direct {v0, p0, p1, p2, p3}, Lorg/eclipse/jdt/internal/compiler/ast/TypeReference$AnnotationCollector;-><init>(Lorg/eclipse/jdt/internal/compiler/ast/Expression;IILjava/util/List;)V

    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/ast/ArrayAllocationExpression;->type:Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    const/4 p2, 0x0

    invoke-virtual {p1, v0, p2}, Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;->traverse(Lorg/eclipse/jdt/internal/compiler/ASTVisitor;Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;)V

    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/ast/ArrayAllocationExpression;->annotationsOnDimensions:[[Lorg/eclipse/jdt/internal/compiler/ast/Annotation;

    if-eqz p1, :cond_3

    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/ast/ArrayAllocationExpression;->dimensions:[Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    array-length p1, p1

    const/4 p3, 0x0

    move v1, p3

    :goto_0
    if-lt v1, p1, :cond_0

    goto :goto_3

    :cond_0
    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/ast/ArrayAllocationExpression;->annotationsOnDimensions:[[Lorg/eclipse/jdt/internal/compiler/ast/Annotation;

    aget-object v2, v2, v1

    if-nez v2, :cond_1

    move v3, p3

    goto :goto_1

    :cond_1
    array-length v3, v2

    :goto_1
    move v4, p3

    :goto_2
    if-lt v4, v3, :cond_2

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    aget-object v5, v2, v4

    invoke-virtual {v5, v0, p2}, Lorg/eclipse/jdt/internal/compiler/ast/Annotation;->traverse(Lorg/eclipse/jdt/internal/compiler/ASTVisitor;Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_3
    :goto_3
    return-void
.end method

.method public getAnnotationsOnDimensions()[[Lorg/eclipse/jdt/internal/compiler/ast/Annotation;
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/ArrayAllocationExpression;->annotationsOnDimensions:[[Lorg/eclipse/jdt/internal/compiler/ast/Annotation;

    return-object v0
.end method

.method public printExpression(ILjava/lang/StringBuffer;)Ljava/lang/StringBuffer;
    .locals 3

    const-string p1, "new "

    invoke-virtual {p2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/ast/ArrayAllocationExpression;->type:Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    const/4 v0, 0x0

    invoke-virtual {p1, v0, p2}, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->print(ILjava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    move p1, v0

    :goto_0
    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/ast/ArrayAllocationExpression;->dimensions:[Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    array-length v1, v1

    if-lt p1, v1, :cond_1

    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/ast/ArrayAllocationExpression;->initializer:Lorg/eclipse/jdt/internal/compiler/ast/ArrayInitializer;

    if-eqz p1, :cond_0

    invoke-virtual {p1, v0, p2}, Lorg/eclipse/jdt/internal/compiler/ast/ArrayInitializer;->printExpression(ILjava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    :cond_0
    return-object p2

    :cond_1
    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/ast/ArrayAllocationExpression;->annotationsOnDimensions:[[Lorg/eclipse/jdt/internal/compiler/ast/Annotation;

    if-eqz v1, :cond_2

    aget-object v1, v1, p1

    if-eqz v1, :cond_2

    const/16 v1, 0x20

    invoke-virtual {p2, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/ast/ArrayAllocationExpression;->annotationsOnDimensions:[[Lorg/eclipse/jdt/internal/compiler/ast/Annotation;

    aget-object v2, v2, p1

    invoke-static {v2, p2}, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->printAnnotations([Lorg/eclipse/jdt/internal/compiler/ast/Annotation;Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_2
    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/ast/ArrayAllocationExpression;->dimensions:[Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    aget-object v1, v1, p1

    if-nez v1, :cond_3

    const-string v1, "[]"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    :cond_3
    const/16 v1, 0x5b

    invoke-virtual {p2, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/ast/ArrayAllocationExpression;->dimensions:[Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    aget-object v1, v1, p1

    invoke-virtual {v1, v0, p2}, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->printExpression(ILjava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    const/16 v1, 0x5d

    invoke-virtual {p2, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :goto_1
    add-int/lit8 p1, p1, 0x1

    goto :goto_0
.end method

.method public resolveType(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;
    .locals 11

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/ArrayAllocationExpression;->type:Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;->resolveType(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;Z)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v0

    sget-object v2, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->NotAConstant:Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    iput-object v2, p0, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->constant:Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    sget-object v2, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->VOID:Lorg/eclipse/jdt/internal/compiler/lookup/VoidTypeBinding;

    const/4 v3, 0x0

    if-ne v0, v2, :cond_0

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->cannotAllocateVoidArray(Lorg/eclipse/jdt/internal/compiler/ast/Expression;)V

    move-object v0, v3

    :cond_0
    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/ast/ArrayAllocationExpression;->dimensions:[Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    array-length v2, v2

    const/4 v4, -0x1

    move v5, v4

    :cond_1
    :goto_0
    add-int/2addr v2, v4

    if-gez v2, :cond_2

    goto :goto_1

    :cond_2
    iget-object v6, p0, Lorg/eclipse/jdt/internal/compiler/ast/ArrayAllocationExpression;->dimensions:[Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    aget-object v6, v6, v2

    if-eqz v6, :cond_3

    if-gez v5, :cond_1

    move v5, v2

    goto :goto_0

    :cond_3
    if-lez v5, :cond_1

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object v2

    invoke-virtual {v2, p0, v5}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->incorrectLocationForNonEmptyDimension(Lorg/eclipse/jdt/internal/compiler/ast/ArrayAllocationExpression;I)V

    :goto_1
    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/ast/ArrayAllocationExpression;->initializer:Lorg/eclipse/jdt/internal/compiler/ast/ArrayInitializer;

    if-nez v2, :cond_5

    if-gez v5, :cond_4

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object v2

    invoke-virtual {v2, p0}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->mustDefineDimensionsOrInitializer(Lorg/eclipse/jdt/internal/compiler/ast/ArrayAllocationExpression;)V

    :cond_4
    if-eqz v0, :cond_6

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isReifiable()Z

    move-result v2

    if-nez v2, :cond_6

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object v2

    invoke-virtual {v2, v0, p0}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->illegalGenericArray(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;)V

    goto :goto_2

    :cond_5
    if-ltz v5, :cond_6

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object v2

    invoke-virtual {v2, p0}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->cannotDefineDimensionsAndInitializer(Lorg/eclipse/jdt/internal/compiler/ast/ArrayAllocationExpression;)V

    :cond_6
    :goto_2
    const/4 v6, 0x0

    move v2, v6

    :goto_3
    if-le v2, v5, :cond_e

    if-eqz v0, :cond_d

    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/ast/ArrayAllocationExpression;->dimensions:[Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    array-length v2, v2

    const/16 v4, 0xff

    if-le v2, v4, :cond_7

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object v2

    invoke-virtual {v2, p0}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->tooManyDimensions(Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;)V

    :cond_7
    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/ast/ArrayAllocationExpression;->type:Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    iget-object v2, v2, Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;->annotations:[[Lorg/eclipse/jdt/internal/compiler/ast/Annotation;

    const-wide/high16 v4, 0x180000000000000L

    if-eqz v2, :cond_8

    iget-wide v7, v0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->tagBits:J

    and-long/2addr v7, v4

    cmp-long v2, v7, v4

    if-nez v2, :cond_8

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object v2

    iget-object v7, p0, Lorg/eclipse/jdt/internal/compiler/ast/ArrayAllocationExpression;->type:Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    iget-object v7, v7, Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;->annotations:[[Lorg/eclipse/jdt/internal/compiler/ast/Annotation;

    array-length v8, v7

    sub-int/2addr v8, v1

    aget-object v1, v7, v8

    invoke-virtual {v2, v1}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->contradictoryNullAnnotations([Lorg/eclipse/jdt/internal/compiler/ast/Annotation;)V

    :cond_8
    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/ast/ArrayAllocationExpression;->dimensions:[Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    array-length v1, v1

    invoke-virtual {p1, v0, v1}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->createArrayType(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;I)Lorg/eclipse/jdt/internal/compiler/lookup/ArrayBinding;

    move-result-object v1

    iput-object v1, p0, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->resolvedType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/ast/ArrayAllocationExpression;->annotationsOnDimensions:[[Lorg/eclipse/jdt/internal/compiler/ast/Annotation;

    const-wide/16 v7, 0x0

    if-eqz v2, :cond_b

    invoke-static {p1, v2, v1}, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->resolveAnnotations(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;[[Lorg/eclipse/jdt/internal/compiler/ast/Annotation;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v1

    iput-object v1, p0, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->resolvedType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    check-cast v1, Lorg/eclipse/jdt/internal/compiler/lookup/ArrayBinding;

    iget-object v1, v1, Lorg/eclipse/jdt/internal/compiler/lookup/ArrayBinding;->nullTagBitsPerDimension:[J

    if-eqz v1, :cond_b

    :goto_4
    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/ast/ArrayAllocationExpression;->annotationsOnDimensions:[[Lorg/eclipse/jdt/internal/compiler/ast/Annotation;

    array-length v2, v2

    if-lt v6, v2, :cond_9

    goto :goto_5

    :cond_9
    aget-wide v9, v1, v6

    and-long/2addr v9, v4

    cmp-long v2, v9, v4

    if-nez v2, :cond_a

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object v2

    iget-object v9, p0, Lorg/eclipse/jdt/internal/compiler/ast/ArrayAllocationExpression;->annotationsOnDimensions:[[Lorg/eclipse/jdt/internal/compiler/ast/Annotation;

    aget-object v9, v9, v6

    invoke-virtual {v2, v9}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->contradictoryNullAnnotations([Lorg/eclipse/jdt/internal/compiler/ast/Annotation;)V

    aput-wide v7, v1, v6

    :cond_a
    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    :cond_b
    :goto_5
    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/ast/ArrayAllocationExpression;->initializer:Lorg/eclipse/jdt/internal/compiler/ast/ArrayInitializer;

    if-eqz v1, :cond_c

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->resolvedType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    iget v2, p0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceStart:I

    iget-object v4, p0, Lorg/eclipse/jdt/internal/compiler/ast/ArrayAllocationExpression;->dimensions:[Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    array-length v4, v4

    invoke-static {p1, v1, v2, v4, v3}, Lorg/eclipse/jdt/internal/compiler/ast/ArrayTypeReference;->maybeMarkArrayContentsNonNull(Lorg/eclipse/jdt/internal/compiler/lookup/Scope;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;IILjava/util/function/Consumer;)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v1

    iput-object v1, p0, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->resolvedType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/ast/ArrayAllocationExpression;->initializer:Lorg/eclipse/jdt/internal/compiler/ast/ArrayInitializer;

    invoke-virtual {v2, p1, v1}, Lorg/eclipse/jdt/internal/compiler/ast/ArrayInitializer;->resolveTypeExpecting(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object p1

    if-eqz p1, :cond_c

    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/ast/ArrayAllocationExpression;->initializer:Lorg/eclipse/jdt/internal/compiler/ast/ArrayInitializer;

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->resolvedType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    check-cast v1, Lorg/eclipse/jdt/internal/compiler/lookup/ArrayBinding;

    iput-object v1, p1, Lorg/eclipse/jdt/internal/compiler/ast/ArrayInitializer;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/ArrayBinding;

    :cond_c
    iget-wide v0, v0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->tagBits:J

    const-wide/16 v4, 0x80

    and-long/2addr v0, v4

    cmp-long p1, v0, v7

    if-eqz p1, :cond_d

    return-object v3

    :cond_d
    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->resolvedType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    return-object p1

    :cond_e
    iget-object v4, p0, Lorg/eclipse/jdt/internal/compiler/ast/ArrayAllocationExpression;->dimensions:[Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    aget-object v4, v4, v2

    if-eqz v4, :cond_f

    sget-object v7, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->INT:Lorg/eclipse/jdt/internal/compiler/lookup/BaseTypeBinding;

    invoke-virtual {v4, p1, v7}, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->resolveTypeExpecting(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v4

    if-eqz v4, :cond_f

    iget-object v8, p0, Lorg/eclipse/jdt/internal/compiler/ast/ArrayAllocationExpression;->dimensions:[Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    aget-object v8, v8, v2

    invoke-virtual {v8, p1, v7, v4}, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->computeConversion(Lorg/eclipse/jdt/internal/compiler/lookup/Scope;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)V

    :cond_f
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_3
.end method

.method public traverse(Lorg/eclipse/jdt/internal/compiler/ASTVisitor;Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;)V
    .locals 7

    invoke-virtual {p1, p0, p2}, Lorg/eclipse/jdt/internal/compiler/ASTVisitor;->visit(Lorg/eclipse/jdt/internal/compiler/ast/ArrayAllocationExpression;Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/ArrayAllocationExpression;->dimensions:[Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    array-length v0, v0

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/ast/ArrayAllocationExpression;->type:Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    invoke-virtual {v1, p1, p2}, Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;->traverse(Lorg/eclipse/jdt/internal/compiler/ASTVisitor;Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;)V

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-lt v2, v0, :cond_0

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/ArrayAllocationExpression;->initializer:Lorg/eclipse/jdt/internal/compiler/ast/ArrayInitializer;

    if-eqz v0, :cond_5

    invoke-virtual {v0, p1, p2}, Lorg/eclipse/jdt/internal/compiler/ast/ArrayInitializer;->traverse(Lorg/eclipse/jdt/internal/compiler/ASTVisitor;Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;)V

    goto :goto_4

    :cond_0
    iget-object v3, p0, Lorg/eclipse/jdt/internal/compiler/ast/ArrayAllocationExpression;->annotationsOnDimensions:[[Lorg/eclipse/jdt/internal/compiler/ast/Annotation;

    if-nez v3, :cond_1

    const/4 v3, 0x0

    goto :goto_1

    :cond_1
    aget-object v3, v3, v2

    :goto_1
    if-nez v3, :cond_2

    move v4, v1

    goto :goto_2

    :cond_2
    array-length v4, v3

    :goto_2
    move v5, v1

    :goto_3
    if-lt v5, v4, :cond_4

    iget-object v3, p0, Lorg/eclipse/jdt/internal/compiler/ast/ArrayAllocationExpression;->dimensions:[Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    aget-object v3, v3, v2

    if-eqz v3, :cond_3

    invoke-virtual {v3, p1, p2}, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->traverse(Lorg/eclipse/jdt/internal/compiler/ASTVisitor;Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;)V

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    aget-object v6, v3, v5

    invoke-virtual {v6, p1, p2}, Lorg/eclipse/jdt/internal/compiler/ast/Annotation;->traverse(Lorg/eclipse/jdt/internal/compiler/ASTVisitor;Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    :cond_5
    :goto_4
    invoke-virtual {p1, p0, p2}, Lorg/eclipse/jdt/internal/compiler/ASTVisitor;->endVisit(Lorg/eclipse/jdt/internal/compiler/ast/ArrayAllocationExpression;Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;)V

    return-void
.end method
