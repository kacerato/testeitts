.class public LS9/h;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final f:Z = true


# instance fields
.field public final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UITouchTrigger;",
            ">;"
        }
    .end annotation
.end field

.field public final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "LS9/a;",
            ">;"
        }
    .end annotation
.end field

.field public final c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "LS9/a;",
            ">;"
        }
    .end annotation
.end field

.field public final d:LMc/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LMc/a<",
            "Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController;",
            ">;"
        }
    .end annotation
.end field

.field public final e:LS9/c;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;-><init>()V

    iput-object v0, p0, LS9/h;->a:Ljava/util/List;

    new-instance v0, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;-><init>()V

    iput-object v0, p0, LS9/h;->b:Ljava/util/List;

    new-instance v0, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;-><init>()V

    iput-object v0, p0, LS9/h;->c:Ljava/util/List;

    new-instance v0, LMc/a;

    invoke-direct {v0}, LMc/a;-><init>()V

    iput-object v0, p0, LS9/h;->d:LMc/a;

    new-instance v0, LS9/h$a;

    invoke-direct {v0, p0}, LS9/h$a;-><init>(LS9/h;)V

    iput-object v0, p0, LS9/h;->e:LS9/c;

    return-void
.end method

.method public static synthetic a(LS9/h;Ltc/h;)V
    .locals 0

    invoke-virtual {p0, p1}, LS9/h;->h(Ltc/h;)V

    return-void
.end method


# virtual methods
.method public final b(Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UITouchTrigger;)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "listener"
        }
    .end annotation

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UITouchTrigger;->getController()Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UITouchTrigger;->acceptsMultiTouch()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UITouchTrigger;->allowCaptureNewTouchs()Z

    move-result p1

    return p1

    :cond_1
    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UITouchTrigger;->allowCaptureNewTouchs()Z

    move-result p1

    return p1

    :cond_2
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public final c(LS9/a;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "capturedTouch"
        }
    .end annotation

    iget-object v0, p0, LS9/h;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final d(Ltc/h;)Z
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "touch"
        }
    .end annotation

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v2, p0, LS9/h;->b:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_2

    iget-object v2, p0, LS9/h;->b:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, LS9/a;

    if-eqz v2, :cond_1

    iget-object v3, v2, LS9/a;->a:Ltc/h;

    if-ne v3, p1, :cond_1

    iget-object v1, v2, LS9/a;->c:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UITouchTrigger;

    iget-object v3, v2, LS9/a;->d:LS9/a$a;

    sget-object v4, LS9/a$a;->IsOver:LS9/a$a;

    if-ne v3, v4, :cond_0

    invoke-interface {v1}, LS9/f;->getControllerRect()LW9/c;

    move-result-object v3

    invoke-interface {v1}, LS9/f;->getScreenRect()LW9/c;

    move-result-object v4

    invoke-static {p1, v3, v4}, LV9/m;->d(Ltc/h;LW9/c;LW9/c;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-interface {v1}, LS9/f;->dispatchTouchWhenOutSideRect()Z

    move-result v3

    if-eqz v3, :cond_0

    iget v3, v2, LS9/a;->b:I

    iget-object v4, p0, LS9/h;->e:LS9/c;

    invoke-interface {v1, p1, v3, v4}, LS9/f;->onTouchExit(Ltc/h;ILS9/c;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, LS9/h;->c:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    const/4 v1, 0x1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    iget-object p1, p0, LS9/h;->b:Ljava/util/List;

    iget-object v0, p0, LS9/h;->c:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    iget-object p1, p0, LS9/h;->c:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    return v1
.end method

.method public final e()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final f(Ltc/h;)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "touch"
        }
    .end annotation

    invoke-virtual {p1}, Ltc/h;->k()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Ltc/h;->q()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Ltc/h;->t()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    invoke-static {}, LN7/c;->D()Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController;->W(Ltc/h;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    return p1

    :cond_1
    const/4 p1, 0x1

    return p1
.end method

.method public final g(Ltc/h;)Z
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "touch"
        }
    .end annotation

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v2, p0, LS9/h;->b:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    iget-object v2, p0, LS9/h;->b:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, LS9/a;

    if-eqz v2, :cond_0

    iget-object v2, v2, LS9/a;->a:Ltc/h;

    if-ne v2, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method public final h(Ltc/h;)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "touch"
        }
    .end annotation

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, LS9/h;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, LS9/h;->b:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LS9/a;

    if-eqz v1, :cond_0

    iget-object v2, v1, LS9/a;->a:Ltc/h;

    if-ne v2, p1, :cond_0

    iget-object v2, v1, LS9/a;->c:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UITouchTrigger;

    iget v3, v1, LS9/a;->b:I

    iget-object v4, p0, LS9/h;->e:LS9/c;

    invoke-interface {v2, p1, v3, v4}, LS9/f;->onTouchExit(Ltc/h;ILS9/c;)Z

    iget-object v2, p0, LS9/h;->c:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iget-object p1, p0, LS9/h;->b:Ljava/util/List;

    iget-object v0, p0, LS9/h;->c:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    iget-object p1, p0, LS9/h;->c:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    return-void
.end method

.method public final i()V
    .locals 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    move v2, v0

    move v3, v1

    :goto_0
    if-eqz v2, :cond_3

    move v2, v3

    :goto_1
    iget-object v4, p0, LS9/h;->b:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v2, v4, :cond_2

    iget-object v4, p0, LS9/h;->b:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, LS9/a;

    iget-object v5, v4, LS9/a;->c:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UITouchTrigger;

    invoke-virtual {v5}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->isHierarchyActive()Z

    move-result v5

    if-eqz v5, :cond_1

    iget-object v5, v4, LS9/a;->c:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UITouchTrigger;

    iget-object v5, v5, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->n:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    if-nez v5, :cond_0

    goto :goto_2

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    :goto_2
    iget-object v3, p0, LS9/h;->b:Ljava/util/List;

    invoke-interface {v3, v4}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move v3, v2

    move v2, v0

    goto :goto_0

    :cond_2
    move v2, v1

    goto :goto_0

    :cond_3
    return-void
.end method

.method public final j(ILtc/h;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "i",
            "touch"
        }
    .end annotation

    iget-object p1, p0, LS9/h;->a:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    const-class p1, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UITouchTrigger;

    invoke-static {p1}, LR8/f;->h(Ljava/lang/Class;)Ljava/util/List;

    move-result-object p1

    const/4 v0, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UITouchTrigger;

    :try_start_0
    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UITouchTrigger;->isExclusiveMode()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->isHierarchyActive()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UITouchTrigger;->getControllerRect()LW9/c;

    move-result-object v2

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UITouchTrigger;->getScreenRect()LW9/c;

    move-result-object v3

    invoke-static {p2, v2, v3}, LV9/m;->d(Ltc/h;LW9/c;LW9/c;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, LS9/h;->a:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iget-object p1, p0, LS9/h;->a:Ljava/util/List;

    new-instance p2, LS9/g;

    invoke-direct {p2}, LS9/g;-><init>()V

    invoke-static {p2}, Ljava/util/Comparator;->comparingInt(Ljava/util/function/ToIntFunction;)Ljava/util/Comparator;

    move-result-object p2

    invoke-static {p1, p2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    return-void
.end method

.method public k()V
    .locals 8

    invoke-virtual {p0}, LS9/h;->i()V

    sget-object v0, Lz5/a;->m0:Lz5/g;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-interface {v0}, Lz5/g;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_11

    invoke-virtual {p0}, LS9/h;->e()Z

    move-result v0

    if-eqz v0, :cond_11

    sget-object v0, Lz5/a;->m0:Lz5/g;

    invoke-interface {v0}, Lz5/g;->a()Lo4/f;

    iget-object v0, p0, LS9/h;->d:LMc/a;

    invoke-virtual {v0}, LMc/a;->clear()V

    const-class v0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UITouchTrigger;

    invoke-static {v0}, LR8/f;->h(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_2

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UITouchTrigger;

    invoke-virtual {v3}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UITouchTrigger;->isExclusiveMode()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v3}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->isHierarchyActive()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {p0, v3}, LS9/h;->b(Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UITouchTrigger;)Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, p0, LS9/h;->d:LMc/a;

    invoke-virtual {v3}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UITouchTrigger;->getController()Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController;

    move-result-object v3

    invoke-virtual {v4, v3}, LMc/a;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    move v0, v1

    :goto_1
    iget-object v2, p0, LS9/h;->d:LMc/a;

    invoke-virtual {v2}, LMc/a;->size()I

    move-result v2

    if-ge v0, v2, :cond_a

    iget-object v2, p0, LS9/h;->d:LMc/a;

    invoke-virtual {v2, v0}, LMc/a;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController;

    move v3, v1

    :goto_2
    invoke-virtual {v2}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController;->virtualTouchsCount()I

    move-result v4

    if-ge v3, v4, :cond_9

    invoke-virtual {v2, v3}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController;->getVirtualToucheAt(I)Ltc/h;

    move-result-object v4

    invoke-virtual {v4}, Ltc/h;->k()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-virtual {p0, v4}, LS9/h;->d(Ltc/h;)Z

    move-result v5

    if-nez v5, :cond_6

    invoke-virtual {p0, v0, v4}, LS9/h;->j(ILtc/h;)V

    iget-object v5, p0, LS9/h;->a:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    :goto_3
    if-ltz v5, :cond_6

    iget-object v6, p0, LS9/h;->a:Ljava/util/List;

    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UITouchTrigger;

    invoke-virtual {p0, v6}, LS9/h;->b(Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UITouchTrigger;)Z

    move-result v7

    if-eqz v7, :cond_3

    iget-object v7, p0, LS9/h;->e:LS9/c;

    invoke-virtual {v6, v4, v0, v7}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UITouchTrigger;->onTouchEnter(Ltc/h;ILS9/c;)Z

    move-result v7

    if-eqz v7, :cond_3

    new-instance v5, LS9/a;

    invoke-direct {v5, v4, v0, v6}, LS9/a;-><init>(Ltc/h;ILcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UITouchTrigger;)V

    invoke-virtual {p0, v5}, LS9/h;->c(LS9/a;)V

    goto :goto_4

    :cond_3
    add-int/lit8 v5, v5, -0x1

    goto :goto_3

    :cond_4
    invoke-virtual {v4}, Ltc/h;->q()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-virtual {p0, v4}, LS9/h;->d(Ltc/h;)Z

    goto :goto_4

    :cond_5
    invoke-virtual {v4}, Ltc/h;->t()Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-virtual {p0, v4}, LS9/h;->h(Ltc/h;)V

    :cond_6
    :goto_4
    invoke-virtual {v4}, Ltc/h;->q()Z

    move-result v5

    if-eqz v5, :cond_8

    invoke-virtual {p0, v4}, LS9/h;->g(Ltc/h;)Z

    move-result v5

    if-nez v5, :cond_8

    invoke-virtual {p0, v0, v4}, LS9/h;->j(ILtc/h;)V

    iget-object v5, p0, LS9/h;->a:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    :goto_5
    if-ltz v5, :cond_8

    iget-object v6, p0, LS9/h;->a:Ljava/util/List;

    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UITouchTrigger;

    if-eqz v6, :cond_7

    invoke-virtual {v6}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UITouchTrigger;->onlyDownInside()Z

    move-result v7

    if-nez v7, :cond_7

    invoke-virtual {v6}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UITouchTrigger;->getController()Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController;

    move-result-object v7

    if-ne v7, v2, :cond_7

    invoke-virtual {p0, v6}, LS9/h;->b(Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UITouchTrigger;)Z

    move-result v7

    if-eqz v7, :cond_7

    iget-object v7, p0, LS9/h;->e:LS9/c;

    invoke-virtual {v6, v4, v0, v7}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UITouchTrigger;->onTouchEnter(Ltc/h;ILS9/c;)Z

    move-result v7

    if-eqz v7, :cond_7

    new-instance v5, LS9/a;

    invoke-direct {v5, v4, v0, v6}, LS9/a;-><init>(Ltc/h;ILcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UITouchTrigger;)V

    invoke-virtual {p0, v5}, LS9/h;->c(LS9/a;)V

    goto :goto_6

    :cond_7
    add-int/lit8 v5, v5, -0x1

    goto :goto_5

    :cond_8
    :goto_6
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_2

    :cond_9
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_1

    :cond_a
    :goto_7
    invoke-static {}, Lrc/a;->L()I

    move-result v0

    if-ge v1, v0, :cond_11

    invoke-static {v1}, Lrc/a;->n(I)Ltc/h;

    move-result-object v0

    invoke-virtual {p0, v0}, LS9/h;->f(Ltc/h;)Z

    move-result v2

    if-eqz v2, :cond_10

    invoke-virtual {v0}, Ltc/h;->k()Z

    move-result v2

    if-eqz v2, :cond_c

    invoke-virtual {p0, v0}, LS9/h;->d(Ltc/h;)Z

    move-result v2

    if-nez v2, :cond_e

    invoke-virtual {p0, v1, v0}, LS9/h;->j(ILtc/h;)V

    iget-object v2, p0, LS9/h;->a:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    :goto_8
    if-ltz v2, :cond_e

    iget-object v3, p0, LS9/h;->a:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UITouchTrigger;

    invoke-virtual {p0, v3}, LS9/h;->b(Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UITouchTrigger;)Z

    move-result v4

    if-eqz v4, :cond_b

    invoke-virtual {v3}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UITouchTrigger;->getController()Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController;

    move-result-object v4

    invoke-virtual {v4}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController;->isAllowScreenTouch()Z

    move-result v4

    if-eqz v4, :cond_b

    iget-object v4, p0, LS9/h;->e:LS9/c;

    invoke-virtual {v3, v0, v1, v4}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UITouchTrigger;->onTouchEnter(Ltc/h;ILS9/c;)Z

    move-result v4

    if-eqz v4, :cond_b

    new-instance v2, LS9/a;

    invoke-direct {v2, v0, v1, v3}, LS9/a;-><init>(Ltc/h;ILcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UITouchTrigger;)V

    invoke-virtual {p0, v2}, LS9/h;->c(LS9/a;)V

    goto :goto_9

    :cond_b
    add-int/lit8 v2, v2, -0x1

    goto :goto_8

    :cond_c
    invoke-virtual {v0}, Ltc/h;->q()Z

    move-result v2

    if-eqz v2, :cond_d

    invoke-virtual {p0, v0}, LS9/h;->d(Ltc/h;)Z

    goto :goto_9

    :cond_d
    invoke-virtual {v0}, Ltc/h;->t()Z

    move-result v2

    if-eqz v2, :cond_e

    invoke-virtual {p0, v0}, LS9/h;->h(Ltc/h;)V

    :cond_e
    :goto_9
    invoke-virtual {v0}, Ltc/h;->q()Z

    move-result v2

    if-eqz v2, :cond_10

    invoke-virtual {p0, v0}, LS9/h;->g(Ltc/h;)Z

    move-result v2

    if-nez v2, :cond_10

    invoke-virtual {p0, v1, v0}, LS9/h;->j(ILtc/h;)V

    iget-object v2, p0, LS9/h;->a:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    :goto_a
    if-ltz v2, :cond_10

    iget-object v3, p0, LS9/h;->a:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UITouchTrigger;

    if-eqz v3, :cond_f

    invoke-virtual {v3}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UITouchTrigger;->onlyDownInside()Z

    move-result v4

    if-nez v4, :cond_f

    invoke-virtual {p0, v3}, LS9/h;->b(Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UITouchTrigger;)Z

    move-result v4

    if-eqz v4, :cond_f

    invoke-virtual {v3}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UITouchTrigger;->getController()Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController;

    move-result-object v4

    invoke-virtual {v4}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController;->isAllowScreenTouch()Z

    move-result v4

    if-eqz v4, :cond_f

    iget-object v4, p0, LS9/h;->e:LS9/c;

    invoke-virtual {v3, v0, v1, v4}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UITouchTrigger;->onTouchEnter(Ltc/h;ILS9/c;)Z

    move-result v4

    if-eqz v4, :cond_f

    new-instance v2, LS9/a;

    invoke-direct {v2, v0, v1, v3}, LS9/a;-><init>(Ltc/h;ILcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UITouchTrigger;)V

    invoke-virtual {p0, v2}, LS9/h;->c(LS9/a;)V

    goto :goto_b

    :cond_f
    add-int/lit8 v2, v2, -0x1

    goto :goto_a

    :cond_10
    :goto_b
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_7

    :cond_11
    invoke-virtual {p0}, LS9/h;->l()V

    return-void
.end method

.method public final l()V
    .locals 4

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, LS9/h;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_3

    iget-object v1, p0, LS9/h;->b:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LS9/a;

    iget-object v2, v1, LS9/a;->a:Ltc/h;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ltc/h;->q()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, v1, LS9/a;->a:Ltc/h;

    invoke-virtual {v2}, Ltc/h;->t()Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    iget-object v2, v1, LS9/a;->c:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UITouchTrigger;

    iget-object v3, v1, LS9/a;->a:Ltc/h;

    invoke-virtual {v2, v3}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UITouchTrigger;->isSelectedTouch(Ltc/h;)Z

    move-result v2

    if-nez v2, :cond_2

    :cond_1
    iget-object v2, p0, LS9/h;->c:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    iget-object v0, p0, LS9/h;->b:Ljava/util/List;

    iget-object v1, p0, LS9/h;->c:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    iget-object v0, p0, LS9/h;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method
