.class public Lorg/eclipse/jdt/internal/core/search/matching/TypeDeclarationPattern;
.super Lorg/eclipse/jdt/internal/core/search/matching/JavaSearchPattern;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/eclipse/jdt/internal/core/search/matching/TypeDeclarationPattern$PackageNameSet;
    }
.end annotation


# static fields
.field protected static CATEGORIES:[[C

.field static internedPackageNames:Lorg/eclipse/jdt/internal/core/search/matching/TypeDeclarationPattern$PackageNameSet;


# instance fields
.field private allowModuleRegex:Z

.field public enclosingTypeNames:[[C

.field public modifiers:I

.field public moduleGraph:Z

.field moduleGraphElements:[[C

.field public moduleNames:[[C

.field modulePatterns:[Ljava/util/regex/Pattern;

.field public pkg:[C

.field public secondary:Z

.field public simpleName:[C

.field public typeSuffix:C


# direct methods
.method static constructor <clinit>()V
    .locals 2

    sget-object v0, Lorg/eclipse/jdt/internal/core/search/indexing/IIndexConstants;->TYPE_DECL:[C

    filled-new-array {v0}, [[C

    move-result-object v0

    sput-object v0, Lorg/eclipse/jdt/internal/core/search/matching/TypeDeclarationPattern;->CATEGORIES:[[C

    new-instance v0, Lorg/eclipse/jdt/internal/core/search/matching/TypeDeclarationPattern$PackageNameSet;

    const/16 v1, 0x3e9

    invoke-direct {v0, v1}, Lorg/eclipse/jdt/internal/core/search/matching/TypeDeclarationPattern$PackageNameSet;-><init>(I)V

    sput-object v0, Lorg/eclipse/jdt/internal/core/search/matching/TypeDeclarationPattern;->internedPackageNames:Lorg/eclipse/jdt/internal/core/search/matching/TypeDeclarationPattern$PackageNameSet;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    const/16 v0, 0x8

    .line 13
    invoke-direct {p0, v0, p1}, Lorg/eclipse/jdt/internal/core/search/matching/JavaSearchPattern;-><init>(II)V

    const/4 p1, 0x0

    .line 14
    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/search/matching/TypeDeclarationPattern;->moduleNames:[[C

    const/4 v0, 0x0

    .line 15
    iput-boolean v0, p0, Lorg/eclipse/jdt/internal/core/search/matching/TypeDeclarationPattern;->allowModuleRegex:Z

    .line 16
    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/search/matching/TypeDeclarationPattern;->modulePatterns:[Ljava/util/regex/Pattern;

    .line 17
    iput-boolean v0, p0, Lorg/eclipse/jdt/internal/core/search/matching/TypeDeclarationPattern;->moduleGraph:Z

    .line 18
    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/search/matching/TypeDeclarationPattern;->moduleGraphElements:[[C

    .line 19
    iput-boolean v0, p0, Lorg/eclipse/jdt/internal/core/search/matching/TypeDeclarationPattern;->secondary:Z

    return-void
.end method

.method public constructor <init>([C[C[[C[CCI)V
    .locals 2

    .line 1
    invoke-direct {p0, p6}, Lorg/eclipse/jdt/internal/core/search/matching/TypeDeclarationPattern;-><init>(I)V

    .line 2
    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/internal/core/search/matching/TypeDeclarationPattern;->addModuleNames([C)V

    .line 3
    iget-boolean p1, p0, Lorg/eclipse/jdt/internal/core/search/matching/JavaSearchPattern;->isCaseSensitive:Z

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p2}, Lorg/eclipse/jdt/core/compiler/CharOperation;->toLowerCase([C)[C

    move-result-object p2

    :goto_0
    iput-object p2, p0, Lorg/eclipse/jdt/internal/core/search/matching/TypeDeclarationPattern;->pkg:[C

    .line 4
    iget-boolean p1, p0, Lorg/eclipse/jdt/internal/core/search/matching/JavaSearchPattern;->isCaseSensitive:Z

    const/4 p2, 0x0

    if-nez p1, :cond_3

    if-nez p3, :cond_1

    goto :goto_2

    .line 5
    :cond_1
    array-length p1, p3

    .line 6
    new-array p6, p1, [[C

    iput-object p6, p0, Lorg/eclipse/jdt/internal/core/search/matching/TypeDeclarationPattern;->enclosingTypeNames:[[C

    move p6, p2

    :goto_1
    if-lt p6, p1, :cond_2

    goto :goto_3

    .line 7
    :cond_2
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/search/matching/TypeDeclarationPattern;->enclosingTypeNames:[[C

    aget-object v1, p3, p6

    invoke-static {v1}, Lorg/eclipse/jdt/core/compiler/CharOperation;->toLowerCase([C)[C

    move-result-object v1

    aput-object v1, v0, p6

    add-int/lit8 p6, p6, 0x1

    goto :goto_1

    .line 8
    :cond_3
    :goto_2
    iput-object p3, p0, Lorg/eclipse/jdt/internal/core/search/matching/TypeDeclarationPattern;->enclosingTypeNames:[[C

    .line 9
    :goto_3
    iget-boolean p1, p0, Lorg/eclipse/jdt/internal/core/search/matching/JavaSearchPattern;->isCaseSensitive:Z

    if-nez p1, :cond_5

    iget-boolean p1, p0, Lorg/eclipse/jdt/internal/core/search/matching/JavaSearchPattern;->isCamelCase:Z

    if-eqz p1, :cond_4

    goto :goto_4

    :cond_4
    invoke-static {p4}, Lorg/eclipse/jdt/core/compiler/CharOperation;->toLowerCase([C)[C

    move-result-object p4

    :cond_5
    :goto_4
    iput-object p4, p0, Lorg/eclipse/jdt/internal/core/search/matching/TypeDeclarationPattern;->simpleName:[C

    .line 10
    iput-char p5, p0, Lorg/eclipse/jdt/internal/core/search/matching/TypeDeclarationPattern;->typeSuffix:C

    .line 11
    iget-object p1, p0, Lorg/eclipse/jdt/internal/core/search/matching/TypeDeclarationPattern;->pkg:[C

    if-eqz p1, :cond_6

    iget-object p1, p0, Lorg/eclipse/jdt/internal/core/search/matching/TypeDeclarationPattern;->enclosingTypeNames:[[C

    if-nez p1, :cond_7

    :cond_6
    if-nez p5, :cond_7

    goto :goto_5

    :cond_7
    const/4 p2, 0x1

    :goto_5
    iput-boolean p2, p0, Lorg/eclipse/jdt/core/search/SearchPattern;->mustResolve:Z

    return-void
.end method

.method public constructor <init>([C[[C[CCI)V
    .locals 7

    const/4 v1, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    move v6, p5

    .line 12
    invoke-direct/range {v0 .. v6}, Lorg/eclipse/jdt/internal/core/search/matching/TypeDeclarationPattern;-><init>([C[C[[C[CCI)V

    return-void
.end method

.method public static createIndexKey(I[C[C[[CZ)[C
    .locals 7

    const/4 v0, 0x0

    if-nez p1, :cond_0

    move v1, v0

    goto :goto_0

    :cond_0
    array-length v1, p1

    :goto_0
    if-nez p2, :cond_1

    move v2, v0

    goto :goto_1

    :cond_1
    array-length v2, p2

    :goto_1
    if-eqz p3, :cond_4

    array-length v3, p3

    move v4, v0

    move v5, v4

    :cond_2
    :goto_2
    if-lt v4, v3, :cond_3

    goto :goto_3

    :cond_3
    aget-object v6, p3, v4

    array-length v6, v6

    add-int/2addr v5, v6

    add-int/lit8 v4, v4, 0x1

    if-ge v4, v3, :cond_2

    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_4
    move v5, v0

    :goto_3
    add-int v3, v1, v2

    add-int/2addr v3, v5

    add-int/lit8 v4, v3, 0x5

    if-eqz p4, :cond_5

    add-int/lit8 v4, v3, 0x7

    :cond_5
    new-array v3, v4, [C

    if-lez v1, :cond_6

    invoke-static {p1, v0, v3, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_4

    :cond_6
    move v1, v0

    :goto_4
    add-int/lit8 p1, v1, 0x1

    const/16 v4, 0x2f

    aput-char v4, v3, v1

    if-lez v2, :cond_7

    invoke-static {p2, v0, v3, p1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr p1, v2

    :cond_7
    add-int/lit8 p2, p1, 0x1

    aput-char v4, v3, p1

    if-eqz p3, :cond_a

    if-lez v5, :cond_a

    array-length p1, p3

    move v1, v0

    :cond_8
    :goto_5
    if-lt v1, p1, :cond_9

    goto :goto_6

    :cond_9
    aget-object v2, p3, v1

    array-length v5, v2

    invoke-static {v2, v0, v3, p2, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr p2, v5

    add-int/lit8 v1, v1, 0x1

    if-ge v1, p1, :cond_8

    add-int/lit8 v2, p2, 0x1

    const/16 v5, 0x2e

    aput-char v5, v3, p2

    move p2, v2

    goto :goto_5

    :cond_a
    :goto_6
    add-int/lit8 p1, p2, 0x1

    aput-char v4, v3, p2

    add-int/lit8 p3, p2, 0x2

    int-to-char v0, p0

    aput-char v0, v3, p1

    shr-int/lit8 p0, p0, 0x10

    int-to-char p0, p0

    aput-char p0, v3, p3

    if-eqz p4, :cond_b

    add-int/lit8 p0, p2, 0x3

    aput-char v4, v3, p0

    add-int/lit8 p2, p2, 0x4

    const/16 p0, 0x53

    aput-char p0, v3, p2

    :cond_b
    return-object v3
.end method


# virtual methods
.method public addModuleNames([C)V
    .locals 5

    if-nez p1, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/String;

    sget-object v1, Lorg/eclipse/jdt/core/search/IJavaSearchConstants;->ALL_UNNAMED:[C

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([C)V

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p1}, Ljava/lang/String;-><init>([C)V

    sget-object p1, Lorg/eclipse/jdt/core/compiler/CharOperation;->COMMA_SEPARATOR:[C

    invoke-static {p1}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    array-length v1, p1

    iget-boolean v2, p0, Lorg/eclipse/jdt/internal/core/search/matching/TypeDeclarationPattern;->allowModuleRegex:Z

    const/4 v3, 0x0

    if-eqz v2, :cond_2

    if-lez v1, :cond_2

    aget-object v2, p1, v3

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_2

    aget-object v2, p1, v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v4, 0x30

    if-ne v2, v4, :cond_2

    aget-object v0, p1, v3

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, p1, v3

    new-array v0, v1, [Ljava/util/regex/Pattern;

    iput-object v0, p0, Lorg/eclipse/jdt/internal/core/search/matching/TypeDeclarationPattern;->modulePatterns:[Ljava/util/regex/Pattern;

    move v0, v3

    :goto_0
    if-lt v0, v1, :cond_1

    goto :goto_2

    :cond_1
    iget-object v2, p0, Lorg/eclipse/jdt/internal/core/search/matching/TypeDeclarationPattern;->modulePatterns:[Ljava/util/regex/Pattern;

    aget-object v4, p1, v0

    invoke-static {v4}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v4

    aput-object v4, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    move v2, v3

    :goto_1
    if-lt v2, v1, :cond_5

    :goto_2
    new-array v0, v1, [[C

    iput-object v0, p0, Lorg/eclipse/jdt/internal/core/search/matching/TypeDeclarationPattern;->moduleNames:[[C

    :goto_3
    if-lt v3, v1, :cond_3

    return-void

    :cond_3
    aget-object v0, p1, v3

    iget-object v2, p0, Lorg/eclipse/jdt/internal/core/search/matching/TypeDeclarationPattern;->moduleNames:[[C

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    goto :goto_4

    :cond_4
    sget-object v0, Lorg/eclipse/jdt/core/compiler/CharOperation;->NO_CHAR:[C

    :goto_4
    aput-object v0, v2, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_5
    aget-object v4, p1, v2

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    aput-object v4, p1, v2

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    const-string v4, ""

    aput-object v4, p1, v2

    :cond_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method public decodeIndexKey([C)V
    .locals 7

    const/16 v0, 0x2f

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Lorg/eclipse/jdt/core/compiler/CharOperation;->indexOf(C[CI)I

    move-result v2

    invoke-static {p1, v1, v2}, Lorg/eclipse/jdt/core/compiler/CharOperation;->subarray([CII)[C

    move-result-object v3

    iput-object v3, p0, Lorg/eclipse/jdt/internal/core/search/matching/TypeDeclarationPattern;->simpleName:[C

    const/4 v3, 0x1

    add-int/2addr v2, v3

    aget-char v4, p1, v2

    if-ne v4, v0, :cond_0

    sget-object v0, Lorg/eclipse/jdt/core/compiler/CharOperation;->NO_CHAR:[C

    iput-object v0, p0, Lorg/eclipse/jdt/internal/core/search/matching/TypeDeclarationPattern;->pkg:[C

    goto :goto_0

    :cond_0
    invoke-static {v0, p1, v2}, Lorg/eclipse/jdt/core/compiler/CharOperation;->indexOf(C[CI)I

    move-result v0

    sget-object v4, Lorg/eclipse/jdt/internal/core/search/matching/TypeDeclarationPattern;->internedPackageNames:Lorg/eclipse/jdt/internal/core/search/matching/TypeDeclarationPattern$PackageNameSet;

    invoke-static {p1, v2, v0}, Lorg/eclipse/jdt/core/compiler/CharOperation;->subarray([CII)[C

    move-result-object v2

    invoke-virtual {v4, v2}, Lorg/eclipse/jdt/internal/core/search/matching/TypeDeclarationPattern$PackageNameSet;->add([C)[C

    move-result-object v2

    iput-object v2, p0, Lorg/eclipse/jdt/internal/core/search/matching/TypeDeclarationPattern;->pkg:[C

    move v2, v0

    :goto_0
    array-length v0, p1

    add-int/lit8 v4, v0, -0x1

    aget-char v5, p1, v4

    const/16 v6, 0x53

    if-ne v5, v6, :cond_1

    move v1, v3

    :cond_1
    iput-boolean v1, p0, Lorg/eclipse/jdt/internal/core/search/matching/TypeDeclarationPattern;->secondary:Z

    if-eqz v1, :cond_2

    add-int/lit8 v4, v0, -0x3

    :cond_2
    add-int/lit8 v0, v4, -0x1

    aget-char v0, p1, v0

    aget-char v1, p1, v4

    shl-int/lit8 v1, v1, 0x10

    add-int/2addr v0, v1

    iput v0, p0, Lorg/eclipse/jdt/internal/core/search/matching/TypeDeclarationPattern;->modifiers:I

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/search/matching/TypeDeclarationPattern;->decodeModifiers()V

    add-int/lit8 v0, v2, 0x1

    add-int/lit8 v4, v4, -0x2

    if-ne v0, v4, :cond_3

    sget-object p1, Lorg/eclipse/jdt/core/compiler/CharOperation;->NO_CHAR_CHAR:[[C

    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/search/matching/TypeDeclarationPattern;->enclosingTypeNames:[[C

    goto :goto_1

    :cond_3
    add-int/lit8 v2, v2, 0x2

    if-ne v4, v2, :cond_4

    aget-char v1, p1, v0

    const/16 v2, 0x30

    if-ne v1, v2, :cond_4

    sget-object p1, Lorg/eclipse/jdt/internal/core/search/indexing/IIndexConstants;->ONE_ZERO_CHAR:[[C

    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/search/matching/TypeDeclarationPattern;->enclosingTypeNames:[[C

    goto :goto_1

    :cond_4
    const/16 v1, 0x2e

    invoke-static {v1, p1, v0, v4}, Lorg/eclipse/jdt/core/compiler/CharOperation;->splitOn(C[CII)[[C

    move-result-object p1

    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/search/matching/TypeDeclarationPattern;->enclosingTypeNames:[[C

    :goto_1
    return-void
.end method

.method public decodeModifiers()V
    .locals 2

    iget v0, p0, Lorg/eclipse/jdt/internal/core/search/matching/TypeDeclarationPattern;->modifiers:I

    and-int/lit16 v0, v0, 0x6200

    const/16 v1, 0x200

    if-eq v0, v1, :cond_2

    const/16 v1, 0x2000

    if-eq v0, v1, :cond_1

    const/16 v1, 0x2200

    if-eq v0, v1, :cond_1

    const/16 v1, 0x4000

    if-eq v0, v1, :cond_0

    const/16 v0, 0x43

    iput-char v0, p0, Lorg/eclipse/jdt/internal/core/search/matching/TypeDeclarationPattern;->typeSuffix:C

    goto :goto_0

    :cond_0
    const/16 v0, 0x45

    iput-char v0, p0, Lorg/eclipse/jdt/internal/core/search/matching/TypeDeclarationPattern;->typeSuffix:C

    goto :goto_0

    :cond_1
    const/16 v0, 0x41

    iput-char v0, p0, Lorg/eclipse/jdt/internal/core/search/matching/TypeDeclarationPattern;->typeSuffix:C

    goto :goto_0

    :cond_2
    const/16 v0, 0x49

    iput-char v0, p0, Lorg/eclipse/jdt/internal/core/search/matching/TypeDeclarationPattern;->typeSuffix:C

    :goto_0
    return-void
.end method

.method public getBlankPattern()Lorg/eclipse/jdt/core/search/SearchPattern;
    .locals 2

    new-instance v0, Lorg/eclipse/jdt/internal/core/search/matching/TypeDeclarationPattern;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Lorg/eclipse/jdt/internal/core/search/matching/TypeDeclarationPattern;-><init>(I)V

    return-object v0
.end method

.method public getIndexCategories()[[C
    .locals 1

    sget-object v0, Lorg/eclipse/jdt/internal/core/search/matching/TypeDeclarationPattern;->CATEGORIES:[[C

    return-object v0
.end method

.method public matchesDecodedKey(Lorg/eclipse/jdt/core/search/SearchPattern;)Z
    .locals 5

    check-cast p1, Lorg/eclipse/jdt/internal/core/search/matching/TypeDeclarationPattern;

    iget-char v0, p0, Lorg/eclipse/jdt/internal/core/search/matching/TypeDeclarationPattern;->typeSuffix:C

    iget-char v1, p1, Lorg/eclipse/jdt/internal/core/search/matching/TypeDeclarationPattern;->typeSuffix:C

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0, v1}, Lorg/eclipse/jdt/internal/core/search/matching/JavaSearchPattern;->matchDifferentTypeSuffixes(II)Z

    move-result v0

    if-nez v0, :cond_0

    return v2

    :cond_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/search/matching/TypeDeclarationPattern;->simpleName:[C

    iget-object v1, p1, Lorg/eclipse/jdt/internal/core/search/matching/TypeDeclarationPattern;->simpleName:[C

    invoke-virtual {p0, v0, v1}, Lorg/eclipse/jdt/core/search/SearchPattern;->matchesName([C[C)Z

    move-result v0

    if-nez v0, :cond_1

    return v2

    :cond_1
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/search/matching/TypeDeclarationPattern;->pkg:[C

    if-eqz v0, :cond_2

    iget-object v1, p1, Lorg/eclipse/jdt/internal/core/search/matching/TypeDeclarationPattern;->pkg:[C

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/search/matching/JavaSearchPattern;->isCaseSensitive()Z

    move-result v3

    invoke-static {v0, v1, v3}, Lorg/eclipse/jdt/core/compiler/CharOperation;->equals([C[CZ)Z

    move-result v0

    if-nez v0, :cond_2

    return v2

    :cond_2
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/search/matching/TypeDeclarationPattern;->enclosingTypeNames:[[C

    const/4 v1, 0x1

    if-eqz v0, :cond_7

    array-length v3, v0

    if-nez v3, :cond_4

    iget-object p1, p1, Lorg/eclipse/jdt/internal/core/search/matching/TypeDeclarationPattern;->enclosingTypeNames:[[C

    array-length p1, p1

    if-nez p1, :cond_3

    return v1

    :cond_3
    return v2

    :cond_4
    array-length v3, v0

    if-ne v3, v1, :cond_5

    iget-object v3, p1, Lorg/eclipse/jdt/internal/core/search/matching/TypeDeclarationPattern;->enclosingTypeNames:[[C

    array-length v4, v3

    if-ne v4, v1, :cond_5

    aget-object p1, v0, v2

    aget-object v0, v3, v2

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/search/matching/JavaSearchPattern;->isCaseSensitive()Z

    move-result v1

    invoke-static {p1, v0, v1}, Lorg/eclipse/jdt/core/compiler/CharOperation;->equals([C[CZ)Z

    move-result p1

    return p1

    :cond_5
    iget-object p1, p1, Lorg/eclipse/jdt/internal/core/search/matching/TypeDeclarationPattern;->enclosingTypeNames:[[C

    sget-object v2, Lorg/eclipse/jdt/internal/core/search/indexing/IIndexConstants;->ONE_ZERO_CHAR:[[C

    if-ne p1, v2, :cond_6

    return v1

    :cond_6
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/search/matching/JavaSearchPattern;->isCaseSensitive()Z

    move-result v1

    invoke-static {v0, p1, v1}, Lorg/eclipse/jdt/core/compiler/CharOperation;->equals([[C[[CZ)Z

    move-result p1

    return p1

    :cond_7
    return v1
.end method

.method public print(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;
    .locals 4

    iget-char v0, p0, Lorg/eclipse/jdt/internal/core/search/matching/TypeDeclarationPattern;->typeSuffix:C

    const/16 v1, 0x41

    if-eq v0, v1, :cond_3

    const/16 v1, 0x43

    if-eq v0, v1, :cond_2

    const/16 v1, 0x45

    if-eq v0, v1, :cond_1

    const/16 v1, 0x49

    if-eq v0, v1, :cond_0

    packed-switch v0, :pswitch_data_0

    const-string v0, "TypeDeclarationPattern: pkg<"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    :pswitch_0
    const-string v0, "InterfaceAndAnnotationDeclarationPattern: pkg<"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    :pswitch_1
    const-string v0, "ClassAndInterfaceDeclarationPattern: pkg<"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    :pswitch_2
    const-string v0, "ClassAndEnumDeclarationPattern: pkg<"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    :cond_0
    const-string v0, "InterfaceDeclarationPattern: pkg<"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    :cond_1
    const-string v0, "EnumDeclarationPattern: pkg<"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    :cond_2
    const-string v0, "ClassDeclarationPattern: pkg<"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    :cond_3
    const-string v0, "AnnotationTypeDeclarationPattern: pkg<"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :goto_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/search/matching/TypeDeclarationPattern;->pkg:[C

    const-string v1, "*"

    if-eqz v0, :cond_4

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    goto :goto_1

    :cond_4
    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :goto_1
    const-string v0, ">, enclosing<"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/search/matching/TypeDeclarationPattern;->enclosingTypeNames:[[C

    if-eqz v0, :cond_7

    const/4 v0, 0x0

    :goto_2
    iget-object v2, p0, Lorg/eclipse/jdt/internal/core/search/matching/TypeDeclarationPattern;->enclosingTypeNames:[[C

    array-length v3, v2

    if-lt v0, v3, :cond_5

    goto :goto_3

    :cond_5
    aget-object v2, v2, v0

    invoke-virtual {p1, v2}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    iget-object v2, p0, Lorg/eclipse/jdt/internal/core/search/matching/TypeDeclarationPattern;->enclosingTypeNames:[[C

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    if-ge v0, v2, :cond_6

    const/16 v2, 0x2e

    invoke-virtual {p1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_7
    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :goto_3
    const-string v0, ">, type<"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/search/matching/TypeDeclarationPattern;->simpleName:[C

    if-eqz v0, :cond_8

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    goto :goto_4

    :cond_8
    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :goto_4
    const-string v0, ">"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-super {p0, p1}, Lorg/eclipse/jdt/internal/core/search/matching/JavaSearchPattern;->print(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    move-result-object p1

    return-object p1

    :pswitch_data_0
    .packed-switch 0x9
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public queryIn(Lorg/eclipse/jdt/internal/core/index/Index;)[Lorg/eclipse/jdt/internal/core/index/EntryResult;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/search/matching/TypeDeclarationPattern;->simpleName:[C

    invoke-virtual {p0}, Lorg/eclipse/jdt/core/search/SearchPattern;->getMatchRule()I

    move-result v1

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/search/matching/JavaSearchPattern;->getMatchMode()I

    move-result v2

    const/16 v3, 0x2f

    if-eqz v2, :cond_0

    const/4 v4, 0x2

    if-eq v2, v4, :cond_3

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lorg/eclipse/jdt/internal/core/search/matching/TypeDeclarationPattern;->simpleName:[C

    if-eqz v2, :cond_2

    or-int/lit8 v1, v1, 0x1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/search/matching/TypeDeclarationPattern;->pkg:[C

    if-nez v0, :cond_1

    invoke-static {v2, v3}, Lorg/eclipse/jdt/core/compiler/CharOperation;->append([CC)[C

    move-result-object v0

    goto :goto_0

    :cond_1
    sget-object v4, Lorg/eclipse/jdt/core/compiler/CharOperation;->NO_CHAR:[C

    invoke-static {v2, v3, v0, v3, v4}, Lorg/eclipse/jdt/core/compiler/CharOperation;->concat([CC[CC[C)[C

    move-result-object v0

    goto :goto_0

    :cond_2
    or-int/lit8 v1, v1, 0x2

    :cond_3
    iget-object v2, p0, Lorg/eclipse/jdt/internal/core/search/matching/TypeDeclarationPattern;->pkg:[C

    if-nez v2, :cond_5

    iget-object v2, p0, Lorg/eclipse/jdt/internal/core/search/matching/TypeDeclarationPattern;->simpleName:[C

    if-nez v2, :cond_4

    goto :goto_0

    :cond_4
    array-length v4, v2

    add-int/lit8 v4, v4, -0x1

    aget-char v4, v2, v4

    const/16 v5, 0x2a

    if-eq v4, v5, :cond_7

    sget-object v0, Lorg/eclipse/jdt/internal/core/search/indexing/IIndexConstants;->ONE_STAR:[C

    invoke-static {v2, v0, v3}, Lorg/eclipse/jdt/core/compiler/CharOperation;->concat([C[CC)[C

    move-result-object v0

    goto :goto_0

    :cond_5
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/search/matching/TypeDeclarationPattern;->simpleName:[C

    if-nez v0, :cond_6

    sget-object v0, Lorg/eclipse/jdt/internal/core/search/indexing/IIndexConstants;->ONE_STAR:[C

    :cond_6
    sget-object v4, Lorg/eclipse/jdt/internal/core/search/indexing/IIndexConstants;->ONE_STAR:[C

    invoke-static {v0, v3, v2, v3, v4}, Lorg/eclipse/jdt/core/compiler/CharOperation;->concat([CC[CC[C)[C

    move-result-object v0

    :cond_7
    :goto_0
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/search/matching/TypeDeclarationPattern;->getIndexCategories()[[C

    move-result-object v2

    invoke-virtual {p1, v2, v0, v1}, Lorg/eclipse/jdt/internal/core/index/Index;->query([[C[CI)[Lorg/eclipse/jdt/internal/core/index/EntryResult;

    move-result-object p1

    return-object p1
.end method
