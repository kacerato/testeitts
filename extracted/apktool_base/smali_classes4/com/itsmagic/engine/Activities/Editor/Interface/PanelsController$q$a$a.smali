.class public Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController$q$a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController$q$a;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController$q$a;


# direct methods
.method public constructor <init>(Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController$q$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$2"
        }
    .end annotation

    iput-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController$q$a$a;->b:Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController$q$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController$q$a$a;->b:Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController$q$a;

    iget-object v0, v0, Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController$q$a;->b:Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController$q;

    iget-object v0, v0, Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController$q;->c:Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController;

    invoke-static {v0}, Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController;->m(Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController;)Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/Area;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController$q$a$a;->b:Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController$q$a;

    iget-object v0, v0, Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController$q$a;->b:Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController$q;

    iget-object v0, v0, Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController$q;->c:Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController;

    invoke-static {v0}, Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController;->m(Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController;)Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/Area;

    move-result-object v0

    iget-object v1, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController$q$a$a;->b:Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController$q$a;

    iget-object v1, v1, Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController$q$a;->b:Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController$q;

    iget-object v1, v1, Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController$q;->b:Lo4/e;

    invoke-virtual {v0, v1}, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/Area;->c(Lo4/e;)V

    :cond_0
    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController$q$a$a;->b:Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController$q$a;

    iget-object v0, v0, Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController$q$a;->b:Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController$q;

    iget-object v0, v0, Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController$q;->c:Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController;

    invoke-static {v0}, Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController;->j(Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;

    iget-object v2, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController$q$a$a;->b:Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController$q$a;

    iget-object v2, v2, Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController$q$a;->b:Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController$q;

    iget-object v2, v2, Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController$q;->b:Lo4/e;

    invoke-virtual {v1, v2}, Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;->k(Lo4/e;)V

    new-instance v2, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    iget-object v1, v1, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->panelList:Ljava/util/List;

    invoke-direct {v2, v1}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;-><init>(Ljava/util/Collection;)V

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/itsmagic/engine/Activities/Editor/Interface/Panel/Panel;

    invoke-virtual {v2}, Lcom/itsmagic/engine/Activities/Editor/Interface/Panel/Panel;->M()Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-virtual {v2}, Lcom/itsmagic/engine/Activities/Editor/Interface/Panel/Panel;->M()Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;

    move-result-object v3

    invoke-virtual {v3}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->r0()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {v2}, Lcom/itsmagic/engine/Activities/Editor/Interface/Panel/Panel;->o0()V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController$q$a$a;->b:Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController$q$a;

    iget-object v0, v0, Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController$q$a;->b:Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController$q;

    iget-object v0, v0, Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController$q;->c:Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController;->q0()V

    invoke-static {}, Lc8/b;->k()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {}, Lc8/b;->h()V

    :cond_4
    return-void
.end method
