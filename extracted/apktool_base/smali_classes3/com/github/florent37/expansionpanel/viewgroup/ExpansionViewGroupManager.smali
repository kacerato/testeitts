.class Lcom/github/florent37/expansionpanel/viewgroup/ExpansionViewGroupManager;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private expansionLayoutCollection:Lcom/github/florent37/expansionpanel/viewgroup/ExpansionLayoutCollection;

.field private final viewGroup:Landroid/view/ViewGroup;


# direct methods
.method public constructor <init>(Landroid/view/ViewGroup;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/github/florent37/expansionpanel/viewgroup/ExpansionLayoutCollection;

    invoke-direct {v0}, Lcom/github/florent37/expansionpanel/viewgroup/ExpansionLayoutCollection;-><init>()V

    iput-object v0, p0, Lcom/github/florent37/expansionpanel/viewgroup/ExpansionViewGroupManager;->expansionLayoutCollection:Lcom/github/florent37/expansionpanel/viewgroup/ExpansionLayoutCollection;

    iput-object p1, p0, Lcom/github/florent37/expansionpanel/viewgroup/ExpansionViewGroupManager;->viewGroup:Landroid/view/ViewGroup;

    return-void
.end method

.method private findExpansionsViews(Landroid/view/View;)V
    .locals 3

    instance-of v0, p1, Lcom/github/florent37/expansionpanel/ExpansionLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/github/florent37/expansionpanel/viewgroup/ExpansionViewGroupManager;->expansionLayoutCollection:Lcom/github/florent37/expansionpanel/viewgroup/ExpansionLayoutCollection;

    check-cast p1, Lcom/github/florent37/expansionpanel/ExpansionLayout;

    invoke-virtual {v0, p1}, Lcom/github/florent37/expansionpanel/viewgroup/ExpansionLayoutCollection;->add(Lcom/github/florent37/expansionpanel/ExpansionLayout;)Lcom/github/florent37/expansionpanel/viewgroup/ExpansionLayoutCollection;

    goto :goto_1

    :cond_0
    instance-of v0, p1, Landroid/view/ViewGroup;

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    move-object v1, p1

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ge v0, v2, :cond_1

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/github/florent37/expansionpanel/viewgroup/ExpansionViewGroupManager;->findExpansionsViews(Landroid/view/View;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method


# virtual methods
.method public onViewAdded()V
    .locals 1

    iget-object v0, p0, Lcom/github/florent37/expansionpanel/viewgroup/ExpansionViewGroupManager;->viewGroup:Landroid/view/ViewGroup;

    invoke-direct {p0, v0}, Lcom/github/florent37/expansionpanel/viewgroup/ExpansionViewGroupManager;->findExpansionsViews(Landroid/view/View;)V

    return-void
.end method

.method public setOpenOnlyOne(Z)V
    .locals 1

    iget-object v0, p0, Lcom/github/florent37/expansionpanel/viewgroup/ExpansionViewGroupManager;->expansionLayoutCollection:Lcom/github/florent37/expansionpanel/viewgroup/ExpansionLayoutCollection;

    invoke-virtual {v0, p1}, Lcom/github/florent37/expansionpanel/viewgroup/ExpansionLayoutCollection;->openOnlyOne(Z)Lcom/github/florent37/expansionpanel/viewgroup/ExpansionLayoutCollection;

    return-void
.end method
