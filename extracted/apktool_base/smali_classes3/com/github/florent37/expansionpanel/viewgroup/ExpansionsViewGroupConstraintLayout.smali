.class public Lcom/github/florent37/expansionpanel/viewgroup/ExpansionsViewGroupConstraintLayout;
.super Landroidx/constraintlayout/widget/ConstraintLayout;
.source "SourceFile"


# instance fields
.field private final expansionViewGroupManager:Lcom/github/florent37/expansionpanel/viewgroup/ExpansionViewGroupManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Landroidx/constraintlayout/widget/ConstraintLayout;-><init>(Landroid/content/Context;)V

    .line 2
    new-instance v0, Lcom/github/florent37/expansionpanel/viewgroup/ExpansionViewGroupManager;

    invoke-direct {v0, p0}, Lcom/github/florent37/expansionpanel/viewgroup/ExpansionViewGroupManager;-><init>(Landroid/view/ViewGroup;)V

    iput-object v0, p0, Lcom/github/florent37/expansionpanel/viewgroup/ExpansionsViewGroupConstraintLayout;->expansionViewGroupManager:Lcom/github/florent37/expansionpanel/viewgroup/ExpansionViewGroupManager;

    const/4 v0, 0x0

    .line 3
    invoke-direct {p0, p1, v0}, Lcom/github/florent37/expansionpanel/viewgroup/ExpansionsViewGroupConstraintLayout;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 4
    invoke-direct {p0, p1, p2}, Landroidx/constraintlayout/widget/ConstraintLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 5
    new-instance v0, Lcom/github/florent37/expansionpanel/viewgroup/ExpansionViewGroupManager;

    invoke-direct {v0, p0}, Lcom/github/florent37/expansionpanel/viewgroup/ExpansionViewGroupManager;-><init>(Landroid/view/ViewGroup;)V

    iput-object v0, p0, Lcom/github/florent37/expansionpanel/viewgroup/ExpansionsViewGroupConstraintLayout;->expansionViewGroupManager:Lcom/github/florent37/expansionpanel/viewgroup/ExpansionViewGroupManager;

    .line 6
    invoke-direct {p0, p1, p2}, Lcom/github/florent37/expansionpanel/viewgroup/ExpansionsViewGroupConstraintLayout;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 7
    invoke-direct {p0, p1, p2, p3}, Landroidx/constraintlayout/widget/ConstraintLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 8
    new-instance p3, Lcom/github/florent37/expansionpanel/viewgroup/ExpansionViewGroupManager;

    invoke-direct {p3, p0}, Lcom/github/florent37/expansionpanel/viewgroup/ExpansionViewGroupManager;-><init>(Landroid/view/ViewGroup;)V

    iput-object p3, p0, Lcom/github/florent37/expansionpanel/viewgroup/ExpansionsViewGroupConstraintLayout;->expansionViewGroupManager:Lcom/github/florent37/expansionpanel/viewgroup/ExpansionViewGroupManager;

    .line 9
    invoke-direct {p0, p1, p2}, Lcom/github/florent37/expansionpanel/viewgroup/ExpansionsViewGroupConstraintLayout;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method private init(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    if-eqz p2, :cond_0

    sget-object v0, Lcom/github/florent37/expansionpanel/R$styleable;->ExpansionsViewGroupConstraintLayout:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p2, p0, Lcom/github/florent37/expansionpanel/viewgroup/ExpansionsViewGroupConstraintLayout;->expansionViewGroupManager:Lcom/github/florent37/expansionpanel/viewgroup/ExpansionViewGroupManager;

    sget v0, Lcom/github/florent37/expansionpanel/R$styleable;->ExpansionsViewGroupConstraintLayout_expansion_openOnlyOne:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    invoke-virtual {p2, v0}, Lcom/github/florent37/expansionpanel/viewgroup/ExpansionViewGroupManager;->setOpenOnlyOne(Z)V

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    :cond_0
    return-void
.end method


# virtual methods
.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 0

    invoke-super {p0, p1, p2, p3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    iget-object p1, p0, Lcom/github/florent37/expansionpanel/viewgroup/ExpansionsViewGroupConstraintLayout;->expansionViewGroupManager:Lcom/github/florent37/expansionpanel/viewgroup/ExpansionViewGroupManager;

    invoke-virtual {p1}, Lcom/github/florent37/expansionpanel/viewgroup/ExpansionViewGroupManager;->onViewAdded()V

    return-void
.end method

.method public onAttachedToWindow()V
    .locals 1

    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    iget-object v0, p0, Lcom/github/florent37/expansionpanel/viewgroup/ExpansionsViewGroupConstraintLayout;->expansionViewGroupManager:Lcom/github/florent37/expansionpanel/viewgroup/ExpansionViewGroupManager;

    invoke-virtual {v0}, Lcom/github/florent37/expansionpanel/viewgroup/ExpansionViewGroupManager;->onViewAdded()V

    return-void
.end method
