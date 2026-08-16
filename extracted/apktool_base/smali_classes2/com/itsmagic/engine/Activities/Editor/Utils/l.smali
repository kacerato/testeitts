.class public Lcom/itsmagic/engine/Activities/Editor/Utils/l;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/itsmagic/engine/Activities/Editor/Utils/l$a;,
        Lcom/itsmagic/engine/Activities/Editor/Utils/l$b;
    }
.end annotation


# instance fields
.field public a:I

.field public b:Lcom/itsmagic/engine/Activities/Editor/Utils/l$a;

.field public c:Lcom/itsmagic/engine/Activities/Editor/Utils/l$b;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x1f4

    .line 2
    iput v0, p0, Lcom/itsmagic/engine/Activities/Editor/Utils/l;->a:I

    .line 3
    sget-object v0, Lcom/itsmagic/engine/Activities/Editor/Utils/l$a;->Linear:Lcom/itsmagic/engine/Activities/Editor/Utils/l$a;

    iput-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Utils/l;->b:Lcom/itsmagic/engine/Activities/Editor/Utils/l$a;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "globalDuration"
        }
    .end annotation

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    iput p1, p0, Lcom/itsmagic/engine/Activities/Editor/Utils/l;->a:I

    .line 6
    sget-object p1, Lcom/itsmagic/engine/Activities/Editor/Utils/l$a;->Linear:Lcom/itsmagic/engine/Activities/Editor/Utils/l$a;

    iput-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/Utils/l;->b:Lcom/itsmagic/engine/Activities/Editor/Utils/l$a;

    return-void
.end method

.method public constructor <init>(ILcom/itsmagic/engine/Activities/Editor/Utils/l$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "globalDuration",
            "interpolator"
        }
    .end annotation

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput p1, p0, Lcom/itsmagic/engine/Activities/Editor/Utils/l;->a:I

    .line 12
    iput-object p2, p0, Lcom/itsmagic/engine/Activities/Editor/Utils/l;->b:Lcom/itsmagic/engine/Activities/Editor/Utils/l$a;

    return-void
.end method

.method public constructor <init>(Lcom/itsmagic/engine/Activities/Editor/Utils/l$a;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "interpolator"
        }
    .end annotation

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x1f4

    .line 8
    iput v0, p0, Lcom/itsmagic/engine/Activities/Editor/Utils/l;->a:I

    .line 9
    iput-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/Utils/l;->b:Lcom/itsmagic/engine/Activities/Editor/Utils/l$a;

    return-void
.end method

.method public static synthetic a(Lcom/itsmagic/engine/Activities/Editor/Utils/l;Landroid/view/View;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/itsmagic/engine/Activities/Editor/Utils/l;->d(Landroid/view/View;Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic b(Lcom/itsmagic/engine/Activities/Editor/Utils/l;Landroid/view/View;Landroid/widget/ScrollView;FLandroid/animation/ValueAnimator;)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/itsmagic/engine/Activities/Editor/Utils/l;->c(Landroid/view/View;Landroid/widget/ScrollView;FLandroid/animation/ValueAnimator;)V

    return-void
.end method


# virtual methods
.method public final synthetic c(Landroid/view/View;Landroid/widget/ScrollView;FLandroid/animation/ValueAnimator;)V
    .locals 2

    invoke-virtual {p4}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/view/View;->getScrollY()I

    move-result v1

    invoke-virtual {p4}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/lang/Integer;

    invoke-virtual {p4}, Ljava/lang/Integer;->intValue()I

    move-result p4

    int-to-float p4, p4

    mul-float/2addr p4, p3

    float-to-int p3, p4

    add-int/2addr v1, p3

    const/4 p3, 0x0

    invoke-virtual {p2, p3, v1}, Landroid/widget/ScrollView;->scrollTo(II)V

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->requestLayout()V

    iget-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/Utils/l;->c:Lcom/itsmagic/engine/Activities/Editor/Utils/l$b;

    if-eqz p1, :cond_1

    invoke-interface {p1, v0}, Lcom/itsmagic/engine/Activities/Editor/Utils/l$b;->a(I)V

    :cond_1
    return-void
.end method

.method public final synthetic d(Landroid/view/View;Landroid/animation/ValueAnimator;)V
    .locals 1

    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iput p2, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-virtual {p1}, Landroid/view/View;->requestLayout()V

    iget-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/Utils/l;->c:Lcom/itsmagic/engine/Activities/Editor/Utils/l$b;

    if-eqz p1, :cond_0

    invoke-interface {p1, p2}, Lcom/itsmagic/engine/Activities/Editor/Utils/l$b;->a(I)V

    :cond_0
    return-void
.end method

.method public e(Landroid/view/View;II)V
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "view",
            "from",
            "to"
        }
    .end annotation

    iget v4, p0, Lcom/itsmagic/engine/Activities/Editor/Utils/l;->a:I

    const/4 v5, 0x0

    const/high16 v6, 0x3f800000    # 1.0f

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    invoke-virtual/range {v0 .. v6}, Lcom/itsmagic/engine/Activities/Editor/Utils/l;->g(Landroid/view/View;IIILandroid/widget/ScrollView;F)V

    return-void
.end method

.method public f(Landroid/view/View;III)V
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "view",
            "from",
            "to",
            "duration"
        }
    .end annotation

    const/4 v5, 0x0

    const/high16 v6, 0x3f800000    # 1.0f

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v6}, Lcom/itsmagic/engine/Activities/Editor/Utils/l;->g(Landroid/view/View;IIILandroid/widget/ScrollView;F)V

    return-void
.end method

.method public g(Landroid/view/View;IIILandroid/widget/ScrollView;F)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "view",
            "from",
            "to",
            "duration",
            "scrollView",
            "mult"
        }
    .end annotation

    filled-new-array {p2, p3}, [I

    move-result-object p2

    invoke-static {p2}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object p2

    int-to-long p3, p4

    invoke-virtual {p2, p3, p4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    move-result-object p2

    new-instance p3, Lcom/itsmagic/engine/Activities/Editor/Utils/k;

    invoke-direct {p3, p0, p1, p5, p6}, Lcom/itsmagic/engine/Activities/Editor/Utils/k;-><init>(Lcom/itsmagic/engine/Activities/Editor/Utils/l;Landroid/view/View;Landroid/widget/ScrollView;F)V

    invoke-virtual {p2, p3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-instance p1, Landroid/animation/AnimatorSet;

    invoke-direct {p1}, Landroid/animation/AnimatorSet;-><init>()V

    invoke-virtual {p1, p2}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    iget-object p2, p0, Lcom/itsmagic/engine/Activities/Editor/Utils/l;->b:Lcom/itsmagic/engine/Activities/Editor/Utils/l$a;

    sget-object p3, Lcom/itsmagic/engine/Activities/Editor/Utils/l$a;->Linear:Lcom/itsmagic/engine/Activities/Editor/Utils/l$a;

    if-ne p2, p3, :cond_0

    new-instance p2, Landroid/view/animation/LinearInterpolator;

    invoke-direct {p2}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {p1, p2}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    goto :goto_0

    :cond_0
    sget-object p3, Lcom/itsmagic/engine/Activities/Editor/Utils/l$a;->Accelerate:Lcom/itsmagic/engine/Activities/Editor/Utils/l$a;

    if-ne p2, p3, :cond_1

    new-instance p2, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {p2}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {p1, p2}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    goto :goto_0

    :cond_1
    sget-object p3, Lcom/itsmagic/engine/Activities/Editor/Utils/l$a;->Bounce:Lcom/itsmagic/engine/Activities/Editor/Utils/l$a;

    if-ne p2, p3, :cond_2

    new-instance p2, Landroid/view/animation/BounceInterpolator;

    invoke-direct {p2}, Landroid/view/animation/BounceInterpolator;-><init>()V

    invoke-virtual {p1, p2}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    goto :goto_0

    :cond_2
    sget-object p3, Lcom/itsmagic/engine/Activities/Editor/Utils/l$a;->Anticipate:Lcom/itsmagic/engine/Activities/Editor/Utils/l$a;

    if-ne p2, p3, :cond_3

    new-instance p2, Landroid/view/animation/AnticipateInterpolator;

    invoke-direct {p2}, Landroid/view/animation/AnticipateInterpolator;-><init>()V

    invoke-virtual {p1, p2}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    goto :goto_0

    :cond_3
    sget-object p3, Lcom/itsmagic/engine/Activities/Editor/Utils/l$a;->AccelerateDecelerate:Lcom/itsmagic/engine/Activities/Editor/Utils/l$a;

    if-ne p2, p3, :cond_4

    new-instance p2, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {p2}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {p1, p2}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    goto :goto_0

    :cond_4
    sget-object p3, Lcom/itsmagic/engine/Activities/Editor/Utils/l$a;->Overshoot:Lcom/itsmagic/engine/Activities/Editor/Utils/l$a;

    if-ne p2, p3, :cond_5

    new-instance p2, Landroid/view/animation/OvershootInterpolator;

    invoke-direct {p2}, Landroid/view/animation/OvershootInterpolator;-><init>()V

    invoke-virtual {p1, p2}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    goto :goto_0

    :cond_5
    sget-object p3, Lcom/itsmagic/engine/Activities/Editor/Utils/l$a;->AnticipateOvershoot:Lcom/itsmagic/engine/Activities/Editor/Utils/l$a;

    if-ne p2, p3, :cond_6

    new-instance p2, Landroid/view/animation/AnticipateOvershootInterpolator;

    invoke-direct {p2}, Landroid/view/animation/AnticipateOvershootInterpolator;-><init>()V

    invoke-virtual {p1, p2}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    :cond_6
    :goto_0
    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->start()V

    return-void
.end method

.method public h(Landroid/view/View;IILandroid/widget/ScrollView;)V
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "view",
            "from",
            "to",
            "scrollView"
        }
    .end annotation

    iget v4, p0, Lcom/itsmagic/engine/Activities/Editor/Utils/l;->a:I

    const/high16 v6, 0x3f800000    # 1.0f

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v6}, Lcom/itsmagic/engine/Activities/Editor/Utils/l;->g(Landroid/view/View;IIILandroid/widget/ScrollView;F)V

    return-void
.end method

.method public i(Landroid/view/View;IILandroid/widget/ScrollView;F)V
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "view",
            "from",
            "to",
            "scrollView",
            "mult"
        }
    .end annotation

    iget v4, p0, Lcom/itsmagic/engine/Activities/Editor/Utils/l;->a:I

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v5, p4

    move v6, p5

    invoke-virtual/range {v0 .. v6}, Lcom/itsmagic/engine/Activities/Editor/Utils/l;->g(Landroid/view/View;IIILandroid/widget/ScrollView;F)V

    return-void
.end method

.method public j(Landroid/view/View;I)V
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "view",
            "from"
        }
    .end annotation

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    instance-of v0, v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x2

    const/4 v2, -0x1

    if-eqz v0, :cond_0

    invoke-virtual {p1, v2, v1}, Landroid/view/View;->measure(II)V

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    :goto_0
    move v4, v0

    goto :goto_1

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    instance-of v0, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    if-eqz v0, :cond_1

    invoke-virtual {p1, v2, v1}, Landroid/view/View;->measure(II)V

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :goto_1
    iget v5, p0, Lcom/itsmagic/engine/Activities/Editor/Utils/l;->a:I

    const/4 v6, 0x0

    const/high16 v7, 0x3f800000    # 1.0f

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    invoke-virtual/range {v1 .. v7}, Lcom/itsmagic/engine/Activities/Editor/Utils/l;->g(Landroid/view/View;IIILandroid/widget/ScrollView;F)V

    return-void
.end method

.method public k(Landroid/view/View;II)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "view",
            "from",
            "to"
        }
    .end annotation

    iget v0, p0, Lcom/itsmagic/engine/Activities/Editor/Utils/l;->a:I

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/itsmagic/engine/Activities/Editor/Utils/l;->l(Landroid/view/View;III)V

    return-void
.end method

.method public l(Landroid/view/View;III)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "view",
            "from",
            "to",
            "duration"
        }
    .end annotation

    filled-new-array {p2, p3}, [I

    move-result-object p2

    invoke-static {p2}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object p2

    int-to-long p3, p4

    invoke-virtual {p2, p3, p4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    move-result-object p2

    new-instance p3, Lcom/itsmagic/engine/Activities/Editor/Utils/j;

    invoke-direct {p3, p0, p1}, Lcom/itsmagic/engine/Activities/Editor/Utils/j;-><init>(Lcom/itsmagic/engine/Activities/Editor/Utils/l;Landroid/view/View;)V

    invoke-virtual {p2, p3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-instance p1, Landroid/animation/AnimatorSet;

    invoke-direct {p1}, Landroid/animation/AnimatorSet;-><init>()V

    invoke-virtual {p1, p2}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    iget-object p2, p0, Lcom/itsmagic/engine/Activities/Editor/Utils/l;->b:Lcom/itsmagic/engine/Activities/Editor/Utils/l$a;

    sget-object p3, Lcom/itsmagic/engine/Activities/Editor/Utils/l$a;->Linear:Lcom/itsmagic/engine/Activities/Editor/Utils/l$a;

    if-ne p2, p3, :cond_0

    new-instance p2, Landroid/view/animation/LinearInterpolator;

    invoke-direct {p2}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {p1, p2}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    goto :goto_0

    :cond_0
    sget-object p3, Lcom/itsmagic/engine/Activities/Editor/Utils/l$a;->Accelerate:Lcom/itsmagic/engine/Activities/Editor/Utils/l$a;

    if-ne p2, p3, :cond_1

    new-instance p2, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {p2}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {p1, p2}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    goto :goto_0

    :cond_1
    sget-object p3, Lcom/itsmagic/engine/Activities/Editor/Utils/l$a;->Bounce:Lcom/itsmagic/engine/Activities/Editor/Utils/l$a;

    if-ne p2, p3, :cond_2

    new-instance p2, Landroid/view/animation/BounceInterpolator;

    invoke-direct {p2}, Landroid/view/animation/BounceInterpolator;-><init>()V

    invoke-virtual {p1, p2}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    goto :goto_0

    :cond_2
    sget-object p3, Lcom/itsmagic/engine/Activities/Editor/Utils/l$a;->Anticipate:Lcom/itsmagic/engine/Activities/Editor/Utils/l$a;

    if-ne p2, p3, :cond_3

    new-instance p2, Landroid/view/animation/AnticipateInterpolator;

    invoke-direct {p2}, Landroid/view/animation/AnticipateInterpolator;-><init>()V

    invoke-virtual {p1, p2}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    goto :goto_0

    :cond_3
    sget-object p3, Lcom/itsmagic/engine/Activities/Editor/Utils/l$a;->AccelerateDecelerate:Lcom/itsmagic/engine/Activities/Editor/Utils/l$a;

    if-ne p2, p3, :cond_4

    new-instance p2, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {p2}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {p1, p2}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    goto :goto_0

    :cond_4
    sget-object p3, Lcom/itsmagic/engine/Activities/Editor/Utils/l$a;->Overshoot:Lcom/itsmagic/engine/Activities/Editor/Utils/l$a;

    if-ne p2, p3, :cond_5

    new-instance p2, Landroid/view/animation/OvershootInterpolator;

    invoke-direct {p2}, Landroid/view/animation/OvershootInterpolator;-><init>()V

    invoke-virtual {p1, p2}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    goto :goto_0

    :cond_5
    sget-object p3, Lcom/itsmagic/engine/Activities/Editor/Utils/l$a;->AnticipateOvershoot:Lcom/itsmagic/engine/Activities/Editor/Utils/l$a;

    if-ne p2, p3, :cond_6

    new-instance p2, Landroid/view/animation/AnticipateOvershootInterpolator;

    invoke-direct {p2}, Landroid/view/animation/AnticipateOvershootInterpolator;-><init>()V

    invoke-virtual {p1, p2}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    :cond_6
    :goto_0
    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->start()V

    return-void
.end method

.method public m(Lcom/itsmagic/engine/Activities/Editor/Utils/l$b;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "onValueUpdate"
        }
    .end annotation

    iput-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/Utils/l;->c:Lcom/itsmagic/engine/Activities/Editor/Utils/l$b;

    return-void
.end method
