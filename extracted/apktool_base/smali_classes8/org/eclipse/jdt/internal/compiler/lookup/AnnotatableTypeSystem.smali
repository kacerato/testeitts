.class public Lorg/eclipse/jdt/internal/compiler/lookup/AnnotatableTypeSystem;
.super Lorg/eclipse/jdt/internal/compiler/lookup/TypeSystem;
.source "SourceFile"


# instance fields
.field private isAnnotationBasedNullAnalysisEnabled:Z


# direct methods
.method public constructor <init>(Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeSystem;-><init>(Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;)V

    iput-object p1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeSystem;->environment:Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    iget-object p1, p1, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->globalOptions:Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;

    iget-boolean p1, p1, Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;->isAnnotationBasedNullAnalysisEnabled:Z

    iput-boolean p1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/AnnotatableTypeSystem;->isAnnotationBasedNullAnalysisEnabled:Z

    return-void
.end method

.method public static flattenedAnnotations([[Lorg/eclipse/jdt/internal/compiler/lookup/AnnotationBinding;)[Lorg/eclipse/jdt/internal/compiler/lookup/AnnotationBinding;
    .locals 8

    if-eqz p0, :cond_8

    array-length v0, p0

    if-nez v0, :cond_0

    goto :goto_4

    :cond_0
    array-length v0, p0

    const/4 v1, 0x0

    move v3, v0

    move v2, v1

    :goto_0
    if-lt v2, v0, :cond_6

    if-nez v3, :cond_1

    sget-object p0, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->NO_ANNOTATIONS:[Lorg/eclipse/jdt/internal/compiler/lookup/AnnotationBinding;

    return-object p0

    :cond_1
    new-array v4, v3, [Lorg/eclipse/jdt/internal/compiler/lookup/AnnotationBinding;

    move v2, v1

    move v5, v2

    :goto_1
    if-lt v2, v0, :cond_3

    if-ne v5, v3, :cond_2

    return-object v4

    :cond_2
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0

    :cond_3
    aget-object v6, p0, v2

    if-nez v6, :cond_4

    move v7, v1

    goto :goto_2

    :cond_4
    array-length v7, v6

    :goto_2
    if-lez v7, :cond_5

    invoke-static {v6, v1, v4, v5, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v5, v7

    :cond_5
    add-int/lit8 v6, v5, 0x1

    const/4 v7, 0x0

    aput-object v7, v4, v5

    add-int/lit8 v2, v2, 0x1

    move v5, v6

    goto :goto_1

    :cond_6
    aget-object v4, p0, v2

    if-nez v4, :cond_7

    move v4, v1

    goto :goto_3

    :cond_7
    array-length v4, v4

    :goto_3
    add-int/2addr v3, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_8
    :goto_4
    sget-object p0, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->NO_ANNOTATIONS:[Lorg/eclipse/jdt/internal/compiler/lookup/AnnotationBinding;

    return-object p0
.end method

.method private getAnnotatedType(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;[Lorg/eclipse/jdt/internal/compiler/lookup/AnnotationBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;
    .locals 12

    .line 20
    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->kind()I

    move-result v0

    const/16 v1, 0x104

    if-ne v0, v1, :cond_0

    .line 21
    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->actualType()Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move-result-object v0

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->typeArguments()[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object p1

    check-cast p2, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    invoke-virtual {p0, v0, p1, p2, p3}, Lorg/eclipse/jdt/internal/compiler/lookup/AnnotatableTypeSystem;->getParameterizedType(Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;[Lorg/eclipse/jdt/internal/compiler/lookup/AnnotationBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/ParameterizedTypeBinding;

    move-result-object p1

    return-object p1

    .line 22
    :cond_0
    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeSystem;->getDerivedTypes(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v0

    .line 23
    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v4, v2

    :goto_0
    const/16 v5, 0x404

    const/16 v6, 0x204

    const/16 v7, 0x44

    if-lt v3, v1, :cond_1

    goto :goto_1

    .line 24
    :cond_1
    aget-object v8, v0, v3

    if-nez v8, :cond_7

    :goto_1
    if-nez v4, :cond_2

    .line 25
    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeSystem;->getUnannotatedType(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v4

    .line 26
    :cond_2
    invoke-direct {p0, p1, p2, v2, p3}, Lorg/eclipse/jdt/internal/compiler/lookup/AnnotatableTypeSystem;->haveTypeAnnotations(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;[Lorg/eclipse/jdt/internal/compiler/lookup/AnnotationBinding;)Z

    move-result v0

    if-nez v0, :cond_3

    return-object v4

    .line 27
    :cond_3
    invoke-virtual {p1, p2}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->clone(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object p2

    .line 28
    iget v0, v4, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->id:I

    iput v0, p2, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->id:I

    .line 29
    iget-boolean v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/AnnotatableTypeSystem;->isAnnotationBasedNullAnalysisEnabled:Z

    invoke-virtual {p2, p3, v0}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->setTypeAnnotations([Lorg/eclipse/jdt/internal/compiler/lookup/AnnotationBinding;Z)V

    .line 30
    iget-boolean p3, p0, Lorg/eclipse/jdt/internal/compiler/lookup/AnnotatableTypeSystem;->isAnnotationBasedNullAnalysisEnabled:Z

    if-eqz p3, :cond_4

    iget-wide v0, p2, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->tagBits:J

    const-wide/high16 v2, 0x180000000000000L

    and-long v8, v0, v2

    const-wide/16 v10, 0x0

    cmp-long p3, v8, v10

    if-nez p3, :cond_4

    .line 31
    iget-wide v8, p1, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->tagBits:J

    and-long/2addr v2, v8

    or-long/2addr v0, v2

    iput-wide v0, p2, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->tagBits:J

    .line 32
    :cond_4
    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->kind()I

    move-result p3

    if-eq p3, v7, :cond_6

    if-eq p3, v6, :cond_5

    if-eq p3, v5, :cond_5

    move-object p1, v4

    goto :goto_2

    .line 33
    :cond_5
    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->actualType()Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move-result-object p1

    goto :goto_2

    .line 34
    :cond_6
    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->leafComponentType()Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object p1

    .line 35
    :goto_2
    invoke-virtual {p0, p1, v4, p2}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeSystem;->cacheDerivedType(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object p1

    return-object p1

    .line 36
    :cond_7
    invoke-virtual {v8}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->enclosingType()Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move-result-object v9

    if-ne v9, p2, :cond_f

    invoke-virtual {v8}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->typeArguments()[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v9

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->typeArguments()[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v10

    invoke-static {v9, v10}, Lorg/eclipse/jdt/internal/compiler/util/Util;->effectivelyEqual([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_8

    goto/16 :goto_4

    .line 37
    :cond_8
    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->kind()I

    move-result v9

    if-eq v9, v7, :cond_c

    if-eq v9, v6, :cond_a

    if-eq v9, v5, :cond_9

    const/16 v10, 0x2004

    if-eq v9, v10, :cond_a

    .line 38
    invoke-virtual {v8}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->kind()I

    move-result v9

    if-eq v9, v7, :cond_f

    if-eq v9, v6, :cond_f

    if-eq v9, v5, :cond_f

    if-eq v9, v10, :cond_f

    const v5, 0x8004

    if-eq v9, v5, :cond_f

    goto/16 :goto_3

    .line 39
    :cond_9
    invoke-virtual {v8}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isRawType()Z

    move-result v5

    if-eqz v5, :cond_f

    invoke-virtual {v8}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->actualType()Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move-result-object v5

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->actualType()Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move-result-object v6

    if-eq v5, v6, :cond_d

    goto/16 :goto_4

    .line 40
    :cond_a
    invoke-virtual {v8}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isWildcard()Z

    move-result v5

    if-eqz v5, :cond_f

    invoke-virtual {v8}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->actualType()Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move-result-object v5

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->actualType()Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move-result-object v6

    if-ne v5, v6, :cond_f

    invoke-virtual {v8}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->rank()I

    move-result v5

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->rank()I

    move-result v6

    if-ne v5, v6, :cond_f

    invoke-virtual {v8}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->boundKind()I

    move-result v5

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->boundKind()I

    move-result v6

    if-eq v5, v6, :cond_b

    goto :goto_4

    .line 41
    :cond_b
    invoke-virtual {v8}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->bound()Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v5

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->bound()Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v6

    if-ne v5, v6, :cond_f

    invoke-virtual {v8}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->additionalBounds()[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v5

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->additionalBounds()[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v6

    invoke-static {v5, v6}, Lorg/eclipse/jdt/internal/compiler/util/Util;->effectivelyEqual([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_d

    goto :goto_4

    .line 42
    :cond_c
    invoke-virtual {v8}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isArrayType()Z

    move-result v5

    if-eqz v5, :cond_f

    invoke-virtual {v8}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->dimensions()I

    move-result v5

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->dimensions()I

    move-result v6

    if-ne v5, v6, :cond_f

    invoke-virtual {v8}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->leafComponentType()Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v5

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->leafComponentType()Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v6

    if-eq v5, v6, :cond_d

    goto :goto_4

    .line 43
    :cond_d
    :goto_3
    invoke-virtual {v8}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->getTypeAnnotations()[Lorg/eclipse/jdt/internal/compiler/lookup/AnnotationBinding;

    move-result-object v5

    invoke-static {v5, p3}, Lorg/eclipse/jdt/internal/compiler/util/Util;->effectivelyEqual([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_e

    return-object v8

    .line 44
    :cond_e
    invoke-virtual {v8}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->hasTypeAnnotations()Z

    move-result v5

    if-nez v5, :cond_f

    move-object v4, v8

    :cond_f
    :goto_4
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0
.end method

.method private haveTypeAnnotations(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Z
    .locals 1

    const/4 v0, 0x0

    .line 8
    invoke-direct {p0, p1, p2, v0, v0}, Lorg/eclipse/jdt/internal/compiler/lookup/AnnotatableTypeSystem;->haveTypeAnnotations(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;[Lorg/eclipse/jdt/internal/compiler/lookup/AnnotationBinding;)Z

    move-result p1

    return p1
.end method

.method private haveTypeAnnotations(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;[Lorg/eclipse/jdt/internal/compiler/lookup/AnnotationBinding;)Z
    .locals 3

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    .line 1
    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->hasTypeAnnotations()Z

    move-result p1

    if-eqz p1, :cond_0

    return v0

    :cond_0
    if-eqz p2, :cond_1

    .line 2
    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->hasTypeAnnotations()Z

    move-result p1

    if-eqz p1, :cond_1

    return v0

    :cond_1
    const/4 p1, 0x0

    if-nez p4, :cond_2

    move p2, p1

    goto :goto_0

    .line 3
    :cond_2
    array-length p2, p4

    :goto_0
    move v1, p1

    :goto_1
    if-lt v1, p2, :cond_6

    if-nez p3, :cond_3

    move v2, p1

    goto :goto_2

    .line 4
    :cond_3
    array-length p2, p3

    move v2, p2

    :goto_2
    move p2, p1

    :goto_3
    if-lt p2, v2, :cond_4

    return p1

    .line 5
    :cond_4
    aget-object p4, p3, p2

    invoke-virtual {p4}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->hasTypeAnnotations()Z

    move-result p4

    if-eqz p4, :cond_5

    return v0

    :cond_5
    add-int/lit8 p2, p2, 0x1

    goto :goto_3

    .line 6
    :cond_6
    aget-object v2, p4, v1

    if-eqz v2, :cond_7

    return v0

    :cond_7
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method private haveTypeAnnotations(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;[Lorg/eclipse/jdt/internal/compiler/lookup/AnnotationBinding;)Z
    .locals 1

    const/4 v0, 0x0

    .line 7
    invoke-direct {p0, p1, v0, v0, p2}, Lorg/eclipse/jdt/internal/compiler/lookup/AnnotatableTypeSystem;->haveTypeAnnotations(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;[Lorg/eclipse/jdt/internal/compiler/lookup/AnnotationBinding;)Z

    move-result p1

    return p1
.end method


# virtual methods
.method public getAnnotatedType(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;[[Lorg/eclipse/jdt/internal/compiler/lookup/AnnotationBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;
    .locals 7

    if-eqz p1, :cond_d

    .line 1
    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->isValidBinding()Z

    move-result v0

    if-eqz v0, :cond_d

    if-eqz p2, :cond_d

    array-length v0, p2

    if-nez v0, :cond_0

    goto/16 :goto_7

    .line 2
    :cond_0
    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->kind()I

    move-result v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_3

    const/16 v1, 0x44

    if-eq v0, v1, :cond_2

    const/16 v1, 0x84

    if-eq v0, v1, :cond_3

    const/16 v1, 0x104

    if-eq v0, v1, :cond_3

    const/16 v1, 0x204

    if-eq v0, v1, :cond_3

    const/16 v1, 0x404

    if-eq v0, v1, :cond_3

    const/16 v1, 0x804

    if-eq v0, v1, :cond_3

    const/16 v1, 0x1004

    if-eq v0, v1, :cond_3

    const/16 v1, 0x2004

    if-eq v0, v1, :cond_3

    const v1, 0x8004

    if-ne v0, v1, :cond_1

    goto :goto_0

    .line 3
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1

    .line 4
    :cond_2
    check-cast p1, Lorg/eclipse/jdt/internal/compiler/lookup/ArrayBinding;

    .line 5
    iget-object v0, p1, Lorg/eclipse/jdt/internal/compiler/lookup/ArrayBinding;->leafComponentType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    iget p1, p1, Lorg/eclipse/jdt/internal/compiler/lookup/ArrayBinding;->dimensions:I

    invoke-static {p2}, Lorg/eclipse/jdt/internal/compiler/lookup/AnnotatableTypeSystem;->flattenedAnnotations([[Lorg/eclipse/jdt/internal/compiler/lookup/AnnotationBinding;)[Lorg/eclipse/jdt/internal/compiler/lookup/AnnotationBinding;

    move-result-object p2

    invoke-virtual {p0, v0, p1, p2}, Lorg/eclipse/jdt/internal/compiler/lookup/AnnotatableTypeSystem;->getArrayType(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;I[Lorg/eclipse/jdt/internal/compiler/lookup/AnnotationBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/ArrayBinding;

    move-result-object p1

    goto :goto_5

    .line 6
    :cond_3
    :goto_0
    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isUnresolvedType()Z

    move-result v0

    if-eqz v0, :cond_4

    const/16 v0, 0x24

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->sourceName()[C

    move-result-object v1

    invoke-static {v0, v1}, Lorg/eclipse/jdt/core/compiler/CharOperation;->indexOf(C[C)I

    move-result v0

    if-lez v0, :cond_4

    .line 7
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeSystem;->environment:Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    const/4 v1, 0x1

    invoke-static {p1, v0, v1}, Lorg/eclipse/jdt/internal/compiler/lookup/BinaryTypeBinding;->resolveType(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;Z)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object p1

    :cond_4
    move-object v0, p1

    .line 8
    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->depth()I

    move-result p1

    add-int/lit8 v1, p1, 0x1

    .line 9
    new-array v2, v1, [Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    .line 10
    aput-object v0, v2, p1

    .line 11
    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->enclosingType()Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move-result-object v3

    :goto_1
    if-nez v3, :cond_c

    .line 12
    array-length v4, p2

    sub-int/2addr v1, v4

    const/4 p1, 0x0

    :goto_2
    if-lt p1, v4, :cond_5

    goto :goto_3

    .line 13
    :cond_5
    aget-object v3, p2, p1

    if-eqz v3, :cond_b

    array-length v3, v3

    if-lez v3, :cond_b

    :goto_3
    if-ne p1, v4, :cond_6

    return-object v0

    :cond_6
    if-gez v1, :cond_7

    return-object v0

    :cond_7
    const/4 v0, 0x0

    if-nez v1, :cond_8

    move-object v3, v0

    goto :goto_4

    :cond_8
    add-int/lit8 v3, v1, -0x1

    .line 14
    aget-object v3, v2, v3

    :goto_4
    if-lt p1, v4, :cond_9

    move-object p1, v0

    :goto_5
    return-object p1

    .line 15
    :cond_9
    aget-object v0, v2, v1

    .line 16
    aget-object v5, p2, p1

    if-eqz v5, :cond_a

    array-length v6, v5

    if-lez v6, :cond_a

    goto :goto_6

    :cond_a
    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->getTypeAnnotations()[Lorg/eclipse/jdt/internal/compiler/lookup/AnnotationBinding;

    move-result-object v5

    .line 17
    :goto_6
    invoke-direct {p0, v0, v3, v5}, Lorg/eclipse/jdt/internal/compiler/lookup/AnnotatableTypeSystem;->getAnnotatedType(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;[Lorg/eclipse/jdt/internal/compiler/lookup/AnnotationBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v3

    add-int/lit8 p1, p1, 0x1

    add-int/lit8 v1, v1, 0x1

    move-object v0, v3

    goto :goto_4

    :cond_b
    add-int/lit8 p1, p1, 0x1

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_c
    add-int/lit8 p1, p1, -0x1

    .line 18
    aput-object v3, v2, p1

    .line 19
    invoke-virtual {v3}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->enclosingType()Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move-result-object v3

    goto :goto_1

    :cond_d
    :goto_7
    return-object p1
.end method

.method public getAnnotatedTypes(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;
    .locals 9

    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeSystem;->getDerivedTypes(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v0

    array-length v1, v0

    new-array v2, v1, [Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    const/4 v3, 0x0

    move v4, v3

    move v5, v4

    :goto_0
    if-lt v4, v1, :cond_0

    goto :goto_1

    :cond_0
    aget-object v6, v0, v4

    if-nez v6, :cond_2

    :goto_1
    if-eq v5, v1, :cond_1

    new-array p1, v5, [Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-static {v2, v3, p1, v3, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v2, p1

    :cond_1
    return-object v2

    :cond_2
    invoke-virtual {v6}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->hasTypeAnnotations()Z

    move-result v7

    if-nez v7, :cond_3

    goto :goto_2

    :cond_3
    iget v7, v6, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->id:I

    iget v8, p1, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->id:I

    if-ne v7, v8, :cond_4

    add-int/lit8 v7, v5, 0x1

    aput-object v6, v2, v5

    move v5, v7

    :cond_4
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0
.end method

.method public getArrayType(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;I)Lorg/eclipse/jdt/internal/compiler/lookup/ArrayBinding;
    .locals 1

    .line 22
    sget-object v0, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->NO_ANNOTATIONS:[Lorg/eclipse/jdt/internal/compiler/lookup/AnnotationBinding;

    invoke-virtual {p0, p1, p2, v0}, Lorg/eclipse/jdt/internal/compiler/lookup/AnnotatableTypeSystem;->getArrayType(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;I[Lorg/eclipse/jdt/internal/compiler/lookup/AnnotationBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/ArrayBinding;

    move-result-object p1

    return-object p1
.end method

.method public getArrayType(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;I[Lorg/eclipse/jdt/internal/compiler/lookup/AnnotationBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/ArrayBinding;
    .locals 6

    .line 1
    instance-of v0, p1, Lorg/eclipse/jdt/internal/compiler/lookup/ArrayBinding;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->dimensions()I

    move-result v0

    add-int/2addr p2, v0

    .line 3
    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->getTypeAnnotations()[Lorg/eclipse/jdt/internal/compiler/lookup/AnnotationBinding;

    move-result-object v0

    .line 4
    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->leafComponentType()Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object p1

    .line 5
    array-length v2, v0

    array-length v3, p3

    add-int/2addr v2, v3

    add-int/lit8 v2, v2, 0x1

    new-array v2, v2, [Lorg/eclipse/jdt/internal/compiler/lookup/AnnotationBinding;

    .line 6
    array-length v3, p3

    invoke-static {p3, v1, v2, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 7
    array-length p3, p3

    add-int/lit8 p3, p3, 0x1

    array-length v3, v0

    invoke-static {v0, v1, v2, p3, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object p3, v2

    .line 8
    :cond_0
    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeSystem;->getDerivedTypes(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v0

    .line 9
    array-length v2, v0

    const/4 v3, 0x0

    :goto_0
    if-lt v1, v2, :cond_1

    goto :goto_1

    .line 10
    :cond_1
    aget-object v4, v0, v1

    if-nez v4, :cond_4

    :goto_1
    if-nez v3, :cond_2

    .line 11
    invoke-super {p0, p1, p2}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeSystem;->getArrayType(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;I)Lorg/eclipse/jdt/internal/compiler/lookup/ArrayBinding;

    move-result-object v3

    .line 12
    :cond_2
    invoke-direct {p0, p1, p3}, Lorg/eclipse/jdt/internal/compiler/lookup/AnnotatableTypeSystem;->haveTypeAnnotations(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;[Lorg/eclipse/jdt/internal/compiler/lookup/AnnotationBinding;)Z

    move-result v0

    if-nez v0, :cond_3

    return-object v3

    .line 13
    :cond_3
    new-instance v0, Lorg/eclipse/jdt/internal/compiler/lookup/ArrayBinding;

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeSystem;->environment:Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    invoke-direct {v0, p1, p2, v1}, Lorg/eclipse/jdt/internal/compiler/lookup/ArrayBinding;-><init>(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;ILorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;)V

    .line 14
    iget p2, v3, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->id:I

    iput p2, v0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->id:I

    .line 15
    iget-boolean p2, p0, Lorg/eclipse/jdt/internal/compiler/lookup/AnnotatableTypeSystem;->isAnnotationBasedNullAnalysisEnabled:Z

    invoke-virtual {v0, p3, p2}, Lorg/eclipse/jdt/internal/compiler/lookup/ArrayBinding;->setTypeAnnotations([Lorg/eclipse/jdt/internal/compiler/lookup/AnnotationBinding;Z)V

    .line 16
    invoke-virtual {p0, p1, v3, v0}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeSystem;->cacheDerivedType(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object p1

    check-cast p1, Lorg/eclipse/jdt/internal/compiler/lookup/ArrayBinding;

    return-object p1

    .line 17
    :cond_4
    invoke-virtual {v4}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isArrayType()Z

    move-result v5

    if-eqz v5, :cond_7

    invoke-virtual {v4}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->dimensions()I

    move-result v5

    if-ne v5, p2, :cond_7

    invoke-virtual {v4}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->leafComponentType()Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v5

    if-eq v5, p1, :cond_5

    goto :goto_2

    .line 18
    :cond_5
    invoke-virtual {v4}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->getTypeAnnotations()[Lorg/eclipse/jdt/internal/compiler/lookup/AnnotationBinding;

    move-result-object v5

    invoke-static {v5, p3}, Lorg/eclipse/jdt/internal/compiler/util/Util;->effectivelyEqual([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 19
    check-cast v4, Lorg/eclipse/jdt/internal/compiler/lookup/ArrayBinding;

    return-object v4

    .line 20
    :cond_6
    invoke-virtual {v4}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->hasTypeAnnotations()Z

    move-result v5

    if-nez v5, :cond_7

    .line 21
    check-cast v4, Lorg/eclipse/jdt/internal/compiler/lookup/ArrayBinding;

    move-object v3, v4

    :cond_7
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public getMemberType(Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;
    .locals 1

    invoke-direct {p0, p1, p2}, Lorg/eclipse/jdt/internal/compiler/lookup/AnnotatableTypeSystem;->haveTypeAnnotations(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-super {p0, p1, p2}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeSystem;->getMemberType(Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->getTypeAnnotations()[Lorg/eclipse/jdt/internal/compiler/lookup/AnnotationBinding;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lorg/eclipse/jdt/internal/compiler/lookup/AnnotatableTypeSystem;->getAnnotatedType(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;[Lorg/eclipse/jdt/internal/compiler/lookup/AnnotationBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object p1

    check-cast p1, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    return-object p1
.end method

.method public getParameterizedType(Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/ParameterizedTypeBinding;
    .locals 1

    .line 11
    sget-object v0, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->NO_ANNOTATIONS:[Lorg/eclipse/jdt/internal/compiler/lookup/AnnotationBinding;

    invoke-virtual {p0, p1, p2, p3, v0}, Lorg/eclipse/jdt/internal/compiler/lookup/AnnotatableTypeSystem;->getParameterizedType(Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;[Lorg/eclipse/jdt/internal/compiler/lookup/AnnotationBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/ParameterizedTypeBinding;

    move-result-object p1

    return-object p1
.end method

.method public getParameterizedType(Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;[Lorg/eclipse/jdt/internal/compiler/lookup/AnnotationBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/ParameterizedTypeBinding;
    .locals 3

    .line 1
    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->hasTypeAnnotations()Z

    move-result v0

    if-nez v0, :cond_2

    .line 2
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeSystem;->parameterizedTypes:Lorg/eclipse/jdt/internal/compiler/lookup/TypeSystem$HashedParameterizedTypes;

    invoke-virtual {v0, p1, p2, p3, p4}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeSystem$HashedParameterizedTypes;->get(Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;[Lorg/eclipse/jdt/internal/compiler/lookup/AnnotationBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/ParameterizedTypeBinding;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    .line 3
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeSystem;->getParameterizedType(Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/ParameterizedTypeBinding;

    move-result-object v0

    .line 4
    invoke-direct {p0, p1, p3, p2, p4}, Lorg/eclipse/jdt/internal/compiler/lookup/AnnotatableTypeSystem;->haveTypeAnnotations(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;[Lorg/eclipse/jdt/internal/compiler/lookup/AnnotationBinding;)Z

    move-result v1

    if-nez v1, :cond_1

    return-object v0

    .line 5
    :cond_1
    new-instance v1, Lorg/eclipse/jdt/internal/compiler/lookup/ParameterizedTypeBinding;

    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeSystem;->environment:Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    invoke-direct {v1, p1, p2, p3, v2}, Lorg/eclipse/jdt/internal/compiler/lookup/ParameterizedTypeBinding;-><init>(Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;)V

    .line 6
    iget v2, v0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->id:I

    iput v2, v1, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->id:I

    .line 7
    iget-boolean v2, p0, Lorg/eclipse/jdt/internal/compiler/lookup/AnnotatableTypeSystem;->isAnnotationBasedNullAnalysisEnabled:Z

    invoke-virtual {v1, p4, v2}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->setTypeAnnotations([Lorg/eclipse/jdt/internal/compiler/lookup/AnnotationBinding;Z)V

    .line 8
    iget-object p4, p0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeSystem;->parameterizedTypes:Lorg/eclipse/jdt/internal/compiler/lookup/TypeSystem$HashedParameterizedTypes;

    invoke-virtual {p4, p1, p2, p3, v1}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeSystem$HashedParameterizedTypes;->put(Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;Lorg/eclipse/jdt/internal/compiler/lookup/ParameterizedTypeBinding;)V

    .line 9
    invoke-virtual {p0, p1, v0, v1}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeSystem;->cacheDerivedType(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object p1

    check-cast p1, Lorg/eclipse/jdt/internal/compiler/lookup/ParameterizedTypeBinding;

    return-object p1

    .line 10
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1
.end method

.method public getRawType(Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/RawTypeBinding;
    .locals 1

    .line 19
    sget-object v0, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->NO_ANNOTATIONS:[Lorg/eclipse/jdt/internal/compiler/lookup/AnnotationBinding;

    invoke-virtual {p0, p1, p2, v0}, Lorg/eclipse/jdt/internal/compiler/lookup/AnnotatableTypeSystem;->getRawType(Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;[Lorg/eclipse/jdt/internal/compiler/lookup/AnnotationBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/RawTypeBinding;

    move-result-object p1

    return-object p1
.end method

.method public getRawType(Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;[Lorg/eclipse/jdt/internal/compiler/lookup/AnnotationBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/RawTypeBinding;
    .locals 7

    .line 1
    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->hasTypeAnnotations()Z

    move-result v0

    if-nez v0, :cond_8

    .line 2
    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->hasEnclosingInstanceContext()Z

    move-result v0

    if-nez v0, :cond_0

    if-eqz p2, :cond_0

    .line 3
    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->original()Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object p2

    check-cast p2, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    .line 4
    :cond_0
    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeSystem;->getDerivedTypes(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v0

    .line 5
    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v4, v2

    :goto_0
    if-lt v3, v1, :cond_1

    goto :goto_1

    .line 6
    :cond_1
    aget-object v5, v0, v3

    if-nez v5, :cond_4

    :goto_1
    if-nez v4, :cond_2

    .line 7
    invoke-super {p0, p1, p2}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeSystem;->getRawType(Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/RawTypeBinding;

    move-result-object v4

    .line 8
    :cond_2
    invoke-direct {p0, p1, p2, v2, p3}, Lorg/eclipse/jdt/internal/compiler/lookup/AnnotatableTypeSystem;->haveTypeAnnotations(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;[Lorg/eclipse/jdt/internal/compiler/lookup/AnnotationBinding;)Z

    move-result v0

    if-nez v0, :cond_3

    return-object v4

    .line 9
    :cond_3
    new-instance v0, Lorg/eclipse/jdt/internal/compiler/lookup/RawTypeBinding;

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeSystem;->environment:Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    invoke-direct {v0, p1, p2, v1}, Lorg/eclipse/jdt/internal/compiler/lookup/RawTypeBinding;-><init>(Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;)V

    .line 10
    iget p2, v4, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->id:I

    iput p2, v0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->id:I

    .line 11
    iget-boolean p2, p0, Lorg/eclipse/jdt/internal/compiler/lookup/AnnotatableTypeSystem;->isAnnotationBasedNullAnalysisEnabled:Z

    invoke-virtual {v0, p3, p2}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->setTypeAnnotations([Lorg/eclipse/jdt/internal/compiler/lookup/AnnotationBinding;Z)V

    .line 12
    invoke-virtual {p0, p1, v4, v0}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeSystem;->cacheDerivedType(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object p1

    check-cast p1, Lorg/eclipse/jdt/internal/compiler/lookup/RawTypeBinding;

    return-object p1

    .line 13
    :cond_4
    invoke-virtual {v5}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isRawType()Z

    move-result v6

    if-eqz v6, :cond_7

    invoke-virtual {v5}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->actualType()Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move-result-object v6

    if-ne v6, p1, :cond_7

    invoke-virtual {v5}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->enclosingType()Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move-result-object v6

    if-eq v6, p2, :cond_5

    goto :goto_2

    .line 14
    :cond_5
    invoke-virtual {v5}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->getTypeAnnotations()[Lorg/eclipse/jdt/internal/compiler/lookup/AnnotationBinding;

    move-result-object v6

    invoke-static {v6, p3}, Lorg/eclipse/jdt/internal/compiler/util/Util;->effectivelyEqual([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 15
    check-cast v5, Lorg/eclipse/jdt/internal/compiler/lookup/RawTypeBinding;

    return-object v5

    .line 16
    :cond_6
    invoke-virtual {v5}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->hasTypeAnnotations()Z

    move-result v6

    if-nez v6, :cond_7

    .line 17
    move-object v4, v5

    check-cast v4, Lorg/eclipse/jdt/internal/compiler/lookup/RawTypeBinding;

    :cond_7
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 18
    :cond_8
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1
.end method

.method public getWildcard(Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;ILorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;I)Lorg/eclipse/jdt/internal/compiler/lookup/WildcardBinding;
    .locals 7

    .line 20
    sget-object v6, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->NO_ANNOTATIONS:[Lorg/eclipse/jdt/internal/compiler/lookup/AnnotationBinding;

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v6}, Lorg/eclipse/jdt/internal/compiler/lookup/AnnotatableTypeSystem;->getWildcard(Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;ILorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;I[Lorg/eclipse/jdt/internal/compiler/lookup/AnnotationBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/WildcardBinding;

    move-result-object p1

    return-object p1
.end method

.method public getWildcard(Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;ILorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;I[Lorg/eclipse/jdt/internal/compiler/lookup/AnnotationBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/WildcardBinding;
    .locals 17

    move-object/from16 v6, p0

    move-object/from16 v14, p3

    move-object/from16 v11, p4

    move-object/from16 v15, p6

    if-nez p1, :cond_0

    .line 1
    sget-object v0, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->LUB_GENERIC:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move-object v13, v0

    goto :goto_0

    :cond_0
    move-object/from16 v13, p1

    .line 2
    :goto_0
    invoke-virtual {v13}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->hasTypeAnnotations()Z

    move-result v0

    if-nez v0, :cond_e

    .line 3
    instance-of v0, v14, Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;

    const/4 v1, 0x0

    if-nez v0, :cond_2

    instance-of v0, v14, Lorg/eclipse/jdt/internal/compiler/lookup/ParameterizedTypeBinding;

    if-eqz v0, :cond_1

    instance-of v0, v14, Lorg/eclipse/jdt/internal/compiler/lookup/RawTypeBinding;

    if-eqz v0, :cond_2

    :cond_1
    move/from16 v16, v1

    goto :goto_1

    :cond_2
    const/4 v0, 0x1

    move/from16 v16, v0

    :goto_1
    if-eqz v16, :cond_3

    move-object v0, v14

    goto :goto_2

    :cond_3
    move-object v0, v13

    .line 4
    :goto_2
    invoke-virtual {v6, v0}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeSystem;->getDerivedTypes(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v0

    .line 5
    array-length v2, v0

    const/4 v3, 0x0

    :goto_3
    if-lt v1, v2, :cond_4

    goto :goto_4

    .line 6
    :cond_4
    aget-object v4, v0, v1

    if-nez v4, :cond_8

    :goto_4
    if-nez v3, :cond_5

    move-object/from16 v0, p0

    move-object v1, v13

    move/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move/from16 v5, p5

    .line 7
    invoke-super/range {v0 .. v5}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeSystem;->getWildcard(Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;ILorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;I)Lorg/eclipse/jdt/internal/compiler/lookup/WildcardBinding;

    move-result-object v3

    .line 8
    :cond_5
    invoke-direct {v6, v13, v14, v11, v15}, Lorg/eclipse/jdt/internal/compiler/lookup/AnnotatableTypeSystem;->haveTypeAnnotations(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;[Lorg/eclipse/jdt/internal/compiler/lookup/AnnotationBinding;)Z

    move-result v0

    if-nez v0, :cond_6

    return-object v3

    .line 9
    :cond_6
    new-instance v0, Lorg/eclipse/jdt/internal/compiler/lookup/WildcardBinding;

    iget-object v1, v6, Lorg/eclipse/jdt/internal/compiler/lookup/TypeSystem;->environment:Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    move-object v7, v0

    move-object v8, v13

    move/from16 v9, p2

    move-object/from16 v10, p3

    move-object/from16 v11, p4

    move/from16 v12, p5

    move-object v5, v13

    move-object v13, v1

    invoke-direct/range {v7 .. v13}, Lorg/eclipse/jdt/internal/compiler/lookup/WildcardBinding;-><init>(Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;ILorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;ILorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;)V

    .line 10
    iget v1, v3, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->id:I

    iput v1, v0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->id:I

    .line 11
    iget-boolean v1, v6, Lorg/eclipse/jdt/internal/compiler/lookup/AnnotatableTypeSystem;->isAnnotationBasedNullAnalysisEnabled:Z

    invoke-virtual {v0, v15, v1}, Lorg/eclipse/jdt/internal/compiler/lookup/WildcardBinding;->setTypeAnnotations([Lorg/eclipse/jdt/internal/compiler/lookup/AnnotationBinding;Z)V

    if-eqz v16, :cond_7

    goto :goto_5

    :cond_7
    move-object v14, v5

    .line 12
    :goto_5
    invoke-virtual {v6, v14, v3, v0}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeSystem;->cacheDerivedType(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jdt/internal/compiler/lookup/WildcardBinding;

    return-object v0

    :cond_8
    move-object v5, v13

    .line 13
    invoke-virtual {v4}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isWildcard()Z

    move-result v7

    if-eqz v7, :cond_c

    invoke-virtual {v4}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->actualType()Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move-result-object v7

    if-ne v7, v5, :cond_c

    invoke-virtual {v4}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->rank()I

    move-result v7

    move/from16 v8, p2

    if-eq v7, v8, :cond_9

    :goto_6
    move/from16 v9, p5

    goto :goto_7

    .line 14
    :cond_9
    invoke-virtual {v4}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->boundKind()I

    move-result v7

    move/from16 v9, p5

    if-ne v7, v9, :cond_d

    invoke-virtual {v4}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->bound()Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v7

    if-ne v7, v14, :cond_d

    invoke-virtual {v4}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->additionalBounds()[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v7

    invoke-static {v7, v11}, Lorg/eclipse/jdt/internal/compiler/util/Util;->effectivelyEqual([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_a

    goto :goto_7

    .line 15
    :cond_a
    invoke-virtual {v4}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->getTypeAnnotations()[Lorg/eclipse/jdt/internal/compiler/lookup/AnnotationBinding;

    move-result-object v7

    invoke-static {v7, v15}, Lorg/eclipse/jdt/internal/compiler/util/Util;->effectivelyEqual([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_b

    .line 16
    check-cast v4, Lorg/eclipse/jdt/internal/compiler/lookup/WildcardBinding;

    return-object v4

    .line 17
    :cond_b
    invoke-virtual {v4}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->hasTypeAnnotations()Z

    move-result v7

    if-nez v7, :cond_d

    .line 18
    check-cast v4, Lorg/eclipse/jdt/internal/compiler/lookup/WildcardBinding;

    move-object v3, v4

    goto :goto_7

    :cond_c
    move/from16 v8, p2

    goto :goto_6

    :cond_d
    :goto_7
    add-int/lit8 v1, v1, 0x1

    move-object v13, v5

    goto/16 :goto_3

    .line 19
    :cond_e
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public isAnnotatedTypeSystem()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
