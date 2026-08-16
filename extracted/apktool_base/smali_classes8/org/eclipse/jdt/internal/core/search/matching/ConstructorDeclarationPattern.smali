.class public Lorg/eclipse/jdt/internal/core/search/matching/ConstructorDeclarationPattern;
.super Lorg/eclipse/jdt/internal/core/search/matching/ConstructorPattern;
.source "SourceFile"


# instance fields
.field public declaringPackageName:[C

.field public declaringTypeModifiers:I

.field public extraFlags:I

.field public modifiers:I

.field public parameterNames:[[C

.field public parameterTypes:[[C

.field public signature:[C


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 8
    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/core/search/matching/ConstructorPattern;-><init>(I)V

    return-void
.end method

.method public constructor <init>([C[CI)V
    .locals 0

    .line 1
    invoke-direct {p0, p3}, Lorg/eclipse/jdt/internal/core/search/matching/ConstructorDeclarationPattern;-><init>(I)V

    .line 2
    iget-boolean p3, p0, Lorg/eclipse/jdt/internal/core/search/matching/JavaSearchPattern;->isCaseSensitive:Z

    if-nez p3, :cond_1

    iget-boolean p3, p0, Lorg/eclipse/jdt/internal/core/search/matching/JavaSearchPattern;->isCamelCase:Z

    if-eqz p3, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p2}, Lorg/eclipse/jdt/core/compiler/CharOperation;->toLowerCase([C)[C

    move-result-object p2

    :cond_1
    :goto_0
    iput-object p2, p0, Lorg/eclipse/jdt/internal/core/search/matching/ConstructorPattern;->declaringSimpleName:[C

    .line 3
    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/search/matching/ConstructorDeclarationPattern;->declaringPackageName:[C

    const/4 p1, 0x1

    .line 4
    iput-boolean p1, p0, Lorg/eclipse/jdt/internal/core/search/matching/ConstructorPattern;->findDeclarations:Z

    const/4 p1, 0x0

    .line 5
    iput-boolean p1, p0, Lorg/eclipse/jdt/internal/core/search/matching/ConstructorPattern;->findReferences:Z

    const/4 p2, -0x1

    .line 6
    iput p2, p0, Lorg/eclipse/jdt/internal/core/search/matching/ConstructorPattern;->parameterCount:I

    .line 7
    iput-boolean p1, p0, Lorg/eclipse/jdt/core/search/SearchPattern;->mustResolve:Z

    return-void
.end method

.method private removeInternalFlags()V
    .locals 1

    iget v0, p0, Lorg/eclipse/jdt/internal/core/search/matching/ConstructorDeclarationPattern;->extraFlags:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lorg/eclipse/jdt/internal/core/search/matching/ConstructorDeclarationPattern;->extraFlags:I

    return-void
.end method


# virtual methods
.method public decodeIndexKey([C)V
    .locals 11

    array-length v0, p1

    const/16 v0, 0x2f

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Lorg/eclipse/jdt/core/compiler/CharOperation;->indexOf(C[CI)I

    move-result v2

    invoke-static {p1, v1, v2}, Lorg/eclipse/jdt/core/compiler/CharOperation;->subarray([CII)[C

    move-result-object v3

    iput-object v3, p0, Lorg/eclipse/jdt/internal/core/search/matching/ConstructorPattern;->declaringSimpleName:[C

    const/4 v3, 0x1

    add-int/2addr v2, v3

    invoke-static {v0, p1, v2}, Lorg/eclipse/jdt/core/compiler/CharOperation;->indexOf(C[CI)I

    move-result v4

    add-int/lit8 v5, v4, -0x1

    aget-char v6, p1, v5

    const/16 v7, 0x23

    const/4 v8, -0x1

    if-ne v6, v7, :cond_0

    iput v8, p0, Lorg/eclipse/jdt/internal/core/search/matching/ConstructorPattern;->parameterCount:I

    goto :goto_1

    :cond_0
    iput v1, p0, Lorg/eclipse/jdt/internal/core/search/matching/ConstructorPattern;->parameterCount:I

    move v7, v3

    move v6, v5

    :goto_0
    if-ge v6, v2, :cond_7

    :goto_1
    add-int/lit8 v2, v4, 0x2

    add-int/lit8 v5, v4, 0x1

    aget-char v5, p1, v5

    aget-char v2, p1, v2

    shl-int/lit8 v2, v2, 0x10

    add-int/2addr v5, v2

    invoke-static {v5}, Lorg/eclipse/jdt/internal/core/search/matching/ConstructorPattern;->decodeModifers(I)I

    move-result v2

    iput v2, p0, Lorg/eclipse/jdt/internal/core/search/matching/ConstructorDeclarationPattern;->declaringTypeModifiers:I

    invoke-static {v5}, Lorg/eclipse/jdt/internal/core/search/matching/ConstructorPattern;->decodeExtraFlags(I)I

    move-result v2

    iput v2, p0, Lorg/eclipse/jdt/internal/core/search/matching/ConstructorDeclarationPattern;->extraFlags:I

    const/4 v5, 0x0

    iput-object v5, p0, Lorg/eclipse/jdt/internal/core/search/matching/ConstructorDeclarationPattern;->declaringPackageName:[C

    iput v1, p0, Lorg/eclipse/jdt/internal/core/search/matching/ConstructorDeclarationPattern;->modifiers:I

    iput-object v5, p0, Lorg/eclipse/jdt/internal/core/search/matching/ConstructorDeclarationPattern;->signature:[C

    iput-object v5, p0, Lorg/eclipse/jdt/internal/core/search/matching/ConstructorDeclarationPattern;->parameterTypes:[[C

    iput-object v5, p0, Lorg/eclipse/jdt/internal/core/search/matching/ConstructorDeclarationPattern;->parameterNames:[[C

    and-int/lit8 v1, v2, 0x2

    if-eqz v1, :cond_1

    goto :goto_4

    :cond_1
    add-int/lit8 v4, v4, 0x4

    iget v1, p0, Lorg/eclipse/jdt/internal/core/search/matching/ConstructorPattern;->parameterCount:I

    if-ne v1, v8, :cond_2

    array-length v1, p1

    goto :goto_2

    :cond_2
    invoke-static {v0, p1, v4}, Lorg/eclipse/jdt/core/compiler/CharOperation;->indexOf(C[CI)I

    move-result v1

    :goto_2
    invoke-static {p1, v4, v1}, Lorg/eclipse/jdt/core/compiler/CharOperation;->subarray([CII)[C

    move-result-object v2

    iput-object v2, p0, Lorg/eclipse/jdt/internal/core/search/matching/ConstructorDeclarationPattern;->declaringPackageName:[C

    add-int/lit8 v2, v1, 0x1

    iget v4, p0, Lorg/eclipse/jdt/internal/core/search/matching/ConstructorPattern;->parameterCount:I

    if-nez v4, :cond_3

    add-int/lit8 v0, v1, 0x2

    add-int/2addr v1, v3

    aget-char v1, p1, v1

    aget-char p1, p1, v0

    shl-int/lit8 p1, p1, 0x10

    add-int/2addr v1, p1

    iput v1, p0, Lorg/eclipse/jdt/internal/core/search/matching/ConstructorDeclarationPattern;->modifiers:I

    goto :goto_4

    :cond_3
    if-lez v4, :cond_6

    invoke-static {v0, p1, v2}, Lorg/eclipse/jdt/core/compiler/CharOperation;->indexOf(C[CI)I

    move-result v1

    iget v4, p0, Lorg/eclipse/jdt/internal/core/search/matching/ConstructorDeclarationPattern;->extraFlags:I

    and-int/lit8 v4, v4, 0x10

    const/16 v5, 0x2c

    if-eqz v4, :cond_4

    invoke-static {p1, v2, v1}, Lorg/eclipse/jdt/core/compiler/CharOperation;->subarray([CII)[C

    move-result-object v2

    iput-object v2, p0, Lorg/eclipse/jdt/internal/core/search/matching/ConstructorDeclarationPattern;->signature:[C

    const/16 v4, 0x5c

    invoke-static {v2, v4, v0}, Lorg/eclipse/jdt/core/compiler/CharOperation;->replace([CCC)V

    goto :goto_3

    :cond_4
    invoke-static {v5, p1, v2, v1}, Lorg/eclipse/jdt/core/compiler/CharOperation;->splitOn(C[CII)[[C

    move-result-object v2

    iput-object v2, p0, Lorg/eclipse/jdt/internal/core/search/matching/ConstructorDeclarationPattern;->parameterTypes:[[C

    :goto_3
    add-int/2addr v1, v3

    invoke-static {v0, p1, v1}, Lorg/eclipse/jdt/core/compiler/CharOperation;->indexOf(C[CI)I

    move-result v0

    if-eq v0, v1, :cond_5

    invoke-static {v5, p1, v1, v0}, Lorg/eclipse/jdt/core/compiler/CharOperation;->splitOn(C[CII)[[C

    move-result-object v1

    iput-object v1, p0, Lorg/eclipse/jdt/internal/core/search/matching/ConstructorDeclarationPattern;->parameterNames:[[C

    :cond_5
    add-int/lit8 v1, v0, 0x2

    add-int/2addr v0, v3

    aget-char v0, p1, v0

    aget-char p1, p1, v1

    shl-int/lit8 p1, p1, 0x10

    add-int/2addr v0, p1

    iput v0, p0, Lorg/eclipse/jdt/internal/core/search/matching/ConstructorDeclarationPattern;->modifiers:I

    goto :goto_4

    :cond_6
    iput v3, p0, Lorg/eclipse/jdt/internal/core/search/matching/ConstructorDeclarationPattern;->modifiers:I

    :goto_4
    invoke-direct {p0}, Lorg/eclipse/jdt/internal/core/search/matching/ConstructorDeclarationPattern;->removeInternalFlags()V

    return-void

    :cond_7
    if-ne v6, v5, :cond_8

    aget-char v9, p1, v6

    add-int/lit8 v9, v9, -0x30

    iput v9, p0, Lorg/eclipse/jdt/internal/core/search/matching/ConstructorPattern;->parameterCount:I

    goto :goto_5

    :cond_8
    mul-int/lit8 v7, v7, 0xa

    iget v9, p0, Lorg/eclipse/jdt/internal/core/search/matching/ConstructorPattern;->parameterCount:I

    aget-char v10, p1, v6

    add-int/lit8 v10, v10, -0x30

    mul-int/2addr v10, v7

    add-int/2addr v9, v10

    iput v9, p0, Lorg/eclipse/jdt/internal/core/search/matching/ConstructorPattern;->parameterCount:I

    :goto_5
    add-int/lit8 v6, v6, -0x1

    goto/16 :goto_0
.end method

.method public getBlankPattern()Lorg/eclipse/jdt/core/search/SearchPattern;
    .locals 2

    new-instance v0, Lorg/eclipse/jdt/internal/core/search/matching/ConstructorDeclarationPattern;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Lorg/eclipse/jdt/internal/core/search/matching/ConstructorDeclarationPattern;-><init>(I)V

    return-object v0
.end method

.method public getIndexCategories()[[C
    .locals 1

    sget-object v0, Lorg/eclipse/jdt/internal/core/search/matching/ConstructorPattern;->DECL_CATEGORIES:[[C

    return-object v0
.end method

.method public matchesDecodedKey(Lorg/eclipse/jdt/core/search/SearchPattern;)Z
    .locals 4

    check-cast p1, Lorg/eclipse/jdt/internal/core/search/matching/ConstructorDeclarationPattern;

    iget v0, p1, Lorg/eclipse/jdt/internal/core/search/matching/ConstructorDeclarationPattern;->extraFlags:I

    and-int/lit8 v0, v0, 0x2

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/search/matching/ConstructorDeclarationPattern;->declaringPackageName:[C

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    iget-object v3, p1, Lorg/eclipse/jdt/internal/core/search/matching/ConstructorDeclarationPattern;->declaringPackageName:[C

    invoke-static {v0, v3, v2}, Lorg/eclipse/jdt/core/compiler/CharOperation;->equals([C[CZ)Z

    move-result v0

    if-nez v0, :cond_1

    return v1

    :cond_1
    iget v0, p0, Lorg/eclipse/jdt/internal/core/search/matching/ConstructorPattern;->parameterCount:I

    iget v3, p1, Lorg/eclipse/jdt/internal/core/search/matching/ConstructorPattern;->parameterCount:I

    if-eq v0, v3, :cond_2

    const/4 v3, -0x1

    if-eq v0, v3, :cond_2

    iget-boolean v0, p0, Lorg/eclipse/jdt/internal/core/search/matching/ConstructorPattern;->varargs:Z

    if-eqz v0, :cond_3

    :cond_2
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/search/matching/ConstructorPattern;->declaringSimpleName:[C

    iget-object p1, p1, Lorg/eclipse/jdt/internal/core/search/matching/ConstructorPattern;->declaringSimpleName:[C

    invoke-virtual {p0, v0, p1}, Lorg/eclipse/jdt/core/search/SearchPattern;->matchesName([C[C)Z

    move-result p1

    if-eqz p1, :cond_3

    return v2

    :cond_3
    return v1
.end method
