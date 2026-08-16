.class public Lorg/eclipse/jdt/internal/compiler/ast/ConstructorDeclaration;
.super Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;
.source "SourceFile"


# instance fields
.field public constructorCall:Lorg/eclipse/jdt/internal/compiler/ast/ExplicitConstructorCall;

.field public typeParameters:[Lorg/eclipse/jdt/internal/compiler/ast/TypeParameter;


# direct methods
.method public constructor <init>(Lorg/eclipse/jdt/internal/compiler/CompilationResult;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;-><init>(Lorg/eclipse/jdt/internal/compiler/CompilationResult;)V

    return-void
.end method

.method private internalGenerateCode(Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;Lorg/eclipse/jdt/internal/compiler/ClassFile;)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    iget-object v2, v0, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    invoke-virtual {v1, v2}, Lorg/eclipse/jdt/internal/compiler/ClassFile;->generateMethodInfoHeader(Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;)V

    iget v2, v1, Lorg/eclipse/jdt/internal/compiler/ClassFile;->contentsOffset:I

    iget-object v3, v0, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    invoke-virtual {v1, v3}, Lorg/eclipse/jdt/internal/compiler/ClassFile;->generateMethodInfoAttributes(Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;)I

    move-result v3

    iget-object v4, v0, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    invoke-virtual {v4}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->isNative()Z

    move-result v4

    if-nez v4, :cond_13

    iget-object v4, v0, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    invoke-virtual {v4}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->isAbstract()Z

    move-result v4

    if-nez v4, :cond_13

    move-object/from16 v4, p1

    iget-object v4, v4, Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;->referenceContext:Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;

    iget v5, v1, Lorg/eclipse/jdt/internal/compiler/ClassFile;->contentsOffset:I

    invoke-virtual/range {p2 .. p2}, Lorg/eclipse/jdt/internal/compiler/ClassFile;->generateCodeAttributeHeader()V

    iget-object v6, v1, Lorg/eclipse/jdt/internal/compiler/ClassFile;->codeStream:Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;

    invoke-virtual {v6, v0, v1}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->reset(Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;Lorg/eclipse/jdt/internal/compiler/ClassFile;)V

    iget-object v7, v0, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    iget-object v7, v7, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->declaringClass:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    invoke-virtual {v7}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->isEnum()Z

    move-result v8

    const/4 v9, 0x0

    if-eqz v8, :cond_0

    const/4 v8, 0x2

    goto :goto_0

    :cond_0
    move v8, v9

    :goto_0
    add-int/lit8 v10, v8, 0x1

    invoke-virtual {v7}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isNestedType()Z

    move-result v11

    const/4 v12, 0x1

    if-eqz v11, :cond_1

    iget-object v11, v0, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->scope:Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;

    invoke-virtual {v7}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->syntheticOuterLocalVariables()[Lorg/eclipse/jdt/internal/compiler/lookup/SyntheticArgumentBinding;

    move-result-object v13

    iput-object v13, v11, Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;->extraSyntheticArguments:[Lorg/eclipse/jdt/internal/compiler/lookup/SyntheticArgumentBinding;

    iget-object v11, v0, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->scope:Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;

    invoke-virtual {v7}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->getEnclosingInstancesSlotSize()I

    move-result v13

    add-int/2addr v13, v12

    add-int/2addr v13, v8

    invoke-virtual {v11, v13, v6}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;->computeLocalVariablePositions(ILorg/eclipse/jdt/internal/compiler/codegen/CodeStream;)V

    invoke-virtual {v7}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->getEnclosingInstancesSlotSize()I

    move-result v8

    add-int/2addr v10, v8

    invoke-virtual {v7}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->getOuterLocalVariablesSlotSize()I

    move-result v8

    add-int/2addr v10, v8

    goto :goto_1

    :cond_1
    iget-object v8, v0, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->scope:Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;

    invoke-virtual {v8, v10, v6}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;->computeLocalVariablePositions(ILorg/eclipse/jdt/internal/compiler/codegen/CodeStream;)V

    :goto_1
    iget-object v8, v0, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->arguments:[Lorg/eclipse/jdt/internal/compiler/ast/Argument;

    if-eqz v8, :cond_4

    array-length v8, v8

    move v11, v9

    :goto_2
    if-lt v11, v8, :cond_2

    goto :goto_4

    :cond_2
    iget-object v13, v0, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->arguments:[Lorg/eclipse/jdt/internal/compiler/ast/Argument;

    aget-object v13, v13, v11

    iget-object v13, v13, Lorg/eclipse/jdt/internal/compiler/ast/LocalDeclaration;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;

    invoke-virtual {v6, v13}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->addVisibleLocalVariable(Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;)V

    invoke-virtual {v13, v9}, Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;->recordInitializationStartPC(I)V

    iget-object v13, v13, Lorg/eclipse/jdt/internal/compiler/lookup/VariableBinding;->type:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    iget v13, v13, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->id:I

    const/4 v14, 0x7

    if-eq v13, v14, :cond_3

    const/16 v14, 0x8

    if-eq v13, v14, :cond_3

    add-int/lit8 v10, v10, 0x1

    goto :goto_3

    :cond_3
    add-int/lit8 v10, v10, 0x2

    :goto_3
    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    :cond_4
    :goto_4
    iget-object v8, v4, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->initializerScope:Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;

    invoke-virtual {v8, v10, v6}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;->computeLocalVariablePositions(ILorg/eclipse/jdt/internal/compiler/codegen/CodeStream;)V

    iget-object v10, v0, Lorg/eclipse/jdt/internal/compiler/ast/ConstructorDeclaration;->constructorCall:Lorg/eclipse/jdt/internal/compiler/ast/ExplicitConstructorCall;

    if-eqz v10, :cond_5

    iget v10, v10, Lorg/eclipse/jdt/internal/compiler/ast/ExplicitConstructorCall;->accessMode:I

    const/4 v11, 0x3

    if-ne v10, v11, :cond_5

    move v10, v9

    goto :goto_5

    :cond_5
    move v10, v12

    :goto_5
    iget-object v11, v0, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->scope:Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;

    invoke-virtual {v11}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->compilerOptions()Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;

    move-result-object v11

    iget-wide v13, v11, Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;->targetJDK:J

    const-wide/32 v15, 0x300000

    cmp-long v11, v13, v15

    if-ltz v11, :cond_6

    goto :goto_6

    :cond_6
    move v12, v9

    :goto_6
    if-eqz v10, :cond_8

    if-eqz v12, :cond_8

    iget-object v11, v0, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->scope:Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;

    invoke-virtual {v0, v11, v6, v7}, Lorg/eclipse/jdt/internal/compiler/ast/ConstructorDeclaration;->generateSyntheticFieldInitializationsIfNecessary(Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;)V

    iget v11, v0, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->bodyStart:I

    if-lez v11, :cond_7

    goto :goto_7

    :cond_7
    iget v11, v0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceStart:I

    :goto_7
    invoke-virtual {v6, v9, v11}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->recordPositionsFrom(II)V

    :cond_8
    iget-object v11, v0, Lorg/eclipse/jdt/internal/compiler/ast/ConstructorDeclaration;->constructorCall:Lorg/eclipse/jdt/internal/compiler/ast/ExplicitConstructorCall;

    if-eqz v11, :cond_9

    iget-object v13, v0, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->scope:Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;

    invoke-virtual {v11, v13, v6}, Lorg/eclipse/jdt/internal/compiler/ast/ExplicitConstructorCall;->generateCode(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;)V

    :cond_9
    if-eqz v10, :cond_d

    if-nez v12, :cond_a

    iget-object v11, v0, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->scope:Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;

    invoke-virtual {v0, v11, v6, v7}, Lorg/eclipse/jdt/internal/compiler/ast/ConstructorDeclaration;->generateSyntheticFieldInitializationsIfNecessary(Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;)V

    :cond_a
    iget-object v7, v4, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->fields:[Lorg/eclipse/jdt/internal/compiler/ast/FieldDeclaration;

    if-eqz v7, :cond_d

    array-length v7, v7

    move v11, v9

    :goto_8
    if-lt v11, v7, :cond_b

    goto :goto_9

    :cond_b
    iget-object v12, v4, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->fields:[Lorg/eclipse/jdt/internal/compiler/ast/FieldDeclaration;

    aget-object v12, v12, v11

    invoke-virtual {v12}, Lorg/eclipse/jdt/internal/compiler/ast/FieldDeclaration;->isStatic()Z

    move-result v13

    if-nez v13, :cond_c

    invoke-virtual {v12, v8, v6}, Lorg/eclipse/jdt/internal/compiler/ast/FieldDeclaration;->generateCode(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;)V

    :cond_c
    add-int/lit8 v11, v11, 0x1

    goto :goto_8

    :cond_d
    :goto_9
    iget-object v7, v0, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->statements:[Lorg/eclipse/jdt/internal/compiler/ast/Statement;

    if-eqz v7, :cond_f

    array-length v7, v7

    move v8, v9

    :goto_a
    if-lt v8, v7, :cond_e

    goto :goto_b

    :cond_e
    iget-object v11, v0, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->statements:[Lorg/eclipse/jdt/internal/compiler/ast/Statement;

    aget-object v11, v11, v8

    iget-object v12, v0, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->scope:Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;

    invoke-virtual {v11, v12, v6}, Lorg/eclipse/jdt/internal/compiler/ast/Statement;->generateCode(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;)V

    add-int/lit8 v8, v8, 0x1

    goto :goto_a

    :cond_f
    :goto_b
    iget-boolean v7, v0, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->ignoreFurtherInvestigation:Z

    const/4 v8, 0x0

    if-nez v7, :cond_12

    iget v7, v0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->bits:I

    and-int/lit8 v7, v7, 0x40

    if-eqz v7, :cond_10

    invoke-virtual {v6}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->return_()V

    :cond_10
    iget-object v7, v0, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->scope:Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;

    invoke-virtual {v6, v7}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->exitUserScope(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;)V

    iget v7, v0, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->bodyEnd:I

    if-lez v7, :cond_11

    goto :goto_c

    :cond_11
    iget v7, v0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceStart:I

    :goto_c
    invoke-virtual {v6, v9, v7}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->recordPositionsFrom(II)V

    :try_start_0
    invoke-virtual {v1, v5}, Lorg/eclipse/jdt/internal/compiler/ClassFile;->completeCodeAttribute(I)V
    :try_end_0
    .catch Ljava/lang/NegativeArraySizeException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v3, v3, 0x1

    instance-of v5, v6, Lorg/eclipse/jdt/internal/compiler/codegen/StackMapFrameCodeStream;

    if-eqz v5, :cond_13

    if-eqz v10, :cond_13

    iget-object v4, v4, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->fields:[Lorg/eclipse/jdt/internal/compiler/ast/FieldDeclaration;

    if-eqz v4, :cond_13

    check-cast v6, Lorg/eclipse/jdt/internal/compiler/codegen/StackMapFrameCodeStream;

    invoke-virtual {v6}, Lorg/eclipse/jdt/internal/compiler/codegen/StackMapFrameCodeStream;->resetSecretLocals()V

    goto :goto_d

    :catch_0
    new-instance v1, Lorg/eclipse/jdt/internal/compiler/problem/AbortMethod;

    iget-object v2, v0, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->scope:Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;

    invoke-virtual {v2}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->referenceCompilationUnit()Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;

    move-result-object v2

    iget-object v2, v2, Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;->compilationResult:Lorg/eclipse/jdt/internal/compiler/CompilationResult;

    invoke-direct {v1, v2, v8}, Lorg/eclipse/jdt/internal/compiler/problem/AbortMethod;-><init>(Lorg/eclipse/jdt/internal/compiler/CompilationResult;Lorg/eclipse/jdt/core/compiler/CategorizedProblem;)V

    throw v1

    :cond_12
    new-instance v1, Lorg/eclipse/jdt/internal/compiler/problem/AbortMethod;

    iget-object v2, v0, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->scope:Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;

    invoke-virtual {v2}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->referenceCompilationUnit()Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;

    move-result-object v2

    iget-object v2, v2, Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;->compilationResult:Lorg/eclipse/jdt/internal/compiler/CompilationResult;

    invoke-direct {v1, v2, v8}, Lorg/eclipse/jdt/internal/compiler/problem/AbortMethod;-><init>(Lorg/eclipse/jdt/internal/compiler/CompilationResult;Lorg/eclipse/jdt/core/compiler/CategorizedProblem;)V

    throw v1

    :cond_13
    :goto_d
    iget-object v4, v0, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    invoke-virtual {v1, v4, v2, v3}, Lorg/eclipse/jdt/internal/compiler/ClassFile;->completeMethodInfo(Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;II)V

    return-void
.end method


# virtual methods
.method public analyseCode(Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;Lorg/eclipse/jdt/internal/compiler/flow/InitializationFlowContext;Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;I)V
    .locals 16

    move-object/from16 v7, p0

    move-object/from16 v8, p2

    move-object/from16 v9, p3

    iget-boolean v0, v7, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->ignoreFurtherInvestigation:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual/range {p3 .. p3}, Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;->reachMode()I

    move-result v10

    invoke-virtual/range {p3 .. p4}, Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;->setReachMode(I)Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;

    iget-object v0, v7, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    const/4 v11, 0x3

    const/4 v12, 0x0

    if-nez v0, :cond_1

    goto/16 :goto_0

    :cond_1
    iget v1, v7, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->bits:I

    and-int/lit16 v1, v1, 0x80

    if-eqz v1, :cond_2

    goto/16 :goto_0

    :cond_2
    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->isUsed()Z

    move-result v1

    if-eqz v1, :cond_3

    goto/16 :goto_0

    :cond_3
    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->isPrivate()Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, v7, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    iget-object v1, v1, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->declaringClass:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    iget-wide v1, v1, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->tagBits:J

    const-wide/high16 v3, 0x1000000000000000L

    and-long/2addr v1, v3

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-nez v1, :cond_5

    goto :goto_0

    :cond_4
    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->isOrEnclosedByPrivateType()Z

    move-result v1

    if-nez v1, :cond_5

    goto :goto_0

    :cond_5
    iget-object v1, v7, Lorg/eclipse/jdt/internal/compiler/ast/ConstructorDeclaration;->constructorCall:Lorg/eclipse/jdt/internal/compiler/ast/ExplicitConstructorCall;

    if-nez v1, :cond_6

    goto :goto_0

    :cond_6
    iget v1, v1, Lorg/eclipse/jdt/internal/compiler/ast/ExplicitConstructorCall;->accessMode:I

    if-eq v1, v11, :cond_a

    iget-object v1, v0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->declaringClass:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->superclass()Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move-result-object v1

    if-nez v1, :cond_7

    goto :goto_0

    :cond_7
    sget-object v2, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->NO_PARAMETERS:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-virtual {v1, v2}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->getExactConstructor([Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    move-result-object v1

    if-nez v1, :cond_8

    goto :goto_0

    :cond_8
    invoke-static {}, Lorg/eclipse/jdt/internal/compiler/ast/SuperReference;->implicitSuperConstructorCall()Lorg/eclipse/jdt/internal/compiler/ast/ExplicitConstructorCall;

    move-result-object v2

    iget-object v3, v7, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->scope:Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;

    invoke-virtual {v1, v2, v3}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->canBeSeenBy(Lorg/eclipse/jdt/internal/compiler/lookup/InvocationSite;Lorg/eclipse/jdt/internal/compiler/lookup/Scope;)Z

    move-result v1

    if-nez v1, :cond_9

    goto :goto_0

    :cond_9
    iget-object v1, v0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->declaringClass:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->isPublic()Z

    move-result v2

    if-eqz v2, :cond_a

    iget-object v0, v0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->parameters:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    array-length v0, v0

    if-nez v0, :cond_a

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->isStatic()Z

    move-result v0

    if-eqz v0, :cond_a

    const/16 v0, 0x38

    invoke-virtual {v1, v0, v12}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->findSuperTypeOriginatingFrom(IZ)Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move-result-object v0

    if-eqz v0, :cond_a

    goto :goto_0

    :cond_a
    iget-object v0, v7, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->scope:Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object v0

    invoke-virtual {v0, v7}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->unusedPrivateConstructor(Lorg/eclipse/jdt/internal/compiler/ast/ConstructorDeclaration;)V

    :goto_0
    const/4 v13, 0x0

    invoke-virtual {v7, v13}, Lorg/eclipse/jdt/internal/compiler/ast/ConstructorDeclaration;->isRecursive(Ljava/util/ArrayList;)Z

    move-result v0

    if-eqz v0, :cond_b

    iget-object v0, v7, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->scope:Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object v0

    iget-object v1, v7, Lorg/eclipse/jdt/internal/compiler/ast/ConstructorDeclaration;->constructorCall:Lorg/eclipse/jdt/internal/compiler/ast/ExplicitConstructorCall;

    invoke-virtual {v0, v1}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->recursiveConstructorInvocation(Lorg/eclipse/jdt/internal/compiler/ast/ExplicitConstructorCall;)V

    :cond_b
    iget-object v0, v7, Lorg/eclipse/jdt/internal/compiler/ast/ConstructorDeclaration;->typeParameters:[Lorg/eclipse/jdt/internal/compiler/ast/TypeParameter;

    if-eqz v0, :cond_e

    iget-object v0, v7, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->scope:Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->referenceCompilationUnit()Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;

    move-result-object v0

    iget-object v0, v0, Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;->compilationResult:Lorg/eclipse/jdt/internal/compiler/CompilationResult;

    iget-boolean v0, v0, Lorg/eclipse/jdt/internal/compiler/CompilationResult;->hasSyntaxError:Z

    if-nez v0, :cond_e

    iget-object v0, v7, Lorg/eclipse/jdt/internal/compiler/ast/ConstructorDeclaration;->typeParameters:[Lorg/eclipse/jdt/internal/compiler/ast/TypeParameter;

    array-length v0, v0

    move v1, v12

    :goto_1
    if-lt v1, v0, :cond_c

    goto :goto_2

    :cond_c
    iget-object v2, v7, Lorg/eclipse/jdt/internal/compiler/ast/ConstructorDeclaration;->typeParameters:[Lorg/eclipse/jdt/internal/compiler/ast/TypeParameter;

    aget-object v2, v2, v1

    iget-object v3, v2, Lorg/eclipse/jdt/internal/compiler/ast/TypeParameter;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;

    iget v3, v3, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->modifiers:I

    const/high16 v4, 0x8000000

    and-int/2addr v3, v4

    if-nez v3, :cond_d

    iget-object v3, v7, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->scope:Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;

    invoke-virtual {v3}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object v3

    invoke-virtual {v3, v2}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->unusedTypeParameter(Lorg/eclipse/jdt/internal/compiler/ast/TypeParameter;)V

    :cond_d
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_e
    :goto_2
    const/4 v14, 0x1

    :try_start_0
    new-instance v15, Lorg/eclipse/jdt/internal/compiler/flow/ExceptionHandlingFlowContext;

    iget-object v1, v8, Lorg/eclipse/jdt/internal/compiler/flow/FlowContext;->parent:Lorg/eclipse/jdt/internal/compiler/flow/FlowContext;

    iget-object v0, v7, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    iget-object v3, v0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->thrownExceptions:[Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    iget-object v5, v7, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->scope:Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;

    sget-object v6, Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;->DEAD_END:Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;

    move-object v0, v15

    move-object/from16 v2, p0

    move-object/from16 v4, p2

    invoke-direct/range {v0 .. v6}, Lorg/eclipse/jdt/internal/compiler/flow/ExceptionHandlingFlowContext;-><init>(Lorg/eclipse/jdt/internal/compiler/flow/FlowContext;Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;[Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;Lorg/eclipse/jdt/internal/compiler/flow/FlowContext;Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;)V

    iget-object v0, v7, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->scope:Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;

    invoke-virtual {v8, v0, v15, v9}, Lorg/eclipse/jdt/internal/compiler/flow/InitializationFlowContext;->checkInitializerExceptions(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;Lorg/eclipse/jdt/internal/compiler/flow/FlowContext;Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;)V

    iget-object v0, v7, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    iget-object v0, v0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->declaringClass:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isAnonymousType()Z

    move-result v0

    if-eqz v0, :cond_f

    iget-object v0, v15, Lorg/eclipse/jdt/internal/compiler/flow/ExceptionHandlingFlowContext;->extendedExceptions:Ljava/util/ArrayList;

    if-eqz v0, :cond_f

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_f

    new-array v1, v1, [Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    iget-object v0, v7, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    iput-object v1, v0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->thrownExceptions:[Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    :cond_f
    invoke-virtual/range {p1 .. p1}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->environment()Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    move-result-object v0

    iget-object v1, v7, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->arguments:[Lorg/eclipse/jdt/internal/compiler/ast/Argument;

    iget-object v2, v7, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    invoke-static {v0, v9, v1, v2}, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->analyseArguments(Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;[Lorg/eclipse/jdt/internal/compiler/ast/Argument;Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;)V

    iget-object v0, v7, Lorg/eclipse/jdt/internal/compiler/ast/ConstructorDeclaration;->constructorCall:Lorg/eclipse/jdt/internal/compiler/ast/ExplicitConstructorCall;

    if-eqz v0, :cond_13

    iget v0, v0, Lorg/eclipse/jdt/internal/compiler/ast/ExplicitConstructorCall;->accessMode:I

    if-ne v0, v11, :cond_12

    iget-object v0, v7, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    iget-object v0, v0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->declaringClass:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->fields()[Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;

    move-result-object v0

    array-length v1, v0

    move v2, v12

    :goto_3
    if-lt v2, v1, :cond_10

    goto :goto_4

    :cond_10
    aget-object v3, v0, v2

    invoke-virtual {v3}, Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;->isStatic()Z

    move-result v4

    if-nez v4, :cond_11

    invoke-virtual {v9, v3}, Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;->markAsDefinitelyAssigned(Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;)V

    :cond_11
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_12
    :goto_4
    iget-object v0, v7, Lorg/eclipse/jdt/internal/compiler/ast/ConstructorDeclaration;->constructorCall:Lorg/eclipse/jdt/internal/compiler/ast/ExplicitConstructorCall;

    iget-object v1, v7, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->scope:Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;

    invoke-virtual {v0, v1, v15, v9}, Lorg/eclipse/jdt/internal/compiler/ast/ExplicitConstructorCall;->analyseCode(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;Lorg/eclipse/jdt/internal/compiler/flow/FlowContext;Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;)Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;

    move-result-object v0

    goto :goto_5

    :cond_13
    move-object v0, v9

    :goto_5
    invoke-virtual {v0, v10}, Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;->setReachMode(I)Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;

    iget-object v1, v7, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->statements:[Lorg/eclipse/jdt/internal/compiler/ast/Statement;

    if-eqz v1, :cond_18

    iget-object v1, v7, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->scope:Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->compilerOptions()Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;

    move-result-object v1

    iget-boolean v1, v1, Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;->enableSyntacticNullAnalysisForFields:Z

    and-int/lit8 v2, v10, 0x3

    if-nez v2, :cond_14

    move v2, v12

    goto :goto_6

    :cond_14
    move v2, v14

    :goto_6
    iget-object v3, v7, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->statements:[Lorg/eclipse/jdt/internal/compiler/ast/Statement;

    array-length v3, v3

    move v4, v12

    :goto_7
    if-lt v4, v3, :cond_15

    goto :goto_8

    :cond_15
    iget-object v5, v7, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->statements:[Lorg/eclipse/jdt/internal/compiler/ast/Statement;

    aget-object v5, v5, v4

    iget-object v6, v7, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->scope:Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;

    invoke-virtual {v5, v0, v6, v2, v14}, Lorg/eclipse/jdt/internal/compiler/ast/Statement;->complainIfUnreachable(Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;IZ)I

    move-result v2

    const/4 v6, 0x2

    if-ge v2, v6, :cond_16

    iget-object v6, v7, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->scope:Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;

    invoke-virtual {v5, v6, v15, v0}, Lorg/eclipse/jdt/internal/compiler/ast/Statement;->analyseCode(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;Lorg/eclipse/jdt/internal/compiler/flow/FlowContext;Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;)Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;

    move-result-object v0

    :cond_16
    if-eqz v1, :cond_17

    invoke-virtual {v15}, Lorg/eclipse/jdt/internal/compiler/flow/FlowContext;->expireNullCheckedFieldInfo()V

    :cond_17
    add-int/lit8 v4, v4, 0x1

    goto :goto_7

    :cond_18
    :goto_8
    iget v1, v0, Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;->tagBits:I

    and-int/2addr v1, v14

    if-nez v1, :cond_19

    iget v1, v7, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->bits:I

    or-int/lit8 v1, v1, 0x40

    iput v1, v7, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->bits:I

    :cond_19
    iget-object v1, v7, Lorg/eclipse/jdt/internal/compiler/ast/ConstructorDeclaration;->constructorCall:Lorg/eclipse/jdt/internal/compiler/ast/ExplicitConstructorCall;

    if-eqz v1, :cond_20

    iget v1, v1, Lorg/eclipse/jdt/internal/compiler/ast/ExplicitConstructorCall;->accessMode:I

    if-eq v1, v11, :cond_20

    iget-object v1, v15, Lorg/eclipse/jdt/internal/compiler/flow/ExceptionHandlingFlowContext;->initsOnReturn:Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;

    invoke-virtual {v0, v1}, Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;->mergedWith(Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;)Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;

    move-result-object v0

    iget-object v1, v7, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    iget-object v1, v1, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->declaringClass:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->fields()[Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;

    move-result-object v1

    array-length v2, v1

    :goto_9
    if-lt v12, v2, :cond_1a

    goto/16 :goto_d

    :cond_1a
    aget-object v3, v1, v12

    invoke-virtual {v3}, Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;->isStatic()Z

    move-result v4

    if-nez v4, :cond_1f

    invoke-virtual {v0, v3}, Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;->isDefinitelyAssigned(Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;)Z

    move-result v4

    if-nez v4, :cond_1f

    invoke-virtual {v3}, Lorg/eclipse/jdt/internal/compiler/lookup/VariableBinding;->isFinal()Z

    move-result v4

    if-eqz v4, :cond_1c

    iget-object v4, v7, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->scope:Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;

    invoke-virtual {v4}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object v4

    iget v5, v7, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->bits:I

    and-int/lit16 v5, v5, 0x80

    if-eqz v5, :cond_1b

    iget-object v5, v7, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->scope:Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;

    invoke-virtual {v5}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;->referenceType()Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;

    move-result-object v5

    invoke-virtual {v3}, Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;->original()Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;

    move-result-object v6

    invoke-virtual {v5, v6}, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->declarationOf(Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;)Lorg/eclipse/jdt/internal/compiler/ast/FieldDeclaration;

    move-result-object v5

    goto :goto_a

    :cond_1b
    move-object v5, v7

    :goto_a
    invoke-virtual {v4, v3, v5}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->uninitializedBlankFinalField(Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;)V

    goto :goto_c

    :cond_1c
    invoke-virtual {v3}, Lorg/eclipse/jdt/internal/compiler/lookup/VariableBinding;->isNonNull()Z

    move-result v4

    if-nez v4, :cond_1d

    iget-object v4, v3, Lorg/eclipse/jdt/internal/compiler/lookup/VariableBinding;->type:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-virtual {v4}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isFreeTypeVariable()Z

    move-result v4

    if-eqz v4, :cond_1f

    :cond_1d
    iget-object v4, v7, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->scope:Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;

    invoke-virtual {v4}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;->referenceType()Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;

    move-result-object v4

    invoke-virtual {v3}, Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;->original()Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->declarationOf(Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;)Lorg/eclipse/jdt/internal/compiler/ast/FieldDeclaration;

    move-result-object v4

    invoke-virtual {v7, v4}, Lorg/eclipse/jdt/internal/compiler/ast/ConstructorDeclaration;->isValueProvidedUsingAnnotation(Lorg/eclipse/jdt/internal/compiler/ast/FieldDeclaration;)Z

    move-result v5

    if-nez v5, :cond_1f

    iget-object v5, v7, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->scope:Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;

    invoke-virtual {v5}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object v5

    iget v6, v7, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->bits:I

    and-int/lit16 v6, v6, 0x80

    if-eqz v6, :cond_1e

    goto :goto_b

    :cond_1e
    move-object v4, v7

    :goto_b
    invoke-virtual {v5, v3, v4}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->uninitializedNonNullField(Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;)V

    :cond_1f
    :goto_c
    add-int/lit8 v12, v12, 0x1

    goto :goto_9

    :cond_20
    :goto_d
    invoke-virtual {v15, v7}, Lorg/eclipse/jdt/internal/compiler/flow/ExceptionHandlingFlowContext;->complainIfUnusedExceptionHandlers(Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;)V

    iget-object v1, v7, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->scope:Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;

    iget-object v2, v7, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    invoke-virtual {v1, v2}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;->checkUnusedParameters(Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;)V

    iget-object v1, v7, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->scope:Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;

    invoke-virtual {v1, v0, v13, v13, v13}, Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;->checkUnclosedCloseables(Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;Lorg/eclipse/jdt/internal/compiler/flow/FlowContext;Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;)V
    :try_end_0
    .catch Lorg/eclipse/jdt/internal/compiler/problem/AbortMethod; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_e

    :catch_0
    iput-boolean v14, v7, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->ignoreFurtherInvestigation:Z

    :goto_e
    return-void
.end method

.method public generateCode(Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;Lorg/eclipse/jdt/internal/compiler/ClassFile;)V
    .locals 8

    iget-boolean v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->ignoreFurtherInvestigation:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->scope:Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->referenceCompilationUnit()Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;

    move-result-object p1

    iget-object p1, p1, Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;->compilationResult:Lorg/eclipse/jdt/internal/compiler/CompilationResult;

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/CompilationResult;->getProblems()[Lorg/eclipse/jdt/core/compiler/CategorizedProblem;

    move-result-object p1

    array-length v0, p1

    new-array v2, v0, [Lorg/eclipse/jdt/core/compiler/CategorizedProblem;

    invoke-static {p1, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    invoke-virtual {p2, p0, p1, v2}, Lorg/eclipse/jdt/internal/compiler/ClassFile;->addProblemConstructor(Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;[Lorg/eclipse/jdt/core/compiler/CategorizedProblem;)V

    return-void

    :cond_1
    if-eqz p1, :cond_2

    iget-object v0, p1, Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;->referenceContext:Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->compilationResult()Lorg/eclipse/jdt/internal/compiler/CompilationResult;

    move-result-object v0

    iget v2, v0, Lorg/eclipse/jdt/internal/compiler/CompilationResult;->problemCount:I

    move v3, v1

    :goto_0
    move v4, v3

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    move v2, v1

    move v3, v2

    goto :goto_0

    :cond_3
    :goto_1
    :try_start_0
    iget v3, p2, Lorg/eclipse/jdt/internal/compiler/ClassFile;->contentsOffset:I

    invoke-direct {p0, p1, p2}, Lorg/eclipse/jdt/internal/compiler/ast/ConstructorDeclaration;->internalGenerateCode(Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;Lorg/eclipse/jdt/internal/compiler/ClassFile;)V
    :try_end_0
    .catch Lorg/eclipse/jdt/internal/compiler/problem/AbortMethod; {:try_start_0 .. :try_end_0} :catch_0

    :goto_2
    move v7, v1

    goto :goto_3

    :catch_0
    move-exception v5

    iget-object v5, v5, Lorg/eclipse/jdt/internal/compiler/problem/AbortCompilation;->compilationResult:Lorg/eclipse/jdt/internal/compiler/CompilationResult;

    sget-object v6, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->RESTART_IN_WIDE_MODE:Lorg/eclipse/jdt/internal/compiler/CompilationResult;

    const/4 v7, 0x1

    if-ne v5, v6, :cond_4

    iput v3, p2, Lorg/eclipse/jdt/internal/compiler/ClassFile;->contentsOffset:I

    iget v5, p2, Lorg/eclipse/jdt/internal/compiler/ClassFile;->methodCount:I

    sub-int/2addr v5, v7

    iput v5, p2, Lorg/eclipse/jdt/internal/compiler/ClassFile;->methodCount:I

    iget-object v5, p2, Lorg/eclipse/jdt/internal/compiler/ClassFile;->codeStream:Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;

    invoke-virtual {v5}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->resetInWideMode()V

    if-eqz v0, :cond_6

    iput v2, v0, Lorg/eclipse/jdt/internal/compiler/CompilationResult;->problemCount:I

    goto :goto_3

    :cond_4
    sget-object v6, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->RESTART_CODE_GEN_FOR_UNUSED_LOCALS_MODE:Lorg/eclipse/jdt/internal/compiler/CompilationResult;

    if-ne v5, v6, :cond_5

    iput v3, p2, Lorg/eclipse/jdt/internal/compiler/ClassFile;->contentsOffset:I

    iget v5, p2, Lorg/eclipse/jdt/internal/compiler/ClassFile;->methodCount:I

    sub-int/2addr v5, v7

    iput v5, p2, Lorg/eclipse/jdt/internal/compiler/ClassFile;->methodCount:I

    iget-object v5, p2, Lorg/eclipse/jdt/internal/compiler/ClassFile;->codeStream:Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;

    invoke-virtual {v5}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->resetForCodeGenUnusedLocals()V

    if-eqz v0, :cond_6

    iput v2, v0, Lorg/eclipse/jdt/internal/compiler/CompilationResult;->problemCount:I

    goto :goto_3

    :cond_5
    move v4, v7

    goto :goto_2

    :cond_6
    :goto_3
    if-nez v7, :cond_3

    if-eqz v4, :cond_7

    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->scope:Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->referenceCompilationUnit()Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;

    move-result-object p1

    iget-object p1, p1, Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;->compilationResult:Lorg/eclipse/jdt/internal/compiler/CompilationResult;

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/CompilationResult;->getAllProblems()[Lorg/eclipse/jdt/core/compiler/CategorizedProblem;

    move-result-object p1

    array-length v0, p1

    new-array v2, v0, [Lorg/eclipse/jdt/core/compiler/CategorizedProblem;

    invoke-static {p1, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    invoke-virtual {p2, p0, p1, v2, v3}, Lorg/eclipse/jdt/internal/compiler/ClassFile;->addProblemConstructor(Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;[Lorg/eclipse/jdt/core/compiler/CategorizedProblem;I)V

    :cond_7
    return-void
.end method

.method public generateSyntheticFieldInitializationsIfNecessary(Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;)V
    .locals 7

    invoke-virtual {p3}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isNestedType()Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    check-cast p3, Lorg/eclipse/jdt/internal/compiler/lookup/NestedTypeBinding;

    invoke-virtual {p3}, Lorg/eclipse/jdt/internal/compiler/lookup/NestedTypeBinding;->syntheticEnclosingInstances()[Lorg/eclipse/jdt/internal/compiler/lookup/SyntheticArgumentBinding;

    move-result-object p1

    const/4 v0, 0x0

    const/16 v1, -0x4b

    const/4 v2, 0x0

    if-eqz p1, :cond_3

    array-length v3, p1

    move v4, v2

    :goto_0
    if-lt v4, v3, :cond_1

    goto :goto_1

    :cond_1
    aget-object v5, p1, v4

    iget-object v6, v5, Lorg/eclipse/jdt/internal/compiler/lookup/SyntheticArgumentBinding;->matchingField:Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;

    if-eqz v6, :cond_2

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->aload_0()V

    invoke-virtual {p2, v5}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->load(Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;)V

    iget-object v5, v5, Lorg/eclipse/jdt/internal/compiler/lookup/SyntheticArgumentBinding;->matchingField:Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;

    invoke-virtual {p2, v1, v5, v0}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->fieldAccess(BLorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)V

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    invoke-virtual {p3}, Lorg/eclipse/jdt/internal/compiler/lookup/NestedTypeBinding;->syntheticOuterLocalVariables()[Lorg/eclipse/jdt/internal/compiler/lookup/SyntheticArgumentBinding;

    move-result-object p1

    if-eqz p1, :cond_6

    array-length p3, p1

    :goto_2
    if-lt v2, p3, :cond_4

    goto :goto_3

    :cond_4
    aget-object v3, p1, v2

    iget-object v4, v3, Lorg/eclipse/jdt/internal/compiler/lookup/SyntheticArgumentBinding;->matchingField:Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;

    if-eqz v4, :cond_5

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->aload_0()V

    invoke-virtual {p2, v3}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->load(Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;)V

    iget-object v3, v3, Lorg/eclipse/jdt/internal/compiler/lookup/SyntheticArgumentBinding;->matchingField:Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;

    invoke-virtual {p2, v1, v3, v0}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->fieldAccess(BLorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)V

    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_6
    :goto_3
    return-void
.end method

.method public getAllAnnotationContexts(ILjava/util/List;)V
    .locals 4

    new-instance v0, Lorg/eclipse/jdt/internal/compiler/ast/SingleTypeReference;

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->selector:[C

    const-wide/16 v2, 0x0

    invoke-direct {v0, v1, v2, v3}, Lorg/eclipse/jdt/internal/compiler/ast/SingleTypeReference;-><init>([CJ)V

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    iget-object v1, v1, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->declaringClass:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    iput-object v1, v0, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->resolvedType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    new-instance v1, Lorg/eclipse/jdt/internal/compiler/ast/TypeReference$AnnotationCollector;

    invoke-direct {v1, v0, p1, p2}, Lorg/eclipse/jdt/internal/compiler/ast/TypeReference$AnnotationCollector;-><init>(Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;ILjava/util/List;)V

    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->annotations:[Lorg/eclipse/jdt/internal/compiler/ast/Annotation;

    array-length p1, p1

    const/4 p2, 0x0

    :goto_0
    if-lt p2, p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->annotations:[Lorg/eclipse/jdt/internal/compiler/ast/Annotation;

    aget-object v0, v0, p2

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/eclipse/jdt/internal/compiler/ast/Annotation;->traverse(Lorg/eclipse/jdt/internal/compiler/ASTVisitor;Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0
.end method

.method public isConstructor()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isDefaultConstructor()Z
    .locals 1

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->bits:I

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isInitializationMethod()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isRecursive(Ljava/util/ArrayList;)Z
    .locals 4

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    const/4 v1, 0x0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/ConstructorDeclaration;->constructorCall:Lorg/eclipse/jdt/internal/compiler/ast/ExplicitConstructorCall;

    if-eqz v0, :cond_6

    iget-object v2, v0, Lorg/eclipse/jdt/internal/compiler/ast/ExplicitConstructorCall;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    if-eqz v2, :cond_6

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/ast/ExplicitConstructorCall;->isSuperAccess()Z

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/ConstructorDeclaration;->constructorCall:Lorg/eclipse/jdt/internal/compiler/ast/ExplicitConstructorCall;

    iget-object v0, v0, Lorg/eclipse/jdt/internal/compiler/ast/ExplicitConstructorCall;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->isValidBinding()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->scope:Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;->referenceType()Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;

    move-result-object v0

    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/ast/ConstructorDeclaration;->constructorCall:Lorg/eclipse/jdt/internal/compiler/ast/ExplicitConstructorCall;

    iget-object v2, v2, Lorg/eclipse/jdt/internal/compiler/ast/ExplicitConstructorCall;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    invoke-virtual {v2}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->original()Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->declarationOf(Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;)Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jdt/internal/compiler/ast/ConstructorDeclaration;

    if-nez v0, :cond_1

    return v1

    :cond_1
    const/4 v2, 0x1

    if-ne p0, v0, :cond_2

    return v2

    :cond_2
    if-nez p1, :cond_3

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1, v2}, Ljava/util/ArrayList;-><init>(I)V

    goto :goto_0

    :cond_3
    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v3

    if-ltz v3, :cond_5

    if-nez v3, :cond_4

    return v2

    :cond_4
    return v1

    :cond_5
    :goto_0
    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0, p1}, Lorg/eclipse/jdt/internal/compiler/ast/ConstructorDeclaration;->isRecursive(Ljava/util/ArrayList;)Z

    move-result p1

    return p1

    :cond_6
    :goto_1
    return v1
.end method

.method public isValueProvidedUsingAnnotation(Lorg/eclipse/jdt/internal/compiler/ast/FieldDeclaration;)Z
    .locals 7

    iget-object v0, p1, Lorg/eclipse/jdt/internal/compiler/ast/AbstractVariableDeclaration;->annotations:[Lorg/eclipse/jdt/internal/compiler/ast/Annotation;

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    array-length v0, v0

    move v2, v1

    :goto_0
    if-lt v2, v0, :cond_0

    goto :goto_4

    :cond_0
    iget-object v3, p1, Lorg/eclipse/jdt/internal/compiler/ast/AbstractVariableDeclaration;->annotations:[Lorg/eclipse/jdt/internal/compiler/ast/Annotation;

    aget-object v3, v3, v2

    iget-object v4, v3, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->resolvedType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    iget v4, v4, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->id:I

    const/16 v5, 0x50

    const/4 v6, 0x1

    if-ne v4, v5, :cond_1

    return v6

    :cond_1
    const/16 v5, 0x51

    if-ne v4, v5, :cond_5

    invoke-virtual {v3}, Lorg/eclipse/jdt/internal/compiler/ast/Annotation;->memberValuePairs()[Lorg/eclipse/jdt/internal/compiler/ast/MemberValuePair;

    move-result-object v5

    sget-object v3, Lorg/eclipse/jdt/internal/compiler/ast/Annotation;->NoValuePairs:[Lorg/eclipse/jdt/internal/compiler/ast/MemberValuePair;

    if-ne v5, v3, :cond_2

    return v6

    :cond_2
    move v3, v1

    :goto_1
    array-length v4, v5

    if-lt v3, v4, :cond_3

    goto :goto_3

    :cond_3
    aget-object v4, v5, v3

    iget-object v4, v4, Lorg/eclipse/jdt/internal/compiler/ast/MemberValuePair;->name:[C

    sget-object v6, Lorg/eclipse/jdt/internal/compiler/lookup/TypeConstants;->OPTIONAL:[C

    invoke-static {v4, v6}, Lorg/eclipse/jdt/core/compiler/CharOperation;->equals([C[C)Z

    move-result v4

    if-eqz v4, :cond_4

    aget-object p1, v5, v3

    iget-object p1, p1, Lorg/eclipse/jdt/internal/compiler/ast/MemberValuePair;->value:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    instance-of p1, p1, Lorg/eclipse/jdt/internal/compiler/ast/FalseLiteral;

    return p1

    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_5
    const/16 v5, 0x52

    if-ne v4, v5, :cond_9

    invoke-virtual {v3}, Lorg/eclipse/jdt/internal/compiler/ast/Annotation;->memberValuePairs()[Lorg/eclipse/jdt/internal/compiler/ast/MemberValuePair;

    move-result-object v3

    sget-object v4, Lorg/eclipse/jdt/internal/compiler/ast/Annotation;->NoValuePairs:[Lorg/eclipse/jdt/internal/compiler/ast/MemberValuePair;

    if-ne v3, v4, :cond_6

    return v6

    :cond_6
    move v4, v1

    :goto_2
    array-length v5, v3

    if-lt v4, v5, :cond_7

    goto :goto_3

    :cond_7
    aget-object v5, v3, v4

    iget-object v5, v5, Lorg/eclipse/jdt/internal/compiler/ast/MemberValuePair;->name:[C

    sget-object v6, Lorg/eclipse/jdt/internal/compiler/lookup/TypeConstants;->REQUIRED:[C

    invoke-static {v5, v6}, Lorg/eclipse/jdt/core/compiler/CharOperation;->equals([C[C)Z

    move-result v5

    if-eqz v5, :cond_8

    aget-object p1, v3, v4

    iget-object p1, p1, Lorg/eclipse/jdt/internal/compiler/ast/MemberValuePair;->value:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    instance-of p1, p1, Lorg/eclipse/jdt/internal/compiler/ast/TrueLiteral;

    return p1

    :cond_8
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_9
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_a
    :goto_4
    return v1
.end method

.method public parseStatements(Lorg/eclipse/jdt/internal/compiler/parser/Parser;Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;)V
    .locals 1

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->bits:I

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/ConstructorDeclaration;->constructorCall:Lorg/eclipse/jdt/internal/compiler/ast/ExplicitConstructorCall;

    if-nez v0, :cond_0

    invoke-static {}, Lorg/eclipse/jdt/internal/compiler/ast/SuperReference;->implicitSuperConstructorCall()Lorg/eclipse/jdt/internal/compiler/ast/ExplicitConstructorCall;

    move-result-object p1

    iput-object p1, p0, Lorg/eclipse/jdt/internal/compiler/ast/ConstructorDeclaration;->constructorCall:Lorg/eclipse/jdt/internal/compiler/ast/ExplicitConstructorCall;

    iget p2, p0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceStart:I

    iput p2, p1, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceStart:I

    iget p2, p0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceEnd:I

    iput p2, p1, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceEnd:I

    return-void

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p1, p0, p2, v0}, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->parse(Lorg/eclipse/jdt/internal/compiler/ast/ConstructorDeclaration;Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;Z)V

    return-void
.end method

.method public printBody(ILjava/lang/StringBuffer;)Ljava/lang/StringBuffer;
    .locals 4

    const-string v0, " {"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/ConstructorDeclaration;->constructorCall:Lorg/eclipse/jdt/internal/compiler/ast/ExplicitConstructorCall;

    const/16 v1, 0xa

    if-eqz v0, :cond_0

    invoke-virtual {p2, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/ConstructorDeclaration;->constructorCall:Lorg/eclipse/jdt/internal/compiler/ast/ExplicitConstructorCall;

    invoke-virtual {v0, p1, p2}, Lorg/eclipse/jdt/internal/compiler/ast/ExplicitConstructorCall;->printStatement(ILjava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    :cond_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->statements:[Lorg/eclipse/jdt/internal/compiler/ast/Statement;

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    move v0, v2

    :goto_0
    iget-object v3, p0, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->statements:[Lorg/eclipse/jdt/internal/compiler/ast/Statement;

    array-length v3, v3

    if-lt v0, v3, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p2, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    iget-object v3, p0, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->statements:[Lorg/eclipse/jdt/internal/compiler/ast/Statement;

    aget-object v3, v3, v0

    invoke-virtual {v3, p1, p2}, Lorg/eclipse/jdt/internal/compiler/ast/Statement;->printStatement(ILjava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    invoke-virtual {p2, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    if-nez p1, :cond_3

    goto :goto_2

    :cond_3
    add-int/lit8 v2, p1, -0x1

    :goto_2
    invoke-static {v2, p2}, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->printIndent(ILjava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    move-result-object p1

    const/16 v0, 0x7d

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    return-object p2
.end method

.method public resolveJavadoc()V
    .locals 5

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    if-eqz v0, :cond_2

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->javadoc:Lorg/eclipse/jdt/internal/compiler/ast/Javadoc;

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->bits:I

    and-int/lit16 v1, v1, 0x80

    if-nez v1, :cond_3

    iget-object v0, v0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->declaringClass:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isLocalType()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    iget v0, v0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->modifiers:I

    and-int/lit8 v0, v0, 0x7

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->scope:Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->classScope()Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;

    move-result-object v1

    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->scope:Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;

    invoke-virtual {v2}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object v2

    const v3, -0x5ffffe1a

    invoke-virtual {v2, v3}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->computeSeverity(I)I

    move-result v3

    const/16 v4, 0x100

    if-eq v3, v4, :cond_3

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;->referenceType()Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;

    move-result-object v1

    invoke-static {v1, v0}, Lorg/eclipse/jdt/internal/compiler/util/Util;->computeOuterMostVisibility(Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;I)I

    move-result v0

    :cond_1
    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    iget v1, v1, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->modifiers:I

    and-int/lit8 v1, v1, -0x8

    or-int/2addr v0, v1

    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceStart:I

    iget v4, p0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceEnd:I

    invoke-virtual {v2, v1, v4, v3, v0}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->javadocMissing(IIII)V

    goto :goto_1

    :cond_2
    :goto_0
    invoke-super {p0}, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->resolveJavadoc()V

    :cond_3
    :goto_1
    return-void
.end method

.method public resolveStatements()V
    .locals 5

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->scope:Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->enclosingSourceType()Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;

    move-result-object v0

    iget-object v1, v0, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->sourceName:[C

    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->selector:[C

    invoke-static {v1, v2}, Lorg/eclipse/jdt/core/compiler/CharOperation;->equals([C[C)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->scope:Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object v1

    invoke-virtual {v1, p0}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->missingReturnType(Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;)V

    :cond_0
    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->isPrivate()Z

    move-result v1

    if-nez v1, :cond_1

    iget-wide v1, v0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->tagBits:J

    const-wide/high16 v3, 0x1000000000000000L

    or-long/2addr v1, v3

    iput-wide v1, v0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->tagBits:J

    :cond_1
    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/ast/ConstructorDeclaration;->constructorCall:Lorg/eclipse/jdt/internal/compiler/ast/ExplicitConstructorCall;

    if-eqz v1, :cond_4

    iget v0, v0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->id:I

    const/4 v2, 0x1

    if-ne v0, v2, :cond_3

    iget v0, v1, Lorg/eclipse/jdt/internal/compiler/ast/ExplicitConstructorCall;->accessMode:I

    const/4 v2, 0x3

    if-eq v0, v2, :cond_3

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->scope:Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object v0

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/ast/ConstructorDeclaration;->constructorCall:Lorg/eclipse/jdt/internal/compiler/ast/ExplicitConstructorCall;

    invoke-virtual {v0, v1}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->cannotUseSuperInJavaLangObject(Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;)V

    :cond_2
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/ConstructorDeclaration;->constructorCall:Lorg/eclipse/jdt/internal/compiler/ast/ExplicitConstructorCall;

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->scope:Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;

    invoke-virtual {v1, v0}, Lorg/eclipse/jdt/internal/compiler/ast/ExplicitConstructorCall;->resolve(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;)V

    :cond_4
    :goto_0
    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->modifiers:I

    const/high16 v1, 0x1000000

    and-int/2addr v0, v1

    if-eqz v0, :cond_5

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->scope:Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->methodNeedBody(Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;)V

    :cond_5
    invoke-super {p0}, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->resolveStatements()V

    return-void
.end method

.method public traverse(Lorg/eclipse/jdt/internal/compiler/ASTVisitor;Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;)V
    .locals 5

    invoke-virtual {p1, p0, p2}, Lorg/eclipse/jdt/internal/compiler/ASTVisitor;->visit(Lorg/eclipse/jdt/internal/compiler/ast/ConstructorDeclaration;Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;)Z

    move-result v0

    if-eqz v0, :cond_b

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->javadoc:Lorg/eclipse/jdt/internal/compiler/ast/Javadoc;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->scope:Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;

    invoke-virtual {v0, p1, v1}, Lorg/eclipse/jdt/internal/compiler/ast/Javadoc;->traverse(Lorg/eclipse/jdt/internal/compiler/ASTVisitor;Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;)V

    :cond_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->annotations:[Lorg/eclipse/jdt/internal/compiler/ast/Annotation;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    array-length v0, v0

    move v2, v1

    :goto_0
    if-lt v2, v0, :cond_1

    goto :goto_1

    :cond_1
    iget-object v3, p0, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->annotations:[Lorg/eclipse/jdt/internal/compiler/ast/Annotation;

    aget-object v3, v3, v2

    iget-object v4, p0, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->scope:Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;

    invoke-virtual {v3, p1, v4}, Lorg/eclipse/jdt/internal/compiler/ast/Annotation;->traverse(Lorg/eclipse/jdt/internal/compiler/ASTVisitor;Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/ConstructorDeclaration;->typeParameters:[Lorg/eclipse/jdt/internal/compiler/ast/TypeParameter;

    if-eqz v0, :cond_4

    array-length v0, v0

    move v2, v1

    :goto_2
    if-lt v2, v0, :cond_3

    goto :goto_3

    :cond_3
    iget-object v3, p0, Lorg/eclipse/jdt/internal/compiler/ast/ConstructorDeclaration;->typeParameters:[Lorg/eclipse/jdt/internal/compiler/ast/TypeParameter;

    aget-object v3, v3, v2

    iget-object v4, p0, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->scope:Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;

    invoke-virtual {v3, p1, v4}, Lorg/eclipse/jdt/internal/compiler/ast/TypeParameter;->traverse(Lorg/eclipse/jdt/internal/compiler/ASTVisitor;Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_4
    :goto_3
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->arguments:[Lorg/eclipse/jdt/internal/compiler/ast/Argument;

    if-eqz v0, :cond_6

    array-length v0, v0

    move v2, v1

    :goto_4
    if-lt v2, v0, :cond_5

    goto :goto_5

    :cond_5
    iget-object v3, p0, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->arguments:[Lorg/eclipse/jdt/internal/compiler/ast/Argument;

    aget-object v3, v3, v2

    iget-object v4, p0, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->scope:Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;

    invoke-virtual {v3, p1, v4}, Lorg/eclipse/jdt/internal/compiler/ast/Argument;->traverse(Lorg/eclipse/jdt/internal/compiler/ASTVisitor;Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_6
    :goto_5
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->thrownExceptions:[Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    if-eqz v0, :cond_8

    array-length v0, v0

    move v2, v1

    :goto_6
    if-lt v2, v0, :cond_7

    goto :goto_7

    :cond_7
    iget-object v3, p0, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->thrownExceptions:[Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    aget-object v3, v3, v2

    iget-object v4, p0, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->scope:Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;

    invoke-virtual {v3, p1, v4}, Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;->traverse(Lorg/eclipse/jdt/internal/compiler/ASTVisitor;Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    :cond_8
    :goto_7
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/ConstructorDeclaration;->constructorCall:Lorg/eclipse/jdt/internal/compiler/ast/ExplicitConstructorCall;

    if-eqz v0, :cond_9

    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->scope:Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;

    invoke-virtual {v0, p1, v2}, Lorg/eclipse/jdt/internal/compiler/ast/ExplicitConstructorCall;->traverse(Lorg/eclipse/jdt/internal/compiler/ASTVisitor;Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;)V

    :cond_9
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->statements:[Lorg/eclipse/jdt/internal/compiler/ast/Statement;

    if-eqz v0, :cond_b

    array-length v0, v0

    :goto_8
    if-lt v1, v0, :cond_a

    goto :goto_9

    :cond_a
    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->statements:[Lorg/eclipse/jdt/internal/compiler/ast/Statement;

    aget-object v2, v2, v1

    iget-object v3, p0, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->scope:Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;

    invoke-virtual {v2, p1, v3}, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->traverse(Lorg/eclipse/jdt/internal/compiler/ASTVisitor;Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    :cond_b
    :goto_9
    invoke-virtual {p1, p0, p2}, Lorg/eclipse/jdt/internal/compiler/ASTVisitor;->endVisit(Lorg/eclipse/jdt/internal/compiler/ast/ConstructorDeclaration;Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;)V

    return-void
.end method

.method public typeParameters()[Lorg/eclipse/jdt/internal/compiler/ast/TypeParameter;
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/ConstructorDeclaration;->typeParameters:[Lorg/eclipse/jdt/internal/compiler/ast/TypeParameter;

    return-object v0
.end method
