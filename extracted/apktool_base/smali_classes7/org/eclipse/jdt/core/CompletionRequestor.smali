.class public abstract Lorg/eclipse/jdt/core/CompletionRequestor;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private favoriteReferences:[Ljava/lang/String;

.field private ignoreSet:I

.field private requireExtendedContext:Z

.field private requiredProposalAllowSet:[I


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lorg/eclipse/jdt/core/CompletionRequestor;-><init>(Z)V

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 2

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 3
    iput v0, p0, Lorg/eclipse/jdt/core/CompletionRequestor;->ignoreSet:I

    const/4 v1, 0x0

    .line 4
    iput-object v1, p0, Lorg/eclipse/jdt/core/CompletionRequestor;->requiredProposalAllowSet:[I

    .line 5
    iput-boolean v0, p0, Lorg/eclipse/jdt/core/CompletionRequestor;->requireExtendedContext:Z

    if-eqz p1, :cond_0

    const/4 v0, -0x1

    .line 6
    :cond_0
    iput v0, p0, Lorg/eclipse/jdt/core/CompletionRequestor;->ignoreSet:I

    return-void
.end method


# virtual methods
.method public abstract accept(Lorg/eclipse/jdt/core/CompletionProposal;)V
.end method

.method public acceptContext(Lorg/eclipse/jdt/core/CompletionContext;)V
    .locals 0

    return-void
.end method

.method public beginReporting()V
    .locals 0

    return-void
.end method

.method public completionFailure(Lorg/eclipse/jdt/core/compiler/IProblem;)V
    .locals 0

    return-void
.end method

.method public endReporting()V
    .locals 0

    return-void
.end method

.method public getFavoriteReferences()[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/core/CompletionRequestor;->favoriteReferences:[Ljava/lang/String;

    return-object v0
.end method

.method public isAllowingRequiredProposals(II)Z
    .locals 3

    const/4 v0, 0x1

    if-lt p1, v0, :cond_3

    const/16 v1, 0x1d

    if-gt p1, v1, :cond_3

    if-lt p2, v0, :cond_2

    if-gt p2, v1, :cond_2

    iget-object v1, p0, Lorg/eclipse/jdt/core/CompletionRequestor;->requiredProposalAllowSet:[I

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return v2

    :cond_0
    aget p1, v1, p1

    shl-int p2, v0, p2

    and-int/2addr p1, p2

    if-eqz p1, :cond_1

    return v0

    :cond_1
    return v2

    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Unknown required kind of completion proposal: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Unknown kind of completion proposal: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public isExtendedContextRequired()Z
    .locals 1

    iget-boolean v0, p0, Lorg/eclipse/jdt/core/CompletionRequestor;->requireExtendedContext:Z

    return v0
.end method

.method public isIgnored(I)Z
    .locals 3

    const/4 v0, 0x1

    if-lt p1, v0, :cond_1

    const/16 v1, 0x1d

    if-gt p1, v1, :cond_1

    iget v1, p0, Lorg/eclipse/jdt/core/CompletionRequestor;->ignoreSet:I

    shl-int p1, v0, p1

    and-int/2addr p1, v1

    if-eqz p1, :cond_0

    return v0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unknown kind of completion proposal: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public isTestCodeExcluded()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public setAllowsRequiredProposals(IIZ)V
    .locals 2

    const/4 v0, 0x1

    if-lt p1, v0, :cond_3

    const/16 v1, 0x1d

    if-gt p1, v1, :cond_3

    if-lt p2, v0, :cond_2

    if-gt p2, v1, :cond_2

    iget-object v1, p0, Lorg/eclipse/jdt/core/CompletionRequestor;->requiredProposalAllowSet:[I

    if-nez v1, :cond_0

    const/16 v1, 0x1e

    new-array v1, v1, [I

    iput-object v1, p0, Lorg/eclipse/jdt/core/CompletionRequestor;->requiredProposalAllowSet:[I

    :cond_0
    if-eqz p3, :cond_1

    iget-object p3, p0, Lorg/eclipse/jdt/core/CompletionRequestor;->requiredProposalAllowSet:[I

    aget v1, p3, p1

    shl-int p2, v0, p2

    or-int/2addr p2, v1

    aput p2, p3, p1

    goto :goto_0

    :cond_1
    iget-object p3, p0, Lorg/eclipse/jdt/core/CompletionRequestor;->requiredProposalAllowSet:[I

    aget v1, p3, p1

    shl-int p2, v0, p2

    not-int p2, p2

    and-int/2addr p2, v1

    aput p2, p3, p1

    :goto_0
    return-void

    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    const-string v0, "Unknown required kind of completion proposal: "

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    const-string v0, "Unknown kind of completion proposal: "

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setFavoriteReferences([Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/eclipse/jdt/core/CompletionRequestor;->favoriteReferences:[Ljava/lang/String;

    return-void
.end method

.method public setIgnored(IZ)V
    .locals 2

    const/4 v0, 0x1

    if-lt p1, v0, :cond_1

    const/16 v1, 0x1d

    if-gt p1, v1, :cond_1

    if-eqz p2, :cond_0

    iget p2, p0, Lorg/eclipse/jdt/core/CompletionRequestor;->ignoreSet:I

    shl-int p1, v0, p1

    or-int/2addr p1, p2

    iput p1, p0, Lorg/eclipse/jdt/core/CompletionRequestor;->ignoreSet:I

    goto :goto_0

    :cond_0
    iget p2, p0, Lorg/eclipse/jdt/core/CompletionRequestor;->ignoreSet:I

    shl-int p1, v0, p1

    not-int p1, p1

    and-int/2addr p1, p2

    iput p1, p0, Lorg/eclipse/jdt/core/CompletionRequestor;->ignoreSet:I

    :goto_0
    return-void

    :cond_1
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Unknown kind of completion proposal: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public setRequireExtendedContext(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/eclipse/jdt/core/CompletionRequestor;->requireExtendedContext:Z

    return-void
.end method
