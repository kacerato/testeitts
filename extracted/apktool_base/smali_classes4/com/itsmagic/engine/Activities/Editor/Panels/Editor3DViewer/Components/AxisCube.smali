.class public Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Components/AxisCube;
.super Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;
.source "SourceFile"


# static fields
.field public static final M:F = -10000.0f

.field public static final N:I = 0x32

.field public static final O:Ljava/lang/String; = "AxisCube"


# instance fields
.field public E:Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Components/AxisCubeCamera;

.field public F:Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Base/Panel3DView;

.field public G:LJAVARuntime/GizmoObject;

.field public final H:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

.field public I:F

.field public J:F

.field public final K:Laa/d;

.field public final L:Laa/c;


# direct methods
.method public constructor <init>(Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Components/AxisCubeCamera;Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Base/Panel3DView;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "axisCubeCamera",
            "editor3DViewer"
        }
    .end annotation

    const-string v0, "AxisCube"

    invoke-direct {p0, v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;-><init>(Ljava/lang/String;)V

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;-><init>()V

    iput-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Components/AxisCube;->H:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    const/4 v0, 0x0

    iput v0, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Components/AxisCube;->I:F

    iput v0, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Components/AxisCube;->J:F

    new-instance v0, Laa/d;

    invoke-direct {v0}, Laa/d;-><init>()V

    iput-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Components/AxisCube;->K:Laa/d;

    new-instance v1, Laa/c;

    invoke-direct {v1, v0}, Laa/c;-><init>(Laa/d;)V

    iput-object v1, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Components/AxisCube;->L:Laa/c;

    iput-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Components/AxisCube;->E:Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Components/AxisCubeCamera;

    iput-object p2, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Components/AxisCube;->F:Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Base/Panel3DView;

    return-void
.end method

.method private calculateCameraRect()V
    .locals 5

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Components/AxisCube;->F:Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Base/Panel3DView;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->M()Landroid/content/Context;

    move-result-object v0

    const/high16 v1, 0x42480000    # 50.0f

    invoke-static {v1, v0}, LNc/b;->l0(FLandroid/content/Context;)I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Components/AxisCube;->F:Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Base/Panel3DView;

    invoke-virtual {v1}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->c0()I

    move-result v1

    iget-object v2, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Components/AxisCube;->F:Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Base/Panel3DView;

    invoke-virtual {v2}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->R()I

    move-result v2

    int-to-float v1, v1

    div-float v1, v0, v1

    int-to-float v2, v2

    div-float/2addr v0, v2

    sget-object v2, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Components/AxisCube$a;->a:[I

    iget-object v3, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Components/AxisCube;->F:Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Base/Panel3DView;

    invoke-virtual {v3}, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Base/Panel3DView;->G1()Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Base/Panel3DView$h;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aget v2, v2, v3

    const/4 v3, 0x1

    const/high16 v4, 0x3f800000    # 1.0f

    if-eq v2, v3, :cond_2

    const/4 v3, 0x2

    if-eq v2, v3, :cond_1

    const/4 v3, 0x3

    if-eq v2, v3, :cond_0

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Components/AxisCube;->E:Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Components/AxisCubeCamera;

    invoke-virtual {v2, v1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->setRectWidth(F)V

    iget-object v2, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Components/AxisCube;->E:Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Components/AxisCubeCamera;

    invoke-virtual {v2, v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->setRectHeight(F)V

    iget-object v2, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Components/AxisCube;->E:Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Components/AxisCubeCamera;

    sub-float v3, v4, v1

    invoke-virtual {v2, v3}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->setRectPosX(F)V

    iget-object v2, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Components/AxisCube;->E:Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Components/AxisCubeCamera;

    sub-float/2addr v4, v0

    invoke-virtual {v2, v4}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->setRectPosY(F)V

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Components/AxisCube;->E:Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Components/AxisCubeCamera;

    invoke-virtual {v2, v1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->setRectWidth(F)V

    iget-object v2, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Components/AxisCube;->E:Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Components/AxisCubeCamera;

    invoke-virtual {v2, v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->setRectHeight(F)V

    iget-object v2, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Components/AxisCube;->E:Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Components/AxisCubeCamera;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->setRectPosX(F)V

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Components/AxisCube;->E:Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Components/AxisCubeCamera;

    invoke-virtual {v2, v1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->setRectWidth(F)V

    iget-object v2, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Components/AxisCube;->E:Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Components/AxisCubeCamera;

    invoke-virtual {v2, v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->setRectHeight(F)V

    iget-object v2, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Components/AxisCube;->E:Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Components/AxisCubeCamera;

    sub-float/2addr v4, v1

    invoke-virtual {v2, v4}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->setRectPosX(F)V

    :goto_0
    iput v1, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Components/AxisCube;->I:F

    iput v0, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Components/AxisCube;->J:F

    return-void
.end method

.method private createGizmo()V
    .locals 3

    sget-object v0, LW7/b;->f:LC8/a;

    iget-object v0, v0, LC8/a;->a:LD8/a;

    iget-object v0, v0, LD8/a;->e:LD8/b;

    iget-object v1, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Components/AxisCube;->G:LJAVARuntime/GizmoObject;

    if-nez v1, :cond_0

    invoke-virtual {v0}, LD8/b;->c()Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;

    move-result-object v1

    new-instance v2, LJAVARuntime/GizmoObject;

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;->x2()LJAVARuntime/Vertex;

    move-result-object v1

    invoke-direct {v2, v1}, LJAVARuntime/GizmoObject;-><init>(LJAVARuntime/Vertex;)V

    iput-object v2, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Components/AxisCube;->G:LJAVARuntime/GizmoObject;

    new-instance v1, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;

    invoke-direct {v1}, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;-><init>()V

    sget-object v2, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig$c;->Nearest:Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig$c;

    invoke-virtual {v1, v2}, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;->j0(Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig$c;)Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;

    iget-object v0, v0, LD8/b;->d:Ljava/lang/String;

    invoke-static {v0, v1}, Lyb/b;->v(Ljava/lang/String;Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;)Lub/g;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Components/AxisCube;->G:LJAVARuntime/GizmoObject;

    invoke-virtual {v0}, Lub/p;->p0()LJAVARuntime/Texture;

    move-result-object v0

    invoke-virtual {v1, v0}, LJAVARuntime/GizmoObject;->setTexture(LJAVARuntime/Texture;)V

    :cond_0
    return-void
.end method

.method private getTouch()Ltc/h;
    .locals 3

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Components/AxisCube;->F:Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Base/Panel3DView;

    sget-object v1, LJAVARuntime/GUIUtils$TouchFilter;->Up:LJAVARuntime/GUIUtils$TouchFilter;

    invoke-virtual {v0, v1}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->v(LJAVARuntime/GUIUtils$TouchFilter;)Ltc/h;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-boolean v1, v0, Ltc/h;->e:Z

    if-nez v1, :cond_0

    invoke-direct {p0, v0}, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Components/AxisCube;->isTouchInsideAxisCubeRect(Ltc/h;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Components/AxisCube;->F:Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Base/Panel3DView;

    iget-object v1, v1, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->x:Li4/e;

    invoke-interface {v1, v0}, Li4/e;->c(Ltc/h;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-boolean v1, v0, Ltc/h;->e:Z

    if-nez v1, :cond_0

    sget-object v1, Lrc/a;->k:Ljava/util/List;

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ltc/h;

    invoke-virtual {v1}, Ltc/h;->r()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method private isTouchInsideAxisCubeRect(Ltc/h;)Z
    .locals 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "touch"
        }
    .end annotation

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Components/AxisCube;->F:Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Base/Panel3DView;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->O()Lo4/f;

    move-result-object v0

    invoke-virtual {v0}, Lo4/f;->e()F

    move-result v1

    invoke-static {}, LK8/c;->b()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v1, v2

    float-to-int v1, v1

    invoke-virtual {v0}, Lo4/f;->f()F

    move-result v2

    invoke-static {}, LK8/c;->a()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v2, v3

    float-to-int v2, v2

    invoke-virtual {v0}, Lo4/f;->d()F

    move-result v3

    invoke-static {}, LK8/c;->b()I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v3, v4

    float-to-int v3, v3

    invoke-virtual {v0}, Lo4/f;->c()F

    move-result v0

    invoke-static {}, LK8/c;->a()I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v0, v4

    float-to-int v0, v0

    sget-object v4, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Components/AxisCube$a;->a:[I

    iget-object v5, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Components/AxisCube;->F:Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Base/Panel3DView;

    invoke-virtual {v5}, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Base/Panel3DView;->G1()Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Base/Panel3DView$h;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    aget v4, v4, v5

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eq v4, v5, :cond_2

    const/4 v7, 0x2

    if-eq v4, v7, :cond_1

    const/4 v7, 0x3

    if-eq v4, v7, :cond_0

    move v0, v6

    move v1, v0

    move v2, v1

    move v3, v2

    goto :goto_1

    :cond_0
    add-int/2addr v1, v3

    iget v4, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Components/AxisCube;->I:F

    int-to-float v3, v3

    mul-float v7, v4, v3

    float-to-int v7, v7

    sub-int/2addr v1, v7

    add-int/2addr v2, v0

    iget v7, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Components/AxisCube;->J:F

    int-to-float v0, v0

    mul-float v8, v7, v0

    float-to-int v8, v8

    sub-int/2addr v2, v8

    mul-float/2addr v4, v3

    float-to-int v3, v4

    mul-float/2addr v7, v0

    float-to-int v0, v7

    goto :goto_1

    :cond_1
    iget v4, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Components/AxisCube;->I:F

    int-to-float v3, v3

    mul-float/2addr v4, v3

    float-to-int v3, v4

    iget v4, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Components/AxisCube;->J:F

    :goto_0
    int-to-float v0, v0

    mul-float/2addr v4, v0

    float-to-int v0, v4

    goto :goto_1

    :cond_2
    add-int/2addr v1, v3

    iget v4, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Components/AxisCube;->I:F

    int-to-float v3, v3

    mul-float v7, v4, v3

    float-to-int v7, v7

    sub-int/2addr v1, v7

    mul-float/2addr v4, v3

    float-to-int v3, v4

    iget v4, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Components/AxisCube;->J:F

    goto :goto_0

    :goto_1
    invoke-virtual {p1}, Ltc/h;->g()Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    move-result-object p1

    iget v4, p1, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->x:F

    int-to-float v7, v1

    cmpl-float v7, v4, v7

    if-ltz v7, :cond_3

    add-int/2addr v1, v3

    int-to-float v1, v1

    cmpg-float v1, v4, v1

    if-gtz v1, :cond_3

    iget p1, p1, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->y:F

    int-to-float v1, v2

    cmpl-float v1, p1, v1

    if-ltz v1, :cond_3

    add-int/2addr v2, v0

    int-to-float v0, v2

    cmpg-float p1, p1, v0

    if-gtz p1, :cond_3

    return v5

    :cond_3
    return v6
.end method

.method private setRotation(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "gameObject"
        }
    .end annotation

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Components/AxisCube;->F:Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Base/Panel3DView;

    iget v0, v0, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Base/Panel3DView;->cameraYaw:F

    invoke-static {v0}, LNc/b;->d0(F)F

    move-result v0

    iget-object v1, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Components/AxisCube;->F:Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Base/Panel3DView;

    iget v1, v1, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Base/Panel3DView;->cameraYaw:F

    invoke-static {v1}, LNc/b;->m1(F)F

    move-result v1

    iget-object v2, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Components/AxisCube;->H:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3, v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->set(FFF)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    iget-object v0, p1, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->transform:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    iget-object v1, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Components/AxisCube;->H:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v0, v1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->g2(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)V

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Components/AxisCube;->F:Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Base/Panel3DView;

    iget v0, v0, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Base/Panel3DView;->cameraPitch:F

    neg-float v0, v0

    invoke-static {v0}, LNc/b;->d0(F)F

    move-result v0

    iget-object v1, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Components/AxisCube;->F:Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Base/Panel3DView;

    iget v1, v1, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Base/Panel3DView;->cameraPitch:F

    neg-float v1, v1

    invoke-static {v1}, LNc/b;->m1(F)F

    move-result v1

    iget-object v2, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Components/AxisCube;->H:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v2, v3, v1, v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->set(FFF)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->C(I)Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    move-result-object p1

    iget-object p1, p1, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->transform:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Components/AxisCube;->H:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {p1, v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->g2(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)V

    return-void
.end method

.method private showGizmo(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "gameObject"
        }
    .end annotation

    invoke-direct {p0}, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Components/AxisCube;->createGizmo()V

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Components/AxisCube;->G:LJAVARuntime/GizmoObject;

    invoke-virtual {v0}, LJAVARuntime/GizmoObject;->getTexture()LJAVARuntime/Texture;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Components/AxisCube;->G:LJAVARuntime/GizmoObject;

    invoke-virtual {v0}, LJAVARuntime/GizmoObject;->getTexture()LJAVARuntime/Texture;

    move-result-object v0

    iget-object v0, v0, LJAVARuntime/Texture;->instance:Lub/p;

    invoke-static {v0}, Lub/p;->L(Lub/p;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-class v0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-static {v0}, Lcom/itsmagic/engine/Engines/Engine/JavaPool/JP;->acquire(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    iget-object p1, p1, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->transform:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    invoke-virtual {p1, v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->u0(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    iget-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Components/AxisCube;->G:LJAVARuntime/GizmoObject;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->toJAVARuntime()LJAVARuntime/Vector3;

    move-result-object v1

    invoke-virtual {p1, v1}, LJAVARuntime/GizmoTransform;->setPosition(LJAVARuntime/Vector3;)V

    invoke-static {v0}, Lcom/itsmagic/engine/Engines/Engine/JavaPool/JP;->release(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Components/AxisCube;->G:LJAVARuntime/GizmoObject;

    invoke-static {p1}, LUb/a;->a(LJAVARuntime/GizmoElement;)V

    :cond_0
    return-void
.end method

.method private userInput()V
    .locals 4

    invoke-direct {p0}, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Components/AxisCube;->getTouch()Ltc/h;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Components/AxisCube;->G:LJAVARuntime/GizmoObject;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, LJAVARuntime/GizmoObject;->getVertex()LJAVARuntime/Vertex;

    move-result-object v0

    iget-object v0, v0, LJAVARuntime/Vertex;->vertex:Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;

    if-eqz v0, :cond_3

    iget-object v1, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Components/AxisCube;->E:Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Components/AxisCubeCamera;

    iget-object v1, v1, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->n:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    if-eqz v1, :cond_3

    iget-object v2, v1, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->transform:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    iget-object v3, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Components/AxisCube;->K:Laa/d;

    iget-object v3, v3, Laa/d;->b:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v2, v3}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->u0(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    iget-object v2, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Components/AxisCube;->K:Laa/d;

    iget-object v2, v2, Laa/d;->b:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    const v3, -0x39e3c000    # -10000.0f

    invoke-virtual {v2, v3}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->subLocal(F)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    iget-object v1, v1, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->transform:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    iget-object v2, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Components/AxisCube;->K:Laa/d;

    iget-object v2, v2, Laa/d;->c:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v1, v2}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->a0(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    iget-object v1, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Components/AxisCube;->L:Laa/c;

    sget-object v2, LJAVARuntime/Vertex$RayMode;->ClosestPoint:LJAVARuntime/Vertex$RayMode;

    invoke-virtual {v0, v1, v2}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;->A2(Laa/c;LJAVARuntime/Vertex$RayMode;)Laa/a;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Laa/a;->f()Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getX()F

    move-result v1

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getZ()F

    move-result v1

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_1

    :cond_0
    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getX()F

    move-result v1

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getZ()F

    move-result v3

    invoke-static {v1, v3}, LNc/b;->t(FF)F

    move-result v1

    const/high16 v3, 0x43340000    # 180.0f

    add-float/2addr v1, v3

    iget-object v3, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Components/AxisCube;->F:Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Base/Panel3DView;

    iput v1, v3, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Base/Panel3DView;->cameraYaw:F

    :cond_1
    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getY()F

    move-result v1

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getY()F

    move-result v0

    invoke-static {v0, v2}, LNc/b;->t(FF)F

    move-result v0

    iget-object v1, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Components/AxisCube;->F:Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Base/Panel3DView;

    iput v0, v1, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Base/Panel3DView;->cameraPitch:F

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Components/AxisCube;->F:Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Base/Panel3DView;

    iput v2, v0, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Base/Panel3DView;->cameraPitch:F

    :cond_3
    :goto_0
    return-void
.end method


# virtual methods
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

    iget-object p2, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Components/AxisCube;->E:Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Components/AxisCubeCamera;

    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->setEnabled(Z)Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;

    invoke-direct {p0, p1}, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Components/AxisCube;->showGizmo(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)V

    invoke-direct {p0, p1}, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Components/AxisCube;->setRotation(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)V

    invoke-direct {p0}, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Components/AxisCube;->calculateCameraRect()V

    return-void
.end method
