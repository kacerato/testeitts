.class public Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController$r;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController;->A0(LK8/c$a;ZLjava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Z

.field public final synthetic c:LK8/c$a;

.field public final synthetic d:Ljava/lang/Runnable;

.field public final synthetic e:Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController;


# direct methods
.method public constructor <init>(Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController;ZLK8/c$a;Ljava/lang/Runnable;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            "this$0",
            "val$isAreaMode",
            "val$orientation",
            "val$postRunnable"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController$r;->e:Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController;

    iput-boolean p2, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController$r;->b:Z

    iput-object p3, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController$r;->c:LK8/c$a;

    iput-object p4, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController$r;->d:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController$r;->e:Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController;

    invoke-static {v0}, Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController;->m(Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController;)Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/Area;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController$r;->e:Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController;

    invoke-static {v0}, Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController;->m(Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController;)Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/Area;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/Area;->t()V

    :cond_0
    const/4 v0, 0x0

    :goto_0
    :try_start_0
    iget-object v1, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController$r;->e:Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController;

    invoke-static {v1}, Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController;->j(Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController$r;->e:Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController;

    invoke-static {v1}, Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController;->j(Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;

    invoke-virtual {v1}, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->n0()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_1
    new-instance v0, Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController$r$a;

    invoke-direct {v0, p0}, Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController$r$a;-><init>(Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController$r;)V

    invoke-static {v0}, LK8/a;->I(Ljava/lang/Runnable;)V

    return-void
.end method
