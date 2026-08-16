.class public Lcom/ardor3d/util/stat/StatValue;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private _accumulatedValue:D

.field private _averageDirty:Z

.field private _averageValue:D

.field private _iterations:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 2
    iput-wide v0, p0, Lcom/ardor3d/util/stat/StatValue;->_accumulatedValue:D

    .line 3
    iput-wide v0, p0, Lcom/ardor3d/util/stat/StatValue;->_averageValue:D

    const/4 v0, 0x1

    .line 4
    iput-boolean v0, p0, Lcom/ardor3d/util/stat/StatValue;->_averageDirty:Z

    return-void
.end method

.method public constructor <init>(Lcom/ardor3d/util/stat/StatValue;)V
    .locals 2

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 6
    iput-wide v0, p0, Lcom/ardor3d/util/stat/StatValue;->_accumulatedValue:D

    .line 7
    iput-wide v0, p0, Lcom/ardor3d/util/stat/StatValue;->_averageValue:D

    const/4 v0, 0x1

    .line 8
    iput-boolean v0, p0, Lcom/ardor3d/util/stat/StatValue;->_averageDirty:Z

    .line 9
    iget-wide v0, p1, Lcom/ardor3d/util/stat/StatValue;->_accumulatedValue:D

    iput-wide v0, p0, Lcom/ardor3d/util/stat/StatValue;->_accumulatedValue:D

    .line 10
    iget-wide v0, p1, Lcom/ardor3d/util/stat/StatValue;->_averageValue:D

    iput-wide v0, p0, Lcom/ardor3d/util/stat/StatValue;->_averageValue:D

    .line 11
    iget-boolean v0, p1, Lcom/ardor3d/util/stat/StatValue;->_averageDirty:Z

    iput-boolean v0, p0, Lcom/ardor3d/util/stat/StatValue;->_averageDirty:Z

    .line 12
    iget-wide v0, p1, Lcom/ardor3d/util/stat/StatValue;->_iterations:J

    iput-wide v0, p0, Lcom/ardor3d/util/stat/StatValue;->_iterations:J

    return-void
.end method


# virtual methods
.method public getAccumulatedValue()D
    .locals 2

    iget-wide v0, p0, Lcom/ardor3d/util/stat/StatValue;->_accumulatedValue:D

    return-wide v0
.end method

.method public getAverageValue()D
    .locals 4

    iget-boolean v0, p0, Lcom/ardor3d/util/stat/StatValue;->_averageDirty:Z

    if-eqz v0, :cond_1

    iget-wide v0, p0, Lcom/ardor3d/util/stat/StatValue;->_iterations:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    iget-wide v2, p0, Lcom/ardor3d/util/stat/StatValue;->_accumulatedValue:D

    long-to-double v0, v0

    div-double/2addr v2, v0

    goto :goto_0

    :cond_0
    iget-wide v2, p0, Lcom/ardor3d/util/stat/StatValue;->_accumulatedValue:D

    :goto_0
    iput-wide v2, p0, Lcom/ardor3d/util/stat/StatValue;->_averageValue:D

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ardor3d/util/stat/StatValue;->_averageDirty:Z

    :cond_1
    iget-wide v0, p0, Lcom/ardor3d/util/stat/StatValue;->_averageValue:D

    return-wide v0
.end method

.method public getIterations()J
    .locals 2

    iget-wide v0, p0, Lcom/ardor3d/util/stat/StatValue;->_iterations:J

    return-wide v0
.end method

.method public incrementIterations()V
    .locals 4

    iget-wide v0, p0, Lcom/ardor3d/util/stat/StatValue;->_iterations:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/ardor3d/util/stat/StatValue;->_iterations:J

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ardor3d/util/stat/StatValue;->_averageDirty:Z

    return-void
.end method

.method public incrementValue(D)V
    .locals 2

    iget-wide v0, p0, Lcom/ardor3d/util/stat/StatValue;->_accumulatedValue:D

    add-double/2addr v0, p1

    iput-wide v0, p0, Lcom/ardor3d/util/stat/StatValue;->_accumulatedValue:D

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/ardor3d/util/stat/StatValue;->_averageDirty:Z

    return-void
.end method

.method public reset()V
    .locals 4

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/ardor3d/util/stat/StatValue;->_accumulatedValue:D

    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/ardor3d/util/stat/StatValue;->_iterations:J

    iput-wide v0, p0, Lcom/ardor3d/util/stat/StatValue;->_averageValue:D

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ardor3d/util/stat/StatValue;->_averageDirty:Z

    return-void
.end method

.method public setIterations(J)V
    .locals 0

    iput-wide p1, p0, Lcom/ardor3d/util/stat/StatValue;->_iterations:J

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/ardor3d/util/stat/StatValue;->_averageDirty:Z

    return-void
.end method
