.class public Lorg/eclipse/jdt/internal/compiler/ast/ForeachStatement;
.super Lorg/eclipse/jdt/internal/compiler/ast/Statement;
.source "SourceFile"


# static fields
.field private static final ARRAY:I = 0x0

.field private static final GENERIC_ITERABLE:I = 0x2

.field private static final RAW_ITERABLE:I = 0x1

.field private static final SecretCollectionVariableName:[C

.field private static final SecretIndexVariableName:[C

.field private static final SecretIteratorVariableName:[C

.field private static final SecretMaxVariableName:[C


# instance fields
.field public action:Lorg/eclipse/jdt/internal/compiler/ast/Statement;

.field private breakLabel:Lorg/eclipse/jdt/internal/compiler/codegen/BranchLabel;

.field public collection:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

.field private collectionElementType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

.field public collectionVariable:Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;

.field private continueLabel:Lorg/eclipse/jdt/internal/compiler/codegen/BranchLabel;

.field public elementVariable:Lorg/eclipse/jdt/internal/compiler/ast/LocalDeclaration;

.field public elementVariableImplicitWidening:I

.field public indexVariable:Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;

.field private iteratorReceiverType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

.field private kind:I

.field public maxVariable:Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;

.field mergedInitStateIndex:I

.field postCollectionInitStateIndex:I

.field public scope:Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, " iterator"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lorg/eclipse/jdt/internal/compiler/ast/ForeachStatement;->SecretIteratorVariableName:[C

    const-string v0, " index"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lorg/eclipse/jdt/internal/compiler/ast/ForeachStatement;->SecretIndexVariableName:[C

    const-string v0, " collection"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lorg/eclipse/jdt/internal/compiler/ast/ForeachStatement;->SecretCollectionVariableName:[C

    const-string v0, " max"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lorg/eclipse/jdt/internal/compiler/ast/ForeachStatement;->SecretMaxVariableName:[C

    return-void
.end method

.method public constructor <init>(Lorg/eclipse/jdt/internal/compiler/ast/LocalDeclaration;I)V
    .locals 1

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/compiler/ast/Statement;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/ForeachStatement;->elementVariableImplicitWidening:I

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/ForeachStatement;->postCollectionInitStateIndex:I

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/ForeachStatement;->mergedInitStateIndex:I

    iput-object p1, p0, Lorg/eclipse/jdt/internal/compiler/ast/ForeachStatement;->elementVariable:Lorg/eclipse/jdt/internal/compiler/ast/LocalDeclaration;

    iput p2, p0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceStart:I

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/ForeachStatement;->kind:I

    return-void
.end method

.method public static getCollectionElementType(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;
    .locals 6

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->compilerOptions()Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;

    move-result-object v1

    iget-wide v1, v1, Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;->targetJDK:J

    const-wide/32 v3, 0x300000

    cmp-long v1, v1, v3

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v1, :cond_1

    move v1, v2

    goto :goto_0

    :cond_1
    move v1, v3

    :goto_0
    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isCapture()Z

    move-result v4

    if-eqz v4, :cond_2

    move-object v4, p1

    check-cast v4, Lorg/eclipse/jdt/internal/compiler/lookup/CaptureBinding;

    iget-object v4, v4, Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;->firstBound:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    if-eqz v4, :cond_2

    invoke-virtual {v4}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isArrayType()Z

    move-result v5

    if-eqz v5, :cond_2

    move-object p1, v4

    :cond_2
    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isArrayType()Z

    move-result v4

    if-eqz v4, :cond_3

    check-cast p1, Lorg/eclipse/jdt/internal/compiler/lookup/ArrayBinding;

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/ArrayBinding;->elementsType()Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object p0

    return-object p0

    :cond_3
    instance-of v4, p1, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    if-eqz v4, :cond_a

    check-cast p1, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    const/16 v4, 0x26

    invoke-virtual {p1, v4, v3}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->findSuperTypeOriginatingFrom(IZ)Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move-result-object v4

    if-nez v4, :cond_4

    if-eqz v1, :cond_4

    const/16 v1, 0x3b

    invoke-virtual {p1, v1, v3}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->findSuperTypeOriginatingFrom(IZ)Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move-result-object v4

    :cond_4
    if-nez v4, :cond_5

    return-object v0

    :cond_5
    invoke-virtual {v4}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->kind()I

    move-result p1

    const/16 v1, 0x104

    if-eq p1, v1, :cond_8

    const/16 v1, 0x404

    if-eq p1, v1, :cond_7

    const/16 p0, 0x804

    if-eq p1, p0, :cond_6

    return-object v0

    :cond_6
    invoke-virtual {v4}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->typeVariables()[Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;

    move-result-object p0

    goto :goto_1

    :cond_7
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->getJavaLangObject()Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move-result-object p0

    return-object p0

    :cond_8
    check-cast v4, Lorg/eclipse/jdt/internal/compiler/lookup/ParameterizedTypeBinding;

    iget-object p0, v4, Lorg/eclipse/jdt/internal/compiler/lookup/ParameterizedTypeBinding;->arguments:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    :goto_1
    array-length p1, p0

    if-eq p1, v2, :cond_9

    return-object v0

    :cond_9
    aget-object p0, p0, v3

    return-object p0

    :cond_a
    return-object v0
.end method


# virtual methods
.method public analyseCode(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;Lorg/eclipse/jdt/internal/compiler/flow/FlowContext;Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;)Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;
    .locals 18

    move-object/from16 v8, p0

    move-object/from16 v9, p1

    move-object/from16 v10, p2

    new-instance v0, Lorg/eclipse/jdt/internal/compiler/codegen/BranchLabel;

    invoke-direct {v0}, Lorg/eclipse/jdt/internal/compiler/codegen/BranchLabel;-><init>()V

    iput-object v0, v8, Lorg/eclipse/jdt/internal/compiler/ast/ForeachStatement;->breakLabel:Lorg/eclipse/jdt/internal/compiler/codegen/BranchLabel;

    new-instance v0, Lorg/eclipse/jdt/internal/compiler/codegen/BranchLabel;

    invoke-direct {v0}, Lorg/eclipse/jdt/internal/compiler/codegen/BranchLabel;-><init>()V

    iput-object v0, v8, Lorg/eclipse/jdt/internal/compiler/ast/ForeachStatement;->continueLabel:Lorg/eclipse/jdt/internal/compiler/codegen/BranchLabel;

    invoke-virtual/range {p3 .. p3}, Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;->reachMode()I

    move-result v0

    and-int/lit8 v0, v0, 0x3

    const/4 v12, 0x1

    if-eqz v0, :cond_0

    move v13, v12

    goto :goto_0

    :cond_0
    const/4 v13, 0x0

    :goto_0
    iget-object v0, v8, Lorg/eclipse/jdt/internal/compiler/ast/ForeachStatement;->elementVariable:Lorg/eclipse/jdt/internal/compiler/ast/LocalDeclaration;

    iget-object v1, v8, Lorg/eclipse/jdt/internal/compiler/ast/ForeachStatement;->scope:Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;

    move-object/from16 v2, p3

    invoke-virtual {v0, v1, v10, v2}, Lorg/eclipse/jdt/internal/compiler/ast/LocalDeclaration;->analyseCode(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;Lorg/eclipse/jdt/internal/compiler/flow/FlowContext;Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;)Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;

    move-result-object v14

    iget-object v0, v8, Lorg/eclipse/jdt/internal/compiler/ast/ForeachStatement;->collection:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    iget-object v1, v8, Lorg/eclipse/jdt/internal/compiler/ast/ForeachStatement;->scope:Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;

    invoke-virtual {v14}, Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;->copy()Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;

    move-result-object v2

    invoke-virtual {v0, v1, v10, v2}, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->analyseCode(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;Lorg/eclipse/jdt/internal/compiler/flow/FlowContext;Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;)Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;

    move-result-object v15

    iget-object v0, v8, Lorg/eclipse/jdt/internal/compiler/ast/ForeachStatement;->collection:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    invoke-virtual {v15}, Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;->copy()Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;

    move-result-object v1

    invoke-virtual {v0, v9, v10, v1, v12}, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->checkNPE(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;Lorg/eclipse/jdt/internal/compiler/flow/FlowContext;Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;I)Z

    iget-object v0, v8, Lorg/eclipse/jdt/internal/compiler/ast/ForeachStatement;->elementVariable:Lorg/eclipse/jdt/internal/compiler/ast/LocalDeclaration;

    iget-object v7, v0, Lorg/eclipse/jdt/internal/compiler/ast/LocalDeclaration;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;

    invoke-virtual {v15, v7}, Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;->markAsDefinitelyAssigned(Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;)V

    invoke-virtual/range {p1 .. p1}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->methodScope()Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;

    move-result-object v0

    invoke-virtual {v0, v15}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;->recordInitializationStates(Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;)I

    move-result v0

    iput v0, v8, Lorg/eclipse/jdt/internal/compiler/ast/ForeachStatement;->postCollectionInitStateIndex:I

    new-instance v6, Lorg/eclipse/jdt/internal/compiler/flow/LoopingFlowContext;

    iget-object v4, v8, Lorg/eclipse/jdt/internal/compiler/ast/ForeachStatement;->breakLabel:Lorg/eclipse/jdt/internal/compiler/codegen/BranchLabel;

    iget-object v5, v8, Lorg/eclipse/jdt/internal/compiler/ast/ForeachStatement;->continueLabel:Lorg/eclipse/jdt/internal/compiler/codegen/BranchLabel;

    iget-object v3, v8, Lorg/eclipse/jdt/internal/compiler/ast/ForeachStatement;->scope:Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;

    const/16 v16, 0x1

    move-object v0, v6

    move-object/from16 v1, p2

    move-object v2, v14

    move-object/from16 v17, v3

    move-object/from16 v3, p0

    move-object v11, v6

    move-object/from16 v6, v17

    move-object v12, v7

    move/from16 v7, v16

    invoke-direct/range {v0 .. v7}, Lorg/eclipse/jdt/internal/compiler/flow/LoopingFlowContext;-><init>(Lorg/eclipse/jdt/internal/compiler/flow/FlowContext;Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;Lorg/eclipse/jdt/internal/compiler/codegen/BranchLabel;Lorg/eclipse/jdt/internal/compiler/codegen/BranchLabel;Lorg/eclipse/jdt/internal/compiler/lookup/Scope;Z)V

    invoke-virtual {v15}, Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;->nullInfoLessUnconditionalCopy()Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;

    move-result-object v7

    invoke-virtual {v7, v12}, Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;->markAsDefinitelyUnknown(Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;)V

    invoke-virtual/range {p1 .. p1}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->compilerOptions()Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;

    move-result-object v0

    iget-boolean v0, v0, Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;->isAnnotationBasedNullAnalysisEnabled:Z

    if-eqz v0, :cond_1

    iget-object v0, v8, Lorg/eclipse/jdt/internal/compiler/ast/ForeachStatement;->collectionElementType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-static {v0}, Lorg/eclipse/jdt/internal/compiler/ast/NullAnnotationMatching;->nullStatusFromExpressionType(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)I

    move-result v4

    iget-object v5, v8, Lorg/eclipse/jdt/internal/compiler/ast/ForeachStatement;->collection:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    iget-object v6, v8, Lorg/eclipse/jdt/internal/compiler/ast/ForeachStatement;->collectionElementType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    const/4 v3, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object v2, v12

    invoke-static/range {v0 .. v6}, Lorg/eclipse/jdt/internal/compiler/ast/NullAnnotationMatching;->checkAssignment(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;Lorg/eclipse/jdt/internal/compiler/flow/FlowContext;Lorg/eclipse/jdt/internal/compiler/lookup/VariableBinding;Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;ILorg/eclipse/jdt/internal/compiler/ast/Expression;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)I

    move-result v0

    iget-object v1, v12, Lorg/eclipse/jdt/internal/compiler/lookup/VariableBinding;->type:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    iget-wide v1, v1, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->tagBits:J

    const-wide/16 v3, 0x2

    and-long/2addr v1, v3

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-nez v1, :cond_1

    invoke-virtual {v7, v12, v0}, Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;->markNullStatus(Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;I)V

    :cond_1
    iget-object v0, v8, Lorg/eclipse/jdt/internal/compiler/ast/ForeachStatement;->action:Lorg/eclipse/jdt/internal/compiler/ast/Statement;

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/ast/Statement;->isEmptyBlock()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual/range {p1 .. p1}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->compilerOptions()Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;

    move-result-object v0

    iget-wide v3, v0, Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;->complianceLevel:J

    const-wide/32 v5, 0x2f0000

    cmp-long v0, v3, v5

    if-lez v0, :cond_5

    :cond_2
    iget-object v0, v8, Lorg/eclipse/jdt/internal/compiler/ast/ForeachStatement;->action:Lorg/eclipse/jdt/internal/compiler/ast/Statement;

    iget-object v3, v8, Lorg/eclipse/jdt/internal/compiler/ast/ForeachStatement;->scope:Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;

    const/4 v4, 0x1

    invoke-virtual {v0, v7, v3, v13, v4}, Lorg/eclipse/jdt/internal/compiler/ast/Statement;->complainIfUnreachable(Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;IZ)I

    move-result v0

    if-ge v0, v1, :cond_3

    iget-object v0, v8, Lorg/eclipse/jdt/internal/compiler/ast/ForeachStatement;->action:Lorg/eclipse/jdt/internal/compiler/ast/Statement;

    iget-object v3, v8, Lorg/eclipse/jdt/internal/compiler/ast/ForeachStatement;->scope:Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;

    invoke-virtual {v0, v3, v11, v7}, Lorg/eclipse/jdt/internal/compiler/ast/Statement;->analyseCode(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;Lorg/eclipse/jdt/internal/compiler/flow/FlowContext;Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;)Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;

    move-result-object v0

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;->unconditionalCopy()Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;

    move-result-object v7

    iget-object v0, v8, Lorg/eclipse/jdt/internal/compiler/ast/ForeachStatement;->action:Lorg/eclipse/jdt/internal/compiler/ast/Statement;

    instance-of v0, v0, Lorg/eclipse/jdt/internal/compiler/ast/Block;

    if-eqz v0, :cond_3

    iget-object v0, v8, Lorg/eclipse/jdt/internal/compiler/ast/ForeachStatement;->elementVariable:Lorg/eclipse/jdt/internal/compiler/ast/LocalDeclaration;

    invoke-static {v0}, Lorg/eclipse/jdt/internal/compiler/ast/FakedTrackingVariable;->markForeachElementVar(Lorg/eclipse/jdt/internal/compiler/ast/LocalDeclaration;)V

    iget-object v0, v8, Lorg/eclipse/jdt/internal/compiler/ast/ForeachStatement;->scope:Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;

    invoke-virtual {v0, v7, v11, v2, v2}, Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;->checkUnclosedCloseables(Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;Lorg/eclipse/jdt/internal/compiler/flow/FlowContext;Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;)V

    :cond_3
    invoke-virtual {v14}, Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;->unconditionalCopy()Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;

    move-result-object v0

    invoke-virtual {v15}, Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;->initsWhenFalse()Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;->addInitializationsFrom(Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;)Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;

    move-result-object v0

    iget v3, v7, Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;->tagBits:I

    iget-object v4, v11, Lorg/eclipse/jdt/internal/compiler/flow/LoopingFlowContext;->initsOnContinue:Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;

    iget v5, v4, Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;->tagBits:I

    and-int/2addr v3, v5

    const/4 v5, 0x1

    and-int/2addr v3, v5

    if-eqz v3, :cond_4

    iput-object v2, v8, Lorg/eclipse/jdt/internal/compiler/ast/ForeachStatement;->continueLabel:Lorg/eclipse/jdt/internal/compiler/codegen/BranchLabel;

    goto :goto_1

    :cond_4
    invoke-virtual {v7, v4}, Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;->mergedWith(Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;)Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;

    move-result-object v7

    iget-object v2, v8, Lorg/eclipse/jdt/internal/compiler/ast/ForeachStatement;->scope:Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;

    invoke-virtual {v11, v2, v7}, Lorg/eclipse/jdt/internal/compiler/flow/LoopingFlowContext;->complainOnDeferredFinalChecks(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;)V

    invoke-virtual {v0, v7}, Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;->addPotentialInitializationsFrom(Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;)Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;

    goto :goto_1

    :cond_5
    invoke-virtual {v15}, Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;->initsWhenFalse()Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;

    move-result-object v0

    iget-object v3, v8, Lorg/eclipse/jdt/internal/compiler/ast/ForeachStatement;->action:Lorg/eclipse/jdt/internal/compiler/ast/Statement;

    instance-of v4, v3, Lorg/eclipse/jdt/internal/compiler/ast/Block;

    if-eqz v4, :cond_6

    invoke-virtual {v3}, Lorg/eclipse/jdt/internal/compiler/ast/Statement;->isEmptyBlock()Z

    move-result v3

    if-nez v3, :cond_6

    iget-object v3, v8, Lorg/eclipse/jdt/internal/compiler/ast/ForeachStatement;->scope:Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;

    invoke-virtual {v3, v7, v11, v2, v2}, Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;->checkUnclosedCloseables(Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;Lorg/eclipse/jdt/internal/compiler/flow/FlowContext;Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;)V

    :cond_6
    :goto_1
    iget-object v2, v8, Lorg/eclipse/jdt/internal/compiler/ast/ForeachStatement;->action:Lorg/eclipse/jdt/internal/compiler/ast/Statement;

    if-eqz v2, :cond_7

    invoke-virtual {v2}, Lorg/eclipse/jdt/internal/compiler/ast/Statement;->isEmptyBlock()Z

    move-result v2

    if-nez v2, :cond_7

    iget-object v2, v8, Lorg/eclipse/jdt/internal/compiler/ast/ForeachStatement;->action:Lorg/eclipse/jdt/internal/compiler/ast/Statement;

    iget v2, v2, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->bits:I

    const/4 v3, 0x1

    and-int/2addr v2, v3

    if-nez v2, :cond_8

    const/16 v17, 0x0

    goto :goto_2

    :cond_7
    const/4 v3, 0x1

    :cond_8
    move/from16 v17, v3

    :goto_2
    iget v2, v8, Lorg/eclipse/jdt/internal/compiler/ast/ForeachStatement;->kind:I

    if-eqz v2, :cond_a

    if-eq v2, v3, :cond_9

    if-eq v2, v1, :cond_9

    goto :goto_3

    :cond_9
    iget-object v1, v8, Lorg/eclipse/jdt/internal/compiler/ast/ForeachStatement;->indexVariable:Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;

    iput v3, v1, Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;->useFlag:I

    goto :goto_3

    :cond_a
    if-eqz v17, :cond_b

    iget v1, v12, Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;->resolvedPosition:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_c

    :cond_b
    iget-object v1, v8, Lorg/eclipse/jdt/internal/compiler/ast/ForeachStatement;->collectionVariable:Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;

    iput v3, v1, Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;->useFlag:I

    iget-object v1, v8, Lorg/eclipse/jdt/internal/compiler/ast/ForeachStatement;->continueLabel:Lorg/eclipse/jdt/internal/compiler/codegen/BranchLabel;

    if-eqz v1, :cond_c

    iget-object v1, v8, Lorg/eclipse/jdt/internal/compiler/ast/ForeachStatement;->indexVariable:Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;

    iput v3, v1, Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;->useFlag:I

    iget-object v1, v8, Lorg/eclipse/jdt/internal/compiler/ast/ForeachStatement;->maxVariable:Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;

    iput v3, v1, Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;->useFlag:I

    :cond_c
    :goto_3
    invoke-virtual {v11, v9, v7}, Lorg/eclipse/jdt/internal/compiler/flow/LoopingFlowContext;->complainOnDeferredNullChecks(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;)V

    invoke-virtual {v11}, Lorg/eclipse/jdt/internal/compiler/flow/LoopingFlowContext;->hasEscapingExceptions()Z

    move-result v1

    if-eqz v1, :cond_e

    invoke-virtual {v14}, Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;->copy()Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;

    move-result-object v1

    iget-object v2, v8, Lorg/eclipse/jdt/internal/compiler/ast/ForeachStatement;->continueLabel:Lorg/eclipse/jdt/internal/compiler/codegen/BranchLabel;

    if-eqz v2, :cond_d

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;->unconditionalCopy()Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;

    move-result-object v2

    invoke-virtual {v2, v7}, Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;->addNullInfoFrom(Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;)Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;

    move-result-object v2

    invoke-virtual {v2}, Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;->unconditionalInits()Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;->mergedWith(Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;)Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;

    move-result-object v1

    :cond_d
    invoke-virtual {v11, v1}, Lorg/eclipse/jdt/internal/compiler/flow/LoopingFlowContext;->simulateThrowAfterLoopBack(Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;)V

    :cond_e
    iget-object v1, v11, Lorg/eclipse/jdt/internal/compiler/flow/SwitchFlowContext;->initsOnBreak:Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;

    iget v2, v1, Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;->tagBits:I

    and-int/lit8 v2, v2, 0x3

    if-eqz v2, :cond_f

    :goto_4
    const/4 v2, 0x0

    const/4 v3, 0x1

    goto :goto_5

    :cond_f
    invoke-virtual {v14, v1}, Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;->addInitializationsFrom(Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;)Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;

    move-result-object v1

    goto :goto_4

    :goto_5
    invoke-static {v1, v2, v0, v2, v3}, Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;->mergedOptimizedBranches(Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;ZLorg/eclipse/jdt/internal/compiler/flow/FlowInfo;ZZ)Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;

    move-result-object v0

    iget-object v1, v8, Lorg/eclipse/jdt/internal/compiler/ast/ForeachStatement;->elementVariable:Lorg/eclipse/jdt/internal/compiler/ast/LocalDeclaration;

    iget-object v1, v1, Lorg/eclipse/jdt/internal/compiler/ast/LocalDeclaration;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;

    invoke-virtual {v0, v1}, Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;->resetAssignmentInfo(Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;)V

    invoke-virtual/range {p1 .. p1}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->methodScope()Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;->recordInitializationStates(Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;)I

    move-result v1

    iput v1, v8, Lorg/eclipse/jdt/internal/compiler/ast/ForeachStatement;->mergedInitStateIndex:I

    return-object v0
.end method

.method public doesNotCompleteNormally()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public generateCode(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;)V
    .locals 10

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->bits:I

    const/high16 v1, -0x80000000

    and-int/2addr v0, v1

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget v0, p2, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->position:I

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/ast/ForeachStatement;->action:Lorg/eclipse/jdt/internal/compiler/ast/Statement;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/compiler/ast/Statement;->isEmptyBlock()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/ast/ForeachStatement;->action:Lorg/eclipse/jdt/internal/compiler/ast/Statement;

    iget v1, v1, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->bits:I

    and-int/2addr v1, v3

    if-nez v1, :cond_1

    move v1, v2

    goto :goto_0

    :cond_1
    move v1, v3

    :goto_0
    const/4 v4, -0x1

    if-eqz v1, :cond_3

    iget-object v5, p0, Lorg/eclipse/jdt/internal/compiler/ast/ForeachStatement;->elementVariable:Lorg/eclipse/jdt/internal/compiler/ast/LocalDeclaration;

    iget-object v5, v5, Lorg/eclipse/jdt/internal/compiler/ast/LocalDeclaration;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;

    iget v5, v5, Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;->resolvedPosition:I

    if-ne v5, v4, :cond_3

    iget v5, p0, Lorg/eclipse/jdt/internal/compiler/ast/ForeachStatement;->kind:I

    if-nez v5, :cond_3

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/ast/ForeachStatement;->collection:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    iget-object v3, p0, Lorg/eclipse/jdt/internal/compiler/ast/ForeachStatement;->scope:Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;

    invoke-virtual {v1, v3, p2, v2}, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->generateCode(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;Z)V

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/ast/ForeachStatement;->scope:Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;

    invoke-virtual {p2, v1}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->exitUserScope(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;)V

    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/ast/ForeachStatement;->mergedInitStateIndex:I

    if-eq v1, v4, :cond_2

    invoke-virtual {p2, p1, v1}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->removeNotDefinitelyAssignedVariables(Lorg/eclipse/jdt/internal/compiler/lookup/Scope;I)V

    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/ast/ForeachStatement;->mergedInitStateIndex:I

    invoke-virtual {p2, p1, v1}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->addDefinitelyAssignedVariables(Lorg/eclipse/jdt/internal/compiler/lookup/Scope;I)V

    :cond_2
    iget p1, p0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceStart:I

    invoke-virtual {p2, v0, p1}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->recordPositionsFrom(II)V

    return-void

    :cond_3
    iget v5, p0, Lorg/eclipse/jdt/internal/compiler/ast/ForeachStatement;->kind:I

    const/4 v6, 0x2

    if-eqz v5, :cond_5

    if-eq v5, v3, :cond_4

    if-eq v5, v6, :cond_4

    goto :goto_1

    :cond_4
    iget-object v5, p0, Lorg/eclipse/jdt/internal/compiler/ast/ForeachStatement;->collection:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    iget-object v7, p0, Lorg/eclipse/jdt/internal/compiler/ast/ForeachStatement;->scope:Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;

    invoke-virtual {v5, v7, p2, v3}, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->generateCode(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;Z)V

    iget-object v5, p0, Lorg/eclipse/jdt/internal/compiler/ast/ForeachStatement;->iteratorReceiverType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-virtual {p2, v5}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->invokeIterableIterator(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)V

    iget-object v5, p0, Lorg/eclipse/jdt/internal/compiler/ast/ForeachStatement;->indexVariable:Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;

    invoke-virtual {p2, v5, v2}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->store(Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;Z)V

    iget-object v5, p0, Lorg/eclipse/jdt/internal/compiler/ast/ForeachStatement;->indexVariable:Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;

    invoke-virtual {p2, v5}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->addVariable(Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;)V

    goto :goto_1

    :cond_5
    iget-object v5, p0, Lorg/eclipse/jdt/internal/compiler/ast/ForeachStatement;->collection:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    iget-object v7, p0, Lorg/eclipse/jdt/internal/compiler/ast/ForeachStatement;->scope:Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;

    invoke-virtual {v5, v7, p2, v3}, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->generateCode(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;Z)V

    iget-object v5, p0, Lorg/eclipse/jdt/internal/compiler/ast/ForeachStatement;->collectionVariable:Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;

    invoke-virtual {p2, v5, v3}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->store(Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;Z)V

    iget-object v5, p0, Lorg/eclipse/jdt/internal/compiler/ast/ForeachStatement;->collectionVariable:Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;

    invoke-virtual {p2, v5}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->addVariable(Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;)V

    iget-object v5, p0, Lorg/eclipse/jdt/internal/compiler/ast/ForeachStatement;->continueLabel:Lorg/eclipse/jdt/internal/compiler/codegen/BranchLabel;

    if-eqz v5, :cond_6

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->arraylength()V

    iget-object v5, p0, Lorg/eclipse/jdt/internal/compiler/ast/ForeachStatement;->maxVariable:Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;

    invoke-virtual {p2, v5, v2}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->store(Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;Z)V

    iget-object v5, p0, Lorg/eclipse/jdt/internal/compiler/ast/ForeachStatement;->maxVariable:Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;

    invoke-virtual {p2, v5}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->addVariable(Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;)V

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->iconst_0()V

    iget-object v5, p0, Lorg/eclipse/jdt/internal/compiler/ast/ForeachStatement;->indexVariable:Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;

    invoke-virtual {p2, v5, v2}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->store(Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;Z)V

    iget-object v5, p0, Lorg/eclipse/jdt/internal/compiler/ast/ForeachStatement;->indexVariable:Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;

    invoke-virtual {p2, v5}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->addVariable(Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;)V

    :cond_6
    :goto_1
    new-instance v5, Lorg/eclipse/jdt/internal/compiler/codegen/BranchLabel;

    invoke-direct {v5, p2}, Lorg/eclipse/jdt/internal/compiler/codegen/BranchLabel;-><init>(Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;)V

    iget v7, v5, Lorg/eclipse/jdt/internal/compiler/codegen/BranchLabel;->tagBits:I

    or-int/2addr v7, v6

    iput v7, v5, Lorg/eclipse/jdt/internal/compiler/codegen/BranchLabel;->tagBits:I

    new-instance v7, Lorg/eclipse/jdt/internal/compiler/codegen/BranchLabel;

    invoke-direct {v7, p2}, Lorg/eclipse/jdt/internal/compiler/codegen/BranchLabel;-><init>(Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;)V

    iget v8, v7, Lorg/eclipse/jdt/internal/compiler/codegen/BranchLabel;->tagBits:I

    or-int/2addr v8, v6

    iput v8, v7, Lorg/eclipse/jdt/internal/compiler/codegen/BranchLabel;->tagBits:I

    iget-object v8, p0, Lorg/eclipse/jdt/internal/compiler/ast/ForeachStatement;->breakLabel:Lorg/eclipse/jdt/internal/compiler/codegen/BranchLabel;

    invoke-virtual {v8, p2}, Lorg/eclipse/jdt/internal/compiler/codegen/BranchLabel;->initialize(Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;)V

    iget-object v8, p0, Lorg/eclipse/jdt/internal/compiler/ast/ForeachStatement;->continueLabel:Lorg/eclipse/jdt/internal/compiler/codegen/BranchLabel;

    if-nez v8, :cond_9

    invoke-virtual {v7}, Lorg/eclipse/jdt/internal/compiler/codegen/BranchLabel;->place()V

    iget v8, p2, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->position:I

    iget v9, p0, Lorg/eclipse/jdt/internal/compiler/ast/ForeachStatement;->kind:I

    if-eqz v9, :cond_8

    if-eq v9, v3, :cond_7

    if-eq v9, v6, :cond_7

    goto :goto_2

    :cond_7
    iget-object v9, p0, Lorg/eclipse/jdt/internal/compiler/ast/ForeachStatement;->indexVariable:Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;

    invoke-virtual {p2, v9}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->load(Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;)V

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->invokeJavaUtilIteratorHasNext()V

    iget-object v9, p0, Lorg/eclipse/jdt/internal/compiler/ast/ForeachStatement;->breakLabel:Lorg/eclipse/jdt/internal/compiler/codegen/BranchLabel;

    invoke-virtual {p2, v9}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->ifeq(Lorg/eclipse/jdt/internal/compiler/codegen/BranchLabel;)V

    goto :goto_2

    :cond_8
    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->arraylength()V

    iget-object v9, p0, Lorg/eclipse/jdt/internal/compiler/ast/ForeachStatement;->breakLabel:Lorg/eclipse/jdt/internal/compiler/codegen/BranchLabel;

    invoke-virtual {p2, v9}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->ifeq(Lorg/eclipse/jdt/internal/compiler/codegen/BranchLabel;)V

    :goto_2
    iget-object v9, p0, Lorg/eclipse/jdt/internal/compiler/ast/ForeachStatement;->elementVariable:Lorg/eclipse/jdt/internal/compiler/ast/LocalDeclaration;

    iget v9, v9, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceStart:I

    invoke-virtual {p2, v8, v9}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->recordPositionsFrom(II)V

    goto :goto_3

    :cond_9
    invoke-virtual {v8, p2}, Lorg/eclipse/jdt/internal/compiler/codegen/BranchLabel;->initialize(Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;)V

    iget-object v8, p0, Lorg/eclipse/jdt/internal/compiler/ast/ForeachStatement;->continueLabel:Lorg/eclipse/jdt/internal/compiler/codegen/BranchLabel;

    iget v9, v8, Lorg/eclipse/jdt/internal/compiler/codegen/BranchLabel;->tagBits:I

    or-int/2addr v9, v6

    iput v9, v8, Lorg/eclipse/jdt/internal/compiler/codegen/BranchLabel;->tagBits:I

    invoke-virtual {p2, v7}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->goto_(Lorg/eclipse/jdt/internal/compiler/codegen/BranchLabel;)V

    :goto_3
    invoke-virtual {v5}, Lorg/eclipse/jdt/internal/compiler/codegen/BranchLabel;->place()V

    iget v8, p0, Lorg/eclipse/jdt/internal/compiler/ast/ForeachStatement;->kind:I

    if-eqz v8, :cond_f

    if-eq v8, v3, :cond_a

    if-eq v8, v6, :cond_a

    goto/16 :goto_6

    :cond_a
    iget-object v8, p0, Lorg/eclipse/jdt/internal/compiler/ast/ForeachStatement;->indexVariable:Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;

    invoke-virtual {p2, v8}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->load(Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;)V

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->invokeJavaUtilIteratorNext()V

    iget-object v8, p0, Lorg/eclipse/jdt/internal/compiler/ast/ForeachStatement;->elementVariable:Lorg/eclipse/jdt/internal/compiler/ast/LocalDeclaration;

    iget-object v8, v8, Lorg/eclipse/jdt/internal/compiler/ast/LocalDeclaration;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;

    iget-object v8, v8, Lorg/eclipse/jdt/internal/compiler/lookup/VariableBinding;->type:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    iget v9, v8, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->id:I

    if-eq v9, v3, :cond_c

    iget v9, p0, Lorg/eclipse/jdt/internal/compiler/ast/ForeachStatement;->elementVariableImplicitWidening:I

    if-eq v9, v4, :cond_b

    iget-object v8, p0, Lorg/eclipse/jdt/internal/compiler/ast/ForeachStatement;->collectionElementType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-virtual {p2, v8}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->checkcast(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)V

    iget v8, p0, Lorg/eclipse/jdt/internal/compiler/ast/ForeachStatement;->elementVariableImplicitWidening:I

    invoke-virtual {p2, v8}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->generateImplicitConversion(I)V

    goto :goto_4

    :cond_b
    invoke-virtual {p2, v8}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->checkcast(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)V

    :cond_c
    :goto_4
    iget-object v8, p0, Lorg/eclipse/jdt/internal/compiler/ast/ForeachStatement;->elementVariable:Lorg/eclipse/jdt/internal/compiler/ast/LocalDeclaration;

    iget-object v8, v8, Lorg/eclipse/jdt/internal/compiler/ast/LocalDeclaration;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;

    iget v9, v8, Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;->resolvedPosition:I

    if-ne v9, v4, :cond_e

    iget-object v2, v8, Lorg/eclipse/jdt/internal/compiler/lookup/VariableBinding;->type:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    iget v2, v2, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->id:I

    const/4 v8, 0x7

    if-eq v2, v8, :cond_d

    const/16 v8, 0x8

    if-eq v2, v8, :cond_d

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->pop()V

    goto :goto_6

    :cond_d
    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->pop2()V

    goto :goto_6

    :cond_e
    invoke-virtual {p2, v8, v2}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->store(Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;Z)V

    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/ast/ForeachStatement;->elementVariable:Lorg/eclipse/jdt/internal/compiler/ast/LocalDeclaration;

    iget-object v2, v2, Lorg/eclipse/jdt/internal/compiler/ast/LocalDeclaration;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;

    invoke-virtual {p2, v2}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->addVisibleLocalVariable(Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;)V

    iget v2, p0, Lorg/eclipse/jdt/internal/compiler/ast/ForeachStatement;->postCollectionInitStateIndex:I

    if-eq v2, v4, :cond_12

    invoke-virtual {p2, p1, v2}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->addDefinitelyAssignedVariables(Lorg/eclipse/jdt/internal/compiler/lookup/Scope;I)V

    goto :goto_6

    :cond_f
    iget-object v8, p0, Lorg/eclipse/jdt/internal/compiler/ast/ForeachStatement;->elementVariable:Lorg/eclipse/jdt/internal/compiler/ast/LocalDeclaration;

    iget-object v8, v8, Lorg/eclipse/jdt/internal/compiler/ast/LocalDeclaration;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;

    iget v8, v8, Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;->resolvedPosition:I

    if-eq v8, v4, :cond_12

    iget-object v8, p0, Lorg/eclipse/jdt/internal/compiler/ast/ForeachStatement;->collectionVariable:Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;

    invoke-virtual {p2, v8}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->load(Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;)V

    iget-object v8, p0, Lorg/eclipse/jdt/internal/compiler/ast/ForeachStatement;->continueLabel:Lorg/eclipse/jdt/internal/compiler/codegen/BranchLabel;

    if-nez v8, :cond_10

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->iconst_0()V

    goto :goto_5

    :cond_10
    iget-object v8, p0, Lorg/eclipse/jdt/internal/compiler/ast/ForeachStatement;->indexVariable:Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;

    invoke-virtual {p2, v8}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->load(Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;)V

    :goto_5
    iget-object v8, p0, Lorg/eclipse/jdt/internal/compiler/ast/ForeachStatement;->collectionElementType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    iget v8, v8, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->id:I

    invoke-virtual {p2, v8}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->arrayAt(I)V

    iget v8, p0, Lorg/eclipse/jdt/internal/compiler/ast/ForeachStatement;->elementVariableImplicitWidening:I

    if-eq v8, v4, :cond_11

    invoke-virtual {p2, v8}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->generateImplicitConversion(I)V

    :cond_11
    iget-object v8, p0, Lorg/eclipse/jdt/internal/compiler/ast/ForeachStatement;->elementVariable:Lorg/eclipse/jdt/internal/compiler/ast/LocalDeclaration;

    iget-object v8, v8, Lorg/eclipse/jdt/internal/compiler/ast/LocalDeclaration;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;

    invoke-virtual {p2, v8, v2}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->store(Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;Z)V

    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/ast/ForeachStatement;->elementVariable:Lorg/eclipse/jdt/internal/compiler/ast/LocalDeclaration;

    iget-object v2, v2, Lorg/eclipse/jdt/internal/compiler/ast/LocalDeclaration;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;

    invoke-virtual {p2, v2}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->addVisibleLocalVariable(Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;)V

    iget v2, p0, Lorg/eclipse/jdt/internal/compiler/ast/ForeachStatement;->postCollectionInitStateIndex:I

    if-eq v2, v4, :cond_12

    invoke-virtual {p2, p1, v2}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->addDefinitelyAssignedVariables(Lorg/eclipse/jdt/internal/compiler/lookup/Scope;I)V

    :cond_12
    :goto_6
    if-nez v1, :cond_13

    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/ast/ForeachStatement;->action:Lorg/eclipse/jdt/internal/compiler/ast/Statement;

    iget-object v8, p0, Lorg/eclipse/jdt/internal/compiler/ast/ForeachStatement;->scope:Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;

    invoke-virtual {v2, v8, p2}, Lorg/eclipse/jdt/internal/compiler/ast/Statement;->generateCode(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;)V

    :cond_13
    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/ast/ForeachStatement;->elementVariable:Lorg/eclipse/jdt/internal/compiler/ast/LocalDeclaration;

    iget-object v2, v2, Lorg/eclipse/jdt/internal/compiler/ast/LocalDeclaration;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;

    invoke-virtual {p2, v2}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->removeVariable(Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;)V

    iget v2, p0, Lorg/eclipse/jdt/internal/compiler/ast/ForeachStatement;->postCollectionInitStateIndex:I

    if-eq v2, v4, :cond_14

    invoke-virtual {p2, p1, v2}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->removeNotDefinitelyAssignedVariables(Lorg/eclipse/jdt/internal/compiler/lookup/Scope;I)V

    :cond_14
    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/ast/ForeachStatement;->continueLabel:Lorg/eclipse/jdt/internal/compiler/codegen/BranchLabel;

    if-eqz v2, :cond_19

    invoke-virtual {v2}, Lorg/eclipse/jdt/internal/compiler/codegen/BranchLabel;->place()V

    iget v2, p2, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->position:I

    iget v8, p0, Lorg/eclipse/jdt/internal/compiler/ast/ForeachStatement;->kind:I

    if-eqz v8, :cond_16

    if-eq v8, v3, :cond_15

    if-eq v8, v6, :cond_15

    goto :goto_7

    :cond_15
    invoke-virtual {v7}, Lorg/eclipse/jdt/internal/compiler/codegen/BranchLabel;->place()V

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/ast/ForeachStatement;->indexVariable:Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;

    invoke-virtual {p2, v1}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->load(Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;)V

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->invokeJavaUtilIteratorHasNext()V

    invoke-virtual {p2, v5}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->ifne(Lorg/eclipse/jdt/internal/compiler/codegen/BranchLabel;)V

    goto :goto_7

    :cond_16
    if-eqz v1, :cond_17

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/ast/ForeachStatement;->elementVariable:Lorg/eclipse/jdt/internal/compiler/ast/LocalDeclaration;

    iget-object v1, v1, Lorg/eclipse/jdt/internal/compiler/ast/LocalDeclaration;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;

    iget v1, v1, Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;->resolvedPosition:I

    if-ltz v1, :cond_18

    :cond_17
    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/ast/ForeachStatement;->indexVariable:Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;

    iget v1, v1, Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;->resolvedPosition:I

    invoke-virtual {p2, v1, v3}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->iinc(II)V

    :cond_18
    invoke-virtual {v7}, Lorg/eclipse/jdt/internal/compiler/codegen/BranchLabel;->place()V

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/ast/ForeachStatement;->indexVariable:Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;

    invoke-virtual {p2, v1}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->load(Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;)V

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/ast/ForeachStatement;->maxVariable:Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;

    invoke-virtual {p2, v1}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->load(Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;)V

    invoke-virtual {p2, v5}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->if_icmplt(Lorg/eclipse/jdt/internal/compiler/codegen/BranchLabel;)V

    :goto_7
    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/ast/ForeachStatement;->elementVariable:Lorg/eclipse/jdt/internal/compiler/ast/LocalDeclaration;

    iget v1, v1, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceStart:I

    invoke-virtual {p2, v2, v1}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->recordPositionsFrom(II)V

    :cond_19
    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/ast/ForeachStatement;->kind:I

    if-eqz v1, :cond_1b

    if-eq v1, v3, :cond_1a

    if-eq v1, v6, :cond_1a

    goto :goto_8

    :cond_1a
    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/ast/ForeachStatement;->indexVariable:Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;

    invoke-virtual {p2, v1}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->removeVariable(Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;)V

    goto :goto_8

    :cond_1b
    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/ast/ForeachStatement;->indexVariable:Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;

    invoke-virtual {p2, v1}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->removeVariable(Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;)V

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/ast/ForeachStatement;->maxVariable:Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;

    invoke-virtual {p2, v1}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->removeVariable(Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;)V

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/ast/ForeachStatement;->collectionVariable:Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;

    invoke-virtual {p2, v1}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->removeVariable(Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;)V

    :goto_8
    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/ast/ForeachStatement;->scope:Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;

    invoke-virtual {p2, v1}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->exitUserScope(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;)V

    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/ast/ForeachStatement;->mergedInitStateIndex:I

    if-eq v1, v4, :cond_1c

    invoke-virtual {p2, p1, v1}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->removeNotDefinitelyAssignedVariables(Lorg/eclipse/jdt/internal/compiler/lookup/Scope;I)V

    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/ast/ForeachStatement;->mergedInitStateIndex:I

    invoke-virtual {p2, p1, v1}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->addDefinitelyAssignedVariables(Lorg/eclipse/jdt/internal/compiler/lookup/Scope;I)V

    :cond_1c
    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/ast/ForeachStatement;->breakLabel:Lorg/eclipse/jdt/internal/compiler/codegen/BranchLabel;

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/codegen/BranchLabel;->place()V

    iget p1, p0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceStart:I

    invoke-virtual {p2, v0, p1}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->recordPositionsFrom(II)V

    return-void
.end method

.method public printStatement(ILjava/lang/StringBuffer;)Ljava/lang/StringBuffer;
    .locals 2

    invoke-static {p1, p2}, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->printIndent(ILjava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "for ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/ForeachStatement;->elementVariable:Lorg/eclipse/jdt/internal/compiler/ast/LocalDeclaration;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p2}, Lorg/eclipse/jdt/internal/compiler/ast/AbstractVariableDeclaration;->printAsExpression(ILjava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    const-string v0, " : "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/ForeachStatement;->collection:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    if-eqz v0, :cond_0

    invoke-virtual {v0, v1, p2}, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->print(ILjava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ") "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    :cond_0
    const/16 v0, 0x29

    invoke-virtual {p2, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :goto_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/ForeachStatement;->action:Lorg/eclipse/jdt/internal/compiler/ast/Statement;

    if-nez v0, :cond_1

    const/16 p1, 0x3b

    invoke-virtual {p2, p1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_1

    :cond_1
    const/16 v0, 0xa

    invoke-virtual {p2, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/ForeachStatement;->action:Lorg/eclipse/jdt/internal/compiler/ast/Statement;

    add-int/lit8 p1, p1, 0x1

    invoke-virtual {v0, p1, p2}, Lorg/eclipse/jdt/internal/compiler/ast/Statement;->printStatement(ILjava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    :goto_1
    return-object p2
.end method

.method public resolve(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;)V
    .locals 11

    new-instance v0, Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;

    invoke-direct {v0, p1}, Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;-><init>(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;)V

    iput-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/ForeachStatement;->scope:Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;

    iput-object p0, v0, Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;->blockStatement:Lorg/eclipse/jdt/internal/compiler/ast/Statement;

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/ast/ForeachStatement;->elementVariable:Lorg/eclipse/jdt/internal/compiler/ast/LocalDeclaration;

    invoke-virtual {v1, v0}, Lorg/eclipse/jdt/internal/compiler/ast/LocalDeclaration;->resolve(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;)V

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/ForeachStatement;->elementVariable:Lorg/eclipse/jdt/internal/compiler/ast/LocalDeclaration;

    iget-object v0, v0, Lorg/eclipse/jdt/internal/compiler/ast/AbstractVariableDeclaration;->type:Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    iget-object v0, v0, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->resolvedType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/ast/ForeachStatement;->collection:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    move-object v1, v2

    goto :goto_0

    :cond_0
    invoke-virtual {v1, p1}, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->resolveType(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v1

    :goto_0
    iget-object v3, p0, Lorg/eclipse/jdt/internal/compiler/ast/ForeachStatement;->elementVariable:Lorg/eclipse/jdt/internal/compiler/ast/LocalDeclaration;

    invoke-virtual {v3, p1}, Lorg/eclipse/jdt/internal/compiler/ast/LocalDeclaration;->isTypeNameVar(Lorg/eclipse/jdt/internal/compiler/lookup/Scope;)Z

    move-result v3

    if-eqz v3, :cond_6

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/ForeachStatement;->elementVariable:Lorg/eclipse/jdt/internal/compiler/ast/LocalDeclaration;

    iget-object v0, v0, Lorg/eclipse/jdt/internal/compiler/ast/AbstractVariableDeclaration;->type:Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;->dimensions()I

    move-result v0

    if-gtz v0, :cond_1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/ForeachStatement;->elementVariable:Lorg/eclipse/jdt/internal/compiler/ast/LocalDeclaration;

    iget-object v0, v0, Lorg/eclipse/jdt/internal/compiler/ast/AbstractVariableDeclaration;->type:Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;->extraDimensions()I

    move-result v0

    if-lez v0, :cond_2

    :cond_1
    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object v0

    iget-object v3, p0, Lorg/eclipse/jdt/internal/compiler/ast/ForeachStatement;->elementVariable:Lorg/eclipse/jdt/internal/compiler/ast/LocalDeclaration;

    invoke-virtual {v0, v3}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->varLocalCannotBeArray(Lorg/eclipse/jdt/internal/compiler/ast/AbstractVariableDeclaration;)V

    :cond_2
    sget-object v0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->NULL:Lorg/eclipse/jdt/internal/compiler/lookup/NullTypeBinding;

    invoke-static {v0, v1}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->equalsEquals(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object v0

    iget-object v3, p0, Lorg/eclipse/jdt/internal/compiler/ast/ForeachStatement;->elementVariable:Lorg/eclipse/jdt/internal/compiler/ast/LocalDeclaration;

    invoke-virtual {v0, v3}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->varLocalInitializedToNull(Lorg/eclipse/jdt/internal/compiler/ast/AbstractVariableDeclaration;)V

    goto :goto_1

    :cond_3
    sget-object v0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->VOID:Lorg/eclipse/jdt/internal/compiler/lookup/VoidTypeBinding;

    invoke-static {v0, v1}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->equalsEquals(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object v0

    iget-object v3, p0, Lorg/eclipse/jdt/internal/compiler/ast/ForeachStatement;->elementVariable:Lorg/eclipse/jdt/internal/compiler/ast/LocalDeclaration;

    invoke-virtual {v0, v3}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->varLocalInitializedToVoid(Lorg/eclipse/jdt/internal/compiler/ast/AbstractVariableDeclaration;)V

    :cond_4
    :goto_1
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/ForeachStatement;->scope:Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;

    invoke-static {v0, v1}, Lorg/eclipse/jdt/internal/compiler/ast/ForeachStatement;->getCollectionElementType(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v0

    if-nez v0, :cond_5

    move-object v0, v1

    goto :goto_2

    :cond_5
    iget-object v3, p0, Lorg/eclipse/jdt/internal/compiler/ast/ForeachStatement;->elementVariable:Lorg/eclipse/jdt/internal/compiler/ast/LocalDeclaration;

    invoke-virtual {v3, v0}, Lorg/eclipse/jdt/internal/compiler/ast/LocalDeclaration;->patchType(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v0

    :goto_2
    iget-object v3, p0, Lorg/eclipse/jdt/internal/compiler/ast/ForeachStatement;->elementVariable:Lorg/eclipse/jdt/internal/compiler/ast/LocalDeclaration;

    iget-object v3, v3, Lorg/eclipse/jdt/internal/compiler/ast/LocalDeclaration;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;

    if-eqz v3, :cond_6

    invoke-virtual {v3}, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->isValidBinding()Z

    move-result v3

    if-eqz v3, :cond_6

    iget-object v3, p0, Lorg/eclipse/jdt/internal/compiler/ast/ForeachStatement;->elementVariable:Lorg/eclipse/jdt/internal/compiler/ast/LocalDeclaration;

    iget-object v4, p0, Lorg/eclipse/jdt/internal/compiler/ast/ForeachStatement;->scope:Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;

    invoke-virtual {v3, v4}, Lorg/eclipse/jdt/internal/compiler/ast/LocalDeclaration;->validateNullAnnotations(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;)V

    :cond_6
    if-eqz v0, :cond_21

    if-eqz v1, :cond_21

    iget-object v3, p0, Lorg/eclipse/jdt/internal/compiler/ast/ForeachStatement;->scope:Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;

    invoke-virtual {v3}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->compilerOptions()Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;

    move-result-object v3

    iget-wide v3, v3, Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;->targetJDK:J

    const-wide/32 v5, 0x300000

    cmp-long v3, v3, v5

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-nez v3, :cond_7

    move v3, v4

    goto :goto_3

    :cond_7
    move v3, v5

    :goto_3
    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isCapture()Z

    move-result v6

    if-eqz v6, :cond_8

    move-object v6, v1

    check-cast v6, Lorg/eclipse/jdt/internal/compiler/lookup/CaptureBinding;

    iget-object v6, v6, Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;->firstBound:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    if-eqz v6, :cond_8

    invoke-virtual {v6}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isArrayType()Z

    move-result v7

    if-eqz v7, :cond_8

    move-object v1, v6

    :cond_8
    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isArrayType()Z

    move-result v6

    const/4 v7, 0x2

    const/16 v8, 0x400

    if-eqz v6, :cond_e

    iput v5, p0, Lorg/eclipse/jdt/internal/compiler/ast/ForeachStatement;->kind:I

    move-object v6, v1

    check-cast v6, Lorg/eclipse/jdt/internal/compiler/lookup/ArrayBinding;

    invoke-virtual {v6}, Lorg/eclipse/jdt/internal/compiler/lookup/ArrayBinding;->elementsType()Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v6

    iput-object v6, p0, Lorg/eclipse/jdt/internal/compiler/ast/ForeachStatement;->collectionElementType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-virtual {v6, v0}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isCompatibleWith(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Z

    move-result v6

    if-nez v6, :cond_9

    iget-object v6, p0, Lorg/eclipse/jdt/internal/compiler/ast/ForeachStatement;->scope:Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;

    iget-object v9, p0, Lorg/eclipse/jdt/internal/compiler/ast/ForeachStatement;->collectionElementType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-virtual {v6, v9, v0}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->isBoxingCompatibleWith(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Z

    move-result v6

    if-nez v6, :cond_9

    iget-object v6, p0, Lorg/eclipse/jdt/internal/compiler/ast/ForeachStatement;->scope:Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;

    invoke-virtual {v6}, Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object v6

    iget-object v9, p0, Lorg/eclipse/jdt/internal/compiler/ast/ForeachStatement;->collection:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    iget-object v10, p0, Lorg/eclipse/jdt/internal/compiler/ast/ForeachStatement;->collectionElementType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-virtual {v6, v9, v10, v0}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->notCompatibleTypesErrorInForeach(Lorg/eclipse/jdt/internal/compiler/ast/Expression;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)V

    goto :goto_4

    :cond_9
    iget-object v6, p0, Lorg/eclipse/jdt/internal/compiler/ast/ForeachStatement;->collectionElementType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-virtual {v6, v0}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->needsUncheckedConversion(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Z

    move-result v6

    if-eqz v6, :cond_a

    iget-object v6, p0, Lorg/eclipse/jdt/internal/compiler/ast/ForeachStatement;->scope:Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;

    invoke-virtual {v6}, Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object v6

    iget-object v9, p0, Lorg/eclipse/jdt/internal/compiler/ast/ForeachStatement;->collection:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    iget-object v10, p0, Lorg/eclipse/jdt/internal/compiler/ast/ForeachStatement;->collectionElementType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-virtual {v6, v9, v10, v0}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->unsafeElementTypeConversion(Lorg/eclipse/jdt/internal/compiler/ast/Expression;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)V

    :cond_a
    :goto_4
    iget-object v6, p0, Lorg/eclipse/jdt/internal/compiler/ast/ForeachStatement;->collectionElementType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    iget v6, v6, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->id:I

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isBaseType()Z

    move-result v9

    if-eqz v9, :cond_c

    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/ast/ForeachStatement;->collection:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    iget-object v9, p0, Lorg/eclipse/jdt/internal/compiler/ast/ForeachStatement;->scope:Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;

    invoke-virtual {p1, v9, v1, v1}, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->computeConversion(Lorg/eclipse/jdt/internal/compiler/lookup/Scope;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)V

    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/ast/ForeachStatement;->collectionElementType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isBaseType()Z

    move-result p1

    if-nez p1, :cond_b

    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/ast/ForeachStatement;->scope:Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->environment()Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    move-result-object p1

    iget-object v6, p0, Lorg/eclipse/jdt/internal/compiler/ast/ForeachStatement;->collectionElementType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-virtual {p1, v6}, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->computeBoxingType(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object p1

    iget p1, p1, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->id:I

    iput v8, p0, Lorg/eclipse/jdt/internal/compiler/ast/ForeachStatement;->elementVariableImplicitWidening:I

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isBaseType()Z

    move-result v6

    if-eqz v6, :cond_1c

    iget v6, p0, Lorg/eclipse/jdt/internal/compiler/ast/ForeachStatement;->elementVariableImplicitWidening:I

    iget v8, v0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->id:I

    shl-int/lit8 v8, v8, 0x4

    add-int/2addr v8, p1

    or-int p1, v6, v8

    iput p1, p0, Lorg/eclipse/jdt/internal/compiler/ast/ForeachStatement;->elementVariableImplicitWidening:I

    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/ast/ForeachStatement;->scope:Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object p1

    iget-object v6, p0, Lorg/eclipse/jdt/internal/compiler/ast/ForeachStatement;->collection:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    iget-object v8, p0, Lorg/eclipse/jdt/internal/compiler/ast/ForeachStatement;->collectionElementType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-virtual {p1, v6, v8, v0}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->autoboxing(Lorg/eclipse/jdt/internal/compiler/ast/Expression;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)V

    goto/16 :goto_8

    :cond_b
    iget p1, v0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->id:I

    shl-int/lit8 p1, p1, 0x4

    add-int/2addr p1, v6

    iput p1, p0, Lorg/eclipse/jdt/internal/compiler/ast/ForeachStatement;->elementVariableImplicitWidening:I

    goto/16 :goto_8

    :cond_c
    iget-object v8, p0, Lorg/eclipse/jdt/internal/compiler/ast/ForeachStatement;->collectionElementType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-virtual {v8}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isBaseType()Z

    move-result v8

    if-eqz v8, :cond_d

    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/ast/ForeachStatement;->collection:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    iget-object v8, p0, Lorg/eclipse/jdt/internal/compiler/ast/ForeachStatement;->scope:Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;

    invoke-virtual {p1, v8, v1, v1}, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->computeConversion(Lorg/eclipse/jdt/internal/compiler/lookup/Scope;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)V

    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/ast/ForeachStatement;->scope:Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->environment()Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    move-result-object p1

    iget-object v8, p0, Lorg/eclipse/jdt/internal/compiler/ast/ForeachStatement;->collectionElementType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-virtual {p1, v8}, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->computeBoxingType(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object p1

    iget p1, p1, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->id:I

    shl-int/lit8 p1, v6, 0x4

    or-int/lit16 p1, p1, 0x200

    or-int/2addr p1, v6

    iput p1, p0, Lorg/eclipse/jdt/internal/compiler/ast/ForeachStatement;->elementVariableImplicitWidening:I

    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/ast/ForeachStatement;->scope:Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object p1

    iget-object v6, p0, Lorg/eclipse/jdt/internal/compiler/ast/ForeachStatement;->collection:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    iget-object v8, p0, Lorg/eclipse/jdt/internal/compiler/ast/ForeachStatement;->collectionElementType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-virtual {p1, v6, v8, v0}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->autoboxing(Lorg/eclipse/jdt/internal/compiler/ast/Expression;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)V

    goto/16 :goto_8

    :cond_d
    invoke-virtual {p1, v0, v4}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->createArrayType(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;I)Lorg/eclipse/jdt/internal/compiler/lookup/ArrayBinding;

    move-result-object v2

    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/ast/ForeachStatement;->collection:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/ForeachStatement;->scope:Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;

    invoke-virtual {p1, v0, v2, v1}, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->computeConversion(Lorg/eclipse/jdt/internal/compiler/lookup/Scope;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)V

    goto/16 :goto_8

    :cond_e
    instance-of p1, v1, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    if-eqz p1, :cond_1c

    move-object p1, v1

    check-cast p1, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    const/16 v6, 0x26

    invoke-virtual {p1, v6, v5}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->findSuperTypeOriginatingFrom(IZ)Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move-result-object v9

    const/16 v10, 0x3b

    if-nez v9, :cond_f

    if-eqz v3, :cond_f

    invoke-virtual {p1, v10, v5}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->findSuperTypeOriginatingFrom(IZ)Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move-result-object v9

    :cond_f
    if-nez v9, :cond_10

    goto/16 :goto_8

    :cond_10
    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->erasure()Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object p1

    iput-object p1, p0, Lorg/eclipse/jdt/internal/compiler/ast/ForeachStatement;->iteratorReceiverType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    if-eqz v3, :cond_12

    check-cast p1, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    invoke-virtual {p1, v10, v5}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->findSuperTypeOriginatingFrom(IZ)Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move-result-object p1

    if-nez p1, :cond_11

    iput-object v9, p0, Lorg/eclipse/jdt/internal/compiler/ast/ForeachStatement;->iteratorReceiverType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/ast/ForeachStatement;->collection:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    iget-object v6, p0, Lorg/eclipse/jdt/internal/compiler/ast/ForeachStatement;->scope:Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;

    invoke-virtual {p1, v6, v9, v1}, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->computeConversion(Lorg/eclipse/jdt/internal/compiler/lookup/Scope;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)V

    goto :goto_5

    :cond_11
    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/ast/ForeachStatement;->collection:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    iget-object v6, p0, Lorg/eclipse/jdt/internal/compiler/ast/ForeachStatement;->scope:Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;

    invoke-virtual {p1, v6, v1, v1}, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->computeConversion(Lorg/eclipse/jdt/internal/compiler/lookup/Scope;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)V

    goto :goto_5

    :cond_12
    check-cast p1, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    invoke-virtual {p1, v6, v5}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->findSuperTypeOriginatingFrom(IZ)Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move-result-object p1

    if-nez p1, :cond_13

    iput-object v9, p0, Lorg/eclipse/jdt/internal/compiler/ast/ForeachStatement;->iteratorReceiverType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/ast/ForeachStatement;->collection:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    iget-object v6, p0, Lorg/eclipse/jdt/internal/compiler/ast/ForeachStatement;->scope:Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;

    invoke-virtual {p1, v6, v9, v1}, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->computeConversion(Lorg/eclipse/jdt/internal/compiler/lookup/Scope;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)V

    goto :goto_5

    :cond_13
    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/ast/ForeachStatement;->collection:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    iget-object v6, p0, Lorg/eclipse/jdt/internal/compiler/ast/ForeachStatement;->scope:Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;

    invoke-virtual {p1, v6, v1, v1}, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->computeConversion(Lorg/eclipse/jdt/internal/compiler/lookup/Scope;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)V

    :goto_5
    invoke-virtual {v9}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->kind()I

    move-result p1

    const/16 v6, 0x104

    if-eq p1, v6, :cond_16

    const/16 v6, 0x404

    if-eq p1, v6, :cond_15

    const/16 v6, 0x804

    if-eq p1, v6, :cond_14

    goto/16 :goto_8

    :cond_14
    invoke-virtual {v9}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->typeVariables()[Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;

    move-result-object p1

    goto :goto_6

    :cond_15
    iput v4, p0, Lorg/eclipse/jdt/internal/compiler/ast/ForeachStatement;->kind:I

    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/ast/ForeachStatement;->scope:Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->getJavaLangObject()Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move-result-object p1

    iput-object p1, p0, Lorg/eclipse/jdt/internal/compiler/ast/ForeachStatement;->collectionElementType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-virtual {p1, v0}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isCompatibleWith(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Z

    move-result p1

    if-nez p1, :cond_1c

    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/ast/ForeachStatement;->scope:Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;

    iget-object v6, p0, Lorg/eclipse/jdt/internal/compiler/ast/ForeachStatement;->collectionElementType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-virtual {p1, v6, v0}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->isBoxingCompatibleWith(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Z

    move-result p1

    if-nez p1, :cond_1c

    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/ast/ForeachStatement;->scope:Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object p1

    iget-object v6, p0, Lorg/eclipse/jdt/internal/compiler/ast/ForeachStatement;->collection:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    iget-object v8, p0, Lorg/eclipse/jdt/internal/compiler/ast/ForeachStatement;->collectionElementType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-virtual {p1, v6, v8, v0}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->notCompatibleTypesErrorInForeach(Lorg/eclipse/jdt/internal/compiler/ast/Expression;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)V

    goto/16 :goto_8

    :cond_16
    check-cast v9, Lorg/eclipse/jdt/internal/compiler/lookup/ParameterizedTypeBinding;

    iget-object p1, v9, Lorg/eclipse/jdt/internal/compiler/lookup/ParameterizedTypeBinding;->arguments:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    :goto_6
    array-length v6, p1

    if-eq v6, v4, :cond_17

    goto/16 :goto_8

    :cond_17
    iput v7, p0, Lorg/eclipse/jdt/internal/compiler/ast/ForeachStatement;->kind:I

    aget-object p1, p1, v5

    iput-object p1, p0, Lorg/eclipse/jdt/internal/compiler/ast/ForeachStatement;->collectionElementType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-virtual {p1, v0}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isCompatibleWith(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Z

    move-result p1

    if-nez p1, :cond_18

    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/ast/ForeachStatement;->scope:Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;

    iget-object v6, p0, Lorg/eclipse/jdt/internal/compiler/ast/ForeachStatement;->collectionElementType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-virtual {p1, v6, v0}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->isBoxingCompatibleWith(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Z

    move-result p1

    if-nez p1, :cond_18

    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/ast/ForeachStatement;->scope:Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object p1

    iget-object v6, p0, Lorg/eclipse/jdt/internal/compiler/ast/ForeachStatement;->collection:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    iget-object v9, p0, Lorg/eclipse/jdt/internal/compiler/ast/ForeachStatement;->collectionElementType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-virtual {p1, v6, v9, v0}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->notCompatibleTypesErrorInForeach(Lorg/eclipse/jdt/internal/compiler/ast/Expression;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)V

    goto :goto_7

    :cond_18
    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/ast/ForeachStatement;->collectionElementType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-virtual {p1, v0}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->needsUncheckedConversion(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Z

    move-result p1

    if-eqz p1, :cond_19

    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/ast/ForeachStatement;->scope:Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object p1

    iget-object v6, p0, Lorg/eclipse/jdt/internal/compiler/ast/ForeachStatement;->collection:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    iget-object v9, p0, Lorg/eclipse/jdt/internal/compiler/ast/ForeachStatement;->collectionElementType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-virtual {p1, v6, v9, v0}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->unsafeElementTypeConversion(Lorg/eclipse/jdt/internal/compiler/ast/Expression;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)V

    :cond_19
    :goto_7
    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/ast/ForeachStatement;->collectionElementType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    iget p1, p1, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->id:I

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isBaseType()Z

    move-result v6

    if-eqz v6, :cond_1b

    iget-object v6, p0, Lorg/eclipse/jdt/internal/compiler/ast/ForeachStatement;->collectionElementType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-virtual {v6}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isBaseType()Z

    move-result v6

    if-nez v6, :cond_1a

    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/ast/ForeachStatement;->scope:Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->environment()Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    move-result-object p1

    iget-object v6, p0, Lorg/eclipse/jdt/internal/compiler/ast/ForeachStatement;->collectionElementType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-virtual {p1, v6}, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->computeBoxingType(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object p1

    iget p1, p1, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->id:I

    iput v8, p0, Lorg/eclipse/jdt/internal/compiler/ast/ForeachStatement;->elementVariableImplicitWidening:I

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isBaseType()Z

    move-result v6

    if-eqz v6, :cond_1c

    iget v6, p0, Lorg/eclipse/jdt/internal/compiler/ast/ForeachStatement;->elementVariableImplicitWidening:I

    iget v0, v0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->id:I

    shl-int/lit8 v0, v0, 0x4

    add-int/2addr v0, p1

    or-int p1, v6, v0

    iput p1, p0, Lorg/eclipse/jdt/internal/compiler/ast/ForeachStatement;->elementVariableImplicitWidening:I

    goto :goto_8

    :cond_1a
    iget v0, v0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->id:I

    shl-int/lit8 v0, v0, 0x4

    add-int/2addr v0, p1

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/ForeachStatement;->elementVariableImplicitWidening:I

    goto :goto_8

    :cond_1b
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/ForeachStatement;->collectionElementType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isBaseType()Z

    move-result v0

    if-eqz v0, :cond_1c

    shl-int/lit8 v0, p1, 0x4

    or-int/lit16 v0, v0, 0x200

    or-int/2addr p1, v0

    iput p1, p0, Lorg/eclipse/jdt/internal/compiler/ast/ForeachStatement;->elementVariableImplicitWidening:I

    :cond_1c
    :goto_8
    iget p1, p0, Lorg/eclipse/jdt/internal/compiler/ast/ForeachStatement;->kind:I

    if-eqz p1, :cond_1f

    if-eq p1, v4, :cond_1e

    if-eq p1, v7, :cond_1e

    if-eqz v3, :cond_1d

    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/ast/ForeachStatement;->scope:Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object p1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/ForeachStatement;->collection:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    invoke-virtual {p1, v0}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->invalidTypeForCollectionTarget14(Lorg/eclipse/jdt/internal/compiler/ast/Expression;)V

    goto :goto_a

    :cond_1d
    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/ast/ForeachStatement;->scope:Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object p1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/ForeachStatement;->collection:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    invoke-virtual {p1, v0}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->invalidTypeForCollection(Lorg/eclipse/jdt/internal/compiler/ast/Expression;)V

    goto :goto_a

    :cond_1e
    new-instance p1, Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;

    sget-object v0, Lorg/eclipse/jdt/internal/compiler/ast/ForeachStatement;->SecretIteratorVariableName:[C

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/ast/ForeachStatement;->scope:Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->getJavaUtilIterator()Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move-result-object v1

    invoke-direct {p1, v0, v1, v5, v5}, Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;-><init>([CLorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;IZ)V

    iput-object p1, p0, Lorg/eclipse/jdt/internal/compiler/ast/ForeachStatement;->indexVariable:Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/ForeachStatement;->scope:Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;

    invoke-virtual {v0, p1}, Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;->addLocalVariable(Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;)V

    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/ast/ForeachStatement;->indexVariable:Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;

    sget-object v0, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->NotAConstant:Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    invoke-virtual {p1, v0}, Lorg/eclipse/jdt/internal/compiler/lookup/VariableBinding;->setConstant(Lorg/eclipse/jdt/internal/compiler/impl/Constant;)V

    goto :goto_a

    :cond_1f
    new-instance p1, Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;

    sget-object v0, Lorg/eclipse/jdt/internal/compiler/ast/ForeachStatement;->SecretIndexVariableName:[C

    sget-object v3, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->INT:Lorg/eclipse/jdt/internal/compiler/lookup/BaseTypeBinding;

    invoke-direct {p1, v0, v3, v5, v5}, Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;-><init>([CLorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;IZ)V

    iput-object p1, p0, Lorg/eclipse/jdt/internal/compiler/ast/ForeachStatement;->indexVariable:Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/ForeachStatement;->scope:Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;

    invoke-virtual {v0, p1}, Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;->addLocalVariable(Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;)V

    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/ast/ForeachStatement;->indexVariable:Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;

    sget-object v0, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->NotAConstant:Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    invoke-virtual {p1, v0}, Lorg/eclipse/jdt/internal/compiler/lookup/VariableBinding;->setConstant(Lorg/eclipse/jdt/internal/compiler/impl/Constant;)V

    new-instance p1, Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;

    sget-object v4, Lorg/eclipse/jdt/internal/compiler/ast/ForeachStatement;->SecretMaxVariableName:[C

    invoke-direct {p1, v4, v3, v5, v5}, Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;-><init>([CLorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;IZ)V

    iput-object p1, p0, Lorg/eclipse/jdt/internal/compiler/ast/ForeachStatement;->maxVariable:Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;

    iget-object v3, p0, Lorg/eclipse/jdt/internal/compiler/ast/ForeachStatement;->scope:Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;

    invoke-virtual {v3, p1}, Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;->addLocalVariable(Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;)V

    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/ast/ForeachStatement;->maxVariable:Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;

    invoke-virtual {p1, v0}, Lorg/eclipse/jdt/internal/compiler/lookup/VariableBinding;->setConstant(Lorg/eclipse/jdt/internal/compiler/impl/Constant;)V

    if-nez v2, :cond_20

    new-instance p1, Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;

    sget-object v2, Lorg/eclipse/jdt/internal/compiler/ast/ForeachStatement;->SecretCollectionVariableName:[C

    invoke-direct {p1, v2, v1, v5, v5}, Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;-><init>([CLorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;IZ)V

    iput-object p1, p0, Lorg/eclipse/jdt/internal/compiler/ast/ForeachStatement;->collectionVariable:Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;

    goto :goto_9

    :cond_20
    new-instance p1, Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;

    sget-object v1, Lorg/eclipse/jdt/internal/compiler/ast/ForeachStatement;->SecretCollectionVariableName:[C

    invoke-direct {p1, v1, v2, v5, v5}, Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;-><init>([CLorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;IZ)V

    iput-object p1, p0, Lorg/eclipse/jdt/internal/compiler/ast/ForeachStatement;->collectionVariable:Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;

    :goto_9
    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/ast/ForeachStatement;->scope:Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/ast/ForeachStatement;->collectionVariable:Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;

    invoke-virtual {p1, v1}, Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;->addLocalVariable(Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;)V

    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/ast/ForeachStatement;->collectionVariable:Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;

    invoke-virtual {p1, v0}, Lorg/eclipse/jdt/internal/compiler/lookup/VariableBinding;->setConstant(Lorg/eclipse/jdt/internal/compiler/impl/Constant;)V

    :cond_21
    :goto_a
    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/ast/ForeachStatement;->action:Lorg/eclipse/jdt/internal/compiler/ast/Statement;

    if-eqz p1, :cond_22

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/ForeachStatement;->scope:Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;

    invoke-virtual {p1, v0}, Lorg/eclipse/jdt/internal/compiler/ast/Statement;->resolve(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;)V

    :cond_22
    return-void
.end method

.method public traverse(Lorg/eclipse/jdt/internal/compiler/ASTVisitor;Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;)V
    .locals 2

    invoke-virtual {p1, p0, p2}, Lorg/eclipse/jdt/internal/compiler/ASTVisitor;->visit(Lorg/eclipse/jdt/internal/compiler/ast/ForeachStatement;Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/ForeachStatement;->elementVariable:Lorg/eclipse/jdt/internal/compiler/ast/LocalDeclaration;

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/ast/ForeachStatement;->scope:Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;

    invoke-virtual {v0, p1, v1}, Lorg/eclipse/jdt/internal/compiler/ast/LocalDeclaration;->traverse(Lorg/eclipse/jdt/internal/compiler/ASTVisitor;Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;)V

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/ForeachStatement;->collection:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/ast/ForeachStatement;->scope:Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;

    invoke-virtual {v0, p1, v1}, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->traverse(Lorg/eclipse/jdt/internal/compiler/ASTVisitor;Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;)V

    :cond_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/ForeachStatement;->action:Lorg/eclipse/jdt/internal/compiler/ast/Statement;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/ast/ForeachStatement;->scope:Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;

    invoke-virtual {v0, p1, v1}, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->traverse(Lorg/eclipse/jdt/internal/compiler/ASTVisitor;Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;)V

    :cond_1
    invoke-virtual {p1, p0, p2}, Lorg/eclipse/jdt/internal/compiler/ASTVisitor;->endVisit(Lorg/eclipse/jdt/internal/compiler/ast/ForeachStatement;Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;)V

    return-void
.end method
