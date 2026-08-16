.class public LT1/f;
.super Lcom/google/android/material/internal/n;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LT1/f$d;,
        LT1/f$c;
    }
.end annotation


# static fields
.field public static final n:[I

.field public static final o:[I

.field public static final p:I

.field public static final q:I = 0x1


# instance fields
.field public final g:Lcom/google/android/material/internal/h;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final h:Lcom/google/android/material/internal/i;

.field public i:LT1/f$c;

.field public final j:I

.field public final k:[I

.field public l:Landroid/view/MenuInflater;

.field public m:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const v0, 0x10100a0

    filled-new-array {v0}, [I

    move-result-object v0

    sput-object v0, LT1/f;->n:[I

    const v0, -0x101009e

    filled-new-array {v0}, [I

    move-result-object v0

    sput-object v0, LT1/f;->o:[I

    sget v0, Lw1/a$n;->ya:I

    sput v0, LT1/f;->p:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, LT1/f;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 2
    sget v0, Lw1/a$c;->jb:I

    invoke-direct {p0, p1, p2, v0}, LT1/f;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 11
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 3
    sget v6, LT1/f;->p:I

    invoke-static {p1, p2, p3, v6}, Lh2/a;->c(Landroid/content/Context;Landroid/util/AttributeSet;II)Landroid/content/Context;

    move-result-object p1

    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/material/internal/n;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 4
    new-instance p1, Lcom/google/android/material/internal/i;

    invoke-direct {p1}, Lcom/google/android/material/internal/i;-><init>()V

    iput-object p1, p0, LT1/f;->h:Lcom/google/android/material/internal/i;

    const/4 v0, 0x2

    .line 5
    new-array v0, v0, [I

    iput-object v0, p0, LT1/f;->k:[I

    .line 6
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v7

    .line 7
    new-instance v8, Lcom/google/android/material/internal/h;

    invoke-direct {v8, v7}, Lcom/google/android/material/internal/h;-><init>(Landroid/content/Context;)V

    iput-object v8, p0, LT1/f;->g:Lcom/google/android/material/internal/h;

    .line 8
    sget-object v2, Lw1/a$o;->oo:[I

    const/4 v9, 0x0

    new-array v5, v9, [I

    move-object v0, v7

    move-object v1, p2

    move v3, p3

    move v4, v6

    .line 9
    invoke-static/range {v0 .. v5}, Lcom/google/android/material/internal/s;->k(Landroid/content/Context;Landroid/util/AttributeSet;[III[I)Landroidx/appcompat/widget/TintTypedArray;

    move-result-object v0

    .line 10
    sget v1, Lw1/a$o;->po:I

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/TintTypedArray;->hasValue(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 11
    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/TintTypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-static {p0, v1}, Landroidx/core/view/ViewCompat;->setBackground(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 12
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    instance-of v1, v1, Landroid/graphics/drawable/ColorDrawable;

    if-eqz v1, :cond_3

    .line 13
    :cond_1
    invoke-static {v7, p2, p3, v6}, La2/o;->e(Landroid/content/Context;Landroid/util/AttributeSet;II)La2/o$b;

    move-result-object p2

    invoke-virtual {p2}, La2/o$b;->m()La2/o;

    move-result-object p2

    .line 14
    invoke-virtual {p0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p3

    .line 15
    new-instance v1, La2/j;

    invoke-direct {v1, p2}, La2/j;-><init>(La2/o;)V

    .line 16
    instance-of p2, p3, Landroid/graphics/drawable/ColorDrawable;

    if-eqz p2, :cond_2

    .line 17
    check-cast p3, Landroid/graphics/drawable/ColorDrawable;

    .line 18
    invoke-virtual {p3}, Landroid/graphics/drawable/ColorDrawable;->getColor()I

    move-result p2

    invoke-static {p2}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p2

    .line 19
    invoke-virtual {v1, p2}, La2/j;->n0(Landroid/content/res/ColorStateList;)V

    .line 20
    :cond_2
    invoke-virtual {v1, v7}, La2/j;->Y(Landroid/content/Context;)V

    .line 21
    invoke-static {p0, v1}, Landroidx/core/view/ViewCompat;->setBackground(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 22
    :cond_3
    sget p2, Lw1/a$o;->so:I

    invoke-virtual {v0, p2}, Landroidx/appcompat/widget/TintTypedArray;->hasValue(I)Z

    move-result p3

    if-eqz p3, :cond_4

    .line 23
    invoke-virtual {v0, p2, v9}, Landroidx/appcompat/widget/TintTypedArray;->getDimensionPixelSize(II)I

    move-result p2

    int-to-float p2, p2

    invoke-virtual {p0, p2}, LT1/f;->setElevation(F)V

    .line 24
    :cond_4
    sget p2, Lw1/a$o;->qo:I

    invoke-virtual {v0, p2, v9}, Landroidx/appcompat/widget/TintTypedArray;->getBoolean(IZ)Z

    move-result p2

    invoke-virtual {p0, p2}, Landroid/view/View;->setFitsSystemWindows(Z)V

    .line 25
    sget p2, Lw1/a$o;->ro:I

    invoke-virtual {v0, p2, v9}, Landroidx/appcompat/widget/TintTypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, LT1/f;->j:I

    .line 26
    sget p2, Lw1/a$o;->Mo:I

    invoke-virtual {v0, p2}, Landroidx/appcompat/widget/TintTypedArray;->hasValue(I)Z

    move-result p3

    const/4 v1, 0x0

    if-eqz p3, :cond_5

    .line 27
    invoke-virtual {v0, p2}, Landroidx/appcompat/widget/TintTypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object p2

    goto :goto_0

    :cond_5
    move-object p2, v1

    .line 28
    :goto_0
    sget p3, Lw1/a$o;->No:I

    invoke-virtual {v0, p3}, Landroidx/appcompat/widget/TintTypedArray;->hasValue(I)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 29
    invoke-virtual {v0, p3, v9}, Landroidx/appcompat/widget/TintTypedArray;->getResourceId(II)I

    move-result p3

    goto :goto_1

    :cond_6
    move p3, v9

    :goto_1
    const v2, 0x1010038

    if-nez p3, :cond_7

    if-nez p2, :cond_7

    .line 30
    invoke-virtual {p0, v2}, LT1/f;->e(I)Landroid/content/res/ColorStateList;

    move-result-object p2

    .line 31
    :cond_7
    sget v3, Lw1/a$o;->yo:I

    invoke-virtual {v0, v3}, Landroidx/appcompat/widget/TintTypedArray;->hasValue(I)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 32
    invoke-virtual {v0, v3}, Landroidx/appcompat/widget/TintTypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    goto :goto_2

    .line 33
    :cond_8
    invoke-virtual {p0, v2}, LT1/f;->e(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    .line 34
    :goto_2
    sget v3, Lw1/a$o;->Ho:I

    invoke-virtual {v0, v3}, Landroidx/appcompat/widget/TintTypedArray;->hasValue(I)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 35
    invoke-virtual {v0, v3, v9}, Landroidx/appcompat/widget/TintTypedArray;->getResourceId(II)I

    move-result v3

    goto :goto_3

    :cond_9
    move v3, v9

    .line 36
    :goto_3
    sget v4, Lw1/a$o;->xo:I

    invoke-virtual {v0, v4}, Landroidx/appcompat/widget/TintTypedArray;->hasValue(I)Z

    move-result v5

    if-eqz v5, :cond_a

    .line 37
    invoke-virtual {v0, v4, v9}, Landroidx/appcompat/widget/TintTypedArray;->getDimensionPixelSize(II)I

    move-result v4

    invoke-virtual {p0, v4}, LT1/f;->setItemIconSize(I)V

    .line 38
    :cond_a
    sget v4, Lw1/a$o;->Io:I

    invoke-virtual {v0, v4}, Landroidx/appcompat/widget/TintTypedArray;->hasValue(I)Z

    move-result v5

    if-eqz v5, :cond_b

    .line 39
    invoke-virtual {v0, v4}, Landroidx/appcompat/widget/TintTypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    :cond_b
    if-nez v3, :cond_c

    if-nez v1, :cond_c

    const v1, 0x1010036

    .line 40
    invoke-virtual {p0, v1}, LT1/f;->e(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    .line 41
    :cond_c
    sget v4, Lw1/a$o;->uo:I

    invoke-virtual {v0, v4}, Landroidx/appcompat/widget/TintTypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    if-nez v4, :cond_d

    .line 42
    invoke-virtual {p0, v0}, LT1/f;->h(Landroidx/appcompat/widget/TintTypedArray;)Z

    move-result v5

    if-eqz v5, :cond_d

    .line 43
    invoke-virtual {p0, v0}, LT1/f;->f(Landroidx/appcompat/widget/TintTypedArray;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 44
    :cond_d
    sget v5, Lw1/a$o;->vo:I

    invoke-virtual {v0, v5}, Landroidx/appcompat/widget/TintTypedArray;->hasValue(I)Z

    move-result v6

    if-eqz v6, :cond_e

    .line 45
    invoke-virtual {v0, v5, v9}, Landroidx/appcompat/widget/TintTypedArray;->getDimensionPixelSize(II)I

    move-result v5

    .line 46
    invoke-virtual {p1, v5}, Lcom/google/android/material/internal/i;->t(I)V

    .line 47
    :cond_e
    sget v5, Lw1/a$o;->wo:I

    .line 48
    invoke-virtual {v0, v5, v9}, Landroidx/appcompat/widget/TintTypedArray;->getDimensionPixelSize(II)I

    move-result v5

    .line 49
    sget v6, Lw1/a$o;->zo:I

    const/4 v10, 0x1

    invoke-virtual {v0, v6, v10}, Landroidx/appcompat/widget/TintTypedArray;->getInt(II)I

    move-result v6

    invoke-virtual {p0, v6}, LT1/f;->setItemMaxLines(I)V

    .line 50
    new-instance v6, LT1/f$a;

    invoke-direct {v6, p0}, LT1/f$a;-><init>(LT1/f;)V

    invoke-virtual {v8, v6}, Landroidx/appcompat/view/menu/MenuBuilder;->setCallback(Landroidx/appcompat/view/menu/MenuBuilder$Callback;)V

    .line 51
    invoke-virtual {p1, v10}, Lcom/google/android/material/internal/i;->r(I)V

    .line 52
    invoke-virtual {p1, v7, v8}, Lcom/google/android/material/internal/i;->initForMenu(Landroid/content/Context;Landroidx/appcompat/view/menu/MenuBuilder;)V

    if-eqz p3, :cond_f

    .line 53
    invoke-virtual {p1, p3}, Lcom/google/android/material/internal/i;->C(I)V

    .line 54
    :cond_f
    invoke-virtual {p1, p2}, Lcom/google/android/material/internal/i;->B(Landroid/content/res/ColorStateList;)V

    .line 55
    invoke-virtual {p1, v2}, Lcom/google/android/material/internal/i;->w(Landroid/content/res/ColorStateList;)V

    .line 56
    invoke-virtual {p0}, Landroid/view/View;->getOverScrollMode()I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/google/android/material/internal/i;->A(I)V

    if-eqz v3, :cond_10

    .line 57
    invoke-virtual {p1, v3}, Lcom/google/android/material/internal/i;->y(I)V

    .line 58
    :cond_10
    invoke-virtual {p1, v1}, Lcom/google/android/material/internal/i;->z(Landroid/content/res/ColorStateList;)V

    .line 59
    invoke-virtual {p1, v4}, Lcom/google/android/material/internal/i;->s(Landroid/graphics/drawable/Drawable;)V

    .line 60
    invoke-virtual {p1, v5}, Lcom/google/android/material/internal/i;->u(I)V

    .line 61
    invoke-virtual {v8, p1}, Landroidx/appcompat/view/menu/MenuBuilder;->addMenuPresenter(Landroidx/appcompat/view/menu/MenuPresenter;)V

    .line 62
    invoke-virtual {p1, p0}, Lcom/google/android/material/internal/i;->getMenuView(Landroid/view/ViewGroup;)Landroidx/appcompat/view/menu/MenuView;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 63
    sget p1, Lw1/a$o;->Jo:I

    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/TintTypedArray;->hasValue(I)Z

    move-result p2

    if-eqz p2, :cond_11

    .line 64
    invoke-virtual {v0, p1, v9}, Landroidx/appcompat/widget/TintTypedArray;->getResourceId(II)I

    move-result p1

    invoke-virtual {p0, p1}, LT1/f;->j(I)V

    .line 65
    :cond_11
    sget p1, Lw1/a$o;->to:I

    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/TintTypedArray;->hasValue(I)Z

    move-result p2

    if-eqz p2, :cond_12

    .line 66
    invoke-virtual {v0, p1, v9}, Landroidx/appcompat/widget/TintTypedArray;->getResourceId(II)I

    move-result p1

    invoke-virtual {p0, p1}, LT1/f;->i(I)Landroid/view/View;

    .line 67
    :cond_12
    invoke-virtual {v0}, Landroidx/appcompat/widget/TintTypedArray;->recycle()V

    .line 68
    invoke-virtual {p0}, LT1/f;->l()V

    return-void
.end method

.method public static synthetic b(LT1/f;)[I
    .locals 0

    iget-object p0, p0, LT1/f;->k:[I

    return-object p0
.end method

.method public static synthetic c(LT1/f;)Lcom/google/android/material/internal/i;
    .locals 0

    iget-object p0, p0, LT1/f;->h:Lcom/google/android/material/internal/i;

    return-object p0
.end method

.method private getMenuInflater()Landroid/view/MenuInflater;
    .locals 2

    iget-object v0, p0, LT1/f;->l:Landroid/view/MenuInflater;

    if-nez v0, :cond_0

    new-instance v0, Landroidx/appcompat/view/SupportMenuInflater;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/appcompat/view/SupportMenuInflater;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, LT1/f;->l:Landroid/view/MenuInflater;

    :cond_0
    iget-object v0, p0, LT1/f;->l:Landroid/view/MenuInflater;

    return-object v0
.end method


# virtual methods
.method public a(Landroidx/core/view/WindowInsetsCompat;)V
    .locals 1
    .param p1    # Landroidx/core/view/WindowInsetsCompat;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    iget-object v0, p0, LT1/f;->h:Lcom/google/android/material/internal/i;

    invoke-virtual {v0, p1}, Lcom/google/android/material/internal/i;->c(Landroidx/core/view/WindowInsetsCompat;)V

    return-void
.end method

.method public d(Landroid/view/View;)V
    .locals 1
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, LT1/f;->h:Lcom/google/android/material/internal/i;

    invoke-virtual {v0, p1}, Lcom/google/android/material/internal/i;->b(Landroid/view/View;)V

    return-void
.end method

.method public final e(I)Landroid/content/res/ColorStateList;
    .locals 6
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, p1, v0, v2}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    move-result p1

    const/4 v1, 0x0

    if-nez p1, :cond_0

    return-object v1

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    iget v3, v0, Landroid/util/TypedValue;->resourceId:I

    invoke-static {p1, v3}, Landroidx/appcompat/content/res/AppCompatResources;->getColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object p1

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v3

    sget v4, Landroidx/appcompat/R$attr;->colorPrimary:I

    invoke-virtual {v3, v4, v0, v2}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    move-result v2

    if-nez v2, :cond_1

    return-object v1

    :cond_1
    iget v0, v0, Landroid/util/TypedValue;->data:I

    invoke-virtual {p1}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v1

    new-instance v2, Landroid/content/res/ColorStateList;

    sget-object v3, LT1/f;->o:[I

    sget-object v4, LT1/f;->n:[I

    sget-object v5, Landroid/widget/FrameLayout;->EMPTY_STATE_SET:[I

    filled-new-array {v3, v4, v5}, [[I

    move-result-object v4

    invoke-virtual {p1, v3, v1}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result p1

    filled-new-array {p1, v0, v1}, [I

    move-result-object p1

    invoke-direct {v2, v4, p1}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    return-object v2
.end method

.method public final f(Landroidx/appcompat/widget/TintTypedArray;)Landroid/graphics/drawable/Drawable;
    .locals 9
    .param p1    # Landroidx/appcompat/widget/TintTypedArray;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    sget v0, Lw1/a$o;->Ao:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroidx/appcompat/widget/TintTypedArray;->getResourceId(II)I

    move-result v0

    sget v2, Lw1/a$o;->Bo:I

    invoke-virtual {p1, v2, v1}, Landroidx/appcompat/widget/TintTypedArray;->getResourceId(II)I

    move-result v2

    new-instance v4, La2/j;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v0, v2}, La2/o;->b(Landroid/content/Context;II)La2/o$b;

    move-result-object v0

    invoke-virtual {v0}, La2/o$b;->m()La2/o;

    move-result-object v0

    invoke-direct {v4, v0}, La2/j;-><init>(La2/o;)V

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v2, Lw1/a$o;->Co:I

    invoke-static {v0, p1, v2}, LX1/c;->b(Landroid/content/Context;Landroidx/appcompat/widget/TintTypedArray;I)Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-virtual {v4, v0}, La2/j;->n0(Landroid/content/res/ColorStateList;)V

    sget v0, Lw1/a$o;->Fo:I

    invoke-virtual {p1, v0, v1}, Landroidx/appcompat/widget/TintTypedArray;->getDimensionPixelSize(II)I

    move-result v5

    sget v0, Lw1/a$o;->Go:I

    invoke-virtual {p1, v0, v1}, Landroidx/appcompat/widget/TintTypedArray;->getDimensionPixelSize(II)I

    move-result v6

    sget v0, Lw1/a$o;->Eo:I

    invoke-virtual {p1, v0, v1}, Landroidx/appcompat/widget/TintTypedArray;->getDimensionPixelSize(II)I

    move-result v7

    sget v0, Lw1/a$o;->Do:I

    invoke-virtual {p1, v0, v1}, Landroidx/appcompat/widget/TintTypedArray;->getDimensionPixelSize(II)I

    move-result v8

    new-instance p1, Landroid/graphics/drawable/InsetDrawable;

    move-object v3, p1

    invoke-direct/range {v3 .. v8}, Landroid/graphics/drawable/InsetDrawable;-><init>(Landroid/graphics/drawable/Drawable;IIII)V

    return-object p1
.end method

.method public g(I)Landroid/view/View;
    .locals 1

    iget-object v0, p0, LT1/f;->h:Lcom/google/android/material/internal/i;

    invoke-virtual {v0, p1}, Lcom/google/android/material/internal/i;->f(I)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public getCheckedItem()Landroid/view/MenuItem;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object v0, p0, LT1/f;->h:Lcom/google/android/material/internal/i;

    invoke-virtual {v0}, Lcom/google/android/material/internal/i;->d()Landroidx/appcompat/view/menu/MenuItemImpl;

    move-result-object v0

    return-object v0
.end method

.method public getHeaderCount()I
    .locals 1

    iget-object v0, p0, LT1/f;->h:Lcom/google/android/material/internal/i;

    invoke-virtual {v0}, Lcom/google/android/material/internal/i;->e()I

    move-result v0

    return v0
.end method

.method public getItemBackground()Landroid/graphics/drawable/Drawable;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object v0, p0, LT1/f;->h:Lcom/google/android/material/internal/i;

    invoke-virtual {v0}, Lcom/google/android/material/internal/i;->g()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public getItemHorizontalPadding()I
    .locals 1
    .annotation build Landroidx/annotation/Dimension;
    .end annotation

    iget-object v0, p0, LT1/f;->h:Lcom/google/android/material/internal/i;

    invoke-virtual {v0}, Lcom/google/android/material/internal/i;->h()I

    move-result v0

    return v0
.end method

.method public getItemIconPadding()I
    .locals 1
    .annotation build Landroidx/annotation/Dimension;
    .end annotation

    iget-object v0, p0, LT1/f;->h:Lcom/google/android/material/internal/i;

    invoke-virtual {v0}, Lcom/google/android/material/internal/i;->i()I

    move-result v0

    return v0
.end method

.method public getItemIconTintList()Landroid/content/res/ColorStateList;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object v0, p0, LT1/f;->h:Lcom/google/android/material/internal/i;

    invoke-virtual {v0}, Lcom/google/android/material/internal/i;->l()Landroid/content/res/ColorStateList;

    move-result-object v0

    return-object v0
.end method

.method public getItemMaxLines()I
    .locals 1

    iget-object v0, p0, LT1/f;->h:Lcom/google/android/material/internal/i;

    invoke-virtual {v0}, Lcom/google/android/material/internal/i;->j()I

    move-result v0

    return v0
.end method

.method public getItemTextColor()Landroid/content/res/ColorStateList;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object v0, p0, LT1/f;->h:Lcom/google/android/material/internal/i;

    invoke-virtual {v0}, Lcom/google/android/material/internal/i;->k()Landroid/content/res/ColorStateList;

    move-result-object v0

    return-object v0
.end method

.method public getMenu()Landroid/view/Menu;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object v0, p0, LT1/f;->g:Lcom/google/android/material/internal/h;

    return-object v0
.end method

.method public final h(Landroidx/appcompat/widget/TintTypedArray;)Z
    .locals 1
    .param p1    # Landroidx/appcompat/widget/TintTypedArray;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    sget v0, Lw1/a$o;->Ao:I

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/TintTypedArray;->hasValue(I)Z

    move-result v0

    if-nez v0, :cond_1

    sget v0, Lw1/a$o;->Bo:I

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/TintTypedArray;->hasValue(I)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method public i(I)Landroid/view/View;
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/LayoutRes;
        .end annotation
    .end param

    iget-object v0, p0, LT1/f;->h:Lcom/google/android/material/internal/i;

    invoke-virtual {v0, p1}, Lcom/google/android/material/internal/i;->m(I)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public j(I)V
    .locals 2

    iget-object v0, p0, LT1/f;->h:Lcom/google/android/material/internal/i;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/material/internal/i;->D(Z)V

    invoke-direct {p0}, LT1/f;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    iget-object v1, p0, LT1/f;->g:Lcom/google/android/material/internal/h;

    invoke-virtual {v0, p1, v1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    iget-object p1, p0, LT1/f;->h:Lcom/google/android/material/internal/i;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/google/android/material/internal/i;->D(Z)V

    iget-object p1, p0, LT1/f;->h:Lcom/google/android/material/internal/i;

    invoke-virtual {p1, v0}, Lcom/google/android/material/internal/i;->updateMenuView(Z)V

    return-void
.end method

.method public k(Landroid/view/View;)V
    .locals 1
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, LT1/f;->h:Lcom/google/android/material/internal/i;

    invoke-virtual {v0, p1}, Lcom/google/android/material/internal/i;->o(Landroid/view/View;)V

    return-void
.end method

.method public final l()V
    .locals 2

    new-instance v0, LT1/f$b;

    invoke-direct {v0, p0}, LT1/f$b;-><init>(LT1/f;)V

    iput-object v0, p0, LT1/f;->m:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {p0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, LT1/f;->m:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    return-void
.end method

.method public onAttachedToWindow()V
    .locals 0

    invoke-super {p0}, Lcom/google/android/material/internal/n;->onAttachedToWindow()V

    invoke-static {p0}, La2/k;->e(Landroid/view/View;)V

    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 2

    invoke-super {p0}, Lcom/google/android/material/internal/n;->onDetachedFromWindow()V

    invoke-virtual {p0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, LT1/f;->m:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    return-void
.end method

.method public onMeasure(II)V
    .locals 3

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    const/high16 v1, -0x80000000

    const/high16 v2, 0x40000000    # 2.0f

    if-eq v0, v1, :cond_1

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget p1, p0, LT1/f;->j:I

    invoke-static {p1, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    goto :goto_0

    :cond_1
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    iget v0, p0, LT1/f;->j:I

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    invoke-static {p1, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    :goto_0
    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 1

    instance-of v0, p1, LT1/f$d;

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Landroid/view/View;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    return-void

    :cond_0
    check-cast p1, LT1/f$d;

    invoke-virtual {p1}, Landroidx/customview/view/AbsSavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/view/View;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    iget-object v0, p0, LT1/f;->g:Lcom/google/android/material/internal/h;

    iget-object p1, p1, LT1/f$d;->b:Landroid/os/Bundle;

    invoke-virtual {v0, p1}, Landroidx/appcompat/view/menu/MenuBuilder;->restorePresenterStates(Landroid/os/Bundle;)V

    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    invoke-super {p0}, Landroid/view/View;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    new-instance v1, LT1/f$d;

    invoke-direct {v1, v0}, LT1/f$d;-><init>(Landroid/os/Parcelable;)V

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, v1, LT1/f$d;->b:Landroid/os/Bundle;

    iget-object v2, p0, LT1/f;->g:Lcom/google/android/material/internal/h;

    invoke-virtual {v2, v0}, Landroidx/appcompat/view/menu/MenuBuilder;->savePresenterStates(Landroid/os/Bundle;)V

    return-object v1
.end method

.method public setCheckedItem(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/IdRes;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, LT1/f;->g:Lcom/google/android/material/internal/h;

    invoke-virtual {v0, p1}, Landroidx/appcompat/view/menu/MenuBuilder;->findItem(I)Landroid/view/MenuItem;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 2
    iget-object v0, p0, LT1/f;->h:Lcom/google/android/material/internal/i;

    check-cast p1, Landroidx/appcompat/view/menu/MenuItemImpl;

    invoke-virtual {v0, p1}, Lcom/google/android/material/internal/i;->q(Landroidx/appcompat/view/menu/MenuItemImpl;)V

    :cond_0
    return-void
.end method

.method public setCheckedItem(Landroid/view/MenuItem;)V
    .locals 1
    .param p1    # Landroid/view/MenuItem;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 3
    iget-object v0, p0, LT1/f;->g:Lcom/google/android/material/internal/h;

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result p1

    invoke-virtual {v0, p1}, Landroidx/appcompat/view/menu/MenuBuilder;->findItem(I)Landroid/view/MenuItem;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 4
    iget-object v0, p0, LT1/f;->h:Lcom/google/android/material/internal/i;

    check-cast p1, Landroidx/appcompat/view/menu/MenuItemImpl;

    invoke-virtual {v0, p1}, Lcom/google/android/material/internal/i;->q(Landroidx/appcompat/view/menu/MenuItemImpl;)V

    return-void

    .line 5
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Called setCheckedItem(MenuItem) with an item that is not in the current menu."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setElevation(F)V
    .locals 0

    invoke-super {p0, p1}, Landroid/view/View;->setElevation(F)V

    invoke-static {p0, p1}, La2/k;->d(Landroid/view/View;F)V

    return-void
.end method

.method public setItemBackground(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iget-object v0, p0, LT1/f;->h:Lcom/google/android/material/internal/i;

    invoke-virtual {v0, p1}, Lcom/google/android/material/internal/i;->s(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setItemBackgroundResource(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/DrawableRes;
        .end annotation
    .end param

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0, p1}, LT1/f;->setItemBackground(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setItemHorizontalPadding(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/Dimension;
        .end annotation
    .end param

    iget-object v0, p0, LT1/f;->h:Lcom/google/android/material/internal/i;

    invoke-virtual {v0, p1}, Lcom/google/android/material/internal/i;->t(I)V

    return-void
.end method

.method public setItemHorizontalPaddingResource(I)V
    .locals 2
    .param p1    # I
        .annotation build Landroidx/annotation/DimenRes;
        .end annotation
    .end param

    iget-object v0, p0, LT1/f;->h:Lcom/google/android/material/internal/i;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/google/android/material/internal/i;->t(I)V

    return-void
.end method

.method public setItemIconPadding(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/Dimension;
        .end annotation
    .end param

    iget-object v0, p0, LT1/f;->h:Lcom/google/android/material/internal/i;

    invoke-virtual {v0, p1}, Lcom/google/android/material/internal/i;->u(I)V

    return-void
.end method

.method public setItemIconPaddingResource(I)V
    .locals 2

    iget-object v0, p0, LT1/f;->h:Lcom/google/android/material/internal/i;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/google/android/material/internal/i;->u(I)V

    return-void
.end method

.method public setItemIconSize(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/Dimension;
        .end annotation
    .end param

    iget-object v0, p0, LT1/f;->h:Lcom/google/android/material/internal/i;

    invoke-virtual {v0, p1}, Lcom/google/android/material/internal/i;->v(I)V

    return-void
.end method

.method public setItemIconTintList(Landroid/content/res/ColorStateList;)V
    .locals 1
    .param p1    # Landroid/content/res/ColorStateList;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iget-object v0, p0, LT1/f;->h:Lcom/google/android/material/internal/i;

    invoke-virtual {v0, p1}, Lcom/google/android/material/internal/i;->w(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public setItemMaxLines(I)V
    .locals 1

    iget-object v0, p0, LT1/f;->h:Lcom/google/android/material/internal/i;

    invoke-virtual {v0, p1}, Lcom/google/android/material/internal/i;->x(I)V

    return-void
.end method

.method public setItemTextAppearance(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/StyleRes;
        .end annotation
    .end param

    iget-object v0, p0, LT1/f;->h:Lcom/google/android/material/internal/i;

    invoke-virtual {v0, p1}, Lcom/google/android/material/internal/i;->y(I)V

    return-void
.end method

.method public setItemTextColor(Landroid/content/res/ColorStateList;)V
    .locals 1
    .param p1    # Landroid/content/res/ColorStateList;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iget-object v0, p0, LT1/f;->h:Lcom/google/android/material/internal/i;

    invoke-virtual {v0, p1}, Lcom/google/android/material/internal/i;->z(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public setNavigationItemSelectedListener(LT1/f$c;)V
    .locals 0
    .param p1    # LT1/f$c;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, LT1/f;->i:LT1/f$c;

    return-void
.end method

.method public setOverScrollMode(I)V
    .locals 1

    invoke-super {p0, p1}, Landroid/view/View;->setOverScrollMode(I)V

    iget-object v0, p0, LT1/f;->h:Lcom/google/android/material/internal/i;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/google/android/material/internal/i;->A(I)V

    :cond_0
    return-void
.end method
