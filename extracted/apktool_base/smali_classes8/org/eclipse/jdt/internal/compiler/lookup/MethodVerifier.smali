.class public abstract Lorg/eclipse/jdt/internal/compiler/lookup/MethodVerifier;
.super Lorg/eclipse/jdt/internal/compiler/lookup/ImplicitNullAnnotationVerifier;
.source "SourceFile"


# instance fields
.field currentMethods:Lorg/eclipse/jdt/internal/compiler/util/HashtableOfObject;

.field inheritedMethods:Lorg/eclipse/jdt/internal/compiler/util/HashtableOfObject;

.field inheritedOverriddenMethods:Lorg/eclipse/jdt/internal/compiler/util/HashtableOfObject;

.field type:Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;


# direct methods
.method public constructor <init>(Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/compiler/lookup/ImplicitNullAnnotationVerifier;-><init>(Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodVerifier;->type:Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;

    iput-object p1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodVerifier;->inheritedMethods:Lorg/eclipse/jdt/internal/compiler/util/HashtableOfObject;

    iput-object p1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodVerifier;->currentMethods:Lorg/eclipse/jdt/internal/compiler/util/HashtableOfObject;

    iput-object p1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodVerifier;->inheritedOverriddenMethods:Lorg/eclipse/jdt/internal/compiler/util/HashtableOfObject;

    return-void
.end method

.method public static areMethodsCompatible(Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;)Z
    .locals 0

    .line 2
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->original()Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    move-result-object p0

    .line 3
    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->findOriginalInheritedMethod(Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return p0

    .line 4
    :cond_0
    invoke-static {p0, p1, p2}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodVerifier;->isParameterSubsignature(Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;)Z

    move-result p0

    return p0
.end method

.method public static areReturnTypesCompatible(Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;)Z
    .locals 6

    .line 2
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->returnType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    iget-object v1, p1, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->returnType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-static {v0, v1}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->equalsEquals(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 3
    :cond_0
    iget-object p2, p2, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->globalOptions:Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;

    iget-wide v2, p2, Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;->sourceLevel:J

    const-wide/32 v4, 0x310000

    cmp-long p2, v2, v4

    if-ltz p2, :cond_3

    .line 4
    iget-object p2, p0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->returnType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isBaseType()Z

    move-result p2

    if-eqz p2, :cond_1

    const/4 p0, 0x0

    return p0

    .line 5
    :cond_1
    iget-object p2, p0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->declaringClass:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->isInterface()Z

    move-result p2

    if-nez p2, :cond_2

    iget-object p2, p0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->declaringClass:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    iget p2, p2, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->id:I

    if-ne p2, v1, :cond_2

    .line 6
    iget-object p1, p1, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->returnType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    iget-object p0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->returnType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-virtual {p1, p0}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isCompatibleWith(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Z

    move-result p0

    return p0

    .line 7
    :cond_2
    iget-object p0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->returnType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    iget-object p1, p1, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->returnType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isCompatibleWith(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Z

    move-result p0

    return p0

    .line 8
    :cond_3
    iget-object p0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->returnType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->erasure()Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object p0

    iget-object p1, p1, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->returnType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->erasure()Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object p1

    invoke-static {p0, p1}, Lorg/eclipse/jdt/internal/compiler/lookup/ImplicitNullAnnotationVerifier;->areTypesEqual(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Z

    move-result p0

    return p0
.end method

.method public static computeSubstituteMethod(Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;)Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;
    .locals 11

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 2
    :cond_0
    iget-object v1, p1, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->parameters:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    array-length v1, v1

    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->parameters:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    array-length v2, v2

    if-eq v1, v2, :cond_1

    return-object v0

    .line 3
    :cond_1
    iget-object v0, p1, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->declaringClass:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    instance-of v1, v0, Lorg/eclipse/jdt/internal/compiler/lookup/BinaryTypeBinding;

    if-eqz v1, :cond_2

    .line 4
    check-cast v0, Lorg/eclipse/jdt/internal/compiler/lookup/BinaryTypeBinding;

    invoke-virtual {v0, p1}, Lorg/eclipse/jdt/internal/compiler/lookup/BinaryTypeBinding;->resolveTypesFor(Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    .line 5
    :cond_2
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->declaringClass:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    instance-of v1, v0, Lorg/eclipse/jdt/internal/compiler/lookup/BinaryTypeBinding;

    if-eqz v1, :cond_3

    .line 6
    check-cast v0, Lorg/eclipse/jdt/internal/compiler/lookup/BinaryTypeBinding;

    invoke-virtual {v0, p0}, Lorg/eclipse/jdt/internal/compiler/lookup/BinaryTypeBinding;->resolveTypesFor(Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    .line 7
    :cond_3
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->typeVariables:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;

    .line 8
    array-length v1, v0

    if-nez v1, :cond_4

    return-object p0

    .line 9
    :cond_4
    iget-object p1, p1, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->typeVariables:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;

    .line 10
    array-length v2, p1

    if-nez v2, :cond_5

    .line 11
    invoke-virtual {p0, p2}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->asRawMethod(Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;)Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    move-result-object p0

    return-object p0

    :cond_5
    if-eq v2, v1, :cond_6

    return-object p0

    .line 12
    :cond_6
    new-array v3, v2, [Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    const/4 v4, 0x0

    .line 13
    invoke-static {p1, v4, v3, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 14
    invoke-virtual {p2, p0, v3}, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->createParameterizedGenericMethod(Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/ParameterizedGenericMethodBinding;

    move-result-object p1

    move p2, v4

    :goto_0
    if-lt p2, v1, :cond_7

    return-object p1

    .line 15
    :cond_7
    aget-object v2, v0, p2

    .line 16
    aget-object v5, v3, p2

    check-cast v5, Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;

    .line 17
    iget-object v6, v5, Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;->firstBound:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    iget-object v7, v2, Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;->firstBound:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-static {v6, v7}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->equalsEquals(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 18
    iget-object v6, v5, Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;->firstBound:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    if-nez v6, :cond_9

    goto :goto_2

    .line 19
    :cond_8
    iget-object v6, v5, Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;->firstBound:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    if-eqz v6, :cond_9

    iget-object v7, v2, Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;->firstBound:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    if-eqz v7, :cond_9

    .line 20
    invoke-virtual {v6}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isClass()Z

    move-result v6

    iget-object v7, v2, Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;->firstBound:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-virtual {v7}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isClass()Z

    move-result v7

    if-eq v6, v7, :cond_9

    return-object p0

    .line 21
    :cond_9
    iget-object v6, v2, Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;->superclass:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    invoke-static {p1, v6}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->substitute(Lorg/eclipse/jdt/internal/compiler/lookup/Substitution;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v6

    iget-object v7, v5, Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;->superclass:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    invoke-static {v6, v7}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->notEquals(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Z

    move-result v6

    if-eqz v6, :cond_a

    return-object p0

    .line 22
    :cond_a
    iget-object v6, v2, Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;->superInterfaces:[Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    array-length v6, v6

    .line 23
    iget-object v5, v5, Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;->superInterfaces:[Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    .line 24
    array-length v7, v5

    if-eq v6, v7, :cond_b

    return-object p0

    :cond_b
    move v7, v4

    :goto_1
    if-lt v7, v6, :cond_c

    :goto_2
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 25
    :cond_c
    iget-object v8, v2, Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;->superInterfaces:[Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    aget-object v8, v8, v7

    invoke-static {p1, v8}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->substitute(Lorg/eclipse/jdt/internal/compiler/lookup/Substitution;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v8

    move v9, v4

    :goto_3
    if-lt v9, v6, :cond_d

    return-object p0

    .line 26
    :cond_d
    aget-object v10, v5, v9

    invoke-static {v8, v10}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->equalsEquals(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Z

    move-result v10

    if-eqz v10, :cond_e

    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_e
    add-int/lit8 v9, v9, 0x1

    goto :goto_3
.end method

.method public static couldMethodOverride(Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;)Z
    .locals 3

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->selector:[C

    iget-object v1, p1, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->selector:[C

    invoke-static {v0, v1}, Lorg/eclipse/jdt/core/compiler/CharOperation;->equals([C[C)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    if-eq p0, p1, :cond_6

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->isStatic()Z

    move-result v0

    if-nez v0, :cond_6

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->isStatic()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->isPrivate()Z

    move-result v0

    if-eqz v0, :cond_2

    return v1

    :cond_2
    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->isDefault()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->declaringClass:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->getPackage()Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;

    move-result-object v0

    iget-object v2, p1, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->declaringClass:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    invoke-virtual {v2}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->getPackage()Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;

    move-result-object v2

    if-eq v0, v2, :cond_3

    return v1

    :cond_3
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->isPublic()Z

    move-result v0

    if-nez v0, :cond_5

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->isPublic()Z

    move-result v0

    if-eqz v0, :cond_4

    return v1

    :cond_4
    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->isProtected()Z

    move-result p1

    if-eqz p1, :cond_5

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->isProtected()Z

    move-result p0

    if-nez p0, :cond_5

    return v1

    :cond_5
    const/4 p0, 0x1

    return p0

    :cond_6
    :goto_0
    return v1
.end method

.method public static doesMethodOverride(Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;)Z
    .locals 1

    .line 2
    invoke-static {p0, p1}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodVerifier;->couldMethodOverride(Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0, p1, p2}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodVerifier;->areMethodsCompatible(Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static hasGenericParameter(Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;)Z
    .locals 5

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->genericSignature()[C

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object p0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->parameters:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    array-length v0, p0

    move v2, v1

    :goto_0
    if-lt v2, v0, :cond_1

    return v1

    :cond_1
    aget-object v3, p0, v2

    invoke-virtual {v3}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->leafComponentType()Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v3

    instance-of v4, v3, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    if-eqz v4, :cond_2

    check-cast v3, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    iget v3, v3, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->modifiers:I

    const/high16 v4, 0x40000000    # 2.0f

    and-int/2addr v3, v4

    if-eqz v3, :cond_2

    const/4 p0, 0x1

    return p0

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public static isParameterSubsignature(Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;)Z
    .locals 0

    .line 2
    invoke-static {p1, p0, p2}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodVerifier;->computeSubstituteMethod(Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;)Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 3
    invoke-static {p0, p1, p2}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodVerifier;->isSubstituteParameterSubsignature(Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static isSubstituteParameterSubsignature(Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;)Z
    .locals 3

    .line 2
    invoke-static {p0, p1}, Lorg/eclipse/jdt/internal/compiler/lookup/ImplicitNullAnnotationVerifier;->areParametersEqual(Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_3

    .line 3
    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->hasSubstitutedParameters()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->areParameterErasuresEqual(Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4
    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->typeVariables:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;

    sget-object p2, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->NO_TYPE_VARIABLES:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;

    if-ne p1, p2, :cond_0

    invoke-static {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodVerifier;->hasGenericParameter(Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;)Z

    move-result p0

    if-nez p0, :cond_0

    return v2

    :cond_0
    return v1

    .line 5
    :cond_1
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->declaringClass:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isRawType()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p1, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->declaringClass:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isRawType()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 6
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->hasSubstitutedParameters()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->hasSubstitutedParameters()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 7
    invoke-static {p0, p1, p2}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodVerifier;->areMethodsCompatible(Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;)Z

    move-result p0

    return p0

    :cond_2
    return v1

    .line 8
    :cond_3
    instance-of p2, p1, Lorg/eclipse/jdt/internal/compiler/lookup/ParameterizedGenericMethodBinding;

    if-eqz p2, :cond_5

    .line 9
    iget-object p2, p0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->typeVariables:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;

    sget-object v0, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->NO_TYPE_VARIABLES:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;

    if-eq p2, v0, :cond_4

    .line 10
    check-cast p1, Lorg/eclipse/jdt/internal/compiler/lookup/ParameterizedGenericMethodBinding;

    iget-boolean p0, p1, Lorg/eclipse/jdt/internal/compiler/lookup/ParameterizedGenericMethodBinding;->isRaw:Z

    xor-int/2addr p0, v2

    return p0

    .line 11
    :cond_4
    invoke-static {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodVerifier;->hasGenericParameter(Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;)Z

    move-result p0

    xor-int/2addr p0, v2

    return p0

    .line 12
    :cond_5
    iget-object p0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->typeVariables:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;

    sget-object p1, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->NO_TYPE_VARIABLES:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;

    if-ne p0, p1, :cond_6

    return v2

    :cond_6
    return v1
.end method


# virtual methods
.method public addBridgeMethodCandidate(Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;)V
    .locals 4

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodVerifier;->inheritedOverriddenMethods:Lorg/eclipse/jdt/internal/compiler/util/HashtableOfObject;

    iget-object v1, p1, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->selector:[C

    invoke-virtual {v0, v1}, Lorg/eclipse/jdt/internal/compiler/util/HashtableOfObject;->get([C)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    new-array v0, v0, [Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    aput-object p1, v0, v1

    goto :goto_0

    :cond_0
    array-length v2, v0

    add-int/lit8 v3, v2, 0x1

    new-array v3, v3, [Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    invoke-static {v0, v1, v3, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    aput-object p1, v3, v2

    move-object v0, v3

    :goto_0
    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodVerifier;->inheritedOverriddenMethods:Lorg/eclipse/jdt/internal/compiler/util/HashtableOfObject;

    iget-object p1, p1, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->selector:[C

    invoke-virtual {v1, p1, v0}, Lorg/eclipse/jdt/internal/compiler/util/HashtableOfObject;->put([CLjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public areMethodsCompatible(Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ImplicitNullAnnotationVerifier;->environment:Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    invoke-static {p1, p2, v0}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodVerifier;->areMethodsCompatible(Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;)Z

    move-result p1

    return p1
.end method

.method public areReturnTypesCompatible(Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodVerifier;->type:Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;

    iget-object v0, v0, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->scope:Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->environment()Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    move-result-object v0

    invoke-static {p1, p2, v0}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodVerifier;->areReturnTypesCompatible(Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;)Z

    move-result p1

    return p1
.end method

.method public canOverridingMethodDifferInErasure(Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public canSkipInheritedMethods()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodVerifier;->type:Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->superclass()Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodVerifier;->type:Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->superclass()Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move-result-object v0

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->isAbstract()Z

    move-result v0

    if-eqz v0, :cond_0

    return v1

    .line 2
    :cond_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodVerifier;->type:Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->superInterfaces()[Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move-result-object v0

    sget-object v2, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->NO_SUPERINTERFACES:[Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    if-ne v0, v2, :cond_1

    const/4 v0, 0x1

    return v0

    :cond_1
    return v1
.end method

.method public canSkipInheritedMethods(Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;)Z
    .locals 0

    if-eqz p2, :cond_0

    .line 3
    iget-object p1, p1, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->declaringClass:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    iget-object p2, p2, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->declaringClass:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    invoke-static {p1, p2}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->equalsEquals(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method public checkAbstractMethod(Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;)V
    .locals 2

    iget-object v0, p1, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->declaringClass:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodVerifier;->mustImplementAbstractMethod(Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodVerifier;->type:Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;

    iget-object v0, v0, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->scope:Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;

    iget-object v0, v0, Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;->referenceContext:Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->addMissingAbstractMethodFor(Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;)Lorg/eclipse/jdt/internal/compiler/ast/MethodDeclaration;

    move-result-object v0

    iget-object v0, v0, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->scope:Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object v0

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodVerifier;->type:Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;

    invoke-virtual {v0, v1, p1}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->abstractMethodMustBeImplemented(Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodVerifier;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object v0

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodVerifier;->type:Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;

    invoke-virtual {v0, v1, p1}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->abstractMethodMustBeImplemented(Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public checkAgainstInheritedMethods(Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;[Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;I[Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;)V
    .locals 9

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodVerifier;->type:Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->isAnnotationType()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodVerifier;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object p4

    sub-int/2addr p3, v1

    aget-object p2, p2, p3

    invoke-virtual {p4, p1, p2}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->annotationCannotOverrideMethod(Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;)V

    return-void

    :cond_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodVerifier;->type:Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;

    iget-object v0, v0, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->scope:Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->compilerOptions()Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;

    move-result-object v0

    if-le p3, v1, :cond_1

    invoke-virtual {p0, p2, p3}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodVerifier;->findOverriddenInheritedMethods([Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;I)[I

    move-result-object v2

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    move v3, p3

    :cond_2
    :goto_1
    add-int/lit8 v3, v3, -0x1

    if-gez v3, :cond_6

    iget-object p2, p0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodVerifier;->inheritedOverriddenMethods:Lorg/eclipse/jdt/internal/compiler/util/HashtableOfObject;

    iget-object p3, p1, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->selector:[C

    invoke-virtual {p2, p3}, Lorg/eclipse/jdt/internal/compiler/util/HashtableOfObject;->get([C)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    if-eqz p2, :cond_5

    array-length p3, p2

    :cond_3
    :goto_2
    add-int/lit8 p3, p3, -0x1

    if-gez p3, :cond_4

    goto :goto_3

    :cond_4
    aget-object v0, p2, p3

    invoke-virtual {p0, p1, v0}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodVerifier;->isParameterSubsignature(Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->isStatic()Z

    move-result v1

    if-nez v1, :cond_3

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->isFinal()Z

    move-result v1

    if-nez v1, :cond_3

    invoke-virtual {p0, p1, v0, p4}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodVerifier;->checkForBridgeMethod(Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;[Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;)V

    goto :goto_2

    :cond_5
    :goto_3
    return-void

    :cond_6
    aget-object v4, p2, v3

    if-eqz v2, :cond_7

    aget v5, v2, v3

    if-nez v5, :cond_18

    :cond_7
    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->isStatic()Z

    move-result v5

    invoke-virtual {v4}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->isStatic()Z

    move-result v6

    if-eq v5, v6, :cond_8

    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodVerifier;->problemReporter(Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;)Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object v5

    invoke-virtual {v5, p1, v4}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->staticAndInstanceConflict(Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;)V

    goto :goto_1

    :cond_8
    invoke-virtual {v4}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->isAbstract()Z

    move-result v5

    const/high16 v6, 0x20000000

    if-eqz v5, :cond_a

    iget-object v5, v4, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->declaringClass:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    invoke-virtual {v5}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->isInterface()Z

    move-result v5

    if-eqz v5, :cond_9

    iget v5, p1, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->modifiers:I

    or-int/2addr v5, v6

    iput v5, p1, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->modifiers:I

    goto :goto_4

    :cond_9
    iget v5, p1, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->modifiers:I

    const/high16 v6, 0x30000000

    or-int/2addr v5, v6

    iput v5, p1, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->modifiers:I

    goto :goto_4

    :cond_a
    invoke-virtual {v4}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->isPublic()Z

    move-result v5

    if-nez v5, :cond_b

    iget-object v5, p0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodVerifier;->type:Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;

    invoke-virtual {v5}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->isInterface()Z

    move-result v5

    if-nez v5, :cond_e

    :cond_b
    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->isDefaultMethod()Z

    move-result v5

    if-eqz v5, :cond_c

    invoke-virtual {v4}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->isFinal()Z

    move-result v5

    if-nez v5, :cond_c

    iget-object v5, v4, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->declaringClass:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    iget v5, v5, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->id:I

    if-ne v5, v1, :cond_c

    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodVerifier;->problemReporter(Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;)Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object v5

    invoke-virtual {v5, p1}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->defaultMethodOverridesObjectMethod(Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;)V

    goto :goto_4

    :cond_c
    invoke-virtual {v4}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->isDefaultMethod()Z

    move-result v5

    if-eqz v5, :cond_d

    iget v5, p1, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->modifiers:I

    or-int/2addr v5, v6

    iput v5, p1, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->modifiers:I

    goto :goto_4

    :cond_d
    iget v5, p1, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->modifiers:I

    const/high16 v6, 0x10000000

    or-int/2addr v5, v6

    iput v5, p1, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->modifiers:I

    :cond_e
    :goto_4
    invoke-virtual {p0, p1, v4}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodVerifier;->areReturnTypesCompatible(Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;)Z

    move-result v5

    if-nez v5, :cond_f

    iget-object v5, p1, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->returnType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    iget-wide v5, v5, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->tagBits:J

    const-wide/16 v7, 0x80

    and-long/2addr v5, v7

    const-wide/16 v7, 0x0

    cmp-long v5, v5, v7

    if-nez v5, :cond_f

    invoke-virtual {p0, p1, v4}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodVerifier;->reportIncompatibleReturnTypeError(Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;)Z

    move-result v5

    if-eqz v5, :cond_f

    goto/16 :goto_1

    :cond_f
    invoke-virtual {p0, p1, v4}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodVerifier;->reportRawReferences(Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;)V

    iget-object v5, p1, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->thrownExceptions:[Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    sget-object v6, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->NO_EXCEPTIONS:[Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    if-eq v5, v6, :cond_10

    invoke-virtual {p0, p1, v4}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodVerifier;->checkExceptions(Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;)V

    :cond_10
    invoke-virtual {v4}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->isFinal()Z

    move-result v5

    if-eqz v5, :cond_11

    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodVerifier;->problemReporter(Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;)Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object v5

    invoke-virtual {v5, p1, v4}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->finalMethodCannotBeOverridden(Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;)V

    :cond_11
    invoke-virtual {p0, p1, v4}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodVerifier;->isAsVisible(Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;)Z

    move-result v5

    if-nez v5, :cond_12

    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodVerifier;->problemReporter(Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;)Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object v5

    invoke-virtual {v5, p1, v4}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->visibilityConflict(Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;)V

    :cond_12
    invoke-virtual {v4}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->isSynchronized()Z

    move-result v5

    if-eqz v5, :cond_13

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->isSynchronized()Z

    move-result v5

    if-nez v5, :cond_13

    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodVerifier;->problemReporter(Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;)Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object v5

    invoke-virtual {v5, p1, v4}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->missingSynchronizedOnInheritedMethod(Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;)V

    :cond_13
    iget-boolean v5, v0, Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;->reportDeprecationWhenOverridingDeprecatedMethod:Z

    if-eqz v5, :cond_18

    invoke-virtual {v4}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->isViewedAsDeprecated()Z

    move-result v5

    if-eqz v5, :cond_18

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->isViewedAsDeprecated()Z

    move-result v5

    if-eqz v5, :cond_14

    iget-boolean v5, v0, Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;->reportDeprecationInsideDeprecatedCode:Z

    if-eqz v5, :cond_18

    :cond_14
    iget-object v5, v4, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->declaringClass:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    invoke-virtual {v5}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->isInterface()Z

    move-result v6

    if-eqz v6, :cond_17

    move v6, p3

    :cond_15
    add-int/lit8 v6, v6, -0x1

    if-gez v6, :cond_16

    goto :goto_5

    :cond_16
    if-eq v3, v6, :cond_15

    aget-object v7, p2, v6

    iget-object v7, v7, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->declaringClass:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    const/4 v8, 0x0

    invoke-virtual {v7, v5, v8}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->implementsInterface(Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;Z)Z

    move-result v7

    if-eqz v7, :cond_15

    goto/16 :goto_1

    :cond_17
    :goto_5
    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodVerifier;->problemReporter(Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;)Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object v5

    invoke-virtual {v5, p1, v4}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->overridesDeprecatedMethod(Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;)V

    :cond_18
    invoke-virtual {v4}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->isStatic()Z

    move-result v5

    if-nez v5, :cond_2

    invoke-virtual {v4}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->isFinal()Z

    move-result v5

    if-nez v5, :cond_2

    invoke-virtual {p0, p1, v4, p4}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodVerifier;->checkForBridgeMethod(Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;[Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;)V

    goto/16 :goto_1
.end method

.method public checkConcreteInheritedMethod(Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;[Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;)V
    .locals 3

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->isStatic()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodVerifier;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object v0

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodVerifier;->type:Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;

    invoke-virtual {v0, v1, p1, p2}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->staticInheritedMethodConflicts(Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;[Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;)V

    :cond_0
    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->isPublic()Z

    move-result v0

    if-nez v0, :cond_7

    array-length v0, p2

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->isProtected()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    :goto_0
    if-lt v2, v0, :cond_1

    goto :goto_2

    :cond_1
    aget-object v1, p2, v2

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->isPublic()Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_2

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->isDefault()Z

    move-result v1

    if-eqz v1, :cond_6

    :goto_1
    if-lt v2, v0, :cond_4

    goto :goto_2

    :cond_4
    aget-object v1, p2, v2

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->isDefault()Z

    move-result v1

    if-nez v1, :cond_5

    goto :goto_2

    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_6
    :goto_2
    if-ge v2, v0, :cond_7

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodVerifier;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object v0

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodVerifier;->type:Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;

    invoke-virtual {v0, v1, p1, p2}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->inheritedMethodReducesVisibility(Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;[Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;)V

    :cond_7
    iget-object v0, p1, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->thrownExceptions:[Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    sget-object v1, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->NO_EXCEPTIONS:[Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    if-eq v0, v1, :cond_9

    array-length v0, p2

    :goto_3
    add-int/lit8 v0, v0, -0x1

    if-gez v0, :cond_8

    goto :goto_4

    :cond_8
    aget-object v1, p2, v0

    invoke-virtual {p0, p1, v1}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodVerifier;->checkExceptions(Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;)V

    goto :goto_3

    :cond_9
    :goto_4
    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->isOrEnclosedByPrivateType()Z

    move-result p2

    if-eqz p2, :cond_a

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->original()Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    move-result-object p1

    iget p2, p1, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->modifiers:I

    const/high16 v0, 0x8000000

    or-int/2addr p2, v0

    iput p2, p1, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->modifiers:I

    :cond_a
    return-void
.end method

.method public checkExceptions(Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;)V
    .locals 9

    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodVerifier;->resolvedExceptionTypesFor(Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;)[Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move-result-object v0

    invoke-virtual {p0, p2}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodVerifier;->resolvedExceptionTypesFor(Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;)[Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move-result-object v1

    array-length v2, v0

    :cond_0
    :goto_0
    const/4 v3, -0x1

    add-int/2addr v2, v3

    if-gez v2, :cond_1

    return-void

    :cond_1
    aget-object v4, v0, v2

    array-length v5, v1

    :cond_2
    add-int/2addr v5, v3

    if-le v5, v3, :cond_3

    aget-object v6, v1, v5

    invoke-virtual {p0, v4, v6}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodVerifier;->isSameClassOrSubclassOf(Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;)Z

    move-result v6

    if-eqz v6, :cond_2

    :cond_3
    if-ne v5, v3, :cond_0

    const/4 v3, 0x0

    invoke-virtual {v4, v3}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->isUncheckedException(Z)Z

    move-result v3

    if-nez v3, :cond_0

    iget-wide v5, v4, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->tagBits:J

    const-wide/16 v7, 0x80

    and-long/2addr v5, v7

    const-wide/16 v7, 0x0

    cmp-long v3, v5, v7

    if-nez v3, :cond_0

    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodVerifier;->problemReporter(Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;)Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object v3

    iget-object v5, p0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodVerifier;->type:Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;

    invoke-virtual {v3, v5, p1, p2, v4}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->incompatibleExceptionInThrowsClause(Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;)V

    goto :goto_0
.end method

.method public checkForBridgeMethod(Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;[Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;)V
    .locals 0

    return-void
.end method

.method public checkForMissingHashCodeMethod()V
    .locals 6

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodVerifier;->type:Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;

    sget-object v1, Lorg/eclipse/jdt/internal/compiler/lookup/TypeConstants;->EQUALS:[C

    invoke-virtual {v0, v1}, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->getMethods([C)[Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :cond_0
    move v3, v2

    :goto_0
    const/4 v4, 0x1

    if-nez v3, :cond_2

    add-int/lit8 v1, v1, -0x1

    if-gez v1, :cond_1

    goto :goto_1

    :cond_1
    aget-object v3, v0, v1

    iget-object v3, v3, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->parameters:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    array-length v5, v3

    if-ne v5, v4, :cond_0

    aget-object v3, v3, v2

    iget v3, v3, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->id:I

    if-ne v3, v4, :cond_0

    move v3, v4

    goto :goto_0

    :cond_2
    :goto_1
    if-eqz v3, :cond_3

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodVerifier;->type:Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;

    sget-object v1, Lorg/eclipse/jdt/internal/compiler/lookup/TypeConstants;->HASHCODE:[C

    sget-object v2, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->NO_PARAMETERS:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->getExactMethod([C[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/CompilationUnitScope;)Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, v0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->declaringClass:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    iget v0, v0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->id:I

    if-ne v0, v4, :cond_3

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodVerifier;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object v0

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodVerifier;->type:Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;

    invoke-virtual {v0, v1}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->shouldImplementHashcode(Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;)V

    :cond_3
    return-void
.end method

.method public checkForRedundantSuperinterfaces(Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;[Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    sget-object v2, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->NO_SUPERINTERFACES:[Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    if-ne v1, v2, :cond_0

    return-void

    :cond_0
    new-instance v2, Lorg/eclipse/jdt/internal/compiler/util/SimpleSet;

    array-length v3, v1

    invoke-direct {v2, v3}, Lorg/eclipse/jdt/internal/compiler/util/SimpleSet;-><init>(I)V

    array-length v3, v1

    const/4 v4, 0x0

    const/4 v5, 0x0

    move v6, v4

    :goto_0
    const/4 v7, 0x3

    if-lt v6, v3, :cond_16

    new-instance v8, Lorg/eclipse/jdt/internal/compiler/util/SimpleSet;

    const/4 v1, 0x5

    invoke-direct {v8, v1}, Lorg/eclipse/jdt/internal/compiler/util/SimpleSet;-><init>(I)V

    move-object/from16 v1, p1

    :goto_1
    if-eqz v1, :cond_a

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->isValidBinding()Z

    move-result v3

    if-nez v3, :cond_1

    goto/16 :goto_8

    :cond_1
    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->superInterfaces()[Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move-result-object v3

    sget-object v6, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->NO_SUPERINTERFACES:[Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    if-eq v3, v6, :cond_9

    array-length v6, v3

    move v9, v4

    :goto_2
    if-lt v9, v6, :cond_2

    goto :goto_7

    :cond_2
    aget-object v10, v3, v9

    invoke-virtual {v8, v10}, Lorg/eclipse/jdt/internal/compiler/util/SimpleSet;->includes(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_8

    invoke-virtual {v10}, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->isValidBinding()Z

    move-result v11

    if-eqz v11, :cond_8

    invoke-virtual {v2, v10}, Lorg/eclipse/jdt/internal/compiler/util/SimpleSet;->includes(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_7

    if-nez v5, :cond_4

    new-instance v5, Lorg/eclipse/jdt/internal/compiler/util/SimpleSet;

    invoke-direct {v5, v7}, Lorg/eclipse/jdt/internal/compiler/util/SimpleSet;-><init>(I)V

    :cond_3
    move-object v11, v5

    goto :goto_3

    :cond_4
    invoke-virtual {v5, v10}, Lorg/eclipse/jdt/internal/compiler/util/SimpleSet;->includes(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_3

    goto :goto_6

    :goto_3
    invoke-virtual {v11, v10}, Lorg/eclipse/jdt/internal/compiler/util/SimpleSet;->add(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v5, v0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodVerifier;->type:Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;

    iget-object v5, v5, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->scope:Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;

    iget-object v5, v5, Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;->referenceContext:Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;

    iget-object v12, v5, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->superInterfaces:[Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    array-length v13, v12

    move v5, v4

    :goto_4
    if-lt v5, v13, :cond_5

    goto :goto_5

    :cond_5
    aget-object v14, v12, v5

    iget-object v14, v14, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->resolvedType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-static {v14, v10}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->equalsEquals(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Z

    move-result v14

    if-eqz v14, :cond_6

    invoke-virtual/range {p0 .. p0}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodVerifier;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object v13

    iget-object v14, v0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodVerifier;->type:Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;

    aget-object v5, v12, v5

    invoke-virtual {v13, v14, v5, v10, v1}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->redundantSuperInterface(Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;)V

    :goto_5
    move-object v5, v11

    goto :goto_6

    :cond_6
    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    :cond_7
    invoke-virtual {v8, v10}, Lorg/eclipse/jdt/internal/compiler/util/SimpleSet;->add(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_8
    :goto_6
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    :cond_9
    :goto_7
    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->superclass()Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move-result-object v1

    goto :goto_1

    :cond_a
    :goto_8
    iget v1, v8, Lorg/eclipse/jdt/internal/compiler/util/SimpleSet;->elementSize:I

    if-nez v1, :cond_b

    return-void

    :cond_b
    new-array v3, v1, [Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    invoke-virtual {v8, v3}, Lorg/eclipse/jdt/internal/compiler/util/SimpleSet;->asArray([Ljava/lang/Object;)V

    move v6, v4

    :goto_9
    if-lt v6, v1, :cond_c

    return-void

    :cond_c
    aget-object v9, v3, v6

    invoke-virtual {v9}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->superInterfaces()[Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move-result-object v10

    sget-object v11, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->NO_SUPERINTERFACES:[Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    if-eq v10, v11, :cond_15

    array-length v11, v10

    add-int v12, v1, v11

    array-length v13, v3

    if-lt v12, v13, :cond_d

    add-int/lit8 v12, v12, 0x5

    new-array v12, v12, [Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    invoke-static {v3, v4, v12, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_a

    :cond_d
    move-object v12, v3

    :goto_a
    move v3, v4

    :goto_b
    if-lt v3, v11, :cond_e

    move-object v3, v12

    goto :goto_10

    :cond_e
    aget-object v13, v10, v3

    invoke-virtual {v8, v13}, Lorg/eclipse/jdt/internal/compiler/util/SimpleSet;->includes(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_14

    invoke-virtual {v13}, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->isValidBinding()Z

    move-result v14

    if-eqz v14, :cond_14

    invoke-virtual {v2, v13}, Lorg/eclipse/jdt/internal/compiler/util/SimpleSet;->includes(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_13

    if-nez v5, :cond_10

    new-instance v5, Lorg/eclipse/jdt/internal/compiler/util/SimpleSet;

    invoke-direct {v5, v7}, Lorg/eclipse/jdt/internal/compiler/util/SimpleSet;-><init>(I)V

    :cond_f
    move-object v14, v5

    goto :goto_c

    :cond_10
    invoke-virtual {v5, v13}, Lorg/eclipse/jdt/internal/compiler/util/SimpleSet;->includes(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_f

    goto :goto_f

    :goto_c
    invoke-virtual {v14, v13}, Lorg/eclipse/jdt/internal/compiler/util/SimpleSet;->add(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v5, v0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodVerifier;->type:Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;

    iget-object v5, v5, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->scope:Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;

    iget-object v5, v5, Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;->referenceContext:Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;

    iget-object v15, v5, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->superInterfaces:[Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    array-length v5, v15

    :goto_d
    if-lt v4, v5, :cond_11

    goto :goto_e

    :cond_11
    aget-object v7, v15, v4

    iget-object v7, v7, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->resolvedType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-static {v7, v13}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->equalsEquals(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Z

    move-result v7

    if-eqz v7, :cond_12

    invoke-virtual/range {p0 .. p0}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodVerifier;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object v5

    iget-object v7, v0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodVerifier;->type:Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;

    aget-object v4, v15, v4

    invoke-virtual {v5, v7, v4, v13, v9}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->redundantSuperInterface(Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;)V

    :goto_e
    move-object v5, v14

    goto :goto_f

    :cond_12
    add-int/lit8 v4, v4, 0x1

    const/4 v7, 0x3

    goto :goto_d

    :cond_13
    invoke-virtual {v8, v13}, Lorg/eclipse/jdt/internal/compiler/util/SimpleSet;->add(Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v4, v1, 0x1

    aput-object v13, v12, v1

    move v1, v4

    :cond_14
    :goto_f
    add-int/lit8 v3, v3, 0x1

    const/4 v4, 0x0

    const/4 v7, 0x3

    goto :goto_b

    :cond_15
    :goto_10
    add-int/lit8 v6, v6, 0x1

    const/4 v4, 0x0

    const/4 v7, 0x3

    goto/16 :goto_9

    :cond_16
    aget-object v4, v1, v6

    const/4 v7, 0x0

    :goto_11
    if-lt v7, v3, :cond_17

    invoke-virtual {v2, v4}, Lorg/eclipse/jdt/internal/compiler/util/SimpleSet;->add(Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v6, v6, 0x1

    const/4 v4, 0x0

    goto/16 :goto_0

    :cond_17
    aget-object v8, v1, v7

    if-eq v6, v7, :cond_1c

    const/4 v9, 0x1

    invoke-virtual {v4, v8, v9}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->implementsInterface(Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;Z)Z

    move-result v9

    if-eqz v9, :cond_1c

    if-nez v5, :cond_19

    new-instance v5, Lorg/eclipse/jdt/internal/compiler/util/SimpleSet;

    const/4 v9, 0x3

    invoke-direct {v5, v9}, Lorg/eclipse/jdt/internal/compiler/util/SimpleSet;-><init>(I)V

    :cond_18
    move-object v10, v5

    goto :goto_12

    :cond_19
    const/4 v9, 0x3

    invoke-virtual {v5, v8}, Lorg/eclipse/jdt/internal/compiler/util/SimpleSet;->includes(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_18

    goto :goto_15

    :goto_12
    invoke-virtual {v10, v8}, Lorg/eclipse/jdt/internal/compiler/util/SimpleSet;->add(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v5, v0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodVerifier;->type:Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;

    iget-object v5, v5, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->scope:Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;

    iget-object v5, v5, Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;->referenceContext:Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;

    iget-object v11, v5, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->superInterfaces:[Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    array-length v12, v11

    const/4 v5, 0x0

    :goto_13
    if-lt v5, v12, :cond_1a

    goto :goto_14

    :cond_1a
    aget-object v13, v11, v5

    iget-object v13, v13, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->resolvedType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-static {v13, v4}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->equalsEquals(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Z

    move-result v13

    if-eqz v13, :cond_1b

    invoke-virtual/range {p0 .. p0}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodVerifier;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object v5

    iget-object v12, v0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodVerifier;->type:Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;

    aget-object v11, v11, v7

    invoke-virtual {v5, v12, v11, v8, v4}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->redundantSuperInterface(Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;)V

    :goto_14
    move-object v5, v10

    goto :goto_15

    :cond_1b
    add-int/lit8 v5, v5, 0x1

    goto :goto_13

    :cond_1c
    const/4 v9, 0x3

    :goto_15
    add-int/lit8 v7, v7, 0x1

    goto :goto_11
.end method

.method public checkInheritedMethods([Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;I[Z[Z)V
    .locals 6

    iget-object p4, p0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodVerifier;->type:Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;

    invoke-virtual {p4}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->isInterface()Z

    move-result p4

    const/4 v0, 0x0

    if-nez p4, :cond_1

    aget-object p4, p1, v0

    invoke-virtual {p4}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->isAbstract()Z

    move-result p4

    if-eqz p4, :cond_0

    goto :goto_0

    :cond_0
    aget-object p4, p1, v0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p4, 0x0

    :goto_1
    if-nez p4, :cond_b

    const/4 p4, 0x1

    if-ne p2, p4, :cond_2

    aget-object v1, p1, v0

    goto :goto_2

    :cond_2
    invoke-virtual {p0, p1, p2}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodVerifier;->findBestInheritedAbstractOrDefaultMethod([Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;I)Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    move-result-object v1

    :goto_2
    if-nez v1, :cond_3

    goto :goto_3

    :cond_3
    move p4, v0

    :goto_3
    if-eqz p4, :cond_4

    aget-object v1, p1, v0

    :cond_4
    iget-object v2, v1, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->declaringClass:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    invoke-virtual {p0, v2}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodVerifier;->mustImplementAbstractMethod(Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;)Z

    move-result v2

    if-eqz v2, :cond_9

    iget-object p2, p0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodVerifier;->type:Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;

    iget-object p2, p2, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->scope:Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;

    iget-object p2, p2, Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;->referenceContext:Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;

    aget-object p1, p1, v0

    if-eq p1, v1, :cond_7

    iget-object p3, p1, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->declaringClass:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    invoke-virtual {p3}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->isInterface()Z

    move-result p3

    if-eqz p3, :cond_5

    goto :goto_4

    :cond_5
    if-eqz p2, :cond_6

    invoke-virtual {p2, v1}, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->addMissingAbstractMethodFor(Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;)Lorg/eclipse/jdt/internal/compiler/ast/MethodDeclaration;

    move-result-object p2

    iget-object p2, p2, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->scope:Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object p2

    iget-object p3, p0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodVerifier;->type:Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;

    invoke-virtual {p2, p3, v1, p1}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->abstractMethodMustBeImplemented(Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;)V

    goto :goto_5

    :cond_6
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodVerifier;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object p2

    iget-object p3, p0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodVerifier;->type:Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;

    invoke-virtual {p2, p3, v1, p1}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->abstractMethodMustBeImplemented(Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;)V

    goto :goto_5

    :cond_7
    :goto_4
    if-eqz p2, :cond_8

    invoke-virtual {p2, v1}, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->addMissingAbstractMethodFor(Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;)Lorg/eclipse/jdt/internal/compiler/ast/MethodDeclaration;

    move-result-object p1

    iget-object p1, p1, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->scope:Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object p1

    iget-object p2, p0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodVerifier;->type:Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;

    invoke-virtual {p1, p2, v1}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->abstractMethodMustBeImplemented(Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;)V

    goto :goto_5

    :cond_8
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodVerifier;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object p1

    iget-object p2, p0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodVerifier;->type:Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;

    invoke-virtual {p1, p2, v1}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->abstractMethodMustBeImplemented(Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;)V

    goto :goto_5

    :cond_9
    if-eqz p4, :cond_a

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodVerifier;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object p4

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodVerifier;->type:Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;

    invoke-virtual {p4, v0, p1, p2, p3}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->inheritedMethodsHaveIncompatibleReturnTypes(Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;[Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;I[Z)V

    :cond_a
    :goto_5
    return-void

    :cond_b
    const/4 v1, 0x2

    if-ge p2, v1, :cond_c

    return-void

    :cond_c
    move v1, p2

    :cond_d
    add-int/lit8 v1, v1, -0x1

    if-lez v1, :cond_e

    aget-object v2, p1, v1

    invoke-virtual {p0, p4, v2}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodVerifier;->checkInheritedReturnTypes(Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;)Z

    move-result v2

    if-nez v2, :cond_d

    :cond_e
    if-lez v1, :cond_10

    invoke-virtual {p0, p1, p2}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodVerifier;->findBestInheritedAbstractOrDefaultMethod([Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;I)Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    move-result-object v0

    if-nez v0, :cond_f

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodVerifier;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object p4

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodVerifier;->type:Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;

    invoke-virtual {p4, v0, p1, p2, p3}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->inheritedMethodsHaveIncompatibleReturnTypes(Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;[Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;I[Z)V

    goto :goto_6

    :cond_f
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodVerifier;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object p1

    iget-object p2, p0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodVerifier;->type:Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;

    invoke-virtual {p1, p2, v0, p4}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->abstractMethodMustBeImplemented(Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;)V

    :goto_6
    return-void

    :cond_10
    add-int/lit8 p3, p2, -0x1

    new-array v1, p3, [Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    move v2, v0

    move v3, v2

    :goto_7
    if-lt v2, p2, :cond_13

    if-nez v3, :cond_11

    return-void

    :cond_11
    if-ge v3, p3, :cond_12

    new-array p1, v3, [Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    invoke-static {v1, v0, p1, v0, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v1, p1

    :cond_12
    invoke-virtual {p0, p4, v1}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodVerifier;->checkConcreteInheritedMethod(Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;[Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;)V

    return-void

    :cond_13
    aget-object v4, p1, v2

    invoke-virtual {v4}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->isAbstract()Z

    move-result v4

    if-nez v4, :cond_14

    aget-object v4, p1, v2

    if-eq v4, p4, :cond_15

    invoke-virtual {v4}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->isDefaultMethod()Z

    move-result v4

    if-eqz v4, :cond_15

    :cond_14
    add-int/lit8 v4, v3, 0x1

    aget-object v5, p1, v2

    aput-object v5, v1, v3

    move v3, v4

    :cond_15
    add-int/lit8 v2, v2, 0x1

    goto :goto_7
.end method

.method public checkInheritedReturnTypes(Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;)Z
    .locals 3

    invoke-virtual {p0, p1, p2}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodVerifier;->areReturnTypesCompatible(Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodVerifier;->type:Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->isInterface()Z

    move-result v0

    const/4 v2, 0x0

    if-nez v0, :cond_3

    iget-object v0, p1, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->declaringClass:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->isClass()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodVerifier;->type:Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;

    iget-object p1, p1, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->declaringClass:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    invoke-virtual {v0, p1, v2}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->implementsInterface(Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;Z)Z

    move-result p1

    if-nez p1, :cond_3

    :cond_1
    iget-object p1, p2, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->declaringClass:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->isClass()Z

    move-result p1

    if-nez p1, :cond_2

    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodVerifier;->type:Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;

    iget-object p2, p2, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->declaringClass:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    invoke-virtual {p1, p2, v2}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->implementsInterface(Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;Z)Z

    move-result p1

    if-nez p1, :cond_3

    :cond_2
    return v1

    :cond_3
    return v2
.end method

.method public abstract checkMethods()V
.end method

.method public checkPackagePrivateAbstractMethod(Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;)V
    .locals 7

    iget-object v0, p1, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->declaringClass:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    iget-object v0, v0, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->fPackage:Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodVerifier;->type:Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;

    iget-object v2, v1, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->fPackage:Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;

    if-ne v0, v2, :cond_0

    return-void

    :cond_0
    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->superclass()Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move-result-object v1

    iget-object v2, p1, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->selector:[C

    :cond_1
    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->isValidBinding()Z

    move-result v3

    if-nez v3, :cond_2

    return-void

    :cond_2
    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->isAbstract()Z

    move-result v3

    if-nez v3, :cond_3

    return-void

    :cond_3
    iget-object v3, v1, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->fPackage:Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;

    if-ne v0, v3, :cond_7

    invoke-virtual {v1, v2}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->getMethods([C)[Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    move-result-object v3

    array-length v4, v3

    :cond_4
    :goto_0
    add-int/lit8 v4, v4, -0x1

    if-gez v4, :cond_5

    goto :goto_1

    :cond_5
    aget-object v5, v3, v4

    invoke-virtual {v5}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->isPrivate()Z

    move-result v6

    if-nez v6, :cond_4

    invoke-virtual {v5}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->isConstructor()Z

    move-result v6

    if-nez v6, :cond_4

    invoke-virtual {v5}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->isDefaultAbstract()Z

    move-result v6

    if-eqz v6, :cond_6

    goto :goto_0

    :cond_6
    invoke-virtual {p0, v5, p1}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodVerifier;->areMethodsCompatible(Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;)Z

    move-result v5

    if-eqz v5, :cond_4

    return-void

    :cond_7
    :goto_1
    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->superclass()Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move-result-object v1

    iget-object v3, p1, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->declaringClass:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    invoke-static {v1, v3}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->notEquals(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodVerifier;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object v0

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodVerifier;->type:Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;

    invoke-virtual {v0, v1, p1}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->abstractMethodCannotBeOverridden(Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;)V

    return-void
.end method

.method public collectAllDistinctSuperInterfaces([Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;Ljava/util/Set;Ljava/util/List;)V
    .locals 4

    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-lt v1, v0, :cond_0

    return-void

    :cond_0
    aget-object v2, p1, v1

    invoke-interface {p2, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {p3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v2}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->superInterfaces()[Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move-result-object v2

    invoke-virtual {p0, v2, p2, p3}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodVerifier;->collectAllDistinctSuperInterfaces([Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;Ljava/util/Set;Ljava/util/List;)V

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public computeInheritedMethods()V
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodVerifier;->type:Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->isInterface()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodVerifier;->type:Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;

    iget-object v0, v0, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->scope:Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->getJavaLangObject()Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move-result-object v0

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodVerifier;->type:Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->superclass()Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move-result-object v0

    .line 4
    :goto_0
    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodVerifier;->type:Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->superInterfaces()[Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodVerifier;->computeInheritedMethods(Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;[Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;)V

    .line 5
    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodVerifier;->type:Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->superInterfaces()[Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodVerifier;->checkForRedundantSuperinterfaces(Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;[Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;)V

    return-void
.end method

.method public computeInheritedMethods(Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;[Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;)V
    .locals 13

    .line 6
    new-instance v0, Lorg/eclipse/jdt/internal/compiler/util/HashtableOfObject;

    const/16 v1, 0x33

    invoke-direct {v0, v1}, Lorg/eclipse/jdt/internal/compiler/util/HashtableOfObject;-><init>(I)V

    iput-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodVerifier;->inheritedMethods:Lorg/eclipse/jdt/internal/compiler/util/HashtableOfObject;

    .line 7
    new-instance v0, Lorg/eclipse/jdt/internal/compiler/util/HashtableOfObject;

    const/16 v1, 0xb

    invoke-direct {v0, v1}, Lorg/eclipse/jdt/internal/compiler/util/HashtableOfObject;-><init>(I)V

    iput-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodVerifier;->inheritedOverriddenMethods:Lorg/eclipse/jdt/internal/compiler/util/HashtableOfObject;

    .line 8
    new-instance v0, Lorg/eclipse/jdt/internal/compiler/util/HashtableOfObject;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Lorg/eclipse/jdt/internal/compiler/util/HashtableOfObject;-><init>(I)V

    move-object v1, p1

    :goto_0
    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_13

    .line 9
    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->isValidBinding()Z

    move-result v4

    if-nez v4, :cond_0

    goto/16 :goto_c

    .line 10
    :cond_0
    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->unResolvedMethods()[Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    move-result-object v4

    .line 11
    array-length v5, v4

    :cond_1
    :goto_1
    add-int/lit8 v5, v5, -0x1

    if-gez v5, :cond_2

    .line 12
    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->superclass()Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move-result-object v1

    goto :goto_0

    .line 13
    :cond_2
    aget-object v6, v4, v5

    .line 14
    invoke-virtual {v6}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->isPrivate()Z

    move-result v7

    if-nez v7, :cond_1

    invoke-virtual {v6}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->isConstructor()Z

    move-result v7

    if-nez v7, :cond_1

    invoke-virtual {v6}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->isDefaultAbstract()Z

    move-result v7

    if-eqz v7, :cond_3

    goto :goto_1

    .line 15
    :cond_3
    iget-object v7, p0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodVerifier;->inheritedMethods:Lorg/eclipse/jdt/internal/compiler/util/HashtableOfObject;

    iget-object v8, v6, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->selector:[C

    invoke-virtual {v7, v8}, Lorg/eclipse/jdt/internal/compiler/util/HashtableOfObject;->get([C)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    if-eqz v7, :cond_8

    .line 16
    array-length v8, v7

    move v9, v3

    :goto_2
    if-lt v9, v8, :cond_4

    goto :goto_5

    .line 17
    :cond_4
    aget-object v10, v7, v9

    .line 18
    iget-object v11, v10, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->declaringClass:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    iget-object v12, v6, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->declaringClass:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    invoke-static {v11, v12}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->notEquals(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Z

    move-result v11

    if-eqz v11, :cond_7

    invoke-virtual {p0, v10, v6}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodVerifier;->areMethodsCompatible(Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;)Z

    move-result v11

    if-eqz v11, :cond_7

    invoke-virtual {p0, v10, v6}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodVerifier;->canOverridingMethodDifferInErasure(Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;)Z

    move-result v11

    if-nez v11, :cond_7

    .line 19
    invoke-virtual {v6}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->isDefault()Z

    move-result v11

    if-eqz v11, :cond_6

    .line 20
    invoke-virtual {v6}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->isAbstract()Z

    move-result v11

    if-eqz v11, :cond_5

    .line 21
    invoke-virtual {p0, v6}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodVerifier;->checkPackagePrivateAbstractMethod(Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;)V

    goto :goto_3

    .line 22
    :cond_5
    iget-object v11, v10, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->declaringClass:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    iget-object v11, v11, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->fPackage:Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;

    iget-object v12, v6, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->declaringClass:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    iget-object v12, v12, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->fPackage:Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;

    if-eq v11, v12, :cond_6

    .line 23
    iget-object v11, p0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodVerifier;->type:Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;

    iget-object v11, v11, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->fPackage:Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;

    if-ne v11, v12, :cond_6

    invoke-virtual {p0, v6, v10}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodVerifier;->areReturnTypesCompatible(Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;)Z

    move-result v11

    if-nez v11, :cond_6

    goto :goto_4

    .line 24
    :cond_6
    :goto_3
    iget-object v7, v6, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->returnType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-virtual {v7}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->erasure()Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v7

    iget-object v8, v10, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->returnType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-virtual {v8}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->erasure()Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v8

    invoke-static {v7, v8}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->notEquals(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 25
    invoke-virtual {p0, v10, v6}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodVerifier;->areReturnTypesCompatible(Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 26
    invoke-virtual {p0, v6}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodVerifier;->addBridgeMethodCandidate(Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;)V

    goto/16 :goto_1

    :cond_7
    :goto_4
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    .line 27
    :cond_8
    :goto_5
    invoke-virtual {v6}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->isDefault()Z

    move-result v8

    if-eqz v8, :cond_11

    iget-object v8, v6, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->declaringClass:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    iget-object v8, v8, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->fPackage:Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;

    iget-object v9, p0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodVerifier;->type:Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;

    iget-object v9, v9, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->fPackage:Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;

    if-ne v8, v9, :cond_9

    goto/16 :goto_a

    .line 28
    :cond_9
    iget-object v7, v6, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->selector:[C

    invoke-virtual {v0, v7}, Lorg/eclipse/jdt/internal/compiler/util/HashtableOfObject;->get([C)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    if-eqz v7, :cond_c

    .line 29
    invoke-virtual {v6}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->isAbstract()Z

    move-result v8

    if-eqz v8, :cond_c

    .line 30
    array-length v8, v7

    move v9, v3

    :goto_6
    if-lt v9, v8, :cond_a

    goto :goto_7

    .line 31
    :cond_a
    aget-object v10, v7, v9

    invoke-virtual {p0, v10, v6}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodVerifier;->areMethodsCompatible(Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;)Z

    move-result v10

    if-eqz v10, :cond_b

    goto/16 :goto_1

    :cond_b
    add-int/lit8 v9, v9, 0x1

    goto :goto_6

    :cond_c
    :goto_7
    if-nez v7, :cond_d

    .line 32
    new-array v7, v2, [Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    aput-object v6, v7, v3

    goto :goto_8

    .line 33
    :cond_d
    array-length v8, v7

    add-int/lit8 v9, v8, 0x1

    .line 34
    new-array v9, v9, [Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    invoke-static {v7, v3, v9, v3, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 35
    aput-object v6, v9, v8

    move-object v7, v9

    .line 36
    :goto_8
    iget-object v8, v6, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->selector:[C

    invoke-virtual {v0, v8, v7}, Lorg/eclipse/jdt/internal/compiler/util/HashtableOfObject;->put([CLjava/lang/Object;)Ljava/lang/Object;

    .line 37
    invoke-virtual {v6}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->isAbstract()Z

    move-result v7

    if-eqz v7, :cond_e

    iget-object v7, p0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodVerifier;->type:Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;

    invoke-virtual {v7}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->isAbstract()Z

    move-result v7

    if-nez v7, :cond_e

    .line 38
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodVerifier;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object v7

    iget-object v8, p0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodVerifier;->type:Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;

    invoke-virtual {v7, v8, v6}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->abstractMethodCannotBeOverridden(Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;)V

    .line 39
    :cond_e
    iget-object v7, p0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodVerifier;->currentMethods:Lorg/eclipse/jdt/internal/compiler/util/HashtableOfObject;

    iget-object v8, v6, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->selector:[C

    invoke-virtual {v7, v8}, Lorg/eclipse/jdt/internal/compiler/util/HashtableOfObject;->get([C)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    if-eqz v7, :cond_1

    .line 40
    invoke-virtual {v6}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->isStatic()Z

    move-result v8

    if-nez v8, :cond_1

    .line 41
    array-length v8, v7

    move v9, v3

    :goto_9
    if-lt v9, v8, :cond_f

    goto/16 :goto_1

    .line 42
    :cond_f
    aget-object v10, v7, v9

    invoke-virtual {v10}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->isStatic()Z

    move-result v10

    if-nez v10, :cond_10

    aget-object v10, v7, v9

    invoke-virtual {p0, v10, v6}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodVerifier;->areMethodsCompatible(Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;)Z

    move-result v10

    if-eqz v10, :cond_10

    .line 43
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodVerifier;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object v8

    aget-object v7, v7, v9

    invoke-virtual {v8, v7, v6}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->overridesPackageDefaultMethod(Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;)V

    goto/16 :goto_1

    :cond_10
    add-int/lit8 v9, v9, 0x1

    goto :goto_9

    :cond_11
    :goto_a
    if-nez v7, :cond_12

    .line 44
    new-array v7, v2, [Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    aput-object v6, v7, v3

    goto :goto_b

    .line 45
    :cond_12
    array-length v8, v7

    add-int/lit8 v9, v8, 0x1

    .line 46
    new-array v9, v9, [Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    invoke-static {v7, v3, v9, v3, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 47
    aput-object v6, v9, v8

    move-object v7, v9

    .line 48
    :goto_b
    iget-object v8, p0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodVerifier;->inheritedMethods:Lorg/eclipse/jdt/internal/compiler/util/HashtableOfObject;

    iget-object v6, v6, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->selector:[C

    invoke-virtual {v8, v6, v7}, Lorg/eclipse/jdt/internal/compiler/util/HashtableOfObject;->put([CLjava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    .line 49
    :cond_13
    :goto_c
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 50
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 51
    invoke-virtual {p0, p2, v1, v0}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodVerifier;->collectAllDistinctSuperInterfaces([Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;Ljava/util/Set;Ljava/util/List;)V

    move-object p2, p1

    :goto_d
    if-eqz p2, :cond_15

    .line 52
    iget v4, p2, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->id:I

    if-ne v4, v2, :cond_14

    goto :goto_e

    .line 53
    :cond_14
    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->superInterfaces()[Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move-result-object v4

    invoke-virtual {p0, v4, v1, v0}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodVerifier;->collectAllDistinctSuperInterfaces([Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;Ljava/util/Set;Ljava/util/List;)V

    .line 54
    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->superclass()Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move-result-object p2

    goto :goto_d

    .line 55
    :cond_15
    :goto_e
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p2

    if-nez p2, :cond_16

    return-void

    .line 56
    :cond_16
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p2

    if-ne p2, v2, :cond_17

    .line 57
    new-array p2, v2, [Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    aput-object v0, p2, v3

    goto :goto_f

    .line 58
    :cond_17
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p2

    new-array p2, p2, [Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    invoke-interface {v0, p2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    .line 59
    invoke-static {p2}, Lorg/eclipse/jdt/internal/compiler/util/Sorting;->sortTypes([Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;)[Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move-result-object p2

    .line 60
    :goto_f
    invoke-virtual {p0, p1, p2}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodVerifier;->findSuperinterfaceCollisions(Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;[Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;)Lorg/eclipse/jdt/internal/compiler/util/SimpleSet;

    move-result-object p1

    .line 61
    array-length v0, p2

    sub-int/2addr v0, v2

    :goto_10
    if-gez v0, :cond_18

    return-void

    .line 62
    :cond_18
    aget-object v1, p2, v0

    .line 63
    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->isValidBinding()Z

    move-result v4

    if-eqz v4, :cond_21

    if-eqz p1, :cond_19

    .line 64
    invoke-virtual {p1, v1}, Lorg/eclipse/jdt/internal/compiler/util/SimpleSet;->includes(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_19

    goto/16 :goto_14

    .line 65
    :cond_19
    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->unResolvedMethods()[Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    move-result-object v4

    .line 66
    array-length v5, v4

    :cond_1a
    :goto_11
    add-int/lit8 v5, v5, -0x1

    if-gez v5, :cond_1b

    goto :goto_14

    .line 67
    :cond_1b
    aget-object v6, v4, v5

    .line 68
    invoke-virtual {v6}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->isStatic()Z

    move-result v7

    if-nez v7, :cond_1a

    invoke-virtual {v6}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->isPrivate()Z

    move-result v7

    if-eqz v7, :cond_1c

    goto :goto_11

    .line 69
    :cond_1c
    iget-object v7, p0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodVerifier;->inheritedMethods:Lorg/eclipse/jdt/internal/compiler/util/HashtableOfObject;

    iget-object v8, v6, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->selector:[C

    invoke-virtual {v7, v8}, Lorg/eclipse/jdt/internal/compiler/util/HashtableOfObject;->get([C)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    if-nez v7, :cond_1d

    .line 70
    new-array v7, v2, [Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    aput-object v6, v7, v3

    goto :goto_13

    .line 71
    :cond_1d
    array-length v8, v7

    move v9, v3

    :goto_12
    if-lt v9, v8, :cond_1e

    add-int/lit8 v9, v8, 0x1

    .line 72
    new-array v9, v9, [Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    invoke-static {v7, v3, v9, v3, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 73
    aput-object v6, v9, v8

    move-object v7, v9

    .line 74
    :goto_13
    iget-object v8, p0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodVerifier;->inheritedMethods:Lorg/eclipse/jdt/internal/compiler/util/HashtableOfObject;

    iget-object v6, v6, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->selector:[C

    invoke-virtual {v8, v6, v7}, Lorg/eclipse/jdt/internal/compiler/util/HashtableOfObject;->put([CLjava/lang/Object;)Ljava/lang/Object;

    goto :goto_11

    .line 75
    :cond_1e
    aget-object v10, v7, v9

    invoke-virtual {p0, v6, v10, v1}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodVerifier;->isInterfaceMethodImplemented(Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;)Z

    move-result v10

    if-eqz v10, :cond_20

    .line 76
    iget-object v10, v6, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->returnType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-virtual {v10}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->erasure()Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v10

    aget-object v11, v7, v9

    iget-object v11, v11, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->returnType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-virtual {v11}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->erasure()Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v11

    invoke-static {v10, v11}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->notEquals(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Z

    move-result v10

    if-eqz v10, :cond_1f

    .line 77
    invoke-virtual {p0, v6}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodVerifier;->addBridgeMethodCandidate(Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;)V

    .line 78
    :cond_1f
    aget-object v10, v7, v9

    invoke-virtual {p0, v10, v6}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodVerifier;->canOverridingMethodDifferInErasure(Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;)Z

    move-result v10

    if-nez v10, :cond_20

    goto :goto_11

    :cond_20
    add-int/lit8 v9, v9, 0x1

    goto :goto_12

    :cond_21
    :goto_14
    add-int/lit8 v0, v0, -0x1

    goto/16 :goto_10
.end method

.method public computeMethods()V
    .locals 8

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodVerifier;->type:Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->methods()[Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    move-result-object v0

    array-length v1, v0

    new-instance v2, Lorg/eclipse/jdt/internal/compiler/util/HashtableOfObject;

    const/4 v3, 0x1

    if-nez v1, :cond_0

    move v4, v3

    goto :goto_0

    :cond_0
    move v4, v1

    :goto_0
    invoke-direct {v2, v4}, Lorg/eclipse/jdt/internal/compiler/util/HashtableOfObject;-><init>(I)V

    iput-object v2, p0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodVerifier;->currentMethods:Lorg/eclipse/jdt/internal/compiler/util/HashtableOfObject;

    :cond_1
    :goto_1
    add-int/lit8 v1, v1, -0x1

    if-gez v1, :cond_2

    return-void

    :cond_2
    aget-object v2, v0, v1

    invoke-virtual {v2}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->isConstructor()Z

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual {v2}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->isDefaultAbstract()Z

    move-result v4

    if-nez v4, :cond_1

    iget-object v4, p0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodVerifier;->currentMethods:Lorg/eclipse/jdt/internal/compiler/util/HashtableOfObject;

    iget-object v5, v2, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->selector:[C

    invoke-virtual {v4, v5}, Lorg/eclipse/jdt/internal/compiler/util/HashtableOfObject;->get([C)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    if-nez v4, :cond_3

    new-array v4, v3, [Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    goto :goto_2

    :cond_3
    array-length v5, v4

    add-int/lit8 v6, v5, 0x1

    new-array v6, v6, [Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    const/4 v7, 0x0

    invoke-static {v4, v7, v6, v7, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v4, v6

    :goto_2
    array-length v5, v4

    sub-int/2addr v5, v3

    aput-object v2, v4, v5

    iget-object v5, p0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodVerifier;->currentMethods:Lorg/eclipse/jdt/internal/compiler/util/HashtableOfObject;

    iget-object v2, v2, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->selector:[C

    invoke-virtual {v5, v2, v4}, Lorg/eclipse/jdt/internal/compiler/util/HashtableOfObject;->put([CLjava/lang/Object;)Ljava/lang/Object;

    goto :goto_1
.end method

.method public computeSubstituteMethod(Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ImplicitNullAnnotationVerifier;->environment:Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    invoke-static {p1, p2, v0}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodVerifier;->computeSubstituteMethod(Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;)Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    move-result-object p1

    return-object p1
.end method

.method public doesMethodOverride(Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ImplicitNullAnnotationVerifier;->environment:Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    invoke-static {p1, p2, v0}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodVerifier;->doesMethodOverride(Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;)Z

    move-result p1

    return p1
.end method

.method public findBestInheritedAbstractOrDefaultMethod([Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;I)Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;
    .locals 5

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-lt v1, p2, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    aget-object v2, p1, v1

    invoke-virtual {v2}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->isAbstract()Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {v2}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->isDefaultMethod()Z

    move-result v3

    if-nez v3, :cond_1

    goto :goto_2

    :cond_1
    move v3, v0

    :goto_1
    if-lt v3, p2, :cond_2

    return-object v2

    :cond_2
    if-ne v1, v3, :cond_3

    goto :goto_3

    :cond_3
    aget-object v4, p1, v3

    invoke-virtual {p0, v2, v4}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodVerifier;->checkInheritedReturnTypes(Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;)Z

    move-result v4

    if-nez v4, :cond_5

    iget-object v4, p0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodVerifier;->type:Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;

    invoke-virtual {v4}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->isInterface()Z

    move-result v4

    if-eqz v4, :cond_4

    aget-object v3, p1, v3

    iget-object v3, v3, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->declaringClass:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    iget v3, v3, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->id:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_4

    return-object v2

    :cond_4
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_5
    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1
.end method

.method public findOverriddenInheritedMethods([Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;I)[I
    .locals 8

    const/4 v0, 0x0

    aget-object v1, p1, v0

    iget-object v1, v1, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->declaringClass:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->isInterface()Z

    move-result v2

    const/4 v3, -0x1

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-nez v2, :cond_6

    aget-object v0, p1, v4

    iget-object v0, v0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->declaringClass:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move v2, v4

    :goto_0
    invoke-static {v1, v0}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->equalsEquals(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Z

    move-result v6

    if-nez v6, :cond_4

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->isInterface()Z

    move-result v6

    if-nez v6, :cond_3

    iget-object v1, v1, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->fPackage:Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;

    iget-object v0, v0, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->fPackage:Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;

    if-eq v1, v0, :cond_0

    aget-object v0, p1, v2

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->isDefault()Z

    move-result v0

    if-eqz v0, :cond_0

    return-object v5

    :cond_0
    new-array v0, p2, [I

    :cond_1
    aput v3, v0, v2

    add-int/2addr v2, v4

    if-ne v2, p2, :cond_2

    return-object v0

    :cond_2
    aget-object v1, p1, v2

    iget-object v1, v1, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->declaringClass:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->isInterface()Z

    move-result v1

    if-eqz v1, :cond_1

    move-object v5, v0

    :cond_3
    move v0, v2

    goto :goto_1

    :cond_4
    add-int/lit8 v2, v2, 0x1

    if-ne v2, p2, :cond_5

    return-object v5

    :cond_5
    aget-object v0, p1, v2

    iget-object v0, v0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->declaringClass:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    goto :goto_0

    :cond_6
    :goto_1
    if-lt v0, p2, :cond_7

    return-object v5

    :cond_7
    if-eqz v5, :cond_8

    aget v1, v5, v0

    if-ne v1, v3, :cond_8

    goto :goto_3

    :cond_8
    aget-object v1, p1, v0

    iget-object v1, v1, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->declaringClass:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    add-int/lit8 v2, v0, 0x1

    :goto_2
    if-lt v2, p2, :cond_9

    goto :goto_3

    :cond_9
    if-eqz v5, :cond_a

    aget v6, v5, v2

    if-ne v6, v3, :cond_a

    goto :goto_4

    :cond_a
    aget-object v6, p1, v2

    iget-object v6, v6, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->declaringClass:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    invoke-static {v1, v6}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->equalsEquals(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Z

    move-result v7

    if-eqz v7, :cond_b

    goto :goto_4

    :cond_b
    invoke-virtual {v1, v6, v4}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->implementsInterface(Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;Z)Z

    move-result v7

    if-eqz v7, :cond_d

    if-nez v5, :cond_c

    new-array v5, p2, [I

    :cond_c
    aput v3, v5, v2

    goto :goto_4

    :cond_d
    invoke-virtual {v6, v1, v4}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->implementsInterface(Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;Z)Z

    move-result v6

    if-eqz v6, :cond_f

    if-nez v5, :cond_e

    new-array v5, p2, [I

    :cond_e
    aput v3, v5, v0

    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_f
    :goto_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_2
.end method

.method public findSuperinterfaceCollisions(Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;[Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;)Lorg/eclipse/jdt/internal/compiler/util/SimpleSet;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public isAsVisible(Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;)Z
    .locals 3

    iget v0, p2, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->modifiers:I

    iget v1, p1, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->modifiers:I

    const/4 v2, 0x1

    if-ne v0, v1, :cond_0

    return v2

    :cond_0
    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->isPublic()Z

    move-result v0

    if-eqz v0, :cond_1

    return v2

    :cond_1
    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->isPublic()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    return v1

    :cond_2
    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->isProtected()Z

    move-result v0

    if-eqz v0, :cond_3

    return v2

    :cond_3
    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->isProtected()Z

    move-result p2

    if-eqz p2, :cond_4

    return v1

    :cond_4
    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->isPrivate()Z

    move-result p1

    xor-int/2addr p1, v2

    return p1
.end method

.method public isInterfaceMethodImplemented(Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;)Z
    .locals 0

    invoke-static {p2, p1}, Lorg/eclipse/jdt/internal/compiler/lookup/ImplicitNullAnnotationVerifier;->areParametersEqual(Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p2, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->declaringClass:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    const/4 p2, 0x1

    invoke-virtual {p1, p3, p2}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->implementsInterface(Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;Z)Z

    move-result p1

    if-eqz p1, :cond_0

    return p2

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public isMethodSubsignature(Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;)Z
    .locals 2

    iget-object v0, p1, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->selector:[C

    iget-object v1, p2, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->selector:[C

    invoke-static {v0, v1}, Lorg/eclipse/jdt/core/compiler/CharOperation;->equals([C[C)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1, p2}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodVerifier;->isParameterSubsignature(Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public isParameterSubsignature(Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ImplicitNullAnnotationVerifier;->environment:Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    invoke-static {p1, p2, v0}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodVerifier;->isParameterSubsignature(Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;)Z

    move-result p1

    return p1
.end method

.method public isSameClassOrSubclassOf(Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;)Z
    .locals 1

    :cond_0
    invoke-static {p1, p2}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->equalsEquals(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->superclass()Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1
.end method

.method public isSubstituteParameterSubsignature(Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ImplicitNullAnnotationVerifier;->environment:Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    invoke-static {p1, p2, v0}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodVerifier;->isSubstituteParameterSubsignature(Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;)Z

    move-result p1

    return p1
.end method

.method public mustImplementAbstractMethod(Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;)Z
    .locals 4

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodVerifier;->mustImplementAbstractMethods()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodVerifier;->type:Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->superclass()Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move-result-object v0

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->isClass()Z

    move-result v2

    if-eqz v2, :cond_2

    :goto_0
    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->isAbstract()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-static {v0, p1}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->notEquals(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_2

    :cond_1
    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->superclass()Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move-result-object v0

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodVerifier;->type:Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;

    invoke-virtual {v2, p1, v1}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->implementsInterface(Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;Z)Z

    move-result v2

    if-eqz v2, :cond_3

    const/4 v2, 0x1

    invoke-virtual {v0, p1, v2}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->implementsInterface(Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;Z)Z

    move-result v3

    if-nez v3, :cond_3

    return v2

    :cond_3
    :goto_1
    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->isAbstract()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-virtual {v0, p1, v1}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->implementsInterface(Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;Z)Z

    move-result v2

    if-eqz v2, :cond_4

    goto :goto_2

    :cond_4
    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->superclass()Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move-result-object v0

    goto :goto_1

    :cond_5
    :goto_2
    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->isAbstract()Z

    move-result p1

    return p1
.end method

.method public mustImplementAbstractMethods()Z
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodVerifier;->type:Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->isInterface()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodVerifier;->type:Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->isAbstract()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodVerifier;->type:Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;

    iget-object v0, v0, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->scope:Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object v0

    return-object v0
.end method

.method public problemReporter(Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;)Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;
    .locals 3

    .line 2
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodVerifier;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object v0

    .line 3
    iget-object v1, p1, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->declaringClass:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodVerifier;->type:Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;

    invoke-static {v1, v2}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->equalsEquals(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->sourceMethod()Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 4
    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->sourceMethod()Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;

    move-result-object p1

    iput-object p1, v0, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->referenceContext:Lorg/eclipse/jdt/internal/compiler/impl/ReferenceContext;

    :cond_0
    return-object v0
.end method

.method public reportIncompatibleReturnTypeError(Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;)Z
    .locals 1

    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodVerifier;->problemReporter(Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;)Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->incompatibleReturnType(Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;)V

    const/4 p1, 0x1

    return p1
.end method

.method public reportRawReferences(Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;)V
    .locals 0

    return-void
.end method

.method public resolvedExceptionTypesFor(Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;)[Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;
    .locals 4

    iget-object v0, p1, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->thrownExceptions:[Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    iget v1, p1, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->modifiers:I

    const/high16 v2, 0x2000000

    and-int/2addr v1, v2

    if-nez v1, :cond_0

    return-object v0

    :cond_0
    iget-object p1, p1, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->declaringClass:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    instance-of p1, p1, Lorg/eclipse/jdt/internal/compiler/lookup/BinaryTypeBinding;

    if-nez p1, :cond_1

    sget-object p1, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->NO_EXCEPTIONS:[Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    return-object p1

    :cond_1
    array-length p1, v0

    :goto_0
    add-int/lit8 p1, p1, -0x1

    if-gez p1, :cond_2

    return-object v0

    :cond_2
    aget-object v1, v0, p1

    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ImplicitNullAnnotationVerifier;->environment:Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Lorg/eclipse/jdt/internal/compiler/lookup/BinaryTypeBinding;->resolveType(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;Z)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v1

    check-cast v1, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    aput-object v1, v0, p1

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuffer;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    const-string v2, "MethodVerifier for type: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodVerifier;->type:Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;

    invoke-virtual {v2}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->readableName()[C

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    const-string v1, "\t-inherited methods: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodVerifier;->inheritedMethods:Lorg/eclipse/jdt/internal/compiler/util/HashtableOfObject;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public verify()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodVerifier;->computeMethods()V

    .line 2
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodVerifier;->computeInheritedMethods()V

    .line 3
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodVerifier;->checkMethods()V

    .line 4
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodVerifier;->type:Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->isClass()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodVerifier;->checkForMissingHashCodeMethod()V

    :cond_0
    return-void
.end method

.method public verify(Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;)V
    .locals 1

    .line 6
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodVerifier;->type:Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 7
    :try_start_0
    iput-object p1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodVerifier;->type:Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;

    .line 8
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodVerifier;->verify()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    iput-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodVerifier;->type:Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;

    goto :goto_0

    :catchall_0
    move-exception p1

    iput-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodVerifier;->type:Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;

    .line 10
    throw p1

    .line 11
    :cond_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ImplicitNullAnnotationVerifier;->environment:Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->newMethodVerifier()Lorg/eclipse/jdt/internal/compiler/lookup/MethodVerifier;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodVerifier;->verify(Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;)V

    :goto_0
    return-void
.end method
