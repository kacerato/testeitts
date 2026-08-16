.class public Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController$r$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LJAVARuntime/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController$r;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController$r;


# direct methods
.method public constructor <init>(Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController$r;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$1"
        }
    .end annotation

    iput-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController$r$a;->b:Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController$r;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    invoke-static {}, Lcom/itsmagic/engine/Core/Components/ProjectController/a;->d0()Z

    move-result v0

    if-eqz v0, :cond_7

    new-instance v0, Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController$SaveData;

    invoke-direct {v0}, Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController$SaveData;-><init>()V

    iget-object v1, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController$r$a;->b:Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController$r;

    iget-object v1, v1, Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController$r;->e:Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController;

    invoke-static {v1}, Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController;->m(Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController;)Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/Area;

    move-result-object v1

    iput-object v1, v0, Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController$SaveData;->totalArea:Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/Area;

    new-instance v1, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    invoke-direct {v1}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;-><init>()V

    iput-object v1, v0, Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController$SaveData;->floatingPanels:Ljava/util/List;

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    iget-object v3, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController$r$a;->b:Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController$r;

    iget-object v3, v3, Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController$r;->e:Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController;

    invoke-static {v3}, Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController;->j(Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    iget-object v3, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController$r$a;->b:Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController$r;

    iget-object v3, v3, Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController$r;->e:Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController;

    invoke-static {v3}, Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController;->j(Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->R()Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, v0, Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController$SaveData;->floatingPanels:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    iput v1, v0, Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController$SaveData;->version:I

    :try_start_0
    invoke-static {}, LX7/a;->m()Lcom/google/gson/Gson;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController$r$a;->b:Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController$r;

    iget-boolean v2, v1, Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController$r;->b:Z

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v2, :cond_4

    sget-object v2, Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController$j;->b:[I

    iget-object v1, v1, Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController$r;->c:LK8/c$a;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v1, v2, v1

    if-eq v1, v4, :cond_3

    if-eq v1, v3, :cond_2

    goto/16 :goto_2

    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, LW7/b;->f:LC8/a;

    iget-object v2, v2, LC8/a;->a:LD8/a;

    invoke-virtual {v2}, LD8/a;->p()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/editor_panels_area.config"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, LX7/a;->j(Ljava/lang/String;Ljava/lang/String;)Z

    goto/16 :goto_2

    :catch_0
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception v0

    goto :goto_1

    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, LW7/b;->f:LC8/a;

    iget-object v2, v2, LC8/a;->a:LD8/a;

    invoke-virtual {v2}, LD8/a;->p()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/editor_panels_portrait_area.config"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, LX7/a;->j(Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_2

    :cond_4
    sget-object v2, Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController$j;->b:[I

    iget-object v1, v1, Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController$r;->c:LK8/c$a;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v1, v2, v1

    if-eq v1, v4, :cond_6

    if-eq v1, v3, :cond_5

    goto :goto_2

    :cond_5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, LW7/b;->f:LC8/a;

    iget-object v2, v2, LC8/a;->a:LD8/a;

    invoke-virtual {v2}, LD8/a;->p()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/editor_panels.config"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, LX7/a;->j(Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_2

    :cond_6
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, LW7/b;->f:LC8/a;

    iget-object v2, v2, LC8/a;->a:LD8/a;

    invoke-virtual {v2}, LD8/a;->p()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/editor_panels_portrait.config"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, LX7/a;->j(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :goto_1
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    new-instance v1, Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController$r$a$a;

    invoke-direct {v1, p0, v0}, Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController$r$a$a;-><init>(Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController$r$a;Ljava/lang/Throwable;)V

    invoke-static {v1}, LN7/c;->j0(Ljava/lang/Runnable;)V

    :goto_2
    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController$r$a;->b:Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController$r;

    iget-object v0, v0, Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController$r;->d:Ljava/lang/Runnable;

    if-eqz v0, :cond_7

    invoke-static {v0}, LN7/c;->j0(Ljava/lang/Runnable;)V

    :cond_7
    return-void
.end method
