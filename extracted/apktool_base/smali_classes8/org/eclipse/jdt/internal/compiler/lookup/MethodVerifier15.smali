.class Lorg/eclipse/jdt/internal/compiler/lookup/MethodVerifier15;
.super Lorg/eclipse/jdt/internal/compiler/lookup/MethodVerifier;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodVerifier;-><init>(Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;)V

    return-void
.end method


# virtual methods
.method public canOverridingMethodDifferInErasure(Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;)Z
    .locals 1

    invoke-virtual {p1, p2}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->areParameterErasuresEqual(Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;)Z

    move-result p2

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    return v0

    :cond_0
    iget-object p1, p1, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->declaringClass:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isRawType()Z

    move-result p1

    if-eqz p1, :cond_1

    return v0

    :cond_1
    const/4 p1, 0x1

    return p1
.end method

.method public canSkipInheritedMethods()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodVerifier;->type:Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->superclass()Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 2
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodVerifier;->type:Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->superclass()Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move-result-object v0

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->isAbstract()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodVerifier;->type:Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->superclass()Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move-result-object v0

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isParameterizedType()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    return v1

    .line 3
    :cond_1
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodVerifier;->type:Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->superInterfaces()[Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move-result-object v0

    sget-object v2, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->NO_SUPERINTERFACES:[Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    if-ne v0, v2, :cond_2

    const/4 v0, 0x1

    return v0

    :cond_2
    return v1
.end method

.method public canSkipInheritedMethods(Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;)Z
    .locals 1

    if-eqz p2, :cond_1

    .line 4
    iget-object v0, p1, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->declaringClass:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    iget-object p2, p2, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->declaringClass:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    invoke-static {v0, p2}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->equalsEquals(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Z

    move-result p2

    if-eqz p2, :cond_0

    iget-object p1, p1, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->declaringClass:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isParameterizedType()Z

    move-result p1

    if-eqz p1, :cond_1

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    const/4 p1, 0x1

    return p1
.end method

.method public checkAgainstInheritedMethods(Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;[Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;I[Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;)V
    .locals 16

    move-object/from16 v10, p0

    move-object/from16 v11, p1

    invoke-super/range {p0 .. p4}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodVerifier;->checkAgainstInheritedMethods(Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;[Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;I[Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;)V

    iget-object v0, v10, Lorg/eclipse/jdt/internal/compiler/lookup/ImplicitNullAnnotationVerifier;->environment:Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    iget-object v0, v0, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->globalOptions:Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;

    iget-boolean v0, v0, Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;->isAnnotationBasedNullAnalysisEnabled:Z

    if-eqz v0, :cond_3

    iget-wide v0, v11, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->tagBits:J

    const-wide/16 v2, 0x1000

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_3

    iget-object v0, v10, Lorg/eclipse/jdt/internal/compiler/lookup/MethodVerifier;->type:Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;

    iget-object v1, v11, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->declaringClass:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual/range {p1 .. p1}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->sourceMethod()Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;

    move-result-object v0

    :goto_0
    move-object v12, v0

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :goto_1
    invoke-virtual {v11, v12}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->hasNonNullDefaultForReturnType(Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;)Z

    move-result v13

    invoke-virtual {v11, v12}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->hasNonNullDefaultForParameter(Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;)Lorg/eclipse/jdt/internal/compiler/lookup/ParameterNonNullDefaultProvider;

    move-result-object v14

    move/from16 v0, p3

    :goto_2
    add-int/lit8 v15, v0, -0x1

    if-gez v15, :cond_1

    goto :goto_3

    :cond_1
    invoke-virtual/range {p1 .. p1}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->isStatic()Z

    move-result v0

    if-nez v0, :cond_2

    aget-object v0, p2, v15

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->isStatic()Z

    move-result v0

    if-nez v0, :cond_2

    aget-object v6, p2, v15

    iget-object v0, v10, Lorg/eclipse/jdt/internal/compiler/lookup/MethodVerifier;->type:Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;

    iget-object v8, v0, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->scope:Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;

    const/4 v9, 0x0

    const/4 v5, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v2, v12

    move v3, v13

    move-object v4, v14

    move-object/from16 v7, p2

    invoke-virtual/range {v0 .. v9}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodVerifier15;->checkNullSpecInheritance(Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;ZLorg/eclipse/jdt/internal/compiler/lookup/ParameterNonNullDefaultProvider;ZLorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;[Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;Lorg/eclipse/jdt/internal/compiler/lookup/Scope;[Lorg/eclipse/jdt/internal/compiler/lookup/ImplicitNullAnnotationVerifier$InheritedNonNullnessInfo;)V

    :cond_2
    move v0, v15

    goto :goto_2

    :cond_3
    :goto_3
    return-void
.end method

.method public checkConcreteInheritedMethod(Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;[Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;)V
    .locals 20

    move-object/from16 v10, p0

    move-object/from16 v11, p1

    move-object/from16 v12, p2

    invoke-super/range {p0 .. p2}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodVerifier;->checkConcreteInheritedMethod(Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;[Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;)V

    iget-object v0, v10, Lorg/eclipse/jdt/internal/compiler/lookup/ImplicitNullAnnotationVerifier;->environment:Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    iget-object v0, v0, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->globalOptions:Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;

    iget-boolean v13, v0, Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;->isAnnotationBasedNullAnalysisEnabled:Z

    if-eqz v13, :cond_0

    iget-object v0, v10, Lorg/eclipse/jdt/internal/compiler/lookup/MethodVerifier;->type:Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;

    iget-object v1, v11, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->declaringClass:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual/range {p1 .. p1}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->sourceMethod()Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;

    move-result-object v0

    :goto_0
    move-object v14, v0

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :goto_1
    const/4 v0, 0x0

    if-eqz v13, :cond_1

    invoke-virtual {v11, v14}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->hasNonNullDefaultForReturnType(Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    move v15, v1

    goto :goto_2

    :cond_1
    move v15, v0

    :goto_2
    if-eqz v13, :cond_2

    invoke-virtual {v11, v14}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->hasNonNullDefaultForParameter(Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;)Lorg/eclipse/jdt/internal/compiler/lookup/ParameterNonNullDefaultProvider;

    move-result-object v1

    :goto_3
    move-object/from16 v16, v1

    goto :goto_4

    :cond_2
    sget-object v1, Lorg/eclipse/jdt/internal/compiler/lookup/ParameterNonNullDefaultProvider;->FALSE_PROVIDER:Lorg/eclipse/jdt/internal/compiler/lookup/ParameterNonNullDefaultProvider;

    goto :goto_3

    :goto_4
    array-length v9, v12

    move v8, v0

    :goto_5
    if-lt v8, v9, :cond_3

    return-void

    :cond_3
    aget-object v6, v12, v8

    invoke-virtual/range {p1 .. p1}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->isVarargs()Z

    move-result v0

    invoke-virtual {v6}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->isVarargs()Z

    move-result v1

    if-eq v0, v1, :cond_4

    invoke-virtual/range {p0 .. p0}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodVerifier;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object v0

    iget-object v1, v10, Lorg/eclipse/jdt/internal/compiler/lookup/MethodVerifier;->type:Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;

    invoke-virtual {v0, v11, v6, v1}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->varargsConflict(Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;)V

    :cond_4
    invoke-virtual {v6}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->original()Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    move-result-object v0

    iget-object v1, v0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->returnType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    iget-object v2, v11, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->returnType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-static {v1, v2}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->notEquals(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-virtual {v10, v11, v6}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodVerifier15;->isAcceptableReturnTypeOverride(Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;)Z

    move-result v1

    if-nez v1, :cond_5

    invoke-virtual/range {p0 .. p0}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodVerifier;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object v1

    iget-object v2, v10, Lorg/eclipse/jdt/internal/compiler/lookup/MethodVerifier;->type:Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;

    invoke-virtual {v1, v11, v0, v2}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->unsafeReturnTypeOverride(Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;)V

    :cond_5
    iget-object v1, v0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->declaringClass:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->isInterface()Z

    move-result v1

    if-eqz v1, :cond_8

    iget-object v1, v11, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->declaringClass:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    iget-object v2, v10, Lorg/eclipse/jdt/internal/compiler/lookup/MethodVerifier;->type:Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;

    iget-object v2, v2, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->superclass:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    invoke-static {v1, v2}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->equalsEquals(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object v1, v10, Lorg/eclipse/jdt/internal/compiler/lookup/MethodVerifier;->type:Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;

    iget-object v1, v1, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->superclass:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isParameterizedType()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-virtual {v10, v11, v0}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodVerifier;->areMethodsCompatible(Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;)Z

    move-result v1

    if-eqz v1, :cond_7

    :cond_6
    iget-object v1, v10, Lorg/eclipse/jdt/internal/compiler/lookup/MethodVerifier;->type:Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;

    iget-object v1, v1, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->superclass:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->erasure()Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v1

    iget-object v2, v0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->declaringClass:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    invoke-virtual {v1, v2}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->findSuperTypeOriginatingFrom(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v1

    if-nez v1, :cond_8

    :cond_7
    iget-object v1, v10, Lorg/eclipse/jdt/internal/compiler/lookup/MethodVerifier;->type:Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;

    invoke-virtual/range {p1 .. p1}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->original()Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->addSyntheticBridgeMethod(Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/SyntheticMethodBinding;

    :cond_8
    if-eqz v13, :cond_9

    invoke-virtual/range {p1 .. p1}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->isStatic()Z

    move-result v0

    if-nez v0, :cond_9

    invoke-virtual {v6}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->isStatic()Z

    move-result v0

    if-nez v0, :cond_9

    iget-object v0, v10, Lorg/eclipse/jdt/internal/compiler/lookup/MethodVerifier;->type:Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;

    iget-object v7, v0, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->scope:Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;

    const/16 v17, 0x0

    const/4 v5, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v2, v14

    move v3, v15

    move-object/from16 v4, v16

    move-object/from16 v18, v7

    move-object/from16 v7, p2

    move/from16 v19, v8

    move-object/from16 v8, v18

    move/from16 v18, v9

    move-object/from16 v9, v17

    invoke-virtual/range {v0 .. v9}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodVerifier15;->checkNullSpecInheritance(Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;ZLorg/eclipse/jdt/internal/compiler/lookup/ParameterNonNullDefaultProvider;ZLorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;[Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;Lorg/eclipse/jdt/internal/compiler/lookup/Scope;[Lorg/eclipse/jdt/internal/compiler/lookup/ImplicitNullAnnotationVerifier$InheritedNonNullnessInfo;)V

    goto :goto_6

    :cond_9
    move/from16 v19, v8

    move/from16 v18, v9

    :goto_6
    add-int/lit8 v8, v19, 0x1

    move/from16 v9, v18

    goto/16 :goto_5
.end method

.method public checkForBridgeMethod(Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;[Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;)V
    .locals 5

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->isVarargs()Z

    move-result v0

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->isVarargs()Z

    move-result v1

    if-eq v0, v1, :cond_0

    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodVerifier;->problemReporter(Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;)Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object v0

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodVerifier;->type:Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;

    invoke-virtual {v0, p1, p2, v1}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->varargsConflict(Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;)V

    :cond_0
    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->original()Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    move-result-object v0

    iget-object v1, v0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->returnType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    iget-object v2, p1, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->returnType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-static {v1, v2}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->notEquals(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0, p1, p2}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodVerifier15;->isAcceptableReturnTypeOverride(Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodVerifier;->problemReporter(Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;)Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object v1

    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodVerifier;->type:Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;

    invoke-virtual {v1, p1, v0, v2}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->unsafeReturnTypeOverride(Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;)V

    :cond_1
    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodVerifier;->type:Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->original()Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    move-result-object p1

    invoke-virtual {v1, v0, p1}, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->addSyntheticBridgeMethod(Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/SyntheticMethodBinding;

    move-result-object p1

    if-eqz p1, :cond_8

    const/4 v1, 0x0

    if-nez p3, :cond_2

    move v2, v1

    goto :goto_0

    :cond_2
    array-length v2, p3

    :goto_0
    if-lt v1, v2, :cond_6

    iget-object p3, p0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodVerifier;->currentMethods:Lorg/eclipse/jdt/internal/compiler/util/HashtableOfObject;

    iget-object v0, p1, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->selector:[C

    invoke-virtual {p3, v0}, Lorg/eclipse/jdt/internal/compiler/util/HashtableOfObject;->get([C)Ljava/lang/Object;

    move-result-object p3

    move-object v3, p3

    check-cast v3, [Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    array-length p3, v3

    const/4 v4, 0x1

    sub-int/2addr p3, v4

    :goto_1
    if-gez p3, :cond_3

    goto :goto_3

    :cond_3
    aget-object v0, v3, p3

    invoke-virtual {v0, p1}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->areParameterErasuresEqual(Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;)Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, v0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->returnType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->erasure()Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v1

    iget-object v2, p1, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->returnType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-virtual {v2}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->erasure()Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->equalsEquals(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodVerifier;->problemReporter(Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;)Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object p1

    iget-object p3, p2, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->declaringClass:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    invoke-virtual {p3}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isRawType()Z

    move-result p3

    if-eqz p3, :cond_4

    goto :goto_2

    :cond_4
    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->original()Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    move-result-object p2

    :goto_2
    invoke-virtual {p1, v0, p2, v4}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->methodNameClash(Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;I)V

    return-void

    :cond_5
    add-int/lit8 p3, p3, -0x1

    goto :goto_1

    :cond_6
    aget-object v3, p3, v1

    if-eqz v3, :cond_7

    invoke-virtual {v3}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->original()Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    move-result-object v3

    invoke-virtual {p0, v0, v3}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodVerifier15;->detectInheritedNameClash(Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;)Z

    move-result v3

    if-eqz v3, :cond_7

    return-void

    :cond_7
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_8
    :goto_3
    return-void
.end method

.method public checkForNameClash(Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;)V
    .locals 10

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->isStatic()Z

    move-result v0

    if-nez v0, :cond_19

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->isStatic()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_12

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodVerifier15;->detectNameClash(Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;Z)Z

    move-result v1

    if-nez v1, :cond_18

    iget-object v1, p1, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->parameters:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    iget-object v2, p2, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->parameters:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    array-length v3, v1

    array-length v4, v2

    if-eq v3, v4, :cond_1

    return-void

    :cond_1
    move v4, v0

    :goto_0
    if-lt v4, v3, :cond_15

    iget-object p2, p2, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->declaringClass:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->superInterfaces()[Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move-result-object v1

    sget-object v2, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->NO_SUPERINTERFACES:[Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    if-eq v1, v2, :cond_2

    array-length v2, v1

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    move v2, v0

    :goto_1
    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->superclass()Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move-result-object p2

    :goto_2
    const/4 v5, 0x1

    if-eqz p2, :cond_c

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->isValidBinding()Z

    move-result v3

    if-nez v3, :cond_3

    goto/16 :goto_9

    :cond_3
    iget-object v3, p1, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->selector:[C

    invoke-virtual {p2, v3}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->getMethods([C)[Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    move-result-object v3

    array-length v4, v3

    move v6, v0

    :goto_3
    if-lt v6, v4, :cond_a

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->superInterfaces()[Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move-result-object v3

    sget-object v4, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->NO_SUPERINTERFACES:[Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    if-eq v3, v4, :cond_9

    if-nez v1, :cond_4

    array-length v1, v3

    move v2, v1

    move-object v1, v3

    goto :goto_8

    :cond_4
    array-length v4, v3

    add-int v5, v2, v4

    array-length v6, v1

    if-lt v5, v6, :cond_5

    add-int/lit8 v5, v5, 0x5

    new-array v5, v5, [Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    invoke-static {v1, v0, v5, v0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_4

    :cond_5
    move-object v5, v1

    :goto_4
    move v6, v0

    move v7, v2

    :goto_5
    if-lt v6, v4, :cond_6

    move-object v1, v5

    move v2, v7

    goto :goto_8

    :cond_6
    aget-object v8, v3, v6

    move v1, v0

    :goto_6
    if-lt v1, v7, :cond_7

    add-int/lit8 v1, v7, 0x1

    aput-object v8, v5, v7

    move v7, v1

    goto :goto_7

    :cond_7
    aget-object v2, v5, v1

    invoke-static {v8, v2}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->equalsEquals(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Z

    move-result v2

    if-eqz v2, :cond_8

    :goto_7
    add-int/lit8 v6, v6, 0x1

    goto :goto_5

    :cond_8
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :cond_9
    :goto_8
    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->superclass()Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move-result-object p2

    goto :goto_2

    :cond_a
    aget-object v7, v3, v6

    invoke-virtual {p0, v7, p1}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodVerifier;->computeSubstituteMethod(Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    move-result-object v7

    if-eqz v7, :cond_b

    invoke-virtual {p0, p1, v7}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodVerifier;->isSubstituteParameterSubsignature(Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;)Z

    move-result v8

    if-nez v8, :cond_b

    invoke-virtual {p0, p1, v7, v5}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodVerifier15;->detectNameClash(Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;Z)Z

    move-result v7

    if-eqz v7, :cond_b

    return-void

    :cond_b
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    :cond_c
    :goto_9
    move p2, v0

    :goto_a
    if-lt p2, v2, :cond_d

    goto/16 :goto_11

    :cond_d
    aget-object v3, v1, p2

    invoke-virtual {v3}, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->isValidBinding()Z

    move-result v4

    if-eqz v4, :cond_14

    iget-object v4, p1, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->selector:[C

    invoke-virtual {v3, v4}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->getMethods([C)[Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    move-result-object v4

    array-length v6, v4

    move v7, v0

    :goto_b
    if-lt v7, v6, :cond_12

    invoke-virtual {v3}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->superInterfaces()[Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move-result-object v3

    sget-object v4, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->NO_SUPERINTERFACES:[Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    if-eq v3, v4, :cond_14

    array-length v4, v3

    add-int v6, v2, v4

    array-length v7, v1

    if-lt v6, v7, :cond_e

    add-int/lit8 v6, v6, 0x5

    new-array v6, v6, [Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    invoke-static {v1, v0, v6, v0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_c

    :cond_e
    move-object v6, v1

    :goto_c
    move v7, v0

    move v8, v2

    :goto_d
    if-lt v7, v4, :cond_f

    move-object v1, v6

    move v2, v8

    goto :goto_10

    :cond_f
    aget-object v9, v3, v7

    move v1, v0

    :goto_e
    if-lt v1, v8, :cond_10

    add-int/lit8 v1, v8, 0x1

    aput-object v9, v6, v8

    move v8, v1

    goto :goto_f

    :cond_10
    aget-object v2, v6, v1

    invoke-static {v9, v2}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->equalsEquals(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Z

    move-result v2

    if-eqz v2, :cond_11

    :goto_f
    add-int/lit8 v7, v7, 0x1

    goto :goto_d

    :cond_11
    add-int/lit8 v1, v1, 0x1

    goto :goto_e

    :cond_12
    aget-object v8, v4, v7

    invoke-virtual {p0, v8, p1}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodVerifier;->computeSubstituteMethod(Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    move-result-object v8

    if-eqz v8, :cond_13

    invoke-virtual {p0, p1, v8}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodVerifier;->isSubstituteParameterSubsignature(Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;)Z

    move-result v9

    if-nez v9, :cond_13

    invoke-virtual {p0, p1, v8, v5}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodVerifier15;->detectNameClash(Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;Z)Z

    move-result v8

    if-eqz v8, :cond_13

    return-void

    :cond_13
    add-int/lit8 v7, v7, 0x1

    goto :goto_b

    :cond_14
    :goto_10
    add-int/lit8 p2, p2, 0x1

    goto :goto_a

    :cond_15
    aget-object v5, v1, v4

    aget-object v6, v2, v4

    invoke-static {v5, v6}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->notEquals(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Z

    move-result v5

    if-eqz v5, :cond_17

    aget-object v5, v1, v4

    invoke-virtual {v5}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isBaseType()Z

    move-result v5

    aget-object v6, v2, v4

    invoke-virtual {v6}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isBaseType()Z

    move-result v6

    if-ne v5, v6, :cond_16

    aget-object v5, v2, v4

    aget-object v6, v1, v4

    invoke-virtual {v5, v6}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isCompatibleWith(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Z

    move-result v5

    if-nez v5, :cond_17

    :cond_16
    return-void

    :cond_17
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    :cond_18
    :goto_11
    return-void

    :cond_19
    :goto_12
    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->original()Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    move-result-object v0

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodVerifier;->type:Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;

    iget-object v1, v1, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->scope:Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->compilerOptions()Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;

    move-result-object v1

    iget-wide v1, v1, Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;->complianceLevel:J

    const-wide/32 v3, 0x330000

    cmp-long v1, v1, v3

    if-ltz v1, :cond_1b

    invoke-virtual {p1, v0}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->areParameterErasuresEqual(Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;)Z

    move-result v1

    if-eqz v1, :cond_1b

    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodVerifier;->problemReporter(Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;)Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object v1

    iget-object v2, p2, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->declaringClass:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    invoke-virtual {v2}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isRawType()Z

    move-result v2

    if-eqz v2, :cond_1a

    goto :goto_13

    :cond_1a
    move-object p2, v0

    :goto_13
    invoke-virtual {v1, p1, p2}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->methodNameClashHidden(Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;)V

    :cond_1b
    return-void
.end method

.method public checkInheritedDefaultMethods([Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;[ZI)Z
    .locals 6

    const/4 v0, 0x2

    const/4 v1, 0x1

    if-ge p3, v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    move v2, v0

    :goto_0
    if-lt v2, p3, :cond_1

    return v1

    :cond_1
    aget-object v3, p1, v2

    invoke-virtual {v3}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->isDefaultMethod()Z

    move-result v3

    if-eqz v3, :cond_5

    aget-boolean v3, p2, v2

    if-nez v3, :cond_5

    move v3, v0

    :goto_1
    if-lt v3, p3, :cond_2

    goto :goto_3

    :cond_2
    if-eq v3, v2, :cond_4

    aget-boolean v4, p2, v3

    if-eqz v4, :cond_3

    goto :goto_2

    :cond_3
    aget-object v4, p1, v2

    aget-object v5, p1, v3

    invoke-virtual {p0, v4, v5}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodVerifier15;->isMethodSubsignature(Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;)Z

    move-result v4

    if-eqz v4, :cond_4

    aget-object v4, p1, v2

    aget-object v5, p1, v3

    invoke-virtual {p0, v4, v5}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodVerifier;->doesMethodOverride(Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;)Z

    move-result v4

    if-nez v4, :cond_4

    aget-object v4, p1, v3

    aget-object v5, p1, v2

    invoke-virtual {p0, v4, v5}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodVerifier;->doesMethodOverride(Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;)Z

    move-result v4

    if-nez v4, :cond_4

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodVerifier;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object v1

    iget-object v4, p0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodVerifier;->type:Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;

    aget-object v5, p1, v2

    aget-object v3, p1, v3

    invoke-virtual {v1, v4, v5, v3}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->inheritedDefaultMethodConflictsWithOtherInherited(Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;)V

    move v1, v0

    goto :goto_3

    :cond_4
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_5
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public checkInheritedMethods(Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;)V
    .locals 4

    .line 1
    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->isStatic()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ImplicitNullAnnotationVerifier;->environment:Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    iget-object v0, v0, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->globalOptions:Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;

    iget-wide v0, v0, Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;->complianceLevel:J

    const-wide/32 v2, 0x330000

    cmp-long v0, v0, v2

    if-gez v0, :cond_1

    iget-object v0, p1, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->declaringClass:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->isInterface()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 3
    :cond_1
    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->original()Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    move-result-object p1

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->original()Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodVerifier15;->detectInheritedNameClash(Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;)Z

    return-void
.end method

.method public checkInheritedMethods([Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;I[Z[Z)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move-object/from16 v3, p3

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    const/4 v6, 0x0

    if-lt v5, v2, :cond_0

    move-object v7, v6

    goto :goto_1

    .line 4
    :cond_0
    aget-object v7, v1, v5

    iget-object v7, v7, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->declaringClass:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    invoke-virtual {v7}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->isInterface()Z

    move-result v7

    if-nez v7, :cond_c

    .line 5
    aget-object v7, v1, v5

    iget-object v7, v7, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->declaringClass:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    iget-object v8, v0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodVerifier;->type:Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;

    invoke-static {v7, v8}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->notEquals(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Z

    move-result v7

    if-eqz v7, :cond_c

    .line 6
    aget-object v7, v1, v5

    invoke-virtual {v7}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->isAbstract()Z

    move-result v7

    if-eqz v7, :cond_c

    .line 7
    aget-object v5, v1, v5

    move-object v7, v5

    :goto_1
    const/4 v8, 0x1

    move v5, v4

    move v10, v5

    move v9, v8

    :goto_2
    const-wide/32 v11, 0x340000

    if-lt v5, v2, :cond_4

    if-eqz v9, :cond_3

    if-eqz v10, :cond_1

    .line 8
    iget-object v4, v0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodVerifier;->type:Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;

    invoke-virtual {v4}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->isAbstract()Z

    move-result v4

    if-nez v4, :cond_2

    .line 9
    invoke-virtual/range {p0 .. p0}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodVerifier;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object v1

    iget-object v2, v0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodVerifier;->type:Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;

    invoke-virtual {v1, v2, v7}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->abstractMethodMustBeImplemented(Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;)V

    return-void

    :cond_1
    if-eqz v6, :cond_2

    .line 10
    invoke-virtual {v6}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->isDefaultMethod()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 11
    iget-object v4, v0, Lorg/eclipse/jdt/internal/compiler/lookup/ImplicitNullAnnotationVerifier;->environment:Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    iget-object v4, v4, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->globalOptions:Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;

    iget-wide v4, v4, Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;->complianceLevel:J

    cmp-long v4, v4, v11

    if-ltz v4, :cond_2

    .line 12
    invoke-virtual {v0, v1, v3, v2}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodVerifier15;->checkInheritedDefaultMethods([Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;[ZI)Z

    move-result v4

    if-nez v4, :cond_2

    return-void

    .line 13
    :cond_2
    invoke-super/range {p0 .. p4}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodVerifier;->checkInheritedMethods([Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;I[Z[Z)V

    :cond_3
    return-void

    .line 14
    :cond_4
    aget-boolean v13, p4, v5

    if-eqz v13, :cond_b

    aget-object v13, v1, v5

    invoke-virtual {v13}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->isAbstract()Z

    move-result v13

    if-nez v13, :cond_b

    .line 15
    aget-object v10, v1, v5

    invoke-virtual {v10}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->isDefaultMethod()Z

    move-result v10

    if-eqz v10, :cond_5

    if-eqz v7, :cond_5

    .line 16
    aget-object v10, v1, v5

    invoke-static {v7, v10}, Lorg/eclipse/jdt/internal/compiler/lookup/ImplicitNullAnnotationVerifier;->areParametersEqual(Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;)Z

    move-result v10

    if-eqz v10, :cond_5

    if-nez v6, :cond_5

    move v10, v8

    goto :goto_5

    :cond_5
    if-eqz v6, :cond_a

    .line 17
    aget-boolean v10, v3, v5

    if-eqz v10, :cond_6

    aget-object v10, v1, v5

    invoke-virtual {v0, v6, v10}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodVerifier;->areMethodsCompatible(Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;)Z

    move-result v10

    if-eqz v10, :cond_6

    goto :goto_3

    .line 18
    :cond_6
    iget-object v10, v6, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->declaringClass:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    aget-object v13, v1, v5

    iget-object v13, v13, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->declaringClass:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    invoke-static {v10, v13}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->equalsEquals(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Z

    move-result v10

    if-eqz v10, :cond_8

    .line 19
    iget-object v10, v6, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->typeVariables:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;

    array-length v13, v10

    aget-object v14, v1, v5

    iget-object v14, v14, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->typeVariables:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;

    array-length v14, v14

    if-eq v13, v14, :cond_8

    .line 20
    sget-object v13, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->NO_TYPE_VARIABLES:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;

    if-ne v10, v13, :cond_7

    .line 21
    invoke-virtual {v6}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->original()Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    move-result-object v10

    aget-object v14, v1, v5

    if-ne v10, v14, :cond_7

    goto :goto_3

    .line 22
    :cond_7
    aget-object v10, v1, v5

    iget-object v14, v10, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->typeVariables:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;

    if-ne v14, v13, :cond_8

    .line 23
    invoke-virtual {v10}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->original()Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    move-result-object v10

    if-ne v10, v6, :cond_8

    :goto_3
    move v10, v4

    goto :goto_5

    .line 24
    :cond_8
    invoke-virtual/range {p0 .. p0}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodVerifier;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object v9

    iget-object v10, v0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodVerifier;->type:Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;

    aget-object v13, v1, v5

    .line 25
    iget-object v14, v0, Lorg/eclipse/jdt/internal/compiler/lookup/ImplicitNullAnnotationVerifier;->environment:Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    iget-object v14, v14, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->globalOptions:Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;

    iget-wide v14, v14, Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;->sourceLevel:J

    cmp-long v11, v14, v11

    if-ltz v11, :cond_9

    move v11, v8

    goto :goto_4

    :cond_9
    move v11, v4

    .line 26
    :goto_4
    invoke-virtual {v9, v10, v6, v13, v11}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->duplicateInheritedMethods(Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;Z)V

    move v9, v4

    .line 27
    :cond_a
    aget-object v6, v1, v5

    goto :goto_3

    :cond_b
    :goto_5
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_2

    :cond_c
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_0
.end method

.method public checkInheritedReturnTypes(Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;)Z
    .locals 4

    invoke-virtual {p0, p1, p2}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodVerifier;->areReturnTypesCompatible(Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p0, p1, p2}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodVerifier15;->isUnsafeReturnTypeOverride(Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;)Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    iget-object v0, p1, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->declaringClass:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    iget-object v3, p2, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->declaringClass:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    invoke-virtual {v0, v3, v2}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->implementsInterface(Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;Z)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodVerifier;->problemReporter(Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;)Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object v0

    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodVerifier;->type:Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;

    invoke-virtual {v0, p1, p2, v2}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->unsafeReturnTypeOverride(Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;)V

    :cond_1
    return v1

    :cond_2
    return v2
.end method

.method public checkMethods()V
    .locals 30

    move-object/from16 v7, p0

    invoke-virtual/range {p0 .. p0}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodVerifier;->mustImplementAbstractMethods()Z

    move-result v8

    const/4 v9, 0x0

    const/4 v10, 0x1

    if-eqz v8, :cond_0

    invoke-virtual/range {p0 .. p0}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodVerifier15;->canSkipInheritedMethods()Z

    move-result v0

    if-eqz v0, :cond_0

    move v11, v10

    goto :goto_0

    :cond_0
    move v11, v9

    :goto_0
    iget-object v0, v7, Lorg/eclipse/jdt/internal/compiler/lookup/MethodVerifier;->type:Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->isOrEnclosedByPrivateType()Z

    move-result v12

    iget-object v0, v7, Lorg/eclipse/jdt/internal/compiler/lookup/MethodVerifier;->inheritedMethods:Lorg/eclipse/jdt/internal/compiler/util/HashtableOfObject;

    iget-object v13, v0, Lorg/eclipse/jdt/internal/compiler/util/HashtableOfObject;->keyTable:[[C

    array-length v0, v13

    :goto_1
    const/4 v14, -0x1

    add-int/lit8 v15, v0, -0x1

    if-gez v15, :cond_1

    return-void

    :cond_1
    aget-object v0, v13, v15

    if-nez v0, :cond_3

    :cond_2
    :goto_2
    move/from16 v19, v11

    move-object/from16 v20, v13

    goto/16 :goto_f

    :cond_3
    iget-object v1, v7, Lorg/eclipse/jdt/internal/compiler/lookup/MethodVerifier;->currentMethods:Lorg/eclipse/jdt/internal/compiler/util/HashtableOfObject;

    invoke-virtual {v1, v0}, Lorg/eclipse/jdt/internal/compiler/util/HashtableOfObject;->get([C)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, [Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    iget-object v0, v7, Lorg/eclipse/jdt/internal/compiler/lookup/MethodVerifier;->inheritedMethods:Lorg/eclipse/jdt/internal/compiler/util/HashtableOfObject;

    iget-object v0, v0, Lorg/eclipse/jdt/internal/compiler/util/HashtableOfObject;->valueTable:[Ljava/lang/Object;

    aget-object v0, v0, v15

    check-cast v0, [Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    array-length v1, v0

    invoke-static {v0, v1}, Lorg/eclipse/jdt/internal/compiler/util/Sorting;->concreteFirst([Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;I)[Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    move-result-object v5

    const/high16 v16, 0x8000000

    if-nez v6, :cond_5

    if-nez v12, :cond_5

    array-length v0, v5

    move v1, v9

    :goto_3
    if-lt v1, v0, :cond_4

    goto :goto_4

    :cond_4
    aget-object v2, v5, v1

    invoke-virtual {v2}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->original()Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    move-result-object v2

    iget v3, v2, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->modifiers:I

    or-int v3, v3, v16

    iput v3, v2, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->modifiers:I

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_5
    :goto_4
    if-nez v6, :cond_8

    iget-object v0, v7, Lorg/eclipse/jdt/internal/compiler/lookup/MethodVerifier;->type:Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->isPublic()Z

    move-result v0

    if-eqz v0, :cond_8

    array-length v0, v5

    move v1, v9

    :goto_5
    if-lt v1, v0, :cond_6

    goto :goto_6

    :cond_6
    aget-object v2, v5, v1

    invoke-virtual {v2}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->isPublic()Z

    move-result v3

    if-eqz v3, :cond_7

    iget-object v3, v2, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->declaringClass:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    invoke-virtual {v3}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->isInterface()Z

    move-result v3

    if-nez v3, :cond_7

    iget-object v3, v2, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->declaringClass:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    invoke-virtual {v3}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->isPublic()Z

    move-result v3

    if-nez v3, :cond_7

    iget-object v3, v7, Lorg/eclipse/jdt/internal/compiler/lookup/MethodVerifier;->type:Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;

    invoke-virtual {v2}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->original()Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    move-result-object v2

    invoke-virtual {v3, v2}, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->addSyntheticBridgeMethod(Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/SyntheticMethodBinding;

    :cond_7
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_8
    :goto_6
    if-nez v6, :cond_9

    if-eqz v11, :cond_9

    goto :goto_2

    :cond_9
    array-length v0, v5

    if-ne v0, v10, :cond_a

    if-nez v6, :cond_a

    if-eqz v8, :cond_2

    aget-object v0, v5, v9

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->isAbstract()Z

    move-result v0

    if-eqz v0, :cond_2

    aget-object v0, v5, v9

    invoke-virtual {v7, v0}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodVerifier;->checkAbstractMethod(Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;)V

    goto/16 :goto_2

    :cond_a
    array-length v4, v5

    new-array v3, v4, [Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    new-array v2, v4, [Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    new-array v1, v4, [Z

    new-array v0, v4, [Z

    new-array v9, v4, [Z

    invoke-static {v9, v10}, Ljava/util/Arrays;->fill([ZZ)V

    const/16 v17, 0x0

    if-eqz v6, :cond_13

    array-length v14, v6

    const/4 v10, 0x0

    const/16 v18, -0x1

    :goto_7
    if-lt v10, v14, :cond_b

    move/from16 v19, v11

    move-object/from16 v20, v13

    goto/16 :goto_c

    :cond_b
    move/from16 v19, v11

    aget-object v11, v6, v10

    move-object/from16 v20, v13

    move/from16 v21, v14

    move-object/from16 v14, v17

    const/4 v13, 0x0

    :goto_8
    if-lt v13, v4, :cond_e

    if-ltz v18, :cond_d

    add-int/lit8 v13, v18, 0x1

    invoke-virtual {v7, v11, v3, v13, v14}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodVerifier15;->checkAgainstInheritedMethods(Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;[Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;I[Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;)V

    :goto_9
    if-gez v18, :cond_c

    goto :goto_a

    :cond_c
    add-int/lit8 v11, v18, -0x1

    aput-object v17, v3, v18

    move/from16 v18, v11

    goto :goto_9

    :cond_d
    :goto_a
    add-int/lit8 v10, v10, 0x1

    move/from16 v11, v19

    move-object/from16 v13, v20

    move/from16 v14, v21

    goto :goto_7

    :cond_e
    move/from16 v22, v10

    aget-object v10, v5, v13

    invoke-virtual {v7, v10, v11}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodVerifier;->computeSubstituteMethod(Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    move-result-object v10

    if-eqz v10, :cond_f

    aget-object v23, v2, v13

    if-nez v23, :cond_10

    invoke-virtual {v7, v11, v10}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodVerifier;->isSubstituteParameterSubsignature(Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;)Z

    move-result v23

    if-eqz v23, :cond_10

    invoke-static {v11, v10}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodVerifier;->couldMethodOverride(Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;)Z

    move-result v23

    aput-boolean v23, v1, v13

    aput-boolean v23, v0, v13

    add-int/lit8 v18, v18, 0x1

    aput-object v10, v3, v18

    aput-object v11, v2, v13

    :cond_f
    move-object/from16 v23, v11

    goto :goto_b

    :cond_10
    invoke-virtual {v7, v11, v10}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodVerifier15;->checkForNameClash(Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;)V

    move-object/from16 v23, v11

    const/4 v11, 0x1

    if-le v4, v11, :cond_12

    if-nez v14, :cond_11

    new-array v14, v4, [Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    :cond_11
    aput-object v10, v14, v13

    :cond_12
    :goto_b
    add-int/lit8 v13, v13, 0x1

    move/from16 v10, v22

    move-object/from16 v11, v23

    goto :goto_8

    :cond_13
    move/from16 v19, v11

    move-object/from16 v20, v13

    const/16 v18, -0x1

    :goto_c
    const/4 v10, 0x0

    :goto_d
    if-lt v10, v4, :cond_26

    const/4 v11, 0x0

    :goto_e
    if-lt v11, v4, :cond_14

    :goto_f
    move v0, v15

    move/from16 v11, v19

    move-object/from16 v13, v20

    const/4 v9, 0x0

    const/4 v10, 0x1

    goto/16 :goto_1

    :cond_14
    aget-object v13, v2, v11

    aget-boolean v6, v1, v11

    if-eqz v6, :cond_15

    move-object/from16 v24, v1

    move/from16 v23, v4

    move/from16 v22, v12

    move/from16 v21, v15

    :goto_10
    const/4 v12, 0x0

    goto/16 :goto_17

    :cond_15
    aget-object v14, v5, v11

    if-nez v13, :cond_16

    add-int/lit8 v18, v18, 0x1

    aput-object v14, v3, v18

    :cond_16
    add-int/lit8 v6, v11, 0x1

    move/from16 v10, v18

    :goto_11
    if-lt v6, v4, :cond_1f

    move/from16 v21, v15

    const/4 v15, -0x1

    if-ne v10, v15, :cond_17

    move-object/from16 v24, v1

    move/from16 v23, v4

    move/from16 v18, v10

    move/from16 v22, v12

    goto :goto_10

    :cond_17
    if-lez v10, :cond_1c

    add-int/lit8 v6, v10, 0x1

    if-eq v6, v4, :cond_1b

    new-array v13, v6, [Z

    new-array v14, v6, [Z

    const/4 v15, 0x0

    :goto_12
    if-lt v15, v6, :cond_18

    move-object/from16 v24, v1

    move/from16 v23, v4

    move/from16 v22, v12

    goto :goto_15

    :cond_18
    move/from16 v22, v12

    const/4 v12, 0x0

    :goto_13
    if-lt v12, v4, :cond_19

    move-object/from16 v24, v1

    move/from16 v23, v4

    goto :goto_14

    :cond_19
    move/from16 v23, v4

    aget-object v4, v3, v15

    move-object/from16 v24, v1

    aget-object v1, v5, v12

    if-ne v4, v1, :cond_1a

    aget-boolean v1, v0, v12

    aput-boolean v1, v13, v15

    aget-boolean v1, v9, v12

    aput-boolean v1, v14, v15

    :goto_14
    add-int/lit8 v15, v15, 0x1

    move/from16 v12, v22

    move/from16 v4, v23

    move-object/from16 v1, v24

    goto :goto_12

    :cond_1a
    add-int/lit8 v12, v12, 0x1

    move/from16 v4, v23

    move-object/from16 v1, v24

    goto :goto_13

    :cond_1b
    move-object/from16 v24, v1

    move/from16 v23, v4

    move/from16 v22, v12

    move-object v13, v0

    move-object v14, v9

    :goto_15
    invoke-virtual {v7, v3, v6, v13, v14}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodVerifier15;->checkInheritedMethods([Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;I[Z[Z)V

    const/4 v12, 0x0

    goto :goto_16

    :cond_1c
    move-object/from16 v24, v1

    move/from16 v23, v4

    move/from16 v22, v12

    const/4 v12, 0x0

    if-eqz v8, :cond_1d

    aget-object v1, v3, v12

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->isAbstract()Z

    move-result v1

    if-eqz v1, :cond_1d

    if-nez v13, :cond_1d

    aget-object v1, v3, v12

    invoke-virtual {v7, v1}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodVerifier;->checkAbstractMethod(Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;)V

    :cond_1d
    :goto_16
    if-gez v10, :cond_1e

    move/from16 v18, v10

    :goto_17
    add-int/lit8 v11, v11, 0x1

    move/from16 v15, v21

    move/from16 v12, v22

    move/from16 v4, v23

    move-object/from16 v1, v24

    goto/16 :goto_e

    :cond_1e
    add-int/lit8 v1, v10, -0x1

    aput-object v17, v3, v10

    move v10, v1

    goto :goto_16

    :cond_1f
    move-object/from16 v24, v1

    move/from16 v23, v4

    move/from16 v22, v12

    move/from16 v21, v15

    const/4 v12, 0x0

    aget-object v1, v2, v6

    if-nez v1, :cond_20

    aget-object v4, v5, v6

    if-ne v13, v1, :cond_21

    if-eqz v13, :cond_21

    :cond_20
    :goto_18
    const/4 v15, 0x1

    goto :goto_19

    :cond_21
    invoke-virtual {v7, v14, v4}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodVerifier15;->canSkipInheritedMethods(Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;)Z

    move-result v1

    if-eqz v1, :cond_22

    goto :goto_18

    :cond_22
    invoke-virtual {v7, v14, v4}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodVerifier15;->findReplacedMethod(Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    move-result-object v1

    if-eqz v1, :cond_23

    add-int/lit8 v10, v10, 0x1

    aput-object v1, v3, v10

    const/4 v15, 0x1

    aput-boolean v15, v24, v6

    goto :goto_19

    :cond_23
    const/4 v15, 0x1

    invoke-virtual {v7, v4, v14}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodVerifier15;->findReplacedMethod(Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    move-result-object v1

    if-eqz v1, :cond_24

    add-int/lit8 v10, v10, 0x1

    aput-object v1, v3, v10

    aput-boolean v15, v24, v6

    goto :goto_19

    :cond_24
    if-nez v13, :cond_25

    invoke-virtual {v7, v14, v4}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodVerifier15;->checkInheritedMethods(Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;)V

    :cond_25
    :goto_19
    add-int/lit8 v6, v6, 0x1

    move/from16 v15, v21

    move/from16 v12, v22

    move/from16 v4, v23

    move-object/from16 v1, v24

    goto/16 :goto_11

    :cond_26
    move-object/from16 v24, v1

    move/from16 v23, v4

    move/from16 v22, v12

    move/from16 v21, v15

    const/4 v12, 0x0

    const/4 v15, 0x1

    aget-object v11, v2, v10

    if-nez v11, :cond_27

    if-eqz v6, :cond_27

    iget-object v1, v7, Lorg/eclipse/jdt/internal/compiler/lookup/MethodVerifier;->type:Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->isPublic()Z

    move-result v1

    if-eqz v1, :cond_27

    aget-object v1, v5, v10

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->isPublic()Z

    move-result v4

    if-eqz v4, :cond_27

    iget-object v4, v1, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->declaringClass:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    invoke-virtual {v4}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->isInterface()Z

    move-result v4

    if-nez v4, :cond_27

    iget-object v4, v1, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->declaringClass:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    invoke-virtual {v4}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->isPublic()Z

    move-result v4

    if-nez v4, :cond_27

    iget-object v4, v7, Lorg/eclipse/jdt/internal/compiler/lookup/MethodVerifier;->type:Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->original()Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    move-result-object v1

    invoke-virtual {v4, v1}, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->addSyntheticBridgeMethod(Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/SyntheticMethodBinding;

    :cond_27
    if-nez v22, :cond_28

    if-nez v11, :cond_28

    if-eqz v6, :cond_28

    aget-object v1, v5, v10

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->original()Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    move-result-object v1

    iget v4, v1, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->modifiers:I

    or-int v4, v4, v16

    iput v4, v1, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->modifiers:I

    :cond_28
    aget-object v13, v5, v10

    add-int/lit8 v14, v10, 0x1

    move v1, v14

    move/from16 v4, v23

    :goto_1a
    if-lt v1, v4, :cond_29

    move v10, v14

    move/from16 v15, v21

    move/from16 v12, v22

    move-object/from16 v1, v24

    goto/16 :goto_d

    :cond_29
    aget-object v12, v5, v1

    aget-object v15, v2, v1

    if-ne v11, v15, :cond_2a

    if-eqz v11, :cond_2a

    :goto_1b
    move-object v15, v0

    move-object/from16 v25, v2

    move-object/from16 v26, v3

    move/from16 v27, v4

    move-object/from16 v28, v5

    move-object/from16 v29, v6

    :goto_1c
    move-object/from16 v23, v24

    move/from16 v24, v1

    goto/16 :goto_1d

    :cond_2a
    invoke-virtual {v7, v13, v12}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodVerifier15;->canSkipInheritedMethods(Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;)Z

    move-result v15

    if-eqz v15, :cond_2b

    goto :goto_1b

    :cond_2b
    iget-object v15, v13, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->declaringClass:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move-object/from16 v23, v0

    iget-object v0, v12, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->declaringClass:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    invoke-static {v15, v0}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->notEquals(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Z

    move-result v0

    if-eqz v0, :cond_2d

    move-object/from16 v15, v23

    move-object/from16 v0, p0

    move-object/from16 v23, v24

    move/from16 v24, v1

    move-object v1, v13

    move-object/from16 v25, v2

    move-object v2, v12

    move-object/from16 v26, v3

    move-object/from16 v3, v23

    move/from16 v27, v4

    move-object v4, v15

    move-object/from16 v28, v5

    move-object v5, v9

    move-object/from16 v29, v6

    move/from16 v6, v24

    invoke-virtual/range {v0 .. v6}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodVerifier15;->isSkippableOrOverridden(Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;[Z[Z[ZI)Z

    move-result v0

    if-eqz v0, :cond_2c

    goto :goto_1d

    :cond_2c
    move-object/from16 v0, p0

    move-object v1, v12

    move-object v2, v13

    move-object/from16 v3, v23

    move-object v4, v15

    move-object v5, v9

    move v6, v10

    invoke-virtual/range {v0 .. v6}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodVerifier15;->isSkippableOrOverridden(Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;[Z[Z[ZI)Z

    goto :goto_1d

    :cond_2d
    move-object/from16 v25, v2

    move-object/from16 v26, v3

    move/from16 v27, v4

    move-object/from16 v28, v5

    move-object/from16 v29, v6

    move-object/from16 v15, v23

    goto :goto_1c

    :goto_1d
    add-int/lit8 v1, v24, 0x1

    move-object v0, v15

    move-object/from16 v24, v23

    move-object/from16 v2, v25

    move-object/from16 v3, v26

    move/from16 v4, v27

    move-object/from16 v5, v28

    move-object/from16 v6, v29

    const/4 v12, 0x0

    const/4 v15, 0x1

    goto/16 :goto_1a
.end method

.method public checkNullSpecInheritance(Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;ZLorg/eclipse/jdt/internal/compiler/lookup/ParameterNonNullDefaultProvider;ZLorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;[Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;Lorg/eclipse/jdt/internal/compiler/lookup/Scope;[Lorg/eclipse/jdt/internal/compiler/lookup/ImplicitNullAnnotationVerifier$InheritedNonNullnessInfo;)V
    .locals 11

    move-object v10, p0

    move-object v1, p1

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->isConstructor()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    and-int v5, p5, v0

    const-wide/16 v2, 0x1000

    if-nez p3, :cond_0

    invoke-interface {p4}, Lorg/eclipse/jdt/internal/compiler/lookup/ParameterNonNullDefaultProvider;->hasAnyNonNullDefault()Z

    move-result v0

    if-nez v0, :cond_0

    if-nez v5, :cond_0

    iget-object v0, v10, Lorg/eclipse/jdt/internal/compiler/lookup/ImplicitNullAnnotationVerifier;->environment:Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    iget-object v0, v0, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->globalOptions:Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;

    iget-boolean v0, v0, Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;->inheritNullAnnotations:Z

    if-nez v0, :cond_0

    iget-wide v4, v1, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->tagBits:J

    or-long/2addr v2, v4

    iput-wide v2, v1, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->tagBits:J

    return-void

    :cond_0
    iget-object v0, v1, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->declaringClass:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    iget-object v4, v10, Lorg/eclipse/jdt/internal/compiler/lookup/MethodVerifier;->type:Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;

    invoke-static {v0, v4}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->notEquals(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-wide v6, v1, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->tagBits:J

    and-long/2addr v2, v6

    const-wide/16 v6, 0x0

    cmp-long v0, v2, v6

    if-nez v0, :cond_1

    iget-object v0, v10, Lorg/eclipse/jdt/internal/compiler/lookup/ImplicitNullAnnotationVerifier;->buddyImplicitNullAnnotationsVerifier:Lorg/eclipse/jdt/internal/compiler/lookup/ImplicitNullAnnotationVerifier;

    move-object v2, p2

    move-object/from16 v8, p8

    invoke-virtual {v0, p1, p2, v5, v8}, Lorg/eclipse/jdt/internal/compiler/lookup/ImplicitNullAnnotationVerifier;->checkImplicitNullAnnotations(Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;ZLorg/eclipse/jdt/internal/compiler/lookup/Scope;)V

    goto :goto_0

    :cond_1
    move-object v2, p2

    move-object/from16 v8, p8

    :goto_0
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    invoke-super/range {v0 .. v9}, Lorg/eclipse/jdt/internal/compiler/lookup/ImplicitNullAnnotationVerifier;->checkNullSpecInheritance(Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;ZLorg/eclipse/jdt/internal/compiler/lookup/ParameterNonNullDefaultProvider;ZLorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;[Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;Lorg/eclipse/jdt/internal/compiler/lookup/Scope;[Lorg/eclipse/jdt/internal/compiler/lookup/ImplicitNullAnnotationVerifier$InheritedNonNullnessInfo;)V

    return-void
.end method

.method public checkTypeVariableMethods(Lorg/eclipse/jdt/internal/compiler/ast/TypeParameter;)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodVerifier;->inheritedMethods:Lorg/eclipse/jdt/internal/compiler/util/HashtableOfObject;

    iget-object v2, v2, Lorg/eclipse/jdt/internal/compiler/util/HashtableOfObject;->keyTable:[[C

    array-length v3, v2

    :goto_0
    const/4 v4, -0x1

    add-int/2addr v3, v4

    if-gez v3, :cond_0

    return-void

    :cond_0
    aget-object v5, v2, v3

    if-nez v5, :cond_1

    goto :goto_0

    :cond_1
    iget-object v5, v0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodVerifier;->inheritedMethods:Lorg/eclipse/jdt/internal/compiler/util/HashtableOfObject;

    iget-object v5, v5, Lorg/eclipse/jdt/internal/compiler/util/HashtableOfObject;->valueTable:[Ljava/lang/Object;

    aget-object v5, v5, v3

    check-cast v5, [Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    array-length v6, v5

    const/4 v7, 0x1

    if-ne v6, v7, :cond_2

    goto :goto_0

    :cond_2
    array-length v6, v5

    new-array v6, v6, [Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    array-length v7, v5

    const/4 v8, 0x0

    move v10, v4

    move v9, v8

    :goto_1
    if-lt v9, v7, :cond_3

    goto :goto_0

    :cond_3
    :goto_2
    const/4 v11, 0x0

    if-gez v10, :cond_11

    aget-object v12, v5, v9

    if-eqz v12, :cond_7

    add-int/lit8 v10, v10, 0x1

    aput-object v12, v6, v10

    add-int/lit8 v13, v9, 0x1

    :goto_3
    if-lt v13, v7, :cond_4

    goto :goto_5

    :cond_4
    aget-object v14, v5, v13

    invoke-virtual {v0, v12, v14}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodVerifier15;->canSkipInheritedMethods(Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;)Z

    move-result v15

    if-eqz v15, :cond_5

    goto :goto_4

    :cond_5
    invoke-virtual {v0, v14, v12}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodVerifier;->computeSubstituteMethod(Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    move-result-object v14

    if-eqz v14, :cond_6

    invoke-virtual {v0, v12, v14}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodVerifier;->isSubstituteParameterSubsignature(Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;)Z

    move-result v15

    if-eqz v15, :cond_6

    add-int/lit8 v10, v10, 0x1

    aput-object v14, v6, v10

    aput-object v11, v5, v13

    :cond_6
    :goto_4
    add-int/lit8 v13, v13, 0x1

    goto :goto_3

    :cond_7
    :goto_5
    if-lez v10, :cond_10

    aget-object v12, v6, v8

    add-int/lit8 v13, v10, 0x1

    move v14, v13

    :goto_6
    add-int/2addr v14, v4

    if-gtz v14, :cond_8

    goto/16 :goto_a

    :cond_8
    aget-object v15, v6, v14

    iget-object v4, v12, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->declaringClass:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    invoke-virtual {v4}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->isInterface()Z

    move-result v4

    if-eqz v4, :cond_9

    move-object/from16 v16, v11

    move-object v4, v12

    goto :goto_7

    :cond_9
    iget-object v4, v12, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->declaringClass:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    invoke-virtual {v4}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->isClass()Z

    move-result v4

    if-eqz v4, :cond_a

    move-object v4, v11

    move-object/from16 v16, v12

    goto :goto_7

    :cond_a
    move-object v4, v11

    move-object/from16 v16, v4

    :goto_7
    iget-object v8, v15, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->declaringClass:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    invoke-virtual {v8}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->isInterface()Z

    move-result v8

    if-eqz v8, :cond_c

    move-object v4, v15

    :cond_b
    move-object/from16 v8, v16

    goto :goto_8

    :cond_c
    iget-object v8, v15, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->declaringClass:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    invoke-virtual {v8}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->isClass()Z

    move-result v8

    if-eqz v8, :cond_b

    move-object v8, v15

    :goto_8
    if-eqz v4, :cond_d

    if-eqz v8, :cond_d

    invoke-virtual {v8}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->isAbstract()Z

    move-result v16

    if-nez v16, :cond_d

    invoke-virtual {v0, v8, v4}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodVerifier;->isAsVisible(Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;)Z

    move-result v16

    if-nez v16, :cond_d

    invoke-virtual/range {p0 .. p0}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodVerifier;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object v11

    filled-new-array {v4}, [Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    move-result-object v4

    invoke-virtual {v11, v1, v8, v4}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->inheritedMethodReducesVisibility(Lorg/eclipse/jdt/internal/compiler/ast/TypeParameter;Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;[Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;)V

    :cond_d
    invoke-virtual {v0, v12, v15}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodVerifier;->areReturnTypesCompatible(Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;)Z

    move-result v4

    if-eqz v4, :cond_e

    goto :goto_9

    :cond_e
    iget-object v4, v12, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->declaringClass:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    invoke-virtual {v4}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->isInterface()Z

    move-result v4

    if-eqz v4, :cond_f

    iget-object v4, v15, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->declaringClass:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    invoke-virtual {v4}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->isInterface()Z

    move-result v4

    if-eqz v4, :cond_f

    invoke-virtual {v0, v15, v12}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodVerifier;->areReturnTypesCompatible(Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;)Z

    move-result v4

    if-eqz v4, :cond_f

    :goto_9
    const/4 v4, -0x1

    const/4 v8, 0x0

    const/4 v11, 0x0

    goto :goto_6

    :cond_f
    :goto_a
    if-lez v14, :cond_10

    invoke-virtual/range {p0 .. p0}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodVerifier;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object v4

    invoke-virtual {v4, v1, v6, v13}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->inheritedMethodsHaveIncompatibleReturnTypes(Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;[Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;I)V

    goto/16 :goto_0

    :cond_10
    add-int/lit8 v9, v9, 0x1

    const/4 v4, -0x1

    const/4 v8, 0x0

    goto/16 :goto_1

    :cond_11
    add-int/lit8 v4, v10, -0x1

    const/4 v8, 0x0

    aput-object v8, v6, v10

    move v10, v4

    const/4 v4, -0x1

    const/4 v8, 0x0

    goto/16 :goto_2
.end method

.method public detectInheritedNameClash(Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;)Z
    .locals 3

    invoke-virtual {p1, p2}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->areParameterErasuresEqual(Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p1, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->returnType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->erasure()Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v0

    iget-object v2, p2, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->returnType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-virtual {v2}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->erasure()Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v2

    invoke-static {v0, v2}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->notEquals(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    :cond_1
    iget-object v0, p1, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->declaringClass:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->erasure()Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v0

    iget-object v2, p2, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->declaringClass:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    invoke-virtual {v2}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->erasure()Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v2

    invoke-static {v0, v2}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->notEquals(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p1, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->declaringClass:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    iget-object v2, p2, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->declaringClass:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    invoke-virtual {v0, v2}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->findSuperTypeOriginatingFrom(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v0

    if-eqz v0, :cond_2

    return v1

    :cond_2
    iget-object v0, p2, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->declaringClass:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    iget-object v2, p1, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->declaringClass:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    invoke-virtual {v0, v2}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->findSuperTypeOriginatingFrom(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v0

    if-eqz v0, :cond_3

    return v1

    :cond_3
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodVerifier;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object v0

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodVerifier;->type:Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;

    invoke-virtual {v0, v1, p1, p2}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->inheritedMethodsHaveNameClash(Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;)V

    const/4 p1, 0x1

    return p1
.end method

.method public detectNameClash(Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;Z)Z
    .locals 7

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->original()Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->areParameterErasuresEqual(Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return v2

    :cond_0
    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ImplicitNullAnnotationVerifier;->environment:Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    iget-object v1, v1, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->globalOptions:Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;

    iget-wide v3, v1, Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;->complianceLevel:J

    const-wide/32 v5, 0x320000

    cmp-long v1, v3, v5

    const/4 v3, 0x1

    if-nez v1, :cond_1

    iget-object v1, p1, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->returnType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->erasure()Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v1

    iget-object v0, v0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->returnType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->erasure()Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v0

    invoke-static {v1, v0}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->notEquals(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v2

    goto :goto_0

    :cond_1
    move v0, v3

    :goto_0
    if-nez p3, :cond_4

    iget-object p3, p0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodVerifier;->currentMethods:Lorg/eclipse/jdt/internal/compiler/util/HashtableOfObject;

    iget-object v1, p2, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->selector:[C

    invoke-virtual {p3, v1}, Lorg/eclipse/jdt/internal/compiler/util/HashtableOfObject;->get([C)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, [Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    array-length v1, p3

    if-le v1, v3, :cond_4

    array-length v1, p3

    move v4, v2

    :goto_1
    if-lt v4, v1, :cond_2

    goto :goto_2

    :cond_2
    aget-object v5, p3, v4

    if-eq v5, p1, :cond_3

    invoke-virtual {p0, v5, p2}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodVerifier;->doesMethodOverride(Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;)Z

    move-result v6

    if-eqz v6, :cond_3

    goto :goto_3

    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_4
    :goto_2
    move-object v5, p2

    :goto_3
    invoke-virtual {v5}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->original()Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    move-result-object p3

    invoke-virtual {p1, p3}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->areParameterErasuresEqual(Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;)Z

    move-result p3

    if-nez p3, :cond_5

    return v2

    :cond_5
    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->original()Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    move-result-object p3

    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodVerifier;->problemReporter(Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;)Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object v1

    iget-object v4, p2, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->declaringClass:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    invoke-virtual {v4}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isRawType()Z

    move-result v4

    if-eqz v4, :cond_6

    goto :goto_4

    :cond_6
    move-object p2, p3

    :goto_4
    invoke-virtual {v1, p1, p2, v0}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->methodNameClash(Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;I)V

    if-nez v0, :cond_7

    return v2

    :cond_7
    return v3
.end method

.method public doTypeVariablesClash(Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;)Z
    .locals 1

    iget-object p1, p1, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->typeVariables:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;

    sget-object v0, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->NO_TYPE_VARIABLES:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;

    if-eq p1, v0, :cond_0

    instance-of p1, p2, Lorg/eclipse/jdt/internal/compiler/lookup/ParameterizedGenericMethodBinding;

    if-nez p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public findReplacedMethod(Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;
    .locals 2

    invoke-virtual {p0, p2, p1}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodVerifier;->computeSubstituteMethod(Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->isAbstract()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->isAbstract()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->isDefaultMethod()Z

    move-result p2

    if-eqz p2, :cond_1

    iget-object p2, p1, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->declaringClass:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->isClass()Z

    move-result p2

    if-eqz p2, :cond_1

    :cond_0
    invoke-virtual {p0, p1, v0}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodVerifier;->isSubstituteParameterSubsignature(Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;)Z

    move-result p1

    if-eqz p1, :cond_1

    return-object v0

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public findSuperinterfaceCollisions(Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;[Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;)Lorg/eclipse/jdt/internal/compiler/util/SimpleSet;
    .locals 10

    sget-object v0, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->NO_SUPERINTERFACES:[Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eq p2, v0, :cond_0

    array-length v0, p2

    goto :goto_0

    :cond_0
    move-object p2, v1

    move v0, v2

    :goto_0
    iget-object v3, p0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodVerifier;->type:Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;

    invoke-virtual {v3}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isHierarchyInconsistent()Z

    move-result v3

    :goto_1
    if-eqz p1, :cond_8

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->isValidBinding()Z

    move-result v4

    if-nez v4, :cond_1

    goto :goto_7

    :cond_1
    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isHierarchyInconsistent()Z

    move-result v4

    or-int/2addr v3, v4

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->superInterfaces()[Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move-result-object v4

    sget-object v5, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->NO_SUPERINTERFACES:[Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    if-eq v4, v5, :cond_7

    if-nez p2, :cond_2

    array-length p2, v4

    move v0, p2

    move-object p2, v4

    goto :goto_6

    :cond_2
    array-length v5, v4

    add-int v6, v0, v5

    array-length v7, p2

    if-lt v6, v7, :cond_3

    add-int/lit8 v6, v6, 0x5

    new-array v6, v6, [Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    invoke-static {p2, v2, v6, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_2

    :cond_3
    move-object v6, p2

    :goto_2
    move v8, v0

    move v7, v2

    :goto_3
    if-lt v7, v5, :cond_4

    move-object p2, v6

    move v0, v8

    goto :goto_6

    :cond_4
    aget-object v9, v4, v7

    move p2, v2

    :goto_4
    if-lt p2, v8, :cond_5

    add-int/lit8 p2, v8, 0x1

    aput-object v9, v6, v8

    move v8, p2

    goto :goto_5

    :cond_5
    aget-object v0, v6, p2

    invoke-static {v9, v0}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->equalsEquals(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Z

    move-result v0

    if-eqz v0, :cond_6

    :goto_5
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    :cond_6
    add-int/lit8 p2, p2, 0x1

    goto :goto_4

    :cond_7
    :goto_6
    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->superclass()Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move-result-object p1

    goto :goto_1

    :cond_8
    :goto_7
    move p1, v2

    :goto_8
    if-lt p1, v0, :cond_f

    if-nez v3, :cond_9

    return-object v1

    :cond_9
    :goto_9
    if-lt v2, v0, :cond_a

    return-object v1

    :cond_a
    aget-object p1, p2, v2

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->isValidBinding()Z

    move-result v3

    if-eqz v3, :cond_e

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->erasure()Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object p1

    add-int/lit8 v3, v2, 0x1

    :goto_a
    if-lt v3, v0, :cond_b

    goto :goto_b

    :cond_b
    aget-object v4, p2, v3

    invoke-virtual {v4}, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->isValidBinding()Z

    move-result v5

    if-eqz v5, :cond_d

    invoke-virtual {v4}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->erasure()Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v4

    invoke-static {v4, p1}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->equalsEquals(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Z

    move-result v4

    if-eqz v4, :cond_d

    if-nez v1, :cond_c

    new-instance v1, Lorg/eclipse/jdt/internal/compiler/util/SimpleSet;

    invoke-direct {v1, v0}, Lorg/eclipse/jdt/internal/compiler/util/SimpleSet;-><init>(I)V

    :cond_c
    aget-object v4, p2, v2

    invoke-virtual {v1, v4}, Lorg/eclipse/jdt/internal/compiler/util/SimpleSet;->add(Ljava/lang/Object;)Ljava/lang/Object;

    aget-object v4, p2, v3

    invoke-virtual {v1, v4}, Lorg/eclipse/jdt/internal/compiler/util/SimpleSet;->add(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_d
    add-int/lit8 v3, v3, 0x1

    goto :goto_a

    :cond_e
    :goto_b
    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    :cond_f
    aget-object v4, p2, p1

    invoke-virtual {v4}, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->isValidBinding()Z

    move-result v5

    if-eqz v5, :cond_14

    invoke-virtual {v4}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isHierarchyInconsistent()Z

    move-result v5

    or-int/2addr v3, v5

    invoke-virtual {v4}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->superInterfaces()[Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move-result-object v4

    sget-object v5, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->NO_SUPERINTERFACES:[Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    if-eq v4, v5, :cond_14

    array-length v5, v4

    add-int v6, v0, v5

    array-length v7, p2

    if-lt v6, v7, :cond_10

    add-int/lit8 v6, v6, 0x5

    new-array v6, v6, [Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    invoke-static {p2, v2, v6, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_c

    :cond_10
    move-object v6, p2

    :goto_c
    move v8, v0

    move v7, v2

    :goto_d
    if-lt v7, v5, :cond_11

    move-object p2, v6

    move v0, v8

    goto :goto_10

    :cond_11
    aget-object v9, v4, v7

    move p2, v2

    :goto_e
    if-lt p2, v8, :cond_12

    add-int/lit8 p2, v8, 0x1

    aput-object v9, v6, v8

    move v8, p2

    goto :goto_f

    :cond_12
    aget-object v0, v6, p2

    invoke-static {v9, v0}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->equalsEquals(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Z

    move-result v0

    if-eqz v0, :cond_13

    :goto_f
    add-int/lit8 v7, v7, 0x1

    goto :goto_d

    :cond_13
    add-int/lit8 p2, p2, 0x1

    goto :goto_e

    :cond_14
    :goto_10
    add-int/lit8 p1, p1, 0x1

    goto/16 :goto_8
.end method

.method public isAcceptableReturnTypeOverride(Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;)Z
    .locals 5

    iget-object v0, p2, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->declaringClass:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isRawType()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->original()Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    move-result-object v0

    iget-object v2, v0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->returnType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-virtual {v2}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->leafComponentType()Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v2

    invoke-virtual {v2}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isParameterizedTypeWithActualArguments()Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object p1, p1, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->returnType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->leafComponentType()Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object p1

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isRawType()Z

    move-result p1

    xor-int/2addr p1, v1

    return p1

    :cond_1
    iget-object p1, p1, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->returnType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->leafComponentType()Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object p1

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->kind()I

    move-result v3

    const/16 v4, 0x1004

    if-eq v3, v4, :cond_2

    goto :goto_0

    :cond_2
    iget-object p2, p2, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->returnType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->leafComponentType()Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object p2

    invoke-static {p1, p2}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->equalsEquals(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Z

    move-result p1

    if-eqz p1, :cond_3

    return v1

    :cond_3
    :goto_0
    invoke-virtual {v2}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isTypeVariable()Z

    move-result p1

    if-eqz p1, :cond_4

    check-cast v2, Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;

    iget-object p1, v2, Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;->declaringElement:Lorg/eclipse/jdt/internal/compiler/lookup/Binding;

    if-ne p1, v0, :cond_4

    const/4 p1, 0x0

    return p1

    :cond_4
    return v1
.end method

.method public isInterfaceMethodImplemented(Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;)Z
    .locals 2

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->original()Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    move-result-object p3

    const/4 v0, 0x0

    if-eq p3, p1, :cond_0

    iget-object p3, p2, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->declaringClass:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    invoke-virtual {p3}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->isInterface()Z

    move-result p3

    if-eqz p3, :cond_0

    return v0

    :cond_0
    invoke-virtual {p0, p1, p2}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodVerifier;->computeSubstituteMethod(Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    move-result-object p1

    if-eqz p1, :cond_4

    invoke-virtual {p0, p2, p1}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodVerifier;->doesMethodOverride(Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;)Z

    move-result p3

    if-nez p3, :cond_1

    goto :goto_0

    :cond_1
    iget-object p3, p1, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->returnType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    iget-object v1, p2, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->returnType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-static {p3, v1}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->equalsEquals(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Z

    move-result p3

    if-nez p3, :cond_3

    iget-object p3, p0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodVerifier;->type:Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;

    iget-object v1, p2, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->declaringClass:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    invoke-static {p3, v1}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->notEquals(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Z

    move-result p3

    if-eqz p3, :cond_2

    iget-object p3, p2, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->declaringClass:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    invoke-virtual {p3}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->isInterface()Z

    move-result p3

    if-nez p3, :cond_2

    invoke-virtual {p0, p2, p1}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodVerifier;->areReturnTypesCompatible(Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;)Z

    move-result p1

    if-nez p1, :cond_3

    :cond_2
    return v0

    :cond_3
    const/4 p1, 0x1

    return p1

    :cond_4
    :goto_0
    return v0
.end method

.method public isMethodSubsignature(Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;)Z
    .locals 2

    iget-object v0, p1, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->selector:[C

    iget-object v1, p2, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->selector:[C

    invoke-static {v0, v1}, Lorg/eclipse/jdt/core/compiler/CharOperation;->equals([C[C)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    iget-object v0, p1, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->declaringClass:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isParameterizedType()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->original()Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    move-result-object p1

    :cond_1
    invoke-virtual {p1, p2}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->findOriginalInheritedMethod(Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    move-result-object v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    move-object p2, v0

    :goto_0
    invoke-virtual {p0, p1, p2}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodVerifier;->isParameterSubsignature(Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;)Z

    move-result p1

    return p1
.end method

.method public isSkippableOrOverridden(Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;[Z[Z[ZI)Z
    .locals 4

    iget-object v0, p1, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->declaringClass:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->isInterface()Z

    move-result v0

    iget-object v1, p2, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->declaringClass:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->isInterface()Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v0, :cond_1

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->isAbstract()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0, p1, p2}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodVerifier;->isParameterSubsignature(Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;)Z

    move-result v0

    if-eqz v0, :cond_0

    aput-boolean v2, p5, p6

    return v3

    :cond_0
    iget-object p5, p2, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->declaringClass:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    invoke-virtual {p0, p2, p1, p5}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodVerifier15;->isInterfaceMethodImplemented(Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;)Z

    move-result p1

    if-eqz p1, :cond_2

    aput-boolean v3, p3, p6

    aput-boolean v3, p4, p6

    return v3

    :cond_1
    if-ne v0, v1, :cond_2

    iget-object p5, p1, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->declaringClass:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    iget-object v0, p2, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->declaringClass:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    invoke-virtual {p5, v0}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isCompatibleWith(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Z

    move-result p5

    if-eqz p5, :cond_2

    invoke-virtual {p0, p1, p2}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodVerifier15;->isMethodSubsignature(Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;)Z

    move-result p1

    if-eqz p1, :cond_2

    aput-boolean v3, p3, p6

    aput-boolean v3, p4, p6

    return v3

    :cond_2
    return v2
.end method

.method public isUnsafeReturnTypeOverride(Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;)Z
    .locals 8

    iget-object v0, p1, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->returnType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    iget-object v1, p2, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->returnType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->erasure()Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->equalsEquals(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    iget-object v0, p1, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->parameters:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    iget-object v3, p2, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->parameters:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    array-length v4, v0

    move v5, v1

    :goto_0
    if-lt v5, v4, :cond_0

    goto :goto_1

    :cond_0
    aget-object v6, v0, v5

    aget-object v7, v3, v5

    invoke-static {v6, v7}, Lorg/eclipse/jdt/internal/compiler/lookup/ImplicitNullAnnotationVerifier;->areTypesEqual(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Z

    move-result v6

    if-nez v6, :cond_1

    return v2

    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    iget-object v0, p1, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->typeVariables:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;

    sget-object v3, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->NO_TYPE_VARIABLES:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;

    if-ne v0, v3, :cond_3

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->original()Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    move-result-object v0

    iget-object v0, v0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->typeVariables:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;

    if-eq v0, v3, :cond_3

    iget-object p1, p1, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->returnType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->erasure()Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object p1

    iget-object p2, p2, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->returnType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->erasure()Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->findSuperTypeOriginatingFrom(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object p1

    if-eqz p1, :cond_3

    return v2

    :cond_3
    return v1
.end method

.method public reportIncompatibleReturnTypeError(Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;)Z
    .locals 2

    invoke-virtual {p0, p1, p2}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodVerifier15;->isUnsafeReturnTypeOverride(Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodVerifier;->problemReporter(Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;)Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object v0

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodVerifier;->type:Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;

    invoke-virtual {v0, p1, p2, v1}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->unsafeReturnTypeOverride(Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;)V

    const/4 p1, 0x0

    return p1

    :cond_0
    invoke-super {p0, p1, p2}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodVerifier;->reportIncompatibleReturnTypeError(Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;)Z

    move-result p1

    return p1
.end method

.method public reportRawReferences()V
    .locals 17

    move-object/from16 v0, p0

    .line 1
    iget-object v1, v0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodVerifier;->type:Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;

    iget-object v1, v1, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->scope:Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->compilerOptions()Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;

    move-result-object v1

    .line 2
    iget-wide v2, v1, Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;->sourceLevel:J

    const-wide/32 v4, 0x310000

    cmp-long v2, v2, v4

    if-ltz v2, :cond_8

    .line 3
    iget-boolean v2, v1, Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;->reportUnavoidableGenericTypeProblems:Z

    if-eqz v2, :cond_0

    goto/16 :goto_4

    .line 4
    :cond_0
    iget-object v2, v0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodVerifier;->currentMethods:Lorg/eclipse/jdt/internal/compiler/util/HashtableOfObject;

    iget-object v2, v2, Lorg/eclipse/jdt/internal/compiler/util/HashtableOfObject;->valueTable:[Ljava/lang/Object;

    .line 5
    array-length v3, v2

    :goto_0
    add-int/lit8 v3, v3, -0x1

    if-gez v3, :cond_1

    return-void

    .line 6
    :cond_1
    aget-object v4, v2, v3

    if-nez v4, :cond_2

    goto :goto_0

    .line 7
    :cond_2
    check-cast v4, [Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    .line 8
    array-length v5, v4

    const/4 v7, 0x0

    :goto_1
    if-lt v7, v5, :cond_3

    goto :goto_0

    .line 9
    :cond_3
    aget-object v8, v4, v7

    .line 10
    iget v9, v8, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->modifiers:I

    const/high16 v10, 0x30000000

    and-int/2addr v9, v10

    if-nez v9, :cond_7

    .line 11
    invoke-virtual {v8}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->sourceMethod()Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;

    move-result-object v9

    if-nez v9, :cond_4

    return-void

    .line 12
    :cond_4
    iget-object v10, v8, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->parameters:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    .line 13
    iget-object v11, v9, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->arguments:[Lorg/eclipse/jdt/internal/compiler/ast/Argument;

    .line 14
    array-length v12, v10

    const/4 v13, 0x0

    :goto_2
    const/high16 v14, 0x40000000    # 2.0f

    const/16 v15, 0x100

    const/high16 v6, 0x20010000

    if-lt v13, v12, :cond_5

    .line 15
    invoke-virtual {v9}, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->isConstructor()Z

    move-result v10

    if-nez v10, :cond_7

    instance-of v10, v9, Lorg/eclipse/jdt/internal/compiler/ast/MethodDeclaration;

    if-eqz v10, :cond_7

    .line 16
    move-object v10, v9

    check-cast v10, Lorg/eclipse/jdt/internal/compiler/ast/MethodDeclaration;

    iget-object v10, v10, Lorg/eclipse/jdt/internal/compiler/ast/MethodDeclaration;->returnType:Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    .line 17
    iget-object v8, v8, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->returnType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    if-eqz v10, :cond_7

    .line 18
    invoke-virtual {v8}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->leafComponentType()Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v11

    invoke-virtual {v11}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isRawType()Z

    move-result v11

    if-eqz v11, :cond_7

    .line 19
    invoke-virtual {v1, v6}, Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;->getSeverity(I)I

    move-result v6

    if-eq v6, v15, :cond_7

    .line 20
    iget v6, v10, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->bits:I

    and-int/2addr v6, v14

    if-nez v6, :cond_7

    .line 21
    iget-object v6, v9, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->scope:Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;

    invoke-virtual {v6}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object v6

    invoke-virtual {v6, v10, v8}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->rawTypeReference(Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)V

    goto :goto_3

    .line 22
    :cond_5
    aget-object v14, v10, v13

    .line 23
    aget-object v15, v11, v13

    .line 24
    invoke-virtual {v14}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->leafComponentType()Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isRawType()Z

    move-result v16

    if-eqz v16, :cond_6

    .line 25
    invoke-virtual {v1, v6}, Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;->getSeverity(I)I

    move-result v6

    const/16 v0, 0x100

    if-eq v6, v0, :cond_6

    .line 26
    iget-object v0, v15, Lorg/eclipse/jdt/internal/compiler/ast/AbstractVariableDeclaration;->type:Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    iget v0, v0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->bits:I

    const/high16 v6, 0x40000000    # 2.0f

    and-int/2addr v0, v6

    if-nez v0, :cond_6

    .line 27
    iget-object v0, v9, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->scope:Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object v0

    iget-object v6, v15, Lorg/eclipse/jdt/internal/compiler/ast/AbstractVariableDeclaration;->type:Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    invoke-virtual {v0, v6, v14}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->rawTypeReference(Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)V

    :cond_6
    add-int/lit8 v13, v13, 0x1

    move-object/from16 v0, p0

    goto :goto_2

    :cond_7
    :goto_3
    add-int/lit8 v7, v7, 0x1

    move-object/from16 v0, p0

    goto/16 :goto_1

    :cond_8
    :goto_4
    return-void
.end method

.method public reportRawReferences(Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;)V
    .locals 17

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    .line 28
    iget-object v3, v1, Lorg/eclipse/jdt/internal/compiler/lookup/MethodVerifier;->type:Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;

    iget-object v3, v3, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->scope:Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;

    invoke-virtual {v3}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->compilerOptions()Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;

    move-result-object v3

    .line 29
    iget-wide v4, v3, Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;->sourceLevel:J

    const-wide/32 v6, 0x310000

    cmp-long v4, v4, v6

    if-ltz v4, :cond_6

    .line 30
    iget-boolean v4, v3, Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;->reportUnavoidableGenericTypeProblems:Z

    if-eqz v4, :cond_0

    goto/16 :goto_2

    .line 31
    :cond_0
    invoke-virtual/range {p1 .. p1}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->sourceMethod()Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;

    move-result-object v4

    if-nez v4, :cond_1

    return-void

    .line 32
    :cond_1
    iget-object v5, v0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->parameters:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    .line 33
    iget-object v6, v2, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->parameters:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    .line 34
    iget-object v7, v4, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->arguments:[Lorg/eclipse/jdt/internal/compiler/ast/Argument;

    .line 35
    array-length v8, v5

    const/4 v9, 0x0

    :goto_0
    const/16 v10, 0x100

    const/high16 v11, 0x20010000

    const/high16 v12, 0x40000000    # 2.0f

    if-lt v9, v8, :cond_3

    .line 36
    invoke-virtual {v4}, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->isConstructor()Z

    move-result v5

    if-nez v5, :cond_2

    instance-of v5, v4, Lorg/eclipse/jdt/internal/compiler/ast/MethodDeclaration;

    if-eqz v5, :cond_2

    move-object v5, v4

    check-cast v5, Lorg/eclipse/jdt/internal/compiler/ast/MethodDeclaration;

    iget-object v5, v5, Lorg/eclipse/jdt/internal/compiler/ast/MethodDeclaration;->returnType:Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    if-eqz v5, :cond_2

    .line 37
    iget-object v2, v2, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->returnType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    .line 38
    iget-object v0, v0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->returnType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    .line 39
    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->leafComponentType()Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v6

    invoke-virtual {v6}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isRawType()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 40
    invoke-virtual {v2}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->leafComponentType()Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v2

    invoke-virtual {v2}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isRawType()Z

    move-result v2

    if-nez v2, :cond_2

    .line 41
    iget v2, v5, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->bits:I

    and-int/2addr v2, v12

    if-nez v2, :cond_2

    .line 42
    invoke-virtual {v3, v11}, Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;->getSeverity(I)I

    move-result v2

    if-eq v2, v10, :cond_2

    .line 43
    iget-object v2, v4, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->scope:Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;

    invoke-virtual {v2}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object v2

    invoke-virtual {v2, v5, v0}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->rawTypeReference(Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)V

    :cond_2
    return-void

    .line 44
    :cond_3
    aget-object v13, v5, v9

    .line 45
    aget-object v14, v6, v9

    .line 46
    aget-object v15, v7, v9

    .line 47
    invoke-virtual {v13}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->leafComponentType()Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isRawType()Z

    move-result v16

    if-eqz v16, :cond_5

    .line 48
    invoke-virtual {v14}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->leafComponentType()Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v14

    invoke-virtual {v14}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isRawType()Z

    move-result v14

    if-eqz v14, :cond_4

    .line 49
    iget-object v10, v15, Lorg/eclipse/jdt/internal/compiler/ast/LocalDeclaration;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;

    iget-wide v11, v10, Lorg/eclipse/jdt/internal/compiler/lookup/VariableBinding;->tagBits:J

    const-wide/16 v13, 0x200

    or-long/2addr v11, v13

    iput-wide v11, v10, Lorg/eclipse/jdt/internal/compiler/lookup/VariableBinding;->tagBits:J

    goto :goto_1

    .line 50
    :cond_4
    invoke-virtual {v3, v11}, Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;->getSeverity(I)I

    move-result v11

    if-eq v11, v10, :cond_5

    .line 51
    iget-object v10, v15, Lorg/eclipse/jdt/internal/compiler/ast/AbstractVariableDeclaration;->type:Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    iget v10, v10, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->bits:I

    and-int/2addr v10, v12

    if-nez v10, :cond_5

    .line 52
    iget-object v10, v4, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->scope:Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;

    invoke-virtual {v10}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object v10

    iget-object v11, v15, Lorg/eclipse/jdt/internal/compiler/ast/AbstractVariableDeclaration;->type:Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    invoke-virtual {v10, v11, v13}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->rawTypeReference(Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)V

    :cond_5
    :goto_1
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_0

    :cond_6
    :goto_2
    return-void
.end method

.method public verify()V
    .locals 7

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodVerifier;->type:Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->isAnnotationType()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodVerifier;->type:Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->detectAnnotationCycle()Z

    :cond_0
    invoke-super {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodVerifier;->verify()V

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodVerifier15;->reportRawReferences()V

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodVerifier;->type:Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;

    iget-object v0, v0, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->typeVariables:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;

    array-length v0, v0

    :goto_0
    add-int/lit8 v0, v0, -0x1

    if-gez v0, :cond_1

    return-void

    :cond_1
    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodVerifier;->type:Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;

    iget-object v1, v1, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->typeVariables:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;

    aget-object v1, v1, v0

    iget-object v2, v1, Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;->superInterfaces:[Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    sget-object v3, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->NO_SUPERINTERFACES:[Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    if-ne v2, v3, :cond_2

    goto :goto_0

    :cond_2
    array-length v2, v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_3

    iget-object v2, v1, Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;->superclass:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    iget v2, v2, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->id:I

    if-ne v2, v3, :cond_3

    goto :goto_0

    :cond_3
    new-instance v2, Lorg/eclipse/jdt/internal/compiler/util/HashtableOfObject;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lorg/eclipse/jdt/internal/compiler/util/HashtableOfObject;-><init>(I)V

    iput-object v2, p0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodVerifier;->currentMethods:Lorg/eclipse/jdt/internal/compiler/util/HashtableOfObject;

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;->superclass()Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move-result-object v2

    invoke-virtual {v2}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->kind()I

    move-result v3

    const/16 v4, 0x1004

    if-ne v3, v4, :cond_4

    invoke-virtual {v2}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->erasure()Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v2

    check-cast v2, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    :cond_4
    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;->superInterfaces()[Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move-result-object v1

    array-length v3, v1

    new-array v3, v3, [Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    array-length v5, v1

    :goto_1
    add-int/lit8 v5, v5, -0x1

    if-gez v5, :cond_5

    invoke-virtual {p0, v2, v3}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodVerifier;->computeInheritedMethods(Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;[Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;)V

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodVerifier;->type:Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;

    iget-object v1, v1, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->scope:Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;

    iget-object v1, v1, Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;->referenceContext:Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;

    iget-object v1, v1, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->typeParameters:[Lorg/eclipse/jdt/internal/compiler/ast/TypeParameter;

    aget-object v1, v1, v0

    invoke-virtual {p0, v1}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodVerifier15;->checkTypeVariableMethods(Lorg/eclipse/jdt/internal/compiler/ast/TypeParameter;)V

    goto :goto_0

    :cond_5
    aget-object v6, v1, v5

    invoke-virtual {v6}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->kind()I

    move-result v6

    if-ne v6, v4, :cond_6

    aget-object v6, v1, v5

    invoke-virtual {v6}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->erasure()Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v6

    check-cast v6, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    goto :goto_2

    :cond_6
    aget-object v6, v1, v5

    :goto_2
    aput-object v6, v3, v5

    goto :goto_1
.end method
