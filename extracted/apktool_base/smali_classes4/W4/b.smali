.class public LW4/b;
.super LU4/a;
.source "SourceFile"


# instance fields
.field public final J:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

.field public final K:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

.field public final L:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

.field public final M:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

.field public N:F

.field public O:F


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, LU4/a;-><init>()V

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;-><init>()V

    iput-object v0, p0, LW4/b;->J:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;-><init>()V

    iput-object v0, p0, LW4/b;->K:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    invoke-direct {v0, v2, v1, v2}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;-><init>(FFF)V

    iput-object v0, p0, LW4/b;->L:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;-><init>()V

    iput-object v0, p0, LW4/b;->M:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    iput v2, p0, LW4/b;->N:F

    iput v2, p0, LW4/b;->O:F

    return-void
.end method


# virtual methods
.method public D(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Components/EditorCamera;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Base/Panel3DView;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "gameObject",
            "camera",
            "editorCamera",
            "selectedObject",
            "editor3DViewer"
        }
    .end annotation

    iget-boolean v0, p5, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Base/Panel3DView;->useBoundingCenter:Z

    if-eqz v0, :cond_1

    invoke-virtual {p4}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->z()Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject$g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject$g;->f()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v0, p1, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->transform:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    invoke-virtual {v0, p4}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->n3(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)V

    goto :goto_0

    :cond_0
    iget-object v1, p1, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->transform:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject$g;->d()Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->p3(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)V

    goto :goto_0

    :cond_1
    iget-object v0, p1, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->transform:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    invoke-virtual {v0, p4}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->n3(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)V

    :goto_0
    iget-object v0, p0, LW4/b;->L:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    iget-object v1, p0, LW4/b;->J:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {p0, p4, v0, v1, p5}, LU4/a;->w(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Base/Panel3DView;)V

    invoke-virtual {p0, p5}, LU4/a;->p(Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Base/Panel3DView;)Z

    move-result p4

    if-eqz p4, :cond_2

    iget-object p4, p1, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->transform:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    invoke-virtual {p4}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->G3()V

    :cond_2
    iget-object p4, p1, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->transform:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    iget-object p5, p0, LW4/b;->J:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {p4, p5}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->g2(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)V

    invoke-virtual {p3}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->getProjection()Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera$G;

    move-result-object p4

    sget-object p5, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera$G;->Perspective:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera$G;

    if-ne p4, p5, :cond_3

    iget-object p3, p1, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->transform:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    iget-object p2, p2, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->transform:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    invoke-virtual {p3, p2}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->B1(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;)F

    move-result p2

    iget-object p1, p1, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->transform:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    const p3, 0x3e99999a    # 0.3f

    mul-float/2addr p2, p3

    invoke-static {}, Ln/c;->a()F

    move-result p3

    mul-float/2addr p2, p3

    invoke-static {p2}, LIc/A;->b(F)F

    move-result p2

    invoke-virtual {p1, p2}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->setScale(F)V

    goto :goto_1

    :cond_3
    invoke-virtual {p3}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->getOrtho_diameter()F

    move-result p2

    iget-object p1, p1, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->transform:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    const p3, 0x3dcccccd    # 0.1f

    mul-float/2addr p2, p3

    invoke-static {}, Ln/c;->a()F

    move-result p3

    mul-float/2addr p2, p3

    invoke-static {p2}, LIc/A;->b(F)F

    move-result p2

    invoke-virtual {p1, p2}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->setScale(F)V

    :goto_1
    return-void
.end method

.method public n(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "gameObject"
        }
    .end annotation

    iget-object p1, p0, LW4/b;->J:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    return-object p1
.end method

.method public t(Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Components/EditorCamera;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;Ltc/h;Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Base/Panel3DView;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "editorCamera",
            "gameObject",
            "camera",
            "axisTransform",
            "touchSlide",
            "touch",
            "editor3DViewer"
        }
    .end annotation

    iget-object p1, p0, LW4/b;->J:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {p0, p5, p3, p1, p4}, LU4/a;->f(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;)F

    move-result p1

    if-eqz p7, :cond_0

    iget-boolean p3, p7, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Base/Panel3DView;->gridMove:Z

    if-eqz p3, :cond_0

    iget p3, p0, LW4/b;->N:F

    const/4 p4, 0x0

    cmpl-float p4, p3, p4

    if-lez p4, :cond_0

    iget p4, p0, LW4/b;->O:F

    add-float/2addr p4, p1

    iput p4, p0, LW4/b;->O:F

    invoke-virtual {p0, p4, p3}, LU4/a;->F(FF)F

    move-result p1

    iget-object p3, p0, LW4/b;->K:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    iget-object p4, p0, LW4/b;->M:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {p3, p4}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->set(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    iget-object p3, p0, LW4/b;->K:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    iget-object p4, p0, LW4/b;->J:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {p3, p4, p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->addLocal(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;F)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    goto :goto_0

    :cond_0
    iget-object p3, p2, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->transform:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    iget-object p4, p0, LW4/b;->K:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {p3, p4}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->u0(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    iget-object p3, p0, LW4/b;->K:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    iget-object p4, p0, LW4/b;->J:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {p3, p4, p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->addLocal(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;F)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    :goto_0
    new-instance p1, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    iget-object p3, p0, LW4/b;->K:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-direct {p1, p3}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;-><init>(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)V

    new-instance p3, LW4/b$a;

    invoke-direct {p3, p0, p2, p1}, LW4/b$a;-><init>(LW4/b;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)V

    invoke-static {p3}, LK8/a;->I(Ljava/lang/Runnable;)V

    return-void
.end method

.method public u(Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Components/EditorCamera;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;Ltc/h;Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Base/Panel3DView;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "editorCamera",
            "gameObject",
            "camera",
            "axisTransform",
            "touchSlide",
            "touch",
            "editor3DViewer"
        }
    .end annotation

    const/4 p1, 0x0

    if-eqz p7, :cond_0

    iget-boolean p3, p7, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Base/Panel3DView;->gridMove:Z

    if-eqz p3, :cond_0

    if-eqz p2, :cond_0

    iget-object p3, p2, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->transform:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    iget-object p4, p0, LW4/b;->M:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {p3, p4}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->u0(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    iget-object p3, p0, LW4/b;->L:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    iget-object p4, p0, LW4/b;->J:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {p0, p2, p3, p4, p7}, LU4/a;->w(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Base/Panel3DView;)V

    iget-object p3, p0, LW4/b;->J:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {p0, p2, p3}, LU4/a;->g(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)F

    move-result p2

    invoke-virtual {p7}, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Base/Panel3DView;->I1()F

    move-result p3

    mul-float/2addr p2, p3

    iput p2, p0, LW4/b;->N:F

    iput p1, p0, LW4/b;->O:F

    goto :goto_0

    :cond_0
    iput p1, p0, LW4/b;->N:F

    iput p1, p0, LW4/b;->O:F

    :goto_0
    return-void
.end method
