.class public Lorg/eclipse/jdt/internal/core/util/LRUCache$Stats;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/eclipse/jdt/internal/core/util/LRUCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Stats"
.end annotation


# instance fields
.field private counterIndex:I

.field private counters:[I

.field final synthetic this$0:Lorg/eclipse/jdt/internal/core/util/LRUCache;

.field private timestamps:[J


# direct methods
.method public constructor <init>(Lorg/eclipse/jdt/internal/core/util/LRUCache;)V
    .locals 1

    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/util/LRUCache$Stats;->this$0:Lorg/eclipse/jdt/internal/core/util/LRUCache;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 p1, 0x14

    new-array v0, p1, [I

    iput-object v0, p0, Lorg/eclipse/jdt/internal/core/util/LRUCache$Stats;->counters:[I

    new-array p1, p1, [J

    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/util/LRUCache$Stats;->timestamps:[J

    const/4 p1, -0x1

    iput p1, p0, Lorg/eclipse/jdt/internal/core/util/LRUCache$Stats;->counterIndex:I

    return-void
.end method

.method private add(I)V
    .locals 5

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget v2, p0, Lorg/eclipse/jdt/internal/core/util/LRUCache$Stats;->counterIndex:I

    if-le v1, v2, :cond_1

    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/util/LRUCache$Stats;->counters:[I

    array-length v3, v1

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lorg/eclipse/jdt/internal/core/util/LRUCache$Stats;->counterIndex:I

    if-ne v2, v3, :cond_0

    array-length v2, v1

    mul-int/lit8 v2, v2, 0x2

    new-array v4, v2, [I

    iput-object v4, p0, Lorg/eclipse/jdt/internal/core/util/LRUCache$Stats;->counters:[I

    invoke-static {v1, v0, v4, v0, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/util/LRUCache$Stats;->timestamps:[J

    new-array v2, v2, [J

    iput-object v2, p0, Lorg/eclipse/jdt/internal/core/util/LRUCache$Stats;->timestamps:[J

    invoke-static {v1, v0, v2, v0, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/util/LRUCache$Stats;->counters:[I

    iget v1, p0, Lorg/eclipse/jdt/internal/core/util/LRUCache$Stats;->counterIndex:I

    aput p1, v0, v1

    iget-object p1, p0, Lorg/eclipse/jdt/internal/core/util/LRUCache$Stats;->timestamps:[J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    aput-wide v2, p1, v1

    return-void

    :cond_1
    iget-object v2, p0, Lorg/eclipse/jdt/internal/core/util/LRUCache$Stats;->counters:[I

    aget v2, v2, v1

    if-ne v2, p1, :cond_2

    return-void

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private getAverageAge(JIJ)Ljava/lang/String;
    .locals 6

    if-nez p3, :cond_0

    const-string p1, "N/A"

    return-object p1

    :cond_0
    int-to-long v0, p3

    div-long/2addr p1, v0

    sub-long/2addr p4, p1

    const-wide/16 p1, 0x3e8

    div-long/2addr p4, p1

    const-wide/16 p1, 0x3c

    cmp-long p3, p4, p1

    const/4 v0, 0x0

    if-lez p3, :cond_3

    div-long v1, p4, p1

    mul-long v3, v1, p1

    sub-long/2addr p4, v3

    long-to-int p3, p4

    cmp-long p4, v1, p1

    if-lez p4, :cond_2

    div-long p4, v1, p1

    mul-long/2addr p1, p4

    sub-long/2addr v1, p1

    long-to-int p1, v1

    const-wide/16 v1, 0x18

    cmp-long p2, p4, v1

    if-lez p2, :cond_1

    div-long v3, p4, v1

    mul-long/2addr v1, v3

    sub-long/2addr p4, v1

    long-to-int v0, p4

    long-to-int p2, v3

    move v5, v0

    move v0, p2

    move p2, v5

    goto :goto_0

    :cond_1
    long-to-int p2, p4

    goto :goto_0

    :cond_2
    long-to-int p1, v1

    move p2, v0

    goto :goto_0

    :cond_3
    long-to-int p3, p4

    move p1, v0

    move p2, p1

    :goto_0
    new-instance p4, Ljava/lang/StringBuffer;

    invoke-direct {p4}, Ljava/lang/StringBuffer;-><init>()V

    if-lez v0, :cond_4

    invoke-virtual {p4, v0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string p5, " days "

    invoke-virtual {p4, p5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_4
    if-lez p2, :cond_5

    invoke-virtual {p4, p2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string p2, " hours "

    invoke-virtual {p4, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_5
    if-lez p1, :cond_6

    invoke-virtual {p4, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string p1, " minutes "

    invoke-virtual {p4, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_6
    invoke-virtual {p4, p3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string p1, " seconds"

    invoke-virtual {p4, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private getTimestamps(I)J
    .locals 2

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lorg/eclipse/jdt/internal/core/util/LRUCache$Stats;->counterIndex:I

    if-le v0, v1, :cond_0

    const-wide/16 v0, -0x1

    return-wide v0

    :cond_0
    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/util/LRUCache$Stats;->counters:[I

    aget v1, v1, v0

    if-lt v1, p1, :cond_1

    iget-object p1, p0, Lorg/eclipse/jdt/internal/core/util/LRUCache$Stats;->timestamps:[J

    aget-wide v0, p1, v0

    return-wide v0

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private removeCountersOlderThan(I)V
    .locals 5

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget v2, p0, Lorg/eclipse/jdt/internal/core/util/LRUCache$Stats;->counterIndex:I

    if-le v1, v2, :cond_0

    return-void

    :cond_0
    iget-object v3, p0, Lorg/eclipse/jdt/internal/core/util/LRUCache$Stats;->counters:[I

    aget v4, v3, v1

    if-lt v4, p1, :cond_2

    if-lez v1, :cond_1

    sub-int/2addr v2, v1

    add-int/lit8 v2, v2, 0x1

    invoke-static {v3, v1, v3, v0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object p1, p0, Lorg/eclipse/jdt/internal/core/util/LRUCache$Stats;->timestamps:[J

    invoke-static {p1, v1, p1, v0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput v2, p0, Lorg/eclipse/jdt/internal/core/util/LRUCache$Stats;->counterIndex:I

    :cond_1
    return-void

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method


# virtual methods
.method public getOldestElement()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/util/LRUCache$Stats;->this$0:Lorg/eclipse/jdt/internal/core/util/LRUCache;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/core/util/LRUCache;->getOldestElement()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getOldestTimestamps()J
    .locals 2

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/util/LRUCache$Stats;->this$0:Lorg/eclipse/jdt/internal/core/util/LRUCache;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/core/util/LRUCache;->getOldestTimestampCounter()I

    move-result v0

    invoke-direct {p0, v0}, Lorg/eclipse/jdt/internal/core/util/LRUCache$Stats;->getTimestamps(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public declared-synchronized printStats()Ljava/lang/String;
    .locals 18

    move-object/from16 v7, p0

    monitor-enter p0

    :try_start_0
    iget-object v0, v7, Lorg/eclipse/jdt/internal/core/util/LRUCache$Stats;->this$0:Lorg/eclipse/jdt/internal/core/util/LRUCache;

    iget v0, v0, Lorg/eclipse/jdt/internal/core/util/LRUCache;->currentSpace:I

    if-nez v0, :cond_0

    const-string v0, "No elements in cache"
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    goto/16 :goto_3

    :cond_0
    :try_start_1
    new-instance v8, Ljava/lang/StringBuffer;

    invoke-direct {v8}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "Number of elements in cache: "

    invoke-virtual {v8, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const/4 v9, 0x5

    div-int/2addr v0, v9

    const-string v1, "\n("

    invoke-virtual {v8, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v1, " groups of "

    invoke-virtual {v8, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v1, " elements)"

    invoke-virtual {v8, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "\n\nAverage age:"

    invoke-virtual {v8, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, v7, Lorg/eclipse/jdt/internal/core/util/LRUCache$Stats;->this$0:Lorg/eclipse/jdt/internal/core/util/LRUCache;

    iget-object v1, v1, Lorg/eclipse/jdt/internal/core/util/LRUCache;->entryQueueTail:Lorg/eclipse/jdt/internal/core/util/LRUCache$LRUCacheEntry;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    const/4 v12, 0x0

    const-wide/16 v13, 0x0

    const/4 v15, 0x1

    move-object v5, v1

    move v4, v12

    move-wide v2, v13

    move v1, v15

    :goto_0
    if-nez v5, :cond_1

    const-string v0, "\nGroup "

    invoke-virtual {v8, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v0, " (youngest)\t: "

    invoke-virtual {v8, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-object/from16 v1, p0

    move-wide v5, v10

    invoke-direct/range {v1 .. v6}, Lorg/eclipse/jdt/internal/core/util/LRUCache$Stats;->getAverageAge(JIJ)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v8}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v0

    :cond_1
    :try_start_2
    iget v6, v5, Lorg/eclipse/jdt/internal/core/util/LRUCache$LRUCacheEntry;->timestamp:I

    invoke-direct {v7, v6}, Lorg/eclipse/jdt/internal/core/util/LRUCache$Stats;->getTimestamps(I)J

    move-result-wide v16

    cmp-long v6, v16, v13

    if-lez v6, :cond_2

    add-long v2, v2, v16

    add-int/lit8 v4, v4, 0x1

    :cond_2
    if-lt v4, v0, :cond_4

    if-ge v1, v9, :cond_4

    const-string v6, "\nGroup "

    invoke-virtual {v8, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v8, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    if-ne v1, v15, :cond_3

    const-string v6, " (oldest)\t: "

    invoke-virtual {v8, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    :cond_3
    const-string v6, "\t\t: "

    invoke-virtual {v8, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :goto_1
    add-int/lit8 v16, v1, 0x1

    move-object/from16 v1, p0

    move-object v9, v5

    move-wide v5, v10

    invoke-direct/range {v1 .. v6}, Lorg/eclipse/jdt/internal/core/util/LRUCache$Stats;->getAverageAge(JIJ)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move v4, v12

    move-wide v2, v13

    move/from16 v1, v16

    goto :goto_2

    :cond_4
    move-object v9, v5

    :goto_2
    iget-object v5, v9, Lorg/eclipse/jdt/internal/core/util/LRUCache$LRUCacheEntry;->previous:Lorg/eclipse/jdt/internal/core/util/LRUCache$LRUCacheEntry;

    const/4 v9, 0x5

    goto :goto_0

    :goto_3
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method public declared-synchronized snapshot()V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/util/LRUCache$Stats;->this$0:Lorg/eclipse/jdt/internal/core/util/LRUCache;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/core/util/LRUCache;->getOldestTimestampCounter()I

    move-result v0

    invoke-direct {p0, v0}, Lorg/eclipse/jdt/internal/core/util/LRUCache$Stats;->removeCountersOlderThan(I)V

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/util/LRUCache$Stats;->this$0:Lorg/eclipse/jdt/internal/core/util/LRUCache;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/core/util/LRUCache;->getNewestTimestampCounter()I

    move-result v0

    invoke-direct {p0, v0}, Lorg/eclipse/jdt/internal/core/util/LRUCache$Stats;->add(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
