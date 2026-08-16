.class public final LV1/e;
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
.field public static final l:I = 0x4

.field public static final m:I = 0x1518

.field public static final n:I = 0x29b

.field public static final o:I = 0x29b

.field public static final p:I = 0x14d

.field public static final q:I = 0x14d

.field public static final r:[I

.field public static final s:[I

.field public static final t:[I

.field public static final u:I = -0x14

.field public static final v:I = 0xfa

.field public static final w:I = 0x5f0

.field public static final x:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property<",
            "LV1/e;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field public static final y:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property<",
            "LV1/e;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public d:Landroid/animation/ObjectAnimator;

.field public e:Landroid/animation/ObjectAnimator;

.field public final f:Landroidx/interpolator/view/animation/FastOutSlowInInterpolator;

.field public final g:LV1/c;

.field public h:I

.field public i:F

.field public j:F

.field public k:Landroidx/vectordrawable/graphics/drawable/Animatable2Compat$AnimationCallback;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/16 v0, 0xa8c

    const/16 v1, 0xfd2

    const/4 v2, 0x0

    const/16 v3, 0x546

    filled-new-array {v2, v3, v0, v1}, [I

    move-result-object v0

    sput-object v0, LV1/e;->r:[I

    const/16 v0, 0xd27

    const/16 v1, 0x126d

    const/16 v2, 0x29b

    const/16 v3, 0x7e1

    filled-new-array {v2, v3, v0, v1}, [I

    move-result-object v0

    sput-object v0, LV1/e;->s:[I

    const/16 v0, 0xe74

    const/16 v1, 0x13ba

    const/16 v2, 0x3e8

    const/16 v3, 0x92e

    filled-new-array {v2, v3, v0, v1}, [I

    move-result-object v0

    sput-object v0, LV1/e;->t:[I

    new-instance v0, LV1/e$c;

    const-string v1, "animationFraction"

    const-class v2, Ljava/lang/Float;

    invoke-direct {v0, v2, v1}, LV1/e$c;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v0, LV1/e;->x:Landroid/util/Property;

    new-instance v0, LV1/e$d;

    const-string v1, "completeEndFraction"

    invoke-direct {v0, v2, v1}, LV1/e$d;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v0, LV1/e;->y:Landroid/util/Property;

    return-void
.end method

.method public constructor <init>(LV1/g;)V
    .locals 1
    .param p1    # LV1/g;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, 0x1

    invoke-direct {p0, v0}, LV1/k;-><init>(I)V

    const/4 v0, 0x0

    iput v0, p0, LV1/e;->h:I

    const/4 v0, 0x0

    iput-object v0, p0, LV1/e;->k:Landroidx/vectordrawable/graphics/drawable/Animatable2Compat$AnimationCallback;

    iput-object p1, p0, LV1/e;->g:LV1/c;

    new-instance p1, Landroidx/interpolator/view/animation/FastOutSlowInInterpolator;

    invoke-direct {p1}, Landroidx/interpolator/view/animation/FastOutSlowInInterpolator;-><init>()V

    iput-object p1, p0, LV1/e;->f:Landroidx/interpolator/view/animation/FastOutSlowInInterpolator;

    return-void
.end method

.method public static synthetic i(LV1/e;)I
    .locals 0

    iget p0, p0, LV1/e;->h:I

    return p0
.end method

.method public static synthetic j(LV1/e;I)I
    .locals 0

    iput p1, p0, LV1/e;->h:I

    return p1
.end method

.method public static synthetic k(LV1/e;)LV1/c;
    .locals 0

    iget-object p0, p0, LV1/e;->g:LV1/c;

    return-object p0
.end method

.method public static synthetic l(LV1/e;)F
    .locals 0

    invoke-virtual {p0}, LV1/e;->o()F

    move-result p0

    return p0
.end method

.method public static synthetic m(LV1/e;)F
    .locals 0

    invoke-virtual {p0}, LV1/e;->p()F

    move-result p0

    return p0
.end method

.method public static synthetic n(LV1/e;F)V
    .locals 0

    invoke-virtual {p0, p1}, LV1/e;->u(F)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    iget-object v0, p0, LV1/e;->d:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    :cond_0
    return-void
.end method

.method public c()V
    .locals 0

    invoke-virtual {p0}, LV1/e;->s()V

    return-void
.end method

.method public d(Landroidx/vectordrawable/graphics/drawable/Animatable2Compat$AnimationCallback;)V
    .locals 0
    .param p1    # Landroidx/vectordrawable/graphics/drawable/Animatable2Compat$AnimationCallback;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iput-object p1, p0, LV1/e;->k:Landroidx/vectordrawable/graphics/drawable/Animatable2Compat$AnimationCallback;

    return-void
.end method

.method public f()V
    .locals 1

    iget-object v0, p0, LV1/e;->e:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/Animator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, LV1/k;->a:LV1/l;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, LV1/e;->e:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, LV1/e;->a()V

    :goto_0
    return-void
.end method

.method public g()V
    .locals 1

    invoke-virtual {p0}, LV1/e;->q()V

    invoke-virtual {p0}, LV1/e;->s()V

    iget-object v0, p0, LV1/e;->d:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    return-void
.end method

.method public h()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, LV1/e;->k:Landroidx/vectordrawable/graphics/drawable/Animatable2Compat$AnimationCallback;

    return-void
.end method

.method public final o()F
    .locals 1

    iget v0, p0, LV1/e;->i:F

    return v0
.end method

.method public final p()F
    .locals 1

    iget v0, p0, LV1/e;->j:F

    return v0
.end method

.method public final q()V
    .locals 4

    const/4 v0, 0x2

    iget-object v1, p0, LV1/e;->d:Landroid/animation/ObjectAnimator;

    if-nez v1, :cond_0

    sget-object v1, LV1/e;->x:Landroid/util/Property;

    new-array v2, v0, [F

    fill-array-data v2, :array_0

    invoke-static {p0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    iput-object v1, p0, LV1/e;->d:Landroid/animation/ObjectAnimator;

    const-wide/16 v2, 0x1518

    invoke-virtual {v1, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    iget-object v1, p0, LV1/e;->d:Landroid/animation/ObjectAnimator;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v1, p0, LV1/e;->d:Landroid/animation/ObjectAnimator;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    iget-object v1, p0, LV1/e;->d:Landroid/animation/ObjectAnimator;

    new-instance v2, LV1/e$a;

    invoke-direct {v2, p0}, LV1/e$a;-><init>(LV1/e;)V

    invoke-virtual {v1, v2}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    :cond_0
    iget-object v1, p0, LV1/e;->e:Landroid/animation/ObjectAnimator;

    if-nez v1, :cond_1

    sget-object v1, LV1/e;->y:Landroid/util/Property;

    new-array v0, v0, [F

    fill-array-data v0, :array_1

    invoke-static {p0, v1, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, LV1/e;->e:Landroid/animation/ObjectAnimator;

    const-wide/16 v1, 0x14d

    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    iget-object v0, p0, LV1/e;->e:Landroid/animation/ObjectAnimator;

    iget-object v1, p0, LV1/e;->f:Landroidx/interpolator/view/animation/FastOutSlowInInterpolator;

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v0, p0, LV1/e;->e:Landroid/animation/ObjectAnimator;

    new-instance v1, LV1/e$b;

    invoke-direct {v1, p0}, LV1/e$b;-><init>(LV1/e;)V

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    :cond_1
    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public final r(I)V
    .locals 5

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    const/4 v2, 0x4

    if-ge v1, v2, :cond_1

    sget-object v2, LV1/e;->t:[I

    aget v2, v2, v1

    const/16 v3, 0x14d

    invoke-virtual {p0, p1, v2, v3}, LV1/k;->b(III)F

    move-result v2

    const/4 v3, 0x0

    cmpl-float v3, v2, v3

    if-ltz v3, :cond_0

    const/high16 v3, 0x3f800000    # 1.0f

    cmpg-float v3, v2, v3

    if-gtz v3, :cond_0

    iget p1, p0, LV1/e;->h:I

    add-int/2addr v1, p1

    iget-object p1, p0, LV1/e;->g:LV1/c;

    iget-object p1, p1, LV1/c;->c:[I

    array-length v3, p1

    rem-int/2addr v1, v3

    add-int/lit8 v3, v1, 0x1

    array-length v4, p1

    rem-int/2addr v3, v4

    aget p1, p1, v1

    iget-object v1, p0, LV1/k;->a:LV1/l;

    invoke-virtual {v1}, LV1/l;->getAlpha()I

    move-result v1

    invoke-static {p1, v1}, LJ1/a;->a(II)I

    move-result p1

    iget-object v1, p0, LV1/e;->g:LV1/c;

    iget-object v1, v1, LV1/c;->c:[I

    aget v1, v1, v3

    iget-object v3, p0, LV1/k;->a:LV1/l;

    invoke-virtual {v3}, LV1/l;->getAlpha()I

    move-result v3

    invoke-static {v1, v3}, LJ1/a;->a(II)I

    move-result v1

    iget-object v3, p0, LV1/e;->f:Landroidx/interpolator/view/animation/FastOutSlowInInterpolator;

    invoke-virtual {v3, v2}, Landroidx/interpolator/view/animation/FastOutSlowInInterpolator;->getInterpolation(F)F

    move-result v2

    iget-object v3, p0, LV1/k;->c:[I

    invoke-static {}, Lx1/c;->b()Lx1/c;

    move-result-object v4

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v4, v2, p1, v1}, Lx1/c;->a(FLjava/lang/Integer;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    aput p1, v3, v0

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method public s()V
    .locals 4
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    const/4 v0, 0x0

    iput v0, p0, LV1/e;->h:I

    iget-object v1, p0, LV1/k;->c:[I

    iget-object v2, p0, LV1/e;->g:LV1/c;

    iget-object v2, v2, LV1/c;->c:[I

    aget v2, v2, v0

    iget-object v3, p0, LV1/k;->a:LV1/l;

    invoke-virtual {v3}, LV1/l;->getAlpha()I

    move-result v3

    invoke-static {v2, v3}, LJ1/a;->a(II)I

    move-result v2

    aput v2, v1, v0

    const/4 v0, 0x0

    iput v0, p0, LV1/e;->j:F

    return-void
.end method

.method public t(F)V
    .locals 1
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    iput p1, p0, LV1/e;->i:F

    const v0, 0x45a8c000    # 5400.0f

    mul-float/2addr p1, v0

    float-to-int p1, p1

    invoke-virtual {p0, p1}, LV1/e;->v(I)V

    invoke-virtual {p0, p1}, LV1/e;->r(I)V

    iget-object p1, p0, LV1/k;->a:LV1/l;

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method

.method public final u(F)V
    .locals 0

    iput p1, p0, LV1/e;->j:F

    return-void
.end method

.method public final v(I)V
    .locals 8

    iget-object v0, p0, LV1/k;->b:[F

    iget v1, p0, LV1/e;->i:F

    const/high16 v2, 0x44be0000    # 1520.0f

    mul-float v3, v1, v2

    const/high16 v4, -0x3e600000    # -20.0f

    add-float/2addr v3, v4

    const/4 v4, 0x0

    aput v3, v0, v4

    mul-float/2addr v1, v2

    const/4 v2, 0x1

    aput v1, v0, v2

    move v0, v4

    :goto_0
    const/4 v1, 0x4

    if-ge v0, v1, :cond_0

    sget-object v1, LV1/e;->r:[I

    aget v1, v1, v0

    const/16 v3, 0x29b

    invoke-virtual {p0, p1, v1, v3}, LV1/k;->b(III)F

    move-result v1

    iget-object v5, p0, LV1/k;->b:[F

    aget v6, v5, v2

    iget-object v7, p0, LV1/e;->f:Landroidx/interpolator/view/animation/FastOutSlowInInterpolator;

    invoke-virtual {v7, v1}, Landroidx/interpolator/view/animation/FastOutSlowInInterpolator;->getInterpolation(F)F

    move-result v1

    const/high16 v7, 0x437a0000    # 250.0f

    mul-float/2addr v1, v7

    add-float/2addr v6, v1

    aput v6, v5, v2

    sget-object v1, LV1/e;->s:[I

    aget v1, v1, v0

    invoke-virtual {p0, p1, v1, v3}, LV1/k;->b(III)F

    move-result v1

    iget-object v3, p0, LV1/k;->b:[F

    aget v5, v3, v4

    iget-object v6, p0, LV1/e;->f:Landroidx/interpolator/view/animation/FastOutSlowInInterpolator;

    invoke-virtual {v6, v1}, Landroidx/interpolator/view/animation/FastOutSlowInInterpolator;->getInterpolation(F)F

    move-result v1

    mul-float/2addr v1, v7

    add-float/2addr v5, v1

    aput v5, v3, v4

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object p1, p0, LV1/k;->b:[F

    aget v0, p1, v4

    aget v1, p1, v2

    sub-float v3, v1, v0

    iget v5, p0, LV1/e;->j:F

    mul-float/2addr v3, v5

    add-float/2addr v0, v3

    aput v0, p1, v4

    const/high16 v3, 0x43b40000    # 360.0f

    div-float/2addr v0, v3

    aput v0, p1, v4

    div-float/2addr v1, v3

    aput v1, p1, v2

    return-void
.end method
