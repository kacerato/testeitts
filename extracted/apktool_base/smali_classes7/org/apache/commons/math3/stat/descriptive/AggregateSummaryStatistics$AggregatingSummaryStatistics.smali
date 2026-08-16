.class Lorg/apache/commons/math3/stat/descriptive/AggregateSummaryStatistics$AggregatingSummaryStatistics;
.super Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/math3/stat/descriptive/AggregateSummaryStatistics;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AggregatingSummaryStatistics"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private final aggregateStatistics:Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;


# direct methods
.method public constructor <init>(Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;)V
    .locals 0

    invoke-direct {p0}, Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;-><init>()V

    iput-object p1, p0, Lorg/apache/commons/math3/stat/descriptive/AggregateSummaryStatistics$AggregatingSummaryStatistics;->aggregateStatistics:Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;

    return-void
.end method


# virtual methods
.method public addValue(D)V
    .locals 2

    invoke-super {p0, p1, p2}, Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;->addValue(D)V

    iget-object v0, p0, Lorg/apache/commons/math3/stat/descriptive/AggregateSummaryStatistics$AggregatingSummaryStatistics;->aggregateStatistics:Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lorg/apache/commons/math3/stat/descriptive/AggregateSummaryStatistics$AggregatingSummaryStatistics;->aggregateStatistics:Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;

    invoke-virtual {v1, p1, p2}, Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;->addValue(D)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lorg/apache/commons/math3/stat/descriptive/AggregateSummaryStatistics$AggregatingSummaryStatistics;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lorg/apache/commons/math3/stat/descriptive/AggregateSummaryStatistics$AggregatingSummaryStatistics;

    invoke-super {p0, p1}, Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lorg/apache/commons/math3/stat/descriptive/AggregateSummaryStatistics$AggregatingSummaryStatistics;->aggregateStatistics:Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;

    iget-object p1, p1, Lorg/apache/commons/math3/stat/descriptive/AggregateSummaryStatistics$AggregatingSummaryStatistics;->aggregateStatistics:Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;

    invoke-virtual {v1, p1}, Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    move v0, v2

    :goto_0
    return v0
.end method

.method public hashCode()I
    .locals 2

    invoke-super {p0}, Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;->hashCode()I

    move-result v0

    add-int/lit8 v0, v0, 0x7b

    iget-object v1, p0, Lorg/apache/commons/math3/stat/descriptive/AggregateSummaryStatistics$AggregatingSummaryStatistics;->aggregateStatistics:Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;

    invoke-virtual {v1}, Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method
