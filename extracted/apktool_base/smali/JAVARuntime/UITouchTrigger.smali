.class public LJAVARuntime/UITouchTrigger;
.super LJAVARuntime/Component;
.source "SourceFile"


# annotations
.annotation runtime LJAVARuntime/ClassCategory;
    cat = {
        "UI",
        "Components"
    }
.end annotation


# instance fields
.field public instance:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UITouchTrigger;
    .annotation runtime LH6/g;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 5
    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UITouchTrigger;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UITouchTrigger;-><init>()V

    invoke-direct {p0, v0}, LJAVARuntime/UITouchTrigger;-><init>(Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UITouchTrigger;)V

    return-void
.end method

.method public constructor <init>(LK8/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "engine"
        }
    .end annotation

    .annotation runtime Lo8/c;
    .end annotation

    .line 4
    invoke-direct {p0}, LJAVARuntime/Component;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UITouchTrigger;)V
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
    invoke-direct {p0, p1}, LJAVARuntime/Component;-><init>(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;)V

    .line 2
    iput-object p1, p0, LJAVARuntime/UITouchTrigger;->instance:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UITouchTrigger;

    .line 3
    invoke-virtual {p1, p0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UITouchTrigger;->setRuntime(LJAVARuntime/Component;)V

    return-void
.end method


# virtual methods
.method public componentClassMatch(LJAVARuntime/Component;LJAVARuntime/Component;)Z
    .locals 1
    .annotation runtime LH6/g;
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "a",
            "b"
        }
    .end annotation

    const-class v0, LJAVARuntime/UITouchTrigger;

    invoke-super {p0, p1, p2, v0}, LJAVARuntime/Component;->componentClassMatch(LJAVARuntime/Component;LJAVARuntime/Component;Ljava/lang/Class;)Z

    move-result p1

    return p1
.end method

.method public getSelectedTouch()LJAVARuntime/Touch;
    .locals 1
    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

    invoke-static {}, LJAVARuntime/Thread;->requestEngineThread()V

    iget-object v0, p0, LJAVARuntime/UITouchTrigger;->instance:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UITouchTrigger;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UITouchTrigger;->getSelectedTouch()Ltc/h;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ltc/h;->L()LJAVARuntime/Touch;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public isDown()Z
    .locals 1
    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

    invoke-static {}, LJAVARuntime/Thread;->requestEngineThread()V

    iget-object v0, p0, LJAVARuntime/UITouchTrigger;->instance:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UITouchTrigger;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UITouchTrigger;->isDown()Z

    move-result v0

    return v0
.end method

.method public isPressed()Z
    .locals 1
    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

    invoke-static {}, LJAVARuntime/Thread;->requestEngineThread()V

    iget-object v0, p0, LJAVARuntime/UITouchTrigger;->instance:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UITouchTrigger;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UITouchTrigger;->isPressed()Z

    move-result v0

    return v0
.end method

.method public isUp()Z
    .locals 1
    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

    invoke-static {}, LJAVARuntime/Thread;->requestEngineThread()V

    iget-object v0, p0, LJAVARuntime/UITouchTrigger;->instance:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UITouchTrigger;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UITouchTrigger;->isUp()Z

    move-result v0

    return v0
.end method
