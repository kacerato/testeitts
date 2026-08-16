.class public Lorg/eclipse/jdt/internal/core/search/matching/MatchingNodeSet;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static ERASURE_MATCH:Ljava/lang/Integer;

.field static EXACT_MATCH:Ljava/lang/Integer;

.field static POTENTIAL_MATCH:Ljava/lang/Integer;


# instance fields
.field matchingNodes:Lorg/eclipse/jdt/internal/compiler/util/SimpleLookupTable;

.field private matchingNodesKeys:Lorg/eclipse/jdt/internal/compiler/util/HashtableOfLong;

.field public mustResolve:Z

.field private possibleMatchingNodesKeys:Lorg/eclipse/jdt/internal/compiler/util/HashtableOfLong;

.field possibleMatchingNodesSet:Lorg/eclipse/jdt/internal/compiler/util/SimpleSet;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lorg/eclipse/jdt/internal/core/search/matching/MatchingNodeSet;->EXACT_MATCH:Ljava/lang/Integer;

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lorg/eclipse/jdt/internal/core/search/matching/MatchingNodeSet;->POTENTIAL_MATCH:Ljava/lang/Integer;

    const/16 v0, 0x10

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lorg/eclipse/jdt/internal/core/search/matching/MatchingNodeSet;->ERASURE_MATCH:Ljava/lang/Integer;

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lorg/eclipse/jdt/internal/compiler/util/SimpleLookupTable;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Lorg/eclipse/jdt/internal/compiler/util/SimpleLookupTable;-><init>(I)V

    iput-object v0, p0, Lorg/eclipse/jdt/internal/core/search/matching/MatchingNodeSet;->matchingNodes:Lorg/eclipse/jdt/internal/compiler/util/SimpleLookupTable;

    new-instance v0, Lorg/eclipse/jdt/internal/compiler/util/HashtableOfLong;

    invoke-direct {v0, v1}, Lorg/eclipse/jdt/internal/compiler/util/HashtableOfLong;-><init>(I)V

    iput-object v0, p0, Lorg/eclipse/jdt/internal/core/search/matching/MatchingNodeSet;->matchingNodesKeys:Lorg/eclipse/jdt/internal/compiler/util/HashtableOfLong;

    new-instance v0, Lorg/eclipse/jdt/internal/compiler/util/SimpleSet;

    const/4 v1, 0x7

    invoke-direct {v0, v1}, Lorg/eclipse/jdt/internal/compiler/util/SimpleSet;-><init>(I)V

    iput-object v0, p0, Lorg/eclipse/jdt/internal/core/search/matching/MatchingNodeSet;->possibleMatchingNodesSet:Lorg/eclipse/jdt/internal/compiler/util/SimpleSet;

    new-instance v0, Lorg/eclipse/jdt/internal/compiler/util/HashtableOfLong;

    invoke-direct {v0, v1}, Lorg/eclipse/jdt/internal/compiler/util/HashtableOfLong;-><init>(I)V

    iput-object v0, p0, Lorg/eclipse/jdt/internal/core/search/matching/MatchingNodeSet;->possibleMatchingNodesKeys:Lorg/eclipse/jdt/internal/compiler/util/HashtableOfLong;

    iput-boolean p1, p0, Lorg/eclipse/jdt/internal/core/search/matching/MatchingNodeSet;->mustResolve:Z

    return-void
.end method


# virtual methods
.method public addMatch(Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;I)I
    .locals 2

    and-int/lit8 v0, p2, 0xf

    const/4 v1, 0x1

    if-eq v0, v1, :cond_5

    const/4 v1, 0x2

    if-eq v0, v1, :cond_4

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    if-eq p2, v0, :cond_1

    and-int/lit8 v0, p2, -0x10

    add-int/lit8 v0, v0, 0x10

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lorg/eclipse/jdt/internal/core/search/matching/MatchingNodeSet;->addTrustedMatch(Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;Ljava/lang/Integer;)V

    goto :goto_0

    :cond_1
    sget-object v0, Lorg/eclipse/jdt/internal/core/search/matching/MatchingNodeSet;->ERASURE_MATCH:Ljava/lang/Integer;

    invoke-virtual {p0, p1, v0}, Lorg/eclipse/jdt/internal/core/search/matching/MatchingNodeSet;->addTrustedMatch(Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;Ljava/lang/Integer;)V

    goto :goto_0

    :cond_2
    if-eq p2, v0, :cond_3

    and-int/lit8 v0, p2, -0x10

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lorg/eclipse/jdt/internal/core/search/matching/MatchingNodeSet;->addTrustedMatch(Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;Ljava/lang/Integer;)V

    goto :goto_0

    :cond_3
    sget-object v0, Lorg/eclipse/jdt/internal/core/search/matching/MatchingNodeSet;->EXACT_MATCH:Ljava/lang/Integer;

    invoke-virtual {p0, p1, v0}, Lorg/eclipse/jdt/internal/core/search/matching/MatchingNodeSet;->addTrustedMatch(Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;Ljava/lang/Integer;)V

    goto :goto_0

    :cond_4
    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/internal/core/search/matching/MatchingNodeSet;->addPossibleMatch(Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;)V

    goto :goto_0

    :cond_5
    if-eq p2, v0, :cond_6

    and-int/lit8 v0, p2, -0x10

    add-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lorg/eclipse/jdt/internal/core/search/matching/MatchingNodeSet;->addTrustedMatch(Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;Ljava/lang/Integer;)V

    goto :goto_0

    :cond_6
    sget-object v0, Lorg/eclipse/jdt/internal/core/search/matching/MatchingNodeSet;->POTENTIAL_MATCH:Ljava/lang/Integer;

    invoke-virtual {p0, p1, v0}, Lorg/eclipse/jdt/internal/core/search/matching/MatchingNodeSet;->addTrustedMatch(Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;Ljava/lang/Integer;)V

    :goto_0
    return p2
.end method

.method public addPossibleMatch(Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;)V
    .locals 5

    iget v0, p1, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceStart:I

    int-to-long v0, v0

    const/16 v2, 0x20

    shl-long/2addr v0, v2

    iget v2, p1, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceEnd:I

    int-to-long v2, v2

    add-long/2addr v0, v2

    iget-object v2, p0, Lorg/eclipse/jdt/internal/core/search/matching/MatchingNodeSet;->possibleMatchingNodesKeys:Lorg/eclipse/jdt/internal/compiler/util/HashtableOfLong;

    invoke-virtual {v2, v0, v1}, Lorg/eclipse/jdt/internal/compiler/util/HashtableOfLong;->get(J)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lorg/eclipse/jdt/internal/core/search/matching/MatchingNodeSet;->possibleMatchingNodesSet:Lorg/eclipse/jdt/internal/compiler/util/SimpleSet;

    invoke-virtual {v3, v2}, Lorg/eclipse/jdt/internal/compiler/util/SimpleSet;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    iget-object v2, p0, Lorg/eclipse/jdt/internal/core/search/matching/MatchingNodeSet;->possibleMatchingNodesSet:Lorg/eclipse/jdt/internal/compiler/util/SimpleSet;

    invoke-virtual {v2, p1}, Lorg/eclipse/jdt/internal/compiler/util/SimpleSet;->add(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Lorg/eclipse/jdt/internal/core/search/matching/MatchingNodeSet;->possibleMatchingNodesKeys:Lorg/eclipse/jdt/internal/compiler/util/HashtableOfLong;

    invoke-virtual {v2, v0, v1, p1}, Lorg/eclipse/jdt/internal/compiler/util/HashtableOfLong;->put(JLjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public addTrustedMatch(Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;Ljava/lang/Integer;)V
    .locals 5

    .line 2
    iget v0, p1, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceStart:I

    int-to-long v0, v0

    const/16 v2, 0x20

    shl-long/2addr v0, v2

    iget v2, p1, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceEnd:I

    int-to-long v2, v2

    add-long/2addr v0, v2

    .line 3
    iget-object v2, p0, Lorg/eclipse/jdt/internal/core/search/matching/MatchingNodeSet;->matchingNodesKeys:Lorg/eclipse/jdt/internal/compiler/util/HashtableOfLong;

    invoke-virtual {v2, v0, v1}, Lorg/eclipse/jdt/internal/compiler/util/HashtableOfLong;->get(J)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;

    if-eqz v2, :cond_0

    .line 4
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 5
    iget-object v3, p0, Lorg/eclipse/jdt/internal/core/search/matching/MatchingNodeSet;->matchingNodes:Lorg/eclipse/jdt/internal/compiler/util/SimpleLookupTable;

    invoke-virtual {v3, v2}, Lorg/eclipse/jdt/internal/compiler/util/SimpleLookupTable;->removeKey(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    :cond_0
    iget-object v2, p0, Lorg/eclipse/jdt/internal/core/search/matching/MatchingNodeSet;->matchingNodes:Lorg/eclipse/jdt/internal/compiler/util/SimpleLookupTable;

    invoke-virtual {v2, p1, p2}, Lorg/eclipse/jdt/internal/compiler/util/SimpleLookupTable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    iget-object p2, p0, Lorg/eclipse/jdt/internal/core/search/matching/MatchingNodeSet;->matchingNodesKeys:Lorg/eclipse/jdt/internal/compiler/util/HashtableOfLong;

    invoke-virtual {p2, v0, v1, p1}, Lorg/eclipse/jdt/internal/compiler/util/HashtableOfLong;->put(JLjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public addTrustedMatch(Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;Z)V
    .locals 0

    if-eqz p2, :cond_0

    .line 1
    sget-object p2, Lorg/eclipse/jdt/internal/core/search/matching/MatchingNodeSet;->EXACT_MATCH:Ljava/lang/Integer;

    goto :goto_0

    :cond_0
    sget-object p2, Lorg/eclipse/jdt/internal/core/search/matching/MatchingNodeSet;->POTENTIAL_MATCH:Ljava/lang/Integer;

    :goto_0
    invoke-virtual {p0, p1, p2}, Lorg/eclipse/jdt/internal/core/search/matching/MatchingNodeSet;->addTrustedMatch(Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;Ljava/lang/Integer;)V

    return-void
.end method

.method public hasPossibleNodes(II)Z
    .locals 7

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/search/matching/MatchingNodeSet;->possibleMatchingNodesSet:Lorg/eclipse/jdt/internal/compiler/util/SimpleSet;

    iget-object v0, v0, Lorg/eclipse/jdt/internal/compiler/util/SimpleSet;->values:[Ljava/lang/Object;

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    const/4 v4, 0x1

    if-lt v3, v1, :cond_2

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/search/matching/MatchingNodeSet;->matchingNodes:Lorg/eclipse/jdt/internal/compiler/util/SimpleLookupTable;

    iget-object v5, v0, Lorg/eclipse/jdt/internal/compiler/util/SimpleLookupTable;->keyTable:[Ljava/lang/Object;

    array-length v6, v5

    move v0, v2

    :goto_1
    if-lt v0, v6, :cond_0

    return v2

    :cond_0
    aget-object v1, v5, v0

    check-cast v1, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;

    if-eqz v1, :cond_1

    iget v3, v1, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceStart:I

    if-gt p1, v3, :cond_1

    iget v1, v1, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceEnd:I

    if-gt v1, p2, :cond_1

    return v4

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    aget-object v5, v0, v3

    check-cast v5, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;

    if-eqz v5, :cond_3

    iget v6, v5, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceStart:I

    if-gt p1, v6, :cond_3

    iget v5, v5, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceEnd:I

    if-gt v5, p2, :cond_3

    return v4

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method public matchingNodes(II)[Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;
    .locals 7

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/search/matching/MatchingNodeSet;->matchingNodes:Lorg/eclipse/jdt/internal/compiler/util/SimpleLookupTable;

    iget-object v0, v0, Lorg/eclipse/jdt/internal/compiler/util/SimpleLookupTable;->keyTable:[Ljava/lang/Object;

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v4, v2

    :goto_0
    if-lt v3, v1, :cond_1

    if-nez v4, :cond_0

    return-object v2

    :cond_0
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result p1

    new-array p1, p1, [Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    new-instance p2, Lorg/eclipse/jdt/internal/core/search/matching/MatchingNodeSet$1;

    invoke-direct {p2, p0}, Lorg/eclipse/jdt/internal/core/search/matching/MatchingNodeSet$1;-><init>(Lorg/eclipse/jdt/internal/core/search/matching/MatchingNodeSet;)V

    invoke-static {p1, p2}, Lorg/eclipse/jdt/internal/core/util/Util;->sort([Ljava/lang/Object;Lorg/eclipse/jdt/internal/core/util/Util$Comparer;)V

    return-object p1

    :cond_1
    aget-object v5, v0, v3

    check-cast v5, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;

    if-eqz v5, :cond_3

    iget v6, v5, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceStart:I

    if-gt p1, v6, :cond_3

    iget v6, v5, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceEnd:I

    if-gt v6, p2, :cond_3

    if-nez v4, :cond_2

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    :cond_2
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method public removePossibleMatch(Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;)Ljava/lang/Object;
    .locals 4

    iget v0, p1, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceStart:I

    int-to-long v0, v0

    const/16 v2, 0x20

    shl-long/2addr v0, v2

    iget v2, p1, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceEnd:I

    int-to-long v2, v2

    add-long/2addr v0, v2

    iget-object v2, p0, Lorg/eclipse/jdt/internal/core/search/matching/MatchingNodeSet;->possibleMatchingNodesKeys:Lorg/eclipse/jdt/internal/compiler/util/HashtableOfLong;

    invoke-virtual {v2, v0, v1}, Lorg/eclipse/jdt/internal/compiler/util/HashtableOfLong;->get(J)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;

    const/4 v3, 0x0

    if-nez v2, :cond_0

    return-object v3

    :cond_0
    iget-object v2, p0, Lorg/eclipse/jdt/internal/core/search/matching/MatchingNodeSet;->possibleMatchingNodesKeys:Lorg/eclipse/jdt/internal/compiler/util/HashtableOfLong;

    invoke-virtual {v2, v0, v1, v3}, Lorg/eclipse/jdt/internal/compiler/util/HashtableOfLong;->put(JLjava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/search/matching/MatchingNodeSet;->possibleMatchingNodesSet:Lorg/eclipse/jdt/internal/compiler/util/SimpleSet;

    invoke-virtual {v0, p1}, Lorg/eclipse/jdt/internal/compiler/util/SimpleSet;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public removeTrustedMatch(Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;)Ljava/lang/Object;
    .locals 4

    iget v0, p1, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceStart:I

    int-to-long v0, v0

    const/16 v2, 0x20

    shl-long/2addr v0, v2

    iget v2, p1, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceEnd:I

    int-to-long v2, v2

    add-long/2addr v0, v2

    iget-object v2, p0, Lorg/eclipse/jdt/internal/core/search/matching/MatchingNodeSet;->matchingNodesKeys:Lorg/eclipse/jdt/internal/compiler/util/HashtableOfLong;

    invoke-virtual {v2, v0, v1}, Lorg/eclipse/jdt/internal/compiler/util/HashtableOfLong;->get(J)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;

    const/4 v3, 0x0

    if-nez v2, :cond_0

    return-object v3

    :cond_0
    iget-object v2, p0, Lorg/eclipse/jdt/internal/core/search/matching/MatchingNodeSet;->matchingNodesKeys:Lorg/eclipse/jdt/internal/compiler/util/HashtableOfLong;

    invoke-virtual {v2, v0, v1, v3}, Lorg/eclipse/jdt/internal/compiler/util/HashtableOfLong;->put(JLjava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/search/matching/MatchingNodeSet;->matchingNodes:Lorg/eclipse/jdt/internal/compiler/util/SimpleLookupTable;

    invoke-virtual {v0, p1}, Lorg/eclipse/jdt/internal/compiler/util/SimpleLookupTable;->removeKey(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 9

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "Exact matches:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/search/matching/MatchingNodeSet;->matchingNodes:Lorg/eclipse/jdt/internal/compiler/util/SimpleLookupTable;

    iget-object v2, v1, Lorg/eclipse/jdt/internal/compiler/util/SimpleLookupTable;->keyTable:[Ljava/lang/Object;

    iget-object v1, v1, Lorg/eclipse/jdt/internal/compiler/util/SimpleLookupTable;->valueTable:[Ljava/lang/Object;

    array-length v3, v2

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    if-lt v5, v3, :cond_2

    const-string v1, "\nPossible matches:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/search/matching/MatchingNodeSet;->possibleMatchingNodesSet:Lorg/eclipse/jdt/internal/compiler/util/SimpleSet;

    iget-object v6, v1, Lorg/eclipse/jdt/internal/compiler/util/SimpleSet;->values:[Ljava/lang/Object;

    array-length v7, v6

    move v1, v4

    :goto_1
    if-lt v1, v7, :cond_0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    aget-object v2, v6, v1

    check-cast v2, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;

    if-nez v2, :cond_1

    goto :goto_2

    :cond_1
    const-string v3, "\nPOSSIBLE_MATCH: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2, v4, v0}, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->print(ILjava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    aget-object v6, v2, v5

    check-cast v6, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;

    if-nez v6, :cond_3

    goto :goto_4

    :cond_3
    const-string v7, "\n\t"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    aget-object v7, v1, v5

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    if-eqz v7, :cond_6

    const/4 v8, 0x1

    if-eq v7, v8, :cond_5

    const/16 v8, 0x10

    if-eq v7, v8, :cond_4

    goto :goto_3

    :cond_4
    const-string v7, "ERASURE_MATCH: "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_3

    :cond_5
    const-string v7, "INACCURATE_MATCH: "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_3

    :cond_6
    const-string v7, "ACCURATE_MATCH: "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :goto_3
    invoke-virtual {v6, v4, v0}, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->print(ILjava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    :goto_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_0
.end method
