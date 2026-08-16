.class public Lorg/eclipse/jdt/internal/compiler/ast/Clinit;
.super Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;
.source "SourceFile"


# static fields
.field private static ENUM_CONSTANTS_THRESHOLD:I = 0x7d0


# instance fields
.field private assertionSyntheticFieldBinding:Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;

.field private classLiteralSyntheticField:Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lorg/eclipse/jdt/internal/compiler/CompilationResult;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;-><init>(Lorg/eclipse/jdt/internal/compiler/CompilationResult;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lorg/eclipse/jdt/internal/compiler/ast/Clinit;->assertionSyntheticFieldBinding:Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;

    iput-object p1, p0, Lorg/eclipse/jdt/internal/compiler/ast/Clinit;->classLiteralSyntheticField:Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;

    const/4 p1, 0x0

    iput p1, p0, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->modifiers:I

    sget-object p1, Lorg/eclipse/jdt/internal/compiler/lookup/TypeConstants;->CLINIT:[C

    iput-object p1, p0, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->selector:[C

    return-void
.end method

.method private generateCode(Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;Lorg/eclipse/jdt/internal/compiler/ClassFile;I)V
    .locals 22

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    .line 19
    iget-object v2, v1, Lorg/eclipse/jdt/internal/compiler/ClassFile;->constantPool:Lorg/eclipse/jdt/internal/compiler/codegen/ConstantPool;

    .line 20
    iget v3, v2, Lorg/eclipse/jdt/internal/compiler/codegen/ConstantPool;->currentOffset:I

    .line 21
    iget v4, v2, Lorg/eclipse/jdt/internal/compiler/codegen/ConstantPool;->currentIndex:I

    .line 22
    invoke-virtual/range {p2 .. p2}, Lorg/eclipse/jdt/internal/compiler/ClassFile;->generateMethodInfoHeaderForClinit()V

    .line 23
    iget v5, v1, Lorg/eclipse/jdt/internal/compiler/ClassFile;->contentsOffset:I

    .line 24
    invoke-virtual/range {p2 .. p2}, Lorg/eclipse/jdt/internal/compiler/ClassFile;->generateCodeAttributeHeader()V

    .line 25
    iget-object v6, v1, Lorg/eclipse/jdt/internal/compiler/ClassFile;->codeStream:Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;

    .line 26
    invoke-virtual/range {p0 .. p1}, Lorg/eclipse/jdt/internal/compiler/ast/Clinit;->resolve(Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;)V

    .line 27
    invoke-virtual {v6, v0, v1}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->reset(Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;Lorg/eclipse/jdt/internal/compiler/ClassFile;)V

    move-object/from16 v7, p1

    .line 28
    iget-object v8, v7, Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;->referenceContext:Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;

    .line 29
    iget-object v9, v8, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->staticInitializerScope:Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;

    const/4 v10, 0x0

    .line 30
    invoke-virtual {v9, v10, v6}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;->computeLocalVariablePositions(ILorg/eclipse/jdt/internal/compiler/codegen/CodeStream;)V

    .line 31
    iget-object v11, v0, Lorg/eclipse/jdt/internal/compiler/ast/Clinit;->assertionSyntheticFieldBinding:Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;

    const/16 v12, -0x4d

    const/4 v13, 0x0

    const/4 v14, 0x1

    if-eqz v11, :cond_0

    .line 32
    invoke-virtual/range {p1 .. p1}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->outerMostClassScope()Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;

    move-result-object v11

    invoke-virtual {v11}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->enclosingSourceType()Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;

    move-result-object v11

    .line 33
    iget-object v15, v0, Lorg/eclipse/jdt/internal/compiler/ast/Clinit;->classLiteralSyntheticField:Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;

    .line 34
    invoke-virtual {v6, v11, v15}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->generateClassLiteralAccessForType(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;)V

    .line 35
    invoke-virtual {v6}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->invokeJavaLangClassDesiredAssertionStatus()V

    .line 36
    new-instance v11, Lorg/eclipse/jdt/internal/compiler/codegen/BranchLabel;

    invoke-direct {v11, v6}, Lorg/eclipse/jdt/internal/compiler/codegen/BranchLabel;-><init>(Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;)V

    .line 37
    invoke-virtual {v6, v11}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->ifne(Lorg/eclipse/jdt/internal/compiler/codegen/BranchLabel;)V

    .line 38
    invoke-virtual {v6}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->iconst_1()V

    .line 39
    new-instance v15, Lorg/eclipse/jdt/internal/compiler/codegen/BranchLabel;

    invoke-direct {v15, v6}, Lorg/eclipse/jdt/internal/compiler/codegen/BranchLabel;-><init>(Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;)V

    .line 40
    invoke-virtual {v6, v14}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->decrStackSize(I)V

    .line 41
    invoke-virtual {v6, v15}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->goto_(Lorg/eclipse/jdt/internal/compiler/codegen/BranchLabel;)V

    .line 42
    invoke-virtual {v11}, Lorg/eclipse/jdt/internal/compiler/codegen/BranchLabel;->place()V

    .line 43
    invoke-virtual {v6}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->iconst_0()V

    .line 44
    invoke-virtual {v15}, Lorg/eclipse/jdt/internal/compiler/codegen/BranchLabel;->place()V

    .line 45
    iget-object v11, v0, Lorg/eclipse/jdt/internal/compiler/ast/Clinit;->assertionSyntheticFieldBinding:Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;

    invoke-virtual {v6, v12, v11, v13}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->fieldAccess(BLorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)V

    .line 46
    :cond_0
    invoke-virtual/range {p1 .. p1}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->compilerOptions()Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;

    move-result-object v7

    iget-wide v10, v7, Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;->complianceLevel:J

    const-wide/32 v16, 0x350000

    cmp-long v7, v10, v16

    if-ltz v7, :cond_1

    move v7, v14

    goto :goto_0

    :cond_1
    const/4 v7, 0x0

    .line 47
    :goto_0
    iget-object v10, v8, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->fields:[Lorg/eclipse/jdt/internal/compiler/ast/FieldDeclaration;

    .line 48
    iget v11, v8, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->modifiers:I

    invoke-static {v11}, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->kind(I)I

    move-result v11

    const/4 v15, 0x3

    if-ne v11, v15, :cond_16

    .line 49
    iget v11, v8, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->enumConstantsCounter:I

    if-nez v7, :cond_7

    .line 50
    sget v7, Lorg/eclipse/jdt/internal/compiler/ast/Clinit;->ENUM_CONSTANTS_THRESHOLD:I

    if-le v11, v7, :cond_7

    if-eqz v10, :cond_b

    .line 51
    array-length v7, v10

    const/4 v12, 0x0

    const/4 v14, -0x1

    const/16 v18, 0x0

    const/16 v19, 0x0

    :goto_1
    const/16 v15, -0x48

    if-lt v12, v7, :cond_2

    if-eqz v18, :cond_c

    .line 52
    iget-object v12, v8, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;

    invoke-virtual {v12, v14, v7}, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->addSyntheticMethodForEnumInitialization(II)Lorg/eclipse/jdt/internal/compiler/lookup/SyntheticMethodBinding;

    move-result-object v7

    .line 53
    invoke-virtual {v6, v15, v7, v13}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->invoke(BLorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)V

    goto :goto_5

    .line 54
    :cond_2
    aget-object v20, v10, v12

    .line 55
    invoke-virtual/range {v20 .. v20}, Lorg/eclipse/jdt/internal/compiler/ast/FieldDeclaration;->isStatic()Z

    move-result v21

    if-eqz v21, :cond_6

    .line 56
    invoke-virtual/range {v20 .. v20}, Lorg/eclipse/jdt/internal/compiler/ast/FieldDeclaration;->getKind()I

    move-result v13

    const/4 v15, 0x3

    if-ne v13, v15, :cond_5

    const/4 v13, -0x1

    if-ne v14, v13, :cond_3

    move v14, v12

    :cond_3
    add-int/lit8 v13, v18, 0x1

    .line 57
    sget v15, Lorg/eclipse/jdt/internal/compiler/ast/Clinit;->ENUM_CONSTANTS_THRESHOLD:I

    if-le v13, v15, :cond_4

    .line 58
    iget-object v13, v8, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;

    invoke-virtual {v13, v14, v12}, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->addSyntheticMethodForEnumInitialization(II)Lorg/eclipse/jdt/internal/compiler/lookup/SyntheticMethodBinding;

    move-result-object v13

    const/4 v14, 0x0

    const/16 v15, -0x48

    .line 59
    invoke-virtual {v6, v15, v13, v14}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->invoke(BLorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)V

    move v14, v12

    const/16 v18, 0x1

    goto :goto_2

    :cond_4
    move/from16 v18, v13

    goto :goto_2

    :cond_5
    add-int/lit8 v19, v19, 0x1

    :cond_6
    :goto_2
    add-int/lit8 v12, v12, 0x1

    const/4 v13, 0x0

    goto :goto_1

    :cond_7
    if-eqz v10, :cond_b

    .line 60
    array-length v7, v10

    const/4 v12, 0x0

    const/16 v19, 0x0

    :goto_3
    if-lt v12, v7, :cond_8

    goto :goto_5

    .line 61
    :cond_8
    aget-object v13, v10, v12

    .line 62
    invoke-virtual {v13}, Lorg/eclipse/jdt/internal/compiler/ast/FieldDeclaration;->isStatic()Z

    move-result v14

    if-eqz v14, :cond_a

    .line 63
    invoke-virtual {v13}, Lorg/eclipse/jdt/internal/compiler/ast/FieldDeclaration;->getKind()I

    move-result v14

    const/4 v15, 0x3

    if-ne v14, v15, :cond_9

    .line 64
    invoke-virtual {v13, v9, v6}, Lorg/eclipse/jdt/internal/compiler/ast/FieldDeclaration;->generateCode(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;)V

    goto :goto_4

    :cond_9
    add-int/lit8 v19, v19, 0x1

    :cond_a
    :goto_4
    add-int/lit8 v12, v12, 0x1

    goto :goto_3

    :cond_b
    const/16 v19, 0x0

    .line 65
    :cond_c
    :goto_5
    invoke-virtual {v6, v11}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->generateInlinedValue(I)V

    .line 66
    iget-object v7, v8, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;

    invoke-virtual {v6, v7}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->anewarray(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)V

    if-lez v11, :cond_d

    if-eqz v10, :cond_d

    .line 67
    array-length v7, v10

    const/4 v11, 0x0

    :goto_6
    if-lt v11, v7, :cond_e

    :cond_d
    const/4 v15, 0x0

    goto :goto_8

    .line 68
    :cond_e
    aget-object v12, v10, v11

    .line 69
    invoke-virtual {v12}, Lorg/eclipse/jdt/internal/compiler/ast/FieldDeclaration;->getKind()I

    move-result v13

    const/4 v14, 0x3

    if-ne v13, v14, :cond_f

    .line 70
    invoke-virtual {v6}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->dup()V

    .line 71
    iget-object v13, v12, Lorg/eclipse/jdt/internal/compiler/ast/FieldDeclaration;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;

    iget v13, v13, Lorg/eclipse/jdt/internal/compiler/lookup/VariableBinding;->id:I

    invoke-virtual {v6, v13}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->generateInlinedValue(I)V

    const/16 v13, -0x4e

    .line 72
    iget-object v12, v12, Lorg/eclipse/jdt/internal/compiler/ast/FieldDeclaration;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;

    const/4 v15, 0x0

    invoke-virtual {v6, v13, v12, v15}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->fieldAccess(BLorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)V

    .line 73
    invoke-virtual {v6}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->aastore()V

    goto :goto_7

    :cond_f
    const/4 v15, 0x0

    :goto_7
    add-int/lit8 v11, v11, 0x1

    goto :goto_6

    .line 74
    :goto_8
    iget-object v7, v8, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->enumValuesSyntheticfield:Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;

    const/16 v11, -0x4d

    invoke-virtual {v6, v11, v7, v15}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->fieldAccess(BLorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)V

    if-eqz v19, :cond_15

    .line 75
    array-length v7, v10

    const/4 v11, 0x0

    const/4 v13, -0x1

    :goto_9
    if-ge v11, v7, :cond_1d

    if-gez v19, :cond_10

    goto/16 :goto_e

    .line 76
    :cond_10
    aget-object v12, v10, v11

    .line 77
    invoke-virtual {v12}, Lorg/eclipse/jdt/internal/compiler/ast/FieldDeclaration;->getKind()I

    move-result v14

    const/4 v15, 0x1

    if-eq v14, v15, :cond_13

    const/4 v15, 0x2

    if-eq v14, v15, :cond_11

    goto :goto_a

    .line 78
    :cond_11
    invoke-virtual {v12}, Lorg/eclipse/jdt/internal/compiler/ast/FieldDeclaration;->isStatic()Z

    move-result v14

    if-nez v14, :cond_12

    goto :goto_a

    :cond_12
    add-int/lit8 v19, v19, -0x1

    .line 79
    move-object v13, v12

    check-cast v13, Lorg/eclipse/jdt/internal/compiler/ast/Initializer;

    iget-object v13, v13, Lorg/eclipse/jdt/internal/compiler/ast/Initializer;->block:Lorg/eclipse/jdt/internal/compiler/ast/Block;

    iget v13, v13, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceEnd:I

    .line 80
    invoke-virtual {v12, v9, v6}, Lorg/eclipse/jdt/internal/compiler/ast/FieldDeclaration;->generateCode(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;)V

    goto :goto_a

    .line 81
    :cond_13
    iget-object v14, v12, Lorg/eclipse/jdt/internal/compiler/ast/FieldDeclaration;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;

    invoke-virtual {v14}, Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;->isStatic()Z

    move-result v14

    if-nez v14, :cond_14

    goto :goto_a

    :cond_14
    add-int/lit8 v19, v19, -0x1

    .line 82
    iget v13, v12, Lorg/eclipse/jdt/internal/compiler/ast/AbstractVariableDeclaration;->declarationEnd:I

    .line 83
    invoke-virtual {v12, v9, v6}, Lorg/eclipse/jdt/internal/compiler/ast/FieldDeclaration;->generateCode(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;)V

    :goto_a
    add-int/lit8 v11, v11, 0x1

    goto :goto_9

    :cond_15
    const/4 v13, -0x1

    goto :goto_e

    :cond_16
    if-eqz v10, :cond_1c

    .line 84
    array-length v11, v10

    const/4 v12, 0x0

    const/4 v13, -0x1

    :goto_b
    if-lt v12, v11, :cond_17

    goto :goto_d

    .line 85
    :cond_17
    aget-object v14, v10, v12

    .line 86
    invoke-virtual {v14}, Lorg/eclipse/jdt/internal/compiler/ast/FieldDeclaration;->getKind()I

    move-result v15

    move-object/from16 v18, v10

    const/4 v10, 0x1

    if-eq v15, v10, :cond_1a

    const/4 v10, 0x2

    if-eq v15, v10, :cond_18

    goto :goto_c

    .line 87
    :cond_18
    invoke-virtual {v14}, Lorg/eclipse/jdt/internal/compiler/ast/FieldDeclaration;->isStatic()Z

    move-result v15

    if-nez v15, :cond_19

    goto :goto_c

    .line 88
    :cond_19
    move-object v13, v14

    check-cast v13, Lorg/eclipse/jdt/internal/compiler/ast/Initializer;

    iget-object v13, v13, Lorg/eclipse/jdt/internal/compiler/ast/Initializer;->block:Lorg/eclipse/jdt/internal/compiler/ast/Block;

    iget v13, v13, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceEnd:I

    .line 89
    invoke-virtual {v14, v9, v6}, Lorg/eclipse/jdt/internal/compiler/ast/FieldDeclaration;->generateCode(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;)V

    goto :goto_c

    :cond_1a
    const/4 v10, 0x2

    .line 90
    iget-object v15, v14, Lorg/eclipse/jdt/internal/compiler/ast/FieldDeclaration;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;

    invoke-virtual {v15}, Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;->isStatic()Z

    move-result v15

    if-nez v15, :cond_1b

    goto :goto_c

    .line 91
    :cond_1b
    iget v13, v14, Lorg/eclipse/jdt/internal/compiler/ast/AbstractVariableDeclaration;->declarationEnd:I

    .line 92
    invoke-virtual {v14, v9, v6}, Lorg/eclipse/jdt/internal/compiler/ast/FieldDeclaration;->generateCode(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;)V

    :goto_c
    add-int/lit8 v12, v12, 0x1

    move-object/from16 v10, v18

    goto :goto_b

    :cond_1c
    const/4 v13, -0x1

    :goto_d
    if-eqz v7, :cond_1d

    .line 93
    iget-object v7, v8, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;

    invoke-virtual {v7, v6}, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->generateSyntheticFinalFieldInitialization(Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;)V

    .line 94
    :cond_1d
    :goto_e
    iget v7, v6, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->position:I

    if-nez v7, :cond_1e

    move/from16 v9, p3

    .line 95
    iput v9, v1, Lorg/eclipse/jdt/internal/compiler/ClassFile;->contentsOffset:I

    .line 96
    iget v5, v1, Lorg/eclipse/jdt/internal/compiler/ClassFile;->methodCount:I

    const/4 v6, 0x1

    sub-int/2addr v5, v6

    iput v5, v1, Lorg/eclipse/jdt/internal/compiler/ClassFile;->methodCount:I

    .line 97
    invoke-virtual {v2, v4, v3}, Lorg/eclipse/jdt/internal/compiler/codegen/ConstantPool;->resetForClinit(II)V

    goto :goto_f

    .line 98
    :cond_1e
    iget v2, v0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->bits:I

    and-int/lit8 v2, v2, 0x40

    if-eqz v2, :cond_1f

    .line 99
    invoke-virtual {v6}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->return_()V

    const/4 v2, -0x1

    if-eq v13, v2, :cond_1f

    .line 100
    invoke-virtual {v6, v7, v13}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->recordPositionsFrom(II)V

    .line 101
    :cond_1f
    iget v2, v8, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceStart:I

    const/4 v3, 0x0

    invoke-virtual {v6, v3, v2}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->recordPositionsFrom(II)V

    .line 102
    invoke-virtual {v1, v5}, Lorg/eclipse/jdt/internal/compiler/ClassFile;->completeCodeAttributeForClinit(I)V

    :goto_f
    return-void
.end method


# virtual methods
.method public analyseCode(Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;Lorg/eclipse/jdt/internal/compiler/flow/InitializationFlowContext;Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;)V
    .locals 8

    iget-boolean p1, p0, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->ignoreFurtherInvestigation:Z

    if-eqz p1, :cond_0

    return-void

    :cond_0
    const/4 p1, 0x1

    :try_start_0
    new-instance v7, Lorg/eclipse/jdt/internal/compiler/flow/ExceptionHandlingFlowContext;

    iget-object v1, p2, Lorg/eclipse/jdt/internal/compiler/flow/FlowContext;->parent:Lorg/eclipse/jdt/internal/compiler/flow/FlowContext;

    sget-object v3, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->NO_EXCEPTIONS:[Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    iget-object v5, p0, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->scope:Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;

    sget-object v6, Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;->DEAD_END:Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;

    move-object v0, v7

    move-object v2, p0

    move-object v4, p2

    invoke-direct/range {v0 .. v6}, Lorg/eclipse/jdt/internal/compiler/flow/ExceptionHandlingFlowContext;-><init>(Lorg/eclipse/jdt/internal/compiler/flow/FlowContext;Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;[Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;Lorg/eclipse/jdt/internal/compiler/flow/FlowContext;Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;)V

    iget v0, p3, Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;->tagBits:I

    and-int/2addr v0, p1

    if-nez v0, :cond_1

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->bits:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->bits:I

    :cond_1
    iget-object v0, p2, Lorg/eclipse/jdt/internal/compiler/flow/ExceptionHandlingFlowContext;->initsOnReturn:Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;

    invoke-virtual {p3, v0}, Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;->mergedWith(Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;)Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;

    move-result-object p3

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->scope:Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->enclosingSourceType()Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;

    move-result-object v0

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->fields()[Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-lt v2, v1, :cond_2

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->scope:Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;

    invoke-virtual {p2, v0, v7, p3}, Lorg/eclipse/jdt/internal/compiler/flow/InitializationFlowContext;->checkInitializerExceptions(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;Lorg/eclipse/jdt/internal/compiler/flow/FlowContext;Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;)V

    goto :goto_2

    :cond_2
    aget-object v3, v0, v2

    invoke-virtual {v3}, Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;->isStatic()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-virtual {p3, v3}, Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;->isDefinitelyAssigned(Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;)Z

    move-result v4

    if-nez v4, :cond_4

    invoke-virtual {v3}, Lorg/eclipse/jdt/internal/compiler/lookup/VariableBinding;->isFinal()Z

    move-result v4

    if-eqz v4, :cond_3

    iget-object v4, p0, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->scope:Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;

    invoke-virtual {v4}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object v4

    iget-object v5, p0, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->scope:Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;

    invoke-virtual {v5}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;->referenceType()Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;

    move-result-object v5

    invoke-virtual {v3}, Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;->original()Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;

    move-result-object v6

    invoke-virtual {v5, v6}, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->declarationOf(Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;)Lorg/eclipse/jdt/internal/compiler/ast/FieldDeclaration;

    move-result-object v5

    invoke-virtual {v4, v3, v5}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->uninitializedBlankFinalField(Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;)V

    goto :goto_1

    :cond_3
    invoke-virtual {v3}, Lorg/eclipse/jdt/internal/compiler/lookup/VariableBinding;->isNonNull()Z

    move-result v4

    if-eqz v4, :cond_4

    iget-object v4, p0, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->scope:Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;

    invoke-virtual {v4}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object v4

    iget-object v5, p0, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->scope:Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;

    invoke-virtual {v5}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;->referenceType()Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;

    move-result-object v5

    invoke-virtual {v3}, Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;->original()Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;

    move-result-object v6

    invoke-virtual {v5, v6}, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->declarationOf(Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;)Lorg/eclipse/jdt/internal/compiler/ast/FieldDeclaration;

    move-result-object v5

    invoke-virtual {v4, v3, v5}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->uninitializedNonNullField(Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;)V
    :try_end_0
    .catch Lorg/eclipse/jdt/internal/compiler/problem/AbortMethod; {:try_start_0 .. :try_end_0} :catch_0

    :cond_4
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :catch_0
    iput-boolean p1, p0, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->ignoreFurtherInvestigation:Z

    :goto_2
    return-void
.end method

.method public generateCode(Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;Lorg/eclipse/jdt/internal/compiler/ClassFile;)V
    .locals 7

    .line 1
    iget-boolean v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->ignoreFurtherInvestigation:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 2
    iget-object v1, p1, Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;->referenceContext:Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;

    if-eqz v1, :cond_1

    .line 3
    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->compilationResult()Lorg/eclipse/jdt/internal/compiler/CompilationResult;

    move-result-object v1

    .line 4
    iget v2, v1, Lorg/eclipse/jdt/internal/compiler/CompilationResult;->problemCount:I

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    move v2, v0

    :goto_0
    move v3, v0

    .line 5
    :cond_2
    :try_start_0
    iget v3, p2, Lorg/eclipse/jdt/internal/compiler/ClassFile;->contentsOffset:I

    .line 6
    invoke-direct {p0, p1, p2, v3}, Lorg/eclipse/jdt/internal/compiler/ast/Clinit;->generateCode(Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;Lorg/eclipse/jdt/internal/compiler/ClassFile;I)V
    :try_end_0
    .catch Lorg/eclipse/jdt/internal/compiler/problem/AbortMethod; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    move v6, v0

    goto :goto_2

    :catch_0
    move-exception v4

    .line 7
    iget-object v4, v4, Lorg/eclipse/jdt/internal/compiler/problem/AbortCompilation;->compilationResult:Lorg/eclipse/jdt/internal/compiler/CompilationResult;

    sget-object v5, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->RESTART_IN_WIDE_MODE:Lorg/eclipse/jdt/internal/compiler/CompilationResult;

    const/4 v6, 0x1

    if-ne v4, v5, :cond_3

    .line 8
    iput v3, p2, Lorg/eclipse/jdt/internal/compiler/ClassFile;->contentsOffset:I

    .line 9
    iget v4, p2, Lorg/eclipse/jdt/internal/compiler/ClassFile;->methodCount:I

    sub-int/2addr v4, v6

    iput v4, p2, Lorg/eclipse/jdt/internal/compiler/ClassFile;->methodCount:I

    .line 10
    iget-object v4, p2, Lorg/eclipse/jdt/internal/compiler/ClassFile;->codeStream:Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;

    invoke-virtual {v4}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->resetInWideMode()V

    if-eqz v1, :cond_5

    .line 11
    iput v2, v1, Lorg/eclipse/jdt/internal/compiler/CompilationResult;->problemCount:I

    goto :goto_2

    .line 12
    :cond_3
    sget-object v5, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->RESTART_CODE_GEN_FOR_UNUSED_LOCALS_MODE:Lorg/eclipse/jdt/internal/compiler/CompilationResult;

    if-ne v4, v5, :cond_4

    .line 13
    iput v3, p2, Lorg/eclipse/jdt/internal/compiler/ClassFile;->contentsOffset:I

    .line 14
    iget v4, p2, Lorg/eclipse/jdt/internal/compiler/ClassFile;->methodCount:I

    sub-int/2addr v4, v6

    iput v4, p2, Lorg/eclipse/jdt/internal/compiler/ClassFile;->methodCount:I

    .line 15
    iget-object v4, p2, Lorg/eclipse/jdt/internal/compiler/ClassFile;->codeStream:Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;

    invoke-virtual {v4}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->resetForCodeGenUnusedLocals()V

    if-eqz v1, :cond_5

    .line 16
    iput v2, v1, Lorg/eclipse/jdt/internal/compiler/CompilationResult;->problemCount:I

    goto :goto_2

    .line 17
    :cond_4
    iput v3, p2, Lorg/eclipse/jdt/internal/compiler/ClassFile;->contentsOffset:I

    .line 18
    iget v4, p2, Lorg/eclipse/jdt/internal/compiler/ClassFile;->methodCount:I

    sub-int/2addr v4, v6

    iput v4, p2, Lorg/eclipse/jdt/internal/compiler/ClassFile;->methodCount:I

    goto :goto_1

    :cond_5
    :goto_2
    if-nez v6, :cond_2

    return-void
.end method

.method public isClinit()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isInitializationMethod()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isStatic()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public parseStatements(Lorg/eclipse/jdt/internal/compiler/parser/Parser;Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;)V
    .locals 0

    return-void
.end method

.method public print(ILjava/lang/StringBuffer;)Ljava/lang/StringBuffer;
    .locals 2

    invoke-static {p1, p2}, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->printIndent(ILjava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "<clinit>()"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 p1, p1, 0x1

    invoke-virtual {p0, p1, p2}, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->printBody(ILjava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    return-object p2
.end method

.method public resolve(Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;)V
    .locals 3

    new-instance v0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;

    iget-object v1, p1, Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;->referenceContext:Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;

    const/4 v2, 0x1

    invoke-direct {v0, p1, v1, v2}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;-><init>(Lorg/eclipse/jdt/internal/compiler/lookup/Scope;Lorg/eclipse/jdt/internal/compiler/impl/ReferenceContext;Z)V

    iput-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->scope:Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;

    return-void
.end method

.method public setAssertionSupport(Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;Z)V
    .locals 0

    iput-object p1, p0, Lorg/eclipse/jdt/internal/compiler/ast/Clinit;->assertionSyntheticFieldBinding:Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;

    if-eqz p2, :cond_0

    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->scope:Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->outerMostClassScope()Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;

    move-result-object p1

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->enclosingSourceType()Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;

    move-result-object p1

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->isInterface()Z

    move-result p2

    if-nez p2, :cond_0

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isBaseType()Z

    move-result p2

    if-nez p2, :cond_0

    iget-object p2, p0, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->scope:Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;

    invoke-virtual {p1, p1, p2}, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->addSyntheticFieldForClassLiteral(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;)Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;

    move-result-object p1

    iput-object p1, p0, Lorg/eclipse/jdt/internal/compiler/ast/Clinit;->classLiteralSyntheticField:Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;

    :cond_0
    return-void
.end method

.method public traverse(Lorg/eclipse/jdt/internal/compiler/ASTVisitor;Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;)V
    .locals 0

    invoke-virtual {p1, p0, p2}, Lorg/eclipse/jdt/internal/compiler/ASTVisitor;->visit(Lorg/eclipse/jdt/internal/compiler/ast/Clinit;Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;)Z

    invoke-virtual {p1, p0, p2}, Lorg/eclipse/jdt/internal/compiler/ASTVisitor;->endVisit(Lorg/eclipse/jdt/internal/compiler/ast/Clinit;Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;)V

    return-void
.end method
