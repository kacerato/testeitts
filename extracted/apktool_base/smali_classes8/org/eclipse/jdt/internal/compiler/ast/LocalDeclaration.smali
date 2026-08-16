.class public Lorg/eclipse/jdt/internal/compiler/ast/LocalDeclaration;
.super Lorg/eclipse/jdt/internal/compiler/ast/AbstractVariableDeclaration;
.source "SourceFile"


# instance fields
.field public binding:Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;


# direct methods
.method public constructor <init>([CII)V
    .locals 0

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/compiler/ast/AbstractVariableDeclaration;-><init>()V

    iput-object p1, p0, Lorg/eclipse/jdt/internal/compiler/ast/AbstractVariableDeclaration;->name:[C

    iput p2, p0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceStart:I

    iput p3, p0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceEnd:I

    iput p3, p0, Lorg/eclipse/jdt/internal/compiler/ast/AbstractVariableDeclaration;->declarationEnd:I

    return-void
.end method

.method private checkInferredLocalVariableInitializer(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;
    .locals 3

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/AbstractVariableDeclaration;->initialization:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    instance-of v1, v0, Lorg/eclipse/jdt/internal/compiler/ast/ArrayInitializer;

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->varLocalCannotBeArrayInitalizers(Lorg/eclipse/jdt/internal/compiler/ast/AbstractVariableDeclaration;)V

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->getJavaLangObject()Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move-result-object v0

    invoke-virtual {p1, v0, v2}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->createArrayType(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;I)Lorg/eclipse/jdt/internal/compiler/lookup/ArrayBinding;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-static {v0}, Lorg/eclipse/jdt/internal/compiler/ast/LocalDeclaration;->findPolyExpression(Lorg/eclipse/jdt/internal/compiler/ast/Expression;)Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    move-result-object v0

    instance-of v1, v0, Lorg/eclipse/jdt/internal/compiler/ast/ReferenceExpression;

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->varLocalCannotBeMethodReference(Lorg/eclipse/jdt/internal/compiler/ast/AbstractVariableDeclaration;)V

    sget-object v0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->NULL:Lorg/eclipse/jdt/internal/compiler/lookup/NullTypeBinding;

    goto :goto_0

    :cond_1
    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->varLocalCannotBeLambda(Lorg/eclipse/jdt/internal/compiler/ast/AbstractVariableDeclaration;)V

    sget-object v0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->NULL:Lorg/eclipse/jdt/internal/compiler/lookup/NullTypeBinding;

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/ast/AbstractVariableDeclaration;->type:Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;->dimensions()I

    move-result v1

    if-gtz v1, :cond_3

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/ast/AbstractVariableDeclaration;->type:Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;->extraDimensions()I

    move-result v1

    if-lez v1, :cond_4

    :cond_3
    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->varLocalCannotBeArray(Lorg/eclipse/jdt/internal/compiler/ast/AbstractVariableDeclaration;)V

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->getJavaLangObject()Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move-result-object v0

    invoke-virtual {p1, v0, v2}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->createArrayType(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;I)Lorg/eclipse/jdt/internal/compiler/lookup/ArrayBinding;

    move-result-object v0

    :cond_4
    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->bits:I

    const/high16 v2, 0x400000

    and-int/2addr v1, v2

    if-eqz v1, :cond_5

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->varLocalMultipleDeclarators(Lorg/eclipse/jdt/internal/compiler/ast/AbstractVariableDeclaration;)V

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/AbstractVariableDeclaration;->initialization:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    invoke-virtual {v0, p1}, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->resolveType(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v0

    :cond_5
    return-object v0
.end method

.method private findCapturedTypeVariables(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)[Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;
    .locals 2

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    new-instance v1, Lorg/eclipse/jdt/internal/compiler/ast/LocalDeclaration$1;

    invoke-direct {v1, p0, v0}, Lorg/eclipse/jdt/internal/compiler/ast/LocalDeclaration$1;-><init>(Lorg/eclipse/jdt/internal/compiler/ast/LocalDeclaration;Ljava/util/Set;)V

    invoke-static {v1, p1}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBindingVisitor;->visit(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBindingVisitor;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)V

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result p1

    new-array p1, p1, [Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;

    invoke-interface {v0, p1}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;

    return-object p1
.end method

.method private static findPolyExpression(Lorg/eclipse/jdt/internal/compiler/ast/Expression;)Lorg/eclipse/jdt/internal/compiler/ast/Expression;
    .locals 2

    instance-of v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/FunctionalExpression;

    if-eqz v0, :cond_0

    return-object p0

    :cond_0
    instance-of v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/ConditionalExpression;

    if-eqz v0, :cond_2

    move-object v0, p0

    check-cast v0, Lorg/eclipse/jdt/internal/compiler/ast/ConditionalExpression;

    iget-object v1, v0, Lorg/eclipse/jdt/internal/compiler/ast/ConditionalExpression;->valueIfTrue:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    invoke-static {v1}, Lorg/eclipse/jdt/internal/compiler/ast/LocalDeclaration;->findPolyExpression(Lorg/eclipse/jdt/internal/compiler/ast/Expression;)Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    move-result-object v1

    if-nez v1, :cond_1

    iget-object v0, v0, Lorg/eclipse/jdt/internal/compiler/ast/ConditionalExpression;->valueIfFalse:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    invoke-static {v0}, Lorg/eclipse/jdt/internal/compiler/ast/LocalDeclaration;->findPolyExpression(Lorg/eclipse/jdt/internal/compiler/ast/Expression;)Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    move-result-object v1

    :cond_1
    if-eqz v1, :cond_2

    return-object v1

    :cond_2
    instance-of v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/SwitchExpression;

    if-eqz v0, :cond_5

    check-cast p0, Lorg/eclipse/jdt/internal/compiler/ast/SwitchExpression;

    iget-object p0, p0, Lorg/eclipse/jdt/internal/compiler/ast/SwitchExpression;->resultExpressions:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_3
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_4

    goto :goto_0

    :cond_4
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    invoke-static {v0}, Lorg/eclipse/jdt/internal/compiler/ast/LocalDeclaration;->findPolyExpression(Lorg/eclipse/jdt/internal/compiler/ast/Expression;)Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    move-result-object v0

    if-eqz v0, :cond_3

    return-object v0

    :cond_5
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private traverseWithoutInitializer(Lorg/eclipse/jdt/internal/compiler/ASTVisitor;Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;)V
    .locals 3

    invoke-virtual {p1, p0, p2}, Lorg/eclipse/jdt/internal/compiler/ASTVisitor;->visit(Lorg/eclipse/jdt/internal/compiler/ast/LocalDeclaration;Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/AbstractVariableDeclaration;->annotations:[Lorg/eclipse/jdt/internal/compiler/ast/Annotation;

    if-eqz v0, :cond_1

    array-length v0, v0

    const/4 v1, 0x0

    :goto_0
    if-lt v1, v0, :cond_0

    goto :goto_1

    :cond_0
    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/ast/AbstractVariableDeclaration;->annotations:[Lorg/eclipse/jdt/internal/compiler/ast/Annotation;

    aget-object v2, v2, v1

    invoke-virtual {v2, p1, p2}, Lorg/eclipse/jdt/internal/compiler/ast/Annotation;->traverse(Lorg/eclipse/jdt/internal/compiler/ASTVisitor;Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/AbstractVariableDeclaration;->type:Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    invoke-virtual {v0, p1, p2}, Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;->traverse(Lorg/eclipse/jdt/internal/compiler/ASTVisitor;Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;)V

    :cond_2
    invoke-virtual {p1, p0, p2}, Lorg/eclipse/jdt/internal/compiler/ASTVisitor;->endVisit(Lorg/eclipse/jdt/internal/compiler/ast/LocalDeclaration;Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;)V

    return-void
.end method


# virtual methods
.method public analyseCode(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;Lorg/eclipse/jdt/internal/compiler/flow/FlowContext;Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;)Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;
    .locals 11

    iget v0, p3, Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;->tagBits:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-nez v0, :cond_0

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->bits:I

    const/high16 v2, 0x40000000    # 2.0f

    or-int/2addr v0, v2

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->bits:I

    :cond_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/AbstractVariableDeclaration;->initialization:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    if-nez v0, :cond_1

    return-object p3

    :cond_1
    invoke-virtual {v0, p1, p2, p3}, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->checkNPEbyUnboxing(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;Lorg/eclipse/jdt/internal/compiler/flow/FlowContext;Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;)V

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/LocalDeclaration;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;

    if-eqz v0, :cond_2

    invoke-virtual {p3}, Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;->reachMode()I

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->compilerOptions()Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;

    move-result-object v0

    iget-boolean v0, v0, Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;->analyseResourceLeaks:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/AbstractVariableDeclaration;->initialization:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    iget-object v0, v0, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->resolvedType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-static {v0}, Lorg/eclipse/jdt/internal/compiler/ast/FakedTrackingVariable;->isAnyCloseable(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_3

    invoke-virtual {p3}, Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;->unconditionalCopy()Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;

    move-result-object v0

    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/ast/LocalDeclaration;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;

    iget-object v3, p0, Lorg/eclipse/jdt/internal/compiler/ast/AbstractVariableDeclaration;->initialization:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    invoke-static {p0, v2, v3, p3}, Lorg/eclipse/jdt/internal/compiler/ast/FakedTrackingVariable;->preConnectTrackerAcrossAssignment(Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;Lorg/eclipse/jdt/internal/compiler/ast/Expression;Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;)V

    :goto_1
    move-object v3, v0

    goto :goto_2

    :cond_3
    const/4 v0, 0x0

    goto :goto_1

    :goto_2
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/AbstractVariableDeclaration;->initialization:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    invoke-virtual {v0, p1, p2, p3}, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->analyseCode(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;Lorg/eclipse/jdt/internal/compiler/flow/FlowContext;Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;)Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;

    move-result-object p3

    invoke-virtual {p3}, Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;->unconditionalInits()Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;

    move-result-object p3

    if-eqz v1, :cond_4

    iget-object v7, p0, Lorg/eclipse/jdt/internal/compiler/ast/AbstractVariableDeclaration;->initialization:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    iget-object v8, p0, Lorg/eclipse/jdt/internal/compiler/ast/LocalDeclaration;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;

    move-object v2, p1

    move-object v4, p3

    move-object v5, p2

    move-object v6, p0

    invoke-static/range {v2 .. v8}, Lorg/eclipse/jdt/internal/compiler/ast/FakedTrackingVariable;->handleResourceAssignment(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;Lorg/eclipse/jdt/internal/compiler/flow/FlowContext;Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;Lorg/eclipse/jdt/internal/compiler/ast/Expression;Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;)V

    goto :goto_3

    :cond_4
    const/4 v0, 0x2

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/ast/AbstractVariableDeclaration;->initialization:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    invoke-static {p1, v0, v1}, Lorg/eclipse/jdt/internal/compiler/ast/FakedTrackingVariable;->cleanUpAfterAssignment(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;ILorg/eclipse/jdt/internal/compiler/ast/Expression;)V

    :goto_3
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/AbstractVariableDeclaration;->initialization:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    invoke-virtual {v0, p3, p2}, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->nullStatus(Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;Lorg/eclipse/jdt/internal/compiler/flow/FlowContext;)I

    move-result v8

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/LocalDeclaration;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;

    invoke-virtual {p3, v0}, Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;->isDefinitelyAssigned(Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;)Z

    move-result v0

    if-nez v0, :cond_5

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->bits:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->bits:I

    goto :goto_4

    :cond_5
    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->bits:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->bits:I

    :goto_4
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/LocalDeclaration;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;

    invoke-virtual {p3, v0}, Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;->markAsDefinitelyAssigned(Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;)V

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->compilerOptions()Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;

    move-result-object v0

    iget-boolean v0, v0, Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;->isAnnotationBasedNullAnalysisEnabled:Z

    if-eqz v0, :cond_6

    iget-object v6, p0, Lorg/eclipse/jdt/internal/compiler/ast/LocalDeclaration;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;

    iget-object v9, p0, Lorg/eclipse/jdt/internal/compiler/ast/AbstractVariableDeclaration;->initialization:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    iget-object v10, v9, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->resolvedType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-object v4, p1

    move-object v5, p2

    move-object v7, p3

    invoke-static/range {v4 .. v10}, Lorg/eclipse/jdt/internal/compiler/ast/NullAnnotationMatching;->checkAssignment(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;Lorg/eclipse/jdt/internal/compiler/flow/FlowContext;Lorg/eclipse/jdt/internal/compiler/lookup/VariableBinding;Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;ILorg/eclipse/jdt/internal/compiler/ast/Expression;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)I

    move-result v8

    :cond_6
    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/ast/LocalDeclaration;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;

    iget-object p2, p1, Lorg/eclipse/jdt/internal/compiler/lookup/VariableBinding;->type:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    iget-wide v0, p2, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->tagBits:J

    const-wide/16 v2, 0x2

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long p2, v0, v2

    if-nez p2, :cond_7

    invoke-virtual {p3, p1, v8}, Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;->markNullStatus(Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;I)V

    :cond_7
    return-object p3
.end method

.method public checkModifiers()V
    .locals 2

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/AbstractVariableDeclaration;->modifiers:I

    const v1, 0xffef

    and-int/2addr v1, v0

    if-eqz v1, :cond_0

    const v1, -0x400001

    and-int/2addr v0, v1

    const/high16 v1, 0x800000

    or-int/2addr v0, v1

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/AbstractVariableDeclaration;->modifiers:I

    :cond_0
    return-void
.end method

.method public generateCode(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;)V
    .locals 5

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/LocalDeclaration;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;

    iget v1, v0, Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;->resolvedPosition:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    invoke-virtual {p2, v0}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->addVisibleLocalVariable(Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;)V

    :cond_0
    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->bits:I

    const/high16 v1, -0x80000000

    and-int/2addr v0, v1

    if-nez v0, :cond_1

    return-void

    :cond_1
    iget v0, p2, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->position:I

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/ast/AbstractVariableDeclaration;->initialization:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    if-nez v1, :cond_2

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/ast/LocalDeclaration;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;

    iget v2, v2, Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;->resolvedPosition:I

    const/4 v3, 0x0

    if-gez v2, :cond_4

    iget-object v2, v1, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->constant:Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    sget-object v4, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->NotAConstant:Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    if-eq v2, v4, :cond_3

    goto :goto_0

    :cond_3
    invoke-virtual {v1, p1, p2, v3}, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->generateCode(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;Z)V

    goto :goto_0

    :cond_4
    const/4 v2, 0x1

    invoke-virtual {v1, p1, p2, v2}, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->generateCode(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;Z)V

    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/ast/LocalDeclaration;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;

    iget-object p1, p1, Lorg/eclipse/jdt/internal/compiler/lookup/VariableBinding;->type:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isArrayType()Z

    move-result p1

    if-eqz p1, :cond_5

    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/ast/AbstractVariableDeclaration;->initialization:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    instance-of v1, p1, Lorg/eclipse/jdt/internal/compiler/ast/CastExpression;

    if-eqz v1, :cond_5

    check-cast p1, Lorg/eclipse/jdt/internal/compiler/ast/CastExpression;

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/ast/CastExpression;->innermostCastedExpression()Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    move-result-object p1

    iget-object p1, p1, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->resolvedType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    sget-object v1, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->NULL:Lorg/eclipse/jdt/internal/compiler/lookup/NullTypeBinding;

    if-ne p1, v1, :cond_5

    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/ast/LocalDeclaration;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;

    iget-object p1, p1, Lorg/eclipse/jdt/internal/compiler/lookup/VariableBinding;->type:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-virtual {p2, p1}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->checkcast(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)V

    :cond_5
    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/ast/LocalDeclaration;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;

    invoke-virtual {p2, p1, v3}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->store(Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;Z)V

    iget p1, p0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->bits:I

    and-int/lit8 p1, p1, 0x8

    if-eqz p1, :cond_6

    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/ast/LocalDeclaration;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;

    iget v1, p2, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->position:I

    invoke-virtual {p1, v1}, Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;->recordInitializationStartPC(I)V

    :cond_6
    :goto_0
    iget p1, p0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceStart:I

    invoke-virtual {p2, v0, p1}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->recordPositionsFrom(II)V

    return-void
.end method

.method public getAllAnnotationContexts(IILjava/util/List;)V
    .locals 1

    .line 3
    new-instance v0, Lorg/eclipse/jdt/internal/compiler/ast/TypeReference$AnnotationCollector;

    invoke-direct {v0, p0, p1, p2, p3}, Lorg/eclipse/jdt/internal/compiler/ast/TypeReference$AnnotationCollector;-><init>(Lorg/eclipse/jdt/internal/compiler/ast/LocalDeclaration;IILjava/util/List;)V

    const/4 p1, 0x0

    .line 4
    invoke-virtual {p0, v0, p1}, Lorg/eclipse/jdt/internal/compiler/ast/LocalDeclaration;->traverse(Lorg/eclipse/jdt/internal/compiler/ASTVisitor;Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;)V

    return-void
.end method

.method public getAllAnnotationContexts(ILorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;Ljava/util/List;)V
    .locals 1

    .line 1
    new-instance v0, Lorg/eclipse/jdt/internal/compiler/ast/TypeReference$AnnotationCollector;

    invoke-direct {v0, p0, p1, p2, p3}, Lorg/eclipse/jdt/internal/compiler/ast/TypeReference$AnnotationCollector;-><init>(Lorg/eclipse/jdt/internal/compiler/ast/LocalDeclaration;ILorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;Ljava/util/List;)V

    const/4 p1, 0x0

    .line 2
    invoke-direct {p0, v0, p1}, Lorg/eclipse/jdt/internal/compiler/ast/LocalDeclaration;->traverseWithoutInitializer(Lorg/eclipse/jdt/internal/compiler/ASTVisitor;Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;)V

    return-void
.end method

.method public getKind()I
    .locals 1

    const/4 v0, 0x4

    return v0
.end method

.method public isArgument()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isReceiver()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isRecoveredFromLoneIdentifier()Z
    .locals 2

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/AbstractVariableDeclaration;->name:[C

    sget-object v1, Lorg/eclipse/jdt/internal/compiler/parser/RecoveryScanner;->FAKE_IDENTIFIER:[C

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/AbstractVariableDeclaration;->type:Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    instance-of v1, v0, Lorg/eclipse/jdt/internal/compiler/ast/SingleTypeReference;

    if-nez v1, :cond_0

    instance-of v1, v0, Lorg/eclipse/jdt/internal/compiler/ast/QualifiedTypeReference;

    if-eqz v1, :cond_1

    instance-of v1, v0, Lorg/eclipse/jdt/internal/compiler/ast/ArrayQualifiedTypeReference;

    if-nez v1, :cond_1

    :cond_0
    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/ast/AbstractVariableDeclaration;->initialization:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    if-nez v1, :cond_1

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;->isBaseTypeReference()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public isTypeNameVar(Lorg/eclipse/jdt/internal/compiler/lookup/Scope;)Z
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/AbstractVariableDeclaration;->type:Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;->isTypeNameVar(Lorg/eclipse/jdt/internal/compiler/lookup/Scope;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public patchType(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;
    .locals 2

    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/compiler/ast/LocalDeclaration;->findCapturedTypeVariables(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)[Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;

    move-result-object v0

    if-eqz v0, :cond_0

    array-length v1, v0

    if-lez v1, :cond_0

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/ast/LocalDeclaration;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;

    iget-object v1, v1, Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;->declaringScope:Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;

    invoke-virtual {p1, v1, v0}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->upwardsProjection(Lorg/eclipse/jdt/internal/compiler/lookup/Scope;[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object p1

    :cond_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/AbstractVariableDeclaration;->type:Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    iput-object p1, v0, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->resolvedType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/LocalDeclaration;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;

    if-eqz v0, :cond_1

    iput-object p1, v0, Lorg/eclipse/jdt/internal/compiler/lookup/VariableBinding;->type:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;->markInitialized()V

    :cond_1
    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/ast/AbstractVariableDeclaration;->type:Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    iget-object p1, p1, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->resolvedType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    return-object p1
.end method

.method public resolve(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;)V
    .locals 14

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/AbstractVariableDeclaration;->annotations:[Lorg/eclipse/jdt/internal/compiler/ast/Annotation;

    invoke-static {p1, v0, p0}, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->handleNonNullByDefault(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;[Lorg/eclipse/jdt/internal/compiler/ast/Annotation;Lorg/eclipse/jdt/internal/compiler/ast/LocalDeclaration;)V

    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/internal/compiler/ast/LocalDeclaration;->isTypeNameVar(Lorg/eclipse/jdt/internal/compiler/lookup/Scope;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-eqz v0, :cond_3

    iget v4, p0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->bits:I

    and-int/lit8 v4, v4, 0x10

    if-nez v4, :cond_1

    iget-object v4, p0, Lorg/eclipse/jdt/internal/compiler/ast/AbstractVariableDeclaration;->initialization:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    if-eqz v4, :cond_0

    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/compiler/ast/LocalDeclaration;->checkInferredLocalVariableInitializer(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v4

    if-eqz v4, :cond_2

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object v4

    invoke-virtual {v4, p0}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->varLocalWithoutInitizalier(Lorg/eclipse/jdt/internal/compiler/ast/AbstractVariableDeclaration;)V

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->getJavaLangObject()Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move-result-object v4

    :goto_0
    move v5, v1

    goto :goto_2

    :cond_1
    move-object v4, v2

    :cond_2
    :goto_1
    move v5, v3

    goto :goto_2

    :cond_3
    iget-object v4, p0, Lorg/eclipse/jdt/internal/compiler/ast/AbstractVariableDeclaration;->type:Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    invoke-virtual {v4, p1, v1}, Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;->resolveType(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;Z)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v4

    goto :goto_1

    :goto_2
    iget v6, p0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->bits:I

    iget-object v7, p0, Lorg/eclipse/jdt/internal/compiler/ast/AbstractVariableDeclaration;->type:Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    iget v7, v7, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->bits:I

    const/high16 v8, 0x100000

    and-int/2addr v7, v8

    or-int/2addr v6, v7

    iput v6, p0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->bits:I

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/ast/LocalDeclaration;->checkModifiers()V

    if-eqz v4, :cond_5

    sget-object v6, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->VOID:Lorg/eclipse/jdt/internal/compiler/lookup/VoidTypeBinding;

    if-ne v4, v6, :cond_4

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object p1

    invoke-virtual {p1, p0}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->variableTypeCannotBeVoid(Lorg/eclipse/jdt/internal/compiler/ast/AbstractVariableDeclaration;)V

    return-void

    :cond_4
    invoke-virtual {v4}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isArrayType()Z

    move-result v7

    if-eqz v7, :cond_5

    move-object v7, v4

    check-cast v7, Lorg/eclipse/jdt/internal/compiler/lookup/ArrayBinding;

    iget-object v7, v7, Lorg/eclipse/jdt/internal/compiler/lookup/ArrayBinding;->leafComponentType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    if-ne v7, v6, :cond_5

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object p1

    invoke-virtual {p1, p0}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->variableTypeCannotBeVoidArray(Lorg/eclipse/jdt/internal/compiler/ast/AbstractVariableDeclaration;)V

    return-void

    :cond_5
    iget-object v6, p0, Lorg/eclipse/jdt/internal/compiler/ast/AbstractVariableDeclaration;->name:[C

    const/4 v7, 0x3

    invoke-virtual {p1, v6, v7, p0, v3}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->getBinding([CILorg/eclipse/jdt/internal/compiler/lookup/InvocationSite;Z)Lorg/eclipse/jdt/internal/compiler/lookup/Binding;

    move-result-object v6

    if-eqz v6, :cond_8

    invoke-virtual {v6}, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->isValidBinding()Z

    move-result v7

    if-eqz v7, :cond_8

    instance-of v7, v6, Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;

    if-eqz v7, :cond_6

    iget v8, p0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->bits:I

    const/high16 v9, 0x200000

    and-int/2addr v8, v9

    if-eqz v8, :cond_6

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->isLambdaSubscope()Z

    move-result v8

    if-eqz v8, :cond_6

    iget v8, p0, Lorg/eclipse/jdt/internal/compiler/ast/AbstractVariableDeclaration;->hiddenVariableDepth:I

    if-nez v8, :cond_6

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object v6

    invoke-virtual {v6, p0}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->lambdaRedeclaresLocal(Lorg/eclipse/jdt/internal/compiler/ast/LocalDeclaration;)V

    goto :goto_3

    :cond_6
    if-eqz v7, :cond_7

    iget v7, p0, Lorg/eclipse/jdt/internal/compiler/ast/AbstractVariableDeclaration;->hiddenVariableDepth:I

    if-nez v7, :cond_7

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object v6

    invoke-virtual {v6, p0}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->redefineLocal(Lorg/eclipse/jdt/internal/compiler/ast/LocalDeclaration;)V

    goto :goto_3

    :cond_7
    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object v7

    invoke-virtual {v7, p0, v6, v3}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->localVariableHiding(Lorg/eclipse/jdt/internal/compiler/ast/LocalDeclaration;Lorg/eclipse/jdt/internal/compiler/lookup/Binding;Z)V

    :cond_8
    :goto_3
    iget v6, p0, Lorg/eclipse/jdt/internal/compiler/ast/AbstractVariableDeclaration;->modifiers:I

    and-int/lit8 v7, v6, 0x10

    if-eqz v7, :cond_9

    iget-object v7, p0, Lorg/eclipse/jdt/internal/compiler/ast/AbstractVariableDeclaration;->initialization:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    if-nez v7, :cond_9

    const/high16 v7, 0x4000000

    or-int/2addr v6, v7

    iput v6, p0, Lorg/eclipse/jdt/internal/compiler/ast/AbstractVariableDeclaration;->modifiers:I

    :cond_9
    if-eqz v0, :cond_b

    new-instance v6, Lorg/eclipse/jdt/internal/compiler/ast/LocalDeclaration$2;

    if-eqz v4, :cond_a

    move-object v10, v4

    goto :goto_4

    :cond_a
    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->getJavaLangObject()Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move-result-object v7

    move-object v10, v7

    :goto_4
    iget v11, p0, Lorg/eclipse/jdt/internal/compiler/ast/AbstractVariableDeclaration;->modifiers:I

    const/4 v12, 0x0

    move-object v7, v6

    move-object v8, p0

    move-object v9, p0

    move-object v13, p1

    invoke-direct/range {v7 .. v13}, Lorg/eclipse/jdt/internal/compiler/ast/LocalDeclaration$2;-><init>(Lorg/eclipse/jdt/internal/compiler/ast/LocalDeclaration;Lorg/eclipse/jdt/internal/compiler/ast/LocalDeclaration;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;IZLorg/eclipse/jdt/internal/compiler/lookup/BlockScope;)V

    iput-object v6, p0, Lorg/eclipse/jdt/internal/compiler/ast/LocalDeclaration;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;

    goto :goto_5

    :cond_b
    new-instance v6, Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;

    iget v7, p0, Lorg/eclipse/jdt/internal/compiler/ast/AbstractVariableDeclaration;->modifiers:I

    invoke-direct {v6, p0, v4, v7, v3}, Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;-><init>(Lorg/eclipse/jdt/internal/compiler/ast/LocalDeclaration;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;IZ)V

    iput-object v6, p0, Lorg/eclipse/jdt/internal/compiler/ast/LocalDeclaration;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;

    :goto_5
    iget-object v6, p0, Lorg/eclipse/jdt/internal/compiler/ast/LocalDeclaration;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;

    invoke-virtual {p1, v6}, Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;->addLocalVariable(Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;)V

    iget-object v6, p0, Lorg/eclipse/jdt/internal/compiler/ast/LocalDeclaration;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;

    sget-object v7, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->NotAConstant:Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    invoke-virtual {v6, v7}, Lorg/eclipse/jdt/internal/compiler/lookup/VariableBinding;->setConstant(Lorg/eclipse/jdt/internal/compiler/impl/Constant;)V

    if-nez v4, :cond_f

    iget-object v6, p0, Lorg/eclipse/jdt/internal/compiler/ast/AbstractVariableDeclaration;->initialization:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    if-eqz v6, :cond_f

    invoke-virtual {v6, p1}, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->resolveType(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    if-eqz v0, :cond_e

    iget-object v6, p0, Lorg/eclipse/jdt/internal/compiler/ast/AbstractVariableDeclaration;->initialization:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    iget-object v6, v6, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->resolvedType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    if-eqz v6, :cond_e

    sget-object v4, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->NULL:Lorg/eclipse/jdt/internal/compiler/lookup/NullTypeBinding;

    invoke-static {v4, v6}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->equalsEquals(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Z

    move-result v4

    if-eqz v4, :cond_c

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object v4

    invoke-virtual {v4, p0}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->varLocalInitializedToNull(Lorg/eclipse/jdt/internal/compiler/ast/AbstractVariableDeclaration;)V

    :goto_6
    move v5, v1

    goto :goto_7

    :cond_c
    sget-object v4, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->VOID:Lorg/eclipse/jdt/internal/compiler/lookup/VoidTypeBinding;

    iget-object v6, p0, Lorg/eclipse/jdt/internal/compiler/ast/AbstractVariableDeclaration;->initialization:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    iget-object v6, v6, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->resolvedType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-static {v4, v6}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->equalsEquals(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Z

    move-result v4

    if-eqz v4, :cond_d

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object v4

    invoke-virtual {v4, p0}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->varLocalInitializedToVoid(Lorg/eclipse/jdt/internal/compiler/ast/AbstractVariableDeclaration;)V

    goto :goto_6

    :cond_d
    :goto_7
    iget-object v4, p0, Lorg/eclipse/jdt/internal/compiler/ast/AbstractVariableDeclaration;->initialization:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    iget-object v4, v4, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->resolvedType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-virtual {p0, v4}, Lorg/eclipse/jdt/internal/compiler/ast/LocalDeclaration;->patchType(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v4

    goto :goto_8

    :cond_e
    move v5, v1

    :cond_f
    :goto_8
    iget-object v6, p0, Lorg/eclipse/jdt/internal/compiler/ast/LocalDeclaration;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;

    invoke-virtual {v6}, Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;->markInitialized()V

    if-eqz v5, :cond_10

    return-void

    :cond_10
    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->environment()Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    move-result-object v5

    invoke-virtual {v5}, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->usesNullTypeAnnotations()Z

    move-result v5

    if-eqz v5, :cond_12

    if-nez v0, :cond_12

    if-eqz v4, :cond_12

    invoke-virtual {v4}, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->isValidBinding()Z

    move-result v5

    if-eqz v5, :cond_12

    iget-object v5, p0, Lorg/eclipse/jdt/internal/compiler/ast/AbstractVariableDeclaration;->initialization:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    instance-of v6, v5, Lorg/eclipse/jdt/internal/compiler/ast/Invocation;

    if-nez v6, :cond_11

    instance-of v6, v5, Lorg/eclipse/jdt/internal/compiler/ast/ConditionalExpression;

    if-nez v6, :cond_11

    instance-of v6, v5, Lorg/eclipse/jdt/internal/compiler/ast/SwitchExpression;

    if-nez v6, :cond_11

    instance-of v5, v5, Lorg/eclipse/jdt/internal/compiler/ast/ArrayInitializer;

    if-nez v5, :cond_11

    goto :goto_9

    :cond_11
    move v3, v1

    :cond_12
    :goto_9
    if-eqz v3, :cond_13

    iget-object v4, p0, Lorg/eclipse/jdt/internal/compiler/ast/AbstractVariableDeclaration;->annotations:[Lorg/eclipse/jdt/internal/compiler/ast/Annotation;

    iget-object v5, p0, Lorg/eclipse/jdt/internal/compiler/ast/LocalDeclaration;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;

    invoke-static {p1, v4, v5, v1}, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->resolveAnnotations(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;[Lorg/eclipse/jdt/internal/compiler/ast/Annotation;Lorg/eclipse/jdt/internal/compiler/lookup/Binding;Z)[Lorg/eclipse/jdt/internal/compiler/lookup/AnnotationBinding;

    iget-object v4, p0, Lorg/eclipse/jdt/internal/compiler/ast/AbstractVariableDeclaration;->type:Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    iget-object v4, v4, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->resolvedType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    :cond_13
    iget-object v5, p0, Lorg/eclipse/jdt/internal/compiler/ast/AbstractVariableDeclaration;->initialization:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    if-eqz v5, :cond_1f

    instance-of v6, v5, Lorg/eclipse/jdt/internal/compiler/ast/ArrayInitializer;

    if-eqz v6, :cond_14

    invoke-virtual {v5, p1, v4}, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->resolveTypeExpecting(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v0

    if-eqz v0, :cond_1c

    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/ast/AbstractVariableDeclaration;->initialization:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    move-object v5, v2

    check-cast v5, Lorg/eclipse/jdt/internal/compiler/ast/ArrayInitializer;

    move-object v6, v0

    check-cast v6, Lorg/eclipse/jdt/internal/compiler/lookup/ArrayBinding;

    iput-object v6, v5, Lorg/eclipse/jdt/internal/compiler/ast/ArrayInitializer;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/ArrayBinding;

    invoke-virtual {v2, p1, v4, v0}, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->computeConversion(Lorg/eclipse/jdt/internal/compiler/lookup/Scope;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)V

    goto/16 :goto_d

    :cond_14
    if-eqz v0, :cond_15

    sget-object v0, Lorg/eclipse/jdt/internal/compiler/ast/ExpressionContext;->VANILLA_CONTEXT:Lorg/eclipse/jdt/internal/compiler/ast/ExpressionContext;

    goto :goto_a

    :cond_15
    sget-object v0, Lorg/eclipse/jdt/internal/compiler/ast/ExpressionContext;->ASSIGNMENT_CONTEXT:Lorg/eclipse/jdt/internal/compiler/ast/ExpressionContext;

    :goto_a
    invoke-virtual {v5, v0}, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->setExpressionContext(Lorg/eclipse/jdt/internal/compiler/ast/ExpressionContext;)V

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/AbstractVariableDeclaration;->initialization:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    invoke-virtual {v0, v4}, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->setExpectedType(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)V

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/AbstractVariableDeclaration;->initialization:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    iget-object v5, v0, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->resolvedType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    if-eqz v5, :cond_16

    goto :goto_b

    :cond_16
    invoke-virtual {v0, p1}, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->resolveType(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v5

    :goto_b
    if-eqz v5, :cond_1c

    invoke-static {v4, v5}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->notEquals(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Z

    move-result v0

    if-eqz v0, :cond_17

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->compilationUnitScope()Lorg/eclipse/jdt/internal/compiler/lookup/CompilationUnitScope;

    move-result-object v0

    invoke-virtual {v0, v4, v5}, Lorg/eclipse/jdt/internal/compiler/lookup/CompilationUnitScope;->recordTypeConversion(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)V

    :cond_17
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/AbstractVariableDeclaration;->initialization:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    invoke-virtual {v0, v5, v4}, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->isConstantValueOfTypeAssignableToType(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Z

    move-result v0

    if-nez v0, :cond_1a

    invoke-virtual {v5, v4, p1}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isCompatibleWith(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/Scope;)Z

    move-result v0

    if-eqz v0, :cond_18

    goto :goto_c

    :cond_18
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/AbstractVariableDeclaration;->initialization:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    invoke-virtual {p0, v5, v4, v0, p1}, Lorg/eclipse/jdt/internal/compiler/ast/Statement;->isBoxingCompatible(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/ast/Expression;Lorg/eclipse/jdt/internal/compiler/lookup/Scope;)Z

    move-result v0

    if-eqz v0, :cond_19

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/AbstractVariableDeclaration;->initialization:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    invoke-virtual {v0, p1, v4, v5}, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->computeConversion(Lorg/eclipse/jdt/internal/compiler/lookup/Scope;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)V

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/AbstractVariableDeclaration;->initialization:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    instance-of v2, v0, Lorg/eclipse/jdt/internal/compiler/ast/CastExpression;

    if-eqz v2, :cond_1c

    iget v2, v0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->bits:I

    and-int/lit16 v2, v2, 0x4000

    if-nez v2, :cond_1c

    check-cast v0, Lorg/eclipse/jdt/internal/compiler/ast/CastExpression;

    invoke-static {p1, v4, v0}, Lorg/eclipse/jdt/internal/compiler/ast/CastExpression;->checkNeedForAssignedCast(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/ast/CastExpression;)V

    goto :goto_d

    :cond_19
    iget-wide v8, v4, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->tagBits:J

    const-wide/16 v10, 0x80

    and-long/2addr v8, v10

    const-wide/16 v10, 0x0

    cmp-long v0, v8, v10

    if-nez v0, :cond_1c

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object v0

    iget-object v6, p0, Lorg/eclipse/jdt/internal/compiler/ast/AbstractVariableDeclaration;->initialization:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    invoke-virtual {v0, v5, v4, v6, v2}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->typeMismatchError(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;)V

    goto :goto_d

    :cond_1a
    :goto_c
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/AbstractVariableDeclaration;->initialization:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    invoke-virtual {v0, p1, v4, v5}, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->computeConversion(Lorg/eclipse/jdt/internal/compiler/lookup/Scope;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)V

    invoke-virtual {v5, v4}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->needsUncheckedConversion(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Z

    move-result v0

    if-eqz v0, :cond_1b

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object v0

    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/ast/AbstractVariableDeclaration;->initialization:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    invoke-virtual {v0, v2, v5, v4}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->unsafeTypeConversion(Lorg/eclipse/jdt/internal/compiler/ast/Expression;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)V

    :cond_1b
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/AbstractVariableDeclaration;->initialization:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    instance-of v2, v0, Lorg/eclipse/jdt/internal/compiler/ast/CastExpression;

    if-eqz v2, :cond_1c

    iget v2, v0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->bits:I

    and-int/lit16 v2, v2, 0x4000

    if-nez v2, :cond_1c

    check-cast v0, Lorg/eclipse/jdt/internal/compiler/ast/CastExpression;

    invoke-static {p1, v4, v0}, Lorg/eclipse/jdt/internal/compiler/ast/CastExpression;->checkNeedForAssignedCast(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/ast/CastExpression;)V

    :cond_1c
    :goto_d
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/LocalDeclaration;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;

    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/ast/AbstractVariableDeclaration;->initialization:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    invoke-static {v2}, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->getDirectBinding(Lorg/eclipse/jdt/internal/compiler/ast/Expression;)Lorg/eclipse/jdt/internal/compiler/lookup/Binding;

    move-result-object v2

    if-ne v0, v2, :cond_1d

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object v0

    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/ast/AbstractVariableDeclaration;->name:[C

    invoke-virtual {v0, p0, v2}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->assignmentHasNoEffect(Lorg/eclipse/jdt/internal/compiler/ast/AbstractVariableDeclaration;[C)V

    :cond_1d
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/LocalDeclaration;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/VariableBinding;->isFinal()Z

    move-result v2

    if-eqz v2, :cond_1e

    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/ast/AbstractVariableDeclaration;->initialization:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    iget-object v2, v2, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->constant:Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    iget v4, v4, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->id:I

    shl-int/lit8 v4, v4, 0x4

    invoke-virtual {v2}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->typeID()I

    move-result v5

    add-int/2addr v4, v5

    invoke-virtual {v2, v4}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->castTo(I)Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    move-result-object v7

    :cond_1e
    invoke-virtual {v0, v7}, Lorg/eclipse/jdt/internal/compiler/lookup/VariableBinding;->setConstant(Lorg/eclipse/jdt/internal/compiler/impl/Constant;)V

    :cond_1f
    if-nez v3, :cond_20

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/AbstractVariableDeclaration;->annotations:[Lorg/eclipse/jdt/internal/compiler/ast/Annotation;

    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/ast/LocalDeclaration;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;

    invoke-static {p1, v0, v2, v1}, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->resolveAnnotations(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;[Lorg/eclipse/jdt/internal/compiler/ast/Annotation;Lorg/eclipse/jdt/internal/compiler/lookup/Binding;Z)[Lorg/eclipse/jdt/internal/compiler/lookup/AnnotationBinding;

    :cond_20
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/AbstractVariableDeclaration;->type:Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/ast/AbstractVariableDeclaration;->annotations:[Lorg/eclipse/jdt/internal/compiler/ast/Annotation;

    invoke-static {v0, p1, v1}, Lorg/eclipse/jdt/internal/compiler/ast/Annotation;->isTypeUseCompatible(Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;Lorg/eclipse/jdt/internal/compiler/lookup/Scope;[Lorg/eclipse/jdt/internal/compiler/ast/Annotation;)V

    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/internal/compiler/ast/LocalDeclaration;->validateNullAnnotations(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;)V

    return-void
.end method

.method public traverse(Lorg/eclipse/jdt/internal/compiler/ASTVisitor;Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;)V
    .locals 3

    invoke-virtual {p1, p0, p2}, Lorg/eclipse/jdt/internal/compiler/ASTVisitor;->visit(Lorg/eclipse/jdt/internal/compiler/ast/LocalDeclaration;Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/AbstractVariableDeclaration;->annotations:[Lorg/eclipse/jdt/internal/compiler/ast/Annotation;

    if-eqz v0, :cond_1

    array-length v0, v0

    const/4 v1, 0x0

    :goto_0
    if-lt v1, v0, :cond_0

    goto :goto_1

    :cond_0
    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/ast/AbstractVariableDeclaration;->annotations:[Lorg/eclipse/jdt/internal/compiler/ast/Annotation;

    aget-object v2, v2, v1

    invoke-virtual {v2, p1, p2}, Lorg/eclipse/jdt/internal/compiler/ast/Annotation;->traverse(Lorg/eclipse/jdt/internal/compiler/ASTVisitor;Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/AbstractVariableDeclaration;->type:Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    invoke-virtual {v0, p1, p2}, Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;->traverse(Lorg/eclipse/jdt/internal/compiler/ASTVisitor;Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;)V

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/AbstractVariableDeclaration;->initialization:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    if-eqz v0, :cond_2

    invoke-virtual {v0, p1, p2}, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->traverse(Lorg/eclipse/jdt/internal/compiler/ASTVisitor;Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;)V

    :cond_2
    invoke-virtual {p1, p0, p2}, Lorg/eclipse/jdt/internal/compiler/ASTVisitor;->endVisit(Lorg/eclipse/jdt/internal/compiler/ast/LocalDeclaration;Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;)V

    return-void
.end method

.method public validateNullAnnotations(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;)V
    .locals 4

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/LocalDeclaration;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;

    iget-wide v0, v0, Lorg/eclipse/jdt/internal/compiler/lookup/VariableBinding;->tagBits:J

    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/ast/AbstractVariableDeclaration;->type:Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    iget-object v3, p0, Lorg/eclipse/jdt/internal/compiler/ast/AbstractVariableDeclaration;->annotations:[Lorg/eclipse/jdt/internal/compiler/ast/Annotation;

    invoke-virtual {p1, v0, v1, v2, v3}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->validateNullAnnotation(JLorg/eclipse/jdt/internal/compiler/ast/TypeReference;[Lorg/eclipse/jdt/internal/compiler/ast/Annotation;)Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/ast/LocalDeclaration;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;

    iget-wide v0, p1, Lorg/eclipse/jdt/internal/compiler/lookup/VariableBinding;->tagBits:J

    const-wide v2, -0x180000000000001L

    and-long/2addr v0, v2

    iput-wide v0, p1, Lorg/eclipse/jdt/internal/compiler/lookup/VariableBinding;->tagBits:J

    :cond_0
    return-void
.end method
