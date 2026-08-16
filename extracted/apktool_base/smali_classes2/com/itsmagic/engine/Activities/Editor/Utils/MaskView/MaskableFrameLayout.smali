.class public Lcom/itsmagic/engine/Activities/Editor/Utils/MaskView/MaskableFrameLayout;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# static fields
.field public static final g:Ljava/lang/String; = "MaskableFrameLayout"

.field public static final h:I = 0x0

.field public static final i:I = 0x1

.field public static final j:I = 0x2

.field public static final k:I = 0x3

.field public static final l:I = 0x4

.field public static final m:I = 0x5

.field public static final n:I = 0x6

.field public static final o:I = 0x7

.field public static final p:I = 0x8

.field public static final q:I = 0x9

.field public static final r:I = 0xa

.field public static final s:I = 0xb

.field public static final t:I = 0xc

.field public static final u:I = 0xd

.field public static final v:I = 0xe

.field public static final w:I = 0xf

.field public static final x:I = 0x10

.field public static final y:I = 0x11


# instance fields
.field public b:Landroid/os/Handler;

.field public c:Landroid/graphics/drawable/Drawable;

.field public d:Landroid/graphics/Bitmap;

.field public e:Landroid/graphics/Paint;

.field public f:Landroid/graphics/PorterDuffXfermode;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 2
    iput-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/Utils/MaskView/MaskableFrameLayout;->c:Landroid/graphics/drawable/Drawable;

    .line 3
    iput-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/Utils/MaskView/MaskableFrameLayout;->d:Landroid/graphics/Bitmap;

    .line 4
    iput-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/Utils/MaskView/MaskableFrameLayout;->e:Landroid/graphics/Paint;

    .line 5
    iput-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/Utils/MaskView/MaskableFrameLayout;->f:Landroid/graphics/PorterDuffXfermode;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "attrs"
        }
    .end annotation

    .line 6
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    .line 7
    iput-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Utils/MaskView/MaskableFrameLayout;->c:Landroid/graphics/drawable/Drawable;

    .line 8
    iput-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Utils/MaskView/MaskableFrameLayout;->d:Landroid/graphics/Bitmap;

    .line 9
    iput-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Utils/MaskView/MaskableFrameLayout;->e:Landroid/graphics/Paint;

    .line 10
    iput-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Utils/MaskView/MaskableFrameLayout;->f:Landroid/graphics/PorterDuffXfermode;

    .line 11
    invoke-virtual {p0, p1, p2}, Lcom/itsmagic/engine/Activities/Editor/Utils/MaskView/MaskableFrameLayout;->e(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "attrs",
            "defStyle"
        }
    .end annotation

    .line 12
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p3, 0x0

    .line 13
    iput-object p3, p0, Lcom/itsmagic/engine/Activities/Editor/Utils/MaskView/MaskableFrameLayout;->c:Landroid/graphics/drawable/Drawable;

    .line 14
    iput-object p3, p0, Lcom/itsmagic/engine/Activities/Editor/Utils/MaskView/MaskableFrameLayout;->d:Landroid/graphics/Bitmap;

    .line 15
    iput-object p3, p0, Lcom/itsmagic/engine/Activities/Editor/Utils/MaskView/MaskableFrameLayout;->e:Landroid/graphics/Paint;

    .line 16
    iput-object p3, p0, Lcom/itsmagic/engine/Activities/Editor/Utils/MaskView/MaskableFrameLayout;->f:Landroid/graphics/PorterDuffXfermode;

    .line 17
    invoke-virtual {p0, p1, p2}, Lcom/itsmagic/engine/Activities/Editor/Utils/MaskView/MaskableFrameLayout;->e(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public static synthetic a(Lcom/itsmagic/engine/Activities/Editor/Utils/MaskView/MaskableFrameLayout;Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/itsmagic/engine/Activities/Editor/Utils/MaskView/MaskableFrameLayout;->j(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic b(Lcom/itsmagic/engine/Activities/Editor/Utils/MaskView/MaskableFrameLayout;)Landroid/graphics/drawable/Drawable;
    .locals 0

    iget-object p0, p0, Lcom/itsmagic/engine/Activities/Editor/Utils/MaskView/MaskableFrameLayout;->c:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method public static synthetic c(Lcom/itsmagic/engine/Activities/Editor/Utils/MaskView/MaskableFrameLayout;Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/itsmagic/engine/Activities/Editor/Utils/MaskView/MaskableFrameLayout;->k(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic d(Lcom/itsmagic/engine/Activities/Editor/Utils/MaskView/MaskableFrameLayout;Landroid/graphics/Bitmap;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/itsmagic/engine/Activities/Editor/Utils/MaskView/MaskableFrameLayout;->n(Landroid/graphics/Bitmap;)V

    return-void
.end method


# virtual methods
.method public dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "canvas"
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Utils/MaskView/MaskableFrameLayout;->d:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-super {p0, p1}, Landroid/view/View;->dispatchDraw(Landroid/graphics/Canvas;)V

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Utils/MaskView/MaskableFrameLayout;->d:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Utils/MaskView/MaskableFrameLayout;->e:Landroid/graphics/Paint;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/itsmagic/engine/Activities/Editor/Utils/MaskView/MaskableFrameLayout;->f:Landroid/graphics/PorterDuffXfermode;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Utils/MaskView/MaskableFrameLayout;->d:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/itsmagic/engine/Activities/Editor/Utils/MaskView/MaskableFrameLayout;->e:Landroid/graphics/Paint;

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2, v2, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    iget-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/Utils/MaskView/MaskableFrameLayout;->e:Landroid/graphics/Paint;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    goto :goto_1

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    goto :goto_0

    :cond_0
    const-string p1, "Mask or paint is null ..."

    invoke-virtual {p0, p1}, Lcom/itsmagic/engine/Activities/Editor/Utils/MaskView/MaskableFrameLayout;->j(Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    invoke-super {p0, p1}, Landroid/view/View;->dispatchDraw(Landroid/graphics/Canvas;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :goto_0
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_1
    return-void
.end method

.method public final e(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "attrs"
        }
    .end annotation

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Utils/MaskView/MaskableFrameLayout;->b:Landroid/os/Handler;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/itsmagic/engine/Activities/Editor/Utils/MaskView/MaskableFrameLayout;->f(Z)Landroid/graphics/Paint;

    move-result-object v2

    iput-object v2, p0, Lcom/itsmagic/engine/Activities/Editor/Utils/MaskView/MaskableFrameLayout;->e:Landroid/graphics/Paint;

    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p1

    if-eqz p1, :cond_2

    sget-object v2, Lt3/b$s;->tr:[I

    invoke-virtual {p1, p2, v2, v1, v1}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/itsmagic/engine/Activities/Editor/Utils/MaskView/MaskableFrameLayout;->i(Landroid/content/res/TypedArray;)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/itsmagic/engine/Activities/Editor/Utils/MaskView/MaskableFrameLayout;->h(Landroid/graphics/drawable/Drawable;)V

    const/4 p2, 0x2

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result p2

    invoke-virtual {p0, p2}, Lcom/itsmagic/engine/Activities/Editor/Utils/MaskView/MaskableFrameLayout;->g(I)Landroid/graphics/PorterDuffXfermode;

    move-result-object p2

    iput-object p2, p0, Lcom/itsmagic/engine/Activities/Editor/Utils/MaskView/MaskableFrameLayout;->f:Landroid/graphics/PorterDuffXfermode;

    iget-object p2, p0, Lcom/itsmagic/engine/Activities/Editor/Utils/MaskView/MaskableFrameLayout;->c:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, p2}, Lcom/itsmagic/engine/Activities/Editor/Utils/MaskView/MaskableFrameLayout;->h(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p1, v1, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-virtual {p0, v0}, Lcom/itsmagic/engine/Activities/Editor/Utils/MaskView/MaskableFrameLayout;->f(Z)Landroid/graphics/Paint;

    move-result-object p2

    iput-object p2, p0, Lcom/itsmagic/engine/Activities/Editor/Utils/MaskView/MaskableFrameLayout;->e:Landroid/graphics/Paint;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p2

    goto :goto_1

    :cond_0
    :goto_0
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    goto :goto_2

    :goto_1
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    :cond_1
    throw p2

    :cond_2
    const-string p1, "Couldn\'t load theme, mask in xml won\'t be loaded."

    invoke-virtual {p0, p1}, Lcom/itsmagic/engine/Activities/Editor/Utils/MaskView/MaskableFrameLayout;->j(Ljava/lang/String;)V

    :goto_2
    invoke-virtual {p0}, Lcom/itsmagic/engine/Activities/Editor/Utils/MaskView/MaskableFrameLayout;->l()V

    return-void
.end method

.method public final f(Z)Landroid/graphics/Paint;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "antiAliasing"
        }
    .end annotation

    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/Utils/MaskView/MaskableFrameLayout;->f:Landroid/graphics/PorterDuffXfermode;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    return-object v0
.end method

.method public final g(I)Landroid/graphics/PorterDuffXfermode;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    packed-switch p1, :pswitch_data_0

    sget-object p1, Landroid/graphics/PorterDuff$Mode;->DST_IN:Landroid/graphics/PorterDuff$Mode;

    goto :goto_0

    :pswitch_0
    sget-object p1, Landroid/graphics/PorterDuff$Mode;->XOR:Landroid/graphics/PorterDuff$Mode;

    goto :goto_0

    :pswitch_1
    sget-object p1, Landroid/graphics/PorterDuff$Mode;->SRC_OVER:Landroid/graphics/PorterDuff$Mode;

    goto :goto_0

    :pswitch_2
    sget-object p1, Landroid/graphics/PorterDuff$Mode;->SRC_OUT:Landroid/graphics/PorterDuff$Mode;

    goto :goto_0

    :pswitch_3
    sget-object p1, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    goto :goto_0

    :pswitch_4
    sget-object p1, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    goto :goto_0

    :pswitch_5
    sget-object p1, Landroid/graphics/PorterDuff$Mode;->SRC:Landroid/graphics/PorterDuff$Mode;

    goto :goto_0

    :pswitch_6
    sget-object p1, Landroid/graphics/PorterDuff$Mode;->SCREEN:Landroid/graphics/PorterDuff$Mode;

    goto :goto_0

    :pswitch_7
    sget-object p1, Landroid/graphics/PorterDuff$Mode;->OVERLAY:Landroid/graphics/PorterDuff$Mode;

    goto :goto_0

    :pswitch_8
    sget-object p1, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    goto :goto_0

    :pswitch_9
    sget-object p1, Landroid/graphics/PorterDuff$Mode;->LIGHTEN:Landroid/graphics/PorterDuff$Mode;

    goto :goto_0

    :pswitch_a
    sget-object p1, Landroid/graphics/PorterDuff$Mode;->DST_OVER:Landroid/graphics/PorterDuff$Mode;

    goto :goto_0

    :pswitch_b
    sget-object p1, Landroid/graphics/PorterDuff$Mode;->DST_OUT:Landroid/graphics/PorterDuff$Mode;

    goto :goto_0

    :pswitch_c
    sget-object p1, Landroid/graphics/PorterDuff$Mode;->DST_IN:Landroid/graphics/PorterDuff$Mode;

    goto :goto_0

    :pswitch_d
    sget-object p1, Landroid/graphics/PorterDuff$Mode;->DST_ATOP:Landroid/graphics/PorterDuff$Mode;

    goto :goto_0

    :pswitch_e
    sget-object p1, Landroid/graphics/PorterDuff$Mode;->DST:Landroid/graphics/PorterDuff$Mode;

    goto :goto_0

    :pswitch_f
    sget-object p1, Landroid/graphics/PorterDuff$Mode;->DARKEN:Landroid/graphics/PorterDuff$Mode;

    goto :goto_0

    :pswitch_10
    sget-object p1, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    goto :goto_0

    :pswitch_11
    sget-object p1, Landroid/graphics/PorterDuff$Mode;->ADD:Landroid/graphics/PorterDuff$Mode;

    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Mode is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/itsmagic/engine/Activities/Editor/Utils/MaskView/MaskableFrameLayout;->j(Ljava/lang/String;)V

    new-instance v0, Landroid/graphics/PorterDuffXfermode;

    invoke-direct {v0, p1}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getDrawableMask()Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Utils/MaskView/MaskableFrameLayout;->c:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public final h(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "input"
        }
    .end annotation

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/Utils/MaskView/MaskableFrameLayout;->c:Landroid/graphics/drawable/Drawable;

    instance-of v0, p1, Landroid/graphics/drawable/AnimationDrawable;

    if-eqz v0, :cond_1

    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    goto :goto_0

    :cond_0
    const-string p1, "Are you sure you don\'t want to provide a mask ?"

    invoke-virtual {p0, p1}, Lcom/itsmagic/engine/Activities/Editor/Utils/MaskView/MaskableFrameLayout;->j(Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final i(Landroid/content/res/TypedArray;)Landroid/graphics/drawable/Drawable;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "a"
        }
    .end annotation

    const/4 v0, 0x1

    const/4 v1, -0x1

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p1

    if-ne p1, v1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Landroidx/appcompat/content/res/AppCompatResources;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    return-object p1
.end method

.method public invalidateDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "dr"
        }
    .end annotation

    return-void
.end method

.method public final j(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "message"
        }
    .end annotation

    const-string v0, "MaskableFrameLayout"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final k(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "drawable"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    if-lez v1, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    if-lez v1, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {p1, v4, v4, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    invoke-virtual {p1, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_0
    return-object v0

    :cond_1
    const-string p1, "No bitmap mask loaded, view will NOT be masked !"

    invoke-virtual {p0, p1}, Lcom/itsmagic/engine/Activities/Editor/Utils/MaskView/MaskableFrameLayout;->j(Ljava/lang/String;)V

    return-object v0
.end method

.method public final l()V
    .locals 2

    invoke-virtual {p0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Lcom/itsmagic/engine/Activities/Editor/Utils/MaskView/MaskableFrameLayout$a;

    invoke-direct {v1, p0, v0}, Lcom/itsmagic/engine/Activities/Editor/Utils/MaskView/MaskableFrameLayout$a;-><init>(Lcom/itsmagic/engine/Activities/Editor/Utils/MaskView/MaskableFrameLayout;Landroid/view/ViewTreeObserver;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    :cond_0
    return-void
.end method

.method public final m(II)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "width",
            "height"
        }
    .end annotation

    if-lez p1, :cond_0

    if-lez p2, :cond_0

    iget-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/Utils/MaskView/MaskableFrameLayout;->c:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_1

    invoke-virtual {p0, p1}, Lcom/itsmagic/engine/Activities/Editor/Utils/MaskView/MaskableFrameLayout;->k(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/itsmagic/engine/Activities/Editor/Utils/MaskView/MaskableFrameLayout;->n(Landroid/graphics/Bitmap;)V

    goto :goto_0

    :cond_0
    const-string p1, "Width and height must be higher than 0"

    invoke-virtual {p0, p1}, Lcom/itsmagic/engine/Activities/Editor/Utils/MaskView/MaskableFrameLayout;->j(Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final n(Landroid/graphics/Bitmap;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "newMask"
        }
    .end annotation

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Utils/MaskView/MaskableFrameLayout;->d:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Utils/MaskView/MaskableFrameLayout;->d:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_0
    iput-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/Utils/MaskView/MaskableFrameLayout;->d:Landroid/graphics/Bitmap;

    :cond_1
    return-void
.end method

.method public onSizeChanged(IIII)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "w",
            "h",
            "oldw",
            "oldh"
        }
    .end annotation

    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    invoke-virtual {p0, p1, p2}, Lcom/itsmagic/engine/Activities/Editor/Utils/MaskView/MaskableFrameLayout;->m(II)V

    return-void
.end method

.method public scheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;J)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "who",
            "what",
            "when"
        }
    .end annotation

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    iget-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/Utils/MaskView/MaskableFrameLayout;->b:Landroid/os/Handler;

    invoke-virtual {p1, p2, p3, p4}, Landroid/os/Handler;->postAtTime(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method

.method public setMask(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "drawableRes"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/itsmagic/engine/Activities/Editor/Utils/MaskView/MaskableFrameLayout;->setMask(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 3
    :cond_0
    const-string p1, "Unable to load resources, mask will not be loaded as drawable"

    invoke-virtual {p0, p1}, Lcom/itsmagic/engine/Activities/Editor/Utils/MaskView/MaskableFrameLayout;->j(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public setMask(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "input"
        }
    .end annotation

    .line 4
    invoke-virtual {p0, p1}, Lcom/itsmagic/engine/Activities/Editor/Utils/MaskView/MaskableFrameLayout;->h(Landroid/graphics/drawable/Drawable;)V

    .line 5
    iget-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/Utils/MaskView/MaskableFrameLayout;->c:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, p1}, Lcom/itsmagic/engine/Activities/Editor/Utils/MaskView/MaskableFrameLayout;->k(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/itsmagic/engine/Activities/Editor/Utils/MaskView/MaskableFrameLayout;->n(Landroid/graphics/Bitmap;)V

    .line 6
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setPorterDuffXferMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mode"
        }
    .end annotation

    new-instance v0, Landroid/graphics/PorterDuffXfermode;

    invoke-direct {v0, p1}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    iput-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Utils/MaskView/MaskableFrameLayout;->f:Landroid/graphics/PorterDuffXfermode;

    return-void
.end method

.method public unscheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "who",
            "what"
        }
    .end annotation

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    iget-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/Utils/MaskView/MaskableFrameLayout;->b:Landroid/os/Handler;

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method
