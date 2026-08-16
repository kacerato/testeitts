.class public Lcom/github/florent37/expansionpanel/HorizontalExpansionLayout;
.super Landroid/widget/HorizontalScrollView;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/github/florent37/expansionpanel/HorizontalExpansionLayout$IndicatorListener;,
        Lcom/github/florent37/expansionpanel/HorizontalExpansionLayout$Listener;
    }
.end annotation


# instance fields
.field private animator:Landroid/animation/Animator;

.field private expanded:Z

.field private final indicatorListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/github/florent37/expansionpanel/HorizontalExpansionLayout$IndicatorListener;",
            ">;"
        }
    .end annotation
.end field

.field private final listeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/github/florent37/expansionpanel/HorizontalExpansionLayout$Listener;",
            ">;"
        }
    .end annotation
.end field

.field public singleListener:Ljava/lang/Boolean;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Landroid/widget/HorizontalScrollView;-><init>(Landroid/content/Context;)V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/github/florent37/expansionpanel/HorizontalExpansionLayout;->indicatorListeners:Ljava/util/List;

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/github/florent37/expansionpanel/HorizontalExpansionLayout;->listeners:Ljava/util/List;

    .line 4
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/github/florent37/expansionpanel/HorizontalExpansionLayout;->singleListener:Ljava/lang/Boolean;

    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/github/florent37/expansionpanel/HorizontalExpansionLayout;->expanded:Z

    const/4 v0, 0x0

    .line 6
    invoke-direct {p0, p1, v0}, Lcom/github/florent37/expansionpanel/HorizontalExpansionLayout;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 7
    invoke-direct {p0, p1, p2}, Landroid/widget/HorizontalScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 8
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/github/florent37/expansionpanel/HorizontalExpansionLayout;->indicatorListeners:Ljava/util/List;

    .line 9
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/github/florent37/expansionpanel/HorizontalExpansionLayout;->listeners:Ljava/util/List;

    .line 10
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/github/florent37/expansionpanel/HorizontalExpansionLayout;->singleListener:Ljava/lang/Boolean;

    const/4 v0, 0x0

    .line 11
    iput-boolean v0, p0, Lcom/github/florent37/expansionpanel/HorizontalExpansionLayout;->expanded:Z

    .line 12
    invoke-direct {p0, p1, p2}, Lcom/github/florent37/expansionpanel/HorizontalExpansionLayout;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 13
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/HorizontalScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 14
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    iput-object p3, p0, Lcom/github/florent37/expansionpanel/HorizontalExpansionLayout;->indicatorListeners:Ljava/util/List;

    .line 15
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    iput-object p3, p0, Lcom/github/florent37/expansionpanel/HorizontalExpansionLayout;->listeners:Ljava/util/List;

    .line 16
    sget-object p3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object p3, p0, Lcom/github/florent37/expansionpanel/HorizontalExpansionLayout;->singleListener:Ljava/lang/Boolean;

    const/4 p3, 0x0

    .line 17
    iput-boolean p3, p0, Lcom/github/florent37/expansionpanel/HorizontalExpansionLayout;->expanded:Z

    .line 18
    invoke-direct {p0, p1, p2}, Lcom/github/florent37/expansionpanel/HorizontalExpansionLayout;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public static synthetic access$000(Lcom/github/florent37/expansionpanel/HorizontalExpansionLayout;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/github/florent37/expansionpanel/HorizontalExpansionLayout;->expanded:Z

    return p0
.end method

.method public static synthetic access$100(Lcom/github/florent37/expansionpanel/HorizontalExpansionLayout;)Landroid/animation/Animator;
    .locals 0

    iget-object p0, p0, Lcom/github/florent37/expansionpanel/HorizontalExpansionLayout;->animator:Landroid/animation/Animator;

    return-object p0
.end method

.method public static synthetic access$102(Lcom/github/florent37/expansionpanel/HorizontalExpansionLayout;Landroid/animation/Animator;)Landroid/animation/Animator;
    .locals 0

    iput-object p1, p0, Lcom/github/florent37/expansionpanel/HorizontalExpansionLayout;->animator:Landroid/animation/Animator;

    return-object p1
.end method

.method public static synthetic access$200(Lcom/github/florent37/expansionpanel/HorizontalExpansionLayout;F)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/github/florent37/expansionpanel/HorizontalExpansionLayout;->setWidth(F)V

    return-void
.end method

.method public static synthetic access$300(Lcom/github/florent37/expansionpanel/HorizontalExpansionLayout;)V
    .locals 0

    invoke-direct {p0}, Lcom/github/florent37/expansionpanel/HorizontalExpansionLayout;->pingListeners()V

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

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->requestDisallowInterceptTouchEvent(Z)V

    if-eqz p2, :cond_0

    sget-object v0, Lcom/github/florent37/expansionpanel/R$styleable;->ExpansionLayout:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    if-eqz p1, :cond_0

    sget p2, Lcom/github/florent37/expansionpanel/R$styleable;->ExpansionLayout_expansion_expanded:I

    iget-boolean v0, p0, Lcom/github/florent37/expansionpanel/HorizontalExpansionLayout;->expanded:Z

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lcom/github/florent37/expansionpanel/HorizontalExpansionLayout;->expanded:Z

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

    new-instance v2, Lcom/github/florent37/expansionpanel/HorizontalExpansionLayout$1;

    invoke-direct {v2, p0, v0}, Lcom/github/florent37/expansionpanel/HorizontalExpansionLayout$1;-><init>(Lcom/github/florent37/expansionpanel/HorizontalExpansionLayout;Landroid/view/View;)V

    invoke-virtual {v1, v2}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    :cond_0
    return-void
.end method

.method private pingIndicatorListeners(Z)V
    .locals 2

    iget-object v0, p0, Lcom/github/florent37/expansionpanel/HorizontalExpansionLayout;->indicatorListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/github/florent37/expansionpanel/HorizontalExpansionLayout$IndicatorListener;

    if-eqz v1, :cond_0

    invoke-interface {v1, p0, p1}, Lcom/github/florent37/expansionpanel/HorizontalExpansionLayout$IndicatorListener;->onStartedExpand(Lcom/github/florent37/expansionpanel/HorizontalExpansionLayout;Z)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private pingListeners()V
    .locals 3

    iget-object v0, p0, Lcom/github/florent37/expansionpanel/HorizontalExpansionLayout;->listeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/github/florent37/expansionpanel/HorizontalExpansionLayout$Listener;

    if-eqz v1, :cond_0

    iget-boolean v2, p0, Lcom/github/florent37/expansionpanel/HorizontalExpansionLayout;->expanded:Z

    invoke-interface {v1, p0, v2}, Lcom/github/florent37/expansionpanel/HorizontalExpansionLayout$Listener;->onExpansionChanged(Lcom/github/florent37/expansionpanel/HorizontalExpansionLayout;Z)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private setWidth(F)V
    .locals 1

    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    if-eqz v0, :cond_0

    float-to-int p1, p1

    iput p1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-virtual {p0, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public addIndicatorListener(Lcom/github/florent37/expansionpanel/HorizontalExpansionLayout$IndicatorListener;)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/github/florent37/expansionpanel/HorizontalExpansionLayout;->indicatorListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/github/florent37/expansionpanel/HorizontalExpansionLayout;->indicatorListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public addListener(Lcom/github/florent37/expansionpanel/HorizontalExpansionLayout$Listener;)V
    .locals 1

    iget-object v0, p0, Lcom/github/florent37/expansionpanel/HorizontalExpansionLayout;->singleListener:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/github/florent37/expansionpanel/HorizontalExpansionLayout;->listeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/github/florent37/expansionpanel/HorizontalExpansionLayout;->listeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/github/florent37/expansionpanel/HorizontalExpansionLayout;->listeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/github/florent37/expansionpanel/HorizontalExpansionLayout;->listeners:Ljava/util/List;

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
    invoke-super {p0, p1}, Landroid/widget/HorizontalScrollView;->addView(Landroid/view/View;)V

    .line 3
    invoke-direct {p0}, Lcom/github/florent37/expansionpanel/HorizontalExpansionLayout;->onViewAdded()V

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
    invoke-super {p0, p1, p2}, Landroid/widget/HorizontalScrollView;->addView(Landroid/view/View;I)V

    .line 7
    invoke-direct {p0}, Lcom/github/florent37/expansionpanel/HorizontalExpansionLayout;->onViewAdded()V

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
    invoke-super {p0, p1, p2, p3}, Landroid/widget/HorizontalScrollView;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 15
    invoke-direct {p0}, Lcom/github/florent37/expansionpanel/HorizontalExpansionLayout;->onViewAdded()V

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
    invoke-super {p0, p1, p2}, Landroid/widget/HorizontalScrollView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 11
    invoke-direct {p0}, Lcom/github/florent37/expansionpanel/HorizontalExpansionLayout;->onViewAdded()V

    return-void

    .line 12
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "ExpansionLayout can host only one direct child"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public collapse(Z)V
    .locals 3

    const/4 v0, 0x0

    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-boolean v1, p0, Lcom/github/florent37/expansionpanel/HorizontalExpansionLayout;->expanded:Z

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-direct {p0, v0}, Lcom/github/florent37/expansionpanel/HorizontalExpansionLayout;->pingIndicatorListeners(Z)V

    const/4 v1, 0x0

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

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

    new-instance v1, Lcom/github/florent37/expansionpanel/HorizontalExpansionLayout$2;

    invoke-direct {v1, p0}, Lcom/github/florent37/expansionpanel/HorizontalExpansionLayout$2;-><init>(Lcom/github/florent37/expansionpanel/HorizontalExpansionLayout;)V

    invoke-virtual {p1, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-instance v1, Lcom/github/florent37/expansionpanel/HorizontalExpansionLayout$3;

    invoke-direct {v1, p0}, Lcom/github/florent37/expansionpanel/HorizontalExpansionLayout$3;-><init>(Lcom/github/florent37/expansionpanel/HorizontalExpansionLayout;)V

    invoke-virtual {p1, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iput-boolean v0, p0, Lcom/github/florent37/expansionpanel/HorizontalExpansionLayout;->expanded:Z

    iput-object p1, p0, Lcom/github/florent37/expansionpanel/HorizontalExpansionLayout;->animator:Landroid/animation/Animator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_0

    :cond_1
    invoke-direct {p0, v1}, Lcom/github/florent37/expansionpanel/HorizontalExpansionLayout;->setWidth(F)V

    iput-boolean v0, p0, Lcom/github/florent37/expansionpanel/HorizontalExpansionLayout;->expanded:Z

    invoke-direct {p0}, Lcom/github/florent37/expansionpanel/HorizontalExpansionLayout;->pingListeners()V

    :cond_2
    :goto_0
    return-void
.end method

.method public expand(Z)V
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-boolean v2, p0, Lcom/github/florent37/expansionpanel/HorizontalExpansionLayout;->expanded:Z

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    invoke-direct {p0, v1}, Lcom/github/florent37/expansionpanel/HorizontalExpansionLayout;->pingIndicatorListeners(Z)V

    if-eqz p1, :cond_1

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p1

    int-to-float p1, p1

    const/4 v2, 0x2

    new-array v2, v2, [F

    const/4 v3, 0x0

    aput v3, v2, v0

    aput p1, v2, v1

    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    new-instance v0, Lcom/github/florent37/expansionpanel/HorizontalExpansionLayout$4;

    invoke-direct {v0, p0}, Lcom/github/florent37/expansionpanel/HorizontalExpansionLayout$4;-><init>(Lcom/github/florent37/expansionpanel/HorizontalExpansionLayout;)V

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-instance v0, Lcom/github/florent37/expansionpanel/HorizontalExpansionLayout$5;

    invoke-direct {v0, p0}, Lcom/github/florent37/expansionpanel/HorizontalExpansionLayout$5;-><init>(Lcom/github/florent37/expansionpanel/HorizontalExpansionLayout;)V

    invoke-virtual {p1, v0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iput-boolean v1, p0, Lcom/github/florent37/expansionpanel/HorizontalExpansionLayout;->expanded:Z

    iput-object p1, p0, Lcom/github/florent37/expansionpanel/HorizontalExpansionLayout;->animator:Landroid/animation/Animator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_0

    :cond_1
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p1

    int-to-float p1, p1

    invoke-direct {p0, p1}, Lcom/github/florent37/expansionpanel/HorizontalExpansionLayout;->setWidth(F)V

    iput-boolean v1, p0, Lcom/github/florent37/expansionpanel/HorizontalExpansionLayout;->expanded:Z

    invoke-direct {p0}, Lcom/github/florent37/expansionpanel/HorizontalExpansionLayout;->pingListeners()V

    :cond_2
    :goto_0
    return-void
.end method

.method public isExpanded()Z
    .locals 1

    iget-boolean v0, p0, Lcom/github/florent37/expansionpanel/HorizontalExpansionLayout;->expanded:Z

    return v0
.end method

.method public onAttachedToWindow()V
    .locals 1

    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    iget-boolean v0, p0, Lcom/github/florent37/expansionpanel/HorizontalExpansionLayout;->expanded:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/github/florent37/expansionpanel/HorizontalExpansionLayout;->setWidth(F)V

    :cond_0
    return-void
.end method

.method public removeIndicatorListener(Lcom/github/florent37/expansionpanel/HorizontalExpansionLayout$IndicatorListener;)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/github/florent37/expansionpanel/HorizontalExpansionLayout;->indicatorListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public removeListener(Lcom/github/florent37/expansionpanel/HorizontalExpansionLayout$Listener;)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/github/florent37/expansionpanel/HorizontalExpansionLayout;->listeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public toggle(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/github/florent37/expansionpanel/HorizontalExpansionLayout;->expanded:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/github/florent37/expansionpanel/HorizontalExpansionLayout;->collapse(Z)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/github/florent37/expansionpanel/HorizontalExpansionLayout;->expand(Z)V

    :goto_0
    return-void
.end method
