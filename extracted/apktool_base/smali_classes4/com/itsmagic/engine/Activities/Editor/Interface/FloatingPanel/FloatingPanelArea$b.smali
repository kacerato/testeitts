.class public Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lq4/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;->U(Landroid/widget/FrameLayout;Landroid/app/Activity;Landroid/content/Context;Landroid/view/LayoutInflater;Li4/a;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;


# direct methods
.method public constructor <init>(Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    iput-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea$b;->a:Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;Landroid/content/Context;Lq4/c;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "v",
            "context",
            "rightOption"
        }
    .end annotation

    iget-object p2, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea$b;->a:Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;

    iget-object p2, p2, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->panelList:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/itsmagic/engine/Activities/Editor/Interface/Panel/Panel;

    if-eqz p3, :cond_0

    invoke-virtual {p3}, Lcom/itsmagic/engine/Activities/Editor/Interface/Panel/Panel;->M()Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p3}, Lcom/itsmagic/engine/Activities/Editor/Interface/Panel/Panel;->M()Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;

    move-result-object p3

    invoke-virtual {p3}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->q0()Z

    move-result p3

    if-eqz p3, :cond_0

    sget-object p2, Lr4/a$e;->Below:Lr4/a$e;

    sget-object p3, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang$T;->CLOSE_PANEL:LAc/b;

    invoke-static {p3}, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang;->l(LAc/b;)Ljava/lang/String;

    move-result-object p3

    sget-object v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang$T;->ARE_YOU_SURE:LAc/b;

    invoke-static {v0}, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang;->l(LAc/b;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea$b$a;

    invoke-direct {v1, p0}, Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea$b$a;-><init>(Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea$b;)V

    invoke-static {p1, p2, p3, v0, v1}, LZ6/c;->w1(Landroid/view/View;Lr4/a$e;Ljava/lang/String;Ljava/lang/String;LZ6/c$i;)V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea$b;->a:Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;->X0(Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;Z)Z

    :goto_0
    return-void
.end method

.method public b(Landroid/view/View;Landroid/view/MotionEvent;Landroid/content/Context;Lq4/c;)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "v",
            "motionEvent",
            "context",
            "rightOption"
        }
    .end annotation

    const/4 p1, 0x0

    return p1
.end method

.method public c(Landroid/view/View;Landroid/content/Context;Lq4/c;)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "v",
            "context",
            "rightOption"
        }
    .end annotation

    const/4 p1, 0x0

    return p1
.end method
