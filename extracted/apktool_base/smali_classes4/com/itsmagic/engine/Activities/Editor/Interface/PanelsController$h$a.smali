.class public Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController$h$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController$h;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController$h;


# direct methods
.method public constructor <init>(Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController$h;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$1"
        }
    .end annotation

    iput-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController$h$a;->b:Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController$h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    const/4 v0, 0x0

    invoke-static {v0}, Lrc/a;->n(I)Ltc/h;

    move-result-object v1

    invoke-virtual {v1}, Ltc/h;->k()Z

    move-result v2

    if-nez v2, :cond_3

    invoke-virtual {v1}, Ltc/h;->k()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v1}, Ltc/h;->q()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v1}, Ltc/h;->t()Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController$h$a;->b:Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController$h;

    iget-object v2, v2, Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController$h;->b:Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController;

    invoke-static {v2}, Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController;->j(Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_3

    iget-object v2, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController$h$a;->b:Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController$h;

    iget-object v2, v2, Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController$h;->b:Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController;

    invoke-static {v2}, Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController;->j(Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;

    :try_start_0
    invoke-virtual {v2}, Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;->p1()F

    move-result v3

    const/high16 v4, 0x3f800000    # 1.0f

    cmpl-float v3, v3, v4

    if-ltz v3, :cond_2

    invoke-virtual {v2}, Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;->v1()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {v2, v1}, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->b0(Ltc/h;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v2}, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->u0()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_2
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method
