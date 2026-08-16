.class public final Lorg/blacksquircle/ui/editorkit/widget/TextScroller;
.super Landroid/view/View;
.source "SourceFile"

# interfaces
.implements Lorg/blacksquircle/ui/editorkit/widget/internal/ScrollableEditText$OnScrollChangedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/blacksquircle/ui/editorkit/widget/TextScroller$Companion;,
        Lorg/blacksquircle/ui/editorkit/widget/TextScroller$State;,
        Lorg/blacksquircle/ui/editorkit/widget/TextScroller$WhenMappings;
    }
.end annotation


# static fields
.field private static final ALPHA_MAX:I = 0xe1

.field private static final ALPHA_MIN:I = 0x0

.field private static final ALPHA_STEP:I = 0x19

.field public static final Companion:Lorg/blacksquircle/ui/editorkit/widget/TextScroller$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final EXITING_DELAY:J = 0x11L

.field private static final TIME_EXITING:J = 0x7d0L


# instance fields
.field private final draggingBitmap$delegate:Lnf/I;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final hideCallback:Ljava/lang/Runnable;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final hideHandler:Landroid/os/Handler;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final normalBitmap$delegate:Lnf/I;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private scrollableEditText:Lorg/blacksquircle/ui/editorkit/widget/internal/ScrollableEditText;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private state:Lorg/blacksquircle/ui/editorkit/widget/TextScroller$State;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private textScrollMax:F

.field private textScrollY:F

.field private final thumbDragging:Landroid/graphics/drawable/Drawable;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final thumbHeight:I

.field private final thumbNormal:Landroid/graphics/drawable/Drawable;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final thumbPaint:Landroid/graphics/Paint;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private thumbTop:F


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lorg/blacksquircle/ui/editorkit/widget/TextScroller$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/blacksquircle/ui/editorkit/widget/TextScroller$Companion;-><init>(Lkotlin/jvm/internal/x;)V

    sput-object v0, Lorg/blacksquircle/ui/editorkit/widget/TextScroller;->Companion:Lorg/blacksquircle/ui/editorkit/widget/TextScroller$Companion;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 7
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build LLf/k;
    .end annotation

    .line 1
    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v5, 0x6

    const/4 v6, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v1 .. v6}, Lorg/blacksquircle/ui/editorkit/widget/TextScroller;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/x;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 7
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build LLf/k;
    .end annotation

    .line 2
    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v5, 0x4

    const/4 v6, 0x0

    const/4 v4, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v1 .. v6}, Lorg/blacksquircle/ui/editorkit/widget/TextScroller;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/x;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 6
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build LLf/k;
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 4
    sget-object p3, Lorg/blacksquircle/ui/editorkit/widget/TextScroller$State;->HIDDEN:Lorg/blacksquircle/ui/editorkit/widget/TextScroller$State;

    iput-object p3, p0, Lorg/blacksquircle/ui/editorkit/widget/TextScroller;->state:Lorg/blacksquircle/ui/editorkit/widget/TextScroller$State;

    .line 5
    new-instance p3, Lmh/d;

    invoke-direct {p3, p0}, Lmh/d;-><init>(Lorg/blacksquircle/ui/editorkit/widget/TextScroller;)V

    invoke-static {p3}, Lnf/K;->a(LMf/a;)Lnf/I;

    move-result-object p3

    iput-object p3, p0, Lorg/blacksquircle/ui/editorkit/widget/TextScroller;->normalBitmap$delegate:Lnf/I;

    .line 6
    new-instance p3, Lmh/e;

    invoke-direct {p3, p0}, Lmh/e;-><init>(Lorg/blacksquircle/ui/editorkit/widget/TextScroller;)V

    invoke-static {p3}, Lnf/K;->a(LMf/a;)Lnf/I;

    move-result-object p3

    iput-object p3, p0, Lorg/blacksquircle/ui/editorkit/widget/TextScroller;->draggingBitmap$delegate:Lnf/I;

    .line 7
    new-instance p3, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p3, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p3, p0, Lorg/blacksquircle/ui/editorkit/widget/TextScroller;->hideHandler:Landroid/os/Handler;

    .line 8
    new-instance p3, Lmh/f;

    invoke-direct {p3, p0}, Lmh/f;-><init>(Lorg/blacksquircle/ui/editorkit/widget/TextScroller;)V

    iput-object p3, p0, Lorg/blacksquircle/ui/editorkit/widget/TextScroller;->hideCallback:Ljava/lang/Runnable;

    .line 9
    new-instance p3, Landroid/graphics/Paint;

    invoke-direct {p3}, Landroid/graphics/Paint;-><init>()V

    iput-object p3, p0, Lorg/blacksquircle/ui/editorkit/widget/TextScroller;->thumbPaint:Landroid/graphics/Paint;

    .line 10
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    sget-object v1, Lt3/b$s;->JG:[I

    const/4 v2, 0x0

    invoke-virtual {v0, p2, v1, v2, v2}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p2

    const-string v0, "obtainStyledAttributes(...)"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/M;->o(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 11
    invoke-virtual {p2, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    .line 12
    invoke-virtual {p2, v2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v3

    const/4 v4, 0x2

    .line 13
    invoke-virtual {p2, v4}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v5

    if-eqz v1, :cond_0

    .line 14
    invoke-static {p2, v0}, Landroidx/core/content/res/TypedArrayKt;->getDrawableOrThrow(Landroid/content/res/TypedArray;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    goto :goto_0

    :cond_0
    const v1, 0x7f07012c

    .line 15
    invoke-static {p1, v1}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/M;->m(Ljava/lang/Object;)V

    .line 16
    :goto_0
    iput-object v1, p0, Lorg/blacksquircle/ui/editorkit/widget/TextScroller;->thumbNormal:Landroid/graphics/drawable/Drawable;

    if-eqz v3, :cond_1

    .line 17
    invoke-static {p2, v2}, Landroidx/core/content/res/TypedArrayKt;->getDrawableOrThrow(Landroid/content/res/TypedArray;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    goto :goto_1

    :cond_1
    const v3, 0x7f07012d

    .line 18
    invoke-static {p1, v3}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/M;->m(Ljava/lang/Object;)V

    .line 19
    :goto_1
    iput-object p1, p0, Lorg/blacksquircle/ui/editorkit/widget/TextScroller;->thumbDragging:Landroid/graphics/drawable/Drawable;

    if-eqz v5, :cond_2

    .line 20
    invoke-static {p2, v4}, Landroidx/core/content/res/TypedArrayKt;->getColorOrThrow(Landroid/content/res/TypedArray;I)I

    move-result v3

    .line 21
    invoke-virtual {v1, v3}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 22
    invoke-virtual {p1, v3}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 23
    :cond_2
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result p1

    iput p1, p0, Lorg/blacksquircle/ui/editorkit/widget/TextScroller;->thumbHeight:I

    .line 24
    invoke-virtual {p3, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 25
    invoke-virtual {p3, v2}, Landroid/graphics/Paint;->setDither(Z)V

    const/16 p1, 0xe1

    .line 26
    invoke-virtual {p3, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 27
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/x;)V
    .locals 0

    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_0

    const/4 p2, 0x0

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    const/4 p3, 0x0

    .line 28
    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lorg/blacksquircle/ui/editorkit/widget/TextScroller;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public static synthetic a(Lorg/blacksquircle/ui/editorkit/widget/TextScroller;)Landroid/graphics/Bitmap;
    .locals 0

    invoke-static {p0}, Lorg/blacksquircle/ui/editorkit/widget/TextScroller;->draggingBitmap_delegate$lambda$0(Lorg/blacksquircle/ui/editorkit/widget/TextScroller;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic b(Lorg/blacksquircle/ui/editorkit/widget/TextScroller;)Landroid/graphics/Bitmap;
    .locals 0

    invoke-static {p0}, Lorg/blacksquircle/ui/editorkit/widget/TextScroller;->normalBitmap_delegate$lambda$0(Lorg/blacksquircle/ui/editorkit/widget/TextScroller;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic c(Lorg/blacksquircle/ui/editorkit/widget/TextScroller;)V
    .locals 0

    invoke-static {p0}, Lorg/blacksquircle/ui/editorkit/widget/TextScroller;->hideCallback$lambda$0(Lorg/blacksquircle/ui/editorkit/widget/TextScroller;)V

    return-void
.end method

.method private static final draggingBitmap_delegate$lambda$0(Lorg/blacksquircle/ui/editorkit/widget/TextScroller;)Landroid/graphics/Bitmap;
    .locals 6

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    iget v1, p0, Lorg/blacksquircle/ui/editorkit/widget/TextScroller;->thumbHeight:I

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    const-string v1, "createBitmap(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/M;->o(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p0, Lorg/blacksquircle/ui/editorkit/widget/TextScroller;->thumbDragging:Landroid/graphics/drawable/Drawable;

    new-instance v2, Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v3

    iget v4, p0, Lorg/blacksquircle/ui/editorkit/widget/TextScroller;->thumbHeight:I

    const/4 v5, 0x0

    invoke-direct {v2, v5, v5, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    iget-object p0, p0, Lorg/blacksquircle/ui/editorkit/widget/TextScroller;->thumbDragging:Landroid/graphics/drawable/Drawable;

    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {p0, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    return-object v0
.end method

.method private final getDraggingBitmap()Landroid/graphics/Bitmap;
    .locals 1

    iget-object v0, p0, Lorg/blacksquircle/ui/editorkit/widget/TextScroller;->draggingBitmap$delegate:Lnf/I;

    invoke-interface {v0}, Lnf/I;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    return-object v0
.end method

.method private final getMeasurements()V
    .locals 2

    iget-object v0, p0, Lorg/blacksquircle/ui/editorkit/widget/TextScroller;->scrollableEditText:Lorg/blacksquircle/ui/editorkit/widget/internal/ScrollableEditText;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/text/Layout;->getHeight()I

    move-result v0

    int-to-float v0, v0

    goto :goto_0

    :cond_1
    move v0, v1

    :goto_0
    iput v0, p0, Lorg/blacksquircle/ui/editorkit/widget/TextScroller;->textScrollMax:F

    iget-object v0, p0, Lorg/blacksquircle/ui/editorkit/widget/TextScroller;->scrollableEditText:Lorg/blacksquircle/ui/editorkit/widget/internal/ScrollableEditText;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/view/View;->getScrollY()I

    move-result v0

    int-to-float v1, v0

    :cond_2
    iput v1, p0, Lorg/blacksquircle/ui/editorkit/widget/TextScroller;->textScrollY:F

    invoke-direct {p0}, Lorg/blacksquircle/ui/editorkit/widget/TextScroller;->getThumbTop()F

    move-result v0

    iput v0, p0, Lorg/blacksquircle/ui/editorkit/widget/TextScroller;->thumbTop:F

    return-void
.end method

.method private final getNormalBitmap()Landroid/graphics/Bitmap;
    .locals 1

    iget-object v0, p0, Lorg/blacksquircle/ui/editorkit/widget/TextScroller;->normalBitmap$delegate:Lnf/I;

    invoke-interface {v0}, Lnf/I;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    return-object v0
.end method

.method private final getThumbTop()F
    .locals 6

    iget-object v0, p0, Lorg/blacksquircle/ui/editorkit/widget/TextScroller;->scrollableEditText:Lorg/blacksquircle/ui/editorkit/widget/internal/ScrollableEditText;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    const/4 v2, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/widget/TextView;->getLineHeight()I

    move-result v0

    goto :goto_0

    :cond_1
    move v0, v2

    :goto_0
    iget-object v3, p0, Lorg/blacksquircle/ui/editorkit/widget/TextScroller;->scrollableEditText:Lorg/blacksquircle/ui/editorkit/widget/internal/ScrollableEditText;

    if-eqz v3, :cond_2

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v2

    :cond_2
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v3

    iget v4, p0, Lorg/blacksquircle/ui/editorkit/widget/TextScroller;->thumbHeight:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    iget v4, p0, Lorg/blacksquircle/ui/editorkit/widget/TextScroller;->textScrollY:F

    iget v5, p0, Lorg/blacksquircle/ui/editorkit/widget/TextScroller;->textScrollMax:F

    int-to-float v2, v2

    sub-float/2addr v5, v2

    int-to-float v0, v0

    add-float/2addr v5, v0

    div-float/2addr v4, v5

    mul-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_3

    move v1, v3

    :cond_3
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v0

    iget v2, p0, Lorg/blacksquircle/ui/editorkit/widget/TextScroller;->thumbHeight:I

    sub-int/2addr v0, v2

    int-to-float v0, v0

    cmpl-float v0, v1, v0

    if-lez v0, :cond_4

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v0

    iget v1, p0, Lorg/blacksquircle/ui/editorkit/widget/TextScroller;->thumbHeight:I

    sub-int/2addr v0, v1

    int-to-float v1, v0

    :cond_4
    return v1
.end method

.method private static final hideCallback$lambda$0(Lorg/blacksquircle/ui/editorkit/widget/TextScroller;)V
    .locals 1

    sget-object v0, Lorg/blacksquircle/ui/editorkit/widget/TextScroller$State;->EXITING:Lorg/blacksquircle/ui/editorkit/widget/TextScroller$State;

    invoke-virtual {p0, v0}, Lorg/blacksquircle/ui/editorkit/widget/TextScroller;->setState(Lorg/blacksquircle/ui/editorkit/widget/TextScroller$State;)V

    return-void
.end method

.method private final isPointInThumb(FF)Z
    .locals 1

    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-ltz v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v0, v0

    cmpg-float p1, p1, v0

    if-gtz p1, :cond_0

    iget p1, p0, Lorg/blacksquircle/ui/editorkit/widget/TextScroller;->thumbTop:F

    cmpl-float v0, p2, p1

    if-ltz v0, :cond_0

    iget v0, p0, Lorg/blacksquircle/ui/editorkit/widget/TextScroller;->thumbHeight:I

    int-to-float v0, v0

    add-float/2addr p1, v0

    cmpg-float p1, p2, p1

    if-gtz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private final isShowScrollerJustified()Z
    .locals 5

    iget v0, p0, Lorg/blacksquircle/ui/editorkit/widget/TextScroller;->textScrollMax:F

    iget-object v1, p0, Lorg/blacksquircle/ui/editorkit/widget/TextScroller;->scrollableEditText:Lorg/blacksquircle/ui/editorkit/widget/internal/ScrollableEditText;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    int-to-float v1, v1

    div-float/2addr v0, v1

    float-to-double v0, v0

    const-wide/high16 v3, 0x3ff8000000000000L    # 1.5

    cmpl-double v0, v0, v3

    if-ltz v0, :cond_1

    const/4 v2, 0x1

    :cond_1
    return v2
.end method

.method private static final normalBitmap_delegate$lambda$0(Lorg/blacksquircle/ui/editorkit/widget/TextScroller;)Landroid/graphics/Bitmap;
    .locals 6

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    iget v1, p0, Lorg/blacksquircle/ui/editorkit/widget/TextScroller;->thumbHeight:I

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    const-string v1, "createBitmap(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/M;->o(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p0, Lorg/blacksquircle/ui/editorkit/widget/TextScroller;->thumbNormal:Landroid/graphics/drawable/Drawable;

    new-instance v2, Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v3

    iget v4, p0, Lorg/blacksquircle/ui/editorkit/widget/TextScroller;->thumbHeight:I

    const/4 v5, 0x0

    invoke-direct {v2, v5, v5, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    iget-object p0, p0, Lorg/blacksquircle/ui/editorkit/widget/TextScroller;->thumbNormal:Landroid/graphics/drawable/Drawable;

    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {p0, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    return-object v0
.end method

.method private final scrollView()V
    .locals 6

    iget-object v0, p0, Lorg/blacksquircle/ui/editorkit/widget/TextScroller;->scrollableEditText:Lorg/blacksquircle/ui/editorkit/widget/internal/ScrollableEditText;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget v0, p0, Lorg/blacksquircle/ui/editorkit/widget/TextScroller;->thumbTop:F

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v1

    iget v2, p0, Lorg/blacksquircle/ui/editorkit/widget/TextScroller;->thumbHeight:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    div-float/2addr v0, v1

    iget-object v1, p0, Lorg/blacksquircle/ui/editorkit/widget/TextScroller;->scrollableEditText:Lorg/blacksquircle/ui/editorkit/widget/internal/ScrollableEditText;

    invoke-static {v1}, Lkotlin/jvm/internal/M;->m(Ljava/lang/Object;)V

    invoke-virtual {v1}, Landroid/widget/TextView;->getLineHeight()I

    move-result v1

    iget-object v2, p0, Lorg/blacksquircle/ui/editorkit/widget/TextScroller;->scrollableEditText:Lorg/blacksquircle/ui/editorkit/widget/internal/ScrollableEditText;

    invoke-static {v2}, Lkotlin/jvm/internal/M;->m(Ljava/lang/Object;)V

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    iget-object v3, p0, Lorg/blacksquircle/ui/editorkit/widget/TextScroller;->scrollableEditText:Lorg/blacksquircle/ui/editorkit/widget/internal/ScrollableEditText;

    if-eqz v3, :cond_1

    invoke-static {v3}, Lkotlin/jvm/internal/M;->m(Ljava/lang/Object;)V

    invoke-virtual {v3}, Landroid/view/View;->getScrollX()I

    move-result v4

    iget v5, p0, Lorg/blacksquircle/ui/editorkit/widget/TextScroller;->textScrollMax:F

    mul-float/2addr v5, v0

    sub-int/2addr v2, v1

    int-to-float v1, v2

    mul-float/2addr v0, v1

    sub-float/2addr v5, v0

    float-to-int v0, v5

    invoke-virtual {v3, v4, v0}, Landroid/view/View;->scrollTo(II)V

    :cond_1
    return-void
.end method


# virtual methods
.method public final attachTo(Lorg/blacksquircle/ui/editorkit/widget/internal/ScrollableEditText;)V
    .locals 1
    .param p1    # Lorg/blacksquircle/ui/editorkit/widget/internal/ScrollableEditText;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "scrollableEditText"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lorg/blacksquircle/ui/editorkit/widget/TextScroller;->scrollableEditText:Lorg/blacksquircle/ui/editorkit/widget/internal/ScrollableEditText;

    if-eqz p1, :cond_0

    invoke-virtual {p1, p0}, Lorg/blacksquircle/ui/editorkit/widget/internal/ScrollableEditText;->addOnScrollChangedListener(Lorg/blacksquircle/ui/editorkit/widget/internal/ScrollableEditText$OnScrollChangedListener;)V

    :cond_0
    return-void
.end method

.method public final detach()V
    .locals 1

    iget-object v0, p0, Lorg/blacksquircle/ui/editorkit/widget/TextScroller;->scrollableEditText:Lorg/blacksquircle/ui/editorkit/widget/internal/ScrollableEditText;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p0}, Lorg/blacksquircle/ui/editorkit/widget/internal/ScrollableEditText;->removeOnScrollChangedListener(Lorg/blacksquircle/ui/editorkit/widget/internal/ScrollableEditText$OnScrollChangedListener;)V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/blacksquircle/ui/editorkit/widget/TextScroller;->scrollableEditText:Lorg/blacksquircle/ui/editorkit/widget/internal/ScrollableEditText;

    return-void
.end method

.method public final getState()Lorg/blacksquircle/ui/editorkit/widget/TextScroller$State;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lorg/blacksquircle/ui/editorkit/widget/TextScroller;->state:Lorg/blacksquircle/ui/editorkit/widget/TextScroller$State;

    return-object v0
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 4
    .param p1    # Landroid/graphics/Canvas;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "canvas"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    iget-object v0, p0, Lorg/blacksquircle/ui/editorkit/widget/TextScroller;->state:Lorg/blacksquircle/ui/editorkit/widget/TextScroller$State;

    sget-object v1, Lorg/blacksquircle/ui/editorkit/widget/TextScroller$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_4

    const/4 v1, 0x2

    const/16 v2, 0xe1

    const/4 v3, 0x0

    if-eq v0, v1, :cond_3

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lorg/blacksquircle/ui/editorkit/widget/TextScroller;->thumbPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getAlpha()I

    move-result v0

    const/16 v1, 0x19

    if-le v0, v1, :cond_0

    iget-object v0, p0, Lorg/blacksquircle/ui/editorkit/widget/TextScroller;->thumbPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getAlpha()I

    move-result v2

    sub-int/2addr v2, v1

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    invoke-direct {p0}, Lorg/blacksquircle/ui/editorkit/widget/TextScroller;->getNormalBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    iget v1, p0, Lorg/blacksquircle/ui/editorkit/widget/TextScroller;->thumbTop:F

    iget-object v2, p0, Lorg/blacksquircle/ui/editorkit/widget/TextScroller;->thumbPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v3, v1, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    invoke-virtual {p0}, Landroid/view/View;->getHandler()Landroid/os/Handler;

    move-result-object p1

    iget-object v0, p0, Lorg/blacksquircle/ui/editorkit/widget/TextScroller;->hideCallback:Ljava/lang/Runnable;

    const-wide/16 v1, 0x11

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lorg/blacksquircle/ui/editorkit/widget/TextScroller;->thumbPaint:Landroid/graphics/Paint;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    sget-object p1, Lorg/blacksquircle/ui/editorkit/widget/TextScroller$State;->HIDDEN:Lorg/blacksquircle/ui/editorkit/widget/TextScroller$State;

    invoke-virtual {p0, p1}, Lorg/blacksquircle/ui/editorkit/widget/TextScroller;->setState(Lorg/blacksquircle/ui/editorkit/widget/TextScroller$State;)V

    goto :goto_0

    :cond_1
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1

    :cond_2
    iget-object v0, p0, Lorg/blacksquircle/ui/editorkit/widget/TextScroller;->thumbPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    invoke-direct {p0}, Lorg/blacksquircle/ui/editorkit/widget/TextScroller;->getDraggingBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    iget v1, p0, Lorg/blacksquircle/ui/editorkit/widget/TextScroller;->thumbTop:F

    iget-object v2, p0, Lorg/blacksquircle/ui/editorkit/widget/TextScroller;->thumbPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v3, v1, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lorg/blacksquircle/ui/editorkit/widget/TextScroller;->thumbPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    invoke-direct {p0}, Lorg/blacksquircle/ui/editorkit/widget/TextScroller;->getNormalBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    iget v1, p0, Lorg/blacksquircle/ui/editorkit/widget/TextScroller;->thumbTop:F

    iget-object v2, p0, Lorg/blacksquircle/ui/editorkit/widget/TextScroller;->thumbPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v3, v1, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    :cond_4
    :goto_0
    return-void
.end method

.method public onScrollChanged(IIII)V
    .locals 0

    iget-object p1, p0, Lorg/blacksquircle/ui/editorkit/widget/TextScroller;->state:Lorg/blacksquircle/ui/editorkit/widget/TextScroller$State;

    sget-object p2, Lorg/blacksquircle/ui/editorkit/widget/TextScroller$State;->DRAGGING:Lorg/blacksquircle/ui/editorkit/widget/TextScroller$State;

    if-eq p1, p2, :cond_0

    invoke-direct {p0}, Lorg/blacksquircle/ui/editorkit/widget/TextScroller;->getMeasurements()V

    sget-object p1, Lorg/blacksquircle/ui/editorkit/widget/TextScroller$State;->VISIBLE:Lorg/blacksquircle/ui/editorkit/widget/TextScroller$State;

    invoke-virtual {p0, p1}, Lorg/blacksquircle/ui/editorkit/widget/TextScroller;->setState(Lorg/blacksquircle/ui/editorkit/widget/TextScroller$State;)V

    iget-object p1, p0, Lorg/blacksquircle/ui/editorkit/widget/TextScroller;->hideHandler:Landroid/os/Handler;

    iget-object p2, p0, Lorg/blacksquircle/ui/editorkit/widget/TextScroller;->hideCallback:Ljava/lang/Runnable;

    const-wide/16 p3, 0x7d0

    invoke-virtual {p1, p2, p3, p4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4
    .param p1    # Landroid/view/MotionEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ClickableViewAccessibility"
        }
    .end annotation

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lorg/blacksquircle/ui/editorkit/widget/TextScroller;->scrollableEditText:Lorg/blacksquircle/ui/editorkit/widget/internal/ScrollableEditText;

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lorg/blacksquircle/ui/editorkit/widget/TextScroller;->state:Lorg/blacksquircle/ui/editorkit/widget/TextScroller$State;

    sget-object v2, Lorg/blacksquircle/ui/editorkit/widget/TextScroller$State;->HIDDEN:Lorg/blacksquircle/ui/editorkit/widget/TextScroller$State;

    if-ne v0, v2, :cond_0

    goto/16 :goto_1

    :cond_0
    invoke-direct {p0}, Lorg/blacksquircle/ui/editorkit/widget/TextScroller;->getMeasurements()V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_6

    if-eq v0, v2, :cond_5

    const/4 v3, 0x2

    if-eq v0, v3, :cond_1

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lorg/blacksquircle/ui/editorkit/widget/TextScroller;->state:Lorg/blacksquircle/ui/editorkit/widget/TextScroller$State;

    sget-object v3, Lorg/blacksquircle/ui/editorkit/widget/TextScroller$State;->DRAGGING:Lorg/blacksquircle/ui/editorkit/widget/TextScroller$State;

    if-ne v0, v3, :cond_8

    invoke-virtual {p0, v2}, Landroid/view/View;->setPressed(Z)V

    iget-object v0, p0, Lorg/blacksquircle/ui/editorkit/widget/TextScroller;->scrollableEditText:Lorg/blacksquircle/ui/editorkit/widget/internal/ScrollableEditText;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lorg/blacksquircle/ui/editorkit/widget/internal/ScrollableEditText;->abortFling()V

    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    float-to-int p1, p1

    iget v0, p0, Lorg/blacksquircle/ui/editorkit/widget/TextScroller;->thumbHeight:I

    div-int/lit8 v3, v0, 0x2

    sub-int/2addr p1, v3

    if-gez p1, :cond_3

    goto :goto_0

    :cond_3
    add-int/2addr v0, p1

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v1

    if-le v0, v1, :cond_4

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result p1

    iget v0, p0, Lorg/blacksquircle/ui/editorkit/widget/TextScroller;->thumbHeight:I

    sub-int v1, p1, v0

    goto :goto_0

    :cond_4
    move v1, p1

    :goto_0
    int-to-float p1, v1

    iput p1, p0, Lorg/blacksquircle/ui/editorkit/widget/TextScroller;->thumbTop:F

    invoke-direct {p0}, Lorg/blacksquircle/ui/editorkit/widget/TextScroller;->scrollView()V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return v2

    :cond_5
    sget-object p1, Lorg/blacksquircle/ui/editorkit/widget/TextScroller$State;->VISIBLE:Lorg/blacksquircle/ui/editorkit/widget/TextScroller$State;

    invoke-virtual {p0, p1}, Lorg/blacksquircle/ui/editorkit/widget/TextScroller;->setState(Lorg/blacksquircle/ui/editorkit/widget/TextScroller$State;)V

    invoke-virtual {p0, v1}, Landroid/view/View;->setPressed(Z)V

    iget-object p1, p0, Lorg/blacksquircle/ui/editorkit/widget/TextScroller;->hideHandler:Landroid/os/Handler;

    iget-object v0, p0, Lorg/blacksquircle/ui/editorkit/widget/TextScroller;->hideCallback:Ljava/lang/Runnable;

    const-wide/16 v2, 0x7d0

    invoke-virtual {p1, v0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_1

    :cond_6
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    invoke-direct {p0, v0, p1}, Lorg/blacksquircle/ui/editorkit/widget/TextScroller;->isPointInThumb(FF)Z

    move-result p1

    if-eqz p1, :cond_8

    iget-object p1, p0, Lorg/blacksquircle/ui/editorkit/widget/TextScroller;->scrollableEditText:Lorg/blacksquircle/ui/editorkit/widget/internal/ScrollableEditText;

    if-eqz p1, :cond_7

    invoke-virtual {p1}, Lorg/blacksquircle/ui/editorkit/widget/internal/ScrollableEditText;->abortFling()V

    :cond_7
    sget-object p1, Lorg/blacksquircle/ui/editorkit/widget/TextScroller$State;->DRAGGING:Lorg/blacksquircle/ui/editorkit/widget/TextScroller$State;

    invoke-virtual {p0, p1}, Lorg/blacksquircle/ui/editorkit/widget/TextScroller;->setState(Lorg/blacksquircle/ui/editorkit/widget/TextScroller$State;)V

    invoke-virtual {p0, v2}, Landroid/view/View;->setPressed(Z)V

    return v2

    :cond_8
    :goto_1
    return v1
.end method

.method public final setState(Lorg/blacksquircle/ui/editorkit/widget/TextScroller$State;)V
    .locals 2
    .param p1    # Lorg/blacksquircle/ui/editorkit/widget/TextScroller$State;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lorg/blacksquircle/ui/editorkit/widget/TextScroller$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lorg/blacksquircle/ui/editorkit/widget/TextScroller;->hideHandler:Landroid/os/Handler;

    iget-object v1, p0, Lorg/blacksquircle/ui/editorkit/widget/TextScroller;->hideCallback:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iput-object p1, p0, Lorg/blacksquircle/ui/editorkit/widget/TextScroller;->state:Lorg/blacksquircle/ui/editorkit/widget/TextScroller$State;

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    goto :goto_0

    :cond_0
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1

    :cond_1
    iget-object v0, p0, Lorg/blacksquircle/ui/editorkit/widget/TextScroller;->hideHandler:Landroid/os/Handler;

    iget-object v1, p0, Lorg/blacksquircle/ui/editorkit/widget/TextScroller;->hideCallback:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iput-object p1, p0, Lorg/blacksquircle/ui/editorkit/widget/TextScroller;->state:Lorg/blacksquircle/ui/editorkit/widget/TextScroller$State;

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    goto :goto_0

    :cond_2
    invoke-direct {p0}, Lorg/blacksquircle/ui/editorkit/widget/TextScroller;->isShowScrollerJustified()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lorg/blacksquircle/ui/editorkit/widget/TextScroller;->hideHandler:Landroid/os/Handler;

    iget-object v1, p0, Lorg/blacksquircle/ui/editorkit/widget/TextScroller;->hideCallback:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iput-object p1, p0, Lorg/blacksquircle/ui/editorkit/widget/TextScroller;->state:Lorg/blacksquircle/ui/editorkit/widget/TextScroller$State;

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lorg/blacksquircle/ui/editorkit/widget/TextScroller;->hideHandler:Landroid/os/Handler;

    iget-object v1, p0, Lorg/blacksquircle/ui/editorkit/widget/TextScroller;->hideCallback:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iput-object p1, p0, Lorg/blacksquircle/ui/editorkit/widget/TextScroller;->state:Lorg/blacksquircle/ui/editorkit/widget/TextScroller$State;

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_4
    :goto_0
    return-void
.end method
