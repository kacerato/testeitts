.class public Lorg/eclipse/jdt/internal/core/search/matching/PackageReferencePattern;
.super Lorg/eclipse/jdt/internal/core/search/matching/IntersectingPattern;
.source "SourceFile"


# static fields
.field protected static CATEGORIES:[[C


# instance fields
.field protected currentSegment:I

.field protected pkgName:[C

.field protected segments:[[C


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lorg/eclipse/jdt/internal/core/search/indexing/IIndexConstants;->REF:[C

    filled-new-array {v0}, [[C

    move-result-object v0

    sput-object v0, Lorg/eclipse/jdt/internal/core/search/matching/PackageReferencePattern;->CATEGORIES:[[C

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    const/4 v0, 0x1

    .line 9
    invoke-direct {p0, v0, p1}, Lorg/eclipse/jdt/internal/core/search/matching/IntersectingPattern;-><init>(II)V

    return-void
.end method

.method public constructor <init>([CI)V
    .locals 0

    .line 1
    invoke-direct {p0, p2}, Lorg/eclipse/jdt/internal/core/search/matching/PackageReferencePattern;-><init>(I)V

    if-eqz p1, :cond_3

    .line 2
    array-length p2, p1

    if-nez p2, :cond_0

    goto :goto_1

    .line 3
    :cond_0
    iget-boolean p2, p0, Lorg/eclipse/jdt/internal/core/search/matching/JavaSearchPattern;->isCaseSensitive:Z

    if-nez p2, :cond_2

    iget-boolean p2, p0, Lorg/eclipse/jdt/internal/core/search/matching/JavaSearchPattern;->isCamelCase:Z

    if-eqz p2, :cond_1

    goto :goto_0

    :cond_1
    invoke-static {p1}, Lorg/eclipse/jdt/core/compiler/CharOperation;->toLowerCase([C)[C

    move-result-object p1

    :cond_2
    :goto_0
    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/search/matching/PackageReferencePattern;->pkgName:[C

    const/16 p2, 0x2e

    .line 4
    invoke-static {p2, p1}, Lorg/eclipse/jdt/core/compiler/CharOperation;->splitOn(C[C)[[C

    move-result-object p1

    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/search/matching/PackageReferencePattern;->segments:[[C

    const/4 p1, 0x1

    .line 5
    iput-boolean p1, p0, Lorg/eclipse/jdt/core/search/SearchPattern;->mustResolve:Z

    goto :goto_2

    :cond_3
    :goto_1
    const/4 p1, 0x0

    .line 6
    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/search/matching/PackageReferencePattern;->pkgName:[C

    .line 7
    sget-object p1, Lorg/eclipse/jdt/core/compiler/CharOperation;->NO_CHAR:[C

    filled-new-array {p1}, [[C

    move-result-object p1

    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/search/matching/PackageReferencePattern;->segments:[[C

    const/4 p1, 0x0

    .line 8
    iput-boolean p1, p0, Lorg/eclipse/jdt/core/search/SearchPattern;->mustResolve:Z

    :goto_2
    return-void
.end method


# virtual methods
.method public decodeIndexKey([C)V
    .locals 0

    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/search/matching/PackageReferencePattern;->pkgName:[C

    return-void
.end method

.method public getBlankPattern()Lorg/eclipse/jdt/core/search/SearchPattern;
    .locals 2

    new-instance v0, Lorg/eclipse/jdt/internal/core/search/matching/PackageReferencePattern;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Lorg/eclipse/jdt/internal/core/search/matching/PackageReferencePattern;-><init>(I)V

    return-object v0
.end method

.method public getIndexCategories()[[C
    .locals 1

    sget-object v0, Lorg/eclipse/jdt/internal/core/search/matching/PackageReferencePattern;->CATEGORIES:[[C

    return-object v0
.end method

.method public getIndexKey()[C
    .locals 2

    iget v0, p0, Lorg/eclipse/jdt/internal/core/search/matching/PackageReferencePattern;->currentSegment:I

    if-ltz v0, :cond_0

    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/search/matching/PackageReferencePattern;->segments:[[C

    aget-object v0, v1, v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public hasNextQuery()Z
    .locals 5

    iget v0, p0, Lorg/eclipse/jdt/internal/core/search/matching/PackageReferencePattern;->currentSegment:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    iput v0, p0, Lorg/eclipse/jdt/internal/core/search/matching/PackageReferencePattern;->currentSegment:I

    iget-object v2, p0, Lorg/eclipse/jdt/internal/core/search/matching/PackageReferencePattern;->segments:[[C

    array-length v2, v2

    const/4 v3, 0x4

    const/4 v4, 0x0

    if-lt v2, v3, :cond_0

    const/4 v2, 0x2

    goto :goto_0

    :cond_0
    move v2, v4

    :goto_0
    if-lt v0, v2, :cond_1

    return v1

    :cond_1
    return v4
.end method

.method public matchesDecodedKey(Lorg/eclipse/jdt/core/search/SearchPattern;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public print(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;
    .locals 1

    const-string v0, "PackageReferencePattern: <"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/search/matching/PackageReferencePattern;->pkgName:[C

    if-eqz v0, :cond_0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    goto :goto_0

    :cond_0
    const-string v0, "*"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :goto_0
    const-string v0, ">"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-super {p0, p1}, Lorg/eclipse/jdt/internal/core/search/matching/JavaSearchPattern;->print(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    move-result-object p1

    return-object p1
.end method

.method public resetQuery()V
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/search/matching/PackageReferencePattern;->segments:[[C

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/eclipse/jdt/internal/core/search/matching/PackageReferencePattern;->currentSegment:I

    return-void
.end method
