.class public Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController;->d0(Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;

.field public final synthetic c:Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController;


# direct methods
.method public constructor <init>(Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController;Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$0",
            "val$panelArea"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController$e;->c:Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController;

    iput-object p2, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController$e;->b:Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController$e;->c:Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController;

    invoke-static {v0}, Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController;->k(Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController;)Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController$e;->c:Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController;

    invoke-static {v0}, Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController;->k(Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController;)Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->L0()Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;

    :cond_0
    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController$e;->c:Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController;

    iget-object v1, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController$e;->b:Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;

    invoke-static {v0, v1}, Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController;->l(Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController;Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;)Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController$e;->b:Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController$e;->c:Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController;

    invoke-static {v0}, Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController;->m(Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController;)Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/Area;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController$e;->c:Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController;

    invoke-static {v0}, Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController;->m(Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController;)Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/Area;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/Area;->m()V

    :cond_1
    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController$e;->b:Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->K0()Z

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController$e;->c:Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController;

    iget-object v1, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController$e;->b:Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;

    invoke-virtual {v0, v1}, Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController;->x(Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;)V

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController$e;->b:Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;

    iget-object v1, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController$e;->c:Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController;

    invoke-static {v1}, Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController;->g(Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController;)Lk4/c;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->r0(Lk4/c;)V

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController$e;->c:Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController;->p0()V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController$e;->c:Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController;

    invoke-static {v0}, Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController;->m(Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController;)Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/Area;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController$e;->c:Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController;

    invoke-static {v0}, Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController;->m(Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController;)Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/Area;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/Area;->K()V

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController$e;->c:Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController;

    invoke-static {v0}, Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController;->m(Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController;)Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/Area;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/Area;->I()V

    :cond_3
    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController$e;->c:Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController;->q0()V

    :goto_0
    return-void
.end method
