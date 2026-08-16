.class public abstract Lcom/ardor3d/util/stat/StatCollector;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field protected static final TO_MS:D

.field protected static current:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lcom/ardor3d/util/stat/StatType;",
            "Lcom/ardor3d/util/stat/StatValue;",
            ">;"
        }
    .end annotation
.end field

.field protected static historical:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/ardor3d/util/stat/MultiStatSample;",
            ">;"
        }
    .end annotation
.end field

.field protected static ignoreStats:Z

.field protected static lastSampleTime:D

.field protected static lastTimeCheckMS:D

.field protected static listeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/ardor3d/util/stat/StatListener;",
            ">;"
        }
    .end annotation
.end field

.field private static final logger:Ljava/util/logging/Logger;

.field protected static maxSamples:I

.field protected static pausedStartTime:J

.field protected static pausedTime:J

.field protected static sampleRateMS:D

.field protected static startOffset:D

.field protected static timeStatStack:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack<",
            "Lcom/ardor3d/util/stat/StatType;",
            ">;"
        }
    .end annotation
.end field

.field protected static timedStats:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Lcom/ardor3d/util/stat/StatType;",
            ">;"
        }
    .end annotation
.end field

.field protected static timer:Lcom/ardor3d/util/Timer;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const-class v0, Lcom/ardor3d/util/stat/StatCollector;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/ardor3d/util/stat/StatCollector;->logger:Ljava/util/logging/Logger;

    const/16 v0, 0x64

    sput v0, Lcom/ardor3d/util/stat/StatCollector;->maxSamples:I

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/ardor3d/util/stat/StatCollector;->current:Ljava/util/HashMap;

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/ardor3d/util/stat/StatCollector;->historical:Ljava/util/List;

    const-wide v0, 0x408f400000000000L    # 1000.0

    sput-wide v0, Lcom/ardor3d/util/stat/StatCollector;->sampleRateMS:D

    const-wide/16 v2, 0x0

    sput-wide v2, Lcom/ardor3d/util/stat/StatCollector;->lastSampleTime:D

    sput-wide v2, Lcom/ardor3d/util/stat/StatCollector;->lastTimeCheckMS:D

    invoke-static {}, Lcom/google/common/collect/M1;->q()Ljava/util/ArrayList;

    move-result-object v4

    sput-object v4, Lcom/ardor3d/util/stat/StatCollector;->listeners:Ljava/util/List;

    sput-wide v2, Lcom/ardor3d/util/stat/StatCollector;->startOffset:D

    const/4 v2, 0x0

    sput-boolean v2, Lcom/ardor3d/util/stat/StatCollector;->ignoreStats:Z

    new-instance v2, Ljava/util/Stack;

    invoke-direct {v2}, Ljava/util/Stack;-><init>()V

    sput-object v2, Lcom/ardor3d/util/stat/StatCollector;->timeStatStack:Ljava/util/Stack;

    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    sput-object v2, Lcom/ardor3d/util/stat/StatCollector;->timedStats:Ljava/util/HashSet;

    new-instance v2, Lcom/ardor3d/util/Timer;

    invoke-direct {v2}, Lcom/ardor3d/util/Timer;-><init>()V

    sput-object v2, Lcom/ardor3d/util/stat/StatCollector;->timer:Lcom/ardor3d/util/Timer;

    invoke-virtual {v2}, Lcom/ardor3d/util/Timer;->getResolution()J

    move-result-wide v2

    long-to-double v2, v2

    div-double/2addr v0, v2

    sput-wide v0, Lcom/ardor3d/util/stat/StatCollector;->TO_MS:D

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addStat(Lcom/ardor3d/util/stat/StatType;D)V
    .locals 3

    sget-boolean v0, Lcom/ardor3d/util/stat/StatCollector;->ignoreStats:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    sget-object v0, Lcom/ardor3d/util/stat/StatCollector;->current:Ljava/util/HashMap;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/ardor3d/util/stat/StatCollector;->current:Ljava/util/HashMap;

    invoke-virtual {v1, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ardor3d/util/stat/StatValue;

    if-nez v1, :cond_1

    new-instance v1, Lcom/ardor3d/util/stat/StatValue;

    invoke-direct {v1}, Lcom/ardor3d/util/stat/StatValue;-><init>()V

    sget-object v2, Lcom/ardor3d/util/stat/StatCollector;->current:Ljava/util/HashMap;

    invoke-virtual {v2, p0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_1
    :goto_0
    invoke-virtual {v1, p1, p2}, Lcom/ardor3d/util/stat/StatValue;->incrementValue(D)V

    invoke-virtual {v1}, Lcom/ardor3d/util/stat/StatValue;->incrementIterations()V

    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static addStatListener(Lcom/ardor3d/util/stat/StatListener;)V
    .locals 1

    sget-object v0, Lcom/ardor3d/util/stat/StatCollector;->listeners:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static addTimedStat(Lcom/ardor3d/util/stat/StatType;)V
    .locals 1

    sget-object v0, Lcom/ardor3d/util/stat/StatCollector;->timedStats:Ljava/util/HashSet;

    invoke-virtual {v0, p0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static endStat(Lcom/ardor3d/util/stat/StatType;)V
    .locals 7

    sget-boolean v0, Lcom/ardor3d/util/stat/StatCollector;->ignoreStats:Z

    if-nez v0, :cond_2

    sget-object v0, Lcom/ardor3d/util/stat/StatCollector;->timedStats:Ljava/util/HashSet;

    invoke-virtual {v0, p0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_2

    :cond_0
    sget-object v0, Lcom/ardor3d/util/stat/StatCollector;->current:Ljava/util/HashMap;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/ardor3d/util/stat/StatCollector;->timeStatStack:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ardor3d/util/stat/StatType;

    sget-object v2, Lcom/ardor3d/util/stat/StatCollector;->timer:Lcom/ardor3d/util/Timer;

    invoke-virtual {v2}, Lcom/ardor3d/util/Timer;->getTime()J

    move-result-wide v2

    long-to-double v2, v2

    sget-wide v4, Lcom/ardor3d/util/stat/StatCollector;->TO_MS:D

    mul-double/2addr v2, v4

    sget-object v4, Lcom/ardor3d/util/stat/StatCollector;->current:Ljava/util/HashMap;

    invoke-virtual {v4, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/ardor3d/util/stat/StatValue;

    sget-wide v5, Lcom/ardor3d/util/stat/StatCollector;->lastTimeCheckMS:D

    sub-double v5, v2, v5

    invoke-virtual {v4, v5, v6}, Lcom/ardor3d/util/stat/StatValue;->incrementValue(D)V

    sput-wide v2, Lcom/ardor3d/util/stat/StatCollector;->lastTimeCheckMS:D

    :goto_0
    invoke-virtual {v1, p0}, Lcom/ardor3d/util/stat/StatType;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    sget-object v2, Lcom/ardor3d/util/stat/StatCollector;->logger:Ljava/util/logging/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Mismatched endStat, found "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ".  Expected \'"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "\'"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    sget-object v1, Lcom/ardor3d/util/stat/StatCollector;->timeStatStack:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ardor3d/util/stat/StatType;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_1
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_2
    :goto_2
    return-void
.end method

.method public static fireActionEvent()V
    .locals 2

    sget-object v0, Lcom/ardor3d/util/stat/StatCollector;->listeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ardor3d/util/stat/StatListener;

    invoke-interface {v1}, Lcom/ardor3d/util/stat/StatListener;->statsUpdated()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static getHistorical()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/ardor3d/util/stat/MultiStatSample;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/ardor3d/util/stat/StatCollector;->historical:Ljava/util/List;

    return-object v0
.end method

.method public static getMaxSamples()I
    .locals 1

    sget v0, Lcom/ardor3d/util/stat/StatCollector;->maxSamples:I

    return v0
.end method

.method public static getSampleRate()D
    .locals 2

    sget-wide v0, Lcom/ardor3d/util/stat/StatCollector;->sampleRateMS:D

    return-wide v0
.end method

.method public static getStartOffset()D
    .locals 2

    sget-wide v0, Lcom/ardor3d/util/stat/StatCollector;->startOffset:D

    return-wide v0
.end method

.method public static hasHistoricalStat(Lcom/ardor3d/util/stat/StatType;)Z
    .locals 2

    sget-object v0, Lcom/ardor3d/util/stat/StatCollector;->historical:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ardor3d/util/stat/MultiStatSample;

    invoke-virtual {v1, p0}, Lcom/ardor3d/util/stat/MultiStatSample;->containsStat(Lcom/ardor3d/util/stat/StatType;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public static init(JI)V
    .locals 0

    long-to-double p0, p0

    sput-wide p0, Lcom/ardor3d/util/stat/StatCollector;->sampleRateMS:D

    sput p2, Lcom/ardor3d/util/stat/StatCollector;->maxSamples:I

    return-void
.end method

.method public static isIgnoreStats()Z
    .locals 1

    sget-boolean v0, Lcom/ardor3d/util/stat/StatCollector;->ignoreStats:Z

    return v0
.end method

.method public static lastStats()Lcom/ardor3d/util/stat/MultiStatSample;
    .locals 2

    sget-object v0, Lcom/ardor3d/util/stat/StatCollector;->historical:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    sget-object v0, Lcom/ardor3d/util/stat/StatCollector;->historical:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ardor3d/util/stat/MultiStatSample;

    return-object v0
.end method

.method public static pause()V
    .locals 2

    const/4 v0, 0x1

    invoke-static {v0}, Lcom/ardor3d/util/stat/StatCollector;->setIgnoreStats(Z)V

    sget-object v0, Lcom/ardor3d/util/stat/StatCollector;->timer:Lcom/ardor3d/util/Timer;

    invoke-virtual {v0}, Lcom/ardor3d/util/Timer;->getTime()J

    move-result-wide v0

    sput-wide v0, Lcom/ardor3d/util/stat/StatCollector;->pausedStartTime:J

    return-void
.end method

.method public static removeAllListeners()V
    .locals 1

    sget-object v0, Lcom/ardor3d/util/stat/StatCollector;->listeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method

.method public static removeAllTimedStats()V
    .locals 1

    sget-object v0, Lcom/ardor3d/util/stat/StatCollector;->timedStats:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    return-void
.end method

.method public static removeStatListener(Lcom/ardor3d/util/stat/StatListener;)Z
    .locals 1

    sget-object v0, Lcom/ardor3d/util/stat/StatCollector;->listeners:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static removeTimedStat(Lcom/ardor3d/util/stat/StatType;)Z
    .locals 1

    sget-object v0, Lcom/ardor3d/util/stat/StatCollector;->timedStats:Ljava/util/HashSet;

    invoke-virtual {v0, p0}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static resetTimedStack()V
    .locals 1

    sget-object v0, Lcom/ardor3d/util/stat/StatCollector;->timeStatStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->clear()V

    return-void
.end method

.method public static resume()V
    .locals 6

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/ardor3d/util/stat/StatCollector;->setIgnoreStats(Z)V

    sget-wide v0, Lcom/ardor3d/util/stat/StatCollector;->pausedTime:J

    sget-object v2, Lcom/ardor3d/util/stat/StatCollector;->timer:Lcom/ardor3d/util/Timer;

    invoke-virtual {v2}, Lcom/ardor3d/util/Timer;->getTime()J

    move-result-wide v2

    sget-wide v4, Lcom/ardor3d/util/stat/StatCollector;->pausedStartTime:J

    sub-long/2addr v2, v4

    add-long/2addr v0, v2

    sput-wide v0, Lcom/ardor3d/util/stat/StatCollector;->pausedTime:J

    return-void
.end method

.method public static setIgnoreStats(Z)V
    .locals 0

    sput-boolean p0, Lcom/ardor3d/util/stat/StatCollector;->ignoreStats:Z

    return-void
.end method

.method public static setMaxSamples(I)V
    .locals 0

    sput p0, Lcom/ardor3d/util/stat/StatCollector;->maxSamples:I

    return-void
.end method

.method public static setSampleRate(J)V
    .locals 0

    long-to-double p0, p0

    sput-wide p0, Lcom/ardor3d/util/stat/StatCollector;->sampleRateMS:D

    return-void
.end method

.method public static startStat(Lcom/ardor3d/util/stat/StatType;)V
    .locals 7

    sget-boolean v0, Lcom/ardor3d/util/stat/StatCollector;->ignoreStats:Z

    if-nez v0, :cond_6

    sget-object v0, Lcom/ardor3d/util/stat/StatCollector;->timedStats:Ljava/util/HashSet;

    invoke-virtual {v0, p0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_3

    :cond_0
    sget-object v0, Lcom/ardor3d/util/stat/StatCollector;->current:Ljava/util/HashMap;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/ardor3d/util/stat/StatCollector;->timeStatStack:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    sget-object v1, Lcom/ardor3d/util/stat/StatCollector;->timeStatStack:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ardor3d/util/stat/StatType;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_1
    const/4 v1, 0x0

    :goto_0
    sget-object v2, Lcom/ardor3d/util/stat/StatCollector;->timer:Lcom/ardor3d/util/Timer;

    invoke-virtual {v2}, Lcom/ardor3d/util/Timer;->getTime()J

    move-result-wide v2

    long-to-double v2, v2

    sget-wide v4, Lcom/ardor3d/util/stat/StatCollector;->TO_MS:D

    mul-double/2addr v2, v4

    if-eqz v1, :cond_2

    sget-object v4, Lcom/ardor3d/util/stat/StatCollector;->current:Ljava/util/HashMap;

    invoke-virtual {v4, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ardor3d/util/stat/StatValue;

    sget-wide v4, Lcom/ardor3d/util/stat/StatCollector;->lastTimeCheckMS:D

    sub-double v4, v2, v4

    invoke-virtual {v1, v4, v5}, Lcom/ardor3d/util/stat/StatValue;->incrementValue(D)V

    goto :goto_1

    :cond_2
    sget-object v1, Lcom/ardor3d/util/stat/StatCollector;->current:Ljava/util/HashMap;

    sget-object v4, Lcom/ardor3d/util/stat/StatType;->STAT_UNSPECIFIED_TIMER:Lcom/ardor3d/util/stat/StatType;

    invoke-virtual {v1, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ardor3d/util/stat/StatValue;

    if-nez v1, :cond_3

    new-instance v1, Lcom/ardor3d/util/stat/StatValue;

    invoke-direct {v1}, Lcom/ardor3d/util/stat/StatValue;-><init>()V

    const-wide/16 v5, 0x1

    invoke-virtual {v1, v5, v6}, Lcom/ardor3d/util/stat/StatValue;->setIterations(J)V

    sget-object v5, Lcom/ardor3d/util/stat/StatCollector;->current:Ljava/util/HashMap;

    invoke-virtual {v5, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    sget-wide v4, Lcom/ardor3d/util/stat/StatCollector;->lastTimeCheckMS:D

    sub-double v4, v2, v4

    invoke-virtual {v1, v4, v5}, Lcom/ardor3d/util/stat/StatValue;->incrementValue(D)V

    :goto_1
    sput-wide v2, Lcom/ardor3d/util/stat/StatCollector;->lastTimeCheckMS:D

    sget-object v1, Lcom/ardor3d/util/stat/StatCollector;->timeStatStack:Ljava/util/Stack;

    invoke-virtual {v1, p0}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p0, :cond_5

    sget-object v1, Lcom/ardor3d/util/stat/StatCollector;->current:Ljava/util/HashMap;

    invoke-virtual {v1, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ardor3d/util/stat/StatValue;

    if-nez v1, :cond_4

    new-instance v1, Lcom/ardor3d/util/stat/StatValue;

    invoke-direct {v1}, Lcom/ardor3d/util/stat/StatValue;-><init>()V

    sget-object v2, Lcom/ardor3d/util/stat/StatCollector;->current:Ljava/util/HashMap;

    invoke-virtual {v2, p0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    invoke-virtual {v1}, Lcom/ardor3d/util/stat/StatValue;->incrementIterations()V

    :cond_5
    monitor-exit v0

    return-void

    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_6
    :goto_3
    return-void
.end method

.method public static declared-synchronized update()V
    .locals 15

    const-class v1, Lcom/ardor3d/util/stat/StatCollector;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/ardor3d/util/stat/StatCollector;->timer:Lcom/ardor3d/util/Timer;

    invoke-virtual {v0}, Lcom/ardor3d/util/Timer;->getTime()J

    move-result-wide v2

    long-to-double v2, v2

    sget-wide v4, Lcom/ardor3d/util/stat/StatCollector;->TO_MS:D

    mul-double/2addr v2, v4

    sget-wide v6, Lcom/ardor3d/util/stat/StatCollector;->lastSampleTime:D

    sub-double v6, v2, v6

    sget-wide v8, Lcom/ardor3d/util/stat/StatCollector;->sampleRateMS:D
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    cmpg-double v0, v6, v8

    if-gez v0, :cond_0

    monitor-exit v1

    return-void

    :cond_0
    :try_start_1
    sget-object v8, Lcom/ardor3d/util/stat/StatCollector;->current:Ljava/util/HashMap;

    monitor-enter v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    sget-object v0, Lcom/ardor3d/util/stat/StatCollector;->timeStatStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v0

    const-wide/16 v11, 0x0

    if-nez v0, :cond_3

    sget-object v0, Lcom/ardor3d/util/stat/StatCollector;->current:Ljava/util/HashMap;

    sget-object v13, Lcom/ardor3d/util/stat/StatCollector;->timeStatStack:Ljava/util/Stack;

    invoke-virtual {v13}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v13

    invoke-virtual {v0, v13}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ardor3d/util/stat/StatValue;

    sget-wide v13, Lcom/ardor3d/util/stat/StatCollector;->lastTimeCheckMS:D

    sub-double v13, v2, v13

    sget-wide v9, Lcom/ardor3d/util/stat/StatCollector;->pausedTime:J

    long-to-double v9, v9

    mul-double/2addr v9, v4

    sub-double/2addr v13, v9

    invoke-virtual {v0, v13, v14}, Lcom/ardor3d/util/stat/StatValue;->incrementValue(D)V

    sput-wide v2, Lcom/ardor3d/util/stat/StatCollector;->lastTimeCheckMS:D

    sget-object v4, Lcom/ardor3d/util/stat/StatCollector;->timeStatStack:Ljava/util/Stack;

    invoke-virtual {v4}, Ljava/util/AbstractCollection;->size()I

    move-result v4

    :cond_1
    :goto_0
    add-int/lit8 v4, v4, -0x1

    if-ltz v4, :cond_2

    sget-object v5, Lcom/ardor3d/util/stat/StatCollector;->current:Ljava/util/HashMap;

    sget-object v9, Lcom/ardor3d/util/stat/StatCollector;->timeStatStack:Ljava/util/Stack;

    invoke-virtual {v9, v4}, Ljava/util/AbstractList;->get(I)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v5, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/ardor3d/util/stat/StatValue;

    if-eqz v5, :cond_1

    invoke-virtual {v5, v11, v12}, Lcom/ardor3d/util/stat/StatValue;->setIterations(J)V

    goto :goto_0

    :catchall_0
    move-exception v0

    goto/16 :goto_4

    :cond_2
    const-wide/16 v4, 0x1

    invoke-virtual {v0, v4, v5}, Lcom/ardor3d/util/stat/StatValue;->setIterations(J)V

    goto :goto_1

    :cond_3
    sget-object v0, Lcom/ardor3d/util/stat/StatCollector;->current:Ljava/util/HashMap;

    sget-object v9, Lcom/ardor3d/util/stat/StatType;->STAT_UNSPECIFIED_TIMER:Lcom/ardor3d/util/stat/StatType;

    invoke-virtual {v0, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ardor3d/util/stat/StatValue;

    if-eqz v0, :cond_4

    sget-wide v9, Lcom/ardor3d/util/stat/StatCollector;->lastTimeCheckMS:D

    sub-double v9, v2, v9

    sget-wide v13, Lcom/ardor3d/util/stat/StatCollector;->pausedTime:J

    long-to-double v13, v13

    mul-double/2addr v13, v4

    sub-double/2addr v9, v13

    invoke-virtual {v0, v9, v10}, Lcom/ardor3d/util/stat/StatValue;->incrementValue(D)V

    sput-wide v2, Lcom/ardor3d/util/stat/StatCollector;->lastTimeCheckMS:D

    const-wide/16 v4, 0x1

    invoke-virtual {v0, v4, v5}, Lcom/ardor3d/util/stat/StatValue;->setIterations(J)V

    :cond_4
    :goto_1
    sget-object v0, Lcom/ardor3d/util/stat/StatCollector;->current:Ljava/util/HashMap;

    invoke-static {v0}, Lcom/ardor3d/util/stat/MultiStatSample;->createNew(Ljava/util/HashMap;)Lcom/ardor3d/util/stat/MultiStatSample;

    move-result-object v0

    invoke-virtual {v0, v6, v7}, Lcom/ardor3d/util/stat/MultiStatSample;->setTimeElapsed(D)V

    sget-object v4, Lcom/ardor3d/util/stat/StatCollector;->historical:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/ardor3d/util/stat/StatCollector;->current:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/ardor3d/util/stat/StatValue;

    invoke-virtual {v4}, Lcom/ardor3d/util/stat/StatValue;->reset()V

    goto :goto_2

    :cond_5
    monitor-exit v8
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const-wide/16 v4, 0x0

    :try_start_3
    sput-wide v4, Lcom/ardor3d/util/stat/StatCollector;->startOffset:D

    sput-wide v11, Lcom/ardor3d/util/stat/StatCollector;->pausedTime:J

    :cond_6
    :goto_3
    sget-object v0, Lcom/ardor3d/util/stat/StatCollector;->historical:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    sget v4, Lcom/ardor3d/util/stat/StatCollector;->maxSamples:I

    if-le v0, v4, :cond_7

    sget-object v0, Lcom/ardor3d/util/stat/StatCollector;->historical:Ljava/util/List;

    const/4 v4, 0x0

    invoke-interface {v0, v4}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ardor3d/util/stat/MultiStatSample;

    if-eqz v0, :cond_6

    sget-wide v4, Lcom/ardor3d/util/stat/StatCollector;->startOffset:D

    invoke-virtual {v0}, Lcom/ardor3d/util/stat/MultiStatSample;->getElapsedTime()D

    move-result-wide v6

    add-double/2addr v4, v6

    sput-wide v4, Lcom/ardor3d/util/stat/StatCollector;->startOffset:D

    goto :goto_3

    :catchall_1
    move-exception v0

    goto :goto_5

    :cond_7
    sput-wide v2, Lcom/ardor3d/util/stat/StatCollector;->lastSampleTime:D

    invoke-static {}, Lcom/ardor3d/util/stat/StatCollector;->fireActionEvent()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    monitor-exit v1

    return-void

    :goto_4
    :try_start_4
    monitor-exit v8
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw v0

    :goto_5
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    throw v0
.end method
