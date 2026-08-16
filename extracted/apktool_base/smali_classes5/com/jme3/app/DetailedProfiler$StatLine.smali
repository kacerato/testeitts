.class public Lcom/jme3/app/DetailedProfiler$StatLine;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jme3/app/DetailedProfiler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "StatLine"
.end annotation


# instance fields
.field private cpuCursor:I

.field private cpuSum:J

.field private final cpuTimes:[J

.field private gpuCursor:I

.field private gpuSum:J

.field private final gpuTimes:[J

.field private lastValue:J

.field private nbFramesCpu:I

.field private nbFramesGpu:I

.field private startCursor:I

.field taskIds:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(I)V
    .locals 3

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x64

    .line 3
    new-array v1, v0, [J

    iput-object v1, p0, Lcom/jme3/app/DetailedProfiler$StatLine;->cpuTimes:[J

    .line 4
    new-array v1, v0, [J

    iput-object v1, p0, Lcom/jme3/app/DetailedProfiler$StatLine;->gpuTimes:[J

    const/4 v1, 0x0

    .line 5
    iput v1, p0, Lcom/jme3/app/DetailedProfiler$StatLine;->startCursor:I

    .line 6
    iput v1, p0, Lcom/jme3/app/DetailedProfiler$StatLine;->cpuCursor:I

    .line 7
    iput v1, p0, Lcom/jme3/app/DetailedProfiler$StatLine;->gpuCursor:I

    const-wide/16 v1, 0x0

    .line 8
    iput-wide v1, p0, Lcom/jme3/app/DetailedProfiler$StatLine;->cpuSum:J

    .line 9
    iput-wide v1, p0, Lcom/jme3/app/DetailedProfiler$StatLine;->gpuSum:J

    .line 10
    iput-wide v1, p0, Lcom/jme3/app/DetailedProfiler$StatLine;->lastValue:J

    .line 11
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/jme3/app/DetailedProfiler$StatLine;->taskIds:Ljava/util/List;

    .line 12
    rem-int/2addr p1, v0

    iput p1, p0, Lcom/jme3/app/DetailedProfiler$StatLine;->startCursor:I

    .line 13
    iput p1, p0, Lcom/jme3/app/DetailedProfiler$StatLine;->cpuCursor:I

    .line 14
    iput p1, p0, Lcom/jme3/app/DetailedProfiler$StatLine;->gpuCursor:I

    return-void
.end method

.method public synthetic constructor <init>(ILcom/jme3/app/DetailedProfiler$1;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/jme3/app/DetailedProfiler$StatLine;-><init>(I)V

    return-void
.end method

.method public static synthetic access$100(Lcom/jme3/app/DetailedProfiler$StatLine;)J
    .locals 2

    invoke-direct {p0}, Lcom/jme3/app/DetailedProfiler$StatLine;->getValueCpu()J

    move-result-wide v0

    return-wide v0
.end method

.method public static synthetic access$200(Lcom/jme3/app/DetailedProfiler$StatLine;J)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/jme3/app/DetailedProfiler$StatLine;->setValueCpu(J)V

    return-void
.end method

.method public static synthetic access$300(Lcom/jme3/app/DetailedProfiler$StatLine;)V
    .locals 0

    invoke-direct {p0}, Lcom/jme3/app/DetailedProfiler$StatLine;->closeFrame()V

    return-void
.end method

.method public static synthetic access$400(Lcom/jme3/app/DetailedProfiler$StatLine;J)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/jme3/app/DetailedProfiler$StatLine;->setNewFrameValueCpu(J)V

    return-void
.end method

.method private closeFrame()V
    .locals 6

    invoke-virtual {p0}, Lcom/jme3/app/DetailedProfiler$StatLine;->isActive()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/jme3/app/DetailedProfiler$StatLine;->cpuSum:J

    iget-object v2, p0, Lcom/jme3/app/DetailedProfiler$StatLine;->cpuTimes:[J

    iget v3, p0, Lcom/jme3/app/DetailedProfiler$StatLine;->cpuCursor:I

    aget-wide v4, v2, v3

    sub-long/2addr v0, v4

    iput-wide v0, p0, Lcom/jme3/app/DetailedProfiler$StatLine;->cpuSum:J

    iget-wide v4, p0, Lcom/jme3/app/DetailedProfiler$StatLine;->lastValue:J

    aput-wide v4, v2, v3

    add-long/2addr v0, v4

    iput-wide v0, p0, Lcom/jme3/app/DetailedProfiler$StatLine;->cpuSum:J

    iget v0, p0, Lcom/jme3/app/DetailedProfiler$StatLine;->nbFramesCpu:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/jme3/app/DetailedProfiler$StatLine;->nbFramesCpu:I

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/jme3/app/DetailedProfiler$StatLine;->nbFramesCpu:I

    :goto_0
    return-void
.end method

.method private getValueCpu()J
    .locals 2

    iget-wide v0, p0, Lcom/jme3/app/DetailedProfiler$StatLine;->lastValue:J

    return-wide v0
.end method

.method private setNewFrameValueCpu(J)V
    .locals 2

    invoke-static {}, Lcom/jme3/app/DetailedProfiler;->access$500()I

    move-result v0

    rem-int/lit8 v0, v0, 0x64

    iget v1, p0, Lcom/jme3/app/DetailedProfiler$StatLine;->nbFramesCpu:I

    if-nez v1, :cond_0

    iput v0, p0, Lcom/jme3/app/DetailedProfiler$StatLine;->startCursor:I

    :cond_0
    iput v0, p0, Lcom/jme3/app/DetailedProfiler$StatLine;->cpuCursor:I

    iput-wide p1, p0, Lcom/jme3/app/DetailedProfiler$StatLine;->lastValue:J

    return-void
.end method

.method private setValueCpu(J)V
    .locals 0

    iput-wide p1, p0, Lcom/jme3/app/DetailedProfiler$StatLine;->lastValue:J

    return-void
.end method


# virtual methods
.method public getAverageCpu()D
    .locals 5

    iget v0, p0, Lcom/jme3/app/DetailedProfiler$StatLine;->nbFramesCpu:I

    if-nez v0, :cond_0

    const-wide/16 v0, 0x0

    return-wide v0

    :cond_0
    iget-wide v1, p0, Lcom/jme3/app/DetailedProfiler$StatLine;->cpuSum:J

    long-to-double v1, v1

    const/16 v3, 0x64

    invoke-static {v0, v3}, Ljava/lang/Math;->min(II)I

    move-result v0

    int-to-double v3, v0

    div-double/2addr v1, v3

    return-wide v1
.end method

.method public getAverageGpu()D
    .locals 5

    iget v0, p0, Lcom/jme3/app/DetailedProfiler$StatLine;->nbFramesGpu:I

    if-nez v0, :cond_0

    const-wide/16 v0, 0x0

    return-wide v0

    :cond_0
    iget-wide v1, p0, Lcom/jme3/app/DetailedProfiler$StatLine;->gpuSum:J

    long-to-double v1, v1

    const/16 v3, 0x64

    invoke-static {v0, v3}, Ljava/lang/Math;->min(II)I

    move-result v0

    int-to-double v3, v0

    div-double/2addr v1, v3

    return-wide v1
.end method

.method public isActive()Z
    .locals 3

    iget v0, p0, Lcom/jme3/app/DetailedProfiler$StatLine;->cpuCursor:I

    invoke-static {}, Lcom/jme3/app/DetailedProfiler;->access$500()I

    move-result v1

    rem-int/lit8 v1, v1, 0x64

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    if-lt v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    return v2
.end method

.method public setValueGpu(J)V
    .locals 6

    iget-wide v0, p0, Lcom/jme3/app/DetailedProfiler$StatLine;->gpuSum:J

    iget-object v2, p0, Lcom/jme3/app/DetailedProfiler$StatLine;->gpuTimes:[J

    iget v3, p0, Lcom/jme3/app/DetailedProfiler$StatLine;->gpuCursor:I

    aget-wide v4, v2, v3

    sub-long/2addr v0, v4

    iput-wide v0, p0, Lcom/jme3/app/DetailedProfiler$StatLine;->gpuSum:J

    aput-wide p1, v2, v3

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/jme3/app/DetailedProfiler$StatLine;->gpuSum:J

    iget p1, p0, Lcom/jme3/app/DetailedProfiler$StatLine;->nbFramesGpu:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/jme3/app/DetailedProfiler$StatLine;->nbFramesGpu:I

    add-int/lit8 v3, v3, 0x1

    rem-int/lit8 v3, v3, 0x64

    iput v3, p0, Lcom/jme3/app/DetailedProfiler$StatLine;->gpuCursor:I

    return-void
.end method
