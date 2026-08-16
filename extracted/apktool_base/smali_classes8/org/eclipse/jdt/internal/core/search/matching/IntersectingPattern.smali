.class public abstract Lorg/eclipse/jdt/internal/core/search/matching/IntersectingPattern;
.super Lorg/eclipse/jdt/internal/core/search/matching/JavaSearchPattern;
.source "SourceFile"


# direct methods
.method public constructor <init>(II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/eclipse/jdt/internal/core/search/matching/JavaSearchPattern;-><init>(II)V

    return-void
.end method


# virtual methods
.method public findIndexMatches(Lorg/eclipse/jdt/internal/core/index/Index;Lorg/eclipse/jdt/internal/core/search/IndexQueryRequestor;Lorg/eclipse/jdt/core/search/SearchParticipant;Lorg/eclipse/jdt/core/search/IJavaSearchScope;Lorg/eclipse/core/runtime/IProgressMonitor;)V
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object v1, p1

    if-eqz p5, :cond_1

    invoke-interface/range {p5 .. p5}, Lorg/eclipse/core/runtime/IProgressMonitor;->isCanceled()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Lorg/eclipse/core/runtime/OperationCanceledException;

    invoke-direct {v0}, Lorg/eclipse/core/runtime/OperationCanceledException;-><init>()V

    throw v0

    :cond_1
    :goto_0
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/search/matching/IntersectingPattern;->resetQuery()V

    :try_start_0
    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/core/index/Index;->startQuery()V

    const/4 v0, 0x0

    :goto_1
    invoke-virtual {p0}, Lorg/eclipse/jdt/core/search/SearchPattern;->currentPattern()Lorg/eclipse/jdt/core/search/SearchPattern;

    move-result-object v2

    invoke-virtual {v2, p1}, Lorg/eclipse/jdt/core/search/SearchPattern;->queryIn(Lorg/eclipse/jdt/internal/core/index/Index;)[Lorg/eclipse/jdt/internal/core/index/EntryResult;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v3, :cond_2

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/core/index/Index;->stopQuery()V

    return-void

    :cond_2
    :try_start_1
    invoke-virtual {v2}, Lorg/eclipse/jdt/core/search/SearchPattern;->getBlankPattern()Lorg/eclipse/jdt/core/search/SearchPattern;

    move-result-object v4

    new-instance v5, Lorg/eclipse/jdt/internal/compiler/util/SimpleSet;

    const/4 v6, 0x3

    invoke-direct {v5, v6}, Lorg/eclipse/jdt/internal/compiler/util/SimpleSet;-><init>(I)V

    array-length v6, v3

    const/4 v7, 0x0

    move v8, v7

    :goto_2
    if-lt v8, v6, :cond_7

    iget v0, v5, Lorg/eclipse/jdt/internal/compiler/util/SimpleSet;->elementSize:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v0, :cond_3

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/core/index/Index;->stopQuery()V

    return-void

    :cond_3
    :try_start_2
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/search/matching/IntersectingPattern;->hasNextQuery()Z

    move-result v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-nez v0, :cond_6

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/core/index/Index;->stopQuery()V

    iget-object v0, v1, Lorg/eclipse/jdt/internal/core/index/Index;->containerPath:Ljava/lang/String;

    iget-char v10, v1, Lorg/eclipse/jdt/internal/core/index/Index;->separator:C

    iget-object v11, v5, Lorg/eclipse/jdt/internal/compiler/util/SimpleSet;->values:[Ljava/lang/Object;

    array-length v12, v11

    move v13, v7

    :goto_3
    if-lt v13, v12, :cond_4

    return-void

    :cond_4
    aget-object v1, v11, v13

    if-eqz v1, :cond_5

    move-object v2, v1

    check-cast v2, Ljava/lang/String;

    const/4 v5, 0x0

    move-object v1, p0

    move-object v3, v0

    move v4, v10

    move-object/from16 v6, p2

    move-object/from16 v7, p3

    move-object/from16 v8, p4

    move-object/from16 v9, p5

    invoke-virtual/range {v1 .. v9}, Lorg/eclipse/jdt/core/search/SearchPattern;->acceptMatch(Ljava/lang/String;Ljava/lang/String;CLorg/eclipse/jdt/core/search/SearchPattern;Lorg/eclipse/jdt/internal/core/search/IndexQueryRequestor;Lorg/eclipse/jdt/core/search/SearchParticipant;Lorg/eclipse/jdt/core/search/IJavaSearchScope;Lorg/eclipse/core/runtime/IProgressMonitor;)V

    :cond_5
    add-int/lit8 v13, v13, 0x1

    goto :goto_3

    :cond_6
    move-object v0, v5

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_8

    :cond_7
    if-eqz p5, :cond_9

    :try_start_3
    invoke-interface/range {p5 .. p5}, Lorg/eclipse/core/runtime/IProgressMonitor;->isCanceled()Z

    move-result v9

    if-nez v9, :cond_8

    goto :goto_4

    :cond_8
    new-instance v0, Lorg/eclipse/core/runtime/OperationCanceledException;

    invoke-direct {v0}, Lorg/eclipse/core/runtime/OperationCanceledException;-><init>()V

    throw v0

    :cond_9
    :goto_4
    aget-object v9, v3, v8

    invoke-virtual {v9}, Lorg/eclipse/jdt/internal/core/index/EntryResult;->getWord()[C

    move-result-object v10

    invoke-virtual {v4, v10}, Lorg/eclipse/jdt/core/search/SearchPattern;->decodeIndexKey([C)V

    invoke-virtual {v2, v4}, Lorg/eclipse/jdt/core/search/SearchPattern;->matchesDecodedKey(Lorg/eclipse/jdt/core/search/SearchPattern;)Z

    move-result v10

    if-eqz v10, :cond_e

    invoke-virtual {v9, p1}, Lorg/eclipse/jdt/internal/core/index/EntryResult;->getDocumentNames(Lorg/eclipse/jdt/internal/core/index/Index;)[Ljava/lang/String;

    move-result-object v9

    if-eqz v0, :cond_c

    array-length v10, v9

    move v11, v7

    :goto_5
    if-lt v11, v10, :cond_a

    goto :goto_7

    :cond_a
    aget-object v12, v9, v11

    invoke-virtual {v0, v12}, Lorg/eclipse/jdt/internal/compiler/util/SimpleSet;->includes(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_b

    aget-object v12, v9, v11

    invoke-virtual {v5, v12}, Lorg/eclipse/jdt/internal/compiler/util/SimpleSet;->add(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_b
    add-int/lit8 v11, v11, 0x1

    goto :goto_5

    :cond_c
    array-length v10, v9

    move v11, v7

    :goto_6
    if-lt v11, v10, :cond_d

    goto :goto_7

    :cond_d
    aget-object v12, v9, v11

    invoke-virtual {v5, v12}, Lorg/eclipse/jdt/internal/compiler/util/SimpleSet;->add(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    add-int/lit8 v11, v11, 0x1

    goto :goto_6

    :cond_e
    :goto_7
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_2

    :goto_8
    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/core/index/Index;->stopQuery()V

    throw v0
.end method

.method public abstract hasNextQuery()Z
.end method

.method public abstract resetQuery()V
.end method
