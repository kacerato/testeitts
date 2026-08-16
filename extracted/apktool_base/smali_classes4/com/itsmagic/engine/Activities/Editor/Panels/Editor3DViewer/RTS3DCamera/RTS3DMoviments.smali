.class public Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/RTS3DCamera/RTS3DMoviments;
.super Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/RTS3DCamera/RTS3DMoviments$a;
    }
.end annotation


# instance fields
.field public E:Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/RTS3DCamera/RTS3DMoviments$a;

.field public F:F

.field public G:F

.field public H:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

.field public I:Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/RTS3DCamera/RTS3DTwoFingerSlide;

.field public J:Lm5/a;

.field public K:Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Base/Panel3DView;

.field public L:Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/RTS3DCamera/RTS3DZoom;

.field public M:Ltc/h;

.field public N:Z


# direct methods
.method public constructor <init>(Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/RTS3DCamera/RTS3DTwoFingerSlide;Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Base/Panel3DView;Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/RTS3DCamera/RTS3DZoom;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "RTS3DTwoFingerSlide",
            "editor3DViewer",
            "RTS3DZoom"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;-><init>(Ljava/lang/String;)V

    .line 2
    sget-object v0, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/RTS3DCamera/RTS3DMoviments$a;->TwoFinger:Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/RTS3DCamera/RTS3DMoviments$a;

    iput-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/RTS3DCamera/RTS3DMoviments;->E:Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/RTS3DCamera/RTS3DMoviments$a;

    const/4 v0, 0x0

    .line 3
    iput v0, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/RTS3DCamera/RTS3DMoviments;->F:F

    .line 4
    iput v0, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/RTS3DCamera/RTS3DMoviments;->G:F

    .line 5
    new-instance v0, Lm5/a;

    invoke-direct {v0}, Lm5/a;-><init>()V

    iput-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/RTS3DCamera/RTS3DMoviments;->J:Lm5/a;

    .line 6
    iput-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/RTS3DCamera/RTS3DMoviments;->I:Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/RTS3DCamera/RTS3DTwoFingerSlide;

    .line 7
    iput-object p2, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/RTS3DCamera/RTS3DMoviments;->K:Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Base/Panel3DView;

    .line 8
    iput-object p3, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/RTS3DCamera/RTS3DMoviments;->L:Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/RTS3DCamera/RTS3DZoom;

    return-void
.end method

.method public constructor <init>(Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/RTS3DCamera/RTS3DTwoFingerSlide;Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Base/Panel3DView;Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/RTS3DCamera/RTS3DZoom;Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/RTS3DCamera/RTS3DMoviments$a;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "RTS3DTwoFingerSlide",
            "editor3DViewer",
            "RTS3DZoom",
            "orthographicMode"
        }
    .end annotation

    const/4 v0, 0x0

    .line 9
    invoke-direct {p0, v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;-><init>(Ljava/lang/String;)V

    .line 10
    sget-object v0, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/RTS3DCamera/RTS3DMoviments$a;->TwoFinger:Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/RTS3DCamera/RTS3DMoviments$a;

    iput-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/RTS3DCamera/RTS3DMoviments;->E:Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/RTS3DCamera/RTS3DMoviments$a;

    const/4 v0, 0x0

    .line 11
    iput v0, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/RTS3DCamera/RTS3DMoviments;->F:F

    .line 12
    iput v0, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/RTS3DCamera/RTS3DMoviments;->G:F

    .line 13
    new-instance v0, Lm5/a;

    invoke-direct {v0}, Lm5/a;-><init>()V

    iput-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/RTS3DCamera/RTS3DMoviments;->J:Lm5/a;

    .line 14
    iput-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/RTS3DCamera/RTS3DMoviments;->I:Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/RTS3DCamera/RTS3DTwoFingerSlide;

    .line 15
    iput-object p2, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/RTS3DCamera/RTS3DMoviments;->K:Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Base/Panel3DView;

    .line 16
    iput-object p3, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/RTS3DCamera/RTS3DMoviments;->L:Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/RTS3DCamera/RTS3DZoom;

    .line 17
    iput-object p4, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/RTS3DCamera/RTS3DMoviments;->E:Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/RTS3DCamera/RTS3DMoviments$a;

    return-void
.end method

.method private calculateHSens()F
    .locals 3

    invoke-static {}, Lcom/itsmagic/engine/Activities/Editor/Extensions/Settings/Base/EditorSettings;->a()Lcom/itsmagic/engine/Activities/Editor/Extensions/Settings/Base/EditorSettings$Settings;

    move-result-object v0

    iget v0, v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/Settings/Base/EditorSettings$Settings;->moveSens:F

    invoke-static {}, LK8/c;->b()I

    move-result v1

    invoke-static {}, LK8/c;->a()I

    move-result v2

    div-int/2addr v1, v2

    int-to-float v1, v1

    mul-float/2addr v0, v1

    return v0
.end method

.method private calculateMouseHSens()F
    .locals 3

    invoke-static {}, Lcom/itsmagic/engine/Activities/Editor/Extensions/Settings/Base/EditorSettings;->a()Lcom/itsmagic/engine/Activities/Editor/Extensions/Settings/Base/EditorSettings$Settings;

    move-result-object v0

    iget v0, v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/Settings/Base/EditorSettings$Settings;->mouseMoveSens:F

    invoke-static {}, LK8/c;->b()I

    move-result v1

    invoke-static {}, LK8/c;->a()I

    move-result v2

    div-int/2addr v1, v2

    int-to-float v1, v1

    mul-float/2addr v0, v1

    return v0
.end method

.method private calculateMouseVSens()F
    .locals 1

    invoke-static {}, Lcom/itsmagic/engine/Activities/Editor/Extensions/Settings/Base/EditorSettings;->a()Lcom/itsmagic/engine/Activities/Editor/Extensions/Settings/Base/EditorSettings$Settings;

    move-result-object v0

    iget v0, v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/Settings/Base/EditorSettings$Settings;->mouseMoveSens:F

    return v0
.end method

.method private calculateVSens()F
    .locals 1

    invoke-static {}, Lcom/itsmagic/engine/Activities/Editor/Extensions/Settings/Base/EditorSettings;->a()Lcom/itsmagic/engine/Activities/Editor/Extensions/Settings/Base/EditorSettings$Settings;

    move-result-object v0

    iget v0, v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/Settings/Base/EditorSettings$Settings;->moveSens:F

    return v0
.end method

.method private lerpPosition()V
    .locals 4

    :try_start_0
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->n:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->J0()Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    move-result-object v0

    iget-object v1, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/RTS3DCamera/RTS3DMoviments;->K:Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Base/Panel3DView;

    iget-object v1, v1, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Base/Panel3DView;->selectedPosition:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v0, v1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->C1(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)F

    move-result v0

    const/high16 v1, 0x447a0000    # 1000.0f

    cmpg-float v2, v0, v1

    if-gtz v2, :cond_0

    const/high16 v2, 0x3f000000    # 0.5f

    invoke-static {v2, v0, v1}, LNc/b;->E(FFF)F

    move-result v0

    const/high16 v1, 0x41c00000    # 24.0f

    mul-float/2addr v0, v1

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->n:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->J0()Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    move-result-object v1

    iget-object v2, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/RTS3DCamera/RTS3DMoviments;->K:Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Base/Panel3DView;

    iget-object v2, v2, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Base/Panel3DView;->selectedPosition:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-static {}, LK8/d;->e()F

    move-result v3

    mul-float/2addr v0, v3

    invoke-virtual {v1, v2, v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->d2(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;F)V

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->n:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->J0()Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    move-result-object v0

    iget-object v1, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/RTS3DCamera/RTS3DMoviments;->K:Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Base/Panel3DView;

    iget-object v1, v1, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Base/Panel3DView;->selectedPosition:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v0, v1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->p3(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :goto_0
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_1
    return-void
.end method

.method private zeroSpeed()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/RTS3DCamera/RTS3DMoviments;->F:F

    iput v0, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/RTS3DCamera/RTS3DMoviments;->G:F

    return-void
.end method


# virtual methods
.method public preUpdate(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Z)V
    .locals 8
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

    const-class v0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-super {p0, p1, p2}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->preUpdate(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Z)V

    if-nez p1, :cond_0

    return-void

    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/RTS3DCamera/RTS3DMoviments;->start()V

    iget-object p2, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/RTS3DCamera/RTS3DMoviments;->K:Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Base/Panel3DView;

    iget-object p2, p2, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Base/Panel3DView;->a0:Ln5/d;

    iget-object p2, p2, Ln5/d;->a:Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Components/EditorCamera;

    invoke-virtual {p2}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->getProjection()Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera$G;

    move-result-object p2

    sget-object v1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera$G;->Perspective:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera$G;

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-ne p2, v1, :cond_4

    iget-object p2, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/RTS3DCamera/RTS3DMoviments;->K:Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Base/Panel3DView;

    iget-object p2, p2, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Base/Panel3DView;->c0:LO4/a;

    const/4 v1, 0x0

    if-nez p2, :cond_3

    invoke-static {}, Lv3/c;->b()LP4/b;

    move-result-object p2

    if-eqz p2, :cond_1

    invoke-static {}, Lv3/c;->b()LP4/b;

    move-result-object p2

    invoke-virtual {p2}, LP4/b;->d()Z

    move-result p2

    if-nez p2, :cond_3

    goto :goto_0

    :catch_0
    move-exception p1

    goto/16 :goto_8

    :cond_1
    :goto_0
    iget-object p2, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/RTS3DCamera/RTS3DMoviments;->I:Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/RTS3DCamera/RTS3DTwoFingerSlide;

    invoke-virtual {p2}, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/RTS3DCamera/RTS3DTwoFingerSlide;->check()V

    sget-object p2, Lrc/a;->u:Lrc/a$g;

    invoke-virtual {p2}, Lrc/a$g;->q()Z

    move-result v4

    const/4 v5, 0x1

    if-eqz v4, :cond_2

    invoke-virtual {p2}, Lrc/a$g;->K()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {p2}, Lrc/a$g;->f()F

    move-result v1

    invoke-static {}, LK8/c;->b()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v1, v4

    iget-object v4, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/RTS3DCamera/RTS3DMoviments;->K:Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Base/Panel3DView;

    iget v4, v4, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Base/Panel3DView;->cameraZoom:F

    mul-float/2addr v1, v4

    invoke-direct {p0}, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/RTS3DCamera/RTS3DMoviments;->calculateMouseHSens()F

    move-result v4

    mul-float/2addr v1, v4

    const/high16 v4, 0x40400000    # 3.0f

    mul-float/2addr v1, v4

    invoke-virtual {p2}, Lrc/a$g;->g()F

    move-result v6

    invoke-static {}, LK8/c;->a()I

    move-result v7

    int-to-float v7, v7

    div-float/2addr v6, v7

    iget-object v7, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/RTS3DCamera/RTS3DMoviments;->K:Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Base/Panel3DView;

    iget v7, v7, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Base/Panel3DView;->cameraZoom:F

    mul-float/2addr v6, v7

    invoke-direct {p0}, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/RTS3DCamera/RTS3DMoviments;->calculateMouseVSens()F

    move-result v7

    mul-float/2addr v6, v7

    mul-float/2addr v6, v4

    iput v1, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/RTS3DCamera/RTS3DMoviments;->F:F

    iput v6, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/RTS3DCamera/RTS3DMoviments;->G:F

    move v1, v5

    :cond_2
    if-nez v1, :cond_3

    iget-object v4, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/RTS3DCamera/RTS3DMoviments;->I:Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/RTS3DCamera/RTS3DTwoFingerSlide;

    iget-boolean v4, v4, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/RTS3DCamera/RTS3DTwoFingerSlide;->E:Z

    if-eqz v4, :cond_3

    invoke-virtual {p2}, Lrc/a$g;->k()Z

    move-result p2

    if-eqz p2, :cond_3

    iget-object p2, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/RTS3DCamera/RTS3DMoviments;->I:Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/RTS3DCamera/RTS3DTwoFingerSlide;

    iget-object p2, p2, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/RTS3DCamera/RTS3DTwoFingerSlide;->F:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    invoke-virtual {p2}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->getX()F

    move-result p2

    invoke-static {}, LK8/c;->b()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr p2, v1

    iget-object v1, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/RTS3DCamera/RTS3DMoviments;->K:Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Base/Panel3DView;

    iget v1, v1, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Base/Panel3DView;->cameraZoom:F

    mul-float/2addr p2, v1

    invoke-direct {p0}, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/RTS3DCamera/RTS3DMoviments;->calculateHSens()F

    move-result v1

    mul-float/2addr p2, v1

    iget-object v1, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/RTS3DCamera/RTS3DMoviments;->I:Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/RTS3DCamera/RTS3DTwoFingerSlide;

    iget-object v1, v1, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/RTS3DCamera/RTS3DTwoFingerSlide;->F:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->getY()F

    move-result v1

    invoke-static {}, LK8/c;->a()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v1, v4

    iget-object v4, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/RTS3DCamera/RTS3DMoviments;->K:Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Base/Panel3DView;

    iget v4, v4, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Base/Panel3DView;->cameraZoom:F

    mul-float/2addr v1, v4

    invoke-direct {p0}, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/RTS3DCamera/RTS3DMoviments;->calculateVSens()F

    move-result v4

    mul-float/2addr v1, v4

    iput p2, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/RTS3DCamera/RTS3DMoviments;->F:F

    iput v1, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/RTS3DCamera/RTS3DMoviments;->G:F

    move v1, v5

    :cond_3
    if-nez v1, :cond_e

    invoke-direct {p0}, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/RTS3DCamera/RTS3DMoviments;->zeroSpeed()V

    goto/16 :goto_2

    :cond_4
    iget-object p2, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/RTS3DCamera/RTS3DMoviments;->K:Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Base/Panel3DView;

    iget-object p2, p2, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Base/Panel3DView;->c0:LO4/a;

    if-nez p2, :cond_d

    invoke-static {}, Lv3/c;->b()LP4/b;

    move-result-object p2

    if-eqz p2, :cond_5

    invoke-static {}, Lv3/c;->b()LP4/b;

    move-result-object p2

    invoke-virtual {p2}, LP4/b;->d()Z

    move-result p2

    if-nez p2, :cond_d

    :cond_5
    iget-object p2, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/RTS3DCamera/RTS3DMoviments;->E:Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/RTS3DCamera/RTS3DMoviments$a;

    sget-object v1, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/RTS3DCamera/RTS3DMoviments$a;->SingleFinger:Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/RTS3DCamera/RTS3DMoviments$a;

    if-ne p2, v1, :cond_b

    iget-object p2, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/RTS3DCamera/RTS3DMoviments;->M:Ltc/h;

    if-nez p2, :cond_6

    iget-object p2, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/RTS3DCamera/RTS3DMoviments;->K:Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Base/Panel3DView;

    iget-object v1, p2, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Base/Panel3DView;->c0:LO4/a;

    if-nez v1, :cond_6

    sget-object v1, LJAVARuntime/GUIUtils$TouchFilter;->Down:LJAVARuntime/GUIUtils$TouchFilter;

    invoke-virtual {p2, v1}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->v(LJAVARuntime/GUIUtils$TouchFilter;)Ltc/h;

    move-result-object p2

    iput-object p2, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/RTS3DCamera/RTS3DMoviments;->M:Ltc/h;

    if-eqz p2, :cond_6

    iget-object v1, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/RTS3DCamera/RTS3DMoviments;->K:Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Base/Panel3DView;

    iget-object v1, v1, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->x:Li4/e;

    invoke-interface {v1, p2}, Li4/e;->c(Ltc/h;)Z

    move-result p2

    if-eqz p2, :cond_6

    iput-object v2, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/RTS3DCamera/RTS3DMoviments;->M:Ltc/h;

    :cond_6
    iget-object p2, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/RTS3DCamera/RTS3DMoviments;->K:Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Base/Panel3DView;

    iget-object p2, p2, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Base/Panel3DView;->c0:LO4/a;

    if-eqz p2, :cond_7

    iput-object v2, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/RTS3DCamera/RTS3DMoviments;->M:Ltc/h;

    :cond_7
    iget-object p2, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/RTS3DCamera/RTS3DMoviments;->M:Ltc/h;

    if-eqz p2, :cond_a

    iget-boolean v1, p2, Ltc/h;->e:Z

    if-eqz v1, :cond_8

    invoke-virtual {p2}, Ltc/h;->i()Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    move-result-object p2

    iget p2, p2, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->x:F

    invoke-static {}, LK8/c;->b()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr p2, v1

    iget-object v1, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/RTS3DCamera/RTS3DMoviments;->K:Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Base/Panel3DView;

    iget v1, v1, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Base/Panel3DView;->cameraZoom:F

    mul-float/2addr p2, v1

    invoke-direct {p0}, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/RTS3DCamera/RTS3DMoviments;->calculateHSens()F

    move-result v1

    mul-float/2addr p2, v1

    iget-object v1, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/RTS3DCamera/RTS3DMoviments;->M:Ltc/h;

    invoke-virtual {v1}, Ltc/h;->i()Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    move-result-object v1

    iget v1, v1, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->y:F

    invoke-static {}, LK8/c;->a()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v1, v4

    iget-object v4, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/RTS3DCamera/RTS3DMoviments;->K:Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Base/Panel3DView;

    iget v4, v4, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Base/Panel3DView;->cameraZoom:F

    mul-float/2addr v1, v4

    invoke-direct {p0}, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/RTS3DCamera/RTS3DMoviments;->calculateVSens()F

    move-result v4

    mul-float/2addr v1, v4

    goto :goto_1

    :cond_8
    move p2, v3

    move v1, p2

    :goto_1
    iput p2, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/RTS3DCamera/RTS3DMoviments;->F:F

    iput v1, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/RTS3DCamera/RTS3DMoviments;->G:F

    iget-object p2, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/RTS3DCamera/RTS3DMoviments;->M:Ltc/h;

    invoke-virtual {p2}, Ltc/h;->t()Z

    move-result p2

    if-nez p2, :cond_9

    iget-object p2, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/RTS3DCamera/RTS3DMoviments;->M:Ltc/h;

    invoke-virtual {p2}, Ltc/h;->q()Z

    move-result p2

    if-nez p2, :cond_e

    :cond_9
    iput-object v2, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/RTS3DCamera/RTS3DMoviments;->M:Ltc/h;

    goto :goto_2

    :cond_a
    invoke-direct {p0}, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/RTS3DCamera/RTS3DMoviments;->zeroSpeed()V

    goto :goto_2

    :cond_b
    sget-object v1, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/RTS3DCamera/RTS3DMoviments$a;->TwoFinger:Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/RTS3DCamera/RTS3DMoviments$a;

    if-ne p2, v1, :cond_e

    iget-object p2, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/RTS3DCamera/RTS3DMoviments;->I:Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/RTS3DCamera/RTS3DTwoFingerSlide;

    invoke-virtual {p2}, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/RTS3DCamera/RTS3DTwoFingerSlide;->check()V

    iget-object p2, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/RTS3DCamera/RTS3DMoviments;->I:Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/RTS3DCamera/RTS3DTwoFingerSlide;

    iget-boolean v1, p2, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/RTS3DCamera/RTS3DTwoFingerSlide;->E:Z

    if-eqz v1, :cond_c

    iget-object p2, p2, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/RTS3DCamera/RTS3DTwoFingerSlide;->F:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    invoke-virtual {p2}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->getX()F

    move-result p2

    invoke-static {}, LK8/c;->b()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr p2, v1

    iget-object v1, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/RTS3DCamera/RTS3DMoviments;->K:Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Base/Panel3DView;

    iget v1, v1, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Base/Panel3DView;->cameraZoom:F

    mul-float/2addr p2, v1

    invoke-direct {p0}, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/RTS3DCamera/RTS3DMoviments;->calculateHSens()F

    move-result v1

    mul-float/2addr p2, v1

    const/high16 v1, 0x40000000    # 2.0f

    mul-float/2addr p2, v1

    iget-object v4, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/RTS3DCamera/RTS3DMoviments;->I:Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/RTS3DCamera/RTS3DTwoFingerSlide;

    iget-object v4, v4, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/RTS3DCamera/RTS3DTwoFingerSlide;->F:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    invoke-virtual {v4}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->getY()F

    move-result v4

    invoke-static {}, LK8/c;->a()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v4, v5

    iget-object v5, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/RTS3DCamera/RTS3DMoviments;->K:Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Base/Panel3DView;

    iget v5, v5, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Base/Panel3DView;->cameraZoom:F

    mul-float/2addr v4, v5

    invoke-direct {p0}, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/RTS3DCamera/RTS3DMoviments;->calculateVSens()F

    move-result v5

    mul-float/2addr v4, v5

    mul-float/2addr v4, v1

    iput p2, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/RTS3DCamera/RTS3DMoviments;->F:F

    iput v4, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/RTS3DCamera/RTS3DMoviments;->G:F

    goto :goto_2

    :cond_c
    invoke-direct {p0}, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/RTS3DCamera/RTS3DMoviments;->zeroSpeed()V

    goto :goto_2

    :cond_d
    invoke-direct {p0}, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/RTS3DCamera/RTS3DMoviments;->zeroSpeed()V

    :cond_e
    :goto_2
    invoke-static {v0}, Lcom/itsmagic/engine/Engines/Engine/JavaPool/JP;->acquire(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v1, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/RTS3DCamera/RTS3DMoviments;->H:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->J0()Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->r4(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    iget v1, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/RTS3DCamera/RTS3DMoviments;->G:F

    const v4, 0x3dcccccd    # 0.1f

    mul-float/2addr v1, v4

    invoke-virtual {p2, v1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->mulLocal(F)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    iget-object v1, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/RTS3DCamera/RTS3DMoviments;->J:Lm5/a;

    iget-boolean v1, v1, Lm5/a;->a:Z

    if-eqz v1, :cond_f

    move v1, v3

    goto :goto_3

    :cond_f
    invoke-virtual {p2}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getX()F

    move-result v1

    :goto_3
    invoke-virtual {p2, v1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->setX(F)F

    iget-object v1, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/RTS3DCamera/RTS3DMoviments;->J:Lm5/a;

    iget-boolean v1, v1, Lm5/a;->b:Z

    if-eqz v1, :cond_10

    move v1, v3

    goto :goto_4

    :cond_10
    invoke-virtual {p2}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getY()F

    move-result v1

    :goto_4
    invoke-virtual {p2, v1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->setY(F)F

    iget-object v1, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/RTS3DCamera/RTS3DMoviments;->J:Lm5/a;

    iget-boolean v1, v1, Lm5/a;->a:Z

    if-eqz v1, :cond_11

    goto :goto_5

    :cond_11
    invoke-virtual {p2}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getZ()F

    move-result v3

    :goto_5
    invoke-virtual {p2, v3}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->setZ(F)F

    iget-object v1, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/RTS3DCamera/RTS3DMoviments;->K:Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Base/Panel3DView;

    iget-object v1, v1, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Base/Panel3DView;->selectedPosition:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v1, p2}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->addLocal(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    iget-object v1, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/RTS3DCamera/RTS3DMoviments;->J:Lm5/a;

    iget-boolean v1, v1, Lm5/a;->a:Z

    if-nez v1, :cond_12

    invoke-static {v0}, Lcom/itsmagic/engine/Engines/Engine/JavaPool/JP;->acquire(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->J0()Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->S2(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    iget p1, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/RTS3DCamera/RTS3DMoviments;->F:F

    mul-float/2addr p1, v4

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->mulLocal(F)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    iget-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/RTS3DCamera/RTS3DMoviments;->K:Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Base/Panel3DView;

    iget-object p1, p1, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Base/Panel3DView;->selectedPosition:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {p1, v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->addLocal(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object v2, v0

    goto :goto_6

    :catchall_0
    move-exception p1

    move-object v2, v0

    goto :goto_7

    :catchall_1
    move-exception p1

    goto :goto_7

    :cond_12
    :goto_6
    :try_start_3
    invoke-static {v2}, Lcom/itsmagic/engine/Engines/Engine/JavaPool/JP;->release(Ljava/lang/Object;)V

    invoke-static {p2}, Lcom/itsmagic/engine/Engines/Engine/JavaPool/JP;->release(Ljava/lang/Object;)V

    invoke-direct {p0}, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/RTS3DCamera/RTS3DMoviments;->lerpPosition()V

    goto :goto_9

    :goto_7
    invoke-static {v2}, Lcom/itsmagic/engine/Engines/Engine/JavaPool/JP;->release(Ljava/lang/Object;)V

    invoke-static {p2}, Lcom/itsmagic/engine/Engines/Engine/JavaPool/JP;->release(Ljava/lang/Object;)V

    throw p1
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    :goto_8
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_9
    return-void
.end method

.method public start()V
    .locals 2

    iget-boolean v0, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/RTS3DCamera/RTS3DMoviments;->N:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/RTS3DCamera/RTS3DMoviments;->N:Z

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->n:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    const-string v1, "Main Camera"

    invoke-virtual {v0, v1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->Z(Ljava/lang/String;)Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    move-result-object v0

    iput-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/RTS3DCamera/RTS3DMoviments;->H:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    return-void
.end method
