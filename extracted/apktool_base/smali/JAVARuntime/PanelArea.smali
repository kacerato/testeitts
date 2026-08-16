.class public LJAVARuntime/PanelArea;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public instance:Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    invoke-static {p0}, Lcom/itsmagic/engine/Activities/Editor/Panels/Profiler/MemoryProfiler/AllocatorWatcher;->notify(Ljava/lang/Object;)V

    return-void
.end method

.method public constructor <init>(Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;)V
    .locals 0
    .annotation runtime LH6/g;
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "instance"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {p0}, Lcom/itsmagic/engine/Activities/Editor/Panels/Profiler/MemoryProfiler/AllocatorWatcher;->notify(Ljava/lang/Object;)V

    .line 3
    iput-object p1, p0, LJAVARuntime/PanelArea;->instance:Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;

    return-void
.end method


# virtual methods
.method public addPanel(LJAVARuntime/EditorPanel;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "editorPanel"
        }
    .end annotation

    invoke-static {}, LN7/c;->h0()V

    iget-object v0, p1, LJAVARuntime/EditorPanel;->panel:Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;

    if-nez v0, :cond_0

    new-instance v0, Lcom/itsmagic/engine/Activities/Editor/Panels/ViewPanel/JavaViewPanel;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/itsmagic/engine/Activities/Editor/Panels/ViewPanel/JavaViewPanel;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, LJAVARuntime/EditorPanel;->setPanel(Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;)V

    :cond_0
    iget-object v0, p0, LJAVARuntime/PanelArea;->instance:Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;

    iget-object p1, p1, LJAVARuntime/EditorPanel;->panel:Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->g(Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;)Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;

    return-void
.end method

.method public getHeight()F
    .locals 1

    iget-object v0, p0, LJAVARuntime/PanelArea;->instance:Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->H()F

    move-result v0

    return v0
.end method

.method public getWidth()F
    .locals 1

    iget-object v0, p0, LJAVARuntime/PanelArea;->instance:Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->O()F

    move-result v0

    return v0
.end method

.method public getX()F
    .locals 1

    iget-object v0, p0, LJAVARuntime/PanelArea;->instance:Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->P()F

    move-result v0

    return v0
.end method

.method public getY()F
    .locals 1

    iget-object v0, p0, LJAVARuntime/PanelArea;->instance:Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->Q()F

    move-result v0

    return v0
.end method

.method public removePanel(LJAVARuntime/EditorPanel;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "editorPanel"
        }
    .end annotation

    invoke-static {}, LN7/c;->h0()V

    iget-object v0, p1, LJAVARuntime/EditorPanel;->panel:Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;

    if-nez v0, :cond_0

    new-instance v0, Lcom/itsmagic/engine/Activities/Editor/Panels/ViewPanel/JavaViewPanel;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/itsmagic/engine/Activities/Editor/Panels/ViewPanel/JavaViewPanel;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, LJAVARuntime/EditorPanel;->setPanel(Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;)V

    :cond_0
    iget-object v0, p0, LJAVARuntime/PanelArea;->instance:Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;

    iget-object p1, p1, LJAVARuntime/EditorPanel;->panel:Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->s0(Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;)Z

    return-void
.end method

.method public requestDetach()V
    .locals 1

    iget-object v0, p0, LJAVARuntime/PanelArea;->instance:Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->u0()V

    return-void
.end method

.method public setHeight(F)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "height"
        }
    .end annotation

    iget-object v0, p0, LJAVARuntime/PanelArea;->instance:Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->x0(F)V

    return-void
.end method

.method public setInstance(Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;)V
    .locals 0
    .annotation runtime LH6/g;
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "instance"
        }
    .end annotation

    iput-object p1, p0, LJAVARuntime/PanelArea;->instance:Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;

    return-void
.end method

.method public setWidth(F)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "width"
        }
    .end annotation

    iget-object v0, p0, LJAVARuntime/PanelArea;->instance:Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->H0(F)V

    return-void
.end method

.method public setX(F)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "x"
        }
    .end annotation

    iget-object v0, p0, LJAVARuntime/PanelArea;->instance:Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->I0(F)V

    return-void
.end method

.method public setY(F)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "y"
        }
    .end annotation

    iget-object v0, p0, LJAVARuntime/PanelArea;->instance:Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->J0(F)V

    return-void
.end method
