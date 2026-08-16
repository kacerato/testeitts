.class public Lorg/eclipse/jdt/internal/core/search/matching/TypeReferencePattern;
.super Lorg/eclipse/jdt/internal/core/search/matching/IntersectingPattern;
.source "SourceFile"


# static fields
.field private static final CATEGORIES:[[C

.field private static final CATEGORIES_ANNOT_REF:[[C


# instance fields
.field private categories:[[C

.field protected currentCategory:[C

.field protected currentSegment:I

.field protected qualification:[C

.field protected segments:[[C

.field public segmentsSize:I

.field protected simpleName:[C

.field typeSuffix:C


# direct methods
.method static constructor <clinit>()V
    .locals 2

    sget-object v0, Lorg/eclipse/jdt/internal/core/search/indexing/IIndexConstants;->REF:[C

    sget-object v1, Lorg/eclipse/jdt/internal/core/search/indexing/IIndexConstants;->ANNOTATION_REF:[C

    filled-new-array {v0, v1}, [[C

    move-result-object v0

    sput-object v0, Lorg/eclipse/jdt/internal/core/search/matching/TypeReferencePattern;->CATEGORIES:[[C

    filled-new-array {v1}, [[C

    move-result-object v0

    sput-object v0, Lorg/eclipse/jdt/internal/core/search/matching/TypeReferencePattern;->CATEGORIES_ANNOT_REF:[[C

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    const/4 v0, 0x4

    .line 26
    invoke-direct {p0, v0, p1}, Lorg/eclipse/jdt/internal/core/search/matching/IntersectingPattern;-><init>(II)V

    const/4 p1, 0x0

    .line 27
    iput-char p1, p0, Lorg/eclipse/jdt/internal/core/search/matching/TypeReferencePattern;->typeSuffix:C

    .line 28
    sget-object p1, Lorg/eclipse/jdt/internal/core/search/matching/TypeReferencePattern;->CATEGORIES:[[C

    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/search/matching/TypeReferencePattern;->categories:[[C

    return-void
.end method

.method public constructor <init>([C[CI)V
    .locals 0

    .line 1
    invoke-direct {p0, p3}, Lorg/eclipse/jdt/internal/core/search/matching/TypeReferencePattern;-><init>(I)V

    .line 2
    iget-boolean p3, p0, Lorg/eclipse/jdt/internal/core/search/matching/JavaSearchPattern;->isCaseSensitive:Z

    if-eqz p3, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p1}, Lorg/eclipse/jdt/core/compiler/CharOperation;->toLowerCase([C)[C

    move-result-object p1

    :goto_0
    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/search/matching/TypeReferencePattern;->qualification:[C

    .line 3
    iget-boolean p1, p0, Lorg/eclipse/jdt/internal/core/search/matching/JavaSearchPattern;->isCaseSensitive:Z

    if-nez p1, :cond_2

    iget-boolean p1, p0, Lorg/eclipse/jdt/internal/core/search/matching/JavaSearchPattern;->isCamelCase:Z

    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    invoke-static {p2}, Lorg/eclipse/jdt/core/compiler/CharOperation;->toLowerCase([C)[C

    move-result-object p1

    goto :goto_2

    :cond_2
    :goto_1
    move-object p1, p2

    :goto_2
    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/search/matching/TypeReferencePattern;->simpleName:[C

    const/16 p1, 0x2e

    if-nez p2, :cond_4

    .line 4
    iget-object p2, p0, Lorg/eclipse/jdt/internal/core/search/matching/TypeReferencePattern;->qualification:[C

    if-nez p2, :cond_3

    sget-object p2, Lorg/eclipse/jdt/internal/core/search/indexing/IIndexConstants;->ONE_STAR_CHAR:[[C

    goto :goto_3

    :cond_3
    invoke-static {p1, p2}, Lorg/eclipse/jdt/core/compiler/CharOperation;->splitOn(C[C)[[C

    move-result-object p2

    :goto_3
    iput-object p2, p0, Lorg/eclipse/jdt/internal/core/search/matching/TypeReferencePattern;->segments:[[C

    goto :goto_4

    :cond_4
    const/4 p2, 0x0

    .line 5
    iput-object p2, p0, Lorg/eclipse/jdt/internal/core/search/matching/TypeReferencePattern;->segments:[[C

    .line 6
    :goto_4
    iget-object p2, p0, Lorg/eclipse/jdt/internal/core/search/matching/TypeReferencePattern;->segments:[[C

    const/4 p3, 0x1

    if-nez p2, :cond_6

    .line 7
    iget-object p2, p0, Lorg/eclipse/jdt/internal/core/search/matching/TypeReferencePattern;->qualification:[C

    if-nez p2, :cond_5

    const/4 p1, 0x0

    .line 8
    iput p1, p0, Lorg/eclipse/jdt/internal/core/search/matching/TypeReferencePattern;->segmentsSize:I

    goto :goto_5

    .line 9
    :cond_5
    invoke-static {p1, p2}, Lorg/eclipse/jdt/core/compiler/CharOperation;->occurencesOf(C[C)I

    move-result p1

    add-int/2addr p1, p3

    iput p1, p0, Lorg/eclipse/jdt/internal/core/search/matching/TypeReferencePattern;->segmentsSize:I

    goto :goto_5

    .line 10
    :cond_6
    array-length p1, p2

    iput p1, p0, Lorg/eclipse/jdt/internal/core/search/matching/TypeReferencePattern;->segmentsSize:I

    .line 11
    :goto_5
    iput-boolean p3, p0, Lorg/eclipse/jdt/core/search/SearchPattern;->mustResolve:Z

    return-void
.end method

.method public constructor <init>([C[CLjava/lang/String;CI)V
    .locals 7

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v5, p4

    move v6, p5

    .line 13
    invoke-direct/range {v0 .. v6}, Lorg/eclipse/jdt/internal/core/search/matching/TypeReferencePattern;-><init>([C[CLjava/lang/String;ICI)V

    return-void
.end method

.method public constructor <init>([C[CLjava/lang/String;I)V
    .locals 7

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v6, p4

    .line 12
    invoke-direct/range {v0 .. v6}, Lorg/eclipse/jdt/internal/core/search/matching/TypeReferencePattern;-><init>([C[CLjava/lang/String;ICI)V

    return-void
.end method

.method public constructor <init>([C[CLjava/lang/String;ICI)V
    .locals 0

    .line 14
    invoke-direct {p0, p1, p2, p6}, Lorg/eclipse/jdt/internal/core/search/matching/TypeReferencePattern;-><init>([C[CI)V

    .line 15
    iput-char p5, p0, Lorg/eclipse/jdt/internal/core/search/matching/TypeReferencePattern;->typeSuffix:C

    if-eqz p3, :cond_0

    .line 16
    invoke-static {p3}, Lorg/eclipse/jdt/internal/core/util/Util;->splitTypeLevelsSignature(Ljava/lang/String;)[[C

    move-result-object p1

    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/search/matching/JavaSearchPattern;->typeSignatures:[[C

    .line 17
    invoke-static {p1}, Lorg/eclipse/jdt/internal/core/util/Util;->getAllTypeArguments([[C)[[[C

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/internal/core/search/matching/JavaSearchPattern;->setTypeArguments([[[C)V

    .line 18
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/search/matching/JavaSearchPattern;->hasTypeArguments()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 19
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/search/matching/JavaSearchPattern;->getTypeArguments()[[[C

    move-result-object p1

    array-length p1, p1

    iget-object p2, p0, Lorg/eclipse/jdt/internal/core/search/matching/JavaSearchPattern;->typeSignatures:[[C

    const/4 p3, 0x0

    aget-object p2, p2, p3

    const/16 p3, 0x2f

    invoke-static {p3, p2}, Lorg/eclipse/jdt/core/compiler/CharOperation;->occurencesOf(C[C)I

    move-result p2

    add-int/2addr p1, p2

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lorg/eclipse/jdt/internal/core/search/matching/TypeReferencePattern;->segmentsSize:I

    :cond_0
    and-int/lit8 p1, p4, -0x10

    .line 20
    iput p1, p0, Lorg/eclipse/jdt/internal/core/search/matching/JavaSearchPattern;->fineGrain:I

    const/high16 p2, 0x10000

    if-ne p1, p2, :cond_1

    .line 21
    sget-object p1, Lorg/eclipse/jdt/internal/core/search/matching/TypeReferencePattern;->CATEGORIES_ANNOT_REF:[[C

    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/search/matching/TypeReferencePattern;->categories:[[C

    :cond_1
    return-void
.end method

.method public constructor <init>([C[CLorg/eclipse/jdt/core/IType;I)V
    .locals 6

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v5, p4

    .line 22
    invoke-direct/range {v0 .. v5}, Lorg/eclipse/jdt/internal/core/search/matching/TypeReferencePattern;-><init>([C[CLorg/eclipse/jdt/core/IType;II)V

    return-void
.end method

.method public constructor <init>([C[CLorg/eclipse/jdt/core/IType;II)V
    .locals 0

    .line 23
    invoke-direct {p0, p1, p2, p5}, Lorg/eclipse/jdt/internal/core/search/matching/TypeReferencePattern;-><init>([C[CI)V

    .line 24
    invoke-virtual {p0, p3}, Lorg/eclipse/jdt/internal/core/search/matching/JavaSearchPattern;->storeTypeSignaturesAndArguments(Lorg/eclipse/jdt/core/IType;)V

    and-int/lit8 p1, p4, -0x10

    .line 25
    iput p1, p0, Lorg/eclipse/jdt/internal/core/search/matching/JavaSearchPattern;->fineGrain:I

    return-void
.end method


# virtual methods
.method public decodeIndexKey([C)V
    .locals 0

    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/search/matching/TypeReferencePattern;->simpleName:[C

    return-void
.end method

.method public getBlankPattern()Lorg/eclipse/jdt/core/search/SearchPattern;
    .locals 2

    new-instance v0, Lorg/eclipse/jdt/internal/core/search/matching/TypeReferencePattern;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Lorg/eclipse/jdt/internal/core/search/matching/TypeReferencePattern;-><init>(I)V

    return-object v0
.end method

.method public getIndexCategories()[[C
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/search/matching/TypeReferencePattern;->categories:[[C

    return-object v0
.end method

.method public getIndexKey()[C
    .locals 2

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/search/matching/TypeReferencePattern;->simpleName:[C

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    iget v0, p0, Lorg/eclipse/jdt/internal/core/search/matching/TypeReferencePattern;->currentSegment:I

    if-ltz v0, :cond_1

    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/search/matching/TypeReferencePattern;->segments:[[C

    aget-object v0, v1, v0

    return-object v0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public hasNextQuery()Z
    .locals 5

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/search/matching/TypeReferencePattern;->segments:[[C

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget v2, p0, Lorg/eclipse/jdt/internal/core/search/matching/TypeReferencePattern;->currentSegment:I

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    iput v2, p0, Lorg/eclipse/jdt/internal/core/search/matching/TypeReferencePattern;->currentSegment:I

    array-length v0, v0

    const/4 v4, 0x4

    if-lt v0, v4, :cond_1

    const/4 v0, 0x2

    goto :goto_0

    :cond_1
    move v0, v1

    :goto_0
    if-lt v2, v0, :cond_2

    return v3

    :cond_2
    return v1
.end method

.method public matchesDecodedKey(Lorg/eclipse/jdt/core/search/SearchPattern;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public print(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;
    .locals 2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x2e

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v0, ": qualification<"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/search/matching/TypeReferencePattern;->qualification:[C

    const-string v1, "*"

    if-eqz v0, :cond_0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    goto :goto_0

    :cond_0
    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :goto_0
    const-string v0, ">, type<"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/search/matching/TypeReferencePattern;->simpleName:[C

    if-eqz v0, :cond_1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    goto :goto_1

    :cond_1
    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :goto_1
    const-string v0, ">"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-super {p0, p1}, Lorg/eclipse/jdt/internal/core/search/matching/JavaSearchPattern;->print(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    move-result-object p1

    return-object p1
.end method

.method public resetQuery()V
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/search/matching/TypeReferencePattern;->segments:[[C

    if-eqz v0, :cond_0

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/eclipse/jdt/internal/core/search/matching/TypeReferencePattern;->currentSegment:I

    :cond_0
    return-void
.end method
