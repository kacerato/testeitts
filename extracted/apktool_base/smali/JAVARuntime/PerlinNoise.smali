.class public LJAVARuntime/PerlinNoise;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime LJAVARuntime/ClassCategory;
    cat = {
        "Algorithms",
        "Math"
    }
.end annotation


# instance fields
.field public transient scale:F
    .annotation runtime LH6/g;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {p0}, Lcom/itsmagic/engine/Activities/Editor/Panels/Profiler/MemoryProfiler/AllocatorWatcher;->notify(Ljava/lang/Object;)V

    const/high16 v0, 0x3f800000    # 1.0f

    .line 3
    iput v0, p0, LJAVARuntime/PerlinNoise;->scale:F

    return-void
.end method

.method public constructor <init>(F)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "scale"
        }
    .end annotation

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    invoke-static {p0}, Lcom/itsmagic/engine/Activities/Editor/Panels/Profiler/MemoryProfiler/AllocatorWatcher;->notify(Ljava/lang/Object;)V

    .line 6
    iput p1, p0, LJAVARuntime/PerlinNoise;->scale:F

    return-void
.end method


# virtual methods
.method public getScale()F
    .locals 1
    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

    iget v0, p0, LJAVARuntime/PerlinNoise;->scale:F

    return v0
.end method

.method public noise(DD)D
    .locals 3
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "x",
            "y"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "x",
            "y"
        }
    .end annotation

    .line 1
    iget v0, p0, LJAVARuntime/PerlinNoise;->scale:F

    float-to-double v1, v0

    div-double/2addr p1, v1

    float-to-double v0, v0

    div-double/2addr p3, v0

    invoke-static {p1, p2, p3, p4}, LRc/a;->e(DD)D

    move-result-wide p1

    return-wide p1
.end method

.method public noise(DDD)D
    .locals 3
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "x",
            "y",
            "z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "x",
            "y",
            "z"
        }
    .end annotation

    .line 2
    iget v0, p0, LJAVARuntime/PerlinNoise;->scale:F

    float-to-double v1, v0

    div-double/2addr p1, v1

    float-to-double v1, v0

    div-double/2addr p3, v1

    float-to-double v0, v0

    div-double/2addr p5, v0

    invoke-static/range {p1 .. p6}, LRc/a;->f(DDD)D

    move-result-wide p1

    return-wide p1
.end method

.method public noise(DDDD)D
    .locals 3
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "x",
            "y",
            "z",
            "w"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "x",
            "y",
            "z",
            "w"
        }
    .end annotation

    .line 3
    iget v0, p0, LJAVARuntime/PerlinNoise;->scale:F

    float-to-double v1, v0

    div-double/2addr p1, v1

    float-to-double v1, v0

    div-double/2addr p3, v1

    float-to-double v1, v0

    div-double/2addr p5, v1

    float-to-double v0, v0

    div-double/2addr p7, v0

    invoke-static/range {p1 .. p8}, LRc/a;->g(DDDD)D

    move-result-wide p1

    return-wide p1
.end method

.method public noise(FF)F
    .locals 3
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "x",
            "y"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "x",
            "y"
        }
    .end annotation

    .line 7
    iget v0, p0, LJAVARuntime/PerlinNoise;->scale:F

    div-float/2addr p1, v0

    float-to-double v1, p1

    div-float/2addr p2, v0

    float-to-double p1, p2

    invoke-static {v1, v2, p1, p2}, LRc/a;->e(DD)D

    move-result-wide p1

    double-to-float p1, p1

    return p1
.end method

.method public noise(FFF)F
    .locals 7
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "x",
            "y",
            "z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "x",
            "y",
            "z"
        }
    .end annotation

    .line 8
    iget v0, p0, LJAVARuntime/PerlinNoise;->scale:F

    div-float/2addr p1, v0

    float-to-double v1, p1

    div-float/2addr p2, v0

    float-to-double v3, p2

    div-float/2addr p3, v0

    float-to-double v5, p3

    invoke-static/range {v1 .. v6}, LRc/a;->f(DDD)D

    move-result-wide p1

    double-to-float p1, p1

    return p1
.end method

.method public noise(FFFF)F
    .locals 9
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "x",
            "y",
            "z",
            "w"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "x",
            "y",
            "z",
            "w"
        }
    .end annotation

    .line 9
    iget v0, p0, LJAVARuntime/PerlinNoise;->scale:F

    div-float/2addr p1, v0

    float-to-double v1, p1

    div-float/2addr p2, v0

    float-to-double v3, p2

    div-float/2addr p3, v0

    float-to-double v5, p3

    div-float/2addr p4, v0

    float-to-double v7, p4

    invoke-static/range {v1 .. v8}, LRc/a;->g(DDDD)D

    move-result-wide p1

    double-to-float p1, p1

    return p1
.end method

.method public noise(II)F
    .locals 3
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "x",
            "y"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "x",
            "y"
        }
    .end annotation

    int-to-float p1, p1

    .line 4
    iget v0, p0, LJAVARuntime/PerlinNoise;->scale:F

    div-float/2addr p1, v0

    float-to-double v1, p1

    int-to-float p1, p2

    div-float/2addr p1, v0

    float-to-double p1, p1

    invoke-static {v1, v2, p1, p2}, LRc/a;->e(DD)D

    move-result-wide p1

    double-to-float p1, p1

    return p1
.end method

.method public noise(III)F
    .locals 7
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "x",
            "y",
            "z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "x",
            "y",
            "z"
        }
    .end annotation

    int-to-float p1, p1

    .line 5
    iget v0, p0, LJAVARuntime/PerlinNoise;->scale:F

    div-float/2addr p1, v0

    float-to-double v1, p1

    int-to-float p1, p2

    div-float/2addr p1, v0

    float-to-double v3, p1

    int-to-float p1, p3

    div-float/2addr p1, v0

    float-to-double v5, p1

    invoke-static/range {v1 .. v6}, LRc/a;->f(DDD)D

    move-result-wide p1

    double-to-float p1, p1

    return p1
.end method

.method public noise(IIII)F
    .locals 9
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "x",
            "y",
            "z",
            "w"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "x",
            "y",
            "z",
            "w"
        }
    .end annotation

    int-to-float p1, p1

    .line 6
    iget v0, p0, LJAVARuntime/PerlinNoise;->scale:F

    div-float/2addr p1, v0

    float-to-double v1, p1

    int-to-float p1, p2

    div-float/2addr p1, v0

    float-to-double v3, p1

    int-to-float p1, p3

    div-float/2addr p1, v0

    float-to-double v5, p1

    int-to-float p1, p4

    div-float/2addr p1, v0

    float-to-double v7, p1

    invoke-static/range {v1 .. v8}, LRc/a;->g(DDDD)D

    move-result-wide p1

    double-to-float p1, p1

    return p1
.end method

.method public setScale(F)V
    .locals 0
    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "scale"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "scale"
        }
    .end annotation

    iput p1, p0, LJAVARuntime/PerlinNoise;->scale:F

    return-void
.end method
