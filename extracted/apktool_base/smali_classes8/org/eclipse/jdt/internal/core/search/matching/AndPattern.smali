.class public Lorg/eclipse/jdt/internal/core/search/matching/AndPattern;
.super Lorg/eclipse/jdt/internal/core/search/matching/IntersectingPattern;
.source "SourceFile"


# instance fields
.field current:I

.field protected patterns:[Lorg/eclipse/jdt/core/search/SearchPattern;


# direct methods
.method public constructor <init>(Lorg/eclipse/jdt/core/search/SearchPattern;Lorg/eclipse/jdt/core/search/SearchPattern;)V
    .locals 6

    invoke-virtual {p1}, Lorg/eclipse/jdt/core/search/SearchPattern;->getMatchRule()I

    move-result v0

    invoke-virtual {p2}, Lorg/eclipse/jdt/core/search/SearchPattern;->getMatchRule()I

    move-result v1

    invoke-static {v0, v1}, Lorg/eclipse/jdt/internal/core/search/matching/AndPattern;->combinedMatchRule(II)I

    move-result v0

    const/16 v1, 0x800

    invoke-direct {p0, v1, v0}, Lorg/eclipse/jdt/internal/core/search/matching/IntersectingPattern;-><init>(II)V

    iget-boolean v0, p1, Lorg/eclipse/jdt/core/search/SearchPattern;->mustResolve:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    iget-boolean v0, p2, Lorg/eclipse/jdt/core/search/SearchPattern;->mustResolve:Z

    if-nez v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lorg/eclipse/jdt/core/search/SearchPattern;->mustResolve:Z

    instance-of v0, p1, Lorg/eclipse/jdt/internal/core/search/matching/AndPattern;

    const/4 v3, 0x0

    if-eqz v0, :cond_1

    move-object v0, p1

    check-cast v0, Lorg/eclipse/jdt/internal/core/search/matching/AndPattern;

    iget-object v0, v0, Lorg/eclipse/jdt/internal/core/search/matching/AndPattern;->patterns:[Lorg/eclipse/jdt/core/search/SearchPattern;

    goto :goto_1

    :cond_1
    move-object v0, v3

    :goto_1
    instance-of v4, p2, Lorg/eclipse/jdt/internal/core/search/matching/AndPattern;

    if-eqz v4, :cond_2

    move-object v3, p2

    check-cast v3, Lorg/eclipse/jdt/internal/core/search/matching/AndPattern;

    iget-object v3, v3, Lorg/eclipse/jdt/internal/core/search/matching/AndPattern;->patterns:[Lorg/eclipse/jdt/core/search/SearchPattern;

    :cond_2
    if-nez v0, :cond_3

    move v4, v1

    goto :goto_2

    :cond_3
    array-length v4, v0

    :goto_2
    if-nez v3, :cond_4

    goto :goto_3

    :cond_4
    array-length v1, v3

    :goto_3
    add-int v5, v4, v1

    new-array v5, v5, [Lorg/eclipse/jdt/core/search/SearchPattern;

    iput-object v5, p0, Lorg/eclipse/jdt/internal/core/search/matching/AndPattern;->patterns:[Lorg/eclipse/jdt/core/search/SearchPattern;

    if-nez v0, :cond_5

    aput-object p1, v5, v2

    goto :goto_4

    :cond_5
    invoke-static {v0, v2, v5, v2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_4
    if-nez v3, :cond_6

    iget-object p1, p0, Lorg/eclipse/jdt/internal/core/search/matching/AndPattern;->patterns:[Lorg/eclipse/jdt/core/search/SearchPattern;

    aput-object p2, p1, v4

    goto :goto_5

    :cond_6
    iget-object p1, p0, Lorg/eclipse/jdt/internal/core/search/matching/AndPattern;->patterns:[Lorg/eclipse/jdt/core/search/SearchPattern;

    invoke-static {v3, v2, p1, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_5
    invoke-virtual {p0}, Lorg/eclipse/jdt/core/search/SearchPattern;->getMatchRule()I

    move-result p1

    and-int/lit8 p1, p1, 0x70

    iput p1, p0, Lorg/eclipse/jdt/internal/core/search/matching/JavaSearchPattern;->matchCompatibility:I

    iput v2, p0, Lorg/eclipse/jdt/internal/core/search/matching/AndPattern;->current:I

    return-void
.end method

.method private static combinedMatchRule(II)I
    .locals 3

    and-int v0, p0, p1

    and-int/lit8 v1, v0, 0x70

    if-nez v1, :cond_2

    and-int/lit8 v1, p0, 0x70

    const/16 v2, 0x40

    if-ne v1, v2, :cond_0

    move p0, p1

    goto :goto_0

    :cond_0
    and-int/lit8 p1, p1, 0x70

    if-ne p1, v2, :cond_1

    goto :goto_0

    :cond_1
    invoke-static {v1, p1}, Ljava/lang/Math;->min(II)I

    move-result p0

    goto :goto_0

    :cond_2
    move p0, v1

    :goto_0
    and-int/lit8 p1, v0, 0xf

    or-int/2addr p0, p1

    and-int/lit16 p1, v0, 0x180

    or-int/2addr p0, p1

    return p0
.end method


# virtual methods
.method public currentPattern()Lorg/eclipse/jdt/core/search/SearchPattern;
    .locals 3

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/search/matching/AndPattern;->patterns:[Lorg/eclipse/jdt/core/search/SearchPattern;

    iget v1, p0, Lorg/eclipse/jdt/internal/core/search/matching/AndPattern;->current:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/eclipse/jdt/internal/core/search/matching/AndPattern;->current:I

    aget-object v0, v0, v1

    return-object v0
.end method

.method public hasNextQuery()Z
    .locals 3

    iget v0, p0, Lorg/eclipse/jdt/internal/core/search/matching/AndPattern;->current:I

    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/search/matching/AndPattern;->patterns:[Lorg/eclipse/jdt/core/search/SearchPattern;

    array-length v1, v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    if-ge v0, v1, :cond_0

    return v2

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public resetQuery()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lorg/eclipse/jdt/internal/core/search/matching/AndPattern;->current:I

    return-void
.end method
