.class public Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/RTS3DCamera/RTS3DSlideController;
.super Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;
.source "SourceFile"


# instance fields
.field public E:Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Base/Panel3DView;

.field public F:Ltc/h;


# direct methods
.method public constructor <init>(Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Base/Panel3DView;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "editor3DViewer"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/RTS3DCamera/RTS3DSlideController;->E:Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Base/Panel3DView;

    return-void
.end method


# virtual methods
.method public getSelectedTouch()Ltc/h;
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/RTS3DCamera/RTS3DSlideController;->F:Ltc/h;

    return-object v0
.end method

.method public preUpdate(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "gameObject",
            "isEditor"
        }
    .end annotation

    invoke-super {p0, p1, p2}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->preUpdate(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Z)V

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/RTS3DCamera/RTS3DSlideController;->F:Ltc/h;

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/RTS3DCamera/RTS3DSlideController;->E:Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Base/Panel3DView;

    iget-object p1, p1, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Base/Panel3DView;->c0:LO4/a;

    if-nez p1, :cond_2

    invoke-static {}, Lv3/c;->b()LP4/b;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-static {}, Lv3/c;->b()LP4/b;

    move-result-object p1

    invoke-virtual {p1}, LP4/b;->d()Z

    move-result p1

    if-nez p1, :cond_2

    :cond_1
    iget-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/RTS3DCamera/RTS3DSlideController;->E:Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Base/Panel3DView;

    sget-object p2, LJAVARuntime/GUIUtils$TouchFilter;->Down:LJAVARuntime/GUIUtils$TouchFilter;

    const/4 v0, 0x1

    invoke-virtual {p1, p2, v0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->y(LJAVARuntime/GUIUtils$TouchFilter;Z)Ltc/h;

    move-result-object p1

    iput-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/RTS3DCamera/RTS3DSlideController;->F:Ltc/h;

    :cond_2
    iget-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/RTS3DCamera/RTS3DSlideController;->E:Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Base/Panel3DView;

    iget-object p1, p1, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Base/Panel3DView;->c0:LO4/a;

    const/4 p2, 0x0

    if-eqz p1, :cond_3

    iput-object p2, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/RTS3DCamera/RTS3DSlideController;->F:Ltc/h;

    :cond_3
    iget-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/RTS3DCamera/RTS3DSlideController;->F:Ltc/h;

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Ltc/h;->t()Z

    move-result p1

    if-eqz p1, :cond_4

    iput-object p2, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/RTS3DCamera/RTS3DSlideController;->F:Ltc/h;

    :cond_4
    return-void
.end method
