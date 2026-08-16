.class public final Lt4/a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Lk0/i;
.end annotation


# static fields
.field public static final a:I = 0x12c

.field public static final b:I = 0x2f8


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;)V
    .locals 0

    invoke-static {p0}, Lt4/a;->e(Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;)V

    return-void
.end method

.method public static b(Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;Ljava/lang/String;)Lcom/itsmagic/engine/Activities/Editor/Panels/AIAgent/AIAgentChatPanel;
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "area",
            "sessionId"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p0, :cond_2

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p0}, Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;->B1()I

    move-result v2

    if-ge v1, v2, :cond_2

    invoke-virtual {p0, v1}, Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;->A1(I)Lcom/itsmagic/engine/Activities/Editor/Interface/Panel/Panel;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lcom/itsmagic/engine/Activities/Editor/Interface/Panel/Panel;->M()Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;

    move-result-object v3

    instance-of v3, v3, Lcom/itsmagic/engine/Activities/Editor/Panels/AIAgent/AIAgentChatPanel;

    if-eqz v3, :cond_1

    invoke-virtual {v2}, Lcom/itsmagic/engine/Activities/Editor/Interface/Panel/Panel;->M()Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;

    move-result-object v2

    check-cast v2, Lcom/itsmagic/engine/Activities/Editor/Panels/AIAgent/AIAgentChatPanel;

    invoke-virtual {v2}, Lcom/itsmagic/engine/Activities/Editor/Panels/AIAgent/AIAgentChatPanel;->S1()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    return-object v2

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return-object v0
.end method

.method public static c()Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;
    .locals 3

    const/4 v0, 0x0

    :goto_0
    invoke-static {}, LN7/c;->D()Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController;->M()I

    move-result v1

    if-ge v0, v1, :cond_1

    invoke-static {}, LN7/c;->D()Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController;->O(I)Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;

    move-result-object v1

    invoke-static {v1}, Lt4/a;->g(Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public static d(Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;)Lcom/itsmagic/engine/Activities/Editor/Panels/AIAgent/AIAgentWelcomePanel;
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "area"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p0}, Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;->B1()I

    move-result v2

    if-ge v1, v2, :cond_2

    invoke-virtual {p0, v1}, Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;->A1(I)Lcom/itsmagic/engine/Activities/Editor/Interface/Panel/Panel;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lcom/itsmagic/engine/Activities/Editor/Interface/Panel/Panel;->M()Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;

    move-result-object v3

    instance-of v3, v3, Lcom/itsmagic/engine/Activities/Editor/Panels/AIAgent/AIAgentWelcomePanel;

    if-eqz v3, :cond_1

    invoke-virtual {v2}, Lcom/itsmagic/engine/Activities/Editor/Interface/Panel/Panel;->M()Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;

    move-result-object v2

    check-cast v2, Lcom/itsmagic/engine/Activities/Editor/Panels/AIAgent/AIAgentWelcomePanel;

    invoke-virtual {v2}, Lcom/itsmagic/engine/Activities/Editor/Panels/AIAgent/AIAgentWelcomePanel;->s1()Z

    move-result v3

    if-eqz v3, :cond_1

    return-object v2

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method public static e(Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "area"
        }
    .end annotation

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->M()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {}, LN7/c;->D()Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController;

    move-result-object v0

    invoke-virtual {p0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->M()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController;->w(Landroid/view/View;)V

    :cond_1
    invoke-static {p0}, Lt4/a;->d(Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;)Lcom/itsmagic/engine/Activities/Editor/Panels/AIAgent/AIAgentWelcomePanel;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p0, v0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->D0(Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;)V

    :cond_2
    return-void
.end method

.method public static f(Ljava/lang/String;)Lcom/itsmagic/engine/Activities/Editor/Panels/AIAgent/AIAgentChatPanel;
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "sessionId"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p0, :cond_3

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Lt4/a;->c()Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;

    move-result-object v1

    if-nez v1, :cond_1

    invoke-static {}, Lt4/a;->j()Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;

    move-result-object v1

    :cond_1
    invoke-static {v1, p0}, Lt4/a;->b(Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;Ljava/lang/String;)Lcom/itsmagic/engine/Activities/Editor/Panels/AIAgent/AIAgentChatPanel;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {v1, v2}, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->D0(Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;)V

    invoke-static {v1}, Lt4/a;->e(Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;)V

    return-object v2

    :cond_2
    invoke-static {p0}, Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/d;->j(Ljava/lang/String;)Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/d$b;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/d$b;->d()Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/r;

    move-result-object v3

    if-eqz v3, :cond_3

    new-instance v0, Lcom/itsmagic/engine/Activities/Editor/Panels/AIAgent/AIAgentChatPanel;

    invoke-virtual {v2}, Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/d$b;->j()Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/g;

    move-result-object v3

    invoke-direct {v0, v3, p0}, Lcom/itsmagic/engine/Activities/Editor/Panels/AIAgent/AIAgentChatPanel;-><init>(Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/g;Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/d$b;->d()Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/r;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/itsmagic/engine/Activities/Editor/Panels/AIAgent/AIAgentChatPanel;->P1(Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/r;)V

    invoke-virtual {v1, v0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->g(Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;)Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;

    new-instance p0, Lt4/a$c;

    invoke-direct {p0, v1, v0}, Lt4/a$c;-><init>(Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;Lcom/itsmagic/engine/Activities/Editor/Panels/AIAgent/AIAgentChatPanel;)V

    invoke-static {p0}, LN7/c;->c0(Ljava/lang/Runnable;)V

    :cond_3
    :goto_0
    return-object v0
.end method

.method public static g(Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;)Z
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "area"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    move v1, v0

    :goto_0
    invoke-virtual {p0}, Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;->B1()I

    move-result v2

    if-ge v1, v2, :cond_4

    invoke-virtual {p0, v1}, Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;->A1(I)Lcom/itsmagic/engine/Activities/Editor/Interface/Panel/Panel;

    move-result-object v2

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v2}, Lcom/itsmagic/engine/Activities/Editor/Interface/Panel/Panel;->M()Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;

    move-result-object v2

    instance-of v3, v2, Lcom/itsmagic/engine/Activities/Editor/Panels/AIAgent/AIAgentWelcomePanel;

    const/4 v4, 0x1

    if-eqz v3, :cond_2

    move-object v3, v2

    check-cast v3, Lcom/itsmagic/engine/Activities/Editor/Panels/AIAgent/AIAgentWelcomePanel;

    invoke-virtual {v3}, Lcom/itsmagic/engine/Activities/Editor/Panels/AIAgent/AIAgentWelcomePanel;->s1()Z

    move-result v3

    if-eqz v3, :cond_2

    return v4

    :cond_2
    instance-of v2, v2, Lcom/itsmagic/engine/Activities/Editor/Panels/AIAgent/AIAgentChatPanel;

    if-eqz v2, :cond_3

    return v4

    :cond_3
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    return v0
.end method

.method public static h(Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/g;)Lcom/itsmagic/engine/Activities/Editor/Panels/AIAgent/AIAgentChatPanel;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "specialist"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lt4/a;->i(Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/g;Ljava/lang/String;)Lcom/itsmagic/engine/Activities/Editor/Panels/AIAgent/AIAgentChatPanel;

    move-result-object p0

    return-object p0
.end method

.method public static i(Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/g;Ljava/lang/String;)Lcom/itsmagic/engine/Activities/Editor/Panels/AIAgent/AIAgentChatPanel;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "specialist",
            "sessionId"
        }
    .end annotation

    invoke-static {}, Lt4/a;->j()Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    if-nez p1, :cond_1

    new-instance p1, Lcom/itsmagic/engine/Activities/Editor/Panels/AIAgent/AIAgentChatPanel;

    invoke-direct {p1, p0}, Lcom/itsmagic/engine/Activities/Editor/Panels/AIAgent/AIAgentChatPanel;-><init>(Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/g;)V

    goto :goto_0

    :cond_1
    new-instance v1, Lcom/itsmagic/engine/Activities/Editor/Panels/AIAgent/AIAgentChatPanel;

    invoke-direct {v1, p0, p1}, Lcom/itsmagic/engine/Activities/Editor/Panels/AIAgent/AIAgentChatPanel;-><init>(Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/g;Ljava/lang/String;)V

    move-object p1, v1

    :goto_0
    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->g(Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;)Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;

    new-instance p0, Lt4/a$b;

    invoke-direct {p0, v0, p1}, Lt4/a$b;-><init>(Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;Lcom/itsmagic/engine/Activities/Editor/Panels/AIAgent/AIAgentChatPanel;)V

    invoke-static {p0}, LN7/c;->c0(Ljava/lang/Runnable;)V

    return-object p1
.end method

.method public static j()Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;
    .locals 5

    invoke-static {}, LN7/c;->h0()V

    invoke-static {}, Lt4/a;->c()Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {v0}, Lt4/a;->e(Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;)V

    return-object v0

    :cond_0
    new-instance v0, Lcom/itsmagic/engine/Activities/Editor/Panels/AIAgent/AIAgentWelcomePanel;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/itsmagic/engine/Activities/Editor/Panels/AIAgent/AIAgentWelcomePanel;-><init>(Z)V

    const/16 v1, 0x12c

    invoke-static {v1}, LN7/c;->g(I)F

    move-result v1

    const/16 v2, 0x2f8

    invoke-static {v2}, LN7/c;->f(I)F

    move-result v2

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    invoke-static {v0, v3, v4, v1, v2}, Lr4/a;->n(Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;FFFF)Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;

    move-result-object v0

    new-instance v1, Lt4/a$a;

    invoke-direct {v1, v0}, Lt4/a$a;-><init>(Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;)V

    invoke-static {v1}, LN7/c;->c0(Ljava/lang/Runnable;)V

    return-object v0
.end method
