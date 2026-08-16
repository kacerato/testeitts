.class public Lcom/jme3/system/NanoTimer;
.super Lcom/jme3/system/Timer;
.source "SourceFile"


# static fields
.field private static final INVERSE_TIMER_RESOLUTION:F = 1.0E-9f

.field private static final TIMER_RESOLUTION:J = 0x3b9aca00L


# instance fields
.field private fps:F

.field private previousTime:J

.field private startTime:J

.field private tpf:F


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/jme3/system/Timer;-><init>()V

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/jme3/system/NanoTimer;->startTime:J

    return-void
.end method


# virtual methods
.method public getFrameRate()F
    .locals 1

    iget v0, p0, Lcom/jme3/system/NanoTimer;->fps:F

    return v0
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

    iget-wide v2, p0, Lcom/jme3/system/NanoTimer;->startTime:J

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method public getTimeInSeconds()F
    .locals 2

    invoke-virtual {p0}, Lcom/jme3/system/NanoTimer;->getTime()J

    move-result-wide v0

    long-to-float v0, v0

    const v1, 0x3089705f    # 1.0E-9f

    mul-float/2addr v0, v1

    return v0
.end method

.method public getTimePerFrame()F
    .locals 1

    iget v0, p0, Lcom/jme3/system/NanoTimer;->tpf:F

    return v0
.end method

.method public reset()V
    .locals 2

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/jme3/system/NanoTimer;->startTime:J

    invoke-virtual {p0}, Lcom/jme3/system/NanoTimer;->getTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/jme3/system/NanoTimer;->previousTime:J

    return-void
.end method

.method public update()V
    .locals 4

    invoke-virtual {p0}, Lcom/jme3/system/NanoTimer;->getTime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/jme3/system/NanoTimer;->previousTime:J

    sub-long/2addr v0, v2

    long-to-float v0, v0

    const v1, 0x3089705f    # 1.0E-9f

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/jme3/system/NanoTimer;->tpf:F

    const/high16 v1, 0x3f800000    # 1.0f

    div-float/2addr v1, v0

    iput v1, p0, Lcom/jme3/system/NanoTimer;->fps:F

    invoke-virtual {p0}, Lcom/jme3/system/NanoTimer;->getTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/jme3/system/NanoTimer;->previousTime:J

    return-void
.end method
