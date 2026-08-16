.class public LY4/a;
.super LU4/a;
.source "SourceFile"


# instance fields
.field public final J:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

.field public final K:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

.field public final L:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

.field public final M:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

.field public final N:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

.field public final O:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

.field public final P:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, LU4/a;-><init>()V

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;-><init>()V

    iput-object v0, p0, LY4/a;->J:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;-><init>()V

    iput-object v0, p0, LY4/a;->K:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;-><init>()V

    iput-object v0, p0, LY4/a;->L:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;-><init>()V

    iput-object v0, p0, LY4/a;->M:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;-><init>(FFF)V

    iput-object v0, p0, LY4/a;->N:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-direct {v0, v2, v1, v2}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;-><init>(FFF)V

    iput-object v0, p0, LY4/a;->O:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-direct {v0, v2, v2, v1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;-><init>(FFF)V

    iput-object v0, p0, LY4/a;->P:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    return-void
.end method


# virtual methods
.method public D(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Components/EditorCamera;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Base/Panel3DView;)V
    .locals 4
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

    invoke-virtual {p0, p1, p4, p5}, LU4/a;->B(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Base/Panel3DView;)V

    invoke-virtual {p0, p4}, LU4/a;->x(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    move-result-object p4

    iget-object v0, p0, LY4/a;->N:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    iget-object v1, p0, LY4/a;->K:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {p0, p4, v0, v1, p5}, LU4/a;->w(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Base/Panel3DView;)V

    iget-object v0, p0, LY4/a;->O:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    iget-object v1, p0, LY4/a;->L:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {p0, p4, v0, v1, p5}, LU4/a;->w(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Base/Panel3DView;)V

    iget-object v0, p0, LY4/a;->P:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    iget-object v1, p0, LY4/a;->M:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {p0, p4, v0, v1, p5}, LU4/a;->w(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Base/Panel3DView;)V

    iget-object p4, p0, LY4/a;->J:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    iget-object v0, p0, LY4/a;->K:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getX()F

    move-result v0

    iget-object v1, p0, LY4/a;->L:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getX()F

    move-result v1

    add-float/2addr v0, v1

    iget-object v1, p0, LY4/a;->M:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getX()F

    move-result v1

    add-float/2addr v0, v1

    iget-object v1, p0, LY4/a;->K:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getY()F

    move-result v1

    iget-object v2, p0, LY4/a;->L:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v2}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getY()F

    move-result v2

    add-float/2addr v1, v2

    iget-object v2, p0, LY4/a;->M:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v2}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getY()F

    move-result v2

    add-float/2addr v1, v2

    iget-object v2, p0, LY4/a;->K:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v2}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getZ()F

    move-result v2

    iget-object v3, p0, LY4/a;->L:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v3}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getZ()F

    move-result v3

    add-float/2addr v2, v3

    iget-object v3, p0, LY4/a;->M:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v3}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getZ()F

    move-result v3

    add-float/2addr v2, v3

    invoke-virtual {p4, v0, v1, v2}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->set(FFF)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    iget-object p4, p0, LY4/a;->J:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {p4}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->normalizeLocal()Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    iget-object p4, p0, LY4/a;->J:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    const/high16 v0, -0x40800000    # -1.0f

    invoke-virtual {p4, v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->mulLocal(F)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {p0, p5}, LU4/a;->p(Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Base/Panel3DView;)Z

    move-result p4

    if-eqz p4, :cond_0

    iget-object p4, p1, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->transform:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    invoke-virtual {p4}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->G3()V

    :cond_0
    iget-object p4, p1, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->transform:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    iget-object p5, p0, LY4/a;->J:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {p4, p5}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->g2(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)V

    invoke-virtual {p3}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->getProjection()Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera$G;

    move-result-object p4

    sget-object p5, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera$G;->Perspective:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera$G;

    if-ne p4, p5, :cond_1

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

    goto :goto_0

    :cond_1
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

    :goto_0
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

    iget-object p1, p0, LY4/a;->J:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    return-object p1
.end method

.method public t(Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Components/EditorCamera;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;Ltc/h;Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Base/Panel3DView;)V
    .locals 4
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

    invoke-virtual {p0, p2, p7}, LU4/a;->d(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Base/Panel3DView;)Z

    move-result p1

    invoke-virtual {p0, p2}, LU4/a;->x(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    move-result-object p6

    iget-object v0, p0, LY4/a;->N:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    iget-object v1, p0, LY4/a;->K:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {p0, p6, v0, v1, p7}, LU4/a;->w(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Base/Panel3DView;)V

    iget-object v0, p0, LY4/a;->O:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    iget-object v1, p0, LY4/a;->L:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {p0, p6, v0, v1, p7}, LU4/a;->w(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Base/Panel3DView;)V

    iget-object v0, p0, LY4/a;->P:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    iget-object v1, p0, LY4/a;->M:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {p0, p6, v0, v1, p7}, LU4/a;->w(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Base/Panel3DView;)V

    iget-object p6, p0, LY4/a;->J:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    iget-object v0, p0, LY4/a;->K:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getX()F

    move-result v0

    iget-object v1, p0, LY4/a;->L:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getX()F

    move-result v1

    add-float/2addr v0, v1

    iget-object v1, p0, LY4/a;->M:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getX()F

    move-result v1

    add-float/2addr v0, v1

    iget-object v1, p0, LY4/a;->K:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getY()F

    move-result v1

    iget-object v2, p0, LY4/a;->L:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v2}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getY()F

    move-result v2

    add-float/2addr v1, v2

    iget-object v2, p0, LY4/a;->M:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v2}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getY()F

    move-result v2

    add-float/2addr v1, v2

    iget-object v2, p0, LY4/a;->K:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v2}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getZ()F

    move-result v2

    iget-object v3, p0, LY4/a;->L:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v3}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getZ()F

    move-result v3

    add-float/2addr v2, v3

    iget-object v3, p0, LY4/a;->M:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v3}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getZ()F

    move-result v3

    add-float/2addr v2, v3

    invoke-virtual {p6, v0, v1, v2}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->set(FFF)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    iget-object p6, p0, LY4/a;->J:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {p6}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->normalizeLocal()Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    iget-object p6, p0, LY4/a;->J:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    const/high16 v0, -0x40800000    # -1.0f

    invoke-virtual {p6, v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->mulLocal(F)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    iget-object p6, p0, LY4/a;->J:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {p0, p5, p3, p6, p4}, LU4/a;->f(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;)F

    move-result p3

    iget-object p4, p2, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->transform:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    invoke-virtual {p4}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->j0()Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    move-result-object p4

    invoke-virtual {p4}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->lengthF()F

    move-result p4

    mul-float/2addr p3, p4

    const/high16 p4, 0x3f800000    # 1.0f

    mul-float/2addr p3, p4

    invoke-static {p3}, Ljava/lang/Float;->isNaN(F)Z

    move-result p4

    if-nez p4, :cond_0

    iget-object p4, p2, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->transform:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    invoke-virtual {p4, p3}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->x(F)V

    :cond_0
    invoke-virtual {p0, p2, p7, p1}, LU4/a;->s(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Base/Panel3DView;Z)V

    iget-object p1, p2, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->transform:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->a2()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p2, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->transform:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->I2()V

    :cond_1
    invoke-static {p2}, Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a;->U2(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)V

    return-void
.end method
