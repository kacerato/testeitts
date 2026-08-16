.class public Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/RTS3DCamera/RTS3DVerticalSlide;
.super Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;
.source "SourceFile"


# instance fields
.field public E:Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/RTS3DCamera/RTS3DTwoFingerSlide;

.field public F:Z

.field public G:Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Base/Panel3DView;

.field public H:Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/RTS3DCamera/RTS3DSlideController;

.field public final I:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

.field public final J:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

.field public final K:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

.field public final L:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

.field public M:Z

.field public N:Z


# direct methods
.method public constructor <init>(Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/RTS3DCamera/RTS3DTwoFingerSlide;Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/RTS3DCamera/RTS3DSlideController;Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Base/Panel3DView;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "RTS3DTwoFingerSlide",
            "rts3DSlideController",
            "editor3DViewer"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/RTS3DCamera/RTS3DVerticalSlide;->F:Z

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;-><init>()V

    iput-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/RTS3DCamera/RTS3DVerticalSlide;->I:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;-><init>()V

    iput-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/RTS3DCamera/RTS3DVerticalSlide;->J:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;-><init>()V

    iput-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/RTS3DCamera/RTS3DVerticalSlide;->K:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;-><init>()V

    iput-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/RTS3DCamera/RTS3DVerticalSlide;->L:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/RTS3DCamera/RTS3DVerticalSlide;->M:Z

    iput-boolean v0, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/RTS3DCamera/RTS3DVerticalSlide;->N:Z

    iput-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/RTS3DCamera/RTS3DVerticalSlide;->E:Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/RTS3DCamera/RTS3DTwoFingerSlide;

    iput-object p2, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/RTS3DCamera/RTS3DVerticalSlide;->H:Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/RTS3DCamera/RTS3DSlideController;

    iput-object p3, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/RTS3DCamera/RTS3DVerticalSlide;->G:Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Base/Panel3DView;

    return-void
.end method

.method private calculateMouseSens()F
    .locals 2

    invoke-static {}, Lcom/itsmagic/engine/Activities/Editor/Extensions/Settings/Base/EditorSettings;->a()Lcom/itsmagic/engine/Activities/Editor/Extensions/Settings/Base/EditorSettings$Settings;

    move-result-object v0

    iget v0, v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/Settings/Base/EditorSettings$Settings;->verticalMouseSens:F

    const/high16 v1, 0x41200000    # 10.0f

    mul-float/2addr v0, v1

    return v0
.end method

.method private calculateSens()F
    .locals 2

    invoke-static {}, Lcom/itsmagic/engine/Activities/Editor/Extensions/Settings/Base/EditorSettings;->a()Lcom/itsmagic/engine/Activities/Editor/Extensions/Settings/Base/EditorSettings$Settings;

    move-result-object v0

    iget v0, v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/Settings/Base/EditorSettings$Settings;->verticalSlideSens:F

    const/high16 v1, 0x41200000    # 10.0f

    mul-float/2addr v0, v1

    return v0
.end method


# virtual methods
.method public preUpdate(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Z)V
    .locals 4
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
    :try_start_0
    iget-object p2, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/RTS3DCamera/RTS3DVerticalSlide;->G:Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Base/Panel3DView;

    iget-object p2, p2, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Base/Panel3DView;->a0:Ln5/d;

    iget-object p2, p2, Ln5/d;->a:Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Components/EditorCamera;

    invoke-virtual {p2}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->getProjection()Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera$G;

    move-result-object p2

    sget-object v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera$G;->Perspective:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera$G;

    const/4 v1, 0x0

    if-ne p2, v0, :cond_7

    iget-boolean p2, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/RTS3DCamera/RTS3DVerticalSlide;->F:Z

    const/4 v0, 0x0

    if-eqz p2, :cond_1

    iget-object p2, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/RTS3DCamera/RTS3DVerticalSlide;->E:Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/RTS3DCamera/RTS3DTwoFingerSlide;

    invoke-virtual {p2}, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/RTS3DCamera/RTS3DTwoFingerSlide;->check()V

    iget-object p2, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/RTS3DCamera/RTS3DVerticalSlide;->E:Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/RTS3DCamera/RTS3DTwoFingerSlide;

    iget-boolean p2, p2, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/RTS3DCamera/RTS3DTwoFingerSlide;->E:Z

    if-eqz p2, :cond_1

    iput-boolean v0, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/RTS3DCamera/RTS3DVerticalSlide;->M:Z

    goto/16 :goto_0

    :catch_0
    move-exception p1

    goto/16 :goto_1

    :cond_1
    sget-object p2, Lrc/a;->u:Lrc/a$g;

    invoke-virtual {p2}, Lrc/a$g;->q()Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    invoke-virtual {p2}, Lrc/a$g;->x()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/RTS3DCamera/RTS3DVerticalSlide;->G:Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Base/Panel3DView;

    invoke-virtual {v2}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->o0()Z

    move-result v2

    if-eqz v2, :cond_2

    iput-boolean v3, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/RTS3DCamera/RTS3DVerticalSlide;->N:Z

    :cond_2
    iget-boolean v2, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/RTS3DCamera/RTS3DVerticalSlide;->N:Z

    if-eqz v2, :cond_4

    invoke-virtual {p2}, Lrc/a$g;->A()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {p2}, Lrc/a$g;->k()Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/RTS3DCamera/RTS3DVerticalSlide;->G:Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Base/Panel3DView;

    iget v2, v0, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Base/Panel3DView;->cameraPitch:F

    invoke-virtual {p2}, Lrc/a$g;->g()F

    move-result p2

    invoke-static {}, LK8/c;->a()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr p2, v3

    invoke-direct {p0}, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/RTS3DCamera/RTS3DVerticalSlide;->calculateMouseSens()F

    move-result v3

    neg-float v3, v3

    mul-float/2addr p2, v3

    const/high16 v3, 0x40400000    # 3.0f

    mul-float/2addr p2, v3

    sub-float/2addr v2, p2

    iput v2, v0, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Base/Panel3DView;->cameraPitch:F

    goto :goto_0

    :cond_3
    iput-boolean v0, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/RTS3DCamera/RTS3DVerticalSlide;->N:Z

    goto :goto_0

    :cond_4
    iget-object v2, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/RTS3DCamera/RTS3DVerticalSlide;->H:Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/RTS3DCamera/RTS3DSlideController;

    invoke-virtual {v2}, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/RTS3DCamera/RTS3DSlideController;->getSelectedTouch()Ltc/h;

    move-result-object v2

    if-eqz v2, :cond_6

    invoke-virtual {p2}, Lrc/a$g;->k()Z

    move-result p2

    if-eqz p2, :cond_6

    iget-object p2, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/RTS3DCamera/RTS3DVerticalSlide;->H:Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/RTS3DCamera/RTS3DSlideController;

    invoke-virtual {p2}, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/RTS3DCamera/RTS3DSlideController;->getSelectedTouch()Ltc/h;

    move-result-object p2

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/RTS3DCamera/RTS3DVerticalSlide;->K:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    invoke-virtual {p2, v0}, Ltc/h;->h(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    iget-boolean p2, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/RTS3DCamera/RTS3DVerticalSlide;->M:Z

    if-nez p2, :cond_5

    iget-object p2, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/RTS3DCamera/RTS3DVerticalSlide;->J:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/RTS3DCamera/RTS3DVerticalSlide;->K:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    invoke-virtual {p2, v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->x0(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;)V

    iput-boolean v3, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/RTS3DCamera/RTS3DVerticalSlide;->M:Z

    goto :goto_0

    :cond_5
    iget-object p2, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/RTS3DCamera/RTS3DVerticalSlide;->K:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/RTS3DCamera/RTS3DVerticalSlide;->J:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    iget-object v2, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/RTS3DCamera/RTS3DVerticalSlide;->L:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    invoke-virtual {p2, v0, v2}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->r0(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    iget-object p2, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/RTS3DCamera/RTS3DVerticalSlide;->J:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/RTS3DCamera/RTS3DVerticalSlide;->K:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    invoke-virtual {p2, v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->x0(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;)V

    iget-object p2, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/RTS3DCamera/RTS3DVerticalSlide;->L:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    invoke-virtual {p2}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->sqrtLength()F

    move-result p2

    cmpl-float p2, p2, v1

    if-lez p2, :cond_7

    iget-object p2, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/RTS3DCamera/RTS3DVerticalSlide;->G:Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Base/Panel3DView;

    iget v0, p2, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Base/Panel3DView;->cameraPitch:F

    iget-object v2, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/RTS3DCamera/RTS3DVerticalSlide;->L:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    iget v2, v2, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->y:F

    invoke-static {}, LK8/c;->a()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    invoke-direct {p0}, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/RTS3DCamera/RTS3DVerticalSlide;->calculateSens()F

    move-result v3

    mul-float/2addr v2, v3

    add-float/2addr v0, v2

    iput v0, p2, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Base/Panel3DView;->cameraPitch:F

    goto :goto_0

    :cond_6
    iput-boolean v0, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/RTS3DCamera/RTS3DVerticalSlide;->M:Z

    :cond_7
    :goto_0
    iget-object p2, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/RTS3DCamera/RTS3DVerticalSlide;->G:Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Base/Panel3DView;

    iget v0, p2, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Base/Panel3DView;->e0:F

    iget v2, p2, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Base/Panel3DView;->cameraPitch:F

    iget v3, p2, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Base/Panel3DView;->f0:F

    invoke-static {v0, v2, v3}, LNc/b;->E(FFF)F

    move-result v0

    iput v0, p2, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Base/Panel3DView;->cameraPitch:F

    iget-object p2, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/RTS3DCamera/RTS3DVerticalSlide;->G:Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Base/Panel3DView;

    iget p2, p2, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Base/Panel3DView;->cameraPitch:F

    neg-float p2, p2

    invoke-static {p2}, LNc/b;->d0(F)F

    move-result p2

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/RTS3DCamera/RTS3DVerticalSlide;->G:Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Base/Panel3DView;

    iget v0, v0, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Base/Panel3DView;->cameraPitch:F

    neg-float v0, v0

    invoke-static {v0}, LNc/b;->m1(F)F

    move-result v0

    iget-object v2, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/RTS3DCamera/RTS3DVerticalSlide;->I:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v2, v1, v0, p2}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->set(FFF)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->J0()Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    move-result-object p1

    iget-object p2, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/RTS3DCamera/RTS3DVerticalSlide;->I:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {p1, p2}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->g2(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :goto_1
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_2
    return-void
.end method
