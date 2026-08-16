.class public Lbelka/us/androidtoggleswitch/widgets/ToggleSwitch;
.super Lh/a;
.source "SourceFile"


# instance fields
.field public o:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lbelka/us/androidtoggleswitch/widgets/ToggleSwitch;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2}, Lh/a;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method private setSeparatorVisibility(I)V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Lh/a;->getToggleSwitchesContainer()Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_2

    new-instance v1, Li/a;

    invoke-virtual {p0}, Lh/a;->getToggleSwitchesContainer()Landroid/widget/LinearLayout;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-direct {v1, v2}, Li/a;-><init>(Landroid/view/View;)V

    if-eq v0, p1, :cond_1

    add-int/lit8 v2, p1, -0x1

    if-ne v0, v2, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {v1}, Li/a;->e()V

    goto :goto_2

    :cond_1
    :goto_1
    invoke-virtual {v1}, Li/a;->d()V

    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method


# virtual methods
.method public d()V
    .locals 1

    invoke-super {p0}, Lh/a;->d()V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lbelka/us/androidtoggleswitch/widgets/ToggleSwitch;->setCheckedTogglePosition(I)V

    return-void
.end method

.method public getCheckedTogglePosition()I
    .locals 1

    iget v0, p0, Lbelka/us/androidtoggleswitch/widgets/ToggleSwitch;->o:I

    return v0
.end method

.method public j(I)Z
    .locals 1

    iget v0, p0, Lbelka/us/androidtoggleswitch/widgets/ToggleSwitch;->o:I

    if-ne v0, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public o(I)V
    .locals 0

    invoke-virtual {p0, p1}, Lbelka/us/androidtoggleswitch/widgets/ToggleSwitch;->setCheckedTogglePosition(I)V

    return-void
.end method

.method public r(IZ)V
    .locals 0

    invoke-virtual {p0}, Lh/a;->f()V

    invoke-virtual {p0, p1}, Lh/a;->a(I)V

    invoke-direct {p0, p1}, Lbelka/us/androidtoggleswitch/widgets/ToggleSwitch;->setSeparatorVisibility(I)V

    iput p1, p0, Lbelka/us/androidtoggleswitch/widgets/ToggleSwitch;->o:I

    if-eqz p2, :cond_0

    invoke-virtual {p0, p1}, Lh/a;->n(I)V

    :cond_0
    return-void
.end method

.method public setCheckedTogglePosition(I)V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lbelka/us/androidtoggleswitch/widgets/ToggleSwitch;->r(IZ)V

    return-void
.end method
