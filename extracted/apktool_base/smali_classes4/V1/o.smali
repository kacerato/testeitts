.class public final LV1/o;
.super LV1/k;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "LV1/k<",
        "Landroid/animation/ObjectAnimator;",
        ">;"
    }
.end annotation


# static fields
.field public static final l:I = 0x708

.field public static final m:[I

.field public static final n:[I

.field public static final o:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property<",
            "LV1/o;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public d:Landroid/animation/ObjectAnimator;

.field public final e:[Landroid/view/animation/Interpolator;

.field public final f:LV1/c;

.field public g:I

.field public h:Z

.field public i:F

.field public j:Z

.field public k:Landroidx/vectordrawable/graphics/drawable/Animatable2Compat$AnimationCallback;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/16 v0, 0x352

    const/16 v1, 0x2ee

    const/16 v2, 0x215

    const/16 v3, 0x237

    filled-new-array {v2, v3, v0, v1}, [I

    move-result-object v0

    sput-object v0, LV1/o;->m:[I

    const/16 v0, 0x14d

    const/4 v1, 0x0

    const/16 v2, 0x4f3

    const/16 v3, 0x3e8

    filled-new-array {v2, v3, v0, v1}, [I

    move-result-object v0

    sput-object v0, LV1/o;->n:[I

    new-instance v0, LV1/o$b;

    const-class v1, Ljava/lang/Float;

    const-string v2, "animationFraction"

    invoke-direct {v0, v1, v2}, LV1/o$b;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v0, LV1/o;->o:Landroid/util/Property;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;LV1/q;)V
    .locals 5
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # LV1/q;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, 0x2

    invoke-direct {p0, v0}, LV1/k;-><init>(I)V

    const/4 v1, 0x0

    iput v1, p0, LV1/o;->g:I

    const/4 v2, 0x0

    iput-object v2, p0, LV1/o;->k:Landroidx/vectordrawable/graphics/drawable/Animatable2Compat$AnimationCallback;

    iput-object p2, p0, LV1/o;->f:LV1/c;

    sget p2, Lw1/a$b;->d:I

    invoke-static {p1, p2}, Landroidx/vectordrawable/graphics/drawable/AnimationUtilsCompat;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object p2

    sget v2, Lw1/a$b;->e:I

    invoke-static {p1, v2}, Landroidx/vectordrawable/graphics/drawable/AnimationUtilsCompat;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v2

    sget v3, Lw1/a$b;->f:I

    invoke-static {p1, v3}, Landroidx/vectordrawable/graphics/drawable/AnimationUtilsCompat;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v3

    sget v4, Lw1/a$b;->g:I

    invoke-static {p1, v4}, Landroidx/vectordrawable/graphics/drawable/AnimationUtilsCompat;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object p1

    const/4 v4, 0x4

    new-array v4, v4, [Landroid/view/animation/Interpolator;

    aput-object p2, v4, v1

    const/4 p2, 0x1

    aput-object v2, v4, p2

    aput-object v3, v4, v0

    const/4 p2, 0x3

    aput-object p1, v4, p2

    iput-object v4, p0, LV1/o;->e:[Landroid/view/animation/Interpolator;

    return-void
.end method

.method public static synthetic i(LV1/o;)I
    .locals 0

    iget p0, p0, LV1/o;->g:I

    return p0
.end method

.method public static synthetic j(LV1/o;I)I
    .locals 0

    iput p1, p0, LV1/o;->g:I

    return p1
.end method

.method public static synthetic k(LV1/o;)LV1/c;
    .locals 0

    iget-object p0, p0, LV1/o;->f:LV1/c;

    return-object p0
.end method

.method public static synthetic l(LV1/o;Z)Z
    .locals 0

    iput-boolean p1, p0, LV1/o;->h:Z

    return p1
.end method

.method public static synthetic m(LV1/o;)Z
    .locals 0

    iget-boolean p0, p0, LV1/o;->j:Z

    return p0
.end method

.method public static synthetic n(LV1/o;Z)Z
    .locals 0

    iput-boolean p1, p0, LV1/o;->j:Z

    return p1
.end method

.method public static synthetic o(LV1/o;)Landroid/animation/ObjectAnimator;
    .locals 0

    iget-object p0, p0, LV1/o;->d:Landroid/animation/ObjectAnimator;

    return-object p0
.end method

.method public static synthetic p(LV1/o;)F
    .locals 0

    invoke-direct {p0}, LV1/o;->q()F

    move-result p0

    return p0
.end method

.method private q()F
    .locals 1

    iget v0, p0, LV1/o;->i:F

    return v0
.end method

.method private r()V
    .locals 3

    iget-object v0, p0, LV1/o;->d:Landroid/animation/ObjectAnimator;

    if-nez v0, :cond_0

    sget-object v0, LV1/o;->o:Landroid/util/Property;

    const/4 v1, 0x2

    new-array v1, v1, [F

    fill-array-data v1, :array_0

    invoke-static {p0, v0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, LV1/o;->d:Landroid/animation/ObjectAnimator;

    const-wide/16 v1, 0x708

    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    iget-object v0, p0, LV1/o;->d:Landroid/animation/ObjectAnimator;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v0, p0, LV1/o;->d:Landroid/animation/ObjectAnimator;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    iget-object v0, p0, LV1/o;->d:Landroid/animation/ObjectAnimator;

    new-instance v1, LV1/o$a;

    invoke-direct {v1, p0}, LV1/o$a;-><init>(LV1/o;)V

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    :cond_0
    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private s()V
    .locals 3

    iget-boolean v0, p0, LV1/o;->h:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, LV1/k;->c:[I

    iget-object v1, p0, LV1/o;->f:LV1/c;

    iget-object v1, v1, LV1/c;->c:[I

    iget v2, p0, LV1/o;->g:I

    aget v1, v1, v2

    iget-object v2, p0, LV1/k;->a:LV1/l;

    invoke-virtual {v2}, LV1/l;->getAlpha()I

    move-result v2

    invoke-static {v1, v2}, LJ1/a;->a(II)I

    move-result v1

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([II)V

    const/4 v0, 0x0

    iput-boolean v0, p0, LV1/o;->h:Z

    :cond_0
    return-void
.end method

.method private v(I)V
    .locals 4

    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x4

    if-ge v0, v1, :cond_0

    sget-object v1, LV1/o;->n:[I

    aget v1, v1, v0

    sget-object v2, LV1/o;->m:[I

    aget v2, v2, v0

    invoke-virtual {p0, p1, v1, v2}, LV1/k;->b(III)F

    move-result v1

    iget-object v2, p0, LV1/o;->e:[Landroid/view/animation/Interpolator;

    aget-object v2, v2, v0

    invoke-interface {v2, v1}, Landroid/animation/TimeInterpolator;->getInterpolation(F)F

    move-result v1

    iget-object v2, p0, LV1/k;->b:[F

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-static {v3, v1}, Ljava/lang/Math;->min(FF)F

    move-result v1

    const/4 v3, 0x0

    invoke-static {v3, v1}, Ljava/lang/Math;->max(FF)F

    move-result v1

    aput v1, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    iget-object v0, p0, LV1/o;->d:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    :cond_0
    return-void
.end method

.method public c()V
    .locals 0

    invoke-virtual {p0}, LV1/o;->t()V

    return-void
.end method

.method public d(Landroidx/vectordrawable/graphics/drawable/Animatable2Compat$AnimationCallback;)V
    .locals 0
    .param p1    # Landroidx/vectordrawable/graphics/drawable/Animatable2Compat$AnimationCallback;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iput-object p1, p0, LV1/o;->k:Landroidx/vectordrawable/graphics/drawable/Animatable2Compat$AnimationCallback;

    return-void
.end method

.method public f()V
    .locals 2

    iget-object v0, p0, LV1/k;->a:LV1/l;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, LV1/o;->j:Z

    iget-object v0, p0, LV1/o;->d:Landroid/animation/ObjectAnimator;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, LV1/o;->a()V

    :goto_0
    return-void
.end method

.method public g()V
    .locals 1

    invoke-direct {p0}, LV1/o;->r()V

    invoke-virtual {p0}, LV1/o;->t()V

    iget-object v0, p0, LV1/o;->d:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    return-void
.end method

.method public h()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, LV1/o;->k:Landroidx/vectordrawable/graphics/drawable/Animatable2Compat$AnimationCallback;

    return-void
.end method

.method public t()V
    .locals 3
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    const/4 v0, 0x0

    iput v0, p0, LV1/o;->g:I

    iget-object v1, p0, LV1/o;->f:LV1/c;

    iget-object v1, v1, LV1/c;->c:[I

    aget v1, v1, v0

    iget-object v2, p0, LV1/k;->a:LV1/l;

    invoke-virtual {v2}, LV1/l;->getAlpha()I

    move-result v2

    invoke-static {v1, v2}, LJ1/a;->a(II)I

    move-result v1

    iget-object v2, p0, LV1/k;->c:[I

    aput v1, v2, v0

    const/4 v0, 0x1

    aput v1, v2, v0

    return-void
.end method

.method public u(F)V
    .locals 1
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    iput p1, p0, LV1/o;->i:F

    const/high16 v0, 0x44e10000    # 1800.0f

    mul-float/2addr p1, v0

    float-to-int p1, p1

    invoke-direct {p0, p1}, LV1/o;->v(I)V

    invoke-direct {p0}, LV1/o;->s()V

    iget-object p1, p0, LV1/k;->a:LV1/l;

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method
