.class public Lorg/eclipse/jdt/internal/core/search/SubTypeSearchJob;
.super Lorg/eclipse/jdt/internal/core/search/PatternSearchJob;
.source "SourceFile"


# instance fields
.field indexes:Lorg/eclipse/jdt/internal/compiler/util/SimpleSet;


# direct methods
.method public constructor <init>(Lorg/eclipse/jdt/core/search/SearchPattern;Lorg/eclipse/jdt/core/search/SearchParticipant;Lorg/eclipse/jdt/core/search/IJavaSearchScope;Lorg/eclipse/jdt/internal/core/search/IndexQueryRequestor;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lorg/eclipse/jdt/internal/core/search/PatternSearchJob;-><init>(Lorg/eclipse/jdt/core/search/SearchPattern;Lorg/eclipse/jdt/core/search/SearchParticipant;Lorg/eclipse/jdt/core/search/IJavaSearchScope;Lorg/eclipse/jdt/internal/core/search/IndexQueryRequestor;)V

    new-instance p1, Lorg/eclipse/jdt/internal/compiler/util/SimpleSet;

    const/4 p2, 0x5

    invoke-direct {p1, p2}, Lorg/eclipse/jdt/internal/compiler/util/SimpleSet;-><init>(I)V

    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/search/SubTypeSearchJob;->indexes:Lorg/eclipse/jdt/internal/compiler/util/SimpleSet;

    return-void
.end method


# virtual methods
.method public finished()V
    .locals 4

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/search/SubTypeSearchJob;->indexes:Lorg/eclipse/jdt/internal/compiler/util/SimpleSet;

    iget-object v0, v0, Lorg/eclipse/jdt/internal/compiler/util/SimpleSet;->values:[Ljava/lang/Object;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-lt v2, v1, :cond_0

    return-void

    :cond_0
    aget-object v3, v0, v2

    if-eqz v3, :cond_1

    check-cast v3, Lorg/eclipse/jdt/internal/core/index/Index;

    invoke-virtual {v3}, Lorg/eclipse/jdt/internal/core/index/Index;->stopQuery()V

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public getIndexes(Lorg/eclipse/core/runtime/IProgressMonitor;)[Lorg/eclipse/jdt/internal/core/index/Index;
    .locals 2

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/search/SubTypeSearchJob;->indexes:Lorg/eclipse/jdt/internal/compiler/util/SimpleSet;

    iget v1, v0, Lorg/eclipse/jdt/internal/compiler/util/SimpleSet;->elementSize:I

    if-nez v1, :cond_0

    invoke-super {p0, p1}, Lorg/eclipse/jdt/internal/core/search/PatternSearchJob;->getIndexes(Lorg/eclipse/core/runtime/IProgressMonitor;)[Lorg/eclipse/jdt/internal/core/index/Index;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x1

    iput-boolean p1, p0, Lorg/eclipse/jdt/internal/core/search/PatternSearchJob;->areIndexesReady:Z

    new-array p1, v1, [Lorg/eclipse/jdt/internal/core/index/Index;

    invoke-virtual {v0, p1}, Lorg/eclipse/jdt/internal/compiler/util/SimpleSet;->asArray([Ljava/lang/Object;)V

    return-object p1
.end method

.method public search(Lorg/eclipse/jdt/internal/core/index/Index;Lorg/eclipse/core/runtime/IProgressMonitor;)Z
    .locals 1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/search/SubTypeSearchJob;->indexes:Lorg/eclipse/jdt/internal/compiler/util/SimpleSet;

    invoke-virtual {v0, p1}, Lorg/eclipse/jdt/internal/compiler/util/SimpleSet;->addIfNotIncluded(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, p1, :cond_1

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/core/index/Index;->startQuery()V

    :cond_1
    invoke-super {p0, p1, p2}, Lorg/eclipse/jdt/internal/core/search/PatternSearchJob;->search(Lorg/eclipse/jdt/internal/core/index/Index;Lorg/eclipse/core/runtime/IProgressMonitor;)Z

    move-result p1

    return p1
.end method
