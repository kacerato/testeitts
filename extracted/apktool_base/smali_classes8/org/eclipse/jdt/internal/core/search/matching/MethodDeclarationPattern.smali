.class public Lorg/eclipse/jdt/internal/core/search/matching/MethodDeclarationPattern;
.super Lorg/eclipse/jdt/internal/core/search/matching/MethodPattern;
.source "SourceFile"


# instance fields
.field public declaringTypeModifiers:I

.field public extraFlags:I

.field public fusedDeclaringQualifier:[C

.field public modifiers:I

.field public parameterNames:[[C

.field public parameterTypes:[[C

.field public signature:[C


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 7
    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/core/search/matching/MethodPattern;-><init>(I)V

    const/4 p1, 0x0

    .line 8
    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/search/matching/MethodDeclarationPattern;->fusedDeclaringQualifier:[C

    return-void
.end method

.method public constructor <init>([C[CI)V
    .locals 11

    .line 4
    sget-object v3, Lorg/eclipse/jdt/core/compiler/CharOperation;->NO_CHAR:[C

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p2

    move-object v2, v3

    move v10, p3

    .line 5
    invoke-direct/range {v0 .. v10}, Lorg/eclipse/jdt/internal/core/search/matching/MethodPattern;-><init>([C[C[C[C[C[[C[[CLorg/eclipse/jdt/core/IType;II)V

    .line 6
    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/search/matching/MethodDeclarationPattern;->fusedDeclaringQualifier:[C

    return-void
.end method

.method public constructor <init>([C[C[C[CI)V
    .locals 12

    move-object v11, p0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move-object/from16 v1, p4

    move-object v2, p2

    move-object v3, p3

    move/from16 v10, p5

    .line 1
    invoke-direct/range {v0 .. v10}, Lorg/eclipse/jdt/internal/core/search/matching/MethodPattern;-><init>([C[C[C[C[C[[C[[CLorg/eclipse/jdt/core/IType;II)V

    const/4 v0, 0x0

    .line 2
    iput-object v0, v11, Lorg/eclipse/jdt/internal/core/search/matching/MethodDeclarationPattern;->fusedDeclaringQualifier:[C

    move-object v0, p1

    .line 3
    iput-object v0, v11, Lorg/eclipse/jdt/internal/core/search/matching/MethodPattern;->declaringPackageName:[C

    return-void
.end method

.method public static createDeclarationIndexKey([C[C[CI[C[[C[[C[CI[CII)[C
    .locals 14

    move/from16 v0, p3

    move-object/from16 v1, p4

    move-object/from16 v2, p5

    move-object/from16 v3, p6

    move/from16 v4, p8

    const/4 v5, 0x2

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/16 v8, 0xa

    if-ge v0, v8, :cond_0

    new-array v9, v7, [C

    sget-object v10, Lorg/eclipse/jdt/internal/core/search/indexing/IIndexConstants;->COUNTS:[[C

    aget-object v10, v10, v0

    aget-char v10, v10, v7

    aput-char v10, v9, v6

    goto :goto_0

    :cond_0
    invoke-static/range {p3 .. p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->toCharArray()[C

    move-result-object v9

    :goto_0
    const/4 v10, 0x0

    if-lez v0, :cond_4

    const/16 v11, 0x2c

    if-nez v1, :cond_2

    if-eqz v2, :cond_1

    array-length v12, v2

    if-ne v12, v0, :cond_1

    invoke-static {v2, v11}, Lorg/eclipse/jdt/core/compiler/CharOperation;->concatWith([[CC)[C

    move-result-object v2

    move-object v12, v2

    move/from16 v2, p11

    goto :goto_2

    :cond_1
    move/from16 v2, p11

    :goto_1
    move-object v12, v10

    goto :goto_2

    :cond_2
    or-int/lit8 v2, p11, 0x10

    goto :goto_1

    :goto_2
    if-eqz v3, :cond_3

    array-length v13, v3

    if-ne v13, v0, :cond_3

    invoke-static {v3, v11}, Lorg/eclipse/jdt/core/compiler/CharOperation;->concatWith([[CC)[C

    move-result-object v10

    :cond_3
    move-object v3, v10

    move-object v10, v12

    goto :goto_3

    :cond_4
    move/from16 v2, p11

    move-object v3, v10

    :goto_3
    if-nez p7, :cond_5

    sget-object v11, Lorg/eclipse/jdt/core/compiler/CharOperation;->NO_CHAR:[C

    goto :goto_4

    :cond_5
    invoke-static/range {p7 .. p7}, Lorg/eclipse/jdt/internal/core/search/matching/MethodDeclarationPattern;->getTypeErasure([C)[C

    move-result-object v11

    :goto_4
    invoke-static {v2}, Lorg/eclipse/jdt/internal/core/search/matching/MethodDeclarationPattern;->encodeExtraFlags(I)I

    move-result v2

    or-int v2, p10, v2

    new-array v8, v8, [[C

    if-eqz p2, :cond_6

    move-object/from16 v12, p2

    goto :goto_5

    :cond_6
    sget-object v12, Lorg/eclipse/jdt/core/compiler/CharOperation;->NO_CHAR:[C

    :goto_5
    aput-object v12, v8, v6

    aput-object v9, v8, v7

    if-eqz p1, :cond_7

    move-object v9, p1

    goto :goto_6

    :cond_7
    sget-object v9, Lorg/eclipse/jdt/core/compiler/CharOperation;->NO_CHAR:[C

    :goto_6
    aput-object v9, v8, v5

    if-eqz p0, :cond_8

    move-object v9, p0

    goto :goto_7

    :cond_8
    sget-object v9, Lorg/eclipse/jdt/core/compiler/CharOperation;->NO_CHAR:[C

    :goto_7
    const/4 v12, 0x3

    aput-object v9, v8, v12

    int-to-char v9, v2

    shr-int/lit8 v2, v2, 0x10

    int-to-char v2, v2

    new-array v12, v5, [C

    aput-char v9, v12, v6

    aput-char v2, v12, v7

    const/4 v2, 0x4

    aput-object v12, v8, v2

    if-eqz p9, :cond_9

    move-object/from16 v2, p9

    goto :goto_8

    :cond_9
    sget-object v2, Lorg/eclipse/jdt/core/compiler/CharOperation;->NO_CHAR:[C

    :goto_8
    const/4 v9, 0x5

    aput-object v2, v8, v9

    const/16 v2, 0x2f

    const/16 v9, 0x8

    const/4 v12, 0x7

    const/4 v13, 0x6

    if-nez v0, :cond_a

    sget-object v0, Lorg/eclipse/jdt/core/compiler/CharOperation;->NO_CHAR:[C

    aput-object v0, v8, v13

    aput-object v0, v8, v12

    goto :goto_b

    :cond_a
    if-lez v0, :cond_e

    if-eqz v1, :cond_b

    const/16 v0, 0x5c

    invoke-static {v1, v2, v0}, Lorg/eclipse/jdt/core/compiler/CharOperation;->replaceOnCopy([CCC)[C

    move-result-object v10

    goto :goto_9

    :cond_b
    if-eqz v10, :cond_c

    goto :goto_9

    :cond_c
    sget-object v10, Lorg/eclipse/jdt/core/compiler/CharOperation;->NO_CHAR:[C

    :goto_9
    aput-object v10, v8, v13

    if-eqz v3, :cond_d

    goto :goto_a

    :cond_d
    sget-object v3, Lorg/eclipse/jdt/core/compiler/CharOperation;->NO_CHAR:[C

    :goto_a
    aput-object v3, v8, v12

    goto :goto_b

    :cond_e
    move v9, v13

    :goto_b
    add-int/lit8 v0, v9, 0x1

    int-to-char v1, v4

    shr-int/lit8 v3, v4, 0x10

    int-to-char v3, v3

    new-array v4, v5, [C

    aput-char v1, v4, v6

    aput-char v3, v4, v7

    aput-object v4, v8, v9

    aput-object v11, v8, v0

    invoke-static {v8, v2}, Lorg/eclipse/jdt/core/compiler/CharOperation;->concatWithAll([[CC)[C

    move-result-object v0

    return-object v0
.end method

.method private static encodeExtraFlags(I)I
    .locals 2

    and-int/lit8 v0, p0, 0x10

    if-eqz v0, :cond_0

    const/high16 v0, 0x8000000

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    and-int/lit8 v1, p0, 0x4

    if-eqz v1, :cond_1

    const/high16 v1, 0x10000000

    or-int/2addr v0, v1

    :cond_1
    and-int/lit8 v1, p0, 0x2

    if-eqz v1, :cond_2

    const/high16 v1, 0x20000000

    or-int/2addr v0, v1

    :cond_2
    and-int/lit8 p0, p0, 0x1

    if-eqz p0, :cond_3

    const/high16 p0, 0x40000000    # 2.0f

    or-int/2addr v0, p0

    :cond_3
    return v0
.end method

.method private static getTypeErasure([C)[C
    .locals 9

    const/16 v0, 0x3c

    invoke-static {v0, p0}, Lorg/eclipse/jdt/core/compiler/CharOperation;->indexOf(C[C)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    return-object p0

    :cond_0
    array-length v2, p0

    add-int/lit8 v3, v2, -0x2

    new-array v3, v3, [C

    const/4 v4, 0x0

    invoke-static {p0, v4, v3, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v5, v1, 0x1

    const/4 v6, 0x1

    :goto_0
    if-lt v5, v2, :cond_1

    new-array p0, v1, [C

    invoke-static {v3, v4, p0, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object p0

    :cond_1
    aget-char v7, p0, v5

    if-eq v7, v0, :cond_3

    const/16 v8, 0x3e

    if-eq v7, v8, :cond_2

    if-nez v6, :cond_4

    add-int/lit8 v8, v1, 0x1

    aput-char v7, v3, v1

    move v1, v8

    goto :goto_1

    :cond_2
    add-int/lit8 v6, v6, -0x1

    goto :goto_1

    :cond_3
    add-int/lit8 v6, v6, 0x1

    :cond_4
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0
.end method

.method private removeInternalFlags()V
    .locals 1

    iget v0, p0, Lorg/eclipse/jdt/internal/core/search/matching/MethodDeclarationPattern;->extraFlags:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lorg/eclipse/jdt/internal/core/search/matching/MethodDeclarationPattern;->extraFlags:I

    return-void
.end method


# virtual methods
.method public decodeIndexKey([C)V
    .locals 12

    const/16 v0, 0x2f

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Lorg/eclipse/jdt/core/compiler/CharOperation;->indexOf(C[CI)I

    move-result v2

    invoke-static {p1, v1, v2}, Lorg/eclipse/jdt/core/compiler/CharOperation;->subarray([CII)[C

    move-result-object v3

    iput-object v3, p0, Lorg/eclipse/jdt/internal/core/search/matching/MethodPattern;->selector:[C

    const/4 v3, 0x1

    add-int/2addr v2, v3

    invoke-static {v0, p1, v2}, Lorg/eclipse/jdt/core/compiler/CharOperation;->indexOf(C[CI)I

    move-result v4

    add-int/lit8 v5, v4, -0x1

    iput v1, p0, Lorg/eclipse/jdt/internal/core/search/matching/MethodPattern;->parameterCount:I

    move v7, v3

    move v6, v5

    :goto_0
    if-ge v6, v2, :cond_4

    add-int/2addr v4, v3

    invoke-static {v0, p1, v4}, Lorg/eclipse/jdt/core/compiler/CharOperation;->indexOf(C[CI)I

    move-result v2

    invoke-static {p1, v4, v2}, Lorg/eclipse/jdt/core/compiler/CharOperation;->subarray([CII)[C

    move-result-object v4

    iput-object v4, p0, Lorg/eclipse/jdt/internal/core/search/matching/MethodPattern;->declaringQualification:[C

    add-int/2addr v2, v3

    invoke-static {v0, p1, v2}, Lorg/eclipse/jdt/core/compiler/CharOperation;->indexOf(C[CI)I

    move-result v4

    invoke-static {p1, v2, v4}, Lorg/eclipse/jdt/core/compiler/CharOperation;->subarray([CII)[C

    move-result-object v2

    iput-object v2, p0, Lorg/eclipse/jdt/internal/core/search/matching/MethodPattern;->declaringSimpleName:[C

    add-int/2addr v4, v3

    invoke-static {v0, p1, v4}, Lorg/eclipse/jdt/core/compiler/CharOperation;->indexOf(C[CI)I

    move-result v2

    add-int/lit8 v4, v2, -0x1

    add-int/lit8 v5, v2, -0x2

    aget-char v6, p1, v5

    aget-char v7, p1, v4

    shl-int/lit8 v7, v7, 0x10

    add-int/2addr v6, v7

    invoke-static {v6}, Lorg/eclipse/jdt/internal/core/search/matching/ConstructorPattern;->decodeModifers(I)I

    move-result v7

    iput v7, p0, Lorg/eclipse/jdt/internal/core/search/matching/MethodDeclarationPattern;->declaringTypeModifiers:I

    invoke-static {v6}, Lorg/eclipse/jdt/internal/core/search/matching/ConstructorPattern;->decodeExtraFlags(I)I

    move-result v6

    iput v6, p0, Lorg/eclipse/jdt/internal/core/search/matching/MethodDeclarationPattern;->extraFlags:I

    const/4 v6, 0x0

    iput-object v6, p0, Lorg/eclipse/jdt/internal/core/search/matching/MethodPattern;->declaringPackageName:[C

    iput v1, p0, Lorg/eclipse/jdt/internal/core/search/matching/MethodDeclarationPattern;->modifiers:I

    iput-object v6, p0, Lorg/eclipse/jdt/internal/core/search/matching/MethodDeclarationPattern;->signature:[C

    iput-object v6, p0, Lorg/eclipse/jdt/internal/core/search/matching/MethodDeclarationPattern;->parameterTypes:[[C

    iput-object v6, p0, Lorg/eclipse/jdt/internal/core/search/matching/MethodDeclarationPattern;->parameterNames:[[C

    add-int/2addr v2, v3

    invoke-static {v0, p1, v2}, Lorg/eclipse/jdt/core/compiler/CharOperation;->indexOf(C[CI)I

    move-result v1

    invoke-static {p1, v2, v1}, Lorg/eclipse/jdt/core/compiler/CharOperation;->subarray([CII)[C

    move-result-object v2

    iput-object v2, p0, Lorg/eclipse/jdt/internal/core/search/matching/MethodPattern;->declaringPackageName:[C

    add-int/lit8 v10, v1, 0x1

    invoke-static {v0, p1, v10}, Lorg/eclipse/jdt/core/compiler/CharOperation;->indexOf(C[CI)I

    move-result v1

    iget v2, p0, Lorg/eclipse/jdt/internal/core/search/matching/MethodPattern;->parameterCount:I

    if-nez v2, :cond_0

    add-int/lit8 v1, v1, 0x1

    invoke-static {v0, p1, v1}, Lorg/eclipse/jdt/core/compiler/CharOperation;->indexOf(C[CI)I

    move-result v1

    add-int/2addr v1, v3

    invoke-static {v0, p1, v1}, Lorg/eclipse/jdt/core/compiler/CharOperation;->indexOf(C[CI)I

    move-result v1

    aget-char v2, p1, v5

    aget-char v4, p1, v4

    shl-int/lit8 v4, v4, 0x10

    add-int/2addr v2, v4

    iput v2, p0, Lorg/eclipse/jdt/internal/core/search/matching/MethodDeclarationPattern;->modifiers:I

    goto :goto_2

    :cond_0
    if-lez v2, :cond_3

    iget v2, p0, Lorg/eclipse/jdt/internal/core/search/matching/MethodDeclarationPattern;->extraFlags:I

    and-int/lit8 v2, v2, 0x10

    if-eqz v2, :cond_1

    invoke-static {p1, v10, v1}, Lorg/eclipse/jdt/core/compiler/CharOperation;->subarray([CII)[C

    move-result-object v2

    iput-object v2, p0, Lorg/eclipse/jdt/internal/core/search/matching/MethodDeclarationPattern;->signature:[C

    const/16 v4, 0x5c

    invoke-static {v2, v4, v0}, Lorg/eclipse/jdt/core/compiler/CharOperation;->replace([CCC)V

    goto :goto_1

    :cond_1
    const/16 v7, 0x3c

    const/16 v8, 0x3e

    const/16 v6, 0x2c

    move-object v9, p1

    move v11, v1

    invoke-static/range {v6 .. v11}, Lorg/eclipse/jdt/core/compiler/CharOperation;->splitOnWithEnclosures(CCC[CII)[[C

    move-result-object v2

    iput-object v2, p0, Lorg/eclipse/jdt/internal/core/search/matching/MethodDeclarationPattern;->parameterTypes:[[C

    :goto_1
    add-int/lit8 v1, v1, 0x1

    invoke-static {v0, p1, v1}, Lorg/eclipse/jdt/core/compiler/CharOperation;->indexOf(C[CI)I

    move-result v2

    if-eq v2, v1, :cond_2

    const/16 v4, 0x2c

    invoke-static {v4, p1, v1, v2}, Lorg/eclipse/jdt/core/compiler/CharOperation;->splitOn(C[CII)[[C

    move-result-object v1

    iput-object v1, p0, Lorg/eclipse/jdt/internal/core/search/matching/MethodDeclarationPattern;->parameterNames:[[C

    :cond_2
    add-int/2addr v2, v3

    invoke-static {v0, p1, v2}, Lorg/eclipse/jdt/core/compiler/CharOperation;->indexOf(C[CI)I

    move-result v1

    add-int/lit8 v2, v1, -0x1

    add-int/lit8 v4, v1, -0x2

    aget-char v4, p1, v4

    aget-char v2, p1, v2

    shl-int/lit8 v2, v2, 0x10

    add-int/2addr v4, v2

    iput v4, p0, Lorg/eclipse/jdt/internal/core/search/matching/MethodDeclarationPattern;->modifiers:I

    goto :goto_2

    :cond_3
    iput v3, p0, Lorg/eclipse/jdt/internal/core/search/matching/MethodDeclarationPattern;->modifiers:I

    :goto_2
    add-int/2addr v1, v3

    invoke-static {v0, p1, v1}, Lorg/eclipse/jdt/core/compiler/CharOperation;->indexOf(C[CI)I

    move-result v0

    invoke-static {p1, v1, v0}, Lorg/eclipse/jdt/core/compiler/CharOperation;->subarray([CII)[C

    move-result-object p1

    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/search/matching/MethodPattern;->returnSimpleName:[C

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/core/search/matching/MethodDeclarationPattern;->removeInternalFlags()V

    return-void

    :cond_4
    if-ne v6, v5, :cond_5

    aget-char v8, p1, v6

    add-int/lit8 v8, v8, -0x30

    iput v8, p0, Lorg/eclipse/jdt/internal/core/search/matching/MethodPattern;->parameterCount:I

    goto :goto_3

    :cond_5
    mul-int/lit8 v7, v7, 0xa

    iget v8, p0, Lorg/eclipse/jdt/internal/core/search/matching/MethodPattern;->parameterCount:I

    aget-char v9, p1, v6

    add-int/lit8 v9, v9, -0x30

    mul-int/2addr v9, v7

    add-int/2addr v8, v9

    iput v8, p0, Lorg/eclipse/jdt/internal/core/search/matching/MethodPattern;->parameterCount:I

    :goto_3
    add-int/lit8 v6, v6, -0x1

    goto/16 :goto_0
.end method

.method public getBlankPattern()Lorg/eclipse/jdt/core/search/SearchPattern;
    .locals 2

    new-instance v0, Lorg/eclipse/jdt/internal/core/search/matching/MethodDeclarationPattern;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Lorg/eclipse/jdt/internal/core/search/matching/MethodDeclarationPattern;-><init>(I)V

    return-object v0
.end method

.method public getIndexCategories()[[C
    .locals 1

    sget-object v0, Lorg/eclipse/jdt/internal/core/search/indexing/IIndexConstants;->METHOD_DECL_PLUS:[C

    filled-new-array {v0}, [[C

    move-result-object v0

    return-object v0
.end method
