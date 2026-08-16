.class public Lk5/d$z$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lk5/d$z;->a(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

.field public final synthetic c:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;

.field public final synthetic d:Lk5/d$z;


# direct methods
.method public constructor <init>(Lk5/d$z;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
            "this$1",
            "val$gameObject",
            "val$rect"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lk5/d$z$a;->d:Lk5/d$z;

    iput-object p2, p0, Lk5/d$z$a;->b:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    iput-object p3, p0, Lk5/d$z$a;->c:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    iget-object v0, p0, Lk5/d$z$a;->b:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    sget-object v1, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component$e;->UIAlignment:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component$e;

    invoke-virtual {v0, v1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->c0(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component$e;)Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;

    move-result-object v0

    check-cast v0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIAlignment;

    if-nez v0, :cond_0

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIAlignment;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIAlignment;-><init>()V

    iget-object v1, p0, Lk5/d$z$a;->b:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    invoke-virtual {v1, v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->r(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;)V

    :cond_0
    iget-object v1, p0, Lk5/d$z$a;->b:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    sget-object v2, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component$e;->UIFitParent:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component$e;

    invoke-virtual {v1, v2}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->c0(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component$e;)Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;

    move-result-object v1

    check-cast v1, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIFitParent;

    const/4 v2, 0x1

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIFitParent;->isFitWidth()Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_1

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIFitParent;->isFitHeight()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v0, v2}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIAlignment;->setTopLeftEnabled(Z)V

    invoke-virtual {v0, v4}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIAlignment;->setTopCenterEnabled(Z)V

    invoke-virtual {v0, v2}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIAlignment;->setTopRightEnabled(Z)V

    invoke-virtual {v0, v4}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIAlignment;->setCenterLeftEnabled(Z)V

    invoke-virtual {v0, v4}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIAlignment;->setCenterEnabled(Z)V

    invoke-virtual {v0, v4}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIAlignment;->setCenterRightEnabled(Z)V

    invoke-virtual {v0, v2}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIAlignment;->setBottomLeftEnabled(Z)V

    invoke-virtual {v0, v4}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIAlignment;->setBottomCenterEnabled(Z)V

    invoke-virtual {v0, v2}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIAlignment;->setBottomRightEnabled(Z)V

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIFitParent;->isFitWidth()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {v0, v2}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIAlignment;->setTopLeftEnabled(Z)V

    invoke-virtual {v0, v4}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIAlignment;->setTopCenterEnabled(Z)V

    invoke-virtual {v0, v2}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIAlignment;->setTopRightEnabled(Z)V

    invoke-virtual {v0, v4}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIAlignment;->setCenterLeftEnabled(Z)V

    invoke-virtual {v0, v4}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIAlignment;->setCenterEnabled(Z)V

    invoke-virtual {v0, v4}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIAlignment;->setCenterRightEnabled(Z)V

    invoke-virtual {v0, v4}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIAlignment;->setBottomLeftEnabled(Z)V

    invoke-virtual {v0, v4}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIAlignment;->setBottomCenterEnabled(Z)V

    invoke-virtual {v0, v4}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIAlignment;->setBottomRightEnabled(Z)V

    goto :goto_0

    :cond_2
    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIFitParent;->isFitHeight()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {v0, v2}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIAlignment;->setTopLeftEnabled(Z)V

    invoke-virtual {v0, v4}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIAlignment;->setTopCenterEnabled(Z)V

    invoke-virtual {v0, v4}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIAlignment;->setTopRightEnabled(Z)V

    invoke-virtual {v0, v4}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIAlignment;->setCenterLeftEnabled(Z)V

    invoke-virtual {v0, v4}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIAlignment;->setCenterEnabled(Z)V

    invoke-virtual {v0, v4}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIAlignment;->setCenterRightEnabled(Z)V

    invoke-virtual {v0, v2}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIAlignment;->setBottomLeftEnabled(Z)V

    invoke-virtual {v0, v4}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIAlignment;->setBottomCenterEnabled(Z)V

    invoke-virtual {v0, v4}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIAlignment;->setBottomRightEnabled(Z)V

    :cond_3
    :goto_0
    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->destroyComponent()V

    :cond_4
    invoke-static {}, LN7/c;->t()Landroid/content/Context;

    move-result-object v1

    new-instance v3, Lk5/d$z$a$a;

    invoke-direct {v3, p0}, Lk5/d$z$a$a;-><init>(Lk5/d$z$a;)V

    invoke-virtual {v0, v1, v3}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIAlignment;->getInspectorEntries(Landroid/content/Context;LT9/a;)Ljava/util/List;

    move-result-object v0

    const-string v1, "Align"

    const/16 v3, 0x88

    const/16 v4, 0x7d

    invoke-static {v1, v3, v4, v0}, LG4/c;->x1(Ljava/lang/String;IILjava/util/List;)LG4/c;

    move-result-object v0

    iget-object v1, v0, LG4/c;->Z:Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;

    invoke-virtual {v1, v2}, Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;->F1(Z)V

    iget-object v1, v0, LG4/c;->Z:Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;

    invoke-virtual {v1, v2}, Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;->G1(Z)V

    iget-object v0, v0, LG4/c;->Z:Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->T()Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;

    return-void
.end method
