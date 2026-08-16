.class public Lcom/ardor3d/util/Timer;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/ardor3d/util/ReadOnlyTimer;


# static fields
.field private static final INVERSE_TIMER_RESOLUTION:D = 1.0E-9

.field private static final TIMER_RESOLUTION:J = 0x3b9aca00L


# instance fields
.field private _fps:D

.field private _previousTime:J

.field private _startTime:J

.field private _tpf:D


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/ardor3d/util/Timer;->_startTime:J

    return-void
.end method


# virtual methods
.method public getFrameRate()D
    .locals 2

    iget-wide v0, p0, Lcom/ardor3d/util/Timer;->_fps:D

    return-wide v0
.end method

.method public getResolution()J
    .locals 2

    const-wide/32 v0, 0x3b9aca00

    return-wide v0
.end method

.method public getTime()J
    .locals 4

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/ardor3d/util/Timer;->_startTime:J

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method public getTimeInSeconds()D
    .locals 4

    invoke-virtual {p0}, Lcom/ardor3d/util/Timer;->getTime()J

    move-result-wide v0

    long-to-double v0, v0

    const-wide v2, 0x3e112e0be826d695L    # 1.0E-9

    mul-double/2addr v0, v2

    return-wide v0
.end method

.method public getTimePerFrame()D
    .locals 2

    iget-wide v0, p0, Lcom/ardor3d/util/Timer;->_tpf:D

    return-wide v0
.end method

.method public reset()V
    .locals 2

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/ardor3d/util/Timer;->_startTime:J

    invoke-virtual {p0}, Lcom/ardor3d/util/Timer;->getTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/ardor3d/util/Timer;->_previousTime:J

    return-void
.end method

.method public update()V
    .locals 6

    invoke-virtual {p0}, Lcom/ardor3d/util/Timer;->getTime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/ardor3d/util/Timer;->_previousTime:J

    sub-long v2, v0, v2

    long-to-double v2, v2

    const-wide v4, 0x3e112e0be826d695L    # 1.0E-9

    mul-double/2addr v2, v4

    iput-wide v2, p0, Lcom/ardor3d/util/Timer;->_tpf:D

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    div-double/2addr v4, v2

    iput-wide v4, p0, Lcom/ardor3d/util/Timer;->_fps:D

    iput-wide v0, p0, Lcom/ardor3d/util/Timer;->_previousTime:J

    return-void
.end method
