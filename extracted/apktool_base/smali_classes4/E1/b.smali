.class public LE1/b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/RestrictTo;
    value = {
        .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
    }
.end annotation


# static fields
.field public static final t:[I

.field public static final u:I = -0x1

.field public static final v:D

.field public static final w:F = 1.5f

.field public static final x:I = 0x2


# instance fields
.field public final a:LE1/a;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final b:Landroid/graphics/Rect;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final c:La2/j;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final d:La2/j;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public e:I
    .annotation build Landroidx/annotation/Dimension;
    .end annotation
.end field

.field public f:I
    .annotation build Landroidx/annotation/Dimension;
    .end annotation
.end field

.field public g:I
    .annotation build Landroidx/annotation/Dimension;
    .end annotation
.end field

.field public h:Landroid/graphics/drawable/Drawable;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public i:Landroid/graphics/drawable/Drawable;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public j:Landroid/content/res/ColorStateList;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public k:Landroid/content/res/ColorStateList;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public l:La2/o;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public m:Landroid/content/res/ColorStateList;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public n:Landroid/graphics/drawable/Drawable;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public o:Landroid/graphics/drawable/LayerDrawable;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public p:La2/j;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public q:La2/j;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public r:Z

.field public s:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const v0, 0x10100a0

    filled-new-array {v0}, [I

    move-result-object v0

    sput-object v0, LE1/b;->t:[I

    const-wide v0, 0x4046800000000000L    # 45.0

    invoke-static {v0, v1}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v0

    sput-wide v0, LE1/b;->v:D

    return-void
.end method

.method public constructor <init>(LE1/a;Landroid/util/AttributeSet;II)V
    .locals 2
    .param p1    # LE1/a;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # I
        .annotation build Landroidx/annotation/StyleRes;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, LE1/b;->b:Landroid/graphics/Rect;

    const/4 v0, 0x0

    iput-boolean v0, p0, LE1/b;->r:Z

    iput-object p1, p0, LE1/b;->a:LE1/a;

    new-instance v0, La2/j;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p2, p3, p4}, La2/j;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    iput-object v0, p0, LE1/b;->c:La2/j;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p4

    invoke-virtual {v0, p4}, La2/j;->Y(Landroid/content/Context;)V

    const p4, -0xbbbbbc

    invoke-virtual {v0, p4}, La2/j;->u0(I)V

    invoke-virtual {v0}, La2/j;->getShapeAppearanceModel()La2/o;

    move-result-object p4

    invoke-virtual {p4}, La2/o;->v()La2/o$b;

    move-result-object p4

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    sget-object v0, Lw1/a$o;->e5:[I

    sget v1, Lw1/a$n;->u3:I

    invoke-virtual {p1, p2, v0, p3, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    sget p2, Lw1/a$o;->i5:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p3

    if-eqz p3, :cond_0

    const/4 p3, 0x0

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p2

    invoke-virtual {p4, p2}, La2/o$b;->o(F)La2/o$b;

    :cond_0
    new-instance p2, La2/j;

    invoke-direct {p2}, La2/j;-><init>()V

    iput-object p2, p0, LE1/b;->d:La2/j;

    invoke-virtual {p4}, La2/o$b;->m()La2/o;

    move-result-object p2

    invoke-virtual {p0, p2}, LE1/b;->R(La2/o;)V

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method


# virtual methods
.method public A()Landroid/graphics/Rect;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object v0, p0, LE1/b;->b:Landroid/graphics/Rect;

    return-object v0
.end method

.method public final B(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 8
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object v0, p0, LE1/b;->a:LE1/a;

    invoke-virtual {v0}, Landroidx/cardview/widget/CardView;->getUseCompatPadding()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, LE1/b;->d()F

    move-result v0

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    invoke-virtual {p0}, LE1/b;->c()F

    move-result v1

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v1

    double-to-int v1, v1

    move v7, v0

    move v6, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    move v6, v0

    move v7, v6

    :goto_0
    new-instance v0, LE1/b$a;

    move-object v1, v0

    move-object v2, p0

    move-object v3, p1

    move v4, v6

    move v5, v7

    invoke-direct/range {v1 .. v7}, LE1/b$a;-><init>(LE1/b;Landroid/graphics/drawable/Drawable;IIII)V

    return-object v0
.end method

.method public C()Z
    .locals 1

    iget-boolean v0, p0, LE1/b;->r:Z

    return v0
.end method

.method public D()Z
    .locals 1

    iget-boolean v0, p0, LE1/b;->s:Z

    return v0
.end method

.method public E(Landroid/content/res/TypedArray;)V
    .locals 3
    .param p1    # Landroid/content/res/TypedArray;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, LE1/b;->a:LE1/a;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lw1/a$o;->Ml:I

    invoke-static {v0, p1, v1}, LX1/c;->a(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    move-result-object v0

    iput-object v0, p0, LE1/b;->m:Landroid/content/res/ColorStateList;

    if-nez v0, :cond_0

    const/4 v0, -0x1

    invoke-static {v0}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    iput-object v0, p0, LE1/b;->m:Landroid/content/res/ColorStateList;

    :cond_0
    sget v0, Lw1/a$o;->Nl:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    iput v0, p0, LE1/b;->g:I

    sget v0, Lw1/a$o;->Cl:I

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p0, LE1/b;->s:Z

    iget-object v2, p0, LE1/b;->a:LE1/a;

    invoke-virtual {v2, v0}, Landroid/view/View;->setLongClickable(Z)V

    iget-object v0, p0, LE1/b;->a:LE1/a;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v2, Lw1/a$o;->Hl:I

    invoke-static {v0, p1, v2}, LX1/c;->a(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    move-result-object v0

    iput-object v0, p0, LE1/b;->k:Landroid/content/res/ColorStateList;

    iget-object v0, p0, LE1/b;->a:LE1/a;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v2, Lw1/a$o;->El:I

    invoke-static {v0, p1, v2}, LX1/c;->d(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, LE1/b;->K(Landroid/graphics/drawable/Drawable;)V

    sget v0, Lw1/a$o;->Gl:I

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    invoke-virtual {p0, v0}, LE1/b;->M(I)V

    sget v0, Lw1/a$o;->Fl:I

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    invoke-virtual {p0, v0}, LE1/b;->L(I)V

    iget-object v0, p0, LE1/b;->a:LE1/a;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lw1/a$o;->Il:I

    invoke-static {v0, p1, v1}, LX1/c;->a(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    move-result-object v0

    iput-object v0, p0, LE1/b;->j:Landroid/content/res/ColorStateList;

    if-nez v0, :cond_1

    iget-object v0, p0, LE1/b;->a:LE1/a;

    sget v1, Lw1/a$c;->E2:I

    invoke-static {v0, v1}, LJ1/a;->d(Landroid/view/View;I)I

    move-result v0

    invoke-static {v0}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    iput-object v0, p0, LE1/b;->j:Landroid/content/res/ColorStateList;

    :cond_1
    iget-object v0, p0, LE1/b;->a:LE1/a;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lw1/a$o;->Dl:I

    invoke-static {v0, p1, v1}, LX1/c;->a(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    move-result-object p1

    invoke-virtual {p0, p1}, LE1/b;->I(Landroid/content/res/ColorStateList;)V

    invoke-virtual {p0}, LE1/b;->c0()V

    invoke-virtual {p0}, LE1/b;->Z()V

    invoke-virtual {p0}, LE1/b;->d0()V

    iget-object p1, p0, LE1/b;->a:LE1/a;

    iget-object v0, p0, LE1/b;->c:La2/j;

    invoke-virtual {p0, v0}, LE1/b;->B(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0}, LE1/a;->setBackgroundInternal(Landroid/graphics/drawable/Drawable;)V

    iget-object p1, p0, LE1/b;->a:LE1/a;

    invoke-virtual {p1}, Landroid/view/View;->isClickable()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-virtual {p0}, LE1/b;->r()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    goto :goto_0

    :cond_2
    iget-object p1, p0, LE1/b;->d:La2/j;

    :goto_0
    iput-object p1, p0, LE1/b;->h:Landroid/graphics/drawable/Drawable;

    iget-object v0, p0, LE1/b;->a:LE1/a;

    invoke-virtual {p0, p1}, LE1/b;->B(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/view/View;->setForeground(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public F(II)V
    .locals 6

    iget-object v0, p0, LE1/b;->o:Landroid/graphics/drawable/LayerDrawable;

    if-eqz v0, :cond_2

    iget v0, p0, LE1/b;->e:I

    sub-int/2addr p1, v0

    iget v1, p0, LE1/b;->f:I

    sub-int/2addr p1, v1

    sub-int/2addr p2, v0

    sub-int/2addr p2, v1

    iget-object v0, p0, LE1/b;->a:LE1/a;

    invoke-virtual {v0}, Landroidx/cardview/widget/CardView;->getUseCompatPadding()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, LE1/b;->d()F

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    mul-float/2addr v0, v1

    float-to-double v2, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v0, v2

    sub-int/2addr p2, v0

    invoke-virtual {p0}, LE1/b;->c()F

    move-result v0

    mul-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    sub-int/2addr p1, v0

    :cond_0
    move v5, p2

    iget p2, p0, LE1/b;->e:I

    iget-object v0, p0, LE1/b;->a:LE1/a;

    invoke-static {v0}, Landroidx/core/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    move v4, p1

    move v2, p2

    goto :goto_0

    :cond_1
    move v2, p1

    move v4, p2

    :goto_0
    iget-object v0, p0, LE1/b;->o:Landroid/graphics/drawable/LayerDrawable;

    const/4 v1, 0x2

    iget v3, p0, LE1/b;->e:I

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/drawable/LayerDrawable;->setLayerInset(IIIII)V

    :cond_2
    return-void
.end method

.method public G(Z)V
    .locals 0

    iput-boolean p1, p0, LE1/b;->r:Z

    return-void
.end method

.method public H(Landroid/content/res/ColorStateList;)V
    .locals 1

    iget-object v0, p0, LE1/b;->c:La2/j;

    invoke-virtual {v0, p1}, La2/j;->n0(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public I(Landroid/content/res/ColorStateList;)V
    .locals 1
    .param p1    # Landroid/content/res/ColorStateList;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iget-object v0, p0, LE1/b;->d:La2/j;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    :cond_0
    invoke-virtual {v0, p1}, La2/j;->n0(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public J(Z)V
    .locals 0

    iput-boolean p1, p0, LE1/b;->s:Z

    return-void
.end method

.method public K(Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, LE1/b;->i:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-static {p1}, Landroidx/core/graphics/drawable/DrawableCompat;->wrap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, LE1/b;->i:Landroid/graphics/drawable/Drawable;

    iget-object v0, p0, LE1/b;->k:Landroid/content/res/ColorStateList;

    invoke-static {p1, v0}, Landroidx/core/graphics/drawable/DrawableCompat;->setTintList(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    :cond_0
    iget-object p1, p0, LE1/b;->o:Landroid/graphics/drawable/LayerDrawable;

    if-eqz p1, :cond_1

    invoke-virtual {p0}, LE1/b;->f()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iget-object v0, p0, LE1/b;->o:Landroid/graphics/drawable/LayerDrawable;

    sget v1, Lw1/a$h;->b3:I

    invoke-virtual {v0, v1, p1}, Landroid/graphics/drawable/LayerDrawable;->setDrawableByLayerId(ILandroid/graphics/drawable/Drawable;)Z

    :cond_1
    return-void
.end method

.method public L(I)V
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/Dimension;
        .end annotation
    .end param

    iput p1, p0, LE1/b;->e:I

    return-void
.end method

.method public M(I)V
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/Dimension;
        .end annotation
    .end param

    iput p1, p0, LE1/b;->f:I

    return-void
.end method

.method public N(Landroid/content/res/ColorStateList;)V
    .locals 1
    .param p1    # Landroid/content/res/ColorStateList;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, LE1/b;->k:Landroid/content/res/ColorStateList;

    iget-object v0, p0, LE1/b;->i:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    invoke-static {v0, p1}, Landroidx/core/graphics/drawable/DrawableCompat;->setTintList(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    :cond_0
    return-void
.end method

.method public O(F)V
    .locals 1

    iget-object v0, p0, LE1/b;->l:La2/o;

    invoke-virtual {v0, p1}, La2/o;->w(F)La2/o;

    move-result-object p1

    invoke-virtual {p0, p1}, LE1/b;->R(La2/o;)V

    iget-object p1, p0, LE1/b;->h:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    invoke-virtual {p0}, LE1/b;->W()Z

    move-result p1

    if-nez p1, :cond_0

    invoke-virtual {p0}, LE1/b;->V()Z

    move-result p1

    if-eqz p1, :cond_1

    :cond_0
    invoke-virtual {p0}, LE1/b;->Y()V

    :cond_1
    invoke-virtual {p0}, LE1/b;->W()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-virtual {p0}, LE1/b;->b0()V

    :cond_2
    return-void
.end method

.method public P(F)V
    .locals 1
    .param p1    # F
        .annotation build Landroidx/annotation/FloatRange;
            from = 0.0
            to = 1.0
        .end annotation
    .end param

    iget-object v0, p0, LE1/b;->c:La2/j;

    invoke-virtual {v0, p1}, La2/j;->o0(F)V

    iget-object v0, p0, LE1/b;->d:La2/j;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, La2/j;->o0(F)V

    :cond_0
    iget-object v0, p0, LE1/b;->q:La2/j;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, La2/j;->o0(F)V

    :cond_1
    return-void
.end method

.method public Q(Landroid/content/res/ColorStateList;)V
    .locals 0
    .param p1    # Landroid/content/res/ColorStateList;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, LE1/b;->j:Landroid/content/res/ColorStateList;

    invoke-virtual {p0}, LE1/b;->c0()V

    return-void
.end method

.method public R(La2/o;)V
    .locals 2
    .param p1    # La2/o;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iput-object p1, p0, LE1/b;->l:La2/o;

    iget-object v0, p0, LE1/b;->c:La2/j;

    invoke-virtual {v0, p1}, La2/j;->setShapeAppearanceModel(La2/o;)V

    iget-object v0, p0, LE1/b;->c:La2/j;

    invoke-virtual {v0}, La2/j;->d0()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, La2/j;->t0(Z)V

    iget-object v0, p0, LE1/b;->d:La2/j;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, La2/j;->setShapeAppearanceModel(La2/o;)V

    :cond_0
    iget-object v0, p0, LE1/b;->q:La2/j;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, La2/j;->setShapeAppearanceModel(La2/o;)V

    :cond_1
    iget-object v0, p0, LE1/b;->p:La2/j;

    if-eqz v0, :cond_2

    invoke-virtual {v0, p1}, La2/j;->setShapeAppearanceModel(La2/o;)V

    :cond_2
    return-void
.end method

.method public S(Landroid/content/res/ColorStateList;)V
    .locals 1

    iget-object v0, p0, LE1/b;->m:Landroid/content/res/ColorStateList;

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iput-object p1, p0, LE1/b;->m:Landroid/content/res/ColorStateList;

    invoke-virtual {p0}, LE1/b;->d0()V

    return-void
.end method

.method public T(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/Dimension;
        .end annotation
    .end param

    iget v0, p0, LE1/b;->g:I

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    iput p1, p0, LE1/b;->g:I

    invoke-virtual {p0}, LE1/b;->d0()V

    return-void
.end method

.method public U(IIII)V
    .locals 1

    iget-object v0, p0, LE1/b;->b:Landroid/graphics/Rect;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/graphics/Rect;->set(IIII)V

    invoke-virtual {p0}, LE1/b;->Y()V

    return-void
.end method

.method public final V()Z
    .locals 1

    iget-object v0, p0, LE1/b;->a:LE1/a;

    invoke-virtual {v0}, Landroidx/cardview/widget/CardView;->getPreventCornerOverlap()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, LE1/b;->e()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final W()Z
    .locals 1

    iget-object v0, p0, LE1/b;->a:LE1/a;

    invoke-virtual {v0}, Landroidx/cardview/widget/CardView;->getPreventCornerOverlap()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, LE1/b;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, LE1/b;->a:LE1/a;

    invoke-virtual {v0}, Landroidx/cardview/widget/CardView;->getUseCompatPadding()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public X()V
    .locals 2

    iget-object v0, p0, LE1/b;->h:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, LE1/b;->a:LE1/a;

    invoke-virtual {v1}, Landroid/view/View;->isClickable()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, LE1/b;->r()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    goto :goto_0

    :cond_0
    iget-object v1, p0, LE1/b;->d:La2/j;

    :goto_0
    iput-object v1, p0, LE1/b;->h:Landroid/graphics/drawable/Drawable;

    if-eq v0, v1, :cond_1

    invoke-virtual {p0, v1}, LE1/b;->a0(Landroid/graphics/drawable/Drawable;)V

    :cond_1
    return-void
.end method

.method public Y()V
    .locals 6

    invoke-virtual {p0}, LE1/b;->V()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, LE1/b;->W()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    invoke-virtual {p0}, LE1/b;->a()F

    move-result v0

    :goto_1
    invoke-virtual {p0}, LE1/b;->t()F

    move-result v1

    sub-float/2addr v0, v1

    float-to-int v0, v0

    iget-object v1, p0, LE1/b;->a:LE1/a;

    iget-object v2, p0, LE1/b;->b:Landroid/graphics/Rect;

    iget v3, v2, Landroid/graphics/Rect;->left:I

    add-int/2addr v3, v0

    iget v4, v2, Landroid/graphics/Rect;->top:I

    add-int/2addr v4, v0

    iget v5, v2, Landroid/graphics/Rect;->right:I

    add-int/2addr v5, v0

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v2, v0

    invoke-virtual {v1, v3, v4, v5, v2}, LE1/a;->i(IIII)V

    return-void
.end method

.method public Z()V
    .locals 2

    iget-object v0, p0, LE1/b;->c:La2/j;

    iget-object v1, p0, LE1/b;->a:LE1/a;

    invoke-virtual {v1}, Landroidx/cardview/widget/CardView;->getCardElevation()F

    move-result v1

    invoke-virtual {v0, v1}, La2/j;->m0(F)V

    return-void
.end method

.method public final a()F
    .locals 4

    iget-object v0, p0, LE1/b;->l:La2/o;

    invoke-virtual {v0}, La2/o;->q()La2/e;

    move-result-object v0

    iget-object v1, p0, LE1/b;->c:La2/j;

    invoke-virtual {v1}, La2/j;->R()F

    move-result v1

    invoke-virtual {p0, v0, v1}, LE1/b;->b(La2/e;F)F

    move-result v0

    iget-object v1, p0, LE1/b;->l:La2/o;

    invoke-virtual {v1}, La2/o;->s()La2/e;

    move-result-object v1

    iget-object v2, p0, LE1/b;->c:La2/j;

    invoke-virtual {v2}, La2/j;->S()F

    move-result v2

    invoke-virtual {p0, v1, v2}, LE1/b;->b(La2/e;F)F

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iget-object v1, p0, LE1/b;->l:La2/o;

    invoke-virtual {v1}, La2/o;->k()La2/e;

    move-result-object v1

    iget-object v2, p0, LE1/b;->c:La2/j;

    invoke-virtual {v2}, La2/j;->u()F

    move-result v2

    invoke-virtual {p0, v1, v2}, LE1/b;->b(La2/e;F)F

    move-result v1

    iget-object v2, p0, LE1/b;->l:La2/o;

    invoke-virtual {v2}, La2/o;->i()La2/e;

    move-result-object v2

    iget-object v3, p0, LE1/b;->c:La2/j;

    invoke-virtual {v3}, La2/j;->t()F

    move-result v3

    invoke-virtual {p0, v2, v3}, LE1/b;->b(La2/e;F)F

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    return v0
.end method

.method public final a0(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    iget-object v0, p0, LE1/b;->a:LE1/a;

    invoke-virtual {v0}, Landroid/view/View;->getForeground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    instance-of v0, v0, Landroid/graphics/drawable/InsetDrawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, LE1/b;->a:LE1/a;

    invoke-virtual {v0}, Landroid/view/View;->getForeground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/InsetDrawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/DrawableWrapper;->setDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, LE1/b;->a:LE1/a;

    invoke-virtual {p0, p1}, LE1/b;->B(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/view/View;->setForeground(Landroid/graphics/drawable/Drawable;)V

    :goto_0
    return-void
.end method

.method public final b(La2/e;F)F
    .locals 4

    instance-of v0, p1, La2/n;

    if-eqz v0, :cond_0

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    sget-wide v2, LE1/b;->v:D

    sub-double/2addr v0, v2

    float-to-double p1, p2

    mul-double/2addr v0, p1

    double-to-float p1, v0

    return p1

    :cond_0
    instance-of p1, p1, La2/f;

    if-eqz p1, :cond_1

    const/high16 p1, 0x40000000    # 2.0f

    div-float/2addr p2, p1

    return p2

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public b0()V
    .locals 2

    invoke-virtual {p0}, LE1/b;->C()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, LE1/b;->a:LE1/a;

    iget-object v1, p0, LE1/b;->c:La2/j;

    invoke-virtual {p0, v1}, LE1/b;->B(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, LE1/a;->setBackgroundInternal(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    iget-object v0, p0, LE1/b;->a:LE1/a;

    iget-object v1, p0, LE1/b;->h:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v1}, LE1/b;->B(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setForeground(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public final c()F
    .locals 2

    iget-object v0, p0, LE1/b;->a:LE1/a;

    invoke-virtual {v0}, Landroidx/cardview/widget/CardView;->getMaxCardElevation()F

    move-result v0

    invoke-virtual {p0}, LE1/b;->W()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, LE1/b;->a()F

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    add-float/2addr v0, v1

    return v0
.end method

.method public final c0()V
    .locals 2

    sget-boolean v0, LY1/b;->a:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, LE1/b;->n:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    check-cast v0, Landroid/graphics/drawable/RippleDrawable;

    iget-object v1, p0, LE1/b;->j:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/RippleDrawable;->setColor(Landroid/content/res/ColorStateList;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, LE1/b;->p:La2/j;

    if-eqz v0, :cond_1

    iget-object v1, p0, LE1/b;->j:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, v1}, La2/j;->n0(Landroid/content/res/ColorStateList;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final d()F
    .locals 2

    iget-object v0, p0, LE1/b;->a:LE1/a;

    invoke-virtual {v0}, Landroidx/cardview/widget/CardView;->getMaxCardElevation()F

    move-result v0

    const/high16 v1, 0x3fc00000    # 1.5f

    mul-float/2addr v0, v1

    invoke-virtual {p0}, LE1/b;->W()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, LE1/b;->a()F

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    add-float/2addr v0, v1

    return v0
.end method

.method public d0()V
    .locals 3

    iget-object v0, p0, LE1/b;->d:La2/j;

    iget v1, p0, LE1/b;->g:I

    int-to-float v1, v1

    iget-object v2, p0, LE1/b;->m:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, v1, v2}, La2/j;->D0(FLandroid/content/res/ColorStateList;)V

    return-void
.end method

.method public final e()Z
    .locals 1

    iget-object v0, p0, LE1/b;->c:La2/j;

    invoke-virtual {v0}, La2/j;->d0()Z

    move-result v0

    return v0
.end method

.method public final f()Landroid/graphics/drawable/Drawable;
    .locals 3
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v0, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    iget-object v1, p0, LE1/b;->i:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    sget-object v2, LE1/b;->t:[I

    invoke-virtual {v0, v2, v1}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    :cond_0
    return-object v0
.end method

.method public final g()Landroid/graphics/drawable/Drawable;
    .locals 3
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v0, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    invoke-virtual {p0}, LE1/b;->i()La2/j;

    move-result-object v1

    iput-object v1, p0, LE1/b;->p:La2/j;

    iget-object v2, p0, LE1/b;->j:Landroid/content/res/ColorStateList;

    invoke-virtual {v1, v2}, La2/j;->n0(Landroid/content/res/ColorStateList;)V

    const v1, 0x10100a7

    filled-new-array {v1}, [I

    move-result-object v1

    iget-object v2, p0, LE1/b;->p:La2/j;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    return-object v0
.end method

.method public final h()Landroid/graphics/drawable/Drawable;
    .locals 4
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    sget-boolean v0, LY1/b;->a:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, LE1/b;->i()La2/j;

    move-result-object v0

    iput-object v0, p0, LE1/b;->q:La2/j;

    new-instance v0, Landroid/graphics/drawable/RippleDrawable;

    iget-object v1, p0, LE1/b;->j:Landroid/content/res/ColorStateList;

    const/4 v2, 0x0

    iget-object v3, p0, LE1/b;->q:La2/j;

    invoke-direct {v0, v1, v2, v3}, Landroid/graphics/drawable/RippleDrawable;-><init>(Landroid/content/res/ColorStateList;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    return-object v0

    :cond_0
    invoke-virtual {p0}, LE1/b;->g()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public final i()La2/j;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v0, La2/j;

    iget-object v1, p0, LE1/b;->l:La2/o;

    invoke-direct {v0, v1}, La2/j;-><init>(La2/o;)V

    return-object v0
.end method

.method public j()V
    .locals 7
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x17
    .end annotation

    iget-object v0, p0, LE1/b;->n:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    iget v1, v0, Landroid/graphics/Rect;->bottom:I

    iget-object v2, p0, LE1/b;->n:Landroid/graphics/drawable/Drawable;

    iget v3, v0, Landroid/graphics/Rect;->left:I

    iget v4, v0, Landroid/graphics/Rect;->top:I

    iget v5, v0, Landroid/graphics/Rect;->right:I

    add-int/lit8 v6, v1, -0x1

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v2, p0, LE1/b;->n:Landroid/graphics/drawable/Drawable;

    iget v3, v0, Landroid/graphics/Rect;->left:I

    iget v4, v0, Landroid/graphics/Rect;->top:I

    iget v0, v0, Landroid/graphics/Rect;->right:I

    invoke-virtual {v2, v3, v4, v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    :cond_0
    return-void
.end method

.method public k()La2/j;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object v0, p0, LE1/b;->c:La2/j;

    return-object v0
.end method

.method public l()Landroid/content/res/ColorStateList;
    .locals 1

    iget-object v0, p0, LE1/b;->c:La2/j;

    invoke-virtual {v0}, La2/j;->y()Landroid/content/res/ColorStateList;

    move-result-object v0

    return-object v0
.end method

.method public m()Landroid/content/res/ColorStateList;
    .locals 1

    iget-object v0, p0, LE1/b;->d:La2/j;

    invoke-virtual {v0}, La2/j;->y()Landroid/content/res/ColorStateList;

    move-result-object v0

    return-object v0
.end method

.method public n()Landroid/graphics/drawable/Drawable;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object v0, p0, LE1/b;->i:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public o()I
    .locals 1
    .annotation build Landroidx/annotation/Dimension;
    .end annotation

    iget v0, p0, LE1/b;->e:I

    return v0
.end method

.method public p()I
    .locals 1
    .annotation build Landroidx/annotation/Dimension;
    .end annotation

    iget v0, p0, LE1/b;->f:I

    return v0
.end method

.method public q()Landroid/content/res/ColorStateList;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object v0, p0, LE1/b;->k:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method public final r()Landroid/graphics/drawable/Drawable;
    .locals 7
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    const/4 v0, 0x2

    iget-object v1, p0, LE1/b;->n:Landroid/graphics/drawable/Drawable;

    if-nez v1, :cond_0

    invoke-virtual {p0}, LE1/b;->h()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, LE1/b;->n:Landroid/graphics/drawable/Drawable;

    :cond_0
    iget-object v1, p0, LE1/b;->o:Landroid/graphics/drawable/LayerDrawable;

    if-nez v1, :cond_1

    invoke-virtual {p0}, LE1/b;->f()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    new-instance v2, Landroid/graphics/drawable/LayerDrawable;

    iget-object v3, p0, LE1/b;->n:Landroid/graphics/drawable/Drawable;

    iget-object v4, p0, LE1/b;->d:La2/j;

    const/4 v5, 0x3

    new-array v5, v5, [Landroid/graphics/drawable/Drawable;

    const/4 v6, 0x0

    aput-object v3, v5, v6

    const/4 v3, 0x1

    aput-object v4, v5, v3

    aput-object v1, v5, v0

    invoke-direct {v2, v5}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    iput-object v2, p0, LE1/b;->o:Landroid/graphics/drawable/LayerDrawable;

    sget v1, Lw1/a$h;->b3:I

    invoke-virtual {v2, v0, v1}, Landroid/graphics/drawable/LayerDrawable;->setId(II)V

    :cond_1
    iget-object v0, p0, LE1/b;->o:Landroid/graphics/drawable/LayerDrawable;

    return-object v0
.end method

.method public s()F
    .locals 1

    iget-object v0, p0, LE1/b;->c:La2/j;

    invoke-virtual {v0}, La2/j;->R()F

    move-result v0

    return v0
.end method

.method public final t()F
    .locals 4

    iget-object v0, p0, LE1/b;->a:LE1/a;

    invoke-virtual {v0}, Landroidx/cardview/widget/CardView;->getPreventCornerOverlap()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, LE1/b;->a:LE1/a;

    invoke-virtual {v0}, Landroidx/cardview/widget/CardView;->getUseCompatPadding()Z

    move-result v0

    if-eqz v0, :cond_0

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    sget-wide v2, LE1/b;->v:D

    sub-double/2addr v0, v2

    iget-object v2, p0, LE1/b;->a:LE1/a;

    invoke-virtual {v2}, LE1/a;->getCardViewRadius()F

    move-result v2

    float-to-double v2, v2

    mul-double/2addr v0, v2

    double-to-float v0, v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public u()F
    .locals 1
    .annotation build Landroidx/annotation/FloatRange;
        from = 0.0
        to = 1.0
    .end annotation

    iget-object v0, p0, LE1/b;->c:La2/j;

    invoke-virtual {v0}, La2/j;->z()F

    move-result v0

    return v0
.end method

.method public v()Landroid/content/res/ColorStateList;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object v0, p0, LE1/b;->j:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method public w()La2/o;
    .locals 1

    iget-object v0, p0, LE1/b;->l:La2/o;

    return-object v0
.end method

.method public x()I
    .locals 1
    .annotation build Landroidx/annotation/ColorInt;
    .end annotation

    iget-object v0, p0, LE1/b;->m:Landroid/content/res/ColorStateList;

    if-nez v0, :cond_0

    const/4 v0, -0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v0

    :goto_0
    return v0
.end method

.method public y()Landroid/content/res/ColorStateList;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object v0, p0, LE1/b;->m:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method public z()I
    .locals 1
    .annotation build Landroidx/annotation/Dimension;
    .end annotation

    iget v0, p0, LE1/b;->g:I

    return v0
.end method
