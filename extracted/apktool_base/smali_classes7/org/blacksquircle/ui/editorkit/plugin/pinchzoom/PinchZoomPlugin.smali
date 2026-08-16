.class public final Lorg/blacksquircle/ui/editorkit/plugin/pinchzoom/PinchZoomPlugin;
.super Lorg/blacksquircle/ui/editorkit/plugin/base/EditorPlugin;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/blacksquircle/ui/editorkit/plugin/pinchzoom/PinchZoomPlugin$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lorg/blacksquircle/ui/editorkit/plugin/pinchzoom/PinchZoomPlugin$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final DEFAULT_MAX_TEXT_SIZE:F = 20.0f

.field public static final DEFAULT_MIN_TEXT_SIZE:F = 10.0f

.field public static final PLUGIN_ID:Ljava/lang/String; = "pinchzoom-0361"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private isDoingPinchZoom:Z

.field private maxTextSize:F

.field private minTextSize:F

.field private pinchFactor:F


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lorg/blacksquircle/ui/editorkit/plugin/pinchzoom/PinchZoomPlugin$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/blacksquircle/ui/editorkit/plugin/pinchzoom/PinchZoomPlugin$Companion;-><init>(Lkotlin/jvm/internal/x;)V

    sput-object v0, Lorg/blacksquircle/ui/editorkit/plugin/pinchzoom/PinchZoomPlugin;->Companion:Lorg/blacksquircle/ui/editorkit/plugin/pinchzoom/PinchZoomPlugin$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const-string v0, "pinchzoom-0361"

    invoke-direct {p0, v0}, Lorg/blacksquircle/ui/editorkit/plugin/base/EditorPlugin;-><init>(Ljava/lang/String;)V

    const/high16 v0, 0x41200000    # 10.0f

    iput v0, p0, Lorg/blacksquircle/ui/editorkit/plugin/pinchzoom/PinchZoomPlugin;->minTextSize:F

    const/high16 v0, 0x41a00000    # 20.0f

    iput v0, p0, Lorg/blacksquircle/ui/editorkit/plugin/pinchzoom/PinchZoomPlugin;->maxTextSize:F

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lorg/blacksquircle/ui/editorkit/plugin/pinchzoom/PinchZoomPlugin;->pinchFactor:F

    return-void
.end method

.method private final getDistanceBetweenTouches(Landroid/view/MotionEvent;)F
    .locals 4

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v1

    const/4 v2, 0x1

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    sub-float/2addr v1, v3

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v0

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getY(I)F

    move-result p1

    sub-float/2addr v0, p1

    mul-float/2addr v1, v1

    mul-float/2addr v0, v0

    add-float/2addr v1, v0

    float-to-double v0, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float p1, v0

    return p1
.end method

.method private final updateTextSize(F)Z
    .locals 3

    invoke-virtual {p0}, Lorg/blacksquircle/ui/editorkit/plugin/base/EditorPlugin;->getEditText()Lorg/blacksquircle/ui/editorkit/widget/TextProcessor;

    move-result-object v0

    iget v1, p0, Lorg/blacksquircle/ui/editorkit/plugin/pinchzoom/PinchZoomPlugin;->minTextSize:F

    cmpg-float v2, p1, v1

    if-gez v2, :cond_0

    :goto_0
    move p1, v1

    goto :goto_1

    :cond_0
    iget v1, p0, Lorg/blacksquircle/ui/editorkit/plugin/pinchzoom/PinchZoomPlugin;->maxTextSize:F

    cmpl-float v2, p1, v1

    if-lez v2, :cond_1

    goto :goto_0

    :cond_1
    :goto_1
    invoke-virtual {v0, p1}, Lorg/blacksquircle/ui/editorkit/widget/TextProcessor;->setTextSize(F)V

    const/4 p1, 0x1

    return p1
.end method


# virtual methods
.method public final getMaxTextSize()F
    .locals 1

    iget v0, p0, Lorg/blacksquircle/ui/editorkit/plugin/pinchzoom/PinchZoomPlugin;->maxTextSize:F

    return v0
.end method

.method public final getMinTextSize()F
    .locals 1

    iget v0, p0, Lorg/blacksquircle/ui/editorkit/plugin/pinchzoom/PinchZoomPlugin;->minTextSize:F

    return v0
.end method

.method public onAttached(Lorg/blacksquircle/ui/editorkit/widget/TextProcessor;)V
    .locals 1
    .param p1    # Lorg/blacksquircle/ui/editorkit/widget/TextProcessor;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "editText"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1}, Lorg/blacksquircle/ui/editorkit/plugin/base/EditorPlugin;->onAttached(Lorg/blacksquircle/ui/editorkit/widget/TextProcessor;)V

    const-string p1, "pinchzoom-0361"

    const-string v0, "PinchZoom plugin loaded successfully!"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4
    .param p1    # Landroid/view/MotionEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_2

    const/4 v3, 0x2

    if-eq v0, v3, :cond_0

    const/4 p1, 0x3

    if-eq v0, p1, :cond_2

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    if-ne v0, v3, :cond_3

    invoke-direct {p0, p1}, Lorg/blacksquircle/ui/editorkit/plugin/pinchzoom/PinchZoomPlugin;->getDistanceBetweenTouches(Landroid/view/MotionEvent;)F

    move-result p1

    iget-boolean v0, p0, Lorg/blacksquircle/ui/editorkit/plugin/pinchzoom/PinchZoomPlugin;->isDoingPinchZoom:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lorg/blacksquircle/ui/editorkit/plugin/base/EditorPlugin;->requireContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->scaledDensity:F

    invoke-virtual {p0}, Lorg/blacksquircle/ui/editorkit/plugin/base/EditorPlugin;->getEditText()Lorg/blacksquircle/ui/editorkit/widget/TextProcessor;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->getTextSize()F

    move-result v1

    div-float/2addr v1, v0

    div-float/2addr v1, p1

    iput v1, p0, Lorg/blacksquircle/ui/editorkit/plugin/pinchzoom/PinchZoomPlugin;->pinchFactor:F

    iput-boolean v2, p0, Lorg/blacksquircle/ui/editorkit/plugin/pinchzoom/PinchZoomPlugin;->isDoingPinchZoom:Z

    :cond_1
    iget v0, p0, Lorg/blacksquircle/ui/editorkit/plugin/pinchzoom/PinchZoomPlugin;->pinchFactor:F

    mul-float/2addr v0, p1

    invoke-direct {p0, v0}, Lorg/blacksquircle/ui/editorkit/plugin/pinchzoom/PinchZoomPlugin;->updateTextSize(F)Z

    move-result p1

    return p1

    :cond_2
    iput-boolean v1, p0, Lorg/blacksquircle/ui/editorkit/plugin/pinchzoom/PinchZoomPlugin;->isDoingPinchZoom:Z

    :cond_3
    :goto_0
    return v1
.end method

.method public final setMaxTextSize(F)V
    .locals 0

    iput p1, p0, Lorg/blacksquircle/ui/editorkit/plugin/pinchzoom/PinchZoomPlugin;->maxTextSize:F

    return-void
.end method

.method public final setMinTextSize(F)V
    .locals 0

    iput p1, p0, Lorg/blacksquircle/ui/editorkit/plugin/pinchzoom/PinchZoomPlugin;->minTextSize:F

    return-void
.end method
