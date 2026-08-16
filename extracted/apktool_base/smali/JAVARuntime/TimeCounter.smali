.class public LJAVARuntime/TimeCounter;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime LJAVARuntime/ClassCategory;
    cat = {
        "Time"
    }
.end annotation


# instance fields
.field private transient intervalTime:F
    .annotation runtime LH6/g;
    .end annotation
.end field

.field private transient keyframe:J
    .annotation runtime LH6/g;
    .end annotation
.end field

.field private transient lastFrameValue:F
    .annotation runtime LH6/g;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p0}, Lcom/itsmagic/engine/Activities/Editor/Panels/Profiler/MemoryProfiler/AllocatorWatcher;->notify(Ljava/lang/Object;)V

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    iput-wide v0, p0, LJAVARuntime/TimeCounter;->keyframe:J

    const/4 v0, 0x0

    iput v0, p0, LJAVARuntime/TimeCounter;->intervalTime:F

    iput v0, p0, LJAVARuntime/TimeCounter;->lastFrameValue:F

    return-void
.end method


# virtual methods
.method public finish()V
    .locals 4
    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Finishes the time counter and calculates the elapsed time."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Finaliza o contador de tempo e calcula o tempo decorrido."
    .end annotation

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    iget-wide v2, p0, LJAVARuntime/TimeCounter;->keyframe:J

    sub-long/2addr v0, v2

    long-to-float v0, v0

    const v1, 0x49742400    # 1000000.0f

    div-float/2addr v0, v1

    iput v0, p0, LJAVARuntime/TimeCounter;->intervalTime:F

    return-void
.end method

.method public getElapsedMilliseconds()F
    .locals 1
    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Returns the elapsed time in milliseconds."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Retorna o tempo decorrido em milissegundos."
    .end annotation

    iget v0, p0, LJAVARuntime/TimeCounter;->intervalTime:F

    return v0
.end method

.method public getElapsedSeconds()F
    .locals 2
    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Returns the elapsed time in seconds."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Retorna o tempo decorrido em segundos."
    .end annotation

    iget v0, p0, LJAVARuntime/TimeCounter;->intervalTime:F

    const/high16 v1, 0x447a0000    # 1000.0f

    div-float/2addr v0, v1

    return v0
.end method

.method public start()V
    .locals 2
    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Starts the time counter."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Inicia o contador de tempo."
    .end annotation

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    iput-wide v0, p0, LJAVARuntime/TimeCounter;->keyframe:J

    return-void
.end method
