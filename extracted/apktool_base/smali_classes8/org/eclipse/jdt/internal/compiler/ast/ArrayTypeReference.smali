.class public Lorg/eclipse/jdt/internal/compiler/ast/ArrayTypeReference;
.super Lorg/eclipse/jdt/internal/compiler/ast/SingleTypeReference;
.source "SourceFile"


# static fields
.field private static synthetic $SWITCH_TABLE$org$eclipse$jdt$internal$compiler$ast$TypeReference$AnnotationPosition:[I


# instance fields
.field private annotationsOnDimensions:[[Lorg/eclipse/jdt/internal/compiler/ast/Annotation;

.field public dimensions:I

.field public extendedDimensions:I

.field public leafComponentTypeWithoutDefaultNullness:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

.field public originalSourceEnd:I


# direct methods
.method public static synthetic $SWITCH_TABLE$org$eclipse$jdt$internal$compiler$ast$TypeReference$AnnotationPosition()[I
    .locals 3

    sget-object v0, Lorg/eclipse/jdt/internal/compiler/ast/ArrayTypeReference;->$SWITCH_TABLE$org$eclipse$jdt$internal$compiler$ast$TypeReference$AnnotationPosition:[I

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    invoke-static {}, Lorg/eclipse/jdt/internal/compiler/ast/TypeReference$AnnotationPosition;->values()[Lorg/eclipse/jdt/internal/compiler/ast/TypeReference$AnnotationPosition;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lorg/eclipse/jdt/internal/compiler/ast/TypeReference$AnnotationPosition;->ANY:Lorg/eclipse/jdt/internal/compiler/ast/TypeReference$AnnotationPosition;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    sget-object v1, Lorg/eclipse/jdt/internal/compiler/ast/TypeReference$AnnotationPosition;->LEAF_TYPE:Lorg/eclipse/jdt/internal/compiler/ast/TypeReference$AnnotationPosition;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :try_start_2
    sget-object v1, Lorg/eclipse/jdt/internal/compiler/ast/TypeReference$AnnotationPosition;->MAIN_TYPE:Lorg/eclipse/jdt/internal/compiler/ast/TypeReference$AnnotationPosition;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    sput-object v0, Lorg/eclipse/jdt/internal/compiler/ast/ArrayTypeReference;->$SWITCH_TABLE$org$eclipse$jdt$internal$compiler$ast$TypeReference$AnnotationPosition:[I

    return-object v0
.end method

.method public constructor <init>([CIJ)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p3, p4}, Lorg/eclipse/jdt/internal/compiler/ast/SingleTypeReference;-><init>([CJ)V

    .line 2
    iget p1, p0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceEnd:I

    iput p1, p0, Lorg/eclipse/jdt/internal/compiler/ast/ArrayTypeReference;->originalSourceEnd:I

    .line 3
    iput p2, p0, Lorg/eclipse/jdt/internal/compiler/ast/ArrayTypeReference;->dimensions:I

    const/4 p1, 0x0

    .line 4
    iput-object p1, p0, Lorg/eclipse/jdt/internal/compiler/ast/ArrayTypeReference;->annotationsOnDimensions:[[Lorg/eclipse/jdt/internal/compiler/ast/Annotation;

    return-void
.end method

.method public constructor <init>([CI[[Lorg/eclipse/jdt/internal/compiler/ast/Annotation;J)V
    .locals 0

    .line 5
    invoke-direct {p0, p1, p2, p4, p5}, Lorg/eclipse/jdt/internal/compiler/ast/ArrayTypeReference;-><init>([CIJ)V

    if-eqz p3, :cond_0

    .line 6
    iget p1, p0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->bits:I

    const/high16 p2, 0x100000

    or-int/2addr p1, p2

    iput p1, p0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->bits:I

    .line 7
    :cond_0
    iput-object p3, p0, Lorg/eclipse/jdt/internal/compiler/ast/ArrayTypeReference;->annotationsOnDimensions:[[Lorg/eclipse/jdt/internal/compiler/ast/Annotation;

    return-void
.end method

.method public static synthetic a(Lorg/eclipse/jdt/internal/compiler/ast/ArrayTypeReference;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/compiler/ast/ArrayTypeReference;->lambda$0(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)V

    return-void
.end method

.method public static addNonNullToDimensions(Lorg/eclipse/jdt/internal/compiler/lookup/Scope;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/AnnotationBinding;I)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;
    .locals 10

    new-array v0, p3, [[Lorg/eclipse/jdt/internal/compiler/lookup/AnnotationBinding;

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->getTypeAnnotations()[Lorg/eclipse/jdt/internal/compiler/lookup/AnnotationBinding;

    move-result-object v1

    const/4 v2, 0x1

    if-nez v1, :cond_1

    :goto_0
    if-lt v2, p3, :cond_0

    goto :goto_2

    :cond_0
    filled-new-array {p2}, [Lorg/eclipse/jdt/internal/compiler/lookup/AnnotationBinding;

    move-result-object v1

    aput-object v1, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    move v4, v3

    move v5, v4

    :goto_1
    if-lt v4, p3, :cond_2

    :goto_2
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->environment()Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    move-result-object p0

    invoke-virtual {p0, p1, v0}, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->createAnnotatedType(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;[[Lorg/eclipse/jdt/internal/compiler/lookup/AnnotationBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object p0

    return-object p0

    :cond_2
    array-length v6, v1

    if-ge v5, v6, :cond_8

    aget-object v6, v1, v5

    if-nez v6, :cond_3

    goto :goto_6

    :cond_3
    move v7, v3

    move v6, v5

    :goto_3
    aget-object v8, v1, v6

    if-nez v8, :cond_7

    if-nez v7, :cond_5

    if-nez v4, :cond_4

    goto :goto_4

    :cond_4
    sub-int v7, v6, v5

    add-int/lit8 v8, v7, 0x1

    new-array v8, v8, [Lorg/eclipse/jdt/internal/compiler/lookup/AnnotationBinding;

    aput-object p2, v8, v3

    invoke-static {v1, v5, v8, v2, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    aput-object v8, v0, v4

    goto :goto_5

    :cond_5
    :goto_4
    if-le v6, v5, :cond_6

    sub-int v7, v6, v5

    new-array v8, v7, [Lorg/eclipse/jdt/internal/compiler/lookup/AnnotationBinding;

    invoke-static {v1, v5, v8, v3, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    aput-object v8, v0, v4

    :cond_6
    :goto_5
    add-int/lit8 v6, v6, 0x1

    move v5, v6

    goto :goto_7

    :cond_7
    invoke-virtual {v8}, Lorg/eclipse/jdt/internal/compiler/lookup/AnnotationBinding;->getAnnotationType()Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move-result-object v8

    const/16 v9, 0x60

    invoke-virtual {v8, v9}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->hasNullBit(I)Z

    move-result v8

    or-int/2addr v7, v8

    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    :cond_8
    :goto_6
    if-eqz v4, :cond_9

    filled-new-array {p2}, [Lorg/eclipse/jdt/internal/compiler/lookup/AnnotationBinding;

    move-result-object v6

    aput-object v6, v0, v4

    :cond_9
    add-int/lit8 v5, v5, 0x1

    :goto_7
    add-int/lit8 v4, v4, 0x1

    goto :goto_1
.end method

.method private synthetic lambda$0(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)V
    .locals 0

    iput-object p1, p0, Lorg/eclipse/jdt/internal/compiler/ast/ArrayTypeReference;->leafComponentTypeWithoutDefaultNullness:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    return-void
.end method

.method public static maybeMarkArrayContentsNonNull(Lorg/eclipse/jdt/internal/compiler/lookup/Scope;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;IILjava/util/function/Consumer;)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/eclipse/jdt/internal/compiler/lookup/Scope;",
            "Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;",
            "II",
            "Ljava/util/function/Consumer<",
            "Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;",
            ">;)",
            "Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;"
        }
    .end annotation

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->environment()Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    move-result-object v0

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->usesNullTypeAnnotations()Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v1, 0x200

    invoke-virtual {p0, v1, p2}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->hasDefaultNullnessFor(II)Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->getNonNullAnnotation()Lorg/eclipse/jdt/internal/compiler/lookup/AnnotationBinding;

    move-result-object p2

    invoke-static {p0, p1, p2, p3}, Lorg/eclipse/jdt/internal/compiler/ast/ArrayTypeReference;->addNonNullToDimensions(Lorg/eclipse/jdt/internal/compiler/lookup/Scope;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/AnnotationBinding;I)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object p1

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->leafComponentType()Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object p3

    iget-wide v0, p3, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->tagBits:J

    const-wide/high16 v2, 0x180000000000000L

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    invoke-virtual {p3}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->acceptsNonNullDefault()Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p4, :cond_0

    invoke-interface {p4, p3}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    :cond_0
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->environment()Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    move-result-object p4

    filled-new-array {p2}, [Lorg/eclipse/jdt/internal/compiler/lookup/AnnotationBinding;

    move-result-object p2

    invoke-virtual {p4, p3, p2}, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->createAnnotatedType(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;[Lorg/eclipse/jdt/internal/compiler/lookup/AnnotationBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object p2

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->dimensions()I

    move-result p3

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->getTypeAnnotations()[Lorg/eclipse/jdt/internal/compiler/lookup/AnnotationBinding;

    move-result-object p1

    invoke-virtual {p0, p2, p3, p1}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->createArrayType(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;I[Lorg/eclipse/jdt/internal/compiler/lookup/AnnotationBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/ArrayBinding;

    move-result-object p1

    :cond_1
    return-object p1
.end method


# virtual methods
.method public dimensions()I
    .locals 1

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/ArrayTypeReference;->dimensions:I

    return v0
.end method

.method public extraDimensions()I
    .locals 1

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/ArrayTypeReference;->extendedDimensions:I

    return v0
.end method

.method public getAnnotationsOnDimensions(Z)[[Lorg/eclipse/jdt/internal/compiler/ast/Annotation;
    .locals 4

    if-nez p1, :cond_1

    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/ast/ArrayTypeReference;->annotationsOnDimensions:[[Lorg/eclipse/jdt/internal/compiler/ast/Annotation;

    if-eqz p1, :cond_1

    array-length v0, p1

    if-eqz v0, :cond_1

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/ArrayTypeReference;->extendedDimensions:I

    if-eqz v0, :cond_1

    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/ast/ArrayTypeReference;->dimensions:I

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    new-array v2, v1, [[Lorg/eclipse/jdt/internal/compiler/ast/Annotation;

    sub-int/2addr v1, v0

    const/4 v3, 0x0

    invoke-static {p1, v1, v2, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/ast/ArrayTypeReference;->annotationsOnDimensions:[[Lorg/eclipse/jdt/internal/compiler/ast/Annotation;

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/ArrayTypeReference;->extendedDimensions:I

    invoke-static {p1, v3, v2, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2

    :cond_1
    :goto_0
    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/ast/ArrayTypeReference;->annotationsOnDimensions:[[Lorg/eclipse/jdt/internal/compiler/ast/Annotation;

    return-object p1
.end method

.method public getParameterizedTypeName()[[C
    .locals 5

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/ArrayTypeReference;->dimensions:I

    mul-int/lit8 v1, v0, 0x2

    new-array v1, v1, [C

    const/4 v2, 0x0

    :goto_0
    if-lt v2, v0, :cond_0

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/SingleTypeReference;->token:[C

    invoke-static {v0, v1}, Lorg/eclipse/jdt/core/compiler/CharOperation;->concat([C[C)[C

    move-result-object v0

    filled-new-array {v0}, [[C

    move-result-object v0

    return-object v0

    :cond_0
    mul-int/lit8 v3, v2, 0x2

    const/16 v4, 0x5b

    aput-char v4, v1, v3

    add-int/lit8 v3, v3, 0x1

    const/16 v4, 0x5d

    aput-char v4, v1, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public getTypeBinding(Lorg/eclipse/jdt/internal/compiler/lookup/Scope;)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;
    .locals 2

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->resolvedType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/ArrayTypeReference;->dimensions:I

    const/16 v1, 0xff

    if-le v0, v1, :cond_1

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->tooManyDimensions(Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;)V

    :cond_1
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/SingleTypeReference;->token:[C

    invoke-virtual {p1, v0}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->getType([C)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v0

    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/ast/ArrayTypeReference;->dimensions:I

    invoke-virtual {p1, v0, v1}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->createArrayType(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;I)Lorg/eclipse/jdt/internal/compiler/lookup/ArrayBinding;

    move-result-object p1

    return-object p1
.end method

.method public hasNullTypeAnnotation(Lorg/eclipse/jdt/internal/compiler/ast/TypeReference$AnnotationPosition;)Z
    .locals 4

    invoke-static {}, Lorg/eclipse/jdt/internal/compiler/ast/ArrayTypeReference;->$SWITCH_TABLE$org$eclipse$jdt$internal$compiler$ast$TypeReference$AnnotationPosition()[I

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_7

    const/4 v3, 0x2

    if-eq v0, v3, :cond_6

    const/4 v3, 0x3

    if-eq v0, v3, :cond_0

    goto :goto_1

    :cond_0
    invoke-super {p0, p1}, Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;->hasNullTypeAnnotation(Lorg/eclipse/jdt/internal/compiler/ast/TypeReference$AnnotationPosition;)Z

    move-result p1

    if-eqz p1, :cond_1

    return v2

    :cond_1
    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->resolvedType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->hasNullTypeAnnotations()Z

    move-result p1

    if-nez p1, :cond_2

    return v1

    :cond_2
    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/ast/ArrayTypeReference;->annotationsOnDimensions:[[Lorg/eclipse/jdt/internal/compiler/ast/Annotation;

    if-eqz p1, :cond_5

    move p1, v1

    :goto_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/ArrayTypeReference;->annotationsOnDimensions:[[Lorg/eclipse/jdt/internal/compiler/ast/Annotation;

    array-length v3, v0

    if-lt p1, v3, :cond_3

    goto :goto_1

    :cond_3
    aget-object v0, v0, p1

    invoke-static {v0}, Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;->containsNullAnnotation([Lorg/eclipse/jdt/internal/compiler/ast/Annotation;)Z

    move-result v0

    if-eqz v0, :cond_4

    return v2

    :cond_4
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_5
    :goto_1
    return v1

    :cond_6
    invoke-super {p0, p1}, Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;->hasNullTypeAnnotation(Lorg/eclipse/jdt/internal/compiler/ast/TypeReference$AnnotationPosition;)Z

    move-result p1

    return p1

    :cond_7
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/ArrayTypeReference;->annotationsOnDimensions:[[Lorg/eclipse/jdt/internal/compiler/ast/Annotation;

    if-eqz v0, :cond_8

    array-length v2, v0

    if-lez v2, :cond_8

    aget-object p1, v0, v1

    invoke-static {p1}, Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;->containsNullAnnotation([Lorg/eclipse/jdt/internal/compiler/ast/Annotation;)Z

    move-result p1

    return p1

    :cond_8
    invoke-super {p0, p1}, Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;->hasNullTypeAnnotation(Lorg/eclipse/jdt/internal/compiler/ast/TypeReference$AnnotationPosition;)Z

    move-result p1

    return p1
.end method

.method public internalResolveType(Lorg/eclipse/jdt/internal/compiler/lookup/Scope;I)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;
    .locals 3

    invoke-super {p0, p1, p2}, Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;->internalResolveType(Lorg/eclipse/jdt/internal/compiler/lookup/Scope;I)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object p2

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceStart:I

    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/ast/ArrayTypeReference;->dimensions:I

    new-instance v2, Lorg/eclipse/jdt/internal/compiler/ast/a;

    invoke-direct {v2, p0}, Lorg/eclipse/jdt/internal/compiler/ast/a;-><init>(Lorg/eclipse/jdt/internal/compiler/ast/ArrayTypeReference;)V

    invoke-static {p1, p2, v0, v1, v2}, Lorg/eclipse/jdt/internal/compiler/ast/ArrayTypeReference;->maybeMarkArrayContentsNonNull(Lorg/eclipse/jdt/internal/compiler/lookup/Scope;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;IILjava/util/function/Consumer;)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object p1

    return-object p1
.end method

.method public printExpression(ILjava/lang/StringBuffer;)Ljava/lang/StringBuffer;
    .locals 4

    invoke-super {p0, p1, p2}, Lorg/eclipse/jdt/internal/compiler/ast/SingleTypeReference;->printExpression(ILjava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    iget p1, p0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->bits:I

    and-int/lit16 p1, p1, 0x4000

    const-string v0, "[]"

    const/4 v1, 0x0

    if-eqz p1, :cond_3

    :goto_0
    iget p1, p0, Lorg/eclipse/jdt/internal/compiler/ast/ArrayTypeReference;->dimensions:I

    add-int/lit8 v2, p1, -0x1

    const/16 v3, 0x20

    if-lt v1, v2, :cond_1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/ArrayTypeReference;->annotationsOnDimensions:[[Lorg/eclipse/jdt/internal/compiler/ast/Annotation;

    if-eqz v0, :cond_0

    add-int/lit8 p1, p1, -0x1

    aget-object p1, v0, p1

    if-eqz p1, :cond_0

    invoke-virtual {p2, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/ast/ArrayTypeReference;->annotationsOnDimensions:[[Lorg/eclipse/jdt/internal/compiler/ast/Annotation;

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/ArrayTypeReference;->dimensions:I

    add-int/lit8 v0, v0, -0x1

    aget-object p1, p1, v0

    invoke-static {p1, p2}, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->printAnnotations([Lorg/eclipse/jdt/internal/compiler/ast/Annotation;Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    invoke-virtual {p2, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_0
    const-string p1, "..."

    invoke-virtual {p2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_2

    :cond_1
    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/ast/ArrayTypeReference;->annotationsOnDimensions:[[Lorg/eclipse/jdt/internal/compiler/ast/Annotation;

    if-eqz p1, :cond_2

    aget-object p1, p1, v1

    if-eqz p1, :cond_2

    invoke-virtual {p2, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/ast/ArrayTypeReference;->annotationsOnDimensions:[[Lorg/eclipse/jdt/internal/compiler/ast/Annotation;

    aget-object p1, p1, v1

    invoke-static {p1, p2}, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->printAnnotations([Lorg/eclipse/jdt/internal/compiler/ast/Annotation;Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    invoke-virtual {p2, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_2
    invoke-virtual {p2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    iget p1, p0, Lorg/eclipse/jdt/internal/compiler/ast/ArrayTypeReference;->dimensions:I

    if-lt v1, p1, :cond_4

    :goto_2
    return-object p2

    :cond_4
    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/ast/ArrayTypeReference;->annotationsOnDimensions:[[Lorg/eclipse/jdt/internal/compiler/ast/Annotation;

    if-eqz p1, :cond_5

    aget-object p1, p1, v1

    if-eqz p1, :cond_5

    const-string p1, " "

    invoke-virtual {p2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/ast/ArrayTypeReference;->annotationsOnDimensions:[[Lorg/eclipse/jdt/internal/compiler/ast/Annotation;

    aget-object v2, v2, v1

    invoke-static {v2, p2}, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->printAnnotations([Lorg/eclipse/jdt/internal/compiler/ast/Annotation;Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_5
    invoke-virtual {p2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public setAnnotationsOnDimensions([[Lorg/eclipse/jdt/internal/compiler/ast/Annotation;)V
    .locals 0

    iput-object p1, p0, Lorg/eclipse/jdt/internal/compiler/ast/ArrayTypeReference;->annotationsOnDimensions:[[Lorg/eclipse/jdt/internal/compiler/ast/Annotation;

    return-void
.end method

.method public traverse(Lorg/eclipse/jdt/internal/compiler/ASTVisitor;Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;)V
    .locals 7

    .line 1
    invoke-virtual {p1, p0, p2}, Lorg/eclipse/jdt/internal/compiler/ASTVisitor;->visit(Lorg/eclipse/jdt/internal/compiler/ast/ArrayTypeReference;Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 2
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;->annotations:[[Lorg/eclipse/jdt/internal/compiler/ast/Annotation;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 3
    aget-object v0, v0, v1

    if-nez v0, :cond_0

    move v2, v1

    goto :goto_0

    .line 4
    :cond_0
    array-length v2, v0

    :goto_0
    move v3, v1

    :goto_1
    if-lt v3, v2, :cond_1

    goto :goto_2

    .line 5
    :cond_1
    aget-object v4, v0, v3

    invoke-virtual {v4, p1, p2}, Lorg/eclipse/jdt/internal/compiler/ast/Annotation;->traverse(Lorg/eclipse/jdt/internal/compiler/ASTVisitor;Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 6
    :cond_2
    :goto_2
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/ArrayTypeReference;->annotationsOnDimensions:[[Lorg/eclipse/jdt/internal/compiler/ast/Annotation;

    if-eqz v0, :cond_6

    .line 7
    array-length v0, v0

    move v2, v1

    :goto_3
    if-lt v2, v0, :cond_3

    goto :goto_6

    .line 8
    :cond_3
    iget-object v3, p0, Lorg/eclipse/jdt/internal/compiler/ast/ArrayTypeReference;->annotationsOnDimensions:[[Lorg/eclipse/jdt/internal/compiler/ast/Annotation;

    aget-object v3, v3, v2

    if-eqz v3, :cond_5

    .line 9
    array-length v4, v3

    move v5, v1

    :goto_4
    if-lt v5, v4, :cond_4

    goto :goto_5

    .line 10
    :cond_4
    aget-object v6, v3, v5

    .line 11
    invoke-virtual {v6, p1, p2}, Lorg/eclipse/jdt/internal/compiler/ast/Annotation;->traverse(Lorg/eclipse/jdt/internal/compiler/ASTVisitor;Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    :cond_5
    :goto_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 12
    :cond_6
    :goto_6
    invoke-virtual {p1, p0, p2}, Lorg/eclipse/jdt/internal/compiler/ASTVisitor;->endVisit(Lorg/eclipse/jdt/internal/compiler/ast/ArrayTypeReference;Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;)V

    return-void
.end method

.method public traverse(Lorg/eclipse/jdt/internal/compiler/ASTVisitor;Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;)V
    .locals 7

    .line 13
    invoke-virtual {p1, p0, p2}, Lorg/eclipse/jdt/internal/compiler/ASTVisitor;->visit(Lorg/eclipse/jdt/internal/compiler/ast/ArrayTypeReference;Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 14
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;->annotations:[[Lorg/eclipse/jdt/internal/compiler/ast/Annotation;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 15
    aget-object v0, v0, v1

    if-nez v0, :cond_0

    move v2, v1

    goto :goto_0

    .line 16
    :cond_0
    array-length v2, v0

    :goto_0
    move v3, v1

    :goto_1
    if-lt v3, v2, :cond_1

    goto :goto_2

    .line 17
    :cond_1
    aget-object v4, v0, v3

    invoke-virtual {v4, p1, p2}, Lorg/eclipse/jdt/internal/compiler/ast/Annotation;->traverse(Lorg/eclipse/jdt/internal/compiler/ASTVisitor;Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 18
    :cond_2
    :goto_2
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/ArrayTypeReference;->annotationsOnDimensions:[[Lorg/eclipse/jdt/internal/compiler/ast/Annotation;

    if-eqz v0, :cond_6

    .line 19
    array-length v0, v0

    move v2, v1

    :goto_3
    if-lt v2, v0, :cond_3

    goto :goto_6

    .line 20
    :cond_3
    iget-object v3, p0, Lorg/eclipse/jdt/internal/compiler/ast/ArrayTypeReference;->annotationsOnDimensions:[[Lorg/eclipse/jdt/internal/compiler/ast/Annotation;

    aget-object v3, v3, v2

    if-eqz v3, :cond_5

    .line 21
    array-length v4, v3

    move v5, v1

    :goto_4
    if-lt v5, v4, :cond_4

    goto :goto_5

    .line 22
    :cond_4
    aget-object v6, v3, v5

    .line 23
    invoke-virtual {v6, p1, p2}, Lorg/eclipse/jdt/internal/compiler/ast/Annotation;->traverse(Lorg/eclipse/jdt/internal/compiler/ASTVisitor;Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    :cond_5
    :goto_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 24
    :cond_6
    :goto_6
    invoke-virtual {p1, p0, p2}, Lorg/eclipse/jdt/internal/compiler/ASTVisitor;->endVisit(Lorg/eclipse/jdt/internal/compiler/ast/ArrayTypeReference;Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;)V

    return-void
.end method
