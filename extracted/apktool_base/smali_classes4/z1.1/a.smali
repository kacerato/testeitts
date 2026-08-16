.class public Lz1/a;
.super Landroid/graphics/drawable/Drawable;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/material/internal/p$b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lz1/a$c;,
        Lz1/a$b;
    }
.end annotation


# static fields
.field public static final A:Ljava/lang/String; = "+"

.field public static final r:I = 0x800035

.field public static final s:I = 0x800033

.field public static final t:I = 0x800055

.field public static final u:I = 0x800053

.field public static final v:I = 0x4

.field public static final w:I = -0x1

.field public static final x:I = 0x9

.field public static final y:I
    .annotation build Landroidx/annotation/StyleRes;
    .end annotation
.end field

.field public static final z:I
    .annotation build Landroidx/annotation/AttrRes;
    .end annotation
.end field


# instance fields
.field public final b:Ljava/lang/ref/WeakReference;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field public final c:La2/j;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final d:Lcom/google/android/material/internal/p;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final e:Landroid/graphics/Rect;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public f:F

.field public g:F

.field public h:F

.field public final i:Lz1/a$c;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public j:F

.field public k:F

.field public l:I

.field public m:F

.field public n:F

.field public o:F

.field public p:Ljava/lang/ref/WeakReference;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field public q:Ljava/lang/ref/WeakReference;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/widget/FrameLayout;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget v0, Lw1/a$n;->Pa:I

    sput v0, Lz1/a;->y:I

    sget v0, Lw1/a$c;->s0:I

    sput v0, Lz1/a;->z:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lz1/a;->b:Ljava/lang/ref/WeakReference;

    invoke-static {p1}, Lcom/google/android/material/internal/s;->c(Landroid/content/Context;)V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lz1/a;->e:Landroid/graphics/Rect;

    new-instance v1, La2/j;

    invoke-direct {v1}, La2/j;-><init>()V

    iput-object v1, p0, Lz1/a;->c:La2/j;

    sget v1, Lw1/a$f;->Q2:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v1, v1

    iput v1, p0, Lz1/a;->f:F

    sget v1, Lw1/a$f;->P2:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v1, v1

    iput v1, p0, Lz1/a;->h:F

    sget v1, Lw1/a$f;->V2:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lz1/a;->g:F

    new-instance v0, Lcom/google/android/material/internal/p;

    invoke-direct {v0, p0}, Lcom/google/android/material/internal/p;-><init>(Lcom/google/android/material/internal/p$b;)V

    iput-object v0, p0, Lz1/a;->d:Lcom/google/android/material/internal/p;

    invoke-virtual {v0}, Lcom/google/android/material/internal/p;->e()Landroid/text/TextPaint;

    move-result-object v0

    sget-object v1, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    new-instance v0, Lz1/a$c;

    invoke-direct {v0, p1}, Lz1/a$c;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lz1/a;->i:Lz1/a$c;

    sget p1, Lw1/a$n;->f6:I

    invoke-direct {p0, p1}, Lz1/a;->T(I)V

    return-void
.end method

.method public static D(Landroid/content/Context;Landroid/content/res/TypedArray;I)I
    .locals 0
    .param p1    # Landroid/content/res/TypedArray;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # I
        .annotation build Landroidx/annotation/StyleableRes;
        .end annotation
    .end param

    invoke-static {p0, p1, p2}, LX1/c;->a(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result p0

    return p0
.end method

.method private S(LX1/d;)V
    .locals 2
    .param p1    # LX1/d;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iget-object v0, p0, Lz1/a;->d:Lcom/google/android/material/internal/p;

    invoke-virtual {v0}, Lcom/google/android/material/internal/p;->d()LX1/d;

    move-result-object v0

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lz1/a;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    if-nez v0, :cond_1

    return-void

    :cond_1
    iget-object v1, p0, Lz1/a;->d:Lcom/google/android/material/internal/p;

    invoke-virtual {v1, p1, v0}, Lcom/google/android/material/internal/p;->i(LX1/d;Landroid/content/Context;)V

    invoke-virtual {p0}, Lz1/a;->d0()V

    return-void
.end method

.method private T(I)V
    .locals 2
    .param p1    # I
        .annotation build Landroidx/annotation/StyleRes;
        .end annotation
    .end param

    iget-object v0, p0, Lz1/a;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v1, LX1/d;

    invoke-direct {v1, v0, p1}, LX1/d;-><init>(Landroid/content/Context;I)V

    invoke-direct {p0, v1}, Lz1/a;->S(LX1/d;)V

    return-void
.end method

.method public static Z(Landroid/view/View;)V
    .locals 1

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    check-cast p0, Landroid/view/ViewGroup;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setClipToPadding(Z)V

    return-void
.end method

.method public static d(Landroid/content/Context;)Lz1/a;
    .locals 3
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    sget v0, Lz1/a;->z:I

    sget v1, Lz1/a;->y:I

    const/4 v2, 0x0

    invoke-static {p0, v2, v0, v1}, Lz1/a;->e(Landroid/content/Context;Landroid/util/AttributeSet;II)Lz1/a;

    move-result-object p0

    return-object p0
.end method

.method public static e(Landroid/content/Context;Landroid/util/AttributeSet;II)Lz1/a;
    .locals 1
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
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

    new-instance v0, Lz1/a;

    invoke-direct {v0, p0}, Lz1/a;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p0, p1, p2, p3}, Lz1/a;->C(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-object v0
.end method

.method public static f(Landroid/content/Context;I)Lz1/a;
    .locals 2
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # I
        .annotation build Landroidx/annotation/XmlRes;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    const-string v0, "badge"

    invoke-static {p0, p1, v0}, LM1/a;->a(Landroid/content/Context;ILjava/lang/CharSequence;)Landroid/util/AttributeSet;

    move-result-object p1

    invoke-interface {p1}, Landroid/util/AttributeSet;->getStyleAttribute()I

    move-result v0

    if-nez v0, :cond_0

    sget v0, Lz1/a;->y:I

    :cond_0
    sget v1, Lz1/a;->z:I

    invoke-static {p0, p1, v1, v0}, Lz1/a;->e(Landroid/content/Context;Landroid/util/AttributeSet;II)Lz1/a;

    move-result-object p0

    return-object p0
.end method

.method public static g(Landroid/content/Context;Lz1/a$c;)Lz1/a;
    .locals 1
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Lz1/a$c;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v0, Lz1/a;

    invoke-direct {v0, p0}, Lz1/a;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p1}, Lz1/a;->E(Lz1/a$c;)V

    return-object v0
.end method

.method private h(Landroid/graphics/Canvas;)V
    .locals 5

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {p0}, Lz1/a;->m()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lz1/a;->d:Lcom/google/android/material/internal/p;

    invoke-virtual {v2}, Lcom/google/android/material/internal/p;->e()Landroid/text/TextPaint;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {v2, v1, v4, v3, v0}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    iget v2, p0, Lz1/a;->j:F

    iget v3, p0, Lz1/a;->k:F

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    add-float/2addr v3, v0

    iget-object v0, p0, Lz1/a;->d:Lcom/google/android/material/internal/p;

    invoke-virtual {v0}, Lcom/google/android/material/internal/p;->e()Landroid/text/TextPaint;

    move-result-object v0

    invoke-virtual {p1, v1, v2, v3, v0}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    return-void
.end method


# virtual methods
.method public A()I
    .locals 1
    .annotation build Landroidx/annotation/Px;
    .end annotation

    iget-object v0, p0, Lz1/a;->i:Lz1/a$c;

    invoke-static {v0}, Lz1/a$c;->U(Lz1/a$c;)I

    move-result v0

    return v0
.end method

.method public B()Z
    .locals 2

    iget-object v0, p0, Lz1/a;->i:Lz1/a$c;

    invoke-static {v0}, Lz1/a$c;->E(Lz1/a$c;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final C(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 7
    .param p3    # I
        .annotation build Landroidx/annotation/AttrRes;
        .end annotation
    .end param
    .param p4    # I
        .annotation build Landroidx/annotation/StyleRes;
        .end annotation
    .end param

    sget-object v2, Lw1/a$o;->W3:[I

    const/4 v6, 0x0

    new-array v5, v6, [I

    move-object v0, p1

    move-object v1, p2

    move v3, p3

    move v4, p4

    invoke-static/range {v0 .. v5}, Lcom/google/android/material/internal/s;->j(Landroid/content/Context;Landroid/util/AttributeSet;[III[I)Landroid/content/res/TypedArray;

    move-result-object p2

    sget p3, Lw1/a$o;->f4:I

    const/4 p4, 0x4

    invoke-virtual {p2, p3, p4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p3

    invoke-virtual {p0, p3}, Lz1/a;->Q(I)V

    sget p3, Lw1/a$o;->g4:I

    invoke-virtual {p2, p3}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p4

    if-eqz p4, :cond_0

    invoke-virtual {p2, p3, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p3

    invoke-virtual {p0, p3}, Lz1/a;->R(I)V

    :cond_0
    sget p3, Lw1/a$o;->X3:I

    invoke-static {p1, p2, p3}, Lz1/a;->D(Landroid/content/Context;Landroid/content/res/TypedArray;I)I

    move-result p3

    invoke-virtual {p0, p3}, Lz1/a;->H(I)V

    sget p3, Lw1/a$o;->a4:I

    invoke-virtual {p2, p3}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p4

    if-eqz p4, :cond_1

    invoke-static {p1, p2, p3}, Lz1/a;->D(Landroid/content/Context;Landroid/content/res/TypedArray;I)I

    move-result p1

    invoke-virtual {p0, p1}, Lz1/a;->J(I)V

    :cond_1
    sget p1, Lw1/a$o;->Y3:I

    const p3, 0x800035

    invoke-virtual {p2, p1, p3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p1

    invoke-virtual {p0, p1}, Lz1/a;->I(I)V

    sget p1, Lw1/a$o;->d4:I

    invoke-virtual {p2, p1, v6}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result p1

    invoke-virtual {p0, p1}, Lz1/a;->P(I)V

    sget p1, Lw1/a$o;->h4:I

    invoke-virtual {p2, p1, v6}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result p1

    invoke-virtual {p0, p1}, Lz1/a;->W(I)V

    sget p1, Lw1/a$o;->e4:I

    invoke-virtual {p0}, Lz1/a;->s()I

    move-result p3

    invoke-virtual {p2, p1, p3}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result p1

    invoke-virtual {p0, p1}, Lz1/a;->O(I)V

    sget p1, Lw1/a$o;->i4:I

    invoke-virtual {p0}, Lz1/a;->A()I

    move-result p3

    invoke-virtual {p2, p1, p3}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result p1

    invoke-virtual {p0, p1}, Lz1/a;->V(I)V

    sget p1, Lw1/a$o;->Z3:I

    invoke-virtual {p2, p1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p3

    if-eqz p3, :cond_2

    iget p3, p0, Lz1/a;->f:F

    float-to-int p3, p3

    invoke-virtual {p2, p1, p3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Lz1/a;->f:F

    :cond_2
    sget p1, Lw1/a$o;->b4:I

    invoke-virtual {p2, p1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p3

    if-eqz p3, :cond_3

    iget p3, p0, Lz1/a;->h:F

    float-to-int p3, p3

    invoke-virtual {p2, p1, p3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Lz1/a;->h:F

    :cond_3
    sget p1, Lw1/a$o;->c4:I

    invoke-virtual {p2, p1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p3

    if-eqz p3, :cond_4

    iget p3, p0, Lz1/a;->g:F

    float-to-int p3, p3

    invoke-virtual {p2, p1, p3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Lz1/a;->g:F

    :cond_4
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method public final E(Lz1/a$c;)V
    .locals 2
    .param p1    # Lz1/a$c;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-static {p1}, Lz1/a$c;->d(Lz1/a$c;)I

    move-result v0

    invoke-virtual {p0, v0}, Lz1/a;->Q(I)V

    invoke-static {p1}, Lz1/a$c;->E(Lz1/a$c;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    invoke-static {p1}, Lz1/a$c;->E(Lz1/a$c;)I

    move-result v0

    invoke-virtual {p0, v0}, Lz1/a;->R(I)V

    :cond_0
    invoke-static {p1}, Lz1/a$c;->H(Lz1/a$c;)I

    move-result v0

    invoke-virtual {p0, v0}, Lz1/a;->H(I)V

    invoke-static {p1}, Lz1/a$c;->J(Lz1/a$c;)I

    move-result v0

    invoke-virtual {p0, v0}, Lz1/a;->J(I)V

    invoke-static {p1}, Lz1/a$c;->M(Lz1/a$c;)I

    move-result v0

    invoke-virtual {p0, v0}, Lz1/a;->I(I)V

    invoke-static {p1}, Lz1/a$c;->P(Lz1/a$c;)I

    move-result v0

    invoke-virtual {p0, v0}, Lz1/a;->P(I)V

    invoke-static {p1}, Lz1/a$c;->U(Lz1/a$c;)I

    move-result v0

    invoke-virtual {p0, v0}, Lz1/a;->W(I)V

    invoke-static {p1}, Lz1/a$c;->X(Lz1/a$c;)I

    move-result v0

    invoke-virtual {p0, v0}, Lz1/a;->O(I)V

    invoke-static {p1}, Lz1/a$c;->b0(Lz1/a$c;)I

    move-result v0

    invoke-virtual {p0, v0}, Lz1/a;->V(I)V

    invoke-static {p1}, Lz1/a$c;->e(Lz1/a$c;)I

    move-result v0

    invoke-virtual {p0, v0}, Lz1/a;->F(I)V

    invoke-static {p1}, Lz1/a$c;->h(Lz1/a$c;)I

    move-result v0

    invoke-virtual {p0, v0}, Lz1/a;->G(I)V

    invoke-static {p1}, Lz1/a$c;->b(Lz1/a$c;)Z

    move-result p1

    invoke-virtual {p0, p1}, Lz1/a;->X(Z)V

    return-void
.end method

.method public F(I)V
    .locals 1

    iget-object v0, p0, Lz1/a;->i:Lz1/a$c;

    invoke-static {v0, p1}, Lz1/a$c;->f(Lz1/a$c;I)I

    invoke-virtual {p0}, Lz1/a;->d0()V

    return-void
.end method

.method public G(I)V
    .locals 1

    iget-object v0, p0, Lz1/a;->i:Lz1/a$c;

    invoke-static {v0, p1}, Lz1/a$c;->i(Lz1/a$c;I)I

    invoke-virtual {p0}, Lz1/a;->d0()V

    return-void
.end method

.method public H(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param

    iget-object v0, p0, Lz1/a;->i:Lz1/a$c;

    invoke-static {v0, p1}, Lz1/a$c;->I(Lz1/a$c;I)I

    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    iget-object v0, p0, Lz1/a;->c:La2/j;

    invoke-virtual {v0}, La2/j;->y()Landroid/content/res/ColorStateList;

    move-result-object v0

    if-eq v0, p1, :cond_0

    iget-object v0, p0, Lz1/a;->c:La2/j;

    invoke-virtual {v0, p1}, La2/j;->n0(Landroid/content/res/ColorStateList;)V

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    :cond_0
    return-void
.end method

.method public I(I)V
    .locals 1

    iget-object v0, p0, Lz1/a;->i:Lz1/a$c;

    invoke-static {v0}, Lz1/a$c;->M(Lz1/a$c;)I

    move-result v0

    if-eq v0, p1, :cond_1

    iget-object v0, p0, Lz1/a;->i:Lz1/a$c;

    invoke-static {v0, p1}, Lz1/a$c;->O(Lz1/a$c;I)I

    iget-object p1, p0, Lz1/a;->p:Ljava/lang/ref/WeakReference;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lz1/a;->p:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    iget-object v0, p0, Lz1/a;->q:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, p1, v0}, Lz1/a;->c0(Landroid/view/View;Landroid/widget/FrameLayout;)V

    :cond_1
    return-void
.end method

.method public J(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param

    iget-object v0, p0, Lz1/a;->i:Lz1/a$c;

    invoke-static {v0, p1}, Lz1/a$c;->K(Lz1/a$c;I)I

    iget-object v0, p0, Lz1/a;->d:Lcom/google/android/material/internal/p;

    invoke-virtual {v0}, Lcom/google/android/material/internal/p;->e()Landroid/text/TextPaint;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Paint;->getColor()I

    move-result v0

    if-eq v0, p1, :cond_0

    iget-object v0, p0, Lz1/a;->d:Lcom/google/android/material/internal/p;

    invoke-virtual {v0}, Lcom/google/android/material/internal/p;->e()Landroid/text/TextPaint;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    :cond_0
    return-void
.end method

.method public K(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/StringRes;
        .end annotation
    .end param

    iget-object v0, p0, Lz1/a;->i:Lz1/a$c;

    invoke-static {v0, p1}, Lz1/a$c;->D(Lz1/a$c;I)I

    return-void
.end method

.method public L(Ljava/lang/CharSequence;)V
    .locals 1

    iget-object v0, p0, Lz1/a;->i:Lz1/a$c;

    invoke-static {v0, p1}, Lz1/a$c;->p(Lz1/a$c;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    return-void
.end method

.method public M(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/PluralsRes;
        .end annotation
    .end param

    iget-object v0, p0, Lz1/a;->i:Lz1/a$c;

    invoke-static {v0, p1}, Lz1/a$c;->t(Lz1/a$c;I)I

    return-void
.end method

.method public N(I)V
    .locals 0

    invoke-virtual {p0, p1}, Lz1/a;->P(I)V

    invoke-virtual {p0, p1}, Lz1/a;->O(I)V

    return-void
.end method

.method public O(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/Px;
        .end annotation
    .end param

    iget-object v0, p0, Lz1/a;->i:Lz1/a$c;

    invoke-static {v0, p1}, Lz1/a$c;->a0(Lz1/a$c;I)I

    invoke-virtual {p0}, Lz1/a;->d0()V

    return-void
.end method

.method public P(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/Px;
        .end annotation
    .end param

    iget-object v0, p0, Lz1/a;->i:Lz1/a$c;

    invoke-static {v0, p1}, Lz1/a$c;->T(Lz1/a$c;I)I

    invoke-virtual {p0}, Lz1/a;->d0()V

    return-void
.end method

.method public Q(I)V
    .locals 1

    iget-object v0, p0, Lz1/a;->i:Lz1/a$c;

    invoke-static {v0}, Lz1/a$c;->d(Lz1/a$c;)I

    move-result v0

    if-eq v0, p1, :cond_0

    iget-object v0, p0, Lz1/a;->i:Lz1/a$c;

    invoke-static {v0, p1}, Lz1/a$c;->g(Lz1/a$c;I)I

    invoke-virtual {p0}, Lz1/a;->e0()V

    iget-object p1, p0, Lz1/a;->d:Lcom/google/android/material/internal/p;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/google/android/material/internal/p;->j(Z)V

    invoke-virtual {p0}, Lz1/a;->d0()V

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    :cond_0
    return-void
.end method

.method public R(I)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    iget-object v0, p0, Lz1/a;->i:Lz1/a$c;

    invoke-static {v0}, Lz1/a$c;->E(Lz1/a$c;)I

    move-result v0

    if-eq v0, p1, :cond_0

    iget-object v0, p0, Lz1/a;->i:Lz1/a$c;

    invoke-static {v0, p1}, Lz1/a$c;->F(Lz1/a$c;I)I

    iget-object p1, p0, Lz1/a;->d:Lcom/google/android/material/internal/p;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/google/android/material/internal/p;->j(Z)V

    invoke-virtual {p0}, Lz1/a;->d0()V

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    :cond_0
    return-void
.end method

.method public U(I)V
    .locals 0

    invoke-virtual {p0, p1}, Lz1/a;->W(I)V

    invoke-virtual {p0, p1}, Lz1/a;->V(I)V

    return-void
.end method

.method public V(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/Px;
        .end annotation
    .end param

    iget-object v0, p0, Lz1/a;->i:Lz1/a$c;

    invoke-static {v0, p1}, Lz1/a$c;->h0(Lz1/a$c;I)I

    invoke-virtual {p0}, Lz1/a;->d0()V

    return-void
.end method

.method public W(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/Px;
        .end annotation
    .end param

    iget-object v0, p0, Lz1/a;->i:Lz1/a$c;

    invoke-static {v0, p1}, Lz1/a$c;->W(Lz1/a$c;I)I

    invoke-virtual {p0}, Lz1/a;->d0()V

    return-void
.end method

.method public X(Z)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    iget-object v0, p0, Lz1/a;->i:Lz1/a$c;

    invoke-static {v0, p1}, Lz1/a$c;->c(Lz1/a$c;Z)Z

    sget-boolean v0, Lz1/b;->a:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lz1/a;->p()Landroid/widget/FrameLayout;

    move-result-object v0

    if-eqz v0, :cond_0

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lz1/a;->p()Landroid/widget/FrameLayout;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    :cond_0
    return-void
.end method

.method public final Y(Landroid/view/View;)V
    .locals 5

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v1

    sget v2, Lw1/a$h;->S2:I

    if-eq v1, v2, :cond_1

    :cond_0
    iget-object v1, p0, Lz1/a;->q:Ljava/lang/ref/WeakReference;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v0, :cond_2

    :cond_1
    return-void

    :cond_2
    invoke-static {p1}, Lz1/a;->Z(Landroid/view/View;)V

    new-instance v1, Landroid/widget/FrameLayout;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    sget v2, Lw1/a$h;->S2:I

    invoke-virtual {v1, v2}, Landroid/view/View;->setId(I)V

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setClipToPadding(Z)V

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setMinimumWidth(I)V

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setMinimumHeight(I)V

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->removeViewAt(I)V

    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v4, -0x1

    invoke-direct {v3, v4, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p1, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v1, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lz1/a;->q:Ljava/lang/ref/WeakReference;

    new-instance v0, Lz1/a$a;

    invoke-direct {v0, p0, p1, v1}, Lz1/a$a;-><init>(Lz1/a;Landroid/view/View;Landroid/widget/FrameLayout;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public a()V
    .locals 0
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method

.method public a0(Landroid/view/View;)V
    .locals 1
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lz1/a;->c0(Landroid/view/View;Landroid/widget/FrameLayout;)V

    return-void
.end method

.method public final b(Landroid/content/Context;Landroid/graphics/Rect;Landroid/view/View;)V
    .locals 4
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/graphics/Rect;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-virtual {p0}, Lz1/a;->x()I

    move-result v0

    iget-object v1, p0, Lz1/a;->i:Lz1/a$c;

    invoke-static {v1}, Lz1/a$c;->M(Lz1/a$c;)I

    move-result v1

    const v2, 0x800053

    if-eq v1, v2, :cond_0

    const v3, 0x800055

    if-eq v1, v3, :cond_0

    iget v1, p2, Landroid/graphics/Rect;->top:I

    add-int/2addr v1, v0

    int-to-float v0, v1

    iput v0, p0, Lz1/a;->k:F

    goto :goto_0

    :cond_0
    iget v1, p2, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v1, v0

    int-to-float v0, v1

    iput v0, p0, Lz1/a;->k:F

    :goto_0
    invoke-virtual {p0}, Lz1/a;->u()I

    move-result v0

    const/16 v1, 0x9

    if-gt v0, v1, :cond_2

    invoke-virtual {p0}, Lz1/a;->B()Z

    move-result v0

    if-nez v0, :cond_1

    iget v0, p0, Lz1/a;->f:F

    goto :goto_1

    :cond_1
    iget v0, p0, Lz1/a;->g:F

    :goto_1
    iput v0, p0, Lz1/a;->m:F

    iput v0, p0, Lz1/a;->o:F

    iput v0, p0, Lz1/a;->n:F

    goto :goto_2

    :cond_2
    iget v0, p0, Lz1/a;->g:F

    iput v0, p0, Lz1/a;->m:F

    iput v0, p0, Lz1/a;->o:F

    invoke-virtual {p0}, Lz1/a;->m()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lz1/a;->d:Lcom/google/android/material/internal/p;

    invoke-virtual {v1, v0}, Lcom/google/android/material/internal/p;->f(Ljava/lang/String;)F

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    iget v1, p0, Lz1/a;->h:F

    add-float/2addr v0, v1

    iput v0, p0, Lz1/a;->n:F

    :goto_2
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p0}, Lz1/a;->B()Z

    move-result v0

    if-eqz v0, :cond_3

    sget v0, Lw1/a$f;->R2:I

    goto :goto_3

    :cond_3
    sget v0, Lw1/a$f;->O2:I

    :goto_3
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    invoke-virtual {p0}, Lz1/a;->w()I

    move-result v0

    iget-object v1, p0, Lz1/a;->i:Lz1/a$c;

    invoke-static {v1}, Lz1/a$c;->M(Lz1/a$c;)I

    move-result v1

    const v3, 0x800033

    if-eq v1, v3, :cond_5

    if-eq v1, v2, :cond_5

    invoke-static {p3}, Landroidx/core/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result p3

    if-nez p3, :cond_4

    iget p2, p2, Landroid/graphics/Rect;->right:I

    int-to-float p2, p2

    iget p3, p0, Lz1/a;->n:F

    add-float/2addr p2, p3

    int-to-float p1, p1

    sub-float/2addr p2, p1

    int-to-float p1, v0

    sub-float/2addr p2, p1

    goto :goto_4

    :cond_4
    iget p2, p2, Landroid/graphics/Rect;->left:I

    int-to-float p2, p2

    iget p3, p0, Lz1/a;->n:F

    sub-float/2addr p2, p3

    int-to-float p1, p1

    add-float/2addr p2, p1

    int-to-float p1, v0

    add-float/2addr p2, p1

    :goto_4
    iput p2, p0, Lz1/a;->j:F

    goto :goto_6

    :cond_5
    invoke-static {p3}, Landroidx/core/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result p3

    if-nez p3, :cond_6

    iget p2, p2, Landroid/graphics/Rect;->left:I

    int-to-float p2, p2

    iget p3, p0, Lz1/a;->n:F

    sub-float/2addr p2, p3

    int-to-float p1, p1

    add-float/2addr p2, p1

    int-to-float p1, v0

    add-float/2addr p2, p1

    goto :goto_5

    :cond_6
    iget p2, p2, Landroid/graphics/Rect;->right:I

    int-to-float p2, p2

    iget p3, p0, Lz1/a;->n:F

    add-float/2addr p2, p3

    int-to-float p1, p1

    sub-float/2addr p2, p1

    int-to-float p1, v0

    sub-float/2addr p2, p1

    :goto_5
    iput p2, p0, Lz1/a;->j:F

    :goto_6
    return-void
.end method

.method public b0(Landroid/view/View;Landroid/view/ViewGroup;)V
    .locals 1
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    instance-of v0, p2, Landroid/widget/FrameLayout;

    if-eqz v0, :cond_0

    check-cast p2, Landroid/widget/FrameLayout;

    invoke-virtual {p0, p1, p2}, Lz1/a;->c0(Landroid/view/View;Landroid/widget/FrameLayout;)V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "customBadgeParent must be a FrameLayout"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public c()V
    .locals 2

    iget-object v0, p0, Lz1/a;->i:Lz1/a$c;

    const/4 v1, -0x1

    invoke-static {v0, v1}, Lz1/a$c;->F(Lz1/a$c;I)I

    invoke-virtual {p0}, Lz1/a;->d0()V

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method

.method public c0(Landroid/view/View;Landroid/widget/FrameLayout;)V
    .locals 2
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/widget/FrameLayout;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lz1/a;->p:Ljava/lang/ref/WeakReference;

    sget-boolean v0, Lz1/b;->a:Z

    if-eqz v0, :cond_0

    if-nez p2, :cond_0

    invoke-virtual {p0, p1}, Lz1/a;->Y(Landroid/view/View;)V

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Lz1/a;->q:Ljava/lang/ref/WeakReference;

    :goto_0
    if-nez v0, :cond_1

    invoke-static {p1}, Lz1/a;->Z(Landroid/view/View;)V

    :cond_1
    invoke-virtual {p0}, Lz1/a;->d0()V

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method

.method public final d0()V
    .locals 6

    iget-object v0, p0, Lz1/a;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iget-object v1, p0, Lz1/a;->p:Ljava/lang/ref/WeakReference;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    goto :goto_0

    :cond_0
    move-object v1, v2

    :goto_0
    if-eqz v0, :cond_6

    if-nez v1, :cond_1

    goto :goto_1

    :cond_1
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    iget-object v4, p0, Lz1/a;->e:Landroid/graphics/Rect;

    invoke-virtual {v3, v4}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {v1, v4}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    iget-object v5, p0, Lz1/a;->q:Ljava/lang/ref/WeakReference;

    if-eqz v5, :cond_2

    invoke-virtual {v5}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout;

    :cond_2
    if-nez v2, :cond_3

    sget-boolean v5, Lz1/b;->a:Z

    if-eqz v5, :cond_5

    :cond_3
    if-nez v2, :cond_4

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    :cond_4
    invoke-virtual {v2, v1, v4}, Landroid/view/ViewGroup;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    :cond_5
    invoke-virtual {p0, v0, v4, v1}, Lz1/a;->b(Landroid/content/Context;Landroid/graphics/Rect;Landroid/view/View;)V

    iget-object v0, p0, Lz1/a;->e:Landroid/graphics/Rect;

    iget v1, p0, Lz1/a;->j:F

    iget v2, p0, Lz1/a;->k:F

    iget v4, p0, Lz1/a;->n:F

    iget v5, p0, Lz1/a;->o:F

    invoke-static {v0, v1, v2, v4, v5}, Lz1/b;->l(Landroid/graphics/Rect;FFFF)V

    iget-object v0, p0, Lz1/a;->c:La2/j;

    iget v1, p0, Lz1/a;->m:F

    invoke-virtual {v0, v1}, La2/j;->j0(F)V

    iget-object v0, p0, Lz1/a;->e:Landroid/graphics/Rect;

    invoke-virtual {v3, v0}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p0, Lz1/a;->c:La2/j;

    iget-object v1, p0, Lz1/a;->e:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    :cond_6
    :goto_1
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 1
    .param p1    # Landroid/graphics/Canvas;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lz1/a;->getAlpha()I

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->isVisible()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lz1/a;->c:La2/j;

    invoke-virtual {v0, p1}, La2/j;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual {p0}, Lz1/a;->B()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0, p1}, Lz1/a;->h(Landroid/graphics/Canvas;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final e0()V
    .locals 4

    invoke-virtual {p0}, Lz1/a;->t()I

    move-result v0

    int-to-double v0, v0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v0, v2

    const-wide/high16 v2, 0x4024000000000000L    # 10.0

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    double-to-int v0, v0

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lz1/a;->l:I

    return-void
.end method

.method public getAlpha()I
    .locals 1

    iget-object v0, p0, Lz1/a;->i:Lz1/a$c;

    invoke-static {v0}, Lz1/a$c;->l(Lz1/a$c;)I

    move-result v0

    return v0
.end method

.method public getIntrinsicHeight()I
    .locals 1

    iget-object v0, p0, Lz1/a;->e:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    return v0
.end method

.method public getIntrinsicWidth()I
    .locals 1

    iget-object v0, p0, Lz1/a;->e:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    return v0
.end method

.method public getOpacity()I
    .locals 1

    const/4 v0, -0x3

    return v0
.end method

.method public i()I
    .locals 1

    iget-object v0, p0, Lz1/a;->i:Lz1/a$c;

    invoke-static {v0}, Lz1/a$c;->e(Lz1/a$c;)I

    move-result v0

    return v0
.end method

.method public isStateful()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public j()I
    .locals 1

    iget-object v0, p0, Lz1/a;->i:Lz1/a$c;

    invoke-static {v0}, Lz1/a$c;->h(Lz1/a$c;)I

    move-result v0

    return v0
.end method

.method public k()I
    .locals 1
    .annotation build Landroidx/annotation/ColorInt;
    .end annotation

    iget-object v0, p0, Lz1/a;->c:La2/j;

    invoke-virtual {v0}, La2/j;->y()Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v0

    return v0
.end method

.method public l()I
    .locals 1

    iget-object v0, p0, Lz1/a;->i:Lz1/a$c;

    invoke-static {v0}, Lz1/a$c;->M(Lz1/a$c;)I

    move-result v0

    return v0
.end method

.method public final m()Ljava/lang/String;
    .locals 4
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-virtual {p0}, Lz1/a;->u()I

    move-result v0

    iget v1, p0, Lz1/a;->l:I

    if-gt v0, v1, :cond_0

    invoke-static {}, Ljava/text/NumberFormat;->getInstance()Ljava/text/NumberFormat;

    move-result-object v0

    invoke-virtual {p0}, Lz1/a;->u()I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Ljava/text/NumberFormat;->format(J)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Lz1/a;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    if-nez v0, :cond_1

    const-string v0, ""

    return-object v0

    :cond_1
    sget v1, Lw1/a$m;->n0:I

    iget v2, p0, Lz1/a;->l:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "+"

    filled-new-array {v2, v3}, [Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public n()I
    .locals 1
    .annotation build Landroidx/annotation/ColorInt;
    .end annotation

    iget-object v0, p0, Lz1/a;->d:Lcom/google/android/material/internal/p;

    invoke-virtual {v0}, Lcom/google/android/material/internal/p;->e()Landroid/text/TextPaint;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Paint;->getColor()I

    move-result v0

    return v0
.end method

.method public o()Ljava/lang/CharSequence;
    .locals 4
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->isVisible()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    invoke-virtual {p0}, Lz1/a;->B()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lz1/a;->i:Lz1/a$c;

    invoke-static {v0}, Lz1/a$c;->q(Lz1/a$c;)I

    move-result v0

    if-lez v0, :cond_3

    iget-object v0, p0, Lz1/a;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    if-nez v0, :cond_1

    return-object v1

    :cond_1
    invoke-virtual {p0}, Lz1/a;->u()I

    move-result v1

    iget v2, p0, Lz1/a;->l:I

    if-gt v1, v2, :cond_2

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget-object v1, p0, Lz1/a;->i:Lz1/a$c;

    invoke-static {v1}, Lz1/a$c;->q(Lz1/a$c;)I

    move-result v1

    invoke-virtual {p0}, Lz1/a;->u()I

    move-result v2

    invoke-virtual {p0}, Lz1/a;->u()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_2
    iget-object v1, p0, Lz1/a;->i:Lz1/a$c;

    invoke-static {v1}, Lz1/a$c;->C(Lz1/a$c;)I

    move-result v1

    iget v2, p0, Lz1/a;->l:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_3
    return-object v1

    :cond_4
    iget-object v0, p0, Lz1/a;->i:Lz1/a$c;

    invoke-static {v0}, Lz1/a$c;->n(Lz1/a$c;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public onStateChange([I)Z
    .locals 0

    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->onStateChange([I)Z

    move-result p1

    return p1
.end method

.method public p()Landroid/widget/FrameLayout;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lz1/a;->q:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public q()I
    .locals 1

    iget-object v0, p0, Lz1/a;->i:Lz1/a$c;

    invoke-static {v0}, Lz1/a$c;->P(Lz1/a$c;)I

    move-result v0

    return v0
.end method

.method public r()I
    .locals 1
    .annotation build Landroidx/annotation/Px;
    .end annotation

    iget-object v0, p0, Lz1/a;->i:Lz1/a$c;

    invoke-static {v0}, Lz1/a$c;->X(Lz1/a$c;)I

    move-result v0

    return v0
.end method

.method public s()I
    .locals 1
    .annotation build Landroidx/annotation/Px;
    .end annotation

    iget-object v0, p0, Lz1/a;->i:Lz1/a$c;

    invoke-static {v0}, Lz1/a$c;->P(Lz1/a$c;)I

    move-result v0

    return v0
.end method

.method public setAlpha(I)V
    .locals 1

    iget-object v0, p0, Lz1/a;->i:Lz1/a$c;

    invoke-static {v0, p1}, Lz1/a$c;->m(Lz1/a$c;I)I

    iget-object v0, p0, Lz1/a;->d:Lcom/google/android/material/internal/p;

    invoke-virtual {v0}, Lcom/google/android/material/internal/p;->e()Landroid/text/TextPaint;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0

    return-void
.end method

.method public t()I
    .locals 1

    iget-object v0, p0, Lz1/a;->i:Lz1/a$c;

    invoke-static {v0}, Lz1/a$c;->d(Lz1/a$c;)I

    move-result v0

    return v0
.end method

.method public u()I
    .locals 1

    invoke-virtual {p0}, Lz1/a;->B()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    iget-object v0, p0, Lz1/a;->i:Lz1/a$c;

    invoke-static {v0}, Lz1/a$c;->E(Lz1/a$c;)I

    move-result v0

    return v0
.end method

.method public v()Lz1/a$c;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object v0, p0, Lz1/a;->i:Lz1/a$c;

    return-object v0
.end method

.method public final w()I
    .locals 2

    invoke-virtual {p0}, Lz1/a;->B()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lz1/a;->i:Lz1/a$c;

    invoke-static {v0}, Lz1/a$c;->X(Lz1/a$c;)I

    move-result v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lz1/a;->i:Lz1/a$c;

    invoke-static {v0}, Lz1/a$c;->P(Lz1/a$c;)I

    move-result v0

    :goto_0
    iget-object v1, p0, Lz1/a;->i:Lz1/a$c;

    invoke-static {v1}, Lz1/a$c;->e(Lz1/a$c;)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public final x()I
    .locals 2

    invoke-virtual {p0}, Lz1/a;->B()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lz1/a;->i:Lz1/a$c;

    invoke-static {v0}, Lz1/a$c;->b0(Lz1/a$c;)I

    move-result v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lz1/a;->i:Lz1/a$c;

    invoke-static {v0}, Lz1/a$c;->U(Lz1/a$c;)I

    move-result v0

    :goto_0
    iget-object v1, p0, Lz1/a;->i:Lz1/a$c;

    invoke-static {v1}, Lz1/a$c;->h(Lz1/a$c;)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public y()I
    .locals 1

    iget-object v0, p0, Lz1/a;->i:Lz1/a$c;

    invoke-static {v0}, Lz1/a$c;->U(Lz1/a$c;)I

    move-result v0

    return v0
.end method

.method public z()I
    .locals 1
    .annotation build Landroidx/annotation/Px;
    .end annotation

    iget-object v0, p0, Lz1/a;->i:Lz1/a$c;

    invoke-static {v0}, Lz1/a$c;->b0(Lz1/a$c;)I

    move-result v0

    return v0
.end method
