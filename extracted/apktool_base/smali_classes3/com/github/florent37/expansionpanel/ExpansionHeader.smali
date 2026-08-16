.class public Lcom/github/florent37/expansionpanel/ExpansionHeader;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# instance fields
.field expansionLayout:Lcom/github/florent37/expansionpanel/ExpansionLayout;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field expansionLayoutId:I

.field private expansionLayoutInitialised:Z

.field headerIndicator:Landroid/view/View;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field headerIndicatorId:I

.field private headerRotationCollapsed:I

.field private headerRotationExpanded:I

.field indicatorAnimator:Landroid/animation/Animator;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field toggleOnClick:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/github/florent37/expansionpanel/ExpansionHeader;->headerIndicatorId:I

    .line 3
    iput v0, p0, Lcom/github/florent37/expansionpanel/ExpansionHeader;->expansionLayoutId:I

    const/4 v1, 0x1

    .line 4
    iput-boolean v1, p0, Lcom/github/florent37/expansionpanel/ExpansionHeader;->toggleOnClick:Z

    const/16 v1, 0x10e

    .line 5
    iput v1, p0, Lcom/github/florent37/expansionpanel/ExpansionHeader;->headerRotationExpanded:I

    const/16 v1, 0x5a

    .line 6
    iput v1, p0, Lcom/github/florent37/expansionpanel/ExpansionHeader;->headerRotationCollapsed:I

    .line 7
    iput-boolean v0, p0, Lcom/github/florent37/expansionpanel/ExpansionHeader;->expansionLayoutInitialised:Z

    const/4 v0, 0x0

    .line 8
    invoke-direct {p0, p1, v0}, Lcom/github/florent37/expansionpanel/ExpansionHeader;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 9
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    .line 10
    iput v0, p0, Lcom/github/florent37/expansionpanel/ExpansionHeader;->headerIndicatorId:I

    .line 11
    iput v0, p0, Lcom/github/florent37/expansionpanel/ExpansionHeader;->expansionLayoutId:I

    const/4 v1, 0x1

    .line 12
    iput-boolean v1, p0, Lcom/github/florent37/expansionpanel/ExpansionHeader;->toggleOnClick:Z

    const/16 v1, 0x10e

    .line 13
    iput v1, p0, Lcom/github/florent37/expansionpanel/ExpansionHeader;->headerRotationExpanded:I

    const/16 v1, 0x5a

    .line 14
    iput v1, p0, Lcom/github/florent37/expansionpanel/ExpansionHeader;->headerRotationCollapsed:I

    .line 15
    iput-boolean v0, p0, Lcom/github/florent37/expansionpanel/ExpansionHeader;->expansionLayoutInitialised:Z

    .line 16
    invoke-direct {p0, p1, p2}, Lcom/github/florent37/expansionpanel/ExpansionHeader;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 17
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p3, 0x0

    .line 18
    iput p3, p0, Lcom/github/florent37/expansionpanel/ExpansionHeader;->headerIndicatorId:I

    .line 19
    iput p3, p0, Lcom/github/florent37/expansionpanel/ExpansionHeader;->expansionLayoutId:I

    const/4 v0, 0x1

    .line 20
    iput-boolean v0, p0, Lcom/github/florent37/expansionpanel/ExpansionHeader;->toggleOnClick:Z

    const/16 v0, 0x10e

    .line 21
    iput v0, p0, Lcom/github/florent37/expansionpanel/ExpansionHeader;->headerRotationExpanded:I

    const/16 v0, 0x5a

    .line 22
    iput v0, p0, Lcom/github/florent37/expansionpanel/ExpansionHeader;->headerRotationCollapsed:I

    .line 23
    iput-boolean p3, p0, Lcom/github/florent37/expansionpanel/ExpansionHeader;->expansionLayoutInitialised:Z

    .line 24
    invoke-direct {p0, p1, p2}, Lcom/github/florent37/expansionpanel/ExpansionHeader;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

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

    if-eqz p2, :cond_0

    sget-object v0, Lcom/github/florent37/expansionpanel/R$styleable;->ExpansionHeader:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    if-eqz p1, :cond_0

    sget p2, Lcom/github/florent37/expansionpanel/R$styleable;->ExpansionHeader_expansion_headerIndicatorRotationExpanded:I

    iget v0, p0, Lcom/github/florent37/expansionpanel/ExpansionHeader;->headerRotationExpanded:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    invoke-virtual {p0, p2}, Lcom/github/florent37/expansionpanel/ExpansionHeader;->setHeaderRotationExpanded(I)V

    sget p2, Lcom/github/florent37/expansionpanel/R$styleable;->ExpansionHeader_expansion_headerIndicatorRotationCollapsed:I

    iget v0, p0, Lcom/github/florent37/expansionpanel/ExpansionHeader;->headerRotationCollapsed:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    invoke-virtual {p0, p2}, Lcom/github/florent37/expansionpanel/ExpansionHeader;->setHeaderRotationCollapsed(I)V

    sget p2, Lcom/github/florent37/expansionpanel/R$styleable;->ExpansionHeader_expansion_headerIndicator:I

    iget v0, p0, Lcom/github/florent37/expansionpanel/ExpansionHeader;->headerIndicatorId:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    invoke-virtual {p0, p2}, Lcom/github/florent37/expansionpanel/ExpansionHeader;->setHeaderIndicatorId(I)V

    sget p2, Lcom/github/florent37/expansionpanel/R$styleable;->ExpansionHeader_expansion_layout:I

    iget v0, p0, Lcom/github/florent37/expansionpanel/ExpansionHeader;->expansionLayoutId:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    invoke-virtual {p0, p2}, Lcom/github/florent37/expansionpanel/ExpansionHeader;->setExpansionLayoutId(I)V

    sget p2, Lcom/github/florent37/expansionpanel/R$styleable;->ExpansionHeader_expansion_toggleOnClick:I

    iget-boolean v0, p0, Lcom/github/florent37/expansionpanel/ExpansionHeader;->toggleOnClick:Z

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    invoke-virtual {p0, p2}, Lcom/github/florent37/expansionpanel/ExpansionHeader;->setToggleOnClick(Z)V

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    :cond_0
    return-void
.end method

.method private setup()V
    .locals 2

    iget-object v0, p0, Lcom/github/florent37/expansionpanel/ExpansionHeader;->expansionLayout:Lcom/github/florent37/expansionpanel/ExpansionLayout;

    if-eqz v0, :cond_0

    iget-boolean v1, p0, Lcom/github/florent37/expansionpanel/ExpansionHeader;->expansionLayoutInitialised:Z

    if-nez v1, :cond_0

    new-instance v1, Lcom/github/florent37/expansionpanel/ExpansionHeader$1;

    invoke-direct {v1, p0}, Lcom/github/florent37/expansionpanel/ExpansionHeader$1;-><init>(Lcom/github/florent37/expansionpanel/ExpansionHeader;)V

    invoke-virtual {v0, v1}, Lcom/github/florent37/expansionpanel/ExpansionLayout;->addIndicatorListener(Lcom/github/florent37/expansionpanel/ExpansionLayout$IndicatorListener;)V

    new-instance v0, Lcom/github/florent37/expansionpanel/ExpansionHeader$2;

    invoke-direct {v0, p0}, Lcom/github/florent37/expansionpanel/ExpansionHeader$2;-><init>(Lcom/github/florent37/expansionpanel/ExpansionHeader;)V

    invoke-virtual {p0, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/github/florent37/expansionpanel/ExpansionHeader;->expansionLayout:Lcom/github/florent37/expansionpanel/ExpansionLayout;

    invoke-virtual {v0}, Lcom/github/florent37/expansionpanel/ExpansionLayout;->isExpanded()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/github/florent37/expansionpanel/ExpansionHeader;->initialiseView(Z)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/github/florent37/expansionpanel/ExpansionHeader;->expansionLayoutInitialised:Z

    :cond_0
    return-void
.end method


# virtual methods
.method public addListener(Lcom/github/florent37/expansionpanel/ExpansionLayout$Listener;)V
    .locals 1

    iget-object v0, p0, Lcom/github/florent37/expansionpanel/ExpansionHeader;->expansionLayout:Lcom/github/florent37/expansionpanel/ExpansionLayout;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/github/florent37/expansionpanel/ExpansionLayout;->addListener(Lcom/github/florent37/expansionpanel/ExpansionLayout$Listener;)V

    :cond_0
    return-void
.end method

.method public getHeaderIndicator()Landroid/view/View;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/github/florent37/expansionpanel/ExpansionHeader;->headerIndicator:Landroid/view/View;

    return-object v0
.end method

.method public initialiseView(Z)V
    .locals 1

    iget-object v0, p0, Lcom/github/florent37/expansionpanel/ExpansionHeader;->headerIndicator:Landroid/view/View;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    iget p1, p0, Lcom/github/florent37/expansionpanel/ExpansionHeader;->headerRotationExpanded:I

    :goto_0
    int-to-float p1, p1

    goto :goto_1

    :cond_0
    iget p1, p0, Lcom/github/florent37/expansionpanel/ExpansionHeader;->headerRotationCollapsed:I

    goto :goto_0

    :goto_1
    invoke-virtual {v0, p1}, Landroid/view/View;->setRotation(F)V

    :cond_1
    return-void
.end method

.method public isExpanded()Z
    .locals 1

    iget-object v0, p0, Lcom/github/florent37/expansionpanel/ExpansionHeader;->expansionLayout:Lcom/github/florent37/expansionpanel/ExpansionLayout;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/github/florent37/expansionpanel/ExpansionLayout;->isExpanded()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isToggleOnClick()Z
    .locals 1

    iget-boolean v0, p0, Lcom/github/florent37/expansionpanel/ExpansionHeader;->toggleOnClick:Z

    return v0
.end method

.method public onAttachedToWindow()V
    .locals 1

    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    iget v0, p0, Lcom/github/florent37/expansionpanel/ExpansionHeader;->headerIndicatorId:I

    invoke-virtual {p0, v0}, Lcom/github/florent37/expansionpanel/ExpansionHeader;->setHeaderIndicatorId(I)V

    iget v0, p0, Lcom/github/florent37/expansionpanel/ExpansionHeader;->expansionLayoutId:I

    invoke-virtual {p0, v0}, Lcom/github/florent37/expansionpanel/ExpansionHeader;->setExpansionLayoutId(I)V

    invoke-direct {p0}, Lcom/github/florent37/expansionpanel/ExpansionHeader;->setup()V

    return-void
.end method

.method public onExpansionModifyView(Z)V
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, p1}, Landroid/view/View;->setSelected(Z)V

    iget-object v2, p0, Lcom/github/florent37/expansionpanel/ExpansionHeader;->headerIndicator:Landroid/view/View;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/github/florent37/expansionpanel/ExpansionHeader;->indicatorAnimator:Landroid/animation/Animator;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/animation/Animator;->cancel()V

    :cond_0
    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/github/florent37/expansionpanel/ExpansionHeader;->headerIndicator:Landroid/view/View;

    sget-object v2, Landroid/view/View;->ROTATION:Landroid/util/Property;

    iget v3, p0, Lcom/github/florent37/expansionpanel/ExpansionHeader;->headerRotationExpanded:I

    int-to-float v3, v3

    new-array v1, v1, [F

    aput v3, v1, v0

    invoke-static {p1, v2, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    iput-object p1, p0, Lcom/github/florent37/expansionpanel/ExpansionHeader;->indicatorAnimator:Landroid/animation/Animator;

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/github/florent37/expansionpanel/ExpansionHeader;->headerIndicator:Landroid/view/View;

    sget-object v2, Landroid/view/View;->ROTATION:Landroid/util/Property;

    iget v3, p0, Lcom/github/florent37/expansionpanel/ExpansionHeader;->headerRotationCollapsed:I

    int-to-float v3, v3

    new-array v1, v1, [F

    aput v3, v1, v0

    invoke-static {p1, v2, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    iput-object p1, p0, Lcom/github/florent37/expansionpanel/ExpansionHeader;->indicatorAnimator:Landroid/animation/Animator;

    :goto_0
    iget-object p1, p0, Lcom/github/florent37/expansionpanel/ExpansionHeader;->indicatorAnimator:Landroid/animation/Animator;

    new-instance v0, Lcom/github/florent37/expansionpanel/ExpansionHeader$3;

    invoke-direct {v0, p0}, Lcom/github/florent37/expansionpanel/ExpansionHeader$3;-><init>(Lcom/github/florent37/expansionpanel/ExpansionHeader;)V

    invoke-virtual {p1, v0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object p1, p0, Lcom/github/florent37/expansionpanel/ExpansionHeader;->indicatorAnimator:Landroid/animation/Animator;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/animation/Animator;->start()V

    :cond_2
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 1

    instance-of v0, p1, Landroid/os/Bundle;

    if-eqz v0, :cond_0

    check-cast p1, Landroid/os/Bundle;

    const-string v0, "headerIndicatorId"

    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/github/florent37/expansionpanel/ExpansionHeader;->headerIndicatorId:I

    const-string v0, "expansionLayoutId"

    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/github/florent37/expansionpanel/ExpansionHeader;->expansionLayoutId:I

    const-string v0, "toggleOnClick"

    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/github/florent37/expansionpanel/ExpansionHeader;->setToggleOnClick(Z)V

    const-string v0, "headerRotationExpanded"

    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/github/florent37/expansionpanel/ExpansionHeader;->setHeaderRotationExpanded(I)V

    const-string v0, "headerRotationCollapsed"

    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/github/florent37/expansionpanel/ExpansionHeader;->setHeaderRotationCollapsed(I)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/github/florent37/expansionpanel/ExpansionHeader;->expansionLayoutInitialised:Z

    const-string v0, "super"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    invoke-super {p0, p1}, Landroid/view/View;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    goto :goto_0

    :cond_0
    invoke-super {p0, p1}, Landroid/view/View;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    :goto_0
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "super"

    invoke-super {p0}, Landroid/view/View;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string v1, "headerIndicatorId"

    iget v2, p0, Lcom/github/florent37/expansionpanel/ExpansionHeader;->headerIndicatorId:I

    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "expansionLayoutId"

    iget v2, p0, Lcom/github/florent37/expansionpanel/ExpansionHeader;->expansionLayoutId:I

    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "toggleOnClick"

    iget-boolean v2, p0, Lcom/github/florent37/expansionpanel/ExpansionHeader;->toggleOnClick:Z

    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v1, "headerRotationExpanded"

    iget v2, p0, Lcom/github/florent37/expansionpanel/ExpansionHeader;->headerRotationExpanded:I

    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "headerRotationCollapsed"

    iget v2, p0, Lcom/github/florent37/expansionpanel/ExpansionHeader;->headerRotationCollapsed:I

    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    return-object v0
.end method

.method public removeListener(Lcom/github/florent37/expansionpanel/ExpansionLayout$Listener;)V
    .locals 1

    iget-object v0, p0, Lcom/github/florent37/expansionpanel/ExpansionHeader;->expansionLayout:Lcom/github/florent37/expansionpanel/ExpansionLayout;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/github/florent37/expansionpanel/ExpansionLayout;->removeListener(Lcom/github/florent37/expansionpanel/ExpansionLayout$Listener;)V

    :cond_0
    return-void
.end method

.method public setExpansionHeaderIndicator(Landroid/view/View;)V
    .locals 2
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/github/florent37/expansionpanel/ExpansionHeader;->headerIndicator:Landroid/view/View;

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    :cond_0
    invoke-direct {p0}, Lcom/github/florent37/expansionpanel/ExpansionHeader;->setup()V

    return-void
.end method

.method public setExpansionLayout(Lcom/github/florent37/expansionpanel/ExpansionLayout;)V
    .locals 0
    .param p1    # Lcom/github/florent37/expansionpanel/ExpansionLayout;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/github/florent37/expansionpanel/ExpansionHeader;->expansionLayout:Lcom/github/florent37/expansionpanel/ExpansionLayout;

    invoke-direct {p0}, Lcom/github/florent37/expansionpanel/ExpansionHeader;->setup()V

    return-void
.end method

.method public setExpansionLayoutId(I)V
    .locals 2

    iput p1, p0, Lcom/github/florent37/expansionpanel/ExpansionHeader;->expansionLayoutId:I

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v1, v0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    instance-of v0, p1, Lcom/github/florent37/expansionpanel/ExpansionLayout;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/github/florent37/expansionpanel/ExpansionLayout;

    invoke-virtual {p0, p1}, Lcom/github/florent37/expansionpanel/ExpansionHeader;->setExpansionLayout(Lcom/github/florent37/expansionpanel/ExpansionLayout;)V

    :cond_0
    return-void
.end method

.method public setHeaderIndicatorId(I)V
    .locals 0

    iput p1, p0, Lcom/github/florent37/expansionpanel/ExpansionHeader;->headerIndicatorId:I

    if-eqz p1, :cond_0

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/github/florent37/expansionpanel/ExpansionHeader;->headerIndicator:Landroid/view/View;

    invoke-virtual {p0, p1}, Lcom/github/florent37/expansionpanel/ExpansionHeader;->setExpansionHeaderIndicator(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public setHeaderRotationCollapsed(I)V
    .locals 0

    iput p1, p0, Lcom/github/florent37/expansionpanel/ExpansionHeader;->headerRotationCollapsed:I

    return-void
.end method

.method public setHeaderRotationExpanded(I)V
    .locals 0

    iput p1, p0, Lcom/github/florent37/expansionpanel/ExpansionHeader;->headerRotationExpanded:I

    return-void
.end method

.method public setToggleOnClick(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/github/florent37/expansionpanel/ExpansionHeader;->toggleOnClick:Z

    return-void
.end method
