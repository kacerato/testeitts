.class public Lp4/b;
.super Lcom/itsmagic/engine/Activities/Editor/Interface/Panel/Panel;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 4

    new-instance v0, Lo4/g;

    new-instance v1, Lbd/a;

    const-string v2, "Drop here"

    const-string v3, "Solte aqui"

    invoke-direct {v1, v2, v3}, Lbd/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Lbd/a;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v2, v1}, Lo4/g;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Panel/Panel;-><init>(Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;)V

    return-void
.end method


# virtual methods
.method public p0(Landroid/widget/LinearLayout;Landroid/app/Activity;Landroid/content/Context;Landroid/view/LayoutInflater;Li4/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "parent",
            "activity",
            "context",
            "layoutInflater",
            "editor3DScreen"
        }
    .end annotation

    return-void
.end method

.method public w0(Landroid/widget/LinearLayout;Landroid/app/Activity;Landroid/content/Context;Landroid/view/LayoutInflater;Li4/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "parent",
            "activity",
            "context",
            "layoutInflater",
            "editor3DScreen"
        }
    .end annotation

    return-void
.end method

.method public x(Landroid/widget/LinearLayout;Landroid/app/Activity;Landroid/content/Context;Landroid/view/LayoutInflater;Li4/a;Lp4/c;Z)Landroid/widget/LinearLayout;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "parent",
            "activity",
            "context",
            "layoutInflater",
            "editor3DScreen",
            "panelToPanelArea",
            "rightLeft"
        }
    .end annotation

    if-eqz p7, :cond_0

    const p2, 0x7f0c0083

    goto :goto_0

    :cond_0
    const p2, 0x7f0c0084

    :goto_0
    const/4 p5, 0x0

    invoke-virtual {p4, p2, p5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/LinearLayout;

    iput-object p2, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Panel/Panel;->b:Landroid/widget/LinearLayout;

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iget-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Panel/Panel;->b:Landroid/widget/LinearLayout;

    invoke-static {p1, p3}, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/a;->c(Landroid/view/View;Landroid/content/Context;)V

    iget-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Panel/Panel;->b:Landroid/widget/LinearLayout;

    return-object p1
.end method

.method public y(Landroid/widget/LinearLayout;Landroid/app/Activity;Landroid/content/Context;Landroid/view/LayoutInflater;Li4/a;Lp4/c;)Landroid/view/View;
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
            "parent",
            "activity",
            "context",
            "layoutInflater",
            "editor3DScreen",
            "upperCommunication"
        }
    .end annotation

    const p2, 0x7f0c0082

    const/4 p3, 0x0

    invoke-virtual {p4, p2, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Panel/Panel;->c:Landroid/view/View;

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iget-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Panel/Panel;->c:Landroid/view/View;

    const p2, 0x7f090544

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Panel/Panel;->e:Landroid/widget/TextView;

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Panel/Panel;->S()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    iget-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Panel/Panel;->c:Landroid/view/View;

    return-object p1
.end method
