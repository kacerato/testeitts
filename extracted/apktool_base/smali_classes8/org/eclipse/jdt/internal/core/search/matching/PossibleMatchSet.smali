.class public Lorg/eclipse/jdt/internal/core/search/matching/PossibleMatchSet;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private elementCount:I

.field private rootsToPossibleMatches:Lorg/eclipse/jdt/internal/compiler/util/SimpleLookupTable;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lorg/eclipse/jdt/internal/compiler/util/SimpleLookupTable;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Lorg/eclipse/jdt/internal/compiler/util/SimpleLookupTable;-><init>(I)V

    iput-object v0, p0, Lorg/eclipse/jdt/internal/core/search/matching/PossibleMatchSet;->rootsToPossibleMatches:Lorg/eclipse/jdt/internal/compiler/util/SimpleLookupTable;

    const/4 v0, 0x0

    iput v0, p0, Lorg/eclipse/jdt/internal/core/search/matching/PossibleMatchSet;->elementCount:I

    return-void
.end method


# virtual methods
.method public add(Lorg/eclipse/jdt/internal/core/search/matching/PossibleMatch;)V
    .locals 3

    iget-object v0, p1, Lorg/eclipse/jdt/internal/core/search/matching/PossibleMatch;->openable:Lorg/eclipse/jdt/internal/core/Openable;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/core/Openable;->getPackageFragmentRoot()Lorg/eclipse/jdt/internal/core/PackageFragmentRoot;

    move-result-object v0

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/core/PackageFragmentRoot;->getPath()Lorg/eclipse/core/runtime/IPath;

    move-result-object v0

    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/search/matching/PossibleMatchSet;->rootsToPossibleMatches:Lorg/eclipse/jdt/internal/compiler/util/SimpleLookupTable;

    invoke-virtual {v1, v0}, Lorg/eclipse/jdt/internal/compiler/util/SimpleLookupTable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/eclipse/jdt/internal/compiler/util/ObjectVector;

    if-eqz v1, :cond_1

    invoke-virtual {v1, p1}, Lorg/eclipse/jdt/internal/compiler/util/ObjectVector;->find(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jdt/internal/core/search/matching/PossibleMatch;

    if-eqz v0, :cond_2

    :goto_0
    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/core/search/matching/PossibleMatch;->getSimilarMatch()Lorg/eclipse/jdt/internal/core/search/matching/PossibleMatch;

    move-result-object v1

    if-nez v1, :cond_0

    invoke-virtual {v0, p1}, Lorg/eclipse/jdt/internal/core/search/matching/PossibleMatch;->setSimilarMatch(Lorg/eclipse/jdt/internal/core/search/matching/PossibleMatch;)V

    return-void

    :cond_0
    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/core/search/matching/PossibleMatch;->getSimilarMatch()Lorg/eclipse/jdt/internal/core/search/matching/PossibleMatch;

    move-result-object v0

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/search/matching/PossibleMatchSet;->rootsToPossibleMatches:Lorg/eclipse/jdt/internal/compiler/util/SimpleLookupTable;

    new-instance v2, Lorg/eclipse/jdt/internal/compiler/util/ObjectVector;

    invoke-direct {v2}, Lorg/eclipse/jdt/internal/compiler/util/ObjectVector;-><init>()V

    invoke-virtual {v1, v0, v2}, Lorg/eclipse/jdt/internal/compiler/util/SimpleLookupTable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v1, v2

    :cond_2
    invoke-virtual {v1, p1}, Lorg/eclipse/jdt/internal/compiler/util/ObjectVector;->add(Ljava/lang/Object;)V

    iget p1, p0, Lorg/eclipse/jdt/internal/core/search/matching/PossibleMatchSet;->elementCount:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lorg/eclipse/jdt/internal/core/search/matching/PossibleMatchSet;->elementCount:I

    return-void
.end method

.method public getPossibleMatches([Lorg/eclipse/jdt/core/IPackageFragmentRoot;)[Lorg/eclipse/jdt/internal/core/search/matching/PossibleMatch;
    .locals 9

    iget v0, p0, Lorg/eclipse/jdt/internal/core/search/matching/PossibleMatchSet;->elementCount:I

    new-array v0, v0, [Lorg/eclipse/jdt/internal/core/search/matching/PossibleMatch;

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    array-length v2, p1

    const/4 v3, 0x0

    move v4, v3

    move v5, v4

    :goto_0
    if-lt v4, v2, :cond_1

    iget p1, p0, Lorg/eclipse/jdt/internal/core/search/matching/PossibleMatchSet;->elementCount:I

    if-ge v5, p1, :cond_0

    new-array p1, v5, [Lorg/eclipse/jdt/internal/core/search/matching/PossibleMatch;

    invoke-static {v0, v3, p1, v3, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v0, p1

    :cond_0
    return-object v0

    :cond_1
    aget-object v6, p1, v4

    invoke-interface {v6}, Lorg/eclipse/jdt/core/IJavaElement;->getPath()Lorg/eclipse/core/runtime/IPath;

    move-result-object v6

    iget-object v7, p0, Lorg/eclipse/jdt/internal/core/search/matching/PossibleMatchSet;->rootsToPossibleMatches:Lorg/eclipse/jdt/internal/compiler/util/SimpleLookupTable;

    invoke-virtual {v7, v6}, Lorg/eclipse/jdt/internal/compiler/util/SimpleLookupTable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/eclipse/jdt/internal/compiler/util/ObjectVector;

    if-eqz v7, :cond_2

    invoke-virtual {v1, v6}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_2

    invoke-virtual {v7, v0, v5}, Lorg/eclipse/jdt/internal/compiler/util/ObjectVector;->copyInto([Ljava/lang/Object;I)V

    invoke-virtual {v7}, Lorg/eclipse/jdt/internal/compiler/util/ObjectVector;->size()I

    move-result v7

    add-int/2addr v5, v7

    invoke-virtual {v1, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0
.end method

.method public reset()V
    .locals 2

    new-instance v0, Lorg/eclipse/jdt/internal/compiler/util/SimpleLookupTable;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Lorg/eclipse/jdt/internal/compiler/util/SimpleLookupTable;-><init>(I)V

    iput-object v0, p0, Lorg/eclipse/jdt/internal/core/search/matching/PossibleMatchSet;->rootsToPossibleMatches:Lorg/eclipse/jdt/internal/compiler/util/SimpleLookupTable;

    const/4 v0, 0x0

    iput v0, p0, Lorg/eclipse/jdt/internal/core/search/matching/PossibleMatchSet;->elementCount:I

    return-void
.end method
