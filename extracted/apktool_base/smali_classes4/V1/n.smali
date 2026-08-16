.class public final LV1/n;
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
.field public static final j:I = 0x29b

.field public static final k:I = 0x14d

.field public static final l:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property<",
            "LV1/n;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public d:Landroid/animation/ObjectAnimator;

.field public e:Landroidx/interpolator/view/animation/FastOutSlowInInterpolator;

.field public final f:LV1/c;

.field public g:I

.field public h:Z

.field public i:F


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, LV1/n$b;

    const-class v1, Ljava/lang/Float;

    const-string v2, "animationFraction"

    invoke-direct {v0, v1, v2}, LV1/n$b;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v0, LV1/n;->l:Landroid/util/Property;

    return-void
.end method

.method public constructor <init>(LV1/q;)V
    .locals 1
    .param p1    # LV1/q;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, 0x3

    invoke-direct {p0, v0}, LV1/k;-><init>(I)V

    const/4 v0, 0x1

    iput v0, p0, LV1/n;->g:I

    iput-object p1, p0, LV1/n;->f:LV1/c;

    new-instance p1, Landroidx/interpolator/view/animation/FastOutSlowInInterpolator;

    invoke-direct {p1}, Landroidx/interpolator/view/animation/FastOutSlowInInterpolator;-><init>()V

    iput-object p1, p0, LV1/n;->e:Landroidx/interpolator/view/animation/FastOutSlowInInterpolator;

    return-void
.end method

.method public static synthetic i(LV1/n;)I
    .locals 0

    iget p0, p0, LV1/n;->g:I

    return p0
.end method

.method public static synthetic j(LV1/n;I)I
    .locals 0

    iput p1, p0, LV1/n;->g:I

    return p1
.end method

.method public static synthetic k(LV1/n;)LV1/c;
    .locals 0

    iget-object p0, p0, LV1/n;->f:LV1/c;

    return-object p0
.end method

.method public static synthetic l(LV1/n;Z)Z
    .locals 0

    iput-boolean p1, p0, LV1/n;->h:Z

    return p1
.end method

.method public static synthetic m(LV1/n;)F
    .locals 0

    invoke-direct {p0}, LV1/n;->n()F

    move-result p0

    return p0
.end method

.method private n()F
    .locals 1

    iget v0, p0, LV1/n;->i:F

    return v0
.end method

.method private o()V
    .locals 3

    iget-object v0, p0, LV1/n;->d:Landroid/animation/ObjectAnimator;

    if-nez v0, :cond_0

    sget-object v0, LV1/n;->l:Landroid/util/Property;

    const/4 v1, 0x2

    new-array v1, v1, [F

    fill-array-data v1, :array_0

    invoke-static {p0, v0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, LV1/n;->d:Landroid/animation/ObjectAnimator;

    const-wide/16 v1, 0x14d

    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    iget-object v0, p0, LV1/n;->d:Landroid/animation/ObjectAnimator;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v0, p0, LV1/n;->d:Landroid/animation/ObjectAnimator;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    iget-object v0, p0, LV1/n;->d:Landroid/animation/ObjectAnimator;

    new-instance v1, LV1/n$a;

    invoke-direct {v1, p0}, LV1/n$a;-><init>(LV1/n;)V

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    :cond_0
    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private s(I)V
    .locals 3

    iget-object v0, p0, LV1/k;->b:[F

    const/4 v1, 0x0

    const/4 v2, 0x0

    aput v1, v0, v2

    const/16 v0, 0x29b

    invoke-virtual {p0, p1, v2, v0}, LV1/k;->b(III)F

    move-result p1

    iget-object v0, p0, LV1/k;->b:[F

    iget-object v1, p0, LV1/n;->e:Landroidx/interpolator/view/animation/FastOutSlowInInterpolator;

    invoke-virtual {v1, p1}, Landroidx/interpolator/view/animation/FastOutSlowInInterpolator;->getInterpolation(F)F

    move-result v1

    const/4 v2, 0x2

    aput v1, v0, v2

    const/4 v2, 0x1

    aput v1, v0, v2

    const v0, 0x3eff9dbf

    add-float/2addr p1, v0

    iget-object v0, p0, LV1/k;->b:[F

    iget-object v1, p0, LV1/n;->e:Landroidx/interpolator/view/animation/FastOutSlowInInterpolator;

    invoke-virtual {v1, p1}, Landroidx/interpolator/view/animation/FastOutSlowInInterpolator;->getInterpolation(F)F

    move-result p1

    const/4 v1, 0x4

    aput p1, v0, v1

    const/4 v1, 0x3

    aput p1, v0, v1

    iget-object p1, p0, LV1/k;->b:[F

    const/4 v0, 0x5

    const/high16 v1, 0x3f800000    # 1.0f

    aput v1, p1, v0

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    iget-object v0, p0, LV1/n;->d:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    :cond_0
    return-void
.end method

.method public c()V
    .locals 0

    invoke-virtual {p0}, LV1/n;->q()V

    return-void
.end method

.method public d(Landroidx/vectordrawable/graphics/drawable/Animatable2Compat$AnimationCallback;)V
    .locals 0
    .param p1    # Landroidx/vectordrawable/graphics/drawable/Animatable2Compat$AnimationCallback;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    return-void
.end method

.method public f()V
    .locals 0

    return-void
.end method

.method public g()V
    .locals 1

    invoke-direct {p0}, LV1/n;->o()V

    invoke-virtual {p0}, LV1/n;->q()V

    iget-object v0, p0, LV1/n;->d:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    return-void
.end method

.method public h()V
    .locals 0

    return-void
.end method

.method public final p()V
    .locals 4

    iget-boolean v0, p0, LV1/n;->h:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, LV1/k;->b:[F

    const/4 v1, 0x3

    aget v0, v0, v1

    const/high16 v1, 0x3f800000    # 1.0f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    iget-object v0, p0, LV1/k;->c:[I

    const/4 v1, 0x2

    const/4 v2, 0x1

    aget v3, v0, v2

    aput v3, v0, v1

    const/4 v1, 0x0

    aget v3, v0, v1

    aput v3, v0, v2

    iget-object v2, p0, LV1/n;->f:LV1/c;

    iget-object v2, v2, LV1/c;->c:[I

    iget v3, p0, LV1/n;->g:I

    aget v2, v2, v3

    iget-object v3, p0, LV1/k;->a:LV1/l;

    invoke-virtual {v3}, LV1/l;->getAlpha()I

    move-result v3

    invoke-static {v2, v3}, LJ1/a;->a(II)I

    move-result v2

    aput v2, v0, v1

    iput-boolean v1, p0, LV1/n;->h:Z

    :cond_0
    return-void
.end method

.method public q()V
    .locals 3
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    const/4 v0, 0x1

    iput-boolean v0, p0, LV1/n;->h:Z

    iput v0, p0, LV1/n;->g:I

    iget-object v0, p0, LV1/k;->c:[I

    iget-object v1, p0, LV1/n;->f:LV1/c;

    iget-object v1, v1, LV1/c;->c:[I

    const/4 v2, 0x0

    aget v1, v1, v2

    iget-object v2, p0, LV1/k;->a:LV1/l;

    invoke-virtual {v2}, LV1/l;->getAlpha()I

    move-result v2

    invoke-static {v1, v2}, LJ1/a;->a(II)I

    move-result v1

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([II)V

    return-void
.end method

.method public r(F)V
    .locals 1
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    iput p1, p0, LV1/n;->i:F

    const v0, 0x43a68000    # 333.0f

    mul-float/2addr p1, v0

    float-to-int p1, p1

    invoke-direct {p0, p1}, LV1/n;->s(I)V

    invoke-virtual {p0}, LV1/n;->p()V

    iget-object p1, p0, LV1/k;->a:LV1/l;

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method
