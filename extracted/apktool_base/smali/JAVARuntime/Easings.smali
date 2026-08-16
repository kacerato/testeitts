.class public final LJAVARuntime/Easings;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime LJAVARuntime/ClassCategory;
    cat = {
        "Math"
    }
.end annotation


# static fields
.field private static final c1:F = 1.70158f

.field private static final c2:F = 2.5949094f

.field private static final c3:F = 2.70158f

.field private static final c4:F = 2.0943952f

.field private static final c5:F = 1.3962634f

.field private static final d1:F = 2.75f

.field private static final n1:F = 7.5625f


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p0}, Lcom/itsmagic/engine/Activities/Editor/Panels/Profiler/MemoryProfiler/AllocatorWatcher;->notify(Ljava/lang/Object;)V

    return-void
.end method

.method public static easeInBack(F)F
    .locals 2
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "x"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "x"
        }
    .end annotation

    const v0, 0x402ce6b0

    mul-float/2addr v0, p0

    mul-float/2addr v0, p0

    mul-float/2addr v0, p0

    const v1, 0x3fd9cd60

    mul-float/2addr v1, p0

    mul-float/2addr v1, p0

    sub-float/2addr v0, v1

    return v0
.end method

.method public static easeInBounce(F)F
    .locals 1
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "x"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "x"
        }
    .end annotation

    const/high16 v0, 0x3f800000    # 1.0f

    sub-float p0, v0, p0

    invoke-static {p0}, LJAVARuntime/Easings;->easeOutBounce(F)F

    move-result p0

    sub-float/2addr v0, p0

    return v0
.end method

.method public static easeInCirc(F)F
    .locals 4
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "x"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "x"
        }
    .end annotation

    float-to-double v0, p0

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    sub-double v0, v2, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    sub-double/2addr v2, v0

    double-to-float p0, v2

    return p0
.end method

.method public static easeInCubic(F)F
    .locals 1
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "x"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "x"
        }
    .end annotation

    mul-float v0, p0, p0

    mul-float/2addr v0, p0

    return v0
.end method

.method public static easeInElastic(F)F
    .locals 6
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "x"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "x"
        }
    .end annotation

    const/4 v0, 0x0

    cmpl-float v1, p0, v0

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, p0, v0

    if-nez v0, :cond_1

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    goto :goto_0

    :cond_1
    const/high16 v0, 0x41200000    # 10.0f

    mul-float/2addr p0, v0

    sub-float v0, p0, v0

    float-to-double v0, v0

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    neg-double v0, v0

    float-to-double v2, p0

    const-wide v4, 0x4025800000000000L    # 10.75

    sub-double/2addr v2, v4

    const-wide v4, 0x4000c15240000000L    # 2.094395160675049

    mul-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    mul-double/2addr v0, v2

    :goto_0
    double-to-float v0, v0

    :goto_1
    return v0
.end method

.method public static easeInExpo(F)F
    .locals 4
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "x"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "x"
        }
    .end annotation

    const/4 v0, 0x0

    cmpl-float v1, p0, v0

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const/high16 v0, 0x41200000    # 10.0f

    mul-float/2addr p0, v0

    sub-float/2addr p0, v0

    float-to-double v0, p0

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    double-to-float v0, v0

    :goto_0
    return v0
.end method

.method public static easeInOutBack(F)F
    .locals 7
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "x"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "x"
        }
    .end annotation

    float-to-double v0, p0

    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    cmpg-double v0, v0, v2

    const v1, 0x402612ff

    const/high16 v2, 0x40000000    # 2.0f

    const-wide/high16 v3, 0x4000000000000000L    # 2.0

    if-gez v0, :cond_0

    mul-float/2addr v2, p0

    float-to-double v5, v2

    invoke-static {v5, v6, v3, v4}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v5

    const v0, 0x40e612ff

    mul-float/2addr p0, v0

    sub-float/2addr p0, v1

    float-to-double v0, p0

    mul-double/2addr v5, v0

    :goto_0
    div-double/2addr v5, v3

    goto :goto_1

    :cond_0
    mul-float/2addr p0, v2

    sub-float/2addr p0, v2

    float-to-double v5, p0

    invoke-static {v5, v6, v3, v4}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v5

    const v0, 0x406612ff

    mul-float/2addr p0, v0

    add-float/2addr p0, v1

    float-to-double v0, p0

    mul-double/2addr v5, v0

    add-double/2addr v5, v3

    goto :goto_0

    :goto_1
    double-to-float p0, v5

    return p0
.end method

.method public static easeInOutBounce(F)F
    .locals 4
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "x"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "x"
        }
    .end annotation

    float-to-double v0, p0

    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    cmpg-double v0, v0, v2

    const/high16 v1, 0x40000000    # 2.0f

    const/high16 v2, 0x3f800000    # 1.0f

    if-gez v0, :cond_0

    mul-float/2addr p0, v1

    sub-float p0, v2, p0

    invoke-static {p0}, LJAVARuntime/Easings;->easeOutBounce(F)F

    move-result p0

    sub-float/2addr v2, p0

    div-float/2addr v2, v1

    goto :goto_0

    :cond_0
    mul-float/2addr p0, v1

    sub-float/2addr p0, v2

    invoke-static {p0}, LJAVARuntime/Easings;->easeOutBounce(F)F

    move-result p0

    add-float/2addr p0, v2

    div-float v2, p0, v1

    :goto_0
    return v2
.end method

.method public static easeInOutCirc(F)F
    .locals 6
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "x"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "x"
        }
    .end annotation

    float-to-double v0, p0

    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    cmpg-double v0, v0, v2

    const/high16 v1, 0x40000000    # 2.0f

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    if-gez v0, :cond_0

    mul-float/2addr p0, v1

    float-to-double v0, p0

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    sub-double v0, v4, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    sub-double/2addr v4, v0

    div-double/2addr v4, v2

    goto :goto_0

    :cond_0
    const/high16 v0, -0x40000000    # -2.0f

    mul-float/2addr p0, v0

    add-float/2addr p0, v1

    float-to-double v0, p0

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    sub-double v0, v4, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    add-double/2addr v0, v4

    div-double v4, v0, v2

    :goto_0
    double-to-float p0, v4

    return p0
.end method

.method public static easeInOutCubic(F)F
    .locals 4
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "x"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "x"
        }
    .end annotation

    float-to-double v0, p0

    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    cmpg-double v0, v0, v2

    if-gez v0, :cond_0

    const/high16 v0, 0x40800000    # 4.0f

    mul-float/2addr v0, p0

    mul-float/2addr v0, p0

    mul-float/2addr v0, p0

    goto :goto_0

    :cond_0
    const/high16 v0, -0x40000000    # -2.0f

    mul-float/2addr p0, v0

    const/high16 v0, 0x40000000    # 2.0f

    add-float/2addr p0, v0

    float-to-double v0, p0

    const-wide/high16 v2, 0x4008000000000000L    # 3.0

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    div-double/2addr v0, v2

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v2, v0

    double-to-float v0, v2

    :goto_0
    return v0
.end method

.method public static easeInOutElastic(F)F
    .locals 13
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "x"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "x"
        }
    .end annotation

    const/4 v0, 0x0

    cmpl-float v1, p0, v0

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, p0, v0

    const-wide/high16 v1, 0x3ff0000000000000L    # 1.0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    float-to-double v3, p0

    const-wide/high16 v5, 0x3fe0000000000000L    # 0.5

    cmpg-double v0, v3, v5

    const-wide v3, 0x3ff6571840000000L    # 1.3962633609771729

    const-wide v5, 0x4026400000000000L    # 11.125

    const/high16 v7, 0x41200000    # 10.0f

    const/high16 v8, 0x41a00000    # 20.0f

    const-wide/high16 v9, 0x4000000000000000L    # 2.0

    if-gez v0, :cond_2

    mul-float/2addr p0, v8

    sub-float v0, p0, v7

    float-to-double v0, v0

    invoke-static {v9, v10, v0, v1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    float-to-double v7, p0

    sub-double/2addr v7, v5

    mul-double/2addr v7, v3

    invoke-static {v7, v8}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    mul-double/2addr v0, v2

    neg-double v0, v0

    div-double v1, v0, v9

    goto :goto_0

    :cond_2
    const/high16 v0, -0x3e600000    # -20.0f

    mul-float/2addr v0, p0

    add-float/2addr v0, v7

    float-to-double v11, v0

    invoke-static {v9, v10, v11, v12}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v11

    mul-float/2addr p0, v8

    float-to-double v7, p0

    sub-double/2addr v7, v5

    mul-double/2addr v7, v3

    invoke-static {v7, v8}, Ljava/lang/Math;->sin(D)D

    move-result-wide v3

    mul-double/2addr v11, v3

    div-double/2addr v11, v9

    add-double/2addr v1, v11

    :goto_0
    double-to-float v0, v1

    :goto_1
    return v0
.end method

.method public static easeInOutExpo(F)F
    .locals 4
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "x"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "x"
        }
    .end annotation

    const/4 v0, 0x0

    cmpl-float v1, p0, v0

    if-nez v1, :cond_0

    goto :goto_2

    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, p0, v0

    if-nez v0, :cond_1

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    goto :goto_1

    :cond_1
    float-to-double v0, p0

    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    cmpg-double v0, v0, v2

    const/high16 v1, 0x41200000    # 10.0f

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    if-gez v0, :cond_2

    const/high16 v0, 0x41a00000    # 20.0f

    mul-float/2addr p0, v0

    sub-float/2addr p0, v1

    float-to-double v0, p0

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    :goto_0
    div-double/2addr v0, v2

    goto :goto_1

    :cond_2
    const/high16 v0, -0x3e600000    # -20.0f

    mul-float/2addr p0, v0

    add-float/2addr p0, v1

    float-to-double v0, p0

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    sub-double v0, v2, v0

    goto :goto_0

    :goto_1
    double-to-float v0, v0

    :goto_2
    return v0
.end method

.method public static easeInOutQuad(F)F
    .locals 4
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "x"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "x"
        }
    .end annotation

    float-to-double v0, p0

    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    cmpg-double v0, v0, v2

    const/high16 v1, 0x40000000    # 2.0f

    if-gez v0, :cond_0

    mul-float/2addr v1, p0

    mul-float/2addr v1, p0

    goto :goto_0

    :cond_0
    const/high16 v0, -0x40000000    # -2.0f

    mul-float/2addr p0, v0

    add-float/2addr p0, v1

    float-to-double v0, p0

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    div-double/2addr v0, v2

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v2, v0

    double-to-float v1, v2

    :goto_0
    return v1
.end method

.method public static easeInOutQuart(F)F
    .locals 4
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "x"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "x"
        }
    .end annotation

    float-to-double v0, p0

    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    cmpg-double v0, v0, v2

    if-gez v0, :cond_0

    const/high16 v0, 0x41000000    # 8.0f

    mul-float/2addr v0, p0

    mul-float/2addr v0, p0

    mul-float/2addr v0, p0

    mul-float/2addr v0, p0

    goto :goto_0

    :cond_0
    const/high16 v0, -0x40000000    # -2.0f

    mul-float/2addr p0, v0

    const/high16 v0, 0x40000000    # 2.0f

    add-float/2addr p0, v0

    float-to-double v0, p0

    const-wide/high16 v2, 0x4010000000000000L    # 4.0

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    div-double/2addr v0, v2

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v2, v0

    double-to-float v0, v2

    :goto_0
    return v0
.end method

.method public static easeInOutQuint(F)F
    .locals 4
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "x"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "x"
        }
    .end annotation

    float-to-double v0, p0

    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    cmpg-double v0, v0, v2

    if-gez v0, :cond_0

    const/high16 v0, 0x41800000    # 16.0f

    mul-float/2addr v0, p0

    mul-float/2addr v0, p0

    mul-float/2addr v0, p0

    mul-float/2addr v0, p0

    mul-float/2addr v0, p0

    goto :goto_0

    :cond_0
    const/high16 v0, -0x40000000    # -2.0f

    mul-float/2addr p0, v0

    const/high16 v0, 0x40000000    # 2.0f

    add-float/2addr p0, v0

    float-to-double v0, p0

    const-wide/high16 v2, 0x4014000000000000L    # 5.0

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    div-double/2addr v0, v2

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v2, v0

    double-to-float v0, v2

    :goto_0
    return v0
.end method

.method public static easeInOutSine(F)F
    .locals 4
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "x"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "x"
        }
    .end annotation

    const-wide v0, 0x400921fb54442d18L    # Math.PI

    float-to-double v2, p0

    mul-double/2addr v2, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v0, v2

    neg-double v0, v0

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    div-double/2addr v0, v2

    double-to-float p0, v0

    return p0
.end method

.method public static easeInQuad(F)F
    .locals 0
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "x"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "x"
        }
    .end annotation

    mul-float/2addr p0, p0

    return p0
.end method

.method public static easeInQuart(F)F
    .locals 1
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "x"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "x"
        }
    .end annotation

    mul-float v0, p0, p0

    mul-float/2addr v0, p0

    mul-float/2addr v0, p0

    return v0
.end method

.method public static easeInQuint(F)F
    .locals 1
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "x"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "x"
        }
    .end annotation

    mul-float v0, p0, p0

    mul-float/2addr v0, p0

    mul-float/2addr v0, p0

    mul-float/2addr v0, p0

    return v0
.end method

.method public static easeInSine(F)F
    .locals 4
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "x"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "x"
        }
    .end annotation

    float-to-double v0, p0

    const-wide v2, 0x400921fb54442d18L    # Math.PI

    mul-double/2addr v0, v2

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    div-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v2, v0

    double-to-float p0, v2

    return p0
.end method

.method public static easeOutBack(F)F
    .locals 6
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "x"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "x"
        }
    .end annotation

    const/high16 v0, 0x3f800000    # 1.0f

    sub-float/2addr p0, v0

    float-to-double v0, p0

    const-wide/high16 v2, 0x4008000000000000L    # 3.0

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    const-wide v4, 0x40059cd600000000L    # 2.701580047607422

    mul-double/2addr v2, v4

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    add-double/2addr v2, v4

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    invoke-static {v0, v1, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    const-wide v4, 0x3ffb39ac00000000L    # 1.7015800476074219

    mul-double/2addr v0, v4

    add-double/2addr v2, v0

    double-to-float p0, v2

    return p0
.end method

.method public static easeOutBounce(F)F
    .locals 6
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "x"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "x"
        }
    .end annotation

    const v0, 0x3eba2e8c

    cmpg-float v0, p0, v0

    const/high16 v1, 0x40f20000    # 7.5625f

    if-gez v0, :cond_0

    mul-float/2addr v1, p0

    mul-float/2addr v1, p0

    return v1

    :cond_0
    const v0, 0x3f3a2e8c

    cmpg-float v0, p0, v0

    if-gez v0, :cond_1

    float-to-double v2, p0

    const-wide v4, 0x3fe1745d1745d174L    # 0.5454545454545454

    sub-double/2addr v2, v4

    double-to-float p0, v2

    mul-float/2addr v1, p0

    mul-float/2addr v1, p0

    float-to-double v0, v1

    const-wide/high16 v2, 0x3fe8000000000000L    # 0.75

    :goto_0
    add-double/2addr v0, v2

    double-to-float p0, v0

    return p0

    :cond_1
    float-to-double v2, p0

    const-wide v4, 0x3fed1745d1745d17L    # 0.9090909090909091

    cmpg-double p0, v2, v4

    if-gez p0, :cond_2

    const-wide v4, 0x3fea2e8ba2e8ba2fL    # 0.8181818181818182

    sub-double/2addr v2, v4

    double-to-float p0, v2

    mul-float/2addr v1, p0

    mul-float/2addr v1, p0

    float-to-double v0, v1

    const-wide/high16 v2, 0x3fee000000000000L    # 0.9375

    goto :goto_0

    :cond_2
    const-wide v4, 0x3fee8ba2e8ba2e8cL    # 0.9545454545454546

    sub-double/2addr v2, v4

    double-to-float p0, v2

    mul-float/2addr v1, p0

    mul-float/2addr v1, p0

    float-to-double v0, v1

    const-wide v2, 0x3fef800000000000L    # 0.984375

    goto :goto_0
.end method

.method public static easeOutCirc(F)F
    .locals 4
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "x"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "x"
        }
    .end annotation

    const/high16 v0, 0x3f800000    # 1.0f

    sub-float/2addr p0, v0

    float-to-double v0, p0

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v2, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float p0, v0

    return p0
.end method

.method public static easeOutCubic(F)F
    .locals 4
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "x"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "x"
        }
    .end annotation

    const/high16 v0, 0x3f800000    # 1.0f

    sub-float/2addr v0, p0

    float-to-double v0, v0

    const-wide/high16 v2, 0x4008000000000000L    # 3.0

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v2, v0

    double-to-float p0, v2

    return p0
.end method

.method public static easeOutElastic(F)F
    .locals 9
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "x"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "x"
        }
    .end annotation

    const/4 v0, 0x0

    cmpl-float v1, p0, v0

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, p0, v0

    const-wide/high16 v1, 0x3ff0000000000000L    # 1.0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    const/high16 v0, -0x3ee00000    # -10.0f

    mul-float/2addr v0, p0

    float-to-double v3, v0

    const-wide/high16 v5, 0x4000000000000000L    # 2.0

    invoke-static {v5, v6, v3, v4}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v3

    const/high16 v0, 0x41200000    # 10.0f

    mul-float/2addr p0, v0

    float-to-double v5, p0

    const-wide/high16 v7, 0x3fe8000000000000L    # 0.75

    sub-double/2addr v5, v7

    const-wide v7, 0x4000c15240000000L    # 2.094395160675049

    mul-double/2addr v5, v7

    invoke-static {v5, v6}, Ljava/lang/Math;->sin(D)D

    move-result-wide v5

    mul-double/2addr v3, v5

    add-double/2addr v1, v3

    :goto_0
    double-to-float v0, v1

    :goto_1
    return v0
.end method

.method public static easeOutExpo(F)F
    .locals 4
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "x"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "x"
        }
    .end annotation

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v1, p0, v0

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const/high16 v0, -0x3ee00000    # -10.0f

    mul-float/2addr p0, v0

    float-to-double v0, p0

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v2, v0

    double-to-float v0, v2

    :goto_0
    return v0
.end method

.method public static easeOutQuad(F)F
    .locals 1
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "x"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "x"
        }
    .end annotation

    const/high16 v0, 0x3f800000    # 1.0f

    sub-float p0, v0, p0

    mul-float/2addr p0, p0

    sub-float/2addr v0, p0

    return v0
.end method

.method public static easeOutQuart(F)F
    .locals 4
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "x"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "x"
        }
    .end annotation

    const/high16 v0, 0x3f800000    # 1.0f

    sub-float/2addr v0, p0

    float-to-double v0, v0

    const-wide/high16 v2, 0x4010000000000000L    # 4.0

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v2, v0

    double-to-float p0, v2

    return p0
.end method

.method public static easeOutQuint(F)F
    .locals 4
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "x"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "x"
        }
    .end annotation

    const/high16 v0, 0x3f800000    # 1.0f

    sub-float/2addr v0, p0

    float-to-double v0, v0

    const-wide/high16 v2, 0x4014000000000000L    # 5.0

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v2, v0

    double-to-float p0, v2

    return p0
.end method

.method public static easeOutSine(F)F
    .locals 4
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "x"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "x"
        }
    .end annotation

    float-to-double v0, p0

    const-wide v2, 0x400921fb54442d18L    # Math.PI

    mul-double/2addr v0, v2

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    div-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    double-to-float p0, v0

    return p0
.end method
