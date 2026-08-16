.class public Lorg/eclipse/jdt/internal/compiler/ast/CombinedBinaryExpression;
.super Lorg/eclipse/jdt/internal/compiler/ast/BinaryExpression;
.source "SourceFile"


# static fields
.field public static final ARITY_MAX_MAX:I = 0xa0

.field public static final ARITY_MAX_MIN:I = 0x14

.field public static defaultArityMaxStartingValue:I = 0x14


# instance fields
.field public arity:I

.field public arityMax:I

.field public referencesTable:[Lorg/eclipse/jdt/internal/compiler/ast/BinaryExpression;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lorg/eclipse/jdt/internal/compiler/ast/CombinedBinaryExpression;)V
    .locals 1

    .line 3
    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/compiler/ast/BinaryExpression;-><init>(Lorg/eclipse/jdt/internal/compiler/ast/BinaryExpression;)V

    .line 4
    iget-object v0, p1, Lorg/eclipse/jdt/internal/compiler/ast/BinaryExpression;->left:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    iget p1, p1, Lorg/eclipse/jdt/internal/compiler/ast/CombinedBinaryExpression;->arity:I

    invoke-direct {p0, v0, p1}, Lorg/eclipse/jdt/internal/compiler/ast/CombinedBinaryExpression;->initArity(Lorg/eclipse/jdt/internal/compiler/ast/Expression;I)V

    return-void
.end method

.method public constructor <init>(Lorg/eclipse/jdt/internal/compiler/ast/Expression;Lorg/eclipse/jdt/internal/compiler/ast/Expression;II)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lorg/eclipse/jdt/internal/compiler/ast/BinaryExpression;-><init>(Lorg/eclipse/jdt/internal/compiler/ast/Expression;Lorg/eclipse/jdt/internal/compiler/ast/Expression;I)V

    .line 2
    invoke-direct {p0, p1, p4}, Lorg/eclipse/jdt/internal/compiler/ast/CombinedBinaryExpression;->initArity(Lorg/eclipse/jdt/internal/compiler/ast/Expression;I)V

    return-void
.end method

.method private initArity(Lorg/eclipse/jdt/internal/compiler/ast/Expression;I)V
    .locals 2

    iput p2, p0, Lorg/eclipse/jdt/internal/compiler/ast/CombinedBinaryExpression;->arity:I

    const/4 v0, 0x1

    if-le p2, v0, :cond_1

    new-array v1, p2, [Lorg/eclipse/jdt/internal/compiler/ast/BinaryExpression;

    iput-object v1, p0, Lorg/eclipse/jdt/internal/compiler/ast/CombinedBinaryExpression;->referencesTable:[Lorg/eclipse/jdt/internal/compiler/ast/BinaryExpression;

    sub-int/2addr p2, v0

    check-cast p1, Lorg/eclipse/jdt/internal/compiler/ast/BinaryExpression;

    aput-object p1, v1, p2

    :goto_0
    if-gtz p2, :cond_0

    goto :goto_1

    :cond_0
    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/ast/CombinedBinaryExpression;->referencesTable:[Lorg/eclipse/jdt/internal/compiler/ast/BinaryExpression;

    add-int/lit8 v0, p2, -0x1

    aget-object v1, p1, p2

    iget-object v1, v1, Lorg/eclipse/jdt/internal/compiler/ast/BinaryExpression;->left:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    check-cast v1, Lorg/eclipse/jdt/internal/compiler/ast/BinaryExpression;

    aput-object v1, p1, v0

    add-int/lit8 p2, p2, -0x1

    goto :goto_0

    :cond_1
    sget p1, Lorg/eclipse/jdt/internal/compiler/ast/CombinedBinaryExpression;->defaultArityMaxStartingValue:I

    iput p1, p0, Lorg/eclipse/jdt/internal/compiler/ast/CombinedBinaryExpression;->arityMax:I

    :goto_1
    return-void
.end method


# virtual methods
.method public analyseCode(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;Lorg/eclipse/jdt/internal/compiler/flow/FlowContext;Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;)Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;
    .locals 5

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/CombinedBinaryExpression;->referencesTable:[Lorg/eclipse/jdt/internal/compiler/ast/BinaryExpression;

    if-nez v0, :cond_0

    invoke-super {p0, p1, p2, p3}, Lorg/eclipse/jdt/internal/compiler/ast/BinaryExpression;->analyseCode(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;Lorg/eclipse/jdt/internal/compiler/flow/FlowContext;Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;)Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 v1, 0x0

    :try_start_0
    aget-object v0, v0, v1

    iget-object v2, v0, Lorg/eclipse/jdt/internal/compiler/ast/BinaryExpression;->left:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    invoke-virtual {v2, p1, p2, p3}, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->analyseCode(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;Lorg/eclipse/jdt/internal/compiler/flow/FlowContext;Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;)Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;

    move-result-object p3

    invoke-virtual {p3}, Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;->unconditionalInits()Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;

    move-result-object p3

    iget-object v2, v0, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->resolvedType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    iget v2, v2, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->id:I

    const/16 v3, 0xb

    if-eq v2, v3, :cond_1

    iget-object v0, v0, Lorg/eclipse/jdt/internal/compiler/ast/BinaryExpression;->left:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    invoke-virtual {v0, p1, p2, p3}, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->checkNPE(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;Lorg/eclipse/jdt/internal/compiler/flow/FlowContext;Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;)Z

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_1
    :goto_0
    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/CombinedBinaryExpression;->arity:I

    :goto_1
    if-lt v1, v0, :cond_3

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/BinaryExpression;->right:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    invoke-virtual {v0, p1, p2, p3}, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->analyseCode(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;Lorg/eclipse/jdt/internal/compiler/flow/FlowContext;Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;)Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;

    move-result-object p3

    invoke-virtual {p3}, Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;->unconditionalInits()Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;

    move-result-object p3

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->resolvedType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    iget v0, v0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->id:I

    if-eq v0, v3, :cond_2

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/BinaryExpression;->right:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    invoke-virtual {v0, p1, p2, p3}, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->checkNPE(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;Lorg/eclipse/jdt/internal/compiler/flow/FlowContext;Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/flow/FlowContext;->recordAbruptExit()V

    return-object p3

    :cond_3
    :try_start_1
    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/ast/CombinedBinaryExpression;->referencesTable:[Lorg/eclipse/jdt/internal/compiler/ast/BinaryExpression;

    aget-object v2, v2, v1

    iget-object v4, v2, Lorg/eclipse/jdt/internal/compiler/ast/BinaryExpression;->right:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    invoke-virtual {v4, p1, p2, p3}, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->analyseCode(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;Lorg/eclipse/jdt/internal/compiler/flow/FlowContext;Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;)Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;

    move-result-object p3

    invoke-virtual {p3}, Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;->unconditionalInits()Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;

    move-result-object p3

    iget-object v4, v2, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->resolvedType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    iget v4, v4, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->id:I

    if-eq v4, v3, :cond_4

    iget-object v2, v2, Lorg/eclipse/jdt/internal/compiler/ast/BinaryExpression;->right:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    invoke-virtual {v2, p1, p2, p3}, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->checkNPE(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;Lorg/eclipse/jdt/internal/compiler/flow/FlowContext;Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :goto_2
    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/flow/FlowContext;->recordAbruptExit()V

    throw p1
.end method

.method public generateOptimizedStringConcatenation(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;I)V
    .locals 5

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/CombinedBinaryExpression;->referencesTable:[Lorg/eclipse/jdt/internal/compiler/ast/BinaryExpression;

    if-nez v0, :cond_0

    invoke-super {p0, p1, p2, p3}, Lorg/eclipse/jdt/internal/compiler/ast/BinaryExpression;->generateOptimizedStringConcatenation(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;I)V

    goto/16 :goto_3

    :cond_0
    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->bits:I

    and-int/lit16 v2, v1, 0xfc0

    shr-int/lit8 v2, v2, 0x6

    const/16 v3, 0xe

    if-ne v2, v3, :cond_6

    and-int/lit8 v1, v1, 0xf

    const/16 v2, 0xb

    if-ne v1, v2, :cond_6

    iget-object p3, p0, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->constant:Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    sget-object v1, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->NotAConstant:Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    if-eq p3, v1, :cond_1

    iget p1, p0, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->implicitConversion:I

    invoke-virtual {p2, p3, p1}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->generateConstant(Lorg/eclipse/jdt/internal/compiler/impl/Constant;I)V

    iget p1, p0, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->implicitConversion:I

    and-int/lit8 p1, p1, 0xf

    invoke-virtual {p2, p1}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->invokeStringConcatenationAppendForType(I)V

    goto/16 :goto_3

    :cond_1
    const/4 p3, 0x0

    aget-object p3, v0, p3

    iget v0, p2, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->position:I

    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/ast/CombinedBinaryExpression;->arity:I

    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-gez v1, :cond_2

    goto :goto_1

    :cond_2
    iget-object p3, p0, Lorg/eclipse/jdt/internal/compiler/ast/CombinedBinaryExpression;->referencesTable:[Lorg/eclipse/jdt/internal/compiler/ast/BinaryExpression;

    aget-object p3, p3, v1

    iget-object v2, p3, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->constant:Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    sget-object v3, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->NotAConstant:Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    if-eq v2, v3, :cond_5

    iget v3, p3, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->implicitConversion:I

    invoke-virtual {p2, v2, v3}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->generateConstant(Lorg/eclipse/jdt/internal/compiler/impl/Constant;I)V

    iget v2, p3, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->implicitConversion:I

    and-int/lit8 v2, v2, 0xf

    invoke-virtual {p2, v2}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->invokeStringConcatenationAppendForType(I)V

    :goto_1
    add-int/lit8 v1, v1, 0x1

    if-nez v1, :cond_3

    iget-object p3, p3, Lorg/eclipse/jdt/internal/compiler/ast/BinaryExpression;->left:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    iget v2, p3, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->implicitConversion:I

    and-int/lit8 v2, v2, 0xf

    invoke-virtual {p3, p1, p2, v2}, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->generateOptimizedStringConcatenation(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;I)V

    :cond_3
    :goto_2
    iget p3, p0, Lorg/eclipse/jdt/internal/compiler/ast/CombinedBinaryExpression;->arity:I

    if-lt v1, p3, :cond_4

    iget-object p3, p0, Lorg/eclipse/jdt/internal/compiler/ast/BinaryExpression;->left:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    iget p3, p3, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceStart:I

    invoke-virtual {p2, v0, p3}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->recordPositionsFrom(II)V

    iget p3, p2, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->position:I

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/BinaryExpression;->right:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    iget v1, v0, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->implicitConversion:I

    and-int/lit8 v1, v1, 0xf

    invoke-virtual {v0, p1, p2, v1}, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->generateOptimizedStringConcatenation(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;I)V

    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/ast/BinaryExpression;->right:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    iget p1, p1, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceStart:I

    invoke-virtual {p2, p3, p1}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->recordPositionsFrom(II)V

    goto :goto_3

    :cond_4
    iget-object p3, p0, Lorg/eclipse/jdt/internal/compiler/ast/CombinedBinaryExpression;->referencesTable:[Lorg/eclipse/jdt/internal/compiler/ast/BinaryExpression;

    aget-object p3, p3, v1

    iget-object v2, p3, Lorg/eclipse/jdt/internal/compiler/ast/BinaryExpression;->left:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    iget v2, v2, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceStart:I

    invoke-virtual {p2, v0, v2}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->recordPositionsFrom(II)V

    iget v2, p2, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->position:I

    iget-object v3, p3, Lorg/eclipse/jdt/internal/compiler/ast/BinaryExpression;->right:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    iget v4, v3, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->implicitConversion:I

    and-int/lit8 v4, v4, 0xf

    invoke-virtual {v3, p1, p2, v4}, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->generateOptimizedStringConcatenation(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;I)V

    iget-object p3, p3, Lorg/eclipse/jdt/internal/compiler/ast/BinaryExpression;->right:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    iget p3, p3, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceStart:I

    invoke-virtual {p2, v2, p3}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->recordPositionsFrom(II)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_5
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_6
    invoke-super {p0, p1, p2, p3}, Lorg/eclipse/jdt/internal/compiler/ast/BinaryExpression;->generateOptimizedStringConcatenation(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;I)V

    :goto_3
    return-void
.end method

.method public generateOptimizedStringConcatenationCreation(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;I)V
    .locals 6

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/CombinedBinaryExpression;->referencesTable:[Lorg/eclipse/jdt/internal/compiler/ast/BinaryExpression;

    if-nez v0, :cond_0

    invoke-super {p0, p1, p2, p3}, Lorg/eclipse/jdt/internal/compiler/ast/BinaryExpression;->generateOptimizedStringConcatenationCreation(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;I)V

    goto/16 :goto_3

    :cond_0
    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->bits:I

    and-int/lit16 v2, v1, 0xfc0

    shr-int/lit8 v2, v2, 0x6

    const/16 v3, 0xe

    if-ne v2, v3, :cond_6

    and-int/lit8 v1, v1, 0xf

    const/16 v2, 0xb

    if-ne v1, v2, :cond_6

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->constant:Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    sget-object v4, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->NotAConstant:Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    if-ne v1, v4, :cond_6

    iget v1, p2, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->position:I

    iget p3, p0, Lorg/eclipse/jdt/internal/compiler/ast/CombinedBinaryExpression;->arity:I

    add-int/lit8 v4, p3, -0x1

    aget-object v0, v0, v4

    add-int/lit8 p3, p3, -0x1

    :goto_0
    if-gez p3, :cond_1

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/CombinedBinaryExpression;->referencesTable:[Lorg/eclipse/jdt/internal/compiler/ast/BinaryExpression;

    aget-object v0, v0, p3

    iget v4, v0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->bits:I

    and-int/lit16 v5, v4, 0xfc0

    shr-int/lit8 v5, v5, 0x6

    if-ne v5, v3, :cond_3

    and-int/lit8 v4, v4, 0xf

    if-ne v4, v2, :cond_3

    iget-object v4, v0, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->constant:Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    sget-object v5, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->NotAConstant:Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    if-eq v4, v5, :cond_2

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->newStringContatenation()V

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->dup()V

    iget-object v2, v0, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->constant:Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    invoke-virtual {v2}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->stringValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->ldc(Ljava/lang/String;)V

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->invokeStringConcatenationStringConstructor()V

    goto :goto_1

    :cond_2
    add-int/lit8 p3, p3, -0x1

    goto :goto_0

    :cond_3
    iget v2, v0, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->implicitConversion:I

    and-int/lit8 v2, v2, 0xf

    invoke-virtual {v0, p1, p2, v2}, Lorg/eclipse/jdt/internal/compiler/ast/BinaryExpression;->generateOptimizedStringConcatenationCreation(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;I)V

    :goto_1
    add-int/lit8 p3, p3, 0x1

    if-nez p3, :cond_4

    iget-object v0, v0, Lorg/eclipse/jdt/internal/compiler/ast/BinaryExpression;->left:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    iget v2, v0, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->implicitConversion:I

    and-int/lit8 v2, v2, 0xf

    invoke-virtual {v0, p1, p2, v2}, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->generateOptimizedStringConcatenationCreation(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;I)V

    :cond_4
    :goto_2
    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/CombinedBinaryExpression;->arity:I

    if-lt p3, v0, :cond_5

    iget-object p3, p0, Lorg/eclipse/jdt/internal/compiler/ast/BinaryExpression;->left:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    iget p3, p3, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceStart:I

    invoke-virtual {p2, v1, p3}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->recordPositionsFrom(II)V

    iget p3, p2, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->position:I

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/BinaryExpression;->right:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    iget v1, v0, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->implicitConversion:I

    and-int/lit8 v1, v1, 0xf

    invoke-virtual {v0, p1, p2, v1}, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->generateOptimizedStringConcatenation(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;I)V

    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/ast/BinaryExpression;->right:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    iget p1, p1, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceStart:I

    invoke-virtual {p2, p3, p1}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->recordPositionsFrom(II)V

    goto :goto_3

    :cond_5
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/CombinedBinaryExpression;->referencesTable:[Lorg/eclipse/jdt/internal/compiler/ast/BinaryExpression;

    aget-object v0, v0, p3

    iget-object v2, v0, Lorg/eclipse/jdt/internal/compiler/ast/BinaryExpression;->left:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    iget v2, v2, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceStart:I

    invoke-virtual {p2, v1, v2}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->recordPositionsFrom(II)V

    iget v2, p2, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->position:I

    iget-object v3, v0, Lorg/eclipse/jdt/internal/compiler/ast/BinaryExpression;->right:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    iget v4, v3, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->implicitConversion:I

    and-int/lit8 v4, v4, 0xf

    invoke-virtual {v3, p1, p2, v4}, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->generateOptimizedStringConcatenation(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;I)V

    iget-object v0, v0, Lorg/eclipse/jdt/internal/compiler/ast/BinaryExpression;->right:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    iget v0, v0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceStart:I

    invoke-virtual {p2, v2, v0}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->recordPositionsFrom(II)V

    add-int/lit8 p3, p3, 0x1

    goto :goto_2

    :cond_6
    invoke-super {p0, p1, p2, p3}, Lorg/eclipse/jdt/internal/compiler/ast/BinaryExpression;->generateOptimizedStringConcatenationCreation(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;I)V

    :goto_3
    return-void
.end method

.method public printExpressionNoParenthesis(ILjava/lang/StringBuffer;)Ljava/lang/StringBuffer;
    .locals 4

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/CombinedBinaryExpression;->referencesTable:[Lorg/eclipse/jdt/internal/compiler/ast/BinaryExpression;

    if-nez v0, :cond_0

    invoke-super {p0, p1, p2}, Lorg/eclipse/jdt/internal/compiler/ast/BinaryExpression;->printExpressionNoParenthesis(ILjava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/ast/OperatorExpression;->operatorToString()Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/ast/CombinedBinaryExpression;->arity:I

    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-gez v1, :cond_2

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/ast/CombinedBinaryExpression;->referencesTable:[Lorg/eclipse/jdt/internal/compiler/ast/BinaryExpression;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    iget-object v1, v1, Lorg/eclipse/jdt/internal/compiler/ast/BinaryExpression;->left:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    invoke-virtual {v1, p1, p2}, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->printExpression(ILjava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    move-result-object p1

    iget v3, p0, Lorg/eclipse/jdt/internal/compiler/ast/CombinedBinaryExpression;->arity:I

    move p2, v2

    :goto_1
    const/16 v1, 0x20

    if-lt p2, v3, :cond_1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    iget-object p2, p0, Lorg/eclipse/jdt/internal/compiler/ast/BinaryExpression;->right:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    invoke-virtual {p2, v2, p1}, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->printExpression(ILjava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    move-result-object p1

    return-object p1

    :cond_1
    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/ast/CombinedBinaryExpression;->referencesTable:[Lorg/eclipse/jdt/internal/compiler/ast/BinaryExpression;

    aget-object v1, v1, p2

    iget-object v1, v1, Lorg/eclipse/jdt/internal/compiler/ast/BinaryExpression;->right:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    invoke-virtual {v1, v2, p1}, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->printExpression(ILjava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    move-result-object p1

    const/16 v1, 0x29

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    :cond_2
    const/16 v2, 0x28

    invoke-virtual {p2, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    add-int/lit8 v1, v1, -0x1

    goto :goto_0
.end method

.method public resolveType(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;
    .locals 3

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/CombinedBinaryExpression;->referencesTable:[Lorg/eclipse/jdt/internal/compiler/ast/BinaryExpression;

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Lorg/eclipse/jdt/internal/compiler/ast/BinaryExpression;->resolveType(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 v1, 0x0

    aget-object v0, v0, v1

    iget-object v0, v0, Lorg/eclipse/jdt/internal/compiler/ast/BinaryExpression;->left:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    instance-of v2, v0, Lorg/eclipse/jdt/internal/compiler/ast/CastExpression;

    if-eqz v2, :cond_1

    iget v2, v0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->bits:I

    or-int/lit8 v2, v2, 0x20

    iput v2, v0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->bits:I

    :cond_1
    invoke-virtual {v0, p1}, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->resolveType(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/CombinedBinaryExpression;->arity:I

    :goto_0
    if-lt v1, v0, :cond_2

    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/internal/compiler/ast/BinaryExpression;->nonRecursiveResolveTypeUpwards(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;)V

    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->resolvedType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    return-object p1

    :cond_2
    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/ast/CombinedBinaryExpression;->referencesTable:[Lorg/eclipse/jdt/internal/compiler/ast/BinaryExpression;

    aget-object v2, v2, v1

    invoke-virtual {v2, p1}, Lorg/eclipse/jdt/internal/compiler/ast/BinaryExpression;->nonRecursiveResolveTypeUpwards(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public traverse(Lorg/eclipse/jdt/internal/compiler/ASTVisitor;Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;)V
    .locals 3

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/CombinedBinaryExpression;->referencesTable:[Lorg/eclipse/jdt/internal/compiler/ast/BinaryExpression;

    if-nez v0, :cond_0

    invoke-super {p0, p1, p2}, Lorg/eclipse/jdt/internal/compiler/ast/BinaryExpression;->traverse(Lorg/eclipse/jdt/internal/compiler/ASTVisitor;Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;)V

    goto :goto_4

    :cond_0
    invoke-virtual {p1, p0, p2}, Lorg/eclipse/jdt/internal/compiler/ASTVisitor;->visit(Lorg/eclipse/jdt/internal/compiler/ast/BinaryExpression;Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/CombinedBinaryExpression;->arity:I

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-gez v0, :cond_1

    goto :goto_1

    :cond_1
    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/ast/CombinedBinaryExpression;->referencesTable:[Lorg/eclipse/jdt/internal/compiler/ast/BinaryExpression;

    aget-object v1, v1, v0

    invoke-virtual {p1, v1, p2}, Lorg/eclipse/jdt/internal/compiler/ASTVisitor;->visit(Lorg/eclipse/jdt/internal/compiler/ast/BinaryExpression;Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;)Z

    move-result v1

    if-nez v1, :cond_4

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/ast/CombinedBinaryExpression;->referencesTable:[Lorg/eclipse/jdt/internal/compiler/ast/BinaryExpression;

    aget-object v1, v1, v0

    invoke-virtual {p1, v1, p2}, Lorg/eclipse/jdt/internal/compiler/ASTVisitor;->endVisit(Lorg/eclipse/jdt/internal/compiler/ast/BinaryExpression;Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;)V

    :goto_1
    add-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_2

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/ast/CombinedBinaryExpression;->referencesTable:[Lorg/eclipse/jdt/internal/compiler/ast/BinaryExpression;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    iget-object v1, v1, Lorg/eclipse/jdt/internal/compiler/ast/BinaryExpression;->left:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    invoke-virtual {v1, p1, p2}, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->traverse(Lorg/eclipse/jdt/internal/compiler/ASTVisitor;Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;)V

    :cond_2
    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/ast/CombinedBinaryExpression;->arity:I

    :goto_2
    if-lt v0, v1, :cond_3

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/BinaryExpression;->right:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    invoke-virtual {v0, p1, p2}, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->traverse(Lorg/eclipse/jdt/internal/compiler/ASTVisitor;Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;)V

    goto :goto_3

    :cond_3
    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/ast/CombinedBinaryExpression;->referencesTable:[Lorg/eclipse/jdt/internal/compiler/ast/BinaryExpression;

    aget-object v2, v2, v0

    iget-object v2, v2, Lorg/eclipse/jdt/internal/compiler/ast/BinaryExpression;->right:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    invoke-virtual {v2, p1, p2}, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->traverse(Lorg/eclipse/jdt/internal/compiler/ASTVisitor;Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;)V

    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/ast/CombinedBinaryExpression;->referencesTable:[Lorg/eclipse/jdt/internal/compiler/ast/BinaryExpression;

    aget-object v2, v2, v0

    invoke-virtual {p1, v2, p2}, Lorg/eclipse/jdt/internal/compiler/ASTVisitor;->endVisit(Lorg/eclipse/jdt/internal/compiler/ast/BinaryExpression;Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_4
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_5
    :goto_3
    invoke-virtual {p1, p0, p2}, Lorg/eclipse/jdt/internal/compiler/ASTVisitor;->endVisit(Lorg/eclipse/jdt/internal/compiler/ast/BinaryExpression;Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;)V

    :goto_4
    return-void
.end method

.method public tuneArityMax()V
    .locals 2

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/CombinedBinaryExpression;->arityMax:I

    const/16 v1, 0xa0

    if-ge v0, v1, :cond_0

    mul-int/lit8 v0, v0, 0x2

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/CombinedBinaryExpression;->arityMax:I

    :cond_0
    return-void
.end method
