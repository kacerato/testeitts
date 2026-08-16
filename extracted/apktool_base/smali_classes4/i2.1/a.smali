.class public Li2/a;
.super La2/j;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/material/internal/p$b;


# annotations
.annotation build Landroidx/annotation/RestrictTo;
    value = {
        .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
    }
.end annotation


# static fields
.field public static final V:I
    .annotation build Landroidx/annotation/StyleRes;
    .end annotation
.end field

.field public static final W:I
    .annotation build Landroidx/annotation/AttrRes;
    .end annotation
.end field


# instance fields
.field public E:Ljava/lang/CharSequence;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final F:Landroid/content/Context;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final G:Landroid/graphics/Paint$FontMetrics;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final H:Lcom/google/android/material/internal/p;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final I:Landroid/view/View$OnLayoutChangeListener;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final J:Landroid/graphics/Rect;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public K:I

.field public L:I

.field public M:I

.field public N:I

.field public O:I

.field public P:I

.field public Q:F

.field public R:F

.field public final S:F

.field public T:F

.field public U:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget v0, Lw1/a$n;->Xc:I

    sput v0, Li2/a;->V:I

    sget v0, Lw1/a$c;->Rf:I

    sput v0, Li2/a;->W:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # I
        .annotation build Landroidx/annotation/AttrRes;
        .end annotation
    .end param
    .param p4    # I
        .annotation build Landroidx/annotation/StyleRes;
        .end annotation
    .end param

    invoke-direct {p0, p1, p2, p3, p4}, La2/j;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    new-instance p2, Landroid/graphics/Paint$FontMetrics;

    invoke-direct {p2}, Landroid/graphics/Paint$FontMetrics;-><init>()V

    iput-object p2, p0, Li2/a;->G:Landroid/graphics/Paint$FontMetrics;

    new-instance p2, Lcom/google/android/material/internal/p;

    invoke-direct {p2, p0}, Lcom/google/android/material/internal/p;-><init>(Lcom/google/android/material/internal/p$b;)V

    iput-object p2, p0, Li2/a;->H:Lcom/google/android/material/internal/p;

    new-instance p3, Li2/a$a;

    invoke-direct {p3, p0}, Li2/a$a;-><init>(Li2/a;)V

    iput-object p3, p0, Li2/a;->I:Landroid/view/View$OnLayoutChangeListener;

    new-instance p3, Landroid/graphics/Rect;

    invoke-direct {p3}, Landroid/graphics/Rect;-><init>()V

    iput-object p3, p0, Li2/a;->J:Landroid/graphics/Rect;

    const/high16 p3, 0x3f800000    # 1.0f

    iput p3, p0, Li2/a;->Q:F

    iput p3, p0, Li2/a;->R:F

    const/high16 p4, 0x3f000000    # 0.5f

    iput p4, p0, Li2/a;->S:F

    iput p4, p0, Li2/a;->T:F

    iput p3, p0, Li2/a;->U:F

    iput-object p1, p0, Li2/a;->F:Landroid/content/Context;

    invoke-virtual {p2}, Lcom/google/android/material/internal/p;->e()Landroid/text/TextPaint;

    move-result-object p3

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->density:F

    iput p1, p3, Landroid/text/TextPaint;->density:F

    invoke-virtual {p2}, Lcom/google/android/material/internal/p;->e()Landroid/text/TextPaint;

    move-result-object p1

    sget-object p2, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    return-void
.end method

.method public static synthetic O0(Li2/a;Landroid/view/View;)V
    .locals 0

    invoke-virtual {p0, p1}, Li2/a;->q1(Landroid/view/View;)V

    return-void
.end method

.method private Q0()F
    .locals 2

    iget-object v0, p0, Li2/a;->H:Lcom/google/android/material/internal/p;

    invoke-virtual {v0}, Lcom/google/android/material/internal/p;->e()Landroid/text/TextPaint;

    move-result-object v0

    iget-object v1, p0, Li2/a;->G:Landroid/graphics/Paint$FontMetrics;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->getFontMetrics(Landroid/graphics/Paint$FontMetrics;)F

    iget-object v0, p0, Li2/a;->G:Landroid/graphics/Paint$FontMetrics;

    iget v1, v0, Landroid/graphics/Paint$FontMetrics;->descent:F

    iget v0, v0, Landroid/graphics/Paint$FontMetrics;->ascent:F

    add-float/2addr v1, v0

    const/high16 v0, 0x40000000    # 2.0f

    div-float/2addr v1, v0

    return v1
.end method

.method public static S0(Landroid/content/Context;)Li2/a;
    .locals 3
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    sget v0, Li2/a;->W:I

    sget v1, Li2/a;->V:I

    const/4 v2, 0x0

    invoke-static {p0, v2, v0, v1}, Li2/a;->U0(Landroid/content/Context;Landroid/util/AttributeSet;II)Li2/a;

    move-result-object p0

    return-object p0
.end method

.method public static T0(Landroid/content/Context;Landroid/util/AttributeSet;)Li2/a;
    .locals 2
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    sget v0, Li2/a;->W:I

    sget v1, Li2/a;->V:I

    invoke-static {p0, p1, v0, v1}, Li2/a;->U0(Landroid/content/Context;Landroid/util/AttributeSet;II)Li2/a;

    move-result-object p0

    return-object p0
.end method

.method public static U0(Landroid/content/Context;Landroid/util/AttributeSet;II)Li2/a;
    .locals 1
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # I
        .annotation build Landroidx/annotation/AttrRes;
        .end annotation
    .end param
    .param p3    # I
        .annotation build Landroidx/annotation/StyleRes;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v0, Li2/a;

    invoke-direct {v0, p0, p1, p2, p3}, Li2/a;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    invoke-direct {v0, p1, p2, p3}, Li2/a;->f1(Landroid/util/AttributeSet;II)V

    return-object v0
.end method

.method private f1(Landroid/util/AttributeSet;II)V
    .locals 7
    .param p1    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # I
        .annotation build Landroidx/annotation/AttrRes;
        .end annotation
    .end param
    .param p3    # I
        .annotation build Landroidx/annotation/StyleRes;
        .end annotation
    .end param

    iget-object v0, p0, Li2/a;->F:Landroid/content/Context;

    sget-object v2, Lw1/a$o;->cv:[I

    const/4 v6, 0x0

    new-array v5, v6, [I

    move-object v1, p1

    move v3, p2

    move v4, p3

    invoke-static/range {v0 .. v5}, Lcom/google/android/material/internal/s;->j(Landroid/content/Context;Landroid/util/AttributeSet;[III[I)Landroid/content/res/TypedArray;

    move-result-object p1

    iget-object p2, p0, Li2/a;->F:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget p3, Lw1/a$f;->q6:I

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Li2/a;->O:I

    invoke-virtual {p0}, La2/j;->getShapeAppearanceModel()La2/o;

    move-result-object p2

    invoke-virtual {p2}, La2/o;->v()La2/o$b;

    move-result-object p2

    invoke-virtual {p0}, Li2/a;->V0()La2/g;

    move-result-object p3

    invoke-virtual {p2, p3}, La2/o$b;->t(La2/g;)La2/o$b;

    move-result-object p2

    invoke-virtual {p2}, La2/o$b;->m()La2/o;

    move-result-object p2

    invoke-virtual {p0, p2}, La2/j;->setShapeAppearanceModel(La2/o;)V

    sget p2, Lw1/a$o;->jv:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object p2

    invoke-virtual {p0, p2}, Li2/a;->l1(Ljava/lang/CharSequence;)V

    iget-object p2, p0, Li2/a;->F:Landroid/content/Context;

    sget p3, Lw1/a$o;->dv:I

    invoke-static {p2, p1, p3}, LX1/c;->f(Landroid/content/Context;Landroid/content/res/TypedArray;I)LX1/d;

    move-result-object p2

    if-eqz p2, :cond_0

    sget p3, Lw1/a$o;->ev:I

    invoke-virtual {p1, p3}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Li2/a;->F:Landroid/content/Context;

    invoke-static {v0, p1, p3}, LX1/c;->a(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    move-result-object p3

    invoke-virtual {p2, p3}, LX1/d;->k(Landroid/content/res/ColorStateList;)V

    :cond_0
    invoke-virtual {p0, p2}, Li2/a;->m1(LX1/d;)V

    iget-object p2, p0, Li2/a;->F:Landroid/content/Context;

    sget p3, Lw1/a$c;->H2:I

    const-class v0, Li2/a;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    invoke-static {p2, p3, v1}, LJ1/a;->c(Landroid/content/Context;ILjava/lang/String;)I

    move-result p2

    iget-object p3, p0, Li2/a;->F:Landroid/content/Context;

    const v1, 0x1010031

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v2

    invoke-static {p3, v1, v2}, LJ1/a;->c(Landroid/content/Context;ILjava/lang/String;)I

    move-result p3

    const/16 v1, 0xe5

    invoke-static {p3, v1}, Landroidx/core/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result p3

    const/16 v1, 0x99

    invoke-static {p2, v1}, Landroidx/core/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result p2

    invoke-static {p3, p2}, LJ1/a;->g(II)I

    move-result p2

    sget p3, Lw1/a$o;->kv:I

    invoke-virtual {p1, p3, p2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    invoke-static {p2}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p2

    invoke-virtual {p0, p2}, La2/j;->n0(Landroid/content/res/ColorStateList;)V

    iget-object p2, p0, Li2/a;->F:Landroid/content/Context;

    sget p3, Lw1/a$c;->T2:I

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, p3, v0}, LJ1/a;->c(Landroid/content/Context;ILjava/lang/String;)I

    move-result p2

    invoke-static {p2}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p2

    invoke-virtual {p0, p2}, La2/j;->E0(Landroid/content/res/ColorStateList;)V

    sget p2, Lw1/a$o;->fv:I

    invoke-virtual {p1, p2, v6}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Li2/a;->K:I

    sget p2, Lw1/a$o;->hv:I

    invoke-virtual {p1, p2, v6}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Li2/a;->L:I

    sget p2, Lw1/a$o;->iv:I

    invoke-virtual {p1, p2, v6}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Li2/a;->M:I

    sget p2, Lw1/a$o;->gv:I

    invoke-virtual {p1, p2, v6}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Li2/a;->N:I

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method


# virtual methods
.method public final P0()F
    .locals 2

    iget-object v0, p0, Li2/a;->J:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->right:I

    sub-int/2addr v0, v1

    iget v1, p0, Li2/a;->P:I

    sub-int/2addr v0, v1

    iget v1, p0, Li2/a;->N:I

    sub-int/2addr v0, v1

    if-gez v0, :cond_0

    iget-object v0, p0, Li2/a;->J:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->right:I

    sub-int/2addr v0, v1

    iget v1, p0, Li2/a;->P:I

    sub-int/2addr v0, v1

    iget v1, p0, Li2/a;->N:I

    sub-int/2addr v0, v1

    :goto_0
    int-to-float v0, v0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Li2/a;->J:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v0, v1

    iget v1, p0, Li2/a;->P:I

    sub-int/2addr v0, v1

    iget v1, p0, Li2/a;->N:I

    add-int/2addr v0, v1

    if-lez v0, :cond_1

    iget-object v0, p0, Li2/a;->J:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v0, v1

    iget v1, p0, Li2/a;->P:I

    sub-int/2addr v0, v1

    iget v1, p0, Li2/a;->N:I

    add-int/2addr v0, v1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_1
    return v0
.end method

.method public final R0(Landroid/graphics/Rect;)F
    .locals 1
    .param p1    # Landroid/graphics/Rect;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-virtual {p1}, Landroid/graphics/Rect;->centerY()I

    move-result p1

    int-to-float p1, p1

    invoke-direct {p0}, Li2/a;->Q0()F

    move-result v0

    sub-float/2addr p1, v0

    return p1
.end method

.method public final V0()La2/g;
    .locals 7

    invoke-virtual {p0}, Li2/a;->P0()F

    move-result v0

    neg-float v0, v0

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-double v1, v1

    iget v3, p0, Li2/a;->O:I

    int-to-double v3, v3

    const-wide/high16 v5, 0x4000000000000000L    # 2.0

    invoke-static {v5, v6}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v5

    mul-double/2addr v3, v5

    sub-double/2addr v1, v3

    double-to-float v1, v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    neg-float v2, v1

    invoke-static {v0, v2}, Ljava/lang/Math;->max(FF)F

    move-result v0

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    new-instance v1, La2/l;

    new-instance v2, La2/i;

    iget v3, p0, Li2/a;->O:I

    int-to-float v3, v3

    invoke-direct {v2, v3}, La2/i;-><init>(F)V

    invoke-direct {v1, v2, v0}, La2/l;-><init>(La2/g;F)V

    return-object v1
.end method

.method public W0(Landroid/view/View;)V
    .locals 1
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Li2/a;->I:Landroid/view/View$OnLayoutChangeListener;

    invoke-virtual {p1, v0}, Landroid/view/View;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    return-void
.end method

.method public final X0(Landroid/graphics/Canvas;)V
    .locals 11
    .param p1    # Landroid/graphics/Canvas;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Li2/a;->E:Ljava/lang/CharSequence;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p0, v0}, Li2/a;->R0(Landroid/graphics/Rect;)F

    move-result v1

    float-to-int v1, v1

    iget-object v2, p0, Li2/a;->H:Lcom/google/android/material/internal/p;

    invoke-virtual {v2}, Lcom/google/android/material/internal/p;->d()LX1/d;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Li2/a;->H:Lcom/google/android/material/internal/p;

    invoke-virtual {v2}, Lcom/google/android/material/internal/p;->e()Landroid/text/TextPaint;

    move-result-object v2

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getState()[I

    move-result-object v3

    iput-object v3, v2, Landroid/text/TextPaint;->drawableState:[I

    iget-object v2, p0, Li2/a;->H:Lcom/google/android/material/internal/p;

    iget-object v3, p0, Li2/a;->F:Landroid/content/Context;

    invoke-virtual {v2, v3}, Lcom/google/android/material/internal/p;->k(Landroid/content/Context;)V

    iget-object v2, p0, Li2/a;->H:Lcom/google/android/material/internal/p;

    invoke-virtual {v2}, Lcom/google/android/material/internal/p;->e()Landroid/text/TextPaint;

    move-result-object v2

    iget v3, p0, Li2/a;->U:F

    const/high16 v4, 0x437f0000    # 255.0f

    mul-float/2addr v3, v4

    float-to-int v3, v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    :cond_1
    iget-object v5, p0, Li2/a;->E:Ljava/lang/CharSequence;

    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    move-result v7

    invoke-virtual {v0}, Landroid/graphics/Rect;->centerX()I

    move-result v0

    int-to-float v8, v0

    int-to-float v9, v1

    iget-object v0, p0, Li2/a;->H:Lcom/google/android/material/internal/p;

    invoke-virtual {v0}, Lcom/google/android/material/internal/p;->e()Landroid/text/TextPaint;

    move-result-object v10

    const/4 v6, 0x0

    move-object v4, p1

    invoke-virtual/range {v4 .. v10}, Landroid/graphics/Canvas;->drawText(Ljava/lang/CharSequence;IIFFLandroid/graphics/Paint;)V

    return-void
.end method

.method public Y0()I
    .locals 1

    iget v0, p0, Li2/a;->N:I

    return v0
.end method

.method public Z0()I
    .locals 1

    iget v0, p0, Li2/a;->M:I

    return v0
.end method

.method public a()V
    .locals 0

    invoke-virtual {p0}, La2/j;->invalidateSelf()V

    return-void
.end method

.method public a1()I
    .locals 1

    iget v0, p0, Li2/a;->L:I

    return v0
.end method

.method public b1()Ljava/lang/CharSequence;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Li2/a;->E:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public c1()LX1/d;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Li2/a;->H:Lcom/google/android/material/internal/p;

    invoke-virtual {v0}, Lcom/google/android/material/internal/p;->d()LX1/d;

    move-result-object v0

    return-object v0
.end method

.method public d1()I
    .locals 1

    iget v0, p0, Li2/a;->K:I

    return v0
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 8
    .param p1    # Landroid/graphics/Canvas;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    invoke-virtual {p0}, Li2/a;->P0()F

    move-result v0

    iget v1, p0, Li2/a;->O:I

    int-to-double v1, v1

    const-wide/high16 v3, 0x4000000000000000L    # 2.0

    invoke-static {v3, v4}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v3

    mul-double/2addr v1, v3

    iget v3, p0, Li2/a;->O:I

    int-to-double v3, v3

    sub-double/2addr v1, v3

    neg-double v1, v1

    double-to-float v1, v1

    iget v2, p0, Li2/a;->Q:F

    iget v3, p0, Li2/a;->R:F

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v4

    iget v4, v4, Landroid/graphics/Rect;->left:I

    int-to-float v4, v4

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v5

    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v5

    int-to-float v5, v5

    const/high16 v6, 0x3f000000    # 0.5f

    mul-float/2addr v5, v6

    add-float/2addr v4, v5

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v5

    iget v5, v5, Landroid/graphics/Rect;->top:I

    int-to-float v5, v5

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v6

    invoke-virtual {v6}, Landroid/graphics/Rect;->height()I

    move-result v6

    int-to-float v6, v6

    iget v7, p0, Li2/a;->T:F

    mul-float/2addr v6, v7

    add-float/2addr v5, v6

    invoke-virtual {p1, v2, v3, v4, v5}, Landroid/graphics/Canvas;->scale(FFFF)V

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    invoke-super {p0, p1}, La2/j;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual {p0, p1}, Li2/a;->X0(Landroid/graphics/Canvas;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method public final e1()F
    .locals 2

    iget-object v0, p0, Li2/a;->E:Ljava/lang/CharSequence;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    iget-object v1, p0, Li2/a;->H:Lcom/google/android/material/internal/p;

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/google/android/material/internal/p;->f(Ljava/lang/String;)F

    move-result v0

    return v0
.end method

.method public g1(I)V
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/Px;
        .end annotation
    .end param

    iput p1, p0, Li2/a;->N:I

    invoke-virtual {p0}, La2/j;->invalidateSelf()V

    return-void
.end method

.method public getIntrinsicHeight()I
    .locals 2

    iget-object v0, p0, Li2/a;->H:Lcom/google/android/material/internal/p;

    invoke-virtual {v0}, Lcom/google/android/material/internal/p;->e()Landroid/text/TextPaint;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Paint;->getTextSize()F

    move-result v0

    iget v1, p0, Li2/a;->M:I

    int-to-float v1, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    float-to-int v0, v0

    return v0
.end method

.method public getIntrinsicWidth()I
    .locals 2

    iget v0, p0, Li2/a;->K:I

    mul-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    invoke-virtual {p0}, Li2/a;->e1()F

    move-result v1

    add-float/2addr v0, v1

    iget v1, p0, Li2/a;->L:I

    int-to-float v1, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    float-to-int v0, v0

    return v0
.end method

.method public h1(I)V
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/Px;
        .end annotation
    .end param

    iput p1, p0, Li2/a;->M:I

    invoke-virtual {p0}, La2/j;->invalidateSelf()V

    return-void
.end method

.method public i1(I)V
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/Px;
        .end annotation
    .end param

    iput p1, p0, Li2/a;->L:I

    invoke-virtual {p0}, La2/j;->invalidateSelf()V

    return-void
.end method

.method public j1(Landroid/view/View;)V
    .locals 1
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p1}, Li2/a;->q1(Landroid/view/View;)V

    iget-object v0, p0, Li2/a;->I:Landroid/view/View$OnLayoutChangeListener;

    invoke-virtual {p1, v0}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    return-void
.end method

.method public k1(F)V
    .locals 3
    .param p1    # F
        .annotation build Landroidx/annotation/FloatRange;
            from = 0.0
            to = 1.0
        .end annotation
    .end param

    const v0, 0x3f99999a    # 1.2f

    iput v0, p0, Li2/a;->T:F

    iput p1, p0, Li2/a;->Q:F

    iput p1, p0, Li2/a;->R:F

    const/high16 v0, 0x3f800000    # 1.0f

    const v1, 0x3e428f5c    # 0.19f

    const/4 v2, 0x0

    invoke-static {v2, v0, v1, v0, p1}, Lx1/a;->b(FFFFF)F

    move-result p1

    iput p1, p0, Li2/a;->U:F

    invoke-virtual {p0}, La2/j;->invalidateSelf()V

    return-void
.end method

.method public l1(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1    # Ljava/lang/CharSequence;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iget-object v0, p0, Li2/a;->E:Ljava/lang/CharSequence;

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iput-object p1, p0, Li2/a;->E:Ljava/lang/CharSequence;

    iget-object p1, p0, Li2/a;->H:Lcom/google/android/material/internal/p;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/google/android/material/internal/p;->j(Z)V

    invoke-virtual {p0}, La2/j;->invalidateSelf()V

    :cond_0
    return-void
.end method

.method public m1(LX1/d;)V
    .locals 2
    .param p1    # LX1/d;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iget-object v0, p0, Li2/a;->H:Lcom/google/android/material/internal/p;

    iget-object v1, p0, Li2/a;->F:Landroid/content/Context;

    invoke-virtual {v0, p1, v1}, Lcom/google/android/material/internal/p;->i(LX1/d;Landroid/content/Context;)V

    return-void
.end method

.method public n1(I)V
    .locals 2
    .param p1    # I
        .annotation build Landroidx/annotation/StyleRes;
        .end annotation
    .end param

    new-instance v0, LX1/d;

    iget-object v1, p0, Li2/a;->F:Landroid/content/Context;

    invoke-direct {v0, v1, p1}, LX1/d;-><init>(Landroid/content/Context;I)V

    invoke-virtual {p0, v0}, Li2/a;->m1(LX1/d;)V

    return-void
.end method

.method public o1(I)V
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/Px;
        .end annotation
    .end param

    iput p1, p0, Li2/a;->K:I

    invoke-virtual {p0}, La2/j;->invalidateSelf()V

    return-void
.end method

.method public onBoundsChange(Landroid/graphics/Rect;)V
    .locals 1

    invoke-super {p0, p1}, La2/j;->onBoundsChange(Landroid/graphics/Rect;)V

    invoke-virtual {p0}, La2/j;->getShapeAppearanceModel()La2/o;

    move-result-object p1

    invoke-virtual {p1}, La2/o;->v()La2/o$b;

    move-result-object p1

    invoke-virtual {p0}, Li2/a;->V0()La2/g;

    move-result-object v0

    invoke-virtual {p1, v0}, La2/o$b;->t(La2/g;)La2/o$b;

    move-result-object p1

    invoke-virtual {p1}, La2/o$b;->m()La2/o;

    move-result-object p1

    invoke-virtual {p0, p1}, La2/j;->setShapeAppearanceModel(La2/o;)V

    return-void
.end method

.method public onStateChange([I)Z
    .locals 0

    invoke-super {p0, p1}, La2/j;->onStateChange([I)Z

    move-result p1

    return p1
.end method

.method public p1(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/StringRes;
        .end annotation
    .end param

    iget-object v0, p0, Li2/a;->F:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Li2/a;->l1(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final q1(Landroid/view/View;)V
    .locals 2
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, 0x2

    new-array v0, v0, [I

    invoke-virtual {p1, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    const/4 v1, 0x0

    aget v0, v0, v1

    iput v0, p0, Li2/a;->P:I

    iget-object v0, p0, Li2/a;->J:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    return-void
.end method
