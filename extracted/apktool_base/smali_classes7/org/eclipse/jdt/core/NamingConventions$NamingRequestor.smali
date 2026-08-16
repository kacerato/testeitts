.class Lorg/eclipse/jdt/core/NamingConventions$NamingRequestor;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/eclipse/jdt/internal/core/INamingRequestor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/eclipse/jdt/core/NamingConventions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "NamingRequestor"
.end annotation


# static fields
.field private static final SIZE:I = 0xa


# instance fields
.field private firstPrefixAndFirstSuffixResults:[[C

.field private firstPrefixAndFirstSuffixResultsCount:I

.field private firstPrefixAndSuffixResults:[[C

.field private firstPrefixAndSuffixResultsCount:I

.field private firstPrefixResults:[[C

.field private firstPrefixResultsCount:I

.field private firstSuffixResults:[[C

.field private firstSuffixResultsCount:I

.field private otherResults:[[C

.field private otherResultsCount:I

.field private prefixAndFirstSuffixResults:[[C

.field private prefixAndFirstSuffixResultsCount:I

.field private prefixAndSuffixResults:[[C

.field private prefixAndSuffixResultsCount:I

.field private prefixResults:[[C

.field private prefixResultsCount:I

.field private suffixResults:[[C

.field private suffixResultsCount:I


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0xa

    new-array v1, v0, [[C

    iput-object v1, p0, Lorg/eclipse/jdt/core/NamingConventions$NamingRequestor;->firstPrefixAndFirstSuffixResults:[[C

    const/4 v1, 0x0

    iput v1, p0, Lorg/eclipse/jdt/core/NamingConventions$NamingRequestor;->firstPrefixAndFirstSuffixResultsCount:I

    new-array v2, v0, [[C

    iput-object v2, p0, Lorg/eclipse/jdt/core/NamingConventions$NamingRequestor;->firstPrefixAndSuffixResults:[[C

    iput v1, p0, Lorg/eclipse/jdt/core/NamingConventions$NamingRequestor;->firstPrefixAndSuffixResultsCount:I

    new-array v2, v0, [[C

    iput-object v2, p0, Lorg/eclipse/jdt/core/NamingConventions$NamingRequestor;->prefixAndFirstSuffixResults:[[C

    iput v1, p0, Lorg/eclipse/jdt/core/NamingConventions$NamingRequestor;->prefixAndFirstSuffixResultsCount:I

    new-array v2, v0, [[C

    iput-object v2, p0, Lorg/eclipse/jdt/core/NamingConventions$NamingRequestor;->prefixAndSuffixResults:[[C

    iput v1, p0, Lorg/eclipse/jdt/core/NamingConventions$NamingRequestor;->prefixAndSuffixResultsCount:I

    new-array v2, v0, [[C

    iput-object v2, p0, Lorg/eclipse/jdt/core/NamingConventions$NamingRequestor;->firstPrefixResults:[[C

    iput v1, p0, Lorg/eclipse/jdt/core/NamingConventions$NamingRequestor;->firstPrefixResultsCount:I

    new-array v2, v0, [[C

    iput-object v2, p0, Lorg/eclipse/jdt/core/NamingConventions$NamingRequestor;->prefixResults:[[C

    iput v1, p0, Lorg/eclipse/jdt/core/NamingConventions$NamingRequestor;->prefixResultsCount:I

    new-array v2, v0, [[C

    iput-object v2, p0, Lorg/eclipse/jdt/core/NamingConventions$NamingRequestor;->firstSuffixResults:[[C

    iput v1, p0, Lorg/eclipse/jdt/core/NamingConventions$NamingRequestor;->firstSuffixResultsCount:I

    new-array v2, v0, [[C

    iput-object v2, p0, Lorg/eclipse/jdt/core/NamingConventions$NamingRequestor;->suffixResults:[[C

    iput v1, p0, Lorg/eclipse/jdt/core/NamingConventions$NamingRequestor;->suffixResultsCount:I

    new-array v0, v0, [[C

    iput-object v0, p0, Lorg/eclipse/jdt/core/NamingConventions$NamingRequestor;->otherResults:[[C

    iput v1, p0, Lorg/eclipse/jdt/core/NamingConventions$NamingRequestor;->otherResultsCount:I

    return-void
.end method


# virtual methods
.method public acceptNameWithPrefix([CZI)V
    .locals 2

    const/4 p3, 0x0

    if-eqz p2, :cond_1

    iget-object p2, p0, Lorg/eclipse/jdt/core/NamingConventions$NamingRequestor;->firstPrefixResults:[[C

    array-length v0, p2

    iget v1, p0, Lorg/eclipse/jdt/core/NamingConventions$NamingRequestor;->firstPrefixResultsCount:I

    if-ne v0, v1, :cond_0

    mul-int/lit8 v1, v0, 0x2

    new-array v1, v1, [[C

    iput-object v1, p0, Lorg/eclipse/jdt/core/NamingConventions$NamingRequestor;->firstPrefixResults:[[C

    invoke-static {p2, p3, v1, p3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_0
    iget-object p2, p0, Lorg/eclipse/jdt/core/NamingConventions$NamingRequestor;->firstPrefixResults:[[C

    iget p3, p0, Lorg/eclipse/jdt/core/NamingConventions$NamingRequestor;->firstPrefixResultsCount:I

    add-int/lit8 v0, p3, 0x1

    iput v0, p0, Lorg/eclipse/jdt/core/NamingConventions$NamingRequestor;->firstPrefixResultsCount:I

    aput-object p1, p2, p3

    goto :goto_0

    :cond_1
    iget-object p2, p0, Lorg/eclipse/jdt/core/NamingConventions$NamingRequestor;->prefixResults:[[C

    array-length v0, p2

    iget v1, p0, Lorg/eclipse/jdt/core/NamingConventions$NamingRequestor;->prefixResultsCount:I

    if-ne v0, v1, :cond_2

    mul-int/lit8 v1, v0, 0x2

    new-array v1, v1, [[C

    iput-object v1, p0, Lorg/eclipse/jdt/core/NamingConventions$NamingRequestor;->prefixResults:[[C

    invoke-static {p2, p3, v1, p3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_2
    iget-object p2, p0, Lorg/eclipse/jdt/core/NamingConventions$NamingRequestor;->prefixResults:[[C

    iget p3, p0, Lorg/eclipse/jdt/core/NamingConventions$NamingRequestor;->prefixResultsCount:I

    add-int/lit8 v0, p3, 0x1

    iput v0, p0, Lorg/eclipse/jdt/core/NamingConventions$NamingRequestor;->prefixResultsCount:I

    aput-object p1, p2, p3

    :goto_0
    return-void
.end method

.method public acceptNameWithPrefixAndSuffix([CZZI)V
    .locals 1

    const/4 p4, 0x0

    if-eqz p2, :cond_1

    if-eqz p3, :cond_1

    iget-object p2, p0, Lorg/eclipse/jdt/core/NamingConventions$NamingRequestor;->firstPrefixAndFirstSuffixResults:[[C

    array-length p3, p2

    iget v0, p0, Lorg/eclipse/jdt/core/NamingConventions$NamingRequestor;->firstPrefixAndFirstSuffixResultsCount:I

    if-ne p3, v0, :cond_0

    mul-int/lit8 v0, p3, 0x2

    new-array v0, v0, [[C

    iput-object v0, p0, Lorg/eclipse/jdt/core/NamingConventions$NamingRequestor;->firstPrefixAndFirstSuffixResults:[[C

    invoke-static {p2, p4, v0, p4, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_0
    iget-object p2, p0, Lorg/eclipse/jdt/core/NamingConventions$NamingRequestor;->firstPrefixAndFirstSuffixResults:[[C

    iget p3, p0, Lorg/eclipse/jdt/core/NamingConventions$NamingRequestor;->firstPrefixAndFirstSuffixResultsCount:I

    add-int/lit8 p4, p3, 0x1

    iput p4, p0, Lorg/eclipse/jdt/core/NamingConventions$NamingRequestor;->firstPrefixAndFirstSuffixResultsCount:I

    aput-object p1, p2, p3

    goto :goto_0

    :cond_1
    if-eqz p2, :cond_3

    iget-object p2, p0, Lorg/eclipse/jdt/core/NamingConventions$NamingRequestor;->firstPrefixAndSuffixResults:[[C

    array-length p3, p2

    iget v0, p0, Lorg/eclipse/jdt/core/NamingConventions$NamingRequestor;->firstPrefixAndSuffixResultsCount:I

    if-ne p3, v0, :cond_2

    mul-int/lit8 v0, p3, 0x2

    new-array v0, v0, [[C

    iput-object v0, p0, Lorg/eclipse/jdt/core/NamingConventions$NamingRequestor;->firstPrefixAndSuffixResults:[[C

    invoke-static {p2, p4, v0, p4, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_2
    iget-object p2, p0, Lorg/eclipse/jdt/core/NamingConventions$NamingRequestor;->firstPrefixAndSuffixResults:[[C

    iget p3, p0, Lorg/eclipse/jdt/core/NamingConventions$NamingRequestor;->firstPrefixAndSuffixResultsCount:I

    add-int/lit8 p4, p3, 0x1

    iput p4, p0, Lorg/eclipse/jdt/core/NamingConventions$NamingRequestor;->firstPrefixAndSuffixResultsCount:I

    aput-object p1, p2, p3

    goto :goto_0

    :cond_3
    if-eqz p3, :cond_5

    iget-object p2, p0, Lorg/eclipse/jdt/core/NamingConventions$NamingRequestor;->prefixAndFirstSuffixResults:[[C

    array-length p3, p2

    iget v0, p0, Lorg/eclipse/jdt/core/NamingConventions$NamingRequestor;->prefixAndFirstSuffixResultsCount:I

    if-ne p3, v0, :cond_4

    mul-int/lit8 v0, p3, 0x2

    new-array v0, v0, [[C

    iput-object v0, p0, Lorg/eclipse/jdt/core/NamingConventions$NamingRequestor;->prefixAndFirstSuffixResults:[[C

    invoke-static {p2, p4, v0, p4, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_4
    iget-object p2, p0, Lorg/eclipse/jdt/core/NamingConventions$NamingRequestor;->prefixAndFirstSuffixResults:[[C

    iget p3, p0, Lorg/eclipse/jdt/core/NamingConventions$NamingRequestor;->prefixAndFirstSuffixResultsCount:I

    add-int/lit8 p4, p3, 0x1

    iput p4, p0, Lorg/eclipse/jdt/core/NamingConventions$NamingRequestor;->prefixAndFirstSuffixResultsCount:I

    aput-object p1, p2, p3

    goto :goto_0

    :cond_5
    iget-object p2, p0, Lorg/eclipse/jdt/core/NamingConventions$NamingRequestor;->prefixAndSuffixResults:[[C

    array-length p3, p2

    iget v0, p0, Lorg/eclipse/jdt/core/NamingConventions$NamingRequestor;->prefixAndSuffixResultsCount:I

    if-ne p3, v0, :cond_6

    mul-int/lit8 v0, p3, 0x2

    new-array v0, v0, [[C

    iput-object v0, p0, Lorg/eclipse/jdt/core/NamingConventions$NamingRequestor;->prefixAndSuffixResults:[[C

    invoke-static {p2, p4, v0, p4, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_6
    iget-object p2, p0, Lorg/eclipse/jdt/core/NamingConventions$NamingRequestor;->prefixAndSuffixResults:[[C

    iget p3, p0, Lorg/eclipse/jdt/core/NamingConventions$NamingRequestor;->prefixAndSuffixResultsCount:I

    add-int/lit8 p4, p3, 0x1

    iput p4, p0, Lorg/eclipse/jdt/core/NamingConventions$NamingRequestor;->prefixAndSuffixResultsCount:I

    aput-object p1, p2, p3

    :goto_0
    return-void
.end method

.method public acceptNameWithSuffix([CZI)V
    .locals 2

    const/4 p3, 0x0

    if-eqz p2, :cond_1

    iget-object p2, p0, Lorg/eclipse/jdt/core/NamingConventions$NamingRequestor;->firstSuffixResults:[[C

    array-length v0, p2

    iget v1, p0, Lorg/eclipse/jdt/core/NamingConventions$NamingRequestor;->firstSuffixResultsCount:I

    if-ne v0, v1, :cond_0

    mul-int/lit8 v1, v0, 0x2

    new-array v1, v1, [[C

    iput-object v1, p0, Lorg/eclipse/jdt/core/NamingConventions$NamingRequestor;->firstSuffixResults:[[C

    invoke-static {p2, p3, v1, p3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_0
    iget-object p2, p0, Lorg/eclipse/jdt/core/NamingConventions$NamingRequestor;->firstSuffixResults:[[C

    iget p3, p0, Lorg/eclipse/jdt/core/NamingConventions$NamingRequestor;->firstSuffixResultsCount:I

    add-int/lit8 v0, p3, 0x1

    iput v0, p0, Lorg/eclipse/jdt/core/NamingConventions$NamingRequestor;->firstSuffixResultsCount:I

    aput-object p1, p2, p3

    goto :goto_0

    :cond_1
    iget-object p2, p0, Lorg/eclipse/jdt/core/NamingConventions$NamingRequestor;->suffixResults:[[C

    array-length v0, p2

    iget v1, p0, Lorg/eclipse/jdt/core/NamingConventions$NamingRequestor;->suffixResultsCount:I

    if-ne v0, v1, :cond_2

    mul-int/lit8 v1, v0, 0x2

    new-array v1, v1, [[C

    iput-object v1, p0, Lorg/eclipse/jdt/core/NamingConventions$NamingRequestor;->suffixResults:[[C

    invoke-static {p2, p3, v1, p3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_2
    iget-object p2, p0, Lorg/eclipse/jdt/core/NamingConventions$NamingRequestor;->suffixResults:[[C

    iget p3, p0, Lorg/eclipse/jdt/core/NamingConventions$NamingRequestor;->suffixResultsCount:I

    add-int/lit8 v0, p3, 0x1

    iput v0, p0, Lorg/eclipse/jdt/core/NamingConventions$NamingRequestor;->suffixResultsCount:I

    aput-object p1, p2, p3

    :goto_0
    return-void
.end method

.method public acceptNameWithoutPrefixAndSuffix([CI)V
    .locals 3

    iget-object p2, p0, Lorg/eclipse/jdt/core/NamingConventions$NamingRequestor;->otherResults:[[C

    array-length v0, p2

    iget v1, p0, Lorg/eclipse/jdt/core/NamingConventions$NamingRequestor;->otherResultsCount:I

    if-ne v0, v1, :cond_0

    mul-int/lit8 v1, v0, 0x2

    new-array v1, v1, [[C

    iput-object v1, p0, Lorg/eclipse/jdt/core/NamingConventions$NamingRequestor;->otherResults:[[C

    const/4 v2, 0x0

    invoke-static {p2, v2, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_0
    iget-object p2, p0, Lorg/eclipse/jdt/core/NamingConventions$NamingRequestor;->otherResults:[[C

    iget v0, p0, Lorg/eclipse/jdt/core/NamingConventions$NamingRequestor;->otherResultsCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/eclipse/jdt/core/NamingConventions$NamingRequestor;->otherResultsCount:I

    aput-object p1, p2, v0

    return-void
.end method

.method public getResults()[[C
    .locals 5

    iget v0, p0, Lorg/eclipse/jdt/core/NamingConventions$NamingRequestor;->firstPrefixAndFirstSuffixResultsCount:I

    iget v1, p0, Lorg/eclipse/jdt/core/NamingConventions$NamingRequestor;->firstPrefixAndSuffixResultsCount:I

    add-int/2addr v1, v0

    iget v2, p0, Lorg/eclipse/jdt/core/NamingConventions$NamingRequestor;->prefixAndFirstSuffixResultsCount:I

    add-int/2addr v1, v2

    iget v2, p0, Lorg/eclipse/jdt/core/NamingConventions$NamingRequestor;->prefixAndSuffixResultsCount:I

    add-int/2addr v1, v2

    iget v2, p0, Lorg/eclipse/jdt/core/NamingConventions$NamingRequestor;->firstPrefixResultsCount:I

    add-int/2addr v1, v2

    iget v2, p0, Lorg/eclipse/jdt/core/NamingConventions$NamingRequestor;->prefixResultsCount:I

    add-int/2addr v1, v2

    iget v2, p0, Lorg/eclipse/jdt/core/NamingConventions$NamingRequestor;->firstSuffixResultsCount:I

    add-int/2addr v1, v2

    iget v2, p0, Lorg/eclipse/jdt/core/NamingConventions$NamingRequestor;->suffixResultsCount:I

    add-int/2addr v1, v2

    iget v2, p0, Lorg/eclipse/jdt/core/NamingConventions$NamingRequestor;->otherResultsCount:I

    add-int/2addr v1, v2

    new-array v1, v1, [[C

    iget-object v2, p0, Lorg/eclipse/jdt/core/NamingConventions$NamingRequestor;->firstPrefixAndFirstSuffixResults:[[C

    const/4 v3, 0x0

    invoke-static {v2, v3, v1, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v0, p0, Lorg/eclipse/jdt/core/NamingConventions$NamingRequestor;->firstPrefixAndFirstSuffixResultsCount:I

    iget-object v2, p0, Lorg/eclipse/jdt/core/NamingConventions$NamingRequestor;->firstPrefixAndSuffixResults:[[C

    iget v4, p0, Lorg/eclipse/jdt/core/NamingConventions$NamingRequestor;->firstPrefixAndSuffixResultsCount:I

    invoke-static {v2, v3, v1, v0, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v2, p0, Lorg/eclipse/jdt/core/NamingConventions$NamingRequestor;->firstPrefixAndSuffixResultsCount:I

    add-int/2addr v0, v2

    iget-object v2, p0, Lorg/eclipse/jdt/core/NamingConventions$NamingRequestor;->prefixAndFirstSuffixResults:[[C

    iget v4, p0, Lorg/eclipse/jdt/core/NamingConventions$NamingRequestor;->prefixAndFirstSuffixResultsCount:I

    invoke-static {v2, v3, v1, v0, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v2, p0, Lorg/eclipse/jdt/core/NamingConventions$NamingRequestor;->prefixAndFirstSuffixResultsCount:I

    add-int/2addr v0, v2

    iget-object v2, p0, Lorg/eclipse/jdt/core/NamingConventions$NamingRequestor;->prefixAndSuffixResults:[[C

    iget v4, p0, Lorg/eclipse/jdt/core/NamingConventions$NamingRequestor;->prefixAndSuffixResultsCount:I

    invoke-static {v2, v3, v1, v0, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v2, p0, Lorg/eclipse/jdt/core/NamingConventions$NamingRequestor;->prefixAndSuffixResultsCount:I

    add-int/2addr v0, v2

    iget-object v2, p0, Lorg/eclipse/jdt/core/NamingConventions$NamingRequestor;->firstPrefixResults:[[C

    iget v4, p0, Lorg/eclipse/jdt/core/NamingConventions$NamingRequestor;->firstPrefixResultsCount:I

    invoke-static {v2, v3, v1, v0, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v2, p0, Lorg/eclipse/jdt/core/NamingConventions$NamingRequestor;->firstPrefixResultsCount:I

    add-int/2addr v0, v2

    iget-object v2, p0, Lorg/eclipse/jdt/core/NamingConventions$NamingRequestor;->prefixResults:[[C

    iget v4, p0, Lorg/eclipse/jdt/core/NamingConventions$NamingRequestor;->prefixResultsCount:I

    invoke-static {v2, v3, v1, v0, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v2, p0, Lorg/eclipse/jdt/core/NamingConventions$NamingRequestor;->prefixResultsCount:I

    add-int/2addr v0, v2

    iget-object v2, p0, Lorg/eclipse/jdt/core/NamingConventions$NamingRequestor;->firstSuffixResults:[[C

    iget v4, p0, Lorg/eclipse/jdt/core/NamingConventions$NamingRequestor;->firstSuffixResultsCount:I

    invoke-static {v2, v3, v1, v0, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v2, p0, Lorg/eclipse/jdt/core/NamingConventions$NamingRequestor;->firstSuffixResultsCount:I

    add-int/2addr v0, v2

    iget-object v2, p0, Lorg/eclipse/jdt/core/NamingConventions$NamingRequestor;->suffixResults:[[C

    iget v4, p0, Lorg/eclipse/jdt/core/NamingConventions$NamingRequestor;->suffixResultsCount:I

    invoke-static {v2, v3, v1, v0, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v2, p0, Lorg/eclipse/jdt/core/NamingConventions$NamingRequestor;->suffixResultsCount:I

    add-int/2addr v0, v2

    iget-object v2, p0, Lorg/eclipse/jdt/core/NamingConventions$NamingRequestor;->otherResults:[[C

    iget v4, p0, Lorg/eclipse/jdt/core/NamingConventions$NamingRequestor;->otherResultsCount:I

    invoke-static {v2, v3, v1, v0, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v1
.end method
