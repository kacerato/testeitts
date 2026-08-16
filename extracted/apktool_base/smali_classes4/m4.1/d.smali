.class public Lm4/d;
.super Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;
.source "SourceFile"


# direct methods
.method public constructor <init>(FFFF)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "x",
            "y",
            "width",
            "height"
        }
    .end annotation

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;-><init>(FFFF)V

    invoke-virtual {p0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->T()Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;->N1(Z)V

    return-void
.end method


# virtual methods
.method public g(Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;)Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "panel"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->a1(Z)V

    invoke-super {p0, p1}, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->g(Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;)Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;

    move-result-object p1

    return-object p1
.end method

.method public h(Lcom/itsmagic/engine/Activities/Editor/Interface/Panel/Panel;)Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "panel"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Panel/Panel;->t0(Z)V

    invoke-super {p0, p1}, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->h(Lcom/itsmagic/engine/Activities/Editor/Interface/Panel/Panel;)Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;

    move-result-object p1

    return-object p1
.end method

.method public i(Ljava/util/List;)Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "panel"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/itsmagic/engine/Activities/Editor/Interface/Panel/Panel;",
            ">;)",
            "Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itsmagic/engine/Activities/Editor/Interface/Panel/Panel;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/itsmagic/engine/Activities/Editor/Interface/Panel/Panel;->t0(Z)V

    goto :goto_0

    :cond_0
    invoke-super {p0, p1}, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->i(Ljava/util/List;)Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;

    move-result-object p1

    return-object p1
.end method

.method public s1(Landroid/widget/FrameLayout;Landroid/app/Activity;Landroid/content/Context;Landroid/view/LayoutInflater;Li4/a;)Landroid/view/View;
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "screenArea",
            "activity",
            "context",
            "layoutInflater",
            "editor3DScreen"
        }
    .end annotation

    const v6, 0x7f0c009e

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-super/range {v0 .. v7}, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->V(Landroid/widget/FrameLayout;Landroid/app/Activity;Landroid/content/Context;Landroid/view/LayoutInflater;Li4/a;IZ)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method
