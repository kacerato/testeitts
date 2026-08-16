.class public Lorg/eclipse/jdt/internal/compiler/lookup/Scope$Substitutor;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/eclipse/jdt/internal/compiler/lookup/Scope;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Substitutor"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static isMemberTypeOfRaw(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;)Z
    .locals 0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isRawType()Z

    move-result p1

    if-eqz p1, :cond_0

    instance-of p1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    if-eqz p1, :cond_0

    check-cast p0, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->isStatic()Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public substitute(Lorg/eclipse/jdt/internal/compiler/lookup/Substitution;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;
    .locals 13

    const/4 v0, 0x0

    if-nez p2, :cond_0

    return-object v0

    .line 8
    :cond_0
    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->kind()I

    move-result v1

    const/4 v2, 0x4

    if-eq v1, v2, :cond_12

    const/16 v2, 0x44

    if-eq v1, v2, :cond_11

    const/16 v2, 0x104

    if-eq v1, v2, :cond_b

    const/16 v2, 0x204

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eq v1, v2, :cond_7

    const/16 v2, 0x804

    if-eq v1, v2, :cond_3

    const/16 v2, 0x1004

    if-eq v1, v2, :cond_2

    const/16 v2, 0x2004

    if-eq v1, v2, :cond_7

    const v0, 0x8004

    if-eq v1, v0, :cond_1

    goto/16 :goto_5

    .line 9
    :cond_1
    check-cast p2, Lorg/eclipse/jdt/internal/compiler/lookup/IntersectionTypeBinding18;

    .line 10
    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/lookup/IntersectionTypeBinding18;->getIntersectingTypes()[Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move-result-object p2

    .line 11
    invoke-virtual {p0, p1, p2}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope$Substitutor;->substitute(Lorg/eclipse/jdt/internal/compiler/lookup/Substitution;[Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;)[Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move-result-object p2

    .line 12
    array-length v0, p2

    new-array v0, v0, [Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    .line 13
    array-length v1, p2

    invoke-static {p2, v3, v0, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 14
    invoke-interface {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/Substitution;->environment()Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    move-result-object p1

    invoke-virtual {p1, v0}, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->createIntersectionType18([Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object p1

    return-object p1

    .line 15
    :cond_2
    check-cast p2, Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;

    invoke-interface {p1, p2}, Lorg/eclipse/jdt/internal/compiler/lookup/Substitution;->substitute(Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object p1

    return-object p1

    .line 16
    :cond_3
    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->unannotated()Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    .line 17
    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->enclosingType()Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 18
    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isStatic()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/Substitution;->environment()Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    move-result-object v2

    invoke-virtual {v2, v1, v4}, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->convertToRawType(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Z)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v1

    goto :goto_0

    .line 19
    :cond_4
    invoke-virtual {p0, p1, v1}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope$Substitutor;->substitute(Lorg/eclipse/jdt/internal/compiler/lookup/Substitution;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v1

    check-cast v1, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    .line 20
    :goto_0
    check-cast v1, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    .line 21
    invoke-static {p2, v1}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope$Substitutor;->isMemberTypeOfRaw(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 22
    invoke-interface {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/Substitution;->environment()Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    move-result-object p1

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->getTypeAnnotations()[Lorg/eclipse/jdt/internal/compiler/lookup/AnnotationBinding;

    move-result-object p2

    invoke-virtual {p1, v0, v1, p2}, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->createRawType(Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;[Lorg/eclipse/jdt/internal/compiler/lookup/AnnotationBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/RawTypeBinding;

    move-result-object p1

    return-object p1

    .line 23
    :cond_5
    invoke-interface {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/Substitution;->isRawSubstitution()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 24
    invoke-interface {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/Substitution;->environment()Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    move-result-object p1

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->getTypeAnnotations()[Lorg/eclipse/jdt/internal/compiler/lookup/AnnotationBinding;

    move-result-object p2

    invoke-virtual {p1, v0, v1, p2}, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->createRawType(Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;[Lorg/eclipse/jdt/internal/compiler/lookup/AnnotationBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/RawTypeBinding;

    move-result-object p1

    return-object p1

    .line 25
    :cond_6
    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->typeVariables()[Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;

    move-result-object v2

    .line 26
    invoke-virtual {p0, p1, v2}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope$Substitutor;->substitute(Lorg/eclipse/jdt/internal/compiler/lookup/Substitution;[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v2

    .line 27
    invoke-interface {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/Substitution;->environment()Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    move-result-object p1

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->getTypeAnnotations()[Lorg/eclipse/jdt/internal/compiler/lookup/AnnotationBinding;

    move-result-object p2

    invoke-virtual {p1, v0, v2, v1, p2}, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->createParameterizedType(Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;[Lorg/eclipse/jdt/internal/compiler/lookup/AnnotationBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/ParameterizedTypeBinding;

    move-result-object p1

    return-object p1

    .line 28
    :cond_7
    move-object v1, p2

    check-cast v1, Lorg/eclipse/jdt/internal/compiler/lookup/WildcardBinding;

    .line 29
    iget v2, v1, Lorg/eclipse/jdt/internal/compiler/lookup/WildcardBinding;->boundKind:I

    if-eqz v2, :cond_17

    .line 30
    iget-object v2, v1, Lorg/eclipse/jdt/internal/compiler/lookup/WildcardBinding;->bound:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    .line 31
    invoke-virtual {p0, p1, v2}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope$Substitutor;->substitute(Lorg/eclipse/jdt/internal/compiler/lookup/Substitution;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v5

    .line 32
    iget-object v6, v1, Lorg/eclipse/jdt/internal/compiler/lookup/WildcardBinding;->otherBounds:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    .line 33
    invoke-virtual {p0, p1, v6}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope$Substitutor;->substitute(Lorg/eclipse/jdt/internal/compiler/lookup/Substitution;[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v7

    if-ne v5, v2, :cond_8

    if-eq v6, v7, :cond_17

    :cond_8
    if-eqz v6, :cond_a

    .line 34
    array-length p2, v7

    add-int/2addr p2, v4

    new-array p2, p2, [Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    .line 35
    aput-object v5, p2, v3

    .line 36
    array-length v2, v7

    invoke-static {v7, v3, p2, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 37
    invoke-interface {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/Substitution;->environment()Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    move-result-object p1

    invoke-static {p2, v0, p1}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->greaterLowerBound([Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/Scope;Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;)[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object p1

    if-eqz p1, :cond_a

    if-eq p1, p2, :cond_a

    .line 38
    aget-object v5, p1, v3

    .line 39
    array-length p2, p1

    if-ne p2, v4, :cond_9

    :goto_1
    move-object v10, v0

    move-object v9, v5

    goto :goto_2

    .line 40
    :cond_9
    array-length p2, p1

    sub-int/2addr p2, v4

    new-array v0, p2, [Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    array-length p2, p1

    sub-int/2addr p2, v4

    invoke-static {p1, v4, v0, v3, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_1

    :cond_a
    move-object v9, v5

    move-object v10, v7

    .line 41
    :goto_2
    iget-object v6, v1, Lorg/eclipse/jdt/internal/compiler/lookup/WildcardBinding;->environment:Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    iget-object v7, v1, Lorg/eclipse/jdt/internal/compiler/lookup/WildcardBinding;->genericType:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    iget v8, v1, Lorg/eclipse/jdt/internal/compiler/lookup/WildcardBinding;->rank:I

    iget v11, v1, Lorg/eclipse/jdt/internal/compiler/lookup/WildcardBinding;->boundKind:I

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->getTypeAnnotations()[Lorg/eclipse/jdt/internal/compiler/lookup/AnnotationBinding;

    move-result-object v12

    invoke-virtual/range {v6 .. v12}, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->createWildcard(Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;ILorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;I[Lorg/eclipse/jdt/internal/compiler/lookup/AnnotationBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/WildcardBinding;

    move-result-object p1

    return-object p1

    .line 42
    :cond_b
    move-object v0, p2

    check-cast v0, Lorg/eclipse/jdt/internal/compiler/lookup/ParameterizedTypeBinding;

    .line 43
    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->enclosingType()Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move-result-object v1

    if-eqz v1, :cond_c

    .line 44
    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->hasEnclosingInstanceContext()Z

    move-result v2

    if-eqz v2, :cond_c

    .line 45
    invoke-virtual {p0, p1, v1}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope$Substitutor;->substitute(Lorg/eclipse/jdt/internal/compiler/lookup/Substitution;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v2

    check-cast v2, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    .line 46
    invoke-static {p2, v2}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope$Substitutor;->isMemberTypeOfRaw(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;)Z

    move-result v3

    if-eqz v3, :cond_d

    .line 47
    iget-object p1, v0, Lorg/eclipse/jdt/internal/compiler/lookup/ParameterizedTypeBinding;->environment:Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    .line 48
    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/ParameterizedTypeBinding;->genericType()Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move-result-object v0

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->getTypeAnnotations()[Lorg/eclipse/jdt/internal/compiler/lookup/AnnotationBinding;

    move-result-object p2

    .line 49
    invoke-virtual {p1, v0, v2, p2}, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->createRawType(Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;[Lorg/eclipse/jdt/internal/compiler/lookup/AnnotationBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/RawTypeBinding;

    move-result-object p1

    return-object p1

    :cond_c
    move-object v2, v1

    .line 50
    :cond_d
    iget-object v3, v0, Lorg/eclipse/jdt/internal/compiler/lookup/ParameterizedTypeBinding;->arguments:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    if-eqz v3, :cond_f

    .line 51
    invoke-interface {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/Substitution;->isRawSubstitution()Z

    move-result v4

    if-eqz v4, :cond_e

    .line 52
    iget-object p1, v0, Lorg/eclipse/jdt/internal/compiler/lookup/ParameterizedTypeBinding;->environment:Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/ParameterizedTypeBinding;->genericType()Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move-result-object v0

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->getTypeAnnotations()[Lorg/eclipse/jdt/internal/compiler/lookup/AnnotationBinding;

    move-result-object p2

    invoke-virtual {p1, v0, v2, p2}, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->createRawType(Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;[Lorg/eclipse/jdt/internal/compiler/lookup/AnnotationBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/RawTypeBinding;

    move-result-object p1

    return-object p1

    .line 53
    :cond_e
    invoke-virtual {p0, p1, v3}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope$Substitutor;->substitute(Lorg/eclipse/jdt/internal/compiler/lookup/Substitution;[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object p1

    goto :goto_3

    :cond_f
    move-object p1, v3

    :goto_3
    if-ne p1, v3, :cond_10

    if-eq v2, v1, :cond_17

    .line 54
    :cond_10
    iget-object v1, v0, Lorg/eclipse/jdt/internal/compiler/lookup/ParameterizedTypeBinding;->environment:Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    .line 55
    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/ParameterizedTypeBinding;->genericType()Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move-result-object v0

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->getTypeAnnotations()[Lorg/eclipse/jdt/internal/compiler/lookup/AnnotationBinding;

    move-result-object p2

    .line 56
    invoke-virtual {v1, v0, p1, v2, p2}, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->createParameterizedType(Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;[Lorg/eclipse/jdt/internal/compiler/lookup/AnnotationBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/ParameterizedTypeBinding;

    move-result-object p1

    return-object p1

    .line 57
    :cond_11
    move-object v0, p2

    check-cast v0, Lorg/eclipse/jdt/internal/compiler/lookup/ArrayBinding;

    .line 58
    iget-object v1, v0, Lorg/eclipse/jdt/internal/compiler/lookup/ArrayBinding;->leafComponentType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    .line 59
    invoke-virtual {p0, p1, v1}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope$Substitutor;->substitute(Lorg/eclipse/jdt/internal/compiler/lookup/Substitution;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object p1

    if-eq p1, v1, :cond_17

    .line 60
    iget-object v0, v0, Lorg/eclipse/jdt/internal/compiler/lookup/ArrayBinding;->environment:Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->leafComponentType()Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v1

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->dimensions()I

    move-result p1

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->dimensions()I

    move-result v2

    add-int/2addr p1, v2

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->getTypeAnnotations()[Lorg/eclipse/jdt/internal/compiler/lookup/AnnotationBinding;

    move-result-object p2

    invoke-virtual {v0, v1, p1, p2}, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->createArrayType(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;I[Lorg/eclipse/jdt/internal/compiler/lookup/AnnotationBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/ArrayBinding;

    move-result-object p1

    return-object p1

    .line 61
    :cond_12
    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isMemberType()Z

    move-result v1

    if-nez v1, :cond_13

    goto :goto_5

    .line 62
    :cond_13
    move-object v1, p2

    check-cast v1, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    .line 63
    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->enclosingType()Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move-result-object v2

    if-eqz v2, :cond_14

    .line 64
    invoke-virtual {p0, p1, v2}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope$Substitutor;->substitute(Lorg/eclipse/jdt/internal/compiler/lookup/Substitution;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v3

    check-cast v3, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    .line 65
    invoke-static {p2, v3}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope$Substitutor;->isMemberTypeOfRaw(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;)Z

    move-result v4

    if-eqz v4, :cond_15

    .line 66
    invoke-interface {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/Substitution;->environment()Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    move-result-object p1

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->getTypeAnnotations()[Lorg/eclipse/jdt/internal/compiler/lookup/AnnotationBinding;

    move-result-object p2

    invoke-virtual {p1, v1, v3, p2}, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->createRawType(Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;[Lorg/eclipse/jdt/internal/compiler/lookup/AnnotationBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/RawTypeBinding;

    move-result-object p1

    return-object p1

    :cond_14
    move-object v3, v2

    :cond_15
    if-eq v3, v2, :cond_17

    .line 67
    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->hasEnclosingInstanceContext()Z

    move-result v2

    if-eqz v2, :cond_17

    .line 68
    invoke-interface {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/Substitution;->isRawSubstitution()Z

    move-result v2

    if-eqz v2, :cond_16

    .line 69
    invoke-interface {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/Substitution;->environment()Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    move-result-object p1

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->getTypeAnnotations()[Lorg/eclipse/jdt/internal/compiler/lookup/AnnotationBinding;

    move-result-object p2

    invoke-virtual {p1, v1, v3, p2}, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->createRawType(Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;[Lorg/eclipse/jdt/internal/compiler/lookup/AnnotationBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/RawTypeBinding;

    move-result-object p1

    goto :goto_4

    .line 70
    :cond_16
    invoke-interface {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/Substitution;->environment()Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    move-result-object p1

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->getTypeAnnotations()[Lorg/eclipse/jdt/internal/compiler/lookup/AnnotationBinding;

    move-result-object p2

    invoke-virtual {p1, v1, v0, v3, p2}, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->createParameterizedType(Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;[Lorg/eclipse/jdt/internal/compiler/lookup/AnnotationBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/ParameterizedTypeBinding;

    move-result-object p1

    :goto_4
    return-object p1

    :cond_17
    :goto_5
    return-object p2
.end method

.method public substitute(Lorg/eclipse/jdt/internal/compiler/lookup/Substitution;[Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;)[Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;
    .locals 8

    const/4 v0, 0x0

    if-nez p2, :cond_0

    return-object v0

    .line 1
    :cond_0
    array-length v1, p2

    const/4 v2, 0x0

    move-object v4, p2

    move v3, v2

    :goto_0
    if-lt v3, v1, :cond_1

    return-object v4

    .line 2
    :cond_1
    aget-object v5, p2, v3

    .line 3
    invoke-virtual {p0, p1, v5}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope$Substitutor;->substitute(Lorg/eclipse/jdt/internal/compiler/lookup/Substitution;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v6

    .line 4
    instance-of v7, v6, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    if-nez v7, :cond_2

    return-object v0

    :cond_2
    if-eq v6, v5, :cond_4

    if-ne v4, p2, :cond_3

    .line 5
    new-array v4, v1, [Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    invoke-static {p2, v2, v4, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 6
    :cond_3
    check-cast v6, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    aput-object v6, v4, v3

    goto :goto_1

    :cond_4
    if-eq v4, p2, :cond_5

    .line 7
    aput-object v5, v4, v3

    :cond_5
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method public substitute(Lorg/eclipse/jdt/internal/compiler/lookup/Substitution;[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;
    .locals 6

    if-nez p2, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 71
    :cond_0
    array-length v0, p2

    const/4 v1, 0x0

    move-object v3, p2

    move v2, v1

    :goto_0
    if-lt v2, v0, :cond_1

    return-object v3

    .line 72
    :cond_1
    aget-object v4, p2, v2

    .line 73
    invoke-virtual {p0, p1, v4}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope$Substitutor;->substitute(Lorg/eclipse/jdt/internal/compiler/lookup/Substitution;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v5

    if-eq v5, v4, :cond_3

    if-ne v3, p2, :cond_2

    .line 74
    new-array v3, v0, [Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-static {p2, v1, v3, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 75
    :cond_2
    aput-object v5, v3, v2

    goto :goto_1

    :cond_3
    if-eq v3, p2, :cond_4

    .line 76
    aput-object v4, v3, v2

    :cond_4
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method
