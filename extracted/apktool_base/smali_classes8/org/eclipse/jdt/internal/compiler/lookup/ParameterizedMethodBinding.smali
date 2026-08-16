.class public Lorg/eclipse/jdt/internal/compiler/lookup/ParameterizedMethodBinding;
.super Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;
.source "SourceFile"


# instance fields
.field protected originalMethod:Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 118
    invoke-direct {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;-><init>()V

    return-void
.end method

.method public constructor <init>(Lorg/eclipse/jdt/internal/compiler/lookup/ParameterizedTypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;)V
    .locals 17

    move-object/from16 v7, p0

    move-object/from16 v8, p1

    move-object/from16 v9, p2

    .line 1
    iget v1, v9, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->modifiers:I

    .line 2
    iget-object v2, v9, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->selector:[C

    .line 3
    iget-object v3, v9, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->returnType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    .line 4
    iget-object v4, v9, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->parameters:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    .line 5
    iget-object v5, v9, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->thrownExceptions:[Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move-object/from16 v0, p0

    move-object/from16 v6, p1

    .line 6
    invoke-direct/range {v0 .. v6}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;-><init>(I[CLorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;[Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;)V

    .line 7
    iput-object v9, v7, Lorg/eclipse/jdt/internal/compiler/lookup/ParameterizedMethodBinding;->originalMethod:Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    .line 8
    iget-wide v0, v9, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->tagBits:J

    const-wide/16 v2, -0x81

    and-long/2addr v0, v2

    iput-wide v0, v7, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->tagBits:J

    .line 9
    iget-object v0, v9, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->parameterNonNullness:[Ljava/lang/Boolean;

    iput-object v0, v7, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->parameterNonNullness:[Ljava/lang/Boolean;

    .line 10
    iget v0, v9, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->defaultNullness:I

    iput v0, v7, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->defaultNullness:I

    .line 11
    iget-object v10, v9, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->typeVariables:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;

    .line 12
    array-length v11, v10

    .line 13
    invoke-virtual/range {p2 .. p2}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->isStatic()Z

    move-result v3

    const/4 v9, 0x1

    const/4 v12, 0x0

    const/4 v13, 0x0

    if-nez v11, :cond_0

    .line 14
    sget-object v0, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->NO_TYPE_VARIABLES:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;

    iput-object v0, v7, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->typeVariables:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;

    if-nez v3, :cond_1

    move-object v13, v8

    goto :goto_2

    .line 15
    :cond_0
    new-array v14, v11, [Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;

    move v0, v12

    :goto_0
    if-lt v0, v11, :cond_14

    .line 16
    iput-object v14, v7, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->typeVariables:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;

    .line 17
    new-instance v15, Lorg/eclipse/jdt/internal/compiler/lookup/ParameterizedMethodBinding$1;

    move-object v0, v15

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move v4, v11

    move-object v5, v10

    move-object v6, v14

    invoke-direct/range {v0 .. v6}, Lorg/eclipse/jdt/internal/compiler/lookup/ParameterizedMethodBinding$1;-><init>(Lorg/eclipse/jdt/internal/compiler/lookup/ParameterizedMethodBinding;Lorg/eclipse/jdt/internal/compiler/lookup/ParameterizedTypeBinding;ZI[Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;[Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;)V

    move v0, v12

    :goto_1
    if-lt v0, v11, :cond_f

    move-object v13, v15

    :cond_1
    :goto_2
    const-wide/16 v1, 0x0

    if-eqz v13, :cond_8

    .line 18
    iget-object v0, v7, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->returnType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-static {v13, v0}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->substitute(Lorg/eclipse/jdt/internal/compiler/lookup/Substitution;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v0

    iput-object v0, v7, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->returnType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    .line 19
    iget-object v0, v7, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->parameters:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-static {v13, v0}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->substitute(Lorg/eclipse/jdt/internal/compiler/lookup/Substitution;[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v0

    iput-object v0, v7, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->parameters:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    .line 20
    iget-object v0, v7, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->thrownExceptions:[Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    invoke-static {v13, v0}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->substitute(Lorg/eclipse/jdt/internal/compiler/lookup/Substitution;[Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;)[Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move-result-object v0

    iput-object v0, v7, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->thrownExceptions:[Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    if-nez v0, :cond_2

    .line 21
    sget-object v0, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->NO_EXCEPTIONS:[Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    iput-object v0, v7, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->thrownExceptions:[Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    .line 22
    :cond_2
    iget-object v0, v8, Lorg/eclipse/jdt/internal/compiler/lookup/ParameterizedTypeBinding;->environment:Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    iget-object v0, v0, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->globalOptions:Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;

    iget-boolean v0, v0, Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;->isAnnotationBasedNullAnalysisEnabled:Z

    if-eqz v0, :cond_8

    .line 23
    iget-object v0, v7, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->returnType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    iget-wide v3, v0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->tagBits:J

    invoke-static {v3, v4}, Lorg/eclipse/jdt/internal/compiler/ast/NullAnnotationMatching;->validNullTagBits(J)J

    move-result-wide v3

    cmp-long v0, v3, v1

    if-eqz v0, :cond_3

    .line 24
    iget-wide v5, v7, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->tagBits:J

    const-wide v10, -0x180000000000001L

    and-long/2addr v5, v10

    or-long/2addr v3, v5

    .line 25
    iput-wide v3, v7, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->tagBits:J

    .line 26
    :cond_3
    iget-object v0, v7, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->parameters:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    array-length v0, v0

    move v3, v12

    :goto_3
    if-lt v3, v0, :cond_4

    goto :goto_5

    .line 27
    :cond_4
    iget-object v4, v7, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->parameters:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    aget-object v4, v4, v3

    iget-wide v4, v4, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->tagBits:J

    invoke-static {v4, v5}, Lorg/eclipse/jdt/internal/compiler/ast/NullAnnotationMatching;->validNullTagBits(J)J

    move-result-wide v4

    cmp-long v6, v4, v1

    if-eqz v6, :cond_7

    .line 28
    iget-object v6, v7, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->parameterNonNullness:[Ljava/lang/Boolean;

    if-nez v6, :cond_5

    .line 29
    new-array v6, v0, [Ljava/lang/Boolean;

    iput-object v6, v7, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->parameterNonNullness:[Ljava/lang/Boolean;

    .line 30
    :cond_5
    iget-object v6, v7, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->parameterNonNullness:[Ljava/lang/Boolean;

    const-wide/high16 v10, 0x100000000000000L

    cmp-long v4, v4, v10

    if-nez v4, :cond_6

    move v4, v9

    goto :goto_4

    :cond_6
    move v4, v12

    :goto_4
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v6, v3

    :cond_7
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 31
    :cond_8
    :goto_5
    iget-wide v3, v7, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->tagBits:J

    const-wide/16 v5, 0x80

    and-long v8, v3, v5

    cmp-long v0, v8, v1

    if-eqz v0, :cond_9

    goto :goto_8

    .line 32
    :cond_9
    iget-object v0, v7, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->returnType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    iget-wide v8, v0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->tagBits:J

    and-long/2addr v8, v5

    cmp-long v0, v8, v1

    if-eqz v0, :cond_a

    or-long v0, v3, v5

    .line 33
    iput-wide v0, v7, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->tagBits:J

    goto :goto_8

    .line 34
    :cond_a
    iget-object v0, v7, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->parameters:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    array-length v3, v0

    move v0, v12

    :goto_6
    if-lt v0, v3, :cond_d

    .line 35
    iget-object v0, v7, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->thrownExceptions:[Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    array-length v4, v0

    :goto_7
    if-lt v12, v4, :cond_b

    goto :goto_8

    .line 36
    :cond_b
    iget-object v0, v7, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->thrownExceptions:[Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    aget-object v0, v0, v12

    iget-wide v8, v0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->tagBits:J

    and-long/2addr v8, v5

    cmp-long v0, v8, v1

    if-eqz v0, :cond_c

    .line 37
    iget-wide v0, v7, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->tagBits:J

    or-long/2addr v0, v5

    iput-wide v0, v7, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->tagBits:J

    goto :goto_8

    :cond_c
    add-int/lit8 v12, v12, 0x1

    goto :goto_7

    .line 38
    :cond_d
    iget-object v4, v7, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->parameters:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    aget-object v4, v4, v0

    iget-wide v8, v4, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->tagBits:J

    and-long/2addr v8, v5

    cmp-long v4, v8, v1

    if-eqz v4, :cond_e

    .line 39
    iget-wide v0, v7, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->tagBits:J

    or-long/2addr v0, v5

    iput-wide v0, v7, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->tagBits:J

    :goto_8
    return-void

    :cond_e
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 40
    :cond_f
    aget-object v1, v10, v0

    .line 41
    aget-object v2, v14, v0

    .line 42
    iget-object v3, v1, Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;->superclass:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    invoke-static {v15, v3}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->substitute(Lorg/eclipse/jdt/internal/compiler/lookup/Substitution;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v3

    .line 43
    iget-object v4, v1, Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;->superInterfaces:[Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    invoke-static {v15, v4}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->substitute(Lorg/eclipse/jdt/internal/compiler/lookup/Substitution;[Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;)[Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move-result-object v4

    .line 44
    iget-object v5, v1, Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;->firstBound:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    if-eqz v5, :cond_11

    .line 45
    iget-object v1, v1, Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;->superclass:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    invoke-static {v5, v1}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->equalsEquals(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Z

    move-result v1

    if-eqz v1, :cond_10

    move-object v1, v3

    goto :goto_9

    .line 46
    :cond_10
    aget-object v1, v4, v12

    .line 47
    :goto_9
    invoke-virtual {v2, v1}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;->setFirstBound(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    .line 48
    :cond_11
    invoke-virtual {v3}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->kind()I

    move-result v1

    const/16 v5, 0x44

    if-eq v1, v5, :cond_13

    .line 49
    invoke-virtual {v3}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isInterface()Z

    move-result v1

    if-eqz v1, :cond_12

    .line 50
    iget-object v1, v8, Lorg/eclipse/jdt/internal/compiler/lookup/ParameterizedTypeBinding;->environment:Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    sget-object v5, Lorg/eclipse/jdt/internal/compiler/lookup/TypeConstants;->JAVA_LANG_OBJECT:[[C

    invoke-virtual {v1, v5, v13}, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->getResolvedType([[CLorg/eclipse/jdt/internal/compiler/lookup/Scope;)Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move-result-object v1

    invoke-virtual {v2, v1}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;->setSuperClass(Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    .line 51
    array-length v1, v4

    add-int/lit8 v5, v1, 0x1

    .line 52
    new-array v5, v5, [Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    invoke-static {v4, v12, v5, v9, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 53
    check-cast v3, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    aput-object v3, v5, v12

    .line 54
    invoke-virtual {v2, v5}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;->setSuperInterfaces([Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;)[Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    goto :goto_a

    .line 55
    :cond_12
    check-cast v3, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    invoke-virtual {v2, v3}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;->setSuperClass(Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    .line 56
    invoke-virtual {v2, v4}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;->setSuperInterfaces([Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;)[Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    goto :goto_a

    .line 57
    :cond_13
    iget-object v1, v8, Lorg/eclipse/jdt/internal/compiler/lookup/ParameterizedTypeBinding;->environment:Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    sget-object v3, Lorg/eclipse/jdt/internal/compiler/lookup/TypeConstants;->JAVA_LANG_OBJECT:[[C

    invoke-virtual {v1, v3, v13}, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->getResolvedJavaBaseType([[CLorg/eclipse/jdt/internal/compiler/lookup/Scope;)Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move-result-object v1

    invoke-virtual {v2, v1}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;->setSuperClass(Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    .line 58
    invoke-virtual {v2, v4}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;->setSuperInterfaces([Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;)[Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    :goto_a
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_1

    .line 59
    :cond_14
    aget-object v1, v10, v0

    .line 60
    new-instance v2, Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;

    iget-object v4, v1, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->sourceName:[C

    iget v5, v1, Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;->rank:I

    iget-object v6, v8, Lorg/eclipse/jdt/internal/compiler/lookup/ParameterizedTypeBinding;->environment:Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    invoke-direct {v2, v4, v7, v5, v6}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;-><init>([CLorg/eclipse/jdt/internal/compiler/lookup/Binding;ILorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;)V

    aput-object v2, v14, v0

    .line 61
    iget-wide v4, v2, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->tagBits:J

    move-object v6, v10

    iget-wide v9, v1, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->tagBits:J

    const-wide v15, 0x180000000100000L

    and-long/2addr v9, v15

    or-long/2addr v4, v9

    iput-wide v4, v2, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->tagBits:J

    add-int/lit8 v0, v0, 0x1

    move-object v10, v6

    const/4 v9, 0x1

    goto/16 :goto_0
.end method

.method public constructor <init>(Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;[[CLorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;)V
    .locals 17

    move-object/from16 v7, p0

    move-object/from16 v8, p2

    move-object/from16 v9, p4

    .line 62
    iget v1, v8, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->modifiers:I

    .line 63
    iget-object v2, v8, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->selector:[C

    .line 64
    iget-object v3, v8, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->returnType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    .line 65
    iget-object v4, v8, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->parameters:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    .line 66
    iget-object v5, v8, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->thrownExceptions:[Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move-object/from16 v0, p0

    move-object/from16 v6, p1

    .line 67
    invoke-direct/range {v0 .. v6}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;-><init>(I[CLorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;[Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;)V

    .line 68
    iput-object v8, v7, Lorg/eclipse/jdt/internal/compiler/lookup/ParameterizedMethodBinding;->originalMethod:Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    .line 69
    iget-wide v0, v8, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->tagBits:J

    const-wide/16 v2, -0x81

    and-long/2addr v0, v2

    iput-wide v0, v7, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->tagBits:J

    .line 70
    iget-object v0, v8, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->parameterNonNullness:[Ljava/lang/Boolean;

    iput-object v0, v7, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->parameterNonNullness:[Ljava/lang/Boolean;

    .line 71
    iget v0, v8, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->defaultNullness:I

    iput v0, v7, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->defaultNullness:I

    .line 72
    iget-object v6, v8, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->typeVariables:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;

    .line 73
    array-length v8, v6

    const/4 v10, 0x0

    const/4 v11, 0x0

    if-nez v8, :cond_0

    .line 74
    sget-object v0, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->NO_TYPE_VARIABLES:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;

    iput-object v0, v7, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->typeVariables:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;

    goto :goto_2

    .line 75
    :cond_0
    new-array v12, v8, [Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;

    move v0, v10

    :goto_0
    if-lt v0, v8, :cond_d

    .line 76
    iput-object v12, v7, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->typeVariables:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;

    .line 77
    new-instance v13, Lorg/eclipse/jdt/internal/compiler/lookup/ParameterizedMethodBinding$2;

    move-object v0, v13

    move-object/from16 v1, p0

    move-object/from16 v2, p4

    move v3, v8

    move-object v4, v6

    move-object v5, v12

    invoke-direct/range {v0 .. v5}, Lorg/eclipse/jdt/internal/compiler/lookup/ParameterizedMethodBinding$2;-><init>(Lorg/eclipse/jdt/internal/compiler/lookup/ParameterizedMethodBinding;Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;I[Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;[Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;)V

    move v0, v10

    :goto_1
    if-lt v0, v8, :cond_8

    move-object v11, v13

    :goto_2
    if-eqz v11, :cond_1

    .line 78
    iget-object v0, v7, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->returnType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-static {v11, v0}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->substitute(Lorg/eclipse/jdt/internal/compiler/lookup/Substitution;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v0

    iput-object v0, v7, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->returnType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    .line 79
    iget-object v0, v7, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->parameters:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-static {v11, v0}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->substitute(Lorg/eclipse/jdt/internal/compiler/lookup/Substitution;[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v0

    iput-object v0, v7, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->parameters:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    .line 80
    iget-object v0, v7, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->thrownExceptions:[Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    invoke-static {v11, v0}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->substitute(Lorg/eclipse/jdt/internal/compiler/lookup/Substitution;[Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;)[Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move-result-object v0

    iput-object v0, v7, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->thrownExceptions:[Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    if-nez v0, :cond_1

    .line 81
    sget-object v0, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->NO_EXCEPTIONS:[Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    iput-object v0, v7, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->thrownExceptions:[Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    .line 82
    :cond_1
    iget-wide v0, v7, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->tagBits:J

    const-wide/16 v2, 0x80

    and-long v4, v0, v2

    const-wide/16 v14, 0x0

    cmp-long v4, v4, v14

    if-eqz v4, :cond_2

    goto :goto_5

    .line 83
    :cond_2
    iget-object v4, v7, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->returnType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    iget-wide v4, v4, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->tagBits:J

    and-long/2addr v4, v2

    cmp-long v4, v4, v14

    if-eqz v4, :cond_3

    or-long/2addr v0, v2

    .line 84
    iput-wide v0, v7, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->tagBits:J

    goto :goto_5

    .line 85
    :cond_3
    iget-object v0, v7, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->parameters:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    array-length v1, v0

    move v0, v10

    :goto_3
    if-lt v0, v1, :cond_6

    .line 86
    iget-object v0, v7, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->thrownExceptions:[Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    array-length v4, v0

    :goto_4
    if-lt v10, v4, :cond_4

    goto :goto_5

    .line 87
    :cond_4
    iget-object v0, v7, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->thrownExceptions:[Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    aget-object v0, v0, v10

    iget-wide v0, v0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->tagBits:J

    and-long/2addr v0, v2

    cmp-long v0, v0, v14

    if-eqz v0, :cond_5

    .line 88
    iget-wide v0, v7, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->tagBits:J

    or-long/2addr v0, v2

    iput-wide v0, v7, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->tagBits:J

    goto :goto_5

    :cond_5
    add-int/lit8 v10, v10, 0x1

    goto :goto_4

    .line 89
    :cond_6
    iget-object v4, v7, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->parameters:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    aget-object v4, v4, v0

    iget-wide v4, v4, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->tagBits:J

    and-long/2addr v4, v2

    cmp-long v4, v4, v14

    if-eqz v4, :cond_7

    .line 90
    iget-wide v0, v7, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->tagBits:J

    or-long/2addr v0, v2

    iput-wide v0, v7, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->tagBits:J

    :goto_5
    return-void

    :cond_7
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 91
    :cond_8
    aget-object v1, v6, v0

    .line 92
    aget-object v2, v12, v0

    .line 93
    iget-object v3, v1, Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;->superclass:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    invoke-static {v13, v3}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->substitute(Lorg/eclipse/jdt/internal/compiler/lookup/Substitution;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v3

    .line 94
    iget-object v4, v1, Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;->superInterfaces:[Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    invoke-static {v13, v4}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->substitute(Lorg/eclipse/jdt/internal/compiler/lookup/Substitution;[Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;)[Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move-result-object v4

    .line 95
    iget-object v5, v1, Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;->firstBound:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    if-eqz v5, :cond_a

    .line 96
    iget-object v1, v1, Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;->superclass:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    invoke-static {v5, v1}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->equalsEquals(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Z

    move-result v1

    if-eqz v1, :cond_9

    move-object v1, v3

    goto :goto_6

    .line 97
    :cond_9
    aget-object v1, v4, v10

    .line 98
    :goto_6
    invoke-virtual {v2, v1}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;->setFirstBound(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    .line 99
    :cond_a
    invoke-virtual {v3}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->kind()I

    move-result v1

    const/16 v5, 0x44

    if-eq v1, v5, :cond_c

    .line 100
    invoke-virtual {v3}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isInterface()Z

    move-result v1

    if-eqz v1, :cond_b

    .line 101
    sget-object v1, Lorg/eclipse/jdt/internal/compiler/lookup/TypeConstants;->JAVA_LANG_OBJECT:[[C

    invoke-virtual {v9, v1, v11}, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->getResolvedType([[CLorg/eclipse/jdt/internal/compiler/lookup/Scope;)Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move-result-object v1

    invoke-virtual {v2, v1}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;->setSuperClass(Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    .line 102
    array-length v1, v4

    add-int/lit8 v5, v1, 0x1

    .line 103
    new-array v5, v5, [Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    const/4 v14, 0x1

    invoke-static {v4, v10, v5, v14, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 104
    check-cast v3, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    aput-object v3, v5, v10

    .line 105
    invoke-virtual {v2, v5}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;->setSuperInterfaces([Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;)[Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    goto :goto_7

    .line 106
    :cond_b
    check-cast v3, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    invoke-virtual {v2, v3}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;->setSuperClass(Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    .line 107
    invoke-virtual {v2, v4}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;->setSuperInterfaces([Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;)[Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    goto :goto_7

    .line 108
    :cond_c
    sget-object v1, Lorg/eclipse/jdt/internal/compiler/lookup/TypeConstants;->JAVA_LANG_OBJECT:[[C

    invoke-virtual {v9, v1, v11}, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->getResolvedJavaBaseType([[CLorg/eclipse/jdt/internal/compiler/lookup/Scope;)Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move-result-object v1

    invoke-virtual {v2, v1}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;->setSuperClass(Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    .line 109
    invoke-virtual {v2, v4}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;->setSuperInterfaces([Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;)[Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    :goto_7
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_1

    .line 110
    :cond_d
    aget-object v1, v6, v0

    .line 111
    new-instance v2, Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;

    if-nez p3, :cond_e

    .line 112
    iget-object v3, v1, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->sourceName:[C

    goto :goto_8

    .line 113
    :cond_e
    aget-object v3, p3, v0

    .line 114
    :goto_8
    iget v4, v1, Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;->rank:I

    .line 115
    invoke-direct {v2, v3, v7, v4, v9}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;-><init>([CLorg/eclipse/jdt/internal/compiler/lookup/Binding;ILorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;)V

    .line 116
    aput-object v2, v12, v0

    .line 117
    iget-wide v3, v2, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->tagBits:J

    iget-wide v13, v1, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->tagBits:J

    const-wide v15, 0x180000000100000L

    and-long/2addr v13, v15

    or-long/2addr v3, v13

    iput-wide v3, v2, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->tagBits:J

    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0
.end method

.method public static instantiateGetClass(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;Lorg/eclipse/jdt/internal/compiler/lookup/Scope;)Lorg/eclipse/jdt/internal/compiler/lookup/ParameterizedMethodBinding;
    .locals 9

    new-instance v0, Lorg/eclipse/jdt/internal/compiler/lookup/ParameterizedMethodBinding;

    invoke-direct {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/ParameterizedMethodBinding;-><init>()V

    iget v1, p1, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->modifiers:I

    iput v1, v0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->modifiers:I

    iget-object v1, p1, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->selector:[C

    iput-object v1, v0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->selector:[C

    iget-object v1, p1, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->declaringClass:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    iput-object v1, v0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->declaringClass:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    sget-object v1, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->NO_TYPE_VARIABLES:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;

    iput-object v1, v0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->typeVariables:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;

    iput-object p1, v0, Lorg/eclipse/jdt/internal/compiler/lookup/ParameterizedMethodBinding;->originalMethod:Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    iget-object v1, p1, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->parameters:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    iput-object v1, v0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->parameters:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    iget-object v1, p1, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->thrownExceptions:[Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    iput-object v1, v0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->thrownExceptions:[Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    iget-wide v1, p1, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->tagBits:J

    iput-wide v1, v0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->tagBits:J

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->getJavaLangClass()Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move-result-object p1

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->environment()Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    move-result-object p2

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->erasure()Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object p0

    const/4 v1, 0x0

    invoke-virtual {p2, p0, v1}, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->convertToRawType(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Z)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object p0

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->usesNullTypeAnnotations()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->getNonNullAnnotation()Lorg/eclipse/jdt/internal/compiler/lookup/AnnotationBinding;

    move-result-object v2

    filled-new-array {v2}, [Lorg/eclipse/jdt/internal/compiler/lookup/AnnotationBinding;

    move-result-object v2

    invoke-virtual {p2, p0, v2}, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->createAnnotatedType(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;[Lorg/eclipse/jdt/internal/compiler/lookup/AnnotationBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object p0

    :cond_0
    move-object v6, p0

    const/4 v7, 0x0

    const/4 v8, 0x1

    const/4 v5, 0x0

    move-object v3, p2

    move-object v4, p1

    invoke-virtual/range {v3 .. v8}, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->createWildcard(Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;ILorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;I)Lorg/eclipse/jdt/internal/compiler/lookup/WildcardBinding;

    move-result-object p0

    const/4 v2, 0x1

    new-array v2, v2, [Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    aput-object p0, v2, v1

    const/4 p0, 0x0

    invoke-virtual {p2, p1, v2, p0}, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->createParameterizedType(Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/ParameterizedTypeBinding;

    move-result-object p0

    iput-object p0, v0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->returnType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    iget-object p0, p2, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->globalOptions:Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;

    iget-boolean p0, p0, Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;->isAnnotationBasedNullAnalysisEnabled:Z

    if-eqz p0, :cond_2

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->usesNullTypeAnnotations()Z

    move-result p0

    if-eqz p0, :cond_1

    iget-object p0, v0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->returnType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->getNonNullAnnotation()Lorg/eclipse/jdt/internal/compiler/lookup/AnnotationBinding;

    move-result-object p1

    filled-new-array {p1}, [Lorg/eclipse/jdt/internal/compiler/lookup/AnnotationBinding;

    move-result-object p1

    invoke-virtual {p2, p0, p1}, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->createAnnotatedType(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;[Lorg/eclipse/jdt/internal/compiler/lookup/AnnotationBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object p0

    iput-object p0, v0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->returnType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    goto :goto_0

    :cond_1
    iget-wide p0, v0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->tagBits:J

    const-wide/high16 v1, 0x100000000000000L

    or-long/2addr p0, v1

    iput-wide p0, v0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->tagBits:J

    :cond_2
    :goto_0
    iget-object p0, v0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->returnType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    iget-wide p0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->tagBits:J

    const-wide/16 v1, 0x80

    and-long/2addr p0, v1

    const-wide/16 v3, 0x0

    cmp-long p0, p0, v3

    if-eqz p0, :cond_3

    iget-wide p0, v0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->tagBits:J

    or-long/2addr p0, v1

    iput-wide p0, v0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->tagBits:J

    :cond_3
    return-object v0
.end method


# virtual methods
.method public hasSubstitutedParameters()Z
    .locals 2

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->parameters:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ParameterizedMethodBinding;->originalMethod:Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    iget-object v1, v1, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->parameters:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public hasSubstitutedReturnType()Z
    .locals 2

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->returnType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ParameterizedMethodBinding;->originalMethod:Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    iget-object v1, v1, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->returnType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public original()Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ParameterizedMethodBinding;->originalMethod:Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->original()Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    move-result-object v0

    return-object v0
.end method

.method public shallowOriginal()Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ParameterizedMethodBinding;->originalMethod:Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    return-object v0
.end method
