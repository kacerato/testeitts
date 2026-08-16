.class public Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController$g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController;->n0()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController;


# direct methods
.method public constructor <init>(Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    iput-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController$g;->b:Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController$g;->b:Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController;

    invoke-static {v0}, Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController;->m(Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController;)Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/Area;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController$g;->b:Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController;

    invoke-static {v0}, Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController;->m(Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController;)Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/Area;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController;->h(Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController;Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/Area;)V

    :cond_0
    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController$g;->b:Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController;

    invoke-static {v0}, Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController;->j(Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController$g;->b:Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController;

    invoke-static {v1}, Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController;->j(Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController$g;->b:Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController;

    invoke-static {v1}, Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController;->j(Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;

    invoke-static {v1, v2}, Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController;->i(Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController;Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method
