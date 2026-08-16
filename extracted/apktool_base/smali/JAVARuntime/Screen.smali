.class public final LJAVARuntime/Screen;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime LJAVARuntime/ClassCategory;
    cat = {
        "Platform"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p0}, Lcom/itsmagic/engine/Activities/Editor/Panels/Profiler/MemoryProfiler/AllocatorWatcher;->notify(Ljava/lang/Object;)V

    return-void
.end method

.method public static getHeight()I
    .locals 1
    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Returns the screen height in pixels."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Retorna a altura da tela em pixels."
    .end annotation

    invoke-static {}, LJAVARuntime/Screen;->height()I

    move-result v0

    return v0
.end method

.method public static getWidth()I
    .locals 1
    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Returns the screen width in pixels."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Retorna a largura da tela em pixels."
    .end annotation

    invoke-static {}, LJAVARuntime/Screen;->width()I

    move-result v0

    return v0
.end method

.method public static height()I
    .locals 2
    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Returns the screen height in pixels."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Retorna a altura da tela em pixels."
    .end annotation

    sget-object v0, Lz5/a;->m0:Lz5/g;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lz5/g;->a()Lo4/f;

    move-result-object v0

    invoke-virtual {v0}, Lo4/f;->c()F

    move-result v0

    invoke-static {}, LK8/c;->a()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v0, v1

    float-to-int v0, v0

    return v0

    :cond_0
    invoke-static {}, LK8/c;->a()I

    move-result v0

    return v0
.end method

.method public static ratio()F
    .locals 2
    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Returns the aspect ratio of the screen (width divided by height)."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Retorna o aspecto da tela (largura dividida pela altura)."
    .end annotation

    invoke-static {}, LJAVARuntime/Screen;->width()I

    move-result v0

    int-to-float v0, v0

    invoke-static {}, LJAVARuntime/Screen;->height()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    return v0
.end method

.method public static width()I
    .locals 2
    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Returns the screen width in pixels."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Retorna a largura da tela em pixels."
    .end annotation

    sget-object v0, Lz5/a;->m0:Lz5/g;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lz5/g;->a()Lo4/f;

    move-result-object v0

    invoke-virtual {v0}, Lo4/f;->d()F

    move-result v0

    invoke-static {}, LK8/c;->b()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v0, v1

    float-to-int v0, v0

    return v0

    :cond_0
    invoke-static {}, LK8/c;->b()I

    move-result v0

    return v0
.end method
