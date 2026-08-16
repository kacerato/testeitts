.class public Lorg/eclipse/jdt/internal/core/search/matching/OrPattern;
.super Lorg/eclipse/jdt/core/search/SearchPattern;
.source "SourceFile"

# interfaces
.implements Lorg/eclipse/jdt/internal/core/search/indexing/IIndexConstants;


# instance fields
.field matchCompatibility:I

.field protected patterns:[Lorg/eclipse/jdt/core/search/SearchPattern;


# direct methods
.method public constructor <init>(Lorg/eclipse/jdt/core/search/SearchPattern;Lorg/eclipse/jdt/core/search/SearchPattern;)V
    .locals 6

    invoke-virtual {p1}, Lorg/eclipse/jdt/core/search/SearchPattern;->getMatchRule()I

    move-result v0

    invoke-virtual {p2}, Lorg/eclipse/jdt/core/search/SearchPattern;->getMatchRule()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-direct {p0, v0}, Lorg/eclipse/jdt/core/search/SearchPattern;-><init>(I)V

    const/16 v0, 0x100

    iput v0, p0, Lorg/eclipse/jdt/core/search/SearchPattern;->kind:I

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

    instance-of v0, p1, Lorg/eclipse/jdt/internal/core/search/matching/OrPattern;

    const/4 v3, 0x0

    if-eqz v0, :cond_1

    move-object v0, p1

    check-cast v0, Lorg/eclipse/jdt/internal/core/search/matching/OrPattern;

    iget-object v0, v0, Lorg/eclipse/jdt/internal/core/search/matching/OrPattern;->patterns:[Lorg/eclipse/jdt/core/search/SearchPattern;

    goto :goto_1

    :cond_1
    move-object v0, v3

    :goto_1
    instance-of v4, p2, Lorg/eclipse/jdt/internal/core/search/matching/OrPattern;

    if-eqz v4, :cond_2

    move-object v3, p2

    check-cast v3, Lorg/eclipse/jdt/internal/core/search/matching/OrPattern;

    iget-object v3, v3, Lorg/eclipse/jdt/internal/core/search/matching/OrPattern;->patterns:[Lorg/eclipse/jdt/core/search/SearchPattern;

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

    iput-object v5, p0, Lorg/eclipse/jdt/internal/core/search/matching/OrPattern;->patterns:[Lorg/eclipse/jdt/core/search/SearchPattern;

    if-nez v0, :cond_5

    aput-object p1, v5, v2

    goto :goto_4

    :cond_5
    invoke-static {v0, v2, v5, v2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_4
    if-nez v3, :cond_6

    iget-object p1, p0, Lorg/eclipse/jdt/internal/core/search/matching/OrPattern;->patterns:[Lorg/eclipse/jdt/core/search/SearchPattern;

    aput-object p2, p1, v4

    goto :goto_5

    :cond_6
    iget-object p1, p0, Lorg/eclipse/jdt/internal/core/search/matching/OrPattern;->patterns:[Lorg/eclipse/jdt/core/search/SearchPattern;

    invoke-static {v3, v2, p1, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_5
    iput v2, p0, Lorg/eclipse/jdt/internal/core/search/matching/OrPattern;->matchCompatibility:I

    iget-object p1, p0, Lorg/eclipse/jdt/internal/core/search/matching/OrPattern;->patterns:[Lorg/eclipse/jdt/core/search/SearchPattern;

    array-length p1, p1

    :goto_6
    if-lt v2, p1, :cond_7

    return-void

    :cond_7
    iget p2, p0, Lorg/eclipse/jdt/internal/core/search/matching/OrPattern;->matchCompatibility:I

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/search/matching/OrPattern;->patterns:[Lorg/eclipse/jdt/core/search/SearchPattern;

    aget-object v0, v0, v2

    check-cast v0, Lorg/eclipse/jdt/internal/core/search/matching/JavaSearchPattern;

    iget v0, v0, Lorg/eclipse/jdt/internal/core/search/matching/JavaSearchPattern;->matchCompatibility:I

    or-int/2addr p2, v0

    iput p2, p0, Lorg/eclipse/jdt/internal/core/search/matching/OrPattern;->matchCompatibility:I

    add-int/lit8 v2, v2, 0x1

    goto :goto_6
.end method


# virtual methods
.method public findIndexMatches(Lorg/eclipse/jdt/internal/core/index/Index;Lorg/eclipse/jdt/internal/core/search/IndexQueryRequestor;Lorg/eclipse/jdt/core/search/SearchParticipant;Lorg/eclipse/jdt/core/search/IJavaSearchScope;Lorg/eclipse/core/runtime/IProgressMonitor;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :try_start_0
    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/core/index/Index;->startQuery()V

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/search/matching/OrPattern;->patterns:[Lorg/eclipse/jdt/core/search/SearchPattern;

    array-length v0, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x0

    :goto_0
    if-lt v1, v0, :cond_0

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/core/index/Index;->stopQuery()V

    return-void

    :cond_0
    :try_start_1
    iget-object v2, p0, Lorg/eclipse/jdt/internal/core/search/matching/OrPattern;->patterns:[Lorg/eclipse/jdt/core/search/SearchPattern;

    aget-object v3, v2, v1

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    move-object v8, p5

    invoke-virtual/range {v3 .. v8}, Lorg/eclipse/jdt/core/search/SearchPattern;->findIndexMatches(Lorg/eclipse/jdt/internal/core/index/Index;Lorg/eclipse/jdt/internal/core/search/IndexQueryRequestor;Lorg/eclipse/jdt/core/search/SearchParticipant;Lorg/eclipse/jdt/core/search/IJavaSearchScope;Lorg/eclipse/core/runtime/IProgressMonitor;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catchall_0
    move-exception p2

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/core/index/Index;->stopQuery()V

    throw p2
.end method

.method public getBlankPattern()Lorg/eclipse/jdt/core/search/SearchPattern;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public final hasPackageDeclaration()Z
    .locals 4

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/search/matching/OrPattern;->patterns:[Lorg/eclipse/jdt/core/search/SearchPattern;

    array-length v0, v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-lt v2, v0, :cond_0

    return v1

    :cond_0
    iget-object v3, p0, Lorg/eclipse/jdt/internal/core/search/matching/OrPattern;->patterns:[Lorg/eclipse/jdt/core/search/SearchPattern;

    aget-object v3, v3, v2

    instance-of v3, v3, Lorg/eclipse/jdt/internal/core/search/matching/PackageDeclarationPattern;

    if-eqz v3, :cond_1

    const/4 v0, 0x1

    return v0

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public final hasSignatures()Z
    .locals 5

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/search/matching/OrPattern;->isErasureMatch()Z

    move-result v0

    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/search/matching/OrPattern;->patterns:[Lorg/eclipse/jdt/core/search/SearchPattern;

    array-length v1, v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_2

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    iget-object v4, p0, Lorg/eclipse/jdt/internal/core/search/matching/OrPattern;->patterns:[Lorg/eclipse/jdt/core/search/SearchPattern;

    aget-object v4, v4, v3

    check-cast v4, Lorg/eclipse/jdt/internal/core/search/matching/JavaSearchPattern;

    invoke-virtual {v4}, Lorg/eclipse/jdt/internal/core/search/matching/JavaSearchPattern;->hasSignatures()Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v0, 0x1

    return v0

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return v2
.end method

.method public isErasureMatch()Z
    .locals 1

    iget v0, p0, Lorg/eclipse/jdt/internal/core/search/matching/OrPattern;->matchCompatibility:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isPolymorphicSearch()Z
    .locals 4

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/search/matching/OrPattern;->patterns:[Lorg/eclipse/jdt/core/search/SearchPattern;

    array-length v0, v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-lt v2, v0, :cond_0

    return v1

    :cond_0
    iget-object v3, p0, Lorg/eclipse/jdt/internal/core/search/matching/OrPattern;->patterns:[Lorg/eclipse/jdt/core/search/SearchPattern;

    aget-object v3, v3, v2

    invoke-virtual {v3}, Lorg/eclipse/jdt/core/search/SearchPattern;->isPolymorphicSearch()Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v0, 0x1

    return v0

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/search/matching/OrPattern;->patterns:[Lorg/eclipse/jdt/core/search/SearchPattern;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {v1}, Lorg/eclipse/jdt/core/search/SearchPattern;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/search/matching/OrPattern;->patterns:[Lorg/eclipse/jdt/core/search/SearchPattern;

    array-length v1, v1

    const/4 v2, 0x1

    :goto_0
    if-lt v2, v1, :cond_0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v3, "\n| "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v3, p0, Lorg/eclipse/jdt/internal/core/search/matching/OrPattern;->patterns:[Lorg/eclipse/jdt/core/search/SearchPattern;

    aget-object v3, v3, v2

    invoke-virtual {v3}, Lorg/eclipse/jdt/core/search/SearchPattern;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method
