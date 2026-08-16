.class public Lorg/eclipse/jdt/internal/compiler/lookup/CaptureBinding18;
.super Lorg/eclipse/jdt/internal/compiler/lookup/CaptureBinding;
.source "SourceFile"


# instance fields
.field private originalName:[C

.field private prototype:Lorg/eclipse/jdt/internal/compiler/lookup/CaptureBinding18;

.field recursionLevel:I

.field upperBounds:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;


# direct methods
.method private constructor <init>(Lorg/eclipse/jdt/internal/compiler/lookup/CaptureBinding18;)V
    .locals 2

    .line 5
    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/compiler/lookup/CaptureBinding;-><init>(Lorg/eclipse/jdt/internal/compiler/lookup/CaptureBinding;)V

    const/4 v0, 0x0

    .line 6
    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/CaptureBinding18;->recursionLevel:I

    .line 7
    iget-object v0, p1, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->sourceName:[C

    const/16 v1, 0x27

    invoke-static {v0, v1}, Lorg/eclipse/jdt/core/compiler/CharOperation;->append([CC)[C

    move-result-object v0

    iput-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->sourceName:[C

    .line 8
    iget-object v0, p1, Lorg/eclipse/jdt/internal/compiler/lookup/CaptureBinding18;->originalName:[C

    iput-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/CaptureBinding18;->originalName:[C

    .line 9
    iget-object v0, p1, Lorg/eclipse/jdt/internal/compiler/lookup/CaptureBinding18;->upperBounds:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    iput-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/CaptureBinding18;->upperBounds:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    .line 10
    iget-object p1, p1, Lorg/eclipse/jdt/internal/compiler/lookup/CaptureBinding18;->prototype:Lorg/eclipse/jdt/internal/compiler/lookup/CaptureBinding18;

    iput-object p1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/CaptureBinding18;->prototype:Lorg/eclipse/jdt/internal/compiler/lookup/CaptureBinding18;

    return-void
.end method

.method public constructor <init>(Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;[C[CIIILorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;)V
    .locals 7

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p4

    move v4, p5

    move v5, p6

    move-object v6, p7

    .line 1
    invoke-direct/range {v0 .. v6}, Lorg/eclipse/jdt/internal/compiler/lookup/CaptureBinding;-><init>(Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;[CIIILorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;)V

    const/4 p1, 0x0

    .line 2
    iput p1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/CaptureBinding18;->recursionLevel:I

    .line 3
    iput-object p3, p0, Lorg/eclipse/jdt/internal/compiler/lookup/CaptureBinding18;->originalName:[C

    .line 4
    iput-object p0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/CaptureBinding18;->prototype:Lorg/eclipse/jdt/internal/compiler/lookup/CaptureBinding18;

    return-void
.end method


# virtual methods
.method public clone(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;
    .locals 0

    new-instance p1, Lorg/eclipse/jdt/internal/compiler/lookup/CaptureBinding18;

    invoke-direct {p1, p0}, Lorg/eclipse/jdt/internal/compiler/lookup/CaptureBinding18;-><init>(Lorg/eclipse/jdt/internal/compiler/lookup/CaptureBinding18;)V

    return-object p1
.end method

.method public computeUniqueKey(Z)[C
    .locals 3

    new-instance p1, Ljava/lang/StringBuffer;

    invoke-direct {p1}, Ljava/lang/StringBuffer;-><init>()V

    sget-object v0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeConstants;->CAPTURE18:[C

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    const/16 v0, 0x7b

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/CaptureBinding;->end:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const/16 v0, 0x23

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/CaptureBinding;->captureID:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const/16 v0, 0x7d

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    const/16 v0, 0x3b

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    new-array v1, v0, [C

    const/4 v2, 0x0

    invoke-virtual {p1, v2, v0, v1, v2}, Ljava/lang/StringBuffer;->getChars(II[CI)V

    return-object v1
.end method

.method public erasure()Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;
    .locals 7

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/CaptureBinding18;->upperBounds:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    if-eqz v0, :cond_3

    array-length v1, v0

    const/4 v2, 0x1

    if-le v1, v2, :cond_3

    array-length v0, v0

    new-array v0, v0, [Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    const/4 v1, 0x0

    move v3, v1

    move v4, v3

    :goto_0
    iget-object v5, p0, Lorg/eclipse/jdt/internal/compiler/lookup/CaptureBinding18;->upperBounds:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    array-length v6, v5

    if-lt v3, v6, :cond_1

    if-nez v4, :cond_0

    aget-object v0, v0, v1

    return-object v0

    :cond_0
    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;->environment:Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    invoke-virtual {v1, v0}, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->createIntersectionType18([Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v0

    return-object v0

    :cond_1
    aget-object v5, v5, v3

    invoke-virtual {v5}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->erasure()Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v5

    check-cast v5, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    aput-object v5, v0, v3

    if-lez v3, :cond_2

    aget-object v6, v0, v1

    invoke-static {v6, v5}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->notEquals(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Z

    move-result v5

    if-eqz v5, :cond_2

    move v4, v2

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;->superclass:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    if-nez v0, :cond_4

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;->environment:Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    sget-object v1, Lorg/eclipse/jdt/internal/compiler/lookup/TypeConstants;->JAVA_LANG_OBJECT:[[C

    invoke-virtual {v0, v1}, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->getType([[C)Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move-result-object v0

    return-object v0

    :cond_4
    invoke-super {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;->erasure()Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v0

    return-object v0
.end method

.method public findSuperTypeOriginatingFrom(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;
    .locals 3

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/CaptureBinding18;->upperBounds:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    if-eqz v0, :cond_2

    array-length v0, v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_2

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/CaptureBinding18;->upperBounds:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    array-length v2, v1

    if-lt v0, v2, :cond_0

    goto :goto_1

    :cond_0
    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->findSuperTypeOriginatingFrom(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v1

    if-eqz v1, :cond_1

    return-object v1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    invoke-super {p0, p1}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->findSuperTypeOriginatingFrom(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object p1

    return-object p1
.end method

.method public getMethods([C)[Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;
    .locals 3

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/CaptureBinding18;->upperBounds:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    array-length v1, v0

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    instance-of v1, v0, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    if-eqz v1, :cond_0

    check-cast v0, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    invoke-virtual {v0, p1}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->getMethods([C)[Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-super {p0, p1}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->getMethods([C)[Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    move-result-object p1

    return-object p1
.end method

.method public initializeBounds(Lorg/eclipse/jdt/internal/compiler/lookup/Scope;Lorg/eclipse/jdt/internal/compiler/lookup/ParameterizedTypeBinding;)V
    .locals 0

    return-void
.end method

.method public isCompatibleWith(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/Scope;)Z
    .locals 9

    invoke-static {p0, p1}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->equalsEquals(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget-boolean v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;->inRecursiveFunction:Z

    if-eqz v0, :cond_1

    return v1

    :cond_1
    iput-boolean v1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;->inRecursiveFunction:Z

    const/4 v0, 0x0

    :try_start_0
    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/lookup/CaptureBinding18;->upperBounds:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    if-eqz v2, :cond_a

    array-length v2, v2

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->kind()I

    move-result v3

    const/16 v4, 0x2004

    if-ne v3, v4, :cond_2

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->boundKind()I

    move-result v4

    if-ne v4, v1, :cond_2

    move-object v3, p1

    check-cast v3, Lorg/eclipse/jdt/internal/compiler/lookup/WildcardBinding;

    invoke-virtual {v3}, Lorg/eclipse/jdt/internal/compiler/lookup/WildcardBinding;->allBounds()Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v3

    instance-of v4, v3, Lorg/eclipse/jdt/internal/compiler/lookup/IntersectionTypeBinding18;

    if-eqz v4, :cond_3

    check-cast v3, Lorg/eclipse/jdt/internal/compiler/lookup/IntersectionTypeBinding18;

    iget-object v3, v3, Lorg/eclipse/jdt/internal/compiler/lookup/IntersectionTypeBinding18;->intersectingTypes:[Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_5

    :cond_2
    const v4, 0x8004

    if-ne v3, v4, :cond_3

    move-object v3, p1

    check-cast v3, Lorg/eclipse/jdt/internal/compiler/lookup/IntersectionTypeBinding18;

    iget-object v3, v3, Lorg/eclipse/jdt/internal/compiler/lookup/IntersectionTypeBinding18;->intersectingTypes:[Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    goto :goto_0

    :cond_3
    const/4 v3, 0x0

    :goto_0
    if-eqz v3, :cond_7

    array-length p1, v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v2, v0

    :goto_1
    if-lt v2, p1, :cond_4

    iput-boolean v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;->inRecursiveFunction:Z

    return v1

    :cond_4
    :try_start_1
    aget-object v4, v3, v2

    iget-object v5, p0, Lorg/eclipse/jdt/internal/compiler/lookup/CaptureBinding18;->upperBounds:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    array-length v6, v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v7, v0

    :goto_2
    if-lt v7, v6, :cond_5

    iput-boolean v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;->inRecursiveFunction:Z

    return v0

    :cond_5
    :try_start_2
    aget-object v8, v5, v7

    invoke-virtual {v8, v4, p2}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isCompatibleWith(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/Scope;)Z

    move-result v8

    if-eqz v8, :cond_6

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_6
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    :cond_7
    move v3, v0

    :goto_3
    if-lt v3, v2, :cond_8

    goto :goto_4

    :cond_8
    iget-object v4, p0, Lorg/eclipse/jdt/internal/compiler/lookup/CaptureBinding18;->upperBounds:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    aget-object v4, v4, v3

    invoke-virtual {v4, p1, p2}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isCompatibleWith(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/Scope;)Z

    move-result v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v4, :cond_9

    iput-boolean v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;->inRecursiveFunction:Z

    return v1

    :cond_9
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_a
    :goto_4
    iput-boolean v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;->inRecursiveFunction:Z

    return v0

    :goto_5
    iput-boolean v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;->inRecursiveFunction:Z

    throw p1
.end method

.method public isEquivalentTo(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Z
    .locals 6

    invoke-static {p0, p1}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->equalsEquals(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    if-nez p1, :cond_1

    return v0

    :cond_1
    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/lookup/CaptureBinding18;->upperBounds:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    if-eqz v2, :cond_6

    move v2, v0

    :goto_0
    iget-object v3, p0, Lorg/eclipse/jdt/internal/compiler/lookup/CaptureBinding18;->upperBounds:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    array-length v4, v3

    if-lt v2, v4, :cond_2

    return v1

    :cond_2
    aget-object v3, v3, v2

    if-eqz v3, :cond_3

    invoke-virtual {v3}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isArrayType()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-virtual {v3, p1}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isCompatibleWith(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Z

    move-result v3

    if-nez v3, :cond_5

    return v0

    :cond_3
    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->kind()I

    move-result v4

    const/16 v5, 0x204

    if-eq v4, v5, :cond_4

    const/16 v5, 0x2004

    if-eq v4, v5, :cond_4

    goto :goto_1

    :cond_4
    move-object v4, p1

    check-cast v4, Lorg/eclipse/jdt/internal/compiler/lookup/WildcardBinding;

    invoke-virtual {v4, v3}, Lorg/eclipse/jdt/internal/compiler/lookup/WildcardBinding;->boundCheck(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Z

    move-result v3

    if-nez v3, :cond_5

    return v0

    :cond_5
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_6
    return v0
.end method

.method public isProperType(Z)Z
    .locals 5

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    iget-boolean v1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;->inRecursiveFunction:Z

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    return v2

    :cond_1
    iput-boolean v2, p0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;->inRecursiveFunction:Z

    :try_start_0
    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/CaptureBinding;->lowerBound:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    if-eqz v1, :cond_2

    invoke-virtual {v1, p1}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isProperType(Z)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_2

    iput-boolean v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;->inRecursiveFunction:Z

    return v0

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_2
    :try_start_1
    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/CaptureBinding18;->upperBounds:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    if-eqz v1, :cond_5

    move v1, v0

    :goto_0
    iget-object v3, p0, Lorg/eclipse/jdt/internal/compiler/lookup/CaptureBinding18;->upperBounds:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    array-length v4, v3

    if-lt v1, v4, :cond_3

    goto :goto_1

    :cond_3
    aget-object v3, v3, v1

    invoke-virtual {v3, p1}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isProperType(Z)Z

    move-result v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v3, :cond_4

    iput-boolean v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;->inRecursiveFunction:Z

    return v0

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_5
    :goto_1
    iput-boolean v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;->inRecursiveFunction:Z

    return v2

    :goto_2
    iput-boolean v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;->inRecursiveFunction:Z

    throw p1
.end method

.method public readableName()[C
    .locals 5

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/CaptureBinding;->lowerBound:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    if-nez v0, :cond_3

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;->firstBound:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    if-eqz v0, :cond_3

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/CaptureBinding18;->prototype:Lorg/eclipse/jdt/internal/compiler/lookup/CaptureBinding18;

    iget v2, v1, Lorg/eclipse/jdt/internal/compiler/lookup/CaptureBinding18;->recursionLevel:I

    const/4 v3, 0x2

    if-ge v2, v3, :cond_2

    const/4 v3, 0x1

    add-int/2addr v2, v3

    :try_start_0
    iput v2, v1, Lorg/eclipse/jdt/internal/compiler/lookup/CaptureBinding18;->recursionLevel:I

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/CaptureBinding18;->upperBounds:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    if-eqz v1, :cond_1

    array-length v1, v1

    if-le v1, v3, :cond_1

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/CaptureBinding18;->upperBounds:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->readableName()[C

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    move v1, v3

    :goto_0
    iget-object v4, p0, Lorg/eclipse/jdt/internal/compiler/lookup/CaptureBinding18;->upperBounds:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    array-length v4, v4

    if-lt v1, v4, :cond_0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v1

    new-array v4, v1, [C

    invoke-virtual {v0, v2, v1, v4, v2}, Ljava/lang/StringBuffer;->getChars(II[CI)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/CaptureBinding18;->prototype:Lorg/eclipse/jdt/internal/compiler/lookup/CaptureBinding18;

    iget v1, v0, Lorg/eclipse/jdt/internal/compiler/lookup/CaptureBinding18;->recursionLevel:I

    sub-int/2addr v1, v3

    iput v1, v0, Lorg/eclipse/jdt/internal/compiler/lookup/CaptureBinding18;->recursionLevel:I

    return-object v4

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    const/16 v4, 0x26

    :try_start_1
    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    iget-object v4, p0, Lorg/eclipse/jdt/internal/compiler/lookup/CaptureBinding18;->upperBounds:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    aget-object v4, v4, v1

    invoke-virtual {v4}, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->readableName()[C

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->readableName()[C

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/CaptureBinding18;->prototype:Lorg/eclipse/jdt/internal/compiler/lookup/CaptureBinding18;

    iget v2, v1, Lorg/eclipse/jdt/internal/compiler/lookup/CaptureBinding18;->recursionLevel:I

    sub-int/2addr v2, v3

    iput v2, v1, Lorg/eclipse/jdt/internal/compiler/lookup/CaptureBinding18;->recursionLevel:I

    return-object v0

    :goto_1
    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/CaptureBinding18;->prototype:Lorg/eclipse/jdt/internal/compiler/lookup/CaptureBinding18;

    iget v2, v1, Lorg/eclipse/jdt/internal/compiler/lookup/CaptureBinding18;->recursionLevel:I

    sub-int/2addr v2, v3

    iput v2, v1, Lorg/eclipse/jdt/internal/compiler/lookup/CaptureBinding18;->recursionLevel:I

    throw v0

    :cond_2
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/CaptureBinding18;->originalName:[C

    return-object v0

    :cond_3
    invoke-super {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/CaptureBinding;->readableName()[C

    move-result-object v0

    return-object v0
.end method

.method public setUpperBounds([Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;)Z
    .locals 5

    iput-object p1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/CaptureBinding18;->upperBounds:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    array-length v0, p1

    const/4 v1, 0x0

    if-lez v0, :cond_0

    aget-object v0, p1, v1

    iput-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;->firstBound:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    :cond_0
    invoke-static {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->isConsistentIntersection([Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Z

    move-result v0

    if-nez v0, :cond_1

    return v1

    :cond_1
    move v0, v1

    move v2, v0

    :goto_0
    array-length v3, p1

    if-lt v0, v3, :cond_5

    new-array v0, v2, [Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    iput-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;->superInterfaces:[Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move v0, v1

    :goto_1
    array-length v2, p1

    if-lt v1, v2, :cond_3

    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;->superclass:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    if-nez p1, :cond_2

    iput-object p2, p0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;->superclass:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    :cond_2
    const/4 p1, 0x1

    return p1

    :cond_3
    aget-object v2, p1, v1

    invoke-virtual {v2}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isInterface()Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;->superInterfaces:[Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    add-int/lit8 v4, v0, 0x1

    check-cast v2, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    aput-object v2, v3, v0

    move v0, v4

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_5
    aget-object v3, p1, v0

    instance-of v4, v3, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    if-eqz v4, :cond_7

    iget-object v4, p0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;->superclass:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    if-nez v4, :cond_6

    invoke-virtual {v3}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isClass()Z

    move-result v4

    if-eqz v4, :cond_6

    check-cast v3, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    iput-object v3, p0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;->superclass:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    goto :goto_2

    :cond_6
    invoke-virtual {v3}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isInterface()Z

    move-result v3

    if-eqz v3, :cond_8

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_7
    invoke-virtual {v3}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->leafComponentType()Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v3

    invoke-static {v3, p0}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->equalsEquals(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Z

    move-result v3

    if-eqz v3, :cond_8

    return v1

    :cond_8
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public shortReadableName()[C
    .locals 5

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/CaptureBinding;->lowerBound:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    if-nez v0, :cond_3

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;->firstBound:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    if-eqz v0, :cond_3

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/CaptureBinding18;->prototype:Lorg/eclipse/jdt/internal/compiler/lookup/CaptureBinding18;

    iget v2, v1, Lorg/eclipse/jdt/internal/compiler/lookup/CaptureBinding18;->recursionLevel:I

    const/4 v3, 0x2

    if-ge v2, v3, :cond_2

    const/4 v3, 0x1

    add-int/2addr v2, v3

    :try_start_0
    iput v2, v1, Lorg/eclipse/jdt/internal/compiler/lookup/CaptureBinding18;->recursionLevel:I

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/CaptureBinding18;->upperBounds:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    if-eqz v1, :cond_1

    array-length v1, v1

    if-le v1, v3, :cond_1

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/CaptureBinding18;->upperBounds:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->shortReadableName()[C

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    move v1, v3

    :goto_0
    iget-object v4, p0, Lorg/eclipse/jdt/internal/compiler/lookup/CaptureBinding18;->upperBounds:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    array-length v4, v4

    if-lt v1, v4, :cond_0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v1

    new-array v4, v1, [C

    invoke-virtual {v0, v2, v1, v4, v2}, Ljava/lang/StringBuffer;->getChars(II[CI)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/CaptureBinding18;->prototype:Lorg/eclipse/jdt/internal/compiler/lookup/CaptureBinding18;

    iget v1, v0, Lorg/eclipse/jdt/internal/compiler/lookup/CaptureBinding18;->recursionLevel:I

    sub-int/2addr v1, v3

    iput v1, v0, Lorg/eclipse/jdt/internal/compiler/lookup/CaptureBinding18;->recursionLevel:I

    return-object v4

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    const/16 v4, 0x26

    :try_start_1
    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    iget-object v4, p0, Lorg/eclipse/jdt/internal/compiler/lookup/CaptureBinding18;->upperBounds:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    aget-object v4, v4, v1

    invoke-virtual {v4}, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->shortReadableName()[C

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->shortReadableName()[C

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/CaptureBinding18;->prototype:Lorg/eclipse/jdt/internal/compiler/lookup/CaptureBinding18;

    iget v2, v1, Lorg/eclipse/jdt/internal/compiler/lookup/CaptureBinding18;->recursionLevel:I

    sub-int/2addr v2, v3

    iput v2, v1, Lorg/eclipse/jdt/internal/compiler/lookup/CaptureBinding18;->recursionLevel:I

    return-object v0

    :goto_1
    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/CaptureBinding18;->prototype:Lorg/eclipse/jdt/internal/compiler/lookup/CaptureBinding18;

    iget v2, v1, Lorg/eclipse/jdt/internal/compiler/lookup/CaptureBinding18;->recursionLevel:I

    sub-int/2addr v2, v3

    iput v2, v1, Lorg/eclipse/jdt/internal/compiler/lookup/CaptureBinding18;->recursionLevel:I

    throw v0

    :cond_2
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/CaptureBinding18;->originalName:[C

    return-object v0

    :cond_3
    invoke-super {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/CaptureBinding;->shortReadableName()[C

    move-result-object v0

    return-object v0
.end method

.method public substituteInferenceVariable(Lorg/eclipse/jdt/internal/compiler/lookup/InferenceVariable;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;
    .locals 11

    iget-boolean v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;->inRecursiveFunction:Z

    if-eqz v0, :cond_0

    return-object p0

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;->inRecursiveFunction:Z

    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;->superclass:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    if-eqz v2, :cond_1

    invoke-virtual {v2, p1, p2}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->substituteInferenceVariable(Lorg/eclipse/jdt/internal/compiler/lookup/InferenceVariable;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v2

    check-cast v2, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    iget-object v3, p0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;->superclass:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    invoke-static {v2, v3}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->notEquals(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Z

    move-result v3

    goto :goto_0

    :catchall_0
    move-exception p1

    goto/16 :goto_7

    :cond_1
    move v3, v1

    :goto_0
    iget-object v4, p0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;->superInterfaces:[Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    const/4 v5, 0x0

    if-eqz v4, :cond_6

    array-length v6, v4

    if-eqz v3, :cond_2

    new-array v7, v6, [Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    invoke-static {v4, v1, v7, v1, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_1

    :cond_2
    move-object v7, v5

    :goto_1
    move v4, v1

    :goto_2
    if-lt v4, v6, :cond_3

    goto :goto_3

    :cond_3
    iget-object v8, p0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;->superInterfaces:[Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    aget-object v8, v8, v4

    if-eqz v8, :cond_5

    invoke-virtual {v8, p1, p2}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->substituteInferenceVariable(Lorg/eclipse/jdt/internal/compiler/lookup/InferenceVariable;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v8

    check-cast v8, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    iget-object v9, p0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;->superInterfaces:[Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    aget-object v9, v9, v4

    invoke-static {v8, v9}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->notEquals(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Z

    move-result v9

    if-eqz v9, :cond_5

    if-nez v7, :cond_4

    iget-object v3, p0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;->superInterfaces:[Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    new-array v7, v6, [Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    invoke-static {v3, v1, v7, v1, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_4
    aput-object v8, v7, v4

    move v3, v0

    :cond_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_6
    move-object v7, v5

    :goto_3
    iget-object v4, p0, Lorg/eclipse/jdt/internal/compiler/lookup/CaptureBinding18;->upperBounds:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    if-eqz v4, :cond_b

    array-length v6, v4

    if-eqz v3, :cond_7

    new-array v8, v6, [Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-static {v4, v1, v8, v1, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_4

    :cond_7
    move-object v8, v5

    :goto_4
    move v4, v1

    :goto_5
    if-lt v4, v6, :cond_8

    goto :goto_6

    :cond_8
    iget-object v9, p0, Lorg/eclipse/jdt/internal/compiler/lookup/CaptureBinding18;->upperBounds:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    aget-object v9, v9, v4

    if-eqz v9, :cond_a

    invoke-virtual {v9, p1, p2}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->substituteInferenceVariable(Lorg/eclipse/jdt/internal/compiler/lookup/InferenceVariable;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v9

    iget-object v10, p0, Lorg/eclipse/jdt/internal/compiler/lookup/CaptureBinding18;->upperBounds:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    aget-object v10, v10, v4

    invoke-static {v9, v10}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->notEquals(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Z

    move-result v10

    if-eqz v10, :cond_a

    if-nez v8, :cond_9

    iget-object v3, p0, Lorg/eclipse/jdt/internal/compiler/lookup/CaptureBinding18;->upperBounds:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    new-array v8, v6, [Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-static {v3, v1, v8, v1, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_9
    aput-object v9, v8, v4

    move v3, v0

    :cond_a
    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    :cond_b
    move-object v8, v5

    :goto_6
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;->firstBound:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    if-eqz v0, :cond_c

    invoke-virtual {v0, p1, p2}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->substituteInferenceVariable(Lorg/eclipse/jdt/internal/compiler/lookup/InferenceVariable;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v5

    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;->firstBound:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-static {p1, v5}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->notEquals(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Z

    move-result p1

    or-int/2addr v3, p1

    :cond_c
    if-eqz v3, :cond_e

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->enclosingType()Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/internal/compiler/lookup/CaptureBinding18;->clone(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object p1

    check-cast p1, Lorg/eclipse/jdt/internal/compiler/lookup/CaptureBinding18;

    iget-wide v3, p0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->tagBits:J

    iput-wide v3, p1, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->tagBits:J

    new-instance p2, Lorg/eclipse/jdt/internal/compiler/lookup/CaptureBinding18$1;

    invoke-direct {p2, p0, p1}, Lorg/eclipse/jdt/internal/compiler/lookup/CaptureBinding18$1;-><init>(Lorg/eclipse/jdt/internal/compiler/lookup/CaptureBinding18;Lorg/eclipse/jdt/internal/compiler/lookup/CaptureBinding18;)V

    if-eqz v5, :cond_d

    invoke-static {p2, v5}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->substitute(Lorg/eclipse/jdt/internal/compiler/lookup/Substitution;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v0

    iput-object v0, p1, Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;->firstBound:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    :cond_d
    invoke-static {p2, v2}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->substitute(Lorg/eclipse/jdt/internal/compiler/lookup/Substitution;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    iput-object v0, p1, Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;->superclass:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    invoke-static {p2, v7}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->substitute(Lorg/eclipse/jdt/internal/compiler/lookup/Substitution;[Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;)[Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move-result-object v0

    iput-object v0, p1, Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;->superInterfaces:[Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    invoke-static {p2, v8}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->substitute(Lorg/eclipse/jdt/internal/compiler/lookup/Substitution;[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object p2

    iput-object p2, p1, Lorg/eclipse/jdt/internal/compiler/lookup/CaptureBinding18;->upperBounds:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iput-boolean v1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;->inRecursiveFunction:Z

    return-object p1

    :cond_e
    iput-boolean v1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;->inRecursiveFunction:Z

    return-object p0

    :goto_7
    iput-boolean v1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;->inRecursiveFunction:Z

    throw p1
.end method

.method public uncapture(Lorg/eclipse/jdt/internal/compiler/lookup/Scope;)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;
    .locals 0

    return-object p0
.end method
