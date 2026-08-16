.class public Lcom/github/florent37/expansionpanel/ExpansionLayout;
.super Landroidx/core/widget/NestedScrollView;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/github/florent37/expansionpanel/ExpansionLayout$IndicatorListener;,
        Lcom/github/florent37/expansionpanel/ExpansionLayout$Listener;
    }
.end annotation


# instance fields
.field private animator:Landroid/animation/Animator;

.field private expanded:Z

.field private final indicatorListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/github/florent37/expansionpanel/ExpansionLayout$IndicatorListener;",
            ">;"
        }
    .end annotation
.end field

.field private final listeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/github/florent37/expansionpanel/ExpansionLayout$Listener;",
            ">;"
        }
    .end annotation
.end field

.field public singleListener:Ljava/lang/Boolean;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Landroidx/core/widget/NestedScrollView;-><init>(Landroid/content/Context;)V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/github/florent37/expansionpanel/ExpansionLayout;->indicatorListeners:Ljava/util/List;

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/github/florent37/expansionpanel/ExpansionLayout;->listeners:Ljava/util/List;

    .line 4
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/github/florent37/expansionpanel/ExpansionLayout;->singleListener:Ljava/lang/Boolean;

    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/github/florent37/expansionpanel/ExpansionLayout;->expanded:Z

    const/4 v0, 0x0

    .line 6
    invoke-direct {p0, p1, v0}, Lcom/github/florent37/expansionpanel/ExpansionLayout;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 7
    invoke-direct {p0, p1, p2}, Landroidx/core/widget/NestedScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 8
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/github/florent37/expansionpanel/ExpansionLayout;->indicatorListeners:Ljava/util/List;

    .line 9
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/github/florent37/expansionpanel/ExpansionLayout;->listeners:Ljava/util/List;

    .line 10
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/github/florent37/expansionpanel/ExpansionLayout;->singleListener:Ljava/lang/Boolean;

    const/4 v0, 0x0

    .line 11
    iput-boolean v0, p0, Lcom/github/florent37/expansionpanel/ExpansionLayout;->expanded:Z

    .line 12
    invoke-direct {p0, p1, p2}, Lcom/github/florent37/expansionpanel/ExpansionLayout;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 13
    invoke-direct {p0, p1, p2, p3}, Landroidx/core/widget/NestedScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 14
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    iput-object p3, p0, Lcom/github/florent37/expansionpanel/ExpansionLayout;->indicatorListeners:Ljava/util/List;

    .line 15
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    iput-object p3, p0, Lcom/github/florent37/expansionpanel/ExpansionLayout;->listeners:Ljava/util/List;

    .line 16
    sget-object p3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object p3, p0, Lcom/github/florent37/expansionpanel/ExpansionLayout;->singleListener:Ljava/lang/Boolean;

    const/4 p3, 0x0

    .line 17
    iput-boolean p3, p0, Lcom/github/florent37/expansionpanel/ExpansionLayout;->expanded:Z

    .line 18
    invoke-direct {p0, p1, p2}, Lcom/github/florent37/expansionpanel/ExpansionLayout;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public static synthetic access$000(Lcom/github/florent37/expansionpanel/ExpansionLayout;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/github/florent37/expansionpanel/ExpansionLayout;->expanded:Z

    return p0
.end method

.method public static synthetic access$100(Lcom/github/florent37/expansionpanel/ExpansionLayout;)Landroid/animation/Animator;
    .locals 0

    iget-object p0, p0, Lcom/github/florent37/expansionpanel/ExpansionLayout;->animator:Landroid/animation/Animator;

    return-object p0
.end method

.method public static synthetic access$102(Lcom/github/florent37/expansionpanel/ExpansionLayout;Landroid/animation/Animator;)Landroid/animation/Animator;
    .locals 0

    iput-object p1, p0, Lcom/github/florent37/expansionpanel/ExpansionLayout;->animator:Landroid/animation/Animator;

    return-object p1
.end method

.method public static synthetic access$200(Lcom/github/florent37/expansionpanel/ExpansionLayout;F)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/github/florent37/expansionpanel/ExpansionLayout;->setHeight(F)V

    return-void
.end method

.method public static synthetic access$300(Lcom/github/florent37/expansionpanel/ExpansionLayout;)V
    .locals 0

    invoke-direct {p0}, Lcom/github/florent37/expansionpanel/ExpansionLayout;->pingListeners()V

    return-void
.end method

.method private init(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroidx/core/widget/NestedScrollView;->requestDisallowInterceptTouchEvent(Z)V

    if-eqz p2, :cond_0

    sget-object v0, Lcom/github/florent37/expansionpanel/R$styleable;->ExpansionLayout:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    if-eqz p1, :cond_0

    sget p2, Lcom/github/florent37/expansionpanel/R$styleable;->ExpansionLayout_expansion_expanded:I

    iget-boolean v0, p0, Lcom/github/florent37/expansionpanel/ExpansionLayout;->expanded:Z

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lcom/github/florent37/expansionpanel/ExpansionLayout;->expanded:Z

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    :cond_0
    return-void
.end method

.method private onViewAdded()V
    .locals 3

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    new-instance v2, Lcom/github/florent37/expansionpanel/ExpansionLayout$1;

    invoke-direct {v2, p0, v0}, Lcom/github/florent37/expansionpanel/ExpansionLayout$1;-><init>(Lcom/github/florent37/expansionpanel/ExpansionLayout;Landroid/view/View;)V

    invoke-virtual {v1, v2}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    :cond_0
    return-void
.end method

.method private pingIndicatorListeners(Z)V
    .locals 2

    iget-object v0, p0, Lcom/github/florent37/expansionpanel/ExpansionLayout;->indicatorListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/github/florent37/expansionpanel/ExpansionLayout$IndicatorListener;

    if-eqz v1, :cond_0

    invoke-interface {v1, p0, p1}, Lcom/github/florent37/expansionpanel/ExpansionLayout$IndicatorListener;->onStartedExpand(Lcom/github/florent37/expansionpanel/ExpansionLayout;Z)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private pingListeners()V
    .locals 3

    iget-object v0, p0, Lcom/github/florent37/expansionpanel/ExpansionLayout;->listeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/github/florent37/expansionpanel/ExpansionLayout$Listener;

    if-eqz v1, :cond_0

    iget-boolean v2, p0, Lcom/github/florent37/expansionpanel/ExpansionLayout;->expanded:Z

    invoke-interface {v1, p0, v2}, Lcom/github/florent37/expansionpanel/ExpansionLayout$Listener;->onExpansionChanged(Lcom/github/florent37/expansionpanel/ExpansionLayout;Z)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private setHeight(F)V
    .locals 1

    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    if-eqz v0, :cond_0

    float-to-int p1, p1

    iput p1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {p0, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public addIndicatorListener(Lcom/github/florent37/expansionpanel/ExpansionLayout$IndicatorListener;)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/github/florent37/expansionpanel/ExpansionLayout;->indicatorListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/github/florent37/expansionpanel/ExpansionLayout;->indicatorListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public addListener(Lcom/github/florent37/expansionpanel/ExpansionLayout$Listener;)V
    .locals 1

    iget-object v0, p0, Lcom/github/florent37/expansionpanel/ExpansionLayout;->singleListener:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/github/florent37/expansionpanel/ExpansionLayout;->listeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/github/florent37/expansionpanel/ExpansionLayout;->listeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/github/florent37/expansionpanel/ExpansionLayout;->listeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/github/florent37/expansionpanel/ExpansionLayout;->listeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    :goto_0
    return-void
.end method

.method public addView(Landroid/view/View;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-gtz v0, :cond_0

    .line 2
    invoke-super {p0, p1}, Landroidx/core/widget/NestedScrollView;->addView(Landroid/view/View;)V

    .line 3
    invoke-direct {p0}, Lcom/github/florent37/expansionpanel/ExpansionLayout;->onViewAdded()V

    return-void

    .line 4
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "ExpansionLayout can host only one direct child"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public addView(Landroid/view/View;I)V
    .locals 1

    .line 5
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-gtz v0, :cond_0

    .line 6
    invoke-super {p0, p1, p2}, Landroidx/core/widget/NestedScrollView;->addView(Landroid/view/View;I)V

    .line 7
    invoke-direct {p0}, Lcom/github/florent37/expansionpanel/ExpansionLayout;->onViewAdded()V

    return-void

    .line 8
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "ExpansionLayout can host only one direct child"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 1

    .line 13
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-gtz v0, :cond_0

    .line 14
    invoke-super {p0, p1, p2, p3}, Landroidx/core/widget/NestedScrollView;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 15
    invoke-direct {p0}, Lcom/github/florent37/expansionpanel/ExpansionLayout;->onViewAdded()V

    return-void

    .line 16
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "ExpansionLayout can host only one direct child"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1

    .line 9
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-gtz v0, :cond_0

    .line 10
    invoke-super {p0, p1, p2}, Landroidx/core/widget/NestedScrollView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 11
    invoke-direct {p0}, Lcom/github/florent37/expansionpanel/ExpansionLayout;->onViewAdded()V

    return-void

    .line 12
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "ExpansionLayout can host only one direct child"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public collapse(Z)V
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p0, p1, v0}, Lcom/github/florent37/expansionpanel/ExpansionLayout;->collapse(ZZ)V

    return-void
.end method

.method public collapse(ZZ)V
    .locals 3

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-boolean v1, p0, Lcom/github/florent37/expansionpanel/ExpansionLayout;->expanded:Z

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    if-eqz p2, :cond_1

    .line 3
    invoke-direct {p0, v0}, Lcom/github/florent37/expansionpanel/ExpansionLayout;->pingIndicatorListeners(Z)V

    :cond_1
    const/4 v1, 0x0

    if-eqz p1, :cond_2

    .line 4
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result p1

    int-to-float p1, p1

    const/high16 v2, 0x3f800000    # 1.0f

    mul-float/2addr p1, v2

    const/4 v2, 0x2

    new-array v2, v2, [F

    aput p1, v2, v0

    const/4 p1, 0x1

    aput v1, v2, p1

    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    .line 5
    new-instance v1, Lcom/github/florent37/expansionpanel/ExpansionLayout$2;

    invoke-direct {v1, p0}, Lcom/github/florent37/expansionpanel/ExpansionLayout$2;-><init>(Lcom/github/florent37/expansionpanel/ExpansionLayout;)V

    invoke-virtual {p1, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 6
    new-instance v1, Lcom/github/florent37/expansionpanel/ExpansionLayout$3;

    invoke-direct {v1, p0, p2}, Lcom/github/florent37/expansionpanel/ExpansionLayout$3;-><init>(Lcom/github/florent37/expansionpanel/ExpansionLayout;Z)V

    invoke-virtual {p1, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 7
    iput-boolean v0, p0, Lcom/github/florent37/expansionpanel/ExpansionLayout;->expanded:Z

    .line 8
    iput-object p1, p0, Lcom/github/florent37/expansionpanel/ExpansionLayout;->animator:Landroid/animation/Animator;

    .line 9
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_0

    .line 10
    :cond_2
    invoke-direct {p0, v1}, Lcom/github/florent37/expansionpanel/ExpansionLayout;->setHeight(F)V

    .line 11
    iput-boolean v0, p0, Lcom/github/florent37/expansionpanel/ExpansionLayout;->expanded:Z

    if-eqz p2, :cond_3

    .line 12
    invoke-direct {p0}, Lcom/github/florent37/expansionpanel/ExpansionLayout;->pingListeners()V

    :cond_3
    :goto_0
    return-void
.end method

.method public expand(Z)V
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p0, p1, v0}, Lcom/github/florent37/expansionpanel/ExpansionLayout;->expand(ZZ)V

    return-void
.end method

.method public expand(ZZ)V
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 2
    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_3

    iget-boolean v2, p0, Lcom/github/florent37/expansionpanel/ExpansionLayout;->expanded:Z

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    if-eqz p2, :cond_1

    .line 3
    invoke-direct {p0, v1}, Lcom/github/florent37/expansionpanel/ExpansionLayout;->pingIndicatorListeners(Z)V

    :cond_1
    if-eqz p1, :cond_2

    .line 4
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    int-to-float p1, p1

    const/4 v2, 0x2

    new-array v2, v2, [F

    const/4 v3, 0x0

    aput v3, v2, v0

    aput p1, v2, v1

    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    .line 5
    new-instance v0, Lcom/github/florent37/expansionpanel/ExpansionLayout$4;

    invoke-direct {v0, p0}, Lcom/github/florent37/expansionpanel/ExpansionLayout$4;-><init>(Lcom/github/florent37/expansionpanel/ExpansionLayout;)V

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 6
    new-instance v0, Lcom/github/florent37/expansionpanel/ExpansionLayout$5;

    invoke-direct {v0, p0, p2}, Lcom/github/florent37/expansionpanel/ExpansionLayout$5;-><init>(Lcom/github/florent37/expansionpanel/ExpansionLayout;Z)V

    invoke-virtual {p1, v0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 7
    iput-boolean v1, p0, Lcom/github/florent37/expansionpanel/ExpansionLayout;->expanded:Z

    .line 8
    iput-object p1, p0, Lcom/github/florent37/expansionpanel/ExpansionLayout;->animator:Landroid/animation/Animator;

    .line 9
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_0

    .line 10
    :cond_2
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    int-to-float p1, p1

    invoke-direct {p0, p1}, Lcom/github/florent37/expansionpanel/ExpansionLayout;->setHeight(F)V

    .line 11
    iput-boolean v1, p0, Lcom/github/florent37/expansionpanel/ExpansionLayout;->expanded:Z

    if-eqz p2, :cond_3

    .line 12
    invoke-direct {p0}, Lcom/github/florent37/expansionpanel/ExpansionLayout;->pingListeners()V

    :cond_3
    :goto_0
    return-void
.end method

.method public isExpanded()Z
    .locals 1

    iget-boolean v0, p0, Lcom/github/florent37/expansionpanel/ExpansionLayout;->expanded:Z

    return v0
.end method

.method public onAttachedToWindow()V
    .locals 1

    invoke-super {p0}, Landroidx/core/widget/NestedScrollView;->onAttachedToWindow()V

    iget-boolean v0, p0, Lcom/github/florent37/expansionpanel/ExpansionLayout;->expanded:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/github/florent37/expansionpanel/ExpansionLayout;->setHeight(F)V

    :cond_0
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 2

    instance-of v0, p1, Landroid/os/Bundle;

    if-eqz v0, :cond_1

    check-cast p1, Landroid/os/Bundle;

    const-string v0, "expanded"

    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p0, v1}, Lcom/github/florent37/expansionpanel/ExpansionLayout;->expand(Z)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v1}, Lcom/github/florent37/expansionpanel/ExpansionLayout;->collapse(Z)V

    :goto_0
    const-string v0, "super"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    invoke-super {p0, p1}, Landroidx/core/widget/NestedScrollView;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    goto :goto_1

    :cond_1
    invoke-super {p0, p1}, Landroidx/core/widget/NestedScrollView;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    :goto_1
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "super"

    invoke-super {p0}, Landroidx/core/widget/NestedScrollView;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string v1, "expanded"

    iget-boolean v2, p0, Lcom/github/florent37/expansionpanel/ExpansionLayout;->expanded:Z

    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    return-object v0
.end method

.method public removeIndicatorListener(Lcom/github/florent37/expansionpanel/ExpansionLayout$IndicatorListener;)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/github/florent37/expansionpanel/ExpansionLayout;->indicatorListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public removeListener(Lcom/github/florent37/expansionpanel/ExpansionLayout$Listener;)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/github/florent37/expansionpanel/ExpansionLayout;->listeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public toggle(Z)V
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p0, p1, v0}, Lcom/github/florent37/expansionpanel/ExpansionLayout;->toggle(ZZ)V

    return-void
.end method

.method public toggle(ZZ)V
    .locals 1

    .line 2
    iget-boolean v0, p0, Lcom/github/florent37/expansionpanel/ExpansionLayout;->expanded:Z

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {p0, p1, p2}, Lcom/github/florent37/expansionpanel/ExpansionLayout;->collapse(ZZ)V

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/github/florent37/expansionpanel/ExpansionLayout;->expand(ZZ)V

    :goto_0
    return-void
.end method
