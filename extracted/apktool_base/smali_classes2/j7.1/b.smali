.class public Lj7/b;
.super LF7/i;
.source "SourceFile"


# instance fields
.field public m:Ljava/lang/String;

.field public n:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;LF7/j;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "path",
            "iconDrawer"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, LF7/i;-><init>(Ljava/lang/String;LF7/j;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lj7/b;->m:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public A(Landroid/content/Context;Ll7/a;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "viewHolder"
        }
    .end annotation

    if-eqz p1, :cond_9

    if-nez p2, :cond_0

    goto/16 :goto_5

    :cond_0
    iget-object v0, p2, Ll7/a;->j:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p2, Ll7/a;->e:Landroid/widget/FrameLayout;

    if-eqz v1, :cond_3

    if-eqz v0, :cond_2

    sget-object v1, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme$T;->TREE_LIST_ROW2:LAc/b;

    :goto_1
    invoke-static {v1}, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme;->i(LAc/b;)I

    move-result v1

    goto :goto_2

    :cond_2
    sget-object v1, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme$T;->CARD:LAc/b;

    goto :goto_1

    :goto_2
    iget-object v2, p2, Ll7/a;->e:Landroid/widget/FrameLayout;

    invoke-static {v2, p1, v1}, LVc/e;->t(Landroid/view/View;Landroid/content/Context;I)V

    :cond_3
    iget-object v1, p2, Ll7/a;->i:Landroid/view/View;

    if-eqz v1, :cond_5

    if-eqz v0, :cond_4

    sget-object v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme$T;->CARD:LAc/b;

    :goto_3
    invoke-static {v0}, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme;->i(LAc/b;)I

    move-result v0

    goto :goto_4

    :cond_4
    sget-object v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme$T;->TREE_LIST_ROW2:LAc/b;

    goto :goto_3

    :goto_4
    iget-object v1, p2, Ll7/a;->i:Landroid/view/View;

    invoke-static {v1, p1, v0}, LVc/e;->t(Landroid/view/View;Landroid/content/Context;I)V

    :cond_5
    iget-object v0, p2, Ll7/a;->g:Landroid/view/View;

    if-eqz v0, :cond_6

    sget-object v1, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme$T;->TREE_LIST_ROW2:LAc/b;

    invoke-static {v1}, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme;->i(LAc/b;)I

    move-result v1

    invoke-static {v0, p1, v1}, LVc/e;->t(Landroid/view/View;Landroid/content/Context;I)V

    :cond_6
    iget-object p1, p2, Ll7/a;->b:Landroid/widget/TextView;

    if-eqz p1, :cond_7

    sget-object v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme$T;->HIGH_TEXT_COLOR:LAc/b;

    invoke-static {v0}, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme;->i(LAc/b;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_7
    iget-object p1, p2, Ll7/a;->j:Landroid/widget/TextView;

    if-eqz p1, :cond_8

    sget-object v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme$T;->MID_TEXT_COLOR:LAc/b;

    invoke-static {v0}, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme;->i(LAc/b;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_8
    iget-object p1, p2, Ll7/a;->f:Landroid/view/View;

    instance-of p2, p1, Landroid/widget/ImageView;

    if-eqz p2, :cond_9

    check-cast p1, Landroid/widget/ImageView;

    sget-object p2, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme$T;->HIGH_ICON_TINT:LAc/b;

    invoke-static {p2}, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme;->i(LAc/b;)I

    move-result p2

    invoke-static {p2}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    :cond_9
    :goto_5
    return-void
.end method

.method public B(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "allowLongPressSimulationAtTittleClick"
        }
    .end annotation

    iput-boolean p1, p0, Lj7/b;->n:Z

    return-void
.end method

.method public C(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "description"
        }
    .end annotation

    iput-object p1, p0, Lj7/b;->m:Ljava/lang/String;

    return-void
.end method

.method public c()Z
    .locals 1

    iget-boolean v0, p0, Lj7/b;->n:Z

    return v0
.end method

.method public f()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lj7/b;->m:Ljava/lang/String;

    return-object v0
.end method

.method public k()I
    .locals 1

    const/4 v0, -0x1

    return v0
.end method

.method public o(Landroid/content/Context;Landroid/view/ViewGroup;Landroid/view/LayoutInflater;)LF7/m;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "parent",
            "layoutInflater"
        }
    .end annotation

    new-instance p1, LF7/m;

    const v0, 0x7f0c01c5

    const/4 v1, 0x0

    invoke-virtual {p3, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    invoke-direct {p1, p2}, LF7/m;-><init>(Landroid/view/View;)V

    return-object p1
.end method

.method public u()Ljava/io/File;
    .locals 2

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, LF7/i;->a:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public v()I
    .locals 1

    sget-object v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme$T;->TREE_LIST_ROW1:LAc/b;

    invoke-static {v0}, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme;->i(LAc/b;)I

    move-result v0

    return v0
.end method

.method public w()I
    .locals 1

    const v0, 0x7f050188

    return v0
.end method

.method public x()I
    .locals 1

    sget-object v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme$T;->PRIMARY_DARK:LAc/b;

    invoke-static {v0}, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme;->i(LAc/b;)I

    move-result v0

    return v0
.end method

.method public y()I
    .locals 1

    sget-object v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme$T;->HIGH_TEXT_COLOR:LAc/b;

    invoke-static {v0}, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme;->i(LAc/b;)I

    move-result v0

    return v0
.end method

.method public z(Landroid/content/Context;Landroid/view/ViewGroup;Landroid/view/LayoutInflater;)Ll7/a;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "parent",
            "layoutInflater"
        }
    .end annotation

    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1}, Ljava/lang/RuntimeException;-><init>()V

    throw p1
.end method
