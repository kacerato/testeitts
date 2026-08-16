.class public LJAVARuntime/FloatingPanelArea;
.super LJAVARuntime/PanelArea;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, LJAVARuntime/PanelArea;-><init>()V

    .line 4
    invoke-static {p0}, Lcom/itsmagic/engine/Activities/Editor/Panels/Profiler/MemoryProfiler/AllocatorWatcher;->notify(Ljava/lang/Object;)V

    return-void
.end method

.method public constructor <init>(Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "instance"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, LJAVARuntime/PanelArea;-><init>(Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;)V

    .line 2
    invoke-static {p0}, Lcom/itsmagic/engine/Activities/Editor/Panels/Profiler/MemoryProfiler/AllocatorWatcher;->notify(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public closeWhenPressBack()V
    .locals 1

    iget-object v0, p0, LJAVARuntime/PanelArea;->instance:Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;

    check-cast v0, Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;->f1()V

    return-void
.end method

.method public getFloatingH()F
    .locals 1

    iget-object v0, p0, LJAVARuntime/PanelArea;->instance:Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;

    check-cast v0, Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;->l1()F

    move-result v0

    return v0
.end method

.method public getFloatingW()F
    .locals 1

    iget-object v0, p0, LJAVARuntime/PanelArea;->instance:Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;

    check-cast v0, Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;->m1()F

    move-result v0

    return v0
.end method

.method public getFloatingX()F
    .locals 1

    iget-object v0, p0, LJAVARuntime/PanelArea;->instance:Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;

    check-cast v0, Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;->n1()F

    move-result v0

    return v0
.end method

.method public getFloatingY()F
    .locals 1

    iget-object v0, p0, LJAVARuntime/PanelArea;->instance:Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;

    check-cast v0, Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;->o1()F

    move-result v0

    return v0
.end method

.method public isAllowCloseX()Z
    .locals 1

    iget-object v0, p0, LJAVARuntime/PanelArea;->instance:Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;

    check-cast v0, Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;->t1()Z

    move-result v0

    return v0
.end method

.method public isCaptureTouchWhenClickOutside()Z
    .locals 1

    iget-object v0, p0, LJAVARuntime/PanelArea;->instance:Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;

    check-cast v0, Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;->u1()Z

    move-result v0

    return v0
.end method

.method public isCloseWhenClickOutside()Z
    .locals 1

    iget-object v0, p0, LJAVARuntime/PanelArea;->instance:Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;

    check-cast v0, Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;->v1()Z

    move-result v0

    return v0
.end method

.method public isCloseWhenPressBack()Z
    .locals 1

    iget-object v0, p0, LJAVARuntime/PanelArea;->instance:Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;

    check-cast v0, Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;->w1()Z

    move-result v0

    return v0
.end method

.method public isOpen()Z
    .locals 1

    iget-object v0, p0, LJAVARuntime/PanelArea;->instance:Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;

    check-cast v0, Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;->a0()Z

    move-result v0

    return v0
.end method

.method public isResizeable()Z
    .locals 1

    iget-object v0, p0, LJAVARuntime/PanelArea;->instance:Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;

    check-cast v0, Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;->x1()Z

    move-result v0

    return v0
.end method

.method public setAllowCloseX(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "allowCloseX"
        }
    .end annotation

    iget-object v0, p0, LJAVARuntime/PanelArea;->instance:Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;

    check-cast v0, Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;->D1(Z)V

    return-void
.end method

.method public setCaptureTouchWhenClickOutside(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "captureTouchWhenClickOutside"
        }
    .end annotation

    iget-object v0, p0, LJAVARuntime/PanelArea;->instance:Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;

    check-cast v0, Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;->E1(Z)V

    return-void
.end method

.method public setCloseWhenClickOutside(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "closeWhenClickOutside"
        }
    .end annotation

    iget-object v0, p0, LJAVARuntime/PanelArea;->instance:Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;

    check-cast v0, Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;->F1(Z)V

    return-void
.end method

.method public setCloseWhenPressBack(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "closeWhenPressBack"
        }
    .end annotation

    iget-object v0, p0, LJAVARuntime/PanelArea;->instance:Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;

    check-cast v0, Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;->G1(Z)V

    return-void
.end method

.method public setFloatingH(F)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    iget-object v0, p0, LJAVARuntime/PanelArea;->instance:Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;

    check-cast v0, Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;->J1(F)V

    return-void
.end method

.method public setFloatingW(F)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    iget-object v0, p0, LJAVARuntime/PanelArea;->instance:Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;

    check-cast v0, Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;->K1(F)V

    return-void
.end method

.method public setFloatingX(F)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    iget-object v0, p0, LJAVARuntime/PanelArea;->instance:Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;

    check-cast v0, Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;->L1(F)V

    return-void
.end method

.method public setFloatingY(F)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    iget-object v0, p0, LJAVARuntime/PanelArea;->instance:Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;

    check-cast v0, Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;->M1(F)V

    return-void
.end method

.method public setResizeable(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "resizeable"
        }
    .end annotation

    iget-object v0, p0, LJAVARuntime/PanelArea;->instance:Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;

    check-cast v0, Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;->N1(Z)V

    return-void
.end method
